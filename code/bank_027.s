; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $027", ROMX[$4000], BANK[$27]

	nop                                              ; $4000: $00
	nop                                              ; $4001: $00
	ld   bc, $0201                                   ; $4002: $01 $01 $02
	inc  bc                                          ; $4005: $03
	ld   [bc], a                                     ; $4006: $02
	inc  bc                                          ; $4007: $03
	inc  b                                           ; $4008: $04
	rlca                                             ; $4009: $07
	ld   [$110f], sp                                 ; $400a: $08 $0f $11
	rra                                              ; $400d: $1f
	ld   hl, $233f                                   ; $400e: $21 $3f $23
	ld   a, $23                                      ; $4011: $3e $23
	ld   a, $23                                      ; $4013: $3e $23
	ccf                                              ; $4015: $3f
	daa                                              ; $4016: $27
	inc  a                                           ; $4017: $3c
	rla                                              ; $4018: $17
	inc  e                                           ; $4019: $1c
	dec  bc                                          ; $401a: $0b
	ld   c, $07                                      ; $401b: $0e $07
	rlca                                             ; $401d: $07
	nop                                              ; $401e: $00
	nop                                              ; $401f: $00
	ld   a, h                                        ; $4020: $7c
	ld   a, h                                        ; $4021: $7c
	add  e                                           ; $4022: $83
	rst  $38                                         ; $4023: $ff
	nop                                              ; $4024: $00
	rst  $38                                         ; $4025: $ff
	nop                                              ; $4026: $00
	rst  $38                                         ; $4027: $ff
	nop                                              ; $4028: $00
	rst  $38                                         ; $4029: $ff

jr_027_402a:
	adc  b                                           ; $402a: $88
	rst  $38                                         ; $402b: $ff
	call nz, $c27f                                   ; $402c: $c4 $7f $c2
	ld   a, a                                        ; $402f: $7f
	pop  hl                                          ; $4030: $e1
	ccf                                              ; $4031: $3f
	pop  hl                                          ; $4032: $e1
	ccf                                              ; $4033: $3f
	pop  af                                          ; $4034: $f1
	sbc  a                                           ; $4035: $9f
	pop  af                                          ; $4036: $f1
	sbc  a                                           ; $4037: $9f
	ldh  a, [c]                                      ; $4038: $f2
	sbc  a                                           ; $4039: $9f
	ldh  a, [c]                                      ; $403a: $f2
	rra                                              ; $403b: $1f
	db   $ec                                         ; $403c: $ec
	ccf                                              ; $403d: $3f
	rst  $38                                         ; $403e: $ff
	sub  e                                           ; $403f: $93
	nop                                              ; $4040: $00
	nop                                              ; $4041: $00
	nop                                              ; $4042: $00
	nop                                              ; $4043: $00
	add  b                                           ; $4044: $80
	add  b                                           ; $4045: $80
	ld   b, b                                        ; $4046: $40
	ret  nz                                          ; $4047: $c0

	jr   nz, jr_027_402a                             ; $4048: $20 $e0

	db   $10                                         ; $404a: $10
	ldh  a, [$88]                                    ; $404b: $f0 $88
	ld   hl, sp+$48                                  ; $404d: $f8 $48
	ld   hl, sp+$28                                  ; $404f: $f8 $28
	ld   hl, sp+$24                                  ; $4051: $f8 $24
	db   $fc                                         ; $4053: $fc
	inc  h                                           ; $4054: $24
	db   $fc                                         ; $4055: $fc
	inc  h                                           ; $4056: $24
	db   $fc                                         ; $4057: $fc
	jr   z, @-$06                                    ; $4058: $28 $f8

	ld   [hl], b                                     ; $405a: $70
	ldh  a, [$c0]                                    ; $405b: $f0 $c0
	ret  nz                                          ; $405d: $c0

	nop                                              ; $405e: $00
	nop                                              ; $405f: $00
	nop                                              ; $4060: $00
	nop                                              ; $4061: $00
	ld   bc, $0101                                   ; $4062: $01 $01 $01
	ld   bc, $0302                                   ; $4065: $01 $02 $03
	ld   [bc], a                                     ; $4068: $02
	inc  bc                                          ; $4069: $03
	ld   [bc], a                                     ; $406a: $02
	inc  bc                                          ; $406b: $03
	rlca                                             ; $406c: $07
	rlca                                             ; $406d: $07
	rra                                              ; $406e: $1f
	rra                                              ; $406f: $1f
	ccf                                              ; $4070: $3f
	add  hl, sp                                      ; $4071: $39
	ld   a, a                                        ; $4072: $7f
	ld   [hl], b                                     ; $4073: $70
	rst  $28                                         ; $4074: $ef
	jp   hl                                          ; $4075: $e9


	add  $c7                                         ; $4076: $c6 $c7
	ld   [bc], a                                     ; $4078: $02
	inc  bc                                          ; $4079: $03
	ld   [bc], a                                     ; $407a: $02
	inc  bc                                          ; $407b: $03
	ld   [bc], a                                     ; $407c: $02
	inc  bc                                          ; $407d: $03
	ld   [bc], a                                     ; $407e: $02
	inc  bc                                          ; $407f: $03
	rst  $38                                         ; $4080: $ff
	rst  $38                                         ; $4081: $ff
	nop                                              ; $4082: $00
	rst  $38                                         ; $4083: $ff
	nop                                              ; $4084: $00
	rst  $38                                         ; $4085: $ff
	ld   [$08ff], sp                                 ; $4086: $08 $ff $08
	rst  $38                                         ; $4089: $ff
	db   $10                                         ; $408a: $10
	rst  $38                                         ; $408b: $ff
	ld   h, c                                        ; $408c: $61
	rst  $38                                         ; $408d: $ff
	add  d                                           ; $408e: $82
	cp   $1e                                         ; $408f: $fe $1e
	cp   $ea                                         ; $4091: $fe $ea
	cp   $4b                                         ; $4093: $fe $4b
	rst  $38                                         ; $4095: $ff
	ld   c, c                                        ; $4096: $49
	rst  $38                                         ; $4097: $ff
	ld   c, c                                        ; $4098: $49
	rst  $38                                         ; $4099: $ff
	ld   b, h                                        ; $409a: $44
	rst  $38                                         ; $409b: $ff
	ld   b, h                                        ; $409c: $44
	rst  $38                                         ; $409d: $ff
	ld   [hl+], a                                    ; $409e: $22
	rst  $38                                         ; $409f: $ff
	nop                                              ; $40a0: $00
	nop                                              ; $40a1: $00
	add  b                                           ; $40a2: $80
	add  b                                           ; $40a3: $80
	ld   b, b                                        ; $40a4: $40
	ret  nz                                          ; $40a5: $c0

	ld   b, b                                        ; $40a6: $40
	ret  nz                                          ; $40a7: $c0

	add  b                                           ; $40a8: $80
	add  b                                           ; $40a9: $80
	add  b                                           ; $40aa: $80
	add  b                                           ; $40ab: $80
	nop                                              ; $40ac: $00
	nop                                              ; $40ad: $00
	nop                                              ; $40ae: $00
	nop                                              ; $40af: $00
	nop                                              ; $40b0: $00
	nop                                              ; $40b1: $00
	nop                                              ; $40b2: $00
	nop                                              ; $40b3: $00
	nop                                              ; $40b4: $00
	nop                                              ; $40b5: $00
	nop                                              ; $40b6: $00
	nop                                              ; $40b7: $00
	nop                                              ; $40b8: $00
	nop                                              ; $40b9: $00
	add  b                                           ; $40ba: $80
	add  b                                           ; $40bb: $80
	add  b                                           ; $40bc: $80
	add  b                                           ; $40bd: $80
	ld   b, b                                        ; $40be: $40
	ret  nz                                          ; $40bf: $c0

	ld   bc, $0101                                   ; $40c0: $01 $01 $01
	ld   bc, $0101                                   ; $40c3: $01 $01 $01
	ld   bc, $0101                                   ; $40c6: $01 $01 $01
	ld   bc, $0101                                   ; $40c9: $01 $01 $01
	inc  bc                                          ; $40cc: $03
	ld   [bc], a                                     ; $40cd: $02
	inc  bc                                          ; $40ce: $03
	inc  bc                                          ; $40cf: $03
	nop                                              ; $40d0: $00
	nop                                              ; $40d1: $00
	nop                                              ; $40d2: $00
	nop                                              ; $40d3: $00
	nop                                              ; $40d4: $00
	nop                                              ; $40d5: $00
	nop                                              ; $40d6: $00
	nop                                              ; $40d7: $00
	nop                                              ; $40d8: $00
	nop                                              ; $40d9: $00
	nop                                              ; $40da: $00
	nop                                              ; $40db: $00
	nop                                              ; $40dc: $00
	nop                                              ; $40dd: $00
	nop                                              ; $40de: $00
	nop                                              ; $40df: $00
	nop                                              ; $40e0: $00
	rst  $38                                         ; $40e1: $ff
	nop                                              ; $40e2: $00
	rst  $38                                         ; $40e3: $ff
	nop                                              ; $40e4: $00
	rst  $38                                         ; $40e5: $ff

jr_027_40e6:
	nop                                              ; $40e6: $00
	rst  $38                                         ; $40e7: $ff

jr_027_40e8:
	nop                                              ; $40e8: $00
	rst  $38                                         ; $40e9: $ff
	rst  $38                                         ; $40ea: $ff
	rst  $38                                         ; $40eb: $ff
	rst  $38                                         ; $40ec: $ff
	jr   @+$01                                       ; $40ed: $18 $ff

jr_027_40ef:
	rst  $38                                         ; $40ef: $ff
	nop                                              ; $40f0: $00
	nop                                              ; $40f1: $00
	nop                                              ; $40f2: $00
	nop                                              ; $40f3: $00
	nop                                              ; $40f4: $00
	nop                                              ; $40f5: $00
	nop                                              ; $40f6: $00
	nop                                              ; $40f7: $00
	nop                                              ; $40f8: $00
	nop                                              ; $40f9: $00
	nop                                              ; $40fa: $00
	nop                                              ; $40fb: $00
	nop                                              ; $40fc: $00
	nop                                              ; $40fd: $00
	nop                                              ; $40fe: $00
	nop                                              ; $40ff: $00
	ld   b, b                                        ; $4100: $40
	ret  nz                                          ; $4101: $c0

	ld   b, b                                        ; $4102: $40
	ret  nz                                          ; $4103: $c0

	jr   nz, jr_027_40e6                             ; $4104: $20 $e0

	jr   nz, jr_027_40e8                             ; $4106: $20 $e0

	db   $10                                         ; $4108: $10
	ldh  a, [$f0]                                    ; $4109: $f0 $f0
	ldh  a, [$e0]                                    ; $410b: $f0 $e0
	jr   nz, jr_027_40ef                             ; $410d: $20 $e0

	ldh  [rP1], a                                    ; $410f: $e0 $00
	nop                                              ; $4111: $00
	nop                                              ; $4112: $00
	nop                                              ; $4113: $00
	nop                                              ; $4114: $00
	nop                                              ; $4115: $00
	nop                                              ; $4116: $00
	nop                                              ; $4117: $00
	nop                                              ; $4118: $00
	nop                                              ; $4119: $00
	nop                                              ; $411a: $00
	nop                                              ; $411b: $00
	nop                                              ; $411c: $00
	nop                                              ; $411d: $00
	nop                                              ; $411e: $00
	nop                                              ; $411f: $00
	nop                                              ; $4120: $00
	nop                                              ; $4121: $00
	rlca                                             ; $4122: $07
	rlca                                             ; $4123: $07
	ld   [$080f], sp                                 ; $4124: $08 $0f $08
	rrca                                             ; $4127: $0f
	db   $10                                         ; $4128: $10
	rra                                              ; $4129: $1f
	ld   de, $231f                                   ; $412a: $11 $1f $23
	ld   a, $43                                      ; $412d: $3e $43
	ld   a, [hl]                                     ; $412f: $7e
	ld   b, a                                        ; $4130: $47
	ld   a, h                                        ; $4131: $7c
	ld   b, a                                        ; $4132: $47
	ld   a, h                                        ; $4133: $7c
	ld   b, a                                        ; $4134: $47
	ld   a, a                                        ; $4135: $7f
	daa                                              ; $4136: $27
	ld   a, $23                                      ; $4137: $3e $23
	ld   a, $11                                      ; $4139: $3e $11
	rra                                              ; $413b: $1f
	rrca                                             ; $413c: $0f
	ld   c, $01                                      ; $413d: $0e $01
	ld   bc, $f8f8                                   ; $413f: $01 $f8 $f8
	ld   b, $fe                                      ; $4142: $06 $fe
	ld   bc, $00ff                                   ; $4144: $01 $ff $00
	rst  $38                                         ; $4147: $ff
	nop                                              ; $4148: $00
	rst  $38                                         ; $4149: $ff
	db   $10                                         ; $414a: $10
	rst  $38                                         ; $414b: $ff

jr_027_414c:
	sub  c                                           ; $414c: $91
	rst  $38                                         ; $414d: $ff
	adc  b                                           ; $414e: $88
	rst  $38                                         ; $414f: $ff
	call nz, $c27f                                   ; $4150: $c4 $7f $c2
	ld   a, a                                        ; $4153: $7f
	ldh  [c], a                                      ; $4154: $e2
	ccf                                              ; $4155: $3f
	db   $e4                                         ; $4156: $e4
	ccf                                              ; $4157: $3f
	db   $e4                                         ; $4158: $e4
	ccf                                              ; $4159: $3f
	db   $ec                                         ; $415a: $ec
	ccf                                              ; $415b: $3f
	ld   sp, hl                                      ; $415c: $f9
	ld   a, a                                        ; $415d: $7f
	rst  $38                                         ; $415e: $ff
	rra                                              ; $415f: $1f
	nop                                              ; $4160: $00
	nop                                              ; $4161: $00
	nop                                              ; $4162: $00
	nop                                              ; $4163: $00
	nop                                              ; $4164: $00
	nop                                              ; $4165: $00
	add  b                                           ; $4166: $80
	add  b                                           ; $4167: $80
	ret  nz                                          ; $4168: $c0

	ret  nz                                          ; $4169: $c0

	jr   nz, jr_027_414c                             ; $416a: $20 $e0

	sub  b                                           ; $416c: $90
	ldh  a, [$50]                                    ; $416d: $f0 $50
	ldh  a, [rOBP0]                                  ; $416f: $f0 $48
	ld   hl, sp+$48                                  ; $4171: $f8 $48
	ld   hl, sp+$48                                  ; $4173: $f8 $48
	ld   hl, sp+$50                                  ; $4175: $f8 $50
	ldh  a, [hScriptOpcodeParams]                                    ; $4177: $f0 $a0
	ldh  [$c0], a                                    ; $4179: $e0 $c0
	ret  nz                                          ; $417b: $c0

	add  b                                           ; $417c: $80
	add  b                                           ; $417d: $80
	nop                                              ; $417e: $00
	nop                                              ; $417f: $00
	nop                                              ; $4180: $00
	nop                                              ; $4181: $00
	nop                                              ; $4182: $00
	nop                                              ; $4183: $00
	nop                                              ; $4184: $00
	nop                                              ; $4185: $00
	nop                                              ; $4186: $00
	nop                                              ; $4187: $00
	nop                                              ; $4188: $00
	nop                                              ; $4189: $00
	nop                                              ; $418a: $00
	nop                                              ; $418b: $00
	nop                                              ; $418c: $00
	nop                                              ; $418d: $00
	inc  bc                                          ; $418e: $03
	inc  bc                                          ; $418f: $03
	inc  b                                           ; $4190: $04
	rlca                                             ; $4191: $07
	inc  b                                           ; $4192: $04
	rlca                                             ; $4193: $07
	inc  b                                           ; $4194: $04
	rlca                                             ; $4195: $07
	inc  b                                           ; $4196: $04
	rlca                                             ; $4197: $07
	ld   [bc], a                                     ; $4198: $02
	inc  bc                                          ; $4199: $03
	ld   [bc], a                                     ; $419a: $02
	inc  bc                                          ; $419b: $03
	ld   [bc], a                                     ; $419c: $02
	inc  bc                                          ; $419d: $03
	ld   bc, $0001                                   ; $419e: $01 $01 $00
	nop                                              ; $41a1: $00
	nop                                              ; $41a2: $00
	nop                                              ; $41a3: $00
	nop                                              ; $41a4: $00
	nop                                              ; $41a5: $00
	nop                                              ; $41a6: $00
	nop                                              ; $41a7: $00
	nop                                              ; $41a8: $00
	nop                                              ; $41a9: $00
	nop                                              ; $41aa: $00
	nop                                              ; $41ab: $00
	nop                                              ; $41ac: $00
	nop                                              ; $41ad: $00
	ret  nz                                          ; $41ae: $c0

	ret  nz                                          ; $41af: $c0

	ld   a, a                                        ; $41b0: $7f
	rst  $38                                         ; $41b1: $ff
	ld   hl, $1eff                                   ; $41b2: $21 $ff $1e
	rst  $38                                         ; $41b5: $ff

jr_027_41b6:
	ld   b, b                                        ; $41b6: $40
	rst  $38                                         ; $41b7: $ff

jr_027_41b8:
	ld   b, h                                        ; $41b8: $44
	rst  $38                                         ; $41b9: $ff

jr_027_41ba:
	inc  h                                           ; $41ba: $24
	rst  $38                                         ; $41bb: $ff
	jr   z, @+$01                                    ; $41bc: $28 $ff

	ld   de, $00ff                                   ; $41be: $11 $ff $00
	nop                                              ; $41c1: $00
	nop                                              ; $41c2: $00
	nop                                              ; $41c3: $00
	nop                                              ; $41c4: $00
	nop                                              ; $41c5: $00
	nop                                              ; $41c6: $00
	nop                                              ; $41c7: $00
	nop                                              ; $41c8: $00
	nop                                              ; $41c9: $00
	nop                                              ; $41ca: $00
	nop                                              ; $41cb: $00
	nop                                              ; $41cc: $00
	nop                                              ; $41cd: $00
	nop                                              ; $41ce: $00
	nop                                              ; $41cf: $00
	add  b                                           ; $41d0: $80
	add  b                                           ; $41d1: $80
	ret  nz                                          ; $41d2: $c0

	ret  nz                                          ; $41d3: $c0

	jr   nz, jr_027_41b6                             ; $41d4: $20 $e0

	jr   nz, jr_027_41b8                             ; $41d6: $20 $e0

	jr   nz, jr_027_41ba                             ; $41d8: $20 $e0

	ld   b, b                                        ; $41da: $40
	ret  nz                                          ; $41db: $c0

	ret  nz                                          ; $41dc: $c0

	ret  nz                                          ; $41dd: $c0

	add  b                                           ; $41de: $80
	add  b                                           ; $41df: $80
	inc  bc                                          ; $41e0: $03
	inc  bc                                          ; $41e1: $03
	ld   bc, $0301                                   ; $41e2: $01 $01 $03
	inc  bc                                          ; $41e5: $03
	ld   [bc], a                                     ; $41e6: $02
	inc  bc                                          ; $41e7: $03
	ld   [bc], a                                     ; $41e8: $02
	inc  bc                                          ; $41e9: $03
	ld   [bc], a                                     ; $41ea: $02
	inc  bc                                          ; $41eb: $03
	ld   [bc], a                                     ; $41ec: $02
	inc  bc                                          ; $41ed: $03
	ld   [bc], a                                     ; $41ee: $02
	inc  bc                                          ; $41ef: $03
	ld   [bc], a                                     ; $41f0: $02
	inc  bc                                          ; $41f1: $03
	ld   [bc], a                                     ; $41f2: $02
	inc  bc                                          ; $41f3: $03
	ld   [bc], a                                     ; $41f4: $02
	inc  bc                                          ; $41f5: $03
	ld   [bc], a                                     ; $41f6: $02
	inc  bc                                          ; $41f7: $03
	ld   [bc], a                                     ; $41f8: $02
	inc  bc                                          ; $41f9: $03
	inc  bc                                          ; $41fa: $03
	inc  bc                                          ; $41fb: $03
	rlca                                             ; $41fc: $07
	inc  b                                           ; $41fd: $04
	rlca                                             ; $41fe: $07
	rlca                                             ; $41ff: $07
	ld   [hl], e                                     ; $4200: $73
	rst  $38                                         ; $4201: $ff
	cp   $8e                                         ; $4202: $fe $8e
	db   $fd                                         ; $4204: $fd
	scf                                              ; $4205: $37
	ld   sp, hl                                      ; $4206: $f9
	cp   a                                           ; $4207: $bf
	ld   a, c                                        ; $4208: $79
	rst  $38                                         ; $4209: $ff
	dec  a                                           ; $420a: $3d
	rst  $38                                         ; $420b: $ff
	inc  e                                           ; $420c: $1c
	rst  $38                                         ; $420d: $ff
	ld   a, [de]                                     ; $420e: $1a
	rst  $38                                         ; $420f: $ff
	nop                                              ; $4210: $00
	rst  $38                                         ; $4211: $ff
	nop                                              ; $4212: $00
	rst  $38                                         ; $4213: $ff
	nop                                              ; $4214: $00
	rst  $38                                         ; $4215: $ff
	nop                                              ; $4216: $00
	rst  $38                                         ; $4217: $ff
	nop                                              ; $4218: $00
	rst  $38                                         ; $4219: $ff

jr_027_421a:
	rst  $38                                         ; $421a: $ff
	rst  $38                                         ; $421b: $ff
	rst  $20                                         ; $421c: $e7
	inc  h                                           ; $421d: $24
	rst  $20                                         ; $421e: $e7
	rst  $20                                         ; $421f: $e7
	nop                                              ; $4220: $00
	nop                                              ; $4221: $00
	nop                                              ; $4222: $00
	nop                                              ; $4223: $00
	nop                                              ; $4224: $00
	nop                                              ; $4225: $00
	nop                                              ; $4226: $00
	nop                                              ; $4227: $00
	nop                                              ; $4228: $00
	nop                                              ; $4229: $00
	nop                                              ; $422a: $00
	nop                                              ; $422b: $00
	add  b                                           ; $422c: $80
	add  b                                           ; $422d: $80
	add  b                                           ; $422e: $80
	add  b                                           ; $422f: $80
	add  b                                           ; $4230: $80
	add  b                                           ; $4231: $80
	add  b                                           ; $4232: $80
	add  b                                           ; $4233: $80
	ld   b, b                                        ; $4234: $40
	ret  nz                                          ; $4235: $c0

	ld   b, b                                        ; $4236: $40
	ret  nz                                          ; $4237: $c0

	jr   nz, jr_027_421a                             ; $4238: $20 $e0

	ret  nz                                          ; $423a: $c0

	ret  nz                                          ; $423b: $c0

	ldh  [rAUD4LEN], a                               ; $423c: $e0 $20
	ldh  [$e0], a                                    ; $423e: $e0 $e0
	nop                                              ; $4240: $00
	nop                                              ; $4241: $00
	nop                                              ; $4242: $00
	nop                                              ; $4243: $00
	ld   bc, $0201                                   ; $4244: $01 $01 $02
	inc  bc                                          ; $4247: $03
	ld   [bc], a                                     ; $4248: $02
	inc  bc                                          ; $4249: $03
	ld   [bc], a                                     ; $424a: $02
	inc  bc                                          ; $424b: $03
	inc  b                                           ; $424c: $04
	rlca                                             ; $424d: $07
	ld   [$090f], sp                                 ; $424e: $08 $0f $09
	rrca                                             ; $4251: $0f
	ld   de, $111f                                   ; $4252: $11 $1f $11
	rra                                              ; $4255: $1f
	ld   de, $091f                                   ; $4256: $11 $1f $09
	rrca                                             ; $4259: $0f
	dec  b                                           ; $425a: $05
	rlca                                             ; $425b: $07
	ld   [bc], a                                     ; $425c: $02
	inc  bc                                          ; $425d: $03
	ld   bc, $3e01                                   ; $425e: $01 $01 $3e
	ld   a, $c1                                      ; $4261: $3e $c1
	rst  $38                                         ; $4263: $ff
	nop                                              ; $4264: $00
	rst  $38                                         ; $4265: $ff
	nop                                              ; $4266: $00
	rst  $38                                         ; $4267: $ff
	ld   b, b                                        ; $4268: $40
	rst  $38                                         ; $4269: $ff
	ld   c, b                                        ; $426a: $48
	rst  $38                                         ; $426b: $ff
	adc  b                                           ; $426c: $88
	rst  $38                                         ; $426d: $ff
	add  h                                           ; $426e: $84
	rst  $38                                         ; $426f: $ff
	jp   nz, $c27f                                   ; $4270: $c2 $7f $c2

	ld   a, a                                        ; $4273: $7f
	ldh  [c], a                                      ; $4274: $e2
	ld   a, a                                        ; $4275: $7f

jr_027_4276:
	ldh  [c], a                                      ; $4276: $e2
	cp   a                                           ; $4277: $bf
	db   $e3                                         ; $4278: $e3
	ccf                                              ; $4279: $3f
	rst  $20                                         ; $427a: $e7
	dec  a                                           ; $427b: $3d
	rst  $28                                         ; $427c: $ef
	cp   c                                           ; $427d: $b9
	rst  $38                                         ; $427e: $ff
	pop  af                                          ; $427f: $f1
	nop                                              ; $4280: $00
	nop                                              ; $4281: $00
	ret  nz                                          ; $4282: $c0

	ret  nz                                          ; $4283: $c0

	jr   nc, jr_027_4276                             ; $4284: $30 $f0

	db   $10                                         ; $4286: $10
	ldh  a, [$08]                                    ; $4287: $f0 $08
	ld   hl, sp+$44                                  ; $4289: $f8 $44
	db   $fc                                         ; $428b: $fc
	ld   b, d                                        ; $428c: $42
	cp   $22                                         ; $428d: $fe $22
	cp   $22                                         ; $428f: $fe $22
	cp   $22                                         ; $4291: $fe $22
	cp   $24                                         ; $4293: $fe $24
	db   $fc                                         ; $4295: $fc
	inc  h                                           ; $4296: $24
	db   $fc                                         ; $4297: $fc
	ld   c, b                                        ; $4298: $48
	ld   hl, sp+$48                                  ; $4299: $f8 $48
	ld   hl, sp-$70                                  ; $429b: $f8 $90
	ldh  a, [$e0]                                    ; $429d: $f0 $e0
	ld   h, b                                        ; $429f: $60
	nop                                              ; $42a0: $00
	nop                                              ; $42a1: $00
	nop                                              ; $42a2: $00
	nop                                              ; $42a3: $00
	nop                                              ; $42a4: $00
	nop                                              ; $42a5: $00
	nop                                              ; $42a6: $00
	nop                                              ; $42a7: $00
	nop                                              ; $42a8: $00
	nop                                              ; $42a9: $00
	nop                                              ; $42aa: $00
	nop                                              ; $42ab: $00
	ld   bc, $0601                                   ; $42ac: $01 $01 $06
	rlca                                             ; $42af: $07
	ld   [$100f], sp                                 ; $42b0: $08 $0f $10
	rra                                              ; $42b3: $1f
	ld   de, $0e1f                                   ; $42b4: $11 $1f $0e
	rrca                                             ; $42b7: $0f
	ld   bc, $0201                                   ; $42b8: $01 $01 $02
	inc  bc                                          ; $42bb: $03
	ld   [bc], a                                     ; $42bc: $02
	inc  bc                                          ; $42bd: $03
	ld   [bc], a                                     ; $42be: $02
	inc  bc                                          ; $42bf: $03
	ld   bc, $0301                                   ; $42c0: $01 $01 $03
	inc  bc                                          ; $42c3: $03
	rlca                                             ; $42c4: $07
	rlca                                             ; $42c5: $07
	rrca                                             ; $42c6: $0f
	rrca                                             ; $42c7: $0f
	ld   e, $1e                                      ; $42c8: $1e $1e
	ld   a, [hl]                                     ; $42ca: $7e
	halt                                             ; $42cb: $76
	cp   [hl]                                        ; $42cc: $be
	and  $bf                                         ; $42cd: $e6 $bf
	rst  $38                                         ; $42cf: $ff
	cp   [hl]                                        ; $42d0: $be
	db   $e3                                         ; $42d1: $e3
	ld   a, [hl]                                     ; $42d2: $7e
	db   $e3                                         ; $42d3: $e3

jr_027_42d4:
	sbc  a                                           ; $42d4: $9f
	rst  $30                                         ; $42d5: $f7

jr_027_42d6:
	add  hl, bc                                      ; $42d6: $09
	rst  $38                                         ; $42d7: $ff

jr_027_42d8:
	add  hl, bc                                      ; $42d8: $09
	rst  $38                                         ; $42d9: $ff

jr_027_42da:
	inc  b                                           ; $42da: $04
	rst  $38                                         ; $42db: $ff
	inc  b                                           ; $42dc: $04
	rst  $38                                         ; $42dd: $ff
	inc  bc                                          ; $42de: $03
	rst  $38                                         ; $42df: $ff
	add  b                                           ; $42e0: $80
	add  b                                           ; $42e1: $80
	ret  nz                                          ; $42e2: $c0

	ret  nz                                          ; $42e3: $c0

	add  b                                           ; $42e4: $80
	add  b                                           ; $42e5: $80
	nop                                              ; $42e6: $00
	nop                                              ; $42e7: $00
	nop                                              ; $42e8: $00
	nop                                              ; $42e9: $00
	nop                                              ; $42ea: $00
	nop                                              ; $42eb: $00
	nop                                              ; $42ec: $00
	nop                                              ; $42ed: $00
	nop                                              ; $42ee: $00
	nop                                              ; $42ef: $00
	ret  nz                                          ; $42f0: $c0

	ret  nz                                          ; $42f1: $c0

	jr   nz, jr_027_42d4                             ; $42f2: $20 $e0

	jr   nz, jr_027_42d6                             ; $42f4: $20 $e0

	jr   nz, jr_027_42d8                             ; $42f6: $20 $e0

	jr   nz, jr_027_42da                             ; $42f8: $20 $e0

	ld   b, b                                        ; $42fa: $40
	ret  nz                                          ; $42fb: $c0

	ld   b, b                                        ; $42fc: $40
	ret  nz                                          ; $42fd: $c0

	add  b                                           ; $42fe: $80
	add  b                                           ; $42ff: $80
	ld   [bc], a                                     ; $4300: $02
	inc  bc                                          ; $4301: $03
	ld   bc, $0201                                   ; $4302: $01 $01 $02
	inc  bc                                          ; $4305: $03
	ld   [bc], a                                     ; $4306: $02
	inc  bc                                          ; $4307: $03
	ld   [bc], a                                     ; $4308: $02
	inc  bc                                          ; $4309: $03
	ld   [bc], a                                     ; $430a: $02
	inc  bc                                          ; $430b: $03
	ld   [bc], a                                     ; $430c: $02
	inc  bc                                          ; $430d: $03
	ld   [bc], a                                     ; $430e: $02
	inc  bc                                          ; $430f: $03
	ld   [bc], a                                     ; $4310: $02
	inc  bc                                          ; $4311: $03
	ld   [bc], a                                     ; $4312: $02
	inc  bc                                          ; $4313: $03
	ld   [bc], a                                     ; $4314: $02
	inc  bc                                          ; $4315: $03
	ld   [bc], a                                     ; $4316: $02
	inc  bc                                          ; $4317: $03
	ld   [bc], a                                     ; $4318: $02
	inc  bc                                          ; $4319: $03
	inc  bc                                          ; $431a: $03
	inc  bc                                          ; $431b: $03
	rlca                                             ; $431c: $07
	inc  b                                           ; $431d: $04
	rlca                                             ; $431e: $07
	rlca                                             ; $431f: $07
	inc  c                                           ; $4320: $0c
	db   $fc                                         ; $4321: $fc
	ldh  a, [c]                                      ; $4322: $f2
	cp   $4a                                         ; $4323: $fe $4a
	cp   $4a                                         ; $4325: $fe $4a
	cp   $49                                         ; $4327: $fe $49
	rst  $38                                         ; $4329: $ff
	ld   b, l                                        ; $432a: $45
	rst  $38                                         ; $432b: $ff
	ld   b, h                                        ; $432c: $44
	rst  $38                                         ; $432d: $ff
	ld   [hl+], a                                    ; $432e: $22
	rst  $38                                         ; $432f: $ff
	nop                                              ; $4330: $00
	rst  $38                                         ; $4331: $ff
	nop                                              ; $4332: $00
	rst  $38                                         ; $4333: $ff
	nop                                              ; $4334: $00
	rst  $38                                         ; $4335: $ff
	nop                                              ; $4336: $00
	rst  $38                                         ; $4337: $ff
	nop                                              ; $4338: $00
	rst  $38                                         ; $4339: $ff

jr_027_433a:
	rst  $38                                         ; $433a: $ff
	rst  $38                                         ; $433b: $ff
	rst  $20                                         ; $433c: $e7
	inc  h                                           ; $433d: $24
	rst  $20                                         ; $433e: $e7
	rst  $20                                         ; $433f: $e7
	nop                                              ; $4340: $00
	nop                                              ; $4341: $00
	nop                                              ; $4342: $00
	nop                                              ; $4343: $00
	nop                                              ; $4344: $00
	nop                                              ; $4345: $00
	nop                                              ; $4346: $00
	nop                                              ; $4347: $00
	nop                                              ; $4348: $00
	nop                                              ; $4349: $00
	nop                                              ; $434a: $00
	nop                                              ; $434b: $00
	add  b                                           ; $434c: $80
	add  b                                           ; $434d: $80
	add  b                                           ; $434e: $80
	add  b                                           ; $434f: $80
	add  b                                           ; $4350: $80
	add  b                                           ; $4351: $80
	add  b                                           ; $4352: $80
	add  b                                           ; $4353: $80
	ld   b, b                                        ; $4354: $40
	ret  nz                                          ; $4355: $c0

	ld   b, b                                        ; $4356: $40
	ret  nz                                          ; $4357: $c0

	jr   nz, jr_027_433a                             ; $4358: $20 $e0

	ret  nz                                          ; $435a: $c0

	ret  nz                                          ; $435b: $c0

	ldh  [rAUD4LEN], a                               ; $435c: $e0 $20
	ldh  [$e0], a                                    ; $435e: $e0 $e0
	nop                                              ; $4360: $00
	nop                                              ; $4361: $00
	ld   bc, $0701                                   ; $4362: $01 $01 $07
	rlca                                             ; $4365: $07
	rlca                                             ; $4366: $07
	rlca                                             ; $4367: $07
	rlca                                             ; $4368: $07
	rlca                                             ; $4369: $07
	rlca                                             ; $436a: $07
	rlca                                             ; $436b: $07
	rrca                                             ; $436c: $0f
	rrca                                             ; $436d: $0f
	rla                                              ; $436e: $17
	rra                                              ; $436f: $1f
	inc  de                                          ; $4370: $13
	ld   e, $23                                      ; $4371: $1e $23
	ld   a, $23                                      ; $4373: $3e $23
	ld   a, $23                                      ; $4375: $3e $23
	ccf                                              ; $4377: $3f
	inc  de                                          ; $4378: $13
	ld   e, $0b                                      ; $4379: $1e $0b
	ld   c, $05                                      ; $437b: $0e $05
	rlca                                             ; $437d: $07
	inc  bc                                          ; $437e: $03
	inc  bc                                          ; $437f: $03
	ld   a, h                                        ; $4380: $7c
	ld   a, h                                        ; $4381: $7c
	add  e                                           ; $4382: $83
	rst  $38                                         ; $4383: $ff
	nop                                              ; $4384: $00
	rst  $38                                         ; $4385: $ff
	nop                                              ; $4386: $00
	rst  $38                                         ; $4387: $ff
	add  b                                           ; $4388: $80
	rst  $38                                         ; $4389: $ff
	sub  b                                           ; $438a: $90
	rst  $38                                         ; $438b: $ff
	db   $10                                         ; $438c: $10
	rst  $38                                         ; $438d: $ff
	ld   [$84ff], sp                                 ; $438e: $08 $ff $84
	rst  $38                                         ; $4391: $ff
	add  h                                           ; $4392: $84
	rst  $38                                         ; $4393: $ff
	call nz, $c4ff                                   ; $4394: $c4 $ff $c4
	ld   a, a                                        ; $4397: $7f
	add  $7f                                         ; $4398: $c6 $7f
	adc  $7b                                         ; $439a: $ce $7b
	rst  JumpTable                                         ; $439c: $df
	ld   [hl], e                                     ; $439d: $73
	rst  $38                                         ; $439e: $ff
	ldh  [c], a                                      ; $439f: $e2
	nop                                              ; $43a0: $00
	nop                                              ; $43a1: $00
	add  b                                           ; $43a2: $80
	add  b                                           ; $43a3: $80
	ld   h, b                                        ; $43a4: $60
	ldh  [rAUD4LEN], a                               ; $43a5: $e0 $20
	ldh  [rAUD1SWEEP], a                             ; $43a7: $e0 $10
	ldh  a, [$88]                                    ; $43a9: $f0 $88
	ld   hl, sp-$7c                                  ; $43ab: $f8 $84
	db   $fc                                         ; $43ad: $fc
	ld   b, h                                        ; $43ae: $44
	db   $fc                                         ; $43af: $fc
	ld   b, h                                        ; $43b0: $44
	db   $fc                                         ; $43b1: $fc
	ld   b, h                                        ; $43b2: $44
	db   $fc                                         ; $43b3: $fc
	ld   c, b                                        ; $43b4: $48
	ld   hl, sp+$48                                  ; $43b5: $f8 $48
	ld   hl, sp-$70                                  ; $43b7: $f8 $90
	ldh  a, [$90]                                    ; $43b9: $f0 $90
	ldh  a, [rAUD4LEN]                               ; $43bb: $f0 $20
	ldh  [$c0], a                                    ; $43bd: $e0 $c0
	ret  nz                                          ; $43bf: $c0

	rlca                                             ; $43c0: $07
	rlca                                             ; $43c1: $07
	rrca                                             ; $43c2: $0f
	add  hl, bc                                      ; $43c3: $09
	rrca                                             ; $43c4: $0f
	add  hl, bc                                      ; $43c5: $09
	rra                                              ; $43c6: $1f
	add  hl, de                                      ; $43c7: $19
	ld   e, $17                                      ; $43c8: $1e $17
	ld   a, [de]                                     ; $43ca: $1a
	rra                                              ; $43cb: $1f
	dec  bc                                          ; $43cc: $0b
	rrca                                             ; $43cd: $0f
	add  hl, bc                                      ; $43ce: $09
	rrca                                             ; $43cf: $0f
	inc  b                                           ; $43d0: $04
	rlca                                             ; $43d1: $07
	ld   [bc], a                                     ; $43d2: $02
	inc  bc                                          ; $43d3: $03
	ld   bc, $0101                                   ; $43d4: $01 $01 $01
	ld   bc, $0302                                   ; $43d7: $01 $02 $03
	ld   [bc], a                                     ; $43da: $02
	inc  bc                                          ; $43db: $03
	ld   bc, $0101                                   ; $43dc: $01 $01 $01
	ld   bc, $0000                                   ; $43df: $01 $00 $00
	nop                                              ; $43e2: $00
	nop                                              ; $43e3: $00
	nop                                              ; $43e4: $00
	nop                                              ; $43e5: $00
	add  b                                           ; $43e6: $80
	add  b                                           ; $43e7: $80
	ld   b, b                                        ; $43e8: $40
	ret  nz                                          ; $43e9: $c0

	ld   h, b                                        ; $43ea: $60
	ldh  [$90], a                                    ; $43eb: $e0 $90
	ldh  a, [$08]                                    ; $43ed: $f0 $08
	ld   hl, sp-$79                                  ; $43ef: $f8 $87
	rst  $38                                         ; $43f1: $ff
	jp   nz, $c0ff                                   ; $43f2: $c2 $ff $c0

	rst  $38                                         ; $43f5: $ff
	and  b                                           ; $43f6: $a0
	rst  $38                                         ; $43f7: $ff
	db   $10                                         ; $43f8: $10
	rst  $38                                         ; $43f9: $ff
	ld   de, $01ff                                   ; $43fa: $11 $ff $01
	rst  $38                                         ; $43fd: $ff
	add  c                                           ; $43fe: $81
	rst  $38                                         ; $43ff: $ff
	nop                                              ; $4400: $00
	nop                                              ; $4401: $00
	nop                                              ; $4402: $00
	nop                                              ; $4403: $00
	nop                                              ; $4404: $00
	nop                                              ; $4405: $00
	nop                                              ; $4406: $00
	nop                                              ; $4407: $00
	nop                                              ; $4408: $00
	nop                                              ; $4409: $00
	nop                                              ; $440a: $00
	nop                                              ; $440b: $00
	nop                                              ; $440c: $00
	nop                                              ; $440d: $00
	nop                                              ; $440e: $00
	nop                                              ; $440f: $00
	add  b                                           ; $4410: $80
	add  b                                           ; $4411: $80
	ld   b, b                                        ; $4412: $40
	ret  nz                                          ; $4413: $c0

	ld   b, b                                        ; $4414: $40
	ret  nz                                          ; $4415: $c0

	add  b                                           ; $4416: $80
	add  b                                           ; $4417: $80
	add  b                                           ; $4418: $80
	add  b                                           ; $4419: $80
	nop                                              ; $441a: $00
	nop                                              ; $441b: $00
	nop                                              ; $441c: $00
	nop                                              ; $441d: $00
	nop                                              ; $441e: $00
	nop                                              ; $441f: $00
	ld   [bc], a                                     ; $4420: $02
	inc  bc                                          ; $4421: $03
	ld   bc, $0201                                   ; $4422: $01 $01 $02
	inc  bc                                          ; $4425: $03
	ld   [bc], a                                     ; $4426: $02
	inc  bc                                          ; $4427: $03
	ld   [bc], a                                     ; $4428: $02
	inc  bc                                          ; $4429: $03
	ld   [bc], a                                     ; $442a: $02
	inc  bc                                          ; $442b: $03
	ld   [bc], a                                     ; $442c: $02
	inc  bc                                          ; $442d: $03
	ld   [bc], a                                     ; $442e: $02
	inc  bc                                          ; $442f: $03
	ld   [bc], a                                     ; $4430: $02
	inc  bc                                          ; $4431: $03
	ld   [bc], a                                     ; $4432: $02
	inc  bc                                          ; $4433: $03
	ld   [bc], a                                     ; $4434: $02
	inc  bc                                          ; $4435: $03
	ld   [bc], a                                     ; $4436: $02
	inc  bc                                          ; $4437: $03
	ld   [bc], a                                     ; $4438: $02
	inc  bc                                          ; $4439: $03
	inc  bc                                          ; $443a: $03
	inc  bc                                          ; $443b: $03
	rlca                                             ; $443c: $07
	inc  b                                           ; $443d: $04
	rlca                                             ; $443e: $07
	rlca                                             ; $443f: $07
	inc  c                                           ; $4440: $0c
	db   $fc                                         ; $4441: $fc
	db   $f4                                         ; $4442: $f4
	db   $fc                                         ; $4443: $fc
	ld   d, d                                        ; $4444: $52
	cp   $52                                         ; $4445: $fe $52
	cp   $51                                         ; $4447: $fe $51
	rst  $38                                         ; $4449: $ff
	ld   c, c                                        ; $444a: $49
	rst  $38                                         ; $444b: $ff
	ld   c, b                                        ; $444c: $48
	rst  $38                                         ; $444d: $ff
	inc  h                                           ; $444e: $24
	rst  $38                                         ; $444f: $ff
	jr   nz, @+$01                                   ; $4450: $20 $ff

	nop                                              ; $4452: $00
	rst  $38                                         ; $4453: $ff
	nop                                              ; $4454: $00
	rst  $38                                         ; $4455: $ff
	nop                                              ; $4456: $00
	rst  $38                                         ; $4457: $ff
	nop                                              ; $4458: $00
	rst  $38                                         ; $4459: $ff

jr_027_445a:
	rst  $38                                         ; $445a: $ff
	rst  $38                                         ; $445b: $ff
	rst  $20                                         ; $445c: $e7
	inc  h                                           ; $445d: $24
	rst  $20                                         ; $445e: $e7
	rst  $20                                         ; $445f: $e7
	nop                                              ; $4460: $00
	nop                                              ; $4461: $00
	nop                                              ; $4462: $00
	nop                                              ; $4463: $00
	nop                                              ; $4464: $00
	nop                                              ; $4465: $00
	nop                                              ; $4466: $00
	nop                                              ; $4467: $00
	nop                                              ; $4468: $00
	nop                                              ; $4469: $00
	nop                                              ; $446a: $00
	nop                                              ; $446b: $00
	add  b                                           ; $446c: $80
	add  b                                           ; $446d: $80
	add  b                                           ; $446e: $80
	add  b                                           ; $446f: $80
	add  b                                           ; $4470: $80
	add  b                                           ; $4471: $80
	add  b                                           ; $4472: $80
	add  b                                           ; $4473: $80
	ld   b, b                                        ; $4474: $40
	ret  nz                                          ; $4475: $c0

	ld   b, b                                        ; $4476: $40
	ret  nz                                          ; $4477: $c0

	jr   nz, jr_027_445a                             ; $4478: $20 $e0

	ret  nz                                          ; $447a: $c0

	ret  nz                                          ; $447b: $c0

	ldh  [rAUD4LEN], a                               ; $447c: $e0 $20
	ldh  [$e0], a                                    ; $447e: $e0 $e0
	nop                                              ; $4480: $00
	nop                                              ; $4481: $00
	inc  bc                                          ; $4482: $03
	inc  bc                                          ; $4483: $03
	inc  b                                           ; $4484: $04
	rlca                                             ; $4485: $07
	ld   [$090f], sp                                 ; $4486: $08 $0f $09
	rrca                                             ; $4489: $0f
	add  hl, bc                                      ; $448a: $09
	rrca                                             ; $448b: $0f
	ld   [de], a                                     ; $448c: $12
	rra                                              ; $448d: $1f
	ld   [hl+], a                                    ; $448e: $22
	ccf                                              ; $448f: $3f
	daa                                              ; $4490: $27
	dec  a                                           ; $4491: $3d
	ld   b, a                                        ; $4492: $47
	ld   a, l                                        ; $4493: $7d
	ld   b, a                                        ; $4494: $47
	ld   a, l                                        ; $4495: $7d
	ld   b, a                                        ; $4496: $47
	ld   a, [hl]                                     ; $4497: $7e
	daa                                              ; $4498: $27
	inc  a                                           ; $4499: $3c
	rla                                              ; $449a: $17
	inc  e                                           ; $449b: $1c
	dec  bc                                          ; $449c: $0b
	ld   c, $07                                      ; $449d: $0e $07
	rlca                                             ; $449f: $07
	ld   hl, sp-$08                                  ; $44a0: $f8 $f8
	rlca                                             ; $44a2: $07
	rst  $38                                         ; $44a3: $ff
	nop                                              ; $44a4: $00
	rst  $38                                         ; $44a5: $ff
	nop                                              ; $44a6: $00
	rst  $38                                         ; $44a7: $ff
	nop                                              ; $44a8: $00
	rst  $38                                         ; $44a9: $ff

jr_027_44aa:
	ld   hl, $21ff                                   ; $44aa: $21 $ff $21
	rst  $38                                         ; $44ad: $ff
	db   $10                                         ; $44ae: $10
	rst  $38                                         ; $44af: $ff
	ld   [$08ff], sp                                 ; $44b0: $08 $ff $08
	rst  $38                                         ; $44b3: $ff
	adc  b                                           ; $44b4: $88
	rst  $38                                         ; $44b5: $ff
	adc  b                                           ; $44b6: $88
	rst  $38                                         ; $44b7: $ff
	adc  l                                           ; $44b8: $8d
	rst  $38                                         ; $44b9: $ff
	sbc  l                                           ; $44ba: $9d
	rst  $30                                         ; $44bb: $f7
	cp   [hl]                                        ; $44bc: $be
	rst  $20                                         ; $44bd: $e7
	rst  $38                                         ; $44be: $ff
	push bc                                          ; $44bf: $c5
	nop                                              ; $44c0: $00
	nop                                              ; $44c1: $00
	nop                                              ; $44c2: $00
	nop                                              ; $44c3: $00
	ret  nz                                          ; $44c4: $c0

	ret  nz                                          ; $44c5: $c0

	ld   b, b                                        ; $44c6: $40
	ret  nz                                          ; $44c7: $c0

	jr   nz, jr_027_44aa                             ; $44c8: $20 $e0

	db   $10                                         ; $44ca: $10
	ldh  a, [$08]                                    ; $44cb: $f0 $08
	ld   hl, sp-$78                                  ; $44cd: $f8 $88
	ld   hl, sp-$78                                  ; $44cf: $f8 $88
	ld   hl, sp-$78                                  ; $44d1: $f8 $88
	ld   hl, sp-$70                                  ; $44d3: $f8 $90
	ldh  a, [$90]                                    ; $44d5: $f0 $90
	ldh  a, [rAUD4LEN]                               ; $44d7: $f0 $20
	ldh  [rAUD4LEN], a                               ; $44d9: $e0 $20
	ldh  [rLCDC], a                                  ; $44db: $e0 $40
	ret  nz                                          ; $44dd: $c0

	add  b                                           ; $44de: $80
	add  b                                           ; $44df: $80
	nop                                              ; $44e0: $00
	nop                                              ; $44e1: $00
	nop                                              ; $44e2: $00
	nop                                              ; $44e3: $00
	nop                                              ; $44e4: $00
	nop                                              ; $44e5: $00
	nop                                              ; $44e6: $00
	nop                                              ; $44e7: $00
	nop                                              ; $44e8: $00
	nop                                              ; $44e9: $00
	nop                                              ; $44ea: $00
	nop                                              ; $44eb: $00
	add  b                                           ; $44ec: $80
	add  b                                           ; $44ed: $80
	ld   hl, sp+$78                                  ; $44ee: $f8 $78
	rst  $20                                         ; $44f0: $e7
	ccf                                              ; $44f1: $3f
	ldh  [$3f], a                                    ; $44f2: $e0 $3f
	ret  z                                           ; $44f4: $c8

	rst  $38                                         ; $44f5: $ff
	inc  a                                           ; $44f6: $3c
	ccf                                              ; $44f7: $3f
	rlca                                             ; $44f8: $07
	rlca                                             ; $44f9: $07
	inc  b                                           ; $44fa: $04
	rlca                                             ; $44fb: $07
	ld   [bc], a                                     ; $44fc: $02
	inc  bc                                          ; $44fd: $03
	ld   bc, $ff01                                   ; $44fe: $01 $01 $ff
	rst  $38                                         ; $4501: $ff
	nop                                              ; $4502: $00
	rst  $38                                         ; $4503: $ff
	nop                                              ; $4504: $00
	rst  $38                                         ; $4505: $ff
	db   $10                                         ; $4506: $10
	rst  $38                                         ; $4507: $ff
	jp   hl                                          ; $4508: $e9


	rst  $38                                         ; $4509: $ff
	ld   [bc], a                                     ; $450a: $02
	cp   $02                                         ; $450b: $fe $02
	cp   $0c                                         ; $450d: $fe $0c
	db   $fc                                         ; $450f: $fc
	ld   hl, sp-$08                                  ; $4510: $f8 $f8
	inc  d                                           ; $4512: $14
	db   $fc                                         ; $4513: $fc
	ld   d, h                                        ; $4514: $54
	db   $fc                                         ; $4515: $fc
	ld   d, d                                        ; $4516: $52
	cp   $52                                         ; $4517: $fe $52
	cp   $51                                         ; $4519: $fe $51
	rst  $38                                         ; $451b: $ff
	sub  c                                           ; $451c: $91
	rst  $38                                         ; $451d: $ff
	sub  b                                           ; $451e: $90
	rst  $38                                         ; $451f: $ff
	nop                                              ; $4520: $00
	nop                                              ; $4521: $00
	add  b                                           ; $4522: $80
	add  b                                           ; $4523: $80
	add  b                                           ; $4524: $80
	add  b                                           ; $4525: $80
	add  b                                           ; $4526: $80
	add  b                                           ; $4527: $80
	nop                                              ; $4528: $00
	nop                                              ; $4529: $00
	nop                                              ; $452a: $00
	nop                                              ; $452b: $00
	nop                                              ; $452c: $00
	nop                                              ; $452d: $00
	nop                                              ; $452e: $00
	nop                                              ; $452f: $00
	nop                                              ; $4530: $00
	nop                                              ; $4531: $00
	nop                                              ; $4532: $00
	nop                                              ; $4533: $00
	nop                                              ; $4534: $00
	nop                                              ; $4535: $00
	nop                                              ; $4536: $00
	nop                                              ; $4537: $00
	nop                                              ; $4538: $00
	nop                                              ; $4539: $00
	nop                                              ; $453a: $00
	nop                                              ; $453b: $00
	nop                                              ; $453c: $00
	nop                                              ; $453d: $00
	add  b                                           ; $453e: $80
	add  b                                           ; $453f: $80
	ld   bc, $0201                                   ; $4540: $01 $01 $02
	inc  bc                                          ; $4543: $03
	ld   [bc], a                                     ; $4544: $02
	inc  bc                                          ; $4545: $03
	inc  b                                           ; $4546: $04
	rlca                                             ; $4547: $07
	inc  b                                           ; $4548: $04
	rlca                                             ; $4549: $07
	inc  b                                           ; $454a: $04
	rlca                                             ; $454b: $07
	inc  b                                           ; $454c: $04
	rlca                                             ; $454d: $07
	inc  b                                           ; $454e: $04
	rlca                                             ; $454f: $07
	dec  b                                           ; $4550: $05
	rlca                                             ; $4551: $07
	inc  b                                           ; $4552: $04
	rlca                                             ; $4553: $07
	inc  b                                           ; $4554: $04
	rlca                                             ; $4555: $07
	inc  b                                           ; $4556: $04
	rlca                                             ; $4557: $07
	inc  b                                           ; $4558: $04
	rlca                                             ; $4559: $07
	rrca                                             ; $455a: $0f
	rrca                                             ; $455b: $0f
	rrca                                             ; $455c: $0f
	ld   [$0f0f], sp                                 ; $455d: $08 $0f $0f
	db   $10                                         ; $4560: $10
	rst  $38                                         ; $4561: $ff
	nop                                              ; $4562: $00
	rst  $38                                         ; $4563: $ff
	nop                                              ; $4564: $00
	rst  $38                                         ; $4565: $ff
	nop                                              ; $4566: $00
	rst  $38                                         ; $4567: $ff
	nop                                              ; $4568: $00
	rst  $38                                         ; $4569: $ff

jr_027_456a:
	rst  $38                                         ; $456a: $ff
	rst  $38                                         ; $456b: $ff
	rst  ToBoot                                         ; $456c: $c7
	ld   b, h                                        ; $456d: $44
	rst  ToBoot                                         ; $456e: $c7
	rst  ToBoot                                         ; $456f: $c7
	nop                                              ; $4570: $00
	nop                                              ; $4571: $00
	nop                                              ; $4572: $00
	nop                                              ; $4573: $00
	nop                                              ; $4574: $00
	nop                                              ; $4575: $00
	nop                                              ; $4576: $00
	nop                                              ; $4577: $00
	nop                                              ; $4578: $00
	nop                                              ; $4579: $00
	nop                                              ; $457a: $00
	nop                                              ; $457b: $00
	nop                                              ; $457c: $00
	nop                                              ; $457d: $00
	nop                                              ; $457e: $00
	nop                                              ; $457f: $00
	add  b                                           ; $4580: $80
	add  b                                           ; $4581: $80
	add  b                                           ; $4582: $80
	add  b                                           ; $4583: $80
	ld   b, b                                        ; $4584: $40
	ret  nz                                          ; $4585: $c0

	ld   b, b                                        ; $4586: $40
	ret  nz                                          ; $4587: $c0

	jr   nz, jr_027_456a                             ; $4588: $20 $e0

	ret  nz                                          ; $458a: $c0

	ret  nz                                          ; $458b: $c0

	ldh  [rAUD4LEN], a                               ; $458c: $e0 $20
	ldh  [$e0], a                                    ; $458e: $e0 $e0
	nop                                              ; $4590: $00
	nop                                              ; $4591: $00
	nop                                              ; $4592: $00
	nop                                              ; $4593: $00
	nop                                              ; $4594: $00
	nop                                              ; $4595: $00
	nop                                              ; $4596: $00
	nop                                              ; $4597: $00
	nop                                              ; $4598: $00
	nop                                              ; $4599: $00
	nop                                              ; $459a: $00
	nop                                              ; $459b: $00
	nop                                              ; $459c: $00
	nop                                              ; $459d: $00
	nop                                              ; $459e: $00
	nop                                              ; $459f: $00
	nop                                              ; $45a0: $00
	nop                                              ; $45a1: $00
	inc  bc                                          ; $45a2: $03
	inc  bc                                          ; $45a3: $03
	inc  c                                           ; $45a4: $0c
	rrca                                             ; $45a5: $0f
	db   $10                                         ; $45a6: $10
	rra                                              ; $45a7: $1f
	inc  d                                           ; $45a8: $14
	rra                                              ; $45a9: $1f
	jp   nc, $f2df                                   ; $45aa: $d2 $df $f2

	rst  $38                                         ; $45ad: $ff
	db   $e3                                         ; $45ae: $e3
	rst  $38                                         ; $45af: $ff
	daa                                              ; $45b0: $27
	inc  a                                           ; $45b1: $3c
	rla                                              ; $45b2: $17
	inc  e                                           ; $45b3: $1c
	rla                                              ; $45b4: $17
	dec  e                                           ; $45b5: $1d
	rrca                                             ; $45b6: $0f
	dec  c                                           ; $45b7: $0d
	dec  bc                                          ; $45b8: $0b
	rrca                                             ; $45b9: $0f
	dec  bc                                          ; $45ba: $0b
	ld   c, $0f                                      ; $45bb: $0e $0f
	ld   c, $01                                      ; $45bd: $0e $01
	ld   bc, $fcfc                                   ; $45bf: $01 $fc $fc
	inc  bc                                          ; $45c2: $03
	rst  $38                                         ; $45c3: $ff
	nop                                              ; $45c4: $00
	rst  $38                                         ; $45c5: $ff
	nop                                              ; $45c6: $00
	rst  $38                                         ; $45c7: $ff
	nop                                              ; $45c8: $00
	rst  $38                                         ; $45c9: $ff

jr_027_45ca:
	jr   nz, @+$01                                   ; $45ca: $20 $ff

	ld   hl, $18ff                                   ; $45cc: $21 $ff $18
	rst  $38                                         ; $45cf: $ff
	add  h                                           ; $45d0: $84
	rst  $38                                         ; $45d1: $ff
	ldh  [c], a                                      ; $45d2: $e2
	rst  $38                                         ; $45d3: $ff
	ldh  a, [c]                                      ; $45d4: $f2
	rra                                              ; $45d5: $1f
	ldh  a, [$9f]                                    ; $45d6: $f0 $9f
	pop  af                                          ; $45d8: $f1
	sbc  a                                           ; $45d9: $9f
	rst  $20                                         ; $45da: $e7
	cp   a                                           ; $45db: $bf
	rst  $38                                         ; $45dc: $ff
	add  hl, de                                      ; $45dd: $19
	rst  $38                                         ; $45de: $ff
	nop                                              ; $45df: $00
	nop                                              ; $45e0: $00
	nop                                              ; $45e1: $00
	nop                                              ; $45e2: $00
	nop                                              ; $45e3: $00
	add  b                                           ; $45e4: $80
	add  b                                           ; $45e5: $80
	ld   b, b                                        ; $45e6: $40
	ret  nz                                          ; $45e7: $c0

	jr   nz, jr_027_45ca                             ; $45e8: $20 $e0

	db   $10                                         ; $45ea: $10
	ldh  a, [$08]                                    ; $45eb: $f0 $08
	ld   hl, sp-$7c                                  ; $45ed: $f8 $84
	db   $fc                                         ; $45ef: $fc
	ld   b, h                                        ; $45f0: $44
	db   $fc                                         ; $45f1: $fc
	inc  h                                           ; $45f2: $24
	db   $fc                                         ; $45f3: $fc
	jr   z, @-$06                                    ; $45f4: $28 $f8

	ret  z                                           ; $45f6: $c8

	ld   hl, sp+$10                                  ; $45f7: $f8 $10
	ldh  a, [rAUD4LEN]                               ; $45f9: $f0 $20
	ldh  [rLCDC], a                                  ; $45fb: $e0 $40
	ret  nz                                          ; $45fd: $c0

	add  b                                           ; $45fe: $80
	add  b                                           ; $45ff: $80
	ldh  a, [$f0]                                    ; $4600: $f0 $f0
	ld   a, b                                        ; $4602: $78
	ld   a, b                                        ; $4603: $78
	inc  a                                           ; $4604: $3c
	inc  a                                           ; $4605: $3c
	ld   a, h                                        ; $4606: $7c
	ld   c, h                                        ; $4607: $4c
	cp   $86                                         ; $4608: $fe $86
	ld   a, c                                        ; $460a: $79
	ld   c, a                                        ; $460b: $4f
	jr   nc, jr_027_464d                             ; $460c: $30 $3f

	db   $10                                         ; $460e: $10
	rra                                              ; $460f: $1f
	ld   [$060f], sp                                 ; $4610: $08 $0f $06
	rlca                                             ; $4613: $07
	ld   bc, $0201                                   ; $4614: $01 $01 $02
	inc  bc                                          ; $4617: $03
	inc  b                                           ; $4618: $04
	rlca                                             ; $4619: $07
	inc  b                                           ; $461a: $04
	rlca                                             ; $461b: $07
	ld   [bc], a                                     ; $461c: $02
	inc  bc                                          ; $461d: $03
	ld   bc, $0001                                   ; $461e: $01 $01 $00
	nop                                              ; $4621: $00
	nop                                              ; $4622: $00
	nop                                              ; $4623: $00
	nop                                              ; $4624: $00
	nop                                              ; $4625: $00
	nop                                              ; $4626: $00
	nop                                              ; $4627: $00
	nop                                              ; $4628: $00
	nop                                              ; $4629: $00
	nop                                              ; $462a: $00
	nop                                              ; $462b: $00
	ret  nz                                          ; $462c: $c0

	ret  nz                                          ; $462d: $c0

	jr   nc, @-$0e                                   ; $462e: $30 $f0

	rrca                                             ; $4630: $0f
	rst  $38                                         ; $4631: $ff
	nop                                              ; $4632: $00
	rst  $38                                         ; $4633: $ff
	add  b                                           ; $4634: $80
	rst  $38                                         ; $4635: $ff
	ld   [hl], b                                     ; $4636: $70
	rst  $38                                         ; $4637: $ff
	add  hl, bc                                      ; $4638: $09
	rst  $38                                         ; $4639: $ff
	ld   bc, $02ff                                   ; $463a: $01 $ff $02
	cp   $06                                         ; $463d: $fe $06
	cp   $00                                         ; $463f: $fe $00
	nop                                              ; $4641: $00
	add  b                                           ; $4642: $80
	add  b                                           ; $4643: $80
	add  b                                           ; $4644: $80
	add  b                                           ; $4645: $80
	add  b                                           ; $4646: $80
	add  b                                           ; $4647: $80
	nop                                              ; $4648: $00
	nop                                              ; $4649: $00
	nop                                              ; $464a: $00
	nop                                              ; $464b: $00
	nop                                              ; $464c: $00

jr_027_464d:
	nop                                              ; $464d: $00
	nop                                              ; $464e: $00
	nop                                              ; $464f: $00
	nop                                              ; $4650: $00
	nop                                              ; $4651: $00
	nop                                              ; $4652: $00
	nop                                              ; $4653: $00
	nop                                              ; $4654: $00
	nop                                              ; $4655: $00
	nop                                              ; $4656: $00
	nop                                              ; $4657: $00
	nop                                              ; $4658: $00
	nop                                              ; $4659: $00
	nop                                              ; $465a: $00
	nop                                              ; $465b: $00
	nop                                              ; $465c: $00
	nop                                              ; $465d: $00
	add  b                                           ; $465e: $80
	add  b                                           ; $465f: $80
	ld   bc, $0201                                   ; $4660: $01 $01 $02
	inc  bc                                          ; $4663: $03
	ld   [bc], a                                     ; $4664: $02
	inc  bc                                          ; $4665: $03
	inc  b                                           ; $4666: $04
	rlca                                             ; $4667: $07
	inc  b                                           ; $4668: $04
	rlca                                             ; $4669: $07
	inc  b                                           ; $466a: $04
	rlca                                             ; $466b: $07
	inc  b                                           ; $466c: $04
	rlca                                             ; $466d: $07
	inc  b                                           ; $466e: $04
	rlca                                             ; $466f: $07
	dec  b                                           ; $4670: $05
	rlca                                             ; $4671: $07
	inc  b                                           ; $4672: $04
	rlca                                             ; $4673: $07
	inc  b                                           ; $4674: $04
	rlca                                             ; $4675: $07
	inc  b                                           ; $4676: $04
	rlca                                             ; $4677: $07
	inc  b                                           ; $4678: $04
	rlca                                             ; $4679: $07
	rrca                                             ; $467a: $0f
	rrca                                             ; $467b: $0f
	rrca                                             ; $467c: $0f
	ld   [$0f0f], sp                                 ; $467d: $08 $0f $0f
	db   $fc                                         ; $4680: $fc
	db   $fc                                         ; $4681: $fc
	ld   e, b                                        ; $4682: $58
	ld   hl, sp+$54                                  ; $4683: $f8 $54
	db   $fc                                         ; $4685: $fc
	ld   d, d                                        ; $4686: $52
	cp   $52                                         ; $4687: $fe $52
	cp   $51                                         ; $4689: $fe $51
	rst  $38                                         ; $468b: $ff
	sub  c                                           ; $468c: $91
	rst  $38                                         ; $468d: $ff
	sub  b                                           ; $468e: $90
	rst  $38                                         ; $468f: $ff
	db   $10                                         ; $4690: $10
	rst  $38                                         ; $4691: $ff
	nop                                              ; $4692: $00
	rst  $38                                         ; $4693: $ff
	nop                                              ; $4694: $00
	rst  $38                                         ; $4695: $ff
	nop                                              ; $4696: $00
	rst  $38                                         ; $4697: $ff
	nop                                              ; $4698: $00
	rst  $38                                         ; $4699: $ff
	rst  $38                                         ; $469a: $ff
	rst  $38                                         ; $469b: $ff
	rst  ToBoot                                         ; $469c: $c7
	ld   b, h                                        ; $469d: $44
	rst  ToBoot                                         ; $469e: $c7
	rst  ToBoot                                         ; $469f: $c7
	add  b                                           ; $46a0: $80
	add  b                                           ; $46a1: $80
	add  b                                           ; $46a2: $80
	add  b                                           ; $46a3: $80
	ld   b, b                                        ; $46a4: $40
	ret  nz                                          ; $46a5: $c0

	ld   b, b                                        ; $46a6: $40
	ret  nz                                          ; $46a7: $c0

	jr   nz, @-$1e                                   ; $46a8: $20 $e0

	ret  nz                                          ; $46aa: $c0

	ret  nz                                          ; $46ab: $c0

	ldh  [rAUD4LEN], a                               ; $46ac: $e0 $20
	ldh  [$e0], a                                    ; $46ae: $e0 $e0
	nop                                              ; $46b0: $00
	nop                                              ; $46b1: $00
	nop                                              ; $46b2: $00
	nop                                              ; $46b3: $00
	nop                                              ; $46b4: $00
	nop                                              ; $46b5: $00
	nop                                              ; $46b6: $00
	nop                                              ; $46b7: $00
	nop                                              ; $46b8: $00
	nop                                              ; $46b9: $00
	nop                                              ; $46ba: $00
	nop                                              ; $46bb: $00
	nop                                              ; $46bc: $00
	nop                                              ; $46bd: $00
	nop                                              ; $46be: $00
	nop                                              ; $46bf: $00
	nop                                              ; $46c0: $00
	nop                                              ; $46c1: $00
	inc  bc                                          ; $46c2: $03
	inc  bc                                          ; $46c3: $03
	inc  c                                           ; $46c4: $0c
	rrca                                             ; $46c5: $0f
	db   $10                                         ; $46c6: $10
	rra                                              ; $46c7: $1f
	inc  d                                           ; $46c8: $14
	rra                                              ; $46c9: $1f
	ld   [de], a                                     ; $46ca: $12
	rra                                              ; $46cb: $1f
	ld   [de], a                                     ; $46cc: $12
	rra                                              ; $46cd: $1f
	inc  hl                                          ; $46ce: $23
	ccf                                              ; $46cf: $3f
	daa                                              ; $46d0: $27
	inc  a                                           ; $46d1: $3c
	scf                                              ; $46d2: $37
	inc  a                                           ; $46d3: $3c
	rla                                              ; $46d4: $17
	dec  e                                           ; $46d5: $1d
	rla                                              ; $46d6: $17
	rra                                              ; $46d7: $1f
	rla                                              ; $46d8: $17
	dec  e                                           ; $46d9: $1d
	daa                                              ; $46da: $27
	inc  a                                           ; $46db: $3c
	rra                                              ; $46dc: $1f
	ld   e, $01                                      ; $46dd: $1e $01
	ld   bc, $fcfc                                   ; $46df: $01 $fc $fc
	inc  bc                                          ; $46e2: $03
	rst  $38                                         ; $46e3: $ff
	nop                                              ; $46e4: $00
	rst  $38                                         ; $46e5: $ff
	nop                                              ; $46e6: $00
	rst  $38                                         ; $46e7: $ff
	nop                                              ; $46e8: $00
	rst  $38                                         ; $46e9: $ff

jr_027_46ea:
	jr   nz, @+$01                                   ; $46ea: $20 $ff

	ld   hl, $10ff                                   ; $46ec: $21 $ff $10
	rst  $38                                         ; $46ef: $ff
	adc  b                                           ; $46f0: $88
	rst  $38                                         ; $46f1: $ff
	call nz, $c4ff                                   ; $46f2: $c4 $ff $c4
	ld   a, a                                        ; $46f5: $7f
	call nz, $e47f                                   ; $46f6: $c4 $7f $e4
	ccf                                              ; $46f9: $3f
	push hl                                          ; $46fa: $e5
	ccf                                              ; $46fb: $3f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $46fc: $cf
	ld   a, e                                        ; $46fd: $7b
	rst  $38                                         ; $46fe: $ff
	jr   nc, jr_027_4701                             ; $46ff: $30 $00

jr_027_4701:
	nop                                              ; $4701: $00
	nop                                              ; $4702: $00
	nop                                              ; $4703: $00
	add  b                                           ; $4704: $80
	add  b                                           ; $4705: $80
	ld   b, b                                        ; $4706: $40
	ret  nz                                          ; $4707: $c0

	jr   nz, jr_027_46ea                             ; $4708: $20 $e0

	db   $10                                         ; $470a: $10
	ldh  a, [$08]                                    ; $470b: $f0 $08
	ld   hl, sp-$7c                                  ; $470d: $f8 $84
	db   $fc                                         ; $470f: $fc
	add  h                                           ; $4710: $84
	db   $fc                                         ; $4711: $fc
	ld   b, h                                        ; $4712: $44
	db   $fc                                         ; $4713: $fc
	ld   c, b                                        ; $4714: $48
	ld   hl, sp+$48                                  ; $4715: $f8 $48
	ld   hl, sp-$30                                  ; $4717: $f8 $d0
	ldh  a, [rAUD4LEN]                               ; $4719: $f0 $20
	ldh  [rLCDC], a                                  ; $471b: $e0 $40
	ret  nz                                          ; $471d: $c0

	add  b                                           ; $471e: $80
	add  b                                           ; $471f: $80
	nop                                              ; $4720: $00
	nop                                              ; $4721: $00
	nop                                              ; $4722: $00
	nop                                              ; $4723: $00
	nop                                              ; $4724: $00
	nop                                              ; $4725: $00
	ldh  a, [$f0]                                    ; $4726: $f0 $f0
	ldh  a, [$f0]                                    ; $4728: $f0 $f0
	db   $fc                                         ; $472a: $fc
	inc  e                                           ; $472b: $1c
	di                                               ; $472c: $f3
	rra                                              ; $472d: $1f
	ldh  [rIE], a                                    ; $472e: $e0 $ff
	jr   c, jr_027_4771                              ; $4730: $38 $3f

	ld   b, $07                                      ; $4732: $06 $07
	ld   bc, $0201                                   ; $4734: $01 $01 $02
	inc  bc                                          ; $4737: $03
	inc  b                                           ; $4738: $04
	rlca                                             ; $4739: $07
	inc  b                                           ; $473a: $04
	rlca                                             ; $473b: $07
	ld   [bc], a                                     ; $473c: $02
	inc  bc                                          ; $473d: $03
	ld   bc, $0001                                   ; $473e: $01 $01 $00
	nop                                              ; $4741: $00
	nop                                              ; $4742: $00
	nop                                              ; $4743: $00
	nop                                              ; $4744: $00
	nop                                              ; $4745: $00
	nop                                              ; $4746: $00
	nop                                              ; $4747: $00
	nop                                              ; $4748: $00
	nop                                              ; $4749: $00
	nop                                              ; $474a: $00
	nop                                              ; $474b: $00
	add  b                                           ; $474c: $80
	add  b                                           ; $474d: $80
	ld   [hl], b                                     ; $474e: $70
	ldh  a, [rIF]                                    ; $474f: $f0 $0f
	rst  $38                                         ; $4751: $ff
	nop                                              ; $4752: $00
	rst  $38                                         ; $4753: $ff
	add  b                                           ; $4754: $80
	rst  $38                                         ; $4755: $ff
	ld   [hl], b                                     ; $4756: $70
	rst  $38                                         ; $4757: $ff
	add  hl, bc                                      ; $4758: $09
	rst  $38                                         ; $4759: $ff
	ld   bc, $02ff                                   ; $475a: $01 $ff $02
	cp   $06                                         ; $475d: $fe $06
	cp   $00                                         ; $475f: $fe $00
	nop                                              ; $4761: $00
	add  b                                           ; $4762: $80
	add  b                                           ; $4763: $80
	add  b                                           ; $4764: $80
	add  b                                           ; $4765: $80
	add  b                                           ; $4766: $80
	add  b                                           ; $4767: $80
	nop                                              ; $4768: $00
	nop                                              ; $4769: $00
	nop                                              ; $476a: $00
	nop                                              ; $476b: $00
	nop                                              ; $476c: $00
	nop                                              ; $476d: $00
	nop                                              ; $476e: $00
	nop                                              ; $476f: $00
	nop                                              ; $4770: $00

jr_027_4771:
	nop                                              ; $4771: $00
	nop                                              ; $4772: $00
	nop                                              ; $4773: $00
	nop                                              ; $4774: $00
	nop                                              ; $4775: $00
	nop                                              ; $4776: $00
	nop                                              ; $4777: $00
	nop                                              ; $4778: $00

Jump_027_4779:
	nop                                              ; $4779: $00
	nop                                              ; $477a: $00
	nop                                              ; $477b: $00
	nop                                              ; $477c: $00
	nop                                              ; $477d: $00
	add  b                                           ; $477e: $80
	add  b                                           ; $477f: $80
	ld   bc, $0201                                   ; $4780: $01 $01 $02
	inc  bc                                          ; $4783: $03
	ld   [bc], a                                     ; $4784: $02
	inc  bc                                          ; $4785: $03
	inc  b                                           ; $4786: $04
	rlca                                             ; $4787: $07
	inc  b                                           ; $4788: $04
	rlca                                             ; $4789: $07
	inc  b                                           ; $478a: $04
	rlca                                             ; $478b: $07
	inc  b                                           ; $478c: $04
	rlca                                             ; $478d: $07
	inc  b                                           ; $478e: $04
	rlca                                             ; $478f: $07
	dec  b                                           ; $4790: $05
	rlca                                             ; $4791: $07
	inc  b                                           ; $4792: $04
	rlca                                             ; $4793: $07
	inc  b                                           ; $4794: $04
	rlca                                             ; $4795: $07
	inc  b                                           ; $4796: $04
	rlca                                             ; $4797: $07
	inc  b                                           ; $4798: $04
	rlca                                             ; $4799: $07
	rrca                                             ; $479a: $0f
	rrca                                             ; $479b: $0f
	rrca                                             ; $479c: $0f
	ld   [$0f0f], sp                                 ; $479d: $08 $0f $0f
	ld   hl, sp-$08                                  ; $47a0: $f8 $f8
	ld   e, b                                        ; $47a2: $58
	ld   hl, sp+$54                                  ; $47a3: $f8 $54
	db   $fc                                         ; $47a5: $fc
	ld   d, d                                        ; $47a6: $52
	cp   $52                                         ; $47a7: $fe $52
	cp   $51                                         ; $47a9: $fe $51
	rst  $38                                         ; $47ab: $ff
	sub  c                                           ; $47ac: $91
	rst  $38                                         ; $47ad: $ff
	sub  b                                           ; $47ae: $90
	rst  $38                                         ; $47af: $ff
	db   $10                                         ; $47b0: $10
	rst  $38                                         ; $47b1: $ff
	nop                                              ; $47b2: $00
	rst  $38                                         ; $47b3: $ff
	nop                                              ; $47b4: $00
	rst  $38                                         ; $47b5: $ff
	nop                                              ; $47b6: $00
	rst  $38                                         ; $47b7: $ff
	nop                                              ; $47b8: $00
	rst  $38                                         ; $47b9: $ff
	rst  $38                                         ; $47ba: $ff
	rst  $38                                         ; $47bb: $ff
	rst  ToBoot                                         ; $47bc: $c7
	ld   b, h                                        ; $47bd: $44
	rst  ToBoot                                         ; $47be: $c7
	rst  ToBoot                                         ; $47bf: $c7
	add  b                                           ; $47c0: $80
	add  b                                           ; $47c1: $80
	add  b                                           ; $47c2: $80
	add  b                                           ; $47c3: $80
	ld   b, b                                        ; $47c4: $40
	ret  nz                                          ; $47c5: $c0

	ld   b, b                                        ; $47c6: $40
	ret  nz                                          ; $47c7: $c0

	jr   nz, @-$1e                                   ; $47c8: $20 $e0

	ret  nz                                          ; $47ca: $c0

	ret  nz                                          ; $47cb: $c0

	ldh  [rAUD4LEN], a                               ; $47cc: $e0 $20
	ldh  [$e0], a                                    ; $47ce: $e0 $e0
	nop                                              ; $47d0: $00
	nop                                              ; $47d1: $00
	nop                                              ; $47d2: $00
	nop                                              ; $47d3: $00
	nop                                              ; $47d4: $00
	nop                                              ; $47d5: $00
	nop                                              ; $47d6: $00
	nop                                              ; $47d7: $00
	nop                                              ; $47d8: $00
	nop                                              ; $47d9: $00
	nop                                              ; $47da: $00
	nop                                              ; $47db: $00
	nop                                              ; $47dc: $00
	nop                                              ; $47dd: $00
	nop                                              ; $47de: $00
	nop                                              ; $47df: $00
	nop                                              ; $47e0: $00
	nop                                              ; $47e1: $00
	nop                                              ; $47e2: $00
	nop                                              ; $47e3: $00
	nop                                              ; $47e4: $00
	nop                                              ; $47e5: $00
	nop                                              ; $47e6: $00
	nop                                              ; $47e7: $00
	nop                                              ; $47e8: $00
	nop                                              ; $47e9: $00
	ld   a, a                                        ; $47ea: $7f
	ld   a, a                                        ; $47eb: $7f
	ld   a, a                                        ; $47ec: $7f
	ld   a, a                                        ; $47ed: $7f
	rlca                                             ; $47ee: $07
	rlca                                             ; $47ef: $07
	rlca                                             ; $47f0: $07
	inc  b                                           ; $47f1: $04
	inc  bc                                          ; $47f2: $03
	ld   [bc], a                                     ; $47f3: $02
	ld   bc, $0001                                   ; $47f4: $01 $01 $00
	nop                                              ; $47f7: $00
	nop                                              ; $47f8: $00
	nop                                              ; $47f9: $00
	nop                                              ; $47fa: $00
	nop                                              ; $47fb: $00
	nop                                              ; $47fc: $00
	nop                                              ; $47fd: $00
	nop                                              ; $47fe: $00
	nop                                              ; $47ff: $00
	nop                                              ; $4800: $00
	nop                                              ; $4801: $00
	inc  a                                           ; $4802: $3c
	inc  a                                           ; $4803: $3c
	ccf                                              ; $4804: $3f
	ccf                                              ; $4805: $3f
	rlca                                             ; $4806: $07
	rlca                                             ; $4807: $07
	ld   bc, $0101                                   ; $4808: $01 $01 $01
	ld   bc, $0101                                   ; $480b: $01 $01 $01
	nop                                              ; $480e: $00
	nop                                              ; $480f: $00
	nop                                              ; $4810: $00
	nop                                              ; $4811: $00
	nop                                              ; $4812: $00
	nop                                              ; $4813: $00
	nop                                              ; $4814: $00
	nop                                              ; $4815: $00
	nop                                              ; $4816: $00
	nop                                              ; $4817: $00
	nop                                              ; $4818: $00
	nop                                              ; $4819: $00
	nop                                              ; $481a: $00
	nop                                              ; $481b: $00
	nop                                              ; $481c: $00
	nop                                              ; $481d: $00
	nop                                              ; $481e: $00
	nop                                              ; $481f: $00
	ld   [hl], b                                     ; $4820: $70
	ld   [hl], b                                     ; $4821: $70
	ld   a, h                                        ; $4822: $7c
	ld   a, h                                        ; $4823: $7c
	rra                                              ; $4824: $1f
	rra                                              ; $4825: $1f
	rlca                                             ; $4826: $07
	rlca                                             ; $4827: $07
	rlca                                             ; $4828: $07
	rlca                                             ; $4829: $07
	dec  b                                           ; $482a: $05
	dec  b                                           ; $482b: $05
	rlca                                             ; $482c: $07
	rlca                                             ; $482d: $07
	inc  bc                                          ; $482e: $03
	ld   [bc], a                                     ; $482f: $02
	ld   bc, $0001                                   ; $4830: $01 $01 $00
	nop                                              ; $4833: $00
	nop                                              ; $4834: $00
	nop                                              ; $4835: $00
	nop                                              ; $4836: $00
	nop                                              ; $4837: $00
	nop                                              ; $4838: $00
	nop                                              ; $4839: $00
	nop                                              ; $483a: $00
	nop                                              ; $483b: $00
	nop                                              ; $483c: $00
	nop                                              ; $483d: $00
	nop                                              ; $483e: $00
	nop                                              ; $483f: $00
	nop                                              ; $4840: $00
	nop                                              ; $4841: $00
	nop                                              ; $4842: $00
	nop                                              ; $4843: $00
	nop                                              ; $4844: $00
	nop                                              ; $4845: $00
	nop                                              ; $4846: $00
	nop                                              ; $4847: $00
	nop                                              ; $4848: $00
	nop                                              ; $4849: $00
	nop                                              ; $484a: $00
	nop                                              ; $484b: $00
	nop                                              ; $484c: $00
	nop                                              ; $484d: $00
	nop                                              ; $484e: $00
	nop                                              ; $484f: $00
	ld   bc, $0000                                   ; $4850: $01 $00 $00
	nop                                              ; $4853: $00
	nop                                              ; $4854: $00
	nop                                              ; $4855: $00
	nop                                              ; $4856: $00
	nop                                              ; $4857: $00
	nop                                              ; $4858: $00
	nop                                              ; $4859: $00
	nop                                              ; $485a: $00
	nop                                              ; $485b: $00
	nop                                              ; $485c: $00
	nop                                              ; $485d: $00
	nop                                              ; $485e: $00
	nop                                              ; $485f: $00
	nop                                              ; $4860: $00
	nop                                              ; $4861: $00
	nop                                              ; $4862: $00
	nop                                              ; $4863: $00
	nop                                              ; $4864: $00
	nop                                              ; $4865: $00
	dec  c                                           ; $4866: $0d
	inc  bc                                          ; $4867: $03
	inc  c                                           ; $4868: $0c
	ld   [bc], a                                     ; $4869: $02
	nop                                              ; $486a: $00
	nop                                              ; $486b: $00
	ld   b, b                                        ; $486c: $40
	jr   nz, jr_027_4879                             ; $486d: $20 $0a

	ld   b, $0a                                      ; $486f: $06 $0a
	add  [hl]                                        ; $4871: $86
	nop                                              ; $4872: $00
	nop                                              ; $4873: $00
	jr   nz, jr_027_4886                             ; $4874: $20 $10

	nop                                              ; $4876: $00
	nop                                              ; $4877: $00
	inc  c                                           ; $4878: $0c

jr_027_4879:
	ld   [bc], a                                     ; $4879: $02
	dec  c                                           ; $487a: $0d
	inc  bc                                          ; $487b: $03
	nop                                              ; $487c: $00
	nop                                              ; $487d: $00
	nop                                              ; $487e: $00
	nop                                              ; $487f: $00
	nop                                              ; $4880: $00
	nop                                              ; $4881: $00
	nop                                              ; $4882: $00
	nop                                              ; $4883: $00
	nop                                              ; $4884: $00
	nop                                              ; $4885: $00

jr_027_4886:
	nop                                              ; $4886: $00
	nop                                              ; $4887: $00
	nop                                              ; $4888: $00
	nop                                              ; $4889: $00
	nop                                              ; $488a: $00
	nop                                              ; $488b: $00
	nop                                              ; $488c: $00
	nop                                              ; $488d: $00
	nop                                              ; $488e: $00
	ld   bc, $0001                                   ; $488f: $01 $01 $00
	nop                                              ; $4892: $00
	ld   bc, $0000                                   ; $4893: $01 $00 $00
	nop                                              ; $4896: $00
	nop                                              ; $4897: $00
	nop                                              ; $4898: $00
	nop                                              ; $4899: $00
	nop                                              ; $489a: $00
	nop                                              ; $489b: $00
	nop                                              ; $489c: $00
	nop                                              ; $489d: $00
	nop                                              ; $489e: $00
	nop                                              ; $489f: $00
	nop                                              ; $48a0: $00
	nop                                              ; $48a1: $00
	nop                                              ; $48a2: $00
	nop                                              ; $48a3: $00
	nop                                              ; $48a4: $00
	nop                                              ; $48a5: $00
	ld   b, $0e                                      ; $48a6: $06 $0e
	jr   nc, @+$0a                                   ; $48a8: $30 $08

	jr   z, jr_027_48c4                              ; $48aa: $28 $18

	ret  nz                                          ; $48ac: $c0

	jr   nz, @-$38                                   ; $48ad: $20 $c6

	ld   c, $e6                                      ; $48af: $0e $e6
	ld   e, $c0                                      ; $48b1: $1e $c0
	nop                                              ; $48b3: $00
	ret  nz                                          ; $48b4: $c0

	nop                                              ; $48b5: $00
	jr   c, jr_027_48b8                              ; $48b6: $38 $00

jr_027_48b8:
	jr   nc, jr_027_48c8                             ; $48b8: $30 $0e

	rlca                                             ; $48ba: $07
	rlca                                             ; $48bb: $07
	nop                                              ; $48bc: $00
	nop                                              ; $48bd: $00
	nop                                              ; $48be: $00
	nop                                              ; $48bf: $00
	nop                                              ; $48c0: $00
	nop                                              ; $48c1: $00
	nop                                              ; $48c2: $00
	nop                                              ; $48c3: $00

jr_027_48c4:
	nop                                              ; $48c4: $00
	nop                                              ; $48c5: $00
	nop                                              ; $48c6: $00
	nop                                              ; $48c7: $00

jr_027_48c8:
	nop                                              ; $48c8: $00
	nop                                              ; $48c9: $00
	nop                                              ; $48ca: $00
	nop                                              ; $48cb: $00
	nop                                              ; $48cc: $00
	nop                                              ; $48cd: $00
	inc  bc                                          ; $48ce: $03
	nop                                              ; $48cf: $00
	rrca                                             ; $48d0: $0f
	nop                                              ; $48d1: $00
	rrca                                             ; $48d2: $0f
	nop                                              ; $48d3: $00
	inc  bc                                          ; $48d4: $03
	nop                                              ; $48d5: $00
	nop                                              ; $48d6: $00
	nop                                              ; $48d7: $00
	nop                                              ; $48d8: $00
	nop                                              ; $48d9: $00
	nop                                              ; $48da: $00
	nop                                              ; $48db: $00
	nop                                              ; $48dc: $00
	nop                                              ; $48dd: $00
	nop                                              ; $48de: $00
	nop                                              ; $48df: $00
	nop                                              ; $48e0: $00
	nop                                              ; $48e1: $00
	nop                                              ; $48e2: $00
	nop                                              ; $48e3: $00
	nop                                              ; $48e4: $00
	nop                                              ; $48e5: $00
	nop                                              ; $48e6: $00
	nop                                              ; $48e7: $00
	ld   [$1c08], sp                                 ; $48e8: $08 $08 $1c
	inc  a                                           ; $48eb: $3c
	adc  b                                           ; $48ec: $88
	ld   a, b                                        ; $48ed: $78
	adc  [hl]                                        ; $48ee: $8e
	ld   a, [hl]                                     ; $48ef: $7e
	call nc, $ce3c                                   ; $48f0: $d4 $3c $ce
	ld   a, $94                                      ; $48f3: $3e $94
	ld   a, h                                        ; $48f5: $7c
	xor  [hl]                                        ; $48f6: $ae
	ld   a, [hl]                                     ; $48f7: $7e
	jr   c, jr_027_4932                              ; $48f8: $38 $38

	inc  c                                           ; $48fa: $0c
	inc  c                                           ; $48fb: $0c
	nop                                              ; $48fc: $00
	nop                                              ; $48fd: $00
	nop                                              ; $48fe: $00
	nop                                              ; $48ff: $00
	ld   e, $1e                                      ; $4900: $1e $1e
	ld   hl, $403f                                   ; $4902: $21 $3f $40
	ld   a, a                                        ; $4905: $7f
	ld   l, d                                        ; $4906: $6a
	ld   d, a                                        ; $4907: $57
	adc  a                                           ; $4908: $8f
	di                                               ; $4909: $f3
	ei                                               ; $490a: $fb
	rst  ToBoot                                         ; $490b: $c7
	ld   [hl], h                                     ; $490c: $74
	ld   c, a                                        ; $490d: $4f
	ld   c, h                                        ; $490e: $4c
	ld   a, a                                        ; $490f: $7f
	ccf                                              ; $4910: $3f
	ccf                                              ; $4911: $3f
	ld   b, $07                                      ; $4912: $06 $07
	ld   [bc], a                                     ; $4914: $02
	inc  bc                                          ; $4915: $03
	ld   bc, $0001                                   ; $4916: $01 $01 $00
	nop                                              ; $4919: $00
	nop                                              ; $491a: $00
	nop                                              ; $491b: $00
	nop                                              ; $491c: $00
	nop                                              ; $491d: $00
	nop                                              ; $491e: $00
	nop                                              ; $491f: $00
	nop                                              ; $4920: $00
	nop                                              ; $4921: $00
	ret  nz                                          ; $4922: $c0

	ret  nz                                          ; $4923: $c0

	ldh  a, [rSVBK]                                  ; $4924: $f0 $70
	ld   a, [hl]                                     ; $4926: $7e
	sbc  [hl]                                        ; $4927: $9e
	ld   a, a                                        ; $4928: $7f
	adc  a                                           ; $4929: $8f
	ld   hl, sp-$01                                  ; $492a: $f8 $ff
	ldh  a, [rIE]                                    ; $492c: $f0 $ff
	add  hl, sp                                      ; $492e: $39
	cp   $3e                                         ; $492f: $fe $3e
	rst  JumpTable                                         ; $4931: $df

jr_027_4932:
	ld   b, l                                        ; $4932: $45
	cp   e                                           ; $4933: $bb
	jp   nz, $a27d                                   ; $4934: $c2 $7d $a2

	db   $fd                                         ; $4937: $fd
	push de                                          ; $4938: $d5
	ei                                               ; $4939: $fb
	ld   e, a                                        ; $493a: $5f
	ld   l, a                                        ; $493b: $6f

jr_027_493c:
	inc  a                                           ; $493c: $3c
	inc  a                                           ; $493d: $3c
	nop                                              ; $493e: $00
	nop                                              ; $493f: $00
	nop                                              ; $4940: $00
	inc  b                                           ; $4941: $04
	ld   bc, $0102                                   ; $4942: $01 $02 $01
	ld   [bc], a                                     ; $4945: $02
	nop                                              ; $4946: $00
	ld   bc, $0100                                   ; $4947: $01 $00 $01
	nop                                              ; $494a: $00
	ld   bc, $0807                                   ; $494b: $01 $07 $08
	ld   bc, $0006                                   ; $494e: $01 $06 $00
	ld   [hl], l                                     ; $4951: $75
	inc  e                                           ; $4952: $1c
	ld   [hl+], a                                    ; $4953: $22
	dec  c                                           ; $4954: $0d
	ld   [de], a                                     ; $4955: $12
	inc  b                                           ; $4956: $04
	ld   [$f0c4], sp                                 ; $4957: $08 $c4 $f0
	nop                                              ; $495a: $00
	db   $fc                                         ; $495b: $fc
	inc  [hl]                                        ; $495c: $34
	rrc  d                                           ; $495d: $cb $0a
	push af                                          ; $495f: $f5
	nop                                              ; $4960: $00
	nop                                              ; $4961: $00
	nop                                              ; $4962: $00
	nop                                              ; $4963: $00
	nop                                              ; $4964: $00
	add  b                                           ; $4965: $80
	add  b                                           ; $4966: $80
	ld   b, b                                        ; $4967: $40
	ret  nz                                          ; $4968: $c0

	jr   nz, @+$42                                   ; $4969: $20 $40

	jr   nz, jr_027_496d                             ; $496b: $20 $00

jr_027_496d:
	jr   nc, @-$1e                                   ; $496d: $30 $e0

	db   $10                                         ; $496f: $10
	ldh  [rP1], a                                    ; $4970: $e0 $00
	jr   nz, jr_027_493c                             ; $4972: $20 $c8

	add  b                                           ; $4974: $80

jr_027_4975:
	ld   [$18e4], sp                                 ; $4975: $08 $e4 $18
	jr   nz, @+$1a                                   ; $4978: $20 $18

	inc  b                                           ; $497a: $04
	jr   jr_027_498d                                 ; $497b: $18 $10

	xor  b                                           ; $497d: $a8
	sub  b                                           ; $497e: $90
	ld   l, b                                        ; $497f: $68
	xor  a                                           ; $4980: $af
	ld   d, b                                        ; $4981: $50
	add  [hl]                                        ; $4982: $86
	ld   sp, hl                                      ; $4983: $f9
	ld   sp, $5efe                                   ; $4984: $31 $fe $5e
	and  c                                           ; $4987: $a1
	adc  a                                           ; $4988: $8f
	ldh  a, [$d6]                                    ; $4989: $f0 $d6
	jp   hl                                          ; $498b: $e9


	ld   a, [bc]                                     ; $498c: $0a

jr_027_498d:
	inc  d                                           ; $498d: $14
	inc  bc                                          ; $498e: $03
	jr   jr_027_4997                                 ; $498f: $18 $06

	jr   nz, jr_027_4993                             ; $4991: $20 $00

jr_027_4993:
	inc  bc                                          ; $4993: $03
	ld   bc, $0002                                   ; $4994: $01 $02 $00

jr_027_4997:
	inc  bc                                          ; $4997: $03
	ld   bc, $0206                                   ; $4998: $01 $06 $02
	inc  b                                           ; $499b: $04
	nop                                              ; $499c: $00
	ld   [rRAMG], sp                                 ; $499d: $08 $00 $00
	inc  [hl]                                        ; $49a0: $34
	ret  z                                           ; $49a1: $c8

	ld   [hl], a                                     ; $49a2: $77
	adc  b                                           ; $49a3: $88
	or   $08                                         ; $49a4: $f6 $08
	ld   [hl], h                                     ; $49a6: $74
	adc  b                                           ; $49a7: $88
	or   b                                           ; $49a8: $b0
	ld   c, b                                        ; $49a9: $48
	jr   nz, @-$66                                   ; $49aa: $20 $98

	ld   d, b                                        ; $49ac: $50
	jr   z, @-$5e                                    ; $49ad: $28 $a0

	ld   d, b                                        ; $49af: $50
	ld   h, b                                        ; $49b0: $60
	sub  b                                           ; $49b1: $90
	ret  nz                                          ; $49b2: $c0

	jr   nz, jr_027_4975                             ; $49b3: $20 $c0

	jr   nz, jr_027_49b7                             ; $49b5: $20 $00

jr_027_49b7:
	ret  nz                                          ; $49b7: $c0

	nop                                              ; $49b8: $00
	add  b                                           ; $49b9: $80
	nop                                              ; $49ba: $00
	nop                                              ; $49bb: $00
	nop                                              ; $49bc: $00
	nop                                              ; $49bd: $00
	nop                                              ; $49be: $00
	nop                                              ; $49bf: $00
	ld   e, $1e                                      ; $49c0: $1e $1e
	dec  l                                           ; $49c2: $2d
	inc  sp                                          ; $49c3: $33
	ld   b, e                                        ; $49c4: $43
	ld   a, h                                        ; $49c5: $7c
	ld   l, d                                        ; $49c6: $6a
	ld   d, a                                        ; $49c7: $57
	sbc  a                                           ; $49c8: $9f
	db   $e3                                         ; $49c9: $e3
	ei                                               ; $49ca: $fb
	rst  ToBoot                                         ; $49cb: $c7
	ld   [hl], l                                     ; $49cc: $75
	ld   c, [hl]                                     ; $49cd: $4e
	ld   c, h                                        ; $49ce: $4c
	ld   a, a                                        ; $49cf: $7f
	ccf                                              ; $49d0: $3f
	ccf                                              ; $49d1: $3f
	ld   b, $07                                      ; $49d2: $06 $07
	ld   [bc], a                                     ; $49d4: $02
	inc  bc                                          ; $49d5: $03
	ld   bc, $0001                                   ; $49d6: $01 $01 $00
	nop                                              ; $49d9: $00
	nop                                              ; $49da: $00
	nop                                              ; $49db: $00
	nop                                              ; $49dc: $00
	nop                                              ; $49dd: $00
	nop                                              ; $49de: $00
	nop                                              ; $49df: $00
	nop                                              ; $49e0: $00
	nop                                              ; $49e1: $00
	ret  nz                                          ; $49e2: $c0

	ret  nz                                          ; $49e3: $c0

	cp   b                                           ; $49e4: $b8
	ld   a, b                                        ; $49e5: $78
	rst  $30                                         ; $49e6: $f7
	rrca                                             ; $49e7: $0f
	ld   h, d                                        ; $49e8: $62
	sbc  a                                           ; $49e9: $9f
	cp   c                                           ; $49ea: $b9
	rst  ToBoot                                         ; $49eb: $c7
	sbc  a                                           ; $49ec: $9f
	ld   h, b                                        ; $49ed: $60
	rst  $38                                         ; $49ee: $ff
	nop                                              ; $49ef: $00
	ld   h, [hl]                                     ; $49f0: $66
	sbc  a                                           ; $49f1: $9f
	reti                                             ; $49f2: $d9


	daa                                              ; $49f3: $27
	sbc  $61                                         ; $49f4: $de $61
	xor  [hl]                                        ; $49f6: $ae
	pop  af                                          ; $49f7: $f1
	pop  af                                          ; $49f8: $f1
	rst  JumpTable                                         ; $49f9: $df
	ld   c, a                                        ; $49fa: $4f
	ld   a, a                                        ; $49fb: $7f
	inc  a                                           ; $49fc: $3c
	inc  a                                           ; $49fd: $3c
	nop                                              ; $49fe: $00
	nop                                              ; $49ff: $00
	nop                                              ; $4a00: $00
	nop                                              ; $4a01: $00
	nop                                              ; $4a02: $00
	nop                                              ; $4a03: $00
	nop                                              ; $4a04: $00
	nop                                              ; $4a05: $00
	add  b                                           ; $4a06: $80
	add  b                                           ; $4a07: $80
	ldh  a, [$f0]                                    ; $4a08: $f0 $f0
	ld   e, a                                        ; $4a0a: $5f
	rst  $38                                         ; $4a0b: $ff
	dec  hl                                          ; $4a0c: $2b
	rst  $38                                         ; $4a0d: $ff
	push af                                          ; $4a0e: $f5
	rrca                                             ; $4a0f: $0f
	rst  $38                                         ; $4a10: $ff
	nop                                              ; $4a11: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4a12: $cf
	ldh  a, [$3f]                                    ; $4a13: $f0 $3f
	rst  $38                                         ; $4a15: $ff
	add  d                                           ; $4a16: $82
	rst  $38                                         ; $4a17: $ff
	sub  l                                           ; $4a18: $95
	rst  $38                                         ; $4a19: $ff
	rst  $38                                         ; $4a1a: $ff
	rst  $38                                         ; $4a1b: $ff
	nop                                              ; $4a1c: $00
	nop                                              ; $4a1d: $00
	nop                                              ; $4a1e: $00
	nop                                              ; $4a1f: $00
	inc  c                                           ; $4a20: $0c
	ld   [bc], a                                     ; $4a21: $02
	ld   bc, $0202                                   ; $4a22: $01 $02 $02
	nop                                              ; $4a25: $00
	ld   [bc], a                                     ; $4a26: $02
	nop                                              ; $4a27: $00
	inc  b                                           ; $4a28: $04
	ret  nz                                          ; $4a29: $c0

	nop                                              ; $4a2a: $00
	inc  [hl]                                        ; $4a2b: $34
	nop                                              ; $4a2c: $00
	inc  c                                           ; $4a2d: $0c
	nop                                              ; $4a2e: $00
	nop                                              ; $4a2f: $00
	nop                                              ; $4a30: $00
	inc  b                                           ; $4a31: $04
	nop                                              ; $4a32: $00
	ld   [$0008], sp                                 ; $4a33: $08 $08 $00
	ld   [$0800], sp                                 ; $4a36: $08 $00 $08
	nop                                              ; $4a39: $00
	nop                                              ; $4a3a: $00
	ld   [$c8c0], sp                                 ; $4a3b: $08 $c0 $c8
	db   $fc                                         ; $4a3e: $fc
	db   $fc                                         ; $4a3f: $fc
	nop                                              ; $4a40: $00
	nop                                              ; $4a41: $00
	add  b                                           ; $4a42: $80
	nop                                              ; $4a43: $00
	nop                                              ; $4a44: $00
	ld   b, b                                        ; $4a45: $40
	nop                                              ; $4a46: $00
	ld   b, b                                        ; $4a47: $40
	nop                                              ; $4a48: $00
	jr   nz, jr_027_4a4b                             ; $4a49: $20 $00

jr_027_4a4b:
	nop                                              ; $4a4b: $00
	nop                                              ; $4a4c: $00
	db   $10                                         ; $4a4d: $10
	db   $10                                         ; $4a4e: $10
	jr   nz, @+$32                                   ; $4a4f: $20 $30

	ld   b, b                                        ; $4a51: $40
	db   $10                                         ; $4a52: $10
	jr   nz, jr_027_4a65                             ; $4a53: $20 $10

	nop                                              ; $4a55: $00
	stop                                             ; $4a56: $10 $00
	nop                                              ; $4a58: $00
	stop                                             ; $4a59: $10 $00
	stop                                             ; $4a5b: $10 $00
	nop                                              ; $4a5d: $00
	nop                                              ; $4a5e: $00
	db   $10                                         ; $4a5f: $10
	rlca                                             ; $4a60: $07
	rst  $38                                         ; $4a61: $ff
	rst  $38                                         ; $4a62: $ff
	nop                                              ; $4a63: $00
	rst  $38                                         ; $4a64: $ff

jr_027_4a65:
	rst  $38                                         ; $4a65: $ff
	rst  $38                                         ; $4a66: $ff
	rst  $38                                         ; $4a67: $ff
	ret  nz                                          ; $4a68: $c0

	ret  nz                                          ; $4a69: $c0

	nop                                              ; $4a6a: $00
	nop                                              ; $4a6b: $00
	nop                                              ; $4a6c: $00
	nop                                              ; $4a6d: $00
	nop                                              ; $4a6e: $00
	nop                                              ; $4a6f: $00
	nop                                              ; $4a70: $00
	nop                                              ; $4a71: $00
	nop                                              ; $4a72: $00
	inc  b                                           ; $4a73: $04
	nop                                              ; $4a74: $00
	inc  b                                           ; $4a75: $04
	nop                                              ; $4a76: $00
	nop                                              ; $4a77: $00
	nop                                              ; $4a78: $00
	ld   [bc], a                                     ; $4a79: $02
	nop                                              ; $4a7a: $00
	ld   [bc], a                                     ; $4a7b: $02
	ld   bc, $0806                                   ; $4a7c: $01 $06 $08
	nop                                              ; $4a7f: $00
	call z, $fef2                                    ; $4a80: $cc $f2 $fe
	ld   bc, $c2fc                                   ; $4a83: $01 $fc $c2
	ld   [hl], b                                     ; $4a86: $70
	nop                                              ; $4a87: $00
	stop                                             ; $4a88: $10 $00
	stop                                             ; $4a8a: $10 $00
	nop                                              ; $4a8c: $00
	stop                                             ; $4a8d: $10 $00
	nop                                              ; $4a8f: $00
	jr   nz, jr_027_4a92                             ; $4a90: $20 $00

jr_027_4a92:
	jr   nz, jr_027_4a94                             ; $4a92: $20 $00

jr_027_4a94:
	nop                                              ; $4a94: $00
	jr   nz, jr_027_4a97                             ; $4a95: $20 $00

jr_027_4a97:
	nop                                              ; $4a97: $00
	nop                                              ; $4a98: $00
	ld   b, b                                        ; $4a99: $40
	ld   b, b                                        ; $4a9a: $40
	nop                                              ; $4a9b: $00
	add  b                                           ; $4a9c: $80
	nop                                              ; $4a9d: $00
	nop                                              ; $4a9e: $00
	nop                                              ; $4a9f: $00
	nop                                              ; $4aa0: $00
	nop                                              ; $4aa1: $00
	rra                                              ; $4aa2: $1f
	rra                                              ; $4aa3: $1f
	ld   h, $39                                      ; $4aa4: $26 $39
	ld   e, e                                        ; $4aa6: $5b
	ld   h, h                                        ; $4aa7: $64
	db   $fc                                         ; $4aa8: $fc
	add  e                                           ; $4aa9: $83
	cp   l                                           ; $4aaa: $bd
	jp   Jump_027_4779                               ; $4aab: $c3 $79 $47


	ld   b, e                                        ; $4aae: $43
	ld   a, [hl]                                     ; $4aaf: $7e
	ld   a, $3d                                      ; $4ab0: $3e $3d
	dec  b                                           ; $4ab2: $05
	ld   b, $06                                      ; $4ab3: $06 $06
	rlca                                             ; $4ab5: $07
	ld   [bc], a                                     ; $4ab6: $02
	inc  bc                                          ; $4ab7: $03
	ld   bc, $0001                                   ; $4ab8: $01 $01 $00
	nop                                              ; $4abb: $00
	nop                                              ; $4abc: $00
	nop                                              ; $4abd: $00
	nop                                              ; $4abe: $00
	nop                                              ; $4abf: $00
	nop                                              ; $4ac0: $00
	nop                                              ; $4ac1: $00
	nop                                              ; $4ac2: $00
	nop                                              ; $4ac3: $00
	ldh  [$e0], a                                    ; $4ac4: $e0 $e0
	sbc  h                                           ; $4ac6: $9c
	ld   a, h                                        ; $4ac7: $7c
	ld   b, a                                        ; $4ac8: $47
	cp   a                                           ; $4ac9: $bf
	ld   l, $f1                                      ; $4aca: $2e $f1
	or   a                                           ; $4acc: $b7
	ret  z                                           ; $4acd: $c8

	add  sp, $17                                     ; $4ace: $e8 $17
	db   $dd                                         ; $4ad0: $dd
	inc  hl                                          ; $4ad1: $23
	xor  [hl]                                        ; $4ad2: $ae
	ld   d, c                                        ; $4ad3: $51
	add  $39                                         ; $4ad4: $c6 $39
	ret  nc                                          ; $4ad6: $d0

	ccf                                              ; $4ad7: $3f
	add  hl, hl                                      ; $4ad8: $29
	rst  JumpTable                                         ; $4ad9: $df
	sbc  a                                           ; $4ada: $9f
	rst  $38                                         ; $4adb: $ff
	ld   [hl], c                                     ; $4adc: $71
	ld   [hl], c                                     ; $4add: $71
	nop                                              ; $4ade: $00
	nop                                              ; $4adf: $00
	nop                                              ; $4ae0: $00
	nop                                              ; $4ae1: $00
	nop                                              ; $4ae2: $00
	nop                                              ; $4ae3: $00
	nop                                              ; $4ae4: $00
	nop                                              ; $4ae5: $00
	nop                                              ; $4ae6: $00
	nop                                              ; $4ae7: $00
	add  b                                           ; $4ae8: $80
	add  b                                           ; $4ae9: $80
	ldh  [$e0], a                                    ; $4aea: $e0 $e0
	cp   h                                           ; $4aec: $bc
	ld   a, h                                        ; $4aed: $7c
	rst  $30                                         ; $4aee: $f7
	rrca                                             ; $4aef: $0f
	sbc  [hl]                                        ; $4af0: $9e
	pop  hl                                          ; $4af1: $e1
	ld   [hl], b                                     ; $4af2: $70
	rst  $38                                         ; $4af3: $ff
	ld   a, d                                        ; $4af4: $7a
	rst  $38                                         ; $4af5: $ff
	push bc                                          ; $4af6: $c5
	rst  $38                                         ; $4af7: $ff
	adc  d                                           ; $4af8: $8a
	rst  $38                                         ; $4af9: $ff
	push de                                          ; $4afa: $d5
	rst  $38                                         ; $4afb: $ff
	cp   $fe                                         ; $4afc: $fe $fe
	ld   b, l                                        ; $4afe: $45
	ld   b, l                                        ; $4aff: $45
	nop                                              ; $4b00: $00
	nop                                              ; $4b01: $00
	nop                                              ; $4b02: $00
	nop                                              ; $4b03: $00
	nop                                              ; $4b04: $00
	nop                                              ; $4b05: $00
	nop                                              ; $4b06: $00
	nop                                              ; $4b07: $00
	nop                                              ; $4b08: $00
	nop                                              ; $4b09: $00
	nop                                              ; $4b0a: $00
	nop                                              ; $4b0b: $00
	nop                                              ; $4b0c: $00
	nop                                              ; $4b0d: $00
	add  b                                           ; $4b0e: $80
	add  b                                           ; $4b0f: $80
	ldh  [$e0], a                                    ; $4b10: $e0 $e0
	ld   a, b                                        ; $4b12: $78
	ld   hl, sp-$56                                  ; $4b13: $f8 $aa
	cp   $5d                                         ; $4b15: $fe $5d
	db   $fd                                         ; $4b17: $fd
	ld   a, [$d4fa]                                  ; $4b18: $fa $fa $d4
	call nc, $a0a0                                   ; $4b1b: $d4 $a0 $a0
	nop                                              ; $4b1e: $00
	nop                                              ; $4b1f: $00
	nop                                              ; $4b20: $00
	nop                                              ; $4b21: $00
	nop                                              ; $4b22: $00
	nop                                              ; $4b23: $00
	ld   b, $19                                      ; $4b24: $06 $19
	dec  de                                          ; $4b26: $1b
	inc  h                                           ; $4b27: $24
	ld   a, h                                        ; $4b28: $7c
	inc  bc                                          ; $4b29: $03
	inc  a                                           ; $4b2a: $3c
	ld   b, d                                        ; $4b2b: $42
	jr   c, jr_027_4b34                              ; $4b2c: $38 $06

	ld   bc, $023c                                   ; $4b2e: $01 $3c $02
	ld   bc, $0201                                   ; $4b31: $01 $01 $02

jr_027_4b34:
	nop                                              ; $4b34: $00
	ld   bc, $0100                                   ; $4b35: $01 $00 $01
	nop                                              ; $4b38: $00
	nop                                              ; $4b39: $00
	nop                                              ; $4b3a: $00
	nop                                              ; $4b3b: $00
	nop                                              ; $4b3c: $00
	nop                                              ; $4b3d: $00
	nop                                              ; $4b3e: $00
	nop                                              ; $4b3f: $00
	nop                                              ; $4b40: $00
	nop                                              ; $4b41: $00
	nop                                              ; $4b42: $00
	nop                                              ; $4b43: $00
	nop                                              ; $4b44: $00
	nop                                              ; $4b45: $00
	add  b                                           ; $4b46: $80
	ld   h, b                                        ; $4b47: $60
	ld   b, b                                        ; $4b48: $40
	cp   b                                           ; $4b49: $b8
	ld   c, $d1                                      ; $4b4a: $0e $d1
	scf                                              ; $4b4c: $37
	ld   c, b                                        ; $4b4d: $48
	add  sp, $17                                     ; $4b4e: $e8 $17
	call c, $ae22                                    ; $4b50: $dc $22 $ae
	ld   d, c                                        ; $4b53: $51
	add  $39                                         ; $4b54: $c6 $39
	ret  nz                                          ; $4b56: $c0

	cpl                                              ; $4b57: $2f
	jr   nz, @-$28                                   ; $4b58: $20 $d6

	nop                                              ; $4b5a: $00
	ld   h, b                                        ; $4b5b: $60
	nop                                              ; $4b5c: $00
	nop                                              ; $4b5d: $00
	nop                                              ; $4b5e: $00
	nop                                              ; $4b5f: $00
	nop                                              ; $4b60: $00
	nop                                              ; $4b61: $00
	nop                                              ; $4b62: $00
	nop                                              ; $4b63: $00
	nop                                              ; $4b64: $00
	nop                                              ; $4b65: $00
	nop                                              ; $4b66: $00
	nop                                              ; $4b67: $00
	nop                                              ; $4b68: $00
	nop                                              ; $4b69: $00
	nop                                              ; $4b6a: $00
	nop                                              ; $4b6b: $00
	add  b                                           ; $4b6c: $80
	ld   b, b                                        ; $4b6d: $40
	ldh  a, [$08]                                    ; $4b6e: $f0 $08
	ld   e, $61                                      ; $4b70: $1e $61
	nop                                              ; $4b72: $00
	adc  a                                           ; $4b73: $8f
	nop                                              ; $4b74: $00

Jump_027_4b75:
	add  l                                           ; $4b75: $85
	nop                                              ; $4b76: $00
	ld   a, [hl-]                                    ; $4b77: $3a
	nop                                              ; $4b78: $00
	ld   [hl], l                                     ; $4b79: $75
	nop                                              ; $4b7a: $00
	ld   a, [hl+]                                    ; $4b7b: $2a
	nop                                              ; $4b7c: $00
	nop                                              ; $4b7d: $00
	nop                                              ; $4b7e: $00
	nop                                              ; $4b7f: $00
	nop                                              ; $4b80: $00
	nop                                              ; $4b81: $00
	nop                                              ; $4b82: $00
	nop                                              ; $4b83: $00
	nop                                              ; $4b84: $00
	nop                                              ; $4b85: $00
	nop                                              ; $4b86: $00
	nop                                              ; $4b87: $00
	nop                                              ; $4b88: $00
	nop                                              ; $4b89: $00
	nop                                              ; $4b8a: $00
	nop                                              ; $4b8b: $00
	nop                                              ; $4b8c: $00
	nop                                              ; $4b8d: $00
	nop                                              ; $4b8e: $00
	nop                                              ; $4b8f: $00
	nop                                              ; $4b90: $00
	nop                                              ; $4b91: $00
	nop                                              ; $4b92: $00
	add  b                                           ; $4b93: $80
	nop                                              ; $4b94: $00
	ld   d, h                                        ; $4b95: $54
	nop                                              ; $4b96: $00
	and  b                                           ; $4b97: $a0
	nop                                              ; $4b98: $00
	nop                                              ; $4b99: $00
	nop                                              ; $4b9a: $00
	nop                                              ; $4b9b: $00
	nop                                              ; $4b9c: $00
	nop                                              ; $4b9d: $00
	nop                                              ; $4b9e: $00
	nop                                              ; $4b9f: $00
	nop                                              ; $4ba0: $00
	nop                                              ; $4ba1: $00
	nop                                              ; $4ba2: $00
	nop                                              ; $4ba3: $00
	ld   b, $00                                      ; $4ba4: $06 $00
	ld   a, [de]                                     ; $4ba6: $1a
	ld   bc, $0478                                   ; $4ba7: $01 $78 $04
	jr   c, @+$06                                    ; $4baa: $38 $04

	jr   nz, jr_027_4bc6                             ; $4bac: $20 $18

	nop                                              ; $4bae: $00
	ld   bc, $0200                                   ; $4baf: $01 $00 $02
	nop                                              ; $4bb2: $00
	ld   bc, $0000                                   ; $4bb3: $01 $00 $00
	nop                                              ; $4bb6: $00
	nop                                              ; $4bb7: $00
	nop                                              ; $4bb8: $00
	nop                                              ; $4bb9: $00
	nop                                              ; $4bba: $00
	nop                                              ; $4bbb: $00
	nop                                              ; $4bbc: $00
	nop                                              ; $4bbd: $00
	nop                                              ; $4bbe: $00
	nop                                              ; $4bbf: $00
	nop                                              ; $4bc0: $00
	nop                                              ; $4bc1: $00
	nop                                              ; $4bc2: $00
	nop                                              ; $4bc3: $00
	nop                                              ; $4bc4: $00
	nop                                              ; $4bc5: $00

jr_027_4bc6:
	nop                                              ; $4bc6: $00
	add  b                                           ; $4bc7: $80
	nop                                              ; $4bc8: $00
	ld   b, b                                        ; $4bc9: $40
	inc  b                                           ; $4bca: $04
	ld   a, [bc]                                     ; $4bcb: $0a
	inc  de                                          ; $4bcc: $13
	inc  h                                           ; $4bcd: $24
	ld   h, b                                        ; $4bce: $60
	adc  b                                           ; $4bcf: $88
	ret  z                                           ; $4bd0: $c8

	inc  d                                           ; $4bd1: $14
	adc  h                                           ; $4bd2: $8c
	ld   [hl+], a                                    ; $4bd3: $22
	ret  nz                                          ; $4bd4: $c0

	ld   b, $00                                      ; $4bd5: $06 $00
	ret  nz                                          ; $4bd7: $c0

	nop                                              ; $4bd8: $00
	jr   nz, jr_027_4bdb                             ; $4bd9: $20 $00

jr_027_4bdb:
	nop                                              ; $4bdb: $00
	nop                                              ; $4bdc: $00
	nop                                              ; $4bdd: $00
	nop                                              ; $4bde: $00
	nop                                              ; $4bdf: $00
	nop                                              ; $4be0: $00
	nop                                              ; $4be1: $00
	nop                                              ; $4be2: $00
	nop                                              ; $4be3: $00
	nop                                              ; $4be4: $00
	nop                                              ; $4be5: $00
	nop                                              ; $4be6: $00
	nop                                              ; $4be7: $00
	nop                                              ; $4be8: $00
	nop                                              ; $4be9: $00
	nop                                              ; $4bea: $00
	nop                                              ; $4beb: $00
	nop                                              ; $4bec: $00
	add  b                                           ; $4bed: $80
	ld   b, b                                        ; $4bee: $40
	or   b                                           ; $4bef: $b0
	nop                                              ; $4bf0: $00
	ld   e, $00                                      ; $4bf1: $1e $00
	nop                                              ; $4bf3: $00
	nop                                              ; $4bf4: $00
	nop                                              ; $4bf5: $00
	nop                                              ; $4bf6: $00
	nop                                              ; $4bf7: $00
	nop                                              ; $4bf8: $00
	nop                                              ; $4bf9: $00
	nop                                              ; $4bfa: $00
	nop                                              ; $4bfb: $00
	nop                                              ; $4bfc: $00
	nop                                              ; $4bfd: $00
	nop                                              ; $4bfe: $00
	nop                                              ; $4bff: $00
	nop                                              ; $4c00: $00
	nop                                              ; $4c01: $00
	nop                                              ; $4c02: $00
	nop                                              ; $4c03: $00
	nop                                              ; $4c04: $00
	nop                                              ; $4c05: $00
	nop                                              ; $4c06: $00
	nop                                              ; $4c07: $00
	nop                                              ; $4c08: $00
	nop                                              ; $4c09: $00
	nop                                              ; $4c0a: $00
	nop                                              ; $4c0b: $00
	nop                                              ; $4c0c: $00
	nop                                              ; $4c0d: $00
	nop                                              ; $4c0e: $00
	nop                                              ; $4c0f: $00
	nop                                              ; $4c10: $00
	nop                                              ; $4c11: $00
	nop                                              ; $4c12: $00
	nop                                              ; $4c13: $00
	nop                                              ; $4c14: $00
	nop                                              ; $4c15: $00
	nop                                              ; $4c16: $00
	nop                                              ; $4c17: $00
	nop                                              ; $4c18: $00
	nop                                              ; $4c19: $00
	nop                                              ; $4c1a: $00
	nop                                              ; $4c1b: $00
	nop                                              ; $4c1c: $00
	nop                                              ; $4c1d: $00
	nop                                              ; $4c1e: $00
	nop                                              ; $4c1f: $00
	nop                                              ; $4c20: $00
	nop                                              ; $4c21: $00
	nop                                              ; $4c22: $00
	nop                                              ; $4c23: $00
	nop                                              ; $4c24: $00
	nop                                              ; $4c25: $00
	nop                                              ; $4c26: $00
	nop                                              ; $4c27: $00
	nop                                              ; $4c28: $00
	nop                                              ; $4c29: $00
	nop                                              ; $4c2a: $00
	nop                                              ; $4c2b: $00
	ld   h, b                                        ; $4c2c: $60
	ld   h, b                                        ; $4c2d: $60
	ld   [hl], b                                     ; $4c2e: $70
	ld   d, b                                        ; $4c2f: $50
	ld   a, b                                        ; $4c30: $78
	ld   c, b                                        ; $4c31: $48
	ld   e, l                                        ; $4c32: $5d
	ld   h, l                                        ; $4c33: $65
	ld   e, [hl]                                     ; $4c34: $5e
	ld   h, e                                        ; $4c35: $63
	ld   e, c                                        ; $4c36: $59
	halt                                             ; $4c37: $76
	ccf                                              ; $4c38: $3f
	jr   nc, jr_027_4c62                             ; $4c39: $30 $27

	add  hl, sp                                      ; $4c3b: $39
	ld   b, l                                        ; $4c3c: $45
	ld   a, d                                        ; $4c3d: $7a

jr_027_4c3e:
	add  d                                           ; $4c3e: $82
	db   $fd                                         ; $4c3f: $fd

jr_027_4c40:
	nop                                              ; $4c40: $00
	nop                                              ; $4c41: $00
	nop                                              ; $4c42: $00
	nop                                              ; $4c43: $00
	nop                                              ; $4c44: $00
	nop                                              ; $4c45: $00
	nop                                              ; $4c46: $00
	nop                                              ; $4c47: $00
	nop                                              ; $4c48: $00
	nop                                              ; $4c49: $00
	nop                                              ; $4c4a: $00
	nop                                              ; $4c4b: $00
	nop                                              ; $4c4c: $00
	nop                                              ; $4c4d: $00
	nop                                              ; $4c4e: $00
	nop                                              ; $4c4f: $00
	nop                                              ; $4c50: $00
	nop                                              ; $4c51: $00
	nop                                              ; $4c52: $00
	nop                                              ; $4c53: $00
	add  b                                           ; $4c54: $80
	add  b                                           ; $4c55: $80
	add  b                                           ; $4c56: $80
	add  b                                           ; $4c57: $80
	add  b                                           ; $4c58: $80
	add  b                                           ; $4c59: $80
	ld   b, b                                        ; $4c5a: $40
	ret  nz                                          ; $4c5b: $c0

	jr   nz, jr_027_4c3e                             ; $4c5c: $20 $e0

	jr   nz, jr_027_4c40                             ; $4c5e: $20 $e0

	nop                                              ; $4c60: $00
	nop                                              ; $4c61: $00

jr_027_4c62:
	nop                                              ; $4c62: $00
	nop                                              ; $4c63: $00
	nop                                              ; $4c64: $00
	nop                                              ; $4c65: $00
	nop                                              ; $4c66: $00
	nop                                              ; $4c67: $00
	nop                                              ; $4c68: $00
	nop                                              ; $4c69: $00
	nop                                              ; $4c6a: $00
	nop                                              ; $4c6b: $00
	nop                                              ; $4c6c: $00
	nop                                              ; $4c6d: $00
	ld   bc, $0001                                   ; $4c6e: $01 $01 $00
	nop                                              ; $4c71: $00
	nop                                              ; $4c72: $00
	nop                                              ; $4c73: $00
	nop                                              ; $4c74: $00
	nop                                              ; $4c75: $00
	nop                                              ; $4c76: $00
	nop                                              ; $4c77: $00
	nop                                              ; $4c78: $00
	nop                                              ; $4c79: $00
	nop                                              ; $4c7a: $00
	nop                                              ; $4c7b: $00
	nop                                              ; $4c7c: $00
	nop                                              ; $4c7d: $00
	nop                                              ; $4c7e: $00
	nop                                              ; $4c7f: $00
	nop                                              ; $4c80: $00
	nop                                              ; $4c81: $00
	nop                                              ; $4c82: $00
	nop                                              ; $4c83: $00
	nop                                              ; $4c84: $00
	nop                                              ; $4c85: $00
	nop                                              ; $4c86: $00
	nop                                              ; $4c87: $00
	ld   [hl], b                                     ; $4c88: $70
	ld   [hl], b                                     ; $4c89: $70
	db   $ec                                         ; $4c8a: $ec
	call c, $c6fa                                    ; $4c8b: $dc $fa $c6
	cp   $c2                                         ; $4c8e: $fe $c2
	cp   h                                           ; $4c90: $bc
	ldh  [c], a                                      ; $4c91: $e2
	ld   e, [hl]                                     ; $4c92: $5e
	ld   h, e                                        ; $4c93: $63
	ld   e, c                                        ; $4c94: $59
	halt                                             ; $4c95: $76
	ccf                                              ; $4c96: $3f
	jr   nc, jr_027_4cc0                             ; $4c97: $30 $27

	add  hl, sp                                      ; $4c99: $39
	ld   b, l                                        ; $4c9a: $45
	ld   a, d                                        ; $4c9b: $7a

jr_027_4c9c:
	add  d                                           ; $4c9c: $82
	db   $fd                                         ; $4c9d: $fd

jr_027_4c9e:
	and  $fd                                         ; $4c9e: $e6 $fd
	nop                                              ; $4ca0: $00
	nop                                              ; $4ca1: $00
	nop                                              ; $4ca2: $00
	nop                                              ; $4ca3: $00
	nop                                              ; $4ca4: $00
	nop                                              ; $4ca5: $00
	nop                                              ; $4ca6: $00
	nop                                              ; $4ca7: $00
	nop                                              ; $4ca8: $00
	nop                                              ; $4ca9: $00
	nop                                              ; $4caa: $00
	nop                                              ; $4cab: $00
	nop                                              ; $4cac: $00
	nop                                              ; $4cad: $00
	nop                                              ; $4cae: $00
	nop                                              ; $4caf: $00
	nop                                              ; $4cb0: $00
	nop                                              ; $4cb1: $00
	add  b                                           ; $4cb2: $80
	add  b                                           ; $4cb3: $80
	add  b                                           ; $4cb4: $80
	add  b                                           ; $4cb5: $80
	add  b                                           ; $4cb6: $80
	add  b                                           ; $4cb7: $80
	ld   b, b                                        ; $4cb8: $40
	ret  nz                                          ; $4cb9: $c0

	jr   nz, jr_027_4c9c                             ; $4cba: $20 $e0

	jr   nz, jr_027_4c9e                             ; $4cbc: $20 $e0

	ld   b, b                                        ; $4cbe: $40
	ret  nz                                          ; $4cbf: $c0

jr_027_4cc0:
	nop                                              ; $4cc0: $00
	nop                                              ; $4cc1: $00
	ld   bc, $0301                                   ; $4cc2: $01 $01 $03
	inc  bc                                          ; $4cc5: $03
	inc  bc                                          ; $4cc6: $03
	inc  bc                                          ; $4cc7: $03
	rlca                                             ; $4cc8: $07
	rlca                                             ; $4cc9: $07
	ld   b, $07                                      ; $4cca: $06 $07
	inc  b                                           ; $4ccc: $04
	rlca                                             ; $4ccd: $07
	ld   [bc], a                                     ; $4cce: $02
	inc  bc                                          ; $4ccf: $03
	ld   bc, $1301                                   ; $4cd0: $01 $01 $13
	rra                                              ; $4cd3: $1f
	dec  e                                           ; $4cd4: $1d
	inc  de                                          ; $4cd5: $13
	rra                                              ; $4cd6: $1f
	jr   jr_027_4cee                                 ; $4cd7: $18 $15

	ld   e, $11                                      ; $4cd9: $1e $11
	rra                                              ; $4cdb: $1f
	inc  c                                           ; $4cdc: $0c
	rrca                                             ; $4cdd: $0f
	inc  bc                                          ; $4cde: $03
	inc  bc                                          ; $4cdf: $03
	ret  nz                                          ; $4ce0: $c0

	ret  nz                                          ; $4ce1: $c0

	or   b                                           ; $4ce2: $b0
	ldh  a, [$ec]                                    ; $4ce3: $f0 $ec
	sbc  h                                           ; $4ce5: $9c
	db   $fc                                         ; $4ce6: $fc
	add  h                                           ; $4ce7: $84
	cp   d                                           ; $4ce8: $ba
	add  $7e                                         ; $4ce9: $c6 $7e
	jp   nz, $c27e                                   ; $4ceb: $c2 $7e $c2

jr_027_4cee:
	dec  a                                           ; $4cee: $3d
	db   $e3                                         ; $4cef: $e3
	ld   a, $e3                                      ; $4cf0: $3e $e3
	sbc  c                                           ; $4cf2: $99
	or   $df                                         ; $4cf3: $f6 $df
	ldh  a, [$7f]                                    ; $4cf5: $f0 $7f
	ld   sp, hl                                      ; $4cf7: $f9
	dec  d                                           ; $4cf8: $15
	ld   a, [$fd82]                                  ; $4cf9: $fa $82 $fd
	and  $fd                                         ; $4cfc: $e6 $fd
	rst  $38                                         ; $4cfe: $ff
	rst  $38                                         ; $4cff: $ff
	nop                                              ; $4d00: $00
	nop                                              ; $4d01: $00
	nop                                              ; $4d02: $00
	nop                                              ; $4d03: $00
	nop                                              ; $4d04: $00
	nop                                              ; $4d05: $00
	nop                                              ; $4d06: $00
	nop                                              ; $4d07: $00
	nop                                              ; $4d08: $00
	nop                                              ; $4d09: $00

jr_027_4d0a:
	nop                                              ; $4d0a: $00
	nop                                              ; $4d0b: $00

jr_027_4d0c:
	ld   a, b                                        ; $4d0c: $78
	ld   a, b                                        ; $4d0d: $78
	db   $f4                                         ; $4d0e: $f4
	sbc  h                                           ; $4d0f: $9c
	db   $e4                                         ; $4d10: $e4
	inc  a                                           ; $4d11: $3c
	db   $e4                                         ; $4d12: $e4
	ld   a, h                                        ; $4d13: $7c
	add  sp, -$08                                    ; $4d14: $e8 $f8
	ldh  a, [$f0]                                    ; $4d16: $f0 $f0
	jr   nc, jr_027_4d0a                             ; $4d18: $30 $f0

	jr   nc, jr_027_4d0c                             ; $4d1a: $30 $f0

	ld   h, b                                        ; $4d1c: $60
	ldh  [$c0], a                                    ; $4d1d: $e0 $c0
	ret  nz                                          ; $4d1f: $c0

	nop                                              ; $4d20: $00
	nop                                              ; $4d21: $00
	ld   bc, $0301                                   ; $4d22: $01 $01 $03
	inc  bc                                          ; $4d25: $03
	inc  bc                                          ; $4d26: $03
	inc  bc                                          ; $4d27: $03
	rlca                                             ; $4d28: $07
	rlca                                             ; $4d29: $07
	ld   b, $07                                      ; $4d2a: $06 $07
	inc  b                                           ; $4d2c: $04
	rlca                                             ; $4d2d: $07
	ld   [bc], a                                     ; $4d2e: $02
	inc  bc                                          ; $4d2f: $03
	ld   a, c                                        ; $4d30: $79
	ld   a, c                                        ; $4d31: $79
	rst  $30                                         ; $4d32: $f7
	adc  a                                           ; $4d33: $8f
	db   $fd                                         ; $4d34: $fd
	db   $e3                                         ; $4d35: $e3
	rst  $38                                         ; $4d36: $ff
	ld   hl, sp-$3b                                  ; $4d37: $f8 $c5
	cp   $31                                         ; $4d39: $fe $31
	ccf                                              ; $4d3b: $3f
	inc  c                                           ; $4d3c: $0c
	rrca                                             ; $4d3d: $0f
	inc  bc                                          ; $4d3e: $03
	inc  bc                                          ; $4d3f: $03
	ret  nz                                          ; $4d40: $c0

	ret  nz                                          ; $4d41: $c0

	or   b                                           ; $4d42: $b0
	ldh  a, [$ec]                                    ; $4d43: $f0 $ec
	sbc  h                                           ; $4d45: $9c
	db   $fc                                         ; $4d46: $fc
	add  h                                           ; $4d47: $84
	cp   d                                           ; $4d48: $ba
	add  $7e                                         ; $4d49: $c6 $7e
	jp   nz, $c27e                                   ; $4d4b: $c2 $7e $c2

	dec  a                                           ; $4d4e: $3d
	db   $e3                                         ; $4d4f: $e3
	ld   a, $e3                                      ; $4d50: $3e $e3
	sbc  c                                           ; $4d52: $99
	or   $df                                         ; $4d53: $f6 $df
	ldh  a, [$7f]                                    ; $4d55: $f0 $7f
	ld   sp, hl                                      ; $4d57: $f9
	dec  d                                           ; $4d58: $15
	ld   a, [$fd82]                                  ; $4d59: $fa $82 $fd
	and  $fd                                         ; $4d5c: $e6 $fd
	rst  $38                                         ; $4d5e: $ff
	rst  $38                                         ; $4d5f: $ff
	nop                                              ; $4d60: $00
	nop                                              ; $4d61: $00
	nop                                              ; $4d62: $00
	nop                                              ; $4d63: $00
	nop                                              ; $4d64: $00
	nop                                              ; $4d65: $00
	nop                                              ; $4d66: $00
	nop                                              ; $4d67: $00
	ld   a, $3e                                      ; $4d68: $3e $3e

jr_027_4d6a:
	ld   a, [hl]                                     ; $4d6a: $7e
	ld   b, [hl]                                     ; $4d6b: $46

jr_027_4d6c:
	ld   a, [$728e]                                  ; $4d6c: $fa $8e $72
	sbc  [hl]                                        ; $4d6f: $9e
	ldh  [c], a                                      ; $4d70: $e2
	ld   a, $e2                                      ; $4d71: $3e $e2
	ld   a, [hl]                                     ; $4d73: $7e
	db   $e4                                         ; $4d74: $e4
	db   $fc                                         ; $4d75: $fc
	add  sp, -$08                                    ; $4d76: $e8 $f8
	jr   nc, jr_027_4d6a                             ; $4d78: $30 $f0

	jr   nc, jr_027_4d6c                             ; $4d7a: $30 $f0

	ld   h, b                                        ; $4d7c: $60
	ldh  [$c0], a                                    ; $4d7d: $e0 $c0
	ret  nz                                          ; $4d7f: $c0

	nop                                              ; $4d80: $00
	nop                                              ; $4d81: $00
	nop                                              ; $4d82: $00
	nop                                              ; $4d83: $00
	nop                                              ; $4d84: $00
	nop                                              ; $4d85: $00
	nop                                              ; $4d86: $00
	nop                                              ; $4d87: $00
	nop                                              ; $4d88: $00
	nop                                              ; $4d89: $00
	nop                                              ; $4d8a: $00
	ld   bc, $0300                                   ; $4d8b: $01 $00 $03
	nop                                              ; $4d8e: $00
	ld   bc, $0000                                   ; $4d8f: $01 $00 $00
	ld   [hl], b                                     ; $4d92: $70
	ld   [$021c], sp                                 ; $4d93: $08 $1c $02
	rlca                                             ; $4d96: $07
	nop                                              ; $4d97: $00
	ld   bc, $003a                                   ; $4d98: $01 $3a $00
	ld   c, $00                                      ; $4d9b: $0e $00
	inc  bc                                          ; $4d9d: $03
	nop                                              ; $4d9e: $00
	nop                                              ; $4d9f: $00
	nop                                              ; $4da0: $00
	nop                                              ; $4da1: $00
	nop                                              ; $4da2: $00
	ld   b, b                                        ; $4da3: $40
	ld   h, b                                        ; $4da4: $60
	db   $10                                         ; $4da5: $10
	ld   a, b                                        ; $4da6: $78
	nop                                              ; $4da7: $00
	jr   c, jr_027_4dee                              ; $4da8: $38 $44

	inc  a                                           ; $4daa: $3c
	add  b                                           ; $4dab: $80
	inc  a                                           ; $4dac: $3c
	add  b                                           ; $4dad: $80
	inc  e                                           ; $4dae: $1c
	jp   nz, $c11c                                   ; $4daf: $c2 $1c $c1

	add  hl, bc                                      ; $4db2: $09
	ld   h, [hl]                                     ; $4db3: $66
	rrca                                             ; $4db4: $0f
	jr   nz, jr_027_4dbd                             ; $4db5: $20 $06

	add  b                                           ; $4db7: $80
	dec  b                                           ; $4db8: $05
	ld   [$7d02], a                                  ; $4db9: $ea $02 $7d
	ld   [bc], a                                     ; $4dbc: $02

jr_027_4dbd:
	add  hl, de                                      ; $4dbd: $19
	nop                                              ; $4dbe: $00
	nop                                              ; $4dbf: $00
	nop                                              ; $4dc0: $00
	nop                                              ; $4dc1: $00
	nop                                              ; $4dc2: $00
	nop                                              ; $4dc3: $00
	nop                                              ; $4dc4: $00
	nop                                              ; $4dc5: $00
	nop                                              ; $4dc6: $00
	nop                                              ; $4dc7: $00
	nop                                              ; $4dc8: $00
	nop                                              ; $4dc9: $00
	jr   c, jr_027_4dcc                              ; $4dca: $38 $00

jr_027_4dcc:
	ld   [hl], b                                     ; $4dcc: $70
	inc  b                                           ; $4dcd: $04
	ld   h, b                                        ; $4dce: $60
	adc  h                                           ; $4dcf: $8c
	ret  nz                                          ; $4dd0: $c0

	inc  e                                           ; $4dd1: $1c
	add  b                                           ; $4dd2: $80
	inc  e                                           ; $4dd3: $1c
	nop                                              ; $4dd4: $00
	jr   jr_027_4dd7                                 ; $4dd5: $18 $00

jr_027_4dd7:
	stop                                             ; $4dd7: $10 $00
	ret  nz                                          ; $4dd9: $c0

	nop                                              ; $4dda: $00
	ret  nz                                          ; $4ddb: $c0

	nop                                              ; $4ddc: $00
	add  b                                           ; $4ddd: $80
	nop                                              ; $4dde: $00
	nop                                              ; $4ddf: $00
	nop                                              ; $4de0: $00
	nop                                              ; $4de1: $00
	nop                                              ; $4de2: $00
	nop                                              ; $4de3: $00
	nop                                              ; $4de4: $00
	nop                                              ; $4de5: $00
	nop                                              ; $4de6: $00
	nop                                              ; $4de7: $00
	nop                                              ; $4de8: $00
	nop                                              ; $4de9: $00
	nop                                              ; $4dea: $00
	nop                                              ; $4deb: $00
	nop                                              ; $4dec: $00
	nop                                              ; $4ded: $00

jr_027_4dee:
	nop                                              ; $4dee: $00
	nop                                              ; $4def: $00
	nop                                              ; $4df0: $00
	nop                                              ; $4df1: $00
	jr   nz, jr_027_4e44                             ; $4df2: $20 $50

	ld   [$0214], sp                                 ; $4df4: $08 $14 $02
	dec  b                                           ; $4df7: $05
	ld   bc, $0000                                   ; $4df8: $01 $00 $00
	nop                                              ; $4dfb: $00
	nop                                              ; $4dfc: $00
	nop                                              ; $4dfd: $00
	nop                                              ; $4dfe: $00
	nop                                              ; $4dff: $00
	nop                                              ; $4e00: $00
	nop                                              ; $4e01: $00
	nop                                              ; $4e02: $00
	nop                                              ; $4e03: $00
	nop                                              ; $4e04: $00
	ld   b, b                                        ; $4e05: $40
	nop                                              ; $4e06: $00
	jr   z, jr_027_4e19                              ; $4e07: $28 $10

	nop                                              ; $4e09: $00
	jr   z, jr_027_4e0c                              ; $4e0a: $28 $00

jr_027_4e0c:
	db   $10                                         ; $4e0c: $10
	inc  b                                           ; $4e0d: $04
	ld   [$1400], sp                                 ; $4e0e: $08 $00 $14
	nop                                              ; $4e11: $00
	ld   [$0500], sp                                 ; $4e12: $08 $00 $05
	nop                                              ; $4e15: $00
	ld   [bc], a                                     ; $4e16: $02
	nop                                              ; $4e17: $00
	dec  b                                           ; $4e18: $05

jr_027_4e19:
	nop                                              ; $4e19: $00
	ld   [bc], a                                     ; $4e1a: $02
	nop                                              ; $4e1b: $00
	ld   [bc], a                                     ; $4e1c: $02
	nop                                              ; $4e1d: $00
	nop                                              ; $4e1e: $00
	nop                                              ; $4e1f: $00
	nop                                              ; $4e20: $00
	nop                                              ; $4e21: $00
	nop                                              ; $4e22: $00
	nop                                              ; $4e23: $00
	nop                                              ; $4e24: $00
	nop                                              ; $4e25: $00
	nop                                              ; $4e26: $00
	nop                                              ; $4e27: $00
	nop                                              ; $4e28: $00
	nop                                              ; $4e29: $00
	nop                                              ; $4e2a: $00
	jr   z, jr_027_4e3d                              ; $4e2b: $28 $10

	ld   b, b                                        ; $4e2d: $40
	jr   nz, jr_027_4e30                             ; $4e2e: $20 $00

jr_027_4e30:
	ld   b, b                                        ; $4e30: $40
	nop                                              ; $4e31: $00
	add  b                                           ; $4e32: $80
	nop                                              ; $4e33: $00
	nop                                              ; $4e34: $00
	nop                                              ; $4e35: $00
	nop                                              ; $4e36: $00
	nop                                              ; $4e37: $00
	nop                                              ; $4e38: $00
	nop                                              ; $4e39: $00
	nop                                              ; $4e3a: $00
	nop                                              ; $4e3b: $00
	nop                                              ; $4e3c: $00

jr_027_4e3d:
	nop                                              ; $4e3d: $00
	nop                                              ; $4e3e: $00
	nop                                              ; $4e3f: $00
	nop                                              ; $4e40: $00
	nop                                              ; $4e41: $00
	nop                                              ; $4e42: $00
	nop                                              ; $4e43: $00

jr_027_4e44:
	jr   nc, jr_027_4e46                             ; $4e44: $30 $00

jr_027_4e46:
	ld   [$84c0], sp                                 ; $4e46: $08 $c0 $84
	ld   b, b                                        ; $4e49: $40
	call nz, $ec20                                   ; $4e4a: $c4 $20 $ec
	db   $10                                         ; $4e4d: $10
	db   $e4                                         ; $4e4e: $e4
	ld   a, [de]                                     ; $4e4f: $1a
	db   $e4                                         ; $4e50: $e4
	ld   a, [de]                                     ; $4e51: $1a
	db   $e4                                         ; $4e52: $e4
	ld   a, [de]                                     ; $4e53: $1a
	db   $ec                                         ; $4e54: $ec
	db   $10                                         ; $4e55: $10
	call nz, $8420                                   ; $4e56: $c4 $20 $84
	ld   b, b                                        ; $4e59: $40
	ld   [$30c0], sp                                 ; $4e5a: $08 $c0 $30
	nop                                              ; $4e5d: $00
	nop                                              ; $4e5e: $00
	nop                                              ; $4e5f: $00
	nop                                              ; $4e60: $00
	nop                                              ; $4e61: $00
	add  b                                           ; $4e62: $80
	nop                                              ; $4e63: $00
	nop                                              ; $4e64: $00
	ld   b, b                                        ; $4e65: $40
	nop                                              ; $4e66: $00
	nop                                              ; $4e67: $00
	nop                                              ; $4e68: $00
	nop                                              ; $4e69: $00
	nop                                              ; $4e6a: $00
	nop                                              ; $4e6b: $00
	nop                                              ; $4e6c: $00
	db   $10                                         ; $4e6d: $10
	db   $10                                         ; $4e6e: $10
	jr   nz, jr_027_4ea1                             ; $4e6f: $20 $30

	ld   b, b                                        ; $4e71: $40
	db   $10                                         ; $4e72: $10
	jr   nz, jr_027_4e75                             ; $4e73: $20 $00

jr_027_4e75:
	stop                                             ; $4e75: $10 $00
	stop                                             ; $4e77: $10 $00
	nop                                              ; $4e79: $00
	nop                                              ; $4e7a: $00
	nop                                              ; $4e7b: $00
	nop                                              ; $4e7c: $00
	nop                                              ; $4e7d: $00
	nop                                              ; $4e7e: $00
	db   $10                                         ; $4e7f: $10
	inc  c                                           ; $4e80: $0c
	ld   [de], a                                     ; $4e81: $12
	ld   a, [hl]                                     ; $4e82: $7e
	add  c                                           ; $4e83: $81
	inc  e                                           ; $4e84: $1c
	ld   [bc], a                                     ; $4e85: $02
	stop                                             ; $4e86: $10 $00
	nop                                              ; $4e88: $00
	stop                                             ; $4e89: $10 $00
	stop                                             ; $4e8b: $10 $00
	stop                                             ; $4e8d: $10 $00
	nop                                              ; $4e8f: $00
	nop                                              ; $4e90: $00
	nop                                              ; $4e91: $00
	nop                                              ; $4e92: $00
	jr   nz, jr_027_4e95                             ; $4e93: $20 $00

jr_027_4e95:
	jr   nz, jr_027_4e97                             ; $4e95: $20 $00

jr_027_4e97:
	nop                                              ; $4e97: $00
	nop                                              ; $4e98: $00
	nop                                              ; $4e99: $00
	nop                                              ; $4e9a: $00
	ld   b, b                                        ; $4e9b: $40
	nop                                              ; $4e9c: $00
	add  b                                           ; $4e9d: $80
	nop                                              ; $4e9e: $00
	nop                                              ; $4e9f: $00
	nop                                              ; $4ea0: $00

jr_027_4ea1:
	nop                                              ; $4ea1: $00
	nop                                              ; $4ea2: $00
	nop                                              ; $4ea3: $00
	nop                                              ; $4ea4: $00
	nop                                              ; $4ea5: $00
	rrca                                             ; $4ea6: $0f
	nop                                              ; $4ea7: $00
	rra                                              ; $4ea8: $1f
	nop                                              ; $4ea9: $00
	rra                                              ; $4eaa: $1f
	nop                                              ; $4eab: $00
	ccf                                              ; $4eac: $3f
	nop                                              ; $4ead: $00
	ccf                                              ; $4eae: $3f
	nop                                              ; $4eaf: $00
	ccf                                              ; $4eb0: $3f
	nop                                              ; $4eb1: $00
	ccf                                              ; $4eb2: $3f
	nop                                              ; $4eb3: $00
	ccf                                              ; $4eb4: $3f
	nop                                              ; $4eb5: $00
	rra                                              ; $4eb6: $1f
	nop                                              ; $4eb7: $00
	rra                                              ; $4eb8: $1f
	nop                                              ; $4eb9: $00
	rrca                                             ; $4eba: $0f
	nop                                              ; $4ebb: $00
	nop                                              ; $4ebc: $00
	nop                                              ; $4ebd: $00
	nop                                              ; $4ebe: $00
	nop                                              ; $4ebf: $00
	nop                                              ; $4ec0: $00
	nop                                              ; $4ec1: $00
	nop                                              ; $4ec2: $00
	nop                                              ; $4ec3: $00
	nop                                              ; $4ec4: $00
	nop                                              ; $4ec5: $00
	nop                                              ; $4ec6: $00
	nop                                              ; $4ec7: $00
	nop                                              ; $4ec8: $00
	nop                                              ; $4ec9: $00
	nop                                              ; $4eca: $00
	nop                                              ; $4ecb: $00
	nop                                              ; $4ecc: $00
	nop                                              ; $4ecd: $00
	nop                                              ; $4ece: $00
	nop                                              ; $4ecf: $00
	nop                                              ; $4ed0: $00
	nop                                              ; $4ed1: $00
	nop                                              ; $4ed2: $00
	nop                                              ; $4ed3: $00
	nop                                              ; $4ed4: $00
	nop                                              ; $4ed5: $00
	nop                                              ; $4ed6: $00
	nop                                              ; $4ed7: $00
	nop                                              ; $4ed8: $00
	nop                                              ; $4ed9: $00
	nop                                              ; $4eda: $00
	nop                                              ; $4edb: $00
	nop                                              ; $4edc: $00
	nop                                              ; $4edd: $00
	nop                                              ; $4ede: $00
	nop                                              ; $4edf: $00
	nop                                              ; $4ee0: $00
	nop                                              ; $4ee1: $00
	nop                                              ; $4ee2: $00
	nop                                              ; $4ee3: $00
	nop                                              ; $4ee4: $00
	nop                                              ; $4ee5: $00
	nop                                              ; $4ee6: $00
	nop                                              ; $4ee7: $00
	nop                                              ; $4ee8: $00
	nop                                              ; $4ee9: $00
	nop                                              ; $4eea: $00
	nop                                              ; $4eeb: $00
	nop                                              ; $4eec: $00
	nop                                              ; $4eed: $00
	nop                                              ; $4eee: $00
	nop                                              ; $4eef: $00
	nop                                              ; $4ef0: $00
	nop                                              ; $4ef1: $00
	nop                                              ; $4ef2: $00
	nop                                              ; $4ef3: $00
	nop                                              ; $4ef4: $00
	nop                                              ; $4ef5: $00
	nop                                              ; $4ef6: $00
	nop                                              ; $4ef7: $00
	nop                                              ; $4ef8: $00
	nop                                              ; $4ef9: $00
	nop                                              ; $4efa: $00
	nop                                              ; $4efb: $00
	nop                                              ; $4efc: $00
	nop                                              ; $4efd: $00
	nop                                              ; $4efe: $00
	nop                                              ; $4eff: $00
	nop                                              ; $4f00: $00
	nop                                              ; $4f01: $00
	nop                                              ; $4f02: $00
	nop                                              ; $4f03: $00
	inc  bc                                          ; $4f04: $03
	inc  bc                                          ; $4f05: $03
	inc  b                                           ; $4f06: $04
	rlca                                             ; $4f07: $07
	ld   [$090f], sp                                 ; $4f08: $08 $0f $09
	rrca                                             ; $4f0b: $0f
	ld   de, $221f                                   ; $4f0c: $11 $1f $22
	ccf                                              ; $4f0f: $3f
	ld   b, d                                        ; $4f10: $42
	ld   a, a                                        ; $4f11: $7f
	ld   b, a                                        ; $4f12: $47
	ld   a, l                                        ; $4f13: $7d
	ld   b, a                                        ; $4f14: $47
	ld   a, l                                        ; $4f15: $7d
	ld   b, a                                        ; $4f16: $47
	ld   a, l                                        ; $4f17: $7d
	ld   b, a                                        ; $4f18: $47
	ld   a, [hl]                                     ; $4f19: $7e
	daa                                              ; $4f1a: $27
	inc  a                                           ; $4f1b: $3c
	rla                                              ; $4f1c: $17
	inc  e                                           ; $4f1d: $1c
	dec  bc                                          ; $4f1e: $0b
	ld   c, $00                                      ; $4f1f: $0e $00
	nop                                              ; $4f21: $00
	ld   hl, sp-$08                                  ; $4f22: $f8 $f8
	rlca                                             ; $4f24: $07
	rst  $38                                         ; $4f25: $ff
	nop                                              ; $4f26: $00
	rst  $38                                         ; $4f27: $ff
	nop                                              ; $4f28: $00
	rst  $38                                         ; $4f29: $ff

jr_027_4f2a:
	nop                                              ; $4f2a: $00
	rst  $38                                         ; $4f2b: $ff
	ld   hl, $11ff                                   ; $4f2c: $21 $ff $11
	rst  $38                                         ; $4f2f: $ff
	ld   [$04ff], sp                                 ; $4f30: $08 $ff $04
	rst  $38                                         ; $4f33: $ff
	inc  b                                           ; $4f34: $04
	rst  $38                                         ; $4f35: $ff
	add  h                                           ; $4f36: $84
	rst  $38                                         ; $4f37: $ff
	adc  b                                           ; $4f38: $88
	rst  $38                                         ; $4f39: $ff
	adc  l                                           ; $4f3a: $8d
	rst  $38                                         ; $4f3b: $ff
	sbc  l                                           ; $4f3c: $9d
	rst  $30                                         ; $4f3d: $f7
	cp   [hl]                                        ; $4f3e: $be
	rst  $20                                         ; $4f3f: $e7
	nop                                              ; $4f40: $00
	nop                                              ; $4f41: $00
	nop                                              ; $4f42: $00
	nop                                              ; $4f43: $00
	nop                                              ; $4f44: $00
	nop                                              ; $4f45: $00
	ret  nz                                          ; $4f46: $c0

	ret  nz                                          ; $4f47: $c0

	jr   nz, jr_027_4f2a                             ; $4f48: $20 $e0

	db   $10                                         ; $4f4a: $10
	ldh  a, [$08]                                    ; $4f4b: $f0 $08
	ld   hl, sp+$08                                  ; $4f4d: $f8 $08
	ld   hl, sp-$78                                  ; $4f4f: $f8 $88
	ld   hl, sp-$78                                  ; $4f51: $f8 $88
	ld   hl, sp-$78                                  ; $4f53: $f8 $88
	ld   hl, sp-$70                                  ; $4f55: $f8 $90
	ldh  a, [$90]                                    ; $4f57: $f0 $90
	ldh  a, [rAUD4LEN]                               ; $4f59: $f0 $20
	ldh  [rAUD4LEN], a                               ; $4f5b: $e0 $20
	ldh  [rLCDC], a                                  ; $4f5d: $e0 $40
	ret  nz                                          ; $4f5f: $c0

	nop                                              ; $4f60: $00
	nop                                              ; $4f61: $00
	nop                                              ; $4f62: $00
	nop                                              ; $4f63: $00
	inc  bc                                          ; $4f64: $03
	inc  bc                                          ; $4f65: $03
	inc  b                                           ; $4f66: $04
	rlca                                             ; $4f67: $07
	ld   [$310f], sp                                 ; $4f68: $08 $0f $31
	ccf                                              ; $4f6b: $3f
	ld   b, c                                        ; $4f6c: $41
	ld   a, a                                        ; $4f6d: $7f
	sub  d                                           ; $4f6e: $92
	rst  $38                                         ; $4f6f: $ff
	and  d                                           ; $4f70: $a2
	rst  $38                                         ; $4f71: $ff
	rst  ToBoot                                         ; $4f72: $c7
	db   $fd                                         ; $4f73: $fd
	ld   b, a                                        ; $4f74: $47
	ld   a, l                                        ; $4f75: $7d
	ld   b, a                                        ; $4f76: $47
	ld   a, l                                        ; $4f77: $7d
	ld   b, a                                        ; $4f78: $47
	ld   a, [hl]                                     ; $4f79: $7e
	daa                                              ; $4f7a: $27
	inc  a                                           ; $4f7b: $3c
	rla                                              ; $4f7c: $17
	inc  e                                           ; $4f7d: $1c
	dec  bc                                          ; $4f7e: $0b
	ld   c, $00                                      ; $4f7f: $0e $00
	nop                                              ; $4f81: $00
	ld   hl, sp-$08                                  ; $4f82: $f8 $f8
	rlca                                             ; $4f84: $07
	rst  $38                                         ; $4f85: $ff
	nop                                              ; $4f86: $00
	rst  $38                                         ; $4f87: $ff
	nop                                              ; $4f88: $00
	rst  $38                                         ; $4f89: $ff
	nop                                              ; $4f8a: $00
	rst  $38                                         ; $4f8b: $ff
	ld   sp, $09ff                                   ; $4f8c: $31 $ff $09
	rst  $38                                         ; $4f8f: $ff
	inc  b                                           ; $4f90: $04
	rst  $38                                         ; $4f91: $ff
	inc  b                                           ; $4f92: $04
	rst  $38                                         ; $4f93: $ff
	inc  b                                           ; $4f94: $04
	rst  $38                                         ; $4f95: $ff
	add  h                                           ; $4f96: $84
	rst  $38                                         ; $4f97: $ff
	adc  b                                           ; $4f98: $88
	rst  $38                                         ; $4f99: $ff

jr_027_4f9a:
	adc  l                                           ; $4f9a: $8d
	rst  $38                                         ; $4f9b: $ff
	sbc  l                                           ; $4f9c: $9d
	rst  $30                                         ; $4f9d: $f7
	cp   [hl]                                        ; $4f9e: $be
	rst  $20                                         ; $4f9f: $e7
	nop                                              ; $4fa0: $00
	nop                                              ; $4fa1: $00
	nop                                              ; $4fa2: $00
	nop                                              ; $4fa3: $00
	nop                                              ; $4fa4: $00
	nop                                              ; $4fa5: $00
	ret  nz                                          ; $4fa6: $c0

	ret  nz                                          ; $4fa7: $c0

	jr   nc, jr_027_4f9a                             ; $4fa8: $30 $f0

	ld   [$24f8], sp                                 ; $4faa: $08 $f8 $24
	db   $fc                                         ; $4fad: $fc
	inc  d                                           ; $4fae: $14
	db   $fc                                         ; $4faf: $fc
	sub  h                                           ; $4fb0: $94
	db   $fc                                         ; $4fb1: $fc
	adc  h                                           ; $4fb2: $8c
	db   $fc                                         ; $4fb3: $fc
	adc  h                                           ; $4fb4: $8c
	db   $fc                                         ; $4fb5: $fc
	xor  b                                           ; $4fb6: $a8
	ld   hl, sp-$58                                  ; $4fb7: $f8 $a8
	ld   hl, sp+$30                                  ; $4fb9: $f8 $30
	ldh  a, [rAUD4LEN]                               ; $4fbb: $f0 $20
	ldh  [rLCDC], a                                  ; $4fbd: $e0 $40
	ret  nz                                          ; $4fbf: $c0

	nop                                              ; $4fc0: $00
	nop                                              ; $4fc1: $00
	nop                                              ; $4fc2: $00
	nop                                              ; $4fc3: $00
	nop                                              ; $4fc4: $00
	nop                                              ; $4fc5: $00
	nop                                              ; $4fc6: $00
	nop                                              ; $4fc7: $00
	nop                                              ; $4fc8: $00
	nop                                              ; $4fc9: $00
	nop                                              ; $4fca: $00
	nop                                              ; $4fcb: $00
	nop                                              ; $4fcc: $00
	nop                                              ; $4fcd: $00
	nop                                              ; $4fce: $00
	nop                                              ; $4fcf: $00
	nop                                              ; $4fd0: $00
	nop                                              ; $4fd1: $00
	nop                                              ; $4fd2: $00
	nop                                              ; $4fd3: $00
	nop                                              ; $4fd4: $00
	nop                                              ; $4fd5: $00
	nop                                              ; $4fd6: $00
	nop                                              ; $4fd7: $00
	nop                                              ; $4fd8: $00
	nop                                              ; $4fd9: $00
	nop                                              ; $4fda: $00
	nop                                              ; $4fdb: $00
	nop                                              ; $4fdc: $00
	nop                                              ; $4fdd: $00
	nop                                              ; $4fde: $00
	nop                                              ; $4fdf: $00
	nop                                              ; $4fe0: $00
	nop                                              ; $4fe1: $00
	nop                                              ; $4fe2: $00
	nop                                              ; $4fe3: $00
	nop                                              ; $4fe4: $00
	nop                                              ; $4fe5: $00
	nop                                              ; $4fe6: $00
	nop                                              ; $4fe7: $00
	nop                                              ; $4fe8: $00
	nop                                              ; $4fe9: $00
	nop                                              ; $4fea: $00
	nop                                              ; $4feb: $00
	nop                                              ; $4fec: $00
	nop                                              ; $4fed: $00
	nop                                              ; $4fee: $00
	nop                                              ; $4fef: $00
	nop                                              ; $4ff0: $00
	nop                                              ; $4ff1: $00
	nop                                              ; $4ff2: $00
	nop                                              ; $4ff3: $00
	nop                                              ; $4ff4: $00
	nop                                              ; $4ff5: $00
	nop                                              ; $4ff6: $00
	nop                                              ; $4ff7: $00
	nop                                              ; $4ff8: $00
	nop                                              ; $4ff9: $00
	nop                                              ; $4ffa: $00
	nop                                              ; $4ffb: $00
	nop                                              ; $4ffc: $00
	nop                                              ; $4ffd: $00
	nop                                              ; $4ffe: $00
	nop                                              ; $4fff: $00
	nop                                              ; $5000: $00
	nop                                              ; $5001: $00
	nop                                              ; $5002: $00
	nop                                              ; $5003: $00
	nop                                              ; $5004: $00
	nop                                              ; $5005: $00
	nop                                              ; $5006: $00
	nop                                              ; $5007: $00
	nop                                              ; $5008: $00
	nop                                              ; $5009: $00
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
	nop                                              ; $5020: $00
	nop                                              ; $5021: $00
	nop                                              ; $5022: $00
	nop                                              ; $5023: $00
	nop                                              ; $5024: $00
	nop                                              ; $5025: $00
	nop                                              ; $5026: $00
	nop                                              ; $5027: $00
	nop                                              ; $5028: $00
	nop                                              ; $5029: $00
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
	nop                                              ; $5040: $00
	nop                                              ; $5041: $00
	nop                                              ; $5042: $00
	nop                                              ; $5043: $00
	nop                                              ; $5044: $00
	nop                                              ; $5045: $00
	nop                                              ; $5046: $00
	nop                                              ; $5047: $00
	nop                                              ; $5048: $00
	nop                                              ; $5049: $00
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
	nop                                              ; $5060: $00
	nop                                              ; $5061: $00
	nop                                              ; $5062: $00
	nop                                              ; $5063: $00
	nop                                              ; $5064: $00
	nop                                              ; $5065: $00
	nop                                              ; $5066: $00
	nop                                              ; $5067: $00
	nop                                              ; $5068: $00
	nop                                              ; $5069: $00
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
	nop                                              ; $5080: $00
	nop                                              ; $5081: $00
	nop                                              ; $5082: $00
	nop                                              ; $5083: $00
	nop                                              ; $5084: $00
	nop                                              ; $5085: $00
	nop                                              ; $5086: $00
	nop                                              ; $5087: $00
	nop                                              ; $5088: $00
	nop                                              ; $5089: $00
	nop                                              ; $508a: $00
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
	nop                                              ; $50a0: $00
	nop                                              ; $50a1: $00
	nop                                              ; $50a2: $00
	nop                                              ; $50a3: $00
	nop                                              ; $50a4: $00
	nop                                              ; $50a5: $00
	nop                                              ; $50a6: $00
	nop                                              ; $50a7: $00
	nop                                              ; $50a8: $00
	nop                                              ; $50a9: $00
	nop                                              ; $50aa: $00
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
	nop                                              ; $50c0: $00
	nop                                              ; $50c1: $00
	nop                                              ; $50c2: $00
	nop                                              ; $50c3: $00
	nop                                              ; $50c4: $00
	nop                                              ; $50c5: $00
	nop                                              ; $50c6: $00
	nop                                              ; $50c7: $00
	nop                                              ; $50c8: $00
	nop                                              ; $50c9: $00
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
	nop                                              ; $50e0: $00
	nop                                              ; $50e1: $00
	nop                                              ; $50e2: $00
	nop                                              ; $50e3: $00
	nop                                              ; $50e4: $00
	nop                                              ; $50e5: $00
	nop                                              ; $50e6: $00
	nop                                              ; $50e7: $00
	nop                                              ; $50e8: $00
	nop                                              ; $50e9: $00
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
	nop                                              ; $5100: $00
	nop                                              ; $5101: $00
	nop                                              ; $5102: $00
	nop                                              ; $5103: $00
	nop                                              ; $5104: $00
	nop                                              ; $5105: $00
	nop                                              ; $5106: $00
	nop                                              ; $5107: $00
	nop                                              ; $5108: $00
	nop                                              ; $5109: $00
	nop                                              ; $510a: $00
	nop                                              ; $510b: $00
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
	nop                                              ; $5120: $00
	nop                                              ; $5121: $00
	nop                                              ; $5122: $00
	nop                                              ; $5123: $00
	nop                                              ; $5124: $00
	nop                                              ; $5125: $00
	nop                                              ; $5126: $00
	nop                                              ; $5127: $00
	nop                                              ; $5128: $00
	nop                                              ; $5129: $00
	nop                                              ; $512a: $00
	nop                                              ; $512b: $00
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
	nop                                              ; $5140: $00
	nop                                              ; $5141: $00
	nop                                              ; $5142: $00
	nop                                              ; $5143: $00
	nop                                              ; $5144: $00
	nop                                              ; $5145: $00
	nop                                              ; $5146: $00
	nop                                              ; $5147: $00
	nop                                              ; $5148: $00
	nop                                              ; $5149: $00
	nop                                              ; $514a: $00
	nop                                              ; $514b: $00
	nop                                              ; $514c: $00
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
	nop                                              ; $5160: $00
	nop                                              ; $5161: $00
	nop                                              ; $5162: $00
	nop                                              ; $5163: $00
	nop                                              ; $5164: $00
	nop                                              ; $5165: $00
	nop                                              ; $5166: $00
	nop                                              ; $5167: $00
	nop                                              ; $5168: $00
	nop                                              ; $5169: $00
	nop                                              ; $516a: $00
	nop                                              ; $516b: $00
	nop                                              ; $516c: $00
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
	nop                                              ; $5180: $00
	nop                                              ; $5181: $00
	nop                                              ; $5182: $00
	nop                                              ; $5183: $00
	nop                                              ; $5184: $00
	nop                                              ; $5185: $00
	nop                                              ; $5186: $00
	nop                                              ; $5187: $00
	nop                                              ; $5188: $00
	nop                                              ; $5189: $00
	nop                                              ; $518a: $00
	nop                                              ; $518b: $00
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
	nop                                              ; $51a0: $00
	nop                                              ; $51a1: $00
	nop                                              ; $51a2: $00
	nop                                              ; $51a3: $00
	nop                                              ; $51a4: $00
	nop                                              ; $51a5: $00
	nop                                              ; $51a6: $00
	nop                                              ; $51a7: $00
	nop                                              ; $51a8: $00
	nop                                              ; $51a9: $00
	nop                                              ; $51aa: $00
	nop                                              ; $51ab: $00
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
	nop                                              ; $51c0: $00
	nop                                              ; $51c1: $00
	nop                                              ; $51c2: $00
	nop                                              ; $51c3: $00
	nop                                              ; $51c4: $00
	nop                                              ; $51c5: $00
	nop                                              ; $51c6: $00
	nop                                              ; $51c7: $00
	nop                                              ; $51c8: $00
	nop                                              ; $51c9: $00
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
	nop                                              ; $51e0: $00
	nop                                              ; $51e1: $00
	nop                                              ; $51e2: $00
	nop                                              ; $51e3: $00
	nop                                              ; $51e4: $00
	nop                                              ; $51e5: $00
	nop                                              ; $51e6: $00
	nop                                              ; $51e7: $00
	nop                                              ; $51e8: $00
	nop                                              ; $51e9: $00
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
	nop                                              ; $5200: $00
	nop                                              ; $5201: $00
	nop                                              ; $5202: $00
	nop                                              ; $5203: $00
	nop                                              ; $5204: $00
	nop                                              ; $5205: $00
	nop                                              ; $5206: $00
	nop                                              ; $5207: $00
	nop                                              ; $5208: $00
	nop                                              ; $5209: $00
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
	nop                                              ; $5220: $00
	nop                                              ; $5221: $00
	nop                                              ; $5222: $00
	nop                                              ; $5223: $00
	nop                                              ; $5224: $00
	nop                                              ; $5225: $00
	nop                                              ; $5226: $00
	nop                                              ; $5227: $00
	nop                                              ; $5228: $00
	nop                                              ; $5229: $00
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
	nop                                              ; $5400: $00
	nop                                              ; $5401: $00
	nop                                              ; $5402: $00
	nop                                              ; $5403: $00
	nop                                              ; $5404: $00
	nop                                              ; $5405: $00
	nop                                              ; $5406: $00
	nop                                              ; $5407: $00
	nop                                              ; $5408: $00
	nop                                              ; $5409: $00
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
	nop                                              ; $5420: $00
	nop                                              ; $5421: $00
	nop                                              ; $5422: $00
	nop                                              ; $5423: $00
	nop                                              ; $5424: $00
	nop                                              ; $5425: $00
	nop                                              ; $5426: $00
	nop                                              ; $5427: $00
	nop                                              ; $5428: $00
	nop                                              ; $5429: $00
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
	nop                                              ; $5440: $00
	nop                                              ; $5441: $00
	nop                                              ; $5442: $00
	nop                                              ; $5443: $00
	nop                                              ; $5444: $00
	nop                                              ; $5445: $00
	nop                                              ; $5446: $00
	nop                                              ; $5447: $00
	nop                                              ; $5448: $00
	nop                                              ; $5449: $00
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
	nop                                              ; $5460: $00
	nop                                              ; $5461: $00
	nop                                              ; $5462: $00
	nop                                              ; $5463: $00
	nop                                              ; $5464: $00
	nop                                              ; $5465: $00
	nop                                              ; $5466: $00
	nop                                              ; $5467: $00
	nop                                              ; $5468: $00
	nop                                              ; $5469: $00
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
	nop                                              ; $5480: $00
	nop                                              ; $5481: $00
	nop                                              ; $5482: $00
	nop                                              ; $5483: $00
	nop                                              ; $5484: $00
	nop                                              ; $5485: $00
	nop                                              ; $5486: $00
	nop                                              ; $5487: $00
	nop                                              ; $5488: $00
	nop                                              ; $5489: $00
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
	nop                                              ; $54a0: $00
	nop                                              ; $54a1: $00
	nop                                              ; $54a2: $00
	nop                                              ; $54a3: $00
	nop                                              ; $54a4: $00
	nop                                              ; $54a5: $00
	nop                                              ; $54a6: $00
	nop                                              ; $54a7: $00
	nop                                              ; $54a8: $00
	nop                                              ; $54a9: $00
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
	nop                                              ; $54c0: $00
	nop                                              ; $54c1: $00
	nop                                              ; $54c2: $00
	nop                                              ; $54c3: $00
	nop                                              ; $54c4: $00
	nop                                              ; $54c5: $00
	nop                                              ; $54c6: $00
	nop                                              ; $54c7: $00
	nop                                              ; $54c8: $00
	nop                                              ; $54c9: $00
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
	nop                                              ; $54e0: $00
	nop                                              ; $54e1: $00
	nop                                              ; $54e2: $00
	nop                                              ; $54e3: $00
	nop                                              ; $54e4: $00
	nop                                              ; $54e5: $00
	nop                                              ; $54e6: $00
	nop                                              ; $54e7: $00
	nop                                              ; $54e8: $00
	nop                                              ; $54e9: $00
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
	nop                                              ; $5500: $00
	nop                                              ; $5501: $00
	nop                                              ; $5502: $00
	nop                                              ; $5503: $00
	nop                                              ; $5504: $00
	nop                                              ; $5505: $00
	nop                                              ; $5506: $00
	nop                                              ; $5507: $00
	nop                                              ; $5508: $00
	nop                                              ; $5509: $00
	nop                                              ; $550a: $00
	nop                                              ; $550b: $00
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
	nop                                              ; $5520: $00
	nop                                              ; $5521: $00
	nop                                              ; $5522: $00
	nop                                              ; $5523: $00
	nop                                              ; $5524: $00
	nop                                              ; $5525: $00
	nop                                              ; $5526: $00
	nop                                              ; $5527: $00
	nop                                              ; $5528: $00
	nop                                              ; $5529: $00
	nop                                              ; $552a: $00
	nop                                              ; $552b: $00
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
	nop                                              ; $5540: $00
	nop                                              ; $5541: $00
	nop                                              ; $5542: $00
	nop                                              ; $5543: $00
	nop                                              ; $5544: $00
	nop                                              ; $5545: $00
	nop                                              ; $5546: $00
	nop                                              ; $5547: $00
	nop                                              ; $5548: $00
	nop                                              ; $5549: $00
	nop                                              ; $554a: $00
	nop                                              ; $554b: $00
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
	nop                                              ; $5560: $00
	nop                                              ; $5561: $00
	nop                                              ; $5562: $00
	nop                                              ; $5563: $00
	nop                                              ; $5564: $00
	nop                                              ; $5565: $00
	nop                                              ; $5566: $00
	nop                                              ; $5567: $00
	nop                                              ; $5568: $00
	nop                                              ; $5569: $00
	nop                                              ; $556a: $00
	nop                                              ; $556b: $00
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
	nop                                              ; $5580: $00
	nop                                              ; $5581: $00
	nop                                              ; $5582: $00
	nop                                              ; $5583: $00
	nop                                              ; $5584: $00
	nop                                              ; $5585: $00
	nop                                              ; $5586: $00
	nop                                              ; $5587: $00
	nop                                              ; $5588: $00
	nop                                              ; $5589: $00
	nop                                              ; $558a: $00
	nop                                              ; $558b: $00
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
	nop                                              ; $55a0: $00
	nop                                              ; $55a1: $00
	nop                                              ; $55a2: $00
	nop                                              ; $55a3: $00
	nop                                              ; $55a4: $00
	nop                                              ; $55a5: $00
	nop                                              ; $55a6: $00
	nop                                              ; $55a7: $00
	nop                                              ; $55a8: $00
	nop                                              ; $55a9: $00
	nop                                              ; $55aa: $00
	nop                                              ; $55ab: $00
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
	nop                                              ; $55c0: $00
	nop                                              ; $55c1: $00
	nop                                              ; $55c2: $00
	nop                                              ; $55c3: $00
	nop                                              ; $55c4: $00
	nop                                              ; $55c5: $00
	nop                                              ; $55c6: $00
	nop                                              ; $55c7: $00
	nop                                              ; $55c8: $00
	nop                                              ; $55c9: $00
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
	nop                                              ; $55e0: $00
	nop                                              ; $55e1: $00
	nop                                              ; $55e2: $00
	nop                                              ; $55e3: $00
	nop                                              ; $55e4: $00
	nop                                              ; $55e5: $00
	nop                                              ; $55e6: $00
	nop                                              ; $55e7: $00
	nop                                              ; $55e8: $00
	nop                                              ; $55e9: $00
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
	nop                                              ; $5600: $00
	nop                                              ; $5601: $00
	nop                                              ; $5602: $00
	nop                                              ; $5603: $00
	nop                                              ; $5604: $00
	nop                                              ; $5605: $00
	nop                                              ; $5606: $00
	nop                                              ; $5607: $00
	nop                                              ; $5608: $00
	nop                                              ; $5609: $00
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
	nop                                              ; $5620: $00
	nop                                              ; $5621: $00
	nop                                              ; $5622: $00
	nop                                              ; $5623: $00
	nop                                              ; $5624: $00
	nop                                              ; $5625: $00
	nop                                              ; $5626: $00
	nop                                              ; $5627: $00
	nop                                              ; $5628: $00
	nop                                              ; $5629: $00
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
	nop                                              ; $5804: $00
	nop                                              ; $5805: $00
	nop                                              ; $5806: $00
	nop                                              ; $5807: $00
	nop                                              ; $5808: $00
	nop                                              ; $5809: $00
	nop                                              ; $580a: $00
	nop                                              ; $580b: $00
	nop                                              ; $580c: $00
	nop                                              ; $580d: $00
	nop                                              ; $580e: $00
	nop                                              ; $580f: $00
	nop                                              ; $5810: $00
	nop                                              ; $5811: $00
	nop                                              ; $5812: $00
	nop                                              ; $5813: $00
	nop                                              ; $5814: $00
	nop                                              ; $5815: $00
	inc  bc                                          ; $5816: $03
	inc  bc                                          ; $5817: $03
	inc  bc                                          ; $5818: $03
	inc  bc                                          ; $5819: $03
	rlca                                             ; $581a: $07
	ld   b, $07                                      ; $581b: $06 $07
	ld   b, $07                                      ; $581d: $06 $07
	rlca                                             ; $581f: $07
	nop                                              ; $5820: $00
	nop                                              ; $5821: $00
	nop                                              ; $5822: $00
	nop                                              ; $5823: $00
	nop                                              ; $5824: $00
	nop                                              ; $5825: $00
	nop                                              ; $5826: $00
	nop                                              ; $5827: $00
	nop                                              ; $5828: $00
	nop                                              ; $5829: $00
	nop                                              ; $582a: $00
	nop                                              ; $582b: $00
	nop                                              ; $582c: $00
	nop                                              ; $582d: $00
	nop                                              ; $582e: $00
	nop                                              ; $582f: $00
	ld   a, l                                        ; $5830: $7d
	ld   a, l                                        ; $5831: $7d
	ld   b, e                                        ; $5832: $43
	ld   a, a                                        ; $5833: $7f
	rst  ToBoot                                         ; $5834: $c7
	rst  $38                                         ; $5835: $ff
	rst  $38                                         ; $5836: $ff
	rst  $38                                         ; $5837: $ff
	rst  $38                                         ; $5838: $ff
	ld   a, a                                        ; $5839: $7f
	rst  $38                                         ; $583a: $ff
	ld   e, [hl]                                     ; $583b: $5e
	rst  $38                                         ; $583c: $ff
	cp   [hl]                                        ; $583d: $be
	rst  $38                                         ; $583e: $ff
	rst  $38                                         ; $583f: $ff
	nop                                              ; $5840: $00
	nop                                              ; $5841: $00
	nop                                              ; $5842: $00
	nop                                              ; $5843: $00
	nop                                              ; $5844: $00
	nop                                              ; $5845: $00
	nop                                              ; $5846: $00
	nop                                              ; $5847: $00
	nop                                              ; $5848: $00
	nop                                              ; $5849: $00
	nop                                              ; $584a: $00
	nop                                              ; $584b: $00
	nop                                              ; $584c: $00
	nop                                              ; $584d: $00
	nop                                              ; $584e: $00
	nop                                              ; $584f: $00
	ldh  a, [$f0]                                    ; $5850: $f0 $f0
	ld   [$88f8], sp                                 ; $5852: $08 $f8 $88
	ld   hl, sp-$38                                  ; $5855: $f8 $c8
	ld   hl, sp-$04                                  ; $5857: $f8 $fc
	db   $fc                                         ; $5859: $fc
	and  $be                                         ; $585a: $e6 $be
	and  $be                                         ; $585c: $e6 $be
	and  $fe                                         ; $585e: $e6 $fe
	dec  bc                                          ; $5860: $0b
	dec  bc                                          ; $5861: $0b
	dec  bc                                          ; $5862: $0b
	dec  bc                                          ; $5863: $0b
	ld   bc, $0101                                   ; $5864: $01 $01 $01
	ld   bc, $0101                                   ; $5867: $01 $01 $01
	ld   bc, $0101                                   ; $586a: $01 $01 $01
	ld   bc, $0000                                   ; $586d: $01 $00 $00
	nop                                              ; $5870: $00
	nop                                              ; $5871: $00
	nop                                              ; $5872: $00
	nop                                              ; $5873: $00
	ld   bc, $0301                                   ; $5874: $01 $01 $03
	inc  bc                                          ; $5877: $03
	inc  bc                                          ; $5878: $03
	inc  bc                                          ; $5879: $03
	inc  bc                                          ; $587a: $03
	ld   [bc], a                                     ; $587b: $02
	rlca                                             ; $587c: $07
	inc  b                                           ; $587d: $04
	add  hl, bc                                      ; $587e: $09
	ld   c, $ff                                      ; $587f: $0e $ff
	rst  JumpTable                                         ; $5881: $df
	rst  $38                                         ; $5882: $ff
	adc  a                                           ; $5883: $8f
	rst  $38                                         ; $5884: $ff
	adc  [hl]                                        ; $5885: $8e
	ld   [hl], l                                     ; $5886: $75
	sbc  a                                           ; $5887: $9f
	db   $fd                                         ; $5888: $fd
	adc  [hl]                                        ; $5889: $8e
	rst  $38                                         ; $588a: $ff
	adc  h                                           ; $588b: $8c
	rst  $38                                         ; $588c: $ff
	ld   bc, $81ff                                   ; $588d: $01 $ff $81
	ld   a, a                                        ; $5890: $7f
	ld   a, a                                        ; $5891: $7f
	cp   c                                           ; $5892: $b9
	rst  $28                                         ; $5893: $ef
	ld   [de], a                                     ; $5894: $12
	rst  $38                                         ; $5895: $ff
	and  l                                           ; $5896: $a5
	rst  $38                                         ; $5897: $ff
	ld   hl, sp-$01                                  ; $5898: $f8 $ff
	db   $fc                                         ; $589a: $fc
	rst  $20                                         ; $589b: $e7
	ld   a, [hl]                                     ; $589c: $7e
	rst  ToBoot                                         ; $589d: $c7
	ld   a, a                                        ; $589e: $7f
	rst  ToBoot                                         ; $589f: $c7
	and  $fe                                         ; $58a0: $e6 $fe
	and  $fe                                         ; $58a2: $e6 $fe
	or   $fe                                         ; $58a4: $f6 $fe
	cp   $fe                                         ; $58a6: $fe $fe
	cp   $de                                         ; $58a8: $fe $de
	xor  $ce                                         ; $58aa: $ee $ce
	and  $a6                                         ; $58ac: $e6 $a6
	rst  ToBoot                                         ; $58ae: $c7
	rst  ToBoot                                         ; $58af: $c7
	jp   $b3c3                                       ; $58b0: $c3 $c3 $b3


	di                                               ; $58b3: $f3
	xor  e                                           ; $58b4: $ab
	ei                                               ; $58b5: $fb
	ld   b, [hl]                                     ; $58b6: $46
	cp   $46                                         ; $58b7: $fe $46
	cp   $9e                                         ; $58b9: $fe $9e
	cp   $bd                                         ; $58bb: $fe $bd
	rst  $20                                         ; $58bd: $e7
	ld   hl, sp-$31                                  ; $58be: $f8 $cf
	dec  e                                           ; $58c0: $1d
	ld   [de], a                                     ; $58c1: $12
	dec  de                                          ; $58c2: $1b
	inc  d                                           ; $58c3: $14
	inc  de                                          ; $58c4: $13
	dec  e                                           ; $58c5: $1d
	ld   a, $22                                      ; $58c6: $3e $22
	inc  h                                           ; $58c8: $24
	inc  a                                           ; $58c9: $3c
	add  hl, sp                                      ; $58ca: $39
	add  hl, hl                                      ; $58cb: $29
	add  hl, de                                      ; $58cc: $19
	add  hl, de                                      ; $58cd: $19
	ld   bc, $0201                                   ; $58ce: $01 $01 $02
	inc  bc                                          ; $58d1: $03
	ld   [bc], a                                     ; $58d2: $02
	inc  bc                                          ; $58d3: $03
	ld   [bc], a                                     ; $58d4: $02
	inc  bc                                          ; $58d5: $03
	inc  bc                                          ; $58d6: $03
	inc  bc                                          ; $58d7: $03
	inc  bc                                          ; $58d8: $03
	ld   [bc], a                                     ; $58d9: $02
	rrca                                             ; $58da: $0f
	inc  c                                           ; $58db: $0c
	rra                                              ; $58dc: $1f
	rra                                              ; $58dd: $1f
	rra                                              ; $58de: $1f
	rra                                              ; $58df: $1f
	rst  $38                                         ; $58e0: $ff
	ccf                                              ; $58e1: $3f
	rst  $38                                         ; $58e2: $ff
	rst  $38                                         ; $58e3: $ff
	push de                                          ; $58e4: $d5
	rst  $38                                         ; $58e5: $ff
	sub  l                                           ; $58e6: $95
	rst  $38                                         ; $58e7: $ff
	and  l                                           ; $58e8: $a5
	rst  $38                                         ; $58e9: $ff
	add  hl, hl                                      ; $58ea: $29
	rst  $38                                         ; $58eb: $ff
	add  hl, hl                                      ; $58ec: $29
	rst  $38                                         ; $58ed: $ff
	ld   c, c                                        ; $58ee: $49
	rst  $38                                         ; $58ef: $ff
	ld   c, c                                        ; $58f0: $49
	rst  $38                                         ; $58f1: $ff
	ld   c, c                                        ; $58f2: $49
	rst  $38                                         ; $58f3: $ff
	ld   c, c                                        ; $58f4: $49
	rst  $38                                         ; $58f5: $ff
	ret                                              ; $58f6: $c9


	rst  $38                                         ; $58f7: $ff
	or   $76                                         ; $58f8: $f6 $76
	ret  nz                                          ; $58fa: $c0

	ret  nz                                          ; $58fb: $c0

	ret  nz                                          ; $58fc: $c0

	ret  nz                                          ; $58fd: $c0

	nop                                              ; $58fe: $00
	nop                                              ; $58ff: $00
	db   $fd                                         ; $5900: $fd
	adc  d                                           ; $5901: $8a
	rst  $38                                         ; $5902: $ff
	adc  h                                           ; $5903: $8c
	di                                               ; $5904: $f3
	db   $d3                                         ; $5905: $d3
	ld   a, b                                        ; $5906: $78
	ld   hl, sp+$7e                                  ; $5907: $f8 $7e
	cp   $5f                                         ; $5909: $fe $5f
	rst  $38                                         ; $590b: $ff
	ld   d, e                                        ; $590c: $53
	di                                               ; $590d: $f3
	ld   d, b                                        ; $590e: $50
	ldh  a, [rOBP0]                                  ; $590f: $f0 $48
	ld   hl, sp+$28                                  ; $5911: $f8 $28
	ld   hl, sp+$28                                  ; $5913: $f8 $28
	ld   hl, sp+$28                                  ; $5915: $f8 $28
	ld   hl, sp-$04                                  ; $5917: $f8 $fc
	db   $fc                                         ; $5919: $fc
	ld   a, h                                        ; $591a: $7c
	ld   b, h                                        ; $591b: $44
	ld   a, [hl]                                     ; $591c: $7e
	ld   a, [hl]                                     ; $591d: $7e
	ld   a, $3e                                      ; $591e: $3e $3e
	nop                                              ; $5920: $00
	nop                                              ; $5921: $00
	nop                                              ; $5922: $00
	nop                                              ; $5923: $00
	nop                                              ; $5924: $00
	nop                                              ; $5925: $00
	nop                                              ; $5926: $00
	nop                                              ; $5927: $00
	nop                                              ; $5928: $00
	nop                                              ; $5929: $00
	nop                                              ; $592a: $00
	nop                                              ; $592b: $00
	nop                                              ; $592c: $00
	nop                                              ; $592d: $00
	ret  nz                                          ; $592e: $c0

	ret  nz                                          ; $592f: $c0

	ld   h, b                                        ; $5930: $60
	and  b                                           ; $5931: $a0
	jr   nz, @-$1e                                   ; $5932: $20 $e0

	ret  nz                                          ; $5934: $c0

	ret  nz                                          ; $5935: $c0

	nop                                              ; $5936: $00
	nop                                              ; $5937: $00
	nop                                              ; $5938: $00
	nop                                              ; $5939: $00
	nop                                              ; $593a: $00
	nop                                              ; $593b: $00
	nop                                              ; $593c: $00
	nop                                              ; $593d: $00
	nop                                              ; $593e: $00
	nop                                              ; $593f: $00
	nop                                              ; $5940: $00
	nop                                              ; $5941: $00
	nop                                              ; $5942: $00
	nop                                              ; $5943: $00
	nop                                              ; $5944: $00
	nop                                              ; $5945: $00
	nop                                              ; $5946: $00
	nop                                              ; $5947: $00
	nop                                              ; $5948: $00
	nop                                              ; $5949: $00
	nop                                              ; $594a: $00
	nop                                              ; $594b: $00
	nop                                              ; $594c: $00
	nop                                              ; $594d: $00
	nop                                              ; $594e: $00
	nop                                              ; $594f: $00
	nop                                              ; $5950: $00
	nop                                              ; $5951: $00
	nop                                              ; $5952: $00
	nop                                              ; $5953: $00
	nop                                              ; $5954: $00
	nop                                              ; $5955: $00
	nop                                              ; $5956: $00
	nop                                              ; $5957: $00
	ld   bc, $0301                                   ; $5958: $01 $01 $03
	inc  bc                                          ; $595b: $03
	rlca                                             ; $595c: $07
	ld   b, $07                                      ; $595d: $06 $07
	rlca                                             ; $595f: $07
	nop                                              ; $5960: $00
	nop                                              ; $5961: $00
	nop                                              ; $5962: $00
	nop                                              ; $5963: $00
	nop                                              ; $5964: $00
	nop                                              ; $5965: $00
	nop                                              ; $5966: $00
	nop                                              ; $5967: $00
	nop                                              ; $5968: $00
	nop                                              ; $5969: $00
	nop                                              ; $596a: $00
	nop                                              ; $596b: $00
	nop                                              ; $596c: $00
	nop                                              ; $596d: $00
	nop                                              ; $596e: $00
	nop                                              ; $596f: $00
	nop                                              ; $5970: $00
	nop                                              ; $5971: $00
	ld   a, l                                        ; $5972: $7d
	ld   a, l                                        ; $5973: $7d
	ld   b, e                                        ; $5974: $43
	ld   a, a                                        ; $5975: $7f
	rst  ToBoot                                         ; $5976: $c7
	rst  $38                                         ; $5977: $ff
	rst  $38                                         ; $5978: $ff
	rst  $38                                         ; $5979: $ff
	rst  $38                                         ; $597a: $ff
	ld   a, e                                        ; $597b: $7b
	rst  $38                                         ; $597c: $ff
	ld   sp, hl                                      ; $597d: $f9
	rst  $38                                         ; $597e: $ff
	db   $fc                                         ; $597f: $fc
	nop                                              ; $5980: $00
	nop                                              ; $5981: $00
	nop                                              ; $5982: $00
	nop                                              ; $5983: $00
	nop                                              ; $5984: $00
	nop                                              ; $5985: $00
	nop                                              ; $5986: $00
	nop                                              ; $5987: $00
	nop                                              ; $5988: $00
	nop                                              ; $5989: $00
	nop                                              ; $598a: $00
	nop                                              ; $598b: $00
	nop                                              ; $598c: $00
	nop                                              ; $598d: $00
	nop                                              ; $598e: $00
	nop                                              ; $598f: $00
	nop                                              ; $5990: $00
	nop                                              ; $5991: $00
	ldh  a, [$f0]                                    ; $5992: $f0 $f0
	ld   [$88f8], sp                                 ; $5994: $08 $f8 $88
	ld   hl, sp-$38                                  ; $5997: $f8 $c8
	ld   hl, sp-$04                                  ; $5999: $f8 $fc
	ld   a, h                                        ; $599b: $7c
	and  $be                                         ; $599c: $e6 $be
	and  $be                                         ; $599e: $e6 $be
	rrca                                             ; $59a0: $0f
	rrca                                             ; $59a1: $0f
	dec  bc                                          ; $59a2: $0b
	dec  bc                                          ; $59a3: $0b
	dec  bc                                          ; $59a4: $0b
	dec  bc                                          ; $59a5: $0b
	add  e                                           ; $59a6: $83
	add  e                                           ; $59a7: $83
	pop  hl                                          ; $59a8: $e1
	pop  hl                                          ; $59a9: $e1
	ld   sp, hl                                      ; $59aa: $f9
	sbc  c                                           ; $59ab: $99
	rst  $20                                         ; $59ac: $e7
	cp   a                                           ; $59ad: $bf
	pop  hl                                          ; $59ae: $e1
	cp   a                                           ; $59af: $bf
	ld   h, c                                        ; $59b0: $61
	ld   a, a                                        ; $59b1: $7f
	jr   nz, jr_027_59f3                             ; $59b2: $20 $3f

	jr   nz, jr_027_59f5                             ; $59b4: $20 $3f

	jr   nz, jr_027_59f7                             ; $59b6: $20 $3f

	jr   c, jr_027_59e1                              ; $59b8: $38 $27

	jr   nc, jr_027_59eb                             ; $59ba: $30 $2f

	dec  d                                           ; $59bc: $15
	ld   a, [de]                                     ; $59bd: $1a
	inc  e                                           ; $59be: $1c
	inc  de                                          ; $59bf: $13
	rst  $38                                         ; $59c0: $ff
	cp   a                                           ; $59c1: $bf
	rst  $38                                         ; $59c2: $ff
	sbc  a                                           ; $59c3: $9f
	rst  $38                                         ; $59c4: $ff
	adc  a                                           ; $59c5: $8f
	rst  $38                                         ; $59c6: $ff
	dec  e                                           ; $59c7: $1d
	db   $eb                                         ; $59c8: $eb
	cp   [hl]                                        ; $59c9: $be
	ei                                               ; $59ca: $fb
	inc  e                                           ; $59cb: $1c
	rst  $38                                         ; $59cc: $ff
	jr   @+$01                                       ; $59cd: $18 $ff

	nop                                              ; $59cf: $00
	rst  $38                                         ; $59d0: $ff
	add  c                                           ; $59d1: $81
	ld   a, a                                        ; $59d2: $7f
	rst  $38                                         ; $59d3: $ff
	cp   d                                           ; $59d4: $ba
	rst  $28                                         ; $59d5: $ef
	push de                                          ; $59d6: $d5
	rst  $38                                         ; $59d7: $ff
	or   h                                           ; $59d8: $b4
	rst  $38                                         ; $59d9: $ff
	xor  b                                           ; $59da: $a8
	rst  $38                                         ; $59db: $ff
	rst  $38                                         ; $59dc: $ff
	rst  $38                                         ; $59dd: $ff
	rst  $38                                         ; $59de: $ff
	rst  $38                                         ; $59df: $ff
	rst  $20                                         ; $59e0: $e7

jr_027_59e1:
	rst  $38                                         ; $59e1: $ff
	rst  $20                                         ; $59e2: $e7
	rst  $38                                         ; $59e3: $ff
	rst  $20                                         ; $59e4: $e7
	rst  $38                                         ; $59e5: $ff
	rst  $30                                         ; $59e6: $f7
	rst  $38                                         ; $59e7: $ff
	rst  $38                                         ; $59e8: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $59e9: $cf
	ei                                               ; $59ea: $fb

jr_027_59eb:
	set  7, e                                        ; $59eb: $cb $fb
	db   $db                                         ; $59ed: $db
	pop  af                                          ; $59ee: $f1
	pop  af                                          ; $59ef: $f1
	pop  bc                                          ; $59f0: $c1
	pop  bc                                          ; $59f1: $c1
	pop  hl                                          ; $59f2: $e1

jr_027_59f3:
	pop  hl                                          ; $59f3: $e1
	sbc  b                                           ; $59f4: $98

jr_027_59f5:
	ld   hl, sp+$24                                  ; $59f5: $f8 $24

jr_027_59f7:
	db   $fc                                         ; $59f7: $fc
	ld   b, d                                        ; $59f8: $42
	cp   $82                                         ; $59f9: $fe $82
	cp   $8d                                         ; $59fb: $fe $8d
	rst  $38                                         ; $59fd: $ff
	sbc  h                                           ; $59fe: $9c
	rst  $30                                         ; $59ff: $f7
	dec  e                                           ; $5a00: $1d
	ld   [de], a                                     ; $5a01: $12
	add  hl, bc                                      ; $5a02: $09
	ld   c, $0f                                      ; $5a03: $0e $0f
	rrca                                             ; $5a05: $0f
	nop                                              ; $5a06: $00
	nop                                              ; $5a07: $00
	ld   bc, $0101                                   ; $5a08: $01 $01 $01
	ld   bc, $0302                                   ; $5a0b: $01 $02 $03
	ld   [bc], a                                     ; $5a0e: $02
	inc  bc                                          ; $5a0f: $03
	inc  b                                           ; $5a10: $04
	rlca                                             ; $5a11: $07
	inc  b                                           ; $5a12: $04
	rlca                                             ; $5a13: $07
	inc  b                                           ; $5a14: $04
	rlca                                             ; $5a15: $07
	rlca                                             ; $5a16: $07
	rlca                                             ; $5a17: $07
	inc  bc                                          ; $5a18: $03
	ld   [bc], a                                     ; $5a19: $02
	rrca                                             ; $5a1a: $0f
	inc  c                                           ; $5a1b: $0c
	rra                                              ; $5a1c: $1f
	ld   e, $1f                                      ; $5a1d: $1e $1f
	rra                                              ; $5a1f: $1f
	add  c                                           ; $5a20: $81
	rst  $38                                         ; $5a21: $ff
	rst  $38                                         ; $5a22: $ff
	rst  $38                                         ; $5a23: $ff
	rst  $38                                         ; $5a24: $ff
	rst  $38                                         ; $5a25: $ff
	xor  c                                           ; $5a26: $a9
	rst  $38                                         ; $5a27: $ff
	add  hl, hl                                      ; $5a28: $29
	rst  $38                                         ; $5a29: $ff
	ld   c, c                                        ; $5a2a: $49
	rst  $38                                         ; $5a2b: $ff
	ld   c, c                                        ; $5a2c: $49
	rst  $38                                         ; $5a2d: $ff
	ld   d, c                                        ; $5a2e: $51
	rst  $38                                         ; $5a2f: $ff
	sub  c                                           ; $5a30: $91
	rst  $38                                         ; $5a31: $ff
	sub  b                                           ; $5a32: $90
	rst  $38                                         ; $5a33: $ff
	sub  b                                           ; $5a34: $90
	rst  $38                                         ; $5a35: $ff
	sub  b                                           ; $5a36: $90
	rst  $38                                         ; $5a37: $ff
	rst  $28                                         ; $5a38: $ef
	rst  $28                                         ; $5a39: $ef
	ret  nz                                          ; $5a3a: $c0

	ld   b, b                                        ; $5a3b: $40
	ret  nz                                          ; $5a3c: $c0

	ret  nz                                          ; $5a3d: $c0

	ret  nz                                          ; $5a3e: $c0

	ret  nz                                          ; $5a3f: $c0

	db   $fd                                         ; $5a40: $fd
	and  $fe                                         ; $5a41: $e6 $fe
	push bc                                          ; $5a43: $c5
	ld   a, a                                        ; $5a44: $7f
	and  $5f                                         ; $5a45: $e6 $5f
	rst  $38                                         ; $5a47: $ff
	ld   c, a                                        ; $5a48: $4f
	rst  $38                                         ; $5a49: $ff
	dec  hl                                          ; $5a4a: $2b
	ei                                               ; $5a4b: $fb
	add  hl, hl                                      ; $5a4c: $29
	ld   sp, hl                                      ; $5a4d: $f9
	inc  h                                           ; $5a4e: $24
	db   $fc                                         ; $5a4f: $fc
	ld   [de], a                                     ; $5a50: $12
	cp   $8a                                         ; $5a51: $fe $8a
	cp   $8a                                         ; $5a53: $fe $8a
	cp   $8a                                         ; $5a55: $fe $8a
	cp   $7f                                         ; $5a57: $fe $7f
	ld   a, a                                        ; $5a59: $7f
	rra                                              ; $5a5a: $1f
	ld   de, $1f1f                                   ; $5a5b: $11 $1f $1f
	rrca                                             ; $5a5e: $0f
	rrca                                             ; $5a5f: $0f
	ret  nz                                          ; $5a60: $c0

	ld   b, b                                        ; $5a61: $40
	ld   b, b                                        ; $5a62: $40
	ret  nz                                          ; $5a63: $c0

	ld   h, b                                        ; $5a64: $60
	and  b                                           ; $5a65: $a0
	ldh  [$e0], a                                    ; $5a66: $e0 $e0
	nop                                              ; $5a68: $00
	nop                                              ; $5a69: $00
	ret  nz                                          ; $5a6a: $c0

	ret  nz                                          ; $5a6b: $c0

	ldh  [$e0], a                                    ; $5a6c: $e0 $e0
	ld   h, b                                        ; $5a6e: $60
	ld   h, b                                        ; $5a6f: $60
	nop                                              ; $5a70: $00
	nop                                              ; $5a71: $00
	nop                                              ; $5a72: $00
	nop                                              ; $5a73: $00
	nop                                              ; $5a74: $00
	nop                                              ; $5a75: $00
	nop                                              ; $5a76: $00
	nop                                              ; $5a77: $00
	nop                                              ; $5a78: $00
	nop                                              ; $5a79: $00
	nop                                              ; $5a7a: $00
	nop                                              ; $5a7b: $00
	add  b                                           ; $5a7c: $80
	add  b                                           ; $5a7d: $80
	add  b                                           ; $5a7e: $80
	add  b                                           ; $5a7f: $80
	add  b                                           ; $5a80: $80
	add  b                                           ; $5a81: $80
	add  b                                           ; $5a82: $80
	add  b                                           ; $5a83: $80
	ret  nz                                          ; $5a84: $c0

	ld   b, b                                        ; $5a85: $40
	ldh  [$60], a                                    ; $5a86: $e0 $60
	ldh  a, [$50]                                    ; $5a88: $f0 $50
	ld   hl, sp+$28                                  ; $5a8a: $f8 $28
	ld   hl, sp+$28                                  ; $5a8c: $f8 $28
	ld   e, h                                        ; $5a8e: $5c
	inc  [hl]                                        ; $5a8f: $34
	ld   l, [hl]                                     ; $5a90: $6e
	ld   a, [de]                                     ; $5a91: $1a
	ld   l, $1a                                      ; $5a92: $2e $1a
	scf                                              ; $5a94: $37
	dec  c                                           ; $5a95: $0d
	inc  de                                          ; $5a96: $13
	ld   a, [bc]                                     ; $5a97: $0a
	dec  bc                                          ; $5a98: $0b
	ld   b, $05                                      ; $5a99: $06 $05
	ld   bc, $0002                                   ; $5a9b: $01 $02 $00
	ld   bc, $0000                                   ; $5a9e: $01 $00 $00
	nop                                              ; $5aa1: $00
	nop                                              ; $5aa2: $00
	nop                                              ; $5aa3: $00
	nop                                              ; $5aa4: $00
	nop                                              ; $5aa5: $00
	nop                                              ; $5aa6: $00
	nop                                              ; $5aa7: $00
	nop                                              ; $5aa8: $00
	nop                                              ; $5aa9: $00
	nop                                              ; $5aaa: $00
	nop                                              ; $5aab: $00
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
	ld   b, b                                        ; $5ab6: $40
	ld   b, b                                        ; $5ab7: $40
	nop                                              ; $5ab8: $00
	nop                                              ; $5ab9: $00
	nop                                              ; $5aba: $00
	nop                                              ; $5abb: $00
	nop                                              ; $5abc: $00
	nop                                              ; $5abd: $00
	add  b                                           ; $5abe: $80
	add  b                                           ; $5abf: $80
	nop                                              ; $5ac0: $00
	nop                                              ; $5ac1: $00
	nop                                              ; $5ac2: $00
	nop                                              ; $5ac3: $00
	nop                                              ; $5ac4: $00
	nop                                              ; $5ac5: $00
	nop                                              ; $5ac6: $00
	nop                                              ; $5ac7: $00
	nop                                              ; $5ac8: $00
	nop                                              ; $5ac9: $00
	nop                                              ; $5aca: $00
	nop                                              ; $5acb: $00
	nop                                              ; $5acc: $00
	nop                                              ; $5acd: $00
	nop                                              ; $5ace: $00
	nop                                              ; $5acf: $00
	nop                                              ; $5ad0: $00
	nop                                              ; $5ad1: $00
	nop                                              ; $5ad2: $00
	nop                                              ; $5ad3: $00
	nop                                              ; $5ad4: $00
	nop                                              ; $5ad5: $00
	nop                                              ; $5ad6: $00
	nop                                              ; $5ad7: $00
	ld   bc, $0301                                   ; $5ad8: $01 $01 $03
	inc  bc                                          ; $5adb: $03
	rlca                                             ; $5adc: $07
	ld   b, $07                                      ; $5add: $06 $07
	rlca                                             ; $5adf: $07
	nop                                              ; $5ae0: $00
	nop                                              ; $5ae1: $00
	nop                                              ; $5ae2: $00
	nop                                              ; $5ae3: $00
	nop                                              ; $5ae4: $00
	nop                                              ; $5ae5: $00
	nop                                              ; $5ae6: $00
	nop                                              ; $5ae7: $00
	nop                                              ; $5ae8: $00
	nop                                              ; $5ae9: $00
	nop                                              ; $5aea: $00
	nop                                              ; $5aeb: $00
	nop                                              ; $5aec: $00
	nop                                              ; $5aed: $00
	nop                                              ; $5aee: $00
	nop                                              ; $5aef: $00
	nop                                              ; $5af0: $00
	nop                                              ; $5af1: $00
	ld   a, l                                        ; $5af2: $7d
	ld   a, l                                        ; $5af3: $7d
	ld   b, e                                        ; $5af4: $43
	ld   a, a                                        ; $5af5: $7f
	rst  ToBoot                                         ; $5af6: $c7
	rst  $38                                         ; $5af7: $ff
	rst  $38                                         ; $5af8: $ff
	rst  $38                                         ; $5af9: $ff
	rst  $38                                         ; $5afa: $ff
	ld   a, e                                        ; $5afb: $7b
	rst  $38                                         ; $5afc: $ff
	ld   sp, hl                                      ; $5afd: $f9
	rst  $38                                         ; $5afe: $ff
	db   $fc                                         ; $5aff: $fc
	nop                                              ; $5b00: $00
	nop                                              ; $5b01: $00
	nop                                              ; $5b02: $00
	nop                                              ; $5b03: $00
	nop                                              ; $5b04: $00
	nop                                              ; $5b05: $00
	nop                                              ; $5b06: $00
	nop                                              ; $5b07: $00
	nop                                              ; $5b08: $00
	nop                                              ; $5b09: $00
	nop                                              ; $5b0a: $00
	nop                                              ; $5b0b: $00
	nop                                              ; $5b0c: $00
	nop                                              ; $5b0d: $00
	nop                                              ; $5b0e: $00
	nop                                              ; $5b0f: $00
	nop                                              ; $5b10: $00
	nop                                              ; $5b11: $00
	ldh  a, [$f0]                                    ; $5b12: $f0 $f0
	ld   [$88f8], sp                                 ; $5b14: $08 $f8 $88
	ld   hl, sp-$38                                  ; $5b17: $f8 $c8
	ld   hl, sp-$04                                  ; $5b19: $f8 $fc
	ld   a, h                                        ; $5b1b: $7c
	and  $be                                         ; $5b1c: $e6 $be
	and  $be                                         ; $5b1e: $e6 $be
	rrca                                             ; $5b20: $0f
	rrca                                             ; $5b21: $0f
	dec  bc                                          ; $5b22: $0b
	dec  bc                                          ; $5b23: $0b
	dec  bc                                          ; $5b24: $0b
	dec  bc                                          ; $5b25: $0b
	inc  bc                                          ; $5b26: $03
	inc  bc                                          ; $5b27: $03
	ld   bc, $0101                                   ; $5b28: $01 $01 $01
	ld   bc, $0101                                   ; $5b2b: $01 $01 $01
	ld   bc, $1d01                                   ; $5b2e: $01 $01 $1d
	dec  e                                           ; $5b31: $1d
	ld   a, [hl-]                                    ; $5b32: $3a
	ld   h, $4a                                      ; $5b33: $26 $4a
	halt                                             ; $5b35: $76
	ld   e, a                                        ; $5b36: $5f
	ld   h, c                                        ; $5b37: $61
	ld   [hl], a                                     ; $5b38: $77
	ld   c, d                                        ; $5b39: $4a
	ld   h, a                                        ; $5b3a: $67
	ld   e, h                                        ; $5b3b: $5c
	ld   a, a                                        ; $5b3c: $7f
	ld   b, h                                        ; $5b3d: $44
	ld   a, a                                        ; $5b3e: $7f
	ld   c, h                                        ; $5b3f: $4c
	rst  $38                                         ; $5b40: $ff
	cp   a                                           ; $5b41: $bf
	rst  $38                                         ; $5b42: $ff
	sbc  a                                           ; $5b43: $9f
	rst  $38                                         ; $5b44: $ff
	adc  a                                           ; $5b45: $8f
	rst  $38                                         ; $5b46: $ff
	dec  e                                           ; $5b47: $1d
	db   $eb                                         ; $5b48: $eb
	cp   [hl]                                        ; $5b49: $be
	ei                                               ; $5b4a: $fb
	inc  e                                           ; $5b4b: $1c
	rst  $38                                         ; $5b4c: $ff
	jr   @+$01                                       ; $5b4d: $18 $ff

	nop                                              ; $5b4f: $00
	rst  $38                                         ; $5b50: $ff
	add  c                                           ; $5b51: $81
	ld   a, a                                        ; $5b52: $7f
	ld   a, a                                        ; $5b53: $7f
	push af                                          ; $5b54: $f5
	rst  JumpTable                                         ; $5b55: $df
	xor  c                                           ; $5b56: $a9
	rst  $38                                         ; $5b57: $ff
	xor  d                                           ; $5b58: $aa
	rst  $38                                         ; $5b59: $ff
	ld   d, c                                        ; $5b5a: $51
	rst  $38                                         ; $5b5b: $ff
	rst  $38                                         ; $5b5c: $ff
	rst  $38                                         ; $5b5d: $ff
	rst  $38                                         ; $5b5e: $ff
	rst  $38                                         ; $5b5f: $ff
	rst  $20                                         ; $5b60: $e7
	rst  $38                                         ; $5b61: $ff
	rst  $20                                         ; $5b62: $e7
	rst  $38                                         ; $5b63: $ff
	rst  $20                                         ; $5b64: $e7
	rst  $38                                         ; $5b65: $ff
	rst  $30                                         ; $5b66: $f7
	rst  $38                                         ; $5b67: $ff
	rst  $38                                         ; $5b68: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5b69: $cf
	ei                                               ; $5b6a: $fb
	set  7, e                                        ; $5b6b: $cb $fb
	db   $db                                         ; $5b6d: $db
	pop  af                                          ; $5b6e: $f1

jr_027_5b6f:
	pop  af                                          ; $5b6f: $f1
	pop  bc                                          ; $5b70: $c1
	pop  bc                                          ; $5b71: $c1
	pop  hl                                          ; $5b72: $e1
	pop  hl                                          ; $5b73: $e1
	or   b                                           ; $5b74: $b0
	ldh  a, [rOBP0]                                  ; $5b75: $f0 $48
	ld   hl, sp-$7c                                  ; $5b77: $f8 $84
	db   $fc                                         ; $5b79: $fc
	ld   b, $fe                                      ; $5b7a: $06 $fe
	dec  e                                           ; $5b7c: $1d
	rst  $38                                         ; $5b7d: $ff
	jr   c, jr_027_5b6f                              ; $5b7e: $38 $ef

	jr   z, jr_027_5bc1                              ; $5b80: $28 $3f

	jr   z, @+$41                                    ; $5b82: $28 $3f

	ld   a, $37                                      ; $5b84: $3e $37
	rra                                              ; $5b86: $1f
	rla                                              ; $5b87: $17
	rra                                              ; $5b88: $1f
	sub  a                                           ; $5b89: $97
	dec  de                                          ; $5b8a: $1b
	sbc  e                                           ; $5b8b: $9b
	dec  hl                                          ; $5b8c: $2b
	cp   e                                           ; $5b8d: $bb
	dec  hl                                          ; $5b8e: $2b
	cp   e                                           ; $5b8f: $bb
	cp   d                                           ; $5b90: $ba
	dec  hl                                          ; $5b91: $2b
	db   $f4                                         ; $5b92: $f4
	ld   d, a                                        ; $5b93: $57
	db   $f4                                         ; $5b94: $f4
	ld   d, a                                        ; $5b95: $57
	rst  $20                                         ; $5b96: $e7
	and  a                                           ; $5b97: $a7
	db   $e3                                         ; $5b98: $e3
	and  d                                           ; $5b99: $a2
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5b9a: $cf
	call z, $dedf                                    ; $5b9b: $cc $df $de
	sbc  a                                           ; $5b9e: $9f
	sbc  a                                           ; $5b9f: $9f
	ld   bc, $ffff                                   ; $5ba0: $01 $ff $ff
	rst  $38                                         ; $5ba3: $ff
	rst  $38                                         ; $5ba4: $ff
	rst  $38                                         ; $5ba5: $ff
	ld   d, d                                        ; $5ba6: $52
	rst  $38                                         ; $5ba7: $ff
	ld   d, d                                        ; $5ba8: $52
	rst  $38                                         ; $5ba9: $ff
	ld   d, d                                        ; $5baa: $52
	rst  $38                                         ; $5bab: $ff
	ld   d, c                                        ; $5bac: $51
	rst  $38                                         ; $5bad: $ff
	ld   d, c                                        ; $5bae: $51
	rst  $38                                         ; $5baf: $ff
	sub  c                                           ; $5bb0: $91
	rst  $38                                         ; $5bb1: $ff
	sub  b                                           ; $5bb2: $90
	rst  $38                                         ; $5bb3: $ff
	sub  b                                           ; $5bb4: $90
	rst  $38                                         ; $5bb5: $ff
	sub  b                                           ; $5bb6: $90
	rst  $38                                         ; $5bb7: $ff
	rst  $28                                         ; $5bb8: $ef
	rst  $28                                         ; $5bb9: $ef
	ret  nz                                          ; $5bba: $c0

	ld   b, b                                        ; $5bbb: $40
	ret  nz                                          ; $5bbc: $c0

	ret  nz                                          ; $5bbd: $c0

	ret  nz                                          ; $5bbe: $c0

	ret  nz                                          ; $5bbf: $c0

	ei                                               ; $5bc0: $fb

jr_027_5bc1:
	call z, $8bfc                                    ; $5bc1: $cc $fc $8b
	ld   a, a                                        ; $5bc4: $7f
	adc  $7f                                         ; $5bc5: $ce $7f
	rst  $38                                         ; $5bc7: $ff
	ld   e, a                                        ; $5bc8: $5f
	rst  $38                                         ; $5bc9: $ff
	ld   d, e                                        ; $5bca: $53
	di                                               ; $5bcb: $f3
	ld   c, b                                        ; $5bcc: $48
	ld   hl, sp+$48                                  ; $5bcd: $f8 $48
	ld   hl, sp+$24                                  ; $5bcf: $f8 $24
	db   $fc                                         ; $5bd1: $fc
	sub  d                                           ; $5bd2: $92
	cp   $92                                         ; $5bd3: $fe $92
	cp   $8e                                         ; $5bd5: $fe $8e
	cp   $7e                                         ; $5bd7: $fe $7e
	ld   [hl], d                                     ; $5bd9: $72
	rra                                              ; $5bda: $1f
	ld   de, $1f1f                                   ; $5bdb: $11 $1f $1f
	rrca                                             ; $5bde: $0f
	rrca                                             ; $5bdf: $0f
	nop                                              ; $5be0: $00
	nop                                              ; $5be1: $00
	nop                                              ; $5be2: $00
	nop                                              ; $5be3: $00
	nop                                              ; $5be4: $00
	nop                                              ; $5be5: $00
	nop                                              ; $5be6: $00
	nop                                              ; $5be7: $00
	nop                                              ; $5be8: $00
	nop                                              ; $5be9: $00
	nop                                              ; $5bea: $00
	nop                                              ; $5beb: $00
	nop                                              ; $5bec: $00
	nop                                              ; $5bed: $00
	nop                                              ; $5bee: $00
	nop                                              ; $5bef: $00
	nop                                              ; $5bf0: $00
	nop                                              ; $5bf1: $00
	nop                                              ; $5bf2: $00
	nop                                              ; $5bf3: $00
	ld   [bc], a                                     ; $5bf4: $02
	nop                                              ; $5bf5: $00
	ld   [bc], a                                     ; $5bf6: $02
	nop                                              ; $5bf7: $00
	ld   [bc], a                                     ; $5bf8: $02
	nop                                              ; $5bf9: $00
	ld   [bc], a                                     ; $5bfa: $02
	nop                                              ; $5bfb: $00
	ld   [bc], a                                     ; $5bfc: $02
	nop                                              ; $5bfd: $00
	ld   [bc], a                                     ; $5bfe: $02
	nop                                              ; $5bff: $00
	ld   [bc], a                                     ; $5c00: $02
	nop                                              ; $5c01: $00
	ld   [bc], a                                     ; $5c02: $02
	nop                                              ; $5c03: $00
	inc  bc                                          ; $5c04: $03
	nop                                              ; $5c05: $00
	inc  bc                                          ; $5c06: $03
	nop                                              ; $5c07: $00
	inc  bc                                          ; $5c08: $03
	nop                                              ; $5c09: $00
	inc  bc                                          ; $5c0a: $03
	nop                                              ; $5c0b: $00
	inc  bc                                          ; $5c0c: $03
	nop                                              ; $5c0d: $00
	inc  bc                                          ; $5c0e: $03
	nop                                              ; $5c0f: $00
	ld   bc, $0102                                   ; $5c10: $01 $02 $01
	ld   [bc], a                                     ; $5c13: $02
	ld   bc, $0102                                   ; $5c14: $01 $02 $01
	ld   [bc], a                                     ; $5c17: $02
	ld   bc, $0102                                   ; $5c18: $01 $02 $01
	ld   [bc], a                                     ; $5c1b: $02
	ld   bc, $0102                                   ; $5c1c: $01 $02 $01
	ld   [bc], a                                     ; $5c1f: $02
	ld   bc, $0102                                   ; $5c20: $01 $02 $01
	ld   [bc], a                                     ; $5c23: $02
	ld   bc, $0102                                   ; $5c24: $01 $02 $01
	ld   [bc], a                                     ; $5c27: $02
	ld   bc, $0102                                   ; $5c28: $01 $02 $01
	ld   [bc], a                                     ; $5c2b: $02
	nop                                              ; $5c2c: $00
	ld   bc, $0100                                   ; $5c2d: $01 $00 $01
	nop                                              ; $5c30: $00
	ld   bc, $0100                                   ; $5c31: $01 $00 $01
	nop                                              ; $5c34: $00
	ld   bc, $0100                                   ; $5c35: $01 $00 $01
	nop                                              ; $5c38: $00
	ld   bc, $0000                                   ; $5c39: $01 $00 $00
	nop                                              ; $5c3c: $00
	nop                                              ; $5c3d: $00
	nop                                              ; $5c3e: $00
	nop                                              ; $5c3f: $00
	nop                                              ; $5c40: $00
	nop                                              ; $5c41: $00
	nop                                              ; $5c42: $00
	nop                                              ; $5c43: $00
	nop                                              ; $5c44: $00
	nop                                              ; $5c45: $00
	nop                                              ; $5c46: $00
	nop                                              ; $5c47: $00
	nop                                              ; $5c48: $00
	nop                                              ; $5c49: $00
	nop                                              ; $5c4a: $00
	nop                                              ; $5c4b: $00
	add  b                                           ; $5c4c: $80
	add  b                                           ; $5c4d: $80
	add  b                                           ; $5c4e: $80
	add  b                                           ; $5c4f: $80
	add  b                                           ; $5c50: $80
	add  b                                           ; $5c51: $80
	add  b                                           ; $5c52: $80
	add  b                                           ; $5c53: $80
	add  b                                           ; $5c54: $80
	add  b                                           ; $5c55: $80
	ld   b, b                                        ; $5c56: $40
	ld   b, b                                        ; $5c57: $40
	nop                                              ; $5c58: $00
	nop                                              ; $5c59: $00
	nop                                              ; $5c5a: $00
	nop                                              ; $5c5b: $00
	nop                                              ; $5c5c: $00
	nop                                              ; $5c5d: $00
	add  b                                           ; $5c5e: $80
	add  b                                           ; $5c5f: $80
	ret  nz                                          ; $5c60: $c0

	ld   b, b                                        ; $5c61: $40
	ld   b, b                                        ; $5c62: $40
	ret  nz                                          ; $5c63: $c0

	ld   h, b                                        ; $5c64: $60
	and  b                                           ; $5c65: $a0
	ldh  [$e0], a                                    ; $5c66: $e0 $e0
	add  b                                           ; $5c68: $80
	add  b                                           ; $5c69: $80
	ldh  [$e0], a                                    ; $5c6a: $e0 $e0
	ldh  a, [$f0]                                    ; $5c6c: $f0 $f0
	jr   nc, jr_027_5ca0                             ; $5c6e: $30 $30

	nop                                              ; $5c70: $00
	nop                                              ; $5c71: $00
	nop                                              ; $5c72: $00
	nop                                              ; $5c73: $00
	nop                                              ; $5c74: $00
	nop                                              ; $5c75: $00
	nop                                              ; $5c76: $00
	nop                                              ; $5c77: $00
	nop                                              ; $5c78: $00
	nop                                              ; $5c79: $00
	nop                                              ; $5c7a: $00
	nop                                              ; $5c7b: $00
	add  b                                           ; $5c7c: $80
	add  b                                           ; $5c7d: $80
	add  b                                           ; $5c7e: $80
	add  b                                           ; $5c7f: $80
	nop                                              ; $5c80: $00
	nop                                              ; $5c81: $00
	nop                                              ; $5c82: $00
	nop                                              ; $5c83: $00
	nop                                              ; $5c84: $00
	nop                                              ; $5c85: $00
	nop                                              ; $5c86: $00
	nop                                              ; $5c87: $00
	nop                                              ; $5c88: $00
	nop                                              ; $5c89: $00
	nop                                              ; $5c8a: $00
	nop                                              ; $5c8b: $00
	nop                                              ; $5c8c: $00
	nop                                              ; $5c8d: $00
	nop                                              ; $5c8e: $00
	nop                                              ; $5c8f: $00
	nop                                              ; $5c90: $00
	nop                                              ; $5c91: $00
	nop                                              ; $5c92: $00
	nop                                              ; $5c93: $00
	nop                                              ; $5c94: $00
	nop                                              ; $5c95: $00
	ld   bc, $0101                                   ; $5c96: $01 $01 $01
	ld   bc, $0303                                   ; $5c99: $01 $03 $03
	inc  bc                                          ; $5c9c: $03
	inc  bc                                          ; $5c9d: $03
	inc  bc                                          ; $5c9e: $03
	inc  bc                                          ; $5c9f: $03

jr_027_5ca0:
	nop                                              ; $5ca0: $00
	nop                                              ; $5ca1: $00
	nop                                              ; $5ca2: $00
	nop                                              ; $5ca3: $00
	nop                                              ; $5ca4: $00
	nop                                              ; $5ca5: $00
	nop                                              ; $5ca6: $00
	nop                                              ; $5ca7: $00
	nop                                              ; $5ca8: $00
	nop                                              ; $5ca9: $00
	nop                                              ; $5caa: $00
	nop                                              ; $5cab: $00
	nop                                              ; $5cac: $00
	nop                                              ; $5cad: $00
	nop                                              ; $5cae: $00
	nop                                              ; $5caf: $00
	ld   a, l                                        ; $5cb0: $7d
	ld   a, l                                        ; $5cb1: $7d
	ld   b, e                                        ; $5cb2: $43
	ld   a, a                                        ; $5cb3: $7f
	ld   b, a                                        ; $5cb4: $47
	ld   a, a                                        ; $5cb5: $7f
	rst  $38                                         ; $5cb6: $ff
	rst  $38                                         ; $5cb7: $ff
	rst  $38                                         ; $5cb8: $ff
	cp   a                                           ; $5cb9: $bf
	rst  $38                                         ; $5cba: $ff
	cpl                                              ; $5cbb: $2f
	rst  $38                                         ; $5cbc: $ff
	ld   e, a                                        ; $5cbd: $5f
	rst  $38                                         ; $5cbe: $ff
	rst  $38                                         ; $5cbf: $ff
	nop                                              ; $5cc0: $00
	nop                                              ; $5cc1: $00
	nop                                              ; $5cc2: $00
	nop                                              ; $5cc3: $00
	nop                                              ; $5cc4: $00
	nop                                              ; $5cc5: $00
	nop                                              ; $5cc6: $00
	nop                                              ; $5cc7: $00
	nop                                              ; $5cc8: $00
	nop                                              ; $5cc9: $00
	nop                                              ; $5cca: $00
	nop                                              ; $5ccb: $00
	nop                                              ; $5ccc: $00
	nop                                              ; $5ccd: $00
	nop                                              ; $5cce: $00
	nop                                              ; $5ccf: $00
	ldh  a, [$f0]                                    ; $5cd0: $f0 $f0
	ld   [$88f8], sp                                 ; $5cd2: $08 $f8 $88
	ld   hl, sp-$38                                  ; $5cd5: $f8 $c8
	ld   hl, sp-$02                                  ; $5cd7: $f8 $fe
	cp   $f2                                         ; $5cd9: $fe $f2
	ld   e, [hl]                                     ; $5cdb: $5e
	ldh  a, [c]                                      ; $5cdc: $f2
	ld   e, [hl]                                     ; $5cdd: $5e
	rst  $30                                         ; $5cde: $f7
	rst  $38                                         ; $5cdf: $ff
	nop                                              ; $5ce0: $00
	nop                                              ; $5ce1: $00
	nop                                              ; $5ce2: $00
	nop                                              ; $5ce3: $00
	nop                                              ; $5ce4: $00
	nop                                              ; $5ce5: $00
	nop                                              ; $5ce6: $00
	nop                                              ; $5ce7: $00
	nop                                              ; $5ce8: $00
	nop                                              ; $5ce9: $00
	nop                                              ; $5cea: $00
	nop                                              ; $5ceb: $00
	nop                                              ; $5cec: $00
	nop                                              ; $5ced: $00
	nop                                              ; $5cee: $00
	nop                                              ; $5cef: $00
	nop                                              ; $5cf0: $00
	nop                                              ; $5cf1: $00
	nop                                              ; $5cf2: $00
	nop                                              ; $5cf3: $00
	nop                                              ; $5cf4: $00
	nop                                              ; $5cf5: $00
	db   $10                                         ; $5cf6: $10
	db   $10                                         ; $5cf7: $10
	jr   nc, jr_027_5d2a                             ; $5cf8: $30 $30

	ld   d, b                                        ; $5cfa: $50
	ld   [hl], b                                     ; $5cfb: $70
	add  b                                           ; $5cfc: $80
	ldh  a, [rP1]                                    ; $5cfd: $f0 $00
	ldh  a, [rTIMA]                                  ; $5cff: $f0 $05
	dec  b                                           ; $5d01: $05
	dec  b                                           ; $5d02: $05
	dec  b                                           ; $5d03: $05
	nop                                              ; $5d04: $00
	nop                                              ; $5d05: $00
	nop                                              ; $5d06: $00
	nop                                              ; $5d07: $00
	nop                                              ; $5d08: $00
	nop                                              ; $5d09: $00
	nop                                              ; $5d0a: $00
	nop                                              ; $5d0b: $00
	nop                                              ; $5d0c: $00
	nop                                              ; $5d0d: $00
	nop                                              ; $5d0e: $00
	nop                                              ; $5d0f: $00
	nop                                              ; $5d10: $00
	nop                                              ; $5d11: $00
	inc  sp                                          ; $5d12: $33
	inc  sp                                          ; $5d13: $33
	ld   e, l                                        ; $5d14: $5d
	ld   l, [hl]                                     ; $5d15: $6e
	ld   c, c                                        ; $5d16: $49
	halt                                             ; $5d17: $76
	ld   a, a                                        ; $5d18: $7f
	ld   b, b                                        ; $5d19: $40
	ld   h, l                                        ; $5d1a: $65
	ld   e, d                                        ; $5d1b: $5a
	inc  [hl]                                        ; $5d1c: $34
	dec  sp                                          ; $5d1d: $3b
	rrca                                             ; $5d1e: $0f
	rrca                                             ; $5d1f: $0f
	rst  $38                                         ; $5d20: $ff
	rst  $28                                         ; $5d21: $ef
	rst  $38                                         ; $5d22: $ff
	jp   $e7bd                                       ; $5d23: $c3 $bd $e7


	rst  $38                                         ; $5d26: $ff
	db   $e3                                         ; $5d27: $e3
	rst  $38                                         ; $5d28: $ff
	db   $e3                                         ; $5d29: $e3

jr_027_5d2a:
	rst  $38                                         ; $5d2a: $ff
	add  b                                           ; $5d2b: $80
	rst  $38                                         ; $5d2c: $ff
	sbc  a                                           ; $5d2d: $9f
	ld   a, a                                        ; $5d2e: $7f
	ld   d, h                                        ; $5d2f: $54
	ld   a, a                                        ; $5d30: $7f
	ld   a, b                                        ; $5d31: $78
	cp   a                                           ; $5d32: $bf
	ldh  a, [$3f]                                    ; $5d33: $f0 $3f
	db   $e3                                         ; $5d35: $e3
	inc  a                                           ; $5d36: $3c
	rst  $20                                         ; $5d37: $e7
	inc  a                                           ; $5d38: $3c
	rst  $38                                         ; $5d39: $ff
	ld   [$09ff], sp                                 ; $5d3a: $08 $ff $09
	rst  $38                                         ; $5d3d: $ff
	di                                               ; $5d3e: $f3
	rst  $38                                         ; $5d3f: $ff
	cp   $ff                                         ; $5d40: $fe $ff
	db   $fc                                         ; $5d42: $fc
	rst  $38                                         ; $5d43: $ff
	ld   a, d                                        ; $5d44: $7a
	rst  $38                                         ; $5d45: $ff
	ld   [hl], h                                     ; $5d46: $74
	rst  $38                                         ; $5d47: $ff
	add  sp, $7f                                     ; $5d48: $e8 $7f
	ld   sp, hl                                      ; $5d4a: $f9
	ld   a, a                                        ; $5d4b: $7f
	pop  af                                          ; $5d4c: $f1
	db   $fd                                         ; $5d4d: $fd
	pop  hl                                          ; $5d4e: $e1
	ld   a, c                                        ; $5d4f: $79
	pop  bc                                          ; $5d50: $c1
	ld   [hl], c                                     ; $5d51: $71
	sbc  c                                           ; $5d52: $99
	ld   sp, hl                                      ; $5d53: $f9
	xor  e                                           ; $5d54: $ab
	ei                                               ; $5d55: $fb
	daa                                              ; $5d56: $27
	rst  $38                                         ; $5d57: $ff
	and  l                                           ; $5d58: $a5
	rst  $38                                         ; $5d59: $ff
	ld   b, l                                        ; $5d5a: $45
	rst  $38                                         ; $5d5b: $ff
	db   $fc                                         ; $5d5c: $fc
	rst  $38                                         ; $5d5d: $ff
	rst  $38                                         ; $5d5e: $ff
	rst  $38                                         ; $5d5f: $ff
	nop                                              ; $5d60: $00
	ldh  [rP1], a                                    ; $5d61: $e0 $00
	ret  nz                                          ; $5d63: $c0

	nop                                              ; $5d64: $00
	add  b                                           ; $5d65: $80
	add  b                                           ; $5d66: $80
	add  b                                           ; $5d67: $80
	add  b                                           ; $5d68: $80
	add  b                                           ; $5d69: $80
	add  b                                           ; $5d6a: $80
	add  b                                           ; $5d6b: $80
	add  b                                           ; $5d6c: $80
	add  b                                           ; $5d6d: $80
	add  b                                           ; $5d6e: $80
	add  b                                           ; $5d6f: $80
	add  b                                           ; $5d70: $80
	add  b                                           ; $5d71: $80
	nop                                              ; $5d72: $00
	nop                                              ; $5d73: $00
	nop                                              ; $5d74: $00
	nop                                              ; $5d75: $00
	nop                                              ; $5d76: $00
	nop                                              ; $5d77: $00
	nop                                              ; $5d78: $00
	nop                                              ; $5d79: $00
	nop                                              ; $5d7a: $00
	nop                                              ; $5d7b: $00
	add  b                                           ; $5d7c: $80
	add  b                                           ; $5d7d: $80
	ret  nz                                          ; $5d7e: $c0

	ret  nz                                          ; $5d7f: $c0

	nop                                              ; $5d80: $00
	nop                                              ; $5d81: $00
	nop                                              ; $5d82: $00
	nop                                              ; $5d83: $00
	nop                                              ; $5d84: $00
	nop                                              ; $5d85: $00
	add  c                                           ; $5d86: $81
	nop                                              ; $5d87: $00
	add  c                                           ; $5d88: $81
	nop                                              ; $5d89: $00
	add  c                                           ; $5d8a: $81
	ld   [bc], a                                     ; $5d8b: $02
	add  e                                           ; $5d8c: $83
	dec  b                                           ; $5d8d: $05
	add  l                                           ; $5d8e: $85
	ld   bc, $4981                                   ; $5d8f: $01 $81 $49
	add  c                                           ; $5d92: $81
	ld   d, c                                        ; $5d93: $51
	add  e                                           ; $5d94: $83
	ld   h, e                                        ; $5d95: $63
	add  e                                           ; $5d96: $83
	ld   b, e                                        ; $5d97: $43
	add  a                                           ; $5d98: $87
	ld   b, $0f                                      ; $5d99: $06 $0f
	inc  c                                           ; $5d9b: $0c
	rra                                              ; $5d9c: $1f
	ld   e, $1f                                      ; $5d9d: $1e $1f
	rra                                              ; $5d9f: $1f
	ld   a, $07                                      ; $5da0: $3e $07
	ld   a, a                                        ; $5da2: $7f
	rrca                                             ; $5da3: $0f
	rst  $28                                         ; $5da4: $ef
	rra                                              ; $5da5: $1f
	jp   c, $923f                                    ; $5da6: $da $3f $92

	ld   a, a                                        ; $5da9: $7f
	inc  [hl]                                        ; $5daa: $34
	rst  $38                                         ; $5dab: $ff
	inc  h                                           ; $5dac: $24
	rst  $38                                         ; $5dad: $ff
	inc  h                                           ; $5dae: $24
	rst  $38                                         ; $5daf: $ff
	ld   b, l                                        ; $5db0: $45
	rst  $38                                         ; $5db1: $ff
	ld   c, c                                        ; $5db2: $49
	rst  $38                                         ; $5db3: $ff
	adc  c                                           ; $5db4: $89
	rst  $38                                         ; $5db5: $ff
	ret                                              ; $5db6: $c9


	rst  $38                                         ; $5db7: $ff
	or   $76                                         ; $5db8: $f6 $76
	ret  nz                                          ; $5dba: $c0

	ret  nz                                          ; $5dbb: $c0

	ret  nz                                          ; $5dbc: $c0

	ret  nz                                          ; $5dbd: $c0

	nop                                              ; $5dbe: $00
	nop                                              ; $5dbf: $00
	rrca                                             ; $5dc0: $0f
	db   $fc                                         ; $5dc1: $fc
	rst  $38                                         ; $5dc2: $ff
	ld   hl, sp-$01                                  ; $5dc3: $f8 $ff
	ld   sp, hl                                      ; $5dc5: $f9
	xor  a                                           ; $5dc6: $af
	rst  $38                                         ; $5dc7: $ff
	xor  [hl]                                        ; $5dc8: $ae
	cp   $af                                         ; $5dc9: $fe $af
	rst  $38                                         ; $5dcb: $ff
	xor  a                                           ; $5dcc: $af
	rst  $38                                         ; $5dcd: $ff
	dec  hl                                          ; $5dce: $2b
	ei                                               ; $5dcf: $fb
	dec  h                                           ; $5dd0: $25
	db   $fd                                         ; $5dd1: $fd
	inc  h                                           ; $5dd2: $24
	db   $fc                                         ; $5dd3: $fc
	inc  h                                           ; $5dd4: $24
	db   $fc                                         ; $5dd5: $fc
	inc  h                                           ; $5dd6: $24
	db   $fc                                         ; $5dd7: $fc
	db   $fc                                         ; $5dd8: $fc
	db   $fc                                         ; $5dd9: $fc
	ld   a, h                                        ; $5dda: $7c
	ld   b, h                                        ; $5ddb: $44
	ld   a, [hl]                                     ; $5ddc: $7e
	ld   a, [hl]                                     ; $5ddd: $7e
	ld   a, $3e                                      ; $5dde: $3e $3e
	ldh  [hScriptOpcodeParams], a                                    ; $5de0: $e0 $a0
	and  b                                           ; $5de2: $a0
	ldh  [$c0], a                                    ; $5de3: $e0 $c0
	ret  nz                                          ; $5de5: $c0

	nop                                              ; $5de6: $00
	nop                                              ; $5de7: $00
	nop                                              ; $5de8: $00
	nop                                              ; $5de9: $00
	nop                                              ; $5dea: $00
	nop                                              ; $5deb: $00
	nop                                              ; $5dec: $00
	nop                                              ; $5ded: $00
	add  b                                           ; $5dee: $80
	add  b                                           ; $5def: $80
	ret  nz                                          ; $5df0: $c0

	ret  nz                                          ; $5df1: $c0

	ret  nz                                          ; $5df2: $c0

	ret  nz                                          ; $5df3: $c0

	nop                                              ; $5df4: $00
	nop                                              ; $5df5: $00
	nop                                              ; $5df6: $00
	nop                                              ; $5df7: $00
	nop                                              ; $5df8: $00
	nop                                              ; $5df9: $00
	nop                                              ; $5dfa: $00
	nop                                              ; $5dfb: $00
	nop                                              ; $5dfc: $00
	nop                                              ; $5dfd: $00
	nop                                              ; $5dfe: $00
	nop                                              ; $5dff: $00
	nop                                              ; $5e00: $00
	nop                                              ; $5e01: $00
	nop                                              ; $5e02: $00
	nop                                              ; $5e03: $00
	nop                                              ; $5e04: $00
	nop                                              ; $5e05: $00
	nop                                              ; $5e06: $00
	nop                                              ; $5e07: $00
	nop                                              ; $5e08: $00
	nop                                              ; $5e09: $00
	nop                                              ; $5e0a: $00
	nop                                              ; $5e0b: $00
	nop                                              ; $5e0c: $00
	nop                                              ; $5e0d: $00
	nop                                              ; $5e0e: $00
	nop                                              ; $5e0f: $00
	nop                                              ; $5e10: $00
	nop                                              ; $5e11: $00
	nop                                              ; $5e12: $00
	nop                                              ; $5e13: $00
	nop                                              ; $5e14: $00
	nop                                              ; $5e15: $00
	ld   bc, $0101                                   ; $5e16: $01 $01 $01
	ld   bc, $0303                                   ; $5e19: $01 $03 $03
	inc  bc                                          ; $5e1c: $03
	inc  bc                                          ; $5e1d: $03
	inc  bc                                          ; $5e1e: $03
	inc  bc                                          ; $5e1f: $03
	nop                                              ; $5e20: $00
	nop                                              ; $5e21: $00
	nop                                              ; $5e22: $00
	nop                                              ; $5e23: $00
	nop                                              ; $5e24: $00
	nop                                              ; $5e25: $00
	nop                                              ; $5e26: $00
	nop                                              ; $5e27: $00
	nop                                              ; $5e28: $00
	nop                                              ; $5e29: $00
	nop                                              ; $5e2a: $00
	nop                                              ; $5e2b: $00
	nop                                              ; $5e2c: $00
	nop                                              ; $5e2d: $00
	nop                                              ; $5e2e: $00
	nop                                              ; $5e2f: $00
	ld   a, l                                        ; $5e30: $7d
	ld   a, l                                        ; $5e31: $7d
	ld   b, e                                        ; $5e32: $43
	ld   a, a                                        ; $5e33: $7f
	ld   b, a                                        ; $5e34: $47
	ld   a, a                                        ; $5e35: $7f
	rst  $38                                         ; $5e36: $ff
	rst  $38                                         ; $5e37: $ff
	rst  $38                                         ; $5e38: $ff
	cp   a                                           ; $5e39: $bf
	rst  $38                                         ; $5e3a: $ff
	cpl                                              ; $5e3b: $2f
	rst  $38                                         ; $5e3c: $ff
	ld   e, a                                        ; $5e3d: $5f
	rst  $38                                         ; $5e3e: $ff
	rst  $38                                         ; $5e3f: $ff
	nop                                              ; $5e40: $00
	nop                                              ; $5e41: $00
	nop                                              ; $5e42: $00
	nop                                              ; $5e43: $00
	nop                                              ; $5e44: $00
	nop                                              ; $5e45: $00
	nop                                              ; $5e46: $00
	nop                                              ; $5e47: $00
	nop                                              ; $5e48: $00
	nop                                              ; $5e49: $00
	nop                                              ; $5e4a: $00
	nop                                              ; $5e4b: $00
	nop                                              ; $5e4c: $00
	nop                                              ; $5e4d: $00
	nop                                              ; $5e4e: $00
	nop                                              ; $5e4f: $00
	ldh  a, [$f0]                                    ; $5e50: $f0 $f0
	ld   [$88f8], sp                                 ; $5e52: $08 $f8 $88
	ld   hl, sp-$38                                  ; $5e55: $f8 $c8
	ld   hl, sp-$02                                  ; $5e57: $f8 $fe
	cp   $f2                                         ; $5e59: $fe $f2
	ld   e, [hl]                                     ; $5e5b: $5e
	ldh  a, [c]                                      ; $5e5c: $f2
	ld   e, [hl]                                     ; $5e5d: $5e
	rst  $30                                         ; $5e5e: $f7
	rst  $38                                         ; $5e5f: $ff
	nop                                              ; $5e60: $00
	nop                                              ; $5e61: $00
	nop                                              ; $5e62: $00
	nop                                              ; $5e63: $00
	nop                                              ; $5e64: $00
	nop                                              ; $5e65: $00
	nop                                              ; $5e66: $00
	nop                                              ; $5e67: $00
	nop                                              ; $5e68: $00
	nop                                              ; $5e69: $00
	nop                                              ; $5e6a: $00
	nop                                              ; $5e6b: $00
	nop                                              ; $5e6c: $00
	nop                                              ; $5e6d: $00
	nop                                              ; $5e6e: $00
	nop                                              ; $5e6f: $00
	nop                                              ; $5e70: $00
	nop                                              ; $5e71: $00
	nop                                              ; $5e72: $00
	nop                                              ; $5e73: $00
	nop                                              ; $5e74: $00
	nop                                              ; $5e75: $00
	db   $10                                         ; $5e76: $10
	db   $10                                         ; $5e77: $10
	jr   nc, jr_027_5eaa                             ; $5e78: $30 $30

	ld   d, b                                        ; $5e7a: $50
	ld   [hl], b                                     ; $5e7b: $70
	and  b                                           ; $5e7c: $a0
	ldh  [rLCDC], a                                  ; $5e7d: $e0 $40
	ret  nz                                          ; $5e7f: $c0

	dec  b                                           ; $5e80: $05
	dec  b                                           ; $5e81: $05
	dec  b                                           ; $5e82: $05
	dec  b                                           ; $5e83: $05
	nop                                              ; $5e84: $00
	nop                                              ; $5e85: $00
	nop                                              ; $5e86: $00
	nop                                              ; $5e87: $00
	nop                                              ; $5e88: $00
	nop                                              ; $5e89: $00
	nop                                              ; $5e8a: $00
	nop                                              ; $5e8b: $00
	nop                                              ; $5e8c: $00
	nop                                              ; $5e8d: $00
	nop                                              ; $5e8e: $00
	nop                                              ; $5e8f: $00
	nop                                              ; $5e90: $00
	nop                                              ; $5e91: $00
	inc  bc                                          ; $5e92: $03
	inc  bc                                          ; $5e93: $03
	dec  e                                           ; $5e94: $1d
	ld   e, $79                                      ; $5e95: $1e $79
	ld   h, [hl]                                     ; $5e97: $66
	ld   c, a                                        ; $5e98: $4f
	ld   [hl], b                                     ; $5e99: $70
	ld   [hl], l                                     ; $5e9a: $75
	ld   c, d                                        ; $5e9b: $4a
	ld   h, h                                        ; $5e9c: $64
	ld   e, e                                        ; $5e9d: $5b
	ccf                                              ; $5e9e: $3f
	ccf                                              ; $5e9f: $3f
	rst  $38                                         ; $5ea0: $ff
	rst  $28                                         ; $5ea1: $ef
	rst  $38                                         ; $5ea2: $ff
	jp   $e7bd                                       ; $5ea3: $c3 $bd $e7


	rst  $38                                         ; $5ea6: $ff
	db   $e3                                         ; $5ea7: $e3
	rst  $38                                         ; $5ea8: $ff
	db   $e3                                         ; $5ea9: $e3

jr_027_5eaa:
	rst  $38                                         ; $5eaa: $ff
	add  b                                           ; $5eab: $80
	rst  $38                                         ; $5eac: $ff
	sbc  a                                           ; $5ead: $9f
	ld   a, a                                        ; $5eae: $7f
	ld   d, h                                        ; $5eaf: $54
	ld   a, a                                        ; $5eb0: $7f
	ld   a, b                                        ; $5eb1: $78
	cp   a                                           ; $5eb2: $bf
	ldh  a, [$3f]                                    ; $5eb3: $f0 $3f
	db   $e3                                         ; $5eb5: $e3
	dec  a                                           ; $5eb6: $3d
	rst  $20                                         ; $5eb7: $e7
	inc  a                                           ; $5eb8: $3c
	rst  $38                                         ; $5eb9: $ff
	ld   [$0fff], sp                                 ; $5eba: $08 $ff $0f
	rst  $38                                         ; $5ebd: $ff
	rst  $38                                         ; $5ebe: $ff
	rst  $38                                         ; $5ebf: $ff
	cp   $ff                                         ; $5ec0: $fe $ff
	db   $fd                                         ; $5ec2: $fd
	rst  $38                                         ; $5ec3: $ff
	ld   a, e                                        ; $5ec4: $7b
	rst  $38                                         ; $5ec5: $ff
	ld   [hl], a                                     ; $5ec6: $77
	rst  $38                                         ; $5ec7: $ff
	rst  $28                                         ; $5ec8: $ef
	ld   a, a                                        ; $5ec9: $7f
	ei                                               ; $5eca: $fb
	ld   a, e                                        ; $5ecb: $7b
	pop  af                                          ; $5ecc: $f1
	pop  af                                          ; $5ecd: $f1
	pop  hl                                          ; $5ece: $e1
	ld   h, c                                        ; $5ecf: $61
	pop  bc                                          ; $5ed0: $c1
	ld   b, c                                        ; $5ed1: $41
	or   c                                           ; $5ed2: $b1
	pop  af                                          ; $5ed3: $f1
	xor  c                                           ; $5ed4: $a9
	ld   sp, hl                                      ; $5ed5: $f9
	ld   d, [hl]                                     ; $5ed6: $56
	cp   $d5                                         ; $5ed7: $fe $d5
	rst  $38                                         ; $5ed9: $ff
	ld   h, l                                        ; $5eda: $65
	rst  $38                                         ; $5edb: $ff
	db   $fc                                         ; $5edc: $fc
	rst  $38                                         ; $5edd: $ff
	rst  $38                                         ; $5ede: $ff
	rst  $38                                         ; $5edf: $ff
	add  b                                           ; $5ee0: $80
	add  b                                           ; $5ee1: $80
	nop                                              ; $5ee2: $00
	nop                                              ; $5ee3: $00
	nop                                              ; $5ee4: $00
	nop                                              ; $5ee5: $00
	add  b                                           ; $5ee6: $80
	add  b                                           ; $5ee7: $80
	add  b                                           ; $5ee8: $80
	add  b                                           ; $5ee9: $80
	add  b                                           ; $5eea: $80
	add  b                                           ; $5eeb: $80
	add  b                                           ; $5eec: $80
	add  b                                           ; $5eed: $80
	add  b                                           ; $5eee: $80
	add  b                                           ; $5eef: $80
	add  b                                           ; $5ef0: $80
	add  b                                           ; $5ef1: $80
	nop                                              ; $5ef2: $00
	nop                                              ; $5ef3: $00
	nop                                              ; $5ef4: $00
	nop                                              ; $5ef5: $00
	nop                                              ; $5ef6: $00
	nop                                              ; $5ef7: $00
	nop                                              ; $5ef8: $00
	nop                                              ; $5ef9: $00
	nop                                              ; $5efa: $00
	nop                                              ; $5efb: $00
	add  b                                           ; $5efc: $80
	add  b                                           ; $5efd: $80
	ret  nz                                          ; $5efe: $c0

	ret  nz                                          ; $5eff: $c0

	nop                                              ; $5f00: $00
	nop                                              ; $5f01: $00
	nop                                              ; $5f02: $00
	nop                                              ; $5f03: $00
	nop                                              ; $5f04: $00
	nop                                              ; $5f05: $00
	nop                                              ; $5f06: $00
	nop                                              ; $5f07: $00
	nop                                              ; $5f08: $00
	nop                                              ; $5f09: $00
	nop                                              ; $5f0a: $00
	nop                                              ; $5f0b: $00
	ld   bc, $0101                                   ; $5f0c: $01 $01 $01
	ld   bc, $0101                                   ; $5f0f: $01 $01 $01
	ld   bc, $0301                                   ; $5f12: $01 $01 $03
	inc  bc                                          ; $5f15: $03
	inc  bc                                          ; $5f16: $03
	inc  bc                                          ; $5f17: $03
	rlca                                             ; $5f18: $07
	ld   b, $0f                                      ; $5f19: $06 $0f
	inc  c                                           ; $5f1b: $0c
	rra                                              ; $5f1c: $1f
	ld   e, $1f                                      ; $5f1d: $1e $1f
	rra                                              ; $5f1f: $1f
	db   $10                                         ; $5f20: $10
	rra                                              ; $5f21: $1f
	ccf                                              ; $5f22: $3f
	ccf                                              ; $5f23: $3f
	cpl                                              ; $5f24: $2f
	ccf                                              ; $5f25: $3f
	ld   e, d                                        ; $5f26: $5a
	ld   a, a                                        ; $5f27: $7f
	sub  d                                           ; $5f28: $92
	rst  $38                                         ; $5f29: $ff
	or   h                                           ; $5f2a: $b4
	rst  $38                                         ; $5f2b: $ff
	inc  h                                           ; $5f2c: $24
	rst  $38                                         ; $5f2d: $ff
	inc  h                                           ; $5f2e: $24
	rst  $38                                         ; $5f2f: $ff
	ld   b, l                                        ; $5f30: $45
	rst  $38                                         ; $5f31: $ff
	ld   c, c                                        ; $5f32: $49
	rst  $38                                         ; $5f33: $ff
	adc  c                                           ; $5f34: $89
	rst  $38                                         ; $5f35: $ff
	ret                                              ; $5f36: $c9


	rst  $38                                         ; $5f37: $ff
	or   $76                                         ; $5f38: $f6 $76
	ret  nz                                          ; $5f3a: $c0

	ret  nz                                          ; $5f3b: $c0

	ret  nz                                          ; $5f3c: $c0

	ret  nz                                          ; $5f3d: $c0

	nop                                              ; $5f3e: $00
	nop                                              ; $5f3f: $00
	rrca                                             ; $5f40: $0f
	db   $fc                                         ; $5f41: $fc
	rst  $38                                         ; $5f42: $ff
	ld   hl, sp-$01                                  ; $5f43: $f8 $ff
	ld   sp, hl                                      ; $5f45: $f9
	xor  a                                           ; $5f46: $af
	rst  $38                                         ; $5f47: $ff
	xor  [hl]                                        ; $5f48: $ae
	cp   $af                                         ; $5f49: $fe $af
	rst  $38                                         ; $5f4b: $ff
	xor  a                                           ; $5f4c: $af
	rst  $38                                         ; $5f4d: $ff
	dec  hl                                          ; $5f4e: $2b
	ei                                               ; $5f4f: $fb
	dec  h                                           ; $5f50: $25
	db   $fd                                         ; $5f51: $fd
	inc  h                                           ; $5f52: $24
	db   $fc                                         ; $5f53: $fc
	inc  h                                           ; $5f54: $24
	db   $fc                                         ; $5f55: $fc
	inc  h                                           ; $5f56: $24
	db   $fc                                         ; $5f57: $fc
	db   $fc                                         ; $5f58: $fc
	db   $fc                                         ; $5f59: $fc
	ld   a, h                                        ; $5f5a: $7c
	ld   b, h                                        ; $5f5b: $44
	ld   a, [hl]                                     ; $5f5c: $7e
	ld   a, [hl]                                     ; $5f5d: $7e
	ld   a, $3e                                      ; $5f5e: $3e $3e
	ldh  [hScriptOpcodeParams], a                                    ; $5f60: $e0 $a0
	and  b                                           ; $5f62: $a0
	ldh  [$c0], a                                    ; $5f63: $e0 $c0
	ret  nz                                          ; $5f65: $c0

	nop                                              ; $5f66: $00
	nop                                              ; $5f67: $00
	nop                                              ; $5f68: $00
	nop                                              ; $5f69: $00
	nop                                              ; $5f6a: $00
	nop                                              ; $5f6b: $00
	nop                                              ; $5f6c: $00
	nop                                              ; $5f6d: $00
	add  b                                           ; $5f6e: $80
	add  b                                           ; $5f6f: $80
	ret  nz                                          ; $5f70: $c0

	ret  nz                                          ; $5f71: $c0

	ret  nz                                          ; $5f72: $c0

	ret  nz                                          ; $5f73: $c0

	nop                                              ; $5f74: $00
	nop                                              ; $5f75: $00
	nop                                              ; $5f76: $00
	nop                                              ; $5f77: $00
	nop                                              ; $5f78: $00
	nop                                              ; $5f79: $00
	nop                                              ; $5f7a: $00
	nop                                              ; $5f7b: $00
	nop                                              ; $5f7c: $00
	nop                                              ; $5f7d: $00
	nop                                              ; $5f7e: $00
	nop                                              ; $5f7f: $00
	nop                                              ; $5f80: $00
	nop                                              ; $5f81: $00
	nop                                              ; $5f82: $00
	nop                                              ; $5f83: $00
	nop                                              ; $5f84: $00
	nop                                              ; $5f85: $00
	nop                                              ; $5f86: $00
	nop                                              ; $5f87: $00
	nop                                              ; $5f88: $00
	nop                                              ; $5f89: $00
	nop                                              ; $5f8a: $00
	nop                                              ; $5f8b: $00
	nop                                              ; $5f8c: $00
	nop                                              ; $5f8d: $00
	nop                                              ; $5f8e: $00
	nop                                              ; $5f8f: $00
	nop                                              ; $5f90: $00
	nop                                              ; $5f91: $00
	nop                                              ; $5f92: $00
	nop                                              ; $5f93: $00
	nop                                              ; $5f94: $00
	nop                                              ; $5f95: $00
	nop                                              ; $5f96: $00
	nop                                              ; $5f97: $00
	nop                                              ; $5f98: $00
	nop                                              ; $5f99: $00
	rra                                              ; $5f9a: $1f
	nop                                              ; $5f9b: $00
	rst  $38                                         ; $5f9c: $ff
	nop                                              ; $5f9d: $00
	rst  $38                                         ; $5f9e: $ff
	nop                                              ; $5f9f: $00
	nop                                              ; $5fa0: $00
	nop                                              ; $5fa1: $00
	nop                                              ; $5fa2: $00
	nop                                              ; $5fa3: $00
	nop                                              ; $5fa4: $00
	nop                                              ; $5fa5: $00
	nop                                              ; $5fa6: $00
	nop                                              ; $5fa7: $00
	nop                                              ; $5fa8: $00
	nop                                              ; $5fa9: $00
	nop                                              ; $5faa: $00
	nop                                              ; $5fab: $00
	nop                                              ; $5fac: $00
	nop                                              ; $5fad: $00
	nop                                              ; $5fae: $00
	nop                                              ; $5faf: $00
	nop                                              ; $5fb0: $00
	nop                                              ; $5fb1: $00
	ld   a, l                                        ; $5fb2: $7d
	ld   a, l                                        ; $5fb3: $7d
	ld   b, e                                        ; $5fb4: $43
	ld   a, a                                        ; $5fb5: $7f
	rst  ToBoot                                         ; $5fb6: $c7
	rst  $38                                         ; $5fb7: $ff
	rst  $38                                         ; $5fb8: $ff
	rst  $38                                         ; $5fb9: $ff
	rst  $38                                         ; $5fba: $ff
	nop                                              ; $5fbb: $00
	rst  $38                                         ; $5fbc: $ff
	inc  bc                                          ; $5fbd: $03
	rst  $38                                         ; $5fbe: $ff
	inc  e                                           ; $5fbf: $1c
	nop                                              ; $5fc0: $00
	nop                                              ; $5fc1: $00
	nop                                              ; $5fc2: $00
	nop                                              ; $5fc3: $00
	nop                                              ; $5fc4: $00
	nop                                              ; $5fc5: $00
	nop                                              ; $5fc6: $00
	nop                                              ; $5fc7: $00
	nop                                              ; $5fc8: $00
	nop                                              ; $5fc9: $00
	nop                                              ; $5fca: $00
	nop                                              ; $5fcb: $00
	nop                                              ; $5fcc: $00
	nop                                              ; $5fcd: $00
	nop                                              ; $5fce: $00
	nop                                              ; $5fcf: $00
	nop                                              ; $5fd0: $00
	nop                                              ; $5fd1: $00
	ldh  a, [$f0]                                    ; $5fd2: $f0 $f0
	ld   [$88f8], sp                                 ; $5fd4: $08 $f8 $88
	ld   hl, sp-$38                                  ; $5fd7: $f8 $c8
	ld   hl, sp-$04                                  ; $5fd9: $f8 $fc
	inc  e                                           ; $5fdb: $1c
	and  $fe                                         ; $5fdc: $e6 $fe
	and  $be                                         ; $5fde: $e6 $be
	ld   bc, $03ff                                   ; $5fe0: $01 $ff $03
	di                                               ; $5fe3: $f3
	inc  bc                                          ; $5fe4: $03
	add  e                                           ; $5fe5: $83
	inc  bc                                          ; $5fe6: $03
	inc  bc                                          ; $5fe7: $03
	ld   bc, $0101                                   ; $5fe8: $01 $01 $01
	ld   bc, $0101                                   ; $5feb: $01 $01 $01
	ld   bc, $0101                                   ; $5fee: $01 $01 $01
	ld   bc, $0000                                   ; $5ff1: $01 $00 $00
	nop                                              ; $5ff4: $00
	nop                                              ; $5ff5: $00
	nop                                              ; $5ff6: $00
	nop                                              ; $5ff7: $00
	nop                                              ; $5ff8: $00
	nop                                              ; $5ff9: $00
	nop                                              ; $5ffa: $00
	nop                                              ; $5ffb: $00
	dec  e                                           ; $5ffc: $1d
	dec  e                                           ; $5ffd: $1d
	ccf                                              ; $5ffe: $3f
	scf                                              ; $5fff: $37
	rst  $38                                         ; $6000: $ff
	rst  JumpTable                                         ; $6001: $df
	rst  $38                                         ; $6002: $ff
	sbc  a                                           ; $6003: $9f
	rst  $38                                         ; $6004: $ff
	adc  a                                           ; $6005: $8f
	rst  $38                                         ; $6006: $ff
	dec  e                                           ; $6007: $1d
	db   $eb                                         ; $6008: $eb
	cp   [hl]                                        ; $6009: $be
	ei                                               ; $600a: $fb
	inc  e                                           ; $600b: $1c
	rst  $38                                         ; $600c: $ff
	jr   @+$01                                       ; $600d: $18 $ff

	nop                                              ; $600f: $00
	rst  $38                                         ; $6010: $ff
	add  c                                           ; $6011: $81
	ld   a, a                                        ; $6012: $7f
	ld   a, a                                        ; $6013: $7f
	jr   c, jr_027_6045                              ; $6014: $38 $2f

	ld   e, a                                        ; $6016: $5f
	ld   a, a                                        ; $6017: $7f
	or   b                                           ; $6018: $b0
	rst  $38                                         ; $6019: $ff
	ret  nc                                          ; $601a: $d0

	rst  $38                                         ; $601b: $ff
	ldh  [rIE], a                                    ; $601c: $e0 $ff
	nop                                              ; $601e: $00
	rst  $38                                         ; $601f: $ff
	rst  $20                                         ; $6020: $e7
	rst  $38                                         ; $6021: $ff
	rst  $20                                         ; $6022: $e7
	rst  $38                                         ; $6023: $ff
	rst  $20                                         ; $6024: $e7
	rst  $38                                         ; $6025: $ff
	push af                                          ; $6026: $f5
	db   $fd                                         ; $6027: $fd
	ld   sp, hl                                      ; $6028: $f9
	ret                                              ; $6029: $c9


	ld   hl, sp-$38                                  ; $602a: $f8 $c8
	ld   hl, sp-$28                                  ; $602c: $f8 $d8
	ldh  a, [$f0]                                    ; $602e: $f0 $f0
	ret  nz                                          ; $6030: $c0

	ret  nz                                          ; $6031: $c0

	nop                                              ; $6032: $00
	nop                                              ; $6033: $00
	ret  nz                                          ; $6034: $c0

	ret  nz                                          ; $6035: $c0

	ret  nz                                          ; $6036: $c0

	ld   b, b                                        ; $6037: $40
	ldh  [hScriptOpcodeParams], a                                    ; $6038: $e0 $a0
	ld   hl, sp-$48                                  ; $603a: $f8 $b8
	db   $fc                                         ; $603c: $fc
	ld   a, h                                        ; $603d: $7c
	db   $fc                                         ; $603e: $fc
	inc  a                                           ; $603f: $3c
	ccf                                              ; $6040: $3f
	ld   hl, $203f                                   ; $6041: $21 $3f $20
	rra                                              ; $6044: $1f

jr_027_6045:
	rra                                              ; $6045: $1f
	nop                                              ; $6046: $00
	nop                                              ; $6047: $00
	nop                                              ; $6048: $00
	nop                                              ; $6049: $00
	nop                                              ; $604a: $00
	nop                                              ; $604b: $00
	ld   bc, $0101                                   ; $604c: $01 $01 $01
	ld   bc, $0101                                   ; $604f: $01 $01 $01
	ld   bc, $0101                                   ; $6052: $01 $01 $01
	ld   bc, $0000                                   ; $6055: $01 $00 $00
	nop                                              ; $6058: $00
	nop                                              ; $6059: $00
	nop                                              ; $605a: $00
	nop                                              ; $605b: $00
	nop                                              ; $605c: $00
	nop                                              ; $605d: $00
	nop                                              ; $605e: $00
	nop                                              ; $605f: $00
	db   $fc                                         ; $6060: $fc
	inc  bc                                          ; $6061: $03
	xor  $91                                         ; $6062: $ee $91
	set  6, h                                        ; $6064: $cb $f4
	cp   c                                           ; $6066: $b9
	cp   $a7                                         ; $6067: $fe $a7
	cp   $a3                                         ; $6069: $fe $a3
	rst  $38                                         ; $606b: $ff
	ld   [hl], d                                     ; $606c: $72
	rst  $38                                         ; $606d: $ff
	ld   d, d                                        ; $606e: $52
	rst  $38                                         ; $606f: $ff
	ld   d, d                                        ; $6070: $52
	rst  $38                                         ; $6071: $ff
	ld   c, c                                        ; $6072: $49
	rst  $38                                         ; $6073: $ff
	ld   d, h                                        ; $6074: $54
	rst  $38                                         ; $6075: $ff
	sub  e                                           ; $6076: $93
	rst  $38                                         ; $6077: $ff
	rst  $38                                         ; $6078: $ff
	db   $fc                                         ; $6079: $fc
	ld   a, a                                        ; $607a: $7f
	ld   b, a                                        ; $607b: $47
	ei                                               ; $607c: $fb
	db   $eb                                         ; $607d: $eb
	ldh  a, [$f0]                                    ; $607e: $f0 $f0
	call c, $fc3c                                    ; $6080: $dc $3c $fc
	inc  e                                           ; $6083: $1c
	inc  l                                           ; $6084: $2c
	db   $ec                                         ; $6085: $ec
	ld   h, b                                        ; $6086: $60
	and  b                                           ; $6087: $a0
	ldh  a, [rSVBK]                                  ; $6088: $f0 $70
	db   $fc                                         ; $608a: $fc
	db   $fc                                         ; $608b: $fc
	ld   e, a                                        ; $608c: $5f
	rst  $38                                         ; $608d: $ff
	ld   c, a                                        ; $608e: $4f
	rst  $38                                         ; $608f: $ff
	ld   c, b                                        ; $6090: $48
	ld   hl, sp+$24                                  ; $6091: $f8 $24
	db   $fc                                         ; $6093: $fc
	and  h                                           ; $6094: $a4
	db   $fc                                         ; $6095: $fc
	db   $ec                                         ; $6096: $ec
	ld   a, h                                        ; $6097: $7c
	ldh  a, [$30]                                    ; $6098: $f0 $30
	ret  nz                                          ; $609a: $c0

	ret  nz                                          ; $609b: $c0

	ret  nz                                          ; $609c: $c0

	ret  nz                                          ; $609d: $c0

	nop                                              ; $609e: $00
	nop                                              ; $609f: $00
	nop                                              ; $60a0: $00
	nop                                              ; $60a1: $00
	nop                                              ; $60a2: $00
	nop                                              ; $60a3: $00
	nop                                              ; $60a4: $00
	nop                                              ; $60a5: $00
	nop                                              ; $60a6: $00
	nop                                              ; $60a7: $00
	nop                                              ; $60a8: $00
	nop                                              ; $60a9: $00
	nop                                              ; $60aa: $00
	nop                                              ; $60ab: $00
	nop                                              ; $60ac: $00
	nop                                              ; $60ad: $00
	nop                                              ; $60ae: $00
	nop                                              ; $60af: $00
	nop                                              ; $60b0: $00
	nop                                              ; $60b1: $00
	nop                                              ; $60b2: $00
	nop                                              ; $60b3: $00
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
	inc  bc                                          ; $60be: $03
	nop                                              ; $60bf: $00
	rrca                                             ; $60c0: $0f
	nop                                              ; $60c1: $00
	rra                                              ; $60c2: $1f
	nop                                              ; $60c3: $00
	ccf                                              ; $60c4: $3f
	nop                                              ; $60c5: $00
	ld   a, [hl]                                     ; $60c6: $7e
	nop                                              ; $60c7: $00
	ld   a, h                                        ; $60c8: $7c
	nop                                              ; $60c9: $00
	ld   hl, sp+$00                                  ; $60ca: $f8 $00
	ldh  a, [rP1]                                    ; $60cc: $f0 $00
	ldh  a, [rP1]                                    ; $60ce: $f0 $00
	ldh  [rP1], a                                    ; $60d0: $e0 $00
	ldh  [rP1], a                                    ; $60d2: $e0 $00
	ldh  a, [rP1]                                    ; $60d4: $f0 $00
	ld   [hl], b                                     ; $60d6: $70
	nop                                              ; $60d7: $00
	jr   c, jr_027_60da                              ; $60d8: $38 $00

jr_027_60da:
	inc  c                                           ; $60da: $0c
	nop                                              ; $60db: $00
	inc  bc                                          ; $60dc: $03
	nop                                              ; $60dd: $00
	nop                                              ; $60de: $00
	nop                                              ; $60df: $00
	nop                                              ; $60e0: $00
	nop                                              ; $60e1: $00
	nop                                              ; $60e2: $00
	nop                                              ; $60e3: $00
	nop                                              ; $60e4: $00
	nop                                              ; $60e5: $00
	nop                                              ; $60e6: $00
	nop                                              ; $60e7: $00
	nop                                              ; $60e8: $00
	nop                                              ; $60e9: $00
	nop                                              ; $60ea: $00
	nop                                              ; $60eb: $00
	nop                                              ; $60ec: $00
	nop                                              ; $60ed: $00
	nop                                              ; $60ee: $00
	nop                                              ; $60ef: $00
	add  b                                           ; $60f0: $80
	add  b                                           ; $60f1: $80
	ret  nz                                          ; $60f2: $c0

	ret  nz                                          ; $60f3: $c0

	ldh  [$e0], a                                    ; $60f4: $e0 $e0
	pop  hl                                          ; $60f6: $e1
	pop  hl                                          ; $60f7: $e1
	cp   $fe                                         ; $60f8: $fe $fe
	ld   hl, sp-$08                                  ; $60fa: $f8 $f8
	ld   c, $0e                                      ; $60fc: $0e $0e
	nop                                              ; $60fe: $00
	nop                                              ; $60ff: $00
	nop                                              ; $6100: $00
	nop                                              ; $6101: $00
	nop                                              ; $6102: $00
	nop                                              ; $6103: $00
	nop                                              ; $6104: $00
	nop                                              ; $6105: $00
	nop                                              ; $6106: $00
	nop                                              ; $6107: $00
	nop                                              ; $6108: $00
	nop                                              ; $6109: $00
	nop                                              ; $610a: $00
	nop                                              ; $610b: $00
	nop                                              ; $610c: $00
	nop                                              ; $610d: $00
	nop                                              ; $610e: $00
	nop                                              ; $610f: $00
	nop                                              ; $6110: $00
	nop                                              ; $6111: $00
	nop                                              ; $6112: $00
	nop                                              ; $6113: $00
	nop                                              ; $6114: $00
	nop                                              ; $6115: $00
	ld   bc, $0101                                   ; $6116: $01 $01 $01
	ld   bc, $0303                                   ; $6119: $01 $03 $03
	rlca                                             ; $611c: $07
	rlca                                             ; $611d: $07
	rrca                                             ; $611e: $0f
	dec  c                                           ; $611f: $0d
	nop                                              ; $6120: $00
	nop                                              ; $6121: $00
	nop                                              ; $6122: $00
	nop                                              ; $6123: $00
	nop                                              ; $6124: $00
	nop                                              ; $6125: $00
	nop                                              ; $6126: $00
	nop                                              ; $6127: $00
	nop                                              ; $6128: $00
	nop                                              ; $6129: $00
	nop                                              ; $612a: $00
	nop                                              ; $612b: $00
	nop                                              ; $612c: $00
	nop                                              ; $612d: $00
	nop                                              ; $612e: $00
	nop                                              ; $612f: $00
	nop                                              ; $6130: $00
	nop                                              ; $6131: $00
	nop                                              ; $6132: $00
	nop                                              ; $6133: $00
	nop                                              ; $6134: $00
	nop                                              ; $6135: $00
	rst  $30                                         ; $6136: $f7
	rst  $30                                         ; $6137: $f7
	inc  c                                           ; $6138: $0c
	rst  $38                                         ; $6139: $ff

jr_027_613a:
	ld   e, $ff                                      ; $613a: $1e $ff

jr_027_613c:
	rst  $38                                         ; $613c: $ff
	rst  $38                                         ; $613d: $ff

jr_027_613e:
	rst  $38                                         ; $613e: $ff
	db   $ed                                         ; $613f: $ed
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
	ret  nz                                          ; $6156: $c0

	ret  nz                                          ; $6157: $c0

	jr   nz, jr_027_613a                             ; $6158: $20 $e0

	jr   nz, jr_027_613c                             ; $615a: $20 $e0

	jr   nz, jr_027_613e                             ; $615c: $20 $e0

	ldh  a, [$f0]                                    ; $615e: $f0 $f0
	dec  de                                          ; $6160: $1b
	rra                                              ; $6161: $1f
	rra                                              ; $6162: $1f
	ld   e, $3f                                      ; $6163: $1e $3f
	ld   a, $2f                                      ; $6165: $3e $2f
	ld   l, $2f                                      ; $6167: $2e $2f
	ld   l, $0f                                      ; $6169: $2e $0f
	inc  c                                           ; $616b: $0c
	rlca                                             ; $616c: $07
	ld   b, $07                                      ; $616d: $06 $07
	inc  b                                           ; $616f: $04
	rlca                                             ; $6170: $07
	inc  b                                           ; $6171: $04
	rlca                                             ; $6172: $07
	inc  b                                           ; $6173: $04
	inc  bc                                          ; $6174: $03
	ld   [bc], a                                     ; $6175: $02
	ld   bc, $0201                                   ; $6176: $01 $01 $02
	inc  bc                                          ; $6179: $03
	inc  b                                           ; $617a: $04
	rlca                                             ; $617b: $07
	inc  c                                           ; $617c: $0c
	rrca                                             ; $617d: $0f
	jr   jr_027_619f                                 ; $617e: $18 $1f

	and  $ff                                         ; $6180: $e6 $ff
	ldh  a, [c]                                      ; $6182: $f2
	rst  $38                                         ; $6183: $ff
	rst  $38                                         ; $6184: $ff
	rst  $38                                         ; $6185: $ff
	rst  $38                                         ; $6186: $ff
	ld   a, a                                        ; $6187: $7f
	rst  $38                                         ; $6188: $ff
	ccf                                              ; $6189: $3f
	rst  $38                                         ; $618a: $ff
	ld   [hl], a                                     ; $618b: $77
	xor  a                                           ; $618c: $af
	ei                                               ; $618d: $fb
	rst  $28                                         ; $618e: $ef
	ld   [hl], e                                     ; $618f: $73
	rst  $38                                         ; $6190: $ff
	ld   h, e                                        ; $6191: $63
	rst  $38                                         ; $6192: $ff
	inc  bc                                          ; $6193: $03
	cp   $0f                                         ; $6194: $fe $0f
	ldh  a, [rIE]                                    ; $6196: $f0 $ff
	add  b                                           ; $6198: $80
	rst  $38                                         ; $6199: $ff

jr_027_619a:
	ld   b, b                                        ; $619a: $40
	rst  $38                                         ; $619b: $ff

jr_027_619c:
	ld   b, a                                        ; $619c: $47
	rst  $38                                         ; $619d: $ff
	ccf                                              ; $619e: $3f

jr_027_619f:
	rst  $38                                         ; $619f: $ff
	ret  c                                           ; $61a0: $d8

	ld   hl, sp-$24                                  ; $61a1: $f8 $dc
	db   $fc                                         ; $61a3: $fc
	sbc  $fe                                         ; $61a4: $de $fe
	adc  $fe                                         ; $61a6: $ce $fe
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $61a8: $cf
	rst  $38                                         ; $61a9: $ff
	set  7, e                                        ; $61aa: $cb $fb
	jp   hl                                          ; $61ac: $e9


	add  hl, sp                                      ; $61ad: $39
	pop  af                                          ; $61ae: $f1
	ld   sp, $61e1                                   ; $61af: $31 $e1 $61
	jp   nz, $82c2                                   ; $61b2: $c2 $c2 $82

	add  d                                           ; $61b5: $82
	ld   b, c                                        ; $61b6: $41
	pop  bc                                          ; $61b7: $c1
	jr   nz, jr_027_619a                             ; $61b8: $20 $e0

	jr   nz, jr_027_619c                             ; $61ba: $20 $e0

	ld   [hl], b                                     ; $61bc: $70
	ldh  a, [$f8]                                    ; $61bd: $f0 $f8
	ld   hl, sp+$1f                                  ; $61bf: $f8 $1f
	db   $10                                         ; $61c1: $10
	rra                                              ; $61c2: $1f
	db   $10                                         ; $61c3: $10
	ld   a, [de]                                     ; $61c4: $1a
	dec  d                                           ; $61c5: $15
	ld   a, [de]                                     ; $61c6: $1a
	dec  e                                           ; $61c7: $1d
	dec  b                                           ; $61c8: $05
	ld   b, $07                                      ; $61c9: $06 $07
	inc  b                                           ; $61cb: $04
	ld   b, $05                                      ; $61cc: $06 $05
	inc  bc                                          ; $61ce: $03
	inc  bc                                          ; $61cf: $03
	ld   [bc], a                                     ; $61d0: $02
	inc  bc                                          ; $61d1: $03
	inc  b                                           ; $61d2: $04
	rlca                                             ; $61d3: $07
	inc  b                                           ; $61d4: $04
	rlca                                             ; $61d5: $07
	rlca                                             ; $61d6: $07
	rlca                                             ; $61d7: $07
	inc  bc                                          ; $61d8: $03
	ld   [bc], a                                     ; $61d9: $02
	rra                                              ; $61da: $1f
	inc  e                                           ; $61db: $1c
	ccf                                              ; $61dc: $3f
	ccf                                              ; $61dd: $3f
	ccf                                              ; $61de: $3f
	ccf                                              ; $61df: $3f
	rst  $38                                         ; $61e0: $ff
	rra                                              ; $61e1: $1f
	rst  JumpTable                                         ; $61e2: $df
	cpl                                              ; $61e3: $2f
	ld   e, a                                        ; $61e4: $5f
	xor  a                                           ; $61e5: $af
	rst  $38                                         ; $61e6: $ff
	rra                                              ; $61e7: $1f
	cp   a                                           ; $61e8: $bf
	ld   e, a                                        ; $61e9: $5f
	ccf                                              ; $61ea: $3f
	rst  JumpTable                                         ; $61eb: $df
	ld   sp, hl                                      ; $61ec: $f9
	rst  $38                                         ; $61ed: $ff
	ld   a, c                                        ; $61ee: $79
	rst  $38                                         ; $61ef: $ff
	ld   a, c                                        ; $61f0: $79
	rst  $38                                         ; $61f1: $ff
	cp   c                                           ; $61f2: $b9
	rst  $38                                         ; $61f3: $ff
	cp   l                                           ; $61f4: $bd
	rst  $38                                         ; $61f5: $ff
	sbc  a                                           ; $61f6: $9f
	rst  $38                                         ; $61f7: $ff
	rst  $30                                         ; $61f8: $f7
	rst  $38                                         ; $61f9: $ff
	rst  JumpTable                                         ; $61fa: $df
	ld   e, a                                        ; $61fb: $5f
	jp   $c1c3                                       ; $61fc: $c3 $c3 $c1


	pop  bc                                          ; $61ff: $c1
	ld   a, h                                        ; $6200: $7c
	db   $fc                                         ; $6201: $fc
	cp   [hl]                                        ; $6202: $be
	cp   $7e                                         ; $6203: $fe $7e
	cp   $bc                                         ; $6205: $fe $bc
	db   $fc                                         ; $6207: $fc
	cp   h                                           ; $6208: $bc
	db   $fc                                         ; $6209: $fc
	xor  b                                           ; $620a: $a8
	ld   hl, sp+$2c                                  ; $620b: $f8 $2c
	db   $fc                                         ; $620d: $fc
	dec  hl                                          ; $620e: $2b
	rst  $38                                         ; $620f: $ff
	inc  h                                           ; $6210: $24
	rst  $38                                         ; $6211: $ff
	inc  h                                           ; $6212: $24
	rst  $38                                         ; $6213: $ff
	ld   [hl+], a                                    ; $6214: $22
	rst  $38                                         ; $6215: $ff
	inc  hl                                          ; $6216: $23
	rst  $38                                         ; $6217: $ff
	daa                                              ; $6218: $27
	cp   $db                                         ; $6219: $fe $db
	db   $db                                         ; $621b: $db
	add  e                                           ; $621c: $83
	add  e                                           ; $621d: $83
	add  c                                           ; $621e: $81
	add  c                                           ; $621f: $81
	nop                                              ; $6220: $00
	nop                                              ; $6221: $00
	nop                                              ; $6222: $00
	nop                                              ; $6223: $00
	nop                                              ; $6224: $00
	nop                                              ; $6225: $00
	nop                                              ; $6226: $00
	nop                                              ; $6227: $00
	nop                                              ; $6228: $00
	nop                                              ; $6229: $00
	nop                                              ; $622a: $00
	nop                                              ; $622b: $00
	nop                                              ; $622c: $00
	nop                                              ; $622d: $00
	nop                                              ; $622e: $00
	nop                                              ; $622f: $00
	add  b                                           ; $6230: $80
	add  b                                           ; $6231: $80
	add  b                                           ; $6232: $80
	add  b                                           ; $6233: $80
	ld   b, b                                        ; $6234: $40
	ret  nz                                          ; $6235: $c0

	ret  nz                                          ; $6236: $c0

	ret  nz                                          ; $6237: $c0

	ldh  [$60], a                                    ; $6238: $e0 $60
	ldh  [rAUD4LEN], a                               ; $623a: $e0 $20
	ldh  [$e0], a                                    ; $623c: $e0 $e0
	ldh  [$e0], a                                    ; $623e: $e0 $e0
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
	rlca                                             ; $6256: $07
	rlca                                             ; $6257: $07
	inc  b                                           ; $6258: $04
	rlca                                             ; $6259: $07
	inc  c                                           ; $625a: $0c
	rrca                                             ; $625b: $0f
	rra                                              ; $625c: $1f
	rra                                              ; $625d: $1f
	ccf                                              ; $625e: $3f
	scf                                              ; $625f: $37
	nop                                              ; $6260: $00
	nop                                              ; $6261: $00
	nop                                              ; $6262: $00
	nop                                              ; $6263: $00
	nop                                              ; $6264: $00
	nop                                              ; $6265: $00
	nop                                              ; $6266: $00
	nop                                              ; $6267: $00
	nop                                              ; $6268: $00
	nop                                              ; $6269: $00
	nop                                              ; $626a: $00
	nop                                              ; $626b: $00
	nop                                              ; $626c: $00
	nop                                              ; $626d: $00
	nop                                              ; $626e: $00
	nop                                              ; $626f: $00
	nop                                              ; $6270: $00
	nop                                              ; $6271: $00
	nop                                              ; $6272: $00
	nop                                              ; $6273: $00
	nop                                              ; $6274: $00
	nop                                              ; $6275: $00
	rst  JumpTable                                         ; $6276: $df
	rst  JumpTable                                         ; $6277: $df
	jr   nc, @+$01                                   ; $6278: $30 $ff

	ld   a, b                                        ; $627a: $78
	rst  $38                                         ; $627b: $ff
	db   $fc                                         ; $627c: $fc
	rst  $38                                         ; $627d: $ff
	rst  $38                                         ; $627e: $ff
	or   a                                           ; $627f: $b7
	nop                                              ; $6280: $00
	nop                                              ; $6281: $00
	nop                                              ; $6282: $00
	nop                                              ; $6283: $00
	nop                                              ; $6284: $00
	nop                                              ; $6285: $00
	nop                                              ; $6286: $00
	nop                                              ; $6287: $00
	nop                                              ; $6288: $00
	nop                                              ; $6289: $00
	nop                                              ; $628a: $00
	nop                                              ; $628b: $00
	nop                                              ; $628c: $00
	nop                                              ; $628d: $00
	nop                                              ; $628e: $00
	nop                                              ; $628f: $00
	nop                                              ; $6290: $00
	nop                                              ; $6291: $00
	nop                                              ; $6292: $00
	nop                                              ; $6293: $00
	nop                                              ; $6294: $00
	nop                                              ; $6295: $00
	nop                                              ; $6296: $00
	nop                                              ; $6297: $00
	add  b                                           ; $6298: $80
	add  b                                           ; $6299: $80
	add  b                                           ; $629a: $80
	add  b                                           ; $629b: $80
	add  b                                           ; $629c: $80
	add  b                                           ; $629d: $80
	ret  nz                                          ; $629e: $c0

	ret  nz                                          ; $629f: $c0

	ld   l, a                                        ; $62a0: $6f
	ld   a, a                                        ; $62a1: $7f
	ld   a, a                                        ; $62a2: $7f
	ld   a, a                                        ; $62a3: $7f
	rst  $38                                         ; $62a4: $ff
	ei                                               ; $62a5: $fb
	cp   a                                           ; $62a6: $bf
	cp   c                                           ; $62a7: $b9
	cp   a                                           ; $62a8: $bf
	cp   b                                           ; $62a9: $b8
	ccf                                              ; $62aa: $3f
	ld   sp, $1b1e                                   ; $62ab: $31 $1e $1b
	rra                                              ; $62ae: $1f
	ld   de, $111f                                   ; $62af: $11 $1f $11
	rra                                              ; $62b2: $1f
	db   $10                                         ; $62b3: $10
	rrca                                             ; $62b4: $0f
	ld   [$0707], sp                                 ; $62b5: $08 $07 $07
	ld   a, [bc]                                     ; $62b8: $0a
	rrca                                             ; $62b9: $0f
	ld   de, $311f                                   ; $62ba: $11 $1f $31
	ccf                                              ; $62bd: $3f
	ld   h, b                                        ; $62be: $60
	ld   a, a                                        ; $62bf: $7f
	sbc  e                                           ; $62c0: $9b
	rst  $38                                         ; $62c1: $ff
	set  7, a                                        ; $62c2: $cb $ff
	rst  $38                                         ; $62c4: $ff
	rst  $38                                         ; $62c5: $ff
	rst  $38                                         ; $62c6: $ff
	rst  $38                                         ; $62c7: $ff
	rst  $38                                         ; $62c8: $ff
	rst  $38                                         ; $62c9: $ff
	rst  $38                                         ; $62ca: $ff
	rst  JumpTable                                         ; $62cb: $df
	cp   a                                           ; $62cc: $bf
	db   $ec                                         ; $62cd: $ec
	cp   a                                           ; $62ce: $bf
	call z, $8dff                                    ; $62cf: $cc $ff $8d
	rst  $38                                         ; $62d2: $ff
	rrca                                             ; $62d3: $0f
	ld   a, [$c13e]                                  ; $62d4: $fa $3e $c1
	rst  $38                                         ; $62d7: $ff
	nop                                              ; $62d8: $00
	rst  $38                                         ; $62d9: $ff
	nop                                              ; $62da: $00
	rst  $38                                         ; $62db: $ff
	dec  e                                           ; $62dc: $1d
	rst  $38                                         ; $62dd: $ff
	rst  $38                                         ; $62de: $ff
	rst  $38                                         ; $62df: $ff
	ld   h, b                                        ; $62e0: $60
	ldh  [$60], a                                    ; $62e1: $e0 $60
	ldh  [rSVBK], a                                  ; $62e3: $e0 $70
	ldh  a, [rSVBK]                                  ; $62e5: $f0 $70
	ldh  a, [rSVBK]                                  ; $62e7: $f0 $70
	ldh  a, [rSVBK]                                  ; $62e9: $f0 $70
	ldh  a, [$f0]                                    ; $62eb: $f0 $f0
	ldh  a, [$b0]                                    ; $62ed: $f0 $b0
	or   b                                           ; $62ef: $b0
	cp   b                                           ; $62f0: $b8
	cp   b                                           ; $62f1: $b8
	jr   jr_027_630c                                 ; $62f2: $18 $18

	db   $10                                         ; $62f4: $10
	stop                                             ; $62f5: $10 $00
	nop                                              ; $62f7: $00
	add  b                                           ; $62f8: $80
	add  b                                           ; $62f9: $80
	add  b                                           ; $62fa: $80
	add  b                                           ; $62fb: $80
	ret  nz                                          ; $62fc: $c0

	ret  nz                                          ; $62fd: $c0

	ldh  [$e0], a                                    ; $62fe: $e0 $e0
	ld   a, a                                        ; $6300: $7f
	ld   b, b                                        ; $6301: $40
	ld   a, a                                        ; $6302: $7f
	ld   b, b                                        ; $6303: $40
	ld   l, c                                        ; $6304: $69
	ld   d, [hl]                                     ; $6305: $56
	dec  [hl]                                        ; $6306: $35
	ld   a, [hl-]                                    ; $6307: $3a
	dec  bc                                          ; $6308: $0b
	inc  c                                           ; $6309: $0c
	ld   c, $09                                      ; $630a: $0e $09

jr_027_630c:
	dec  c                                           ; $630c: $0d
	dec  bc                                          ; $630d: $0b
	ld   b, $07                                      ; $630e: $06 $07
	inc  b                                           ; $6310: $04
	rlca                                             ; $6311: $07
	inc  b                                           ; $6312: $04
	rlca                                             ; $6313: $07
	inc  b                                           ; $6314: $04
	rlca                                             ; $6315: $07
	rlca                                             ; $6316: $07
	rlca                                             ; $6317: $07
	inc  bc                                          ; $6318: $03
	ld   [bc], a                                     ; $6319: $02
	rra                                              ; $631a: $1f
	inc  e                                           ; $631b: $1c
	ccf                                              ; $631c: $3f
	ccf                                              ; $631d: $3f
	ccf                                              ; $631e: $3f
	ccf                                              ; $631f: $3f
	db   $fd                                         ; $6320: $fd
	ld   a, a                                        ; $6321: $7f
	ld   a, [hl]                                     ; $6322: $7e
	cp   a                                           ; $6323: $bf
	ld   a, l                                        ; $6324: $7d
	cp   a                                           ; $6325: $bf
	rst  $38                                         ; $6326: $ff
	ccf                                              ; $6327: $3f
	ld   a, a                                        ; $6328: $7f
	cp   a                                           ; $6329: $bf
	ld   a, a                                        ; $632a: $7f
	cp   a                                           ; $632b: $bf
	di                                               ; $632c: $f3
	rst  $38                                         ; $632d: $ff
	di                                               ; $632e: $f3
	rst  $38                                         ; $632f: $ff
	ei                                               ; $6330: $fb
	rst  $38                                         ; $6331: $ff
	cp   c                                           ; $6332: $b9
	rst  $38                                         ; $6333: $ff
	cp   l                                           ; $6334: $bd
	rst  $38                                         ; $6335: $ff
	sbc  a                                           ; $6336: $9f
	rst  $38                                         ; $6337: $ff
	rst  $30                                         ; $6338: $f7
	rst  $38                                         ; $6339: $ff
	rst  JumpTable                                         ; $633a: $df
	ld   e, a                                        ; $633b: $5f
	jp   $c1c3                                       ; $633c: $c3 $c3 $c1


	pop  bc                                          ; $633f: $c1
	ldh  a, [$f0]                                    ; $6340: $f0 $f0
	ld   hl, sp-$08                                  ; $6342: $f8 $f8
	ld   hl, sp-$08                                  ; $6344: $f8 $f8
	ld   a, b                                        ; $6346: $78
	ld   hl, sp+$78                                  ; $6347: $f8 $78
	ld   hl, sp+$50                                  ; $6349: $f8 $50
	ldh  a, [$58]                                    ; $634b: $f0 $58
	ld   hl, sp+$56                                  ; $634d: $f8 $56
	cp   $29                                         ; $634f: $fe $29
	rst  $38                                         ; $6351: $ff
	inc  h                                           ; $6352: $24
	rst  $38                                         ; $6353: $ff
	ld   [hl+], a                                    ; $6354: $22
	rst  $38                                         ; $6355: $ff
	inc  hl                                          ; $6356: $23
	rst  $38                                         ; $6357: $ff
	daa                                              ; $6358: $27
	cp   $db                                         ; $6359: $fe $db
	db   $db                                         ; $635b: $db
	add  e                                           ; $635c: $83
	add  e                                           ; $635d: $83
	add  c                                           ; $635e: $81
	add  c                                           ; $635f: $81
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
	add  b                                           ; $6370: $80
	add  b                                           ; $6371: $80
	add  b                                           ; $6372: $80
	add  b                                           ; $6373: $80
	ld   b, b                                        ; $6374: $40
	ret  nz                                          ; $6375: $c0

	ret  nz                                          ; $6376: $c0

	ret  nz                                          ; $6377: $c0

	ldh  [$60], a                                    ; $6378: $e0 $60
	ldh  [rAUD4LEN], a                               ; $637a: $e0 $20
	ldh  [$e0], a                                    ; $637c: $e0 $e0
	ldh  [$e0], a                                    ; $637e: $e0 $e0
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
	rlca                                             ; $6396: $07
	rlca                                             ; $6397: $07
	jr   @+$21                                       ; $6398: $18 $1f

	rla                                              ; $639a: $17
	rra                                              ; $639b: $1f
	rra                                              ; $639c: $1f
	rra                                              ; $639d: $1f
	ccf                                              ; $639e: $3f
	ccf                                              ; $639f: $3f
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
	ld   a, $3e                                      ; $63b4: $3e $3e
	ld   b, c                                        ; $63b6: $41
	ld   a, a                                        ; $63b7: $7f
	ldh  a, [rIE]                                    ; $63b8: $f0 $ff
	ld   hl, sp-$01                                  ; $63ba: $f8 $ff
	db   $fc                                         ; $63bc: $fc
	rst  $28                                         ; $63bd: $ef
	rst  $38                                         ; $63be: $ff
	scf                                              ; $63bf: $37
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
	add  b                                           ; $63d8: $80
	add  b                                           ; $63d9: $80
	add  b                                           ; $63da: $80
	add  b                                           ; $63db: $80
	add  b                                           ; $63dc: $80
	add  b                                           ; $63dd: $80
	ret  nz                                          ; $63de: $c0

	ret  nz                                          ; $63df: $c0

	ld   l, a                                        ; $63e0: $6f
	ld   a, a                                        ; $63e1: $7f
	ld   l, a                                        ; $63e2: $6f
	ld   a, a                                        ; $63e3: $7f
	rst  $38                                         ; $63e4: $ff
	ei                                               ; $63e5: $fb
	cp   a                                           ; $63e6: $bf
	cp   h                                           ; $63e7: $bc
	cp   a                                           ; $63e8: $bf
	cp   h                                           ; $63e9: $bc
	rra                                              ; $63ea: $1f
	dec  d                                           ; $63eb: $15
	ccf                                              ; $63ec: $3f
	jr   c, jr_027_640e                              ; $63ed: $38 $1f

	jr   @+$21                                       ; $63ef: $18 $1f

	ld   d, $1f                                      ; $63f1: $16 $1f
	dec  d                                           ; $63f3: $15
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $63f4: $cf
	call $3fff                                       ; $63f5: $cd $ff $3f
	db   $fc                                         ; $63f8: $fc
	rlca                                             ; $63f9: $07
	cp   $03                                         ; $63fa: $fe $03
	cp   $1f                                         ; $63fc: $fe $1f
	push hl                                          ; $63fe: $e5
	rst  $38                                         ; $63ff: $ff
	sbc  e                                           ; $6400: $9b
	rst  $38                                         ; $6401: $ff
	rst  JumpTable                                         ; $6402: $df
	rst  $38                                         ; $6403: $ff
	rst  $38                                         ; $6404: $ff
	rst  $38                                         ; $6405: $ff
	rst  $38                                         ; $6406: $ff
	ld   a, a                                        ; $6407: $7f
	rst  $38                                         ; $6408: $ff
	rst  $28                                         ; $6409: $ef
	ld   e, a                                        ; $640a: $5f
	rst  $38                                         ; $640b: $ff
	rst  JumpTable                                         ; $640c: $df
	db   $ec                                         ; $640d: $ec

jr_027_640e:
	rst  $38                                         ; $640e: $ff
	call z, $0dff                                    ; $640f: $cc $ff $0d
	rst  $38                                         ; $6412: $ff
	rrca                                             ; $6413: $0f
	ld   a, [$c1fe]                                  ; $6414: $fa $fe $c1
	rst  $38                                         ; $6417: $ff
	ld   b, b                                        ; $6418: $40
	rst  $38                                         ; $6419: $ff
	nop                                              ; $641a: $00
	rst  $38                                         ; $641b: $ff
	inc  bc                                          ; $641c: $03
	rst  $38                                         ; $641d: $ff
	rlca                                             ; $641e: $07
	rst  $38                                         ; $641f: $ff
	ld   h, b                                        ; $6420: $60
	ldh  [rSVBK], a                                  ; $6421: $e0 $70
	ldh  a, [rSVBK]                                  ; $6423: $f0 $70
	ldh  a, [rSVBK]                                  ; $6425: $f0 $70
	ldh  a, [rSVBK]                                  ; $6427: $f0 $70
	ldh  a, [rSVBK]                                  ; $6429: $f0 $70
	ldh  a, [$f8]                                    ; $642b: $f0 $f8
	ld   hl, sp-$48                                  ; $642d: $f8 $b8
	cp   b                                           ; $642f: $b8
	cp   b                                           ; $6430: $b8
	cp   b                                           ; $6431: $b8
	inc  e                                           ; $6432: $1c
	inc  e                                           ; $6433: $1c
	ld   b, $06                                      ; $6434: $06 $06
	ld   de, $b011                                   ; $6436: $11 $11 $b0
	or   b                                           ; $6439: $b0
	ld   hl, sp-$08                                  ; $643a: $f8 $f8
	ld   hl, sp-$08                                  ; $643c: $f8 $f8
	ld   hl, sp-$08                                  ; $643e: $f8 $f8
	rst  $38                                         ; $6440: $ff
	jp   nz, Jump_027_4b75                           ; $6441: $c2 $75 $4b

	daa                                              ; $6444: $27
	add  hl, sp                                      ; $6445: $39
	ccf                                              ; $6446: $3f
	ld   h, $1f                                      ; $6447: $26 $1f
	dec  e                                           ; $6449: $1d
	ld   [bc], a                                     ; $644a: $02
	inc  bc                                          ; $644b: $03
	ld   [bc], a                                     ; $644c: $02
	inc  bc                                          ; $644d: $03
	ld   b, $07                                      ; $644e: $06 $07
	inc  b                                           ; $6450: $04
	rlca                                             ; $6451: $07
	inc  b                                           ; $6452: $04
	rlca                                             ; $6453: $07
	inc  b                                           ; $6454: $04
	rlca                                             ; $6455: $07
	rlca                                             ; $6456: $07
	rlca                                             ; $6457: $07
	inc  bc                                          ; $6458: $03
	ld   [bc], a                                     ; $6459: $02
	rra                                              ; $645a: $1f
	inc  e                                           ; $645b: $1c
	ccf                                              ; $645c: $3f
	ccf                                              ; $645d: $3f
	ccf                                              ; $645e: $3f
	ccf                                              ; $645f: $3f
	db   $fd                                         ; $6460: $fd
	add  d                                           ; $6461: $82
	ld   [$e655], a                                  ; $6462: $ea $55 $e6
	ld   e, c                                        ; $6465: $59
	rst  $38                                         ; $6466: $ff
	pop  hl                                          ; $6467: $e1
	ld   e, a                                        ; $6468: $5f
	rst  $38                                         ; $6469: $ff
	or   e                                           ; $646a: $b3
	rst  $38                                         ; $646b: $ff
	or   c                                           ; $646c: $b1
	rst  $38                                         ; $646d: $ff
	sub  d                                           ; $646e: $92
	rst  $38                                         ; $646f: $ff
	sub  d                                           ; $6470: $92
	rst  $38                                         ; $6471: $ff
	sub  d                                           ; $6472: $92
	rst  $38                                         ; $6473: $ff
	sub  c                                           ; $6474: $91
	rst  $38                                         ; $6475: $ff
	sub  c                                           ; $6476: $91
	rst  $38                                         ; $6477: $ff
	pop  af                                          ; $6478: $f1
	rst  $38                                         ; $6479: $ff
	sbc  $5e                                         ; $647a: $de $5e
	ret  nz                                          ; $647c: $c0

	ret  nz                                          ; $647d: $c0

	ret  nz                                          ; $647e: $c0

	ret  nz                                          ; $647f: $c0

	ld   a, h                                        ; $6480: $7c
	db   $fc                                         ; $6481: $fc
	ld   a, h                                        ; $6482: $7c
	db   $fc                                         ; $6483: $fc
	db   $fc                                         ; $6484: $fc
	db   $fc                                         ; $6485: $fc
	call c, $a0dc                                    ; $6486: $dc $dc $a0
	ldh  [$d0], a                                    ; $6489: $e0 $d0
	ldh  a, [$e8]                                    ; $648b: $f0 $e8
	ld   hl, sp-$02                                  ; $648d: $f8 $fe
	cp   $3d                                         ; $648f: $fe $3d
	rst  $38                                         ; $6491: $ff
	ld   e, [hl]                                     ; $6492: $5e
	rst  $38                                         ; $6493: $ff
	ld   h, $ff                                      ; $6494: $26 $ff
	inc  hl                                          ; $6496: $23
	rst  $38                                         ; $6497: $ff
	daa                                              ; $6498: $27
	cp   $db                                         ; $6499: $fe $db
	db   $db                                         ; $649b: $db
	inc  bc                                          ; $649c: $03
	inc  bc                                          ; $649d: $03
	ld   bc, $0001                                   ; $649e: $01 $01 $00
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
	add  b                                           ; $64b2: $80
	add  b                                           ; $64b3: $80
	ld   b, b                                        ; $64b4: $40
	ret  nz                                          ; $64b5: $c0

	ret  nz                                          ; $64b6: $c0

	ret  nz                                          ; $64b7: $c0

	ldh  [$60], a                                    ; $64b8: $e0 $60
	ldh  [rAUD4LEN], a                               ; $64ba: $e0 $20
	ldh  [$e0], a                                    ; $64bc: $e0 $e0
	ldh  [$e0], a                                    ; $64be: $e0 $e0
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
	rlca                                             ; $64d6: $07
	rlca                                             ; $64d7: $07
	jr   @+$21                                       ; $64d8: $18 $1f

	rla                                              ; $64da: $17
	rra                                              ; $64db: $1f
	rra                                              ; $64dc: $1f
	rra                                              ; $64dd: $1f
	ccf                                              ; $64de: $3f
	ccf                                              ; $64df: $3f
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
	ld   a, $3e                                      ; $64f4: $3e $3e
	ld   b, c                                        ; $64f6: $41
	ld   a, a                                        ; $64f7: $7f
	ldh  a, [rIE]                                    ; $64f8: $f0 $ff
	ld   hl, sp-$01                                  ; $64fa: $f8 $ff
	db   $fc                                         ; $64fc: $fc
	rst  $28                                         ; $64fd: $ef
	rst  $38                                         ; $64fe: $ff
	scf                                              ; $64ff: $37
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
	add  b                                           ; $6518: $80
	add  b                                           ; $6519: $80
	add  b                                           ; $651a: $80
	add  b                                           ; $651b: $80
	add  b                                           ; $651c: $80
	add  b                                           ; $651d: $80
	ret  nz                                          ; $651e: $c0

	ret  nz                                          ; $651f: $c0

	ld   l, a                                        ; $6520: $6f
	ld   a, a                                        ; $6521: $7f
	ld   l, a                                        ; $6522: $6f
	ld   a, a                                        ; $6523: $7f
	rst  $38                                         ; $6524: $ff
	ei                                               ; $6525: $fb
	cp   a                                           ; $6526: $bf
	cp   h                                           ; $6527: $bc
	cp   a                                           ; $6528: $bf
	cp   h                                           ; $6529: $bc
	rra                                              ; $652a: $1f
	dec  d                                           ; $652b: $15
	ccf                                              ; $652c: $3f
	jr   c, jr_027_654e                              ; $652d: $38 $1f

	jr   @+$21                                       ; $652f: $18 $1f

	ld   d, $1f                                      ; $6531: $16 $1f
	dec  d                                           ; $6533: $15
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6534: $cf
	call $3fff                                       ; $6535: $cd $ff $3f
	db   $fc                                         ; $6538: $fc
	rlca                                             ; $6539: $07
	cp   $03                                         ; $653a: $fe $03
	cp   $1f                                         ; $653c: $fe $1f
	rst  $20                                         ; $653e: $e7
	rst  $38                                         ; $653f: $ff
	sbc  e                                           ; $6540: $9b
	rst  $38                                         ; $6541: $ff
	rst  JumpTable                                         ; $6542: $df
	rst  $38                                         ; $6543: $ff
	rst  $38                                         ; $6544: $ff
	rst  $38                                         ; $6545: $ff
	rst  $38                                         ; $6546: $ff
	ld   a, a                                        ; $6547: $7f
	rst  $38                                         ; $6548: $ff
	rst  $28                                         ; $6549: $ef
	ld   e, a                                        ; $654a: $5f
	rst  $38                                         ; $654b: $ff
	rst  JumpTable                                         ; $654c: $df
	db   $ec                                         ; $654d: $ec

jr_027_654e:
	rst  $38                                         ; $654e: $ff
	call z, $0dff                                    ; $654f: $cc $ff $0d
	rst  $38                                         ; $6552: $ff
	rrca                                             ; $6553: $0f
	ld   a, [$c1fe]                                  ; $6554: $fa $fe $c1
	rst  $38                                         ; $6557: $ff
	jr   nz, @+$01                                   ; $6558: $20 $ff

	nop                                              ; $655a: $00
	rst  $38                                         ; $655b: $ff
	ld   bc, $03ff                                   ; $655c: $01 $ff $03
	rst  $38                                         ; $655f: $ff
	ld   h, b                                        ; $6560: $60
	ldh  [rSVBK], a                                  ; $6561: $e0 $70
	ldh  a, [rSVBK]                                  ; $6563: $f0 $70
	ldh  a, [rSVBK]                                  ; $6565: $f0 $70
	ldh  a, [rSVBK]                                  ; $6567: $f0 $70
	ldh  a, [rSVBK]                                  ; $6569: $f0 $70
	ldh  a, [$f8]                                    ; $656b: $f0 $f8
	ld   hl, sp-$48                                  ; $656d: $f8 $b8
	cp   b                                           ; $656f: $b8
	or   b                                           ; $6570: $b0
	or   b                                           ; $6571: $b0
	jr   nc, jr_027_65a4                             ; $6572: $30 $30

	jr   nc, jr_027_65a6                             ; $6574: $30 $30

	ld   d, b                                        ; $6576: $50
	ld   d, b                                        ; $6577: $50
	or   b                                           ; $6578: $b0
	or   b                                           ; $6579: $b0
	ld   hl, sp-$08                                  ; $657a: $f8 $f8
	ld   hl, sp-$08                                  ; $657c: $f8 $f8
	ld   hl, sp-$08                                  ; $657e: $f8 $f8
	db   $fd                                         ; $6580: $fd
	rst  ToBoot                                         ; $6581: $c7
	ld   l, l                                        ; $6582: $6d
	ld   d, a                                        ; $6583: $57
	ld   c, l                                        ; $6584: $4d
	ld   [hl], a                                     ; $6585: $77
	ld   [hl], a                                     ; $6586: $77
	ld   c, l                                        ; $6587: $4d
	ld   a, a                                        ; $6588: $7f
	ld   a, l                                        ; $6589: $7d
	ld   [bc], a                                     ; $658a: $02
	inc  bc                                          ; $658b: $03
	ld   [bc], a                                     ; $658c: $02
	inc  bc                                          ; $658d: $03
	ld   b, $07                                      ; $658e: $06 $07
	inc  b                                           ; $6590: $04
	rlca                                             ; $6591: $07
	inc  b                                           ; $6592: $04
	rlca                                             ; $6593: $07
	inc  b                                           ; $6594: $04
	rlca                                             ; $6595: $07
	rlca                                             ; $6596: $07
	rlca                                             ; $6597: $07
	inc  bc                                          ; $6598: $03
	ld   [bc], a                                     ; $6599: $02
	rra                                              ; $659a: $1f
	inc  e                                           ; $659b: $1c
	ccf                                              ; $659c: $3f
	ccf                                              ; $659d: $3f
	ccf                                              ; $659e: $3f
	ccf                                              ; $659f: $3f
	rst  $28                                         ; $65a0: $ef
	ld   de, $c73a                                   ; $65a1: $11 $3a $c7

jr_027_65a4:
	and  a                                           ; $65a4: $a7
	ld   e, a                                        ; $65a5: $5f

jr_027_65a6:
	rst  $28                                         ; $65a6: $ef
	rra                                              ; $65a7: $1f
	ccf                                              ; $65a8: $3f
	rst  JumpTable                                         ; $65a9: $df
	di                                               ; $65aa: $f3
	rst  $38                                         ; $65ab: $ff
	or   c                                           ; $65ac: $b1
	rst  $38                                         ; $65ad: $ff
	sub  d                                           ; $65ae: $92
	rst  $38                                         ; $65af: $ff
	sub  d                                           ; $65b0: $92
	rst  $38                                         ; $65b1: $ff
	sub  d                                           ; $65b2: $92
	rst  $38                                         ; $65b3: $ff
	sub  c                                           ; $65b4: $91
	rst  $38                                         ; $65b5: $ff
	sub  c                                           ; $65b6: $91
	rst  $38                                         ; $65b7: $ff
	pop  af                                          ; $65b8: $f1
	rst  $38                                         ; $65b9: $ff
	sbc  $5e                                         ; $65ba: $de $5e
	ret  nz                                          ; $65bc: $c0

	ret  nz                                          ; $65bd: $c0

	ret  nz                                          ; $65be: $c0

	ret  nz                                          ; $65bf: $c0

	db   $fc                                         ; $65c0: $fc
	db   $fc                                         ; $65c1: $fc
	ld   a, h                                        ; $65c2: $7c
	db   $fc                                         ; $65c3: $fc
	db   $fc                                         ; $65c4: $fc
	db   $fc                                         ; $65c5: $fc
	call c, $a0dc                                    ; $65c6: $dc $dc $a0
	ldh  [$d0], a                                    ; $65c9: $e0 $d0
	ldh  a, [$e8]                                    ; $65cb: $f0 $e8
	ld   hl, sp-$02                                  ; $65cd: $f8 $fe
	cp   $3d                                         ; $65cf: $fe $3d
	rst  $38                                         ; $65d1: $ff
	ld   e, [hl]                                     ; $65d2: $5e
	rst  $38                                         ; $65d3: $ff
	ld   h, $ff                                      ; $65d4: $26 $ff
	inc  hl                                          ; $65d6: $23
	rst  $38                                         ; $65d7: $ff
	daa                                              ; $65d8: $27
	cp   $db                                         ; $65d9: $fe $db
	db   $db                                         ; $65db: $db
	inc  bc                                          ; $65dc: $03
	inc  bc                                          ; $65dd: $03
	ld   bc, $0001                                   ; $65de: $01 $01 $00
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
	add  b                                           ; $65f2: $80
	add  b                                           ; $65f3: $80
	ld   b, b                                        ; $65f4: $40
	ret  nz                                          ; $65f5: $c0

	ret  nz                                          ; $65f6: $c0

	ret  nz                                          ; $65f7: $c0

	ldh  [$60], a                                    ; $65f8: $e0 $60
	ldh  [rAUD4LEN], a                               ; $65fa: $e0 $20
	ldh  [$e0], a                                    ; $65fc: $e0 $e0
	ldh  [$e0], a                                    ; $65fe: $e0 $e0
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
	ld   bc, $0e01                                   ; $6614: $01 $01 $0e
	rrca                                             ; $6617: $0f
	ld   [$1f0f], sp                                 ; $6618: $08 $0f $1f
	rra                                              ; $661b: $1f
	rra                                              ; $661c: $1f
	rra                                              ; $661d: $1f
	ccf                                              ; $661e: $3f
	ccf                                              ; $661f: $3f
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
	sbc  a                                           ; $6634: $9f
	sbc  a                                           ; $6635: $9f
	ld   h, b                                        ; $6636: $60
	rst  $38                                         ; $6637: $ff
	ldh  a, [rIE]                                    ; $6638: $f0 $ff
	ld   hl, sp-$01                                  ; $663a: $f8 $ff

Jump_027_663c:
	db   $fc                                         ; $663c: $fc
	rst  $28                                         ; $663d: $ef
	rst  $38                                         ; $663e: $ff
	scf                                              ; $663f: $37
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
	add  b                                           ; $6656: $80
	add  b                                           ; $6657: $80
	add  b                                           ; $6658: $80
	add  b                                           ; $6659: $80
	add  b                                           ; $665a: $80
	add  b                                           ; $665b: $80
	add  b                                           ; $665c: $80
	add  b                                           ; $665d: $80
	ldh  a, [$f0]                                    ; $665e: $f0 $f0
	ld   l, a                                        ; $6660: $6f
	ld   a, a                                        ; $6661: $7f
	ld   l, a                                        ; $6662: $6f
	ld   a, a                                        ; $6663: $7f
	ld   a, a                                        ; $6664: $7f
	ld   a, e                                        ; $6665: $7b
	ld   a, a                                        ; $6666: $7f
	ld   a, c                                        ; $6667: $79
	cp   a                                           ; $6668: $bf
	cp   b                                           ; $6669: $b8
	rra                                              ; $666a: $1f
	dec  d                                           ; $666b: $15
	ccf                                              ; $666c: $3f
	jr   c, jr_027_668e                              ; $666d: $38 $1f

	jr   @+$21                                       ; $666f: $18 $1f

	ld   d, $1f                                      ; $6671: $16 $1f
	dec  d                                           ; $6673: $15
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6674: $cf
	call $3fff                                       ; $6675: $cd $ff $3f
	cp   $03                                         ; $6678: $fe $03
	rst  $38                                         ; $667a: $ff
	ld   bc, $1fff                                   ; $667b: $01 $ff $1f
	rst  $20                                         ; $667e: $e7
	rst  $38                                         ; $667f: $ff
	sbc  e                                           ; $6680: $9b

Jump_027_6681:
	rst  $38                                         ; $6681: $ff
	rst  JumpTable                                         ; $6682: $df
	rst  $38                                         ; $6683: $ff
	rst  $38                                         ; $6684: $ff
	ld   a, a                                        ; $6685: $7f
	rst  $38                                         ; $6686: $ff
	ccf                                              ; $6687: $3f
	rst  $38                                         ; $6688: $ff
	rst  $28                                         ; $6689: $ef
	ld   e, a                                        ; $668a: $5f
	rst  $38                                         ; $668b: $ff
	rst  JumpTable                                         ; $668c: $df
	db   $ec                                         ; $668d: $ec

jr_027_668e:
	rst  $38                                         ; $668e: $ff
	call z, $0dff                                    ; $668f: $cc $ff $0d
	rst  $38                                         ; $6692: $ff
	rrca                                             ; $6693: $0f
	ld   a, [$c1fe]                                  ; $6694: $fa $fe $c1
	rst  $38                                         ; $6697: $ff
	jr   nz, @+$01                                   ; $6698: $20 $ff

	nop                                              ; $669a: $00
	rst  $38                                         ; $669b: $ff
	add  c                                           ; $669c: $81
	rst  $38                                         ; $669d: $ff
	add  e                                           ; $669e: $83
	rst  $38                                         ; $669f: $ff
	ld   a, h                                        ; $66a0: $7c
	db   $fc                                         ; $66a1: $fc
	ld   a, [hl]                                     ; $66a2: $7e
	cp   $3f                                         ; $66a3: $fe $3f
	rst  $38                                         ; $66a5: $ff
	rra                                              ; $66a6: $1f
	rst  $38                                         ; $66a7: $ff
	dec  sp                                          ; $66a8: $3b
	ei                                               ; $66a9: $fb
	ld   l, e                                        ; $66aa: $6b
	db   $eb                                         ; $66ab: $eb
	adc  e                                           ; $66ac: $8b
	adc  e                                           ; $66ad: $8b
	adc  d                                           ; $66ae: $8a
	adc  d                                           ; $66af: $8a
	sub  d                                           ; $66b0: $92
	sub  d                                           ; $66b1: $92
	inc  h                                           ; $66b2: $24
	inc  h                                           ; $66b3: $24
	inc  b                                           ; $66b4: $04
	inc  b                                           ; $66b5: $04
	ld   [$b008], sp                                 ; $66b6: $08 $08 $b0
	or   b                                           ; $66b9: $b0
	ld   hl, sp-$08                                  ; $66ba: $f8 $f8
	ld   hl, sp-$08                                  ; $66bc: $f8 $f8
	ld   hl, sp-$08                                  ; $66be: $f8 $f8
	db   $ec                                         ; $66c0: $ec
	rst  $10                                         ; $66c1: $d7
	ld   c, h                                        ; $66c2: $4c
	ld   [hl], a                                     ; $66c3: $77
	ld   [hl], a                                     ; $66c4: $77
	ld   c, h                                        ; $66c5: $4c
	ccf                                              ; $66c6: $3f
	ccf                                              ; $66c7: $3f
	ld   [bc], a                                     ; $66c8: $02
	inc  bc                                          ; $66c9: $03
	ld   [bc], a                                     ; $66ca: $02
	inc  bc                                          ; $66cb: $03
	ld   [bc], a                                     ; $66cc: $02
	inc  bc                                          ; $66cd: $03
	ld   b, $07                                      ; $66ce: $06 $07
	inc  b                                           ; $66d0: $04
	rlca                                             ; $66d1: $07
	inc  b                                           ; $66d2: $04
	rlca                                             ; $66d3: $07
	inc  b                                           ; $66d4: $04
	rlca                                             ; $66d5: $07
	rlca                                             ; $66d6: $07
	rlca                                             ; $66d7: $07
	inc  bc                                          ; $66d8: $03
	ld   [bc], a                                     ; $66d9: $02
	rra                                              ; $66da: $1f
	inc  e                                           ; $66db: $1c
	ccf                                              ; $66dc: $3f
	ccf                                              ; $66dd: $3f
	ccf                                              ; $66de: $3f
	ccf                                              ; $66df: $3f
	sub  a                                           ; $66e0: $97
	jp   hl                                          ; $66e1: $e9


	jp   c, $f767                                    ; $66e2: $da $67 $f7

	ld   c, a                                        ; $66e5: $4f
	rst  JumpTable                                         ; $66e6: $df
	xor  a                                           ; $66e7: $af
	rst  $38                                         ; $66e8: $ff
	rst  $38                                         ; $66e9: $ff
	or   e                                           ; $66ea: $b3
	rst  $38                                         ; $66eb: $ff
	sub  c                                           ; $66ec: $91
	rst  $38                                         ; $66ed: $ff
	sub  d                                           ; $66ee: $92
	rst  $38                                         ; $66ef: $ff
	sub  d                                           ; $66f0: $92
	rst  $38                                         ; $66f1: $ff
	sub  d                                           ; $66f2: $92
	rst  $38                                         ; $66f3: $ff
	sub  c                                           ; $66f4: $91
	rst  $38                                         ; $66f5: $ff
	sub  c                                           ; $66f6: $91
	rst  $38                                         ; $66f7: $ff
	pop  af                                          ; $66f8: $f1
	rst  $38                                         ; $66f9: $ff
	sbc  $5e                                         ; $66fa: $de $5e
	ret  nz                                          ; $66fc: $c0

	ret  nz                                          ; $66fd: $c0

	ret  nz                                          ; $66fe: $c0

	ret  nz                                          ; $66ff: $c0

	db   $fc                                         ; $6700: $fc
	db   $fc                                         ; $6701: $fc
	ld   a, h                                        ; $6702: $7c
	db   $fc                                         ; $6703: $fc
	db   $fc                                         ; $6704: $fc
	db   $fc                                         ; $6705: $fc
	call c, $a0dc                                    ; $6706: $dc $dc $a0
	ldh  [$d0], a                                    ; $6709: $e0 $d0
	ldh  a, [$e8]                                    ; $670b: $f0 $e8
	ld   hl, sp-$02                                  ; $670d: $f8 $fe
	cp   $3d                                         ; $670f: $fe $3d
	rst  $38                                         ; $6711: $ff
	ld   e, [hl]                                     ; $6712: $5e
	rst  $38                                         ; $6713: $ff
	ld   h, $ff                                      ; $6714: $26 $ff
	inc  hl                                          ; $6716: $23
	rst  $38                                         ; $6717: $ff
	daa                                              ; $6718: $27
	cp   $db                                         ; $6719: $fe $db
	db   $db                                         ; $671b: $db
	inc  bc                                          ; $671c: $03
	inc  bc                                          ; $671d: $03
	ld   bc, $0001                                   ; $671e: $01 $01 $00
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
	add  b                                           ; $6732: $80
	add  b                                           ; $6733: $80
	ld   b, b                                        ; $6734: $40
	ret  nz                                          ; $6735: $c0

	ret  nz                                          ; $6736: $c0

	ret  nz                                          ; $6737: $c0

	ldh  [$60], a                                    ; $6738: $e0 $60
	ldh  [rAUD4LEN], a                               ; $673a: $e0 $20
	ldh  [$e0], a                                    ; $673c: $e0 $e0
	ldh  [$e0], a                                    ; $673e: $e0 $e0
	nop                                              ; $6740: $00
	nop                                              ; $6741: $00
	nop                                              ; $6742: $00
	nop                                              ; $6743: $00
	nop                                              ; $6744: $00
	nop                                              ; $6745: $00
	nop                                              ; $6746: $00
	nop                                              ; $6747: $00
	rst  $38                                         ; $6748: $ff
	rst  $38                                         ; $6749: $ff
	ld   b, b                                        ; $674a: $40
	ld   a, a                                        ; $674b: $7f
	ccf                                              ; $674c: $3f
	ccf                                              ; $674d: $3f
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
	ld   d, $16                                      ; $6764: $16 $16
	rra                                              ; $6766: $1f
	dec  e                                           ; $6767: $1d
	rst  $38                                         ; $6768: $ff
	db   $fd                                         ; $6769: $fd
	inc  de                                          ; $676a: $13
	rst  $38                                         ; $676b: $ff
	rst  $38                                         ; $676c: $ff
	ld   sp, hl                                      ; $676d: $f9
	rra                                              ; $676e: $1f
	rra                                              ; $676f: $1f
	inc  de                                          ; $6770: $13
	inc  de                                          ; $6771: $13
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
	ld   bc, $ff00                                   ; $6787: $01 $00 $ff
	ld   a, a                                        ; $678a: $7f
	ld   b, b                                        ; $678b: $40
	jr   c, @+$41                                    ; $678c: $38 $3f

	nop                                              ; $678e: $00
	ld   bc, $0000                                   ; $678f: $01 $00 $00
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
	add  b                                           ; $67a3: $80
	ld   d, $d6                                      ; $67a4: $16 $d6
	rra                                              ; $67a6: $1f
	db   $dd                                         ; $67a7: $dd
	rra                                              ; $67a8: $1f
	db   $fd                                         ; $67a9: $fd
	di                                               ; $67aa: $f3
	rra                                              ; $67ab: $1f
	rra                                              ; $67ac: $1f
	ld   sp, hl                                      ; $67ad: $f9
	rra                                              ; $67ae: $1f
	rst  JumpTable                                         ; $67af: $df
	inc  de                                          ; $67b0: $13
	db   $d3                                         ; $67b1: $d3
	nop                                              ; $67b2: $00
	add  b                                           ; $67b3: $80
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
	inc  e                                           ; $67c3: $1c
	nop                                              ; $67c4: $00
	ld   c, $00                                      ; $67c5: $0e $00
	rlca                                             ; $67c7: $07
	nop                                              ; $67c8: $00
	rst  $38                                         ; $67c9: $ff
	ld   a, a                                        ; $67ca: $7f
	ld   b, b                                        ; $67cb: $40
	jr   nz, jr_027_680d                             ; $67cc: $20 $3f

	nop                                              ; $67ce: $00
	rlca                                             ; $67cf: $07
	nop                                              ; $67d0: $00
	ld   c, $00                                      ; $67d1: $0e $00
	inc  e                                           ; $67d3: $1c
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
	ld   d, $16                                      ; $67e4: $16 $16
	rra                                              ; $67e6: $1f
	sbc  l                                           ; $67e7: $9d
	rra                                              ; $67e8: $1f
	db   $fd                                         ; $67e9: $fd
	di                                               ; $67ea: $f3
	rra                                              ; $67eb: $1f
	rra                                              ; $67ec: $1f
	ld   sp, hl                                      ; $67ed: $f9
	rra                                              ; $67ee: $1f
	sbc  a                                           ; $67ef: $9f
	inc  de                                          ; $67f0: $13
	inc  de                                          ; $67f1: $13
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

jr_027_680d:
	nop                                              ; $680d: $00
	nop                                              ; $680e: $00
	nop                                              ; $680f: $00
	nop                                              ; $6810: $00
	nop                                              ; $6811: $00
	ld   [$0400], sp                                 ; $6812: $08 $00 $04
	nop                                              ; $6815: $00
	inc  b                                           ; $6816: $04
	nop                                              ; $6817: $00
	ld   [bc], a                                     ; $6818: $02
	nop                                              ; $6819: $00
	ld   [bc], a                                     ; $681a: $02
	nop                                              ; $681b: $00
	inc  bc                                          ; $681c: $03
	nop                                              ; $681d: $00
	add  hl, bc                                      ; $681e: $09
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
	adc  b                                           ; $6830: $88
	nop                                              ; $6831: $00
	adc  c                                           ; $6832: $89
	nop                                              ; $6833: $00
	adc  c                                           ; $6834: $89
	nop                                              ; $6835: $00
	adc  d                                           ; $6836: $8a
	nop                                              ; $6837: $00
	ld   b, d                                        ; $6838: $42
	nop                                              ; $6839: $00
	ld   b, [hl]                                     ; $683a: $46
	nop                                              ; $683b: $00
	inc  b                                           ; $683c: $04
	nop                                              ; $683d: $00
	ld   b, h                                        ; $683e: $44
	nop                                              ; $683f: $00
	rlca                                             ; $6840: $07
	nop                                              ; $6841: $00
	inc  bc                                          ; $6842: $03
	nop                                              ; $6843: $00
	inc  bc                                          ; $6844: $03
	nop                                              ; $6845: $00
	ld   bc, $0100                                   ; $6846: $01 $00 $01
	nop                                              ; $6849: $00
	ld   bc, $0100                                   ; $684a: $01 $00 $01
	nop                                              ; $684d: $00
	ld   bc, $0100                                   ; $684e: $01 $00 $01
	nop                                              ; $6851: $00
	ld   bc, $0100                                   ; $6852: $01 $00 $01
	nop                                              ; $6855: $00
	ld   bc, $0100                                   ; $6856: $01 $00 $01
	nop                                              ; $6859: $00
	ld   bc, $0100                                   ; $685a: $01 $00 $01
	nop                                              ; $685d: $00
	ld   bc, $8c00                                   ; $685e: $01 $00 $8c
	nop                                              ; $6861: $00
	adc  h                                           ; $6862: $8c
	nop                                              ; $6863: $00
	ret  c                                           ; $6864: $d8

	nop                                              ; $6865: $00
	ld   hl, sp+$00                                  ; $6866: $f8 $00
	ld   hl, sp+$00                                  ; $6868: $f8 $00
	sbc  b                                           ; $686a: $98
	ld   h, b                                        ; $686b: $60
	adc  b                                           ; $686c: $88
	ld   [hl], b                                     ; $686d: $70
	adc  b                                           ; $686e: $88
	ld   [hl], b                                     ; $686f: $70
	ld   [$08f0], sp                                 ; $6870: $08 $f0 $08
	ldh  a, [$08]                                    ; $6873: $f0 $08
	ldh  a, [$08]                                    ; $6875: $f0 $08
	ldh  a, [$08]                                    ; $6877: $f0 $08
	ldh  a, [$08]                                    ; $6879: $f0 $08
	ldh  a, [$08]                                    ; $687b: $f0 $08
	ldh  a, [$08]                                    ; $687d: $f0 $08
	ldh  a, [rSB]                                    ; $687f: $f0 $01
	nop                                              ; $6881: $00
	ld   bc, $0100                                   ; $6882: $01 $00 $01
	nop                                              ; $6885: $00
	inc  bc                                          ; $6886: $03
	nop                                              ; $6887: $00
	inc  bc                                          ; $6888: $03
	nop                                              ; $6889: $00
	inc  bc                                          ; $688a: $03
	nop                                              ; $688b: $00
	inc  bc                                          ; $688c: $03
	nop                                              ; $688d: $00
	rlca                                             ; $688e: $07
	nop                                              ; $688f: $00
	rlca                                             ; $6890: $07
	nop                                              ; $6891: $00
	rlca                                             ; $6892: $07
	nop                                              ; $6893: $00
	ld   b, $00                                      ; $6894: $06 $00
	ld   c, $00                                      ; $6896: $0e $00
	inc  c                                           ; $6898: $0c
	nop                                              ; $6899: $00
	ld   [$1800], sp                                 ; $689a: $08 $00 $18
	nop                                              ; $689d: $00
	stop                                             ; $689e: $10 $00
	ld   [$08f0], sp                                 ; $68a0: $08 $f0 $08
	ldh  a, [$08]                                    ; $68a3: $f0 $08
	ldh  a, [$98]                                    ; $68a5: $f0 $98
	ld   h, b                                        ; $68a7: $60
	sbc  b                                           ; $68a8: $98
	ld   h, b                                        ; $68a9: $60
	ld   hl, sp+$00                                  ; $68aa: $f8 $00
	db   $fc                                         ; $68ac: $fc
	nop                                              ; $68ad: $00
	cp   h                                           ; $68ae: $bc
	nop                                              ; $68af: $00
	inc  a                                           ; $68b0: $3c
	nop                                              ; $68b1: $00
	inc  l                                           ; $68b2: $2c
	nop                                              ; $68b3: $00
	inc  l                                           ; $68b4: $2c
	nop                                              ; $68b5: $00
	ld   h, $00                                      ; $68b6: $26 $00
	ld   h, $00                                      ; $68b8: $26 $00
	ld   [bc], a                                     ; $68ba: $02
	nop                                              ; $68bb: $00
	ld   bc, $0100                                   ; $68bc: $01 $00 $01
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
	stop                                             ; $68d2: $10 $00
	ld   b, $00                                      ; $68d4: $06 $00
	inc  bc                                          ; $68d6: $03
	nop                                              ; $68d7: $00
	ld   bc, $0000                                   ; $68d8: $01 $00 $00
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
	add  b                                           ; $68f6: $80
	nop                                              ; $68f7: $00
	ldh  a, [rP1]                                    ; $68f8: $f0 $00
	ld   a, [hl]                                     ; $68fa: $7e
	nop                                              ; $68fb: $00
	ccf                                              ; $68fc: $3f
	nop                                              ; $68fd: $00
	rrca                                             ; $68fe: $0f
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
	ld   [$0400], sp                                 ; $6910: $08 $00 $04
	nop                                              ; $6913: $00
	ld   b, [hl]                                     ; $6914: $46
	nop                                              ; $6915: $00
	inc  hl                                          ; $6916: $23
	nop                                              ; $6917: $00
	inc  sp                                          ; $6918: $33
	nop                                              ; $6919: $00
	add  hl, de                                      ; $691a: $19
	nop                                              ; $691b: $00
	adc  l                                           ; $691c: $8d
	nop                                              ; $691d: $00
	rst  $38                                         ; $691e: $ff
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
	jr   nz, jr_027_6934                             ; $6932: $20 $00

jr_027_6934:
	jr   nz, jr_027_6936                             ; $6934: $20 $00

jr_027_6936:
	jr   nz, jr_027_6938                             ; $6936: $20 $00

jr_027_6938:
	or   b                                           ; $6938: $b0
	nop                                              ; $6939: $00
	ret  nc                                          ; $693a: $d0

	nop                                              ; $693b: $00
	ret  nz                                          ; $693c: $c0

	nop                                              ; $693d: $00
	ldh  [rP1], a                                    ; $693e: $e0 $00
	rlca                                             ; $6940: $07
	nop                                              ; $6941: $00
	inc  bc                                          ; $6942: $03
	nop                                              ; $6943: $00
	nop                                              ; $6944: $00
	nop                                              ; $6945: $00
	nop                                              ; $6946: $00
	nop                                              ; $6947: $00

jr_027_6948:
	nop                                              ; $6948: $00
	nop                                              ; $6949: $00
	nop                                              ; $694a: $00
	nop                                              ; $694b: $00

jr_027_694c:
	nop                                              ; $694c: $00
	nop                                              ; $694d: $00
	nop                                              ; $694e: $00
	nop                                              ; $694f: $00
	ld   bc, $0000                                   ; $6950: $01 $00 $00
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
	rst  $38                                         ; $6960: $ff
	nop                                              ; $6961: $00
	rst  JumpTable                                         ; $6962: $df
	jr   nz, jr_027_694c                             ; $6963: $20 $e7

	jr   jr_027_69df                                 ; $6965: $18 $78

	rlca                                             ; $6967: $07
	ccf                                              ; $6968: $3f
	nop                                              ; $6969: $00

jr_027_696a:
	dec  c                                           ; $696a: $0d
	ld   [bc], a                                     ; $696b: $02
	inc  c                                           ; $696c: $0c
	inc  bc                                          ; $696d: $03
	inc  c                                           ; $696e: $0c
	inc  bc                                          ; $696f: $03

jr_027_6970:
	ld   hl, sp+$07                                  ; $6970: $f8 $07

jr_027_6972:
	jr   c, @+$09                                    ; $6972: $38 $07

	jr   @+$09                                       ; $6974: $18 $07

	jr   @+$09                                       ; $6976: $18 $07

	jr   jr_027_6981                                 ; $6978: $18 $07

	jr   @+$09                                       ; $697a: $18 $07

	jr   @+$09                                       ; $697c: $18 $07

	jr   c, @+$09                                    ; $697e: $38 $07

	or   b                                           ; $6980: $b0

jr_027_6981:
	ld   b, b                                        ; $6981: $40
	ldh  a, [rP1]                                    ; $6982: $f0 $00
	ldh  a, [rP1]                                    ; $6984: $f0 $00
	jr   c, jr_027_6948                              ; $6986: $38 $c0

	jr   jr_027_696a                                 ; $6988: $18 $e0

	ret  c                                           ; $698a: $d8

	jr   nz, jr_027_69c5                             ; $698b: $20 $38

	ret  nz                                          ; $698d: $c0

	jr   jr_027_6970                                 ; $698e: $18 $e0

	jr   jr_027_6972                                 ; $6990: $18 $e0

	ld   [$08f0], sp                                 ; $6992: $08 $f0 $08
	ldh  a, [$08]                                    ; $6995: $f0 $08
	ldh  a, [$08]                                    ; $6997: $f0 $08
	ldh  a, [$08]                                    ; $6999: $f0 $08
	ldh  a, [$08]                                    ; $699b: $f0 $08
	ldh  a, [$08]                                    ; $699d: $f0 $08
	ldh  a, [rP1]                                    ; $699f: $f0 $00
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
	rrca                                             ; $69ac: $0f
	nop                                              ; $69ad: $00
	nop                                              ; $69ae: $00
	nop                                              ; $69af: $00
	nop                                              ; $69b0: $00
	nop                                              ; $69b1: $00
	nop                                              ; $69b2: $00
	nop                                              ; $69b3: $00
	nop                                              ; $69b4: $00
	nop                                              ; $69b5: $00
	inc  bc                                          ; $69b6: $03
	nop                                              ; $69b7: $00
	rrca                                             ; $69b8: $0f
	nop                                              ; $69b9: $00
	inc  a                                           ; $69ba: $3c
	nop                                              ; $69bb: $00
	ret  nz                                          ; $69bc: $c0

	nop                                              ; $69bd: $00
	nop                                              ; $69be: $00
	nop                                              ; $69bf: $00
	inc  bc                                          ; $69c0: $03
	nop                                              ; $69c1: $00

jr_027_69c2:
	rra                                              ; $69c2: $1f
	nop                                              ; $69c3: $00
	rst  $38                                         ; $69c4: $ff

jr_027_69c5:
	nop                                              ; $69c5: $00
	ld   bc, $1f00                                   ; $69c6: $01 $00 $1f
	nop                                              ; $69c9: $00
	ldh  a, [rP1]                                    ; $69ca: $f0 $00
	nop                                              ; $69cc: $00
	nop                                              ; $69cd: $00

jr_027_69ce:
	inc  bc                                          ; $69ce: $03
	nop                                              ; $69cf: $00
	inc  c                                           ; $69d0: $0c
	ld   bc, $0e31                                   ; $69d1: $01 $31 $0e
	rst  $38                                         ; $69d4: $ff
	nop                                              ; $69d5: $00
	cp   $00                                         ; $69d6: $fe $00
	ldh  [rP1], a                                    ; $69d8: $e0 $00
	nop                                              ; $69da: $00
	nop                                              ; $69db: $00
	nop                                              ; $69dc: $00
	nop                                              ; $69dd: $00
	nop                                              ; $69de: $00

jr_027_69df:
	nop                                              ; $69df: $00
	ldh  a, [rIF]                                    ; $69e0: $f0 $0f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $69e2: $cf
	jr   nc, @+$01                                   ; $69e3: $30 $ff

	nop                                              ; $69e5: $00
	rst  $38                                         ; $69e6: $ff
	nop                                              ; $69e7: $00
	cp   $01                                         ; $69e8: $fe $01

jr_027_69ea:
	jr   nc, @+$05                                   ; $69ea: $30 $03

jr_027_69ec:
	ret  nz                                          ; $69ec: $c0

	rlca                                             ; $69ed: $07
	ld   bc, $1f3e                                   ; $69ee: $01 $3e $1f
	ldh  [rIE], a                                    ; $69f1: $e0 $ff
	nop                                              ; $69f3: $00
	jp   $0700                                       ; $69f4: $c3 $00 $07


	nop                                              ; $69f7: $00
	inc  c                                           ; $69f8: $0c
	nop                                              ; $69f9: $00
	jr   jr_027_69fc                                 ; $69fa: $18 $00

jr_027_69fc:
	jr   nz, jr_027_69fe                             ; $69fc: $20 $00

jr_027_69fe:
	ld   b, b                                        ; $69fe: $40
	nop                                              ; $69ff: $00
	jr   c, jr_027_69c2                              ; $6a00: $38 $c0

	ld   hl, sp+$00                                  ; $6a02: $f8 $00
	ld   hl, sp+$00                                  ; $6a04: $f8 $00
	ld   hl, sp+$00                                  ; $6a06: $f8 $00
	jr   jr_027_69ea                                 ; $6a08: $18 $e0

	jr   jr_027_69ec                                 ; $6a0a: $18 $e0

	jr   nc, jr_027_69ce                             ; $6a0c: $30 $c0

	ldh  a, [rP1]                                    ; $6a0e: $f0 $00
	ldh  [rP1], a                                    ; $6a10: $e0 $00
	ret  nz                                          ; $6a12: $c0

	nop                                              ; $6a13: $00
	and  b                                           ; $6a14: $a0
	nop                                              ; $6a15: $00
	ld   b, b                                        ; $6a16: $40
	nop                                              ; $6a17: $00
	ld   b, b                                        ; $6a18: $40
	nop                                              ; $6a19: $00
	add  b                                           ; $6a1a: $80
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
	inc  bc                                          ; $6a38: $03
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
	ldh  [rP1], a                                    ; $6a5a: $e0 $00
	ld   a, b                                        ; $6a5c: $78

jr_027_6a5d:
	nop                                              ; $6a5d: $00
	rra                                              ; $6a5e: $1f
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
	add  b                                           ; $6a76: $80
	nop                                              ; $6a77: $00
	add  b                                           ; $6a78: $80
	nop                                              ; $6a79: $00
	ld   b, b                                        ; $6a7a: $40
	nop                                              ; $6a7b: $00
	ld   h, b                                        ; $6a7c: $60
	nop                                              ; $6a7d: $00
	ldh  [rP1], a                                    ; $6a7e: $e0 $00
	ldh  [rP1], a                                    ; $6a80: $e0 $00
	rra                                              ; $6a82: $1f
	nop                                              ; $6a83: $00
	inc  bc                                          ; $6a84: $03
	nop                                              ; $6a85: $00
	ld   bc, $0000                                   ; $6a86: $01 $00 $00
	nop                                              ; $6a89: $00
	nop                                              ; $6a8a: $00
	nop                                              ; $6a8b: $00
	nop                                              ; $6a8c: $00
	nop                                              ; $6a8d: $00
	nop                                              ; $6a8e: $00
	nop                                              ; $6a8f: $00
	nop                                              ; $6a90: $00
	add  b                                           ; $6a91: $80
	nop                                              ; $6a92: $00
	db   $fc                                         ; $6a93: $fc
	jr   c, jr_027_6a5d                              ; $6a94: $38 $c7

	rst  $38                                         ; $6a96: $ff
	nop                                              ; $6a97: $00
	rst  $38                                         ; $6a98: $ff
	nop                                              ; $6a99: $00
	jr   c, jr_027_6ae3                              ; $6a9a: $38 $47

	nop                                              ; $6a9c: $00
	db   $fc                                         ; $6a9d: $fc
	nop                                              ; $6a9e: $00
	nop                                              ; $6a9f: $00
	rlca                                             ; $6aa0: $07
	nop                                              ; $6aa1: $00
	add  e                                           ; $6aa2: $83
	nop                                              ; $6aa3: $00
	rst  $38                                         ; $6aa4: $ff
	nop                                              ; $6aa5: $00
	rst  $38                                         ; $6aa6: $ff
	nop                                              ; $6aa7: $00
	ccf                                              ; $6aa8: $3f
	nop                                              ; $6aa9: $00
	ld   c, $00                                      ; $6aaa: $0e $00
	ld   c, $00                                      ; $6aac: $0e $00
	ld   c, $71                                      ; $6aae: $0e $71
	inc  b                                           ; $6ab0: $04
	ld   bc, $0004                                   ; $6ab1: $01 $04 $00
	nop                                              ; $6ab4: $00
	ldh  [$c0], a                                    ; $6ab5: $e0 $c0
	ccf                                              ; $6ab7: $3f
	ldh  a, [rIF]                                    ; $6ab8: $f0 $0f
	nop                                              ; $6aba: $00
	db   $fc                                         ; $6abb: $fc
	ld   [bc], a                                     ; $6abc: $02
	nop                                              ; $6abd: $00
	ld   [bc], a                                     ; $6abe: $02
	nop                                              ; $6abf: $00
	ldh  a, [rP1]                                    ; $6ac0: $f0 $00
	ldh  a, [rP1]                                    ; $6ac2: $f0 $00
	add  b                                           ; $6ac4: $80
	nop                                              ; $6ac5: $00
	inc  b                                           ; $6ac6: $04
	nop                                              ; $6ac7: $00
	inc  b                                           ; $6ac8: $04
	nop                                              ; $6ac9: $00
	inc  b                                           ; $6aca: $04
	nop                                              ; $6acb: $00
	ld   b, $08                                      ; $6acc: $06 $08
	ld   [bc], a                                     ; $6ace: $02
	db   $fc                                         ; $6acf: $fc
	ld   [bc], a                                     ; $6ad0: $02
	db   $fc                                         ; $6ad1: $fc
	ld   [bc], a                                     ; $6ad2: $02
	inc  c                                           ; $6ad3: $0c
	ld   [bc], a                                     ; $6ad4: $02
	inc  b                                           ; $6ad5: $04
	inc  b                                           ; $6ad6: $04
	nop                                              ; $6ad7: $00
	nop                                              ; $6ad8: $00
	ldh  [rP1], a                                    ; $6ad9: $e0 $00
	nop                                              ; $6adb: $00
	nop                                              ; $6adc: $00
	nop                                              ; $6add: $00
	nop                                              ; $6ade: $00
	nop                                              ; $6adf: $00
	nop                                              ; $6ae0: $00
	nop                                              ; $6ae1: $00
	nop                                              ; $6ae2: $00

jr_027_6ae3:
	nop                                              ; $6ae3: $00
	nop                                              ; $6ae4: $00
	nop                                              ; $6ae5: $00
	nop                                              ; $6ae6: $00
	nop                                              ; $6ae7: $00
	nop                                              ; $6ae8: $00
	nop                                              ; $6ae9: $00
	rlca                                             ; $6aea: $07
	nop                                              ; $6aeb: $00
	rra                                              ; $6aec: $1f
	nop                                              ; $6aed: $00
	ldh  [rP1], a                                    ; $6aee: $e0 $00
	nop                                              ; $6af0: $00
	nop                                              ; $6af1: $00
	nop                                              ; $6af2: $00
	nop                                              ; $6af3: $00
	nop                                              ; $6af4: $00
	nop                                              ; $6af5: $00
	ld   bc, $0600                                   ; $6af6: $01 $00 $06
	nop                                              ; $6af9: $00
	nop                                              ; $6afa: $00
	nop                                              ; $6afb: $00
	nop                                              ; $6afc: $00
	nop                                              ; $6afd: $00
	nop                                              ; $6afe: $00
	nop                                              ; $6aff: $00
	ld   b, $00                                      ; $6b00: $06 $00
	ld   a, $00                                      ; $6b02: $3e $00
	ld   b, $00                                      ; $6b04: $06 $00
	rra                                              ; $6b06: $1f
	nop                                              ; $6b07: $00
	rst  $38                                         ; $6b08: $ff
	nop                                              ; $6b09: $00
	rst  $38                                         ; $6b0a: $ff
	nop                                              ; $6b0b: $00
	rst  $38                                         ; $6b0c: $ff
	nop                                              ; $6b0d: $00
	rra                                              ; $6b0e: $1f
	nop                                              ; $6b0f: $00
	rrca                                             ; $6b10: $0f
	nop                                              ; $6b11: $00
	inc  a                                           ; $6b12: $3c
	nop                                              ; $6b13: $00
	ldh  [rP1], a                                    ; $6b14: $e0 $00
	add  b                                           ; $6b16: $80
	nop                                              ; $6b17: $00
	nop                                              ; $6b18: $00
	nop                                              ; $6b19: $00
	nop                                              ; $6b1a: $00
	nop                                              ; $6b1b: $00
	nop                                              ; $6b1c: $00
	nop                                              ; $6b1d: $00
	nop                                              ; $6b1e: $00
	nop                                              ; $6b1f: $00
	ld   [bc], a                                     ; $6b20: $02
	nop                                              ; $6b21: $00
	ld   [bc], a                                     ; $6b22: $02
	inc  b                                           ; $6b23: $04
	ld   [bc], a                                     ; $6b24: $02
	ld   a, h                                        ; $6b25: $7c
	ld   [bc], a                                     ; $6b26: $02
	nop                                              ; $6b27: $00
	inc  b                                           ; $6b28: $04
	nop                                              ; $6b29: $00
	adc  h                                           ; $6b2a: $8c
	nop                                              ; $6b2b: $00
	ldh  a, [rP1]                                    ; $6b2c: $f0 $00
	ldh  [rP1], a                                    ; $6b2e: $e0 $00
	nop                                              ; $6b30: $00
	nop                                              ; $6b31: $00
	nop                                              ; $6b32: $00
	nop                                              ; $6b33: $00
	stop                                             ; $6b34: $10 $00
	ld   h, b                                        ; $6b36: $60
	nop                                              ; $6b37: $00
	add  b                                           ; $6b38: $80
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
	rst  $38                                         ; $6b50: $ff
	nop                                              ; $6b51: $00
	rrca                                             ; $6b52: $0f
	nop                                              ; $6b53: $00
	inc  bc                                          ; $6b54: $03
	nop                                              ; $6b55: $00
	ld   bc, $0100                                   ; $6b56: $01 $00 $01
	nop                                              ; $6b59: $00
	ld   bc, $0100                                   ; $6b5a: $01 $00 $01
	nop                                              ; $6b5d: $00
	ld   bc, $0000                                   ; $6b5e: $01 $00 $00
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
	ldh  [rP1], a                                    ; $6b72: $e0 $00
	ldh  a, [rP1]                                    ; $6b74: $f0 $00
	ret  c                                           ; $6b76: $d8

	nop                                              ; $6b77: $00
	adc  b                                           ; $6b78: $88
	nop                                              ; $6b79: $00
	add  h                                           ; $6b7a: $84
	nop                                              ; $6b7b: $00
	inc  b                                           ; $6b7c: $04
	nop                                              ; $6b7d: $00
	inc  b                                           ; $6b7e: $04
	nop                                              ; $6b7f: $00
	nop                                              ; $6b80: $00
	nop                                              ; $6b81: $00
	nop                                              ; $6b82: $00
	cp   $00                                         ; $6b83: $fe $00
	ldh  a, [$fe]                                    ; $6b85: $f0 $fe
	ld   bc, $0080                                   ; $6b87: $01 $80 $00
	nop                                              ; $6b8a: $00
	ld   hl, sp+$00                                  ; $6b8b: $f8 $00
	nop                                              ; $6b8d: $00
	nop                                              ; $6b8e: $00
	nop                                              ; $6b8f: $00
	rlca                                             ; $6b90: $07
	nop                                              ; $6b91: $00
	inc  bc                                          ; $6b92: $03
	nop                                              ; $6b93: $00
	ld   bc, $0700                                   ; $6b94: $01 $00 $07
	nop                                              ; $6b97: $00
	rra                                              ; $6b98: $1f
	nop                                              ; $6b99: $00
	rst  $38                                         ; $6b9a: $ff
	nop                                              ; $6b9b: $00
	inc  bc                                          ; $6b9c: $03
	nop                                              ; $6b9d: $00
	nop                                              ; $6b9e: $00
	nop                                              ; $6b9f: $00
	inc  b                                           ; $6ba0: $04
	nop                                              ; $6ba1: $00
	jr   nz, jr_027_6ba4                             ; $6ba2: $20 $00

jr_027_6ba4:
	ld   [hl], b                                     ; $6ba4: $70
	nop                                              ; $6ba5: $00
	ld   d, b                                        ; $6ba6: $50
	jr   nz, jr_027_6bfd                             ; $6ba7: $20 $54

	jr   nz, jr_027_6c1f                             ; $6ba9: $20 $74

	nop                                              ; $6bab: $00
	inc  h                                           ; $6bac: $24
	nop                                              ; $6bad: $00
	inc  c                                           ; $6bae: $0c
	nop                                              ; $6baf: $00
	inc  b                                           ; $6bb0: $04
	nop                                              ; $6bb1: $00
	inc  b                                           ; $6bb2: $04
	nop                                              ; $6bb3: $00
	adc  b                                           ; $6bb4: $88
	nop                                              ; $6bb5: $00
	adc  b                                           ; $6bb6: $88
	nop                                              ; $6bb7: $00
	ret  nz                                          ; $6bb8: $c0

	nop                                              ; $6bb9: $00
	ldh  [rP1], a                                    ; $6bba: $e0 $00
	ret  nz                                          ; $6bbc: $c0

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
	ld   hl, sp+$00                                  ; $6bd2: $f8 $00
	inc  c                                           ; $6bd4: $0c
	nop                                              ; $6bd5: $00
	db   $fc                                         ; $6bd6: $fc
	nop                                              ; $6bd7: $00
	ld   c, $00                                      ; $6bd8: $0e $00
	ld   [bc], a                                     ; $6bda: $02
	nop                                              ; $6bdb: $00
	nop                                              ; $6bdc: $00
	nop                                              ; $6bdd: $00
	jr   jr_027_6be0                                 ; $6bde: $18 $00

jr_027_6be0:
	inc  b                                           ; $6be0: $04
	jr   jr_027_6be7                                 ; $6be1: $18 $04

	jr   c, jr_027_6be9                              ; $6be3: $38 $04

	ld   b, b                                        ; $6be5: $40
	nop                                              ; $6be6: $00

jr_027_6be7:
	ld   b, h                                        ; $6be7: $44
	nop                                              ; $6be8: $00

jr_027_6be9:
	ld   b, h                                        ; $6be9: $44
	ld   b, b                                        ; $6bea: $40
	inc  b                                           ; $6beb: $04
	ld   b, b                                        ; $6bec: $40
	inc  a                                           ; $6bed: $3c
	ld   b, b                                        ; $6bee: $40
	jr   c, jr_027_6c21                              ; $6bef: $38 $30

	nop                                              ; $6bf1: $00
	ld   [bc], a                                     ; $6bf2: $02
	nop                                              ; $6bf3: $00
	cp   $00                                         ; $6bf4: $fe $00
	inc  b                                           ; $6bf6: $04
	nop                                              ; $6bf7: $00
	inc  e                                           ; $6bf8: $1c
	nop                                              ; $6bf9: $00
	db   $fc                                         ; $6bfa: $fc
	nop                                              ; $6bfb: $00
	nop                                              ; $6bfc: $00

jr_027_6bfd:
	nop                                              ; $6bfd: $00
	nop                                              ; $6bfe: $00
	nop                                              ; $6bff: $00
	nop                                              ; $6c00: $00
	ld   bc, $0100                                   ; $6c01: $01 $00 $01
	nop                                              ; $6c04: $00
	ld   bc, $0100                                   ; $6c05: $01 $00 $01
	nop                                              ; $6c08: $00
	ld   bc, $8300                                   ; $6c09: $01 $00 $83
	nop                                              ; $6c0c: $00
	add  e                                           ; $6c0d: $83
	nop                                              ; $6c0e: $00
	add  e                                           ; $6c0f: $83
	nop                                              ; $6c10: $00
	jp   Jump_027_6681                               ; $6c11: $c3 $81 $66


	add  c                                           ; $6c14: $81
	ld   a, [hl]                                     ; $6c15: $7e
	jp   nz, Jump_027_663c                           ; $6c16: $c2 $3c $66

	jr   @+$7e                                       ; $6c19: $18 $7c

	nop                                              ; $6c1b: $00
	jr   c, jr_027_6c1e                              ; $6c1c: $38 $00

jr_027_6c1e:
	nop                                              ; $6c1e: $00

jr_027_6c1f:
	nop                                              ; $6c1f: $00
	nop                                              ; $6c20: $00

jr_027_6c21:
	add  c                                           ; $6c21: $81
	nop                                              ; $6c22: $00
	add  c                                           ; $6c23: $81
	nop                                              ; $6c24: $00
	add  c                                           ; $6c25: $81
	nop                                              ; $6c26: $00
	ld   bc, $0100                                   ; $6c27: $01 $00 $01
	nop                                              ; $6c2a: $00
	ld   bc, $0100                                   ; $6c2b: $01 $00 $01
	nop                                              ; $6c2e: $00
	inc  bc                                          ; $6c2f: $03
	nop                                              ; $6c30: $00
	inc  bc                                          ; $6c31: $03
	nop                                              ; $6c32: $00
	inc  bc                                          ; $6c33: $03
	ld   bc, $0102                                   ; $6c34: $01 $02 $01
	ld   b, $02                                      ; $6c37: $06 $02
	inc  b                                           ; $6c39: $04
	add  d                                           ; $6c3a: $82
	inc  c                                           ; $6c3b: $0c
	ld   b, h                                        ; $6c3c: $44
	jr   c, jr_027_6c77                              ; $6c3d: $38 $38

	nop                                              ; $6c3f: $00
	nop                                              ; $6c40: $00
	add  c                                           ; $6c41: $81
	nop                                              ; $6c42: $00
	add  c                                           ; $6c43: $81
	nop                                              ; $6c44: $00
	add  c                                           ; $6c45: $81
	nop                                              ; $6c46: $00
	add  c                                           ; $6c47: $81
	nop                                              ; $6c48: $00
	nop                                              ; $6c49: $00
	nop                                              ; $6c4a: $00
	nop                                              ; $6c4b: $00
	nop                                              ; $6c4c: $00
	nop                                              ; $6c4d: $00
	nop                                              ; $6c4e: $00
	nop                                              ; $6c4f: $00
	nop                                              ; $6c50: $00
	ld   bc, $0100                                   ; $6c51: $01 $00 $01
	nop                                              ; $6c54: $00
	ld   bc, $0100                                   ; $6c55: $01 $00 $01
	nop                                              ; $6c58: $00
	ld   [bc], a                                     ; $6c59: $02
	nop                                              ; $6c5a: $00
	ld   [bc], a                                     ; $6c5b: $02
	nop                                              ; $6c5c: $00
	inc  b                                           ; $6c5d: $04
	jr   nz, jr_027_6c78                             ; $6c5e: $20 $18

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
	ccf                                              ; $6c71: $3f
	nop                                              ; $6c72: $00
	rlca                                             ; $6c73: $07
	nop                                              ; $6c74: $00
	nop                                              ; $6c75: $00
	rlca                                             ; $6c76: $07

jr_027_6c77:
	nop                                              ; $6c77: $00

jr_027_6c78:
	nop                                              ; $6c78: $00
	ccf                                              ; $6c79: $3f
	nop                                              ; $6c7a: $00
	nop                                              ; $6c7b: $00
	nop                                              ; $6c7c: $00

jr_027_6c7d:
	inc  bc                                          ; $6c7d: $03
	nop                                              ; $6c7e: $00
	ld   a, h                                        ; $6c7f: $7c
	nop                                              ; $6c80: $00
	nop                                              ; $6c81: $00
	ld   bc, $0000                                   ; $6c82: $01 $00 $00
	nop                                              ; $6c85: $00
	jr   jr_027_6c88                                 ; $6c86: $18 $00

jr_027_6c88:
	ld   sp, $6700                                   ; $6c88: $31 $00 $67
	nop                                              ; $6c8b: $00
	ld   e, a                                        ; $6c8c: $5f
	nop                                              ; $6c8d: $00
	ld   e, [hl]                                     ; $6c8e: $5e
	ld   bc, $00ff                                   ; $6c8f: $01 $ff $00
	rst  $28                                         ; $6c92: $ef
	db   $10                                         ; $6c93: $10
	rst  $38                                         ; $6c94: $ff
	nop                                              ; $6c95: $00
	ld   hl, sp+$07                                  ; $6c96: $f8 $07
	cp   $01                                         ; $6c98: $fe $01
	ld   a, l                                        ; $6c9a: $7d
	ld   [bc], a                                     ; $6c9b: $02
	ret                                              ; $6c9c: $c9


	jr   nc, jr_027_6c7d                             ; $6c9d: $30 $de

	nop                                              ; $6c9f: $00
	nop                                              ; $6ca0: $00
	nop                                              ; $6ca1: $00
	ld   h, b                                        ; $6ca2: $60
	nop                                              ; $6ca3: $00
	nop                                              ; $6ca4: $00
	nop                                              ; $6ca5: $00
	rra                                              ; $6ca6: $1f
	nop                                              ; $6ca7: $00
	ldh  a, [rP1]                                    ; $6ca8: $f0 $00
	ret  nz                                          ; $6caa: $c0

	nop                                              ; $6cab: $00
	nop                                              ; $6cac: $00
	db   $ec                                         ; $6cad: $ec
	nop                                              ; $6cae: $00
	nop                                              ; $6caf: $00
	inc  a                                           ; $6cb0: $3c
	inc  bc                                          ; $6cb1: $03
	ldh  [$1f], a                                    ; $6cb2: $e0 $1f
	nop                                              ; $6cb4: $00
	rst  $38                                         ; $6cb5: $ff
	rst  $38                                         ; $6cb6: $ff
	nop                                              ; $6cb7: $00
	ld   bc, $fcfe                                   ; $6cb8: $01 $fe $fc
	nop                                              ; $6cbb: $00
	ld   a, h                                        ; $6cbc: $7c
	add  b                                           ; $6cbd: $80
	rrca                                             ; $6cbe: $0f
	ld   [hl], b                                     ; $6cbf: $70
	nop                                              ; $6cc0: $00
	nop                                              ; $6cc1: $00
	nop                                              ; $6cc2: $00
	nop                                              ; $6cc3: $00
	ld   a, b                                        ; $6cc4: $78
	nop                                              ; $6cc5: $00
	add  b                                           ; $6cc6: $80
	nop                                              ; $6cc7: $00
	nop                                              ; $6cc8: $00
	nop                                              ; $6cc9: $00
	nop                                              ; $6cca: $00
	nop                                              ; $6ccb: $00
	nop                                              ; $6ccc: $00
	jr   nz, jr_027_6ccf                             ; $6ccd: $20 $00

jr_027_6ccf:
	nop                                              ; $6ccf: $00
	nop                                              ; $6cd0: $00
	ldh  [rP1], a                                    ; $6cd1: $e0 $00
	nop                                              ; $6cd3: $00
	nop                                              ; $6cd4: $00
	rst  $38                                         ; $6cd5: $ff
	rst  $38                                         ; $6cd6: $ff
	nop                                              ; $6cd7: $00
	rst  $38                                         ; $6cd8: $ff
	nop                                              ; $6cd9: $00
	ld   a, b                                        ; $6cda: $78
	rlca                                             ; $6cdb: $07
	nop                                              ; $6cdc: $00
	nop                                              ; $6cdd: $00
	nop                                              ; $6cde: $00
	ld   h, b                                        ; $6cdf: $60
	ld   l, a                                        ; $6ce0: $6f
	nop                                              ; $6ce1: $00
	inc  hl                                          ; $6ce2: $23
	nop                                              ; $6ce3: $00
	ld   sp, $0c00                                   ; $6ce4: $31 $00 $0c
	nop                                              ; $6ce7: $00
	ld   b, $00                                      ; $6ce8: $06 $00
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
	jr   jr_027_6d03                                 ; $6d01: $18 $00

jr_027_6d03:
	jr   jr_027_6d05                                 ; $6d03: $18 $00

jr_027_6d05:
	ld   [rRAMG], sp                                 ; $6d05: $08 $00 $00
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
	jr   jr_027_6d23                                 ; $6d21: $18 $00

jr_027_6d23:
	jr   jr_027_6d25                                 ; $6d23: $18 $00

jr_027_6d25:
	jr   jr_027_6d27                                 ; $6d25: $18 $00

jr_027_6d27:
	ld   [rRAMG], sp                                 ; $6d27: $08 $00 $00
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
	jr   jr_027_6d4b                                 ; $6d49: $18 $00

jr_027_6d4b:
	stop                                             ; $6d4b: $10 $00
	dec  b                                           ; $6d4d: $05
	nop                                              ; $6d4e: $00
	inc  c                                           ; $6d4f: $0c
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
	add  b                                           ; $6d68: $80
	nop                                              ; $6d69: $00
	add  b                                           ; $6d6a: $80
	nop                                              ; $6d6b: $00
	sub  b                                           ; $6d6c: $90
	nop                                              ; $6d6d: $00
	sub  b                                           ; $6d6e: $90
	nop                                              ; $6d6f: $00
	cp   d                                           ; $6d70: $ba
	dec  hl                                          ; $6d71: $2b
	db   $f4                                         ; $6d72: $f4
	ld   d, a                                        ; $6d73: $57
	db   $f4                                         ; $6d74: $f4
	ld   d, a                                        ; $6d75: $57
	rst  $20                                         ; $6d76: $e7
	and  a                                           ; $6d77: $a7
	db   $e3                                         ; $6d78: $e3
	and  d                                           ; $6d79: $a2
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6d7a: $cf
	call z, $dedf                                    ; $6d7b: $cc $df $de
	sbc  a                                           ; $6d7e: $9f
	sbc  a                                           ; $6d7f: $9f
	nop                                              ; $6d80: $00
	jr   nz, jr_027_6d83                             ; $6d81: $20 $00

jr_027_6d83:
	jr   nz, jr_027_6d85                             ; $6d83: $20 $00

jr_027_6d85:
	jr   nz, jr_027_6d87                             ; $6d85: $20 $00

jr_027_6d87:
	jr   nc, jr_027_6d89                             ; $6d87: $30 $00

jr_027_6d89:
	jr   nc, jr_027_6d8b                             ; $6d89: $30 $00

jr_027_6d8b:
	jr   nc, jr_027_6d8d                             ; $6d8b: $30 $00

jr_027_6d8d:
	stop                                             ; $6d8d: $10 $00
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
	add  b                                           ; $6da2: $80
	ld   b, b                                        ; $6da3: $40
	ret  nz                                          ; $6da4: $c0

	jr   nc, jr_027_6dd8                             ; $6da5: $30 $31

	ld   c, $00                                      ; $6da7: $0e $00
	nop                                              ; $6da9: $00
	ld   c, $00                                      ; $6daa: $0e $00
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
	rlca                                             ; $6dcc: $07
	nop                                              ; $6dcd: $00
	ccf                                              ; $6dce: $3f
	nop                                              ; $6dcf: $00
	ld   a, b                                        ; $6dd0: $78
	rlca                                             ; $6dd1: $07
	cp   $01                                         ; $6dd2: $fe $01
	rst  $38                                         ; $6dd4: $ff
	nop                                              ; $6dd5: $00
	rst  $38                                         ; $6dd6: $ff
	nop                                              ; $6dd7: $00

jr_027_6dd8:
	rst  $38                                         ; $6dd8: $ff
	nop                                              ; $6dd9: $00
	cp   $01                                         ; $6dda: $fe $01
	ld   a, b                                        ; $6ddc: $78
	inc  b                                           ; $6ddd: $04
	inc  a                                           ; $6dde: $3c
	ld   [bc], a                                     ; $6ddf: $02
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
	ccf                                              ; $6dea: $3f
	nop                                              ; $6deb: $00
	cp   $00                                         ; $6dec: $fe $00
	ldh  a, [rP1]                                    ; $6dee: $f0 $00
	ld   b, b                                        ; $6df0: $40
	add  b                                           ; $6df1: $80
	nop                                              ; $6df2: $00
	ret  nz                                          ; $6df3: $c0

	ld   hl, sp+$07                                  ; $6df4: $f8 $07
	rst  $38                                         ; $6df6: $ff
	nop                                              ; $6df7: $00
	nop                                              ; $6df8: $00
	rst  $38                                         ; $6df9: $ff
	nop                                              ; $6dfa: $00
	ret  nz                                          ; $6dfb: $c0

	nop                                              ; $6dfc: $00
	nop                                              ; $6dfd: $00
	inc  bc                                          ; $6dfe: $03
	nop                                              ; $6dff: $00
	nop                                              ; $6e00: $00
	nop                                              ; $6e01: $00
	nop                                              ; $6e02: $00
	nop                                              ; $6e03: $00
	nop                                              ; $6e04: $00
	nop                                              ; $6e05: $00
	nop                                              ; $6e06: $00
	nop                                              ; $6e07: $00
	inc  bc                                          ; $6e08: $03
	nop                                              ; $6e09: $00
	ldh  a, [rP1]                                    ; $6e0a: $f0 $00
	nop                                              ; $6e0c: $00
	nop                                              ; $6e0d: $00
	nop                                              ; $6e0e: $00
	nop                                              ; $6e0f: $00
	nop                                              ; $6e10: $00
	ld   a, a                                        ; $6e11: $7f
	nop                                              ; $6e12: $00
	nop                                              ; $6e13: $00
	nop                                              ; $6e14: $00
	rst  $38                                         ; $6e15: $ff
	rst  $38                                         ; $6e16: $ff
	nop                                              ; $6e17: $00
	nop                                              ; $6e18: $00
	db   $fc                                         ; $6e19: $fc
	nop                                              ; $6e1a: $00
	nop                                              ; $6e1b: $00
	nop                                              ; $6e1c: $00
	nop                                              ; $6e1d: $00
	nop                                              ; $6e1e: $00
	ld   h, b                                        ; $6e1f: $60
	nop                                              ; $6e20: $00
	nop                                              ; $6e21: $00
	nop                                              ; $6e22: $00
	nop                                              ; $6e23: $00
	nop                                              ; $6e24: $00
	nop                                              ; $6e25: $00
	nop                                              ; $6e26: $00
	nop                                              ; $6e27: $00
	ret  nz                                          ; $6e28: $c0

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
	ldh  a, [$fe]                                    ; $6e35: $f0 $fe
	ld   bc, $0000                                   ; $6e37: $01 $00 $00
	nop                                              ; $6e3a: $00
	nop                                              ; $6e3b: $00
	nop                                              ; $6e3c: $00
	nop                                              ; $6e3d: $00
	nop                                              ; $6e3e: $00
	nop                                              ; $6e3f: $00
	rrca                                             ; $6e40: $0f
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
	ldh  a, [rP1]                                    ; $6e60: $f0 $00
	rrca                                             ; $6e62: $0f
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
	ldh  a, [rP1]                                    ; $6e82: $f0 $00
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
	ld   c, $31                                      ; $6eb2: $0e $31
	ld   a, a                                        ; $6eb4: $7f
	nop                                              ; $6eb5: $00
	rst  $38                                         ; $6eb6: $ff
	nop                                              ; $6eb7: $00
	rst  $38                                         ; $6eb8: $ff
	nop                                              ; $6eb9: $00
	ld   a, [hl]                                     ; $6eba: $7e
	ld   bc, $110e                                   ; $6ebb: $01 $0e $11
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
	ld   a, a                                        ; $6ed0: $7f
	nop                                              ; $6ed1: $00

jr_027_6ed2:
	nop                                              ; $6ed2: $00
	nop                                              ; $6ed3: $00
	nop                                              ; $6ed4: $00
	rst  $38                                         ; $6ed5: $ff
	rst  $38                                         ; $6ed6: $ff
	nop                                              ; $6ed7: $00
	ld   hl, sp+$07                                  ; $6ed8: $f8 $07
	nop                                              ; $6eda: $00
	nop                                              ; $6edb: $00
	nop                                              ; $6edc: $00
	rst  JumpTable                                         ; $6edd: $df
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
	db   $fc                                         ; $6ef0: $fc
	nop                                              ; $6ef1: $00
	nop                                              ; $6ef2: $00
	nop                                              ; $6ef3: $00
	nop                                              ; $6ef4: $00
	rst  $38                                         ; $6ef5: $ff
	rst  $38                                         ; $6ef6: $ff
	nop                                              ; $6ef7: $00
	nop                                              ; $6ef8: $00
	nop                                              ; $6ef9: $00
	nop                                              ; $6efa: $00
	nop                                              ; $6efb: $00
	nop                                              ; $6efc: $00
	cp   $00                                         ; $6efd: $fe $00
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
	ldh  a, [rTMA]                                   ; $6f16: $f0 $06
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
	ld   hl, $2200                                   ; $6f30: $21 $00 $22
	nop                                              ; $6f33: $00
	ld   c, [hl]                                     ; $6f34: $4e
	nop                                              ; $6f35: $00
	ld   e, h                                        ; $6f36: $5c
	nop                                              ; $6f37: $00
	ld   a, h                                        ; $6f38: $7c
	nop                                              ; $6f39: $00
	jr   c, jr_027_6f3c                              ; $6f3a: $38 $00

jr_027_6f3c:
	ld   a, [hl]                                     ; $6f3c: $7e
	nop                                              ; $6f3d: $00
	ld   e, b                                        ; $6f3e: $58
	jr   nz, jr_027_6ed2                             ; $6f3f: $20 $91

	ld   h, b                                        ; $6f41: $60
	sub  b                                           ; $6f42: $90
	ld   h, b                                        ; $6f43: $60
	db   $10                                         ; $6f44: $10
	ldh  [rAUD2LOW], a                               ; $6f45: $e0 $18
	ldh  [rDIV], a                                   ; $6f47: $e0 $04
	ld   hl, sp+$0f                                  ; $6f49: $f8 $0f
	ldh  a, [rAUD2LOW]                               ; $6f4b: $f0 $18
	ldh  [$80], a                                    ; $6f4d: $e0 $80
	ld   h, b                                        ; $6f4f: $60
	ld   d, b                                        ; $6f50: $50
	jr   nz, jr_027_6fa3                             ; $6f51: $20 $50

	jr   nz, jr_027_6f8d                             ; $6f53: $20 $38

	nop                                              ; $6f55: $00
	jr   jr_027_6f58                                 ; $6f56: $18 $00

jr_027_6f58:
	inc  l                                           ; $6f58: $2c
	nop                                              ; $6f59: $00
	ld   d, $00                                      ; $6f5a: $16 $00
	ld   [de], a                                     ; $6f5c: $12
	nop                                              ; $6f5d: $00
	add  hl, bc                                      ; $6f5e: $09
	nop                                              ; $6f5f: $00
	ld   b, c                                        ; $6f60: $41
	nop                                              ; $6f61: $00
	ld   b, e                                        ; $6f62: $43
	nop                                              ; $6f63: $00
	ld   b, d                                        ; $6f64: $42
	nop                                              ; $6f65: $00
	ld   b, [hl]                                     ; $6f66: $46
	nop                                              ; $6f67: $00
	ld   h, [hl]                                     ; $6f68: $66
	nop                                              ; $6f69: $00
	ld   l, h                                        ; $6f6a: $6c
	nop                                              ; $6f6b: $00
	ld   a, h                                        ; $6f6c: $7c
	nop                                              ; $6f6d: $00
	ld   a, h                                        ; $6f6e: $7c
	nop                                              ; $6f6f: $00
	ld   c, b                                        ; $6f70: $48
	jr   nc, jr_027_6fbb                             ; $6f71: $30 $48

	jr   nc, jr_027_6fbd                             ; $6f73: $30 $48

	jr   nc, jr_027_6fbf                             ; $6f75: $30 $48

	jr   nc, jr_027_6fc2                             ; $6f77: $30 $49

	jr   nc, jr_027_6fc5                             ; $6f79: $30 $4a

	jr   nc, jr_027_6fc1                             ; $6f7b: $30 $44

	jr   c, jr_027_6fc3                              ; $6f7d: $38 $44

	jr   c, jr_027_6fc5                              ; $6f7f: $38 $44

	jr   c, jr_027_6fc3                              ; $6f81: $38 $40

	jr   c, jr_027_6fc5                              ; $6f83: $38 $40

	jr   c, jr_027_6fd2                              ; $6f85: $38 $4b

	jr   nc, jr_027_6fd1                             ; $6f87: $30 $48

	jr   nc, jr_027_6fd7                             ; $6f89: $30 $4c

	jr   nc, jr_027_6fdb                             ; $6f8b: $30 $4e

jr_027_6f8d:
	jr   nc, jr_027_6ffd                             ; $6f8d: $30 $6e

	db   $10                                         ; $6f8f: $10
	ld   l, c                                        ; $6f90: $69
	db   $10                                         ; $6f91: $10
	ld   a, h                                        ; $6f92: $7c
	nop                                              ; $6f93: $00
	ld   l, h                                        ; $6f94: $6c
	nop                                              ; $6f95: $00
	ld   l, [hl]                                     ; $6f96: $6e
	nop                                              ; $6f97: $00
	ld   l, [hl]                                     ; $6f98: $6e
	nop                                              ; $6f99: $00
	ld   b, d                                        ; $6f9a: $42
	nop                                              ; $6f9b: $00
	ld   b, d                                        ; $6f9c: $42
	nop                                              ; $6f9d: $00
	ld   b, c                                        ; $6f9e: $41
	nop                                              ; $6f9f: $00
	nop                                              ; $6fa0: $00
	nop                                              ; $6fa1: $00
	nop                                              ; $6fa2: $00

jr_027_6fa3:
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

jr_027_6fbb:
	nop                                              ; $6fbb: $00
	nop                                              ; $6fbc: $00

jr_027_6fbd:
	nop                                              ; $6fbd: $00
	nop                                              ; $6fbe: $00

jr_027_6fbf:
	nop                                              ; $6fbf: $00
	nop                                              ; $6fc0: $00

jr_027_6fc1:
	nop                                              ; $6fc1: $00

jr_027_6fc2:
	nop                                              ; $6fc2: $00

jr_027_6fc3:
	nop                                              ; $6fc3: $00
	nop                                              ; $6fc4: $00

jr_027_6fc5:
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

jr_027_6fd1:
	nop                                              ; $6fd1: $00

jr_027_6fd2:
	nop                                              ; $6fd2: $00
	nop                                              ; $6fd3: $00
	nop                                              ; $6fd4: $00
	nop                                              ; $6fd5: $00
	nop                                              ; $6fd6: $00

jr_027_6fd7:
	nop                                              ; $6fd7: $00
	nop                                              ; $6fd8: $00
	nop                                              ; $6fd9: $00
	nop                                              ; $6fda: $00

jr_027_6fdb:
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

jr_027_6ffd:
	nop                                              ; $6ffd: $00
	nop                                              ; $6ffe: $00
	nop                                              ; $6fff: $00
	nop                                              ; $7000: $00
	nop                                              ; $7001: $00
	nop                                              ; $7002: $00
	nop                                              ; $7003: $00
	nop                                              ; $7004: $00
	nop                                              ; $7005: $00
	rrca                                             ; $7006: $0f
	rrca                                             ; $7007: $0f
	ld   a, a                                        ; $7008: $7f
	ld   a, a                                        ; $7009: $7f
	ccf                                              ; $700a: $3f
	ccf                                              ; $700b: $3f
	ccf                                              ; $700c: $3f
	cpl                                              ; $700d: $2f
	ld   a, a                                        ; $700e: $7f
	ld   l, a                                        ; $700f: $6f
	ld   a, a                                        ; $7010: $7f
	ld   [hl], e                                     ; $7011: $73
	ld   a, a                                        ; $7012: $7f
	ld   a, a                                        ; $7013: $7f
	ld   a, e                                        ; $7014: $7b
	ld   a, a                                        ; $7015: $7f
	ld   a, e                                        ; $7016: $7b
	rst  $38                                         ; $7017: $ff
	ccf                                              ; $7018: $3f
	rst  $38                                         ; $7019: $ff
	ld   l, $33                                      ; $701a: $2e $33
	ld   d, $1f                                      ; $701c: $16 $1f
	jr   jr_027_703f                                 ; $701e: $18 $1f

	nop                                              ; $7020: $00
	nop                                              ; $7021: $00
	nop                                              ; $7022: $00
	nop                                              ; $7023: $00
	nop                                              ; $7024: $00
	nop                                              ; $7025: $00
	ld   [hl], b                                     ; $7026: $70
	ld   [hl], b                                     ; $7027: $70
	ld   hl, sp-$08                                  ; $7028: $f8 $f8
	db   $fc                                         ; $702a: $fc
	db   $fc                                         ; $702b: $fc
	db   $fc                                         ; $702c: $fc
	db   $f4                                         ; $702d: $f4
	cp   $f6                                         ; $702e: $fe $f6
	cp   $8e                                         ; $7030: $fe $8e
	cp   $fe                                         ; $7032: $fe $fe
	ld   a, [hl]                                     ; $7034: $7e
	cp   $6e                                         ; $7035: $fe $6e
	rst  $38                                         ; $7037: $ff
	ld   a, h                                        ; $7038: $7c
	rst  $38                                         ; $7039: $ff
	ld   [hl], h                                     ; $703a: $74
	xor  h                                           ; $703b: $ac
	ld   l, b                                        ; $703c: $68
	ld   hl, sp+$18                                  ; $703d: $f8 $18

jr_027_703f:
	ld   hl, sp+$00                                  ; $703f: $f8 $00
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
	ld   bc, $0200                                   ; $704f: $01 $00 $02
	nop                                              ; $7052: $00
	nop                                              ; $7053: $00
	nop                                              ; $7054: $00
	nop                                              ; $7055: $00
	rrca                                             ; $7056: $0f
	rrca                                             ; $7057: $0f
	add  hl, bc                                      ; $7058: $09
	add  hl, bc                                      ; $7059: $09
	add  hl, bc                                      ; $705a: $09
	add  hl, bc                                      ; $705b: $09
	add  hl, bc                                      ; $705c: $09
	add  hl, bc                                      ; $705d: $09
	rrca                                             ; $705e: $0f
	rrca                                             ; $705f: $0f
	ccf                                              ; $7060: $3f
	cpl                                              ; $7061: $2f
	ld   a, a                                        ; $7062: $7f
	ld   c, [hl]                                     ; $7063: $4e
	ld   a, a                                        ; $7064: $7f
	ld   c, [hl]                                     ; $7065: $4e
	ld   a, e                                        ; $7066: $7b
	ld   c, [hl]                                     ; $7067: $4e
	ld   a, e                                        ; $7068: $7b
	ld   a, [hl]                                     ; $7069: $7e
	ld   c, b                                        ; $706a: $48
	ld   a, b                                        ; $706b: $78
	ld   c, b                                        ; $706c: $48
	rst  $38                                         ; $706d: $ff
	ld   [hl], b                                     ; $706e: $70
	ld   a, h                                        ; $706f: $7c
	nop                                              ; $7070: $00
	jp   c, $0000                                   ; $7071: $da $00 $00

	nop                                              ; $7074: $00
	nop                                              ; $7075: $00
	rst  $38                                         ; $7076: $ff
	rst  $38                                         ; $7077: $ff
	ld   a, l                                        ; $7078: $7d
	ld   h, l                                        ; $7079: $65
	rst  $38                                         ; $707a: $ff
	rst  $38                                         ; $707b: $ff
	rst  $38                                         ; $707c: $ff
	rst  $38                                         ; $707d: $ff
	rst  $38                                         ; $707e: $ff
	rst  $38                                         ; $707f: $ff
	db   $fc                                         ; $7080: $fc
	db   $f4                                         ; $7081: $f4
	cp   $72                                         ; $7082: $fe $72
	cp   $72                                         ; $7084: $fe $72
	cp   $72                                         ; $7086: $fe $72
	adc  $7a                                         ; $7088: $ce $7a
	adc  $7a                                         ; $708a: $ce $7a
	db   $fc                                         ; $708c: $fc
	db   $fc                                         ; $708d: $fc
	ld   a, b                                        ; $708e: $78
	ld   hl, sp+$3c                                  ; $708f: $f8 $3c
	db   $fc                                         ; $7091: $fc
	inc  e                                           ; $7092: $1c
	inc  e                                           ; $7093: $1c
	inc  e                                           ; $7094: $1c
	inc  e                                           ; $7095: $1c
	ld   hl, sp-$08                                  ; $7096: $f8 $f8
	ld   a, $26                                      ; $7098: $3e $26
	ccf                                              ; $709a: $3f
	ccf                                              ; $709b: $3f
	jr   c, jr_027_70d6                              ; $709c: $38 $38

	ldh  [$e0], a                                    ; $709e: $e0 $e0
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
	rlca                                             ; $70ab: $07
	nop                                              ; $70ac: $00
	ld   a, [bc]                                     ; $70ad: $0a
	nop                                              ; $70ae: $00
	inc  d                                           ; $70af: $14
	nop                                              ; $70b0: $00
	add  hl, hl                                      ; $70b1: $29
	nop                                              ; $70b2: $00
	ld   a, a                                        ; $70b3: $7f
	nop                                              ; $70b4: $00
	ld   a, a                                        ; $70b5: $7f
	nop                                              ; $70b6: $00
	nop                                              ; $70b7: $00
	nop                                              ; $70b8: $00
	inc  [hl]                                        ; $70b9: $34
	jr   nc, jr_027_70ec                             ; $70ba: $30 $30

	jr   nc, jr_027_70ee                             ; $70bc: $30 $30

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
	ld   hl, sp+$00                                  ; $70cb: $f8 $00
	ld   b, b                                        ; $70cd: $40
	ld   [$0098], sp                                 ; $70ce: $08 $98 $00
	jr   z, jr_027_70d3                              ; $70d1: $28 $00

jr_027_70d3:
	rst  $38                                         ; $70d3: $ff
	nop                                              ; $70d4: $00
	rst  $38                                         ; $70d5: $ff

jr_027_70d6:
	nop                                              ; $70d6: $00
	nop                                              ; $70d7: $00
	nop                                              ; $70d8: $00
	ld   d, $06                                      ; $70d9: $16 $06
	ld   b, $06                                      ; $70db: $06 $06
	ld   b, $00                                      ; $70dd: $06 $00
	nop                                              ; $70df: $00
	rra                                              ; $70e0: $1f
	rra                                              ; $70e1: $1f
	rrca                                             ; $70e2: $0f
	rrca                                             ; $70e3: $0f
	rra                                              ; $70e4: $1f
	rra                                              ; $70e5: $1f
	rra                                              ; $70e6: $1f
	rla                                              ; $70e7: $17
	ccf                                              ; $70e8: $3f
	scf                                              ; $70e9: $37
	ccf                                              ; $70ea: $3f
	add  hl, sp                                      ; $70eb: $39

jr_027_70ec:
	ccf                                              ; $70ec: $3f
	ccf                                              ; $70ed: $3f

jr_027_70ee:
	dec  sp                                          ; $70ee: $3b
	ccf                                              ; $70ef: $3f
	dec  sp                                          ; $70f0: $3b
	ccf                                              ; $70f1: $3f
	ccf                                              ; $70f2: $3f
	ccf                                              ; $70f3: $3f
	ld   d, $1b                                      ; $70f4: $16 $1b
	ld   a, [hl+]                                    ; $70f6: $2a
	ccf                                              ; $70f7: $3f
	inc  l                                           ; $70f8: $2c
	ccf                                              ; $70f9: $3f
	rra                                              ; $70fa: $1f
	rra                                              ; $70fb: $1f
	rlca                                             ; $70fc: $07
	ld   b, $07                                      ; $70fd: $06 $07
	rlca                                             ; $70ff: $07
	inc  b                                           ; $7100: $04
	rlca                                             ; $7101: $07
	inc  c                                           ; $7102: $0c
	rrca                                             ; $7103: $0f
	rrca                                             ; $7104: $0f
	rrca                                             ; $7105: $0f
	dec  bc                                          ; $7106: $0b
	ld   c, $0b                                      ; $7107: $0e $0b
	ld   c, $00                                      ; $7109: $0e $00
	nop                                              ; $710b: $00
	nop                                              ; $710c: $00
	or   a                                           ; $710d: $b7
	nop                                              ; $710e: $00
	ld   l, h                                        ; $710f: $6c
	nop                                              ; $7110: $00
	jp   c, $0000                                   ; $7111: $da $00 $00

	nop                                              ; $7114: $00
	nop                                              ; $7115: $00
	rst  $38                                         ; $7116: $ff
	rst  $38                                         ; $7117: $ff
	ld   e, l                                        ; $7118: $5d
	ld   d, l                                        ; $7119: $55
	rst  $38                                         ; $711a: $ff
	rst  $38                                         ; $711b: $ff
	rst  $38                                         ; $711c: $ff
	rst  $38                                         ; $711d: $ff
	rst  $38                                         ; $711e: $ff
	rst  $38                                         ; $711f: $ff
	db   $fc                                         ; $7120: $fc
	add  h                                           ; $7121: $84
	db   $fc                                         ; $7122: $fc
	adc  h                                           ; $7123: $8c
	db   $fc                                         ; $7124: $fc
	db   $fc                                         ; $7125: $fc
	add  h                                           ; $7126: $84
	db   $fc                                         ; $7127: $fc
	add  h                                           ; $7128: $84
	db   $fc                                         ; $7129: $fc

jr_027_712a:
	db   $fc                                         ; $712a: $fc
	db   $fc                                         ; $712b: $fc
	db   $fc                                         ; $712c: $fc
	db   $fc                                         ; $712d: $fc
	ld   a, h                                        ; $712e: $7c
	db   $fc                                         ; $712f: $fc
	jr   c, jr_027_712a                              ; $7130: $38 $f8

	jr   jr_027_714c                                 ; $7132: $18 $18

	jr   jr_027_714e                                 ; $7134: $18 $18

	ld   hl, sp-$08                                  ; $7136: $f8 $f8
	inc  a                                           ; $7138: $3c
	inc  h                                           ; $7139: $24
	ccf                                              ; $713a: $3f
	ccf                                              ; $713b: $3f
	jr   c, @+$3a                                    ; $713c: $38 $38

	ldh  [$e0], a                                    ; $713e: $e0 $e0
	nop                                              ; $7140: $00
	nop                                              ; $7141: $00
	nop                                              ; $7142: $00
	nop                                              ; $7143: $00
	nop                                              ; $7144: $00
	nop                                              ; $7145: $00
	rrca                                             ; $7146: $0f
	rrca                                             ; $7147: $0f
	ld   a, a                                        ; $7148: $7f
	ld   a, a                                        ; $7149: $7f
	ccf                                              ; $714a: $3f
	ccf                                              ; $714b: $3f

jr_027_714c:
	ccf                                              ; $714c: $3f
	cpl                                              ; $714d: $2f

jr_027_714e:
	ld   a, a                                        ; $714e: $7f
	ld   l, a                                        ; $714f: $6f
	ld   a, a                                        ; $7150: $7f
	ld   [hl], e                                     ; $7151: $73
	ld   a, a                                        ; $7152: $7f
	ld   a, a                                        ; $7153: $7f
	ld   a, e                                        ; $7154: $7b
	ld   a, a                                        ; $7155: $7f
	ld   a, e                                        ; $7156: $7b
	rst  $38                                         ; $7157: $ff
	dec  sp                                          ; $7158: $3b
	rst  $38                                         ; $7159: $ff
	inc  l                                           ; $715a: $2c
	ccf                                              ; $715b: $3f
	ld   [de], a                                     ; $715c: $12
	rra                                              ; $715d: $1f
	jr   jr_027_717f                                 ; $715e: $18 $1f

	nop                                              ; $7160: $00
	nop                                              ; $7161: $00
	nop                                              ; $7162: $00
	nop                                              ; $7163: $00
	nop                                              ; $7164: $00
	nop                                              ; $7165: $00
	ld   [hl], b                                     ; $7166: $70
	ld   [hl], b                                     ; $7167: $70
	ld   hl, sp-$08                                  ; $7168: $f8 $f8
	db   $fc                                         ; $716a: $fc
	db   $fc                                         ; $716b: $fc
	db   $fc                                         ; $716c: $fc
	db   $f4                                         ; $716d: $f4
	cp   $f6                                         ; $716e: $fe $f6
	cp   $8e                                         ; $7170: $fe $8e
	cp   $fe                                         ; $7172: $fe $fe
	ld   a, [hl]                                     ; $7174: $7e
	cp   $6e                                         ; $7175: $fe $6e
	rst  $38                                         ; $7177: $ff
	ld   l, h                                        ; $7178: $6c
	rst  $38                                         ; $7179: $ff
	inc  [hl]                                        ; $717a: $34
	db   $fc                                         ; $717b: $fc
	ld   c, b                                        ; $717c: $48
	ld   hl, sp+$18                                  ; $717d: $f8 $18

jr_027_717f:
	ld   hl, sp-$48                                  ; $717f: $f8 $b8
	cp   b                                           ; $7181: $b8
	db   $fc                                         ; $7182: $fc
	db   $fc                                         ; $7183: $fc
	cp   $fe                                         ; $7184: $fe $fe
	cp   $fa                                         ; $7186: $fe $fa
	rst  $38                                         ; $7188: $ff
	ei                                               ; $7189: $fb
	rst  $38                                         ; $718a: $ff
	rst  ToBoot                                         ; $718b: $c7
	rst  $38                                         ; $718c: $ff
	rst  $38                                         ; $718d: $ff
	ld   l, a                                        ; $718e: $6f
	rst  $38                                         ; $718f: $ff
	ld   h, [hl]                                     ; $7190: $66
	rst  $38                                         ; $7191: $ff
	ld   hl, sp-$01                                  ; $7192: $f8 $ff
	ld   [hl], d                                     ; $7194: $72
	sbc  [hl]                                        ; $7195: $9e
	ld   [hl], h                                     ; $7196: $74
	cp   h                                           ; $7197: $bc
	ld   [$f8f8], sp                                 ; $7198: $08 $f8 $f8
	ld   hl, sp-$04                                  ; $719b: $f8 $fc
	call nz, $f4fc                                   ; $719d: $c4 $fc $f4
	nop                                              ; $71a0: $00
	nop                                              ; $71a1: $00
	ld   bc, $0300                                   ; $71a2: $01 $00 $03
	nop                                              ; $71a5: $00
	inc  bc                                          ; $71a6: $03
	nop                                              ; $71a7: $00
	rlca                                             ; $71a8: $07
	inc  bc                                          ; $71a9: $03
	rlca                                             ; $71aa: $07
	inc  bc                                          ; $71ab: $03
	rrca                                             ; $71ac: $0f
	nop                                              ; $71ad: $00
	rrca                                             ; $71ae: $0f
	nop                                              ; $71af: $00
	rra                                              ; $71b0: $1f
	inc  bc                                          ; $71b1: $03
	rra                                              ; $71b2: $1f
	inc  bc                                          ; $71b3: $03
	rra                                              ; $71b4: $1f
	nop                                              ; $71b5: $00
	rra                                              ; $71b6: $1f
	nop                                              ; $71b7: $00
	rrca                                             ; $71b8: $0f
	nop                                              ; $71b9: $00
	rlca                                             ; $71ba: $07
	nop                                              ; $71bb: $00
	inc  bc                                          ; $71bc: $03
	nop                                              ; $71bd: $00
	ld   bc, $0000                                   ; $71be: $01 $00 $00
	nop                                              ; $71c1: $00
	cp   $00                                         ; $71c2: $fe $00
	rst  $38                                         ; $71c4: $ff
	nop                                              ; $71c5: $00
	rst  $38                                         ; $71c6: $ff
	ld   a, [bc]                                     ; $71c7: $0a
	rst  $38                                         ; $71c8: $ff
	ld   a, [$f0ff]                                  ; $71c9: $fa $ff $f0
	rst  $38                                         ; $71cc: $ff
	jr   nc, @+$01                                   ; $71cd: $30 $ff

	jr   nc, @+$01                                   ; $71cf: $30 $ff

	ldh  a, [rIE]                                    ; $71d1: $f0 $ff
	ldh  a, [rIE]                                    ; $71d3: $f0 $ff
	dec  b                                           ; $71d5: $05
	rst  $38                                         ; $71d6: $ff
	dec  b                                           ; $71d7: $05
	rst  $38                                         ; $71d8: $ff
	nop                                              ; $71d9: $00
	rst  $38                                         ; $71da: $ff
	ld   bc, $03ff                                   ; $71db: $01 $ff $03
	rst  $38                                         ; $71de: $ff
	nop                                              ; $71df: $00
	rst  $38                                         ; $71e0: $ff
	nop                                              ; $71e1: $00
	ld   a, a                                        ; $71e2: $7f
	nop                                              ; $71e3: $00
	ccf                                              ; $71e4: $3f
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
	add  b                                           ; $7202: $80
	nop                                              ; $7203: $00
	ret  nz                                          ; $7204: $c0

	nop                                              ; $7205: $00
	ldh  [rP1], a                                    ; $7206: $e0 $00
	ldh  a, [rP1]                                    ; $7208: $f0 $00
	ld   hl, sp+$00                                  ; $720a: $f8 $00
	ld   hl, sp+$00                                  ; $720c: $f8 $00
	ld   hl, sp+$00                                  ; $720e: $f8 $00
	cp   $60                                         ; $7210: $fe $60
	cp   $60                                         ; $7212: $fe $60
	ld   hl, sp-$40                                  ; $7214: $f8 $c0
	ld   hl, sp-$80                                  ; $7216: $f8 $80
	ldh  a, [rP1]                                    ; $7218: $f0 $00
	ldh  [rP1], a                                    ; $721a: $e0 $00
	ret  nz                                          ; $721c: $c0

	nop                                              ; $721d: $00
	add  b                                           ; $721e: $80
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
	ld   bc, $0200                                   ; $722f: $01 $00 $02
	nop                                              ; $7232: $00
	nop                                              ; $7233: $00
	nop                                              ; $7234: $00
	nop                                              ; $7235: $00
	rrca                                             ; $7236: $0f
	rrca                                             ; $7237: $0f
	add  hl, bc                                      ; $7238: $09
	add  hl, bc                                      ; $7239: $09
	add  hl, bc                                      ; $723a: $09
	add  hl, bc                                      ; $723b: $09
	add  hl, bc                                      ; $723c: $09
	add  hl, bc                                      ; $723d: $09
	rrca                                             ; $723e: $0f
	rrca                                             ; $723f: $0f
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
	or   a                                           ; $724d: $b7
	nop                                              ; $724e: $00
	ld   l, h                                        ; $724f: $6c
	nop                                              ; $7250: $00
	jp   c, $0000                                   ; $7251: $da $00 $00

	nop                                              ; $7254: $00
	nop                                              ; $7255: $00
	rst  $38                                         ; $7256: $ff
	rst  $38                                         ; $7257: $ff
	ld   b, l                                        ; $7258: $45
	ld   b, l                                        ; $7259: $45
	rst  $38                                         ; $725a: $ff
	rst  $38                                         ; $725b: $ff
	rst  $38                                         ; $725c: $ff
	rst  $38                                         ; $725d: $ff
	rst  $38                                         ; $725e: $ff
	rst  $38                                         ; $725f: $ff
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
	add  b                                           ; $726c: $80
	add  b                                           ; $726d: $80
	ld   b, b                                        ; $726e: $40
	ret  nz                                          ; $726f: $c0

	jr   nz, @-$1e                                   ; $7270: $20 $e0

	nop                                              ; $7272: $00
	nop                                              ; $7273: $00
	nop                                              ; $7274: $00
	nop                                              ; $7275: $00
	ldh  [$e0], a                                    ; $7276: $e0 $e0
	jr   nz, jr_027_729a                             ; $7278: $20 $20

	jr   nz, jr_027_729c                             ; $727a: $20 $20

	jr   nz, jr_027_729e                             ; $727c: $20 $20

	ldh  [$e0], a                                    ; $727e: $e0 $e0
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
	sub  b                                           ; $728c: $90
	nop                                              ; $728d: $00
	cp   b                                           ; $728e: $b8
	nop                                              ; $728f: $00
	db   $fc                                         ; $7290: $fc
	nop                                              ; $7291: $00
	db   $fc                                         ; $7292: $fc
	nop                                              ; $7293: $00
	ld   hl, sp+$00                                  ; $7294: $f8 $00
	ld   h, b                                        ; $7296: $60
	nop                                              ; $7297: $00
	nop                                              ; $7298: $00
	nop                                              ; $7299: $00

jr_027_729a:
	nop                                              ; $729a: $00
	nop                                              ; $729b: $00

jr_027_729c:
	nop                                              ; $729c: $00
	nop                                              ; $729d: $00

jr_027_729e:
	nop                                              ; $729e: $00
	nop                                              ; $729f: $00
	nop                                              ; $72a0: $00
	nop                                              ; $72a1: $00
	nop                                              ; $72a2: $00
	nop                                              ; $72a3: $00
	nop                                              ; $72a4: $00
	nop                                              ; $72a5: $00
	ld   bc, $0301                                   ; $72a6: $01 $01 $03
	inc  bc                                          ; $72a9: $03
	inc  bc                                          ; $72aa: $03
	inc  bc                                          ; $72ab: $03
	rlca                                             ; $72ac: $07
	rlca                                             ; $72ad: $07
	rlca                                             ; $72ae: $07
	rlca                                             ; $72af: $07
	rlca                                             ; $72b0: $07
	rlca                                             ; $72b1: $07
	rlca                                             ; $72b2: $07
	rlca                                             ; $72b3: $07
	inc  bc                                          ; $72b4: $03
	inc  bc                                          ; $72b5: $03
	inc  bc                                          ; $72b6: $03
	inc  bc                                          ; $72b7: $03
	inc  bc                                          ; $72b8: $03
	inc  bc                                          ; $72b9: $03
	ld   bc, $0001                                   ; $72ba: $01 $01 $00
	nop                                              ; $72bd: $00
	ld   bc, $0301                                   ; $72be: $01 $01 $03
	inc  bc                                          ; $72c1: $03
	ld   a, a                                        ; $72c2: $7f
	ld   a, a                                        ; $72c3: $7f
	rst  $38                                         ; $72c4: $ff
	rst  $38                                         ; $72c5: $ff
	rst  $38                                         ; $72c6: $ff
	ld   a, a                                        ; $72c7: $7f
	rst  $38                                         ; $72c8: $ff
	cp   a                                           ; $72c9: $bf
	rst  $38                                         ; $72ca: $ff
	call c, $ffff                                    ; $72cb: $dc $ff $ff
	rst  $38                                         ; $72ce: $ff
	rst  $38                                         ; $72cf: $ff
	ld   a, [$f9ff]                                  ; $72d0: $fa $ff $f9
	rst  $38                                         ; $72d3: $ff
	sub  $ff                                         ; $72d4: $d6 $ff
	db   $d3                                         ; $72d6: $d3
	db   $fd                                         ; $72d7: $fd
	jp   $e3fc                                       ; $72d8: $c3 $fc $e3


	db   $fc                                         ; $72db: $fc
	db   $e3                                         ; $72dc: $e3
	db   $fd                                         ; $72dd: $fd
	rst  $38                                         ; $72de: $ff
	rst  $38                                         ; $72df: $ff
	ret  nz                                          ; $72e0: $c0

	ret  nz                                          ; $72e1: $c0

	add  b                                           ; $72e2: $80
	add  b                                           ; $72e3: $80
	ret  nz                                          ; $72e4: $c0

	ret  nz                                          ; $72e5: $c0

	ldh  [hScriptOpcodeParams], a                                    ; $72e6: $e0 $a0
	ldh  a, [rSVBK]                                  ; $72e8: $f0 $70
	ldh  a, [$f0]                                    ; $72ea: $f0 $f0
	ld   hl, sp-$08                                  ; $72ec: $f8 $f8
	ld   [hl], b                                     ; $72ee: $70
	ldh  a, [$f0]                                    ; $72ef: $f0 $f0
	ldh  a, [$b0]                                    ; $72f1: $f0 $b0
	ldh  a, [rAUD4LEN]                               ; $72f3: $f0 $20
	ldh  [hScriptOpcodeParams], a                                    ; $72f5: $e0 $a0
	ldh  [rAUD4LEN], a                               ; $72f7: $e0 $20
	ldh  [$f8], a                                    ; $72f9: $e0 $f8
	ld   hl, sp+$6c                                  ; $72fb: $f8 $6c
	ld   l, h                                        ; $72fd: $6c
	ld   b, [hl]                                     ; $72fe: $46
	ld   b, [hl]                                     ; $72ff: $46
	ccf                                              ; $7300: $3f
	cpl                                              ; $7301: $2f
	ld   a, a                                        ; $7302: $7f
	ld   c, [hl]                                     ; $7303: $4e
	ld   a, a                                        ; $7304: $7f
	ld   c, [hl]                                     ; $7305: $4e
	ld   a, e                                        ; $7306: $7b
	ld   c, [hl]                                     ; $7307: $4e
	ld   a, e                                        ; $7308: $7b
	ld   a, [hl]                                     ; $7309: $7e
	ld   c, b                                        ; $730a: $48
	ld   a, b                                        ; $730b: $78
	ld   c, b                                        ; $730c: $48
	rst  $38                                         ; $730d: $ff
	ld   a, b                                        ; $730e: $78
	ld   a, h                                        ; $730f: $7c
	ld   [$08da], sp                                 ; $7310: $08 $da $08
	ld   [$1010], sp                                 ; $7313: $08 $10 $10
	rst  $38                                         ; $7316: $ff
	rst  $38                                         ; $7317: $ff
	ld   a, l                                        ; $7318: $7d
	ld   h, l                                        ; $7319: $65
	rst  $38                                         ; $731a: $ff
	rst  $38                                         ; $731b: $ff
	rst  $38                                         ; $731c: $ff
	rst  $38                                         ; $731d: $ff
	rst  $38                                         ; $731e: $ff
	rst  $38                                         ; $731f: $ff
	ld   c, $0e                                      ; $7320: $0e $0e
	rlca                                             ; $7322: $07
	rlca                                             ; $7323: $07
	rra                                              ; $7324: $1f
	rra                                              ; $7325: $1f
	ccf                                              ; $7326: $3f
	ccf                                              ; $7327: $3f
	ld   a, a                                        ; $7328: $7f
	ld   l, a                                        ; $7329: $6f
	ld   a, a                                        ; $732a: $7f
	ld   [hl], e                                     ; $732b: $73
	ld   a, a                                        ; $732c: $7f
	ld   a, a                                        ; $732d: $7f
	ld   a, e                                        ; $732e: $7b
	ld   a, a                                        ; $732f: $7f
	ld   [hl], e                                     ; $7330: $73
	ld   a, a                                        ; $7331: $7f
	ld   a, a                                        ; $7332: $7f
	ld   a, a                                        ; $7333: $7f
	ld   e, [hl]                                     ; $7334: $5e
	rst  $30                                         ; $7335: $f7
	ld   c, $f3                                      ; $7336: $0e $f3
	ld   l, $37                                      ; $7338: $2e $37
	db   $10                                         ; $733a: $10
	rra                                              ; $733b: $1f
	add  hl, bc                                      ; $733c: $09
	rrca                                             ; $733d: $0f
	rra                                              ; $733e: $1f
	rra                                              ; $733f: $1f
	ccf                                              ; $7340: $3f
	dec  l                                           ; $7341: $2d
	ld   a, a                                        ; $7342: $7f
	ld   c, [hl]                                     ; $7343: $4e
	ld   a, a                                        ; $7344: $7f
	ld   c, [hl]                                     ; $7345: $4e
	ld   a, e                                        ; $7346: $7b
	ld   c, [hl]                                     ; $7347: $4e
	ld   a, e                                        ; $7348: $7b
	ld   a, [hl]                                     ; $7349: $7e
	ld   c, b                                        ; $734a: $48
	ld   a, b                                        ; $734b: $78
	ld   c, b                                        ; $734c: $48
	rst  $38                                         ; $734d: $ff
	ld   a, b                                        ; $734e: $78
	ld   a, h                                        ; $734f: $7c
	ld   [$08da], sp                                 ; $7350: $08 $da $08
	ld   [$1010], sp                                 ; $7353: $08 $10 $10
	rst  $38                                         ; $7356: $ff
	rst  $38                                         ; $7357: $ff
	ld   a, l                                        ; $7358: $7d
	ld   h, l                                        ; $7359: $65
	rst  $38                                         ; $735a: $ff
	rst  $38                                         ; $735b: $ff
	rst  $38                                         ; $735c: $ff
	rst  $38                                         ; $735d: $ff
	rst  $38                                         ; $735e: $ff
	rst  $38                                         ; $735f: $ff
	nop                                              ; $7360: $00
	nop                                              ; $7361: $00
	ld   [hl], b                                     ; $7362: $70
	ld   [hl], b                                     ; $7363: $70
	ld   hl, sp-$08                                  ; $7364: $f8 $f8
	db   $fc                                         ; $7366: $fc
	db   $fc                                         ; $7367: $fc
	cp   $f6                                         ; $7368: $fe $f6
	cp   $8e                                         ; $736a: $fe $8e
	cp   $fe                                         ; $736c: $fe $fe
	ld   a, [hl]                                     ; $736e: $7e
	cp   $6e                                         ; $736f: $fe $6e
	cp   $7e                                         ; $7371: $fe $7e
	cp   $7a                                         ; $7373: $fe $7a
	rst  $28                                         ; $7375: $ef
	ld   [hl], b                                     ; $7376: $70
	xor  a                                           ; $7377: $af
	ld   [hl], h                                     ; $7378: $74
	db   $ec                                         ; $7379: $ec
	ld   [$90f8], sp                                 ; $737a: $08 $f8 $90
	ldh  a, [$f8]                                    ; $737d: $f0 $f8
	ld   hl, sp-$04                                  ; $737f: $f8 $fc
	or   h                                           ; $7381: $b4
	cp   $72                                         ; $7382: $fe $72
	cp   $72                                         ; $7384: $fe $72
	cp   $72                                         ; $7386: $fe $72
	adc  $7a                                         ; $7388: $ce $7a
	adc  $fa                                         ; $738a: $ce $fa
	db   $fc                                         ; $738c: $fc
	db   $fc                                         ; $738d: $fc
	ld   a, b                                        ; $738e: $78
	ld   hl, sp+$3c                                  ; $738f: $f8 $3c
	db   $fc                                         ; $7391: $fc
	inc  e                                           ; $7392: $1c
	inc  e                                           ; $7393: $1c
	inc  e                                           ; $7394: $1c
	inc  e                                           ; $7395: $1c
	ld   hl, sp-$08                                  ; $7396: $f8 $f8
	ld   a, $26                                      ; $7398: $3e $26
	ccf                                              ; $739a: $3f
	ccf                                              ; $739b: $3f
	jr   c, jr_027_73d6                              ; $739c: $38 $38

	ldh  [$e0], a                                    ; $739e: $e0 $e0
	inc  b                                           ; $73a0: $04
	rlca                                             ; $73a1: $07
	inc  c                                           ; $73a2: $0c
	rrca                                             ; $73a3: $0f
	rrca                                             ; $73a4: $0f
	rrca                                             ; $73a5: $0f
	dec  bc                                          ; $73a6: $0b
	ld   c, $0b                                      ; $73a7: $0e $0b
	ld   c, $08                                      ; $73a9: $0e $08
	ld   [$b710], sp                                 ; $73ab: $08 $10 $b7
	jr   jr_027_742c                                 ; $73ae: $18 $7c

	ld   [$08da], sp                                 ; $73b0: $08 $da $08
	ld   [$1010], sp                                 ; $73b3: $08 $10 $10
	rst  $38                                         ; $73b6: $ff
	rst  $38                                         ; $73b7: $ff
	ld   e, l                                        ; $73b8: $5d
	ld   d, l                                        ; $73b9: $55
	rst  $38                                         ; $73ba: $ff
	rst  $38                                         ; $73bb: $ff
	rst  $38                                         ; $73bc: $ff
	rst  $38                                         ; $73bd: $ff
	rst  $38                                         ; $73be: $ff
	rst  $38                                         ; $73bf: $ff
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
	ld   [bc], a                                     ; $73ce: $02
	ld   [bc], a                                     ; $73cf: $02
	ld   [bc], a                                     ; $73d0: $02
	ld   [bc], a                                     ; $73d1: $02
	ld   b, $06                                      ; $73d2: $06 $06
	ld   a, [bc]                                     ; $73d4: $0a
	ld   a, [bc]                                     ; $73d5: $0a

jr_027_73d6:
	ld   c, $0e                                      ; $73d6: $0e $0e
	ld   a, [bc]                                     ; $73d8: $0a
	ld   a, [bc]                                     ; $73d9: $0a
	ld   a, [bc]                                     ; $73da: $0a
	ld   a, [bc]                                     ; $73db: $0a
	ld   a, [bc]                                     ; $73dc: $0a
	ld   a, [bc]                                     ; $73dd: $0a
	rrca                                             ; $73de: $0f
	rrca                                             ; $73df: $0f
	nop                                              ; $73e0: $00
	nop                                              ; $73e1: $00
	nop                                              ; $73e2: $00
	nop                                              ; $73e3: $00
	nop                                              ; $73e4: $00
	nop                                              ; $73e5: $00
	jr   nc, jr_027_7418                             ; $73e6: $30 $30

	ld   a, a                                        ; $73e8: $7f
	ld   c, a                                        ; $73e9: $4f
	ld   a, a                                        ; $73ea: $7f
	ld   c, a                                        ; $73eb: $4f
	ld   a, a                                        ; $73ec: $7f
	ld   c, a                                        ; $73ed: $4f
	ld   a, a                                        ; $73ee: $7f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $73ef: $cf
	ld   a, c                                        ; $73f0: $79
	ld   c, l                                        ; $73f1: $4d
	ld   a, c                                        ; $73f2: $79
	db   $fd                                         ; $73f3: $fd
	ld   c, c                                        ; $73f4: $49
	ld   a, l                                        ; $73f5: $7d
	ld   c, c                                        ; $73f6: $49
	ld   sp, hl                                      ; $73f7: $f9
	add  hl, sp                                      ; $73f8: $39
	dec  a                                           ; $73f9: $3d
	ld   a, c                                        ; $73fa: $79
	ld   sp, hl                                      ; $73fb: $f9
	rst  $38                                         ; $73fc: $ff
	rst  $38                                         ; $73fd: $ff
	rst  $38                                         ; $73fe: $ff
	rst  $38                                         ; $73ff: $ff
	nop                                              ; $7400: $00
	nop                                              ; $7401: $00
	nop                                              ; $7402: $00
	nop                                              ; $7403: $00
	inc  e                                           ; $7404: $1c
	inc  e                                           ; $7405: $1c
	ld   a, $36                                      ; $7406: $3e $36
	cp   $f2                                         ; $7408: $fe $f2
	cp   $62                                         ; $740a: $fe $62
	sbc  [hl]                                        ; $740c: $9e
	ldh  a, [c]                                      ; $740d: $f2
	sbc  [hl]                                        ; $740e: $9e
	ldh  a, [c]                                      ; $740f: $f2
	db   $fc                                         ; $7410: $fc
	db   $fc                                         ; $7411: $fc
	ld   a, h                                        ; $7412: $7c
	ld   a, h                                        ; $7413: $7c
	inc  a                                           ; $7414: $3c
	inc  a                                           ; $7415: $3c
	ld   hl, sp-$08                                  ; $7416: $f8 $f8

jr_027_7418:
	ld   a, $26                                      ; $7418: $3e $26
	ccf                                              ; $741a: $3f
	ccf                                              ; $741b: $3f
	ld   a, $3e                                      ; $741c: $3e $3e
	ldh  [$e0], a                                    ; $741e: $e0 $e0
	nop                                              ; $7420: $00
	nop                                              ; $7421: $00
	nop                                              ; $7422: $00
	nop                                              ; $7423: $00
	nop                                              ; $7424: $00
	nop                                              ; $7425: $00
	jr   nc, jr_027_7458                             ; $7426: $30 $30

	ld   a, a                                        ; $7428: $7f
	ld   c, a                                        ; $7429: $4f
	ld   a, a                                        ; $742a: $7f
	ld   c, a                                        ; $742b: $4f

jr_027_742c:
	ld   a, a                                        ; $742c: $7f
	ld   c, a                                        ; $742d: $4f
	ld   a, c                                        ; $742e: $79
	ld   c, a                                        ; $742f: $4f
	ld   a, a                                        ; $7430: $7f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7431: $cf
	ld   a, c                                        ; $7432: $79
	ld   a, l                                        ; $7433: $7d
	ld   c, c                                        ; $7434: $49
	db   $fd                                         ; $7435: $fd
	ld   c, c                                        ; $7436: $49
	ld   a, l                                        ; $7437: $7d
	add  hl, sp                                      ; $7438: $39
	cp   c                                           ; $7439: $b9
	ld   a, c                                        ; $743a: $79
	ld   a, l                                        ; $743b: $7d
	ld   a, c                                        ; $743c: $79
	ld   sp, hl                                      ; $743d: $f9
	rst  $38                                         ; $743e: $ff
	rst  $38                                         ; $743f: $ff
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
	inc  bc                                          ; $7450: $03
	inc  bc                                          ; $7451: $03
	inc  b                                           ; $7452: $04
	inc  b                                           ; $7453: $04
	add  hl, bc                                      ; $7454: $09
	add  hl, bc                                      ; $7455: $09
	rrca                                             ; $7456: $0f
	rrca                                             ; $7457: $0f

jr_027_7458:
	add  hl, bc                                      ; $7458: $09
	add  hl, bc                                      ; $7459: $09
	ld   a, [bc]                                     ; $745a: $0a
	dec  bc                                          ; $745b: $0b
	ld   a, [bc]                                     ; $745c: $0a
	ld   a, [bc]                                     ; $745d: $0a
	rrca                                             ; $745e: $0f
	rrca                                             ; $745f: $0f
	ld   a, a                                        ; $7460: $7f
	ld   e, a                                        ; $7461: $5f
	ld   a, a                                        ; $7462: $7f
	ld   e, h                                        ; $7463: $5c
	ld   a, a                                        ; $7464: $7f
	ld   e, h                                        ; $7465: $5c
	ld   [hl], a                                     ; $7466: $77
	ld   e, h                                        ; $7467: $5c
	ld   [hl], a                                     ; $7468: $77
	ld   e, h                                        ; $7469: $5c
	rst  $30                                         ; $746a: $f7
	db   $fc                                         ; $746b: $fc
	sbc  a                                           ; $746c: $9f
	rst  $38                                         ; $746d: $ff
	sbc  a                                           ; $746e: $9f
	rst  $38                                         ; $746f: $ff
	rst  $38                                         ; $7470: $ff
	rst  $38                                         ; $7471: $ff
	pop  hl                                          ; $7472: $e1
	push af                                          ; $7473: $f5
	ld   b, c                                        ; $7474: $41
	ld   h, l                                        ; $7475: $65
	add  hl, bc                                      ; $7476: $09
	ld   c, l                                        ; $7477: $4d
	add  hl, de                                      ; $7478: $19
	sbc  c                                           ; $7479: $99
	add  hl, sp                                      ; $747a: $39
	dec  a                                           ; $747b: $3d
	ld   a, c                                        ; $747c: $79
	ld   a, c                                        ; $747d: $79
	rst  $38                                         ; $747e: $ff
	rst  $38                                         ; $747f: $ff
	ld   hl, sp-$18                                  ; $7480: $f8 $e8
	db   $fc                                         ; $7482: $fc
	db   $e4                                         ; $7483: $e4
	db   $fc                                         ; $7484: $fc
	db   $e4                                         ; $7485: $e4
	db   $fc                                         ; $7486: $fc
	db   $e4                                         ; $7487: $e4
	sbc  h                                           ; $7488: $9c
	db   $f4                                         ; $7489: $f4
	sbc  h                                           ; $748a: $9c
	db   $f4                                         ; $748b: $f4
	ld   hl, sp-$08                                  ; $748c: $f8 $f8
	ld   hl, sp-$08                                  ; $748e: $f8 $f8
	db   $fc                                         ; $7490: $fc
	db   $fc                                         ; $7491: $fc
	ld   a, h                                        ; $7492: $7c
	ld   a, h                                        ; $7493: $7c
	inc  a                                           ; $7494: $3c
	inc  a                                           ; $7495: $3c
	ld   hl, sp-$08                                  ; $7496: $f8 $f8
	ld   a, $26                                      ; $7498: $3e $26
	ccf                                              ; $749a: $3f
	ccf                                              ; $749b: $3f
	inc  a                                           ; $749c: $3c
	inc  a                                           ; $749d: $3c
	ldh  [$e0], a                                    ; $749e: $e0 $e0
	ccf                                              ; $74a0: $3f
	add  hl, hl                                      ; $74a1: $29
	ccf                                              ; $74a2: $3f
	cpl                                              ; $74a3: $2f
	ld   a, a                                        ; $74a4: $7f
	ld   c, [hl]                                     ; $74a5: $4e
	ld   a, a                                        ; $74a6: $7f
	ld   c, [hl]                                     ; $74a7: $4e
	ld   a, e                                        ; $74a8: $7b
	ld   a, [hl]                                     ; $74a9: $7e
	ld   c, e                                        ; $74aa: $4b
	ld   a, [hl]                                     ; $74ab: $7e
	ld   c, e                                        ; $74ac: $4b
	ld   a, [hl]                                     ; $74ad: $7e
	ccf                                              ; $74ae: $3f
	ccf                                              ; $74af: $3f
	cp   a                                           ; $74b0: $bf
	cp   a                                           ; $74b1: $bf
	pop  hl                                          ; $74b2: $e1
	push af                                          ; $74b3: $f5
	ld   b, c                                        ; $74b4: $41
	ld   h, l                                        ; $74b5: $65
	add  hl, bc                                      ; $74b6: $09
	ld   c, l                                        ; $74b7: $4d
	add  hl, de                                      ; $74b8: $19
	sbc  c                                           ; $74b9: $99
	add  hl, sp                                      ; $74ba: $39
	dec  a                                           ; $74bb: $3d
	ld   a, c                                        ; $74bc: $79
	ld   a, c                                        ; $74bd: $79
	rst  $38                                         ; $74be: $ff
	rst  $38                                         ; $74bf: $ff
	db   $fc                                         ; $74c0: $fc
	sub  h                                           ; $74c1: $94
	cp   $f2                                         ; $74c2: $fe $f2
	cp   $72                                         ; $74c4: $fe $72
	cp   $72                                         ; $74c6: $fe $72
	adc  $7a                                         ; $74c8: $ce $7a
	adc  $7a                                         ; $74ca: $ce $7a
	db   $fc                                         ; $74cc: $fc
	ld   a, h                                        ; $74cd: $7c
	ld   hl, sp-$08                                  ; $74ce: $f8 $f8
	db   $fc                                         ; $74d0: $fc
	db   $fc                                         ; $74d1: $fc
	ld   a, h                                        ; $74d2: $7c
	ld   a, h                                        ; $74d3: $7c
	inc  a                                           ; $74d4: $3c
	inc  a                                           ; $74d5: $3c
	ld   hl, sp-$08                                  ; $74d6: $f8 $f8
	ld   a, $26                                      ; $74d8: $3e $26
	ccf                                              ; $74da: $3f
	ccf                                              ; $74db: $3f
	ld   a, $3e                                      ; $74dc: $3e $3e
	ldh  [$e0], a                                    ; $74de: $e0 $e0
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
	ld   c, $00                                      ; $74ed: $0e $00
	inc  b                                           ; $74ef: $04
	nop                                              ; $74f0: $00
	ld   b, $00                                      ; $74f1: $06 $00
	inc  b                                           ; $74f3: $04
	db   $10                                         ; $74f4: $10
	ld   d, $00                                      ; $74f5: $16 $00
	inc  b                                           ; $74f7: $04
	db   $10                                         ; $74f8: $10
	rla                                              ; $74f9: $17
	db   $10                                         ; $74fa: $10
	inc  d                                           ; $74fb: $14
	db   $10                                         ; $74fc: $10
	inc  d                                           ; $74fd: $14
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
	jr   jr_027_7515                                 ; $7511: $18 $02

	ld   a, [de]                                     ; $7513: $1a
	inc  bc                                          ; $7514: $03

jr_027_7515:
	dec  de                                          ; $7515: $1b
	nop                                              ; $7516: $00
	jr   jr_027_751c                                 ; $7517: $18 $03

	dec  de                                          ; $7519: $1b
	inc  bc                                          ; $751a: $03
	dec  de                                          ; $751b: $1b

jr_027_751c:
	inc  bc                                          ; $751c: $03
	dec  de                                          ; $751d: $1b
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
	inc  c                                           ; $7532: $0c
	inc  c                                           ; $7533: $0c
	jr   jr_027_7550                                 ; $7534: $18 $1a

	nop                                              ; $7536: $00
	ld   [bc], a                                     ; $7537: $02
	jr   jr_027_7553                                 ; $7538: $18 $19

	db   $10                                         ; $753a: $10
	inc  de                                          ; $753b: $13
	db   $10                                         ; $753c: $10
	ld   d, $00                                      ; $753d: $16 $00
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

jr_027_7550:
	nop                                              ; $7550: $00
	jr   z, jr_027_7555                              ; $7551: $28 $02

jr_027_7553:
	ld   a, [hl+]                                    ; $7553: $2a
	inc  bc                                          ; $7554: $03

jr_027_7555:
	ld   l, e                                        ; $7555: $6b
	nop                                              ; $7556: $00
	ret  z                                           ; $7557: $c8

	inc  bc                                          ; $7558: $03
	sbc  e                                           ; $7559: $9b
	inc  bc                                          ; $755a: $03
	dec  bc                                          ; $755b: $0b
	inc  bc                                          ; $755c: $03
	dec  de                                          ; $755d: $1b
	nop                                              ; $755e: $00
	nop                                              ; $755f: $00
	nop                                              ; $7560: $00
	nop                                              ; $7561: $00
	nop                                              ; $7562: $00
	nop                                              ; $7563: $00
	ld   [hl], b                                     ; $7564: $70
	ld   [hl], b                                     ; $7565: $70
	ld   hl, sp-$08                                  ; $7566: $f8 $f8
	db   $fc                                         ; $7568: $fc
	db   $fc                                         ; $7569: $fc
	db   $fc                                         ; $756a: $fc
	db   $f4                                         ; $756b: $f4
	cp   $f6                                         ; $756c: $fe $f6
	cp   $8e                                         ; $756e: $fe $8e
	cp   $fe                                         ; $7570: $fe $fe
	ld   a, [hl]                                     ; $7572: $7e
	cp   $6e                                         ; $7573: $fe $6e
	rst  $38                                         ; $7575: $ff
	ld   a, h                                        ; $7576: $7c
	rst  $38                                         ; $7577: $ff
	ld   [hl], h                                     ; $7578: $74
	xor  h                                           ; $7579: $ac
	ld   l, b                                        ; $757a: $68
	ld   hl, sp+$10                                  ; $757b: $f8 $10
	ldh  a, [$f0]                                    ; $757d: $f0 $f0
	ldh  a, [rP1]                                    ; $757f: $f0 $00
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
	ld   c, $00                                      ; $758f: $0e $00
	inc  b                                           ; $7591: $04
	nop                                              ; $7592: $00
	ld   b, $10                                      ; $7593: $06 $10
	inc  d                                           ; $7595: $14
	nop                                              ; $7596: $00
	ld   b, $10                                      ; $7597: $06 $10
	dec  d                                           ; $7599: $15
	db   $10                                         ; $759a: $10
	ld   d, $10                                      ; $759b: $16 $10
	inc  d                                           ; $759d: $14
	nop                                              ; $759e: $00
	nop                                              ; $759f: $00
	ld   c, $0e                                      ; $75a0: $0e $0e
	rlca                                             ; $75a2: $07
	rlca                                             ; $75a3: $07
	rra                                              ; $75a4: $1f
	rra                                              ; $75a5: $1f
	ccf                                              ; $75a6: $3f
	ccf                                              ; $75a7: $3f
	ld   a, a                                        ; $75a8: $7f
	ld   l, a                                        ; $75a9: $6f
	ld   a, a                                        ; $75aa: $7f
	ld   [hl], e                                     ; $75ab: $73
	ld   a, a                                        ; $75ac: $7f
	ld   a, a                                        ; $75ad: $7f
	ld   a, e                                        ; $75ae: $7b
	ld   a, a                                        ; $75af: $7f
	ld   [hl], e                                     ; $75b0: $73
	ld   a, a                                        ; $75b1: $7f
	ld   a, a                                        ; $75b2: $7f
	ld   a, a                                        ; $75b3: $7f
	ld   e, [hl]                                     ; $75b4: $5e
	rst  $30                                         ; $75b5: $f7
	ld   c, $f3                                      ; $75b6: $0e $f3
	ld   l, $37                                      ; $75b8: $2e $37
	db   $10                                         ; $75ba: $10
	rra                                              ; $75bb: $1f
	dec  bc                                          ; $75bc: $0b
	ld   c, $1f                                      ; $75bd: $0e $1f
	rra                                              ; $75bf: $1f
	nop                                              ; $75c0: $00
	nop                                              ; $75c1: $00
	ld   [hl], b                                     ; $75c2: $70
	ld   [hl], b                                     ; $75c3: $70
	ld   hl, sp-$08                                  ; $75c4: $f8 $f8
	db   $fc                                         ; $75c6: $fc
	db   $fc                                         ; $75c7: $fc
	cp   $f6                                         ; $75c8: $fe $f6
	cp   $8e                                         ; $75ca: $fe $8e
	cp   $fe                                         ; $75cc: $fe $fe
	ld   a, [hl]                                     ; $75ce: $7e
	cp   $6e                                         ; $75cf: $fe $6e
	cp   $7e                                         ; $75d1: $fe $7e
	cp   $7a                                         ; $75d3: $fe $7a
	rst  $28                                         ; $75d5: $ef
	ld   [hl], b                                     ; $75d6: $70
	xor  a                                           ; $75d7: $af
	ld   [hl], h                                     ; $75d8: $74
	db   $ec                                         ; $75d9: $ec
	ld   [$d0f8], sp                                 ; $75da: $08 $f8 $d0
	ld   [hl], b                                     ; $75dd: $70
	ld   hl, sp-$08                                  ; $75de: $f8 $f8
	inc  bc                                          ; $75e0: $03
	inc  bc                                          ; $75e1: $03
	rlca                                             ; $75e2: $07
	rlca                                             ; $75e3: $07
	inc  c                                           ; $75e4: $0c
	rrca                                             ; $75e5: $0f
	ld   [$1c0f], sp                                 ; $75e6: $08 $0f $1c
	rra                                              ; $75e9: $1f
	rra                                              ; $75ea: $1f
	rra                                              ; $75eb: $1f
	rra                                              ; $75ec: $1f
	rra                                              ; $75ed: $1f
	ccf                                              ; $75ee: $3f
	cpl                                              ; $75ef: $2f
	ld   a, a                                        ; $75f0: $7f
	ld   c, c                                        ; $75f1: $49
	ld   a, a                                        ; $75f2: $7f
	ld   d, c                                        ; $75f3: $51
	rst  $38                                         ; $75f4: $ff
	di                                               ; $75f5: $f3
	inc  e                                           ; $75f6: $1c
	inc  e                                           ; $75f7: $1c
	nop                                              ; $75f8: $00
	nop                                              ; $75f9: $00
	nop                                              ; $75fa: $00
	nop                                              ; $75fb: $00
	nop                                              ; $75fc: $00
	nop                                              ; $75fd: $00
	nop                                              ; $75fe: $00
	nop                                              ; $75ff: $00
	rst  $38                                         ; $7600: $ff
	rst  $28                                         ; $7601: $ef
	rst  $38                                         ; $7602: $ff
	rst  ToBoot                                         ; $7603: $c7
	rst  $38                                         ; $7604: $ff
	push bc                                          ; $7605: $c5
	ld   a, a                                        ; $7606: $7f
	ldh  [$3f], a                                    ; $7607: $e0 $3f
	ldh  a, [$1f]                                    ; $7609: $f0 $1f
	ld   sp, hl                                      ; $760b: $f9

jr_027_760c:
	adc  a                                           ; $760c: $8f
	rst  $38                                         ; $760d: $ff
	db   $fc                                         ; $760e: $fc
	db   $fc                                         ; $760f: $fc
	cp   $fe                                         ; $7610: $fe $fe
	rst  $38                                         ; $7612: $ff
	rst  $38                                         ; $7613: $ff
	db   $fc                                         ; $7614: $fc
	db   $fc                                         ; $7615: $fc
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
	ld   [bc], a                                     ; $7620: $02
	ld   [bc], a                                     ; $7621: $02
	ld   [bc], a                                     ; $7622: $02
	ld   [bc], a                                     ; $7623: $02
	inc  b                                           ; $7624: $04
	inc  b                                           ; $7625: $04
	sbc  b                                           ; $7626: $98
	sbc  b                                           ; $7627: $98
	ldh  [$e0], a                                    ; $7628: $e0 $e0
	jr   nz, jr_027_760c                             ; $762a: $20 $e0

	ret  nz                                          ; $762c: $c0

	ret  nz                                          ; $762d: $c0

	nop                                              ; $762e: $00
	nop                                              ; $762f: $00
	nop                                              ; $7630: $00
	nop                                              ; $7631: $00
	cp   $fe                                         ; $7632: $fe $fe
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
	rrca                                             ; $7644: $0f
	rrca                                             ; $7645: $0f
	rra                                              ; $7646: $1f
	rla                                              ; $7647: $17
	ccf                                              ; $7648: $3f
	scf                                              ; $7649: $37
	ld   a, a                                        ; $764a: $7f
	ld   a, e                                        ; $764b: $7b
	ld   a, a                                        ; $764c: $7f
	ld   a, l                                        ; $764d: $7d
	rst  $38                                         ; $764e: $ff
	rst  $38                                         ; $764f: $ff
	rst  $38                                         ; $7650: $ff
	rst  $38                                         ; $7651: $ff
	rst  $38                                         ; $7652: $ff
	rst  $38                                         ; $7653: $ff
	rst  $38                                         ; $7654: $ff
	rst  $38                                         ; $7655: $ff
	ld   a, [$78ff]                                  ; $7656: $fa $ff $78
	ld   a, a                                        ; $7659: $7f
	ld   [hl], b                                     ; $765a: $70
	ld   a, a                                        ; $765b: $7f
	jr   nc, jr_027_769d                             ; $765c: $30 $3f

	ld   hl, sp-$01                                  ; $765e: $f8 $ff
	nop                                              ; $7660: $00
	nop                                              ; $7661: $00
	nop                                              ; $7662: $00
	nop                                              ; $7663: $00
	ret  nz                                          ; $7664: $c0

	ret  nz                                          ; $7665: $c0

	ldh  a, [$f0]                                    ; $7666: $f0 $f0
	db   $fc                                         ; $7668: $fc
	db   $fc                                         ; $7669: $fc
	cp   $fe                                         ; $766a: $fe $fe
	db   $fc                                         ; $766c: $fc
	db   $f4                                         ; $766d: $f4
	cp   $ce                                         ; $766e: $fe $ce
	cp   $fe                                         ; $7670: $fe $fe
	cp   [hl]                                        ; $7672: $be
	cp   $6e                                         ; $7673: $fe $6e
	cp   $1f                                         ; $7675: $fe $1f
	rst  $38                                         ; $7677: $ff
	call z, $e8fc                                    ; $7678: $cc $fc $e8
	ld   a, b                                        ; $767b: $78
	cp   $3e                                         ; $767c: $fe $3e
	db   $db                                         ; $767e: $db
	ld   e, e                                        ; $767f: $5b
	db   $fd                                         ; $7680: $fd
	rst  $38                                         ; $7681: $ff
	rst  $38                                         ; $7682: $ff
	rst  $30                                         ; $7683: $f7
	rst  $38                                         ; $7684: $ff
	db   $e3                                         ; $7685: $e3
	ccf                                              ; $7686: $3f
	ldh  [c], a                                      ; $7687: $e2
	ccf                                              ; $7688: $3f
	ldh  a, [$1f]                                    ; $7689: $f0 $1f
	ld   hl, sp-$71                                  ; $768b: $f8 $8f
	db   $fc                                         ; $768d: $fc
	rst  $38                                         ; $768e: $ff
	rst  $38                                         ; $768f: $ff
	cp   $fe                                         ; $7690: $fe $fe
	rst  $38                                         ; $7692: $ff
	rst  $38                                         ; $7693: $ff
	db   $fc                                         ; $7694: $fc
	db   $fc                                         ; $7695: $fc
	nop                                              ; $7696: $00
	nop                                              ; $7697: $00
	nop                                              ; $7698: $00
	nop                                              ; $7699: $00
	nop                                              ; $769a: $00
	nop                                              ; $769b: $00
	nop                                              ; $769c: $00

jr_027_769d:
	nop                                              ; $769d: $00
	nop                                              ; $769e: $00
	nop                                              ; $769f: $00
	and  e                                           ; $76a0: $a3
	and  e                                           ; $76a1: $a3
	add  c                                           ; $76a2: $81
	add  c                                           ; $76a3: $81
	add  c                                           ; $76a4: $81
	add  c                                           ; $76a5: $81
	add  d                                           ; $76a6: $82
	add  d                                           ; $76a7: $82
	call z, $f04c                                    ; $76a8: $cc $4c $f0
	ld   [hl], b                                     ; $76ab: $70
	sub  b                                           ; $76ac: $90
	ldh  a, [$e0]                                    ; $76ad: $f0 $e0
	ldh  [rP1], a                                    ; $76af: $e0 $00
	nop                                              ; $76b1: $00
	rst  $38                                         ; $76b2: $ff
	rst  $38                                         ; $76b3: $ff
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
	inc  bc                                          ; $7800: $03
	inc  bc                                          ; $7801: $03
	inc  c                                           ; $7802: $0c
	inc  c                                           ; $7803: $0c
	db   $10                                         ; $7804: $10
	db   $10                                         ; $7805: $10
	jr   z, jr_027_7830                              ; $7806: $28 $28

	ld   [hl+], a                                    ; $7808: $22
	ld   [hl+], a                                    ; $7809: $22
	add  hl, hl                                      ; $780a: $29
	jr   z, jr_027_7828                              ; $780b: $28 $1b

	jr   jr_027_781c                                 ; $780d: $18 $0d

	inc  c                                           ; $780f: $0c
	inc  d                                           ; $7810: $14
	inc  d                                           ; $7811: $14
	inc  hl                                          ; $7812: $23
	inc  hl                                          ; $7813: $23
	ld   [hl], l                                     ; $7814: $75
	ld   d, l                                        ; $7815: $55
	ld   [hl-], a                                    ; $7816: $32
	ld   [hl-], a                                    ; $7817: $32
	ld   a, b                                        ; $7818: $78
	ld   c, b                                        ; $7819: $48
	ld   a, b                                        ; $781a: $78
	ld   c, b                                        ; $781b: $48

jr_027_781c:
	inc  a                                           ; $781c: $3c
	inc  h                                           ; $781d: $24
	ccf                                              ; $781e: $3f
	ccf                                              ; $781f: $3f
	ldh  [$e0], a                                    ; $7820: $e0 $e0
	ld   e, $1e                                      ; $7822: $1e $1e
	dec  b                                           ; $7824: $05
	rlca                                             ; $7825: $07
	dec  bc                                          ; $7826: $0b
	dec  bc                                          ; $7827: $0b

jr_027_7828:
	inc  hl                                          ; $7828: $23
	inc  hl                                          ; $7829: $23
	jp   z, $ec8a                                    ; $782a: $ca $8a $ec

	inc  c                                           ; $782d: $0c
	ret  c                                           ; $782e: $d8

	sbc  b                                           ; $782f: $98

jr_027_7830:
	inc  d                                           ; $7830: $14
	inc  d                                           ; $7831: $14
	ld   h, d                                        ; $7832: $62
	ld   h, d                                        ; $7833: $62
	ld   d, a                                        ; $7834: $57
	ld   d, l                                        ; $7835: $55
	ld   h, $26                                      ; $7836: $26 $26
	rrca                                             ; $7838: $0f
	add  hl, bc                                      ; $7839: $09
	rrca                                             ; $783a: $0f
	add  hl, bc                                      ; $783b: $09
	ld   e, $12                                      ; $783c: $1e $12
	rst  $38                                         ; $783e: $ff
	rst  $38                                         ; $783f: $ff
	nop                                              ; $7840: $00
	nop                                              ; $7841: $00
	nop                                              ; $7842: $00
	nop                                              ; $7843: $00
	ldh  [$e0], a                                    ; $7844: $e0 $e0
	ldh  a, [rP1]                                    ; $7846: $f0 $00
	rst  $38                                         ; $7848: $ff
	rlca                                             ; $7849: $07
	rst  $38                                         ; $784a: $ff
	add  [hl]                                        ; $784b: $86
	ld   a, a                                        ; $784c: $7f
	ld   h, h                                        ; $784d: $64
	rra                                              ; $784e: $1f
	jr   jr_027_7890                                 ; $784f: $18 $3f

	jr   nz, jr_027_7892                             ; $7851: $20 $3f

	jr   nz, jr_027_78d4                             ; $7853: $20 $7f

	ld   [hl], e                                     ; $7855: $73
	ld   a, a                                        ; $7856: $7f
	ld   a, a                                        ; $7857: $7f
	ccf                                              ; $7858: $3f
	ccf                                              ; $7859: $3f
	rrca                                             ; $785a: $0f
	rrca                                             ; $785b: $0f
	inc  bc                                          ; $785c: $03
	inc  bc                                          ; $785d: $03
	rst  $38                                         ; $785e: $ff
	rst  $38                                         ; $785f: $ff
	nop                                              ; $7860: $00
	nop                                              ; $7861: $00
	nop                                              ; $7862: $00
	nop                                              ; $7863: $00
	nop                                              ; $7864: $00
	nop                                              ; $7865: $00
	jr   jr_027_7880                                 ; $7866: $18 $18

	db   $fc                                         ; $7868: $fc
	db   $fc                                         ; $7869: $fc
	cp   $fe                                         ; $786a: $fe $fe
	ldh  a, [c]                                      ; $786c: $f2
	ld   a, [hl]                                     ; $786d: $7e
	pop  bc                                          ; $786e: $c1
	ld   a, a                                        ; $786f: $7f
	add  c                                           ; $7870: $81
	rst  $38                                         ; $7871: $ff
	add  c                                           ; $7872: $81
	rst  $38                                         ; $7873: $ff
	ld   h, c                                        ; $7874: $61
	rst  $38                                         ; $7875: $ff
	add  d                                           ; $7876: $82
	cp   $fc                                         ; $7877: $fe $fc
	db   $fc                                         ; $7879: $fc
	db   $fc                                         ; $787a: $fc
	db   $f4                                         ; $787b: $f4
	db   $fc                                         ; $787c: $fc
	call nz, $fefe                                   ; $787d: $c4 $fe $fe

jr_027_7880:
	xor  $ee                                         ; $7880: $ee $ee
	add  hl, de                                      ; $7882: $19
	rra                                              ; $7883: $1f
	dec  b                                           ; $7884: $05
	rlca                                             ; $7885: $07
	dec  bc                                          ; $7886: $0b
	dec  bc                                          ; $7887: $0b
	ld   [hl+], a                                    ; $7888: $22
	ld   [hl+], a                                    ; $7889: $22
	jp   z, $ec8a                                    ; $788a: $ca $8a $ec

	inc  c                                           ; $788d: $0c
	ret  c                                           ; $788e: $d8

	sbc  b                                           ; $788f: $98

jr_027_7890:
	inc  d                                           ; $7890: $14
	inc  d                                           ; $7891: $14

jr_027_7892:
	ld   h, d                                        ; $7892: $62
	ld   h, d                                        ; $7893: $62
	ld   d, a                                        ; $7894: $57
	ld   d, l                                        ; $7895: $55
	ld   h, $26                                      ; $7896: $26 $26
	rrca                                             ; $7898: $0f
	add  hl, bc                                      ; $7899: $09
	rrca                                             ; $789a: $0f
	add  hl, bc                                      ; $789b: $09
	ld   e, $12                                      ; $789c: $1e $12
	rst  $38                                         ; $789e: $ff
	rst  $38                                         ; $789f: $ff
	nop                                              ; $78a0: $00
	nop                                              ; $78a1: $00
	ret  nz                                          ; $78a2: $c0

	ret  nz                                          ; $78a3: $c0

	ldh  [rAUD4LEN], a                               ; $78a4: $e0 $20
	ldh  a, [rP1]                                    ; $78a6: $f0 $00
	rst  $38                                         ; $78a8: $ff
	add  a                                           ; $78a9: $87
	ld   a, a                                        ; $78aa: $7f
	ld   b, [hl]                                     ; $78ab: $46
	ccf                                              ; $78ac: $3f
	inc  h                                           ; $78ad: $24
	rra                                              ; $78ae: $1f
	jr   jr_027_78f0                                 ; $78af: $18 $3f

	jr   nz, @+$41                                   ; $78b1: $20 $3f

	jr   nz, jr_027_7934                             ; $78b3: $20 $7f

	ld   [hl], e                                     ; $78b5: $73
	ld   a, a                                        ; $78b6: $7f
	ld   a, a                                        ; $78b7: $7f
	ccf                                              ; $78b8: $3f
	ccf                                              ; $78b9: $3f
	rrca                                             ; $78ba: $0f
	rrca                                             ; $78bb: $0f
	inc  bc                                          ; $78bc: $03
	inc  bc                                          ; $78bd: $03
	rst  $38                                         ; $78be: $ff
	rst  $38                                         ; $78bf: $ff
	ldh  [$e0], a                                    ; $78c0: $e0 $e0
	jr   jr_027_78dc                                 ; $78c2: $18 $18

	inc  b                                           ; $78c4: $04
	inc  b                                           ; $78c5: $04
	ld   a, [bc]                                     ; $78c6: $0a
	ld   a, [bc]                                     ; $78c7: $0a
	ld   [hl+], a                                    ; $78c8: $22
	ld   [hl+], a                                    ; $78c9: $22
	jp   z, $ec8a                                    ; $78ca: $ca $8a $ec

	inc  c                                           ; $78cd: $0c
	ret  c                                           ; $78ce: $d8

	sbc  b                                           ; $78cf: $98
	inc  d                                           ; $78d0: $14
	inc  d                                           ; $78d1: $14
	ld   h, d                                        ; $78d2: $62
	ld   h, d                                        ; $78d3: $62

jr_027_78d4:
	ld   d, a                                        ; $78d4: $57
	ld   d, l                                        ; $78d5: $55
	ld   h, $26                                      ; $78d6: $26 $26
	rrca                                             ; $78d8: $0f

jr_027_78d9:
	add  hl, bc                                      ; $78d9: $09
	rrca                                             ; $78da: $0f
	add  hl, bc                                      ; $78db: $09

jr_027_78dc:
	ld   e, $12                                      ; $78dc: $1e $12
	cp   $fe                                         ; $78de: $fe $fe
	nop                                              ; $78e0: $00
	nop                                              ; $78e1: $00
	nop                                              ; $78e2: $00
	nop                                              ; $78e3: $00
	jr   nz, jr_027_7906                             ; $78e4: $20 $20

	jr   nz, @+$32                                   ; $78e6: $20 $30

	daa                                              ; $78e8: $27
	ccf                                              ; $78e9: $3f
	rra                                              ; $78ea: $1f
	ld   e, $3f                                      ; $78eb: $1e $3f
	inc  h                                           ; $78ed: $24
	ccf                                              ; $78ee: $3f
	inc  a                                           ; $78ef: $3c

jr_027_78f0:
	ccf                                              ; $78f0: $3f
	jr   nc, @+$41                                   ; $78f1: $30 $3f

	jr   nz, jr_027_7974                             ; $78f3: $20 $7f

	ld   [hl], e                                     ; $78f5: $73
	ld   a, a                                        ; $78f6: $7f
	ld   a, a                                        ; $78f7: $7f
	ccf                                              ; $78f8: $3f
	ccf                                              ; $78f9: $3f
	rrca                                             ; $78fa: $0f
	rrca                                             ; $78fb: $0f
	inc  bc                                          ; $78fc: $03
	inc  bc                                          ; $78fd: $03
	rra                                              ; $78fe: $1f
	rra                                              ; $78ff: $1f
	nop                                              ; $7900: $00
	nop                                              ; $7901: $00
	ld   bc, $0b02                                   ; $7902: $01 $02 $0b
	inc  b                                           ; $7905: $04

jr_027_7906:
	rla                                              ; $7906: $17

jr_027_7907:
	nop                                              ; $7907: $00
	dec  d                                           ; $7908: $15
	ld   [$1006], sp                                 ; $7909: $08 $06 $10
	nop                                              ; $790c: $00

jr_027_790d:
	inc  b                                           ; $790d: $04
	nop                                              ; $790e: $00
	ld   [bc], a                                     ; $790f: $02
	ld   a, [bc]                                     ; $7910: $0a
	inc  bc                                          ; $7911: $03
	inc  e                                           ; $7912: $1c
	nop                                              ; $7913: $00
	ld   a, [bc]                                     ; $7914: $0a
	ld   [bc], a                                     ; $7915: $02
	dec  b                                           ; $7916: $05
	ld   [$0007], sp                                 ; $7917: $08 $07 $00
	inc  bc                                          ; $791a: $03
	inc  b                                           ; $791b: $04
	nop                                              ; $791c: $00
	inc  bc                                          ; $791d: $03
	nop                                              ; $791e: $00
	nop                                              ; $791f: $00
	nop                                              ; $7920: $00
	nop                                              ; $7921: $00
	ret  nz                                          ; $7922: $c0

	jr   nz, jr_027_790d                             ; $7923: $20 $e8

	db   $10                                         ; $7925: $10
	db   $f4                                         ; $7926: $f4
	nop                                              ; $7927: $00
	call nc, $3008                                   ; $7928: $d4 $08 $30
	inc  b                                           ; $792b: $04
	nop                                              ; $792c: $00
	stop                                             ; $792d: $10 $00
	jr   nz, jr_027_78d9                             ; $792f: $20 $a8

	ldh  [rAUD1HIGH], a                              ; $7931: $e0 $14
	adc  b                                           ; $7933: $88

jr_027_7934:
	xor  b                                           ; $7934: $a8
	jr   nz, jr_027_7907                             ; $7935: $20 $d0

	ld   [$00f0], sp                                 ; $7937: $08 $f0 $00
	ldh  [rAUD1SWEEP], a                             ; $793a: $e0 $10
	nop                                              ; $793c: $00
	ldh  [rP1], a                                    ; $793d: $e0 $00
	nop                                              ; $793f: $00
	ld   e, $1e                                      ; $7940: $1e $1e
	rrca                                             ; $7942: $0f
	rrca                                             ; $7943: $0f
	ccf                                              ; $7944: $3f
	ccf                                              ; $7945: $3f
	ld   a, a                                        ; $7946: $7f
	ld   l, a                                        ; $7947: $6f
	rst  $38                                         ; $7948: $ff
	pop  af                                          ; $7949: $f1
	ld   a, a                                        ; $794a: $7f
	ld   a, a                                        ; $794b: $7f
	ei                                               ; $794c: $fb
	rst  $38                                         ; $794d: $ff
	ei                                               ; $794e: $fb
	rst  $38                                         ; $794f: $ff
	jp   c, $deff                                    ; $7950: $da $ff $de

	rst  $38                                         ; $7953: $ff
	ld   e, [hl]                                     ; $7954: $5e
	ld   l, e                                        ; $7955: $6b
	ld   e, h                                        ; $7956: $5c
	ld   a, e                                        ; $7957: $7b
	ld   e, b                                        ; $7958: $58
	ld   a, a                                        ; $7959: $7f
	jr   nz, jr_027_799b                             ; $795a: $20 $3f

	db   $10                                         ; $795c: $10
	rra                                              ; $795d: $1f
	rrca                                             ; $795e: $0f
	rrca                                             ; $795f: $0f
	nop                                              ; $7960: $00
	nop                                              ; $7961: $00
	ldh  [$e0], a                                    ; $7962: $e0 $e0
	ldh  a, [$f0]                                    ; $7964: $f0 $f0
	ld   hl, sp-$08                                  ; $7966: $f8 $f8
	db   $fc                                         ; $7968: $fc
	db   $ec                                         ; $7969: $ec
	db   $fc                                         ; $796a: $fc
	sbc  h                                           ; $796b: $9c
	cp   $fe                                         ; $796c: $fe $fe
	cp   $fe                                         ; $796e: $fe $fe
	cp   $fe                                         ; $7970: $fe $fe

jr_027_7972:
	cp   $fe                                         ; $7972: $fe $fe

jr_027_7974:
	db   $fc                                         ; $7974: $fc
	db   $fc                                         ; $7975: $fc
	cp   h                                           ; $7976: $bc
	db   $fc                                         ; $7977: $fc
	jr   c, jr_027_7972                              ; $7978: $38 $f8

	ld   a, b                                        ; $797a: $78
	ld   hl, sp+$70                                  ; $797b: $f8 $70
	ldh  a, [$e0]                                    ; $797d: $f0 $e0
	ldh  [$fc], a                                    ; $797f: $e0 $fc
	db   $fc                                         ; $7981: $fc
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

jr_027_799b:
	nop                                              ; $799b: $00
	nop                                              ; $799c: $00
	nop                                              ; $799d: $00
	nop                                              ; $799e: $00
	nop                                              ; $799f: $00
	ld   e, $1e                                      ; $79a0: $1e $1e
	rrca                                             ; $79a2: $0f
	rrca                                             ; $79a3: $0f
	rra                                              ; $79a4: $1f
	rra                                              ; $79a5: $1f
	ccf                                              ; $79a6: $3f
	inc  sp                                          ; $79a7: $33
	ccf                                              ; $79a8: $3f
	ccf                                              ; $79a9: $3f
	ld   a, l                                        ; $79aa: $7d
	ld   a, a                                        ; $79ab: $7f
	ld   a, l                                        ; $79ac: $7d
	ld   a, a                                        ; $79ad: $7f
	ld   l, l                                        ; $79ae: $6d
	ld   a, a                                        ; $79af: $7f
	ld   a, l                                        ; $79b0: $7d
	ld   a, a                                        ; $79b1: $7f
	inc  a                                           ; $79b2: $3c
	scf                                              ; $79b3: $37
	inc  l                                           ; $79b4: $2c
	scf                                              ; $79b5: $37
	ld   a, h                                        ; $79b6: $7c
	ld   a, a                                        ; $79b7: $7f
	add  d                                           ; $79b8: $82
	add  e                                           ; $79b9: $83
	add  c                                           ; $79ba: $81
	add  c                                           ; $79bb: $81
	nop                                              ; $79bc: $00
	nop                                              ; $79bd: $00
	nop                                              ; $79be: $00
	nop                                              ; $79bf: $00
	ldh  [$e0], a                                    ; $79c0: $e0 $e0
	ld   hl, sp-$08                                  ; $79c2: $f8 $f8
	db   $fc                                         ; $79c4: $fc
	db   $fc                                         ; $79c5: $fc
	db   $fc                                         ; $79c6: $fc
	db   $f4                                         ; $79c7: $f4
	cp   $8e                                         ; $79c8: $fe $8e
	cp   $fe                                         ; $79ca: $fe $fe
	cp   [hl]                                        ; $79cc: $be
	cp   $9e                                         ; $79cd: $fe $9e
	cp   $fe                                         ; $79cf: $fe $fe
	cp   $f4                                         ; $79d1: $fe $f4
	sbc  $e0                                         ; $79d3: $de $e0
	sbc  [hl]                                        ; $79d5: $9e
	db   $e4                                         ; $79d6: $e4
	call c, $f808                                    ; $79d7: $dc $08 $f8
	db   $10                                         ; $79da: $10
	ldh  a, [$f0]                                    ; $79db: $f0 $f0
	ldh  a, [$f8]                                    ; $79dd: $f0 $f8
	cp   b                                           ; $79df: $b8
	inc  b                                           ; $79e0: $04
	inc  b                                           ; $79e1: $04
	add  a                                           ; $79e2: $87
	add  a                                           ; $79e3: $87
	sbc  a                                           ; $79e4: $9f
	sbc  a                                           ; $79e5: $9f
	inc  bc                                          ; $79e6: $03
	ld   [bc], a                                     ; $79e7: $02
	rrca                                             ; $79e8: $0f
	rrca                                             ; $79e9: $0f
	inc  de                                          ; $79ea: $13
	ld   e, $13                                      ; $79eb: $1e $13
	ld   e, $0f                                      ; $79ed: $1e $0f
	rrca                                             ; $79ef: $0f
	ld   h, e                                        ; $79f0: $63
	ld   h, d                                        ; $79f1: $62
	sub  e                                           ; $79f2: $93
	di                                               ; $79f3: $f3
	rst  $38                                         ; $79f4: $ff
	rst  $38                                         ; $79f5: $ff
	rrca                                             ; $79f6: $0f
	rrca                                             ; $79f7: $0f
	rrca                                             ; $79f8: $0f
	rrca                                             ; $79f9: $0f
	rrca                                             ; $79fa: $0f
	rrca                                             ; $79fb: $0f
	rrca                                             ; $79fc: $0f
	rrca                                             ; $79fd: $0f
	rra                                              ; $79fe: $1f
	rra                                              ; $79ff: $1f
	db   $fc                                         ; $7a00: $fc
	db   $e4                                         ; $7a01: $e4
	db   $fc                                         ; $7a02: $fc
	call nz, $84fc                                   ; $7a03: $c4 $fc $84
	db   $fc                                         ; $7a06: $fc
	add  h                                           ; $7a07: $84
	ld   hl, sp+$08                                  ; $7a08: $f8 $08
	ld   hl, sp+$18                                  ; $7a0a: $f8 $18
	add  sp, $38                                     ; $7a0c: $e8 $38
	ret  z                                           ; $7a0e: $c8

	ld   hl, sp-$78                                  ; $7a0f: $f8 $88
	ld   hl, sp-$08                                  ; $7a11: $f8 $f8
	ld   hl, sp-$08                                  ; $7a13: $f8 $f8
	ld   hl, sp-$08                                  ; $7a15: $f8 $f8
	ld   hl, sp-$08                                  ; $7a17: $f8 $f8
	ld   hl, sp-$08                                  ; $7a19: $f8 $f8
	ld   hl, sp+$78                                  ; $7a1b: $f8 $78
	ld   a, b                                        ; $7a1d: $78
	ld   a, h                                        ; $7a1e: $7c
	ld   a, h                                        ; $7a1f: $7c
	ld   e, $1e                                      ; $7a20: $1e $1e
	ld   e, $1e                                      ; $7a22: $1e $1e
	ld   e, $1e                                      ; $7a24: $1e $1e
	ld   a, $3e                                      ; $7a26: $3e $3e
	ld   a, [hl]                                     ; $7a28: $7e
	ld   b, d                                        ; $7a29: $42
	rst  $38                                         ; $7a2a: $ff
	rst  $38                                         ; $7a2b: $ff
	ld   a, a                                        ; $7a2c: $7f
	ld   a, a                                        ; $7a2d: $7f
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
	inc  a                                           ; $7a40: $3c
	inc  a                                           ; $7a41: $3c
	inc  a                                           ; $7a42: $3c
	inc  a                                           ; $7a43: $3c
	inc  a                                           ; $7a44: $3c
	inc  a                                           ; $7a45: $3c
	inc  a                                           ; $7a46: $3c
	inc  a                                           ; $7a47: $3c
	ld   a, [hl]                                     ; $7a48: $7e
	ld   b, d                                        ; $7a49: $42
	rst  $38                                         ; $7a4a: $ff
	rst  $38                                         ; $7a4b: $ff
	cp   $fe                                         ; $7a4c: $fe $fe
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
	ld   bc, $0101                                   ; $7a68: $01 $01 $01
	ld   bc, $0101                                   ; $7a6b: $01 $01 $01

jr_027_7a6e:
	nop                                              ; $7a6e: $00
	nop                                              ; $7a6f: $00
	nop                                              ; $7a70: $00
	nop                                              ; $7a71: $00
	ld   bc, $0101                                   ; $7a72: $01 $01 $01
	ld   bc, $0202                                   ; $7a75: $01 $02 $02
	ld   [bc], a                                     ; $7a78: $02
	ld   [bc], a                                     ; $7a79: $02
	ld   [bc], a                                     ; $7a7a: $02
	ld   [bc], a                                     ; $7a7b: $02
	ld   [bc], a                                     ; $7a7c: $02
	ld   [bc], a                                     ; $7a7d: $02
	ld   bc, $0001                                   ; $7a7e: $01 $01 $00
	nop                                              ; $7a81: $00
	nop                                              ; $7a82: $00
	nop                                              ; $7a83: $00
	nop                                              ; $7a84: $00
	nop                                              ; $7a85: $00
	nop                                              ; $7a86: $00
	nop                                              ; $7a87: $00
	nop                                              ; $7a88: $00
	ld   bc, $0100                                   ; $7a89: $01 $00 $01
	nop                                              ; $7a8c: $00
	ld   bc, $0000                                   ; $7a8d: $01 $00 $00
	nop                                              ; $7a90: $00
	nop                                              ; $7a91: $00
	nop                                              ; $7a92: $00
	ld   bc, $0100                                   ; $7a93: $01 $00 $01
	ld   bc, $0102                                   ; $7a96: $01 $02 $01
	ld   [bc], a                                     ; $7a99: $02
	ld   bc, $0102                                   ; $7a9a: $01 $02 $01
	ld   [bc], a                                     ; $7a9d: $02
	nop                                              ; $7a9e: $00
	nop                                              ; $7a9f: $00
	nop                                              ; $7aa0: $00
	nop                                              ; $7aa1: $00
	nop                                              ; $7aa2: $00
	nop                                              ; $7aa3: $00
	jr   nc, jr_027_7a6e                             ; $7aa4: $30 $c8

	ld   a, b                                        ; $7aa6: $78
	add  h                                           ; $7aa7: $84
	db   $fc                                         ; $7aa8: $fc
	ld   [bc], a                                     ; $7aa9: $02
	db   $fc                                         ; $7aaa: $fc
	ld   [bc], a                                     ; $7aab: $02
	db   $f4                                         ; $7aac: $f4
	ld   [bc], a                                     ; $7aad: $02
	ld   [hl], b                                     ; $7aae: $70
	add  [hl]                                        ; $7aaf: $86
	ld   b, b                                        ; $7ab0: $40
	add  b                                           ; $7ab1: $80
	ld   hl, sp+$00                                  ; $7ab2: $f8 $00
	ldh  [rP1], a                                    ; $7ab4: $e0 $00
	ret  nz                                          ; $7ab6: $c0

	nop                                              ; $7ab7: $00
	ret  nz                                          ; $7ab8: $c0

	nop                                              ; $7ab9: $00
	ldh  [rP1], a                                    ; $7aba: $e0 $00
	jr   c, jr_027_7abe                              ; $7abc: $38 $00

jr_027_7abe:
	jr   jr_027_7ac0                                 ; $7abe: $18 $00

jr_027_7ac0:
	nop                                              ; $7ac0: $00
	nop                                              ; $7ac1: $00
	ld   e, $1e                                      ; $7ac2: $1e $1e
	rrca                                             ; $7ac4: $0f
	rrca                                             ; $7ac5: $0f
	rra                                              ; $7ac6: $1f
	rra                                              ; $7ac7: $1f
	ccf                                              ; $7ac8: $3f
	ccf                                              ; $7ac9: $3f
	ccf                                              ; $7aca: $3f
	daa                                              ; $7acb: $27
	ld   a, a                                        ; $7acc: $7f
	ld   a, a                                        ; $7acd: $7f
	ld   a, l                                        ; $7ace: $7d
	ld   a, a                                        ; $7acf: $7f
	ld   a, l                                        ; $7ad0: $7d
	ld   a, a                                        ; $7ad1: $7f
	ld   l, l                                        ; $7ad2: $6d
	ld   a, a                                        ; $7ad3: $7f
	ld   a, l                                        ; $7ad4: $7d
	ld   a, a                                        ; $7ad5: $7f
	inc  a                                           ; $7ad6: $3c
	scf                                              ; $7ad7: $37
	ld   a, h                                        ; $7ad8: $7c
	ld   a, a                                        ; $7ad9: $7f
	add  d                                           ; $7ada: $82
	add  e                                           ; $7adb: $83
	add  c                                           ; $7adc: $81
	add  c                                           ; $7add: $81
	nop                                              ; $7ade: $00
	nop                                              ; $7adf: $00
	nop                                              ; $7ae0: $00
	nop                                              ; $7ae1: $00
	ldh  [$e0], a                                    ; $7ae2: $e0 $e0
	ld   hl, sp-$08                                  ; $7ae4: $f8 $f8
	db   $fc                                         ; $7ae6: $fc
	db   $fc                                         ; $7ae7: $fc
	db   $fc                                         ; $7ae8: $fc
	db   $ec                                         ; $7ae9: $ec
	cp   $1e                                         ; $7aea: $fe $1e
	cp   $fe                                         ; $7aec: $fe $fe
	cp   $fe                                         ; $7aee: $fe $fe
	cp   [hl]                                        ; $7af0: $be
	cp   $9e                                         ; $7af1: $fe $9e
	cp   $f4                                         ; $7af3: $fe $f4
	cp   $f0                                         ; $7af5: $fe $f0
	sbc  [hl]                                        ; $7af7: $9e
	db   $e4                                         ; $7af8: $e4
	call c, $f8c8                                    ; $7af9: $dc $c8 $f8
	db   $10                                         ; $7afc: $10
	ldh  a, [$f0]                                    ; $7afd: $f0 $f0
	ldh  a, [rP1]                                    ; $7aff: $f0 $00
	nop                                              ; $7b01: $00
	inc  b                                           ; $7b02: $04
	inc  b                                           ; $7b03: $04
	add  a                                           ; $7b04: $87
	add  a                                           ; $7b05: $87
	sbc  a                                           ; $7b06: $9f
	sbc  a                                           ; $7b07: $9f
	inc  bc                                          ; $7b08: $03
	ld   [bc], a                                     ; $7b09: $02
	rrca                                             ; $7b0a: $0f
	rrca                                             ; $7b0b: $0f
	inc  de                                          ; $7b0c: $13
	ld   e, $13                                      ; $7b0d: $1e $13
	ld   e, $0f                                      ; $7b0f: $1e $0f
	rrca                                             ; $7b11: $0f
	ld   h, e                                        ; $7b12: $63
	ld   h, d                                        ; $7b13: $62
	sub  e                                           ; $7b14: $93
	ldh  a, [c]                                      ; $7b15: $f2
	rst  $38                                         ; $7b16: $ff
	rst  $38                                         ; $7b17: $ff
	rrca                                             ; $7b18: $0f
	rrca                                             ; $7b19: $0f
	rrca                                             ; $7b1a: $0f
	rrca                                             ; $7b1b: $0f
	rra                                              ; $7b1c: $1f
	rra                                              ; $7b1d: $1f
	rra                                              ; $7b1e: $1f
	rra                                              ; $7b1f: $1f
	ld   hl, sp-$48                                  ; $7b20: $f8 $b8
	db   $fc                                         ; $7b22: $fc
	db   $e4                                         ; $7b23: $e4
	db   $fc                                         ; $7b24: $fc
	call nz, $84fc                                   ; $7b25: $c4 $fc $84
	db   $fc                                         ; $7b28: $fc
	add  h                                           ; $7b29: $84
	ld   hl, sp+$08                                  ; $7b2a: $f8 $08
	ld   hl, sp+$18                                  ; $7b2c: $f8 $18
	add  sp, $38                                     ; $7b2e: $e8 $38
	ret  z                                           ; $7b30: $c8

	ld   hl, sp-$78                                  ; $7b31: $f8 $88
	ld   hl, sp-$08                                  ; $7b33: $f8 $f8
	ld   hl, sp-$08                                  ; $7b35: $f8 $f8
	ld   hl, sp-$08                                  ; $7b37: $f8 $f8
	ld   hl, sp-$08                                  ; $7b39: $f8 $f8
	ld   hl, sp-$08                                  ; $7b3b: $f8 $f8
	ld   hl, sp+$78                                  ; $7b3d: $f8 $78
	ld   a, b                                        ; $7b3f: $78
	rra                                              ; $7b40: $1f
	rra                                              ; $7b41: $1f
	ld   a, $3e                                      ; $7b42: $3e $3e
	ld   a, $3e                                      ; $7b44: $3e $3e
	ld   a, $3e                                      ; $7b46: $3e $3e
	ld   a, [hl]                                     ; $7b48: $7e
	ld   b, d                                        ; $7b49: $42
	rst  $38                                         ; $7b4a: $ff
	rst  $38                                         ; $7b4b: $ff
	ld   a, a                                        ; $7b4c: $7f
	ld   a, a                                        ; $7b4d: $7f
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
	ld   a, h                                        ; $7b60: $7c
	ld   a, h                                        ; $7b61: $7c
	ld   a, h                                        ; $7b62: $7c
	ld   a, h                                        ; $7b63: $7c
	inc  a                                           ; $7b64: $3c
	inc  a                                           ; $7b65: $3c
	inc  a                                           ; $7b66: $3c
	inc  a                                           ; $7b67: $3c
	ld   a, [hl]                                     ; $7b68: $7e
	ld   b, d                                        ; $7b69: $42
	rst  $38                                         ; $7b6a: $ff
	rst  $38                                         ; $7b6b: $ff
	cp   $fe                                         ; $7b6c: $fe $fe
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
	ld   bc, $0101                                   ; $7b82: $01 $01 $01
	ld   bc, $0202                                   ; $7b85: $01 $02 $02
	ld   [bc], a                                     ; $7b88: $02
	ld   [bc], a                                     ; $7b89: $02
	ld   [bc], a                                     ; $7b8a: $02
	ld   [bc], a                                     ; $7b8b: $02
	ld   bc, $0101                                   ; $7b8c: $01 $01 $01
	ld   bc, $0202                                   ; $7b8f: $01 $02 $02
	ld   [bc], a                                     ; $7b92: $02
	ld   [bc], a                                     ; $7b93: $02
	inc  b                                           ; $7b94: $04
	inc  b                                           ; $7b95: $04
	inc  b                                           ; $7b96: $04
	inc  b                                           ; $7b97: $04
	inc  b                                           ; $7b98: $04
	inc  b                                           ; $7b99: $04
	inc  b                                           ; $7b9a: $04
	inc  b                                           ; $7b9b: $04
	inc  bc                                          ; $7b9c: $03
	inc  bc                                          ; $7b9d: $03
	ld   bc, $0901                                   ; $7b9e: $01 $01 $09
	add  hl, bc                                      ; $7ba1: $09
	rrca                                             ; $7ba2: $0f
	rrca                                             ; $7ba3: $0f
	ccf                                              ; $7ba4: $3f
	ccf                                              ; $7ba5: $3f
	rlca                                             ; $7ba6: $07
	dec  b                                           ; $7ba7: $05
	rra                                              ; $7ba8: $1f
	ld   e, $27                                      ; $7ba9: $1e $27
	inc  a                                           ; $7bab: $3c
	daa                                              ; $7bac: $27
	inc  a                                           ; $7bad: $3c
	rra                                              ; $7bae: $1f
	rra                                              ; $7baf: $1f
	rst  ToBoot                                         ; $7bb0: $c7
	push bc                                          ; $7bb1: $c5
	daa                                              ; $7bb2: $27
	push hl                                          ; $7bb3: $e5
	rst  $38                                         ; $7bb4: $ff
	rst  $38                                         ; $7bb5: $ff
	rra                                              ; $7bb6: $1f
	rra                                              ; $7bb7: $1f
	rra                                              ; $7bb8: $1f
	rra                                              ; $7bb9: $1f
	rra                                              ; $7bba: $1f
	rra                                              ; $7bbb: $1f
	ld   e, $1e                                      ; $7bbc: $1e $1e
	ld   e, $1e                                      ; $7bbe: $1e $1e
	ld   hl, sp-$38                                  ; $7bc0: $f8 $c8
	ld   hl, sp-$78                                  ; $7bc2: $f8 $88
	ld   hl, sp+$08                                  ; $7bc4: $f8 $08
	ld   hl, sp+$08                                  ; $7bc6: $f8 $08
	ldh  a, [rAUD1SWEEP]                             ; $7bc8: $f0 $10
	ldh  a, [$30]                                    ; $7bca: $f0 $30
	ret  nc                                          ; $7bcc: $d0

	ld   [hl], b                                     ; $7bcd: $70
	sub  b                                           ; $7bce: $90
	ldh  a, [rAUD1SWEEP]                             ; $7bcf: $f0 $10
	ldh  a, [$f0]                                    ; $7bd1: $f0 $f0
	ldh  a, [$f0]                                    ; $7bd3: $f0 $f0
	ldh  a, [$f0]                                    ; $7bd5: $f0 $f0
	ldh  a, [$f0]                                    ; $7bd7: $f0 $f0
	ldh  a, [$f8]                                    ; $7bd9: $f0 $f8
	ld   hl, sp-$08                                  ; $7bdb: $f8 $f8
	ld   hl, sp+$78                                  ; $7bdd: $f8 $78
	ld   a, b                                        ; $7bdf: $78
	ld   e, $1e                                      ; $7be0: $1e $1e
	ld   e, $1e                                      ; $7be2: $1e $1e
	ld   e, $1e                                      ; $7be4: $1e $1e
	ld   a, $3e                                      ; $7be6: $3e $3e
	ld   a, [hl]                                     ; $7be8: $7e
	ld   b, d                                        ; $7be9: $42
	rst  $38                                         ; $7bea: $ff
	rst  $38                                         ; $7beb: $ff
	ld   a, a                                        ; $7bec: $7f
	ld   a, a                                        ; $7bed: $7f
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
	ld   a, h                                        ; $7c00: $7c
	ld   a, h                                        ; $7c01: $7c
	ld   a, h                                        ; $7c02: $7c
	ld   a, h                                        ; $7c03: $7c
	inc  a                                           ; $7c04: $3c
	inc  a                                           ; $7c05: $3c
	ld   a, $3e                                      ; $7c06: $3e $3e
	ld   a, [hl]                                     ; $7c08: $7e
	ld   b, d                                        ; $7c09: $42
	rst  $38                                         ; $7c0a: $ff
	rst  $38                                         ; $7c0b: $ff
	cp   $fe                                         ; $7c0c: $fe $fe
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
	inc  b                                           ; $7c20: $04
	inc  b                                           ; $7c21: $04
	add  a                                           ; $7c22: $87
	add  a                                           ; $7c23: $87
	sbc  a                                           ; $7c24: $9f
	sbc  a                                           ; $7c25: $9f
	inc  bc                                          ; $7c26: $03
	ld   [bc], a                                     ; $7c27: $02
	rrca                                             ; $7c28: $0f
	rrca                                             ; $7c29: $0f
	inc  de                                          ; $7c2a: $13
	ld   e, $13                                      ; $7c2b: $1e $13
	ld   e, $0f                                      ; $7c2d: $1e $0f
	rrca                                             ; $7c2f: $0f
	ld   h, e                                        ; $7c30: $63
	ld   h, d                                        ; $7c31: $62
	sub  e                                           ; $7c32: $93
	ldh  a, [c]                                      ; $7c33: $f2
	rst  $38                                         ; $7c34: $ff
	rst  $38                                         ; $7c35: $ff
	rrca                                             ; $7c36: $0f
	rrca                                             ; $7c37: $0f
	rrca                                             ; $7c38: $0f
	rrca                                             ; $7c39: $0f
	rra                                              ; $7c3a: $1f
	rra                                              ; $7c3b: $1f
	rra                                              ; $7c3c: $1f
	rra                                              ; $7c3d: $1f
	ld   e, $1e                                      ; $7c3e: $1e $1e
	db   $fc                                         ; $7c40: $fc
	db   $e4                                         ; $7c41: $e4
	db   $fc                                         ; $7c42: $fc
	call nz, $84fc                                   ; $7c43: $c4 $fc $84
	db   $fc                                         ; $7c46: $fc
	add  h                                           ; $7c47: $84
	ld   hl, sp+$08                                  ; $7c48: $f8 $08
	ld   hl, sp+$18                                  ; $7c4a: $f8 $18
	add  sp, $38                                     ; $7c4c: $e8 $38
	ret  z                                           ; $7c4e: $c8

	ld   hl, sp-$78                                  ; $7c4f: $f8 $88
	ld   hl, sp-$08                                  ; $7c51: $f8 $f8
	ld   hl, sp-$08                                  ; $7c53: $f8 $f8
	ld   hl, sp-$08                                  ; $7c55: $f8 $f8
	ld   hl, sp-$08                                  ; $7c57: $f8 $f8
	ld   hl, sp-$08                                  ; $7c59: $f8 $f8
	ld   hl, sp+$78                                  ; $7c5b: $f8 $78
	ld   a, b                                        ; $7c5d: $78
	ld   a, b                                        ; $7c5e: $78
	ld   a, b                                        ; $7c5f: $78
	rra                                              ; $7c60: $1f
	rra                                              ; $7c61: $1f
	rra                                              ; $7c62: $1f
	rra                                              ; $7c63: $1f
	ld   e, $1e                                      ; $7c64: $1e $1e
	ld   a, $3e                                      ; $7c66: $3e $3e
	ld   a, [hl]                                     ; $7c68: $7e
	ld   b, d                                        ; $7c69: $42
	rst  $38                                         ; $7c6a: $ff
	rst  $38                                         ; $7c6b: $ff
	ld   a, a                                        ; $7c6c: $7f
	ld   a, a                                        ; $7c6d: $7f
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
	inc  a                                           ; $7c80: $3c
	inc  a                                           ; $7c81: $3c
	inc  a                                           ; $7c82: $3c
	inc  a                                           ; $7c83: $3c
	inc  a                                           ; $7c84: $3c
	inc  a                                           ; $7c85: $3c
	inc  a                                           ; $7c86: $3c
	inc  a                                           ; $7c87: $3c
	ld   a, [hl]                                     ; $7c88: $7e
	ld   b, d                                        ; $7c89: $42
	rst  $38                                         ; $7c8a: $ff
	rst  $38                                         ; $7c8b: $ff
	cp   $fe                                         ; $7c8c: $fe $fe
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
	rlca                                             ; $7ca0: $07
	rlca                                             ; $7ca1: $07
	inc  bc                                          ; $7ca2: $03
	inc  bc                                          ; $7ca3: $03
	rrca                                             ; $7ca4: $0f
	rrca                                             ; $7ca5: $0f
	rra                                              ; $7ca6: $1f
	rra                                              ; $7ca7: $1f
	ccf                                              ; $7ca8: $3f
	scf                                              ; $7ca9: $37
	ccf                                              ; $7caa: $3f
	add  hl, sp                                      ; $7cab: $39
	ccf                                              ; $7cac: $3f
	ccf                                              ; $7cad: $3f
	dec  a                                           ; $7cae: $3d

jr_027_7caf:
	ccf                                              ; $7caf: $3f
	add  hl, sp                                      ; $7cb0: $39
	ccf                                              ; $7cb1: $3f
	ccf                                              ; $7cb2: $3f
	ccf                                              ; $7cb3: $3f
	cpl                                              ; $7cb4: $2f
	ld   a, e                                        ; $7cb5: $7b
	rlca                                             ; $7cb6: $07
	ld   a, c                                        ; $7cb7: $79
	scf                                              ; $7cb8: $37
	dec  sp                                          ; $7cb9: $3b
	jr   z, jr_027_7cfb                              ; $7cba: $28 $3f

	inc  l                                           ; $7cbc: $2c
	ccf                                              ; $7cbd: $3f
	daa                                              ; $7cbe: $27
	ccf                                              ; $7cbf: $3f
	nop                                              ; $7cc0: $00
	nop                                              ; $7cc1: $00
	cp   b                                           ; $7cc2: $b8
	cp   b                                           ; $7cc3: $b8
	db   $fc                                         ; $7cc4: $fc
	db   $fc                                         ; $7cc5: $fc
	cp   $fe                                         ; $7cc6: $fe $fe
	rst  $38                                         ; $7cc8: $ff
	ei                                               ; $7cc9: $fb
	rst  $38                                         ; $7cca: $ff
	rst  ToBoot                                         ; $7ccb: $c7
	rst  $38                                         ; $7ccc: $ff
	rst  $38                                         ; $7ccd: $ff
	cp   a                                           ; $7cce: $bf
	rst  $38                                         ; $7ccf: $ff
	or   a                                           ; $7cd0: $b7
	rst  $38                                         ; $7cd1: $ff
	cp   a                                           ; $7cd2: $bf
	rst  $38                                         ; $7cd3: $ff
	dec  a                                           ; $7cd4: $3d
	rst  $30                                         ; $7cd5: $f7
	jr   c, jr_027_7caf                              ; $7cd6: $38 $d7

	ld   a, [hl-]                                    ; $7cd8: $3a
	or   $05                                         ; $7cd9: $f6 $05
	db   $fd                                         ; $7cdb: $fd
	rrca                                             ; $7cdc: $0f
	rst  $38                                         ; $7cdd: $ff
	rst  $38                                         ; $7cde: $ff
	di                                               ; $7cdf: $f3
	ccf                                              ; $7ce0: $3f
	ccf                                              ; $7ce1: $3f
	ccf                                              ; $7ce2: $3f
	daa                                              ; $7ce3: $27
	ccf                                              ; $7ce4: $3f
	daa                                              ; $7ce5: $27
	ld   a, a                                        ; $7ce6: $7f
	ld   b, a                                        ; $7ce7: $47
	ld   a, a                                        ; $7ce8: $7f
	ld   b, e                                        ; $7ce9: $43
	ld   a, [hl]                                     ; $7cea: $7e
	ld   h, e                                        ; $7ceb: $63
	rst  $38                                         ; $7cec: $ff
	rst  $38                                         ; $7ced: $ff
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

jr_027_7cfb:
	nop                                              ; $7cfb: $00
	nop                                              ; $7cfc: $00
	nop                                              ; $7cfd: $00
	nop                                              ; $7cfe: $00
	nop                                              ; $7cff: $00
	add  a                                           ; $7d00: $87
	add  c                                           ; $7d01: $81
	ld   [de], a                                     ; $7d02: $12
	ld   [de], a                                     ; $7d03: $12
	ld   [bc], a                                     ; $7d04: $02
	ld   [bc], a                                     ; $7d05: $02
	add  hl, de                                      ; $7d06: $19
	add  hl, de                                      ; $7d07: $19
	inc  b                                           ; $7d08: $04
	inc  b                                           ; $7d09: $04
	add  h                                           ; $7d0a: $84
	add  h                                           ; $7d0b: $84

jr_027_7d0c:
	add  $c6                                         ; $7d0c: $c6 $c6
	rst  $38                                         ; $7d0e: $ff
	rst  $38                                         ; $7d0f: $ff
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
	add  b                                           ; $7d25: $80

jr_027_7d26:
	nop                                              ; $7d26: $00
	add  b                                           ; $7d27: $80
	ret  nz                                          ; $7d28: $c0

	ret  nz                                          ; $7d29: $c0

	jr   nz, jr_027_7d0c                             ; $7d2a: $20 $e0

	jr   c, jr_027_7d26                              ; $7d2c: $38 $f8

	db   $fc                                         ; $7d2e: $fc
	db   $e4                                         ; $7d2f: $e4
	ld   a, $32                                      ; $7d30: $3e $32
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7d32: $cf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7d33: $cf
	db   $e3                                         ; $7d34: $e3
	and  e                                           ; $7d35: $a3
	ld   h, e                                        ; $7d36: $63
	ld   h, e                                        ; $7d37: $63
	inc  bc                                          ; $7d38: $03
	inc  bc                                          ; $7d39: $03
	inc  bc                                          ; $7d3a: $03
	inc  bc                                          ; $7d3b: $03
	rlca                                             ; $7d3c: $07
	rlca                                             ; $7d3d: $07
	db   $fc                                         ; $7d3e: $fc
	db   $fc                                         ; $7d3f: $fc
	nop                                              ; $7d40: $00
	nop                                              ; $7d41: $00
	nop                                              ; $7d42: $00
	nop                                              ; $7d43: $00
	nop                                              ; $7d44: $00
	nop                                              ; $7d45: $00
	ldh  a, [$f0]                                    ; $7d46: $f0 $f0
	ld   hl, sp-$78                                  ; $7d48: $f8 $88
	ld   hl, sp-$78                                  ; $7d4a: $f8 $88
	db   $fc                                         ; $7d4c: $fc
	db   $fc                                         ; $7d4d: $fc
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
	jr   c, jr_027_7da2                              ; $7d60: $38 $40

	ld   l, l                                        ; $7d62: $6d
	add  c                                           ; $7d63: $81
	db   $fd                                         ; $7d64: $fd
	ld   bc, $04e2                                   ; $7d65: $01 $e2 $04
	ld   a, e                                        ; $7d68: $7b
	add  b                                           ; $7d69: $80
	ld   sp, $004a                                   ; $7d6a: $31 $4a $00
	add  hl, sp                                      ; $7d6d: $39
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
	ret  nz                                          ; $7d80: $c0

	ret  nz                                          ; $7d81: $c0

	jr   nz, jr_027_7d94                             ; $7d82: $20 $10

	inc  e                                           ; $7d84: $1c
	nop                                              ; $7d85: $00
	sbc  h                                           ; $7d86: $9c
	nop                                              ; $7d87: $00
	call c, $9820                                    ; $7d88: $dc $20 $98
	ld   h, h                                        ; $7d8b: $64
	nop                                              ; $7d8c: $00
	ld   hl, sp+$00                                  ; $7d8d: $f8 $00
	nop                                              ; $7d8f: $00
	nop                                              ; $7d90: $00
	nop                                              ; $7d91: $00
	nop                                              ; $7d92: $00
	nop                                              ; $7d93: $00

jr_027_7d94:
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

jr_027_7da2:
	nop                                              ; $7da2: $00
	nop                                              ; $7da3: $00
	nop                                              ; $7da4: $00
	add  b                                           ; $7da5: $80

jr_027_7da6:
	nop                                              ; $7da6: $00
	add  b                                           ; $7da7: $80
	nop                                              ; $7da8: $00
	nop                                              ; $7da9: $00
	ret  nz                                          ; $7daa: $c0

	ret  nz                                          ; $7dab: $c0

	jr   c, jr_027_7da6                              ; $7dac: $38 $f8

	db   $fc                                         ; $7dae: $fc
	db   $e4                                         ; $7daf: $e4
	ld   a, $32                                      ; $7db0: $3e $32
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7db2: $cf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7db3: $cf
	db   $e3                                         ; $7db4: $e3
	and  e                                           ; $7db5: $a3
	ld   h, e                                        ; $7db6: $63
	ld   h, e                                        ; $7db7: $63
	inc  bc                                          ; $7db8: $03
	inc  bc                                          ; $7db9: $03
	inc  bc                                          ; $7dba: $03
	inc  bc                                          ; $7dbb: $03
	rlca                                             ; $7dbc: $07
	rlca                                             ; $7dbd: $07
	db   $fc                                         ; $7dbe: $fc
	db   $fc                                         ; $7dbf: $fc
	rrca                                             ; $7dc0: $0f
	rrca                                             ; $7dc1: $0f
	rlca                                             ; $7dc2: $07
	rlca                                             ; $7dc3: $07
	rrca                                             ; $7dc4: $0f
	rrca                                             ; $7dc5: $0f
	rra                                              ; $7dc6: $1f
	rla                                              ; $7dc7: $17
	ccf                                              ; $7dc8: $3f
	add  hl, sp                                      ; $7dc9: $39
	ccf                                              ; $7dca: $3f
	ccf                                              ; $7dcb: $3f
	dec  a                                           ; $7dcc: $3d
	ccf                                              ; $7dcd: $3f
	add  hl, sp                                      ; $7dce: $39
	ccf                                              ; $7dcf: $3f
	add  hl, sp                                      ; $7dd0: $39
	ccf                                              ; $7dd1: $3f
	cpl                                              ; $7dd2: $2f
	ld   a, a                                        ; $7dd3: $7f
	nop                                              ; $7dd4: $00
	ld   a, a                                        ; $7dd5: $7f
	ld   bc, $333f                                   ; $7dd6: $01 $3f $33
	ld   a, $2b                                      ; $7dd9: $3e $2b
	ld   a, $2d                                      ; $7ddb: $3e $2d
	ccf                                              ; $7ddd: $3f
	daa                                              ; $7dde: $27
	ccf                                              ; $7ddf: $3f
	add  b                                           ; $7de0: $80
	add  b                                           ; $7de1: $80
	ld   hl, sp-$08                                  ; $7de2: $f8 $f8
	db   $fc                                         ; $7de4: $fc
	db   $fc                                         ; $7de5: $fc
	cp   $fa                                         ; $7de6: $fe $fa
	rst  $38                                         ; $7de8: $ff
	rst  ToBoot                                         ; $7de9: $c7
	rst  $38                                         ; $7dea: $ff
	rst  $38                                         ; $7deb: $ff
	cp   a                                           ; $7dec: $bf
	rst  $38                                         ; $7ded: $ff
	or   a                                           ; $7dee: $b7
	rst  $38                                         ; $7def: $ff
	or   a                                           ; $7df0: $b7
	rst  $38                                         ; $7df1: $ff
	dec  a                                           ; $7df2: $3d
	rst  $38                                         ; $7df3: $ff
	nop                                              ; $7df4: $00
	rst  $38                                         ; $7df5: $ff
	ldh  [rIE], a                                    ; $7df6: $e0 $ff
	ldh  a, [c]                                      ; $7df8: $f2
	ld   e, $f5                                      ; $7df9: $1e $f5
	dec  e                                           ; $7dfb: $1d
	rst  $28                                         ; $7dfc: $ef
	ccf                                              ; $7dfd: $3f
	rst  $38                                         ; $7dfe: $ff
	di                                               ; $7dff: $f3
	rlca                                             ; $7e00: $07
	rlca                                             ; $7e01: $07
	inc  bc                                          ; $7e02: $03
	inc  bc                                          ; $7e03: $03
	rrca                                             ; $7e04: $0f
	rrca                                             ; $7e05: $0f
	rra                                              ; $7e06: $1f
	rra                                              ; $7e07: $1f
	ccf                                              ; $7e08: $3f
	scf                                              ; $7e09: $37
	ccf                                              ; $7e0a: $3f
	add  hl, sp                                      ; $7e0b: $39
	ccf                                              ; $7e0c: $3f
	ccf                                              ; $7e0d: $3f
	dec  a                                           ; $7e0e: $3d
	ccf                                              ; $7e0f: $3f
	add  hl, sp                                      ; $7e10: $39
	ccf                                              ; $7e11: $3f
	add  hl, sp                                      ; $7e12: $39
	ccf                                              ; $7e13: $3f
	cpl                                              ; $7e14: $2f
	ld   a, a                                        ; $7e15: $7f
	ld   [$3077], sp                                 ; $7e16: $08 $77 $30
	ccf                                              ; $7e19: $3f
	add  hl, hl                                      ; $7e1a: $29
	ccf                                              ; $7e1b: $3f
	inc  l                                           ; $7e1c: $2c
	ccf                                              ; $7e1d: $3f
	daa                                              ; $7e1e: $27
	ccf                                              ; $7e1f: $3f
	nop                                              ; $7e20: $00
	nop                                              ; $7e21: $00
	cp   b                                           ; $7e22: $b8
	cp   b                                           ; $7e23: $b8
	db   $fc                                         ; $7e24: $fc
	db   $fc                                         ; $7e25: $fc
	cp   $fe                                         ; $7e26: $fe $fe
	rst  $38                                         ; $7e28: $ff
	ei                                               ; $7e29: $fb
	rst  $38                                         ; $7e2a: $ff
	rst  ToBoot                                         ; $7e2b: $c7
	rst  $38                                         ; $7e2c: $ff
	rst  $38                                         ; $7e2d: $ff
	cp   a                                           ; $7e2e: $bf
	rst  $38                                         ; $7e2f: $ff
	or   a                                           ; $7e30: $b7
	rst  $38                                         ; $7e31: $ff
	or   a                                           ; $7e32: $b7
	rst  $38                                         ; $7e33: $ff
	dec  a                                           ; $7e34: $3d
	rst  $38                                         ; $7e35: $ff
	inc  b                                           ; $7e36: $04
	ei                                               ; $7e37: $fb
	ld   [bc], a                                     ; $7e38: $02
	cp   $e4                                         ; $7e39: $fe $e4
	db   $fc                                         ; $7e3b: $fc
	rrca                                             ; $7e3c: $0f
	rst  $38                                         ; $7e3d: $ff
	rst  $38                                         ; $7e3e: $ff
	di                                               ; $7e3f: $f3
	rlca                                             ; $7e40: $07
	rlca                                             ; $7e41: $07
	rra                                              ; $7e42: $1f
	rra                                              ; $7e43: $1f
	ccf                                              ; $7e44: $3f
	scf                                              ; $7e45: $37
	ccf                                              ; $7e46: $3f
	add  hl, sp                                      ; $7e47: $39
	ccf                                              ; $7e48: $3f
	ccf                                              ; $7e49: $3f
	dec  a                                           ; $7e4a: $3d
	ccf                                              ; $7e4b: $3f
	add  hl, sp                                      ; $7e4c: $39
	ccf                                              ; $7e4d: $3f
	add  hl, sp                                      ; $7e4e: $39
	ccf                                              ; $7e4f: $3f
	cpl                                              ; $7e50: $2f
	ld   a, a                                        ; $7e51: $7f
	nop                                              ; $7e52: $00
	ld   a, a                                        ; $7e53: $7f
	ld   bc, $133f                                   ; $7e54: $01 $3f $13
	ld   e, $33                                      ; $7e57: $1e $33
	ld   a, $2b                                      ; $7e59: $3e $2b
	ld   a, $2d                                      ; $7e5b: $3e $2d
	ccf                                              ; $7e5d: $3f
	daa                                              ; $7e5e: $27
	ccf                                              ; $7e5f: $3f
	ld   hl, sp-$08                                  ; $7e60: $f8 $f8
	db   $fc                                         ; $7e62: $fc
	db   $fc                                         ; $7e63: $fc
	cp   $fa                                         ; $7e64: $fe $fa
	rst  $38                                         ; $7e66: $ff
	rst  ToBoot                                         ; $7e67: $c7
	rst  $38                                         ; $7e68: $ff
	rst  $38                                         ; $7e69: $ff
	cp   a                                           ; $7e6a: $bf
	rst  $38                                         ; $7e6b: $ff
	or   a                                           ; $7e6c: $b7
	rst  $38                                         ; $7e6d: $ff
	or   a                                           ; $7e6e: $b7
	rst  $38                                         ; $7e6f: $ff
	dec  a                                           ; $7e70: $3d
	rst  $38                                         ; $7e71: $ff
	nop                                              ; $7e72: $00
	rst  $38                                         ; $7e73: $ff
	ldh  [rIE], a                                    ; $7e74: $e0 $ff
	ldh  a, [c]                                      ; $7e76: $f2
	ld   e, $f2                                      ; $7e77: $1e $f2
	ld   e, $f5                                      ; $7e79: $1e $f5
	dec  e                                           ; $7e7b: $1d
	rst  $28                                         ; $7e7c: $ef
	ccf                                              ; $7e7d: $3f
	rst  $38                                         ; $7e7e: $ff
	di                                               ; $7e7f: $f3
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
	rlca                                             ; $7e9e: $07
	rlca                                             ; $7e9f: $07
	nop                                              ; $7ea0: $00
	nop                                              ; $7ea1: $00
	nop                                              ; $7ea2: $00
	add  b                                           ; $7ea3: $80
	nop                                              ; $7ea4: $00
	add  b                                           ; $7ea5: $80

jr_027_7ea6:
	nop                                              ; $7ea6: $00
	nop                                              ; $7ea7: $00
	nop                                              ; $7ea8: $00
	nop                                              ; $7ea9: $00
	ret  nz                                          ; $7eaa: $c0

	ret  nz                                          ; $7eab: $c0

	jr   c, jr_027_7ea6                              ; $7eac: $38 $f8

	db   $fc                                         ; $7eae: $fc
	db   $e4                                         ; $7eaf: $e4
	ld   a, $32                                      ; $7eb0: $3e $32
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7eb2: $cf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7eb3: $cf
	db   $e3                                         ; $7eb4: $e3
	and  e                                           ; $7eb5: $a3
	ld   h, e                                        ; $7eb6: $63
	ld   h, e                                        ; $7eb7: $63
	inc  bc                                          ; $7eb8: $03
	inc  bc                                          ; $7eb9: $03
	inc  bc                                          ; $7eba: $03
	inc  bc                                          ; $7ebb: $03
	rlca                                             ; $7ebc: $07
	rlca                                             ; $7ebd: $07
	db   $fc                                         ; $7ebe: $fc
	db   $fc                                         ; $7ebf: $fc
	nop                                              ; $7ec0: $00
	add  b                                           ; $7ec1: $80
	nop                                              ; $7ec2: $00
	add  b                                           ; $7ec3: $80
	nop                                              ; $7ec4: $00
	nop                                              ; $7ec5: $00

jr_027_7ec6:
	nop                                              ; $7ec6: $00
	nop                                              ; $7ec7: $00
	nop                                              ; $7ec8: $00
	nop                                              ; $7ec9: $00
	ret  nz                                          ; $7eca: $c0

	ret  nz                                          ; $7ecb: $c0

	jr   c, jr_027_7ec6                              ; $7ecc: $38 $f8

	db   $fc                                         ; $7ece: $fc
	db   $e4                                         ; $7ecf: $e4
	ld   a, $32                                      ; $7ed0: $3e $32
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7ed2: $cf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7ed3: $cf
	db   $e3                                         ; $7ed4: $e3
	and  e                                           ; $7ed5: $a3
	ld   h, e                                        ; $7ed6: $63
	ld   h, e                                        ; $7ed7: $63
	inc  bc                                          ; $7ed8: $03
	inc  bc                                          ; $7ed9: $03
	inc  bc                                          ; $7eda: $03
	inc  bc                                          ; $7edb: $03
	rlca                                             ; $7edc: $07
	rlca                                             ; $7edd: $07
	db   $fc                                         ; $7ede: $fc
	db   $fc                                         ; $7edf: $fc
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
