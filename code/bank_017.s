; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $017", ROMX[$4000], BANK[$17]

	pop  af                                          ; $4000: $f1
	ld   bc, $00ff                                   ; $4001: $01 $ff $00
	rst  $38                                         ; $4004: $ff
	nop                                              ; $4005: $00
	rst  $38                                         ; $4006: $ff
	nop                                              ; $4007: $00
	rst  $38                                         ; $4008: $ff
	nop                                              ; $4009: $00
	rst  $38                                         ; $400a: $ff
	nop                                              ; $400b: $00
	rst  $38                                         ; $400c: $ff
	nop                                              ; $400d: $00
	rst  $38                                         ; $400e: $ff
	nop                                              ; $400f: $00
	rst  $38                                         ; $4010: $ff
	nop                                              ; $4011: $00
	rst  $38                                         ; $4012: $ff
	nop                                              ; $4013: $00
	or   $00                                         ; $4014: $f6 $00
	ld   bc, $00ff                                   ; $4016: $01 $ff $00
	add  d                                           ; $4019: $82
	rst  $38                                         ; $401a: $ff
	ld   bc, $ff00                                   ; $401b: $01 $00 $ff
	add  c                                           ; $401e: $81
	nop                                              ; $401f: $00
	ld   b, $3c                                      ; $4020: $06 $3c
	nop                                              ; $4022: $00
	ld   b, d                                        ; $4023: $42
	nop                                              ; $4024: $00
	ld   a, [hl]                                     ; $4025: $7e
	rst  $38                                         ; $4026: $ff
	nop                                              ; $4027: $00
	add  d                                           ; $4028: $82
	rst  $38                                         ; $4029: $ff
	ld   bc, $ff00                                   ; $402a: $01 $00 $ff
	add  c                                           ; $402d: $81
	nop                                              ; $402e: $00
	ld   b, $18                                      ; $402f: $06 $18
	nop                                              ; $4031: $00
	jr   nz, jr_017_4034                             ; $4032: $20 $00

jr_017_4034:
	jr   c, @+$01                                    ; $4034: $38 $ff

	nop                                              ; $4036: $00
	add  d                                           ; $4037: $82
	rst  $38                                         ; $4038: $ff
	ld   bc, $ff00                                   ; $4039: $01 $00 $ff
	add  c                                           ; $403c: $81
	nop                                              ; $403d: $00
	ld   b, $3c                                      ; $403e: $06 $3c
	nop                                              ; $4040: $00
	ld   b, d                                        ; $4041: $42
	nop                                              ; $4042: $00

jr_017_4043:
	ld   a, [hl]                                     ; $4043: $7e
	rst  $38                                         ; $4044: $ff
	nop                                              ; $4045: $00
	add  d                                           ; $4046: $82
	rst  $38                                         ; $4047: $ff
	ld   bc, $ff00                                   ; $4048: $01 $00 $ff
	add  c                                           ; $404b: $81
	nop                                              ; $404c: $00
	ld   b, $3c                                      ; $404d: $06 $3c
	nop                                              ; $404f: $00
	ld   b, d                                        ; $4050: $42
	nop                                              ; $4051: $00
	ld   a, [hl]                                     ; $4052: $7e

jr_017_4053:
	rst  $38                                         ; $4053: $ff
	nop                                              ; $4054: $00
	add  d                                           ; $4055: $82
	rst  $38                                         ; $4056: $ff
	ld   bc, $ff00                                   ; $4057: $01 $00 $ff
	add  c                                           ; $405a: $81
	nop                                              ; $405b: $00
	nop                                              ; $405c: $00

jr_017_405d:
	ld   h, [hl]                                     ; $405d: $66
	add  c                                           ; $405e: $81
	nop                                              ; $405f: $00
	ld   [bc], a                                     ; $4060: $02
	ld   h, [hl]                                     ; $4061: $66
	rst  $38                                         ; $4062: $ff
	nop                                              ; $4063: $00
	add  d                                           ; $4064: $82
	rst  $38                                         ; $4065: $ff
	ld   bc, $ff00                                   ; $4066: $01 $00 $ff
	add  c                                           ; $4069: $81
	nop                                              ; $406a: $00
	nop                                              ; $406b: $00
	ld   a, [hl]                                     ; $406c: $7e
	add  c                                           ; $406d: $81
	nop                                              ; $406e: $00
	ld   [bc], a                                     ; $406f: $02
	ld   a, [hl]                                     ; $4070: $7e
	rst  $38                                         ; $4071: $ff
	nop                                              ; $4072: $00
	add  d                                           ; $4073: $82
	rst  $38                                         ; $4074: $ff
	ld   bc, $ff00                                   ; $4075: $01 $00 $ff
	add  c                                           ; $4078: $81
	nop                                              ; $4079: $00
	ld   b, $3c                                      ; $407a: $06 $3c
	nop                                              ; $407c: $00
	ld   b, d                                        ; $407d: $42
	nop                                              ; $407e: $00
	ld   a, [hl]                                     ; $407f: $7e
	rst  $38                                         ; $4080: $ff

jr_017_4081:
	nop                                              ; $4081: $00
	add  d                                           ; $4082: $82
	rst  $38                                         ; $4083: $ff
	ld   bc, $ff00                                   ; $4084: $01 $00 $ff
	add  c                                           ; $4087: $81
	nop                                              ; $4088: $00
	nop                                              ; $4089: $00
	ld   a, [hl]                                     ; $408a: $7e
	add  c                                           ; $408b: $81
	nop                                              ; $408c: $00
	ld   [bc], a                                     ; $408d: $02
	ld   a, [hl]                                     ; $408e: $7e

jr_017_408f:
	rst  $38                                         ; $408f: $ff
	nop                                              ; $4090: $00
	add  d                                           ; $4091: $82
	rst  $38                                         ; $4092: $ff
	ld   bc, $ff00                                   ; $4093: $01 $00 $ff
	add  c                                           ; $4096: $81
	nop                                              ; $4097: $00
	ld   b, $3c                                      ; $4098: $06 $3c
	nop                                              ; $409a: $00

jr_017_409b:
	ld   b, d                                        ; $409b: $42
	nop                                              ; $409c: $00
	ld   a, [hl]                                     ; $409d: $7e
	rst  $38                                         ; $409e: $ff
	nop                                              ; $409f: $00
	add  d                                           ; $40a0: $82
	rst  $38                                         ; $40a1: $ff
	ld   bc, $ff00                                   ; $40a2: $01 $00 $ff
	add  c                                           ; $40a5: $81
	nop                                              ; $40a6: $00
	inc  b                                           ; $40a7: $04
	inc  a                                           ; $40a8: $3c
	nop                                              ; $40a9: $00
	ld   b, d                                        ; $40aa: $42
	nop                                              ; $40ab: $00
	ld   a, [hl]                                     ; $40ac: $7e
	db   $dd                                         ; $40ad: $dd
	nop                                              ; $40ae: $00
	nop                                              ; $40af: $00
	ld   h, [hl]                                     ; $40b0: $66
	adc  l                                           ; $40b1: $8d
	nop                                              ; $40b2: $00
	ld   [bc], a                                     ; $40b3: $02
	ld   e, [hl]                                     ; $40b4: $5e
	nop                                              ; $40b5: $00
	jr   nz, jr_017_4043                             ; $40b6: $20 $8b

	nop                                              ; $40b8: $00
	nop                                              ; $40b9: $00
	ld   a, [hl]                                     ; $40ba: $7e
	add  c                                           ; $40bb: $81
	nop                                              ; $40bc: $00
	inc  c                                           ; $40bd: $0c
	ld   h, b                                        ; $40be: $60
	nop                                              ; $40bf: $00
	ld   [$1200], sp                                 ; $40c0: $08 $00 $12
	nop                                              ; $40c3: $00
	inc  h                                           ; $40c4: $24
	nop                                              ; $40c5: $00
	ld   c, b                                        ; $40c6: $48
	nop                                              ; $40c7: $00
	stop                                             ; $40c8: $10 $00
	ld   b, $81                                      ; $40ca: $06 $81
	nop                                              ; $40cc: $00
	ld   [bc], a                                     ; $40cd: $02
	ld   h, b                                        ; $40ce: $60
	nop                                              ; $40cf: $00
	jr   jr_017_4053                                 ; $40d0: $18 $81

	nop                                              ; $40d2: $00
	ld   [bc], a                                     ; $40d3: $02
	jr   jr_017_40d6                                 ; $40d4: $18 $00

jr_017_40d6:
	ld   h, b                                        ; $40d6: $60
	add  a                                           ; $40d7: $87
	nop                                              ; $40d8: $00
	nop                                              ; $40d9: $00
	jr   jr_017_405d                                 ; $40da: $18 $81

	nop                                              ; $40dc: $00
	nop                                              ; $40dd: $00
	ld   a, b                                        ; $40de: $78
	add  e                                           ; $40df: $83
	nop                                              ; $40e0: $00
	nop                                              ; $40e1: $00
	ld   h, [hl]                                     ; $40e2: $66
	add  e                                           ; $40e3: $83
	nop                                              ; $40e4: $00
	inc  b                                           ; $40e5: $04
	inc  e                                           ; $40e6: $1c
	nop                                              ; $40e7: $00
	ld   [bc], a                                     ; $40e8: $02
	nop                                              ; $40e9: $00
	ld   a, b                                        ; $40ea: $78
	add  c                                           ; $40eb: $81
	nop                                              ; $40ec: $00
	nop                                              ; $40ed: $00
	ld   h, b                                        ; $40ee: $60
	add  c                                           ; $40ef: $81
	nop                                              ; $40f0: $00
	nop                                              ; $40f1: $00
	ld   b, $81                                      ; $40f2: $06 $81
	nop                                              ; $40f4: $00
	inc  b                                           ; $40f5: $04
	inc  e                                           ; $40f6: $1c
	nop                                              ; $40f7: $00
	ld   [bc], a                                     ; $40f8: $02
	nop                                              ; $40f9: $00
	jr   jr_017_4081                                 ; $40fa: $18 $85

	nop                                              ; $40fc: $00
	ld   b, $60                                      ; $40fd: $06 $60
	nop                                              ; $40ff: $00
	ld   [$0200], sp                                 ; $4100: $08 $00 $02
	nop                                              ; $4103: $00
	inc  d                                           ; $4104: $14
	add  l                                           ; $4105: $85
	nop                                              ; $4106: $00
	nop                                              ; $4107: $00
	ld   a, [hl]                                     ; $4108: $7e
	add  e                                           ; $4109: $83
	nop                                              ; $410a: $00
	nop                                              ; $410b: $00
	jr   jr_017_408f                                 ; $410c: $18 $81

	nop                                              ; $410e: $00
	nop                                              ; $410f: $00
	jr   jr_017_409b                                 ; $4110: $18 $89

	nop                                              ; $4112: $00

jr_017_4113:
	inc  b                                           ; $4113: $04
	jr   jr_017_4116                                 ; $4114: $18 $00

jr_017_4116:
	ld   b, b                                        ; $4116: $40
	nop                                              ; $4117: $00
	jr   c, jr_017_409b                              ; $4118: $38 $81

	nop                                              ; $411a: $00
	ld   [bc], a                                     ; $411b: $02
	ld   h, b                                        ; $411c: $60
	nop                                              ; $411d: $00
	ld   h, [hl]                                     ; $411e: $66
	db   $dd                                         ; $411f: $dd
	nop                                              ; $4120: $00
	inc  b                                           ; $4121: $04
	ld   a, [hl]                                     ; $4122: $7e
	nop                                              ; $4123: $00
	ld   b, d                                        ; $4124: $42
	nop                                              ; $4125: $00
	inc  a                                           ; $4126: $3c
	add  d                                           ; $4127: $82
	nop                                              ; $4128: $00
	ld   bc, $00ff                                   ; $4129: $01 $ff $00
	add  c                                           ; $412c: $81
	rst  $38                                         ; $412d: $ff
	ld   [bc], a                                     ; $412e: $02
	nop                                              ; $412f: $00
	rst  $38                                         ; $4130: $ff
	add  c                                           ; $4131: $81
	add  c                                           ; $4132: $81
	nop                                              ; $4133: $00
	nop                                              ; $4134: $00
	ld   a, [hl]                                     ; $4135: $7e
	add  d                                           ; $4136: $82
	nop                                              ; $4137: $00
	ld   bc, $00ff                                   ; $4138: $01 $ff $00
	add  c                                           ; $413b: $81
	rst  $38                                         ; $413c: $ff
	ld   [bc], a                                     ; $413d: $02
	nop                                              ; $413e: $00
	rst  $38                                         ; $413f: $ff
	add  c                                           ; $4140: $81
	add  c                                           ; $4141: $81
	nop                                              ; $4142: $00
	nop                                              ; $4143: $00
	ld   a, [hl]                                     ; $4144: $7e
	add  d                                           ; $4145: $82
	nop                                              ; $4146: $00
	ld   bc, $00ff                                   ; $4147: $01 $ff $00
	add  c                                           ; $414a: $81
	rst  $38                                         ; $414b: $ff
	ld   b, $00                                      ; $414c: $06 $00
	rst  $38                                         ; $414e: $ff
	add  c                                           ; $414f: $81
	nop                                              ; $4150: $00
	ld   b, d                                        ; $4151: $42
	nop                                              ; $4152: $00
	inc  a                                           ; $4153: $3c
	add  d                                           ; $4154: $82
	nop                                              ; $4155: $00
	ld   bc, $00ff                                   ; $4156: $01 $ff $00
	add  c                                           ; $4159: $81
	rst  $38                                         ; $415a: $ff
	ld   [bc], a                                     ; $415b: $02
	nop                                              ; $415c: $00
	rst  $38                                         ; $415d: $ff
	ld   sp, hl                                      ; $415e: $f9
	add  c                                           ; $415f: $81
	nop                                              ; $4160: $00
	nop                                              ; $4161: $00
	ld   b, $82                                      ; $4162: $06 $82
	nop                                              ; $4164: $00
	ld   bc, $00ff                                   ; $4165: $01 $ff $00
	add  c                                           ; $4168: $81
	rst  $38                                         ; $4169: $ff
	ld   b, $00                                      ; $416a: $06 $00
	rst  $38                                         ; $416c: $ff
	add  c                                           ; $416d: $81
	nop                                              ; $416e: $00
	ld   b, d                                        ; $416f: $42
	nop                                              ; $4170: $00
	inc  a                                           ; $4171: $3c
	add  d                                           ; $4172: $82
	nop                                              ; $4173: $00
	ld   bc, $00ff                                   ; $4174: $01 $ff $00
	add  c                                           ; $4177: $81
	rst  $38                                         ; $4178: $ff
	ld   b, $00                                      ; $4179: $06 $00
	rst  $38                                         ; $417b: $ff
	add  c                                           ; $417c: $81
	nop                                              ; $417d: $00
	ld   b, d                                        ; $417e: $42
	nop                                              ; $417f: $00
	inc  a                                           ; $4180: $3c
	add  d                                           ; $4181: $82
	nop                                              ; $4182: $00
	ld   bc, $00ff                                   ; $4183: $01 $ff $00
	add  c                                           ; $4186: $81
	rst  $38                                         ; $4187: $ff
	ld   [bc], a                                     ; $4188: $02
	nop                                              ; $4189: $00
	rst  $38                                         ; $418a: $ff
	rst  $20                                         ; $418b: $e7
	add  c                                           ; $418c: $81
	nop                                              ; $418d: $00
	nop                                              ; $418e: $00
	jr   jr_017_4113                                 ; $418f: $18 $82

	nop                                              ; $4191: $00
	ld   bc, $00ff                                   ; $4192: $01 $ff $00
	add  c                                           ; $4195: $81
	rst  $38                                         ; $4196: $ff
	ld   b, $00                                      ; $4197: $06 $00
	rst  $38                                         ; $4199: $ff
	add  c                                           ; $419a: $81
	nop                                              ; $419b: $00
	ld   b, d                                        ; $419c: $42
	nop                                              ; $419d: $00
	inc  a                                           ; $419e: $3c
	add  d                                           ; $419f: $82
	nop                                              ; $41a0: $00
	ld   bc, $00ff                                   ; $41a1: $01 $ff $00
	add  c                                           ; $41a4: $81
	rst  $38                                         ; $41a5: $ff
	ld   b, $00                                      ; $41a6: $06 $00
	rst  $38                                         ; $41a8: $ff
	add  c                                           ; $41a9: $81
	nop                                              ; $41aa: $00
	ld   b, d                                        ; $41ab: $42
	nop                                              ; $41ac: $00
	inc  a                                           ; $41ad: $3c
	add  d                                           ; $41ae: $82
	nop                                              ; $41af: $00
	ld   bc, $00ff                                   ; $41b0: $01 $ff $00
	add  c                                           ; $41b3: $81
	rst  $38                                         ; $41b4: $ff
	nop                                              ; $41b5: $00
	nop                                              ; $41b6: $00
	add  b                                           ; $41b7: $80
	rst  $38                                         ; $41b8: $ff
	db   $dd                                         ; $41b9: $dd
	nop                                              ; $41ba: $00
	dec  bc                                          ; $41bb: $0b
	xor  c                                           ; $41bc: $a9
	cp   b                                           ; $41bd: $b8
	or   $e0                                         ; $41be: $f6 $e0
	sbc  b                                           ; $41c0: $98
	add  b                                           ; $41c1: $80
	ld   h, e                                        ; $41c2: $63
	nop                                              ; $41c3: $00
	sbc  $82                                         ; $41c4: $de $82
	xor  $de                                         ; $41c6: $ee $de
	add  b                                           ; $41c8: $80
	cp   $80                                         ; $41c9: $fe $80
	ld   a, [hl]                                     ; $41cb: $7e
	ld   a, [bc]                                     ; $41cc: $0a
	jp   hl                                          ; $41cd: $e9


	ld   bc, $0006                                   ; $41ce: $01 $06 $00
	jr   nz, jr_017_41d3                             ; $41d1: $20 $00

jr_017_41d3:
	jr   jr_017_41d5                                 ; $41d3: $18 $00

jr_017_41d5:
	rra                                              ; $41d5: $1f
	add  hl, de                                      ; $41d6: $19
	dec  e                                           ; $41d7: $1d
	add  c                                           ; $41d8: $81
	rra                                              ; $41d9: $1f
	dec  b                                           ; $41da: $05
	ld   e, $1f                                      ; $41db: $1e $1f
	db   $10                                         ; $41dd: $10
	ret  c                                           ; $41de: $d8

	db   $fc                                         ; $41df: $fc
	ldh  a, [$80]                                    ; $41e0: $f0 $80
	ret  nc                                          ; $41e2: $d0

	inc  bc                                          ; $41e3: $03
	pop  de                                          ; $41e4: $d1
	ret  nc                                          ; $41e5: $d0

	or   $f8                                         ; $41e6: $f6 $f8
	add  d                                           ; $41e8: $82
	sbc  $18                                         ; $41e9: $de $18
	ld   [$3cff], sp                                 ; $41eb: $08 $ff $3c
	nop                                              ; $41ee: $00
	ld   b, h                                        ; $41ef: $44
	nop                                              ; $41f0: $00
	sub  c                                           ; $41f1: $91
	nop                                              ; $41f2: $00
	ld   d, $00                                      ; $41f3: $16 $00
	ld   [hl], e                                     ; $41f5: $73
	nop                                              ; $41f6: $00
	dec  b                                           ; $41f7: $05
	nop                                              ; $41f8: $00
	ld   b, $00                                      ; $41f9: $06 $00
	ld   c, c                                        ; $41fb: $49
	nop                                              ; $41fc: $00
	cp   [hl]                                        ; $41fd: $be
	nop                                              ; $41fe: $00
	rlca                                             ; $41ff: $07
	nop                                              ; $4200: $00
	sbc  l                                           ; $4201: $9d
	ld   bc, $81e2                                   ; $4202: $01 $e2 $81
	nop                                              ; $4205: $00
	rlca                                             ; $4206: $07
	ldh  a, [rP1]                                    ; $4207: $f0 $00

jr_017_4209:
	ld   b, b                                        ; $4209: $40
	nop                                              ; $420a: $00
	and  b                                           ; $420b: $a0
	nop                                              ; $420c: $00

Jump_017_420d:
	jp   nc, $803c                                   ; $420d: $d2 $3c $80

	db   $fc                                         ; $4210: $fc
	ld   [hl+], a                                    ; $4211: $22
	cp   [hl]                                        ; $4212: $be
	cp   $13                                         ; $4213: $fe $13
	rst  $30                                         ; $4215: $f7
	rst  JumpTable                                         ; $4216: $df
	ei                                               ; $4217: $fb
	ld   a, $fe                                      ; $4218: $3e $fe
	ld   l, [hl]                                     ; $421a: $6e
	rst  $38                                         ; $421b: $ff
	jp   c, $eaff                                    ; $421c: $da $ff $ea

	nop                                              ; $421f: $00
	inc  h                                           ; $4220: $24
	nop                                              ; $4221: $00
	ld   [$5400], sp                                 ; $4222: $08 $00 $54
	nop                                              ; $4225: $00
	jr   nz, jr_017_4228                             ; $4226: $20 $00

jr_017_4228:
	ret  nz                                          ; $4228: $c0

	nop                                              ; $4229: $00
	add  b                                           ; $422a: $80
	nop                                              ; $422b: $00
	add  b                                           ; $422c: $80

jr_017_422d:
	ldh  a, [$7f]                                    ; $422d: $f0 $7f
	nop                                              ; $422f: $00
	ld   b, $00                                      ; $4230: $06 $00
	add  hl, bc                                      ; $4232: $09
	nop                                              ; $4233: $00
	ld   b, $83                                      ; $4234: $06 $83
	nop                                              ; $4236: $00
	dec  d                                           ; $4237: $15
	ld   bc, $8200                                   ; $4238: $01 $00 $82
	jr   nc, jr_017_428a                             ; $423b: $30 $4d

	nop                                              ; $423d: $00
	ld   b, [hl]                                     ; $423e: $46
	nop                                              ; $423f: $00
	adc  b                                           ; $4240: $88
	ld   bc, $0011                                   ; $4241: $01 $11 $00
	ld   h, h                                        ; $4244: $64
	nop                                              ; $4245: $00
	add  $00                                         ; $4246: $c6 $00
	add  l                                           ; $4248: $85
	nop                                              ; $4249: $00
	jr   jr_017_424c                                 ; $424a: $18 $00

jr_017_424c:
	rra                                              ; $424c: $1f
	nop                                              ; $424d: $00
	add  h                                           ; $424e: $84
	add  b                                           ; $424f: $80
	nop                                              ; $4250: $00
	ld   b, b                                        ; $4251: $40
	add  b                                           ; $4252: $80
	ret  nz                                          ; $4253: $c0

	dec  b                                           ; $4254: $05
	ld   b, b                                        ; $4255: $40
	nop                                              ; $4256: $00
	ccf                                              ; $4257: $3f
	cp   a                                           ; $4258: $bf
	ccf                                              ; $4259: $3f
	ld   b, b                                        ; $425a: $40
	add  e                                           ; $425b: $83
	rst  $38                                         ; $425c: $ff
	add  d                                           ; $425d: $82
	nop                                              ; $425e: $00
	ld   d, $34                                      ; $425f: $16 $34
	ld   a, $3f                                      ; $4261: $3e $3f
	inc  a                                           ; $4263: $3c
	add  hl, bc                                      ; $4264: $09
	ld   a, $ed                                      ; $4265: $3e $ed
	ldh  a, [$f5]                                    ; $4267: $f0 $f5
	ldh  a, [$e8]                                    ; $4269: $f0 $e8
	ldh  [$32], a                                    ; $426b: $e0 $32
	nop                                              ; $426d: $00
	inc  b                                           ; $426e: $04
	nop                                              ; $426f: $00
	ld   c, b                                        ; $4270: $48
	nop                                              ; $4271: $00
	ldh  a, [rP1]                                    ; $4272: $f0 $00
	or   b                                           ; $4274: $b0
	db   $10                                         ; $4275: $10
	scf                                              ; $4276: $37
	add  c                                           ; $4277: $81
	rlca                                             ; $4278: $07
	add  b                                           ; $4279: $80
	inc  bc                                          ; $427a: $03
	ld   [bc], a                                     ; $427b: $02
	ld   [$0700], sp                                 ; $427c: $08 $00 $07
	add  c                                           ; $427f: $81

Jump_017_4280:
	nop                                              ; $4280: $00
	inc  b                                           ; $4281: $04

Jump_017_4282:
	jr   nz, @+$42                                   ; $4282: $20 $40

	rra                                              ; $4284: $1f
	ld   h, b                                        ; $4285: $60
	jr   nc, jr_017_4209                             ; $4286: $30 $81

	rlca                                             ; $4288: $07
	rra                                              ; $4289: $1f

jr_017_428a:
	ld   [bc], a                                     ; $428a: $02
	rlca                                             ; $428b: $07
	jr   z, jr_017_4291                              ; $428c: $28 $03

	ret  nz                                          ; $428e: $c0

	inc  bc                                          ; $428f: $03
	nop                                              ; $4290: $00

jr_017_4291:
	inc  bc                                          ; $4291: $03
	inc  c                                           ; $4292: $0c
	rlca                                             ; $4293: $07
	ld   hl, sp+$0f                                  ; $4294: $f8 $0f
	inc  b                                           ; $4296: $04
	db   $fc                                         ; $4297: $fc
	db   $fd                                         ; $4298: $fd
	cp   $80                                         ; $4299: $fe $80
	cp   $3e                                         ; $429b: $fe $3e
	cp   $3f                                         ; $429d: $fe $3f
	rst  $38                                         ; $429f: $ff
	ccf                                              ; $42a0: $3f
	rst  $38                                         ; $42a1: $ff
	ccf                                              ; $42a2: $3f
	rst  $38                                         ; $42a3: $ff
	ccf                                              ; $42a4: $3f
	rst  $38                                         ; $42a5: $ff
	ld   e, a                                        ; $42a6: $5f
	nop                                              ; $42a7: $00
	call c, $8000                                    ; $42a8: $dc $00 $80
	jr   jr_017_422d                                 ; $42ab: $18 $80

	ld   [$b408], sp                                 ; $42ad: $08 $08 $b4
	nop                                              ; $42b0: $00
	ld   de, $f700                                   ; $42b1: $11 $00 $f7
	sub  c                                           ; $42b4: $91
	cp   e                                           ; $42b5: $bb
	rst  $38                                         ; $42b6: $ff
	inc  h                                           ; $42b7: $24
	add  c                                           ; $42b8: $81
	ld   a, [hl]                                     ; $42b9: $7e
	nop                                              ; $42ba: $00
	ld   [hl], b                                     ; $42bb: $70
	add  e                                           ; $42bc: $83
	ld   a, [hl]                                     ; $42bd: $7e

jr_017_42be:
	add  d                                           ; $42be: $82
	cp   $80                                         ; $42bf: $fe $80
	rst  $38                                         ; $42c1: $ff
	inc  b                                           ; $42c2: $04
	call z, $1e1f                                    ; $42c3: $cc $1f $1e
	rra                                              ; $42c6: $1f
	cpl                                              ; $42c7: $2f
	add  e                                           ; $42c8: $83
	rrca                                             ; $42c9: $0f
	ld   [$1f3f], sp                                 ; $42ca: $08 $3f $1f
	sbc  a                                           ; $42cd: $9f
	rra                                              ; $42ce: $1f
	rst  $38                                         ; $42cf: $ff
	cp   a                                           ; $42d0: $bf
	ld   [bc], a                                     ; $42d1: $02
	rst  $38                                         ; $42d2: $ff
	ld   bc, $fe81                                   ; $42d3: $01 $81 $fe
	nop                                              ; $42d6: $00
	sub  $83                                         ; $42d7: $d6 $83
	sbc  $80                                         ; $42d9: $de $80
	cp   $80                                         ; $42db: $fe $80
	sbc  $0a                                         ; $42dd: $de $0a
	inc  sp                                          ; $42df: $33
	add  b                                           ; $42e0: $80
	and  e                                           ; $42e1: $a3
	nop                                              ; $42e2: $00
	ld   bc, $0100                                   ; $42e3: $01 $00 $01
	nop                                              ; $42e6: $00
	ld   de, $0e00                                   ; $42e7: $11 $00 $0e
	add  c                                           ; $42ea: $81
	jr   nz, jr_017_4337                             ; $42eb: $20 $4a

	daa                                              ; $42ed: $27
	jr   nz, jr_017_42be                             ; $42ee: $20 $ce

	nop                                              ; $42f0: $00
	jr   nz, jr_017_42f3                             ; $42f1: $20 $00

jr_017_42f3:
	ret  nz                                          ; $42f3: $c0

	nop                                              ; $42f4: $00
	jr   nc, jr_017_42f7                             ; $42f5: $30 $00

jr_017_42f7:
	ret  nz                                          ; $42f7: $c0

	nop                                              ; $42f8: $00
	jr   nc, jr_017_42fb                             ; $42f9: $30 $00

jr_017_42fb:
	ld   [$3531], a                                  ; $42fb: $ea $31 $35
	ei                                               ; $42fe: $fb
	ld   d, h                                        ; $42ff: $54
	ldh  [hScriptOpcodeParams], a                                    ; $4300: $e0 $a0
	ldh  [hScriptOpcodeParams], a                                    ; $4302: $e0 $a0
	ldh  [$e1], a                                    ; $4304: $e0 $e1
	and  b                                           ; $4306: $a0
	ret  z                                           ; $4307: $c8

	ldh  a, [$b6]                                    ; $4308: $f0 $b6
	ld   sp, hl                                      ; $430a: $f9
	add  hl, hl                                      ; $430b: $29
	rst  $38                                         ; $430c: $ff
	ld   l, a                                        ; $430d: $6f
	rst  $38                                         ; $430e: $ff
	jr   jr_017_4371                                 ; $430f: $18 $60

	ld   a, b                                        ; $4311: $78
	ld   b, b                                        ; $4312: $40
	ld   b, c                                        ; $4313: $41
	ld   b, b                                        ; $4314: $40
	ld   d, d                                        ; $4315: $52
	pop  hl                                          ; $4316: $e1
	db   $dd                                         ; $4317: $dd
	di                                               ; $4318: $f3
	jp   $dfff                                       ; $4319: $c3 $ff $df


	rst  $38                                         ; $431c: $ff
	rst  JumpTable                                         ; $431d: $df
	rst  $38                                         ; $431e: $ff
	and  b                                           ; $431f: $a0
	nop                                              ; $4320: $00
	call c, $b020                                    ; $4321: $dc $20 $b0
	ld   a, b                                        ; $4324: $78
	cp   a                                           ; $4325: $bf
	db   $fc                                         ; $4326: $fc
	add  hl, de                                      ; $4327: $19
	rst  $38                                         ; $4328: $ff
	adc  [hl]                                        ; $4329: $8e
	rst  $38                                         ; $432a: $ff
	or   a                                           ; $432b: $b7
	rst  $38                                         ; $432c: $ff
	add  $ff                                         ; $432d: $c6 $ff
	ld   c, [hl]                                     ; $432f: $4e
	ccf                                              ; $4330: $3f
	rra                                              ; $4331: $1f
	ccf                                              ; $4332: $3f
	rst  JumpTable                                         ; $4333: $df
	ld   a, a                                        ; $4334: $7f
	ld   e, a                                        ; $4335: $5f
	rst  $38                                         ; $4336: $ff

jr_017_4337:
	rst  $28                                         ; $4337: $ef
	add  c                                           ; $4338: $81
	rst  $38                                         ; $4339: $ff
	dec  b                                           ; $433a: $05
	rst  $28                                         ; $433b: $ef
	rst  $38                                         ; $433c: $ff
	ld   l, a                                        ; $433d: $6f
	rst  $38                                         ; $433e: $ff
	rrca                                             ; $433f: $0f
	nop                                              ; $4340: $00
	add  b                                           ; $4341: $80
	ld   [bc], a                                     ; $4342: $02
	add  b                                           ; $4343: $80
	ldh  a, [$80]                                    ; $4344: $f0 $80
	cp   $82                                         ; $4346: $fe $82
	rst  $38                                         ; $4348: $ff
	add  b                                           ; $4349: $80
	cp   $03                                         ; $434a: $fe $03
	db   $fd                                         ; $434c: $fd
	db   $fc                                         ; $434d: $fc
	ld   d, h                                        ; $434e: $54
	ld   d, l                                        ; $434f: $55
	add  b                                           ; $4350: $80
	xor  d                                           ; $4351: $aa
	add  b                                           ; $4352: $80
	dec  b                                           ; $4353: $05
	add  b                                           ; $4354: $80
	nop                                              ; $4355: $00
	add  b                                           ; $4356: $80
	jp   hl                                          ; $4357: $e9


	add  b                                           ; $4358: $80
	db   $ec                                         ; $4359: $ec
	dec  b                                           ; $435a: $05
	inc  bc                                          ; $435b: $03
	nop                                              ; $435c: $00
	call nc, $8200                                   ; $435d: $d4 $00 $82
	ld   d, l                                        ; $4360: $55
	add  b                                           ; $4361: $80
	xor  d                                           ; $4362: $aa
	add  b                                           ; $4363: $80
	ld   d, h                                        ; $4364: $54
	add  b                                           ; $4365: $80
	jr   nz, @-$7e                                   ; $4366: $20 $80

	ld   d, l                                        ; $4368: $55
	add  b                                           ; $4369: $80
	ld   a, [bc]                                     ; $436a: $0a
	ld   bc, $00c0                                   ; $436b: $01 $c0 $00
	add  b                                           ; $436e: $80
	jr   jr_017_4372                                 ; $436f: $18 $01

jr_017_4371:
	sub  l                                           ; $4371: $95

jr_017_4372:
	ld   d, l                                        ; $4372: $55
	add  b                                           ; $4373: $80
	xor  d                                           ; $4374: $aa
	add  h                                           ; $4375: $84
	nop                                              ; $4376: $00
	add  b                                           ; $4377: $80
	and  b                                           ; $4378: $a0
	nop                                              ; $4379: $00
	ld   [bc], a                                     ; $437a: $02
	add  c                                           ; $437b: $81
	nop                                              ; $437c: $00
	ld   bc, $5557                                   ; $437d: $01 $57 $55
	add  b                                           ; $4380: $80
	xor  d                                           ; $4381: $aa
	adc  b                                           ; $4382: $88
	nop                                              ; $4383: $00
	ld   [bc], a                                     ; $4384: $02
	ld   [$171f], sp                                 ; $4385: $08 $1f $17
	add  l                                           ; $4388: $85
	nop                                              ; $4389: $00
	ld   [$fc04], sp                                 ; $438a: $08 $04 $fc
	cp   c                                           ; $438d: $b9
	ld   sp, hl                                      ; $438e: $f9
	ld   a, [hl]                                     ; $438f: $7e
	ldh  a, [rAUD3LEN]                               ; $4390: $f0 $1b

jr_017_4392:
	pop  hl                                          ; $4392: $e1
	call z, $0089                                    ; $4393: $cc $89 $00
	add  b                                           ; $4396: $80
	pop  bc                                          ; $4397: $c1
	ld   [bc], a                                     ; $4398: $02
	ret  nc                                          ; $4399: $d0

	ldh  a, [rAUD4LEN]                               ; $439a: $f0 $20
	add  a                                           ; $439c: $87
	nop                                              ; $439d: $00
	add  b                                           ; $439e: $80
	ld   a, [bc]                                     ; $439f: $0a
	add  b                                           ; $43a0: $80
	ld   d, l                                        ; $43a1: $55
	add  b                                           ; $43a2: $80
	and  b                                           ; $43a3: $a0
	adc  b                                           ; $43a4: $88
	nop                                              ; $43a5: $00
	add  b                                           ; $43a6: $80
	ld   [bc], a                                     ; $43a7: $02
	add  b                                           ; $43a8: $80
	ld   d, h                                        ; $43a9: $54
	add  b                                           ; $43aa: $80
	jr   nz, jr_017_43ad                             ; $43ab: $20 $00

jr_017_43ad:
	db   $fd                                         ; $43ad: $fd
	add  c                                           ; $43ae: $81
	db   $fc                                         ; $43af: $fc
	ld   [bc], a                                     ; $43b0: $02
	rra                                              ; $43b1: $1f
	cp   $f0                                         ; $43b2: $fe $f0
	add  b                                           ; $43b4: $80
	ld   sp, $3083                                   ; $43b5: $31 $83 $30
	rla                                              ; $43b8: $17
	cpl                                              ; $43b9: $2f
	jr   nz, jr_017_4392                             ; $43ba: $20 $d6

	nop                                              ; $43bc: $00
	ld   [$1200], sp                                 ; $43bd: $08 $00 $12
	nop                                              ; $43c0: $00
	push hl                                          ; $43c1: $e5
	nop                                              ; $43c2: $00
	ld   c, $00                                      ; $43c3: $0e $00
	add  hl, sp                                      ; $43c5: $39
	nop                                              ; $43c6: $00
	jp   nc, $1800                                   ; $43c7: $d2 $00 $18

	nop                                              ; $43ca: $00
	inc  h                                           ; $43cb: $24
	rra                                              ; $43cc: $1f
	ld   a, [hl]                                     ; $43cd: $7e
	ccf                                              ; $43ce: $3f
	cp   $7f                                         ; $43cf: $fe $7f
	add  b                                           ; $43d1: $80
	rra                                              ; $43d2: $1f
	ld   a, [de]                                     ; $43d3: $1a
	rst  $28                                         ; $43d4: $ef
	rrca                                             ; $43d5: $0f
	ld   de, $0607                                   ; $43d6: $11 $07 $06
	inc  bc                                          ; $43d9: $03
	ld   [de], a                                     ; $43da: $12
	ld   bc, $00e1                                   ; $43db: $01 $e1 $00
	and  d                                           ; $43de: $a2
	ld   hl, sp+$1a                                  ; $43df: $f8 $1a
	ld   hl, sp+$1a                                  ; $43e1: $f8 $1a
	ld   hl, sp+$18                                  ; $43e3: $f8 $18
	ld   hl, sp+$38                                  ; $43e5: $f8 $38
	ld   hl, sp+$7c                                  ; $43e7: $f8 $7c
	ldh  a, [$58]                                    ; $43e9: $f0 $58
	ldh  [$57], a                                    ; $43eb: $e0 $57
	ld   a, a                                        ; $43ed: $7f
	jp   $3f80                                       ; $43ee: $c3 $80 $3f


	ld   de, $3f3e                                   ; $43f1: $11 $3e $3f
	inc  a                                           ; $43f4: $3c
	ld   e, d                                        ; $43f5: $5a
	jr   jr_017_4416                                 ; $43f6: $18 $1e

	db   $10                                         ; $43f8: $10
	rla                                              ; $43f9: $17
	ld   [bc], a                                     ; $43fa: $02
	ld   l, a                                        ; $43fb: $6f
	rrca                                             ; $43fc: $0f
	and  h                                           ; $43fd: $a4
	sbc  a                                           ; $43fe: $9f
	rst  $38                                         ; $43ff: $ff
	rrca                                             ; $4400: $0f
	sbc  a                                           ; $4401: $9f
	rlca                                             ; $4402: $07

jr_017_4403:
	inc  bc                                          ; $4403: $03
	add  c                                           ; $4404: $81
	rlca                                             ; $4405: $07
	ld   [bc], a                                     ; $4406: $02
	add  [hl]                                        ; $4407: $86
	rlca                                             ; $4408: $07
	ld   bc, $0781                                   ; $4409: $01 $81 $07
	ld   bc, $fff1                                   ; $440c: $01 $f1 $ff
	add  b                                           ; $440f: $80
	cp   $02                                         ; $4410: $fe $02
	rst  $38                                         ; $4412: $ff
	db   $fc                                         ; $4413: $fc
	ld   a, l                                        ; $4414: $7d
	add  b                                           ; $4415: $80

jr_017_4416:
	cp   $04                                         ; $4416: $fe $04
	rst  $38                                         ; $4418: $ff
	inc  bc                                          ; $4419: $03
	rst  $38                                         ; $441a: $ff
	cp   $ff                                         ; $441b: $fe $ff
	add  b                                           ; $441d: $80
	cp   $02                                         ; $441e: $fe $02
	ld   c, $00                                      ; $4420: $0e $00
	di                                               ; $4422: $f3
	add  c                                           ; $4423: $81
	nop                                              ; $4424: $00
	ld   de, $0010                                   ; $4425: $11 $10 $00
	ldh  a, [rP1]                                    ; $4428: $f0 $00
	jp   $f0c0                                       ; $442a: $c3 $c0 $f0


	ldh  [rSB], a                                    ; $442d: $e0 $01
	nop                                              ; $442f: $00
	sub  c                                           ; $4430: $91
	call c, Call_017_5f5c                            ; $4431: $dc $5c $5f
	rst  JumpTable                                         ; $4434: $df
	ld   e, $da                                      ; $4435: $1e $da
	ld   e, [hl]                                     ; $4437: $5e
	add  b                                           ; $4438: $80
	ld   a, [hl]                                     ; $4439: $7e
	ld   [de], a                                     ; $443a: $12
	ld   a, [de]                                     ; $443b: $1a
	ld   a, $65                                      ; $443c: $3e $65
	rra                                              ; $443e: $1f
	db   $db                                         ; $443f: $db
	rrca                                             ; $4440: $0f
	adc  h                                           ; $4441: $8c
	nop                                              ; $4442: $00

jr_017_4443:
	jr   nc, jr_017_4445                             ; $4443: $30 $00

jr_017_4445:
	ld   c, [hl]                                     ; $4445: $4e
	nop                                              ; $4446: $00
	ld   bc, $c000                                   ; $4447: $01 $00 $c0
	add  b                                           ; $444a: $80
	or   b                                           ; $444b: $b0
	add  b                                           ; $444c: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $444d: $cf
	add  b                                           ; $444e: $80
	ret  nz                                          ; $444f: $c0

	dec  e                                           ; $4450: $1d
	pop  bc                                          ; $4451: $c1
	ld   b, $00                                      ; $4452: $06 $00
	ld   [rROMB1], sp                                 ; $4454: $08 $00 $30
	nop                                              ; $4457: $00
	call z, Call_017_7400                            ; $4458: $cc $00 $74
	nop                                              ; $445b: $00
	adc  c                                           ; $445c: $89
	nop                                              ; $445d: $00
	ld   h, d                                        ; $445e: $62
	ld   h, b                                        ; $445f: $60
	ld   d, b                                        ; $4460: $50
	ret  nz                                          ; $4461: $c0

	dec  e                                           ; $4462: $1d
	nop                                              ; $4463: $00
	ld   d, e                                        ; $4464: $53
	nop                                              ; $4465: $00
	ld   b, $00                                      ; $4466: $06 $00
	ld   [$c000], sp                                 ; $4468: $08 $00 $c0
	nop                                              ; $446b: $00
	stop                                             ; $446c: $10 $00
	inc  c                                           ; $446e: $0c
	add  l                                           ; $446f: $85
	nop                                              ; $4470: $00
	add  b                                           ; $4471: $80
	ld   b, b                                        ; $4472: $40
	add  d                                           ; $4473: $82
	nop                                              ; $4474: $00
	add  b                                           ; $4475: $80
	and  d                                           ; $4476: $a2
	add  b                                           ; $4477: $80
	ld   d, h                                        ; $4478: $54
	add  b                                           ; $4479: $80
	xor  d                                           ; $447a: $aa
	inc  b                                           ; $447b: $04
	sub  b                                           ; $447c: $90
	db   $10                                         ; $447d: $10
	ld   b, b                                        ; $447e: $40
	nop                                              ; $447f: $00
	jr   nz, jr_017_4403                             ; $4480: $20 $81

	nop                                              ; $4482: $00
	ld   [bc], a                                     ; $4483: $02
	add  b                                           ; $4484: $80
	nop                                              ; $4485: $00
	ld   h, b                                        ; $4486: $60
	add  l                                           ; $4487: $85
	nop                                              ; $4488: $00
	dec  b                                           ; $4489: $05
	ld   h, b                                        ; $448a: $60
	nop                                              ; $448b: $00
	stop                                             ; $448c: $10 $00
	add  b                                           ; $448e: $80
	nop                                              ; $448f: $00
	add  h                                           ; $4490: $84
	inc  b                                           ; $4491: $04
	add  b                                           ; $4492: $80
	ld   b, $06                                      ; $4493: $06 $06
	rst  $38                                         ; $4495: $ff
	jr   nz, jr_017_44d0                             ; $4496: $20 $38

	jr   nc, jr_017_44ce                             ; $4498: $30 $34

	jr   nc, jr_017_44cf                             ; $449a: $30 $33

	add  a                                           ; $449c: $87
	jr   nc, jr_017_44a9                             ; $449d: $30 $0a

	rst  $10                                         ; $449f: $d7
	nop                                              ; $44a0: $00
	ld   sp, $4800                                   ; $44a1: $31 $00 $48
	nop                                              ; $44a4: $00
	add  e                                           ; $44a5: $83
	ld   bc, $4111                                   ; $44a6: $01 $11 $41

jr_017_44a9:
	ld   bc, $4181                                   ; $44a9: $01 $81 $41
	inc  b                                           ; $44ac: $04
	ld   bc, $dd41                                   ; $44ad: $01 $41 $dd
	ld   bc, $8181                                   ; $44b0: $01 $81 $81
	ld   bc, $0220                                   ; $44b3: $01 $20 $02
	inc  bc                                          ; $44b6: $03
	ld   [bc], a                                     ; $44b7: $02
	inc  bc                                          ; $44b8: $03
	ld   b, $07                                      ; $44b9: $06 $07
	inc  b                                           ; $44bb: $04
	rlca                                             ; $44bc: $07
	inc  b                                           ; $44bd: $04
	rlca                                             ; $44be: $07
	ld   e, [hl]                                     ; $44bf: $5e
	ret  nz                                          ; $44c0: $c0

	jr   c, jr_017_4443                              ; $44c1: $38 $80

	ld   [hl], b                                     ; $44c3: $70
	ret  nc                                          ; $44c4: $d0

	jr   z, @-$1e                                    ; $44c5: $28 $e0

	db   $10                                         ; $44c7: $10
	ret  nz                                          ; $44c8: $c0

	nop                                              ; $44c9: $00
	ret  nz                                          ; $44ca: $c0

	ld   h, h                                        ; $44cb: $64
	add  b                                           ; $44cc: $80
	nop                                              ; $44cd: $00

jr_017_44ce:
	add  b                                           ; $44ce: $80

jr_017_44cf:
	ld   h, h                                        ; $44cf: $64

jr_017_44d0:
	rra                                              ; $44d0: $1f
	and  e                                           ; $44d1: $a3
	rlca                                             ; $44d2: $07
	ccf                                              ; $44d3: $3f
	rra                                              ; $44d4: $1f
	ld   [hl], a                                     ; $44d5: $77
	add  c                                           ; $44d6: $81
	scf                                              ; $44d7: $37
	ld   bc, $7fbf                                   ; $44d8: $01 $bf $7f
	add  b                                           ; $44db: $80
	ld   [hl], a                                     ; $44dc: $77
	ld   [bc], a                                     ; $44dd: $02
	ld   [hl], e                                     ; $44de: $73
	ld   [hl], a                                     ; $44df: $77
	ld   [hl], $81                                   ; $44e0: $36 $81
	ld   b, $80                                      ; $44e2: $06 $80
	rlca                                             ; $44e4: $07
	add  d                                           ; $44e5: $82
	ld   b, $80                                      ; $44e6: $06 $80

jr_017_44e8:
	rlca                                             ; $44e8: $07
	add  b                                           ; $44e9: $80
	ld   b, $05                                      ; $44ea: $06 $05
	ld   a, [bc]                                     ; $44ec: $0a
	ld   [bc], a                                     ; $44ed: $02
	push bc                                          ; $44ee: $c5
	db   $fc                                         ; $44ef: $fc
	db   $fd                                         ; $44f0: $fd
	cp   $88                                         ; $44f1: $fe $88
	rst  $38                                         ; $44f3: $ff
	add  b                                           ; $44f4: $80
	cp   $00                                         ; $44f5: $fe $00
	cp   l                                           ; $44f7: $bd
	add  c                                           ; $44f8: $81
	nop                                              ; $44f9: $00
	inc  bc                                          ; $44fa: $03
	add  c                                           ; $44fb: $81
	nop                                              ; $44fc: $00
	ld   hl, sp-$80                                  ; $44fd: $f8 $80
	add  b                                           ; $44ff: $80
	ldh  a, [$80]                                    ; $4500: $f0 $80
	ret  nz                                          ; $4502: $c0

	ld   [$0018], sp                                 ; $4503: $08 $18 $00
	pop  hl                                          ; $4506: $e1
	nop                                              ; $4507: $00
	ccf                                              ; $4508: $3f
	add  hl, bc                                      ; $4509: $09
	ld   c, c                                        ; $450a: $49
	jr   z, @-$56                                    ; $450b: $28 $a8

	add  a                                           ; $450d: $87
	jr   z, jr_017_4516                              ; $450e: $28 $06

	xor  b                                           ; $4510: $a8
	jr   z, @-$26                                    ; $4511: $28 $d8

	di                                               ; $4513: $f3
	or   d                                           ; $4514: $b2
	ld   [hl], a                                     ; $4515: $77

jr_017_4516:
	ld   d, a                                        ; $4516: $57
	add  b                                           ; $4517: $80
	rla                                              ; $4518: $17
	inc  c                                           ; $4519: $0c
	sbc  a                                           ; $451a: $9f
	sbc  [hl]                                        ; $451b: $9e
	sbc  a                                           ; $451c: $9f
	sbc  e                                           ; $451d: $9b
	sbc  a                                           ; $451e: $9f
	adc  e                                           ; $451f: $8b
	sbc  a                                           ; $4520: $9f
	sub  a                                           ; $4521: $97
	sbc  a                                           ; $4522: $9f
	rrca                                             ; $4523: $0f
	ret  nz                                          ; $4524: $c0

	ldh  [$80], a                                    ; $4525: $e0 $80
	add  b                                           ; $4527: $80
	add  d                                           ; $4528: $82
	inc  bc                                          ; $4529: $03
	dec  bc                                          ; $452a: $0b
	add  a                                           ; $452b: $87
	rst  ToBoot                                         ; $452c: $c7
	inc  bc                                          ; $452d: $03
	add  c                                           ; $452e: $81
	ld   b, $03                                      ; $452f: $06 $03
	rlca                                             ; $4531: $07
	ld   [bc], a                                     ; $4532: $02
	rlca                                             ; $4533: $07
	halt                                             ; $4534: $76
	add  c                                           ; $4535: $81
	ld   [bc], a                                     ; $4536: $02
	nop                                              ; $4537: $00
	nop                                              ; $4538: $00
	add  d                                           ; $4539: $82
	ld   [bc], a                                     ; $453a: $02
	add  b                                           ; $453b: $80
	ld   b, $06                                      ; $453c: $06 $06
	rrca                                             ; $453e: $0f
	dec  c                                           ; $453f: $0d
	rrca                                             ; $4540: $0f
	ld   a, [bc]                                     ; $4541: $0a
	rst  $38                                         ; $4542: $ff
	ld   c, $06                                      ; $4543: $0e $06
	add  b                                           ; $4545: $80
	dec  b                                           ; $4546: $05
	rrca                                             ; $4547: $0f
	ld   [bc], a                                     ; $4548: $02
	rlca                                             ; $4549: $07
	inc  de                                          ; $454a: $13
	ld   c, $07                                      ; $454b: $0e $07
	rrca                                             ; $454d: $0f
	add  e                                           ; $454e: $83
	rrca                                             ; $454f: $0f
	dec  c                                           ; $4550: $0d
	rrca                                             ; $4551: $0f
	dec  b                                           ; $4552: $05
	rrca                                             ; $4553: $0f
	cp   c                                           ; $4554: $b9
	pop  bc                                          ; $4555: $c1
	jp   nz, $80c0                                   ; $4556: $c2 $c0 $80

	nop                                              ; $4559: $00
	ld   a, [bc]                                     ; $455a: $0a
	ld   de, $4200                                   ; $455b: $11 $00 $42
	ld   h, b                                        ; $455e: $60
	ld   a, a                                        ; $455f: $7f
	ld   [hl], b                                     ; $4560: $70
	ld   [hl+], a                                    ; $4561: $22
	ld   a, b                                        ; $4562: $78
	dec  hl                                          ; $4563: $2b
	ld   a, e                                        ; $4564: $7b
	jr   z, jr_017_44e8                              ; $4565: $28 $81

	ccf                                              ; $4567: $3f
	jr   nz, jr_017_45a4                             ; $4568: $20 $3a

	rlca                                             ; $456a: $07
	jr   jr_017_458c                                 ; $456b: $18 $1f

	jr   jr_017_458e                                 ; $456d: $18 $1f

	sbc  b                                           ; $456f: $98
	rra                                              ; $4570: $1f
	or   b                                           ; $4571: $b0
	ccf                                              ; $4572: $3f
	jr   nc, @+$41                                   ; $4573: $30 $3f

	ld   [hl], $80                                   ; $4575: $36 $80
	xor  b                                           ; $4577: $a8
	ret  nz                                          ; $4578: $c0

	cp   h                                           ; $4579: $bc
	ldh  [$3c], a                                    ; $457a: $e0 $3c
	ld   hl, sp+$3f                                  ; $457c: $f8 $3f
	db   $fc                                         ; $457e: $fc
	ccf                                              ; $457f: $3f
	rst  $38                                         ; $4580: $ff
	ccf                                              ; $4581: $3f
	rst  $38                                         ; $4582: $ff
	ccf                                              ; $4583: $3f
	rst  $38                                         ; $4584: $ff
	ld   b, c                                        ; $4585: $41
	ld   a, a                                        ; $4586: $7f
	ld   a, [hl]                                     ; $4587: $7e
	ld   a, a                                        ; $4588: $7f
	ld   b, b                                        ; $4589: $40
	add  c                                           ; $458a: $81
	ld   a, a                                        ; $458b: $7f

jr_017_458c:
	add  b                                           ; $458c: $80
	rst  $38                                         ; $458d: $ff

jr_017_458e:
	nop                                              ; $458e: $00
	di                                               ; $458f: $f3
	add  c                                           ; $4590: $81
	rst  $30                                         ; $4591: $f7
	add  b                                           ; $4592: $80
	rst  $38                                         ; $4593: $ff
	nop                                              ; $4594: $00
	db   $fc                                         ; $4595: $fc
	add  c                                           ; $4596: $81
	add  e                                           ; $4597: $83
	dec  b                                           ; $4598: $05
	and  $c1                                         ; $4599: $e6 $c1
	or   $e0                                         ; $459b: $f6 $e0
	ld   [$82f0], a                                  ; $459d: $ea $f0 $82
	cp   $80                                         ; $45a0: $fe $80
	rst  $38                                         ; $45a2: $ff
	add  hl, bc                                      ; $45a3: $09

jr_017_45a4:
	dec  c                                           ; $45a4: $0d
	db   $fc                                         ; $45a5: $fc
	ld   a, [$18f8]                                  ; $45a6: $fa $f8 $18
	ld   hl, sp-$02                                  ; $45a9: $f8 $fe
	db   $fc                                         ; $45ab: $fc
	cp   l                                           ; $45ac: $bd

jr_017_45ad:
	cp   $84                                         ; $45ad: $fe $84
	rst  $38                                         ; $45af: $ff
	dec  c                                           ; $45b0: $0d
	cp   l                                           ; $45b1: $bd
	nop                                              ; $45b2: $00
	ld   de, $3200                                   ; $45b3: $11 $00 $32
	nop                                              ; $45b6: $00
	jr   nz, jr_017_45b9                             ; $45b7: $20 $00

jr_017_45b9:
	add  [hl]                                        ; $45b9: $86
	ld   [bc], a                                     ; $45ba: $02
	ld   c, $06                                      ; $45bb: $0e $06
	or   $8e                                         ; $45bd: $f6 $8e
	add  b                                           ; $45bf: $80
	sbc  $04                                         ; $45c0: $de $04
	ret  z                                           ; $45c2: $c8

	dec  de                                          ; $45c3: $1b
	dec  sp                                          ; $45c4: $3b
	dec  bc                                          ; $45c5: $0b
	adc  e                                           ; $45c6: $8b
	add  c                                           ; $45c7: $81
	dec  bc                                          ; $45c8: $0b
	ld   [bc], a                                     ; $45c9: $02
	rrc  e                                           ; $45ca: $cb $0b
	xor  e                                           ; $45cc: $ab
	add  b                                           ; $45cd: $80
	dec  bc                                          ; $45ce: $0b
	add  c                                           ; $45cf: $81
	dec  hl                                          ; $45d0: $2b
	ld   [bc], a                                     ; $45d1: $02
	ld   e, d                                        ; $45d2: $5a
	rlca                                             ; $45d3: $07
	ld   c, l                                        ; $45d4: $4d
	add  c                                           ; $45d5: $81
	add  e                                           ; $45d6: $83
	ld   c, $e5                                      ; $45d7: $0e $e5
	pop  bc                                          ; $45d9: $c1
	ld   d, d                                        ; $45da: $52
	ldh  [rWX], a                                    ; $45db: $e0 $4b
	ldh  a, [$c5]                                    ; $45dd: $f0 $c5
	ld   hl, sp-$56                                  ; $45df: $f8 $aa
	rst  $38                                         ; $45e1: $ff
	ld   a, l                                        ; $45e2: $7d
	rst  $38                                         ; $45e3: $ff
	cp   a                                           ; $45e4: $bf
	rst  $38                                         ; $45e5: $ff
	cp   a                                           ; $45e6: $bf
	add  b                                           ; $45e7: $80
	rst  $38                                         ; $45e8: $ff
	ld   a, [hl+]                                    ; $45e9: $2a
	cp   a                                           ; $45ea: $bf
	rst  JumpTable                                         ; $45eb: $df
	rst  $38                                         ; $45ec: $ff
	ccf                                              ; $45ed: $3f
	ld   a, a                                        ; $45ee: $7f
	cpl                                              ; $45ef: $2f
	rst  $38                                         ; $45f0: $ff
	ld   l, a                                        ; $45f1: $6f
	rst  $38                                         ; $45f2: $ff
	ld   d, $ff                                      ; $45f3: $16 $ff
	db   $e4                                         ; $45f5: $e4
	rst  $38                                         ; $45f6: $ff
	jp   hl                                          ; $45f7: $e9


	cp   $fa                                         ; $45f8: $fe $fa
	cp   $ce                                         ; $45fa: $fe $ce
	cp   $ce                                         ; $45fc: $fe $ce
	rst  $38                                         ; $45fe: $ff
	rst  JumpTable                                         ; $45ff: $df
	rst  $38                                         ; $4600: $ff
	rst  JumpTable                                         ; $4601: $df
	rst  $38                                         ; $4602: $ff
	cp   [hl]                                        ; $4603: $be
	rra                                              ; $4604: $1f
	ld   d, d                                        ; $4605: $52
	rra                                              ; $4606: $1f
	or   h                                           ; $4607: $b4
	rrca                                             ; $4608: $0f
	ld   e, l                                        ; $4609: $5d
	rlca                                             ; $460a: $07
	inc  bc                                          ; $460b: $03
	rlca                                             ; $460c: $07
	sub  [hl]                                        ; $460d: $96
	rrca                                             ; $460e: $0f
	ld   h, a                                        ; $460f: $67
	sbc  a                                           ; $4610: $9f
	and  [hl]                                        ; $4611: $a6
	rst  $38                                         ; $4612: $ff
	sbc  e                                           ; $4613: $9b
	ld   d, l                                        ; $4614: $55
	add  b                                           ; $4615: $80
	xor  d                                           ; $4616: $aa
	add  b                                           ; $4617: $80
	dec  b                                           ; $4618: $05
	add  b                                           ; $4619: $80
	nop                                              ; $461a: $00
	add  b                                           ; $461b: $80
	jp   hl                                          ; $461c: $e9


	add  b                                           ; $461d: $80
	db   $ec                                         ; $461e: $ec
	add  b                                           ; $461f: $80
	and  $03                                         ; $4620: $e6 $03
	push de                                          ; $4622: $d5
	call nc, Call_017_5554                           ; $4623: $d4 $54 $55
	add  b                                           ; $4626: $80
	xor  d                                           ; $4627: $aa
	add  b                                           ; $4628: $80
	ld   d, h                                        ; $4629: $54
	add  b                                           ; $462a: $80
	jr   nz, jr_017_45ad                             ; $462b: $20 $80

	ld   d, l                                        ; $462d: $55
	add  b                                           ; $462e: $80
	ld   a, [bc]                                     ; $462f: $0a
	add  b                                           ; $4630: $80
	nop                                              ; $4631: $00
	inc  bc                                          ; $4632: $03
	ret  c                                           ; $4633: $d8

	jr   @-$69                                       ; $4634: $18 $95

	ld   d, l                                        ; $4636: $55
	add  b                                           ; $4637: $80
	xor  d                                           ; $4638: $aa
	add  h                                           ; $4639: $84
	nop                                              ; $463a: $00
	add  b                                           ; $463b: $80
	and  b                                           ; $463c: $a0
	add  b                                           ; $463d: $80
	nop                                              ; $463e: $00
	inc  bc                                          ; $463f: $03
	inc  bc                                          ; $4640: $03
	nop                                              ; $4641: $00
	ld   d, e                                        ; $4642: $53
	ld   d, b                                        ; $4643: $50
	add  a                                           ; $4644: $87
	nop                                              ; $4645: $00
	add  b                                           ; $4646: $80
	inc  bc                                          ; $4647: $03
	inc  bc                                          ; $4648: $03
	jr   c, jr_017_468a                              ; $4649: $38 $3f

	ldh  a, [$f7]                                    ; $464b: $f0 $f7
	add  [hl]                                        ; $464d: $86
	nop                                              ; $464e: $00
	add  b                                           ; $464f: $80
	rlca                                             ; $4650: $07
	add  c                                           ; $4651: $81
	rst  $38                                         ; $4652: $ff
	ld   [bc], a                                     ; $4653: $02
	cp   $7f                                         ; $4654: $fe $7f
	ld   a, [hl]                                     ; $4656: $7e
	adc  c                                           ; $4657: $89
	nop                                              ; $4658: $00
	add  b                                           ; $4659: $80
	dec  b                                           ; $465a: $05
	dec  b                                           ; $465b: $05
	ld   [hl-], a                                    ; $465c: $32
	ld   [bc], a                                     ; $465d: $02
	push hl                                          ; $465e: $e5
	call nc, $f4f5                                   ; $465f: $d4 $f5 $f4
	add  b                                           ; $4662: $80
	cp   $04                                         ; $4663: $fe $04
	ld   c, $fe                                      ; $4665: $0e $fe
	ldh  a, [$0e]                                    ; $4667: $f0 $0e
	inc  c                                           ; $4669: $0c
	add  c                                           ; $466a: $81
	ld   [bc], a                                     ; $466b: $02
	ld   [hl-], a                                    ; $466c: $32
	ld   b, d                                        ; $466d: $42
	ld   h, d                                        ; $466e: $62
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $466f: $cf
	rrca                                             ; $4670: $0f
	ld   d, $07                                      ; $4671: $16 $07
	ld   b, $07                                      ; $4673: $06 $07
	add  a                                           ; $4675: $87
	rlca                                             ; $4676: $07
	sbc  a                                           ; $4677: $9f
	rrca                                             ; $4678: $0f
	and  b                                           ; $4679: $a0
	inc  e                                           ; $467a: $1c
	sbc  [hl]                                        ; $467b: $9e
	nop                                              ; $467c: $00
	add  e                                           ; $467d: $83
	ld   bc, $0047                                   ; $467e: $01 $47 $00
	and  b                                           ; $4681: $a0
	ldh  a, [rAUD1SWEEP]                             ; $4682: $f0 $10
	ldh  [$38], a                                    ; $4684: $e0 $38
	add  b                                           ; $4686: $80
	ld   h, b                                        ; $4687: $60
	nop                                              ; $4688: $00

jr_017_4689:
	add  c                                           ; $4689: $81

jr_017_468a:
	nop                                              ; $468a: $00
	sbc  b                                           ; $468b: $98
	nop                                              ; $468c: $00
	ldh  a, [$90]                                    ; $468d: $f0 $90
	ld   e, $7f                                      ; $468f: $1e $7f
	db   $e3                                         ; $4691: $e3
	rra                                              ; $4692: $1f
	rst  $38                                         ; $4693: $ff
	rrca                                             ; $4694: $0f
	sbc  a                                           ; $4695: $9f
	rlca                                             ; $4696: $07
	inc  bc                                          ; $4697: $03
	rlca                                             ; $4698: $07
	add  a                                           ; $4699: $87
	rlca                                             ; $469a: $07
	ld   a, b                                        ; $469b: $78
	adc  a                                           ; $469c: $8f
	ccf                                              ; $469d: $3f
	rst  $38                                         ; $469e: $ff
	ld   b, a                                        ; $469f: $47
	add  e                                           ; $46a0: $83
	ldh  a, [rP1]                                    ; $46a1: $f0 $00
	db   $f4                                         ; $46a3: $f4
	add  e                                           ; $46a4: $83
	ld   hl, sp+$0e                                  ; $46a5: $f8 $0e
	db   $10                                         ; $46a7: $10
	ld   hl, sp-$0c                                  ; $46a8: $f8 $f4
	ldh  a, [rAUD2LEN]                               ; $46aa: $f0 $16
	ld   a, a                                        ; $46ac: $7f
	cp   $2e                                         ; $46ad: $fe $2e
	ccf                                              ; $46af: $3f
	inc  b                                           ; $46b0: $04
	rra                                              ; $46b1: $1f
	jr   nz, @+$26                                   ; $46b2: $20 $24

	jr   nz, jr_017_46b6                             ; $46b4: $20 $00

jr_017_46b6:
	add  c                                           ; $46b6: $81
	jr   nz, jr_017_46bb                             ; $46b7: $20 $02

	ei                                               ; $46b9: $fb
	ld   [hl], c                                     ; $46ba: $71

jr_017_46bb:
	inc  b                                           ; $46bb: $04
	add  e                                           ; $46bc: $83
	nop                                              ; $46bd: $00
	add  b                                           ; $46be: $80
	xor  d                                           ; $46bf: $aa
	add  b                                           ; $46c0: $80
	ld   d, b                                        ; $46c1: $50
	add  b                                           ; $46c2: $80
	xor  d                                           ; $46c3: $aa
	add  b                                           ; $46c4: $80
	ld   d, l                                        ; $46c5: $55
	add  b                                           ; $46c6: $80
	xor  d                                           ; $46c7: $aa
	ld   [de], a                                     ; $46c8: $12
	inc  hl                                          ; $46c9: $23
	ccf                                              ; $46ca: $3f
	db   $dd                                         ; $46cb: $dd
	rra                                              ; $46cc: $1f
	cp   a                                           ; $46cd: $bf
	rrca                                             ; $46ce: $0f
	rra                                              ; $46cf: $1f
	rlca                                             ; $46d0: $07
	ld   b, $07                                      ; $46d1: $06 $07
	pop  bc                                          ; $46d3: $c1
	add  [hl]                                        ; $46d4: $86
	cp   $ce                                         ; $46d5: $fe $ce
	sub  $de                                         ; $46d7: $d6 $de
	sub  h                                           ; $46d9: $94
	call c, $805c                                    ; $46da: $dc $5c $80
	rst  JumpTable                                         ; $46dd: $df
	dec  b                                           ; $46de: $05
	sbc  $0a                                         ; $46df: $de $0a
	adc  $16                                         ; $46e1: $ce $16
	add  [hl]                                        ; $46e3: $86
	xor  [hl]                                        ; $46e4: $ae
	add  b                                           ; $46e5: $80
	ld   [bc], a                                     ; $46e6: $02
	dec  b                                           ; $46e7: $05
	nop                                              ; $46e8: $00
	inc  bc                                          ; $46e9: $03
	nop                                              ; $46ea: $00
	ld   b, e                                        ; $46eb: $43
	nop                                              ; $46ec: $00
	ld   b, b                                        ; $46ed: $40
	add  e                                           ; $46ee: $83
	nop                                              ; $46ef: $00
	nop                                              ; $46f0: $00
	rlca                                             ; $46f1: $07
	add  c                                           ; $46f2: $81
	nop                                              ; $46f3: $00
	dec  b                                           ; $46f4: $05
	ret  nz                                          ; $46f5: $c0

	nop                                              ; $46f6: $00
	rrca                                             ; $46f7: $0f
	nop                                              ; $46f8: $00
	push af                                          ; $46f9: $f5
	dec  b                                           ; $46fa: $05
	add  [hl]                                        ; $46fb: $86
	nop                                              ; $46fc: $00
	add  hl, bc                                      ; $46fd: $09
	ret  nz                                          ; $46fe: $c0

	nop                                              ; $46ff: $00
	jr   nz, jr_017_4702                             ; $4700: $20 $00

jr_017_4702:
	stop                                             ; $4702: $10 $00
	ldh  a, [rP1]                                    ; $4704: $f0 $00
	add  hl, hl                                      ; $4706: $29
	jr   z, jr_017_4689                              ; $4707: $28 $80

	nop                                              ; $4709: $00
	nop                                              ; $470a: $00
	ld   [bc], a                                     ; $470b: $02
	add  a                                           ; $470c: $87
	nop                                              ; $470d: $00
	inc  b                                           ; $470e: $04
	ld   d, e                                        ; $470f: $53
	ld   d, b                                        ; $4710: $50
	add  b                                           ; $4711: $80
	nop                                              ; $4712: $00
	ld   b, b                                        ; $4713: $40
	adc  c                                           ; $4714: $89
	nop                                              ; $4715: $00
	ld   a, [bc]                                     ; $4716: $0a
	sub  d                                           ; $4717: $92
	ld   a, d                                        ; $4718: $7a
	ld   a, [hl+]                                    ; $4719: $2a
	ld   a, d                                        ; $471a: $7a
	ld   a, [hl+]                                    ; $471b: $2a
	ld   a, d                                        ; $471c: $7a
	ld   a, c                                        ; $471d: $79
	ld   a, b                                        ; $471e: $78
	jr   z, jr_017_4799                              ; $471f: $28 $78

	ld   a, [hl+]                                    ; $4721: $2a
	add  c                                           ; $4722: $81
	ld   a, b                                        ; $4723: $78
	dec  h                                           ; $4724: $25
	jr   z, jr_017_479f                              ; $4725: $28 $78

	ld   [$3101], a                                  ; $4727: $ea $01 $31
	ld   bc, $0151                                   ; $472a: $01 $51 $01
	ld   [de], a                                     ; $472d: $12
	inc  bc                                          ; $472e: $03
	ld   [hl+], a                                    ; $472f: $22
	inc  bc                                          ; $4730: $03
	ld   b, $07                                      ; $4731: $06 $07
	ld   b, h                                        ; $4733: $44
	rlca                                             ; $4734: $07
	inc  b                                           ; $4735: $04
	ld   b, $fa                                      ; $4736: $06 $fa
	ld   hl, sp+$39                                  ; $4738: $f8 $39
	ld   hl, sp+$38                                  ; $473a: $f8 $38
	ld   hl, sp+$38                                  ; $473c: $f8 $38
	ld   hl, sp+$38                                  ; $473e: $f8 $38
	ld   hl, sp+$38                                  ; $4740: $f8 $38
	ld   hl, sp+$44                                  ; $4742: $f8 $44
	add  b                                           ; $4744: $80
	ldh  a, [rP1]                                    ; $4745: $f0 $00
	ret  z                                           ; $4747: $c8

	rst  $38                                         ; $4748: $ff
	ld   [hl], e                                     ; $4749: $73
	ld   [hl], a                                     ; $474a: $77
	add  b                                           ; $474b: $80
	ld   a, a                                        ; $474c: $7f
	add  d                                           ; $474d: $82
	ld   [hl], a                                     ; $474e: $77
	add  b                                           ; $474f: $80
	ld   a, a                                        ; $4750: $7f
	add  b                                           ; $4751: $80
	ld   [hl], a                                     ; $4752: $77
	ld   b, $73                                      ; $4753: $06 $73
	ld   [hl], a                                     ; $4755: $77
	and  e                                           ; $4756: $a3
	ldh  a, [$f4]                                    ; $4757: $f0 $f4
	ldh  a, [$f1]                                    ; $4759: $f0 $f1
	add  e                                           ; $475b: $83
	ldh  a, [rP1]                                    ; $475c: $f0 $00
	pop  af                                          ; $475e: $f1
	add  e                                           ; $475f: $83
	ldh  a, [rSB]                                    ; $4760: $f0 $01
	ld   l, $7b                                      ; $4762: $2e $7b
	add  b                                           ; $4764: $80
	ld   a, a                                        ; $4765: $7f
	add  h                                           ; $4766: $84
	rst  $38                                         ; $4767: $ff
	add  d                                           ; $4768: $82
	ld   a, a                                        ; $4769: $7f
	inc  bc                                          ; $476a: $03
	ld   a, [hl]                                     ; $476b: $7e
	ld   a, a                                        ; $476c: $7f
	sub  l                                           ; $476d: $95
	sbc  $80                                         ; $476e: $de $80
	cp   $82                                         ; $4770: $fe $82
	sbc  $01                                         ; $4772: $de $01
	db   $fd                                         ; $4774: $fd
	db   $fc                                         ; $4775: $fc
	add  d                                           ; $4776: $82
	call c, $0914                                    ; $4777: $dc $14 $09
	cp   $c1                                         ; $477a: $fe $c1
	nop                                              ; $477c: $00
	inc  bc                                          ; $477d: $03
	nop                                              ; $477e: $00
	ld   b, h                                        ; $477f: $44
	nop                                              ; $4780: $00
	add  h                                           ; $4781: $84
	nop                                              ; $4782: $00
	jr   nz, jr_017_4785                             ; $4783: $20 $00

jr_017_4785:
	ld   d, d                                        ; $4785: $52
	jr   nz, jr_017_47a9                             ; $4786: $20 $21

	jr   nz, jr_017_47b2                             ; $4788: $20 $28

	jr   nz, @-$27                                   ; $478a: $20 $d7

	inc  bc                                          ; $478c: $03
	ld   [de], a                                     ; $478d: $12
	add  c                                           ; $478e: $81
	rlca                                             ; $478f: $07
	dec  c                                           ; $4790: $0d
	scf                                              ; $4791: $37
	rra                                              ; $4792: $1f
	sbc  [hl]                                        ; $4793: $9e
	rra                                              ; $4794: $1f
	ld   e, e                                        ; $4795: $5b
	rra                                              ; $4796: $1f
	adc  e                                           ; $4797: $8b
	rra                                              ; $4798: $1f

jr_017_4799:
	rla                                              ; $4799: $17
	rra                                              ; $479a: $1f
	ld   h, a                                        ; $479b: $67
	nop                                              ; $479c: $00
	ret  z                                           ; $479d: $c8

	add  b                                           ; $479e: $80

jr_017_479f:
	add  b                                           ; $479f: $80
	add  d                                           ; $47a0: $82
	nop                                              ; $47a1: $00
	inc  bc                                          ; $47a2: $03
	add  c                                           ; $47a3: $81
	add  e                                           ; $47a4: $83
	ld   b, $02                                      ; $47a5: $06 $02
	add  d                                           ; $47a7: $82
	ld   b, d                                        ; $47a8: $42

jr_017_47a9:
	inc  bc                                          ; $47a9: $03
	ld   a, [bc]                                     ; $47aa: $0a
	rlca                                             ; $47ab: $07
	ld   [hl], a                                     ; $47ac: $77
	add  e                                           ; $47ad: $83
	nop                                              ; $47ae: $00
	add  b                                           ; $47af: $80
	add  b                                           ; $47b0: $80
	add  b                                           ; $47b1: $80

jr_017_47b2:
	nop                                              ; $47b2: $00
	nop                                              ; $47b3: $00
	ld   [bc], a                                     ; $47b4: $02
	add  c                                           ; $47b5: $81
	nop                                              ; $47b6: $00
	ld   [$fc80], sp                                 ; $47b7: $08 $80 $fc
	cp   [hl]                                        ; $47ba: $be
	inc  bc                                          ; $47bb: $03
	ld   [bc], a                                     ; $47bc: $02
	inc  bc                                          ; $47bd: $03
	ld   bc, $4303                                   ; $47be: $01 $03 $43
	add  b                                           ; $47c1: $80
	inc  bc                                          ; $47c2: $03
	add  b                                           ; $47c3: $80
	rlca                                             ; $47c4: $07
	dec  b                                           ; $47c5: $05
	rrca                                             ; $47c6: $0f
	dec  c                                           ; $47c7: $0d
	rrca                                             ; $47c8: $0f
	ld   a, [bc]                                     ; $47c9: $0a
	ccf                                              ; $47ca: $3f
	ld   b, e                                        ; $47cb: $43
	add  c                                           ; $47cc: $81
	ld   hl, sp-$7e                                  ; $47cd: $f8 $82
	nop                                              ; $47cf: $00
	nop                                              ; $47d0: $00
	ld   d, d                                        ; $47d1: $52
	add  c                                           ; $47d2: $81
	ld   a, b                                        ; $47d3: $78
	ld   b, $2b                                      ; $47d4: $06 $2b
	ld   a, d                                        ; $47d6: $7a
	dec  hl                                          ; $47d7: $2b
	ld   a, e                                        ; $47d8: $7b
	jp   hl                                          ; $47d9: $e9


	inc  e                                           ; $47da: $1c
	ld   e, $80                                      ; $47db: $1e $80
	jr   jr_017_47df                                 ; $47dd: $18 $00

jr_017_47df:
	nop                                              ; $47df: $00
	add  b                                           ; $47e0: $80
	jr   jr_017_47eb                                 ; $47e1: $18 $08

	rra                                              ; $47e3: $1f
	inc  e                                           ; $47e4: $1c
	ld   e, d                                        ; $47e5: $5a
	rra                                              ; $47e6: $1f
	or   b                                           ; $47e7: $b0
	ccf                                              ; $47e8: $3f
	jr   nc, jr_017_482a                             ; $47e9: $30 $3f

jr_017_47eb:
	ei                                               ; $47eb: $fb
	add  c                                           ; $47ec: $81
	nop                                              ; $47ed: $00
	inc  h                                           ; $47ee: $24
	ld   hl, $2000                                   ; $47ef: $21 $00 $20
	nop                                              ; $47f2: $00
	inc  c                                           ; $47f3: $0c
	nop                                              ; $47f4: $00
	rst  $38                                         ; $47f5: $ff
	inc  c                                           ; $47f6: $0c
	ld   a, a                                        ; $47f7: $7f
	rst  $38                                         ; $47f8: $ff
	ccf                                              ; $47f9: $3f
	rst  $38                                         ; $47fa: $ff
	pop  bc                                          ; $47fb: $c1
	rst  $38                                         ; $47fc: $ff
	cp   $ff                                         ; $47fd: $fe $ff
	ld   b, b                                        ; $47ff: $40
	ld   a, a                                        ; $4800: $7f
	rst  $38                                         ; $4801: $ff
	ccf                                              ; $4802: $3f
	ld   e, a                                        ; $4803: $5f
	rra                                              ; $4804: $1f
	ld   d, e                                        ; $4805: $53
	rla                                              ; $4806: $17
	rst  $10                                         ; $4807: $d7
	rla                                              ; $4808: $17
	rst  $38                                         ; $4809: $ff
	cp   a                                           ; $480a: $bf
	db   $e3                                         ; $480b: $e3
	ldh  a, [$f4]                                    ; $480c: $f0 $f4
	ld   hl, sp-$10                                  ; $480e: $f8 $f0
	ld   hl, sp-$02                                  ; $4810: $f8 $fe
	db   $fc                                         ; $4812: $fc
	rst  $38                                         ; $4813: $ff
	add  e                                           ; $4814: $83
	cp   $80                                         ; $4815: $fe $80
	rst  $38                                         ; $4817: $ff
	dec  c                                           ; $4818: $0d
	adc  h                                           ; $4819: $8c
	ccf                                              ; $481a: $3f
	ld   a, $3f                                      ; $481b: $3e $3f
	ld   a, a                                        ; $481d: $7f
	rra                                              ; $481e: $1f
	cpl                                              ; $481f: $2f
	rrca                                             ; $4820: $0f
	rla                                              ; $4821: $17
	rlca                                             ; $4822: $07
	db   $db                                         ; $4823: $db
	inc  bc                                          ; $4824: $03
	xor  a                                           ; $4825: $af
	rst  ToBoot                                         ; $4826: $c7
	add  b                                           ; $4827: $80
	rst  $38                                         ; $4828: $ff
	ld   [bc], a                                     ; $4829: $02

jr_017_482a:
	ld   b, d                                        ; $482a: $42
	rst  $38                                         ; $482b: $ff
	ld   bc, $fe81                                   ; $482c: $01 $81 $fe
	nop                                              ; $482f: $00
	sub  $83                                         ; $4830: $d6 $83
	sbc  $80                                         ; $4832: $de $80
	cp   $80                                         ; $4834: $fe $80
	sbc  $08                                         ; $4836: $de $08
	ld   d, a                                        ; $4838: $57
	nop                                              ; $4839: $00
	ld   hl, $0700                                   ; $483a: $21 $00 $07
	nop                                              ; $483d: $00
	ld   c, c                                        ; $483e: $49
	ld   [bc], a                                     ; $483f: $02
	ld   [hl-], a                                    ; $4840: $32
	add  b                                           ; $4841: $80
	dec  bc                                          ; $4842: $0b
	add  e                                           ; $4843: $83
	dec  hl                                          ; $4844: $2b
	ld   a, $3b                                      ; $4845: $3e $3b
	ld   a, [hl]                                     ; $4847: $7e
	ld   e, b                                        ; $4848: $58
	cp   $c9                                         ; $4849: $fe $c9
	ld   a, h                                        ; $484b: $7c
	ld   a, [hl]                                     ; $484c: $7e
	ldh  a, [$fc]                                    ; $484d: $f0 $fc
	ret  nz                                          ; $484f: $c0

	ei                                               ; $4850: $fb
	add  b                                           ; $4851: $80
	or   h                                           ; $4852: $b4
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4853: $cf
	rst  $28                                         ; $4854: $ef
	rst  $38                                         ; $4855: $ff
	ld   l, $07                                      ; $4856: $2e $07
	dec  e                                           ; $4858: $1d
	rrca                                             ; $4859: $0f
	dec  sp                                          ; $485a: $3b
	rra                                              ; $485b: $1f
	ld   e, c                                        ; $485c: $59
	ccf                                              ; $485d: $3f
	ldh  [$7f], a                                    ; $485e: $e0 $7f
	ld   e, c                                        ; $4860: $59
	rst  $38                                         ; $4861: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4862: $cf
	rst  $38                                         ; $4863: $ff
	xor  l                                           ; $4864: $ad
	rst  $38                                         ; $4865: $ff
	ld   a, h                                        ; $4866: $7c
	db   $fc                                         ; $4867: $fc
	cp   l                                           ; $4868: $bd
	db   $fc                                         ; $4869: $fc
	cp   [hl]                                        ; $486a: $be
	ld   hl, sp-$07                                  ; $486b: $f8 $f9
	cp   b                                           ; $486d: $b8
	ret  c                                           ; $486e: $d8

	ld   hl, sp-$46                                  ; $486f: $f8 $ba
	db   $fc                                         ; $4871: $fc
	dec  l                                           ; $4872: $2d
	cp   $6e                                         ; $4873: $fe $6e
	rst  $38                                         ; $4875: $ff
	ld   d, $3f                                      ; $4876: $16 $3f
	inc  h                                           ; $4878: $24
	rst  $38                                         ; $4879: $ff
	ld   l, b                                        ; $487a: $68
	ccf                                              ; $487b: $3f
	ld   a, d                                        ; $487c: $7a
	rra                                              ; $487d: $1f
	rrca                                             ; $487e: $0f
	rra                                              ; $487f: $1f
	ld   c, a                                        ; $4880: $4f
	ccf                                              ; $4881: $3f
	sbc  a                                           ; $4882: $9f
	ld   a, a                                        ; $4883: $7f
	ld   e, a                                        ; $4884: $5f
	add  b                                           ; $4885: $80
	rst  $38                                         ; $4886: $ff
	adc  c                                           ; $4887: $89
	nop                                              ; $4888: $00
	add  b                                           ; $4889: $80
	ldh  a, [$80]                                    ; $488a: $f0 $80
	rst  $38                                         ; $488c: $ff
	add  [hl]                                        ; $488d: $86
	nop                                              ; $488e: $00
	add  b                                           ; $488f: $80
	ld   bc, $008c                                   ; $4890: $01 $8c $00
	add  b                                           ; $4893: $80
	ld   d, l                                        ; $4894: $55
	add  b                                           ; $4895: $80
	ld   a, [bc]                                     ; $4896: $0a
	add  b                                           ; $4897: $80
	dec  d                                           ; $4898: $15
	adc  b                                           ; $4899: $88
	nop                                              ; $489a: $00
	add  b                                           ; $489b: $80
	ld   d, l                                        ; $489c: $55
	add  b                                           ; $489d: $80
	xor  d                                           ; $489e: $aa
	add  b                                           ; $489f: $80
	ld   d, l                                        ; $48a0: $55
	add  b                                           ; $48a1: $80
	ld   [bc], a                                     ; $48a2: $02
	adc  b                                           ; $48a3: $88
	nop                                              ; $48a4: $00
	add  b                                           ; $48a5: $80
	and  b                                           ; $48a6: $a0
	add  b                                           ; $48a7: $80
	nop                                              ; $48a8: $00
	add  b                                           ; $48a9: $80
	add  b                                           ; $48aa: $80
	sbc  d                                           ; $48ab: $9a
	nop                                              ; $48ac: $00
	add  b                                           ; $48ad: $80
	rlca                                             ; $48ae: $07
	add  b                                           ; $48af: $80
	ld   bc, $0084                                   ; $48b0: $01 $84 $00
	add  b                                           ; $48b3: $80
	ld   bc, $0780                                   ; $48b4: $01 $80 $07
	add  b                                           ; $48b7: $80
	nop                                              ; $48b8: $00
	add  d                                           ; $48b9: $82
	rst  $38                                         ; $48ba: $ff
	xor  [hl]                                        ; $48bb: $ae
	nop                                              ; $48bc: $00
	and  $01                                         ; $48bd: $e6 $01
	nop                                              ; $48bf: $00
	nop                                              ; $48c0: $00
	add  b                                           ; $48c1: $80
	rra                                              ; $48c2: $1f
	add  b                                           ; $48c3: $80
	xor  a                                           ; $48c4: $af
	add  d                                           ; $48c5: $82
	rst  $38                                         ; $48c6: $ff
	add  b                                           ; $48c7: $80
	ld   a, a                                        ; $48c8: $7f
	add  b                                           ; $48c9: $80
	xor  a                                           ; $48ca: $af
	add  b                                           ; $48cb: $80
	ld   b, a                                        ; $48cc: $47
	add  b                                           ; $48cd: $80
	xor  d                                           ; $48ce: $aa
	adc  d                                           ; $48cf: $8a
	rst  $38                                         ; $48d0: $ff
	add  b                                           ; $48d1: $80
	rst  JumpTable                                         ; $48d2: $df
	add  b                                           ; $48d3: $80
	adc  d                                           ; $48d4: $8a
	adc  h                                           ; $48d5: $8c
	rst  $38                                         ; $48d6: $ff
	add  b                                           ; $48d7: $80
	ld   a, [$ff88]                                  ; $48d8: $fa $88 $ff
	add  b                                           ; $48db: $80
	db   $eb                                         ; $48dc: $eb
	add  b                                           ; $48dd: $80
	ld   b, c                                        ; $48de: $41
	add  b                                           ; $48df: $80
	ld   [bc], a                                     ; $48e0: $02
	adc  h                                           ; $48e1: $8c
	rst  $38                                         ; $48e2: $ff
	add  b                                           ; $48e3: $80
	cp   a                                           ; $48e4: $bf
	add  b                                           ; $48e5: $80
	call nc, $fe80                                   ; $48e6: $d4 $80 $fe
	adc  c                                           ; $48e9: $89
	rst  $38                                         ; $48ea: $ff
	nop                                              ; $48eb: $00
	adc  a                                           ; $48ec: $8f
	add  b                                           ; $48ed: $80
	nop                                              ; $48ee: $00
	add  b                                           ; $48ef: $80
	adc  d                                           ; $48f0: $8a
	add  h                                           ; $48f1: $84
	adc  a                                           ; $48f2: $8f
	add  b                                           ; $48f3: $80
	adc  d                                           ; $48f4: $8a
	add  b                                           ; $48f5: $80
	add  h                                           ; $48f6: $84
	ld   bc, $f282                                   ; $48f7: $01 $82 $f2
	add  b                                           ; $48fa: $80
	rla                                              ; $48fb: $17
	add  b                                           ; $48fc: $80
	xor  d                                           ; $48fd: $aa
	add  b                                           ; $48fe: $80
	ld   a, a                                        ; $48ff: $7f
	dec  b                                           ; $4900: $05
	rst  $38                                         ; $4901: $ff
	ld   sp, hl                                      ; $4902: $f9
	ld   a, c                                        ; $4903: $79
	ld   [hl], d                                     ; $4904: $72
	ldh  a, [$f4]                                    ; $4905: $f0 $f4
	add  b                                           ; $4907: $80
	ld   d, h                                        ; $4908: $54
	ld   bc, $a9a0                                   ; $4909: $01 $a0 $a9
	add  b                                           ; $490c: $80
	ld   e, a                                        ; $490d: $5f
	add  d                                           ; $490e: $82
	rst  $38                                         ; $490f: $ff
	add  b                                           ; $4910: $80
	rst  $28                                         ; $4911: $ef
	add  b                                           ; $4912: $80
	push af                                          ; $4913: $f5
	add  b                                           ; $4914: $80
	xor  b                                           ; $4915: $a8
	inc  bc                                          ; $4916: $03
	call nc, $0854                                   ; $4917: $d4 $54 $08
	adc  b                                           ; $491a: $88
	add  h                                           ; $491b: $84
	rst  $38                                         ; $491c: $ff
	add  b                                           ; $491d: $80
	db   $eb                                         ; $491e: $eb
	add  b                                           ; $491f: $80
	ld   b, l                                        ; $4920: $45
	add  b                                           ; $4921: $80
	dec  hl                                          ; $4922: $2b
	add  b                                           ; $4923: $80
	rlca                                             ; $4924: $07
	add  b                                           ; $4925: $80
	ld   [bc], a                                     ; $4926: $02
	add  e                                           ; $4927: $83
	rst  $38                                         ; $4928: $ff

Call_017_4929:
	add  e                                           ; $4929: $83
	ei                                               ; $492a: $fb
	ld   bc, $e0ea                                   ; $492b: $01 $ea $e0
	add  b                                           ; $492e: $80
	ld   d, a                                        ; $492f: $57
	ld   bc, $a8a6                                   ; $4930: $01 $a6 $a8
	add  b                                           ; $4933: $80
	call nc, $fa80                                   ; $4934: $d4 $80 $fa
	add  d                                           ; $4937: $82
	rst  $38                                         ; $4938: $ff
	add  b                                           ; $4939: $80
	rst  $30                                         ; $493a: $f7
	add  b                                           ; $493b: $80
	xor  a                                           ; $493c: $af
	inc  bc                                          ; $493d: $03
	dec  d                                           ; $493e: $15
	or   l                                           ; $493f: $b5
	ld   a, [bc]                                     ; $4940: $0a
	xor  d                                           ; $4941: $aa
	add  b                                           ; $4942: $80
	ld   d, b                                        ; $4943: $50
	add  b                                           ; $4944: $80
	ld   hl, sp-$80                                  ; $4945: $f8 $80
	db   $f4                                         ; $4947: $f4
	add  b                                           ; $4948: $80
	and  b                                           ; $4949: $a0
	add  b                                           ; $494a: $80
	call nc, $fe80                                   ; $494b: $d4 $80 $fe
	add  b                                           ; $494e: $80
	ld   e, h                                        ; $494f: $5c
	add  b                                           ; $4950: $80
	adc  d                                           ; $4951: $8a
	add  c                                           ; $4952: $81
	nop                                              ; $4953: $00
	inc  d                                           ; $4954: $14
	ldh  [hScriptOpcodeParams], a                                    ; $4955: $e0 $a0
	ldh  [rLCDC], a                                  ; $4957: $e0 $40
	ld   b, c                                        ; $4959: $41
	ld   b, b                                        ; $495a: $40
	ld   b, [hl]                                     ; $495b: $46
	ld   b, h                                        ; $495c: $44
	ld   c, l                                        ; $495d: $4d
	ld   b, c                                        ; $495e: $41
	ld   b, b                                        ; $495f: $40
	ld   b, c                                        ; $4960: $41
	jp   hl                                          ; $4961: $e9


	nop                                              ; $4962: $00
	jr   jr_017_4976                                 ; $4963: $18 $11

	inc  [hl]                                        ; $4965: $34
	rlca                                             ; $4966: $07
	rst  ToBoot                                         ; $4967: $c7
	adc  a                                           ; $4968: $8f
	xor  e                                           ; $4969: $ab
	add  b                                           ; $496a: $80
	inc  sp                                          ; $496b: $33
	ld   bc, $4363                                   ; $496c: $01 $63 $43
	add  b                                           ; $496f: $80
	add  e                                           ; $4970: $83
	ld   bc, $8203                                   ; $4971: $01 $03 $82
	add  b                                           ; $4974: $80
	ret  nz                                          ; $4975: $c0

jr_017_4976:
	nop                                              ; $4976: $00
	add  b                                           ; $4977: $80
	add  b                                           ; $4978: $80
	nop                                              ; $4979: $00
	add  b                                           ; $497a: $80
	inc  e                                           ; $497b: $1c
	inc  b                                           ; $497c: $04
	ld   [hl], $3e                                   ; $497d: $36 $3e
	ld   a, [hl-]                                    ; $497f: $3a
	ld   a, $5e                                      ; $4980: $3e $5e
	add  c                                           ; $4982: $81
	ld   a, [hl]                                     ; $4983: $7e
	db   $10                                         ; $4984: $10
	db   $d3                                         ; $4985: $d3
	nop                                              ; $4986: $00
	ldh  a, [rAUD1SWEEP]                             ; $4987: $f0 $10
	sbc  $e2                                         ; $4989: $de $e2
	ld   h, e                                        ; $498b: $63
	ld   a, h                                        ; $498c: $7c
	inc  [hl]                                        ; $498d: $34
	rrca                                             ; $498e: $0f
	and  [hl]                                        ; $498f: $a6
	pop  hl                                          ; $4990: $e1
	call nz, $f8fc                                   ; $4991: $c4 $fc $f8
	adc  [hl]                                        ; $4994: $8e
	pop  af                                          ; $4995: $f1
	add  e                                           ; $4996: $83
	nop                                              ; $4997: $00
	ld   a, [bc]                                     ; $4998: $0a
	ret  nz                                          ; $4999: $c0

	ld   b, b                                        ; $499a: $40
	ld   a, b                                        ; $499b: $78
	adc  b                                           ; $499c: $88

jr_017_499d:
	adc  a                                           ; $499d: $8f
	pop  af                                          ; $499e: $f1
	pop  de                                          ; $499f: $d1
	ld   a, $da                                      ; $49a0: $3e $da
	add  $fd                                         ; $49a2: $c6 $fd
	adc  [hl]                                        ; $49a4: $8e
	nop                                              ; $49a5: $00
	add  b                                           ; $49a6: $80
	ld   a, h                                        ; $49a7: $7c
	add  b                                           ; $49a8: $80
	xor  [hl]                                        ; $49a9: $ae
	add  b                                           ; $49aa: $80
	dec  e                                           ; $49ab: $1d
	add  b                                           ; $49ac: $80
	ld   c, $80                                      ; $49ad: $0e $80
	ld   e, a                                        ; $49af: $5f
	add  b                                           ; $49b0: $80
	cp   $80                                         ; $49b1: $fe $80
	ld   a, l                                        ; $49b3: $7d
	add  b                                           ; $49b4: $80
	xor  d                                           ; $49b5: $aa
	add  b                                           ; $49b6: $80
	ld   bc, $2a80                                   ; $49b7: $01 $80 $2a
	add  b                                           ; $49ba: $80
	dec  e                                           ; $49bb: $1d
	add  b                                           ; $49bc: $80
	xor  a                                           ; $49bd: $af
	add  b                                           ; $49be: $80
	rst  $38                                         ; $49bf: $ff
	add  b                                           ; $49c0: $80
	cp   a                                           ; $49c1: $bf
	add  b                                           ; $49c2: $80
	ld   d, l                                        ; $49c3: $55
	add  b                                           ; $49c4: $80
	ld   [$7780], sp                                 ; $49c5: $08 $80 $77
	add  b                                           ; $49c8: $80
	xor  d                                           ; $49c9: $aa
	add  h                                           ; $49ca: $84
	rst  $38                                         ; $49cb: $ff
	add  b                                           ; $49cc: $80
	rst  $28                                         ; $49cd: $ef
	add  b                                           ; $49ce: $80
	ld   b, l                                        ; $49cf: $45
	add  b                                           ; $49d0: $80
	xor  b                                           ; $49d1: $a8
	add  b                                           ; $49d2: $80
	push af                                          ; $49d3: $f5
	add  b                                           ; $49d4: $80
	add  d                                           ; $49d5: $82
	add  b                                           ; $49d6: $80
	nop                                              ; $49d7: $00
	add  b                                           ; $49d8: $80
	and  b                                           ; $49d9: $a0
	add  b                                           ; $49da: $80
	call nc, $fe80                                   ; $49db: $d4 $80 $fe
	add  b                                           ; $49de: $80
	ld   a, h                                        ; $49df: $7c
	ld   [bc], a                                     ; $49e0: $02
	xor  d                                           ; $49e1: $aa
	jp   c, $8000                                    ; $49e2: $da $00 $80

	db   $10                                         ; $49e5: $10
	add  b                                           ; $49e6: $80
	sbc  b                                           ; $49e7: $98
	rlca                                             ; $49e8: $07
	jr   nz, @-$46                                   ; $49e9: $20 $b8

	stop                                             ; $49eb: $10 $00
	db   $10                                         ; $49ed: $10
	sbc  b                                           ; $49ee: $98
	ld   [bc], a                                     ; $49ef: $02
	nop                                              ; $49f0: $00
	add  b                                           ; $49f1: $80
	ld   d, l                                        ; $49f2: $55
	ld   [$006f], sp                                 ; $49f3: $08 $6f $00
	ld   [hl+], a                                    ; $49f6: $22
	nop                                              ; $49f7: $00
	ld   [$0014], sp                                 ; $49f8: $08 $14 $00
	inc  d                                           ; $49fb: $14
	ld   a, [hl+]                                    ; $49fc: $2a
	add  b                                           ; $49fd: $80
	nop                                              ; $49fe: $00
	nop                                              ; $49ff: $00
	inc  d                                           ; $4a00: $14
	add  b                                           ; $4a01: $80
	nop                                              ; $4a02: $00
	inc  bc                                          ; $4a03: $03
	ld   [$8100], sp                                 ; $4a04: $08 $00 $81
	ld   b, b                                        ; $4a07: $40
	add  d                                           ; $4a08: $82
	nop                                              ; $4a09: $00
	ld   [bc], a                                     ; $4a0a: $02
	jr   nz, jr_017_4a0d                             ; $4a0b: $20 $00

jr_017_4a0d:
	ld   b, b                                        ; $4a0d: $40
	add  b                                           ; $4a0e: $80
	nop                                              ; $4a0f: $00
	ld   bc, $2040                                   ; $4a10: $01 $40 $20
	add  b                                           ; $4a13: $80
	nop                                              ; $4a14: $00
	dec  b                                           ; $4a15: $05
	ld   b, b                                        ; $4a16: $40
	adc  [hl]                                        ; $4a17: $8e
	ld   b, $17                                      ; $4a18: $06 $17
	nop                                              ; $4a1a: $00
	jr   nz, jr_017_499d                             ; $4a1b: $20 $80

	rrca                                             ; $4a1d: $0f
	ld   bc, $0d09                                   ; $4a1e: $01 $09 $0d
	add  c                                           ; $4a21: $81
	add  hl, bc                                      ; $4a22: $09
	ld   b, $0d                                      ; $4a23: $06 $0d
	ld   a, a                                        ; $4a25: $7f
	ccf                                              ; $4a26: $3f
	add  b                                           ; $4a27: $80
	ld   e, a                                        ; $4a28: $5f
	nop                                              ; $4a29: $00
	ld   e, h                                        ; $4a2a: $5c
	add  b                                           ; $4a2b: $80
	ld   [bc], a                                     ; $4a2c: $02
	add  b                                           ; $4a2d: $80
	cp   $01                                         ; $4a2e: $fe $01
	ld   h, $b6                                      ; $4a30: $26 $b6
	add  c                                           ; $4a32: $81
	ld   h, $00                                      ; $4a33: $26 $00
	or   l                                           ; $4a35: $b5
	add  b                                           ; $4a36: $80
	rst  $38                                         ; $4a37: $ff
	ld   bc, $ff00                                   ; $4a38: $01 $00 $ff
	add  l                                           ; $4a3b: $85
	nop                                              ; $4a3c: $00
	ld   bc, $007e                                   ; $4a3d: $01 $7e $00
	add  b                                           ; $4a40: $80
	ld   a, $00                                      ; $4a41: $3e $00
	add  c                                           ; $4a43: $81
	add  b                                           ; $4a44: $80
	rst  $38                                         ; $4a45: $ff
	ld   bc, $5c00                                   ; $4a46: $01 $00 $5c
	add  c                                           ; $4a49: $81
	ld   b, c                                        ; $4a4a: $41
	nop                                              ; $4a4b: $00
	ld   b, e                                        ; $4a4c: $43
	add  l                                           ; $4a4d: $85
	ld   b, c                                        ; $4a4e: $41
	add  c                                           ; $4a4f: $81
	ld   e, a                                        ; $4a50: $5f
	ld   b, $41                                      ; $4a51: $06 $41
	jr   jr_017_4a70                                 ; $4a53: $18 $1b

	inc  sp                                          ; $4a55: $33
	dec  sp                                          ; $4a56: $3b
	dec  de                                          ; $4a57: $1b
	dec  sp                                          ; $4a58: $3b
	add  d                                           ; $4a59: $82
	ld   a, e                                        ; $4a5a: $7b
	ld   c, $73                                      ; $4a5b: $0e $73
	ld   a, e                                        ; $4a5d: $7b
	ld   d, e                                        ; $4a5e: $53
	ld   a, e                                        ; $4a5f: $7b
	ld   e, e                                        ; $4a60: $5b
	ld   a, e                                        ; $4a61: $7b
	ld   a, b                                        ; $4a62: $78
	ld   a, [hl]                                     ; $4a63: $7e
	ld   a, d                                        ; $4a64: $7a
	ld   a, [hl]                                     ; $4a65: $7e
	halt                                             ; $4a66: $76
	ld   a, [hl]                                     ; $4a67: $7e
	ld   d, d                                        ; $4a68: $52
	ld   a, [hl]                                     ; $4a69: $7e
	ld   e, [hl]                                     ; $4a6a: $5e
	add  l                                           ; $4a6b: $85
	ld   a, [hl]                                     ; $4a6c: $7e
	nop                                              ; $4a6d: $00

jr_017_4a6e:
	xor  h                                           ; $4a6e: $ac
	add  b                                           ; $4a6f: $80

jr_017_4a70:
	ldh  [rAUD1LEN], a                               ; $4a70: $e0 $11
	db   $fc                                         ; $4a72: $fc
	sbc  h                                           ; $4a73: $9c
	cp   $e2                                         ; $4a74: $fe $e2
	cp   $8d                                         ; $4a76: $fe $8d
	adc  a                                           ; $4a78: $8f
	add  b                                           ; $4a79: $80
	ldh  a, [$e0]                                    ; $4a7a: $f0 $e0
	sbc  $ca                                         ; $4a7c: $de $ca
	add  $c2                                         ; $4a7e: $c6 $c2
	ldh  a, [$e3]                                    ; $4a80: $f0 $e3
	sbc  d                                           ; $4a82: $9a
	adc  d                                           ; $4a83: $8a
	add  b                                           ; $4a84: $80
	ldh  [c], a                                      ; $4a85: $e2
	add  c                                           ; $4a86: $81
	ei                                               ; $4a87: $fb
	ld   b, $9b                                      ; $4a88: $06 $9b
	ei                                               ; $4a8a: $fb
	add  a                                           ; $4a8b: $87
	sbc  a                                           ; $4a8c: $9f
	add  d                                           ; $4a8d: $82
	db   $e3                                         ; $4a8e: $e3
	sbc  [hl]                                        ; $4a8f: $9e
	add  e                                           ; $4a90: $83

jr_017_4a91:
	nop                                              ; $4a91: $00
	inc  b                                           ; $4a92: $04
	ld   b, b                                        ; $4a93: $40
	ret  nz                                          ; $4a94: $c0

	adc  b                                           ; $4a95: $88
	ld   hl, sp-$10                                  ; $4a96: $f8 $f0
	add  b                                           ; $4a98: $80
	cp   $03                                         ; $4a99: $fe $03

jr_017_4a9b:
	rst  $38                                         ; $4a9b: $ff
	ccf                                              ; $4a9c: $3f
	rst  $38                                         ; $4a9d: $ff
	ccf                                              ; $4a9e: $3f
	add  c                                           ; $4a9f: $81
	nop                                              ; $4aa0: $00
	nop                                              ; $4aa1: $00
	db   $10                                         ; $4aa2: $10
	add  [hl]                                        ; $4aa3: $86
	ld   [$8800], sp                                 ; $4aa4: $08 $00 $88
	add  b                                           ; $4aa7: $80
	ret  z                                           ; $4aa8: $c8

	nop                                              ; $4aa9: $00
	sbc  b                                           ; $4aaa: $98
	adc  c                                           ; $4aab: $89
	nop                                              ; $4aac: $00
	nop                                              ; $4aad: $00
	ld   c, $81                                      ; $4aae: $0e $81
	ld   b, $00                                      ; $4ab0: $06 $00
	ld   [$0084], sp                                 ; $4ab2: $08 $84 $00
	add  b                                           ; $4ab5: $80
	ld   bc, $0380                                   ; $4ab6: $01 $80 $03
	ld   bc, $e007                                   ; $4ab9: $01 $07 $e0
	add  b                                           ; $4abc: $80
	ld   h, b                                        ; $4abd: $60
	ld   bc, $8067                                   ; $4abe: $01 $67 $80
	add  h                                           ; $4ac1: $84
	nop                                              ; $4ac2: $00
	add  e                                           ; $4ac3: $83
	rst  $38                                         ; $4ac4: $ff
	add  c                                           ; $4ac5: $81
	nop                                              ; $4ac6: $00
	ld   a, [de]                                     ; $4ac7: $1a
	rst  $38                                         ; $4ac8: $ff
	rst  $20                                         ; $4ac9: $e7
	jp   hl                                          ; $4aca: $e9


	ldh  a, [c]                                      ; $4acb: $f2
	di                                               ; $4acc: $f3
	call nc, $83c7                                   ; $4acd: $d4 $c7 $83
	and  b                                           ; $4ad0: $a0
	ret  nz                                          ; $4ad1: $c0

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4ad2: $cf
	rst  $10                                         ; $4ad3: $d7
	sbc  a                                           ; $4ad4: $9f
	nop                                              ; $4ad5: $00
	add  a                                           ; $4ad6: $87
	ld   bc, $3f3e                                   ; $4ad7: $01 $3e $3f
	rst  $38                                         ; $4ada: $ff
	nop                                              ; $4adb: $00
	rst  $38                                         ; $4adc: $ff
	inc  c                                           ; $4add: $0c
	rst  $30                                         ; $4ade: $f7
	inc  b                                           ; $4adf: $04
	rst  $38                                         ; $4ae0: $ff
	rra                                              ; $4ae1: $1f
	ldh  [$80], a                                    ; $4ae2: $e0 $80
	rst  $38                                         ; $4ae4: $ff
	inc  b                                           ; $4ae5: $04
	ld   bc, $feff                                   ; $4ae6: $01 $ff $fe
	jr   nc, jr_017_4a9b                             ; $4ae9: $30 $b0

	add  b                                           ; $4aeb: $80
	jr   z, jr_017_4a6e                              ; $4aec: $28 $80

	ld   e, l                                        ; $4aee: $5d
	add  b                                           ; $4aef: $80
	ld   a, [hl]                                     ; $4af0: $7e
	add  b                                           ; $4af1: $80
	ld   [hl], h                                     ; $4af2: $74
	add  b                                           ; $4af3: $80
	ld   a, [hl+]                                    ; $4af4: $2a
	add  e                                           ; $4af5: $83
	nop                                              ; $4af6: $00
	nop                                              ; $4af7: $00
	add  b                                           ; $4af8: $80
	add  b                                           ; $4af9: $80
	nop                                              ; $4afa: $00
	nop                                              ; $4afb: $00
	ld   bc, $0081                                   ; $4afc: $01 $81 $00
	add  c                                           ; $4aff: $81
	ld   [bc], a                                     ; $4b00: $02
	add  h                                           ; $4b01: $84
	ld   b, $00                                      ; $4b02: $06 $00
	db   $fc                                         ; $4b04: $fc
	add  b                                           ; $4b05: $80
	ccf                                              ; $4b06: $3f
	ld   bc, $2e38                                   ; $4b07: $01 $38 $2e
	add  c                                           ; $4b0a: $81
	jr   c, jr_017_4b0f                              ; $4b0b: $38 $02

	add  hl, hl                                      ; $4b0d: $29
	ccf                                              ; $4b0e: $3f

jr_017_4b0f:
	jr   c, jr_017_4a91                              ; $4b0f: $38 $80

	ccf                                              ; $4b11: $3f
	inc  bc                                          ; $4b12: $03
	jr   c, jr_017_4b43                              ; $4b13: $38 $2e

	jr   c, jr_017_4b45                              ; $4b15: $38 $2e

	add  b                                           ; $4b17: $80
	rst  $38                                         ; $4b18: $ff
	ld   bc, $ee88                                   ; $4b19: $01 $88 $ee
	add  c                                           ; $4b1c: $81
	adc  b                                           ; $4b1d: $88
	ld   [bc], a                                     ; $4b1e: $02
	sbc  c                                           ; $4b1f: $99
	rst  $38                                         ; $4b20: $ff
	adc  b                                           ; $4b21: $88
	add  b                                           ; $4b22: $80
	rst  $38                                         ; $4b23: $ff
	inc  bc                                          ; $4b24: $03
	adc  b                                           ; $4b25: $88
	xor  $88                                         ; $4b26: $ee $88
	xor  $80                                         ; $4b28: $ee $80
	rst  $38                                         ; $4b2a: $ff
	dec  c                                           ; $4b2b: $0d
	adc  b                                           ; $4b2c: $88
	xor  $88                                         ; $4b2d: $ee $88
	adc  [hl]                                        ; $4b2f: $8e
	add  b                                           ; $4b30: $80
	and  b                                           ; $4b31: $a0
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4b32: $cf
	adc  a                                           ; $4b33: $8f
	and  b                                           ; $4b34: $a0
	xor  a                                           ; $4b35: $af
	ld   l, a                                        ; $4b36: $6f
	ld   c, h                                        ; $4b37: $4c
	db   $ec                                         ; $4b38: $ec
	add  b                                           ; $4b39: $80
	add  b                                           ; $4b3a: $80
	ld   e, a                                        ; $4b3b: $5f
	inc  bc                                          ; $4b3c: $03
	ld   c, c                                        ; $4b3d: $49
	ld   c, a                                        ; $4b3e: $4f
	ld   c, c                                        ; $4b3f: $49
	ld   c, a                                        ; $4b40: $4f
	add  b                                           ; $4b41: $80
	ld   b, c                                        ; $4b42: $41

jr_017_4b43:
	add  b                                           ; $4b43: $80
	ld   e, a                                        ; $4b44: $5f

jr_017_4b45:
	nop                                              ; $4b45: $00
	ld   b, c                                        ; $4b46: $41
	add  b                                           ; $4b47: $80
	ld   e, a                                        ; $4b48: $5f
	nop                                              ; $4b49: $00
	ld   d, b                                        ; $4b4a: $50
	add  b                                           ; $4b4b: $80
	ld   d, c                                        ; $4b4c: $51
	add  l                                           ; $4b4d: $85
	ld   a, e                                        ; $4b4e: $7b
	inc  bc                                          ; $4b4f: $03
	ld   d, e                                        ; $4b50: $53
	ld   a, e                                        ; $4b51: $7b
	ld   h, c                                        ; $4b52: $61
	ld   h, e                                        ; $4b53: $63
	add  b                                           ; $4b54: $80
	inc  bc                                          ; $4b55: $03
	add  b                                           ; $4b56: $80
	nop                                              ; $4b57: $00
	dec  b                                           ; $4b58: $05
	ld   d, d                                        ; $4b59: $52
	ld   a, [hl]                                     ; $4b5a: $7e
	ld   a, d                                        ; $4b5b: $7a
	ld   a, [hl]                                     ; $4b5c: $7e
	ld   d, h                                        ; $4b5d: $54
	ld   a, h                                        ; $4b5e: $7c
	add  b                                           ; $4b5f: $80
	ld   h, b                                        ; $4b60: $60
	add  d                                           ; $4b61: $82
	nop                                              ; $4b62: $00
	inc  b                                           ; $4b63: $04
	inc  b                                           ; $4b64: $04
	rlca                                             ; $4b65: $07
	adc  e                                           ; $4b66: $8b
	ld   hl, sp-$77                                  ; $4b67: $f8 $89
	add  c                                           ; $4b69: $81
	ld   sp, hl                                      ; $4b6a: $f9
	add  b                                           ; $4b6b: $80
	ld   a, c                                        ; $4b6c: $79
	add  d                                           ; $4b6d: $82
	ld   sp, hl                                      ; $4b6e: $f9
	add  b                                           ; $4b6f: $80
	ld   a, c                                        ; $4b70: $79
	add  b                                           ; $4b71: $80
	ld   sp, hl                                      ; $4b72: $f9
	add  b                                           ; $4b73: $80
	sbc  c                                           ; $4b74: $99
	ld   bc, $cab0                                   ; $4b75: $01 $b0 $ca

jr_017_4b78:
	add  h                                           ; $4b78: $84
	jp   nz, $fa0a                                   ; $4b79: $c2 $0a $fa

	ldh  a, [c]                                      ; $4b7c: $f2
	or   d                                           ; $4b7d: $b2
	cp   $c6                                         ; $4b7e: $fe $c6
	cp   $89                                         ; $4b80: $fe $89
	adc  a                                           ; $4b82: $8f
	add  d                                           ; $4b83: $82
	jp   c, $84fa                                    ; $4b84: $da $fa $84

	jp   z, $cb00                                    ; $4b87: $ca $00 $cb

	add  b                                           ; $4b8a: $80
	db   $eb                                         ; $4b8b: $eb
	jr   jr_017_4b78                                 ; $4b8c: $18 $ea

	ei                                               ; $4b8e: $fb
	adc  e                                           ; $4b8f: $8b
	ei                                               ; $4b90: $fb
	rrca                                             ; $4b91: $0f
	rst  $38                                         ; $4b92: $ff
	ld   hl, sp-$61                                  ; $4b93: $f8 $9f
	rst  JumpTable                                         ; $4b95: $df
	sub  e                                           ; $4b96: $93
	sbc  e                                           ; $4b97: $9b
	sub  d                                           ; $4b98: $92
	sub  e                                           ; $4b99: $93
	sub  d                                           ; $4b9a: $92
	jp   nc, $3af2                                   ; $4b9b: $d2 $f2 $3a

	cp   $c3                                         ; $4b9e: $fe $c3
	rst  $38                                         ; $4ba0: $ff
	call z, $c8e8                                    ; $4ba1: $cc $e8 $c8
	add  sp, $28                                     ; $4ba4: $e8 $28
	add  b                                           ; $4ba6: $80
	add  sp, -$7f                                    ; $4ba7: $e8 $81
	ld   c, b                                        ; $4ba9: $48
	ld   bc, $486f                                   ; $4baa: $01 $6f $48
	add  b                                           ; $4bad: $80
	ld   c, e                                        ; $4bae: $4b
	inc  b                                           ; $4baf: $04
	ld   c, b                                        ; $4bb0: $48
	ret  z                                           ; $4bb1: $c8

	scf                                              ; $4bb2: $37
	ld   b, $0e                                      ; $4bb3: $06 $0e
	add  c                                           ; $4bb5: $81
	ld   a, a                                        ; $4bb6: $7f
	add  b                                           ; $4bb7: $80
	nop                                              ; $4bb8: $00
	dec  b                                           ; $4bb9: $05
	ld   b, b                                        ; $4bba: $40
	rra                                              ; $4bbb: $1f
	sbc  $02                                         ; $4bbc: $de $02
	cp   $fd                                         ; $4bbe: $fe $fd
	add  b                                           ; $4bc0: $80
	nop                                              ; $4bc1: $00
	dec  b                                           ; $4bc2: $05
	ld   a, b                                        ; $4bc3: $78
	ld   h, [hl]                                     ; $4bc4: $66
	rst  $20                                         ; $4bc5: $e7
	cp   $f8                                         ; $4bc6: $fe $f8
	rst  $38                                         ; $4bc8: $ff
	add  b                                           ; $4bc9: $80
	rlca                                             ; $4bca: $07
	ld   a, [bc]                                     ; $4bcb: $0a
	ld   [$2cb8], sp                                 ; $4bcc: $08 $b8 $2c
	cpl                                              ; $4bcf: $2f
	inc  c                                           ; $4bd0: $0c
	cp   h                                           ; $4bd1: $bc
	sbc  h                                           ; $4bd2: $9c
	cpl                                              ; $4bd3: $2f
	or   b                                           ; $4bd4: $b0
	ld   c, c                                        ; $4bd5: $49
	ld   l, l                                        ; $4bd6: $6d
	add  c                                           ; $4bd7: $81
	ld   c, c                                        ; $4bd8: $49
	nop                                              ; $4bd9: $00
	adc  l                                           ; $4bda: $8d
	add  c                                           ; $4bdb: $81
	rst  $38                                         ; $4bdc: $ff
	inc  bc                                          ; $4bdd: $03
	rra                                              ; $4bde: $1f
	add  hl, bc                                      ; $4bdf: $09
	call $80e9                                       ; $4be0: $cd $e9 $80
	ret                                              ; $4be3: $c9


	ld   b, $b8                                      ; $4be4: $06 $b8
	ld   l, d                                        ; $4be6: $6a
	nop                                              ; $4be7: $00
	rst  $38                                         ; $4be8: $ff
	ld   b, b                                        ; $4be9: $40
	cp   a                                           ; $4bea: $bf
	nop                                              ; $4beb: $00
	add  b                                           ; $4bec: $80
	rst  $38                                         ; $4bed: $ff
	nop                                              ; $4bee: $00
	db   $10                                         ; $4bef: $10
	add  b                                           ; $4bf0: $80
	rst  JumpTable                                         ; $4bf1: $df
	nop                                              ; $4bf2: $00
	db   $10                                         ; $4bf3: $10
	add  b                                           ; $4bf4: $80
	rst  $38                                         ; $4bf5: $ff
	nop                                              ; $4bf6: $00
	nop                                              ; $4bf7: $00
	add  b                                           ; $4bf8: $80
	inc  b                                           ; $4bf9: $04
	rlca                                             ; $4bfa: $07
	nop                                              ; $4bfb: $00
	rst  $38                                         ; $4bfc: $ff
	ei                                               ; $4bfd: $fb
	inc  d                                           ; $4bfe: $14
	ret  nc                                          ; $4bff: $d0

	rst  $38                                         ; $4c00: $ff
	ccf                                              ; $4c01: $3f
	nop                                              ; $4c02: $00
	add  b                                           ; $4c03: $80
	ldh  a, [rP1]                                    ; $4c04: $f0 $00
	nop                                              ; $4c06: $00
	add  b                                           ; $4c07: $80
	rst  $38                                         ; $4c08: $ff
	ld   bc, $8404                                   ; $4c09: $01 $04 $84
	adc  c                                           ; $4c0c: $89
	nop                                              ; $4c0d: $00
	inc  b                                           ; $4c0e: $04
	ld   c, $08                                      ; $4c0f: $0e $08
	dec  c                                           ; $4c11: $0d
	nop                                              ; $4c12: $00
	adc  [hl]                                        ; $4c13: $8e
	add  a                                           ; $4c14: $87
	ld   b, $80                                      ; $4c15: $06 $80
	ld   c, $00                                      ; $4c17: $0e $00
	ld   d, $81                                      ; $4c19: $16 $81
	ld   e, $04                                      ; $4c1b: $1e $04
	ldh  [c], a                                      ; $4c1d: $e2
	jr   c, jr_017_4c48                              ; $4c1e: $38 $28

	ld   a, $38                                      ; $4c20: $3e $38
	add  b                                           ; $4c22: $80
	ccf                                              ; $4c23: $3f
	ld   bc, $2e38                                   ; $4c24: $01 $38 $2e
	add  c                                           ; $4c27: $81
	jr   c, jr_017_4c2a                              ; $4c28: $38 $00

jr_017_4c2a:
	ld   l, $80                                      ; $4c2a: $2e $80
	jr   c, @+$03                                    ; $4c2c: $38 $01

	ld   a, $58                                      ; $4c2e: $3e $58
	add  b                                           ; $4c30: $80
	adc  b                                           ; $4c31: $88
	ld   bc, $88ee                                   ; $4c32: $01 $ee $88
	add  b                                           ; $4c35: $80
	cp   $03                                         ; $4c36: $fe $03
	add  b                                           ; $4c38: $80
	ret  nz                                          ; $4c39: $c0

	add  b                                           ; $4c3a: $80
	ret  nz                                          ; $4c3b: $c0

	add  c                                           ; $4c3c: $81
	nop                                              ; $4c3d: $00
	inc  b                                           ; $4c3e: $04
	ld   [$690e], sp                                 ; $4c3f: $08 $0e $69
	db   $ec                                         ; $4c42: $ec
	ld   l, h                                        ; $4c43: $6c
	add  c                                           ; $4c44: $81
	db   $ec                                         ; $4c45: $ec
	ld   [bc], a                                     ; $4c46: $02
	add  e                                           ; $4c47: $83

jr_017_4c48:
	add  b                                           ; $4c48: $80
	nop                                              ; $4c49: $00
	add  b                                           ; $4c4a: $80
	ld   l, a                                        ; $4c4b: $6f
	dec  b                                           ; $4c4c: $05
	ret  nz                                          ; $4c4d: $c0

	xor  a                                           ; $4c4e: $af
	rst  $28                                         ; $4c4f: $ef
	ld   l, a                                        ; $4c50: $6f
	rst  $28                                         ; $4c51: $ef
	ld   e, b                                        ; $4c52: $58
	add  b                                           ; $4c53: $80
	ld   d, h                                        ; $4c54: $54
	add  b                                           ; $4c55: $80
	ld   d, e                                        ; $4c56: $53
	rlca                                             ; $4c57: $07
	ld   d, h                                        ; $4c58: $54
	ld   c, a                                        ; $4c59: $4f
	ld   b, e                                        ; $4c5a: $43
	ld   b, b                                        ; $4c5b: $40
	ld   e, h                                        ; $4c5c: $5c
	ld   e, l                                        ; $4c5d: $5d
	ld   b, c                                        ; $4c5e: $41
	ld   e, [hl]                                     ; $4c5f: $5e
	add  c                                           ; $4c60: $81
	ld   e, a                                        ; $4c61: $5f
	dec  b                                           ; $4c62: $05
	db   $10                                         ; $4c63: $10
	rra                                              ; $4c64: $1f
	ld   l, $e0                                      ; $4c65: $2e $e0
	rst  JumpTable                                         ; $4c67: $df
	rra                                              ; $4c68: $1f
	add  b                                           ; $4c69: $80
	ldh  [$80], a                                    ; $4c6a: $e0 $80
	inc  c                                           ; $4c6c: $0c
	add  b                                           ; $4c6d: $80
	ld   a, h                                        ; $4c6e: $7c
	add  b                                           ; $4c6f: $80
	ld   l, h                                        ; $4c70: $6c
	add  b                                           ; $4c71: $80
	ld   d, h                                        ; $4c72: $54
	add  b                                           ; $4c73: $80
	rlca                                             ; $4c74: $07
	add  b                                           ; $4c75: $80
	ld   hl, sp-$80                                  ; $4c76: $f8 $80
	nop                                              ; $4c78: $00
	ld   b, $24                                      ; $4c79: $06 $24
	inc  a                                           ; $4c7b: $3c
	ld   a, [hl]                                     ; $4c7c: $7e
	ld   h, [hl]                                     ; $4c7d: $66
	ld   e, b                                        ; $4c7e: $58
	ld   e, d                                        ; $4c7f: $5a
	ld   a, [de]                                     ; $4c80: $1a
	add  c                                           ; $4c81: $81
	ld   e, d                                        ; $4c82: $5a
	ld   [bc], a                                     ; $4c83: $02
	dec  bc                                          ; $4c84: $0b
	add  hl, bc                                      ; $4c85: $09
	ld   e, c                                        ; $4c86: $59
	add  b                                           ; $4c87: $80
	add  hl, bc                                      ; $4c88: $09
	add  c                                           ; $4c89: $81
	add  hl, de                                      ; $4c8a: $19
	add  d                                           ; $4c8b: $82
	ld   e, c                                        ; $4c8c: $59
	add  c                                           ; $4c8d: $81
	nop                                              ; $4c8e: $00
	rlca                                             ; $4c8f: $07
	ld   e, e                                        ; $4c90: $5b
	set  6, b                                        ; $4c91: $cb $f0
	ldh  [$fe], a                                    ; $4c93: $e0 $fe
	or   $ce                                         ; $4c95: $f6 $ce
	add  $83                                         ; $4c97: $c6 $83
	jp   nz, Jump_017_4282                           ; $4c99: $c2 $82 $42

	rlca                                             ; $4c9c: $07
	call c, $a39f                                    ; $4c9d: $dc $9f $a3
	db   $e3                                         ; $4ca0: $e3
	jp   nz, $e9fa                                   ; $4ca1: $c2 $fa $e9

	ret  c                                           ; $4ca4: $d8

	add  [hl]                                        ; $4ca5: $86
	jp   z, Jump_017_570a                            ; $4ca6: $ca $0a $57

	rst  $38                                         ; $4ca9: $ff
	pop  hl                                          ; $4caa: $e1
	rst  $38                                         ; $4cab: $ff
	cp   $3f                                         ; $4cac: $fe $3f
	cp   e                                           ; $4cae: $bb
	ld   h, $a3                                      ; $4caf: $26 $a3
	ld   [hl+], a                                    ; $4cb1: $22
	and  d                                           ; $4cb2: $a2
	add  e                                           ; $4cb3: $83
	ld   [hl+], a                                    ; $4cb4: $22
	ld   bc, $cb68                                   ; $4cb5: $01 $68 $cb
	add  b                                           ; $4cb8: $80
	ret  z                                           ; $4cb9: $c8

	inc  bc                                          ; $4cba: $03

jr_017_4cbb:
	add  hl, bc                                      ; $4cbb: $09
	ret                                              ; $4cbc: $c9


	ret  z                                           ; $4cbd: $c8

	ld   c, b                                        ; $4cbe: $48
	add  b                                           ; $4cbf: $80
	ld   c, d                                        ; $4cc0: $4a
	nop                                              ; $4cc1: $00
	ld   c, b                                        ; $4cc2: $48
	add  e                                           ; $4cc3: $83
	ld   c, d                                        ; $4cc4: $4a
	ld   bc, $febc                                   ; $4cc5: $01 $bc $fe
	add  b                                           ; $4cc8: $80
	nop                                              ; $4cc9: $00
	add  b                                           ; $4cca: $80
	db   $fc                                         ; $4ccb: $fc
	ld   bc, $0100                                   ; $4ccc: $01 $00 $01
	add  b                                           ; $4ccf: $80
	add  [hl]                                        ; $4cd0: $86
	nop                                              ; $4cd1: $00
	nop                                              ; $4cd2: $00
	add  d                                           ; $4cd3: $82
	add  [hl]                                        ; $4cd4: $86
	add  hl, bc                                      ; $4cd5: $09
	cp   $60                                         ; $4cd6: $fe $60
	inc  l                                           ; $4cd8: $2c
	dec  c                                           ; $4cd9: $0d
	cp   a                                           ; $4cda: $bf
	sbc  b                                           ; $4cdb: $98
	daa                                              ; $4cdc: $27
	add  hl, sp                                      ; $4cdd: $39
	jr   nz, jr_017_4d13                             ; $4cde: $20 $33

	add  e                                           ; $4ce0: $83
	jr   nz, jr_017_4ce5                             ; $4ce1: $20 $02

	jr   z, jr_017_4d05                              ; $4ce3: $28 $20

jr_017_4ce5:
	ld   e, h                                        ; $4ce5: $5c
	add  b                                           ; $4ce6: $80
	rst  $38                                         ; $4ce7: $ff
	add  b                                           ; $4ce8: $80
	rst  JumpTable                                         ; $4ce9: $df
	dec  b                                           ; $4cea: $05
	jp   hl                                          ; $4ceb: $e9


	adc  l                                           ; $4cec: $8d
	ld   l, c                                        ; $4ced: $69
	ld   c, c                                        ; $4cee: $49
	add  hl, bc                                      ; $4cef: $09
	dec  c                                           ; $4cf0: $0d
	add  c                                           ; $4cf1: $81
	rra                                              ; $4cf2: $1f
	dec  c                                           ; $4cf3: $0d
	ld   e, a                                        ; $4cf4: $5f
	rra                                              ; $4cf5: $1f
	ld   [bc], a                                     ; $4cf6: $02
	rst  $38                                         ; $4cf7: $ff
	inc  c                                           ; $4cf8: $0c
	cp   $e5                                         ; $4cf9: $fe $e5
	db   $fd                                         ; $4cfb: $fd
	ld   d, b                                        ; $4cfc: $50
	ei                                               ; $4cfd: $fb
	inc  sp                                          ; $4cfe: $33
	or   $48                                         ; $4cff: $f6 $48
	adc  $80                                         ; $4d01: $ce $80
	add  b                                           ; $4d03: $80
	add  b                                           ; $4d04: $80

jr_017_4d05:
	nop                                              ; $4d05: $00
	ld   [de], a                                     ; $4d06: $12
	db   $10                                         ; $4d07: $10
	rla                                              ; $4d08: $17
	cpl                                              ; $4d09: $2f
	dec  sp                                          ; $4d0a: $3b
	rlca                                             ; $4d0b: $07
	rla                                              ; $4d0c: $17
	dec  hl                                          ; $4d0d: $2b
	ccf                                              ; $4d0e: $3f
	rlca                                             ; $4d0f: $07
	inc  de                                          ; $4d10: $13
	adc  l                                           ; $4d11: $8d
	rst  $30                                         ; $4d12: $f7

jr_017_4d13:
	ld   b, c                                        ; $4d13: $41
	add  hl, sp                                      ; $4d14: $39
	ld   bc, $7303                                   ; $4d15: $01 $03 $73
	ld   [$8005], sp                                 ; $4d18: $08 $05 $80
	ld   bc, $0000                                   ; $4d1b: $01 $00 $00
	add  b                                           ; $4d1e: $80
	ret  nz                                          ; $4d1f: $c0

	ld   bc, $0040                                   ; $4d20: $01 $40 $00
	add  c                                           ; $4d23: $81
	ld   b, b                                        ; $4d24: $40
	nop                                              ; $4d25: $00
	nop                                              ; $4d26: $00
	add  b                                           ; $4d27: $80
	add  hl, hl                                      ; $4d28: $29
	nop                                              ; $4d29: $00
	sub  a                                           ; $4d2a: $97
	add  a                                           ; $4d2b: $87
	ld   e, $03                                      ; $4d2c: $1e $03
	ld   a, [bc]                                     ; $4d2e: $0a
	ld   [bc], a                                     ; $4d2f: $02
	inc  bc                                          ; $4d30: $03
	nop                                              ; $4d31: $00
	add  b                                           ; $4d32: $80
	ld   b, b                                        ; $4d33: $40
	inc  b                                           ; $4d34: $04
	ei                                               ; $4d35: $fb
	inc  a                                           ; $4d36: $3c
	jr   z, jr_017_4d69                              ; $4d37: $28 $30

	jr   nz, jr_017_4cbb                             ; $4d39: $20 $80

	nop                                              ; $4d3b: $00
	add  e                                           ; $4d3c: $83
	jr   nz, jr_017_4d44                             ; $4d3d: $20 $05

	jp   c, $0306                                    ; $4d3f: $da $06 $03

	nop                                              ; $4d42: $00
	pop  af                                          ; $4d43: $f1

jr_017_4d44:
	ld   c, $80                                      ; $4d44: $0e $80
	nop                                              ; $4d46: $00
	nop                                              ; $4d47: $00
	db   $10                                         ; $4d48: $10
	add  c                                           ; $4d49: $81
	ld   e, $01                                      ; $4d4a: $1e $01
	db   $10                                         ; $4d4c: $10
	ld   e, $82                                      ; $4d4d: $1e $82
	nop                                              ; $4d4f: $00
	inc  b                                           ; $4d50: $04
	cp   $01                                         ; $4d51: $fe $01
	ld   d, e                                        ; $4d53: $53
	xor  h                                           ; $4d54: $ac
	xor  a                                           ; $4d55: $af
	add  e                                           ; $4d56: $83
	xor  h                                           ; $4d57: $ac
	ld   bc, $8083                                   ; $4d58: $01 $83 $80
	add  d                                           ; $4d5b: $82
	xor  a                                           ; $4d5c: $af
	add  b                                           ; $4d5d: $80
	add  b                                           ; $4d5e: $80
	ld   [bc], a                                     ; $4d5f: $02
	ld   d, b                                        ; $4d60: $50
	ld   d, c                                        ; $4d61: $51
	ld   e, l                                        ; $4d62: $5d
	add  e                                           ; $4d63: $83
	ld   d, c                                        ; $4d64: $51
	ld   bc, $414d                                   ; $4d65: $01 $4d $41
	add  d                                           ; $4d68: $82

jr_017_4d69:
	ld   e, a                                        ; $4d69: $5f
	add  b                                           ; $4d6a: $80
	ld   b, c                                        ; $4d6b: $41
	nop                                              ; $4d6c: $00
	ld   c, l                                        ; $4d6d: $4d
	adc  e                                           ; $4d6e: $8b
	ld   e, h                                        ; $4d6f: $5c
	inc  bc                                          ; $4d70: $03
	ld   d, l                                        ; $4d71: $55
	ld   b, l                                        ; $4d72: $45
	jr   jr_017_4dcf                                 ; $4d73: $18 $5a

	adc  d                                           ; $4d75: $8a
	ld   b, d                                        ; $4d76: $42
	add  b                                           ; $4d77: $80
	jp   nz, Jump_017_420d                           ; $4d78: $c2 $0d $42

	ld   e, e                                        ; $4d7b: $5b
	nop                                              ; $4d7c: $00
	ld   e, e                                        ; $4d7d: $5b
	rst  JumpTable                                         ; $4d7e: $df
	nop                                              ; $4d7f: $00
	rst  JumpTable                                         ; $4d80: $df
	rst  $38                                         ; $4d81: $ff
	ldh  [rIE], a                                    ; $4d82: $e0 $ff
	nop                                              ; $4d84: $00
	rst  $38                                         ; $4d85: $ff
	ld   e, $fe                                      ; $4d86: $1e $fe
	add  b                                           ; $4d88: $80
	ld   bc, $ff0b                                   ; $4d89: $01 $0b $ff
	ld   b, d                                        ; $4d8c: $42
	cp   l                                           ; $4d8d: $bd
	nop                                              ; $4d8e: $00
	ld   a, a                                        ; $4d8f: $7f
	rst  $38                                         ; $4d90: $ff
	ld   a, a                                        ; $4d91: $7f
	rst  $38                                         ; $4d92: $ff
	nop                                              ; $4d93: $00
	rst  $38                                         ; $4d94: $ff
	nop                                              ; $4d95: $00
	rst  $38                                         ; $4d96: $ff
	add  b                                           ; $4d97: $80
	ld   bc, $ff33                                   ; $4d98: $01 $33 $ff
	nop                                              ; $4d9b: $00
	add  d                                           ; $4d9c: $82
	jp   z, $00b6                                    ; $4d9d: $ca $b6 $00

	cp   $ff                                         ; $4da0: $fe $ff
	add  b                                           ; $4da2: $80
	rst  $38                                         ; $4da3: $ff
	nop                                              ; $4da4: $00
	rst  $38                                         ; $4da5: $ff
	add  b                                           ; $4da6: $80
	nop                                              ; $4da7: $00
	rst  $38                                         ; $4da8: $ff
	nop                                              ; $4da9: $00
	add  b                                           ; $4daa: $80
	rst  $38                                         ; $4dab: $ff
	ld   a, a                                        ; $4dac: $7f
	db   $e3                                         ; $4dad: $e3
	inc  e                                           ; $4dae: $1c
	nop                                              ; $4daf: $00
	cp   $ff                                         ; $4db0: $fe $ff
	nop                                              ; $4db2: $00
	rst  $38                                         ; $4db3: $ff
	ld   bc, $e0ff                                   ; $4db4: $01 $ff $e0
	rra                                              ; $4db7: $1f
	add  b                                           ; $4db8: $80
	rst  $38                                         ; $4db9: $ff
	ld   b, b                                        ; $4dba: $40
	ret  nz                                          ; $4dbb: $c0

	rst  $30                                         ; $4dbc: $f7
	jp   z, $1528                                    ; $4dbd: $ca $28 $15

	ld   bc, $01ff                                   ; $4dc0: $01 $ff $01
	rst  $38                                         ; $4dc3: $ff
	nop                                              ; $4dc4: $00
	rst  $38                                         ; $4dc5: $ff
	rlca                                             ; $4dc6: $07
	ld   hl, sp+$07                                  ; $4dc7: $f8 $07
	nop                                              ; $4dc9: $00
	db   $fc                                         ; $4dca: $fc
	rlca                                             ; $4dcb: $07
	inc  bc                                          ; $4dcc: $03
	rst  $38                                         ; $4dcd: $ff
	add  b                                           ; $4dce: $80

jr_017_4dcf:
	ld   d, l                                        ; $4dcf: $55
	add  b                                           ; $4dd0: $80
	rst  $38                                         ; $4dd1: $ff
	dec  c                                           ; $4dd2: $0d
	rlca                                             ; $4dd3: $07
	rst  $38                                         ; $4dd4: $ff
	rlca                                             ; $4dd5: $07
	rst  $38                                         ; $4dd6: $ff
	nop                                              ; $4dd7: $00
	rra                                              ; $4dd8: $1f
	add  c                                           ; $4dd9: $81
	ld   a, [hl]                                     ; $4dda: $7e
	ld   hl, $e9c2                                   ; $4ddb: $21 $c2 $e9
	xor  d                                           ; $4dde: $aa
	dec  d                                           ; $4ddf: $15
	ld   d, l                                        ; $4de0: $55
	add  b                                           ; $4de1: $80
	rst  $38                                         ; $4de2: $ff
	dec  bc                                          ; $4de3: $0b
	cp   $ff                                         ; $4de4: $fe $ff
	add  c                                           ; $4de6: $81
	cp   $1e                                         ; $4de7: $fe $1e
	pop  hl                                          ; $4de9: $e1
	sbc  [hl]                                        ; $4dea: $9e
	nop                                              ; $4deb: $00
	ldh  [c], a                                      ; $4dec: $e2
	inc  bc                                          ; $4ded: $03
	ld   d, h                                        ; $4dee: $54
	xor  d                                           ; $4def: $aa
	add  b                                           ; $4df0: $80
	ld   d, l                                        ; $4df1: $55
	add  b                                           ; $4df2: $80
	rst  $38                                         ; $4df3: $ff
	dec  c                                           ; $4df4: $0d
	ccf                                              ; $4df5: $3f
	rst  $38                                         ; $4df6: $ff
	ret  nz                                          ; $4df7: $c0

	rra                                              ; $4df8: $1f
	jr   @+$01                                       ; $4df9: $18 $ff

	ld   b, a                                        ; $4dfb: $47
	ld   a, a                                        ; $4dfc: $7f
	ccf                                              ; $4dfd: $3f
	rst  $38                                         ; $4dfe: $ff
	ld   b, l                                        ; $4dff: $45
	cp   l                                           ; $4e00: $bd
	ld   [bc], a                                     ; $4e01: $02
	adc  d                                           ; $4e02: $8a
	add  b                                           ; $4e03: $80
	adc  a                                           ; $4e04: $8f
	ld   [bc], a                                     ; $4e05: $02
	rrca                                             ; $4e06: $0f
	adc  a                                           ; $4e07: $8f
	rrca                                             ; $4e08: $0f
	add  e                                           ; $4e09: $83
	adc  a                                           ; $4e0a: $8f
	inc  bc                                          ; $4e0b: $03
	adc  [hl]                                        ; $4e0c: $8e
	adc  a                                           ; $4e0d: $8f
	inc  h                                           ; $4e0e: $24
	ld   d, h                                        ; $4e0f: $54
	add  b                                           ; $4e10: $80
	xor  d                                           ; $4e11: $aa
	add  d                                           ; $4e12: $82
	cp   $21                                         ; $4e13: $fe $21
	db   $fc                                         ; $4e15: $fc
	cp   $e8                                         ; $4e16: $fe $e8
	db   $fc                                         ; $4e18: $fc
	jp   nz, $a4fa                                   ; $4e19: $c2 $fa $a4

	db   $f4                                         ; $4e1c: $f4
	and  b                                           ; $4e1d: $a0
	ld   e, l                                        ; $4e1e: $5d
	ld   a, [hl+]                                    ; $4e1f: $2a
	cpl                                              ; $4e20: $2f
	ld   e, b                                        ; $4e21: $58
	ld   a, a                                        ; $4e22: $7f
	db   $10                                         ; $4e23: $10
	ld   a, a                                        ; $4e24: $7f
	add  hl, sp                                      ; $4e25: $39
	ld   l, [hl]                                     ; $4e26: $6e
	ld   l, a                                        ; $4e27: $6f
	ld   c, e                                        ; $4e28: $4b
	inc  bc                                          ; $4e29: $03
	ld   b, e                                        ; $4e2a: $43
	dec  bc                                          ; $4e2b: $0b
	add  hl, bc                                      ; $4e2c: $09
	ld   e, [hl]                                     ; $4e2d: $5e
	and  b                                           ; $4e2e: $a0
	nop                                              ; $4e2f: $00
	rst  $38                                         ; $4e30: $ff
	nop                                              ; $4e31: $00
	rst  $38                                         ; $4e32: $ff
	inc  d                                           ; $4e33: $14
	db   $f4                                         ; $4e34: $f4
	ld   b, b                                        ; $4e35: $40
	and  b                                           ; $4e36: $a0
	add  b                                           ; $4e37: $80
	db   $f4                                         ; $4e38: $f4
	add  b                                           ; $4e39: $80
	xor  d                                           ; $4e3a: $aa
	add  b                                           ; $4e3b: $80
	push af                                          ; $4e3c: $f5
	add  c                                           ; $4e3d: $81
	nop                                              ; $4e3e: $00
	ld   [bc], a                                     ; $4e3f: $02
	rst  $38                                         ; $4e40: $ff
	nop                                              ; $4e41: $00
	rst  $38                                         ; $4e42: $ff
	add  b                                           ; $4e43: $80
	dec  d                                           ; $4e44: $15
	add  b                                           ; $4e45: $80
	inc  bc                                          ; $4e46: $03
	add  b                                           ; $4e47: $80
	dec  b                                           ; $4e48: $05
	add  b                                           ; $4e49: $80
	nop                                              ; $4e4a: $00
	add  b                                           ; $4e4b: $80
	ld   bc, $0081                                   ; $4e4c: $01 $81 $00
	ld   bc, $00ff                                   ; $4e4f: $01 $ff $00
	add  c                                           ; $4e52: $81
	rst  $38                                         ; $4e53: $ff
	ld   [$ffe0], sp                                 ; $4e54: $08 $e0 $ff
	ld   h, e                                        ; $4e57: $63
	ld   a, a                                        ; $4e58: $7f
	xor  l                                           ; $4e59: $ad
	xor  a                                           ; $4e5a: $af
	ld   e, l                                        ; $4e5b: $5d
	ld   e, a                                        ; $4e5c: $5f
	inc  bc                                          ; $4e5d: $03
	add  b                                           ; $4e5e: $80
	nop                                              ; $4e5f: $00
	ld   e, $ff                                      ; $4e60: $1e $ff
	nop                                              ; $4e62: $00
	rst  $38                                         ; $4e63: $ff
	pop  bc                                          ; $4e64: $c1
	cp   $10                                         ; $4e65: $fe $10
	sbc  $cc                                         ; $4e67: $de $cc
	jp   nz, $f030                                   ; $4e69: $c2 $30 $f0

	ld   a, $fe                                      ; $4e6c: $3e $fe
	ld   e, a                                        ; $4e6e: $5f
	ld   b, e                                        ; $4e6f: $43
	ld   b, d                                        ; $4e70: $42
	ld   e, a                                        ; $4e71: $5f
	ld   b, c                                        ; $4e72: $41
	ld   e, a                                        ; $4e73: $5f
	add  b                                           ; $4e74: $80
	rst  $38                                         ; $4e75: $ff
	or   d                                           ; $4e76: $b2
	cp   $2f                                         ; $4e77: $fe $2f
	rrca                                             ; $4e79: $0f
	ld   c, h                                        ; $4e7a: $4c
	ld   a, a                                        ; $4e7b: $7f
	scf                                              ; $4e7c: $37
	rrca                                             ; $4e7d: $0f
	ld   a, e                                        ; $4e7e: $7b
	ld   a, h                                        ; $4e7f: $7c
	add  h                                           ; $4e80: $84
	ld   a, l                                        ; $4e81: $7d
	add  b                                           ; $4e82: $80
	dec  a                                           ; $4e83: $3d
	add  b                                           ; $4e84: $80
	pop  bc                                          ; $4e85: $c1
	dec  b                                           ; $4e86: $05
	inc  a                                           ; $4e87: $3c
	db   $fc                                         ; $4e88: $fc
	jp   $fcff                                       ; $4e89: $c3 $ff $fc


	ld   b, d                                        ; $4e8c: $42
	adc  b                                           ; $4e8d: $88
	jp   nz, Jump_017_4280                           ; $4e8e: $c2 $80 $42

	rlca                                             ; $4e91: $07
	add  d                                           ; $4e92: $82
	jp   nz, $0002                                   ; $4e93: $c2 $02 $00

	add  b                                           ; $4e96: $80
	rst  $38                                         ; $4e97: $ff
	ld   a, a                                        ; $4e98: $7f
	rst  $38                                         ; $4e99: $ff
	add  b                                           ; $4e9a: $80
	ldh  [rDIV], a                                   ; $4e9b: $e0 $04
	rra                                              ; $4e9d: $1f
	nop                                              ; $4e9e: $00
	db   $e4                                         ; $4e9f: $e4
	rlca                                             ; $4ea0: $07
	inc  bc                                          ; $4ea1: $03
	add  c                                           ; $4ea2: $81
	rst  $38                                         ; $4ea3: $ff
	dec  bc                                          ; $4ea4: $0b
	ld   a, a                                        ; $4ea5: $7f
	rst  $38                                         ; $4ea6: $ff
	ld   a, h                                        ; $4ea7: $7c
	db   $fc                                         ; $4ea8: $fc
	add  e                                           ; $4ea9: $83
	add  b                                           ; $4eaa: $80
	ld   a, [hl]                                     ; $4eab: $7e
	inc  bc                                          ; $4eac: $03
	sub  c                                           ; $4ead: $91
	rra                                              ; $4eae: $1f
	rrca                                             ; $4eaf: $0f
	rst  $38                                         ; $4eb0: $ff
	add  b                                           ; $4eb1: $80
	ldh  a, [$09]                                    ; $4eb2: $f0 $09
	rrca                                             ; $4eb4: $0f
	nop                                              ; $4eb5: $00
	rst  $38                                         ; $4eb6: $ff
	ldh  a, [rIF]                                    ; $4eb7: $f0 $0f
	nop                                              ; $4eb9: $00
	ld   hl, sp+$0f                                  ; $4eba: $f8 $0f
	rlca                                             ; $4ebc: $07
	rst  $38                                         ; $4ebd: $ff
	add  b                                           ; $4ebe: $80
	ld   hl, sp+$20                                  ; $4ebf: $f8 $20
	add  a                                           ; $4ec1: $87
	add  b                                           ; $4ec2: $80
	ld   a, b                                        ; $4ec3: $78
	add  b                                           ; $4ec4: $80
	inc  b                                           ; $4ec5: $04
	rlca                                             ; $4ec6: $07
	jp   $e000                                       ; $4ec7: $c3 $00 $e0


	ccf                                              ; $4eca: $3f
	inc  e                                           ; $4ecb: $1c
	db   $fc                                         ; $4ecc: $fc
	add  e                                           ; $4ecd: $83
	add  h                                           ; $4ece: $84
	ld   a, b                                        ; $4ecf: $78
	nop                                              ; $4ed0: $00
	add  h                                           ; $4ed1: $84
	rlca                                             ; $4ed2: $07
	ld   b, e                                        ; $4ed3: $43
	ld   a, a                                        ; $4ed4: $7f
	ccf                                              ; $4ed5: $3f
	rst  $38                                         ; $4ed6: $ff
	ld   a, h                                        ; $4ed7: $7c
	db   $fc                                         ; $4ed8: $fc
	ld   b, e                                        ; $4ed9: $43
	ret  nz                                          ; $4eda: $c0

	inc  a                                           ; $4edb: $3c
	nop                                              ; $4edc: $00
	jp   nz, $2103                                   ; $4edd: $c2 $03 $21

	ccf                                              ; $4ee0: $3f
	rra                                              ; $4ee1: $1f
	add  e                                           ; $4ee2: $83
	rst  $38                                         ; $4ee3: $ff
	ld   b, $3f                                      ; $4ee4: $06 $3f
	nop                                              ; $4ee6: $00
	jp   nz, $2103                                   ; $4ee7: $c2 $03 $21

	ccf                                              ; $4eea: $3f
	rra                                              ; $4eeb: $1f
	add  e                                           ; $4eec: $83
	rst  $38                                         ; $4eed: $ff
	ld   b, $fe                                      ; $4eee: $06 $fe
	rst  $38                                         ; $4ef0: $ff
	cp   $ff                                         ; $4ef1: $fe $ff
	rst  $28                                         ; $4ef3: $ef
	rra                                              ; $4ef4: $1f
	rrca                                             ; $4ef5: $0f
	add  l                                           ; $4ef6: $85
	rst  $38                                         ; $4ef7: $ff
	inc  b                                           ; $4ef8: $04
	ldh  [rIE], a                                    ; $4ef9: $e0 $ff
	rra                                              ; $4efb: $1f
	rst  $38                                         ; $4efc: $ff
	nop                                              ; $4efd: $00
	add  l                                           ; $4efe: $85
	rst  $38                                         ; $4eff: $ff
	ld   [$fff8], sp                                 ; $4f00: $08 $f8 $ff

Call_017_4f03:
	ld   hl, sp-$01                                  ; $4f03: $f8 $ff
	nop                                              ; $4f05: $00
	rst  $38                                         ; $4f06: $ff
	add  c                                           ; $4f07: $81
	rst  $38                                         ; $4f08: $ff
	ld   [hl], h                                     ; $4f09: $74
	add  b                                           ; $4f0a: $80
	rst  $38                                         ; $4f0b: $ff
	rra                                              ; $4f0c: $1f
	adc  a                                           ; $4f0d: $8f
	add  h                                           ; $4f0e: $84
	adc  a                                           ; $4f0f: $8f
	add  l                                           ; $4f10: $85
	adc  a                                           ; $4f11: $8f
	ld   a, [de]                                     ; $4f12: $1a
	sbc  [hl]                                        ; $4f13: $9e
	inc  e                                           ; $4f14: $1c
	sbc  l                                           ; $4f15: $9d
	ld   hl, $04b3                                   ; $4f16: $21 $b3 $04
	rla                                              ; $4f19: $17
	db   $10                                         ; $4f1a: $10
	rla                                              ; $4f1b: $17
	db   $eb                                         ; $4f1c: $eb
	db   $ec                                         ; $4f1d: $ec
	nop                                              ; $4f1e: $00
	sbc  a                                           ; $4f1f: $9f
	ret  c                                           ; $4f20: $d8

	ld   a, a                                        ; $4f21: $7f
	daa                                              ; $4f22: $27
	rst  $38                                         ; $4f23: $ff
	ldh  [$fe], a                                    ; $4f24: $e0 $fe
	db   $fc                                         ; $4f26: $fc
	cp   $3c                                         ; $4f27: $fe $3c
	ret  nz                                          ; $4f29: $c0

	ld   sp, hl                                      ; $4f2a: $f9
	ld   bc, $80f0                                   ; $4f2b: $01 $f0 $80
	dec  bc                                          ; $4f2e: $0b
	ld   [bc], a                                     ; $4f2f: $02
	adc  e                                           ; $4f30: $8b
	dec  bc                                          ; $4f31: $0b
	adc  e                                           ; $4f32: $8b
	add  b                                           ; $4f33: $80
	inc  bc                                          ; $4f34: $03
	add  hl, bc                                      ; $4f35: $09
	ld   a, e                                        ; $4f36: $7b
	ld   a, a                                        ; $4f37: $7f
	rlca                                             ; $4f38: $07
	ld   a, a                                        ; $4f39: $7f
	ld   a, b                                        ; $4f3a: $78
	ld   hl, sp-$80                                  ; $4f3b: $f8 $80
	rst  $38                                         ; $4f3d: $ff
	add  c                                           ; $4f3e: $81
	cp   $80                                         ; $4f3f: $fe $80
	db   $fc                                         ; $4f41: $fc
	add  b                                           ; $4f42: $80
	ld   a, [$fd80]                                  ; $4f43: $fa $80 $fd
	add  b                                           ; $4f46: $80
	ld   [bc], a                                     ; $4f47: $02
	ld   b, $f4                                      ; $4f48: $06 $f4
	rst  $38                                         ; $4f4a: $ff
	dec  bc                                          ; $4f4b: $0b
	nop                                              ; $4f4c: $00
	di                                               ; $4f4d: $f3
	rst  $38                                         ; $4f4e: $ff
	inc  c                                           ; $4f4f: $0c
	add  a                                           ; $4f50: $87
	nop                                              ; $4f51: $00
	rrca                                             ; $4f52: $0f
	inc  bc                                          ; $4f53: $03
	rst  $38                                         ; $4f54: $ff
	db   $fc                                         ; $4f55: $fc
	jr   nz, jr_017_4fb7                             ; $4f56: $20 $5f

	rst  $38                                         ; $4f58: $ff
	xor  a                                           ; $4f59: $af
	cpl                                              ; $4f5a: $2f
	jr   jr_017_4f7c                                 ; $4f5b: $18 $1f

	inc  l                                           ; $4f5d: $2c
	dec  hl                                          ; $4f5e: $2b
	ld   b, b                                        ; $4f5f: $40
	ld   e, a                                        ; $4f60: $5f
	jr   jr_017_4f6a                                 ; $4f61: $18 $07

	add  b                                           ; $4f63: $80
	adc  d                                           ; $4f64: $8a
	add  b                                           ; $4f65: $80
	ld   bc, $9f13                                   ; $4f66: $01 $13 $9f
	rst  $38                                         ; $4f69: $ff

jr_017_4f6a:
	adc  h                                           ; $4f6a: $8c
	rst  $38                                         ; $4f6b: $ff
	db   $d3                                         ; $4f6c: $d3
	rst  $38                                         ; $4f6d: $ff
	pop  bc                                          ; $4f6e: $c1
	rst  $38                                         ; $4f6f: $ff
	add  $ff                                         ; $4f70: $c6 $ff
	ld   b, d                                        ; $4f72: $42
	rst  $38                                         ; $4f73: $ff
	dec  b                                           ; $4f74: $05
	rst  $38                                         ; $4f75: $ff
	ld   b, $7f                                      ; $4f76: $06 $7f
	add  h                                           ; $4f78: $84
	rst  $38                                         ; $4f79: $ff
	ld   b, e                                        ; $4f7a: $43
	pop  bc                                          ; $4f7b: $c1

jr_017_4f7c:
	add  b                                           ; $4f7c: $80
	ld   hl, sp-$80                                  ; $4f7d: $f8 $80
	rst  $38                                         ; $4f7f: $ff
	ld   [de], a                                     ; $4f80: $12
	ld   a, a                                        ; $4f81: $7f
	rst  $38                                         ; $4f82: $ff
	ld   l, a                                        ; $4f83: $6f
	rst  $38                                         ; $4f84: $ff
	db   $eb                                         ; $4f85: $eb
	rst  $38                                         ; $4f86: $ff
	dec  b                                           ; $4f87: $05
	rst  $38                                         ; $4f88: $ff
	ld   bc, $0fff                                   ; $4f89: $01 $ff $0f
	ldh  a, [rIF]                                    ; $4f8c: $f0 $0f
	nop                                              ; $4f8e: $00
	ldh  a, [rP1]                                    ; $4f8f: $f0 $00
	ld   [$070f], sp                                 ; $4f91: $08 $0f $07
	add  c                                           ; $4f94: $81
	rst  $38                                         ; $4f95: $ff
	ld   [bc], a                                     ; $4f96: $02
	ld   a, [$faff]                                  ; $4f97: $fa $ff $fa
	add  b                                           ; $4f9a: $80
	rst  $38                                         ; $4f9b: $ff
	add  b                                           ; $4f9c: $80
	nop                                              ; $4f9d: $00
	inc  bc                                          ; $4f9e: $03
	rrca                                             ; $4f9f: $0f
	adc  a                                           ; $4fa0: $8f
	rst  $38                                         ; $4fa1: $ff
	ld   a, a                                        ; $4fa2: $7f
	add  e                                           ; $4fa3: $83
	rst  $38                                         ; $4fa4: $ff
	ld   b, $20                                      ; $4fa5: $06 $20
	rst  $38                                         ; $4fa7: $ff
	rst  JumpTable                                         ; $4fa8: $df
	nop                                              ; $4fa9: $00
	ld   a, a                                        ; $4faa: $7f
	rst  $38                                         ; $4fab: $ff
	ld   a, a                                        ; $4fac: $7f
	add  c                                           ; $4fad: $81
	rst  $38                                         ; $4fae: $ff
	add  b                                           ; $4faf: $80
	ldh  a, [$82]                                    ; $4fb0: $f0 $82
	rst  $38                                         ; $4fb2: $ff
	inc  b                                           ; $4fb3: $04
	nop                                              ; $4fb4: $00
	rst  $38                                         ; $4fb5: $ff
	pop  af                                          ; $4fb6: $f1

jr_017_4fb7:
	ccf                                              ; $4fb7: $3f
	adc  $81                                         ; $4fb8: $ce $81
	rst  $38                                         ; $4fba: $ff
	inc  bc                                          ; $4fbb: $03
	sub  b                                           ; $4fbc: $90
	rst  $38                                         ; $4fbd: $ff
	ld   l, a                                        ; $4fbe: $6f
	nop                                              ; $4fbf: $00
	add  b                                           ; $4fc0: $80
	rst  $38                                         ; $4fc1: $ff
	rlca                                             ; $4fc2: $07
	add  b                                           ; $4fc3: $80
	rst  $38                                         ; $4fc4: $ff
	rra                                              ; $4fc5: $1f
	ldh  [$80], a                                    ; $4fc6: $e0 $80
	rst  $38                                         ; $4fc8: $ff
	nop                                              ; $4fc9: $00
	rst  $38                                         ; $4fca: $ff
	add  b                                           ; $4fcb: $80
	db   $fc                                         ; $4fcc: $fc
	ld   a, [de]                                     ; $4fcd: $1a
	nop                                              ; $4fce: $00
	rst  $38                                         ; $4fcf: $ff
	jp   $fc3f                                       ; $4fd0: $c3 $3f $fc


	rst  $38                                         ; $4fd3: $ff
	jr   @+$01                                       ; $4fd4: $18 $ff

	and  $09                                         ; $4fd6: $e6 $09
	ld   [$2fff], sp                                 ; $4fd8: $08 $ff $2f
	rst  $38                                         ; $4fdb: $ff
	inc  l                                           ; $4fdc: $2c
	inc  bc                                          ; $4fdd: $03
	jp   $3cff                                       ; $4fde: $c3 $ff $3c


	rst  $38                                         ; $4fe1: $ff
	ld   bc, $01ff                                   ; $4fe2: $01 $ff $01
	rst  $38                                         ; $4fe5: $ff
	db   $10                                         ; $4fe6: $10
	rst  $38                                         ; $4fe7: $ff
	db   $10                                         ; $4fe8: $10
	add  c                                           ; $4fe9: $81
	rst  $38                                         ; $4fea: $ff
	rrca                                             ; $4feb: $0f
	ld   b, $ff                                      ; $4fec: $06 $ff
	ldh  [rIE], a                                    ; $4fee: $e0 $ff
	ld   d, $ff                                      ; $4ff0: $16 $ff
	ld   c, $ff                                      ; $4ff2: $0e $ff
	nop                                              ; $4ff4: $00
	rst  $38                                         ; $4ff5: $ff
	ld   d, [hl]                                     ; $4ff6: $56
	rst  $38                                         ; $4ff7: $ff
	ld   d, a                                        ; $4ff8: $57
	rst  $38                                         ; $4ff9: $ff
	adc  d                                           ; $4ffa: $8a
	ld   d, d                                        ; $4ffb: $52
	add  b                                           ; $4ffc: $80
	ld   e, d                                        ; $4ffd: $5a
	nop                                              ; $4ffe: $00
	ld   e, a                                        ; $4fff: $5f
	add  b                                           ; $5000: $80
	rlca                                             ; $5001: $07
	ld   [bc], a                                     ; $5002: $02
	add  a                                           ; $5003: $87
	add  b                                           ; $5004: $80
	add  a                                           ; $5005: $87
	add  b                                           ; $5006: $80
	add  l                                           ; $5007: $85
	add  b                                           ; $5008: $80
	dec  b                                           ; $5009: $05
	inc  bc                                          ; $500a: $03
	rlca                                             ; $500b: $07
	adc  a                                           ; $500c: $8f
	ld   [hl], c                                     ; $500d: $71
	nop                                              ; $500e: $00
	add  c                                           ; $500f: $81
	add  b                                           ; $5010: $80
	add  d                                           ; $5011: $82
	nop                                              ; $5012: $00
	ld   b, $40                                      ; $5013: $06 $40
	ld   d, b                                        ; $5015: $50
	ld   [hl], b                                     ; $5016: $70
	ld   l, b                                        ; $5017: $68
	ld   a, b                                        ; $5018: $78
	inc  d                                           ; $5019: $14
	sbc  h                                           ; $501a: $9c
	call c, $8201                                    ; $501b: $dc $01 $82
	rst  $38                                         ; $501e: $ff
	ld   [bc], a                                     ; $501f: $02
	jp   nz, $efff                                   ; $5020: $c2 $ff $ef

	add  c                                           ; $5023: $81
	rst  $38                                         ; $5024: $ff
	ld   b, $fc                                      ; $5025: $06 $fc
	rst  $38                                         ; $5027: $ff
	jp   hl                                          ; $5028: $e9


	rst  $38                                         ; $5029: $ff
	jr   c, @+$01                                    ; $502a: $38 $ff

	nop                                              ; $502c: $00
	add  c                                           ; $502d: $81
	rst  $38                                         ; $502e: $ff
	ld   [bc], a                                     ; $502f: $02
	rrca                                             ; $5030: $0f
	rst  $38                                         ; $5031: $ff
	cp   [hl]                                        ; $5032: $be
	add  c                                           ; $5033: $81
	rst  $38                                         ; $5034: $ff
	ld   b, $2f                                      ; $5035: $06 $2f
	rst  $38                                         ; $5037: $ff
	ld   l, a                                        ; $5038: $6f
	rst  $38                                         ; $5039: $ff
	pop  af                                          ; $503a: $f1
	rst  $38                                         ; $503b: $ff
	nop                                              ; $503c: $00
	add  c                                           ; $503d: $81
	rst  $38                                         ; $503e: $ff
	inc  c                                           ; $503f: $0c
	di                                               ; $5040: $f3
	rst  $38                                         ; $5041: $ff
	inc  c                                           ; $5042: $0c
	rst  $38                                         ; $5043: $ff
	sub  d                                           ; $5044: $92
	rst  $38                                         ; $5045: $ff
	sub  d                                           ; $5046: $92
	rst  $38                                         ; $5047: $ff
	cp   e                                           ; $5048: $bb
	rst  $38                                         ; $5049: $ff
	cp   e                                           ; $504a: $bb
	rst  $38                                         ; $504b: $ff
	nop                                              ; $504c: $00
	add  c                                           ; $504d: $81
	rst  $38                                         ; $504e: $ff
	inc  c                                           ; $504f: $0c
	and  $ff                                         ; $5050: $e6 $ff
	ld   a, l                                        ; $5052: $7d
	rst  $38                                         ; $5053: $ff
	ld   l, [hl]                                     ; $5054: $6e
	rst  $38                                         ; $5055: $ff
	ld   [hl], a                                     ; $5056: $77
	rst  $38                                         ; $5057: $ff
	ld   h, e                                        ; $5058: $63
	rst  $38                                         ; $5059: $ff
	ld   e, $ff                                      ; $505a: $1e $ff
	nop                                              ; $505c: $00
	add  c                                           ; $505d: $81
	rst  $38                                         ; $505e: $ff
	inc  b                                           ; $505f: $04
	ld   b, e                                        ; $5060: $43
	rst  $38                                         ; $5061: $ff
	or   $ff                                         ; $5062: $f6 $ff
	ld   a, [hl]                                     ; $5064: $7e
	add  c                                           ; $5065: $81
	rst  $38                                         ; $5066: $ff
	inc  b                                           ; $5067: $04
	ld   a, [hl]                                     ; $5068: $7e
	rst  $38                                         ; $5069: $ff
	or   l                                           ; $506a: $b5
	rst  $38                                         ; $506b: $ff
	nop                                              ; $506c: $00
	add  c                                           ; $506d: $81
	rst  $38                                         ; $506e: $ff
	inc  c                                           ; $506f: $0c
	ret  z                                           ; $5070: $c8

	rst  $38                                         ; $5071: $ff
	dec  [hl]                                        ; $5072: $35
	rst  $38                                         ; $5073: $ff
	or   a                                           ; $5074: $b7
	rst  $38                                         ; $5075: $ff
	or   a                                           ; $5076: $b7
	rst  $38                                         ; $5077: $ff
	ld   hl, sp-$01                                  ; $5078: $f8 $ff
	ld   a, [$00ff]                                  ; $507a: $fa $ff $00
	add  c                                           ; $507d: $81
	rst  $38                                         ; $507e: $ff
	inc  c                                           ; $507f: $0c
	ld   a, c                                        ; $5080: $79
	rst  $38                                         ; $5081: $ff
	and  $ff                                         ; $5082: $e6 $ff
	db   $eb                                         ; $5084: $eb
	rst  $38                                         ; $5085: $ff
	cp   a                                           ; $5086: $bf
	rst  $38                                         ; $5087: $ff
	cp   a                                           ; $5088: $bf
	rst  $38                                         ; $5089: $ff
	adc  e                                           ; $508a: $8b
	rst  $38                                         ; $508b: $ff
	nop                                              ; $508c: $00
	add  c                                           ; $508d: $81
	rst  $38                                         ; $508e: $ff
	inc  b                                           ; $508f: $04
	add  e                                           ; $5090: $83
	rst  $38                                         ; $5091: $ff
	ld   l, a                                        ; $5092: $6f
	rst  $38                                         ; $5093: $ff
	ld   a, a                                        ; $5094: $7f
	add  c                                           ; $5095: $81
	rst  $38                                         ; $5096: $ff
	inc  b                                           ; $5097: $04
	db   $e3                                         ; $5098: $e3
	rst  $38                                         ; $5099: $ff
	ld   [hl], b                                     ; $509a: $70
	rst  $38                                         ; $509b: $ff
	nop                                              ; $509c: $00
	add  c                                           ; $509d: $81
	rst  $38                                         ; $509e: $ff
	inc  c                                           ; $509f: $0c
	ld   [de], a                                     ; $50a0: $12
	rst  $38                                         ; $50a1: $ff
	xor  l                                           ; $50a2: $ad
	rst  $38                                         ; $50a3: $ff
	or   $ff                                         ; $50a4: $f6 $ff
	rst  $20                                         ; $50a6: $e7
	rst  $38                                         ; $50a7: $ff
	xor  d                                           ; $50a8: $aa
	rst  $38                                         ; $50a9: $ff
	ei                                               ; $50aa: $fb
	rst  $38                                         ; $50ab: $ff
	nop                                              ; $50ac: $00
	add  c                                           ; $50ad: $81
	rst  $38                                         ; $50ae: $ff
	ld   b, $7f                                      ; $50af: $06 $7f
	rst  $38                                         ; $50b1: $ff
	cp   h                                           ; $50b2: $bc
	rst  $38                                         ; $50b3: $ff
	inc  a                                           ; $50b4: $3c
	rst  $38                                         ; $50b5: $ff
	ccf                                              ; $50b6: $3f
	add  c                                           ; $50b7: $81
	rst  $38                                         ; $50b8: $ff
	ld   [bc], a                                     ; $50b9: $02
	ret  nz                                          ; $50ba: $c0

	rst  $38                                         ; $50bb: $ff
	nop                                              ; $50bc: $00
	add  c                                           ; $50bd: $81
	rst  $38                                         ; $50be: $ff
	inc  c                                           ; $50bf: $0c
	add  hl, sp                                      ; $50c0: $39
	rst  $38                                         ; $50c1: $ff
	add  $ff                                         ; $50c2: $c6 $ff
	add  $ff                                         ; $50c4: $c6 $ff
	add  hl, sp                                      ; $50c6: $39
	rst  $38                                         ; $50c7: $ff
	ld   [hl], $ff                                   ; $50c8: $36 $ff
	ret                                              ; $50ca: $c9


	rst  $38                                         ; $50cb: $ff
	nop                                              ; $50cc: $00
	add  c                                           ; $50cd: $81
	rst  $38                                         ; $50ce: $ff
	inc  c                                           ; $50cf: $0c
	di                                               ; $50d0: $f3
	rst  $38                                         ; $50d1: $ff
	ld   c, a                                        ; $50d2: $4f
	rst  $38                                         ; $50d3: $ff
	ld   [hl], e                                     ; $50d4: $73
	rst  $38                                         ; $50d5: $ff
	db   $d3                                         ; $50d6: $d3
	rst  $38                                         ; $50d7: $ff
	ld   e, e                                        ; $50d8: $5b
	rst  $38                                         ; $50d9: $ff
	cp   b                                           ; $50da: $b8
	rst  $38                                         ; $50db: $ff
	nop                                              ; $50dc: $00
	add  c                                           ; $50dd: $81
	rst  $38                                         ; $50de: $ff
	nop                                              ; $50df: $00
	rlca                                             ; $50e0: $07
	add  c                                           ; $50e1: $81
	rst  $38                                         ; $50e2: $ff
	nop                                              ; $50e3: $00
	sbc  a                                           ; $50e4: $9f
	add  c                                           ; $50e5: $81
	rst  $38                                         ; $50e6: $ff
	inc  b                                           ; $50e7: $04
	sbc  a                                           ; $50e8: $9f
	rst  $38                                         ; $50e9: $ff
	ld   hl, sp-$01                                  ; $50ea: $f8 $ff
	nop                                              ; $50ec: $00
	add  c                                           ; $50ed: $81
	rst  $38                                         ; $50ee: $ff
	inc  c                                           ; $50ef: $0c
	call nz, $ebff                                   ; $50f0: $c4 $ff $eb
	rst  $38                                         ; $50f3: $ff
	db   $fd                                         ; $50f4: $fd
	rst  $38                                         ; $50f5: $ff
	ld   sp, hl                                      ; $50f6: $f9
	rst  $38                                         ; $50f7: $ff
	ld   [$3eff], a                                  ; $50f8: $ea $ff $3e
	rst  $38                                         ; $50fb: $ff
	nop                                              ; $50fc: $00
	add  c                                           ; $50fd: $81
	rst  $38                                         ; $50fe: $ff
	inc  c                                           ; $50ff: $0c
	sbc  h                                           ; $5100: $9c
	rst  $38                                         ; $5101: $ff
	ld   l, [hl]                                     ; $5102: $6e
	rst  $38                                         ; $5103: $ff
	adc  [hl]                                        ; $5104: $8e
	rst  $38                                         ; $5105: $ff
	call z, $bdff                                    ; $5106: $cc $ff $bd
	rst  $38                                         ; $5109: $ff
	ldh  a, [c]                                      ; $510a: $f2
	rst  $38                                         ; $510b: $ff
	nop                                              ; $510c: $00
	add  c                                           ; $510d: $81
	rst  $38                                         ; $510e: $ff
	inc  c                                           ; $510f: $0c
	inc  bc                                          ; $5110: $03
	rst  $38                                         ; $5111: $ff
	rrca                                             ; $5112: $0f
	rst  $38                                         ; $5113: $ff
	rrca                                             ; $5114: $0f
	rst  $38                                         ; $5115: $ff
	ld   a, a                                        ; $5116: $7f
	rst  $38                                         ; $5117: $ff
	adc  a                                           ; $5118: $8f
	rst  $38                                         ; $5119: $ff
	inc  c                                           ; $511a: $0c
	rst  $38                                         ; $511b: $ff
	nop                                              ; $511c: $00
	add  c                                           ; $511d: $81
	rst  $38                                         ; $511e: $ff
	ld   [bc], a                                     ; $511f: $02
	jp   nz, $efff                                   ; $5120: $c2 $ff $ef

	add  c                                           ; $5123: $81
	rst  $38                                         ; $5124: $ff
	ld   b, $fc                                      ; $5125: $06 $fc
	rst  $38                                         ; $5127: $ff
	jp   hl                                          ; $5128: $e9


	rst  $38                                         ; $5129: $ff
	db   $fc                                         ; $512a: $fc
	dec  sp                                          ; $512b: $3b
	nop                                              ; $512c: $00
	add  c                                           ; $512d: $81
	rst  $38                                         ; $512e: $ff
	ld   [bc], a                                     ; $512f: $02
	rrca                                             ; $5130: $0f
	rst  $38                                         ; $5131: $ff
	cp   [hl]                                        ; $5132: $be
	add  c                                           ; $5133: $81
	rst  $38                                         ; $5134: $ff
	ld   b, $2f                                      ; $5135: $06 $2f
	rst  $38                                         ; $5137: $ff
	ld   l, a                                        ; $5138: $6f
	rst  $38                                         ; $5139: $ff
	or   a                                           ; $513a: $b7
	cp   c                                           ; $513b: $b9
	nop                                              ; $513c: $00
	add  c                                           ; $513d: $81
	rst  $38                                         ; $513e: $ff
	inc  c                                           ; $513f: $0c
	di                                               ; $5140: $f3
	rst  $38                                         ; $5141: $ff
	inc  c                                           ; $5142: $0c
	rst  $38                                         ; $5143: $ff
	sub  d                                           ; $5144: $92
	rst  $38                                         ; $5145: $ff
	sub  d                                           ; $5146: $92
	rst  $38                                         ; $5147: $ff
	cp   e                                           ; $5148: $bb
	rst  $38                                         ; $5149: $ff
	sub  d                                           ; $514a: $92
	sub  $00                                         ; $514b: $d6 $00
	add  c                                           ; $514d: $81
	rst  $38                                         ; $514e: $ff
	inc  c                                           ; $514f: $0c
	and  $ff                                         ; $5150: $e6 $ff
	ld   a, l                                        ; $5152: $7d
	rst  $38                                         ; $5153: $ff
	ld   l, [hl]                                     ; $5154: $6e
	rst  $38                                         ; $5155: $ff
	ld   [hl], a                                     ; $5156: $77
	rst  $38                                         ; $5157: $ff
	ld   h, e                                        ; $5158: $63
	rst  $38                                         ; $5159: $ff
	ld   l, a                                        ; $515a: $6f
	adc  [hl]                                        ; $515b: $8e
	nop                                              ; $515c: $00
	add  c                                           ; $515d: $81
	rst  $38                                         ; $515e: $ff
	inc  b                                           ; $515f: $04
	ld   b, e                                        ; $5160: $43
	rst  $38                                         ; $5161: $ff
	or   $ff                                         ; $5162: $f6 $ff
	ld   a, [hl]                                     ; $5164: $7e
	add  c                                           ; $5165: $81
	rst  $38                                         ; $5166: $ff
	inc  b                                           ; $5167: $04
	ld   a, [hl]                                     ; $5168: $7e
	rst  $38                                         ; $5169: $ff
	cp   $b4                                         ; $516a: $fe $b4
	nop                                              ; $516c: $00
	add  c                                           ; $516d: $81
	rst  $38                                         ; $516e: $ff
	inc  c                                           ; $516f: $0c
	ret  z                                           ; $5170: $c8

	rst  $38                                         ; $5171: $ff
	dec  [hl]                                        ; $5172: $35
	rst  $38                                         ; $5173: $ff
	or   a                                           ; $5174: $b7
	rst  $38                                         ; $5175: $ff
	or   a                                           ; $5176: $b7
	rst  $38                                         ; $5177: $ff
	ld   hl, sp-$01                                  ; $5178: $f8 $ff
	ld   [hl+], a                                    ; $517a: $22
	daa                                              ; $517b: $27
	nop                                              ; $517c: $00
	add  c                                           ; $517d: $81
	rst  $38                                         ; $517e: $ff
	inc  c                                           ; $517f: $0c
	ld   a, c                                        ; $5180: $79
	rst  $38                                         ; $5181: $ff
	and  $ff                                         ; $5182: $e6 $ff
	db   $eb                                         ; $5184: $eb
	rst  $38                                         ; $5185: $ff
	cp   a                                           ; $5186: $bf
	rst  $38                                         ; $5187: $ff
	cp   a                                           ; $5188: $bf
	rst  $38                                         ; $5189: $ff
	xor  e                                           ; $518a: $ab
	rst  JumpTable                                         ; $518b: $df
	nop                                              ; $518c: $00
	add  c                                           ; $518d: $81
	rst  $38                                         ; $518e: $ff
	inc  b                                           ; $518f: $04
	add  e                                           ; $5190: $83
	rst  $38                                         ; $5191: $ff
	ld   l, a                                        ; $5192: $6f
	rst  $38                                         ; $5193: $ff
	ld   a, a                                        ; $5194: $7f
	add  c                                           ; $5195: $81
	rst  $38                                         ; $5196: $ff
	inc  b                                           ; $5197: $04
	db   $e3                                         ; $5198: $e3
	rst  $38                                         ; $5199: $ff
	ld   [hl], a                                     ; $519a: $77
	ld   hl, sp+$00                                  ; $519b: $f8 $00
	add  c                                           ; $519d: $81
	rst  $38                                         ; $519e: $ff
	inc  c                                           ; $519f: $0c
	ld   [de], a                                     ; $51a0: $12
	rst  $38                                         ; $51a1: $ff
	xor  l                                           ; $51a2: $ad
	rst  $38                                         ; $51a3: $ff
	or   $ff                                         ; $51a4: $f6 $ff
	rst  $20                                         ; $51a6: $e7
	rst  $38                                         ; $51a7: $ff
	xor  d                                           ; $51a8: $aa
	rst  $38                                         ; $51a9: $ff
	jp   $00c7                                       ; $51aa: $c3 $c7 $00


	add  c                                           ; $51ad: $81
	rst  $38                                         ; $51ae: $ff
	ld   b, $7f                                      ; $51af: $06 $7f
	rst  $38                                         ; $51b1: $ff
	cp   h                                           ; $51b2: $bc
	rst  $38                                         ; $51b3: $ff
	inc  a                                           ; $51b4: $3c
	rst  $38                                         ; $51b5: $ff
	ccf                                              ; $51b6: $3f
	add  c                                           ; $51b7: $81
	rst  $38                                         ; $51b8: $ff
	nop                                              ; $51b9: $00
	ccf                                              ; $51ba: $3f
	add  b                                           ; $51bb: $80
	nop                                              ; $51bc: $00
	add  c                                           ; $51bd: $81
	rst  $38                                         ; $51be: $ff
	inc  c                                           ; $51bf: $0c
	add  hl, sp                                      ; $51c0: $39
	rst  $38                                         ; $51c1: $ff
	add  $ff                                         ; $51c2: $c6 $ff
	add  $ff                                         ; $51c4: $c6 $ff
	add  hl, sp                                      ; $51c6: $39
	rst  $38                                         ; $51c7: $ff
	ld   [hl], $ff                                   ; $51c8: $36 $ff
	db   $fd                                         ; $51ca: $fd
	rlc  b                                           ; $51cb: $cb $00
	add  c                                           ; $51cd: $81
	rst  $38                                         ; $51ce: $ff
	inc  c                                           ; $51cf: $0c
	di                                               ; $51d0: $f3
	rst  $38                                         ; $51d1: $ff
	ld   c, a                                        ; $51d2: $4f
	rst  $38                                         ; $51d3: $ff
	ld   [hl], e                                     ; $51d4: $73
	rst  $38                                         ; $51d5: $ff
	db   $d3                                         ; $51d6: $d3
	rst  $38                                         ; $51d7: $ff
	ld   e, e                                        ; $51d8: $5b
	rst  $38                                         ; $51d9: $ff
	push hl                                          ; $51da: $e5
	and  d                                           ; $51db: $a2
	nop                                              ; $51dc: $00
	add  c                                           ; $51dd: $81
	rst  $38                                         ; $51de: $ff
	nop                                              ; $51df: $00
	rlca                                             ; $51e0: $07
	add  c                                           ; $51e1: $81
	rst  $38                                         ; $51e2: $ff
	nop                                              ; $51e3: $00
	sbc  a                                           ; $51e4: $9f
	add  c                                           ; $51e5: $81
	rst  $38                                         ; $51e6: $ff
	nop                                              ; $51e7: $00
	sbc  a                                           ; $51e8: $9f
	add  b                                           ; $51e9: $80
	rst  $38                                         ; $51ea: $ff
	ld   bc, $00f8                                   ; $51eb: $01 $f8 $00
	add  c                                           ; $51ee: $81
	rst  $38                                         ; $51ef: $ff
	inc  c                                           ; $51f0: $0c
	call nz, $ebff                                   ; $51f1: $c4 $ff $eb
	rst  $38                                         ; $51f4: $ff
	db   $fd                                         ; $51f5: $fd
	rst  $38                                         ; $51f6: $ff
	ld   sp, hl                                      ; $51f7: $f9
	rst  $38                                         ; $51f8: $ff
	ld   [$f0ff], a                                  ; $51f9: $ea $ff $f0
	ld   sp, $8100                                   ; $51fc: $31 $00 $81
	rst  $38                                         ; $51ff: $ff
	inc  c                                           ; $5200: $0c
	sbc  h                                           ; $5201: $9c
	rst  $38                                         ; $5202: $ff
	ld   l, [hl]                                     ; $5203: $6e
	rst  $38                                         ; $5204: $ff
	adc  [hl]                                        ; $5205: $8e
	rst  $38                                         ; $5206: $ff
	call z, $bdff                                    ; $5207: $cc $ff $bd
	rst  $38                                         ; $520a: $ff
	adc  $c3                                         ; $520b: $ce $c3
	nop                                              ; $520d: $00
	add  c                                           ; $520e: $81
	rst  $38                                         ; $520f: $ff
	ld   de, $ff03                                   ; $5210: $11 $03 $ff
	rrca                                             ; $5213: $0f
	rst  $38                                         ; $5214: $ff
	rrca                                             ; $5215: $0f
	rst  $38                                         ; $5216: $ff
	ld   a, a                                        ; $5217: $7f
	rst  $38                                         ; $5218: $ff
	adc  a                                           ; $5219: $8f
	rst  $38                                         ; $521a: $ff
	rrca                                             ; $521b: $0f
	db   $fc                                         ; $521c: $fc
	inc  l                                           ; $521d: $2c
	rst  $38                                         ; $521e: $ff
	cp   $ff                                         ; $521f: $fe $ff
	dec  l                                           ; $5221: $2d
	rst  $38                                         ; $5222: $ff
	adc  b                                           ; $5223: $88
	nop                                              ; $5224: $00
	dec  b                                           ; $5225: $05
	ld   h, c                                        ; $5226: $61
	rst  $38                                         ; $5227: $ff
	ld   l, a                                        ; $5228: $6f
	rst  $38                                         ; $5229: $ff
	pop  af                                          ; $522a: $f1
	rst  $38                                         ; $522b: $ff
	adc  b                                           ; $522c: $88
	nop                                              ; $522d: $00
	dec  b                                           ; $522e: $05
	cp   a                                           ; $522f: $bf
	rst  $38                                         ; $5230: $ff
	db   $eb                                         ; $5231: $eb
	rst  $38                                         ; $5232: $ff
	xor  e                                           ; $5233: $ab
	rst  $38                                         ; $5234: $ff
	adc  b                                           ; $5235: $88
	nop                                              ; $5236: $00
	dec  b                                           ; $5237: $05
	ld   a, [bc]                                     ; $5238: $0a
	rst  $38                                         ; $5239: $ff
	and  $ff                                         ; $523a: $e6 $ff
	inc  de                                          ; $523c: $13
	rst  $38                                         ; $523d: $ff
	adc  b                                           ; $523e: $88
	nop                                              ; $523f: $00
	dec  b                                           ; $5240: $05
	or   h                                           ; $5241: $b4
	rst  $38                                         ; $5242: $ff
	rst  $30                                         ; $5243: $f7
	rst  $38                                         ; $5244: $ff
	cp   h                                           ; $5245: $bc
	rst  $38                                         ; $5246: $ff
	adc  b                                           ; $5247: $88
	nop                                              ; $5248: $00
	add  b                                           ; $5249: $80
	rst  $38                                         ; $524a: $ff
	inc  bc                                          ; $524b: $03
	inc  c                                           ; $524c: $0c
	rst  $38                                         ; $524d: $ff
	inc  c                                           ; $524e: $0c
	rst  $38                                         ; $524f: $ff
	adc  b                                           ; $5250: $88
	nop                                              ; $5251: $00
	dec  b                                           ; $5252: $05
	add  b                                           ; $5253: $80
	rst  $38                                         ; $5254: $ff
	ld   [hl], b                                     ; $5255: $70
	rst  $38                                         ; $5256: $ff
	rrca                                             ; $5257: $0f
	rst  $38                                         ; $5258: $ff
	adc  b                                           ; $5259: $88
	nop                                              ; $525a: $00
	nop                                              ; $525b: $00
	ld   l, h                                        ; $525c: $6c
	add  c                                           ; $525d: $81
	rst  $38                                         ; $525e: $ff
	ld   bc, $ff6c                                   ; $525f: $01 $6c $ff
	adc  b                                           ; $5262: $88
	nop                                              ; $5263: $00
	dec  b                                           ; $5264: $05
	xor  a                                           ; $5265: $af
	rst  $38                                         ; $5266: $ff
	db   $eb                                         ; $5267: $eb
	rst  $38                                         ; $5268: $ff
	cp   e                                           ; $5269: $bb
	rst  $38                                         ; $526a: $ff
	adc  b                                           ; $526b: $88
	nop                                              ; $526c: $00
	dec  b                                           ; $526d: $05
	ld   bc, $7fff                                   ; $526e: $01 $ff $7f
	rst  $38                                         ; $5271: $ff
	add  c                                           ; $5272: $81
	rst  $38                                         ; $5273: $ff
	adc  b                                           ; $5274: $88
	nop                                              ; $5275: $00
	dec  b                                           ; $5276: $05
	adc  $ff                                         ; $5277: $ce $ff
	ld   sp, hl                                      ; $5279: $f9
	rst  $38                                         ; $527a: $ff
	ret  z                                           ; $527b: $c8

	rst  $38                                         ; $527c: $ff
	adc  b                                           ; $527d: $88
	nop                                              ; $527e: $00
	nop                                              ; $527f: $00
	ld   a, $81                                      ; $5280: $3e $81
	rst  $38                                         ; $5282: $ff
	ld   bc, $ff3e                                   ; $5283: $01 $3e $ff
	adc  b                                           ; $5286: $88
	nop                                              ; $5287: $00
	nop                                              ; $5288: $00
	sbc  b                                           ; $5289: $98
	add  c                                           ; $528a: $81
	rst  $38                                         ; $528b: $ff
	ld   bc, $ff98                                   ; $528c: $01 $98 $ff
	adc  b                                           ; $528f: $88
	nop                                              ; $5290: $00
	dec  b                                           ; $5291: $05
	dec  hl                                          ; $5292: $2b
	rst  $38                                         ; $5293: $ff
	ld   a, [$2eff]                                  ; $5294: $fa $ff $2e
	rst  $38                                         ; $5297: $ff
	adc  b                                           ; $5298: $88
	nop                                              ; $5299: $00
	dec  b                                           ; $529a: $05
	jp   nz, $deff                                   ; $529b: $c2 $ff $de

jr_017_529e:
	rst  $38                                         ; $529e: $ff
	db   $e3                                         ; $529f: $e3
	rst  $38                                         ; $52a0: $ff
	adc  b                                           ; $52a1: $88
	nop                                              ; $52a2: $00
	dec  b                                           ; $52a3: $05
	inc  c                                           ; $52a4: $0c
	rst  $38                                         ; $52a5: $ff
	rrca                                             ; $52a6: $0f
	rst  $38                                         ; $52a7: $ff
	db   $fc                                         ; $52a8: $fc
	rst  $38                                         ; $52a9: $ff
	adc  c                                           ; $52aa: $89
	nop                                              ; $52ab: $00
	add  c                                           ; $52ac: $81
	rst  $38                                         ; $52ad: $ff
	ld   [bc], a                                     ; $52ae: $02
	jp   nz, $efff                                   ; $52af: $c2 $ff $ef

	add  c                                           ; $52b2: $81
	rst  $38                                         ; $52b3: $ff
	ld   b, $fc                                      ; $52b4: $06 $fc
	rst  $38                                         ; $52b6: $ff
	jp   hl                                          ; $52b7: $e9


	rst  $38                                         ; $52b8: $ff
	db   $fc                                         ; $52b9: $fc
	rst  $38                                         ; $52ba: $ff
	call nz, $ff81                                   ; $52bb: $c4 $81 $ff
	ld   [bc], a                                     ; $52be: $02
	rrca                                             ; $52bf: $0f
	rst  $38                                         ; $52c0: $ff
	cp   [hl]                                        ; $52c1: $be
	add  c                                           ; $52c2: $81
	rst  $38                                         ; $52c3: $ff
	ld   b, $2f                                      ; $52c4: $06 $2f
	rst  $38                                         ; $52c6: $ff
	ld   l, a                                        ; $52c7: $6f
	rst  $38                                         ; $52c8: $ff
	or   a                                           ; $52c9: $b7
	rst  $38                                         ; $52ca: $ff
	ld   b, [hl]                                     ; $52cb: $46
	add  c                                           ; $52cc: $81
	rst  $38                                         ; $52cd: $ff
	inc  c                                           ; $52ce: $0c
	di                                               ; $52cf: $f3
	rst  $38                                         ; $52d0: $ff
	inc  c                                           ; $52d1: $0c
	rst  $38                                         ; $52d2: $ff
	sub  d                                           ; $52d3: $92
	rst  $38                                         ; $52d4: $ff
	sub  d                                           ; $52d5: $92
	rst  $38                                         ; $52d6: $ff
	cp   e                                           ; $52d7: $bb
	rst  $38                                         ; $52d8: $ff
	sub  d                                           ; $52d9: $92
	rst  $38                                         ; $52da: $ff
	add  hl, hl                                      ; $52db: $29
	add  c                                           ; $52dc: $81
	rst  $38                                         ; $52dd: $ff
	inc  c                                           ; $52de: $0c
	and  $ff                                         ; $52df: $e6 $ff
	ld   a, l                                        ; $52e1: $7d
	rst  $38                                         ; $52e2: $ff
	ld   l, [hl]                                     ; $52e3: $6e
	rst  $38                                         ; $52e4: $ff
	ld   [hl], a                                     ; $52e5: $77
	rst  $38                                         ; $52e6: $ff
	ld   h, e                                        ; $52e7: $63
	rst  $38                                         ; $52e8: $ff
	ld   l, a                                        ; $52e9: $6f
	rst  $38                                         ; $52ea: $ff
	ld   [hl], c                                     ; $52eb: $71
	add  c                                           ; $52ec: $81
	rst  $38                                         ; $52ed: $ff
	inc  b                                           ; $52ee: $04
	ld   b, e                                        ; $52ef: $43
	rst  $38                                         ; $52f0: $ff
	or   $ff                                         ; $52f1: $f6 $ff
	ld   a, [hl]                                     ; $52f3: $7e
	add  c                                           ; $52f4: $81
	rst  $38                                         ; $52f5: $ff
	inc  b                                           ; $52f6: $04
	ld   a, [hl]                                     ; $52f7: $7e
	rst  $38                                         ; $52f8: $ff
	cp   $ff                                         ; $52f9: $fe $ff
	ld   c, e                                        ; $52fb: $4b
	add  c                                           ; $52fc: $81
	rst  $38                                         ; $52fd: $ff
	inc  c                                           ; $52fe: $0c
	ret  z                                           ; $52ff: $c8

	rst  $38                                         ; $5300: $ff
	dec  [hl]                                        ; $5301: $35
	rst  $38                                         ; $5302: $ff
	or   a                                           ; $5303: $b7
	rst  $38                                         ; $5304: $ff
	or   a                                           ; $5305: $b7
	rst  $38                                         ; $5306: $ff
	ld   hl, sp-$01                                  ; $5307: $f8 $ff
	ld   [hl+], a                                    ; $5309: $22
	rst  $38                                         ; $530a: $ff
	ret  c                                           ; $530b: $d8

	add  c                                           ; $530c: $81
	rst  $38                                         ; $530d: $ff
	inc  c                                           ; $530e: $0c
	ld   a, c                                        ; $530f: $79
	rst  $38                                         ; $5310: $ff
	and  $ff                                         ; $5311: $e6 $ff
	db   $eb                                         ; $5313: $eb
	rst  $38                                         ; $5314: $ff
	cp   a                                           ; $5315: $bf
	rst  $38                                         ; $5316: $ff
	cp   a                                           ; $5317: $bf
	rst  $38                                         ; $5318: $ff
	xor  e                                           ; $5319: $ab
	rst  $38                                         ; $531a: $ff
	jr   nz, jr_017_529e                             ; $531b: $20 $81

	rst  $38                                         ; $531d: $ff
	inc  b                                           ; $531e: $04
	add  e                                           ; $531f: $83
	rst  $38                                         ; $5320: $ff
	ld   l, a                                        ; $5321: $6f
	rst  $38                                         ; $5322: $ff
	ld   a, a                                        ; $5323: $7f
	add  c                                           ; $5324: $81
	rst  $38                                         ; $5325: $ff
	inc  b                                           ; $5326: $04
	db   $e3                                         ; $5327: $e3
	rst  $38                                         ; $5328: $ff
	ld   [hl], a                                     ; $5329: $77
	rst  $38                                         ; $532a: $ff
	rlca                                             ; $532b: $07
	add  c                                           ; $532c: $81
	rst  $38                                         ; $532d: $ff
	inc  c                                           ; $532e: $0c
	ld   [de], a                                     ; $532f: $12
	rst  $38                                         ; $5330: $ff
	xor  l                                           ; $5331: $ad
	rst  $38                                         ; $5332: $ff
	or   $ff                                         ; $5333: $f6 $ff
	rst  $20                                         ; $5335: $e7
	rst  $38                                         ; $5336: $ff
	xor  d                                           ; $5337: $aa
	rst  $38                                         ; $5338: $ff
	jp   $38ff                                       ; $5339: $c3 $ff $38


	add  c                                           ; $533c: $81
	rst  $38                                         ; $533d: $ff
	ld   b, $7f                                      ; $533e: $06 $7f
	rst  $38                                         ; $5340: $ff
	cp   h                                           ; $5341: $bc
	rst  $38                                         ; $5342: $ff
	inc  a                                           ; $5343: $3c
	rst  $38                                         ; $5344: $ff
	ccf                                              ; $5345: $3f
	add  c                                           ; $5346: $81
	rst  $38                                         ; $5347: $ff
	nop                                              ; $5348: $00
	ccf                                              ; $5349: $3f
	add  e                                           ; $534a: $83
	rst  $38                                         ; $534b: $ff
	inc  c                                           ; $534c: $0c
	add  hl, sp                                      ; $534d: $39
	rst  $38                                         ; $534e: $ff
	add  $ff                                         ; $534f: $c6 $ff
	add  $ff                                         ; $5351: $c6 $ff
	add  hl, sp                                      ; $5353: $39
	rst  $38                                         ; $5354: $ff
	ld   [hl], $ff                                   ; $5355: $36 $ff
	db   $fd                                         ; $5357: $fd
	rst  $38                                         ; $5358: $ff
	inc  [hl]                                        ; $5359: $34
	add  c                                           ; $535a: $81
	rst  $38                                         ; $535b: $ff
	inc  c                                           ; $535c: $0c
	di                                               ; $535d: $f3
	rst  $38                                         ; $535e: $ff
	ld   c, a                                        ; $535f: $4f
	rst  $38                                         ; $5360: $ff
	ld   [hl], e                                     ; $5361: $73
	rst  $38                                         ; $5362: $ff
	db   $d3                                         ; $5363: $d3
	rst  $38                                         ; $5364: $ff
	ld   e, e                                        ; $5365: $5b
	rst  $38                                         ; $5366: $ff
	push hl                                          ; $5367: $e5
	rst  $38                                         ; $5368: $ff
	ld   e, l                                        ; $5369: $5d
	add  c                                           ; $536a: $81
	rst  $38                                         ; $536b: $ff
	nop                                              ; $536c: $00
	rlca                                             ; $536d: $07
	add  c                                           ; $536e: $81
	rst  $38                                         ; $536f: $ff
	nop                                              ; $5370: $00
	sbc  a                                           ; $5371: $9f
	add  c                                           ; $5372: $81
	rst  $38                                         ; $5373: $ff
	nop                                              ; $5374: $00
	sbc  a                                           ; $5375: $9f
	add  c                                           ; $5376: $81
	rst  $38                                         ; $5377: $ff
	nop                                              ; $5378: $00
	rlca                                             ; $5379: $07
	add  c                                           ; $537a: $81
	rst  $38                                         ; $537b: $ff
	inc  c                                           ; $537c: $0c
	call nz, $ebff                                   ; $537d: $c4 $ff $eb
	rst  $38                                         ; $5380: $ff
	db   $fd                                         ; $5381: $fd
	rst  $38                                         ; $5382: $ff
	ld   sp, hl                                      ; $5383: $f9
	rst  $38                                         ; $5384: $ff
	ld   [$f0ff], a                                  ; $5385: $ea $ff $f0
	rst  $38                                         ; $5388: $ff
	adc  $81                                         ; $5389: $ce $81
	rst  $38                                         ; $538b: $ff
	inc  c                                           ; $538c: $0c
	sbc  h                                           ; $538d: $9c
	rst  $38                                         ; $538e: $ff
	ld   l, [hl]                                     ; $538f: $6e
	rst  $38                                         ; $5390: $ff
	adc  [hl]                                        ; $5391: $8e
	rst  $38                                         ; $5392: $ff
	call z, $bdff                                    ; $5393: $cc $ff $bd
	rst  $38                                         ; $5396: $ff
	adc  $ff                                         ; $5397: $ce $ff
	inc  a                                           ; $5399: $3c
	add  c                                           ; $539a: $81
	rst  $38                                         ; $539b: $ff
	ld   d, $03                                      ; $539c: $16 $03
	rst  $38                                         ; $539e: $ff
	rrca                                             ; $539f: $0f
	rst  $38                                         ; $53a0: $ff
	rrca                                             ; $53a1: $0f
	rst  $38                                         ; $53a2: $ff
	ld   a, a                                        ; $53a3: $7f
	rst  $38                                         ; $53a4: $ff
	adc  a                                           ; $53a5: $8f
	rst  $38                                         ; $53a6: $ff
	rrca                                             ; $53a7: $0f
	rst  $38                                         ; $53a8: $ff
	cpl                                              ; $53a9: $2f
	rst  $38                                         ; $53aa: $ff
	cp   $ff                                         ; $53ab: $fe $ff
	db   $eb                                         ; $53ad: $eb
	rst  $38                                         ; $53ae: $ff
	rst  $30                                         ; $53af: $f7
	rst  $38                                         ; $53b0: $ff
	ld   sp, hl                                      ; $53b1: $f9
	rst  $38                                         ; $53b2: $ff
	ld   hl, sp-$7f                                  ; $53b3: $f8 $81
	rst  $38                                         ; $53b5: $ff
	ld   b, $cf                                      ; $53b6: $06 $cf
	rst  $38                                         ; $53b8: $ff
	sbc  [hl]                                        ; $53b9: $9e
	rst  $38                                         ; $53ba: $ff
	ld   l, a                                        ; $53bb: $6f
	rst  $38                                         ; $53bc: $ff
	ld   l, a                                        ; $53bd: $6f
	add  c                                           ; $53be: $81
	rst  $38                                         ; $53bf: $ff
	ld   [hl-], a                                    ; $53c0: $32
	ld   h, a                                        ; $53c1: $67
	rst  $38                                         ; $53c2: $ff

jr_017_53c3:
	ld   h, h                                        ; $53c3: $64
	rst  $38                                         ; $53c4: $ff
	db   $fd                                         ; $53c5: $fd
	rst  $38                                         ; $53c6: $ff
	sbc  a                                           ; $53c7: $9f
	rst  $38                                         ; $53c8: $ff
	ld   b, b                                        ; $53c9: $40
	rst  $38                                         ; $53ca: $ff
	db   $eb                                         ; $53cb: $eb
	rst  $38                                         ; $53cc: $ff
	ld   l, e                                        ; $53cd: $6b
	rst  $38                                         ; $53ce: $ff
	db   $eb                                         ; $53cf: $eb
	rst  $38                                         ; $53d0: $ff
	db   $eb                                         ; $53d1: $eb
	rst  $38                                         ; $53d2: $ff
	or   $ff                                         ; $53d3: $f6 $ff
	ld   l, $ff                                      ; $53d5: $2e $ff
	jr   @+$01                                       ; $53d7: $18 $ff

	push af                                          ; $53d9: $f5
	rst  $38                                         ; $53da: $ff
	and  $ff                                         ; $53db: $e6 $ff
	rst  $30                                         ; $53dd: $f7
	rst  $38                                         ; $53de: $ff
	xor  $ff                                         ; $53df: $ee $ff
	jp   hl                                          ; $53e1: $e9


	rst  $38                                         ; $53e2: $ff
	ld   a, h                                        ; $53e3: $7c
	rst  $38                                         ; $53e4: $ff
	db   $e3                                         ; $53e5: $e3
	rst  $38                                         ; $53e6: $ff
	ld   a, h                                        ; $53e7: $7c
	rst  $38                                         ; $53e8: $ff
	ld   c, e                                        ; $53e9: $4b
	rst  $38                                         ; $53ea: $ff
	rst  $30                                         ; $53eb: $f7
	rst  $38                                         ; $53ec: $ff
	rst  $30                                         ; $53ed: $f7
	rst  $38                                         ; $53ee: $ff
	ld   a, [$feff]                                  ; $53ef: $fa $ff $fe
	rst  $38                                         ; $53f2: $ff
	or   e                                           ; $53f3: $b3
	add  c                                           ; $53f4: $81
	rst  $38                                         ; $53f5: $ff
	inc  d                                           ; $53f6: $14
	inc  bc                                          ; $53f7: $03
	rst  $38                                         ; $53f8: $ff
	nop                                              ; $53f9: $00
	rst  $38                                         ; $53fa: $ff
	inc  c                                           ; $53fb: $0c
	rst  $38                                         ; $53fc: $ff
	call z, $3fff                                    ; $53fd: $cc $ff $3f
	rst  $38                                         ; $5400: $ff
	inc  c                                           ; $5401: $0c
	rst  $38                                         ; $5402: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5403: $cf
	rst  $38                                         ; $5404: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5405: $cf
	rst  $38                                         ; $5406: $ff
	di                                               ; $5407: $f3
	rst  $38                                         ; $5408: $ff
	ld   a, a                                        ; $5409: $7f
	rst  $38                                         ; $540a: $ff
	ld   [hl], b                                     ; $540b: $70
	add  c                                           ; $540c: $81
	rst  $38                                         ; $540d: $ff
	ld   [bc], a                                     ; $540e: $02
	dec  sp                                          ; $540f: $3b
	rst  $38                                         ; $5410: $ff
	ccf                                              ; $5411: $3f
	add  c                                           ; $5412: $81
	rst  $38                                         ; $5413: $ff
	inc  b                                           ; $5414: $04
	ei                                               ; $5415: $fb
	rst  $38                                         ; $5416: $ff
	ldh  a, [rIE]                                    ; $5417: $f0 $ff
	sub  e                                           ; $5419: $93
	add  c                                           ; $541a: $81
	rst  $38                                         ; $541b: $ff
	ld   [bc], a                                     ; $541c: $02
	rst  $28                                         ; $541d: $ef
	rst  $38                                         ; $541e: $ff
	db   $e3                                         ; $541f: $e3
	add  l                                           ; $5420: $85
	rst  $38                                         ; $5421: $ff
	jr   jr_017_53c3                                 ; $5422: $18 $9f

	rst  $38                                         ; $5424: $ff
	ld   d, b                                        ; $5425: $50
	rst  $38                                         ; $5426: $ff
	db   $eb                                         ; $5427: $eb
	rst  $38                                         ; $5428: $ff
	and  e                                           ; $5429: $a3
	rst  $38                                         ; $542a: $ff
	rst  $10                                         ; $542b: $d7
	rst  $38                                         ; $542c: $ff
	db   $eb                                         ; $542d: $eb
	rst  $38                                         ; $542e: $ff
	rst  $20                                         ; $542f: $e7
	rst  $38                                         ; $5430: $ff
	ei                                               ; $5431: $fb
	rst  $38                                         ; $5432: $ff
	jr   c, @+$01                                    ; $5433: $38 $ff

	cp   $ff                                         ; $5435: $fe $ff
	ld   a, a                                        ; $5437: $7f
	rst  $38                                         ; $5438: $ff
	inc  a                                           ; $5439: $3c
	rst  $38                                         ; $543a: $ff
	db   $fd                                         ; $543b: $fd
	add  c                                           ; $543c: $81
	rst  $38                                         ; $543d: $ff
	nop                                              ; $543e: $00
	cp   a                                           ; $543f: $bf
	add  e                                           ; $5440: $83
	rst  $38                                         ; $5441: $ff
	ld   [bc], a                                     ; $5442: $02
	ld   sp, $f9ff                                   ; $5443: $31 $ff $f9
	add  l                                           ; $5446: $85
	rst  $38                                         ; $5447: $ff
	nop                                              ; $5448: $00
	ld   hl, sp-$7f                                  ; $5449: $f8 $81
	rst  $38                                         ; $544b: $ff
	ld   [bc], a                                     ; $544c: $02
	jr   nc, @+$01                                   ; $544d: $30 $ff

	pop  bc                                          ; $544f: $c1
	add  c                                           ; $5450: $81
	rst  $38                                         ; $5451: $ff
	inc  c                                           ; $5452: $0c
	set  7, a                                        ; $5453: $cb $ff
	ld   c, l                                        ; $5455: $4d
	rst  $38                                         ; $5456: $ff
	db   $fd                                         ; $5457: $fd
	rst  $38                                         ; $5458: $ff
	rst  $28                                         ; $5459: $ef
	rst  $38                                         ; $545a: $ff
	cp   $ff                                         ; $545b: $fe $ff
	ld   d, h                                        ; $545d: $54
	rst  $38                                         ; $545e: $ff
	ld   h, a                                        ; $545f: $67
	add  c                                           ; $5460: $81
	rst  $38                                         ; $5461: $ff
	ld   [bc], a                                     ; $5462: $02
	sbc  a                                           ; $5463: $9f
	rst  $38                                         ; $5464: $ff
	sbc  a                                           ; $5465: $9f
	add  e                                           ; $5466: $83
	rst  $38                                         ; $5467: $ff
	ld   [hl-], a                                    ; $5468: $32
	sbc  e                                           ; $5469: $9b
	rst  $38                                         ; $546a: $ff
	inc  bc                                          ; $546b: $03
	rst  $38                                         ; $546c: $ff
	call nc, $faff                                   ; $546d: $d4 $ff $fa
	rst  $38                                         ; $5470: $ff
	add  sp, -$01                                    ; $5471: $e8 $ff
	push af                                          ; $5473: $f5
	rst  $38                                         ; $5474: $ff
	ld   a, [$f9ff]                                  ; $5475: $fa $ff $f9
	rst  $38                                         ; $5478: $ff
	cp   $ff                                         ; $5479: $fe $ff
	adc  $ff                                         ; $547b: $ce $ff
	dec  a                                           ; $547d: $3d
	rst  $38                                         ; $547e: $ff
	sbc  $ff                                         ; $547f: $de $ff
	adc  $ff                                         ; $5481: $ce $ff
	cp   $ff                                         ; $5483: $fe $ff
	cp   $ff                                         ; $5485: $fe $ff
	db   $ec                                         ; $5487: $ec
	rst  $38                                         ; $5488: $ff
	db   $fd                                         ; $5489: $fd
	rst  $38                                         ; $548a: $ff
	inc  a                                           ; $548b: $3c
	rst  $38                                         ; $548c: $ff
	di                                               ; $548d: $f3
	rst  $38                                         ; $548e: $ff
	rrca                                             ; $548f: $0f
	rst  $38                                         ; $5490: $ff
	rrca                                             ; $5491: $0f
	rst  $38                                         ; $5492: $ff
	rrca                                             ; $5493: $0f
	rst  $38                                         ; $5494: $ff
	rlca                                             ; $5495: $07
	rst  $38                                         ; $5496: $ff
	ld   h, e                                        ; $5497: $63
	rst  $38                                         ; $5498: $ff
	db   $eb                                         ; $5499: $eb
	rst  $38                                         ; $549a: $ff
	ld   [hl], e                                     ; $549b: $73
	add  b                                           ; $549c: $80
	rst  $38                                         ; $549d: $ff
	add  b                                           ; $549e: $80
	nop                                              ; $549f: $00
	inc  bc                                          ; $54a0: $03
	rst  $38                                         ; $54a1: $ff
	jp   nz, $efff                                   ; $54a2: $c2 $ff $ef

	add  c                                           ; $54a5: $81
	rst  $38                                         ; $54a6: $ff
	dec  b                                           ; $54a7: $05
	db   $fc                                         ; $54a8: $fc
	rst  $38                                         ; $54a9: $ff
	jp   hl                                          ; $54aa: $e9


	rst  $38                                         ; $54ab: $ff
	db   $fc                                         ; $54ac: $fc
	dec  sp                                          ; $54ad: $3b
	add  c                                           ; $54ae: $81
	nop                                              ; $54af: $00
	inc  bc                                          ; $54b0: $03
	rst  $38                                         ; $54b1: $ff
	rrca                                             ; $54b2: $0f
	rst  $38                                         ; $54b3: $ff
	cp   [hl]                                        ; $54b4: $be
	add  c                                           ; $54b5: $81
	rst  $38                                         ; $54b6: $ff
	dec  b                                           ; $54b7: $05
	cpl                                              ; $54b8: $2f
	rst  $38                                         ; $54b9: $ff
	ld   l, a                                        ; $54ba: $6f
	rst  $38                                         ; $54bb: $ff
	or   a                                           ; $54bc: $b7
	cp   c                                           ; $54bd: $b9
	add  c                                           ; $54be: $81
	nop                                              ; $54bf: $00
	inc  c                                           ; $54c0: $0c
	rst  $38                                         ; $54c1: $ff
	di                                               ; $54c2: $f3
	rst  $38                                         ; $54c3: $ff
	inc  c                                           ; $54c4: $0c
	rst  $38                                         ; $54c5: $ff
	sub  d                                           ; $54c6: $92
	rst  $38                                         ; $54c7: $ff
	sub  d                                           ; $54c8: $92
	rst  $38                                         ; $54c9: $ff
	cp   e                                           ; $54ca: $bb
	rst  $38                                         ; $54cb: $ff
	sub  d                                           ; $54cc: $92
	sub  $81                                         ; $54cd: $d6 $81
	nop                                              ; $54cf: $00
	inc  c                                           ; $54d0: $0c
	rst  $38                                         ; $54d1: $ff
	and  $ff                                         ; $54d2: $e6 $ff
	ld   a, l                                        ; $54d4: $7d
	rst  $38                                         ; $54d5: $ff
	ld   l, [hl]                                     ; $54d6: $6e
	rst  $38                                         ; $54d7: $ff
	ld   [hl], a                                     ; $54d8: $77
	rst  $38                                         ; $54d9: $ff
	ld   h, e                                        ; $54da: $63
	rst  $38                                         ; $54db: $ff
	ld   l, a                                        ; $54dc: $6f
	adc  [hl]                                        ; $54dd: $8e
	add  c                                           ; $54de: $81
	nop                                              ; $54df: $00
	dec  b                                           ; $54e0: $05
	rst  $38                                         ; $54e1: $ff
	ld   b, e                                        ; $54e2: $43
	rst  $38                                         ; $54e3: $ff
	or   $ff                                         ; $54e4: $f6 $ff
	ld   a, [hl]                                     ; $54e6: $7e
	add  c                                           ; $54e7: $81
	rst  $38                                         ; $54e8: $ff
	inc  bc                                          ; $54e9: $03
	ld   a, [hl]                                     ; $54ea: $7e
	rst  $38                                         ; $54eb: $ff
	cp   $b4                                         ; $54ec: $fe $b4
	add  c                                           ; $54ee: $81
	nop                                              ; $54ef: $00
	inc  c                                           ; $54f0: $0c
	rst  $38                                         ; $54f1: $ff
	ret  z                                           ; $54f2: $c8

	rst  $38                                         ; $54f3: $ff
	dec  [hl]                                        ; $54f4: $35
	rst  $38                                         ; $54f5: $ff
	or   a                                           ; $54f6: $b7
	rst  $38                                         ; $54f7: $ff
	or   a                                           ; $54f8: $b7
	rst  $38                                         ; $54f9: $ff
	ld   hl, sp-$01                                  ; $54fa: $f8 $ff
	ld   [hl+], a                                    ; $54fc: $22
	daa                                              ; $54fd: $27
	add  c                                           ; $54fe: $81
	nop                                              ; $54ff: $00
	inc  c                                           ; $5500: $0c
	rst  $38                                         ; $5501: $ff
	ld   a, c                                        ; $5502: $79
	rst  $38                                         ; $5503: $ff
	and  $ff                                         ; $5504: $e6 $ff
	db   $eb                                         ; $5506: $eb
	rst  $38                                         ; $5507: $ff
	cp   a                                           ; $5508: $bf
	rst  $38                                         ; $5509: $ff
	cp   a                                           ; $550a: $bf
	rst  $38                                         ; $550b: $ff
	xor  e                                           ; $550c: $ab
	rst  JumpTable                                         ; $550d: $df
	add  c                                           ; $550e: $81
	nop                                              ; $550f: $00
	dec  b                                           ; $5510: $05
	rst  $38                                         ; $5511: $ff
	add  e                                           ; $5512: $83
	rst  $38                                         ; $5513: $ff
	ld   l, a                                        ; $5514: $6f
	rst  $38                                         ; $5515: $ff
	ld   a, a                                        ; $5516: $7f
	add  c                                           ; $5517: $81
	rst  $38                                         ; $5518: $ff
	inc  bc                                          ; $5519: $03
	db   $e3                                         ; $551a: $e3
	rst  $38                                         ; $551b: $ff
	ld   [hl], a                                     ; $551c: $77
	ld   hl, sp-$7f                                  ; $551d: $f8 $81
	nop                                              ; $551f: $00
	inc  c                                           ; $5520: $0c
	rst  $38                                         ; $5521: $ff
	ld   [de], a                                     ; $5522: $12
	rst  $38                                         ; $5523: $ff
	xor  l                                           ; $5524: $ad
	rst  $38                                         ; $5525: $ff
	or   $ff                                         ; $5526: $f6 $ff
	rst  $20                                         ; $5528: $e7
	rst  $38                                         ; $5529: $ff
	xor  d                                           ; $552a: $aa
	rst  $38                                         ; $552b: $ff
	jp   $81c7                                       ; $552c: $c3 $c7 $81


	nop                                              ; $552f: $00
	rlca                                             ; $5530: $07
	rst  $38                                         ; $5531: $ff
	ld   a, a                                        ; $5532: $7f
	rst  $38                                         ; $5533: $ff
	cp   h                                           ; $5534: $bc
	rst  $38                                         ; $5535: $ff
	inc  a                                           ; $5536: $3c
	rst  $38                                         ; $5537: $ff
	ccf                                              ; $5538: $3f
	add  c                                           ; $5539: $81
	rst  $38                                         ; $553a: $ff
	nop                                              ; $553b: $00
	ccf                                              ; $553c: $3f
	add  d                                           ; $553d: $82
	nop                                              ; $553e: $00
	inc  c                                           ; $553f: $0c
	rst  $38                                         ; $5540: $ff
	add  hl, sp                                      ; $5541: $39
	rst  $38                                         ; $5542: $ff
	add  $ff                                         ; $5543: $c6 $ff
	add  $ff                                         ; $5545: $c6 $ff
	add  hl, sp                                      ; $5547: $39
	rst  $38                                         ; $5548: $ff
	ld   [hl], $ff                                   ; $5549: $36 $ff
	db   $fd                                         ; $554b: $fd
	res  0, c                                        ; $554c: $cb $81
	nop                                              ; $554e: $00
	inc  c                                           ; $554f: $0c
	rst  $38                                         ; $5550: $ff
	di                                               ; $5551: $f3
	rst  $38                                         ; $5552: $ff
	ld   c, a                                        ; $5553: $4f

Call_017_5554:
	rst  $38                                         ; $5554: $ff
	ld   [hl], e                                     ; $5555: $73
	rst  $38                                         ; $5556: $ff
	db   $d3                                         ; $5557: $d3
	rst  $38                                         ; $5558: $ff
	ld   e, e                                        ; $5559: $5b
	rst  $38                                         ; $555a: $ff
	push hl                                          ; $555b: $e5
	and  d                                           ; $555c: $a2
	add  c                                           ; $555d: $81
	nop                                              ; $555e: $00
	ld   bc, $07ff                                   ; $555f: $01 $ff $07
	add  c                                           ; $5562: $81
	rst  $38                                         ; $5563: $ff
	nop                                              ; $5564: $00
	sbc  a                                           ; $5565: $9f
	add  c                                           ; $5566: $81
	rst  $38                                         ; $5567: $ff
	nop                                              ; $5568: $00
	sbc  a                                           ; $5569: $9f
	add  b                                           ; $556a: $80
	rst  $38                                         ; $556b: $ff
	nop                                              ; $556c: $00
	ld   hl, sp-$7f                                  ; $556d: $f8 $81
	nop                                              ; $556f: $00
	inc  c                                           ; $5570: $0c
	rst  $38                                         ; $5571: $ff
	call nz, $ebff                                   ; $5572: $c4 $ff $eb
	rst  $38                                         ; $5575: $ff
	db   $fd                                         ; $5576: $fd
	rst  $38                                         ; $5577: $ff
	ld   sp, hl                                      ; $5578: $f9
	rst  $38                                         ; $5579: $ff
	ld   [$f0ff], a                                  ; $557a: $ea $ff $f0
	ld   sp, $0081                                   ; $557d: $31 $81 $00
	inc  c                                           ; $5580: $0c
	rst  $38                                         ; $5581: $ff
	sbc  h                                           ; $5582: $9c
	rst  $38                                         ; $5583: $ff
	ld   l, [hl]                                     ; $5584: $6e
	rst  $38                                         ; $5585: $ff
	adc  [hl]                                        ; $5586: $8e
	rst  $38                                         ; $5587: $ff
	call z, $bdff                                    ; $5588: $cc $ff $bd
	rst  $38                                         ; $558b: $ff
	adc  $c3                                         ; $558c: $ce $c3
	add  c                                           ; $558e: $81
	nop                                              ; $558f: $00
	dec  c                                           ; $5590: $0d
	rst  $38                                         ; $5591: $ff
	inc  bc                                          ; $5592: $03
	rst  $38                                         ; $5593: $ff
	rrca                                             ; $5594: $0f
	rst  $38                                         ; $5595: $ff
	rrca                                             ; $5596: $0f
	rst  $38                                         ; $5597: $ff
	ld   a, a                                        ; $5598: $7f
	rst  $38                                         ; $5599: $ff
	adc  a                                           ; $559a: $8f
	rst  $38                                         ; $559b: $ff
	rrca                                             ; $559c: $0f
	db   $fc                                         ; $559d: $fc
	nop                                              ; $559e: $00
	add  e                                           ; $559f: $83
	rst  $38                                         ; $55a0: $ff
	ld   bc, $ff00                                   ; $55a1: $01 $00 $ff
	add  b                                           ; $55a4: $80
	nop                                              ; $55a5: $00
	add  b                                           ; $55a6: $80
	dec  a                                           ; $55a7: $3d
	add  d                                           ; $55a8: $82
	dec  l                                           ; $55a9: $2d
	nop                                              ; $55aa: $00
	nop                                              ; $55ab: $00
	add  e                                           ; $55ac: $83
	rst  $38                                         ; $55ad: $ff
	ld   bc, $ff00                                   ; $55ae: $01 $00 $ff
	add  b                                           ; $55b1: $80
	nop                                              ; $55b2: $00
	add  b                                           ; $55b3: $80
	ldh  a, [$82]                                    ; $55b4: $f0 $82
	or   c                                           ; $55b6: $b1
	nop                                              ; $55b7: $00
	nop                                              ; $55b8: $00
	add  e                                           ; $55b9: $83
	rst  $38                                         ; $55ba: $ff
	ld   bc, $ff00                                   ; $55bb: $01 $00 $ff
	add  b                                           ; $55be: $80
	nop                                              ; $55bf: $00
	add  b                                           ; $55c0: $80
	inc  c                                           ; $55c1: $0c
	add  b                                           ; $55c2: $80
	rst  $38                                         ; $55c3: $ff
	add  b                                           ; $55c4: $80
	sub  d                                           ; $55c5: $92
	nop                                              ; $55c6: $00
	nop                                              ; $55c7: $00
	add  e                                           ; $55c8: $83
	rst  $38                                         ; $55c9: $ff
	ld   bc, $ff00                                   ; $55ca: $01 $00 $ff
	add  b                                           ; $55cd: $80
	nop                                              ; $55ce: $00
	add  b                                           ; $55cf: $80
	add  hl, de                                      ; $55d0: $19
	add  b                                           ; $55d1: $80
	sbc  e                                           ; $55d2: $9b
	add  b                                           ; $55d3: $80
	ld   a, [bc]                                     ; $55d4: $0a
	nop                                              ; $55d5: $00
	nop                                              ; $55d6: $00
	add  e                                           ; $55d7: $83
	rst  $38                                         ; $55d8: $ff
	ld   bc, $ff00                                   ; $55d9: $01 $00 $ff
	add  b                                           ; $55dc: $80
	nop                                              ; $55dd: $00
	add  b                                           ; $55de: $80
	cp   h                                           ; $55df: $bc
	add  b                                           ; $55e0: $80
	or   l                                           ; $55e1: $b5
	add  b                                           ; $55e2: $80
	inc  [hl]                                        ; $55e3: $34
	nop                                              ; $55e4: $00
	nop                                              ; $55e5: $00
	add  e                                           ; $55e6: $83
	rst  $38                                         ; $55e7: $ff
	ld   bc, $ff00                                   ; $55e8: $01 $00 $ff
	add  b                                           ; $55eb: $80
	nop                                              ; $55ec: $00
	add  b                                           ; $55ed: $80
	scf                                              ; $55ee: $37
	add  b                                           ; $55ef: $80
	db   $fd                                         ; $55f0: $fd
	add  b                                           ; $55f1: $80
	or   l                                           ; $55f2: $b5
	nop                                              ; $55f3: $00
	nop                                              ; $55f4: $00
	add  e                                           ; $55f5: $83
	rst  $38                                         ; $55f6: $ff
	ld   bc, $ff00                                   ; $55f7: $01 $00 $ff
	add  b                                           ; $55fa: $80
	nop                                              ; $55fb: $00
	add  b                                           ; $55fc: $80
	add  [hl]                                        ; $55fd: $86
	add  b                                           ; $55fe: $80
	sbc  a                                           ; $55ff: $9f
	add  b                                           ; $5600: $80
	adc  e                                           ; $5601: $8b
	nop                                              ; $5602: $00
	nop                                              ; $5603: $00
	add  e                                           ; $5604: $83
	rst  $38                                         ; $5605: $ff
	ld   bc, $ff00                                   ; $5606: $01 $00 $ff
	add  b                                           ; $5609: $80
	nop                                              ; $560a: $00
	add  b                                           ; $560b: $80
	ld   a, h                                        ; $560c: $7c
	add  b                                           ; $560d: $80
	db   $ec                                         ; $560e: $ec
	add  b                                           ; $560f: $80
	ld   l, h                                        ; $5610: $6c
	nop                                              ; $5611: $00

jr_017_5612:
	nop                                              ; $5612: $00
	add  e                                           ; $5613: $83
	rst  $38                                         ; $5614: $ff
	ld   bc, $ff00                                   ; $5615: $01 $00 $ff
	add  b                                           ; $5618: $80
	nop                                              ; $5619: $00
	add  b                                           ; $561a: $80
	db   $ed                                         ; $561b: $ed
	add  b                                           ; $561c: $80
	cp   a                                           ; $561d: $bf
	add  b                                           ; $561e: $80
	or   [hl]                                        ; $561f: $b6
	nop                                              ; $5620: $00
	nop                                              ; $5621: $00
	add  e                                           ; $5622: $83
	rst  $38                                         ; $5623: $ff
	ld   bc, $ff00                                   ; $5624: $01 $00 $ff
	add  b                                           ; $5627: $80
	nop                                              ; $5628: $00
	add  b                                           ; $5629: $80
	add  b                                           ; $562a: $80
	add  b                                           ; $562b: $80
	jp   $0081                                       ; $562c: $c3 $81 $00


	add  e                                           ; $562f: $83
	rst  $38                                         ; $5630: $ff
	ld   bc, $ff00                                   ; $5631: $01 $00 $ff
	add  b                                           ; $5634: $80
	nop                                              ; $5635: $00
	add  b                                           ; $5636: $80
	add  $80                                         ; $5637: $c6 $80
	rst  $38                                         ; $5639: $ff
	add  b                                           ; $563a: $80
	add  $00                                         ; $563b: $c6 $00
	nop                                              ; $563d: $00
	add  e                                           ; $563e: $83
	rst  $38                                         ; $563f: $ff
	ld   bc, $ff00                                   ; $5640: $01 $00 $ff
	add  b                                           ; $5643: $80
	nop                                              ; $5644: $00
	add  b                                           ; $5645: $80
	inc  c                                           ; $5646: $0c
	add  b                                           ; $5647: $80
	cp   h                                           ; $5648: $bc
	add  b                                           ; $5649: $80
	jr   nc, jr_017_564c                             ; $564a: $30 $00

jr_017_564c:
	nop                                              ; $564c: $00
	add  e                                           ; $564d: $83
	rst  $38                                         ; $564e: $ff
	ld   bc, $ff00                                   ; $564f: $01 $00 $ff
	add  b                                           ; $5652: $80
	nop                                              ; $5653: $00
	add  d                                           ; $5654: $82
	ld   hl, sp-$80                                  ; $5655: $f8 $80
	sbc  b                                           ; $5657: $98
	nop                                              ; $5658: $00
	nop                                              ; $5659: $00
	add  e                                           ; $565a: $83
	rst  $38                                         ; $565b: $ff
	ld   bc, $ff00                                   ; $565c: $01 $00 $ff
	add  b                                           ; $565f: $80
	nop                                              ; $5660: $00
	add  b                                           ; $5661: $80
	dec  sp                                          ; $5662: $3b
	add  b                                           ; $5663: $80
	cpl                                              ; $5664: $2f
	add  b                                           ; $5665: $80
	dec  l                                           ; $5666: $2d
	nop                                              ; $5667: $00
	nop                                              ; $5668: $00
	add  e                                           ; $5669: $83
	rst  $38                                         ; $566a: $ff
	ld   bc, $ff00                                   ; $566b: $01 $00 $ff
	add  b                                           ; $566e: $80
	nop                                              ; $566f: $00
	add  b                                           ; $5670: $80
	ld   h, e                                        ; $5671: $63
	add  b                                           ; $5672: $80
	ldh  a, [c]                                      ; $5673: $f2
	add  b                                           ; $5674: $80
	add  e                                           ; $5675: $83
	nop                                              ; $5676: $00
	nop                                              ; $5677: $00
	add  e                                           ; $5678: $83
	rst  $38                                         ; $5679: $ff
	ld   bc, $ff00                                   ; $567a: $01 $00 $ff
	add  b                                           ; $567d: $80
	nop                                              ; $567e: $00
	add  b                                           ; $567f: $80
	db   $fc                                         ; $5680: $fc
	add  b                                           ; $5681: $80
	inc  c                                           ; $5682: $0c
	add  b                                           ; $5683: $80
	db   $fc                                         ; $5684: $fc
	add  b                                           ; $5685: $80
	rst  $38                                         ; $5686: $ff
	add  b                                           ; $5687: $80
	dec  l                                           ; $5688: $2d
	add  b                                           ; $5689: $80
	add  hl, sp                                      ; $568a: $39
	add  b                                           ; $568b: $80
	ld   sp, $3780                                   ; $568c: $31 $80 $37
	add  d                                           ; $568f: $82
	jr   nc, jr_017_5612                             ; $5690: $30 $80

	nop                                              ; $5692: $00
	add  b                                           ; $5693: $80
	rst  $38                                         ; $5694: $ff
	add  b                                           ; $5695: $80
	pop  af                                          ; $5696: $f1
	add  d                                           ; $5697: $82
	ld   h, c                                        ; $5698: $61
	add  b                                           ; $5699: $80
	ld   sp, hl                                      ; $569a: $f9
	add  b                                           ; $569b: $80
	ld   h, d                                        ; $569c: $62
	add  b                                           ; $569d: $80
	ld   h, b                                        ; $569e: $60
	add  b                                           ; $569f: $80
	nop                                              ; $56a0: $00
	add  b                                           ; $56a1: $80
	rst  $38                                         ; $56a2: $ff
	add  b                                           ; $56a3: $80
	xor  e                                           ; $56a4: $ab
	add  b                                           ; $56a5: $80
	ccf                                              ; $56a6: $3f
	add  b                                           ; $56a7: $80
	dec  hl                                          ; $56a8: $2b
	add  b                                           ; $56a9: $80
	ccf                                              ; $56aa: $3f
	add  b                                           ; $56ab: $80
	ld   [hl], $80                                   ; $56ac: $36 $80
	rst  $20                                         ; $56ae: $e7
	add  b                                           ; $56af: $80
	nop                                              ; $56b0: $00
	add  b                                           ; $56b1: $80
	rst  $38                                         ; $56b2: $ff
	add  b                                           ; $56b3: $80
	inc  de                                          ; $56b4: $13
	add  b                                           ; $56b5: $80
	dec  de                                          ; $56b6: $1b
	add  b                                           ; $56b7: $80
	ld   a, [bc]                                     ; $56b8: $0a
	add  b                                           ; $56b9: $80
	inc  e                                           ; $56ba: $1c
	add  b                                           ; $56bb: $80
	sbc  a                                           ; $56bc: $9f
	add  b                                           ; $56bd: $80
	add  e                                           ; $56be: $83
	add  b                                           ; $56bf: $80

jr_017_56c0:
	nop                                              ; $56c0: $00
	add  b                                           ; $56c1: $80
	rst  $38                                         ; $56c2: $ff
	add  b                                           ; $56c3: $80
	cp   h                                           ; $56c4: $bc
	add  b                                           ; $56c5: $80
	or   h                                           ; $56c6: $b4
	add  b                                           ; $56c7: $80
	or   c                                           ; $56c8: $b1
	add  b                                           ; $56c9: $80
	or   b                                           ; $56ca: $b0
	add  d                                           ; $56cb: $82
	db   $fc                                         ; $56cc: $fc
	add  b                                           ; $56cd: $80
	nop                                              ; $56ce: $00
	add  b                                           ; $56cf: $80
	rst  $38                                         ; $56d0: $ff
	add  b                                           ; $56d1: $80
	inc  c                                           ; $56d2: $0c
	add  b                                           ; $56d3: $80
	ccf                                              ; $56d4: $3f
	add  b                                           ; $56d5: $80
	rst  $38                                         ; $56d6: $ff
	add  b                                           ; $56d7: $80
	inc  c                                           ; $56d8: $0c
	add  b                                           ; $56d9: $80
	inc  a                                           ; $56da: $3c
	add  b                                           ; $56db: $80
	inc  c                                           ; $56dc: $0c
	add  b                                           ; $56dd: $80
	nop                                              ; $56de: $00
	add  b                                           ; $56df: $80
	rst  $38                                         ; $56e0: $ff
	add  d                                           ; $56e1: $82
	rrca                                             ; $56e2: $0f
	add  b                                           ; $56e3: $80
	res  0, d                                        ; $56e4: $cb $82
	dec  bc                                          ; $56e6: $0b
	add  b                                           ; $56e7: $80
	rrca                                             ; $56e8: $0f
	add  b                                           ; $56e9: $80
	nop                                              ; $56ea: $00
	add  b                                           ; $56eb: $80
	rst  $38                                         ; $56ec: $ff
	add  b                                           ; $56ed: $80
	ld   l, h                                        ; $56ee: $6c
	add  b                                           ; $56ef: $80
	ld   a, h                                        ; $56f0: $7c
	add  [hl]                                        ; $56f1: $86
	ld   h, b                                        ; $56f2: $60
	add  b                                           ; $56f3: $80
	nop                                              ; $56f4: $00
	add  b                                           ; $56f5: $80
	rst  $38                                         ; $56f6: $ff
	add  b                                           ; $56f7: $80
	cp   e                                           ; $56f8: $bb
	add  b                                           ; $56f9: $80
	rst  $20                                         ; $56fa: $e7
	add  b                                           ; $56fb: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $56fc: $cf
	add  b                                           ; $56fd: $80
	db   $db                                         ; $56fe: $db
	add  b                                           ; $56ff: $80
	jp   $c780                                       ; $5700: $c3 $80 $c7


	add  b                                           ; $5703: $80
	nop                                              ; $5704: $00
	add  b                                           ; $5705: $80
	rst  $38                                         ; $5706: $ff
	add  b                                           ; $5707: $80
	add  c                                           ; $5708: $81
	add  b                                           ; $5709: $80

Jump_017_570a:
	ld   b, d                                        ; $570a: $42
	add  d                                           ; $570b: $82
	ld   b, b                                        ; $570c: $40
	add  h                                           ; $570d: $84
	nop                                              ; $570e: $00
	add  b                                           ; $570f: $80
	rst  $38                                         ; $5710: $ff
	add  [hl]                                        ; $5711: $86
	ret  z                                           ; $5712: $c8

	add  d                                           ; $5713: $82
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5714: $cf
	add  b                                           ; $5715: $80
	nop                                              ; $5716: $00
	add  b                                           ; $5717: $80
	rst  $38                                         ; $5718: $ff
	add  b                                           ; $5719: $80
	ld   a, $80                                      ; $571a: $3e $80
	ld   a, [bc]                                     ; $571c: $0a
	add  b                                           ; $571d: $80
	cp   b                                           ; $571e: $b8
	add  b                                           ; $571f: $80
	cp   d                                           ; $5720: $ba
	add  b                                           ; $5721: $80
	xor  d                                           ; $5722: $aa
	add  b                                           ; $5723: $80
	xor  e                                           ; $5724: $ab
	add  b                                           ; $5725: $80
	nop                                              ; $5726: $00
	add  b                                           ; $5727: $80
	rst  $38                                         ; $5728: $ff
	add  b                                           ; $5729: $80
	sbc  b                                           ; $572a: $98
	add  b                                           ; $572b: $80
	ld   hl, sp-$7c                                  ; $572c: $f8 $84
	sbc  b                                           ; $572e: $98
	add  b                                           ; $572f: $80
	db   $fc                                         ; $5730: $fc
	add  b                                           ; $5731: $80
	nop                                              ; $5732: $00
	add  b                                           ; $5733: $80
	rst  $38                                         ; $5734: $ff
	add  b                                           ; $5735: $80
	ld   l, $80                                      ; $5736: $2e $80
	add  hl, sp                                      ; $5738: $39
	add  b                                           ; $5739: $80
	inc  sp                                          ; $573a: $33
	add  b                                           ; $573b: $80
	ld   [hl], $80                                   ; $573c: $36 $80
	jr   nc, jr_017_56c0                             ; $573e: $30 $80

	ld   sp, $0080                                   ; $5740: $31 $80 $00
	add  b                                           ; $5743: $80
	rst  $38                                         ; $5744: $ff
	add  b                                           ; $5745: $80
	db   $e3                                         ; $5746: $e3
	add  b                                           ; $5747: $80
	jp   nc, $d380                                   ; $5748: $d2 $80 $d3

	add  b                                           ; $574b: $80
	jp   nc, $c180                                   ; $574c: $d2 $80 $c1

	add  b                                           ; $574f: $80
	jp   $0080                                       ; $5750: $c3 $80 $00


	add  b                                           ; $5753: $80
	rst  $38                                         ; $5754: $ff
	add  b                                           ; $5755: $80
	db   $fc                                         ; $5756: $fc
	add  b                                           ; $5757: $80
	inc  c                                           ; $5758: $0c
	add  b                                           ; $5759: $80
	db   $fc                                         ; $575a: $fc
	add  b                                           ; $575b: $80
	inc  b                                           ; $575c: $04
	add  b                                           ; $575d: $80
	sbc  b                                           ; $575e: $98
	add  b                                           ; $575f: $80
	adc  h                                           ; $5760: $8c
	add  b                                           ; $5761: $80
	nop                                              ; $5762: $00
	cp   c                                           ; $5763: $b9
	ld   bc, $3105                                   ; $5764: $01 $05 $31
	ld   c, $20                                      ; $5767: $0e $20
	db   $10                                         ; $5769: $10
	ld   e, $11                                      ; $576a: $1e $11
	add  b                                           ; $576c: $80
	db   $10                                         ; $576d: $10
	inc  b                                           ; $576e: $04
	rra                                              ; $576f: $1f
	db   $10                                         ; $5770: $10
	rla                                              ; $5771: $17
	db   $10                                         ; $5772: $10
	ld   bc, $0081                                   ; $5773: $01 $81 $00
	ld   [bc], a                                     ; $5776: $02
	ld   a, [$e5ec]                                  ; $5777: $fa $ec $e5
	add  b                                           ; $577a: $80
	db   $f4                                         ; $577b: $f4
	rlca                                             ; $577c: $07
	ld   [hl], e                                     ; $577d: $73
	ld   [hl], h                                     ; $577e: $74
	ld   a, c                                        ; $577f: $79
	ld   a, e                                        ; $5780: $7b
	jr   nz, @-$40                                   ; $5781: $20 $be

	nop                                              ; $5783: $00
	rst  ToBoot                                         ; $5784: $c7
	add  c                                           ; $5785: $81
	nop                                              ; $5786: $00
	nop                                              ; $5787: $00
	sbc  c                                           ; $5788: $99
	add  b                                           ; $5789: $80
	ccf                                              ; $578a: $3f
	add  hl, bc                                      ; $578b: $09
	rst  $38                                         ; $578c: $ff
	ld   a, a                                        ; $578d: $7f
	rst  $38                                         ; $578e: $ff
	rra                                              ; $578f: $1f
	rst  $38                                         ; $5790: $ff
	rst  JumpTable                                         ; $5791: $df
	add  c                                           ; $5792: $81
	ld   a, l                                        ; $5793: $7d
	nop                                              ; $5794: $00
	dec  e                                           ; $5795: $1d
	add  c                                           ; $5796: $81
	nop                                              ; $5797: $00
	nop                                              ; $5798: $00
	ld   h, c                                        ; $5799: $61
	add  [hl]                                        ; $579a: $86
	rst  $38                                         ; $579b: $ff
	inc  bc                                          ; $579c: $03
	inc  c                                           ; $579d: $0c
	rst  $38                                         ; $579e: $ff
	nop                                              ; $579f: $00
	ld   [hl], l                                     ; $57a0: $75
	add  b                                           ; $57a1: $80
	nop                                              ; $57a2: $00
	ld   [bc], a                                     ; $57a3: $02
	db   $10                                         ; $57a4: $10
	or   h                                           ; $57a5: $b4
	db   $dd                                         ; $57a6: $dd
	add  b                                           ; $57a7: $80

jr_017_57a8:
	xor  $80                                         ; $57a8: $ee $80
	rst  $30                                         ; $57aa: $f7
	add  b                                           ; $57ab: $80
	ei                                               ; $57ac: $fb
	jr   @+$01                                       ; $57ad: $18 $ff

	jr   nc, jr_017_57a8                             ; $57af: $30 $f7

	db   $10                                         ; $57b1: $10
	pop  de                                          ; $57b2: $d1
	db   $10                                         ; $57b3: $10
	ld   [de], a                                     ; $57b4: $12
	ld   [hl], c                                     ; $57b5: $71
	adc  l                                           ; $57b6: $8d
	inc  bc                                          ; $57b7: $03
	adc  e                                           ; $57b8: $8b
	add  e                                           ; $57b9: $83
	ld   b, a                                        ; $57ba: $47
	ld   b, l                                        ; $57bb: $45
	and  a                                           ; $57bc: $a7
	and  [hl]                                        ; $57bd: $a6
	db   $d3                                         ; $57be: $d3
	ld   b, e                                        ; $57bf: $43
	ld   a, l                                        ; $57c0: $7d
	ld   b, c                                        ; $57c1: $41
	ld   l, d                                        ; $57c2: $6a
	nop                                              ; $57c3: $00
	ld   e, l                                        ; $57c4: $5d
	ld   [$815d], sp                                 ; $57c5: $08 $5d $81
	cp   $18                                         ; $57c8: $fe $18
	sbc  $fe                                         ; $57ca: $de $fe
	rst  $28                                         ; $57cc: $ef
	rst  $38                                         ; $57cd: $ff
	ldh  a, [rDIV]                                   ; $57ce: $f0 $04
	ld   [hl], c                                     ; $57d0: $71
	inc  b                                           ; $57d1: $04
	ld   b, b                                        ; $57d2: $40
	inc  b                                           ; $57d3: $04
	ld   h, b                                        ; $57d4: $60
	ld   b, h                                        ; $57d5: $44
	ldh  a, [$fe]                                    ; $57d6: $f0 $fe
	rst  $20                                         ; $57d8: $e7
	rst  $38                                         ; $57d9: $ff
	ld   hl, sp-$01                                  ; $57da: $f8 $ff
	ld   a, b                                        ; $57dc: $78
	ld   a, a                                        ; $57dd: $7f
	rla                                              ; $57de: $17
	db   $10                                         ; $57df: $10
	and  $00                                         ; $57e0: $e6 $00
	ld   [hl], b                                     ; $57e2: $70
	add  c                                           ; $57e3: $81
	nop                                              ; $57e4: $00
	ld   [bc], a                                     ; $57e5: $02
	inc  [hl]                                        ; $57e6: $34
	ld   l, [hl]                                     ; $57e7: $6e
	ld   c, $80                                      ; $57e8: $0e $80
	ld   l, $07                                      ; $57ea: $2e $07
	sbc  $5f                                         ; $57ec: $de $5f
	rst  $38                                         ; $57ee: $ff
	cp   h                                           ; $57ef: $bc
	nop                                              ; $57f0: $00
	ld   e, a                                        ; $57f1: $5f
	nop                                              ; $57f2: $00
	inc  de                                          ; $57f3: $13
	add  c                                           ; $57f4: $81
	nop                                              ; $57f5: $00
	ld   bc, $f043                                   ; $57f6: $01 $43 $f0
	add  e                                           ; $57f9: $83
	rst  $38                                         ; $57fa: $ff
	add  b                                           ; $57fb: $80
	ld   a, [hl]                                     ; $57fc: $7e
	inc  bc                                          ; $57fd: $03
	ld   [bc], a                                     ; $57fe: $02
	ld   a, [hl]                                     ; $57ff: $7e
	nop                                              ; $5800: $00
	ld   c, l                                        ; $5801: $4d
	add  b                                           ; $5802: $80
	nop                                              ; $5803: $00
	ld   [bc], a                                     ; $5804: $02
	inc  b                                           ; $5805: $04
	dec  [hl]                                        ; $5806: $35
	rst  $38                                         ; $5807: $ff
	add  b                                           ; $5808: $80
	ld   hl, sp-$80                                  ; $5809: $f8 $80
	ldh  [$0a], a                                    ; $580b: $e0 $0a
	pop  bc                                          ; $580d: $c1
	ret  nz                                          ; $580e: $c0

	inc  bc                                          ; $580f: $03
	ld   bc, $0307                                   ; $5810: $01 $07 $03
	rst  $38                                         ; $5813: $ff
	rlca                                             ; $5814: $07
	db   $eb                                         ; $5815: $eb
	db   $e3                                         ; $5816: $e3
	rst  $30                                         ; $5817: $f7
	add  l                                           ; $5818: $85
	nop                                              ; $5819: $00
	ld   [$0080], sp                                 ; $581a: $08 $80 $00
	pop  bc                                          ; $581d: $c1
	add  b                                           ; $581e: $80
	ldh  [$c0], a                                    ; $581f: $e0 $c0
	di                                               ; $5821: $f3
	pop  hl                                          ; $5822: $e1
	di                                               ; $5823: $f3
	add  c                                           ; $5824: $81
	nop                                              ; $5825: $00
	ld   [bc], a                                     ; $5826: $02
	cp   $00                                         ; $5827: $fe $00
	ld   a, c                                        ; $5829: $79
	add  c                                           ; $582a: $81
	ld   a, b                                        ; $582b: $78
	add  b                                           ; $582c: $80
	ldh  a, [$80]                                    ; $582d: $f0 $80
	pop  af                                          ; $582f: $f1
	add  b                                           ; $5830: $80
	db   $fd                                         ; $5831: $fd
	nop                                              ; $5832: $00
	rst  $38                                         ; $5833: $ff
	add  e                                           ; $5834: $83
	nop                                              ; $5835: $00
	ld   bc, $00ff                                   ; $5836: $01 $ff $00
	add  b                                           ; $5839: $80
	rst  $28                                         ; $583a: $ef
	add  b                                           ; $583b: $80
	xor  $82                                         ; $583c: $ee $82
	call c, $ff00                                    ; $583e: $dc $00 $ff
	add  e                                           ; $5841: $83
	nop                                              ; $5842: $00
	inc  bc                                          ; $5843: $03
	ldh  [rP1], a                                    ; $5844: $e0 $00
	ret  nc                                          ; $5846: $d0

	ret  nz                                          ; $5847: $c0

	add  b                                           ; $5848: $80
	nop                                              ; $5849: $00
	nop                                              ; $584a: $00
	ld   [hl], b                                     ; $584b: $70
	add  c                                           ; $584c: $81
	nop                                              ; $584d: $00
	ld   [de], a                                     ; $584e: $12
	ld   a, a                                        ; $584f: $7f
	nop                                              ; $5850: $00
	ld   a, $00                                      ; $5851: $3e $00
	ld   h, b                                        ; $5853: $60
	nop                                              ; $5854: $00
	jr   nc, jr_017_5857                             ; $5855: $30 $00

jr_017_5857:
	jr   jr_017_5859                                 ; $5857: $18 $00

jr_017_5859:
	inc  c                                           ; $5859: $0c
	nop                                              ; $585a: $00
	ld   b, $00                                      ; $585b: $06 $00
	ld   a, h                                        ; $585d: $7c

jr_017_585e:
	nop                                              ; $585e: $00
	rst  $30                                         ; $585f: $f7
	nop                                              ; $5860: $00
	ld   bc, $0083                                   ; $5861: $01 $83 $00
	ld   [bc], a                                     ; $5864: $02
	ld   b, $00                                      ; $5865: $06 $00
	dec  bc                                          ; $5867: $0b
	add  c                                           ; $5868: $81
	inc  b                                           ; $5869: $04
	add  b                                           ; $586a: $80
	ld   [bc], a                                     ; $586b: $02
	inc  b                                           ; $586c: $04
	ld   h, c                                        ; $586d: $61
	nop                                              ; $586e: $00
	rst  ToBoot                                         ; $586f: $c7
	nop                                              ; $5870: $00
	add  b                                           ; $5871: $80
	add  c                                           ; $5872: $81
	nop                                              ; $5873: $00
	inc  b                                           ; $5874: $04
	add  hl, de                                      ; $5875: $19
	nop                                              ; $5876: $00
	dec  sp                                          ; $5877: $3b
	inc  bc                                          ; $5878: $03
	ld   bc, $0581                                   ; $5879: $01 $81 $05
	ld   [de], a                                     ; $587c: $12
	add  h                                           ; $587d: $84
	ld   [bc], a                                     ; $587e: $02
	jr   jr_017_5884                                 ; $587f: $18 $03

	ld   bc, $1d00                                   ; $5881: $01 $00 $1d

jr_017_5884:
	nop                                              ; $5884: $00
	ld   a, l                                        ; $5885: $7d
	nop                                              ; $5886: $00
	ld   e, $4f                                      ; $5887: $1e $4f
	ld   e, [hl]                                     ; $5889: $5e
	ld   h, a                                        ; $588a: $67
	rst  $20                                         ; $588b: $e7
	and  a                                           ; $588c: $a7
	rrc  b                                           ; $588d: $cb $08
	db   $db                                         ; $588f: $db
	add  b                                           ; $5890: $80
	inc  b                                           ; $5891: $04
	inc  de                                          ; $5892: $13
	nop                                              ; $5893: $00
	rst  $10                                         ; $5894: $d7
	nop                                              ; $5895: $00
	rst  $30                                         ; $5896: $f7
	db   $10                                         ; $5897: $10
	add  sp, -$01                                    ; $5898: $e8 $ff
	ld   h, e                                        ; $589a: $63
	rst  $38                                         ; $589b: $ff
	ld   sp, $c1ff                                   ; $589c: $31 $ff $c1
	ld   sp, $1171                                   ; $589f: $31 $71 $11
	inc  de                                          ; $58a2: $13
	db   $10                                         ; $58a3: $10
	ld   d, c                                        ; $58a4: $51
	jr   nc, jr_017_585e                             ; $58a5: $30 $b7

	add  b                                           ; $58a7: $80
	ld   [hl], b                                     ; $58a8: $70
	add  e                                           ; $58a9: $83
	rst  $38                                         ; $58aa: $ff
	dec  b                                           ; $58ab: $05
	sbc  h                                           ; $58ac: $9c
	nop                                              ; $58ad: $00
	inc  e                                           ; $58ae: $1c
	nop                                              ; $58af: $00
	inc  e                                           ; $58b0: $1c
	nop                                              ; $58b1: $00
	add  b                                           ; $58b2: $80
	ld   [$6b09], sp                                 ; $58b3: $08 $09 $6b
	ld   [$9858], sp                                 ; $58b6: $08 $58 $98
	jp   hl                                          ; $58b9: $e9


	ret  z                                           ; $58ba: $c8

	di                                               ; $58bb: $f3
	pop  hl                                          ; $58bc: $e1
	and  d                                           ; $58bd: $a2
	ld   b, b                                        ; $58be: $40
	add  b                                           ; $58bf: $80
	ld   b, h                                        ; $58c0: $44
	ld   c, $24                                      ; $58c1: $0e $24
	inc  b                                           ; $58c3: $04
	ld   b, h                                        ; $58c4: $44
	inc  b                                           ; $58c5: $04
	ld   [hl], c                                     ; $58c6: $71
	inc  b                                           ; $58c7: $04
	cp   b                                           ; $58c8: $b8
	ccf                                              ; $58c9: $3f
	add  hl, sp                                      ; $58ca: $39
	ccf                                              ; $58cb: $3f
	add  hl, sp                                      ; $58cc: $39
	ccf                                              ; $58cd: $3f
	ld   h, l                                        ; $58ce: $65
	nop                                              ; $58cf: $00
	ld   [hl], b                                     ; $58d0: $70
	add  c                                           ; $58d1: $81
	nop                                              ; $58d2: $00
	inc  b                                           ; $58d3: $04
	ld   [hl], l                                     ; $58d4: $75
	nop                                              ; $58d5: $00
	ei                                               ; $58d6: $fb
	jr   jr_017_58fc                                 ; $58d7: $18 $23

	add  b                                           ; $58d9: $80
	db   $fd                                         ; $58da: $fd
	add  c                                           ; $58db: $81
	db   $fc                                         ; $58dc: $fc
	nop                                              ; $58dd: $00
	sub  e                                           ; $58de: $93
	add  e                                           ; $58df: $83
	nop                                              ; $58e0: $00
	ld   a, [bc]                                     ; $58e1: $0a
	ret  nz                                          ; $58e2: $c0

	nop                                              ; $58e3: $00
	xor  h                                           ; $58e4: $ac
	jr   nz, jr_017_58e7                             ; $58e5: $20 $00

jr_017_58e7:
	ret  nz                                          ; $58e7: $c0

	ld   e, b                                        ; $58e8: $58
	ret  c                                           ; $58e9: $d8

	inc  e                                           ; $58ea: $1c
	call c, $83b1                                    ; $58eb: $dc $b1 $83
	add  h                                           ; $58ee: $84
	ld   [bc], a                                     ; $58ef: $02
	dec  b                                           ; $58f0: $05
	add  [hl]                                        ; $58f1: $86
	or   [hl]                                        ; $58f2: $b6
	add  b                                           ; $58f3: $80
	add  a                                           ; $58f4: $87
	add  b                                           ; $58f5: $80
	rst  JumpTable                                         ; $58f6: $df
	nop                                              ; $58f7: $00
	cp   a                                           ; $58f8: $bf
	add  b                                           ; $58f9: $80
	ld   a, a                                        ; $58fa: $7f
	inc  b                                           ; $58fb: $04

jr_017_58fc:
	or   d                                           ; $58fc: $b2
	add  c                                           ; $58fd: $81
	ld   [de], a                                     ; $58fe: $12
	nop                                              ; $58ff: $00
	ld   hl, $0081                                   ; $5900: $21 $81 $00
	nop                                              ; $5903: $00
	ret  nz                                          ; $5904: $c0

	add  l                                           ; $5905: $85
	nop                                              ; $5906: $00
	add  hl, bc                                      ; $5907: $09
	ld   a, [hl-]                                    ; $5908: $3a
	pop  bc                                          ; $5909: $c1
	adc  a                                           ; $590a: $8f
	add  e                                           ; $590b: $83
	inc  de                                          ; $590c: $13
	inc  bc                                          ; $590d: $03
	xor  a                                           ; $590e: $af
	rlca                                             ; $590f: $07
	ld   b, a                                        ; $5910: $47
	rlca                                             ; $5911: $07
	add  b                                           ; $5912: $80
	nop                                              ; $5913: $00
	dec  b                                           ; $5914: $05
	jr   jr_017_591f                                 ; $5915: $18 $08

	dec  a                                           ; $5917: $3d
	inc  e                                           ; $5918: $1c
	dec  a                                           ; $5919: $3d
	db   $fc                                         ; $591a: $fc
	add  b                                           ; $591b: $80
	rst  $38                                         ; $591c: $ff
	add  d                                           ; $591d: $82
	pop  bc                                          ; $591e: $c1

jr_017_591f:
	ld   [bc], a                                     ; $591f: $02
	adc  l                                           ; $5920: $8d
	add  c                                           ; $5921: $81
	ld   de, $0181                                   ; $5922: $11 $81 $01
	inc  bc                                          ; $5925: $03
	rst  $20                                         ; $5926: $e7
	inc  bc                                          ; $5927: $03
	ld   hl, sp+$00                                  ; $5928: $f8 $00
	add  b                                           ; $592a: $80
	ldh  a, [rP1]                                    ; $592b: $f0 $00
	di                                               ; $592d: $f3
	add  c                                           ; $592e: $81
	ldh  a, [$80]                                    ; $592f: $f0 $80
	ldh  [rP1], a                                    ; $5931: $e0 $00
	db   $e4                                         ; $5933: $e4
	add  c                                           ; $5934: $81
	ldh  [$81], a                                    ; $5935: $e0 $81
	ret  nz                                          ; $5937: $c0

	inc  b                                           ; $5938: $04
	rlca                                             ; $5939: $07
	ld   sp, hl                                      ; $593a: $f9
	cp   c                                           ; $593b: $b9
	or   $76                                         ; $593c: $f6 $76
	add  b                                           ; $593e: $80
	ei                                               ; $593f: $fb
	add  b                                           ; $5940: $80
	inc  de                                          ; $5941: $13
	add  hl, bc                                      ; $5942: $09
	push hl                                          ; $5943: $e5
	ld   bc, $0072                                   ; $5944: $01 $72 $00
	ld   bc, $5800                                   ; $5947: $01 $00 $58
	rst  JumpTable                                         ; $594a: $df
	rst  $28                                         ; $594b: $ef
	rst  $38                                         ; $594c: $ff
	add  b                                           ; $594d: $80
	nop                                              ; $594e: $00
	add  b                                           ; $594f: $80
	rst  $38                                         ; $5950: $ff
	add  b                                           ; $5951: $80
	nop                                              ; $5952: $00
	ld   [$1858], sp                                 ; $5953: $08 $58 $18
	ld   b, $1e                                      ; $5956: $06 $1e
	ld   bc, $fa1f                                   ; $5958: $01 $1f $fa
	dec  a                                           ; $595b: $3d
	ccf                                              ; $595c: $3f
	adc  e                                           ; $595d: $8b
	ld   a, $02                                      ; $595e: $3e $02
	ld   l, l                                        ; $5960: $6d
	ld   de, $8117                                   ; $5961: $11 $17 $81
	inc  de                                          ; $5964: $13
	add  b                                           ; $5965: $80
	db   $10                                         ; $5966: $10
	ld   [bc], a                                     ; $5967: $02
	add  h                                           ; $5968: $84
	add  b                                           ; $5969: $80
	adc  e                                           ; $596a: $8b
	add  b                                           ; $596b: $80
	adc  b                                           ; $596c: $88
	add  c                                           ; $596d: $81
	ld   [$870a], sp                                 ; $596e: $08 $0a $87
	ld   hl, sp-$0f                                  ; $5971: $f8 $f1
	ldh  a, [$c2]                                    ; $5973: $f0 $c2
	ret  nz                                          ; $5975: $c0

	inc  b                                           ; $5976: $04
	nop                                              ; $5977: $00
	ld   a, [bc]                                     ; $5978: $0a
	nop                                              ; $5979: $00
	ldh  a, [$83]                                    ; $597a: $f0 $83
	nop                                              ; $597c: $00
	nop                                              ; $597d: $00
	dec  a                                           ; $597e: $3d
	add  e                                           ; $597f: $83
	sbc  a                                           ; $5980: $9f
	nop                                              ; $5981: $00
	cp   a                                           ; $5982: $bf
	add  e                                           ; $5983: $83
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5984: $cf
	nop                                              ; $5985: $00
	rst  JumpTable                                         ; $5986: $df
	add  c                                           ; $5987: $81
	rst  $20                                         ; $5988: $e7
	ld   bc, $9078                                   ; $5989: $01 $78 $90
	add  d                                           ; $598c: $82
	ret  nc                                          ; $598d: $d0

	add  d                                           ; $598e: $82
	add  sp, -$80                                    ; $598f: $e8 $80
	ld   hl, sp+$01                                  ; $5991: $f8 $01
	ldh  a, [$f8]                                    ; $5993: $f0 $f8
	add  b                                           ; $5995: $80
	db   $fc                                         ; $5996: $fc
	ld   bc, $1f28                                   ; $5997: $01 $28 $1f
	add  d                                           ; $599a: $82
	rrca                                             ; $599b: $0f
	nop                                              ; $599c: $00
	rla                                              ; $599d: $17
	add  c                                           ; $599e: $81

jr_017_599f:
	rlca                                             ; $599f: $07
	nop                                              ; $59a0: $00
	dec  de                                          ; $59a1: $1b
	add  c                                           ; $59a2: $81
	inc  hl                                          ; $59a3: $23
	ld   [bc], a                                     ; $59a4: $02
	dec  h                                           ; $59a5: $25
	ld   hl, $8303                                   ; $59a6: $21 $03 $83
	rst  $20                                         ; $59a9: $e7
	nop                                              ; $59aa: $00
	rst  $38                                         ; $59ab: $ff
	add  a                                           ; $59ac: $87
	di                                               ; $59ad: $f3
	ld   c, $04                                      ; $59ae: $0e $04
	nop                                              ; $59b0: $00
	ld   a, $00                                      ; $59b1: $3e $00
	ld   h, b                                        ; $59b3: $60
	nop                                              ; $59b4: $00
	jr   nc, jr_017_59b7                             ; $59b5: $30 $00

jr_017_59b7:
	jr   jr_017_59b9                                 ; $59b7: $18 $00

jr_017_59b9:
	inc  c                                           ; $59b9: $0c
	nop                                              ; $59ba: $00
	ld   b, $00                                      ; $59bb: $06 $00
	ld   a, h                                        ; $59bd: $7c
	add  c                                           ; $59be: $81
	nop                                              ; $59bf: $00
	ld   de, $003e                                   ; $59c0: $11 $3e $00
	ld   h, b                                        ; $59c3: $60
	nop                                              ; $59c4: $00
	jr   nc, jr_017_59c7                             ; $59c5: $30 $00

jr_017_59c7:
	jr   jr_017_59c9                                 ; $59c7: $18 $00

jr_017_59c9:
	inc  c                                           ; $59c9: $0c
	nop                                              ; $59ca: $00
	ld   b, $00                                      ; $59cb: $06 $00
	ld   a, h                                        ; $59cd: $7c
	nop                                              ; $59ce: $00
	ld   h, d                                        ; $59cf: $62
	dec  e                                           ; $59d0: $1d
	xor  $6e                                         ; $59d1: $ee $6e
	add  b                                           ; $59d3: $80
	rst  $30                                         ; $59d4: $f7
	add  b                                           ; $59d5: $80
	ei                                               ; $59d6: $fb
	add  b                                           ; $59d7: $80
	db   $fd                                         ; $59d8: $fd
	add  b                                           ; $59d9: $80
	nop                                              ; $59da: $00
	ld   bc, $00ff                                   ; $59db: $01 $ff $00
	add  c                                           ; $59de: $81
	rst  $38                                         ; $59df: $ff
	nop                                              ; $59e0: $00
	nop                                              ; $59e1: $00
	add  b                                           ; $59e2: $80
	add  b                                           ; $59e3: $80
	rrca                                             ; $59e4: $0f
	ld   b, c                                        ; $59e5: $41
	ld   b, b                                        ; $59e6: $40
	and  e                                           ; $59e7: $a3
	and  c                                           ; $59e8: $a1
	rst  ToBoot                                         ; $59e9: $c7
	jp   $070f                                       ; $59ea: $c3 $0f $07


	rst  JumpTable                                         ; $59ed: $df
	rrca                                             ; $59ee: $0f
	ccf                                              ; $59ef: $3f
	rra                                              ; $59f0: $1f
	cp   [hl]                                        ; $59f1: $be
	ld   a, $fc                                      ; $59f2: $3e $fc
	ld   a, h                                        ; $59f4: $7c
	add  b                                           ; $59f5: $80
	ld   hl, sp+$0e                                  ; $59f6: $f8 $0e
	pop  af                                          ; $59f8: $f1
	ldh  a, [$e2]                                    ; $59f9: $f0 $e2
	ldh  [$c4], a                                    ; $59fb: $e0 $c4
	ret  nz                                          ; $59fd: $c0

	adc  b                                           ; $59fe: $88
	add  b                                           ; $59ff: $80
	rla                                              ; $5a00: $17
	nop                                              ; $5a01: $00
	db   $e3                                         ; $5a02: $e3
	inc  bc                                          ; $5a03: $03
	add  e                                           ; $5a04: $83
	inc  bc                                          ; $5a05: $03
	adc  a                                           ; $5a06: $8f
	add  e                                           ; $5a07: $83
	rlca                                             ; $5a08: $07
	nop                                              ; $5a09: $00
	rra                                              ; $5a0a: $1f
	add  c                                           ; $5a0b: $81
	rrca                                             ; $5a0c: $0f
	ld   [bc], a                                     ; $5a0d: $02
	rst  $28                                         ; $5a0e: $ef
	rrca                                             ; $5a0f: $0f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5a10: $cf
	add  c                                           ; $5a11: $81
	ret  nz                                          ; $5a12: $c0

	add  b                                           ; $5a13: $80
	add  b                                           ; $5a14: $80
	nop                                              ; $5a15: $00
	sub  b                                           ; $5a16: $90
	add  c                                           ; $5a17: $81
	add  b                                           ; $5a18: $80
	add  b                                           ; $5a19: $80
	nop                                              ; $5a1a: $00
	nop                                              ; $5a1b: $00
	jr   nz, jr_017_599f                             ; $5a1c: $20 $81

	nop                                              ; $5a1e: $00
	ld   [bc], a                                     ; $5a1f: $02
	xor  b                                           ; $5a20: $a8
	nop                                              ; $5a21: $00
	ld   bc, $0081                                   ; $5a22: $01 $81 $00
	ld   [bc], a                                     ; $5a25: $02
	ld   [hl], b                                     ; $5a26: $70
	nop                                              ; $5a27: $00
	and  $80                                         ; $5a28: $e6 $80
	db   $10                                         ; $5a2a: $10
	add  e                                           ; $5a2b: $83
	rst  $38                                         ; $5a2c: $ff
	ld   [$07bb], sp                                 ; $5a2d: $08 $bb $07
	add  e                                           ; $5a30: $83
	ld   bc, $1b92                                   ; $5a31: $01 $92 $1b
	ld   d, $1e                                      ; $5a34: $16 $1e
	ld   b, b                                        ; $5a36: $40
	add  b                                           ; $5a37: $80
	ld   bc, $ff81                                   ; $5a38: $01 $81 $ff
	add  b                                           ; $5a3b: $80
	ret  nz                                          ; $5a3c: $c0

	inc  b                                           ; $5a3d: $04
	ld   b, c                                        ; $5a3e: $41
	ld   a, $3d                                      ; $5a3f: $3e $3d
	inc  a                                           ; $5a41: $3c
	ld   a, [hl-]                                    ; $5a42: $3a
	add  b                                           ; $5a43: $80
	jr   c, jr_017_5a47                              ; $5a44: $38 $01

	add  hl, sp                                      ; $5a46: $39

jr_017_5a47:
	dec  [hl]                                        ; $5a47: $35
	add  c                                           ; $5a48: $81
	inc  sp                                          ; $5a49: $33
	nop                                              ; $5a4a: $00
	dec  hl                                          ; $5a4b: $2b
	add  c                                           ; $5a4c: $81
	daa                                              ; $5a4d: $27
	ld   bc, $08ff                                   ; $5a4e: $01 $ff $08
	add  d                                           ; $5a51: $82
	ld   b, h                                        ; $5a52: $44
	nop                                              ; $5a53: $00
	call nz, $0483                                   ; $5a54: $c4 $83 $04
	add  b                                           ; $5a57: $80
	ld   [bc], a                                     ; $5a58: $02
	add  b                                           ; $5a59: $80
	ld   [hl+], a                                    ; $5a5a: $22
	nop                                              ; $5a5b: $00
	ld   b, d                                        ; $5a5c: $42
	adc  l                                           ; $5a5d: $8d
	nop                                              ; $5a5e: $00
	ld   [bc], a                                     ; $5a5f: $02
	dec  c                                           ; $5a60: $0d
	rst  $20                                         ; $5a61: $e7
	rst  $28                                         ; $5a62: $ef
	add  e                                           ; $5a63: $83
	di                                               ; $5a64: $f3
	nop                                              ; $5a65: $00
	rst  $30                                         ; $5a66: $f7
	add  e                                           ; $5a67: $83
	ld   sp, hl                                      ; $5a68: $f9
	inc  bc                                          ; $5a69: $03
	ei                                               ; $5a6a: $fb
	db   $fc                                         ; $5a6b: $fc
	add  hl, bc                                      ; $5a6c: $09
	db   $fc                                         ; $5a6d: $fc
	add  b                                           ; $5a6e: $80
	cp   $01                                         ; $5a6f: $fe $01
	ldh  a, [c]                                      ; $5a71: $f2
	cp   $84                                         ; $5a72: $fe $84
	rst  $38                                         ; $5a74: $ff
	nop                                              ; $5a75: $00
	ld   sp, hl                                      ; $5a76: $f9
	add  c                                           ; $5a77: $81
	rst  $38                                         ; $5a78: $ff
	ld   [bc], a                                     ; $5a79: $02
	jr   nc, jr_017_5a9d                             ; $5a7a: $30 $21

	ld   [bc], a                                     ; $5a7c: $02
	add  c                                           ; $5a7d: $81
	inc  b                                           ; $5a7e: $04
	nop                                              ; $5a7f: $00
	dec  b                                           ; $5a80: $05
	add  d                                           ; $5a81: $82
	ld   b, $01                                      ; $5a82: $06 $01
	rlca                                             ; $5a84: $07
	sbc  a                                           ; $5a85: $9f
	add  c                                           ; $5a86: $81
	add  e                                           ; $5a87: $83
	nop                                              ; $5a88: $00
	rrca                                             ; $5a89: $0f
	add  e                                           ; $5a8a: $83
	ld   sp, hl                                      ; $5a8b: $f9
	add  d                                           ; $5a8c: $82
	ld   a, c                                        ; $5a8d: $79
	nop                                              ; $5a8e: $00
	cp   c                                           ; $5a8f: $b9
	add  c                                           ; $5a90: $81
	add  hl, sp                                      ; $5a91: $39
	db   $10                                         ; $5a92: $10
	ld   e, c                                        ; $5a93: $59
	sbc  c                                           ; $5a94: $99
	ld   b, d                                        ; $5a95: $42
	nop                                              ; $5a96: $00
	ld   a, $00                                      ; $5a97: $3e $00
	ld   h, b                                        ; $5a99: $60
	nop                                              ; $5a9a: $00
	jr   nc, jr_017_5a9d                             ; $5a9b: $30 $00

jr_017_5a9d:
	jr   jr_017_5a9f                                 ; $5a9d: $18 $00

jr_017_5a9f:
	inc  c                                           ; $5a9f: $0c
	nop                                              ; $5aa0: $00
	ld   b, $00                                      ; $5aa1: $06 $00
	ld   a, h                                        ; $5aa3: $7c
	add  c                                           ; $5aa4: $81
	nop                                              ; $5aa5: $00
	dec  c                                           ; $5aa6: $0d
	ld   a, $00                                      ; $5aa7: $3e $00
	ld   h, b                                        ; $5aa9: $60
	nop                                              ; $5aaa: $00
	jr   nc, jr_017_5aad                             ; $5aab: $30 $00

jr_017_5aad:
	jr   jr_017_5aaf                                 ; $5aad: $18 $00

jr_017_5aaf:
	inc  c                                           ; $5aaf: $0c
	nop                                              ; $5ab0: $00
	ld   b, $00                                      ; $5ab1: $06 $00
	ld   a, h                                        ; $5ab3: $7c
	nop                                              ; $5ab4: $00
	add  b                                           ; $5ab5: $80
	cp   $80                                         ; $5ab6: $fe $80
	db   $fd                                         ; $5ab8: $fd
	add  b                                           ; $5ab9: $80
	ld   bc, $0080                                   ; $5aba: $01 $80 $00
	ld   bc, $00ff                                   ; $5abd: $01 $ff $00
	add  b                                           ; $5ac0: $80
	cp   $82                                         ; $5ac1: $fe $82
	rst  $38                                         ; $5ac3: $ff
	ld   bc, $fe01                                   ; $5ac4: $01 $01 $fe
	add  b                                           ; $5ac7: $80
	db   $fc                                         ; $5ac8: $fc
	add  b                                           ; $5ac9: $80
	ld   hl, sp+$05                                  ; $5aca: $f8 $05
	ld   bc, $0300                                   ; $5acc: $01 $00 $03
	ld   bc, $00fc                                   ; $5acf: $01 $fc $00
	add  d                                           ; $5ad2: $82
	rst  $38                                         ; $5ad3: $ff
	dec  b                                           ; $5ad4: $05
	call nz, Call_017_4f03                           ; $5ad5: $c4 $03 $4f
	rlca                                             ; $5ad8: $07
	rst  ToBoot                                         ; $5ad9: $c7
	ld   b, a                                        ; $5ada: $47
	add  b                                           ; $5adb: $80
	and  b                                           ; $5adc: $a0
	inc  bc                                          ; $5add: $03
	ret  c                                           ; $5ade: $d8

	ret  nc                                          ; $5adf: $d0

	rst  $28                                         ; $5ae0: $ef
	add  sp, -$80                                    ; $5ae1: $e8 $80
	ld   [hl], h                                     ; $5ae3: $74
	add  b                                           ; $5ae4: $80
	cp   d                                           ; $5ae5: $ba
	nop                                              ; $5ae6: $00
	ld   bc, $fe83                                   ; $5ae7: $01 $83 $fe
	add  d                                           ; $5aea: $82
	nop                                              ; $5aeb: $00
	nop                                              ; $5aec: $00
	rst  $38                                         ; $5aed: $ff
	add  e                                           ; $5aee: $83
	nop                                              ; $5aef: $00
	ld   [bc], a                                     ; $5af0: $02
	ret  nz                                          ; $5af1: $c0

	nop                                              ; $5af2: $00
	ld   b, b                                        ; $5af3: $40
	add  e                                           ; $5af4: $83
	nop                                              ; $5af5: $00
	nop                                              ; $5af6: $00
	add  b                                           ; $5af7: $80
	sub  l                                           ; $5af8: $95
	nop                                              ; $5af9: $00
	ld   c, $ff                                      ; $5afa: $0e $ff
	nop                                              ; $5afc: $00
	ld   a, $00                                      ; $5afd: $3e $00
	ld   h, b                                        ; $5aff: $60
	nop                                              ; $5b00: $00
	jr   nc, jr_017_5b03                             ; $5b01: $30 $00

jr_017_5b03:
	jr   jr_017_5b05                                 ; $5b03: $18 $00

jr_017_5b05:
	inc  c                                           ; $5b05: $0c
	nop                                              ; $5b06: $00
	ld   b, $00                                      ; $5b07: $06 $00
	ld   a, h                                        ; $5b09: $7c
	add  c                                           ; $5b0a: $81
	nop                                              ; $5b0b: $00
	add  b                                           ; $5b0c: $80
	ccf                                              ; $5b0d: $3f
	add  b                                           ; $5b0e: $80
	ld   b, b                                        ; $5b0f: $40
	nop                                              ; $5b10: $00
	ld   e, a                                        ; $5b11: $5f
	add  a                                           ; $5b12: $87
	ld   b, b                                        ; $5b13: $40
	ld   bc, $001f                                   ; $5b14: $01 $1f $00
	add  b                                           ; $5b17: $80
	rst  $38                                         ; $5b18: $ff
	add  b                                           ; $5b19: $80
	nop                                              ; $5b1a: $00
	nop                                              ; $5b1b: $00
	rst  $38                                         ; $5b1c: $ff
	add  a                                           ; $5b1d: $87
	nop                                              ; $5b1e: $00
	ld   bc, $00ff                                   ; $5b1f: $01 $ff $00
	add  b                                           ; $5b22: $80
	rst  $38                                         ; $5b23: $ff
	add  b                                           ; $5b24: $80
	nop                                              ; $5b25: $00
	nop                                              ; $5b26: $00
	rst  $38                                         ; $5b27: $ff
	add  c                                           ; $5b28: $81
	nop                                              ; $5b29: $00
	rlca                                             ; $5b2a: $07
	inc  e                                           ; $5b2b: $1c
	nop                                              ; $5b2c: $00
	ld   h, e                                        ; $5b2d: $63
	nop                                              ; $5b2e: $00
	ld   a, a                                        ; $5b2f: $7f
	nop                                              ; $5b30: $00
	rst  $38                                         ; $5b31: $ff
	nop                                              ; $5b32: $00
	add  b                                           ; $5b33: $80
	rst  $38                                         ; $5b34: $ff
	add  b                                           ; $5b35: $80
	nop                                              ; $5b36: $00
	nop                                              ; $5b37: $00
	rst  $38                                         ; $5b38: $ff
	add  c                                           ; $5b39: $81
	nop                                              ; $5b3a: $00
	rlca                                             ; $5b3b: $07
	ld   h, e                                        ; $5b3c: $63
	nop                                              ; $5b3d: $00
	ld   d, l                                        ; $5b3e: $55

jr_017_5b3f:
	nop                                              ; $5b3f: $00
	ld   c, c                                        ; $5b40: $49
	nop                                              ; $5b41: $00
	add  b                                           ; $5b42: $80
	nop                                              ; $5b43: $00
	add  b                                           ; $5b44: $80
	rst  $38                                         ; $5b45: $ff
	add  b                                           ; $5b46: $80
	nop                                              ; $5b47: $00
	nop                                              ; $5b48: $00
	rst  $38                                         ; $5b49: $ff
	add  e                                           ; $5b4a: $83
	nop                                              ; $5b4b: $00
	dec  b                                           ; $5b4c: $05
	ld   a, a                                        ; $5b4d: $7f
	nop                                              ; $5b4e: $00
	inc  e                                           ; $5b4f: $1c
	nop                                              ; $5b50: $00
	sbc  h                                           ; $5b51: $9c
	nop                                              ; $5b52: $00
	add  b                                           ; $5b53: $80
	rst  $38                                         ; $5b54: $ff
	add  b                                           ; $5b55: $80
	nop                                              ; $5b56: $00
	nop                                              ; $5b57: $00
	rst  $38                                         ; $5b58: $ff
	add  c                                           ; $5b59: $81
	nop                                              ; $5b5a: $00
	ld   [bc], a                                     ; $5b5b: $02
	ld   a, a                                        ; $5b5c: $7f
	nop                                              ; $5b5d: $00
	inc  e                                           ; $5b5e: $1c
	add  c                                           ; $5b5f: $81
	nop                                              ; $5b60: $00
	nop                                              ; $5b61: $00
	ld   h, e                                        ; $5b62: $63
	add  e                                           ; $5b63: $83
	nop                                              ; $5b64: $00
	ld   a, [bc]                                     ; $5b65: $0a
	inc  c                                           ; $5b66: $0c
	nop                                              ; $5b67: $00
	inc  d                                           ; $5b68: $14
	nop                                              ; $5b69: $00
	ld   l, $00                                      ; $5b6a: $2e $00
	ld   e, d                                        ; $5b6c: $5a
	nop                                              ; $5b6d: $00
	inc  d                                           ; $5b6e: $14
	nop                                              ; $5b6f: $00
	ld   a, b                                        ; $5b70: $78
	add  e                                           ; $5b71: $83
	nop                                              ; $5b72: $00
	ld   a, [bc]                                     ; $5b73: $0a
	jr   jr_017_5b76                                 ; $5b74: $18 $00

jr_017_5b76:
	ld   h, a                                        ; $5b76: $67
	nop                                              ; $5b77: $00
	ld   h, a                                        ; $5b78: $67
	nop                                              ; $5b79: $00
	ld   h, a                                        ; $5b7a: $67
	nop                                              ; $5b7b: $00
	inc  h                                           ; $5b7c: $24
	nop                                              ; $5b7d: $00
	ld   e, e                                        ; $5b7e: $5b
	add  e                                           ; $5b7f: $83
	nop                                              ; $5b80: $00
	ld   a, [bc]                                     ; $5b81: $0a
	ld   a, a                                        ; $5b82: $7f
	nop                                              ; $5b83: $00
	ld   a, h                                        ; $5b84: $7c
	nop                                              ; $5b85: $00
	ld   a, b                                        ; $5b86: $78
	nop                                              ; $5b87: $00
	ld   a, h                                        ; $5b88: $7c
	nop                                              ; $5b89: $00
	ld   a, h                                        ; $5b8a: $7c
	nop                                              ; $5b8b: $00
	ld   a, e                                        ; $5b8c: $7b
	add  e                                           ; $5b8d: $83
	nop                                              ; $5b8e: $00
	inc  l                                           ; $5b8f: $2c
	ld   a, a                                        ; $5b90: $7f
	nop                                              ; $5b91: $00
	ld   a, h                                        ; $5b92: $7c
	nop                                              ; $5b93: $00
	ld   a, b                                        ; $5b94: $78
	nop                                              ; $5b95: $00
	ld   a, h                                        ; $5b96: $7c
	nop                                              ; $5b97: $00
	ld   a, h                                        ; $5b98: $7c
	nop                                              ; $5b99: $00
	ld   a, e                                        ; $5b9a: $7b
	nop                                              ; $5b9b: $00
	ld   a, a                                        ; $5b9c: $7f
	nop                                              ; $5b9d: $00
	inc  e                                           ; $5b9e: $1c
	nop                                              ; $5b9f: $00
	inc  e                                           ; $5ba0: $1c
	nop                                              ; $5ba1: $00
	inc  e                                           ; $5ba2: $1c
	nop                                              ; $5ba3: $00
	inc  e                                           ; $5ba4: $1c
	nop                                              ; $5ba5: $00
	rra                                              ; $5ba6: $1f
	nop                                              ; $5ba7: $00
	rrca                                             ; $5ba8: $0f
	nop                                              ; $5ba9: $00
	ld   l, a                                        ; $5baa: $6f
	nop                                              ; $5bab: $00
	ld   a, a                                        ; $5bac: $7f
	nop                                              ; $5bad: $00
	inc  e                                           ; $5bae: $1c
	nop                                              ; $5baf: $00
	inc  e                                           ; $5bb0: $1c
	nop                                              ; $5bb1: $00
	inc  e                                           ; $5bb2: $1c
	nop                                              ; $5bb3: $00
	inc  e                                           ; $5bb4: $1c
	nop                                              ; $5bb5: $00
	ld   a, h                                        ; $5bb6: $7c
	nop                                              ; $5bb7: $00
	ld   hl, sp+$00                                  ; $5bb8: $f8 $00
	ei                                               ; $5bba: $fb
	nop                                              ; $5bbb: $00
	jr   jr_017_5b3f                                 ; $5bbc: $18 $81

	nop                                              ; $5bbe: $00
	ld   [bc], a                                     ; $5bbf: $02
	ld   h, a                                        ; $5bc0: $67
	nop                                              ; $5bc1: $00
	ld   c, c                                        ; $5bc2: $49
	add  c                                           ; $5bc3: $81
	nop                                              ; $5bc4: $00
	ld   [de], a                                     ; $5bc5: $12
	ld   d, b                                        ; $5bc6: $50
	nop                                              ; $5bc7: $00
	stop                                             ; $5bc8: $10 $00
	halt                                             ; $5bca: $76
	nop                                              ; $5bcb: $00
	inc  c                                           ; $5bcc: $0c
	nop                                              ; $5bcd: $00
	inc  d                                           ; $5bce: $14
	nop                                              ; $5bcf: $00
	jr   z, jr_017_5bd2                              ; $5bd0: $28 $00

jr_017_5bd2:
	ld   d, [hl]                                     ; $5bd2: $56
	nop                                              ; $5bd3: $00
	and  l                                           ; $5bd4: $a5
	nop                                              ; $5bd5: $00
	inc  a                                           ; $5bd6: $3c
	nop                                              ; $5bd7: $00
	rst  $38                                         ; $5bd8: $ff
	add  l                                           ; $5bd9: $85
	nop                                              ; $5bda: $00
	ld   [bc], a                                     ; $5bdb: $02
	inc  c                                           ; $5bdc: $0c
	nop                                              ; $5bdd: $00
	ld   a, [bc]                                     ; $5bde: $0a
	add  c                                           ; $5bdf: $81
	nop                                              ; $5be0: $00
	nop                                              ; $5be1: $00
	dec  b                                           ; $5be2: $05
	add  c                                           ; $5be3: $81
	nop                                              ; $5be4: $00
	db   $10                                         ; $5be5: $10
	db   $fc                                         ; $5be6: $fc
	nop                                              ; $5be7: $00
	ld   a, $00                                      ; $5be8: $3e $00
	ld   h, b                                        ; $5bea: $60
	nop                                              ; $5beb: $00
	jr   nc, jr_017_5bee                             ; $5bec: $30 $00

jr_017_5bee:
	jr   jr_017_5bf0                                 ; $5bee: $18 $00

jr_017_5bf0:
	inc  c                                           ; $5bf0: $0c
	nop                                              ; $5bf1: $00
	ld   b, $00                                      ; $5bf2: $06 $00
	ld   a, h                                        ; $5bf4: $7c
	nop                                              ; $5bf5: $00
	ld   e, a                                        ; $5bf6: $5f
	adc  l                                           ; $5bf7: $8d
	ld   b, b                                        ; $5bf8: $40
	nop                                              ; $5bf9: $00
	ldh  [$8d], a                                    ; $5bfa: $e0 $8d
	nop                                              ; $5bfc: $00
	ld   a, [bc]                                     ; $5bfd: $0a
	ld   a, a                                        ; $5bfe: $7f
	nop                                              ; $5bff: $00
	ld   a, a                                        ; $5c00: $7f
	nop                                              ; $5c01: $00
	ld   a, a                                        ; $5c02: $7f
	nop                                              ; $5c03: $00
	ld   a, a                                        ; $5c04: $7f
	nop                                              ; $5c05: $00
	ld   a, a                                        ; $5c06: $7f
	nop                                              ; $5c07: $00
	inc  e                                           ; $5c08: $1c
	add  c                                           ; $5c09: $81
	nop                                              ; $5c0a: $00
	ld   [bc], a                                     ; $5c0b: $02
	inc  e                                           ; $5c0c: $1c
	nop                                              ; $5c0d: $00
	inc  e                                           ; $5c0e: $1c
	add  c                                           ; $5c0f: $81
	nop                                              ; $5c10: $00
	ld   [bc], a                                     ; $5c11: $02
	inc  e                                           ; $5c12: $1c
	nop                                              ; $5c13: $00
	ld   c, c                                        ; $5c14: $49
	add  e                                           ; $5c15: $83
	nop                                              ; $5c16: $00
	ld   [$0001], sp                                 ; $5c17: $08 $01 $00
	ld   d, b                                        ; $5c1a: $50
	nop                                              ; $5c1b: $00
	inc  b                                           ; $5c1c: $04
	nop                                              ; $5c1d: $00
	inc  e                                           ; $5c1e: $1c
	nop                                              ; $5c1f: $00
	inc  e                                           ; $5c20: $1c
	add  c                                           ; $5c21: $81
	nop                                              ; $5c22: $00
	ld   [bc], a                                     ; $5c23: $02
	inc  e                                           ; $5c24: $1c
	nop                                              ; $5c25: $00
	ld   a, a                                        ; $5c26: $7f
	add  e                                           ; $5c27: $83
	nop                                              ; $5c28: $00
	ld   [bc], a                                     ; $5c29: $02
	ld   a, a                                        ; $5c2a: $7f
	nop                                              ; $5c2b: $00
	inc  e                                           ; $5c2c: $1c
	add  c                                           ; $5c2d: $81
	nop                                              ; $5c2e: $00
	ld   [bc], a                                     ; $5c2f: $02
	inc  e                                           ; $5c30: $1c
	nop                                              ; $5c31: $00
	inc  e                                           ; $5c32: $1c
	add  e                                           ; $5c33: $83
	nop                                              ; $5c34: $00
	ld   [$00a4], sp                                 ; $5c35: $08 $a4 $00
	db   $f4                                         ; $5c38: $f4
	nop                                              ; $5c39: $00
	ld   c, h                                        ; $5c3a: $4c
	nop                                              ; $5c3b: $00
	ld   h, [hl]                                     ; $5c3c: $66
	nop                                              ; $5c3d: $00
	ld   b, e                                        ; $5c3e: $43
	add  e                                           ; $5c3f: $83
	nop                                              ; $5c40: $00
	nop                                              ; $5c41: $00
	ld   e, d                                        ; $5c42: $5a
	add  c                                           ; $5c43: $81
	nop                                              ; $5c44: $00
	inc  c                                           ; $5c45: $0c
	ld   a, a                                        ; $5c46: $7f
	nop                                              ; $5c47: $00
	inc  h                                           ; $5c48: $24
	nop                                              ; $5c49: $00
	inc  h                                           ; $5c4a: $24
	nop                                              ; $5c4b: $00
	ld   b, e                                        ; $5c4c: $43
	nop                                              ; $5c4d: $00
	ld   h, [hl]                                     ; $5c4e: $66
	nop                                              ; $5c4f: $00
	jp   $9900                                       ; $5c50: $c3 $00 $99


	add  c                                           ; $5c53: $81
	nop                                              ; $5c54: $00
	inc  c                                           ; $5c55: $0c
	ld   bc, $3e00                                   ; $5c56: $01 $00 $3e
	nop                                              ; $5c59: $00
	rrca                                             ; $5c5a: $0f
	nop                                              ; $5c5b: $00
	rrca                                             ; $5c5c: $0f
	nop                                              ; $5c5d: $00
	rrca                                             ; $5c5e: $0f
	nop                                              ; $5c5f: $00
	rrca                                             ; $5c60: $0f
	nop                                              ; $5c61: $00
	ccf                                              ; $5c62: $3f
	add  c                                           ; $5c63: $81
	nop                                              ; $5c64: $00
	inc  c                                           ; $5c65: $0c
	ret  nz                                          ; $5c66: $c0

	nop                                              ; $5c67: $00
	ld   a, $00                                      ; $5c68: $3e $00
	ld   hl, sp+$00                                  ; $5c6a: $f8 $00
	ld   hl, sp+$00                                  ; $5c6c: $f8 $00
	ld   hl, sp+$00                                  ; $5c6e: $f8 $00
	ld   hl, sp+$00                                  ; $5c70: $f8 $00
	cp   $81                                         ; $5c72: $fe $81
	nop                                              ; $5c74: $00
	inc  b                                           ; $5c75: $04
	ld   h, [hl]                                     ; $5c76: $66
	nop                                              ; $5c77: $00
	add  hl, bc                                      ; $5c78: $09
	nop                                              ; $5c79: $00
	add  hl, bc                                      ; $5c7a: $09
	add  c                                           ; $5c7b: $81
	nop                                              ; $5c7c: $00
	inc  bc                                          ; $5c7d: $03
	ld   h, [hl]                                     ; $5c7e: $66
	nop                                              ; $5c7f: $00
	rst  $38                                         ; $5c80: $ff
	nop                                              ; $5c81: $00
	add  b                                           ; $5c82: $80
	rst  $38                                         ; $5c83: $ff
	add  b                                           ; $5c84: $80
	nop                                              ; $5c85: $00
	dec  bc                                          ; $5c86: $0b
	call z, $c800                                    ; $5c87: $cc $00 $c8
	nop                                              ; $5c8a: $00
	ret  z                                           ; $5c8b: $c8

	nop                                              ; $5c8c: $00
	ld   b, h                                        ; $5c8d: $44
	nop                                              ; $5c8e: $00
	ld   [hl], a                                     ; $5c8f: $77
	nop                                              ; $5c90: $00
	rst  $38                                         ; $5c91: $ff
	nop                                              ; $5c92: $00
	add  b                                           ; $5c93: $80
	rst  $38                                         ; $5c94: $ff
	add  b                                           ; $5c95: $80
	nop                                              ; $5c96: $00
	dec  bc                                          ; $5c97: $0b
	jp   $2400                                       ; $5c98: $c3 $00 $24


	nop                                              ; $5c9b: $00
	inc  h                                           ; $5c9c: $24
	nop                                              ; $5c9d: $00
	ld   e, d                                        ; $5c9e: $5a
	nop                                              ; $5c9f: $00
	ld   h, [hl]                                     ; $5ca0: $66
	nop                                              ; $5ca1: $00
	rst  $38                                         ; $5ca2: $ff
	nop                                              ; $5ca3: $00
	add  b                                           ; $5ca4: $80
	rst  $38                                         ; $5ca5: $ff
	add  d                                           ; $5ca6: $82
	nop                                              ; $5ca7: $00
	nop                                              ; $5ca8: $00
	inc  a                                           ; $5ca9: $3c
	add  c                                           ; $5caa: $81
	nop                                              ; $5cab: $00
	dec  b                                           ; $5cac: $05
	inc  a                                           ; $5cad: $3c
	nop                                              ; $5cae: $00
	rst  $38                                         ; $5caf: $ff
	nop                                              ; $5cb0: $00
	rst  $38                                         ; $5cb1: $ff
	nop                                              ; $5cb2: $00
	add  b                                           ; $5cb3: $80
	rst  $38                                         ; $5cb4: $ff
	add  b                                           ; $5cb5: $80
	nop                                              ; $5cb6: $00
	dec  bc                                          ; $5cb7: $0b
	sbc  h                                           ; $5cb8: $9c
	nop                                              ; $5cb9: $00
	inc  bc                                          ; $5cba: $03
	nop                                              ; $5cbb: $00
	add  b                                           ; $5cbc: $80
	nop                                              ; $5cbd: $00
	jr   nz, jr_017_5cc0                             ; $5cbe: $20 $00

jr_017_5cc0:
	ret  nz                                          ; $5cc0: $c0

	nop                                              ; $5cc1: $00
	rst  $38                                         ; $5cc2: $ff
	nop                                              ; $5cc3: $00
	add  b                                           ; $5cc4: $80
	rst  $38                                         ; $5cc5: $ff
	add  b                                           ; $5cc6: $80
	nop                                              ; $5cc7: $00
	nop                                              ; $5cc8: $00
	rst  $38                                         ; $5cc9: $ff
	adc  l                                           ; $5cca: $8d
	nop                                              ; $5ccb: $00
	ld   bc, $00ff                                   ; $5ccc: $01 $ff $00
	add  b                                           ; $5ccf: $80
	ccf                                              ; $5cd0: $3f
	add  b                                           ; $5cd1: $80
	ld   b, b                                        ; $5cd2: $40
	nop                                              ; $5cd3: $00
	ld   e, a                                        ; $5cd4: $5f
	add  e                                           ; $5cd5: $83
	ld   b, b                                        ; $5cd6: $40
	dec  b                                           ; $5cd7: $05
	ld   b, c                                        ; $5cd8: $41
	ld   b, b                                        ; $5cd9: $40
	ld   b, c                                        ; $5cda: $41
	ld   b, b                                        ; $5cdb: $40
	rra                                              ; $5cdc: $1f
	nop                                              ; $5cdd: $00
	add  b                                           ; $5cde: $80
	rst  $38                                         ; $5cdf: $ff
	add  b                                           ; $5ce0: $80
	nop                                              ; $5ce1: $00
	nop                                              ; $5ce2: $00
	rst  $38                                         ; $5ce3: $ff
	add  c                                           ; $5ce4: $81
	nop                                              ; $5ce5: $00
	rlca                                             ; $5ce6: $07
	ret  c                                           ; $5ce7: $d8

	nop                                              ; $5ce8: $00
	dec  h                                           ; $5ce9: $25
	nop                                              ; $5cea: $00
	ld   h, $00                                      ; $5ceb: $26 $00
	inc  h                                           ; $5ced: $24
	nop                                              ; $5cee: $00
	add  b                                           ; $5cef: $80
	rst  $38                                         ; $5cf0: $ff
	add  b                                           ; $5cf1: $80
	nop                                              ; $5cf2: $00
	nop                                              ; $5cf3: $00
	rst  $38                                         ; $5cf4: $ff
	add  c                                           ; $5cf5: $81
	nop                                              ; $5cf6: $00
	rlca                                             ; $5cf7: $07
	ret  c                                           ; $5cf8: $d8

	nop                                              ; $5cf9: $00
	ld   l, b                                        ; $5cfa: $68
	nop                                              ; $5cfb: $00
	ld   c, h                                        ; $5cfc: $4c
	nop                                              ; $5cfd: $00
	inc  bc                                          ; $5cfe: $03
	nop                                              ; $5cff: $00
	add  b                                           ; $5d00: $80
	rst  $38                                         ; $5d01: $ff
	add  b                                           ; $5d02: $80
	nop                                              ; $5d03: $00
	nop                                              ; $5d04: $00
	rst  $38                                         ; $5d05: $ff
	add  c                                           ; $5d06: $81
	nop                                              ; $5d07: $00
	rlca                                             ; $5d08: $07
	ccf                                              ; $5d09: $3f
	nop                                              ; $5d0a: $00
	rrca                                             ; $5d0b: $0f
	nop                                              ; $5d0c: $00
	rrca                                             ; $5d0d: $0f
	nop                                              ; $5d0e: $00
	ret  nz                                          ; $5d0f: $c0

	nop                                              ; $5d10: $00
	add  b                                           ; $5d11: $80
	rst  $38                                         ; $5d12: $ff
	add  b                                           ; $5d13: $80
	nop                                              ; $5d14: $00
	nop                                              ; $5d15: $00
	rst  $38                                         ; $5d16: $ff
	add  c                                           ; $5d17: $81
	nop                                              ; $5d18: $00
	rlca                                             ; $5d19: $07
	db   $fc                                         ; $5d1a: $fc
	nop                                              ; $5d1b: $00
	ldh  a, [rP1]                                    ; $5d1c: $f0 $00
	ldh  a, [rP1]                                    ; $5d1e: $f0 $00
	inc  bc                                          ; $5d20: $03
	nop                                              ; $5d21: $00
	add  b                                           ; $5d22: $80
	rst  $38                                         ; $5d23: $ff
	add  b                                           ; $5d24: $80
	nop                                              ; $5d25: $00
	nop                                              ; $5d26: $00
	rst  $38                                         ; $5d27: $ff
	add  e                                           ; $5d28: $83
	nop                                              ; $5d29: $00
	dec  b                                           ; $5d2a: $05
	rrca                                             ; $5d2b: $0f
	nop                                              ; $5d2c: $00
	inc  bc                                          ; $5d2d: $03
	nop                                              ; $5d2e: $00
	di                                               ; $5d2f: $f3
	nop                                              ; $5d30: $00
	add  b                                           ; $5d31: $80
	rst  $38                                         ; $5d32: $ff
	add  b                                           ; $5d33: $80
	nop                                              ; $5d34: $00
	nop                                              ; $5d35: $00
	rst  $38                                         ; $5d36: $ff
	add  c                                           ; $5d37: $81
	nop                                              ; $5d38: $00
	rlca                                             ; $5d39: $07
	jr   c, jr_017_5d3c                              ; $5d3a: $38 $00

jr_017_5d3c:
	rst  ToBoot                                         ; $5d3c: $c7
	nop                                              ; $5d3d: $00
	add  hl, sp                                      ; $5d3e: $39
	nop                                              ; $5d3f: $00
	add  hl, sp                                      ; $5d40: $39
	nop                                              ; $5d41: $00
	add  b                                           ; $5d42: $80
	db   $fc                                         ; $5d43: $fc
	add  b                                           ; $5d44: $80
	ld   [bc], a                                     ; $5d45: $02
	nop                                              ; $5d46: $00
	ld   a, [$0283]                                  ; $5d47: $fa $83 $02
	inc  b                                           ; $5d4a: $04
	add  d                                           ; $5d4b: $82
	ld   [bc], a                                     ; $5d4c: $02
	add  d                                           ; $5d4d: $82
	ld   [bc], a                                     ; $5d4e: $02
	rlca                                             ; $5d4f: $07
	add  e                                           ; $5d50: $83
	nop                                              ; $5d51: $00
	ld   a, [bc]                                     ; $5d52: $0a
	ld   c, $00                                      ; $5d53: $0e $00
	ld   sp, $2400                                   ; $5d55: $31 $00 $24
	nop                                              ; $5d58: $00
	inc  d                                           ; $5d59: $14
	nop                                              ; $5d5a: $00
	ld   [hl], b                                     ; $5d5b: $70
	nop                                              ; $5d5c: $00
	ld   a, a                                        ; $5d5d: $7f
	add  e                                           ; $5d5e: $83
	nop                                              ; $5d5f: $00
	ld   a, [bc]                                     ; $5d60: $0a
	jr   c, jr_017_5d63                              ; $5d61: $38 $00

jr_017_5d63:
	add  $00                                         ; $5d63: $c6 $00
	sub  d                                           ; $5d65: $92
	nop                                              ; $5d66: $00
	inc  d                                           ; $5d67: $14
	nop                                              ; $5d68: $00
	add  a                                           ; $5d69: $87
	nop                                              ; $5d6a: $00
	rst  $38                                         ; $5d6b: $ff
	add  e                                           ; $5d6c: $83
	nop                                              ; $5d6d: $00
	ld   b, $33                                      ; $5d6e: $06 $33
	nop                                              ; $5d70: $00
	ld   a, [hl+]                                    ; $5d71: $2a
	nop                                              ; $5d72: $00
	add  hl, de                                      ; $5d73: $19
	nop                                              ; $5d74: $00
	inc  bc                                          ; $5d75: $03
	add  c                                           ; $5d76: $81
	nop                                              ; $5d77: $00
	nop                                              ; $5d78: $00
	inc  bc                                          ; $5d79: $03
	add  e                                           ; $5d7a: $83
	nop                                              ; $5d7b: $00
	ld   [hl+], a                                    ; $5d7c: $22
	ld   hl, sp+$00                                  ; $5d7d: $f8 $00
	ld   h, b                                        ; $5d7f: $60
	nop                                              ; $5d80: $00
	ld   l, b                                        ; $5d81: $68
	nop                                              ; $5d82: $00
	inc  c                                           ; $5d83: $0c
	nop                                              ; $5d84: $00
	sub  b                                           ; $5d85: $90
	nop                                              ; $5d86: $00
	ld   l, h                                        ; $5d87: $6c
	nop                                              ; $5d88: $00
	ld   [hl], $00                                   ; $5d89: $36 $00
	ld   c, c                                        ; $5d8b: $49
	nop                                              ; $5d8c: $00
	ld   c, c                                        ; $5d8d: $49
	nop                                              ; $5d8e: $00
	ld   c, c                                        ; $5d8f: $49
	nop                                              ; $5d90: $00
	inc  h                                           ; $5d91: $24
	nop                                              ; $5d92: $00
	inc  h                                           ; $5d93: $24
	nop                                              ; $5d94: $00
	ld   h, a                                        ; $5d95: $67
	nop                                              ; $5d96: $00
	jr   jr_017_5d99                                 ; $5d97: $18 $00

jr_017_5d99:
	ld   [hl], $00                                   ; $5d99: $36 $00
	ld   e, d                                        ; $5d9b: $5a
	nop                                              ; $5d9c: $00
	sub  e                                           ; $5d9d: $93
	nop                                              ; $5d9e: $00
	sub  e                                           ; $5d9f: $93
	add  c                                           ; $5da0: $81
	nop                                              ; $5da1: $00
	ld   b, $13                                      ; $5da2: $06 $13
	nop                                              ; $5da4: $00
	inc  de                                          ; $5da5: $13
	nop                                              ; $5da6: $00
	ld   l, h                                        ; $5da7: $6c
	nop                                              ; $5da8: $00
	ld   h, b                                        ; $5da9: $60
	adc  e                                           ; $5daa: $8b
	nop                                              ; $5dab: $00
	ld   [bc], a                                     ; $5dac: $02
	ld   h, b                                        ; $5dad: $60
	nop                                              ; $5dae: $00
	ld   b, $8b                                      ; $5daf: $06 $8b
	nop                                              ; $5db1: $00
	nop                                              ; $5db2: $00
	and  a                                           ; $5db3: $a7
	add  e                                           ; $5db4: $83
	ld   b, b                                        ; $5db5: $40
	ld   b, $41                                      ; $5db6: $06 $41
	ld   b, b                                        ; $5db8: $40
	ld   b, c                                        ; $5db9: $41
	ld   b, b                                        ; $5dba: $40
	ld   b, c                                        ; $5dbb: $41
	ld   b, b                                        ; $5dbc: $40
	ld   b, c                                        ; $5dbd: $41
	add  c                                           ; $5dbe: $81
	ld   b, b                                        ; $5dbf: $40
	db   $10                                         ; $5dc0: $10
	inc  e                                           ; $5dc1: $1c
	nop                                              ; $5dc2: $00
	sub  b                                           ; $5dc3: $90
	nop                                              ; $5dc4: $00
	sub  b                                           ; $5dc5: $90
	nop                                              ; $5dc6: $00
	sbc  h                                           ; $5dc7: $9c
	nop                                              ; $5dc8: $00
	sbc  h                                           ; $5dc9: $9c
	nop                                              ; $5dca: $00
	sbc  h                                           ; $5dcb: $9c
	nop                                              ; $5dcc: $00
	sbc  h                                           ; $5dcd: $9c
	nop                                              ; $5dce: $00
	ld   h, h                                        ; $5dcf: $64
	nop                                              ; $5dd0: $00
	add  hl, hl                                      ; $5dd1: $29
	add  c                                           ; $5dd2: $81
	nop                                              ; $5dd3: $00
	ld   b, $4c                                      ; $5dd4: $06 $4c
	nop                                              ; $5dd6: $00
	ld   c, h                                        ; $5dd7: $4c
	nop                                              ; $5dd8: $00
	ld   c, h                                        ; $5dd9: $4c
	nop                                              ; $5dda: $00
	ld   c, h                                        ; $5ddb: $4c
	add  c                                           ; $5ddc: $81
	nop                                              ; $5ddd: $00
	inc  h                                           ; $5dde: $24
	ld   c, h                                        ; $5ddf: $4c
	nop                                              ; $5de0: $00
	call z, $0f00                                    ; $5de1: $cc $00 $0f
	nop                                              ; $5de4: $00
	add  hl, sp                                      ; $5de5: $39
	nop                                              ; $5de6: $00
	add  hl, bc                                      ; $5de7: $09
	nop                                              ; $5de8: $00
	ld   d, $00                                      ; $5de9: $16 $00
	ld   a, d                                        ; $5deb: $7a
	nop                                              ; $5dec: $00
	ld   l, a                                        ; $5ded: $6f
	nop                                              ; $5dee: $00
	dec  c                                           ; $5def: $0d
	nop                                              ; $5df0: $00
	dec  c                                           ; $5df1: $0d
	nop                                              ; $5df2: $00
	ldh  a, [rP1]                                    ; $5df3: $f0 $00
	db   $fc                                         ; $5df5: $fc
	nop                                              ; $5df6: $00
	rst  $38                                         ; $5df7: $ff
	nop                                              ; $5df8: $00
	ld   h, h                                        ; $5df9: $64
	nop                                              ; $5dfa: $00
	xor  b                                           ; $5dfb: $a8
	nop                                              ; $5dfc: $00
	ld   d, h                                        ; $5dfd: $54
	nop                                              ; $5dfe: $00
	ld   sp, hl                                      ; $5dff: $f9
	nop                                              ; $5e00: $00
	sub  e                                           ; $5e01: $93
	nop                                              ; $5e02: $00
	ld   bc, $0083                                   ; $5e03: $01 $83 $00
	ld   [bc], a                                     ; $5e06: $02
	ld   bc, $0100                                   ; $5e07: $01 $00 $01
	add  c                                           ; $5e0a: $81
	nop                                              ; $5e0b: $00
	ld   [de], a                                     ; $5e0c: $12
	dec  d                                           ; $5e0d: $15
	nop                                              ; $5e0e: $00
	and  $00                                         ; $5e0f: $e6 $00
	add  hl, sp                                      ; $5e11: $39
	nop                                              ; $5e12: $00
	jr   c, jr_017_5e15                              ; $5e13: $38 $00

jr_017_5e15:
	cp   $00                                         ; $5e15: $fe $00
	rst  $38                                         ; $5e17: $ff
	nop                                              ; $5e18: $00
	inc  a                                           ; $5e19: $3c
	nop                                              ; $5e1a: $00
	rst  $38                                         ; $5e1b: $ff
	nop                                              ; $5e1c: $00
	db   $db                                         ; $5e1d: $db
	nop                                              ; $5e1e: $00
	ldh  [c], a                                      ; $5e1f: $e2
	adc  e                                           ; $5e20: $8b
	ld   [bc], a                                     ; $5e21: $02
	ld   c, $82                                      ; $5e22: $0e $82
	ld   [bc], a                                     ; $5e24: $02
	add  a                                           ; $5e25: $87
	nop                                              ; $5e26: $00
	rra                                              ; $5e27: $1f
	nop                                              ; $5e28: $00
	rlca                                             ; $5e29: $07
	nop                                              ; $5e2a: $00
	rlca                                             ; $5e2b: $07
	nop                                              ; $5e2c: $00
	rlca                                             ; $5e2d: $07
	nop                                              ; $5e2e: $00
	rlca                                             ; $5e2f: $07
	nop                                              ; $5e30: $00
	rra                                              ; $5e31: $1f
	add  e                                           ; $5e32: $83
	nop                                              ; $5e33: $00
	ld   a, [bc]                                     ; $5e34: $0a
	db   $fc                                         ; $5e35: $fc
	nop                                              ; $5e36: $00
	ldh  a, [rP1]                                    ; $5e37: $f0 $00
	ldh  a, [rP1]                                    ; $5e39: $f0 $00
	ldh  a, [rP1]                                    ; $5e3b: $f0 $00
	ldh  a, [rP1]                                    ; $5e3d: $f0 $00
	db   $fc                                         ; $5e3f: $fc
	add  c                                           ; $5e40: $81
	nop                                              ; $5e41: $00
	ld   [bc], a                                     ; $5e42: $02
	ld   a, e                                        ; $5e43: $7b
	nop                                              ; $5e44: $00
	ld   h, b                                        ; $5e45: $60
	add  e                                           ; $5e46: $83
	nop                                              ; $5e47: $00
	inc  b                                           ; $5e48: $04
	inc  h                                           ; $5e49: $24
	nop                                              ; $5e4a: $00
	ld   e, b                                        ; $5e4b: $58
	nop                                              ; $5e4c: $00
	ld   h, a                                        ; $5e4d: $67
	add  c                                           ; $5e4e: $81
	nop                                              ; $5e4f: $00
	inc  c                                           ; $5e50: $0c
	db   $fc                                         ; $5e51: $fc
	nop                                              ; $5e52: $00
	sub  b                                           ; $5e53: $90
	nop                                              ; $5e54: $00
	sub  b                                           ; $5e55: $90
	nop                                              ; $5e56: $00
	sub  b                                           ; $5e57: $90
	nop                                              ; $5e58: $00
	stop                                             ; $5e59: $10 $00
	add  e                                           ; $5e5b: $83
	nop                                              ; $5e5c: $00
	rst  $38                                         ; $5e5d: $ff
	add  c                                           ; $5e5e: $81
	nop                                              ; $5e5f: $00
	dec  bc                                          ; $5e60: $0b
	ld   a, a                                        ; $5e61: $7f
	nop                                              ; $5e62: $00
	ld   h, a                                        ; $5e63: $67
	nop                                              ; $5e64: $00
	ld   h, a                                        ; $5e65: $67
	nop                                              ; $5e66: $00
	add  hl, de                                      ; $5e67: $19
	nop                                              ; $5e68: $00
	ld   h, [hl]                                     ; $5e69: $66
	nop                                              ; $5e6a: $00
	rst  $38                                         ; $5e6b: $ff
	nop                                              ; $5e6c: $00
	add  b                                           ; $5e6d: $80
	rst  $38                                         ; $5e6e: $ff
	add  b                                           ; $5e6f: $80
	nop                                              ; $5e70: $00
	ld   [bc], a                                     ; $5e71: $02
	add  b                                           ; $5e72: $80
	nop                                              ; $5e73: $00
	inc  de                                          ; $5e74: $13
	add  c                                           ; $5e75: $81
	nop                                              ; $5e76: $00
	dec  b                                           ; $5e77: $05
	inc  de                                          ; $5e78: $13
	nop                                              ; $5e79: $00
	ld   a, a                                        ; $5e7a: $7f
	nop                                              ; $5e7b: $00
	rst  $38                                         ; $5e7c: $ff
	nop                                              ; $5e7d: $00
	add  b                                           ; $5e7e: $80
	rst  $38                                         ; $5e7f: $ff
	add  b                                           ; $5e80: $80
	nop                                              ; $5e81: $00
	dec  bc                                          ; $5e82: $0b
	sbc  a                                           ; $5e83: $9f
	nop                                              ; $5e84: $00
	stop                                             ; $5e85: $10 $00
	ld   c, b                                        ; $5e87: $48
	nop                                              ; $5e88: $00
	scf                                              ; $5e89: $37
	nop                                              ; $5e8a: $00
	rrca                                             ; $5e8b: $0f
	nop                                              ; $5e8c: $00
	rst  $38                                         ; $5e8d: $ff
	nop                                              ; $5e8e: $00
	add  b                                           ; $5e8f: $80
	rst  $38                                         ; $5e90: $ff
	add  b                                           ; $5e91: $80
	nop                                              ; $5e92: $00
	ld   b, $cc                                      ; $5e93: $06 $cc
	nop                                              ; $5e95: $00
	ld   d, b                                        ; $5e96: $50
	nop                                              ; $5e97: $00
	and  d                                           ; $5e98: $a2
	nop                                              ; $5e99: $00
	pop  bc                                          ; $5e9a: $c1
	add  c                                           ; $5e9b: $81
	nop                                              ; $5e9c: $00
	ld   bc, $00ff                                   ; $5e9d: $01 $ff $00
	add  b                                           ; $5ea0: $80
	rst  $38                                         ; $5ea1: $ff
	add  b                                           ; $5ea2: $80
	nop                                              ; $5ea3: $00
	sbc  $01                                         ; $5ea4: $de $01
	add  d                                           ; $5ea6: $82
	rst  $38                                         ; $5ea7: $ff
	inc  c                                           ; $5ea8: $0c
	add  a                                           ; $5ea9: $87
	rst  $38                                         ; $5eaa: $ff
	ret  c                                           ; $5eab: $d8

	rst  $38                                         ; $5eac: $ff
	ld   a, [$faff]                                  ; $5ead: $fa $ff $fa
	rst  $38                                         ; $5eb0: $ff
	ret  nc                                          ; $5eb1: $d0

	rst  $38                                         ; $5eb2: $ff
	ld   [hl], b                                     ; $5eb3: $70
	rst  $38                                         ; $5eb4: $ff
	nop                                              ; $5eb5: $00
	add  c                                           ; $5eb6: $81
	rst  $38                                         ; $5eb7: $ff
	inc  c                                           ; $5eb8: $0c
	rrca                                             ; $5eb9: $0f
	rst  $38                                         ; $5eba: $ff
	db   $fc                                         ; $5ebb: $fc
	rst  $38                                         ; $5ebc: $ff
	xor  a                                           ; $5ebd: $af
	rst  $38                                         ; $5ebe: $ff
	xor  a                                           ; $5ebf: $af
	rst  $38                                         ; $5ec0: $ff
	inc  a                                           ; $5ec1: $3c
	rst  $38                                         ; $5ec2: $ff
	jr   nc, @+$01                                   ; $5ec3: $30 $ff

	nop                                              ; $5ec5: $00
	add  c                                           ; $5ec6: $81
	rst  $38                                         ; $5ec7: $ff
	inc  c                                           ; $5ec8: $0c
	rst  $20                                         ; $5ec9: $e7
	rst  $38                                         ; $5eca: $ff
	jr   @+$01                                       ; $5ecb: $18 $ff

	nop                                              ; $5ecd: $00
	rst  $38                                         ; $5ece: $ff
	sub  l                                           ; $5ecf: $95
	rst  $38                                         ; $5ed0: $ff
	cp   $ff                                         ; $5ed1: $fe $ff
	ld   l, e                                        ; $5ed3: $6b
	rst  $38                                         ; $5ed4: $ff
	nop                                              ; $5ed5: $00
	add  c                                           ; $5ed6: $81
	rst  $38                                         ; $5ed7: $ff
	inc  c                                           ; $5ed8: $0c
	ld   sp, hl                                      ; $5ed9: $f9
	rst  $38                                         ; $5eda: $ff
	ccf                                              ; $5edb: $3f
	rst  $38                                         ; $5edc: $ff
	push af                                          ; $5edd: $f5
	rst  $38                                         ; $5ede: $ff
	jp   hl                                          ; $5edf: $e9


	rst  $38                                         ; $5ee0: $ff
	daa                                              ; $5ee1: $27
	rst  $38                                         ; $5ee2: $ff
	ld   [bc], a                                     ; $5ee3: $02
	rst  $38                                         ; $5ee4: $ff
	nop                                              ; $5ee5: $00
	add  c                                           ; $5ee6: $81
	rst  $38                                         ; $5ee7: $ff
	ld   [bc], a                                     ; $5ee8: $02
	inc  bc                                          ; $5ee9: $03
	rst  $38                                         ; $5eea: $ff
	inc  bc                                          ; $5eeb: $03
	add  c                                           ; $5eec: $81
	rst  $38                                         ; $5eed: $ff
	nop                                              ; $5eee: $00
	inc  bc                                          ; $5eef: $03
	add  c                                           ; $5ef0: $81
	rst  $38                                         ; $5ef1: $ff
	ld   [bc], a                                     ; $5ef2: $02
	db   $fc                                         ; $5ef3: $fc
	rst  $38                                         ; $5ef4: $ff
	nop                                              ; $5ef5: $00
	add  c                                           ; $5ef6: $81
	rst  $38                                         ; $5ef7: $ff
	inc  c                                           ; $5ef8: $0c
	add  $ff                                         ; $5ef9: $c6 $ff
	ccf                                              ; $5efb: $3f
	rst  $38                                         ; $5efc: $ff
	ld   hl, $27ff                                   ; $5efd: $21 $ff $27
	rst  $38                                         ; $5f00: $ff
	ld   a, c                                        ; $5f01: $79
	rst  $38                                         ; $5f02: $ff
	ld   a, c                                        ; $5f03: $79
	rst  $38                                         ; $5f04: $ff
	nop                                              ; $5f05: $00
	add  c                                           ; $5f06: $81
	rst  $38                                         ; $5f07: $ff
	inc  b                                           ; $5f08: $04
	ld   a, h                                        ; $5f09: $7c
	rst  $38                                         ; $5f0a: $ff
	di                                               ; $5f0b: $f3
	rst  $38                                         ; $5f0c: $ff
	sub  l                                           ; $5f0d: $95
	add  c                                           ; $5f0e: $81
	rst  $38                                         ; $5f0f: $ff
	inc  b                                           ; $5f10: $04
	cp   a                                           ; $5f11: $bf
	rst  $38                                         ; $5f12: $ff
	and  l                                           ; $5f13: $a5
	rst  $38                                         ; $5f14: $ff
	nop                                              ; $5f15: $00
	add  c                                           ; $5f16: $81
	rst  $38                                         ; $5f17: $ff
	inc  b                                           ; $5f18: $04
	pop  bc                                          ; $5f19: $c1
	rst  $38                                         ; $5f1a: $ff
	scf                                              ; $5f1b: $37
	rst  $38                                         ; $5f1c: $ff
	cp   a                                           ; $5f1d: $bf
	add  c                                           ; $5f1e: $81
	rst  $38                                         ; $5f1f: $ff
	inc  b                                           ; $5f20: $04
	pop  af                                          ; $5f21: $f1
	rst  $38                                         ; $5f22: $ff
	cp   b                                           ; $5f23: $b8
	rst  $38                                         ; $5f24: $ff
	nop                                              ; $5f25: $00
	add  c                                           ; $5f26: $81
	rst  $38                                         ; $5f27: $ff
	inc  c                                           ; $5f28: $0c
	adc  c                                           ; $5f29: $89
	rst  $38                                         ; $5f2a: $ff
	sub  $ff                                         ; $5f2b: $d6 $ff
	ei                                               ; $5f2d: $fb
	rst  $38                                         ; $5f2e: $ff
	di                                               ; $5f2f: $f3
	rst  $38                                         ; $5f30: $ff
	push de                                          ; $5f31: $d5
	rst  $38                                         ; $5f32: $ff
	ld   a, l                                        ; $5f33: $7d
	rst  $38                                         ; $5f34: $ff
	nop                                              ; $5f35: $00
	add  c                                           ; $5f36: $81
	rst  $38                                         ; $5f37: $ff
	inc  c                                           ; $5f38: $0c
	ccf                                              ; $5f39: $3f
	rst  $38                                         ; $5f3a: $ff
	rst  JumpTable                                         ; $5f3b: $df
	rst  $38                                         ; $5f3c: $ff
	rra                                              ; $5f3d: $1f
	rst  $38                                         ; $5f3e: $ff
	sbc  a                                           ; $5f3f: $9f
	rst  $38                                         ; $5f40: $ff
	ld   a, a                                        ; $5f41: $7f
	rst  $38                                         ; $5f42: $ff
	ldh  [rIE], a                                    ; $5f43: $e0 $ff
	nop                                              ; $5f45: $00
	add  c                                           ; $5f46: $81
	rst  $38                                         ; $5f47: $ff
	ld   [bc], a                                     ; $5f48: $02
	nop                                              ; $5f49: $00
	rst  $38                                         ; $5f4a: $ff
	jp   $ff81                                       ; $5f4b: $c3 $81 $ff


	nop                                              ; $5f4e: $00
	jp   $ff83                                       ; $5f4f: $c3 $83 $ff


	nop                                              ; $5f52: $00
	nop                                              ; $5f53: $00
	add  c                                           ; $5f54: $81
	rst  $38                                         ; $5f55: $ff
	inc  c                                           ; $5f56: $0c
	di                                               ; $5f57: $f3
	rst  $38                                         ; $5f58: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5f59: $cf
	rst  $38                                         ; $5f5a: $ff
	di                                               ; $5f5b: $f3

Call_017_5f5c:
	rst  $38                                         ; $5f5c: $ff
	db   $d3                                         ; $5f5d: $d3
	rst  $38                                         ; $5f5e: $ff
	db   $db                                         ; $5f5f: $db
	rst  $38                                         ; $5f60: $ff
	jr   c, @+$01                                    ; $5f61: $38 $ff

	nop                                              ; $5f63: $00
	add  c                                           ; $5f64: $81
	rst  $38                                         ; $5f65: $ff
	nop                                              ; $5f66: $00
	rlca                                             ; $5f67: $07
	add  c                                           ; $5f68: $81
	rst  $38                                         ; $5f69: $ff
	nop                                              ; $5f6a: $00
	sbc  a                                           ; $5f6b: $9f
	add  c                                           ; $5f6c: $81
	rst  $38                                         ; $5f6d: $ff
	inc  b                                           ; $5f6e: $04
	sbc  a                                           ; $5f6f: $9f
	rst  $38                                         ; $5f70: $ff
	ld   hl, sp-$01                                  ; $5f71: $f8 $ff
	nop                                              ; $5f73: $00
	add  c                                           ; $5f74: $81
	rst  $38                                         ; $5f75: $ff
	inc  c                                           ; $5f76: $0c
	call nz, $ebff                                   ; $5f77: $c4 $ff $eb
	rst  $38                                         ; $5f7a: $ff
	db   $fd                                         ; $5f7b: $fd
	rst  $38                                         ; $5f7c: $ff
	ld   sp, hl                                      ; $5f7d: $f9
	rst  $38                                         ; $5f7e: $ff
	ld   [$3eff], a                                  ; $5f7f: $ea $ff $3e
	rst  $38                                         ; $5f82: $ff
	nop                                              ; $5f83: $00
	add  c                                           ; $5f84: $81
	rst  $38                                         ; $5f85: $ff
	inc  c                                           ; $5f86: $0c
	sbc  h                                           ; $5f87: $9c
	rst  $38                                         ; $5f88: $ff
	ld   l, [hl]                                     ; $5f89: $6e
	rst  $38                                         ; $5f8a: $ff
	adc  [hl]                                        ; $5f8b: $8e
	rst  $38                                         ; $5f8c: $ff
	call z, $bdff                                    ; $5f8d: $cc $ff $bd
	rst  $38                                         ; $5f90: $ff
	ldh  a, [c]                                      ; $5f91: $f2
	rst  $38                                         ; $5f92: $ff
	nop                                              ; $5f93: $00
	add  c                                           ; $5f94: $81
	rst  $38                                         ; $5f95: $ff
	inc  c                                           ; $5f96: $0c
	inc  bc                                          ; $5f97: $03
	rst  $38                                         ; $5f98: $ff
	rrca                                             ; $5f99: $0f
	rst  $38                                         ; $5f9a: $ff
	rrca                                             ; $5f9b: $0f
	rst  $38                                         ; $5f9c: $ff
	ld   a, a                                        ; $5f9d: $7f
	rst  $38                                         ; $5f9e: $ff
	adc  a                                           ; $5f9f: $8f
	rst  $38                                         ; $5fa0: $ff
	inc  c                                           ; $5fa1: $0c
	rst  $38                                         ; $5fa2: $ff
	nop                                              ; $5fa3: $00
	add  c                                           ; $5fa4: $81
	rst  $38                                         ; $5fa5: $ff
	inc  c                                           ; $5fa6: $0c
	add  a                                           ; $5fa7: $87
	rst  $38                                         ; $5fa8: $ff
	ret  c                                           ; $5fa9: $d8

	rst  $38                                         ; $5faa: $ff
	ld   a, [$faff]                                  ; $5fab: $fa $ff $fa
	rst  $38                                         ; $5fae: $ff
	ret  nc                                          ; $5faf: $d0

	rst  $38                                         ; $5fb0: $ff
	call nc, $005b                                   ; $5fb1: $d4 $5b $00
	add  c                                           ; $5fb4: $81
	rst  $38                                         ; $5fb5: $ff
	inc  c                                           ; $5fb6: $0c
	rrca                                             ; $5fb7: $0f
	rst  $38                                         ; $5fb8: $ff
	db   $fc                                         ; $5fb9: $fc
	rst  $38                                         ; $5fba: $ff
	xor  a                                           ; $5fbb: $af
	rst  $38                                         ; $5fbc: $ff
	xor  a                                           ; $5fbd: $af
	rst  $38                                         ; $5fbe: $ff
	inc  a                                           ; $5fbf: $3c
	rst  $38                                         ; $5fc0: $ff
	ld   a, $f1                                      ; $5fc1: $3e $f1
	nop                                              ; $5fc3: $00
	add  c                                           ; $5fc4: $81
	rst  $38                                         ; $5fc5: $ff
	inc  c                                           ; $5fc6: $0c
	rst  $20                                         ; $5fc7: $e7
	rst  $38                                         ; $5fc8: $ff
	jr   @+$01                                       ; $5fc9: $18 $ff

	nop                                              ; $5fcb: $00
	rst  $38                                         ; $5fcc: $ff
	sub  l                                           ; $5fcd: $95
	rst  $38                                         ; $5fce: $ff
	cp   $ff                                         ; $5fcf: $fe $ff
	rst  $28                                         ; $5fd1: $ef
	ld   a, e                                        ; $5fd2: $7b
	nop                                              ; $5fd3: $00
	add  c                                           ; $5fd4: $81
	rst  $38                                         ; $5fd5: $ff
	inc  c                                           ; $5fd6: $0c
	ld   sp, hl                                      ; $5fd7: $f9
	rst  $38                                         ; $5fd8: $ff
	ccf                                              ; $5fd9: $3f
	rst  $38                                         ; $5fda: $ff
	push af                                          ; $5fdb: $f5
	rst  $38                                         ; $5fdc: $ff
	jp   hl                                          ; $5fdd: $e9


	rst  $38                                         ; $5fde: $ff
	daa                                              ; $5fdf: $27
	rst  $38                                         ; $5fe0: $ff
	ei                                               ; $5fe1: $fb
	ld   b, $00                                      ; $5fe2: $06 $00
	add  c                                           ; $5fe4: $81
	rst  $38                                         ; $5fe5: $ff
	ld   [bc], a                                     ; $5fe6: $02
	inc  bc                                          ; $5fe7: $03
	rst  $38                                         ; $5fe8: $ff
	inc  bc                                          ; $5fe9: $03
	add  c                                           ; $5fea: $81
	rst  $38                                         ; $5feb: $ff
	nop                                              ; $5fec: $00
	inc  bc                                          ; $5fed: $03
	add  c                                           ; $5fee: $81
	rst  $38                                         ; $5fef: $ff
	ld   [bc], a                                     ; $5ff0: $02
	dec  de                                          ; $5ff1: $1b
	jr   jr_017_5ff4                                 ; $5ff2: $18 $00

jr_017_5ff4:
	add  c                                           ; $5ff4: $81
	rst  $38                                         ; $5ff5: $ff
	inc  c                                           ; $5ff6: $0c
	add  $ff                                         ; $5ff7: $c6 $ff
	ccf                                              ; $5ff9: $3f
	rst  $38                                         ; $5ffa: $ff
	ld   hl, $27ff                                   ; $5ffb: $21 $ff $27
	rst  $38                                         ; $5ffe: $ff
	ld   a, c                                        ; $5fff: $79
	rst  $38                                         ; $6000: $ff
	cpl                                              ; $6001: $2f
	xor  c                                           ; $6002: $a9
	nop                                              ; $6003: $00
	add  c                                           ; $6004: $81
	rst  $38                                         ; $6005: $ff
	inc  b                                           ; $6006: $04
	ld   a, h                                        ; $6007: $7c
	rst  $38                                         ; $6008: $ff
	di                                               ; $6009: $f3
	rst  $38                                         ; $600a: $ff
	sub  l                                           ; $600b: $95
	add  c                                           ; $600c: $81
	rst  $38                                         ; $600d: $ff
	inc  b                                           ; $600e: $04
	cp   a                                           ; $600f: $bf
	rst  $38                                         ; $6010: $ff
	push af                                          ; $6011: $f5
	xor  a                                           ; $6012: $af
	nop                                              ; $6013: $00
	add  c                                           ; $6014: $81
	rst  $38                                         ; $6015: $ff
	inc  b                                           ; $6016: $04
	pop  bc                                          ; $6017: $c1
	rst  $38                                         ; $6018: $ff
	scf                                              ; $6019: $37
	rst  $38                                         ; $601a: $ff
	cp   a                                           ; $601b: $bf
	add  c                                           ; $601c: $81
	rst  $38                                         ; $601d: $ff
	inc  b                                           ; $601e: $04
	pop  af                                          ; $601f: $f1
	rst  $38                                         ; $6020: $ff
	cp   e                                           ; $6021: $bb
	db   $fc                                         ; $6022: $fc
	nop                                              ; $6023: $00
	add  c                                           ; $6024: $81
	rst  $38                                         ; $6025: $ff
	inc  c                                           ; $6026: $0c
	adc  c                                           ; $6027: $89
	rst  $38                                         ; $6028: $ff
	sub  $ff                                         ; $6029: $d6 $ff
	ei                                               ; $602b: $fb
	rst  $38                                         ; $602c: $ff
	di                                               ; $602d: $f3
	rst  $38                                         ; $602e: $ff
	push de                                          ; $602f: $d5
	rst  $38                                         ; $6030: $ff
	pop  hl                                          ; $6031: $e1
	ld   h, e                                        ; $6032: $63
	nop                                              ; $6033: $00
	add  c                                           ; $6034: $81
	rst  $38                                         ; $6035: $ff
	inc  c                                           ; $6036: $0c
	ccf                                              ; $6037: $3f
	rst  $38                                         ; $6038: $ff
	rst  JumpTable                                         ; $6039: $df
	rst  $38                                         ; $603a: $ff
	rra                                              ; $603b: $1f
	rst  $38                                         ; $603c: $ff
	sbc  a                                           ; $603d: $9f
	rst  $38                                         ; $603e: $ff
	ld   a, a                                        ; $603f: $7f
	rst  $38                                         ; $6040: $ff
	sbc  a                                           ; $6041: $9f
	add  b                                           ; $6042: $80
	nop                                              ; $6043: $00
	add  c                                           ; $6044: $81
	rst  $38                                         ; $6045: $ff
	ld   [bc], a                                     ; $6046: $02
	nop                                              ; $6047: $00
	rst  $38                                         ; $6048: $ff
	jp   $ff81                                       ; $6049: $c3 $81 $ff


	nop                                              ; $604c: $00
	jp   $ff81                                       ; $604d: $c3 $81 $ff


	add  b                                           ; $6050: $80
	jp   $0000                                      ; $6051: $c3 $00 $00


	add  c                                           ; $6054: $81
	rst  $38                                         ; $6055: $ff
	inc  c                                           ; $6056: $0c
	di                                               ; $6057: $f3
	rst  $38                                         ; $6058: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6059: $cf
	rst  $38                                         ; $605a: $ff
	di                                               ; $605b: $f3
	rst  $38                                         ; $605c: $ff
	db   $d3                                         ; $605d: $d3
	rst  $38                                         ; $605e: $ff
	db   $db                                         ; $605f: $db
	rst  $38                                         ; $6060: $ff
	push hl                                          ; $6061: $e5
	ld   [hl+], a                                    ; $6062: $22
	nop                                              ; $6063: $00
	add  c                                           ; $6064: $81
	rst  $38                                         ; $6065: $ff
	nop                                              ; $6066: $00
	rlca                                             ; $6067: $07
	add  c                                           ; $6068: $81
	rst  $38                                         ; $6069: $ff
	nop                                              ; $606a: $00
	sbc  a                                           ; $606b: $9f
	add  c                                           ; $606c: $81
	rst  $38                                         ; $606d: $ff
	nop                                              ; $606e: $00
	sbc  a                                           ; $606f: $9f
	add  b                                           ; $6070: $80
	rst  $38                                         ; $6071: $ff
	ld   bc, $00f8                                   ; $6072: $01 $f8 $00
	add  c                                           ; $6075: $81
	rst  $38                                         ; $6076: $ff
	inc  c                                           ; $6077: $0c
	call nz, $ebff                                   ; $6078: $c4 $ff $eb
	rst  $38                                         ; $607b: $ff
	db   $fd                                         ; $607c: $fd
	rst  $38                                         ; $607d: $ff
	ld   sp, hl                                      ; $607e: $f9
	rst  $38                                         ; $607f: $ff
	ld   [$f0ff], a                                  ; $6080: $ea $ff $f0
	ld   sp, $8100                                   ; $6083: $31 $00 $81
	rst  $38                                         ; $6086: $ff
	inc  c                                           ; $6087: $0c
	sbc  h                                           ; $6088: $9c
	rst  $38                                         ; $6089: $ff
	ld   l, [hl]                                     ; $608a: $6e
	rst  $38                                         ; $608b: $ff
	adc  [hl]                                        ; $608c: $8e
	rst  $38                                         ; $608d: $ff
	call z, $bdff                                    ; $608e: $cc $ff $bd
	rst  $38                                         ; $6091: $ff
	adc  $c3                                         ; $6092: $ce $c3
	nop                                              ; $6094: $00
	add  c                                           ; $6095: $81
	rst  $38                                         ; $6096: $ff
	ld   de, $ff03                                   ; $6097: $11 $03 $ff
	rrca                                             ; $609a: $0f
	rst  $38                                         ; $609b: $ff
	rrca                                             ; $609c: $0f
	rst  $38                                         ; $609d: $ff
	ld   a, a                                        ; $609e: $7f
	rst  $38                                         ; $609f: $ff
	adc  a                                           ; $60a0: $8f
	rst  $38                                         ; $60a1: $ff
	rrca                                             ; $60a2: $0f
	db   $fc                                         ; $60a3: $fc
	ld   e, a                                        ; $60a4: $5f
	rst  $38                                         ; $60a5: $ff
	ld   hl, sp-$01                                  ; $60a6: $f8 $ff
	ld   e, b                                        ; $60a8: $58
	rst  $38                                         ; $60a9: $ff
	adc  b                                           ; $60aa: $88
	nop                                              ; $60ab: $00
	dec  b                                           ; $60ac: $05
	di                                               ; $60ad: $f3
	rst  $38                                         ; $60ae: $ff
	adc  a                                           ; $60af: $8f
	rst  $38                                         ; $60b0: $ff
	add  e                                           ; $60b1: $83
	rst  $38                                         ; $60b2: $ff
	adc  b                                           ; $60b3: $88
	nop                                              ; $60b4: $00
	dec  b                                           ; $60b5: $05
	jr   nc, @+$01                                   ; $60b6: $30 $ff

	or   b                                           ; $60b8: $b0
	rst  $38                                         ; $60b9: $ff
	ld   a, a                                        ; $60ba: $7f
	rst  $38                                         ; $60bb: $ff
	adc  b                                           ; $60bc: $88
	nop                                              ; $60bd: $00
	dec  b                                           ; $60be: $05
	adc  [hl]                                        ; $60bf: $8e
	rst  $38                                         ; $60c0: $ff
	rst  $28                                         ; $60c1: $ef
	rst  $38                                         ; $60c2: $ff
	sbc  [hl]                                        ; $60c3: $9e
	rst  $38                                         ; $60c4: $ff
	adc  b                                           ; $60c5: $88
	nop                                              ; $60c6: $00
	nop                                              ; $60c7: $00
	jr   @-$7d                                       ; $60c8: $18 $81

	rst  $38                                         ; $60ca: $ff
	ld   bc, $ff18                                   ; $60cb: $01 $18 $ff
	adc  b                                           ; $60ce: $88
	nop                                              ; $60cf: $00
	dec  b                                           ; $60d0: $05
	ld   sp, hl                                      ; $60d1: $f9
	rst  $38                                         ; $60d2: $ff
	xor  a                                           ; $60d3: $af
	rst  $38                                         ; $60d4: $ff
	xor  c                                           ; $60d5: $a9
	rst  $38                                         ; $60d6: $ff
	adc  b                                           ; $60d7: $88
	nop                                              ; $60d8: $00
	dec  b                                           ; $60d9: $05
	and  b                                           ; $60da: $a0
	rst  $38                                         ; $60db: $ff
	ld   hl, sp-$01                                  ; $60dc: $f8 $ff
	and  a                                           ; $60de: $a7
	rst  $38                                         ; $60df: $ff
	adc  b                                           ; $60e0: $88
	nop                                              ; $60e1: $00
	dec  b                                           ; $60e2: $05
	ld   [hl], $ff                                   ; $60e3: $36 $ff
	ld   a, a                                        ; $60e5: $7f
	rst  $38                                         ; $60e6: $ff
	or   [hl]                                        ; $60e7: $b6
	rst  $38                                         ; $60e8: $ff
	adc  b                                           ; $60e9: $88
	nop                                              ; $60ea: $00
	dec  b                                           ; $60eb: $05
	ld   d, a                                        ; $60ec: $57
	rst  $38                                         ; $60ed: $ff
	push af                                          ; $60ee: $f5
	rst  $38                                         ; $60ef: $ff
	ld   e, l                                        ; $60f0: $5d
	rst  $38                                         ; $60f1: $ff
	adc  b                                           ; $60f2: $88
	nop                                              ; $60f3: $00
	dec  b                                           ; $60f4: $05
	add  b                                           ; $60f5: $80
	rst  $38                                         ; $60f6: $ff
	cp   a                                           ; $60f7: $bf
	rst  $38                                         ; $60f8: $ff
	ret  nz                                          ; $60f9: $c0

	rst  $38                                         ; $60fa: $ff
	adc  b                                           ; $60fb: $88
	nop                                              ; $60fc: $00
	ld   [bc], a                                     ; $60fd: $02
	jp   $c3ff                                       ; $60fe: $c3 $ff $c3


	add  c                                           ; $6101: $81
	rst  $38                                         ; $6102: $ff
	adc  b                                           ; $6103: $88
	nop                                              ; $6104: $00
	nop                                              ; $6105: $00
	ld   a, $81                                      ; $6106: $3e $81
	rst  $38                                         ; $6108: $ff
	ld   bc, $ff3e                                   ; $6109: $01 $3e $ff
	adc  b                                           ; $610c: $88
	nop                                              ; $610d: $00
	nop                                              ; $610e: $00
	sbc  b                                           ; $610f: $98
	add  c                                           ; $6110: $81
	rst  $38                                         ; $6111: $ff
	ld   bc, $ff98                                   ; $6112: $01 $98 $ff
	adc  b                                           ; $6115: $88
	nop                                              ; $6116: $00
	dec  b                                           ; $6117: $05
	dec  hl                                          ; $6118: $2b
	rst  $38                                         ; $6119: $ff
	ld   a, [$2eff]                                  ; $611a: $fa $ff $2e
	rst  $38                                         ; $611d: $ff
	adc  b                                           ; $611e: $88
	nop                                              ; $611f: $00
	dec  b                                           ; $6120: $05
	jp   nz, $deff                                   ; $6121: $c2 $ff $de

	rst  $38                                         ; $6124: $ff
	db   $e3                                         ; $6125: $e3
	rst  $38                                         ; $6126: $ff
	adc  b                                           ; $6127: $88
	nop                                              ; $6128: $00
	dec  b                                           ; $6129: $05
	inc  c                                           ; $612a: $0c
	rst  $38                                         ; $612b: $ff
	rrca                                             ; $612c: $0f
	rst  $38                                         ; $612d: $ff
	db   $fc                                         ; $612e: $fc
	rst  $38                                         ; $612f: $ff
	adc  c                                           ; $6130: $89
	nop                                              ; $6131: $00
	add  c                                           ; $6132: $81
	rst  $38                                         ; $6133: $ff
	inc  c                                           ; $6134: $0c
	add  a                                           ; $6135: $87
	rst  $38                                         ; $6136: $ff
	ret  c                                           ; $6137: $d8

	rst  $38                                         ; $6138: $ff
	ld   a, [$faff]                                  ; $6139: $fa $ff $fa
	rst  $38                                         ; $613c: $ff
	ret  nc                                          ; $613d: $d0

	rst  $38                                         ; $613e: $ff
	call nc, $a4ff                                   ; $613f: $d4 $ff $a4
	add  c                                           ; $6142: $81
	rst  $38                                         ; $6143: $ff
	inc  c                                           ; $6144: $0c
	rrca                                             ; $6145: $0f
	rst  $38                                         ; $6146: $ff
	db   $fc                                         ; $6147: $fc
	rst  $38                                         ; $6148: $ff
	xor  a                                           ; $6149: $af
	rst  $38                                         ; $614a: $ff
	xor  a                                           ; $614b: $af
	rst  $38                                         ; $614c: $ff
	inc  a                                           ; $614d: $3c
	rst  $38                                         ; $614e: $ff
	ld   a, $ff                                      ; $614f: $3e $ff
	ld   c, $81                                      ; $6151: $0e $81
	rst  $38                                         ; $6153: $ff
	inc  c                                           ; $6154: $0c
	rst  $20                                         ; $6155: $e7
	rst  $38                                         ; $6156: $ff
	jr   @+$01                                       ; $6157: $18 $ff

	nop                                              ; $6159: $00
	rst  $38                                         ; $615a: $ff
	sub  l                                           ; $615b: $95
	rst  $38                                         ; $615c: $ff
	cp   $ff                                         ; $615d: $fe $ff
	rst  $28                                         ; $615f: $ef
	rst  $38                                         ; $6160: $ff
	add  h                                           ; $6161: $84
	add  c                                           ; $6162: $81
	rst  $38                                         ; $6163: $ff
	inc  c                                           ; $6164: $0c
	ld   sp, hl                                      ; $6165: $f9
	rst  $38                                         ; $6166: $ff
	ccf                                              ; $6167: $3f
	rst  $38                                         ; $6168: $ff
	push af                                          ; $6169: $f5
	rst  $38                                         ; $616a: $ff
	jp   hl                                          ; $616b: $e9


	rst  $38                                         ; $616c: $ff
	daa                                              ; $616d: $27
	rst  $38                                         ; $616e: $ff
	ei                                               ; $616f: $fb
	rst  $38                                         ; $6170: $ff
	ld   sp, hl                                      ; $6171: $f9
	add  c                                           ; $6172: $81
	rst  $38                                         ; $6173: $ff
	ld   [bc], a                                     ; $6174: $02
	inc  bc                                          ; $6175: $03
	rst  $38                                         ; $6176: $ff
	inc  bc                                          ; $6177: $03
	add  c                                           ; $6178: $81
	rst  $38                                         ; $6179: $ff
	nop                                              ; $617a: $00
	inc  bc                                          ; $617b: $03
	add  c                                           ; $617c: $81
	rst  $38                                         ; $617d: $ff
	ld   [bc], a                                     ; $617e: $02
	dec  de                                          ; $617f: $1b

Jump_017_6180:
	rst  $38                                         ; $6180: $ff
	rst  $20                                         ; $6181: $e7
	add  c                                           ; $6182: $81
	rst  $38                                         ; $6183: $ff
	inc  c                                           ; $6184: $0c
	add  $ff                                         ; $6185: $c6 $ff
	ccf                                              ; $6187: $3f
	rst  $38                                         ; $6188: $ff
	ld   hl, $27ff                                   ; $6189: $21 $ff $27
	rst  $38                                         ; $618c: $ff
	ld   a, c                                        ; $618d: $79
	rst  $38                                         ; $618e: $ff
	cpl                                              ; $618f: $2f
	rst  $38                                         ; $6190: $ff
	ld   d, [hl]                                     ; $6191: $56
	add  c                                           ; $6192: $81
	rst  $38                                         ; $6193: $ff
	inc  b                                           ; $6194: $04
	ld   a, h                                        ; $6195: $7c
	rst  $38                                         ; $6196: $ff
	di                                               ; $6197: $f3
	rst  $38                                         ; $6198: $ff
	sub  l                                           ; $6199: $95
	add  c                                           ; $619a: $81
	rst  $38                                         ; $619b: $ff
	inc  b                                           ; $619c: $04
	cp   a                                           ; $619d: $bf
	rst  $38                                         ; $619e: $ff
	push af                                          ; $619f: $f5
	rst  $38                                         ; $61a0: $ff
	ld   d, b                                        ; $61a1: $50
	add  c                                           ; $61a2: $81
	rst  $38                                         ; $61a3: $ff
	inc  b                                           ; $61a4: $04
	pop  bc                                          ; $61a5: $c1
	rst  $38                                         ; $61a6: $ff
	scf                                              ; $61a7: $37
	rst  $38                                         ; $61a8: $ff
	cp   a                                           ; $61a9: $bf
	add  c                                           ; $61aa: $81
	rst  $38                                         ; $61ab: $ff
	inc  b                                           ; $61ac: $04
	pop  af                                          ; $61ad: $f1
	rst  $38                                         ; $61ae: $ff
	cp   e                                           ; $61af: $bb
	rst  $38                                         ; $61b0: $ff
	inc  bc                                          ; $61b1: $03
	add  c                                           ; $61b2: $81
	rst  $38                                         ; $61b3: $ff
	inc  c                                           ; $61b4: $0c
	adc  c                                           ; $61b5: $89
	rst  $38                                         ; $61b6: $ff
	sub  $ff                                         ; $61b7: $d6 $ff
	ei                                               ; $61b9: $fb
	rst  $38                                         ; $61ba: $ff
	di                                               ; $61bb: $f3
	rst  $38                                         ; $61bc: $ff
	push de                                          ; $61bd: $d5
	rst  $38                                         ; $61be: $ff
	pop  hl                                          ; $61bf: $e1
	rst  $38                                         ; $61c0: $ff
	sbc  h                                           ; $61c1: $9c
	add  c                                           ; $61c2: $81
	rst  $38                                         ; $61c3: $ff
	inc  c                                           ; $61c4: $0c
	ccf                                              ; $61c5: $3f
	rst  $38                                         ; $61c6: $ff
	rst  JumpTable                                         ; $61c7: $df
	rst  $38                                         ; $61c8: $ff
	rra                                              ; $61c9: $1f
	rst  $38                                         ; $61ca: $ff
	sbc  a                                           ; $61cb: $9f
	rst  $38                                         ; $61cc: $ff
	ld   a, a                                        ; $61cd: $7f
	rst  $38                                         ; $61ce: $ff
	sbc  a                                           ; $61cf: $9f
	rst  $38                                         ; $61d0: $ff
	ld   a, a                                        ; $61d1: $7f
	add  c                                           ; $61d2: $81
	rst  $38                                         ; $61d3: $ff
	ld   [bc], a                                     ; $61d4: $02
	nop                                              ; $61d5: $00
	rst  $38                                         ; $61d6: $ff
	jp   $ff81                                       ; $61d7: $c3 $81 $ff


	nop                                              ; $61da: $00
	jp   $ff81                                       ; $61db: $c3 $81 $ff


	ld   [bc], a                                     ; $61de: $02
	jp   $3cff                                       ; $61df: $c3 $ff $3c


	add  c                                           ; $61e2: $81
	rst  $38                                         ; $61e3: $ff
	inc  c                                           ; $61e4: $0c
	di                                               ; $61e5: $f3
	rst  $38                                         ; $61e6: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $61e7: $cf
	rst  $38                                         ; $61e8: $ff
	di                                               ; $61e9: $f3
	rst  $38                                         ; $61ea: $ff
	db   $d3                                         ; $61eb: $d3
	rst  $38                                         ; $61ec: $ff
	db   $db                                         ; $61ed: $db
	rst  $38                                         ; $61ee: $ff
	push hl                                          ; $61ef: $e5
	rst  $38                                         ; $61f0: $ff
	db   $dd                                         ; $61f1: $dd
	add  c                                           ; $61f2: $81
	rst  $38                                         ; $61f3: $ff
	nop                                              ; $61f4: $00
	rlca                                             ; $61f5: $07
	add  c                                           ; $61f6: $81
	rst  $38                                         ; $61f7: $ff
	nop                                              ; $61f8: $00
	sbc  a                                           ; $61f9: $9f
	add  c                                           ; $61fa: $81
	rst  $38                                         ; $61fb: $ff
	nop                                              ; $61fc: $00
	sbc  a                                           ; $61fd: $9f
	add  c                                           ; $61fe: $81
	rst  $38                                         ; $61ff: $ff
	nop                                              ; $6200: $00
	rlca                                             ; $6201: $07
	add  c                                           ; $6202: $81
	rst  $38                                         ; $6203: $ff
	inc  c                                           ; $6204: $0c
	call nz, $ebff                                   ; $6205: $c4 $ff $eb
	rst  $38                                         ; $6208: $ff
	db   $fd                                         ; $6209: $fd
	rst  $38                                         ; $620a: $ff
	ld   sp, hl                                      ; $620b: $f9
	rst  $38                                         ; $620c: $ff
	ld   [$f0ff], a                                  ; $620d: $ea $ff $f0
	rst  $38                                         ; $6210: $ff
	adc  $81                                         ; $6211: $ce $81
	rst  $38                                         ; $6213: $ff
	inc  c                                           ; $6214: $0c
	sbc  h                                           ; $6215: $9c
	rst  $38                                         ; $6216: $ff
	ld   l, [hl]                                     ; $6217: $6e
	rst  $38                                         ; $6218: $ff
	adc  [hl]                                        ; $6219: $8e
	rst  $38                                         ; $621a: $ff
	call z, $bdff                                    ; $621b: $cc $ff $bd
	rst  $38                                         ; $621e: $ff
	adc  $ff                                         ; $621f: $ce $ff
	inc  a                                           ; $6221: $3c
	add  c                                           ; $6222: $81
	rst  $38                                         ; $6223: $ff
	ld   h, $03                                      ; $6224: $26 $03
	rst  $38                                         ; $6226: $ff
	rrca                                             ; $6227: $0f
	rst  $38                                         ; $6228: $ff
	rrca                                             ; $6229: $0f
	rst  $38                                         ; $622a: $ff
	ld   a, a                                        ; $622b: $7f
	rst  $38                                         ; $622c: $ff
	adc  a                                           ; $622d: $8f
	rst  $38                                         ; $622e: $ff
	rrca                                             ; $622f: $0f
	rst  $38                                         ; $6230: $ff
	ld   e, h                                        ; $6231: $5c
	rst  $38                                         ; $6232: $ff
	ld   hl, sp-$01                                  ; $6233: $f8 $ff
	db   $dd                                         ; $6235: $dd
	rst  $38                                         ; $6236: $ff
	rst  $20                                         ; $6237: $e7
	rst  $38                                         ; $6238: $ff
	rst  $30                                         ; $6239: $f7
	rst  $38                                         ; $623a: $ff
	ld   a, [$fdff]                                  ; $623b: $fa $ff $fd
	rst  $38                                         ; $623e: $ff
	sub  d                                           ; $623f: $92
	rst  $38                                         ; $6240: $ff
	inc  c                                           ; $6241: $0c
	rst  $38                                         ; $6242: $ff
	adc  a                                           ; $6243: $8f
	rst  $38                                         ; $6244: $ff
	xor  l                                           ; $6245: $ad
	rst  $38                                         ; $6246: $ff
	cp   $ff                                         ; $6247: $fe $ff
	ld   c, $ff                                      ; $6249: $0e $ff
	cpl                                              ; $624b: $2f
	add  c                                           ; $624c: $81
	rst  $38                                         ; $624d: $ff
	ld   a, [bc]                                     ; $624e: $0a
	ld   c, $ff                                      ; $624f: $0e $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6251: $cf
	rst  $38                                         ; $6252: $ff
	or   b                                           ; $6253: $b0
	rst  $38                                         ; $6254: $ff
	ld   c, a                                        ; $6255: $4f
	rst  $38                                         ; $6256: $ff
	jr   z, @+$01                                    ; $6257: $28 $ff

	ld   a, [hl]                                     ; $6259: $7e
	add  c                                           ; $625a: $81
	rst  $38                                         ; $625b: $ff
	inc  c                                           ; $625c: $0c
	sbc  c                                           ; $625d: $99
	rst  $38                                         ; $625e: $ff
	nop                                              ; $625f: $00
	rst  $38                                         ; $6260: $ff
	ld   [hl], c                                     ; $6261: $71
	rst  $38                                         ; $6262: $ff
	rst  $28                                         ; $6263: $ef
	rst  $38                                         ; $6264: $ff
	rst  $20                                         ; $6265: $e7
	rst  $38                                         ; $6266: $ff
	ld   a, a                                        ; $6267: $7f
	rst  $38                                         ; $6268: $ff
	ld   a, a                                        ; $6269: $7f
	add  e                                           ; $626a: $83
	rst  $38                                         ; $626b: $ff
	ld   [bc], a                                     ; $626c: $02
	ld   a, c                                        ; $626d: $79
	rst  $38                                         ; $626e: $ff
	rst  $20                                         ; $626f: $e7
	add  l                                           ; $6270: $85
	rst  $38                                         ; $6271: $ff
	inc  c                                           ; $6272: $0c
	cp   a                                           ; $6273: $bf
	rst  $38                                         ; $6274: $ff
	sbc  a                                           ; $6275: $9f
	rst  $38                                         ; $6276: $ff
	rst  JumpTable                                         ; $6277: $df
	rst  $38                                         ; $6278: $ff
	rst  $20                                         ; $6279: $e7
	rst  $38                                         ; $627a: $ff
	ld   b, $ff                                      ; $627b: $06 $ff
	xor  a                                           ; $627d: $af
	rst  $38                                         ; $627e: $ff
	xor  a                                           ; $627f: $af
	add  c                                           ; $6280: $81
	rst  $38                                         ; $6281: $ff
	ld   a, [bc]                                     ; $6282: $0a
	daa                                              ; $6283: $27
	rst  $38                                         ; $6284: $ff
	daa                                              ; $6285: $27
	rst  $38                                         ; $6286: $ff
	db   $fc                                         ; $6287: $fc
	rst  $38                                         ; $6288: $ff
	dec  b                                           ; $6289: $05
	rst  $38                                         ; $628a: $ff
	ld   e, a                                        ; $628b: $5f
	rst  $38                                         ; $628c: $ff
	ld   hl, sp-$7f                                  ; $628d: $f8 $81
	rst  $38                                         ; $628f: $ff
	db   $10                                         ; $6290: $10
	db   $fd                                         ; $6291: $fd
	rst  $38                                         ; $6292: $ff
	ld   a, a                                        ; $6293: $7f
	rst  $38                                         ; $6294: $ff
	cp   a                                           ; $6295: $bf
	rst  $38                                         ; $6296: $ff
	cp   l                                           ; $6297: $bd
	rst  $38                                         ; $6298: $ff
	ret  c                                           ; $6299: $d8

	rst  $38                                         ; $629a: $ff
	ret                                              ; $629b: $c9


	rst  $38                                         ; $629c: $ff
	ld   a, a                                        ; $629d: $7f
	rst  $38                                         ; $629e: $ff
	rst  $30                                         ; $629f: $f7
	rst  $38                                         ; $62a0: $ff
	pop  af                                          ; $62a1: $f1
	add  l                                           ; $62a2: $85
	rst  $38                                         ; $62a3: $ff
	ld   d, $4f                                      ; $62a4: $16 $4f
	rst  $38                                         ; $62a6: $ff
	xor  b                                           ; $62a7: $a8
	rst  $38                                         ; $62a8: $ff
	push af                                          ; $62a9: $f5
	rst  $38                                         ; $62aa: $ff
	pop  de                                          ; $62ab: $d1
	rst  $38                                         ; $62ac: $ff
	db   $eb                                         ; $62ad: $eb
	rst  $38                                         ; $62ae: $ff
	push af                                          ; $62af: $f5
	rst  $38                                         ; $62b0: $ff
	di                                               ; $62b1: $f3
	rst  $38                                         ; $62b2: $ff
	db   $fd                                         ; $62b3: $fd
	rst  $38                                         ; $62b4: $ff
	sbc  h                                           ; $62b5: $9c
	rst  $38                                         ; $62b6: $ff
	ld   a, a                                        ; $62b7: $7f
	rst  $38                                         ; $62b8: $ff
	cp   a                                           ; $62b9: $bf
	rst  $38                                         ; $62ba: $ff
	sbc  a                                           ; $62bb: $9f
	add  e                                           ; $62bc: $83
	rst  $38                                         ; $62bd: $ff
	ld   a, [bc]                                     ; $62be: $0a
	rst  JumpTable                                         ; $62bf: $df
	rst  $38                                         ; $62c0: $ff
	cp   $ff                                         ; $62c1: $fe $ff
	ld   a, [hl]                                     ; $62c3: $7e
	rst  $38                                         ; $62c4: $ff
	inc  a                                           ; $62c5: $3c
	rst  $38                                         ; $62c6: $ff
	jp   $c3ff                                       ; $62c7: $c3 $ff $c3


	add  c                                           ; $62ca: $81
	rst  $38                                         ; $62cb: $ff
	ld   [$fff3], sp                                 ; $62cc: $08 $f3 $ff
	or   a                                           ; $62cf: $b7
	rst  $38                                         ; $62d0: $ff
	ld   a, e                                        ; $62d1: $7b
	rst  $38                                         ; $62d2: $ff
	db   $fc                                         ; $62d3: $fc
	rst  $38                                         ; $62d4: $ff
	pop  bc                                          ; $62d5: $c1
	add  c                                           ; $62d6: $81
	rst  $38                                         ; $62d7: $ff
	inc  c                                           ; $62d8: $0c
	set  7, a                                        ; $62d9: $cb $ff
	call $fdff                                       ; $62db: $cd $ff $fd
	rst  $38                                         ; $62de: $ff
	rst  $28                                         ; $62df: $ef
	rst  $38                                         ; $62e0: $ff
	cp   $ff                                         ; $62e1: $fe $ff
	call nc, Call_017_67ff                           ; $62e3: $d4 $ff $67
	add  c                                           ; $62e6: $81
	rst  $38                                         ; $62e7: $ff
	ld   [bc], a                                     ; $62e8: $02
	sbc  a                                           ; $62e9: $9f
	rst  $38                                         ; $62ea: $ff
	sbc  a                                           ; $62eb: $9f
	add  e                                           ; $62ec: $83
	rst  $38                                         ; $62ed: $ff
	ld   [hl-], a                                    ; $62ee: $32
	sbc  e                                           ; $62ef: $9b
	rst  $38                                         ; $62f0: $ff
	inc  bc                                          ; $62f1: $03
	rst  $38                                         ; $62f2: $ff
	call nc, $faff                                   ; $62f3: $d4 $ff $fa
	rst  $38                                         ; $62f6: $ff
	add  sp, -$01                                    ; $62f7: $e8 $ff
	push af                                          ; $62f9: $f5
	rst  $38                                         ; $62fa: $ff
	ld   a, [$f9ff]                                  ; $62fb: $fa $ff $f9
	rst  $38                                         ; $62fe: $ff
	cp   $ff                                         ; $62ff: $fe $ff
	adc  $ff                                         ; $6301: $ce $ff
	dec  a                                           ; $6303: $3d
	rst  $38                                         ; $6304: $ff
	sbc  $ff                                         ; $6305: $de $ff
	adc  $ff                                         ; $6307: $ce $ff
	cp   $ff                                         ; $6309: $fe $ff
	cp   $ff                                         ; $630b: $fe $ff
	db   $ec                                         ; $630d: $ec
	rst  $38                                         ; $630e: $ff
	db   $fd                                         ; $630f: $fd
	rst  $38                                         ; $6310: $ff
	inc  a                                           ; $6311: $3c
	rst  $38                                         ; $6312: $ff
	di                                               ; $6313: $f3
	rst  $38                                         ; $6314: $ff
	rrca                                             ; $6315: $0f
	rst  $38                                         ; $6316: $ff
	rrca                                             ; $6317: $0f
	rst  $38                                         ; $6318: $ff
	rrca                                             ; $6319: $0f
	rst  $38                                         ; $631a: $ff
	rlca                                             ; $631b: $07
	rst  $38                                         ; $631c: $ff
	ld   h, e                                        ; $631d: $63
	rst  $38                                         ; $631e: $ff
	db   $eb                                         ; $631f: $eb
	rst  $38                                         ; $6320: $ff
	ld   [hl], e                                     ; $6321: $73
	add  b                                           ; $6322: $80
	rst  $38                                         ; $6323: $ff
	add  b                                           ; $6324: $80
	nop                                              ; $6325: $00
	inc  c                                           ; $6326: $0c
	rst  $38                                         ; $6327: $ff
	add  a                                           ; $6328: $87
	rst  $38                                         ; $6329: $ff
	ret  c                                           ; $632a: $d8

	rst  $38                                         ; $632b: $ff
	ld   a, [$faff]                                  ; $632c: $fa $ff $fa
	rst  $38                                         ; $632f: $ff
	ret  nc                                          ; $6330: $d0

	rst  $38                                         ; $6331: $ff
	call nc, $815b                                   ; $6332: $d4 $5b $81
	nop                                              ; $6335: $00
	inc  c                                           ; $6336: $0c
	rst  $38                                         ; $6337: $ff
	rrca                                             ; $6338: $0f
	rst  $38                                         ; $6339: $ff
	db   $fc                                         ; $633a: $fc
	rst  $38                                         ; $633b: $ff
	xor  a                                           ; $633c: $af
	rst  $38                                         ; $633d: $ff
	xor  a                                           ; $633e: $af
	rst  $38                                         ; $633f: $ff
	inc  a                                           ; $6340: $3c
	rst  $38                                         ; $6341: $ff
	ld   a, $f1                                      ; $6342: $3e $f1
	add  c                                           ; $6344: $81
	nop                                              ; $6345: $00
	inc  c                                           ; $6346: $0c
	rst  $38                                         ; $6347: $ff
	rst  $20                                         ; $6348: $e7
	rst  $38                                         ; $6349: $ff
	jr   @+$01                                       ; $634a: $18 $ff

	nop                                              ; $634c: $00
	rst  $38                                         ; $634d: $ff
	sub  l                                           ; $634e: $95
	rst  $38                                         ; $634f: $ff
	cp   $ff                                         ; $6350: $fe $ff
	rst  $28                                         ; $6352: $ef
	ld   a, e                                        ; $6353: $7b
	add  c                                           ; $6354: $81
	nop                                              ; $6355: $00
	inc  c                                           ; $6356: $0c
	rst  $38                                         ; $6357: $ff
	ld   sp, hl                                      ; $6358: $f9
	rst  $38                                         ; $6359: $ff
	ccf                                              ; $635a: $3f
	rst  $38                                         ; $635b: $ff
	push af                                          ; $635c: $f5
	rst  $38                                         ; $635d: $ff
	jp   hl                                          ; $635e: $e9


	rst  $38                                         ; $635f: $ff
	daa                                              ; $6360: $27
	rst  $38                                         ; $6361: $ff
	ei                                               ; $6362: $fb
	ld   b, $81                                      ; $6363: $06 $81
	nop                                              ; $6365: $00
	inc  bc                                          ; $6366: $03
	rst  $38                                         ; $6367: $ff
	inc  bc                                          ; $6368: $03
	rst  $38                                         ; $6369: $ff
	inc  bc                                          ; $636a: $03
	add  c                                           ; $636b: $81
	rst  $38                                         ; $636c: $ff
	nop                                              ; $636d: $00
	inc  bc                                          ; $636e: $03
	add  c                                           ; $636f: $81
	rst  $38                                         ; $6370: $ff
	ld   bc, $181b                                   ; $6371: $01 $1b $18
	add  c                                           ; $6374: $81
	nop                                              ; $6375: $00
	inc  c                                           ; $6376: $0c
	rst  $38                                         ; $6377: $ff
	add  $ff                                         ; $6378: $c6 $ff
	ccf                                              ; $637a: $3f
	rst  $38                                         ; $637b: $ff
	ld   hl, $27ff                                   ; $637c: $21 $ff $27
	rst  $38                                         ; $637f: $ff
	ld   a, c                                        ; $6380: $79
	rst  $38                                         ; $6381: $ff
	cpl                                              ; $6382: $2f
	xor  c                                           ; $6383: $a9
	add  c                                           ; $6384: $81
	nop                                              ; $6385: $00
	dec  b                                           ; $6386: $05
	rst  $38                                         ; $6387: $ff
	ld   a, h                                        ; $6388: $7c
	rst  $38                                         ; $6389: $ff
	di                                               ; $638a: $f3
	rst  $38                                         ; $638b: $ff
	sub  l                                           ; $638c: $95
	add  c                                           ; $638d: $81
	rst  $38                                         ; $638e: $ff
	inc  bc                                          ; $638f: $03
	cp   a                                           ; $6390: $bf
	rst  $38                                         ; $6391: $ff
	push af                                          ; $6392: $f5
	xor  a                                           ; $6393: $af
	add  c                                           ; $6394: $81
	nop                                              ; $6395: $00
	dec  b                                           ; $6396: $05
	rst  $38                                         ; $6397: $ff
	pop  bc                                          ; $6398: $c1
	rst  $38                                         ; $6399: $ff
	scf                                              ; $639a: $37
	rst  $38                                         ; $639b: $ff
	cp   a                                           ; $639c: $bf
	add  c                                           ; $639d: $81
	rst  $38                                         ; $639e: $ff
	inc  bc                                          ; $639f: $03
	pop  af                                          ; $63a0: $f1
	rst  $38                                         ; $63a1: $ff
	cp   e                                           ; $63a2: $bb
	db   $fc                                         ; $63a3: $fc
	add  c                                           ; $63a4: $81
	nop                                              ; $63a5: $00
	inc  c                                           ; $63a6: $0c
	rst  $38                                         ; $63a7: $ff
	adc  c                                           ; $63a8: $89
	rst  $38                                         ; $63a9: $ff
	sub  $ff                                         ; $63aa: $d6 $ff
	ei                                               ; $63ac: $fb
	rst  $38                                         ; $63ad: $ff
	di                                               ; $63ae: $f3
	rst  $38                                         ; $63af: $ff
	push de                                          ; $63b0: $d5
	rst  $38                                         ; $63b1: $ff
	pop  hl                                          ; $63b2: $e1
	ld   h, e                                        ; $63b3: $63
	add  c                                           ; $63b4: $81
	nop                                              ; $63b5: $00
	inc  c                                           ; $63b6: $0c
	rst  $38                                         ; $63b7: $ff
	ccf                                              ; $63b8: $3f
	rst  $38                                         ; $63b9: $ff
	rst  JumpTable                                         ; $63ba: $df
	rst  $38                                         ; $63bb: $ff
	rra                                              ; $63bc: $1f
	rst  $38                                         ; $63bd: $ff
	sbc  a                                           ; $63be: $9f
	rst  $38                                         ; $63bf: $ff
	ld   a, a                                        ; $63c0: $7f
	rst  $38                                         ; $63c1: $ff
	sbc  a                                           ; $63c2: $9f
	add  b                                           ; $63c3: $80
	add  c                                           ; $63c4: $81
	nop                                              ; $63c5: $00
	inc  bc                                          ; $63c6: $03
	rst  $38                                         ; $63c7: $ff
	nop                                              ; $63c8: $00
	rst  $38                                         ; $63c9: $ff
	jp   $ff81                                       ; $63ca: $c3 $81 $ff


jr_017_63cd:
	nop                                              ; $63cd: $00
	jp   $ff81                                       ; $63ce: $c3 $81 $ff


	add  b                                           ; $63d1: $80
	jp   $0081                                       ; $63d2: $c3 $81 $00


	inc  c                                           ; $63d5: $0c
	rst  $38                                         ; $63d6: $ff
	di                                               ; $63d7: $f3
	rst  $38                                         ; $63d8: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $63d9: $cf
	rst  $38                                         ; $63da: $ff
	di                                               ; $63db: $f3
	rst  $38                                         ; $63dc: $ff
	db   $d3                                         ; $63dd: $d3
	rst  $38                                         ; $63de: $ff
	db   $db                                         ; $63df: $db
	rst  $38                                         ; $63e0: $ff
	push hl                                          ; $63e1: $e5
	ld   [hl+], a                                    ; $63e2: $22
	add  c                                           ; $63e3: $81
	nop                                              ; $63e4: $00
	ld   bc, $07ff                                   ; $63e5: $01 $ff $07
	add  c                                           ; $63e8: $81
	rst  $38                                         ; $63e9: $ff
	nop                                              ; $63ea: $00
	sbc  a                                           ; $63eb: $9f
	add  c                                           ; $63ec: $81
	rst  $38                                         ; $63ed: $ff
	nop                                              ; $63ee: $00
	sbc  a                                           ; $63ef: $9f
	add  b                                           ; $63f0: $80
	rst  $38                                         ; $63f1: $ff
	nop                                              ; $63f2: $00
	ld   hl, sp-$7f                                  ; $63f3: $f8 $81
	nop                                              ; $63f5: $00
	inc  c                                           ; $63f6: $0c
	rst  $38                                         ; $63f7: $ff
	call nz, $ebff                                   ; $63f8: $c4 $ff $eb
	rst  $38                                         ; $63fb: $ff
	db   $fd                                         ; $63fc: $fd
	rst  $38                                         ; $63fd: $ff
	ld   sp, hl                                      ; $63fe: $f9
	rst  $38                                         ; $63ff: $ff
	ld   [$f0ff], a                                  ; $6400: $ea $ff $f0
	ld   sp, $0081                                   ; $6403: $31 $81 $00
	inc  c                                           ; $6406: $0c
	rst  $38                                         ; $6407: $ff
	sbc  h                                           ; $6408: $9c
	rst  $38                                         ; $6409: $ff
	ld   l, [hl]                                     ; $640a: $6e
	rst  $38                                         ; $640b: $ff
	adc  [hl]                                        ; $640c: $8e
	rst  $38                                         ; $640d: $ff
	call z, $bdff                                    ; $640e: $cc $ff $bd
	rst  $38                                         ; $6411: $ff
	adc  $c3                                         ; $6412: $ce $c3
	add  c                                           ; $6414: $81
	nop                                              ; $6415: $00
	dec  c                                           ; $6416: $0d
	rst  $38                                         ; $6417: $ff
	inc  bc                                          ; $6418: $03
	rst  $38                                         ; $6419: $ff
	rrca                                             ; $641a: $0f
	rst  $38                                         ; $641b: $ff
	rrca                                             ; $641c: $0f
	rst  $38                                         ; $641d: $ff
	ld   a, a                                        ; $641e: $7f
	rst  $38                                         ; $641f: $ff
	adc  a                                           ; $6420: $8f
	rst  $38                                         ; $6421: $ff
	rrca                                             ; $6422: $0f
	db   $fc                                         ; $6423: $fc
	nop                                              ; $6424: $00
	add  e                                           ; $6425: $83
	rst  $38                                         ; $6426: $ff
	ld   bc, $ff00                                   ; $6427: $01 $00 $ff
	add  b                                           ; $642a: $80
	nop                                              ; $642b: $00
	add  b                                           ; $642c: $80
	ld   a, b                                        ; $642d: $78
	add  b                                           ; $642e: $80
	ld   e, a                                        ; $642f: $5f
	add  b                                           ; $6430: $80
	ld   e, d                                        ; $6431: $5a
	nop                                              ; $6432: $00
	nop                                              ; $6433: $00
	add  e                                           ; $6434: $83
	rst  $38                                         ; $6435: $ff
	ld   bc, $ff00                                   ; $6436: $01 $00 $ff
	add  b                                           ; $6439: $80
	nop                                              ; $643a: $00
	add  b                                           ; $643b: $80
	ldh  a, [$80]                                    ; $643c: $f0 $80
	di                                               ; $643e: $f3
	add  b                                           ; $643f: $80
	and  e                                           ; $6440: $a3
	nop                                              ; $6441: $00
	nop                                              ; $6442: $00
	add  e                                           ; $6443: $83
	rst  $38                                         ; $6444: $ff
	ld   bc, $ff00                                   ; $6445: $01 $00 $ff
	add  b                                           ; $6448: $80
	nop                                              ; $6449: $00
	add  b                                           ; $644a: $80
	jr   jr_017_63cd                                 ; $644b: $18 $80

	rst  $38                                         ; $644d: $ff
	add  c                                           ; $644e: $81
	nop                                              ; $644f: $00
	add  e                                           ; $6450: $83
	rst  $38                                         ; $6451: $ff
	ld   bc, $ff00                                   ; $6452: $01 $00 $ff
	add  b                                           ; $6455: $80
	nop                                              ; $6456: $00
	add  b                                           ; $6457: $80
	ld   b, $80                                      ; $6458: $06 $80
	add  $80                                         ; $645a: $c6 $80
	call z, $0000                                   ; $645c: $cc $00 $00
	add  e                                           ; $645f: $83
	rst  $38                                         ; $6460: $ff
	ld   bc, $ff00                                   ; $6461: $01 $00 $ff
	add  b                                           ; $6464: $80
	nop                                              ; $6465: $00
	add  b                                           ; $6466: $80
	db   $fc                                         ; $6467: $fc
	add  e                                           ; $6468: $83
	nop                                              ; $6469: $00
	add  e                                           ; $646a: $83
	rst  $38                                         ; $646b: $ff
	ld   bc, $ff00                                   ; $646c: $01 $00 $ff
	add  b                                           ; $646f: $80
	nop                                              ; $6470: $00
	add  b                                           ; $6471: $80
	add  hl, sp                                      ; $6472: $39
	add  b                                           ; $6473: $80
	ld   sp, hl                                      ; $6474: $f9
	add  b                                           ; $6475: $80
	daa                                              ; $6476: $27
	nop                                              ; $6477: $00
	nop                                              ; $6478: $00
	add  e                                           ; $6479: $83
	rst  $38                                         ; $647a: $ff
	ld   bc, $ff00                                   ; $647b: $01 $00 $ff
	add  b                                           ; $647e: $80
	nop                                              ; $647f: $00
	add  b                                           ; $6480: $80
	add  e                                           ; $6481: $83
	add  b                                           ; $6482: $80
	adc  a                                           ; $6483: $8f
	add  b                                           ; $6484: $80
	push hl                                          ; $6485: $e5
	nop                                              ; $6486: $00
	nop                                              ; $6487: $00
	add  e                                           ; $6488: $83
	rst  $38                                         ; $6489: $ff
	ld   bc, $ff00                                   ; $648a: $01 $00 $ff
	add  b                                           ; $648d: $80
	nop                                              ; $648e: $00
	add  b                                           ; $648f: $80
	ld   a, $80                                      ; $6490: $3e $80
	or   $80                                         ; $6492: $f6 $80
	or   [hl]                                        ; $6494: $b6
	nop                                              ; $6495: $00
	nop                                              ; $6496: $00
	add  e                                           ; $6497: $83
	rst  $38                                         ; $6498: $ff
	ld   bc, $ff00                                   ; $6499: $01 $00 $ff
	add  b                                           ; $649c: $80
	nop                                              ; $649d: $00
	add  b                                           ; $649e: $80
	halt                                             ; $649f: $76
	add  b                                           ; $64a0: $80
	ld   e, a                                        ; $64a1: $5f
	add  b                                           ; $64a2: $80
	ld   e, e                                        ; $64a3: $5b
	nop                                              ; $64a4: $00
	nop                                              ; $64a5: $00
	add  e                                           ; $64a6: $83
	rst  $38                                         ; $64a7: $ff
	ld   bc, $ff00                                   ; $64a8: $01 $00 $ff
	add  b                                           ; $64ab: $80
	nop                                              ; $64ac: $00
	add  b                                           ; $64ad: $80
	ret  nz                                          ; $64ae: $c0

	add  b                                           ; $64af: $80

jr_017_64b0:
	ldh  [$81], a                                    ; $64b0: $e0 $81
	nop                                              ; $64b2: $00
	add  e                                           ; $64b3: $83
	rst  $38                                         ; $64b4: $ff
	ld   bc, $ff00                                   ; $64b5: $01 $00 $ff
	add  b                                           ; $64b8: $80
	nop                                              ; $64b9: $00
	add  b                                           ; $64ba: $80
	rst  $38                                         ; $64bb: $ff
	add  d                                           ; $64bc: $82
	jp   $0000                                      ; $64bd: $c3 $00 $00


	add  e                                           ; $64c0: $83
	rst  $38                                         ; $64c1: $ff
	ld   bc, $ff00                                   ; $64c2: $01 $00 $ff
	add  b                                           ; $64c5: $80
	nop                                              ; $64c6: $00
	add  b                                           ; $64c7: $80

jr_017_64c8:
	inc  c                                           ; $64c8: $0c
	add  b                                           ; $64c9: $80

jr_017_64ca:
	inc  a                                           ; $64ca: $3c
	add  b                                           ; $64cb: $80
	jr   nc, jr_017_64ce                             ; $64cc: $30 $00

jr_017_64ce:
	nop                                              ; $64ce: $00
	add  e                                           ; $64cf: $83
	rst  $38                                         ; $64d0: $ff
	ld   bc, $ff00                                   ; $64d1: $01 $00 $ff
	add  b                                           ; $64d4: $80
	nop                                              ; $64d5: $00
	add  d                                           ; $64d6: $82
	ld   hl, sp-$80                                  ; $64d7: $f8 $80
	sbc  b                                           ; $64d9: $98
	nop                                              ; $64da: $00
	nop                                              ; $64db: $00
	add  e                                           ; $64dc: $83
	rst  $38                                         ; $64dd: $ff
	ld   bc, $ff00                                   ; $64de: $01 $00 $ff
	add  b                                           ; $64e1: $80
	nop                                              ; $64e2: $00
	add  b                                           ; $64e3: $80
	dec  sp                                          ; $64e4: $3b
	add  b                                           ; $64e5: $80
	cpl                                              ; $64e6: $2f
	add  b                                           ; $64e7: $80
	dec  l                                           ; $64e8: $2d
	nop                                              ; $64e9: $00
	nop                                              ; $64ea: $00
	add  e                                           ; $64eb: $83
	rst  $38                                         ; $64ec: $ff
	ld   bc, $ff00                                   ; $64ed: $01 $00 $ff
	add  b                                           ; $64f0: $80
	nop                                              ; $64f1: $00
	add  b                                           ; $64f2: $80
	ld   h, e                                        ; $64f3: $63
	add  b                                           ; $64f4: $80
	ldh  a, [c]                                      ; $64f5: $f2
	add  b                                           ; $64f6: $80
	add  e                                           ; $64f7: $83
	nop                                              ; $64f8: $00
	nop                                              ; $64f9: $00
	add  e                                           ; $64fa: $83
	rst  $38                                         ; $64fb: $ff
	ld   bc, $ff00                                   ; $64fc: $01 $00 $ff
	add  b                                           ; $64ff: $80
	nop                                              ; $6500: $00
	add  b                                           ; $6501: $80
	db   $fc                                         ; $6502: $fc
	add  b                                           ; $6503: $80
	inc  c                                           ; $6504: $0c
	add  b                                           ; $6505: $80
	db   $fc                                         ; $6506: $fc
	add  b                                           ; $6507: $80
	rst  $38                                         ; $6508: $ff
	add  b                                           ; $6509: $80
	ld   e, b                                        ; $650a: $58
	add  b                                           ; $650b: $80
	ld   a, d                                        ; $650c: $7a
	add  b                                           ; $650d: $80
	ld   h, d                                        ; $650e: $62
	add  b                                           ; $650f: $80
	ld   l, d                                        ; $6510: $6a
	add  b                                           ; $6511: $80
	ld   l, a                                        ; $6512: $6f
	add  b                                           ; $6513: $80
	ld   l, l                                        ; $6514: $6d
	add  b                                           ; $6515: $80
	nop                                              ; $6516: $00
	add  b                                           ; $6517: $80
	rst  $38                                         ; $6518: $ff
	add  b                                           ; $6519: $80
	add  e                                           ; $651a: $83
	add  b                                           ; $651b: $80
	pop  de                                          ; $651c: $d1
	add  b                                           ; $651d: $80
	ret  nc                                          ; $651e: $d0

	add  b                                           ; $651f: $80
	ld   hl, $f182                                   ; $6520: $21 $82 $f1
	add  b                                           ; $6523: $80
	nop                                              ; $6524: $00
	add  b                                           ; $6525: $80
	rst  $38                                         ; $6526: $ff
	add  b                                           ; $6527: $80
	ld   a, a                                        ; $6528: $7f
	add  b                                           ; $6529: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $652a: $cf
	add  b                                           ; $652b: $80
	jr   jr_017_64b0                                 ; $652c: $18 $82

	sbc  c                                           ; $652e: $99
	add  b                                           ; $652f: $80
	rst  $38                                         ; $6530: $ff
	add  b                                           ; $6531: $80
	nop                                              ; $6532: $00
	add  b                                           ; $6533: $80
	rst  $38                                         ; $6534: $ff
	add  b                                           ; $6535: $80
	sbc  [hl]                                        ; $6536: $9e
	add  b                                           ; $6537: $80
	add  [hl]                                        ; $6538: $86
	add  b                                           ; $6539: $80
	ld   b, $84                                      ; $653a: $06 $84
	add  [hl]                                        ; $653c: $86
	add  b                                           ; $653d: $80
	nop                                              ; $653e: $00
	add  b                                           ; $653f: $80
	rst  $38                                         ; $6540: $ff
	add  h                                           ; $6541: $84

jr_017_6542:
	jr   @-$7e                                       ; $6542: $18 $80

	ld   e, b                                        ; $6544: $58
	add  b                                           ; $6545: $80
	jr   c, jr_017_64c8                              ; $6546: $38 $80

	jr   jr_017_64ca                                 ; $6548: $18 $80

	nop                                              ; $654a: $00
	add  b                                           ; $654b: $80
	rst  $38                                         ; $654c: $ff
	add  b                                           ; $654d: $80
	xor  c                                           ; $654e: $a9
	add  d                                           ; $654f: $82
	ld   sp, hl                                      ; $6550: $f9
	add  b                                           ; $6551: $80
	ld   hl, $f980                                   ; $6552: $21 $80 $f9
	add  b                                           ; $6555: $80
	ld   a, [$0080]                                  ; $6556: $fa $80 $00
	add  b                                           ; $6559: $80
	rst  $38                                         ; $655a: $ff
	add  d                                           ; $655b: $82
	and  a                                           ; $655c: $a7
	add  b                                           ; $655d: $80
	and  l                                           ; $655e: $a5
	add  b                                           ; $655f: $80
	dec  h                                           ; $6560: $25
	add  b                                           ; $6561: $80
	ld   h, l                                        ; $6562: $65
	add  b                                           ; $6563: $80
	daa                                              ; $6564: $27
	add  b                                           ; $6565: $80
	nop                                              ; $6566: $00
	add  b                                           ; $6567: $80
	rst  $38                                         ; $6568: $ff
	add  b                                           ; $6569: $80
	or   [hl]                                        ; $656a: $b6
	add  b                                           ; $656b: $80
	cp   [hl]                                        ; $656c: $be
	add  [hl]                                        ; $656d: $86
	or   b                                           ; $656e: $b0
	add  b                                           ; $656f: $80
	nop                                              ; $6570: $00
	add  b                                           ; $6571: $80
	rst  $38                                         ; $6572: $ff
	add  b                                           ; $6573: $80
	ld   e, l                                        ; $6574: $5d
	add  b                                           ; $6575: $80
	ld   [hl], e                                     ; $6576: $73
	add  b                                           ; $6577: $80
	ld   h, a                                        ; $6578: $67
	add  b                                           ; $6579: $80
	ld   l, l                                        ; $657a: $6d
	add  b                                           ; $657b: $80
	ld   h, c                                        ; $657c: $61
	add  b                                           ; $657d: $80
	ld   h, e                                        ; $657e: $63
	add  b                                           ; $657f: $80
	nop                                              ; $6580: $00
	add  b                                           ; $6581: $80
	rst  $38                                         ; $6582: $ff
	add  b                                           ; $6583: $80
	ret  nz                                          ; $6584: $c0

	add  h                                           ; $6585: $84
	and  b                                           ; $6586: $a0
	add  b                                           ; $6587: $80
	add  b                                           ; $6588: $80
	add  b                                           ; $6589: $80
	add  c                                           ; $658a: $81
	add  b                                           ; $658b: $80
	nop                                              ; $658c: $00
	add  d                                           ; $658d: $82
	rst  $38                                         ; $658e: $ff
	add  d                                           ; $658f: $82
	jp   $cf80                                       ; $6590: $c3 $80 $cf


	add  b                                           ; $6593: $80
	add  a                                           ; $6594: $87
	add  b                                           ; $6595: $80
	inc  bc                                          ; $6596: $03
	add  b                                           ; $6597: $80
	nop                                              ; $6598: $00
	add  b                                           ; $6599: $80
	rst  $38                                         ; $659a: $ff
	add  b                                           ; $659b: $80
	ld   a, $80                                      ; $659c: $3e $80
	ld   a, [bc]                                     ; $659e: $0a
	add  b                                           ; $659f: $80
	jr   c, @-$7e                                    ; $65a0: $38 $80

	ld   a, [hl-]                                    ; $65a2: $3a
	add  b                                           ; $65a3: $80
	ld   a, [hl+]                                    ; $65a4: $2a
	add  b                                           ; $65a5: $80
	dec  hl                                          ; $65a6: $2b
	add  b                                           ; $65a7: $80
	nop                                              ; $65a8: $00
	add  b                                           ; $65a9: $80
	rst  $38                                         ; $65aa: $ff
	add  b                                           ; $65ab: $80
	sbc  b                                           ; $65ac: $98
	add  b                                           ; $65ad: $80
	ld   hl, sp-$7c                                  ; $65ae: $f8 $84
	sbc  b                                           ; $65b0: $98
	add  b                                           ; $65b1: $80
	db   $fc                                         ; $65b2: $fc
	add  b                                           ; $65b3: $80
	nop                                              ; $65b4: $00
	add  b                                           ; $65b5: $80
	rst  $38                                         ; $65b6: $ff
	add  b                                           ; $65b7: $80
	ld   l, $80                                      ; $65b8: $2e $80
	add  hl, sp                                      ; $65ba: $39
	add  b                                           ; $65bb: $80
	inc  sp                                          ; $65bc: $33
	add  b                                           ; $65bd: $80
	ld   [hl], $80                                   ; $65be: $36 $80
	jr   nc, jr_017_6542                             ; $65c0: $30 $80

	ld   sp, $0080                                   ; $65c2: $31 $80 $00
	add  b                                           ; $65c5: $80
	rst  $38                                         ; $65c6: $ff
	add  b                                           ; $65c7: $80
	db   $e3                                         ; $65c8: $e3
	add  b                                           ; $65c9: $80
	jp   nc, $d380                                   ; $65ca: $d2 $80 $d3

	add  b                                           ; $65cd: $80
	jp   nc, $c180                                   ; $65ce: $d2 $80 $c1

	add  b                                           ; $65d1: $80
	jp   $0080                                       ; $65d2: $c3 $80 $00


	add  b                                           ; $65d5: $80
	rst  $38                                         ; $65d6: $ff
	add  b                                           ; $65d7: $80
	db   $fc                                         ; $65d8: $fc
	add  b                                           ; $65d9: $80
	inc  c                                           ; $65da: $0c
	add  b                                           ; $65db: $80
	db   $fc                                         ; $65dc: $fc
	add  b                                           ; $65dd: $80
	inc  b                                           ; $65de: $04
	add  b                                           ; $65df: $80
	sbc  b                                           ; $65e0: $98
	add  b                                           ; $65e1: $80
	adc  h                                           ; $65e2: $8c
	add  b                                           ; $65e3: $80
	nop                                              ; $65e4: $00
	db   $ec                                         ; $65e5: $ec
	ld   bc, $ff82                                   ; $65e6: $01 $82 $ff
	inc  c                                           ; $65e9: $0c
	rst  $28                                         ; $65ea: $ef
	rst  $38                                         ; $65eb: $ff
	sub  d                                           ; $65ec: $92
	rst  $38                                         ; $65ed: $ff
	db   $fd                                         ; $65ee: $fd
	rst  $38                                         ; $65ef: $ff
	sub  d                                           ; $65f0: $92
	rst  $38                                         ; $65f1: $ff
	sub  d                                           ; $65f2: $92
	rst  $38                                         ; $65f3: $ff
	ld   a, a                                        ; $65f4: $7f
	rst  $38                                         ; $65f5: $ff
	nop                                              ; $65f6: $00
	add  c                                           ; $65f7: $81
	rst  $38                                         ; $65f8: $ff
	inc  c                                           ; $65f9: $0c
	ld   a, h                                        ; $65fa: $7c
	rst  $38                                         ; $65fb: $ff
	cp   a                                           ; $65fc: $bf
	rst  $38                                         ; $65fd: $ff
	ld   e, l                                        ; $65fe: $5d
	rst  $38                                         ; $65ff: $ff
	xor  [hl]                                        ; $6600: $ae
	rst  $38                                         ; $6601: $ff
	inc  a                                           ; $6602: $3c
	rst  $38                                         ; $6603: $ff
	di                                               ; $6604: $f3
	rst  $38                                         ; $6605: $ff
	nop                                              ; $6606: $00
	add  c                                           ; $6607: $81
	rst  $38                                         ; $6608: $ff
	nop                                              ; $6609: $00
	ret                                              ; $660a: $c9


	add  c                                           ; $660b: $81
	rst  $38                                         ; $660c: $ff
	ld   [$ffb6], sp                                 ; $660d: $08 $b6 $ff
	sbc  b                                           ; $6610: $98
	rst  $38                                         ; $6611: $ff
	ld   a, a                                        ; $6612: $7f
	rst  $38                                         ; $6613: $ff
	sbc  b                                           ; $6614: $98
	rst  $38                                         ; $6615: $ff
	nop                                              ; $6616: $00
	add  c                                           ; $6617: $81
	rst  $38                                         ; $6618: $ff
	ld   [bc], a                                     ; $6619: $02
	db   $fc                                         ; $661a: $fc
	rst  $38                                         ; $661b: $ff
	jp   $ff81                                       ; $661c: $c3 $81 $ff


	nop                                              ; $661f: $00
	db   $ed                                         ; $6620: $ed
	add  c                                           ; $6621: $81
	rst  $38                                         ; $6622: $ff
	ld   [bc], a                                     ; $6623: $02
	dec  l                                           ; $6624: $2d
	rst  $38                                         ; $6625: $ff
	nop                                              ; $6626: $00
	add  c                                           ; $6627: $81
	rst  $38                                         ; $6628: $ff
	ld   b, $fc                                      ; $6629: $06 $fc
	rst  $38                                         ; $662b: $ff
	rrca                                             ; $662c: $0f
	rst  $38                                         ; $662d: $ff
	ei                                               ; $662e: $fb
	rst  $38                                         ; $662f: $ff
	sbc  e                                           ; $6630: $9b
	add  c                                           ; $6631: $81
	rst  $38                                         ; $6632: $ff
	ld   [bc], a                                     ; $6633: $02
	sub  e                                           ; $6634: $93
	rst  $38                                         ; $6635: $ff
	nop                                              ; $6636: $00
	add  c                                           ; $6637: $81
	rst  $38                                         ; $6638: $ff
	inc  c                                           ; $6639: $0c
	adc  h                                           ; $663a: $8c
	rst  $38                                         ; $663b: $ff
	di                                               ; $663c: $f3
	rst  $38                                         ; $663d: $ff
	ld   [hl-], a                                    ; $663e: $32
	rst  $38                                         ; $663f: $ff
	ld   a, a                                        ; $6640: $7f
	rst  $38                                         ; $6641: $ff
	and  d                                           ; $6642: $a2
	rst  $38                                         ; $6643: $ff
	ld   l, a                                        ; $6644: $6f
	rst  $38                                         ; $6645: $ff
	nop                                              ; $6646: $00
	add  c                                           ; $6647: $81
	rst  $38                                         ; $6648: $ff
	inc  b                                           ; $6649: $04
	di                                               ; $664a: $f3
	rst  $38                                         ; $664b: $ff
	call z, $d6ff                                    ; $664c: $cc $ff $d6
	add  e                                           ; $664f: $83
	rst  $38                                         ; $6650: $ff
	ld   [bc], a                                     ; $6651: $02
	ld   d, $ff                                      ; $6652: $16 $ff
	nop                                              ; $6654: $00
	add  c                                           ; $6655: $81
	rst  $38                                         ; $6656: $ff
	ld   [bc], a                                     ; $6657: $02
	ld   b, $ff                                      ; $6658: $06 $ff
	rst  JumpTable                                         ; $665a: $df
	add  e                                           ; $665b: $83
	rst  $38                                         ; $665c: $ff
	inc  b                                           ; $665d: $04
	rst  ToBoot                                         ; $665e: $c7
	rst  $38                                         ; $665f: $ff
	pop  hl                                          ; $6660: $e1
	rst  $38                                         ; $6661: $ff
	nop                                              ; $6662: $00
	add  c                                           ; $6663: $81
	rst  $38                                         ; $6664: $ff
	inc  c                                           ; $6665: $0c
	inc  h                                           ; $6666: $24
	rst  $38                                         ; $6667: $ff
	ld   e, e                                        ; $6668: $5b
	rst  $38                                         ; $6669: $ff
	db   $ec                                         ; $666a: $ec
	rst  $38                                         ; $666b: $ff
	adc  $ff                                         ; $666c: $ce $ff
	ld   d, l                                        ; $666e: $55
	rst  $38                                         ; $666f: $ff
	rst  $30                                         ; $6670: $f7
	rst  $38                                         ; $6671: $ff
	nop                                              ; $6672: $00
	add  c                                           ; $6673: $81
	rst  $38                                         ; $6674: $ff
	inc  c                                           ; $6675: $0c
	db   $fc                                         ; $6676: $fc
	rst  $38                                         ; $6677: $ff
	ld   a, [hl]                                     ; $6678: $7e
	rst  $38                                         ; $6679: $ff
	ld   a, a                                        ; $667a: $7f
	rst  $38                                         ; $667b: $ff
	ld   a, [hl]                                     ; $667c: $7e
	rst  $38                                         ; $667d: $ff
	cp   $ff                                         ; $667e: $fe $ff
	add  d                                           ; $6680: $82
	rst  $38                                         ; $6681: $ff
	nop                                              ; $6682: $00
	add  c                                           ; $6683: $81
	rst  $38                                         ; $6684: $ff
	inc  c                                           ; $6685: $0c
	ld   bc, $07ff                                   ; $6686: $01 $ff $07
	rst  $38                                         ; $6689: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $668a: $cf
	rst  $38                                         ; $668b: $ff
	ccf                                              ; $668c: $3f
	rst  $38                                         ; $668d: $ff
	ld   c, a                                        ; $668e: $4f
	rst  $38                                         ; $668f: $ff
	ld   b, [hl]                                     ; $6690: $46
	rst  $38                                         ; $6691: $ff
	nop                                              ; $6692: $00
	add  c                                           ; $6693: $81
	rst  $38                                         ; $6694: $ff
	inc  c                                           ; $6695: $0c
	di                                               ; $6696: $f3
	rst  $38                                         ; $6697: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6698: $cf
	rst  $38                                         ; $6699: $ff
	di                                               ; $669a: $f3
	rst  $38                                         ; $669b: $ff
	db   $d3                                         ; $669c: $d3
	rst  $38                                         ; $669d: $ff
	db   $db                                         ; $669e: $db
	rst  $38                                         ; $669f: $ff
	jr   c, @+$01                                    ; $66a0: $38 $ff

	nop                                              ; $66a2: $00
	add  c                                           ; $66a3: $81
	rst  $38                                         ; $66a4: $ff
	nop                                              ; $66a5: $00
	rlca                                             ; $66a6: $07
	add  c                                           ; $66a7: $81
	rst  $38                                         ; $66a8: $ff
	nop                                              ; $66a9: $00
	sbc  a                                           ; $66aa: $9f
	add  c                                           ; $66ab: $81
	rst  $38                                         ; $66ac: $ff
	inc  b                                           ; $66ad: $04
	sbc  a                                           ; $66ae: $9f
	rst  $38                                         ; $66af: $ff
	ld   hl, sp-$01                                  ; $66b0: $f8 $ff
	nop                                              ; $66b2: $00
	add  c                                           ; $66b3: $81
	rst  $38                                         ; $66b4: $ff
	inc  c                                           ; $66b5: $0c
	call nz, $ebff                                   ; $66b6: $c4 $ff $eb
	rst  $38                                         ; $66b9: $ff
	db   $fd                                         ; $66ba: $fd
	rst  $38                                         ; $66bb: $ff
	ld   sp, hl                                      ; $66bc: $f9
	rst  $38                                         ; $66bd: $ff
	ld   [$3eff], a                                  ; $66be: $ea $ff $3e
	rst  $38                                         ; $66c1: $ff
	nop                                              ; $66c2: $00
	add  c                                           ; $66c3: $81
	rst  $38                                         ; $66c4: $ff
	inc  c                                           ; $66c5: $0c
	sbc  h                                           ; $66c6: $9c
	rst  $38                                         ; $66c7: $ff
	ld   l, [hl]                                     ; $66c8: $6e
	rst  $38                                         ; $66c9: $ff
	adc  [hl]                                        ; $66ca: $8e
	rst  $38                                         ; $66cb: $ff
	call z, $bdff                                    ; $66cc: $cc $ff $bd
	rst  $38                                         ; $66cf: $ff
	ldh  a, [c]                                      ; $66d0: $f2
	rst  $38                                         ; $66d1: $ff
	nop                                              ; $66d2: $00
	add  c                                           ; $66d3: $81
	rst  $38                                         ; $66d4: $ff
	inc  c                                           ; $66d5: $0c
	inc  bc                                          ; $66d6: $03
	rst  $38                                         ; $66d7: $ff
	rrca                                             ; $66d8: $0f
	rst  $38                                         ; $66d9: $ff
	rrca                                             ; $66da: $0f
	rst  $38                                         ; $66db: $ff
	ld   a, a                                        ; $66dc: $7f
	rst  $38                                         ; $66dd: $ff
	adc  a                                           ; $66de: $8f
	rst  $38                                         ; $66df: $ff
	inc  c                                           ; $66e0: $0c
	rst  $38                                         ; $66e1: $ff
	nop                                              ; $66e2: $00
	add  c                                           ; $66e3: $81
	rst  $38                                         ; $66e4: $ff
	inc  c                                           ; $66e5: $0c
	rst  $28                                         ; $66e6: $ef
	rst  $38                                         ; $66e7: $ff
	sub  d                                           ; $66e8: $92
	rst  $38                                         ; $66e9: $ff
	db   $fd                                         ; $66ea: $fd
	rst  $38                                         ; $66eb: $ff
	sub  d                                           ; $66ec: $92
	rst  $38                                         ; $66ed: $ff
	sub  d                                           ; $66ee: $92
	rst  $38                                         ; $66ef: $ff
	call nc, $0054                                   ; $66f0: $d4 $54 $00
	add  c                                           ; $66f3: $81
	rst  $38                                         ; $66f4: $ff
	inc  c                                           ; $66f5: $0c
	ld   a, h                                        ; $66f6: $7c
	rst  $38                                         ; $66f7: $ff
	cp   a                                           ; $66f8: $bf
	rst  $38                                         ; $66f9: $ff
	ld   e, l                                        ; $66fa: $5d
	rst  $38                                         ; $66fb: $ff
	xor  [hl]                                        ; $66fc: $ae
	rst  $38                                         ; $66fd: $ff
	inc  a                                           ; $66fe: $3c
	rst  $38                                         ; $66ff: $ff
	dec  c                                           ; $6700: $0d
	ld   bc, $8100                                   ; $6701: $01 $00 $81
	rst  $38                                         ; $6704: $ff
	nop                                              ; $6705: $00
	ret                                              ; $6706: $c9


	add  c                                           ; $6707: $81
	rst  $38                                         ; $6708: $ff
	ld   [$ffb6], sp                                 ; $6709: $08 $b6 $ff
	sbc  b                                           ; $670c: $98
	rst  $38                                         ; $670d: $ff
	ld   a, a                                        ; $670e: $7f
	rst  $38                                         ; $670f: $ff
	sbc  b                                           ; $6710: $98
	rst  $38                                         ; $6711: $ff
	nop                                              ; $6712: $00
	add  c                                           ; $6713: $81
	rst  $38                                         ; $6714: $ff
	ld   [bc], a                                     ; $6715: $02
	db   $fc                                         ; $6716: $fc
	rst  $38                                         ; $6717: $ff
	jp   $ff81                                       ; $6718: $c3 $81 $ff


	nop                                              ; $671b: $00
	db   $ed                                         ; $671c: $ed
	add  c                                           ; $671d: $81
	rst  $38                                         ; $671e: $ff
	ld   [bc], a                                     ; $671f: $02
	rr   c                                           ; $6720: $cb $19
	nop                                              ; $6722: $00
	add  c                                           ; $6723: $81
	rst  $38                                         ; $6724: $ff
	ld   b, $fc                                      ; $6725: $06 $fc
	rst  $38                                         ; $6727: $ff
	rrca                                             ; $6728: $0f
	rst  $38                                         ; $6729: $ff
	ei                                               ; $672a: $fb
	rst  $38                                         ; $672b: $ff
	sbc  e                                           ; $672c: $9b
	add  c                                           ; $672d: $81
	rst  $38                                         ; $672e: $ff
	ld   [bc], a                                     ; $672f: $02
	adc  a                                           ; $6730: $8f
	db   $e3                                         ; $6731: $e3
	nop                                              ; $6732: $00
	add  c                                           ; $6733: $81
	rst  $38                                         ; $6734: $ff
	inc  c                                           ; $6735: $0c
	adc  h                                           ; $6736: $8c
	rst  $38                                         ; $6737: $ff
	di                                               ; $6738: $f3
	rst  $38                                         ; $6739: $ff
	ld   [hl-], a                                    ; $673a: $32
	rst  $38                                         ; $673b: $ff
	ld   a, a                                        ; $673c: $7f
	rst  $38                                         ; $673d: $ff
	and  d                                           ; $673e: $a2
	rst  $38                                         ; $673f: $ff
	adc  a                                           ; $6740: $8f
	rra                                              ; $6741: $1f
	nop                                              ; $6742: $00
	add  c                                           ; $6743: $81
	rst  $38                                         ; $6744: $ff
	inc  b                                           ; $6745: $04
	di                                               ; $6746: $f3
	rst  $38                                         ; $6747: $ff
	call z, $d6ff                                    ; $6748: $cc $ff $d6
	add  e                                           ; $674b: $83
	rst  $38                                         ; $674c: $ff
	ld   [bc], a                                     ; $674d: $02
	sub  $3f                                         ; $674e: $d6 $3f
	nop                                              ; $6750: $00
	add  c                                           ; $6751: $81
	rst  $38                                         ; $6752: $ff
	ld   [bc], a                                     ; $6753: $02
	ld   b, $ff                                      ; $6754: $06 $ff
	rst  JumpTable                                         ; $6756: $df
	add  e                                           ; $6757: $83
	rst  $38                                         ; $6758: $ff
	inc  b                                           ; $6759: $04
	rst  ToBoot                                         ; $675a: $c7
	rst  $38                                         ; $675b: $ff
	rst  $28                                         ; $675c: $ef
	pop  af                                          ; $675d: $f1
	nop                                              ; $675e: $00
	add  c                                           ; $675f: $81
	rst  $38                                         ; $6760: $ff
	inc  c                                           ; $6761: $0c
	inc  h                                           ; $6762: $24
	rst  $38                                         ; $6763: $ff
	ld   e, e                                        ; $6764: $5b
	rst  $38                                         ; $6765: $ff
	db   $ec                                         ; $6766: $ec
	rst  $38                                         ; $6767: $ff
	adc  $ff                                         ; $6768: $ce $ff
	ld   d, l                                        ; $676a: $55
	rst  $38                                         ; $676b: $ff
	add  [hl]                                        ; $676c: $86
	adc  [hl]                                        ; $676d: $8e
	nop                                              ; $676e: $00
	add  c                                           ; $676f: $81
	rst  $38                                         ; $6770: $ff
	inc  c                                           ; $6771: $0c
	db   $fc                                         ; $6772: $fc
	rst  $38                                         ; $6773: $ff
	ld   a, [hl]                                     ; $6774: $7e
	rst  $38                                         ; $6775: $ff
	ld   a, a                                        ; $6776: $7f
	rst  $38                                         ; $6777: $ff
	ld   a, [hl]                                     ; $6778: $7e
	rst  $38                                         ; $6779: $ff
	cp   $ff                                         ; $677a: $fe $ff
	ld   a, [hl]                                     ; $677c: $7e
	inc  bc                                          ; $677d: $03
	nop                                              ; $677e: $00
	add  c                                           ; $677f: $81
	rst  $38                                         ; $6780: $ff
	inc  c                                           ; $6781: $0c
	ld   bc, $07ff                                   ; $6782: $01 $ff $07
	rst  $38                                         ; $6785: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6786: $cf
	rst  $38                                         ; $6787: $ff
	ccf                                              ; $6788: $3f
	rst  $38                                         ; $6789: $ff
	ld   c, a                                        ; $678a: $4f
	rst  $38                                         ; $678b: $ff
	ld   c, a                                        ; $678c: $4f
	or   $00                                         ; $678d: $f6 $00
	add  c                                           ; $678f: $81
	rst  $38                                         ; $6790: $ff
	inc  c                                           ; $6791: $0c
	di                                               ; $6792: $f3
	rst  $38                                         ; $6793: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6794: $cf
	rst  $38                                         ; $6795: $ff
	di                                               ; $6796: $f3
	rst  $38                                         ; $6797: $ff
	db   $d3                                         ; $6798: $d3
	rst  $38                                         ; $6799: $ff
	db   $db                                         ; $679a: $db
	rst  $38                                         ; $679b: $ff
	push hl                                          ; $679c: $e5
	ld   [hl+], a                                    ; $679d: $22
	nop                                              ; $679e: $00
	add  c                                           ; $679f: $81
	rst  $38                                         ; $67a0: $ff
	nop                                              ; $67a1: $00
	rlca                                             ; $67a2: $07
	add  c                                           ; $67a3: $81
	rst  $38                                         ; $67a4: $ff
	nop                                              ; $67a5: $00
	sbc  a                                           ; $67a6: $9f
	add  c                                           ; $67a7: $81
	rst  $38                                         ; $67a8: $ff
	nop                                              ; $67a9: $00
	sbc  a                                           ; $67aa: $9f
	add  b                                           ; $67ab: $80
	rst  $38                                         ; $67ac: $ff
	ld   bc, $00f8                                   ; $67ad: $01 $f8 $00
	add  c                                           ; $67b0: $81
	rst  $38                                         ; $67b1: $ff
	inc  c                                           ; $67b2: $0c
	call nz, $ebff                                   ; $67b3: $c4 $ff $eb
	rst  $38                                         ; $67b6: $ff
	db   $fd                                         ; $67b7: $fd
	rst  $38                                         ; $67b8: $ff
	ld   sp, hl                                      ; $67b9: $f9
	rst  $38                                         ; $67ba: $ff
	ld   [$f0ff], a                                  ; $67bb: $ea $ff $f0
	ld   sp, $8100                                   ; $67be: $31 $00 $81
	rst  $38                                         ; $67c1: $ff
	inc  c                                           ; $67c2: $0c
	sbc  h                                           ; $67c3: $9c
	rst  $38                                         ; $67c4: $ff
	ld   l, [hl]                                     ; $67c5: $6e
	rst  $38                                         ; $67c6: $ff
	adc  [hl]                                        ; $67c7: $8e
	rst  $38                                         ; $67c8: $ff
	call z, $bdff                                    ; $67c9: $cc $ff $bd
	rst  $38                                         ; $67cc: $ff
	adc  $c3                                         ; $67cd: $ce $c3
	nop                                              ; $67cf: $00
	add  c                                           ; $67d0: $81
	rst  $38                                         ; $67d1: $ff
	ld   de, $ff03                                   ; $67d2: $11 $03 $ff
	rrca                                             ; $67d5: $0f
	rst  $38                                         ; $67d6: $ff
	rrca                                             ; $67d7: $0f
	rst  $38                                         ; $67d8: $ff
	ld   a, a                                        ; $67d9: $7f
	rst  $38                                         ; $67da: $ff
	adc  a                                           ; $67db: $8f
	rst  $38                                         ; $67dc: $ff
	rrca                                             ; $67dd: $0f
	db   $fc                                         ; $67de: $fc
	ld   a, a                                        ; $67df: $7f
	rst  $38                                         ; $67e0: $ff
	rst  $10                                         ; $67e1: $d7
	rst  $38                                         ; $67e2: $ff
	ld   d, a                                        ; $67e3: $57
	rst  $38                                         ; $67e4: $ff
	adc  b                                           ; $67e5: $88
	nop                                              ; $67e6: $00
	dec  b                                           ; $67e7: $05
	or   c                                           ; $67e8: $b1
	rst  $38                                         ; $67e9: $ff
	db   $fd                                         ; $67ea: $fd
	rst  $38                                         ; $67eb: $ff
	or   e                                           ; $67ec: $b3
	rst  $38                                         ; $67ed: $ff
	adc  b                                           ; $67ee: $88
	nop                                              ; $67ef: $00
	dec  b                                           ; $67f0: $05
	sbc  b                                           ; $67f1: $98
	rst  $38                                         ; $67f2: $ff
	ld   a, e                                        ; $67f3: $7b
	rst  $38                                         ; $67f4: $ff
	inc  e                                           ; $67f5: $1c
	rst  $38                                         ; $67f6: $ff
	adc  c                                           ; $67f7: $89
	nop                                              ; $67f8: $00
	inc  b                                           ; $67f9: $04
	rst  $38                                         ; $67fa: $ff
	ldh  [rIE], a                                    ; $67fb: $e0 $ff
	rra                                              ; $67fd: $1f
	rst  $38                                         ; $67fe: $ff

Call_017_67ff:
	adc  b                                           ; $67ff: $88
	nop                                              ; $6800: $00
	dec  b                                           ; $6801: $05
	inc  bc                                          ; $6802: $03
	rst  $38                                         ; $6803: $ff
	rra                                              ; $6804: $1f
	rst  $38                                         ; $6805: $ff
	db   $e3                                         ; $6806: $e3
	rst  $38                                         ; $6807: $ff
	adc  b                                           ; $6808: $88
	nop                                              ; $6809: $00
	dec  b                                           ; $680a: $05
	ld   [de], a                                     ; $680b: $12
	rst  $38                                         ; $680c: $ff
	cp   a                                           ; $680d: $bf
	rst  $38                                         ; $680e: $ff
	ld   d, d                                        ; $680f: $52
	rst  $38                                         ; $6810: $ff
	adc  c                                           ; $6811: $89
	nop                                              ; $6812: $00
	inc  b                                           ; $6813: $04
	rst  $38                                         ; $6814: $ff
	pop  hl                                          ; $6815: $e1
	rst  $38                                         ; $6816: $ff
	ld   e, $ff                                      ; $6817: $1e $ff
	adc  b                                           ; $6819: $88
	nop                                              ; $681a: $00
	nop                                              ; $681b: $00
	reti                                             ; $681c: $d9


	add  c                                           ; $681d: $81
	rst  $38                                         ; $681e: $ff
	ld   bc, $ffd9                                   ; $681f: $01 $d9 $ff
	adc  b                                           ; $6822: $88
	nop                                              ; $6823: $00
	dec  b                                           ; $6824: $05
	ld   e, [hl]                                     ; $6825: $5e
	rst  $38                                         ; $6826: $ff
	sub  $ff                                         ; $6827: $d6 $ff
	ld   [hl], a                                     ; $6829: $77
	rst  $38                                         ; $682a: $ff
	adc  b                                           ; $682b: $88
	nop                                              ; $682c: $00
	nop                                              ; $682d: $00
	inc  bc                                          ; $682e: $03
	add  c                                           ; $682f: $81
	rst  $38                                         ; $6830: $ff
	ld   bc, $ff03                                   ; $6831: $01 $03 $ff
	adc  b                                           ; $6834: $88
	nop                                              ; $6835: $00
	dec  b                                           ; $6836: $05
	ld   d, [hl]                                     ; $6837: $56
	rst  $38                                         ; $6838: $ff
	ld   e, a                                        ; $6839: $5f
	rst  $38                                         ; $683a: $ff
	or   $ff                                         ; $683b: $f6 $ff
	adc  b                                           ; $683d: $88
	nop                                              ; $683e: $00
	nop                                              ; $683f: $00
	ld   a, $81                                      ; $6840: $3e $81
	rst  $38                                         ; $6842: $ff
	ld   bc, $ff3e                                   ; $6843: $01 $3e $ff
	adc  b                                           ; $6846: $88
	nop                                              ; $6847: $00
	nop                                              ; $6848: $00
	sbc  b                                           ; $6849: $98
	add  c                                           ; $684a: $81
	rst  $38                                         ; $684b: $ff
	ld   bc, $ff98                                   ; $684c: $01 $98 $ff
	adc  b                                           ; $684f: $88
	nop                                              ; $6850: $00
	dec  b                                           ; $6851: $05
	dec  hl                                          ; $6852: $2b
	rst  $38                                         ; $6853: $ff
	ld   a, [$2eff]                                  ; $6854: $fa $ff $2e
	rst  $38                                         ; $6857: $ff
	adc  b                                           ; $6858: $88
	nop                                              ; $6859: $00
	dec  b                                           ; $685a: $05
	jp   nz, $deff                                   ; $685b: $c2 $ff $de

	rst  $38                                         ; $685e: $ff
	db   $e3                                         ; $685f: $e3
	rst  $38                                         ; $6860: $ff
	adc  b                                           ; $6861: $88
	nop                                              ; $6862: $00
	dec  b                                           ; $6863: $05
	inc  c                                           ; $6864: $0c
	rst  $38                                         ; $6865: $ff
	rrca                                             ; $6866: $0f
	rst  $38                                         ; $6867: $ff
	db   $fc                                         ; $6868: $fc
	rst  $38                                         ; $6869: $ff
	adc  c                                           ; $686a: $89
	nop                                              ; $686b: $00
	add  c                                           ; $686c: $81
	rst  $38                                         ; $686d: $ff
	inc  c                                           ; $686e: $0c
	rst  $28                                         ; $686f: $ef
	rst  $38                                         ; $6870: $ff
	sub  d                                           ; $6871: $92
	rst  $38                                         ; $6872: $ff
	db   $fd                                         ; $6873: $fd
	rst  $38                                         ; $6874: $ff
	sub  d                                           ; $6875: $92
	rst  $38                                         ; $6876: $ff
	sub  d                                           ; $6877: $92
	rst  $38                                         ; $6878: $ff
	call nc, $abff                                   ; $6879: $d4 $ff $ab
	add  c                                           ; $687c: $81
	rst  $38                                         ; $687d: $ff
	inc  c                                           ; $687e: $0c
	ld   a, h                                        ; $687f: $7c
	rst  $38                                         ; $6880: $ff
	cp   a                                           ; $6881: $bf
	rst  $38                                         ; $6882: $ff
	ld   e, l                                        ; $6883: $5d
	rst  $38                                         ; $6884: $ff
	xor  [hl]                                        ; $6885: $ae
	rst  $38                                         ; $6886: $ff
	inc  a                                           ; $6887: $3c
	rst  $38                                         ; $6888: $ff
	dec  c                                           ; $6889: $0d
	rst  $38                                         ; $688a: $ff
	cp   $81                                         ; $688b: $fe $81
	rst  $38                                         ; $688d: $ff
	nop                                              ; $688e: $00
	ret                                              ; $688f: $c9


	add  c                                           ; $6890: $81
	rst  $38                                         ; $6891: $ff
	ld   [$ffb6], sp                                 ; $6892: $08 $b6 $ff
	sbc  b                                           ; $6895: $98
	rst  $38                                         ; $6896: $ff
	ld   a, a                                        ; $6897: $7f
	rst  $38                                         ; $6898: $ff
	sbc  b                                           ; $6899: $98
	rst  $38                                         ; $689a: $ff
	nop                                              ; $689b: $00
	add  c                                           ; $689c: $81
	rst  $38                                         ; $689d: $ff
	ld   [bc], a                                     ; $689e: $02
	db   $fc                                         ; $689f: $fc
	rst  $38                                         ; $68a0: $ff
	jp   $ff81                                       ; $68a1: $c3 $81 $ff


	nop                                              ; $68a4: $00
	db   $ed                                         ; $68a5: $ed
	add  c                                           ; $68a6: $81
	rst  $38                                         ; $68a7: $ff
	ld   [bc], a                                     ; $68a8: $02
	set  7, a                                        ; $68a9: $cb $ff
	and  $81                                         ; $68ab: $e6 $81
	rst  $38                                         ; $68ad: $ff
	ld   b, $fc                                      ; $68ae: $06 $fc
	rst  $38                                         ; $68b0: $ff
	rrca                                             ; $68b1: $0f
	rst  $38                                         ; $68b2: $ff
	ei                                               ; $68b3: $fb
	rst  $38                                         ; $68b4: $ff
	sbc  e                                           ; $68b5: $9b
	add  c                                           ; $68b6: $81
	rst  $38                                         ; $68b7: $ff
	ld   [bc], a                                     ; $68b8: $02
	adc  a                                           ; $68b9: $8f
	rst  $38                                         ; $68ba: $ff
	inc  e                                           ; $68bb: $1c
	add  c                                           ; $68bc: $81
	rst  $38                                         ; $68bd: $ff
	inc  c                                           ; $68be: $0c
	adc  h                                           ; $68bf: $8c
	rst  $38                                         ; $68c0: $ff
	di                                               ; $68c1: $f3
	rst  $38                                         ; $68c2: $ff
	ld   [hl-], a                                    ; $68c3: $32
	rst  $38                                         ; $68c4: $ff
	ld   a, a                                        ; $68c5: $7f
	rst  $38                                         ; $68c6: $ff
	and  d                                           ; $68c7: $a2
	rst  $38                                         ; $68c8: $ff
	adc  a                                           ; $68c9: $8f
	rst  $38                                         ; $68ca: $ff
	ldh  [$81], a                                    ; $68cb: $e0 $81
	rst  $38                                         ; $68cd: $ff
	inc  b                                           ; $68ce: $04
	di                                               ; $68cf: $f3
	rst  $38                                         ; $68d0: $ff
	call z, $d6ff                                    ; $68d1: $cc $ff $d6
	add  e                                           ; $68d4: $83
	rst  $38                                         ; $68d5: $ff
	ld   [bc], a                                     ; $68d6: $02
	sub  $ff                                         ; $68d7: $d6 $ff
	ret  nz                                          ; $68d9: $c0

	add  c                                           ; $68da: $81
	rst  $38                                         ; $68db: $ff
	ld   [bc], a                                     ; $68dc: $02
	ld   b, $ff                                      ; $68dd: $06 $ff
	rst  JumpTable                                         ; $68df: $df
	add  e                                           ; $68e0: $83
	rst  $38                                         ; $68e1: $ff
	inc  b                                           ; $68e2: $04
	rst  ToBoot                                         ; $68e3: $c7
	rst  $38                                         ; $68e4: $ff
	rst  $28                                         ; $68e5: $ef
	rst  $38                                         ; $68e6: $ff
	ld   c, $81                                      ; $68e7: $0e $81
	rst  $38                                         ; $68e9: $ff
	inc  c                                           ; $68ea: $0c
	inc  h                                           ; $68eb: $24
	rst  $38                                         ; $68ec: $ff
	ld   e, e                                        ; $68ed: $5b
	rst  $38                                         ; $68ee: $ff
	db   $ec                                         ; $68ef: $ec
	rst  $38                                         ; $68f0: $ff
	adc  $ff                                         ; $68f1: $ce $ff
	ld   d, l                                        ; $68f3: $55
	rst  $38                                         ; $68f4: $ff
	add  [hl]                                        ; $68f5: $86
	rst  $38                                         ; $68f6: $ff
	ld   [hl], c                                     ; $68f7: $71
	add  c                                           ; $68f8: $81
	rst  $38                                         ; $68f9: $ff
	inc  c                                           ; $68fa: $0c
	db   $fc                                         ; $68fb: $fc
	rst  $38                                         ; $68fc: $ff
	ld   a, [hl]                                     ; $68fd: $7e
	rst  $38                                         ; $68fe: $ff
	ld   a, a                                        ; $68ff: $7f
	rst  $38                                         ; $6900: $ff
	ld   a, [hl]                                     ; $6901: $7e
	rst  $38                                         ; $6902: $ff
	cp   $ff                                         ; $6903: $fe $ff
	ld   a, [hl]                                     ; $6905: $7e
	rst  $38                                         ; $6906: $ff
	db   $fc                                         ; $6907: $fc
	add  c                                           ; $6908: $81
	rst  $38                                         ; $6909: $ff
	inc  c                                           ; $690a: $0c
	ld   bc, $07ff                                   ; $690b: $01 $ff $07
	rst  $38                                         ; $690e: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $690f: $cf
	rst  $38                                         ; $6910: $ff
	ccf                                              ; $6911: $3f
	rst  $38                                         ; $6912: $ff
	ld   c, a                                        ; $6913: $4f
	rst  $38                                         ; $6914: $ff
	ld   c, a                                        ; $6915: $4f
	rst  $38                                         ; $6916: $ff
	add  hl, bc                                      ; $6917: $09
	add  c                                           ; $6918: $81
	rst  $38                                         ; $6919: $ff
	inc  c                                           ; $691a: $0c
	di                                               ; $691b: $f3
	rst  $38                                         ; $691c: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $691d: $cf
	rst  $38                                         ; $691e: $ff
	di                                               ; $691f: $f3
	rst  $38                                         ; $6920: $ff
	db   $d3                                         ; $6921: $d3
	rst  $38                                         ; $6922: $ff
	db   $db                                         ; $6923: $db
	rst  $38                                         ; $6924: $ff
	push hl                                          ; $6925: $e5
	rst  $38                                         ; $6926: $ff
	db   $dd                                         ; $6927: $dd
	add  c                                           ; $6928: $81
	rst  $38                                         ; $6929: $ff
	nop                                              ; $692a: $00
	rlca                                             ; $692b: $07
	add  c                                           ; $692c: $81
	rst  $38                                         ; $692d: $ff
	nop                                              ; $692e: $00
	sbc  a                                           ; $692f: $9f
	add  c                                           ; $6930: $81
	rst  $38                                         ; $6931: $ff
	nop                                              ; $6932: $00
	sbc  a                                           ; $6933: $9f
	add  c                                           ; $6934: $81
	rst  $38                                         ; $6935: $ff
	nop                                              ; $6936: $00
	rlca                                             ; $6937: $07
	add  c                                           ; $6938: $81
	rst  $38                                         ; $6939: $ff
	inc  c                                           ; $693a: $0c
	call nz, $ebff                                   ; $693b: $c4 $ff $eb
	rst  $38                                         ; $693e: $ff
	db   $fd                                         ; $693f: $fd
	rst  $38                                         ; $6940: $ff
	ld   sp, hl                                      ; $6941: $f9
	rst  $38                                         ; $6942: $ff
	ld   [$f0ff], a                                  ; $6943: $ea $ff $f0
	rst  $38                                         ; $6946: $ff
	adc  $81                                         ; $6947: $ce $81
	rst  $38                                         ; $6949: $ff
	inc  c                                           ; $694a: $0c
	sbc  h                                           ; $694b: $9c
	rst  $38                                         ; $694c: $ff
	ld   l, [hl]                                     ; $694d: $6e
	rst  $38                                         ; $694e: $ff
	adc  [hl]                                        ; $694f: $8e
	rst  $38                                         ; $6950: $ff
	call z, $bdff                                    ; $6951: $cc $ff $bd
	rst  $38                                         ; $6954: $ff
	adc  $ff                                         ; $6955: $ce $ff
	inc  a                                           ; $6957: $3c
	add  c                                           ; $6958: $81
	rst  $38                                         ; $6959: $ff
	jr   nz, jr_017_695f                             ; $695a: $20 $03

	rst  $38                                         ; $695c: $ff
	rrca                                             ; $695d: $0f
	rst  $38                                         ; $695e: $ff

jr_017_695f:
	rrca                                             ; $695f: $0f
	rst  $38                                         ; $6960: $ff
	ld   a, a                                        ; $6961: $7f
	rst  $38                                         ; $6962: $ff
	adc  a                                           ; $6963: $8f
	rst  $38                                         ; $6964: $ff
	rrca                                             ; $6965: $0f
	rst  $38                                         ; $6966: $ff
	ld   a, h                                        ; $6967: $7c
	rst  $38                                         ; $6968: $ff
	rst  $10                                         ; $6969: $d7
	rst  $38                                         ; $696a: $ff
	sub  $ff                                         ; $696b: $d6 $ff
	sub  d                                           ; $696d: $92
	rst  $38                                         ; $696e: $ff
	sub  d                                           ; $696f: $92
	rst  $38                                         ; $6970: $ff
	cp   $ff                                         ; $6971: $fe $ff
	sub  d                                           ; $6973: $92
	rst  $38                                         ; $6974: $ff
	db   $ed                                         ; $6975: $ed
	rst  $38                                         ; $6976: $ff
	ld   c, [hl]                                     ; $6977: $4e
	rst  $38                                         ; $6978: $ff
	db   $fd                                         ; $6979: $fd
	rst  $38                                         ; $697a: $ff
	db   $fd                                         ; $697b: $fd
	add  c                                           ; $697c: $81
	rst  $38                                         ; $697d: $ff
	inc  c                                           ; $697e: $0c
	db   $fd                                         ; $697f: $fd
	rst  $38                                         ; $6980: $ff
	cp   a                                           ; $6981: $bf
	rst  $38                                         ; $6982: $ff
	cp   h                                           ; $6983: $bc
	rst  $38                                         ; $6984: $ff
	ld   c, a                                        ; $6985: $4f
	rst  $38                                         ; $6986: $ff
	ld   h, a                                        ; $6987: $67
	rst  $38                                         ; $6988: $ff
	ld   a, e                                        ; $6989: $7b
	rst  $38                                         ; $698a: $ff
	ld   d, l                                        ; $698b: $55
	add  c                                           ; $698c: $81
	rst  $38                                         ; $698d: $ff
	ld   [bc], a                                     ; $698e: $02
	ld   a, a                                        ; $698f: $7f
	rst  $38                                         ; $6990: $ff
	ld   [hl], $81                                   ; $6991: $36 $81
	rst  $38                                         ; $6993: $ff
	nop                                              ; $6994: $00
	nop                                              ; $6995: $00
	add  c                                           ; $6996: $81
	rst  $38                                         ; $6997: $ff
	ld   [bc], a                                     ; $6998: $02
	ldh  [rIE], a                                    ; $6999: $e0 $ff
	db   $e3                                         ; $699b: $e3
	add  e                                           ; $699c: $83
	rst  $38                                         ; $699d: $ff
	nop                                              ; $699e: $00
	jp   $ff81                                       ; $699f: $c3 $81 $ff


	ld   [$ffc0], sp                                 ; $69a2: $08 $c0 $ff
	db   $fc                                         ; $69a5: $fc
	rst  $38                                         ; $69a6: $ff
	rra                                              ; $69a7: $1f
	rst  $38                                         ; $69a8: $ff
	dec  de                                          ; $69a9: $1b
	rst  $38                                         ; $69aa: $ff
	ei                                               ; $69ab: $fb
	add  c                                           ; $69ac: $81
	rst  $38                                         ; $69ad: $ff
	db   $10                                         ; $69ae: $10
	dec  bc                                          ; $69af: $0b
	rst  $38                                         ; $69b0: $ff
	ei                                               ; $69b1: $fb
	rst  $38                                         ; $69b2: $ff
	inc  c                                           ; $69b3: $0c
	rst  $38                                         ; $69b4: $ff
	db   $ed                                         ; $69b5: $ed
	rst  $38                                         ; $69b6: $ff
	cp   a                                           ; $69b7: $bf
	rst  $38                                         ; $69b8: $ff
	ld   d, d                                        ; $69b9: $52
	rst  $38                                         ; $69ba: $ff
	ccf                                              ; $69bb: $3f
	rst  $38                                         ; $69bc: $ff
	or   b                                           ; $69bd: $b0
	rst  $38                                         ; $69be: $ff
	ret  nc                                          ; $69bf: $d0

	add  c                                           ; $69c0: $81
	rst  $38                                         ; $69c1: $ff
	nop                                              ; $69c2: $00
	and  b                                           ; $69c3: $a0
	add  c                                           ; $69c4: $81
	rst  $38                                         ; $69c5: $ff
	nop                                              ; $69c6: $00
	pop  hl                                          ; $69c7: $e1
	add  c                                           ; $69c8: $81
	rst  $38                                         ; $69c9: $ff
	nop                                              ; $69ca: $00
	rst  $30                                         ; $69cb: $f7
	add  e                                           ; $69cc: $83
	rst  $38                                         ; $69cd: $ff
	inc  b                                           ; $69ce: $04
	rst  $30                                         ; $69cf: $f7
	rst  $38                                         ; $69d0: $ff
	pop  hl                                          ; $69d1: $e1
	rst  $38                                         ; $69d2: $ff
	ld   h, $81                                      ; $69d3: $26 $81
	rst  $38                                         ; $69d5: $ff
	ld   [bc], a                                     ; $69d6: $02
	rst  JumpTable                                         ; $69d7: $df
	rst  $38                                         ; $69d8: $ff
	rst  ToBoot                                         ; $69d9: $c7
	add  l                                           ; $69da: $85
	rst  $38                                         ; $69db: $ff
	ld   [de], a                                     ; $69dc: $12
	ld   a, $ff                                      ; $69dd: $3e $ff
	and  c                                           ; $69df: $a1
	rst  $38                                         ; $69e0: $ff
	sub  $ff                                         ; $69e1: $d6 $ff
	ld   b, [hl]                                     ; $69e3: $46
	rst  $38                                         ; $69e4: $ff
	xor  a                                           ; $69e5: $af
	rst  $38                                         ; $69e6: $ff
	rst  $10                                         ; $69e7: $d7
	rst  $38                                         ; $69e8: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $69e9: $cf
	rst  $38                                         ; $69ea: $ff
	rst  $30                                         ; $69eb: $f7
	rst  $38                                         ; $69ec: $ff
	ld   [hl], c                                     ; $69ed: $71
	rst  $38                                         ; $69ee: $ff
	db   $fc                                         ; $69ef: $fc

jr_017_69f0:
	add  c                                           ; $69f0: $81
	rst  $38                                         ; $69f1: $ff
	nop                                              ; $69f2: $00
	ld   a, [hl]                                     ; $69f3: $7e
	add  c                                           ; $69f4: $81
	rst  $38                                         ; $69f5: $ff
	jr   jr_017_69f0                                 ; $69f6: $18 $f8

	rst  $38                                         ; $69f8: $ff
	ld   a, a                                        ; $69f9: $7f
	rst  $38                                         ; $69fa: $ff
	ldh  a, [c]                                      ; $69fb: $f2
	rst  $38                                         ; $69fc: $ff
	rst  $30                                         ; $69fd: $f7
	rst  $38                                         ; $69fe: $ff
	xor  c                                           ; $69ff: $a9
	rst  $38                                         ; $6a00: $ff
	ld   e, a                                        ; $6a01: $5f
	rst  $38                                         ; $6a02: $ff
	ld   c, a                                        ; $6a03: $4f
	rst  $38                                         ; $6a04: $ff
	rst  $28                                         ; $6a05: $ef
	rst  $38                                         ; $6a06: $ff
	ld   e, a                                        ; $6a07: $5f
	rst  $38                                         ; $6a08: $ff
	ldh  a, [c]                                      ; $6a09: $f2
	rst  $38                                         ; $6a0a: $ff
	rra                                              ; $6a0b: $1f
	rst  $38                                         ; $6a0c: $ff
	db   $e4                                         ; $6a0d: $e4
	rst  $38                                         ; $6a0e: $ff
	pop  bc                                          ; $6a0f: $c1
	add  c                                           ; $6a10: $81
	rst  $38                                         ; $6a11: $ff
	inc  c                                           ; $6a12: $0c
	set  7, a                                        ; $6a13: $cb $ff
	ld   c, l                                        ; $6a15: $4d
	rst  $38                                         ; $6a16: $ff
	db   $fd                                         ; $6a17: $fd
	rst  $38                                         ; $6a18: $ff
	rst  $28                                         ; $6a19: $ef
	rst  $38                                         ; $6a1a: $ff
	ld   a, [hl]                                     ; $6a1b: $7e
	rst  $38                                         ; $6a1c: $ff
	call nc, Call_017_67ff                           ; $6a1d: $d4 $ff $67
	add  c                                           ; $6a20: $81
	rst  $38                                         ; $6a21: $ff
	ld   [bc], a                                     ; $6a22: $02
	sbc  a                                           ; $6a23: $9f
	rst  $38                                         ; $6a24: $ff
	sbc  a                                           ; $6a25: $9f
	add  e                                           ; $6a26: $83
	rst  $38                                         ; $6a27: $ff
	ld   [hl-], a                                    ; $6a28: $32
	sbc  e                                           ; $6a29: $9b
	rst  $38                                         ; $6a2a: $ff
	inc  bc                                          ; $6a2b: $03
	rst  $38                                         ; $6a2c: $ff
	call nc, $faff                                   ; $6a2d: $d4 $ff $fa
	rst  $38                                         ; $6a30: $ff
	add  sp, -$01                                    ; $6a31: $e8 $ff
	push af                                          ; $6a33: $f5
	rst  $38                                         ; $6a34: $ff
	ld   a, [$f9ff]                                  ; $6a35: $fa $ff $f9
	rst  $38                                         ; $6a38: $ff
	cp   $ff                                         ; $6a39: $fe $ff
	adc  $ff                                         ; $6a3b: $ce $ff
	dec  a                                           ; $6a3d: $3d
	rst  $38                                         ; $6a3e: $ff
	sbc  $ff                                         ; $6a3f: $de $ff
	adc  $ff                                         ; $6a41: $ce $ff
	cp   $ff                                         ; $6a43: $fe $ff
	cp   $ff                                         ; $6a45: $fe $ff
	db   $ec                                         ; $6a47: $ec
	rst  $38                                         ; $6a48: $ff
	db   $fd                                         ; $6a49: $fd
	rst  $38                                         ; $6a4a: $ff
	inc  a                                           ; $6a4b: $3c
	rst  $38                                         ; $6a4c: $ff
	di                                               ; $6a4d: $f3
	rst  $38                                         ; $6a4e: $ff
	rrca                                             ; $6a4f: $0f
	rst  $38                                         ; $6a50: $ff
	rrca                                             ; $6a51: $0f
	rst  $38                                         ; $6a52: $ff
	rrca                                             ; $6a53: $0f
	rst  $38                                         ; $6a54: $ff
	rlca                                             ; $6a55: $07
	rst  $38                                         ; $6a56: $ff
	ld   h, e                                        ; $6a57: $63
	rst  $38                                         ; $6a58: $ff
	db   $eb                                         ; $6a59: $eb
	rst  $38                                         ; $6a5a: $ff
	ld   [hl], e                                     ; $6a5b: $73
	add  b                                           ; $6a5c: $80
	rst  $38                                         ; $6a5d: $ff
	add  b                                           ; $6a5e: $80
	nop                                              ; $6a5f: $00
	inc  c                                           ; $6a60: $0c
	rst  $38                                         ; $6a61: $ff
	rst  $28                                         ; $6a62: $ef
	rst  $38                                         ; $6a63: $ff
	sub  d                                           ; $6a64: $92
	rst  $38                                         ; $6a65: $ff
	db   $fd                                         ; $6a66: $fd
	rst  $38                                         ; $6a67: $ff
	sub  d                                           ; $6a68: $92
	rst  $38                                         ; $6a69: $ff
	sub  d                                           ; $6a6a: $92
	rst  $38                                         ; $6a6b: $ff
	call nc, $8154                                   ; $6a6c: $d4 $54 $81
	nop                                              ; $6a6f: $00
	inc  c                                           ; $6a70: $0c
	rst  $38                                         ; $6a71: $ff
	ld   a, h                                        ; $6a72: $7c
	rst  $38                                         ; $6a73: $ff
	cp   a                                           ; $6a74: $bf
	rst  $38                                         ; $6a75: $ff
	ld   e, l                                        ; $6a76: $5d
	rst  $38                                         ; $6a77: $ff
	xor  [hl]                                        ; $6a78: $ae
	rst  $38                                         ; $6a79: $ff
	inc  a                                           ; $6a7a: $3c
	rst  $38                                         ; $6a7b: $ff
	dec  c                                           ; $6a7c: $0d
	ld   bc, $0081                                   ; $6a7d: $01 $81 $00
	ld   bc, $c9ff                                   ; $6a80: $01 $ff $c9
	add  c                                           ; $6a83: $81
	rst  $38                                         ; $6a84: $ff
	rlca                                             ; $6a85: $07
	or   [hl]                                        ; $6a86: $b6
	rst  $38                                         ; $6a87: $ff
	sbc  b                                           ; $6a88: $98
	rst  $38                                         ; $6a89: $ff
	ld   a, a                                        ; $6a8a: $7f
	rst  $38                                         ; $6a8b: $ff
	sbc  b                                           ; $6a8c: $98
	rst  $38                                         ; $6a8d: $ff
	add  c                                           ; $6a8e: $81
	nop                                              ; $6a8f: $00
	inc  bc                                          ; $6a90: $03
	rst  $38                                         ; $6a91: $ff
	db   $fc                                         ; $6a92: $fc
	rst  $38                                         ; $6a93: $ff
	jp   $ff81                                       ; $6a94: $c3 $81 $ff


	nop                                              ; $6a97: $00
	db   $ed                                         ; $6a98: $ed
	add  c                                           ; $6a99: $81
	rst  $38                                         ; $6a9a: $ff
	ld   bc, $19cb                                   ; $6a9b: $01 $cb $19
	add  c                                           ; $6a9e: $81
	nop                                              ; $6a9f: $00
	rlca                                             ; $6aa0: $07
	rst  $38                                         ; $6aa1: $ff
	db   $fc                                         ; $6aa2: $fc
	rst  $38                                         ; $6aa3: $ff
	rrca                                             ; $6aa4: $0f
	rst  $38                                         ; $6aa5: $ff
	ei                                               ; $6aa6: $fb
	rst  $38                                         ; $6aa7: $ff
	sbc  e                                           ; $6aa8: $9b
	add  c                                           ; $6aa9: $81
	rst  $38                                         ; $6aaa: $ff
	ld   bc, $e38f                                   ; $6aab: $01 $8f $e3
	add  c                                           ; $6aae: $81
	nop                                              ; $6aaf: $00
	inc  c                                           ; $6ab0: $0c
	rst  $38                                         ; $6ab1: $ff
	adc  h                                           ; $6ab2: $8c
	rst  $38                                         ; $6ab3: $ff
	di                                               ; $6ab4: $f3
	rst  $38                                         ; $6ab5: $ff
	ld   [hl-], a                                    ; $6ab6: $32
	rst  $38                                         ; $6ab7: $ff
	ld   a, a                                        ; $6ab8: $7f
	rst  $38                                         ; $6ab9: $ff
	and  d                                           ; $6aba: $a2
	rst  $38                                         ; $6abb: $ff
	adc  a                                           ; $6abc: $8f
	rra                                              ; $6abd: $1f
	add  c                                           ; $6abe: $81
	nop                                              ; $6abf: $00
	dec  b                                           ; $6ac0: $05
	rst  $38                                         ; $6ac1: $ff
	di                                               ; $6ac2: $f3
	rst  $38                                         ; $6ac3: $ff
	call z, $d6ff                                    ; $6ac4: $cc $ff $d6
	add  e                                           ; $6ac7: $83
	rst  $38                                         ; $6ac8: $ff
	ld   bc, $3fd6                                   ; $6ac9: $01 $d6 $3f
	add  c                                           ; $6acc: $81
	nop                                              ; $6acd: $00
	inc  bc                                          ; $6ace: $03
	rst  $38                                         ; $6acf: $ff
	ld   b, $ff                                      ; $6ad0: $06 $ff
	rst  JumpTable                                         ; $6ad2: $df
	add  e                                           ; $6ad3: $83
	rst  $38                                         ; $6ad4: $ff
	inc  bc                                          ; $6ad5: $03
	rst  ToBoot                                         ; $6ad6: $c7
	rst  $38                                         ; $6ad7: $ff
	rst  $28                                         ; $6ad8: $ef
	pop  af                                          ; $6ad9: $f1
	add  c                                           ; $6ada: $81
	nop                                              ; $6adb: $00
	inc  c                                           ; $6adc: $0c
	rst  $38                                         ; $6add: $ff
	inc  h                                           ; $6ade: $24
	rst  $38                                         ; $6adf: $ff
	ld   e, e                                        ; $6ae0: $5b
	rst  $38                                         ; $6ae1: $ff
	db   $ec                                         ; $6ae2: $ec
	rst  $38                                         ; $6ae3: $ff
	adc  $ff                                         ; $6ae4: $ce $ff
	ld   d, l                                        ; $6ae6: $55
	rst  $38                                         ; $6ae7: $ff
	add  [hl]                                        ; $6ae8: $86
	adc  [hl]                                        ; $6ae9: $8e
	add  c                                           ; $6aea: $81
	nop                                              ; $6aeb: $00
	inc  c                                           ; $6aec: $0c
	rst  $38                                         ; $6aed: $ff
	db   $fc                                         ; $6aee: $fc
	rst  $38                                         ; $6aef: $ff
	ld   a, [hl]                                     ; $6af0: $7e
	rst  $38                                         ; $6af1: $ff
	ld   a, a                                        ; $6af2: $7f
	rst  $38                                         ; $6af3: $ff
	ld   a, [hl]                                     ; $6af4: $7e
	rst  $38                                         ; $6af5: $ff
	cp   $ff                                         ; $6af6: $fe $ff
	ld   a, [hl]                                     ; $6af8: $7e
	inc  bc                                          ; $6af9: $03
	add  c                                           ; $6afa: $81
	nop                                              ; $6afb: $00
	inc  c                                           ; $6afc: $0c
	rst  $38                                         ; $6afd: $ff
	ld   bc, $07ff                                   ; $6afe: $01 $ff $07
	rst  $38                                         ; $6b01: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6b02: $cf
	rst  $38                                         ; $6b03: $ff
	ccf                                              ; $6b04: $3f
	rst  $38                                         ; $6b05: $ff
	ld   c, a                                        ; $6b06: $4f
	rst  $38                                         ; $6b07: $ff
	ld   c, a                                        ; $6b08: $4f
	or   $81                                         ; $6b09: $f6 $81
	nop                                              ; $6b0b: $00
	inc  c                                           ; $6b0c: $0c
	rst  $38                                         ; $6b0d: $ff
	di                                               ; $6b0e: $f3
	rst  $38                                         ; $6b0f: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6b10: $cf
	rst  $38                                         ; $6b11: $ff
	di                                               ; $6b12: $f3
	rst  $38                                         ; $6b13: $ff
	db   $d3                                         ; $6b14: $d3
	rst  $38                                         ; $6b15: $ff
	db   $db                                         ; $6b16: $db
	rst  $38                                         ; $6b17: $ff
	push hl                                          ; $6b18: $e5
	ld   [hl+], a                                    ; $6b19: $22
	add  c                                           ; $6b1a: $81
	nop                                              ; $6b1b: $00
	ld   bc, $07ff                                   ; $6b1c: $01 $ff $07
	add  c                                           ; $6b1f: $81
	rst  $38                                         ; $6b20: $ff
	nop                                              ; $6b21: $00
	sbc  a                                           ; $6b22: $9f
	add  c                                           ; $6b23: $81
	rst  $38                                         ; $6b24: $ff
	nop                                              ; $6b25: $00
	sbc  a                                           ; $6b26: $9f
	add  b                                           ; $6b27: $80
	rst  $38                                         ; $6b28: $ff
	nop                                              ; $6b29: $00
	ld   hl, sp-$7f                                  ; $6b2a: $f8 $81
	nop                                              ; $6b2c: $00
	inc  c                                           ; $6b2d: $0c
	rst  $38                                         ; $6b2e: $ff
	call nz, $ebff                                   ; $6b2f: $c4 $ff $eb
	rst  $38                                         ; $6b32: $ff
	db   $fd                                         ; $6b33: $fd
	rst  $38                                         ; $6b34: $ff
	ld   sp, hl                                      ; $6b35: $f9
	rst  $38                                         ; $6b36: $ff
	ld   [$f0ff], a                                  ; $6b37: $ea $ff $f0
	ld   sp, $0081                                   ; $6b3a: $31 $81 $00
	inc  c                                           ; $6b3d: $0c
	rst  $38                                         ; $6b3e: $ff
	sbc  h                                           ; $6b3f: $9c
	rst  $38                                         ; $6b40: $ff
	ld   l, [hl]                                     ; $6b41: $6e
	rst  $38                                         ; $6b42: $ff
	adc  [hl]                                        ; $6b43: $8e
	rst  $38                                         ; $6b44: $ff
	call z, $bdff                                    ; $6b45: $cc $ff $bd
	rst  $38                                         ; $6b48: $ff
	adc  $c3                                         ; $6b49: $ce $c3
	add  c                                           ; $6b4b: $81
	nop                                              ; $6b4c: $00
	dec  c                                           ; $6b4d: $0d
	rst  $38                                         ; $6b4e: $ff
	inc  bc                                          ; $6b4f: $03
	rst  $38                                         ; $6b50: $ff
	rrca                                             ; $6b51: $0f
	rst  $38                                         ; $6b52: $ff
	rrca                                             ; $6b53: $0f
	rst  $38                                         ; $6b54: $ff
	ld   a, a                                        ; $6b55: $7f
	rst  $38                                         ; $6b56: $ff
	adc  a                                           ; $6b57: $8f
	rst  $38                                         ; $6b58: $ff
	rrca                                             ; $6b59: $0f
	db   $fc                                         ; $6b5a: $fc
	nop                                              ; $6b5b: $00
	add  e                                           ; $6b5c: $83
	rst  $38                                         ; $6b5d: $ff
	ld   bc, $ff00                                   ; $6b5e: $01 $00 $ff
	add  b                                           ; $6b61: $80
	nop                                              ; $6b62: $00
	add  b                                           ; $6b63: $80
	db   $10                                         ; $6b64: $10
	add  b                                           ; $6b65: $80
	ld   a, l                                        ; $6b66: $7d
	add  b                                           ; $6b67: $80
	ld   a, a                                        ; $6b68: $7f
	nop                                              ; $6b69: $00
	nop                                              ; $6b6a: $00
	add  e                                           ; $6b6b: $83
	rst  $38                                         ; $6b6c: $ff
	ld   bc, $ff00                                   ; $6b6d: $01 $00 $ff
	add  b                                           ; $6b70: $80
	nop                                              ; $6b71: $00
	add  b                                           ; $6b72: $80
	add  e                                           ; $6b73: $83
	add  b                                           ; $6b74: $80
	jp   Jump_017_6180                               ; $6b75: $c3 $80 $61


	nop                                              ; $6b78: $00
	nop                                              ; $6b79: $00
	add  e                                           ; $6b7a: $83
	rst  $38                                         ; $6b7b: $ff
	ld   bc, $ff00                                   ; $6b7c: $01 $00 $ff
	add  b                                           ; $6b7f: $80
	nop                                              ; $6b80: $00
	add  d                                           ; $6b81: $82
	ld   [hl], $80                                   ; $6b82: $36 $80
	ld   a, a                                        ; $6b84: $7f
	nop                                              ; $6b85: $00
	nop                                              ; $6b86: $00
	add  e                                           ; $6b87: $83
	rst  $38                                         ; $6b88: $ff
	ld   bc, $ff00                                   ; $6b89: $01 $00 $ff
	add  b                                           ; $6b8c: $80
	nop                                              ; $6b8d: $00
	add  b                                           ; $6b8e: $80
	inc  bc                                          ; $6b8f: $03
	add  d                                           ; $6b90: $82
	ccf                                              ; $6b91: $3f
	nop                                              ; $6b92: $00
	nop                                              ; $6b93: $00
	add  e                                           ; $6b94: $83
	rst  $38                                         ; $6b95: $ff
	ld   bc, $ff00                                   ; $6b96: $01 $00 $ff
	add  b                                           ; $6b99: $80
	nop                                              ; $6b9a: $00
	add  b                                           ; $6b9b: $80
	inc  bc                                          ; $6b9c: $03
	add  b                                           ; $6b9d: $80
	di                                               ; $6b9e: $f3
	add  b                                           ; $6b9f: $80
	rst  $30                                         ; $6ba0: $f7
	nop                                              ; $6ba1: $00
	nop                                              ; $6ba2: $00
	add  e                                           ; $6ba3: $83
	rst  $38                                         ; $6ba4: $ff
	ld   bc, $ff00                                   ; $6ba5: $01 $00 $ff
	add  b                                           ; $6ba8: $80
	nop                                              ; $6ba9: $00
	add  b                                           ; $6baa: $80
	ld   [hl], e                                     ; $6bab: $73
	add  b                                           ; $6bac: $80
	ld   a, a                                        ; $6bad: $7f
	add  b                                           ; $6bae: $80
	or   d                                           ; $6baf: $b2
	nop                                              ; $6bb0: $00
	nop                                              ; $6bb1: $00
	add  e                                           ; $6bb2: $83
	rst  $38                                         ; $6bb3: $ff
	ld   bc, $ff00                                   ; $6bb4: $01 $00 $ff
	add  b                                           ; $6bb7: $80
	nop                                              ; $6bb8: $00
	add  b                                           ; $6bb9: $80
	inc  c                                           ; $6bba: $0c
	add  b                                           ; $6bbb: $80
	ccf                                              ; $6bbc: $3f
	add  b                                           ; $6bbd: $80
	ld   d, $00                                      ; $6bbe: $16 $00
	nop                                              ; $6bc0: $00
	add  e                                           ; $6bc1: $83
	rst  $38                                         ; $6bc2: $ff
	ld   bc, $ff00                                   ; $6bc3: $01 $00 $ff
	add  b                                           ; $6bc6: $80
	nop                                              ; $6bc7: $00
	add  b                                           ; $6bc8: $80
	ld   sp, hl                                      ; $6bc9: $f9
	add  d                                           ; $6bca: $82
	reti                                             ; $6bcb: $d9


	nop                                              ; $6bcc: $00
	nop                                              ; $6bcd: $00
	add  e                                           ; $6bce: $83
	rst  $38                                         ; $6bcf: $ff
	ld   bc, $ff00                                   ; $6bd0: $01 $00 $ff
	add  b                                           ; $6bd3: $80
	nop                                              ; $6bd4: $00
	add  b                                           ; $6bd5: $80
	db   $db                                         ; $6bd6: $db
	add  b                                           ; $6bd7: $80
	ld   a, a                                        ; $6bd8: $7f
	add  b                                           ; $6bd9: $80
	ld   l, h                                        ; $6bda: $6c
	nop                                              ; $6bdb: $00
	nop                                              ; $6bdc: $00
	add  e                                           ; $6bdd: $83
	rst  $38                                         ; $6bde: $ff
	ld   bc, $ff00                                   ; $6bdf: $01 $00 $ff
	add  b                                           ; $6be2: $80
	nop                                              ; $6be3: $00
	add  b                                           ; $6be4: $80
	inc  bc                                          ; $6be5: $03
	add  b                                           ; $6be6: $80
	add  d                                           ; $6be7: $82
	add  b                                           ; $6be8: $80
	ld   [bc], a                                     ; $6be9: $02
	nop                                              ; $6bea: $00
	nop                                              ; $6beb: $00
	add  e                                           ; $6bec: $83
	rst  $38                                         ; $6bed: $ff
	ld   bc, $ff00                                   ; $6bee: $01 $00 $ff
	add  b                                           ; $6bf1: $80
	nop                                              ; $6bf2: $00
	add  b                                           ; $6bf3: $80
	cp   $80                                         ; $6bf4: $fe $80
	ld   b, $80                                      ; $6bf6: $06 $80
	ld   [hl], $00                                   ; $6bf8: $36 $00
	nop                                              ; $6bfa: $00
	add  e                                           ; $6bfb: $83
	rst  $38                                         ; $6bfc: $ff
	ld   bc, $ff00                                   ; $6bfd: $01 $00 $ff
	add  b                                           ; $6c00: $80
	nop                                              ; $6c01: $00
	add  b                                           ; $6c02: $80
	inc  c                                           ; $6c03: $0c
	add  b                                           ; $6c04: $80
	inc  a                                           ; $6c05: $3c
	add  b                                           ; $6c06: $80
	jr   nc, jr_017_6c09                             ; $6c07: $30 $00

jr_017_6c09:
	nop                                              ; $6c09: $00
	add  e                                           ; $6c0a: $83
	rst  $38                                         ; $6c0b: $ff
	ld   bc, $ff00                                   ; $6c0c: $01 $00 $ff
	add  b                                           ; $6c0f: $80
	nop                                              ; $6c10: $00
	add  d                                           ; $6c11: $82
	ld   hl, sp-$80                                  ; $6c12: $f8 $80
	sbc  b                                           ; $6c14: $98
	nop                                              ; $6c15: $00
	nop                                              ; $6c16: $00
	add  e                                           ; $6c17: $83
	rst  $38                                         ; $6c18: $ff
	ld   bc, $ff00                                   ; $6c19: $01 $00 $ff
	add  b                                           ; $6c1c: $80
	nop                                              ; $6c1d: $00
	add  b                                           ; $6c1e: $80
	dec  sp                                          ; $6c1f: $3b
	add  b                                           ; $6c20: $80
	cpl                                              ; $6c21: $2f
	add  b                                           ; $6c22: $80
	dec  l                                           ; $6c23: $2d
	nop                                              ; $6c24: $00
	nop                                              ; $6c25: $00
	add  e                                           ; $6c26: $83
	rst  $38                                         ; $6c27: $ff
	ld   bc, $ff00                                   ; $6c28: $01 $00 $ff
	add  b                                           ; $6c2b: $80
	nop                                              ; $6c2c: $00
	add  b                                           ; $6c2d: $80
	ld   h, e                                        ; $6c2e: $63
	add  b                                           ; $6c2f: $80
	ldh  a, [c]                                      ; $6c30: $f2
	add  b                                           ; $6c31: $80
	add  e                                           ; $6c32: $83
	nop                                              ; $6c33: $00
	nop                                              ; $6c34: $00
	add  e                                           ; $6c35: $83
	rst  $38                                         ; $6c36: $ff
	ld   bc, $ff00                                   ; $6c37: $01 $00 $ff
	add  b                                           ; $6c3a: $80
	nop                                              ; $6c3b: $00
	add  b                                           ; $6c3c: $80
	db   $fc                                         ; $6c3d: $fc
	add  b                                           ; $6c3e: $80
	inc  c                                           ; $6c3f: $0c
	add  b                                           ; $6c40: $80
	db   $fc                                         ; $6c41: $fc
	add  b                                           ; $6c42: $80
	rst  $38                                         ; $6c43: $ff
	add  b                                           ; $6c44: $80
	ld   d, a                                        ; $6c45: $57
	add  b                                           ; $6c46: $80
	ld   a, [hl]                                     ; $6c47: $7e
	add  b                                           ; $6c48: $80
	inc  de                                          ; $6c49: $13
	add  b                                           ; $6c4a: $80
	ld   a, [hl]                                     ; $6c4b: $7e
	add  b                                           ; $6c4c: $80
	ld   a, a                                        ; $6c4d: $7f
	add  b                                           ; $6c4e: $80
	ld   [de], a                                     ; $6c4f: $12
	add  b                                           ; $6c50: $80
	nop                                              ; $6c51: $00
	add  b                                           ; $6c52: $80
	rst  $38                                         ; $6c53: $ff
	add  b                                           ; $6c54: $80
	or   e                                           ; $6c55: $b3
	add  d                                           ; $6c56: $82
	or   c                                           ; $6c57: $b1
	add  b                                           ; $6c58: $80
	or   e                                           ; $6c59: $b3
	add  b                                           ; $6c5a: $80
	di                                               ; $6c5b: $f3
	add  b                                           ; $6c5c: $80
	or   b                                           ; $6c5d: $b0
	add  b                                           ; $6c5e: $80
	nop                                              ; $6c5f: $00
	add  b                                           ; $6c60: $80
	rst  $38                                         ; $6c61: $ff
	add  b                                           ; $6c62: $80
	ld   [hl], $82                                   ; $6c63: $36 $82
	or   [hl]                                        ; $6c65: $b6
	add  b                                           ; $6c66: $80
	nop                                              ; $6c67: $00
	add  d                                           ; $6c68: $82
	rst  $38                                         ; $6c69: $ff
	add  b                                           ; $6c6a: $80
	nop                                              ; $6c6b: $00
	add  b                                           ; $6c6c: $80
	rst  $38                                         ; $6c6d: $ff
	add  b                                           ; $6c6e: $80
	rra                                              ; $6c6f: $1f
	add  h                                           ; $6c70: $84
	inc  bc                                          ; $6c71: $03
	add  d                                           ; $6c72: $82
	ccf                                              ; $6c73: $3f
	add  b                                           ; $6c74: $80
	nop                                              ; $6c75: $00
	add  b                                           ; $6c76: $80
	rst  $38                                         ; $6c77: $ff
	add  b                                           ; $6c78: $80
	db   $e3                                         ; $6c79: $e3
	add  b                                           ; $6c7a: $80
	rlca                                             ; $6c7b: $07
	add  d                                           ; $6c7c: $82

jr_017_6c7d:
	inc  bc                                          ; $6c7d: $03
	add  b                                           ; $6c7e: $80
	rst  $30                                         ; $6c7f: $f7
	add  b                                           ; $6c80: $80
	di                                               ; $6c81: $f3
	add  b                                           ; $6c82: $80
	nop                                              ; $6c83: $00
	add  b                                           ; $6c84: $80
	rst  $38                                         ; $6c85: $ff
	add  b                                           ; $6c86: $80
	ld   d, d                                        ; $6c87: $52
	add  b                                           ; $6c88: $80
	rst  $38                                         ; $6c89: $ff
	add  b                                           ; $6c8a: $80
	ccf                                              ; $6c8b: $3f
	add  b                                           ; $6c8c: $80
	ld   [hl], b                                     ; $6c8d: $70
	add  d                                           ; $6c8e: $82
	ld   e, a                                        ; $6c8f: $5f
	add  b                                           ; $6c90: $80
	nop                                              ; $6c91: $00
	add  b                                           ; $6c92: $80
	rst  $38                                         ; $6c93: $ff
	add  d                                           ; $6c94: $82
	ld   e, $84                                      ; $6c95: $1e $84
	ld   d, $80                                      ; $6c97: $16 $80
	ld   e, $80                                      ; $6c99: $1e $80
	nop                                              ; $6c9b: $00
	add  b                                           ; $6c9c: $80
	rst  $38                                         ; $6c9d: $ff
	add  b                                           ; $6c9e: $80
	reti                                             ; $6c9f: $d9


	add  b                                           ; $6ca0: $80
	ld   sp, hl                                      ; $6ca1: $f9
	add  [hl]                                        ; $6ca2: $86
	pop  bc                                          ; $6ca3: $c1
	add  b                                           ; $6ca4: $80
	nop                                              ; $6ca5: $00
	add  b                                           ; $6ca6: $80
	rst  $38                                         ; $6ca7: $ff
	add  b                                           ; $6ca8: $80
	ld   [hl], a                                     ; $6ca9: $77
	add  b                                           ; $6caa: $80
	adc  $80                                         ; $6cab: $ce $80
	sbc  [hl]                                        ; $6cad: $9e
	add  b                                           ; $6cae: $80
	or   [hl]                                        ; $6caf: $b6
	add  b                                           ; $6cb0: $80
	add  [hl]                                        ; $6cb1: $86
	add  b                                           ; $6cb2: $80
	adc  [hl]                                        ; $6cb3: $8e
	add  b                                           ; $6cb4: $80
	nop                                              ; $6cb5: $00
	add  b                                           ; $6cb6: $80
	rst  $38                                         ; $6cb7: $ff
	add  b                                           ; $6cb8: $80
	inc  bc                                          ; $6cb9: $03
	add  d                                           ; $6cba: $82
	add  d                                           ; $6cbb: $82
	add  b                                           ; $6cbc: $80
	add  l                                           ; $6cbd: $85
	add  b                                           ; $6cbe: $80
	dec  b                                           ; $6cbf: $05
	add  b                                           ; $6cc0: $80
	ld   [$0080], sp                                 ; $6cc1: $08 $80 $00
	add  b                                           ; $6cc4: $80
	rst  $38                                         ; $6cc5: $ff
	add  b                                           ; $6cc6: $80
	or   $80                                         ; $6cc7: $f6 $80
	ld   b, [hl]                                     ; $6cc9: $46
	add  b                                           ; $6cca: $80
	ld   d, [hl]                                     ; $6ccb: $56
	add  b                                           ; $6ccc: $80
	or   $80                                         ; $6ccd: $f6 $80
	ei                                               ; $6ccf: $fb
	add  b                                           ; $6cd0: $80
	dec  de                                          ; $6cd1: $1b
	add  b                                           ; $6cd2: $80
	nop                                              ; $6cd3: $00
	add  b                                           ; $6cd4: $80
	rst  $38                                         ; $6cd5: $ff
	add  b                                           ; $6cd6: $80
	ld   a, $80                                      ; $6cd7: $3e $80
	ld   a, [bc]                                     ; $6cd9: $0a
	add  b                                           ; $6cda: $80
	cp   b                                           ; $6cdb: $b8
	add  b                                           ; $6cdc: $80
	cp   d                                           ; $6cdd: $ba
	add  b                                           ; $6cde: $80
	xor  d                                           ; $6cdf: $aa
	add  b                                           ; $6ce0: $80
	dec  hl                                          ; $6ce1: $2b
	add  b                                           ; $6ce2: $80
	nop                                              ; $6ce3: $00
	add  b                                           ; $6ce4: $80
	rst  $38                                         ; $6ce5: $ff
	add  b                                           ; $6ce6: $80
	sbc  b                                           ; $6ce7: $98
	add  b                                           ; $6ce8: $80
	ld   hl, sp-$7c                                  ; $6ce9: $f8 $84
	sbc  b                                           ; $6ceb: $98
	add  b                                           ; $6cec: $80
	db   $fc                                         ; $6ced: $fc
	add  b                                           ; $6cee: $80
	nop                                              ; $6cef: $00
	add  b                                           ; $6cf0: $80
	rst  $38                                         ; $6cf1: $ff
	add  b                                           ; $6cf2: $80
	ld   l, $80                                      ; $6cf3: $2e $80
	add  hl, sp                                      ; $6cf5: $39
	add  b                                           ; $6cf6: $80
	inc  sp                                          ; $6cf7: $33
	add  b                                           ; $6cf8: $80
	ld   [hl], $80                                   ; $6cf9: $36 $80
	jr   nc, jr_017_6c7d                             ; $6cfb: $30 $80

	ld   sp, $0080                                   ; $6cfd: $31 $80 $00
	add  b                                           ; $6d00: $80
	rst  $38                                         ; $6d01: $ff
	add  b                                           ; $6d02: $80
	db   $e3                                         ; $6d03: $e3
	add  b                                           ; $6d04: $80
	jp   nc, $d380                                   ; $6d05: $d2 $80 $d3

	add  b                                           ; $6d08: $80
	jp   nc, $c180                                   ; $6d09: $d2 $80 $c1

	add  b                                           ; $6d0c: $80
	jp   $0080                                       ; $6d0d: $c3 $80 $00


	add  b                                           ; $6d10: $80
	rst  $38                                         ; $6d11: $ff
	add  b                                           ; $6d12: $80
	db   $fc                                         ; $6d13: $fc
	add  b                                           ; $6d14: $80
	inc  c                                           ; $6d15: $0c
	add  b                                           ; $6d16: $80
	db   $fc                                         ; $6d17: $fc
	add  b                                           ; $6d18: $80
	inc  b                                           ; $6d19: $04
	add  b                                           ; $6d1a: $80
	sbc  b                                           ; $6d1b: $98
	add  b                                           ; $6d1c: $80
	adc  h                                           ; $6d1d: $8c
	add  b                                           ; $6d1e: $80
	nop                                              ; $6d1f: $00
	push hl                                          ; $6d20: $e5
	ld   bc, $ff82                                   ; $6d21: $01 $82 $ff
	inc  c                                           ; $6d24: $0c
	ret  nz                                          ; $6d25: $c0

	rst  $38                                         ; $6d26: $ff
	ldh  a, [rIE]                                    ; $6d27: $f0 $ff
	ldh  a, [rIE]                                    ; $6d29: $f0 $ff
	ldh  a, [rIE]                                    ; $6d2b: $f0 $ff
	ldh  a, [rIE]                                    ; $6d2d: $f0 $ff
	ccf                                              ; $6d2f: $3f
	rst  $38                                         ; $6d30: $ff
	nop                                              ; $6d31: $00
	add  c                                           ; $6d32: $81
	rst  $38                                         ; $6d33: $ff
	inc  c                                           ; $6d34: $0c
	inc  c                                           ; $6d35: $0c
	rst  $38                                         ; $6d36: $ff
	ccf                                              ; $6d37: $3f
	rst  $38                                         ; $6d38: $ff
	ccf                                              ; $6d39: $3f
	rst  $38                                         ; $6d3a: $ff
	dec  bc                                          ; $6d3b: $0b
	rst  $38                                         ; $6d3c: $ff
	rrca                                             ; $6d3d: $0f
	rst  $38                                         ; $6d3e: $ff
	rst  $30                                         ; $6d3f: $f7
	rst  $38                                         ; $6d40: $ff
	nop                                              ; $6d41: $00
	add  c                                           ; $6d42: $81
	rst  $38                                         ; $6d43: $ff
	ld   [bc], a                                     ; $6d44: $02
	ld   sp, hl                                      ; $6d45: $f9
	rst  $38                                         ; $6d46: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6d47: $cf
	add  c                                           ; $6d48: $81
	rst  $38                                         ; $6d49: $ff
	ld   b, $7e                                      ; $6d4a: $06 $7e
	rst  $38                                         ; $6d4c: $ff
	scf                                              ; $6d4d: $37
	rst  $38                                         ; $6d4e: $ff
	ld   a, a                                        ; $6d4f: $7f
	rst  $38                                         ; $6d50: $ff
	nop                                              ; $6d51: $00
	add  c                                           ; $6d52: $81
	rst  $38                                         ; $6d53: $ff
	nop                                              ; $6d54: $00
	call nc, $ff81                                   ; $6d55: $d4 $81 $ff
	ld   [$ffde], sp                                 ; $6d58: $08 $de $ff
	jp   z, $edff                                    ; $6d5b: $ca $ff $ed

	rst  $38                                         ; $6d5e: $ff
	dec  l                                           ; $6d5f: $2d
	rst  $38                                         ; $6d60: $ff
	nop                                              ; $6d61: $00
	add  c                                           ; $6d62: $81
	rst  $38                                         ; $6d63: $ff
	inc  c                                           ; $6d64: $0c
	and  [hl]                                        ; $6d65: $a6
	rst  $38                                         ; $6d66: $ff
	rst  $28                                         ; $6d67: $ef
	rst  $38                                         ; $6d68: $ff
	rst  $30                                         ; $6d69: $f7
	rst  $38                                         ; $6d6a: $ff
	rst  ToBoot                                         ; $6d6b: $c7
	rst  $38                                         ; $6d6c: $ff
	ld   a, a                                        ; $6d6d: $7f
	rst  $38                                         ; $6d6e: $ff
	ld   sp, hl                                      ; $6d6f: $f9
	rst  $38                                         ; $6d70: $ff
	nop                                              ; $6d71: $00
	add  c                                           ; $6d72: $81
	rst  $38                                         ; $6d73: $ff
	inc  c                                           ; $6d74: $0c
	ld   [$beff], sp                                 ; $6d75: $08 $ff $be
	rst  $38                                         ; $6d78: $ff
	cp   [hl]                                        ; $6d79: $be
	rst  $38                                         ; $6d7a: $ff
	cp   [hl]                                        ; $6d7b: $be
	rst  $38                                         ; $6d7c: $ff
	cp   [hl]                                        ; $6d7d: $be
	rst  $38                                         ; $6d7e: $ff
	rst  $30                                         ; $6d7f: $f7
	rst  $38                                         ; $6d80: $ff
	nop                                              ; $6d81: $00
	add  c                                           ; $6d82: $81
	rst  $38                                         ; $6d83: $ff
	inc  b                                           ; $6d84: $04
	add  hl, sp                                      ; $6d85: $39
	rst  $38                                         ; $6d86: $ff
	and  $ff                                         ; $6d87: $e6 $ff
	db   $eb                                         ; $6d89: $eb
	add  e                                           ; $6d8a: $83
	rst  $38                                         ; $6d8b: $ff
	ld   [bc], a                                     ; $6d8c: $02
	set  7, a                                        ; $6d8d: $cb $ff
	nop                                              ; $6d8f: $00
	add  c                                           ; $6d90: $81
	rst  $38                                         ; $6d91: $ff
	inc  b                                           ; $6d92: $04
	add  e                                           ; $6d93: $83
	rst  $38                                         ; $6d94: $ff
	ld   l, a                                        ; $6d95: $6f
	rst  $38                                         ; $6d96: $ff
	ld   a, a                                        ; $6d97: $7f
	add  c                                           ; $6d98: $81
	rst  $38                                         ; $6d99: $ff
	inc  b                                           ; $6d9a: $04
	db   $e3                                         ; $6d9b: $e3
	rst  $38                                         ; $6d9c: $ff
	ld   [hl], b                                     ; $6d9d: $70
	rst  $38                                         ; $6d9e: $ff
	nop                                              ; $6d9f: $00
	add  c                                           ; $6da0: $81
	rst  $38                                         ; $6da1: $ff
	inc  c                                           ; $6da2: $0c
	ld   [de], a                                     ; $6da3: $12
	rst  $38                                         ; $6da4: $ff
	xor  l                                           ; $6da5: $ad
	rst  $38                                         ; $6da6: $ff
	or   $ff                                         ; $6da7: $f6 $ff
	rst  $20                                         ; $6da9: $e7
	rst  $38                                         ; $6daa: $ff
	xor  d                                           ; $6dab: $aa
	rst  $38                                         ; $6dac: $ff
	ei                                               ; $6dad: $fb
	rst  $38                                         ; $6dae: $ff
	nop                                              ; $6daf: $00
	add  c                                           ; $6db0: $81
	rst  $38                                         ; $6db1: $ff
	ld   b, $7e                                      ; $6db2: $06 $7e
	rst  $38                                         ; $6db4: $ff
	cp   [hl]                                        ; $6db5: $be
	rst  $38                                         ; $6db6: $ff
	ld   a, $ff                                      ; $6db7: $3e $ff
	ccf                                              ; $6db9: $3f
	add  c                                           ; $6dba: $81
	rst  $38                                         ; $6dbb: $ff
	ld   [bc], a                                     ; $6dbc: $02
	pop  bc                                          ; $6dbd: $c1
	rst  $38                                         ; $6dbe: $ff
	nop                                              ; $6dbf: $00
	add  c                                           ; $6dc0: $81
	rst  $38                                         ; $6dc1: $ff
	inc  c                                           ; $6dc2: $0c
	nop                                              ; $6dc3: $00
	rst  $38                                         ; $6dc4: $ff
	jr   @+$01                                       ; $6dc5: $18 $ff

	jr   @+$01                                       ; $6dc7: $18 $ff

	jr   @+$01                                       ; $6dc9: $18 $ff

	sbc  h                                           ; $6dcb: $9c
	rst  $38                                         ; $6dcc: $ff
	ld   a, e                                        ; $6dcd: $7b
	rst  $38                                         ; $6dce: $ff
	nop                                              ; $6dcf: $00
	add  c                                           ; $6dd0: $81
	rst  $38                                         ; $6dd1: $ff
	inc  c                                           ; $6dd2: $0c
	ld   [hl], e                                     ; $6dd3: $73
	rst  $38                                         ; $6dd4: $ff
	ld   c, a                                        ; $6dd5: $4f
	rst  $38                                         ; $6dd6: $ff
	ld   [hl], e                                     ; $6dd7: $73
	rst  $38                                         ; $6dd8: $ff
	db   $d3                                         ; $6dd9: $d3
	rst  $38                                         ; $6dda: $ff
	db   $db                                         ; $6ddb: $db
	rst  $38                                         ; $6ddc: $ff
	cp   b                                           ; $6ddd: $b8
	rst  $38                                         ; $6dde: $ff
	nop                                              ; $6ddf: $00
	add  c                                           ; $6de0: $81
	rst  $38                                         ; $6de1: $ff
	nop                                              ; $6de2: $00
	rlca                                             ; $6de3: $07
	add  c                                           ; $6de4: $81
	rst  $38                                         ; $6de5: $ff
	nop                                              ; $6de6: $00
	sbc  a                                           ; $6de7: $9f
	add  c                                           ; $6de8: $81
	rst  $38                                         ; $6de9: $ff
	inc  b                                           ; $6dea: $04
	sbc  a                                           ; $6deb: $9f
	rst  $38                                         ; $6dec: $ff
	ld   hl, sp-$01                                  ; $6ded: $f8 $ff
	nop                                              ; $6def: $00
	add  c                                           ; $6df0: $81
	rst  $38                                         ; $6df1: $ff
	inc  c                                           ; $6df2: $0c
	call nz, $ebff                                   ; $6df3: $c4 $ff $eb
	rst  $38                                         ; $6df6: $ff
	db   $fd                                         ; $6df7: $fd
	rst  $38                                         ; $6df8: $ff
	ld   sp, hl                                      ; $6df9: $f9
	rst  $38                                         ; $6dfa: $ff
	ld   [$3eff], a                                  ; $6dfb: $ea $ff $3e
	rst  $38                                         ; $6dfe: $ff
	nop                                              ; $6dff: $00
	add  c                                           ; $6e00: $81
	rst  $38                                         ; $6e01: $ff
	inc  c                                           ; $6e02: $0c
	sbc  h                                           ; $6e03: $9c
	rst  $38                                         ; $6e04: $ff
	ld   l, [hl]                                     ; $6e05: $6e
	rst  $38                                         ; $6e06: $ff
	adc  [hl]                                        ; $6e07: $8e
	rst  $38                                         ; $6e08: $ff
	call z, $bdff                                    ; $6e09: $cc $ff $bd
	rst  $38                                         ; $6e0c: $ff
	ldh  a, [c]                                      ; $6e0d: $f2
	rst  $38                                         ; $6e0e: $ff
	nop                                              ; $6e0f: $00
	add  c                                           ; $6e10: $81
	rst  $38                                         ; $6e11: $ff
	inc  c                                           ; $6e12: $0c
	inc  bc                                          ; $6e13: $03
	rst  $38                                         ; $6e14: $ff
	rrca                                             ; $6e15: $0f
	rst  $38                                         ; $6e16: $ff
	rrca                                             ; $6e17: $0f
	rst  $38                                         ; $6e18: $ff
	ld   a, a                                        ; $6e19: $7f
	rst  $38                                         ; $6e1a: $ff
	adc  a                                           ; $6e1b: $8f
	rst  $38                                         ; $6e1c: $ff
	inc  c                                           ; $6e1d: $0c
	rst  $38                                         ; $6e1e: $ff
	nop                                              ; $6e1f: $00
	add  c                                           ; $6e20: $81
	rst  $38                                         ; $6e21: $ff
	inc  c                                           ; $6e22: $0c
	ret  nz                                          ; $6e23: $c0

	rst  $38                                         ; $6e24: $ff
	ldh  a, [rIE]                                    ; $6e25: $f0 $ff
	ldh  a, [rIE]                                    ; $6e27: $f0 $ff
	ldh  a, [rIE]                                    ; $6e29: $f0 $ff
	ldh  a, [rIE]                                    ; $6e2b: $f0 $ff
	ldh  a, [$30]                                    ; $6e2d: $f0 $30
	nop                                              ; $6e2f: $00
	add  c                                           ; $6e30: $81
	rst  $38                                         ; $6e31: $ff
	inc  c                                           ; $6e32: $0c
	inc  c                                           ; $6e33: $0c
	rst  $38                                         ; $6e34: $ff
	ccf                                              ; $6e35: $3f
	rst  $38                                         ; $6e36: $ff
	ccf                                              ; $6e37: $3f
	rst  $38                                         ; $6e38: $ff
	dec  bc                                          ; $6e39: $0b
	rst  $38                                         ; $6e3a: $ff
	rrca                                             ; $6e3b: $0f
	rst  $38                                         ; $6e3c: $ff
	dec  sp                                          ; $6e3d: $3b
	inc  sp                                          ; $6e3e: $33
	nop                                              ; $6e3f: $00
	add  c                                           ; $6e40: $81
	rst  $38                                         ; $6e41: $ff
	ld   [bc], a                                     ; $6e42: $02
	ld   sp, hl                                      ; $6e43: $f9
	rst  $38                                         ; $6e44: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6e45: $cf
	add  c                                           ; $6e46: $81
	rst  $38                                         ; $6e47: $ff
	ld   b, $7e                                      ; $6e48: $06 $7e
	rst  $38                                         ; $6e4a: $ff
	scf                                              ; $6e4b: $37
	rst  $38                                         ; $6e4c: $ff
	or   l                                           ; $6e4d: $b5
	dec  [hl]                                        ; $6e4e: $35
	nop                                              ; $6e4f: $00
	add  c                                           ; $6e50: $81
	rst  $38                                         ; $6e51: $ff
	nop                                              ; $6e52: $00
	call nc, $ff81                                   ; $6e53: $d4 $81 $ff
	ld   [$ffde], sp                                 ; $6e56: $08 $de $ff
	jp   z, $edff                                    ; $6e59: $ca $ff $ed

	rst  $38                                         ; $6e5c: $ff
	db   $ed                                         ; $6e5d: $ed
	ccf                                              ; $6e5e: $3f
	nop                                              ; $6e5f: $00
	add  c                                           ; $6e60: $81
	rst  $38                                         ; $6e61: $ff
	inc  c                                           ; $6e62: $0c
	and  [hl]                                        ; $6e63: $a6
	rst  $38                                         ; $6e64: $ff
	rst  $28                                         ; $6e65: $ef
	rst  $38                                         ; $6e66: $ff
	rst  $30                                         ; $6e67: $f7
	rst  $38                                         ; $6e68: $ff
	rst  ToBoot                                         ; $6e69: $c7
	rst  $38                                         ; $6e6a: $ff
	ld   a, a                                        ; $6e6b: $7f
	rst  $38                                         ; $6e6c: $ff
	ld   b, a                                        ; $6e6d: $47
	ld   b, c                                        ; $6e6e: $41
	nop                                              ; $6e6f: $00
	add  c                                           ; $6e70: $81
	rst  $38                                         ; $6e71: $ff
	ld   a, [bc]                                     ; $6e72: $0a
	ld   [$beff], sp                                 ; $6e73: $08 $ff $be
	rst  $38                                         ; $6e76: $ff
	cp   [hl]                                        ; $6e77: $be
	rst  $38                                         ; $6e78: $ff
	cp   [hl]                                        ; $6e79: $be
	rst  $38                                         ; $6e7a: $ff
	cp   [hl]                                        ; $6e7b: $be
	rst  $38                                         ; $6e7c: $ff
	ld   [$0080], sp                                 ; $6e7d: $08 $80 $00
	add  c                                           ; $6e80: $81
	rst  $38                                         ; $6e81: $ff
	inc  b                                           ; $6e82: $04
	add  hl, sp                                      ; $6e83: $39
	rst  $38                                         ; $6e84: $ff
	and  $ff                                         ; $6e85: $e6 $ff
	db   $eb                                         ; $6e87: $eb
	add  e                                           ; $6e88: $83
	rst  $38                                         ; $6e89: $ff
	ld   [bc], a                                     ; $6e8a: $02
	db   $eb                                         ; $6e8b: $eb
	rst  JumpTable                                         ; $6e8c: $df
	nop                                              ; $6e8d: $00
	add  c                                           ; $6e8e: $81
	rst  $38                                         ; $6e8f: $ff
	inc  b                                           ; $6e90: $04
	add  e                                           ; $6e91: $83
	rst  $38                                         ; $6e92: $ff
	ld   l, a                                        ; $6e93: $6f
	rst  $38                                         ; $6e94: $ff
	ld   a, a                                        ; $6e95: $7f
	add  c                                           ; $6e96: $81
	rst  $38                                         ; $6e97: $ff
	inc  b                                           ; $6e98: $04
	db   $e3                                         ; $6e99: $e3
	rst  $38                                         ; $6e9a: $ff
	ld   [hl], a                                     ; $6e9b: $77
	ld   hl, sp+$00                                  ; $6e9c: $f8 $00
	add  c                                           ; $6e9e: $81
	rst  $38                                         ; $6e9f: $ff
	inc  c                                           ; $6ea0: $0c
	ld   [de], a                                     ; $6ea1: $12
	rst  $38                                         ; $6ea2: $ff
	xor  l                                           ; $6ea3: $ad
	rst  $38                                         ; $6ea4: $ff
	or   $ff                                         ; $6ea5: $f6 $ff
	rst  $20                                         ; $6ea7: $e7
	rst  $38                                         ; $6ea8: $ff
	xor  d                                           ; $6ea9: $aa
	rst  $38                                         ; $6eaa: $ff
	jp   $00c7                                       ; $6eab: $c3 $c7 $00


	add  c                                           ; $6eae: $81
	rst  $38                                         ; $6eaf: $ff
	ld   b, $7e                                      ; $6eb0: $06 $7e
	rst  $38                                         ; $6eb2: $ff
	cp   [hl]                                        ; $6eb3: $be
	rst  $38                                         ; $6eb4: $ff
	ld   a, $ff                                      ; $6eb5: $3e $ff
	ccf                                              ; $6eb7: $3f
	add  c                                           ; $6eb8: $81
	rst  $38                                         ; $6eb9: $ff
	nop                                              ; $6eba: $00
	ld   a, $80                                      ; $6ebb: $3e $80
	nop                                              ; $6ebd: $00
	add  c                                           ; $6ebe: $81
	rst  $38                                         ; $6ebf: $ff
	inc  c                                           ; $6ec0: $0c
	nop                                              ; $6ec1: $00
	rst  $38                                         ; $6ec2: $ff
	jr   @+$01                                       ; $6ec3: $18 $ff

	jr   @+$01                                       ; $6ec5: $18 $ff

	jr   @+$01                                       ; $6ec7: $18 $ff

	sbc  h                                           ; $6ec9: $9c
	rst  $38                                         ; $6eca: $ff
	sbc  h                                           ; $6ecb: $9c
	jr   jr_017_6ece                                 ; $6ecc: $18 $00

jr_017_6ece:
	add  c                                           ; $6ece: $81
	rst  $38                                         ; $6ecf: $ff
	inc  c                                           ; $6ed0: $0c
	ld   [hl], e                                     ; $6ed1: $73
	rst  $38                                         ; $6ed2: $ff
	ld   c, a                                        ; $6ed3: $4f
	rst  $38                                         ; $6ed4: $ff
	ld   [hl], e                                     ; $6ed5: $73
	rst  $38                                         ; $6ed6: $ff
	db   $d3                                         ; $6ed7: $d3
	rst  $38                                         ; $6ed8: $ff
	db   $db                                         ; $6ed9: $db
	rst  $38                                         ; $6eda: $ff
	push hl                                          ; $6edb: $e5
	and  d                                           ; $6edc: $a2
	nop                                              ; $6edd: $00
	add  c                                           ; $6ede: $81
	rst  $38                                         ; $6edf: $ff
	nop                                              ; $6ee0: $00
	rlca                                             ; $6ee1: $07
	add  c                                           ; $6ee2: $81
	rst  $38                                         ; $6ee3: $ff
	nop                                              ; $6ee4: $00
	sbc  a                                           ; $6ee5: $9f
	add  c                                           ; $6ee6: $81
	rst  $38                                         ; $6ee7: $ff
	nop                                              ; $6ee8: $00
	sbc  a                                           ; $6ee9: $9f
	add  b                                           ; $6eea: $80
	rst  $38                                         ; $6eeb: $ff
	ld   bc, $00f8                                   ; $6eec: $01 $f8 $00
	add  c                                           ; $6eef: $81
	rst  $38                                         ; $6ef0: $ff
	inc  c                                           ; $6ef1: $0c
	call nz, $ebff                                   ; $6ef2: $c4 $ff $eb
	rst  $38                                         ; $6ef5: $ff
	db   $fd                                         ; $6ef6: $fd
	rst  $38                                         ; $6ef7: $ff
	ld   sp, hl                                      ; $6ef8: $f9
	rst  $38                                         ; $6ef9: $ff
	ld   [$f0ff], a                                  ; $6efa: $ea $ff $f0
	ld   sp, $8100                                   ; $6efd: $31 $00 $81
	rst  $38                                         ; $6f00: $ff
	inc  c                                           ; $6f01: $0c
	sbc  h                                           ; $6f02: $9c
	rst  $38                                         ; $6f03: $ff
	ld   l, [hl]                                     ; $6f04: $6e
	rst  $38                                         ; $6f05: $ff
	adc  [hl]                                        ; $6f06: $8e
	rst  $38                                         ; $6f07: $ff
	call z, $bdff                                    ; $6f08: $cc $ff $bd
	rst  $38                                         ; $6f0b: $ff
	adc  $c3                                         ; $6f0c: $ce $c3
	nop                                              ; $6f0e: $00
	add  c                                           ; $6f0f: $81
	rst  $38                                         ; $6f10: $ff
	ld   de, $ff03                                   ; $6f11: $11 $03 $ff
	rrca                                             ; $6f14: $0f
	rst  $38                                         ; $6f15: $ff
	rrca                                             ; $6f16: $0f
	rst  $38                                         ; $6f17: $ff
	ld   a, a                                        ; $6f18: $7f
	rst  $38                                         ; $6f19: $ff
	adc  a                                           ; $6f1a: $8f
	rst  $38                                         ; $6f1b: $ff
	rrca                                             ; $6f1c: $0f
	db   $fc                                         ; $6f1d: $fc
	ccf                                              ; $6f1e: $3f
	rst  $38                                         ; $6f1f: $ff
	pop  af                                          ; $6f20: $f1
	rst  $38                                         ; $6f21: $ff
	ld   sp, $88ff                                   ; $6f22: $31 $ff $88
	nop                                              ; $6f25: $00
	nop                                              ; $6f26: $00
	or   e                                           ; $6f27: $b3
	add  c                                           ; $6f28: $81
	rst  $38                                         ; $6f29: $ff
	ld   bc, $ffb3                                   ; $6f2a: $01 $b3 $ff
	adc  b                                           ; $6f2d: $88
	nop                                              ; $6f2e: $00
	nop                                              ; $6f2f: $00
	dec  [hl]                                        ; $6f30: $35
	add  c                                           ; $6f31: $81
	rst  $38                                         ; $6f32: $ff
	ld   bc, $ff35                                   ; $6f33: $01 $35 $ff
	adc  b                                           ; $6f36: $88
	nop                                              ; $6f37: $00
	dec  b                                           ; $6f38: $05
	dec  l                                           ; $6f39: $2d
	rst  $38                                         ; $6f3a: $ff
	db   $ed                                         ; $6f3b: $ed
	rst  $38                                         ; $6f3c: $ff
	ccf                                              ; $6f3d: $3f
	rst  $38                                         ; $6f3e: $ff
	adc  b                                           ; $6f3f: $88
	nop                                              ; $6f40: $00
	nop                                              ; $6f41: $00
	ld   d, c                                        ; $6f42: $51
	add  c                                           ; $6f43: $81
	rst  $38                                         ; $6f44: $ff
	ld   bc, $ff51                                   ; $6f45: $01 $51 $ff
	adc  b                                           ; $6f48: $88
	nop                                              ; $6f49: $00
	dec  b                                           ; $6f4a: $05
	ldh  a, [c]                                      ; $6f4b: $f2
	rst  $38                                         ; $6f4c: $ff
	sub  d                                           ; $6f4d: $92
	rst  $38                                         ; $6f4e: $ff
	sbc  a                                           ; $6f4f: $9f
	rst  $38                                         ; $6f50: $ff
	adc  b                                           ; $6f51: $88
	nop                                              ; $6f52: $00
	dec  b                                           ; $6f53: $05
	ret  nz                                          ; $6f54: $c0

	rst  $38                                         ; $6f55: $ff
	ldh  a, [rIE]                                    ; $6f56: $f0 $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6f58: $cf
	rst  $38                                         ; $6f59: $ff
	adc  b                                           ; $6f5a: $88
	nop                                              ; $6f5b: $00
	nop                                              ; $6f5c: $00
	ld   l, h                                        ; $6f5d: $6c
	add  c                                           ; $6f5e: $81
	rst  $38                                         ; $6f5f: $ff
	ld   bc, $ff6c                                   ; $6f60: $01 $6c $ff
	adc  b                                           ; $6f63: $88
	nop                                              ; $6f64: $00
	dec  b                                           ; $6f65: $05
	xor  a                                           ; $6f66: $af
	rst  $38                                         ; $6f67: $ff
	db   $eb                                         ; $6f68: $eb
	rst  $38                                         ; $6f69: $ff
	cp   e                                           ; $6f6a: $bb
	rst  $38                                         ; $6f6b: $ff
	adc  c                                           ; $6f6c: $89
	nop                                              ; $6f6d: $00
	inc  b                                           ; $6f6e: $04
	rst  $38                                         ; $6f6f: $ff
	ld   a, a                                        ; $6f70: $7f
	rst  $38                                         ; $6f71: $ff
	add  b                                           ; $6f72: $80
	rst  $38                                         ; $6f73: $ff
	adc  b                                           ; $6f74: $88
	nop                                              ; $6f75: $00
	dec  b                                           ; $6f76: $05
	ld   a, e                                        ; $6f77: $7b
	rst  $38                                         ; $6f78: $ff
	add  h                                           ; $6f79: $84
	rst  $38                                         ; $6f7a: $ff
	nop                                              ; $6f7b: $00
	rst  $38                                         ; $6f7c: $ff
	adc  b                                           ; $6f7d: $88
	nop                                              ; $6f7e: $00
	nop                                              ; $6f7f: $00
	ld   a, $81                                      ; $6f80: $3e $81
	rst  $38                                         ; $6f82: $ff
	ld   bc, $ff3e                                   ; $6f83: $01 $3e $ff
	adc  b                                           ; $6f86: $88
	nop                                              ; $6f87: $00
	nop                                              ; $6f88: $00
	sbc  b                                           ; $6f89: $98
	add  c                                           ; $6f8a: $81
	rst  $38                                         ; $6f8b: $ff
	ld   bc, $ff98                                   ; $6f8c: $01 $98 $ff
	adc  b                                           ; $6f8f: $88
	nop                                              ; $6f90: $00
	dec  b                                           ; $6f91: $05
	dec  hl                                          ; $6f92: $2b
	rst  $38                                         ; $6f93: $ff
	ld   a, [$2eff]                                  ; $6f94: $fa $ff $2e
	rst  $38                                         ; $6f97: $ff
	adc  b                                           ; $6f98: $88
	nop                                              ; $6f99: $00

jr_017_6f9a:
	dec  b                                           ; $6f9a: $05
	jp   nz, $deff                                   ; $6f9b: $c2 $ff $de

	rst  $38                                         ; $6f9e: $ff
	db   $e3                                         ; $6f9f: $e3
	rst  $38                                         ; $6fa0: $ff
	adc  b                                           ; $6fa1: $88
	nop                                              ; $6fa2: $00
	dec  b                                           ; $6fa3: $05
	inc  c                                           ; $6fa4: $0c
	rst  $38                                         ; $6fa5: $ff
	rrca                                             ; $6fa6: $0f
	rst  $38                                         ; $6fa7: $ff
	db   $fc                                         ; $6fa8: $fc
	rst  $38                                         ; $6fa9: $ff
	adc  c                                           ; $6faa: $89
	nop                                              ; $6fab: $00
	add  c                                           ; $6fac: $81
	rst  $38                                         ; $6fad: $ff
	inc  c                                           ; $6fae: $0c
	ret  nz                                          ; $6faf: $c0

	rst  $38                                         ; $6fb0: $ff
	ldh  a, [rIE]                                    ; $6fb1: $f0 $ff
	ldh  a, [rIE]                                    ; $6fb3: $f0 $ff
	ldh  a, [rIE]                                    ; $6fb5: $f0 $ff
	ldh  a, [rIE]                                    ; $6fb7: $f0 $ff
	ldh  a, [rIE]                                    ; $6fb9: $f0 $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6fbb: $cf
	add  c                                           ; $6fbc: $81
	rst  $38                                         ; $6fbd: $ff
	inc  c                                           ; $6fbe: $0c
	inc  c                                           ; $6fbf: $0c
	rst  $38                                         ; $6fc0: $ff
	ccf                                              ; $6fc1: $3f
	rst  $38                                         ; $6fc2: $ff
	ccf                                              ; $6fc3: $3f
	rst  $38                                         ; $6fc4: $ff
	dec  bc                                          ; $6fc5: $0b
	rst  $38                                         ; $6fc6: $ff
	rrca                                             ; $6fc7: $0f
	rst  $38                                         ; $6fc8: $ff
	dec  sp                                          ; $6fc9: $3b
	rst  $38                                         ; $6fca: $ff
	call z, $ff81                                    ; $6fcb: $cc $81 $ff
	ld   [bc], a                                     ; $6fce: $02
	ld   sp, hl                                      ; $6fcf: $f9
	rst  $38                                         ; $6fd0: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6fd1: $cf
	add  c                                           ; $6fd2: $81
	rst  $38                                         ; $6fd3: $ff
	ld   b, $7e                                      ; $6fd4: $06 $7e
	rst  $38                                         ; $6fd6: $ff
	scf                                              ; $6fd7: $37
	rst  $38                                         ; $6fd8: $ff
	or   l                                           ; $6fd9: $b5
	rst  $38                                         ; $6fda: $ff
	jp   z, $ff81                                    ; $6fdb: $ca $81 $ff

	nop                                              ; $6fde: $00
	call nc, $ff81                                   ; $6fdf: $d4 $81 $ff
	ld   [$ffde], sp                                 ; $6fe2: $08 $de $ff
	jp   z, $edff                                    ; $6fe5: $ca $ff $ed

	rst  $38                                         ; $6fe8: $ff
	db   $ed                                         ; $6fe9: $ed
	rst  $38                                         ; $6fea: $ff
	ret  nz                                          ; $6feb: $c0

	add  c                                           ; $6fec: $81
	rst  $38                                         ; $6fed: $ff
	inc  c                                           ; $6fee: $0c
	and  [hl]                                        ; $6fef: $a6
	rst  $38                                         ; $6ff0: $ff
	rst  $28                                         ; $6ff1: $ef
	rst  $38                                         ; $6ff2: $ff
	rst  $30                                         ; $6ff3: $f7
	rst  $38                                         ; $6ff4: $ff
	rst  ToBoot                                         ; $6ff5: $c7
	rst  $38                                         ; $6ff6: $ff
	ld   a, a                                        ; $6ff7: $7f
	rst  $38                                         ; $6ff8: $ff
	ld   b, a                                        ; $6ff9: $47
	rst  $38                                         ; $6ffa: $ff
	cp   [hl]                                        ; $6ffb: $be
	add  c                                           ; $6ffc: $81
	rst  $38                                         ; $6ffd: $ff
	ld   a, [bc]                                     ; $6ffe: $0a
	ld   [$beff], sp                                 ; $6fff: $08 $ff $be
	rst  $38                                         ; $7002: $ff
	cp   [hl]                                        ; $7003: $be
	rst  $38                                         ; $7004: $ff
	cp   [hl]                                        ; $7005: $be
	rst  $38                                         ; $7006: $ff
	cp   [hl]                                        ; $7007: $be
	rst  $38                                         ; $7008: $ff
	ld   [$ff83], sp                                 ; $7009: $08 $83 $ff
	inc  b                                           ; $700c: $04
	add  hl, sp                                      ; $700d: $39
	rst  $38                                         ; $700e: $ff
	and  $ff                                         ; $700f: $e6 $ff
	db   $eb                                         ; $7011: $eb
	add  e                                           ; $7012: $83
	rst  $38                                         ; $7013: $ff
	ld   [bc], a                                     ; $7014: $02
	db   $eb                                         ; $7015: $eb
	rst  $38                                         ; $7016: $ff
	jr   nz, jr_017_6f9a                             ; $7017: $20 $81

	rst  $38                                         ; $7019: $ff
	inc  b                                           ; $701a: $04
	add  e                                           ; $701b: $83
	rst  $38                                         ; $701c: $ff
	ld   l, a                                        ; $701d: $6f
	rst  $38                                         ; $701e: $ff
	ld   a, a                                        ; $701f: $7f
	add  c                                           ; $7020: $81
	rst  $38                                         ; $7021: $ff
	inc  b                                           ; $7022: $04
	db   $e3                                         ; $7023: $e3
	rst  $38                                         ; $7024: $ff
	ld   [hl], a                                     ; $7025: $77
	rst  $38                                         ; $7026: $ff
	rlca                                             ; $7027: $07
	add  c                                           ; $7028: $81
	rst  $38                                         ; $7029: $ff
	inc  c                                           ; $702a: $0c
	ld   [de], a                                     ; $702b: $12
	rst  $38                                         ; $702c: $ff
	xor  l                                           ; $702d: $ad
	rst  $38                                         ; $702e: $ff
	or   $ff                                         ; $702f: $f6 $ff
	rst  $20                                         ; $7031: $e7
	rst  $38                                         ; $7032: $ff
	xor  d                                           ; $7033: $aa
	rst  $38                                         ; $7034: $ff
	jp   $38ff                                       ; $7035: $c3 $ff $38


	add  c                                           ; $7038: $81
	rst  $38                                         ; $7039: $ff
	ld   b, $7e                                      ; $703a: $06 $7e
	rst  $38                                         ; $703c: $ff
	cp   [hl]                                        ; $703d: $be
	rst  $38                                         ; $703e: $ff
	ld   a, $ff                                      ; $703f: $3e $ff
	ccf                                              ; $7041: $3f
	add  c                                           ; $7042: $81
	rst  $38                                         ; $7043: $ff
	nop                                              ; $7044: $00
	ld   a, $83                                      ; $7045: $3e $83
	rst  $38                                         ; $7047: $ff
	inc  c                                           ; $7048: $0c
	nop                                              ; $7049: $00
	rst  $38                                         ; $704a: $ff
	jr   @+$01                                       ; $704b: $18 $ff

	jr   @+$01                                       ; $704d: $18 $ff

	jr   @+$01                                       ; $704f: $18 $ff

	sbc  h                                           ; $7051: $9c
	rst  $38                                         ; $7052: $ff
	sbc  h                                           ; $7053: $9c
	rst  $38                                         ; $7054: $ff
	rst  $20                                         ; $7055: $e7
	add  c                                           ; $7056: $81
	rst  $38                                         ; $7057: $ff
	inc  c                                           ; $7058: $0c
	ld   [hl], e                                     ; $7059: $73
	rst  $38                                         ; $705a: $ff
	ld   c, a                                        ; $705b: $4f
	rst  $38                                         ; $705c: $ff
	ld   [hl], e                                     ; $705d: $73
	rst  $38                                         ; $705e: $ff
	db   $d3                                         ; $705f: $d3
	rst  $38                                         ; $7060: $ff
	db   $db                                         ; $7061: $db
	rst  $38                                         ; $7062: $ff
	push hl                                          ; $7063: $e5
	rst  $38                                         ; $7064: $ff
	ld   e, l                                        ; $7065: $5d
	add  c                                           ; $7066: $81
	rst  $38                                         ; $7067: $ff
	nop                                              ; $7068: $00
	rlca                                             ; $7069: $07
	add  c                                           ; $706a: $81
	rst  $38                                         ; $706b: $ff
	nop                                              ; $706c: $00
	sbc  a                                           ; $706d: $9f
	add  c                                           ; $706e: $81
	rst  $38                                         ; $706f: $ff
	nop                                              ; $7070: $00
	sbc  a                                           ; $7071: $9f
	add  c                                           ; $7072: $81
	rst  $38                                         ; $7073: $ff
	nop                                              ; $7074: $00
	rlca                                             ; $7075: $07
	add  c                                           ; $7076: $81
	rst  $38                                         ; $7077: $ff
	inc  c                                           ; $7078: $0c
	call nz, $ebff                                   ; $7079: $c4 $ff $eb
	rst  $38                                         ; $707c: $ff
	db   $fd                                         ; $707d: $fd
	rst  $38                                         ; $707e: $ff
	ld   sp, hl                                      ; $707f: $f9
	rst  $38                                         ; $7080: $ff
	ld   [$f0ff], a                                  ; $7081: $ea $ff $f0
	rst  $38                                         ; $7084: $ff
	adc  $81                                         ; $7085: $ce $81
	rst  $38                                         ; $7087: $ff
	inc  c                                           ; $7088: $0c
	sbc  h                                           ; $7089: $9c
	rst  $38                                         ; $708a: $ff
	ld   l, [hl]                                     ; $708b: $6e
	rst  $38                                         ; $708c: $ff
	adc  [hl]                                        ; $708d: $8e
	rst  $38                                         ; $708e: $ff
	call z, $bdff                                    ; $708f: $cc $ff $bd
	rst  $38                                         ; $7092: $ff
	adc  $ff                                         ; $7093: $ce $ff
	inc  a                                           ; $7095: $3c
	add  c                                           ; $7096: $81
	rst  $38                                         ; $7097: $ff
	ld   c, $03                                      ; $7098: $0e $03
	rst  $38                                         ; $709a: $ff
	rrca                                             ; $709b: $0f
	rst  $38                                         ; $709c: $ff
	rrca                                             ; $709d: $0f
	rst  $38                                         ; $709e: $ff
	ld   a, a                                        ; $709f: $7f
	rst  $38                                         ; $70a0: $ff
	adc  a                                           ; $70a1: $8f
	rst  $38                                         ; $70a2: $ff
	rrca                                             ; $70a3: $0f
	rst  $38                                         ; $70a4: $ff
	inc  a                                           ; $70a5: $3c
	rst  $38                                         ; $70a6: $ff
	pop  af                                          ; $70a7: $f1
	add  c                                           ; $70a8: $81
	rst  $38                                         ; $70a9: $ff

jr_017_70aa:
	ld   a, [bc]                                     ; $70aa: $0a
	pop  af                                          ; $70ab: $f1
	rst  $38                                         ; $70ac: $ff
	ldh  a, [rIE]                                    ; $70ad: $f0 $ff
	xor  $ff                                         ; $70af: $ee $ff
	sbc  [hl]                                        ; $70b1: $9e
	rst  $38                                         ; $70b2: $ff
	cp   a                                           ; $70b3: $bf
	rst  $38                                         ; $70b4: $ff

jr_017_70b5:
	ld   c, h                                        ; $70b5: $4c
	add  l                                           ; $70b6: $85
	rst  $38                                         ; $70b7: $ff
	ld   [$ff7b], sp                                 ; $70b8: $08 $7b $ff
	ld   a, $ff                                      ; $70bb: $3e $ff
	ld   l, c                                        ; $70bd: $69
	rst  $38                                         ; $70be: $ff
	sbc  a                                           ; $70bf: $9f
	rst  $38                                         ; $70c0: $ff
	jp   z, $ff81                                    ; $70c1: $ca $81 $ff

	ld   d, $fe                                      ; $70c4: $16 $fe
	rst  $38                                         ; $70c6: $ff
	ld   a, [hl-]                                    ; $70c7: $3a
	rst  $38                                         ; $70c8: $ff
	cp   a                                           ; $70c9: $bf
	rst  $38                                         ; $70ca: $ff
	ld   a, l                                        ; $70cb: $7d
	rst  $38                                         ; $70cc: $ff
	db   $d3                                         ; $70cd: $d3
	rst  $38                                         ; $70ce: $ff
	ldh  [rIE], a                                    ; $70cf: $e0 $ff
	jp   nc, $edff                                   ; $70d1: $d2 $ff $ed

	rst  $38                                         ; $70d4: $ff
	call z, $ccff                                    ; $70d5: $cc $ff $cc
	rst  $38                                         ; $70d8: $ff
	call z, $feff                                    ; $70d9: $cc $ff $fe
	add  c                                           ; $70dc: $81
	rst  $38                                         ; $70dd: $ff
	ld   [bc], a                                     ; $70de: $02
	ldh  a, [c]                                      ; $70df: $f2
	rst  $38                                         ; $70e0: $ff
	xor  [hl]                                        ; $70e1: $ae
	add  c                                           ; $70e2: $81
	rst  $38                                         ; $70e3: $ff
	jr   jr_017_70b5                                 ; $70e4: $18 $cf

	rst  $38                                         ; $70e6: $ff
	rst  $30                                         ; $70e7: $f7
	rst  $38                                         ; $70e8: $ff
	ld   a, a                                        ; $70e9: $7f
	rst  $38                                         ; $70ea: $ff
	xor  a                                           ; $70eb: $af
	rst  $38                                         ; $70ec: $ff
	rst  JumpTable                                         ; $70ed: $df
	rst  $38                                         ; $70ee: $ff
	ld   h, [hl]                                     ; $70ef: $66
	rst  $38                                         ; $70f0: $ff
	dec  c                                           ; $70f1: $0d
	rst  $38                                         ; $70f2: $ff
	sub  d                                           ; $70f3: $92
	rst  $38                                         ; $70f4: $ff
	sub  d                                           ; $70f5: $92
	rst  $38                                         ; $70f6: $ff
	ld   d, e                                        ; $70f7: $53
	rst  $38                                         ; $70f8: $ff
	di                                               ; $70f9: $f3
	rst  $38                                         ; $70fa: $ff
	ld   d, a                                        ; $70fb: $57
	rst  $38                                         ; $70fc: $ff
	dec  b                                           ; $70fd: $05
	add  c                                           ; $70fe: $81
	rst  $38                                         ; $70ff: $ff
	inc  b                                           ; $7100: $04
	ccf                                              ; $7101: $3f
	rst  $38                                         ; $7102: $ff
	ldh  a, [rIE]                                    ; $7103: $f0 $ff
	ei                                               ; $7105: $fb
	add  l                                           ; $7106: $85
	rst  $38                                         ; $7107: $ff
	inc  b                                           ; $7108: $04
	ei                                               ; $7109: $fb
	rst  $38                                         ; $710a: $ff
	jr   nc, @+$01                                   ; $710b: $30 $ff

	sub  e                                           ; $710d: $93
	add  c                                           ; $710e: $81
	rst  $38                                         ; $710f: $ff
	ld   [bc], a                                     ; $7110: $02
	rst  $28                                         ; $7111: $ef
	rst  $38                                         ; $7112: $ff
	db   $e3                                         ; $7113: $e3
	add  l                                           ; $7114: $85
	rst  $38                                         ; $7115: $ff
	db   $10                                         ; $7116: $10
	sbc  a                                           ; $7117: $9f
	rst  $38                                         ; $7118: $ff
	ld   d, b                                        ; $7119: $50
	rst  $38                                         ; $711a: $ff
	db   $eb                                         ; $711b: $eb
	rst  $38                                         ; $711c: $ff
	and  e                                           ; $711d: $a3
	rst  $38                                         ; $711e: $ff
	rst  $10                                         ; $711f: $d7
	rst  $38                                         ; $7120: $ff
	db   $eb                                         ; $7121: $eb
	rst  $38                                         ; $7122: $ff
	rst  $20                                         ; $7123: $e7
	rst  $38                                         ; $7124: $ff
	ei                                               ; $7125: $fb
	rst  $38                                         ; $7126: $ff
	jr   c, jr_017_70aa                              ; $7127: $38 $81

	rst  $38                                         ; $7129: $ff
	ld   [bc], a                                     ; $712a: $02
	ld   a, a                                        ; $712b: $7f
	rst  $38                                         ; $712c: $ff
	ccf                                              ; $712d: $3f
	add  e                                           ; $712e: $83
	rst  $38                                         ; $712f: $ff
	nop                                              ; $7130: $00
	cp   a                                           ; $7131: $bf
	add  e                                           ; $7132: $83
	rst  $38                                         ; $7133: $ff
	db   $10                                         ; $7134: $10
	add  h                                           ; $7135: $84
	rst  $38                                         ; $7136: $ff
	add  h                                           ; $7137: $84
	rst  $38                                         ; $7138: $ff
	nop                                              ; $7139: $00
	rst  $38                                         ; $713a: $ff
	inc  bc                                          ; $713b: $03
	rst  $38                                         ; $713c: $ff
	add  e                                           ; $713d: $83
	rst  $38                                         ; $713e: $ff
	add  e                                           ; $713f: $83
	rst  $38                                         ; $7140: $ff
	inc  bc                                          ; $7141: $03
	rst  $38                                         ; $7142: $ff
	nop                                              ; $7143: $00
	rst  $38                                         ; $7144: $ff
	pop  bc                                          ; $7145: $c1
	add  c                                           ; $7146: $81
	rst  $38                                         ; $7147: $ff
	inc  c                                           ; $7148: $0c
	set  7, a                                        ; $7149: $cb $ff
	call $fdff                                       ; $714b: $cd $ff $fd
	rst  $38                                         ; $714e: $ff
	rst  $28                                         ; $714f: $ef
	rst  $38                                         ; $7150: $ff
	cp   $ff                                         ; $7151: $fe $ff
	call nc, Call_017_67ff                           ; $7153: $d4 $ff $67
	add  c                                           ; $7156: $81
	rst  $38                                         ; $7157: $ff
	ld   [bc], a                                     ; $7158: $02
	sbc  a                                           ; $7159: $9f
	rst  $38                                         ; $715a: $ff
	sbc  a                                           ; $715b: $9f
	add  e                                           ; $715c: $83
	rst  $38                                         ; $715d: $ff
	ld   [hl-], a                                    ; $715e: $32
	sbc  e                                           ; $715f: $9b
	rst  $38                                         ; $7160: $ff
	inc  bc                                          ; $7161: $03
	rst  $38                                         ; $7162: $ff
	call nc, $faff                                   ; $7163: $d4 $ff $fa
	rst  $38                                         ; $7166: $ff
	add  sp, -$01                                    ; $7167: $e8 $ff
	push af                                          ; $7169: $f5
	rst  $38                                         ; $716a: $ff
	ld   a, [$f9ff]                                  ; $716b: $fa $ff $f9
	rst  $38                                         ; $716e: $ff
	cp   $ff                                         ; $716f: $fe $ff
	adc  $ff                                         ; $7171: $ce $ff
	dec  a                                           ; $7173: $3d
	rst  $38                                         ; $7174: $ff
	sbc  $ff                                         ; $7175: $de $ff
	adc  $ff                                         ; $7177: $ce $ff
	cp   $ff                                         ; $7179: $fe $ff
	cp   $ff                                         ; $717b: $fe $ff
	db   $ec                                         ; $717d: $ec
	rst  $38                                         ; $717e: $ff
	db   $fd                                         ; $717f: $fd
	rst  $38                                         ; $7180: $ff
	inc  a                                           ; $7181: $3c
	rst  $38                                         ; $7182: $ff
	di                                               ; $7183: $f3
	rst  $38                                         ; $7184: $ff
	rrca                                             ; $7185: $0f
	rst  $38                                         ; $7186: $ff
	rrca                                             ; $7187: $0f
	rst  $38                                         ; $7188: $ff
	rrca                                             ; $7189: $0f
	rst  $38                                         ; $718a: $ff
	rlca                                             ; $718b: $07
	rst  $38                                         ; $718c: $ff
	ld   h, e                                        ; $718d: $63
	rst  $38                                         ; $718e: $ff
	db   $eb                                         ; $718f: $eb
	rst  $38                                         ; $7190: $ff
	ld   [hl], e                                     ; $7191: $73
	add  b                                           ; $7192: $80
	rst  $38                                         ; $7193: $ff
	add  b                                           ; $7194: $80
	nop                                              ; $7195: $00
	inc  c                                           ; $7196: $0c
	rst  $38                                         ; $7197: $ff
	ret  nz                                          ; $7198: $c0

	rst  $38                                         ; $7199: $ff
	ldh  a, [rIE]                                    ; $719a: $f0 $ff
	ldh  a, [rIE]                                    ; $719c: $f0 $ff
	ldh  a, [rIE]                                    ; $719e: $f0 $ff
	ldh  a, [rIE]                                    ; $71a0: $f0 $ff
	ldh  a, [$30]                                    ; $71a2: $f0 $30
	add  c                                           ; $71a4: $81
	nop                                              ; $71a5: $00
	inc  c                                           ; $71a6: $0c
	rst  $38                                         ; $71a7: $ff
	inc  c                                           ; $71a8: $0c
	rst  $38                                         ; $71a9: $ff
	ccf                                              ; $71aa: $3f
	rst  $38                                         ; $71ab: $ff
	ccf                                              ; $71ac: $3f
	rst  $38                                         ; $71ad: $ff
	dec  bc                                          ; $71ae: $0b
	rst  $38                                         ; $71af: $ff
	rrca                                             ; $71b0: $0f
	rst  $38                                         ; $71b1: $ff
	dec  sp                                          ; $71b2: $3b
	inc  sp                                          ; $71b3: $33
	add  c                                           ; $71b4: $81
	nop                                              ; $71b5: $00
	inc  bc                                          ; $71b6: $03
	rst  $38                                         ; $71b7: $ff
	ld   sp, hl                                      ; $71b8: $f9
	rst  $38                                         ; $71b9: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $71ba: $cf
	add  c                                           ; $71bb: $81
	rst  $38                                         ; $71bc: $ff
	dec  b                                           ; $71bd: $05
	ld   a, [hl]                                     ; $71be: $7e
	rst  $38                                         ; $71bf: $ff
	scf                                              ; $71c0: $37
	rst  $38                                         ; $71c1: $ff

jr_017_71c2:
	or   l                                           ; $71c2: $b5
	dec  [hl]                                        ; $71c3: $35
	add  c                                           ; $71c4: $81
	nop                                              ; $71c5: $00
	ld   bc, $d4ff                                   ; $71c6: $01 $ff $d4
	add  c                                           ; $71c9: $81
	rst  $38                                         ; $71ca: $ff
	rlca                                             ; $71cb: $07
	sbc  $ff                                         ; $71cc: $de $ff
	jp   z, $edff                                    ; $71ce: $ca $ff $ed

	rst  $38                                         ; $71d1: $ff
	db   $ed                                         ; $71d2: $ed
	ccf                                              ; $71d3: $3f
	add  c                                           ; $71d4: $81
	nop                                              ; $71d5: $00
	inc  c                                           ; $71d6: $0c
	rst  $38                                         ; $71d7: $ff
	and  [hl]                                        ; $71d8: $a6
	rst  $38                                         ; $71d9: $ff
	rst  $28                                         ; $71da: $ef
	rst  $38                                         ; $71db: $ff
	rst  $30                                         ; $71dc: $f7
	rst  $38                                         ; $71dd: $ff
	rst  ToBoot                                         ; $71de: $c7
	rst  $38                                         ; $71df: $ff
	ld   a, a                                        ; $71e0: $7f
	rst  $38                                         ; $71e1: $ff
	ld   b, a                                        ; $71e2: $47
	ld   b, c                                        ; $71e3: $41
	add  c                                           ; $71e4: $81
	nop                                              ; $71e5: $00
	dec  bc                                          ; $71e6: $0b
	rst  $38                                         ; $71e7: $ff
	ld   [$beff], sp                                 ; $71e8: $08 $ff $be
	rst  $38                                         ; $71eb: $ff
	cp   [hl]                                        ; $71ec: $be
	rst  $38                                         ; $71ed: $ff
	cp   [hl]                                        ; $71ee: $be
	rst  $38                                         ; $71ef: $ff
	cp   [hl]                                        ; $71f0: $be
	rst  $38                                         ; $71f1: $ff
	ld   [$0082], sp                                 ; $71f2: $08 $82 $00
	dec  b                                           ; $71f5: $05
	rst  $38                                         ; $71f6: $ff
	add  hl, sp                                      ; $71f7: $39
	rst  $38                                         ; $71f8: $ff
	and  $ff                                         ; $71f9: $e6 $ff
	db   $eb                                         ; $71fb: $eb
	add  e                                           ; $71fc: $83
	rst  $38                                         ; $71fd: $ff
	ld   bc, $dfeb                                   ; $71fe: $01 $eb $df
	add  c                                           ; $7201: $81
	nop                                              ; $7202: $00
	dec  b                                           ; $7203: $05
	rst  $38                                         ; $7204: $ff
	add  e                                           ; $7205: $83
	rst  $38                                         ; $7206: $ff
	ld   l, a                                        ; $7207: $6f
	rst  $38                                         ; $7208: $ff
	ld   a, a                                        ; $7209: $7f
	add  c                                           ; $720a: $81
	rst  $38                                         ; $720b: $ff
	inc  bc                                          ; $720c: $03
	db   $e3                                         ; $720d: $e3
	rst  $38                                         ; $720e: $ff
	ld   [hl], a                                     ; $720f: $77
	ld   hl, sp-$7f                                  ; $7210: $f8 $81
	nop                                              ; $7212: $00
	inc  c                                           ; $7213: $0c
	rst  $38                                         ; $7214: $ff
	ld   [de], a                                     ; $7215: $12
	rst  $38                                         ; $7216: $ff
	xor  l                                           ; $7217: $ad
	rst  $38                                         ; $7218: $ff
	or   $ff                                         ; $7219: $f6 $ff
	rst  $20                                         ; $721b: $e7
	rst  $38                                         ; $721c: $ff
	xor  d                                           ; $721d: $aa

jr_017_721e:
	rst  $38                                         ; $721e: $ff
	jp   $81c7                                       ; $721f: $c3 $c7 $81


	nop                                              ; $7222: $00
	rlca                                             ; $7223: $07
	rst  $38                                         ; $7224: $ff
	ld   a, [hl]                                     ; $7225: $7e
	rst  $38                                         ; $7226: $ff
	cp   [hl]                                        ; $7227: $be
	rst  $38                                         ; $7228: $ff
	ld   a, $ff                                      ; $7229: $3e $ff
	ccf                                              ; $722b: $3f
	add  c                                           ; $722c: $81
	rst  $38                                         ; $722d: $ff
	nop                                              ; $722e: $00
	ld   a, $82                                      ; $722f: $3e $82
	nop                                              ; $7231: $00
	inc  c                                           ; $7232: $0c
	rst  $38                                         ; $7233: $ff
	nop                                              ; $7234: $00
	rst  $38                                         ; $7235: $ff
	jr   @+$01                                       ; $7236: $18 $ff

	jr   @+$01                                       ; $7238: $18 $ff

	jr   @+$01                                       ; $723a: $18 $ff

	sbc  h                                           ; $723c: $9c
	rst  $38                                         ; $723d: $ff
	sbc  h                                           ; $723e: $9c
	jr   jr_017_71c2                                 ; $723f: $18 $81

	nop                                              ; $7241: $00
	inc  c                                           ; $7242: $0c
	rst  $38                                         ; $7243: $ff
	ld   [hl], e                                     ; $7244: $73
	rst  $38                                         ; $7245: $ff
	ld   c, a                                        ; $7246: $4f
	rst  $38                                         ; $7247: $ff
	ld   [hl], e                                     ; $7248: $73
	rst  $38                                         ; $7249: $ff
	db   $d3                                         ; $724a: $d3
	rst  $38                                         ; $724b: $ff
	db   $db                                         ; $724c: $db
	rst  $38                                         ; $724d: $ff
	push hl                                          ; $724e: $e5
	and  d                                           ; $724f: $a2
	add  c                                           ; $7250: $81
	nop                                              ; $7251: $00
	ld   bc, $07ff                                   ; $7252: $01 $ff $07
	add  c                                           ; $7255: $81
	rst  $38                                         ; $7256: $ff
	nop                                              ; $7257: $00
	sbc  a                                           ; $7258: $9f
	add  c                                           ; $7259: $81
	rst  $38                                         ; $725a: $ff
	nop                                              ; $725b: $00
	sbc  a                                           ; $725c: $9f
	add  b                                           ; $725d: $80
	rst  $38                                         ; $725e: $ff
	nop                                              ; $725f: $00
	ld   hl, sp-$7f                                  ; $7260: $f8 $81
	nop                                              ; $7262: $00
	inc  c                                           ; $7263: $0c
	rst  $38                                         ; $7264: $ff
	call nz, $ebff                                   ; $7265: $c4 $ff $eb
	rst  $38                                         ; $7268: $ff
	db   $fd                                         ; $7269: $fd
	rst  $38                                         ; $726a: $ff
	ld   sp, hl                                      ; $726b: $f9
	rst  $38                                         ; $726c: $ff
	ld   [$f0ff], a                                  ; $726d: $ea $ff $f0
	ld   sp, $0081                                   ; $7270: $31 $81 $00
	inc  c                                           ; $7273: $0c
	rst  $38                                         ; $7274: $ff
	sbc  h                                           ; $7275: $9c
	rst  $38                                         ; $7276: $ff
	ld   l, [hl]                                     ; $7277: $6e
	rst  $38                                         ; $7278: $ff
	adc  [hl]                                        ; $7279: $8e
	rst  $38                                         ; $727a: $ff
	call z, $bdff                                    ; $727b: $cc $ff $bd
	rst  $38                                         ; $727e: $ff
	adc  $c3                                         ; $727f: $ce $c3
	add  c                                           ; $7281: $81
	nop                                              ; $7282: $00
	dec  c                                           ; $7283: $0d
	rst  $38                                         ; $7284: $ff
	inc  bc                                          ; $7285: $03
	rst  $38                                         ; $7286: $ff
	rrca                                             ; $7287: $0f
	rst  $38                                         ; $7288: $ff
	rrca                                             ; $7289: $0f
	rst  $38                                         ; $728a: $ff
	ld   a, a                                        ; $728b: $7f
	rst  $38                                         ; $728c: $ff
	adc  a                                           ; $728d: $8f
	rst  $38                                         ; $728e: $ff
	rrca                                             ; $728f: $0f
	db   $fc                                         ; $7290: $fc
	nop                                              ; $7291: $00
	add  e                                           ; $7292: $83
	rst  $38                                         ; $7293: $ff
	ld   bc, $ff00                                   ; $7294: $01 $00 $ff
	add  b                                           ; $7297: $80
	nop                                              ; $7298: $00
	add  b                                           ; $7299: $80
	ccf                                              ; $729a: $3f
	add  b                                           ; $729b: $80
	jr   nc, jr_017_721e                             ; $729c: $30 $80

	ccf                                              ; $729e: $3f
	nop                                              ; $729f: $00
	nop                                              ; $72a0: $00
	add  e                                           ; $72a1: $83
	rst  $38                                         ; $72a2: $ff
	ld   bc, $ff00                                   ; $72a3: $01 $00 $ff
	add  b                                           ; $72a6: $80
	nop                                              ; $72a7: $00
	add  b                                           ; $72a8: $80
	di                                               ; $72a9: $f3
	add  b                                           ; $72aa: $80
	inc  sp                                          ; $72ab: $33
	add  b                                           ; $72ac: $80
	di                                               ; $72ad: $f3
	nop                                              ; $72ae: $00
	nop                                              ; $72af: $00

jr_017_72b0:
	add  e                                           ; $72b0: $83
	rst  $38                                         ; $72b1: $ff
	ld   bc, $ff00                                   ; $72b2: $01 $00 $ff
	add  b                                           ; $72b5: $80
	nop                                              ; $72b6: $00
	add  b                                           ; $72b7: $80
	ld   b, $82                                      ; $72b8: $06 $82
	ld   [hl], $00                                   ; $72ba: $36 $00
	nop                                              ; $72bc: $00
	add  e                                           ; $72bd: $83
	rst  $38                                         ; $72be: $ff
	ld   bc, $ff00                                   ; $72bf: $01 $00 $ff
	add  b                                           ; $72c2: $80
	nop                                              ; $72c3: $00
	add  d                                           ; $72c4: $82
	dec  hl                                          ; $72c5: $2b
	add  b                                           ; $72c6: $80
	ld   a, [bc]                                     ; $72c7: $0a
	nop                                              ; $72c8: $00
	nop                                              ; $72c9: $00
	add  e                                           ; $72ca: $83
	rst  $38                                         ; $72cb: $ff
	ld   bc, $ff00                                   ; $72cc: $01 $00 $ff
	add  b                                           ; $72cf: $80
	nop                                              ; $72d0: $00
	add  b                                           ; $72d1: $80
	ld   e, c                                        ; $72d2: $59
	add  b                                           ; $72d3: $80
	ld   c, c                                        ; $72d4: $49
	add  b                                           ; $72d5: $80
	ld   b, c                                        ; $72d6: $41
	nop                                              ; $72d7: $00
	nop                                              ; $72d8: $00
	add  e                                           ; $72d9: $83
	rst  $38                                         ; $72da: $ff
	ld   bc, $ff00                                   ; $72db: $01 $00 $ff
	add  b                                           ; $72de: $80
	nop                                              ; $72df: $00
	add  b                                           ; $72e0: $80
	rst  $30                                         ; $72e1: $f7
	add  b                                           ; $72e2: $80
	or   [hl]                                        ; $72e3: $b6
	add  b                                           ; $72e4: $80
	rst  $30                                         ; $72e5: $f7
	nop                                              ; $72e6: $00
	nop                                              ; $72e7: $00
	add  e                                           ; $72e8: $83
	rst  $38                                         ; $72e9: $ff
	ld   bc, $ff00                                   ; $72ea: $01 $00 $ff
	add  b                                           ; $72ed: $80
	nop                                              ; $72ee: $00
	add  b                                           ; $72ef: $80
	add  $80                                         ; $72f0: $c6 $80
	rst  JumpTable                                         ; $72f2: $df
	add  b                                           ; $72f3: $80
	rlc  b                                           ; $72f4: $cb $00
	nop                                              ; $72f6: $00
	add  e                                           ; $72f7: $83
	rst  $38                                         ; $72f8: $ff
	ld   bc, $ff00                                   ; $72f9: $01 $00 $ff
	add  b                                           ; $72fc: $80
	nop                                              ; $72fd: $00
	add  b                                           ; $72fe: $80
	ld   a, h                                        ; $72ff: $7c
	add  b                                           ; $7300: $80
	db   $ec                                         ; $7301: $ec
	add  b                                           ; $7302: $80

jr_017_7303:
	ld   l, h                                        ; $7303: $6c
	nop                                              ; $7304: $00
	nop                                              ; $7305: $00
	add  e                                           ; $7306: $83
	rst  $38                                         ; $7307: $ff
	ld   bc, $ff00                                   ; $7308: $01 $00 $ff
	add  b                                           ; $730b: $80
	nop                                              ; $730c: $00
	add  b                                           ; $730d: $80
	db   $ed                                         ; $730e: $ed
	add  b                                           ; $730f: $80
	cp   a                                           ; $7310: $bf
	add  b                                           ; $7311: $80
	or   [hl]                                        ; $7312: $b6
	nop                                              ; $7313: $00
	nop                                              ; $7314: $00
	add  e                                           ; $7315: $83
	rst  $38                                         ; $7316: $ff
	ld   bc, $ff00                                   ; $7317: $01 $00 $ff
	add  b                                           ; $731a: $80
	nop                                              ; $731b: $00
	add  b                                           ; $731c: $80
	add  c                                           ; $731d: $81
	add  b                                           ; $731e: $80
	ret  nz                                          ; $731f: $c0

	add  b                                           ; $7320: $80
	ld   bc, $0000                                   ; $7321: $01 $00 $00
	add  e                                           ; $7324: $83
	rst  $38                                         ; $7325: $ff
	ld   bc, $ff00                                   ; $7326: $01 $00 $ff
	add  b                                           ; $7329: $80
	nop                                              ; $732a: $00
	add  b                                           ; $732b: $80
	rst  $38                                         ; $732c: $ff
	add  b                                           ; $732d: $80
	jr   jr_017_72b0                                 ; $732e: $18 $80

	rst  $38                                         ; $7330: $ff
	nop                                              ; $7331: $00
	nop                                              ; $7332: $00
	add  e                                           ; $7333: $83
	rst  $38                                         ; $7334: $ff
	ld   bc, $ff00                                   ; $7335: $01 $00 $ff
	add  b                                           ; $7338: $80
	nop                                              ; $7339: $00
	add  b                                           ; $733a: $80
	adc  h                                           ; $733b: $8c
	add  b                                           ; $733c: $80
	inc  a                                           ; $733d: $3c
	add  b                                           ; $733e: $80
	or   b                                           ; $733f: $b0
	nop                                              ; $7340: $00
	nop                                              ; $7341: $00
	add  e                                           ; $7342: $83
	rst  $38                                         ; $7343: $ff
	ld   bc, $ff00                                   ; $7344: $01 $00 $ff
	add  b                                           ; $7347: $80
	nop                                              ; $7348: $00
	add  d                                           ; $7349: $82
	ld   hl, sp-$80                                  ; $734a: $f8 $80
	sbc  b                                           ; $734c: $98
	nop                                              ; $734d: $00
	nop                                              ; $734e: $00
	add  e                                           ; $734f: $83
	rst  $38                                         ; $7350: $ff
	ld   bc, $ff00                                   ; $7351: $01 $00 $ff
	add  b                                           ; $7354: $80
	nop                                              ; $7355: $00
	add  b                                           ; $7356: $80
	dec  sp                                          ; $7357: $3b
	add  b                                           ; $7358: $80
	cpl                                              ; $7359: $2f
	add  b                                           ; $735a: $80
	dec  l                                           ; $735b: $2d
	nop                                              ; $735c: $00
	nop                                              ; $735d: $00
	add  e                                           ; $735e: $83
	rst  $38                                         ; $735f: $ff
	ld   bc, $ff00                                   ; $7360: $01 $00 $ff
	add  b                                           ; $7363: $80
	nop                                              ; $7364: $00
	add  b                                           ; $7365: $80
	ld   h, e                                        ; $7366: $63
	add  b                                           ; $7367: $80
	ldh  a, [c]                                      ; $7368: $f2
	add  b                                           ; $7369: $80
	add  e                                           ; $736a: $83
	nop                                              ; $736b: $00
	nop                                              ; $736c: $00
	add  e                                           ; $736d: $83
	rst  $38                                         ; $736e: $ff
	ld   bc, $ff00                                   ; $736f: $01 $00 $ff
	add  b                                           ; $7372: $80
	nop                                              ; $7373: $00
	add  b                                           ; $7374: $80
	db   $fc                                         ; $7375: $fc
	add  b                                           ; $7376: $80
	inc  c                                           ; $7377: $0c
	add  b                                           ; $7378: $80
	db   $fc                                         ; $7379: $fc
	add  b                                           ; $737a: $80
	rst  $38                                         ; $737b: $ff
	add  d                                           ; $737c: $82
	ld   sp, $3f80                                   ; $737d: $31 $80 $3f
	add  b                                           ; $7380: $80
	jr   nc, jr_017_7303                             ; $7381: $30 $80

	ld   hl, $4080                                   ; $7383: $21 $80 $40
	add  b                                           ; $7386: $80
	nop                                              ; $7387: $00
	add  b                                           ; $7388: $80
	rst  $38                                         ; $7389: $ff
	add  h                                           ; $738a: $84
	or   e                                           ; $738b: $b3
	add  b                                           ; $738c: $80
	scf                                              ; $738d: $37
	add  b                                           ; $738e: $80
	or   $80                                         ; $738f: $f6 $80
	ld   h, b                                        ; $7391: $60
	add  b                                           ; $7392: $80
	nop                                              ; $7393: $00
	add  b                                           ; $7394: $80

jr_017_7395:
	rst  $38                                         ; $7395: $ff
	add  b                                           ; $7396: $80
	dec  [hl]                                        ; $7397: $35
	add  b                                           ; $7398: $80
	inc  [hl]                                        ; $7399: $34
	add  b                                           ; $739a: $80
	pop  af                                          ; $739b: $f1
	add  b                                           ; $739c: $80
	or   c                                           ; $739d: $b1
	add  b                                           ; $739e: $80
	inc  sp                                          ; $739f: $33
	add  b                                           ; $73a0: $80
	rra                                              ; $73a1: $1f
	add  b                                           ; $73a2: $80
	nop                                              ; $73a3: $00
	add  b                                           ; $73a4: $80
	rst  $38                                         ; $73a5: $ff
	add  b                                           ; $73a6: $80
	ccf                                              ; $73a7: $3f
	add  b                                           ; $73a8: $80
	inc  c                                           ; $73a9: $0c
	add  b                                           ; $73aa: $80
	ccf                                              ; $73ab: $3f
	add  b                                           ; $73ac: $80
	inc  c                                           ; $73ad: $0c
	add  d                                           ; $73ae: $82
	dec  c                                           ; $73af: $0d
	add  b                                           ; $73b0: $80
	nop                                              ; $73b1: $00
	add  b                                           ; $73b2: $80
	rst  $38                                         ; $73b3: $ff
	add  b                                           ; $73b4: $80

jr_017_73b5:
	ld   d, c                                        ; $73b5: $51
	add  b                                           ; $73b6: $80
	ld   h, c                                        ; $73b7: $61
	add  b                                           ; $73b8: $80
	ld   l, c                                        ; $73b9: $69
	add  b                                           ; $73ba: $80
	jp   hl                                          ; $73bb: $e9


	add  b                                           ; $73bc: $80
	cp   c                                           ; $73bd: $b9
	add  b                                           ; $73be: $80
	sbc  c                                           ; $73bf: $99
	add  b                                           ; $73c0: $80
	nop                                              ; $73c1: $00
	add  b                                           ; $73c2: $80
	rst  $38                                         ; $73c3: $ff
	add  b                                           ; $73c4: $80
	sbc  a                                           ; $73c5: $9f
	add  b                                           ; $73c6: $80
	ldh  a, [c]                                      ; $73c7: $f2
	add  b                                           ; $73c8: $80
	ld   e, [hl]                                     ; $73c9: $5e
	add  b                                           ; $73ca: $80
	ld   d, d                                        ; $73cb: $52
	add  b                                           ; $73cc: $80
	ld   a, [$0082]                                  ; $73cd: $fa $82 $00
	add  b                                           ; $73d0: $80
	rst  $38                                         ; $73d1: $ff
	add  b                                           ; $73d2: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $73d3: $cf
	add  [hl]                                        ; $73d4: $86
	res  0, b                                        ; $73d5: $cb $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $73d7: $cf
	add  b                                           ; $73d8: $80
	nop                                              ; $73d9: $00
	add  b                                           ; $73da: $80
	rst  $38                                         ; $73db: $ff
	add  b                                           ; $73dc: $80
	ld   l, h                                        ; $73dd: $6c
	add  b                                           ; $73de: $80
	ld   a, h                                        ; $73df: $7c
	add  [hl]                                        ; $73e0: $86
	ld   h, b                                        ; $73e1: $60
	add  b                                           ; $73e2: $80
	nop                                              ; $73e3: $00
	add  b                                           ; $73e4: $80
	rst  $38                                         ; $73e5: $ff
	add  b                                           ; $73e6: $80
	cp   e                                           ; $73e7: $bb
	add  b                                           ; $73e8: $80
	rst  $20                                         ; $73e9: $e7
	add  b                                           ; $73ea: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $73eb: $cf
	add  b                                           ; $73ec: $80
	db   $db                                         ; $73ed: $db
	add  b                                           ; $73ee: $80
	jp   $c780                                       ; $73ef: $c3 $80 $c7


	add  b                                           ; $73f2: $80
	nop                                              ; $73f3: $00
	add  b                                           ; $73f4: $80
	rst  $38                                         ; $73f5: $ff
	add  b                                           ; $73f6: $80
	add  b                                           ; $73f7: $80
	add  h                                           ; $73f8: $84
	ld   b, b                                        ; $73f9: $40
	add  h                                           ; $73fa: $84
	nop                                              ; $73fb: $00
	add  b                                           ; $73fc: $80
	rst  $38                                         ; $73fd: $ff
	add  b                                           ; $73fe: $80
	nop                                              ; $73ff: $00

Call_017_7400:
	add  b                                           ; $7400: $80
	rst  $38                                         ; $7401: $ff
	add  b                                           ; $7402: $80
	inc  bc                                          ; $7403: $03
	add  b                                           ; $7404: $80
	ld   a, a                                        ; $7405: $7f
	add  b                                           ; $7406: $80
	inc  bc                                          ; $7407: $03
	add  b                                           ; $7408: $80
	rst  $38                                         ; $7409: $ff
	add  b                                           ; $740a: $80
	nop                                              ; $740b: $00
	add  b                                           ; $740c: $80
	rst  $38                                         ; $740d: $ff
	add  b                                           ; $740e: $80
	ld   a, $80                                      ; $740f: $3e $80
	ld   a, [bc]                                     ; $7411: $0a
	add  b                                           ; $7412: $80
	jr   c, jr_017_7395                              ; $7413: $38 $80

	ld   a, [hl-]                                    ; $7415: $3a
	add  b                                           ; $7416: $80
	ld   a, [hl+]                                    ; $7417: $2a
	add  b                                           ; $7418: $80
	dec  hl                                          ; $7419: $2b
	add  b                                           ; $741a: $80
	nop                                              ; $741b: $00
	add  b                                           ; $741c: $80
	rst  $38                                         ; $741d: $ff
	add  b                                           ; $741e: $80
	sbc  b                                           ; $741f: $98
	add  b                                           ; $7420: $80
	ld   hl, sp-$7c                                  ; $7421: $f8 $84
	sbc  b                                           ; $7423: $98
	add  b                                           ; $7424: $80
	db   $fc                                         ; $7425: $fc
	add  b                                           ; $7426: $80
	nop                                              ; $7427: $00
	add  b                                           ; $7428: $80
	rst  $38                                         ; $7429: $ff
	add  b                                           ; $742a: $80
	ld   l, $80                                      ; $742b: $2e $80
	add  hl, sp                                      ; $742d: $39
	add  b                                           ; $742e: $80
	inc  sp                                          ; $742f: $33
	add  b                                           ; $7430: $80
	ld   [hl], $80                                   ; $7431: $36 $80
	jr   nc, jr_017_73b5                             ; $7433: $30 $80

	ld   sp, $0080                                   ; $7435: $31 $80 $00
	add  b                                           ; $7438: $80
	rst  $38                                         ; $7439: $ff
	add  b                                           ; $743a: $80
	db   $e3                                         ; $743b: $e3
	add  b                                           ; $743c: $80
	jp   nc, $d380                                   ; $743d: $d2 $80 $d3

	add  b                                           ; $7440: $80
	jp   nc, $c180                                   ; $7441: $d2 $80 $c1

	add  b                                           ; $7444: $80
	jp   $0080                                       ; $7445: $c3 $80 $00


	add  b                                           ; $7448: $80
	rst  $38                                         ; $7449: $ff
	add  b                                           ; $744a: $80
	db   $fc                                         ; $744b: $fc
	add  b                                           ; $744c: $80
	inc  c                                           ; $744d: $0c
	add  b                                           ; $744e: $80
	db   $fc                                         ; $744f: $fc
	add  b                                           ; $7450: $80
	inc  b                                           ; $7451: $04
	add  b                                           ; $7452: $80
	sbc  b                                           ; $7453: $98
	add  b                                           ; $7454: $80
	adc  h                                           ; $7455: $8c
	add  b                                           ; $7456: $80
	nop                                              ; $7457: $00
	add  hl, sp                                      ; $7458: $39
	ld   [bc], a                                     ; $7459: $02
	add  [hl]                                        ; $745a: $86
	nop                                              ; $745b: $00
	inc  b                                           ; $745c: $04
	dec  b                                           ; $745d: $05
	rrca                                             ; $745e: $0f
	ld   [bc], a                                     ; $745f: $02
	rrca                                             ; $7460: $0f
	rlca                                             ; $7461: $07
	add  b                                           ; $7462: $80
	rrca                                             ; $7463: $0f
	add  b                                           ; $7464: $80
	ld   [bc], a                                     ; $7465: $02
	add  [hl]                                        ; $7466: $86
	nop                                              ; $7467: $00
	add  h                                           ; $7468: $84
	rst  $38                                         ; $7469: $ff
	add  b                                           ; $746a: $80
	ld   c, c                                        ; $746b: $49
	add  l                                           ; $746c: $85
	nop                                              ; $746d: $00
	ld   [bc], a                                     ; $746e: $02
	ld   l, [hl]                                     ; $746f: $6e
	rst  $38                                         ; $7470: $ff
	sub  c                                           ; $7471: $91
	add  d                                           ; $7472: $82
	rst  $38                                         ; $7473: $ff
	add  b                                           ; $7474: $80
	inc  h                                           ; $7475: $24
	add  l                                           ; $7476: $85
	nop                                              ; $7477: $00
	ld   [$ff1e], sp                                 ; $7478: $08 $1e $ff
	cp   $ff                                         ; $747b: $fe $ff
	rst  JumpTable                                         ; $747d: $df
	rst  $38                                         ; $747e: $ff
	jp   nc, $8092                                   ; $747f: $d2 $92 $80

	add  l                                           ; $7482: $85
	nop                                              ; $7483: $00
	dec  b                                           ; $7484: $05
	pop  bc                                          ; $7485: $c1
	rst  $38                                         ; $7486: $ff
	pop  af                                          ; $7487: $f1
	rst  $38                                         ; $7488: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7489: $cf
	rst  $38                                         ; $748a: $ff
	add  b                                           ; $748b: $80
	ld   a, a                                        ; $748c: $7f
	add  [hl]                                        ; $748d: $86
	nop                                              ; $748e: $00
	ld   [$ffd0], sp                                 ; $748f: $08 $d0 $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7492: $cf
	rst  $38                                         ; $7493: $ff
	db   $eb                                         ; $7494: $eb
	rst  $38                                         ; $7495: $ff
	and  e                                           ; $7496: $a3
	rst  $38                                         ; $7497: $ff
	ld   d, a                                        ; $7498: $57
	add  l                                           ; $7499: $85
	nop                                              ; $749a: $00
	ld   [$ff17], sp                                 ; $749b: $08 $17 $ff
	rst  $28                                         ; $749e: $ef
	rst  $38                                         ; $749f: $ff
	ei                                               ; $74a0: $fb
	rst  $38                                         ; $74a1: $ff
	jp   nz, $c1ff                                   ; $74a2: $c2 $ff $c1

	add  l                                           ; $74a5: $85
	nop                                              ; $74a6: $00
	ld   [$ffc3], sp                                 ; $74a7: $08 $c3 $ff
	db   $fd                                         ; $74aa: $fd
	rst  $38                                         ; $74ab: $ff
	and  $ff                                         ; $74ac: $e6 $ff
	ld   e, l                                        ; $74ae: $5d
	rst  $38                                         ; $74af: $ff
	add  l                                           ; $74b0: $85
	add  l                                           ; $74b1: $85
	nop                                              ; $74b2: $00
	ld   [$fffe], sp                                 ; $74b3: $08 $fe $ff
	or   [hl]                                        ; $74b6: $b6
	rst  $38                                         ; $74b7: $ff
	ld   c, d                                        ; $74b8: $4a
	rst  $38                                         ; $74b9: $ff
	or   h                                           ; $74ba: $b4
	or   a                                           ; $74bb: $b7
	cp   $85                                         ; $74bc: $fe $85
	nop                                              ; $74be: $00
	ld   [$ff3f], sp                                 ; $74bf: $08 $3f $ff
	cp   a                                           ; $74c2: $bf
	rst  $38                                         ; $74c3: $ff
	cp   a                                           ; $74c4: $bf
	rst  $38                                         ; $74c5: $ff
	sbc  a                                           ; $74c6: $9f
	rst  $38                                         ; $74c7: $ff
	and  b                                           ; $74c8: $a0
	add  l                                           ; $74c9: $85
	nop                                              ; $74ca: $00
	rlca                                             ; $74cb: $07
	rst  JumpTable                                         ; $74cc: $df
	rst  $38                                         ; $74cd: $ff
	xor  b                                           ; $74ce: $a8
	rst  $38                                         ; $74cf: $ff
	xor  c                                           ; $74d0: $a9
	rst  $38                                         ; $74d1: $ff
	sbc  $ff                                         ; $74d2: $de $ff
	add  [hl]                                        ; $74d4: $86
	nop                                              ; $74d5: $00
	ld   [$ff07], sp                                 ; $74d6: $08 $07 $ff
	add  sp, -$01                                    ; $74d9: $e8 $ff
	rst  JumpTable                                         ; $74db: $df
	rst  $38                                         ; $74dc: $ff
	ld   [hl], $ff                                   ; $74dd: $36 $ff
	ld   b, $85                                      ; $74df: $06 $85
	nop                                              ; $74e1: $00
	inc  b                                           ; $74e2: $04
	jr   z, @+$01                                    ; $74e3: $28 $ff

	xor  e                                           ; $74e5: $ab
	rst  $38                                         ; $74e6: $ff
	ld   a, l                                        ; $74e7: $7d
	add  c                                           ; $74e8: $81
	rst  $38                                         ; $74e9: $ff
	nop                                              ; $74ea: $00
	ld   bc, $0085                                   ; $74eb: $01 $85 $00
	ld   [$ff50], sp                                 ; $74ee: $08 $50 $ff
	and  e                                           ; $74f1: $a3
	rst  $38                                         ; $74f2: $ff
	call z, sRandomSeed                                    ; $74f3: $cc $ff $bf
	rst  $38                                         ; $74f6: $ff
	add  b                                           ; $74f7: $80
	add  l                                           ; $74f8: $85
	nop                                              ; $74f9: $00
	ld   [$ffbf], sp                                 ; $74fa: $08 $bf $ff
	ld   c, c                                        ; $74fd: $49
	rst  $38                                         ; $74fe: $ff
	halt                                             ; $74ff: $76
	rst  $38                                         ; $7500: $ff
	cp   c                                           ; $7501: $b9
	rst  $38                                         ; $7502: $ff
	add  hl, sp                                      ; $7503: $39
	add  l                                           ; $7504: $85
	nop                                              ; $7505: $00
	ld   bc, $fd02                                   ; $7506: $01 $02 $fd
	add  b                                           ; $7509: $80
	cp   $80                                         ; $750a: $fe $80
	db   $fd                                         ; $750c: $fd
	add  b                                           ; $750d: $80
	cp   $02                                         ; $750e: $fe $02
	ldh  a, [c]                                      ; $7510: $f2
	rrca                                             ; $7511: $0f
	ld   [bc], a                                     ; $7512: $02
	adc  e                                           ; $7513: $8b
	rrca                                             ; $7514: $0f
	ld   b, $b9                                      ; $7515: $06 $b9
	rst  $38                                         ; $7517: $ff
	ld   c, c                                        ; $7518: $49
	rst  $38                                         ; $7519: $ff
	ld   d, h                                        ; $751a: $54
	rst  $38                                         ; $751b: $ff
	ld   d, h                                        ; $751c: $54
	add  a                                           ; $751d: $87
	rst  $38                                         ; $751e: $ff
	ld   b, $24                                      ; $751f: $06 $24
	rst  $38                                         ; $7521: $ff
	inc  h                                           ; $7522: $24
	rst  $38                                         ; $7523: $ff
	nop                                              ; $7524: $00
	rst  $38                                         ; $7525: $ff
	nop                                              ; $7526: $00
	add  a                                           ; $7527: $87
	rst  $38                                         ; $7528: $ff
	ld   b, $92                                      ; $7529: $06 $92
	rst  $38                                         ; $752b: $ff
	sub  d                                           ; $752c: $92
	rst  $38                                         ; $752d: $ff
	nop                                              ; $752e: $00
	rst  $38                                         ; $752f: $ff
	nop                                              ; $7530: $00
	add  a                                           ; $7531: $87
	rst  $38                                         ; $7532: $ff
	dec  b                                           ; $7533: $05
	ld   h, b                                        ; $7534: $60
	rst  $38                                         ; $7535: $ff
	db   $e4                                         ; $7536: $e4
	ld   a, a                                        ; $7537: $7f
	ld   e, b                                        ; $7538: $58
	db   $fc                                         ; $7539: $fc
	add  b                                           ; $753a: $80
	db   $fd                                         ; $753b: $fd
	inc  c                                           ; $753c: $0c
	db   $ec                                         ; $753d: $ec
	db   $dd                                         ; $753e: $dd
	rst  $10                                         ; $753f: $d7
	rst  JumpTable                                         ; $7540: $df
	ld   a, [de]                                     ; $7541: $1a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7542: $cf
	db   $ed                                         ; $7543: $ed
	rst  $20                                         ; $7544: $e7
	ld   sp, hl                                      ; $7545: $f9
	rst  $38                                         ; $7546: $ff
	sbc  $ff                                         ; $7547: $de $ff
	sbc  l                                           ; $7549: $9d
	add  c                                           ; $754a: $81
	rst  $38                                         ; $754b: $ff
	ld   c, l                                        ; $754c: $4d
	inc  a                                           ; $754d: $3c
	rst  $38                                         ; $754e: $ff
	rst  JumpTable                                         ; $754f: $df
	rst  $38                                         ; $7550: $ff
	rst  $20                                         ; $7551: $e7
	rst  $38                                         ; $7552: $ff
	rst  $20                                         ; $7553: $e7
	rst  $38                                         ; $7554: $ff
	ld   h, c                                        ; $7555: $61
	rst  $38                                         ; $7556: $ff
	ld   [hl], c                                     ; $7557: $71
	rst  $38                                         ; $7558: $ff
	sub  a                                           ; $7559: $97
	rst  $38                                         ; $755a: $ff
	ld   a, [de]                                     ; $755b: $1a
	rst  $38                                         ; $755c: $ff
	db   $fd                                         ; $755d: $fd
	rst  $38                                         ; $755e: $ff
	ld   a, a                                        ; $755f: $7f
	rst  $38                                         ; $7560: $ff
	cp   a                                           ; $7561: $bf
	rst  $38                                         ; $7562: $ff
	ld   e, d                                        ; $7563: $5a
	rst  $38                                         ; $7564: $ff
	sub  e                                           ; $7565: $93
	rst  $38                                         ; $7566: $ff
	jp   hl                                          ; $7567: $e9


	rst  $38                                         ; $7568: $ff
	rst  JumpTable                                         ; $7569: $df
	cp   a                                           ; $756a: $bf
	ld   bc, $969f                                   ; $756b: $01 $9f $96
	rst  $38                                         ; $756e: $ff
	db   $eb                                         ; $756f: $eb
	rst  $38                                         ; $7570: $ff
	db   $ed                                         ; $7571: $ed
	rst  $38                                         ; $7572: $ff
	ld   l, $ff                                      ; $7573: $2e $ff
	adc  [hl]                                        ; $7575: $8e
	xor  a                                           ; $7576: $af
	sbc  [hl]                                        ; $7577: $9e
	sbc  a                                           ; $7578: $9f
	inc  sp                                          ; $7579: $33
	ccf                                              ; $757a: $3f
	dec  c                                           ; $757b: $0d
	ccf                                              ; $757c: $3f
	jr   c, @+$01                                    ; $757d: $38 $ff

	and  $ff                                         ; $757f: $e6 $ff
	ld   a, [hl-]                                    ; $7581: $3a
	rst  $38                                         ; $7582: $ff
	add  hl, de                                      ; $7583: $19
	ccf                                              ; $7584: $3f
	ld   b, c                                        ; $7585: $41
	rst  $38                                         ; $7586: $ff
	ld   a, [hl-]                                    ; $7587: $3a
	rst  $38                                         ; $7588: $ff
	ld   a, c                                        ; $7589: $79
	rst  $38                                         ; $758a: $ff
	ld   a, a                                        ; $758b: $7f
	rst  $38                                         ; $758c: $ff
	ld   a, [hl]                                     ; $758d: $7e
	rst  $38                                         ; $758e: $ff
	ld   [hl], h                                     ; $758f: $74
	rst  $38                                         ; $7590: $ff
	inc  hl                                          ; $7591: $23
	rst  $38                                         ; $7592: $ff
	rlca                                             ; $7593: $07
	rst  $38                                         ; $7594: $ff
	db   $10                                         ; $7595: $10
	rst  $38                                         ; $7596: $ff
	db   $fd                                         ; $7597: $fd
	rst  $38                                         ; $7598: $ff
	ld   d, d                                        ; $7599: $52
	rst  $28                                         ; $759a: $ef
	add  b                                           ; $759b: $80
	rst  $30                                         ; $759c: $f7
	add  b                                           ; $759d: $80
	ld   a, [$8c14]                                  ; $759e: $fa $14 $8c
	db   $fc                                         ; $75a1: $fc
	halt                                             ; $75a2: $76
	cp   $b8                                         ; $75a3: $fe $b8
	rst  $38                                         ; $75a5: $ff
	cp   b                                           ; $75a6: $b8
	rst  $38                                         ; $75a7: $ff
	add  $ff                                         ; $75a8: $c6 $ff
	ld   sp, hl                                      ; $75aa: $f9
	rst  $38                                         ; $75ab: $ff
	or   b                                           ; $75ac: $b0
	ld   a, a                                        ; $75ad: $7f
	jp   hl                                          ; $75ae: $e9


	rst  $38                                         ; $75af: $ff
	sbc  [hl]                                        ; $75b0: $9e
	rst  $38                                         ; $75b1: $ff
	ld   a, [hl]                                     ; $75b2: $7e
	rst  $38                                         ; $75b3: $ff
	db   $fd                                         ; $75b4: $fd

jr_017_75b5:
	add  c                                           ; $75b5: $81
	rst  $38                                         ; $75b6: $ff
	db   $10                                         ; $75b7: $10
	cp   $ff                                         ; $75b8: $fe $ff
	add  sp, -$01                                    ; $75ba: $e8 $ff
	pop  de                                          ; $75bc: $d1
	rst  $38                                         ; $75bd: $ff
	dec  sp                                          ; $75be: $3b
	rst  $38                                         ; $75bf: $ff
	rst  $20                                         ; $75c0: $e7
	rst  $38                                         ; $75c1: $ff
	db   $fc                                         ; $75c2: $fc
	rst  $38                                         ; $75c3: $ff
	sbc  d                                           ; $75c4: $9a
	rst  $38                                         ; $75c5: $ff
	cp   [hl]                                        ; $75c6: $be
	rst  $38                                         ; $75c7: $ff
	rst  JumpTable                                         ; $75c8: $df
	add  c                                           ; $75c9: $81
	rst  $38                                         ; $75ca: $ff
	ld   c, $f7                                      ; $75cb: $0e $f7
	rst  $38                                         ; $75cd: $ff
	db   $e3                                         ; $75ce: $e3
	rst  $38                                         ; $75cf: $ff
	ldh  a, [rIE]                                    ; $75d0: $f0 $ff
	or   $ff                                         ; $75d2: $f6 $ff
	db   $fd                                         ; $75d4: $fd
	rst  $38                                         ; $75d5: $ff
	ld   l, a                                        ; $75d6: $6f
	rst  $38                                         ; $75d7: $ff
	ccf                                              ; $75d8: $3f
	rst  $38                                         ; $75d9: $ff
	ld   e, a                                        ; $75da: $5f
	add  b                                           ; $75db: $80
	ld   a, a                                        ; $75dc: $7f
	dec  b                                           ; $75dd: $05
	rst  $38                                         ; $75de: $ff
	rst  $30                                         ; $75df: $f7
	rst  $38                                         ; $75e0: $ff
	ld   [$cfff], a                                  ; $75e1: $ea $ff $cf
	add  c                                           ; $75e4: $81
	db   $ed                                         ; $75e5: $ed
	ld   bc, $fd3d                                   ; $75e6: $01 $3d $fd
	add  b                                           ; $75e9: $80
	cp   $80                                         ; $75ea: $fe $80
	db   $fd                                         ; $75ec: $fd
	add  b                                           ; $75ed: $80
	cp   $80                                         ; $75ee: $fe $80

jr_017_75f0:
	db   $fd                                         ; $75f0: $fd
	add  b                                           ; $75f1: $80
	cp   $80                                         ; $75f2: $fe $80
	db   $fd                                         ; $75f4: $fd
	add  b                                           ; $75f5: $80
	cp   $00                                         ; $75f6: $fe $00
	rst  $38                                         ; $75f8: $ff
	add  e                                           ; $75f9: $83
	rrca                                             ; $75fa: $0f
	nop                                              ; $75fb: $00
	nop                                              ; $75fc: $00
	add  b                                           ; $75fd: $80
	rrca                                             ; $75fe: $0f
	add  l                                           ; $75ff: $85
	nop                                              ; $7600: $00
	nop                                              ; $7601: $00
	rrca                                             ; $7602: $0f
	add  e                                           ; $7603: $83
	rst  $38                                         ; $7604: $ff
	nop                                              ; $7605: $00
	nop                                              ; $7606: $00
	add  b                                           ; $7607: $80
	rst  $38                                         ; $7608: $ff
	add  c                                           ; $7609: $81
	nop                                              ; $760a: $00
	add  b                                           ; $760b: $80
	jr   nz, @+$04                                   ; $760c: $20 $02

	nop                                              ; $760e: $00
	jr   nz, jr_017_75f0                             ; $760f: $20 $df

	add  e                                           ; $7611: $83
	rst  $38                                         ; $7612: $ff
	nop                                              ; $7613: $00
	nop                                              ; $7614: $00
	add  b                                           ; $7615: $80
	rst  $38                                         ; $7616: $ff
	add  c                                           ; $7617: $81
	nop                                              ; $7618: $00
	add  b                                           ; $7619: $80
	add  d                                           ; $761a: $82
	ld   [bc], a                                     ; $761b: $02
	nop                                              ; $761c: $00
	add  d                                           ; $761d: $82
	ld   a, l                                        ; $761e: $7d
	add  e                                           ; $761f: $83
	rst  $38                                         ; $7620: $ff
	nop                                              ; $7621: $00
	nop                                              ; $7622: $00
	add  b                                           ; $7623: $80
	rst  $38                                         ; $7624: $ff
	add  c                                           ; $7625: $81
	nop                                              ; $7626: $00
	add  b                                           ; $7627: $80
	ld   [$0003], sp                                 ; $7628: $08 $03 $00
	ld   [$e3cb], sp                                 ; $762b: $08 $cb $e3
	add  b                                           ; $762e: $80
	rst  $38                                         ; $762f: $ff
	ld   [bc], a                                     ; $7630: $02
	rst  $10                                         ; $7631: $d7
	rst  $28                                         ; $7632: $ef
	jr   jr_017_75b5                                 ; $7633: $18 $80

	db   $e4                                         ; $7635: $e4
	add  c                                           ; $7636: $81
	nop                                              ; $7637: $00
	add  b                                           ; $7638: $80
	ld   [hl+], a                                    ; $7639: $22
	stop                                             ; $763a: $10 $00
	ld   [hl+], a                                    ; $763c: $22
	ld   c, l                                        ; $763d: $4d
	rst  JumpTable                                         ; $763e: $df
	cpl                                              ; $763f: $2f
	sbc  a                                           ; $7640: $9f
	ld   [bc], a                                     ; $7641: $02
	ccf                                              ; $7642: $3f
	cp   d                                           ; $7643: $ba
	rst  $38                                         ; $7644: $ff
	ei                                               ; $7645: $fb
	rst  $38                                         ; $7646: $ff
	xor  a                                           ; $7647: $af
	rst  $38                                         ; $7648: $ff
	di                                               ; $7649: $f3
	rst  $38                                         ; $764a: $ff
	rst  JumpTable                                         ; $764b: $df
	add  c                                           ; $764c: $81
	rst  $38                                         ; $764d: $ff
	ld   [de], a                                     ; $764e: $12
	rra                                              ; $764f: $1f
	rst  $38                                         ; $7650: $ff
	and  $ff                                         ; $7651: $e6 $ff
	ld   sp, hl                                      ; $7653: $f9
	rst  $38                                         ; $7654: $ff
	ld   a, a                                        ; $7655: $7f
	rst  $38                                         ; $7656: $ff
	ld   a, a                                        ; $7657: $7f
	rst  $38                                         ; $7658: $ff
	rst  $20                                         ; $7659: $e7
	rst  $38                                         ; $765a: $ff
	rra                                              ; $765b: $1f
	rst  $38                                         ; $765c: $ff
	push af                                          ; $765d: $f5
	rst  $38                                         ; $765e: $ff
	call $3fff                                       ; $765f: $cd $ff $3f
	add  c                                           ; $7662: $81
	rst  $38                                         ; $7663: $ff
	nop                                              ; $7664: $00
	ld   sp, hl                                      ; $7665: $f9
	add  b                                           ; $7666: $80
	rst  $38                                         ; $7667: $ff
	dec  bc                                          ; $7668: $0b
	cp   $b6                                         ; $7669: $fe $b6
	cp   [hl]                                        ; $766b: $be
	ld   c, [hl]                                     ; $766c: $4e
	ld   e, $90                                      ; $766d: $1e $90
	ccf                                              ; $766f: $3f
	scf                                              ; $7670: $37
	cp   a                                           ; $7671: $bf
	cp   l                                           ; $7672: $bd
	rst  $38                                         ; $7673: $ff
	cp   d                                           ; $7674: $ba
	add  b                                           ; $7675: $80
	rst  $38                                         ; $7676: $ff
	add  l                                           ; $7677: $85
	ld   a, a                                        ; $7678: $7f
	ld   b, $1f                                      ; $7679: $06 $1f
	rst  $38                                         ; $767b: $ff
	db   $e3                                         ; $767c: $e3
	rst  $38                                         ; $767d: $ff
	db   $fc                                         ; $767e: $fc
	rst  $38                                         ; $767f: $ff
	ld   a, a                                        ; $7680: $7f
	add  c                                           ; $7681: $81
	rst  $38                                         ; $7682: $ff
	ld   bc, $bfc7                                   ; $7683: $01 $c7 $bf
	add  b                                           ; $7686: $80
	ld   a, a                                        ; $7687: $7f
	ld   a, [de]                                     ; $7688: $1a
	ld   e, b                                        ; $7689: $58
	ld   e, a                                        ; $768a: $5f
	ldh  a, [rIE]                                    ; $768b: $f0 $ff
	sub  c                                           ; $768d: $91
	cp   $5f                                         ; $768e: $fe $5f
	rst  $38                                         ; $7690: $ff
	adc  $ff                                         ; $7691: $ce $ff
	ret  z                                           ; $7693: $c8

	rst  $38                                         ; $7694: $ff
	ld   h, $ff                                      ; $7695: $26 $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7697: $cf
	rst  $28                                         ; $7698: $ef
	rst  $10                                         ; $7699: $d7
	rst  ToBoot                                         ; $769a: $c7
	ld   c, b                                        ; $769b: $48
	ld   a, a                                        ; $769c: $7f
	ld   h, l                                        ; $769d: $65
	ld   a, a                                        ; $769e: $7f
	ld   [hl-], a                                    ; $769f: $32
	ccf                                              ; $76a0: $3f
	rra                                              ; $76a1: $1f
	rst  JumpTable                                         ; $76a2: $df
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $76a3: $cf
	add  c                                           ; $76a4: $81
	rst  $38                                         ; $76a5: $ff
	inc  b                                           ; $76a6: $04
	db   $f4                                         ; $76a7: $f4
	rst  $38                                         ; $76a8: $ff
	and  e                                           ; $76a9: $a3
	rst  $38                                         ; $76aa: $ff
	xor  b                                           ; $76ab: $a8
	add  c                                           ; $76ac: $81
	rst  $38                                         ; $76ad: $ff
	inc  l                                           ; $76ae: $2c
	db   $fd                                         ; $76af: $fd
	rst  $38                                         ; $76b0: $ff
	ld   hl, sp-$01                                  ; $76b1: $f8 $ff
	push af                                          ; $76b3: $f5
	rst  $38                                         ; $76b4: $ff
	add  sp, -$01                                    ; $76b5: $e8 $ff
	sub  a                                           ; $76b7: $97
	rst  $38                                         ; $76b8: $ff
	ld   l, a                                        ; $76b9: $6f
	rst  $38                                         ; $76ba: $ff
	ld   e, a                                        ; $76bb: $5f
	rst  $38                                         ; $76bc: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $76bd: $cf
	rst  $38                                         ; $76be: $ff
	ld   h, a                                        ; $76bf: $67
	rst  $38                                         ; $76c0: $ff
	rst  $20                                         ; $76c1: $e7
	rst  $38                                         ; $76c2: $ff
	and  a                                           ; $76c3: $a7
	rst  $38                                         ; $76c4: $ff
	xor  b                                           ; $76c5: $a8
	rst  $38                                         ; $76c6: $ff
	ccf                                              ; $76c7: $3f
	ei                                               ; $76c8: $fb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $76c9: $cf
	pop  af                                          ; $76ca: $f1
	rst  $10                                         ; $76cb: $d7
	db   $ed                                         ; $76cc: $ed
	push de                                          ; $76cd: $d5
	push af                                          ; $76ce: $f5
	ret  c                                           ; $76cf: $d8

	rst  $38                                         ; $76d0: $ff
	sbc  e                                           ; $76d1: $9b
	rst  $38                                         ; $76d2: $ff
	sbc  c                                           ; $76d3: $99
	rst  $38                                         ; $76d4: $ff
	ld   a, [hl+]                                    ; $76d5: $2a
	rst  $38                                         ; $76d6: $ff
	sub  $ff                                         ; $76d7: $d6 $ff
	ld   sp, hl                                      ; $76d9: $f9
	rst  $38                                         ; $76da: $ff
	ret  nz                                          ; $76db: $c0

	add  l                                           ; $76dc: $85
	nop                                              ; $76dd: $00
	ld   a, [bc]                                     ; $76de: $0a
	db   $fd                                         ; $76df: $fd
	rst  $38                                         ; $76e0: $ff
	xor  d                                           ; $76e1: $aa
	rst  $38                                         ; $76e2: $ff
	ld   b, $ff                                      ; $76e3: $06 $ff
	add  [hl]                                        ; $76e5: $86
	rst  $38                                         ; $76e6: $ff
	jp   c, $0c04                                    ; $76e7: $da $04 $0c

	add  c                                           ; $76ea: $81
	inc  b                                           ; $76eb: $04
	ld   [bc], a                                     ; $76ec: $02
	inc  c                                           ; $76ed: $0c
	inc  b                                           ; $76ee: $04
	ld   b, $85                                      ; $76ef: $06 $85
	nop                                              ; $76f1: $00
	ld   [bc], a                                     ; $76f2: $02
	pop  af                                          ; $76f3: $f1
	ld   [bc], a                                     ; $76f4: $02
	cp   $81                                         ; $76f5: $fe $81
	ld   [hl-], a                                    ; $76f7: $32
	ld   [bc], a                                     ; $76f8: $02
	adc  $02                                         ; $76f9: $ce $02
	inc  bc                                          ; $76fb: $03
	add  [hl]                                        ; $76fc: $86
	nop                                              ; $76fd: $00
	ld   bc, $7f01                                   ; $76fe: $01 $01 $7f
	add  c                                           ; $7701: $81
	add  hl, de                                      ; $7702: $19
	nop                                              ; $7703: $00
	ld   h, a                                        ; $7704: $67
	add  b                                           ; $7705: $80
	ld   bc, $4080                                   ; $7706: $01 $80 $40
	nop                                              ; $7709: $00
	pop  bc                                          ; $770a: $c1
	add  d                                           ; $770b: $82
	ret  nz                                          ; $770c: $c0

	ld   [bc], a                                     ; $770d: $02
	ld   b, c                                        ; $770e: $41
	nop                                              ; $770f: $00
	ccf                                              ; $7710: $3f
	add  c                                           ; $7711: $81
	inc  c                                           ; $7712: $0c
	ld   [bc], a                                     ; $7713: $02
	inc  sp                                          ; $7714: $33
	nop                                              ; $7715: $00
	add  b                                           ; $7716: $80
	add  b                                           ; $7717: $80
	dec  hl                                          ; $7718: $2b
	ld   bc, $a35b                                   ; $7719: $01 $5b $a3
	add  c                                           ; $771c: $81
	inc  bc                                          ; $771d: $03
	nop                                              ; $771e: $00
	ei                                               ; $771f: $fb
	add  b                                           ; $7720: $80
	jp   c, $d801                                    ; $7721: $da $01 $d8

	jp   c, $c480                                    ; $7724: $da $80 $c4

	ld   bc, $1e1c                                   ; $7727: $01 $1c $1e
	add  b                                           ; $772a: $80
	nop                                              ; $772b: $00
	nop                                              ; $772c: $00
	cp   $82                                         ; $772d: $fe $82
	ld   [bc], a                                     ; $772f: $02
	dec  bc                                          ; $7730: $0b
	cp   $ff                                         ; $7731: $fe $ff
	inc  sp                                          ; $7733: $33
	db   $dd                                         ; $7734: $dd
	nop                                              ; $7735: $00
	ld   de, $ddcc                                   ; $7736: $11 $cc $dd
	nop                                              ; $7739: $00
	ld   de, $ff00                                   ; $773a: $11 $00 $ff
	add  d                                           ; $773d: $82
	nop                                              ; $773e: $00
	add  b                                           ; $773f: $80
	cp   $0a                                         ; $7740: $fe $0a
	ld   sp, $06dc                                   ; $7742: $31 $dc $06
	db   $10                                         ; $7745: $10
	ret  z                                           ; $7746: $c8

	db   $dd                                         ; $7747: $dd
	ld   bc, $0110                                   ; $7748: $01 $10 $01
	rst  $38                                         ; $774b: $ff
	ld   bc, $0081                                   ; $774c: $01 $81 $00
	ld   de, $0fef                                   ; $774f: $11 $ef $0f
	inc  de                                          ; $7752: $13
	ld   b, l                                        ; $7753: $45
	db   $ec                                         ; $7754: $ec
	ld   b, c                                        ; $7755: $41
	ld   c, b                                        ; $7756: $48
	dec  c                                           ; $7757: $0d
	ld   b, b                                        ; $7758: $40
	ld   bc, $0fe8                                   ; $7759: $01 $e8 $0f
	call nz, $1c9c                                   ; $775c: $c4 $9c $1c
	call c, Call_017_4929                            ; $775f: $dc $29 $49
	add  b                                           ; $7762: $80
	ld   [bc], a                                     ; $7763: $02
	add  b                                           ; $7764: $80
	ld   c, b                                        ; $7765: $48
	add  b                                           ; $7766: $80
	ld   de, $c280                                   ; $7767: $11 $80 $c2
	add  b                                           ; $776a: $80
	inc  h                                           ; $776b: $24
	add  b                                           ; $776c: $80
	adc  c                                           ; $776d: $89
	add  b                                           ; $776e: $80
	ld   e, b                                        ; $776f: $58
	add  b                                           ; $7770: $80
	rst  $38                                         ; $7771: $ff
	add  hl, bc                                      ; $7772: $09
	ld   [hl-], a                                    ; $7773: $32
	db   $dd                                         ; $7774: $dd
	ld   bc, $cd10                                   ; $7775: $01 $10 $cd
	db   $dd                                         ; $7778: $dd
	ld   bc, $0010                                   ; $7779: $01 $10 $00
	rst  $38                                         ; $777c: $ff
	add  d                                           ; $777d: $82
	nop                                              ; $777e: $00
	dec  de                                          ; $777f: $1b
	cp   e                                           ; $7780: $bb
	add  e                                           ; $7781: $83
	ld   b, l                                        ; $7782: $45
	ld   de, $10ba                                   ; $7783: $11 $ba $10
	db   $d3                                         ; $7786: $d3
	jp   $0011                                       ; $7787: $c3 $11 $00


	ld   a, d                                        ; $778a: $7a
	jp   $2771                                       ; $778b: $c3 $71 $27


	rlca                                             ; $778e: $07
	scf                                              ; $778f: $37
	rst  $20                                         ; $7790: $e7
	rst  $38                                         ; $7791: $ff
	inc  sp                                          ; $7792: $33
	db   $dd                                         ; $7793: $dd
	nop                                              ; $7794: $00
	ld   de, $ddcc                                   ; $7795: $11 $cc $dd
	nop                                              ; $7798: $00
	ld   de, $ff00                                   ; $7799: $11 $00 $ff
	add  d                                           ; $779c: $82
	add  b                                           ; $779d: $80
	add  b                                           ; $779e: $80
	ld   c, d                                        ; $779f: $4a
	add  b                                           ; $77a0: $80
	inc  d                                           ; $77a1: $14
	add  b                                           ; $77a2: $80
	xor  c                                           ; $77a3: $a9
	add  b                                           ; $77a4: $80
	ld   d, [hl]                                     ; $77a5: $56
	add  b                                           ; $77a6: $80
	xor  l                                           ; $77a7: $ad
	add  b                                           ; $77a8: $80
	ld   d, d                                        ; $77a9: $52
	add  b                                           ; $77aa: $80
	xor  $80                                         ; $77ab: $ee $80
	ld   d, l                                        ; $77ad: $55
	inc  e                                           ; $77ae: $1c
	xor  $e0                                         ; $77af: $ee $e0
	ld   de, $6ec4                                   ; $77b1: $11 $c4 $6e
	inc  b                                           ; $77b4: $04
	add  h                                           ; $77b5: $84
	ret  nc                                          ; $77b6: $d0

	inc  d                                           ; $77b7: $14
	nop                                              ; $77b8: $00
	ld   e, $f0                                      ; $77b9: $1e $f0
	inc  e                                           ; $77bb: $1c
	add  hl, bc                                      ; $77bc: $09
	ld   bc, $f90d                                   ; $77bd: $01 $0d $f9
	rst  $38                                         ; $77c0: $ff
	inc  sp                                          ; $77c1: $33
	ld   e, l                                        ; $77c2: $5d
	pop  de                                          ; $77c3: $d1
	nop                                              ; $77c4: $00
	adc  h                                           ; $77c5: $8c
	db   $dd                                         ; $77c6: $dd
	ld   de, $8000                                   ; $77c7: $11 $00 $80
	rst  $38                                         ; $77ca: $ff
	ld   b, b                                        ; $77cb: $40
	add  c                                           ; $77cc: $81
	ret  nz                                          ; $77cd: $c0

	ld   [$ff40], sp                                 ; $77ce: $08 $40 $ff
	cp   h                                           ; $77d1: $bc
	rst  $38                                         ; $77d2: $ff
	cp   h                                           ; $77d3: $bc
	rst  $38                                         ; $77d4: $ff
	ld   c, a                                        ; $77d5: $4f
	rst  $38                                         ; $77d6: $ff
	ldh  a, [$85]                                    ; $77d7: $f0 $85
	rst  $38                                         ; $77d9: $ff
	nop                                              ; $77da: $00
	rrca                                             ; $77db: $0f
	add  [hl]                                        ; $77dc: $86
	nop                                              ; $77dd: $00
	add  e                                           ; $77de: $83
	ld   b, $02                                      ; $77df: $06 $02
	rrca                                             ; $77e1: $0f
	ld   b, $ff                                      ; $77e2: $06 $ff
	add  [hl]                                        ; $77e4: $86
	nop                                              ; $77e5: $00
	add  b                                           ; $77e6: $80
	ld   b, $80                                      ; $77e7: $06 $80
	and  $04                                         ; $77e9: $e6 $04
	add  $cf                                         ; $77eb: $c6 $cf
	ld   b, $0e                                      ; $77ed: $06 $0e
	ret  nz                                          ; $77ef: $c0

	add  b                                           ; $77f0: $80
	pop  bc                                          ; $77f1: $c1
	add  b                                           ; $77f2: $80

jr_017_77f3:
	ret  nz                                          ; $77f3: $c0

	nop                                              ; $77f4: $00
	pop  bc                                          ; $77f5: $c1
	add  d                                           ; $77f6: $82
	ret  nz                                          ; $77f7: $c0

	add  b                                           ; $77f8: $80
	pop  bc                                          ; $77f9: $c1
	add  b                                           ; $77fa: $80
	jp   $c002                                       ; $77fb: $c3 $02 $c0


	jr   c, jr_017_7803                              ; $77fe: $38 $03

	add  b                                           ; $7800: $80
	ei                                               ; $7801: $fb
	add  b                                           ; $7802: $80

jr_017_7803:
	inc  bc                                          ; $7803: $03
	nop                                              ; $7804: $00
	ei                                               ; $7805: $fb
	add  d                                           ; $7806: $82
	inc  bc                                          ; $7807: $03
	add  b                                           ; $7808: $80
	di                                               ; $7809: $f3
	inc  b                                           ; $780a: $04
	db   $e3                                         ; $780b: $e3
	rst  $20                                         ; $780c: $e7
	inc  bc                                          ; $780d: $03

jr_017_780e:
	ei                                               ; $780e: $fb
	ld   [bc], a                                     ; $780f: $02
	add  b                                           ; $7810: $80
	cp   $80                                         ; $7811: $fe $80
	ld   [bc], a                                     ; $7813: $02
	dec  bc                                          ; $7814: $0b
	cp   $0e                                         ; $7815: $fe $0e
	rrca                                             ; $7817: $0f
	inc  e                                           ; $7818: $1c
	rra                                              ; $7819: $1f
	jr   c, jr_017_785a                              ; $781a: $38 $3e

	nop                                              ; $781c: $00
	ld   a, h                                        ; $781d: $7c
	ld   [bc], a                                     ; $781e: $02
	add  l                                           ; $781f: $85
	nop                                              ; $7820: $00
	add  b                                           ; $7821: $80
	rst  $38                                         ; $7822: $ff
	add  c                                           ; $7823: $81
	nop                                              ; $7824: $00
	inc  b                                           ; $7825: $04
	ld   b, b                                        ; $7826: $40
	and  [hl]                                        ; $7827: $a6
	ld   a, a                                        ; $7828: $7f
	sbc  l                                           ; $7829: $9d
	inc  b                                           ; $782a: $04
	add  b                                           ; $782b: $80
	add  c                                           ; $782c: $81
	add  b                                           ; $782d: $80
	jr   z, @-$7e                                    ; $782e: $28 $80

	nop                                              ; $7830: $00
	add  b                                           ; $7831: $80
	rst  $38                                         ; $7832: $ff
	add  d                                           ; $7833: $82
	nop                                              ; $7834: $00
	dec  b                                           ; $7835: $05
	ld   a, [hl+]                                    ; $7836: $2a
	rst  $38                                         ; $7837: $ff
	push bc                                          ; $7838: $c5
	ld   de, $0100                                   ; $7839: $11 $00 $01
	add  b                                           ; $783c: $80
	adc  b                                           ; $783d: $88
	inc  b                                           ; $783e: $04
	cp   b                                           ; $783f: $b8
	sbc  b                                           ; $7840: $98
	add  a                                           ; $7841: $87
	sbc  a                                           ; $7842: $9f
	add  b                                           ; $7843: $80
	add  c                                           ; $7844: $81
	sbc  b                                           ; $7845: $98
	rlca                                             ; $7846: $07
	add  l                                           ; $7847: $85
	rst  $38                                         ; $7848: $ff
	ld   d, d                                        ; $7849: $52
	jr   jr_017_780e                                 ; $784a: $18 $c2

	ldh  a, [c]                                      ; $784c: $f2
	jr   c, jr_017_7867                              ; $784d: $38 $18

	add  b                                           ; $784f: $80
	nop                                              ; $7850: $00
	add  b                                           ; $7851: $80
	rst  $38                                         ; $7852: $ff
	add  d                                           ; $7853: $82
	nop                                              ; $7854: $00
	inc  bc                                          ; $7855: $03
	ld   d, h                                        ; $7856: $54
	rst  $38                                         ; $7857: $ff
	rrca                                             ; $7858: $0f
	and  h                                           ; $7859: $a4

jr_017_785a:
	add  b                                           ; $785a: $80
	ld   bc, $0082                                   ; $785b: $01 $82 $00
	add  b                                           ; $785e: $80
	rst  $38                                         ; $785f: $ff
	add  d                                           ; $7860: $82
	nop                                              ; $7861: $00
	inc  bc                                          ; $7862: $03
	or   l                                           ; $7863: $b5
	rst  $38                                         ; $7864: $ff
	ld   e, d                                        ; $7865: $5a
	db   $10                                         ; $7866: $10

jr_017_7867:
	add  b                                           ; $7867: $80
	ld   [bc], a                                     ; $7868: $02
	add  b                                           ; $7869: $80
	db   $10                                         ; $786a: $10
	inc  b                                           ; $786b: $04
	cpl                                              ; $786c: $2f
	daa                                              ; $786d: $27
	ldh  [$e7], a                                    ; $786e: $e0 $e7
	jr   nz, jr_017_77f3                             ; $7870: $20 $81

	daa                                              ; $7872: $27
	ld   b, $a1                                      ; $7873: $06 $a1
	rst  $38                                         ; $7875: $ff
	ld   d, l                                        ; $7876: $55
	ld   b, a                                        ; $7877: $47
	jr   nc, jr_017_78f6                             ; $7878: $30 $7c

	ld   [$0081], sp                                 ; $787a: $08 $81 $00
	add  b                                           ; $787d: $80
	rst  $38                                         ; $787e: $ff
	add  d                                           ; $787f: $82
	nop                                              ; $7880: $00
	inc  bc                                          ; $7881: $03
	ld   c, h                                        ; $7882: $4c
	rst  $38                                         ; $7883: $ff
	and  d                                           ; $7884: $a2
	ld   de, $0080                                   ; $7885: $11 $80 $00
	add  b                                           ; $7888: $80
	add  [hl]                                        ; $7889: $86
	add  b                                           ; $788a: $80
	nop                                              ; $788b: $00
	add  b                                           ; $788c: $80
	rst  $38                                         ; $788d: $ff
	add  d                                           ; $788e: $82
	nop                                              ; $788f: $00
	inc  bc                                          ; $7890: $03
	sub  e                                           ; $7891: $93
	rst  $38                                         ; $7892: $ff
	ld   c, h                                        ; $7893: $4c
	jr   nz, @-$7e                                   ; $7894: $20 $80

	ld   c, d                                        ; $7896: $4a
	add  b                                           ; $7897: $80
	inc  b                                           ; $7898: $04
	inc  b                                           ; $7899: $04
	dec  bc                                          ; $789a: $0b
	add  hl, bc                                      ; $789b: $09
	ld   hl, sp-$07                                  ; $789c: $f8 $f9
	ld   [$0981], sp                                 ; $789e: $08 $81 $09
	rlca                                             ; $78a1: $07
	jr   z, @+$01                                    ; $78a2: $28 $ff

	push de                                          ; $78a4: $d5
	ld   de, $9f8c                                   ; $78a5: $11 $8c $9f
	ld   [bc], a                                     ; $78a8: $02
	nop                                              ; $78a9: $00
	add  b                                           ; $78aa: $80
	add  b                                           ; $78ab: $80
	ld   [bc], a                                     ; $78ac: $02
	ld   a, a                                        ; $78ad: $7f
	rst  $38                                         ; $78ae: $ff

jr_017_78af:
	nop                                              ; $78af: $00
	add  c                                           ; $78b0: $81
	add  b                                           ; $78b1: $80
	inc  bc                                          ; $78b2: $03
	ld   c, b                                        ; $78b3: $48
	rst  $38                                         ; $78b4: $ff
	ld   d, $a1                                      ; $78b5: $16 $a1
	add  b                                           ; $78b7: $80
	inc  b                                           ; $78b8: $04
	add  b                                           ; $78b9: $80
	ld   d, c                                        ; $78ba: $51

jr_017_78bb:
	ld   de, $ff9f                                   ; $78bb: $11 $9f $ff
	ld   l, d                                        ; $78be: $6a
	rst  $38                                         ; $78bf: $ff
	ldh  a, [rIE]                                    ; $78c0: $f0 $ff
	ld   e, b                                        ; $78c2: $58
	rst  $38                                         ; $78c3: $ff
	ld   l, $ff                                      ; $78c4: $2e $ff
	ld   a, e                                        ; $78c6: $7b
	rst  $38                                         ; $78c7: $ff
	rst  $28                                         ; $78c8: $ef
	rst  $38                                         ; $78c9: $ff
	dec  de                                          ; $78ca: $1b
	ld   a, a                                        ; $78cb: $7f
	ld   a, h                                        ; $78cc: $7c
	nop                                              ; $78cd: $00
	add  c                                           ; $78ce: $81
	rrca                                             ; $78cf: $0f
	add  b                                           ; $78d0: $80
	nop                                              ; $78d1: $00
	add  b                                           ; $78d2: $80
	rrca                                             ; $78d3: $0f
	add  b                                           ; $78d4: $80
	nop                                              ; $78d5: $00
	add  e                                           ; $78d6: $83
	rrca                                             ; $78d7: $0f
	ld   bc, $00ff                                   ; $78d8: $01 $ff $00
	add  b                                           ; $78db: $80
	add  c                                           ; $78dc: $81
	add  b                                           ; $78dd: $80
	nop                                              ; $78de: $00
	add  b                                           ; $78df: $80
	add  c                                           ; $78e0: $81
	add  b                                           ; $78e1: $80
	nop                                              ; $78e2: $00
	add  b                                           ; $78e3: $80
	add  c                                           ; $78e4: $81
	dec  b                                           ; $78e5: $05
	nop                                              ; $78e6: $00
	ld   bc, $8582                                   ; $78e7: $01 $82 $85
	ld   sp, hl                                      ; $78ea: $f9
	nop                                              ; $78eb: $00
	add  c                                           ; $78ec: $81
	rst  $38                                         ; $78ed: $ff
	add  b                                           ; $78ee: $80
	nop                                              ; $78ef: $00
	add  b                                           ; $78f0: $80
	rst  $38                                         ; $78f1: $ff
	add  b                                           ; $78f2: $80

jr_017_78f3:
	nop                                              ; $78f3: $00
	add  e                                           ; $78f4: $83
	rst  $38                                         ; $78f5: $ff

jr_017_78f6:
	add  b                                           ; $78f6: $80
	nop                                              ; $78f7: $00
	add  c                                           ; $78f8: $81
	rst  $38                                         ; $78f9: $ff
	ld   bc, $0200                                   ; $78fa: $01 $00 $02
	add  b                                           ; $78fd: $80
	db   $fd                                         ; $78fe: $fd

jr_017_78ff:
	ld   bc, $1d0d                                   ; $78ff: $01 $0d $1d
	add  e                                           ; $7902: $83
	db   $ed                                         ; $7903: $ed
	ld   [bc], a                                     ; $7904: $02
	rlca                                             ; $7905: $07
	ld   [bc], a                                     ; $7906: $02
	ld   a, [$f280]                                  ; $7907: $fa $80 $f2
	add  b                                           ; $790a: $80
	ld   [bc], a                                     ; $790b: $02
	add  b                                           ; $790c: $80
	ld   e, d                                        ; $790d: $5a
	add  b                                           ; $790e: $80
	ld   a, [hl-]                                    ; $790f: $3a
	add  d                                           ; $7910: $82
	ld   a, d                                        ; $7911: $7a
	add  b                                           ; $7912: $80
	ld   [hl], d                                     ; $7913: $72
	adc  l                                           ; $7914: $8d
	rst  $38                                         ; $7915: $ff
	add  b                                           ; $7916: $80
	jp   c, $fd80                                    ; $7917: $da $80 $fd

	add  b                                           ; $791a: $80
	db   $fc                                         ; $791b: $fc
	add  b                                           ; $791c: $80
	ld   a, [$f880]                                  ; $791d: $fa $80 $f8
	add  b                                           ; $7920: $80
	pop  af                                          ; $7921: $f1
	add  b                                           ; $7922: $80
	add  sp, -$80                                    ; $7923: $e8 $80
	ldh  a, [$80]                                    ; $7925: $f0 $80
	nop                                              ; $7927: $00
	add  b                                           ; $7928: $80
	jr   z, jr_017_78af                              ; $7929: $28 $84

	nop                                              ; $792b: $00
	add  b                                           ; $792c: $80
	and  b                                           ; $792d: $a0
	add  b                                           ; $792e: $80
	ld   [$0182], sp                                 ; $792f: $08 $82 $01
	add  b                                           ; $7932: $80
	db   $10                                         ; $7933: $10
	add  b                                           ; $7934: $80
	ld   b, d                                        ; $7935: $42
	add  b                                           ; $7936: $80
	nop                                              ; $7937: $00
	add  b                                           ; $7938: $80
	jr   nz, jr_017_78bb                             ; $7939: $20 $80

	and  d                                           ; $793b: $a2
	add  b                                           ; $793c: $80
	ld   [$4280], sp                                 ; $793d: $08 $80 $42
	add  b                                           ; $7940: $80
	dec  b                                           ; $7941: $05
	add  b                                           ; $7942: $80
	sub  b                                           ; $7943: $90
	add  b                                           ; $7944: $80
	inc  b                                           ; $7945: $04
	add  b                                           ; $7946: $80
	ld   [hl+], a                                    ; $7947: $22
	add  b                                           ; $7948: $80
	ld   b, b                                        ; $7949: $40
	add  b                                           ; $794a: $80
	add  hl, bc                                      ; $794b: $09
	add  b                                           ; $794c: $80
	ld   b, d                                        ; $794d: $42
	add  b                                           ; $794e: $80
	add  hl, hl                                      ; $794f: $29
	add  b                                           ; $7950: $80
	ld   b, h                                        ; $7951: $44
	add  b                                           ; $7952: $80
	ld   [de], a                                     ; $7953: $12
	add  b                                           ; $7954: $80
	add  b                                           ; $7955: $80
	add  b                                           ; $7956: $80
	inc  d                                           ; $7957: $14
	add  b                                           ; $7958: $80
	ld   b, c                                        ; $7959: $41
	add  b                                           ; $795a: $80
	inc  b                                           ; $795b: $04
	add  b                                           ; $795c: $80
	db   $10                                         ; $795d: $10
	add  b                                           ; $795e: $80
	ld   b, d                                        ; $795f: $42
	add  b                                           ; $7960: $80
	db   $10                                         ; $7961: $10
	add  b                                           ; $7962: $80
	ld   b, d                                        ; $7963: $42
	add  b                                           ; $7964: $80
	db   $10                                         ; $7965: $10
	add  b                                           ; $7966: $80
	ld   b, b                                        ; $7967: $40
	add  b                                           ; $7968: $80
	ld   a, [bc]                                     ; $7969: $0a
	add  b                                           ; $796a: $80
	sub  h                                           ; $796b: $94
	add  b                                           ; $796c: $80
	inc  b                                           ; $796d: $04
	add  b                                           ; $796e: $80
	and  d                                           ; $796f: $a2
	add  b                                           ; $7970: $80
	jr   nz, jr_017_78f3                             ; $7971: $20 $80

	ld   [bc], a                                     ; $7973: $02
	add  b                                           ; $7974: $80
	adc  b                                           ; $7975: $88
	add  b                                           ; $7976: $80
	inc  h                                           ; $7977: $24
	add  b                                           ; $7978: $80
	nop                                              ; $7979: $00
	add  b                                           ; $797a: $80
	sub  d                                           ; $797b: $92
	add  b                                           ; $797c: $80
	jr   z, jr_017_78ff                              ; $797d: $28 $80

	sub  d                                           ; $797f: $92
	add  b                                           ; $7980: $80
	and  h                                           ; $7981: $a4
	add  b                                           ; $7982: $80
	nop                                              ; $7983: $00
	add  b                                           ; $7984: $80
	ld   a, [hl+]                                    ; $7985: $2a
	add  b                                           ; $7986: $80
	add  b                                           ; $7987: $80
	add  b                                           ; $7988: $80
	dec  d                                           ; $7989: $15
	add  b                                           ; $798a: $80
	nop                                              ; $798b: $00
	add  b                                           ; $798c: $80
	ld   c, d                                        ; $798d: $4a
	add  b                                           ; $798e: $80
	and  l                                           ; $798f: $a5
	add  b                                           ; $7990: $80
	and  h                                           ; $7991: $a4
	add  b                                           ; $7992: $80
	nop                                              ; $7993: $00
	add  b                                           ; $7994: $80
	inc  d                                           ; $7995: $14
	add  b                                           ; $7996: $80
	ld   hl, $0480                                   ; $7997: $21 $80 $04
	add  b                                           ; $799a: $80
	ld   c, h                                        ; $799b: $4c
	add  b                                           ; $799c: $80
	sub  d                                           ; $799d: $92
	add  b                                           ; $799e: $80
	and  l                                           ; $799f: $a5
	inc  c                                           ; $79a0: $0c
	cp   a                                           ; $79a1: $bf
	ccf                                              ; $79a2: $3f
	ld   d, e                                        ; $79a3: $53
	dec  e                                           ; $79a4: $1d
	and  b                                           ; $79a5: $a0
	ld   bc, $1d1c                                   ; $79a6: $01 $1c $1d
	nop                                              ; $79a9: $00
	ld   de, $3fa0                                   ; $79aa: $11 $a0 $3f
	db   $10                                         ; $79ad: $10
	add  c                                           ; $79ae: $81
	ld   [hl], b                                     ; $79af: $70
	nop                                              ; $79b0: $00
	adc  a                                           ; $79b1: $8f
	add  c                                           ; $79b2: $81
	rrca                                             ; $79b3: $0f
	add  b                                           ; $79b4: $80
	nop                                              ; $79b5: $00
	add  d                                           ; $79b6: $82
	rrca                                             ; $79b7: $0f
	add  h                                           ; $79b8: $84
	nop                                              ; $79b9: $00
	add  b                                           ; $79ba: $80
	or   e                                           ; $79bb: $b3
	add  b                                           ; $79bc: $80
	ld   d, [hl]                                     ; $79bd: $56
	add  d                                           ; $79be: $82
	rst  $38                                         ; $79bf: $ff
	ld   [$ff00], sp                                 ; $79c0: $08 $00 $ff
	db   $fc                                         ; $79c3: $fc
	rst  $38                                         ; $79c4: $ff
	ld   a, e                                        ; $79c5: $7b
	ld   a, a                                        ; $79c6: $7f
	ld   [hl], a                                     ; $79c7: $77
	ld   a, a                                        ; $79c8: $7f
	rrca                                             ; $79c9: $0f
	add  c                                           ; $79ca: $81
	rst  $38                                         ; $79cb: $ff
	add  b                                           ; $79cc: $80
	nop                                              ; $79cd: $00
	add  d                                           ; $79ce: $82
	rst  $38                                         ; $79cf: $ff
	add  h                                           ; $79d0: $84
	nop                                              ; $79d1: $00
	add  d                                           ; $79d2: $82
	db   $ed                                         ; $79d3: $ed
	add  b                                           ; $79d4: $80
	dec  c                                           ; $79d5: $0d
	add  d                                           ; $79d6: $82
	db   $fd                                         ; $79d7: $fd
	add  b                                           ; $79d8: $80
	ld   bc, $0082                                   ; $79d9: $01 $82 $00
	ld   [bc], a                                     ; $79dc: $02
	ld   hl, sp+$77                                  ; $79dd: $f8 $77
	ld   [hl], b                                     ; $79df: $70
	add  b                                           ; $79e0: $80
	ld   l, a                                        ; $79e1: $6f
	add  d                                           ; $79e2: $82
	ld   e, a                                        ; $79e3: $5f
	add  b                                           ; $79e4: $80
	ccf                                              ; $79e5: $3f
	ld   bc, $807f                                   ; $79e6: $01 $7f $80
	add  c                                           ; $79e9: $81
	nop                                              ; $79ea: $00
	add  h                                           ; $79eb: $84
	rst  $38                                         ; $79ec: $ff
	add  b                                           ; $79ed: $80
	cp   $80                                         ; $79ee: $fe $80
	db   $fd                                         ; $79f0: $fd
	add  b                                           ; $79f1: $80
	xor  d                                           ; $79f2: $aa
	add  d                                           ; $79f3: $82
	nop                                              ; $79f4: $00
	add  b                                           ; $79f5: $80
	call nc, $c080                                   ; $79f6: $d4 $80 $c0
	add  b                                           ; $79f9: $80
	ld   [hl+], a                                    ; $79fa: $22
	add  b                                           ; $79fb: $80
	add  b                                           ; $79fc: $80
	add  b                                           ; $79fd: $80
	nop                                              ; $79fe: $00
	add  b                                           ; $79ff: $80
	ld   [de], a                                     ; $7a00: $12
	add  b                                           ; $7a01: $80
	nop                                              ; $7a02: $00
	add  b                                           ; $7a03: $80
	inc  b                                           ; $7a04: $04
	add  b                                           ; $7a05: $80
	ld   [$2080], sp                                 ; $7a06: $08 $80 $20
	add  b                                           ; $7a09: $80
	sub  l                                           ; $7a0a: $95
	add  b                                           ; $7a0b: $80
	nop                                              ; $7a0c: $00
	add  b                                           ; $7a0d: $80
	ld   d, [hl]                                     ; $7a0e: $56
	add  b                                           ; $7a0f: $80
	ld   b, d                                        ; $7a10: $42
	add  b                                           ; $7a11: $80
	db   $10                                         ; $7a12: $10
	add  b                                           ; $7a13: $80
	ld   b, l                                        ; $7a14: $45
	add  b                                           ; $7a15: $80
	ld   [hl+], a                                    ; $7a16: $22
	add  b                                           ; $7a17: $80
	ld   [$0380], sp                                 ; $7a18: $08 $80 $03
	add  b                                           ; $7a1b: $80
	or   d                                           ; $7a1c: $b2
	add  b                                           ; $7a1d: $80
	dec  h                                           ; $7a1e: $25
	add  b                                           ; $7a1f: $80
	sub  c                                           ; $7a20: $91
	add  b                                           ; $7a21: $80
	ld   c, h                                        ; $7a22: $4c
	add  b                                           ; $7a23: $80
	dec  d                                           ; $7a24: $15
	add  b                                           ; $7a25: $80
	ld   b, b                                        ; $7a26: $40
	add  b                                           ; $7a27: $80

jr_017_7a28:
	inc  d                                           ; $7a28: $14
	add  b                                           ; $7a29: $80
	ld   b, d                                        ; $7a2a: $42
	add  b                                           ; $7a2b: $80
	ld   de, $4a80                                   ; $7a2c: $11 $80 $4a
	add  b                                           ; $7a2f: $80

jr_017_7a30:
	ld   [hl], $80                                   ; $7a30: $36 $80
	ld   c, b                                        ; $7a32: $48
	add  b                                           ; $7a33: $80
	dec  [hl]                                        ; $7a34: $35
	add  b                                           ; $7a35: $80
	sub  l                                           ; $7a36: $95
	add  b                                           ; $7a37: $80
	ld   c, b                                        ; $7a38: $48
	add  b                                           ; $7a39: $80
	add  h                                           ; $7a3a: $84
	add  b                                           ; $7a3b: $80
	xor  c                                           ; $7a3c: $a9
	add  b                                           ; $7a3d: $80
	sub  d                                           ; $7a3e: $92
	add  b                                           ; $7a3f: $80
	ld   c, b                                        ; $7a40: $48
	add  b                                           ; $7a41: $80
	and  l                                           ; $7a42: $a5
	add  b                                           ; $7a43: $80
	ret  z                                           ; $7a44: $c8

	add  b                                           ; $7a45: $80
	inc  c                                           ; $7a46: $0c
	add  b                                           ; $7a47: $80
	and  e                                           ; $7a48: $a3
	add  b                                           ; $7a49: $80
	inc  h                                           ; $7a4a: $24
	add  b                                           ; $7a4b: $80
	ld   d, l                                        ; $7a4c: $55
	add  b                                           ; $7a4d: $80
	sub  d                                           ; $7a4e: $92
	add  b                                           ; $7a4f: $80
	xor  c                                           ; $7a50: $a9
	add  b                                           ; $7a51: $80
	ld   [hl], a                                     ; $7a52: $77
	add  b                                           ; $7a53: $80
	dec  l                                           ; $7a54: $2d
	add  b                                           ; $7a55: $80
	ld   h, l                                        ; $7a56: $65
	add  b                                           ; $7a57: $80
	nop                                              ; $7a58: $00
	add  b                                           ; $7a59: $80
	dec  l                                           ; $7a5a: $2d
	add  b                                           ; $7a5b: $80
	ld   h, e                                        ; $7a5c: $63
	add  b                                           ; $7a5d: $80
	adc  b                                           ; $7a5e: $88
	add  b                                           ; $7a5f: $80
	or   l                                           ; $7a60: $b5
	add  b                                           ; $7a61: $80
	ld   d, e                                        ; $7a62: $53
	add  b                                           ; $7a63: $80
	ld   e, h                                        ; $7a64: $5c
	add  b                                           ; $7a65: $80
	adc  b                                           ; $7a66: $88
	add  b                                           ; $7a67: $80
	ld   h, e                                        ; $7a68: $63
	add  b                                           ; $7a69: $80
	inc  c                                           ; $7a6a: $0c
	add  b                                           ; $7a6b: $80
	halt                                             ; $7a6c: $76
	add  b                                           ; $7a6d: $80

jr_017_7a6e:
	dec  hl                                          ; $7a6e: $2b
	add  b                                           ; $7a6f: $80
	db   $dd                                         ; $7a70: $dd
	add  b                                           ; $7a71: $80
	ld   a, [hl+]                                    ; $7a72: $2a
	add  b                                           ; $7a73: $80
	push de                                          ; $7a74: $d5
	add  b                                           ; $7a75: $80
	adc  h                                           ; $7a76: $8c
	add  b                                           ; $7a77: $80

jr_017_7a78:
	dec  hl                                          ; $7a78: $2b
	add  b                                           ; $7a79: $80
	db   $dd                                         ; $7a7a: $dd
	add  b                                           ; $7a7b: $80
	xor  e                                           ; $7a7c: $ab
	add  b                                           ; $7a7d: $80
	or   l                                           ; $7a7e: $b5
	add  b                                           ; $7a7f: $80
	ld   a, [hl]                                     ; $7a80: $7e
	add  b                                           ; $7a81: $80
	xor  c                                           ; $7a82: $a9
	add  b                                           ; $7a83: $80
	ld   e, a                                        ; $7a84: $5f
	inc  b                                           ; $7a85: $04
	ldh  [$60], a                                    ; $7a86: $e0 $60
	rra                                              ; $7a88: $1f
	ld   a, a                                        ; $7a89: $7f
	nop                                              ; $7a8a: $00
	add  c                                           ; $7a8b: $81
	ld   h, b                                        ; $7a8c: $60
	ld   b, $12                                      ; $7a8d: $06 $12
	rst  $38                                         ; $7a8f: $ff
	ld   h, l                                        ; $7a90: $65
	ld   c, b                                        ; $7a91: $48
	ld   h, l                                        ; $7a92: $65
	and  l                                           ; $7a93: $a5
	add  b                                           ; $7a94: $80
	add  a                                           ; $7a95: $87
	nop                                              ; $7a96: $00
	add  b                                           ; $7a97: $80
	ld   bc, $0480                                   ; $7a98: $01 $80 $04
	add  b                                           ; $7a9b: $80
	ld   bc, $0f80                                   ; $7a9c: $01 $80 $0f
	add  h                                           ; $7a9f: $84
	nop                                              ; $7aa0: $00
	add  b                                           ; $7aa1: $80
	db   $10                                         ; $7aa2: $10
	add  b                                           ; $7aa3: $80
	ld   [bc], a                                     ; $7aa4: $02
	add  b                                           ; $7aa5: $80
	jr   z, jr_017_7a28                              ; $7aa6: $28 $80

	ld   b, d                                        ; $7aa8: $42
	add  b                                           ; $7aa9: $80
	rst  $38                                         ; $7aaa: $ff
	add  d                                           ; $7aab: $82
	nop                                              ; $7aac: $00
	add  b                                           ; $7aad: $80
	jr   nz, jr_017_7a30                             ; $7aae: $20 $80

	ld   a, [hl+]                                    ; $7ab0: $2a
	add  b                                           ; $7ab1: $80
	ld   bc, $8880                                   ; $7ab2: $01 $80 $88
	add  b                                           ; $7ab5: $80
	ld   [hl+], a                                    ; $7ab6: $22
	add  b                                           ; $7ab7: $80
	rst  $38                                         ; $7ab8: $ff
	add  b                                           ; $7ab9: $80
	nop                                              ; $7aba: $00
	add  b                                           ; $7abb: $80
	ld   [bc], a                                     ; $7abc: $02
	add  b                                           ; $7abd: $80
	ld   de, $4880                                   ; $7abe: $11 $80 $48
	add  b                                           ; $7ac1: $80
	ld   bc, $2480                                   ; $7ac2: $01 $80 $24
	add  b                                           ; $7ac5: $80
	ld   d, c                                        ; $7ac6: $51
	add  b                                           ; $7ac7: $80
	rst  $38                                         ; $7ac8: $ff
	add  b                                           ; $7ac9: $80
	ld   [bc], a                                     ; $7aca: $02
	add  b                                           ; $7acb: $80
	ld   hl, $0480                                   ; $7acc: $21 $80 $04
	add  b                                           ; $7acf: $80
	ld   b, d                                        ; $7ad0: $42
	add  b                                           ; $7ad1: $80
	ld   [$4180], sp                                 ; $7ad2: $08 $80 $41
	add  b                                           ; $7ad5: $80
	ld   [de], a                                     ; $7ad6: $12
	inc  bc                                          ; $7ad7: $03
	xor  d                                           ; $7ad8: $aa
	rst  $38                                         ; $7ad9: $ff
	add  hl, de                                      ; $7ada: $19
	ld   c, h                                        ; $7adb: $4c
	add  b                                           ; $7adc: $80
	ld   [de], a                                     ; $7add: $12
	add  b                                           ; $7ade: $80
	ld   b, c                                        ; $7adf: $41
	add  b                                           ; $7ae0: $80
	adc  d                                           ; $7ae1: $8a
	add  b                                           ; $7ae2: $80
	ld   a, [hl+]                                    ; $7ae3: $2a
	add  b                                           ; $7ae4: $80
	ld   bc, $9480                                   ; $7ae5: $01 $80 $94
	inc  bc                                          ; $7ae8: $03
	nop                                              ; $7ae9: $00
	rst  $38                                         ; $7aea: $ff
	rst  JumpTable                                         ; $7aeb: $df
	jr   nz, jr_017_7a6e                             ; $7aec: $20 $80

	add  d                                           ; $7aee: $82
	add  b                                           ; $7aef: $80
	dec  d                                           ; $7af0: $15
	add  b                                           ; $7af1: $80
	ld   b, h                                        ; $7af2: $44
	add  b                                           ; $7af3: $80
	ld   d, c                                        ; $7af4: $51
	add  b                                           ; $7af5: $80
	jr   z, jr_017_7a78                              ; $7af6: $28 $80

	ld   d, e                                        ; $7af8: $53
	nop                                              ; $7af9: $00
	nop                                              ; $7afa: $00
	add  b                                           ; $7afb: $80
	rst  $38                                         ; $7afc: $ff
	nop                                              ; $7afd: $00
	nop                                              ; $7afe: $00
	add  b                                           ; $7aff: $80
	ld   c, e                                        ; $7b00: $4b
	add  b                                           ; $7b01: $80
	ld   l, d                                        ; $7b02: $6a
	add  b                                           ; $7b03: $80

jr_017_7b04:
	add  l                                           ; $7b04: $85
	add  b                                           ; $7b05: $80
	inc  d                                           ; $7b06: $14
	add  b                                           ; $7b07: $80
	ld   b, c                                        ; $7b08: $41
	add  b                                           ; $7b09: $80
	ld   a, [hl+]                                    ; $7b0a: $2a
	inc  bc                                          ; $7b0b: $03
	nop                                              ; $7b0c: $00
	rst  $38                                         ; $7b0d: $ff
	or   [hl]                                        ; $7b0e: $b6
	ld   c, c                                        ; $7b0f: $49
	add  b                                           ; $7b10: $80
	sub  d                                           ; $7b11: $92
	add  b                                           ; $7b12: $80
	ld   l, c                                        ; $7b13: $69
	add  b                                           ; $7b14: $80
	ld   h, $80                                      ; $7b15: $26 $80
	ld   c, d                                        ; $7b17: $4a
	add  b                                           ; $7b18: $80
	push af                                          ; $7b19: $f5
	add  b                                           ; $7b1a: $80
	xor  [hl]                                        ; $7b1b: $ae
	inc  bc                                          ; $7b1c: $03
	nop                                              ; $7b1d: $00
	rst  $38                                         ; $7b1e: $ff
	ld   l, l                                        ; $7b1f: $6d
	sub  d                                           ; $7b20: $92
	add  b                                           ; $7b21: $80
	add  hl, sp                                      ; $7b22: $39
	add  b                                           ; $7b23: $80
	ld   d, a                                        ; $7b24: $57
	add  b                                           ; $7b25: $80
	xor  d                                           ; $7b26: $aa
	add  b                                           ; $7b27: $80
	adc  l                                           ; $7b28: $8d
	add  b                                           ; $7b29: $80
	ld   l, d                                        ; $7b2a: $6a
	add  b                                           ; $7b2b: $80
	ld   d, a                                        ; $7b2c: $57
	inc  bc                                          ; $7b2d: $03
	nop                                              ; $7b2e: $00
	rst  $38                                         ; $7b2f: $ff
	add  l                                           ; $7b30: $85
	ld   a, d                                        ; $7b31: $7a
	add  b                                           ; $7b32: $80
	or   l                                           ; $7b33: $b5
	add  b                                           ; $7b34: $80
	ld   c, l                                        ; $7b35: $4d
	add  b                                           ; $7b36: $80
	or   $80                                         ; $7b37: $f6 $80
	dec  hl                                          ; $7b39: $2b
	add  b                                           ; $7b3a: $80
	cp   $80                                         ; $7b3b: $fe $80
	and  l                                           ; $7b3d: $a5
	inc  bc                                          ; $7b3e: $03
	nop                                              ; $7b3f: $00
	rst  $38                                         ; $7b40: $ff
	inc  h                                           ; $7b41: $24
	db   $db                                         ; $7b42: $db
	add  b                                           ; $7b43: $80
	dec  l                                           ; $7b44: $2d
	add  b                                           ; $7b45: $80
	ei                                               ; $7b46: $fb
	add  b                                           ; $7b47: $80
	rst  $10                                         ; $7b48: $d7
	add  b                                           ; $7b49: $80
	ld   a, l                                        ; $7b4a: $7d
	ld   bc, $dbda                                   ; $7b4b: $01 $da $db
	add  b                                           ; $7b4e: $80
	ld   a, l                                        ; $7b4f: $7d
	inc  bc                                          ; $7b50: $03
	ld   bc, $eaff                                   ; $7b51: $01 $ff $ea
	dec  d                                           ; $7b54: $15
	add  b                                           ; $7b55: $80
	ld   l, d                                        ; $7b56: $6a
	add  b                                           ; $7b57: $80
	or   h                                           ; $7b58: $b4
	add  b                                           ; $7b59: $80
	rst  $38                                         ; $7b5a: $ff
	ld   [bc], a                                     ; $7b5b: $02
	nop                                              ; $7b5c: $00
	add  b                                           ; $7b5d: $80
	ret  nz                                          ; $7b5e: $c0

	add  c                                           ; $7b5f: $81
	ld   b, b                                        ; $7b60: $40

jr_017_7b61:
	inc  bc                                          ; $7b61: $03
	jr   nz, jr_017_7b04                             ; $7b62: $20 $a0

	cpl                                              ; $7b64: $2f
	xor  a                                           ; $7b65: $af
	add  b                                           ; $7b66: $80
	ld   [hl], l                                     ; $7b67: $75
	add  b                                           ; $7b68: $80
	xor  [hl]                                        ; $7b69: $ae
	add  b                                           ; $7b6a: $80
	rst  $38                                         ; $7b6b: $ff
	add  [hl]                                        ; $7b6c: $86
	nop                                              ; $7b6d: $00
	add  b                                           ; $7b6e: $80
	ld   d, l                                        ; $7b6f: $55
	add  b                                           ; $7b70: $80
	xor  [hl]                                        ; $7b71: $ae
	add  b                                           ; $7b72: $80
	rst  $38                                         ; $7b73: $ff
	ld   [bc], a                                     ; $7b74: $02
	ei                                               ; $7b75: $fb
	rst  $38                                         ; $7b76: $ff
	inc  b                                           ; $7b77: $04
	add  c                                           ; $7b78: $81
	nop                                              ; $7b79: $00
	add  d                                           ; $7b7a: $82
	ld   bc, $0201                                   ; $7b7b: $01 $01 $02
	db   $fd                                         ; $7b7e: $fd
	add  b                                           ; $7b7f: $80
	cp   $80                                         ; $7b80: $fe $80
	db   $fd                                         ; $7b82: $fd
	add  b                                           ; $7b83: $80
	cp   $80                                         ; $7b84: $fe $80
	db   $fd                                         ; $7b86: $fd
	add  b                                           ; $7b87: $80
	cp   $80                                         ; $7b88: $fe $80
	db   $fd                                         ; $7b8a: $fd
	ld   bc, $3ede                                   ; $7b8b: $01 $de $3e
	ld   hl, sp+$00                                  ; $7b8e: $f8 $00
	add  [hl]                                        ; $7b90: $86
	nop                                              ; $7b91: $00
	ld   [$007f], sp                                 ; $7b92: $08 $7f $00
	sbc  a                                           ; $7b95: $9f
	ccf                                              ; $7b96: $3f
	rra                                              ; $7b97: $1f
	ld   a, a                                        ; $7b98: $7f
	ccf                                              ; $7b99: $3f
	ld   a, a                                        ; $7b9a: $7f
	rst  $38                                         ; $7b9b: $ff
	add  l                                           ; $7b9c: $85
	nop                                              ; $7b9d: $00
	ld   bc, $00ff                                   ; $7b9e: $01 $ff $00
	add  l                                           ; $7ba1: $85
	rst  $38                                         ; $7ba2: $ff
	add  l                                           ; $7ba3: $85
	nop                                              ; $7ba4: $00
	ld   [$00fb], sp                                 ; $7ba5: $08 $fb $00
	db   $e4                                         ; $7ba8: $e4
	pop  af                                          ; $7ba9: $f1
	ldh  [$f3], a                                    ; $7baa: $e0 $f3
	pop  hl                                          ; $7bac: $e1
	di                                               ; $7bad: $f3
	rst  $28                                         ; $7bae: $ef
	add  l                                           ; $7baf: $85
	nop                                              ; $7bb0: $00
	ld   [$00f8], sp                                 ; $7bb1: $08 $f8 $00
	db   $e4                                         ; $7bb4: $e4
	ldh  a, [$e0]                                    ; $7bb5: $f0 $e0
	ld   hl, sp-$0e                                  ; $7bb7: $f8 $f2
	ld   hl, sp-$02                                  ; $7bb9: $f8 $fe
	add  l                                           ; $7bbb: $85
	nop                                              ; $7bbc: $00
	ld   [$001f], sp                                 ; $7bbd: $08 $1f $00
	ld   h, $0f                                      ; $7bc0: $26 $0f
	ld   b, $1f                                      ; $7bc2: $06 $1f
	rrca                                             ; $7bc4: $0f
	rra                                              ; $7bc5: $1f
	ccf                                              ; $7bc6: $3f
	add  l                                           ; $7bc7: $85
	nop                                              ; $7bc8: $00
	ld   [$009f], sp                                 ; $7bc9: $08 $9f $00
	ld   h, a                                        ; $7bcc: $67
	rrca                                             ; $7bcd: $0f
	rlca                                             ; $7bce: $07
	sbc  a                                           ; $7bcf: $9f
	rrca                                             ; $7bd0: $0f
	sbc  a                                           ; $7bd1: $9f
	rst  $38                                         ; $7bd2: $ff
	add  l                                           ; $7bd3: $85
	nop                                              ; $7bd4: $00
	ld   bc, $00ff                                   ; $7bd5: $01 $ff $00
	add  l                                           ; $7bd8: $85
	rst  $38                                         ; $7bd9: $ff
	add  l                                           ; $7bda: $85
	nop                                              ; $7bdb: $00
	ld   [de], a                                     ; $7bdc: $12
	ret  nz                                          ; $7bdd: $c0

	nop                                              ; $7bde: $00
	jr   nc, jr_017_7b61                             ; $7bdf: $30 $80

	ld   c, b                                        ; $7be1: $48
	ldh  [$c4], a                                    ; $7be2: $e0 $c4
	ldh  a, [$ec]                                    ; $7be4: $f0 $ec
	nop                                              ; $7be6: $00
	ld   a, a                                        ; $7be7: $7f
	nop                                              ; $7be8: $00
	sbc  a                                           ; $7be9: $9f
	ccf                                              ; $7bea: $3f
	rra                                              ; $7beb: $1f
	ld   a, a                                        ; $7bec: $7f
	ccf                                              ; $7bed: $3f
	ld   a, a                                        ; $7bee: $7f
	ld   a, h                                        ; $7bef: $7c
	add  b                                           ; $7bf0: $80
	ld   a, [hl]                                     ; $7bf1: $7e
	add  b                                           ; $7bf2: $80
	ld   a, h                                        ; $7bf3: $7c
	dec  de                                          ; $7bf4: $1b
	ld   a, l                                        ; $7bf5: $7d
	cp   $00                                         ; $7bf6: $fe $00
	rst  $38                                         ; $7bf8: $ff
	nop                                              ; $7bf9: $00
	db   $fc                                         ; $7bfa: $fc
	cp   $fc                                         ; $7bfb: $fe $fc
	cp   $fc                                         ; $7bfd: $fe $fc
	cp   $02                                         ; $7bff: $fe $02
	nop                                              ; $7c01: $00
	ld   bc, $f900                                   ; $7c02: $01 $00 $f9
	db   $fc                                         ; $7c05: $fc
	ei                                               ; $7c06: $fb
	nop                                              ; $7c07: $00
	ld   a, a                                        ; $7c08: $7f
	nop                                              ; $7c09: $00
	sbc  a                                           ; $7c0a: $9f
	ccf                                              ; $7c0b: $3f
	rra                                              ; $7c0c: $1f
	ld   a, a                                        ; $7c0d: $7f
	ccf                                              ; $7c0e: $3f
	ld   a, a                                        ; $7c0f: $7f
	ld   a, h                                        ; $7c10: $7c
	add  c                                           ; $7c11: $81
	ld   a, [hl]                                     ; $7c12: $7e
	inc  c                                           ; $7c13: $0c
	ld   a, l                                        ; $7c14: $7d
	ld   a, a                                        ; $7c15: $7f
	rst  $38                                         ; $7c16: $ff
	nop                                              ; $7c17: $00
	rst  $38                                         ; $7c18: $ff
	nop                                              ; $7c19: $00
	db   $fc                                         ; $7c1a: $fc
	cp   $fc                                         ; $7c1b: $fe $fc
	cp   $fc                                         ; $7c1d: $fe $fc
	cp   $02                                         ; $7c1f: $fe $02
	add  c                                           ; $7c21: $81
	nop                                              ; $7c22: $00
	ld   c, $fc                                      ; $7c23: $0e $fc
	cp   $fd                                         ; $7c25: $fe $fd
	nop                                              ; $7c27: $00
	rst  $38                                         ; $7c28: $ff
	nop                                              ; $7c29: $00
	ccf                                              ; $7c2a: $3f
	ld   a, a                                        ; $7c2b: $7f
	ccf                                              ; $7c2c: $3f
	ld   a, a                                        ; $7c2d: $7f
	ccf                                              ; $7c2e: $3f
	ld   a, a                                        ; $7c2f: $7f
	ld   b, a                                        ; $7c30: $47
	rrca                                             ; $7c31: $0f
	rst  $38                                         ; $7c32: $ff
	add  c                                           ; $7c33: $81
	rlca                                             ; $7c34: $07
	inc  c                                           ; $7c35: $0c
	rrca                                             ; $7c36: $0f
	nop                                              ; $7c37: $00
	cp   $00                                         ; $7c38: $fe $00
	ld   hl, sp-$04                                  ; $7c3a: $f8 $fc
	ld   hl, sp-$04                                  ; $7c3c: $f8 $fc
	ld   hl, sp-$04                                  ; $7c3e: $f8 $fc
	call nz, $fee0                                   ; $7c40: $c4 $e0 $fe
	add  c                                           ; $7c43: $81
	ret  nz                                          ; $7c44: $c0

	nop                                              ; $7c45: $00
	ldh  [$9d], a                                    ; $7c46: $e0 $9d
	nop                                              ; $7c48: $00
	nop                                              ; $7c49: $00
	add  c                                           ; $7c4a: $81
	add  b                                           ; $7c4b: $80
	ld   a, a                                        ; $7c4c: $7f
	add  [hl]                                        ; $7c4d: $86
	ld   a, [hl]                                     ; $7c4e: $7e
	ld   bc, $7e7f                                   ; $7c4f: $01 $7f $7e
	add  c                                           ; $7c52: $81
	ld   a, a                                        ; $7c53: $7f
	add  b                                           ; $7c54: $80
	nop                                              ; $7c55: $00
	ld   [bc], a                                     ; $7c56: $02
	ld   a, a                                        ; $7c57: $7f
	nop                                              ; $7c58: $00
	add  b                                           ; $7c59: $80
	add  c                                           ; $7c5a: $81
	nop                                              ; $7c5b: $00
	inc  bc                                          ; $7c5c: $03
	add  b                                           ; $7c5d: $80
	nop                                              ; $7c5e: $00
	ld   a, a                                        ; $7c5f: $7f
	nop                                              ; $7c60: $00
	add  d                                           ; $7c61: $82
	rst  $38                                         ; $7c62: $ff
	add  b                                           ; $7c63: $80
	inc  bc                                          ; $7c64: $03
	nop                                              ; $7c65: $00
	ei                                               ; $7c66: $fb
	add  l                                           ; $7c67: $85
	inc  bc                                          ; $7c68: $03
	ld   [$03fb], sp                                 ; $7c69: $08 $fb $03
	db   $e3                                         ; $7c6c: $e3
	di                                               ; $7c6d: $f3
	db   $e3                                         ; $7c6e: $e3
	di                                               ; $7c6f: $f3
	ld   sp, hl                                      ; $7c70: $f9
	db   $fc                                         ; $7c71: $fc
	ld   sp, hl                                      ; $7c72: $f9
	add  b                                           ; $7c73: $80
	db   $fc                                         ; $7c74: $fc
	ld   bc, $fcfe                                   ; $7c75: $01 $fe $fc
	add  b                                           ; $7c78: $80
	cp   $01                                         ; $7c79: $fe $01
	rst  $38                                         ; $7c7b: $ff
	or   $80                                         ; $7c7c: $f6 $80
	rst  $38                                         ; $7c7e: $ff
	inc  bc                                          ; $7c7f: $03
	rst  $30                                         ; $7c80: $f7
	di                                               ; $7c81: $f3
	rst  $30                                         ; $7c82: $f7
	db   $db                                         ; $7c83: $db
	add  e                                           ; $7c84: $83
	rra                                              ; $7c85: $1f
	nop                                              ; $7c86: $00
	sbc  a                                           ; $7c87: $9f
	add  c                                           ; $7c88: $81
	rra                                              ; $7c89: $1f
	nop                                              ; $7c8a: $00
	ld   e, a                                        ; $7c8b: $5f
	add  b                                           ; $7c8c: $80
	rra                                              ; $7c8d: $1f
	ld   bc, $1f9f                                   ; $7c8e: $01 $9f $1f
	adc  a                                           ; $7c91: $8f
	sbc  a                                           ; $7c92: $9f
	ld   [$c783], sp                                 ; $7c93: $08 $83 $c7
	push de                                          ; $7c96: $d5
	add  e                                           ; $7c97: $83
	xor  d                                           ; $7c98: $aa
	add  c                                           ; $7c99: $81
	add  l                                           ; $7c9a: $85
	add  b                                           ; $7c9b: $80
	add  d                                           ; $7c9c: $82
	add  c                                           ; $7c9d: $81
	add  b                                           ; $7c9e: $80
	nop                                              ; $7c9f: $00
	add  c                                           ; $7ca0: $81
	add  c                                           ; $7ca1: $81
	add  b                                           ; $7ca2: $80
	inc  b                                           ; $7ca3: $04
	adc  $f8                                         ; $7ca4: $ce $f8
	ldh  a, [$fc]                                    ; $7ca6: $f0 $fc
	ld   sp, hl                                      ; $7ca8: $f9
	add  b                                           ; $7ca9: $80
	db   $fc                                         ; $7caa: $fc
	ld   bc, $7cfe                                   ; $7cab: $01 $fe $7c
	add  b                                           ; $7cae: $80
	cp   $83                                         ; $7caf: $fe $83
	ld   a, [hl]                                     ; $7cb1: $7e
	add  b                                           ; $7cb2: $80
	ld   a, l                                        ; $7cb3: $7d
	nop                                              ; $7cb4: $00
	ld   a, h                                        ; $7cb5: $7c
	add  b                                           ; $7cb6: $80
	ld   a, l                                        ; $7cb7: $7d
	add  b                                           ; $7cb8: $80
	ld   a, h                                        ; $7cb9: $7c
	dec  c                                           ; $7cba: $0d
	ld   a, [hl]                                     ; $7cbb: $7e
	ld   a, l                                        ; $7cbc: $7d
	ld   a, a                                        ; $7cbd: $7f
	ccf                                              ; $7cbe: $3f
	ld   a, a                                        ; $7cbf: $7f
	ld   e, a                                        ; $7cc0: $5f
	ccf                                              ; $7cc1: $3f
	and  b                                           ; $7cc2: $a0
	nop                                              ; $7cc3: $00
	ld   a, h                                        ; $7cc4: $7c
	cp   $fc                                         ; $7cc5: $fe $fc
	cp   $3e                                         ; $7cc7: $fe $3e
	add  c                                           ; $7cc9: $81
	ld   a, [hl]                                     ; $7cca: $7e
	ld   [$febe], sp                                 ; $7ccb: $08 $be $fe
	db   $fc                                         ; $7cce: $fc
	cp   $fa                                         ; $7ccf: $fe $fa
	db   $fc                                         ; $7cd1: $fc
	dec  b                                           ; $7cd2: $05
	nop                                              ; $7cd3: $00
	ld   a, [hl]                                     ; $7cd4: $7e
	add  c                                           ; $7cd5: $81
	ld   a, a                                        ; $7cd6: $7f
	nop                                              ; $7cd7: $00
	ld   a, h                                        ; $7cd8: $7c
	add  c                                           ; $7cd9: $81
	ld   a, [hl]                                     ; $7cda: $7e
	inc  c                                           ; $7cdb: $0c
	ld   a, l                                        ; $7cdc: $7d
	ld   a, a                                        ; $7cdd: $7f
	ccf                                              ; $7cde: $3f
	ld   a, a                                        ; $7cdf: $7f
	ld   e, a                                        ; $7ce0: $5f
	ccf                                              ; $7ce1: $3f
	and  b                                           ; $7ce2: $a0
	nop                                              ; $7ce3: $00
	ld   a, [hl]                                     ; $7ce4: $7e
	cp   $fc                                         ; $7ce5: $fe $fc
	cp   $02                                         ; $7ce7: $fe $02
	add  c                                           ; $7ce9: $81
	nop                                              ; $7cea: $00
	ld   [$fefc], sp                                 ; $7ceb: $08 $fc $fe
	db   $fc                                         ; $7cee: $fc
	cp   $fc                                         ; $7cef: $fe $fc
	cp   $02                                         ; $7cf1: $fe $02
	nop                                              ; $7cf3: $00
	rst  $30                                         ; $7cf4: $f7
	add  a                                           ; $7cf5: $87
	rlca                                             ; $7cf6: $07
	ld   b, $03                                      ; $7cf7: $06 $03
	rlca                                             ; $7cf9: $07
	dec  b                                           ; $7cfa: $05
	inc  bc                                          ; $7cfb: $03
	ld   a, [bc]                                     ; $7cfc: $0a
	nop                                              ; $7cfd: $00
	daa                                              ; $7cfe: $27
	add  a                                           ; $7cff: $87
	ret  nz                                          ; $7d00: $c0

	ld   b, $80                                      ; $7d01: $06 $80
	ret  nz                                          ; $7d03: $c0

	ld   b, b                                        ; $7d04: $40
	add  b                                           ; $7d05: $80
	and  b                                           ; $7d06: $a0
	nop                                              ; $7d07: $00
	ret  nz                                          ; $7d08: $c0

	sbc  l                                           ; $7d09: $9d
	nop                                              ; $7d0a: $00
	ld   [bc], a                                     ; $7d0b: $02
	add  b                                           ; $7d0c: $80
	ld   a, a                                        ; $7d0d: $7f
	ld   a, [hl]                                     ; $7d0e: $7e
	add  b                                           ; $7d0f: $80
	ld   a, a                                        ; $7d10: $7f
	adc  b                                           ; $7d11: $88
	ld   a, [hl]                                     ; $7d12: $7e
	ld   [bc], a                                     ; $7d13: $02
	ld   a, a                                        ; $7d14: $7f
	cp   $ff                                         ; $7d15: $fe $ff
	add  b                                           ; $7d17: $80
	nop                                              ; $7d18: $00
	ld   [bc], a                                     ; $7d19: $02
	ld   a, a                                        ; $7d1a: $7f
	nop                                              ; $7d1b: $00
	add  b                                           ; $7d1c: $80
	add  e                                           ; $7d1d: $83
	nop                                              ; $7d1e: $00
	ld   [$0080], sp                                 ; $7d1f: $08 $80 $00
	ld   a, a                                        ; $7d22: $7f
	nop                                              ; $7d23: $00
	db   $e3                                         ; $7d24: $e3
	di                                               ; $7d25: $f3
	inc  de                                          ; $7d26: $13
	inc  bc                                          ; $7d27: $03
	ei                                               ; $7d28: $fb
	add  a                                           ; $7d29: $87
	inc  bc                                          ; $7d2a: $03
	ld   bc, $03fb                                   ; $7d2b: $01 $fb $03
	add  b                                           ; $7d2e: $80
	di                                               ; $7d2f: $f3
	nop                                              ; $7d30: $00
	pop  af                                          ; $7d31: $f1
	add  b                                           ; $7d32: $80
	di                                               ; $7d33: $f3
	ld   bc, $f4f1                                   ; $7d34: $01 $f1 $f4
	add  b                                           ; $7d37: $80
	pop  af                                          ; $7d38: $f1
	ld   bc, $f2f0                                   ; $7d39: $01 $f0 $f2
	add  c                                           ; $7d3c: $81
	ldh  a, [rDIV]                                   ; $7d3d: $f0 $04
	pop  af                                          ; $7d3f: $f1
	ldh  a, [$98]                                    ; $7d40: $f0 $98
	rst  JumpTable                                         ; $7d42: $df
	sbc  a                                           ; $7d43: $9f
	add  b                                           ; $7d44: $80
	rst  JumpTable                                         ; $7d45: $df
	ld   bc, $dfff                                   ; $7d46: $01 $ff $df
	add  c                                           ; $7d49: $81
	rst  $38                                         ; $7d4a: $ff
	nop                                              ; $7d4b: $00
	ld   a, a                                        ; $7d4c: $7f
	add  b                                           ; $7d4d: $80
	rst  $38                                         ; $7d4e: $ff
	inc  bc                                          ; $7d4f: $03
	ld   a, a                                        ; $7d50: $7f
	ccf                                              ; $7d51: $3f
	ld   a, a                                        ; $7d52: $7f
	rst  JumpTable                                         ; $7d53: $df
	adc  l                                           ; $7d54: $8d
	sbc  a                                           ; $7d55: $9f
	nop                                              ; $7d56: $00
	cp   a                                           ; $7d57: $bf
	add  c                                           ; $7d58: $81
	add  b                                           ; $7d59: $80
	nop                                              ; $7d5a: $00
	add  c                                           ; $7d5b: $81
	add  c                                           ; $7d5c: $81
	add  b                                           ; $7d5d: $80
	ld   [$8082], sp                                 ; $7d5e: $08 $82 $80
	add  h                                           ; $7d61: $84
	add  c                                           ; $7d62: $81
	xor  b                                           ; $7d63: $a8
	add  e                                           ; $7d64: $83
	sub  c                                           ; $7d65: $91
	rst  ToBoot                                         ; $7d66: $c7
	ld   a, [hl-]                                    ; $7d67: $3a
	add  h                                           ; $7d68: $84
	ld   a, [hl]                                     ; $7d69: $7e
	ld   bc, $7cfe                                   ; $7d6a: $01 $fe $7c
	add  b                                           ; $7d6d: $80
	cp   $05                                         ; $7d6e: $fe $05
	db   $fc                                         ; $7d70: $fc
	ld   sp, hl                                      ; $7d71: $f9
	db   $fc                                         ; $7d72: $fc
	db   $f4                                         ; $7d73: $f4
	ld   hl, sp-$0a                                  ; $7d74: $f8 $f6
	sbc  l                                           ; $7d76: $9d
	nop                                              ; $7d77: $00
	ld   [$007f], sp                                 ; $7d78: $08 $7f $00
	sbc  a                                           ; $7d7b: $9f
	ccf                                              ; $7d7c: $3f
	rra                                              ; $7d7d: $1f
	ld   a, a                                        ; $7d7e: $7f
	ccf                                              ; $7d7f: $3f
	ld   a, a                                        ; $7d80: $7f
	ld   a, h                                        ; $7d81: $7c
	add  c                                           ; $7d82: $81
	ld   a, [hl]                                     ; $7d83: $7e
	inc  e                                           ; $7d84: $1c
	ld   a, l                                        ; $7d85: $7d
	ld   a, a                                        ; $7d86: $7f
	ccf                                              ; $7d87: $3f
	ld   a, a                                        ; $7d88: $7f
	ld   b, b                                        ; $7d89: $40
	nop                                              ; $7d8a: $00
	db   $fc                                         ; $7d8b: $fc
	cp   $fc                                         ; $7d8c: $fe $fc
	cp   $fc                                         ; $7d8e: $fe $fc
	cp   $02                                         ; $7d90: $fe $02
	nop                                              ; $7d92: $00
	ld   bc, $f900                                   ; $7d93: $01 $00 $f9
	db   $fc                                         ; $7d96: $fc
	ld   hl, sp-$02                                  ; $7d97: $f8 $fe
	add  d                                           ; $7d99: $82
	nop                                              ; $7d9a: $00
	sbc  a                                           ; $7d9b: $9f
	ccf                                              ; $7d9c: $3f
	rra                                              ; $7d9d: $1f
	ld   a, a                                        ; $7d9e: $7f
	ccf                                              ; $7d9f: $3f
	ld   a, a                                        ; $7da0: $7f
	ld   a, h                                        ; $7da1: $7c
	add  c                                           ; $7da2: $81
	ld   a, [hl]                                     ; $7da3: $7e
	nop                                              ; $7da4: $00
	ld   a, l                                        ; $7da5: $7d
	add  c                                           ; $7da6: $81
	ld   a, a                                        ; $7da7: $7f
	add  b                                           ; $7da8: $80
	nop                                              ; $7da9: $00
	ld   b, $fc                                      ; $7daa: $06 $fc
	cp   $fc                                         ; $7dac: $fe $fc
	cp   $fc                                         ; $7dae: $fe $fc
	cp   $02                                         ; $7db0: $fe $02
	add  c                                           ; $7db2: $81
	nop                                              ; $7db3: $00
	inc  bc                                          ; $7db4: $03
	db   $fc                                         ; $7db5: $fc
	cp   $fc                                         ; $7db6: $fe $fc
	cp   $80                                         ; $7db8: $fe $80
	nop                                              ; $7dba: $00
	ld   [$7f3f], sp                                 ; $7dbb: $08 $3f $7f
	ccf                                              ; $7dbe: $3f
	ld   a, a                                        ; $7dbf: $7f
	ccf                                              ; $7dc0: $3f
	ld   a, a                                        ; $7dc1: $7f
	ld   b, a                                        ; $7dc2: $47
	rrca                                             ; $7dc3: $0f
	rst  $38                                         ; $7dc4: $ff
	add  e                                           ; $7dc5: $83
	rlca                                             ; $7dc6: $07
	ld   a, [bc]                                     ; $7dc7: $0a
	pop  af                                          ; $7dc8: $f1
	nop                                              ; $7dc9: $00
	ld   hl, sp-$04                                  ; $7dca: $f8 $fc
	ld   hl, sp-$04                                  ; $7dcc: $f8 $fc
	ld   hl, sp-$04                                  ; $7dce: $f8 $fc
	call nz, $fee0                                   ; $7dd0: $c4 $e0 $fe
	add  e                                           ; $7dd3: $83
	ret  nz                                          ; $7dd4: $c0

	ld   [$7f60], sp                                 ; $7dd5: $08 $60 $7f
	ccf                                              ; $7dd8: $3f
	ld   a, a                                        ; $7dd9: $7f
	ld   e, a                                        ; $7dda: $5f
	ccf                                              ; $7ddb: $3f
	and  b                                           ; $7ddc: $a0
	nop                                              ; $7ddd: $00
	ld   a, a                                        ; $7dde: $7f
	add  [hl]                                        ; $7ddf: $86
	nop                                              ; $7de0: $00
	add  e                                           ; $7de1: $83
	rst  $38                                         ; $7de2: $ff
	add  b                                           ; $7de3: $80
	nop                                              ; $7de4: $00
	nop                                              ; $7de5: $00
	rst  $38                                         ; $7de6: $ff
	add  l                                           ; $7de7: $85
	nop                                              ; $7de8: $00
	ld   [$f31c], sp                                 ; $7de9: $08 $1c $f3
	pop  hl                                          ; $7dec: $e1
	di                                               ; $7ded: $f3
	ldh  [c], a                                      ; $7dee: $e2
	pop  af                                          ; $7def: $f1
	dec  d                                           ; $7df0: $15
	nop                                              ; $7df1: $00
	ei                                               ; $7df2: $fb
	add  l                                           ; $7df3: $85
	nop                                              ; $7df4: $00
	ld   [$f008], sp                                 ; $7df5: $08 $08 $f0
	ldh  [$f0], a                                    ; $7df8: $e0 $f0
	ret  nc                                          ; $7dfa: $d0

	ldh  [$28], a                                    ; $7dfb: $e0 $28
	nop                                              ; $7dfd: $00
	ldh  a, [$85]                                    ; $7dfe: $f0 $85
	nop                                              ; $7e00: $00

jr_017_7e01:
	ld   [$3fc0], sp                                 ; $7e01: $08 $c0 $3f
	sbc  a                                           ; $7e04: $9f
	ccf                                              ; $7e05: $3f
	ld   l, $1f                                      ; $7e06: $2e $1f
	ld   d, c                                        ; $7e08: $51
	nop                                              ; $7e09: $00
	ccf                                              ; $7e0a: $3f
	add  l                                           ; $7e0b: $85
	nop                                              ; $7e0c: $00
	ld   [$9f60], sp                                 ; $7e0d: $08 $60 $9f
	rrca                                             ; $7e10: $0f
	sbc  a                                           ; $7e11: $9f
	or   a                                           ; $7e12: $b7
	rrca                                             ; $7e13: $0f
	ld   e, b                                        ; $7e14: $58
	nop                                              ; $7e15: $00
	adc  a                                           ; $7e16: $8f
	add  [hl]                                        ; $7e17: $86
	nop                                              ; $7e18: $00
	add  e                                           ; $7e19: $83
	rst  $38                                         ; $7e1a: $ff
	add  b                                           ; $7e1b: $80
	nop                                              ; $7e1c: $00
	nop                                              ; $7e1d: $00
	rst  $38                                         ; $7e1e: $ff
	add  l                                           ; $7e1f: $85
	nop                                              ; $7e20: $00
	ld   [$f01c], sp                                 ; $7e21: $08 $1c $f0
	call nc, $28e0                                   ; $7e24: $d4 $e0 $28
	add  b                                           ; $7e27: $80
	or   b                                           ; $7e28: $b0
	nop                                              ; $7e29: $00
	ret  nz                                          ; $7e2a: $c0

	and  l                                           ; $7e2b: $a5
	nop                                              ; $7e2c: $00
	ld   [de], a                                     ; $7e2d: $12
	ldh  [$3f], a                                    ; $7e2e: $e0 $3f
	and  b                                           ; $7e30: $a0
	nop                                              ; $7e31: $00
	add  b                                           ; $7e32: $80
	nop                                              ; $7e33: $00
	ccf                                              ; $7e34: $3f
	ld   a, a                                        ; $7e35: $7f
	ccf                                              ; $7e36: $3f
	ld   a, a                                        ; $7e37: $7f
	ccf                                              ; $7e38: $3f
	ld   a, a                                        ; $7e39: $7f
	ld   b, b                                        ; $7e3a: $40
	nop                                              ; $7e3b: $00
	rst  $38                                         ; $7e3c: $ff
	nop                                              ; $7e3d: $00
	ld   bc, $3efe                                   ; $7e3e: $01 $fe $3e
	add  c                                           ; $7e41: $81
	ld   a, [hl]                                     ; $7e42: $7e
	inc  c                                           ; $7e43: $0c
	cp   [hl]                                        ; $7e44: $be
	cp   $fc                                         ; $7e45: $fe $fc
	cp   $fa                                         ; $7e47: $fe $fa
	db   $fc                                         ; $7e49: $fc
	dec  b                                           ; $7e4a: $05
	nop                                              ; $7e4b: $00
	cp   $00                                         ; $7e4c: $fe $00
	add  b                                           ; $7e4e: $80
	ld   a, a                                        ; $7e4f: $7f
	ld   a, h                                        ; $7e50: $7c
	add  c                                           ; $7e51: $81
	ld   a, [hl]                                     ; $7e52: $7e
	inc  c                                           ; $7e53: $0c
	ld   a, l                                        ; $7e54: $7d
	ld   a, a                                        ; $7e55: $7f
	ccf                                              ; $7e56: $3f
	ld   a, a                                        ; $7e57: $7f
	ld   e, a                                        ; $7e58: $5f
	ccf                                              ; $7e59: $3f
	and  b                                           ; $7e5a: $a0
	nop                                              ; $7e5b: $00
	ld   a, a                                        ; $7e5c: $7f
	nop                                              ; $7e5d: $00
	inc  bc                                          ; $7e5e: $03
	cp   $02                                         ; $7e5f: $fe $02
	add  c                                           ; $7e61: $81
	nop                                              ; $7e62: $00
	ld   a, [bc]                                     ; $7e63: $0a
	db   $fc                                         ; $7e64: $fc
	cp   $fc                                         ; $7e65: $fe $fc
	cp   $fc                                         ; $7e67: $fe $fc
	cp   $02                                         ; $7e69: $fe $02
	nop                                              ; $7e6b: $00
	rst  $38                                         ; $7e6c: $ff
	nop                                              ; $7e6d: $00
	ld   [$0785], sp                                 ; $7e6e: $08 $85 $07
	ld   [$0703], sp                                 ; $7e71: $08 $03 $07
	dec  b                                           ; $7e74: $05
	inc  bc                                          ; $7e75: $03
	ld   a, [bc]                                     ; $7e76: $0a
	nop                                              ; $7e77: $00
	rlca                                             ; $7e78: $07
	nop                                              ; $7e79: $00
	jr   nz, jr_017_7e01                             ; $7e7a: $20 $85

	ret  nz                                          ; $7e7c: $c0

	ld   b, $80                                      ; $7e7d: $06 $80
	ret  nz                                          ; $7e7f: $c0

	ld   b, b                                        ; $7e80: $40
	add  b                                           ; $7e81: $80
	and  b                                           ; $7e82: $a0
	nop                                              ; $7e83: $00
	ret  nz                                          ; $7e84: $c0

	add  c                                           ; $7e85: $81
	nop                                              ; $7e86: $00
	ld   bc, $001f                                   ; $7e87: $01 $1f $00
	add  h                                           ; $7e8a: $84
	rrca                                             ; $7e8b: $0f
	add  d                                           ; $7e8c: $82
	ld   c, $80                                      ; $7e8d: $0e $80
	rrca                                             ; $7e8f: $0f
	add  hl, bc                                      ; $7e90: $09
	rra                                              ; $7e91: $1f
	nop                                              ; $7e92: $00
	rst  $28                                         ; $7e93: $ef
	nop                                              ; $7e94: $00
	sub  e                                           ; $7e95: $93
	rst  ToBoot                                         ; $7e96: $c7
	add  e                                           ; $7e97: $83
	rst  $28                                         ; $7e98: $ef
	rst  ToBoot                                         ; $7e99: $c7
	rst  $28                                         ; $7e9a: $ef
	add  h                                           ; $7e9b: $84
	xor  $0a                                         ; $7e9c: $ee $0a
	rst  $38                                         ; $7e9e: $ff
	nop                                              ; $7e9f: $00
	rst  $38                                         ; $7ea0: $ff
	nop                                              ; $7ea1: $00
	add  h                                           ; $7ea2: $84
	adc  $84                                         ; $7ea3: $ce $84
	xor  $ce                                         ; $7ea5: $ee $ce

jr_017_7ea7:
	rst  $28                                         ; $7ea7: $ef
	xor  $83                                         ; $7ea8: $ee $83
	rst  $28                                         ; $7eaa: $ef
	ld   b, $ff                                      ; $7eab: $06 $ff
	nop                                              ; $7ead: $00
	ld   a, a                                        ; $7eae: $7f
	nop                                              ; $7eaf: $00
	ld   de, $913b                                   ; $7eb0: $11 $3b $91
	add  h                                           ; $7eb3: $84
	dec  sp                                          ; $7eb4: $3b
	dec  bc                                          ; $7eb5: $0b
	cp   e                                           ; $7eb6: $bb
	dec  sp                                          ; $7eb7: $3b
	cp   e                                           ; $7eb8: $bb
	rst  $38                                         ; $7eb9: $ff
	nop                                              ; $7eba: $00
	rst  $38                                         ; $7ebb: $ff
	nop                                              ; $7ebc: $00
	db   $10                                         ; $7ebd: $10
	cp   c                                           ; $7ebe: $b9
	db   $10                                         ; $7ebf: $10
	cp   e                                           ; $7ec0: $bb
	cp   c                                           ; $7ec1: $b9
	add  l                                           ; $7ec2: $85
	cp   e                                           ; $7ec3: $bb
	db   $10                                         ; $7ec4: $10
	rst  $38                                         ; $7ec5: $ff
	nop                                              ; $7ec6: $00
	db   $fc                                         ; $7ec7: $fc
	nop                                              ; $7ec8: $00
	ldh  a, [$f8]                                    ; $7ec9: $f0 $f8
	ldh  a, [$f8]                                    ; $7ecb: $f0 $f8
	ldh  a, [$f8]                                    ; $7ecd: $f0 $f8
	adc  b                                           ; $7ecf: $88
	add  b                                           ; $7ed0: $80
	add  h                                           ; $7ed1: $84
	add  b                                           ; $7ed2: $80
	db   $e4                                         ; $7ed3: $e4
	ldh  a, [$ec]                                    ; $7ed4: $f0 $ec
	rst  $38                                         ; $7ed6: $ff
	nop                                              ; $7ed7: $00
	sbc  h                                           ; $7ed8: $9c
	nop                                              ; $7ed9: $00
	nop                                              ; $7eda: $00
	db   $10                                         ; $7edb: $10
	add  c                                           ; $7edc: $81
	rrca                                             ; $7edd: $0f
	add  d                                           ; $7ede: $82
	ld   c, $84                                      ; $7edf: $0e $84
	rrca                                             ; $7ee1: $0f
	add  b                                           ; $7ee2: $80
	nop                                              ; $7ee3: $00
	ld   [bc], a                                     ; $7ee4: $02
	ld   l, $ee                                      ; $7ee5: $2e $ee
	adc  $83                                         ; $7ee7: $ce $83
	xor  $80                                         ; $7ee9: $ee $80
	rst  $28                                         ; $7eeb: $ef
	ld   b, $c7                                      ; $7eec: $06 $c7
	rst  $28                                         ; $7eee: $ef
	xor  e                                           ; $7eef: $ab
	rst  ToBoot                                         ; $7ef0: $c7
	ld   d, h                                        ; $7ef1: $54
	nop                                              ; $7ef2: $00
	cp   $80                                         ; $7ef3: $fe $80
	rst  $28                                         ; $7ef5: $ef
	add  l                                           ; $7ef6: $85
	xor  $0a                                         ; $7ef7: $ee $0a
	adc  $ee                                         ; $7ef9: $ce $ee
	and  h                                           ; $7efb: $a4
	adc  $4a                                         ; $7efc: $ce $4a
	nop                                              ; $7efe: $00
	cp   e                                           ; $7eff: $bb
	ei                                               ; $7f00: $fb
	cp   e                                           ; $7f01: $bb
	ei                                               ; $7f02: $fb
	ld   a, e                                        ; $7f03: $7b
	add  b                                           ; $7f04: $80
	ei                                               ; $7f05: $fb
	dec  bc                                          ; $7f06: $0b
	ld   a, e                                        ; $7f07: $7b
	dec  sp                                          ; $7f08: $3b
	ld   a, e                                        ; $7f09: $7b
	ld   a, c                                        ; $7f0a: $79
	dec  sp                                          ; $7f0b: $3b
	sub  d                                           ; $7f0c: $92
	add  hl, sp                                      ; $7f0d: $39
	add  hl, hl                                      ; $7f0e: $29
	nop                                              ; $7f0f: $00
	add  hl, sp                                      ; $7f10: $39
	cp   e                                           ; $7f11: $bb
	cp   d                                           ; $7f12: $ba
	add  b                                           ; $7f13: $80
	cp   c                                           ; $7f14: $b9
	add  c                                           ; $7f15: $81
	cp   b                                           ; $7f16: $b8
	dec  bc                                          ; $7f17: $0b
	ld   sp, hl                                      ; $7f18: $f9
	ei                                               ; $7f19: $fb
	pop  af                                          ; $7f1a: $f1
	ei                                               ; $7f1b: $fb
	jp   hl                                          ; $7f1c: $e9


	di                                               ; $7f1d: $f3
	ld   [de], a                                     ; $7f1e: $12
	nop                                              ; $7f1f: $00
	di                                               ; $7f20: $f3
	ld   hl, sp-$10                                  ; $7f21: $f8 $f0
	ld   hl, sp-$7e                                  ; $7f23: $f8 $82
	jr   c, jr_017_7ea7                              ; $7f25: $38 $80

	ld   hl, sp+$06                                  ; $7f27: $f8 $06
	ldh  a, [$f8]                                    ; $7f29: $f0 $f8
	add  sp, -$10                                    ; $7f2b: $e8 $f0
	stop                                             ; $7f2d: $10 $00
	db   $fc                                         ; $7f2f: $fc
	rst  $38                                         ; $7f30: $ff
	nop                                              ; $7f31: $00
	sbc  h                                           ; $7f32: $9c
	nop                                              ; $7f33: $00
	inc  b                                           ; $7f34: $04
	rlca                                             ; $7f35: $07
	nop                                              ; $7f36: $00
	ld   bc, $0103                                   ; $7f37: $01 $03 $01
	add  c                                           ; $7f3a: $81
	inc  bc                                          ; $7f3b: $03
	inc  c                                           ; $7f3c: $0c
	ld   a, e                                        ; $7f3d: $7b
	inc  bc                                          ; $7f3e: $03
	rra                                              ; $7f3f: $1f
	ccf                                              ; $7f40: $3f
	rra                                              ; $7f41: $1f
	ccf                                              ; $7f42: $3f
	rra                                              ; $7f43: $1f
	ccf                                              ; $7f44: $3f
	sbc  b                                           ; $7f45: $98
	ld   bc, $8300                                   ; $7f46: $01 $00 $83
	ld   bc, $8381                                   ; $7f49: $01 $81 $83
	dec  c                                           ; $7f4c: $0d
	cp   c                                           ; $7f4d: $b9
	add  e                                           ; $7f4e: $83
	ldh  a, [c]                                      ; $7f4f: $f2
	ld   hl, sp-$0d                                  ; $7f50: $f8 $f3
	ld   hl, sp-$0d                                  ; $7f52: $f8 $f3
	ld   hl, sp-$0c                                  ; $7f54: $f8 $f4
	cp   $fc                                         ; $7f56: $fe $fc
	rst  $38                                         ; $7f58: $ff
	cp   $ff                                         ; $7f59: $fe $ff
	add  b                                           ; $7f5b: $80
	add  a                                           ; $7f5c: $87
	dec  c                                           ; $7f5d: $0d
	rlca                                             ; $7f5e: $07
	add  a                                           ; $7f5f: $87
	sbc  [hl]                                        ; $7f60: $9e
	ccf                                              ; $7f61: $3f
	sbc  l                                           ; $7f62: $9d
	ld   a, $9c                                      ; $7f63: $3e $9c
	ccf                                              ; $7f65: $3f
	ld   a, $3f                                      ; $7f66: $3e $3f
	rra                                              ; $7f68: $1f
	ld   a, a                                        ; $7f69: $7f
	ccf                                              ; $7f6a: $3f
	ld   a, a                                        ; $7f6b: $7f
	add  b                                           ; $7f6c: $80
	ld   [hl], b                                     ; $7f6d: $70
	nop                                              ; $7f6e: $00
	halt                                             ; $7f6f: $76
	add  l                                           ; $7f70: $85
	ld   [hl], b                                     ; $7f71: $70
	dec  b                                           ; $7f72: $05
	add  l                                           ; $7f73: $85
	rst  ToBoot                                         ; $7f74: $c7
	add  e                                           ; $7f75: $83
	rst  $28                                         ; $7f76: $ef
	rst  ToBoot                                         ; $7f77: $c7
	rst  $28                                         ; $7f78: $ef
	adc  b                                           ; $7f79: $88
	xor  $05                                         ; $7f7a: $ee $05
	pop  af                                          ; $7f7c: $f1
	ld   hl, sp-$10                                  ; $7f7d: $f8 $f0
	db   $fc                                         ; $7f7f: $fc
	ld   hl, sp-$04                                  ; $7f80: $f8 $fc
	add  b                                           ; $7f82: $80
	inc  e                                           ; $7f83: $1c
	nop                                              ; $7f84: $00
	call c, $1c85                                    ; $7f85: $dc $85 $1c
	nop                                              ; $7f88: $00
	ld   a, $ff                                      ; $7f89: $3e $ff
	nop                                              ; $7f8b: $00
	sbc  h                                           ; $7f8c: $9c
	nop                                              ; $7f8d: $00
	ld   [bc], a                                     ; $7f8e: $02
	ld   a, h                                        ; $7f8f: $7c
	inc  bc                                          ; $7f90: $03
	ld   a, e                                        ; $7f91: $7b
	add  c                                           ; $7f92: $81
	inc  bc                                          ; $7f93: $03
	inc  b                                           ; $7f94: $04
	ld   bc, $0203                                   ; $7f95: $01 $03 $02
	nop                                              ; $7f98: $00
	rlca                                             ; $7f99: $07
	add  e                                           ; $7f9a: $83
	nop                                              ; $7f9b: $00
	ld   [bc], a                                     ; $7f9c: $02
	ld   a, [hl]                                     ; $7f9d: $7e
	add  e                                           ; $7f9e: $83
	cp   c                                           ; $7f9f: $b9
	add  c                                           ; $7fa0: $81
	add  e                                           ; $7fa1: $83
	ld   b, $01                                      ; $7fa2: $06 $01
	add  e                                           ; $7fa4: $83
	add  d                                           ; $7fa5: $82
	ld   bc, $00c5                                   ; $7fa6: $01 $c5 $00
	inc  bc                                          ; $7fa9: $03
	add  c                                           ; $7faa: $81
	nop                                              ; $7fab: $00
	inc  bc                                          ; $7fac: $03
	ld   hl, sp-$79                                  ; $7fad: $f8 $87
	rlca                                             ; $7faf: $07
	add  a                                           ; $7fb0: $87
	add  b                                           ; $7fb1: $80
	rst  $38                                         ; $7fb2: $ff
	ld   b, $fe                                      ; $7fb3: $06 $fe
	rst  $38                                         ; $7fb5: $ff
	db   $fd                                         ; $7fb6: $fd
	cp   $02                                         ; $7fb7: $fe $02
	nop                                              ; $7fb9: $00
	rst  $38                                         ; $7fba: $ff
	add  c                                           ; $7fbb: $81
	nop                                              ; $7fbc: $00
	inc  bc                                          ; $7fbd: $03
	adc  c                                           ; $7fbe: $89
	ld   [hl], b                                     ; $7fbf: $70
	halt                                             ; $7fc0: $76
	ld   [hl], b                                     ; $7fc1: $70
	add  b                                           ; $7fc2: $80
	ld   a, a                                        ; $7fc3: $7f
	ld   b, $3f                                      ; $7fc4: $06 $3f
	ld   a, a                                        ; $7fc6: $7f
	ld   e, a                                        ; $7fc7: $5f
	ccf                                              ; $7fc8: $3f
	and  b                                           ; $7fc9: $a0
	nop                                              ; $7fca: $00
	ld   a, a                                        ; $7fcb: $7f
	add  c                                           ; $7fcc: $81
	nop                                              ; $7fcd: $00
	nop                                              ; $7fce: $00
	ld   de, $ee81                                   ; $7fcf: $11 $81 $ee
	add  b                                           ; $7fd2: $80
	rst  $28                                         ; $7fd3: $ef
	ld   b, $c7                                      ; $7fd4: $06 $c7
	rst  $28                                         ; $7fd6: $ef
	xor  e                                           ; $7fd7: $ab
	rst  ToBoot                                         ; $7fd8: $c7
	ld   d, h                                        ; $7fd9: $54
	nop                                              ; $7fda: $00
	rst  $28                                         ; $7fdb: $ef
	add  c                                           ; $7fdc: $81
	nop                                              ; $7fdd: $00
	inc  bc                                          ; $7fde: $03
	ld   [hl+], a                                    ; $7fdf: $22
	inc  e                                           ; $7fe0: $1c
	call c, $801c                                    ; $7fe1: $dc $1c $80
	db   $fc                                         ; $7fe4: $fc
	ld   b, $f8                                      ; $7fe5: $06 $f8
	db   $fc                                         ; $7fe7: $fc
	db   $f4                                         ; $7fe8: $f4
	ld   hl, sp+$0a                                  ; $7fe9: $f8 $0a
	nop                                              ; $7feb: $00
	db   $fc                                         ; $7fec: $fc
	rst  $38                                         ; $7fed: $ff
	nop                                              ; $7fee: $00
	and  b                                           ; $7fef: $a0
	nop                                              ; $7ff0: $00
	ld   b, $00                                      ; $7ff1: $06 $00
	nop                                              ; $7ff3: $00
	inc  bc                                          ; $7ff4: $03
	add  e                                           ; $7ff5: $83
	nop                                              ; $7ff6: $00
	nop                                              ; $7ff7: $00
	ld   h, a                                        ; $7ff8: $67
	adc  d                                           ; $7ff9: $8a
	nop                                              ; $7ffa: $00
	ld   bc, $6307                                   ; $7ffb: $01 $07 $63
	adc  c                                           ; $7ffe: $89
	nop                                              ; $7fff: $00
