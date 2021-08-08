; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $01b", ROMX[$4000], BANK[$1b]

	ld   l, e                                        ; $4000: $6b

jr_01b_4001:
	ld   [bc], a                                     ; $4001: $02
	adc  [hl]                                        ; $4002: $8e
	rst  $38                                         ; $4003: $ff
	inc  b                                           ; $4004: $04
	nop                                              ; $4005: $00
	rra                                              ; $4006: $1f
	nop                                              ; $4007: $00
	ccf                                              ; $4008: $3f
	rra                                              ; $4009: $1f
	add  c                                           ; $400a: $81
	ld   h, b                                        ; $400b: $60
	add  b                                           ; $400c: $80
	ld   h, e                                        ; $400d: $63
	add  h                                           ; $400e: $84
	ld   h, a                                        ; $400f: $67
	ld   [bc], a                                     ; $4010: $02
	ld   e, a                                        ; $4011: $5f
	rst  $38                                         ; $4012: $ff
	nop                                              ; $4013: $00
	add  b                                           ; $4014: $80
	rst  $38                                         ; $4015: $ff
	add  c                                           ; $4016: $81
	nop                                              ; $4017: $00
	adc  b                                           ; $4018: $88
	rst  $38                                         ; $4019: $ff
	nop                                              ; $401a: $00
	nop                                              ; $401b: $00
	add  b                                           ; $401c: $80
	rst  $38                                         ; $401d: $ff
	add  c                                           ; $401e: $81
	nop                                              ; $401f: $00
	add  b                                           ; $4020: $80
	ldh  a, [$84]                                    ; $4021: $f0 $84
	ld   hl, sp-$80                                  ; $4023: $f8 $80
	rst  $38                                         ; $4025: $ff
	nop                                              ; $4026: $00
	nop                                              ; $4027: $00
	add  b                                           ; $4028: $80
	rst  $38                                         ; $4029: $ff
	add  e                                           ; $402a: $83
	nop                                              ; $402b: $00
	ld   [bc], a                                     ; $402c: $02
	inc  bc                                          ; $402d: $03
	ld   [bc], a                                     ; $402e: $02
	ld   b, $81                                      ; $402f: $06 $81
	rlca                                             ; $4031: $07
	add  b                                           ; $4032: $80
	rst  $38                                         ; $4033: $ff
	nop                                              ; $4034: $00
	nop                                              ; $4035: $00
	add  b                                           ; $4036: $80
	rst  $38                                         ; $4037: $ff
	add  e                                           ; $4038: $83
	nop                                              ; $4039: $00
	add  b                                           ; $403a: $80
	add  b                                           ; $403b: $80
	add  d                                           ; $403c: $82
	ret  nz                                          ; $403d: $c0

	add  b                                           ; $403e: $80
	rst  $38                                         ; $403f: $ff
	nop                                              ; $4040: $00
	nop                                              ; $4041: $00
	add  b                                           ; $4042: $80
	rst  $38                                         ; $4043: $ff
	adc  c                                           ; $4044: $89
	nop                                              ; $4045: $00
	nop                                              ; $4046: $00
	rst  ToBoot                                         ; $4047: $c7
	adc  l                                           ; $4048: $8d
	ld   h, a                                        ; $4049: $67
	nop                                              ; $404a: $00
	ld   e, a                                        ; $404b: $5f
	add  h                                           ; $404c: $84
	rst  $38                                         ; $404d: $ff
	adc  b                                           ; $404e: $88
	ret  nz                                          ; $404f: $c0

	add  h                                           ; $4050: $84
	rst  $38                                         ; $4051: $ff
	adc  b                                           ; $4052: $88
	nop                                              ; $4053: $00
	add  h                                           ; $4054: $84
	rst  $38                                         ; $4055: $ff
	add  a                                           ; $4056: $87
	ld   bc, $0200                                   ; $4057: $01 $00 $02
	adc  c                                           ; $405a: $89
	db   $fc                                         ; $405b: $fc
	add  d                                           ; $405c: $82
	cp   $80                                         ; $405d: $fe $80
	rlca                                             ; $405f: $07
	add  b                                           ; $4060: $80
	inc  bc                                          ; $4061: $03
	adc  d                                           ; $4062: $8a
	nop                                              ; $4063: $00
	add  b                                           ; $4064: $80
	ret  nz                                          ; $4065: $c0

	add  b                                           ; $4066: $80
	add  b                                           ; $4067: $80
	add  h                                           ; $4068: $84
	nop                                              ; $4069: $00
	ld   [bc], a                                     ; $406a: $02
	ld   [hl], b                                     ; $406b: $70
	ld   d, b                                        ; $406c: $50
	ret  c                                           ; $406d: $d8

	add  c                                           ; $406e: $81
	ld   hl, sp-$72                                  ; $406f: $f8 $8e
	nop                                              ; $4071: $00
	nop                                              ; $4072: $00
	rst  $38                                         ; $4073: $ff
	adc  [hl]                                        ; $4074: $8e
	ret  nz                                          ; $4075: $c0

	adc  [hl]                                        ; $4076: $8e
	nop                                              ; $4077: $00
	adc  l                                           ; $4078: $8d
	ld   bc, $0000                                   ; $4079: $01 $00 $00
	adc  l                                           ; $407c: $8d
	cp   $80                                         ; $407d: $fe $80
	jr   nc, jr_01b_4001                             ; $407f: $30 $80

	ld   e, b                                        ; $4081: $58
	add  b                                           ; $4082: $80
	ld   l, b                                        ; $4083: $68
	add  b                                           ; $4084: $80
	ld   e, b                                        ; $4085: $58
	add  b                                           ; $4086: $80
	ld   l, b                                        ; $4087: $68
	add  b                                           ; $4088: $80
	ld   e, b                                        ; $4089: $58
	add  b                                           ; $408a: $80
	ld   l, b                                        ; $408b: $68
	add  b                                           ; $408c: $80
	ld   e, b                                        ; $408d: $58
	add  b                                           ; $408e: $80
	ld   hl, sp-$80                                  ; $408f: $f8 $80
	ld   [hl], b                                     ; $4091: $70
	adc  h                                           ; $4092: $8c
	nop                                              ; $4093: $00
	nop                                              ; $4094: $00
	ld   b, $80                                      ; $4095: $06 $80
	ld   [bc], a                                     ; $4097: $02
	add  l                                           ; $4098: $85
	ld   b, $86                                      ; $4099: $06 $86
	nop                                              ; $409b: $00
	nop                                              ; $409c: $00
	ld   b, $80                                      ; $409d: $06 $80
	ld   [bc], a                                     ; $409f: $02
	add  l                                           ; $40a0: $85
	ld   b, $80                                      ; $40a1: $06 $80
	nop                                              ; $40a3: $00
	nop                                              ; $40a4: $00
	rst  $38                                         ; $40a5: $ff
	adc  b                                           ; $40a6: $88
	nop                                              ; $40a7: $00
	add  b                                           ; $40a8: $80
	rst  $38                                         ; $40a9: $ff
	add  b                                           ; $40aa: $80
	ld   e, a                                        ; $40ab: $5f
	nop                                              ; $40ac: $00
	rst  $38                                         ; $40ad: $ff
	add  h                                           ; $40ae: $84
	nop                                              ; $40af: $00
	nop                                              ; $40b0: $00
	inc  bc                                          ; $40b1: $03
	add  b                                           ; $40b2: $80
	ld   [bc], a                                     ; $40b3: $02
	add  e                                           ; $40b4: $83
	inc  bc                                          ; $40b5: $03
	add  b                                           ; $40b6: $80
	nop                                              ; $40b7: $00
	nop                                              ; $40b8: $00
	ld   a, b                                        ; $40b9: $78
	add  b                                           ; $40ba: $80
	ld   c, b                                        ; $40bb: $48
	add  c                                           ; $40bc: $81
	ld   a, b                                        ; $40bd: $78
	nop                                              ; $40be: $00
	rst  $38                                         ; $40bf: $ff
	add  b                                           ; $40c0: $80
	db   $fd                                         ; $40c1: $fd
	add  b                                           ; $40c2: $80
	rst  $38                                         ; $40c3: $ff
	add  b                                           ; $40c4: $80
	rst  $28                                         ; $40c5: $ef
	nop                                              ; $40c6: $00
	rst  $38                                         ; $40c7: $ff
	add  b                                           ; $40c8: $80
	ld   a, b                                        ; $40c9: $78
	nop                                              ; $40ca: $00
	rst  ToBoot                                         ; $40cb: $c7
	add  e                                           ; $40cc: $83
	ld   h, a                                        ; $40cd: $67
	add  b                                           ; $40ce: $80
	ld   h, e                                        ; $40cf: $63
	nop                                              ; $40d0: $00
	ld   h, b                                        ; $40d1: $60
	add  c                                           ; $40d2: $81
	ld   b, b                                        ; $40d3: $40
	ld   [bc], a                                     ; $40d4: $02
	ld   h, b                                        ; $40d5: $60
	jr   nz, jr_01b_4117                             ; $40d6: $20 $3f

	add  b                                           ; $40d8: $80
	rra                                              ; $40d9: $1f
	add  l                                           ; $40da: $85
	rst  $38                                         ; $40db: $ff
	add  h                                           ; $40dc: $84
	nop                                              ; $40dd: $00
	add  c                                           ; $40de: $81
	rst  $38                                         ; $40df: $ff
	add  b                                           ; $40e0: $80
	ld   e, a                                        ; $40e1: $5f
	inc  b                                           ; $40e2: $04
	rst  $38                                         ; $40e3: $ff
	ld   a, a                                        ; $40e4: $7f
	ld   e, a                                        ; $40e5: $5f
	rst  JumpTable                                         ; $40e6: $df
	rst  $38                                         ; $40e7: $ff
	add  h                                           ; $40e8: $84
	nop                                              ; $40e9: $00
	add  b                                           ; $40ea: $80
	rst  $38                                         ; $40eb: $ff
	add  h                                           ; $40ec: $84
	ld   hl, sp-$80                                  ; $40ed: $f8 $80
	ldh  a, [$84]                                    ; $40ef: $f0 $84
	nop                                              ; $40f1: $00
	add  b                                           ; $40f2: $80
	rst  $38                                         ; $40f3: $ff
	adc  h                                           ; $40f4: $8c
	nop                                              ; $40f5: $00
	add  b                                           ; $40f6: $80
	rst  $38                                         ; $40f7: $ff
	add  d                                           ; $40f8: $82
	ld   a, b                                        ; $40f9: $78
	adc  b                                           ; $40fa: $88
	nop                                              ; $40fb: $00
	add  b                                           ; $40fc: $80
	rst  $38                                         ; $40fd: $ff
	nop                                              ; $40fe: $00
	nop                                              ; $40ff: $00
	adc  c                                           ; $4100: $89
	rst  $38                                         ; $4101: $ff
	ld   [$fffd], sp                                 ; $4102: $08 $fd $ff
	ld   sp, hl                                      ; $4105: $f9
	rst  $38                                         ; $4106: $ff
	rst  $30                                         ; $4107: $f7
	rst  $38                                         ; $4108: $ff
	ei                                               ; $4109: $fb
	rst  $38                                         ; $410a: $ff
	xor  $85                                         ; $410b: $ee $85
	rst  $38                                         ; $410d: $ff
	ld   [$ffee], sp                                 ; $410e: $08 $ee $ff
	ei                                               ; $4111: $fb
	rst  $38                                         ; $4112: $ff
	or   e                                           ; $4113: $b3
	rst  $38                                         ; $4114: $ff
	scf                                              ; $4115: $37
	rst  $38                                         ; $4116: $ff

jr_01b_4117:
	rst  $20                                         ; $4117: $e7
	add  l                                           ; $4118: $85
	rst  $38                                         ; $4119: $ff
	ld   b, $e7                                      ; $411a: $06 $e7
	rst  $38                                         ; $411c: $ff
	scf                                              ; $411d: $37
	rst  $38                                         ; $411e: $ff
	ld   b, b                                        ; $411f: $40
	rst  $38                                         ; $4120: $ff
	nop                                              ; $4121: $00
	add  b                                           ; $4122: $80
	rst  $38                                         ; $4123: $ff
	add  c                                           ; $4124: $81
	nop                                              ; $4125: $00
	add  b                                           ; $4126: $80
	rst  $38                                         ; $4127: $ff
	ld   [bc], a                                     ; $4128: $02
	ld   a, a                                        ; $4129: $7f
	ld   e, a                                        ; $412a: $5f
	rst  JumpTable                                         ; $412b: $df
	add  b                                           ; $412c: $80
	rst  $38                                         ; $412d: $ff
	add  b                                           ; $412e: $80
	ld   e, a                                        ; $412f: $5f
	ld   bc, $00ff                                   ; $4130: $01 $ff $00
	add  b                                           ; $4133: $80
	rst  $38                                         ; $4134: $ff
	add  l                                           ; $4135: $85
	nop                                              ; $4136: $00
	nop                                              ; $4137: $00
	ld   a, b                                        ; $4138: $78
	add  b                                           ; $4139: $80
	ld   c, b                                        ; $413a: $48
	nop                                              ; $413b: $00
	ld   a, b                                        ; $413c: $78
	add  b                                           ; $413d: $80
	nop                                              ; $413e: $00
	nop                                              ; $413f: $00
	inc  bc                                          ; $4140: $03
	add  b                                           ; $4141: $80
	ld   [bc], a                                     ; $4142: $02
	add  e                                           ; $4143: $83
	inc  bc                                          ; $4144: $03
	add  h                                           ; $4145: $84
	nop                                              ; $4146: $00
	add  b                                           ; $4147: $80
	ld   a, b                                        ; $4148: $78
	nop                                              ; $4149: $00
	rst  $38                                         ; $414a: $ff
	add  b                                           ; $414b: $80
	db   $fd                                         ; $414c: $fd
	add  b                                           ; $414d: $80
	rst  $38                                         ; $414e: $ff
	add  b                                           ; $414f: $80
	rst  $28                                         ; $4150: $ef
	nop                                              ; $4151: $00
	rst  $38                                         ; $4152: $ff
	add  h                                           ; $4153: $84
	ld   a, b                                        ; $4154: $78
	adc  d                                           ; $4155: $8a
	nop                                              ; $4156: $00
	inc  bc                                          ; $4157: $03
	ld   [hl], b                                     ; $4158: $70
	ld   d, b                                        ; $4159: $50
	ret  c                                           ; $415a: $d8

	ld   hl, sp-$76                                  ; $415b: $f8 $8a
	nop                                              ; $415d: $00
	inc  bc                                          ; $415e: $03
	inc  bc                                          ; $415f: $03
	ld   [bc], a                                     ; $4160: $02
	ld   b, $07                                      ; $4161: $06 $07
	add  d                                           ; $4163: $82
	ld   hl, sp-$80                                  ; $4164: $f8 $80
	ld   [hl], b                                     ; $4166: $70
	add  h                                           ; $4167: $84
	nop                                              ; $4168: $00
	add  b                                           ; $4169: $80
	add  b                                           ; $416a: $80
	add  b                                           ; $416b: $80
	ret  nz                                          ; $416c: $c0

	add  d                                           ; $416d: $82
	rlca                                             ; $416e: $07
	add  b                                           ; $416f: $80
	inc  bc                                          ; $4170: $03
	add  [hl]                                        ; $4171: $86
	nop                                              ; $4172: $00
	add  b                                           ; $4173: $80
	rst  $38                                         ; $4174: $ff
	add  d                                           ; $4175: $82
	ret  nz                                          ; $4176: $c0

	add  b                                           ; $4177: $80
	add  b                                           ; $4178: $80
	add  [hl]                                        ; $4179: $86
	nop                                              ; $417a: $00
	add  b                                           ; $417b: $80
	rst  $38                                         ; $417c: $ff
	ld   bc, $aa55                                   ; $417d: $01 $55 $aa
	add  b                                           ; $4180: $80
	ld   d, l                                        ; $4181: $55
	add  b                                           ; $4182: $80
	xor  d                                           ; $4183: $aa
	add  b                                           ; $4184: $80
	ld   d, l                                        ; $4185: $55
	add  a                                           ; $4186: $87
	nop                                              ; $4187: $00
	nop                                              ; $4188: $00
	rst  $38                                         ; $4189: $ff
	add  b                                           ; $418a: $80
	add  b                                           ; $418b: $80
	add  b                                           ; $418c: $80
	cp   h                                           ; $418d: $bc
	add  b                                           ; $418e: $80
	and  l                                           ; $418f: $a5
	add  b                                           ; $4190: $80
	and  a                                           ; $4191: $a7
	inc  bc                                          ; $4192: $03
	cp   a                                           ; $4193: $bf
	cp   h                                           ; $4194: $bc

jr_01b_4195:
	adc  h                                           ; $4195: $8c
	adc  b                                           ; $4196: $88
	add  b                                           ; $4197: $80
	sbc  b                                           ; $4198: $98

jr_01b_4199:
	ld   bc, $fff8                                   ; $4199: $01 $f8 $ff
	add  b                                           ; $419c: $80
	nop                                              ; $419d: $00
	add  b                                           ; $419e: $80
	rst  $38                                         ; $419f: $ff
	add  b                                           ; $41a0: $80
	nop                                              ; $41a1: $00
	add  c                                           ; $41a2: $81
	rst  $38                                         ; $41a3: $ff
	add  e                                           ; $41a4: $83
	nop                                              ; $41a5: $00
	nop                                              ; $41a6: $00
	ld   d, b                                        ; $41a7: $50
	adc  l                                           ; $41a8: $8d
	xor  b                                           ; $41a9: $a8
	nop                                              ; $41aa: $00
	ld   hl, sp-$80                                  ; $41ab: $f8 $80
	nop                                              ; $41ad: $00
	add  b                                           ; $41ae: $80
	rra                                              ; $41af: $1f
	add  b                                           ; $41b0: $80
	add  hl, bc                                      ; $41b1: $09
	add  b                                           ; $41b2: $80
	and  $80                                         ; $41b3: $e6 $80
	rrca                                             ; $41b5: $0f
	add  b                                           ; $41b6: $80
	ld   [$4f80], a                                  ; $41b7: $ea $80 $4f
	add  b                                           ; $41ba: $80
	adc  d                                           ; $41bb: $8a
	add  b                                           ; $41bc: $80
	nop                                              ; $41bd: $00
	add  b                                           ; $41be: $80
	add  h                                           ; $41bf: $84
	add  b                                           ; $41c0: $80
	inc  b                                           ; $41c1: $04
	add  b                                           ; $41c2: $80
	dec  b                                           ; $41c3: $05
	add  b                                           ; $41c4: $80
	adc  b                                           ; $41c5: $88
	add  b                                           ; $41c6: $80
	sbc  b                                           ; $41c7: $98
	add  d                                           ; $41c8: $82
	adc  b                                           ; $41c9: $88
	add  b                                           ; $41ca: $80
	nop                                              ; $41cb: $00
	add  b                                           ; $41cc: $80
	ldh  [$80], a                                    ; $41cd: $e0 $80
	nop                                              ; $41cf: $00
	add  b                                           ; $41d0: $80
	pop  af                                          ; $41d1: $f1
	add  b                                           ; $41d2: $80
	ld   [bc], a                                     ; $41d3: $02
	add  b                                           ; $41d4: $80
	pop  hl                                          ; $41d5: $e1
	add  b                                           ; $41d6: $80
	inc  bc                                          ; $41d7: $03
	add  b                                           ; $41d8: $80
	pop  hl                                          ; $41d9: $e1
	add  b                                           ; $41da: $80
	nop                                              ; $41db: $00
	add  b                                           ; $41dc: $80
	adc  b                                           ; $41dd: $88
	add  b                                           ; $41de: $80
	cp   h                                           ; $41df: $bc
	add  b                                           ; $41e0: $80
	ld   [$8880], sp                                 ; $41e1: $08 $80 $88
	add  b                                           ; $41e4: $80

jr_01b_41e5:
	ld   a, [hl]                                     ; $41e5: $7e
	add  b                                           ; $41e6: $80
	inc  b                                           ; $41e7: $04
	add  b                                           ; $41e8: $80
	ld   a, [hl]                                     ; $41e9: $7e
	add  b                                           ; $41ea: $80
	nop                                              ; $41eb: $00
	add  b                                           ; $41ec: $80

jr_01b_41ed:
	inc  h                                           ; $41ed: $24
	add  b                                           ; $41ee: $80
	add  hl, hl                                      ; $41ef: $29
	add  b                                           ; $41f0: $80
	db   $f4                                         ; $41f1: $f4
	add  b                                           ; $41f2: $80

jr_01b_41f3:
	add  hl, hl                                      ; $41f3: $29
	add  b                                           ; $41f4: $80
	ld   l, l                                        ; $41f5: $6d
	add  b                                           ; $41f6: $80
	ld   [hl], d                                     ; $41f7: $72
	add  b                                           ; $41f8: $80
	ld   l, a                                        ; $41f9: $6f
	add  b                                           ; $41fa: $80
	nop                                              ; $41fb: $00
	add  b                                           ; $41fc: $80
	add  c                                           ; $41fd: $81
	add  b                                           ; $41fe: $80
	ld   bc, $8180                                   ; $41ff: $01 $80 $81
	add  b                                           ; $4202: $80
	rra                                              ; $4203: $1f
	add  b                                           ; $4204: $80
	sub  c                                           ; $4205: $91
	add  b                                           ; $4206: $80
	ld   de, $9180                                   ; $4207: $11 $80 $91
	add  [hl]                                        ; $420a: $86
	nop                                              ; $420b: $00
	add  b                                           ; $420c: $80
	di                                               ; $420d: $f3
	add  h                                           ; $420e: $84
	db   $10                                         ; $420f: $10
	add  d                                           ; $4210: $82
	nop                                              ; $4211: $00
	add  d                                           ; $4212: $82
	jr   z, jr_01b_4195                              ; $4213: $28 $80

	ld   sp, hl                                      ; $4215: $f9
	add  b                                           ; $4216: $80
	jr   nz, jr_01b_4199                             ; $4217: $20 $80

	ld   b, b                                        ; $4219: $40
	add  b                                           ; $421a: $80
	add  b                                           ; $421b: $80
	add  d                                           ; $421c: $82
	nop                                              ; $421d: $00
	add  d                                           ; $421e: $82
	db   $10                                         ; $421f: $10
	add  b                                           ; $4220: $80
	cp   $80                                         ; $4221: $fe $80
	db   $10                                         ; $4223: $10
	add  b                                           ; $4224: $80
	ld   [hl], b                                     ; $4225: $70
	add  b                                           ; $4226: $80
	sub  b                                           ; $4227: $90
	add  d                                           ; $4228: $82
	nop                                              ; $4229: $00
	add  b                                           ; $422a: $80
	ld   b, b                                        ; $422b: $40
	add  b                                           ; $422c: $80
	and  b                                           ; $422d: $a0
	add  b                                           ; $422e: $80
	ld   b, b                                        ; $422f: $40
	add  [hl]                                        ; $4230: $86
	nop                                              ; $4231: $00
	add  b                                           ; $4232: $80
	dec  d                                           ; $4233: $15
	add  b                                           ; $4234: $80
	ccf                                              ; $4235: $3f
	add  b                                           ; $4236: $80
	ldh  a, [c]                                      ; $4237: $f2
	add  b                                           ; $4238: $80
	rra                                              ; $4239: $1f
	add  b                                           ; $423a: $80
	jp   nc, $1f80                                   ; $423b: $d2 $80 $1f

	add  b                                           ; $423e: $80
	jp   nc, $0080                                   ; $423f: $d2 $80 $00

	add  b                                           ; $4242: $80
	inc  b                                           ; $4243: $04
	add  b                                           ; $4244: $80
	add  l                                           ; $4245: $85
	add  b                                           ; $4246: $80
	inc  b                                           ; $4247: $04
	add  b                                           ; $4248: $80
	adc  c                                           ; $4249: $89
	add  b                                           ; $424a: $80
	add  hl, de                                      ; $424b: $19
	add  b                                           ; $424c: $80
	adc  e                                           ; $424d: $8b
	add  b                                           ; $424e: $80
	dec  bc                                          ; $424f: $0b
	add  b                                           ; $4250: $80
	nop                                              ; $4251: $00
	add  b                                           ; $4252: $80

jr_01b_4253:
	and  b                                           ; $4253: $a0
	add  b                                           ; $4254: $80
	ldh  a, [$80]                                    ; $4255: $f0 $80
	and  c                                           ; $4257: $a1
	add  b                                           ; $4258: $80
	di                                               ; $4259: $f3
	add  b                                           ; $425a: $80
	ld   bc, $f180                                   ; $425b: $01 $80 $f1
	add  b                                           ; $425e: $80
	ld   d, c                                        ; $425f: $51
	add  d                                           ; $4260: $82
	nop                                              ; $4261: $00
	add  d                                           ; $4262: $82
	jr   z, jr_01b_41e5                              ; $4263: $28 $80

	db   $d3                                         ; $4265: $d3
	add  h                                           ; $4266: $84
	ld   c, b                                        ; $4267: $48
	add  d                                           ; $4268: $82
	nop                                              ; $4269: $00
	add  b                                           ; $426a: $80
	jr   z, jr_01b_41ed                              ; $426b: $28 $80

	add  hl, hl                                      ; $426d: $29
	add  b                                           ; $426e: $80
	ld   hl, sp-$80                                  ; $426f: $f8 $80
	jr   nz, jr_01b_41f3                             ; $4271: $20 $80

	ld   b, c                                        ; $4273: $41
	add  b                                           ; $4274: $80
	add  b                                           ; $4275: $80
	add  d                                           ; $4276: $82
	nop                                              ; $4277: $00
	add  b                                           ; $4278: $80
	ld   b, c                                        ; $4279: $41
	add  b                                           ; $427a: $80
	pop  af                                          ; $427b: $f1
	add  b                                           ; $427c: $80
	ld   b, e                                        ; $427d: $43
	add  b                                           ; $427e: $80
	ld   hl, $f980                                   ; $427f: $21 $80 $f9
	add  b                                           ; $4282: $80
	ld   hl, $ef80                                   ; $4283: $21 $80 $ef
	add  b                                           ; $4286: $80
	ld   c, d                                        ; $4287: $4a
	add  b                                           ; $4288: $80
	adc  d                                           ; $4289: $8a
	add  b                                           ; $428a: $80
	ld   b, b                                        ; $428b: $40
	add  b                                           ; $428c: $80
	ccf                                              ; $428d: $3f
	add  h                                           ; $428e: $84
	nop                                              ; $428f: $00
	add  b                                           ; $4290: $80
	adc  b                                           ; $4291: $88
	add  d                                           ; $4292: $82
	adc  c                                           ; $4293: $89
	add  b                                           ; $4294: $80
	add  hl, bc                                      ; $4295: $09
	add  b                                           ; $4296: $80
	adc  c                                           ; $4297: $89
	add  h                                           ; $4298: $84
	nop                                              ; $4299: $00
	add  b                                           ; $429a: $80

jr_01b_429b:
	ld   bc, $f180                                   ; $429b: $01 $80 $f1
	add  d                                           ; $429e: $82
	ld   de, $f180                                   ; $429f: $11 $80 $f1
	add  h                                           ; $42a2: $84
	nop                                              ; $42a3: $00
	add  b                                           ; $42a4: $80
	inc  b                                           ; $42a5: $04
	add  b                                           ; $42a6: $80
	inc  h                                           ; $42a7: $24
	add  b                                           ; $42a8: $80
	inc  d                                           ; $42a9: $14
	add  b                                           ; $42aa: $80
	inc  b                                           ; $42ab: $04
	add  b                                           ; $42ac: $80
	inc  c                                           ; $42ad: $0c
	add  h                                           ; $42ae: $84
	nop                                              ; $42af: $00
	add  b                                           ; $42b0: $80
	and  d                                           ; $42b1: $a2
	add  d                                           ; $42b2: $82
	add  hl, hl                                      ; $42b3: $29
	add  b                                           ; $42b4: $80
	scf                                              ; $42b5: $37
	add  b                                           ; $42b6: $80
	jr   nz, @-$7a                                   ; $42b7: $20 $84

	nop                                              ; $42b9: $00
	add  b                                           ; $42ba: $80
	rra                                              ; $42bb: $1f
	add  b                                           ; $42bc: $80

jr_01b_42bd:
	add  c                                           ; $42bd: $81
	add  b                                           ; $42be: $80
	ld   bc, $8182                                   ; $42bf: $01 $82 $81
	add  h                                           ; $42c2: $84
	nop                                              ; $42c3: $00
	add  b                                           ; $42c4: $80
	ldh  a, [$8c]                                    ; $42c5: $f0 $8c
	nop                                              ; $42c7: $00
	add  h                                           ; $42c8: $84
	add  b                                           ; $42c9: $80
	add  b                                           ; $42ca: $80
	ld   b, b                                        ; $42cb: $40
	add  b                                           ; $42cc: $80

jr_01b_42cd:
	jr   nz, jr_01b_4253                             ; $42cd: $20 $84

	nop                                              ; $42cf: $00
	add  b                                           ; $42d0: $80
	sub  b                                           ; $42d1: $90
	add  b                                           ; $42d2: $80
	ld   [hl], b                                     ; $42d3: $70
	add  b                                           ; $42d4: $80
	db   $10                                         ; $42d5: $10
	add  b                                           ; $42d6: $80
	ld   de, $6080                                   ; $42d7: $11 $80 $60
	adc  b                                           ; $42da: $88
	nop                                              ; $42db: $00
	add  b                                           ; $42dc: $80
	add  b                                           ; $42dd: $80
	add  b                                           ; $42de: $80
	ld   b, b                                        ; $42df: $40
	add  b                                           ; $42e0: $80

jr_01b_42e1:
	add  b                                           ; $42e1: $80
	add  h                                           ; $42e2: $84
	nop                                              ; $42e3: $00
	add  b                                           ; $42e4: $80

jr_01b_42e5:
	rra                                              ; $42e5: $1f
	add  b                                           ; $42e6: $80
	ld   [$ff80], sp                                 ; $42e7: $08 $80 $ff
	add  d                                           ; $42ea: $82
	ld   [$0084], sp                                 ; $42eb: $08 $84 $00
	add  b                                           ; $42ee: $80
	adc  l                                           ; $42ef: $8d
	add  b                                           ; $42f0: $80
	dec  c                                           ; $42f1: $0d
	add  b                                           ; $42f2: $80
	adc  c                                           ; $42f3: $89
	add  d                                           ; $42f4: $82
	add  hl, bc                                      ; $42f5: $09
	add  h                                           ; $42f6: $84
	nop                                              ; $42f7: $00
	add  b                                           ; $42f8: $80
	pop  af                                          ; $42f9: $f1
	add  b                                           ; $42fa: $80
	ld   d, c                                        ; $42fb: $51
	add  b                                           ; $42fc: $80
	pop  af                                          ; $42fd: $f1
	add  b                                           ; $42fe: $80
	ld   d, d                                        ; $42ff: $52
	add  b                                           ; $4300: $80
	ld   d, b                                        ; $4301: $50
	add  h                                           ; $4302: $84
	nop                                              ; $4303: $00
	add  b                                           ; $4304: $80
	ld   c, b                                        ; $4305: $48
	add  b                                           ; $4306: $80
	ld   e, b                                        ; $4307: $58
	add  d                                           ; $4308: $82
	ld   b, b                                        ; $4309: $40
	add  b                                           ; $430a: $80
	add  b                                           ; $430b: $80
	add  h                                           ; $430c: $84
	nop                                              ; $430d: $00
	add  b                                           ; $430e: $80
	add  b                                           ; $430f: $80
	add  d                                           ; $4310: $82
	add  d                                           ; $4311: $82
	add  b                                           ; $4312: $80
	ld   b, c                                        ; $4313: $41
	add  b                                           ; $4314: $80
	jr   nz, jr_01b_429b                             ; $4315: $20 $84

	nop                                              ; $4317: $00
	add  d                                           ; $4318: $82
	ld   de, $0182                                   ; $4319: $11 $82 $01
	add  b                                           ; $431c: $80
	pop  hl                                          ; $431d: $e1
	adc  h                                           ; $431e: $8c
	nop                                              ; $431f: $00
	add  b                                           ; $4320: $80
	ldh  [$80], a                                    ; $4321: $e0 $80
	nop                                              ; $4323: $00
	add  b                                           ; $4324: $80
	inc  a                                           ; $4325: $3c
	add  b                                           ; $4326: $80
	inc  b                                           ; $4327: $04
	add  d                                           ; $4328: $82
	nop                                              ; $4329: $00
	add  b                                           ; $432a: $80

jr_01b_432b:
	ld   [hl], b                                     ; $432b: $70
	add  b                                           ; $432c: $80
	ld   [$8880], sp                                 ; $432d: $08 $80 $88
	add  d                                           ; $4330: $82
	add  b                                           ; $4331: $80
	add  b                                           ; $4332: $80
	ldh  a, [$82]                                    ; $4333: $f0 $82
	nop                                              ; $4335: $00
	add  b                                           ; $4336: $80
	db   $10                                         ; $4337: $10
	add  h                                           ; $4338: $84
	jr   z, jr_01b_42bd                              ; $4339: $28 $82

	ld   b, h                                        ; $433b: $44
	add  d                                           ; $433c: $82
	nop                                              ; $433d: $00
	add  b                                           ; $433e: $80
	ld   a, [bc]                                     ; $433f: $0a
	add  b                                           ; $4340: $80
	ld   a, [de]                                     ; $4341: $1a
	add  b                                           ; $4342: $80
	db   $10                                         ; $4343: $10
	add  b                                           ; $4344: $80
	cp   $82                                         ; $4345: $fe $82
	db   $10                                         ; $4347: $10
	add  d                                           ; $4348: $82
	nop                                              ; $4349: $00
	add  d                                           ; $434a: $82
	jr   nz, jr_01b_42cd                             ; $434b: $20 $80

	ld   a, $80                                      ; $434d: $3e $80
	ld   [hl+], a                                    ; $434f: $22
	add  b                                           ; $4350: $80
	ld   b, d                                        ; $4351: $42
	add  b                                           ; $4352: $80
	ld   [hl], d                                     ; $4353: $72
	add  [hl]                                        ; $4354: $86
	nop                                              ; $4355: $00
	add  b                                           ; $4356: $80
	ld   h, b                                        ; $4357: $60
	add  b                                           ; $4358: $80
	ld   [de], a                                     ; $4359: $12
	add  d                                           ; $435a: $82
	ld   [bc], a                                     ; $435b: $02
	add  d                                           ; $435c: $82
	nop                                              ; $435d: $00
	add  d                                           ; $435e: $82
	jr   nz, jr_01b_42e1                             ; $435f: $20 $80

	ld   a, h                                        ; $4361: $7c
	add  b                                           ; $4362: $80
	jr   nz, jr_01b_42e5                             ; $4363: $20 $80

	ld   h, $80                                      ; $4365: $26 $80
	ld   a, b                                        ; $4367: $78
	add  b                                           ; $4368: $80
	nop                                              ; $4369: $00
	add  b                                           ; $436a: $80
	ld   c, a                                        ; $436b: $4f
	add  b                                           ; $436c: $80
	ld   c, d                                        ; $436d: $4a
	add  b                                           ; $436e: $80
	ld   [$4a80], a                                  ; $436f: $ea $80 $4a
	add  b                                           ; $4372: $80
	ld   c, a                                        ; $4373: $4f
	add  b                                           ; $4374: $80
	ld   c, d                                        ; $4375: $4a
	add  b                                           ; $4376: $80
	ld   l, d                                        ; $4377: $6a
	add  b                                           ; $4378: $80
	nop                                              ; $4379: $00
	add  b                                           ; $437a: $80
	add  b                                           ; $437b: $80
	adc  d                                           ; $437c: $8a
	sub  b                                           ; $437d: $90
	add  h                                           ; $437e: $84
	nop                                              ; $437f: $00
	add  b                                           ; $4380: $80
	ccf                                              ; $4381: $3f
	add  b                                           ; $4382: $80
	ld   [bc], a                                     ; $4383: $02
	add  b                                           ; $4384: $80

jr_01b_4385:
	inc  b                                           ; $4385: $04
	add  d                                           ; $4386: $82
	ld   [$0084], sp                                 ; $4387: $08 $84 $00
	add  b                                           ; $438a: $80
	sbc  a                                           ; $438b: $9f
	add  [hl]                                        ; $438c: $86
	ld   bc, $0084                                   ; $438d: $01 $84 $00
	add  b                                           ; $4390: $80
	ldh  a, [$80]                                    ; $4391: $f0 $80
	inc  bc                                          ; $4393: $03
	add  b                                           ; $4394: $80
	nop                                              ; $4395: $00
	add  b                                           ; $4396: $80
	add  b                                           ; $4397: $80
	add  b                                           ; $4398: $80
	ld   b, b                                        ; $4399: $40
	add  d                                           ; $439a: $82
	nop                                              ; $439b: $00
	add  d                                           ; $439c: $82
	add  b                                           ; $439d: $80
	add  b                                           ; $439e: $80
	ldh  a, [c]                                      ; $439f: $f2
	add  b                                           ; $43a0: $80
	ld   b, d                                        ; $43a1: $42
	add  b                                           ; $43a2: $80
	ld   [hl+], a                                    ; $43a3: $22
	add  b                                           ; $43a4: $80
	ld   [de], a                                     ; $43a5: $12
	add  [hl]                                        ; $43a6: $86
	nop                                              ; $43a7: $00
	add  b                                           ; $43a8: $80
	jr   nz, jr_01b_432b                             ; $43a9: $20 $80

	db   $10                                         ; $43ab: $10
	add  d                                           ; $43ac: $82
	ld   [$0080], sp                                 ; $43ad: $08 $80 $00
	add  b                                           ; $43b0: $80
	ld   bc, $0080                                   ; $43b1: $01 $80 $00
	add  b                                           ; $43b4: $80

jr_01b_43b5:
	ld   c, $80                                      ; $43b5: $0e $80
	nop                                              ; $43b7: $00
	add  b                                           ; $43b8: $80
	ld   c, $80                                      ; $43b9: $0e $80
	inc  b                                           ; $43bb: $04
	add  b                                           ; $43bc: $80
	ld   [$0080], sp                                 ; $43bd: $08 $80 $00
	add  b                                           ; $43c0: $80
	ld   hl, sp-$80                                  ; $43c1: $f8 $80
	sub  b                                           ; $43c3: $90
	add  b                                           ; $43c4: $80
	ld   h, b                                        ; $43c5: $60
	add  b                                           ; $43c6: $80
	ld   hl, sp-$80                                  ; $43c7: $f8 $80
	xor  c                                           ; $43c9: $a9
	add  b                                           ; $43ca: $80
	ld   hl, sp-$80                                  ; $43cb: $f8 $80
	xor  b                                           ; $43cd: $a8
	add  b                                           ; $43ce: $80
	ld   bc, $0080                                   ; $43cf: $01 $80 $00
	add  d                                           ; $43d2: $82
	ld   b, b                                        ; $43d3: $40
	add  b                                           ; $43d4: $80
	inc  a                                           ; $43d5: $3c
	add  h                                           ; $43d6: $84
	nop                                              ; $43d7: $00
	add  [hl]                                        ; $43d8: $86
	ld   [$f080], sp                                 ; $43d9: $08 $80 $f0
	add  h                                           ; $43dc: $84
	nop                                              ; $43dd: $00
	add  b                                           ; $43de: $80
	ld   b, h                                        ; $43df: $44
	add  b                                           ; $43e0: $80
	ld   a, h                                        ; $43e1: $7c
	add  h                                           ; $43e2: $84
	add  d                                           ; $43e3: $82
	add  h                                           ; $43e4: $84
	nop                                              ; $43e5: $00
	add  h                                           ; $43e6: $84
	sub  d                                           ; $43e7: $92
	add  b                                           ; $43e8: $80
	db   $10                                         ; $43e9: $10
	add  b                                           ; $43ea: $80
	jr   nc, @-$7a                                   ; $43eb: $30 $84

	nop                                              ; $43ed: $00
	add  b                                           ; $43ee: $80
	jp   z, $0482                                    ; $43ef: $ca $82 $04

	add  b                                           ; $43f2: $80
	ld   [$7080], sp                                 ; $43f3: $08 $80 $70
	add  h                                           ; $43f6: $84
	nop                                              ; $43f7: $00
	add  d                                           ; $43f8: $82
	ld   [bc], a                                     ; $43f9: $02
	add  b                                           ; $43fa: $80

jr_01b_43fb:
	inc  b                                           ; $43fb: $04
	add  b                                           ; $43fc: $80
	ld   [$7080], sp                                 ; $43fd: $08 $80 $70
	add  h                                           ; $4400: $84
	nop                                              ; $4401: $00
	add  b                                           ; $4402: $80
	jr   jr_01b_4385                                 ; $4403: $18 $80

	inc  h                                           ; $4405: $24
	add  b                                           ; $4406: $80
	ld   b, h                                        ; $4407: $44
	add  b                                           ; $4408: $80
	ld   b, b                                        ; $4409: $40
	add  b                                           ; $440a: $80
	ld   a, $84                                      ; $440b: $3e $84
	nop                                              ; $440d: $00
	add  b                                           ; $440e: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $440f: $cf
	add  d                                           ; $4410: $82
	ld   b, d                                        ; $4411: $42
	add  b                                           ; $4412: $80
	jp   nz, $4280                                   ; $4413: $c2 $80 $42

	add  h                                           ; $4416: $84
	nop                                              ; $4417: $00
	add  b                                           ; $4418: $80
	sub  b                                           ; $4419: $90
	add  d                                           ; $441a: $82
	db   $10                                         ; $441b: $10
	add  b                                           ; $441c: $80
	add  hl, bc                                      ; $441d: $09
	add  b                                           ; $441e: $80
	ld   b, $84                                      ; $441f: $06 $84
	nop                                              ; $4421: $00
	add  d                                           ; $4422: $82

jr_01b_4423:
	ld   [$8880], sp                                 ; $4423: $08 $80 $88
	add  b                                           ; $4426: $80
	inc  b                                           ; $4427: $04
	add  b                                           ; $4428: $80
	inc  bc                                          ; $4429: $03
	add  h                                           ; $442a: $84
	nop                                              ; $442b: $00
	adc  b                                           ; $442c: $88
	ld   bc, $0084                                   ; $442d: $01 $84 $00
	add  b                                           ; $4430: $80
	jr   nz, jr_01b_43b5                             ; $4431: $20 $82

	ld   [bc], a                                     ; $4433: $02
	add  b                                           ; $4434: $80
	ld   bc, $0086                                   ; $4435: $01 $86 $00
	add  b                                           ; $4438: $80
	ld   [de], a                                     ; $4439: $12
	add  d                                           ; $443a: $82
	ld   [bc], a                                     ; $443b: $02
	add  b                                           ; $443c: $80
	ld   bc, $e080                                   ; $443d: $01 $80 $e0
	add  h                                           ; $4440: $84
	nop                                              ; $4441: $00
	add  d                                           ; $4442: $82
	ld   [$0080], sp                                 ; $4443: $08 $80 $00
	add  b                                           ; $4446: $80
	ld   b, b                                        ; $4447: $40
	add  b                                           ; $4448: $80
	add  b                                           ; $4449: $80
	add  h                                           ; $444a: $84
	nop                                              ; $444b: $00
	add  b                                           ; $444c: $80
	ld   c, $80                                      ; $444d: $0e $80
	inc  b                                           ; $444f: $04
	add  b                                           ; $4450: $80
	ld   [$0480], sp                                 ; $4451: $08 $80 $04
	add  b                                           ; $4454: $80
	inc  bc                                          ; $4455: $03
	add  h                                           ; $4456: $84
	nop                                              ; $4457: $00
	add  b                                           ; $4458: $80
	ld   hl, sp-$7e                                  ; $4459: $f8 $82
	xor  b                                           ; $445b: $a8
	add  b                                           ; $445c: $80
	nop                                              ; $445d: $00
	add  b                                           ; $445e: $80
	ld   hl, sp-$7a                                  ; $445f: $f8 $86
	nop                                              ; $4461: $00
	add  b                                           ; $4462: $80
	ld   c, [hl]                                     ; $4463: $4e
	add  b                                           ; $4464: $80
	ld   b, b                                        ; $4465: $40
	add  b                                           ; $4466: $80
	ld   e, a                                        ; $4467: $5f
	add  b                                           ; $4468: $80
	add  b                                           ; $4469: $80
	add  b                                           ; $446a: $80
	adc  [hl]                                        ; $446b: $8e
	add  b                                           ; $446c: $80
	add  b                                           ; $446d: $80
	add  b                                           ; $446e: $80
	adc  [hl]                                        ; $446f: $8e
	add  h                                           ; $4470: $84
	nop                                              ; $4471: $00
	add  b                                           ; $4472: $80

jr_01b_4473:
	jr   nz, @-$7e                                   ; $4473: $20 $80

	daa                                              ; $4475: $27
	add  h                                           ; $4476: $84
	jr   nz, jr_01b_43fb                             ; $4477: $20 $82

	nop                                              ; $4479: $00
	add  b                                           ; $447a: $80
	ld   bc, $0980                                   ; $447b: $01 $80 $09
	add  b                                           ; $447e: $80
	adc  a                                           ; $447f: $8f
	add  b                                           ; $4480: $80
	sub  c                                           ; $4481: $91
	add  b                                           ; $4482: $80
	ld   bc, $1f80                                   ; $4483: $01 $80 $1f
	add  d                                           ; $4486: $82
	nop                                              ; $4487: $00
	add  b                                           ; $4488: $80
	rlca                                             ; $4489: $07
	add  b                                           ; $448a: $80
	dec  b                                           ; $448b: $05
	add  b                                           ; $448c: $80
	rst  $20                                         ; $448d: $e7
	add  d                                           ; $448e: $82
	dec  b                                           ; $448f: $05
	add  b                                           ; $4490: $80
	rst  $30                                         ; $4491: $f7
	add  d                                           ; $4492: $82
	nop                                              ; $4493: $00
	add  b                                           ; $4494: $80
	ld   b, b                                        ; $4495: $40
	add  b                                           ; $4496: $80
	ld   a, h                                        ; $4497: $7c
	add  b                                           ; $4498: $80
	ld   b, b                                        ; $4499: $40
	add  b                                           ; $449a: $80
	adc  b                                           ; $449b: $88
	add  d                                           ; $449c: $82
	jr   z, jr_01b_4423                              ; $449d: $28 $84

	nop                                              ; $449f: $00
	adc  b                                           ; $44a0: $88
	add  b                                           ; $44a1: $80
	add  d                                           ; $44a2: $82
	nop                                              ; $44a3: $00
	add  b                                           ; $44a4: $80
	db   $10                                         ; $44a5: $10
	add  b                                           ; $44a6: $80
	db   $fc                                         ; $44a7: $fc
	add  d                                           ; $44a8: $82
	db   $10                                         ; $44a9: $10
	add  b                                           ; $44aa: $80
	db   $fc                                         ; $44ab: $fc
	add  b                                           ; $44ac: $80
	db   $10                                         ; $44ad: $10
	add  h                                           ; $44ae: $84
	nop                                              ; $44af: $00
	add  b                                           ; $44b0: $80
	add  c                                           ; $44b1: $81
	add  [hl]                                        ; $44b2: $86
	add  b                                           ; $44b3: $80
	add  d                                           ; $44b4: $82
	nop                                              ; $44b5: $00
	add  b                                           ; $44b6: $80
	add  b                                           ; $44b7: $80
	add  b                                           ; $44b8: $80
	ldh  [$80], a                                    ; $44b9: $e0 $80
	add  b                                           ; $44bb: $80
	add  b                                           ; $44bc: $80
	sbc  [hl]                                        ; $44bd: $9e
	add  b                                           ; $44be: $80
	add  d                                           ; $44bf: $82
	add  b                                           ; $44c0: $80
	add  b                                           ; $44c1: $80
	add  d                                           ; $44c2: $82
	nop                                              ; $44c3: $00
	add  d                                           ; $44c4: $82
	ld   [$3f80], sp                                 ; $44c5: $08 $80 $3f
	add  d                                           ; $44c8: $82
	ld   [$3f80], sp                                 ; $44c9: $08 $80 $3f
	add  d                                           ; $44cc: $82
	nop                                              ; $44cd: $00
	add  b                                           ; $44ce: $80
	rrca                                             ; $44cf: $0f
	add  d                                           ; $44d0: $82
	nop                                              ; $44d1: $00
	add  b                                           ; $44d2: $80
	rrca                                             ; $44d3: $0f
	add  b                                           ; $44d4: $80
	db   $10                                         ; $44d5: $10
	add  h                                           ; $44d6: $84
	nop                                              ; $44d7: $00
	add  d                                           ; $44d8: $82
	add  b                                           ; $44d9: $80
	add  b                                           ; $44da: $80
	nop                                              ; $44db: $00
	add  b                                           ; $44dc: $80
	add  b                                           ; $44dd: $80
	add  b                                           ; $44de: $80
	ld   b, b                                        ; $44df: $40
	add  b                                           ; $44e0: $80
	ld   c, a                                        ; $44e1: $4f
	add  h                                           ; $44e2: $84
	nop                                              ; $44e3: $00
	add  b                                           ; $44e4: $80
	inc  bc                                          ; $44e5: $03
	add  b                                           ; $44e6: $80
	ld   [bc], a                                     ; $44e7: $02
	add  b                                           ; $44e8: $80
	inc  bc                                          ; $44e9: $03
	add  b                                           ; $44ea: $80
	ld   [bc], a                                     ; $44eb: $02
	add  b                                           ; $44ec: $80
	ldh  a, [c]                                      ; $44ed: $f2
	add  d                                           ; $44ee: $82
	nop                                              ; $44ef: $00
	add  b                                           ; $44f0: $80
	jr   nz, jr_01b_4473                             ; $44f1: $20 $80

	cp   $80                                         ; $44f3: $fe $80
	ld   d, b                                        ; $44f5: $50
	add  b                                           ; $44f6: $80
	db   $fc                                         ; $44f7: $fc
	add  b                                           ; $44f8: $80
	ld   d, b                                        ; $44f9: $50
	add  b                                           ; $44fa: $80
	ld   [hl], b                                     ; $44fb: $70
	add  h                                           ; $44fc: $84

jr_01b_44fd:
	nop                                              ; $44fd: $00
	add  d                                           ; $44fe: $82
	ld   c, b                                        ; $44ff: $48
	add  b                                           ; $4500: $80
	ld   e, h                                        ; $4501: $5c
	add  b                                           ; $4502: $80
	ld   [$4280], a                                  ; $4503: $ea $80 $42
	add  h                                           ; $4506: $84
	nop                                              ; $4507: $00
	add  [hl]                                        ; $4508: $86
	ld   b, h                                        ; $4509: $44
	nop                                              ; $450a: $00
	ld   h, h                                        ; $450b: $64
	rrca                                             ; $450c: $0f
	ld   [bc], a                                     ; $450d: $02
	inc  d                                           ; $450e: $14
	ret  nz                                          ; $450f: $c0

	nop                                              ; $4510: $00
	jr   nc, jr_01b_4553                             ; $4511: $30 $40

	call z, $3330                                    ; $4513: $cc $30 $33
	inc  a                                           ; $4516: $3c
	ld   a, l                                        ; $4517: $7d
	rra                                              ; $4518: $1f
	inc  e                                           ; $4519: $1c
	rra                                              ; $451a: $1f
	jr   c, jr_01b_452c                              ; $451b: $38 $0f

	nop                                              ; $451d: $00
	rrca                                             ; $451e: $0f
	db   $10                                         ; $451f: $10
	rlca                                             ; $4520: $07
	ld   bc, $0f07                                   ; $4521: $01 $07 $0f
	add  c                                           ; $4524: $81
	inc  bc                                          ; $4525: $03
	nop                                              ; $4526: $00
	dec  b                                           ; $4527: $05
	add  c                                           ; $4528: $81
	ld   bc, $0202                                   ; $4529: $01 $02 $02

jr_01b_452c:
	nop                                              ; $452c: $00
	ld   bc, $0087                                   ; $452d: $01 $87 $00
	inc  d                                           ; $4530: $14
	ret  nz                                          ; $4531: $c0

	nop                                              ; $4532: $00
	or   b                                           ; $4533: $b0
	ret  nz                                          ; $4534: $c0

	inc  a                                           ; $4535: $3c
	ldh  a, [$7e]                                    ; $4536: $f0 $7e
	db   $fc                                         ; $4538: $fc
	ld   a, [$f4f8]                                  ; $4539: $fa $f8 $f4
	ldh  a, [$e8]                                    ; $453c: $f0 $e8
	ldh  [$d0], a                                    ; $453e: $e0 $d0
	ret  nz                                          ; $4540: $c0

	and  b                                           ; $4541: $a0
	add  b                                           ; $4542: $80
	ld   b, b                                        ; $4543: $40
	nop                                              ; $4544: $00
	add  b                                           ; $4545: $80
	add  c                                           ; $4546: $81
	nop                                              ; $4547: $00
	ld   [$00c0], sp                                 ; $4548: $08 $c0 $00
	jr   nc, jr_01b_458d                             ; $454b: $30 $40

	call z, $3330                                    ; $454d: $cc $30 $33
	inc  a                                           ; $4550: $3c
	ld   a, h                                        ; $4551: $7c
	add  c                                           ; $4552: $81

jr_01b_4553:
	rra                                              ; $4553: $1f
	nop                                              ; $4554: $00
	ccf                                              ; $4555: $3f
	add  c                                           ; $4556: $81
	rrca                                             ; $4557: $0f
	nop                                              ; $4558: $00
	rra                                              ; $4559: $1f
	add  c                                           ; $455a: $81
	rlca                                             ; $455b: $07
	nop                                              ; $455c: $00
	rrca                                             ; $455d: $0f
	add  c                                           ; $455e: $81
	inc  bc                                          ; $455f: $03
	nop                                              ; $4560: $00
	rlca                                             ; $4561: $07
	add  c                                           ; $4562: $81
	ld   bc, $0302                                   ; $4563: $01 $02 $03
	nop                                              ; $4566: $00
	ld   bc, $0087                                   ; $4567: $01 $87 $00
	inc  d                                           ; $456a: $14
	ret  nz                                          ; $456b: $c0

	nop                                              ; $456c: $00
	jr   nc, @-$3e                                   ; $456d: $30 $c0

	call z, $f2f0                                    ; $456f: $cc $f0 $f2
	db   $fc                                         ; $4572: $fc
	or   $f8                                         ; $4573: $f6 $f8
	db   $e4                                         ; $4575: $e4
	ldh  a, [$c8]                                    ; $4576: $f0 $c8
	ldh  [$90], a                                    ; $4578: $e0 $90
	ret  nz                                          ; $457a: $c0

	jr   nz, jr_01b_44fd                             ; $457b: $20 $80

	ld   b, b                                        ; $457d: $40
	nop                                              ; $457e: $00
	add  b                                           ; $457f: $80
	add  c                                           ; $4580: $81
	nop                                              ; $4581: $00
	inc  d                                           ; $4582: $14
	ret  nz                                          ; $4583: $c0

	nop                                              ; $4584: $00
	ld   [hl], b                                     ; $4585: $70
	ld   b, b                                        ; $4586: $40
	cp   h                                           ; $4587: $bc
	jr   nc, jr_01b_45c9                             ; $4588: $30 $3f

	inc  a                                           ; $458a: $3c
	ld   e, [hl]                                     ; $458b: $5e
	rra                                              ; $458c: $1f

jr_01b_458d:
	inc  e                                           ; $458d: $1c
	rra                                              ; $458e: $1f
	jr   z, jr_01b_45a0                              ; $458f: $28 $0f

	nop                                              ; $4591: $00
	rrca                                             ; $4592: $0f
	jr   jr_01b_459c                                 ; $4593: $18 $07

	ld   bc, $0b07                                   ; $4595: $01 $07 $0b
	add  c                                           ; $4598: $81
	inc  bc                                          ; $4599: $03
	nop                                              ; $459a: $00
	rlca                                             ; $459b: $07

jr_01b_459c:
	add  c                                           ; $459c: $81
	ld   bc, $0302                                   ; $459d: $01 $02 $03

jr_01b_45a0:
	nop                                              ; $45a0: $00
	ld   bc, $0087                                   ; $45a1: $01 $87 $00
	inc  d                                           ; $45a4: $14
	ret  nz                                          ; $45a5: $c0

	nop                                              ; $45a6: $00
	ld   [hl], b                                     ; $45a7: $70
	ret  nz                                          ; $45a8: $c0

	inc  c                                           ; $45a9: $0c
	ldh  a, [$72]                                    ; $45aa: $f0 $72
	db   $fc                                         ; $45ac: $fc
	cp   $f8                                         ; $45ad: $fe $f8
	db   $fc                                         ; $45af: $fc
	ldh  a, [$f8]                                    ; $45b0: $f0 $f8
	ldh  [$f0], a                                    ; $45b2: $e0 $f0
	ret  nz                                          ; $45b4: $c0

	ldh  [$80], a                                    ; $45b5: $e0 $80
	ret  nz                                          ; $45b7: $c0

	nop                                              ; $45b8: $00
	add  b                                           ; $45b9: $80
	add  c                                           ; $45ba: $81
	nop                                              ; $45bb: $00
	ld   [$00c0], sp                                 ; $45bc: $08 $c0 $00
	ld   [hl], b                                     ; $45bf: $70
	ld   b, b                                        ; $45c0: $40
	cp   h                                           ; $45c1: $bc
	jr   nc, jr_01b_4603                             ; $45c2: $30 $3f

	inc  a                                           ; $45c4: $3c
	ld   e, a                                        ; $45c5: $5f
	add  c                                           ; $45c6: $81
	rra                                              ; $45c7: $1f
	nop                                              ; $45c8: $00

jr_01b_45c9:
	cpl                                              ; $45c9: $2f
	add  c                                           ; $45ca: $81
	rrca                                             ; $45cb: $0f
	nop                                              ; $45cc: $00
	rla                                              ; $45cd: $17
	add  c                                           ; $45ce: $81
	rlca                                             ; $45cf: $07
	nop                                              ; $45d0: $00
	dec  bc                                          ; $45d1: $0b
	add  c                                           ; $45d2: $81
	inc  bc                                          ; $45d3: $03
	nop                                              ; $45d4: $00
	dec  b                                           ; $45d5: $05
	add  c                                           ; $45d6: $81
	ld   bc, $0202                                   ; $45d7: $01 $02 $02
	nop                                              ; $45da: $00
	ld   bc, $0087                                   ; $45db: $01 $87 $00
	inc  d                                           ; $45de: $14
	ret  nz                                          ; $45df: $c0

	nop                                              ; $45e0: $00
	ldh  a, [$c0]                                    ; $45e1: $f0 $c0
	db   $fc                                         ; $45e3: $fc
	ldh  a, [$fe]                                    ; $45e4: $f0 $fe
	db   $fc                                         ; $45e6: $fc
	ldh  a, [c]                                      ; $45e7: $f2
	ld   hl, sp-$14                                  ; $45e8: $f8 $ec
	ldh  a, [$d8]                                    ; $45ea: $f0 $d8
	ldh  [$b0], a                                    ; $45ec: $e0 $b0
	ret  nz                                          ; $45ee: $c0

	ld   h, b                                        ; $45ef: $60
	add  b                                           ; $45f0: $80
	ret  nz                                          ; $45f1: $c0

	nop                                              ; $45f2: $00
	add  b                                           ; $45f3: $80
	add  c                                           ; $45f4: $81
	nop                                              ; $45f5: $00
	inc  bc                                          ; $45f6: $03
	ld   a, a                                        ; $45f7: $7f
	nop                                              ; $45f8: $00
	ei                                               ; $45f9: $fb
	ld   a, e                                        ; $45fa: $7b
	add  b                                           ; $45fb: $80
	ld   h, [hl]                                     ; $45fc: $66
	ld   [$4d4c], sp                                 ; $45fd: $08 $4c $4d
	ld   e, c                                        ; $4600: $59
	ld   e, e                                        ; $4601: $5b
	inc  sp                                          ; $4602: $33

jr_01b_4603:
	scf                                              ; $4603: $37
	ld   h, a                                        ; $4604: $67
	ld   l, a                                        ; $4605: $6f
	ld   c, a                                        ; $4606: $4f
	adc  d                                           ; $4607: $8a
	ld   e, a                                        ; $4608: $5f
	nop                                              ; $4609: $00
	ld   b, b                                        ; $460a: $40
	add  b                                           ; $460b: $80
	ld   a, a                                        ; $460c: $7f
	add  d                                           ; $460d: $82
	nop                                              ; $460e: $00
	add  b                                           ; $460f: $80
	rst  $38                                         ; $4610: $ff
	add  c                                           ; $4611: $81
	nop                                              ; $4612: $00
	sub  a                                           ; $4613: $97
	rst  $38                                         ; $4614: $ff
	inc  bc                                          ; $4615: $03
	ld   a, a                                        ; $4616: $7f
	nop                                              ; $4617: $00
	ei                                               ; $4618: $fb
	ld   a, e                                        ; $4619: $7b
	add  b                                           ; $461a: $80
	ld   h, [hl]                                     ; $461b: $66
	ld   [$4d4c], sp                                 ; $461c: $08 $4c $4d
	ld   e, c                                        ; $461f: $59
	ld   e, e                                        ; $4620: $5b
	inc  sp                                          ; $4621: $33
	scf                                              ; $4622: $37
	ld   h, a                                        ; $4623: $67
	ld   l, l                                        ; $4624: $6d
	ld   c, l                                        ; $4625: $4d
	add  b                                           ; $4626: $80
	ld   e, l                                        ; $4627: $5d
	add  b                                           ; $4628: $80
	ld   d, b                                        ; $4629: $50
	add  [hl]                                        ; $462a: $86
	ld   e, l                                        ; $462b: $5d
	add  b                                           ; $462c: $80
	ld   e, h                                        ; $462d: $5c
	add  c                                           ; $462e: $81
	ld   e, a                                        ; $462f: $5f
	ld   bc, $001f                                   ; $4630: $01 $1f $00
	add  b                                           ; $4633: $80
	rst  $38                                         ; $4634: $ff
	add  c                                           ; $4635: $81
	nop                                              ; $4636: $00
	adc  b                                           ; $4637: $88
	rst  $38                                         ; $4638: $ff
	add  b                                           ; $4639: $80
	rrca                                             ; $463a: $0f
	add  b                                           ; $463b: $80
	rst  JumpTable                                         ; $463c: $df
	add  b                                           ; $463d: $80
	cp   b                                           ; $463e: $b8
	add  d                                           ; $463f: $82
	rst  $38                                         ; $4640: $ff
	add  b                                           ; $4641: $80
	rra                                              ; $4642: $1f
	add  d                                           ; $4643: $82
	rst  $38                                         ; $4644: $ff
	nop                                              ; $4645: $00
	nop                                              ; $4646: $00
	add  b                                           ; $4647: $80
	ld   a, a                                        ; $4648: $7f
	add  c                                           ; $4649: $81
	nop                                              ; $464a: $00
	add  d                                           ; $464b: $82
	rst  $38                                         ; $464c: $ff
	add  d                                           ; $464d: $82
	db   $fd                                         ; $464e: $fd
	add  b                                           ; $464f: $80
	ret  nz                                          ; $4650: $c0

	add  d                                           ; $4651: $82
	cp   $80                                         ; $4652: $fe $80
	ld   a, [hl]                                     ; $4654: $7e
	add  b                                           ; $4655: $80
	cp   $80                                         ; $4656: $fe $80
	db   $fd                                         ; $4658: $fd
	add  b                                           ; $4659: $80
	db   $e3                                         ; $465a: $e3
	add  d                                           ; $465b: $82
	rst  $38                                         ; $465c: $ff
	nop                                              ; $465d: $00
	nop                                              ; $465e: $00
	add  b                                           ; $465f: $80
	rst  $38                                         ; $4660: $ff
	add  c                                           ; $4661: $81
	nop                                              ; $4662: $00
	add  d                                           ; $4663: $82
	rst  $38                                         ; $4664: $ff
	add  b                                           ; $4665: $80
	ld   a, a                                        ; $4666: $7f
	add  b                                           ; $4667: $80
	ld   e, a                                        ; $4668: $5f
	add  [hl]                                        ; $4669: $86
	rst  JumpTable                                         ; $466a: $df
	add  d                                           ; $466b: $82
	db   $dd                                         ; $466c: $dd
	add  b                                           ; $466d: $80
	db   $e3                                         ; $466e: $e3
	add  d                                           ; $466f: $82
	rst  $38                                         ; $4670: $ff
	nop                                              ; $4671: $00
	nop                                              ; $4672: $00
	add  b                                           ; $4673: $80
	rst  $38                                         ; $4674: $ff
	add  c                                           ; $4675: $81
	nop                                              ; $4676: $00
	add  d                                           ; $4677: $82
	rst  $38                                         ; $4678: $ff
	add  b                                           ; $4679: $80
	rst  $28                                         ; $467a: $ef
	add  b                                           ; $467b: $80
	inc  bc                                          ; $467c: $03
	add  b                                           ; $467d: $80
	rst  $28                                         ; $467e: $ef
	add  b                                           ; $467f: $80
	add  e                                           ; $4680: $83
	add  d                                           ; $4681: $82
	rst  $28                                         ; $4682: $ef
	add  b                                           ; $4683: $80
	add  a                                           ; $4684: $87
	add  b                                           ; $4685: $80
	ld   l, e                                        ; $4686: $6b
	add  b                                           ; $4687: $80
	adc  l                                           ; $4688: $8d
	add  d                                           ; $4689: $82
	rst  $38                                         ; $468a: $ff
	nop                                              ; $468b: $00
	nop                                              ; $468c: $00
	add  b                                           ; $468d: $80
	rst  $38                                         ; $468e: $ff
	add  c                                           ; $468f: $81
	nop                                              ; $4690: $00
	add  d                                           ; $4691: $82
	rst  $38                                         ; $4692: $ff
	add  d                                           ; $4693: $82
	xor  $80                                         ; $4694: $ee $80
	inc  b                                           ; $4696: $04
	add  b                                           ; $4697: $80
	xor  $80                                         ; $4698: $ee $80
	adc  [hl]                                        ; $469a: $8e
	add  b                                           ; $469b: $80
	ld   l, [hl]                                     ; $469c: $6e
	add  b                                           ; $469d: $80
	adc  [hl]                                        ; $469e: $8e
	add  b                                           ; $469f: $80
	db   $ed                                         ; $46a0: $ed
	add  b                                           ; $46a1: $80
	sbc  a                                           ; $46a2: $9f
	add  d                                           ; $46a3: $82
	rst  $38                                         ; $46a4: $ff
	nop                                              ; $46a5: $00
	nop                                              ; $46a6: $00
	add  b                                           ; $46a7: $80
	rst  $38                                         ; $46a8: $ff
	add  c                                           ; $46a9: $81
	nop                                              ; $46aa: $00
	add  d                                           ; $46ab: $82
	rst  $38                                         ; $46ac: $ff
	add  b                                           ; $46ad: $80
	cp   $80                                         ; $46ae: $fe $80
	db   $dd                                         ; $46b0: $dd
	add  b                                           ; $46b1: $80
	ld   l, e                                        ; $46b2: $6b
	add  b                                           ; $46b3: $80
	xor  e                                           ; $46b4: $ab
	add  d                                           ; $46b5: $82
	xor  a                                           ; $46b6: $af
	add  d                                           ; $46b7: $82
	cp   a                                           ; $46b8: $bf
	add  b                                           ; $46b9: $80
	ld   a, a                                        ; $46ba: $7f
	add  c                                           ; $46bb: $81
	rst  $38                                         ; $46bc: $ff
	inc  bc                                          ; $46bd: $03
	cp   $00                                         ; $46be: $fe $00
	rst  $38                                         ; $46c0: $ff
	cp   $81                                         ; $46c1: $fe $81
	ld   [bc], a                                     ; $46c3: $02
	add  d                                           ; $46c4: $82
	ld   a, [$3a80]                                  ; $46c5: $fa $80 $3a
	add  b                                           ; $46c8: $80
	jp   c, $ea82                                    ; $46c9: $da $82 $ea

	add  b                                           ; $46cc: $80
	sbc  d                                           ; $46cd: $9a
	add  d                                           ; $46ce: $82
	ld   a, d                                        ; $46cf: $7a
	add  b                                           ; $46d0: $80
	ld   a, [$7a80]                                  ; $46d1: $fa $80 $7a
	add  c                                           ; $46d4: $81
	ld   a, [$f800]                                  ; $46d5: $fa $00 $f8
	add  d                                           ; $46d8: $82
	rst  $38                                         ; $46d9: $ff
	add  d                                           ; $46da: $82
	cp   l                                           ; $46db: $bd
	add  b                                           ; $46dc: $80
	and  b                                           ; $46dd: $a0
	add  d                                           ; $46de: $82
	cp   l                                           ; $46df: $bd
	add  b                                           ; $46e0: $80
	or   c                                           ; $46e1: $b1
	add  b                                           ; $46e2: $80
	xor  h                                           ; $46e3: $ac
	add  b                                           ; $46e4: $80
	pop  de                                          ; $46e5: $d1
	add  h                                           ; $46e6: $84
	rst  $38                                         ; $46e7: $ff
	nop                                              ; $46e8: $00
	nop                                              ; $46e9: $00
	add  b                                           ; $46ea: $80
	rst  $38                                         ; $46eb: $ff
	add  c                                           ; $46ec: $81
	nop                                              ; $46ed: $00
	add  h                                           ; $46ee: $84
	rst  $38                                         ; $46ef: $ff
	add  b                                           ; $46f0: $80
	cp   a                                           ; $46f1: $bf
	add  b                                           ; $46f2: $80
	cp   e                                           ; $46f3: $bb
	add  h                                           ; $46f4: $84
	cp   l                                           ; $46f5: $bd
	add  b                                           ; $46f6: $80
	xor  l                                           ; $46f7: $ad
	add  b                                           ; $46f8: $80
	rst  JumpTable                                         ; $46f9: $df
	add  h                                           ; $46fa: $84
	rst  $38                                         ; $46fb: $ff
	nop                                              ; $46fc: $00
	nop                                              ; $46fd: $00
	add  b                                           ; $46fe: $80
	rst  $38                                         ; $46ff: $ff
	add  c                                           ; $4700: $81
	nop                                              ; $4701: $00
	add  h                                           ; $4702: $84
	rst  $38                                         ; $4703: $ff
	add  b                                           ; $4704: $80
	cp   a                                           ; $4705: $bf
	add  b                                           ; $4706: $80
	cp   e                                           ; $4707: $bb
	add  h                                           ; $4708: $84
	cp   l                                           ; $4709: $bd
	add  b                                           ; $470a: $80
	xor  l                                           ; $470b: $ad
	add  b                                           ; $470c: $80
	rst  JumpTable                                         ; $470d: $df
	add  h                                           ; $470e: $84
	rst  $38                                         ; $470f: $ff
	nop                                              ; $4710: $00
	nop                                              ; $4711: $00
	add  b                                           ; $4712: $80
	cp   $81                                         ; $4713: $fe $81
	nop                                              ; $4715: $00
	add  d                                           ; $4716: $82
	rst  $38                                         ; $4717: $ff
	add  b                                           ; $4718: $80
	rst  ToBoot                                         ; $4719: $c7
	add  b                                           ; $471a: $80
	rst  $38                                         ; $471b: $ff
	add  b                                           ; $471c: $80
	add  e                                           ; $471d: $83
	add  b                                           ; $471e: $80
	rst  $30                                         ; $471f: $f7
	add  b                                           ; $4720: $80
	rst  $28                                         ; $4721: $ef
	add  b                                           ; $4722: $80
	rst  $10                                         ; $4723: $d7
	add  b                                           ; $4724: $80
	or   a                                           ; $4725: $b7
	add  b                                           ; $4726: $80
	cp   c                                           ; $4727: $b9
	add  h                                           ; $4728: $84
	rst  $38                                         ; $4729: $ff
	nop                                              ; $472a: $00
	nop                                              ; $472b: $00
	add  b                                           ; $472c: $80
	rst  $38                                         ; $472d: $ff
	add  b                                           ; $472e: $80
	nop                                              ; $472f: $00
	nop                                              ; $4730: $00
	ld   [bc], a                                     ; $4731: $02
	adc  a                                           ; $4732: $8f
	ld   a, [$fe09]                                  ; $4733: $fa $09 $fe
	or   $fc                                         ; $4736: $f6 $fc
	db   $ec                                         ; $4738: $ec
	ld   a, [$f2da]                                  ; $4739: $fa $da $f2
	or   d                                           ; $473c: $b2
	and  $66                                         ; $473d: $e6 $66
	add  b                                           ; $473f: $80
	sbc  $05                                         ; $4740: $de $05
	ld   bc, $8100                                   ; $4742: $01 $00 $81
	nop                                              ; $4745: $00
	ei                                               ; $4746: $fb
	ld   a, e                                        ; $4747: $7b
	add  b                                           ; $4748: $80
	ld   h, [hl]                                     ; $4749: $66
	ld   [$4d4c], sp                                 ; $474a: $08 $4c $4d
	ld   e, c                                        ; $474d: $59
	ld   e, e                                        ; $474e: $5b
	inc  sp                                          ; $474f: $33
	scf                                              ; $4750: $37
	ld   h, a                                        ; $4751: $67
	ld   l, a                                        ; $4752: $6f
	ld   c, a                                        ; $4753: $4f
	add  b                                           ; $4754: $80
	ld   e, h                                        ; $4755: $5c
	adc  b                                           ; $4756: $88
	ld   e, l                                        ; $4757: $5d
	add  b                                           ; $4758: $80
	ld   e, h                                        ; $4759: $5c
	add  c                                           ; $475a: $81
	ld   e, a                                        ; $475b: $5f
	ld   bc, $001f                                   ; $475c: $01 $1f $00
	add  b                                           ; $475f: $80
	rst  $38                                         ; $4760: $ff
	add  c                                           ; $4761: $81
	nop                                              ; $4762: $00
	add  [hl]                                        ; $4763: $86
	rst  $38                                         ; $4764: $ff
	add  b                                           ; $4765: $80
	rrca                                             ; $4766: $0f
	add  d                                           ; $4767: $82
	rst  $28                                         ; $4768: $ef
	add  b                                           ; $4769: $80
	add  sp, -$7e                                    ; $476a: $e8 $82
	rst  $28                                         ; $476c: $ef
	add  b                                           ; $476d: $80
	rrca                                             ; $476e: $0f
	add  d                                           ; $476f: $82
	rst  $38                                         ; $4770: $ff
	nop                                              ; $4771: $00
	nop                                              ; $4772: $00
	add  b                                           ; $4773: $80
	ld   a, a                                        ; $4774: $7f
	add  c                                           ; $4775: $81
	nop                                              ; $4776: $00
	add  d                                           ; $4777: $82
	rst  $38                                         ; $4778: $ff
	add  b                                           ; $4779: $80
	db   $fd                                         ; $477a: $fd
	add  b                                           ; $477b: $80
	db   $dd                                         ; $477c: $dd
	add  d                                           ; $477d: $82
	rst  JumpTable                                         ; $477e: $df
	add  b                                           ; $477f: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4780: $cf
	add  b                                           ; $4781: $80
	ld   d, c                                        ; $4782: $51
	add  h                                           ; $4783: $84
	rst  JumpTable                                         ; $4784: $df
	add  c                                           ; $4785: $81
	rst  $38                                         ; $4786: $ff
	inc  bc                                          ; $4787: $03
	ld   a, a                                        ; $4788: $7f
	nop                                              ; $4789: $00
	rst  $38                                         ; $478a: $ff
	ld   a, a                                        ; $478b: $7f
	add  c                                           ; $478c: $81
	ld   b, b                                        ; $478d: $40
	and  b                                           ; $478e: $a0
	ld   e, a                                        ; $478f: $5f
	add  b                                           ; $4790: $80
	ld   e, e                                        ; $4791: $5b
	add  b                                           ; $4792: $80
	ld   e, c                                        ; $4793: $59
	add  b                                           ; $4794: $80
	ld   e, b                                        ; $4795: $58
	add  b                                           ; $4796: $80
	ld   e, c                                        ; $4797: $59
	add  b                                           ; $4798: $80
	ld   e, e                                        ; $4799: $5b
	add  [hl]                                        ; $479a: $86
	ld   e, a                                        ; $479b: $5f
	nop                                              ; $479c: $00
	ld   b, b                                        ; $479d: $40
	add  b                                           ; $479e: $80
	ld   a, a                                        ; $479f: $7f
	ld   [bc], a                                     ; $47a0: $02
	add  b                                           ; $47a1: $80
	nop                                              ; $47a2: $00
	add  b                                           ; $47a3: $80
	add  [hl]                                        ; $47a4: $86
	rst  $38                                         ; $47a5: $ff
	add  b                                           ; $47a6: $80
	ei                                               ; $47a7: $fb
	add  b                                           ; $47a8: $80
	ld   sp, hl                                      ; $47a9: $f9
	add  b                                           ; $47aa: $80
	ld   hl, sp-$80                                  ; $47ab: $f8 $80
	ld   sp, hl                                      ; $47ad: $f9
	add  b                                           ; $47ae: $80
	ei                                               ; $47af: $fb
	add  [hl]                                        ; $47b0: $86
	rst  $38                                         ; $47b1: $ff
	nop                                              ; $47b2: $00
	nop                                              ; $47b3: $00
	add  b                                           ; $47b4: $80
	rst  $38                                         ; $47b5: $ff
	add  b                                           ; $47b6: $80
	nop                                              ; $47b7: $00
	inc  bc                                          ; $47b8: $03
	add  b                                           ; $47b9: $80
	nop                                              ; $47ba: $00
	ei                                               ; $47bb: $fb
	ld   a, e                                        ; $47bc: $7b
	add  b                                           ; $47bd: $80
	ld   h, [hl]                                     ; $47be: $66
	ld   [$4d4c], sp                                 ; $47bf: $08 $4c $4d
	ld   e, c                                        ; $47c2: $59
	ld   e, e                                        ; $47c3: $5b
	inc  sp                                          ; $47c4: $33
	scf                                              ; $47c5: $37
	ld   h, a                                        ; $47c6: $67
	ld   l, a                                        ; $47c7: $6f
	ld   c, a                                        ; $47c8: $4f

jr_01b_47c9:
	add  b                                           ; $47c9: $80
	ld   e, [hl]                                     ; $47ca: $5e
	add  b                                           ; $47cb: $80
	ld   e, a                                        ; $47cc: $5f
	add  b                                           ; $47cd: $80
	ld   e, [hl]                                     ; $47ce: $5e
	add  h                                           ; $47cf: $84
	ld   e, a                                        ; $47d0: $5f
	add  b                                           ; $47d1: $80
	ld   e, [hl]                                     ; $47d2: $5e
	add  c                                           ; $47d3: $81
	ld   e, a                                        ; $47d4: $5f
	ld   bc, $001f                                   ; $47d5: $01 $1f $00
	add  b                                           ; $47d8: $80
	rst  $38                                         ; $47d9: $ff
	add  c                                           ; $47da: $81
	nop                                              ; $47db: $00
	add  d                                           ; $47dc: $82
	rst  $38                                         ; $47dd: $ff
	add  d                                           ; $47de: $82
	xor  e                                           ; $47df: $ab
	add  b                                           ; $47e0: $80
	ld   b, e                                        ; $47e1: $43
	add  b                                           ; $47e2: $80
	db   $db                                         ; $47e3: $db
	add  b                                           ; $47e4: $80
	ld   b, e                                        ; $47e5: $43
	add  b                                           ; $47e6: $80
	db   $db                                         ; $47e7: $db
	add  b                                           ; $47e8: $80
	ld   b, e                                        ; $47e9: $43
	add  b                                           ; $47ea: $80
	ld   e, e                                        ; $47eb: $5b
	add  b                                           ; $47ec: $80
	db   $db                                         ; $47ed: $db
	add  d                                           ; $47ee: $82
	rst  $38                                         ; $47ef: $ff
	nop                                              ; $47f0: $00
	nop                                              ; $47f1: $00
	add  b                                           ; $47f2: $80
	ld   a, a                                        ; $47f3: $7f
	add  c                                           ; $47f4: $81
	nop                                              ; $47f5: $00
	add  d                                           ; $47f6: $82
	rst  $38                                         ; $47f7: $ff
	add  d                                           ; $47f8: $82
	rst  $28                                         ; $47f9: $ef
	add  b                                           ; $47fa: $80
	add  e                                           ; $47fb: $83
	add  b                                           ; $47fc: $80
	rst  $28                                         ; $47fd: $ef
	add  b                                           ; $47fe: $80
	ld   bc, $ef80                                   ; $47ff: $01 $80 $ef
	add  b                                           ; $4802: $80
	db   $db                                         ; $4803: $db
	add  b                                           ; $4804: $80
	add  c                                           ; $4805: $81
	add  b                                           ; $4806: $80
	cp   l                                           ; $4807: $bd
	add  d                                           ; $4808: $82
	rst  $38                                         ; $4809: $ff
	nop                                              ; $480a: $00
	nop                                              ; $480b: $00
	add  b                                           ; $480c: $80
	rst  $38                                         ; $480d: $ff
	add  c                                           ; $480e: $81
	nop                                              ; $480f: $00
	add  h                                           ; $4810: $84
	rst  $38                                         ; $4811: $ff
	adc  b                                           ; $4812: $88
	rst  JumpTable                                         ; $4813: $df
	add  d                                           ; $4814: $82
	db   $dd                                         ; $4815: $dd
	add  b                                           ; $4816: $80
	db   $e3                                         ; $4817: $e3
	add  c                                           ; $4818: $81
	rst  $38                                         ; $4819: $ff
	inc  bc                                          ; $481a: $03
	ld   a, a                                        ; $481b: $7f
	nop                                              ; $481c: $00
	ei                                               ; $481d: $fb
	ld   a, e                                        ; $481e: $7b
	add  b                                           ; $481f: $80
	ld   h, [hl]                                     ; $4820: $66
	ld   [$4d4c], sp                                 ; $4821: $08 $4c $4d
	ld   e, c                                        ; $4824: $59
	ld   e, e                                        ; $4825: $5b
	inc  sp                                          ; $4826: $33
	scf                                              ; $4827: $37
	ld   h, a                                        ; $4828: $67
	ld   l, a                                        ; $4829: $6f
	ld   c, a                                        ; $482a: $4f
	add  b                                           ; $482b: $80
	ld   e, b                                        ; $482c: $58
	adc  b                                           ; $482d: $88
	ld   e, a                                        ; $482e: $5f
	add  b                                           ; $482f: $80
	ld   e, b                                        ; $4830: $58
	add  c                                           ; $4831: $81
	ld   e, a                                        ; $4832: $5f
	ld   bc, $001f                                   ; $4833: $01 $1f $00
	add  b                                           ; $4836: $80
	rst  $38                                         ; $4837: $ff
	add  c                                           ; $4838: $81
	nop                                              ; $4839: $00
	add  h                                           ; $483a: $84
	rst  $38                                         ; $483b: $ff
	add  b                                           ; $483c: $80
	rst  $30                                         ; $483d: $f7
	add  b                                           ; $483e: $80
	rla                                              ; $483f: $17
	add  b                                           ; $4840: $80
	ret  nc                                          ; $4841: $d0

	add  [hl]                                        ; $4842: $86
	rst  $10                                         ; $4843: $d7
	add  b                                           ; $4844: $80
	jr   jr_01b_47c9                                 ; $4845: $18 $82

	rst  $38                                         ; $4847: $ff
	nop                                              ; $4848: $00
	nop                                              ; $4849: $00
	add  b                                           ; $484a: $80
	ld   a, a                                        ; $484b: $7f
	add  c                                           ; $484c: $81
	nop                                              ; $484d: $00
	add  d                                           ; $484e: $82
	rst  $38                                         ; $484f: $ff
	add  b                                           ; $4850: $80
	rst  JumpTable                                         ; $4851: $df
	add  b                                           ; $4852: $80
	xor  a                                           ; $4853: $af
	add  b                                           ; $4854: $80
	sbc  a                                           ; $4855: $9f
	add  b                                           ; $4856: $80
	ccf                                              ; $4857: $3f
	add  b                                           ; $4858: $80
	rst  $38                                         ; $4859: $ff
	add  b                                           ; $485a: $80
	ldh  a, [$82]                                    ; $485b: $f0 $82
	rst  $38                                         ; $485d: $ff
	add  b                                           ; $485e: $80
	ccf                                              ; $485f: $3f
	add  d                                           ; $4860: $82
	rst  $38                                         ; $4861: $ff
	nop                                              ; $4862: $00
	nop                                              ; $4863: $00
	add  b                                           ; $4864: $80
	rst  $38                                         ; $4865: $ff
	add  c                                           ; $4866: $81
	nop                                              ; $4867: $00
	add  b                                           ; $4868: $80
	rst  $28                                         ; $4869: $ef
	add  b                                           ; $486a: $80
	ld   bc, $7d80                                   ; $486b: $01 $80 $7d
	add  b                                           ; $486e: $80
	add  e                                           ; $486f: $83
	add  b                                           ; $4870: $80
	rst  $38                                         ; $4871: $ff
	add  b                                           ; $4872: $80
	ld   bc, $d780                                   ; $4873: $01 $80 $d7
	add  b                                           ; $4876: $80
	push de                                          ; $4877: $d5
	add  b                                           ; $4878: $80
	ld   sp, $ff80                                   ; $4879: $31 $80 $ff
	nop                                              ; $487c: $00
	nop                                              ; $487d: $00
	add  b                                           ; $487e: $80
	rst  $38                                         ; $487f: $ff
	add  d                                           ; $4880: $82
	nop                                              ; $4881: $00
	add  b                                           ; $4882: $80
	rst  $38                                         ; $4883: $ff
	add  c                                           ; $4884: $81
	nop                                              ; $4885: $00
	add  b                                           ; $4886: $80
	rst  $38                                         ; $4887: $ff
	add  b                                           ; $4888: $80
	add  b                                           ; $4889: $80
	add  b                                           ; $488a: $80
	cp   $80                                         ; $488b: $fe $80
	ld   sp, hl                                      ; $488d: $f9
	add  h                                           ; $488e: $84
	rst  $30                                         ; $488f: $f7
	add  b                                           ; $4890: $80
	rst  $10                                         ; $4891: $d7
	add  b                                           ; $4892: $80
	rst  $28                                         ; $4893: $ef
	add  b                                           ; $4894: $80
	rst  $38                                         ; $4895: $ff
	nop                                              ; $4896: $00
	nop                                              ; $4897: $00
	add  b                                           ; $4898: $80
	rst  $38                                         ; $4899: $ff
	add  d                                           ; $489a: $82
	nop                                              ; $489b: $00
	add  b                                           ; $489c: $80
	rst  $38                                         ; $489d: $ff
	add  c                                           ; $489e: $81
	nop                                              ; $489f: $00
	add  b                                           ; $48a0: $80
	rst  $38                                         ; $48a1: $ff
	adc  b                                           ; $48a2: $88
	rst  JumpTable                                         ; $48a3: $df
	add  d                                           ; $48a4: $82
	db   $dd                                         ; $48a5: $dd
	add  b                                           ; $48a6: $80
	db   $e3                                         ; $48a7: $e3
	add  b                                           ; $48a8: $80
	rst  $38                                         ; $48a9: $ff
	nop                                              ; $48aa: $00
	nop                                              ; $48ab: $00
	add  b                                           ; $48ac: $80
	rst  $38                                         ; $48ad: $ff
	add  d                                           ; $48ae: $82
	nop                                              ; $48af: $00
	add  b                                           ; $48b0: $80
	rst  $38                                         ; $48b1: $ff
	add  c                                           ; $48b2: $81
	nop                                              ; $48b3: $00
	add  b                                           ; $48b4: $80
	rst  $30                                         ; $48b5: $f7
	add  b                                           ; $48b6: $80
	add  c                                           ; $48b7: $81
	add  b                                           ; $48b8: $80
	rst  $30                                         ; $48b9: $f7
	add  b                                           ; $48ba: $80
	pop  bc                                          ; $48bb: $c1
	add  d                                           ; $48bc: $82
	rst  $30                                         ; $48bd: $f7
	add  b                                           ; $48be: $80
	jp   $b580                                       ; $48bf: $c3 $80 $b5


	add  b                                           ; $48c2: $80
	add  $80                                         ; $48c3: $c6 $80
	rst  $38                                         ; $48c5: $ff
	nop                                              ; $48c6: $00
	nop                                              ; $48c7: $00
	add  b                                           ; $48c8: $80
	rst  $38                                         ; $48c9: $ff
	add  d                                           ; $48ca: $82
	nop                                              ; $48cb: $00
	add  b                                           ; $48cc: $80
	rst  $38                                         ; $48cd: $ff
	add  c                                           ; $48ce: $81
	nop                                              ; $48cf: $00
	add  b                                           ; $48d0: $80
	rst  $38                                         ; $48d1: $ff
	adc  b                                           ; $48d2: $88
	rst  JumpTable                                         ; $48d3: $df
	add  d                                           ; $48d4: $82
	db   $dd                                         ; $48d5: $dd
	add  b                                           ; $48d6: $80
	db   $e3                                         ; $48d7: $e3
	add  b                                           ; $48d8: $80
	rst  $38                                         ; $48d9: $ff
	nop                                              ; $48da: $00
	nop                                              ; $48db: $00
	add  b                                           ; $48dc: $80
	rst  $38                                         ; $48dd: $ff
	add  d                                           ; $48de: $82
	nop                                              ; $48df: $00
	add  b                                           ; $48e0: $80
	rst  $38                                         ; $48e1: $ff
	add  c                                           ; $48e2: $81
	nop                                              ; $48e3: $00
	add  d                                           ; $48e4: $82
	cp   a                                           ; $48e5: $bf
	add  b                                           ; $48e6: $80
	rrca                                             ; $48e7: $0f
	add  b                                           ; $48e8: $80
	cp   a                                           ; $48e9: $bf
	add  b                                           ; $48ea: $80
	and  c                                           ; $48eb: $a1
	add  b                                           ; $48ec: $80
	cp   l                                           ; $48ed: $bd
	add  b                                           ; $48ee: $80
	cp   a                                           ; $48ef: $bf
	add  b                                           ; $48f0: $80
	xor  a                                           ; $48f1: $af
	add  b                                           ; $48f2: $80
	or   c                                           ; $48f3: $b1
	add  b                                           ; $48f4: $80
	rst  $38                                         ; $48f5: $ff
	nop                                              ; $48f6: $00
	nop                                              ; $48f7: $00
	add  b                                           ; $48f8: $80
	rst  $38                                         ; $48f9: $ff
	add  d                                           ; $48fa: $82
	nop                                              ; $48fb: $00
	add  b                                           ; $48fc: $80
	rst  $38                                         ; $48fd: $ff
	add  c                                           ; $48fe: $81
	nop                                              ; $48ff: $00
	add  d                                           ; $4900: $82
	rst  $38                                         ; $4901: $ff
	add  d                                           ; $4902: $82
	rst  JumpTable                                         ; $4903: $df
	add  b                                           ; $4904: $80
	nop                                              ; $4905: $00
	add  b                                           ; $4906: $80
	db   $dd                                         ; $4907: $dd
	add  b                                           ; $4908: $80
	db   $db                                         ; $4909: $db
	add  d                                           ; $490a: $82
	rst  JumpTable                                         ; $490b: $df
	add  b                                           ; $490c: $80
	pop  bc                                          ; $490d: $c1
	add  h                                           ; $490e: $84
	rst  $38                                         ; $490f: $ff
	nop                                              ; $4910: $00
	nop                                              ; $4911: $00
	add  b                                           ; $4912: $80
	ld   a, a                                        ; $4913: $7f
	add  c                                           ; $4914: $81
	nop                                              ; $4915: $00
	adc  d                                           ; $4916: $8a
	rst  $38                                         ; $4917: $ff
	add  b                                           ; $4918: $80
	pop  bc                                          ; $4919: $c1
	adc  d                                           ; $491a: $8a
	rst  $38                                         ; $491b: $ff
	nop                                              ; $491c: $00
	nop                                              ; $491d: $00
	add  b                                           ; $491e: $80
	rst  $38                                         ; $491f: $ff
	add  c                                           ; $4920: $81
	nop                                              ; $4921: $00
	add  b                                           ; $4922: $80
	rst  $38                                         ; $4923: $ff
	add  d                                           ; $4924: $82
	ld   a, [$8180]                                  ; $4925: $fa $80 $81
	add  [hl]                                        ; $4928: $86
	db   $fd                                         ; $4929: $fd
	add  b                                           ; $492a: $80
	ei                                               ; $492b: $fb
	add  b                                           ; $492c: $80
	rst  ToBoot                                         ; $492d: $c7
	add  h                                           ; $492e: $84
	rst  $38                                         ; $492f: $ff
	nop                                              ; $4930: $00
	nop                                              ; $4931: $00
	add  b                                           ; $4932: $80
	rst  $38                                         ; $4933: $ff
	add  c                                           ; $4934: $81
	nop                                              ; $4935: $00
	add  b                                           ; $4936: $80
	rst  $38                                         ; $4937: $ff
	add  d                                           ; $4938: $82
	ld   a, [$8180]                                  ; $4939: $fa $80 $81
	add  b                                           ; $493c: $80
	rst  $38                                         ; $493d: $ff
	add  b                                           ; $493e: $80
	add  c                                           ; $493f: $81
	add  h                                           ; $4940: $84
	rst  $30                                         ; $4941: $f7
	add  b                                           ; $4942: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4943: $cf
	add  h                                           ; $4944: $84
	rst  $38                                         ; $4945: $ff
	nop                                              ; $4946: $00
	nop                                              ; $4947: $00
	add  b                                           ; $4948: $80
	rst  $38                                         ; $4949: $ff
	add  c                                           ; $494a: $81
	nop                                              ; $494b: $00
	adc  d                                           ; $494c: $8a
	rst  $38                                         ; $494d: $ff
	add  b                                           ; $494e: $80
	pop  bc                                          ; $494f: $c1
	adc  d                                           ; $4950: $8a
	rst  $38                                         ; $4951: $ff
	nop                                              ; $4952: $00
	nop                                              ; $4953: $00
	add  b                                           ; $4954: $80
	rst  $38                                         ; $4955: $ff
	add  c                                           ; $4956: $81
	nop                                              ; $4957: $00
	add  d                                           ; $4958: $82
	rst  $38                                         ; $4959: $ff
	add  b                                           ; $495a: $80
	rst  JumpTable                                         ; $495b: $df
	add  b                                           ; $495c: $80
	pop  bc                                          ; $495d: $c1
	add  b                                           ; $495e: $80
	db   $dd                                         ; $495f: $dd
	add  b                                           ; $4960: $80
	call $b180                                       ; $4961: $cd $80 $b1
	add  b                                           ; $4964: $80
	db   $fd                                         ; $4965: $fd
	add  b                                           ; $4966: $80
	ei                                               ; $4967: $fb
	add  b                                           ; $4968: $80
	rst  $20                                         ; $4969: $e7
	add  h                                           ; $496a: $84
	rst  $38                                         ; $496b: $ff
	add  b                                           ; $496c: $80
	db   $fd                                         ; $496d: $fd
	add  b                                           ; $496e: $80
	cp   l                                           ; $496f: $bd
	add  b                                           ; $4970: $80
	cp   e                                           ; $4971: $bb
	add  b                                           ; $4972: $80
	dec  c                                           ; $4973: $0d
	add  h                                           ; $4974: $84
	or   l                                           ; $4975: $b5
	add  b                                           ; $4976: $80
	or   a                                           ; $4977: $b7
	add  b                                           ; $4978: $80
	ld   [hl], a                                     ; $4979: $77
	add  b                                           ; $497a: $80
	rst  $28                                         ; $497b: $ef
	add  h                                           ; $497c: $84
	rst  $38                                         ; $497d: $ff
	nop                                              ; $497e: $00
	nop                                              ; $497f: $00
	add  b                                           ; $4980: $80
	rst  $38                                         ; $4981: $ff
	add  c                                           ; $4982: $81
	nop                                              ; $4983: $00
	add  b                                           ; $4984: $80
	ld   a, a                                        ; $4985: $7f
	add  b                                           ; $4986: $80
	ld   [hl], a                                     ; $4987: $77
	add  b                                           ; $4988: $80
	ret  nz                                          ; $4989: $c0

	add  b                                           ; $498a: $80
	rst  $30                                         ; $498b: $f7
	add  b                                           ; $498c: $80
	push af                                          ; $498d: $f5
	add  b                                           ; $498e: $80
	ldh  [$82], a                                    ; $498f: $e0 $82
	push de                                          ; $4991: $d5
	add  b                                           ; $4992: $80
	db   $d3                                         ; $4993: $d3
	add  b                                           ; $4994: $80
	ld   [$ff84], a                                  ; $4995: $ea $84 $ff
	nop                                              ; $4998: $00
	nop                                              ; $4999: $00
	add  b                                           ; $499a: $80
	rst  $38                                         ; $499b: $ff
	add  c                                           ; $499c: $81
	nop                                              ; $499d: $00
	add  b                                           ; $499e: $80
	rst  $38                                         ; $499f: $ff
	add  [hl]                                        ; $49a0: $86
	xor  $80                                         ; $49a1: $ee $80
	and  $82                                         ; $49a3: $e6 $82
	ld   a, [hl]                                     ; $49a5: $7e
	add  b                                           ; $49a6: $80
	ld   a, l                                        ; $49a7: $7d
	add  b                                           ; $49a8: $80
	ei                                               ; $49a9: $fb
	add  h                                           ; $49aa: $84
	rst  $38                                         ; $49ab: $ff
	nop                                              ; $49ac: $00
	nop                                              ; $49ad: $00
	add  b                                           ; $49ae: $80
	rst  $38                                         ; $49af: $ff
	add  c                                           ; $49b0: $81
	nop                                              ; $49b1: $00
	add  b                                           ; $49b2: $80
	rst  $38                                         ; $49b3: $ff
	add  b                                           ; $49b4: $80
	rst  $30                                         ; $49b5: $f7
	add  b                                           ; $49b6: $80
	add  c                                           ; $49b7: $81
	add  b                                           ; $49b8: $80
	rst  $30                                         ; $49b9: $f7
	add  b                                           ; $49ba: $80
	pop  bc                                          ; $49bb: $c1
	add  d                                           ; $49bc: $82
	rst  $30                                         ; $49bd: $f7
	add  b                                           ; $49be: $80
	jp   $b580                                       ; $49bf: $c3 $80 $b5


	add  b                                           ; $49c2: $80
	add  $84                                         ; $49c3: $c6 $84
	rst  $38                                         ; $49c5: $ff
	nop                                              ; $49c6: $00
	nop                                              ; $49c7: $00
	add  b                                           ; $49c8: $80
	rst  $38                                         ; $49c9: $ff
	add  c                                           ; $49ca: $81
	nop                                              ; $49cb: $00
	add  b                                           ; $49cc: $80
	rst  $38                                         ; $49cd: $ff
	add  d                                           ; $49ce: $82
	db   $dd                                         ; $49cf: $dd
	add  b                                           ; $49d0: $80
	add  b                                           ; $49d1: $80
	add  d                                           ; $49d2: $82
	db   $dd                                         ; $49d3: $dd
	add  b                                           ; $49d4: $80
	reti                                             ; $49d5: $d9


	add  d                                           ; $49d6: $82
	rst  JumpTable                                         ; $49d7: $df
	add  b                                           ; $49d8: $80
	pop  hl                                          ; $49d9: $e1
	add  h                                           ; $49da: $84
	rst  $38                                         ; $49db: $ff
	nop                                              ; $49dc: $00
	nop                                              ; $49dd: $00
	add  b                                           ; $49de: $80
	cp   $81                                         ; $49df: $fe $81
	nop                                              ; $49e1: $00
	add  b                                           ; $49e2: $80
	rst  $38                                         ; $49e3: $ff
	add  d                                           ; $49e4: $82
	rst  $30                                         ; $49e5: $f7
	add  b                                           ; $49e6: $80
	ld   [hl], a                                     ; $49e7: $77
	add  d                                           ; $49e8: $82
	rst  $28                                         ; $49e9: $ef
	add  b                                           ; $49ea: $80
	rst  ToBoot                                         ; $49eb: $c7
	add  b                                           ; $49ec: $80
	db   $db                                         ; $49ed: $db
	add  b                                           ; $49ee: $80
	cp   e                                           ; $49ef: $bb
	add  b                                           ; $49f0: $80
	cp   h                                           ; $49f1: $bc
	add  h                                           ; $49f2: $84
	rst  $38                                         ; $49f3: $ff
	nop                                              ; $49f4: $00
	nop                                              ; $49f5: $00
	add  b                                           ; $49f6: $80
	rst  $38                                         ; $49f7: $ff
	add  b                                           ; $49f8: $80
	nop                                              ; $49f9: $00
	inc  bc                                          ; $49fa: $03
	add  b                                           ; $49fb: $80
	nop                                              ; $49fc: $00
	ei                                               ; $49fd: $fb
	ld   a, e                                        ; $49fe: $7b
	add  b                                           ; $49ff: $80
	ld   h, [hl]                                     ; $4a00: $66
	ld   [$4d4c], sp                                 ; $4a01: $08 $4c $4d
	ld   e, c                                        ; $4a04: $59
	ld   e, e                                        ; $4a05: $5b
	inc  sp                                          ; $4a06: $33
	scf                                              ; $4a07: $37
	ld   h, a                                        ; $4a08: $67
	ld   l, a                                        ; $4a09: $6f
	ld   c, a                                        ; $4a0a: $4f
	adc  a                                           ; $4a0b: $8f
	ld   e, a                                        ; $4a0c: $5f
	nop                                              ; $4a0d: $00

jr_01b_4a0e:
	ldh  [rIE], a                                    ; $4a0e: $e0 $ff
	nop                                              ; $4a10: $00
	rst  $38                                         ; $4a11: $ff
	nop                                              ; $4a12: $00
	sbc  e                                           ; $4a13: $9b
	nop                                              ; $4a14: $00
	ld   [hl], e                                     ; $4a15: $73
	ld   bc, $0090                                   ; $4a16: $01 $90 $00
	ld   [bc], a                                     ; $4a19: $02
	inc  b                                           ; $4a1a: $04
	nop                                              ; $4a1b: $00
	rlca                                             ; $4a1c: $07
	add  b                                           ; $4a1d: $80
	nop                                              ; $4a1e: $00
	rrca                                             ; $4a1f: $0f
	ld   bc, $030d                                   ; $4a20: $01 $0d $03
	dec  bc                                          ; $4a23: $0b
	inc  bc                                          ; $4a24: $03
	ld   [bc], a                                     ; $4a25: $02
	inc  bc                                          ; $4a26: $03
	ld   a, [bc]                                     ; $4a27: $0a
	rlca                                             ; $4a28: $07
	rrca                                             ; $4a29: $0f
	ld   [bc], a                                     ; $4a2a: $02
	inc  bc                                          ; $4a2b: $03
	nop                                              ; $4a2c: $00
	ld   c, $00                                      ; $4a2d: $0e $00
	ld   [$00a3], sp                                 ; $4a2f: $08 $a3 $00
	nop                                              ; $4a32: $00
	add  b                                           ; $4a33: $80
	add  l                                           ; $4a34: $85
	nop                                              ; $4a35: $00
	inc  c                                           ; $4a36: $0c
	ld   b, h                                        ; $4a37: $44
	add  b                                           ; $4a38: $80
	cp   h                                           ; $4a39: $bc
	ret  nz                                          ; $4a3a: $c0

	ret  z                                           ; $4a3b: $c8

	ldh  [rSVBK], a                                  ; $4a3c: $e0 $70
	ret  nz                                          ; $4a3e: $c0

	ret  nc                                          ; $4a3f: $d0

	ldh  [$6c], a                                    ; $4a40: $e0 $6c
	ldh  [$fc], a                                    ; $4a42: $e0 $fc
	add  b                                           ; $4a44: $80
	ret  nz                                          ; $4a45: $c0

	ld   bc, $e040                                   ; $4a46: $01 $40 $e0
	add  e                                           ; $4a49: $83
	nop                                              ; $4a4a: $00
	nop                                              ; $4a4b: $00
	ld   b, b                                        ; $4a4c: $40
	sub  a                                           ; $4a4d: $97
	nop                                              ; $4a4e: $00
	ld   c, $08                                      ; $4a4f: $0e $08
	nop                                              ; $4a51: $00
	ld   [$4000], sp                                 ; $4a52: $08 $00 $40
	nop                                              ; $4a55: $00
	ld   h, b                                        ; $4a56: $60
	nop                                              ; $4a57: $00
	jr   z, jr_01b_4a5a                              ; $4a58: $28 $00

jr_01b_4a5a:
	inc  c                                           ; $4a5a: $0c
	nop                                              ; $4a5b: $00
	ld   b, e                                        ; $4a5c: $43
	nop                                              ; $4a5d: $00
	ld   b, b                                        ; $4a5e: $40
	add  b                                           ; $4a5f: $80
	ld   [bc], a                                     ; $4a60: $02
	dec  c                                           ; $4a61: $0d
	inc  bc                                          ; $4a62: $03
	dec  de                                          ; $4a63: $1b
	rlca                                             ; $4a64: $07
	ld   h, [hl]                                     ; $4a65: $66
	ld   e, $7e                                      ; $4a66: $1e $7e
	ld   b, $14                                      ; $4a68: $06 $14
	ld   b, $14                                      ; $4a6a: $06 $14
	inc  bc                                          ; $4a6c: $03
	ld   a, [hl-]                                    ; $4a6d: $3a
	inc  bc                                          ; $4a6e: $03
	inc  hl                                          ; $4a6f: $23
	add  c                                           ; $4a70: $81
	ld   bc, $0f00                                   ; $4a71: $01 $00 $0f
	add  c                                           ; $4a74: $81
	nop                                              ; $4a75: $00
	nop                                              ; $4a76: $00
	add  hl, de                                      ; $4a77: $19
	add  c                                           ; $4a78: $81
	nop                                              ; $4a79: $00
	ld   [bc], a                                     ; $4a7a: $02
	jr   nc, jr_01b_4a7d                             ; $4a7b: $30 $00

jr_01b_4a7d:
	jr   nz, jr_01b_4a0e                             ; $4a7d: $20 $8f

	nop                                              ; $4a7f: $00
	ld   b, $80                                      ; $4a80: $06 $80
	nop                                              ; $4a82: $00
	ld   [hl+], a                                    ; $4a83: $22
	nop                                              ; $4a84: $00
	ld   [hl+], a                                    ; $4a85: $22
	nop                                              ; $4a86: $00
	ld   [$0081], sp                                 ; $4a87: $08 $81 $00
	jr   nz, jr_01b_4aa4                             ; $4a8a: $20 $18

	nop                                              ; $4a8c: $00
	jr   nz, jr_01b_4a8f                             ; $4a8d: $20 $00

jr_01b_4a8f:
	ld   b, b                                        ; $4a8f: $40
	and  b                                           ; $4a90: $a0
	and  d                                           ; $4a91: $a2
	ldh  [$ee], a                                    ; $4a92: $e0 $ee
	ldh  [hScriptOpcodeParams+4], a                                    ; $4a94: $e0 $a4
	ldh  a, [$57]                                    ; $4a96: $f0 $57
	jr   nc, @+$35                                   ; $4a98: $30 $33

	jr   c, @+$3e                                    ; $4a9a: $38 $3c

	jr   nc, jr_01b_4ab2                             ; $4a9c: $30 $14

jr_01b_4a9e:
	ld   hl, sp+$38                                  ; $4a9e: $f8 $38
	ldh  [$ee], a                                    ; $4aa0: $e0 $ee
	and  b                                           ; $4aa2: $a0
	db   $e3                                         ; $4aa3: $e3

jr_01b_4aa4:
	nop                                              ; $4aa4: $00
	add  c                                           ; $4aa5: $81
	nop                                              ; $4aa6: $00
	jr   nz, jr_01b_4aa9                             ; $4aa7: $20 $00

jr_01b_4aa9:
	inc  b                                           ; $4aa9: $04
	nop                                              ; $4aaa: $00
	inc  b                                           ; $4aab: $04
	add  c                                           ; $4aac: $81
	nop                                              ; $4aad: $00
	nop                                              ; $4aae: $00
	db   $10                                         ; $4aaf: $10
	sub  l                                           ; $4ab0: $95
	nop                                              ; $4ab1: $00

jr_01b_4ab2:
	nop                                              ; $4ab2: $00
	ld   bc, $0085                                   ; $4ab3: $01 $85 $00
	ld   a, [bc]                                     ; $4ab6: $0a
	inc  bc                                          ; $4ab7: $03
	ld   bc, $013d                                   ; $4ab8: $01 $3d $01
	ld   [hl+], a                                    ; $4abb: $22
	inc  bc                                          ; $4abc: $03
	dec  d                                           ; $4abd: $15
	rlca                                             ; $4abe: $07
	dec  b                                           ; $4abf: $05

jr_01b_4ac0:
	rlca                                             ; $4ac0: $07
	dec  bc                                          ; $4ac1: $0b
	add  c                                           ; $4ac2: $81
	inc  bc                                          ; $4ac3: $03
	ld   a, [bc]                                     ; $4ac4: $0a
	ld   [$1101], sp                                 ; $4ac5: $08 $01 $11
	ld   bc, $002c                                   ; $4ac8: $01 $2c $00
	ld   sp, $0600                                   ; $4acb: $31 $00 $06
	nop                                              ; $4ace: $00
	inc  b                                           ; $4acf: $04
	and  e                                           ; $4ad0: $a3
	nop                                              ; $4ad1: $00
	ld   a, [de]                                     ; $4ad2: $1a
	adc  b                                           ; $4ad3: $88
	nop                                              ; $4ad4: $00
	stop                                             ; $4ad5: $10 $00
	ldh  [$80], a                                    ; $4ad7: $e0 $80
	ld   [hl], b                                     ; $4ad9: $70

jr_01b_4ada:
	ldh  a, [$96]                                    ; $4ada: $f0 $96
	ldh  a, [$fa]                                    ; $4adc: $f0 $fa
	ld   hl, sp-$3c                                  ; $4ade: $f8 $c4
	ldh  [$f6], a                                    ; $4ae0: $e0 $f6
	ldh  a, [rAUD4POLY]                              ; $4ae2: $f0 $22
	ldh  [$34], a                                    ; $4ae4: $e0 $34
	jr   nc, jr_01b_4aec                             ; $4ae6: $30 $04

	nop                                              ; $4ae8: $00
	call z, $2000                                    ; $4ae9: $cc $00 $20

jr_01b_4aec:
	nop                                              ; $4aec: $00
	db   $10                                         ; $4aed: $10
	sub  a                                           ; $4aee: $97
	nop                                              ; $4aef: $00
	nop                                              ; $4af0: $00
	ld   bc, $0083                                   ; $4af1: $01 $83 $00
	nop                                              ; $4af4: $00
	inc  bc                                          ; $4af5: $03
	add  c                                           ; $4af6: $81
	ld   bc, $0708                                   ; $4af7: $01 $08 $07
	inc  bc                                          ; $4afa: $03
	jp   z, $f503                                    ; $4afb: $ca $03 $f5

	rlca                                             ; $4afe: $07
	dec  hl                                          ; $4aff: $2b
	rrca                                             ; $4b00: $0f
	ld   [bc], a                                     ; $4b01: $02
	add  l                                           ; $4b02: $85
	ld   b, $0e                                      ; $4b03: $06 $0e
	cpl                                              ; $4b05: $2f
	rrca                                             ; $4b06: $0f
	daa                                              ; $4b07: $27
	rlca                                             ; $4b08: $07
	cpl                                              ; $4b09: $2f
	rrca                                             ; $4b0a: $0f
	ld   b, $07                                      ; $4b0b: $06 $07
	ld   [hl], h                                     ; $4b0d: $74
	ld   b, $45                                      ; $4b0e: $06 $45
	inc  b                                           ; $4b10: $04
	ld   [bc], a                                     ; $4b11: $02
	nop                                              ; $4b12: $00
	inc  b                                           ; $4b13: $04
	add  c                                           ; $4b14: $81
	nop                                              ; $4b15: $00
	ld   [bc], a                                     ; $4b16: $02
	jr   jr_01b_4b19                                 ; $4b17: $18 $00

jr_01b_4b19:
	db   $10                                         ; $4b19: $10
	sub  e                                           ; $4b1a: $93
	nop                                              ; $4b1b: $00
	jr   jr_01b_4a9e                                 ; $4b1c: $18 $80

	nop                                              ; $4b1e: $00
	ld   [bc], a                                     ; $4b1f: $02
	nop                                              ; $4b20: $00
	ld   b, h                                        ; $4b21: $44
	nop                                              ; $4b22: $00
	ld   a, [$34c0]                                  ; $4b23: $fa $c0 $34
	ldh  a, [$d0]                                    ; $4b26: $f0 $d0
	ldh  a, [rPCM12]                                 ; $4b28: $f0 $76
	ld   [hl], b                                     ; $4b2a: $70
	ld   a, [hl+]                                    ; $4b2b: $2a
	jr   c, jr_01b_4b4e                              ; $4b2c: $38 $20

	jr   nc, @+$2a                                   ; $4b2e: $30 $28

	jr   c, jr_01b_4b68                              ; $4b30: $38 $36

	inc  a                                           ; $4b32: $3c
	ld   [hl], c                                     ; $4b33: $71
	ld   a, b                                        ; $4b34: $78
	ei                                               ; $4b35: $fb
	add  c                                           ; $4b36: $81
	ld   hl, sp+$0a                                  ; $4b37: $f8 $0a
	db   $10                                         ; $4b39: $10
	ldh  [$2e], a                                    ; $4b3a: $e0 $2e
	jr   nz, jr_01b_4ac0                             ; $4b3c: $20 $82

	nop                                              ; $4b3e: $00
	ld   b, b                                        ; $4b3f: $40
	nop                                              ; $4b40: $00
	jr   nz, jr_01b_4b43                             ; $4b41: $20 $00

jr_01b_4b43:
	db   $10                                         ; $4b43: $10

jr_01b_4b44:
	sub  e                                           ; $4b44: $93
	nop                                              ; $4b45: $00

jr_01b_4b46:
	inc  c                                           ; $4b46: $0c
	ld   bc, $2000                                   ; $4b47: $01 $00 $20
	nop                                              ; $4b4a: $00
	ld   [hl], $00                                   ; $4b4b: $36 $00
	add  hl, bc                                      ; $4b4d: $09

jr_01b_4b4e:
	nop                                              ; $4b4e: $00
	ld   b, $00                                      ; $4b4f: $06 $00
	ld   h, b                                        ; $4b51: $60
	nop                                              ; $4b52: $00
	ld   l, b                                        ; $4b53: $68
	add  c                                           ; $4b54: $81
	nop                                              ; $4b55: $00
	nop                                              ; $4b56: $00
	jr   nc, jr_01b_4ada                             ; $4b57: $30 $81

	nop                                              ; $4b59: $00
	ld   a, [bc]                                     ; $4b5a: $0a
	jr   nz, jr_01b_4b5d                             ; $4b5b: $20 $00

jr_01b_4b5d:
	jr   nz, jr_01b_4b5f                             ; $4b5d: $20 $00

jr_01b_4b5f:
	ld   b, b                                        ; $4b5f: $40
	nop                                              ; $4b60: $00
	add  b                                           ; $4b61: $80
	nop                                              ; $4b62: $00
	ret  nz                                          ; $4b63: $c0

	nop                                              ; $4b64: $00
	db   $10                                         ; $4b65: $10
	add  e                                           ; $4b66: $83
	nop                                              ; $4b67: $00

jr_01b_4b68:
	ld   a, [bc]                                     ; $4b68: $0a
	ld   c, b                                        ; $4b69: $48
	nop                                              ; $4b6a: $00
	halt                                             ; $4b6b: $76
	nop                                              ; $4b6c: $00
	ld   bc, $0700                                   ; $4b6d: $01 $00 $07
	nop                                              ; $4b70: $00
	jr   jr_01b_4b73                                 ; $4b71: $18 $00

jr_01b_4b73:
	db   $10                                         ; $4b73: $10
	adc  a                                           ; $4b74: $8f
	nop                                              ; $4b75: $00
	ld   a, [bc]                                     ; $4b76: $0a
	ld   [$f000], sp                                 ; $4b77: $08 $00 $f0
	nop                                              ; $4b7a: $00
	ret  nz                                          ; $4b7b: $c0

	nop                                              ; $4b7c: $00
	ld   h, $00                                      ; $4b7d: $26 $00
	ld   [de], a                                     ; $4b7f: $12
	nop                                              ; $4b80: $00
	ld   [$0081], sp                                 ; $4b81: $08 $81 $00
	ld   b, $04                                      ; $4b84: $06 $04
	nop                                              ; $4b86: $00
	inc  b                                           ; $4b87: $04
	nop                                              ; $4b88: $00
	rlca                                             ; $4b89: $07
	nop                                              ; $4b8a: $00
	ld   bc, $0083                                   ; $4b8b: $01 $83 $00
	db   $10                                         ; $4b8e: $10
	ld   bc, $0700                                   ; $4b8f: $01 $00 $07
	nop                                              ; $4b92: $00
	inc  b                                           ; $4b93: $04
	nop                                              ; $4b94: $00
	inc  b                                           ; $4b95: $04
	nop                                              ; $4b96: $00

jr_01b_4b97:
	ld   [$1200], sp                                 ; $4b97: $08 $00 $12
	nop                                              ; $4b9a: $00
	ld   h, [hl]                                     ; $4b9b: $66
	nop                                              ; $4b9c: $00

jr_01b_4b9d:
	add  b                                           ; $4b9d: $80
	nop                                              ; $4b9e: $00
	ret  c                                           ; $4b9f: $d8

	add  c                                           ; $4ba0: $81
	nop                                              ; $4ba1: $00
	nop                                              ; $4ba2: $00
	jr   nz, jr_01b_4b46                             ; $4ba3: $20 $a1

	nop                                              ; $4ba5: $00
	nop                                              ; $4ba6: $00
	ld   bc, $0083                                   ; $4ba7: $01 $83 $00
	nop                                              ; $4baa: $00
	inc  bc                                          ; $4bab: $03
	add  c                                           ; $4bac: $81
	ld   bc, $0600                                   ; $4bad: $01 $00 $06
	add  e                                           ; $4bb0: $83
	ld   [bc], a                                     ; $4bb1: $02
	nop                                              ; $4bb2: $00
	dec  c                                           ; $4bb3: $0d
	add  c                                           ; $4bb4: $81
	inc  b                                           ; $4bb5: $04
	nop                                              ; $4bb6: $00
	ld   [bc], a                                     ; $4bb7: $02

jr_01b_4bb8:
	add  c                                           ; $4bb8: $81
	nop                                              ; $4bb9: $00
	nop                                              ; $4bba: $00
	inc  b                                           ; $4bbb: $04
	add  c                                           ; $4bbc: $81
	nop                                              ; $4bbd: $00
	nop                                              ; $4bbe: $00
	jr   jr_01b_4b44                                 ; $4bbf: $18 $83

	nop                                              ; $4bc1: $00
	nop                                              ; $4bc2: $00
	db   $10                                         ; $4bc3: $10
	add  a                                           ; $4bc4: $87
	nop                                              ; $4bc5: $00
	inc  de                                          ; $4bc6: $13
	ld   bc, $0300                                   ; $4bc7: $01 $00 $03
	nop                                              ; $4bca: $00
	inc  b                                           ; $4bcb: $04
	nop                                              ; $4bcc: $00
	ld   a, [bc]                                     ; $4bcd: $0a
	nop                                              ; $4bce: $00
	stop                                             ; $4bcf: $10 $00
	inc  b                                           ; $4bd1: $04
	nop                                              ; $4bd2: $00
	jr   nc, jr_01b_4be5                             ; $4bd3: $30 $10

	ld   l, b                                        ; $4bd5: $68
	jr   nz, jr_01b_4bb8                             ; $4bd6: $20 $e0

	ld   h, b                                        ; $4bd8: $60
	ld   d, b                                        ; $4bd9: $50
	ld   b, b                                        ; $4bda: $40
	add  b                                           ; $4bdb: $80
	ret  nz                                          ; $4bdc: $c0

	nop                                              ; $4bdd: $00
	and  b                                           ; $4bde: $a0
	add  c                                           ; $4bdf: $81
	add  b                                           ; $4be0: $80
	nop                                              ; $4be1: $00
	ld   b, b                                        ; $4be2: $40
	add  c                                           ; $4be3: $81
	nop                                              ; $4be4: $00

jr_01b_4be5:
	nop                                              ; $4be5: $00
	add  b                                           ; $4be6: $80
	add  l                                           ; $4be7: $85
	nop                                              ; $4be8: $00
	ld   [bc], a                                     ; $4be9: $02
	ld   bc, $0300                                   ; $4bea: $01 $00 $03
	add  c                                           ; $4bed: $81
	ld   bc, $0700                                   ; $4bee: $01 $00 $07
	add  c                                           ; $4bf1: $81
	inc  bc                                          ; $4bf2: $03
	nop                                              ; $4bf3: $00
	ld   c, $81                                      ; $4bf4: $0e $81
	ld   b, $0a                                      ; $4bf6: $06 $0a
	ld   h, $06                                      ; $4bf8: $26 $06
	sbc  l                                           ; $4bfa: $9d
	inc  c                                           ; $4bfb: $0c
	ld   c, h                                        ; $4bfc: $4c
	inc  c                                           ; $4bfd: $0c
	sbc  h                                           ; $4bfe: $9c
	inc  a                                           ; $4bff: $3c
	ld   a, [hl-]                                    ; $4c00: $3a
	jr   c, jr_01b_4c7b                              ; $4c01: $38 $78

	add  c                                           ; $4c03: $81
	jr   @+$06                                       ; $4c04: $18 $04

	ret  c                                           ; $4c06: $d8

	jr   jr_01b_4b9d                                 ; $4c07: $18 $94

	jr   nc, jr_01b_4c7b                             ; $4c09: $30 $70

	add  c                                           ; $4c0b: $81
	stop                                             ; $4c0c: $10 $00
	jr   z, jr_01b_4b97                              ; $4c0e: $28 $87

	nop                                              ; $4c10: $00
	nop                                              ; $4c11: $00
	db   $10                                         ; $4c12: $10
	adc  c                                           ; $4c13: $89
	nop                                              ; $4c14: $00
	inc  b                                           ; $4c15: $04
	ld   bc, $0300                                   ; $4c16: $01 $00 $03
	nop                                              ; $4c19: $00
	ld   b, $81                                      ; $4c1a: $06 $81
	nop                                              ; $4c1c: $00
	ld   b, $0c                                      ; $4c1d: $06 $0c
	nop                                              ; $4c1f: $00
	stop                                             ; $4c20: $10 $00
	jr   z, jr_01b_4c24                              ; $4c22: $28 $00

jr_01b_4c24:
	ld   h, b                                        ; $4c24: $60
	add  c                                           ; $4c25: $81
	jr   nz, jr_01b_4c28                             ; $4c26: $20 $00

jr_01b_4c28:
	ret  nc                                          ; $4c28: $d0

	add  c                                           ; $4c29: $81
	ld   b, b                                        ; $4c2a: $40
	nop                                              ; $4c2b: $00
	and  b                                           ; $4c2c: $a0
	add  e                                           ; $4c2d: $83
	add  b                                           ; $4c2e: $80
	nop                                              ; $4c2f: $00
	ld   b, b                                        ; $4c30: $40
	add  c                                           ; $4c31: $81
	nop                                              ; $4c32: $00
	nop                                              ; $4c33: $00
	add  b                                           ; $4c34: $80
	adc  e                                           ; $4c35: $8b
	nop                                              ; $4c36: $00
	nop                                              ; $4c37: $00
	inc  b                                           ; $4c38: $04
	add  e                                           ; $4c39: $83
	nop                                              ; $4c3a: $00
	inc  c                                           ; $4c3b: $0c
	ld   bc, $0a00                                   ; $4c3c: $01 $00 $0a
	inc  b                                           ; $4c3f: $04

jr_01b_4c40:
	add  l                                           ; $4c40: $85
	dec  b                                           ; $4c41: $05
	push hl                                          ; $4c42: $e5
	dec  b                                           ; $4c43: $05
	rla                                              ; $4c44: $17
	cpl                                              ; $4c45: $2f
	ld   l, a                                        ; $4c46: $6f
	rra                                              ; $4c47: $1f
	ccf                                              ; $4c48: $3f
	add  c                                           ; $4c49: $81
	rrca                                             ; $4c4a: $0f
	ld   [$0eea], sp                                 ; $4c4b: $08 $ea $0e
	adc  [hl]                                        ; $4c4e: $8e
	ld   a, $7e                                      ; $4c4f: $3e $7e
	ld   e, $3e                                      ; $4c51: $1e $3e
	ld   b, $15                                      ; $4c53: $06 $15
	add  l                                           ; $4c55: $85
	inc  b                                           ; $4c56: $04
	nop                                              ; $4c57: $00
	ld   [bc], a                                     ; $4c58: $02
	add  e                                           ; $4c59: $83
	nop                                              ; $4c5a: $00
	nop                                              ; $4c5b: $00
	inc  b                                           ; $4c5c: $04
	add  e                                           ; $4c5d: $83
	nop                                              ; $4c5e: $00
	nop                                              ; $4c5f: $00
	ld   [$0083], sp                                 ; $4c60: $08 $83 $00
	nop                                              ; $4c63: $00
	ld   bc, $0081                                   ; $4c64: $01 $81 $00
	nop                                              ; $4c67: $00
	inc  bc                                          ; $4c68: $03
	add  c                                           ; $4c69: $81
	nop                                              ; $4c6a: $00
	ld   [bc], a                                     ; $4c6b: $02
	ld   b, $00                                      ; $4c6c: $06 $00
	ld   [$0081], sp                                 ; $4c6e: $08 $81 $00
	inc  bc                                          ; $4c71: $03
	inc  d                                           ; $4c72: $14
	nop                                              ; $4c73: $00
	jr   nz, jr_01b_4c76                             ; $4c74: $20 $00

jr_01b_4c76:
	add  b                                           ; $4c76: $80
	stop                                             ; $4c77: $10 $00
	ld   l, b                                        ; $4c79: $68
	add  c                                           ; $4c7a: $81

jr_01b_4c7b:
	jr   nz, jr_01b_4c7f                             ; $4c7b: $20 $02

	ldh  [$60], a                                    ; $4c7d: $e0 $60

jr_01b_4c7f:
	ld   d, b                                        ; $4c7f: $50
	add  c                                           ; $4c80: $81
	ld   b, b                                        ; $4c81: $40
	add  b                                           ; $4c82: $80
	ret  nz                                          ; $4c83: $c0

	nop                                              ; $4c84: $00
	and  b                                           ; $4c85: $a0
	add  e                                           ; $4c86: $83
	add  b                                           ; $4c87: $80
	nop                                              ; $4c88: $00
	ld   b, b                                        ; $4c89: $40

jr_01b_4c8a:
	add  l                                           ; $4c8a: $85
	nop                                              ; $4c8b: $00
	nop                                              ; $4c8c: $00
	add  b                                           ; $4c8d: $80
	and  c                                           ; $4c8e: $a1
	nop                                              ; $4c8f: $00
	nop                                              ; $4c90: $00
	ld   bc, $0081                                   ; $4c91: $01 $81 $00
	nop                                              ; $4c94: $00
	ld   [bc], a                                     ; $4c95: $02
	add  c                                           ; $4c96: $81
	nop                                              ; $4c97: $00
	nop                                              ; $4c98: $00
	ld   b, $83                                      ; $4c99: $06 $83
	ld   [bc], a                                     ; $4c9b: $02
	nop                                              ; $4c9c: $00
	dec  c                                           ; $4c9d: $0d
	add  c                                           ; $4c9e: $81
	inc  b                                           ; $4c9f: $04
	inc  b                                           ; $4ca0: $04
	inc  h                                           ; $4ca1: $24
	inc  b                                           ; $4ca2: $04
	inc  e                                           ; $4ca3: $1c
	inc  c                                           ; $4ca4: $0c
	ld   a, [bc]                                     ; $4ca5: $0a
	add  e                                           ; $4ca6: $83
	ld   [$1880], sp                                 ; $4ca7: $08 $80 $18
	nop                                              ; $4caa: $00
	inc  d                                           ; $4cab: $14
	add  c                                           ; $4cac: $81
	stop                                             ; $4cad: $10 $00
	ld   [hl], b                                     ; $4caf: $70
	add  c                                           ; $4cb0: $81
	jr   nc, jr_01b_4cb3                             ; $4cb1: $30 $00

jr_01b_4cb3:
	jr   z, @-$75                                    ; $4cb3: $28 $89

	jr   nz, jr_01b_4cb7                             ; $4cb5: $20 $00

jr_01b_4cb7:
	ret  nc                                          ; $4cb7: $d0

	add  e                                           ; $4cb8: $83
	ld   b, b                                        ; $4cb9: $40
	nop                                              ; $4cba: $00
	jr   nz, jr_01b_4c40                             ; $4cbb: $20 $83

	nop                                              ; $4cbd: $00
	nop                                              ; $4cbe: $00

jr_01b_4cbf:
	ld   b, b                                        ; $4cbf: $40
	add  e                                           ; $4cc0: $83
	nop                                              ; $4cc1: $00
	nop                                              ; $4cc2: $00
	add  b                                           ; $4cc3: $80
	adc  e                                           ; $4cc4: $8b
	nop                                              ; $4cc5: $00
	nop                                              ; $4cc6: $00
	db   $10                                         ; $4cc7: $10
	add  c                                           ; $4cc8: $81
	nop                                              ; $4cc9: $00
	ld   [bc], a                                     ; $4cca: $02
	jr   nc, jr_01b_4ccd                             ; $4ccb: $30 $00

jr_01b_4ccd:
	ld   h, b                                        ; $4ccd: $60
	add  c                                           ; $4cce: $81
	nop                                              ; $4ccf: $00
	nop                                              ; $4cd0: $00

jr_01b_4cd1:
	ret  nz                                          ; $4cd1: $c0

	add  e                                           ; $4cd2: $83
	nop                                              ; $4cd3: $00

jr_01b_4cd4:
	nop                                              ; $4cd4: $00
	add  b                                           ; $4cd5: $80
	sbc  l                                           ; $4cd6: $9d
	nop                                              ; $4cd7: $00
	nop                                              ; $4cd8: $00
	ld   bc, $0083                                   ; $4cd9: $01 $83 $00
	nop                                              ; $4cdc: $00
	inc  bc                                          ; $4cdd: $03
	add  e                                           ; $4cde: $83
	nop                                              ; $4cdf: $00
	nop                                              ; $4ce0: $00
	ld   b, $83                                      ; $4ce1: $06 $83
	nop                                              ; $4ce3: $00
	nop                                              ; $4ce4: $00
	ld   [$0081], sp                                 ; $4ce5: $08 $81 $00
	nop                                              ; $4ce8: $00
	inc  d                                           ; $4ce9: $14
	add  e                                           ; $4cea: $83
	nop                                              ; $4ceb: $00
	nop                                              ; $4cec: $00
	jr   nc, @-$7d                                   ; $4ced: $30 $81

	stop                                             ; $4cef: $10 $00
	ld   [$0081], sp                                 ; $4cf1: $08 $81 $00
	nop                                              ; $4cf4: $00
	ld   h, b                                        ; $4cf5: $60
	add  e                                           ; $4cf6: $83
	jr   nz, jr_01b_4cf9                             ; $4cf7: $20 $00

jr_01b_4cf9:
	db   $10                                         ; $4cf9: $10
	add  c                                           ; $4cfa: $81
	nop                                              ; $4cfb: $00
	nop                                              ; $4cfc: $00
	ret  nz                                          ; $4cfd: $c0

	add  e                                           ; $4cfe: $83
	ld   b, b                                        ; $4cff: $40
	nop                                              ; $4d00: $00
	jr   nz, jr_01b_4c8a                             ; $4d01: $20 $87

	nop                                              ; $4d03: $00
	nop                                              ; $4d04: $00
	ld   b, b                                        ; $4d05: $40
	add  l                                           ; $4d06: $85
	nop                                              ; $4d07: $00
	nop                                              ; $4d08: $00
	add  b                                           ; $4d09: $80
	adc  a                                           ; $4d0a: $8f
	nop                                              ; $4d0b: $00
	nop                                              ; $4d0c: $00
	ld   b, b                                        ; $4d0d: $40
	add  c                                           ; $4d0e: $81
	nop                                              ; $4d0f: $00
	nop                                              ; $4d10: $00
	ret  nz                                          ; $4d11: $c0

	add  c                                           ; $4d12: $81
	nop                                              ; $4d13: $00
	nop                                              ; $4d14: $00
	add  b                                           ; $4d15: $80
	adc  b                                           ; $4d16: $88
	nop                                              ; $4d17: $00
	add  c                                           ; $4d18: $81
	ld   bc, $0000                                   ; $4d19: $01 $00 $00
	add  c                                           ; $4d1c: $81
	inc  bc                                          ; $4d1d: $03

jr_01b_4d1e:
	nop                                              ; $4d1e: $00
	ld   bc, $0781                                   ; $4d1f: $01 $81 $07
	nop                                              ; $4d22: $00
	ld   [bc], a                                     ; $4d23: $02
	add  c                                           ; $4d24: $81
	rrca                                             ; $4d25: $0f
	nop                                              ; $4d26: $00
	dec  b                                           ; $4d27: $05
	add  c                                           ; $4d28: $81
	ld   e, $00                                      ; $4d29: $1e $00
	ld   a, [bc]                                     ; $4d2b: $0a
	add  e                                           ; $4d2c: $83

jr_01b_4d2d:
	inc  a                                           ; $4d2d: $3c
	nop                                              ; $4d2e: $00
	inc  d                                           ; $4d2f: $14
	add  e                                           ; $4d30: $83
	ld   a, b                                        ; $4d31: $78
	inc  b                                           ; $4d32: $04
	jr   c, jr_01b_4d2d                              ; $4d33: $38 $f8

	xor  b                                           ; $4d35: $a8
	ldh  a, [$d0]                                    ; $4d36: $f0 $d0
	add  b                                           ; $4d38: $80
	or   b                                           ; $4d39: $b0
	add  b                                           ; $4d3a: $80
	jr   nc, jr_01b_4cbf                             ; $4d3b: $30 $82

	jr   nz, jr_01b_4cd1                             ; $4d3d: $20 $92

	nop                                              ; $4d3f: $00
	add  d                                           ; $4d40: $82
	ld   bc, $0282                                   ; $4d41: $01 $82 $02
	add  d                                           ; $4d44: $82
	inc  b                                           ; $4d45: $04
	add  d                                           ; $4d46: $82
	add  hl, bc                                      ; $4d47: $09
	add  d                                           ; $4d48: $82
	ld   [de], a                                     ; $4d49: $12
	add  c                                           ; $4d4a: $81
	inc  h                                           ; $4d4b: $24
	inc  b                                           ; $4d4c: $04
	inc  b                                           ; $4d4d: $04
	ld   a, b                                        ; $4d4e: $78
	ld   l, b                                        ; $4d4f: $68
	ld   a, b                                        ; $4d50: $78
	jr   z, jr_01b_4cd4                              ; $4d51: $28 $81

jr_01b_4d53:
	ldh  a, [rP1]                                    ; $4d53: $f0 $00
	ld   d, b                                        ; $4d55: $50
	add  c                                           ; $4d56: $81
	ldh  [rP1], a                                    ; $4d57: $e0 $00
	and  b                                           ; $4d59: $a0
	add  c                                           ; $4d5a: $81
	ret  nz                                          ; $4d5b: $c0

	nop                                              ; $4d5c: $00

jr_01b_4d5d:
	ld   b, b                                        ; $4d5d: $40
	add  d                                           ; $4d5e: $82
	add  b                                           ; $4d5f: $80
	sub  [hl]                                        ; $4d60: $96
	nop                                              ; $4d61: $00
	add  c                                           ; $4d62: $81
	ld   bc, $0000                                   ; $4d63: $01 $00 $00
	add  c                                           ; $4d66: $81
	inc  bc                                          ; $4d67: $03
	nop                                              ; $4d68: $00
	ld   bc, $0781                                   ; $4d69: $01 $81 $07
	nop                                              ; $4d6c: $00
	ld   [bc], a                                     ; $4d6d: $02
	add  c                                           ; $4d6e: $81
	rrca                                             ; $4d6f: $0f
	nop                                              ; $4d70: $00
	dec  b                                           ; $4d71: $05
	add  e                                           ; $4d72: $83
	ld   e, $00                                      ; $4d73: $1e $00
	ld   a, [bc]                                     ; $4d75: $0a
	add  e                                           ; $4d76: $83
	inc  a                                           ; $4d77: $3c
	nop                                              ; $4d78: $00
	inc  d                                           ; $4d79: $14
	add  e                                           ; $4d7a: $83
	ld   a, b                                        ; $4d7b: $78
	nop                                              ; $4d7c: $00
	jr   z, @-$7b                                    ; $4d7d: $28 $83

	ldh  a, [rSC]                                    ; $4d7f: $f0 $02
	ret  nc                                          ; $4d81: $d0

	ldh  a, [$b0]                                    ; $4d82: $f0 $b0
	add  b                                           ; $4d84: $80
	ret  nc                                          ; $4d85: $d0

	add  b                                           ; $4d86: $80
	sub  b                                           ; $4d87: $90
	add  b                                           ; $4d88: $80
	add  b                                           ; $4d89: $80
	sub  d                                           ; $4d8a: $92
	nop                                              ; $4d8b: $00
	add  d                                           ; $4d8c: $82
	ld   [bc], a                                     ; $4d8d: $02
	add  d                                           ; $4d8e: $82
	inc  b                                           ; $4d8f: $04
	add  d                                           ; $4d90: $82
	ld   [$1282], sp                                 ; $4d91: $08 $82 $12
	add  c                                           ; $4d94: $81
	inc  h                                           ; $4d95: $24
	inc  b                                           ; $4d96: $04
	inc  b                                           ; $4d97: $04
	ld   a, b                                        ; $4d98: $78

jr_01b_4d99:
	ld   l, b                                        ; $4d99: $68
	ld   a, b                                        ; $4d9a: $78
	jr   z, jr_01b_4d1e                              ; $4d9b: $28 $81

	ldh  a, [rP1]                                    ; $4d9d: $f0 $00

jr_01b_4d9f:
	ld   d, b                                        ; $4d9f: $50
	add  c                                           ; $4da0: $81
	ldh  [rP1], a                                    ; $4da1: $e0 $00
	and  b                                           ; $4da3: $a0
	add  c                                           ; $4da4: $81
	ret  nz                                          ; $4da5: $c0

	nop                                              ; $4da6: $00
	ld   b, b                                        ; $4da7: $40
	add  d                                           ; $4da8: $82
	add  b                                           ; $4da9: $80
	sub  d                                           ; $4daa: $92
	nop                                              ; $4dab: $00
	add  c                                           ; $4dac: $81
	ld   bc, $0000                                   ; $4dad: $01 $00 $00
	add  c                                           ; $4db0: $81
	inc  bc                                          ; $4db1: $03
	nop                                              ; $4db2: $00
	ld   bc, $0781                                   ; $4db3: $01 $81 $07
	nop                                              ; $4db6: $00
	ld   [bc], a                                     ; $4db7: $02
	add  c                                           ; $4db8: $81
	rrca                                             ; $4db9: $0f
	nop                                              ; $4dba: $00
	dec  b                                           ; $4dbb: $05
	add  e                                           ; $4dbc: $83
	ld   e, $00                                      ; $4dbd: $1e $00
	ld   a, [bc]                                     ; $4dbf: $0a
	add  e                                           ; $4dc0: $83
	inc  a                                           ; $4dc1: $3c
	nop                                              ; $4dc2: $00
	inc  d                                           ; $4dc3: $14
	add  e                                           ; $4dc4: $83
	ld   a, b                                        ; $4dc5: $78
	nop                                              ; $4dc6: $00
	jr   z, @-$73                                    ; $4dc7: $28 $8b

	ldh  a, [rSC]                                    ; $4dc9: $f0 $02
	or   b                                           ; $4dcb: $b0
	ld   a, b                                        ; $4dcc: $78
	ld   e, b                                        ; $4dcd: $58
	add  b                                           ; $4dce: $80
	ld   h, b                                        ; $4dcf: $60
	add  b                                           ; $4dd0: $80
	jr   nz, jr_01b_4d53                             ; $4dd1: $20 $80

	db   $10                                         ; $4dd3: $10
	sub  d                                           ; $4dd4: $92
	nop                                              ; $4dd5: $00
	add  d                                           ; $4dd6: $82
	ld   [$1082], sp                                 ; $4dd7: $08 $82 $10
	add  b                                           ; $4dda: $80
	jr   nz, jr_01b_4d5d                             ; $4ddb: $20 $80

	inc  h                                           ; $4ddd: $24
	add  c                                           ; $4dde: $81
	ld   c, b                                        ; $4ddf: $48
	inc  b                                           ; $4de0: $04
	ld   [$d0f0], sp                                 ; $4de1: $08 $f0 $d0
	ldh  a, [$50]                                    ; $4de4: $f0 $50
	add  c                                           ; $4de6: $81
	ldh  [rP1], a                                    ; $4de7: $e0 $00
	and  b                                           ; $4de9: $a0
	add  c                                           ; $4dea: $81
	ret  nz                                          ; $4deb: $c0

	nop                                              ; $4dec: $00
	ld   b, b                                        ; $4ded: $40
	add  d                                           ; $4dee: $82
	add  b                                           ; $4def: $80
	sub  d                                           ; $4df0: $92
	nop                                              ; $4df1: $00
	add  c                                           ; $4df2: $81
	ld   bc, $0000                                   ; $4df3: $01 $00 $00
	add  c                                           ; $4df6: $81
	inc  bc                                          ; $4df7: $03
	nop                                              ; $4df8: $00
	ld   bc, $0781                                   ; $4df9: $01 $81 $07
	nop                                              ; $4dfc: $00
	ld   [bc], a                                     ; $4dfd: $02
	add  c                                           ; $4dfe: $81
	rrca                                             ; $4dff: $0f
	nop                                              ; $4e00: $00
	dec  b                                           ; $4e01: $05
	add  e                                           ; $4e02: $83
	ld   e, $00                                      ; $4e03: $1e $00
	ld   a, [bc]                                     ; $4e05: $0a
	add  e                                           ; $4e06: $83

jr_01b_4e07:
	inc  a                                           ; $4e07: $3c
	nop                                              ; $4e08: $00
	inc  d                                           ; $4e09: $14
	add  e                                           ; $4e0a: $83
	ld   a, b                                        ; $4e0b: $78
	nop                                              ; $4e0c: $00
	jr   z, jr_01b_4d99                              ; $4e0d: $28 $8a

	ldh  a, [rSB]                                    ; $4e0f: $f0 $01
	ldh  a, [c]                                      ; $4e11: $f2
	and  d                                           ; $4e12: $a2
	add  b                                           ; $4e13: $80
	ld   a, h                                        ; $4e14: $7c
	inc  bc                                          ; $4e15: $03
	ld   a, d                                        ; $4e16: $7a
	ld   d, d                                        ; $4e17: $52

jr_01b_4e18:
	inc  a                                           ; $4e18: $3c
	inc  h                                           ; $4e19: $24
	add  b                                           ; $4e1a: $80
	jr   jr_01b_4d9f                                 ; $4e1b: $18 $82

	ld   b, b                                        ; $4e1d: $40
	add  b                                           ; $4e1e: $80
	add  b                                           ; $4e1f: $80
	add  b                                           ; $4e20: $80
	sub  b                                           ; $4e21: $90
	add  d                                           ; $4e22: $82
	jr   nz, jr_01b_4e28                             ; $4e23: $20 $03

	ret  nz                                          ; $4e25: $c0

	ld   b, b                                        ; $4e26: $40
	ret  nz                                          ; $4e27: $c0

jr_01b_4e28:
	ld   b, b                                        ; $4e28: $40
	add  d                                           ; $4e29: $82
	add  b                                           ; $4e2a: $80
	xor  l                                           ; $4e2b: $ad
	nop                                              ; $4e2c: $00
	nop                                              ; $4e2d: $00
	ld   bc, $0081                                   ; $4e2e: $01 $81 $00

jr_01b_4e31:
	nop                                              ; $4e31: $00
	ld   [bc], a                                     ; $4e32: $02
	add  c                                           ; $4e33: $81
	ld   bc, $4502                                   ; $4e34: $01 $02 $45
	inc  bc                                          ; $4e37: $03
	ld   a, e                                        ; $4e38: $7b
	add  b                                           ; $4e39: $80
	rlca                                             ; $4e3a: $07
	add  c                                           ; $4e3b: $81
	rra                                              ; $4e3c: $1f
	db   $10                                         ; $4e3d: $10
	ld   e, a                                        ; $4e3e: $5f
	ccf                                              ; $4e3f: $3f
	cp   h                                           ; $4e40: $bc
	inc  a                                           ; $4e41: $3c
	cp   b                                           ; $4e42: $b8
	jr   c, @-$4e                                    ; $4e43: $38 $b0

	ld   [hl], b                                     ; $4e45: $70
	ldh  a, [$30]                                    ; $4e46: $f0 $30
	cp   b                                           ; $4e48: $b8
	jr   c, jr_01b_4e07                              ; $4e49: $38 $bc

	inc  e                                           ; $4e4b: $1c
	ld   a, a                                        ; $4e4c: $7f
	rrca                                             ; $4e4d: $0f
	rra                                              ; $4e4e: $1f
	add  b                                           ; $4e4f: $80
	rlca                                             ; $4e50: $07
	inc  bc                                          ; $4e51: $03
	inc  b                                           ; $4e52: $04
	rrca                                             ; $4e53: $0f
	nop                                              ; $4e54: $00
	inc  b                                           ; $4e55: $04
	sbc  e                                           ; $4e56: $9b
	nop                                              ; $4e57: $00
	inc  b                                           ; $4e58: $04
	add  b                                           ; $4e59: $80
	nop                                              ; $4e5a: $00
	ld   d, b                                        ; $4e5b: $50
	add  b                                           ; $4e5c: $80
	and  b                                           ; $4e5d: $a0
	add  b                                           ; $4e5e: $80
	ret  nz                                          ; $4e5f: $c0

	add  c                                           ; $4e60: $81
	ldh  [$0d], a                                    ; $4e61: $e0 $0d
	db   $ec                                         ; $4e63: $ec
	ldh  a, [$f4]                                    ; $4e64: $f0 $f4
	ldh  a, [$f4]                                    ; $4e66: $f0 $f4
	ld   hl, sp+$7b                                  ; $4e68: $f8 $7b
	ld   a, h                                        ; $4e6a: $7c
	ccf                                              ; $4e6b: $3f
	jr   c, jr_01b_4eaa                              ; $4e6c: $38 $3c

	jr   nc, jr_01b_4ee8                             ; $4e6e: $30 $78

	ld   h, b                                        ; $4e70: $60
	add  e                                           ; $4e71: $83
	ldh  [$03], a                                    ; $4e72: $e0 $03
	nop                                              ; $4e74: $00
	ldh  [rP1], a                                    ; $4e75: $e0 $00

jr_01b_4e77:
	db   $10                                         ; $4e77: $10
	sub  a                                           ; $4e78: $97
	nop                                              ; $4e79: $00
	inc  d                                           ; $4e7a: $14
	ld   [$8400], sp                                 ; $4e7b: $08 $00 $84
	nop                                              ; $4e7e: $00
	or   d                                           ; $4e7f: $b2
	inc  c                                           ; $4e80: $0c
	dec  l                                           ; $4e81: $2d
	ld   c, $2e                                      ; $4e82: $0e $2e
	rra                                              ; $4e84: $1f
	rst  JumpTable                                         ; $4e85: $df
	ccf                                              ; $4e86: $3f
	cp   a                                           ; $4e87: $bf
	ld   a, $7f                                      ; $4e88: $3e $7f
	ld   [$002e], sp                                 ; $4e8a: $08 $2e $00
	jr   c, jr_01b_4e8f                              ; $4e8d: $38 $00

jr_01b_4e8f:
	jr   nz, jr_01b_4e18                             ; $4e8f: $20 $87

	nop                                              ; $4e91: $00
	ld   b, $08                                      ; $4e92: $06 $08
	nop                                              ; $4e94: $00
	ld   bc, $0100                                   ; $4e95: $01 $00 $01
	nop                                              ; $4e98: $00
	inc  d                                           ; $4e99: $14
	add  c                                           ; $4e9a: $81
	ld   [$0902], sp                                 ; $4e9b: $08 $02 $09
	ld   [$80aa], sp                                 ; $4e9e: $08 $aa $80
	inc  e                                           ; $4ea1: $1c
	inc  bc                                          ; $4ea2: $03
	ld   e, $de                                      ; $4ea3: $1e $de

jr_01b_4ea5:
	ld   e, $1f                                      ; $4ea5: $1e $1f
	add  c                                           ; $4ea7: $81
	inc  a                                           ; $4ea8: $3c
	inc  b                                           ; $4ea9: $04

jr_01b_4eaa:
	ld   a, h                                        ; $4eaa: $7c
	inc  e                                           ; $4eab: $1c
	ld   e, $18                                      ; $4eac: $1e $18
	jr   c, jr_01b_4e31                              ; $4eae: $38 $81

	ld   [$1418], sp                                 ; $4eb0: $08 $18 $14
	nop                                              ; $4eb3: $00
	ld   [$1000], sp                                 ; $4eb4: $08 $00 $10
	nop                                              ; $4eb7: $00
	jr   nz, jr_01b_4eca                             ; $4eb8: $20 $10

	ld   d, [hl]                                     ; $4eba: $56
	jr   c, jr_01b_4e77                              ; $4ebb: $38 $ba

	ld   [hl], b                                     ; $4ebd: $70
	ld   [hl], e                                     ; $4ebe: $73
	db   $fc                                         ; $4ebf: $fc
	rst  $38                                         ; $4ec0: $ff
	ld   hl, sp-$04                                  ; $4ec1: $f8 $fc
	jr   nc, @-$0d                                   ; $4ec3: $30 $f1

	nop                                              ; $4ec5: $00
	dec  [hl]                                        ; $4ec6: $35
	nop                                              ; $4ec7: $00
	ld   c, $00                                      ; $4ec8: $0e $00

jr_01b_4eca:
	ld   [bc], a                                     ; $4eca: $02
	adc  l                                           ; $4ecb: $8d
	nop                                              ; $4ecc: $00
	ld   [hl-], a                                    ; $4ecd: $32
	ld   bc, $0300                                   ; $4ece: $01 $00 $03
	nop                                              ; $4ed1: $00
	inc  b                                           ; $4ed2: $04
	nop                                              ; $4ed3: $00
	inc  c                                           ; $4ed4: $0c
	inc  b                                           ; $4ed5: $04
	dec  b                                           ; $4ed6: $05
	inc  b                                           ; $4ed7: $04
	jr   jr_01b_4ee9                                 ; $4ed8: $18 $0f

	dec  [hl]                                        ; $4eda: $35
	ld   e, $1d                                      ; $4edb: $1e $1d
	inc  e                                           ; $4edd: $1c
	ld   l, e                                        ; $4ede: $6b
	ld   a, $34                                      ; $4edf: $3e $34
	inc  a                                           ; $4ee1: $3c
	bit  7, b                                        ; $4ee2: $cb $78
	ld   b, h                                        ; $4ee4: $44
	ld   h, b                                        ; $4ee5: $60
	jr   jr_01b_4ee8                                 ; $4ee6: $18 $00

jr_01b_4ee8:
	pop  hl                                          ; $4ee8: $e1

jr_01b_4ee9:
	nop                                              ; $4ee9: $00
	ld   b, d                                        ; $4eea: $42
	nop                                              ; $4eeb: $00
	push bc                                          ; $4eec: $c5
	nop                                              ; $4eed: $00
	sbc  d                                           ; $4eee: $9a
	ld   [$102c], sp                                 ; $4eef: $08 $2c $10
	ld   e, b                                        ; $4ef2: $58
	jr   nz, jr_01b_4ea5                             ; $4ef3: $20 $b0

	ld   b, b                                        ; $4ef5: $40
	ld   h, b                                        ; $4ef6: $60
	add  b                                           ; $4ef7: $80
	ret  nc                                          ; $4ef8: $d0

	nop                                              ; $4ef9: $00
	or   b                                           ; $4efa: $b0
	nop                                              ; $4efb: $00
	ld   h, b                                        ; $4efc: $60
	nop                                              ; $4efd: $00
	ret  nz                                          ; $4efe: $c0

	nop                                              ; $4eff: $00
	add  b                                           ; $4f00: $80
	sub  l                                           ; $4f01: $95
	nop                                              ; $4f02: $00
	rrca                                             ; $4f03: $0f
	ld   bc, $0300                                   ; $4f04: $01 $00 $03
	nop                                              ; $4f07: $00
	ld   b, $00                                      ; $4f08: $06 $00
	inc  c                                           ; $4f0a: $0c
	nop                                              ; $4f0b: $00
	jr   jr_01b_4f0e                                 ; $4f0c: $18 $00

jr_01b_4f0e:
	jr   nc, jr_01b_4f10                             ; $4f0e: $30 $00

jr_01b_4f10:
	ld   h, b                                        ; $4f10: $60
	nop                                              ; $4f11: $00
	ret  nz                                          ; $4f12: $c0

	nop                                              ; $4f13: $00
	ld   b, b                                        ; $4f14: $40
	ld   [bc], a                                     ; $4f15: $02
	adc  [hl]                                        ; $4f16: $8e
	rst  $38                                         ; $4f17: $ff
	add  a                                           ; $4f18: $87
	nop                                              ; $4f19: $00
	rlca                                             ; $4f1a: $07
	rlca                                             ; $4f1b: $07
	nop                                              ; $4f1c: $00
	rra                                              ; $4f1d: $1f
	rlca                                             ; $4f1e: $07
	inc  a                                           ; $4f1f: $3c
	inc  e                                           ; $4f20: $1c
	ld   [hl], b                                     ; $4f21: $70
	ld   c, a                                        ; $4f22: $4f
	add  [hl]                                        ; $4f23: $86
	nop                                              ; $4f24: $00
	ld   bc, $00ff                                   ; $4f25: $01 $ff $00
	add  b                                           ; $4f28: $80
	rst  $38                                         ; $4f29: $ff
	nop                                              ; $4f2a: $00
	nop                                              ; $4f2b: $00
	add  b                                           ; $4f2c: $80
	reti                                             ; $4f2d: $d9


	nop                                              ; $4f2e: $00
	nop                                              ; $4f2f: $00
	add  a                                           ; $4f30: $87
	rst  $38                                         ; $4f31: $ff
	dec  bc                                          ; $4f32: $0b
	ccf                                              ; $4f33: $3f
	rst  $38                                         ; $4f34: $ff
	rra                                              ; $4f35: $1f
	ccf                                              ; $4f36: $3f
	adc  a                                           ; $4f37: $8f
	sbc  a                                           ; $4f38: $9f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4f39: $cf
	ld   h, b                                        ; $4f3a: $60
	ld   h, $e6                                      ; $4f3b: $26 $e6
	sub  $f6                                         ; $4f3d: $d6 $f6
	add  b                                           ; $4f3f: $80
	ldh  a, [$80]                                    ; $4f40: $f0 $80
	ret  nz                                          ; $4f42: $c0

	add  b                                           ; $4f43: $80
	rst  ToBoot                                         ; $4f44: $c7
	add  b                                           ; $4f45: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4f46: $cf
	add  b                                           ; $4f47: $80
	rst  JumpTable                                         ; $4f48: $df
	ld   bc, $0141                                   ; $4f49: $01 $41 $01
	add  d                                           ; $4f4c: $82
	rlca                                             ; $4f4d: $07
	add  d                                           ; $4f4e: $82
	ld   bc, $ff84                                   ; $4f4f: $01 $84 $ff
	ld   [bc], a                                     ; $4f52: $02
	sub  b                                           ; $4f53: $90
	sbc  a                                           ; $4f54: $9f
	rst  $20                                         ; $4f55: $e7
	add  c                                           ; $4f56: $81
	rst  $28                                         ; $4f57: $ef
	add  d                                           ; $4f58: $82
	adc  a                                           ; $4f59: $8f
	add  b                                           ; $4f5a: $80
	rrca                                             ; $4f5b: $0f
	add  b                                           ; $4f5c: $80
	adc  a                                           ; $4f5d: $8f
	add  b                                           ; $4f5e: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4f5f: $cf
	nop                                              ; $4f60: $00
	sbc  b                                           ; $4f61: $98
	add  c                                           ; $4f62: $81
	sbc  h                                           ; $4f63: $9c
	nop                                              ; $4f64: $00
	ld   e, h                                        ; $4f65: $5c
	add  e                                           ; $4f66: $83
	call c, wTitleScreenMiscCounterIdx                                    ; $4f67: $dc $03 $cc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4f6a: $cf
	xor  a                                           ; $4f6b: $af
	rst  $28                                         ; $4f6c: $ef
	add  b                                           ; $4f6d: $80
	rst  $20                                         ; $4f6e: $e7
	nop                                              ; $4f6f: $00
	ccf                                              ; $4f70: $3f
	adc  b                                           ; $4f71: $88
	ld   bc, $ff83                                   ; $4f72: $01 $83 $ff
	nop                                              ; $4f75: $00
	ret  z                                           ; $4f76: $c8

	add  c                                           ; $4f77: $81
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4f78: $cf
	nop                                              ; $4f79: $00
	rst  $10                                         ; $4f7a: $d7
	add  e                                           ; $4f7b: $83
	rst  JumpTable                                         ; $4f7c: $df
	add  b                                           ; $4f7d: $80
	sbc  a                                           ; $4f7e: $9f
	ld   bc, $bfaf                                   ; $4f7f: $01 $af $bf
	add  b                                           ; $4f82: $80
	ccf                                              ; $4f83: $3f
	ld   b, $0f                                      ; $4f84: $06 $0f
	ldh  a, [$ec]                                    ; $4f86: $f0 $ec
	db   $fc                                         ; $4f88: $fc
	di                                               ; $4f89: $f3
	rst  $38                                         ; $4f8a: $ff
	db   $fc                                         ; $4f8b: $fc
	add  l                                           ; $4f8c: $85
	rst  $38                                         ; $4f8d: $ff
	inc  bc                                          ; $4f8e: $03
	cp   $ff                                         ; $4f8f: $fe $ff
	cp   $00                                         ; $4f91: $fe $00
	add  b                                           ; $4f93: $80
	ld   bc, $fe10                                   ; $4f94: $01 $10 $fe
	rst  $38                                         ; $4f97: $ff
	ld   bc, $dfff                                   ; $4f98: $01 $ff $df
	rst  $38                                         ; $4f9b: $ff
	xor  a                                           ; $4f9c: $af
	rst  $38                                         ; $4f9d: $ff
	adc  a                                           ; $4f9e: $8f
	rst  $38                                         ; $4f9f: $ff
	ei                                               ; $4fa0: $fb
	rst  $38                                         ; $4fa1: $ff
	cp   e                                           ; $4fa2: $bb
	ld   a, a                                        ; $4fa3: $7f
	cp   a                                           ; $4fa4: $bf
	rst  $38                                         ; $4fa5: $ff
	ld   a, a                                        ; $4fa6: $7f
	adc  l                                           ; $4fa7: $8d
	rst  $38                                         ; $4fa8: $ff
	inc  b                                           ; $4fa9: $04
	ei                                               ; $4faa: $fb
	rst  $38                                         ; $4fab: $ff
	ld   hl, sp-$01                                  ; $4fac: $f8 $ff
	db   $fc                                         ; $4fae: $fc
	add  l                                           ; $4faf: $85
	rst  $38                                         ; $4fb0: $ff
	ld   a, [bc]                                     ; $4fb1: $0a
	rlca                                             ; $4fb2: $07
	rst  $38                                         ; $4fb3: $ff
	rlca                                             ; $4fb4: $07
	rst  $38                                         ; $4fb5: $ff
	cp   $ff                                         ; $4fb6: $fe $ff
	ld   hl, sp-$01                                  ; $4fb8: $f8 $ff
	ld   bc, $07ff                                   ; $4fba: $01 $ff $07
	add  e                                           ; $4fbd: $83
	rst  $38                                         ; $4fbe: $ff
	adc  c                                           ; $4fbf: $89
	nop                                              ; $4fc0: $00
	dec  b                                           ; $4fc1: $05
	ccf                                              ; $4fc2: $3f
	nop                                              ; $4fc3: $00
	ld   a, a                                        ; $4fc4: $7f
	ccf                                              ; $4fc5: $3f
	ldh  [$9f], a                                    ; $4fc6: $e0 $9f
	adc  b                                           ; $4fc8: $88
	nop                                              ; $4fc9: $00
	ld   bc, $00ff                                   ; $4fca: $01 $ff $00
	add  b                                           ; $4fcd: $80
	rst  $38                                         ; $4fce: $ff
	ld   bc, $ff00                                   ; $4fcf: $01 $00 $ff
	adc  b                                           ; $4fd2: $88
	nop                                              ; $4fd3: $00
	ld   b, $e0                                      ; $4fd4: $06 $e0
	nop                                              ; $4fd6: $00
	ldh  a, [$e0]                                    ; $4fd7: $f0 $e0
	ld   [$c087], sp                                 ; $4fd9: $08 $87 $c0
	add  b                                           ; $4fdc: $80
	rst  ToBoot                                         ; $4fdd: $c7
	adc  b                                           ; $4fde: $88
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4fdf: $cf
	inc  bc                                          ; $4fe0: $03
	adc  $cf                                         ; $4fe1: $ce $cf
	ld   b, c                                        ; $4fe3: $41
	nop                                              ; $4fe4: $00
	add  a                                           ; $4fe5: $87
	rst  $38                                         ; $4fe6: $ff
	add  e                                           ; $4fe7: $83
	add  b                                           ; $4fe8: $80
	ld   bc, $007f                                   ; $4fe9: $01 $7f $00
	add  a                                           ; $4fec: $87
	rst  $38                                         ; $4fed: $ff
	add  e                                           ; $4fee: $83
	nop                                              ; $4fef: $00
	ld   bc, $00ff                                   ; $4ff0: $01 $ff $00
	add  a                                           ; $4ff3: $87
	rst  $38                                         ; $4ff4: $ff
	add  e                                           ; $4ff5: $83
	rrca                                             ; $4ff6: $0f
	nop                                              ; $4ff7: $00
	ld   hl, sp-$7f                                  ; $4ff8: $f8 $81
	rrca                                             ; $4ffa: $0f
	adc  d                                           ; $4ffb: $8a
	adc  a                                           ; $4ffc: $8f
	nop                                              ; $4ffd: $00
	adc  [hl]                                        ; $4ffe: $8e
	add  c                                           ; $4fff: $81
	ret                                              ; $5000: $c9


	ld   [bc], a                                     ; $5001: $02
	adc  $cf                                         ; $5002: $ce $cf
	adc  $87                                         ; $5004: $ce $87
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5006: $cf
	nop                                              ; $5007: $00
	cp   a                                           ; $5008: $bf
	adc  [hl]                                        ; $5009: $8e
	add  b                                           ; $500a: $80
	adc  [hl]                                        ; $500b: $8e
	nop                                              ; $500c: $00
	adc  l                                           ; $500d: $8d
	rrca                                             ; $500e: $0f
	nop                                              ; $500f: $00
	ld   a, b                                        ; $5010: $78
	adc  l                                           ; $5011: $8d
	adc  a                                           ; $5012: $8f
	nop                                              ; $5013: $00
	adc  b                                           ; $5014: $88
	adc  l                                           ; $5015: $8d
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5016: $cf
	nop                                              ; $5017: $00
	cp   a                                           ; $5018: $bf
	adc  l                                           ; $5019: $8d
	add  b                                           ; $501a: $80
	nop                                              ; $501b: $00
	ldh  a, [$89]                                    ; $501c: $f0 $89
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $501e: $cf
	add  b                                           ; $501f: $80
	rst  ToBoot                                         ; $5020: $c7
	add  b                                           ; $5021: $80
	jp   $bf00                                       ; $5022: $c3 $00 $bf


	add  d                                           ; $5025: $82
	add  b                                           ; $5026: $80
	adc  d                                           ; $5027: $8a
	rst  $38                                         ; $5028: $ff
	add  d                                           ; $5029: $82
	nop                                              ; $502a: $00
	adc  d                                           ; $502b: $8a
	rst  $38                                         ; $502c: $ff
	add  d                                           ; $502d: $82
	rrca                                             ; $502e: $0f
	add  a                                           ; $502f: $87
	rst  $38                                         ; $5030: $ff
	add  b                                           ; $5031: $80
	cp   $00                                         ; $5032: $fe $00
	adc  b                                           ; $5034: $88
	adc  c                                           ; $5035: $89
	adc  a                                           ; $5036: $8f
	add  d                                           ; $5037: $82
	rrca                                             ; $5038: $0f
	nop                                              ; $5039: $00
	add  a                                           ; $503a: $87
	adc  l                                           ; $503b: $8d
	ret  nz                                          ; $503c: $c0

	ld   bc, $ffbf                                   ; $503d: $01 $bf $ff
	add  d                                           ; $5040: $82
	nop                                              ; $5041: $00
	add  b                                           ; $5042: $80
	ld   bc, $0282                                   ; $5043: $01 $82 $02
	add  b                                           ; $5046: $80
	ld   bc, $0080                                   ; $5047: $01 $80 $00
	add  b                                           ; $504a: $80
	rst  $38                                         ; $504b: $ff
	add  d                                           ; $504c: $82
	nop                                              ; $504d: $00
	add  b                                           ; $504e: $80
	rst  $38                                         ; $504f: $ff
	add  b                                           ; $5050: $80
	ld   d, l                                        ; $5051: $55
	add  b                                           ; $5052: $80
	xor  d                                           ; $5053: $aa
	add  b                                           ; $5054: $80
	rst  $38                                         ; $5055: $ff
	add  b                                           ; $5056: $80
	nop                                              ; $5057: $00
	add  b                                           ; $5058: $80
	rst  $38                                         ; $5059: $ff
	add  d                                           ; $505a: $82
	nop                                              ; $505b: $00
	add  b                                           ; $505c: $80
	db   $fc                                         ; $505d: $fc
	add  b                                           ; $505e: $80
	ld   d, d                                        ; $505f: $52
	add  b                                           ; $5060: $80
	xor  d                                           ; $5061: $aa
	add  b                                           ; $5062: $80
	db   $fc                                         ; $5063: $fc
	add  b                                           ; $5064: $80
	nop                                              ; $5065: $00
	add  b                                           ; $5066: $80
	ld   hl, sp-$74                                  ; $5067: $f8 $8c
	nop                                              ; $5069: $00
	nop                                              ; $506a: $00
	ld   [$0f8d], sp                                 ; $506b: $08 $8d $0f
	nop                                              ; $506e: $00
	add  a                                           ; $506f: $87
	add  e                                           ; $5070: $83
	ret  nz                                          ; $5071: $c0

	nop                                              ; $5072: $00
	rst  ToBoot                                         ; $5073: $c7
	add  b                                           ; $5074: $80
	ret  nz                                          ; $5075: $c0

	add  c                                           ; $5076: $81
	rst  ToBoot                                         ; $5077: $c7
	add  d                                           ; $5078: $82
	ret  nz                                          ; $5079: $c0

	nop                                              ; $507a: $00
	and  b                                           ; $507b: $a0
	add  b                                           ; $507c: $80
	nop                                              ; $507d: $00
	add  c                                           ; $507e: $81
	ldh  [rP1], a                                    ; $507f: $e0 $00
	db   $fc                                         ; $5081: $fc
	add  b                                           ; $5082: $80
	ldh  [$80], a                                    ; $5083: $e0 $80
	db   $fc                                         ; $5085: $fc
	ld   bc, $a0bc                                   ; $5086: $01 $bc $a0
	add  c                                           ; $5089: $81
	ldh  [$94], a                                    ; $508a: $e0 $94
	nop                                              ; $508c: $00
	add  b                                           ; $508d: $80
	inc  bc                                          ; $508e: $03
	nop                                              ; $508f: $00
	rlca                                             ; $5090: $07
	add  b                                           ; $5091: $80
	dec  b                                           ; $5092: $05
	add  c                                           ; $5093: $81
	rlca                                             ; $5094: $07
	add  b                                           ; $5095: $80
	inc  bc                                          ; $5096: $03
	add  b                                           ; $5097: $80
	nop                                              ; $5098: $00
	add  b                                           ; $5099: $80
	rlca                                             ; $509a: $07
	inc  bc                                          ; $509b: $03
	rrca                                             ; $509c: $0f
	dec  bc                                          ; $509d: $0b
	adc  e                                           ; $509e: $8b
	adc  a                                           ; $509f: $8f
	add  b                                           ; $50a0: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $50a1: $cf
	add  b                                           ; $50a2: $80
	rst  ToBoot                                         ; $50a3: $c7
	add  b                                           ; $50a4: $80
	ret  nz                                          ; $50a5: $c0

	add  b                                           ; $50a6: $80
	add  b                                           ; $50a7: $80
	nop                                              ; $50a8: $00
	ld   [$0f81], sp                                 ; $50a9: $08 $81 $0f
	add  h                                           ; $50ac: $84
	adc  a                                           ; $50ad: $8f
	add  h                                           ; $50ae: $84
	rrca                                             ; $50af: $0f
	nop                                              ; $50b0: $00
	add  a                                           ; $50b1: $87
	adc  l                                           ; $50b2: $8d
	ret  nz                                          ; $50b3: $c0

	ld   bc, $e0a0                                   ; $50b4: $01 $a0 $e0
	add  [hl]                                        ; $50b7: $86
	nop                                              ; $50b8: $00
	add  b                                           ; $50b9: $80
	ld   bc, $008a                                   ; $50ba: $01 $8a $00
	add  b                                           ; $50bd: $80
	ldh  a, [$80]                                    ; $50be: $f0 $80
	ld   hl, sp-$80                                  ; $50c0: $f8 $80
	ldh  a, [$88]                                    ; $50c2: $f0 $88
	nop                                              ; $50c4: $00
	add  b                                           ; $50c5: $80
	ld   a, b                                        ; $50c6: $78
	add  b                                           ; $50c7: $80
	db   $fc                                         ; $50c8: $fc
	add  b                                           ; $50c9: $80
	ld   a, b                                        ; $50ca: $78
	adc  h                                           ; $50cb: $8c
	nop                                              ; $50cc: $00
	add  b                                           ; $50cd: $80
	inc  b                                           ; $50ce: $04
	add  b                                           ; $50cf: $80
	nop                                              ; $50d0: $00
	nop                                              ; $50d1: $00
	ld   [$0f89], sp                                 ; $50d2: $08 $89 $0f
	add  b                                           ; $50d5: $80
	adc  a                                           ; $50d6: $8f
	add  b                                           ; $50d7: $80
	rrca                                             ; $50d8: $0f
	nop                                              ; $50d9: $00
	add  a                                           ; $50da: $87
	add  l                                           ; $50db: $85
	ret  nz                                          ; $50dc: $c0

	add  hl, bc                                      ; $50dd: $09
	add  b                                           ; $50de: $80

jr_01b_50df:
	ld   b, b                                        ; $50df: $40
	ld   h, b                                        ; $50e0: $60
	jr   nz, jr_01b_511b                             ; $50e1: $20 $38

jr_01b_50e3:
	jr   jr_01b_5104                                 ; $50e3: $18 $1f

jr_01b_50e5:
	rlca                                             ; $50e5: $07
	ld   sp, hl                                      ; $50e6: $f9
	ld   bc, $008a                                   ; $50e7: $01 $8a $00
	add  b                                           ; $50ea: $80
	rst  $38                                         ; $50eb: $ff
	add  b                                           ; $50ec: $80
	ld   d, b                                        ; $50ed: $50
	adc  d                                           ; $50ee: $8a
	nop                                              ; $50ef: $00
	add  b                                           ; $50f0: $80
	rst  $38                                         ; $50f1: $ff
	add  b                                           ; $50f2: $80

jr_01b_50f3:
	ld   d, h                                        ; $50f3: $54
	adc  d                                           ; $50f4: $8a
	nop                                              ; $50f5: $00
	add  b                                           ; $50f6: $80
	rst  $38                                         ; $50f7: $ff
	add  b                                           ; $50f8: $80
	dec  d                                           ; $50f9: $15
	add  b                                           ; $50fa: $80
	nop                                              ; $50fb: $00
	add  b                                           ; $50fc: $80
	ld   a, [hl+]                                    ; $50fd: $2a
	add  b                                           ; $50fe: $80
	nop                                              ; $50ff: $00
	add  b                                           ; $5100: $80
	ld   a, [bc]                                     ; $5101: $0a
	add  d                                           ; $5102: $82
	nop                                              ; $5103: $00

jr_01b_5104:
	add  b                                           ; $5104: $80
	rst  $38                                         ; $5105: $ff
	ld   bc, $4f48                                   ; $5106: $01 $48 $4f
	add  b                                           ; $5109: $80
	rrca                                             ; $510a: $0f
	add  b                                           ; $510b: $80
	adc  a                                           ; $510c: $8f
	add  b                                           ; $510d: $80
	rrca                                             ; $510e: $0f
	rlca                                             ; $510f: $07
	rla                                              ; $5110: $17
	rra                                              ; $5111: $1f
	cpl                                              ; $5112: $2f
	ccf                                              ; $5113: $3f
	rst  JumpTable                                         ; $5114: $df
	rst  $38                                         ; $5115: $ff
	ccf                                              ; $5116: $3f
	rst  $38                                         ; $5117: $ff
	add  b                                           ; $5118: $80
	xor  d                                           ; $5119: $aa
	add  b                                           ; $511a: $80

jr_01b_511b:
	ld   d, l                                        ; $511b: $55
	add  b                                           ; $511c: $80

jr_01b_511d:
	xor  d                                           ; $511d: $aa
	adc  e                                           ; $511e: $8b
	nop                                              ; $511f: $00
	add  b                                           ; $5120: $80

jr_01b_5121:
	rrca                                             ; $5121: $0f
	add  b                                           ; $5122: $80
	ld   [de], a                                     ; $5123: $12
	add  b                                           ; $5124: $80
	ld   a, [bc]                                     ; $5125: $0a
	add  b                                           ; $5126: $80

jr_01b_5127:
	ccf                                              ; $5127: $3f
	add  b                                           ; $5128: $80
	jr   nz, @-$7e                                   ; $5129: $20 $80

	cpl                                              ; $512b: $2f
	add  b                                           ; $512c: $80
	nop                                              ; $512d: $00
	add  b                                           ; $512e: $80
	add  b                                           ; $512f: $80
	add  b                                           ; $5130: $80
	ld   [bc], a                                     ; $5131: $02
	add  d                                           ; $5132: $82
	add  d                                           ; $5133: $82
	add  b                                           ; $5134: $80
	and  $80                                         ; $5135: $e6 $80
	ld   h, $80                                      ; $5137: $26 $80
	xor  d                                           ; $5139: $aa
	add  b                                           ; $513a: $80
	add  d                                           ; $513b: $82
	add  b                                           ; $513c: $80
	nop                                              ; $513d: $00
	add  d                                           ; $513e: $82
	ld   hl, $fa80                                   ; $513f: $21 $80 $fa
	add  b                                           ; $5142: $80
	nop                                              ; $5143: $00
	add  b                                           ; $5144: $80
	ld   [hl], c                                     ; $5145: $71
	add  b                                           ; $5146: $80
	ld   bc, $7380                                   ; $5147: $01 $80 $73
	add  b                                           ; $514a: $80
	nop                                              ; $514b: $00
	add  b                                           ; $514c: $80
	db   $10                                         ; $514d: $10
	add  b                                           ; $514e: $80
	inc  a                                           ; $514f: $3c
	add  b                                           ; $5150: $80
	db   $10                                         ; $5151: $10
	add  b                                           ; $5152: $80
	ld   a, [hl]                                     ; $5153: $7e
	add  b                                           ; $5154: $80
	inc  b                                           ; $5155: $04
	add  b                                           ; $5156: $80
	ld   a, [hl]                                     ; $5157: $7e
	add  b                                           ; $5158: $80
	inc  h                                           ; $5159: $24
	add  d                                           ; $515a: $82
	nop                                              ; $515b: $00
	add  b                                           ; $515c: $80
	jr   nz, jr_01b_50df                             ; $515d: $20 $80

	db   $fd                                         ; $515f: $fd
	add  d                                           ; $5160: $82
	jr   nz, jr_01b_50e3                             ; $5161: $20 $80

	jr   c, jr_01b_50e5                              ; $5163: $38 $80

	ld   b, h                                        ; $5165: $44
	add  d                                           ; $5166: $82
	jr   z, @-$7e                                    ; $5167: $28 $80

	nop                                              ; $5169: $00
	add  b                                           ; $516a: $80
	ei                                               ; $516b: $fb
	add  b                                           ; $516c: $80
	db   $10                                         ; $516d: $10
	add  b                                           ; $516e: $80
	jr   nz, jr_01b_50f3                             ; $516f: $20 $82

	ld   b, c                                        ; $5171: $41
	add  d                                           ; $5172: $82
	nop                                              ; $5173: $00
	add  b                                           ; $5174: $80
	ld   b, b                                        ; $5175: $40
	add  b                                           ; $5176: $80
	ldh  a, [$80]                                    ; $5177: $f0 $80
	ld   b, b                                        ; $5179: $40
	add  b                                           ; $517a: $80
	ret  nz                                          ; $517b: $c0

	add  d                                           ; $517c: $82
	ld   b, b                                        ; $517d: $40
	add  d                                           ; $517e: $82
	nop                                              ; $517f: $00
	add  b                                           ; $5180: $80
	inc  a                                           ; $5181: $3c
	add  b                                           ; $5182: $80
	ld   [$1080], sp                                 ; $5183: $08 $80 $10
	add  b                                           ; $5186: $80
	ld   a, [hl]                                     ; $5187: $7e
	add  b                                           ; $5188: $80
	inc  b                                           ; $5189: $04
	add  b                                           ; $518a: $80
	ld   [$0084], sp                                 ; $518b: $08 $84 $00
	add  b                                           ; $518e: $80
	ld   [hl], c                                     ; $518f: $71
	add  b                                           ; $5190: $80
	xor  b                                           ; $5191: $a8
	add  b                                           ; $5192: $80
	and  h                                           ; $5193: $a4
	add  b                                           ; $5194: $80
	and  l                                           ; $5195: $a5
	add  b                                           ; $5196: $80
	and  h                                           ; $5197: $a4
	add  d                                           ; $5198: $82
	nop                                              ; $5199: $00
	add  b                                           ; $519a: $80
	jr   nz, jr_01b_511d                             ; $519b: $20 $80

	ei                                               ; $519d: $fb
	add  d                                           ; $519e: $82
	jr   nz, jr_01b_5121                             ; $519f: $20 $80

	ei                                               ; $51a1: $fb
	add  b                                           ; $51a2: $80
	jr   nz, jr_01b_5127                             ; $51a3: $20 $82

	nop                                              ; $51a5: $00
	add  b                                           ; $51a6: $80
	ld   b, b                                        ; $51a7: $40
	add  b                                           ; $51a8: $80
	rst  $30                                         ; $51a9: $f7
	add  d                                           ; $51aa: $82
	ld   b, b                                        ; $51ab: $40
	add  b                                           ; $51ac: $80
	pop  af                                          ; $51ad: $f1
	add  b                                           ; $51ae: $80
	ld   b, c                                        ; $51af: $41
	add  d                                           ; $51b0: $82
	and  b                                           ; $51b1: $a0
	add  b                                           ; $51b2: $80
	ld   [bc], a                                     ; $51b3: $02
	add  b                                           ; $51b4: $80
	rst  $28                                         ; $51b5: $ef
	add  b                                           ; $51b6: $80
	ld   b, d                                        ; $51b7: $42
	add  b                                           ; $51b8: $80

jr_01b_51b9:
	add  d                                           ; $51b9: $82
	add  b                                           ; $51ba: $80
	ld   [bc], a                                     ; $51bb: $02
	add  b                                           ; $51bc: $80
	rlca                                             ; $51bd: $07
	add  b                                           ; $51be: $80
	nop                                              ; $51bf: $00
	add  d                                           ; $51c0: $82
	inc  b                                           ; $51c1: $04
	add  b                                           ; $51c2: $80
	adc  b                                           ; $51c3: $88
	add  b                                           ; $51c4: $80
	ld   hl, $2480                                   ; $51c5: $21 $80 $24
	add  b                                           ; $51c8: $80
	dec  b                                           ; $51c9: $05
	add  b                                           ; $51ca: $80
	call z, $0080                                    ; $51cb: $cc $80 $00
	add  b                                           ; $51ce: $80
	ld   b, b                                        ; $51cf: $40
	add  b                                           ; $51d0: $80
	ldh  a, [$80]                                    ; $51d1: $f0 $80
	ld   b, e                                        ; $51d3: $43
	add  b                                           ; $51d4: $80
	ld   hl, sp-$80                                  ; $51d5: $f8 $80
	db   $10                                         ; $51d7: $10
	add  b                                           ; $51d8: $80
	ld   hl, sp-$80                                  ; $51d9: $f8 $80

jr_01b_51db:
	sub  c                                           ; $51db: $91
	add  d                                           ; $51dc: $82

jr_01b_51dd:
	nop                                              ; $51dd: $00
	add  b                                           ; $51de: $80
	add  a                                           ; $51df: $87
	add  b                                           ; $51e0: $80
	ldh  a, [$82]                                    ; $51e1: $f0 $82
	add  b                                           ; $51e3: $80
	add  b                                           ; $51e4: $80
	ldh  [$80], a                                    ; $51e5: $e0 $80
	db   $10                                         ; $51e7: $10
	add  d                                           ; $51e8: $82
	nop                                              ; $51e9: $00
	add  b                                           ; $51ea: $80
	ld   hl, sp-$80                                  ; $51eb: $f8 $80
	add  c                                           ; $51ed: $81
	add  b                                           ; $51ee: $80
	add  a                                           ; $51ef: $87
	add  b                                           ; $51f0: $80
	pop  bc                                          ; $51f1: $c1
	add  b                                           ; $51f2: $80
	and  c                                           ; $51f3: $a1
	add  b                                           ; $51f4: $80
	and  b                                           ; $51f5: $a0
	add  h                                           ; $51f6: $84
	nop                                              ; $51f7: $00
	add  b                                           ; $51f8: $80
	ld   [$e880], sp                                 ; $51f9: $08 $80 $e8
	add  d                                           ; $51fc: $82
	ld   [$8880], sp                                 ; $51fd: $08 $80 $88
	add  [hl]                                        ; $5200: $86

jr_01b_5201:
	nop                                              ; $5201: $00
	add  b                                           ; $5202: $80
	add  b                                           ; $5203: $80
	add  h                                           ; $5204: $84
	ld   b, b                                        ; $5205: $40
	add  b                                           ; $5206: $80
	inc  b                                           ; $5207: $04
	add  d                                           ; $5208: $82

jr_01b_5209:
	inc  bc                                          ; $5209: $03
	add  b                                           ; $520a: $80
	inc  e                                           ; $520b: $1c
	add  [hl]                                        ; $520c: $86
	nop                                              ; $520d: $00
	add  b                                           ; $520e: $80
	add  d                                           ; $520f: $82
	add  d                                           ; $5210: $82
	ld   [bc], a                                     ; $5211: $02
	add  b                                           ; $5212: $80
	ldh  [c], a                                      ; $5213: $e2
	add  [hl]                                        ; $5214: $86
	nop                                              ; $5215: $00
	add  b                                           ; $5216: $80
	ld   bc, $f980                                   ; $5217: $01 $80 $f9
	add  b                                           ; $521a: $80
	adc  c                                           ; $521b: $89
	add  b                                           ; $521c: $80
	ld   sp, hl                                      ; $521d: $f9
	add  [hl]                                        ; $521e: $86
	nop                                              ; $521f: $00
	add  b                                           ; $5220: $80
	inc  h                                           ; $5221: $24
	add  b                                           ; $5222: $80
	inc  b                                           ; $5223: $04
	add  b                                           ; $5224: $80
	inc  c                                           ; $5225: $0c
	add  b                                           ; $5226: $80
	inc  b                                           ; $5227: $04
	add  [hl]                                        ; $5228: $86
	nop                                              ; $5229: $00
	add  d                                           ; $522a: $82
	inc  b                                           ; $522b: $04
	add  b                                           ; $522c: $80
	ld   [$3080], sp                                 ; $522d: $08 $80 $30
	add  [hl]                                        ; $5230: $86
	nop                                              ; $5231: $00
	add  b                                           ; $5232: $80
	ld   b, c                                        ; $5233: $41
	add  b                                           ; $5234: $80
	ld   b, b                                        ; $5235: $40
	add  b                                           ; $5236: $80
	jr   nz, jr_01b_51b9                             ; $5237: $20 $80

	db   $10                                         ; $5239: $10
	add  [hl]                                        ; $523a: $86
	nop                                              ; $523b: $00
	add  b                                           ; $523c: $80
	ld   b, b                                        ; $523d: $40
	add  b                                           ; $523e: $80
	ret  nz                                          ; $523f: $c0

	add  b                                           ; $5240: $80
	ld   b, d                                        ; $5241: $42
	add  b                                           ; $5242: $80
	add  l                                           ; $5243: $85
	add  b                                           ; $5244: $80
	ld   [bc], a                                     ; $5245: $02
	add  h                                           ; $5246: $84
	nop                                              ; $5247: $00
	add  h                                           ; $5248: $84
	db   $10                                         ; $5249: $10
	add  b                                           ; $524a: $80
	inc  c                                           ; $524b: $0c
	add  [hl]                                        ; $524c: $86
	nop                                              ; $524d: $00
	add  b                                           ; $524e: $80
	and  h                                           ; $524f: $a4
	add  b                                           ; $5250: $80
	ld   b, l                                        ; $5251: $45
	add  b                                           ; $5252: $80
	add  hl, bc                                      ; $5253: $09
	add  b                                           ; $5254: $80
	jr   nc, jr_01b_51dd                             ; $5255: $30 $86

	nop                                              ; $5257: $00
	add  b                                           ; $5258: $80
	jr   nz, jr_01b_51db                             ; $5259: $20 $80

	di                                               ; $525b: $f3
	add  b                                           ; $525c: $80
	ld   a, [hl+]                                    ; $525d: $2a
	add  b                                           ; $525e: $80
	pop  hl                                          ; $525f: $e1
	add  [hl]                                        ; $5260: $86
	nop                                              ; $5261: $00
	add  b                                           ; $5262: $80
	ld   b, c                                        ; $5263: $41
	add  b                                           ; $5264: $80
	pop  hl                                          ; $5265: $e1
	add  b                                           ; $5266: $80
	ld   d, b                                        ; $5267: $50
	add  b                                           ; $5268: $80
	ret  nz                                          ; $5269: $c0

	add  [hl]                                        ; $526a: $86
	nop                                              ; $526b: $00
	add  d                                           ; $526c: $82
	ld   a, [bc]                                     ; $526d: $0a
	add  b                                           ; $526e: $80
	adc  d                                           ; $526f: $8a
	add  b                                           ; $5270: $80
	ld   b, [hl]                                     ; $5271: $46
	add  [hl]                                        ; $5272: $86
	nop                                              ; $5273: $00
	add  h                                           ; $5274: $84
	inc  h                                           ; $5275: $24
	add  b                                           ; $5276: $80
	ld   b, h                                        ; $5277: $44
	add  [hl]                                        ; $5278: $86

jr_01b_5279:
	nop                                              ; $5279: $00
	add  b                                           ; $527a: $80
	sub  b                                           ; $527b: $90
	add  b                                           ; $527c: $80
	db   $10                                         ; $527d: $10
	add  b                                           ; $527e: $80
	jr   nc, jr_01b_5201                             ; $527f: $30 $80

	db   $10                                         ; $5281: $10
	add  [hl]                                        ; $5282: $86
	nop                                              ; $5283: $00
	add  d                                           ; $5284: $82
	db   $10                                         ; $5285: $10
	add  b                                           ; $5286: $80
	jr   nz, jr_01b_5209                             ; $5287: $20 $80

	ret  nz                                          ; $5289: $c0

	add  [hl]                                        ; $528a: $86
	nop                                              ; $528b: $00
	add  d                                           ; $528c: $82
	add  b                                           ; $528d: $80
	add  d                                           ; $528e: $82
	add  h                                           ; $528f: $84
	add  b                                           ; $5290: $80
	add  e                                           ; $5291: $83
	add  h                                           ; $5292: $84
	nop                                              ; $5293: $00
	add  b                                           ; $5294: $80
	ld   c, b                                        ; $5295: $48
	add  b                                           ; $5296: $80
	ret  z                                           ; $5297: $c8

	add  d                                           ; $5298: $82
	dec  b                                           ; $5299: $05
	add  b                                           ; $529a: $80
	add  d                                           ; $529b: $82
	add  h                                           ; $529c: $84
	nop                                              ; $529d: $00
	add  b                                           ; $529e: $80
	ld   b, b                                        ; $529f: $40
	add  d                                           ; $52a0: $82
	nop                                              ; $52a1: $00
	add  b                                           ; $52a2: $80
	ld   [$1480], sp                                 ; $52a3: $08 $80 $14
	add  b                                           ; $52a6: $80
	ld   [$0081], sp                                 ; $52a7: $08 $81 $00
	ld   bc, $fff0                                   ; $52aa: $01 $f0 $ff
	add  b                                           ; $52ad: $80
	ld   hl, sp-$80                                  ; $52ae: $f8 $80
	ei                                               ; $52b0: $fb

jr_01b_52b1:
	add  d                                           ; $52b1: $82
	ld   a, [$fb80]                                  ; $52b2: $fa $80 $fb
	add  b                                           ; $52b5: $80
	ld   hl, sp-$80                                  ; $52b6: $f8 $80
	ld   sp, hl                                      ; $52b8: $f9
	ld   bc, $ff0f                                   ; $52b9: $01 $0f $ff
	add  b                                           ; $52bc: $80
	nop                                              ; $52bd: $00
	add  b                                           ; $52be: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $52bf: $cf
	add  b                                           ; $52c0: $80
	ld   d, b                                        ; $52c1: $50
	add  b                                           ; $52c2: $80
	ld   a, a                                        ; $52c3: $7f
	nop                                              ; $52c4: $00
	rst  $38                                         ; $52c5: $ff
	add  b                                           ; $52c6: $80
	ret  nz                                          ; $52c7: $c0

	add  d                                           ; $52c8: $82
	add  b                                           ; $52c9: $80
	nop                                              ; $52ca: $00
	rst  $38                                         ; $52cb: $ff
	add  b                                           ; $52cc: $80
	nop                                              ; $52cd: $00
	add  b                                           ; $52ce: $80
	rst  $38                                         ; $52cf: $ff
	add  b                                           ; $52d0: $80
	nop                                              ; $52d1: $00
	add  c                                           ; $52d2: $81
	rst  $38                                         ; $52d3: $ff
	add  e                                           ; $52d4: $83
	nop                                              ; $52d5: $00
	nop                                              ; $52d6: $00
	push af                                          ; $52d7: $f5
	adc  l                                           ; $52d8: $8d

jr_01b_52d9:
	ld   a, [$0f00]                                  ; $52d9: $fa $00 $0f
	adc  b                                           ; $52dc: $88
	nop                                              ; $52dd: $00
	add  h                                           ; $52de: $84
	ld   bc, $0080                                   ; $52df: $01 $80 $00
	add  b                                           ; $52e2: $80
	inc  b                                           ; $52e3: $04
	add  b                                           ; $52e4: $80
	ld   a, b                                        ; $52e5: $78
	add  b                                           ; $52e6: $80
	sub  h                                           ; $52e7: $94
	add  b                                           ; $52e8: $80
	ld   d, h                                        ; $52e9: $54
	add  b                                           ; $52ea: $80
	rst  $38                                         ; $52eb: $ff
	add  b                                           ; $52ec: $80
	ld   bc, $7d80                                   ; $52ed: $01 $80 $7d
	add  d                                           ; $52f0: $82
	nop                                              ; $52f1: $00
	add  d                                           ; $52f2: $82
	ld   de, $1780                                   ; $52f3: $11 $80 $17
	add  b                                           ; $52f6: $80
	jr   nc, jr_01b_5279                             ; $52f7: $30 $80

	inc  sp                                          ; $52f9: $33
	add  b                                           ; $52fa: $80
	ld   d, b                                        ; $52fb: $50
	add  h                                           ; $52fc: $84
	nop                                              ; $52fd: $00
	add  b                                           ; $52fe: $80
	ld   [$c980], sp                                 ; $52ff: $08 $80 $c9
	add  b                                           ; $5302: $80
	ld   [$8880], sp                                 ; $5303: $08 $80 $88
	add  b                                           ; $5306: $80
	ld   [$0082], sp                                 ; $5307: $08 $82 $00
	add  d                                           ; $530a: $82

jr_01b_530b:
	ld   [bc], a                                     ; $530b: $02
	add  b                                           ; $530c: $80

jr_01b_530d:
	db   $e3                                         ; $530d: $e3
	add  b                                           ; $530e: $80
	inc  l                                           ; $530f: $2c
	add  b                                           ; $5310: $80
	ld   b, b                                        ; $5311: $40
	add  b                                           ; $5312: $80
	rlca                                             ; $5313: $07
	add  d                                           ; $5314: $82
	nop                                              ; $5315: $00
	add  b                                           ; $5316: $80
	add  a                                           ; $5317: $87
	add  b                                           ; $5318: $80
	add  l                                           ; $5319: $85
	add  b                                           ; $531a: $80
	rst  $20                                         ; $531b: $e7
	add  d                                           ; $531c: $82
	add  l                                           ; $531d: $85
	add  b                                           ; $531e: $80

jr_01b_531f:
	rst  $30                                         ; $531f: $f7
	add  d                                           ; $5320: $82
	nop                                              ; $5321: $00
	add  d                                           ; $5322: $82
	ld   b, b                                        ; $5323: $40
	add  b                                           ; $5324: $80
	ld   a, h                                        ; $5325: $7c
	add  b                                           ; $5326: $80
	ld   b, b                                        ; $5327: $40
	add  b                                           ; $5328: $80
	adc  b                                           ; $5329: $88
	add  b                                           ; $532a: $80
	jr   z, jr_01b_52b1                              ; $532b: $28 $84

	nop                                              ; $532d: $00
	add  b                                           ; $532e: $80
	add  b                                           ; $532f: $80
	add  b                                           ; $5330: $80
	add  c                                           ; $5331: $81
	add  d                                           ; $5332: $82

jr_01b_5333:
	add  b                                           ; $5333: $80
	add  b                                           ; $5334: $80
	add  c                                           ; $5335: $81
	add  h                                           ; $5336: $84
	nop                                              ; $5337: $00
	add  b                                           ; $5338: $80
	ld   [hl+], a                                    ; $5339: $22
	add  b                                           ; $533a: $80
	ld   a, [$2282]                                  ; $533b: $fa $82 $22
	add  b                                           ; $533e: $80
	ld   a, [$0084]                                  ; $533f: $fa $84 $00
	add  b                                           ; $5342: $80
	ld   [bc], a                                     ; $5343: $02
	add  b                                           ; $5344: $80

jr_01b_5345:
	rlca                                             ; $5345: $07
	add  h                                           ; $5346: $84
	ld   [bc], a                                     ; $5347: $02
	add  [hl]                                        ; $5348: $86
	nop                                              ; $5349: $00
	add  b                                           ; $534a: $80
	ret  nz                                          ; $534b: $c0

	add  b                                           ; $534c: $80
	nop                                              ; $534d: $00
	add  b                                           ; $534e: $80
	ldh  a, [$80]                                    ; $534f: $f0 $80
	db   $10                                         ; $5351: $10
	add  b                                           ; $5352: $80
	inc  b                                           ; $5353: $04
	add  b                                           ; $5354: $80
	inc  h                                           ; $5355: $24
	add  d                                           ; $5356: $82
	jr   jr_01b_52d9                                 ; $5357: $18 $80

	rst  $20                                         ; $5359: $e7
	add  h                                           ; $535a: $84
	nop                                              ; $535b: $00
	add  b                                           ; $535c: $80
	inc  de                                          ; $535d: $13
	add  b                                           ; $535e: $80
	db   $10                                         ; $535f: $10
	add  b                                           ; $5360: $80

jr_01b_5361:
	rla                                              ; $5361: $17
	add  b                                           ; $5362: $80
	inc  d                                           ; $5363: $14
	add  b                                           ; $5364: $80

jr_01b_5365:
	rla                                              ; $5365: $17
	add  h                                           ; $5366: $84
	nop                                              ; $5367: $00
	add  b                                           ; $5368: $80
	adc  b                                           ; $5369: $88
	add  b                                           ; $536a: $80

jr_01b_536b:
	ld   [$c980], sp                                 ; $536b: $08 $80 $c9
	add  b                                           ; $536e: $80
	ld   c, c                                        ; $536f: $49
	add  b                                           ; $5370: $80
	call z, $0088                                    ; $5371: $cc $88 $00
	add  d                                           ; $5374: $82
	ld   bc, $e680                                   ; $5375: $01 $80 $e6
	add  h                                           ; $5378: $84
	nop                                              ; $5379: $00
	add  b                                           ; $537a: $80
	add  l                                           ; $537b: $85
	add  b                                           ; $537c: $80
	add  a                                           ; $537d: $87
	add  b                                           ; $537e: $80
	ld   b, b                                        ; $537f: $40
	add  b                                           ; $5380: $80
	ld   b, l                                        ; $5381: $45
	add  b                                           ; $5382: $80
	dec  [hl]                                        ; $5383: $35
	add  h                                           ; $5384: $84
	nop                                              ; $5385: $00
	add  b                                           ; $5386: $80
	jr   z, jr_01b_530b                              ; $5387: $28 $82

	db   $10                                         ; $5389: $10
	add  b                                           ; $538a: $80
	jr   z, jr_01b_530d                              ; $538b: $28 $80

	ld   b, h                                        ; $538d: $44
	add  h                                           ; $538e: $84
	nop                                              ; $538f: $00
	add  b                                           ; $5390: $80
	add  b                                           ; $5391: $80
	add  b                                           ; $5392: $80
	add  h                                           ; $5393: $84
	add  b                                           ; $5394: $80
	add  l                                           ; $5395: $85
	add  b                                           ; $5396: $80
	ld   c, c                                        ; $5397: $49
	add  b                                           ; $5398: $80
	jr   nc, jr_01b_531f                             ; $5399: $30 $84

	nop                                              ; $539b: $00
	add  d                                           ; $539c: $82
	ld   [hl+], a                                    ; $539d: $22
	add  b                                           ; $539e: $80
	ldh  a, [c]                                      ; $539f: $f2
	add  b                                           ; $53a0: $80
	add  hl, hl                                      ; $53a1: $29
	add  b                                           ; $53a2: $80
	ldh  [$84], a                                    ; $53a3: $e0 $84
	nop                                              ; $53a5: $00
	add  b                                           ; $53a6: $80
	ld   [bc], a                                     ; $53a7: $02
	add  d                                           ; $53a8: $82
	ld   [de], a                                     ; $53a9: $12
	add  b                                           ; $53aa: $80
	ld   [hl+], a                                    ; $53ab: $22
	add  b                                           ; $53ac: $80
	jp   nz, $0084                                   ; $53ad: $c2 $84 $00

	add  b                                           ; $53b0: $80
	jr   nz, jr_01b_5333                             ; $53b1: $20 $80

	nop                                              ; $53b3: $00
	add  b                                           ; $53b4: $80
	add  b                                           ; $53b5: $80
	add  b                                           ; $53b6: $80
	add  d                                           ; $53b7: $82
	add  b                                           ; $53b8: $80
	ld   [hl], l                                     ; $53b9: $75
	add  b                                           ; $53ba: $80
	ld   [bc], a                                     ; $53bb: $02
	adc  b                                           ; $53bc: $88
	nop                                              ; $53bd: $00
	add  b                                           ; $53be: $80
	jr   nz, @-$7e                                   ; $53bf: $20 $80

	ld   hl, sp-$7e                                  ; $53c1: $f8 $82
	jr   nz, jr_01b_5345                             ; $53c3: $20 $80

	ld   hl, sp-$7c                                  ; $53c5: $f8 $84
	nop                                              ; $53c7: $00
	add  b                                           ; $53c8: $80
	ld   a, b                                        ; $53c9: $78
	add  b                                           ; $53ca: $80
	nop                                              ; $53cb: $00
	add  b                                           ; $53cc: $80
	ld   a, b                                        ; $53cd: $78
	add  b                                           ; $53ce: $80
	add  h                                           ; $53cf: $84
	add  b                                           ; $53d0: $80
	dec  b                                           ; $53d1: $05
	add  h                                           ; $53d2: $84
	nop                                              ; $53d3: $00
	add  [hl]                                        ; $53d4: $86
	ld   bc, $f980                                   ; $53d5: $01 $80 $f9
	add  b                                           ; $53d8: $80
	nop                                              ; $53d9: $00
	add  d                                           ; $53da: $82
	db   $10                                         ; $53db: $10
	add  b                                           ; $53dc: $80
	cp   $80                                         ; $53dd: $fe $80
	jr   z, jr_01b_5361                              ; $53df: $28 $80

	ld   a, h                                        ; $53e1: $7c
	add  b                                           ; $53e2: $80
	jr   z, jr_01b_5365                              ; $53e3: $28 $80

	jr   c, jr_01b_536b                              ; $53e5: $38 $84

	nop                                              ; $53e7: $00
	add  d                                           ; $53e8: $82
	ld   c, b                                        ; $53e9: $48
	add  b                                           ; $53ea: $80
	db   $fc                                         ; $53eb: $fc
	add  d                                           ; $53ec: $82
	ld   c, d                                        ; $53ed: $4a
	add  [hl]                                        ; $53ee: $86
	nop                                              ; $53ef: $00
	add  h                                           ; $53f0: $84
	add  h                                           ; $53f1: $84
	add  b                                           ; $53f2: $80
	and  h                                           ; $53f3: $a4
	add  b                                           ; $53f4: $80
	nop                                              ; $53f5: $00
	add  b                                           ; $53f6: $80
	db   $10                                         ; $53f7: $10
	add  b                                           ; $53f8: $80
	cp   $80                                         ; $53f9: $fe $80
	db   $10                                         ; $53fb: $10
	add  b                                           ; $53fc: $80

jr_01b_53fd:
	ld   a, h                                        ; $53fd: $7c
	add  b                                           ; $53fe: $80
	ld   b, h                                        ; $53ff: $44
	add  b                                           ; $5400: $80
	ld   a, h                                        ; $5401: $7c
	nop                                              ; $5402: $00
	ld   b, h                                        ; $5403: $44
	add  c                                           ; $5404: $81
	ld   bc, $0090                                   ; $5405: $01 $90 $00
	ld   [bc], a                                     ; $5408: $02
	inc  b                                           ; $5409: $04
	nop                                              ; $540a: $00
	rlca                                             ; $540b: $07
	add  b                                           ; $540c: $80
	nop                                              ; $540d: $00
	rrca                                             ; $540e: $0f
	ld   bc, $030d                                   ; $540f: $01 $0d $03
	dec  bc                                          ; $5412: $0b
	inc  bc                                          ; $5413: $03
	ld   [bc], a                                     ; $5414: $02
	inc  bc                                          ; $5415: $03
	ld   a, [bc]                                     ; $5416: $0a
	rlca                                             ; $5417: $07
	rrca                                             ; $5418: $0f
	ld   [bc], a                                     ; $5419: $02
	inc  bc                                          ; $541a: $03
	nop                                              ; $541b: $00
	ld   c, $00                                      ; $541c: $0e $00
	ld   [$00a3], sp                                 ; $541e: $08 $a3 $00
	nop                                              ; $5421: $00
	add  b                                           ; $5422: $80
	add  l                                           ; $5423: $85
	nop                                              ; $5424: $00
	inc  c                                           ; $5425: $0c
	ld   b, h                                        ; $5426: $44
	add  b                                           ; $5427: $80
	cp   h                                           ; $5428: $bc
	ret  nz                                          ; $5429: $c0

	ret  z                                           ; $542a: $c8

	ldh  [rSVBK], a                                  ; $542b: $e0 $70
	ret  nz                                          ; $542d: $c0

	ret  nc                                          ; $542e: $d0

	ldh  [$6c], a                                    ; $542f: $e0 $6c
	ldh  [$fc], a                                    ; $5431: $e0 $fc
	add  b                                           ; $5433: $80
	ret  nz                                          ; $5434: $c0

	ld   bc, $e040                                   ; $5435: $01 $40 $e0
	add  e                                           ; $5438: $83
	nop                                              ; $5439: $00
	nop                                              ; $543a: $00
	ld   b, b                                        ; $543b: $40
	sub  a                                           ; $543c: $97
	nop                                              ; $543d: $00
	ld   c, $08                                      ; $543e: $0e $08
	nop                                              ; $5440: $00
	ld   [$4000], sp                                 ; $5441: $08 $00 $40
	nop                                              ; $5444: $00
	ld   h, b                                        ; $5445: $60
	nop                                              ; $5446: $00
	jr   z, jr_01b_5449                              ; $5447: $28 $00

jr_01b_5449:
	inc  c                                           ; $5449: $0c
	nop                                              ; $544a: $00
	ld   b, e                                        ; $544b: $43
	nop                                              ; $544c: $00
	ld   b, b                                        ; $544d: $40
	add  b                                           ; $544e: $80
	ld   [bc], a                                     ; $544f: $02
	dec  c                                           ; $5450: $0d
	inc  bc                                          ; $5451: $03
	dec  de                                          ; $5452: $1b
	rlca                                             ; $5453: $07
	ld   h, [hl]                                     ; $5454: $66
	ld   e, $7e                                      ; $5455: $1e $7e
	ld   b, $14                                      ; $5457: $06 $14
	ld   b, $14                                      ; $5459: $06 $14
	inc  bc                                          ; $545b: $03
	ld   a, [hl-]                                    ; $545c: $3a
	inc  bc                                          ; $545d: $03
	inc  hl                                          ; $545e: $23
	add  c                                           ; $545f: $81
	ld   bc, $0f00                                   ; $5460: $01 $00 $0f
	add  c                                           ; $5463: $81
	nop                                              ; $5464: $00
	nop                                              ; $5465: $00
	add  hl, de                                      ; $5466: $19
	add  c                                           ; $5467: $81
	nop                                              ; $5468: $00
	ld   [bc], a                                     ; $5469: $02
	jr   nc, jr_01b_546c                             ; $546a: $30 $00

jr_01b_546c:
	jr   nz, jr_01b_53fd                             ; $546c: $20 $8f

	nop                                              ; $546e: $00
	ld   b, $80                                      ; $546f: $06 $80
	nop                                              ; $5471: $00
	ld   [hl+], a                                    ; $5472: $22
	nop                                              ; $5473: $00
	ld   [hl+], a                                    ; $5474: $22
	nop                                              ; $5475: $00
	ld   [$0081], sp                                 ; $5476: $08 $81 $00
	jr   nz, jr_01b_5493                             ; $5479: $20 $18

	nop                                              ; $547b: $00
	jr   nz, jr_01b_547e                             ; $547c: $20 $00

jr_01b_547e:
	ld   b, b                                        ; $547e: $40
	and  b                                           ; $547f: $a0
	and  d                                           ; $5480: $a2
	ldh  [$ee], a                                    ; $5481: $e0 $ee
	ldh  [hScriptOpcodeParams+4], a                                    ; $5483: $e0 $a4
	ldh  a, [$57]                                    ; $5485: $f0 $57
	jr   nc, @+$35                                   ; $5487: $30 $33

	jr   c, @+$3e                                    ; $5489: $38 $3c

	jr   nc, jr_01b_54a1                             ; $548b: $30 $14

jr_01b_548d:
	ld   hl, sp+$38                                  ; $548d: $f8 $38
	ldh  [$ee], a                                    ; $548f: $e0 $ee
	and  b                                           ; $5491: $a0
	db   $e3                                         ; $5492: $e3

jr_01b_5493:
	nop                                              ; $5493: $00
	add  c                                           ; $5494: $81
	nop                                              ; $5495: $00
	jr   nz, jr_01b_5498                             ; $5496: $20 $00

jr_01b_5498:
	inc  b                                           ; $5498: $04
	nop                                              ; $5499: $00
	inc  b                                           ; $549a: $04
	add  c                                           ; $549b: $81
	nop                                              ; $549c: $00
	nop                                              ; $549d: $00
	db   $10                                         ; $549e: $10
	sub  l                                           ; $549f: $95
	nop                                              ; $54a0: $00

jr_01b_54a1:
	nop                                              ; $54a1: $00
	ld   bc, $0085                                   ; $54a2: $01 $85 $00
	ld   a, [bc]                                     ; $54a5: $0a
	inc  bc                                          ; $54a6: $03
	ld   bc, $013d                                   ; $54a7: $01 $3d $01
	ld   [hl+], a                                    ; $54aa: $22
	inc  bc                                          ; $54ab: $03
	dec  d                                           ; $54ac: $15
	rlca                                             ; $54ad: $07
	dec  b                                           ; $54ae: $05

jr_01b_54af:
	rlca                                             ; $54af: $07
	dec  bc                                          ; $54b0: $0b
	add  c                                           ; $54b1: $81
	inc  bc                                          ; $54b2: $03
	ld   a, [bc]                                     ; $54b3: $0a
	ld   [$1101], sp                                 ; $54b4: $08 $01 $11
	ld   bc, $002c                                   ; $54b7: $01 $2c $00
	ld   sp, $0600                                   ; $54ba: $31 $00 $06
	nop                                              ; $54bd: $00
	inc  b                                           ; $54be: $04
	and  e                                           ; $54bf: $a3
	nop                                              ; $54c0: $00
	ld   a, [de]                                     ; $54c1: $1a
	adc  b                                           ; $54c2: $88
	nop                                              ; $54c3: $00
	stop                                             ; $54c4: $10 $00
	ldh  [$80], a                                    ; $54c6: $e0 $80
	ld   [hl], b                                     ; $54c8: $70

jr_01b_54c9:
	ldh  a, [$96]                                    ; $54c9: $f0 $96
	ldh  a, [$fa]                                    ; $54cb: $f0 $fa
	ld   hl, sp-$3c                                  ; $54cd: $f8 $c4
	ldh  [$f6], a                                    ; $54cf: $e0 $f6
	ldh  a, [rAUD4POLY]                              ; $54d1: $f0 $22
	ldh  [$34], a                                    ; $54d3: $e0 $34
	jr   nc, jr_01b_54db                             ; $54d5: $30 $04

	nop                                              ; $54d7: $00
	call z, $2000                                    ; $54d8: $cc $00 $20

jr_01b_54db:
	nop                                              ; $54db: $00
	db   $10                                         ; $54dc: $10
	sub  a                                           ; $54dd: $97
	nop                                              ; $54de: $00
	nop                                              ; $54df: $00
	ld   bc, $0083                                   ; $54e0: $01 $83 $00
	nop                                              ; $54e3: $00
	inc  bc                                          ; $54e4: $03
	add  c                                           ; $54e5: $81
	ld   bc, $0708                                   ; $54e6: $01 $08 $07
	inc  bc                                          ; $54e9: $03
	jp   z, $f503                                    ; $54ea: $ca $03 $f5

	rlca                                             ; $54ed: $07
	dec  hl                                          ; $54ee: $2b
	rrca                                             ; $54ef: $0f
	ld   [bc], a                                     ; $54f0: $02
	add  l                                           ; $54f1: $85
	ld   b, $0e                                      ; $54f2: $06 $0e
	cpl                                              ; $54f4: $2f
	rrca                                             ; $54f5: $0f
	daa                                              ; $54f6: $27
	rlca                                             ; $54f7: $07
	cpl                                              ; $54f8: $2f
	rrca                                             ; $54f9: $0f
	ld   b, $07                                      ; $54fa: $06 $07
	ld   [hl], h                                     ; $54fc: $74
	ld   b, $45                                      ; $54fd: $06 $45
	inc  b                                           ; $54ff: $04
	ld   [bc], a                                     ; $5500: $02
	nop                                              ; $5501: $00
	inc  b                                           ; $5502: $04
	add  c                                           ; $5503: $81
	nop                                              ; $5504: $00
	ld   [bc], a                                     ; $5505: $02
	jr   jr_01b_5508                                 ; $5506: $18 $00

jr_01b_5508:
	db   $10                                         ; $5508: $10
	sub  e                                           ; $5509: $93
	nop                                              ; $550a: $00
	jr   jr_01b_548d                                 ; $550b: $18 $80

	nop                                              ; $550d: $00
	ld   [bc], a                                     ; $550e: $02
	nop                                              ; $550f: $00
	ld   b, h                                        ; $5510: $44
	nop                                              ; $5511: $00
	ld   a, [$34c0]                                  ; $5512: $fa $c0 $34
	ldh  a, [$d0]                                    ; $5515: $f0 $d0
	ldh  a, [rPCM12]                                 ; $5517: $f0 $76
	ld   [hl], b                                     ; $5519: $70
	ld   a, [hl+]                                    ; $551a: $2a
	jr   c, jr_01b_553d                              ; $551b: $38 $20

	jr   nc, @+$2a                                   ; $551d: $30 $28

	jr   c, jr_01b_5557                              ; $551f: $38 $36

	inc  a                                           ; $5521: $3c
	ld   [hl], c                                     ; $5522: $71
	ld   a, b                                        ; $5523: $78
	ei                                               ; $5524: $fb
	add  c                                           ; $5525: $81
	ld   hl, sp+$0a                                  ; $5526: $f8 $0a
	db   $10                                         ; $5528: $10
	ldh  [$2e], a                                    ; $5529: $e0 $2e
	jr   nz, jr_01b_54af                             ; $552b: $20 $82

	nop                                              ; $552d: $00
	ld   b, b                                        ; $552e: $40
	nop                                              ; $552f: $00
	jr   nz, jr_01b_5532                             ; $5530: $20 $00

jr_01b_5532:
	db   $10                                         ; $5532: $10

jr_01b_5533:
	sub  e                                           ; $5533: $93
	nop                                              ; $5534: $00

jr_01b_5535:
	inc  c                                           ; $5535: $0c
	ld   bc, $2000                                   ; $5536: $01 $00 $20
	nop                                              ; $5539: $00
	ld   [hl], $00                                   ; $553a: $36 $00
	add  hl, bc                                      ; $553c: $09

jr_01b_553d:
	nop                                              ; $553d: $00
	ld   b, $00                                      ; $553e: $06 $00
	ld   h, b                                        ; $5540: $60
	nop                                              ; $5541: $00
	ld   l, b                                        ; $5542: $68
	add  c                                           ; $5543: $81
	nop                                              ; $5544: $00
	nop                                              ; $5545: $00
	jr   nc, jr_01b_54c9                             ; $5546: $30 $81

	nop                                              ; $5548: $00
	ld   a, [bc]                                     ; $5549: $0a
	jr   nz, jr_01b_554c                             ; $554a: $20 $00

jr_01b_554c:
	jr   nz, jr_01b_554e                             ; $554c: $20 $00

jr_01b_554e:
	ld   b, b                                        ; $554e: $40
	nop                                              ; $554f: $00
	add  b                                           ; $5550: $80
	nop                                              ; $5551: $00
	ret  nz                                          ; $5552: $c0

	nop                                              ; $5553: $00
	db   $10                                         ; $5554: $10
	add  e                                           ; $5555: $83
	nop                                              ; $5556: $00

jr_01b_5557:
	ld   a, [bc]                                     ; $5557: $0a
	ld   c, b                                        ; $5558: $48
	nop                                              ; $5559: $00
	halt                                             ; $555a: $76
	nop                                              ; $555b: $00
	ld   bc, $0700                                   ; $555c: $01 $00 $07
	nop                                              ; $555f: $00
	jr   jr_01b_5562                                 ; $5560: $18 $00

jr_01b_5562:
	db   $10                                         ; $5562: $10
	adc  a                                           ; $5563: $8f
	nop                                              ; $5564: $00
	ld   a, [bc]                                     ; $5565: $0a
	ld   [$f000], sp                                 ; $5566: $08 $00 $f0
	nop                                              ; $5569: $00
	ret  nz                                          ; $556a: $c0

	nop                                              ; $556b: $00
	ld   h, $00                                      ; $556c: $26 $00
	ld   [de], a                                     ; $556e: $12
	nop                                              ; $556f: $00
	ld   [$0081], sp                                 ; $5570: $08 $81 $00
	ld   b, $04                                      ; $5573: $06 $04
	nop                                              ; $5575: $00
	inc  b                                           ; $5576: $04
	nop                                              ; $5577: $00
	rlca                                             ; $5578: $07
	nop                                              ; $5579: $00
	ld   bc, $0083                                   ; $557a: $01 $83 $00
	db   $10                                         ; $557d: $10
	ld   bc, $0700                                   ; $557e: $01 $00 $07
	nop                                              ; $5581: $00
	inc  b                                           ; $5582: $04
	nop                                              ; $5583: $00
	inc  b                                           ; $5584: $04
	nop                                              ; $5585: $00

jr_01b_5586:
	ld   [$1200], sp                                 ; $5586: $08 $00 $12
	nop                                              ; $5589: $00
	ld   h, [hl]                                     ; $558a: $66
	nop                                              ; $558b: $00

jr_01b_558c:
	add  b                                           ; $558c: $80
	nop                                              ; $558d: $00
	ret  c                                           ; $558e: $d8

	add  c                                           ; $558f: $81
	nop                                              ; $5590: $00
	nop                                              ; $5591: $00
	jr   nz, jr_01b_5535                             ; $5592: $20 $a1

	nop                                              ; $5594: $00
	nop                                              ; $5595: $00
	ld   bc, $0083                                   ; $5596: $01 $83 $00
	nop                                              ; $5599: $00
	inc  bc                                          ; $559a: $03
	add  c                                           ; $559b: $81
	ld   bc, $0600                                   ; $559c: $01 $00 $06
	add  e                                           ; $559f: $83
	ld   [bc], a                                     ; $55a0: $02
	nop                                              ; $55a1: $00
	dec  c                                           ; $55a2: $0d
	add  c                                           ; $55a3: $81
	inc  b                                           ; $55a4: $04
	nop                                              ; $55a5: $00
	ld   [bc], a                                     ; $55a6: $02

jr_01b_55a7:
	add  c                                           ; $55a7: $81
	nop                                              ; $55a8: $00
	nop                                              ; $55a9: $00
	inc  b                                           ; $55aa: $04
	add  c                                           ; $55ab: $81
	nop                                              ; $55ac: $00
	nop                                              ; $55ad: $00
	jr   jr_01b_5533                                 ; $55ae: $18 $83

	nop                                              ; $55b0: $00
	nop                                              ; $55b1: $00
	db   $10                                         ; $55b2: $10
	add  a                                           ; $55b3: $87
	nop                                              ; $55b4: $00
	inc  de                                          ; $55b5: $13
	ld   bc, $0300                                   ; $55b6: $01 $00 $03
	nop                                              ; $55b9: $00
	inc  b                                           ; $55ba: $04
	nop                                              ; $55bb: $00
	ld   a, [bc]                                     ; $55bc: $0a
	nop                                              ; $55bd: $00
	stop                                             ; $55be: $10 $00
	inc  b                                           ; $55c0: $04
	nop                                              ; $55c1: $00
	jr   nc, jr_01b_55d4                             ; $55c2: $30 $10

	ld   l, b                                        ; $55c4: $68
	jr   nz, jr_01b_55a7                             ; $55c5: $20 $e0

	ld   h, b                                        ; $55c7: $60
	ld   d, b                                        ; $55c8: $50
	ld   b, b                                        ; $55c9: $40
	add  b                                           ; $55ca: $80
	ret  nz                                          ; $55cb: $c0

	nop                                              ; $55cc: $00
	and  b                                           ; $55cd: $a0
	add  c                                           ; $55ce: $81
	add  b                                           ; $55cf: $80
	nop                                              ; $55d0: $00
	ld   b, b                                        ; $55d1: $40
	add  c                                           ; $55d2: $81
	nop                                              ; $55d3: $00

jr_01b_55d4:
	nop                                              ; $55d4: $00
	add  b                                           ; $55d5: $80
	add  l                                           ; $55d6: $85
	nop                                              ; $55d7: $00
	ld   [bc], a                                     ; $55d8: $02
	ld   bc, $0300                                   ; $55d9: $01 $00 $03
	add  c                                           ; $55dc: $81
	ld   bc, $0700                                   ; $55dd: $01 $00 $07
	add  c                                           ; $55e0: $81
	inc  bc                                          ; $55e1: $03
	nop                                              ; $55e2: $00
	ld   c, $81                                      ; $55e3: $0e $81
	ld   b, $0a                                      ; $55e5: $06 $0a
	ld   h, $06                                      ; $55e7: $26 $06
	sbc  l                                           ; $55e9: $9d
	inc  c                                           ; $55ea: $0c
	ld   c, h                                        ; $55eb: $4c
	inc  c                                           ; $55ec: $0c
	sbc  h                                           ; $55ed: $9c
	inc  a                                           ; $55ee: $3c
	ld   a, [hl-]                                    ; $55ef: $3a
	jr   c, jr_01b_566a                              ; $55f0: $38 $78

	add  c                                           ; $55f2: $81
	jr   @+$06                                       ; $55f3: $18 $04

	ret  c                                           ; $55f5: $d8

	jr   jr_01b_558c                                 ; $55f6: $18 $94

	jr   nc, jr_01b_566a                             ; $55f8: $30 $70

	add  c                                           ; $55fa: $81
	stop                                             ; $55fb: $10 $00
	jr   z, jr_01b_5586                              ; $55fd: $28 $87

	nop                                              ; $55ff: $00
	nop                                              ; $5600: $00
	db   $10                                         ; $5601: $10
	adc  c                                           ; $5602: $89
	nop                                              ; $5603: $00
	inc  b                                           ; $5604: $04
	ld   bc, $0300                                   ; $5605: $01 $00 $03
	nop                                              ; $5608: $00
	ld   b, $81                                      ; $5609: $06 $81
	nop                                              ; $560b: $00
	ld   b, $0c                                      ; $560c: $06 $0c
	nop                                              ; $560e: $00
	stop                                             ; $560f: $10 $00
	jr   z, jr_01b_5613                              ; $5611: $28 $00

jr_01b_5613:
	ld   h, b                                        ; $5613: $60
	add  c                                           ; $5614: $81
	jr   nz, jr_01b_5617                             ; $5615: $20 $00

jr_01b_5617:
	ret  nc                                          ; $5617: $d0

	add  c                                           ; $5618: $81
	ld   b, b                                        ; $5619: $40
	nop                                              ; $561a: $00
	and  b                                           ; $561b: $a0
	add  e                                           ; $561c: $83
	add  b                                           ; $561d: $80
	nop                                              ; $561e: $00
	ld   b, b                                        ; $561f: $40
	add  c                                           ; $5620: $81
	nop                                              ; $5621: $00
	nop                                              ; $5622: $00
	add  b                                           ; $5623: $80
	adc  e                                           ; $5624: $8b
	nop                                              ; $5625: $00
	nop                                              ; $5626: $00
	inc  b                                           ; $5627: $04
	add  e                                           ; $5628: $83
	nop                                              ; $5629: $00
	inc  c                                           ; $562a: $0c
	ld   bc, $0a00                                   ; $562b: $01 $00 $0a
	inc  b                                           ; $562e: $04

jr_01b_562f:
	add  l                                           ; $562f: $85
	dec  b                                           ; $5630: $05
	push hl                                          ; $5631: $e5
	dec  b                                           ; $5632: $05
	rla                                              ; $5633: $17
	cpl                                              ; $5634: $2f
	ld   l, a                                        ; $5635: $6f
	rra                                              ; $5636: $1f
	ccf                                              ; $5637: $3f
	add  c                                           ; $5638: $81
	rrca                                             ; $5639: $0f
	ld   [$0eea], sp                                 ; $563a: $08 $ea $0e
	adc  [hl]                                        ; $563d: $8e
	ld   a, $7e                                      ; $563e: $3e $7e
	ld   e, $3e                                      ; $5640: $1e $3e
	ld   b, $15                                      ; $5642: $06 $15
	add  l                                           ; $5644: $85
	inc  b                                           ; $5645: $04
	nop                                              ; $5646: $00
	ld   [bc], a                                     ; $5647: $02
	add  e                                           ; $5648: $83
	nop                                              ; $5649: $00
	nop                                              ; $564a: $00
	inc  b                                           ; $564b: $04
	add  e                                           ; $564c: $83
	nop                                              ; $564d: $00
	nop                                              ; $564e: $00
	ld   [$0083], sp                                 ; $564f: $08 $83 $00
	nop                                              ; $5652: $00
	ld   bc, $0081                                   ; $5653: $01 $81 $00
	nop                                              ; $5656: $00
	inc  bc                                          ; $5657: $03
	add  c                                           ; $5658: $81
	nop                                              ; $5659: $00
	ld   [bc], a                                     ; $565a: $02
	ld   b, $00                                      ; $565b: $06 $00
	ld   [$0081], sp                                 ; $565d: $08 $81 $00
	inc  bc                                          ; $5660: $03
	inc  d                                           ; $5661: $14
	nop                                              ; $5662: $00
	jr   nz, jr_01b_5665                             ; $5663: $20 $00

jr_01b_5665:
	add  b                                           ; $5665: $80
	stop                                             ; $5666: $10 $00
	ld   l, b                                        ; $5668: $68
	add  c                                           ; $5669: $81

jr_01b_566a:
	jr   nz, jr_01b_566e                             ; $566a: $20 $02

	ldh  [$60], a                                    ; $566c: $e0 $60

jr_01b_566e:
	ld   d, b                                        ; $566e: $50
	add  c                                           ; $566f: $81
	ld   b, b                                        ; $5670: $40
	add  b                                           ; $5671: $80
	ret  nz                                          ; $5672: $c0

	nop                                              ; $5673: $00
	and  b                                           ; $5674: $a0
	add  e                                           ; $5675: $83
	add  b                                           ; $5676: $80
	nop                                              ; $5677: $00
	ld   b, b                                        ; $5678: $40

jr_01b_5679:
	add  l                                           ; $5679: $85
	nop                                              ; $567a: $00
	nop                                              ; $567b: $00
	add  b                                           ; $567c: $80
	and  c                                           ; $567d: $a1
	nop                                              ; $567e: $00
	nop                                              ; $567f: $00
	ld   bc, $0081                                   ; $5680: $01 $81 $00
	nop                                              ; $5683: $00
	ld   [bc], a                                     ; $5684: $02
	add  c                                           ; $5685: $81
	nop                                              ; $5686: $00
	nop                                              ; $5687: $00
	ld   b, $83                                      ; $5688: $06 $83
	ld   [bc], a                                     ; $568a: $02
	nop                                              ; $568b: $00
	dec  c                                           ; $568c: $0d
	add  c                                           ; $568d: $81
	inc  b                                           ; $568e: $04
	inc  b                                           ; $568f: $04
	inc  h                                           ; $5690: $24
	inc  b                                           ; $5691: $04
	inc  e                                           ; $5692: $1c
	inc  c                                           ; $5693: $0c
	ld   a, [bc]                                     ; $5694: $0a
	add  e                                           ; $5695: $83
	ld   [$1880], sp                                 ; $5696: $08 $80 $18
	nop                                              ; $5699: $00
	inc  d                                           ; $569a: $14
	add  c                                           ; $569b: $81
	stop                                             ; $569c: $10 $00
	ld   [hl], b                                     ; $569e: $70
	add  c                                           ; $569f: $81
	jr   nc, jr_01b_56a2                             ; $56a0: $30 $00

jr_01b_56a2:
	jr   z, @-$75                                    ; $56a2: $28 $89

	jr   nz, jr_01b_56a6                             ; $56a4: $20 $00

jr_01b_56a6:
	ret  nc                                          ; $56a6: $d0

	add  e                                           ; $56a7: $83
	ld   b, b                                        ; $56a8: $40
	nop                                              ; $56a9: $00
	jr   nz, jr_01b_562f                             ; $56aa: $20 $83

	nop                                              ; $56ac: $00
	nop                                              ; $56ad: $00

jr_01b_56ae:
	ld   b, b                                        ; $56ae: $40
	add  e                                           ; $56af: $83
	nop                                              ; $56b0: $00
	nop                                              ; $56b1: $00
	add  b                                           ; $56b2: $80
	adc  e                                           ; $56b3: $8b
	nop                                              ; $56b4: $00
	nop                                              ; $56b5: $00
	db   $10                                         ; $56b6: $10
	add  c                                           ; $56b7: $81
	nop                                              ; $56b8: $00
	ld   [bc], a                                     ; $56b9: $02
	jr   nc, jr_01b_56bc                             ; $56ba: $30 $00

jr_01b_56bc:
	ld   h, b                                        ; $56bc: $60
	add  c                                           ; $56bd: $81
	nop                                              ; $56be: $00
	nop                                              ; $56bf: $00

jr_01b_56c0:
	ret  nz                                          ; $56c0: $c0

	add  e                                           ; $56c1: $83
	nop                                              ; $56c2: $00

jr_01b_56c3:
	nop                                              ; $56c3: $00
	add  b                                           ; $56c4: $80
	sbc  l                                           ; $56c5: $9d
	nop                                              ; $56c6: $00
	nop                                              ; $56c7: $00
	ld   bc, $0083                                   ; $56c8: $01 $83 $00
	nop                                              ; $56cb: $00
	inc  bc                                          ; $56cc: $03
	add  e                                           ; $56cd: $83
	nop                                              ; $56ce: $00
	nop                                              ; $56cf: $00
	ld   b, $83                                      ; $56d0: $06 $83
	nop                                              ; $56d2: $00
	nop                                              ; $56d3: $00
	ld   [$0081], sp                                 ; $56d4: $08 $81 $00
	nop                                              ; $56d7: $00
	inc  d                                           ; $56d8: $14
	add  e                                           ; $56d9: $83
	nop                                              ; $56da: $00
	nop                                              ; $56db: $00
	jr   nc, @-$7d                                   ; $56dc: $30 $81

	stop                                             ; $56de: $10 $00
	ld   [$0081], sp                                 ; $56e0: $08 $81 $00
	nop                                              ; $56e3: $00
	ld   h, b                                        ; $56e4: $60
	add  e                                           ; $56e5: $83
	jr   nz, jr_01b_56e8                             ; $56e6: $20 $00

jr_01b_56e8:
	db   $10                                         ; $56e8: $10
	add  c                                           ; $56e9: $81
	nop                                              ; $56ea: $00
	nop                                              ; $56eb: $00
	ret  nz                                          ; $56ec: $c0

	add  e                                           ; $56ed: $83
	ld   b, b                                        ; $56ee: $40
	nop                                              ; $56ef: $00
	jr   nz, jr_01b_5679                             ; $56f0: $20 $87

	nop                                              ; $56f2: $00
	nop                                              ; $56f3: $00
	ld   b, b                                        ; $56f4: $40
	add  l                                           ; $56f5: $85
	nop                                              ; $56f6: $00
	nop                                              ; $56f7: $00
	add  b                                           ; $56f8: $80
	adc  a                                           ; $56f9: $8f
	nop                                              ; $56fa: $00
	nop                                              ; $56fb: $00
	ld   b, b                                        ; $56fc: $40
	add  c                                           ; $56fd: $81
	nop                                              ; $56fe: $00
	nop                                              ; $56ff: $00
	ret  nz                                          ; $5700: $c0

	add  c                                           ; $5701: $81
	nop                                              ; $5702: $00
	nop                                              ; $5703: $00
	add  b                                           ; $5704: $80
	adc  b                                           ; $5705: $88
	nop                                              ; $5706: $00
	add  c                                           ; $5707: $81
	ld   bc, $0000                                   ; $5708: $01 $00 $00
	add  c                                           ; $570b: $81
	inc  bc                                          ; $570c: $03

jr_01b_570d:
	nop                                              ; $570d: $00
	ld   bc, $0781                                   ; $570e: $01 $81 $07
	nop                                              ; $5711: $00
	ld   [bc], a                                     ; $5712: $02
	add  c                                           ; $5713: $81
	rrca                                             ; $5714: $0f
	nop                                              ; $5715: $00
	dec  b                                           ; $5716: $05
	add  c                                           ; $5717: $81
	ld   e, $00                                      ; $5718: $1e $00
	ld   a, [bc]                                     ; $571a: $0a
	add  e                                           ; $571b: $83

jr_01b_571c:
	inc  a                                           ; $571c: $3c
	nop                                              ; $571d: $00
	inc  d                                           ; $571e: $14
	add  e                                           ; $571f: $83
	ld   a, b                                        ; $5720: $78
	inc  b                                           ; $5721: $04
	jr   c, jr_01b_571c                              ; $5722: $38 $f8

	xor  b                                           ; $5724: $a8
	ldh  a, [$d0]                                    ; $5725: $f0 $d0
	add  b                                           ; $5727: $80
	or   b                                           ; $5728: $b0
	add  b                                           ; $5729: $80
	jr   nc, jr_01b_56ae                             ; $572a: $30 $82

	jr   nz, jr_01b_56c0                             ; $572c: $20 $92

	nop                                              ; $572e: $00
	add  d                                           ; $572f: $82
	ld   bc, $0282                                   ; $5730: $01 $82 $02
	add  d                                           ; $5733: $82
	inc  b                                           ; $5734: $04
	add  d                                           ; $5735: $82
	add  hl, bc                                      ; $5736: $09
	add  d                                           ; $5737: $82
	ld   [de], a                                     ; $5738: $12
	add  c                                           ; $5739: $81
	inc  h                                           ; $573a: $24
	inc  b                                           ; $573b: $04
	inc  b                                           ; $573c: $04
	ld   a, b                                        ; $573d: $78
	ld   l, b                                        ; $573e: $68
	ld   a, b                                        ; $573f: $78
	jr   z, jr_01b_56c3                              ; $5740: $28 $81

jr_01b_5742:
	ldh  a, [rP1]                                    ; $5742: $f0 $00
	ld   d, b                                        ; $5744: $50
	add  c                                           ; $5745: $81
	ldh  [rP1], a                                    ; $5746: $e0 $00
	and  b                                           ; $5748: $a0
	add  c                                           ; $5749: $81
	ret  nz                                          ; $574a: $c0

	nop                                              ; $574b: $00

jr_01b_574c:
	ld   b, b                                        ; $574c: $40
	add  d                                           ; $574d: $82
	add  b                                           ; $574e: $80
	sub  [hl]                                        ; $574f: $96
	nop                                              ; $5750: $00
	add  c                                           ; $5751: $81
	ld   bc, $0000                                   ; $5752: $01 $00 $00
	add  c                                           ; $5755: $81
	inc  bc                                          ; $5756: $03
	nop                                              ; $5757: $00
	ld   bc, $0781                                   ; $5758: $01 $81 $07
	nop                                              ; $575b: $00
	ld   [bc], a                                     ; $575c: $02
	add  c                                           ; $575d: $81
	rrca                                             ; $575e: $0f
	nop                                              ; $575f: $00
	dec  b                                           ; $5760: $05
	add  e                                           ; $5761: $83
	ld   e, $00                                      ; $5762: $1e $00
	ld   a, [bc]                                     ; $5764: $0a
	add  e                                           ; $5765: $83
	inc  a                                           ; $5766: $3c
	nop                                              ; $5767: $00
	inc  d                                           ; $5768: $14
	add  e                                           ; $5769: $83
	ld   a, b                                        ; $576a: $78
	nop                                              ; $576b: $00
	jr   z, @-$7b                                    ; $576c: $28 $83

	ldh  a, [rSC]                                    ; $576e: $f0 $02
	ret  nc                                          ; $5770: $d0

	ldh  a, [$b0]                                    ; $5771: $f0 $b0
	add  b                                           ; $5773: $80
	ret  nc                                          ; $5774: $d0

	add  b                                           ; $5775: $80
	sub  b                                           ; $5776: $90
	add  b                                           ; $5777: $80
	add  b                                           ; $5778: $80
	sub  d                                           ; $5779: $92
	nop                                              ; $577a: $00
	add  d                                           ; $577b: $82
	ld   [bc], a                                     ; $577c: $02
	add  d                                           ; $577d: $82
	inc  b                                           ; $577e: $04
	add  d                                           ; $577f: $82
	ld   [$1282], sp                                 ; $5780: $08 $82 $12
	add  c                                           ; $5783: $81
	inc  h                                           ; $5784: $24
	inc  b                                           ; $5785: $04
	inc  b                                           ; $5786: $04
	ld   a, b                                        ; $5787: $78

jr_01b_5788:
	ld   l, b                                        ; $5788: $68
	ld   a, b                                        ; $5789: $78
	jr   z, jr_01b_570d                              ; $578a: $28 $81

	ldh  a, [rP1]                                    ; $578c: $f0 $00

jr_01b_578e:
	ld   d, b                                        ; $578e: $50
	add  c                                           ; $578f: $81
	ldh  [rP1], a                                    ; $5790: $e0 $00
	and  b                                           ; $5792: $a0
	add  c                                           ; $5793: $81
	ret  nz                                          ; $5794: $c0

	nop                                              ; $5795: $00
	ld   b, b                                        ; $5796: $40
	add  d                                           ; $5797: $82
	add  b                                           ; $5798: $80
	sub  d                                           ; $5799: $92
	nop                                              ; $579a: $00
	add  c                                           ; $579b: $81
	ld   bc, $0000                                   ; $579c: $01 $00 $00
	add  c                                           ; $579f: $81
	inc  bc                                          ; $57a0: $03
	nop                                              ; $57a1: $00
	ld   bc, $0781                                   ; $57a2: $01 $81 $07
	nop                                              ; $57a5: $00
	ld   [bc], a                                     ; $57a6: $02
	add  c                                           ; $57a7: $81
	rrca                                             ; $57a8: $0f
	nop                                              ; $57a9: $00
	dec  b                                           ; $57aa: $05
	add  e                                           ; $57ab: $83
	ld   e, $00                                      ; $57ac: $1e $00
	ld   a, [bc]                                     ; $57ae: $0a
	add  e                                           ; $57af: $83
	inc  a                                           ; $57b0: $3c
	nop                                              ; $57b1: $00
	inc  d                                           ; $57b2: $14
	add  e                                           ; $57b3: $83
	ld   a, b                                        ; $57b4: $78
	nop                                              ; $57b5: $00
	jr   z, @-$73                                    ; $57b6: $28 $8b

	ldh  a, [rSC]                                    ; $57b8: $f0 $02
	or   b                                           ; $57ba: $b0
	ld   a, b                                        ; $57bb: $78
	ld   e, b                                        ; $57bc: $58
	add  b                                           ; $57bd: $80
	ld   h, b                                        ; $57be: $60
	add  b                                           ; $57bf: $80
	jr   nz, jr_01b_5742                             ; $57c0: $20 $80

	db   $10                                         ; $57c2: $10
	sub  d                                           ; $57c3: $92
	nop                                              ; $57c4: $00
	add  d                                           ; $57c5: $82
	ld   [$1082], sp                                 ; $57c6: $08 $82 $10
	add  b                                           ; $57c9: $80
	jr   nz, jr_01b_574c                             ; $57ca: $20 $80

	inc  h                                           ; $57cc: $24
	add  c                                           ; $57cd: $81
	ld   c, b                                        ; $57ce: $48
	inc  b                                           ; $57cf: $04
	ld   [$d0f0], sp                                 ; $57d0: $08 $f0 $d0
	ldh  a, [$50]                                    ; $57d3: $f0 $50
	add  c                                           ; $57d5: $81
	ldh  [rP1], a                                    ; $57d6: $e0 $00
	and  b                                           ; $57d8: $a0
	add  c                                           ; $57d9: $81
	ret  nz                                          ; $57da: $c0

	nop                                              ; $57db: $00
	ld   b, b                                        ; $57dc: $40
	add  d                                           ; $57dd: $82
	add  b                                           ; $57de: $80
	sub  d                                           ; $57df: $92
	nop                                              ; $57e0: $00
	add  c                                           ; $57e1: $81
	ld   bc, $0000                                   ; $57e2: $01 $00 $00
	add  c                                           ; $57e5: $81
	inc  bc                                          ; $57e6: $03
	nop                                              ; $57e7: $00
	ld   bc, $0781                                   ; $57e8: $01 $81 $07
	nop                                              ; $57eb: $00
	ld   [bc], a                                     ; $57ec: $02
	add  c                                           ; $57ed: $81
	rrca                                             ; $57ee: $0f
	nop                                              ; $57ef: $00
	dec  b                                           ; $57f0: $05
	add  e                                           ; $57f1: $83
	ld   e, $00                                      ; $57f2: $1e $00
	ld   a, [bc]                                     ; $57f4: $0a
	add  e                                           ; $57f5: $83
	inc  a                                           ; $57f6: $3c
	nop                                              ; $57f7: $00
	inc  d                                           ; $57f8: $14
	add  e                                           ; $57f9: $83
	ld   a, b                                        ; $57fa: $78
	nop                                              ; $57fb: $00
	jr   z, jr_01b_5788                              ; $57fc: $28 $8a

	ldh  a, [rSB]                                    ; $57fe: $f0 $01
	ldh  a, [c]                                      ; $5800: $f2
	and  d                                           ; $5801: $a2
	add  b                                           ; $5802: $80
	ld   a, h                                        ; $5803: $7c
	inc  bc                                          ; $5804: $03
	ld   a, d                                        ; $5805: $7a
	ld   d, d                                        ; $5806: $52
	inc  a                                           ; $5807: $3c
	inc  h                                           ; $5808: $24
	add  b                                           ; $5809: $80
	jr   jr_01b_578e                                 ; $580a: $18 $82

	ld   b, b                                        ; $580c: $40
	add  b                                           ; $580d: $80
	add  b                                           ; $580e: $80
	add  b                                           ; $580f: $80
	sub  b                                           ; $5810: $90
	add  d                                           ; $5811: $82
	jr   nz, jr_01b_5817                             ; $5812: $20 $03

	ret  nz                                          ; $5814: $c0

	ld   b, b                                        ; $5815: $40
	ret  nz                                          ; $5816: $c0

jr_01b_5817:
	ld   b, b                                        ; $5817: $40
	add  d                                           ; $5818: $82
	add  b                                           ; $5819: $80
	or   a                                           ; $581a: $b7
	nop                                              ; $581b: $00
	nop                                              ; $581c: $00
	ld   bc, $0083                                   ; $581d: $01 $83 $00
	inc  b                                           ; $5820: $04
	ld   [bc], a                                     ; $5821: $02
	ld   bc, $0345                                   ; $5822: $01 $45 $03
	ld   a, e                                        ; $5825: $7b
	add  b                                           ; $5826: $80
	rlca                                             ; $5827: $07
	add  c                                           ; $5828: $81
	rra                                              ; $5829: $1f
	dec  b                                           ; $582a: $05
	ld   e, a                                        ; $582b: $5f
	ccf                                              ; $582c: $3f
	cp   a                                           ; $582d: $bf
	ld   a, a                                        ; $582e: $7f
	rst  $38                                         ; $582f: $ff
	ccf                                              ; $5830: $3f
	add  b                                           ; $5831: $80
	ld   a, $80                                      ; $5832: $3e $80
	inc  a                                           ; $5834: $3c
	inc  b                                           ; $5835: $04
	cp   h                                           ; $5836: $bc
	ld   a, h                                        ; $5837: $7c
	cp   $3e                                         ; $5838: $fe $3e
	ld   a, a                                        ; $583a: $7f
	add  d                                           ; $583b: $82
	rra                                              ; $583c: $1f
	dec  b                                           ; $583d: $05
	rrca                                             ; $583e: $0f
	ld   a, a                                        ; $583f: $7f
	rlca                                             ; $5840: $07

jr_01b_5841:
	ld   c, a                                        ; $5841: $4f
	ld   [bc], a                                     ; $5842: $02
	rlca                                             ; $5843: $07
	add  c                                           ; $5844: $81
	nop                                              ; $5845: $00
	nop                                              ; $5846: $00
	ld   [bc], a                                     ; $5847: $02
	sub  l                                           ; $5848: $95
	nop                                              ; $5849: $00
	inc  b                                           ; $584a: $04
	add  b                                           ; $584b: $80
	nop                                              ; $584c: $00
	ld   b, h                                        ; $584d: $44
	add  b                                           ; $584e: $80
	cp   h                                           ; $584f: $bc
	add  b                                           ; $5850: $80
	ret  nz                                          ; $5851: $c0

	add  e                                           ; $5852: $83
	ldh  a, [rP1]                                    ; $5853: $f0 $00
	db   $f4                                         ; $5855: $f4
	add  c                                           ; $5856: $81
	ld   hl, sp+$04                                  ; $5857: $f8 $04
	ld   a, [$7dfc]                                  ; $5859: $fa $fc $7d
	ld   a, [hl]                                     ; $585c: $7e
	ccf                                              ; $585d: $3f
	add  c                                           ; $585e: $81
	inc  a                                           ; $585f: $3c
	ld   bc, $787e                                   ; $5860: $01 $7e $78
	add  e                                           ; $5863: $83
	ld   hl, sp+$03                                  ; $5864: $f8 $03
	ret  nz                                          ; $5866: $c0

	db   $fc                                         ; $5867: $fc
	nop                                              ; $5868: $00
	ret  nz                                          ; $5869: $c0

	sub  a                                           ; $586a: $97
	nop                                              ; $586b: $00
	ld   [$0004], sp                                 ; $586c: $08 $04 $00
	ld   [bc], a                                     ; $586f: $02
	nop                                              ; $5870: $00
	ld   bc, $4a02                                   ; $5871: $01 $02 $4a
	rlca                                             ; $5874: $07
	ld   [hl], a                                     ; $5875: $77
	add  b                                           ; $5876: $80
	rrca                                             ; $5877: $0f
	add  c                                           ; $5878: $81
	rra                                              ; $5879: $1f
	add  b                                           ; $587a: $80
	ld   e, $00                                      ; $587b: $1e $00
	ld   e, h                                        ; $587d: $5c
	add  c                                           ; $587e: $81
	inc  a                                           ; $587f: $3c
	ld   [bc], a                                     ; $5880: $02
	cp   [hl]                                        ; $5881: $be
	ld   a, [hl]                                     ; $5882: $7e
	rst  $38                                         ; $5883: $ff
	add  c                                           ; $5884: $81
	ccf                                              ; $5885: $3f
	nop                                              ; $5886: $00
	ld   a, a                                        ; $5887: $7f
	add  d                                           ; $5888: $82
	rra                                              ; $5889: $1f
	inc  bc                                          ; $588a: $03
	ld   bc, $003f                                   ; $588b: $01 $3f $00
	ld   bc, $0099                                   ; $588e: $01 $99 $00
	ld   b, $10                                      ; $5891: $06 $10
	nop                                              ; $5893: $00
	jr   nz, jr_01b_5896                             ; $5894: $20 $00

jr_01b_5896:
	ld   b, b                                        ; $5896: $40
	jr   nz, jr_01b_5841                             ; $5897: $20 $a8

	add  b                                           ; $5899: $80
	ld   [hl], b                                     ; $589a: $70
	ld   bc, $f4f0                                   ; $589b: $01 $f0 $f4
	add  c                                           ; $589e: $81
	ld   hl, sp+$04                                  ; $589f: $f8 $04
	ld   a, [$7dfc]                                  ; $58a1: $fa $fc $7d
	ld   a, [hl]                                     ; $58a4: $7e
	ccf                                              ; $58a5: $3f
	add  c                                           ; $58a6: $81
	inc  a                                           ; $58a7: $3c
	ld   bc, $787e                                   ; $58a8: $01 $7e $78
	add  b                                           ; $58ab: $80
	ld   hl, sp+$0c                                  ; $58ac: $f8 $0c
	ld   a, [$fdfc]                                  ; $58ae: $fa $fc $fd
	ld   hl, sp-$01                                  ; $58b1: $f8 $ff
	ldh  a, [$f8]                                    ; $58b3: $f0 $f8
	ldh  [$f0], a                                    ; $58b5: $e0 $f0
	ld   b, b                                        ; $58b7: $40
	ldh  [rP1], a                                    ; $58b8: $e0 $00
	ld   b, b                                        ; $58ba: $40

jr_01b_58bb:
	rlc  b                                           ; $58bb: $cb $00
	halt                                             ; $58bd: $76
	ld   bc, $008a                                   ; $58be: $01 $8a $00
	nop                                              ; $58c1: $00
	ld   bc, $0083                                   ; $58c2: $01 $83 $00
	rlca                                             ; $58c5: $07
	jr   nz, jr_01b_58c8                             ; $58c6: $20 $00

jr_01b_58c8:
	ld   a, [hl-]                                    ; $58c8: $3a
	nop                                              ; $58c9: $00
	inc  b                                           ; $58ca: $04
	nop                                              ; $58cb: $00
	ld   de, $8001                                   ; $58cc: $11 $01 $80
	inc  bc                                          ; $58cf: $03
	inc  b                                           ; $58d0: $04
	add  hl, bc                                      ; $58d1: $09
	ld   bc, $0004                                   ; $58d2: $01 $04 $00
	inc  bc                                          ; $58d5: $03
	adc  l                                           ; $58d6: $8d
	nop                                              ; $58d7: $00
	nop                                              ; $58d8: $00
	add  b                                           ; $58d9: $80
	add  c                                           ; $58da: $81
	nop                                              ; $58db: $00
	rlca                                             ; $58dc: $07
	ld   c, b                                        ; $58dd: $48
	nop                                              ; $58de: $00
	jr   nc, jr_01b_58e1                             ; $58df: $30 $00

jr_01b_58e1:
	ld   [$d000], sp                                 ; $58e1: $08 $00 $d0
	ret  nz                                          ; $58e4: $c0

	add  b                                           ; $58e5: $80
	add  b                                           ; $58e6: $80
	ld   [bc], a                                     ; $58e7: $02
	jr   nz, jr_01b_58ea                             ; $58e8: $20 $00

jr_01b_58ea:
	pop  bc                                          ; $58ea: $c1
	add  e                                           ; $58eb: $83
	nop                                              ; $58ec: $00
	ld   [bc], a                                     ; $58ed: $02
	ld   [bc], a                                     ; $58ee: $02

jr_01b_58ef:
	nop                                              ; $58ef: $00
	db   $10                                         ; $58f0: $10
	add  c                                           ; $58f1: $81
	nop                                              ; $58f2: $00
	nop                                              ; $58f3: $00
	inc  b                                           ; $58f4: $04
	add  e                                           ; $58f5: $83
	nop                                              ; $58f6: $00
	ld   bc, $0008                                   ; $58f7: $01 $08 $00
	add  d                                           ; $58fa: $82
	ld   bc, $8100                                   ; $58fb: $01 $00 $81
	add  c                                           ; $58fe: $81
	ld   bc, $c102                                   ; $58ff: $01 $02 $c1
	ld   bc, $8121                                   ; $5902: $01 $21 $81
	ld   bc, $4901                                   ; $5905: $01 $01 $49
	add  hl, bc                                      ; $5908: $09
	add  b                                           ; $5909: $80
	dec  c                                           ; $590a: $0d
	add  b                                           ; $590b: $80
	rrca                                             ; $590c: $0f
	add  b                                           ; $590d: $80
	rlca                                             ; $590e: $07
	nop                                              ; $590f: $00
	daa                                              ; $5910: $27
	add  e                                           ; $5911: $83
	rlca                                             ; $5912: $07
	add  b                                           ; $5913: $80
	inc  bc                                          ; $5914: $03
	nop                                              ; $5915: $00
	inc  de                                          ; $5916: $13
	add  c                                           ; $5917: $81
	inc  bc                                          ; $5918: $03
	add  b                                           ; $5919: $80
	ld   bc, $c908                                   ; $591a: $01 $08 $c9
	ld   bc, $01f9                                   ; $591d: $01 $f9 $01
	jr   nc, jr_01b_5922                             ; $5920: $30 $00

jr_01b_5922:
	inc  c                                           ; $5922: $0c
	nop                                              ; $5923: $00
	inc  bc                                          ; $5924: $03
	add  e                                           ; $5925: $83
	nop                                              ; $5926: $00
	nop                                              ; $5927: $00
	add  b                                           ; $5928: $80
	add  c                                           ; $5929: $81
	nop                                              ; $592a: $00
	ld   [bc], a                                     ; $592b: $02
	inc  b                                           ; $592c: $04
	nop                                              ; $592d: $00
	ld   c, b                                        ; $592e: $48
	add  c                                           ; $592f: $81
	nop                                              ; $5930: $00
	ld   [bc], a                                     ; $5931: $02
	stop                                             ; $5932: $10 $00
	jr   nz, jr_01b_58bb                             ; $5934: $20 $85

	nop                                              ; $5936: $00
	nop                                              ; $5937: $00
	sub  c                                           ; $5938: $91
	add  c                                           ; $5939: $81
	sub  b                                           ; $593a: $90
	ld   [bc], a                                     ; $593b: $02
	or   d                                           ; $593c: $b2
	or   b                                           ; $593d: $b0
	pop  af                                          ; $593e: $f1
	add  c                                           ; $593f: $81
	ldh  a, [$80]                                    ; $5940: $f0 $80
	db   $f4                                         ; $5942: $f4
	nop                                              ; $5943: $00
	ld   a, [$f881]                                  ; $5944: $fa $81 $f8
	add  d                                           ; $5947: $82
	ldh  a, [rSB]                                    ; $5948: $f0 $01
	db   $f4                                         ; $594a: $f4
	ldh  a, [$82]                                    ; $594b: $f0 $82
	ldh  [rAUD1SWEEP], a                             ; $594d: $e0 $10
	add  sp, -$20                                    ; $594f: $e8 $e0
	pop  bc                                          ; $5951: $c1
	ret  nz                                          ; $5952: $c0

	rst  ToBoot                                         ; $5953: $c7
	ret  nz                                          ; $5954: $c0

	jp   z, $84c0                                    ; $5955: $ca $c0 $84

	add  b                                           ; $5958: $80
	jr   jr_01b_595b                                 ; $5959: $18 $00

jr_01b_595b:
	pop  hl                                          ; $595b: $e1
	nop                                              ; $595c: $00
	inc  b                                           ; $595d: $04
	nop                                              ; $595e: $00
	ld   c, $81                                      ; $595f: $0e $81
	nop                                              ; $5961: $00
	ld   b, $14                                      ; $5962: $06 $14
	nop                                              ; $5964: $00
	ld   bc, $0a00                                   ; $5965: $01 $00 $0a
	nop                                              ; $5968: $00
	inc  d                                           ; $5969: $14
	and  c                                           ; $596a: $a1
	nop                                              ; $596b: $00
	add  d                                           ; $596c: $82
	jr   nc, jr_01b_58ef                             ; $596d: $30 $80

	nop                                              ; $596f: $00
	db   $10                                         ; $5970: $10
	ld   h, b                                        ; $5971: $60
	nop                                              ; $5972: $00
	and  b                                           ; $5973: $a0
	nop                                              ; $5974: $00
	ld   b, b                                        ; $5975: $40
	nop                                              ; $5976: $00
	ret  nz                                          ; $5977: $c0

	nop                                              ; $5978: $00
	ld   b, b                                        ; $5979: $40
	nop                                              ; $597a: $00
	jr   nz, jr_01b_597d                             ; $597b: $20 $00

jr_01b_597d:
	add  b                                           ; $597d: $80
	nop                                              ; $597e: $00
	stop                                             ; $597f: $10 $00
	ld   b, b                                        ; $5981: $40

jr_01b_5982:
	add  c                                           ; $5982: $81
	nop                                              ; $5983: $00

jr_01b_5984:
	inc  b                                           ; $5984: $04
	and  b                                           ; $5985: $a0
	nop                                              ; $5986: $00
	stop                                             ; $5987: $10 $00
	ld   b, b                                        ; $5989: $40
	sbc  e                                           ; $598a: $9b
	nop                                              ; $598b: $00
	add  b                                           ; $598c: $80
	ld   b, $82                                      ; $598d: $06 $82
	ld   e, $80                                      ; $598f: $1e $80
	ld   c, $80                                      ; $5991: $0e $80
	nop                                              ; $5993: $00
	ld   [bc], a                                     ; $5994: $02
	ld   b, $00                                      ; $5995: $06 $00
	dec  b                                           ; $5997: $05
	add  c                                           ; $5998: $81
	nop                                              ; $5999: $00
	inc  c                                           ; $599a: $0c
	ld   bc, $0300                                   ; $599b: $01 $00 $03
	nop                                              ; $599e: $00
	inc  b                                           ; $599f: $04
	nop                                              ; $59a0: $00
	ld   [bc], a                                     ; $59a1: $02
	nop                                              ; $59a2: $00
	ld   a, [bc]                                     ; $59a3: $0a
	nop                                              ; $59a4: $00
	inc  b                                           ; $59a5: $04
	nop                                              ; $59a6: $00
	add  hl, bc                                      ; $59a7: $09
	adc  c                                           ; $59a8: $89
	nop                                              ; $59a9: $00
	inc  b                                           ; $59aa: $04
	ld   b, b                                        ; $59ab: $40
	nop                                              ; $59ac: $00
	ld   h, b                                        ; $59ad: $60
	nop                                              ; $59ae: $00
	jr   nz, @-$69                                   ; $59af: $20 $95

	nop                                              ; $59b1: $00
	add  b                                           ; $59b2: $80
	ld   h, b                                        ; $59b3: $60

jr_01b_59b4:
	add  d                                           ; $59b4: $82
	ldh  [$84], a                                    ; $59b5: $e0 $84
	nop                                              ; $59b7: $00
	inc  c                                           ; $59b8: $0c
	jr   nz, jr_01b_59bb                             ; $59b9: $20 $00

jr_01b_59bb:
	jr   nz, jr_01b_59bd                             ; $59bb: $20 $00

jr_01b_59bd:
	and  b                                           ; $59bd: $a0
	nop                                              ; $59be: $00
	ld   b, b                                        ; $59bf: $40
	nop                                              ; $59c0: $00
	ld   d, b                                        ; $59c1: $50
	nop                                              ; $59c2: $00
	and  b                                           ; $59c3: $a0
	nop                                              ; $59c4: $00
	db   $10                                         ; $59c5: $10
	add  c                                           ; $59c6: $81
	nop                                              ; $59c7: $00
	ld   [bc], a                                     ; $59c8: $02
	ld   [$0800], sp                                 ; $59c9: $08 $00 $08
	add  e                                           ; $59cc: $83
	nop                                              ; $59cd: $00
	inc  b                                           ; $59ce: $04
	ld   bc, $0300                                   ; $59cf: $01 $00 $03
	nop                                              ; $59d2: $00
	ld   [bc], a                                     ; $59d3: $02
	sub  c                                           ; $59d4: $91
	nop                                              ; $59d5: $00
	add  b                                           ; $59d6: $80
	inc  c                                           ; $59d7: $0c
	add  [hl]                                        ; $59d8: $86
	rra                                              ; $59d9: $1f
	add  b                                           ; $59da: $80
	ld   b, $82                                      ; $59db: $06 $82
	nop                                              ; $59dd: $00
	ld   [bc], a                                     ; $59de: $02
	ld   [bc], a                                     ; $59df: $02
	nop                                              ; $59e0: $00
	ld   [bc], a                                     ; $59e1: $02
	sub  e                                           ; $59e2: $93
	nop                                              ; $59e3: $00
	inc  b                                           ; $59e4: $04
	ld   b, b                                        ; $59e5: $40
	nop                                              ; $59e6: $00
	ld   [hl], b                                     ; $59e7: $70
	nop                                              ; $59e8: $00
	jr   nc, jr_01b_5982                             ; $59e9: $30 $97

	nop                                              ; $59eb: $00
	add  b                                           ; $59ec: $80
	ld   b, b                                        ; $59ed: $40
	add  b                                           ; $59ee: $80
	ldh  [$80], a                                    ; $59ef: $e0 $80
	ld   b, b                                        ; $59f1: $40
	add  d                                           ; $59f2: $82
	nop                                              ; $59f3: $00
	ld   [bc], a                                     ; $59f4: $02
	jr   nz, jr_01b_59f7                             ; $59f5: $20 $00

jr_01b_59f7:
	jr   nz, jr_01b_5984                             ; $59f7: $20 $8b

	nop                                              ; $59f9: $00
	nop                                              ; $59fa: $00
	inc  c                                           ; $59fb: $0c
	add  c                                           ; $59fc: $81
	nop                                              ; $59fd: $00
	nop                                              ; $59fe: $00
	inc  c                                           ; $59ff: $0c
	add  c                                           ; $5a00: $81
	nop                                              ; $5a01: $00
	inc  b                                           ; $5a02: $04
	ld   bc, $0200                                   ; $5a03: $01 $00 $02
	nop                                              ; $5a06: $00
	inc  bc                                          ; $5a07: $03
	sub  l                                           ; $5a08: $95
	nop                                              ; $5a09: $00
	add  b                                           ; $5a0a: $80
	inc  c                                           ; $5a0b: $0c
	add  d                                           ; $5a0c: $82
	ld   e, $80                                      ; $5a0d: $1e $80
	ld   c, $82                                      ; $5a0f: $0e $82
	nop                                              ; $5a11: $00
	ld   [bc], a                                     ; $5a12: $02
	ld   [bc], a                                     ; $5a13: $02
	nop                                              ; $5a14: $00
	ld   [bc], a                                     ; $5a15: $02
	sbc  b                                           ; $5a16: $98
	nop                                              ; $5a17: $00
	add  b                                           ; $5a18: $80
	ld   b, b                                        ; $5a19: $40
	add  b                                           ; $5a1a: $80
	jr   nz, jr_01b_59b4                             ; $5a1b: $20 $97

	nop                                              ; $5a1d: $00
	add  d                                           ; $5a1e: $82
	ld   b, b                                        ; $5a1f: $40
	sub  a                                           ; $5a20: $97
	nop                                              ; $5a21: $00
	add  b                                           ; $5a22: $80
	inc  c                                           ; $5a23: $0c
	add  h                                           ; $5a24: $84
	nop                                              ; $5a25: $00
	add  b                                           ; $5a26: $80
	inc  bc                                          ; $5a27: $03
	sub  a                                           ; $5a28: $97
	nop                                              ; $5a29: $00
	add  b                                           ; $5a2a: $80
	ld   b, $80                                      ; $5a2b: $06 $80
	ld   c, $80                                      ; $5a2d: $0e $80
	inc  c                                           ; $5a2f: $0c
	adc  a                                           ; $5a30: $8f
	nop                                              ; $5a31: $00
	add  h                                           ; $5a32: $84
	db   $10                                         ; $5a33: $10
	add  b                                           ; $5a34: $80
	cp   $84                                         ; $5a35: $fe $84
	db   $10                                         ; $5a37: $10
	add  l                                           ; $5a38: $85
	nop                                              ; $5a39: $00
	inc  c                                           ; $5a3a: $0c
	ld   b, h                                        ; $5a3b: $44
	ld   h, [hl]                                     ; $5a3c: $66
	ld   a, [bc]                                     ; $5a3d: $0a
	inc  a                                           ; $5a3e: $3c
	inc  b                                           ; $5a3f: $04

jr_01b_5a40:
	jr   jr_01b_5a62                                 ; $5a40: $18 $20

	inc  a                                           ; $5a42: $3c
	ld   d, b                                        ; $5a43: $50
	ld   h, [hl]                                     ; $5a44: $66
	jr   nz, jr_01b_5a4a                             ; $5a45: $20 $03

	ld   bc, $0089                                   ; $5a47: $01 $89 $00

jr_01b_5a4a:
	add  b                                           ; $5a4a: $80
	ld   b, b                                        ; $5a4b: $40
	add  d                                           ; $5a4c: $82
	nop                                              ; $5a4d: $00
	ld   a, [bc]                                     ; $5a4e: $0a

jr_01b_5a4f:
	ld   b, h                                        ; $5a4f: $44
	ld   h, [hl]                                     ; $5a50: $66
	ld   a, [bc]                                     ; $5a51: $0a
	inc  a                                           ; $5a52: $3c
	inc  b                                           ; $5a53: $04
	jr   jr_01b_5a76                                 ; $5a54: $18 $20

	inc  a                                           ; $5a56: $3c
	ld   d, b                                        ; $5a57: $50
	ld   h, [hl]                                     ; $5a58: $66
	ld   [hl+], a                                    ; $5a59: $22
	add  h                                           ; $5a5a: $84
	nop                                              ; $5a5b: $00
	add  h                                           ; $5a5c: $84

jr_01b_5a5d:
	db   $10                                         ; $5a5d: $10
	add  b                                           ; $5a5e: $80
	cp   $84                                         ; $5a5f: $fe $84
	db   $10                                         ; $5a61: $10

jr_01b_5a62:
	sub  e                                           ; $5a62: $93
	nop                                              ; $5a63: $00
	add  b                                           ; $5a64: $80
	add  b                                           ; $5a65: $80
	nop                                              ; $5a66: $00
	nop                                              ; $5a67: $00
	add  b                                           ; $5a68: $80
	inc  b                                           ; $5a69: $04
	sub  e                                           ; $5a6a: $93
	nop                                              ; $5a6b: $00
	ld   a, [bc]                                     ; $5a6c: $0a
	ld   b, h                                        ; $5a6d: $44
	ld   h, [hl]                                     ; $5a6e: $66
	ld   a, [bc]                                     ; $5a6f: $0a
	inc  a                                           ; $5a70: $3c
	inc  b                                           ; $5a71: $04
	jr   jr_01b_5a94                                 ; $5a72: $18 $20

	inc  a                                           ; $5a74: $3c
	ld   d, b                                        ; $5a75: $50

jr_01b_5a76:
	ld   h, [hl]                                     ; $5a76: $66
	ld   [hl+], a                                    ; $5a77: $22
	add  h                                           ; $5a78: $84
	nop                                              ; $5a79: $00
	add  [hl]                                        ; $5a7a: $86
	db   $10                                         ; $5a7b: $10
	add  b                                           ; $5a7c: $80
	cp   $83                                         ; $5a7d: $fe $83
	db   $10                                         ; $5a7f: $10
	ld   [bc], a                                     ; $5a80: $02
	nop                                              ; $5a81: $00
	stop                                             ; $5a82: $10 $00
	add  b                                           ; $5a84: $80
	ld   [bc], a                                     ; $5a85: $02
	add  b                                           ; $5a86: $80
	ld   b, b                                        ; $5a87: $40
	adc  b                                           ; $5a88: $88
	nop                                              ; $5a89: $00
	add  h                                           ; $5a8a: $84
	db   $10                                         ; $5a8b: $10
	add  b                                           ; $5a8c: $80

jr_01b_5a8d:
	cp   $84                                         ; $5a8d: $fe $84
	db   $10                                         ; $5a8f: $10
	add  c                                           ; $5a90: $81
	nop                                              ; $5a91: $00
	ld   c, $82                                      ; $5a92: $0e $82

jr_01b_5a94:
	add  e                                           ; $5a94: $83
	ld   b, l                                        ; $5a95: $45
	ld   b, [hl]                                     ; $5a96: $46
	ld   a, [hl+]                                    ; $5a97: $2a
	inc  l                                           ; $5a98: $2c
	inc  d                                           ; $5a99: $14
	jr   jr_01b_5abc                                 ; $5a9a: $18 $20

	jr   c, jr_01b_5af2                              ; $5a9c: $38 $54

	ld   h, h                                        ; $5a9e: $64
	and  d                                           ; $5a9f: $a2
	jp   nz, $8c40                                   ; $5aa0: $c2 $40 $8c

	nop                                              ; $5aa3: $00
	add  b                                           ; $5aa4: $80
	db   $10                                         ; $5aa5: $10
	sbc  l                                           ; $5aa6: $9d
	nop                                              ; $5aa7: $00
	add  b                                           ; $5aa8: $80
	ld   b, c                                        ; $5aa9: $41
	add  b                                           ; $5aaa: $80
	ld   [hl+], a                                    ; $5aab: $22
	add  b                                           ; $5aac: $80
	inc  e                                           ; $5aad: $1c
	inc  bc                                          ; $5aae: $03
	inc  d                                           ; $5aaf: $14
	inc  e                                           ; $5ab0: $1c
	inc  d                                           ; $5ab1: $14
	inc  e                                           ; $5ab2: $1c
	add  b                                           ; $5ab3: $80
	ld   [hl+], a                                    ; $5ab4: $22
	add  b                                           ; $5ab5: $80
	ld   b, c                                        ; $5ab6: $41
	adc  b                                           ; $5ab7: $88
	nop                                              ; $5ab8: $00
	add  b                                           ; $5ab9: $80
	add  b                                           ; $5aba: $80
	add  b                                           ; $5abb: $80

jr_01b_5abc:
	ld   b, b                                        ; $5abc: $40
	add  b                                           ; $5abd: $80
	jr   nz, jr_01b_5a40                             ; $5abe: $20 $80

	db   $10                                         ; $5ac0: $10
	add  b                                           ; $5ac1: $80
	rrca                                             ; $5ac2: $0f
	nop                                              ; $5ac3: $00
	ld   [$0f83], sp                                 ; $5ac4: $08 $83 $0f
	ld   bc, $0f08                                   ; $5ac7: $01 $08 $0f
	add  b                                           ; $5aca: $80
	db   $10                                         ; $5acb: $10
	add  b                                           ; $5acc: $80
	jr   nz, jr_01b_5a4f                             ; $5acd: $20 $80

	ld   b, b                                        ; $5acf: $40
	adc  h                                           ; $5ad0: $8c
	nop                                              ; $5ad1: $00
	add  b                                           ; $5ad2: $80
	jr   nz, @-$7e                                   ; $5ad3: $20 $80

	ld   b, b                                        ; $5ad5: $40
	adc  b                                           ; $5ad6: $88
	add  b                                           ; $5ad7: $80
	add  b                                           ; $5ad8: $80
	ld   b, b                                        ; $5ad9: $40
	add  b                                           ; $5ada: $80
	jr   nz, jr_01b_5a5d                             ; $5adb: $20 $80

	db   $10                                         ; $5add: $10
	add  b                                           ; $5ade: $80
	add  d                                           ; $5adf: $82
	add  b                                           ; $5ae0: $80
	ld   b, h                                        ; $5ae1: $44
	add  b                                           ; $5ae2: $80
	jr   c, @+$05                                    ; $5ae3: $38 $03

	jr   z, @+$3a                                    ; $5ae5: $28 $38

	jr   z, jr_01b_5b21                              ; $5ae7: $28 $38

	add  b                                           ; $5ae9: $80
	ld   b, h                                        ; $5aea: $44
	add  b                                           ; $5aeb: $80
	add  d                                           ; $5aec: $82
	sbc  [hl]                                        ; $5aed: $9e
	nop                                              ; $5aee: $00
	add  b                                           ; $5aef: $80
	inc  c                                           ; $5af0: $0c
	ld   [bc], a                                     ; $5af1: $02

jr_01b_5af2:
	ld   [hl-], a                                    ; $5af2: $32
	ld   a, $4e                                      ; $5af3: $3e $4e
	add  e                                           ; $5af5: $83
	ld   a, [hl]                                     ; $5af6: $7e
	ld   bc, $3c00                                   ; $5af7: $01 $00 $3c
	add  d                                           ; $5afa: $82
	nop                                              ; $5afb: $00
	add  b                                           ; $5afc: $80
	inc  b                                           ; $5afd: $04
	add  b                                           ; $5afe: $80
	ld   [bc], a                                     ; $5aff: $02
	adc  b                                           ; $5b00: $88
	ld   bc, $0280                                   ; $5b01: $01 $80 $02
	add  b                                           ; $5b04: $80
	inc  b                                           ; $5b05: $04
	add  b                                           ; $5b06: $80

jr_01b_5b07:
	ld   [$0092], sp                                 ; $5b07: $08 $92 $00
	add  b                                           ; $5b0a: $80
	jr   nz, jr_01b_5a8d                             ; $5b0b: $20 $80

	ld   de, $0e80                                   ; $5b0d: $11 $80 $0e
	inc  bc                                          ; $5b10: $03
	ld   a, [bc]                                     ; $5b11: $0a
	ld   c, $0a                                      ; $5b12: $0e $0a
	ld   c, $80                                      ; $5b14: $0e $80
	ld   de, $2080                                   ; $5b16: $11 $80 $20
	adc  b                                           ; $5b19: $88
	nop                                              ; $5b1a: $00
	add  b                                           ; $5b1b: $80
	inc  b                                           ; $5b1c: $04
	add  b                                           ; $5b1d: $80
	ld   [$f080], sp                                 ; $5b1e: $08 $80 $f0

jr_01b_5b21:
	nop                                              ; $5b21: $00
	db   $10                                         ; $5b22: $10
	add  e                                           ; $5b23: $83
	ldh  a, [rSB]                                    ; $5b24: $f0 $01
	db   $10                                         ; $5b26: $10
	ldh  a, [$80]                                    ; $5b27: $f0 $80

jr_01b_5b29:
	ld   [$0480], sp                                 ; $5b29: $08 $80 $04
	add  b                                           ; $5b2c: $80
	ld   [bc], a                                     ; $5b2d: $02
	adc  [hl]                                        ; $5b2e: $8e
	nop                                              ; $5b2f: $00
	add  b                                           ; $5b30: $80
	inc  bc                                          ; $5b31: $03
	rlca                                             ; $5b32: $07
	ld   [bc], a                                     ; $5b33: $02
	inc  bc                                          ; $5b34: $03

jr_01b_5b35:
	dec  b                                           ; $5b35: $05
	rlca                                             ; $5b36: $07
	ld   bc, $0203                                   ; $5b37: $01 $03 $02
	inc  bc                                          ; $5b3a: $03
	sub  [hl]                                        ; $5b3b: $96
	nop                                              ; $5b3c: $00
	add  b                                           ; $5b3d: $80
	ld   bc, $8280                                   ; $5b3e: $01 $80 $82
	add  b                                           ; $5b41: $80
	ld   a, h                                        ; $5b42: $7c
	nop                                              ; $5b43: $00
	ld   b, h                                        ; $5b44: $44

jr_01b_5b45:
	add  e                                           ; $5b45: $83
	ld   a, h                                        ; $5b46: $7c
	ld   bc, $7c44                                   ; $5b47: $01 $44 $7c
	add  b                                           ; $5b4a: $80
	add  d                                           ; $5b4b: $82
	add  b                                           ; $5b4c: $80
	ld   bc, $0088                                   ; $5b4d: $01 $88 $00
	add  b                                           ; $5b50: $80
	ret  nz                                          ; $5b51: $c0

	ld   [bc], a                                     ; $5b52: $02
	jr   nz, jr_01b_5b35                             ; $5b53: $20 $e0

	ret  nc                                          ; $5b55: $d0

	add  c                                           ; $5b56: $81
	ldh  a, [$03]                                    ; $5b57: $f0 $03
	ret  nz                                          ; $5b59: $c0

	ldh  [rAUD4LEN], a                               ; $5b5a: $e0 $20
	ldh  [$98], a                                    ; $5b5c: $e0 $98
	nop                                              ; $5b5e: $00
	add  b                                           ; $5b5f: $80
	ld   a, h                                        ; $5b60: $7c
	ld   [bc], a                                     ; $5b61: $02
	ld   b, h                                        ; $5b62: $44
	ld   a, h                                        ; $5b63: $7c
	cp   d                                           ; $5b64: $ba
	add  c                                           ; $5b65: $81
	cp   $05                                         ; $5b66: $fe $05
	ld   a, $7e                                      ; $5b68: $3e $7e
	ld   e, b                                        ; $5b6a: $58
	ld   a, h                                        ; $5b6b: $7c
	nop                                              ; $5b6c: $00
	jr   jr_01b_5b07                                 ; $5b6d: $18 $98

	nop                                              ; $5b6f: $00
	add  b                                           ; $5b70: $80
	inc  c                                           ; $5b71: $0c
	inc  b                                           ; $5b72: $04
	ld   [hl+], a                                    ; $5b73: $22
	ld   l, $5e                                      ; $5b74: $2e $5e
	halt                                             ; $5b76: $76
	ld   h, [hl]                                     ; $5b77: $66
	add  b                                           ; $5b78: $80
	ld   l, [hl]                                     ; $5b79: $6e
	ld   [bc], a                                     ; $5b7a: $02
	ld   d, d                                        ; $5b7b: $52
	inc  l                                           ; $5b7c: $2c
	inc  a                                           ; $5b7d: $3c
	add  [hl]                                        ; $5b7e: $86
	nop                                              ; $5b7f: $00
	add  b                                           ; $5b80: $80
	inc  bc                                          ; $5b81: $03
	ld   [$0302], sp                                 ; $5b82: $08 $02 $03
	dec  b                                           ; $5b85: $05
	rlca                                             ; $5b86: $07
	inc  bc                                          ; $5b87: $03
	nop                                              ; $5b88: $00
	ld   [bc], a                                     ; $5b89: $02
	inc  bc                                          ; $5b8a: $03
	ld   bc, $0097                                   ; $5b8b: $01 $97 $00
	add  b                                           ; $5b8e: $80
	ld   e, h                                        ; $5b8f: $5c
	ld   [bc], a                                     ; $5b90: $02
	ld   b, h                                        ; $5b91: $44
	ld   e, h                                        ; $5b92: $5c
	sbc  d                                           ; $5b93: $9a
	add  b                                           ; $5b94: $80
	add  $06                                         ; $5b95: $c6 $06
	cp   d                                           ; $5b97: $ba
	ld   a, d                                        ; $5b98: $7a
	halt                                             ; $5b99: $76
	ld   d, h                                        ; $5b9a: $54
	ld   a, b                                        ; $5b9b: $78
	nop                                              ; $5b9c: $00
	jr   jr_01b_5b29                                 ; $5b9d: $18 $8a

	nop                                              ; $5b9f: $00
	add  b                                           ; $5ba0: $80
	ret  nz                                          ; $5ba1: $c0

	ld   [bc], a                                     ; $5ba2: $02
	jr   nz, jr_01b_5b45                             ; $5ba3: $20 $a0

	sub  b                                           ; $5ba5: $90
	add  b                                           ; $5ba6: $80
	ld   [hl], b                                     ; $5ba7: $70
	inc  b                                           ; $5ba8: $04
	stop                                             ; $5ba9: $10 $00
	ldh  [rP1], a                                    ; $5bab: $e0 $00
	ldh  [$97], a                                    ; $5bad: $e0 $97
	nop                                              ; $5baf: $00
	add  b                                           ; $5bb0: $80
	ld   bc, $0000                                   ; $5bb1: $01 $00 $00
	add  b                                           ; $5bb4: $80
	stop                                             ; $5bb5: $10 $00
	nop                                              ; $5bb7: $00
	add  b                                           ; $5bb8: $80
	ld   b, h                                        ; $5bb9: $44

jr_01b_5bba:
	add  e                                           ; $5bba: $83
	nop                                              ; $5bbb: $00
	inc  b                                           ; $5bbc: $04
	or   b                                           ; $5bbd: $b0
	or   h                                           ; $5bbe: $b4
	inc  h                                           ; $5bbf: $24
	ld   l, $0e                                      ; $5bc0: $2e $0e
	add  b                                           ; $5bc2: $80
	ld   [bc], a                                     ; $5bc3: $02
	add  b                                           ; $5bc4: $80
	inc  e                                           ; $5bc5: $1c
	add  b                                           ; $5bc6: $80
	nop                                              ; $5bc7: $00
	add  b                                           ; $5bc8: $80
	ld   b, b                                        ; $5bc9: $40
	add  e                                           ; $5bca: $83
	nop                                              ; $5bcb: $00
	ld   bc, $2322                                   ; $5bcc: $01 $22 $23
	add  b                                           ; $5bcf: $80
	inc  bc                                          ; $5bd0: $03
	nop                                              ; $5bd1: $00
	ld   bc, $0080                                   ; $5bd2: $01 $80 $00
	add  b                                           ; $5bd5: $80
	ld   b, c                                        ; $5bd6: $41
	add  d                                           ; $5bd7: $82
	nop                                              ; $5bd8: $00
	ld   [bc], a                                     ; $5bd9: $02
	inc  b                                           ; $5bda: $04
	dec  h                                           ; $5bdb: $25
	ld   hl, $008c                                   ; $5bdc: $21 $8c $00
	add  b                                           ; $5bdf: $80
	stop                                             ; $5be0: $10 $00
	nop                                              ; $5be2: $00
	add  b                                           ; $5be3: $80
	ld   b, c                                        ; $5be4: $41
	dec  bc                                          ; $5be5: $0b
	nop                                              ; $5be6: $00
	ld   b, h                                        ; $5be7: $44
	ld   e, h                                        ; $5be8: $5c

jr_01b_5be9:
	ld   a, [de]                                     ; $5be9: $1a
	ld   b, [hl]                                     ; $5bea: $46
	ld   b, h                                        ; $5beb: $44
	ld   a, [hl-]                                    ; $5bec: $3a
	ld   a, [de]                                     ; $5bed: $1a
	ld   [hl], $26                                   ; $5bee: $36 $26
	jr   c, @+$0a                                    ; $5bf0: $38 $08

	add  b                                           ; $5bf2: $80
	nop                                              ; $5bf3: $00
	add  b                                           ; $5bf4: $80
	inc  h                                           ; $5bf5: $24
	add  d                                           ; $5bf6: $82
	nop                                              ; $5bf7: $00
	inc  bc                                          ; $5bf8: $03
	ld   [$020a], sp                                 ; $5bf9: $08 $0a $02
	nop                                              ; $5bfc: $00
	add  b                                           ; $5bfd: $80
	inc  b                                           ; $5bfe: $04
	add  b                                           ; $5bff: $80
	nop                                              ; $5c00: $00
	add  b                                           ; $5c01: $80
	add  b                                           ; $5c02: $80
	add  b                                           ; $5c03: $80
	ld   h, d                                        ; $5c04: $62
	ld   b, $00                                      ; $5c05: $06 $00
	jr   nz, jr_01b_5be9                             ; $5c07: $20 $e0

	and  b                                           ; $5c09: $a0
	db   $e4                                         ; $5c0a: $e4
	add  h                                           ; $5c0b: $84
	nop                                              ; $5c0c: $00
	add  b                                           ; $5c0d: $80
	ld   [bc], a                                     ; $5c0e: $02
	add  c                                           ; $5c0f: $81
	nop                                              ; $5c10: $00
	add  b                                           ; $5c11: $80
	db   $10                                         ; $5c12: $10
	adc  h                                           ; $5c13: $8c
	nop                                              ; $5c14: $00
	ld   [bc], a                                     ; $5c15: $02
	inc  b                                           ; $5c16: $04
	inc  d                                           ; $5c17: $14
	db   $10                                         ; $5c18: $10
	add  c                                           ; $5c19: $81
	nop                                              ; $5c1a: $00
	add  b                                           ; $5c1b: $80
	ld   b, b                                        ; $5c1c: $40
	add  b                                           ; $5c1d: $80
	nop                                              ; $5c1e: $00
	add  b                                           ; $5c1f: $80
	db   $10                                         ; $5c20: $10
	add  b                                           ; $5c21: $80
	nop                                              ; $5c22: $00
	add  b                                           ; $5c23: $80
	add  b                                           ; $5c24: $80
	add  b                                           ; $5c25: $80
	nop                                              ; $5c26: $00
	add  b                                           ; $5c27: $80
	ld   b, b                                        ; $5c28: $40
	add  h                                           ; $5c29: $84
	nop                                              ; $5c2a: $00
	add  b                                           ; $5c2b: $80
	add  b                                           ; $5c2c: $80
	nop                                              ; $5c2d: $00
	nop                                              ; $5c2e: $00
	add  b                                           ; $5c2f: $80
	add  b                                           ; $5c30: $80
	add  l                                           ; $5c31: $85
	nop                                              ; $5c32: $00
	add  b                                           ; $5c33: $80
	add  b                                           ; $5c34: $80
	add  b                                           ; $5c35: $80
	nop                                              ; $5c36: $00
	add  b                                           ; $5c37: $80
	jr   nz, jr_01b_5bba                             ; $5c38: $20 $80

	ld   [$4180], sp                                 ; $5c3a: $08 $80 $41
	add  b                                           ; $5c3d: $80
	ld   [$0080], sp                                 ; $5c3e: $08 $80 $00
	add  b                                           ; $5c41: $80
	dec  b                                           ; $5c42: $05
	add  [hl]                                        ; $5c43: $86
	nop                                              ; $5c44: $00
	add  b                                           ; $5c45: $80

jr_01b_5c46:
	ld   b, b                                        ; $5c46: $40
	inc  bc                                          ; $5c47: $03
	nop                                              ; $5c48: $00
	inc  b                                           ; $5c49: $04
	inc  d                                           ; $5c4a: $14
	db   $10                                         ; $5c4b: $10
	add  b                                           ; $5c4c: $80
	nop                                              ; $5c4d: $00
	add  b                                           ; $5c4e: $80
	ld   [bc], a                                     ; $5c4f: $02
	add  d                                           ; $5c50: $82
	nop                                              ; $5c51: $00
	add  b                                           ; $5c52: $80
	ld   [bc], a                                     ; $5c53: $02
	add  b                                           ; $5c54: $80
	ld   bc, $0402                                   ; $5c55: $01 $02 $04

jr_01b_5c58:
	dec  b                                           ; $5c58: $05
	ld   bc, $0081                                   ; $5c59: $01 $81 $00
	add  b                                           ; $5c5c: $80
	ld   [bc], a                                     ; $5c5d: $02
	add  b                                           ; $5c5e: $80
	ld   bc, $0082                                   ; $5c5f: $01 $82 $00
	add  b                                           ; $5c62: $80
	add  hl, bc                                      ; $5c63: $09
	nop                                              ; $5c64: $00
	nop                                              ; $5c65: $00
	add  b                                           ; $5c66: $80
	ld   [rRAMG], sp                                 ; $5c67: $08 $00 $00
	add  b                                           ; $5c6a: $80
	ld   [bc], a                                     ; $5c6b: $02
	add  b                                           ; $5c6c: $80
	ld   bc, $1080                                   ; $5c6d: $01 $80 $10
	add  d                                           ; $5c70: $82
	nop                                              ; $5c71: $00
	add  b                                           ; $5c72: $80
	inc  h                                           ; $5c73: $24
	add  b                                           ; $5c74: $80
	nop                                              ; $5c75: $00
	add  b                                           ; $5c76: $80
	stop                                             ; $5c77: $10 $00
	nop                                              ; $5c79: $00
	add  b                                           ; $5c7a: $80
	add  b                                           ; $5c7b: $80
	add  [hl]                                        ; $5c7c: $86
	nop                                              ; $5c7d: $00
	nop                                              ; $5c7e: $00
	ld   bc, $0081                                   ; $5c7f: $01 $81 $00

jr_01b_5c82:
	nop                                              ; $5c82: $00
	ld   [bc], a                                     ; $5c83: $02
	add  c                                           ; $5c84: $81
	ld   bc, $4502                                   ; $5c85: $01 $02 $45
	inc  bc                                          ; $5c88: $03
	ld   a, e                                        ; $5c89: $7b
	add  b                                           ; $5c8a: $80
	rlca                                             ; $5c8b: $07
	add  c                                           ; $5c8c: $81
	rra                                              ; $5c8d: $1f
	db   $10                                         ; $5c8e: $10
	ld   e, a                                        ; $5c8f: $5f
	ccf                                              ; $5c90: $3f
	cp   h                                           ; $5c91: $bc
	inc  a                                           ; $5c92: $3c
	cp   b                                           ; $5c93: $b8
	jr   c, jr_01b_5c46                              ; $5c94: $38 $b0

	ld   [hl], b                                     ; $5c96: $70
	ldh  a, [$30]                                    ; $5c97: $f0 $30
	cp   b                                           ; $5c99: $b8
	jr   c, jr_01b_5c58                              ; $5c9a: $38 $bc

	inc  e                                           ; $5c9c: $1c
	ld   a, a                                        ; $5c9d: $7f
	rrca                                             ; $5c9e: $0f
	rra                                              ; $5c9f: $1f
	add  b                                           ; $5ca0: $80
	rlca                                             ; $5ca1: $07
	inc  bc                                          ; $5ca2: $03
	inc  b                                           ; $5ca3: $04
	rrca                                             ; $5ca4: $0f
	nop                                              ; $5ca5: $00
	inc  b                                           ; $5ca6: $04
	sbc  e                                           ; $5ca7: $9b
	nop                                              ; $5ca8: $00
	inc  b                                           ; $5ca9: $04
	add  b                                           ; $5caa: $80
	nop                                              ; $5cab: $00
	ld   d, b                                        ; $5cac: $50
	add  b                                           ; $5cad: $80
	and  b                                           ; $5cae: $a0
	add  b                                           ; $5caf: $80
	ret  nz                                          ; $5cb0: $c0

	add  c                                           ; $5cb1: $81
	ldh  [$0d], a                                    ; $5cb2: $e0 $0d
	db   $ec                                         ; $5cb4: $ec
	ldh  a, [$f4]                                    ; $5cb5: $f0 $f4
	ldh  a, [$f4]                                    ; $5cb7: $f0 $f4
	ld   hl, sp+$7b                                  ; $5cb9: $f8 $7b
	ld   a, h                                        ; $5cbb: $7c
	ccf                                              ; $5cbc: $3f
	jr   c, jr_01b_5cfb                              ; $5cbd: $38 $3c

	jr   nc, jr_01b_5d39                             ; $5cbf: $30 $78

	ld   h, b                                        ; $5cc1: $60
	add  e                                           ; $5cc2: $83
	ldh  [$03], a                                    ; $5cc3: $e0 $03
	nop                                              ; $5cc5: $00
	ldh  [rP1], a                                    ; $5cc6: $e0 $00

jr_01b_5cc8:
	db   $10                                         ; $5cc8: $10
	sub  a                                           ; $5cc9: $97
	nop                                              ; $5cca: $00
	inc  d                                           ; $5ccb: $14
	ld   [$8400], sp                                 ; $5ccc: $08 $00 $84
	nop                                              ; $5ccf: $00
	or   d                                           ; $5cd0: $b2
	inc  c                                           ; $5cd1: $0c
	dec  l                                           ; $5cd2: $2d
	ld   c, $2e                                      ; $5cd3: $0e $2e
	rra                                              ; $5cd5: $1f
	rst  JumpTable                                         ; $5cd6: $df
	ccf                                              ; $5cd7: $3f
	cp   a                                           ; $5cd8: $bf
	ld   a, $7f                                      ; $5cd9: $3e $7f
	ld   [$002e], sp                                 ; $5cdb: $08 $2e $00
	jr   c, jr_01b_5ce0                              ; $5cde: $38 $00

jr_01b_5ce0:
	jr   nz, @-$77                                   ; $5ce0: $20 $87

	nop                                              ; $5ce2: $00
	ld   b, $08                                      ; $5ce3: $06 $08
	nop                                              ; $5ce5: $00
	ld   bc, $0100                                   ; $5ce6: $01 $00 $01
	nop                                              ; $5ce9: $00
	inc  d                                           ; $5cea: $14
	add  c                                           ; $5ceb: $81
	ld   [$0902], sp                                 ; $5cec: $08 $02 $09
	ld   [$80aa], sp                                 ; $5cef: $08 $aa $80
	inc  e                                           ; $5cf2: $1c
	inc  bc                                          ; $5cf3: $03
	ld   e, $de                                      ; $5cf4: $1e $de

jr_01b_5cf6:
	ld   e, $1f                                      ; $5cf6: $1e $1f
	add  c                                           ; $5cf8: $81
	inc  a                                           ; $5cf9: $3c
	inc  b                                           ; $5cfa: $04

jr_01b_5cfb:
	ld   a, h                                        ; $5cfb: $7c
	inc  e                                           ; $5cfc: $1c
	ld   e, $18                                      ; $5cfd: $1e $18
	jr   c, jr_01b_5c82                              ; $5cff: $38 $81

	ld   [$1418], sp                                 ; $5d01: $08 $18 $14
	nop                                              ; $5d04: $00
	ld   [$1000], sp                                 ; $5d05: $08 $00 $10
	nop                                              ; $5d08: $00
	jr   nz, jr_01b_5d1b                             ; $5d09: $20 $10

	ld   d, [hl]                                     ; $5d0b: $56
	jr   c, jr_01b_5cc8                              ; $5d0c: $38 $ba

	ld   [hl], b                                     ; $5d0e: $70
	ld   [hl], e                                     ; $5d0f: $73
	db   $fc                                         ; $5d10: $fc
	rst  $38                                         ; $5d11: $ff
	ld   hl, sp-$04                                  ; $5d12: $f8 $fc
	jr   nc, @-$0d                                   ; $5d14: $30 $f1

	nop                                              ; $5d16: $00
	dec  [hl]                                        ; $5d17: $35
	nop                                              ; $5d18: $00
	ld   c, $00                                      ; $5d19: $0e $00

jr_01b_5d1b:
	ld   [bc], a                                     ; $5d1b: $02
	adc  l                                           ; $5d1c: $8d
	nop                                              ; $5d1d: $00
	ld   [hl-], a                                    ; $5d1e: $32
	ld   bc, $0300                                   ; $5d1f: $01 $00 $03
	nop                                              ; $5d22: $00
	inc  b                                           ; $5d23: $04
	nop                                              ; $5d24: $00
	inc  c                                           ; $5d25: $0c
	inc  b                                           ; $5d26: $04
	dec  b                                           ; $5d27: $05
	inc  b                                           ; $5d28: $04
	jr   jr_01b_5d3a                                 ; $5d29: $18 $0f

	dec  [hl]                                        ; $5d2b: $35
	ld   e, $1d                                      ; $5d2c: $1e $1d
	inc  e                                           ; $5d2e: $1c
	ld   l, e                                        ; $5d2f: $6b
	ld   a, $34                                      ; $5d30: $3e $34
	inc  a                                           ; $5d32: $3c
	bit  7, b                                        ; $5d33: $cb $78
	ld   b, h                                        ; $5d35: $44
	ld   h, b                                        ; $5d36: $60
	jr   jr_01b_5d39                                 ; $5d37: $18 $00

jr_01b_5d39:
	pop  hl                                          ; $5d39: $e1

jr_01b_5d3a:
	nop                                              ; $5d3a: $00
	ld   b, d                                        ; $5d3b: $42
	nop                                              ; $5d3c: $00
	push bc                                          ; $5d3d: $c5
	nop                                              ; $5d3e: $00
	sbc  d                                           ; $5d3f: $9a
	ld   [$102c], sp                                 ; $5d40: $08 $2c $10
	ld   e, b                                        ; $5d43: $58
	jr   nz, jr_01b_5cf6                             ; $5d44: $20 $b0

	ld   b, b                                        ; $5d46: $40
	ld   h, b                                        ; $5d47: $60
	add  b                                           ; $5d48: $80
	ret  nc                                          ; $5d49: $d0

	nop                                              ; $5d4a: $00
	or   b                                           ; $5d4b: $b0
	nop                                              ; $5d4c: $00
	ld   h, b                                        ; $5d4d: $60
	nop                                              ; $5d4e: $00
	ret  nz                                          ; $5d4f: $c0

	nop                                              ; $5d50: $00
	add  b                                           ; $5d51: $80
	sub  l                                           ; $5d52: $95
	nop                                              ; $5d53: $00
	rrca                                             ; $5d54: $0f
	ld   bc, $0300                                   ; $5d55: $01 $00 $03
	nop                                              ; $5d58: $00
	ld   b, $00                                      ; $5d59: $06 $00
	inc  c                                           ; $5d5b: $0c
	nop                                              ; $5d5c: $00
	jr   jr_01b_5d5f                                 ; $5d5d: $18 $00

jr_01b_5d5f:
	jr   nc, jr_01b_5d61                             ; $5d5f: $30 $00

jr_01b_5d61:
	ld   h, b                                        ; $5d61: $60
	nop                                              ; $5d62: $00
	ret  nz                                          ; $5d63: $c0

	nop                                              ; $5d64: $00
	ld   e, h                                        ; $5d65: $5c
	ld   bc, $ff8c                                   ; $5d66: $01 $8c $ff
	ld   [bc], a                                     ; $5d69: $02
	nop                                              ; $5d6a: $00
	rst  $38                                         ; $5d6b: $ff
	nop                                              ; $5d6c: $00
	adc  e                                           ; $5d6d: $8b
	rst  $38                                         ; $5d6e: $ff
	ld   [bc], a                                     ; $5d6f: $02
	nop                                              ; $5d70: $00
	rst  $38                                         ; $5d71: $ff
	nop                                              ; $5d72: $00
	adc  e                                           ; $5d73: $8b
	rst  $38                                         ; $5d74: $ff
	ld   [bc], a                                     ; $5d75: $02
	nop                                              ; $5d76: $00
	rst  $38                                         ; $5d77: $ff
	nop                                              ; $5d78: $00
	adc  e                                           ; $5d79: $8b
	rst  $38                                         ; $5d7a: $ff
	ld   [bc], a                                     ; $5d7b: $02
	nop                                              ; $5d7c: $00
	rst  $38                                         ; $5d7d: $ff
	nop                                              ; $5d7e: $00
	add  c                                           ; $5d7f: $81
	rst  $38                                         ; $5d80: $ff
	inc  c                                           ; $5d81: $0c
	db   $fc                                         ; $5d82: $fc
	rst  $38                                         ; $5d83: $ff
	jp   $c3ff                                       ; $5d84: $c3 $ff $c3


	rst  $38                                         ; $5d87: $ff
	db   $e3                                         ; $5d88: $e3
	rst  $38                                         ; $5d89: $ff
	ldh  [rIE], a                                    ; $5d8a: $e0 $ff
	nop                                              ; $5d8c: $00
	rst  $38                                         ; $5d8d: $ff
	nop                                              ; $5d8e: $00
	add  e                                           ; $5d8f: $83
	rst  $38                                         ; $5d90: $ff
	ld   a, [bc]                                     ; $5d91: $0a
	rrca                                             ; $5d92: $0f
	rst  $38                                         ; $5d93: $ff
	rrca                                             ; $5d94: $0f
	rst  $38                                         ; $5d95: $ff
	rra                                              ; $5d96: $1f
	rst  $38                                         ; $5d97: $ff
	rra                                              ; $5d98: $1f
	rst  $38                                         ; $5d99: $ff
	nop                                              ; $5d9a: $00
	rst  $38                                         ; $5d9b: $ff
	nop                                              ; $5d9c: $00
	add  c                                           ; $5d9d: $81
	rst  $38                                         ; $5d9e: $ff
	ld   b, $f3                                      ; $5d9f: $06 $f3
	rst  $38                                         ; $5da1: $ff
	inc  c                                           ; $5da2: $0c
	rst  $38                                         ; $5da3: $ff
	ret  nz                                          ; $5da4: $c0

	rst  $38                                         ; $5da5: $ff
	di                                               ; $5da6: $f3
	add  c                                           ; $5da7: $81
	rst  $38                                         ; $5da8: $ff
	ld   [bc], a                                     ; $5da9: $02
	call z, $00ff                                    ; $5daa: $cc $ff $00
	add  c                                           ; $5dad: $81
	rst  $38                                         ; $5dae: $ff
	inc  b                                           ; $5daf: $04
	ldh  a, [rIE]                                    ; $5db0: $f0 $ff
	ccf                                              ; $5db2: $3f
	rst  $38                                         ; $5db3: $ff
	dec  sp                                          ; $5db4: $3b
	add  c                                           ; $5db5: $81
	rst  $38                                         ; $5db6: $ff
	inc  b                                           ; $5db7: $04
	ei                                               ; $5db8: $fb
	rst  $38                                         ; $5db9: $ff
	rrca                                             ; $5dba: $0f
	rst  $38                                         ; $5dbb: $ff
	nop                                              ; $5dbc: $00
	add  c                                           ; $5dbd: $81
	rst  $38                                         ; $5dbe: $ff
	ld   [bc], a                                     ; $5dbf: $02
	add  e                                           ; $5dc0: $83
	rst  $38                                         ; $5dc1: $ff
	db   $e3                                         ; $5dc2: $e3
	add  e                                           ; $5dc3: $83
	rst  $38                                         ; $5dc4: $ff
	inc  b                                           ; $5dc5: $04
	db   $e3                                         ; $5dc6: $e3
	rst  $38                                         ; $5dc7: $ff
	ld   a, h                                        ; $5dc8: $7c
	rst  $38                                         ; $5dc9: $ff
	nop                                              ; $5dca: $00
	add  c                                           ; $5dcb: $81
	rst  $38                                         ; $5dcc: $ff
	inc  c                                           ; $5dcd: $0c
	ld   sp, hl                                      ; $5dce: $f9
	rst  $38                                         ; $5dcf: $ff
	add  [hl]                                        ; $5dd0: $86
	rst  $38                                         ; $5dd1: $ff
	add  [hl]                                        ; $5dd2: $86
	rst  $38                                         ; $5dd3: $ff
	add  $ff                                         ; $5dd4: $c6 $ff
	ret  nz                                          ; $5dd6: $c0

	rst  $38                                         ; $5dd7: $ff
	nop                                              ; $5dd8: $00
	rst  $38                                         ; $5dd9: $ff
	nop                                              ; $5dda: $00
	add  c                                           ; $5ddb: $81
	rst  $38                                         ; $5ddc: $ff
	inc  c                                           ; $5ddd: $0c
	db   $fc                                         ; $5dde: $fc
	rst  $38                                         ; $5ddf: $ff
	ld   e, $ff                                      ; $5de0: $1e $ff
	ld   e, $ff                                      ; $5de2: $1e $ff
	inc  a                                           ; $5de4: $3c
	rst  $38                                         ; $5de5: $ff
	dec  a                                           ; $5de6: $3d
	rst  $38                                         ; $5de7: $ff
	ld   [bc], a                                     ; $5de8: $02
	rst  $38                                         ; $5de9: $ff
	nop                                              ; $5dea: $00
	add  c                                           ; $5deb: $81
	rst  $38                                         ; $5dec: $ff
	inc  c                                           ; $5ded: $0c
	inc  bc                                          ; $5dee: $03
	rst  $38                                         ; $5def: $ff
	rrca                                             ; $5df0: $0f
	rst  $38                                         ; $5df1: $ff
	rrca                                             ; $5df2: $0f
	rst  $38                                         ; $5df3: $ff
	ld   a, a                                        ; $5df4: $7f
	rst  $38                                         ; $5df5: $ff
	adc  a                                           ; $5df6: $8f
	rst  $38                                         ; $5df7: $ff
	inc  c                                           ; $5df8: $0c
	rst  $38                                         ; $5df9: $ff
	nop                                              ; $5dfa: $00
	adc  e                                           ; $5dfb: $8b
	rst  $38                                         ; $5dfc: $ff
	ld   [bc], a                                     ; $5dfd: $02
	nop                                              ; $5dfe: $00
	rst  $38                                         ; $5dff: $ff
	nop                                              ; $5e00: $00
	adc  e                                           ; $5e01: $8b
	rst  $38                                         ; $5e02: $ff
	ld   [bc], a                                     ; $5e03: $02
	nop                                              ; $5e04: $00
	rst  $38                                         ; $5e05: $ff
	nop                                              ; $5e06: $00
	adc  e                                           ; $5e07: $8b
	rst  $38                                         ; $5e08: $ff
	ld   [bc], a                                     ; $5e09: $02
	nop                                              ; $5e0a: $00
	rst  $38                                         ; $5e0b: $ff
	nop                                              ; $5e0c: $00
	adc  e                                           ; $5e0d: $8b
	rst  $38                                         ; $5e0e: $ff
	ld   [bc], a                                     ; $5e0f: $02
	nop                                              ; $5e10: $00
	rst  $38                                         ; $5e11: $ff
	nop                                              ; $5e12: $00
	adc  h                                           ; $5e13: $8c
	rst  $38                                         ; $5e14: $ff
	add  b                                           ; $5e15: $80
	nop                                              ; $5e16: $00
	adc  h                                           ; $5e17: $8c
	rst  $38                                         ; $5e18: $ff
	add  b                                           ; $5e19: $80
	nop                                              ; $5e1a: $00
	adc  h                                           ; $5e1b: $8c
	rst  $38                                         ; $5e1c: $ff
	add  b                                           ; $5e1d: $80
	nop                                              ; $5e1e: $00
	adc  h                                           ; $5e1f: $8c
	rst  $38                                         ; $5e20: $ff
	add  b                                           ; $5e21: $80
	nop                                              ; $5e22: $00
	add  c                                           ; $5e23: $81
	rst  $38                                         ; $5e24: $ff
	inc  c                                           ; $5e25: $0c
	db   $fc                                         ; $5e26: $fc
	rst  $38                                         ; $5e27: $ff
	jp   $c3ff                                       ; $5e28: $c3 $ff $c3


	rst  $38                                         ; $5e2b: $ff
	db   $e3                                         ; $5e2c: $e3
	rst  $38                                         ; $5e2d: $ff
	ldh  [rIE], a                                    ; $5e2e: $e0 $ff
	add  b                                           ; $5e30: $80
	ld   a, a                                        ; $5e31: $7f
	nop                                              ; $5e32: $00
	add  e                                           ; $5e33: $83
	rst  $38                                         ; $5e34: $ff
	ld   a, [bc]                                     ; $5e35: $0a
	rrca                                             ; $5e36: $0f
	rst  $38                                         ; $5e37: $ff
	rrca                                             ; $5e38: $0f
	rst  $38                                         ; $5e39: $ff
	rra                                              ; $5e3a: $1f
	rst  $38                                         ; $5e3b: $ff
	rra                                              ; $5e3c: $1f
	rst  $38                                         ; $5e3d: $ff
	rlca                                             ; $5e3e: $07
	ld   hl, sp+$00                                  ; $5e3f: $f8 $00
	add  c                                           ; $5e41: $81
	rst  $38                                         ; $5e42: $ff
	ld   b, $f3                                      ; $5e43: $06 $f3
	rst  $38                                         ; $5e45: $ff
	inc  c                                           ; $5e46: $0c
	rst  $38                                         ; $5e47: $ff
	ret  nz                                          ; $5e48: $c0

	rst  $38                                         ; $5e49: $ff
	di                                               ; $5e4a: $f3
	add  c                                           ; $5e4b: $81
	rst  $38                                         ; $5e4c: $ff
	ld   [bc], a                                     ; $5e4d: $02
	db   $fc                                         ; $5e4e: $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5e4f: $cf
	nop                                              ; $5e50: $00
	add  c                                           ; $5e51: $81
	rst  $38                                         ; $5e52: $ff
	inc  b                                           ; $5e53: $04
	ldh  a, [rIE]                                    ; $5e54: $f0 $ff
	ccf                                              ; $5e56: $3f
	rst  $38                                         ; $5e57: $ff
	dec  sp                                          ; $5e58: $3b
	add  c                                           ; $5e59: $81
	rst  $38                                         ; $5e5a: $ff
	inc  b                                           ; $5e5b: $04
	ei                                               ; $5e5c: $fb
	rst  $38                                         ; $5e5d: $ff
	ld   a, e                                        ; $5e5e: $7b
	adc  a                                           ; $5e5f: $8f
	inc  b                                           ; $5e60: $04
	add  c                                           ; $5e61: $81
	rst  $38                                         ; $5e62: $ff
	ld   [bc], a                                     ; $5e63: $02
	add  e                                           ; $5e64: $83
	rst  $38                                         ; $5e65: $ff
	db   $e3                                         ; $5e66: $e3
	add  e                                           ; $5e67: $83
	rst  $38                                         ; $5e68: $ff
	inc  b                                           ; $5e69: $04
	db   $e3                                         ; $5e6a: $e3
	rst  $38                                         ; $5e6b: $ff
	rst  $28                                         ; $5e6c: $ef
	ld   l, h                                        ; $5e6d: $6c
	nop                                              ; $5e6e: $00
	add  c                                           ; $5e6f: $81
	rst  $38                                         ; $5e70: $ff
	inc  c                                           ; $5e71: $0c
	ld   sp, hl                                      ; $5e72: $f9
	rst  $38                                         ; $5e73: $ff
	add  [hl]                                        ; $5e74: $86
	rst  $38                                         ; $5e75: $ff
	add  [hl]                                        ; $5e76: $86
	rst  $38                                         ; $5e77: $ff
	add  $ff                                         ; $5e78: $c6 $ff
	ret  nz                                          ; $5e7a: $c0

	rst  $38                                         ; $5e7b: $ff
	nop                                              ; $5e7c: $00
	rst  $38                                         ; $5e7d: $ff
	nop                                              ; $5e7e: $00
	add  c                                           ; $5e7f: $81
	rst  $38                                         ; $5e80: $ff
	inc  c                                           ; $5e81: $0c
	db   $fc                                         ; $5e82: $fc
	rst  $38                                         ; $5e83: $ff
	ld   e, $ff                                      ; $5e84: $1e $ff
	ld   e, $ff                                      ; $5e86: $1e $ff
	inc  a                                           ; $5e88: $3c
	rst  $38                                         ; $5e89: $ff
	dec  a                                           ; $5e8a: $3d
	rst  $38                                         ; $5e8b: $ff
	ld   c, $f3                                      ; $5e8c: $0e $f3
	nop                                              ; $5e8e: $00
	add  c                                           ; $5e8f: $81
	rst  $38                                         ; $5e90: $ff
	inc  c                                           ; $5e91: $0c
	inc  bc                                          ; $5e92: $03
	rst  $38                                         ; $5e93: $ff
	rrca                                             ; $5e94: $0f
	rst  $38                                         ; $5e95: $ff
	rrca                                             ; $5e96: $0f
	rst  $38                                         ; $5e97: $ff
	ld   a, a                                        ; $5e98: $7f
	rst  $38                                         ; $5e99: $ff
	adc  a                                           ; $5e9a: $8f
	rst  $38                                         ; $5e9b: $ff
	rrca                                             ; $5e9c: $0f
	db   $fc                                         ; $5e9d: $fc
	nop                                              ; $5e9e: $00
	adc  h                                           ; $5e9f: $8c
	rst  $38                                         ; $5ea0: $ff
	add  b                                           ; $5ea1: $80
	nop                                              ; $5ea2: $00
	adc  h                                           ; $5ea3: $8c
	rst  $38                                         ; $5ea4: $ff
	add  b                                           ; $5ea5: $80
	nop                                              ; $5ea6: $00
	adc  h                                           ; $5ea7: $8c
	rst  $38                                         ; $5ea8: $ff
	add  b                                           ; $5ea9: $80
	nop                                              ; $5eaa: $00
	adc  h                                           ; $5eab: $8c
	rst  $38                                         ; $5eac: $ff
	add  b                                           ; $5ead: $80
	nop                                              ; $5eae: $00
	add  c                                           ; $5eaf: $81
	rst  $38                                         ; $5eb0: $ff
	ld   bc, $ff00                                   ; $5eb1: $01 $00 $ff
	adc  c                                           ; $5eb4: $89
	nop                                              ; $5eb5: $00
	add  c                                           ; $5eb6: $81
	rst  $38                                         ; $5eb7: $ff
	ld   bc, $ff00                                   ; $5eb8: $01 $00 $ff
	adc  c                                           ; $5ebb: $89
	nop                                              ; $5ebc: $00
	add  c                                           ; $5ebd: $81
	rst  $38                                         ; $5ebe: $ff
	ld   bc, $ff00                                   ; $5ebf: $01 $00 $ff
	adc  c                                           ; $5ec2: $89
	nop                                              ; $5ec3: $00
	add  c                                           ; $5ec4: $81
	rst  $38                                         ; $5ec5: $ff
	ld   bc, $ff00                                   ; $5ec6: $01 $00 $ff
	adc  b                                           ; $5ec9: $88
	nop                                              ; $5eca: $00
	dec  b                                           ; $5ecb: $05
	ld   h, b                                        ; $5ecc: $60
	rst  $38                                         ; $5ecd: $ff
	ldh  a, [c]                                      ; $5ece: $f2
	rst  $38                                         ; $5ecf: $ff
	ld   l, l                                        ; $5ed0: $6d
	rst  $38                                         ; $5ed1: $ff
	adc  b                                           ; $5ed2: $88
	nop                                              ; $5ed3: $00
	dec  b                                           ; $5ed4: $05
	jr   @+$01                                       ; $5ed5: $18 $ff

	ld   a, a                                        ; $5ed7: $7f
	rst  $38                                         ; $5ed8: $ff
	sbc  b                                           ; $5ed9: $98
	rst  $38                                         ; $5eda: $ff
	adc  b                                           ; $5edb: $88
	nop                                              ; $5edc: $00
	nop                                              ; $5edd: $00
	call z, $ff81                                    ; $5ede: $cc $81 $ff
	ld   bc, $ffcc                                   ; $5ee1: $01 $cc $ff
	adc  b                                           ; $5ee4: $88
	nop                                              ; $5ee5: $00
	dec  b                                           ; $5ee6: $05
	dec  bc                                          ; $5ee7: $0b
	rst  $38                                         ; $5ee8: $ff
	ei                                               ; $5ee9: $fb
	rst  $38                                         ; $5eea: $ff
	rrca                                             ; $5eeb: $0f
	rst  $38                                         ; $5eec: $ff
	adc  b                                           ; $5eed: $88
	nop                                              ; $5eee: $00
	nop                                              ; $5eef: $00
	ld   l, h                                        ; $5ef0: $6c
	add  c                                           ; $5ef1: $81
	rst  $38                                         ; $5ef2: $ff
	ld   bc, $ff6c                                   ; $5ef3: $01 $6c $ff
	adc  b                                           ; $5ef6: $88
	nop                                              ; $5ef7: $00
	dec  b                                           ; $5ef8: $05
	ret  nz                                          ; $5ef9: $c0

	rst  $38                                         ; $5efa: $ff
	db   $e4                                         ; $5efb: $e4
	rst  $38                                         ; $5efc: $ff
	db   $db                                         ; $5efd: $db
	rst  $38                                         ; $5efe: $ff
	adc  b                                           ; $5eff: $88
	nop                                              ; $5f00: $00
	dec  b                                           ; $5f01: $05
	ld   [hl-], a                                    ; $5f02: $32
	rst  $38                                         ; $5f03: $ff
	cp   $ff                                         ; $5f04: $fe $ff
	inc  sp                                          ; $5f06: $33
	rst  $38                                         ; $5f07: $ff
	adc  b                                           ; $5f08: $88
	nop                                              ; $5f09: $00
	dec  b                                           ; $5f0a: $05
	inc  c                                           ; $5f0b: $0c
	rst  $38                                         ; $5f0c: $ff
	rrca                                             ; $5f0d: $0f
	rst  $38                                         ; $5f0e: $ff
	db   $fc                                         ; $5f0f: $fc
	rst  $38                                         ; $5f10: $ff
	adc  c                                           ; $5f11: $89
	nop                                              ; $5f12: $00
	add  c                                           ; $5f13: $81
	rst  $38                                         ; $5f14: $ff
	ld   bc, $ff00                                   ; $5f15: $01 $00 $ff
	adc  c                                           ; $5f18: $89
	nop                                              ; $5f19: $00
	add  c                                           ; $5f1a: $81
	rst  $38                                         ; $5f1b: $ff
	ld   bc, $ff00                                   ; $5f1c: $01 $00 $ff
	adc  c                                           ; $5f1f: $89
	nop                                              ; $5f20: $00
	add  c                                           ; $5f21: $81
	rst  $38                                         ; $5f22: $ff
	ld   bc, $ff00                                   ; $5f23: $01 $00 $ff
	adc  c                                           ; $5f26: $89
	nop                                              ; $5f27: $00
	add  c                                           ; $5f28: $81
	rst  $38                                         ; $5f29: $ff
	ld   bc, $ff00                                   ; $5f2a: $01 $00 $ff
	adc  c                                           ; $5f2d: $89
	nop                                              ; $5f2e: $00
	pop  bc                                          ; $5f2f: $c1
	rst  $38                                         ; $5f30: $ff
	inc  c                                           ; $5f31: $0c
	db   $fc                                         ; $5f32: $fc
	rst  $38                                         ; $5f33: $ff
	jp   $c3ff                                       ; $5f34: $c3 $ff $c3


	rst  $38                                         ; $5f37: $ff
	db   $e3                                         ; $5f38: $e3
	rst  $38                                         ; $5f39: $ff
	ldh  [rIE], a                                    ; $5f3a: $e0 $ff
	add  b                                           ; $5f3c: $80
	rst  $38                                         ; $5f3d: $ff
	add  b                                           ; $5f3e: $80
	add  e                                           ; $5f3f: $83
	rst  $38                                         ; $5f40: $ff
	ld   a, [bc]                                     ; $5f41: $0a
	rrca                                             ; $5f42: $0f
	rst  $38                                         ; $5f43: $ff
	rrca                                             ; $5f44: $0f
	rst  $38                                         ; $5f45: $ff
	rra                                              ; $5f46: $1f
	rst  $38                                         ; $5f47: $ff
	rra                                              ; $5f48: $1f
	rst  $38                                         ; $5f49: $ff
	rlca                                             ; $5f4a: $07
	rst  $38                                         ; $5f4b: $ff
	rlca                                             ; $5f4c: $07
	add  c                                           ; $5f4d: $81
	rst  $38                                         ; $5f4e: $ff
	ld   b, $f3                                      ; $5f4f: $06 $f3
	rst  $38                                         ; $5f51: $ff
	inc  c                                           ; $5f52: $0c
	rst  $38                                         ; $5f53: $ff
	ret  nz                                          ; $5f54: $c0

	rst  $38                                         ; $5f55: $ff
	di                                               ; $5f56: $f3
	add  c                                           ; $5f57: $81
	rst  $38                                         ; $5f58: $ff
	ld   [bc], a                                     ; $5f59: $02
	db   $fc                                         ; $5f5a: $fc
	rst  $38                                         ; $5f5b: $ff
	jr   nc, @-$7d                                   ; $5f5c: $30 $81

	rst  $38                                         ; $5f5e: $ff
	inc  b                                           ; $5f5f: $04
	ldh  a, [rIE]                                    ; $5f60: $f0 $ff
	ccf                                              ; $5f62: $3f
	rst  $38                                         ; $5f63: $ff
	dec  sp                                          ; $5f64: $3b
	add  c                                           ; $5f65: $81
	rst  $38                                         ; $5f66: $ff
	inc  b                                           ; $5f67: $04
	ei                                               ; $5f68: $fb
	rst  $38                                         ; $5f69: $ff
	ld   a, e                                        ; $5f6a: $7b
	rst  $38                                         ; $5f6b: $ff
	ld   [hl], h                                     ; $5f6c: $74
	add  c                                           ; $5f6d: $81
	rst  $38                                         ; $5f6e: $ff
	ld   [bc], a                                     ; $5f6f: $02
	add  e                                           ; $5f70: $83
	rst  $38                                         ; $5f71: $ff
	db   $e3                                         ; $5f72: $e3
	add  e                                           ; $5f73: $83
	rst  $38                                         ; $5f74: $ff
	inc  b                                           ; $5f75: $04
	db   $e3                                         ; $5f76: $e3
	rst  $38                                         ; $5f77: $ff
	rst  $28                                         ; $5f78: $ef
	rst  $38                                         ; $5f79: $ff
	sub  e                                           ; $5f7a: $93
	add  c                                           ; $5f7b: $81
	rst  $38                                         ; $5f7c: $ff
	inc  c                                           ; $5f7d: $0c
	ld   sp, hl                                      ; $5f7e: $f9
	rst  $38                                         ; $5f7f: $ff
	add  [hl]                                        ; $5f80: $86
	rst  $38                                         ; $5f81: $ff
	add  [hl]                                        ; $5f82: $86
	rst  $38                                         ; $5f83: $ff
	add  $ff                                         ; $5f84: $c6 $ff
	ret  nz                                          ; $5f86: $c0

	rst  $38                                         ; $5f87: $ff
	nop                                              ; $5f88: $00
	rst  $38                                         ; $5f89: $ff
	nop                                              ; $5f8a: $00
	add  c                                           ; $5f8b: $81
	rst  $38                                         ; $5f8c: $ff
	inc  c                                           ; $5f8d: $0c
	db   $fc                                         ; $5f8e: $fc
	rst  $38                                         ; $5f8f: $ff
	ld   e, $ff                                      ; $5f90: $1e $ff
	ld   e, $ff                                      ; $5f92: $1e $ff
	inc  a                                           ; $5f94: $3c
	rst  $38                                         ; $5f95: $ff
	dec  a                                           ; $5f96: $3d
	rst  $38                                         ; $5f97: $ff
	ld   c, $ff                                      ; $5f98: $0e $ff
	inc  c                                           ; $5f9a: $0c
	add  c                                           ; $5f9b: $81
	rst  $38                                         ; $5f9c: $ff
	inc  c                                           ; $5f9d: $0c
	inc  bc                                          ; $5f9e: $03
	rst  $38                                         ; $5f9f: $ff
	rrca                                             ; $5fa0: $0f
	rst  $38                                         ; $5fa1: $ff
	rrca                                             ; $5fa2: $0f
	rst  $38                                         ; $5fa3: $ff
	ld   a, a                                        ; $5fa4: $7f
	rst  $38                                         ; $5fa5: $ff
	adc  a                                           ; $5fa6: $8f
	rst  $38                                         ; $5fa7: $ff
	rrca                                             ; $5fa8: $0f
	rst  $38                                         ; $5fa9: $ff
	inc  bc                                          ; $5faa: $03
	db   $fd                                         ; $5fab: $fd
	rst  $38                                         ; $5fac: $ff
	inc  b                                           ; $5fad: $04
	sbc  a                                           ; $5fae: $9f
	rst  $38                                         ; $5faf: $ff
	ldh  a, [c]                                      ; $5fb0: $f2
	rst  $38                                         ; $5fb1: $ff
	sbc  a                                           ; $5fb2: $9f
	add  e                                           ; $5fb3: $83
	rst  $38                                         ; $5fb4: $ff
	ld   a, [bc]                                     ; $5fb5: $0a
	ei                                               ; $5fb6: $fb
	rst  $38                                         ; $5fb7: $ff
	add  $ff                                         ; $5fb8: $c6 $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5fba: $cf
	rst  $38                                         ; $5fbb: $ff
	rst  $20                                         ; $5fbc: $e7
	rst  $38                                         ; $5fbd: $ff
	ld   a, a                                        ; $5fbe: $7f
	rst  $38                                         ; $5fbf: $ff
	rst  $20                                         ; $5fc0: $e7
	add  c                                           ; $5fc1: $81
	rst  $38                                         ; $5fc2: $ff
	ld   [$ffef], sp                                 ; $5fc3: $08 $ef $ff
	rst  $30                                         ; $5fc6: $f7
	rst  $38                                         ; $5fc7: $ff
	sbc  [hl]                                        ; $5fc8: $9e
	rst  $38                                         ; $5fc9: $ff
	ld   b, $ff                                      ; $5fca: $06 $ff
	inc  sp                                          ; $5fcc: $33
	add  c                                           ; $5fcd: $81
	rst  $38                                         ; $5fce: $ff
	ld   [bc], a                                     ; $5fcf: $02
	call z, $e1ff                                    ; $5fd0: $cc $ff $e1
	add  c                                           ; $5fd3: $81
	rst  $38                                         ; $5fd4: $ff
	ld   d, $bf                                      ; $5fd5: $16 $bf
	rst  $38                                         ; $5fd7: $ff
	ld   h, c                                        ; $5fd8: $61
	rst  $38                                         ; $5fd9: $ff
	ret  nz                                          ; $5fda: $c0

	rst  $38                                         ; $5fdb: $ff
	db   $f4                                         ; $5fdc: $f4
	rst  $38                                         ; $5fdd: $ff
	ei                                               ; $5fde: $fb
	rst  $38                                         ; $5fdf: $ff
	ld   a, a                                        ; $5fe0: $7f
	rst  $38                                         ; $5fe1: $ff
	ei                                               ; $5fe2: $fb
	rst  $38                                         ; $5fe3: $ff
	ei                                               ; $5fe4: $fb
	rst  $38                                         ; $5fe5: $ff
	push af                                          ; $5fe6: $f5
	rst  $38                                         ; $5fe7: $ff
	rst  $30                                         ; $5fe8: $f7
	rst  $38                                         ; $5fe9: $ff
	ld   [hl], d                                     ; $5fea: $72
	rst  $38                                         ; $5feb: $ff
	sub  e                                           ; $5fec: $93
	add  c                                           ; $5fed: $81
	rst  $38                                         ; $5fee: $ff
	nop                                              ; $5fef: $00
	res  0, e                                        ; $5ff0: $cb $83
	rst  $38                                         ; $5ff2: $ff
	ld   a, [bc]                                     ; $5ff3: $0a
	ld   [hl], e                                     ; $5ff4: $73
	rst  $38                                         ; $5ff5: $ff
	adc  a                                           ; $5ff6: $8f
	rst  $38                                         ; $5ff7: $ff
	ld   e, e                                        ; $5ff8: $5b
	rst  $38                                         ; $5ff9: $ff
	ccf                                              ; $5ffa: $3f
	rst  $38                                         ; $5ffb: $ff
	db   $e4                                         ; $5ffc: $e4
	rst  $38                                         ; $5ffd: $ff
	ccf                                              ; $5ffe: $3f
	add  e                                           ; $5fff: $83
	rst  $38                                         ; $6000: $ff
	inc  h                                           ; $6001: $24
	rst  $30                                         ; $6002: $f7
	rst  $38                                         ; $6003: $ff
	adc  l                                           ; $6004: $8d
	rst  $38                                         ; $6005: $ff
	sbc  [hl]                                        ; $6006: $9e
	rst  $38                                         ; $6007: $ff
	call $feff                                       ; $6008: $cd $ff $fe
	rst  $38                                         ; $600b: $ff
	adc  $ff                                         ; $600c: $ce $ff
	cp   $ff                                         ; $600e: $fe $ff
	sbc  $ff                                         ; $6010: $de $ff
	db   $ec                                         ; $6012: $ec
	rst  $38                                         ; $6013: $ff
	dec  a                                           ; $6014: $3d
	rst  $38                                         ; $6015: $ff
	inc  c                                           ; $6016: $0c
	rst  $38                                         ; $6017: $ff
	di                                               ; $6018: $f3
	rst  $38                                         ; $6019: $ff
	rrca                                             ; $601a: $0f
	rst  $38                                         ; $601b: $ff
	rrca                                             ; $601c: $0f
	rst  $38                                         ; $601d: $ff
	rrca                                             ; $601e: $0f
	rst  $38                                         ; $601f: $ff
	rlca                                             ; $6020: $07
	rst  $38                                         ; $6021: $ff
	ld   h, e                                        ; $6022: $63
	rst  $38                                         ; $6023: $ff
	db   $eb                                         ; $6024: $eb
	rst  $38                                         ; $6025: $ff
	ld   [hl], e                                     ; $6026: $73
	ret  nz                                          ; $6027: $c0

	rst  $38                                         ; $6028: $ff
	add  b                                           ; $6029: $80
	nop                                              ; $602a: $00
	adc  d                                           ; $602b: $8a
	rst  $38                                         ; $602c: $ff
	add  d                                           ; $602d: $82
	nop                                              ; $602e: $00
	adc  d                                           ; $602f: $8a
	rst  $38                                         ; $6030: $ff
	add  d                                           ; $6031: $82
	nop                                              ; $6032: $00
	adc  d                                           ; $6033: $8a
	rst  $38                                         ; $6034: $ff
	add  d                                           ; $6035: $82
	nop                                              ; $6036: $00
	adc  d                                           ; $6037: $8a
	rst  $38                                         ; $6038: $ff
	add  d                                           ; $6039: $82
	nop                                              ; $603a: $00
	inc  c                                           ; $603b: $0c
	rst  $38                                         ; $603c: $ff
	db   $fc                                         ; $603d: $fc
	rst  $38                                         ; $603e: $ff
	jp   $c3ff                                       ; $603f: $c3 $ff $c3


	rst  $38                                         ; $6042: $ff
	db   $e3                                         ; $6043: $e3
	rst  $38                                         ; $6044: $ff
	ldh  [rIE], a                                    ; $6045: $e0 $ff
	add  b                                           ; $6047: $80
	ld   a, a                                        ; $6048: $7f
	add  c                                           ; $6049: $81
	nop                                              ; $604a: $00
	add  c                                           ; $604b: $81
	rst  $38                                         ; $604c: $ff
	add  hl, bc                                      ; $604d: $09
	rrca                                             ; $604e: $0f
	rst  $38                                         ; $604f: $ff
	rrca                                             ; $6050: $0f
	rst  $38                                         ; $6051: $ff
	rra                                              ; $6052: $1f
	rst  $38                                         ; $6053: $ff
	rra                                              ; $6054: $1f
	rst  $38                                         ; $6055: $ff
	rlca                                             ; $6056: $07
	ld   hl, sp-$7f                                  ; $6057: $f8 $81
	nop                                              ; $6059: $00
	rlca                                             ; $605a: $07
	rst  $38                                         ; $605b: $ff
	di                                               ; $605c: $f3
	rst  $38                                         ; $605d: $ff
	inc  c                                           ; $605e: $0c
	rst  $38                                         ; $605f: $ff
	ret  nz                                          ; $6060: $c0

	rst  $38                                         ; $6061: $ff
	di                                               ; $6062: $f3
	add  c                                           ; $6063: $81
	rst  $38                                         ; $6064: $ff
	ld   bc, $cffc                                   ; $6065: $01 $fc $cf
	add  c                                           ; $6068: $81
	nop                                              ; $6069: $00
	dec  b                                           ; $606a: $05
	rst  $38                                         ; $606b: $ff
	ldh  a, [rIE]                                    ; $606c: $f0 $ff
	ccf                                              ; $606e: $3f
	rst  $38                                         ; $606f: $ff
	dec  sp                                          ; $6070: $3b
	add  c                                           ; $6071: $81
	rst  $38                                         ; $6072: $ff
	inc  b                                           ; $6073: $04
	ei                                               ; $6074: $fb
	rst  $38                                         ; $6075: $ff
	ld   a, e                                        ; $6076: $7b
	adc  a                                           ; $6077: $8f
	inc  b                                           ; $6078: $04
	add  b                                           ; $6079: $80
	nop                                              ; $607a: $00
	inc  bc                                          ; $607b: $03
	rst  $38                                         ; $607c: $ff
	add  e                                           ; $607d: $83
	rst  $38                                         ; $607e: $ff
	db   $e3                                         ; $607f: $e3
	add  e                                           ; $6080: $83
	rst  $38                                         ; $6081: $ff
	inc  bc                                          ; $6082: $03
	db   $e3                                         ; $6083: $e3
	rst  $38                                         ; $6084: $ff
	rst  $28                                         ; $6085: $ef
	ld   l, h                                        ; $6086: $6c
	add  c                                           ; $6087: $81
	nop                                              ; $6088: $00
	inc  c                                           ; $6089: $0c
	rst  $38                                         ; $608a: $ff
	ld   sp, hl                                      ; $608b: $f9
	rst  $38                                         ; $608c: $ff
	add  [hl]                                        ; $608d: $86
	rst  $38                                         ; $608e: $ff
	add  [hl]                                        ; $608f: $86
	rst  $38                                         ; $6090: $ff
	add  $ff                                         ; $6091: $c6 $ff
	ret  nz                                          ; $6093: $c0

	rst  $38                                         ; $6094: $ff
	nop                                              ; $6095: $00
	rst  $38                                         ; $6096: $ff
	add  c                                           ; $6097: $81
	nop                                              ; $6098: $00
	inc  c                                           ; $6099: $0c
	rst  $38                                         ; $609a: $ff
	db   $fc                                         ; $609b: $fc
	rst  $38                                         ; $609c: $ff
	ld   e, $ff                                      ; $609d: $1e $ff
	ld   e, $ff                                      ; $609f: $1e $ff
	inc  a                                           ; $60a1: $3c
	rst  $38                                         ; $60a2: $ff
	dec  a                                           ; $60a3: $3d
	rst  $38                                         ; $60a4: $ff
	ld   c, $f3                                      ; $60a5: $0e $f3
	add  c                                           ; $60a7: $81
	nop                                              ; $60a8: $00
	inc  c                                           ; $60a9: $0c
	rst  $38                                         ; $60aa: $ff
	inc  bc                                          ; $60ab: $03
	rst  $38                                         ; $60ac: $ff
	rrca                                             ; $60ad: $0f
	rst  $38                                         ; $60ae: $ff
	rrca                                             ; $60af: $0f
	rst  $38                                         ; $60b0: $ff
	ld   a, a                                        ; $60b1: $7f
	rst  $38                                         ; $60b2: $ff
	adc  a                                           ; $60b3: $8f
	rst  $38                                         ; $60b4: $ff
	rrca                                             ; $60b5: $0f
	db   $fc                                         ; $60b6: $fc
	add  c                                           ; $60b7: $81
	nop                                              ; $60b8: $00
	adc  d                                           ; $60b9: $8a
	rst  $38                                         ; $60ba: $ff
	add  d                                           ; $60bb: $82
	nop                                              ; $60bc: $00
	adc  d                                           ; $60bd: $8a
	rst  $38                                         ; $60be: $ff
	add  d                                           ; $60bf: $82
	nop                                              ; $60c0: $00
	adc  d                                           ; $60c1: $8a
	rst  $38                                         ; $60c2: $ff
	add  d                                           ; $60c3: $82
	nop                                              ; $60c4: $00
	adc  d                                           ; $60c5: $8a
	rst  $38                                         ; $60c6: $ff
	add  b                                           ; $60c7: $80
	nop                                              ; $60c8: $00
	add  e                                           ; $60c9: $83
	rst  $38                                         ; $60ca: $ff
	ld   bc, $ff00                                   ; $60cb: $01 $00 $ff
	add  a                                           ; $60ce: $87
	nop                                              ; $60cf: $00
	add  e                                           ; $60d0: $83
	rst  $38                                         ; $60d1: $ff
	ld   bc, $ff00                                   ; $60d2: $01 $00 $ff
	add  a                                           ; $60d5: $87
	nop                                              ; $60d6: $00
	add  e                                           ; $60d7: $83
	rst  $38                                         ; $60d8: $ff
	ld   bc, $ff00                                   ; $60d9: $01 $00 $ff
	add  a                                           ; $60dc: $87
	nop                                              ; $60dd: $00
	add  e                                           ; $60de: $83
	rst  $38                                         ; $60df: $ff
	ld   bc, $ff00                                   ; $60e0: $01 $00 $ff
	add  a                                           ; $60e3: $87
	nop                                              ; $60e4: $00
	add  e                                           ; $60e5: $83
	rst  $38                                         ; $60e6: $ff
	ld   bc, $ff00                                   ; $60e7: $01 $00 $ff
	add  b                                           ; $60ea: $80
	nop                                              ; $60eb: $00
	add  b                                           ; $60ec: $80
	inc  bc                                          ; $60ed: $03
	add  b                                           ; $60ee: $80
	ccf                                              ; $60ef: $3f
	add  b                                           ; $60f0: $80
	inc  bc                                          ; $60f1: $03
	nop                                              ; $60f2: $00
	nop                                              ; $60f3: $00
	add  e                                           ; $60f4: $83
	rst  $38                                         ; $60f5: $ff
	ld   bc, $ff00                                   ; $60f6: $01 $00 $ff
	add  d                                           ; $60f9: $82
	nop                                              ; $60fa: $00
	add  b                                           ; $60fb: $80
	ldh  a, [$81]                                    ; $60fc: $f0 $81
	nop                                              ; $60fe: $00
	add  e                                           ; $60ff: $83
	rst  $38                                         ; $6100: $ff
	ld   bc, $ff00                                   ; $6101: $01 $00 $ff
	add  b                                           ; $6104: $80
	nop                                              ; $6105: $00
	add  b                                           ; $6106: $80
	inc  c                                           ; $6107: $0c
	add  b                                           ; $6108: $80
	rst  $38                                         ; $6109: $ff
	add  b                                           ; $610a: $80
	ret  nz                                          ; $610b: $c0

	nop                                              ; $610c: $00
	nop                                              ; $610d: $00

jr_01b_610e:
	add  e                                           ; $610e: $83
	rst  $38                                         ; $610f: $ff
	ld   bc, $ff00                                   ; $6110: $01 $00 $ff
	add  b                                           ; $6113: $80
	nop                                              ; $6114: $00
	add  b                                           ; $6115: $80
	rrca                                             ; $6116: $0f
	add  b                                           ; $6117: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6118: $cf
	add  b                                           ; $6119: $80
	dec  bc                                          ; $611a: $0b
	nop                                              ; $611b: $00
	nop                                              ; $611c: $00
	add  e                                           ; $611d: $83
	rst  $38                                         ; $611e: $ff
	ld   bc, $ff00                                   ; $611f: $01 $00 $ff
	add  b                                           ; $6122: $80
	nop                                              ; $6123: $00
	add  b                                           ; $6124: $80
	ld   a, h                                        ; $6125: $7c
	add  d                                           ; $6126: $82
	ld   h, b                                        ; $6127: $60
	nop                                              ; $6128: $00
	nop                                              ; $6129: $00
	add  e                                           ; $612a: $83
	rst  $38                                         ; $612b: $ff
	ld   bc, $ff00                                   ; $612c: $01 $00 $ff
	add  b                                           ; $612f: $80
	nop                                              ; $6130: $00
	add  b                                           ; $6131: $80
	ld   b, $80                                      ; $6132: $06 $80
	ld   a, a                                        ; $6134: $7f
	add  b                                           ; $6135: $80
	ld   b, $00                                      ; $6136: $06 $00
	nop                                              ; $6138: $00
	add  e                                           ; $6139: $83
	rst  $38                                         ; $613a: $ff
	ld   bc, $ff00                                   ; $613b: $01 $00 $ff
	add  b                                           ; $613e: $80
	nop                                              ; $613f: $00
	add  b                                           ; $6140: $80
	inc  bc                                          ; $6141: $03
	add  b                                           ; $6142: $80
	ldh  [c], a                                      ; $6143: $e2
	add  b                                           ; $6144: $80
	inc  bc                                          ; $6145: $03
	nop                                              ; $6146: $00
	nop                                              ; $6147: $00
	add  e                                           ; $6148: $83
	rst  $38                                         ; $6149: $ff
	ld   bc, $ff00                                   ; $614a: $01 $00 $ff
	add  b                                           ; $614d: $80
	nop                                              ; $614e: $00
	add  b                                           ; $614f: $80
	db   $fc                                         ; $6150: $fc
	add  b                                           ; $6151: $80
	inc  c                                           ; $6152: $0c
	add  b                                           ; $6153: $80
	db   $fc                                         ; $6154: $fc
	nop                                              ; $6155: $00
	nop                                              ; $6156: $00
	add  e                                           ; $6157: $83
	rst  $38                                         ; $6158: $ff
	ld   bc, $ff00                                   ; $6159: $01 $00 $ff
	add  a                                           ; $615c: $87
	nop                                              ; $615d: $00
	add  e                                           ; $615e: $83
	rst  $38                                         ; $615f: $ff
	ld   bc, $ff00                                   ; $6160: $01 $00 $ff
	add  a                                           ; $6163: $87
	nop                                              ; $6164: $00
	add  e                                           ; $6165: $83
	rst  $38                                         ; $6166: $ff
	ld   bc, $ff00                                   ; $6167: $01 $00 $ff
	add  a                                           ; $616a: $87
	nop                                              ; $616b: $00
	add  e                                           ; $616c: $83
	rst  $38                                         ; $616d: $ff
	ld   bc, $ff00                                   ; $616e: $01 $00 $ff
	add  [hl]                                        ; $6171: $86
	nop                                              ; $6172: $00
	add  b                                           ; $6173: $80
	rst  $38                                         ; $6174: $ff
	adc  h                                           ; $6175: $8c
	nop                                              ; $6176: $00
	add  b                                           ; $6177: $80
	rst  $38                                         ; $6178: $ff
	adc  h                                           ; $6179: $8c
	nop                                              ; $617a: $00
	add  b                                           ; $617b: $80
	rst  $38                                         ; $617c: $ff
	adc  h                                           ; $617d: $8c
	nop                                              ; $617e: $00
	add  b                                           ; $617f: $80
	rst  $38                                         ; $6180: $ff
	adc  h                                           ; $6181: $8c
	nop                                              ; $6182: $00
	add  b                                           ; $6183: $80
	rst  $38                                         ; $6184: $ff
	add  b                                           ; $6185: $80
	ld   l, l                                        ; $6186: $6d
	add  h                                           ; $6187: $84
	dec  c                                           ; $6188: $0d
	add  b                                           ; $6189: $80
	add  hl, bc                                      ; $618a: $09
	add  b                                           ; $618b: $80
	jr   nc, jr_01b_610e                             ; $618c: $30 $80

	nop                                              ; $618e: $00
	add  b                                           ; $618f: $80
	rst  $38                                         ; $6190: $ff
	add  b                                           ; $6191: $80
	sbc  b                                           ; $6192: $98
	add  d                                           ; $6193: $82
	add  b                                           ; $6194: $80
	add  b                                           ; $6195: $80
	sub  b                                           ; $6196: $90
	add  b                                           ; $6197: $80
	sbc  b                                           ; $6198: $98
	add  b                                           ; $6199: $80
	ld   sp, hl                                      ; $619a: $f9
	add  b                                           ; $619b: $80
	nop                                              ; $619c: $00
	add  b                                           ; $619d: $80
	rst  $38                                         ; $619e: $ff
	add  b                                           ; $619f: $80
	call z, $ff80                                    ; $61a0: $cc $80 $ff
	add  d                                           ; $61a3: $82
	pop  hl                                          ; $61a4: $e1
	add  b                                           ; $61a5: $80
	and  c                                           ; $61a6: $a1
	add  b                                           ; $61a7: $80
	ccf                                              ; $61a8: $3f
	add  b                                           ; $61a9: $80
	nop                                              ; $61aa: $00
	add  b                                           ; $61ab: $80
	rst  $38                                         ; $61ac: $ff
	add  b                                           ; $61ad: $80
	rrca                                             ; $61ae: $0f
	add  b                                           ; $61af: $80
	adc  a                                           ; $61b0: $8f
	add  b                                           ; $61b1: $80
	adc  e                                           ; $61b2: $8b
	add  b                                           ; $61b3: $80
	adc  a                                           ; $61b4: $8f
	add  b                                           ; $61b5: $80
	add  l                                           ; $61b6: $85
	add  b                                           ; $61b7: $80
	adc  l                                           ; $61b8: $8d
	add  b                                           ; $61b9: $80
	nop                                              ; $61ba: $00
	add  b                                           ; $61bb: $80
	rst  $38                                         ; $61bc: $ff
	add  b                                           ; $61bd: $80
	ld   l, h                                        ; $61be: $6c
	add  h                                           ; $61bf: $84
	ld   e, b                                        ; $61c0: $58
	add  b                                           ; $61c1: $80
	call nc, $a480                                   ; $61c2: $d4 $80 $a4
	add  b                                           ; $61c5: $80
	nop                                              ; $61c6: $00
	add  b                                           ; $61c7: $80
	rst  $38                                         ; $61c8: $ff
	add  b                                           ; $61c9: $80
	db   $db                                         ; $61ca: $db
	add  h                                           ; $61cb: $84
	dec  de                                          ; $61cc: $1b
	add  b                                           ; $61cd: $80
	inc  de                                          ; $61ce: $13
	add  b                                           ; $61cf: $80
	ld   h, c                                        ; $61d0: $61
	add  b                                           ; $61d1: $80
	nop                                              ; $61d2: $00
	add  b                                           ; $61d3: $80
	rst  $38                                         ; $61d4: $ff
	add  b                                           ; $61d5: $80
	inc  sp                                          ; $61d6: $33
	add  b                                           ; $61d7: $80
	ld   [bc], a                                     ; $61d8: $02
	add  b                                           ; $61d9: $80
	inc  bc                                          ; $61da: $03
	add  b                                           ; $61db: $80
	ld   [hl+], a                                    ; $61dc: $22
	add  b                                           ; $61dd: $80
	ld   sp, $f380                                   ; $61de: $31 $80 $f3
	add  b                                           ; $61e1: $80
	nop                                              ; $61e2: $00
	add  b                                           ; $61e3: $80
	rst  $38                                         ; $61e4: $ff
	add  b                                           ; $61e5: $80
	db   $fc                                         ; $61e6: $fc
	add  b                                           ; $61e7: $80
	inc  c                                           ; $61e8: $0c
	add  b                                           ; $61e9: $80
	db   $fc                                         ; $61ea: $fc
	add  b                                           ; $61eb: $80
	inc  b                                           ; $61ec: $04
	add  b                                           ; $61ed: $80
	sbc  b                                           ; $61ee: $98
	add  b                                           ; $61ef: $80
	adc  h                                           ; $61f0: $8c
	add  b                                           ; $61f1: $80
	nop                                              ; $61f2: $00
	add  b                                           ; $61f3: $80
	rst  $38                                         ; $61f4: $ff
	adc  h                                           ; $61f5: $8c
	nop                                              ; $61f6: $00
	add  b                                           ; $61f7: $80
	rst  $38                                         ; $61f8: $ff
	adc  h                                           ; $61f9: $8c
	nop                                              ; $61fa: $00
	add  b                                           ; $61fb: $80
	rst  $38                                         ; $61fc: $ff
	adc  h                                           ; $61fd: $8c
	nop                                              ; $61fe: $00
	add  b                                           ; $61ff: $80
	rst  $38                                         ; $6200: $ff

jr_01b_6201:
	adc  h                                           ; $6201: $8c
	nop                                              ; $6202: $00
	add  h                                           ; $6203: $84
	ld   bc, $008a                                   ; $6204: $01 $8a $00
	nop                                              ; $6207: $00
	ld   bc, $0083                                   ; $6208: $01 $83 $00
	rlca                                             ; $620b: $07
	jr   nz, jr_01b_620e                             ; $620c: $20 $00

jr_01b_620e:
	ld   a, [hl-]                                    ; $620e: $3a
	nop                                              ; $620f: $00
	inc  b                                           ; $6210: $04
	nop                                              ; $6211: $00
	ld   de, $8001                                   ; $6212: $11 $01 $80
	inc  bc                                          ; $6215: $03
	inc  b                                           ; $6216: $04
	add  hl, bc                                      ; $6217: $09
	ld   bc, $0004                                   ; $6218: $01 $04 $00
	inc  bc                                          ; $621b: $03
	adc  l                                           ; $621c: $8d
	nop                                              ; $621d: $00
	nop                                              ; $621e: $00
	add  b                                           ; $621f: $80
	add  c                                           ; $6220: $81
	nop                                              ; $6221: $00
	rlca                                             ; $6222: $07
	ld   c, b                                        ; $6223: $48
	nop                                              ; $6224: $00
	jr   nc, jr_01b_6227                             ; $6225: $30 $00

jr_01b_6227:
	ld   [$d000], sp                                 ; $6227: $08 $00 $d0
	ret  nz                                          ; $622a: $c0

	add  b                                           ; $622b: $80
	add  b                                           ; $622c: $80
	ld   [bc], a                                     ; $622d: $02
	jr   nz, jr_01b_6230                             ; $622e: $20 $00

jr_01b_6230:
	pop  bc                                          ; $6230: $c1
	add  e                                           ; $6231: $83
	nop                                              ; $6232: $00
	ld   [bc], a                                     ; $6233: $02
	ld   [bc], a                                     ; $6234: $02

jr_01b_6235:
	nop                                              ; $6235: $00
	db   $10                                         ; $6236: $10
	add  c                                           ; $6237: $81
	nop                                              ; $6238: $00
	nop                                              ; $6239: $00
	inc  b                                           ; $623a: $04
	add  e                                           ; $623b: $83
	nop                                              ; $623c: $00
	ld   bc, $0008                                   ; $623d: $01 $08 $00
	add  d                                           ; $6240: $82
	ld   bc, $8100                                   ; $6241: $01 $00 $81
	add  c                                           ; $6244: $81
	ld   bc, $c102                                   ; $6245: $01 $02 $c1
	ld   bc, $8121                                   ; $6248: $01 $21 $81
	ld   bc, $4901                                   ; $624b: $01 $01 $49
	add  hl, bc                                      ; $624e: $09
	add  b                                           ; $624f: $80
	dec  c                                           ; $6250: $0d
	add  b                                           ; $6251: $80
	rrca                                             ; $6252: $0f
	add  b                                           ; $6253: $80
	rlca                                             ; $6254: $07
	nop                                              ; $6255: $00
	daa                                              ; $6256: $27
	add  e                                           ; $6257: $83
	rlca                                             ; $6258: $07
	add  b                                           ; $6259: $80
	inc  bc                                          ; $625a: $03
	nop                                              ; $625b: $00
	inc  de                                          ; $625c: $13
	add  c                                           ; $625d: $81
	inc  bc                                          ; $625e: $03
	add  b                                           ; $625f: $80
	ld   bc, $c908                                   ; $6260: $01 $08 $c9
	ld   bc, $01f9                                   ; $6263: $01 $f9 $01
	jr   nc, jr_01b_6268                             ; $6266: $30 $00

jr_01b_6268:
	inc  c                                           ; $6268: $0c
	nop                                              ; $6269: $00
	inc  bc                                          ; $626a: $03
	add  e                                           ; $626b: $83
	nop                                              ; $626c: $00
	nop                                              ; $626d: $00
	add  b                                           ; $626e: $80
	add  c                                           ; $626f: $81
	nop                                              ; $6270: $00
	ld   [bc], a                                     ; $6271: $02
	inc  b                                           ; $6272: $04
	nop                                              ; $6273: $00
	ld   c, b                                        ; $6274: $48
	add  c                                           ; $6275: $81
	nop                                              ; $6276: $00
	ld   [bc], a                                     ; $6277: $02
	stop                                             ; $6278: $10 $00
	jr   nz, jr_01b_6201                             ; $627a: $20 $85

	nop                                              ; $627c: $00
	nop                                              ; $627d: $00
	sub  c                                           ; $627e: $91
	add  c                                           ; $627f: $81
	sub  b                                           ; $6280: $90
	ld   [bc], a                                     ; $6281: $02
	or   d                                           ; $6282: $b2
	or   b                                           ; $6283: $b0
	pop  af                                          ; $6284: $f1
	add  c                                           ; $6285: $81
	ldh  a, [$80]                                    ; $6286: $f0 $80
	db   $f4                                         ; $6288: $f4
	nop                                              ; $6289: $00
	ld   a, [$f881]                                  ; $628a: $fa $81 $f8
	add  d                                           ; $628d: $82
	ldh  a, [rSB]                                    ; $628e: $f0 $01
	db   $f4                                         ; $6290: $f4
	ldh  a, [$82]                                    ; $6291: $f0 $82
	ldh  [rAUD1SWEEP], a                             ; $6293: $e0 $10
	add  sp, -$20                                    ; $6295: $e8 $e0
	pop  bc                                          ; $6297: $c1
	ret  nz                                          ; $6298: $c0

	rst  ToBoot                                         ; $6299: $c7
	ret  nz                                          ; $629a: $c0

	jp   z, $84c0                                    ; $629b: $ca $c0 $84

	add  b                                           ; $629e: $80
	jr   jr_01b_62a1                                 ; $629f: $18 $00

jr_01b_62a1:
	pop  hl                                          ; $62a1: $e1
	nop                                              ; $62a2: $00
	inc  b                                           ; $62a3: $04
	nop                                              ; $62a4: $00
	ld   c, $81                                      ; $62a5: $0e $81
	nop                                              ; $62a7: $00
	ld   b, $14                                      ; $62a8: $06 $14
	nop                                              ; $62aa: $00
	ld   bc, $0a00                                   ; $62ab: $01 $00 $0a
	nop                                              ; $62ae: $00
	inc  d                                           ; $62af: $14
	and  c                                           ; $62b0: $a1
	nop                                              ; $62b1: $00
	add  d                                           ; $62b2: $82
	jr   nc, jr_01b_6235                             ; $62b3: $30 $80

	nop                                              ; $62b5: $00
	db   $10                                         ; $62b6: $10
	ld   h, b                                        ; $62b7: $60
	nop                                              ; $62b8: $00
	and  b                                           ; $62b9: $a0
	nop                                              ; $62ba: $00
	ld   b, b                                        ; $62bb: $40
	nop                                              ; $62bc: $00
	ret  nz                                          ; $62bd: $c0

	nop                                              ; $62be: $00
	ld   b, b                                        ; $62bf: $40
	nop                                              ; $62c0: $00
	jr   nz, jr_01b_62c3                             ; $62c1: $20 $00

jr_01b_62c3:
	add  b                                           ; $62c3: $80
	nop                                              ; $62c4: $00
	stop                                             ; $62c5: $10 $00
	ld   b, b                                        ; $62c7: $40

jr_01b_62c8:
	add  c                                           ; $62c8: $81
	nop                                              ; $62c9: $00

jr_01b_62ca:
	inc  b                                           ; $62ca: $04
	and  b                                           ; $62cb: $a0
	nop                                              ; $62cc: $00
	stop                                             ; $62cd: $10 $00
	ld   b, b                                        ; $62cf: $40
	sbc  e                                           ; $62d0: $9b
	nop                                              ; $62d1: $00
	add  b                                           ; $62d2: $80
	ld   b, $82                                      ; $62d3: $06 $82
	ld   e, $80                                      ; $62d5: $1e $80
	ld   c, $80                                      ; $62d7: $0e $80
	nop                                              ; $62d9: $00
	ld   [bc], a                                     ; $62da: $02
	ld   b, $00                                      ; $62db: $06 $00
	dec  b                                           ; $62dd: $05
	add  c                                           ; $62de: $81
	nop                                              ; $62df: $00
	inc  c                                           ; $62e0: $0c
	ld   bc, $0300                                   ; $62e1: $01 $00 $03
	nop                                              ; $62e4: $00
	inc  b                                           ; $62e5: $04
	nop                                              ; $62e6: $00
	ld   [bc], a                                     ; $62e7: $02
	nop                                              ; $62e8: $00
	ld   a, [bc]                                     ; $62e9: $0a
	nop                                              ; $62ea: $00
	inc  b                                           ; $62eb: $04
	nop                                              ; $62ec: $00
	add  hl, bc                                      ; $62ed: $09
	adc  c                                           ; $62ee: $89
	nop                                              ; $62ef: $00
	inc  b                                           ; $62f0: $04
	ld   b, b                                        ; $62f1: $40
	nop                                              ; $62f2: $00
	ld   h, b                                        ; $62f3: $60
	nop                                              ; $62f4: $00
	jr   nz, @-$69                                   ; $62f5: $20 $95

	nop                                              ; $62f7: $00
	add  b                                           ; $62f8: $80
	ld   h, b                                        ; $62f9: $60

jr_01b_62fa:
	add  d                                           ; $62fa: $82
	ldh  [$84], a                                    ; $62fb: $e0 $84
	nop                                              ; $62fd: $00
	inc  c                                           ; $62fe: $0c
	jr   nz, jr_01b_6301                             ; $62ff: $20 $00

jr_01b_6301:
	jr   nz, jr_01b_6303                             ; $6301: $20 $00

jr_01b_6303:
	and  b                                           ; $6303: $a0
	nop                                              ; $6304: $00
	ld   b, b                                        ; $6305: $40
	nop                                              ; $6306: $00
	ld   d, b                                        ; $6307: $50
	nop                                              ; $6308: $00
	and  b                                           ; $6309: $a0
	nop                                              ; $630a: $00
	db   $10                                         ; $630b: $10
	add  c                                           ; $630c: $81
	nop                                              ; $630d: $00
	ld   [bc], a                                     ; $630e: $02
	ld   [$0800], sp                                 ; $630f: $08 $00 $08
	add  e                                           ; $6312: $83
	nop                                              ; $6313: $00
	inc  b                                           ; $6314: $04
	ld   bc, $0300                                   ; $6315: $01 $00 $03
	nop                                              ; $6318: $00
	ld   [bc], a                                     ; $6319: $02
	sub  c                                           ; $631a: $91
	nop                                              ; $631b: $00
	add  b                                           ; $631c: $80
	inc  c                                           ; $631d: $0c
	add  [hl]                                        ; $631e: $86
	rra                                              ; $631f: $1f
	add  b                                           ; $6320: $80
	ld   b, $82                                      ; $6321: $06 $82
	nop                                              ; $6323: $00
	ld   [bc], a                                     ; $6324: $02
	ld   [bc], a                                     ; $6325: $02
	nop                                              ; $6326: $00
	ld   [bc], a                                     ; $6327: $02
	sub  e                                           ; $6328: $93
	nop                                              ; $6329: $00
	inc  b                                           ; $632a: $04
	ld   b, b                                        ; $632b: $40
	nop                                              ; $632c: $00
	ld   [hl], b                                     ; $632d: $70
	nop                                              ; $632e: $00
	jr   nc, jr_01b_62c8                             ; $632f: $30 $97

	nop                                              ; $6331: $00
	add  b                                           ; $6332: $80
	ld   b, b                                        ; $6333: $40
	add  b                                           ; $6334: $80
	ldh  [$80], a                                    ; $6335: $e0 $80
	ld   b, b                                        ; $6337: $40
	add  d                                           ; $6338: $82
	nop                                              ; $6339: $00
	ld   [bc], a                                     ; $633a: $02
	jr   nz, jr_01b_633d                             ; $633b: $20 $00

jr_01b_633d:
	jr   nz, jr_01b_62ca                             ; $633d: $20 $8b

	nop                                              ; $633f: $00
	nop                                              ; $6340: $00
	inc  c                                           ; $6341: $0c
	add  c                                           ; $6342: $81
	nop                                              ; $6343: $00
	nop                                              ; $6344: $00
	inc  c                                           ; $6345: $0c
	add  c                                           ; $6346: $81
	nop                                              ; $6347: $00
	inc  b                                           ; $6348: $04
	ld   bc, $0200                                   ; $6349: $01 $00 $02
	nop                                              ; $634c: $00
	inc  bc                                          ; $634d: $03
	sub  l                                           ; $634e: $95
	nop                                              ; $634f: $00
	add  b                                           ; $6350: $80
	inc  c                                           ; $6351: $0c
	add  d                                           ; $6352: $82
	ld   e, $80                                      ; $6353: $1e $80
	ld   c, $82                                      ; $6355: $0e $82
	nop                                              ; $6357: $00
	ld   [bc], a                                     ; $6358: $02
	ld   [bc], a                                     ; $6359: $02
	nop                                              ; $635a: $00
	ld   [bc], a                                     ; $635b: $02
	sbc  b                                           ; $635c: $98
	nop                                              ; $635d: $00
	add  b                                           ; $635e: $80
	ld   b, b                                        ; $635f: $40
	add  b                                           ; $6360: $80
	jr   nz, jr_01b_62fa                             ; $6361: $20 $97

	nop                                              ; $6363: $00
	add  d                                           ; $6364: $82
	ld   b, b                                        ; $6365: $40
	sub  a                                           ; $6366: $97
	nop                                              ; $6367: $00
	add  b                                           ; $6368: $80
	inc  c                                           ; $6369: $0c
	add  h                                           ; $636a: $84
	nop                                              ; $636b: $00
	add  b                                           ; $636c: $80
	inc  bc                                          ; $636d: $03
	sub  a                                           ; $636e: $97
	nop                                              ; $636f: $00
	add  b                                           ; $6370: $80
	ld   b, $80                                      ; $6371: $06 $80
	ld   c, $80                                      ; $6373: $0e $80
	inc  c                                           ; $6375: $0c
	adc  a                                           ; $6376: $8f
	nop                                              ; $6377: $00
	add  h                                           ; $6378: $84
	db   $10                                         ; $6379: $10
	add  b                                           ; $637a: $80
	cp   $84                                         ; $637b: $fe $84
	db   $10                                         ; $637d: $10
	add  l                                           ; $637e: $85
	nop                                              ; $637f: $00
	inc  c                                           ; $6380: $0c
	ld   b, h                                        ; $6381: $44
	ld   h, [hl]                                     ; $6382: $66
	ld   a, [bc]                                     ; $6383: $0a
	inc  a                                           ; $6384: $3c
	inc  b                                           ; $6385: $04

jr_01b_6386:
	jr   jr_01b_63a8                                 ; $6386: $18 $20

	inc  a                                           ; $6388: $3c
	ld   d, b                                        ; $6389: $50
	ld   h, [hl]                                     ; $638a: $66
	jr   nz, jr_01b_6390                             ; $638b: $20 $03

	ld   bc, $0089                                   ; $638d: $01 $89 $00

jr_01b_6390:
	add  b                                           ; $6390: $80
	ld   b, b                                        ; $6391: $40
	add  d                                           ; $6392: $82
	nop                                              ; $6393: $00
	ld   a, [bc]                                     ; $6394: $0a

jr_01b_6395:
	ld   b, h                                        ; $6395: $44
	ld   h, [hl]                                     ; $6396: $66
	ld   a, [bc]                                     ; $6397: $0a
	inc  a                                           ; $6398: $3c
	inc  b                                           ; $6399: $04
	jr   jr_01b_63bc                                 ; $639a: $18 $20

	inc  a                                           ; $639c: $3c
	ld   d, b                                        ; $639d: $50
	ld   h, [hl]                                     ; $639e: $66
	ld   [hl+], a                                    ; $639f: $22
	add  h                                           ; $63a0: $84
	nop                                              ; $63a1: $00
	add  h                                           ; $63a2: $84

jr_01b_63a3:
	db   $10                                         ; $63a3: $10
	add  b                                           ; $63a4: $80
	cp   $84                                         ; $63a5: $fe $84
	db   $10                                         ; $63a7: $10

jr_01b_63a8:
	sub  e                                           ; $63a8: $93
	nop                                              ; $63a9: $00
	add  b                                           ; $63aa: $80
	add  b                                           ; $63ab: $80
	nop                                              ; $63ac: $00
	nop                                              ; $63ad: $00
	add  b                                           ; $63ae: $80
	inc  b                                           ; $63af: $04
	sub  e                                           ; $63b0: $93
	nop                                              ; $63b1: $00
	ld   a, [bc]                                     ; $63b2: $0a
	ld   b, h                                        ; $63b3: $44
	ld   h, [hl]                                     ; $63b4: $66
	ld   a, [bc]                                     ; $63b5: $0a
	inc  a                                           ; $63b6: $3c
	inc  b                                           ; $63b7: $04
	jr   jr_01b_63da                                 ; $63b8: $18 $20

	inc  a                                           ; $63ba: $3c
	ld   d, b                                        ; $63bb: $50

jr_01b_63bc:
	ld   h, [hl]                                     ; $63bc: $66
	ld   [hl+], a                                    ; $63bd: $22
	add  h                                           ; $63be: $84
	nop                                              ; $63bf: $00
	add  [hl]                                        ; $63c0: $86
	db   $10                                         ; $63c1: $10
	add  b                                           ; $63c2: $80
	cp   $83                                         ; $63c3: $fe $83
	db   $10                                         ; $63c5: $10
	ld   [bc], a                                     ; $63c6: $02
	nop                                              ; $63c7: $00
	stop                                             ; $63c8: $10 $00
	add  b                                           ; $63ca: $80
	ld   [bc], a                                     ; $63cb: $02
	add  b                                           ; $63cc: $80
	ld   b, b                                        ; $63cd: $40
	adc  b                                           ; $63ce: $88
	nop                                              ; $63cf: $00
	add  h                                           ; $63d0: $84
	db   $10                                         ; $63d1: $10
	add  b                                           ; $63d2: $80

jr_01b_63d3:
	cp   $84                                         ; $63d3: $fe $84
	db   $10                                         ; $63d5: $10
	add  c                                           ; $63d6: $81
	nop                                              ; $63d7: $00
	ld   c, $82                                      ; $63d8: $0e $82

jr_01b_63da:
	add  e                                           ; $63da: $83
	ld   b, l                                        ; $63db: $45
	ld   b, [hl]                                     ; $63dc: $46
	ld   a, [hl+]                                    ; $63dd: $2a
	inc  l                                           ; $63de: $2c
	inc  d                                           ; $63df: $14
	jr   jr_01b_6402                                 ; $63e0: $18 $20

	jr   c, jr_01b_6438                              ; $63e2: $38 $54

	ld   h, h                                        ; $63e4: $64
	and  d                                           ; $63e5: $a2
	jp   nz, $8c40                                   ; $63e6: $c2 $40 $8c

	nop                                              ; $63e9: $00
	add  b                                           ; $63ea: $80
	db   $10                                         ; $63eb: $10
	sbc  l                                           ; $63ec: $9d
	nop                                              ; $63ed: $00
	add  b                                           ; $63ee: $80
	ld   b, c                                        ; $63ef: $41
	add  b                                           ; $63f0: $80
	ld   [hl+], a                                    ; $63f1: $22
	add  b                                           ; $63f2: $80
	inc  e                                           ; $63f3: $1c
	inc  bc                                          ; $63f4: $03
	inc  d                                           ; $63f5: $14
	inc  e                                           ; $63f6: $1c
	inc  d                                           ; $63f7: $14
	inc  e                                           ; $63f8: $1c
	add  b                                           ; $63f9: $80
	ld   [hl+], a                                    ; $63fa: $22
	add  b                                           ; $63fb: $80
	ld   b, c                                        ; $63fc: $41
	adc  b                                           ; $63fd: $88
	nop                                              ; $63fe: $00
	add  b                                           ; $63ff: $80
	add  b                                           ; $6400: $80
	add  b                                           ; $6401: $80

jr_01b_6402:
	ld   b, b                                        ; $6402: $40
	add  b                                           ; $6403: $80
	jr   nz, jr_01b_6386                             ; $6404: $20 $80

	db   $10                                         ; $6406: $10
	add  b                                           ; $6407: $80
	rrca                                             ; $6408: $0f
	nop                                              ; $6409: $00
	ld   [$0f83], sp                                 ; $640a: $08 $83 $0f
	ld   bc, $0f08                                   ; $640d: $01 $08 $0f
	add  b                                           ; $6410: $80
	db   $10                                         ; $6411: $10
	add  b                                           ; $6412: $80
	jr   nz, jr_01b_6395                             ; $6413: $20 $80

	ld   b, b                                        ; $6415: $40
	adc  h                                           ; $6416: $8c
	nop                                              ; $6417: $00
	add  b                                           ; $6418: $80
	jr   nz, @-$7e                                   ; $6419: $20 $80

	ld   b, b                                        ; $641b: $40
	adc  b                                           ; $641c: $88
	add  b                                           ; $641d: $80
	add  b                                           ; $641e: $80
	ld   b, b                                        ; $641f: $40
	add  b                                           ; $6420: $80
	jr   nz, jr_01b_63a3                             ; $6421: $20 $80

	db   $10                                         ; $6423: $10
	add  b                                           ; $6424: $80
	add  d                                           ; $6425: $82
	add  b                                           ; $6426: $80
	ld   b, h                                        ; $6427: $44
	add  b                                           ; $6428: $80
	jr   c, @+$05                                    ; $6429: $38 $03

	jr   z, @+$3a                                    ; $642b: $28 $38

	jr   z, jr_01b_6467                              ; $642d: $28 $38

	add  b                                           ; $642f: $80
	ld   b, h                                        ; $6430: $44
	add  b                                           ; $6431: $80
	add  d                                           ; $6432: $82
	sbc  [hl]                                        ; $6433: $9e
	nop                                              ; $6434: $00
	add  b                                           ; $6435: $80
	inc  c                                           ; $6436: $0c
	ld   [bc], a                                     ; $6437: $02

jr_01b_6438:
	ld   [hl-], a                                    ; $6438: $32
	ld   a, $4e                                      ; $6439: $3e $4e
	add  e                                           ; $643b: $83
	ld   a, [hl]                                     ; $643c: $7e
	ld   bc, $3c00                                   ; $643d: $01 $00 $3c
	add  d                                           ; $6440: $82
	nop                                              ; $6441: $00
	add  b                                           ; $6442: $80
	inc  b                                           ; $6443: $04
	add  b                                           ; $6444: $80
	ld   [bc], a                                     ; $6445: $02
	adc  b                                           ; $6446: $88
	ld   bc, $0280                                   ; $6447: $01 $80 $02
	add  b                                           ; $644a: $80
	inc  b                                           ; $644b: $04
	add  b                                           ; $644c: $80

jr_01b_644d:
	ld   [$0092], sp                                 ; $644d: $08 $92 $00
	add  b                                           ; $6450: $80
	jr   nz, jr_01b_63d3                             ; $6451: $20 $80

	ld   de, $0e80                                   ; $6453: $11 $80 $0e
	inc  bc                                          ; $6456: $03
	ld   a, [bc]                                     ; $6457: $0a
	ld   c, $0a                                      ; $6458: $0e $0a
	ld   c, $80                                      ; $645a: $0e $80
	ld   de, $2080                                   ; $645c: $11 $80 $20
	adc  b                                           ; $645f: $88
	nop                                              ; $6460: $00
	add  b                                           ; $6461: $80
	inc  b                                           ; $6462: $04
	add  b                                           ; $6463: $80
	ld   [$f080], sp                                 ; $6464: $08 $80 $f0

jr_01b_6467:
	nop                                              ; $6467: $00
	db   $10                                         ; $6468: $10
	add  e                                           ; $6469: $83
	ldh  a, [rSB]                                    ; $646a: $f0 $01
	db   $10                                         ; $646c: $10
	ldh  a, [$80]                                    ; $646d: $f0 $80

jr_01b_646f:
	ld   [$0480], sp                                 ; $646f: $08 $80 $04
	add  b                                           ; $6472: $80
	ld   [bc], a                                     ; $6473: $02
	adc  [hl]                                        ; $6474: $8e
	nop                                              ; $6475: $00
	add  b                                           ; $6476: $80
	inc  bc                                          ; $6477: $03
	rlca                                             ; $6478: $07
	ld   [bc], a                                     ; $6479: $02
	inc  bc                                          ; $647a: $03

jr_01b_647b:
	dec  b                                           ; $647b: $05
	rlca                                             ; $647c: $07
	ld   bc, $0203                                   ; $647d: $01 $03 $02
	inc  bc                                          ; $6480: $03
	sub  [hl]                                        ; $6481: $96
	nop                                              ; $6482: $00
	add  b                                           ; $6483: $80
	ld   bc, $8280                                   ; $6484: $01 $80 $82
	add  b                                           ; $6487: $80
	ld   a, h                                        ; $6488: $7c
	nop                                              ; $6489: $00
	ld   b, h                                        ; $648a: $44

jr_01b_648b:
	add  e                                           ; $648b: $83
	ld   a, h                                        ; $648c: $7c
	ld   bc, $7c44                                   ; $648d: $01 $44 $7c
	add  b                                           ; $6490: $80
	add  d                                           ; $6491: $82
	add  b                                           ; $6492: $80
	ld   bc, $0088                                   ; $6493: $01 $88 $00
	add  b                                           ; $6496: $80
	ret  nz                                          ; $6497: $c0

	ld   [bc], a                                     ; $6498: $02
	jr   nz, jr_01b_647b                             ; $6499: $20 $e0

	ret  nc                                          ; $649b: $d0

	add  c                                           ; $649c: $81
	ldh  a, [$03]                                    ; $649d: $f0 $03
	ret  nz                                          ; $649f: $c0

	ldh  [rAUD4LEN], a                               ; $64a0: $e0 $20
	ldh  [$98], a                                    ; $64a2: $e0 $98
	nop                                              ; $64a4: $00
	add  b                                           ; $64a5: $80
	ld   a, h                                        ; $64a6: $7c
	ld   [bc], a                                     ; $64a7: $02
	ld   b, h                                        ; $64a8: $44
	ld   a, h                                        ; $64a9: $7c
	cp   d                                           ; $64aa: $ba
	add  c                                           ; $64ab: $81
	cp   $05                                         ; $64ac: $fe $05
	ld   a, $7e                                      ; $64ae: $3e $7e
	ld   e, b                                        ; $64b0: $58
	ld   a, h                                        ; $64b1: $7c
	nop                                              ; $64b2: $00
	jr   jr_01b_644d                                 ; $64b3: $18 $98

	nop                                              ; $64b5: $00
	add  b                                           ; $64b6: $80
	inc  c                                           ; $64b7: $0c
	inc  b                                           ; $64b8: $04
	ld   [hl+], a                                    ; $64b9: $22
	ld   l, $5e                                      ; $64ba: $2e $5e
	halt                                             ; $64bc: $76
	ld   h, [hl]                                     ; $64bd: $66
	add  b                                           ; $64be: $80
	ld   l, [hl]                                     ; $64bf: $6e
	ld   [bc], a                                     ; $64c0: $02
	ld   d, d                                        ; $64c1: $52
	inc  l                                           ; $64c2: $2c
	inc  a                                           ; $64c3: $3c
	add  [hl]                                        ; $64c4: $86
	nop                                              ; $64c5: $00
	add  b                                           ; $64c6: $80
	inc  bc                                          ; $64c7: $03
	ld   [$0302], sp                                 ; $64c8: $08 $02 $03
	dec  b                                           ; $64cb: $05
	rlca                                             ; $64cc: $07
	inc  bc                                          ; $64cd: $03
	nop                                              ; $64ce: $00
	ld   [bc], a                                     ; $64cf: $02
	inc  bc                                          ; $64d0: $03
	ld   bc, $0097                                   ; $64d1: $01 $97 $00
	add  b                                           ; $64d4: $80
	ld   e, h                                        ; $64d5: $5c
	ld   [bc], a                                     ; $64d6: $02
	ld   b, h                                        ; $64d7: $44
	ld   e, h                                        ; $64d8: $5c
	sbc  d                                           ; $64d9: $9a
	add  b                                           ; $64da: $80
	add  $06                                         ; $64db: $c6 $06
	cp   d                                           ; $64dd: $ba
	ld   a, d                                        ; $64de: $7a
	halt                                             ; $64df: $76
	ld   d, h                                        ; $64e0: $54
	ld   a, b                                        ; $64e1: $78
	nop                                              ; $64e2: $00
	jr   jr_01b_646f                                 ; $64e3: $18 $8a

	nop                                              ; $64e5: $00
	add  b                                           ; $64e6: $80
	ret  nz                                          ; $64e7: $c0

	ld   [bc], a                                     ; $64e8: $02
	jr   nz, jr_01b_648b                             ; $64e9: $20 $a0

	sub  b                                           ; $64eb: $90
	add  b                                           ; $64ec: $80
	ld   [hl], b                                     ; $64ed: $70
	inc  b                                           ; $64ee: $04
	stop                                             ; $64ef: $10 $00
	ldh  [rP1], a                                    ; $64f1: $e0 $00
	ldh  [$97], a                                    ; $64f3: $e0 $97
	nop                                              ; $64f5: $00
	add  b                                           ; $64f6: $80
	ld   bc, $0000                                   ; $64f7: $01 $00 $00
	add  b                                           ; $64fa: $80
	stop                                             ; $64fb: $10 $00
	nop                                              ; $64fd: $00
	add  b                                           ; $64fe: $80
	ld   b, h                                        ; $64ff: $44

jr_01b_6500:
	add  e                                           ; $6500: $83
	nop                                              ; $6501: $00
	inc  b                                           ; $6502: $04
	or   b                                           ; $6503: $b0
	or   h                                           ; $6504: $b4
	inc  h                                           ; $6505: $24
	ld   l, $0e                                      ; $6506: $2e $0e
	add  b                                           ; $6508: $80
	ld   [bc], a                                     ; $6509: $02
	add  b                                           ; $650a: $80
	inc  e                                           ; $650b: $1c
	add  b                                           ; $650c: $80
	nop                                              ; $650d: $00
	add  b                                           ; $650e: $80
	ld   b, b                                        ; $650f: $40
	add  e                                           ; $6510: $83
	nop                                              ; $6511: $00
	ld   bc, $2322                                   ; $6512: $01 $22 $23
	add  b                                           ; $6515: $80
	inc  bc                                          ; $6516: $03
	nop                                              ; $6517: $00
	ld   bc, $0080                                   ; $6518: $01 $80 $00
	add  b                                           ; $651b: $80
	ld   b, c                                        ; $651c: $41
	add  d                                           ; $651d: $82
	nop                                              ; $651e: $00
	ld   [bc], a                                     ; $651f: $02
	inc  b                                           ; $6520: $04
	dec  h                                           ; $6521: $25
	ld   hl, $008c                                   ; $6522: $21 $8c $00
	add  b                                           ; $6525: $80
	stop                                             ; $6526: $10 $00
	nop                                              ; $6528: $00
	add  b                                           ; $6529: $80
	ld   b, c                                        ; $652a: $41
	dec  bc                                          ; $652b: $0b
	nop                                              ; $652c: $00
	ld   b, h                                        ; $652d: $44
	ld   e, h                                        ; $652e: $5c

jr_01b_652f:
	ld   a, [de]                                     ; $652f: $1a
	ld   b, [hl]                                     ; $6530: $46
	ld   b, h                                        ; $6531: $44
	ld   a, [hl-]                                    ; $6532: $3a
	ld   a, [de]                                     ; $6533: $1a
	ld   [hl], $26                                   ; $6534: $36 $26
	jr   c, @+$0a                                    ; $6536: $38 $08

	add  b                                           ; $6538: $80
	nop                                              ; $6539: $00
	add  b                                           ; $653a: $80
	inc  h                                           ; $653b: $24
	add  d                                           ; $653c: $82
	nop                                              ; $653d: $00
	inc  bc                                          ; $653e: $03
	ld   [$020a], sp                                 ; $653f: $08 $0a $02
	nop                                              ; $6542: $00
	add  b                                           ; $6543: $80
	inc  b                                           ; $6544: $04
	add  b                                           ; $6545: $80
	nop                                              ; $6546: $00
	add  b                                           ; $6547: $80
	add  b                                           ; $6548: $80
	add  b                                           ; $6549: $80
	ld   h, d                                        ; $654a: $62
	ld   b, $00                                      ; $654b: $06 $00
	jr   nz, jr_01b_652f                             ; $654d: $20 $e0

	and  b                                           ; $654f: $a0
	db   $e4                                         ; $6550: $e4
	add  h                                           ; $6551: $84
	nop                                              ; $6552: $00
	add  b                                           ; $6553: $80
	ld   [bc], a                                     ; $6554: $02
	add  c                                           ; $6555: $81
	nop                                              ; $6556: $00
	add  b                                           ; $6557: $80
	db   $10                                         ; $6558: $10
	adc  h                                           ; $6559: $8c
	nop                                              ; $655a: $00
	ld   [bc], a                                     ; $655b: $02
	inc  b                                           ; $655c: $04
	inc  d                                           ; $655d: $14
	db   $10                                         ; $655e: $10
	add  c                                           ; $655f: $81
	nop                                              ; $6560: $00
	add  b                                           ; $6561: $80
	ld   b, b                                        ; $6562: $40
	add  b                                           ; $6563: $80
	nop                                              ; $6564: $00
	add  b                                           ; $6565: $80
	db   $10                                         ; $6566: $10
	add  b                                           ; $6567: $80
	nop                                              ; $6568: $00
	add  b                                           ; $6569: $80
	add  b                                           ; $656a: $80
	add  b                                           ; $656b: $80
	nop                                              ; $656c: $00
	add  b                                           ; $656d: $80
	ld   b, b                                        ; $656e: $40
	add  h                                           ; $656f: $84
	nop                                              ; $6570: $00
	add  b                                           ; $6571: $80
	add  b                                           ; $6572: $80
	nop                                              ; $6573: $00
	nop                                              ; $6574: $00
	add  b                                           ; $6575: $80
	add  b                                           ; $6576: $80
	add  l                                           ; $6577: $85
	nop                                              ; $6578: $00
	add  b                                           ; $6579: $80
	add  b                                           ; $657a: $80
	add  b                                           ; $657b: $80
	nop                                              ; $657c: $00
	add  b                                           ; $657d: $80
	jr   nz, jr_01b_6500                             ; $657e: $20 $80

	ld   [$4180], sp                                 ; $6580: $08 $80 $41
	add  b                                           ; $6583: $80
	ld   [$0080], sp                                 ; $6584: $08 $80 $00
	add  b                                           ; $6587: $80
	dec  b                                           ; $6588: $05
	add  [hl]                                        ; $6589: $86
	nop                                              ; $658a: $00
	add  b                                           ; $658b: $80
	ld   b, b                                        ; $658c: $40
	inc  bc                                          ; $658d: $03
	nop                                              ; $658e: $00
	inc  b                                           ; $658f: $04
	inc  d                                           ; $6590: $14
	db   $10                                         ; $6591: $10
	add  b                                           ; $6592: $80
	nop                                              ; $6593: $00
	add  b                                           ; $6594: $80
	ld   [bc], a                                     ; $6595: $02
	add  d                                           ; $6596: $82
	nop                                              ; $6597: $00
	add  b                                           ; $6598: $80
	ld   [bc], a                                     ; $6599: $02
	add  b                                           ; $659a: $80
	ld   bc, $0402                                   ; $659b: $01 $02 $04
	dec  b                                           ; $659e: $05
	ld   bc, $0081                                   ; $659f: $01 $81 $00
	add  b                                           ; $65a2: $80
	ld   [bc], a                                     ; $65a3: $02
	add  b                                           ; $65a4: $80
	ld   bc, $0082                                   ; $65a5: $01 $82 $00
	add  b                                           ; $65a8: $80
	add  hl, bc                                      ; $65a9: $09
	nop                                              ; $65aa: $00
	nop                                              ; $65ab: $00
	add  b                                           ; $65ac: $80
	ld   [rRAMG], sp                                 ; $65ad: $08 $00 $00
	add  b                                           ; $65b0: $80
	ld   [bc], a                                     ; $65b1: $02
	add  b                                           ; $65b2: $80
	ld   bc, $1080                                   ; $65b3: $01 $80 $10
	add  d                                           ; $65b6: $82
	nop                                              ; $65b7: $00
	add  b                                           ; $65b8: $80
	inc  h                                           ; $65b9: $24
	add  b                                           ; $65ba: $80
	nop                                              ; $65bb: $00
	add  b                                           ; $65bc: $80
	stop                                             ; $65bd: $10 $00
	nop                                              ; $65bf: $00
	add  b                                           ; $65c0: $80
	add  b                                           ; $65c1: $80
	sub  b                                           ; $65c2: $90
	nop                                              ; $65c3: $00
	nop                                              ; $65c4: $00
	ld   bc, $0083                                   ; $65c5: $01 $83 $00
	inc  b                                           ; $65c8: $04
	ld   [bc], a                                     ; $65c9: $02
	ld   bc, $0345                                   ; $65ca: $01 $45 $03
	ld   a, e                                        ; $65cd: $7b
	add  b                                           ; $65ce: $80
	rlca                                             ; $65cf: $07
	add  c                                           ; $65d0: $81
	rra                                              ; $65d1: $1f
	dec  b                                           ; $65d2: $05
	ld   e, a                                        ; $65d3: $5f
	ccf                                              ; $65d4: $3f
	cp   a                                           ; $65d5: $bf
	ld   a, a                                        ; $65d6: $7f
	rst  $38                                         ; $65d7: $ff
	ccf                                              ; $65d8: $3f
	add  b                                           ; $65d9: $80
	ld   a, $80                                      ; $65da: $3e $80
	inc  a                                           ; $65dc: $3c
	inc  b                                           ; $65dd: $04
	cp   h                                           ; $65de: $bc
	ld   a, h                                        ; $65df: $7c
	cp   $3e                                         ; $65e0: $fe $3e
	ld   a, a                                        ; $65e2: $7f
	add  d                                           ; $65e3: $82
	rra                                              ; $65e4: $1f
	dec  b                                           ; $65e5: $05
	rrca                                             ; $65e6: $0f
	ld   a, a                                        ; $65e7: $7f
	rlca                                             ; $65e8: $07

jr_01b_65e9:
	ld   c, a                                        ; $65e9: $4f
	ld   [bc], a                                     ; $65ea: $02
	rlca                                             ; $65eb: $07
	add  c                                           ; $65ec: $81
	nop                                              ; $65ed: $00
	nop                                              ; $65ee: $00
	ld   [bc], a                                     ; $65ef: $02
	sub  l                                           ; $65f0: $95
	nop                                              ; $65f1: $00
	inc  b                                           ; $65f2: $04
	add  b                                           ; $65f3: $80
	nop                                              ; $65f4: $00
	ld   b, h                                        ; $65f5: $44
	add  b                                           ; $65f6: $80
	cp   h                                           ; $65f7: $bc
	add  b                                           ; $65f8: $80
	ret  nz                                          ; $65f9: $c0

	add  e                                           ; $65fa: $83
	ldh  a, [rP1]                                    ; $65fb: $f0 $00
	db   $f4                                         ; $65fd: $f4
	add  c                                           ; $65fe: $81
	ld   hl, sp+$04                                  ; $65ff: $f8 $04
	ld   a, [$7dfc]                                  ; $6601: $fa $fc $7d
	ld   a, [hl]                                     ; $6604: $7e
	ccf                                              ; $6605: $3f
	add  c                                           ; $6606: $81
	inc  a                                           ; $6607: $3c
	ld   bc, $787e                                   ; $6608: $01 $7e $78
	add  e                                           ; $660b: $83
	ld   hl, sp+$03                                  ; $660c: $f8 $03
	ret  nz                                          ; $660e: $c0

	db   $fc                                         ; $660f: $fc
	nop                                              ; $6610: $00
	ret  nz                                          ; $6611: $c0

	sub  a                                           ; $6612: $97
	nop                                              ; $6613: $00
	ld   [$0004], sp                                 ; $6614: $08 $04 $00
	ld   [bc], a                                     ; $6617: $02
	nop                                              ; $6618: $00
	ld   bc, $4a02                                   ; $6619: $01 $02 $4a
	rlca                                             ; $661c: $07
	ld   [hl], a                                     ; $661d: $77
	add  b                                           ; $661e: $80
	rrca                                             ; $661f: $0f
	add  c                                           ; $6620: $81
	rra                                              ; $6621: $1f
	add  b                                           ; $6622: $80
	ld   e, $00                                      ; $6623: $1e $00
	ld   e, h                                        ; $6625: $5c
	add  c                                           ; $6626: $81
	inc  a                                           ; $6627: $3c
	ld   [bc], a                                     ; $6628: $02
	cp   [hl]                                        ; $6629: $be
	ld   a, [hl]                                     ; $662a: $7e
	rst  $38                                         ; $662b: $ff
	add  c                                           ; $662c: $81
	ccf                                              ; $662d: $3f
	nop                                              ; $662e: $00
	ld   a, a                                        ; $662f: $7f
	add  d                                           ; $6630: $82
	rra                                              ; $6631: $1f
	inc  bc                                          ; $6632: $03
	ld   bc, $003f                                   ; $6633: $01 $3f $00
	ld   bc, $0099                                   ; $6636: $01 $99 $00
	ld   b, $10                                      ; $6639: $06 $10
	nop                                              ; $663b: $00
	jr   nz, jr_01b_663e                             ; $663c: $20 $00

jr_01b_663e:
	ld   b, b                                        ; $663e: $40
	jr   nz, jr_01b_65e9                             ; $663f: $20 $a8

	add  b                                           ; $6641: $80
	ld   [hl], b                                     ; $6642: $70
	ld   bc, $f4f0                                   ; $6643: $01 $f0 $f4
	add  c                                           ; $6646: $81
	ld   hl, sp+$04                                  ; $6647: $f8 $04
	ld   a, [$7dfc]                                  ; $6649: $fa $fc $7d
	ld   a, [hl]                                     ; $664c: $7e
	ccf                                              ; $664d: $3f
	add  c                                           ; $664e: $81
	inc  a                                           ; $664f: $3c
	ld   bc, $787e                                   ; $6650: $01 $7e $78
	add  b                                           ; $6653: $80
	ld   hl, sp+$0c                                  ; $6654: $f8 $0c
	ld   a, [$fdfc]                                  ; $6656: $fa $fc $fd
	ld   hl, sp-$01                                  ; $6659: $f8 $ff
	ldh  a, [$f8]                                    ; $665b: $f0 $f8
	ldh  [$f0], a                                    ; $665d: $e0 $f0
	ld   b, b                                        ; $665f: $40
	ldh  [rP1], a                                    ; $6660: $e0 $00
	ld   b, b                                        ; $6662: $40
	rlc  b                                           ; $6663: $cb $00
	ld   sp, $0601                                   ; $6665: $31 $01 $06
	rrca                                             ; $6668: $0f
	nop                                              ; $6669: $00
	dec  de                                          ; $666a: $1b
	dec  bc                                          ; $666b: $0b
	dec  hl                                          ; $666c: $2b
	dec  bc                                          ; $666d: $0b
	ld   l, e                                        ; $666e: $6b
	add  c                                           ; $666f: $81
	dec  hl                                          ; $6670: $2b
	add  b                                           ; $6671: $80
	ld   a, [hl+]                                    ; $6672: $2a
	nop                                              ; $6673: $00
	sub  $83                                         ; $6674: $d6 $83
	ld   d, [hl]                                     ; $6676: $56
	add  b                                           ; $6677: $80
	ld   b, l                                        ; $6678: $45
	nop                                              ; $6679: $00
	dec  c                                           ; $667a: $0d
	add  c                                           ; $667b: $81
	dec  l                                           ; $667c: $2d
	inc  bc                                          ; $667d: $03
	xor  l                                           ; $667e: $ad
	dec  c                                           ; $667f: $0d
	ld   l, h                                        ; $6680: $6c
	inc  c                                           ; $6681: $0c
	add  b                                           ; $6682: $80
	dec  c                                           ; $6683: $0d
	add  b                                           ; $6684: $80
	ld   bc, $1f00                                   ; $6685: $01 $00 $1f
	adc  c                                           ; $6688: $89
	nop                                              ; $6689: $00
	add  hl, bc                                      ; $668a: $09
	inc  bc                                          ; $668b: $03
	nop                                              ; $668c: $00
	rlca                                             ; $668d: $07
	inc  bc                                          ; $668e: $03
	nop                                              ; $668f: $00
	ld   bc, $0007                                   ; $6690: $01 $07 $00
	ld   c, $00                                      ; $6693: $0e $00
	add  d                                           ; $6695: $82
	rlca                                             ; $6696: $07
	add  b                                           ; $6697: $80
	nop                                              ; $6698: $00
	nop                                              ; $6699: $00
	rrca                                             ; $669a: $0f
	add  e                                           ; $669b: $83
	nop                                              ; $669c: $00
	inc  bc                                          ; $669d: $03
	ld   bc, $0200                                   ; $669e: $01 $00 $02
	nop                                              ; $66a1: $00
	adc  b                                           ; $66a2: $88
	ld   bc, $0700                                   ; $66a3: $01 $00 $07
	add  c                                           ; $66a6: $81
	inc  bc                                          ; $66a7: $03
	inc  bc                                          ; $66a8: $03
	rrca                                             ; $66a9: $0f
	rlca                                             ; $66aa: $07
	ld   de, $8001                                   ; $66ab: $11 $01 $80
	nop                                              ; $66ae: $00
	inc  bc                                          ; $66af: $03
	ld   h, b                                        ; $66b0: $60
	nop                                              ; $66b1: $00
	cp   h                                           ; $66b2: $bc
	ld   a, h                                        ; $66b3: $7c
	add  b                                           ; $66b4: $80
	ld   l, h                                        ; $66b5: $6c
	nop                                              ; $66b6: $00
	cp   a                                           ; $66b7: $bf
	sbc  e                                           ; $66b8: $9b
	nop                                              ; $66b9: $00
	nop                                              ; $66ba: $00
	ld   bc, $0085                                   ; $66bb: $01 $85 $00
	nop                                              ; $66be: $00
	ld   [bc], a                                     ; $66bf: $02
	add  c                                           ; $66c0: $81
	ld   bc, $0000                                   ; $66c1: $01 $00 $00
	add  e                                           ; $66c4: $83
	ld   bc, $0202                                   ; $66c5: $01 $02 $02
	nop                                              ; $66c8: $00
	ld   bc, $0085                                   ; $66c9: $01 $85 $00
	inc  bc                                          ; $66cc: $03
	rrca                                             ; $66cd: $0f
	nop                                              ; $66ce: $00
	rst  $38                                         ; $66cf: $ff
	rrca                                             ; $66d0: $0f
	add  c                                           ; $66d1: $81
	rst  $38                                         ; $66d2: $ff
	add  b                                           ; $66d3: $80
	ld   a, b                                        ; $66d4: $78
	add  b                                           ; $66d5: $80
	add  a                                           ; $66d6: $87
	add  c                                           ; $66d7: $81
	rst  $38                                         ; $66d8: $ff
	dec  bc                                          ; $66d9: $0b
	ret  nz                                          ; $66da: $c0

	rst  $38                                         ; $66db: $ff
	ccf                                              ; $66dc: $3f
	inc  bc                                          ; $66dd: $03
	di                                               ; $66de: $f3
	inc  b                                           ; $66df: $04
	inc  d                                           ; $66e0: $14
	rrca                                             ; $66e1: $0f
	ld   [hl], a                                     ; $66e2: $77
	rra                                              ; $66e3: $1f
	ei                                               ; $66e4: $fb
	ld   a, a                                        ; $66e5: $7f
	add  b                                           ; $66e6: $80
	ccf                                              ; $66e7: $3f
	add  b                                           ; $66e8: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $66e9: $cf
	add  hl, bc                                      ; $66ea: $09
	rst  ToBoot                                         ; $66eb: $c7
	or   $f2                                         ; $66ec: $f6 $f2
	ld   a, [$fc7a]                                  ; $66ee: $fa $7a $fc
	ld   e, h                                        ; $66f1: $5c
	db   $fc                                         ; $66f2: $fc
	ld   h, h                                        ; $66f3: $64
	add  a                                           ; $66f4: $87
	add  b                                           ; $66f5: $80
	ld   a, b                                        ; $66f6: $78
	sbc  d                                           ; $66f7: $9a
	nop                                              ; $66f8: $00
	rrca                                             ; $66f9: $0f
	ccf                                              ; $66fa: $3f
	cp   $be                                         ; $66fb: $fe $be
	ldh  a, [$7c]                                    ; $66fd: $f0 $7c
	ldh  [$f1], a                                    ; $66ff: $e0 $f1
	pop  bc                                          ; $6701: $c1
	ldh  [$80], a                                    ; $6702: $e0 $80
	push bc                                          ; $6704: $c5
	ld   bc, $0282                                   ; $6705: $01 $82 $02
	add  hl, bc                                      ; $6708: $09
	ld   bc, $0680                                   ; $6709: $01 $80 $06
	dec  b                                           ; $670c: $05
	dec  de                                          ; $670d: $1b
	dec  bc                                          ; $670e: $0b
	inc  l                                           ; $670f: $2c
	inc  c                                           ; $6710: $0c
	push af                                          ; $6711: $f5
	dec  [hl]                                        ; $6712: $35
	add  b                                           ; $6713: $80
	ld   e, c                                        ; $6714: $59
	add  b                                           ; $6715: $80
	ld   l, h                                        ; $6716: $6c
	add  b                                           ; $6717: $80
	ld   [hl], $80                                   ; $6718: $36 $80
	ld   e, d                                        ; $671a: $5a
	db   $10                                         ; $671b: $10
	ld   bc, $6e6c                                   ; $671c: $01 $6c $6e
	or   b                                           ; $671f: $b0
	or   h                                           ; $6720: $b4
	ret  nz                                          ; $6721: $c0

	reti                                             ; $6722: $d9


	nop                                              ; $6723: $00
	ld   h, b                                        ; $6724: $60
	nop                                              ; $6725: $00
	add  c                                           ; $6726: $81
	nop                                              ; $6727: $00
	ld   bc, $0f00                                   ; $6728: $01 $00 $0f
	ld   bc, $8d0f                                   ; $672b: $01 $0f $8d
	nop                                              ; $672e: $00
	nop                                              ; $672f: $00
	ld   bc, $0085                                   ; $6730: $01 $85 $00
	dec  b                                           ; $6733: $05
	jr   nz, jr_01b_6736                             ; $6734: $20 $00

jr_01b_6736:
	ld   b, b                                        ; $6736: $40
	nop                                              ; $6737: $00
	ret  nz                                          ; $6738: $c0

	ld   b, b                                        ; $6739: $40
	add  b                                           ; $673a: $80
	nop                                              ; $673b: $00
	nop                                              ; $673c: $00
	pop  hl                                          ; $673d: $e1
	adc  l                                           ; $673e: $8d
	nop                                              ; $673f: $00
	add  c                                           ; $6740: $81
	rst  $38                                         ; $6741: $ff
	ld   [$ff7f], sp                                 ; $6742: $08 $7f $ff
	rrca                                             ; $6745: $0f
	ld   a, a                                        ; $6746: $7f
	nop                                              ; $6747: $00
	ld   a, [hl-]                                    ; $6748: $3a
	ld   [$38fa], sp                                 ; $6749: $08 $fa $38
	add  b                                           ; $674c: $80
	cp   b                                           ; $674d: $b8
	ld   [bc], a                                     ; $674e: $02
	or   b                                           ; $674f: $b0
	cp   d                                           ; $6750: $ba
	push af                                          ; $6751: $f5
	sbc  l                                           ; $6752: $9d
	nop                                              ; $6753: $00
	nop                                              ; $6754: $00
	add  b                                           ; $6755: $80
	adc  e                                           ; $6756: $8b
	nop                                              ; $6757: $00
	ld   [bc], a                                     ; $6758: $02
	rlca                                             ; $6759: $07
	nop                                              ; $675a: $00
	add  a                                           ; $675b: $87

jr_01b_675c:
	adc  l                                           ; $675c: $8d
	nop                                              ; $675d: $00
	add  c                                           ; $675e: $81
	rst  $38                                         ; $675f: $ff
	add  hl, bc                                      ; $6760: $09
	cp   $ff                                         ; $6761: $fe $ff
	ldh  a, [$fe]                                    ; $6763: $f0 $fe
	nop                                              ; $6765: $00
	ld   e, h                                        ; $6766: $5c
	db   $10                                         ; $6767: $10
	rra                                              ; $6768: $1f
	inc  e                                           ; $6769: $1c
	ld   e, l                                        ; $676a: $5d
	add  b                                           ; $676b: $80
	dec  e                                           ; $676c: $1d
	ld   bc, $2ecc                                   ; $676d: $01 $cc $2e
	sbc  e                                           ; $6770: $9b
	nop                                              ; $6771: $00
	add  b                                           ; $6772: $80
	ld   de, $7f02                                   ; $6773: $11 $02 $7f
	add  c                                           ; $6776: $81
	ld   bc, $4380                                   ; $6777: $01 $80 $43
	inc  bc                                          ; $677a: $03
	ld   c, a                                        ; $677b: $4f
	ld   b, c                                        ; $677c: $41
	ld   c, a                                        ; $677d: $4f
	ld   b, [hl]                                     ; $677e: $46
	add  b                                           ; $677f: $80
	ld   d, a                                        ; $6780: $57
	ld   b, $37                                      ; $6781: $06 $37
	dec  sp                                          ; $6783: $3b
	inc  hl                                          ; $6784: $23
	inc  sp                                          ; $6785: $33
	ld   b, e                                        ; $6786: $43
	ld   d, e                                        ; $6787: $53
	db   $e3                                         ; $6788: $e3
	add  b                                           ; $6789: $80
	ldh  [rTMA], a                                   ; $678a: $e0 $06
	db   $eb                                         ; $678c: $eb
	di                                               ; $678d: $f3
	db   $f4                                         ; $678e: $f4
	ldh  a, [$f3]                                    ; $678f: $f0 $f3
	ldh  a, [$f8]                                    ; $6791: $f0 $f8
	add  c                                           ; $6793: $81
	ldh  [$03], a                                    ; $6794: $e0 $03
	ldh  a, [rLCDC]                                  ; $6796: $f0 $40
	ld   h, b                                        ; $6798: $60
	nop                                              ; $6799: $00
	add  b                                           ; $679a: $80
	add  b                                           ; $679b: $80
	rlca                                             ; $679c: $07
	ldh  [$c0], a                                    ; $679d: $e0 $c0
	pop  af                                          ; $679f: $f1
	ldh  [$2f], a                                    ; $67a0: $e0 $2f
	pop  hl                                          ; $67a2: $e1
	dec  bc                                          ; $67a3: $0b
	res  0, b                                        ; $67a4: $cb $80
	xor  h                                           ; $67a6: $ac
	add  b                                           ; $67a7: $80
	or   [hl]                                        ; $67a8: $b6
	nop                                              ; $67a9: $00
	rst  $38                                         ; $67aa: $ff
	sub  l                                           ; $67ab: $95
	nop                                              ; $67ac: $00
	nop                                              ; $67ad: $00
	jr   nz, @-$7d                                   ; $67ae: $20 $81

	nop                                              ; $67b0: $00
	inc  bc                                          ; $67b1: $03
	ld   b, b                                        ; $67b2: $40
	nop                                              ; $67b3: $00
	ret  nz                                          ; $67b4: $c0

	ld   b, b                                        ; $67b5: $40
	adc  d                                           ; $67b6: $8a
	ret  nz                                          ; $67b7: $c0

	nop                                              ; $67b8: $00
	and  b                                           ; $67b9: $a0
	add  e                                           ; $67ba: $83
	add  b                                           ; $67bb: $80
	ld   [bc], a                                     ; $67bc: $02
	ld   b, b                                        ; $67bd: $40
	nop                                              ; $67be: $00
	add  b                                           ; $67bf: $80
	add  e                                           ; $67c0: $83
	nop                                              ; $67c1: $00
	ld   b, $80                                      ; $67c2: $06 $80
	nop                                              ; $67c4: $00
	pop  af                                          ; $67c5: $f1
	add  b                                           ; $67c6: $80
	rst  $38                                         ; $67c7: $ff
	pop  af                                          ; $67c8: $f1
	rst  $38                                         ; $67c9: $ff
	sbc  l                                           ; $67ca: $9d
	nop                                              ; $67cb: $00
	dec  c                                           ; $67cc: $0d
	ld   l, [hl]                                     ; $67cd: $6e
	sub  h                                           ; $67ce: $94
	ld   [hl], h                                     ; $67cf: $74
	ld   [hl], b                                     ; $67d0: $70
	ldh  a, [$fc]                                    ; $67d1: $f0 $fc
	call c, $55fc                                    ; $67d3: $dc $fc $55
	ld   a, [hl]                                     ; $67d6: $7e
	cp   d                                           ; $67d7: $ba
	ld   a, $5a                                      ; $67d8: $3e $5a
	jr   jr_01b_675c                                 ; $67da: $18 $80

	db   $10                                         ; $67dc: $10
	ld   bc, $0020                                   ; $67dd: $01 $20 $00
	add  b                                           ; $67e0: $80
	inc  bc                                          ; $67e1: $03
	ld   [$0786], sp                                 ; $67e2: $08 $86 $07
	push bc                                          ; $67e5: $c5
	adc  h                                           ; $67e6: $8c
	add  e                                           ; $67e7: $83
	adc  e                                           ; $67e8: $8b
	ld   d, h                                        ; $67e9: $54
	rlca                                             ; $67ea: $07
	add  e                                           ; $67eb: $83
	add  c                                           ; $67ec: $81
	rlca                                             ; $67ed: $07
	ld   b, $0f                                      ; $67ee: $06 $0f
	ld   bc, $0007                                   ; $67f0: $01 $07 $00
	ld   bc, $8000                                   ; $67f3: $01 $00 $80
	add  c                                           ; $67f6: $81
	nop                                              ; $67f7: $00
	ld   b, $80                                      ; $67f8: $06 $80
	nop                                              ; $67fa: $00
	add  b                                           ; $67fb: $80
	nop                                              ; $67fc: $00
	ldh  a, [$80]                                    ; $67fd: $f0 $80
	ldh  a, [$89]                                    ; $67ff: $f0 $89
	nop                                              ; $6801: $00
	ld   bc, $00c0                                   ; $6802: $01 $c0 $00
	add  d                                           ; $6805: $82
	add  b                                           ; $6806: $80
	nop                                              ; $6807: $00
	ldh  [$81], a                                    ; $6808: $e0 $81
	ret  nz                                          ; $680a: $c0

	ld   [bc], a                                     ; $680b: $02
	ldh  a, [$e0]                                    ; $680c: $f0 $e0
	nop                                              ; $680e: $00
	add  b                                           ; $680f: $80
	ldh  [$03], a                                    ; $6810: $e0 $03
	nop                                              ; $6812: $00
	ldh  a, [rP1]                                    ; $6813: $f0 $00
	add  b                                           ; $6815: $80
	add  c                                           ; $6816: $81
	nop                                              ; $6817: $00
	inc  c                                           ; $6818: $0c
	ret  nz                                          ; $6819: $c0

	add  b                                           ; $681a: $80
	ldh  a, [$c0]                                    ; $681b: $f0 $c0
	jr   c, jr_01b_684f                              ; $681d: $38 $30

	add  sp, -$20                                    ; $681f: $e8 $e0
	sub  b                                           ; $6821: $90
	ret  nz                                          ; $6822: $c0

	ld   h, b                                        ; $6823: $60
	nop                                              ; $6824: $00
	ret  nz                                          ; $6825: $c0

	adc  l                                           ; $6826: $8d
	nop                                              ; $6827: $00
	ld   [hl+], a                                    ; $6828: $22
	add  b                                           ; $6829: $80
	nop                                              ; $682a: $00
	ld   h, b                                        ; $682b: $60
	nop                                              ; $682c: $00
	ret  nc                                          ; $682d: $d0

	ret  nz                                          ; $682e: $c0

	ld   [$d000], sp                                 ; $682f: $08 $00 $d0
	ldh  a, [$50]                                    ; $6832: $f0 $50
	ldh  a, [$30]                                    ; $6834: $f0 $30
	ldh  a, [$bc]                                    ; $6836: $f0 $bc
	ld   hl, sp+$6a                                  ; $6838: $f8 $6a
	ld   hl, sp-$41                                  ; $683a: $f8 $bf
	cp   $cd                                         ; $683c: $fe $cd
	ld   a, a                                        ; $683e: $7f
	db   $ed                                         ; $683f: $ed
	ccf                                              ; $6840: $3f
	ld   [hl], a                                     ; $6841: $77
	rra                                              ; $6842: $1f
	dec  sp                                          ; $6843: $3b
	rrca                                             ; $6844: $0f
	dec  e                                           ; $6845: $1d
	rlca                                             ; $6846: $07
	ld   c, $03                                      ; $6847: $0e $03
	rlca                                             ; $6849: $07
	ld   bc, $8d02                                   ; $684a: $01 $02 $8d
	nop                                              ; $684d: $00
	nop                                              ; $684e: $00

jr_01b_684f:
	inc  e                                           ; $684f: $1c
	adc  c                                           ; $6850: $89
	ld   [$2c00], sp                                 ; $6851: $08 $00 $2c
	add  c                                           ; $6854: $81
	stop                                             ; $6855: $10 $00
	cpl                                              ; $6857: $2f
	add  c                                           ; $6858: $81
	ld   [bc], a                                     ; $6859: $02
	nop                                              ; $685a: $00
	dec  bc                                          ; $685b: $0b
	adc  c                                           ; $685c: $89
	inc  b                                           ; $685d: $04
	ld   b, $14                                      ; $685e: $06 $14
	inc  c                                           ; $6860: $0c
	ld   c, $08                                      ; $6861: $0e $08
	jr   z, jr_01b_687d                              ; $6863: $28 $18

	inc  e                                           ; $6865: $1c
	add  c                                           ; $6866: $81
	stop                                             ; $6867: $10 $00
	ld   e, b                                        ; $6869: $58
	add  e                                           ; $686a: $83
	jr   nz, jr_01b_686f                             ; $686b: $20 $02

	ld   d, a                                        ; $686d: $57
	ld   [bc], a                                     ; $686e: $02

jr_01b_686f:
	dec  bc                                          ; $686f: $0b
	add  l                                           ; $6870: $85
	inc  b                                           ; $6871: $04
	nop                                              ; $6872: $00
	ld   d, $89                                      ; $6873: $16 $89
	ld   [$2c00], sp                                 ; $6875: $08 $00 $2c
	add  e                                           ; $6878: $83
	stop                                             ; $6879: $10 $00
	ld   e, b                                        ; $687b: $58
	add  c                                           ; $687c: $81

jr_01b_687d:
	jr   nz, jr_01b_687f                             ; $687d: $20 $00

jr_01b_687f:
	ld   d, a                                        ; $687f: $57
	add  l                                           ; $6880: $85
	ld   [bc], a                                     ; $6881: $02
	nop                                              ; $6882: $00
	dec  bc                                          ; $6883: $0b
	add  l                                           ; $6884: $85
	inc  b                                           ; $6885: $04
	nop                                              ; $6886: $00
	ld   d, $83                                      ; $6887: $16 $83
	ld   [$c802], sp                                 ; $6889: $08 $02 $c8
	ld   [$836c], sp                                 ; $688c: $08 $6c $83
	ld   d, b                                        ; $688f: $50
	ld   [bc], a                                     ; $6890: $02
	or   b                                           ; $6891: $b0

jr_01b_6892:
	jr   nz, jr_01b_690c                             ; $6892: $20 $78

	add  h                                           ; $6894: $84
	nop                                              ; $6895: $00
	add  d                                           ; $6896: $82
	db   $10                                         ; $6897: $10
	add  b                                           ; $6898: $80
	ld   l, b                                        ; $6899: $68
	add  b                                           ; $689a: $80
	add  h                                           ; $689b: $84
	add  b                                           ; $689c: $80
	ld   b, $80                                      ; $689d: $06 $80
	ld   [$0092], sp                                 ; $689f: $08 $92 $00
	add  d                                           ; $68a2: $82
	db   $10                                         ; $68a3: $10
	add  b                                           ; $68a4: $80
	ld   l, h                                        ; $68a5: $6c
	add  b                                           ; $68a6: $80
	add  d                                           ; $68a7: $82
	add  b                                           ; $68a8: $80
	ld   bc, $0e80                                   ; $68a9: $01 $80 $0e
	sbc  d                                           ; $68ac: $9a
	nop                                              ; $68ad: $00
	add  b                                           ; $68ae: $80
	add  b                                           ; $68af: $80
	sub  b                                           ; $68b0: $90
	nop                                              ; $68b1: $00
	add  b                                           ; $68b2: $80
	ld   sp, $2e80                                   ; $68b3: $31 $80 $2e
	add  d                                           ; $68b6: $82
	ld   b, b                                        ; $68b7: $40
	add  d                                           ; $68b8: $82
	add  b                                           ; $68b9: $80
	sub  d                                           ; $68ba: $92
	nop                                              ; $68bb: $00
	add  d                                           ; $68bc: $82
	add  b                                           ; $68bd: $80
	add  b                                           ; $68be: $80
	ld   h, b                                        ; $68bf: $60
	add  b                                           ; $68c0: $80
	db   $10                                         ; $68c1: $10
	add  b                                           ; $68c2: $80
	ld   [$0482], sp                                 ; $68c3: $08 $82 $04
	add  b                                           ; $68c6: $80
	ld   [$1080], sp                                 ; $68c7: $08 $80 $10
	adc  c                                           ; $68ca: $89
	nop                                              ; $68cb: $00
	dec  b                                           ; $68cc: $05
	inc  e                                           ; $68cd: $1c
	db   $d3                                         ; $68ce: $d3
	rst  JumpTable                                         ; $68cf: $df
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $68d0: $cf
	ei                                               ; $68d1: $fb
	db   $db                                         ; $68d2: $db
	add  b                                           ; $68d3: $80
	or   a                                           ; $68d4: $b7
	add  b                                           ; $68d5: $80
	xor  a                                           ; $68d6: $af
	add  b                                           ; $68d7: $80
	ld   l, a                                        ; $68d8: $6f
	add  b                                           ; $68d9: $80
	ld   [hl], b                                     ; $68da: $70
	add  b                                           ; $68db: $80
	ld   l, a                                        ; $68dc: $6f
	add  d                                           ; $68dd: $82
	rst  $30                                         ; $68de: $f7
	add  b                                           ; $68df: $80
	ei                                               ; $68e0: $fb
	inc  c                                           ; $68e1: $0c
	db   $eb                                         ; $68e2: $eb
	ei                                               ; $68e3: $fb
	push af                                          ; $68e4: $f5
	db   $ed                                         ; $68e5: $ed
	jp   z, $2eee                                    ; $68e6: $ca $ee $2e

	halt                                             ; $68e9: $76
	or   $96                                         ; $68ea: $f6 $96
	ld   d, h                                        ; $68ec: $54
	ret  nz                                          ; $68ed: $c0

	ld   a, a                                        ; $68ee: $7f
	add  e                                           ; $68ef: $83
	rst  $38                                         ; $68f0: $ff
	add  hl, bc                                      ; $68f1: $09
	rst  $28                                         ; $68f2: $ef
	rst  $38                                         ; $68f3: $ff
	cpl                                              ; $68f4: $2f
	rst  $38                                         ; $68f5: $ff
	ld   e, $ff                                      ; $68f6: $1e $ff
	reti                                             ; $68f8: $d9


	rst  $38                                         ; $68f9: $ff
	rra                                              ; $68fa: $1f
	jr   jr_01b_687d                                 ; $68fb: $18 $80

	ret  nz                                          ; $68fd: $c0

	nop                                              ; $68fe: $00
	and  b                                           ; $68ff: $a0
	add  b                                           ; $6900: $80
	or   d                                           ; $6901: $b2
	add  b                                           ; $6902: $80
	and  a                                           ; $6903: $a7
	dec  bc                                          ; $6904: $0b
	and  d                                           ; $6905: $a2
	add  b                                           ; $6906: $80
	add  d                                           ; $6907: $82
	add  a                                           ; $6908: $87
	and  a                                           ; $6909: $a7
	and  d                                           ; $690a: $a2
	sub  d                                           ; $690b: $92

jr_01b_690c:
	ret  nc                                          ; $690c: $d0

	ret  nz                                          ; $690d: $c0

	ld   b, b                                        ; $690e: $40
	ld   [hl], c                                     ; $690f: $71
	jr   nc, jr_01b_6892                             ; $6910: $30 $80

	adc  c                                           ; $6912: $89
	add  b                                           ; $6913: $80
	pop  bc                                          ; $6914: $c1
	add  b                                           ; $6915: $80
	add  c                                           ; $6916: $81
	ld   b, $85                                      ; $6917: $06 $85
	add  h                                           ; $6919: $84
	push hl                                          ; $691a: $e5
	and  l                                           ; $691b: $a5
	ld   c, l                                        ; $691c: $4d
	ld   a, [bc]                                     ; $691d: $0a
	rlca                                             ; $691e: $07
	add  d                                           ; $691f: $82
	rst  $38                                         ; $6920: $ff
	inc  c                                           ; $6921: $0c
	rst  $30                                         ; $6922: $f7
	rst  $38                                         ; $6923: $ff
	push hl                                          ; $6924: $e5
	rst  $38                                         ; $6925: $ff
	jp   hl                                          ; $6926: $e9


	rst  $38                                         ; $6927: $ff

jr_01b_6928:
	ei                                               ; $6928: $fb
	rst  $38                                         ; $6929: $ff
	rra                                              ; $692a: $1f
	rst  $38                                         ; $692b: $ff
	ldh  [c], a                                      ; $692c: $e2
	sub  d                                           ; $692d: $92
	sub  b                                           ; $692e: $90
	add  b                                           ; $692f: $80
	sbc  h                                           ; $6930: $9c
	add  b                                           ; $6931: $80
	and  a                                           ; $6932: $a7
	add  b                                           ; $6933: $80
	ld   [hl], b                                     ; $6934: $70
	add  hl, bc                                      ; $6935: $09
	set  7, e                                        ; $6936: $cb $fb
	jr   nc, jr_01b_6928                             ; $6938: $30 $ee

	rst  $28                                         ; $693a: $ef
	pop  bc                                          ; $693b: $c1
	ldh  a, [rSVBK]                                  ; $693c: $f0 $70
	ld   c, c                                        ; $693e: $49
	add  hl, bc                                      ; $693f: $09
	add  b                                           ; $6940: $80
	add  hl, sp                                      ; $6941: $39
	add  b                                           ; $6942: $80
	push af                                          ; $6943: $f5
	add  b                                           ; $6944: $80
	ld   c, [hl]                                     ; $6945: $4e
	rrca                                             ; $6946: $0f
	db   $d3                                         ; $6947: $d3
	rst  JumpTable                                         ; $6948: $df
	inc  c                                           ; $6949: $0c
	rlca                                             ; $694a: $07
	ld   [hl], a                                     ; $694b: $77
	ld   a, a                                        ; $694c: $7f
	rrca                                             ; $694d: $0f
	adc  b                                           ; $694e: $88
	ld   a, [hl+]                                    ; $694f: $2a
	ld   a, [de]                                     ; $6950: $1a
	cp   d                                           ; $6951: $ba
	xor  d                                           ; $6952: $aa
	cp   d                                           ; $6953: $ba
	dec  de                                          ; $6954: $1b
	cp   e                                           ; $6955: $bb
	cp   c                                           ; $6956: $b9
	add  b                                           ; $6957: $80
	xor  e                                           ; $6958: $ab
	ld   bc, $f8fb                                   ; $6959: $01 $fb $f8
	add  b                                           ; $695c: $80
	dec  sp                                          ; $695d: $3b
	inc  b                                           ; $695e: $04
	ld   e, c                                        ; $695f: $59
	ld   a, $7f                                      ; $6960: $3e $7f
	cpl                                              ; $6962: $2f
	ccf                                              ; $6963: $3f
	add  b                                           ; $6964: $80
	db   $dd                                         ; $6965: $dd
	dec  b                                           ; $6966: $05
	ld   [hl-], a                                    ; $6967: $32
	ld   [hl], d                                     ; $6968: $72
	jp   c, $d1ba                                    ; $6969: $da $ba $d1

	pop  af                                          ; $696c: $f1
	add  b                                           ; $696d: $80
	rst  $28                                         ; $696e: $ef
	add  hl, bc                                      ; $696f: $09
	ld   e, c                                        ; $6970: $59
	rst  JumpTable                                         ; $6971: $df
	ld   a, c                                        ; $6972: $79
	rst  $38                                         ; $6973: $ff
	cp   $ff                                         ; $6974: $fe $ff
	cp   d                                           ; $6976: $ba
	cp   a                                           ; $6977: $bf
	ld   c, c                                        ; $6978: $49
	ld   c, a                                        ; $6979: $4f
	add  b                                           ; $697a: $80
	ld   e, a                                        ; $697b: $5f
	ld   c, $8d                                      ; $697c: $0e $8d
	adc  a                                           ; $697e: $8f
	ld   [hl], a                                     ; $697f: $77
	rst  $30                                         ; $6980: $f7
	ld   e, e                                        ; $6981: $5b
	ei                                               ; $6982: $fb
	or   c                                           ; $6983: $b1
	push de                                          ; $6984: $d5
	ld   e, c                                        ; $6985: $59
	db   $dd                                         ; $6986: $dd
	ld   d, l                                        ; $6987: $55
	db   $dd                                         ; $6988: $dd
	ret  z                                           ; $6989: $c8

	db   $dd                                         ; $698a: $dd
	sbc  l                                           ; $698b: $9d
	add  b                                           ; $698c: $80
	push de                                          ; $698d: $d5
	add  b                                           ; $698e: $80
	rst  JumpTable                                         ; $698f: $df
	inc  bc                                          ; $6990: $03
	call c, $989c                                    ; $6991: $dc $9c $98
	rst  $20                                         ; $6994: $e7
	add  b                                           ; $6995: $80
	ld   e, $80                                      ; $6996: $1e $80
	push af                                          ; $6998: $f5
	inc  bc                                          ; $6999: $03
	rst  $38                                         ; $699a: $ff
	ccf                                              ; $699b: $3f
	rst  $38                                         ; $699c: $ff
	ret  nz                                          ; $699d: $c0

	add  b                                           ; $699e: $80
	rst  $38                                         ; $699f: $ff
	add  b                                           ; $69a0: $80
	ret  nz                                          ; $69a1: $c0

	inc  bc                                          ; $69a2: $03
	ld   a, $3d                                      ; $69a3: $3e $3d
	ld   a, a                                        ; $69a5: $7f
	ld   a, h                                        ; $69a6: $7c
	add  b                                           ; $69a7: $80
	add  c                                           ; $69a8: $81
	add  b                                           ; $69a9: $80
	add  d                                           ; $69aa: $82
	add  b                                           ; $69ab: $80
	ld   a, [hl-]                                    ; $69ac: $3a
	add  b                                           ; $69ad: $80
	ld   b, d                                        ; $69ae: $42
	add  b                                           ; $69af: $80
	ld   a, [hl-]                                    ; $69b0: $3a
	add  b                                           ; $69b1: $80
	ret  nz                                          ; $69b2: $c0

	add  b                                           ; $69b3: $80
	inc  a                                           ; $69b4: $3c
	rlca                                             ; $69b5: $07
	ret  nz                                          ; $69b6: $c0

	sbc  h                                           ; $69b7: $9c
	rst  JumpTable                                         ; $69b8: $df
	cp   l                                           ; $69b9: $bd
	cp   a                                           ; $69ba: $bf
	sbc  l                                           ; $69bb: $9d
	cp   a                                           ; $69bc: $bf
	and  d                                           ; $69bd: $a2
	add  b                                           ; $69be: $80
	cp   l                                           ; $69bf: $bd
	ld   bc, $babb                                   ; $69c0: $01 $bb $ba
	add  b                                           ; $69c3: $80
	rst  $10                                         ; $69c4: $d7
	add  b                                           ; $69c5: $80
	rst  JumpTable                                         ; $69c6: $df
	ld   c, $6f                                      ; $69c7: $0e $6f
	ld   d, h                                        ; $69c9: $54
	ei                                               ; $69ca: $fb
	cp   l                                           ; $69cb: $bd
	db   $fd                                         ; $69cc: $fd
	dec  a                                           ; $69cd: $3d
	db   $fd                                         ; $69ce: $fd
	xor  l                                           ; $69cf: $ad
	db   $fd                                         ; $69d0: $fd
	db   $dd                                         ; $69d1: $dd
	db   $fd                                         ; $69d2: $fd
	db   $eb                                         ; $69d3: $eb
	ei                                               ; $69d4: $fb
	db   $db                                         ; $69d5: $db
	ei                                               ; $69d6: $fb
	add  b                                           ; $69d7: $80
	or   $08                                         ; $69d8: $f6 $08
	rrca                                             ; $69da: $0f
	ld   a, a                                        ; $69db: $7f
	ld   [hl], a                                     ; $69dc: $77
	cp   a                                           ; $69dd: $bf
	cp   e                                           ; $69de: $bb
	rst  JumpTable                                         ; $69df: $df
	db   $dd                                         ; $69e0: $dd
	rst  JumpTable                                         ; $69e1: $df
	ld   a, $80                                      ; $69e2: $3e $80
	db   $ec                                         ; $69e4: $ec
	dec  b                                           ; $69e5: $05
	db   $eb                                         ; $69e6: $eb
	ei                                               ; $69e7: $fb
	rst  $30                                         ; $69e8: $f7
	rst  $20                                         ; $69e9: $e7
	and  $06                                         ; $69ea: $e6 $06
	add  b                                           ; $69ec: $80
	dec  a                                           ; $69ed: $3d
	add  b                                           ; $69ee: $80
	pop  bc                                          ; $69ef: $c1
	add  b                                           ; $69f0: $80
	dec  a                                           ; $69f1: $3d
	add  b                                           ; $69f2: $80
	pop  bc                                          ; $69f3: $c1
	add  b                                           ; $69f4: $80
	dec  a                                           ; $69f5: $3d
	add  b                                           ; $69f6: $80
	pop  bc                                          ; $69f7: $c1
	add  b                                           ; $69f8: $80
	dec  sp                                          ; $69f9: $3b
	add  b                                           ; $69fa: $80
	jp   nz, Jump_01b_7380                           ; $69fb: $c2 $80 $73

	add  b                                           ; $69fe: $80
	inc  a                                           ; $69ff: $3c
	add  b                                           ; $6a00: $80
	ld   e, a                                        ; $6a01: $5f
	add  b                                           ; $6a02: $80
	xor  a                                           ; $6a03: $af
	add  b                                           ; $6a04: $80
	or   e                                           ; $6a05: $b3
	ld   b, $35                                      ; $6a06: $06 $35
	ld   [hl], l                                     ; $6a08: $75
	ld   b, [hl]                                     ; $6a09: $46
	and  $ef                                         ; $6a0a: $e6 $ef
	pop  bc                                          ; $6a0c: $c1
	adc  $80                                         ; $6a0d: $ce $80
	inc  a                                           ; $6a0f: $3c
	inc  b                                           ; $6a10: $04
	ld   hl, sp-$06                                  ; $6a11: $f8 $fa
	add  d                                           ; $6a13: $82
	push af                                          ; $6a14: $f5
	ld   [hl], l                                     ; $6a15: $75
	add  b                                           ; $6a16: $80
	call $ac06                                       ; $6a17: $cd $06 $ac
	xor  [hl]                                        ; $6a1a: $ae
	ld   h, d                                        ; $6a1b: $62
	ld   h, a                                        ; $6a1c: $67
	rst  $30                                         ; $6a1d: $f7
	sub  h                                           ; $6a1e: $94
	inc  h                                           ; $6a1f: $24
	add  b                                           ; $6a20: $80
	inc  a                                           ; $6a21: $3c
	ld   bc, $0c1c                                   ; $6a22: $01 $1c $0c
	add  b                                           ; $6a25: $80
	dec  c                                           ; $6a26: $0d
	ld   de, $1d6d                                   ; $6a27: $11 $6d $1d
	ld   c, l                                        ; $6a2a: $4d
	dec  l                                           ; $6a2b: $2d
	cp   l                                           ; $6a2c: $bd
	dec  a                                           ; $6a2d: $3d
	ld   a, [hl-]                                    ; $6a2e: $3a
	ld   a, d                                        ; $6a2f: $7a
	add  b                                           ; $6a30: $80
	ld   a, b                                        ; $6a31: $78
	ld   sp, hl                                      ; $6a32: $f9
	sbc  c                                           ; $6a33: $99
	sbc  e                                           ; $6a34: $9b
	db   $e3                                         ; $6a35: $e3
	ld   h, a                                        ; $6a36: $67
	ld   [hl], a                                     ; $6a37: $77
	rst  $30                                         ; $6a38: $f7
	add  a                                           ; $6a39: $87
	add  b                                           ; $6a3a: $80
	db   $d3                                         ; $6a3b: $d3
	add  b                                           ; $6a3c: $80
	dec  [hl]                                        ; $6a3d: $35
	add  b                                           ; $6a3e: $80
	ld   l, l                                        ; $6a3f: $6d
	ld   bc, $f3f0                                   ; $6a40: $01 $f0 $f3
	add  b                                           ; $6a43: $80
	ld   a, e                                        ; $6a44: $7b
	dec  c                                           ; $6a45: $0d
	xor  a                                           ; $6a46: $af
	cp   l                                           ; $6a47: $bd
	xor  b                                           ; $6a48: $a8
	cp   l                                           ; $6a49: $bd
	jp   c, $d7de                                    ; $6a4a: $da $de $d7

	rst  JumpTable                                         ; $6a4d: $df
	db   $e3                                         ; $6a4e: $e3
	rst  $28                                         ; $6a4f: $ef
	adc  e                                           ; $6a50: $8b
	rst  $28                                         ; $6a51: $ef
	ld   l, a                                        ; $6a52: $6f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6a53: $cf
	add  b                                           ; $6a54: $80
	sbc  $0d                                         ; $6a55: $de $0d
	ld   a, c                                        ; $6a57: $79
	cp   l                                           ; $6a58: $bd
	cp   c                                           ; $6a59: $b9
	cp   h                                           ; $6a5a: $bc
	ld   [hl], d                                     ; $6a5b: $72
	ld   a, e                                        ; $6a5c: $7b
	di                                               ; $6a5d: $f3
	ei                                               ; $6a5e: $fb
	sub  a                                           ; $6a5f: $97
	rst  $30                                         ; $6a60: $f7
	and  c                                           ; $6a61: $a1
	rst  $30                                         ; $6a62: $f7
	call z, $807a                                    ; $6a63: $cc $7a $80
	ld   a, [hl-]                                    ; $6a66: $3a
	add  b                                           ; $6a67: $80
	ld   a, [de]                                     ; $6a68: $1a
	add  b                                           ; $6a69: $80
	ld   a, d                                        ; $6a6a: $7a
	ld   bc, $0282                                   ; $6a6b: $01 $82 $02
	add  d                                           ; $6a6e: $82
	or   $80                                         ; $6a6f: $f6 $80
	db   $10                                         ; $6a71: $10
	add  b                                           ; $6a72: $80
	ld   e, d                                        ; $6a73: $5a
	add  b                                           ; $6a74: $80
	inc  a                                           ; $6a75: $3c
	ld   bc, $7f7e                                   ; $6a76: $01 $7e $7f
	add  b                                           ; $6a79: $80
	rra                                              ; $6a7a: $1f
	ld   c, $ed                                      ; $6a7b: $0e $ed
	rst  $28                                         ; $6a7d: $ef
	ld   [hl], e                                     ; $6a7e: $73
	ld   [hl], a                                     ; $6a7f: $77
	rlca                                             ; $6a80: $07
	inc  bc                                          ; $6a81: $03
	cp   e                                           ; $6a82: $bb
	cp   c                                           ; $6a83: $b9
	ld   c, $ef                                      ; $6a84: $0e $ef
	rst  $20                                         ; $6a86: $e7
	rst  $30                                         ; $6a87: $f7
	pop  af                                          ; $6a88: $f1
	ld   [hl], a                                     ; $6a89: $77
	halt                                             ; $6a8a: $76
	add  b                                           ; $6a8b: $80
	ld   [hl], a                                     ; $6a8c: $77
	add  b                                           ; $6a8d: $80
	cp   a                                           ; $6a8e: $bf
	add  b                                           ; $6a8f: $80
	add  e                                           ; $6a90: $83
	add  b                                           ; $6a91: $80
	db   $ec                                         ; $6a92: $ec
	rlca                                             ; $6a93: $07
	rst  JumpTable                                         ; $6a94: $df
	cpl                                              ; $6a95: $2f
	rst  $30                                         ; $6a96: $f7
	rst  $20                                         ; $6a97: $e7
	rst  $28                                         ; $6a98: $ef
	adc  a                                           ; $6a99: $8f
	xor  $6e                                         ; $6a9a: $ee $6e
	add  b                                           ; $6a9c: $80
	xor  $80                                         ; $6a9d: $ee $80
	db   $fd                                         ; $6a9f: $fd
	add  b                                           ; $6aa0: $80
	pop  bc                                          ; $6aa1: $c1
	add  b                                           ; $6aa2: $80
	scf                                              ; $6aa3: $37
	ld   [bc], a                                     ; $6aa4: $02
	ei                                               ; $6aa5: $fb
	and  c                                           ; $6aa6: $a1
	ld   e, d                                        ; $6aa7: $5a
	add  b                                           ; $6aa8: $80
	inc  a                                           ; $6aa9: $3c
	inc  c                                           ; $6aaa: $0c
	ld   l, [hl]                                     ; $6aab: $6e
	cp   $e8                                         ; $6aac: $fe $e8
	ld   hl, sp-$49                                  ; $6aae: $f8 $b7
	rst  $30                                         ; $6ab0: $f7
	adc  $ee                                         ; $6ab1: $ce $ee
	ldh  [$c0], a                                    ; $6ab3: $e0 $c0
	db   $dd                                         ; $6ab5: $dd
	sbc  l                                           ; $6ab6: $9d
	ld   a, a                                        ; $6ab7: $7f
	rst  $38                                         ; $6ab8: $ff
	nop                                              ; $6ab9: $00
	rst  $38                                         ; $6aba: $ff
	nop                                              ; $6abb: $00
	rst  $38                                         ; $6abc: $ff
	nop                                              ; $6abd: $00
	rst  $38                                         ; $6abe: $ff
	nop                                              ; $6abf: $00
	xor  c                                           ; $6ac0: $a9
	nop                                              ; $6ac1: $00
	cpl                                              ; $6ac2: $2f
	ld   bc, $0f06                                   ; $6ac3: $01 $06 $0f
	nop                                              ; $6ac6: $00
	dec  de                                          ; $6ac7: $1b
	dec  bc                                          ; $6ac8: $0b
	dec  hl                                          ; $6ac9: $2b
	dec  bc                                          ; $6aca: $0b
	ld   l, d                                        ; $6acb: $6a
	add  e                                           ; $6acc: $83
	ld   a, [hl+]                                    ; $6acd: $2a
	nop                                              ; $6ace: $00
	sub  $83                                         ; $6acf: $d6 $83
	ld   d, [hl]                                     ; $6ad1: $56
	add  b                                           ; $6ad2: $80
	ld   b, l                                        ; $6ad3: $45
	nop                                              ; $6ad4: $00
	dec  c                                           ; $6ad5: $0d
	add  c                                           ; $6ad6: $81
	dec  l                                           ; $6ad7: $2d
	inc  bc                                          ; $6ad8: $03
	xor  l                                           ; $6ad9: $ad
	dec  c                                           ; $6ada: $0d
	ld   l, h                                        ; $6adb: $6c
	inc  c                                           ; $6adc: $0c
	add  b                                           ; $6add: $80
	dec  c                                           ; $6ade: $0d
	add  b                                           ; $6adf: $80
	ld   bc, $1f00                                   ; $6ae0: $01 $00 $1f
	adc  c                                           ; $6ae3: $89
	nop                                              ; $6ae4: $00
	ld   b, $03                                      ; $6ae5: $06 $03
	nop                                              ; $6ae7: $00
	rlca                                             ; $6ae8: $07
	inc  bc                                          ; $6ae9: $03
	nop                                              ; $6aea: $00
	inc  bc                                          ; $6aeb: $03
	inc  c                                           ; $6aec: $0c
	add  l                                           ; $6aed: $85
	rlca                                             ; $6aee: $07
	add  b                                           ; $6aef: $80
	nop                                              ; $6af0: $00
	nop                                              ; $6af1: $00
	rrca                                             ; $6af2: $0f
	add  e                                           ; $6af3: $83
	nop                                              ; $6af4: $00
	inc  bc                                          ; $6af5: $03
	ld   bc, $0200                                   ; $6af6: $01 $00 $02
	nop                                              ; $6af9: $00
	adc  b                                           ; $6afa: $88
	ld   bc, $0700                                   ; $6afb: $01 $00 $07
	add  c                                           ; $6afe: $81
	inc  bc                                          ; $6aff: $03
	inc  bc                                          ; $6b00: $03
	rrca                                             ; $6b01: $0f
	rlca                                             ; $6b02: $07
	ld   de, $8001                                   ; $6b03: $11 $01 $80
	nop                                              ; $6b06: $00
	inc  bc                                          ; $6b07: $03
	ld   h, b                                        ; $6b08: $60
	nop                                              ; $6b09: $00
	cp   h                                           ; $6b0a: $bc
	ld   a, h                                        ; $6b0b: $7c
	add  b                                           ; $6b0c: $80
	ld   l, h                                        ; $6b0d: $6c
	nop                                              ; $6b0e: $00
	cp   a                                           ; $6b0f: $bf
	sub  l                                           ; $6b10: $95
	nop                                              ; $6b11: $00
	nop                                              ; $6b12: $00
	inc  b                                           ; $6b13: $04
	add  c                                           ; $6b14: $81
	nop                                              ; $6b15: $00
	ld   [bc], a                                     ; $6b16: $02
	ld   [bc], a                                     ; $6b17: $02
	nop                                              ; $6b18: $00
	inc  bc                                          ; $6b19: $03
	add  b                                           ; $6b1a: $80
	ld   [bc], a                                     ; $6b1b: $02
	adc  c                                           ; $6b1c: $89
	inc  bc                                          ; $6b1d: $03
	nop                                              ; $6b1e: $00
	dec  b                                           ; $6b1f: $05
	add  c                                           ; $6b20: $81
	ld   bc, $0004                                   ; $6b21: $01 $04 $00
	ld   bc, $0002                                   ; $6b24: $01 $02 $00
	ld   bc, $0083                                   ; $6b27: $01 $83 $00
	inc  bc                                          ; $6b2a: $03
	rrca                                             ; $6b2b: $0f
	nop                                              ; $6b2c: $00
	rst  $38                                         ; $6b2d: $ff
	rrca                                             ; $6b2e: $0f
	adc  b                                           ; $6b2f: $88
	rst  $38                                         ; $6b30: $ff
	dec  c                                           ; $6b31: $0d
	ret  nz                                          ; $6b32: $c0

	rst  $38                                         ; $6b33: $ff
	ccf                                              ; $6b34: $3f
	inc  bc                                          ; $6b35: $03
	di                                               ; $6b36: $f3
	inc  b                                           ; $6b37: $04
	jr   jr_01b_6b49                                 ; $6b38: $18 $0f

	ld   a, l                                        ; $6b3a: $7d
	rra                                              ; $6b3b: $1f
	rst  $38                                         ; $6b3c: $ff
	ld   a, a                                        ; $6b3d: $7f
	ld   a, $3f                                      ; $6b3e: $3e $3f
	add  b                                           ; $6b40: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6b41: $cf
	add  hl, bc                                      ; $6b42: $09
	add  $f6                                         ; $6b43: $c6 $f6
	ldh  a, [c]                                      ; $6b45: $f2
	ld   a, [$fcf8]                                  ; $6b46: $fa $f8 $fc

jr_01b_6b49:
	call c, $1cfc                                    ; $6b49: $dc $fc $1c
	rst  $38                                         ; $6b4c: $ff
	adc  h                                           ; $6b4d: $8c
	nop                                              ; $6b4e: $00
	add  b                                           ; $6b4f: $80
	ld   [$3080], sp                                 ; $6b50: $08 $80 $30
	adc  d                                           ; $6b53: $8a
	nop                                              ; $6b54: $00
	rrca                                             ; $6b55: $0f
	ccf                                              ; $6b56: $3f
	cp   $be                                         ; $6b57: $fe $be
	ldh  a, [$7c]                                    ; $6b59: $f0 $7c
	ldh  [$f1], a                                    ; $6b5b: $e0 $f1
	pop  bc                                          ; $6b5d: $c1
	ldh  [$80], a                                    ; $6b5e: $e0 $80
	push bc                                          ; $6b60: $c5
	ld   bc, $0282                                   ; $6b61: $01 $82 $02
	add  hl, bc                                      ; $6b64: $09
	ld   bc, $0680                                   ; $6b65: $01 $80 $06
	dec  b                                           ; $6b68: $05
	dec  de                                          ; $6b69: $1b
	dec  bc                                          ; $6b6a: $0b
	inc  l                                           ; $6b6b: $2c
	inc  c                                           ; $6b6c: $0c
	push af                                          ; $6b6d: $f5
	dec  [hl]                                        ; $6b6e: $35
	add  b                                           ; $6b6f: $80
	ld   e, c                                        ; $6b70: $59
	add  b                                           ; $6b71: $80
	ld   l, h                                        ; $6b72: $6c
	add  b                                           ; $6b73: $80
	ld   [hl], $80                                   ; $6b74: $36 $80
	ld   e, d                                        ; $6b76: $5a
	db   $10                                         ; $6b77: $10
	ld   bc, $6e6c                                   ; $6b78: $01 $6c $6e
	or   b                                           ; $6b7b: $b0
	or   h                                           ; $6b7c: $b4
	ret  nz                                          ; $6b7d: $c0

	reti                                             ; $6b7e: $d9


	nop                                              ; $6b7f: $00
	ld   h, b                                        ; $6b80: $60
	nop                                              ; $6b81: $00
	add  c                                           ; $6b82: $81
	nop                                              ; $6b83: $00
	ld   bc, $0f00                                   ; $6b84: $01 $00 $0f
	ld   bc, $9d0f                                   ; $6b87: $01 $0f $9d
	nop                                              ; $6b8a: $00
	nop                                              ; $6b8b: $00
	ld   bc, $008b                                   ; $6b8c: $01 $8b $00
	ld   [bc], a                                     ; $6b8f: $02
	ldh  [rP1], a                                    ; $6b90: $e0 $00
	ld   e, $80                                      ; $6b92: $1e $80
	rst  $38                                         ; $6b94: $ff
	ld   [$ff7f], sp                                 ; $6b95: $08 $7f $ff
	rrca                                             ; $6b98: $0f
	ld   a, a                                        ; $6b99: $7f
	nop                                              ; $6b9a: $00
	ld   a, [hl-]                                    ; $6b9b: $3a
	ld   [$38fa], sp                                 ; $6b9c: $08 $fa $38
	add  b                                           ; $6b9f: $80
	cp   b                                           ; $6ba0: $b8
	ld   [bc], a                                     ; $6ba1: $02
	or   b                                           ; $6ba2: $b0
	cp   d                                           ; $6ba3: $ba
	push af                                          ; $6ba4: $f5
	sbc  l                                           ; $6ba5: $9d
	nop                                              ; $6ba6: $00
	add  c                                           ; $6ba7: $81
	rst  $38                                         ; $6ba8: $ff
	add  hl, bc                                      ; $6ba9: $09
	cp   $ff                                         ; $6baa: $fe $ff
	ldh  a, [$fe]                                    ; $6bac: $f0 $fe
	nop                                              ; $6bae: $00
	ld   e, h                                        ; $6baf: $5c
	db   $10                                         ; $6bb0: $10
	rra                                              ; $6bb1: $1f
	inc  e                                           ; $6bb2: $1c
	ld   e, l                                        ; $6bb3: $5d
	add  b                                           ; $6bb4: $80
	dec  e                                           ; $6bb5: $1d
	ld   bc, $3fdd                                   ; $6bb6: $01 $dd $3f
	sbc  e                                           ; $6bb9: $9b
	nop                                              ; $6bba: $00
	add  b                                           ; $6bbb: $80
	db   $10                                         ; $6bbc: $10
	ld   [bc], a                                     ; $6bbd: $02
	ld   a, a                                        ; $6bbe: $7f
	add  c                                           ; $6bbf: $81
	ld   bc, $4380                                   ; $6bc0: $01 $80 $43
	inc  bc                                          ; $6bc3: $03
	ld   c, a                                        ; $6bc4: $4f
	ld   b, c                                        ; $6bc5: $41
	ld   c, a                                        ; $6bc6: $4f
	ld   b, [hl]                                     ; $6bc7: $46
	add  b                                           ; $6bc8: $80
	ld   d, a                                        ; $6bc9: $57
	ld   b, $37                                      ; $6bca: $06 $37
	dec  sp                                          ; $6bcc: $3b
	inc  hl                                          ; $6bcd: $23
	inc  sp                                          ; $6bce: $33
	ld   b, e                                        ; $6bcf: $43
	ld   d, e                                        ; $6bd0: $53
	db   $e3                                         ; $6bd1: $e3
	add  b                                           ; $6bd2: $80
	ldh  [rTMA], a                                   ; $6bd3: $e0 $06
	db   $eb                                         ; $6bd5: $eb
	di                                               ; $6bd6: $f3
	db   $f4                                         ; $6bd7: $f4
	ldh  a, [$f3]                                    ; $6bd8: $f0 $f3
	ldh  a, [$f8]                                    ; $6bda: $f0 $f8
	add  c                                           ; $6bdc: $81
	ldh  [$03], a                                    ; $6bdd: $e0 $03
	ldh  a, [rLCDC]                                  ; $6bdf: $f0 $40
	ld   h, b                                        ; $6be1: $60
	nop                                              ; $6be2: $00
	add  b                                           ; $6be3: $80
	add  b                                           ; $6be4: $80
	rlca                                             ; $6be5: $07
	ldh  [$c0], a                                    ; $6be6: $e0 $c0
	pop  af                                          ; $6be8: $f1
	ldh  [$2f], a                                    ; $6be9: $e0 $2f
	pop  hl                                          ; $6beb: $e1
	dec  bc                                          ; $6bec: $0b
	res  0, b                                        ; $6bed: $cb $80
	xor  h                                           ; $6bef: $ac
	add  b                                           ; $6bf0: $80
	or   [hl]                                        ; $6bf1: $b6
	nop                                              ; $6bf2: $00
	rst  $38                                         ; $6bf3: $ff
	adc  l                                           ; $6bf4: $8d
	nop                                              ; $6bf5: $00
	dec  c                                           ; $6bf6: $0d
	ld   l, a                                        ; $6bf7: $6f
	sub  l                                           ; $6bf8: $95
	ld   [hl], l                                     ; $6bf9: $75
	ld   [hl], c                                     ; $6bfa: $71
	pop  af                                          ; $6bfb: $f1
	db   $fc                                         ; $6bfc: $fc
	db   $fd                                         ; $6bfd: $fd
	db   $fc                                         ; $6bfe: $fc
	ld   [hl], l                                     ; $6bff: $75
	ld   a, [hl]                                     ; $6c00: $7e
	cp   d                                           ; $6c01: $ba
	ld   a, $5a                                      ; $6c02: $3e $5a
	jr   @-$7e                                       ; $6c04: $18 $80

	db   $10                                         ; $6c06: $10
	ld   bc, $0020                                   ; $6c07: $01 $20 $00
	add  b                                           ; $6c0a: $80
	inc  bc                                          ; $6c0b: $03
	inc  bc                                          ; $6c0c: $03
	add  a                                           ; $6c0d: $87
	rlca                                             ; $6c0e: $07
	call z, $808c                                    ; $6c0f: $cc $8c $80
	adc  e                                           ; $6c12: $8b

jr_01b_6c13:
	ld   [bc], a                                     ; $6c13: $02
	ld   d, h                                        ; $6c14: $54
	rlca                                             ; $6c15: $07
	add  e                                           ; $6c16: $83
	add  c                                           ; $6c17: $81
	rlca                                             ; $6c18: $07
	ld   b, $0f                                      ; $6c19: $06 $0f
	ld   bc, $0007                                   ; $6c1b: $01 $07 $00
	ld   bc, $8000                                   ; $6c1e: $01 $00 $80
	add  c                                           ; $6c21: $81
	nop                                              ; $6c22: $00
	ld   b, $80                                      ; $6c23: $06 $80
	nop                                              ; $6c25: $00
	add  b                                           ; $6c26: $80
	nop                                              ; $6c27: $00
	ldh  a, [$80]                                    ; $6c28: $f0 $80
	ldh  a, [$a9]                                    ; $6c2a: $f0 $a9
	nop                                              ; $6c2c: $00
	ld   [bc], a                                     ; $6c2d: $02
	ret  nz                                          ; $6c2e: $c0

	nop                                              ; $6c2f: $00
	ldh  [$81], a                                    ; $6c30: $e0 $81
	ret  nz                                          ; $6c32: $c0

	nop                                              ; $6c33: $00
	ldh  a, [$83]                                    ; $6c34: $f0 $83
	ldh  [rP1], a                                    ; $6c36: $e0 $00
	nop                                              ; $6c38: $00
	add  b                                           ; $6c39: $80
	ldh  [$08], a                                    ; $6c3a: $e0 $08
	nop                                              ; $6c3c: $00
	ldh  a, [rP1]                                    ; $6c3d: $f0 $00
	add  b                                           ; $6c3f: $80
	nop                                              ; $6c40: $00
	ret  nz                                          ; $6c41: $c0

	add  b                                           ; $6c42: $80
	or   b                                           ; $6c43: $b0
	add  b                                           ; $6c44: $80
	add  b                                           ; $6c45: $80
	ld   h, b                                        ; $6c46: $60
	add  b                                           ; $6c47: $80
	ldh  [$09], a                                    ; $6c48: $e0 $09
	ret  z                                           ; $6c4a: $c8

	ret  nc                                          ; $6c4b: $d0

	sbc  h                                           ; $6c4c: $9c
	cp   b                                           ; $6c4d: $b8
	ld   l, $7c                                      ; $6c4e: $2e $7c
	ld   a, a                                        ; $6c50: $7f
	cp   $df                                         ; $6c51: $fe $df
	ret  nz                                          ; $6c53: $c0

	sbc  h                                           ; $6c54: $9c
	nop                                              ; $6c55: $00
	ld   bc, $ffc0                                   ; $6c56: $01 $c0 $ff
	add  b                                           ; $6c59: $80
	db   $fd                                         ; $6c5a: $fd
	inc  c                                           ; $6c5b: $0c
	db   $db                                         ; $6c5c: $db
	ei                                               ; $6c5d: $fb
	rst  $20                                         ; $6c5e: $e7
	ld   [hl], a                                     ; $6c5f: $77
	or   $2e                                         ; $6c60: $f6 $2e
	dec  l                                           ; $6c62: $2d
	inc  a                                           ; $6c63: $3c
	ld   a, d                                        ; $6c64: $7a
	jr   @-$62                                       ; $6c65: $18 $9c

	nop                                              ; $6c67: $00
	cp   b                                           ; $6c68: $b8
	adc  l                                           ; $6c69: $8d
	nop                                              ; $6c6a: $00
	dec  b                                           ; $6c6b: $05
	ldh  [rP1], a                                    ; $6c6c: $e0 $00
	ret  nc                                          ; $6c6e: $d0

	ret  nz                                          ; $6c6f: $c0

	ld   [$8200], sp                                 ; $6c70: $08 $00 $82
	ldh  a, [rP1]                                    ; $6c73: $f0 $00
	db   $fc                                         ; $6c75: $fc
	add  c                                           ; $6c76: $81
	ld   hl, sp+$12                                  ; $6c77: $f8 $12
	ld   a, [hl]                                     ; $6c79: $7e
	db   $fc                                         ; $6c7a: $fc
	cp   a                                           ; $6c7b: $bf
	cp   $df                                         ; $6c7c: $fe $df
	ld   a, a                                        ; $6c7e: $7f
	rst  $28                                         ; $6c7f: $ef
	ccf                                              ; $6c80: $3f
	ld   [hl], a                                     ; $6c81: $77
	rra                                              ; $6c82: $1f
	dec  sp                                          ; $6c83: $3b
	rrca                                             ; $6c84: $0f
	dec  e                                           ; $6c85: $1d
	rlca                                             ; $6c86: $07
	ld   c, $03                                      ; $6c87: $0e $03
	rlca                                             ; $6c89: $07
	ld   bc, $8302                                   ; $6c8a: $01 $02 $83
	nop                                              ; $6c8d: $00
	add  h                                           ; $6c8e: $84
	jr   nz, jr_01b_6c13                             ; $6c8f: $20 $82

	db   $10                                         ; $6c91: $10
	add  b                                           ; $6c92: $80
	ld   [$0480], sp                                 ; $6c93: $08 $80 $04
	add  b                                           ; $6c96: $80
	ld   [bc], a                                     ; $6c97: $02
	add  b                                           ; $6c98: $80
	ld   bc, $0096                                   ; $6c99: $01 $96 $00
	ld   bc, $00e0                                   ; $6c9c: $01 $e0 $00
	add  b                                           ; $6c9f: $80
	ret  nz                                          ; $6ca0: $c0

	inc  b                                           ; $6ca1: $04
	and  b                                           ; $6ca2: $a0
	add  b                                           ; $6ca3: $80
	ld   b, b                                        ; $6ca4: $40
	nop                                              ; $6ca5: $00
	add  b                                           ; $6ca6: $80
	add  l                                           ; $6ca7: $85
	nop                                              ; $6ca8: $00
	nop                                              ; $6ca9: $00
	inc  e                                           ; $6caa: $1c
	adc  c                                           ; $6cab: $89
	ld   [$2c00], sp                                 ; $6cac: $08 $00 $2c
	add  l                                           ; $6caf: $85
	stop                                             ; $6cb0: $10 $00
	ld   e, b                                        ; $6cb2: $58
	add  l                                           ; $6cb3: $85
	jr   nz, jr_01b_6cb6                             ; $6cb4: $20 $00

jr_01b_6cb6:
	or   b                                           ; $6cb6: $b0
	add  c                                           ; $6cb7: $81
	ld   b, b                                        ; $6cb8: $40
	nop                                              ; $6cb9: $00
	and  a                                           ; $6cba: $a7
	add  c                                           ; $6cbb: $81
	ld   [bc], a                                     ; $6cbc: $02
	nop                                              ; $6cbd: $00
	dec  bc                                          ; $6cbe: $0b
	add  e                                           ; $6cbf: $83
	inc  b                                           ; $6cc0: $04
	nop                                              ; $6cc1: $00
	ld   d, $85                                      ; $6cc2: $16 $85
	ld   [$2c00], sp                                 ; $6cc4: $08 $00 $2c
	add  l                                           ; $6cc7: $85
	stop                                             ; $6cc8: $10 $00
	ld   e, b                                        ; $6cca: $58
	add  e                                           ; $6ccb: $83
	jr   nz, jr_01b_6cd0                             ; $6ccc: $20 $02

	ld   e, [hl]                                     ; $6cce: $5e
	inc  b                                           ; $6ccf: $04

jr_01b_6cd0:
	ld   d, $85                                      ; $6cd0: $16 $85
	ld   [$2c00], sp                                 ; $6cd2: $08 $00 $2c
	add  e                                           ; $6cd5: $83
	stop                                             ; $6cd6: $10 $00
	ld   e, b                                        ; $6cd8: $58
	add  l                                           ; $6cd9: $85
	jr   nz, jr_01b_6cdc                             ; $6cda: $20 $00

jr_01b_6cdc:
	or   b                                           ; $6cdc: $b0
	add  l                                           ; $6cdd: $85
	ld   b, b                                        ; $6cde: $40
	nop                                              ; $6cdf: $00
	xor  [hl]                                        ; $6ce0: $ae
	add  e                                           ; $6ce1: $83
	inc  b                                           ; $6ce2: $04

jr_01b_6ce3:
	ld   [bc], a                                     ; $6ce3: $02
	ld   h, h                                        ; $6ce4: $64
	inc  b                                           ; $6ce5: $04
	ld   [hl], $83                                   ; $6ce6: $36 $83
	jr   z, jr_01b_6cec                              ; $6ce8: $28 $02

	ld   e, b                                        ; $6cea: $58
	db   $10                                         ; $6ceb: $10

jr_01b_6cec:
	inc  a                                           ; $6cec: $3c
	rst  $38                                         ; $6ced: $ff
	nop                                              ; $6cee: $00
	adc  h                                           ; $6cef: $8c
	nop                                              ; $6cf0: $00
	ld   b, $18                                      ; $6cf1: $06 $18
	sub  $da                                         ; $6cf3: $d6 $da
	ret  z                                           ; $6cf5: $c8

	db   $f4                                         ; $6cf6: $f4
	push de                                          ; $6cf7: $d5
	xor  l                                           ; $6cf8: $ad
	add  c                                           ; $6cf9: $81
	xor  a                                           ; $6cfa: $af
	add  b                                           ; $6cfb: $80
	ld   l, a                                        ; $6cfc: $6f
	add  b                                           ; $6cfd: $80
	ld   [hl], b                                     ; $6cfe: $70
	inc  bc                                          ; $6cff: $03
	ld   l, a                                        ; $6d00: $6f
	ld   l, e                                        ; $6d01: $6b
	db   $eb                                         ; $6d02: $eb
	rst  $28                                         ; $6d03: $ef
	add  b                                           ; $6d04: $80
	rst  $30                                         ; $6d05: $f7
	add  b                                           ; $6d06: $80
	db   $eb                                         ; $6d07: $eb
	add  b                                           ; $6d08: $80
	push af                                          ; $6d09: $f5
	add  hl, bc                                      ; $6d0a: $09
	push hl                                          ; $6d0b: $e5
	push af                                          ; $6d0c: $f5
	jp   nc, $36f6                                   ; $6d0d: $d2 $f6 $36

	ld   c, $ee                                      ; $6d10: $0e $ee
	or   $f4                                         ; $6d12: $f6 $f4
	ldh  [$88], a                                    ; $6d14: $e0 $88
	rst  $38                                         ; $6d16: $ff
	ld   [$fffe], sp                                 ; $6d17: $08 $fe $ff
	ld   sp, hl                                      ; $6d1a: $f9
	rst  $38                                         ; $6d1b: $ff
	dec  de                                          ; $6d1c: $1b
	jr   jr_01b_6ce3                                 ; $6d1d: $18 $c4

	ret  nz                                          ; $6d1f: $c0

	and  b                                           ; $6d20: $a0
	add  b                                           ; $6d21: $80
	or   d                                           ; $6d22: $b2
	ld   [bc], a                                     ; $6d23: $02
	and  a                                           ; $6d24: $a7
	and  l                                           ; $6d25: $a5
	and  d                                           ; $6d26: $a2
	add  b                                           ; $6d27: $80
	add  d                                           ; $6d28: $82
	dec  b                                           ; $6d29: $05
	add  a                                           ; $6d2a: $87
	and  a                                           ; $6d2b: $a7
	and  d                                           ; $6d2c: $a2
	sub  d                                           ; $6d2d: $92
	jr   z, jr_01b_6d68                              ; $6d2e: $28 $38

	add  c                                           ; $6d30: $81
	ld   bc, $4d80                                   ; $6d31: $01 $80 $4d
	ld   a, [bc]                                     ; $6d34: $0a
	push hl                                          ; $6d35: $e5
	pop  hl                                          ; $6d36: $e1
	ld   b, l                                        ; $6d37: $45
	dec  b                                           ; $6d38: $05
	ld   b, l                                        ; $6d39: $45
	ldh  [$e5], a                                    ; $6d3a: $e0 $e5
	ld   b, l                                        ; $6d3c: $45
	ld   c, l                                        ; $6d3d: $4d
	ld   a, [bc]                                     ; $6d3e: $0a
	rlca                                             ; $6d3f: $07
	adc  d                                           ; $6d40: $8a

jr_01b_6d41:
	rst  $38                                         ; $6d41: $ff
	inc  b                                           ; $6d42: $04
	rra                                              ; $6d43: $1f
	rst  $38                                         ; $6d44: $ff
	ldh  [c], a                                      ; $6d45: $e2
	sub  d                                           ; $6d46: $92
	sub  b                                           ; $6d47: $90
	add  b                                           ; $6d48: $80
	sbc  h                                           ; $6d49: $9c
	add  b                                           ; $6d4a: $80
	and  a                                           ; $6d4b: $a7
	add  b                                           ; $6d4c: $80
	ld   [hl], b                                     ; $6d4d: $70
	add  hl, bc                                      ; $6d4e: $09
	set  7, e                                        ; $6d4f: $cb $fb
	jr   nc, jr_01b_6d41                             ; $6d51: $30 $ee

	rst  $28                                         ; $6d53: $ef
	pop  af                                          ; $6d54: $f1
	ldh  a, [rLCDC]                                  ; $6d55: $f0 $40
	ld   c, c                                        ; $6d57: $49
	add  hl, bc                                      ; $6d58: $09
	add  b                                           ; $6d59: $80
	add  hl, sp                                      ; $6d5a: $39
	add  b                                           ; $6d5b: $80
	push af                                          ; $6d5c: $f5
	add  b                                           ; $6d5d: $80
	ld   c, [hl]                                     ; $6d5e: $4e
	rrca                                             ; $6d5f: $0f
	db   $d3                                         ; $6d60: $d3
	rst  JumpTable                                         ; $6d61: $df
	inc  c                                           ; $6d62: $0c
	rlca                                             ; $6d63: $07
	ld   [hl], a                                     ; $6d64: $77
	ld   a, a                                        ; $6d65: $7f
	rrca                                             ; $6d66: $0f
	adc  b                                           ; $6d67: $88

jr_01b_6d68:
	ld   a, [hl+]                                    ; $6d68: $2a
	ld   a, [de]                                     ; $6d69: $1a
	cp   d                                           ; $6d6a: $ba
	xor  d                                           ; $6d6b: $aa
	cp   d                                           ; $6d6c: $ba
	dec  de                                          ; $6d6d: $1b
	cp   e                                           ; $6d6e: $bb
	cp   c                                           ; $6d6f: $b9
	add  b                                           ; $6d70: $80
	xor  e                                           ; $6d71: $ab
	ld   bc, $f8fb                                   ; $6d72: $01 $fb $f8
	add  b                                           ; $6d75: $80
	dec  sp                                          ; $6d76: $3b
	ld   [bc], a                                     ; $6d77: $02
	ld   e, c                                        ; $6d78: $59
	ld   l, $7f                                      ; $6d79: $2e $7f
	add  b                                           ; $6d7b: $80
	ccf                                              ; $6d7c: $3f
	add  b                                           ; $6d7d: $80
	db   $dd                                         ; $6d7e: $dd
	dec  b                                           ; $6d7f: $05
	ld   [hl-], a                                    ; $6d80: $32
	ld   [hl], d                                     ; $6d81: $72
	jp   c, $d1ba                                    ; $6d82: $da $ba $d1

	pop  af                                          ; $6d85: $f1
	add  b                                           ; $6d86: $80
	rst  $28                                         ; $6d87: $ef
	ld   [bc], a                                     ; $6d88: $02
	ld   e, a                                        ; $6d89: $5f
	rst  JumpTable                                         ; $6d8a: $df
	ld   a, a                                        ; $6d8b: $7f
	add  c                                           ; $6d8c: $81
	rst  $38                                         ; $6d8d: $ff
	add  b                                           ; $6d8e: $80
	cp   a                                           ; $6d8f: $bf
	add  b                                           ; $6d90: $80
	ld   c, a                                        ; $6d91: $4f
	add  b                                           ; $6d92: $80
	ld   e, a                                        ; $6d93: $5f
	add  b                                           ; $6d94: $80
	adc  a                                           ; $6d95: $8f
	add  b                                           ; $6d96: $80
	rst  $30                                         ; $6d97: $f7
	add  b                                           ; $6d98: $80
	ei                                               ; $6d99: $fb
	ld   [$d491], sp                                 ; $6d9a: $08 $91 $d4
	ret  c                                           ; $6d9d: $d8

	db   $dd                                         ; $6d9e: $dd
	push de                                          ; $6d9f: $d5
	db   $dd                                         ; $6da0: $dd
	ret  z                                           ; $6da1: $c8

	db   $dd                                         ; $6da2: $dd
	sbc  l                                           ; $6da3: $9d
	add  b                                           ; $6da4: $80
	push de                                          ; $6da5: $d5
	add  b                                           ; $6da6: $80
	rst  JumpTable                                         ; $6da7: $df
	inc  bc                                          ; $6da8: $03
	call c, $989c                                    ; $6da9: $dc $9c $98
	rst  $20                                         ; $6dac: $e7
	add  b                                           ; $6dad: $80
	nop                                              ; $6dae: $00
	add  c                                           ; $6daf: $81
	rst  $38                                         ; $6db0: $ff
	ld   [bc], a                                     ; $6db1: $02
	ccf                                              ; $6db2: $3f
	rst  $38                                         ; $6db3: $ff
	ret  nz                                          ; $6db4: $c0

	add  b                                           ; $6db5: $80
	rst  $38                                         ; $6db6: $ff
	add  b                                           ; $6db7: $80
	ret  nz                                          ; $6db8: $c0

	inc  bc                                          ; $6db9: $03
	ld   a, $3d                                      ; $6dba: $3e $3d
	ld   a, a                                        ; $6dbc: $7f
	ld   a, h                                        ; $6dbd: $7c
	add  b                                           ; $6dbe: $80
	add  c                                           ; $6dbf: $81
	add  b                                           ; $6dc0: $80
	add  d                                           ; $6dc1: $82
	add  b                                           ; $6dc2: $80
	ld   a, [hl-]                                    ; $6dc3: $3a
	add  b                                           ; $6dc4: $80
	ld   b, d                                        ; $6dc5: $42
	add  b                                           ; $6dc6: $80
	ld   a, [hl-]                                    ; $6dc7: $3a
	add  b                                           ; $6dc8: $80
	ret  nz                                          ; $6dc9: $c0

	add  b                                           ; $6dca: $80
	inc  a                                           ; $6dcb: $3c
	ld   [bc], a                                     ; $6dcc: $02
	ret  nz                                          ; $6dcd: $c0

	sbc  a                                           ; $6dce: $9f
	rst  JumpTable                                         ; $6dcf: $df
	add  b                                           ; $6dd0: $80
	cp   a                                           ; $6dd1: $bf
	ld   b, $9f                                      ; $6dd2: $06 $9f
	cp   a                                           ; $6dd4: $bf
	and  e                                           ; $6dd5: $a3
	cp   a                                           ; $6dd6: $bf
	cp   l                                           ; $6dd7: $bd
	cp   a                                           ; $6dd8: $bf
	cp   [hl]                                        ; $6dd9: $be
	add  d                                           ; $6dda: $82
	rst  JumpTable                                         ; $6ddb: $df
	inc  bc                                          ; $6ddc: $03
	ld   l, a                                        ; $6ddd: $6f
	sub  h                                           ; $6dde: $94
	db   $eb                                         ; $6ddf: $eb
	db   $ed                                         ; $6de0: $ed
	add  d                                           ; $6de1: $82
	call $9d80                                       ; $6de2: $cd $80 $9d
	nop                                              ; $6de5: $00
	db   $fd                                         ; $6de6: $fd
	add  d                                           ; $6de7: $82
	ei                                               ; $6de8: $fb
	add  b                                           ; $6de9: $80
	or   $08                                         ; $6dea: $f6 $08
	rrca                                             ; $6dec: $0f
	ld   a, a                                        ; $6ded: $7f
	ld   [hl], a                                     ; $6dee: $77
	cp   a                                           ; $6def: $bf
	cp   e                                           ; $6df0: $bb
	rst  JumpTable                                         ; $6df1: $df
	call c, $3ede                                    ; $6df2: $dc $de $3e
	add  b                                           ; $6df5: $80
	db   $ed                                         ; $6df6: $ed
	dec  b                                           ; $6df7: $05
	db   $eb                                         ; $6df8: $eb
	ei                                               ; $6df9: $fb
	rst  $30                                         ; $6dfa: $f7
	rst  $20                                         ; $6dfb: $e7
	and  $06                                         ; $6dfc: $e6 $06
	add  b                                           ; $6dfe: $80
	dec  a                                           ; $6dff: $3d
	add  b                                           ; $6e00: $80
	pop  bc                                          ; $6e01: $c1
	add  b                                           ; $6e02: $80
	dec  a                                           ; $6e03: $3d
	add  b                                           ; $6e04: $80
	pop  bc                                          ; $6e05: $c1
	add  b                                           ; $6e06: $80
	dec  a                                           ; $6e07: $3d
	add  b                                           ; $6e08: $80
	pop  bc                                          ; $6e09: $c1
	add  b                                           ; $6e0a: $80
	dec  sp                                          ; $6e0b: $3b
	add  b                                           ; $6e0c: $80
	jp   nz, Jump_01b_7380                           ; $6e0d: $c2 $80 $73

	add  b                                           ; $6e10: $80
	inc  a                                           ; $6e11: $3c
	add  b                                           ; $6e12: $80
	ld   e, a                                        ; $6e13: $5f
	add  b                                           ; $6e14: $80
	xor  a                                           ; $6e15: $af
	add  b                                           ; $6e16: $80
	or   e                                           ; $6e17: $b3
	ld   b, $35                                      ; $6e18: $06 $35
	ld   [hl], l                                     ; $6e1a: $75
	ld   b, [hl]                                     ; $6e1b: $46
	and  $ef                                         ; $6e1c: $e6 $ef
	pop  bc                                          ; $6e1e: $c1
	adc  $80                                         ; $6e1f: $ce $80
	inc  a                                           ; $6e21: $3c
	inc  b                                           ; $6e22: $04
	ld   hl, sp-$06                                  ; $6e23: $f8 $fa
	add  d                                           ; $6e25: $82
	push af                                          ; $6e26: $f5
	ld   [hl], l                                     ; $6e27: $75
	add  b                                           ; $6e28: $80
	call $ac06                                       ; $6e29: $cd $06 $ac
	xor  [hl]                                        ; $6e2c: $ae
	ld   h, d                                        ; $6e2d: $62
	ld   h, a                                        ; $6e2e: $67
	rst  $30                                         ; $6e2f: $f7
	sub  h                                           ; $6e30: $94
	inc  h                                           ; $6e31: $24
	add  d                                           ; $6e32: $82
	inc  a                                           ; $6e33: $3c
	add  b                                           ; $6e34: $80
	cp   l                                           ; $6e35: $bd
	add  b                                           ; $6e36: $80
	sbc  l                                           ; $6e37: $9d
	add  b                                           ; $6e38: $80
	adc  l                                           ; $6e39: $8d
	add  b                                           ; $6e3a: $80
	cp   l                                           ; $6e3b: $bd
	add  b                                           ; $6e3c: $80
	cp   d                                           ; $6e3d: $ba
	dec  bc                                          ; $6e3e: $0b
	ld   b, b                                        ; $6e3f: $40
	ld   a, b                                        ; $6e40: $78
	ld   sp, hl                                      ; $6e41: $f9
	sbc  c                                           ; $6e42: $99
	sbc  e                                           ; $6e43: $9b
	db   $e3                                         ; $6e44: $e3
	ld   h, a                                        ; $6e45: $67
	ld   [hl], a                                     ; $6e46: $77
	rst  $30                                         ; $6e47: $f7
	add  h                                           ; $6e48: $84
	ret  nc                                          ; $6e49: $d0

	db   $d3                                         ; $6e4a: $d3
	add  b                                           ; $6e4b: $80
	dec  [hl]                                        ; $6e4c: $35
	add  b                                           ; $6e4d: $80
	ld   l, l                                        ; $6e4e: $6d
	ld   bc, $f3f0                                   ; $6e4f: $01 $f0 $f3
	add  b                                           ; $6e52: $80
	ld   a, e                                        ; $6e53: $7b
	dec  b                                           ; $6e54: $05
	cp   a                                           ; $6e55: $bf
	cp   l                                           ; $6e56: $bd
	cp   h                                           ; $6e57: $bc
	dec  a                                           ; $6e58: $3d
	ld   e, [hl]                                     ; $6e59: $5e
	sbc  $80                                         ; $6e5a: $de $80
	rst  JumpTable                                         ; $6e5c: $df
	add  b                                           ; $6e5d: $80
	rst  $28                                         ; $6e5e: $ef
	inc  bc                                          ; $6e5f: $03
	adc  a                                           ; $6e60: $8f
	rst  $28                                         ; $6e61: $ef
	ld   l, a                                        ; $6e62: $6f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6e63: $cf
	add  b                                           ; $6e64: $80
	sbc  $00                                         ; $6e65: $de $00
	ld   a, l                                        ; $6e67: $7d
	add  b                                           ; $6e68: $80
	cp   l                                           ; $6e69: $bd
	ld   [bc], a                                     ; $6e6a: $02
	cp   h                                           ; $6e6b: $bc
	ld   a, d                                        ; $6e6c: $7a
	ld   a, e                                        ; $6e6d: $7b
	add  b                                           ; $6e6e: $80
	ei                                               ; $6e6f: $fb
	add  b                                           ; $6e70: $80
	rst  $30                                         ; $6e71: $f7
	dec  b                                           ; $6e72: $05
	pop  af                                          ; $6e73: $f1
	rst  $30                                         ; $6e74: $f7
	db   $fc                                         ; $6e75: $fc
	cp   d                                           ; $6e76: $ba
	ld   a, [$803a]                                  ; $6e77: $fa $3a $80
	ld   a, [de]                                     ; $6e7a: $1a
	add  b                                           ; $6e7b: $80
	ld   a, d                                        ; $6e7c: $7a
	ld   bc, $0282                                   ; $6e7d: $01 $82 $02
	add  d                                           ; $6e80: $82
	or   $80                                         ; $6e81: $f6 $80
	db   $10                                         ; $6e83: $10
	add  b                                           ; $6e84: $80
	ld   e, d                                        ; $6e85: $5a
	add  b                                           ; $6e86: $80
	inc  a                                           ; $6e87: $3c
	ld   bc, $7f7e                                   ; $6e88: $01 $7e $7f
	add  b                                           ; $6e8b: $80
	rra                                              ; $6e8c: $1f
	ld   c, $ed                                      ; $6e8d: $0e $ed
	rst  $28                                         ; $6e8f: $ef
	ld   [hl], e                                     ; $6e90: $73
	ld   [hl], a                                     ; $6e91: $77
	rlca                                             ; $6e92: $07
	inc  bc                                          ; $6e93: $03
	cp   e                                           ; $6e94: $bb
	cp   c                                           ; $6e95: $b9
	ld   c, $ef                                      ; $6e96: $0e $ef
	rst  $20                                         ; $6e98: $e7
	rst  $30                                         ; $6e99: $f7
	pop  af                                          ; $6e9a: $f1
	ld   [hl], a                                     ; $6e9b: $77
	halt                                             ; $6e9c: $76
	add  b                                           ; $6e9d: $80
	ld   [hl], a                                     ; $6e9e: $77
	add  b                                           ; $6e9f: $80
	cp   a                                           ; $6ea0: $bf
	add  b                                           ; $6ea1: $80
	add  e                                           ; $6ea2: $83
	add  b                                           ; $6ea3: $80
	db   $ec                                         ; $6ea4: $ec
	rlca                                             ; $6ea5: $07
	rst  JumpTable                                         ; $6ea6: $df
	cpl                                              ; $6ea7: $2f
	rst  $30                                         ; $6ea8: $f7
	rst  $20                                         ; $6ea9: $e7
	rst  $28                                         ; $6eaa: $ef
	adc  a                                           ; $6eab: $8f

jr_01b_6eac:
	xor  $6e                                         ; $6eac: $ee $6e
	add  b                                           ; $6eae: $80
	xor  $80                                         ; $6eaf: $ee $80
	db   $fd                                         ; $6eb1: $fd
	add  b                                           ; $6eb2: $80
	pop  bc                                          ; $6eb3: $c1
	add  b                                           ; $6eb4: $80
	scf                                              ; $6eb5: $37
	ld   [bc], a                                     ; $6eb6: $02
	ei                                               ; $6eb7: $fb
	and  c                                           ; $6eb8: $a1
	ld   e, d                                        ; $6eb9: $5a
	add  b                                           ; $6eba: $80
	inc  a                                           ; $6ebb: $3c
	ld   bc, $fe7e                                   ; $6ebc: $01 $7e $fe
	add  b                                           ; $6ebf: $80
	ld   hl, sp+$08                                  ; $6ec0: $f8 $08
	or   a                                           ; $6ec2: $b7
	rst  $30                                         ; $6ec3: $f7
	adc  $ee                                         ; $6ec4: $ce $ee
	ldh  [$c0], a                                    ; $6ec6: $e0 $c0
	db   $dd                                         ; $6ec8: $dd
	sbc  l                                           ; $6ec9: $9d
	ld   a, a                                        ; $6eca: $7f
	rst  $38                                         ; $6ecb: $ff
	nop                                              ; $6ecc: $00
	rst  $38                                         ; $6ecd: $ff
	nop                                              ; $6ece: $00
	rst  $38                                         ; $6ecf: $ff
	nop                                              ; $6ed0: $00
	rst  $38                                         ; $6ed1: $ff
	nop                                              ; $6ed2: $00
	xor  c                                           ; $6ed3: $a9
	nop                                              ; $6ed4: $00
	dec  l                                           ; $6ed5: $2d
	ld   bc, $b800                                   ; $6ed6: $01 $00 $b8
	add  c                                           ; $6ed9: $81
	jr   z, @+$03                                    ; $6eda: $28 $01

	jr   nz, jr_01b_6f06                             ; $6edc: $20 $28

	add  b                                           ; $6ede: $80
	inc  [hl]                                        ; $6edf: $34
	dec  bc                                          ; $6ee0: $0b
	cpl                                              ; $6ee1: $2f
	jr   c, jr_01b_6f54                              ; $6ee2: $38 $70

	ld   a, a                                        ; $6ee4: $7f
	ret  nz                                          ; $6ee5: $c0

	cp   a                                           ; $6ee6: $bf
	ret  nz                                          ; $6ee7: $c0

	ld   b, b                                        ; $6ee8: $40
	add  b                                           ; $6ee9: $80
	nop                                              ; $6eea: $00
	rst  $38                                         ; $6eeb: $ff
	nop                                              ; $6eec: $00
	add  c                                           ; $6eed: $81
	rst  $38                                         ; $6eee: $ff
	add  b                                           ; $6eef: $80
	nop                                              ; $6ef0: $00
	inc  b                                           ; $6ef1: $04
	rst  $38                                         ; $6ef2: $ff
	jr   nz, jr_01b_6ef5                             ; $6ef3: $20 $00

jr_01b_6ef5:
	ld   b, b                                        ; $6ef5: $40
	add  b                                           ; $6ef6: $80
	add  b                                           ; $6ef7: $80
	nop                                              ; $6ef8: $00
	inc  bc                                          ; $6ef9: $03
	rra                                              ; $6efa: $1f
	nop                                              ; $6efb: $00
	rst  $38                                         ; $6efc: $ff
	nop                                              ; $6efd: $00
	add  c                                           ; $6efe: $81
	rst  $38                                         ; $6eff: $ff
	add  b                                           ; $6f00: $80
	nop                                              ; $6f01: $00
	nop                                              ; $6f02: $00
	rst  $38                                         ; $6f03: $ff
	add  h                                           ; $6f04: $84
	nop                                              ; $6f05: $00

jr_01b_6f06:
	inc  bc                                          ; $6f06: $03
	rst  $38                                         ; $6f07: $ff
	nop                                              ; $6f08: $00
	rst  $38                                         ; $6f09: $ff
	nop                                              ; $6f0a: $00
	add  c                                           ; $6f0b: $81
	rst  $38                                         ; $6f0c: $ff
	add  b                                           ; $6f0d: $80
	nop                                              ; $6f0e: $00
	nop                                              ; $6f0f: $00
	rst  $38                                         ; $6f10: $ff
	add  b                                           ; $6f11: $80
	nop                                              ; $6f12: $00
	rlca                                             ; $6f13: $07
	jr   nz, jr_01b_6f56                             ; $6f14: $20 $40

	db   $10                                         ; $6f16: $10
	ld   [$0284], sp                                 ; $6f17: $08 $84 $02
	ld   hl, sp+$05                                  ; $6f1a: $f8 $05
	add  b                                           ; $6f1c: $80
	cp   $05                                         ; $6f1d: $fe $05
	xor  $1e                                         ; $6f1f: $ee $1e
	ld   h, $ee                                      ; $6f21: $26 $ee
	ld   h, $16                                      ; $6f23: $26 $16
	add  d                                           ; $6f25: $82
	ld   b, $02                                      ; $6f26: $06 $02
	inc  bc                                          ; $6f28: $03
	db   $10                                         ; $6f29: $10
	jr   jr_01b_6eac                                 ; $6f2a: $18 $80

	ld   [$0081], sp                                 ; $6f2c: $08 $81 $00
	nop                                              ; $6f2f: $00
	rst  $38                                         ; $6f30: $ff
	add  b                                           ; $6f31: $80
	nop                                              ; $6f32: $00
	ld   [bc], a                                     ; $6f33: $02
	rst  $38                                         ; $6f34: $ff
	nop                                              ; $6f35: $00
	rst  $38                                         ; $6f36: $ff
	add  b                                           ; $6f37: $80
	nop                                              ; $6f38: $00
	add  b                                           ; $6f39: $80
	add  b                                           ; $6f3a: $80
	ld   b, $c0                                      ; $6f3b: $06 $c0
	nop                                              ; $6f3d: $00
	ld   sp, $1f11                                   ; $6f3e: $31 $11 $1f
	nop                                              ; $6f41: $00
	rst  $38                                         ; $6f42: $ff
	add  b                                           ; $6f43: $80
	nop                                              ; $6f44: $00
	ld   [bc], a                                     ; $6f45: $02
	rst  $38                                         ; $6f46: $ff
	nop                                              ; $6f47: $00
	rst  $38                                         ; $6f48: $ff
	add  b                                           ; $6f49: $80
	nop                                              ; $6f4a: $00
	inc  b                                           ; $6f4b: $04
	ld   a, [hl]                                     ; $6f4c: $7e
	ld   b, b                                        ; $6f4d: $40
	ld   b, c                                        ; $6f4e: $41
	nop                                              ; $6f4f: $00
	add  b                                           ; $6f50: $80
	add  c                                           ; $6f51: $81
	nop                                              ; $6f52: $00
	nop                                              ; $6f53: $00

jr_01b_6f54:
	rst  $38                                         ; $6f54: $ff

jr_01b_6f55:
	add  b                                           ; $6f55: $80

jr_01b_6f56:
	nop                                              ; $6f56: $00
	ld   [bc], a                                     ; $6f57: $02
	rst  $38                                         ; $6f58: $ff
	nop                                              ; $6f59: $00
	rst  $38                                         ; $6f5a: $ff
	add  b                                           ; $6f5b: $80
	nop                                              ; $6f5c: $00
	ld   [$007f], sp                                 ; $6f5d: $08 $7f $00
	add  b                                           ; $6f60: $80
	ld   bc, $0412                                   ; $6f61: $01 $12 $04
	rla                                              ; $6f64: $17
	nop                                              ; $6f65: $00
	rst  $38                                         ; $6f66: $ff
	add  b                                           ; $6f67: $80
	nop                                              ; $6f68: $00
	ld   [bc], a                                     ; $6f69: $02
	rst  $38                                         ; $6f6a: $ff
	nop                                              ; $6f6b: $00
	rst  $38                                         ; $6f6c: $ff
	add  b                                           ; $6f6d: $80
	nop                                              ; $6f6e: $00

jr_01b_6f6f:
	inc  b                                           ; $6f6f: $04
	adc  a                                           ; $6f70: $8f
	nop                                              ; $6f71: $00
	or   b                                           ; $6f72: $b0
	jr   nz, jr_01b_6f55                             ; $6f73: $20 $e0

	add  b                                           ; $6f75: $80
	add  b                                           ; $6f76: $80
	ld   bc, $ff00                                   ; $6f77: $01 $00 $ff
	add  b                                           ; $6f7a: $80
	nop                                              ; $6f7b: $00
	ld   [bc], a                                     ; $6f7c: $02
	rst  $38                                         ; $6f7d: $ff
	nop                                              ; $6f7e: $00
	rst  $38                                         ; $6f7f: $ff
	add  b                                           ; $6f80: $80
	nop                                              ; $6f81: $00
	nop                                              ; $6f82: $00
	db   $e3                                         ; $6f83: $e3
	add  c                                           ; $6f84: $81
	nop                                              ; $6f85: $00
	add  b                                           ; $6f86: $80
	inc  d                                           ; $6f87: $14
	ld   [bc], a                                     ; $6f88: $02
	inc  e                                           ; $6f89: $1c
	nop                                              ; $6f8a: $00
	rst  $38                                         ; $6f8b: $ff
	add  b                                           ; $6f8c: $80
	nop                                              ; $6f8d: $00
	ld   [bc], a                                     ; $6f8e: $02
	rst  $38                                         ; $6f8f: $ff
	nop                                              ; $6f90: $00
	rst  $38                                         ; $6f91: $ff
	add  b                                           ; $6f92: $80
	nop                                              ; $6f93: $00
	nop                                              ; $6f94: $00
	ldh  a, [c]                                      ; $6f95: $f2
	add  c                                           ; $6f96: $81
	ld   b, $80                                      ; $6f97: $06 $80
	ld   d, $0a                                      ; $6f99: $16 $0a
	ld   a, $2e                                      ; $6f9b: $3e $2e
	or   $1e                                         ; $6f9d: $f6 $1e
	ld   c, $fe                                      ; $6f9f: $0e $fe
	ld   bc, $03fd                                   ; $6fa1: $01 $fd $03
	ld   [bc], a                                     ; $6fa4: $02
	ld   b, [hl]                                     ; $6fa5: $46
	add  c                                           ; $6fa6: $81
	jr   z, @+$03                                    ; $6fa7: $28 $01

	jr   nz, jr_01b_6fd3                             ; $6fa9: $20 $28

	add  b                                           ; $6fab: $80
	inc  [hl]                                        ; $6fac: $34
	ld   a, [bc]                                     ; $6fad: $0a
	cpl                                              ; $6fae: $2f
	jr   c, @+$72                                    ; $6faf: $38 $70

	ld   a, a                                        ; $6fb1: $7f
	ret  nz                                          ; $6fb2: $c0

	cp   a                                           ; $6fb3: $bf
	ret  nz                                          ; $6fb4: $c0

	ld   b, b                                        ; $6fb5: $40
	ld   a, [hl]                                     ; $6fb6: $7e
	nop                                              ; $6fb7: $00
	ld   bc, $0083                                   ; $6fb8: $01 $83 $00
	nop                                              ; $6fbb: $00
	rst  $38                                         ; $6fbc: $ff
	add  b                                           ; $6fbd: $80
	nop                                              ; $6fbe: $00
	ld   [bc], a                                     ; $6fbf: $02
	rst  $38                                         ; $6fc0: $ff
	nop                                              ; $6fc1: $00
	rst  $38                                         ; $6fc2: $ff
	add  b                                           ; $6fc3: $80
	nop                                              ; $6fc4: $00
	ld   [$101f], sp                                 ; $6fc5: $08 $1f $10
	adc  [hl]                                        ; $6fc8: $8e
	add  c                                           ; $6fc9: $81
	rst  $20                                         ; $6fca: $e7
	inc  h                                           ; $6fcb: $24
	inc  a                                           ; $6fcc: $3c
	nop                                              ; $6fcd: $00
	rst  $38                                         ; $6fce: $ff
	add  b                                           ; $6fcf: $80
	nop                                              ; $6fd0: $00
	ld   [bc], a                                     ; $6fd1: $02
	rst  $38                                         ; $6fd2: $ff

jr_01b_6fd3:
	nop                                              ; $6fd3: $00
	rst  $38                                         ; $6fd4: $ff
	add  b                                           ; $6fd5: $80
	nop                                              ; $6fd6: $00
	inc  bc                                          ; $6fd7: $03
	cp   c                                           ; $6fd8: $b9
	ld   [$0048], sp                                 ; $6fd9: $08 $48 $00
	add  b                                           ; $6fdc: $80
	inc  b                                           ; $6fdd: $04
	ld   [bc], a                                     ; $6fde: $02
	ld   b, $00                                      ; $6fdf: $06 $00
	rst  $38                                         ; $6fe1: $ff
	add  b                                           ; $6fe2: $80
	nop                                              ; $6fe3: $00
	ld   [bc], a                                     ; $6fe4: $02
	rst  $38                                         ; $6fe5: $ff
	nop                                              ; $6fe6: $00
	rst  $38                                         ; $6fe7: $ff
	add  b                                           ; $6fe8: $80
	nop                                              ; $6fe9: $00
	ld   [bc], a                                     ; $6fea: $02
	rst  $30                                         ; $6feb: $f7
	db   $10                                         ; $6fec: $10
	jr   jr_01b_6f6f                                 ; $6fed: $18 $80

	ld   [$0081], sp                                 ; $6fef: $08 $81 $00
	nop                                              ; $6ff2: $00
	rst  $38                                         ; $6ff3: $ff
	add  b                                           ; $6ff4: $80
	nop                                              ; $6ff5: $00
	ld   [bc], a                                     ; $6ff6: $02
	rst  $38                                         ; $6ff7: $ff
	nop                                              ; $6ff8: $00
	rst  $38                                         ; $6ff9: $ff
	add  b                                           ; $6ffa: $80
	nop                                              ; $6ffb: $00
	ld   [$001c], sp                                 ; $6ffc: $08 $1c $00
	add  d                                           ; $6fff: $82
	nop                                              ; $7000: $00
	sub  c                                           ; $7001: $91
	add  hl, bc                                      ; $7002: $09
	rlca                                             ; $7003: $07
	nop                                              ; $7004: $00
	sbc  [hl]                                        ; $7005: $9e
	add  h                                           ; $7006: $84
	nop                                              ; $7007: $00
	inc  bc                                          ; $7008: $03
	inc  b                                           ; $7009: $04
	db   $e4                                         ; $700a: $e4
	ld   b, c                                        ; $700b: $41
	ld   a, $81                                      ; $700c: $3e $81
	nop                                              ; $700e: $00
	inc  b                                           ; $700f: $04
	ld   b, $04                                      ; $7010: $06 $04
	sbc  [hl]                                        ; $7012: $9e
	sub  b                                           ; $7013: $90
	push af                                          ; $7014: $f5
	add  b                                           ; $7015: $80
	ld   bc, $0800                                   ; $7016: $01 $00 $08
	add  b                                           ; $7019: $80
	ld   [bc], a                                     ; $701a: $02
	dec  c                                           ; $701b: $0d
	ldh  a, [c]                                      ; $701c: $f2
	nop                                              ; $701d: $00
	inc  e                                           ; $701e: $1c
	db   $10                                         ; $701f: $10
	jr   nc, jr_01b_7022                             ; $7020: $30 $00

jr_01b_7022:
	ld   b, b                                        ; $7022: $40
	nop                                              ; $7023: $00
	add  b                                           ; $7024: $80
	nop                                              ; $7025: $00
	jr   jr_01b_702c                                 ; $7026: $18 $04

	db   $10                                         ; $7028: $10
	ld   [bc], a                                     ; $7029: $02
	add  b                                           ; $702a: $80
	nop                                              ; $702b: $00

jr_01b_702c:
	nop                                              ; $702c: $00
	inc  bc                                          ; $702d: $03
	adc  l                                           ; $702e: $8d
	ld   b, $00                                      ; $702f: $06 $00
	dec  bc                                          ; $7031: $0b
	add  l                                           ; $7032: $85
	nop                                              ; $7033: $00
	nop                                              ; $7034: $00
	rst  $38                                         ; $7035: $ff
	add  b                                           ; $7036: $80
	nop                                              ; $7037: $00
	ld   [bc], a                                     ; $7038: $02
	rst  $38                                         ; $7039: $ff
	nop                                              ; $703a: $00
	rst  $38                                         ; $703b: $ff
	add  b                                           ; $703c: $80
	nop                                              ; $703d: $00
	ld   [$21ef], sp                                 ; $703e: $08 $ef $21
	ld   [hl], $08                                   ; $7041: $36 $08
	inc  c                                           ; $7043: $0c
	inc  b                                           ; $7044: $04
	rlca                                             ; $7045: $07
	nop                                              ; $7046: $00
	rst  $38                                         ; $7047: $ff
	add  b                                           ; $7048: $80
	nop                                              ; $7049: $00
	ld   [bc], a                                     ; $704a: $02
	rst  $38                                         ; $704b: $ff
	nop                                              ; $704c: $00
	rst  $38                                         ; $704d: $ff
	add  b                                           ; $704e: $80
	nop                                              ; $704f: $00
	ld   [$0818], sp                                 ; $7050: $08 $18 $08
	inc  l                                           ; $7053: $2c
	inc  h                                           ; $7054: $24
	ld   h, [hl]                                     ; $7055: $66
	ld   [bc], a                                     ; $7056: $02
	add  e                                           ; $7057: $83
	nop                                              ; $7058: $00
	rst  $38                                         ; $7059: $ff
	add  b                                           ; $705a: $80
	nop                                              ; $705b: $00
	ld   [bc], a                                     ; $705c: $02
	rst  $38                                         ; $705d: $ff
	nop                                              ; $705e: $00
	rst  $38                                         ; $705f: $ff
	add  b                                           ; $7060: $80
	nop                                              ; $7061: $00
	ld   [$00f8], sp                                 ; $7062: $08 $f8 $00
	ld   b, $82                                      ; $7065: $06 $82
	inc  bc                                          ; $7067: $03
	nop                                              ; $7068: $00
	add  b                                           ; $7069: $80
	nop                                              ; $706a: $00
	rst  $38                                         ; $706b: $ff
	add  b                                           ; $706c: $80
	nop                                              ; $706d: $00
	ld   [bc], a                                     ; $706e: $02
	rst  $38                                         ; $706f: $ff
	nop                                              ; $7070: $00
	rst  $38                                         ; $7071: $ff
	add  b                                           ; $7072: $80
	nop                                              ; $7073: $00
	ld   [$203f], sp                                 ; $7074: $08 $3f $20
	jr   jr_01b_707d                                 ; $7077: $18 $04

	sbc  h                                           ; $7079: $9c
	sub  b                                           ; $707a: $90
	ldh  a, [rP1]                                    ; $707b: $f0 $00

jr_01b_707d:
	rst  $38                                         ; $707d: $ff
	add  b                                           ; $707e: $80
	nop                                              ; $707f: $00
	ld   [bc], a                                     ; $7080: $02
	rst  $38                                         ; $7081: $ff
	nop                                              ; $7082: $00
	rst  $38                                         ; $7083: $ff
	add  b                                           ; $7084: $80

jr_01b_7085:
	nop                                              ; $7085: $00
	nop                                              ; $7086: $00
	ldh  a, [c]                                      ; $7087: $f2
	add  c                                           ; $7088: $81
	ld   b, $80                                      ; $7089: $06 $80
	ld   d, $0a                                      ; $708b: $16 $0a
	ld   a, $2e                                      ; $708d: $3e $2e
	or   $1e                                         ; $708f: $f6 $1e
	ld   c, $fe                                      ; $7091: $0e $fe
	ld   bc, $03fd                                   ; $7093: $01 $fd $03
	ld   [bc], a                                     ; $7096: $02
	ld   bc, $0080                                   ; $7097: $01 $80 $00
	add  b                                           ; $709a: $80
	xor  e                                           ; $709b: $ab
	add  d                                           ; $709c: $82
	xor  d                                           ; $709d: $aa
	add  b                                           ; $709e: $80
	db   $eb                                         ; $709f: $eb
	add  d                                           ; $70a0: $82
	xor  d                                           ; $70a1: $aa
	add  b                                           ; $70a2: $80
	xor  e                                           ; $70a3: $ab
	add  b                                           ; $70a4: $80
	nop                                              ; $70a5: $00
	add  b                                           ; $70a6: $80
	xor  c                                           ; $70a7: $a9
	add  d                                           ; $70a8: $82
	add  hl, hl                                      ; $70a9: $29
	add  b                                           ; $70aa: $80
	cp   c                                           ; $70ab: $b9
	add  d                                           ; $70ac: $82
	xor  b                                           ; $70ad: $a8
	add  b                                           ; $70ae: $80
	xor  c                                           ; $70af: $a9
	add  b                                           ; $70b0: $80
	nop                                              ; $70b1: $00
	add  b                                           ; $70b2: $80
	db   $dd                                         ; $70b3: $dd
	add  d                                           ; $70b4: $82
	ld   de, $d180                                   ; $70b5: $11 $80 $d1
	add  d                                           ; $70b8: $82
	ld   d, c                                        ; $70b9: $51
	add  b                                           ; $70ba: $80
	db   $dd                                         ; $70bb: $dd
	add  b                                           ; $70bc: $80
	nop                                              ; $70bd: $00
	add  b                                           ; $70be: $80
	db   $dd                                         ; $70bf: $dd
	add  d                                           ; $70c0: $82
	ld   d, l                                        ; $70c1: $55
	add  b                                           ; $70c2: $80
	ld   e, l                                        ; $70c3: $5d
	add  b                                           ; $70c4: $80
	ld   e, c                                        ; $70c5: $59
	add  b                                           ; $70c6: $80
	ld   d, l                                        ; $70c7: $55
	add  b                                           ; $70c8: $80
	push de                                          ; $70c9: $d5
	add  b                                           ; $70ca: $80
	nop                                              ; $70cb: $00
	add  b                                           ; $70cc: $80
	call z, $0c80                                    ; $70cd: $cc $80 $0c
	add  b                                           ; $70d0: $80
	nop                                              ; $70d1: $00
	add  b                                           ; $70d2: $80
	ret  nz                                          ; $70d3: $c0

	add  b                                           ; $70d4: $80
	nop                                              ; $70d5: $00
	add  b                                           ; $70d6: $80
	inc  c                                           ; $70d7: $0c
	inc  bc                                          ; $70d8: $03
	call z, $0935                                    ; $70d9: $cc $35 $09
	rrca                                             ; $70dc: $0f
	add  e                                           ; $70dd: $83
	nop                                              ; $70de: $00
	nop                                              ; $70df: $00
	rst  $38                                         ; $70e0: $ff
	add  b                                           ; $70e1: $80
	nop                                              ; $70e2: $00
	ld   [bc], a                                     ; $70e3: $02
	rst  $38                                         ; $70e4: $ff
	nop                                              ; $70e5: $00
	rst  $38                                         ; $70e6: $ff
	add  b                                           ; $70e7: $80
	nop                                              ; $70e8: $00
	ld   [$029b], sp                                 ; $70e9: $08 $9b $02
	ld   bc, $9900                                   ; $70ec: $01 $00 $99
	ld   bc, $101f                                   ; $70ef: $01 $1f $10
	sub  b                                           ; $70f2: $90
	add  l                                           ; $70f3: $85
	nop                                              ; $70f4: $00
	ld   bc, $106c                                   ; $70f5: $01 $6c $10
	add  b                                           ; $70f8: $80
	nop                                              ; $70f9: $00
	add  c                                           ; $70fa: $81
	inc  b                                           ; $70fb: $04
	nop                                              ; $70fc: $00
	jr   nz, jr_01b_7085                             ; $70fd: $20 $86

	nop                                              ; $70ff: $00
	dec  b                                           ; $7100: $05
	xor  [hl]                                        ; $7101: $ae
	ld   c, b                                        ; $7102: $48
	xor  b                                           ; $7103: $a8
	nop                                              ; $7104: $00
	ld   b, $00                                      ; $7105: $06 $00
	add  c                                           ; $7107: $81
	ld   b, b                                        ; $7108: $40
	ld   bc, $3000                                   ; $7109: $01 $00 $30
	add  e                                           ; $710c: $83
	nop                                              ; $710d: $00
	nop                                              ; $710e: $00
	dec  c                                           ; $710f: $0d
	adc  l                                           ; $7110: $8d
	ld   b, $0c                                      ; $7111: $06 $0c
	dec  bc                                          ; $7113: $0b
	nop                                              ; $7114: $00
	inc  b                                           ; $7115: $04
	rlca                                             ; $7116: $07
	nop                                              ; $7117: $00
	rrca                                             ; $7118: $0f
	inc  bc                                          ; $7119: $03
	rra                                              ; $711a: $1f
	ld   c, $3f                                      ; $711b: $0e $3f
	ld   a, l                                        ; $711d: $7d
	ld   a, a                                        ; $711e: $7f
	ld   e, $81                                      ; $711f: $1e $81
	ld   a, a                                        ; $7121: $7f
	inc  c                                           ; $7122: $0c
	ld   b, d                                        ; $7123: $42
	nop                                              ; $7124: $00
	db   $10                                         ; $7125: $10
	ldh  a, [rP1]                                    ; $7126: $f0 $00
	ld   hl, sp+$60                                  ; $7128: $f8 $60
	db   $fc                                         ; $712a: $fc
	cp   b                                           ; $712b: $b8
	cp   $5f                                         ; $712c: $fe $5f
	rst  $38                                         ; $712e: $ff
	cp   h                                           ; $712f: $bc
	add  c                                           ; $7130: $81
	rst  $38                                         ; $7131: $ff
	jr   nz, jr_01b_7155                             ; $7132: $20 $21

	nop                                              ; $7134: $00
	ld   [$000f], sp                                 ; $7135: $08 $0f $00
	rra                                              ; $7138: $1f
	rlca                                             ; $7139: $07
	ccf                                              ; $713a: $3f
	jr   @+$81                                       ; $713b: $18 $7f

	db   $fc                                         ; $713d: $fc
	rst  $38                                         ; $713e: $ff
	ccf                                              ; $713f: $3f
	rst  $38                                         ; $7140: $ff
	db   $fc                                         ; $7141: $fc
	rst  $38                                         ; $7142: $ff
	add  a                                           ; $7143: $87
	nop                                              ; $7144: $00
	jr   nz, @-$1e                                   ; $7145: $20 $e0

	nop                                              ; $7147: $00
	ldh  a, [$c0]                                    ; $7148: $f0 $c0
	ld   hl, sp+$70                                  ; $714a: $f8 $70
	db   $fc                                         ; $714c: $fc
	ld   a, $fe                                      ; $714d: $3e $fe
	ld   hl, sp-$02                                  ; $714f: $f8 $fe
	ld   a, $fe                                      ; $7151: $3e $fe
	add  d                                           ; $7153: $82
	adc  l                                           ; $7154: $8d

jr_01b_7155:
	nop                                              ; $7155: $00
	nop                                              ; $7156: $00
	rst  $38                                         ; $7157: $ff
	sub  d                                           ; $7158: $92
	nop                                              ; $7159: $00
	add  b                                           ; $715a: $80
	xor  e                                           ; $715b: $ab
	add  b                                           ; $715c: $80
	xor  d                                           ; $715d: $aa
	add  b                                           ; $715e: $80
	ld   [$aa80], a                                  ; $715f: $ea $80 $aa
	add  b                                           ; $7162: $80
	xor  e                                           ; $7163: $ab
	add  d                                           ; $7164: $82
	nop                                              ; $7165: $00
	add  b                                           ; $7166: $80
	inc  bc                                          ; $7167: $03
	add  b                                           ; $7168: $80
	xor  e                                           ; $7169: $ab
	add  b                                           ; $716a: $80
	dec  hl                                          ; $716b: $2b
	add  b                                           ; $716c: $80
	cp   e                                           ; $716d: $bb
	add  d                                           ; $716e: $82
	xor  b                                           ; $716f: $a8
	add  b                                           ; $7170: $80
	inc  bc                                          ; $7171: $03
	add  b                                           ; $7172: $80
	nop                                              ; $7173: $00
	add  b                                           ; $7174: $80
	rst  $28                                         ; $7175: $ef
	add  d                                           ; $7176: $82
	inc  c                                           ; $7177: $0c
	add  b                                           ; $7178: $80
	db   $ec                                         ; $7179: $ec
	add  d                                           ; $717a: $82
	ld   l, h                                        ; $717b: $6c
	add  b                                           ; $717c: $80
	rst  $28                                         ; $717d: $ef
	add  b                                           ; $717e: $80
	nop                                              ; $717f: $00
	add  b                                           ; $7180: $80
	cp   [hl]                                        ; $7181: $be
	adc  b                                           ; $7182: $88
	ld   [hl], $80                                   ; $7183: $36 $80
	cp   [hl]                                        ; $7185: $be
	add  b                                           ; $7186: $80
	nop                                              ; $7187: $00
	add  b                                           ; $7188: $80
	ei                                               ; $7189: $fb
	add  d                                           ; $718a: $82
	db   $db                                         ; $718b: $db
	add  b                                           ; $718c: $80
	ei                                               ; $718d: $fb
	add  b                                           ; $718e: $80
	di                                               ; $718f: $f3
	add  c                                           ; $7190: $81
	db   $db                                         ; $7191: $db
	db   $10                                         ; $7192: $10
	jr   nz, jr_01b_7195                             ; $7193: $20 $00

jr_01b_7195:
	inc  e                                           ; $7195: $1c
	jr   nz, @-$36                                   ; $7196: $20 $c8

	ld   [$1018], sp                                 ; $7198: $08 $18 $10
	jr   nc, jr_01b_71bd                             ; $719b: $30 $20

	rst  $38                                         ; $719d: $ff
	jr   nz, jr_01b_71a7                             ; $719e: $20 $07

	dec  b                                           ; $71a0: $05
	dec  c                                           ; $71a1: $0d
	nop                                              ; $71a2: $00
	ld   d, b                                        ; $71a3: $50
	add  d                                           ; $71a4: $82
	nop                                              ; $71a5: $00
	nop                                              ; $71a6: $00

jr_01b_71a7:
	db   $10                                         ; $71a7: $10
	add  c                                           ; $71a8: $81
	nop                                              ; $71a9: $00
	nop                                              ; $71aa: $00
	add  b                                           ; $71ab: $80
	add  b                                           ; $71ac: $80
	nop                                              ; $71ad: $00
	inc  b                                           ; $71ae: $04
	ld   [$8204], sp                                 ; $71af: $08 $04 $82
	add  c                                           ; $71b2: $81
	rst  ToBoot                                         ; $71b3: $c7
	add  d                                           ; $71b4: $82
	nop                                              ; $71b5: $00
	nop                                              ; $71b6: $00
	inc  b                                           ; $71b7: $04
	add  b                                           ; $71b8: $80
	nop                                              ; $71b9: $00
	add  c                                           ; $71ba: $81
	jr   nz, jr_01b_71c2                             ; $71bb: $20 $05

jr_01b_71bd:
	ld   [bc], a                                     ; $71bd: $02
	db   $10                                         ; $71be: $10
	ld   de, $0010                                   ; $71bf: $11 $10 $00

jr_01b_71c2:
	rrca                                             ; $71c2: $0f
	adc  h                                           ; $71c3: $8c
	nop                                              ; $71c4: $00
	ld   bc, $8d80                                   ; $71c5: $01 $80 $8d
	adc  l                                           ; $71c8: $8d
	ld   b, $05                                      ; $71c9: $06 $05
	scf                                              ; $71cb: $37
	ld   a, a                                        ; $71cc: $7f
	ld   a, [hl]                                     ; $71cd: $7e
	ld   a, a                                        ; $71ce: $7f
	rra                                              ; $71cf: $1f
	ld   a, a                                        ; $71d0: $7f
	add  b                                           ; $71d1: $80
	ccf                                              ; $71d2: $3f

jr_01b_71d3:
	dec  c                                           ; $71d3: $0d
	dec  l                                           ; $71d4: $2d
	rra                                              ; $71d5: $1f
	inc  de                                          ; $71d6: $13
	rrca                                             ; $71d7: $0f
	ld   [$0307], sp                                 ; $71d8: $08 $07 $03
	nop                                              ; $71db: $00
	ld   e, $ff                                      ; $71dc: $1e $ff
	ccf                                              ; $71de: $3f

jr_01b_71df:
	rst  $38                                         ; $71df: $ff
	db   $fc                                         ; $71e0: $fc
	rst  $38                                         ; $71e1: $ff
	add  b                                           ; $71e2: $80
	cp   $08                                         ; $71e3: $fe $08
	jp   c, $e4fc                                    ; $71e5: $da $fc $e4

	ld   hl, sp+$08                                  ; $71e8: $f8 $08
	ldh  a, [$e0]                                    ; $71ea: $f0 $e0
	nop                                              ; $71ec: $00
	ld   a, e                                        ; $71ed: $7b
	add  c                                           ; $71ee: $81
	rst  $38                                         ; $71ef: $ff
	inc  c                                           ; $71f0: $0c
	ccf                                              ; $71f1: $3f
	rst  $38                                         ; $71f2: $ff
	ld   a, h                                        ; $71f3: $7c
	ld   a, a                                        ; $71f4: $7f
	ld   e, b                                        ; $71f5: $58
	ccf                                              ; $71f6: $3f
	daa                                              ; $71f7: $27
	rra                                              ; $71f8: $1f
	db   $10                                         ; $71f9: $10
	rrca                                             ; $71fa: $0f
	rlca                                             ; $71fb: $07
	nop                                              ; $71fc: $00
	cp   h                                           ; $71fd: $bc
	add  c                                           ; $71fe: $81
	cp   $0a                                         ; $71ff: $fe $0a
	ld   hl, sp-$02                                  ; $7201: $f8 $fe
	inc  a                                           ; $7203: $3c
	db   $fc                                         ; $7204: $fc
	ld   [hl], h                                     ; $7205: $74
	ld   hl, sp-$38                                  ; $7206: $f8 $c8
	ldh  a, [rAUD1SWEEP]                             ; $7208: $f0 $10
	ldh  [$c0], a                                    ; $720a: $e0 $c0
	adc  a                                           ; $720c: $8f
	nop                                              ; $720d: $00
	nop                                              ; $720e: $00
	rst  $38                                         ; $720f: $ff
	add  c                                           ; $7210: $81
	nop                                              ; $7211: $00
	ld   [bc], a                                     ; $7212: $02
	inc  bc                                          ; $7213: $03
	dec  bc                                          ; $7214: $0b
	ld   [$0083], sp                                 ; $7215: $08 $83 $00
	ld   [bc], a                                     ; $7218: $02
	inc  bc                                          ; $7219: $03
	dec  bc                                          ; $721a: $0b
	ld   [$0081], sp                                 ; $721b: $08 $81 $00
	dec  b                                           ; $721e: $05

jr_01b_721f:
	rst  $20                                         ; $721f: $e7
	rst  $38                                         ; $7220: $ff
	sbc  c                                           ; $7221: $99
	rst  $38                                         ; $7222: $ff
	sbc  c                                           ; $7223: $99
	rst  $38                                         ; $7224: $ff
	add  b                                           ; $7225: $80
	ld   a, [hl]                                     ; $7226: $7e
	add  b                                           ; $7227: $80
	rst  $38                                         ; $7228: $ff
	inc  b                                           ; $7229: $04
	sbc  c                                           ; $722a: $99
	rst  $38                                         ; $722b: $ff
	sbc  c                                           ; $722c: $99
	rst  $38                                         ; $722d: $ff
	jr   @-$7d                                       ; $722e: $18 $81

	nop                                              ; $7230: $00

jr_01b_7231:
	ld   [bc], a                                     ; $7231: $02
	ret  nz                                          ; $7232: $c0

	ret  nc                                          ; $7233: $d0

	db   $10                                         ; $7234: $10
	add  e                                           ; $7235: $83
	nop                                              ; $7236: $00

jr_01b_7237:
	ld   [bc], a                                     ; $7237: $02
	ret  nz                                          ; $7238: $c0

	ret  nc                                          ; $7239: $d0

	db   $10                                         ; $723a: $10
	add  c                                           ; $723b: $81
	nop                                              ; $723c: $00
	nop                                              ; $723d: $00
	ld   h, [hl]                                     ; $723e: $66
	sbc  e                                           ; $723f: $9b
	ld   a, [hl]                                     ; $7240: $7e

jr_01b_7241:
	nop                                              ; $7241: $00
	rst  $20                                         ; $7242: $e7
	adc  l                                           ; $7243: $8d
	nop                                              ; $7244: $00
	inc  b                                           ; $7245: $04
	rst  $38                                         ; $7246: $ff
	nop                                              ; $7247: $00
	inc  a                                           ; $7248: $3c
	ld   b, d                                        ; $7249: $42
	jr   jr_01b_71d3                                 ; $724a: $18 $87

	nop                                              ; $724c: $00
	inc  b                                           ; $724d: $04
	ld   e, d                                        ; $724e: $5a
	ld   b, d                                        ; $724f: $42
	ld   a, [hl]                                     ; $7250: $7e
	nop                                              ; $7251: $00
	jr   jr_01b_71df                                 ; $7252: $18 $8b

	nop                                              ; $7254: $00
	inc  b                                           ; $7255: $04
	jr   jr_01b_7258                                 ; $7256: $18 $00

jr_01b_7258:
	ld   a, h                                        ; $7258: $7c
	ld   [bc], a                                     ; $7259: $02
	ld   a, b                                        ; $725a: $78
	add  c                                           ; $725b: $81
	nop                                              ; $725c: $00
	ld   [bc], a                                     ; $725d: $02
	ld   a, [hl-]                                    ; $725e: $3a
	ld   b, d                                        ; $725f: $42
	ld   e, $81                                      ; $7260: $1e $81
	nop                                              ; $7262: $00
	ld   b, $1e                                      ; $7263: $06 $1e
	nop                                              ; $7265: $00
	ld   a, [hl]                                     ; $7266: $7e
	nop                                              ; $7267: $00
	ld   a, h                                        ; $7268: $7c
	ld   [bc], a                                     ; $7269: $02
	ld   a, b                                        ; $726a: $78
	add  c                                           ; $726b: $81
	nop                                              ; $726c: $00
	ld   [bc], a                                     ; $726d: $02
	jr   c, jr_01b_72b0                              ; $726e: $38 $40

	ld   a, b                                        ; $7270: $78
	add  c                                           ; $7271: $81
	nop                                              ; $7272: $00
	inc  b                                           ; $7273: $04
	ld   a, d                                        ; $7274: $7a
	ld   [bc], a                                     ; $7275: $02
	ld   a, [hl]                                     ; $7276: $7e
	nop                                              ; $7277: $00
	ld   h, [hl]                                     ; $7278: $66
	add  l                                           ; $7279: $85
	nop                                              ; $727a: $00
	ld   [bc], a                                     ; $727b: $02
	ld   e, b                                        ; $727c: $58
	ld   b, b                                        ; $727d: $40
	ld   a, b                                        ; $727e: $78
	add  c                                           ; $727f: $81
	nop                                              ; $7280: $00
	inc  b                                           ; $7281: $04
	ld   b, $00                                      ; $7282: $06 $00
	ld   a, [hl]                                     ; $7284: $7e
	nop                                              ; $7285: $00
	ld   e, $81                                      ; $7286: $1e $81
	nop                                              ; $7288: $00
	ld   [bc], a                                     ; $7289: $02
	inc  e                                           ; $728a: $1c
	ld   [bc], a                                     ; $728b: $02
	ld   a, b                                        ; $728c: $78
	add  c                                           ; $728d: $81
	nop                                              ; $728e: $00
	ld   b, $7a                                      ; $728f: $06 $7a
	ld   [bc], a                                     ; $7291: $02
	ld   a, [hl]                                     ; $7292: $7e
	nop                                              ; $7293: $00
	inc  a                                           ; $7294: $3c
	ld   b, d                                        ; $7295: $42
	ld   e, $81                                      ; $7296: $1e $81
	nop                                              ; $7298: $00
	ld   [bc], a                                     ; $7299: $02
	inc  e                                           ; $729a: $1c
	ld   [bc], a                                     ; $729b: $02
	jr   jr_01b_721f                                 ; $729c: $18 $81

	nop                                              ; $729e: $00
	ld   b, $5a                                      ; $729f: $06 $5a
	ld   b, d                                        ; $72a1: $42
	ld   a, [hl]                                     ; $72a2: $7e
	nop                                              ; $72a3: $00
	inc  a                                           ; $72a4: $3c
	ld   b, d                                        ; $72a5: $42
	ld   a, b                                        ; $72a6: $78
	adc  c                                           ; $72a7: $89
	nop                                              ; $72a8: $00
	inc  b                                           ; $72a9: $04
	ld   b, $00                                      ; $72aa: $06 $00
	inc  a                                           ; $72ac: $3c
	ld   b, d                                        ; $72ad: $42
	jr   jr_01b_7231                                 ; $72ae: $18 $81

jr_01b_72b0:
	nop                                              ; $72b0: $00
	ld   [bc], a                                     ; $72b1: $02
	jr   jr_01b_72b4                                 ; $72b2: $18 $00

jr_01b_72b4:
	jr   jr_01b_7237                                 ; $72b4: $18 $81

	nop                                              ; $72b6: $00
	ld   b, $5a                                      ; $72b7: $06 $5a
	ld   b, d                                        ; $72b9: $42
	ld   a, [hl]                                     ; $72ba: $7e
	nop                                              ; $72bb: $00
	inc  a                                           ; $72bc: $3c
	ld   b, d                                        ; $72bd: $42
	jr   jr_01b_7241                                 ; $72be: $18 $81

	nop                                              ; $72c0: $00
	ld   [bc], a                                     ; $72c1: $02
	ld   e, b                                        ; $72c2: $58
	ld   b, b                                        ; $72c3: $40
	ld   a, b                                        ; $72c4: $78
	add  c                                           ; $72c5: $81
	nop                                              ; $72c6: $00
	ld   b, $3a                                      ; $72c7: $06 $3a
	ld   b, d                                        ; $72c9: $42
	ld   a, [hl]                                     ; $72ca: $7e
	nop                                              ; $72cb: $00
	inc  a                                           ; $72cc: $3c
	ld   b, d                                        ; $72cd: $42
	jr   @-$77                                       ; $72ce: $18 $87

	nop                                              ; $72d0: $00
	ld   [bc], a                                     ; $72d1: $02
	ld   e, d                                        ; $72d2: $5a
	ld   b, d                                        ; $72d3: $42
	add  c                                           ; $72d4: $81
	rst  $38                                         ; $72d5: $ff
	nop                                              ; $72d6: $00
	rst  $38                                         ; $72d7: $ff
	nop                                              ; $72d8: $00
	rst  $38                                         ; $72d9: $ff
	nop                                              ; $72da: $00
	rst  $38                                         ; $72db: $ff
	nop                                              ; $72dc: $00
	rst  $38                                         ; $72dd: $ff
	nop                                              ; $72de: $00
	rst  $38                                         ; $72df: $ff
	nop                                              ; $72e0: $00
	rst  ToBoot                                         ; $72e1: $c7
	nop                                              ; $72e2: $00
	ld   c, e                                        ; $72e3: $4b
	ld   bc, $ff8c                                   ; $72e4: $01 $8c $ff
	ld   [bc], a                                     ; $72e7: $02
	nop                                              ; $72e8: $00
	rst  $38                                         ; $72e9: $ff
	nop                                              ; $72ea: $00
	adc  e                                           ; $72eb: $8b
	rst  $38                                         ; $72ec: $ff
	ld   [bc], a                                     ; $72ed: $02
	nop                                              ; $72ee: $00
	rst  $38                                         ; $72ef: $ff
	nop                                              ; $72f0: $00
	adc  e                                           ; $72f1: $8b
	rst  $38                                         ; $72f2: $ff
	ld   [bc], a                                     ; $72f3: $02
	nop                                              ; $72f4: $00
	rst  $38                                         ; $72f5: $ff
	nop                                              ; $72f6: $00
	adc  e                                           ; $72f7: $8b
	rst  $38                                         ; $72f8: $ff
	ld   [bc], a                                     ; $72f9: $02
	nop                                              ; $72fa: $00
	rst  $38                                         ; $72fb: $ff
	nop                                              ; $72fc: $00
	adc  e                                           ; $72fd: $8b
	rst  $38                                         ; $72fe: $ff
	ld   [bc], a                                     ; $72ff: $02
	nop                                              ; $7300: $00
	rst  $38                                         ; $7301: $ff
	nop                                              ; $7302: $00
	add  c                                           ; $7303: $81
	rst  $38                                         ; $7304: $ff
	inc  c                                           ; $7305: $0c
	db   $e3                                         ; $7306: $e3
	rst  $38                                         ; $7307: $ff
	cp   $ff                                         ; $7308: $fe $ff
	and  $ff                                         ; $730a: $e6 $ff
	ei                                               ; $730c: $fb
	rst  $38                                         ; $730d: $ff
	db   $e3                                         ; $730e: $e3
	rst  $38                                         ; $730f: $ff
	inc  e                                           ; $7310: $1c
	rst  $38                                         ; $7311: $ff
	nop                                              ; $7312: $00
	add  c                                           ; $7313: $81
	rst  $38                                         ; $7314: $ff
	inc  c                                           ; $7315: $0c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7316: $cf
	rst  $38                                         ; $7317: $ff
	ld   sp, $31ff                                   ; $7318: $31 $ff $31
	rst  $38                                         ; $731b: $ff
	inc  sp                                          ; $731c: $33
	rst  $38                                         ; $731d: $ff
	inc  sp                                          ; $731e: $33
	rst  $38                                         ; $731f: $ff
	jr   nc, @+$01                                   ; $7320: $30 $ff

	nop                                              ; $7322: $00
	add  c                                           ; $7323: $81
	rst  $38                                         ; $7324: $ff
	inc  c                                           ; $7325: $0c
	call z, $fcff                                    ; $7326: $cc $ff $fc
	rst  $38                                         ; $7329: $ff
	db   $fc                                         ; $732a: $fc
	rst  $38                                         ; $732b: $ff
	or   h                                           ; $732c: $b4
	rst  $38                                         ; $732d: $ff
	or   h                                           ; $732e: $b4
	rst  $38                                         ; $732f: $ff
	inc  sp                                          ; $7330: $33
	rst  $38                                         ; $7331: $ff
	nop                                              ; $7332: $00
	add  c                                           ; $7333: $81
	rst  $38                                         ; $7334: $ff
	inc  c                                           ; $7335: $0c
	rrca                                             ; $7336: $0f
	rst  $38                                         ; $7337: $ff
	ccf                                              ; $7338: $3f
	rst  $38                                         ; $7339: $ff
	ccf                                              ; $733a: $3f
	rst  $38                                         ; $733b: $ff
	ccf                                              ; $733c: $3f
	rst  $38                                         ; $733d: $ff
	ccf                                              ; $733e: $3f
	rst  $38                                         ; $733f: $ff
	ldh  a, [rIE]                                    ; $7340: $f0 $ff
	nop                                              ; $7342: $00
	add  c                                           ; $7343: $81
	rst  $38                                         ; $7344: $ff
	inc  c                                           ; $7345: $0c
	sbc  a                                           ; $7346: $9f
	rst  $38                                         ; $7347: $ff
	ldh  a, [rIE]                                    ; $7348: $f0 $ff
	pop  af                                          ; $734a: $f1
	rst  $38                                         ; $734b: $ff
	ld   sp, hl                                      ; $734c: $f9
	rst  $38                                         ; $734d: $ff
	ld   a, e                                        ; $734e: $7b
	rst  $38                                         ; $734f: $ff
	db   $e3                                         ; $7350: $e3
	rst  $38                                         ; $7351: $ff
	nop                                              ; $7352: $00
	add  c                                           ; $7353: $81
	rst  $38                                         ; $7354: $ff
	nop                                              ; $7355: $00
	rra                                              ; $7356: $1f
	add  c                                           ; $7357: $81
	rst  $38                                         ; $7358: $ff
	ld   [$ff9f], sp                                 ; $7359: $08 $9f $ff
	ld   a, a                                        ; $735c: $7f
	rst  $38                                         ; $735d: $ff
	ccf                                              ; $735e: $3f
	rst  $38                                         ; $735f: $ff
	ret  nz                                          ; $7360: $c0

	rst  $38                                         ; $7361: $ff
	nop                                              ; $7362: $00
	adc  e                                           ; $7363: $8b
	rst  $38                                         ; $7364: $ff
	ld   [bc], a                                     ; $7365: $02
	nop                                              ; $7366: $00
	rst  $38                                         ; $7367: $ff
	nop                                              ; $7368: $00
	adc  e                                           ; $7369: $8b
	rst  $38                                         ; $736a: $ff
	ld   [bc], a                                     ; $736b: $02
	nop                                              ; $736c: $00
	rst  $38                                         ; $736d: $ff
	nop                                              ; $736e: $00
	adc  e                                           ; $736f: $8b
	rst  $38                                         ; $7370: $ff
	ld   [bc], a                                     ; $7371: $02
	nop                                              ; $7372: $00
	rst  $38                                         ; $7373: $ff
	nop                                              ; $7374: $00
	adc  e                                           ; $7375: $8b
	rst  $38                                         ; $7376: $ff
	ld   [bc], a                                     ; $7377: $02
	nop                                              ; $7378: $00
	rst  $38                                         ; $7379: $ff
	nop                                              ; $737a: $00
	adc  e                                           ; $737b: $8b
	rst  $38                                         ; $737c: $ff
	ld   [bc], a                                     ; $737d: $02
	nop                                              ; $737e: $00
	rst  $38                                         ; $737f: $ff

Jump_01b_7380:
	nop                                              ; $7380: $00
	adc  h                                           ; $7381: $8c
	rst  $38                                         ; $7382: $ff
	add  b                                           ; $7383: $80
	nop                                              ; $7384: $00
	adc  h                                           ; $7385: $8c
	rst  $38                                         ; $7386: $ff
	add  b                                           ; $7387: $80
	nop                                              ; $7388: $00
	adc  h                                           ; $7389: $8c
	rst  $38                                         ; $738a: $ff
	add  b                                           ; $738b: $80
	nop                                              ; $738c: $00
	adc  h                                           ; $738d: $8c
	rst  $38                                         ; $738e: $ff
	add  b                                           ; $738f: $80
	nop                                              ; $7390: $00
	adc  h                                           ; $7391: $8c
	rst  $38                                         ; $7392: $ff
	add  b                                           ; $7393: $80
	nop                                              ; $7394: $00
	add  c                                           ; $7395: $81
	rst  $38                                         ; $7396: $ff
	inc  c                                           ; $7397: $0c
	db   $e3                                         ; $7398: $e3
	rst  $38                                         ; $7399: $ff
	cp   $ff                                         ; $739a: $fe $ff
	and  $ff                                         ; $739c: $e6 $ff
	ei                                               ; $739e: $fb
	rst  $38                                         ; $739f: $ff
	db   $e3                                         ; $73a0: $e3
	rst  $38                                         ; $73a1: $ff
	cp   $1d                                         ; $73a2: $fe $1d
	nop                                              ; $73a4: $00
	add  c                                           ; $73a5: $81
	rst  $38                                         ; $73a6: $ff
	inc  c                                           ; $73a7: $0c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $73a8: $cf
	rst  $38                                         ; $73a9: $ff
	ld   sp, $31ff                                   ; $73aa: $31 $ff $31
	rst  $38                                         ; $73ad: $ff
	inc  sp                                          ; $73ae: $33
	rst  $38                                         ; $73af: $ff
	inc  sp                                          ; $73b0: $33
	rst  $38                                         ; $73b1: $ff
	ld   sp, $00fe                                   ; $73b2: $31 $fe $00
	add  c                                           ; $73b5: $81
	rst  $38                                         ; $73b6: $ff
	inc  c                                           ; $73b7: $0c
	call z, $fcff                                    ; $73b8: $cc $ff $fc
	rst  $38                                         ; $73bb: $ff
	db   $fc                                         ; $73bc: $fc
	rst  $38                                         ; $73bd: $ff
	or   h                                           ; $73be: $b4
	rst  $38                                         ; $73bf: $ff
	or   h                                           ; $73c0: $b4
	rst  $38                                         ; $73c1: $ff
	db   $fc                                         ; $73c2: $fc
	jr   nc, jr_01b_73c5                             ; $73c3: $30 $00

jr_01b_73c5:
	add  c                                           ; $73c5: $81
	rst  $38                                         ; $73c6: $ff
	ld   a, [bc]                                     ; $73c7: $0a
	rrca                                             ; $73c8: $0f
	rst  $38                                         ; $73c9: $ff
	ccf                                              ; $73ca: $3f
	rst  $38                                         ; $73cb: $ff
	ccf                                              ; $73cc: $3f
	rst  $38                                         ; $73cd: $ff
	ccf                                              ; $73ce: $3f
	rst  $38                                         ; $73cf: $ff
	ccf                                              ; $73d0: $3f
	rst  $38                                         ; $73d1: $ff
	rrca                                             ; $73d2: $0f
	add  b                                           ; $73d3: $80
	nop                                              ; $73d4: $00
	add  c                                           ; $73d5: $81
	rst  $38                                         ; $73d6: $ff
	ld   [$ff9f], sp                                 ; $73d7: $08 $9f $ff
	ldh  a, [rIE]                                    ; $73da: $f0 $ff
	pop  af                                          ; $73dc: $f1
	rst  $38                                         ; $73dd: $ff
	ld   sp, hl                                      ; $73de: $f9
	rst  $38                                         ; $73df: $ff
	ld   a, e                                        ; $73e0: $7b
	add  b                                           ; $73e1: $80
	rst  $38                                         ; $73e2: $ff
	ld   bc, $00e3                                   ; $73e3: $01 $e3 $00
	add  c                                           ; $73e6: $81
	rst  $38                                         ; $73e7: $ff
	nop                                              ; $73e8: $00
	rra                                              ; $73e9: $1f
	add  c                                           ; $73ea: $81
	rst  $38                                         ; $73eb: $ff
	inc  b                                           ; $73ec: $04
	sbc  a                                           ; $73ed: $9f
	rst  $38                                         ; $73ee: $ff
	ld   a, a                                        ; $73ef: $7f
	rst  $38                                         ; $73f0: $ff
	ccf                                              ; $73f1: $3f
	add  b                                           ; $73f2: $80
	rst  $38                                         ; $73f3: $ff
	ld   bc, $00c0                                   ; $73f4: $01 $c0 $00
	adc  h                                           ; $73f7: $8c
	rst  $38                                         ; $73f8: $ff
	add  b                                           ; $73f9: $80
	nop                                              ; $73fa: $00
	adc  h                                           ; $73fb: $8c
	rst  $38                                         ; $73fc: $ff
	add  b                                           ; $73fd: $80
	nop                                              ; $73fe: $00
	adc  h                                           ; $73ff: $8c
	rst  $38                                         ; $7400: $ff
	add  b                                           ; $7401: $80
	nop                                              ; $7402: $00
	adc  h                                           ; $7403: $8c
	rst  $38                                         ; $7404: $ff
	add  b                                           ; $7405: $80
	nop                                              ; $7406: $00
	adc  h                                           ; $7407: $8c
	rst  $38                                         ; $7408: $ff
	add  b                                           ; $7409: $80
	nop                                              ; $740a: $00
	add  c                                           ; $740b: $81
	rst  $38                                         ; $740c: $ff
	ld   bc, $ff00                                   ; $740d: $01 $00 $ff
	adc  c                                           ; $7410: $89
	nop                                              ; $7411: $00
	add  c                                           ; $7412: $81
	rst  $38                                         ; $7413: $ff
	ld   bc, $ff00                                   ; $7414: $01 $00 $ff
	adc  c                                           ; $7417: $89
	nop                                              ; $7418: $00
	add  c                                           ; $7419: $81
	rst  $38                                         ; $741a: $ff
	ld   bc, $ff00                                   ; $741b: $01 $00 $ff
	adc  c                                           ; $741e: $89
	nop                                              ; $741f: $00
	add  c                                           ; $7420: $81
	rst  $38                                         ; $7421: $ff
	ld   bc, $ff00                                   ; $7422: $01 $00 $ff
	adc  c                                           ; $7425: $89
	nop                                              ; $7426: $00
	add  c                                           ; $7427: $81
	rst  $38                                         ; $7428: $ff
	ld   bc, $ff00                                   ; $7429: $01 $00 $ff
	adc  b                                           ; $742c: $88
	nop                                              ; $742d: $00
	dec  b                                           ; $742e: $05
	inc  b                                           ; $742f: $04
	rst  $38                                         ; $7430: $ff
	ei                                               ; $7431: $fb
	rst  $38                                         ; $7432: $ff
	nop                                              ; $7433: $00
	rst  $38                                         ; $7434: $ff
	adc  c                                           ; $7435: $89
	nop                                              ; $7436: $00
	inc  b                                           ; $7437: $04
	rst  $38                                         ; $7438: $ff
	inc  bc                                          ; $7439: $03
	rst  $38                                         ; $743a: $ff
	db   $fc                                         ; $743b: $fc
	rst  $38                                         ; $743c: $ff
	adc  b                                           ; $743d: $88
	nop                                              ; $743e: $00
	dec  b                                           ; $743f: $05
	scf                                              ; $7440: $37
	rst  $38                                         ; $7441: $ff
	db   $fc                                         ; $7442: $fc
	rst  $38                                         ; $7443: $ff
	inc  [hl]                                        ; $7444: $34
	rst  $38                                         ; $7445: $ff
	adc  b                                           ; $7446: $88
	nop                                              ; $7447: $00
	dec  b                                           ; $7448: $05
	ld   sp, hl                                      ; $7449: $f9
	rst  $38                                         ; $744a: $ff
	adc  $ff                                         ; $744b: $ce $ff
	ret  z                                           ; $744d: $c8

	rst  $38                                         ; $744e: $ff
	adc  b                                           ; $744f: $88
	nop                                              ; $7450: $00
	nop                                              ; $7451: $00
	ld   l, a                                        ; $7452: $6f
	add  c                                           ; $7453: $81
	rst  $38                                         ; $7454: $ff
	ld   bc, $ff6f                                   ; $7455: $01 $6f $ff
	adc  b                                           ; $7458: $88
	nop                                              ; $7459: $00
	dec  b                                           ; $745a: $05
	jr   nc, @+$01                                   ; $745b: $30 $ff

	ccf                                              ; $745d: $3f
	rst  $38                                         ; $745e: $ff
	ldh  a, [rIE]                                    ; $745f: $f0 $ff
	adc  c                                           ; $7461: $89
	nop                                              ; $7462: $00
	add  c                                           ; $7463: $81
	rst  $38                                         ; $7464: $ff
	ld   bc, $ff00                                   ; $7465: $01 $00 $ff
	adc  c                                           ; $7468: $89
	nop                                              ; $7469: $00
	add  c                                           ; $746a: $81
	rst  $38                                         ; $746b: $ff
	ld   bc, $ff00                                   ; $746c: $01 $00 $ff
	adc  c                                           ; $746f: $89
	nop                                              ; $7470: $00
	add  c                                           ; $7471: $81
	rst  $38                                         ; $7472: $ff
	ld   bc, $ff00                                   ; $7473: $01 $00 $ff
	adc  c                                           ; $7476: $89
	nop                                              ; $7477: $00
	add  c                                           ; $7478: $81
	rst  $38                                         ; $7479: $ff
	ld   bc, $ff00                                   ; $747a: $01 $00 $ff
	adc  c                                           ; $747d: $89
	nop                                              ; $747e: $00
	add  c                                           ; $747f: $81
	rst  $38                                         ; $7480: $ff
	ld   bc, $ff00                                   ; $7481: $01 $00 $ff
	adc  c                                           ; $7484: $89
	nop                                              ; $7485: $00
	pop  de                                          ; $7486: $d1
	rst  $38                                         ; $7487: $ff
	inc  c                                           ; $7488: $0c
	db   $e3                                         ; $7489: $e3
	rst  $38                                         ; $748a: $ff
	cp   $ff                                         ; $748b: $fe $ff
	and  $ff                                         ; $748d: $e6 $ff
	ei                                               ; $748f: $fb
	rst  $38                                         ; $7490: $ff
	db   $e3                                         ; $7491: $e3
	rst  $38                                         ; $7492: $ff
	cp   $ff                                         ; $7493: $fe $ff
	ldh  [c], a                                      ; $7495: $e2
	add  c                                           ; $7496: $81
	rst  $38                                         ; $7497: $ff
	inc  c                                           ; $7498: $0c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7499: $cf
	rst  $38                                         ; $749a: $ff
	ld   sp, $31ff                                   ; $749b: $31 $ff $31
	rst  $38                                         ; $749e: $ff
	inc  sp                                          ; $749f: $33
	rst  $38                                         ; $74a0: $ff
	inc  sp                                          ; $74a1: $33
	rst  $38                                         ; $74a2: $ff
	ld   sp, $01ff                                   ; $74a3: $31 $ff $01
	add  c                                           ; $74a6: $81
	rst  $38                                         ; $74a7: $ff
	inc  c                                           ; $74a8: $0c
	call z, $fcff                                    ; $74a9: $cc $ff $fc
	rst  $38                                         ; $74ac: $ff
	db   $fc                                         ; $74ad: $fc
	rst  $38                                         ; $74ae: $ff
	or   h                                           ; $74af: $b4
	rst  $38                                         ; $74b0: $ff
	or   h                                           ; $74b1: $b4
	rst  $38                                         ; $74b2: $ff
	db   $fc                                         ; $74b3: $fc
	rst  $38                                         ; $74b4: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $74b5: $cf
	add  c                                           ; $74b6: $81
	rst  $38                                         ; $74b7: $ff
	ld   a, [bc]                                     ; $74b8: $0a
	rrca                                             ; $74b9: $0f
	rst  $38                                         ; $74ba: $ff
	ccf                                              ; $74bb: $3f
	rst  $38                                         ; $74bc: $ff
	ccf                                              ; $74bd: $3f
	rst  $38                                         ; $74be: $ff
	ccf                                              ; $74bf: $3f
	rst  $38                                         ; $74c0: $ff
	ccf                                              ; $74c1: $3f
	rst  $38                                         ; $74c2: $ff
	rrca                                             ; $74c3: $0f
	add  e                                           ; $74c4: $83
	rst  $38                                         ; $74c5: $ff
	ld   [$ff9f], sp                                 ; $74c6: $08 $9f $ff
	ldh  a, [rIE]                                    ; $74c9: $f0 $ff
	pop  af                                          ; $74cb: $f1
	rst  $38                                         ; $74cc: $ff
	ld   sp, hl                                      ; $74cd: $f9
	rst  $38                                         ; $74ce: $ff
	ld   a, e                                        ; $74cf: $7b
	add  c                                           ; $74d0: $81
	rst  $38                                         ; $74d1: $ff
	nop                                              ; $74d2: $00
	inc  e                                           ; $74d3: $1c
	add  c                                           ; $74d4: $81
	rst  $38                                         ; $74d5: $ff
	nop                                              ; $74d6: $00
	rra                                              ; $74d7: $1f
	add  c                                           ; $74d8: $81
	rst  $38                                         ; $74d9: $ff
	inc  b                                           ; $74da: $04
	sbc  a                                           ; $74db: $9f
	rst  $38                                         ; $74dc: $ff
	ld   a, a                                        ; $74dd: $7f
	rst  $38                                         ; $74de: $ff
	ccf                                              ; $74df: $3f
	add  c                                           ; $74e0: $81
	rst  $38                                         ; $74e1: $ff
	nop                                              ; $74e2: $00
	ccf                                              ; $74e3: $3f
	rst  $38                                         ; $74e4: $ff
	rst  $38                                         ; $74e5: $ff
	sbc  h                                           ; $74e6: $9c
	rst  $38                                         ; $74e7: $ff
	inc  b                                           ; $74e8: $04
	ei                                               ; $74e9: $fb
	rst  $38                                         ; $74ea: $ff
	ei                                               ; $74eb: $fb
	rst  $38                                         ; $74ec: $ff
	ei                                               ; $74ed: $fb
	add  c                                           ; $74ee: $81
	rst  $38                                         ; $74ef: $ff
	ld   b, $f7                                      ; $74f0: $06 $f7
	rst  $38                                         ; $74f2: $ff
	rst  $28                                         ; $74f3: $ef
	rst  $38                                         ; $74f4: $ff
	cp   $ff                                         ; $74f5: $fe $ff
	ldh  [c], a                                      ; $74f7: $e2
	add  c                                           ; $74f8: $81
	rst  $38                                         ; $74f9: $ff
	jr   jr_01b_74ff                                 ; $74fa: $18 $03

	rst  $38                                         ; $74fc: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $74fd: $cf

jr_01b_74fe:
	rst  $38                                         ; $74fe: $ff

jr_01b_74ff:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $74ff: $cf
	rst  $38                                         ; $7500: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7501: $cf
	rst  $38                                         ; $7502: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7503: $cf
	rst  $38                                         ; $7504: $ff
	adc  a                                           ; $7505: $8f
	rst  $38                                         ; $7506: $ff
	ld   [hl], e                                     ; $7507: $73
	rst  $38                                         ; $7508: $ff
	ret  z                                           ; $7509: $c8

	rst  $38                                         ; $750a: $ff
	db   $fc                                         ; $750b: $fc
	rst  $38                                         ; $750c: $ff
	or   h                                           ; $750d: $b4
	rst  $38                                         ; $750e: $ff
	ldh  a, [c]                                      ; $750f: $f2
	rst  $38                                         ; $7510: $ff
	cp   a                                           ; $7511: $bf
	rst  $38                                         ; $7512: $ff
	db   $fd                                         ; $7513: $fd
	add  c                                           ; $7514: $81
	rst  $38                                         ; $7515: $ff
	ld   [$ffcf], sp                                 ; $7516: $08 $cf $ff
	ld   b, $ff                                      ; $7519: $06 $ff
	adc  $ff                                         ; $751b: $ce $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $751d: $cf
	rst  $38                                         ; $751e: $ff
	rst  $10                                         ; $751f: $d7
	add  c                                           ; $7520: $81
	rst  $38                                         ; $7521: $ff
	nop                                              ; $7522: $00
	rst  $28                                         ; $7523: $ef
	add  c                                           ; $7524: $81
	rst  $38                                         ; $7525: $ff
	ld   [bc], a                                     ; $7526: $02
	ccf                                              ; $7527: $3f
	rst  $38                                         ; $7528: $ff
	sub  b                                           ; $7529: $90
	add  c                                           ; $752a: $81
	rst  $38                                         ; $752b: $ff
	ld   [bc], a                                     ; $752c: $02
	pop  af                                          ; $752d: $f1
	rst  $38                                         ; $752e: $ff
	di                                               ; $752f: $f3
	add  c                                           ; $7530: $81
	rst  $38                                         ; $7531: $ff
	nop                                              ; $7532: $00
	ei                                               ; $7533: $fb
	add  c                                           ; $7534: $81
	rst  $38                                         ; $7535: $ff
	ld   [$ff96], sp                                 ; $7536: $08 $96 $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7539: $cf
	rst  $38                                         ; $753a: $ff
	ccf                                              ; $753b: $3f
	rst  $38                                         ; $753c: $ff
	adc  a                                           ; $753d: $8f
	rst  $38                                         ; $753e: $ff
	rst  $28                                         ; $753f: $ef
	add  c                                           ; $7540: $81
	rst  $38                                         ; $7541: $ff
	nop                                              ; $7542: $00
	rst  JumpTable                                         ; $7543: $df
	add  c                                           ; $7544: $81
	rst  $38                                         ; $7545: $ff
	nop                                              ; $7546: $00
	ld   c, a                                        ; $7547: $4f
	ret  nc                                          ; $7548: $d0

	rst  $38                                         ; $7549: $ff
	add  b                                           ; $754a: $80
	nop                                              ; $754b: $00
	adc  d                                           ; $754c: $8a
	rst  $38                                         ; $754d: $ff
	add  d                                           ; $754e: $82
	nop                                              ; $754f: $00
	adc  d                                           ; $7550: $8a
	rst  $38                                         ; $7551: $ff
	add  d                                           ; $7552: $82
	nop                                              ; $7553: $00
	adc  d                                           ; $7554: $8a
	rst  $38                                         ; $7555: $ff
	add  d                                           ; $7556: $82
	nop                                              ; $7557: $00
	adc  d                                           ; $7558: $8a
	rst  $38                                         ; $7559: $ff
	add  d                                           ; $755a: $82
	nop                                              ; $755b: $00
	adc  d                                           ; $755c: $8a
	rst  $38                                         ; $755d: $ff
	add  d                                           ; $755e: $82
	nop                                              ; $755f: $00
	add  c                                           ; $7560: $81
	rst  $38                                         ; $7561: $ff
	add  hl, bc                                      ; $7562: $09
	db   $e3                                         ; $7563: $e3
	rst  $38                                         ; $7564: $ff
	cp   $ff                                         ; $7565: $fe $ff
	and  $ff                                         ; $7567: $e6 $ff
	ei                                               ; $7569: $fb
	rst  $38                                         ; $756a: $ff
	db   $e3                                         ; $756b: $e3
	inc  e                                           ; $756c: $1c
	add  c                                           ; $756d: $81
	nop                                              ; $756e: $00
	add  c                                           ; $756f: $81
	rst  $38                                         ; $7570: $ff
	add  hl, bc                                      ; $7571: $09
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7572: $cf
	rst  $38                                         ; $7573: $ff
	ld   sp, $31ff                                   ; $7574: $31 $ff $31
	rst  $38                                         ; $7577: $ff
	inc  sp                                          ; $7578: $33
	rst  $38                                         ; $7579: $ff
	inc  sp                                          ; $757a: $33
	jr   nc, jr_01b_74fe                             ; $757b: $30 $81

	nop                                              ; $757d: $00
	add  c                                           ; $757e: $81
	rst  $38                                         ; $757f: $ff
	add  hl, bc                                      ; $7580: $09
	call z, $fcff                                    ; $7581: $cc $ff $fc
	rst  $38                                         ; $7584: $ff
	db   $fc                                         ; $7585: $fc
	rst  $38                                         ; $7586: $ff
	or   h                                           ; $7587: $b4
	rst  $38                                         ; $7588: $ff
	or   h                                           ; $7589: $b4

jr_01b_758a:
	inc  sp                                          ; $758a: $33
	add  c                                           ; $758b: $81
	nop                                              ; $758c: $00
	add  c                                           ; $758d: $81
	rst  $38                                         ; $758e: $ff
	add  hl, bc                                      ; $758f: $09
	rrca                                             ; $7590: $0f
	rst  $38                                         ; $7591: $ff
	ccf                                              ; $7592: $3f
	rst  $38                                         ; $7593: $ff
	ccf                                              ; $7594: $3f
	rst  $38                                         ; $7595: $ff
	ccf                                              ; $7596: $3f
	rst  $38                                         ; $7597: $ff
	ccf                                              ; $7598: $3f
	ldh  a, [$81]                                    ; $7599: $f0 $81

jr_01b_759b:
	nop                                              ; $759b: $00
	add  c                                           ; $759c: $81
	rst  $38                                         ; $759d: $ff
	add  hl, bc                                      ; $759e: $09
	sbc  a                                           ; $759f: $9f
	rst  $38                                         ; $75a0: $ff
	ldh  a, [rIE]                                    ; $75a1: $f0 $ff
	pop  af                                          ; $75a3: $f1
	rst  $38                                         ; $75a4: $ff
	ld   sp, hl                                      ; $75a5: $f9
	rst  $38                                         ; $75a6: $ff
	ld   a, e                                        ; $75a7: $7b
	db   $e3                                         ; $75a8: $e3
	add  c                                           ; $75a9: $81

jr_01b_75aa:
	nop                                              ; $75aa: $00
	add  c                                           ; $75ab: $81
	rst  $38                                         ; $75ac: $ff
	nop                                              ; $75ad: $00
	rra                                              ; $75ae: $1f
	add  c                                           ; $75af: $81
	rst  $38                                         ; $75b0: $ff
	dec  b                                           ; $75b1: $05
	sbc  a                                           ; $75b2: $9f
	rst  $38                                         ; $75b3: $ff
	ld   a, a                                        ; $75b4: $7f
	rst  $38                                         ; $75b5: $ff
	ccf                                              ; $75b6: $3f
	ret  nz                                          ; $75b7: $c0

	add  c                                           ; $75b8: $81
	nop                                              ; $75b9: $00
	adc  d                                           ; $75ba: $8a
	rst  $38                                         ; $75bb: $ff
	add  d                                           ; $75bc: $82
	nop                                              ; $75bd: $00
	adc  d                                           ; $75be: $8a
	rst  $38                                         ; $75bf: $ff
	add  d                                           ; $75c0: $82
	nop                                              ; $75c1: $00
	adc  d                                           ; $75c2: $8a
	rst  $38                                         ; $75c3: $ff
	add  d                                           ; $75c4: $82
	nop                                              ; $75c5: $00
	adc  d                                           ; $75c6: $8a
	rst  $38                                         ; $75c7: $ff
	add  d                                           ; $75c8: $82
	nop                                              ; $75c9: $00
	adc  d                                           ; $75ca: $8a
	rst  $38                                         ; $75cb: $ff
	add  b                                           ; $75cc: $80
	nop                                              ; $75cd: $00
	add  e                                           ; $75ce: $83
	rst  $38                                         ; $75cf: $ff
	ld   bc, $ff00                                   ; $75d0: $01 $00 $ff
	add  a                                           ; $75d3: $87
	nop                                              ; $75d4: $00
	add  e                                           ; $75d5: $83
	rst  $38                                         ; $75d6: $ff
	ld   bc, $ff00                                   ; $75d7: $01 $00 $ff
	add  a                                           ; $75da: $87
	nop                                              ; $75db: $00
	add  e                                           ; $75dc: $83
	rst  $38                                         ; $75dd: $ff
	ld   bc, $ff00                                   ; $75de: $01 $00 $ff
	add  a                                           ; $75e1: $87
	nop                                              ; $75e2: $00
	add  e                                           ; $75e3: $83
	rst  $38                                         ; $75e4: $ff
	ld   bc, $ff00                                   ; $75e5: $01 $00 $ff
	add  a                                           ; $75e8: $87
	nop                                              ; $75e9: $00
	add  e                                           ; $75ea: $83
	rst  $38                                         ; $75eb: $ff
	ld   bc, $ff00                                   ; $75ec: $01 $00 $ff
	add  a                                           ; $75ef: $87
	nop                                              ; $75f0: $00
	add  e                                           ; $75f1: $83
	rst  $38                                         ; $75f2: $ff
	ld   bc, $ff00                                   ; $75f3: $01 $00 $ff
	add  b                                           ; $75f6: $80
	nop                                              ; $75f7: $00
	add  b                                           ; $75f8: $80
	inc  e                                           ; $75f9: $1c
	add  b                                           ; $75fa: $80
	dec  e                                           ; $75fb: $1d
	add  b                                           ; $75fc: $80
	inc  b                                           ; $75fd: $04
	nop                                              ; $75fe: $00
	nop                                              ; $75ff: $00
	add  e                                           ; $7600: $83
	rst  $38                                         ; $7601: $ff
	ld   bc, $ff00                                   ; $7602: $01 $00 $ff
	add  b                                           ; $7605: $80
	nop                                              ; $7606: $00
	add  b                                           ; $7607: $80
	jr   nc, jr_01b_758a                             ; $7608: $30 $80

	cp   $80                                         ; $760a: $fe $80
	jr   nc, jr_01b_760e                             ; $760c: $30 $00

jr_01b_760e:
	nop                                              ; $760e: $00
	add  e                                           ; $760f: $83
	rst  $38                                         ; $7610: $ff
	ld   bc, $ff00                                   ; $7611: $01 $00 $ff
	add  b                                           ; $7614: $80
	nop                                              ; $7615: $00
	add  b                                           ; $7616: $80
	inc  sp                                          ; $7617: $33
	add  b                                           ; $7618: $80
	jr   nc, jr_01b_759b                             ; $7619: $30 $80

	inc  sp                                          ; $761b: $33
	nop                                              ; $761c: $00
	nop                                              ; $761d: $00
	add  e                                           ; $761e: $83
	rst  $38                                         ; $761f: $ff
	ld   bc, $ff00                                   ; $7620: $01 $00 $ff
	add  b                                           ; $7623: $80
	nop                                              ; $7624: $00
	add  b                                           ; $7625: $80
	ldh  a, [$80]                                    ; $7626: $f0 $80
	jr   nc, jr_01b_75aa                             ; $7628: $30 $80

	ldh  a, [rP1]                                    ; $762a: $f0 $00
	nop                                              ; $762c: $00
	add  e                                           ; $762d: $83
	rst  $38                                         ; $762e: $ff
	ld   bc, $ff00                                   ; $762f: $01 $00 $ff
	add  b                                           ; $7632: $80
	nop                                              ; $7633: $00
	add  b                                           ; $7634: $80
	ld   h, b                                        ; $7635: $60
	add  b                                           ; $7636: $80
	ld   l, a                                        ; $7637: $6f
	add  b                                           ; $7638: $80
	ld   h, c                                        ; $7639: $61
	nop                                              ; $763a: $00
	nop                                              ; $763b: $00
	add  e                                           ; $763c: $83
	rst  $38                                         ; $763d: $ff
	ld   bc, $ff00                                   ; $763e: $01 $00 $ff
	add  b                                           ; $7641: $80
	nop                                              ; $7642: $00
	add  d                                           ; $7643: $82
	ldh  [$80], a                                    ; $7644: $e0 $80
	add  b                                           ; $7646: $80
	nop                                              ; $7647: $00
	nop                                              ; $7648: $00
	add  e                                           ; $7649: $83
	rst  $38                                         ; $764a: $ff
	ld   bc, $ff00                                   ; $764b: $01 $00 $ff
	add  a                                           ; $764e: $87
	nop                                              ; $764f: $00
	add  e                                           ; $7650: $83
	rst  $38                                         ; $7651: $ff
	ld   bc, $ff00                                   ; $7652: $01 $00 $ff
	add  a                                           ; $7655: $87
	nop                                              ; $7656: $00
	add  e                                           ; $7657: $83
	rst  $38                                         ; $7658: $ff
	ld   bc, $ff00                                   ; $7659: $01 $00 $ff
	add  a                                           ; $765c: $87
	nop                                              ; $765d: $00
	add  e                                           ; $765e: $83
	rst  $38                                         ; $765f: $ff
	ld   bc, $ff00                                   ; $7660: $01 $00 $ff
	add  a                                           ; $7663: $87
	nop                                              ; $7664: $00
	add  e                                           ; $7665: $83
	rst  $38                                         ; $7666: $ff
	ld   bc, $ff00                                   ; $7667: $01 $00 $ff
	add  [hl]                                        ; $766a: $86
	nop                                              ; $766b: $00
	add  b                                           ; $766c: $80
	rst  $38                                         ; $766d: $ff
	adc  h                                           ; $766e: $8c
	nop                                              ; $766f: $00
	add  b                                           ; $7670: $80
	rst  $38                                         ; $7671: $ff
	adc  h                                           ; $7672: $8c
	nop                                              ; $7673: $00
	add  b                                           ; $7674: $80
	rst  $38                                         ; $7675: $ff
	adc  h                                           ; $7676: $8c
	nop                                              ; $7677: $00
	add  b                                           ; $7678: $80
	rst  $38                                         ; $7679: $ff
	adc  h                                           ; $767a: $8c
	nop                                              ; $767b: $00
	add  b                                           ; $767c: $80
	rst  $38                                         ; $767d: $ff
	adc  h                                           ; $767e: $8c
	nop                                              ; $767f: $00
	add  b                                           ; $7680: $80
	rst  $38                                         ; $7681: $ff
	add  b                                           ; $7682: $80
	nop                                              ; $7683: $00
	add  d                                           ; $7684: $82
	inc  b                                           ; $7685: $04
	add  b                                           ; $7686: $80
	inc  c                                           ; $7687: $0c
	add  b                                           ; $7688: $80
	inc  e                                           ; $7689: $1c
	add  b                                           ; $768a: $80
	dec  e                                           ; $768b: $1d
	add  b                                           ; $768c: $80
	nop                                              ; $768d: $00
	add  b                                           ; $768e: $80
	rst  $38                                         ; $768f: $ff
	add  b                                           ; $7690: $80
	db   $fc                                         ; $7691: $fc
	add  b                                           ; $7692: $80
	call z, $fc80                                    ; $7693: $cc $80 $fc
	add  b                                           ; $7696: $80
	call z, $fc80                                    ; $7697: $cc $80 $fc
	add  b                                           ; $769a: $80
	adc  h                                           ; $769b: $8c
	add  b                                           ; $769c: $80
	nop                                              ; $769d: $00
	add  b                                           ; $769e: $80
	rst  $38                                         ; $769f: $ff
	add  b                                           ; $76a0: $80
	inc  [hl]                                        ; $76a1: $34
	add  b                                           ; $76a2: $80
	ld   a, a                                        ; $76a3: $7f
	add  b                                           ; $76a4: $80
	ld   [hl], d                                     ; $76a5: $72
	add  b                                           ; $76a6: $80
	ld   [hl-], a                                    ; $76a7: $32
	add  d                                           ; $76a8: $82
	jr   nc, @-$7e                                   ; $76a9: $30 $80

	nop                                              ; $76ab: $00
	add  b                                           ; $76ac: $80
	rst  $38                                         ; $76ad: $ff
	add  b                                           ; $76ae: $80
	ret  z                                           ; $76af: $c8

	add  b                                           ; $76b0: $80
	ld   hl, sp-$7e                                  ; $76b1: $f8 $82
	ret  nc                                          ; $76b3: $d0

	add  d                                           ; $76b4: $82
	ret  nz                                          ; $76b5: $c0

	add  b                                           ; $76b6: $80
	nop                                              ; $76b7: $00
	add  b                                           ; $76b8: $80
	rst  $38                                         ; $76b9: $ff
	add  b                                           ; $76ba: $80
	ld   l, a                                        ; $76bb: $6f
	add  b                                           ; $76bc: $80
	ld   h, c                                        ; $76bd: $61
	add  d                                           ; $76be: $82
	ld   l, l                                        ; $76bf: $6d
	add  d                                           ; $76c0: $82
	ld   l, c                                        ; $76c1: $69
	add  b                                           ; $76c2: $80
	nop                                              ; $76c3: $00
	add  b                                           ; $76c4: $80
	rst  $38                                         ; $76c5: $ff
	add  b                                           ; $76c6: $80
	ldh  a, [$80]                                    ; $76c7: $f0 $80
	add  b                                           ; $76c9: $80
	add  d                                           ; $76ca: $82
	sub  b                                           ; $76cb: $90
	add  d                                           ; $76cc: $82
	or   b                                           ; $76cd: $b0
	add  b                                           ; $76ce: $80
	nop                                              ; $76cf: $00
	add  b                                           ; $76d0: $80
	rst  $38                                         ; $76d1: $ff
	adc  h                                           ; $76d2: $8c
	nop                                              ; $76d3: $00
	add  b                                           ; $76d4: $80
	rst  $38                                         ; $76d5: $ff
	adc  h                                           ; $76d6: $8c
	nop                                              ; $76d7: $00
	add  b                                           ; $76d8: $80
	rst  $38                                         ; $76d9: $ff
	adc  h                                           ; $76da: $8c
	nop                                              ; $76db: $00
	add  b                                           ; $76dc: $80
	rst  $38                                         ; $76dd: $ff
	adc  h                                           ; $76de: $8c
	nop                                              ; $76df: $00
	add  b                                           ; $76e0: $80
	rst  $38                                         ; $76e1: $ff
	adc  h                                           ; $76e2: $8c
	nop                                              ; $76e3: $00
	ld   d, a                                        ; $76e4: $57
	ld   bc, $ff8c                                   ; $76e5: $01 $8c $ff
	ld   [bc], a                                     ; $76e8: $02
	nop                                              ; $76e9: $00
	rst  $38                                         ; $76ea: $ff
	nop                                              ; $76eb: $00
	adc  e                                           ; $76ec: $8b
	rst  $38                                         ; $76ed: $ff
	ld   [bc], a                                     ; $76ee: $02
	nop                                              ; $76ef: $00
	rst  $38                                         ; $76f0: $ff
	nop                                              ; $76f1: $00
	adc  e                                           ; $76f2: $8b
	rst  $38                                         ; $76f3: $ff
	ld   [bc], a                                     ; $76f4: $02
	nop                                              ; $76f5: $00
	rst  $38                                         ; $76f6: $ff
	nop                                              ; $76f7: $00
	adc  e                                           ; $76f8: $8b
	rst  $38                                         ; $76f9: $ff
	ld   [bc], a                                     ; $76fa: $02
	nop                                              ; $76fb: $00
	rst  $38                                         ; $76fc: $ff
	nop                                              ; $76fd: $00
	adc  e                                           ; $76fe: $8b
	rst  $38                                         ; $76ff: $ff
	ld   [bc], a                                     ; $7700: $02
	nop                                              ; $7701: $00
	rst  $38                                         ; $7702: $ff
	nop                                              ; $7703: $00
	add  e                                           ; $7704: $83
	rst  $38                                         ; $7705: $ff
	ld   a, [bc]                                     ; $7706: $0a
	ldh  [rIE], a                                    ; $7707: $e0 $ff
	ldh  [rIE], a                                    ; $7709: $e0 $ff
	ldh  a, [rIE]                                    ; $770b: $f0 $ff
	db   $fc                                         ; $770d: $fc
	rst  $38                                         ; $770e: $ff
	inc  c                                           ; $770f: $0c
	rst  $38                                         ; $7710: $ff
	nop                                              ; $7711: $00
	add  c                                           ; $7712: $81
	rst  $38                                         ; $7713: $ff
	inc  c                                           ; $7714: $0c
	ccf                                              ; $7715: $3f
	rst  $38                                         ; $7716: $ff
	pop  bc                                          ; $7717: $c1
	rst  $38                                         ; $7718: $ff
	pop  bc                                          ; $7719: $c1
	rst  $38                                         ; $771a: $ff
	jp   $cfff                                       ; $771b: $c3 $ff $cf


	rst  $38                                         ; $771e: $ff
	call z, $00ff                                    ; $771f: $cc $ff $00
	add  c                                           ; $7722: $81
	rst  $38                                         ; $7723: $ff
	nop                                              ; $7724: $00
	add  h                                           ; $7725: $84
	add  c                                           ; $7726: $81
	rst  $38                                         ; $7727: $ff
	ld   [$ff9b], sp                                 ; $7728: $08 $9b $ff
	db   $d3                                         ; $772b: $d3
	rst  $38                                         ; $772c: $ff
	or   l                                           ; $772d: $b5
	rst  $38                                         ; $772e: $ff
	ld   a, c                                        ; $772f: $79
	rst  $38                                         ; $7730: $ff
	nop                                              ; $7731: $00
	add  e                                           ; $7732: $83
	rst  $38                                         ; $7733: $ff
	ld   [bc], a                                     ; $7734: $02
	rrca                                             ; $7735: $0f
	rst  $38                                         ; $7736: $ff
	ld   l, a                                        ; $7737: $6f
	add  c                                           ; $7738: $81
	rst  $38                                         ; $7739: $ff
	inc  b                                           ; $773a: $04
	ld   e, [hl]                                     ; $773b: $5e
	rst  $38                                         ; $773c: $ff
	pop  bc                                          ; $773d: $c1
	rst  $38                                         ; $773e: $ff
	nop                                              ; $773f: $00
	add  c                                           ; $7740: $81
	rst  $38                                         ; $7741: $ff
	inc  c                                           ; $7742: $0c
	ld   a, $ff                                      ; $7743: $3e $ff
	pop  hl                                          ; $7745: $e1
	rst  $38                                         ; $7746: $ff
	db   $e3                                         ; $7747: $e3
	rst  $38                                         ; $7748: $ff
	ldh  a, [c]                                      ; $7749: $f2
	rst  $38                                         ; $774a: $ff
	or   $ff                                         ; $774b: $f6 $ff
	rst  ToBoot                                         ; $774d: $c7
	rst  $38                                         ; $774e: $ff
	nop                                              ; $774f: $00
	add  c                                           ; $7750: $81
	rst  $38                                         ; $7751: $ff
	nop                                              ; $7752: $00
	ccf                                              ; $7753: $3f
	add  c                                           ; $7754: $81
	rst  $38                                         ; $7755: $ff
	nop                                              ; $7756: $00
	ccf                                              ; $7757: $3f
	add  c                                           ; $7758: $81
	rst  $38                                         ; $7759: $ff
	inc  b                                           ; $775a: $04
	ld   a, a                                        ; $775b: $7f
	rst  $38                                         ; $775c: $ff
	add  b                                           ; $775d: $80
	rst  $38                                         ; $775e: $ff
	nop                                              ; $775f: $00
	adc  e                                           ; $7760: $8b
	rst  $38                                         ; $7761: $ff
	ld   [bc], a                                     ; $7762: $02
	nop                                              ; $7763: $00
	rst  $38                                         ; $7764: $ff
	nop                                              ; $7765: $00
	adc  e                                           ; $7766: $8b
	rst  $38                                         ; $7767: $ff
	ld   [bc], a                                     ; $7768: $02
	nop                                              ; $7769: $00
	rst  $38                                         ; $776a: $ff
	nop                                              ; $776b: $00
	adc  e                                           ; $776c: $8b
	rst  $38                                         ; $776d: $ff
	ld   [bc], a                                     ; $776e: $02
	nop                                              ; $776f: $00
	rst  $38                                         ; $7770: $ff
	nop                                              ; $7771: $00
	adc  e                                           ; $7772: $8b
	rst  $38                                         ; $7773: $ff
	ld   [bc], a                                     ; $7774: $02
	nop                                              ; $7775: $00
	rst  $38                                         ; $7776: $ff
	nop                                              ; $7777: $00
	adc  e                                           ; $7778: $8b
	rst  $38                                         ; $7779: $ff
	ld   [bc], a                                     ; $777a: $02
	nop                                              ; $777b: $00
	rst  $38                                         ; $777c: $ff
	nop                                              ; $777d: $00
	adc  h                                           ; $777e: $8c
	rst  $38                                         ; $777f: $ff
	add  b                                           ; $7780: $80
	nop                                              ; $7781: $00
	adc  h                                           ; $7782: $8c
	rst  $38                                         ; $7783: $ff
	add  b                                           ; $7784: $80
	nop                                              ; $7785: $00
	adc  h                                           ; $7786: $8c
	rst  $38                                         ; $7787: $ff
	add  b                                           ; $7788: $80
	nop                                              ; $7789: $00
	adc  h                                           ; $778a: $8c
	rst  $38                                         ; $778b: $ff
	add  b                                           ; $778c: $80
	nop                                              ; $778d: $00
	adc  h                                           ; $778e: $8c
	rst  $38                                         ; $778f: $ff
	add  b                                           ; $7790: $80
	nop                                              ; $7791: $00
	add  e                                           ; $7792: $83
	rst  $38                                         ; $7793: $ff
	ld   a, [bc]                                     ; $7794: $0a
	ldh  [rIE], a                                    ; $7795: $e0 $ff
	ldh  [rIE], a                                    ; $7797: $e0 $ff
	ldh  a, [rIE]                                    ; $7799: $f0 $ff
	db   $fc                                         ; $779b: $fc
	rst  $38                                         ; $779c: $ff
	db   $fc                                         ; $779d: $fc
	rrca                                             ; $779e: $0f
	nop                                              ; $779f: $00
	add  c                                           ; $77a0: $81
	rst  $38                                         ; $77a1: $ff
	inc  c                                           ; $77a2: $0c
	ccf                                              ; $77a3: $3f
	rst  $38                                         ; $77a4: $ff
	pop  bc                                          ; $77a5: $c1
	rst  $38                                         ; $77a6: $ff
	pop  bc                                          ; $77a7: $c1
	rst  $38                                         ; $77a8: $ff
	jp   $cfff                                       ; $77a9: $c3 $ff $cf


	rst  $38                                         ; $77ac: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $77ad: $cf
	db   $fc                                         ; $77ae: $fc
	nop                                              ; $77af: $00
	add  c                                           ; $77b0: $81
	rst  $38                                         ; $77b1: $ff
	nop                                              ; $77b2: $00
	add  h                                           ; $77b3: $84
	add  c                                           ; $77b4: $81
	rst  $38                                         ; $77b5: $ff
	ld   [$ff9b], sp                                 ; $77b6: $08 $9b $ff
	db   $d3                                         ; $77b9: $d3
	rst  $38                                         ; $77ba: $ff
	or   l                                           ; $77bb: $b5
	rst  $38                                         ; $77bc: $ff
	cp   c                                           ; $77bd: $b9
	ccf                                              ; $77be: $3f
	nop                                              ; $77bf: $00
	add  e                                           ; $77c0: $83
	rst  $38                                         ; $77c1: $ff
	ld   [bc], a                                     ; $77c2: $02
	rrca                                             ; $77c3: $0f
	rst  $38                                         ; $77c4: $ff
	ld   l, a                                        ; $77c5: $6f
	add  c                                           ; $77c6: $81
	rst  $38                                         ; $77c7: $ff
	inc  b                                           ; $77c8: $04
	ld   e, [hl]                                     ; $77c9: $5e
	rst  $38                                         ; $77ca: $ff
	ld   c, a                                        ; $77cb: $4f
	ld   [hl], c                                     ; $77cc: $71
	nop                                              ; $77cd: $00
	add  c                                           ; $77ce: $81
	rst  $38                                         ; $77cf: $ff
	ld   [$ff3e], sp                                 ; $77d0: $08 $3e $ff
	pop  hl                                          ; $77d3: $e1
	rst  $38                                         ; $77d4: $ff
	db   $e3                                         ; $77d5: $e3
	rst  $38                                         ; $77d6: $ff
	ldh  a, [c]                                      ; $77d7: $f2
	rst  $38                                         ; $77d8: $ff
	or   $80                                         ; $77d9: $f6 $80
	rst  $38                                         ; $77db: $ff
	ld   bc, $00c7                                   ; $77dc: $01 $c7 $00
	add  c                                           ; $77df: $81
	rst  $38                                         ; $77e0: $ff
	nop                                              ; $77e1: $00
	ccf                                              ; $77e2: $3f
	add  c                                           ; $77e3: $81
	rst  $38                                         ; $77e4: $ff
	nop                                              ; $77e5: $00
	ccf                                              ; $77e6: $3f
	add  c                                           ; $77e7: $81
	rst  $38                                         ; $77e8: $ff
	nop                                              ; $77e9: $00
	ld   a, a                                        ; $77ea: $7f
	add  b                                           ; $77eb: $80
	rst  $38                                         ; $77ec: $ff
	ld   bc, $0080                                   ; $77ed: $01 $80 $00
	adc  h                                           ; $77f0: $8c
	rst  $38                                         ; $77f1: $ff
	add  b                                           ; $77f2: $80
	nop                                              ; $77f3: $00
	adc  h                                           ; $77f4: $8c
	rst  $38                                         ; $77f5: $ff
	add  b                                           ; $77f6: $80
	nop                                              ; $77f7: $00
	adc  h                                           ; $77f8: $8c
	rst  $38                                         ; $77f9: $ff
	add  b                                           ; $77fa: $80
	nop                                              ; $77fb: $00
	adc  h                                           ; $77fc: $8c
	rst  $38                                         ; $77fd: $ff
	add  b                                           ; $77fe: $80
	nop                                              ; $77ff: $00
	adc  h                                           ; $7800: $8c
	rst  $38                                         ; $7801: $ff
	add  b                                           ; $7802: $80
	nop                                              ; $7803: $00
	add  c                                           ; $7804: $81
	rst  $38                                         ; $7805: $ff
	ld   bc, $ff00                                   ; $7806: $01 $00 $ff
	adc  c                                           ; $7809: $89
	nop                                              ; $780a: $00
	add  c                                           ; $780b: $81
	rst  $38                                         ; $780c: $ff
	ld   bc, $ff00                                   ; $780d: $01 $00 $ff
	adc  c                                           ; $7810: $89
	nop                                              ; $7811: $00
	add  c                                           ; $7812: $81
	rst  $38                                         ; $7813: $ff
	ld   bc, $ff00                                   ; $7814: $01 $00 $ff
	adc  c                                           ; $7817: $89
	nop                                              ; $7818: $00
	add  c                                           ; $7819: $81
	rst  $38                                         ; $781a: $ff
	ld   bc, $ff00                                   ; $781b: $01 $00 $ff
	adc  c                                           ; $781e: $89
	nop                                              ; $781f: $00
	add  c                                           ; $7820: $81
	rst  $38                                         ; $7821: $ff
	ld   bc, $ff00                                   ; $7822: $01 $00 $ff
	adc  c                                           ; $7825: $89
	nop                                              ; $7826: $00
	inc  b                                           ; $7827: $04
	rst  $38                                         ; $7828: $ff
	ldh  a, [rIE]                                    ; $7829: $f0 $ff
	rrca                                             ; $782b: $0f
	rst  $38                                         ; $782c: $ff
	adc  b                                           ; $782d: $88
	nop                                              ; $782e: $00
	dec  b                                           ; $782f: $05
	ret  nz                                          ; $7830: $c0

	rst  $38                                         ; $7831: $ff
	jp   $fcff                                       ; $7832: $c3 $ff $fc


	rst  $38                                         ; $7835: $ff
	adc  b                                           ; $7836: $88
	nop                                              ; $7837: $00
	dec  b                                           ; $7838: $05
	ld   sp, $b9ff                                   ; $7839: $31 $ff $b9
	rst  $38                                         ; $783c: $ff
	ld   [hl], a                                     ; $783d: $77
	rst  $38                                         ; $783e: $ff
	adc  b                                           ; $783f: $88
	nop                                              ; $7840: $00
	dec  b                                           ; $7841: $05
	ld   [bc], a                                     ; $7842: $02
	rst  $38                                         ; $7843: $ff
	dec  c                                           ; $7844: $0d
	rst  $38                                         ; $7845: $ff
	ldh  a, [rIE]                                    ; $7846: $f0 $ff
	adc  b                                           ; $7848: $88
	nop                                              ; $7849: $00
	dec  b                                           ; $784a: $05
	sbc  $ff                                         ; $784b: $de $ff

jr_01b_784d:
	cp   $ff                                         ; $784d: $fe $ff
	rst  JumpTable                                         ; $784f: $df
	rst  $38                                         ; $7850: $ff
	adc  b                                           ; $7851: $88
	nop                                              ; $7852: $00
	dec  b                                           ; $7853: $05
	ld   h, b                                        ; $7854: $60
	rst  $38                                         ; $7855: $ff
	ld   a, a                                        ; $7856: $7f
	rst  $38                                         ; $7857: $ff
	ldh  [rIE], a                                    ; $7858: $e0 $ff
	adc  c                                           ; $785a: $89
	nop                                              ; $785b: $00
	add  c                                           ; $785c: $81
	rst  $38                                         ; $785d: $ff
	ld   bc, $ff00                                   ; $785e: $01 $00 $ff
	adc  c                                           ; $7861: $89
	nop                                              ; $7862: $00
	add  c                                           ; $7863: $81
	rst  $38                                         ; $7864: $ff
	ld   bc, $ff00                                   ; $7865: $01 $00 $ff
	adc  c                                           ; $7868: $89
	nop                                              ; $7869: $00
	add  c                                           ; $786a: $81
	rst  $38                                         ; $786b: $ff
	ld   bc, $ff00                                   ; $786c: $01 $00 $ff
	adc  c                                           ; $786f: $89
	nop                                              ; $7870: $00
	add  c                                           ; $7871: $81
	rst  $38                                         ; $7872: $ff
	ld   bc, $ff00                                   ; $7873: $01 $00 $ff
	adc  c                                           ; $7876: $89
	nop                                              ; $7877: $00
	add  c                                           ; $7878: $81
	rst  $38                                         ; $7879: $ff
	ld   bc, $ff00                                   ; $787a: $01 $00 $ff
	adc  c                                           ; $787d: $89
	nop                                              ; $787e: $00
	db   $d3                                         ; $787f: $d3
	rst  $38                                         ; $7880: $ff
	ld   a, [bc]                                     ; $7881: $0a
	ldh  [rIE], a                                    ; $7882: $e0 $ff
	ldh  [rIE], a                                    ; $7884: $e0 $ff
	ldh  a, [rIE]                                    ; $7886: $f0 $ff
	db   $fc                                         ; $7888: $fc
	rst  $38                                         ; $7889: $ff
	db   $fc                                         ; $788a: $fc
	rst  $38                                         ; $788b: $ff
	ldh  a, [$81]                                    ; $788c: $f0 $81
	rst  $38                                         ; $788e: $ff
	inc  c                                           ; $788f: $0c
	ccf                                              ; $7890: $3f
	rst  $38                                         ; $7891: $ff
	pop  bc                                          ; $7892: $c1
	rst  $38                                         ; $7893: $ff
	pop  bc                                          ; $7894: $c1
	rst  $38                                         ; $7895: $ff
	jp   $cfff                                       ; $7896: $c3 $ff $cf


	rst  $38                                         ; $7899: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $789a: $cf
	rst  $38                                         ; $789b: $ff
	inc  bc                                          ; $789c: $03
	add  c                                           ; $789d: $81
	rst  $38                                         ; $789e: $ff
	nop                                              ; $789f: $00
	add  h                                           ; $78a0: $84
	add  c                                           ; $78a1: $81
	rst  $38                                         ; $78a2: $ff
	ld   [$ff9b], sp                                 ; $78a3: $08 $9b $ff
	db   $d3                                         ; $78a6: $d3
	rst  $38                                         ; $78a7: $ff
	or   l                                           ; $78a8: $b5
	rst  $38                                         ; $78a9: $ff
	cp   c                                           ; $78aa: $b9
	rst  $38                                         ; $78ab: $ff
	ret  nz                                          ; $78ac: $c0

	add  e                                           ; $78ad: $83
	rst  $38                                         ; $78ae: $ff
	ld   [bc], a                                     ; $78af: $02
	rrca                                             ; $78b0: $0f
	rst  $38                                         ; $78b1: $ff
	ld   l, a                                        ; $78b2: $6f
	add  c                                           ; $78b3: $81
	rst  $38                                         ; $78b4: $ff
	inc  b                                           ; $78b5: $04
	ld   e, [hl]                                     ; $78b6: $5e
	rst  $38                                         ; $78b7: $ff
	ld   c, a                                        ; $78b8: $4f
	rst  $38                                         ; $78b9: $ff
	adc  [hl]                                        ; $78ba: $8e
	add  c                                           ; $78bb: $81
	rst  $38                                         ; $78bc: $ff
	ld   [$ff3e], sp                                 ; $78bd: $08 $3e $ff
	pop  hl                                          ; $78c0: $e1
	rst  $38                                         ; $78c1: $ff
	db   $e3                                         ; $78c2: $e3
	rst  $38                                         ; $78c3: $ff
	ldh  a, [c]                                      ; $78c4: $f2
	rst  $38                                         ; $78c5: $ff
	or   $81                                         ; $78c6: $f6 $81
	rst  $38                                         ; $78c8: $ff
	nop                                              ; $78c9: $00
	jr   c, jr_01b_784d                              ; $78ca: $38 $81

	rst  $38                                         ; $78cc: $ff
	nop                                              ; $78cd: $00
	ccf                                              ; $78ce: $3f
	add  c                                           ; $78cf: $81
	rst  $38                                         ; $78d0: $ff

jr_01b_78d1:
	nop                                              ; $78d1: $00
	ccf                                              ; $78d2: $3f
	add  c                                           ; $78d3: $81
	rst  $38                                         ; $78d4: $ff
	nop                                              ; $78d5: $00
	ld   a, a                                        ; $78d6: $7f
	add  c                                           ; $78d7: $81
	rst  $38                                         ; $78d8: $ff
	nop                                              ; $78d9: $00
	ld   a, a                                        ; $78da: $7f
	rst  $38                                         ; $78db: $ff
	rst  $38                                         ; $78dc: $ff
	sbc  [hl]                                        ; $78dd: $9e
	rst  $38                                         ; $78de: $ff
	jr   jr_01b_78d1                                 ; $78df: $18 $f0

	rst  $38                                         ; $78e1: $ff
	rst  $28                                         ; $78e2: $ef
	rst  $38                                         ; $78e3: $ff
	ldh  [rIE], a                                    ; $78e4: $e0 $ff
	ldh  a, [rIE]                                    ; $78e6: $f0 $ff
	ldh  a, [rIE]                                    ; $78e8: $f0 $ff
	cp   $ff                                         ; $78ea: $fe $ff
	cp   $ff                                         ; $78ec: $fe $ff
	ccf                                              ; $78ee: $3f
	rst  $38                                         ; $78ef: $ff
	jp   $fdff                                       ; $78f0: $c3 $ff $fd


	rst  $38                                         ; $78f3: $ff
	call $cfff                                       ; $78f4: $cd $ff $cf
	rst  $38                                         ; $78f7: $ff
	jp   $ff81                                       ; $78f8: $c3 $81 $ff


	inc  b                                           ; $78fb: $04
	ccf                                              ; $78fc: $3f
	rst  $38                                         ; $78fd: $ff
	adc  $ff                                         ; $78fe: $ce $ff
	cp   c                                           ; $7900: $b9
	add  c                                           ; $7901: $81
	rst  $38                                         ; $7902: $ff
	nop                                              ; $7903: $00
	cp   c                                           ; $7904: $b9
	add  c                                           ; $7905: $81
	rst  $38                                         ; $7906: $ff
	ld   [$ffbf], sp                                 ; $7907: $08 $bf $ff
	cp   h                                           ; $790a: $bc
	rst  $38                                         ; $790b: $ff
	call $fdff                                       ; $790c: $cd $ff $fd
	rst  $38                                         ; $790f: $ff
	dec  c                                           ; $7910: $0d
	add  c                                           ; $7911: $81
	rst  $38                                         ; $7912: $ff
	nop                                              ; $7913: $00
	ccf                                              ; $7914: $3f
	add  e                                           ; $7915: $83
	rst  $38                                         ; $7916: $ff
	ld   a, [bc]                                     ; $7917: $0a
	xor  a                                           ; $7918: $af
	rst  $38                                         ; $7919: $ff
	sbc  a                                           ; $791a: $9f
	rst  $38                                         ; $791b: $ff
	ld   hl, $feff                                   ; $791c: $21 $ff $fe
	rst  $38                                         ; $791f: $ff
	db   $e3                                         ; $7920: $e3
	rst  $38                                         ; $7921: $ff
	rst  $20                                         ; $7922: $e7
	add  c                                           ; $7923: $81
	rst  $38                                         ; $7924: $ff
	nop                                              ; $7925: $00
	rst  $30                                         ; $7926: $f7
	add  c                                           ; $7927: $81
	rst  $38                                         ; $7928: $ff
	ld   [$ff2c], sp                                 ; $7929: $08 $2c $ff
	sbc  a                                           ; $792c: $9f
	rst  $38                                         ; $792d: $ff
	ld   a, a                                        ; $792e: $7f
	rst  $38                                         ; $792f: $ff
	rra                                              ; $7930: $1f
	rst  $38                                         ; $7931: $ff
	rst  JumpTable                                         ; $7932: $df
	add  c                                           ; $7933: $81
	rst  $38                                         ; $7934: $ff
	nop                                              ; $7935: $00
	cp   a                                           ; $7936: $bf
	add  c                                           ; $7937: $81
	rst  $38                                         ; $7938: $ff
	nop                                              ; $7939: $00
	sbc  a                                           ; $793a: $9f
	ret  nc                                          ; $793b: $d0

	rst  $38                                         ; $793c: $ff
	add  b                                           ; $793d: $80
	nop                                              ; $793e: $00
	adc  d                                           ; $793f: $8a
	rst  $38                                         ; $7940: $ff
	add  d                                           ; $7941: $82
	nop                                              ; $7942: $00
	adc  d                                           ; $7943: $8a
	rst  $38                                         ; $7944: $ff
	add  d                                           ; $7945: $82
	nop                                              ; $7946: $00
	adc  d                                           ; $7947: $8a
	rst  $38                                         ; $7948: $ff
	add  d                                           ; $7949: $82
	nop                                              ; $794a: $00
	adc  d                                           ; $794b: $8a
	rst  $38                                         ; $794c: $ff
	add  d                                           ; $794d: $82
	nop                                              ; $794e: $00
	adc  d                                           ; $794f: $8a
	rst  $38                                         ; $7950: $ff
	add  d                                           ; $7951: $82
	nop                                              ; $7952: $00
	add  c                                           ; $7953: $81
	rst  $38                                         ; $7954: $ff
	add  hl, bc                                      ; $7955: $09
	ldh  [rIE], a                                    ; $7956: $e0 $ff
	ldh  [rIE], a                                    ; $7958: $e0 $ff
	ldh  a, [rIE]                                    ; $795a: $f0 $ff
	db   $fc                                         ; $795c: $fc
	rst  $38                                         ; $795d: $ff
	db   $fc                                         ; $795e: $fc
	rrca                                             ; $795f: $0f
	add  c                                           ; $7960: $81
	nop                                              ; $7961: $00
	inc  c                                           ; $7962: $0c
	rst  $38                                         ; $7963: $ff
	ccf                                              ; $7964: $3f
	rst  $38                                         ; $7965: $ff
	pop  bc                                          ; $7966: $c1
	rst  $38                                         ; $7967: $ff
	pop  bc                                          ; $7968: $c1
	rst  $38                                         ; $7969: $ff
	jp   $cfff                                       ; $796a: $c3 $ff $cf


	rst  $38                                         ; $796d: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $796e: $cf
	db   $fc                                         ; $796f: $fc
	add  c                                           ; $7970: $81
	nop                                              ; $7971: $00
	ld   bc, $84ff                                   ; $7972: $01 $ff $84
	add  c                                           ; $7975: $81
	rst  $38                                         ; $7976: $ff
	rlca                                             ; $7977: $07
	sbc  e                                           ; $7978: $9b
	rst  $38                                         ; $7979: $ff
	db   $d3                                         ; $797a: $d3
	rst  $38                                         ; $797b: $ff
	or   l                                           ; $797c: $b5
	rst  $38                                         ; $797d: $ff
	cp   c                                           ; $797e: $b9
	ccf                                              ; $797f: $3f
	add  c                                           ; $7980: $81
	nop                                              ; $7981: $00
	add  c                                           ; $7982: $81
	rst  $38                                         ; $7983: $ff
	ld   [bc], a                                     ; $7984: $02
	rrca                                             ; $7985: $0f
	rst  $38                                         ; $7986: $ff
	ld   l, a                                        ; $7987: $6f
	add  c                                           ; $7988: $81
	rst  $38                                         ; $7989: $ff
	inc  bc                                          ; $798a: $03
	ld   e, [hl]                                     ; $798b: $5e
	rst  $38                                         ; $798c: $ff
	ld   c, a                                        ; $798d: $4f
	ld   [hl], c                                     ; $798e: $71
	add  c                                           ; $798f: $81
	nop                                              ; $7990: $00
	add  hl, bc                                      ; $7991: $09
	rst  $38                                         ; $7992: $ff
	ld   a, $ff                                      ; $7993: $3e $ff
	pop  hl                                          ; $7995: $e1
	rst  $38                                         ; $7996: $ff
	db   $e3                                         ; $7997: $e3
	rst  $38                                         ; $7998: $ff
	ldh  a, [c]                                      ; $7999: $f2
	rst  $38                                         ; $799a: $ff
	or   $80                                         ; $799b: $f6 $80
	rst  $38                                         ; $799d: $ff
	nop                                              ; $799e: $00
	rst  ToBoot                                         ; $799f: $c7
	add  c                                           ; $79a0: $81
	nop                                              ; $79a1: $00
	ld   bc, $3fff                                   ; $79a2: $01 $ff $3f
	add  c                                           ; $79a5: $81
	rst  $38                                         ; $79a6: $ff
	nop                                              ; $79a7: $00
	ccf                                              ; $79a8: $3f
	add  c                                           ; $79a9: $81
	rst  $38                                         ; $79aa: $ff
	nop                                              ; $79ab: $00
	ld   a, a                                        ; $79ac: $7f
	add  b                                           ; $79ad: $80
	rst  $38                                         ; $79ae: $ff
	nop                                              ; $79af: $00
	add  b                                           ; $79b0: $80
	add  c                                           ; $79b1: $81
	nop                                              ; $79b2: $00
	adc  d                                           ; $79b3: $8a
	rst  $38                                         ; $79b4: $ff
	add  d                                           ; $79b5: $82
	nop                                              ; $79b6: $00
	adc  d                                           ; $79b7: $8a
	rst  $38                                         ; $79b8: $ff
	add  d                                           ; $79b9: $82
	nop                                              ; $79ba: $00
	adc  d                                           ; $79bb: $8a
	rst  $38                                         ; $79bc: $ff
	add  d                                           ; $79bd: $82
	nop                                              ; $79be: $00
	adc  d                                           ; $79bf: $8a
	rst  $38                                         ; $79c0: $ff
	add  d                                           ; $79c1: $82
	nop                                              ; $79c2: $00
	adc  d                                           ; $79c3: $8a
	rst  $38                                         ; $79c4: $ff
	add  b                                           ; $79c5: $80
	nop                                              ; $79c6: $00
	add  e                                           ; $79c7: $83
	rst  $38                                         ; $79c8: $ff
	ld   bc, $ff00                                   ; $79c9: $01 $00 $ff
	add  a                                           ; $79cc: $87
	nop                                              ; $79cd: $00
	add  e                                           ; $79ce: $83
	rst  $38                                         ; $79cf: $ff
	ld   bc, $ff00                                   ; $79d0: $01 $00 $ff
	add  a                                           ; $79d3: $87
	nop                                              ; $79d4: $00
	add  e                                           ; $79d5: $83
	rst  $38                                         ; $79d6: $ff
	ld   bc, $ff00                                   ; $79d7: $01 $00 $ff
	add  a                                           ; $79da: $87
	nop                                              ; $79db: $00
	add  e                                           ; $79dc: $83
	rst  $38                                         ; $79dd: $ff
	ld   bc, $ff00                                   ; $79de: $01 $00 $ff
	add  a                                           ; $79e1: $87
	nop                                              ; $79e2: $00
	add  e                                           ; $79e3: $83
	rst  $38                                         ; $79e4: $ff
	ld   bc, $ff00                                   ; $79e5: $01 $00 $ff
	add  a                                           ; $79e8: $87
	nop                                              ; $79e9: $00
	add  e                                           ; $79ea: $83
	rst  $38                                         ; $79eb: $ff
	ld   bc, $ff00                                   ; $79ec: $01 $00 $ff
	add  d                                           ; $79ef: $82
	nop                                              ; $79f0: $00
	add  b                                           ; $79f1: $80
	rra                                              ; $79f2: $1f
	add  c                                           ; $79f3: $81
	nop                                              ; $79f4: $00
	add  e                                           ; $79f5: $83
	rst  $38                                         ; $79f6: $ff
	ld   bc, $ff00                                   ; $79f7: $01 $00 $ff
	add  b                                           ; $79fa: $80
	nop                                              ; $79fb: $00
	add  b                                           ; $79fc: $80
	ret  nz                                          ; $79fd: $c0

	add  b                                           ; $79fe: $80
	cp   $80                                         ; $79ff: $fe $80
	ret  nz                                          ; $7a01: $c0

	nop                                              ; $7a02: $00
	nop                                              ; $7a03: $00
	add  e                                           ; $7a04: $83
	rst  $38                                         ; $7a05: $ff
	ld   bc, $ff00                                   ; $7a06: $01 $00 $ff
	add  b                                           ; $7a09: $80
	nop                                              ; $7a0a: $00
	add  d                                           ; $7a0b: $82
	ld   a, e                                        ; $7a0c: $7b
	add  b                                           ; $7a0d: $80
	rra                                              ; $7a0e: $1f
	nop                                              ; $7a0f: $00
	nop                                              ; $7a10: $00
	add  e                                           ; $7a11: $83
	rst  $38                                         ; $7a12: $ff
	ld   bc, $ff00                                   ; $7a13: $01 $00 $ff
	add  d                                           ; $7a16: $82
	nop                                              ; $7a17: $00
	add  b                                           ; $7a18: $80
	ldh  a, [$80]                                    ; $7a19: $f0 $80
	ld   h, b                                        ; $7a1b: $60
	nop                                              ; $7a1c: $00
	nop                                              ; $7a1d: $00
	add  e                                           ; $7a1e: $83
	rst  $38                                         ; $7a1f: $ff

jr_01b_7a20:
	ld   bc, $ff00                                   ; $7a20: $01 $00 $ff
	add  b                                           ; $7a23: $80
	nop                                              ; $7a24: $00
	add  b                                           ; $7a25: $80
	pop  bc                                          ; $7a26: $c1
	add  b                                           ; $7a27: $80
	rst  JumpTable                                         ; $7a28: $df
	add  b                                           ; $7a29: $80
	jp   $0000                                      ; $7a2a: $c3 $00 $00


	add  e                                           ; $7a2d: $83
	rst  $38                                         ; $7a2e: $ff
	ld   bc, $ff00                                   ; $7a2f: $01 $00 $ff
	add  b                                           ; $7a32: $80
	nop                                              ; $7a33: $00
	add  d                                           ; $7a34: $82
	ret  nz                                          ; $7a35: $c0

	add  c                                           ; $7a36: $81
	nop                                              ; $7a37: $00
	add  e                                           ; $7a38: $83
	rst  $38                                         ; $7a39: $ff

jr_01b_7a3a:
	ld   bc, $ff00                                   ; $7a3a: $01 $00 $ff
	add  a                                           ; $7a3d: $87
	nop                                              ; $7a3e: $00
	add  e                                           ; $7a3f: $83
	rst  $38                                         ; $7a40: $ff
	ld   bc, $ff00                                   ; $7a41: $01 $00 $ff
	add  a                                           ; $7a44: $87
	nop                                              ; $7a45: $00
	add  e                                           ; $7a46: $83
	rst  $38                                         ; $7a47: $ff
	ld   bc, $ff00                                   ; $7a48: $01 $00 $ff
	add  a                                           ; $7a4b: $87
	nop                                              ; $7a4c: $00
	add  e                                           ; $7a4d: $83
	rst  $38                                         ; $7a4e: $ff
	ld   bc, $ff00                                   ; $7a4f: $01 $00 $ff
	add  a                                           ; $7a52: $87
	nop                                              ; $7a53: $00
	add  e                                           ; $7a54: $83
	rst  $38                                         ; $7a55: $ff
	ld   bc, $ff00                                   ; $7a56: $01 $00 $ff
	add  [hl]                                        ; $7a59: $86
	nop                                              ; $7a5a: $00
	add  b                                           ; $7a5b: $80
	rst  $38                                         ; $7a5c: $ff
	adc  h                                           ; $7a5d: $8c
	nop                                              ; $7a5e: $00
	add  b                                           ; $7a5f: $80
	rst  $38                                         ; $7a60: $ff
	adc  h                                           ; $7a61: $8c
	nop                                              ; $7a62: $00
	add  b                                           ; $7a63: $80
	rst  $38                                         ; $7a64: $ff
	adc  h                                           ; $7a65: $8c
	nop                                              ; $7a66: $00
	add  b                                           ; $7a67: $80
	rst  $38                                         ; $7a68: $ff
	adc  h                                           ; $7a69: $8c
	nop                                              ; $7a6a: $00
	add  b                                           ; $7a6b: $80
	rst  $38                                         ; $7a6c: $ff
	adc  h                                           ; $7a6d: $8c
	nop                                              ; $7a6e: $00
	add  b                                           ; $7a6f: $80
	rst  $38                                         ; $7a70: $ff
	add  b                                           ; $7a71: $80
	rrca                                             ; $7a72: $0f
	add  b                                           ; $7a73: $80
	rra                                              ; $7a74: $1f
	add  b                                           ; $7a75: $80
	nop                                              ; $7a76: $00
	add  b                                           ; $7a77: $80
	rrca                                             ; $7a78: $0f
	add  b                                           ; $7a79: $80
	nop                                              ; $7a7a: $00
	add  b                                           ; $7a7b: $80
	ld   bc, $0080                                   ; $7a7c: $01 $80 $00
	add  b                                           ; $7a7f: $80
	rst  $38                                         ; $7a80: $ff
	add  b                                           ; $7a81: $80
	db   $fc                                         ; $7a82: $fc
	add  b                                           ; $7a83: $80
	cp   $80                                         ; $7a84: $fe $80
	call z, $fc80                                    ; $7a86: $cc $80 $fc
	add  d                                           ; $7a89: $82
	ret  nz                                          ; $7a8a: $c0

	add  b                                           ; $7a8b: $80
	nop                                              ; $7a8c: $00
	add  b                                           ; $7a8d: $80
	rst  $38                                         ; $7a8e: $ff
	add  d                                           ; $7a8f: $82
	ld   [hl], a                                     ; $7a90: $77
	add  d                                           ; $7a91: $82
	ld   sp, $7180                                   ; $7a92: $31 $80 $71
	add  b                                           ; $7a95: $80
	ld   [hl-], a                                    ; $7a96: $32
	add  b                                           ; $7a97: $80
	nop                                              ; $7a98: $00
	add  b                                           ; $7a99: $80
	rst  $38                                         ; $7a9a: $ff
	add  d                                           ; $7a9b: $82
	ldh  a, [$84]                                    ; $7a9c: $f0 $84
	jr   nc, jr_01b_7a20                             ; $7a9e: $30 $80

	ld   h, b                                        ; $7aa0: $60
	add  b                                           ; $7aa1: $80
	nop                                              ; $7aa2: $00
	add  b                                           ; $7aa3: $80
	rst  $38                                         ; $7aa4: $ff
	add  b                                           ; $7aa5: $80
	rst  JumpTable                                         ; $7aa6: $df
	add  b                                           ; $7aa7: $80
	jp   $db82                                       ; $7aa8: $c3 $82 $db


	add  d                                           ; $7aab: $82
	db   $d3                                         ; $7aac: $d3
	add  b                                           ; $7aad: $80
	nop                                              ; $7aae: $00
	add  b                                           ; $7aaf: $80
	rst  $38                                         ; $7ab0: $ff
	add  b                                           ; $7ab1: $80
	ldh  [$80], a                                    ; $7ab2: $e0 $80
	nop                                              ; $7ab4: $00
	add  d                                           ; $7ab5: $82
	jr   nz, jr_01b_7a3a                             ; $7ab6: $20 $82

	ld   h, b                                        ; $7ab8: $60
	add  b                                           ; $7ab9: $80
	nop                                              ; $7aba: $00
	add  b                                           ; $7abb: $80
	rst  $38                                         ; $7abc: $ff
	adc  h                                           ; $7abd: $8c
	nop                                              ; $7abe: $00
	add  b                                           ; $7abf: $80
	rst  $38                                         ; $7ac0: $ff
	adc  h                                           ; $7ac1: $8c
	nop                                              ; $7ac2: $00
	add  b                                           ; $7ac3: $80
	rst  $38                                         ; $7ac4: $ff
	adc  h                                           ; $7ac5: $8c
	nop                                              ; $7ac6: $00
	add  b                                           ; $7ac7: $80
	rst  $38                                         ; $7ac8: $ff
	adc  h                                           ; $7ac9: $8c
	nop                                              ; $7aca: $00
	add  b                                           ; $7acb: $80
	rst  $38                                         ; $7acc: $ff
	adc  h                                           ; $7acd: $8c
	nop                                              ; $7ace: $00
	ld   h, h                                        ; $7acf: $64
	ld   bc, $ff8c                                   ; $7ad0: $01 $8c $ff
	ld   [bc], a                                     ; $7ad3: $02
	nop                                              ; $7ad4: $00
	rst  $38                                         ; $7ad5: $ff
	nop                                              ; $7ad6: $00
	adc  e                                           ; $7ad7: $8b
	rst  $38                                         ; $7ad8: $ff
	ld   [bc], a                                     ; $7ad9: $02
	nop                                              ; $7ada: $00
	rst  $38                                         ; $7adb: $ff
	nop                                              ; $7adc: $00
	adc  e                                           ; $7add: $8b
	rst  $38                                         ; $7ade: $ff
	ld   [bc], a                                     ; $7adf: $02
	nop                                              ; $7ae0: $00
	rst  $38                                         ; $7ae1: $ff
	nop                                              ; $7ae2: $00
	adc  e                                           ; $7ae3: $8b
	rst  $38                                         ; $7ae4: $ff
	ld   [bc], a                                     ; $7ae5: $02
	nop                                              ; $7ae6: $00
	rst  $38                                         ; $7ae7: $ff
	nop                                              ; $7ae8: $00
	adc  e                                           ; $7ae9: $8b
	rst  $38                                         ; $7aea: $ff
	ld   [bc], a                                     ; $7aeb: $02
	nop                                              ; $7aec: $00
	rst  $38                                         ; $7aed: $ff
	nop                                              ; $7aee: $00
	add  c                                           ; $7aef: $81
	rst  $38                                         ; $7af0: $ff
	nop                                              ; $7af1: $00
	db   $fc                                         ; $7af2: $fc
	add  c                                           ; $7af3: $81
	rst  $38                                         ; $7af4: $ff
	ld   [$fffd], sp                                 ; $7af5: $08 $fd $ff
	cp   $ff                                         ; $7af8: $fe $ff
	db   $fc                                         ; $7afa: $fc
	rst  $38                                         ; $7afb: $ff
	inc  bc                                          ; $7afc: $03
	rst  $38                                         ; $7afd: $ff
	nop                                              ; $7afe: $00
	add  c                                           ; $7aff: $81
	rst  $38                                         ; $7b00: $ff
	nop                                              ; $7b01: $00
	call z, $ff81                                    ; $7b02: $cc $81 $ff
	ld   [$ffb3], sp                                 ; $7b05: $08 $b3 $ff
	adc  h                                           ; $7b08: $8c
	rst  $38                                         ; $7b09: $ff
	ld   c, h                                        ; $7b0a: $4c
	rst  $38                                         ; $7b0b: $ff
	cp   a                                           ; $7b0c: $bf
	rst  $38                                         ; $7b0d: $ff
	nop                                              ; $7b0e: $00
	add  c                                           ; $7b0f: $81
	rst  $38                                         ; $7b10: $ff
	inc  c                                           ; $7b11: $0c
	ldh  a, [rIE]                                    ; $7b12: $f0 $ff
	ld   hl, sp-$01                                  ; $7b14: $f8 $ff
	ld   a, b                                        ; $7b16: $78
	rst  $38                                         ; $7b17: $ff
	ld   a, b                                        ; $7b18: $78
	rst  $38                                         ; $7b19: $ff
	ld   hl, sp-$01                                  ; $7b1a: $f8 $ff
	rrca                                             ; $7b1c: $0f
	rst  $38                                         ; $7b1d: $ff
	nop                                              ; $7b1e: $00
	add  c                                           ; $7b1f: $81
	rst  $38                                         ; $7b20: $ff
	inc  c                                           ; $7b21: $0c
	ld   e, $ff                                      ; $7b22: $1e $ff
	ld   a, a                                        ; $7b24: $7f
	rst  $38                                         ; $7b25: $ff
	ld   a, a                                        ; $7b26: $7f
	rst  $38                                         ; $7b27: $ff
	ld   a, a                                        ; $7b28: $7f
	rst  $38                                         ; $7b29: $ff
	ld   a, l                                        ; $7b2a: $7d
	rst  $38                                         ; $7b2b: $ff
	db   $e3                                         ; $7b2c: $e3
	rst  $38                                         ; $7b2d: $ff
	nop                                              ; $7b2e: $00
	add  c                                           ; $7b2f: $81
	rst  $38                                         ; $7b30: $ff
	inc  c                                           ; $7b31: $0c
	ld   a, h                                        ; $7b32: $7c
	rst  $38                                         ; $7b33: $ff
	jp   $c6ff                                       ; $7b34: $c3 $ff $c6


	rst  $38                                         ; $7b37: $ff
	push hl                                          ; $7b38: $e5
	rst  $38                                         ; $7b39: $ff
	db   $ec                                         ; $7b3a: $ec
	rst  $38                                         ; $7b3b: $ff
	adc  a                                           ; $7b3c: $8f
	rst  $38                                         ; $7b3d: $ff
	nop                                              ; $7b3e: $00
	add  c                                           ; $7b3f: $81
	rst  $38                                         ; $7b40: $ff
	nop                                              ; $7b41: $00
	ld   a, a                                        ; $7b42: $7f
	add  c                                           ; $7b43: $81
	rst  $38                                         ; $7b44: $ff
	nop                                              ; $7b45: $00
	ld   a, a                                        ; $7b46: $7f
	add  e                                           ; $7b47: $83
	rst  $38                                         ; $7b48: $ff
	ld   [bc], a                                     ; $7b49: $02
	nop                                              ; $7b4a: $00
	rst  $38                                         ; $7b4b: $ff
	nop                                              ; $7b4c: $00
	adc  e                                           ; $7b4d: $8b
	rst  $38                                         ; $7b4e: $ff
	ld   [bc], a                                     ; $7b4f: $02
	nop                                              ; $7b50: $00
	rst  $38                                         ; $7b51: $ff
	nop                                              ; $7b52: $00
	adc  e                                           ; $7b53: $8b
	rst  $38                                         ; $7b54: $ff
	ld   [bc], a                                     ; $7b55: $02
	nop                                              ; $7b56: $00
	rst  $38                                         ; $7b57: $ff
	nop                                              ; $7b58: $00
	adc  e                                           ; $7b59: $8b
	rst  $38                                         ; $7b5a: $ff
	ld   [bc], a                                     ; $7b5b: $02
	nop                                              ; $7b5c: $00
	rst  $38                                         ; $7b5d: $ff
	nop                                              ; $7b5e: $00
	adc  e                                           ; $7b5f: $8b
	rst  $38                                         ; $7b60: $ff
	ld   [bc], a                                     ; $7b61: $02
	nop                                              ; $7b62: $00
	rst  $38                                         ; $7b63: $ff
	nop                                              ; $7b64: $00
	adc  e                                           ; $7b65: $8b
	rst  $38                                         ; $7b66: $ff
	ld   [bc], a                                     ; $7b67: $02
	nop                                              ; $7b68: $00
	rst  $38                                         ; $7b69: $ff
	nop                                              ; $7b6a: $00
	adc  h                                           ; $7b6b: $8c
	rst  $38                                         ; $7b6c: $ff
	add  b                                           ; $7b6d: $80
	nop                                              ; $7b6e: $00
	adc  h                                           ; $7b6f: $8c
	rst  $38                                         ; $7b70: $ff
	add  b                                           ; $7b71: $80
	nop                                              ; $7b72: $00
	adc  h                                           ; $7b73: $8c
	rst  $38                                         ; $7b74: $ff
	add  b                                           ; $7b75: $80
	nop                                              ; $7b76: $00
	adc  h                                           ; $7b77: $8c
	rst  $38                                         ; $7b78: $ff
	add  b                                           ; $7b79: $80
	nop                                              ; $7b7a: $00
	adc  h                                           ; $7b7b: $8c
	rst  $38                                         ; $7b7c: $ff
	add  b                                           ; $7b7d: $80
	nop                                              ; $7b7e: $00
	add  c                                           ; $7b7f: $81
	rst  $38                                         ; $7b80: $ff
	nop                                              ; $7b81: $00
	db   $fc                                         ; $7b82: $fc
	add  c                                           ; $7b83: $81
	rst  $38                                         ; $7b84: $ff
	ld   [$fffd], sp                                 ; $7b85: $08 $fd $ff
	cp   $ff                                         ; $7b88: $fe $ff
	db   $fc                                         ; $7b8a: $fc
	rst  $38                                         ; $7b8b: $ff
	db   $fd                                         ; $7b8c: $fd
	ld   bc, $8100                                   ; $7b8d: $01 $00 $81
	rst  $38                                         ; $7b90: $ff
	nop                                              ; $7b91: $00
	call z, $ff81                                    ; $7b92: $cc $81 $ff
	inc  b                                           ; $7b95: $04
	or   e                                           ; $7b96: $b3
	rst  $38                                         ; $7b97: $ff
	adc  h                                           ; $7b98: $8c
	rst  $38                                         ; $7b99: $ff
	ld   c, h                                        ; $7b9a: $4c
	add  b                                           ; $7b9b: $80
	rst  $38                                         ; $7b9c: $ff
	ld   bc, $00bf                                   ; $7b9d: $01 $bf $00
	add  c                                           ; $7ba0: $81
	rst  $38                                         ; $7ba1: $ff
	ld   [$fff0], sp                                 ; $7ba2: $08 $f0 $ff
	ld   hl, sp-$01                                  ; $7ba5: $f8 $ff
	ld   a, b                                        ; $7ba7: $78
	rst  $38                                         ; $7ba8: $ff
	ld   a, b                                        ; $7ba9: $78
	rst  $38                                         ; $7baa: $ff
	ld   hl, sp-$80                                  ; $7bab: $f8 $80
	rst  $38                                         ; $7bad: $ff
	ld   bc, $000f                                   ; $7bae: $01 $0f $00
	add  c                                           ; $7bb1: $81
	rst  $38                                         ; $7bb2: $ff
	ld   [$ff1e], sp                                 ; $7bb3: $08 $1e $ff
	ld   a, a                                        ; $7bb6: $7f
	rst  $38                                         ; $7bb7: $ff
	ld   a, a                                        ; $7bb8: $7f
	rst  $38                                         ; $7bb9: $ff
	ld   a, a                                        ; $7bba: $7f
	rst  $38                                         ; $7bbb: $ff
	ld   a, l                                        ; $7bbc: $7d
	add  b                                           ; $7bbd: $80
	rst  $38                                         ; $7bbe: $ff
	ld   bc, $00e3                                   ; $7bbf: $01 $e3 $00
	add  c                                           ; $7bc2: $81
	rst  $38                                         ; $7bc3: $ff
	ld   [$ff7c], sp                                 ; $7bc4: $08 $7c $ff
	jp   $c6ff                                       ; $7bc7: $c3 $ff $c6


	rst  $38                                         ; $7bca: $ff
	push hl                                          ; $7bcb: $e5
	rst  $38                                         ; $7bcc: $ff
	db   $ec                                         ; $7bcd: $ec
	add  b                                           ; $7bce: $80
	rst  $38                                         ; $7bcf: $ff
	ld   bc, $008f                                   ; $7bd0: $01 $8f $00
	add  c                                           ; $7bd3: $81
	rst  $38                                         ; $7bd4: $ff
	nop                                              ; $7bd5: $00
	ld   a, a                                        ; $7bd6: $7f
	add  c                                           ; $7bd7: $81
	rst  $38                                         ; $7bd8: $ff
	nop                                              ; $7bd9: $00
	ld   a, a                                        ; $7bda: $7f
	add  h                                           ; $7bdb: $84
	rst  $38                                         ; $7bdc: $ff
	add  b                                           ; $7bdd: $80
	nop                                              ; $7bde: $00
	adc  h                                           ; $7bdf: $8c
	rst  $38                                         ; $7be0: $ff
	add  b                                           ; $7be1: $80
	nop                                              ; $7be2: $00
	adc  h                                           ; $7be3: $8c
	rst  $38                                         ; $7be4: $ff
	add  b                                           ; $7be5: $80
	nop                                              ; $7be6: $00
	adc  h                                           ; $7be7: $8c
	rst  $38                                         ; $7be8: $ff
	add  b                                           ; $7be9: $80
	nop                                              ; $7bea: $00
	adc  h                                           ; $7beb: $8c
	rst  $38                                         ; $7bec: $ff
	add  b                                           ; $7bed: $80
	nop                                              ; $7bee: $00
	adc  h                                           ; $7bef: $8c
	rst  $38                                         ; $7bf0: $ff
	add  b                                           ; $7bf1: $80
	nop                                              ; $7bf2: $00
	add  c                                           ; $7bf3: $81
	rst  $38                                         ; $7bf4: $ff
	ld   bc, $ff00                                   ; $7bf5: $01 $00 $ff
	adc  c                                           ; $7bf8: $89
	nop                                              ; $7bf9: $00
	add  c                                           ; $7bfa: $81
	rst  $38                                         ; $7bfb: $ff
	ld   bc, $ff00                                   ; $7bfc: $01 $00 $ff
	adc  c                                           ; $7bff: $89
	nop                                              ; $7c00: $00
	add  c                                           ; $7c01: $81
	rst  $38                                         ; $7c02: $ff
	ld   bc, $ff00                                   ; $7c03: $01 $00 $ff
	adc  c                                           ; $7c06: $89
	nop                                              ; $7c07: $00
	add  c                                           ; $7c08: $81
	rst  $38                                         ; $7c09: $ff
	ld   bc, $ff00                                   ; $7c0a: $01 $00 $ff
	adc  c                                           ; $7c0d: $89
	nop                                              ; $7c0e: $00
	add  c                                           ; $7c0f: $81
	rst  $38                                         ; $7c10: $ff
	ld   bc, $ff00                                   ; $7c11: $01 $00 $ff
	adc  b                                           ; $7c14: $88
	nop                                              ; $7c15: $00
	dec  b                                           ; $7c16: $05
	ld   bc, $fdff                                   ; $7c17: $01 $ff $fd
	rst  $38                                         ; $7c1a: $ff
	inc  bc                                          ; $7c1b: $03
	rst  $38                                         ; $7c1c: $ff
	adc  b                                           ; $7c1d: $88
	nop                                              ; $7c1e: $00
	dec  b                                           ; $7c1f: $05
	and  e                                           ; $7c20: $a3
	rst  $38                                         ; $7c21: $ff
	ld   h, e                                        ; $7c22: $63
	rst  $38                                         ; $7c23: $ff
	ccf                                              ; $7c24: $3f
	rst  $38                                         ; $7c25: $ff
	adc  b                                           ; $7c26: $88
	nop                                              ; $7c27: $00
	dec  b                                           ; $7c28: $05
	ld   [$f8ff], sp                                 ; $7c29: $08 $ff $f8
	rst  $38                                         ; $7c2c: $ff
	rrca                                             ; $7c2d: $0f
	rst  $38                                         ; $7c2e: $ff
	adc  b                                           ; $7c2f: $88
	nop                                              ; $7c30: $00
	dec  b                                           ; $7c31: $05
	ld   h, l                                        ; $7c32: $65
	rst  $38                                         ; $7c33: $ff
	ld   a, e                                        ; $7c34: $7b
	rst  $38                                         ; $7c35: $ff
	pop  hl                                          ; $7c36: $e1
	rst  $38                                         ; $7c37: $ff
	adc  b                                           ; $7c38: $88
	nop                                              ; $7c39: $00
	dec  b                                           ; $7c3a: $05
	cp   h                                           ; $7c3b: $bc
	rst  $38                                         ; $7c3c: $ff
	db   $fc                                         ; $7c3d: $fc
	rst  $38                                         ; $7c3e: $ff
	cp   a                                           ; $7c3f: $bf
	rst  $38                                         ; $7c40: $ff
	adc  b                                           ; $7c41: $88
	nop                                              ; $7c42: $00
	nop                                              ; $7c43: $00
	ret  nz                                          ; $7c44: $c0

	add  c                                           ; $7c45: $81
	rst  $38                                         ; $7c46: $ff
	ld   bc, $ffc0                                   ; $7c47: $01 $c0 $ff
	adc  c                                           ; $7c4a: $89
	nop                                              ; $7c4b: $00
	add  c                                           ; $7c4c: $81
	rst  $38                                         ; $7c4d: $ff
	ld   bc, $ff00                                   ; $7c4e: $01 $00 $ff
	adc  c                                           ; $7c51: $89
	nop                                              ; $7c52: $00
	add  c                                           ; $7c53: $81
	rst  $38                                         ; $7c54: $ff
	ld   bc, $ff00                                   ; $7c55: $01 $00 $ff
	adc  c                                           ; $7c58: $89
	nop                                              ; $7c59: $00
	add  c                                           ; $7c5a: $81
	rst  $38                                         ; $7c5b: $ff
	ld   bc, $ff00                                   ; $7c5c: $01 $00 $ff
	adc  c                                           ; $7c5f: $89
	nop                                              ; $7c60: $00
	add  c                                           ; $7c61: $81
	rst  $38                                         ; $7c62: $ff
	ld   bc, $ff00                                   ; $7c63: $01 $00 $ff
	adc  c                                           ; $7c66: $89
	nop                                              ; $7c67: $00
	add  c                                           ; $7c68: $81
	rst  $38                                         ; $7c69: $ff
	ld   bc, $ff00                                   ; $7c6a: $01 $00 $ff
	adc  c                                           ; $7c6d: $89
	nop                                              ; $7c6e: $00
	pop  de                                          ; $7c6f: $d1
	rst  $38                                         ; $7c70: $ff
	nop                                              ; $7c71: $00
	db   $fc                                         ; $7c72: $fc
	add  c                                           ; $7c73: $81
	rst  $38                                         ; $7c74: $ff
	ld   [$fffd], sp                                 ; $7c75: $08 $fd $ff
	cp   $ff                                         ; $7c78: $fe $ff
	db   $fc                                         ; $7c7a: $fc
	rst  $38                                         ; $7c7b: $ff
	db   $fd                                         ; $7c7c: $fd
	rst  $38                                         ; $7c7d: $ff
	cp   $81                                         ; $7c7e: $fe $81
	rst  $38                                         ; $7c80: $ff
	nop                                              ; $7c81: $00
	call z, $ff81                                    ; $7c82: $cc $81 $ff
	inc  b                                           ; $7c85: $04
	or   e                                           ; $7c86: $b3
	rst  $38                                         ; $7c87: $ff
	adc  h                                           ; $7c88: $8c
	rst  $38                                         ; $7c89: $ff
	ld   c, h                                        ; $7c8a: $4c
	add  c                                           ; $7c8b: $81
	rst  $38                                         ; $7c8c: $ff
	nop                                              ; $7c8d: $00
	ld   b, b                                        ; $7c8e: $40
	add  c                                           ; $7c8f: $81
	rst  $38                                         ; $7c90: $ff
	ld   [$fff0], sp                                 ; $7c91: $08 $f0 $ff
	ld   hl, sp-$01                                  ; $7c94: $f8 $ff
	ld   a, b                                        ; $7c96: $78
	rst  $38                                         ; $7c97: $ff
	ld   a, b                                        ; $7c98: $78
	rst  $38                                         ; $7c99: $ff
	ld   hl, sp-$7f                                  ; $7c9a: $f8 $81
	rst  $38                                         ; $7c9c: $ff
	nop                                              ; $7c9d: $00
	ldh  a, [$81]                                    ; $7c9e: $f0 $81
	rst  $38                                         ; $7ca0: $ff
	ld   [$ff1e], sp                                 ; $7ca1: $08 $1e $ff
	ld   a, a                                        ; $7ca4: $7f
	rst  $38                                         ; $7ca5: $ff
	ld   a, a                                        ; $7ca6: $7f
	rst  $38                                         ; $7ca7: $ff
	ld   a, a                                        ; $7ca8: $7f
	rst  $38                                         ; $7ca9: $ff
	ld   a, l                                        ; $7caa: $7d
	add  c                                           ; $7cab: $81
	rst  $38                                         ; $7cac: $ff
	nop                                              ; $7cad: $00
	inc  e                                           ; $7cae: $1c
	add  c                                           ; $7caf: $81
	rst  $38                                         ; $7cb0: $ff
	ld   [$ff7c], sp                                 ; $7cb1: $08 $7c $ff
	jp   $c6ff                                       ; $7cb4: $c3 $ff $c6


	rst  $38                                         ; $7cb7: $ff
	push hl                                          ; $7cb8: $e5
	rst  $38                                         ; $7cb9: $ff
	db   $ec                                         ; $7cba: $ec
	add  c                                           ; $7cbb: $81
	rst  $38                                         ; $7cbc: $ff
	nop                                              ; $7cbd: $00
	ld   [hl], b                                     ; $7cbe: $70
	add  c                                           ; $7cbf: $81
	rst  $38                                         ; $7cc0: $ff
	nop                                              ; $7cc1: $00
	ld   a, a                                        ; $7cc2: $7f
	add  c                                           ; $7cc3: $81
	rst  $38                                         ; $7cc4: $ff
	nop                                              ; $7cc5: $00
	ld   a, a                                        ; $7cc6: $7f
	rst  $38                                         ; $7cc7: $ff
	rst  $38                                         ; $7cc8: $ff
	and  h                                           ; $7cc9: $a4
	rst  $38                                         ; $7cca: $ff
	inc  b                                           ; $7ccb: $04
	cp   $ff                                         ; $7ccc: $fe $ff
	db   $fd                                         ; $7cce: $fd
	rst  $38                                         ; $7ccf: $ff
	db   $fd                                         ; $7cd0: $fd
	add  c                                           ; $7cd1: $81
	rst  $38                                         ; $7cd2: $ff
	nop                                              ; $7cd3: $00
	db   $fd                                         ; $7cd4: $fd
	add  c                                           ; $7cd5: $81
	rst  $38                                         ; $7cd6: $ff
	nop                                              ; $7cd7: $00
	db   $fc                                         ; $7cd8: $fc
	add  c                                           ; $7cd9: $81
	rst  $38                                         ; $7cda: $ff
	ld   a, [bc]                                     ; $7cdb: $0a
	ld   e, h                                        ; $7cdc: $5c
	rst  $38                                         ; $7cdd: $ff
	ld   h, e                                        ; $7cde: $63
	rst  $38                                         ; $7cdf: $ff
	ld   h, e                                        ; $7ce0: $63
	rst  $38                                         ; $7ce1: $ff
	db   $e3                                         ; $7ce2: $e3
	rst  $38                                         ; $7ce3: $ff
	ld   h, e                                        ; $7ce4: $63
	rst  $38                                         ; $7ce5: $ff
	inc  hl                                          ; $7ce6: $23
	add  c                                           ; $7ce7: $81
	rst  $38                                         ; $7ce8: $ff
	inc  c                                           ; $7ce9: $0c
	nop                                              ; $7cea: $00
	rst  $38                                         ; $7ceb: $ff
	rst  $30                                         ; $7cec: $f7
	rst  $38                                         ; $7ced: $ff
	ld   hl, sp-$01                                  ; $7cee: $f8 $ff
	ldh  a, [rIE]                                    ; $7cf0: $f0 $ff
	ldh  [rIE], a                                    ; $7cf2: $e0 $ff
	db   $ec                                         ; $7cf4: $ec
	rst  $38                                         ; $7cf5: $ff
	ld   l, e                                        ; $7cf6: $6b
	add  c                                           ; $7cf7: $81
	rst  $38                                         ; $7cf8: $ff
	inc  c                                           ; $7cf9: $0c
	ld   h, a                                        ; $7cfa: $67
	rst  $38                                         ; $7cfb: $ff
	sbc  d                                           ; $7cfc: $9a
	rst  $38                                         ; $7cfd: $ff
	ld   a, e                                        ; $7cfe: $7b
	rst  $38                                         ; $7cff: $ff
	rra                                              ; $7d00: $1f
	rst  $38                                         ; $7d01: $ff
	rrca                                             ; $7d02: $0f
	rst  $38                                         ; $7d03: $ff
	ld   l, a                                        ; $7d04: $6f
	rst  $38                                         ; $7d05: $ff
	xor  a                                           ; $7d06: $af
	add  c                                           ; $7d07: $81
	rst  $38                                         ; $7d08: $ff
	ld   [$ffce], sp                                 ; $7d09: $08 $ce $ff
	ld   b, e                                        ; $7d0c: $43
	rst  $38                                         ; $7d0d: $ff
	db   $fc                                         ; $7d0e: $fc
	rst  $38                                         ; $7d0f: $ff
	add  $ff                                         ; $7d10: $c6 $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7d12: $cf
	add  c                                           ; $7d13: $81
	rst  $38                                         ; $7d14: $ff
	nop                                              ; $7d15: $00
	rst  $28                                         ; $7d16: $ef
	add  c                                           ; $7d17: $81
	rst  $38                                         ; $7d18: $ff
	ld   [bc], a                                     ; $7d19: $02
	ld   e, c                                        ; $7d1a: $59
	rst  $38                                         ; $7d1b: $ff
	ccf                                              ; $7d1c: $3f
	add  c                                           ; $7d1d: $81
	rst  $38                                         ; $7d1e: $ff
	ld   [bc], a                                     ; $7d1f: $02
	ccf                                              ; $7d20: $3f
	rst  $38                                         ; $7d21: $ff
	cp   a                                           ; $7d22: $bf
	add  c                                           ; $7d23: $81
	rst  $38                                         ; $7d24: $ff
	nop                                              ; $7d25: $00
	ld   a, a                                        ; $7d26: $7f
	add  c                                           ; $7d27: $81
	rst  $38                                         ; $7d28: $ff
	nop                                              ; $7d29: $00
	ccf                                              ; $7d2a: $3f
	ret  nc                                          ; $7d2b: $d0

	rst  $38                                         ; $7d2c: $ff
	add  b                                           ; $7d2d: $80
	nop                                              ; $7d2e: $00
	adc  d                                           ; $7d2f: $8a
	rst  $38                                         ; $7d30: $ff
	add  d                                           ; $7d31: $82
	nop                                              ; $7d32: $00
	adc  d                                           ; $7d33: $8a
	rst  $38                                         ; $7d34: $ff
	add  d                                           ; $7d35: $82
	nop                                              ; $7d36: $00
	adc  d                                           ; $7d37: $8a
	rst  $38                                         ; $7d38: $ff
	add  d                                           ; $7d39: $82
	nop                                              ; $7d3a: $00
	adc  d                                           ; $7d3b: $8a
	rst  $38                                         ; $7d3c: $ff
	add  d                                           ; $7d3d: $82
	nop                                              ; $7d3e: $00
	adc  d                                           ; $7d3f: $8a
	rst  $38                                         ; $7d40: $ff
	add  d                                           ; $7d41: $82
	nop                                              ; $7d42: $00
	add  c                                           ; $7d43: $81
	rst  $38                                         ; $7d44: $ff
	nop                                              ; $7d45: $00
	db   $fc                                         ; $7d46: $fc
	add  c                                           ; $7d47: $81
	rst  $38                                         ; $7d48: $ff
	dec  b                                           ; $7d49: $05
	db   $fd                                         ; $7d4a: $fd
	rst  $38                                         ; $7d4b: $ff
	cp   $ff                                         ; $7d4c: $fe $ff
	db   $fc                                         ; $7d4e: $fc
	inc  bc                                          ; $7d4f: $03
	add  c                                           ; $7d50: $81
	nop                                              ; $7d51: $00
	add  c                                           ; $7d52: $81
	rst  $38                                         ; $7d53: $ff
	nop                                              ; $7d54: $00
	call z, $ff81                                    ; $7d55: $cc $81 $ff
	dec  b                                           ; $7d58: $05
	or   e                                           ; $7d59: $b3
	rst  $38                                         ; $7d5a: $ff
	adc  h                                           ; $7d5b: $8c
	rst  $38                                         ; $7d5c: $ff
	ld   c, h                                        ; $7d5d: $4c
	cp   a                                           ; $7d5e: $bf
	add  c                                           ; $7d5f: $81
	nop                                              ; $7d60: $00
	add  c                                           ; $7d61: $81
	rst  $38                                         ; $7d62: $ff
	add  hl, bc                                      ; $7d63: $09
	ldh  a, [rIE]                                    ; $7d64: $f0 $ff
	ld   hl, sp-$01                                  ; $7d66: $f8 $ff
	ld   a, b                                        ; $7d68: $78
	rst  $38                                         ; $7d69: $ff
	ld   a, b                                        ; $7d6a: $78
	rst  $38                                         ; $7d6b: $ff
	ld   hl, sp+$0f                                  ; $7d6c: $f8 $0f
	add  c                                           ; $7d6e: $81
	nop                                              ; $7d6f: $00
	add  c                                           ; $7d70: $81
	rst  $38                                         ; $7d71: $ff
	add  hl, bc                                      ; $7d72: $09
	ld   e, $ff                                      ; $7d73: $1e $ff
	ld   a, a                                        ; $7d75: $7f
	rst  $38                                         ; $7d76: $ff
	ld   a, a                                        ; $7d77: $7f
	rst  $38                                         ; $7d78: $ff
	ld   a, a                                        ; $7d79: $7f
	rst  $38                                         ; $7d7a: $ff
	ld   a, l                                        ; $7d7b: $7d
	db   $e3                                         ; $7d7c: $e3
	add  c                                           ; $7d7d: $81
	nop                                              ; $7d7e: $00
	add  c                                           ; $7d7f: $81
	rst  $38                                         ; $7d80: $ff
	add  hl, bc                                      ; $7d81: $09
	ld   a, h                                        ; $7d82: $7c
	rst  $38                                         ; $7d83: $ff
	jp   $c6ff                                       ; $7d84: $c3 $ff $c6


	rst  $38                                         ; $7d87: $ff
	push hl                                          ; $7d88: $e5
	rst  $38                                         ; $7d89: $ff
	db   $ec                                         ; $7d8a: $ec
	adc  a                                           ; $7d8b: $8f
	add  c                                           ; $7d8c: $81
	nop                                              ; $7d8d: $00
	add  c                                           ; $7d8e: $81
	rst  $38                                         ; $7d8f: $ff
	nop                                              ; $7d90: $00
	ld   a, a                                        ; $7d91: $7f
	add  c                                           ; $7d92: $81
	rst  $38                                         ; $7d93: $ff
	nop                                              ; $7d94: $00
	ld   a, a                                        ; $7d95: $7f
	add  d                                           ; $7d96: $82
	rst  $38                                         ; $7d97: $ff
	add  d                                           ; $7d98: $82
	nop                                              ; $7d99: $00
	adc  d                                           ; $7d9a: $8a
	rst  $38                                         ; $7d9b: $ff
	add  d                                           ; $7d9c: $82
	nop                                              ; $7d9d: $00
	adc  d                                           ; $7d9e: $8a
	rst  $38                                         ; $7d9f: $ff
	add  d                                           ; $7da0: $82
	nop                                              ; $7da1: $00
	adc  d                                           ; $7da2: $8a
	rst  $38                                         ; $7da3: $ff
	add  d                                           ; $7da4: $82
	nop                                              ; $7da5: $00
	adc  d                                           ; $7da6: $8a
	rst  $38                                         ; $7da7: $ff
	add  d                                           ; $7da8: $82
	nop                                              ; $7da9: $00
	adc  d                                           ; $7daa: $8a
	rst  $38                                         ; $7dab: $ff
	add  b                                           ; $7dac: $80
	nop                                              ; $7dad: $00
	add  e                                           ; $7dae: $83
	rst  $38                                         ; $7daf: $ff
	ld   bc, $ff00                                   ; $7db0: $01 $00 $ff
	add  a                                           ; $7db3: $87
	nop                                              ; $7db4: $00
	add  e                                           ; $7db5: $83
	rst  $38                                         ; $7db6: $ff
	ld   bc, $ff00                                   ; $7db7: $01 $00 $ff
	add  a                                           ; $7dba: $87
	nop                                              ; $7dbb: $00
	add  e                                           ; $7dbc: $83
	rst  $38                                         ; $7dbd: $ff
	ld   bc, $ff00                                   ; $7dbe: $01 $00 $ff
	add  a                                           ; $7dc1: $87
	nop                                              ; $7dc2: $00
	add  e                                           ; $7dc3: $83
	rst  $38                                         ; $7dc4: $ff
	ld   bc, $ff00                                   ; $7dc5: $01 $00 $ff
	add  a                                           ; $7dc8: $87
	nop                                              ; $7dc9: $00
	add  e                                           ; $7dca: $83
	rst  $38                                         ; $7dcb: $ff
	ld   bc, $ff00                                   ; $7dcc: $01 $00 $ff
	add  a                                           ; $7dcf: $87
	nop                                              ; $7dd0: $00
	add  e                                           ; $7dd1: $83
	rst  $38                                         ; $7dd2: $ff
	ld   bc, $ff00                                   ; $7dd3: $01 $00 $ff
	add  b                                           ; $7dd6: $80
	nop                                              ; $7dd7: $00
	add  d                                           ; $7dd8: $82
	inc  bc                                          ; $7dd9: $03
	add  b                                           ; $7dda: $80
	ld   bc, $0000                                   ; $7ddb: $01 $00 $00
	add  e                                           ; $7dde: $83
	rst  $38                                         ; $7ddf: $ff
	ld   bc, $ff00                                   ; $7de0: $01 $00 $ff
	add  b                                           ; $7de3: $80
	nop                                              ; $7de4: $00
	add  d                                           ; $7de5: $82
	inc  sp                                          ; $7de6: $33
	add  b                                           ; $7de7: $80
	ld   a, a                                        ; $7de8: $7f
	nop                                              ; $7de9: $00
	nop                                              ; $7dea: $00
	add  e                                           ; $7deb: $83
	rst  $38                                         ; $7dec: $ff
	ld   bc, $ff00                                   ; $7ded: $01 $00 $ff
	add  b                                           ; $7df0: $80
	nop                                              ; $7df1: $00
	add  b                                           ; $7df2: $80
	rrca                                             ; $7df3: $0f
	add  b                                           ; $7df4: $80
	ld   [$8f80], sp                                 ; $7df5: $08 $80 $8f
	nop                                              ; $7df8: $00
	nop                                              ; $7df9: $00
	add  e                                           ; $7dfa: $83
	rst  $38                                         ; $7dfb: $ff
	ld   bc, $ff00                                   ; $7dfc: $01 $00 $ff
	add  b                                           ; $7dff: $80
	nop                                              ; $7e00: $00
	add  b                                           ; $7e01: $80
	pop  hl                                          ; $7e02: $e1
	add  b                                           ; $7e03: $80
	ld   h, c                                        ; $7e04: $61
	add  b                                           ; $7e05: $80
	pop  hl                                          ; $7e06: $e1
	nop                                              ; $7e07: $00
	nop                                              ; $7e08: $00
	add  e                                           ; $7e09: $83
	rst  $38                                         ; $7e0a: $ff
	ld   bc, $ff00                                   ; $7e0b: $01 $00 $ff
	add  b                                           ; $7e0e: $80
	nop                                              ; $7e0f: $00
	add  b                                           ; $7e10: $80
	add  e                                           ; $7e11: $83
	add  b                                           ; $7e12: $80
	cp   a                                           ; $7e13: $bf
	add  b                                           ; $7e14: $80
	add  [hl]                                        ; $7e15: $86
	nop                                              ; $7e16: $00
	nop                                              ; $7e17: $00
	add  e                                           ; $7e18: $83
	rst  $38                                         ; $7e19: $ff
	ld   bc, $ff00                                   ; $7e1a: $01 $00 $ff
	add  b                                           ; $7e1d: $80
	nop                                              ; $7e1e: $00
	add  d                                           ; $7e1f: $82
	add  b                                           ; $7e20: $80
	add  c                                           ; $7e21: $81
	nop                                              ; $7e22: $00
	add  e                                           ; $7e23: $83
	rst  $38                                         ; $7e24: $ff
	ld   bc, $ff00                                   ; $7e25: $01 $00 $ff
	add  a                                           ; $7e28: $87
	nop                                              ; $7e29: $00
	add  e                                           ; $7e2a: $83
	rst  $38                                         ; $7e2b: $ff
	ld   bc, $ff00                                   ; $7e2c: $01 $00 $ff
	add  a                                           ; $7e2f: $87
	nop                                              ; $7e30: $00
	add  e                                           ; $7e31: $83
	rst  $38                                         ; $7e32: $ff
	ld   bc, $ff00                                   ; $7e33: $01 $00 $ff
	add  a                                           ; $7e36: $87
	nop                                              ; $7e37: $00
	add  e                                           ; $7e38: $83
	rst  $38                                         ; $7e39: $ff
	ld   bc, $ff00                                   ; $7e3a: $01 $00 $ff
	add  a                                           ; $7e3d: $87
	nop                                              ; $7e3e: $00
	add  e                                           ; $7e3f: $83
	rst  $38                                         ; $7e40: $ff
	ld   bc, $ff00                                   ; $7e41: $01 $00 $ff
	add  [hl]                                        ; $7e44: $86
	nop                                              ; $7e45: $00
	add  b                                           ; $7e46: $80
	rst  $38                                         ; $7e47: $ff
	adc  h                                           ; $7e48: $8c
	nop                                              ; $7e49: $00
	add  b                                           ; $7e4a: $80
	rst  $38                                         ; $7e4b: $ff
	adc  h                                           ; $7e4c: $8c
	nop                                              ; $7e4d: $00
	add  b                                           ; $7e4e: $80
	rst  $38                                         ; $7e4f: $ff
	adc  h                                           ; $7e50: $8c
	nop                                              ; $7e51: $00
	add  b                                           ; $7e52: $80
	rst  $38                                         ; $7e53: $ff
	adc  h                                           ; $7e54: $8c
	nop                                              ; $7e55: $00
	add  b                                           ; $7e56: $80
	rst  $38                                         ; $7e57: $ff
	adc  h                                           ; $7e58: $8c
	nop                                              ; $7e59: $00
	add  b                                           ; $7e5a: $80
	rst  $38                                         ; $7e5b: $ff
	add  b                                           ; $7e5c: $80
	inc  bc                                          ; $7e5d: $03
	add  d                                           ; $7e5e: $82
	ld   bc, $0382                                   ; $7e5f: $01 $82 $03
	add  d                                           ; $7e62: $82
	nop                                              ; $7e63: $00
	add  b                                           ; $7e64: $80
	rst  $38                                         ; $7e65: $ff
	add  b                                           ; $7e66: $80
	ccf                                              ; $7e67: $3f
	add  b                                           ; $7e68: $80
	and  e                                           ; $7e69: $a3
	add  b                                           ; $7e6a: $80
	cp   a                                           ; $7e6b: $bf
	add  b                                           ; $7e6c: $80
	inc  hl                                          ; $7e6d: $23
	add  d                                           ; $7e6e: $82
	rst  $38                                         ; $7e6f: $ff
	add  b                                           ; $7e70: $80
	nop                                              ; $7e71: $00
	add  b                                           ; $7e72: $80
	rst  $38                                         ; $7e73: $ff
	add  b                                           ; $7e74: $80
	rrca                                             ; $7e75: $0f
	add  b                                           ; $7e76: $80
	nop                                              ; $7e77: $00
	add  b                                           ; $7e78: $80
	rra                                              ; $7e79: $1f
	add  b                                           ; $7e7a: $80
	inc  c                                           ; $7e7b: $0c
	add  d                                           ; $7e7c: $82
	sbc  b                                           ; $7e7d: $98
	add  b                                           ; $7e7e: $80
	nop                                              ; $7e7f: $00
	add  b                                           ; $7e80: $80
	rst  $38                                         ; $7e81: $ff
	add  b                                           ; $7e82: $80
	pop  hl                                          ; $7e83: $e1
	add  b                                           ; $7e84: $80
	ld   bc, $f180                                   ; $7e85: $01 $80 $f1
	add  b                                           ; $7e88: $80
	ld   h, c                                        ; $7e89: $61
	add  d                                           ; $7e8a: $82
	ld   sp, $0080                                   ; $7e8b: $31 $80 $00
	add  b                                           ; $7e8e: $80
	rst  $38                                         ; $7e8f: $ff
	add  b                                           ; $7e90: $80
	cp   a                                           ; $7e91: $bf
	add  b                                           ; $7e92: $80
	add  [hl]                                        ; $7e93: $86
	add  d                                           ; $7e94: $82
	or   [hl]                                        ; $7e95: $b6
	add  d                                           ; $7e96: $82
	and  [hl]                                        ; $7e97: $a6
	add  b                                           ; $7e98: $80
	nop                                              ; $7e99: $00
	add  b                                           ; $7e9a: $80
	rst  $38                                         ; $7e9b: $ff
	add  b                                           ; $7e9c: $80
	ret  nz                                          ; $7e9d: $c0

	add  b                                           ; $7e9e: $80
	nop                                              ; $7e9f: $00
	add  d                                           ; $7ea0: $82
	ld   b, b                                        ; $7ea1: $40
	add  d                                           ; $7ea2: $82
	ret  nz                                          ; $7ea3: $c0

	add  b                                           ; $7ea4: $80
	nop                                              ; $7ea5: $00
	add  b                                           ; $7ea6: $80
	rst  $38                                         ; $7ea7: $ff
	adc  h                                           ; $7ea8: $8c
	nop                                              ; $7ea9: $00
	add  b                                           ; $7eaa: $80
	rst  $38                                         ; $7eab: $ff
	adc  h                                           ; $7eac: $8c
	nop                                              ; $7ead: $00
	add  b                                           ; $7eae: $80
	rst  $38                                         ; $7eaf: $ff
	adc  h                                           ; $7eb0: $8c
	nop                                              ; $7eb1: $00
	add  b                                           ; $7eb2: $80
	rst  $38                                         ; $7eb3: $ff
	adc  h                                           ; $7eb4: $8c
	nop                                              ; $7eb5: $00
	add  b                                           ; $7eb6: $80
	rst  $38                                         ; $7eb7: $ff
	adc  h                                           ; $7eb8: $8c
	nop                                              ; $7eb9: $00
	ld   h, [hl]                                     ; $7eba: $66
	nop                                              ; $7ebb: $00
	nop                                              ; $7ebc: $00
	dec  bc                                          ; $7ebd: $0b
	add  e                                           ; $7ebe: $83
	nop                                              ; $7ebf: $00
	nop                                              ; $7ec0: $00
	ld   bc, $0084                                   ; $7ec1: $01 $84 $00
	nop                                              ; $7ec4: $00
	inc  bc                                          ; $7ec5: $03
	add  h                                           ; $7ec6: $84
	nop                                              ; $7ec7: $00
	nop                                              ; $7ec8: $00
	dec  c                                           ; $7ec9: $0d
	adc  c                                           ; $7eca: $89
	nop                                              ; $7ecb: $00
	inc  bc                                          ; $7ecc: $03
	rrca                                             ; $7ecd: $0f
	nop                                              ; $7ece: $00
	inc  b                                           ; $7ecf: $04
	ld   a, [bc]                                     ; $7ed0: $0a
	add  c                                           ; $7ed1: $81
	nop                                              ; $7ed2: $00
	inc  bc                                          ; $7ed3: $03
	ld   [$0307], sp                                 ; $7ed4: $08 $07 $03
	nop                                              ; $7ed7: $00
	add  b                                           ; $7ed8: $80
	inc  bc                                          ; $7ed9: $03
	add  l                                           ; $7eda: $85
	nop                                              ; $7edb: $00
	nop                                              ; $7edc: $00
	dec  c                                           ; $7edd: $0d
	adc  c                                           ; $7ede: $89
	nop                                              ; $7edf: $00
	inc  bc                                          ; $7ee0: $03
	rrca                                             ; $7ee1: $0f
	nop                                              ; $7ee2: $00
	ld   c, $05                                      ; $7ee3: $0e $05
	add  c                                           ; $7ee5: $81
	nop                                              ; $7ee6: $00
	ld   [bc], a                                     ; $7ee7: $02
	dec  b                                           ; $7ee8: $05
	dec  bc                                          ; $7ee9: $0b
	rlca                                             ; $7eea: $07
	adc  b                                           ; $7eeb: $88
	nop                                              ; $7eec: $00
	nop                                              ; $7eed: $00
	dec  c                                           ; $7eee: $0d
	adc  c                                           ; $7eef: $89
	nop                                              ; $7ef0: $00
	inc  bc                                          ; $7ef1: $03
	rrca                                             ; $7ef2: $0f
	nop                                              ; $7ef3: $00
	ld   c, $05                                      ; $7ef4: $0e $05
	add  c                                           ; $7ef6: $81
	nop                                              ; $7ef7: $00
	ld   bc, $0104                              ; $7ef8: $01 $04 $01
	add  [hl]                                        ; $7efb: $86
	nop                                              ; $7efc: $00
	inc  bc                                          ; $7efd: $03
	dec  bc                                          ; $7efe: $0b
	rlca                                             ; $7eff: $07
	nop                                              ; $7f00: $00
	dec  c                                           ; $7f01: $0d
	adc  c                                           ; $7f02: $89
	nop                                              ; $7f03: $00
	inc  bc                                          ; $7f04: $03
	rrca                                             ; $7f05: $0f
	nop                                              ; $7f06: $00
	inc  b                                           ; $7f07: $04
	dec  bc                                          ; $7f08: $0b
	adc  e                                           ; $7f09: $8b
	nop                                              ; $7f0a: $00
	inc  bc                                          ; $7f0b: $03
	ld   a, [bc]                                     ; $7f0c: $0a
	rlca                                             ; $7f0d: $07
	nop                                              ; $7f0e: $00
	dec  c                                           ; $7f0f: $0d
	adc  c                                           ; $7f10: $89
	nop                                              ; $7f11: $00
	inc  bc                                          ; $7f12: $03
	rrca                                             ; $7f13: $0f
	nop                                              ; $7f14: $00
	ld   b, $09                                      ; $7f15: $06 $09
	adc  e                                           ; $7f17: $8b
	nop                                              ; $7f18: $00
	inc  bc                                          ; $7f19: $03
	add  hl, bc                                      ; $7f1a: $09
	inc  b                                           ; $7f1b: $04
	nop                                              ; $7f1c: $00
	dec  c                                           ; $7f1d: $0d
	adc  c                                           ; $7f1e: $89
	nop                                              ; $7f1f: $00
	inc  bc                                          ; $7f20: $03
	ld   c, $00                                      ; $7f21: $0e $00
	dec  b                                           ; $7f23: $05
	dec  bc                                          ; $7f24: $0b
	adc  e                                           ; $7f25: $8b
	nop                                              ; $7f26: $00
	inc  bc                                          ; $7f27: $03
	ld   a, [bc]                                     ; $7f28: $0a
	rlca                                             ; $7f29: $07
	nop                                              ; $7f2a: $00
	ld   bc, $0085                                   ; $7f2b: $01 $85 $00
	nop                                              ; $7f2e: $00
	inc  c                                           ; $7f2f: $0c
	add  c                                           ; $7f30: $81
	nop                                              ; $7f31: $00
	inc  bc                                          ; $7f32: $03
	ld   c, $00                                      ; $7f33: $0e $00
	rlca                                             ; $7f35: $07
	add  hl, bc                                      ; $7f36: $09
	adc  e                                           ; $7f37: $8b
	nop                                              ; $7f38: $00
	inc  bc                                          ; $7f39: $03
	ld   a, [bc]                                     ; $7f3a: $0a
	rlca                                             ; $7f3b: $07
	inc  bc                                          ; $7f3c: $03
	ld   [bc], a                                     ; $7f3d: $02
	add  l                                           ; $7f3e: $85
	nop                                              ; $7f3f: $00
	nop                                              ; $7f40: $00
	inc  c                                           ; $7f41: $0c
	add  c                                           ; $7f42: $81
	nop                                              ; $7f43: $00
	inc  bc                                          ; $7f44: $03
	ld   c, $00                                      ; $7f45: $0e $00
	inc  b                                           ; $7f47: $04
	ld   a, [bc]                                     ; $7f48: $0a
	adc  e                                           ; $7f49: $8b
	nop                                              ; $7f4a: $00
	inc  bc                                          ; $7f4b: $03
	ld   a, [bc]                                     ; $7f4c: $0a
	inc  b                                           ; $7f4d: $04
	nop                                              ; $7f4e: $00
	ld   c, $89                                      ; $7f4f: $0e $89
	nop                                              ; $7f51: $00
	inc  bc                                          ; $7f52: $03
	ld   c, $03                                      ; $7f53: $0e $03
	inc  b                                           ; $7f55: $04
	add  hl, bc                                      ; $7f56: $09
	adc  e                                           ; $7f57: $8b
	nop                                              ; $7f58: $00
	inc  bc                                          ; $7f59: $03
	ld   a, [bc]                                     ; $7f5a: $0a
	inc  b                                           ; $7f5b: $04
	nop                                              ; $7f5c: $00
	ld   c, $89                                      ; $7f5d: $0e $89
	nop                                              ; $7f5f: $00
	inc  bc                                          ; $7f60: $03
	dec  c                                           ; $7f61: $0d
	nop                                              ; $7f62: $00
	rlca                                             ; $7f63: $07
	ld   a, [bc]                                     ; $7f64: $0a
	adc  e                                           ; $7f65: $8b
	nop                                              ; $7f66: $00
	inc  bc                                          ; $7f67: $03
	add  hl, bc                                      ; $7f68: $09
	rlca                                             ; $7f69: $07
	nop                                              ; $7f6a: $00
	ld   c, $89                                      ; $7f6b: $0e $89
	nop                                              ; $7f6d: $00
	inc  bc                                          ; $7f6e: $03
	dec  c                                           ; $7f6f: $0d
	nop                                              ; $7f70: $00
	rlca                                             ; $7f71: $07
	ld   a, [bc]                                     ; $7f72: $0a
	adc  e                                           ; $7f73: $8b
	nop                                              ; $7f74: $00
	inc  bc                                          ; $7f75: $03
	dec  bc                                          ; $7f76: $0b
	inc  b                                           ; $7f77: $04
	nop                                              ; $7f78: $00
	rrca                                             ; $7f79: $0f
	adc  c                                           ; $7f7a: $89
	nop                                              ; $7f7b: $00
	inc  bc                                          ; $7f7c: $03
	dec  c                                           ; $7f7d: $0d
	nop                                              ; $7f7e: $00
	rlca                                             ; $7f7f: $07
	ld   a, [bc]                                     ; $7f80: $0a
	adc  e                                           ; $7f81: $8b
	nop                                              ; $7f82: $00
	inc  bc                                          ; $7f83: $03
	add  hl, bc                                      ; $7f84: $09
	ld   b, $00                                      ; $7f85: $06 $00
	rrca                                             ; $7f87: $0f
	add  l                                           ; $7f88: $85
	nop                                              ; $7f89: $00
	nop                                              ; $7f8a: $00
	inc  c                                           ; $7f8b: $0c
	add  c                                           ; $7f8c: $81
	nop                                              ; $7f8d: $00
	inc  bc                                          ; $7f8e: $03
	ld   bc, $0700                                   ; $7f8f: $01 $00 $07
	ld   a, [bc]                                     ; $7f92: $0a
	adc  e                                           ; $7f93: $8b
	nop                                              ; $7f94: $00
	inc  bc                                          ; $7f95: $03
	dec  bc                                          ; $7f96: $0b
	inc  b                                           ; $7f97: $04
	nop                                              ; $7f98: $00
	rrca                                             ; $7f99: $0f
	add  l                                           ; $7f9a: $85
	nop                                              ; $7f9b: $00
	nop                                              ; $7f9c: $00
	inc  c                                           ; $7f9d: $0c
	add  c                                           ; $7f9e: $81
	nop                                              ; $7f9f: $00
	inc  bc                                          ; $7fa0: $03
	ld   bc, $0700                                   ; $7fa1: $01 $00 $07
	ld   a, [bc]                                     ; $7fa4: $0a
	adc  e                                           ; $7fa5: $8b
	nop                                              ; $7fa6: $00
	inc  bc                                          ; $7fa7: $03
	dec  bc                                          ; $7fa8: $0b
	inc  b                                           ; $7fa9: $04
	nop                                              ; $7faa: $00
	rrca                                             ; $7fab: $0f
	add  l                                           ; $7fac: $85
	nop                                              ; $7fad: $00
	nop                                              ; $7fae: $00
	inc  c                                           ; $7faf: $0c
	add  c                                           ; $7fb0: $81
	nop                                              ; $7fb1: $00
	inc  bc                                          ; $7fb2: $03
	ld   bc, $0700                                   ; $7fb3: $01 $00 $07
	ld   a, [bc]                                     ; $7fb6: $0a
	adc  e                                           ; $7fb7: $8b
	nop                                              ; $7fb8: $00
	inc  bc                                          ; $7fb9: $03
	dec  bc                                          ; $7fba: $0b
	inc  b                                           ; $7fbb: $04
	nop                                              ; $7fbc: $00
	rrca                                             ; $7fbd: $0f
	add  l                                           ; $7fbe: $85
	nop                                              ; $7fbf: $00
	nop                                              ; $7fc0: $00
	inc  c                                           ; $7fc1: $0c
	add  c                                           ; $7fc2: $81
	nop                                              ; $7fc3: $00
	inc  bc                                          ; $7fc4: $03
	ld   bc, $0700                                   ; $7fc5: $01 $00 $07
	dec  bc                                          ; $7fc8: $0b
	adc  e                                           ; $7fc9: $8b
	nop                                              ; $7fca: $00
	inc  bc                                          ; $7fcb: $03
	ld   a, [bc]                                     ; $7fcc: $0a
	inc  b                                           ; $7fcd: $04
	nop                                              ; $7fce: $00
	inc  bc                                          ; $7fcf: $03
	adc  c                                           ; $7fd0: $89
	nop                                              ; $7fd1: $00
	nop                                              ; $7fd2: $00
	ld   bc, $0086                                   ; $7fd3: $01 $86 $00
	nop                                              ; $7fd6: $00
	inc  bc                                          ; $7fd7: $03
	add  c                                           ; $7fd8: $81
	nop                                              ; $7fd9: $00
	nop                                              ; $7fda: $00
	ld   bc, $0084                                   ; $7fdb: $01 $84 $00
	nop                                              ; $7fde: $00
	inc  bc                                          ; $7fdf: $03
	rst  $38                                         ; $7fe0: $ff
	nop                                              ; $7fe1: $00
	rst  $38                                         ; $7fe2: $ff
	nop                                              ; $7fe3: $00
	rst  $38                                         ; $7fe4: $ff
	nop                                              ; $7fe5: $00
	add  $00                                         ; $7fe6: $c6 $00
	rst  $38                                         ; $7fe8: $ff
	ld   a, a                                        ; $7fe9: $7f
	scf                                              ; $7fea: $37
	ld   a, [de]                                     ; $7feb: $1a
	inc  e                                           ; $7fec: $1c
	ld   sp, $38f1                                   ; $7fed: $31 $f1 $38
	rst  $38                                         ; $7ff0: $ff
	ld   a, a                                        ; $7ff1: $7f
	ld   [hl], c                                     ; $7ff2: $71
	ld   l, $ab                                      ; $7ff3: $2e $ab
	dec  h                                           ; $7ff5: $25
	ld   [$ff1c], a                                  ; $7ff6: $ea $1c $ff
	ld   a, a                                        ; $7ff9: $7f
	sub  h                                           ; $7ffa: $94
	ld   e, d                                        ; $7ffb: $5a
	xor  a                                           ; $7ffc: $af
	ld   e, c                                        ; $7ffd: $59
	dec  bc                                          ; $7ffe: $0b
	ld   b, l                                        ; $7fff: $45
