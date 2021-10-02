; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $013", ROMX[$4000], BANK[$13]

	nop                                              ; $4000: $00
	nop                                              ; $4001: $00
	nop                                              ; $4002: $00
	nop                                              ; $4003: $00
	nop                                              ; $4004: $00
	nop                                              ; $4005: $00
	nop                                              ; $4006: $00
	nop                                              ; $4007: $00
	nop                                              ; $4008: $00
	nop                                              ; $4009: $00
	nop                                              ; $400a: $00
	nop                                              ; $400b: $00
	nop                                              ; $400c: $00
	nop                                              ; $400d: $00
	nop                                              ; $400e: $00
	nop                                              ; $400f: $00
	inc  bc                                          ; $4010: $03
	inc  bc                                          ; $4011: $03
	db   $fc                                         ; $4012: $fc
	db   $fc                                         ; $4013: $fc
	ld   b, b                                        ; $4014: $40
	ld   a, b                                        ; $4015: $78
	ld   sp, $0e3f                                   ; $4016: $31 $3f $0e
	ld   c, $04                                      ; $4019: $0e $04
	inc  b                                           ; $401b: $04
	ld   [$110f], sp                                 ; $401c: $08 $0f $11
	rra                                              ; $401f: $1f
	nop                                              ; $4020: $00
	nop                                              ; $4021: $00
	nop                                              ; $4022: $00
	nop                                              ; $4023: $00
	nop                                              ; $4024: $00
	nop                                              ; $4025: $00
	nop                                              ; $4026: $00
	nop                                              ; $4027: $00
	ld   bc, $1e01                                   ; $4028: $01 $01 $1e
	rra                                              ; $402b: $1f

jr_013_402c:
	ld   h, h                                        ; $402c: $64
	ld   a, a                                        ; $402d: $7f
	adc  b                                           ; $402e: $88
	rst  $38                                         ; $402f: $ff
	nop                                              ; $4030: $00
	ld   a, a                                        ; $4031: $7f
	nop                                              ; $4032: $00
	rst  $38                                         ; $4033: $ff
	ld   h, b                                        ; $4034: $60
	ld   a, a                                        ; $4035: $7f
	add  c                                           ; $4036: $81
	rst  $38                                         ; $4037: $ff
	ld   b, e                                        ; $4038: $43
	ld   a, a                                        ; $4039: $7f
	add  a                                           ; $403a: $87
	or   a                                           ; $403b: $b7
	adc  h                                           ; $403c: $8c
	xor  b                                           ; $403d: $a8
	ld   [$0048], sp                                 ; $403e: $08 $48 $00
	nop                                              ; $4041: $00
	nop                                              ; $4042: $00
	nop                                              ; $4043: $00
	nop                                              ; $4044: $00
	nop                                              ; $4045: $00
	nop                                              ; $4046: $00
	nop                                              ; $4047: $00
	ret  nz                                          ; $4048: $c0

	ret  nz                                          ; $4049: $c0

	jr   nz, jr_013_402c                             ; $404a: $20 $e0

	db   $10                                         ; $404c: $10
	ldh  a, [rAUD1SWEEP]                             ; $404d: $f0 $10
	ldh  a, [rAUD3HIGH]                              ; $404f: $f0 $1e
	cp   $11                                         ; $4051: $fe $11
	rst  $38                                         ; $4053: $ff
	db   $10                                         ; $4054: $10
	rst  $38                                         ; $4055: $ff
	sbc  b                                           ; $4056: $98
	rst  $38                                         ; $4057: $ff
	inc  h                                           ; $4058: $24
	rst  $38                                         ; $4059: $ff
	ldh  a, [c]                                      ; $405a: $f2
	cp   $12                                         ; $405b: $fe $12
	ld   e, $19                                      ; $405d: $1e $19
	dec  bc                                          ; $405f: $0b
	nop                                              ; $4060: $00
	nop                                              ; $4061: $00
	nop                                              ; $4062: $00
	nop                                              ; $4063: $00
	nop                                              ; $4064: $00
	nop                                              ; $4065: $00
	nop                                              ; $4066: $00
	nop                                              ; $4067: $00
	nop                                              ; $4068: $00
	nop                                              ; $4069: $00
	nop                                              ; $406a: $00
	nop                                              ; $406b: $00
	nop                                              ; $406c: $00
	nop                                              ; $406d: $00
	nop                                              ; $406e: $00
	nop                                              ; $406f: $00
	nop                                              ; $4070: $00
	nop                                              ; $4071: $00
	add  b                                           ; $4072: $80
	add  b                                           ; $4073: $80
	ld   b, b                                        ; $4074: $40
	ret  nz                                          ; $4075: $c0

	jr   nz, jr_013_4098                             ; $4076: $20 $20

	sub  b                                           ; $4078: $90
	sub  b                                           ; $4079: $90
	ld   c, b                                        ; $407a: $48
	ld   hl, sp+$3c                                  ; $407b: $f8 $3c
	ld   a, h                                        ; $407d: $7c
	jr   nz, jr_013_40a0                             ; $407e: $20 $20

	ld   de, $221f                                   ; $4080: $11 $1f $22
	ccf                                              ; $4083: $3f
	ld   [hl+], a                                    ; $4084: $22
	ccf                                              ; $4085: $3f
	ld   b, d                                        ; $4086: $42
	ld   a, a                                        ; $4087: $7f
	ld   c, h                                        ; $4088: $4c
	ld   a, a                                        ; $4089: $7f
	db   $f4                                         ; $408a: $f4
	rst  $30                                         ; $408b: $f7
	inc  b                                           ; $408c: $04
	rlca                                             ; $408d: $07
	inc  b                                           ; $408e: $04
	rlca                                             ; $408f: $07
	dec  b                                           ; $4090: $05
	rlca                                             ; $4091: $07
	ld   b, $07                                      ; $4092: $06 $07
	ld   b, $07                                      ; $4094: $06 $07
	dec  b                                           ; $4096: $05
	dec  b                                           ; $4097: $05

jr_013_4098:
	nop                                              ; $4098: $00
	nop                                              ; $4099: $00
	nop                                              ; $409a: $00
	nop                                              ; $409b: $00
	nop                                              ; $409c: $00
	nop                                              ; $409d: $00
	nop                                              ; $409e: $00
	nop                                              ; $409f: $00

jr_013_40a0:
	db   $10                                         ; $40a0: $10
	db   $10                                         ; $40a1: $10
	rra                                              ; $40a2: $1f
	ccf                                              ; $40a3: $3f
	scf                                              ; $40a4: $37
	ld   a, b                                        ; $40a5: $78
	ccf                                              ; $40a6: $3f
	db   $ec                                         ; $40a7: $ec
	ld   a, a                                        ; $40a8: $7f
	cp   $5f                                         ; $40a9: $fe $5f
	call c, $b893                                    ; $40ab: $dc $93 $b8
	rst  $20                                         ; $40ae: $e7
	add  b                                           ; $40af: $80
	cp   $81                                         ; $40b0: $fe $81
	rst  $38                                         ; $40b2: $ff
	add  b                                           ; $40b3: $80
	cp   l                                           ; $40b4: $bd
	jp   $c27f                                       ; $40b5: $c3 $7f $c2


	xor  a                                           ; $40b8: $af
	ldh  a, [$9b]                                    ; $40b9: $f0 $9b
	call c, Call_013_6f7f                            ; $40bb: $dc $7f $6f
	add  sp, -$11                                    ; $40be: $e8 $ef
	add  hl, bc                                      ; $40c0: $09
	add  hl, bc                                      ; $40c1: $09
	ld   hl, sp-$03                                  ; $40c2: $f8 $fd
	db   $ec                                         ; $40c4: $ec
	rra                                              ; $40c5: $1f
	db   $fc                                         ; $40c6: $fc
	scf                                              ; $40c7: $37
	db   $fc                                         ; $40c8: $fc
	ld   a, a                                        ; $40c9: $7f
	xor  $2f                                         ; $40ca: $ee $2f
	jp   z, $e61f                                    ; $40cc: $ca $1f $e6

	inc  bc                                          ; $40cf: $03
	ld   a, a                                        ; $40d0: $7f
	add  c                                           ; $40d1: $81
	rst  $38                                         ; $40d2: $ff
	ld   bc, $c3bd                                   ; $40d3: $01 $bd $c3
	cp   $43                                         ; $40d6: $fe $43
	push af                                          ; $40d8: $f5
	rrca                                             ; $40d9: $0f
	reti                                             ; $40da: $d9


	dec  sp                                          ; $40db: $3b
	cp   $f6                                         ; $40dc: $fe $f6
	rla                                              ; $40de: $17
	rst  $30                                         ; $40df: $f7
	db   $10                                         ; $40e0: $10
	ldh  a, [$90]                                    ; $40e1: $f0 $90
	ldh  a, [$88]                                    ; $40e3: $f0 $88
	ld   hl, sp-$78                                  ; $40e5: $f8 $88
	ld   hl, sp-$38                                  ; $40e7: $f8 $c8
	ld   hl, sp-$5c                                  ; $40e9: $f8 $a4
	db   $fc                                         ; $40eb: $fc
	sbc  [hl]                                        ; $40ec: $9e
	cp   $a0                                         ; $40ed: $fe $a0
	ldh  [hScriptOpcodeParams], a                                    ; $40ef: $e0 $a0
	ldh  [$50], a                                    ; $40f1: $e0 $50
	ret  nc                                          ; $40f3: $d0

	ld   c, b                                        ; $40f4: $48
	ret  z                                           ; $40f5: $c8

	xor  b                                           ; $40f6: $a8
	and  b                                           ; $40f7: $a0
	inc  [hl]                                        ; $40f8: $34
	inc  h                                           ; $40f9: $24
	inc  d                                           ; $40fa: $14
	inc  d                                           ; $40fb: $14
	ld   d, $12                                      ; $40fc: $16 $12
	ld   [de], a                                     ; $40fe: $12
	ld   [de], a                                     ; $40ff: $12
	ld   bc, $0201                                   ; $4100: $01 $01 $02
	ld   [bc], a                                     ; $4103: $02
	dec  b                                           ; $4104: $05
	dec  b                                           ; $4105: $05
	rlca                                             ; $4106: $07
	rlca                                             ; $4107: $07
	dec  bc                                          ; $4108: $0b
	add  hl, bc                                      ; $4109: $09
	dec  bc                                          ; $410a: $0b
	add  hl, bc                                      ; $410b: $09
	inc  de                                          ; $410c: $13
	inc  de                                          ; $410d: $13
	rla                                              ; $410e: $17
	ld   d, $1f                                      ; $410f: $16 $1f
	dec  e                                           ; $4111: $1d
	rra                                              ; $4112: $1f
	inc  d                                           ; $4113: $14
	dec  d                                           ; $4114: $15
	ld   e, $0a                                      ; $4115: $1e $0a
	rrca                                             ; $4117: $0f
	rlca                                             ; $4118: $07
	rlca                                             ; $4119: $07
	ld   bc, $0101                                   ; $411a: $01 $01 $01
	ld   bc, $0303                                   ; $411d: $01 $03 $03
	dec  hl                                          ; $4120: $2b
	inc  l                                           ; $4121: $2c
	dec  l                                           ; $4122: $2d
	ld   l, $2b                                      ; $4123: $2e $2b
	cpl                                              ; $4125: $2f
	inc  l                                           ; $4126: $2c
	daa                                              ; $4127: $27
	inc  d                                           ; $4128: $14
	scf                                              ; $4129: $37
	ld   [de], a                                     ; $412a: $12
	inc  de                                          ; $412b: $13
	adc  c                                           ; $412c: $89
	adc  c                                           ; $412d: $89
	push hl                                          ; $412e: $e5
	push hl                                          ; $412f: $e5
	jp   nc, $ec32                                   ; $4130: $d2 $32 $ec

	inc  e                                           ; $4133: $1c
	rst  $28                                         ; $4134: $ef
	rra                                              ; $4135: $1f

jr_013_4136:
	rra                                              ; $4136: $1f
	rst  $38                                         ; $4137: $ff
	and  $e6                                         ; $4138: $e6 $e6
	rrca                                             ; $413a: $0f
	rrca                                             ; $413b: $0f
	db   $dd                                         ; $413c: $dd
	db   $dd                                         ; $413d: $dd
	ei                                               ; $413e: $fb
	ei                                               ; $413f: $fb
	call nc, $b434                                   ; $4140: $d4 $34 $b4
	ld   [hl], h                                     ; $4143: $74
	call nc, $34f4                                   ; $4144: $d4 $f4 $34
	db   $e4                                         ; $4147: $e4
	jr   z, jr_013_4136                              ; $4148: $28 $ec

	ld   c, b                                        ; $414a: $48
	ret  z                                           ; $414b: $c8

	sub  c                                           ; $414c: $91
	sub  c                                           ; $414d: $91
	daa                                              ; $414e: $27
	daa                                              ; $414f: $27
	ld   c, e                                        ; $4150: $4b
	ld   c, h                                        ; $4151: $4c
	sub  a                                           ; $4152: $97
	sbc  b                                           ; $4153: $98
	rst  $30                                         ; $4154: $f7
	ld   hl, sp-$08                                  ; $4155: $f8 $f8
	rst  $38                                         ; $4157: $ff
	ld   [hl], a                                     ; $4158: $77
	ld   [hl], a                                     ; $4159: $77
	jr   c, jr_013_4194                              ; $415a: $38 $38

	sbc  l                                           ; $415c: $9d
	sbc  l                                           ; $415d: $9d
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $415e: $cf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $415f: $cf
	sub  d                                           ; $4160: $92
	sub  d                                           ; $4161: $92
	ld   d, d                                        ; $4162: $52
	ld   d, d                                        ; $4163: $52
	or   d                                           ; $4164: $b2
	or   d                                           ; $4165: $b2
	ldh  a, [c]                                      ; $4166: $f2
	ldh  a, [c]                                      ; $4167: $f2
	sbc  $9e                                         ; $4168: $de $9e
	ret  nc                                          ; $416a: $d0

	sub  b                                           ; $416b: $90
	ret  z                                           ; $416c: $c8

	ret  z                                           ; $416d: $c8

	add  sp, $68                                     ; $416e: $e8 $68
	ld   hl, sp-$48                                  ; $4170: $f8 $b8
	ld   hl, sp+$28                                  ; $4172: $f8 $28
	xor  b                                           ; $4174: $a8
	ld   a, b                                        ; $4175: $78
	ld   d, b                                        ; $4176: $50
	ldh  a, [$e0]                                    ; $4177: $f0 $e0
	ldh  [$80], a                                    ; $4179: $e0 $80
	add  b                                           ; $417b: $80
	add  b                                           ; $417c: $80
	add  b                                           ; $417d: $80
	ret  nz                                          ; $417e: $c0

	ret  nz                                          ; $417f: $c0

	inc  bc                                          ; $4180: $03
	inc  bc                                          ; $4181: $03
	inc  bc                                          ; $4182: $03
	inc  bc                                          ; $4183: $03
	rlca                                             ; $4184: $07
	rlca                                             ; $4185: $07
	rlca                                             ; $4186: $07
	rlca                                             ; $4187: $07
	rrca                                             ; $4188: $0f
	rrca                                             ; $4189: $0f
	rrca                                             ; $418a: $0f
	rrca                                             ; $418b: $0f
	ld   c, $09                                      ; $418c: $0e $09
	rra                                              ; $418e: $1f
	db   $10                                         ; $418f: $10
	rra                                              ; $4190: $1f
	rra                                              ; $4191: $1f
	jr   nc, jr_013_41d3                             ; $4192: $30 $3f

jr_013_4194:
	ld   [hl+], a                                    ; $4194: $22
	dec  a                                           ; $4195: $3d
	inc  l                                           ; $4196: $2c
	ld   sp, $3f3f                                   ; $4197: $31 $3f $3f
	nop                                              ; $419a: $00
	nop                                              ; $419b: $00
	nop                                              ; $419c: $00
	nop                                              ; $419d: $00
	nop                                              ; $419e: $00
	nop                                              ; $419f: $00
	rst  $38                                         ; $41a0: $ff
	rst  $38                                         ; $41a1: $ff
	cp   $fe                                         ; $41a2: $fe $fe
	db   $fc                                         ; $41a4: $fc
	db   $fc                                         ; $41a5: $fc
	db   $fc                                         ; $41a6: $fc
	db   $fc                                         ; $41a7: $fc
	ld   hl, sp-$08                                  ; $41a8: $f8 $f8
	ld   hl, sp-$08                                  ; $41aa: $f8 $f8
	ldh  a, [$f0]                                    ; $41ac: $f0 $f0
	ldh  a, [rAUD1SWEEP]                             ; $41ae: $f0 $10
	ld   h, b                                        ; $41b0: $60
	and  b                                           ; $41b1: $a0
	ldh  [$e0], a                                    ; $41b2: $e0 $e0
	ld   b, b                                        ; $41b4: $40
	ret  nz                                          ; $41b5: $c0

	ld   b, b                                        ; $41b6: $40
	ret  nz                                          ; $41b7: $c0

	add  b                                           ; $41b8: $80
	add  b                                           ; $41b9: $80
	nop                                              ; $41ba: $00
	nop                                              ; $41bb: $00
	nop                                              ; $41bc: $00
	nop                                              ; $41bd: $00
	nop                                              ; $41be: $00
	nop                                              ; $41bf: $00
	rst  $38                                         ; $41c0: $ff
	rst  $38                                         ; $41c1: $ff
	ld   a, a                                        ; $41c2: $7f
	ld   a, a                                        ; $41c3: $7f
	ccf                                              ; $41c4: $3f
	ccf                                              ; $41c5: $3f
	ccf                                              ; $41c6: $3f
	ccf                                              ; $41c7: $3f
	rra                                              ; $41c8: $1f
	rra                                              ; $41c9: $1f
	rra                                              ; $41ca: $1f
	rra                                              ; $41cb: $1f
	rrca                                             ; $41cc: $0f
	rrca                                             ; $41cd: $0f
	rrca                                             ; $41ce: $0f
	ld   [$0506], sp                                 ; $41cf: $08 $06 $05
	rlca                                             ; $41d2: $07

jr_013_41d3:
	rlca                                             ; $41d3: $07
	ld   [bc], a                                     ; $41d4: $02
	inc  bc                                          ; $41d5: $03
	ld   [bc], a                                     ; $41d6: $02
	inc  bc                                          ; $41d7: $03
	ld   bc, $0001                                   ; $41d8: $01 $01 $00
	nop                                              ; $41db: $00
	nop                                              ; $41dc: $00
	nop                                              ; $41dd: $00
	nop                                              ; $41de: $00
	nop                                              ; $41df: $00
	ret  nz                                          ; $41e0: $c0

	ret  nz                                          ; $41e1: $c0

	ret  nz                                          ; $41e2: $c0

	ret  nz                                          ; $41e3: $c0

	ldh  [$e0], a                                    ; $41e4: $e0 $e0
	ldh  [$e0], a                                    ; $41e6: $e0 $e0
	ldh  a, [$f0]                                    ; $41e8: $f0 $f0
	ldh  a, [$f0]                                    ; $41ea: $f0 $f0
	ld   [hl], b                                     ; $41ec: $70
	sub  b                                           ; $41ed: $90
	ld   hl, sp+$08                                  ; $41ee: $f8 $08
	ld   hl, sp-$08                                  ; $41f0: $f8 $f8
	inc  c                                           ; $41f2: $0c
	db   $fc                                         ; $41f3: $fc
	inc  d                                           ; $41f4: $14
	db   $ec                                         ; $41f5: $ec
	ld   h, h                                        ; $41f6: $64
	adc  h                                           ; $41f7: $8c
	db   $fc                                         ; $41f8: $fc
	db   $fc                                         ; $41f9: $fc
	nop                                              ; $41fa: $00
	nop                                              ; $41fb: $00
	nop                                              ; $41fc: $00
	nop                                              ; $41fd: $00
	nop                                              ; $41fe: $00
	nop                                              ; $41ff: $00
	nop                                              ; $4200: $00
	nop                                              ; $4201: $00
	nop                                              ; $4202: $00
	nop                                              ; $4203: $00
	nop                                              ; $4204: $00
	nop                                              ; $4205: $00
	nop                                              ; $4206: $00
	nop                                              ; $4207: $00
	nop                                              ; $4208: $00
	nop                                              ; $4209: $00
	nop                                              ; $420a: $00
	nop                                              ; $420b: $00
	nop                                              ; $420c: $00
	nop                                              ; $420d: $00
	nop                                              ; $420e: $00
	nop                                              ; $420f: $00
	inc  bc                                          ; $4210: $03
	inc  bc                                          ; $4211: $03
	db   $fc                                         ; $4212: $fc
	db   $fc                                         ; $4213: $fc
	ld   b, b                                        ; $4214: $40
	ld   a, b                                        ; $4215: $78
	ld   sp, $0e3f                                   ; $4216: $31 $3f $0e
	ld   c, $04                                      ; $4219: $0e $04
	inc  b                                           ; $421b: $04
	ld   [$110f], sp                                 ; $421c: $08 $0f $11
	rra                                              ; $421f: $1f
	nop                                              ; $4220: $00
	nop                                              ; $4221: $00
	nop                                              ; $4222: $00
	nop                                              ; $4223: $00
	nop                                              ; $4224: $00
	nop                                              ; $4225: $00
	nop                                              ; $4226: $00
	nop                                              ; $4227: $00
	ld   bc, $1e01                                   ; $4228: $01 $01 $1e
	rra                                              ; $422b: $1f

jr_013_422c:
	ld   h, h                                        ; $422c: $64
	ld   a, a                                        ; $422d: $7f
	adc  b                                           ; $422e: $88
	rst  $38                                         ; $422f: $ff
	nop                                              ; $4230: $00
	ld   a, a                                        ; $4231: $7f
	nop                                              ; $4232: $00
	rst  $38                                         ; $4233: $ff
	ld   h, b                                        ; $4234: $60
	ld   a, a                                        ; $4235: $7f
	add  c                                           ; $4236: $81
	rst  $38                                         ; $4237: $ff
	ld   b, e                                        ; $4238: $43
	ld   a, a                                        ; $4239: $7f
	add  a                                           ; $423a: $87
	or   a                                           ; $423b: $b7
	adc  h                                           ; $423c: $8c
	xor  b                                           ; $423d: $a8
	ld   [$0048], sp                                 ; $423e: $08 $48 $00
	nop                                              ; $4241: $00
	nop                                              ; $4242: $00
	nop                                              ; $4243: $00
	nop                                              ; $4244: $00
	nop                                              ; $4245: $00
	nop                                              ; $4246: $00
	nop                                              ; $4247: $00
	ret  nz                                          ; $4248: $c0

	ret  nz                                          ; $4249: $c0

	jr   nz, jr_013_422c                             ; $424a: $20 $e0

	db   $10                                         ; $424c: $10
	ldh  a, [rAUD1SWEEP]                             ; $424d: $f0 $10
	ldh  a, [rAUD3HIGH]                              ; $424f: $f0 $1e
	cp   $11                                         ; $4251: $fe $11
	rst  $38                                         ; $4253: $ff
	db   $10                                         ; $4254: $10
	rst  $38                                         ; $4255: $ff
	sbc  b                                           ; $4256: $98
	rst  $38                                         ; $4257: $ff
	inc  h                                           ; $4258: $24
	rst  $38                                         ; $4259: $ff
	ldh  a, [c]                                      ; $425a: $f2
	cp   $12                                         ; $425b: $fe $12
	ld   e, $19                                      ; $425d: $1e $19
	dec  bc                                          ; $425f: $0b
	nop                                              ; $4260: $00
	nop                                              ; $4261: $00
	nop                                              ; $4262: $00
	nop                                              ; $4263: $00
	nop                                              ; $4264: $00
	nop                                              ; $4265: $00
	nop                                              ; $4266: $00
	nop                                              ; $4267: $00
	nop                                              ; $4268: $00
	nop                                              ; $4269: $00
	nop                                              ; $426a: $00
	nop                                              ; $426b: $00
	nop                                              ; $426c: $00
	nop                                              ; $426d: $00
	nop                                              ; $426e: $00
	nop                                              ; $426f: $00
	nop                                              ; $4270: $00
	nop                                              ; $4271: $00
	add  b                                           ; $4272: $80
	add  b                                           ; $4273: $80
	ld   b, b                                        ; $4274: $40
	ret  nz                                          ; $4275: $c0

	jr   nz, jr_013_4298                             ; $4276: $20 $20

	sub  b                                           ; $4278: $90
	sub  b                                           ; $4279: $90
	ld   c, b                                        ; $427a: $48
	ld   hl, sp+$3c                                  ; $427b: $f8 $3c
	ld   a, h                                        ; $427d: $7c
	jr   nz, jr_013_42a0                             ; $427e: $20 $20

	ld   de, $221f                                   ; $4280: $11 $1f $22
	ccf                                              ; $4283: $3f
	ld   [hl+], a                                    ; $4284: $22
	ccf                                              ; $4285: $3f
	ld   b, d                                        ; $4286: $42
	ld   a, a                                        ; $4287: $7f
	ld   c, h                                        ; $4288: $4c
	ld   a, a                                        ; $4289: $7f
	db   $f4                                         ; $428a: $f4
	rst  $30                                         ; $428b: $f7
	inc  b                                           ; $428c: $04
	rlca                                             ; $428d: $07
	inc  b                                           ; $428e: $04
	rlca                                             ; $428f: $07
	dec  b                                           ; $4290: $05
	rlca                                             ; $4291: $07
	ld   b, $07                                      ; $4292: $06 $07
	ld   b, $07                                      ; $4294: $06 $07
	dec  b                                           ; $4296: $05
	dec  b                                           ; $4297: $05

jr_013_4298:
	nop                                              ; $4298: $00
	nop                                              ; $4299: $00
	nop                                              ; $429a: $00
	nop                                              ; $429b: $00
	nop                                              ; $429c: $00
	nop                                              ; $429d: $00
	nop                                              ; $429e: $00
	nop                                              ; $429f: $00

jr_013_42a0:
	db   $10                                         ; $42a0: $10
	db   $10                                         ; $42a1: $10
	rra                                              ; $42a2: $1f
	ccf                                              ; $42a3: $3f
	scf                                              ; $42a4: $37
	ld   a, b                                        ; $42a5: $78
	ccf                                              ; $42a6: $3f
	db   $ec                                         ; $42a7: $ec
	ld   a, a                                        ; $42a8: $7f
	cp   $5f                                         ; $42a9: $fe $5f
	call c, $b893                                    ; $42ab: $dc $93 $b8
	rst  $20                                         ; $42ae: $e7
	add  b                                           ; $42af: $80
	cp   $81                                         ; $42b0: $fe $81
	rst  $38                                         ; $42b2: $ff
	add  b                                           ; $42b3: $80
	cp   a                                           ; $42b4: $bf
	jp   $c27e                                       ; $42b5: $c3 $7e $c2


	xor  l                                           ; $42b8: $ad
	di                                               ; $42b9: $f3
	sbc  e                                           ; $42ba: $9b
	call c, Call_013_7f7f                            ; $42bb: $dc $7f $7f
	ret  nc                                          ; $42be: $d0

	rst  JumpTable                                         ; $42bf: $df
	add  hl, bc                                      ; $42c0: $09
	add  hl, bc                                      ; $42c1: $09
	ld   hl, sp-$03                                  ; $42c2: $f8 $fd
	db   $ec                                         ; $42c4: $ec
	rra                                              ; $42c5: $1f
	db   $fc                                         ; $42c6: $fc
	scf                                              ; $42c7: $37
	db   $fc                                         ; $42c8: $fc
	ld   a, a                                        ; $42c9: $7f
	xor  $2f                                         ; $42ca: $ee $2f
	jp   z, $e61f                                    ; $42cc: $ca $1f $e6

	inc  bc                                          ; $42cf: $03
	ld   a, a                                        ; $42d0: $7f
	add  c                                           ; $42d1: $81
	rst  $38                                         ; $42d2: $ff
	ld   bc, $c3fd                                   ; $42d3: $01 $fd $c3
	ld   a, [hl]                                     ; $42d6: $7e
	ld   b, e                                        ; $42d7: $43
	or   l                                           ; $42d8: $b5
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $42d9: $cf
	rst  JumpTable                                         ; $42da: $df
	ccf                                              ; $42db: $3f
	add  sp, -$19                                    ; $42dc: $e8 $e7
	daa                                              ; $42de: $27
	add  sp, $10                                     ; $42df: $e8 $10
	ldh  a, [$90]                                    ; $42e1: $f0 $90
	ldh  a, [$88]                                    ; $42e3: $f0 $88
	ld   hl, sp-$78                                  ; $42e5: $f8 $88
	ld   hl, sp-$38                                  ; $42e7: $f8 $c8
	ld   hl, sp-$5c                                  ; $42e9: $f8 $a4
	db   $fc                                         ; $42eb: $fc
	sbc  [hl]                                        ; $42ec: $9e
	cp   $a0                                         ; $42ed: $fe $a0
	ldh  [hScriptOpcodeParams], a                                    ; $42ef: $e0 $a0
	ldh  [$50], a                                    ; $42f1: $e0 $50
	ret  nc                                          ; $42f3: $d0

	ld   c, b                                        ; $42f4: $48
	ret  z                                           ; $42f5: $c8

	xor  b                                           ; $42f6: $a8
	xor  b                                           ; $42f7: $a8
	inc  [hl]                                        ; $42f8: $34
	inc  h                                           ; $42f9: $24
	inc  d                                           ; $42fa: $14
	inc  d                                           ; $42fb: $14
	ld   b, $e2                                      ; $42fc: $06 $e2
	ldh  [c], a                                      ; $42fe: $e2
	ld   [de], a                                     ; $42ff: $12
	ld   bc, $0201                                   ; $4300: $01 $01 $02
	ld   [bc], a                                     ; $4303: $02
	ld   b, $04                                      ; $4304: $06 $04
	dec  b                                           ; $4306: $05
	dec  b                                           ; $4307: $05
	dec  bc                                          ; $4308: $0b
	dec  bc                                          ; $4309: $0b
	dec  bc                                          ; $430a: $0b
	add  hl, bc                                      ; $430b: $09
	inc  de                                          ; $430c: $13
	ld   de, $1213                                   ; $430d: $11 $13 $12
	rra                                              ; $4310: $1f
	dec  e                                           ; $4311: $1d
	rra                                              ; $4312: $1f
	inc  d                                           ; $4313: $14
	dec  d                                           ; $4314: $15
	ld   e, $0a                                      ; $4315: $1e $0a
	rrca                                             ; $4317: $0f
	rlca                                             ; $4318: $07
	rlca                                             ; $4319: $07
	ld   bc, $0101                                   ; $431a: $01 $01 $01
	ld   bc, $0303                                   ; $431d: $01 $03 $03
	ld   e, a                                        ; $4320: $5f
	ld   d, b                                        ; $4321: $50
	ld   e, [hl]                                     ; $4322: $5e
	ld   e, c                                        ; $4323: $59
	ld   d, a                                        ; $4324: $57
	ld   e, a                                        ; $4325: $5f
	ld   e, b                                        ; $4326: $58
	ld   c, a                                        ; $4327: $4f
	ld   l, b                                        ; $4328: $68
	cpl                                              ; $4329: $2f
	dec  h                                           ; $432a: $25
	daa                                              ; $432b: $27
	sub  d                                           ; $432c: $92
	ld   [de], a                                     ; $432d: $12
	jp   z, $ecca                                    ; $432e: $ca $ca $ec

	inc  l                                           ; $4331: $2c
	db   $d3                                         ; $4332: $d3
	ld   sp, $3fdf                                   ; $4333: $31 $df $3f
	ccf                                              ; $4336: $3f
	rst  $38                                         ; $4337: $ff
	call z, $1ecc                                    ; $4338: $cc $cc $1e
	ld   e, $fb                                      ; $433b: $1e $fb
	ei                                               ; $433d: $fb
	rst  $30                                         ; $433e: $f7
	rst  $30                                         ; $433f: $f7
	scf                                              ; $4340: $37
	ld   hl, sp-$1d                                  ; $4341: $f8 $e3
	db   $fc                                         ; $4343: $fc
	ld   l, l                                        ; $4344: $6d
	ldh  a, [c]                                      ; $4345: $f2
	and  $99                                         ; $4346: $e6 $99
	xor  b                                           ; $4348: $a8
	and  a                                           ; $4349: $a7
	cpl                                              ; $434a: $2f
	jr   z, jr_013_439c                              ; $434b: $28 $4f

	ld   c, a                                        ; $434d: $4f
	ld   b, c                                        ; $434e: $41
	ld   b, c                                        ; $434f: $41
	add  c                                           ; $4350: $81
	add  c                                           ; $4351: $81
	ld   [bc], a                                     ; $4352: $02
	ld   [bc], a                                     ; $4353: $02
	rst  $38                                         ; $4354: $ff
	rst  $38                                         ; $4355: $ff
	rst  $38                                         ; $4356: $ff
	rst  $38                                         ; $4357: $ff
	pop  hl                                          ; $4358: $e1
	pop  hl                                          ; $4359: $e1
	ld   [hl], b                                     ; $435a: $70
	ld   [hl], b                                     ; $435b: $70
	dec  sp                                          ; $435c: $3b
	dec  sp                                          ; $435d: $3b
	sbc  a                                           ; $435e: $9f
	sbc  a                                           ; $435f: $9f
	ldh  a, [c]                                      ; $4360: $f2
	ld   a, [bc]                                     ; $4361: $0a
	ldh  a, [c]                                      ; $4362: $f2
	ld   a, [bc]                                     ; $4363: $0a
	ldh  a, [c]                                      ; $4364: $f2
	ld   a, [bc]                                     ; $4365: $0a
	ld   [hl-], a                                    ; $4366: $32
	jp   z, $f606                                    ; $4367: $ca $06 $f6

	ret  nz                                          ; $436a: $c0

	ld   b, b                                        ; $436b: $40
	ret  nz                                          ; $436c: $c0

	ret  nz                                          ; $436d: $c0

	nop                                              ; $436e: $00
	nop                                              ; $436f: $00
	nop                                              ; $4370: $00
	nop                                              ; $4371: $00
	nop                                              ; $4372: $00
	nop                                              ; $4373: $00
	nop                                              ; $4374: $00
	nop                                              ; $4375: $00
	nop                                              ; $4376: $00
	nop                                              ; $4377: $00
	nop                                              ; $4378: $00
	nop                                              ; $4379: $00
	add  b                                           ; $437a: $80
	add  b                                           ; $437b: $80
	add  b                                           ; $437c: $80
	add  b                                           ; $437d: $80
	add  b                                           ; $437e: $80
	add  b                                           ; $437f: $80
	inc  bc                                          ; $4380: $03
	inc  bc                                          ; $4381: $03
	inc  bc                                          ; $4382: $03
	inc  bc                                          ; $4383: $03
	rlca                                             ; $4384: $07
	rlca                                             ; $4385: $07
	rlca                                             ; $4386: $07
	rlca                                             ; $4387: $07
	rrca                                             ; $4388: $0f
	rrca                                             ; $4389: $0f
	rrca                                             ; $438a: $0f
	rrca                                             ; $438b: $0f
	ld   c, $09                                      ; $438c: $0e $09
	rra                                              ; $438e: $1f
	db   $10                                         ; $438f: $10
	rra                                              ; $4390: $1f
	rra                                              ; $4391: $1f
	jr   nc, jr_013_43d3                             ; $4392: $30 $3f

	ld   [hl+], a                                    ; $4394: $22
	dec  a                                           ; $4395: $3d
	inc  l                                           ; $4396: $2c
	ld   sp, $3f3f                                   ; $4397: $31 $3f $3f
	nop                                              ; $439a: $00
	nop                                              ; $439b: $00

jr_013_439c:
	nop                                              ; $439c: $00
	nop                                              ; $439d: $00
	nop                                              ; $439e: $00
	nop                                              ; $439f: $00
	rst  $38                                         ; $43a0: $ff
	rst  $38                                         ; $43a1: $ff
	cp   $fe                                         ; $43a2: $fe $fe
	db   $fc                                         ; $43a4: $fc
	db   $fc                                         ; $43a5: $fc
	db   $fc                                         ; $43a6: $fc
	db   $fc                                         ; $43a7: $fc
	ld   hl, sp-$08                                  ; $43a8: $f8 $f8
	ld   hl, sp-$08                                  ; $43aa: $f8 $f8
	ldh  a, [$f0]                                    ; $43ac: $f0 $f0
	ldh  a, [rAUD1SWEEP]                             ; $43ae: $f0 $10
	ld   h, b                                        ; $43b0: $60
	and  b                                           ; $43b1: $a0
	ldh  [$e0], a                                    ; $43b2: $e0 $e0
	ld   b, b                                        ; $43b4: $40
	ret  nz                                          ; $43b5: $c0

	ld   b, b                                        ; $43b6: $40
	ret  nz                                          ; $43b7: $c0

	add  b                                           ; $43b8: $80
	add  b                                           ; $43b9: $80
	nop                                              ; $43ba: $00
	nop                                              ; $43bb: $00
	nop                                              ; $43bc: $00
	nop                                              ; $43bd: $00
	nop                                              ; $43be: $00
	nop                                              ; $43bf: $00
	rst  $38                                         ; $43c0: $ff
	rst  $38                                         ; $43c1: $ff
	ld   a, a                                        ; $43c2: $7f
	ld   a, a                                        ; $43c3: $7f
	ccf                                              ; $43c4: $3f
	ccf                                              ; $43c5: $3f
	ccf                                              ; $43c6: $3f
	ccf                                              ; $43c7: $3f
	rra                                              ; $43c8: $1f
	rra                                              ; $43c9: $1f
	rra                                              ; $43ca: $1f
	rra                                              ; $43cb: $1f
	rrca                                             ; $43cc: $0f
	rrca                                             ; $43cd: $0f
	rrca                                             ; $43ce: $0f
	ld   [$0506], sp                                 ; $43cf: $08 $06 $05
	rlca                                             ; $43d2: $07

jr_013_43d3:
	rlca                                             ; $43d3: $07
	ld   [bc], a                                     ; $43d4: $02
	inc  bc                                          ; $43d5: $03
	ld   [bc], a                                     ; $43d6: $02
	inc  bc                                          ; $43d7: $03
	ld   bc, $0001                                   ; $43d8: $01 $01 $00
	nop                                              ; $43db: $00
	nop                                              ; $43dc: $00
	nop                                              ; $43dd: $00
	nop                                              ; $43de: $00
	nop                                              ; $43df: $00
	ret  nz                                          ; $43e0: $c0

	ret  nz                                          ; $43e1: $c0

	ret  nz                                          ; $43e2: $c0

	ret  nz                                          ; $43e3: $c0

	ldh  [$e0], a                                    ; $43e4: $e0 $e0
	ldh  [$e0], a                                    ; $43e6: $e0 $e0
	ldh  a, [$f0]                                    ; $43e8: $f0 $f0
	ldh  a, [$f0]                                    ; $43ea: $f0 $f0
	ld   [hl], b                                     ; $43ec: $70
	sub  b                                           ; $43ed: $90
	ld   hl, sp+$08                                  ; $43ee: $f8 $08
	ld   hl, sp-$08                                  ; $43f0: $f8 $f8
	inc  c                                           ; $43f2: $0c
	db   $fc                                         ; $43f3: $fc
	inc  d                                           ; $43f4: $14
	db   $ec                                         ; $43f5: $ec
	ld   h, h                                        ; $43f6: $64
	adc  h                                           ; $43f7: $8c
	db   $fc                                         ; $43f8: $fc
	db   $fc                                         ; $43f9: $fc
	nop                                              ; $43fa: $00
	nop                                              ; $43fb: $00
	nop                                              ; $43fc: $00
	nop                                              ; $43fd: $00
	nop                                              ; $43fe: $00
	nop                                              ; $43ff: $00
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
	inc  bc                                          ; $4410: $03
	inc  bc                                          ; $4411: $03
	db   $fc                                         ; $4412: $fc
	db   $fc                                         ; $4413: $fc
	ld   b, b                                        ; $4414: $40
	ld   a, b                                        ; $4415: $78
	ld   sp, $0e3f                                   ; $4416: $31 $3f $0e
	ld   c, $04                                      ; $4419: $0e $04
	inc  b                                           ; $441b: $04
	ld   [$110f], sp                                 ; $441c: $08 $0f $11
	rra                                              ; $441f: $1f
	nop                                              ; $4420: $00
	nop                                              ; $4421: $00
	nop                                              ; $4422: $00
	nop                                              ; $4423: $00
	nop                                              ; $4424: $00
	nop                                              ; $4425: $00
	nop                                              ; $4426: $00
	nop                                              ; $4427: $00
	ld   bc, $1e01                                   ; $4428: $01 $01 $1e
	rra                                              ; $442b: $1f

jr_013_442c:
	ld   h, h                                        ; $442c: $64
	ld   a, a                                        ; $442d: $7f
	adc  b                                           ; $442e: $88
	rst  $38                                         ; $442f: $ff
	nop                                              ; $4430: $00
	ld   a, a                                        ; $4431: $7f
	nop                                              ; $4432: $00
	rst  $38                                         ; $4433: $ff
	ld   h, b                                        ; $4434: $60
	ld   a, a                                        ; $4435: $7f
	add  c                                           ; $4436: $81
	rst  $38                                         ; $4437: $ff
	ld   b, e                                        ; $4438: $43
	ld   a, a                                        ; $4439: $7f
	add  a                                           ; $443a: $87
	or   a                                           ; $443b: $b7
	adc  h                                           ; $443c: $8c
	xor  b                                           ; $443d: $a8
	ld   [$0048], sp                                 ; $443e: $08 $48 $00
	nop                                              ; $4441: $00
	nop                                              ; $4442: $00
	nop                                              ; $4443: $00

Jump_013_4444:
	nop                                              ; $4444: $00
	nop                                              ; $4445: $00
	nop                                              ; $4446: $00
	nop                                              ; $4447: $00
	ret  nz                                          ; $4448: $c0

	ret  nz                                          ; $4449: $c0

	jr   nz, jr_013_442c                             ; $444a: $20 $e0

	db   $10                                         ; $444c: $10
	ldh  a, [rAUD1SWEEP]                             ; $444d: $f0 $10
	ldh  a, [rAUD3HIGH]                              ; $444f: $f0 $1e
	cp   $11                                         ; $4451: $fe $11
	rst  $38                                         ; $4453: $ff
	db   $10                                         ; $4454: $10
	rst  $38                                         ; $4455: $ff
	sbc  b                                           ; $4456: $98
	rst  $38                                         ; $4457: $ff
	inc  h                                           ; $4458: $24
	rst  $38                                         ; $4459: $ff
	ldh  a, [c]                                      ; $445a: $f2
	cp   $12                                         ; $445b: $fe $12
	ld   e, $19                                      ; $445d: $1e $19
	dec  bc                                          ; $445f: $0b
	nop                                              ; $4460: $00
	nop                                              ; $4461: $00
	nop                                              ; $4462: $00
	nop                                              ; $4463: $00
	nop                                              ; $4464: $00
	nop                                              ; $4465: $00

Jump_013_4466:
	nop                                              ; $4466: $00
	nop                                              ; $4467: $00
	nop                                              ; $4468: $00
	nop                                              ; $4469: $00
	nop                                              ; $446a: $00
	nop                                              ; $446b: $00
	nop                                              ; $446c: $00
	nop                                              ; $446d: $00
	nop                                              ; $446e: $00
	nop                                              ; $446f: $00
	nop                                              ; $4470: $00
	nop                                              ; $4471: $00
	add  b                                           ; $4472: $80
	add  b                                           ; $4473: $80
	ld   b, b                                        ; $4474: $40
	ret  nz                                          ; $4475: $c0

	jr   nz, jr_013_4498                             ; $4476: $20 $20

	sub  b                                           ; $4478: $90
	sub  b                                           ; $4479: $90
	ld   c, b                                        ; $447a: $48
	ld   hl, sp+$3c                                  ; $447b: $f8 $3c
	ld   a, h                                        ; $447d: $7c
	jr   nz, @+$22                                   ; $447e: $20 $20

	ld   de, $221f                                   ; $4480: $11 $1f $22
	ccf                                              ; $4483: $3f
	ld   [hl+], a                                    ; $4484: $22
	ccf                                              ; $4485: $3f
	ld   b, d                                        ; $4486: $42
	ld   a, a                                        ; $4487: $7f
	ld   c, h                                        ; $4488: $4c
	ld   a, a                                        ; $4489: $7f
	db   $f4                                         ; $448a: $f4
	rst  $30                                         ; $448b: $f7
	inc  b                                           ; $448c: $04
	rlca                                             ; $448d: $07
	inc  b                                           ; $448e: $04
	rlca                                             ; $448f: $07
	dec  b                                           ; $4490: $05
	rlca                                             ; $4491: $07
	ld   b, $07                                      ; $4492: $06 $07
	ld   b, $07                                      ; $4494: $06 $07
	dec  b                                           ; $4496: $05
	dec  b                                           ; $4497: $05

jr_013_4498:
	nop                                              ; $4498: $00
	nop                                              ; $4499: $00
	nop                                              ; $449a: $00
	nop                                              ; $449b: $00
	nop                                              ; $449c: $00
	rlca                                             ; $449d: $07
	rlca                                             ; $449e: $07
	ld   [$1010], sp                                 ; $449f: $08 $10 $10
	rra                                              ; $44a2: $1f
	ccf                                              ; $44a3: $3f
	scf                                              ; $44a4: $37
	ld   a, b                                        ; $44a5: $78
	ccf                                              ; $44a6: $3f
	db   $ec                                         ; $44a7: $ec
	ld   a, a                                        ; $44a8: $7f
	cp   $5f                                         ; $44a9: $fe $5f
	call c, $b893                                    ; $44ab: $dc $93 $b8
	rst  $20                                         ; $44ae: $e7
	add  b                                           ; $44af: $80
	cp   $81                                         ; $44b0: $fe $81
	rst  $38                                         ; $44b2: $ff
	add  b                                           ; $44b3: $80
	cp   a                                           ; $44b4: $bf
	jp   $c27e                                       ; $44b5: $c3 $7e $c2


	xor  l                                           ; $44b8: $ad
	di                                               ; $44b9: $f3
	ei                                               ; $44ba: $fb
	db   $fc                                         ; $44bb: $fc
	rla                                              ; $44bc: $17
	rst  $20                                         ; $44bd: $e7
	db   $e4                                         ; $44be: $e4
	rla                                              ; $44bf: $17
	add  hl, bc                                      ; $44c0: $09
	add  hl, bc                                      ; $44c1: $09
	ld   hl, sp-$03                                  ; $44c2: $f8 $fd
	db   $ec                                         ; $44c4: $ec
	rra                                              ; $44c5: $1f
	db   $fc                                         ; $44c6: $fc
	scf                                              ; $44c7: $37
	db   $fc                                         ; $44c8: $fc
	ld   a, a                                        ; $44c9: $7f
	xor  $2f                                         ; $44ca: $ee $2f
	jp   z, $e61f                                    ; $44cc: $ca $1f $e6

	inc  bc                                          ; $44cf: $03
	ld   a, a                                        ; $44d0: $7f
	add  c                                           ; $44d1: $81
	rst  $38                                         ; $44d2: $ff
	ld   bc, $c3fd                                   ; $44d3: $01 $fd $c3
	ld   a, [hl]                                     ; $44d6: $7e
	ld   b, e                                        ; $44d7: $43
	or   l                                           ; $44d8: $b5
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $44d9: $cf
	reti                                             ; $44da: $d9


	dec  sp                                          ; $44db: $3b
	cp   $fe                                         ; $44dc: $fe $fe
	dec  bc                                          ; $44de: $0b
	ei                                               ; $44df: $fb
	db   $10                                         ; $44e0: $10
	ldh  a, [$90]                                    ; $44e1: $f0 $90
	ldh  a, [$88]                                    ; $44e3: $f0 $88
	ld   hl, sp-$78                                  ; $44e5: $f8 $88
	ld   hl, sp-$38                                  ; $44e7: $f8 $c8
	ld   hl, sp-$5c                                  ; $44e9: $f8 $a4
	db   $fc                                         ; $44eb: $fc
	sbc  [hl]                                        ; $44ec: $9e
	cp   $a0                                         ; $44ed: $fe $a0
	ldh  [hScriptOpcodeParams], a                                    ; $44ef: $e0 $a0
	ldh  [$50], a                                    ; $44f1: $e0 $50
	ret  nc                                          ; $44f3: $d0

	ld   c, b                                        ; $44f4: $48
	ret  z                                           ; $44f5: $c8

	xor  b                                           ; $44f6: $a8
	xor  b                                           ; $44f7: $a8
	inc  [hl]                                        ; $44f8: $34
	inc  h                                           ; $44f9: $24
	inc  d                                           ; $44fa: $14
	inc  d                                           ; $44fb: $14
	ld   d, $12                                      ; $44fc: $16 $12
	ld   [de], a                                     ; $44fe: $12
	ld   [de], a                                     ; $44ff: $12
	rrca                                             ; $4500: $0f
	db   $10                                         ; $4501: $10
	rrca                                             ; $4502: $0f
	db   $10                                         ; $4503: $10
	rrca                                             ; $4504: $0f
	db   $10                                         ; $4505: $10
	inc  c                                           ; $4506: $0c
	inc  de                                          ; $4507: $13
	nop                                              ; $4508: $00
	rrca                                             ; $4509: $0f
	inc  bc                                          ; $450a: $03
	ld   [bc], a                                     ; $450b: $02
	inc  bc                                          ; $450c: $03
	inc  bc                                          ; $450d: $03
	nop                                              ; $450e: $00
	nop                                              ; $450f: $00
	nop                                              ; $4510: $00
	nop                                              ; $4511: $00
	nop                                              ; $4512: $00
	nop                                              ; $4513: $00
	nop                                              ; $4514: $00
	nop                                              ; $4515: $00
	nop                                              ; $4516: $00
	nop                                              ; $4517: $00
	nop                                              ; $4518: $00
	nop                                              ; $4519: $00
	ld   bc, $0101                                   ; $451a: $01 $01 $01
	ld   bc, $0101                                   ; $451d: $01 $01 $01
	db   $ec                                         ; $4520: $ec
	rra                                              ; $4521: $1f
	rst  ToBoot                                         ; $4522: $c7
	ccf                                              ; $4523: $3f
	or   [hl]                                        ; $4524: $b6
	ld   c, a                                        ; $4525: $4f
	ld   h, a                                        ; $4526: $67
	sbc  c                                           ; $4527: $99
	add  hl, de                                      ; $4528: $19
	jp   hl                                          ; $4529: $e9


	db   $f4                                         ; $452a: $f4
	inc  d                                           ; $452b: $14
	or   $f6                                         ; $452c: $f6 $f6
	add  c                                           ; $452e: $81
	add  c                                           ; $452f: $81
	add  c                                           ; $4530: $81
	add  c                                           ; $4531: $81
	ld   b, d                                        ; $4532: $42
	ld   b, d                                        ; $4533: $42
	rst  $38                                         ; $4534: $ff
	rst  $38                                         ; $4535: $ff
	rst  $38                                         ; $4536: $ff
	rst  $38                                         ; $4537: $ff
	add  e                                           ; $4538: $83
	add  e                                           ; $4539: $83
	rlca                                             ; $453a: $07
	rlca                                             ; $453b: $07
	adc  $ce                                         ; $453c: $ce $ce
	db   $fd                                         ; $453e: $fd
	db   $fd                                         ; $453f: $fd
	ld   a, [$7a0a]                                  ; $4540: $fa $0a $7a
	sbc  d                                           ; $4543: $9a
	ld   [$1afa], a                                  ; $4544: $ea $fa $1a
	ldh  a, [c]                                      ; $4547: $f2
	ld   d, $f4                                      ; $4548: $16 $f4
	and  h                                           ; $454a: $a4
	db   $e4                                         ; $454b: $e4
	ld   l, h                                        ; $454c: $6c
	ld   l, b                                        ; $454d: $68
	bit  1, e                                        ; $454e: $cb $4b
	or   a                                           ; $4550: $b7
	or   h                                           ; $4551: $b4
	ld   l, e                                        ; $4552: $6b
	ld   l, h                                        ; $4553: $6c
	ei                                               ; $4554: $fb
	db   $fc                                         ; $4555: $fc
	db   $fc                                         ; $4556: $fc
	rst  $38                                         ; $4557: $ff
	ccf                                              ; $4558: $3f
	ccf                                              ; $4559: $3f
	sbc  h                                           ; $455a: $9c
	sbc  h                                           ; $455b: $9c
	adc  $ce                                         ; $455c: $ce $ce
	rst  $20                                         ; $455e: $e7
	rst  $20                                         ; $455f: $e7
	sub  d                                           ; $4560: $92
	sub  d                                           ; $4561: $92
	ld   d, d                                        ; $4562: $52
	ld   d, d                                        ; $4563: $52
	ld   [hl], d                                     ; $4564: $72
	ld   [hl-], a                                    ; $4565: $32
	or   d                                           ; $4566: $b2
	or   d                                           ; $4567: $b2
	sbc  $de                                         ; $4568: $de $de
	ret  nc                                          ; $456a: $d0

	sub  b                                           ; $456b: $90
	ret  z                                           ; $456c: $c8

	adc  b                                           ; $456d: $88
	ret  z                                           ; $456e: $c8

	ld   c, b                                        ; $456f: $48
	ld   hl, sp-$48                                  ; $4570: $f8 $b8
	ld   hl, sp+$28                                  ; $4572: $f8 $28
	xor  b                                           ; $4574: $a8
	ld   a, b                                        ; $4575: $78
	ld   d, b                                        ; $4576: $50
	ldh  a, [$e0]                                    ; $4577: $f0 $e0
	ldh  [$80], a                                    ; $4579: $e0 $80
	add  b                                           ; $457b: $80
	add  b                                           ; $457c: $80
	add  b                                           ; $457d: $80
	ret  nz                                          ; $457e: $c0

	ret  nz                                          ; $457f: $c0

	inc  bc                                          ; $4580: $03
	inc  bc                                          ; $4581: $03
	inc  bc                                          ; $4582: $03
	inc  bc                                          ; $4583: $03
	rlca                                             ; $4584: $07
	rlca                                             ; $4585: $07
	rlca                                             ; $4586: $07
	rlca                                             ; $4587: $07
	rrca                                             ; $4588: $0f
	rrca                                             ; $4589: $0f
	rrca                                             ; $458a: $0f
	rrca                                             ; $458b: $0f
	ld   c, $09                                      ; $458c: $0e $09
	rra                                              ; $458e: $1f
	db   $10                                         ; $458f: $10
	rra                                              ; $4590: $1f
	rra                                              ; $4591: $1f
	jr   nc, jr_013_45d3                             ; $4592: $30 $3f

	ld   [hl+], a                                    ; $4594: $22
	dec  a                                           ; $4595: $3d
	inc  l                                           ; $4596: $2c
	ld   sp, $3f3f                                   ; $4597: $31 $3f $3f
	nop                                              ; $459a: $00
	nop                                              ; $459b: $00
	nop                                              ; $459c: $00
	nop                                              ; $459d: $00
	nop                                              ; $459e: $00
	nop                                              ; $459f: $00
	rst  $38                                         ; $45a0: $ff
	rst  $38                                         ; $45a1: $ff
	cp   $fe                                         ; $45a2: $fe $fe
	db   $fc                                         ; $45a4: $fc
	db   $fc                                         ; $45a5: $fc
	db   $fc                                         ; $45a6: $fc
	db   $fc                                         ; $45a7: $fc
	ld   hl, sp-$08                                  ; $45a8: $f8 $f8
	ld   hl, sp-$08                                  ; $45aa: $f8 $f8
	ldh  a, [$f0]                                    ; $45ac: $f0 $f0
	ldh  a, [rAUD1SWEEP]                             ; $45ae: $f0 $10
	ld   h, b                                        ; $45b0: $60
	and  b                                           ; $45b1: $a0
	ldh  [$e0], a                                    ; $45b2: $e0 $e0
	ld   b, b                                        ; $45b4: $40
	ret  nz                                          ; $45b5: $c0

	ld   b, b                                        ; $45b6: $40
	ret  nz                                          ; $45b7: $c0

	add  b                                           ; $45b8: $80
	add  b                                           ; $45b9: $80
	nop                                              ; $45ba: $00
	nop                                              ; $45bb: $00
	nop                                              ; $45bc: $00
	nop                                              ; $45bd: $00
	nop                                              ; $45be: $00
	nop                                              ; $45bf: $00
	rst  $38                                         ; $45c0: $ff
	rst  $38                                         ; $45c1: $ff
	ld   a, a                                        ; $45c2: $7f
	ld   a, a                                        ; $45c3: $7f
	ccf                                              ; $45c4: $3f
	ccf                                              ; $45c5: $3f
	ccf                                              ; $45c6: $3f
	ccf                                              ; $45c7: $3f
	rra                                              ; $45c8: $1f
	rra                                              ; $45c9: $1f
	rra                                              ; $45ca: $1f
	rra                                              ; $45cb: $1f
	rrca                                             ; $45cc: $0f
	rrca                                             ; $45cd: $0f
	rrca                                             ; $45ce: $0f
	ld   [$0506], sp                                 ; $45cf: $08 $06 $05
	rlca                                             ; $45d2: $07

jr_013_45d3:
	rlca                                             ; $45d3: $07
	ld   [bc], a                                     ; $45d4: $02
	inc  bc                                          ; $45d5: $03
	ld   [bc], a                                     ; $45d6: $02
	inc  bc                                          ; $45d7: $03
	ld   bc, $0001                                   ; $45d8: $01 $01 $00
	nop                                              ; $45db: $00
	nop                                              ; $45dc: $00
	nop                                              ; $45dd: $00
	nop                                              ; $45de: $00
	nop                                              ; $45df: $00
	ret  nz                                          ; $45e0: $c0

	ret  nz                                          ; $45e1: $c0

	ret  nz                                          ; $45e2: $c0

	ret  nz                                          ; $45e3: $c0

	ldh  [$e0], a                                    ; $45e4: $e0 $e0
	ldh  [$e0], a                                    ; $45e6: $e0 $e0
	ldh  a, [$f0]                                    ; $45e8: $f0 $f0
	ldh  a, [$f0]                                    ; $45ea: $f0 $f0
	ld   [hl], b                                     ; $45ec: $70
	sub  b                                           ; $45ed: $90
	ld   hl, sp+$08                                  ; $45ee: $f8 $08
	ld   hl, sp-$08                                  ; $45f0: $f8 $f8
	inc  c                                           ; $45f2: $0c
	db   $fc                                         ; $45f3: $fc
	inc  d                                           ; $45f4: $14
	db   $ec                                         ; $45f5: $ec
	ld   h, h                                        ; $45f6: $64
	adc  h                                           ; $45f7: $8c
	db   $fc                                         ; $45f8: $fc
	db   $fc                                         ; $45f9: $fc
	nop                                              ; $45fa: $00
	nop                                              ; $45fb: $00
	nop                                              ; $45fc: $00
	nop                                              ; $45fd: $00
	nop                                              ; $45fe: $00
	nop                                              ; $45ff: $00
	nop                                              ; $4600: $00
	nop                                              ; $4601: $00
	nop                                              ; $4602: $00
	nop                                              ; $4603: $00
	nop                                              ; $4604: $00
	nop                                              ; $4605: $00
	nop                                              ; $4606: $00
	nop                                              ; $4607: $00
	nop                                              ; $4608: $00
	nop                                              ; $4609: $00
	nop                                              ; $460a: $00
	nop                                              ; $460b: $00
	nop                                              ; $460c: $00
	nop                                              ; $460d: $00
	nop                                              ; $460e: $00
	nop                                              ; $460f: $00
	inc  bc                                          ; $4610: $03
	inc  bc                                          ; $4611: $03
	db   $fc                                         ; $4612: $fc
	db   $fc                                         ; $4613: $fc
	ld   b, b                                        ; $4614: $40
	ld   a, b                                        ; $4615: $78
	ld   sp, $0e3f                                   ; $4616: $31 $3f $0e
	ld   c, $04                                      ; $4619: $0e $04
	inc  b                                           ; $461b: $04
	ld   [$110f], sp                                 ; $461c: $08 $0f $11
	rra                                              ; $461f: $1f
	nop                                              ; $4620: $00
	nop                                              ; $4621: $00
	nop                                              ; $4622: $00
	nop                                              ; $4623: $00
	nop                                              ; $4624: $00
	nop                                              ; $4625: $00
	nop                                              ; $4626: $00
	nop                                              ; $4627: $00
	ld   bc, $1e01                                   ; $4628: $01 $01 $1e
	rra                                              ; $462b: $1f

jr_013_462c:
	ld   h, h                                        ; $462c: $64
	ld   a, a                                        ; $462d: $7f
	adc  b                                           ; $462e: $88
	rst  $38                                         ; $462f: $ff
	nop                                              ; $4630: $00
	ld   a, a                                        ; $4631: $7f
	nop                                              ; $4632: $00
	rst  $38                                         ; $4633: $ff
	ld   h, b                                        ; $4634: $60
	ld   a, a                                        ; $4635: $7f
	add  c                                           ; $4636: $81
	rst  $38                                         ; $4637: $ff
	ld   b, e                                        ; $4638: $43
	ld   a, a                                        ; $4639: $7f
	add  a                                           ; $463a: $87
	or   a                                           ; $463b: $b7
	adc  h                                           ; $463c: $8c
	xor  b                                           ; $463d: $a8
	ld   [$0048], sp                                 ; $463e: $08 $48 $00
	nop                                              ; $4641: $00
	nop                                              ; $4642: $00
	nop                                              ; $4643: $00
	nop                                              ; $4644: $00
	nop                                              ; $4645: $00
	nop                                              ; $4646: $00
	nop                                              ; $4647: $00
	ret  nz                                          ; $4648: $c0

	ret  nz                                          ; $4649: $c0

	jr   nz, jr_013_462c                             ; $464a: $20 $e0

	db   $10                                         ; $464c: $10
	ldh  a, [rAUD1SWEEP]                             ; $464d: $f0 $10
	ldh  a, [rAUD3HIGH]                              ; $464f: $f0 $1e
	cp   $11                                         ; $4651: $fe $11
	rst  $38                                         ; $4653: $ff
	db   $10                                         ; $4654: $10
	rst  $38                                         ; $4655: $ff
	sbc  b                                           ; $4656: $98
	rst  $38                                         ; $4657: $ff
	inc  h                                           ; $4658: $24
	rst  $38                                         ; $4659: $ff
	ldh  a, [c]                                      ; $465a: $f2
	cp   $12                                         ; $465b: $fe $12
	ld   e, $19                                      ; $465d: $1e $19
	dec  bc                                          ; $465f: $0b
	nop                                              ; $4660: $00
	nop                                              ; $4661: $00
	nop                                              ; $4662: $00
	nop                                              ; $4663: $00
	nop                                              ; $4664: $00
	nop                                              ; $4665: $00
	nop                                              ; $4666: $00
	nop                                              ; $4667: $00
	nop                                              ; $4668: $00
	nop                                              ; $4669: $00
	nop                                              ; $466a: $00
	nop                                              ; $466b: $00
	nop                                              ; $466c: $00
	nop                                              ; $466d: $00
	nop                                              ; $466e: $00
	nop                                              ; $466f: $00
	nop                                              ; $4670: $00
	nop                                              ; $4671: $00
	add  b                                           ; $4672: $80
	add  b                                           ; $4673: $80
	ld   b, b                                        ; $4674: $40
	ret  nz                                          ; $4675: $c0

	jr   nz, jr_013_4698                             ; $4676: $20 $20

	sub  b                                           ; $4678: $90
	sub  b                                           ; $4679: $90
	ld   c, b                                        ; $467a: $48
	ld   hl, sp+$3c                                  ; $467b: $f8 $3c
	ld   a, h                                        ; $467d: $7c
	jr   nz, jr_013_46a0                             ; $467e: $20 $20

	ld   de, $221f                                   ; $4680: $11 $1f $22
	ccf                                              ; $4683: $3f
	ld   [hl+], a                                    ; $4684: $22
	ccf                                              ; $4685: $3f
	ld   b, d                                        ; $4686: $42
	ld   a, a                                        ; $4687: $7f
	ld   c, h                                        ; $4688: $4c
	ld   a, a                                        ; $4689: $7f
	db   $f4                                         ; $468a: $f4
	rst  $30                                         ; $468b: $f7
	inc  b                                           ; $468c: $04
	rlca                                             ; $468d: $07
	inc  b                                           ; $468e: $04
	rlca                                             ; $468f: $07
	dec  b                                           ; $4690: $05
	rlca                                             ; $4691: $07
	ld   b, $07                                      ; $4692: $06 $07
	ld   b, $07                                      ; $4694: $06 $07
	rrca                                             ; $4696: $0f
	dec  c                                           ; $4697: $0d

jr_013_4698:
	ld   c, $0a                                      ; $4698: $0e $0a
	ld   a, [bc]                                     ; $469a: $0a
	ld   a, [bc]                                     ; $469b: $0a
	inc  e                                           ; $469c: $1c
	inc  d                                           ; $469d: $14
	dec  d                                           ; $469e: $15
	dec  d                                           ; $469f: $15

jr_013_46a0:
	db   $10                                         ; $46a0: $10
	db   $10                                         ; $46a1: $10
	rra                                              ; $46a2: $1f
	ccf                                              ; $46a3: $3f
	scf                                              ; $46a4: $37
	ld   a, b                                        ; $46a5: $78
	ccf                                              ; $46a6: $3f
	db   $ec                                         ; $46a7: $ec
	ld   a, a                                        ; $46a8: $7f
	cp   $5f                                         ; $46a9: $fe $5f
	call c, $b893                                    ; $46ab: $dc $93 $b8
	rst  $20                                         ; $46ae: $e7
	add  b                                           ; $46af: $80
	cp   $81                                         ; $46b0: $fe $81
	rst  $38                                         ; $46b2: $ff
	add  b                                           ; $46b3: $80
	cp   a                                           ; $46b4: $bf
	jp   $c27e                                       ; $46b5: $c3 $7e $c2


	xor  l                                           ; $46b8: $ad
	di                                               ; $46b9: $f3
	sbc  e                                           ; $46ba: $9b
	call c, Call_013_6f7f                            ; $46bb: $dc $7f $6f
	add  sp, -$11                                    ; $46be: $e8 $ef
	add  hl, bc                                      ; $46c0: $09
	add  hl, bc                                      ; $46c1: $09
	ld   hl, sp-$03                                  ; $46c2: $f8 $fd
	db   $ec                                         ; $46c4: $ec
	rra                                              ; $46c5: $1f
	db   $fc                                         ; $46c6: $fc
	scf                                              ; $46c7: $37
	db   $fc                                         ; $46c8: $fc
	ld   a, a                                        ; $46c9: $7f
	xor  $2f                                         ; $46ca: $ee $2f
	jp   z, $e61f                                    ; $46cc: $ca $1f $e6

	inc  bc                                          ; $46cf: $03
	ld   a, a                                        ; $46d0: $7f
	add  c                                           ; $46d1: $81
	rst  $38                                         ; $46d2: $ff
	ld   bc, $c3fd                                   ; $46d3: $01 $fd $c3
	ld   a, [hl]                                     ; $46d6: $7e
	ld   b, e                                        ; $46d7: $43
	or   l                                           ; $46d8: $b5
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $46d9: $cf
	reti                                             ; $46da: $d9


	dec  sp                                          ; $46db: $3b
	cp   $f6                                         ; $46dc: $fe $f6
	rla                                              ; $46de: $17
	rst  $30                                         ; $46df: $f7
	db   $10                                         ; $46e0: $10
	ldh  a, [$90]                                    ; $46e1: $f0 $90
	ldh  a, [$88]                                    ; $46e3: $f0 $88
	ld   hl, sp-$78                                  ; $46e5: $f8 $88
	ld   hl, sp-$38                                  ; $46e7: $f8 $c8
	ld   hl, sp-$5c                                  ; $46e9: $f8 $a4
	db   $fc                                         ; $46eb: $fc
	sbc  [hl]                                        ; $46ec: $9e
	cp   $a0                                         ; $46ed: $fe $a0
	ldh  [hScriptOpcodeParams], a                                    ; $46ef: $e0 $a0
	ldh  [rLCDC], a                                  ; $46f1: $e0 $40
	ret  nz                                          ; $46f3: $c0

	ld   b, b                                        ; $46f4: $40
	ret  nz                                          ; $46f5: $c0

	add  b                                           ; $46f6: $80
	add  b                                           ; $46f7: $80
	nop                                              ; $46f8: $00
	nop                                              ; $46f9: $00
	nop                                              ; $46fa: $00
	nop                                              ; $46fb: $00
	nop                                              ; $46fc: $00
	nop                                              ; $46fd: $00
	nop                                              ; $46fe: $00
	nop                                              ; $46ff: $00
	rla                                              ; $4700: $17
	inc  de                                          ; $4701: $13
	ld   d, $12                                      ; $4702: $16 $12
	dec  d                                           ; $4704: $15
	dec  d                                           ; $4705: $15
	rrca                                             ; $4706: $0f
	rrca                                             ; $4707: $0f
	dec  bc                                          ; $4708: $0b
	add  hl, bc                                      ; $4709: $09
	dec  bc                                          ; $470a: $0b
	add  hl, bc                                      ; $470b: $09
	inc  de                                          ; $470c: $13
	inc  de                                          ; $470d: $13
	rla                                              ; $470e: $17
	ld   d, $1f                                      ; $470f: $16 $1f
	dec  e                                           ; $4711: $1d
	rra                                              ; $4712: $1f
	inc  d                                           ; $4713: $14
	dec  d                                           ; $4714: $15
	ld   e, $0a                                      ; $4715: $1e $0a
	rrca                                             ; $4717: $0f
	rlca                                             ; $4718: $07
	rlca                                             ; $4719: $07
	ld   bc, $0101                                   ; $471a: $01 $01 $01
	ld   bc, $0303                                   ; $471d: $01 $03 $03
	dec  hl                                          ; $4720: $2b
	inc  l                                           ; $4721: $2c
	dec  l                                           ; $4722: $2d
	ld   l, $2b                                      ; $4723: $2e $2b
	cpl                                              ; $4725: $2f
	inc  l                                           ; $4726: $2c
	daa                                              ; $4727: $27
	inc  d                                           ; $4728: $14
	scf                                              ; $4729: $37
	ld   [de], a                                     ; $472a: $12
	inc  de                                          ; $472b: $13
	adc  c                                           ; $472c: $89
	adc  c                                           ; $472d: $89
	rst  $20                                         ; $472e: $e7
	and  $d7                                         ; $472f: $e6 $d7
	inc  [hl]                                        ; $4731: $34
	rst  $28                                         ; $4732: $ef
	inc  e                                           ; $4733: $1c
	rst  $28                                         ; $4734: $ef
	inc  e                                           ; $4735: $1c

jr_013_4736:
	rra                                              ; $4736: $1f
	db   $fc                                         ; $4737: $fc
	xor  $ef                                         ; $4738: $ee $ef
	dec  e                                           ; $473a: $1d
	dec  e                                           ; $473b: $1d
	cp   c                                           ; $473c: $b9
	cp   c                                           ; $473d: $b9
	di                                               ; $473e: $f3
	di                                               ; $473f: $f3
	call nc, $b434                                   ; $4740: $d4 $34 $b4
	ld   [hl], h                                     ; $4743: $74
	call nc, $34f4                                   ; $4744: $d4 $f4 $34
	db   $e4                                         ; $4747: $e4
	jr   z, jr_013_4736                              ; $4748: $28 $ec

	ld   c, e                                        ; $474a: $4b
	set  7, h                                        ; $474b: $cb $fc
	db   $fc                                         ; $474d: $fc
	cp   $02                                         ; $474e: $fe $02
	or   $0b                                         ; $4750: $f6 $0b
	jp   hl                                          ; $4752: $e9


	rra                                              ; $4753: $1f
	rrca                                             ; $4754: $0f
	rst  $38                                         ; $4755: $ff
	rst  $38                                         ; $4756: $ff
	ld   a, a                                        ; $4757: $7f
	ccf                                              ; $4758: $3f
	pop  hl                                          ; $4759: $e1
	di                                               ; $475a: $f3
	pop  af                                          ; $475b: $f1
	cp   e                                           ; $475c: $bb
	cp   e                                           ; $475d: $bb
	rst  JumpTable                                         ; $475e: $df
	rst  JumpTable                                         ; $475f: $df
	ld   b, b                                        ; $4760: $40
	ret  nz                                          ; $4761: $c0

	jr   nz, jr_013_4784                             ; $4762: $20 $20

	sub  b                                           ; $4764: $90
	or   b                                           ; $4765: $b0
	sub  b                                           ; $4766: $90
	sub  b                                           ; $4767: $90
	adc  b                                           ; $4768: $88
	adc  b                                           ; $4769: $88
	ret  z                                           ; $476a: $c8

jr_013_476b:
	ret  z                                           ; $476b: $c8

	inc  h                                           ; $476c: $24
	inc  h                                           ; $476d: $24
	inc  b                                           ; $476e: $04
	inc  b                                           ; $476f: $04
	inc  b                                           ; $4770: $04
	inc  b                                           ; $4771: $04
	inc  b                                           ; $4772: $04
	inc  b                                           ; $4773: $04
	inc  b                                           ; $4774: $04
	inc  b                                           ; $4775: $04
	ld   [$e808], sp                                 ; $4776: $08 $08 $e8
	jr   jr_013_476b                                 ; $4779: $18 $f0

	ldh  a, [$80]                                    ; $477b: $f0 $80
	add  b                                           ; $477d: $80
	ret  nz                                          ; $477e: $c0

	ret  nz                                          ; $477f: $c0

	inc  bc                                          ; $4780: $03
	inc  bc                                          ; $4781: $03
	inc  bc                                          ; $4782: $03
	inc  bc                                          ; $4783: $03

jr_013_4784:
	rlca                                             ; $4784: $07
	rlca                                             ; $4785: $07
	rlca                                             ; $4786: $07
	rlca                                             ; $4787: $07
	rrca                                             ; $4788: $0f
	rrca                                             ; $4789: $0f
	rrca                                             ; $478a: $0f
	rrca                                             ; $478b: $0f
	ld   c, $09                                      ; $478c: $0e $09
	rra                                              ; $478e: $1f
	db   $10                                         ; $478f: $10
	rra                                              ; $4790: $1f
	rra                                              ; $4791: $1f
	jr   nc, jr_013_47d3                             ; $4792: $30 $3f

	ld   [hl+], a                                    ; $4794: $22
	dec  a                                           ; $4795: $3d
	inc  l                                           ; $4796: $2c
	ld   sp, $3f3f                                   ; $4797: $31 $3f $3f
	nop                                              ; $479a: $00
	nop                                              ; $479b: $00
	nop                                              ; $479c: $00
	nop                                              ; $479d: $00
	nop                                              ; $479e: $00
	nop                                              ; $479f: $00
	rst  $38                                         ; $47a0: $ff
	rst  $38                                         ; $47a1: $ff
	cp   $fe                                         ; $47a2: $fe $fe
	db   $fc                                         ; $47a4: $fc
	db   $fc                                         ; $47a5: $fc
	db   $fc                                         ; $47a6: $fc
	db   $fc                                         ; $47a7: $fc
	ld   hl, sp-$08                                  ; $47a8: $f8 $f8
	ld   hl, sp-$08                                  ; $47aa: $f8 $f8
	ldh  a, [$f0]                                    ; $47ac: $f0 $f0
	ldh  a, [rAUD1SWEEP]                             ; $47ae: $f0 $10
	ld   h, b                                        ; $47b0: $60
	and  b                                           ; $47b1: $a0
	ldh  [$e0], a                                    ; $47b2: $e0 $e0
	ld   b, b                                        ; $47b4: $40
	ret  nz                                          ; $47b5: $c0

	ld   b, b                                        ; $47b6: $40
	ret  nz                                          ; $47b7: $c0

	add  b                                           ; $47b8: $80
	add  b                                           ; $47b9: $80
	nop                                              ; $47ba: $00
	nop                                              ; $47bb: $00
	nop                                              ; $47bc: $00
	nop                                              ; $47bd: $00
	nop                                              ; $47be: $00
	nop                                              ; $47bf: $00
	rst  $38                                         ; $47c0: $ff
	rst  $38                                         ; $47c1: $ff
	ld   a, a                                        ; $47c2: $7f
	ld   a, a                                        ; $47c3: $7f
	ccf                                              ; $47c4: $3f
	ccf                                              ; $47c5: $3f
	ccf                                              ; $47c6: $3f
	ccf                                              ; $47c7: $3f
	rra                                              ; $47c8: $1f
	rra                                              ; $47c9: $1f
	rra                                              ; $47ca: $1f
	rra                                              ; $47cb: $1f
	rrca                                             ; $47cc: $0f
	rrca                                             ; $47cd: $0f
	rrca                                             ; $47ce: $0f
	ld   [$0506], sp                                 ; $47cf: $08 $06 $05
	rlca                                             ; $47d2: $07

jr_013_47d3:
	rlca                                             ; $47d3: $07
	ld   [bc], a                                     ; $47d4: $02
	inc  bc                                          ; $47d5: $03
	ld   [bc], a                                     ; $47d6: $02
	inc  bc                                          ; $47d7: $03
	ld   bc, $0001                                   ; $47d8: $01 $01 $00
	nop                                              ; $47db: $00
	nop                                              ; $47dc: $00
	nop                                              ; $47dd: $00
	nop                                              ; $47de: $00
	nop                                              ; $47df: $00
	ret  nz                                          ; $47e0: $c0

	ret  nz                                          ; $47e1: $c0

	ret  nz                                          ; $47e2: $c0

	ret  nz                                          ; $47e3: $c0

	ldh  [$e0], a                                    ; $47e4: $e0 $e0
	ldh  [$e0], a                                    ; $47e6: $e0 $e0
	ldh  a, [$f0]                                    ; $47e8: $f0 $f0
	ldh  a, [$f0]                                    ; $47ea: $f0 $f0
	ld   [hl], b                                     ; $47ec: $70
	sub  b                                           ; $47ed: $90
	ld   hl, sp+$08                                  ; $47ee: $f8 $08
	ld   hl, sp-$08                                  ; $47f0: $f8 $f8
	inc  c                                           ; $47f2: $0c
	db   $fc                                         ; $47f3: $fc
	inc  d                                           ; $47f4: $14
	db   $ec                                         ; $47f5: $ec
	ld   h, h                                        ; $47f6: $64
	adc  h                                           ; $47f7: $8c
	db   $fc                                         ; $47f8: $fc
	db   $fc                                         ; $47f9: $fc
	nop                                              ; $47fa: $00
	nop                                              ; $47fb: $00
	nop                                              ; $47fc: $00
	nop                                              ; $47fd: $00
	nop                                              ; $47fe: $00
	nop                                              ; $47ff: $00
	nop                                              ; $4800: $00
	nop                                              ; $4801: $00
	nop                                              ; $4802: $00
	nop                                              ; $4803: $00
	nop                                              ; $4804: $00
	nop                                              ; $4805: $00
	nop                                              ; $4806: $00
	nop                                              ; $4807: $00
	nop                                              ; $4808: $00
	nop                                              ; $4809: $00
	nop                                              ; $480a: $00
	nop                                              ; $480b: $00
	nop                                              ; $480c: $00
	nop                                              ; $480d: $00
	ld   bc, $0601                                   ; $480e: $01 $01 $06
	ld   b, $18                                      ; $4811: $06 $18
	add  hl, de                                      ; $4813: $19
	jr   nz, jr_013_4846                             ; $4814: $20 $30

	inc  hl                                          ; $4816: $23
	ccf                                              ; $4817: $3f
	ld   a, h                                        ; $4818: $7c
	ld   a, h                                        ; $4819: $7c
	ld   c, c                                        ; $481a: $49
	ld   c, c                                        ; $481b: $49
	ld   de, $221f                                   ; $481c: $11 $1f $22
	ld   a, $00                                      ; $481f: $3e $00
	nop                                              ; $4821: $00
	nop                                              ; $4822: $00
	nop                                              ; $4823: $00
	nop                                              ; $4824: $00
	nop                                              ; $4825: $00
	nop                                              ; $4826: $00
	nop                                              ; $4827: $00
	inc  bc                                          ; $4828: $03
	inc  bc                                          ; $4829: $03
	inc  a                                           ; $482a: $3c
	ccf                                              ; $482b: $3f
	ret  z                                           ; $482c: $c8

	rst  $38                                         ; $482d: $ff

jr_013_482e:
	db   $10                                         ; $482e: $10
	rst  $38                                         ; $482f: $ff

jr_013_4830:
	nop                                              ; $4830: $00
	rst  $38                                         ; $4831: $ff
	nop                                              ; $4832: $00
	rst  $38                                         ; $4833: $ff
	ret  nz                                          ; $4834: $c0

	rst  $38                                         ; $4835: $ff
	inc  bc                                          ; $4836: $03
	rst  $38                                         ; $4837: $ff
	add  [hl]                                        ; $4838: $86
	rst  $38                                         ; $4839: $ff
	rrca                                             ; $483a: $0f
	ld   l, a                                        ; $483b: $6f
	jr   jr_013_488e                                 ; $483c: $18 $50

	db   $10                                         ; $483e: $10
	sub  b                                           ; $483f: $90
	nop                                              ; $4840: $00
	nop                                              ; $4841: $00
	nop                                              ; $4842: $00
	nop                                              ; $4843: $00
	nop                                              ; $4844: $00
	nop                                              ; $4845: $00

jr_013_4846:
	nop                                              ; $4846: $00
	nop                                              ; $4847: $00
	add  b                                           ; $4848: $80
	add  b                                           ; $4849: $80
	ld   b, b                                        ; $484a: $40
	ret  nz                                          ; $484b: $c0

	jr   nz, jr_013_482e                             ; $484c: $20 $e0

	jr   nz, jr_013_4830                             ; $484e: $20 $e0

	inc  a                                           ; $4850: $3c
	db   $fc                                         ; $4851: $fc
	inc  hl                                          ; $4852: $23
	rst  $38                                         ; $4853: $ff
	jr   nz, @+$01                                   ; $4854: $20 $ff

jr_013_4856:
	jr   nc, jr_013_4856                             ; $4856: $30 $fe

	ld   c, c                                        ; $4858: $49
	rst  $38                                         ; $4859: $ff
	db   $e4                                         ; $485a: $e4
	db   $fd                                         ; $485b: $fd
	inc  h                                           ; $485c: $24
	inc  a                                           ; $485d: $3c
	ld   [hl-], a                                    ; $485e: $32
	ld   d, $00                                      ; $485f: $16 $00
	nop                                              ; $4861: $00
	nop                                              ; $4862: $00
	nop                                              ; $4863: $00
	nop                                              ; $4864: $00
	nop                                              ; $4865: $00
	nop                                              ; $4866: $00
	nop                                              ; $4867: $00
	nop                                              ; $4868: $00
	nop                                              ; $4869: $00
	nop                                              ; $486a: $00
	nop                                              ; $486b: $00
	nop                                              ; $486c: $00
	nop                                              ; $486d: $00
	nop                                              ; $486e: $00
	nop                                              ; $486f: $00
	nop                                              ; $4870: $00
	nop                                              ; $4871: $00
	nop                                              ; $4872: $00
	nop                                              ; $4873: $00
	add  b                                           ; $4874: $80
	add  b                                           ; $4875: $80
	ld   b, b                                        ; $4876: $40
	ld   b, b                                        ; $4877: $40
	jr   nz, jr_013_489a                             ; $4878: $20 $20

	sub  b                                           ; $487a: $90
	ldh  a, [$78]                                    ; $487b: $f0 $78
	ld   hl, sp+$40                                  ; $487d: $f8 $40
	ld   b, b                                        ; $487f: $40
	ld   [hl+], a                                    ; $4880: $22
	ld   a, $24                                      ; $4881: $3e $24
	ld   a, $44                                      ; $4883: $3e $44
	ld   a, [hl]                                     ; $4885: $7e
	ld   b, h                                        ; $4886: $44
	ld   a, a                                        ; $4887: $7f
	ld   e, b                                        ; $4888: $58
	ld   a, a                                        ; $4889: $7f
	ld   l, b                                        ; $488a: $68
	ld   l, a                                        ; $488b: $6f
	ld   l, c                                        ; $488c: $69
	ld   l, a                                        ; $488d: $6f

jr_013_488e:
	ld   c, c                                        ; $488e: $49
	ld   c, a                                        ; $488f: $4f
	ld   c, e                                        ; $4890: $4b
	ld   c, a                                        ; $4891: $4f
	dec  d                                           ; $4892: $15
	rla                                              ; $4893: $17
	dec  h                                           ; $4894: $25
	daa                                              ; $4895: $27
	ld   a, [hl+]                                    ; $4896: $2a
	dec  hl                                          ; $4897: $2b
	ld   e, c                                        ; $4898: $59
	ld   c, c                                        ; $4899: $49

jr_013_489a:
	ld   d, c                                        ; $489a: $51
	ld   d, c                                        ; $489b: $51
	ret  nc                                          ; $489c: $d0

	sub  b                                           ; $489d: $90
	sub  c                                           ; $489e: $91
	sub  c                                           ; $489f: $91
	jr   nz, jr_013_48c2                             ; $48a0: $20 $20

	ccf                                              ; $48a2: $3f
	ld   a, a                                        ; $48a3: $7f
	ld   l, a                                        ; $48a4: $6f
	ldh  a, [$7f]                                    ; $48a5: $f0 $7f
	ret  c                                           ; $48a7: $d8

	rst  $38                                         ; $48a8: $ff
	db   $fc                                         ; $48a9: $fc
	rst  $20                                         ; $48aa: $e7
	add  sp, $27                                     ; $48ab: $e8 $27
	ld   [hl], b                                     ; $48ad: $70
	adc  a                                           ; $48ae: $8f
	nop                                              ; $48af: $00
	rst  $38                                         ; $48b0: $ff
	nop                                              ; $48b1: $00
	rst  $38                                         ; $48b2: $ff
	nop                                              ; $48b3: $00
	ld   a, a                                        ; $48b4: $7f
	add  e                                           ; $48b5: $83
	db   $fc                                         ; $48b6: $fc
	add  h                                           ; $48b7: $84
	ld   e, e                                        ; $48b8: $5b
	rst  $20                                         ; $48b9: $e7
	scf                                              ; $48ba: $37
	cp   b                                           ; $48bb: $b8
	rst  $38                                         ; $48bc: $ff
	rst  $38                                         ; $48bd: $ff
	ldh  [$bf], a                                    ; $48be: $e0 $bf
	ld   [de], a                                     ; $48c0: $12
	inc  de                                          ; $48c1: $13

jr_013_48c2:
	pop  af                                          ; $48c2: $f1
	ei                                               ; $48c3: $fb

jr_013_48c4:
	reti                                             ; $48c4: $d9


	ccf                                              ; $48c5: $3f
	ld   sp, hl                                      ; $48c6: $f9
	ld   l, a                                        ; $48c7: $6f

jr_013_48c8:
	ld   hl, sp-$01                                  ; $48c8: $f8 $ff
	push hl                                          ; $48ca: $e5
	ld   h, a                                        ; $48cb: $67
	and  l                                           ; $48cc: $a5
	scf                                              ; $48cd: $37
	call $7f07                                       ; $48ce: $cd $07 $7f
	add  e                                           ; $48d1: $83
	cp   $02                                         ; $48d2: $fe $02
	ei                                               ; $48d4: $fb
	add  a                                           ; $48d5: $87
	db   $fd                                         ; $48d6: $fd
	add  [hl]                                        ; $48d7: $86
	ld   [$b31e], a                                  ; $48d8: $ea $1e $b3
	ld   a, a                                        ; $48db: $7f
	db   $fc                                         ; $48dc: $fc
	db   $ec                                         ; $48dd: $ec
	jr   z, jr_013_48c8                              ; $48de: $28 $e8

	jr   nz, jr_013_48c2                             ; $48e0: $20 $e0

	jr   nz, jr_013_48c4                             ; $48e2: $20 $e0

	db   $10                                         ; $48e4: $10
	ldh  a, [$78]                                    ; $48e5: $f0 $78
	ld   hl, sp-$4c                                  ; $48e7: $f8 $b4
	call z, $847c                                    ; $48e9: $cc $7c $84
	ld   a, [$de06]                                  ; $48ec: $fa $06 $de
	ld   h, d                                        ; $48ef: $62
	ld   a, [hl]                                     ; $48f0: $7e
	jp   nz, $c2fe                                   ; $48f1: $c2 $fe $c2

	ld   e, [hl]                                     ; $48f4: $5e
	ld   h, d                                        ; $48f5: $62
	or   $fa                                         ; $48f6: $f6 $fa
	ld   a, $22                                      ; $48f8: $3e $22
	cp   $e2                                         ; $48fa: $fe $e2
	cp   $62                                         ; $48fc: $fe $62
	sbc  $62                                         ; $48fe: $de $62
	sub  e                                           ; $4900: $93
	sub  d                                           ; $4901: $92
	sub  h                                           ; $4902: $94
	sub  h                                           ; $4903: $94
	sbc  h                                           ; $4904: $9c
	sbc  b                                           ; $4905: $98
	sub  h                                           ; $4906: $94
	sub  h                                           ; $4907: $94
	and  $e2                                         ; $4908: $e6 $e2
	ld   h, $22                                      ; $490a: $26 $22
	daa                                              ; $490c: $27
	daa                                              ; $490d: $27
	cpl                                              ; $490e: $2f
	inc  l                                           ; $490f: $2c
	rra                                              ; $4910: $1f
	dec  e                                           ; $4911: $1d
	rra                                              ; $4912: $1f
	inc  d                                           ; $4913: $14
	dec  d                                           ; $4914: $15
	ld   e, $0a                                      ; $4915: $1e $0a
	rrca                                             ; $4917: $0f
	rlca                                             ; $4918: $07
	rlca                                             ; $4919: $07
	ld   bc, $0101                                   ; $491a: $01 $01 $01
	ld   bc, $0303                                   ; $491d: $01 $03 $03
	rst  $28                                         ; $4920: $ef
	or   b                                           ; $4921: $b0
	cp   a                                           ; $4922: $bf
	or   b                                           ; $4923: $b0
	xor  a                                           ; $4924: $af
	cp   a                                           ; $4925: $bf
	and  b                                           ; $4926: $a0
	cp   a                                           ; $4927: $bf
	ld   [hl], b                                     ; $4928: $70
	ld   e, a                                        ; $4929: $5f
	ld   d, c                                        ; $492a: $51
	ld   e, a                                        ; $492b: $5f
	jp   z, $e6ce                                    ; $492c: $ca $ce $e6

	db   $e4                                         ; $492f: $e4
	reti                                             ; $4930: $d9


	jr   c, @-$15                                    ; $4931: $38 $e9

	dec  de                                          ; $4933: $1b
	rst  $28                                         ; $4934: $ef
	rra                                              ; $4935: $1f
	rra                                              ; $4936: $1f
	rst  $38                                         ; $4937: $ff
	xor  $ee                                         ; $4938: $ee $ee
	inc  e                                           ; $493a: $1c
	inc  e                                           ; $493b: $1c
	cp   e                                           ; $493c: $bb
	cp   e                                           ; $493d: $bb
	rst  $30                                         ; $493e: $f7
	rst  $30                                         ; $493f: $f7
	xor  b                                           ; $4940: $a8
	ld   l, b                                        ; $4941: $68
	add  sp, -$38                                    ; $4942: $e8 $c8
	ld   d, d                                        ; $4944: $52
	jp   nc, $9292                                   ; $4945: $d2 $92 $92

	and  d                                           ; $4948: $a2
	and  d                                           ; $4949: $a2
	ld   b, c                                        ; $494a: $41
	ld   b, c                                        ; $494b: $41
	ld   b, c                                        ; $494c: $41
	pop  bc                                          ; $494d: $c1
	add  c                                           ; $494e: $81
	add  c                                           ; $494f: $81
	add  c                                           ; $4950: $81
	add  c                                           ; $4951: $81
	ld   bc, $ff00                                   ; $4952: $01 $00 $ff
	rst  $38                                         ; $4955: $ff
	rst  $38                                         ; $4956: $ff
	rst  $38                                         ; $4957: $ff
	pop  hl                                          ; $4958: $e1
	pop  hl                                          ; $4959: $e1
	ld   [hl], c                                     ; $495a: $71
	ld   [hl], c                                     ; $495b: $71
	dec  sp                                          ; $495c: $3b
	dec  sp                                          ; $495d: $3b
	sbc  a                                           ; $495e: $9f
	sbc  a                                           ; $495f: $9f
	jp   c, Jump_013_4466                            ; $4960: $da $66 $44

	ld   a, h                                        ; $4963: $7c
	ld   a, b                                        ; $4964: $78
	ld   a, b                                        ; $4965: $78
	ld   c, b                                        ; $4966: $48
	ld   c, b                                        ; $4967: $48
	ld   c, b                                        ; $4968: $48
	ld   c, b                                        ; $4969: $48
	ld   d, b                                        ; $496a: $50
	ld   d, b                                        ; $496b: $50
	ldh  a, [$f0]                                    ; $496c: $f0 $f0
	nop                                              ; $496e: $00
	nop                                              ; $496f: $00
	nop                                              ; $4970: $00
	nop                                              ; $4971: $00
	add  b                                           ; $4972: $80
	add  b                                           ; $4973: $80
	add  b                                           ; $4974: $80
	add  b                                           ; $4975: $80
	nop                                              ; $4976: $00
	nop                                              ; $4977: $00
	nop                                              ; $4978: $00
	nop                                              ; $4979: $00
	nop                                              ; $497a: $00
	nop                                              ; $497b: $00
	nop                                              ; $497c: $00
	nop                                              ; $497d: $00
	add  b                                           ; $497e: $80
	add  b                                           ; $497f: $80
	inc  bc                                          ; $4980: $03
	inc  bc                                          ; $4981: $03
	rlca                                             ; $4982: $07
	rlca                                             ; $4983: $07
	rlca                                             ; $4984: $07
	rlca                                             ; $4985: $07
	rrca                                             ; $4986: $0f
	rrca                                             ; $4987: $0f
	rrca                                             ; $4988: $0f
	rrca                                             ; $4989: $0f
	rra                                              ; $498a: $1f
	rra                                              ; $498b: $1f
	dec  e                                           ; $498c: $1d
	inc  de                                          ; $498d: $13
	ccf                                              ; $498e: $3f
	jr   nz, jr_013_49cf                             ; $498f: $20 $3e

	ccf                                              ; $4991: $3f
	ld   h, c                                        ; $4992: $61
	ld   a, a                                        ; $4993: $7f
	ld   b, h                                        ; $4994: $44
	ld   a, e                                        ; $4995: $7b
	ld   e, b                                        ; $4996: $58
	ld   h, e                                        ; $4997: $63
	ld   a, a                                        ; $4998: $7f
	ld   a, a                                        ; $4999: $7f
	nop                                              ; $499a: $00
	nop                                              ; $499b: $00
	nop                                              ; $499c: $00
	nop                                              ; $499d: $00
	nop                                              ; $499e: $00
	nop                                              ; $499f: $00
	rst  $38                                         ; $49a0: $ff
	rst  $38                                         ; $49a1: $ff
	db   $fc                                         ; $49a2: $fc
	db   $fc                                         ; $49a3: $fc
	ld   hl, sp-$08                                  ; $49a4: $f8 $f8
	ld   hl, sp-$08                                  ; $49a6: $f8 $f8
	ldh  a, [$f0]                                    ; $49a8: $f0 $f0
	ldh  a, [$f0]                                    ; $49aa: $f0 $f0
	ldh  [$e0], a                                    ; $49ac: $e0 $e0
	ldh  [rAUD4LEN], a                               ; $49ae: $e0 $20
	ret  nz                                          ; $49b0: $c0

	ld   b, b                                        ; $49b1: $40
	ret  nz                                          ; $49b2: $c0

	ret  nz                                          ; $49b3: $c0

	add  b                                           ; $49b4: $80
	add  b                                           ; $49b5: $80
	add  b                                           ; $49b6: $80
	add  b                                           ; $49b7: $80
	nop                                              ; $49b8: $00
	nop                                              ; $49b9: $00
	nop                                              ; $49ba: $00
	nop                                              ; $49bb: $00
	nop                                              ; $49bc: $00
	nop                                              ; $49bd: $00
	nop                                              ; $49be: $00
	nop                                              ; $49bf: $00
	rst  $38                                         ; $49c0: $ff
	rst  $38                                         ; $49c1: $ff
	rst  $38                                         ; $49c2: $ff
	rst  $38                                         ; $49c3: $ff
	ld   a, a                                        ; $49c4: $7f
	ld   a, a                                        ; $49c5: $7f
	ld   a, a                                        ; $49c6: $7f
	ld   a, a                                        ; $49c7: $7f
	ccf                                              ; $49c8: $3f
	ccf                                              ; $49c9: $3f
	ccf                                              ; $49ca: $3f
	ccf                                              ; $49cb: $3f
	ld   e, $1f                                      ; $49cc: $1e $1f

jr_013_49ce:
	rra                                              ; $49ce: $1f

jr_013_49cf:
	db   $10                                         ; $49cf: $10
	dec  c                                           ; $49d0: $0d
	dec  bc                                          ; $49d1: $0b
	ld   c, $0f                                      ; $49d2: $0e $0f
	inc  b                                           ; $49d4: $04
	rlca                                             ; $49d5: $07
	inc  b                                           ; $49d6: $04
	rlca                                             ; $49d7: $07
	inc  bc                                          ; $49d8: $03
	inc  bc                                          ; $49d9: $03
	nop                                              ; $49da: $00
	nop                                              ; $49db: $00
	nop                                              ; $49dc: $00
	nop                                              ; $49dd: $00
	nop                                              ; $49de: $00
	nop                                              ; $49df: $00
	add  b                                           ; $49e0: $80
	add  b                                           ; $49e1: $80
	add  b                                           ; $49e2: $80
	add  b                                           ; $49e3: $80
	ret  nz                                          ; $49e4: $c0

	ret  nz                                          ; $49e5: $c0

	ret  nz                                          ; $49e6: $c0

	ret  nz                                          ; $49e7: $c0

	ldh  [$e0], a                                    ; $49e8: $e0 $e0
	ldh  [$e0], a                                    ; $49ea: $e0 $e0

jr_013_49ec:
	ldh  [rAUD4LEN], a                               ; $49ec: $e0 $20
	ldh  a, [rAUD1SWEEP]                             ; $49ee: $f0 $10
	ldh  a, [$f0]                                    ; $49f0: $f0 $f0
	jr   jr_013_49ec                                 ; $49f2: $18 $f8

	jr   z, jr_013_49ce                              ; $49f4: $28 $d8

	ret  z                                           ; $49f6: $c8

	jr   @-$06                                       ; $49f7: $18 $f8

	ld   hl, sp+$00                                  ; $49f9: $f8 $00
	nop                                              ; $49fb: $00
	nop                                              ; $49fc: $00
	nop                                              ; $49fd: $00
	nop                                              ; $49fe: $00
	nop                                              ; $49ff: $00
	nop                                              ; $4a00: $00
	nop                                              ; $4a01: $00
	nop                                              ; $4a02: $00
	nop                                              ; $4a03: $00
	nop                                              ; $4a04: $00
	nop                                              ; $4a05: $00
	nop                                              ; $4a06: $00
	nop                                              ; $4a07: $00
	nop                                              ; $4a08: $00
	nop                                              ; $4a09: $00
	nop                                              ; $4a0a: $00
	nop                                              ; $4a0b: $00
	nop                                              ; $4a0c: $00
	nop                                              ; $4a0d: $00
	nop                                              ; $4a0e: $00
	nop                                              ; $4a0f: $00
	inc  bc                                          ; $4a10: $03
	inc  bc                                          ; $4a11: $03
	db   $fc                                         ; $4a12: $fc
	db   $fc                                         ; $4a13: $fc
	ld   b, b                                        ; $4a14: $40
	ld   a, b                                        ; $4a15: $78
	ld   sp, $0e3f                                   ; $4a16: $31 $3f $0e
	ld   c, $04                                      ; $4a19: $0e $04
	inc  b                                           ; $4a1b: $04
	ld   [$110f], sp                                 ; $4a1c: $08 $0f $11
	rra                                              ; $4a1f: $1f
	nop                                              ; $4a20: $00
	nop                                              ; $4a21: $00
	nop                                              ; $4a22: $00
	nop                                              ; $4a23: $00
	nop                                              ; $4a24: $00
	nop                                              ; $4a25: $00
	nop                                              ; $4a26: $00
	nop                                              ; $4a27: $00
	ld   bc, $1e01                                   ; $4a28: $01 $01 $1e
	rra                                              ; $4a2b: $1f

jr_013_4a2c:
	ld   h, h                                        ; $4a2c: $64
	ld   a, a                                        ; $4a2d: $7f
	adc  b                                           ; $4a2e: $88
	rst  $38                                         ; $4a2f: $ff
	nop                                              ; $4a30: $00
	ld   a, a                                        ; $4a31: $7f
	nop                                              ; $4a32: $00
	rst  $38                                         ; $4a33: $ff
	ld   h, b                                        ; $4a34: $60
	ld   a, a                                        ; $4a35: $7f
	add  c                                           ; $4a36: $81
	rst  $38                                         ; $4a37: $ff
	ld   b, e                                        ; $4a38: $43
	ld   a, a                                        ; $4a39: $7f
	add  a                                           ; $4a3a: $87
	or   a                                           ; $4a3b: $b7
	adc  h                                           ; $4a3c: $8c
	xor  b                                           ; $4a3d: $a8
	ld   [$0048], sp                                 ; $4a3e: $08 $48 $00
	nop                                              ; $4a41: $00
	nop                                              ; $4a42: $00
	nop                                              ; $4a43: $00
	nop                                              ; $4a44: $00
	nop                                              ; $4a45: $00
	nop                                              ; $4a46: $00
	nop                                              ; $4a47: $00
	ret  nz                                          ; $4a48: $c0

	ret  nz                                          ; $4a49: $c0

	jr   nz, jr_013_4a2c                             ; $4a4a: $20 $e0

	db   $10                                         ; $4a4c: $10
	ldh  a, [rAUD1SWEEP]                             ; $4a4d: $f0 $10
	ldh  a, [rAUD3HIGH]                              ; $4a4f: $f0 $1e
	cp   $11                                         ; $4a51: $fe $11
	rst  $38                                         ; $4a53: $ff
	db   $10                                         ; $4a54: $10
	rst  $38                                         ; $4a55: $ff
	sbc  b                                           ; $4a56: $98
	rst  $38                                         ; $4a57: $ff
	inc  h                                           ; $4a58: $24
	rst  $38                                         ; $4a59: $ff
	ldh  a, [c]                                      ; $4a5a: $f2
	cp   $12                                         ; $4a5b: $fe $12
	ld   e, $19                                      ; $4a5d: $1e $19
	dec  bc                                          ; $4a5f: $0b
	nop                                              ; $4a60: $00
	nop                                              ; $4a61: $00
	nop                                              ; $4a62: $00
	nop                                              ; $4a63: $00
	nop                                              ; $4a64: $00
	nop                                              ; $4a65: $00
	nop                                              ; $4a66: $00
	nop                                              ; $4a67: $00
	nop                                              ; $4a68: $00
	nop                                              ; $4a69: $00
	nop                                              ; $4a6a: $00
	nop                                              ; $4a6b: $00
	nop                                              ; $4a6c: $00
	nop                                              ; $4a6d: $00
	nop                                              ; $4a6e: $00
	nop                                              ; $4a6f: $00
	nop                                              ; $4a70: $00
	nop                                              ; $4a71: $00
	add  b                                           ; $4a72: $80
	add  b                                           ; $4a73: $80
	ld   b, b                                        ; $4a74: $40
	ret  nz                                          ; $4a75: $c0

	jr   nz, jr_013_4a98                             ; $4a76: $20 $20

	sub  b                                           ; $4a78: $90
	sub  b                                           ; $4a79: $90
	ld   c, b                                        ; $4a7a: $48
	ld   hl, sp+$3c                                  ; $4a7b: $f8 $3c
	ld   a, h                                        ; $4a7d: $7c
	jr   nz, jr_013_4aa0                             ; $4a7e: $20 $20

	ld   de, $221f                                   ; $4a80: $11 $1f $22
	ccf                                              ; $4a83: $3f
	ld   [hl+], a                                    ; $4a84: $22
	ccf                                              ; $4a85: $3f
	ld   b, d                                        ; $4a86: $42
	ld   a, a                                        ; $4a87: $7f
	ld   c, h                                        ; $4a88: $4c
	ld   a, a                                        ; $4a89: $7f
	db   $f4                                         ; $4a8a: $f4
	rst  $30                                         ; $4a8b: $f7
	inc  b                                           ; $4a8c: $04
	rlca                                             ; $4a8d: $07
	inc  b                                           ; $4a8e: $04
	rlca                                             ; $4a8f: $07
	dec  b                                           ; $4a90: $05
	rlca                                             ; $4a91: $07
	ld   a, [bc]                                     ; $4a92: $0a
	dec  bc                                          ; $4a93: $0b
	ld   [de], a                                     ; $4a94: $12
	inc  de                                          ; $4a95: $13
	dec  d                                           ; $4a96: $15
	dec  d                                           ; $4a97: $15

jr_013_4a98:
	inc  l                                           ; $4a98: $2c
	inc  h                                           ; $4a99: $24
	jr   z, jr_013_4ac4                              ; $4a9a: $28 $28

	ld   l, b                                        ; $4a9c: $68
	ld   c, b                                        ; $4a9d: $48
	ld   c, b                                        ; $4a9e: $48
	ld   c, b                                        ; $4a9f: $48

jr_013_4aa0:
	db   $10                                         ; $4aa0: $10
	db   $10                                         ; $4aa1: $10
	rra                                              ; $4aa2: $1f
	ccf                                              ; $4aa3: $3f
	scf                                              ; $4aa4: $37
	ld   a, b                                        ; $4aa5: $78
	ccf                                              ; $4aa6: $3f
	db   $ec                                         ; $4aa7: $ec
	ld   a, a                                        ; $4aa8: $7f
	cp   $5f                                         ; $4aa9: $fe $5f
	call c, $b893                                    ; $4aab: $dc $93 $b8
	rst  $20                                         ; $4aae: $e7
	add  b                                           ; $4aaf: $80
	cp   $81                                         ; $4ab0: $fe $81
	rst  $38                                         ; $4ab2: $ff
	add  b                                           ; $4ab3: $80
	cp   a                                           ; $4ab4: $bf
	jp   $c27e                                       ; $4ab5: $c3 $7e $c2


	xor  l                                           ; $4ab8: $ad
	di                                               ; $4ab9: $f3
	sbc  e                                           ; $4aba: $9b
	call c, Call_013_6f7f                            ; $4abb: $dc $7f $6f
	add  sp, -$11                                    ; $4abe: $e8 $ef
	add  hl, bc                                      ; $4ac0: $09
	add  hl, bc                                      ; $4ac1: $09
	ld   hl, sp-$03                                  ; $4ac2: $f8 $fd

jr_013_4ac4:
	db   $ec                                         ; $4ac4: $ec
	rra                                              ; $4ac5: $1f
	db   $fc                                         ; $4ac6: $fc
	scf                                              ; $4ac7: $37
	db   $fc                                         ; $4ac8: $fc
	ld   a, a                                        ; $4ac9: $7f
	xor  $2f                                         ; $4aca: $ee $2f
	jp   z, $e61f                                    ; $4acc: $ca $1f $e6

	inc  bc                                          ; $4acf: $03
	ld   a, a                                        ; $4ad0: $7f
	add  c                                           ; $4ad1: $81
	rst  $38                                         ; $4ad2: $ff
	ld   bc, $c3fd                                   ; $4ad3: $01 $fd $c3
	ld   a, [hl]                                     ; $4ad6: $7e
	ld   b, e                                        ; $4ad7: $43
	or   l                                           ; $4ad8: $b5
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4ad9: $cf
	reti                                             ; $4ada: $d9


	dec  sp                                          ; $4adb: $3b
	cp   $f6                                         ; $4adc: $fe $f6
	rla                                              ; $4ade: $17
	rst  $30                                         ; $4adf: $f7
	db   $10                                         ; $4ae0: $10
	ldh  a, [$90]                                    ; $4ae1: $f0 $90
	ldh  a, [$88]                                    ; $4ae3: $f0 $88
	ld   hl, sp-$78                                  ; $4ae5: $f8 $88
	ld   hl, sp-$38                                  ; $4ae7: $f8 $c8
	ld   hl, sp-$5c                                  ; $4ae9: $f8 $a4
	db   $fc                                         ; $4aeb: $fc
	sbc  [hl]                                        ; $4aec: $9e
	cp   $a0                                         ; $4aed: $fe $a0
	ldh  [$bc], a                                    ; $4aef: $e0 $bc
	db   $fc                                         ; $4af1: $fc
	ld   e, d                                        ; $4af2: $5a
	and  $be                                         ; $4af3: $e6 $be
	jp   nz, $83fd                                   ; $4af5: $c2 $fd $83

	rst  $28                                         ; $4af8: $ef
	or   c                                           ; $4af9: $b1
	cp   a                                           ; $4afa: $bf
	pop  hl                                          ; $4afb: $e1
	ld   a, a                                        ; $4afc: $7f
	ld   h, c                                        ; $4afd: $61
	xor  a                                           ; $4afe: $af
	or   c                                           ; $4aff: $b1
	ld   c, c                                        ; $4b00: $49
	ld   c, c                                        ; $4b01: $49
	ld   c, d                                        ; $4b02: $4a
	ld   c, d                                        ; $4b03: $4a
	ld   c, l                                        ; $4b04: $4d
	ld   c, l                                        ; $4b05: $4d
	ld   c, a                                        ; $4b06: $4f
	ld   c, a                                        ; $4b07: $4f
	ld   a, e                                        ; $4b08: $7b
	ld   a, c                                        ; $4b09: $79
	dec  bc                                          ; $4b0a: $0b
	add  hl, bc                                      ; $4b0b: $09
	inc  de                                          ; $4b0c: $13
	inc  de                                          ; $4b0d: $13
	rla                                              ; $4b0e: $17
	ld   d, $1f                                      ; $4b0f: $16 $1f
	dec  e                                           ; $4b11: $1d
	rra                                              ; $4b12: $1f
	inc  d                                           ; $4b13: $14
	dec  d                                           ; $4b14: $15
	ld   e, $0a                                      ; $4b15: $1e $0a
	rrca                                             ; $4b17: $0f
	rlca                                             ; $4b18: $07
	rlca                                             ; $4b19: $07
	ld   bc, $0101                                   ; $4b1a: $01 $01 $01
	ld   bc, $0303                                   ; $4b1d: $01 $03 $03
	dec  hl                                          ; $4b20: $2b
	inc  l                                           ; $4b21: $2c
	dec  l                                           ; $4b22: $2d
	ld   l, $2b                                      ; $4b23: $2e $2b
	cpl                                              ; $4b25: $2f
	inc  l                                           ; $4b26: $2c
	daa                                              ; $4b27: $27
	inc  d                                           ; $4b28: $14
	scf                                              ; $4b29: $37
	ld   [de], a                                     ; $4b2a: $12
	inc  de                                          ; $4b2b: $13
	adc  c                                           ; $4b2c: $89
	adc  c                                           ; $4b2d: $89
	push hl                                          ; $4b2e: $e5
	push hl                                          ; $4b2f: $e5
	jp   nc, $ec32                                   ; $4b30: $d2 $32 $ec

	inc  e                                           ; $4b33: $1c
	rst  $28                                         ; $4b34: $ef
	rra                                              ; $4b35: $1f

jr_013_4b36:
	rra                                              ; $4b36: $1f
	rst  $38                                         ; $4b37: $ff
	xor  $ee                                         ; $4b38: $ee $ee
	inc  e                                           ; $4b3a: $1c
	inc  e                                           ; $4b3b: $1c
	cp   e                                           ; $4b3c: $bb
	cp   e                                           ; $4b3d: $bb
	rst  $30                                         ; $4b3e: $f7
	rst  $30                                         ; $4b3f: $f7
	call nc, $b434                                   ; $4b40: $d4 $34 $b4
	ld   [hl], h                                     ; $4b43: $74
	call nc, $34f4                                   ; $4b44: $d4 $f4 $34
	db   $e4                                         ; $4b47: $e4
	jr   z, jr_013_4b36                              ; $4b48: $28 $ec

	ld   c, b                                        ; $4b4a: $48
	ret  z                                           ; $4b4b: $c8

	sub  b                                           ; $4b4c: $90
	sub  b                                           ; $4b4d: $90
	jr   nz, jr_013_4b70                             ; $4b4e: $20 $20

	ld   b, b                                        ; $4b50: $40
	ld   b, b                                        ; $4b51: $40
	add  c                                           ; $4b52: $81
	add  b                                           ; $4b53: $80
	rst  $38                                         ; $4b54: $ff
	rst  $38                                         ; $4b55: $ff
	rst  $38                                         ; $4b56: $ff
	rst  $38                                         ; $4b57: $ff
	pop  hl                                          ; $4b58: $e1
	pop  hl                                          ; $4b59: $e1
	ld   [hl], c                                     ; $4b5a: $71
	ld   [hl], c                                     ; $4b5b: $71
	dec  sp                                          ; $4b5c: $3b
	dec  sp                                          ; $4b5d: $3b
	sbc  a                                           ; $4b5e: $9f
	sbc  a                                           ; $4b5f: $9f
	ei                                               ; $4b60: $fb
	ld   a, l                                        ; $4b61: $7d
	rra                                              ; $4b62: $1f
	ld   de, $113f                                   ; $4b63: $11 $3f $11
	rst  $38                                         ; $4b66: $ff
	sub  c                                           ; $4b67: $91
	rst  $28                                         ; $4b68: $ef
	or   c                                           ; $4b69: $b1
	db   $ed                                         ; $4b6a: $ed
	or   e                                           ; $4b6b: $b3
	ldh  [c], a                                      ; $4b6c: $e2
	cp   [hl]                                        ; $4b6d: $be
	db   $fc                                         ; $4b6e: $fc
	cp   h                                           ; $4b6f: $bc

jr_013_4b70:
	ldh  [$e0], a                                    ; $4b70: $e0 $e0
	add  b                                           ; $4b72: $80
	add  b                                           ; $4b73: $80
	nop                                              ; $4b74: $00
	nop                                              ; $4b75: $00
	nop                                              ; $4b76: $00
	nop                                              ; $4b77: $00
	nop                                              ; $4b78: $00
	nop                                              ; $4b79: $00
	nop                                              ; $4b7a: $00
	nop                                              ; $4b7b: $00
	nop                                              ; $4b7c: $00
	nop                                              ; $4b7d: $00
	add  b                                           ; $4b7e: $80
	add  b                                           ; $4b7f: $80
	inc  bc                                          ; $4b80: $03
	inc  bc                                          ; $4b81: $03
	rlca                                             ; $4b82: $07
	rlca                                             ; $4b83: $07
	rlca                                             ; $4b84: $07
	rlca                                             ; $4b85: $07
	rrca                                             ; $4b86: $0f
	rrca                                             ; $4b87: $0f
	rrca                                             ; $4b88: $0f
	rrca                                             ; $4b89: $0f
	rra                                              ; $4b8a: $1f
	rra                                              ; $4b8b: $1f
	dec  e                                           ; $4b8c: $1d
	inc  de                                          ; $4b8d: $13
	ccf                                              ; $4b8e: $3f
	jr   nz, jr_013_4bcf                             ; $4b8f: $20 $3e

	ccf                                              ; $4b91: $3f
	ld   h, c                                        ; $4b92: $61
	ld   a, a                                        ; $4b93: $7f
	ld   b, h                                        ; $4b94: $44
	ld   a, e                                        ; $4b95: $7b
	ld   e, b                                        ; $4b96: $58
	ld   h, e                                        ; $4b97: $63
	ld   a, a                                        ; $4b98: $7f
	ld   a, a                                        ; $4b99: $7f
	nop                                              ; $4b9a: $00
	nop                                              ; $4b9b: $00
	nop                                              ; $4b9c: $00
	nop                                              ; $4b9d: $00
	nop                                              ; $4b9e: $00
	nop                                              ; $4b9f: $00
	rst  $38                                         ; $4ba0: $ff
	rst  $38                                         ; $4ba1: $ff
	db   $fc                                         ; $4ba2: $fc
	db   $fc                                         ; $4ba3: $fc
	ld   hl, sp-$08                                  ; $4ba4: $f8 $f8
	ld   hl, sp-$08                                  ; $4ba6: $f8 $f8
	ldh  a, [$f0]                                    ; $4ba8: $f0 $f0
	ldh  a, [$f0]                                    ; $4baa: $f0 $f0
	ldh  [$e0], a                                    ; $4bac: $e0 $e0
	ldh  [rAUD4LEN], a                               ; $4bae: $e0 $20
	ret  nz                                          ; $4bb0: $c0

	ld   b, b                                        ; $4bb1: $40
	ret  nz                                          ; $4bb2: $c0

	ret  nz                                          ; $4bb3: $c0

	add  b                                           ; $4bb4: $80
	add  b                                           ; $4bb5: $80
	add  b                                           ; $4bb6: $80
	add  b                                           ; $4bb7: $80
	nop                                              ; $4bb8: $00
	nop                                              ; $4bb9: $00
	nop                                              ; $4bba: $00
	nop                                              ; $4bbb: $00
	nop                                              ; $4bbc: $00
	nop                                              ; $4bbd: $00
	nop                                              ; $4bbe: $00
	nop                                              ; $4bbf: $00
	rst  $38                                         ; $4bc0: $ff
	rst  $38                                         ; $4bc1: $ff
	rst  $38                                         ; $4bc2: $ff
	rst  $38                                         ; $4bc3: $ff
	ld   a, a                                        ; $4bc4: $7f
	ld   a, a                                        ; $4bc5: $7f
	ld   a, a                                        ; $4bc6: $7f
	ld   a, a                                        ; $4bc7: $7f
	ccf                                              ; $4bc8: $3f
	ccf                                              ; $4bc9: $3f
	ccf                                              ; $4bca: $3f
	ccf                                              ; $4bcb: $3f
	ld   e, $1f                                      ; $4bcc: $1e $1f

jr_013_4bce:
	rra                                              ; $4bce: $1f

jr_013_4bcf:
	db   $10                                         ; $4bcf: $10
	dec  c                                           ; $4bd0: $0d
	dec  bc                                          ; $4bd1: $0b
	ld   c, $0f                                      ; $4bd2: $0e $0f
	inc  b                                           ; $4bd4: $04
	rlca                                             ; $4bd5: $07
	inc  b                                           ; $4bd6: $04
	rlca                                             ; $4bd7: $07
	inc  bc                                          ; $4bd8: $03
	inc  bc                                          ; $4bd9: $03
	nop                                              ; $4bda: $00
	nop                                              ; $4bdb: $00
	nop                                              ; $4bdc: $00
	nop                                              ; $4bdd: $00
	nop                                              ; $4bde: $00
	nop                                              ; $4bdf: $00
	add  b                                           ; $4be0: $80
	add  b                                           ; $4be1: $80
	add  b                                           ; $4be2: $80
	add  b                                           ; $4be3: $80
	ret  nz                                          ; $4be4: $c0

	ret  nz                                          ; $4be5: $c0

	ret  nz                                          ; $4be6: $c0

	ret  nz                                          ; $4be7: $c0

	ldh  [$e0], a                                    ; $4be8: $e0 $e0
	ldh  [$e0], a                                    ; $4bea: $e0 $e0

jr_013_4bec:
	ldh  [rAUD4LEN], a                               ; $4bec: $e0 $20
	ldh  a, [rAUD1SWEEP]                             ; $4bee: $f0 $10
	ldh  a, [$f0]                                    ; $4bf0: $f0 $f0
	jr   jr_013_4bec                                 ; $4bf2: $18 $f8

	jr   z, jr_013_4bce                              ; $4bf4: $28 $d8

	ret  z                                           ; $4bf6: $c8

	jr   @-$06                                       ; $4bf7: $18 $f8

	ld   hl, sp+$00                                  ; $4bf9: $f8 $00
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
	inc  bc                                          ; $4c10: $03
	inc  bc                                          ; $4c11: $03
	db   $fc                                         ; $4c12: $fc
	db   $fc                                         ; $4c13: $fc
	ld   b, b                                        ; $4c14: $40
	ld   a, b                                        ; $4c15: $78
	ld   sp, $0e3f                                   ; $4c16: $31 $3f $0e
	ld   c, $04                                      ; $4c19: $0e $04
	inc  b                                           ; $4c1b: $04
	ld   [$110f], sp                                 ; $4c1c: $08 $0f $11
	rra                                              ; $4c1f: $1f
	nop                                              ; $4c20: $00
	nop                                              ; $4c21: $00
	nop                                              ; $4c22: $00
	nop                                              ; $4c23: $00
	nop                                              ; $4c24: $00
	nop                                              ; $4c25: $00
	nop                                              ; $4c26: $00
	nop                                              ; $4c27: $00
	ld   bc, $1e01                                   ; $4c28: $01 $01 $1e
	rra                                              ; $4c2b: $1f

jr_013_4c2c:
	ld   h, h                                        ; $4c2c: $64
	ld   a, a                                        ; $4c2d: $7f
	adc  b                                           ; $4c2e: $88
	rst  $38                                         ; $4c2f: $ff
	nop                                              ; $4c30: $00
	ld   a, a                                        ; $4c31: $7f
	nop                                              ; $4c32: $00
	rst  $38                                         ; $4c33: $ff
	ld   h, b                                        ; $4c34: $60
	ld   a, a                                        ; $4c35: $7f
	add  c                                           ; $4c36: $81
	rst  $38                                         ; $4c37: $ff
	ld   b, e                                        ; $4c38: $43
	ld   a, a                                        ; $4c39: $7f
	add  a                                           ; $4c3a: $87
	or   a                                           ; $4c3b: $b7
	adc  h                                           ; $4c3c: $8c
	xor  b                                           ; $4c3d: $a8
	ld   [$0048], sp                                 ; $4c3e: $08 $48 $00
	nop                                              ; $4c41: $00
	nop                                              ; $4c42: $00
	nop                                              ; $4c43: $00
	nop                                              ; $4c44: $00
	nop                                              ; $4c45: $00
	nop                                              ; $4c46: $00
	nop                                              ; $4c47: $00
	ret  nz                                          ; $4c48: $c0

	ret  nz                                          ; $4c49: $c0

	jr   nz, jr_013_4c2c                             ; $4c4a: $20 $e0

	db   $10                                         ; $4c4c: $10
	ldh  a, [rAUD1SWEEP]                             ; $4c4d: $f0 $10
	ldh  a, [rAUD3HIGH]                              ; $4c4f: $f0 $1e
	cp   $11                                         ; $4c51: $fe $11
	rst  $38                                         ; $4c53: $ff
	db   $10                                         ; $4c54: $10
	rst  $38                                         ; $4c55: $ff
	sbc  b                                           ; $4c56: $98
	rst  $38                                         ; $4c57: $ff
	inc  h                                           ; $4c58: $24
	rst  $38                                         ; $4c59: $ff
	ldh  a, [c]                                      ; $4c5a: $f2
	cp   $12                                         ; $4c5b: $fe $12
	ld   e, $19                                      ; $4c5d: $1e $19
	dec  bc                                          ; $4c5f: $0b
	nop                                              ; $4c60: $00
	nop                                              ; $4c61: $00
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
	nop                                              ; $4c6e: $00
	nop                                              ; $4c6f: $00
	nop                                              ; $4c70: $00
	nop                                              ; $4c71: $00
	add  b                                           ; $4c72: $80
	add  b                                           ; $4c73: $80
	ld   b, b                                        ; $4c74: $40
	ret  nz                                          ; $4c75: $c0

	jr   nz, jr_013_4c98                             ; $4c76: $20 $20

	sub  b                                           ; $4c78: $90
	sub  b                                           ; $4c79: $90
	ld   c, b                                        ; $4c7a: $48
	ld   hl, sp+$3c                                  ; $4c7b: $f8 $3c
	ld   a, h                                        ; $4c7d: $7c
	jr   nz, jr_013_4ca0                             ; $4c7e: $20 $20

	ld   de, $221f                                   ; $4c80: $11 $1f $22
	ccf                                              ; $4c83: $3f
	ld   [hl+], a                                    ; $4c84: $22
	ccf                                              ; $4c85: $3f
	ld   b, d                                        ; $4c86: $42
	ld   a, a                                        ; $4c87: $7f
	ld   c, h                                        ; $4c88: $4c
	ld   a, a                                        ; $4c89: $7f
	db   $f4                                         ; $4c8a: $f4
	rst  $30                                         ; $4c8b: $f7
	inc  b                                           ; $4c8c: $04
	rlca                                             ; $4c8d: $07
	inc  b                                           ; $4c8e: $04
	rlca                                             ; $4c8f: $07
	dec  b                                           ; $4c90: $05
	rlca                                             ; $4c91: $07
	ld   b, $07                                      ; $4c92: $06 $07
	ld   b, $07                                      ; $4c94: $06 $07
	dec  b                                           ; $4c96: $05
	dec  b                                           ; $4c97: $05

jr_013_4c98:
	nop                                              ; $4c98: $00
	nop                                              ; $4c99: $00
	nop                                              ; $4c9a: $00
	nop                                              ; $4c9b: $00
	nop                                              ; $4c9c: $00
	nop                                              ; $4c9d: $00
	nop                                              ; $4c9e: $00
	nop                                              ; $4c9f: $00

jr_013_4ca0:
	db   $10                                         ; $4ca0: $10
	db   $10                                         ; $4ca1: $10
	rra                                              ; $4ca2: $1f
	ccf                                              ; $4ca3: $3f
	scf                                              ; $4ca4: $37
	ld   a, b                                        ; $4ca5: $78
	ccf                                              ; $4ca6: $3f
	db   $ec                                         ; $4ca7: $ec
	ld   a, a                                        ; $4ca8: $7f
	cp   $5f                                         ; $4ca9: $fe $5f
	call c, $b893                                    ; $4cab: $dc $93 $b8
	rst  $20                                         ; $4cae: $e7
	add  b                                           ; $4caf: $80
	cp   $81                                         ; $4cb0: $fe $81
	rst  $38                                         ; $4cb2: $ff
	add  b                                           ; $4cb3: $80
	cp   l                                           ; $4cb4: $bd
	jp   $c27e                                       ; $4cb5: $c3 $7e $c2


	xor  [hl]                                        ; $4cb8: $ae
	ldh  a, [c]                                      ; $4cb9: $f2
	sbc  e                                           ; $4cba: $9b
	db   $dd                                         ; $4cbb: $dd
	ld   a, a                                        ; $4cbc: $7f
	ld   l, a                                        ; $4cbd: $6f
	add  sp, -$11                                    ; $4cbe: $e8 $ef
	add  hl, bc                                      ; $4cc0: $09
	add  hl, bc                                      ; $4cc1: $09
	ld   hl, sp-$03                                  ; $4cc2: $f8 $fd
	db   $ec                                         ; $4cc4: $ec
	rra                                              ; $4cc5: $1f
	db   $fc                                         ; $4cc6: $fc
	scf                                              ; $4cc7: $37
	db   $fc                                         ; $4cc8: $fc
	ld   a, a                                        ; $4cc9: $7f
	xor  $2f                                         ; $4cca: $ee $2f
	jp   z, $e61f                                    ; $4ccc: $ca $1f $e6

	inc  bc                                          ; $4ccf: $03
	ld   a, a                                        ; $4cd0: $7f
	add  c                                           ; $4cd1: $81
	rst  $38                                         ; $4cd2: $ff
	ld   bc, $c3bd                                   ; $4cd3: $01 $bd $c3
	ld   a, [hl]                                     ; $4cd6: $7e
	ld   b, e                                        ; $4cd7: $43
	ld   [hl], l                                     ; $4cd8: $75
	ld   c, a                                        ; $4cd9: $4f
	reti                                             ; $4cda: $d9


	cp   e                                           ; $4cdb: $bb
	cp   $f6                                         ; $4cdc: $fe $f6
	rla                                              ; $4cde: $17
	rst  $30                                         ; $4cdf: $f7
	db   $10                                         ; $4ce0: $10
	ldh  a, [$90]                                    ; $4ce1: $f0 $90
	ldh  a, [$88]                                    ; $4ce3: $f0 $88
	ld   hl, sp-$78                                  ; $4ce5: $f8 $88
	ld   hl, sp-$38                                  ; $4ce7: $f8 $c8
	ld   hl, sp-$5c                                  ; $4ce9: $f8 $a4
	db   $fc                                         ; $4ceb: $fc
	sbc  [hl]                                        ; $4cec: $9e
	cp   $a0                                         ; $4ced: $fe $a0
	ldh  [hScriptOpcodeParams], a                                    ; $4cef: $e0 $a0
	ldh  [$60], a                                    ; $4cf1: $e0 $60
	ldh  [rSVBK], a                                  ; $4cf3: $e0 $70
	ret  nc                                          ; $4cf5: $d0

	ret  nc                                          ; $4cf6: $d0

	ret  nc                                          ; $4cf7: $d0

	ld   c, b                                        ; $4cf8: $48
	ld   c, b                                        ; $4cf9: $48
	ld   l, b                                        ; $4cfa: $68
	ld   c, b                                        ; $4cfb: $48
	inc  l                                           ; $4cfc: $2c
	inc  h                                           ; $4cfd: $24
	inc  h                                           ; $4cfe: $24
	inc  h                                           ; $4cff: $24
	ld   bc, $0301                                   ; $4d00: $01 $01 $03
	ld   [bc], a                                     ; $4d03: $02
	ld   [bc], a                                     ; $4d04: $02
	ld   [bc], a                                     ; $4d05: $02
	inc  bc                                          ; $4d06: $03
	inc  bc                                          ; $4d07: $03
	inc  bc                                          ; $4d08: $03
	inc  bc                                          ; $4d09: $03
	inc  bc                                          ; $4d0a: $03
	inc  bc                                          ; $4d0b: $03
	inc  bc                                          ; $4d0c: $03
	inc  bc                                          ; $4d0d: $03
	ld   [bc], a                                     ; $4d0e: $02
	ld   [bc], a                                     ; $4d0f: $02
	ld   bc, $0101                                   ; $4d10: $01 $01 $01
	ld   bc, $0000                                   ; $4d13: $01 $00 $00
	nop                                              ; $4d16: $00
	nop                                              ; $4d17: $00
	nop                                              ; $4d18: $00
	nop                                              ; $4d19: $00
	ld   bc, $0101                                   ; $4d1a: $01 $01 $01
	ld   bc, $0303                                   ; $4d1d: $01 $03 $03
	dec  hl                                          ; $4d20: $2b
	inc  l                                           ; $4d21: $2c
	ld   a, l                                        ; $4d22: $7d
	ld   a, [hl]                                     ; $4d23: $7e
	rst  $38                                         ; $4d24: $ff
	adc  a                                           ; $4d25: $8f
	cp   $0b                                         ; $4d26: $fe $0b
	cp   $03                                         ; $4d28: $fe $03
	ld   [hl], a                                     ; $4d2a: $77
	adc  a                                           ; $4d2b: $8f
	rra                                              ; $4d2c: $1f
	ei                                               ; $4d2d: $fb
	ldh  [c], a                                      ; $4d2e: $e2
	di                                               ; $4d2f: $f3
	ld   [bc], a                                     ; $4d30: $02
	inc  bc                                          ; $4d31: $03
	add  c                                           ; $4d32: $81
	add  e                                           ; $4d33: $83
	pop  bc                                          ; $4d34: $c1
	pop  hl                                          ; $4d35: $e1
	rst  $38                                         ; $4d36: $ff
	rst  $38                                         ; $4d37: $ff
	rst  $38                                         ; $4d38: $ff
	rst  $38                                         ; $4d39: $ff
	rrca                                             ; $4d3a: $0f
	rrca                                             ; $4d3b: $0f
	db   $dd                                         ; $4d3c: $dd
	db   $dd                                         ; $4d3d: $dd
	ei                                               ; $4d3e: $fb
	ei                                               ; $4d3f: $fb
	call nc, $be34                                   ; $4d40: $d4 $34 $be
	ld   a, [hl]                                     ; $4d43: $7e
	rst  $38                                         ; $4d44: $ff
	pop  af                                          ; $4d45: $f1
	ld   a, a                                        ; $4d46: $7f
	ret  nc                                          ; $4d47: $d0

	ld   a, a                                        ; $4d48: $7f
	ret  nz                                          ; $4d49: $c0

	cp   $c1                                         ; $4d4a: $fe $c1
	ld   [hl], b                                     ; $4d4c: $70
	adc  a                                           ; $4d4d: $8f
	rst  $28                                         ; $4d4e: $ef
	rra                                              ; $4d4f: $1f
	ld   a, $f0                                      ; $4d50: $3e $f0
	ld   sp, hl                                      ; $4d52: $f9
	pop  bc                                          ; $4d53: $c1
	db   $e3                                         ; $4d54: $e3
	add  a                                           ; $4d55: $87
	rst  $38                                         ; $4d56: $ff
	rst  $38                                         ; $4d57: $ff
	rst  $38                                         ; $4d58: $ff
	rst  $38                                         ; $4d59: $ff
	jr   c, jr_013_4d94                              ; $4d5a: $38 $38

	sbc  l                                           ; $4d5c: $9d
	sbc  l                                           ; $4d5d: $9d
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4d5e: $cf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4d5f: $cf
	and  h                                           ; $4d60: $a4
	and  h                                           ; $4d61: $a4
	db   $e4                                         ; $4d62: $e4
	ld   h, h                                        ; $4d63: $64
	ld   h, h                                        ; $4d64: $64
	ld   h, h                                        ; $4d65: $64
	db   $e4                                         ; $4d66: $e4
	db   $e4                                         ; $4d67: $e4
	db   $e4                                         ; $4d68: $e4
	db   $e4                                         ; $4d69: $e4
	db   $fc                                         ; $4d6a: $fc
	db   $fc                                         ; $4d6b: $fc
	ret  nz                                          ; $4d6c: $c0

	ret  nz                                          ; $4d6d: $c0

	ld   b, b                                        ; $4d6e: $40
	ld   b, b                                        ; $4d6f: $40
	add  b                                           ; $4d70: $80
	add  b                                           ; $4d71: $80
	add  b                                           ; $4d72: $80
	add  b                                           ; $4d73: $80
	nop                                              ; $4d74: $00
	nop                                              ; $4d75: $00
	nop                                              ; $4d76: $00
	nop                                              ; $4d77: $00
	nop                                              ; $4d78: $00
	nop                                              ; $4d79: $00
	add  b                                           ; $4d7a: $80
	add  b                                           ; $4d7b: $80
	add  b                                           ; $4d7c: $80
	add  b                                           ; $4d7d: $80
	ret  nz                                          ; $4d7e: $c0

	ret  nz                                          ; $4d7f: $c0

	inc  bc                                          ; $4d80: $03
	inc  bc                                          ; $4d81: $03
	inc  bc                                          ; $4d82: $03
	inc  bc                                          ; $4d83: $03
	rlca                                             ; $4d84: $07
	rlca                                             ; $4d85: $07
	rlca                                             ; $4d86: $07
	rlca                                             ; $4d87: $07
	rrca                                             ; $4d88: $0f
	rrca                                             ; $4d89: $0f
	rrca                                             ; $4d8a: $0f
	rrca                                             ; $4d8b: $0f
	ld   c, $09                                      ; $4d8c: $0e $09
	rra                                              ; $4d8e: $1f
	db   $10                                         ; $4d8f: $10
	rra                                              ; $4d90: $1f
	rra                                              ; $4d91: $1f
	jr   nc, jr_013_4dd3                             ; $4d92: $30 $3f

jr_013_4d94:
	ld   [hl+], a                                    ; $4d94: $22
	dec  a                                           ; $4d95: $3d
	inc  l                                           ; $4d96: $2c
	ld   sp, $3f3f                                   ; $4d97: $31 $3f $3f
	nop                                              ; $4d9a: $00
	nop                                              ; $4d9b: $00
	nop                                              ; $4d9c: $00
	nop                                              ; $4d9d: $00
	nop                                              ; $4d9e: $00
	nop                                              ; $4d9f: $00
	rst  $38                                         ; $4da0: $ff
	rst  $38                                         ; $4da1: $ff
	cp   $fe                                         ; $4da2: $fe $fe
	db   $fc                                         ; $4da4: $fc
	db   $fc                                         ; $4da5: $fc
	db   $fc                                         ; $4da6: $fc
	db   $fc                                         ; $4da7: $fc
	ld   hl, sp-$08                                  ; $4da8: $f8 $f8
	ld   hl, sp-$08                                  ; $4daa: $f8 $f8
	ldh  a, [$f0]                                    ; $4dac: $f0 $f0
	ldh  a, [rAUD1SWEEP]                             ; $4dae: $f0 $10
	ld   h, b                                        ; $4db0: $60
	and  b                                           ; $4db1: $a0
	ldh  [$e0], a                                    ; $4db2: $e0 $e0
	ld   b, b                                        ; $4db4: $40
	ret  nz                                          ; $4db5: $c0

	ld   b, b                                        ; $4db6: $40
	ret  nz                                          ; $4db7: $c0

	add  b                                           ; $4db8: $80
	add  b                                           ; $4db9: $80
	nop                                              ; $4dba: $00
	nop                                              ; $4dbb: $00
	nop                                              ; $4dbc: $00
	nop                                              ; $4dbd: $00
	nop                                              ; $4dbe: $00
	nop                                              ; $4dbf: $00
	rst  $38                                         ; $4dc0: $ff
	rst  $38                                         ; $4dc1: $ff
	ld   a, a                                        ; $4dc2: $7f
	ld   a, a                                        ; $4dc3: $7f
	ccf                                              ; $4dc4: $3f
	ccf                                              ; $4dc5: $3f
	ccf                                              ; $4dc6: $3f
	ccf                                              ; $4dc7: $3f
	rra                                              ; $4dc8: $1f
	rra                                              ; $4dc9: $1f
	rra                                              ; $4dca: $1f
	rra                                              ; $4dcb: $1f
	rrca                                             ; $4dcc: $0f
	rrca                                             ; $4dcd: $0f
	rrca                                             ; $4dce: $0f
	ld   [$0506], sp                                 ; $4dcf: $08 $06 $05
	rlca                                             ; $4dd2: $07

jr_013_4dd3:
	rlca                                             ; $4dd3: $07
	ld   [bc], a                                     ; $4dd4: $02
	inc  bc                                          ; $4dd5: $03
	ld   [bc], a                                     ; $4dd6: $02
	inc  bc                                          ; $4dd7: $03
	ld   bc, $0001                                   ; $4dd8: $01 $01 $00
	nop                                              ; $4ddb: $00
	nop                                              ; $4ddc: $00
	nop                                              ; $4ddd: $00
	nop                                              ; $4dde: $00
	nop                                              ; $4ddf: $00
	ret  nz                                          ; $4de0: $c0

	ret  nz                                          ; $4de1: $c0

	ret  nz                                          ; $4de2: $c0

	ret  nz                                          ; $4de3: $c0

	ldh  [$e0], a                                    ; $4de4: $e0 $e0
	ldh  [$e0], a                                    ; $4de6: $e0 $e0
	ldh  a, [$f0]                                    ; $4de8: $f0 $f0
	ldh  a, [$f0]                                    ; $4dea: $f0 $f0
	ld   [hl], b                                     ; $4dec: $70
	sub  b                                           ; $4ded: $90
	ld   hl, sp+$08                                  ; $4dee: $f8 $08
	ld   hl, sp-$08                                  ; $4df0: $f8 $f8
	inc  c                                           ; $4df2: $0c
	db   $fc                                         ; $4df3: $fc
	inc  d                                           ; $4df4: $14
	db   $ec                                         ; $4df5: $ec
	ld   h, h                                        ; $4df6: $64
	adc  h                                           ; $4df7: $8c
	db   $fc                                         ; $4df8: $fc
	db   $fc                                         ; $4df9: $fc
	nop                                              ; $4dfa: $00
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
	nop                                              ; $4e05: $00
	nop                                              ; $4e06: $00
	nop                                              ; $4e07: $00
	nop                                              ; $4e08: $00
	nop                                              ; $4e09: $00
	nop                                              ; $4e0a: $00
	nop                                              ; $4e0b: $00
	nop                                              ; $4e0c: $00
	nop                                              ; $4e0d: $00
	nop                                              ; $4e0e: $00
	nop                                              ; $4e0f: $00
	nop                                              ; $4e10: $00
	nop                                              ; $4e11: $00
	nop                                              ; $4e12: $00
	nop                                              ; $4e13: $00
	nop                                              ; $4e14: $00
	nop                                              ; $4e15: $00
	nop                                              ; $4e16: $00
	nop                                              ; $4e17: $00
	nop                                              ; $4e18: $00
	nop                                              ; $4e19: $00
	ld   bc, $0201                                   ; $4e1a: $01 $01 $02
	ld   [bc], a                                     ; $4e1d: $02
	inc  c                                           ; $4e1e: $0c
	inc  c                                           ; $4e1f: $0c

jr_013_4e20:
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
	nop                                              ; $4e2b: $00
	nop                                              ; $4e2c: $00
	nop                                              ; $4e2d: $00
	nop                                              ; $4e2e: $00
	nop                                              ; $4e2f: $00
	nop                                              ; $4e30: $00
	nop                                              ; $4e31: $00
	rlca                                             ; $4e32: $07
	rlca                                             ; $4e33: $07
	jr   jr_013_4e55                                 ; $4e34: $18 $1f

	ld   h, b                                        ; $4e36: $60
	ld   a, a                                        ; $4e37: $7f
	add  e                                           ; $4e38: $83
	rst  $38                                         ; $4e39: $ff
	inc  b                                           ; $4e3a: $04
	ld   a, a                                        ; $4e3b: $7f
	ld   [$00ff], sp                                 ; $4e3c: $08 $ff $00
	rst  $38                                         ; $4e3f: $ff
	nop                                              ; $4e40: $00
	nop                                              ; $4e41: $00
	nop                                              ; $4e42: $00
	nop                                              ; $4e43: $00
	nop                                              ; $4e44: $00
	nop                                              ; $4e45: $00
	nop                                              ; $4e46: $00
	nop                                              ; $4e47: $00
	nop                                              ; $4e48: $00
	nop                                              ; $4e49: $00
	nop                                              ; $4e4a: $00
	nop                                              ; $4e4b: $00
	nop                                              ; $4e4c: $00
	nop                                              ; $4e4d: $00
	nop                                              ; $4e4e: $00
	nop                                              ; $4e4f: $00
	nop                                              ; $4e50: $00
	nop                                              ; $4e51: $00
	add  b                                           ; $4e52: $80
	add  b                                           ; $4e53: $80
	ld   b, b                                        ; $4e54: $40

jr_013_4e55:
	ret  nz                                          ; $4e55: $c0

	ldh  [$e0], a                                    ; $4e56: $e0 $e0
	ld   e, $fe                                      ; $4e58: $1e $fe
	add  hl, bc                                      ; $4e5a: $09
	rst  $38                                         ; $4e5b: $ff
	ld   [$04ff], sp                                 ; $4e5c: $08 $ff $04
	rst  $38                                         ; $4e5f: $ff
	nop                                              ; $4e60: $00
	nop                                              ; $4e61: $00
	nop                                              ; $4e62: $00
	nop                                              ; $4e63: $00
	nop                                              ; $4e64: $00
	nop                                              ; $4e65: $00
	nop                                              ; $4e66: $00
	nop                                              ; $4e67: $00
	nop                                              ; $4e68: $00
	nop                                              ; $4e69: $00
	nop                                              ; $4e6a: $00
	nop                                              ; $4e6b: $00
	nop                                              ; $4e6c: $00
	nop                                              ; $4e6d: $00
	nop                                              ; $4e6e: $00
	nop                                              ; $4e6f: $00
	nop                                              ; $4e70: $00
	nop                                              ; $4e71: $00
	nop                                              ; $4e72: $00
	nop                                              ; $4e73: $00
	nop                                              ; $4e74: $00
	nop                                              ; $4e75: $00
	nop                                              ; $4e76: $00
	nop                                              ; $4e77: $00
	nop                                              ; $4e78: $00
	nop                                              ; $4e79: $00
	add  b                                           ; $4e7a: $80
	add  b                                           ; $4e7b: $80
	ld   b, b                                        ; $4e7c: $40
	ld   b, b                                        ; $4e7d: $40
	jr   nz, jr_013_4e20                             ; $4e7e: $20 $a0

	ldh  a, [$f1]                                    ; $4e80: $f0 $f1
	ld   b, b                                        ; $4e82: $40
	ld   a, h                                        ; $4e83: $7c
	inc  hl                                          ; $4e84: $23
	ccf                                              ; $4e85: $3f
	inc  e                                           ; $4e86: $1c
	dec  e                                           ; $4e87: $1d
	inc  b                                           ; $4e88: $04
	dec  b                                           ; $4e89: $05
	ld   [$0908], sp                                 ; $4e8a: $08 $08 $09
	add  hl, bc                                      ; $4e8d: $09
	ld   de, $2217                                   ; $4e8e: $11 $17 $22
	ccf                                              ; $4e91: $3f
	jp   nz, $32ff                                   ; $4e92: $c2 $ff $32

	ccf                                              ; $4e95: $3f
	ld   c, $0f                                      ; $4e96: $0e $0f
	ld   [bc], a                                     ; $4e98: $02
	inc  bc                                          ; $4e99: $03
	ld   [bc], a                                     ; $4e9a: $02
	inc  bc                                          ; $4e9b: $03
	ld   [bc], a                                     ; $4e9c: $02
	inc  bc                                          ; $4e9d: $03
	ld   [bc], a                                     ; $4e9e: $02
	inc  bc                                          ; $4e9f: $03
	nop                                              ; $4ea0: $00
	rst  $38                                         ; $4ea1: $ff
	sbc  b                                           ; $4ea2: $98
	rst  $38                                         ; $4ea3: $ff
	jr   nz, @+$01                                   ; $4ea4: $20 $ff

	ld   b, b                                        ; $4ea6: $40
	rst  JumpTable                                         ; $4ea7: $df
	add  c                                           ; $4ea8: $81
	cp   a                                           ; $4ea9: $bf
	add  e                                           ; $4eaa: $83
	cp   e                                           ; $4eab: $bb
	inc  b                                           ; $4eac: $04
	ld   h, h                                        ; $4ead: $64
	inc  c                                           ; $4eae: $0c
	ld   [$0808], sp                                 ; $4eaf: $08 $08 $08
	rra                                              ; $4eb2: $1f
	ccf                                              ; $4eb3: $3f
	rra                                              ; $4eb4: $1f
	ld   hl, sp+$27                                  ; $4eb5: $f8 $27
	db   $fc                                         ; $4eb7: $fc
	ccf                                              ; $4eb8: $3f
	ldh  [c], a                                      ; $4eb9: $e2
	ld   [hl], a                                     ; $4eba: $77
	db   $ec                                         ; $4ebb: $ec
	ld   a, a                                        ; $4ebc: $7f
	ld   hl, sp-$41                                  ; $4ebd: $f8 $bf
	ret  nz                                          ; $4ebf: $c0

	inc  b                                           ; $4ec0: $04
	rst  $38                                         ; $4ec1: $ff
	inc  b                                           ; $4ec2: $04
	rst  $38                                         ; $4ec3: $ff
	inc  b                                           ; $4ec4: $04
	rst  $38                                         ; $4ec5: $ff
	ld   h, a                                        ; $4ec6: $67
	rst  $38                                         ; $4ec7: $ff
	adc  b                                           ; $4ec8: $88
	rst  $38                                         ; $4ec9: $ff
	db   $fc                                         ; $4eca: $fc
	rst  $38                                         ; $4ecb: $ff
	ld   b, $02                                      ; $4ecc: $06 $02
	inc  bc                                          ; $4ece: $03
	ld   bc, $0101                                   ; $4ecf: $01 $01 $01
	rst  $38                                         ; $4ed2: $ff
	rst  $38                                         ; $4ed3: $ff
	ei                                               ; $4ed4: $fb
	inc  e                                           ; $4ed5: $1c
	rst  $28                                         ; $4ed6: $ef
	jr   nc, @+$01                                   ; $4ed7: $30 $ff

	ld   b, b                                        ; $4ed9: $40
	rst  $28                                         ; $4eda: $ef
	ld   [hl], $fe                                   ; $4edb: $36 $fe
	dec  e                                           ; $4edd: $1d
	rst  $38                                         ; $4ede: $ff
	ld   bc, $1010                                   ; $4edf: $01 $10 $10
	ret  z                                           ; $4ee2: $c8

	ld   hl, sp+$3c                                  ; $4ee3: $f8 $3c
	cp   h                                           ; $4ee5: $bc
	db   $10                                         ; $4ee6: $10
	db   $10                                         ; $4ee7: $10
	adc  b                                           ; $4ee8: $88
	adc  b                                           ; $4ee9: $88
	ld   c, b                                        ; $4eea: $48
	ld   a, b                                        ; $4eeb: $78
	ld   b, h                                        ; $4eec: $44
	ld   a, h                                        ; $4eed: $7c
	inc  h                                           ; $4eee: $24
	ld   a, h                                        ; $4eef: $7c
	inc  h                                           ; $4ef0: $24
	ld   a, h                                        ; $4ef1: $7c
	inc  h                                           ; $4ef2: $24
	db   $fc                                         ; $4ef3: $fc
	and  d                                           ; $4ef4: $a2
	cp   $bf                                         ; $4ef5: $fe $bf
	rst  $38                                         ; $4ef7: $ff
	or   b                                           ; $4ef8: $b0
	ldh  a, [$d0]                                    ; $4ef9: $f0 $d0
	ldh  a, [$f8]                                    ; $4efb: $f0 $f8
	add  sp, $28                                     ; $4efd: $e8 $28
	add  sp, $03                                     ; $4eff: $e8 $03
	inc  bc                                          ; $4f01: $03
	inc  bc                                          ; $4f02: $03
	inc  bc                                          ; $4f03: $03
	ld   b, $06                                      ; $4f04: $06 $06
	inc  b                                           ; $4f06: $04
	inc  b                                           ; $4f07: $04
	inc  c                                           ; $4f08: $0c
	ld   [$0808], sp                                 ; $4f09: $08 $08 $08
	add  hl, bc                                      ; $4f0c: $09
	add  hl, bc                                      ; $4f0d: $09
	dec  bc                                          ; $4f0e: $0b
	dec  bc                                          ; $4f0f: $0b
	dec  de                                          ; $4f10: $1b
	ld   de, $171f                                   ; $4f11: $11 $1f $17
	rra                                              ; $4f14: $1f
	add  hl, de                                      ; $4f15: $19
	rra                                              ; $4f16: $1f
	ld   [de], a                                     ; $4f17: $12
	rra                                              ; $4f18: $1f
	db   $10                                         ; $4f19: $10
	rla                                              ; $4f1a: $17
	jr   jr_013_4f25                                 ; $4f1b: $18 $08

	rrca                                             ; $4f1d: $0f
	rlca                                             ; $4f1e: $07
	rlca                                             ; $4f1f: $07
	cp   [hl]                                        ; $4f20: $be
	pop  bc                                          ; $4f21: $c1
	rst  $38                                         ; $4f22: $ff
	ld   h, b                                        ; $4f23: $60
	ld   a, e                                        ; $4f24: $7b

jr_013_4f25:
	ld   e, l                                        ; $4f25: $5d
	ld   c, a                                        ; $4f26: $4f
	ld   c, a                                        ; $4f27: $4f
	ld   l, e                                        ; $4f28: $6b
	inc  l                                           ; $4f29: $2c
	cpl                                              ; $4f2a: $2f
	daa                                              ; $4f2b: $27
	inc  [hl]                                        ; $4f2c: $34
	rla                                              ; $4f2d: $17
	ld   a, [de]                                     ; $4f2e: $1a
	inc  de                                          ; $4f2f: $13
	add  hl, bc                                      ; $4f30: $09
	add  hl, bc                                      ; $4f31: $09
	add  [hl]                                        ; $4f32: $86
	ld   b, $98                                      ; $4f33: $06 $98
	sbc  b                                           ; $4f35: $98
	ld   a, a                                        ; $4f36: $7f
	rst  $38                                         ; $4f37: $ff
	cp   a                                           ; $4f38: $bf
	ld   a, a                                        ; $4f39: $7f
	xor  a                                           ; $4f3a: $af
	ld   l, a                                        ; $4f3b: $6f
	ld   e, l                                        ; $4f3c: $5d
	db   $dd                                         ; $4f3d: $dd
	ei                                               ; $4f3e: $fb
	ei                                               ; $4f3f: $fb
	ld   a, l                                        ; $4f40: $7d
	add  e                                           ; $4f41: $83
	rst  $38                                         ; $4f42: $ff
	ld   b, $de                                      ; $4f43: $06 $de
	cp   d                                           ; $4f45: $ba
	ldh  a, [c]                                      ; $4f46: $f2
	ldh  a, [c]                                      ; $4f47: $f2
	sub  $34                                         ; $4f48: $d6 $34
	db   $f4                                         ; $4f4a: $f4
	db   $e4                                         ; $4f4b: $e4
	inc  l                                           ; $4f4c: $2c
	add  sp, $58                                     ; $4f4d: $e8 $58
	ret  z                                           ; $4f4f: $c8

	sub  b                                           ; $4f50: $90
	sub  b                                           ; $4f51: $90
	ld   hl, $c120                                   ; $4f52: $21 $20 $c1
	pop  bc                                          ; $4f55: $c1
	cp   $ff                                         ; $4f56: $fe $ff
	db   $fd                                         ; $4f58: $fd
	cp   $3d                                         ; $4f59: $fe $3d
	ld   a, $9e                                      ; $4f5b: $3e $9e
	sbc  a                                           ; $4f5d: $9f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4f5e: $cf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4f5f: $cf
	db   $ec                                         ; $4f60: $ec
	call nz, $44e4                                   ; $4f61: $c4 $e4 $44
	ld   h, h                                        ; $4f64: $64
	inc  h                                           ; $4f65: $24
	inc  h                                           ; $4f66: $24
	inc  h                                           ; $4f67: $24
	inc  [hl]                                        ; $4f68: $34
	inc  d                                           ; $4f69: $14
	inc  d                                           ; $4f6a: $14
	inc  d                                           ; $4f6b: $14
	sbc  h                                           ; $4f6c: $9c
	sbc  h                                           ; $4f6d: $9c
	ret  nc                                          ; $4f6e: $d0

	ret  nc                                          ; $4f6f: $d0

	ret  c                                           ; $4f70: $d8

	adc  b                                           ; $4f71: $88
	ld   hl, sp-$18                                  ; $4f72: $f8 $e8
	ld   hl, sp-$68                                  ; $4f74: $f8 $98
	ld   hl, sp+$48                                  ; $4f76: $f8 $48
	ld   hl, sp+$08                                  ; $4f78: $f8 $08
	add  sp, $18                                     ; $4f7a: $e8 $18
	db   $10                                         ; $4f7c: $10
	ldh  a, [$e0]                                    ; $4f7d: $f0 $e0
	ldh  [$03], a                                    ; $4f7f: $e0 $03
	inc  bc                                          ; $4f81: $03
	inc  bc                                          ; $4f82: $03
	inc  bc                                          ; $4f83: $03
	rlca                                             ; $4f84: $07
	rlca                                             ; $4f85: $07
	rlca                                             ; $4f86: $07
	rlca                                             ; $4f87: $07
	rrca                                             ; $4f88: $0f
	rrca                                             ; $4f89: $0f
	rrca                                             ; $4f8a: $0f
	rrca                                             ; $4f8b: $0f
	ld   c, $09                                      ; $4f8c: $0e $09
	rra                                              ; $4f8e: $1f
	db   $10                                         ; $4f8f: $10
	rra                                              ; $4f90: $1f
	rra                                              ; $4f91: $1f
	jr   nc, jr_013_4fd3                             ; $4f92: $30 $3f

	ld   [hl+], a                                    ; $4f94: $22
	dec  a                                           ; $4f95: $3d
	inc  l                                           ; $4f96: $2c
	ld   sp, $3f3f                                   ; $4f97: $31 $3f $3f
	nop                                              ; $4f9a: $00
	nop                                              ; $4f9b: $00
	nop                                              ; $4f9c: $00
	nop                                              ; $4f9d: $00
	nop                                              ; $4f9e: $00
	nop                                              ; $4f9f: $00
	rst  $38                                         ; $4fa0: $ff
	rst  $38                                         ; $4fa1: $ff
	cp   $fe                                         ; $4fa2: $fe $fe
	db   $fc                                         ; $4fa4: $fc
	db   $fc                                         ; $4fa5: $fc
	db   $fc                                         ; $4fa6: $fc
	db   $fc                                         ; $4fa7: $fc
	ld   hl, sp-$08                                  ; $4fa8: $f8 $f8
	ld   hl, sp-$08                                  ; $4faa: $f8 $f8
	ldh  a, [$f0]                                    ; $4fac: $f0 $f0
	ldh  a, [rAUD1SWEEP]                             ; $4fae: $f0 $10
	ld   h, b                                        ; $4fb0: $60
	and  b                                           ; $4fb1: $a0
	ldh  [$e0], a                                    ; $4fb2: $e0 $e0
	ld   b, b                                        ; $4fb4: $40
	ret  nz                                          ; $4fb5: $c0

	ld   b, b                                        ; $4fb6: $40
	ret  nz                                          ; $4fb7: $c0

	add  b                                           ; $4fb8: $80
	add  b                                           ; $4fb9: $80
	nop                                              ; $4fba: $00
	nop                                              ; $4fbb: $00
	nop                                              ; $4fbc: $00
	nop                                              ; $4fbd: $00
	nop                                              ; $4fbe: $00
	nop                                              ; $4fbf: $00
	rst  $38                                         ; $4fc0: $ff
	rst  $38                                         ; $4fc1: $ff
	ld   a, a                                        ; $4fc2: $7f
	ld   a, a                                        ; $4fc3: $7f
	ccf                                              ; $4fc4: $3f
	ccf                                              ; $4fc5: $3f
	ccf                                              ; $4fc6: $3f
	ccf                                              ; $4fc7: $3f
	rra                                              ; $4fc8: $1f
	rra                                              ; $4fc9: $1f
	rra                                              ; $4fca: $1f
	rra                                              ; $4fcb: $1f
	rrca                                             ; $4fcc: $0f
	rrca                                             ; $4fcd: $0f
	rrca                                             ; $4fce: $0f
	ld   [$0506], sp                                 ; $4fcf: $08 $06 $05
	rlca                                             ; $4fd2: $07

jr_013_4fd3:
	rlca                                             ; $4fd3: $07
	ld   [bc], a                                     ; $4fd4: $02
	inc  bc                                          ; $4fd5: $03
	ld   [bc], a                                     ; $4fd6: $02
	inc  bc                                          ; $4fd7: $03
	ld   bc, $0001                                   ; $4fd8: $01 $01 $00
	nop                                              ; $4fdb: $00
	nop                                              ; $4fdc: $00
	nop                                              ; $4fdd: $00
	nop                                              ; $4fde: $00
	nop                                              ; $4fdf: $00
	ret  nz                                          ; $4fe0: $c0

	ret  nz                                          ; $4fe1: $c0

	ret  nz                                          ; $4fe2: $c0

	ret  nz                                          ; $4fe3: $c0

	ldh  [$e0], a                                    ; $4fe4: $e0 $e0
	ldh  [$e0], a                                    ; $4fe6: $e0 $e0
	ldh  a, [$f0]                                    ; $4fe8: $f0 $f0
	ldh  a, [$f0]                                    ; $4fea: $f0 $f0
	ld   [hl], b                                     ; $4fec: $70
	sub  b                                           ; $4fed: $90
	ld   hl, sp+$08                                  ; $4fee: $f8 $08
	ld   hl, sp-$08                                  ; $4ff0: $f8 $f8
	inc  c                                           ; $4ff2: $0c
	db   $fc                                         ; $4ff3: $fc
	inc  d                                           ; $4ff4: $14
	db   $ec                                         ; $4ff5: $ec
	ld   h, h                                        ; $4ff6: $64
	adc  h                                           ; $4ff7: $8c
	db   $fc                                         ; $4ff8: $fc
	db   $fc                                         ; $4ff9: $fc
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
	ld   b, b                                        ; $5034: $40
	nop                                              ; $5035: $00
	ld   b, b                                        ; $5036: $40
	nop                                              ; $5037: $00
	ld   b, b                                        ; $5038: $40
	nop                                              ; $5039: $00
	ld   b, e                                        ; $503a: $43
	inc  bc                                          ; $503b: $03
	ld   b, h                                        ; $503c: $44
	rlca                                             ; $503d: $07
	ld   e, b                                        ; $503e: $58
	rrca                                             ; $503f: $0f
	nop                                              ; $5040: $00
	nop                                              ; $5041: $00
	nop                                              ; $5042: $00
	nop                                              ; $5043: $00
	nop                                              ; $5044: $00
	nop                                              ; $5045: $00
	nop                                              ; $5046: $00
	nop                                              ; $5047: $00

jr_013_5048:
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
	ldh  [$e0], a                                    ; $5058: $e0 $e0
	db   $10                                         ; $505a: $10
	ldh  a, [$08]                                    ; $505b: $f0 $08
	ld   hl, sp+$07                                  ; $505d: $f8 $07
	rst  $38                                         ; $505f: $ff
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
	ld   bc, $0201                                   ; $5082: $01 $01 $02
	ld   [bc], a                                     ; $5085: $02
	ld   [bc], a                                     ; $5086: $02
	ld   [bc], a                                     ; $5087: $02
	inc  b                                           ; $5088: $04
	rlca                                             ; $5089: $07
	add  hl, bc                                      ; $508a: $09
	rrca                                             ; $508b: $0f
	ld   e, $1e                                      ; $508c: $1e $1e
	ld   [bc], a                                     ; $508e: $02
	inc  bc                                          ; $508f: $03
	inc  b                                           ; $5090: $04
	rlca                                             ; $5091: $07
	inc  b                                           ; $5092: $04
	rlca                                             ; $5093: $07
	ld   [$110f], sp                                 ; $5094: $08 $0f $11
	rra                                              ; $5097: $1f
	ld   h, c                                        ; $5098: $61
	ld   a, a                                        ; $5099: $7f
	ld   sp, $1f3f                                   ; $509a: $31 $3f $1f
	rra                                              ; $509d: $1f
	dec  a                                           ; $509e: $3d
	ccf                                              ; $509f: $3f
	ret  c                                           ; $50a0: $d8

	adc  a                                           ; $50a1: $8f
	ret  nc                                          ; $50a2: $d0

	adc  a                                           ; $50a3: $8f
	db   $d3                                         ; $50a4: $d3
	adc  a                                           ; $50a5: $8f
	call c, $d08d                                    ; $50a6: $dc $8d $d0
	adc  e                                           ; $50a9: $8b

jr_013_50aa:
	ld   d, b                                        ; $50aa: $50
	adc  a                                           ; $50ab: $8f
	ld   d, e                                        ; $50ac: $53
	adc  a                                           ; $50ad: $8f
	ld   d, h                                        ; $50ae: $54
	adc  [hl]                                        ; $50af: $8e
	ld   e, b                                        ; $50b0: $58
	adc  c                                           ; $50b1: $89
	ld   d, b                                        ; $50b2: $50
	add  e                                           ; $50b3: $83
	ld   d, b                                        ; $50b4: $50
	add  b                                           ; $50b5: $80
	ld   de, $1283                                   ; $50b6: $11 $83 $12
	adc  a                                           ; $50b9: $8f
	ld   d, $8f                                      ; $50ba: $16 $8f
	add  hl, de                                      ; $50bc: $19
	adc  c                                           ; $50bd: $89
	jr   jr_013_5048                                 ; $50be: $18 $88

	inc  b                                           ; $50c0: $04
	rst  $38                                         ; $50c1: $ff
	inc  b                                           ; $50c2: $04
	rst  $38                                         ; $50c3: $ff
	add  h                                           ; $50c4: $84
	rst  $38                                         ; $50c5: $ff
	inc  b                                           ; $50c6: $04
	rst  $38                                         ; $50c7: $ff
	dec  b                                           ; $50c8: $05
	rst  $38                                         ; $50c9: $ff
	ret  nz                                          ; $50ca: $c0

	rst  $38                                         ; $50cb: $ff
	jr   nz, @+$01                                   ; $50cc: $20 $ff

	ld   h, $fe                                      ; $50ce: $26 $fe
	inc  l                                           ; $50d0: $2c
	rst  $38                                         ; $50d1: $ff
	db   $10                                         ; $50d2: $10
	rst  $38                                         ; $50d3: $ff
	db   $10                                         ; $50d4: $10
	rst  $38                                         ; $50d5: $ff
	ld   bc, $82ff                                   ; $50d6: $01 $ff $82
	cp   $8c                                         ; $50d9: $fe $8c
	db   $fc                                         ; $50db: $fc
	ldh  a, [$f0]                                    ; $50dc: $f0 $f0
	ld   bc, $c001                                   ; $50de: $01 $01 $c0
	ret  nz                                          ; $50e1: $c0

	jr   nz, @-$5e                                   ; $50e2: $20 $a0

	db   $10                                         ; $50e4: $10
	ret  nc                                          ; $50e5: $d0

	db   $10                                         ; $50e6: $10
	ret  nc                                          ; $50e7: $d0

	adc  b                                           ; $50e8: $88
	adc  b                                           ; $50e9: $88
	ld   h, l                                        ; $50ea: $65
	db   $fd                                         ; $50eb: $fd
	ld   [hl+], a                                    ; $50ec: $22
	cp   $fe                                         ; $50ed: $fe $fe
	cp   $34                                         ; $50ef: $fe $34
	ld   a, h                                        ; $50f1: $7c
	dec  bc                                          ; $50f2: $0b
	cpl                                              ; $50f3: $2f
	dec  bc                                          ; $50f4: $0b
	adc  a                                           ; $50f5: $8f
	adc  c                                           ; $50f6: $89
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $50f7: $cf
	ld   c, c                                        ; $50f8: $49
	ld   a, a                                        ; $50f9: $7f
	ld   c, l                                        ; $50fa: $4d
	ld   a, a                                        ; $50fb: $7f
	ld   [$a8fa], a                                  ; $50fc: $ea $fa $a8
	cp   b                                           ; $50ff: $b8
	ld   c, a                                        ; $5100: $4f
	ld   b, e                                        ; $5101: $43
	sbc  a                                           ; $5102: $9f
	sbc  a                                           ; $5103: $9f
	sub  a                                           ; $5104: $97
	sub  a                                           ; $5105: $97
	xor  e                                           ; $5106: $ab
	xor  c                                           ; $5107: $a9
	xor  d                                           ; $5108: $aa
	xor  d                                           ; $5109: $aa
	ld   [$d7aa], a                                  ; $510a: $ea $aa $d7
	jp   nc, $9595                                   ; $510d: $d2 $95 $95

	dec  d                                           ; $5110: $15
	dec  d                                           ; $5111: $15
	ld   d, $12                                      ; $5112: $16 $12
	ld   c, $0a                                      ; $5114: $0e $0a
	dec  b                                           ; $5116: $05
	dec  b                                           ; $5117: $05
	ld   bc, $0101                                   ; $5118: $01 $01 $01
	ld   bc, $0101                                   ; $511b: $01 $01 $01
	nop                                              ; $511e: $00
	nop                                              ; $511f: $00
	jr   jr_013_50aa                                 ; $5120: $18 $88

	rra                                              ; $5122: $1f
	add  a                                           ; $5123: $87
	rra                                              ; $5124: $1f
	add  d                                           ; $5125: $82
	rra                                              ; $5126: $1f
	add  a                                           ; $5127: $87
	dec  e                                           ; $5128: $1d
	add  e                                           ; $5129: $83
	ld   e, l                                        ; $512a: $5d
	add  c                                           ; $512b: $81
	ld   e, a                                        ; $512c: $5f
	add  d                                           ; $512d: $82
	ld   e, e                                        ; $512e: $5b
	add  c                                           ; $512f: $81
	ld   d, b                                        ; $5130: $50
	adc  d                                           ; $5131: $8a
	ld   d, d                                        ; $5132: $52
	adc  d                                           ; $5133: $8a
	ld   d, d                                        ; $5134: $52
	adc  d                                           ; $5135: $8a
	ld   d, e                                        ; $5136: $53
	adc  d                                           ; $5137: $8a
	ld   d, e                                        ; $5138: $53
	adc  e                                           ; $5139: $8b
	ld   d, a                                        ; $513a: $57
	adc  a                                           ; $513b: $8f
	ld   d, h                                        ; $513c: $54
	adc  h                                           ; $513d: $8c
	ld   d, l                                        ; $513e: $55
	adc  l                                           ; $513f: $8d
	inc  bc                                          ; $5140: $03
	inc  bc                                          ; $5141: $03
	rst  $38                                         ; $5142: $ff
	db   $fd                                         ; $5143: $fd
	rst  $38                                         ; $5144: $ff
	inc  bc                                          ; $5145: $03
	cp   $07                                         ; $5146: $fe $07
	ld   a, [$7e86]                                  ; $5148: $fa $86 $7e
	add  c                                           ; $514b: $81
	db   $db                                         ; $514c: $db
	daa                                              ; $514d: $27
	db   $fd                                         ; $514e: $fd
	db   $fd                                         ; $514f: $fd
	add  e                                           ; $5150: $83
	rst  $38                                         ; $5151: $ff
	db   $dd                                         ; $5152: $dd
	push hl                                          ; $5153: $e5
	ld   a, h                                        ; $5154: $7c
	db   $fc                                         ; $5155: $fc
	ld   b, l                                        ; $5156: $45
	ld   a, l                                        ; $5157: $7d
	cpl                                              ; $5158: $2f
	ccf                                              ; $5159: $3f
	cp   $fe                                         ; $515a: $fe $fe
	rst  $20                                         ; $515c: $e7
	rst  $20                                         ; $515d: $e7
	jp   $f8c3                                       ; $515e: $c3 $c3 $f8


	cp   b                                           ; $5161: $b8
	db   $ec                                         ; $5162: $ec
	db   $fc                                         ; $5163: $fc
	ld   [hl], $76                                   ; $5164: $36 $76
	ld   [hl+], a                                    ; $5166: $22
	ld   h, d                                        ; $5167: $62
	ld   h, d                                        ; $5168: $62
	jp   nz, $eafa                                   ; $5169: $c2 $fa $ea

	cp   $1e                                         ; $516c: $fe $1e
	db   $fc                                         ; $516e: $fc
	inc  b                                           ; $516f: $04
	db   $fc                                         ; $5170: $fc
	inc  b                                           ; $5171: $04

jr_013_5172:
	ld   [hl], h                                     ; $5172: $74
	adc  h                                           ; $5173: $8c

jr_013_5174:
	adc  h                                           ; $5174: $8c
	db   $fc                                         ; $5175: $fc

jr_013_5176:
	ldh  a, [$f0]                                    ; $5176: $f0 $f0
	ret  nz                                          ; $5178: $c0

	ret  nz                                          ; $5179: $c0

	ld   h, b                                        ; $517a: $60
	ld   h, b                                        ; $517b: $60
	db   $10                                         ; $517c: $10
	db   $10                                         ; $517d: $10
	ldh  a, [$f0]                                    ; $517e: $f0 $f0
	ld   bc, $0301                                   ; $5180: $01 $01 $03
	inc  bc                                          ; $5183: $03
	rlca                                             ; $5184: $07
	rlca                                             ; $5185: $07
	rrca                                             ; $5186: $0f
	rrca                                             ; $5187: $0f
	rrca                                             ; $5188: $0f
	rrca                                             ; $5189: $0f
	rra                                              ; $518a: $1f
	rra                                              ; $518b: $1f
	ccf                                              ; $518c: $3f
	ld   hl, $407f                                   ; $518d: $21 $7f $40
	ld   a, a                                        ; $5190: $7f
	ld   a, h                                        ; $5191: $7c
	jp   $89ff                                       ; $5192: $c3 $ff $89


	rst  $30                                         ; $5195: $f7
	or   c                                           ; $5196: $b1
	rst  ToBoot                                         ; $5197: $c7
	cp   $fe                                         ; $5198: $fe $fe
	nop                                              ; $519a: $00
	nop                                              ; $519b: $00
	nop                                              ; $519c: $00
	nop                                              ; $519d: $00
	nop                                              ; $519e: $00
	nop                                              ; $519f: $00
	ccf                                              ; $51a0: $3f
	ld   c, a                                        ; $51a1: $4f
	ccf                                              ; $51a2: $3f
	ld   c, a                                        ; $51a3: $4f
	dec  sp                                          ; $51a4: $3b
	ld   c, a                                        ; $51a5: $4f
	ccf                                              ; $51a6: $3f
	ld   c, e                                        ; $51a7: $4b
	ld   a, $ca                                      ; $51a8: $3e $ca
	inc  a                                           ; $51aa: $3c
	ret  z                                           ; $51ab: $c8

	jr   c, jr_013_5172                              ; $51ac: $38 $c4

	jr   c, jr_013_5174                              ; $51ae: $38 $c4

	jr   c, jr_013_5176                              ; $51b0: $38 $c4

	jr   c, jr_013_51f4                              ; $51b2: $38 $40

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
	and  a                                           ; $51c0: $a7
	and  a                                           ; $51c1: $a7
	sbc  a                                           ; $51c2: $9f
	sbc  a                                           ; $51c3: $9f
	rst  $20                                         ; $51c4: $e7
	rst  $20                                         ; $51c5: $e7
	inc  bc                                          ; $51c6: $03
	inc  bc                                          ; $51c7: $03
	ld   bc, $0101                                   ; $51c8: $01 $01 $01
	ld   bc, $0101                                   ; $51cb: $01 $01 $01
	ld   bc, $0101                                   ; $51ce: $01 $01 $01
	ld   bc, $0101                                   ; $51d1: $01 $01 $01
	ld   bc, $0101                                   ; $51d4: $01 $01 $01
	ld   bc, $0000                                   ; $51d7: $01 $00 $00
	nop                                              ; $51da: $00
	nop                                              ; $51db: $00
	nop                                              ; $51dc: $00
	nop                                              ; $51dd: $00
	nop                                              ; $51de: $00
	nop                                              ; $51df: $00
	ld   hl, sp-$08                                  ; $51e0: $f8 $f8
	db   $fc                                         ; $51e2: $fc
	db   $fc                                         ; $51e3: $fc
	db   $fc                                         ; $51e4: $fc
	db   $fc                                         ; $51e5: $fc
	db   $fc                                         ; $51e6: $fc
	db   $fc                                         ; $51e7: $fc
	db   $fc                                         ; $51e8: $fc
	db   $fc                                         ; $51e9: $fc
	db   $fc                                         ; $51ea: $fc
	db   $fc                                         ; $51eb: $fc
	db   $fc                                         ; $51ec: $fc
	inc  b                                           ; $51ed: $04
	db   $f4                                         ; $51ee: $f4
	inc  c                                           ; $51ef: $0c
	cp   [hl]                                        ; $51f0: $be
	ld   a, [hl]                                     ; $51f1: $7e
	ld   b, e                                        ; $51f2: $43
	rst  $38                                         ; $51f3: $ff

jr_013_51f4:
	dec  b                                           ; $51f4: $05
	ei                                               ; $51f5: $fb
	add  hl, de                                      ; $51f6: $19
	db   $e3                                         ; $51f7: $e3
	rst  $38                                         ; $51f8: $ff
	rst  $38                                         ; $51f9: $ff
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
	ld   bc, $0001                                   ; $521e: $01 $01 $00
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
	inc  bc                                          ; $5236: $03
	inc  bc                                          ; $5237: $03
	inc  b                                           ; $5238: $04
	rlca                                             ; $5239: $07
	jr   c, jr_013_527b                              ; $523a: $38 $3f

	ret  z                                           ; $523c: $c8

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $523d: $cf
	db   $10                                         ; $523e: $10
	ccf                                              ; $523f: $3f
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
	ldh  [$e0], a                                    ; $5254: $e0 $e0
	db   $10                                         ; $5256: $10
	ldh  a, [$08]                                    ; $5257: $f0 $08
	ld   hl, sp+$07                                  ; $5259: $f8 $07
	rst  $38                                         ; $525b: $ff
	inc  b                                           ; $525c: $04
	rst  $38                                         ; $525d: $ff
	inc  b                                           ; $525e: $04
	rst  $38                                         ; $525f: $ff
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

Call_013_5274:
	nop                                              ; $5274: $00
	nop                                              ; $5275: $00
	nop                                              ; $5276: $00
	nop                                              ; $5277: $00
	nop                                              ; $5278: $00
	nop                                              ; $5279: $00
	nop                                              ; $527a: $00

jr_013_527b:
	nop                                              ; $527b: $00
	ret  nz                                          ; $527c: $c0

	ret  nz                                          ; $527d: $c0

	jr   nz, @-$5e                                   ; $527e: $20 $a0

	ld   [bc], a                                     ; $5280: $02
	ld   [bc], a                                     ; $5281: $02
	ld   [bc], a                                     ; $5282: $02
	ld   [bc], a                                     ; $5283: $02
	inc  b                                           ; $5284: $04
	rlca                                             ; $5285: $07
	add  hl, bc                                      ; $5286: $09
	rrca                                             ; $5287: $0f
	ld   e, $1e                                      ; $5288: $1e $1e
	ld   [bc], a                                     ; $528a: $02
	inc  bc                                          ; $528b: $03
	inc  b                                           ; $528c: $04
	rlca                                             ; $528d: $07
	inc  b                                           ; $528e: $04
	rlca                                             ; $528f: $07
	ld   [$110f], sp                                 ; $5290: $08 $0f $11
	rra                                              ; $5293: $1f
	ld   h, c                                        ; $5294: $61
	ld   a, a                                        ; $5295: $7f
	ld   sp, $0f3f                                   ; $5296: $31 $3f $0f
	rrca                                             ; $5299: $0f
	ld   bc, $0301                                   ; $529a: $01 $01 $03
	inc  bc                                          ; $529d: $03
	inc  bc                                          ; $529e: $03
	inc  bc                                          ; $529f: $03
	inc  bc                                          ; $52a0: $03
	ld   a, a                                        ; $52a1: $7f
	inc  c                                           ; $52a2: $0c
	ccf                                              ; $52a3: $3f
	sub  b                                           ; $52a4: $90
	rst  $38                                         ; $52a5: $ff
	jr   nz, jr_013_52d7                             ; $52a6: $20 $2f

	ld   b, b                                        ; $52a8: $40
	ld   e, a                                        ; $52a9: $5f
	ld   b, b                                        ; $52aa: $40
	sbc  $81                                         ; $52ab: $de $81
	sbc  c                                           ; $52ad: $99
	add  d                                           ; $52ae: $82
	sub  d                                           ; $52af: $92
	add  h                                           ; $52b0: $84
	add  h                                           ; $52b1: $84
	ld   [$0f98], sp                                 ; $52b2: $08 $98 $0f
	rst  $38                                         ; $52b5: $ff
	ld   e, $ff                                      ; $52b6: $1e $ff
	dec  e                                           ; $52b8: $1d
	di                                               ; $52b9: $f3
	ccf                                              ; $52ba: $3f
	rst  $28                                         ; $52bb: $ef
	ld   [hl], $f7                                   ; $52bc: $36 $f7
	ld   [hl], h                                     ; $52be: $74
	xor  $84                                         ; $52bf: $ee $84
	rst  $38                                         ; $52c1: $ff
	inc  b                                           ; $52c2: $04
	rst  $38                                         ; $52c3: $ff
	dec  b                                           ; $52c4: $05
	rst  $38                                         ; $52c5: $ff
	nop                                              ; $52c6: $00
	rst  $38                                         ; $52c7: $ff
	ld   [hl], $ff                                   ; $52c8: $36 $ff
	jp   nz, $fffe                                   ; $52ca: $c2 $fe $ff

	rst  $38                                         ; $52cd: $ff
	ld   bc, $0101                                   ; $52ce: $01 $01 $01
	nop                                              ; $52d1: $00
	nop                                              ; $52d2: $00
	nop                                              ; $52d3: $00
	rst  $38                                         ; $52d4: $ff
	rst  $38                                         ; $52d5: $ff
	rst  $38                                         ; $52d6: $ff

jr_013_52d7:
	inc  bc                                          ; $52d7: $03
	rst  $38                                         ; $52d8: $ff
	add  a                                           ; $52d9: $87
	ei                                               ; $52da: $fb
	jp   $87fa                                       ; $52db: $c3 $fa $87


	ld   a, h                                        ; $52de: $7c
	nop                                              ; $52df: $00
	db   $10                                         ; $52e0: $10
	ret  nc                                          ; $52e1: $d0

	db   $10                                         ; $52e2: $10
	ret  nc                                          ; $52e3: $d0

	adc  b                                           ; $52e4: $88
	adc  b                                           ; $52e5: $88
	ld   h, h                                        ; $52e6: $64

jr_013_52e7:
	db   $fc                                         ; $52e7: $fc
	ld   [hl+], a                                    ; $52e8: $22
	cp   $1f                                         ; $52e9: $fe $1f
	rst  $38                                         ; $52eb: $ff
	inc  d                                           ; $52ec: $14
	ld   a, h                                        ; $52ed: $7c
	ld   a, [bc]                                     ; $52ee: $0a
	ld   l, $8a                                      ; $52ef: $2e $8a
	adc  [hl]                                        ; $52f1: $8e
	adc  c                                           ; $52f2: $89
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $52f3: $cf
	ret                                              ; $52f4: $c9


	rst  $38                                         ; $52f5: $ff
	call $eb7f                                       ; $52f6: $cd $7f $eb
	cp   e                                           ; $52f9: $bb
	ld   l, c                                        ; $52fa: $69
	ld   a, c                                        ; $52fb: $79
	ld   a, b                                        ; $52fc: $78
	jr   c, jr_013_52e7                              ; $52fd: $38 $e8

	jr   c, jr_013_5306                              ; $52ff: $38 $05

	dec  b                                           ; $5301: $05
	add  hl, bc                                      ; $5302: $09
	add  hl, bc                                      ; $5303: $09
	ld   a, [bc]                                     ; $5304: $0a
	ld   a, [bc]                                     ; $5305: $0a

jr_013_5306:
	ld   [de], a                                     ; $5306: $12
	ld   [de], a                                     ; $5307: $12
	rla                                              ; $5308: $17
	ld   [de], a                                     ; $5309: $12
	dec  h                                           ; $530a: $25
	dec  h                                           ; $530b: $25
	dec  h                                           ; $530c: $25
	dec  h                                           ; $530d: $25
	inc  h                                           ; $530e: $24
	inc  h                                           ; $530f: $24
	inc  d                                           ; $5310: $14
	inc  d                                           ; $5311: $14
	dec  c                                           ; $5312: $0d
	dec  c                                           ; $5313: $0d
	dec  b                                           ; $5314: $05
	dec  b                                           ; $5315: $05
	ld   bc, $0101                                   ; $5316: $01 $01 $01
	ld   bc, $0101                                   ; $5319: $01 $01 $01
	ld   bc, $0001                                   ; $531c: $01 $01 $00
	nop                                              ; $531f: $00
	ld   a, b                                        ; $5320: $78
	ldh  [$bf], a                                    ; $5321: $e0 $bf
	ldh  a, [$b7]                                    ; $5323: $f0 $b7
	ld   hl, sp+$7b                                  ; $5325: $f8 $7b
	ld   c, h                                        ; $5327: $4c
	ld   c, [hl]                                     ; $5328: $4e
	ld   b, a                                        ; $5329: $47
	jp   $8081                                       ; $532a: $c3 $81 $80


	add  d                                           ; $532d: $82
	add  d                                           ; $532e: $82
	add  d                                           ; $532f: $82
	add  d                                           ; $5330: $82
	add  d                                           ; $5331: $82
	add  e                                           ; $5332: $83
	ld   [bc], a                                     ; $5333: $02
	inc  bc                                          ; $5334: $03
	inc  bc                                          ; $5335: $03
	ld   [bc], a                                     ; $5336: $02
	ld   [bc], a                                     ; $5337: $02
	ccf                                              ; $5338: $3f
	rra                                              ; $5339: $1f
	ld   h, a                                        ; $533a: $67
	ld   a, a                                        ; $533b: $7f
	call c, Call_013_7de4                            ; $533c: $dc $e4 $7d
	ld   b, l                                        ; $533f: $45
	rst  $38                                         ; $5340: $ff
	nop                                              ; $5341: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5342: $cf
	jr   nc, @+$01                                   ; $5343: $30 $ff

	nop                                              ; $5345: $00
	cp   $79                                         ; $5346: $fe $79
	bit  1, a                                        ; $5348: $cb $4f
	cp   $fe                                         ; $534a: $fe $fe
	add  d                                           ; $534c: $82
	cp   $df                                         ; $534d: $fe $df
	rst  $20                                         ; $534f: $e7
	ld   a, a                                        ; $5350: $7f
	db   $fc                                         ; $5351: $fc
	ld   b, a                                        ; $5352: $47
	ld   a, h                                        ; $5353: $7c
	dec  [hl]                                        ; $5354: $35
	ld   a, $8e                                      ; $5355: $3e $8e
	adc  a                                           ; $5357: $8f
	rst  $38                                         ; $5358: $ff
	rst  $38                                         ; $5359: $ff
	cp   $fe                                         ; $535a: $fe $fe
	rst  $20                                         ; $535c: $e7
	rst  $20                                         ; $535d: $e7
	rst  JumpTable                                         ; $535e: $df
	rst  JumpTable                                         ; $535f: $df
	or   b                                           ; $5360: $b0
	ld   [hl], b                                     ; $5361: $70
	ldh  a, [rSVBK]                                  ; $5362: $f0 $70
	ld   c, b                                        ; $5364: $48
	ret  z                                           ; $5365: $c8

	ret  z                                           ; $5366: $c8

	adc  b                                           ; $5367: $88
	add  h                                           ; $5368: $84
	add  h                                           ; $5369: $84
	add  h                                           ; $536a: $84
	add  h                                           ; $536b: $84
	db   $e4                                         ; $536c: $e4
	db   $e4                                         ; $536d: $e4
	db   $f4                                         ; $536e: $f4
	or   h                                           ; $536f: $b4
	db   $fc                                         ; $5370: $fc
	ld   e, h                                        ; $5371: $5c
	db   $fc                                         ; $5372: $fc
	inc  d                                           ; $5373: $14
	call nc, $283c                                   ; $5374: $d4 $3c $28
	ld   hl, sp-$10                                  ; $5377: $f8 $f0
	ldh  a, [rLCDC]                                  ; $5379: $f0 $40
	ld   b, b                                        ; $537b: $40
	ld   b, b                                        ; $537c: $40
	ld   b, b                                        ; $537d: $40
	ret  nz                                          ; $537e: $c0

	ret  nz                                          ; $537f: $c0

	nop                                              ; $5380: $00
	nop                                              ; $5381: $00
	nop                                              ; $5382: $00
	nop                                              ; $5383: $00
	nop                                              ; $5384: $00
	nop                                              ; $5385: $00
	ld   bc, $0101                                   ; $5386: $01 $01 $01
	ld   bc, $0303                                   ; $5389: $01 $03 $03
	rlca                                             ; $538c: $07
	inc  b                                           ; $538d: $04
	rrca                                             ; $538e: $0f
	ld   [$0f0f], sp                                 ; $538f: $08 $0f $0f
	jr   jr_013_53b3                                 ; $5392: $18 $1f

	db   $10                                         ; $5394: $10
	rra                                              ; $5395: $1f
	inc  de                                          ; $5396: $13
	inc  e                                           ; $5397: $1c
	rra                                              ; $5398: $1f
	rra                                              ; $5399: $1f
	nop                                              ; $539a: $00
	nop                                              ; $539b: $00
	nop                                              ; $539c: $00
	nop                                              ; $539d: $00
	nop                                              ; $539e: $00
	nop                                              ; $539f: $00
	ld   a, a                                        ; $53a0: $7f
	ld   b, a                                        ; $53a1: $47
	rst  $38                                         ; $53a2: $ff
	rst  ToBoot                                         ; $53a3: $c7
	ei                                               ; $53a4: $fb
	add  a                                           ; $53a5: $87
	ld   a, a                                        ; $53a6: $7f
	add  e                                           ; $53a7: $83
	rst  $38                                         ; $53a8: $ff
	inc  bc                                          ; $53a9: $03
	rst  $38                                         ; $53aa: $ff
	inc  bc                                          ; $53ab: $03
	ld   a, [$fc86]                                  ; $53ac: $fa $86 $fc
	db   $fc                                         ; $53af: $fc
	ld   hl, sp-$78                                  ; $53b0: $f8 $88
	ld   [hl], b                                     ; $53b2: $70

jr_013_53b3:
	ldh  a, [hScriptOpcodeParams]                                    ; $53b3: $f0 $a0
	ld   h, b                                        ; $53b5: $60
	jr   nz, jr_013_5418                             ; $53b6: $20 $60

	ret  nz                                          ; $53b8: $c0

	ret  nz                                          ; $53b9: $c0

	nop                                              ; $53ba: $00
	nop                                              ; $53bb: $00
	nop                                              ; $53bc: $00
	nop                                              ; $53bd: $00
	nop                                              ; $53be: $00
	nop                                              ; $53bf: $00
	rst  $38                                         ; $53c0: $ff
	rst  $38                                         ; $53c1: $ff
	sbc  a                                           ; $53c2: $9f
	sbc  a                                           ; $53c3: $9f
	adc  a                                           ; $53c4: $8f
	adc  a                                           ; $53c5: $8f
	adc  a                                           ; $53c6: $8f
	adc  a                                           ; $53c7: $8f
	rlca                                             ; $53c8: $07
	rlca                                             ; $53c9: $07
	rlca                                             ; $53ca: $07
	rlca                                             ; $53cb: $07
	rlca                                             ; $53cc: $07
	inc  b                                           ; $53cd: $04
	rlca                                             ; $53ce: $07
	inc  b                                           ; $53cf: $04
	ld   b, $05                                      ; $53d0: $06 $05
	dec  b                                           ; $53d2: $05
	rlca                                             ; $53d3: $07
	inc  b                                           ; $53d4: $04
	rlca                                             ; $53d5: $07
	inc  b                                           ; $53d6: $04
	rlca                                             ; $53d7: $07
	inc  bc                                          ; $53d8: $03
	inc  bc                                          ; $53d9: $03
	nop                                              ; $53da: $00
	nop                                              ; $53db: $00
	nop                                              ; $53dc: $00
	nop                                              ; $53dd: $00
	nop                                              ; $53de: $00
	nop                                              ; $53df: $00
	ldh  [$e0], a                                    ; $53e0: $e0 $e0
	ldh  [$e0], a                                    ; $53e2: $e0 $e0
	ldh  a, [$f0]                                    ; $53e4: $f0 $f0
	ldh  a, [$f0]                                    ; $53e6: $f0 $f0
	ldh  a, [$f0]                                    ; $53e8: $f0 $f0
	ldh  a, [$f0]                                    ; $53ea: $f0 $f0
	ldh  a, [rAUD1SWEEP]                             ; $53ec: $f0 $10
	ret  nc                                          ; $53ee: $d0

	jr   nc, @-$06                                   ; $53ef: $30 $f8

	ld   hl, sp+$0c                                  ; $53f1: $f8 $0c
	db   $fc                                         ; $53f3: $fc
	inc  d                                           ; $53f4: $14
	db   $ec                                         ; $53f5: $ec
	ld   h, h                                        ; $53f6: $64
	adc  h                                           ; $53f7: $8c
	db   $fc                                         ; $53f8: $fc
	db   $fc                                         ; $53f9: $fc
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

jr_013_5418:
	ld   bc, $0601                                   ; $5418: $01 $01 $06
	ld   b, $38                                      ; $541b: $06 $38
	jr   c, @+$22                                    ; $541d: $38 $20

	ld   a, $00                                      ; $541f: $3e $00
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
	inc  bc                                          ; $542e: $03
	inc  bc                                          ; $542f: $03
	dec  c                                           ; $5430: $0d
	rrca                                             ; $5431: $0f
	ld   [hl-], a                                    ; $5432: $32
	ccf                                              ; $5433: $3f
	ld   b, h                                        ; $5434: $44
	ld   a, a                                        ; $5435: $7f
	add  b                                           ; $5436: $80
	rst  $38                                         ; $5437: $ff
	nop                                              ; $5438: $00
	ld   a, a                                        ; $5439: $7f
	nop                                              ; $543a: $00
	ld   a, a                                        ; $543b: $7f
	db   $10                                         ; $543c: $10
	rst  $38                                         ; $543d: $ff
	jr   nz, jr_013_54ae                             ; $543e: $20 $6e

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
	ld   a, b                                        ; $544c: $78
	ld   a, b                                        ; $544d: $78
	add  h                                           ; $544e: $84
	db   $fc                                         ; $544f: $fc
	ld   [bc], a                                     ; $5450: $02
	cp   $02                                         ; $5451: $fe $02
	cp   $01                                         ; $5453: $fe $01
	rst  $38                                         ; $5455: $ff
	ld   bc, $19ff                                   ; $5456: $01 $ff $19
	rst  $38                                         ; $5459: $ff
	ld   [hl+], a                                    ; $545a: $22
	rst  $38                                         ; $545b: $ff

jr_013_545c:
	ld   a, a                                        ; $545c: $7f
	ld   a, a                                        ; $545d: $7f
	add  c                                           ; $545e: $81
	add  b                                           ; $545f: $80
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
	ret  nz                                          ; $5478: $c0

	ret  nz                                          ; $5479: $c0

	jr   nz, jr_013_545c                             ; $547a: $20 $e0

	db   $10                                         ; $547c: $10
	ldh  a, [$88]                                    ; $547d: $f0 $88
	add  sp, $18                                     ; $547f: $e8 $18
	rra                                              ; $5481: $1f
	rlca                                             ; $5482: $07
	rlca                                             ; $5483: $07
	ld   [bc], a                                     ; $5484: $02
	ld   [bc], a                                     ; $5485: $02
	inc  b                                           ; $5486: $04
	inc  b                                           ; $5487: $04
	inc  b                                           ; $5488: $04
	inc  b                                           ; $5489: $04
	ld   [$080f], sp                                 ; $548a: $08 $0f $08
	rrca                                             ; $548d: $0f
	ld   de, $3e1f                                   ; $548e: $11 $1f $3e
	ccf                                              ; $5491: $3f
	ld   [bc], a                                     ; $5492: $02
	inc  bc                                          ; $5493: $03
	ld   [bc], a                                     ; $5494: $02
	inc  bc                                          ; $5495: $03
	ld   bc, $0101                                   ; $5496: $01 $01 $01
	ld   bc, $0101                                   ; $5499: $01 $01 $01
	rlca                                             ; $549c: $07
	rlca                                             ; $549d: $07
	inc  c                                           ; $549e: $0c
	inc  c                                           ; $549f: $0c
	and  c                                           ; $54a0: $a1
	db   $ed                                         ; $54a1: $ed
	ld   b, c                                        ; $54a2: $41
	ld   e, c                                        ; $54a3: $59
	ld   b, e                                        ; $54a4: $43
	jp   $c782                                       ; $54a5: $c3 $82 $c7


	add  a                                           ; $54a8: $87
	db   $dd                                         ; $54a9: $dd
	add  a                                           ; $54aa: $87
	rst  $38                                         ; $54ab: $ff
	adc  e                                           ; $54ac: $8b
	ei                                               ; $54ad: $fb

jr_013_54ae:
	adc  d                                           ; $54ae: $8a
	rst  $38                                         ; $54af: $ff
	adc  h                                           ; $54b0: $8c
	ld   hl, sp-$69                                  ; $54b1: $f8 $97
	ld   hl, sp-$69                                  ; $54b3: $f8 $97
	ld   hl, sp+$57                                  ; $54b5: $f8 $57
	ld   hl, sp+$7f                                  ; $54b7: $f8 $7f
	db   $fc                                         ; $54b9: $fc
	add  d                                           ; $54ba: $82
	add  e                                           ; $54bb: $83
	inc  bc                                          ; $54bc: $03
	inc  bc                                          ; $54bd: $03
	call z, $80cf                                    ; $54be: $cc $cf $80
	nop                                              ; $54c1: $00
	nop                                              ; $54c2: $00
	nop                                              ; $54c3: $00
	rst  $38                                         ; $54c4: $ff
	rst  $38                                         ; $54c5: $ff
	cp   $01                                         ; $54c6: $fe $01
	rst  $38                                         ; $54c8: $ff
	add  e                                           ; $54c9: $83
	rst  JumpTable                                         ; $54ca: $df
	rst  $20                                         ; $54cb: $e7
	ei                                               ; $54cc: $fb
	add  e                                           ; $54cd: $83
	ld   a, d                                        ; $54ce: $7a
	rlca                                             ; $54cf: $07
	db   $fc                                         ; $54d0: $fc
	nop                                              ; $54d1: $00
	rst  $20                                         ; $54d2: $e7
	jr   @+$01                                       ; $54d3: $18 $ff

	nop                                              ; $54d5: $00
	rst  $38                                         ; $54d6: $ff
	inc  a                                           ; $54d7: $3c
	and  $25                                         ; $54d8: $e6 $25
	call c, $c038                                    ; $54da: $dc $38 $c0
	ret  nz                                          ; $54dd: $c0

	inc  e                                           ; $54de: $1c
	nop                                              ; $54df: $00
	adc  b                                           ; $54e0: $88
	xor  b                                           ; $54e1: $a8
	ld   b, h                                        ; $54e2: $44
	ld   c, h                                        ; $54e3: $4c
	call nz, $e4cc                                   ; $54e4: $c4 $cc $e4
	db   $fc                                         ; $54e7: $fc
	db   $e4                                         ; $54e8: $e4
	ld   a, h                                        ; $54e9: $7c
	call nc, Call_013_54fc                           ; $54ea: $d4 $fc $54
	ld   a, h                                        ; $54ed: $7c
	ld   l, b                                        ; $54ee: $68
	ld   l, b                                        ; $54ef: $68
	add  sp, $68                                     ; $54f0: $e8 $68
	ret  nc                                          ; $54f2: $d0

	ld   [hl], b                                     ; $54f3: $70
	call z, Call_013_587c                            ; $54f4: $cc $7c $58
	ld   hl, sp-$72                                  ; $54f7: $f8 $8e
	add  [hl]                                        ; $54f9: $86
	ld   [hl], e                                     ; $54fa: $73
	ld   [hl], c                                     ; $54fb: $71

Call_013_54fc:
	ld   e, l                                        ; $54fc: $5d
	ld   a, c                                        ; $54fd: $79
	jp   hl                                          ; $54fe: $e9


	sbc  c                                           ; $54ff: $99
	ld   [$1808], sp                                 ; $5500: $08 $08 $18
	jr   jr_013_551f                                 ; $5503: $18 $1a

	ld   d, $6d                                      ; $5505: $16 $6d
	ld   [hl], e                                     ; $5507: $73
	cp   a                                           ; $5508: $bf
	rst  ToBoot                                         ; $5509: $c7
	rst  $38                                         ; $550a: $ff
	add  a                                           ; $550b: $87
	ei                                               ; $550c: $fb
	adc  e                                           ; $550d: $8b
	db   $eb                                         ; $550e: $eb
	sbc  e                                           ; $550f: $9b
	xor  a                                           ; $5510: $af
	sbc  $77                                         ; $5511: $de $77
	ld   [hl], h                                     ; $5513: $74
	dec  b                                           ; $5514: $05
	inc  bc                                          ; $5515: $03
	rlca                                             ; $5516: $07
	inc  bc                                          ; $5517: $03
	dec  bc                                          ; $5518: $0b
	inc  bc                                          ; $5519: $03
	ld   bc, $0001                                   ; $551a: $01 $01 $00
	nop                                              ; $551d: $00
	nop                                              ; $551e: $00

jr_013_551f:
	nop                                              ; $551f: $00
	ld   a, $38                                      ; $5520: $3e $38
	inc  a                                           ; $5522: $3c
	ld   hl, $c7b8                                   ; $5523: $21 $b8 $c7
	di                                               ; $5526: $f3
	adc  h                                           ; $5527: $8c
	ld   l, a                                        ; $5528: $6f
	sub  b                                           ; $5529: $90
	rst  JumpTable                                         ; $552a: $df
	jr   nz, @+$01                                   ; $552b: $20 $ff

	nop                                              ; $552d: $00
	rst  $38                                         ; $552e: $ff
	rlca                                             ; $552f: $07
	rst  $38                                         ; $5530: $ff
	rra                                              ; $5531: $1f
	rst  $38                                         ; $5532: $ff
	ld   a, [hl]                                     ; $5533: $7e
	rst  $38                                         ; $5534: $ff
	rst  $38                                         ; $5535: $ff
	rst  $38                                         ; $5536: $ff
	rst  $38                                         ; $5537: $ff
	rst  $38                                         ; $5538: $ff
	rst  $38                                         ; $5539: $ff
	rst  $38                                         ; $553a: $ff
	rst  $38                                         ; $553b: $ff
	rlca                                             ; $553c: $07
	rlca                                             ; $553d: $07
	inc  bc                                          ; $553e: $03
	inc  bc                                          ; $553f: $03
	inc  sp                                          ; $5540: $33
	ld   b, e                                        ; $5541: $43
	ld   h, a                                        ; $5542: $67
	adc  a                                           ; $5543: $8f
	adc  $37                                         ; $5544: $ce $37
	or   a                                           ; $5546: $b7
	ld   c, a                                        ; $5547: $4f
	ld   [$e21a], a                                  ; $5548: $ea $1a $e2
	ld   h, d                                        ; $554b: $62
	add  $82                                         ; $554c: $c6 $82
	rst  $30                                         ; $554e: $f7
	rst  $30                                         ; $554f: $f7
	dec  a                                           ; $5550: $3d
	dec  a                                           ; $5551: $3d
	ccf                                              ; $5552: $3f
	ccf                                              ; $5553: $3f
	or   h                                           ; $5554: $b4
	or   h                                           ; $5555: $b4
	db   $f4                                         ; $5556: $f4
	db   $f4                                         ; $5557: $f4
	db   $f4                                         ; $5558: $f4
	db   $f4                                         ; $5559: $f4
	db   $f4                                         ; $555a: $f4
	db   $f4                                         ; $555b: $f4
	ld   hl, sp-$08                                  ; $555c: $f8 $f8
	ld   hl, sp-$08                                  ; $555e: $f8 $f8
	or   $0e                                         ; $5560: $f6 $0e
	db   $f4                                         ; $5562: $f4
	inc  c                                           ; $5563: $0c
	db   $fc                                         ; $5564: $fc
	inc  c                                           ; $5565: $0c
	ld   [hl], d                                     ; $5566: $72
	sbc  [hl]                                        ; $5567: $9e
	and  $fa                                         ; $5568: $e6 $fa
	adc  $f2                                         ; $556a: $ce $f2
	jp   c, $dee6                                    ; $556c: $da $e6 $de

	and  $a4                                         ; $556f: $e6 $a4
	cp   h                                           ; $5571: $bc
	jr   jr_013_558c                                 ; $5572: $18 $18

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

jr_013_558c:
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
	inc  bc                                          ; $55a0: $03
	inc  bc                                          ; $55a1: $03
	rlca                                             ; $55a2: $07
	rlca                                             ; $55a3: $07
	rlca                                             ; $55a4: $07
	rlca                                             ; $55a5: $07
	rlca                                             ; $55a6: $07
	rlca                                             ; $55a7: $07
	dec  bc                                          ; $55a8: $0b
	rrca                                             ; $55a9: $0f
	rrca                                             ; $55aa: $0f
	ld   [$080f], sp                                 ; $55ab: $08 $0f $08
	rrca                                             ; $55ae: $0f
	ld   [$1f10], sp                                 ; $55af: $08 $10 $1f
	db   $10                                         ; $55b2: $10
	rra                                              ; $55b3: $1f
	db   $10                                         ; $55b4: $10
	rra                                              ; $55b5: $1f
	db   $10                                         ; $55b6: $10
	rra                                              ; $55b7: $1f
	rrca                                             ; $55b8: $0f
	rrca                                             ; $55b9: $0f
	nop                                              ; $55ba: $00
	nop                                              ; $55bb: $00
	nop                                              ; $55bc: $00
	nop                                              ; $55bd: $00
	nop                                              ; $55be: $00
	nop                                              ; $55bf: $00
	ld   hl, sp-$08                                  ; $55c0: $f8 $f8
	ldh  a, [$f0]                                    ; $55c2: $f0 $f0
	ldh  a, [$f0]                                    ; $55c4: $f0 $f0
	ldh  a, [$f0]                                    ; $55c6: $f0 $f0
	ldh  [$e0], a                                    ; $55c8: $e0 $e0
	and  b                                           ; $55ca: $a0
	ld   h, b                                        ; $55cb: $60
	ldh  [rAUD4LEN], a                               ; $55cc: $e0 $20
	ld   b, b                                        ; $55ce: $40
	ret  nz                                          ; $55cf: $c0

	ld   h, b                                        ; $55d0: $60

jr_013_55d1:
	ldh  [rAUD1SWEEP], a                             ; $55d1: $e0 $10
	ldh  a, [$28]                                    ; $55d3: $f0 $28
	ret  c                                           ; $55d5: $d8

	ret  z                                           ; $55d6: $c8

	jr   jr_013_55d1                                 ; $55d7: $18 $f8

	ld   hl, sp+$00                                  ; $55d9: $f8 $00
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
	ccf                                              ; $5614: $3f
	ccf                                              ; $5615: $3f
	db   $10                                         ; $5616: $10
	ld   e, $0c                                      ; $5617: $1e $0c
	rrca                                             ; $5619: $0f
	inc  bc                                          ; $561a: $03
	inc  bc                                          ; $561b: $03
	ld   bc, $0201                                   ; $561c: $01 $01 $02
	inc  bc                                          ; $561f: $03
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
	rlca                                             ; $562c: $07
	rlca                                             ; $562d: $07
	add  hl, de                                      ; $562e: $19
	rra                                              ; $562f: $1f
	ld   [hl+], a                                    ; $5630: $22
	ccf                                              ; $5631: $3f
	ret  nz                                          ; $5632: $c0

	rst  JumpTable                                         ; $5633: $df
	nop                                              ; $5634: $00
	ccf                                              ; $5635: $3f
	jr   jr_013_5657                                 ; $5636: $18 $1f

	ld   h, b                                        ; $5638: $60
	rst  $38                                         ; $5639: $ff
	sub  b                                           ; $563a: $90
	sbc  a                                           ; $563b: $9f
	ld   hl, $232d                                   ; $563c: $21 $2d $23
	ld   [rRAMG], a                                  ; $563f: $ea $00 $00
	nop                                              ; $5642: $00
	nop                                              ; $5643: $00
	nop                                              ; $5644: $00
	nop                                              ; $5645: $00
	nop                                              ; $5646: $00
	nop                                              ; $5647: $00
	nop                                              ; $5648: $00
	nop                                              ; $5649: $00
	ld   [hl], b                                     ; $564a: $70
	ld   [hl], b                                     ; $564b: $70
	adc  b                                           ; $564c: $88
	ld   hl, sp+$04                                  ; $564d: $f8 $04
	db   $fc                                         ; $564f: $fc
	inc  b                                           ; $5650: $04
	db   $fc                                         ; $5651: $fc
	rlca                                             ; $5652: $07
	rst  $38                                         ; $5653: $ff
	inc  b                                           ; $5654: $04
	rst  $38                                         ; $5655: $ff
	inc  b                                           ; $5656: $04

jr_013_5657:
	rst  $38                                         ; $5657: $ff
	ld   h, [hl]                                     ; $5658: $66
	rst  $38                                         ; $5659: $ff
	ret                                              ; $565a: $c9


	rst  $38                                         ; $565b: $ff
	db   $fc                                         ; $565c: $fc
	rst  $38                                         ; $565d: $ff
	inc  b                                           ; $565e: $04
	rlca                                             ; $565f: $07
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
	add  b                                           ; $5672: $80
	add  b                                           ; $5673: $80
	ld   h, b                                        ; $5674: $60
	ldh  [rAUD1SWEEP], a                             ; $5675: $e0 $10
	ldh  a, [$08]                                    ; $5677: $f0 $08
	ret  z                                           ; $5679: $c8

	inc  h                                           ; $567a: $24
	db   $e4                                         ; $567b: $e4
	sub  d                                           ; $567c: $92
	cp   [hl]                                        ; $567d: $be
	adc  a                                           ; $567e: $8f
	sbc  a                                           ; $567f: $9f
	inc  b                                           ; $5680: $04
	rlca                                             ; $5681: $07
	inc  b                                           ; $5682: $04
	rlca                                             ; $5683: $07
	ld   [$080f], sp                                 ; $5684: $08 $0f $08
	rrca                                             ; $5687: $0f
	db   $10                                         ; $5688: $10
	rra                                              ; $5689: $1f
	inc  de                                          ; $568a: $13
	rra                                              ; $568b: $1f
	dec  a                                           ; $568c: $3d
	dec  a                                           ; $568d: $3d
	ld   bc, $0101                                   ; $568e: $01 $01 $01
	ld   bc, $0101                                   ; $5691: $01 $01 $01
	ld   bc, $0101                                   ; $5694: $01 $01 $01
	ld   bc, $0101                                   ; $5697: $01 $01 $01
	ld   b, $06                                      ; $569a: $06 $06
	dec  de                                          ; $569c: $1b
	dec  de                                          ; $569d: $1b
	dec  l                                           ; $569e: $2d
	ld   l, $42                                      ; $569f: $2e $42
	jp   nc, $c444                                   ; $56a1: $d2 $44 $c4

	add  a                                           ; $56a4: $87
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $56a5: $cf
	adc  l                                           ; $56a6: $8d
	sbc  $8f                                         ; $56a7: $de $8f
	ei                                               ; $56a9: $fb
	rra                                              ; $56aa: $1f
	rst  $38                                         ; $56ab: $ff
	rla                                              ; $56ac: $17
	rst  $30                                         ; $56ad: $f7
	inc  h                                           ; $56ae: $24
	xor  $39                                         ; $56af: $ee $39
	ldh  [$7f], a                                    ; $56b1: $e0 $7f
	ldh  [$bf], a                                    ; $56b3: $e0 $bf
	ldh  [$af], a                                    ; $56b5: $e0 $af
	ldh  a, [$7f]                                    ; $56b7: $f0 $7f
	ld   [hl], b                                     ; $56b9: $70
	sbc  e                                           ; $56ba: $9b
	adc  h                                           ; $56bb: $8c
	adc  [hl]                                        ; $56bc: $8e
	add  a                                           ; $56bd: $87
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $56be: $cf
	ld   c, e                                        ; $56bf: $4b
	ld   b, $02                                      ; $56c0: $06 $02
	ld   [bc], a                                     ; $56c2: $02
	ld   [bc], a                                     ; $56c3: $02
	cp   $ff                                         ; $56c4: $fe $ff
	ei                                               ; $56c6: $fb
	rlca                                             ; $56c7: $07
	rst  $38                                         ; $56c8: $ff
	dec  c                                           ; $56c9: $0d
	rst  $38                                         ; $56ca: $ff
	sbc  a                                           ; $56cb: $9f
	ei                                               ; $56cc: $fb
	dec  bc                                          ; $56cd: $0b
	ldh  a, [c]                                      ; $56ce: $f2
	rlca                                             ; $56cf: $07
	ld   sp, hl                                      ; $56d0: $f9
	nop                                              ; $56d1: $00
	sbc  a                                           ; $56d2: $9f
	ld   h, b                                        ; $56d3: $60
	rst  $38                                         ; $56d4: $ff
	nop                                              ; $56d5: $00
	rst  $38                                         ; $56d6: $ff
	ldh  a, [$9f]                                    ; $56d7: $f0 $9f
	sub  b                                           ; $56d9: $90
	ld   l, l                                        ; $56da: $6d
	di                                               ; $56db: $f3
	or   $0e                                         ; $56dc: $f6 $0e
	ld   hl, sp-$08                                  ; $56de: $f8 $f8
	ld   c, b                                        ; $56e0: $48
	ret  z                                           ; $56e1: $c8

	ld   b, h                                        ; $56e2: $44
	ld   a, h                                        ; $56e3: $7c
	inc  h                                           ; $56e4: $24
	ld   a, h                                        ; $56e5: $7c
	ld   [hl+], a                                    ; $56e6: $22
	cp   $22                                         ; $56e7: $fe $22
	cp   $32                                         ; $56e9: $fe $32
	cp   $a9                                         ; $56eb: $fe $a9
	rst  $38                                         ; $56ed: $ff
	and  l                                           ; $56ee: $a5
	rst  $38                                         ; $56ef: $ff
	xor  e                                           ; $56f0: $ab
	ei                                               ; $56f1: $fb
	add  sp, $78                                     ; $56f2: $e8 $78
	call nc, Call_013_5274                           ; $56f4: $d4 $74 $52
	ldh  a, [c]                                      ; $56f7: $f2
	xor  d                                           ; $56f8: $aa
	ld   [wPointerToPlayerNameToEnter+1], a                                  ; $56f9: $ea $49 $c9
	ld   c, l                                        ; $56fc: $4d
	ret                                              ; $56fd: $c9


	add  l                                           ; $56fe: $85
	add  l                                           ; $56ff: $85
	ld   c, e                                        ; $5700: $4b
	ld   c, h                                        ; $5701: $4c
	ld   e, a                                        ; $5702: $5f
	ld   d, b                                        ; $5703: $50
	ld   e, a                                        ; $5704: $5f
	ld   d, b                                        ; $5705: $50
	ld   e, a                                        ; $5706: $5f
	ld   e, b                                        ; $5707: $58
	ld   c, a                                        ; $5708: $4f
	ld   c, c                                        ; $5709: $49
	ccf                                              ; $570a: $3f
	ccf                                              ; $570b: $3f
	ld   bc, $0201                                   ; $570c: $01 $01 $02
	ld   [bc], a                                     ; $570f: $02
	ld   [bc], a                                     ; $5710: $02
	ld   [bc], a                                     ; $5711: $02
	inc  b                                           ; $5712: $04
	dec  b                                           ; $5713: $05
	inc  bc                                          ; $5714: $03

jr_013_5715:
	inc  bc                                          ; $5715: $03
	rrca                                             ; $5716: $0f
	rrca                                             ; $5717: $0f
	rrca                                             ; $5718: $0f
	rrca                                             ; $5719: $0f
	rra                                              ; $571a: $1f
	rra                                              ; $571b: $1f
	ccf                                              ; $571c: $3f
	daa                                              ; $571d: $27
	ld   a, l                                        ; $571e: $7d
	ld   h, e                                        ; $571f: $63
	ld   [$eb2b], a                                  ; $5720: $ea $2b $eb
	dec  hl                                          ; $5723: $2b
	ld   [wGameResultsOfficeWeek4Kasumi], a                                  ; $5724: $ea $2b $ca
	ld   c, e                                        ; $5727: $4b
	adc  d                                           ; $5728: $8a
	adc  e                                           ; $5729: $8b
	adc  [hl]                                        ; $572a: $8e
	dec  bc                                          ; $572b: $0b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $572c: $cf
	add  a                                           ; $572d: $87
	ld   [hl], h                                     ; $572e: $74
	ld   [hl], h                                     ; $572f: $74
	rra                                              ; $5730: $1f
	rst  $38                                         ; $5731: $ff
	rst  $38                                         ; $5732: $ff
	rst  $38                                         ; $5733: $ff
	rst  $38                                         ; $5734: $ff
	rst  $38                                         ; $5735: $ff
	rst  $38                                         ; $5736: $ff
	rst  $38                                         ; $5737: $ff
	rst  $38                                         ; $5738: $ff
	rst  $38                                         ; $5739: $ff
	cp   $fe                                         ; $573a: $fe $fe
	rst  $38                                         ; $573c: $ff
	rst  $38                                         ; $573d: $ff
	di                                               ; $573e: $f3
	di                                               ; $573f: $f3
	ld   e, $fe                                      ; $5740: $1e $fe
	cp   $3a                                         ; $5742: $fe $3a
	db   $eb                                         ; $5744: $eb
	ld   sp, hl                                      ; $5745: $f9
	dec  bc                                          ; $5746: $0b
	ld   a, [$fe0d]                                  ; $5747: $fa $0d $fe
	rla                                              ; $574a: $17
	db   $f4                                         ; $574b: $f4
	db   $eb                                         ; $574c: $eb
	db   $ec                                         ; $574d: $ec
	ccf                                              ; $574e: $3f
	inc  e                                           ; $574f: $1c
	rst  $30                                         ; $5750: $f7
	di                                               ; $5751: $f3
	dec  bc                                          ; $5752: $0b
	ld   a, [bc]                                     ; $5753: $0a
	cp   $ff                                         ; $5754: $fe $ff
	db   $fd                                         ; $5756: $fd
	db   $fd                                         ; $5757: $fd
	ld   h, h                                        ; $5758: $64
	ld   h, h                                        ; $5759: $64
	ld   [hl-], a                                    ; $575a: $32
	ld   [hl-], a                                    ; $575b: $32
	cp   [hl]                                        ; $575c: $be
	cp   [hl]                                        ; $575d: $be
	db   $fc                                         ; $575e: $fc
	db   $fc                                         ; $575f: $fc
	dec  b                                           ; $5760: $05
	dec  b                                           ; $5761: $05
	inc  bc                                          ; $5762: $03
	inc  bc                                          ; $5763: $03
	pop  bc                                          ; $5764: $c1
	pop  bc                                          ; $5765: $c1
	and  b                                           ; $5766: $a0
	ld   h, b                                        ; $5767: $60
	ldh  [rAUD4LEN], a                               ; $5768: $e0 $20
	ldh  [rAUD4LEN], a                               ; $576a: $e0 $20
	ldh  [rAUD4LEN], a                               ; $576c: $e0 $20
	ldh  a, [$50]                                    ; $576e: $f0 $50
	ldh  a, [$90]                                    ; $5770: $f0 $90
	ret  nc                                          ; $5772: $d0

	jr   nc, jr_013_5715                             ; $5773: $30 $a0

	ld   h, b                                        ; $5775: $60
	ret  nz                                          ; $5776: $c0

	ret  nz                                          ; $5777: $c0

	nop                                              ; $5778: $00
	nop                                              ; $5779: $00
	nop                                              ; $577a: $00
	nop                                              ; $577b: $00
	nop                                              ; $577c: $00
	nop                                              ; $577d: $00
	nop                                              ; $577e: $00
	nop                                              ; $577f: $00
	ld   e, a                                        ; $5780: $5f
	ld   [hl], b                                     ; $5781: $70
	adc  e                                           ; $5782: $8b
	db   $fd                                         ; $5783: $fd
	add  a                                           ; $5784: $87
	rst  $38                                         ; $5785: $ff
	jp   z, $a4b6                                    ; $5786: $ca $b6 $a4

	call z, $f888                                    ; $5789: $cc $88 $f8
	ld   [hl], b                                     ; $578c: $70
	ld   [hl], b                                     ; $578d: $70
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
	add  e                                           ; $57a0: $83
	add  e                                           ; $57a1: $83
	ld   bc, $0101                                   ; $57a2: $01 $01 $01
	ld   bc, $0101                                   ; $57a5: $01 $01 $01
	ld   bc, $0201                                   ; $57a8: $01 $01 $02
	inc  bc                                          ; $57ab: $03
	rlca                                             ; $57ac: $07
	inc  b                                           ; $57ad: $04
	rlca                                             ; $57ae: $07
	inc  b                                           ; $57af: $04
	ld   b, $07                                      ; $57b0: $06 $07
	rlca                                             ; $57b2: $07
	rlca                                             ; $57b3: $07
	ld   b, $07                                      ; $57b4: $06 $07
	ld   [bc], a                                     ; $57b6: $02
	inc  bc                                          ; $57b7: $03
	ld   bc, $0001                                   ; $57b8: $01 $01 $00
	nop                                              ; $57bb: $00
	nop                                              ; $57bc: $00
	nop                                              ; $57bd: $00
	nop                                              ; $57be: $00
	nop                                              ; $57bf: $00
	ld   hl, sp-$08                                  ; $57c0: $f8 $f8
	ld   hl, sp-$08                                  ; $57c2: $f8 $f8
	ld   hl, sp-$08                                  ; $57c4: $f8 $f8
	ld   hl, sp-$08                                  ; $57c6: $f8 $f8
	ld   hl, sp-$08                                  ; $57c8: $f8 $f8
	ld   hl, sp-$08                                  ; $57ca: $f8 $f8
	ld   hl, sp+$18                                  ; $57cc: $f8 $18
	ret  nc                                          ; $57ce: $d0

	jr   nc, @-$06                                   ; $57cf: $30 $f8

	ld   hl, sp+$04                                  ; $57d1: $f8 $04
	db   $fc                                         ; $57d3: $fc
	ld   [de], a                                     ; $57d4: $12
	xor  $62                                         ; $57d5: $ee $62
	adc  [hl]                                        ; $57d7: $8e
	cp   $fe                                         ; $57d8: $fe $fe
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
	nop                                              ; $5816: $00
	nop                                              ; $5817: $00
	nop                                              ; $5818: $00
	nop                                              ; $5819: $00
	nop                                              ; $581a: $00
	nop                                              ; $581b: $00
	ld   bc, $0101                                   ; $581c: $01 $01 $01
	ld   bc, $0000                                   ; $581f: $01 $00 $00
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
	rlca                                             ; $582e: $07
	rlca                                             ; $582f: $07
	jr   jr_013_5851                                 ; $5830: $18 $1f

	jr   nz, @+$39                                   ; $5832: $20 $37

	ld   b, b                                        ; $5834: $40
	ld   c, a                                        ; $5835: $4f
	ld   b, b                                        ; $5836: $40
	ld   e, a                                        ; $5837: $5f
	add  c                                           ; $5838: $81
	sbc  l                                           ; $5839: $9d
	add  d                                           ; $583a: $82
	add  e                                           ; $583b: $83
	inc  b                                           ; $583c: $04
	sbc  l                                           ; $583d: $9d
	inc  d                                           ; $583e: $14
	db   $fc                                         ; $583f: $fc
	nop                                              ; $5840: $00
	nop                                              ; $5841: $00
	nop                                              ; $5842: $00
	nop                                              ; $5843: $00
	nop                                              ; $5844: $00
	nop                                              ; $5845: $00
	nop                                              ; $5846: $00
	nop                                              ; $5847: $00
	nop                                              ; $5848: $00

jr_013_5849:
	nop                                              ; $5849: $00
	ld   bc, $fa01                                   ; $584a: $01 $01 $fa
	ei                                               ; $584d: $fb
	inc  b                                           ; $584e: $04
	rst  $38                                         ; $584f: $ff
	nop                                              ; $5850: $00

jr_013_5851:
	rst  $38                                         ; $5851: $ff
	nop                                              ; $5852: $00
	rst  $38                                         ; $5853: $ff
	db   $10                                         ; $5854: $10
	rst  $38                                         ; $5855: $ff
	jr   nz, @+$01                                   ; $5856: $20 $ff

	jr   nz, jr_013_5849                             ; $5858: $20 $ef

	ld   b, c                                        ; $585a: $41
	db   $dd                                         ; $585b: $dd
	ld   b, d                                        ; $585c: $42
	jp   nc, Jump_013_4444                           ; $585d: $d2 $44 $44

	nop                                              ; $5860: $00
	nop                                              ; $5861: $00
	nop                                              ; $5862: $00
	nop                                              ; $5863: $00
	nop                                              ; $5864: $00
	nop                                              ; $5865: $00
	nop                                              ; $5866: $00
	nop                                              ; $5867: $00
	nop                                              ; $5868: $00
	nop                                              ; $5869: $00
	ldh  [$e0], a                                    ; $586a: $e0 $e0
	db   $10                                         ; $586c: $10
	ldh  a, [$08]                                    ; $586d: $f0 $08
	ld   hl, sp+$08                                  ; $586f: $f8 $08
	ld   hl, sp+$04                                  ; $5871: $f8 $04
	db   $fc                                         ; $5873: $fc
	inc  b                                           ; $5874: $04
	db   $fc                                         ; $5875: $fc
	ld   h, h                                        ; $5876: $64
	db   $fc                                         ; $5877: $fc
	adc  $fe                                         ; $5878: $ce $fe
	pop  af                                          ; $587a: $f1
	rst  $38                                         ; $587b: $ff

Call_013_587c:
	db   $10                                         ; $587c: $10
	inc  e                                           ; $587d: $1c
	ld   d, $1f                                      ; $587e: $16 $1f
	ld   [bc], a                                     ; $5880: $02
	inc  bc                                          ; $5881: $03
	inc  b                                           ; $5882: $04
	rlca                                             ; $5883: $07
	rrca                                             ; $5884: $0f
	rrca                                             ; $5885: $0f
	inc  bc                                          ; $5886: $03
	ld   [bc], a                                     ; $5887: $02
	rlca                                             ; $5888: $07
	inc  b                                           ; $5889: $04
	dec  c                                           ; $588a: $0d
	ld   [TurnOnLCD], sp                                 ; $588b: $08 $09 $09
	dec  de                                          ; $588e: $1b
	inc  de                                          ; $588f: $13
	rla                                              ; $5890: $17
	dec  d                                           ; $5891: $15
	rla                                              ; $5892: $17
	dec  d                                           ; $5893: $15
	rra                                              ; $5894: $1f
	add  hl, de                                      ; $5895: $19
	dec  de                                          ; $5896: $1b
	add  hl, de                                      ; $5897: $19
	ld   a, [de]                                     ; $5898: $1a
	ld   [de], a                                     ; $5899: $12
	ld   [de], a                                     ; $589a: $12
	ld   [de], a                                     ; $589b: $12
	rla                                              ; $589c: $17
	inc  de                                          ; $589d: $13
	ld   [hl], $24                                   ; $589e: $36 $24
	jr   z, @+$01                                    ; $58a0: $28 $ff

	ret                                              ; $58a2: $c9


	rst  $38                                         ; $58a3: $ff
	jp   z, $8c7f                                    ; $58a4: $ca $7f $8c

	rst  $38                                         ; $58a7: $ff
	adc  b                                           ; $58a8: $88
	rst  $38                                         ; $58a9: $ff
	add  b                                           ; $58aa: $80
	rst  $38                                         ; $58ab: $ff
	nop                                              ; $58ac: $00
	rst  $38                                         ; $58ad: $ff
	jr   nz, @+$01                                   ; $58ae: $20 $ff

	ld   h, h                                        ; $58b0: $64
	rst  $38                                         ; $58b1: $ff
	and  h                                           ; $58b2: $a4
	cp   a                                           ; $58b3: $bf
	jr   z, jr_013_58f5                              ; $58b4: $28 $3f

	jr   c, jr_013_58f7                              ; $58b6: $38 $3f

	dec  h                                           ; $58b8: $25
	daa                                              ; $58b9: $27
	rlca                                             ; $58ba: $07
	rlca                                             ; $58bb: $07
	add  [hl]                                        ; $58bc: $86
	add  h                                           ; $58bd: $84
	adc  h                                           ; $58be: $8c
	adc  b                                           ; $58bf: $88
	adc  b                                           ; $58c0: $88
	ret  z                                           ; $58c1: $c8

	adc  a                                           ; $58c2: $8f
	rst  $38                                         ; $58c3: $ff
	sbc  a                                           ; $58c4: $9f
	ldh  a, [$9d]                                    ; $58c5: $f0 $9d
	di                                               ; $58c7: $f3
	cp   [hl]                                        ; $58c8: $be
	ldh  a, [c]                                      ; $58c9: $f2
	cp   [hl]                                        ; $58ca: $be
	ldh  a, [$df]                                    ; $58cb: $f0 $df
	ldh  a, [$df]                                    ; $58cd: $f0 $df
	ldh  a, [$bf]                                    ; $58cf: $f0 $bf
	ldh  [$3f], a                                    ; $58d1: $e0 $3f
	ldh  [$bf], a                                    ; $58d3: $e0 $bf
	ldh  a, [rPCM12]                                 ; $58d5: $f0 $76
	ld   sp, hl                                      ; $58d7: $f9
	ld   hl, sp-$02                                  ; $58d8: $f8 $fe
	nop                                              ; $58da: $00
	nop                                              ; $58db: $00
	nop                                              ; $58dc: $00
	nop                                              ; $58dd: $00
	nop                                              ; $58de: $00
	nop                                              ; $58df: $00
	inc  de                                          ; $58e0: $13
	inc  de                                          ; $58e1: $13
	ldh  a, [c]                                      ; $58e2: $f2
	ld   a, [$def2]                                  ; $58e3: $fa $f2 $de
	ld   a, [$5afe]                                  ; $58e6: $fa $fe $5a
	ld   a, [hl]                                     ; $58e9: $7e
	halt                                             ; $58ea: $76
	sub  $b2                                         ; $58eb: $d6 $b2
	ld   [de], a                                     ; $58ed: $12
	ld   hl, sp+$08                                  ; $58ee: $f8 $08
	add  sp, $18                                     ; $58f0: $e8 $18
	add  sp, $18                                     ; $58f2: $e8 $18
	or   b                                           ; $58f4: $b0

jr_013_58f5:
	ld   [hl], b                                     ; $58f5: $70
	ld   [hl], b                                     ; $58f6: $70

jr_013_58f7:
	ldh  a, [$0c]                                    ; $58f7: $f0 $0c
	rrca                                             ; $58f9: $0f
	rlca                                             ; $58fa: $07
	ld   a, b                                        ; $58fb: $78
	rst  $38                                         ; $58fc: $ff
	nop                                              ; $58fd: $00
	cpl                                              ; $58fe: $2f
	jr   nc, @+$28                                   ; $58ff: $30 $26

	inc  h                                           ; $5901: $24
	daa                                              ; $5902: $27
	ld   h, $25                                      ; $5903: $26 $25
	dec  h                                           ; $5905: $25
	ld   h, h                                        ; $5906: $64
	ld   b, h                                        ; $5907: $44
	ld   b, h                                        ; $5908: $44
	ld   b, h                                        ; $5909: $44
	ld   b, h                                        ; $590a: $44
	ld   b, h                                        ; $590b: $44
	ld   b, h                                        ; $590c: $44
	ld   b, h                                        ; $590d: $44
	ld   b, h                                        ; $590e: $44
	ld   b, h                                        ; $590f: $44
	ld   a, h                                        ; $5910: $7c
	ld   a, h                                        ; $5911: $7c
	nop                                              ; $5912: $00
	nop                                              ; $5913: $00
	nop                                              ; $5914: $00
	nop                                              ; $5915: $00
	nop                                              ; $5916: $00
	nop                                              ; $5917: $00
	nop                                              ; $5918: $00
	nop                                              ; $5919: $00
	ld   bc, $0101                                   ; $591a: $01 $01 $01
	ld   bc, $0303                                   ; $591d: $01 $03 $03
	adc  b                                           ; $5920: $88
	adc  b                                           ; $5921: $88
	adc  b                                           ; $5922: $88
	adc  b                                           ; $5923: $88
	sbc  c                                           ; $5924: $99
	sub  c                                           ; $5925: $91
	ld   sp, $2031                                   ; $5926: $31 $31 $20
	jr   nz, jr_013_594b                             ; $5929: $20 $20

	jr   nz, jr_013_594d                             ; $592b: $20 $20

	jr   nz, jr_013_596f                             ; $592d: $20 $40

	ld   b, b                                        ; $592f: $40
	ld   b, b                                        ; $5930: $40
	ld   b, b                                        ; $5931: $40
	ld   b, b                                        ; $5932: $40
	ld   b, b                                        ; $5933: $40
	ld   a, a                                        ; $5934: $7f
	ld   a, a                                        ; $5935: $7f
	ld   a, a                                        ; $5936: $7f
	ld   a, a                                        ; $5937: $7f
	add  b                                           ; $5938: $80
	add  b                                           ; $5939: $80
	nop                                              ; $593a: $00
	nop                                              ; $593b: $00
	pop  af                                          ; $593c: $f1
	pop  af                                          ; $593d: $f1
	rst  $38                                         ; $593e: $ff
	rst  $38                                         ; $593f: $ff
	nop                                              ; $5940: $00
	inc  bc                                          ; $5941: $03
	ccf                                              ; $5942: $3f
	nop                                              ; $5943: $00
	nop                                              ; $5944: $00
	nop                                              ; $5945: $00
	add  b                                           ; $5946: $80
	add  b                                           ; $5947: $80
	ld   a, b                                        ; $5948: $78
	ld   l, b                                        ; $5949: $68
	rra                                              ; $594a: $1f

jr_013_594b:
	rra                                              ; $594b: $1f
	inc  de                                          ; $594c: $13

jr_013_594d:
	inc  de                                          ; $594d: $13
	ld   [de], a                                     ; $594e: $12
	ld   [de], a                                     ; $594f: $12
	inc  h                                           ; $5950: $24
	inc  h                                           ; $5951: $24
	ret  z                                           ; $5952: $c8

	ret  z                                           ; $5953: $c8

	rst  $38                                         ; $5954: $ff
	rst  $38                                         ; $5955: $ff
	rst  $38                                         ; $5956: $ff
	rst  $38                                         ; $5957: $ff
	ld   a, a                                        ; $5958: $7f
	ld   a, a                                        ; $5959: $7f
	di                                               ; $595a: $f3
	di                                               ; $595b: $f3
	ret                                              ; $595c: $c9


	ret                                              ; $595d: $c9


	sbc  h                                           ; $595e: $9c
	sbc  h                                           ; $595f: $9c
	inc  bc                                          ; $5960: $03
	rst  $38                                         ; $5961: $ff
	ld   hl, sp+$08                                  ; $5962: $f8 $08
	ld   a, b                                        ; $5964: $78
	ld   c, b                                        ; $5965: $48
	ld   [hl], b                                     ; $5966: $70
	ld   d, b                                        ; $5967: $50
	ld   [hl], b                                     ; $5968: $70
	ld   d, b                                        ; $5969: $50
	ldh  a, [$f0]                                    ; $596a: $f0 $f0
	ld   h, b                                        ; $596c: $60
	ld   h, b                                        ; $596d: $60
	ld   [hl], b                                     ; $596e: $70

jr_013_596f:
	ld   d, b                                        ; $596f: $50
	ld   a, b                                        ; $5970: $78
	ld   l, b                                        ; $5971: $68
	ld   hl, sp+$48                                  ; $5972: $f8 $48
	cp   b                                           ; $5974: $b8
	ret  z                                           ; $5975: $c8

	ret  z                                           ; $5976: $c8

	ld   hl, sp+$70                                  ; $5977: $f8 $70
	ld   [hl], b                                     ; $5979: $70
	ret  nz                                          ; $597a: $c0

	ret  nz                                          ; $597b: $c0

	ldh  [$e0], a                                    ; $597c: $e0 $e0
	ldh  a, [$f0]                                    ; $597e: $f0 $f0
	inc  bc                                          ; $5980: $03
	inc  bc                                          ; $5981: $03
	rlca                                             ; $5982: $07
	rlca                                             ; $5983: $07
	rrca                                             ; $5984: $0f
	rrca                                             ; $5985: $0f
	rra                                              ; $5986: $1f
	rra                                              ; $5987: $1f
	rra                                              ; $5988: $1f
	rra                                              ; $5989: $1f
	ccf                                              ; $598a: $3f
	ccf                                              ; $598b: $3f
	dec  sp                                          ; $598c: $3b
	daa                                              ; $598d: $27
	ld   a, a                                        ; $598e: $7f
	ld   b, b                                        ; $598f: $40
	ld   a, l                                        ; $5990: $7d
	ld   a, [hl]                                     ; $5991: $7e
	ld   b, e                                        ; $5992: $43
	ld   a, a                                        ; $5993: $7f
	add  c                                           ; $5994: $81
	cp   $9e                                         ; $5995: $fe $9e
	ldh  [rIE], a                                    ; $5997: $e0 $ff
	rst  $38                                         ; $5999: $ff
	nop                                              ; $599a: $00
	nop                                              ; $599b: $00
	nop                                              ; $599c: $00
	nop                                              ; $599d: $00
	nop                                              ; $599e: $00
	nop                                              ; $599f: $00
	rst  $38                                         ; $59a0: $ff
	rst  $38                                         ; $59a1: $ff
	rst  $38                                         ; $59a2: $ff
	rst  $38                                         ; $59a3: $ff
	rst  $38                                         ; $59a4: $ff
	rst  $38                                         ; $59a5: $ff
	db   $fc                                         ; $59a6: $fc
	db   $fc                                         ; $59a7: $fc
	db   $fc                                         ; $59a8: $fc
	db   $fc                                         ; $59a9: $fc
	ld   hl, sp-$08                                  ; $59aa: $f8 $f8
	ldh  [$e0], a                                    ; $59ac: $e0 $e0
	ret  nz                                          ; $59ae: $c0

	ld   b, b                                        ; $59af: $40
	add  b                                           ; $59b0: $80
	add  b                                           ; $59b1: $80
	add  b                                           ; $59b2: $80
	add  b                                           ; $59b3: $80
	add  b                                           ; $59b4: $80
	add  b                                           ; $59b5: $80
	add  b                                           ; $59b6: $80
	add  b                                           ; $59b7: $80
	add  b                                           ; $59b8: $80
	add  b                                           ; $59b9: $80
	nop                                              ; $59ba: $00
	nop                                              ; $59bb: $00
	nop                                              ; $59bc: $00
	nop                                              ; $59bd: $00
	nop                                              ; $59be: $00
	nop                                              ; $59bf: $00
	rst  $38                                         ; $59c0: $ff
	rst  $38                                         ; $59c1: $ff
	rst  $38                                         ; $59c2: $ff
	rst  $38                                         ; $59c3: $ff
	rrca                                             ; $59c4: $0f
	rrca                                             ; $59c5: $0f
	rlca                                             ; $59c6: $07
	rlca                                             ; $59c7: $07
	inc  bc                                          ; $59c8: $03
	inc  bc                                          ; $59c9: $03
	inc  bc                                          ; $59ca: $03
	inc  bc                                          ; $59cb: $03
	inc  bc                                          ; $59cc: $03
	inc  bc                                          ; $59cd: $03
	inc  bc                                          ; $59ce: $03
	ld   [bc], a                                     ; $59cf: $02
	ld   [bc], a                                     ; $59d0: $02
	inc  bc                                          ; $59d1: $03
	ld   [bc], a                                     ; $59d2: $02
	inc  bc                                          ; $59d3: $03
	ld   [bc], a                                     ; $59d4: $02
	inc  bc                                          ; $59d5: $03
	ld   [bc], a                                     ; $59d6: $02
	inc  bc                                          ; $59d7: $03
	ld   bc, $0001                                   ; $59d8: $01 $01 $00
	nop                                              ; $59db: $00
	nop                                              ; $59dc: $00
	nop                                              ; $59dd: $00
	nop                                              ; $59de: $00
	nop                                              ; $59df: $00
	ld   hl, sp-$08                                  ; $59e0: $f8 $f8
	ld   hl, sp-$08                                  ; $59e2: $f8 $f8
	db   $fc                                         ; $59e4: $fc
	db   $fc                                         ; $59e5: $fc
	db   $fc                                         ; $59e6: $fc
	db   $fc                                         ; $59e7: $fc
	db   $fc                                         ; $59e8: $fc
	db   $fc                                         ; $59e9: $fc
	db   $fc                                         ; $59ea: $fc
	db   $fc                                         ; $59eb: $fc
	cp   h                                           ; $59ec: $bc
	call z, $04fc                                    ; $59ed: $cc $fc $04
	ld   a, $fe                                      ; $59f0: $3e $fe
	ld   [bc], a                                     ; $59f2: $02
	cp   $05                                         ; $59f3: $fe $05
	ei                                               ; $59f5: $fb
	add  hl, sp                                      ; $59f6: $39
	jp   $ffff                                       ; $59f7: $c3 $ff $ff


	nop                                              ; $59fa: $00
	nop                                              ; $59fb: $00
	nop                                              ; $59fc: $00
	nop                                              ; $59fd: $00
	nop                                              ; $59fe: $00
	nop                                              ; $59ff: $00
	nop                                              ; $5a00: $00
	nop                                              ; $5a01: $00
	nop                                              ; $5a02: $00
	nop                                              ; $5a03: $00
	nop                                              ; $5a04: $00
	nop                                              ; $5a05: $00
	nop                                              ; $5a06: $00
	nop                                              ; $5a07: $00
	nop                                              ; $5a08: $00
	nop                                              ; $5a09: $00
	nop                                              ; $5a0a: $00
	nop                                              ; $5a0b: $00
	nop                                              ; $5a0c: $00
	nop                                              ; $5a0d: $00
	nop                                              ; $5a0e: $00
	nop                                              ; $5a0f: $00
	nop                                              ; $5a10: $00
	nop                                              ; $5a11: $00
	nop                                              ; $5a12: $00
	nop                                              ; $5a13: $00
	nop                                              ; $5a14: $00
	nop                                              ; $5a15: $00
	nop                                              ; $5a16: $00
	nop                                              ; $5a17: $00
	ld   bc, $0101                                   ; $5a18: $01 $01 $01
	ld   bc, $0302                                   ; $5a1b: $01 $02 $03
	ld   [bc], a                                     ; $5a1e: $02
	inc  bc                                          ; $5a1f: $03
	nop                                              ; $5a20: $00
	nop                                              ; $5a21: $00
	nop                                              ; $5a22: $00
	nop                                              ; $5a23: $00
	nop                                              ; $5a24: $00
	nop                                              ; $5a25: $00
	nop                                              ; $5a26: $00
	nop                                              ; $5a27: $00
	nop                                              ; $5a28: $00
	nop                                              ; $5a29: $00
	nop                                              ; $5a2a: $00
	nop                                              ; $5a2b: $00
	ld   bc, $0e01                                   ; $5a2c: $01 $01 $0e
	rrca                                             ; $5a2f: $0f
	jr   nc, jr_013_5a71                             ; $5a30: $30 $3f

	ld   b, b                                        ; $5a32: $40
	ld   l, a                                        ; $5a33: $6f
	add  b                                           ; $5a34: $80
	sbc  a                                           ; $5a35: $9f
	add  b                                           ; $5a36: $80
	cp   a                                           ; $5a37: $bf
	ld   [bc], a                                     ; $5a38: $02
	dec  sp                                          ; $5a39: $3b
	inc  b                                           ; $5a3a: $04
	rlca                                             ; $5a3b: $07
	ld   [$283b], sp                                 ; $5a3c: $08 $3b $28
	ld   hl, sp+$00                                  ; $5a3f: $f8 $00
	nop                                              ; $5a41: $00
	nop                                              ; $5a42: $00
	nop                                              ; $5a43: $00
	nop                                              ; $5a44: $00
	nop                                              ; $5a45: $00
	nop                                              ; $5a46: $00
	nop                                              ; $5a47: $00
	nop                                              ; $5a48: $00
	nop                                              ; $5a49: $00
	inc  bc                                          ; $5a4a: $03
	inc  bc                                          ; $5a4b: $03
	db   $f4                                         ; $5a4c: $f4
	rst  $30                                         ; $5a4d: $f7

jr_013_5a4e:
	ld   [$00ff], sp                                 ; $5a4e: $08 $ff $00
	rst  $38                                         ; $5a51: $ff
	nop                                              ; $5a52: $00
	rst  $38                                         ; $5a53: $ff
	jr   nz, @+$01                                   ; $5a54: $20 $ff

	ld   b, b                                        ; $5a56: $40
	rst  $38                                         ; $5a57: $ff
	ld   b, c                                        ; $5a58: $41
	rst  JumpTable                                         ; $5a59: $df
	add  e                                           ; $5a5a: $83
	cp   e                                           ; $5a5b: $bb
	add  h                                           ; $5a5c: $84
	and  h                                           ; $5a5d: $a4
	adc  b                                           ; $5a5e: $88
	adc  b                                           ; $5a5f: $88
	nop                                              ; $5a60: $00
	nop                                              ; $5a61: $00
	nop                                              ; $5a62: $00
	nop                                              ; $5a63: $00
	nop                                              ; $5a64: $00
	nop                                              ; $5a65: $00
	nop                                              ; $5a66: $00
	nop                                              ; $5a67: $00
	nop                                              ; $5a68: $00
	nop                                              ; $5a69: $00
	ret  nz                                          ; $5a6a: $c0

	ret  nz                                          ; $5a6b: $c0

	jr   nz, jr_013_5a4e                             ; $5a6c: $20 $e0

	db   $10                                         ; $5a6e: $10
	ldh  a, [rAUD1SWEEP]                             ; $5a6f: $f0 $10

jr_013_5a71:
	ldh  a, [$08]                                    ; $5a71: $f0 $08
	ld   hl, sp+$08                                  ; $5a73: $f8 $08
	ld   hl, sp-$38                                  ; $5a75: $f8 $c8
	ld   hl, sp-$64                                  ; $5a77: $f8 $9c
	db   $fc                                         ; $5a79: $fc
	ldh  [c], a                                      ; $5a7a: $e2
	cp   $21                                         ; $5a7b: $fe $21
	add  hl, sp                                      ; $5a7d: $39
	dec  l                                           ; $5a7e: $2d
	ccf                                              ; $5a7f: $3f

Jump_013_5a80:
	inc  b                                           ; $5a80: $04
	rlca                                             ; $5a81: $07
	add  hl, bc                                      ; $5a82: $09
	rrca                                             ; $5a83: $0f
	rra                                              ; $5a84: $1f
	ld   e, $07                                      ; $5a85: $1e $07
	dec  b                                           ; $5a87: $05
	rrca                                             ; $5a88: $0f
	add  hl, bc                                      ; $5a89: $09
	dec  de                                          ; $5a8a: $1b
	ld   de, $1312                                   ; $5a8b: $11 $12 $13
	ld   [hl], $27                                   ; $5a8e: $36 $27
	ld   l, $2b                                      ; $5a90: $2e $2b
	cpl                                              ; $5a92: $2f
	dec  hl                                          ; $5a93: $2b
	ld   a, $32                                      ; $5a94: $3e $32
	ld   [hl], $32                                   ; $5a96: $36 $32
	inc  [hl]                                        ; $5a98: $34
	inc  h                                           ; $5a99: $24
	inc  h                                           ; $5a9a: $24
	inc  h                                           ; $5a9b: $24
	cpl                                              ; $5a9c: $2f
	daa                                              ; $5a9d: $27
	ld   l, l                                        ; $5a9e: $6d
	ld   c, c                                        ; $5a9f: $49
	ld   d, c                                        ; $5aa0: $51
	rst  $38                                         ; $5aa1: $ff
	sub  e                                           ; $5aa2: $93
	rst  $38                                         ; $5aa3: $ff
	sub  l                                           ; $5aa4: $95
	rst  $38                                         ; $5aa5: $ff
	add  hl, de                                      ; $5aa6: $19
	rst  $38                                         ; $5aa7: $ff
	ld   de, $01ff                                   ; $5aa8: $11 $ff $01
	rst  $38                                         ; $5aab: $ff
	ld   bc, $41ff                                   ; $5aac: $01 $ff $41
	rst  $38                                         ; $5aaf: $ff
	ret                                              ; $5ab0: $c9


	rst  $38                                         ; $5ab1: $ff
	ld   c, b                                        ; $5ab2: $48
	ld   a, a                                        ; $5ab3: $7f
	ld   d, c                                        ; $5ab4: $51
	ld   a, a                                        ; $5ab5: $7f
	ld   [hl], c                                     ; $5ab6: $71
	ld   a, a                                        ; $5ab7: $7f
	ld   c, d                                        ; $5ab8: $4a
	ld   c, [hl]                                     ; $5ab9: $4e
	inc  c                                           ; $5aba: $0c
	inc  c                                           ; $5abb: $0c
	inc  c                                           ; $5abc: $0c
	ld   [$1119], sp                                 ; $5abd: $08 $19 $11
	db   $10                                         ; $5ac0: $10
	sub  b                                           ; $5ac1: $90
	rra                                              ; $5ac2: $1f

jr_013_5ac3:
	rst  $38                                         ; $5ac3: $ff
	ccf                                              ; $5ac4: $3f
	pop  hl                                          ; $5ac5: $e1
	dec  sp                                          ; $5ac6: $3b
	rst  $20                                         ; $5ac7: $e7
	ld   a, h                                        ; $5ac8: $7c
	db   $e4                                         ; $5ac9: $e4
	ld   a, h                                        ; $5aca: $7c
	pop  hl                                          ; $5acb: $e1
	cp   a                                           ; $5acc: $bf
	ldh  [$bf], a                                    ; $5acd: $e0 $bf
	ldh  [$7f], a                                    ; $5acf: $e0 $7f
	ret  nz                                          ; $5ad1: $c0

	ld   a, a                                        ; $5ad2: $7f
	ret  nz                                          ; $5ad3: $c0

	ld   a, a                                        ; $5ad4: $7f
	ldh  [$ef], a                                    ; $5ad5: $e0 $ef
	ldh  a, [rAUD3LEN]                               ; $5ad7: $f0 $1b
	inc  e                                           ; $5ad9: $1c
	rst  $20                                         ; $5ada: $e7
	rst  $20                                         ; $5adb: $e7
	sbc  [hl]                                        ; $5adc: $9e
	sbc  [hl]                                        ; $5add: $9e
	ld   bc, $2701                                   ; $5ade: $01 $01 $27
	daa                                              ; $5ae1: $27
	push hl                                          ; $5ae2: $e5
	push af                                          ; $5ae3: $f5
	db   $e4                                         ; $5ae4: $e4
	cp   h                                           ; $5ae5: $bc
	db   $f4                                         ; $5ae6: $f4
	db   $fc                                         ; $5ae7: $fc
	or   h                                           ; $5ae8: $b4
	db   $fc                                         ; $5ae9: $fc
	db   $ec                                         ; $5aea: $ec
	xor  h                                           ; $5aeb: $ac
	ld   h, h                                        ; $5aec: $64
	inc  h                                           ; $5aed: $24
	ldh  a, [rAUD1SWEEP]                             ; $5aee: $f0 $10
	ret  nc                                          ; $5af0: $d0

	jr   nc, jr_013_5ac3                             ; $5af1: $30 $d0

	jr   nc, jr_013_5b55                             ; $5af3: $30 $60

	ldh  [hScriptOpcodeParams], a                                    ; $5af5: $e0 $a0
	ld   h, b                                        ; $5af7: $60
	ld   b, b                                        ; $5af8: $40
	ret  nz                                          ; $5af9: $c0

	add  b                                           ; $5afa: $80
	add  b                                           ; $5afb: $80
	rlca                                             ; $5afc: $07
	rlca                                             ; $5afd: $07
	adc  e                                           ; $5afe: $8b
	adc  h                                           ; $5aff: $8c
	ld   c, l                                        ; $5b00: $4d
	ld   c, c                                        ; $5b01: $49
	ld   c, a                                        ; $5b02: $4f
	ld   c, l                                        ; $5b03: $4d
	ld   c, e                                        ; $5b04: $4b
	ld   c, e                                        ; $5b05: $4b
	ret  z                                           ; $5b06: $c8

	adc  b                                           ; $5b07: $88
	adc  b                                           ; $5b08: $88
	adc  b                                           ; $5b09: $88
	adc  b                                           ; $5b0a: $88
	adc  b                                           ; $5b0b: $88
	adc  b                                           ; $5b0c: $88
	adc  b                                           ; $5b0d: $88
	adc  b                                           ; $5b0e: $88
	adc  b                                           ; $5b0f: $88
	ld   hl, sp-$08                                  ; $5b10: $f8 $f8
	nop                                              ; $5b12: $00
	nop                                              ; $5b13: $00
	nop                                              ; $5b14: $00
	nop                                              ; $5b15: $00
	nop                                              ; $5b16: $00
	nop                                              ; $5b17: $00
	nop                                              ; $5b18: $00
	nop                                              ; $5b19: $00
	ld   bc, $0101                                   ; $5b1a: $01 $01 $01
	ld   bc, $0303                                   ; $5b1d: $01 $03 $03
	db   $10                                         ; $5b20: $10
	db   $10                                         ; $5b21: $10
	db   $10                                         ; $5b22: $10
	db   $10                                         ; $5b23: $10
	ld   [hl-], a                                    ; $5b24: $32
	ld   [hl+], a                                    ; $5b25: $22
	ld   [hl+], a                                    ; $5b26: $22
	ld   [hl+], a                                    ; $5b27: $22
	ld   hl, $2021                                   ; $5b28: $21 $21 $20
	jr   nz, jr_013_5b6d                             ; $5b2b: $20 $40

	ld   b, b                                        ; $5b2d: $40
	ld   b, b                                        ; $5b2e: $40
	ld   b, b                                        ; $5b2f: $40
	ld   b, b                                        ; $5b30: $40
	ld   b, b                                        ; $5b31: $40
	add  c                                           ; $5b32: $81
	add  c                                           ; $5b33: $81
	rst  $38                                         ; $5b34: $ff
	rst  $38                                         ; $5b35: $ff
	rst  $38                                         ; $5b36: $ff
	rst  $38                                         ; $5b37: $ff
	add  b                                           ; $5b38: $80
	add  b                                           ; $5b39: $80
	ld   bc, $f101                                   ; $5b3a: $01 $01 $f1
	pop  af                                          ; $5b3d: $f1
	rst  $38                                         ; $5b3e: $ff
	rst  $38                                         ; $5b3f: $ff
	ld   bc, $4301                                   ; $5b40: $01 $01 $43
	ld   bc, $03c2                                   ; $5b43: $01 $c2 $03
	jp   nz, $c343                                   ; $5b46: $c2 $43 $c3

	ld   b, e                                        ; $5b49: $43
	jp   $3ee3                                       ; $5b4a: $c3 $e3 $3e


	ld   a, $24                                      ; $5b4d: $3e $24
	inc  h                                           ; $5b4f: $24
	ld   c, b                                        ; $5b50: $48
	ld   c, b                                        ; $5b51: $48
	sub  c                                           ; $5b52: $91
	sub  b                                           ; $5b53: $90
	rst  $38                                         ; $5b54: $ff

jr_013_5b55:
	rst  $38                                         ; $5b55: $ff
	rst  $38                                         ; $5b56: $ff
	rst  $38                                         ; $5b57: $ff
	cp   $fe                                         ; $5b58: $fe $fe
	rst  $20                                         ; $5b5a: $e7
	rst  $20                                         ; $5b5b: $e7
	ret                                              ; $5b5c: $c9


	ret                                              ; $5b5d: $c9


	sbc  h                                           ; $5b5e: $9c
	sbc  h                                           ; $5b5f: $9c
	rst  $30                                         ; $5b60: $f7
	ld   hl, sp+$7f                                  ; $5b61: $f8 $7f
	add  b                                           ; $5b63: $80
	rst  $38                                         ; $5b64: $ff
	nop                                              ; $5b65: $00
	rst  $30                                         ; $5b66: $f7
	ld   [$fcfb], sp                                 ; $5b67: $08 $fb $fc
	add  a                                           ; $5b6a: $87
	add  a                                           ; $5b6b: $87
	ret  nz                                          ; $5b6c: $c0

jr_013_5b6d:
	ret  nz                                          ; $5b6d: $c0

	ldh  [hScriptOpcodeParams], a                                    ; $5b6e: $e0 $a0
	ldh  a, [$d0]                                    ; $5b70: $f0 $d0
	ldh  a, [$90]                                    ; $5b72: $f0 $90
	ld   [hl], b                                     ; $5b74: $70
	sub  b                                           ; $5b75: $90
	sub  b                                           ; $5b76: $90
	ldh  a, [$e0]                                    ; $5b77: $f0 $e0
	ldh  [$80], a                                    ; $5b79: $e0 $80
	add  b                                           ; $5b7b: $80
	ldh  [$e0], a                                    ; $5b7c: $e0 $e0
	ldh  a, [$f0]                                    ; $5b7e: $f0 $f0
	inc  bc                                          ; $5b80: $03
	inc  bc                                          ; $5b81: $03
	rlca                                             ; $5b82: $07
	rlca                                             ; $5b83: $07
	rrca                                             ; $5b84: $0f
	rrca                                             ; $5b85: $0f
	rra                                              ; $5b86: $1f
	rra                                              ; $5b87: $1f
	rra                                              ; $5b88: $1f
	rra                                              ; $5b89: $1f
	ccf                                              ; $5b8a: $3f
	ccf                                              ; $5b8b: $3f
	dec  sp                                          ; $5b8c: $3b
	daa                                              ; $5b8d: $27
	ld   a, a                                        ; $5b8e: $7f
	ld   b, b                                        ; $5b8f: $40
	ld   a, l                                        ; $5b90: $7d
	ld   a, [hl]                                     ; $5b91: $7e
	ld   b, e                                        ; $5b92: $43
	ld   a, a                                        ; $5b93: $7f
	add  c                                           ; $5b94: $81
	cp   $9e                                         ; $5b95: $fe $9e
	ldh  [rIE], a                                    ; $5b97: $e0 $ff
	rst  $38                                         ; $5b99: $ff
	nop                                              ; $5b9a: $00
	nop                                              ; $5b9b: $00
	nop                                              ; $5b9c: $00
	nop                                              ; $5b9d: $00
	nop                                              ; $5b9e: $00
	nop                                              ; $5b9f: $00
	rst  $38                                         ; $5ba0: $ff
	rst  $38                                         ; $5ba1: $ff
	rst  $38                                         ; $5ba2: $ff
	rst  $38                                         ; $5ba3: $ff
	rst  $38                                         ; $5ba4: $ff
	rst  $38                                         ; $5ba5: $ff
	db   $fc                                         ; $5ba6: $fc
	db   $fc                                         ; $5ba7: $fc
	db   $fc                                         ; $5ba8: $fc
	db   $fc                                         ; $5ba9: $fc
	ld   hl, sp-$08                                  ; $5baa: $f8 $f8
	ldh  [$e0], a                                    ; $5bac: $e0 $e0
	ret  nz                                          ; $5bae: $c0

	ld   b, b                                        ; $5baf: $40
	add  b                                           ; $5bb0: $80
	add  b                                           ; $5bb1: $80
	add  b                                           ; $5bb2: $80
	add  b                                           ; $5bb3: $80
	add  b                                           ; $5bb4: $80
	add  b                                           ; $5bb5: $80
	add  b                                           ; $5bb6: $80
	add  b                                           ; $5bb7: $80
	add  b                                           ; $5bb8: $80
	add  b                                           ; $5bb9: $80
	nop                                              ; $5bba: $00
	nop                                              ; $5bbb: $00
	nop                                              ; $5bbc: $00
	nop                                              ; $5bbd: $00
	nop                                              ; $5bbe: $00
	nop                                              ; $5bbf: $00
	rst  $38                                         ; $5bc0: $ff
	rst  $38                                         ; $5bc1: $ff
	rst  $38                                         ; $5bc2: $ff
	rst  $38                                         ; $5bc3: $ff
	rrca                                             ; $5bc4: $0f
	rrca                                             ; $5bc5: $0f
	rlca                                             ; $5bc6: $07
	rlca                                             ; $5bc7: $07
	inc  bc                                          ; $5bc8: $03
	inc  bc                                          ; $5bc9: $03
	inc  bc                                          ; $5bca: $03
	inc  bc                                          ; $5bcb: $03
	inc  bc                                          ; $5bcc: $03
	inc  bc                                          ; $5bcd: $03
	inc  bc                                          ; $5bce: $03
	ld   [bc], a                                     ; $5bcf: $02
	ld   [bc], a                                     ; $5bd0: $02
	inc  bc                                          ; $5bd1: $03
	ld   [bc], a                                     ; $5bd2: $02
	inc  bc                                          ; $5bd3: $03
	ld   [bc], a                                     ; $5bd4: $02
	inc  bc                                          ; $5bd5: $03
	ld   [bc], a                                     ; $5bd6: $02
	inc  bc                                          ; $5bd7: $03
	ld   bc, $0001                                   ; $5bd8: $01 $01 $00
	nop                                              ; $5bdb: $00
	nop                                              ; $5bdc: $00
	nop                                              ; $5bdd: $00
	nop                                              ; $5bde: $00
	nop                                              ; $5bdf: $00
	ld   hl, sp-$08                                  ; $5be0: $f8 $f8
	ld   hl, sp-$08                                  ; $5be2: $f8 $f8
	db   $fc                                         ; $5be4: $fc
	db   $fc                                         ; $5be5: $fc
	db   $fc                                         ; $5be6: $fc
	db   $fc                                         ; $5be7: $fc
	db   $fc                                         ; $5be8: $fc
	db   $fc                                         ; $5be9: $fc
	db   $fc                                         ; $5bea: $fc
	db   $fc                                         ; $5beb: $fc
	cp   h                                           ; $5bec: $bc
	call z, $04fc                                    ; $5bed: $cc $fc $04
	ld   a, $fe                                      ; $5bf0: $3e $fe
	ld   [bc], a                                     ; $5bf2: $02
	cp   $05                                         ; $5bf3: $fe $05
	ei                                               ; $5bf5: $fb
	add  hl, sp                                      ; $5bf6: $39
	jp   $ffff                                       ; $5bf7: $c3 $ff $ff


	nop                                              ; $5bfa: $00
	nop                                              ; $5bfb: $00
	nop                                              ; $5bfc: $00
	nop                                              ; $5bfd: $00
	nop                                              ; $5bfe: $00
	nop                                              ; $5bff: $00
	nop                                              ; $5c00: $00
	nop                                              ; $5c01: $00
	nop                                              ; $5c02: $00
	nop                                              ; $5c03: $00
	nop                                              ; $5c04: $00
	nop                                              ; $5c05: $00
	nop                                              ; $5c06: $00
	nop                                              ; $5c07: $00
	nop                                              ; $5c08: $00
	nop                                              ; $5c09: $00
	nop                                              ; $5c0a: $00
	nop                                              ; $5c0b: $00
	nop                                              ; $5c0c: $00
	nop                                              ; $5c0d: $00
	nop                                              ; $5c0e: $00
	nop                                              ; $5c0f: $00
	rlca                                             ; $5c10: $07
	rlca                                             ; $5c11: $07
	jr   c, jr_013_5c4f                              ; $5c12: $38 $3b

	db   $10                                         ; $5c14: $10
	inc  e                                           ; $5c15: $1c

jr_013_5c16:
	ld   [$0609], sp                                 ; $5c16: $08 $09 $06
	rlca                                             ; $5c19: $07
	ld   [$110b], sp                                 ; $5c1a: $08 $0b $11
	rla                                              ; $5c1d: $17
	ld   [hl+], a                                    ; $5c1e: $22
	ld   [hl+], a                                    ; $5c1f: $22
	nop                                              ; $5c20: $00
	nop                                              ; $5c21: $00
	nop                                              ; $5c22: $00
	nop                                              ; $5c23: $00
	nop                                              ; $5c24: $00
	nop                                              ; $5c25: $00
	nop                                              ; $5c26: $00
	nop                                              ; $5c27: $00
	ld   bc, $0601                                   ; $5c28: $01 $01 $06
	rlca                                             ; $5c2b: $07

jr_013_5c2c:
	jr   c, jr_013_5c6d                              ; $5c2c: $38 $3f

	ret  z                                           ; $5c2e: $c8

	rst  $38                                         ; $5c2f: $ff
	db   $10                                         ; $5c30: $10
	rst  $38                                         ; $5c31: $ff
	jr   nz, @+$01                                   ; $5c32: $20 $ff

	nop                                              ; $5c34: $00
	ld   a, a                                        ; $5c35: $7f
	jr   @+$01                                       ; $5c36: $18 $ff

	ld   h, b                                        ; $5c38: $60
	rst  $38                                         ; $5c39: $ff
	add  b                                           ; $5c3a: $80
	rst  $38                                         ; $5c3b: $ff
	ld   b, $7f                                      ; $5c3c: $06 $7f
	inc  c                                           ; $5c3e: $0c
	rst  $28                                         ; $5c3f: $ef
	nop                                              ; $5c40: $00
	nop                                              ; $5c41: $00
	nop                                              ; $5c42: $00
	nop                                              ; $5c43: $00
	nop                                              ; $5c44: $00
	nop                                              ; $5c45: $00
	nop                                              ; $5c46: $00
	nop                                              ; $5c47: $00
	ret  nz                                          ; $5c48: $c0

	ret  nz                                          ; $5c49: $c0

	jr   nz, jr_013_5c2c                             ; $5c4a: $20 $e0

	db   $10                                         ; $5c4c: $10
	ldh  a, [rAUD1SWEEP]                             ; $5c4d: $f0 $10

jr_013_5c4f:
	ldh  a, [$1f]                                    ; $5c4f: $f0 $1f
	rst  $38                                         ; $5c51: $ff
	db   $10                                         ; $5c52: $10
	rst  $38                                         ; $5c53: $ff
	db   $10                                         ; $5c54: $10
	rst  $38                                         ; $5c55: $ff
	db   $10                                         ; $5c56: $10
	rst  $38                                         ; $5c57: $ff
	jr   nz, @+$01                                   ; $5c58: $20 $ff

	jr   nz, @+$01                                   ; $5c5a: $20 $ff

	ld   c, h                                        ; $5c5c: $4c
	db   $fd                                         ; $5c5d: $fd
	ld   [hl+], a                                    ; $5c5e: $22
	cp   $00                                         ; $5c5f: $fe $00
	nop                                              ; $5c61: $00
	nop                                              ; $5c62: $00
	nop                                              ; $5c63: $00
	nop                                              ; $5c64: $00
	nop                                              ; $5c65: $00
	nop                                              ; $5c66: $00
	nop                                              ; $5c67: $00
	nop                                              ; $5c68: $00
	nop                                              ; $5c69: $00
	nop                                              ; $5c6a: $00
	nop                                              ; $5c6b: $00
	nop                                              ; $5c6c: $00

jr_013_5c6d:
	nop                                              ; $5c6d: $00
	nop                                              ; $5c6e: $00
	nop                                              ; $5c6f: $00
	nop                                              ; $5c70: $00
	nop                                              ; $5c71: $00
	ret  nz                                          ; $5c72: $c0

	ret  nz                                          ; $5c73: $c0

	jr   nz, jr_013_5c16                             ; $5c74: $20 $a0

	db   $10                                         ; $5c76: $10
	ret  nc                                          ; $5c77: $d0

	ld   [$2488], sp                                 ; $5c78: $08 $88 $24
	cp   h                                           ; $5c7b: $bc
	ld   e, $de                                      ; $5c7c: $1e $de
	db   $10                                         ; $5c7e: $10
	ld   d, b                                        ; $5c7f: $50
	ld   [hl+], a                                    ; $5c80: $22
	ld   a, $44                                      ; $5c81: $3e $44
	ld   a, l                                        ; $5c83: $7d
	ld   c, h                                        ; $5c84: $4c
	ld   a, h                                        ; $5c85: $7c
	ld   e, b                                        ; $5c86: $58
	ld   a, h                                        ; $5c87: $7c
	ld   l, b                                        ; $5c88: $68
	ld   l, l                                        ; $5c89: $6d
	ld   c, b                                        ; $5c8a: $48
	ld   c, a                                        ; $5c8b: $4f
	ld   [$080f], sp                                 ; $5c8c: $08 $0f $08
	rrca                                             ; $5c8f: $0f
	add  hl, bc                                      ; $5c90: $09
	rrca                                             ; $5c91: $0f
	dec  b                                           ; $5c92: $05
	rlca                                             ; $5c93: $07
	dec  b                                           ; $5c94: $05
	rlca                                             ; $5c95: $07
	ld   [bc], a                                     ; $5c96: $02
	inc  bc                                          ; $5c97: $03
	ld   bc, $0101                                   ; $5c98: $01 $01 $01
	ld   bc, $0203                                   ; $5c9b: $01 $03 $02
	rlca                                             ; $5c9e: $07
	inc  b                                           ; $5c9f: $04
	rra                                              ; $5ca0: $1f
	rst  JumpTable                                         ; $5ca1: $df
	jr   nz, jr_013_5cd4                             ; $5ca2: $20 $30

	jr   nz, jr_013_5d06                             ; $5ca4: $20 $60

	ld   b, b                                        ; $5ca6: $40
	ld   b, b                                        ; $5ca7: $40
	ld   a, a                                        ; $5ca8: $7f
	rst  $38                                         ; $5ca9: $ff
	rst  $28                                         ; $5caa: $ef
	or   b                                           ; $5cab: $b0
	rst  $38                                         ; $5cac: $ff
	ld   hl, sp-$51                                  ; $5cad: $f8 $af
	cp   h                                           ; $5caf: $bc
	and  a                                           ; $5cb0: $a7
	ld   [hl], b                                     ; $5cb1: $70
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5cb2: $cf
	nop                                              ; $5cb3: $00
	ld   a, a                                        ; $5cb4: $7f
	add  b                                           ; $5cb5: $80
	db   $fc                                         ; $5cb6: $fc
	add  e                                           ; $5cb7: $83
	ld   a, a                                        ; $5cb8: $7f
	ret  nz                                          ; $5cb9: $c0

	rst  $38                                         ; $5cba: $ff
	db   $e3                                         ; $5cbb: $e3
	ei                                               ; $5cbc: $fb
	inc  e                                           ; $5cbd: $1c
	rst  $38                                         ; $5cbe: $ff
	rrca                                             ; $5cbf: $0f
	pop  af                                          ; $5cc0: $f1
	rst  $30                                         ; $5cc1: $f7
	ld   [$081a], sp                                 ; $5cc2: $08 $1a $08
	ld   [$0e04], sp                                 ; $5cc5: $08 $04 $0e
	db   $fc                                         ; $5cc8: $fc
	rst  $38                                         ; $5cc9: $ff
	sbc  $3f                                         ; $5cca: $de $3f
	xor  $73                                         ; $5ccc: $ee $73
	rst  $38                                         ; $5cce: $ff
	db   $fd                                         ; $5ccf: $fd
	and  a                                           ; $5cd0: $a7
	scf                                              ; $5cd1: $37
	and  e                                           ; $5cd2: $a3
	ld   [hl], l                                     ; $5cd3: $75

jr_013_5cd4:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5cd4: $cf
	ld   bc, $03fd                                   ; $5cd5: $01 $fd $03
	cp   $03                                         ; $5cd8: $fe $03
	db   $f4                                         ; $5cda: $f4
	dec  c                                           ; $5cdb: $0d
	db   $dd                                         ; $5cdc: $dd
	dec  a                                           ; $5cdd: $3d
	cp   $fe                                         ; $5cde: $fe $fe
	ld   [$8808], sp                                 ; $5ce0: $08 $08 $88
	ld   hl, sp+$44                                  ; $5ce3: $f8 $44
	ld   a, h                                        ; $5ce5: $7c
	ld   b, h                                        ; $5ce6: $44
	ld   a, h                                        ; $5ce7: $7c
	ld   [hl+], a                                    ; $5ce8: $22
	ld   a, [hl]                                     ; $5ce9: $7e
	inc  hl                                          ; $5cea: $23
	rst  $38                                         ; $5ceb: $ff
	inc  a                                           ; $5cec: $3c
	db   $fc                                         ; $5ced: $fc
	ld   c, h                                        ; $5cee: $4c
	db   $f4                                         ; $5cef: $f4
	ld   d, h                                        ; $5cf0: $54
	db   $f4                                         ; $5cf1: $f4
	or   d                                           ; $5cf2: $b2
	ldh  a, [c]                                      ; $5cf3: $f2
	ld   a, [hl-]                                    ; $5cf4: $3a
	ldh  a, [c]                                      ; $5cf5: $f2
	reti                                             ; $5cf6: $d9


	ld   e, c                                        ; $5cf7: $59
	ld   e, l                                        ; $5cf8: $5d
	ld   e, c                                        ; $5cf9: $59
	ld   d, l                                        ; $5cfa: $55
	ld   d, l                                        ; $5cfb: $55
	ld   e, l                                        ; $5cfc: $5d
	ld   c, l                                        ; $5cfd: $4d
	ld   c, c                                        ; $5cfe: $49
	ld   c, c                                        ; $5cff: $49
	rlca                                             ; $5d00: $07
	inc  b                                           ; $5d01: $04
	dec  c                                           ; $5d02: $0d
	ld   c, $1e                                      ; $5d03: $0e $1e
	inc  de                                          ; $5d05: $13

jr_013_5d06:
	rra                                              ; $5d06: $1f
	inc  de                                          ; $5d07: $13
	dec  e                                           ; $5d08: $1d
	inc  de                                          ; $5d09: $13
	rra                                              ; $5d0a: $1f
	rra                                              ; $5d0b: $1f
	ccf                                              ; $5d0c: $3f
	ccf                                              ; $5d0d: $3f
	rst  $38                                         ; $5d0e: $ff
	rst  $38                                         ; $5d0f: $ff
	rra                                              ; $5d10: $1f
	rst  $38                                         ; $5d11: $ff
	ccf                                              ; $5d12: $3f
	rst  JumpTable                                         ; $5d13: $df
	ccf                                              ; $5d14: $3f
	rst  JumpTable                                         ; $5d15: $df

jr_013_5d16:
	ccf                                              ; $5d16: $3f
	rst  JumpTable                                         ; $5d17: $df
	ccf                                              ; $5d18: $3f
	rst  JumpTable                                         ; $5d19: $df
	rrca                                             ; $5d1a: $0f
	rst  $38                                         ; $5d1b: $ff
	jr   c, jr_013_5d16                              ; $5d1c: $38 $f8

	ret  nz                                          ; $5d1e: $c0

	ret  nz                                          ; $5d1f: $c0

	ldh  a, [c]                                      ; $5d20: $f2
	inc  de                                          ; $5d21: $13
	reti                                             ; $5d22: $d9


	add  hl, sp                                      ; $5d23: $39
	inc  h                                           ; $5d24: $24
	db   $e4                                         ; $5d25: $e4
	jp   nz, $01c2                                   ; $5d26: $c2 $c2 $01

	ld   bc, $c1c1                                   ; $5d29: $01 $c1 $c1
	ld   sp, hl                                      ; $5d2c: $f9
	ld   sp, hl                                      ; $5d2d: $f9
	rst  $38                                         ; $5d2e: $ff
	rst  $38                                         ; $5d2f: $ff
	rst  $38                                         ; $5d30: $ff
	rst  $38                                         ; $5d31: $ff
	ld   sp, hl                                      ; $5d32: $f9
	ld   sp, hl                                      ; $5d33: $f9
	ld   hl, sp-$08                                  ; $5d34: $f8 $f8
	db   $fc                                         ; $5d36: $fc
	db   $fc                                         ; $5d37: $fc
	rst  $38                                         ; $5d38: $ff
	rst  $38                                         ; $5d39: $ff
	rst  $38                                         ; $5d3a: $ff
	rst  $38                                         ; $5d3b: $ff
	ccf                                              ; $5d3c: $3f
	ccf                                              ; $5d3d: $3f
	rra                                              ; $5d3e: $1f
	rra                                              ; $5d3f: $1f
	dec  de                                          ; $5d40: $1b
	ei                                               ; $5d41: $fb
	dec  bc                                          ; $5d42: $0b
	ei                                               ; $5d43: $fb
	adc  d                                           ; $5d44: $8a
	ld   a, [$f595]                                  ; $5d45: $fa $95 $f5
	ld   l, d                                        ; $5d48: $6a
	ld   l, d                                        ; $5d49: $6a
	sub  d                                           ; $5d4a: $92
	sub  d                                           ; $5d4b: $92
	inc  h                                           ; $5d4c: $24
	inc  h                                           ; $5d4d: $24
	call nz, $c4c4                                   ; $5d4e: $c4 $c4 $c4
	call nz, $e9e9                                   ; $5d51: $c4 $e9 $e9
	ld   a, [hl]                                     ; $5d54: $7e
	ld   a, a                                        ; $5d55: $7f
	db   $d3                                         ; $5d56: $d3
	sbc  $db                                         ; $5d57: $de $db
	call c, $a4a7                                    ; $5d59: $dc $a7 $a4
	db   $e3                                         ; $5d5c: $e3
	db   $e3                                         ; $5d5d: $e3
	ldh  [$e0], a                                    ; $5d5e: $e0 $e0
	ld   c, e                                        ; $5d60: $4b
	ld   c, c                                        ; $5d61: $49
	sub  $d2                                         ; $5d62: $d6 $d2
	call c, $78d4                                    ; $5d64: $dc $d4 $78
	ld   e, b                                        ; $5d67: $58
	ld   [hl], b                                     ; $5d68: $70
	ld   d, b                                        ; $5d69: $50
	ld   h, b                                        ; $5d6a: $60
	ld   h, b                                        ; $5d6b: $60
	ld   b, b                                        ; $5d6c: $40

jr_013_5d6d:
	ld   b, b                                        ; $5d6d: $40
	ld   b, b                                        ; $5d6e: $40
	ld   b, b                                        ; $5d6f: $40
	ldh  [$e0], a                                    ; $5d70: $e0 $e0
	ret  nc                                          ; $5d72: $d0

	jr   nc, jr_013_5d6d                             ; $5d73: $30 $f8

	ld   [$08f8], sp                                 ; $5d75: $08 $f8 $08
	ld   hl, sp+$18                                  ; $5d78: $f8 $18
	or   b                                           ; $5d7a: $b0
	ld   [hl], b                                     ; $5d7b: $70
	ldh  [$e0], a                                    ; $5d7c: $e0 $e0
	nop                                              ; $5d7e: $00
	nop                                              ; $5d7f: $00
	nop                                              ; $5d80: $00
	nop                                              ; $5d81: $00
	nop                                              ; $5d82: $00
	nop                                              ; $5d83: $00
	nop                                              ; $5d84: $00
	nop                                              ; $5d85: $00
	nop                                              ; $5d86: $00
	nop                                              ; $5d87: $00
	nop                                              ; $5d88: $00
	nop                                              ; $5d89: $00
	nop                                              ; $5d8a: $00
	nop                                              ; $5d8b: $00
	nop                                              ; $5d8c: $00
	nop                                              ; $5d8d: $00
	nop                                              ; $5d8e: $00
	nop                                              ; $5d8f: $00
	nop                                              ; $5d90: $00
	nop                                              ; $5d91: $00
	nop                                              ; $5d92: $00
	nop                                              ; $5d93: $00
	nop                                              ; $5d94: $00
	nop                                              ; $5d95: $00
	nop                                              ; $5d96: $00
	nop                                              ; $5d97: $00
	nop                                              ; $5d98: $00
	nop                                              ; $5d99: $00
	nop                                              ; $5d9a: $00
	nop                                              ; $5d9b: $00
	nop                                              ; $5d9c: $00
	nop                                              ; $5d9d: $00
	nop                                              ; $5d9e: $00
	nop                                              ; $5d9f: $00
	rra                                              ; $5da0: $1f
	rra                                              ; $5da1: $1f
	ccf                                              ; $5da2: $3f
	ccf                                              ; $5da3: $3f
	ccf                                              ; $5da4: $3f
	ccf                                              ; $5da5: $3f
	ccf                                              ; $5da6: $3f
	ccf                                              ; $5da7: $3f
	ccf                                              ; $5da8: $3f
	ccf                                              ; $5da9: $3f
	ccf                                              ; $5daa: $3f
	ccf                                              ; $5dab: $3f
	dec  a                                           ; $5dac: $3d
	ld   a, $3f                                      ; $5dad: $3e $3f
	jr   nz, @+$71                                   ; $5daf: $20 $6f

	ld   e, a                                        ; $5db1: $5f
	ld   [hl], b                                     ; $5db2: $70
	ld   a, a                                        ; $5db3: $7f
	ld   b, c                                        ; $5db4: $41
	ld   a, [hl]                                     ; $5db5: $7e
	ld   b, [hl]                                     ; $5db6: $46
	ld   a, b                                        ; $5db7: $78
	ld   a, a                                        ; $5db8: $7f
	ld   a, a                                        ; $5db9: $7f
	nop                                              ; $5dba: $00
	nop                                              ; $5dbb: $00
	nop                                              ; $5dbc: $00
	nop                                              ; $5dbd: $00
	nop                                              ; $5dbe: $00
	nop                                              ; $5dbf: $00
	ldh  [$e0], a                                    ; $5dc0: $e0 $e0
	ret  nz                                          ; $5dc2: $c0

	ret  nz                                          ; $5dc3: $c0

	ret  nz                                          ; $5dc4: $c0

	ret  nz                                          ; $5dc5: $c0

	ret  nz                                          ; $5dc6: $c0

	ret  nz                                          ; $5dc7: $c0

	ret  nz                                          ; $5dc8: $c0

	ret  nz                                          ; $5dc9: $c0

	add  b                                           ; $5dca: $80
	add  b                                           ; $5dcb: $80
	add  b                                           ; $5dcc: $80
	add  b                                           ; $5dcd: $80
	add  b                                           ; $5dce: $80
	add  b                                           ; $5dcf: $80
	add  b                                           ; $5dd0: $80
	add  b                                           ; $5dd1: $80
	add  b                                           ; $5dd2: $80
	add  b                                           ; $5dd3: $80
	ld   b, b                                        ; $5dd4: $40
	ret  nz                                          ; $5dd5: $c0

	ld   b, b                                        ; $5dd6: $40
	ret  nz                                          ; $5dd7: $c0

	ret  nz                                          ; $5dd8: $c0

	ret  nz                                          ; $5dd9: $c0

	nop                                              ; $5dda: $00
	nop                                              ; $5ddb: $00
	nop                                              ; $5ddc: $00
	nop                                              ; $5ddd: $00
	nop                                              ; $5dde: $00
	nop                                              ; $5ddf: $00
	nop                                              ; $5de0: $00
	nop                                              ; $5de1: $00
	nop                                              ; $5de2: $00
	nop                                              ; $5de3: $00
	nop                                              ; $5de4: $00
	nop                                              ; $5de5: $00
	nop                                              ; $5de6: $00
	nop                                              ; $5de7: $00
	nop                                              ; $5de8: $00
	nop                                              ; $5de9: $00
	nop                                              ; $5dea: $00
	nop                                              ; $5deb: $00
	nop                                              ; $5dec: $00
	nop                                              ; $5ded: $00
	nop                                              ; $5dee: $00
	nop                                              ; $5def: $00
	nop                                              ; $5df0: $00
	nop                                              ; $5df1: $00
	nop                                              ; $5df2: $00
	nop                                              ; $5df3: $00
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
	rrca                                             ; $5e14: $0f
	rrca                                             ; $5e15: $0f
	inc  b                                           ; $5e16: $04
	rlca                                             ; $5e17: $07
	inc  bc                                          ; $5e18: $03
	inc  bc                                          ; $5e19: $03
	inc  bc                                          ; $5e1a: $03
	inc  bc                                          ; $5e1b: $03
	dec  a                                           ; $5e1c: $3d
	ccf                                              ; $5e1d: $3f
	ld   [de], a                                     ; $5e1e: $12
	ld   e, $00                                      ; $5e1f: $1e $00
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
	ld   bc, $3e01                                   ; $5e30: $01 $01 $3e
	ccf                                              ; $5e33: $3f
	ret  nz                                          ; $5e34: $c0

	rst  ToBoot                                         ; $5e35: $c7
	nop                                              ; $5e36: $00
	rst  JumpTable                                         ; $5e37: $df
	nop                                              ; $5e38: $00
	rrca                                             ; $5e39: $0f
	ld   hl, sp-$01                                  ; $5e3a: $f8 $ff
	add  [hl]                                        ; $5e3c: $86
	sbc  a                                           ; $5e3d: $9f
	nop                                              ; $5e3e: $00
	ccf                                              ; $5e3f: $3f
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
	ldh  [$e0], a                                    ; $5e50: $e0 $e0
	db   $10                                         ; $5e52: $10
	ldh  a, [$08]                                    ; $5e53: $f0 $08
	ld   hl, sp+$08                                  ; $5e55: $f8 $08
	ld   hl, sp+$0e                                  ; $5e57: $f8 $0e
	cp   $09                                         ; $5e59: $fe $09
	rst  $38                                         ; $5e5b: $ff
	ld   [$08ff], sp                                 ; $5e5c: $08 $ff $08
	rst  $38                                         ; $5e5f: $ff

jr_013_5e60:
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
	nop                                              ; $5e76: $00
	nop                                              ; $5e77: $00
	nop                                              ; $5e78: $00
	nop                                              ; $5e79: $00
	add  b                                           ; $5e7a: $80
	add  b                                           ; $5e7b: $80
	ld   b, b                                        ; $5e7c: $40
	ret  nz                                          ; $5e7d: $c0

	jr   nz, jr_013_5e60                             ; $5e7e: $20 $e0

	inc  c                                           ; $5e80: $0c
	ld   c, $08                                      ; $5e81: $0e $08
	ld   c, $18                                      ; $5e83: $0e $18
	inc  e                                           ; $5e85: $1c
	db   $10                                         ; $5e86: $10
	rra                                              ; $5e87: $1f
	jr   nz, @+$41                                   ; $5e88: $20 $3f

	ld   hl, $473f                                   ; $5e8a: $21 $3f $47
	ld   a, a                                        ; $5e8d: $7f
	ld   e, e                                        ; $5e8e: $5b
	ld   a, [hl]                                     ; $5e8f: $7e
	ld   l, e                                        ; $5e90: $6b
	ld   l, [hl]                                     ; $5e91: $6e
	ld   c, e                                        ; $5e92: $4b
	ld   c, [hl]                                     ; $5e93: $4e
	dec  bc                                          ; $5e94: $0b
	ld   c, $0b                                      ; $5e95: $0e $0b
	ld   c, $c7                                      ; $5e97: $0e $c7
	rst  ToBoot                                         ; $5e99: $c7
	ld   a, l                                        ; $5e9a: $7d
	ld   a, b                                        ; $5e9b: $78
	ld   de, $b119                                   ; $5e9c: $11 $19 $b1
	or   c                                           ; $5e9f: $b1
	nop                                              ; $5ea0: $00
	ld   a, a                                        ; $5ea1: $7f
	rlca                                             ; $5ea2: $07
	ld   a, a                                        ; $5ea3: $7f
	ld   e, $3f                                      ; $5ea4: $1e $3f
	ld   h, e                                        ; $5ea6: $63
	pop  hl                                          ; $5ea7: $e1
	ldh  a, [$b0]                                    ; $5ea8: $f0 $b0
	db   $fc                                         ; $5eaa: $fc
	ld   hl, sp+$3e                                  ; $5eab: $f8 $3e
	halt                                             ; $5ead: $76
	sbc  a                                           ; $5eae: $9f
	pop  de                                          ; $5eaf: $d1
	sbc  a                                           ; $5eb0: $9f
	ret  nc                                          ; $5eb1: $d0

	rst  $38                                         ; $5eb2: $ff
	ld   bc, $02fe                                   ; $5eb3: $01 $fe $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5eb6: $cf
	ld   sp, $807f                                   ; $5eb7: $31 $7f $80
	rst  $28                                         ; $5eba: $ef
	ldh  a, [$9f]                                    ; $5ebb: $f0 $9f
	sbc  b                                           ; $5ebd: $98
	cp   a                                           ; $5ebe: $bf
	jr   c, @+$0a                                    ; $5ebf: $38 $08

	rst  $38                                         ; $5ec1: $ff
	db   $10                                         ; $5ec2: $10
	rst  $38                                         ; $5ec3: $ff
	db   $10                                         ; $5ec4: $10
	rst  $38                                         ; $5ec5: $ff
	jr   nz, @+$01                                   ; $5ec6: $20 $ff

	add  $ff                                         ; $5ec8: $c6 $ff
	ld   [hl], c                                     ; $5eca: $71
	ccf                                              ; $5ecb: $3f
	add  hl, bc                                      ; $5ecc: $09
	rrca                                             ; $5ecd: $0f
	adc  h                                           ; $5ece: $8c
	add  a                                           ; $5ecf: $87
	db   $e4                                         ; $5ed0: $e4
	and  $dc                                         ; $5ed1: $e6 $dc
	or   $bc                                         ; $5ed3: $f6 $bc
	db   $ec                                         ; $5ed5: $ec
	sbc  h                                           ; $5ed6: $9c
	call nc, $1ef4                                   ; $5ed7: $d4 $f4 $1e
	ld   hl, sp+$0f                                  ; $5eda: $f8 $0f
	ld   sp, hl                                      ; $5edc: $f9
	rrca                                             ; $5edd: $0f
	ld   a, [$207f]                                  ; $5ede: $fa $7f $20
	ldh  [rAUD4LEN], a                               ; $5ee1: $e0 $20
	and  b                                           ; $5ee3: $a0
	db   $10                                         ; $5ee4: $10
	ret  nc                                          ; $5ee5: $d0

	db   $10                                         ; $5ee6: $10
	ret  nc                                          ; $5ee7: $d0

	ld   [$4888], sp                                 ; $5ee8: $08 $88 $48
	ld   c, b                                        ; $5eeb: $48
	inc  h                                           ; $5eec: $24
	ld   a, h                                        ; $5eed: $7c
	sub  e                                           ; $5eee: $93
	sbc  a                                           ; $5eef: $9f
	sbc  [hl]                                        ; $5ef0: $9e
	sbc  [hl]                                        ; $5ef1: $9e
	adc  b                                           ; $5ef2: $88
	ret  c                                           ; $5ef3: $d8

	adc  b                                           ; $5ef4: $88
	ld   hl, sp-$7c                                  ; $5ef5: $f8 $84
	db   $fc                                         ; $5ef7: $fc
	call nz, $fefc                                   ; $5ef8: $c4 $fc $fe
	cp   $58                                         ; $5efb: $fe $58
	add  sp, -$58                                    ; $5efd: $e8 $a8
	xor  b                                           ; $5eff: $a8
	or   d                                           ; $5f00: $b2
	or   d                                           ; $5f01: $b2
	or   d                                           ; $5f02: $b2
	or   d                                           ; $5f03: $b2
	or   e                                           ; $5f04: $b3
	or   c                                           ; $5f05: $b1
	or   c                                           ; $5f06: $b1
	or   c                                           ; $5f07: $b1
	sbc  c                                           ; $5f08: $99
	sbc  c                                           ; $5f09: $99
	sbc  l                                           ; $5f0a: $9d
	sbc  l                                           ; $5f0b: $9d
	adc  l                                           ; $5f0c: $8d
	adc  l                                           ; $5f0d: $8d

jr_013_5f0e:
	rst  $38                                         ; $5f0e: $ff
	rst  $38                                         ; $5f0f: $ff
	ld   a, a                                        ; $5f10: $7f
	ld   a, a                                        ; $5f11: $7f
	ld   a, h                                        ; $5f12: $7c
	ld   a, h                                        ; $5f13: $7c
	inc  a                                           ; $5f14: $3c
	inc  a                                           ; $5f15: $3c
	rra                                              ; $5f16: $1f
	rra                                              ; $5f17: $1f
	rra                                              ; $5f18: $1f
	rra                                              ; $5f19: $1f
	rra                                              ; $5f1a: $1f
	rra                                              ; $5f1b: $1f
	rra                                              ; $5f1c: $1f
	rra                                              ; $5f1d: $1f
	rrca                                             ; $5f1e: $0f
	rrca                                             ; $5f1f: $0f
	rlca                                             ; $5f20: $07
	rlca                                             ; $5f21: $07
	inc  bc                                          ; $5f22: $03
	ld   bc, $0101                                   ; $5f23: $01 $01 $01
	adc  a                                           ; $5f26: $8f
	rrca                                             ; $5f27: $0f
	rst  $30                                         ; $5f28: $f7
	ld   a, e                                        ; $5f29: $7b
	rst  $28                                         ; $5f2a: $ef
	or   b                                           ; $5f2b: $b0
	rst  $38                                         ; $5f2c: $ff
	db   $10                                         ; $5f2d: $10
	rst  $38                                         ; $5f2e: $ff
	ld   hl, sp+$3c                                  ; $5f2f: $f8 $3c
	ccf                                              ; $5f31: $3f
	di                                               ; $5f32: $f3
	rst  $38                                         ; $5f33: $ff
	rla                                              ; $5f34: $17
	jr   jr_013_5f0e                                 ; $5f35: $18 $d7

	ret  c                                           ; $5f37: $d8

	rst  $38                                         ; $5f38: $ff
	db   $fc                                         ; $5f39: $fc
	push hl                                          ; $5f3a: $e5
	and  $e3                                         ; $5f3b: $e6 $e3
	db   $e3                                         ; $5f3d: $e3
	ldh  [$e0], a                                    ; $5f3e: $e0 $e0
	rst  $38                                         ; $5f40: $ff
	rst  $38                                         ; $5f41: $ff
	xor  $9f                                         ; $5f42: $ee $9f
	db   $f4                                         ; $5f44: $f4
	ld   c, $7a                                      ; $5f45: $0e $7a
	add  [hl]                                        ; $5f47: $86
	cp   $86                                         ; $5f48: $fe $86
	db   $f4                                         ; $5f4a: $f4
	inc  c                                           ; $5f4b: $0c
	ld   hl, sp+$38                                  ; $5f4c: $f8 $38
	ldh  [$60], a                                    ; $5f4e: $e0 $60
	add  b                                           ; $5f50: $80
	add  b                                           ; $5f51: $80
	ret  nz                                          ; $5f52: $c0

	ret  nz                                          ; $5f53: $c0

	and  b                                           ; $5f54: $a0
	ld   h, b                                        ; $5f55: $60
	ldh  [rAUD4LEN], a                               ; $5f56: $e0 $20
	ldh  a, [$90]                                    ; $5f58: $f0 $90
	ldh  a, [$50]                                    ; $5f5a: $f0 $50
	ldh  a, [$d0]                                    ; $5f5c: $f0 $d0
	ld   h, b                                        ; $5f5e: $60
	ld   h, b                                        ; $5f5f: $60
	and  h                                           ; $5f60: $a4
	and  h                                           ; $5f61: $a4
	or   h                                           ; $5f62: $b4
	and  h                                           ; $5f63: $a4
	or   d                                           ; $5f64: $b2
	or   d                                           ; $5f65: $b2
	cp   d                                           ; $5f66: $ba
	or   d                                           ; $5f67: $b2
	xor  d                                           ; $5f68: $aa
	xor  d                                           ; $5f69: $aa
	cp   d                                           ; $5f6a: $ba
	sbc  d                                           ; $5f6b: $9a
	sub  d                                           ; $5f6c: $92
	sub  d                                           ; $5f6d: $92
	sub  [hl]                                        ; $5f6e: $96
	sub  d                                           ; $5f6f: $92
	xor  h                                           ; $5f70: $ac
	and  h                                           ; $5f71: $a4
	cp   b                                           ; $5f72: $b8
	cp   b                                           ; $5f73: $b8
	and  b                                           ; $5f74: $a0
	and  b                                           ; $5f75: $a0
	ldh  [hScriptOpcodeParams], a                                    ; $5f76: $e0 $a0
	ret  nz                                          ; $5f78: $c0

	ret  nz                                          ; $5f79: $c0

	add  b                                           ; $5f7a: $80
	add  b                                           ; $5f7b: $80
	nop                                              ; $5f7c: $00
	nop                                              ; $5f7d: $00
	nop                                              ; $5f7e: $00
	nop                                              ; $5f7f: $00
	rrca                                             ; $5f80: $0f
	rrca                                             ; $5f81: $0f
	rrca                                             ; $5f82: $0f
	rrca                                             ; $5f83: $0f
	rrca                                             ; $5f84: $0f
	rrca                                             ; $5f85: $0f
	rlca                                             ; $5f86: $07
	rlca                                             ; $5f87: $07
	rlca                                             ; $5f88: $07
	rlca                                             ; $5f89: $07
	rlca                                             ; $5f8a: $07
	inc  b                                           ; $5f8b: $04
	rlca                                             ; $5f8c: $07
	inc  b                                           ; $5f8d: $04
	rlca                                             ; $5f8e: $07
	inc  b                                           ; $5f8f: $04
	rlca                                             ; $5f90: $07
	inc  b                                           ; $5f91: $04
	inc  b                                           ; $5f92: $04
	rlca                                             ; $5f93: $07
	inc  b                                           ; $5f94: $04
	rlca                                             ; $5f95: $07
	inc  b                                           ; $5f96: $04
	rlca                                             ; $5f97: $07
	inc  bc                                          ; $5f98: $03
	inc  bc                                          ; $5f99: $03
	nop                                              ; $5f9a: $00
	nop                                              ; $5f9b: $00
	nop                                              ; $5f9c: $00
	nop                                              ; $5f9d: $00
	nop                                              ; $5f9e: $00
	nop                                              ; $5f9f: $00
	ldh  [$e0], a                                    ; $5fa0: $e0 $e0
	ldh  [$e0], a                                    ; $5fa2: $e0 $e0
	ldh  [$e0], a                                    ; $5fa4: $e0 $e0
	ldh  [$e0], a                                    ; $5fa6: $e0 $e0
	ldh  a, [$f0]                                    ; $5fa8: $f0 $f0
	ldh  a, [rAUD1SWEEP]                             ; $5faa: $f0 $10
	ldh  a, [rAUD1SWEEP]                             ; $5fac: $f0 $10
	ldh  a, [rAUD1SWEEP]                             ; $5fae: $f0 $10
	cp   h                                           ; $5fb0: $bc
	ld   a, h                                        ; $5fb1: $7c
	ld   [bc], a                                     ; $5fb2: $02
	cp   $06                                         ; $5fb3: $fe $06
	ld   a, [$e21a]                                  ; $5fb5: $fa $1a $e2
	cp   $fe                                         ; $5fb8: $fe $fe
	nop                                              ; $5fba: $00
	nop                                              ; $5fbb: $00
	nop                                              ; $5fbc: $00
	nop                                              ; $5fbd: $00
	nop                                              ; $5fbe: $00
	nop                                              ; $5fbf: $00
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
	nop                                              ; $5fd2: $00
	nop                                              ; $5fd3: $00
	nop                                              ; $5fd4: $00
	nop                                              ; $5fd5: $00
	nop                                              ; $5fd6: $00
	nop                                              ; $5fd7: $00
	nop                                              ; $5fd8: $00
	nop                                              ; $5fd9: $00
	nop                                              ; $5fda: $00
	nop                                              ; $5fdb: $00
	nop                                              ; $5fdc: $00
	nop                                              ; $5fdd: $00
	nop                                              ; $5fde: $00
	nop                                              ; $5fdf: $00
	nop                                              ; $5fe0: $00
	nop                                              ; $5fe1: $00
	nop                                              ; $5fe2: $00
	nop                                              ; $5fe3: $00
	nop                                              ; $5fe4: $00
	nop                                              ; $5fe5: $00
	nop                                              ; $5fe6: $00
	nop                                              ; $5fe7: $00
	nop                                              ; $5fe8: $00
	nop                                              ; $5fe9: $00
	nop                                              ; $5fea: $00
	nop                                              ; $5feb: $00
	nop                                              ; $5fec: $00
	nop                                              ; $5fed: $00
	nop                                              ; $5fee: $00
	nop                                              ; $5fef: $00
	nop                                              ; $5ff0: $00
	nop                                              ; $5ff1: $00
	nop                                              ; $5ff2: $00
	nop                                              ; $5ff3: $00
	nop                                              ; $5ff4: $00
	nop                                              ; $5ff5: $00
	nop                                              ; $5ff6: $00
	nop                                              ; $5ff7: $00
	nop                                              ; $5ff8: $00
	nop                                              ; $5ff9: $00
	nop                                              ; $5ffa: $00
	nop                                              ; $5ffb: $00
	nop                                              ; $5ffc: $00
	nop                                              ; $5ffd: $00
	nop                                              ; $5ffe: $00
	nop                                              ; $5fff: $00
	nop                                              ; $6000: $00
	nop                                              ; $6001: $00
	nop                                              ; $6002: $00
	nop                                              ; $6003: $00
	nop                                              ; $6004: $00
	nop                                              ; $6005: $00
	nop                                              ; $6006: $00
	nop                                              ; $6007: $00
	nop                                              ; $6008: $00
	nop                                              ; $6009: $00
	inc  bc                                          ; $600a: $03
	inc  bc                                          ; $600b: $03
	inc  b                                           ; $600c: $04
	rlca                                             ; $600d: $07
	ld   [$080f], sp                                 ; $600e: $08 $0f $08
	rrca                                             ; $6011: $0f
	db   $10                                         ; $6012: $10
	rra                                              ; $6013: $1f
	db   $10                                         ; $6014: $10
	rra                                              ; $6015: $1f
	inc  de                                          ; $6016: $13
	rra                                              ; $6017: $1f
	add  hl, sp                                      ; $6018: $39
	ccf                                              ; $6019: $3f
	ld   b, a                                        ; $601a: $47
	ld   a, a                                        ; $601b: $7f
	add  h                                           ; $601c: $84
	sbc  h                                           ; $601d: $9c
	or   h                                           ; $601e: $b4
	db   $fc                                         ; $601f: $fc
	nop                                              ; $6020: $00
	nop                                              ; $6021: $00
	nop                                              ; $6022: $00
	nop                                              ; $6023: $00
	nop                                              ; $6024: $00
	nop                                              ; $6025: $00
	nop                                              ; $6026: $00
	nop                                              ; $6027: $00
	nop                                              ; $6028: $00
	nop                                              ; $6029: $00
	ret  nz                                          ; $602a: $c0

	ret  nz                                          ; $602b: $c0

	cpl                                              ; $602c: $2f
	rst  $28                                         ; $602d: $ef
	db   $10                                         ; $602e: $10
	rst  $38                                         ; $602f: $ff
	nop                                              ; $6030: $00
	rst  $38                                         ; $6031: $ff
	nop                                              ; $6032: $00
	rst  $38                                         ; $6033: $ff
	inc  b                                           ; $6034: $04
	rst  $38                                         ; $6035: $ff
	ld   [bc], a                                     ; $6036: $02
	rst  $38                                         ; $6037: $ff
	add  d                                           ; $6038: $82
	ei                                               ; $6039: $fb
	pop  bc                                          ; $603a: $c1
	db   $dd                                         ; $603b: $dd

jr_013_603c:
	pop  bc                                          ; $603c: $c1
	push hl                                          ; $603d: $e5
	ld   b, c                                        ; $603e: $41
	ld   [hl], c                                     ; $603f: $71
	nop                                              ; $6040: $00
	nop                                              ; $6041: $00
	nop                                              ; $6042: $00
	nop                                              ; $6043: $00
	nop                                              ; $6044: $00
	nop                                              ; $6045: $00
	nop                                              ; $6046: $00
	nop                                              ; $6047: $00
	nop                                              ; $6048: $00
	nop                                              ; $6049: $00
	nop                                              ; $604a: $00
	nop                                              ; $604b: $00
	add  b                                           ; $604c: $80
	add  b                                           ; $604d: $80
	ld   [hl], b                                     ; $604e: $70
	ldh  a, [$0c]                                    ; $604f: $f0 $0c
	db   $fc                                         ; $6051: $fc
	ld   [bc], a                                     ; $6052: $02
	or   $01                                         ; $6053: $f6 $01
	ld   sp, hl                                      ; $6055: $f9
	ld   bc, $40fd                                   ; $6056: $01 $fd $40
	call c, $e020                                    ; $6059: $dc $20 $e0
	db   $10                                         ; $605c: $10
	call c, $1f14                                    ; $605d: $dc $14 $1f
	nop                                              ; $6060: $00
	nop                                              ; $6061: $00
	nop                                              ; $6062: $00
	nop                                              ; $6063: $00
	nop                                              ; $6064: $00
	nop                                              ; $6065: $00
	nop                                              ; $6066: $00
	nop                                              ; $6067: $00
	nop                                              ; $6068: $00
	nop                                              ; $6069: $00
	nop                                              ; $606a: $00
	nop                                              ; $606b: $00
	nop                                              ; $606c: $00
	nop                                              ; $606d: $00
	nop                                              ; $606e: $00
	nop                                              ; $606f: $00
	nop                                              ; $6070: $00
	nop                                              ; $6071: $00
	nop                                              ; $6072: $00
	nop                                              ; $6073: $00
	nop                                              ; $6074: $00
	nop                                              ; $6075: $00
	nop                                              ; $6076: $00
	nop                                              ; $6077: $00
	add  b                                           ; $6078: $80
	add  b                                           ; $6079: $80
	add  b                                           ; $607a: $80
	add  b                                           ; $607b: $80
	ld   b, b                                        ; $607c: $40
	ret  nz                                          ; $607d: $c0

	ld   b, b                                        ; $607e: $40
	ret  nz                                          ; $607f: $c0

	db   $e4                                         ; $6080: $e4
	db   $e4                                         ; $6081: $e4
	and  a                                           ; $6082: $a7
	xor  a                                           ; $6083: $af
	daa                                              ; $6084: $27
	dec  a                                           ; $6085: $3d
	cpl                                              ; $6086: $2f
	ccf                                              ; $6087: $3f
	dec  l                                           ; $6088: $2d
	ccf                                              ; $6089: $3f
	or   a                                           ; $608a: $b7
	dec  [hl]                                        ; $608b: $35
	ld   h, $24                                      ; $608c: $26 $24
	rrca                                             ; $608e: $0f
	ld   [$fcfb], sp                                 ; $608f: $08 $fb $fc
	rlca                                             ; $6092: $07
	inc  b                                           ; $6093: $04
	rlca                                             ; $6094: $07
	inc  bc                                          ; $6095: $03
	nop                                              ; $6096: $00
	nop                                              ; $6097: $00
	jr   jr_013_60a2                                 ; $6098: $18 $08

	db   $10                                         ; $609a: $10
	db   $10                                         ; $609b: $10
	jr   nc, jr_013_60ae                             ; $609c: $30 $10

	jr   nz, jr_013_60c0                             ; $609e: $20 $20

	ld   [hl+], a                                    ; $60a0: $22
	dec  sp                                          ; $60a1: $3b

jr_013_60a2:
	ldh  a, [c]                                      ; $60a2: $f2
	rst  $38                                         ; $60a3: $ff
	db   $f4                                         ; $60a4: $f4
	sbc  a                                           ; $60a5: $9f
	call c, $23ff                                    ; $60a6: $dc $ff $23
	inc  hl                                          ; $60a9: $23
	jr   nz, jr_013_603c                             ; $60aa: $20 $90

	ld   hl, sp+$10                                  ; $60ac: $f8 $10

jr_013_60ae:
	db   $fc                                         ; $60ae: $fc
	ld   [$0fff], sp                                 ; $60af: $08 $ff $0f
	cp   $03                                         ; $60b2: $fe $03
	rst  $38                                         ; $60b4: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $60b5: $cf
	ld   a, h                                        ; $60b6: $7c
	jr   c, jr_013_60c8                              ; $60b7: $38 $0f

	rlca                                             ; $60b9: $07
	ld   bc, $0101                                   ; $60ba: $01 $01 $01
	ld   bc, $021a                                   ; $60bd: $01 $1a $02

jr_013_60c0:
	adc  d                                           ; $60c0: $8a
	rst  $38                                         ; $60c1: $ff

jr_013_60c2:
	set  7, a                                        ; $60c2: $cb $ff
	xor  e                                           ; $60c4: $ab
	rst  $38                                         ; $60c5: $ff
	sbc  e                                           ; $60c6: $9b
	rst  $38                                         ; $60c7: $ff

jr_013_60c8:
	adc  l                                           ; $60c8: $8d

jr_013_60c9:
	db   $fd                                         ; $60c9: $fd
	di                                               ; $60ca: $f3
	di                                               ; $60cb: $f3
	ld   b, $07                                      ; $60cc: $06 $07
	jr   c, jr_013_60ed                              ; $60ce: $38 $1d

	pop  de                                          ; $60d0: $d1
	ld   sp, hl                                      ; $60d1: $f9
	ld   [hl], d                                     ; $60d2: $72
	di                                               ; $60d3: $f3
	push bc                                          ; $60d4: $c5
	rst  $20                                         ; $60d5: $e7
	ld   b, $0e                                      ; $60d6: $06 $0e
	ld   a, [hl+]                                    ; $60d8: $2a
	ld   e, $fc                                      ; $60d9: $1e $fc
	db   $fc                                         ; $60db: $fc
	ld   b, $06                                      ; $60dc: $06 $06
	inc  bc                                          ; $60de: $03
	inc  bc                                          ; $60df: $03
	jr   nz, jr_013_60c2                             ; $60e0: $20 $e0

	sub  b                                           ; $60e2: $90
	ldh  a, [$f8]                                    ; $60e3: $f0 $f8
	ld   hl, sp-$80                                  ; $60e5: $f8 $80
	add  b                                           ; $60e7: $80
	ld   b, b                                        ; $60e8: $40
	ret  nz                                          ; $60e9: $c0

	ld   b, b                                        ; $60ea: $40
	ret  nz                                          ; $60eb: $c0

	ld   b, b                                        ; $60ec: $40

jr_013_60ed:
	ret  nz                                          ; $60ed: $c0

	ld   b, b                                        ; $60ee: $40
	ret  nz                                          ; $60ef: $c0

	ret  nz                                          ; $60f0: $c0

	ret  nz                                          ; $60f1: $c0

	ld   b, b                                        ; $60f2: $40
	ld   b, b                                        ; $60f3: $40
	nop                                              ; $60f4: $00
	nop                                              ; $60f5: $00
	nop                                              ; $60f6: $00
	nop                                              ; $60f7: $00
	nop                                              ; $60f8: $00
	nop                                              ; $60f9: $00
	ld   e, $1e                                      ; $60fa: $1e $1e
	ccf                                              ; $60fc: $3f
	ld   hl, $213f                                   ; $60fd: $21 $3f $21
	ld   h, b                                        ; $6100: $60
	jr   nz, @+$42                                   ; $6101: $20 $40

	ld   b, b                                        ; $6103: $40
	ret  nz                                          ; $6104: $c0

	ret  nz                                          ; $6105: $c0

	ld   b, b                                        ; $6106: $40
	ld   b, b                                        ; $6107: $40
	ld   b, b                                        ; $6108: $40
	ld   b, b                                        ; $6109: $40
	ld   b, b                                        ; $610a: $40
	ld   b, b                                        ; $610b: $40
	ld   b, b                                        ; $610c: $40
	ld   b, b                                        ; $610d: $40
	ld   b, c                                        ; $610e: $41
	ld   b, c                                        ; $610f: $41
	ld   c, a                                        ; $6110: $4f
	ld   c, a                                        ; $6111: $4f
	ld   a, a                                        ; $6112: $7f
	ld   a, a                                        ; $6113: $7f
	ld   [hl], b                                     ; $6114: $70
	ld   [hl], b                                     ; $6115: $70
	ld   h, b                                        ; $6116: $60
	ld   h, b                                        ; $6117: $60
	jr   nz, @+$22                                   ; $6118: $20 $20

	ld   c, a                                        ; $611a: $4f
	ld   c, a                                        ; $611b: $4f
	ld   e, a                                        ; $611c: $5f
	ld   e, a                                        ; $611d: $5f
	ld   a, a                                        ; $611e: $7f
	ld   a, a                                        ; $611f: $7f
	rlca                                             ; $6120: $07
	nop                                              ; $6121: $00
	ld   [bc], a                                     ; $6122: $02
	ld   [bc], a                                     ; $6123: $02
	ld   [bc], a                                     ; $6124: $02
	ld   [bc], a                                     ; $6125: $02
	ld   de, $0c11                                   ; $6126: $11 $11 $0c
	inc  c                                           ; $6129: $0c
	inc  bc                                          ; $612a: $03
	inc  bc                                          ; $612b: $03
	ld   b, $06                                      ; $612c: $06 $06
	rst  $38                                         ; $612e: $ff
	rst  $38                                         ; $612f: $ff
	rst  $38                                         ; $6130: $ff
	rst  $38                                         ; $6131: $ff
	add  [hl]                                        ; $6132: $86
	add  [hl]                                        ; $6133: $86
	rrca                                             ; $6134: $0f
	rrca                                             ; $6135: $0f
	inc  c                                           ; $6136: $0c
	inc  c                                           ; $6137: $0c
	call $fdcd                                       ; $6138: $cd $cd $fd
	db   $fd                                         ; $613b: $fd
	rst  $38                                         ; $613c: $ff
	rst  $38                                         ; $613d: $ff
	rst  $38                                         ; $613e: $ff
	rst  $38                                         ; $613f: $ff
	pop  bc                                          ; $6140: $c1
	ld   bc, $00ff                                   ; $6141: $01 $ff $00
	rra                                              ; $6144: $1f
	ld   h, b                                        ; $6145: $60
	rlca                                             ; $6146: $07
	jr   jr_013_60c9                                 ; $6147: $18 $80

	add  a                                           ; $6149: $87
	ld   b, c                                        ; $614a: $41
	pop  bc                                          ; $614b: $c1
	inc  sp                                          ; $614c: $33
	inc  sp                                          ; $614d: $33
	ld   l, $2e                                      ; $614e: $2e $2e
	ret  nz                                          ; $6150: $c0

	ret  nz                                          ; $6151: $c0

	ld   h, b                                        ; $6152: $60
	ld   h, b                                        ; $6153: $60
	sbc  b                                           ; $6154: $98
	sbc  b                                           ; $6155: $98
	db   $e4                                         ; $6156: $e4
	db   $e4                                         ; $6157: $e4
	db   $fc                                         ; $6158: $fc
	db   $fc                                         ; $6159: $fc
	cp   $fe                                         ; $615a: $fe $fe

jr_013_615c:
	cp   $fe                                         ; $615c: $fe $fe
	rst  $38                                         ; $615e: $ff
	rst  $38                                         ; $615f: $ff
	rst  $28                                         ; $6160: $ef
	pop  af                                          ; $6161: $f1
	rst  $38                                         ; $6162: $ff
	ld   [hl], c                                     ; $6163: $71
	rst  $38                                         ; $6164: $ff
	ld   bc, $0df3                                   ; $6165: $01 $f3 $0d
	ld   c, $fe                                      ; $6168: $0e $fe
	jr   nc, jr_013_615c                             ; $616a: $30 $f0

	ret  nz                                          ; $616c: $c0

	ret  nz                                          ; $616d: $c0

	nop                                              ; $616e: $00
	nop                                              ; $616f: $00
	nop                                              ; $6170: $00
	nop                                              ; $6171: $00
	nop                                              ; $6172: $00
	nop                                              ; $6173: $00
	nop                                              ; $6174: $00
	nop                                              ; $6175: $00
	nop                                              ; $6176: $00
	nop                                              ; $6177: $00
	nop                                              ; $6178: $00
	nop                                              ; $6179: $00
	nop                                              ; $617a: $00
	nop                                              ; $617b: $00
	nop                                              ; $617c: $00
	nop                                              ; $617d: $00
	nop                                              ; $617e: $00
	nop                                              ; $617f: $00
	ccf                                              ; $6180: $3f
	ccf                                              ; $6181: $3f
	rra                                              ; $6182: $1f
	rra                                              ; $6183: $1f
	rrca                                             ; $6184: $0f
	rrca                                             ; $6185: $0f
	rra                                              ; $6186: $1f
	rra                                              ; $6187: $1f
	rra                                              ; $6188: $1f
	rra                                              ; $6189: $1f
	ccf                                              ; $618a: $3f
	ccf                                              ; $618b: $3f
	dec  sp                                          ; $618c: $3b
	scf                                              ; $618d: $37
	ccf                                              ; $618e: $3f
	jr   nz, jr_013_620e                             ; $618f: $20 $7d

	ld   a, [hl]                                     ; $6191: $7e
	ld   b, e                                        ; $6192: $43
	ld   a, a                                        ; $6193: $7f
	add  c                                           ; $6194: $81
	cp   $9e                                         ; $6195: $fe $9e
	ldh  [rIE], a                                    ; $6197: $e0 $ff
	rst  $38                                         ; $6199: $ff
	nop                                              ; $619a: $00
	nop                                              ; $619b: $00
	nop                                              ; $619c: $00
	nop                                              ; $619d: $00
	nop                                              ; $619e: $00
	nop                                              ; $619f: $00
	rst  $38                                         ; $61a0: $ff
	rst  $38                                         ; $61a1: $ff
	ld   sp, hl                                      ; $61a2: $f9
	ld   sp, hl                                      ; $61a3: $f9
	ld   hl, sp-$08                                  ; $61a4: $f8 $f8
	ld   hl, sp-$08                                  ; $61a6: $f8 $f8
	ld   hl, sp-$08                                  ; $61a8: $f8 $f8
	ldh  a, [$f0]                                    ; $61aa: $f0 $f0
	ldh  [$e0], a                                    ; $61ac: $e0 $e0
	ldh  [$60], a                                    ; $61ae: $e0 $60
	ldh  [rAUD4LEN], a                               ; $61b0: $e0 $20
	ret  nz                                          ; $61b2: $c0

	ret  nz                                          ; $61b3: $c0

	ld   b, b                                        ; $61b4: $40
	ret  nz                                          ; $61b5: $c0

	ld   b, b                                        ; $61b6: $40
	ret  nz                                          ; $61b7: $c0

	ret  nz                                          ; $61b8: $c0

	ret  nz                                          ; $61b9: $c0

	nop                                              ; $61ba: $00
	nop                                              ; $61bb: $00
	nop                                              ; $61bc: $00
	nop                                              ; $61bd: $00
	nop                                              ; $61be: $00
	nop                                              ; $61bf: $00
	rst  $38                                         ; $61c0: $ff
	rst  $38                                         ; $61c1: $ff
	rst  $38                                         ; $61c2: $ff
	rst  $38                                         ; $61c3: $ff
	ei                                               ; $61c4: $fb
	db   $fc                                         ; $61c5: $fc
	rst  $38                                         ; $61c6: $ff
	ret  nz                                          ; $61c7: $c0

	inc  hl                                          ; $61c8: $23
	inc  a                                           ; $61c9: $3c
	jr   nz, jr_013_620b                             ; $61ca: $20 $3f

jr_013_61cc:
	jr   nz, jr_013_620d                             ; $61cc: $20 $3f

	inc  hl                                          ; $61ce: $23
	inc  a                                           ; $61cf: $3c
	ld   e, $1f                                      ; $61d0: $1e $1f
	ld   bc, $0001                                   ; $61d2: $01 $01 $00
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
	add  b                                           ; $61e4: $80
	add  b                                           ; $61e5: $80
	ret  nz                                          ; $61e6: $c0

	ld   b, b                                        ; $61e7: $40
	ret  nz                                          ; $61e8: $c0

	ld   b, b                                        ; $61e9: $40
	jr   nz, jr_013_61cc                             ; $61ea: $20 $e0

	ld   d, b                                        ; $61ec: $50
	or   b                                           ; $61ed: $b0
	sub  b                                           ; $61ee: $90
	jr   nc, jr_013_6201                             ; $61ef: $30 $10

	ldh  a, [$f0]                                    ; $61f1: $f0 $f0
	ldh  a, [rP1]                                    ; $61f3: $f0 $00
	nop                                              ; $61f5: $00
	nop                                              ; $61f6: $00
	nop                                              ; $61f7: $00
	nop                                              ; $61f8: $00
	nop                                              ; $61f9: $00
	nop                                              ; $61fa: $00
	nop                                              ; $61fb: $00
	nop                                              ; $61fc: $00
	nop                                              ; $61fd: $00
	nop                                              ; $61fe: $00
	nop                                              ; $61ff: $00
	nop                                              ; $6200: $00

jr_013_6201:
	nop                                              ; $6201: $00
	nop                                              ; $6202: $00
	nop                                              ; $6203: $00
	nop                                              ; $6204: $00
	nop                                              ; $6205: $00
	nop                                              ; $6206: $00
	nop                                              ; $6207: $00
	nop                                              ; $6208: $00
	nop                                              ; $6209: $00
	nop                                              ; $620a: $00

jr_013_620b:
	nop                                              ; $620b: $00
	nop                                              ; $620c: $00

jr_013_620d:
	nop                                              ; $620d: $00

jr_013_620e:
	nop                                              ; $620e: $00
	nop                                              ; $620f: $00
	nop                                              ; $6210: $00
	nop                                              ; $6211: $00
	rrca                                             ; $6212: $0f
	rrca                                             ; $6213: $0f
	jr   @+$21                                       ; $6214: $18 $1f

	inc  b                                           ; $6216: $04
	rlca                                             ; $6217: $07
	inc  bc                                          ; $6218: $03
	inc  bc                                          ; $6219: $03
	inc  bc                                          ; $621a: $03
	inc  bc                                          ; $621b: $03
	dec  a                                           ; $621c: $3d
	ccf                                              ; $621d: $3f
	ld   [de], a                                     ; $621e: $12
	ld   e, $00                                      ; $621f: $1e $00
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
	db   $fc                                         ; $6230: $fc
	db   $fc                                         ; $6231: $fc
	add  h                                           ; $6232: $84
	adc  h                                           ; $6233: $8c
	ld   b, $c6                                      ; $6234: $06 $c6
	inc  bc                                          ; $6236: $03
	di                                               ; $6237: $f3
	db   $e3                                         ; $6238: $e3
	rst  $38                                         ; $6239: $ff
	ld   a, [hl]                                     ; $623a: $7e
	rst  $38                                         ; $623b: $ff
	add  [hl]                                        ; $623c: $86
	sbc  a                                           ; $623d: $9f
	rra                                              ; $623e: $1f
	ccf                                              ; $623f: $3f
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
	ld   [hl], b                                     ; $6252: $70
	ld   [hl], b                                     ; $6253: $70
	adc  b                                           ; $6254: $88
	ld   hl, sp+$08                                  ; $6255: $f8 $08
	ld   hl, sp+$0e                                  ; $6257: $f8 $0e
	cp   $09                                         ; $6259: $fe $09
	rst  $28                                         ; $625b: $ef
	ld   [$08ef], sp                                 ; $625c: $08 $ef $08
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $625f: $cf

jr_013_6260:
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
	nop                                              ; $6276: $00
	nop                                              ; $6277: $00
	nop                                              ; $6278: $00
	nop                                              ; $6279: $00
	add  b                                           ; $627a: $80
	add  b                                           ; $627b: $80
	ld   b, b                                        ; $627c: $40
	ret  nz                                          ; $627d: $c0

	jr   nz, jr_013_6260                             ; $627e: $20 $e0

	call z, $e8ce                                    ; $6280: $cc $ce $e8
	ld   l, $f3                                      ; $6283: $2e $f3
	rst  $38                                         ; $6285: $ff
	or   $9f                                         ; $6286: $f6 $9f
	ld   [hl], h                                     ; $6288: $74
	rst  $38                                         ; $6289: $ff
	ld   e, c                                        ; $628a: $59
	cp   a                                           ; $628b: $bf
	ld   sp, hl                                      ; $628c: $f9
	adc  a                                           ; $628d: $8f
	ei                                               ; $628e: $fb
	ld   l, [hl]                                     ; $628f: $6e
	ei                                               ; $6290: $fb
	dec  e                                           ; $6291: $1d
	ld   a, [hl]                                     ; $6292: $7e
	add  [hl]                                        ; $6293: $86

jr_013_6294:
	ld   a, a                                        ; $6294: $7f
	pop  bc                                          ; $6295: $c1
	rst  $38                                         ; $6296: $ff
	pop  bc                                          ; $6297: $c1
	ccf                                              ; $6298: $3f
	ld   hl, $111f                                   ; $6299: $21 $1f $11
	rrca                                             ; $629c: $0f
	rrca                                             ; $629d: $0f
	rst  $38                                         ; $629e: $ff
	di                                               ; $629f: $f3
	ld   sp, $c07f                                   ; $62a0: $31 $7f $c0
	pop  bc                                          ; $62a3: $c1
	add  b                                           ; $62a4: $80
	add  b                                           ; $62a5: $80
	ld   a, [hl]                                     ; $62a6: $7e
	ld   a, a                                        ; $62a7: $7f
	rst  $38                                         ; $62a8: $ff
	sbc  c                                           ; $62a9: $99
	rst  $38                                         ; $62aa: $ff
	jr   c, jr_013_6294                              ; $62ab: $38 $e7

	ld   h, h                                        ; $62ad: $64
	rst  $20                                         ; $62ae: $e7
	inc  [hl]                                        ; $62af: $34
	rst  ToBoot                                         ; $62b0: $c7
	and  b                                           ; $62b1: $a0
	ld   a, a                                        ; $62b2: $7f
	ld   b, b                                        ; $62b3: $40
	ccf                                              ; $62b4: $3f
	jr   nz, jr_013_62d6                             ; $62b5: $20 $1f

	db   $10                                         ; $62b7: $10
	rra                                              ; $62b8: $1f
	jr   jr_013_62c2                                 ; $62b9: $18 $07

	ld   b, $45                                      ; $62bb: $06 $45
	ld   b, l                                        ; $62bd: $45
	ret                                              ; $62be: $c9


	adc  c                                           ; $62bf: $89
	adc  b                                           ; $62c0: $88
	sbc  a                                           ; $62c1: $9f

jr_013_62c2:
	adc  b                                           ; $62c2: $88
	cp   a                                           ; $62c3: $bf
	adc  b                                           ; $62c4: $88
	cp   a                                           ; $62c5: $bf
	adc  b                                           ; $62c6: $88
	cp   a                                           ; $62c7: $bf
	sub  [hl]                                        ; $62c8: $96
	rst  $38                                         ; $62c9: $ff
	sub  c                                           ; $62ca: $91
	rst  $38                                         ; $62cb: $ff
	sbc  c                                           ; $62cc: $99
	rst  $38                                         ; $62cd: $ff
	sub  h                                           ; $62ce: $94
	rst  $38                                         ; $62cf: $ff
	sub  h                                           ; $62d0: $94
	cp   $a4                                         ; $62d1: $fe $a4
	cp   $e4                                         ; $62d3: $fe $e4
	db   $fc                                         ; $62d5: $fc

jr_013_62d6:
	add  h                                           ; $62d6: $84
	db   $fc                                         ; $62d7: $fc
	add  h                                           ; $62d8: $84
	cp   $88                                         ; $62d9: $fe $88
	rst  $38                                         ; $62db: $ff
	adc  c                                           ; $62dc: $89
	rst  $38                                         ; $62dd: $ff
	adc  d                                           ; $62de: $8a
	rst  $38                                         ; $62df: $ff
	jr   nz, jr_013_62c2                             ; $62e0: $20 $e0

	jr   nz, @-$5e                                   ; $62e2: $20 $a0

	db   $10                                         ; $62e4: $10
	ret  nc                                          ; $62e5: $d0

	db   $10                                         ; $62e6: $10
	ret  nc                                          ; $62e7: $d0

	ld   [$4888], sp                                 ; $62e8: $08 $88 $48
	ld   c, b                                        ; $62eb: $48
	inc  h                                           ; $62ec: $24
	ld   a, h                                        ; $62ed: $7c
	sub  e                                           ; $62ee: $93
	sbc  a                                           ; $62ef: $9f
	sbc  [hl]                                        ; $62f0: $9e
	sbc  [hl]                                        ; $62f1: $9e
	adc  b                                           ; $62f2: $88
	ret  c                                           ; $62f3: $d8

	adc  b                                           ; $62f4: $88
	ld   hl, sp-$7c                                  ; $62f5: $f8 $84
	db   $fc                                         ; $62f7: $fc
	call nz, $fefc                                   ; $62f8: $c4 $fc $fe
	cp   $58                                         ; $62fb: $fe $58
	ret  c                                           ; $62fd: $d8

	ld   l, b                                        ; $62fe: $68
	ld   l, b                                        ; $62ff: $68
	adc  $ca                                         ; $6300: $ce $ca
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6302: $cf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6303: $cf
	and  $e6                                         ; $6304: $e6 $e6
	di                                               ; $6306: $f3
	di                                               ; $6307: $f3
	ei                                               ; $6308: $fb
	ei                                               ; $6309: $fb
	ei                                               ; $630a: $fb
	ei                                               ; $630b: $fb
	db   $fd                                         ; $630c: $fd
	db   $fd                                         ; $630d: $fd
	rst  $38                                         ; $630e: $ff
	rst  $38                                         ; $630f: $ff
	cp   $fe                                         ; $6310: $fe $fe
	ld   a, [hl]                                     ; $6312: $7e
	ld   a, [hl]                                     ; $6313: $7e
	ld   a, $3e                                      ; $6314: $3e $3e
	ld   e, $1e                                      ; $6316: $1e $1e
	rra                                              ; $6318: $1f
	rra                                              ; $6319: $1f
	rra                                              ; $631a: $1f
	rra                                              ; $631b: $1f
	rra                                              ; $631c: $1f
	rra                                              ; $631d: $1f
	rrca                                             ; $631e: $0f
	rrca                                             ; $631f: $0f
	ld   sp, $c031                                   ; $6320: $31 $31 $c0
	pop  bc                                          ; $6323: $c1
	nop                                              ; $6324: $00
	nop                                              ; $6325: $00
	nop                                              ; $6326: $00
	nop                                              ; $6327: $00
	nop                                              ; $6328: $00
	nop                                              ; $6329: $00
	ld   bc, $8201                                   ; $632a: $01 $01 $82
	add  d                                           ; $632d: $82
	ldh  [c], a                                      ; $632e: $e2
	ldh  [c], a                                      ; $632f: $e2
	ld   [hl], h                                     ; $6330: $74
	ld   [hl], h                                     ; $6331: $74
	jr   c, jr_013_636c                              ; $6332: $38 $38

	db   $10                                         ; $6334: $10
	db   $10                                         ; $6335: $10
	db   $10                                         ; $6336: $10
	db   $10                                         ; $6337: $10
	db   $10                                         ; $6338: $10
	db   $10                                         ; $6339: $10
	ldh  [$e0], a                                    ; $633a: $e0 $e0
	ldh  [$e0], a                                    ; $633c: $e0 $e0
	ldh  [$e0], a                                    ; $633e: $e0 $e0
	ld   c, a                                        ; $6340: $4f
	ld   a, a                                        ; $6341: $7f
	ld   [$dcfa], a                                  ; $6342: $ea $fa $dc
	call c, $4040                                    ; $6345: $dc $40 $40
	pop  hl                                          ; $6348: $e1

jr_013_6349:
	pop  hl                                          ; $6349: $e1
	ld   [de], a                                     ; $634a: $12
	ld   [de], a                                     ; $634b: $12
	inc  c                                           ; $634c: $0c
	inc  c                                           ; $634d: $0c
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
	ld   l, b                                        ; $6360: $68
	ld   l, b                                        ; $6361: $68
	ld   l, b                                        ; $6362: $68
	ld   l, b                                        ; $6363: $68
	xor  b                                           ; $6364: $a8
	xor  b                                           ; $6365: $a8
	add  sp, -$38                                    ; $6366: $e8 $c8
	ld   c, b                                        ; $6368: $48
	ld   c, b                                        ; $6369: $48
	ld   e, b                                        ; $636a: $58
	ld   c, b                                        ; $636b: $48

jr_013_636c:
	ret  nc                                          ; $636c: $d0

	sub  b                                           ; $636d: $90
	sub  b                                           ; $636e: $90
	sub  b                                           ; $636f: $90
	sub  b                                           ; $6370: $90
	sub  b                                           ; $6371: $90
	ld   d, b                                        ; $6372: $50
	ld   d, b                                        ; $6373: $50
	jr   nc, jr_013_63a6                             ; $6374: $30 $30

	db   $10                                         ; $6376: $10
	stop                                             ; $6377: $10 $00
	nop                                              ; $6379: $00
	nop                                              ; $637a: $00
	nop                                              ; $637b: $00
	nop                                              ; $637c: $00
	nop                                              ; $637d: $00
	nop                                              ; $637e: $00
	nop                                              ; $637f: $00
	rrca                                             ; $6380: $0f
	rrca                                             ; $6381: $0f
	rrca                                             ; $6382: $0f
	rrca                                             ; $6383: $0f
	rrca                                             ; $6384: $0f
	rrca                                             ; $6385: $0f
	rrca                                             ; $6386: $0f
	rrca                                             ; $6387: $0f
	rrca                                             ; $6388: $0f
	rrca                                             ; $6389: $0f
	rrca                                             ; $638a: $0f
	ld   [$080f], sp                                 ; $638b: $08 $0f $08
	rrca                                             ; $638e: $0f
	ld   [$0407], sp                                 ; $638f: $08 $07 $04
	inc  b                                           ; $6392: $04
	rlca                                             ; $6393: $07
	inc  b                                           ; $6394: $04
	rlca                                             ; $6395: $07
	inc  b                                           ; $6396: $04
	rlca                                             ; $6397: $07
	inc  bc                                          ; $6398: $03
	inc  bc                                          ; $6399: $03
	nop                                              ; $639a: $00
	nop                                              ; $639b: $00
	nop                                              ; $639c: $00
	nop                                              ; $639d: $00
	nop                                              ; $639e: $00
	nop                                              ; $639f: $00
	ldh  [$e0], a                                    ; $63a0: $e0 $e0
	ldh  [$e0], a                                    ; $63a2: $e0 $e0
	ldh  [$e0], a                                    ; $63a4: $e0 $e0

jr_013_63a6:
	ldh  [$e0], a                                    ; $63a6: $e0 $e0
	ldh  a, [$f0]                                    ; $63a8: $f0 $f0
	ldh  a, [rAUD1SWEEP]                             ; $63aa: $f0 $10
	ldh  a, [rAUD1SWEEP]                             ; $63ac: $f0 $10
	ret  nc                                          ; $63ae: $d0

	jr   nc, jr_013_6349                             ; $63af: $30 $98

	ld   a, b                                        ; $63b1: $78
	ld   [$0cf8], sp                                 ; $63b2: $08 $f8 $0c
	db   $f4                                         ; $63b5: $f4
	inc  [hl]                                        ; $63b6: $34
	call nz, $fcfc                                   ; $63b7: $c4 $fc $fc
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
	nop                                              ; $63d8: $00
	nop                                              ; $63d9: $00
	nop                                              ; $63da: $00
	nop                                              ; $63db: $00
	nop                                              ; $63dc: $00
	nop                                              ; $63dd: $00
	nop                                              ; $63de: $00
	nop                                              ; $63df: $00
	nop                                              ; $63e0: $00
	nop                                              ; $63e1: $00
	nop                                              ; $63e2: $00
	nop                                              ; $63e3: $00
	nop                                              ; $63e4: $00
	nop                                              ; $63e5: $00
	nop                                              ; $63e6: $00
	nop                                              ; $63e7: $00
	nop                                              ; $63e8: $00
	nop                                              ; $63e9: $00
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
	nop                                              ; $640c: $00
	nop                                              ; $640d: $00
	nop                                              ; $640e: $00
	nop                                              ; $640f: $00
	ld   bc, $1f01                                   ; $6410: $01 $01 $1f
	rra                                              ; $6413: $1f
	jr   nc, jr_013_6455                             ; $6414: $30 $3f

	ld   [$070f], sp                                 ; $6416: $08 $0f $07
	rlca                                             ; $6419: $07
	ld   b, $07                                      ; $641a: $06 $07
	ld   a, e                                        ; $641c: $7b
	ld   a, a                                        ; $641d: $7f
	inc  h                                           ; $641e: $24
	inc  a                                           ; $641f: $3c
	nop                                              ; $6420: $00
	nop                                              ; $6421: $00
	nop                                              ; $6422: $00
	nop                                              ; $6423: $00
	nop                                              ; $6424: $00
	nop                                              ; $6425: $00
	nop                                              ; $6426: $00
	nop                                              ; $6427: $00
	nop                                              ; $6428: $00
	nop                                              ; $6429: $00
	nop                                              ; $642a: $00
	nop                                              ; $642b: $00
	nop                                              ; $642c: $00
	nop                                              ; $642d: $00
	nop                                              ; $642e: $00
	nop                                              ; $642f: $00
	ld   hl, sp-$08                                  ; $6430: $f8 $f8
	ld   [$0d18], sp                                 ; $6432: $08 $18 $0d
	adc  l                                           ; $6435: $8d
	ld   b, $e7                                      ; $6436: $06 $e7
	add  $ff                                         ; $6438: $c6 $ff
	db   $fc                                         ; $643a: $fc
	rst  $38                                         ; $643b: $ff
	inc  c                                           ; $643c: $0c
	ccf                                              ; $643d: $3f
	ld   a, $7f                                      ; $643e: $3e $7f
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
	nop                                              ; $644c: $00
	nop                                              ; $644d: $00
	nop                                              ; $644e: $00
	nop                                              ; $644f: $00
	nop                                              ; $6450: $00
	nop                                              ; $6451: $00
	ldh  [$e0], a                                    ; $6452: $e0 $e0
	db   $10                                         ; $6454: $10

jr_013_6455:
	ldh  a, [rAUD1SWEEP]                             ; $6455: $f0 $10
	ldh  a, [rAUD3LEVEL]                             ; $6457: $f0 $1c
	db   $fc                                         ; $6459: $fc
	inc  de                                          ; $645a: $13
	rst  JumpTable                                         ; $645b: $df
	db   $10                                         ; $645c: $10
	rst  JumpTable                                         ; $645d: $df
	db   $10                                         ; $645e: $10
	sbc  a                                           ; $645f: $9f
	nop                                              ; $6460: $00
	nop                                              ; $6461: $00
	nop                                              ; $6462: $00
	nop                                              ; $6463: $00
	nop                                              ; $6464: $00
	nop                                              ; $6465: $00
	nop                                              ; $6466: $00
	nop                                              ; $6467: $00
	nop                                              ; $6468: $00
	nop                                              ; $6469: $00
	nop                                              ; $646a: $00
	nop                                              ; $646b: $00
	nop                                              ; $646c: $00
	nop                                              ; $646d: $00
	nop                                              ; $646e: $00
	nop                                              ; $646f: $00
	nop                                              ; $6470: $00
	nop                                              ; $6471: $00
	nop                                              ; $6472: $00
	nop                                              ; $6473: $00
	nop                                              ; $6474: $00
	nop                                              ; $6475: $00
	nop                                              ; $6476: $00
	nop                                              ; $6477: $00
	nop                                              ; $6478: $00
	nop                                              ; $6479: $00
	nop                                              ; $647a: $00
	nop                                              ; $647b: $00
	add  b                                           ; $647c: $80
	add  b                                           ; $647d: $80
	ld   b, b                                        ; $647e: $40
	ret  nz                                          ; $647f: $c0

	jr   @+$1e                                       ; $6480: $18 $1c

	ld   de, $271d                                   ; $6482: $11 $1d $27
	ccf                                              ; $6485: $3f

jr_013_6486:
	db   $ec                                         ; $6486: $ec
	cp   $e9                                         ; $6487: $fe $e9
	ccf                                              ; $6489: $3f
	ei                                               ; $648a: $fb
	cp   $fb                                         ; $648b: $fe $fb
	adc  [hl]                                        ; $648d: $8e
	ld   a, a                                        ; $648e: $7f
	db   $ec                                         ; $648f: $ec
	ld   e, a                                        ; $6490: $5f
	xor  h                                           ; $6491: $ac
	rst  $38                                         ; $6492: $ff
	srl  [hl]                                        ; $6493: $cb $3e
	ld   l, $f8                                      ; $6495: $2e $f8
	ld   hl, sp-$01                                  ; $6497: $f8 $ff
	rlca                                             ; $6499: $07
	rst  $38                                         ; $649a: $ff
	nop                                              ; $649b: $00
	rlca                                             ; $649c: $07
	ld   hl, sp-$19                                  ; $649d: $f8 $e7
	db   $fc                                         ; $649f: $fc
	ld   h, e                                        ; $64a0: $63
	rst  $38                                         ; $64a1: $ff
	add  c                                           ; $64a2: $81
	add  e                                           ; $64a3: $83
	ld   bc, $fd01                                   ; $64a4: $01 $01 $fd
	rst  $38                                         ; $64a7: $ff
	rst  $38                                         ; $64a8: $ff
	inc  sp                                          ; $64a9: $33
	rst  $38                                         ; $64aa: $ff
	ld   [hl], c                                     ; $64ab: $71
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $64ac: $cf
	ret                                              ; $64ad: $c9


	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $64ae: $cf
	ld   l, c                                        ; $64af: $69
	adc  a                                           ; $64b0: $8f
	ld   b, c                                        ; $64b1: $41
	rst  $38                                         ; $64b2: $ff
	add  c                                           ; $64b3: $81
	ld   a, a                                        ; $64b4: $7f
	ld   h, c                                        ; $64b5: $61
	rra                                              ; $64b6: $1f
	ld   de, $898f                                   ; $64b7: $11 $8f $89
	rst  ToBoot                                         ; $64ba: $c7
	ld   b, a                                        ; $64bb: $47
	push hl                                          ; $64bc: $e5
	dec  h                                           ; $64bd: $25
	push hl                                          ; $64be: $e5
	dec  h                                           ; $64bf: $25
	db   $10                                         ; $64c0: $10
	ccf                                              ; $64c1: $3f
	db   $10                                         ; $64c2: $10
	ld   a, a                                        ; $64c3: $7f
	db   $10                                         ; $64c4: $10
	ld   a, a                                        ; $64c5: $7f
	db   $10                                         ; $64c6: $10
	ld   a, a                                        ; $64c7: $7f
	inc  l                                           ; $64c8: $2c
	rst  $38                                         ; $64c9: $ff
	ld   [hl+], a                                    ; $64ca: $22
	cp   $32                                         ; $64cb: $fe $32
	cp   $29                                         ; $64cd: $fe $29
	rst  $38                                         ; $64cf: $ff
	add  hl, hl                                      ; $64d0: $29
	db   $fd                                         ; $64d1: $fd
	ld   c, c                                        ; $64d2: $49
	db   $fd                                         ; $64d3: $fd
	ret                                              ; $64d4: $c9


	ld   sp, hl                                      ; $64d5: $f9
	add  hl, bc                                      ; $64d6: $09
	ld   sp, hl                                      ; $64d7: $f9
	add  hl, bc                                      ; $64d8: $09
	db   $fd                                         ; $64d9: $fd
	ld   de, $12ff                                   ; $64da: $11 $ff $12
	rst  $38                                         ; $64dd: $ff
	inc  d                                           ; $64de: $14
	cp   $40                                         ; $64df: $fe $40
	ret  nz                                          ; $64e1: $c0

	ld   b, b                                        ; $64e2: $40
	ld   b, b                                        ; $64e3: $40
	jr   nz, jr_013_6486                             ; $64e4: $20 $a0

	jr   nz, @-$5e                                   ; $64e6: $20 $a0

	db   $10                                         ; $64e8: $10
	db   $10                                         ; $64e9: $10
	sub  b                                           ; $64ea: $90
	sub  b                                           ; $64eb: $90
	ld   c, b                                        ; $64ec: $48
	ld   hl, sp+$26                                  ; $64ed: $f8 $26
	ld   a, $3c                                      ; $64ef: $3e $3c
	inc  a                                           ; $64f1: $3c
	db   $10                                         ; $64f2: $10
	or   b                                           ; $64f3: $b0
	db   $10                                         ; $64f4: $10
	ldh  a, [$08]                                    ; $64f5: $f0 $08
	ld   hl, sp-$78                                  ; $64f7: $f8 $88
	ld   hl, sp-$04                                  ; $64f9: $f8 $fc
	db   $fc                                         ; $64fb: $fc
	and  b                                           ; $64fc: $a0
	and  b                                           ; $64fd: $a0
	ret  nc                                          ; $64fe: $d0

	ret  nc                                          ; $64ff: $d0

	rst  $28                                         ; $6500: $ef
	call c, $f3f3                                    ; $6501: $dc $f3 $f3
	and  $e6                                         ; $6504: $e6 $e6
	di                                               ; $6506: $f3
	di                                               ; $6507: $f3
	ei                                               ; $6508: $fb
	ei                                               ; $6509: $fb
	ei                                               ; $650a: $fb
	ei                                               ; $650b: $fb
	db   $fd                                         ; $650c: $fd
	db   $fd                                         ; $650d: $fd
	db   $fc                                         ; $650e: $fc
	db   $fc                                         ; $650f: $fc
	cp   $fe                                         ; $6510: $fe $fe
	ld   a, [hl]                                     ; $6512: $7e
	ld   a, [hl]                                     ; $6513: $7e
	ld   a, [hl]                                     ; $6514: $7e
	ld   a, [hl]                                     ; $6515: $7e
	ld   a, $3e                                      ; $6516: $3e $3e
	ccf                                              ; $6518: $3f
	ccf                                              ; $6519: $3f
	rra                                              ; $651a: $1f
	rra                                              ; $651b: $1f
	rra                                              ; $651c: $1f
	rra                                              ; $651d: $1f
	rrca                                             ; $651e: $0f
	rrca                                             ; $651f: $0f
	db   $fc                                         ; $6520: $fc
	inc  a                                           ; $6521: $3c
	pop  hl                                          ; $6522: $e1
	pop  hl                                          ; $6523: $e1
	ld   bc, $0101                                   ; $6524: $01 $01 $01
	ld   bc, $0101                                   ; $6527: $01 $01 $01
	ld   [bc], a                                     ; $652a: $02
	ld   [bc], a                                     ; $652b: $02
	add  d                                           ; $652c: $82
	add  d                                           ; $652d: $82
	ldh  [c], a                                      ; $652e: $e2
	ldh  [c], a                                      ; $652f: $e2
	ld   [hl], h                                     ; $6530: $74
	ld   [hl], h                                     ; $6531: $74
	jr   c, jr_013_656c                              ; $6532: $38 $38

	db   $10                                         ; $6534: $10
	db   $10                                         ; $6535: $10
	db   $10                                         ; $6536: $10
	db   $10                                         ; $6537: $10
	db   $10                                         ; $6538: $10
	db   $10                                         ; $6539: $10
	ldh  [$e0], a                                    ; $653a: $e0 $e0
	ldh  [$e0], a                                    ; $653c: $e0 $e0
	ldh  [$e0], a                                    ; $653e: $e0 $e0
	sbc  [hl]                                        ; $6540: $9e
	cp   $d4                                         ; $6541: $fe $d4
	db   $f4                                         ; $6543: $f4
	dec  [hl]                                        ; $6544: $35
	dec  [hl]                                        ; $6545: $35
	dec  b                                           ; $6546: $05
	dec  b                                           ; $6547: $05
	add  hl, bc                                      ; $6548: $09
	add  hl, bc                                      ; $6549: $09
	add  hl, bc                                      ; $654a: $09
	add  hl, bc                                      ; $654b: $09
	add  hl, bc                                      ; $654c: $09
	add  hl, bc                                      ; $654d: $09
	add  hl, bc                                      ; $654e: $09
	add  hl, bc                                      ; $654f: $09
	add  hl, bc                                      ; $6550: $09
	add  hl, bc                                      ; $6551: $09
	add  hl, bc                                      ; $6552: $09
	add  hl, bc                                      ; $6553: $09
	add  hl, bc                                      ; $6554: $09
	add  hl, bc                                      ; $6555: $09
	ld   a, [bc]                                     ; $6556: $0a
	ld   a, [bc]                                     ; $6557: $0a
	inc  c                                           ; $6558: $0c
	inc  c                                           ; $6559: $0c
	ld   [$0008], sp                                 ; $655a: $08 $08 $00
	nop                                              ; $655d: $00
	nop                                              ; $655e: $00
	nop                                              ; $655f: $00
	ret  nc                                          ; $6560: $d0

	ret  nc                                          ; $6561: $d0

	ret  nc                                          ; $6562: $d0

	ret  nc                                          ; $6563: $d0

	ld   d, b                                        ; $6564: $50
	ld   d, b                                        ; $6565: $50
	ld   e, b                                        ; $6566: $58
	ld   c, b                                        ; $6567: $48
	ld   c, b                                        ; $6568: $48
	ld   c, b                                        ; $6569: $48
	ld   c, b                                        ; $656a: $48
	ld   c, b                                        ; $656b: $48

jr_013_656c:
	ld   c, h                                        ; $656c: $4c
	ld   b, h                                        ; $656d: $44
	ld   h, h                                        ; $656e: $64
	ld   b, h                                        ; $656f: $44
	inc  h                                           ; $6570: $24
	inc  h                                           ; $6571: $24
	inc  h                                           ; $6572: $24
	inc  h                                           ; $6573: $24
	inc  h                                           ; $6574: $24
	inc  h                                           ; $6575: $24
	inc  h                                           ; $6576: $24
	inc  h                                           ; $6577: $24
	inc  d                                           ; $6578: $14
	inc  d                                           ; $6579: $14
	inc  c                                           ; $657a: $0c
	inc  c                                           ; $657b: $0c
	inc  b                                           ; $657c: $04
	inc  b                                           ; $657d: $04
	nop                                              ; $657e: $00
	nop                                              ; $657f: $00
	rrca                                             ; $6580: $0f
	rrca                                             ; $6581: $0f
	rrca                                             ; $6582: $0f
	rrca                                             ; $6583: $0f
	rrca                                             ; $6584: $0f
	rrca                                             ; $6585: $0f
	rrca                                             ; $6586: $0f
	rrca                                             ; $6587: $0f
	rrca                                             ; $6588: $0f
	rrca                                             ; $6589: $0f
	rrca                                             ; $658a: $0f
	ld   [$080f], sp                                 ; $658b: $08 $0f $08
	rrca                                             ; $658e: $0f
	ld   [$080f], sp                                 ; $658f: $08 $0f $08
	ld   [$180f], sp                                 ; $6592: $08 $0f $18
	rla                                              ; $6595: $17
	ld   d, $11                                      ; $6596: $16 $11
	rra                                              ; $6598: $1f
	rra                                              ; $6599: $1f
	nop                                              ; $659a: $00
	nop                                              ; $659b: $00
	nop                                              ; $659c: $00
	nop                                              ; $659d: $00
	nop                                              ; $659e: $00
	nop                                              ; $659f: $00
	ldh  [$e0], a                                    ; $65a0: $e0 $e0
	ldh  [$e0], a                                    ; $65a2: $e0 $e0
	ldh  [$e0], a                                    ; $65a4: $e0 $e0
	ldh  [$e0], a                                    ; $65a6: $e0 $e0
	ldh  [$e0], a                                    ; $65a8: $e0 $e0
	ldh  a, [rAUD1SWEEP]                             ; $65aa: $f0 $10
	ldh  a, [rAUD1SWEEP]                             ; $65ac: $f0 $10
	ret  nc                                          ; $65ae: $d0

	jr   nc, jr_013_65e1                             ; $65af: $30 $30

	ldh  a, [rAUD1SWEEP]                             ; $65b1: $f0 $10
	ldh  a, [rAUD1SWEEP]                             ; $65b3: $f0 $10
	ldh  a, [rAUD1SWEEP]                             ; $65b5: $f0 $10
	ldh  a, [$e0]                                    ; $65b7: $f0 $e0
	ldh  [rP1], a                                    ; $65b9: $e0 $00
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
	nop                                              ; $65cc: $00
	nop                                              ; $65cd: $00
	nop                                              ; $65ce: $00
	nop                                              ; $65cf: $00
	nop                                              ; $65d0: $00
	nop                                              ; $65d1: $00
	nop                                              ; $65d2: $00
	nop                                              ; $65d3: $00
	nop                                              ; $65d4: $00
	nop                                              ; $65d5: $00
	nop                                              ; $65d6: $00
	nop                                              ; $65d7: $00
	nop                                              ; $65d8: $00
	nop                                              ; $65d9: $00
	nop                                              ; $65da: $00
	nop                                              ; $65db: $00
	nop                                              ; $65dc: $00
	nop                                              ; $65dd: $00
	nop                                              ; $65de: $00
	nop                                              ; $65df: $00
	nop                                              ; $65e0: $00

jr_013_65e1:
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
	nop                                              ; $65f2: $00
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
	nop                                              ; $660c: $00
	nop                                              ; $660d: $00
	nop                                              ; $660e: $00
	nop                                              ; $660f: $00
	inc  bc                                          ; $6610: $03
	inc  bc                                          ; $6611: $03
	db   $fc                                         ; $6612: $fc
	db   $fc                                         ; $6613: $fc
	ld   b, b                                        ; $6614: $40
	ld   a, b                                        ; $6615: $78
	ld   sp, $0e3f                                   ; $6616: $31 $3f $0e
	ld   c, $04                                      ; $6619: $0e $04
	inc  b                                           ; $661b: $04
	ld   [$110f], sp                                 ; $661c: $08 $0f $11
	rra                                              ; $661f: $1f
	nop                                              ; $6620: $00
	nop                                              ; $6621: $00
	nop                                              ; $6622: $00
	nop                                              ; $6623: $00
	nop                                              ; $6624: $00
	nop                                              ; $6625: $00
	nop                                              ; $6626: $00
	nop                                              ; $6627: $00
	ld   bc, $1e01                                   ; $6628: $01 $01 $1e
	rra                                              ; $662b: $1f

jr_013_662c:
	ld   h, h                                        ; $662c: $64
	ld   a, a                                        ; $662d: $7f
	adc  b                                           ; $662e: $88
	rst  $38                                         ; $662f: $ff
	nop                                              ; $6630: $00
	ld   a, a                                        ; $6631: $7f
	nop                                              ; $6632: $00
	rst  $38                                         ; $6633: $ff
	ld   h, b                                        ; $6634: $60
	ld   a, a                                        ; $6635: $7f
	add  c                                           ; $6636: $81
	rst  $38                                         ; $6637: $ff
	ld   b, e                                        ; $6638: $43
	ld   a, a                                        ; $6639: $7f
	add  a                                           ; $663a: $87
	or   a                                           ; $663b: $b7
	adc  h                                           ; $663c: $8c
	xor  b                                           ; $663d: $a8
	ld   [$0048], sp                                 ; $663e: $08 $48 $00
	nop                                              ; $6641: $00
	nop                                              ; $6642: $00
	nop                                              ; $6643: $00
	nop                                              ; $6644: $00
	nop                                              ; $6645: $00
	nop                                              ; $6646: $00
	nop                                              ; $6647: $00
	ret  nz                                          ; $6648: $c0

	ret  nz                                          ; $6649: $c0

	jr   nz, jr_013_662c                             ; $664a: $20 $e0

	db   $10                                         ; $664c: $10
	ldh  a, [rAUD1SWEEP]                             ; $664d: $f0 $10
	ldh  a, [rAUD3HIGH]                              ; $664f: $f0 $1e
	cp   $11                                         ; $6651: $fe $11
	rst  $38                                         ; $6653: $ff
	db   $10                                         ; $6654: $10
	rst  $38                                         ; $6655: $ff
	sbc  b                                           ; $6656: $98
	rst  $38                                         ; $6657: $ff
	inc  h                                           ; $6658: $24
	rst  $38                                         ; $6659: $ff
	ldh  a, [c]                                      ; $665a: $f2
	cp   $12                                         ; $665b: $fe $12
	ld   e, $19                                      ; $665d: $1e $19
	dec  bc                                          ; $665f: $0b
	nop                                              ; $6660: $00
	nop                                              ; $6661: $00
	nop                                              ; $6662: $00
	nop                                              ; $6663: $00
	nop                                              ; $6664: $00
	nop                                              ; $6665: $00
	nop                                              ; $6666: $00
	nop                                              ; $6667: $00
	nop                                              ; $6668: $00
	nop                                              ; $6669: $00
	nop                                              ; $666a: $00
	nop                                              ; $666b: $00
	nop                                              ; $666c: $00
	nop                                              ; $666d: $00
	nop                                              ; $666e: $00
	nop                                              ; $666f: $00
	nop                                              ; $6670: $00
	nop                                              ; $6671: $00
	add  b                                           ; $6672: $80
	add  b                                           ; $6673: $80
	ld   b, b                                        ; $6674: $40
	ret  nz                                          ; $6675: $c0

	jr   nz, jr_013_6698                             ; $6676: $20 $20

	sub  b                                           ; $6678: $90
	sub  b                                           ; $6679: $90
	ld   c, b                                        ; $667a: $48
	ld   hl, sp+$3c                                  ; $667b: $f8 $3c
	ld   a, h                                        ; $667d: $7c
	jr   nz, jr_013_66a0                             ; $667e: $20 $20

	ld   de, $221f                                   ; $6680: $11 $1f $22
	ccf                                              ; $6683: $3f
	ld   [hl+], a                                    ; $6684: $22
	ccf                                              ; $6685: $3f
	ld   b, d                                        ; $6686: $42
	ld   a, a                                        ; $6687: $7f
	ld   c, h                                        ; $6688: $4c
	ld   a, a                                        ; $6689: $7f
	db   $f4                                         ; $668a: $f4
	rst  $30                                         ; $668b: $f7
	inc  b                                           ; $668c: $04
	rlca                                             ; $668d: $07
	inc  b                                           ; $668e: $04
	rlca                                             ; $668f: $07
	dec  b                                           ; $6690: $05
	rlca                                             ; $6691: $07
	ld   b, $07                                      ; $6692: $06 $07
	ld   b, $07                                      ; $6694: $06 $07
	dec  b                                           ; $6696: $05
	dec  b                                           ; $6697: $05

jr_013_6698:
	nop                                              ; $6698: $00
	nop                                              ; $6699: $00
	nop                                              ; $669a: $00
	nop                                              ; $669b: $00
	nop                                              ; $669c: $00
	nop                                              ; $669d: $00
	nop                                              ; $669e: $00
	nop                                              ; $669f: $00

jr_013_66a0:
	db   $10                                         ; $66a0: $10
	db   $10                                         ; $66a1: $10
	rra                                              ; $66a2: $1f
	ccf                                              ; $66a3: $3f
	scf                                              ; $66a4: $37
	ld   a, b                                        ; $66a5: $78
	ccf                                              ; $66a6: $3f
	db   $ec                                         ; $66a7: $ec
	ld   a, a                                        ; $66a8: $7f
	cp   $5f                                         ; $66a9: $fe $5f
	call c, $b893                                    ; $66ab: $dc $93 $b8
	rst  $20                                         ; $66ae: $e7
	add  b                                           ; $66af: $80
	cp   $81                                         ; $66b0: $fe $81
	rst  $38                                         ; $66b2: $ff
	add  b                                           ; $66b3: $80
	cp   a                                           ; $66b4: $bf
	jp   $c27e                                       ; $66b5: $c3 $7e $c2


	xor  l                                           ; $66b8: $ad
	di                                               ; $66b9: $f3
	sbc  e                                           ; $66ba: $9b
	call c, Call_013_6f7f                            ; $66bb: $dc $7f $6f
	add  sp, -$11                                    ; $66be: $e8 $ef
	add  hl, bc                                      ; $66c0: $09
	add  hl, bc                                      ; $66c1: $09
	ld   hl, sp-$03                                  ; $66c2: $f8 $fd
	db   $ec                                         ; $66c4: $ec
	rra                                              ; $66c5: $1f
	db   $fc                                         ; $66c6: $fc
	scf                                              ; $66c7: $37
	db   $fc                                         ; $66c8: $fc
	ld   a, a                                        ; $66c9: $7f
	xor  $2f                                         ; $66ca: $ee $2f
	jp   z, $e61f                                    ; $66cc: $ca $1f $e6

	inc  bc                                          ; $66cf: $03
	ld   a, a                                        ; $66d0: $7f
	add  c                                           ; $66d1: $81
	rst  $38                                         ; $66d2: $ff
	ld   bc, $c3fd                                   ; $66d3: $01 $fd $c3
	ld   a, [hl]                                     ; $66d6: $7e
	ld   b, e                                        ; $66d7: $43
	or   l                                           ; $66d8: $b5
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $66d9: $cf
	sbc  $3e                                         ; $66da: $de $3e
	rst  $38                                         ; $66dc: $ff
	rst  $20                                         ; $66dd: $e7
	inc  l                                           ; $66de: $2c
	db   $e4                                         ; $66df: $e4
	db   $10                                         ; $66e0: $10
	ldh  a, [$90]                                    ; $66e1: $f0 $90
	ldh  a, [$88]                                    ; $66e3: $f0 $88
	ld   hl, sp-$78                                  ; $66e5: $f8 $88
	ld   hl, sp-$38                                  ; $66e7: $f8 $c8
	ld   hl, sp-$5c                                  ; $66e9: $f8 $a4
	db   $fc                                         ; $66eb: $fc
	sbc  [hl]                                        ; $66ec: $9e
	cp   $a0                                         ; $66ed: $fe $a0
	ldh  [hScriptOpcodeParams], a                                    ; $66ef: $e0 $a0
	ldh  [$50], a                                    ; $66f1: $e0 $50
	ret  nc                                          ; $66f3: $d0

	ld   c, b                                        ; $66f4: $48
	ret  z                                           ; $66f5: $c8

	xor  b                                           ; $66f6: $a8
	xor  b                                           ; $66f7: $a8
	inc  [hl]                                        ; $66f8: $34
	inc  h                                           ; $66f9: $24
	inc  d                                           ; $66fa: $14
	inc  d                                           ; $66fb: $14
	ld   d, $12                                      ; $66fc: $16 $12
	jp   nc, $01d2                                   ; $66fe: $d2 $d2 $01

	ld   bc, $0202                                   ; $6701: $01 $02 $02
	ld   b, $04                                      ; $6704: $06 $04
	dec  b                                           ; $6706: $05
	dec  b                                           ; $6707: $05
	dec  bc                                          ; $6708: $0b
	dec  bc                                          ; $6709: $0b
	dec  bc                                          ; $670a: $0b
	add  hl, bc                                      ; $670b: $09
	inc  de                                          ; $670c: $13
	ld   de, $1213                                   ; $670d: $11 $13 $12
	rra                                              ; $6710: $1f
	dec  e                                           ; $6711: $1d
	rra                                              ; $6712: $1f
	inc  d                                           ; $6713: $14
	dec  d                                           ; $6714: $15
	ld   e, $0a                                      ; $6715: $1e $0a
	rrca                                             ; $6717: $0f
	rlca                                             ; $6718: $07
	rlca                                             ; $6719: $07
	ld   bc, $0101                                   ; $671a: $01 $01 $01
	ld   bc, $0303                                   ; $671d: $01 $03 $03
	cpl                                              ; $6720: $2f
	jr   z, jr_013_6752                              ; $6721: $28 $2f

	inc  l                                           ; $6723: $2c
	dec  hl                                          ; $6724: $2b
	cpl                                              ; $6725: $2f
	inc  l                                           ; $6726: $2c
	daa                                              ; $6727: $27
	inc  [hl]                                        ; $6728: $34
	rla                                              ; $6729: $17
	ld   [de], a                                     ; $672a: $12
	inc  de                                          ; $672b: $13
	adc  c                                           ; $672c: $89
	add  hl, bc                                      ; $672d: $09
	add  $c6                                         ; $672e: $c6 $c6
	db   $ec                                         ; $6730: $ec
	inc  l                                           ; $6731: $2c
	db   $d3                                         ; $6732: $d3
	ld   sp, $3fdf                                   ; $6733: $31 $df $3f
	ccf                                              ; $6736: $3f
	rst  $38                                         ; $6737: $ff
	call z, $1ecc                                    ; $6738: $cc $cc $1e
	ld   e, $fb                                      ; $673b: $1e $fb
	ei                                               ; $673d: $fb
	rst  $30                                         ; $673e: $f7
	rst  $30                                         ; $673f: $f7
	xor  h                                           ; $6740: $ac
	ld   l, b                                        ; $6741: $68
	ld   l, b                                        ; $6742: $68
	add  sp, -$57                                    ; $6743: $e8 $a9
	rst  $28                                         ; $6745: $ef
	ld   e, a                                        ; $6746: $5f
	ret  c                                           ; $6747: $d8

	ld   d, a                                        ; $6748: $57
	ret  c                                           ; $6749: $d8

	sub  a                                           ; $674a: $97
	sbc  b                                           ; $674b: $98
	jr   c, @+$41                                    ; $674c: $38 $3f

	ld   b, a                                        ; $674e: $47
	ld   b, a                                        ; $674f: $47
	add  c                                           ; $6750: $81
	add  c                                           ; $6751: $81

jr_013_6752:
	ld   [bc], a                                     ; $6752: $02
	ld   [bc], a                                     ; $6753: $02
	rst  $38                                         ; $6754: $ff
	rst  $38                                         ; $6755: $ff
	rst  $38                                         ; $6756: $ff
	rst  $38                                         ; $6757: $ff
	pop  hl                                          ; $6758: $e1
	pop  hl                                          ; $6759: $e1
	ld   [hl], b                                     ; $675a: $70
	ld   [hl], b                                     ; $675b: $70
	dec  sp                                          ; $675c: $3b
	dec  sp                                          ; $675d: $3b
	sbc  a                                           ; $675e: $9f
	sbc  a                                           ; $675f: $9f
	ld   [hl-], a                                    ; $6760: $32
	ld   [hl-], a                                    ; $6761: $32
	ld   [hl-], a                                    ; $6762: $32
	ld   [hl-], a                                    ; $6763: $32
	jp   nc, $b2f2                                   ; $6764: $d2 $f2 $b2

	ld   [hl], d                                     ; $6767: $72
	sbc  $3e                                         ; $6768: $de $3e
	ret  nc                                          ; $676a: $d0

	jr   nc, @+$22                                   ; $676b: $30 $20

	ldh  [$e0], a                                    ; $676d: $e0 $e0
	ldh  [rP1], a                                    ; $676f: $e0 $00
	nop                                              ; $6771: $00
	nop                                              ; $6772: $00
	nop                                              ; $6773: $00
	nop                                              ; $6774: $00
	nop                                              ; $6775: $00
	nop                                              ; $6776: $00
	nop                                              ; $6777: $00
	nop                                              ; $6778: $00
	nop                                              ; $6779: $00
	add  b                                           ; $677a: $80
	add  b                                           ; $677b: $80
	add  b                                           ; $677c: $80
	add  b                                           ; $677d: $80
	add  b                                           ; $677e: $80
	add  b                                           ; $677f: $80
	inc  bc                                          ; $6780: $03
	inc  bc                                          ; $6781: $03
	inc  bc                                          ; $6782: $03
	inc  bc                                          ; $6783: $03
	rlca                                             ; $6784: $07
	rlca                                             ; $6785: $07
	rlca                                             ; $6786: $07
	rlca                                             ; $6787: $07
	rrca                                             ; $6788: $0f
	rrca                                             ; $6789: $0f
	rrca                                             ; $678a: $0f
	rrca                                             ; $678b: $0f
	ld   c, $09                                      ; $678c: $0e $09
	rra                                              ; $678e: $1f
	db   $10                                         ; $678f: $10
	rra                                              ; $6790: $1f
	rra                                              ; $6791: $1f
	jr   nc, jr_013_67d3                             ; $6792: $30 $3f

	ld   [hl+], a                                    ; $6794: $22
	dec  a                                           ; $6795: $3d
	inc  l                                           ; $6796: $2c
	ld   sp, $3f3f                                   ; $6797: $31 $3f $3f
	nop                                              ; $679a: $00
	nop                                              ; $679b: $00
	nop                                              ; $679c: $00
	nop                                              ; $679d: $00
	nop                                              ; $679e: $00
	nop                                              ; $679f: $00
	rst  $38                                         ; $67a0: $ff
	rst  $38                                         ; $67a1: $ff
	cp   $fe                                         ; $67a2: $fe $fe
	db   $fc                                         ; $67a4: $fc
	db   $fc                                         ; $67a5: $fc
	db   $fc                                         ; $67a6: $fc
	db   $fc                                         ; $67a7: $fc
	ld   hl, sp-$08                                  ; $67a8: $f8 $f8
	ld   hl, sp-$08                                  ; $67aa: $f8 $f8
	ldh  a, [$f0]                                    ; $67ac: $f0 $f0
	ldh  a, [rAUD1SWEEP]                             ; $67ae: $f0 $10
	ld   h, b                                        ; $67b0: $60
	and  b                                           ; $67b1: $a0
	ldh  [$e0], a                                    ; $67b2: $e0 $e0
	ld   b, b                                        ; $67b4: $40
	ret  nz                                          ; $67b5: $c0

	ld   b, b                                        ; $67b6: $40
	ret  nz                                          ; $67b7: $c0

	add  b                                           ; $67b8: $80
	add  b                                           ; $67b9: $80
	nop                                              ; $67ba: $00
	nop                                              ; $67bb: $00
	nop                                              ; $67bc: $00
	nop                                              ; $67bd: $00
	nop                                              ; $67be: $00
	nop                                              ; $67bf: $00
	rst  $38                                         ; $67c0: $ff
	rst  $38                                         ; $67c1: $ff
	ld   a, a                                        ; $67c2: $7f
	ld   a, a                                        ; $67c3: $7f
	ccf                                              ; $67c4: $3f
	ccf                                              ; $67c5: $3f
	ccf                                              ; $67c6: $3f
	ccf                                              ; $67c7: $3f
	rra                                              ; $67c8: $1f
	rra                                              ; $67c9: $1f
	rra                                              ; $67ca: $1f
	rra                                              ; $67cb: $1f
	rrca                                             ; $67cc: $0f
	rrca                                             ; $67cd: $0f
	rrca                                             ; $67ce: $0f
	ld   [$0506], sp                                 ; $67cf: $08 $06 $05
	rlca                                             ; $67d2: $07

jr_013_67d3:
	rlca                                             ; $67d3: $07
	ld   [bc], a                                     ; $67d4: $02
	inc  bc                                          ; $67d5: $03
	ld   [bc], a                                     ; $67d6: $02
	inc  bc                                          ; $67d7: $03
	ld   bc, $0001                                   ; $67d8: $01 $01 $00
	nop                                              ; $67db: $00
	nop                                              ; $67dc: $00
	nop                                              ; $67dd: $00
	nop                                              ; $67de: $00
	nop                                              ; $67df: $00
	ret  nz                                          ; $67e0: $c0

	ret  nz                                          ; $67e1: $c0

	ret  nz                                          ; $67e2: $c0

	ret  nz                                          ; $67e3: $c0

	ldh  [$e0], a                                    ; $67e4: $e0 $e0
	ldh  [$e0], a                                    ; $67e6: $e0 $e0
	ldh  a, [$f0]                                    ; $67e8: $f0 $f0
	ldh  a, [$f0]                                    ; $67ea: $f0 $f0
	ld   [hl], b                                     ; $67ec: $70
	sub  b                                           ; $67ed: $90
	ld   hl, sp+$08                                  ; $67ee: $f8 $08
	ld   hl, sp-$08                                  ; $67f0: $f8 $f8
	inc  c                                           ; $67f2: $0c
	db   $fc                                         ; $67f3: $fc
	inc  d                                           ; $67f4: $14
	db   $ec                                         ; $67f5: $ec
	ld   h, h                                        ; $67f6: $64
	adc  h                                           ; $67f7: $8c
	db   $fc                                         ; $67f8: $fc
	db   $fc                                         ; $67f9: $fc
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
	nop                                              ; $680d: $00
	nop                                              ; $680e: $00
	nop                                              ; $680f: $00
	inc  bc                                          ; $6810: $03
	inc  bc                                          ; $6811: $03
	db   $fc                                         ; $6812: $fc
	db   $fc                                         ; $6813: $fc
	ld   b, b                                        ; $6814: $40
	ld   a, b                                        ; $6815: $78
	ld   sp, $0e3f                                   ; $6816: $31 $3f $0e
	ld   c, $04                                      ; $6819: $0e $04
	inc  b                                           ; $681b: $04
	ld   [$110f], sp                                 ; $681c: $08 $0f $11
	rra                                              ; $681f: $1f
	nop                                              ; $6820: $00
	nop                                              ; $6821: $00
	nop                                              ; $6822: $00
	nop                                              ; $6823: $00
	nop                                              ; $6824: $00
	nop                                              ; $6825: $00
	nop                                              ; $6826: $00
	nop                                              ; $6827: $00
	ld   bc, $1e01                                   ; $6828: $01 $01 $1e
	rra                                              ; $682b: $1f

jr_013_682c:
	ld   h, h                                        ; $682c: $64
	ld   a, a                                        ; $682d: $7f
	adc  b                                           ; $682e: $88
	rst  $38                                         ; $682f: $ff
	nop                                              ; $6830: $00
	ld   a, a                                        ; $6831: $7f
	nop                                              ; $6832: $00
	rst  $38                                         ; $6833: $ff
	ld   h, b                                        ; $6834: $60
	ld   a, a                                        ; $6835: $7f
	add  c                                           ; $6836: $81
	rst  $38                                         ; $6837: $ff
	ld   b, e                                        ; $6838: $43
	ld   a, a                                        ; $6839: $7f
	add  a                                           ; $683a: $87
	or   a                                           ; $683b: $b7
	adc  h                                           ; $683c: $8c
	xor  b                                           ; $683d: $a8
	ld   [$0048], sp                                 ; $683e: $08 $48 $00
	nop                                              ; $6841: $00
	nop                                              ; $6842: $00
	nop                                              ; $6843: $00
	nop                                              ; $6844: $00
	nop                                              ; $6845: $00
	nop                                              ; $6846: $00
	nop                                              ; $6847: $00
	ret  nz                                          ; $6848: $c0

	ret  nz                                          ; $6849: $c0

	jr   nz, jr_013_682c                             ; $684a: $20 $e0

	db   $10                                         ; $684c: $10
	ldh  a, [rAUD1SWEEP]                             ; $684d: $f0 $10
	ldh  a, [rAUD3HIGH]                              ; $684f: $f0 $1e
	cp   $11                                         ; $6851: $fe $11
	rst  $38                                         ; $6853: $ff
	db   $10                                         ; $6854: $10
	rst  $38                                         ; $6855: $ff
	sbc  b                                           ; $6856: $98
	rst  $38                                         ; $6857: $ff
	inc  h                                           ; $6858: $24
	rst  $38                                         ; $6859: $ff
	ldh  a, [c]                                      ; $685a: $f2
	cp   $12                                         ; $685b: $fe $12
	ld   e, $19                                      ; $685d: $1e $19
	dec  bc                                          ; $685f: $0b
	nop                                              ; $6860: $00
	nop                                              ; $6861: $00
	nop                                              ; $6862: $00
	nop                                              ; $6863: $00
	nop                                              ; $6864: $00
	nop                                              ; $6865: $00
	nop                                              ; $6866: $00
	nop                                              ; $6867: $00
	nop                                              ; $6868: $00
	nop                                              ; $6869: $00
	nop                                              ; $686a: $00
	nop                                              ; $686b: $00
	nop                                              ; $686c: $00
	nop                                              ; $686d: $00
	nop                                              ; $686e: $00
	nop                                              ; $686f: $00
	nop                                              ; $6870: $00
	nop                                              ; $6871: $00
	add  b                                           ; $6872: $80
	add  b                                           ; $6873: $80
	ld   b, b                                        ; $6874: $40
	ret  nz                                          ; $6875: $c0

	jr   nz, jr_013_6898                             ; $6876: $20 $20

	sub  b                                           ; $6878: $90
	sub  b                                           ; $6879: $90
	ld   c, b                                        ; $687a: $48
	ld   hl, sp+$3c                                  ; $687b: $f8 $3c
	ld   a, h                                        ; $687d: $7c
	jr   nz, jr_013_68a0                             ; $687e: $20 $20

	ld   de, $221f                                   ; $6880: $11 $1f $22
	ccf                                              ; $6883: $3f
	ld   [hl+], a                                    ; $6884: $22
	ccf                                              ; $6885: $3f
	ld   b, d                                        ; $6886: $42
	ld   a, a                                        ; $6887: $7f
	ld   c, h                                        ; $6888: $4c
	ld   a, a                                        ; $6889: $7f
	db   $f4                                         ; $688a: $f4
	rst  $30                                         ; $688b: $f7
	inc  b                                           ; $688c: $04
	rlca                                             ; $688d: $07
	inc  b                                           ; $688e: $04
	rlca                                             ; $688f: $07
	dec  b                                           ; $6890: $05
	rlca                                             ; $6891: $07
	ld   b, $07                                      ; $6892: $06 $07
	ld   b, $07                                      ; $6894: $06 $07
	dec  b                                           ; $6896: $05
	dec  b                                           ; $6897: $05

jr_013_6898:
	nop                                              ; $6898: $00
	nop                                              ; $6899: $00
	nop                                              ; $689a: $00
	nop                                              ; $689b: $00
	nop                                              ; $689c: $00
	nop                                              ; $689d: $00
	inc  bc                                          ; $689e: $03
	inc  bc                                          ; $689f: $03

jr_013_68a0:
	db   $10                                         ; $68a0: $10
	db   $10                                         ; $68a1: $10
	rra                                              ; $68a2: $1f
	ccf                                              ; $68a3: $3f
	scf                                              ; $68a4: $37
	ld   a, b                                        ; $68a5: $78
	ccf                                              ; $68a6: $3f
	db   $ec                                         ; $68a7: $ec
	ld   a, a                                        ; $68a8: $7f
	cp   $5f                                         ; $68a9: $fe $5f
	call c, $b893                                    ; $68ab: $dc $93 $b8
	rst  $20                                         ; $68ae: $e7
	add  b                                           ; $68af: $80
	cp   $81                                         ; $68b0: $fe $81
	rst  $38                                         ; $68b2: $ff
	add  b                                           ; $68b3: $80
	cp   a                                           ; $68b4: $bf
	jp   $c27e                                       ; $68b5: $c3 $7e $c2


	xor  l                                           ; $68b8: $ad
	di                                               ; $68b9: $f3
	ld   a, e                                        ; $68ba: $7b
	ld   a, h                                        ; $68bb: $7c
	rst  $38                                         ; $68bc: $ff
	rst  $20                                         ; $68bd: $e7
	inc  [hl]                                        ; $68be: $34
	daa                                              ; $68bf: $27
	add  hl, bc                                      ; $68c0: $09
	add  hl, bc                                      ; $68c1: $09
	ld   hl, sp-$03                                  ; $68c2: $f8 $fd
	db   $ec                                         ; $68c4: $ec
	rra                                              ; $68c5: $1f
	db   $fc                                         ; $68c6: $fc
	scf                                              ; $68c7: $37
	db   $fc                                         ; $68c8: $fc
	ld   a, a                                        ; $68c9: $7f
	xor  $2f                                         ; $68ca: $ee $2f
	jp   z, $e61f                                    ; $68cc: $ca $1f $e6

	inc  bc                                          ; $68cf: $03
	ld   a, a                                        ; $68d0: $7f
	add  c                                           ; $68d1: $81
	rst  $38                                         ; $68d2: $ff
	ld   bc, $c3fd                                   ; $68d3: $01 $fd $c3
	ld   a, [hl]                                     ; $68d6: $7e
	ld   b, e                                        ; $68d7: $43
	or   l                                           ; $68d8: $b5
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $68d9: $cf
	reti                                             ; $68da: $d9


	dec  sp                                          ; $68db: $3b
	cp   $f6                                         ; $68dc: $fe $f6
	rla                                              ; $68de: $17
	rst  $30                                         ; $68df: $f7
	db   $10                                         ; $68e0: $10
	ldh  a, [$90]                                    ; $68e1: $f0 $90
	ldh  a, [$88]                                    ; $68e3: $f0 $88
	ld   hl, sp-$78                                  ; $68e5: $f8 $88
	ld   hl, sp-$38                                  ; $68e7: $f8 $c8
	ld   hl, sp-$5c                                  ; $68e9: $f8 $a4
	db   $fc                                         ; $68eb: $fc
	sbc  [hl]                                        ; $68ec: $9e
	cp   $a0                                         ; $68ed: $fe $a0
	ldh  [hScriptOpcodeParams], a                                    ; $68ef: $e0 $a0
	ldh  [$50], a                                    ; $68f1: $e0 $50
	ret  nc                                          ; $68f3: $d0

	ld   c, b                                        ; $68f4: $48
	ret  z                                           ; $68f5: $c8

	xor  b                                           ; $68f6: $a8
	xor  b                                           ; $68f7: $a8
	inc  [hl]                                        ; $68f8: $34
	inc  h                                           ; $68f9: $24
	inc  d                                           ; $68fa: $14
	inc  d                                           ; $68fb: $14
	ld   d, $12                                      ; $68fc: $16 $12
	ld   [de], a                                     ; $68fe: $12
	ld   [de], a                                     ; $68ff: $12
	inc  b                                           ; $6900: $04
	inc  b                                           ; $6901: $04
	inc  b                                           ; $6902: $04
	inc  b                                           ; $6903: $04
	inc  bc                                          ; $6904: $03
	rlca                                             ; $6905: $07
	dec  c                                           ; $6906: $0d
	ld   c, $0b                                      ; $6907: $0e $0b
	inc  c                                           ; $6909: $0c
	dec  bc                                          ; $690a: $0b
	inc  c                                           ; $690b: $0c
	inc  b                                           ; $690c: $04
	rlca                                             ; $690d: $07
	rlca                                             ; $690e: $07
	rlca                                             ; $690f: $07
	nop                                              ; $6910: $00
	nop                                              ; $6911: $00
	nop                                              ; $6912: $00
	nop                                              ; $6913: $00
	nop                                              ; $6914: $00
	nop                                              ; $6915: $00
	nop                                              ; $6916: $00
	nop                                              ; $6917: $00
	nop                                              ; $6918: $00
	nop                                              ; $6919: $00
	ld   bc, $0101                                   ; $691a: $01 $01 $01
	ld   bc, $0101                                   ; $691d: $01 $01 $01
	dec  [hl]                                        ; $6920: $35
	ld   d, $16                                      ; $6921: $16 $16
	rla                                              ; $6923: $17
	sub  l                                           ; $6924: $95
	rst  $30                                         ; $6925: $f7
	or   $13                                         ; $6926: $f6 $13
	ld   [$e91b], a                                  ; $6928: $ea $1b $e9
	add  hl, de                                      ; $692b: $19
	inc  d                                           ; $692c: $14
	db   $f4                                         ; $692d: $f4
	db   $e3                                         ; $692e: $e3
	ldh  [c], a                                      ; $692f: $e2
	add  c                                           ; $6930: $81
	add  c                                           ; $6931: $81
	ld   b, d                                        ; $6932: $42
	ld   b, d                                        ; $6933: $42
	rst  $38                                         ; $6934: $ff
	rst  $38                                         ; $6935: $ff
	rst  $38                                         ; $6936: $ff
	rst  $38                                         ; $6937: $ff
	add  e                                           ; $6938: $83
	add  e                                           ; $6939: $83
	rlca                                             ; $693a: $07
	rlca                                             ; $693b: $07
	adc  $ce                                         ; $693c: $ce $ce
	db   $fd                                         ; $693e: $fd
	db   $fd                                         ; $693f: $fd
	db   $f4                                         ; $6940: $f4
	inc  d                                           ; $6941: $14
	db   $f4                                         ; $6942: $f4
	inc  [hl]                                        ; $6943: $34
	call nc, $34f4                                   ; $6944: $d4 $f4 $34
	db   $e4                                         ; $6947: $e4
	inc  l                                           ; $6948: $2c
	add  sp, $48                                     ; $6949: $e8 $48
	ret  z                                           ; $694b: $c8

	ret  c                                           ; $694c: $d8

	ret  nc                                          ; $694d: $d0

	sub  e                                           ; $694e: $93
	sub  e                                           ; $694f: $93
	daa                                              ; $6950: $27
	inc  h                                           ; $6951: $24
	ld   c, e                                        ; $6952: $4b
	ld   c, h                                        ; $6953: $4c
	ei                                               ; $6954: $fb
	db   $fc                                         ; $6955: $fc
	db   $fc                                         ; $6956: $fc
	rst  $38                                         ; $6957: $ff
	dec  sp                                          ; $6958: $3b
	dec  sp                                          ; $6959: $3b
	sbc  h                                           ; $695a: $9c
	sbc  h                                           ; $695b: $9c
	adc  $ce                                         ; $695c: $ce $ce
	rst  $20                                         ; $695e: $e7
	rst  $20                                         ; $695f: $e7
	sub  d                                           ; $6960: $92
	sub  d                                           ; $6961: $92
	ld   d, d                                        ; $6962: $52
	ld   d, d                                        ; $6963: $52
	ld   [hl], d                                     ; $6964: $72
	ld   [hl-], a                                    ; $6965: $32
	or   d                                           ; $6966: $b2
	or   d                                           ; $6967: $b2
	sbc  $de                                         ; $6968: $de $de
	ret  nc                                          ; $696a: $d0

	sub  b                                           ; $696b: $90
	ret  z                                           ; $696c: $c8

	adc  b                                           ; $696d: $88
	ret  z                                           ; $696e: $c8

	ld   c, b                                        ; $696f: $48
	ld   hl, sp-$48                                  ; $6970: $f8 $b8
	ld   hl, sp+$28                                  ; $6972: $f8 $28
	xor  b                                           ; $6974: $a8
	ld   a, b                                        ; $6975: $78
	ld   d, b                                        ; $6976: $50
	ldh  a, [$e0]                                    ; $6977: $f0 $e0
	ldh  [$80], a                                    ; $6979: $e0 $80
	add  b                                           ; $697b: $80
	add  b                                           ; $697c: $80
	add  b                                           ; $697d: $80
	ret  nz                                          ; $697e: $c0

	ret  nz                                          ; $697f: $c0

	inc  bc                                          ; $6980: $03
	inc  bc                                          ; $6981: $03
	inc  bc                                          ; $6982: $03
	inc  bc                                          ; $6983: $03
	rlca                                             ; $6984: $07
	rlca                                             ; $6985: $07
	rlca                                             ; $6986: $07
	rlca                                             ; $6987: $07
	rrca                                             ; $6988: $0f
	rrca                                             ; $6989: $0f
	rrca                                             ; $698a: $0f
	rrca                                             ; $698b: $0f
	ld   c, $09                                      ; $698c: $0e $09
	rra                                              ; $698e: $1f
	db   $10                                         ; $698f: $10
	rra                                              ; $6990: $1f
	rra                                              ; $6991: $1f
	jr   nc, jr_013_69d3                             ; $6992: $30 $3f

	ld   [hl+], a                                    ; $6994: $22
	dec  a                                           ; $6995: $3d
	inc  l                                           ; $6996: $2c
	ld   sp, $3f3f                                   ; $6997: $31 $3f $3f
	nop                                              ; $699a: $00
	nop                                              ; $699b: $00
	nop                                              ; $699c: $00
	nop                                              ; $699d: $00
	nop                                              ; $699e: $00
	nop                                              ; $699f: $00
	rst  $38                                         ; $69a0: $ff
	rst  $38                                         ; $69a1: $ff
	cp   $fe                                         ; $69a2: $fe $fe
	db   $fc                                         ; $69a4: $fc
	db   $fc                                         ; $69a5: $fc
	db   $fc                                         ; $69a6: $fc
	db   $fc                                         ; $69a7: $fc
	ld   hl, sp-$08                                  ; $69a8: $f8 $f8
	ld   hl, sp-$08                                  ; $69aa: $f8 $f8
	ldh  a, [$f0]                                    ; $69ac: $f0 $f0
	ldh  a, [rAUD1SWEEP]                             ; $69ae: $f0 $10
	ld   h, b                                        ; $69b0: $60
	and  b                                           ; $69b1: $a0
	ldh  [$e0], a                                    ; $69b2: $e0 $e0
	ld   b, b                                        ; $69b4: $40
	ret  nz                                          ; $69b5: $c0

	ld   b, b                                        ; $69b6: $40
	ret  nz                                          ; $69b7: $c0

	add  b                                           ; $69b8: $80
	add  b                                           ; $69b9: $80
	nop                                              ; $69ba: $00
	nop                                              ; $69bb: $00
	nop                                              ; $69bc: $00
	nop                                              ; $69bd: $00

jr_013_69be:
	nop                                              ; $69be: $00
	nop                                              ; $69bf: $00
	rst  $38                                         ; $69c0: $ff
	rst  $38                                         ; $69c1: $ff
	ld   a, a                                        ; $69c2: $7f
	ld   a, a                                        ; $69c3: $7f
	ccf                                              ; $69c4: $3f
	ccf                                              ; $69c5: $3f
	ccf                                              ; $69c6: $3f
	ccf                                              ; $69c7: $3f
	rra                                              ; $69c8: $1f
	rra                                              ; $69c9: $1f
	rra                                              ; $69ca: $1f
	rra                                              ; $69cb: $1f
	rrca                                             ; $69cc: $0f
	rrca                                             ; $69cd: $0f
	rrca                                             ; $69ce: $0f
	ld   [$0506], sp                                 ; $69cf: $08 $06 $05
	rlca                                             ; $69d2: $07

jr_013_69d3:
	rlca                                             ; $69d3: $07
	ld   [bc], a                                     ; $69d4: $02
	inc  bc                                          ; $69d5: $03
	ld   [bc], a                                     ; $69d6: $02
	inc  bc                                          ; $69d7: $03
	ld   bc, $0001                                   ; $69d8: $01 $01 $00
	nop                                              ; $69db: $00
	nop                                              ; $69dc: $00
	nop                                              ; $69dd: $00
	nop                                              ; $69de: $00
	nop                                              ; $69df: $00
	ret  nz                                          ; $69e0: $c0

	ret  nz                                          ; $69e1: $c0

	ret  nz                                          ; $69e2: $c0

	ret  nz                                          ; $69e3: $c0

	ldh  [$e0], a                                    ; $69e4: $e0 $e0
	ldh  [$e0], a                                    ; $69e6: $e0 $e0
	ldh  a, [$f0]                                    ; $69e8: $f0 $f0
	ldh  a, [$f0]                                    ; $69ea: $f0 $f0
	ld   [hl], b                                     ; $69ec: $70
	sub  b                                           ; $69ed: $90
	ld   hl, sp+$08                                  ; $69ee: $f8 $08

jr_013_69f0:
	ld   hl, sp-$08                                  ; $69f0: $f8 $f8
	inc  c                                           ; $69f2: $0c
	db   $fc                                         ; $69f3: $fc
	inc  d                                           ; $69f4: $14
	db   $ec                                         ; $69f5: $ec
	ld   h, h                                        ; $69f6: $64
	adc  h                                           ; $69f7: $8c
	db   $fc                                         ; $69f8: $fc
	db   $fc                                         ; $69f9: $fc
	nop                                              ; $69fa: $00
	nop                                              ; $69fb: $00
	nop                                              ; $69fc: $00
	nop                                              ; $69fd: $00
	nop                                              ; $69fe: $00
	nop                                              ; $69ff: $00
	ld   [bc], a                                     ; $6a00: $02
	ld   b, $86                                      ; $6a01: $06 $86
	nop                                              ; $6a03: $00
	ld   [de], a                                     ; $6a04: $12
	jr   nc, jr_013_6a07                             ; $6a05: $30 $00

jr_013_6a07:
	ld   [$0400], sp                                 ; $6a07: $08 $00 $04
	nop                                              ; $6a0a: $00
	ld   [bc], a                                     ; $6a0b: $02
	nop                                              ; $6a0c: $00
	ld   bc, $0100                                   ; $6a0d: $01 $00 $01

jr_013_6a10:
	nop                                              ; $6a10: $00

Call_013_6a11:
	ld   [bc], a                                     ; $6a11: $02
	nop                                              ; $6a12: $00
	inc  b                                           ; $6a13: $04
	nop                                              ; $6a14: $00
	ld   [rROMB1], sp                                 ; $6a15: $08 $00 $30
	adc  a                                           ; $6a18: $8f
	nop                                              ; $6a19: $00
	ld   a, [bc]                                     ; $6a1a: $0a
	jr   nc, jr_013_6a1d                             ; $6a1b: $30 $00

jr_013_6a1d:
	inc  c                                           ; $6a1d: $0c
	nop                                              ; $6a1e: $00
	inc  bc                                          ; $6a1f: $03
	nop                                              ; $6a20: $00
	inc  bc                                          ; $6a21: $03
	nop                                              ; $6a22: $00
	inc  c                                           ; $6a23: $0c
	nop                                              ; $6a24: $00
	jr   nc, jr_013_69be                             ; $6a25: $30 $97

	nop                                              ; $6a27: $00
	ld   [bc], a                                     ; $6a28: $02
	ccf                                              ; $6a29: $3f
	nop                                              ; $6a2a: $00
	ccf                                              ; $6a2b: $3f
	sub  c                                           ; $6a2c: $91
	nop                                              ; $6a2d: $00
	ld   [bc], a                                     ; $6a2e: $02
	ld   bc, $0200                                   ; $6a2f: $01 $00 $02
	add  c                                           ; $6a32: $81
	ld   bc, $0502                                   ; $6a33: $01 $02 $05
	inc  bc                                          ; $6a36: $03
	dec  bc                                          ; $6a37: $0b
	add  c                                           ; $6a38: $81
	rlca                                             ; $6a39: $07
	ld   [bc], a                                     ; $6a3a: $02
	rla                                              ; $6a3b: $17
	rrca                                             ; $6a3c: $0f
	cpl                                              ; $6a3d: $2f
	add  c                                           ; $6a3e: $81
	rra                                              ; $6a3f: $1f
	nop                                              ; $6a40: $00
	ld   e, a                                        ; $6a41: $5f
	add  e                                           ; $6a42: $83
	ccf                                              ; $6a43: $3f
	nop                                              ; $6a44: $00
	rra                                              ; $6a45: $1f
	add  c                                           ; $6a46: $81
	ccf                                              ; $6a47: $3f
	ld   c, $5f                                      ; $6a48: $0e $5f
	rra                                              ; $6a4a: $1f
	ld   c, a                                        ; $6a4b: $4f
	rra                                              ; $6a4c: $1f
	adc  h                                           ; $6a4d: $8c
	ld   l, a                                        ; $6a4e: $6f
	ld   l, h                                        ; $6a4f: $6c
	ld   a, [hl]                                     ; $6a50: $7e
	ld   a, b                                        ; $6a51: $78
	ld   a, a                                        ; $6a52: $7f
	and  $1f                                         ; $6a53: $e6 $1f
	ld   h, b                                        ; $6a55: $60
	nop                                              ; $6a56: $00
	rra                                              ; $6a57: $1f
	adc  l                                           ; $6a58: $8d
	nop                                              ; $6a59: $00
	ld   [$0030], sp                                 ; $6a5a: $08 $30 $00
	ld   c, b                                        ; $6a5d: $48
	jr   nc, jr_013_6a10                             ; $6a5e: $30 $b0

	ld   [hl], b                                     ; $6a60: $70
	ld   h, b                                        ; $6a61: $60
	ldh  a, [$c8]                                    ; $6a62: $f0 $c8
	add  c                                           ; $6a64: $81
	ldh  [rTMA], a                                   ; $6a65: $e0 $06
	sub  b                                           ; $6a67: $90
	ret  nz                                          ; $6a68: $c0

	nop                                              ; $6a69: $00
	add  b                                           ; $6a6a: $80
	sub  b                                           ; $6a6b: $90
	add  b                                           ; $6a6c: $80
	jr   jr_013_69f0                                 ; $6a6d: $18 $81

	ldh  a, [rSC]                                    ; $6a6f: $f0 $02
	and  $f8                                         ; $6a71: $e6 $f8
	ld   sp, hl                                      ; $6a73: $f9
	add  e                                           ; $6a74: $83
	cp   $03                                         ; $6a75: $fe $03
	db   $fc                                         ; $6a77: $fc

jr_013_6a78:
	cp   $f1                                         ; $6a78: $fe $f1
	db   $fc                                         ; $6a7a: $fc
	add  b                                           ; $6a7b: $80
	ld   hl, sp+$03                                  ; $6a7c: $f8 $03
	and  $f0                                         ; $6a7e: $e6 $f0
	ld   [$80e0], sp                                 ; $6a80: $08 $e0 $80
	nop                                              ; $6a83: $00
	ld   b, $20                                      ; $6a84: $06 $20
	ldh  [rAUD4LEN], a                               ; $6a86: $e0 $20
	ldh  [rAUD1SWEEP], a                             ; $6a88: $e0 $10
	nop                                              ; $6a8a: $00
	ldh  [$97], a                                    ; $6a8b: $e0 $97
	nop                                              ; $6a8d: $00
	ld   a, [bc]                                     ; $6a8e: $0a
	inc  bc                                          ; $6a8f: $03
	nop                                              ; $6a90: $00
	inc  b                                           ; $6a91: $04
	inc  bc                                          ; $6a92: $03
	dec  bc                                          ; $6a93: $0b
	rlca                                             ; $6a94: $07
	scf                                              ; $6a95: $37
	rrca                                             ; $6a96: $0f
	ld   c, a                                        ; $6a97: $4f
	ccf                                              ; $6a98: $3f
	rst  $38                                         ; $6a99: $ff
	add  a                                           ; $6a9a: $87
	ld   a, a                                        ; $6a9b: $7f
	add  hl, bc                                      ; $6a9c: $09
	ld   a, h                                        ; $6a9d: $7c
	ld   c, a                                        ; $6a9e: $4f
	adc  l                                           ; $6a9f: $8d
	ccf                                              ; $6aa0: $3f
	cp   [hl]                                        ; $6aa1: $be
	ld   a, a                                        ; $6aa2: $7f
	ld   a, l                                        ; $6aa3: $7d
	ld   a, a                                        ; $6aa4: $7f
	ld   a, d                                        ; $6aa5: $7a
	rlca                                             ; $6aa6: $07
	add  b                                           ; $6aa7: $80
	ld   a, c                                        ; $6aa8: $79
	ld   b, $be                                      ; $6aa9: $06 $be
	ld   a, $43                                      ; $6aab: $3e $43
	inc  bc                                          ; $6aad: $03
	inc  a                                           ; $6aae: $3c
	nop                                              ; $6aaf: $00
	inc  bc                                          ; $6ab0: $03
	sub  l                                           ; $6ab1: $95
	nop                                              ; $6ab2: $00
	inc  b                                           ; $6ab3: $04
	ret  nz                                          ; $6ab4: $c0

	nop                                              ; $6ab5: $00
	jr   nz, jr_013_6a78                             ; $6ab6: $20 $c0

	add  b                                           ; $6ab8: $80
	add  c                                           ; $6ab9: $81
	ret  nz                                          ; $6aba: $c0

	ld   a, [bc]                                     ; $6abb: $0a
	and  b                                           ; $6abc: $a0

jr_013_6abd:
	add  b                                           ; $6abd: $80
	nop                                              ; $6abe: $00
	add  b                                           ; $6abf: $80
	ld   hl, sp-$40                                  ; $6ac0: $f8 $c0
	db   $10                                         ; $6ac2: $10
	ldh  a, [$f4]                                    ; $6ac3: $f0 $f4
	ldh  a, [$e8]                                    ; $6ac5: $f0 $e8
	add  c                                           ; $6ac7: $81
	ld   hl, sp+$08                                  ; $6ac8: $f8 $08

jr_013_6aca:
	cp   $fc                                         ; $6aca: $fe $fc
	inc  [hl]                                        ; $6acc: $34
	db   $fc                                         ; $6acd: $fc
	ld   [hl], d                                     ; $6ace: $72
	ld   a, b                                        ; $6acf: $78
	inc  b                                           ; $6ad0: $04
	or   b                                           ; $6ad1: $b0
	adc  b                                           ; $6ad2: $88
	add  b                                           ; $6ad3: $80
	ret  nz                                          ; $6ad4: $c0

	add  b                                           ; $6ad5: $80
	ldh  [rTIMA], a                                  ; $6ad6: $e0 $05
	nop                                              ; $6ad8: $00
	ret  nc                                          ; $6ad9: $d0

	ret  nz                                          ; $6ada: $c0

	jr   nz, jr_013_6add                             ; $6adb: $20 $00

jr_013_6add:
	ret  nz                                          ; $6add: $c0

	sub  a                                           ; $6ade: $97
	nop                                              ; $6adf: $00
	ld   [bc], a                                     ; $6ae0: $02
	ld   [bc], a                                     ; $6ae1: $02
	inc  a                                           ; $6ae2: $3c
	rrca                                             ; $6ae3: $0f
	add  c                                           ; $6ae4: $81
	ld   a, [hl]                                     ; $6ae5: $7e
	nop                                              ; $6ae6: $00
	ld   c, [hl]                                     ; $6ae7: $4e
	add  c                                           ; $6ae8: $81
	ld   a, [hl]                                     ; $6ae9: $7e
	add  b                                           ; $6aea: $80
	inc  a                                           ; $6aeb: $3c
	inc  b                                           ; $6aec: $04
	ld   b, c                                        ; $6aed: $41
	nop                                              ; $6aee: $00
	ld   [hl+], a                                    ; $6aef: $22
	nop                                              ; $6af0: $00
	inc  e                                           ; $6af1: $1c
	adc  c                                           ; $6af2: $89

jr_013_6af3:
	nop                                              ; $6af3: $00
	ld   bc, $001f                                   ; $6af4: $01 $1f $00
	add  [hl]                                        ; $6af7: $86
	rrca                                             ; $6af8: $0f
	nop                                              ; $6af9: $00
	inc  c                                           ; $6afa: $0c
	add  b                                           ; $6afb: $80
	rrca                                             ; $6afc: $0f
	nop                                              ; $6afd: $00
	inc  c                                           ; $6afe: $0c
	adc  b                                           ; $6aff: $88
	rrca                                             ; $6b00: $0f
	nop                                              ; $6b01: $00
	rra                                              ; $6b02: $1f
	add  l                                           ; $6b03: $85
	nop                                              ; $6b04: $00
	ld   bc, $00ff                                   ; $6b05: $01 $ff $00
	add  b                                           ; $6b08: $80
	rst  $38                                         ; $6b09: $ff
	inc  b                                           ; $6b0a: $04
	di                                               ; $6b0b: $f3
	ei                                               ; $6b0c: $fb
	set  7, e                                        ; $6b0d: $cb $fb
	dec  sp                                          ; $6b0f: $3b
	add  h                                           ; $6b10: $84
	ei                                               ; $6b11: $fb
	inc  b                                           ; $6b12: $04
	dec  sp                                          ; $6b13: $3b
	ei                                               ; $6b14: $fb
	set  7, e                                        ; $6b15: $cb $fb

jr_013_6b17:
	di                                               ; $6b17: $f3
	add  e                                           ; $6b18: $83
	rst  $38                                         ; $6b19: $ff
	add  l                                           ; $6b1a: $85
	nop                                              ; $6b1b: $00
	ld   bc, $00ff                                   ; $6b1c: $01 $ff $00
	add  b                                           ; $6b1f: $80
	ld   a, a                                        ; $6b20: $7f
	inc  b                                           ; $6b21: $04
	ld   c, a                                        ; $6b22: $4f
	ld   a, a                                        ; $6b23: $7f
	ld   [hl], e                                     ; $6b24: $73
	ld   a, a                                        ; $6b25: $7f
	ld   a, h                                        ; $6b26: $7c
	add  h                                           ; $6b27: $84
	ld   a, a                                        ; $6b28: $7f
	inc  b                                           ; $6b29: $04
	ld   a, h                                        ; $6b2a: $7c
	ld   a, a                                        ; $6b2b: $7f
	ld   [hl], e                                     ; $6b2c: $73
	ld   [hl], a                                     ; $6b2d: $77
	ld   b, a                                        ; $6b2e: $47

jr_013_6b2f:
	add  d                                           ; $6b2f: $82
	ld   a, a                                        ; $6b30: $7f
	nop                                              ; $6b31: $00
	rst  $38                                         ; $6b32: $ff
	add  l                                           ; $6b33: $85
	nop                                              ; $6b34: $00
	ld   bc, $00f8                                   ; $6b35: $01 $f8 $00
	add  [hl]                                        ; $6b38: $86
	ld   hl, sp+$00                                  ; $6b39: $f8 $00
	jr   c, jr_013_6abd                              ; $6b3b: $38 $80

	ld   hl, sp+$00                                  ; $6b3d: $f8 $00
	jr   c, jr_013_6aca                              ; $6b3f: $38 $89

	ld   hl, sp+$01                                  ; $6b41: $f8 $01
	nop                                              ; $6b43: $00
	rst  $38                                         ; $6b44: $ff
	adc  l                                           ; $6b45: $8d
	nop                                              ; $6b46: $00
	add  b                                           ; $6b47: $80
	rst  $38                                         ; $6b48: $ff
	add  d                                           ; $6b49: $82
	nop                                              ; $6b4a: $00
	add  d                                           ; $6b4b: $82
	rst  $38                                         ; $6b4c: $ff
	inc  b                                           ; $6b4d: $04
	nop                                              ; $6b4e: $00
	rst  $38                                         ; $6b4f: $ff
	nop                                              ; $6b50: $00
	rst  $38                                         ; $6b51: $ff
	nop                                              ; $6b52: $00
	add  b                                           ; $6b53: $80
	rst  $38                                         ; $6b54: $ff
	add  l                                           ; $6b55: $85
	nop                                              ; $6b56: $00
	add  b                                           ; $6b57: $80
	rst  $38                                         ; $6b58: $ff
	add  b                                           ; $6b59: $80
	nop                                              ; $6b5a: $00
	add  h                                           ; $6b5b: $84
	rst  $38                                         ; $6b5c: $ff
	inc  b                                           ; $6b5d: $04
	nop                                              ; $6b5e: $00
	rst  $38                                         ; $6b5f: $ff
	nop                                              ; $6b60: $00
	rst  $38                                         ; $6b61: $ff
	nop                                              ; $6b62: $00
	add  a                                           ; $6b63: $87
	rst  $38                                         ; $6b64: $ff
	ld   bc, $54ab                                   ; $6b65: $01 $ab $54
	add  b                                           ; $6b68: $80
	ld   [bc], a                                     ; $6b69: $02
	add  b                                           ; $6b6a: $80

jr_013_6b6b:
	ld   d, b                                        ; $6b6b: $50
	add  b                                           ; $6b6c: $80
	ld   [hl+], a                                    ; $6b6d: $22
	add  b                                           ; $6b6e: $80
	ld   b, l                                        ; $6b6f: $45
	add  b                                           ; $6b70: $80
	jr   z, jr_013_6af3                              ; $6b71: $28 $80

	ld   b, b                                        ; $6b73: $40
	add  b                                           ; $6b74: $80
	and  d                                           ; $6b75: $a2
	add  b                                           ; $6b76: $80
	ld   b, h                                        ; $6b77: $44
	add  b                                           ; $6b78: $80
	adc  b                                           ; $6b79: $88
	add  b                                           ; $6b7a: $80
	ld   b, l                                        ; $6b7b: $45
	add  b                                           ; $6b7c: $80
	add  d                                           ; $6b7d: $82
	add  b                                           ; $6b7e: $80
	ld   d, b                                        ; $6b7f: $50
	add  b                                           ; $6b80: $80
	adc  b                                           ; $6b81: $88
	add  b                                           ; $6b82: $80
	dec  d                                           ; $6b83: $15
	add  b                                           ; $6b84: $80
	xor  d                                           ; $6b85: $aa
	add  b                                           ; $6b86: $80
	ld   d, l                                        ; $6b87: $55
	add  b                                           ; $6b88: $80
	xor  b                                           ; $6b89: $a8
	add  b                                           ; $6b8a: $80
	ld   d, l                                        ; $6b8b: $55
	add  b                                           ; $6b8c: $80
	nop                                              ; $6b8d: $00
	add  b                                           ; $6b8e: $80
	dec  d                                           ; $6b8f: $15
	add  b                                           ; $6b90: $80
	xor  d                                           ; $6b91: $aa
	add  b                                           ; $6b92: $80
	inc  b                                           ; $6b93: $04
	add  b                                           ; $6b94: $80
	jr   z, jr_013_6b17                              ; $6b95: $28 $80

	nop                                              ; $6b97: $00
	add  b                                           ; $6b98: $80
	xor  d                                           ; $6b99: $aa
	add  b                                           ; $6b9a: $80
	db   $10                                         ; $6b9b: $10
	add  b                                           ; $6b9c: $80
	adc  d                                           ; $6b9d: $8a
	add  b                                           ; $6b9e: $80
	dec  d                                           ; $6b9f: $15
	add  b                                           ; $6ba0: $80
	and  d                                           ; $6ba1: $a2
	add  b                                           ; $6ba2: $80
	ld   de, $a280                                   ; $6ba3: $11 $80 $a2
	add  b                                           ; $6ba6: $80
	ld   b, l                                        ; $6ba7: $45
	add  b                                           ; $6ba8: $80
	add  d                                           ; $6ba9: $82
	add  b                                           ; $6baa: $80
	ld   d, h                                        ; $6bab: $54
	add  b                                           ; $6bac: $80
	jr   z, jr_013_6b2f                              ; $6bad: $28 $80

	inc  d                                           ; $6baf: $14
	add  b                                           ; $6bb0: $80
	adc  d                                           ; $6bb1: $8a
	add  b                                           ; $6bb2: $80
	dec  b                                           ; $6bb3: $05
	add  b                                           ; $6bb4: $80
	and  b                                           ; $6bb5: $a0
	add  b                                           ; $6bb6: $80
	ld   d, h                                        ; $6bb7: $54
	add  b                                           ; $6bb8: $80
	adc  d                                           ; $6bb9: $8a
	add  b                                           ; $6bba: $80
	ld   b, l                                        ; $6bbb: $45
	add  b                                           ; $6bbc: $80
	xor  b                                           ; $6bbd: $a8
	add  b                                           ; $6bbe: $80

jr_013_6bbf:
	ld   b, h                                        ; $6bbf: $44
	add  b                                           ; $6bc0: $80
	adc  d                                           ; $6bc1: $8a
	add  b                                           ; $6bc2: $80
	ld   b, l                                        ; $6bc3: $45
	add  b                                           ; $6bc4: $80
	xor  d                                           ; $6bc5: $aa
	add  b                                           ; $6bc6: $80
	ld   d, l                                        ; $6bc7: $55
	add  b                                           ; $6bc8: $80
	xor  d                                           ; $6bc9: $aa
	add  b                                           ; $6bca: $80
	ld   d, h                                        ; $6bcb: $54
	add  b                                           ; $6bcc: $80
	and  d                                           ; $6bcd: $a2
	add  b                                           ; $6bce: $80

jr_013_6bcf:
	ld   b, h                                        ; $6bcf: $44
	add  b                                           ; $6bd0: $80
	xor  d                                           ; $6bd1: $aa
	add  b                                           ; $6bd2: $80
	inc  d                                           ; $6bd3: $14
	add  b                                           ; $6bd4: $80
	and  b                                           ; $6bd5: $a0
	add  b                                           ; $6bd6: $80
	ld   d, l                                        ; $6bd7: $55
	add  b                                           ; $6bd8: $80
	add  b                                           ; $6bd9: $80
	add  b                                           ; $6bda: $80
	ld   d, c                                        ; $6bdb: $51
	add  b                                           ; $6bdc: $80
	ld   a, [hl+]                                    ; $6bdd: $2a
	add  b                                           ; $6bde: $80
	ld   b, h                                        ; $6bdf: $44
	add  b                                           ; $6be0: $80
	ld   [hl+], a                                    ; $6be1: $22
	add  b                                           ; $6be2: $80
	ld   b, h                                        ; $6be3: $44
	add  b                                           ; $6be4: $80
	ld   a, [bc]                                     ; $6be5: $0a
	add  b                                           ; $6be6: $80
	inc  d                                           ; $6be7: $14
	add  b                                           ; $6be8: $80
	jr   nz, jr_013_6b6b                             ; $6be9: $20 $80

	ld   d, h                                        ; $6beb: $54
	add  b                                           ; $6bec: $80
	xor  d                                           ; $6bed: $aa
	add  b                                           ; $6bee: $80
	ld   d, b                                        ; $6bef: $50
	add  b                                           ; $6bf0: $80
	and  b                                           ; $6bf1: $a0
	add  b                                           ; $6bf2: $80
	ld   b, l                                        ; $6bf3: $45
	add  b                                           ; $6bf4: $80
	and  d                                           ; $6bf5: $a2
	add  b                                           ; $6bf6: $80
	ld   d, l                                        ; $6bf7: $55
	add  b                                           ; $6bf8: $80
	and  b                                           ; $6bf9: $a0
	add  b                                           ; $6bfa: $80
	ld   b, c                                        ; $6bfb: $41
	add  b                                           ; $6bfc: $80
	adc  b                                           ; $6bfd: $88
	add  b                                           ; $6bfe: $80
	ld   d, l                                        ; $6bff: $55
	add  b                                           ; $6c00: $80
	add  b                                           ; $6c01: $80
	add  b                                           ; $6c02: $80
	ld   d, l                                        ; $6c03: $55
	add  b                                           ; $6c04: $80
	and  d                                           ; $6c05: $a2
	add  b                                           ; $6c06: $80
	inc  b                                           ; $6c07: $04
	add  b                                           ; $6c08: $80
	xor  b                                           ; $6c09: $a8
	add  b                                           ; $6c0a: $80
	ld   d, c                                        ; $6c0b: $51
	add  b                                           ; $6c0c: $80
	xor  d                                           ; $6c0d: $aa
	add  b                                           ; $6c0e: $80
	ld   d, c                                        ; $6c0f: $51
	add  b                                           ; $6c10: $80
	xor  d                                           ; $6c11: $aa
	add  b                                           ; $6c12: $80
	ld   bc, $2280                                   ; $6c13: $01 $80 $22
	add  b                                           ; $6c16: $80
	ld   d, c                                        ; $6c17: $51
	add  b                                           ; $6c18: $80
	ld   [hl+], a                                    ; $6c19: $22
	add  b                                           ; $6c1a: $80
	ld   b, l                                        ; $6c1b: $45
	add  b                                           ; $6c1c: $80
	ld   [hl+], a                                    ; $6c1d: $22
	add  b                                           ; $6c1e: $80
	ld   d, b                                        ; $6c1f: $50
	add  b                                           ; $6c20: $80
	add  d                                           ; $6c21: $82
	add  b                                           ; $6c22: $80

jr_013_6c23:
	ld   d, l                                        ; $6c23: $55
	add  b                                           ; $6c24: $80
	xor  d                                           ; $6c25: $aa
	add  b                                           ; $6c26: $80
	db   $10                                         ; $6c27: $10
	add  b                                           ; $6c28: $80
	ld   a, [hl+]                                    ; $6c29: $2a
	add  b                                           ; $6c2a: $80
	ld   b, l                                        ; $6c2b: $45
	add  b                                           ; $6c2c: $80
	ld   [bc], a                                     ; $6c2d: $02
	add  b                                           ; $6c2e: $80
	ld   d, l                                        ; $6c2f: $55
	add  b                                           ; $6c30: $80
	xor  d                                           ; $6c31: $aa
	add  b                                           ; $6c32: $80
	dec  d                                           ; $6c33: $15
	add  b                                           ; $6c34: $80
	nop                                              ; $6c35: $00
	add  b                                           ; $6c36: $80
	ld   b, l                                        ; $6c37: $45
	add  b                                           ; $6c38: $80
	adc  b                                           ; $6c39: $88
	add  b                                           ; $6c3a: $80
	ld   d, l                                        ; $6c3b: $55
	add  b                                           ; $6c3c: $80
	jr   z, jr_013_6bbf                              ; $6c3d: $28 $80

	ld   d, l                                        ; $6c3f: $55
	add  b                                           ; $6c40: $80
	adc  d                                           ; $6c41: $8a
	add  b                                           ; $6c42: $80
	ld   d, l                                        ; $6c43: $55
	add  b                                           ; $6c44: $80
	adc  d                                           ; $6c45: $8a
	add  b                                           ; $6c46: $80
	ld   d, h                                        ; $6c47: $54
	add  b                                           ; $6c48: $80
	adc  d                                           ; $6c49: $8a
	add  b                                           ; $6c4a: $80
	ld   b, b                                        ; $6c4b: $40
	add  b                                           ; $6c4c: $80
	jr   z, jr_013_6bcf                              ; $6c4d: $28 $80

	dec  d                                           ; $6c4f: $15
	add  b                                           ; $6c50: $80
	and  d                                           ; $6c51: $a2
	add  b                                           ; $6c52: $80
	ld   d, h                                        ; $6c53: $54
	add  b                                           ; $6c54: $80
	xor  d                                           ; $6c55: $aa
	add  b                                           ; $6c56: $80
	ld   d, c                                        ; $6c57: $51
	add  b                                           ; $6c58: $80
	xor  d                                           ; $6c59: $aa
	add  b                                           ; $6c5a: $80
	dec  d                                           ; $6c5b: $15
	add  b                                           ; $6c5c: $80
	ld   a, [bc]                                     ; $6c5d: $0a
	add  b                                           ; $6c5e: $80
	ld   d, l                                        ; $6c5f: $55
	add  b                                           ; $6c60: $80
	xor  d                                           ; $6c61: $aa
	add  b                                           ; $6c62: $80
	ld   d, h                                        ; $6c63: $54
	add  d                                           ; $6c64: $82
	ld   a, [hl+]                                    ; $6c65: $2a
	add  b                                           ; $6c66: $80
	ld   d, h                                        ; $6c67: $54
	add  b                                           ; $6c68: $80
	adc  d                                           ; $6c69: $8a
	add  b                                           ; $6c6a: $80
	ld   d, c                                        ; $6c6b: $51
	add  b                                           ; $6c6c: $80
	add  d                                           ; $6c6d: $82
	add  b                                           ; $6c6e: $80
	inc  d                                           ; $6c6f: $14
	add  b                                           ; $6c70: $80
	xor  d                                           ; $6c71: $aa
	add  b                                           ; $6c72: $80
	ld   d, h                                        ; $6c73: $54
	add  b                                           ; $6c74: $80
	ld   [$5580], sp                                 ; $6c75: $08 $80 $55
	add  b                                           ; $6c78: $80
	add  b                                           ; $6c79: $80
	add  b                                           ; $6c7a: $80
	ld   d, c                                        ; $6c7b: $51
	add  b                                           ; $6c7c: $80
	xor  d                                           ; $6c7d: $aa
	add  b                                           ; $6c7e: $80
	ld   b, h                                        ; $6c7f: $44
	add  b                                           ; $6c80: $80
	xor  d                                           ; $6c81: $aa
	add  b                                           ; $6c82: $80
	ld   d, l                                        ; $6c83: $55
	add  b                                           ; $6c84: $80
	xor  d                                           ; $6c85: $aa
	add  b                                           ; $6c86: $80
	ld   d, l                                        ; $6c87: $55
	add  b                                           ; $6c88: $80
	ld   [hl+], a                                    ; $6c89: $22
	add  b                                           ; $6c8a: $80
	ld   b, l                                        ; $6c8b: $45
	add  b                                           ; $6c8c: $80
	and  b                                           ; $6c8d: $a0
	add  b                                           ; $6c8e: $80

jr_013_6c8f:
	dec  d                                           ; $6c8f: $15
	add  b                                           ; $6c90: $80
	adc  d                                           ; $6c91: $8a
	add  b                                           ; $6c92: $80
	ld   d, h                                        ; $6c93: $54
	add  b                                           ; $6c94: $80
	adc  b                                           ; $6c95: $88
	add  b                                           ; $6c96: $80
	ld   d, l                                        ; $6c97: $55
	add  b                                           ; $6c98: $80
	xor  d                                           ; $6c99: $aa
	add  b                                           ; $6c9a: $80
	ld   de, $8280                                   ; $6c9b: $11 $80 $82
	add  b                                           ; $6c9e: $80
	db   $10                                         ; $6c9f: $10
	add  b                                           ; $6ca0: $80
	jr   z, jr_013_6c23                              ; $6ca1: $28 $80

	ld   d, l                                        ; $6ca3: $55
	add  b                                           ; $6ca4: $80
	xor  b                                           ; $6ca5: $a8
	add  b                                           ; $6ca6: $80
	ld   d, l                                        ; $6ca7: $55
	add  b                                           ; $6ca8: $80
	ld   a, [hl+]                                    ; $6ca9: $2a
	add  b                                           ; $6caa: $80
	ld   b, b                                        ; $6cab: $40
	add  b                                           ; $6cac: $80
	add  d                                           ; $6cad: $82
	add  b                                           ; $6cae: $80
	ld   d, h                                        ; $6caf: $54
	add  b                                           ; $6cb0: $80
	adc  d                                           ; $6cb1: $8a
	add  b                                           ; $6cb2: $80
	ld   b, l                                        ; $6cb3: $45
	add  b                                           ; $6cb4: $80
	adc  d                                           ; $6cb5: $8a
	add  b                                           ; $6cb6: $80

jr_013_6cb7:
	ld   d, l                                        ; $6cb7: $55
	add  b                                           ; $6cb8: $80
	ld   a, [bc]                                     ; $6cb9: $0a
	add  b                                           ; $6cba: $80
	ld   bc, $2a80                                   ; $6cbb: $01 $80 $2a
	add  b                                           ; $6cbe: $80

jr_013_6cbf:
	ld   d, h                                        ; $6cbf: $54
	add  b                                           ; $6cc0: $80
	ld   [$1480], sp                                 ; $6cc1: $08 $80 $14
	add  b                                           ; $6cc4: $80
	xor  d                                           ; $6cc5: $aa
	add  b                                           ; $6cc6: $80
	dec  d                                           ; $6cc7: $15
	add  b                                           ; $6cc8: $80
	ld   a, [bc]                                     ; $6cc9: $0a
	add  b                                           ; $6cca: $80
	ld   b, b                                        ; $6ccb: $40
	add  b                                           ; $6ccc: $80
	sub  b                                           ; $6ccd: $90
	add  b                                           ; $6cce: $80
	ld   d, l                                        ; $6ccf: $55
	add  b                                           ; $6cd0: $80
	add  b                                           ; $6cd1: $80
	add  b                                           ; $6cd2: $80
	ld   de, $0a80                                   ; $6cd3: $11 $80 $0a
	add  b                                           ; $6cd6: $80
	ld   b, c                                        ; $6cd7: $41
	add  b                                           ; $6cd8: $80
	adc  d                                           ; $6cd9: $8a
	add  b                                           ; $6cda: $80
	ld   d, l                                        ; $6cdb: $55
	add  b                                           ; $6cdc: $80
	and  b                                           ; $6cdd: $a0
	add  b                                           ; $6cde: $80
	ld   d, b                                        ; $6cdf: $50
	add  b                                           ; $6ce0: $80
	add  d                                           ; $6ce1: $82
	add  b                                           ; $6ce2: $80
	ld   d, c                                        ; $6ce3: $51
	add  b                                           ; $6ce4: $80
	add  d                                           ; $6ce5: $82
	add  b                                           ; $6ce6: $80
	ld   d, l                                        ; $6ce7: $55
	add  b                                           ; $6ce8: $80
	add  d                                           ; $6ce9: $82
	add  b                                           ; $6cea: $80
	ld   b, h                                        ; $6ceb: $44
	add  b                                           ; $6cec: $80
	xor  b                                           ; $6ced: $a8
	add  b                                           ; $6cee: $80
	ld   b, c                                        ; $6cef: $41
	add  b                                           ; $6cf0: $80
	xor  d                                           ; $6cf1: $aa
	add  b                                           ; $6cf2: $80
	inc  b                                           ; $6cf3: $04
	add  b                                           ; $6cf4: $80
	and  d                                           ; $6cf5: $a2
	add  b                                           ; $6cf6: $80
	ld   b, l                                        ; $6cf7: $45
	add  b                                           ; $6cf8: $80
	xor  d                                           ; $6cf9: $aa
	add  b                                           ; $6cfa: $80
	dec  d                                           ; $6cfb: $15
	add  b                                           ; $6cfc: $80
	ld   [bc], a                                     ; $6cfd: $02
	add  b                                           ; $6cfe: $80
	ld   d, l                                        ; $6cff: $55
	add  b                                           ; $6d00: $80
	and  d                                           ; $6d01: $a2
	add  b                                           ; $6d02: $80
	ld   d, h                                        ; $6d03: $54
	add  b                                           ; $6d04: $80
	ld   a, [hl+]                                    ; $6d05: $2a
	add  b                                           ; $6d06: $80
	inc  b                                           ; $6d07: $04
	add  b                                           ; $6d08: $80
	and  d                                           ; $6d09: $a2
	add  b                                           ; $6d0a: $80
	ld   d, l                                        ; $6d0b: $55
	add  b                                           ; $6d0c: $80
	jr   nz, jr_013_6c8f                             ; $6d0d: $20 $80

	ld   b, h                                        ; $6d0f: $44
	add  b                                           ; $6d10: $80
	ld   a, [bc]                                     ; $6d11: $0a
	add  b                                           ; $6d12: $80
	ld   d, h                                        ; $6d13: $54
	add  b                                           ; $6d14: $80
	xor  d                                           ; $6d15: $aa
	add  b                                           ; $6d16: $80
	ld   b, c                                        ; $6d17: $41
	add  b                                           ; $6d18: $80
	xor  d                                           ; $6d19: $aa
	add  b                                           ; $6d1a: $80
	ld   d, l                                        ; $6d1b: $55
	add  b                                           ; $6d1c: $80
	ld   [hl+], a                                    ; $6d1d: $22
	add  b                                           ; $6d1e: $80
	ld   b, h                                        ; $6d1f: $44
	add  b                                           ; $6d20: $80
	adc  d                                           ; $6d21: $8a
	add  b                                           ; $6d22: $80
	ld   d, l                                        ; $6d23: $55
	add  b                                           ; $6d24: $80
	ld   [hl+], a                                    ; $6d25: $22
	add  b                                           ; $6d26: $80
	ld   d, h                                        ; $6d27: $54
	add  b                                           ; $6d28: $80
	adc  b                                           ; $6d29: $88
	add  b                                           ; $6d2a: $80
	nop                                              ; $6d2b: $00
	add  b                                           ; $6d2c: $80
	xor  d                                           ; $6d2d: $aa
	add  b                                           ; $6d2e: $80
	ld   d, b                                        ; $6d2f: $50
	add  b                                           ; $6d30: $80
	adc  b                                           ; $6d31: $88
	add  b                                           ; $6d32: $80
	ld   d, l                                        ; $6d33: $55
	add  b                                           ; $6d34: $80
	jr   z, jr_013_6cb7                              ; $6d35: $28 $80

	ld   d, c                                        ; $6d37: $51
	add  b                                           ; $6d38: $80
	ld   a, [bc]                                     ; $6d39: $0a
	add  b                                           ; $6d3a: $80
	ld   d, l                                        ; $6d3b: $55
	add  b                                           ; $6d3c: $80
	jr   nz, jr_013_6cbf                             ; $6d3d: $20 $80

	ld   b, h                                        ; $6d3f: $44
	add  b                                           ; $6d40: $80
	xor  d                                           ; $6d41: $aa
	add  b                                           ; $6d42: $80
	ld   d, h                                        ; $6d43: $54
	add  b                                           ; $6d44: $80
	xor  d                                           ; $6d45: $aa
	add  b                                           ; $6d46: $80
	ld   d, l                                        ; $6d47: $55
	add  b                                           ; $6d48: $80
	add  d                                           ; $6d49: $82
	add  b                                           ; $6d4a: $80
	ld   b, c                                        ; $6d4b: $41
	add  b                                           ; $6d4c: $80
	xor  d                                           ; $6d4d: $aa
	add  b                                           ; $6d4e: $80
	ld   b, h                                        ; $6d4f: $44
	add  b                                           ; $6d50: $80
	ld   [bc], a                                     ; $6d51: $02
	add  b                                           ; $6d52: $80
	ld   d, l                                        ; $6d53: $55
	add  b                                           ; $6d54: $80
	adc  b                                           ; $6d55: $88
	add  b                                           ; $6d56: $80
	ld   d, l                                        ; $6d57: $55
	add  b                                           ; $6d58: $80
	ld   a, [hl+]                                    ; $6d59: $2a
	add  b                                           ; $6d5a: $80
	ld   d, b                                        ; $6d5b: $50
	add  b                                           ; $6d5c: $80
	ld   [$4580], sp                                 ; $6d5d: $08 $80 $45
	add  b                                           ; $6d60: $80
	xor  b                                           ; $6d61: $a8
	add  b                                           ; $6d62: $80
	ld   b, l                                        ; $6d63: $45
	nop                                              ; $6d64: $00
	rst  $38                                         ; $6d65: $ff
	sub  c                                           ; $6d66: $91
	nop                                              ; $6d67: $00
	nop                                              ; $6d68: $00
	ld   bc, $0085                                   ; $6d69: $01 $85 $00
	nop                                              ; $6d6c: $00
	inc  bc                                          ; $6d6d: $03
	add  c                                           ; $6d6e: $81
	ld   bc, $0300                                   ; $6d6f: $01 $00 $03

jr_013_6d72:
	add  a                                           ; $6d72: $87
	nop                                              ; $6d73: $00
	rlca                                             ; $6d74: $07
	rrca                                             ; $6d75: $0f
	nop                                              ; $6d76: $00
	ccf                                              ; $6d77: $3f
	rrca                                             ; $6d78: $0f
	ld   a, a                                        ; $6d79: $7f
	ccf                                              ; $6d7a: $3f
	ldh  [$60], a                                    ; $6d7b: $e0 $60
	add  b                                           ; $6d7d: $80
	ld   b, b                                        ; $6d7e: $40
	add  b                                           ; $6d7f: $80
	ret  nz                                          ; $6d80: $c0

	nop                                              ; $6d81: $00
	add  b                                           ; $6d82: $80
	add  a                                           ; $6d83: $87
	adc  a                                           ; $6d84: $8f
	nop                                              ; $6d85: $00
	ldh  a, [$87]                                    ; $6d86: $f0 $87
	nop                                              ; $6d88: $00
	dec  b                                           ; $6d89: $05
	ld   hl, sp+$00                                  ; $6d8a: $f8 $00
	cp   $f8                                         ; $6d8c: $fe $f8
	rst  $38                                         ; $6d8e: $ff
	cp   $80                                         ; $6d8f: $fe $80
	inc  bc                                          ; $6d91: $03
	add  d                                           ; $6d92: $82
	ld   bc, $0000                                   ; $6d93: $01 $00 $00
	add  a                                           ; $6d96: $87
	ld   hl, sp+$00                                  ; $6d97: $f8 $00
	rlca                                             ; $6d99: $07
	adc  l                                           ; $6d9a: $8d
	nop                                              ; $6d9b: $00
	nop                                              ; $6d9c: $00
	add  b                                           ; $6d9d: $80
	add  c                                           ; $6d9e: $81
	nop                                              ; $6d9f: $00
	nop                                              ; $6da0: $00
	ret  nz                                          ; $6da1: $c0

	add  l                                           ; $6da2: $85
	add  b                                           ; $6da3: $80
	nop                                              ; $6da4: $00
	ldh  [$81], a                                    ; $6da5: $e0 $81
	ret  nz                                          ; $6da7: $c0

	nop                                              ; $6da8: $00
	ldh  [c], a                                      ; $6da9: $e2
	adc  e                                           ; $6daa: $8b
	ld   bc, $0200                                   ; $6dab: $01 $00 $02
	add  c                                           ; $6dae: $81
	nop                                              ; $6daf: $00
	nop                                              ; $6db0: $00
	ld   bc, $008b                                   ; $6db1: $01 $8b $00
	ld   bc, $807f                                   ; $6db4: $01 $7f $80
	add  b                                           ; $6db7: $80
	ret  nz                                          ; $6db8: $c0

	add  b                                           ; $6db9: $80
	ldh  [$82], a                                    ; $6dba: $e0 $82
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6dbc: $cf
	add  d                                           ; $6dbd: $82
	inc  bc                                          ; $6dbe: $03
	add  b                                           ; $6dbf: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6dc0: $cf
	add  b                                           ; $6dc1: $80
	call z, Call_013_7f80                            ; $6dc2: $cc $80 $7f
	inc  b                                           ; $6dc5: $04
	sbc  a                                           ; $6dc6: $9f
	rra                                              ; $6dc7: $1f
	ld   h, b                                        ; $6dc8: $60
	nop                                              ; $6dc9: $00
	rra                                              ; $6dca: $1f
	add  l                                           ; $6dcb: $85
	nop                                              ; $6dcc: $00
	ld   bc, $00ff                                   ; $6dcd: $01 $ff $00
	add  b                                           ; $6dd0: $80
	ld   bc, $0380                                   ; $6dd1: $01 $80 $03
	add  b                                           ; $6dd4: $80
	rst  $38                                         ; $6dd5: $ff
	add  b                                           ; $6dd6: $80
	cp   $80                                         ; $6dd7: $fe $80
	ldh  a, [c]                                      ; $6dd9: $f2
	add  b                                           ; $6dda: $80
	di                                               ; $6ddb: $f3
	add  b                                           ; $6ddc: $80
	rst  $38                                         ; $6ddd: $ff
	add  b                                           ; $6dde: $80
	sbc  a                                           ; $6ddf: $9f
	add  b                                           ; $6de0: $80
	rst  $38                                         ; $6de1: $ff
	add  b                                           ; $6de2: $80
	db   $fc                                         ; $6de3: $fc
	ld   [bc], a                                     ; $6de4: $02
	inc  bc                                          ; $6de5: $03
	nop                                              ; $6de6: $00
	db   $fc                                         ; $6de7: $fc
	add  l                                           ; $6de8: $85
	nop                                              ; $6de9: $00
	nop                                              ; $6dea: $00
	jr   nz, jr_013_6d72                             ; $6deb: $20 $85

	ret  nz                                          ; $6ded: $c0

	add  d                                           ; $6dee: $82
	ld   b, b                                        ; $6def: $40
	add  b                                           ; $6df0: $80
	ret  nz                                          ; $6df1: $c0

	nop                                              ; $6df2: $00
	and  b                                           ; $6df3: $a0
	add  c                                           ; $6df4: $81
	add  b                                           ; $6df5: $80
	ld   [bc], a                                     ; $6df6: $02
	ld   b, b                                        ; $6df7: $40
	nop                                              ; $6df8: $00
	add  b                                           ; $6df9: $80
	sbc  e                                           ; $6dfa: $9b
	nop                                              ; $6dfb: $00
	ld   [bc], a                                     ; $6dfc: $02
	inc  bc                                          ; $6dfd: $03
	nop                                              ; $6dfe: $00
	ld   [bc], a                                     ; $6dff: $02
	add  c                                           ; $6e00: $81
	nop                                              ; $6e01: $00
	nop                                              ; $6e02: $00
	ld   bc, $0081                                   ; $6e03: $01 $81 $00
	nop                                              ; $6e06: $00
	ld   bc, $0081                                   ; $6e07: $01 $81 $00
	nop                                              ; $6e0a: $00
	ld   bc, $0087                                   ; $6e0b: $01 $87 $00
	dec  b                                           ; $6e0e: $05
	rra                                              ; $6e0f: $1f
	nop                                              ; $6e10: $00
	ld   a, a                                        ; $6e11: $7f
	rra                                              ; $6e12: $1f
	rst  $38                                         ; $6e13: $ff
	ld   a, a                                        ; $6e14: $7f
	add  b                                           ; $6e15: $80
	ld   h, b                                        ; $6e16: $60
	add  b                                           ; $6e17: $80

jr_013_6e18:
	ld   b, b                                        ; $6e18: $40
	add  b                                           ; $6e19: $80
	ret  nz                                          ; $6e1a: $c0

	ld   bc, $8780                                   ; $6e1b: $01 $80 $87
	add  d                                           ; $6e1e: $82
	ld   b, a                                        ; $6e1f: $47
	add  d                                           ; $6e20: $82
	rst  ToBoot                                         ; $6e21: $c7
	nop                                              ; $6e22: $00
	ld   hl, sp-$79                                  ; $6e23: $f8 $87
	nop                                              ; $6e25: $00
	rlca                                             ; $6e26: $07
	ldh  a, [rP1]                                    ; $6e27: $f0 $00
	db   $fc                                         ; $6e29: $fc
	ldh  a, [$fe]                                    ; $6e2a: $f0 $fe
	db   $fc                                         ; $6e2c: $fc
	ld   [bc], a                                     ; $6e2d: $02
	inc  bc                                          ; $6e2e: $03
	add  d                                           ; $6e2f: $82
	ld   bc, $0000                                   ; $6e30: $01 $00 $00
	add  b                                           ; $6e33: $80
	ld   hl, sp-$80                                  ; $6e34: $f8 $80
	cp   $83                                         ; $6e36: $fe $83
	db   $fc                                         ; $6e38: $fc
	nop                                              ; $6e39: $00
	inc  bc                                          ; $6e3a: $03
	adc  l                                           ; $6e3b: $8d
	nop                                              ; $6e3c: $00
	inc  b                                           ; $6e3d: $04
	ret  nz                                          ; $6e3e: $c0

	nop                                              ; $6e3f: $00
	ld   b, b                                        ; $6e40: $40
	nop                                              ; $6e41: $00
	ret  nz                                          ; $6e42: $c0

	add  c                                           ; $6e43: $81
	add  b                                           ; $6e44: $80

jr_013_6e45:
	ld   [bc], a                                     ; $6e45: $02
	ld   c, h                                        ; $6e46: $4c
	ld   [hl], b                                     ; $6e47: $70
	ld   l, h                                        ; $6e48: $6c
	add  e                                           ; $6e49: $83
	ld   h, b                                        ; $6e4a: $60
	nop                                              ; $6e4b: $00
	ldh  a, [c]                                      ; $6e4c: $f2
	add  c                                           ; $6e4d: $81
	ld   bc, $0700                                   ; $6e4e: $01 $00 $07
	add  e                                           ; $6e51: $83
	inc  bc                                          ; $6e52: $03
	add  b                                           ; $6e53: $80
	ld   [bc], a                                     ; $6e54: $02
	ld   b, $1e                                      ; $6e55: $06 $1e
	ld   b, $1d                                      ; $6e57: $06 $1d
	ld   bc, $0002                                   ; $6e59: $01 $02 $00
	ld   bc, $008b                                   ; $6e5c: $01 $8b $00
	ld   bc, $807f                                   ; $6e5f: $01 $7f $80
	add  d                                           ; $6e62: $82
	ret  nz                                          ; $6e63: $c0

	add  d                                           ; $6e64: $82
	sbc  a                                           ; $6e65: $9f
	add  d                                           ; $6e66: $82
	rlca                                             ; $6e67: $07
	add  b                                           ; $6e68: $80
	sbc  a                                           ; $6e69: $9f
	add  b                                           ; $6e6a: $80
	call z, $bf01                                    ; $6e6b: $cc $01 $bf
	ccf                                              ; $6e6e: $3f
	add  b                                           ; $6e6f: $80
	rra                                              ; $6e70: $1f
	ld   [bc], a                                     ; $6e71: $02
	ld   h, b                                        ; $6e72: $60
	nop                                              ; $6e73: $00
	rra                                              ; $6e74: $1f
	add  l                                           ; $6e75: $85
	nop                                              ; $6e76: $00
	ld   bc, $00ff                                   ; $6e77: $01 $ff $00
	add  b                                           ; $6e7a: $80
	ld   bc, $0780                                   ; $6e7b: $01 $80 $07
	add  b                                           ; $6e7e: $80
	rst  $38                                         ; $6e7f: $ff
	add  b                                           ; $6e80: $80
	db   $fc                                         ; $6e81: $fc
	add  b                                           ; $6e82: $80
	db   $e4                                         ; $6e83: $e4
	add  b                                           ; $6e84: $80
	rst  $20                                         ; $6e85: $e7
	add  b                                           ; $6e86: $80
	rst  $38                                         ; $6e87: $ff
	add  b                                           ; $6e88: $80
	sbc  a                                           ; $6e89: $9f
	add  b                                           ; $6e8a: $80
	rst  $38                                         ; $6e8b: $ff
	add  b                                           ; $6e8c: $80
	db   $fc                                         ; $6e8d: $fc
	ld   [bc], a                                     ; $6e8e: $02
	inc  bc                                          ; $6e8f: $03
	nop                                              ; $6e90: $00
	db   $fc                                         ; $6e91: $fc
	add  l                                           ; $6e92: $85
	nop                                              ; $6e93: $00
	nop                                              ; $6e94: $00
	jr   nz, jr_013_6e18                             ; $6e95: $20 $81

	ret  nz                                          ; $6e97: $c0

	nop                                              ; $6e98: $00
	and  b                                           ; $6e99: $a0
	add  c                                           ; $6e9a: $81
	add  b                                           ; $6e9b: $80
	inc  bc                                          ; $6e9c: $03
	ldh  [$c0], a                                    ; $6e9d: $e0 $c0
	jr   nz, jr_013_6ea1                             ; $6e9f: $20 $00

jr_013_6ea1:
	add  b                                           ; $6ea1: $80
	add  b                                           ; $6ea2: $80
	ld   [bc], a                                     ; $6ea3: $02
	ld   b, b                                        ; $6ea4: $40
	nop                                              ; $6ea5: $00
	ret  nz                                          ; $6ea6: $c0

	add  c                                           ; $6ea7: $81
	add  b                                           ; $6ea8: $80
	nop                                              ; $6ea9: $00
	ret  nz                                          ; $6eaa: $c0

	sbc  a                                           ; $6eab: $9f
	nop                                              ; $6eac: $00
	ld   [bc], a                                     ; $6ead: $02
	inc  bc                                          ; $6eae: $03
	nop                                              ; $6eaf: $00
	ld   [bc], a                                     ; $6eb0: $02
	add  c                                           ; $6eb1: $81
	nop                                              ; $6eb2: $00
	nop                                              ; $6eb3: $00
	inc  bc                                          ; $6eb4: $03
	add  c                                           ; $6eb5: $81
	ld   bc, $0300                                   ; $6eb6: $01 $00 $03
	add  a                                           ; $6eb9: $87
	nop                                              ; $6eba: $00
	dec  b                                           ; $6ebb: $05
	rra                                              ; $6ebc: $1f
	nop                                              ; $6ebd: $00
	cpl                                              ; $6ebe: $2f
	rrca                                             ; $6ebf: $0f
	ld   a, a                                        ; $6ec0: $7f
	ccf                                              ; $6ec1: $3f
	add  b                                           ; $6ec2: $80
	jr   nc, jr_013_6e45                             ; $6ec3: $30 $80

	jr   nz, jr_013_6ecb                             ; $6ec5: $20 $04

	ldh  [$60], a                                    ; $6ec7: $e0 $60
	ld   b, b                                        ; $6ec9: $40
	ld   b, a                                        ; $6eca: $47

jr_013_6ecb:
	add  a                                           ; $6ecb: $87
	add  l                                           ; $6ecc: $85
	adc  a                                           ; $6ecd: $8f
	nop                                              ; $6ece: $00
	ldh  a, [$87]                                    ; $6ecf: $f0 $87
	nop                                              ; $6ed1: $00
	dec  b                                           ; $6ed2: $05
	ldh  a, [rP1]                                    ; $6ed3: $f0 $00
	or   $f8                                         ; $6ed5: $f6 $f8
	rst  $38                                         ; $6ed7: $ff
	cp   $80                                         ; $6ed8: $fe $80
	ld   bc, $0083                                   ; $6eda: $01 $83 $00
	add  b                                           ; $6edd: $80
	db   $fc                                         ; $6ede: $fc
	add  d                                           ; $6edf: $82
	ld   hl, sp-$80                                  ; $6ee0: $f8 $80
	cp   $01                                         ; $6ee2: $fe $01
	ld   hl, sp+$07                                  ; $6ee4: $f8 $07
	adc  l                                           ; $6ee6: $8d
	nop                                              ; $6ee7: $00
	nop                                              ; $6ee8: $00
	ld   b, b                                        ; $6ee9: $40
	add  c                                           ; $6eea: $81
	add  b                                           ; $6eeb: $80
	ld   bc, $c0e0                                   ; $6eec: $01 $e0 $c0
	add  b                                           ; $6eef: $80
	ld   b, b                                        ; $6ef0: $40
	add  d                                           ; $6ef1: $82
	ret  nz                                          ; $6ef2: $c0

	inc  b                                           ; $6ef3: $04
	ret  c                                           ; $6ef4: $d8

	ret  nz                                          ; $6ef5: $c0

	ret  c                                           ; $6ef6: $d8

	ret  nz                                          ; $6ef7: $c0

	db   $e4                                         ; $6ef8: $e4
	add  l                                           ; $6ef9: $85
	inc  bc                                          ; $6efa: $03
	nop                                              ; $6efb: $00
	dec  b                                           ; $6efc: $05
	add  e                                           ; $6efd: $83
	ld   bc, $0304                                   ; $6efe: $01 $04 $03
	nop                                              ; $6f01: $00
	ld   bc, $0100                                   ; $6f02: $01 $00 $01
	adc  e                                           ; $6f05: $8b
	nop                                              ; $6f06: $00
	ld   bc, $00ff                                   ; $6f07: $01 $ff $00
	add  b                                           ; $6f0a: $80
	add  b                                           ; $6f0b: $80
	add  b                                           ; $6f0c: $80
	ret  nz                                          ; $6f0d: $c0

	add  b                                           ; $6f0e: $80
	sbc  a                                           ; $6f0f: $9f
	add  b                                           ; $6f10: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6f11: $cf
	add  d                                           ; $6f12: $82
	inc  bc                                          ; $6f13: $03
	add  b                                           ; $6f14: $80
	ld   h, a                                        ; $6f15: $67
	add  b                                           ; $6f16: $80
	and  $06                                         ; $6f17: $e6 $06
	cp   a                                           ; $6f19: $bf
	ccf                                              ; $6f1a: $3f
	ld   c, a                                        ; $6f1b: $4f
	rrca                                             ; $6f1c: $0f
	jr   nc, jr_013_6f1f                             ; $6f1d: $30 $00

jr_013_6f1f:
	rrca                                             ; $6f1f: $0f
	add  l                                           ; $6f20: $85
	nop                                              ; $6f21: $00
	ld   bc, $01fe                                   ; $6f22: $01 $fe $01
	add  b                                           ; $6f25: $80
	inc  bc                                          ; $6f26: $03
	add  b                                           ; $6f27: $80
	rlca                                             ; $6f28: $07
	add  b                                           ; $6f29: $80
	rst  $38                                         ; $6f2a: $ff
	add  b                                           ; $6f2b: $80
	cp   $80                                         ; $6f2c: $fe $80
	ldh  a, [c]                                      ; $6f2e: $f2
	add  b                                           ; $6f2f: $80
	di                                               ; $6f30: $f3
	add  b                                           ; $6f31: $80
	rst  $38                                         ; $6f32: $ff
	add  b                                           ; $6f33: $80
	ld   c, a                                        ; $6f34: $4f
	add  b                                           ; $6f35: $80
	rst  $38                                         ; $6f36: $ff
	add  b                                           ; $6f37: $80
	cp   $02                                         ; $6f38: $fe $02
	ld   bc, $fe00                                   ; $6f3a: $01 $00 $fe
	add  l                                           ; $6f3d: $85
	nop                                              ; $6f3e: $00
	nop                                              ; $6f3f: $00
	ld   b, b                                        ; $6f40: $40
	add  l                                           ; $6f41: $85
	add  b                                           ; $6f42: $80
	nop                                              ; $6f43: $00
	ld   h, b                                        ; $6f44: $60
	add  c                                           ; $6f45: $81
	ld   b, b                                        ; $6f46: $40
	inc  bc                                          ; $6f47: $03
	ld   hl, sp-$20                                  ; $6f48: $f8 $e0
	sbc  b                                           ; $6f4a: $98
	add  b                                           ; $6f4b: $80
	add  b                                           ; $6f4c: $80
	ret  nz                                          ; $6f4d: $c0

	inc  b                                           ; $6f4e: $04
	and  b                                           ; $6f4f: $a0
	add  b                                           ; $6f50: $80
	ld   b, b                                        ; $6f51: $40
	nop                                              ; $6f52: $00
	add  b                                           ; $6f53: $80
	adc  l                                           ; $6f54: $8d
	nop                                              ; $6f55: $00
	ld   [bc], a                                     ; $6f56: $02
	ld   bc, $0300                                   ; $6f57: $01 $00 $03
	sub  l                                           ; $6f5a: $95
	ld   bc, $0300                                   ; $6f5b: $01 $00 $03
	add  c                                           ; $6f5e: $81
	nop                                              ; $6f5f: $00
	ld   bc, $00ff                                   ; $6f60: $01 $ff $00
	add  b                                           ; $6f63: $80
	rst  $38                                         ; $6f64: $ff
	add  e                                           ; $6f65: $83
	nop                                              ; $6f66: $00
	add  c                                           ; $6f67: $81
	rra                                              ; $6f68: $1f
	add  b                                           ; $6f69: $80
	ld   e, a                                        ; $6f6a: $5f
	add  a                                           ; $6f6b: $87
	rra                                              ; $6f6c: $1f
	add  c                                           ; $6f6d: $81
	nop                                              ; $6f6e: $00
	add  b                                           ; $6f6f: $80
	add  b                                           ; $6f70: $80
	nop                                              ; $6f71: $00
	rst  $38                                         ; $6f72: $ff
	add  c                                           ; $6f73: $81
	nop                                              ; $6f74: $00
	ld   bc, $00ff                                   ; $6f75: $01 $ff $00
	add  b                                           ; $6f78: $80
	rst  $38                                         ; $6f79: $ff
	add  e                                           ; $6f7a: $83
	nop                                              ; $6f7b: $00
	adc  h                                           ; $6f7c: $8c
	ld   hl, sp-$7f                                  ; $6f7d: $f8 $81

Call_013_6f7f:
	nop                                              ; $6f7f: $00
	add  b                                           ; $6f80: $80
	ld   bc, $fd00                                   ; $6f81: $01 $00 $fd
	sub  e                                           ; $6f84: $93
	ld   bc, $0202                                   ; $6f85: $01 $02 $02
	nop                                              ; $6f88: $00
	ld   bc, $0086                                   ; $6f89: $01 $86 $00
	nop                                              ; $6f8c: $00
	rst  $38                                         ; $6f8d: $ff
	add  d                                           ; $6f8e: $82
	ld   hl, sp-$7e                                  ; $6f8f: $f8 $82
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6f91: $cf
	add  d                                           ; $6f92: $82
	inc  bc                                          ; $6f93: $03
	add  d                                           ; $6f94: $82
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6f95: $cf
	add  b                                           ; $6f96: $80
	db   $fc                                         ; $6f97: $fc
	add  d                                           ; $6f98: $82
	rst  $38                                         ; $6f99: $ff
	add  b                                           ; $6f9a: $80
	ccf                                              ; $6f9b: $3f
	ld   [bc], a                                     ; $6f9c: $02
	ret  nz                                          ; $6f9d: $c0

	nop                                              ; $6f9e: $00
	ccf                                              ; $6f9f: $3f
	add  d                                           ; $6fa0: $82
	nop                                              ; $6fa1: $00
	nop                                              ; $6fa2: $00
	rst  $38                                         ; $6fa3: $ff
	add  d                                           ; $6fa4: $82
	rrca                                             ; $6fa5: $0f
	add  b                                           ; $6fa6: $80
	rst  $38                                         ; $6fa7: $ff
	add  b                                           ; $6fa8: $80
	db   $fc                                         ; $6fa9: $fc
	add  b                                           ; $6faa: $80
	db   $e4                                         ; $6fab: $e4
	add  b                                           ; $6fac: $80
	rst  $20                                         ; $6fad: $e7
	add  d                                           ; $6fae: $82
	rst  $38                                         ; $6faf: $ff
	add  b                                           ; $6fb0: $80
	sbc  a                                           ; $6fb1: $9f
	add  d                                           ; $6fb2: $82
	rst  $38                                         ; $6fb3: $ff
	add  b                                           ; $6fb4: $80
	db   $fc                                         ; $6fb5: $fc
	ld   [bc], a                                     ; $6fb6: $02
	inc  bc                                          ; $6fb7: $03
	nop                                              ; $6fb8: $00
	db   $fc                                         ; $6fb9: $fc
	add  c                                           ; $6fba: $81
	nop                                              ; $6fbb: $00
	add  h                                           ; $6fbc: $84
	rst  $38                                         ; $6fbd: $ff
	dec  b                                           ; $6fbe: $05

jr_013_6fbf:
	nop                                              ; $6fbf: $00
	rst  $38                                         ; $6fc0: $ff
	rlca                                             ; $6fc1: $07
	ld   hl, sp-$09                                  ; $6fc2: $f8 $f7
	ldh  a, [$80]                                    ; $6fc4: $f0 $80
	di                                               ; $6fc6: $f3
	ld   [bc], a                                     ; $6fc7: $02
	ld   [bc], a                                     ; $6fc8: $02
	ldh  a, [c]                                      ; $6fc9: $f2
	ld   [$ff81], sp                                 ; $6fca: $08 $81 $ff
	ld   [bc], a                                     ; $6fcd: $02
	ldh  a, [rIE]                                    ; $6fce: $f0 $ff
	rrca                                             ; $6fd0: $0f
	add  b                                           ; $6fd1: $80
	rst  $38                                         ; $6fd2: $ff
	ld   [bc], a                                     ; $6fd3: $02
	nop                                              ; $6fd4: $00
	rst  $38                                         ; $6fd5: $ff
	nop                                              ; $6fd6: $00
	add  b                                           ; $6fd7: $80
	rst  $38                                         ; $6fd8: $ff
	add  c                                           ; $6fd9: $81
	nop                                              ; $6fda: $00
	add  c                                           ; $6fdb: $81
	rst  $38                                         ; $6fdc: $ff
	rlca                                             ; $6fdd: $07
	nop                                              ; $6fde: $00
	rst  $38                                         ; $6fdf: $ff
	ld   hl, sp-$01                                  ; $6fe0: $f8 $ff
	ld   hl, sp+$00                                  ; $6fe2: $f8 $00
	rst  $38                                         ; $6fe4: $ff
	nop                                              ; $6fe5: $00
	add  b                                           ; $6fe6: $80
	rst  $38                                         ; $6fe7: $ff
	add  c                                           ; $6fe8: $81
	nop                                              ; $6fe9: $00
	ld   b, $ff                                      ; $6fea: $06 $ff
	ld   hl, sp-$01                                  ; $6fec: $f8 $ff
	rlca                                             ; $6fee: $07
	rst  $38                                         ; $6fef: $ff
	nop                                              ; $6ff0: $00
	rst  $38                                         ; $6ff1: $ff
	add  b                                           ; $6ff2: $80
	nop                                              ; $6ff3: $00
	ld   bc, $00ff                                   ; $6ff4: $01 $ff $00
	add  b                                           ; $6ff7: $80
	rst  $38                                         ; $6ff8: $ff
	add  c                                           ; $6ff9: $81
	nop                                              ; $6ffa: $00
	ld   b, $ff                                      ; $6ffb: $06 $ff
	nop                                              ; $6ffd: $00
	rst  $38                                         ; $6ffe: $ff
	ld   hl, sp-$01                                  ; $6fff: $f8 $ff
	rlca                                             ; $7001: $07
	rst  $38                                         ; $7002: $ff
	add  b                                           ; $7003: $80
	nop                                              ; $7004: $00
	ld   bc, $00ff                                   ; $7005: $01 $ff $00
	add  b                                           ; $7008: $80
	rst  $38                                         ; $7009: $ff
	add  b                                           ; $700a: $80
	nop                                              ; $700b: $00
	inc  b                                           ; $700c: $04
	ld   bc, $01ff                                   ; $700d: $01 $ff $01
	rst  $38                                         ; $7010: $ff
	nop                                              ; $7011: $00
	add  c                                           ; $7012: $81
	rst  $38                                         ; $7013: $ff
	ld   b, $00                                      ; $7014: $06 $00
	rra                                              ; $7016: $1f
	cp   $1f                                         ; $7017: $fe $1f
	adc  l                                           ; $7019: $8d
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $701a: $cf
	ld   c, h                                        ; $701b: $4c
	add  b                                           ; $701c: $80
	ld   c, a                                        ; $701d: $4f
	ld   bc, $000f                                   ; $701e: $01 $0f $00
	add  b                                           ; $7021: $80
	rrca                                             ; $7022: $0f
	add  c                                           ; $7023: $81
	ccf                                              ; $7024: $3f
	nop                                              ; $7025: $00
	cp   a                                           ; $7026: $bf
	add  l                                           ; $7027: $85
	rst  $38                                         ; $7028: $ff
	ld   [de], a                                     ; $7029: $12
	add  b                                           ; $702a: $80
	nop                                              ; $702b: $00
	sbc  h                                           ; $702c: $9c
	nop                                              ; $702d: $00
	ret  c                                           ; $702e: $d8

	nop                                              ; $702f: $00
	inc  e                                           ; $7030: $1c
	nop                                              ; $7031: $00
	ld   d, b                                        ; $7032: $50
	nop                                              ; $7033: $00
	or   $00                                         ; $7034: $f6 $00
	call nc, $1400                                   ; $7036: $d4 $00 $14
	nop                                              ; $7039: $00
	ld   a, $00                                      ; $703a: $3e $00
	jr   z, jr_013_6fbf                              ; $703c: $28 $81

	nop                                              ; $703e: $00
	ld   c, d                                        ; $703f: $4a
	ld   d, [hl]                                     ; $7040: $56
	nop                                              ; $7041: $00
	cp   [hl]                                        ; $7042: $be
	nop                                              ; $7043: $00
	sbc  h                                           ; $7044: $9c
	nop                                              ; $7045: $00
	inc  e                                           ; $7046: $1c
	nop                                              ; $7047: $00
	inc  e                                           ; $7048: $1c
	nop                                              ; $7049: $00
	ld   e, h                                        ; $704a: $5c
	nop                                              ; $704b: $00
	sub  h                                           ; $704c: $94
	nop                                              ; $704d: $00
	ret  nz                                          ; $704e: $c0

	nop                                              ; $704f: $00
	ld   a, [hl+]                                    ; $7050: $2a
	nop                                              ; $7051: $00
	ld   d, [hl]                                     ; $7052: $56
	nop                                              ; $7053: $00
	ret  nz                                          ; $7054: $c0

	nop                                              ; $7055: $00
	sub  $00                                         ; $7056: $d6 $00
	ld   d, $00                                      ; $7058: $16 $00
	jr   z, jr_013_705c                              ; $705a: $28 $00

jr_013_705c:
	ld   b, $00                                      ; $705c: $06 $00
	ld   a, $00                                      ; $705e: $3e $00

jr_013_7060:
	ld   [$8600], a                                  ; $7060: $ea $00 $86
	nop                                              ; $7063: $00
	xor  d                                           ; $7064: $aa
	nop                                              ; $7065: $00
	ld   a, h                                        ; $7066: $7c
	nop                                              ; $7067: $00
	ld   a, h                                        ; $7068: $7c
	nop                                              ; $7069: $00
	cp   $00                                         ; $706a: $fe $00
	add  b                                           ; $706c: $80
	nop                                              ; $706d: $00
	sbc  $00                                         ; $706e: $de $00
	inc  d                                           ; $7070: $14
	nop                                              ; $7071: $00
	ld   e, [hl]                                     ; $7072: $5e
	nop                                              ; $7073: $00
	ld   [$ca00], a                                  ; $7074: $ea $00 $ca
	nop                                              ; $7077: $00
	ld   a, [bc]                                     ; $7078: $0a
	nop                                              ; $7079: $00
	ld   a, $00                                      ; $707a: $3e $00
	ld   b, b                                        ; $707c: $40
	nop                                              ; $707d: $00
	ld   e, $00                                      ; $707e: $1e $00
	inc  c                                           ; $7080: $0c
	nop                                              ; $7081: $00
	and  b                                           ; $7082: $a0
	nop                                              ; $7083: $00
	and  b                                           ; $7084: $a0
	nop                                              ; $7085: $00
	inc  c                                           ; $7086: $0c
	nop                                              ; $7087: $00
	ld   h, $00                                      ; $7088: $26 $00
	rlca                                             ; $708a: $07
	add  c                                           ; $708b: $81
	rst  $38                                         ; $708c: $ff
	ld   b, $80                                      ; $708d: $06 $80
	rst  $38                                         ; $708f: $ff
	db   $fc                                         ; $7090: $fc
	rst  $38                                         ; $7091: $ff
	add  e                                           ; $7092: $83
	rst  $38                                         ; $7093: $ff
	add  b                                           ; $7094: $80
	add  c                                           ; $7095: $81
	rst  $38                                         ; $7096: $ff
	ld   [bc], a                                     ; $7097: $02
	add  b                                           ; $7098: $80
	rst  $38                                         ; $7099: $ff
	add  b                                           ; $709a: $80
	sbc  l                                           ; $709b: $9d
	nop                                              ; $709c: $00
	nop                                              ; $709d: $00
	push af                                          ; $709e: $f5
	add  c                                           ; $709f: $81
	ldh  a, [c]                                      ; $70a0: $f2
	ld   [bc], a                                     ; $70a1: $02
	ld   [bc], a                                     ; $70a2: $02
	ldh  a, [c]                                      ; $70a3: $f2
	ld   [bc], a                                     ; $70a4: $02
	add  c                                           ; $70a5: $81
	ldh  a, [c]                                      ; $70a6: $f2
	ld   [bc], a                                     ; $70a7: $02
	ld   [bc], a                                     ; $70a8: $02
	ldh  a, [c]                                      ; $70a9: $f2
	ld   [bc], a                                     ; $70aa: $02
	add  c                                           ; $70ab: $81
	ldh  a, [c]                                      ; $70ac: $f2
	ld   b, $07                                      ; $70ad: $06 $07
	nop                                              ; $70af: $00
	ld   a, [bc]                                     ; $70b0: $0a
	nop                                              ; $70b1: $00
	jr   nz, jr_013_70b4                             ; $70b2: $20 $00

jr_013_70b4:
	ld   a, [bc]                                     ; $70b4: $0a
	add  e                                           ; $70b5: $83
	nop                                              ; $70b6: $00
	ld   b, $10                                      ; $70b7: $06 $10
	nop                                              ; $70b9: $00
	inc  e                                           ; $70ba: $1c
	nop                                              ; $70bb: $00
	db   $d3                                         ; $70bc: $d3
	rst  $38                                         ; $70bd: $ff
	nop                                              ; $70be: $00
	add  b                                           ; $70bf: $80
	rst  $38                                         ; $70c0: $ff
	dec  bc                                          ; $70c1: $0b
	nop                                              ; $70c2: $00
	ld   a, c                                        ; $70c3: $79
	nop                                              ; $70c4: $00
	ld   sp, $0300                                   ; $70c5: $31 $00 $03
	nop                                              ; $70c8: $00
	jp   $8000                                       ; $70c9: $c3 $00 $80


	nop                                              ; $70cc: $00
	ld   [$0089], sp                                 ; $70cd: $08 $89 $00
	inc  b                                           ; $70d0: $04
	add  b                                           ; $70d1: $80
	nop                                              ; $70d2: $00
	cp   $00                                         ; $70d3: $fe $00
	ld   a, [hl]                                     ; $70d5: $7e
	add  e                                           ; $70d6: $83
	nop                                              ; $70d7: $00
	nop                                              ; $70d8: $00
	db   $10                                         ; $70d9: $10
	add  c                                           ; $70da: $81
	nop                                              ; $70db: $00
	nop                                              ; $70dc: $00
	jr   nc, jr_013_7060                             ; $70dd: $30 $81

	nop                                              ; $70df: $00
	ld   [bc], a                                     ; $70e0: $02
	ld   h, b                                        ; $70e1: $60
	nop                                              ; $70e2: $00
	or   e                                           ; $70e3: $b3
	add  e                                           ; $70e4: $83
	ld   c, a                                        ; $70e5: $4f
	nop                                              ; $70e6: $00
	ld   c, h                                        ; $70e7: $4c
	add  c                                           ; $70e8: $81
	ld   c, a                                        ; $70e9: $4f
	nop                                              ; $70ea: $00
	ld   c, h                                        ; $70eb: $4c
	add  c                                           ; $70ec: $81
	ld   c, a                                        ; $70ed: $4f
	inc  b                                           ; $70ee: $04
	ld   c, h                                        ; $70ef: $4c
	ld   c, a                                        ; $70f0: $4f
	or   b                                           ; $70f1: $b0
	ldh  a, [rP1]                                    ; $70f2: $f0 $00
	add  b                                           ; $70f4: $80
	ld   [hl], b                                     ; $70f5: $70
	add  c                                           ; $70f6: $81
	ld   a, h                                        ; $70f7: $7c
	nop                                              ; $70f8: $00
	ld   a, l                                        ; $70f9: $7d
	add  l                                           ; $70fa: $85
	ld   a, a                                        ; $70fb: $7f
	ld   a, [bc]                                     ; $70fc: $0a
	db   $eb                                         ; $70fd: $eb
	nop                                              ; $70fe: $00
	inc  d                                           ; $70ff: $14
	nop                                              ; $7100: $00
	inc  d                                           ; $7101: $14

jr_013_7102:
	nop                                              ; $7102: $00
	adc  d                                           ; $7103: $8a
	nop                                              ; $7104: $00
	ld   a, [hl]                                     ; $7105: $7e

jr_013_7106:
	nop                                              ; $7106: $00
	sbc  [hl]                                        ; $7107: $9e
	add  e                                           ; $7108: $83
	nop                                              ; $7109: $00
	inc  b                                           ; $710a: $04
	ld   b, b                                        ; $710b: $40
	nop                                              ; $710c: $00
	inc  e                                           ; $710d: $1c
	nop                                              ; $710e: $00
	ld   [$0081], sp                                 ; $710f: $08 $81 $00
	ld   [bc], a                                     ; $7112: $02
	ld   [$5c00], sp                                 ; $7113: $08 $00 $5c
	add  e                                           ; $7116: $83
	nop                                              ; $7117: $00
	nop                                              ; $7118: $00
	ld   d, h                                        ; $7119: $54
	add  c                                           ; $711a: $81
	nop                                              ; $711b: $00
	ld   b, $36                                      ; $711c: $06 $36
	nop                                              ; $711e: $00
	add  d                                           ; $711f: $82
	nop                                              ; $7120: $00
	ld   a, [hl]                                     ; $7121: $7e
	nop                                              ; $7122: $00
	sbc  [hl]                                        ; $7123: $9e
	add  e                                           ; $7124: $83
	nop                                              ; $7125: $00
	ld   a, [bc]                                     ; $7126: $0a
	inc  b                                           ; $7127: $04
	nop                                              ; $7128: $00
	inc  l                                           ; $7129: $2c
	nop                                              ; $712a: $00
	jr   c, jr_013_712d                              ; $712b: $38 $00

jr_013_712d:
	jr   z, jr_013_712f                              ; $712d: $28 $00

jr_013_712f:
	cp   $00                                         ; $712f: $fe $00
	add  $83                                         ; $7131: $c6 $83
	nop                                              ; $7133: $00
	ld   a, [bc]                                     ; $7134: $0a
	ld   d, h                                        ; $7135: $54
	nop                                              ; $7136: $00
	ld   a, [hl+]                                    ; $7137: $2a
	nop                                              ; $7138: $00
	ld   a, [hl+]                                    ; $7139: $2a
	nop                                              ; $713a: $00
	or   [hl]                                        ; $713b: $b6
	nop                                              ; $713c: $00
	ld   a, h                                        ; $713d: $7c
	nop                                              ; $713e: $00
	sbc  [hl]                                        ; $713f: $9e
	add  e                                           ; $7140: $83
	nop                                              ; $7141: $00
	ld   a, [bc]                                     ; $7142: $0a
	ret  c                                           ; $7143: $d8

	nop                                              ; $7144: $00
	add  b                                           ; $7145: $80
	nop                                              ; $7146: $00
	inc  c                                           ; $7147: $0c
	nop                                              ; $7148: $00
	jr   nc, jr_013_714b                             ; $7149: $30 $00

jr_013_714b:
	add  [hl]                                        ; $714b: $86
	nop                                              ; $714c: $00
	ldh  [c], a                                      ; $714d: $e2
	add  e                                           ; $714e: $83
	nop                                              ; $714f: $00
	ld   b, $7f                                      ; $7150: $06 $7f
	rst  $38                                         ; $7152: $ff
	add  b                                           ; $7153: $80
	rst  $38                                         ; $7154: $ff
	ldh  a, [rIE]                                    ; $7155: $f0 $ff
	adc  a                                           ; $7157: $8f
	add  c                                           ; $7158: $81
	rst  $38                                         ; $7159: $ff
	nop                                              ; $715a: $00
	add  b                                           ; $715b: $80
	add  c                                           ; $715c: $81
	rst  $38                                         ; $715d: $ff
	ld   [bc], a                                     ; $715e: $02
	add  b                                           ; $715f: $80
	rst  $38                                         ; $7160: $ff
	add  b                                           ; $7161: $80
	sbc  l                                           ; $7162: $9d
	nop                                              ; $7163: $00
	inc  b                                           ; $7164: $04
	push af                                          ; $7165: $f5
	ldh  a, [c]                                      ; $7166: $f2
	ld   [bc], a                                     ; $7167: $02
	ldh  a, [c]                                      ; $7168: $f2
	ld   [bc], a                                     ; $7169: $02
	add  c                                           ; $716a: $81
	ldh  a, [c]                                      ; $716b: $f2
	ld   a, [bc]                                     ; $716c: $0a
	ld   [bc], a                                     ; $716d: $02
	ldh  a, [c]                                      ; $716e: $f2
	ld   [bc], a                                     ; $716f: $02
	ldh  a, [c]                                      ; $7170: $f2
	ldh  [c], a                                      ; $7171: $e2
	ldh  a, [c]                                      ; $7172: $f2
	ld   [de], a                                     ; $7173: $12
	ldh  a, [c]                                      ; $7174: $f2
	push de                                          ; $7175: $d5
	nop                                              ; $7176: $00
	ld   [bc], a                                     ; $7177: $02
	add  e                                           ; $7178: $83
	nop                                              ; $7179: $00
	nop                                              ; $717a: $00
	jr   nz, jr_013_7102                             ; $717b: $20 $85

	nop                                              ; $717d: $00
	nop                                              ; $717e: $00
	ld   [$0081], sp                                 ; $717f: $08 $81 $00
	nop                                              ; $7182: $00
	jr   jr_013_7106                                 ; $7183: $18 $81

	nop                                              ; $7185: $00
	inc  bc                                          ; $7186: $03
	jr   nc, jr_013_7189                             ; $7187: $30 $00

jr_013_7189:
	jr   nz, jr_013_718b                             ; $7189: $20 $00

jr_013_718b:
	add  c                                           ; $718b: $81
	rst  $38                                         ; $718c: $ff
	ld   bc, $ff00                                   ; $718d: $01 $00 $ff
	adc  l                                           ; $7190: $8d
	nop                                              ; $7191: $00
	ld   [$0044], sp                                 ; $7192: $08 $44 $00
	add  $00                                         ; $7195: $c6 $00
	ld   a, h                                        ; $7197: $7c
	nop                                              ; $7198: $00
	ld   a, h                                        ; $7199: $7c
	nop                                              ; $719a: $00
	add  d                                           ; $719b: $82
	add  l                                           ; $719c: $85
	nop                                              ; $719d: $00
	inc  b                                           ; $719e: $04
	di                                               ; $719f: $f3
	ld   c, a                                        ; $71a0: $4f
	ld   c, h                                        ; $71a1: $4c
	ld   c, a                                        ; $71a2: $4f
	ld   c, h                                        ; $71a3: $4c
	add  c                                           ; $71a4: $81
	ld   c, a                                        ; $71a5: $4f
	nop                                              ; $71a6: $00
	ld   c, h                                        ; $71a7: $4c
	add  c                                           ; $71a8: $81
	ld   c, a                                        ; $71a9: $4f
	nop                                              ; $71aa: $00
	ld   c, h                                        ; $71ab: $4c
	add  c                                           ; $71ac: $81
	ld   c, a                                        ; $71ad: $4f
	ld   bc, $0043                                   ; $71ae: $01 $43 $00
	add  b                                           ; $71b1: $80
	rst  $38                                         ; $71b2: $ff
	ld   bc, $ff00                                   ; $71b3: $01 $00 $ff
	add  b                                           ; $71b6: $80
	ldh  [rDIV], a                                   ; $71b7: $e0 $04
	nop                                              ; $71b9: $00
	rst  $28                                         ; $71ba: $ef
	adc  a                                           ; $71bb: $8f
	rst  $28                                         ; $71bc: $ef
	ld   l, a                                        ; $71bd: $6f
	add  c                                           ; $71be: $81
	rst  $28                                         ; $71bf: $ef
	dec  b                                           ; $71c0: $05
	ldh  a, [rP1]                                    ; $71c1: $f0 $00
	adc  a                                           ; $71c3: $8f
	rst  $38                                         ; $71c4: $ff
	ld   [hl], b                                     ; $71c5: $70
	rst  $38                                         ; $71c6: $ff
	add  b                                           ; $71c7: $80
	nop                                              ; $71c8: $00
	add  hl, bc                                      ; $71c9: $09
	ld   bc, $fafe                                   ; $71ca: $01 $fe $fa
	ldh  a, [c]                                      ; $71cd: $f2
	ld   a, [$faca]                                  ; $71ce: $fa $ca $fa
	ld   a, [hl-]                                    ; $71d1: $3a
	ld   hl, sp+$00                                  ; $71d2: $f8 $00
	add  b                                           ; $71d4: $80
	rst  $38                                         ; $71d5: $ff
	nop                                              ; $71d6: $00
	nop                                              ; $71d7: $00
	add  c                                           ; $71d8: $81
	rst  $38                                         ; $71d9: $ff
	rlca                                             ; $71da: $07
	nop                                              ; $71db: $00
	rst  $38                                         ; $71dc: $ff
	nop                                              ; $71dd: $00
	rst  $38                                         ; $71de: $ff
	ldh  [rIE], a                                    ; $71df: $e0 $ff
	rra                                              ; $71e1: $1f
	rst  $38                                         ; $71e2: $ff
	add  b                                           ; $71e3: $80
	nop                                              ; $71e4: $00
	add  b                                           ; $71e5: $80
	rst  $38                                         ; $71e6: $ff
	ld   [$ff00], sp                                 ; $71e7: $08 $00 $ff
	ldh  [rIE], a                                    ; $71ea: $e0 $ff
	rra                                              ; $71ec: $1f
	rst  $38                                         ; $71ed: $ff
	nop                                              ; $71ee: $00
	rst  $38                                         ; $71ef: $ff
	nop                                              ; $71f0: $00
	add  c                                           ; $71f1: $81
	rst  $38                                         ; $71f2: $ff
	add  b                                           ; $71f3: $80
	nop                                              ; $71f4: $00
	ld   c, $c0                                      ; $71f5: $0e $c0
	rst  $38                                         ; $71f7: $ff
	jr   nz, @+$01                                   ; $71f8: $20 $ff

	rra                                              ; $71fa: $1f
	rst  $38                                         ; $71fb: $ff
	ld   hl, sp-$01                                  ; $71fc: $f8 $ff
	nop                                              ; $71fe: $00
	rst  $38                                         ; $71ff: $ff
	rlca                                             ; $7200: $07
	rst  $38                                         ; $7201: $ff
	cp   $ff                                         ; $7202: $fe $ff
	ld   bc, $0080                                   ; $7204: $01 $80 $00
	ld   bc, $00ff                                   ; $7207: $01 $ff $00
	add  b                                           ; $720a: $80
	rst  $38                                         ; $720b: $ff
	add  b                                           ; $720c: $80
	nop                                              ; $720d: $00
	add  b                                           ; $720e: $80
	ld   a, a                                        ; $720f: $7f
	dec  b                                           ; $7210: $05
	ld   c, a                                        ; $7211: $4f
	ld   e, a                                        ; $7212: $5f
	ld   d, e                                        ; $7213: $53
	ld   e, a                                        ; $7214: $5f
	ld   e, h                                        ; $7215: $5c
	cp   a                                           ; $7216: $bf
	add  b                                           ; $7217: $80
	nop                                              ; $7218: $00
	inc  bc                                          ; $7219: $03
	rst  $38                                         ; $721a: $ff
	nop                                              ; $721b: $00
	rst  $38                                         ; $721c: $ff
	ldh  a, [$80]                                    ; $721d: $f0 $80
	rlca                                             ; $721f: $07
	inc  bc                                          ; $7220: $03
	rst  $30                                         ; $7221: $f7
	ldh  a, [$f7]                                    ; $7222: $f0 $f7
	ldh  a, [$81]                                    ; $7224: $f0 $81
	rst  $30                                         ; $7226: $f7
	inc  c                                           ; $7227: $0c
	add  a                                           ; $7228: $87
	rst  $38                                         ; $7229: $ff
	nop                                              ; $722a: $00
	rst  $38                                         ; $722b: $ff
	ld   a, h                                        ; $722c: $7c
	rst  $38                                         ; $722d: $ff
	inc  bc                                          ; $722e: $03
	rst  $38                                         ; $722f: $ff
	nop                                              ; $7230: $00
	rst  $38                                         ; $7231: $ff
	db   $fd                                         ; $7232: $fd
	pop  bc                                          ; $7233: $c1
	ld   [hl], d                                     ; $7234: $72
	add  c                                           ; $7235: $81
	or   b                                           ; $7236: $b0
	nop                                              ; $7237: $00
	ld   bc, $009d                                   ; $7238: $01 $9d $00
	nop                                              ; $723b: $00
	push af                                          ; $723c: $f5
	add  e                                           ; $723d: $83
	ldh  a, [c]                                      ; $723e: $f2
	ld   [bc], a                                     ; $723f: $02
	ld   [bc], a                                     ; $7240: $02
	ldh  a, [c]                                      ; $7241: $f2
	ld   [bc], a                                     ; $7242: $02
	add  e                                           ; $7243: $83
	ldh  a, [c]                                      ; $7244: $f2
	ld   c, $02                                      ; $7245: $0e $02
	ldh  a, [c]                                      ; $7247: $f2
	ld   [$00c0], sp                                 ; $7248: $08 $c0 $00
	ret  nz                                          ; $724b: $c0

	ld   hl, sp+$00                                  ; $724c: $f8 $00
	ret  nz                                          ; $724e: $c0

	nop                                              ; $724f: $00
	jp   nz, $e606                                   ; $7250: $c2 $06 $e6

	ld   b, $c6                                      ; $7253: $06 $c6
	add  c                                           ; $7255: $81
	ld   b, $02                                      ; $7256: $06 $02
	inc  hl                                          ; $7258: $23
	rst  $38                                         ; $7259: $ff
	nop                                              ; $725a: $00
	add  c                                           ; $725b: $81
	rst  $38                                         ; $725c: $ff
	ld   [bc], a                                     ; $725d: $02
	nop                                              ; $725e: $00
	rst  $38                                         ; $725f: $ff
	inc  b                                           ; $7260: $04
	add  b                                           ; $7261: $80
	rst  $38                                         ; $7262: $ff
	add  b                                           ; $7263: $80
	cp   $80                                         ; $7264: $fe $80
	cp   [hl]                                        ; $7266: $be
	inc  bc                                          ; $7267: $03
	ld   a, $c5                                      ; $7268: $3e $c5
	rst  $38                                         ; $726a: $ff
	nop                                              ; $726b: $00
	add  c                                           ; $726c: $81
	rst  $38                                         ; $726d: $ff
	ld   [bc], a                                     ; $726e: $02
	nop                                              ; $726f: $00
	rst  $38                                         ; $7270: $ff
	nop                                              ; $7271: $00
	add  b                                           ; $7272: $80
	rst  $38                                         ; $7273: $ff
	ld   bc, $ff00                                   ; $7274: $01 $00 $ff
	add  b                                           ; $7277: $80
	ld   a, a                                        ; $7278: $7f
	add  b                                           ; $7279: $80
	ld   d, l                                        ; $727a: $55
	add  c                                           ; $727b: $81
	nop                                              ; $727c: $00
	nop                                              ; $727d: $00
	jr   nz, @-$79                                   ; $727e: $20 $85

	nop                                              ; $7280: $00
	ld   [$0010], sp                                 ; $7281: $08 $10 $00
	inc  e                                           ; $7284: $1c
	nop                                              ; $7285: $00
	sbc  $4f                                         ; $7286: $de $4f
	ld   c, l                                        ; $7288: $4d
	ld   c, a                                        ; $7289: $4f
	ld   c, h                                        ; $728a: $4c
	add  c                                           ; $728b: $81
	ld   c, a                                        ; $728c: $4f
	jr   @+$4e                                       ; $728d: $18 $4c

	ld   c, a                                        ; $728f: $4f
	ld   c, [hl]                                     ; $7290: $4e
	ld   c, a                                        ; $7291: $4f
	ld   c, l                                        ; $7292: $4d
	ld   c, a                                        ; $7293: $4f
	ld   c, h                                        ; $7294: $4c
	ld   c, a                                        ; $7295: $4f
	cp   a                                           ; $7296: $bf
	db   $ec                                         ; $7297: $ec
	rst  $28                                         ; $7298: $ef
	db   $ec                                         ; $7299: $ec
	rrca                                             ; $729a: $0f
	rst  $28                                         ; $729b: $ef
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $729c: $cf
	rst  $28                                         ; $729d: $ef
	cpl                                              ; $729e: $2f
	rst  $28                                         ; $729f: $ef
	rrca                                             ; $72a0: $0f
	rst  $28                                         ; $72a1: $ef
	ret  nz                                          ; $72a2: $c0

	ldh  [$2f], a                                    ; $72a3: $e0 $2f
	rst  $38                                         ; $72a5: $ff
	ld   [bc], a                                     ; $72a6: $02
	add  d                                           ; $72a7: $82
	ld   a, [$3a04]                                  ; $72a8: $fa $04 $3a
	ld   a, [$faca]                                  ; $72ab: $fa $ca $fa
	ldh  a, [c]                                      ; $72ae: $f2
	add  b                                           ; $72af: $80
	cp   $80                                         ; $72b0: $fe $80
	nop                                              ; $72b2: $00
	add  b                                           ; $72b3: $80
	rst  $38                                         ; $72b4: $ff
	nop                                              ; $72b5: $00
	nop                                              ; $72b6: $00
	add  e                                           ; $72b7: $83
	rst  $38                                         ; $72b8: $ff
	inc  bc                                          ; $72b9: $03
	nop                                              ; $72ba: $00
	rst  $38                                         ; $72bb: $ff
	nop                                              ; $72bc: $00
	rst  $38                                         ; $72bd: $ff
	add  b                                           ; $72be: $80
	cp   $80                                         ; $72bf: $fe $80
	ldh  a, [rSC]                                    ; $72c1: $f0 $02
	nop                                              ; $72c3: $00
	ret  nz                                          ; $72c4: $c0

	ccf                                              ; $72c5: $3f
	add  c                                           ; $72c6: $81
	rst  $38                                         ; $72c7: $ff
	dec  b                                           ; $72c8: $05
	ldh  a, [rIE]                                    ; $72c9: $f0 $ff
	rrca                                             ; $72cb: $0f
	rst  $38                                         ; $72cc: $ff
	nop                                              ; $72cd: $00
	rst  $38                                         ; $72ce: $ff
	add  d                                           ; $72cf: $82
	nop                                              ; $72d0: $00
	ld   [bc], a                                     ; $72d1: $02
	ld   [$f700], sp                                 ; $72d2: $08 $00 $f7
	add  c                                           ; $72d5: $81
	rst  $38                                         ; $72d6: $ff
	dec  b                                           ; $72d7: $05
	nop                                              ; $72d8: $00
	rst  $38                                         ; $72d9: $ff
	ld   hl, sp-$01                                  ; $72da: $f8 $ff
	rlca                                             ; $72dc: $07
	rst  $38                                         ; $72dd: $ff
	add  b                                           ; $72de: $80
	ld   a, a                                        ; $72df: $7f
	inc  b                                           ; $72e0: $04
	nop                                              ; $72e1: $00
	rrca                                             ; $72e2: $0f
	inc  c                                           ; $72e3: $0c
	inc  bc                                          ; $72e4: $03
	rra                                              ; $72e5: $1f
	add  d                                           ; $72e6: $82
	ld   e, a                                        ; $72e7: $5f
	inc  b                                           ; $72e8: $04
	ld   e, h                                        ; $72e9: $5c
	ld   e, a                                        ; $72ea: $5f
	ld   d, e                                        ; $72eb: $53
	ld   [hl], a                                     ; $72ec: $77
	ld   b, a                                        ; $72ed: $47
	add  b                                           ; $72ee: $80
	ld   a, a                                        ; $72ef: $7f
	nop                                              ; $72f0: $00
	add  b                                           ; $72f1: $80
	add  b                                           ; $72f2: $80
	nop                                              ; $72f3: $00
	dec  b                                           ; $72f4: $05
	rst  $38                                         ; $72f5: $ff
	rrca                                             ; $72f6: $0f
	scf                                              ; $72f7: $37
	ldh  a, [$37]                                    ; $72f8: $f0 $37
	ldh  a, [$81]                                    ; $72fa: $f0 $81
	rst  $30                                         ; $72fc: $f7
	nop                                              ; $72fd: $00
	ldh  a, [$81]                                    ; $72fe: $f0 $81
	rst  $30                                         ; $7300: $f7
	nop                                              ; $7301: $00
	nop                                              ; $7302: $00
	add  b                                           ; $7303: $80
	rlca                                             ; $7304: $07
	ld   de, $81ff                                   ; $7305: $11 $ff $81
	add  b                                           ; $7308: $80
	nop                                              ; $7309: $00
	add  b                                           ; $730a: $80
	ld   b, d                                        ; $730b: $42
	add  b                                           ; $730c: $80
	db   $fd                                         ; $730d: $fd
	pop  bc                                          ; $730e: $c1
	ld   h, e                                        ; $730f: $63
	db   $e3                                         ; $7310: $e3
	cp   $ff                                         ; $7311: $fe $ff
	ld   bc, $f0ff                                   ; $7313: $01 $ff $f0
	rst  $38                                         ; $7316: $ff
	rrca                                             ; $7317: $0f
	sbc  l                                           ; $7318: $9d
	nop                                              ; $7319: $00
	nop                                              ; $731a: $00
	push af                                          ; $731b: $f5
	add  c                                           ; $731c: $81
	ldh  a, [c]                                      ; $731d: $f2
	ld   [bc], a                                     ; $731e: $02
	ld   [bc], a                                     ; $731f: $02
	ldh  a, [c]                                      ; $7320: $f2
	ld   [bc], a                                     ; $7321: $02
	add  c                                           ; $7322: $81
	ldh  a, [c]                                      ; $7323: $f2
	ld   [bc], a                                     ; $7324: $02
	ld   [bc], a                                     ; $7325: $02
	ldh  a, [c]                                      ; $7326: $f2
	ld   [bc], a                                     ; $7327: $02
	add  c                                           ; $7328: $81
	ldh  a, [c]                                      ; $7329: $f2
	nop                                              ; $732a: $00
	ld   [hl+], a                                    ; $732b: $22
	add  c                                           ; $732c: $81
	ld   b, $00                                      ; $732d: $06 $00
	ld   h, [hl]                                     ; $732f: $66
	add  c                                           ; $7330: $81
	ld   b, $03                                      ; $7331: $06 $03
	add  $06                                         ; $7333: $c6 $06
	add  [hl]                                        ; $7335: $86
	ld   b, $80                                      ; $7336: $06 $80
	cp   $01                                         ; $7338: $fe $01
	db   $fc                                         ; $733a: $fc
	nop                                              ; $733b: $00
	add  b                                           ; $733c: $80
	ld   a, [$1a80]                                  ; $733d: $fa $80 $1a
	add  b                                           ; $7340: $80
	db   $db                                         ; $7341: $db
	add  b                                           ; $7342: $80
	ret  c                                           ; $7343: $d8

	add  b                                           ; $7344: $80
	db   $db                                         ; $7345: $db
	add  b                                           ; $7346: $80
	jp   c, Jump_013_5a80                            ; $7347: $da $80 $5a

	ld   bc, $1a9a                                   ; $734a: $01 $9a $1a
	add  c                                           ; $734d: $81
	ld   a, a                                        ; $734e: $7f
	dec  b                                           ; $734f: $05
	rst  $38                                         ; $7350: $ff
	nop                                              ; $7351: $00
	rst  $38                                         ; $7352: $ff
	nop                                              ; $7353: $00
	rst  $38                                         ; $7354: $ff
	nop                                              ; $7355: $00
	add  b                                           ; $7356: $80
	rst  $38                                         ; $7357: $ff
	ld   bc, $ff00                                   ; $7358: $01 $00 $ff
	add  b                                           ; $735b: $80
	rst  $30                                         ; $735c: $f7
	add  hl, bc                                      ; $735d: $09
	ld   d, l                                        ; $735e: $55
	ld   e, a                                        ; $735f: $5f
	nop                                              ; $7360: $00
	stop                                             ; $7361: $10 $00
	ld   a, [bc]                                     ; $7363: $0a
	nop                                              ; $7364: $00
	xor  $00                                         ; $7365: $ee $00
	xor  $81                                         ; $7367: $ee $81
	nop                                              ; $7369: $00
	inc  b                                           ; $736a: $04
	ld   b, h                                        ; $736b: $44
	nop                                              ; $736c: $00
	ld   b, $00                                      ; $736d: $06 $00
	and  c                                           ; $736f: $a1
	add  e                                           ; $7370: $83
	ld   c, a                                        ; $7371: $4f
	nop                                              ; $7372: $00
	ld   c, h                                        ; $7373: $4c
	add  c                                           ; $7374: $81
	ld   c, a                                        ; $7375: $4f
	nop                                              ; $7376: $00
	ld   c, h                                        ; $7377: $4c
	add  c                                           ; $7378: $81
	ld   c, a                                        ; $7379: $4f
	ld   [bc], a                                     ; $737a: $02
	ld   c, h                                        ; $737b: $4c
	ld   c, a                                        ; $737c: $4f
	ld   b, b                                        ; $737d: $40
	add  c                                           ; $737e: $81
	rst  $38                                         ; $737f: $ff
	inc  b                                           ; $7380: $04
	db   $fc                                         ; $7381: $fc
	rst  $38                                         ; $7382: $ff
	inc  bc                                          ; $7383: $03
	rst  $38                                         ; $7384: $ff
	nop                                              ; $7385: $00
	add  c                                           ; $7386: $81
	rst  $38                                         ; $7387: $ff
	dec  b                                           ; $7388: $05
	ldh  a, [rIE]                                    ; $7389: $f0 $ff
	jr   nc, @+$01                                   ; $738b: $30 $ff

	ccf                                              ; $738d: $3f
	rst  $38                                         ; $738e: $ff
	add  b                                           ; $738f: $80
	cp   $00                                         ; $7390: $fe $00
	nop                                              ; $7392: $00
	add  b                                           ; $7393: $80
	db   $fc                                         ; $7394: $fc
	ld   [$09f8], sp                                 ; $7395: $08 $f8 $09
	ldh  a, [$e3]                                    ; $7398: $f0 $e3
	ldh  [$03], a                                    ; $739a: $e0 $03
	pop  bc                                          ; $739c: $c1
	nop                                              ; $739d: $00
	ret  nz                                          ; $739e: $c0

	add  [hl]                                        ; $739f: $86
	nop                                              ; $73a0: $00
	add  b                                           ; $73a1: $80
	ld   bc, $8a06                                   ; $73a2: $01 $06 $8a
	ld   a, [bc]                                     ; $73a5: $0a
	call nc, $e914                                   ; $73a6: $d4 $14 $e9
	adc  d                                           ; $73a9: $8a
	scf                                              ; $73aa: $37
	add  l                                           ; $73ab: $85
	inc  b                                           ; $73ac: $04
	add  b                                           ; $73ad: $80
	ld   b, h                                        ; $73ae: $44
	rlca                                             ; $73af: $07
	stop                                             ; $73b0: $10 $00
	ret  nz                                          ; $73b2: $c0

	cp   a                                           ; $73b3: $bf
	ld   bc, $81ff                                   ; $73b4: $01 $ff $81
	nop                                              ; $73b7: $00
	add  b                                           ; $73b8: $80
	dec  b                                           ; $73b9: $05
	add  b                                           ; $73ba: $80
	ld   [de], a                                     ; $73bb: $12
	add  b                                           ; $73bc: $80
	dec  b                                           ; $73bd: $05
	add  b                                           ; $73be: $80
	ld   a, [hl+]                                    ; $73bf: $2a
	add  b                                           ; $73c0: $80
	dec  d                                           ; $73c1: $15
	ld   h, $8b                                      ; $73c2: $26 $8b
	adc  d                                           ; $73c4: $8a
	ld   b, $e5                                      ; $73c5: $06 $e5
	dec  e                                           ; $73c7: $1d
	rst  $38                                         ; $73c8: $ff
	nop                                              ; $73c9: $00
	ld   a, a                                        ; $73ca: $7f
	ldh  [$bf], a                                    ; $73cb: $e0 $bf
	ld   l, a                                        ; $73cd: $6f
	ld   e, a                                        ; $73ce: $5f
	ldh  a, [$af]                                    ; $73cf: $f0 $af
	sub  h                                           ; $73d1: $94
	ld   a, a                                        ; $73d2: $7f
	dec  [hl]                                        ; $73d3: $35
	cp   a                                           ; $73d4: $bf
	ld   b, $7f                                      ; $73d5: $06 $7f
	rst  $10                                         ; $73d7: $d7
	rst  $38                                         ; $73d8: $ff
	ld   [hl], b                                     ; $73d9: $70
	rst  $38                                         ; $73da: $ff
	rrca                                             ; $73db: $0f
	rst  $38                                         ; $73dc: $ff
	db   $fc                                         ; $73dd: $fc
	rst  $38                                         ; $73de: $ff
	inc  bc                                          ; $73df: $03
	rst  $38                                         ; $73e0: $ff
	ld   a, b                                        ; $73e1: $78
	rst  $38                                         ; $73e2: $ff
	add  a                                           ; $73e3: $87
	rst  $38                                         ; $73e4: $ff
	nop                                              ; $73e5: $00
	rst  $38                                         ; $73e6: $ff
	db   $fc                                         ; $73e7: $fc
	rst  $38                                         ; $73e8: $ff
	inc  bc                                          ; $73e9: $03
	add  c                                           ; $73ea: $81
	rst  $38                                         ; $73eb: $ff
	nop                                              ; $73ec: $00
	nop                                              ; $73ed: $00
	add  c                                           ; $73ee: $81
	rst  $38                                         ; $73ef: $ff
	inc  c                                           ; $73f0: $0c
	inc  a                                           ; $73f1: $3c
	pop  bc                                          ; $73f2: $c1
	or   e                                           ; $73f3: $b3
	or   b                                           ; $73f4: $b0
	jr   nc, @-$4e                                   ; $73f5: $30 $b0

	ld   a, [hl]                                     ; $73f7: $7e
	rst  $38                                         ; $73f8: $ff

jr_013_73f9:
	add  b                                           ; $73f9: $80
	rst  $38                                         ; $73fa: $ff
	rst  JumpTable                                         ; $73fb: $df
	ret  nz                                          ; $73fc: $c0

	pop  bc                                          ; $73fd: $c1
	add  e                                           ; $73fe: $83
	ret  nz                                          ; $73ff: $c0

	ld   [$c0c3], sp                                 ; $7400: $08 $c3 $c0
	jp   nz, $9fc0                                   ; $7403: $c2 $c0 $9f

	rst  $38                                         ; $7406: $ff
	nop                                              ; $7407: $00
	rst  $38                                         ; $7408: $ff
	db   $eb                                         ; $7409: $eb
	add  c                                           ; $740a: $81
	nop                                              ; $740b: $00
	inc  b                                           ; $740c: $04
	inc  d                                           ; $740d: $14
	nop                                              ; $740e: $00
	ldh  a, [rP1]                                    ; $740f: $f0 $00
	or   b                                           ; $7411: $b0
	add  c                                           ; $7412: $81
	nop                                              ; $7413: $00
	dec  b                                           ; $7414: $05
	or   l                                           ; $7415: $b5
	ldh  a, [c]                                      ; $7416: $f2
	nop                                              ; $7417: $00
	di                                               ; $7418: $f3
	inc  bc                                          ; $7419: $03
	ldh  a, [$80]                                    ; $741a: $f0 $80
	ld   hl, sp+$07                                  ; $741c: $f8 $07
	rlca                                             ; $741e: $07
	rst  $38                                         ; $741f: $ff
	inc  bc                                          ; $7420: $03
	rst  $38                                         ; $7421: $ff
	db   $e3                                         ; $7422: $e3
	rst  $38                                         ; $7423: $ff
	rra                                              ; $7424: $1f
	rst  $38                                         ; $7425: $ff
	add  c                                           ; $7426: $81
	nop                                              ; $7427: $00
	add  b                                           ; $7428: $80
	rst  $38                                         ; $7429: $ff
	add  c                                           ; $742a: $81
	nop                                              ; $742b: $00
	add  [hl]                                        ; $742c: $86
	rst  $38                                         ; $742d: $ff
	add  c                                           ; $742e: $81
	nop                                              ; $742f: $00
	add  b                                           ; $7430: $80
	rst  $38                                         ; $7431: $ff
	add  c                                           ; $7432: $81
	nop                                              ; $7433: $00
	add  h                                           ; $7434: $84
	rst  $38                                         ; $7435: $ff
	ld   [bc], a                                     ; $7436: $02
	cp   $ff                                         ; $7437: $fe $ff
	ld   bc, $0080                                   ; $7439: $01 $80 $00
	add  b                                           ; $743c: $80
	rst  $38                                         ; $743d: $ff
	add  c                                           ; $743e: $81
	nop                                              ; $743f: $00
	add  h                                           ; $7440: $84
	rst  $38                                         ; $7441: $ff
	nop                                              ; $7442: $00
	nop                                              ; $7443: $00
	add  b                                           ; $7444: $80
	rst  $38                                         ; $7445: $ff
	add  b                                           ; $7446: $80
	nop                                              ; $7447: $00
	add  b                                           ; $7448: $80
	rst  $38                                         ; $7449: $ff
	add  c                                           ; $744a: $81
	nop                                              ; $744b: $00
	add  d                                           ; $744c: $82
	rst  $38                                         ; $744d: $ff
	add  hl, bc                                      ; $744e: $09
	ldh  a, [rIE]                                    ; $744f: $f0 $ff
	rrca                                             ; $7451: $0f
	rst  $38                                         ; $7452: $ff
	di                                               ; $7453: $f3
	ld   c, a                                        ; $7454: $4f
	ld   c, h                                        ; $7455: $4c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7456: $cf
	call z, $800f                                    ; $7457: $cc $0f $80
	rra                                              ; $745a: $1f
	nop                                              ; $745b: $00
	db   $fc                                         ; $745c: $fc
	add  c                                           ; $745d: $81
	rst  $38                                         ; $745e: $ff
	nop                                              ; $745f: $00
	nop                                              ; $7460: $00
	add  e                                           ; $7461: $83
	rst  $38                                         ; $7462: $ff
	ld   [bc], a                                     ; $7463: $02
	nop                                              ; $7464: $00
	rst  $38                                         ; $7465: $ff
	nop                                              ; $7466: $00
	add  c                                           ; $7467: $81
	rst  $38                                         ; $7468: $ff
	dec  c                                           ; $7469: $0d
	nop                                              ; $746a: $00
	rst  $38                                         ; $746b: $ff
	add  c                                           ; $746c: $81
	cp   $7e                                         ; $746d: $fe $7e
	cp   $fc                                         ; $746f: $fe $fc
	cp   $92                                         ; $7471: $fe $92
	sub  b                                           ; $7473: $90
	nop                                              ; $7474: $00
	add  b                                           ; $7475: $80
	xor  b                                           ; $7476: $a8
	jr   z, jr_013_73f9                              ; $7477: $28 $80

	ld   d, l                                        ; $7479: $55
	add  b                                           ; $747a: $80
	ld   a, [hl+]                                    ; $747b: $2a
	add  b                                           ; $747c: $80
	ld   d, l                                        ; $747d: $55
	add  b                                           ; $747e: $80
	xor  d                                           ; $747f: $aa
	add  b                                           ; $7480: $80
	ld   d, a                                        ; $7481: $57
	add  hl, bc                                      ; $7482: $09
	ld   b, a                                        ; $7483: $47
	ld   b, c                                        ; $7484: $41
	dec  c                                           ; $7485: $0d
	rlca                                             ; $7486: $07
	dec  bc                                          ; $7487: $0b
	rra                                              ; $7488: $1f
	ld   d, $3e                                      ; $7489: $16 $3e
	dec  l                                           ; $748b: $2d
	dec  a                                           ; $748c: $3d
	add  b                                           ; $748d: $80
	ld   a, [hl]                                     ; $748e: $7e
	ld   bc, $7d1d                                   ; $748f: $01 $1d $7d
	add  b                                           ; $7492: $80
	ld   a, [hl]                                     ; $7493: $7e
	dec  b                                           ; $7494: $05
	cp   a                                           ; $7495: $bf
	rst  $38                                         ; $7496: $ff
	xor  [hl]                                        ; $7497: $ae
	xor  a                                           ; $7498: $af
	ld   d, [hl]                                     ; $7499: $56
	ld   d, a                                        ; $749a: $57
	add  b                                           ; $749b: $80
	xor  e                                           ; $749c: $ab
	add  b                                           ; $749d: $80
	dec  b                                           ; $749e: $05
	add  b                                           ; $749f: $80
	adc  e                                           ; $74a0: $8b
	add  b                                           ; $74a1: $80
	dec  b                                           ; $74a2: $05
	add  b                                           ; $74a3: $80
	xor  e                                           ; $74a4: $ab
	jr   nz, jr_013_74ed                             ; $74a5: $20 $46

	or   $13                                         ; $74a7: $f6 $13
	ei                                               ; $74a9: $fb
	add  hl, de                                      ; $74aa: $19
	db   $fd                                         ; $74ab: $fd
	inc  e                                           ; $74ac: $1c
	cp   $0e                                         ; $74ad: $fe $0e
	cp   $0e                                         ; $74af: $fe $0e
	rst  $38                                         ; $74b1: $ff
	rrca                                             ; $74b2: $0f
	rst  $38                                         ; $74b3: $ff
	ld   c, $fe                                      ; $74b4: $0e $fe
	adc  a                                           ; $74b6: $8f
	rst  $38                                         ; $74b7: $ff
	rst  ToBoot                                         ; $74b8: $c7
	rst  $38                                         ; $74b9: $ff
	jp   $c3ff                                       ; $74ba: $c3 $ff $c3


	rst  $38                                         ; $74bd: $ff
	db   $e3                                         ; $74be: $e3
	rst  $38                                         ; $74bf: $ff
	ld   h, c                                        ; $74c0: $61
	ld   a, a                                        ; $74c1: $7f
	ld   h, c                                        ; $74c2: $61
	ld   a, a                                        ; $74c3: $7f
	ld   h, e                                        ; $74c4: $63
	ld   a, a                                        ; $74c5: $7f
	add  sp, -$7f                                    ; $74c6: $e8 $81
	rst  $38                                         ; $74c8: $ff
	ld   [bc], a                                     ; $74c9: $02
	nop                                              ; $74ca: $00
	rst  $38                                         ; $74cb: $ff
	add  b                                           ; $74cc: $80
	add  c                                           ; $74cd: $81
	rst  $38                                         ; $74ce: $ff
	ld   b, $00                                      ; $74cf: $06 $00
	ld   a, a                                        ; $74d1: $7f
	ld   [hl], b                                     ; $74d2: $70
	ld   a, a                                        ; $74d3: $7f
	ld   c, a                                        ; $74d4: $4f
	ld   a, a                                        ; $74d5: $7f
	ld   b, c                                        ; $74d6: $41
	add  c                                           ; $74d7: $81
	add  b                                           ; $74d8: $80
	dec  b                                           ; $74d9: $05
	ld   b, d                                        ; $74da: $42
	add  b                                           ; $74db: $80
	ld   a, l                                        ; $74dc: $7d
	pop  bc                                          ; $74dd: $c1
	ld   h, e                                        ; $74de: $63
	db   $e3                                         ; $74df: $e3
	add  b                                           ; $74e0: $80
	rst  $38                                         ; $74e1: $ff
	nop                                              ; $74e2: $00
	nop                                              ; $74e3: $00
	add  c                                           ; $74e4: $81
	rst  $38                                         ; $74e5: $ff
	nop                                              ; $74e6: $00
	and  b                                           ; $74e7: $a0
	add  l                                           ; $74e8: $85
	ret  nz                                          ; $74e9: $c0

	inc  bc                                          ; $74ea: $03
	pop  bc                                          ; $74eb: $c1
	ret  nz                                          ; $74ec: $c0

jr_013_74ed:
	pop  bc                                          ; $74ed: $c1
	ret  nz                                          ; $74ee: $c0

	add  b                                           ; $74ef: $80
	rst  $38                                         ; $74f0: $ff
	inc  b                                           ; $74f1: $04
	rst  JumpTable                                         ; $74f2: $df
	ret  nz                                          ; $74f3: $c0

	jr   c, jr_013_74f6                              ; $74f4: $38 $00

jr_013_74f6:
	rlca                                             ; $74f6: $07
	add  c                                           ; $74f7: $81
	nop                                              ; $74f8: $00
	ld   [bc], a                                     ; $74f9: $02
	ret  nz                                          ; $74fa: $c0

	nop                                              ; $74fb: $00
	add  b                                           ; $74fc: $80
	add  c                                           ; $74fd: $81
	nop                                              ; $74fe: $00
	add  c                                           ; $74ff: $81
	rst  $38                                         ; $7500: $ff
	add  b                                           ; $7501: $80
	nop                                              ; $7502: $00
	add  e                                           ; $7503: $83
	rst  $38                                         ; $7504: $ff
	ld   [bc], a                                     ; $7505: $02
	nop                                              ; $7506: $00
	rst  $38                                         ; $7507: $ff
	nop                                              ; $7508: $00
	add  c                                           ; $7509: $81
	rst  $38                                         ; $750a: $ff
	inc  b                                           ; $750b: $04
	cp   $ff                                         ; $750c: $fe $ff
	nop                                              ; $750e: $00
	rst  $38                                         ; $750f: $ff
	ld   bc, $ff81                                   ; $7510: $01 $81 $ff
	inc  b                                           ; $7513: $04
	ldh  a, [rIE]                                    ; $7514: $f0 $ff
	rrca                                             ; $7516: $0f
	rst  $38                                         ; $7517: $ff
	nop                                              ; $7518: $00
	add  c                                           ; $7519: $81
	rst  $38                                         ; $751a: $ff
	ld   [bc], a                                     ; $751b: $02
	nop                                              ; $751c: $00
	rst  $38                                         ; $751d: $ff
	nop                                              ; $751e: $00
	add  e                                           ; $751f: $83
	rst  $38                                         ; $7520: $ff
	inc  b                                           ; $7521: $04
	nop                                              ; $7522: $00
	rst  $38                                         ; $7523: $ff
	ld   hl, sp-$01                                  ; $7524: $f8 $ff
	rlca                                             ; $7526: $07
	add  c                                           ; $7527: $81
	rst  $38                                         ; $7528: $ff
	ld   [bc], a                                     ; $7529: $02
	nop                                              ; $752a: $00
	rst  $38                                         ; $752b: $ff
	nop                                              ; $752c: $00
	add  c                                           ; $752d: $81
	rst  $38                                         ; $752e: $ff
	inc  b                                           ; $752f: $04
	ld   hl, sp-$01                                  ; $7530: $f8 $ff
	rlca                                             ; $7532: $07
	rst  $38                                         ; $7533: $ff
	nop                                              ; $7534: $00
	add  c                                           ; $7535: $81
	rst  $38                                         ; $7536: $ff
	inc  b                                           ; $7537: $04
	add  b                                           ; $7538: $80
	rst  $38                                         ; $7539: $ff
	nop                                              ; $753a: $00
	rst  $38                                         ; $753b: $ff
	ld   a, a                                        ; $753c: $7f
	add  c                                           ; $753d: $81
	rst  $38                                         ; $753e: $ff
	ld   a, [bc]                                     ; $753f: $0a
	nop                                              ; $7540: $00
	rst  $38                                         ; $7541: $ff
	ld   hl, sp-$01                                  ; $7542: $f8 $ff
	rlca                                             ; $7544: $07
	rst  $38                                         ; $7545: $ff
	ldh  [rIE], a                                    ; $7546: $e0 $ff
	rra                                              ; $7548: $1f
	rst  $38                                         ; $7549: $ff
	nop                                              ; $754a: $00
	add  c                                           ; $754b: $81
	rst  $38                                         ; $754c: $ff
	inc  b                                           ; $754d: $04
	cp   $ff                                         ; $754e: $fe $ff
	ld   bc, $00ff                                   ; $7550: $01 $ff $00
	add  c                                           ; $7553: $81
	rst  $38                                         ; $7554: $ff
	jr   z, jr_013_7557                              ; $7555: $28 $00

jr_013_7557:
	rst  $38                                         ; $7557: $ff
	cp   $ff                                         ; $7558: $fe $ff
	ld   bc, $f0ff                                   ; $755a: $01 $ff $f0
	rst  $38                                         ; $755d: $ff
	rrca                                             ; $755e: $0f
	cp   $f0                                         ; $755f: $fe $f0
	cp   $0e                                         ; $7561: $fe $0e
	cp   $c0                                         ; $7563: $fe $c0
	rst  $38                                         ; $7565: $ff
	ccf                                              ; $7566: $3f
	rst  $38                                         ; $7567: $ff
	ld   bc, $c1ff                                   ; $7568: $01 $ff $c1
	rst  $38                                         ; $756b: $ff
	ccf                                              ; $756c: $3f
	rst  $38                                         ; $756d: $ff
	ld   b, b                                        ; $756e: $40
	cp   a                                           ; $756f: $bf
	ld   a, a                                        ; $7570: $7f
	nop                                              ; $7571: $00
	cp   a                                           ; $7572: $bf
	add  b                                           ; $7573: $80
	xor  a                                           ; $7574: $af
	rst  $38                                         ; $7575: $ff
	push bc                                          ; $7576: $c5
	rst  $38                                         ; $7577: $ff
	add  b                                           ; $7578: $80
	rst  $38                                         ; $7579: $ff
	add  b                                           ; $757a: $80
	rst  $38                                         ; $757b: $ff
	nop                                              ; $757c: $00
	rst  $38                                         ; $757d: $ff
	ld   [$7f81], a                                  ; $757e: $ea $81 $7f
	jr   jr_013_75e2                                 ; $7581: $18 $5f

	ld   a, a                                        ; $7583: $7f
	dec  hl                                          ; $7584: $2b
	ld   a, a                                        ; $7585: $7f
	or   c                                           ; $7586: $b1
	cp   a                                           ; $7587: $bf
	cp   b                                           ; $7588: $b8
	cp   a                                           ; $7589: $bf
	ld   l, l                                        ; $758a: $6d
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $758b: $cf
	rla                                              ; $758c: $17
	rst  $10                                         ; $758d: $d7
	ld   [$fe57], sp                                 ; $758e: $08 $57 $fe
	rst  $38                                         ; $7591: $ff
	db   $f4                                         ; $7592: $f4
	rst  $38                                         ; $7593: $ff
	and  b                                           ; $7594: $a0
	rst  $38                                         ; $7595: $ff
	nop                                              ; $7596: $00
	rst  $38                                         ; $7597: $ff
	ld   [bc], a                                     ; $7598: $02
	rst  $38                                         ; $7599: $ff
	ld   d, a                                        ; $759a: $57
	add  c                                           ; $759b: $81
	rst  $38                                         ; $759c: $ff
	add  hl, bc                                      ; $759d: $09
	cp   [hl]                                        ; $759e: $be
	cp   $1e                                         ; $759f: $fe $1e
	cp   $1e                                         ; $75a1: $fe $1e
	cp   $3c                                         ; $75a3: $fe $3c
	db   $fd                                         ; $75a5: $fd
	ld   a, h                                        ; $75a6: $7c
	db   $fc                                         ; $75a7: $fc
	add  b                                           ; $75a8: $80
	ld   a, [$d201]                                  ; $75a9: $fa $01 $d2
	pop  de                                          ; $75ac: $d1
	add  b                                           ; $75ad: $80
	and  l                                           ; $75ae: $a5
	inc  b                                           ; $75af: $04
	db   $fd                                         ; $75b0: $fd
	ld   a, a                                        ; $75b1: $7f
	inc  bc                                          ; $75b2: $03
	ld   bc, $807d                                   ; $75b3: $01 $7d $80
	ld   bc, $7f80                                   ; $75b6: $01 $80 $7f
	add  e                                           ; $75b9: $83
	rst  $38                                         ; $75ba: $ff
	add  b                                           ; $75bb: $80
	cp   $0d                                         ; $75bc: $fe $0d
	ld   b, b                                        ; $75be: $40
	ld   a, a                                        ; $75bf: $7f
	ld   b, b                                        ; $75c0: $40
	ld   a, a                                        ; $75c1: $7f
	ld   a, b                                        ; $75c2: $78
	ld   a, a                                        ; $75c3: $7f
	ld   b, a                                        ; $75c4: $47
	ld   a, a                                        ; $75c5: $7f
	ld   h, b                                        ; $75c6: $60
	ld   a, a                                        ; $75c7: $7f
	ld   e, a                                        ; $75c8: $5f
	ld   a, a                                        ; $75c9: $7f
	ld   b, b                                        ; $75ca: $40
	ld   a, a                                        ; $75cb: $7f
	add  b                                           ; $75cc: $80
	rst  $38                                         ; $75cd: $ff
	inc  c                                           ; $75ce: $0c
	ld   a, $ff                                      ; $75cf: $3e $ff
	ld   bc, $00ff                                   ; $75d1: $01 $ff $00
	rst  $38                                         ; $75d4: $ff
	ldh  a, [rIE]                                    ; $75d5: $f0 $ff
	rrca                                             ; $75d7: $0f
	rst  $38                                         ; $75d8: $ff
	db   $fd                                         ; $75d9: $fd
	pop  bc                                          ; $75da: $c1
	ld   [hl], d                                     ; $75db: $72
	add  c                                           ; $75dc: $81
	or   b                                           ; $75dd: $b0
	inc  b                                           ; $75de: $04
	cp   $ff                                         ; $75df: $fe $ff
	add  b                                           ; $75e1: $80

jr_013_75e2:
	rst  $38                                         ; $75e2: $ff
	rst  JumpTable                                         ; $75e3: $df
	add  c                                           ; $75e4: $81
	ret  nz                                          ; $75e5: $c0

	ld   [bc], a                                     ; $75e6: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $75e7: $cf
	ret  nz                                          ; $75e8: $c0

	call $c083                                       ; $75e9: $cd $83 $c0
	ld   [bc], a                                     ; $75ec: $02
	sbc  l                                           ; $75ed: $9d
	rst  $38                                         ; $75ee: $ff
	nop                                              ; $75ef: $00
	add  b                                           ; $75f0: $80
	rst  $38                                         ; $75f1: $ff
	add  c                                           ; $75f2: $81
	nop                                              ; $75f3: $00
	ld   [bc], a                                     ; $75f4: $02
	and  d                                           ; $75f5: $a2
	nop                                              ; $75f6: $00
	add  b                                           ; $75f7: $80
	add  e                                           ; $75f8: $83
	nop                                              ; $75f9: $00
	nop                                              ; $75fa: $00
	db   $dd                                         ; $75fb: $dd
	add  c                                           ; $75fc: $81
	rst  $38                                         ; $75fd: $ff
	ld   [bc], a                                     ; $75fe: $02
	nop                                              ; $75ff: $00
	rst  $38                                         ; $7600: $ff
	nop                                              ; $7601: $00
	add  c                                           ; $7602: $81
	rst  $38                                         ; $7603: $ff
	ld   [bc], a                                     ; $7604: $02
	nop                                              ; $7605: $00
	rst  $38                                         ; $7606: $ff
	nop                                              ; $7607: $00
	add  e                                           ; $7608: $83
	rst  $38                                         ; $7609: $ff
	inc  b                                           ; $760a: $04
	ldh  a, [rIE]                                    ; $760b: $f0 $ff
	rrca                                             ; $760d: $0f
	rst  $38                                         ; $760e: $ff
	nop                                              ; $760f: $00
	add  c                                           ; $7610: $81
	rst  $38                                         ; $7611: $ff
	ld   [bc], a                                     ; $7612: $02
	nop                                              ; $7613: $00
	rst  $38                                         ; $7614: $ff
	nop                                              ; $7615: $00
	add  e                                           ; $7616: $83
	rst  $38                                         ; $7617: $ff
	inc  b                                           ; $7618: $04
	nop                                              ; $7619: $00
	rst  $38                                         ; $761a: $ff
	cp   $ff                                         ; $761b: $fe $ff
	ld   bc, $ff81                                   ; $761d: $01 $81 $ff
	ld   [bc], a                                     ; $7620: $02
	nop                                              ; $7621: $00
	rst  $38                                         ; $7622: $ff
	nop                                              ; $7623: $00
	add  e                                           ; $7624: $83
	rst  $38                                         ; $7625: $ff
	ld   [bc], a                                     ; $7626: $02
	nop                                              ; $7627: $00
	rst  $38                                         ; $7628: $ff
	nop                                              ; $7629: $00
	add  c                                           ; $762a: $81
	rst  $38                                         ; $762b: $ff
	inc  c                                           ; $762c: $0c
	ret  nz                                          ; $762d: $c0

	rst  $38                                         ; $762e: $ff
	ccf                                              ; $762f: $3f

Call_013_7630:
	rst  $38                                         ; $7630: $ff
	nop                                              ; $7631: $00
	rst  $38                                         ; $7632: $ff
	db   $fc                                         ; $7633: $fc
	rst  $38                                         ; $7634: $ff
	add  e                                           ; $7635: $83
	rst  $38                                         ; $7636: $ff
	ld   [hl], b                                     ; $7637: $70
	rst  $38                                         ; $7638: $ff
	rrca                                             ; $7639: $0f
	add  c                                           ; $763a: $81
	rst  $38                                         ; $763b: $ff
	nop                                              ; $763c: $00
	nop                                              ; $763d: $00
	add  c                                           ; $763e: $81
	rst  $38                                         ; $763f: $ff
	ld   b, $00                                      ; $7640: $06 $00
	rst  $38                                         ; $7642: $ff
	nop                                              ; $7643: $00
	rst  $38                                         ; $7644: $ff
	db   $fc                                         ; $7645: $fc
	rst  $38                                         ; $7646: $ff
	inc  bc                                          ; $7647: $03
	add  c                                           ; $7648: $81
	rst  $38                                         ; $7649: $ff
	nop                                              ; $764a: $00
	nop                                              ; $764b: $00
	add  c                                           ; $764c: $81
	rst  $38                                         ; $764d: $ff
	ld   b, $c0                                      ; $764e: $06 $c0
	rst  $38                                         ; $7650: $ff
	ccf                                              ; $7651: $3f
	rst  $38                                         ; $7652: $ff
	nop                                              ; $7653: $00
	rst  $38                                         ; $7654: $ff
	nop                                              ; $7655: $00
	add  c                                           ; $7656: $81
	rst  $38                                         ; $7657: $ff
	inc  b                                           ; $7658: $04
	db   $fc                                         ; $7659: $fc
	rst  $38                                         ; $765a: $ff
	inc  bc                                          ; $765b: $03
	rst  $38                                         ; $765c: $ff
	nop                                              ; $765d: $00
	add  e                                           ; $765e: $83
	rst  $38                                         ; $765f: $ff
	inc  hl                                          ; $7660: $23
	jr   nc, @+$01                                   ; $7661: $30 $ff

	sbc  d                                           ; $7663: $9a
	rst  $38                                         ; $7664: $ff
	nop                                              ; $7665: $00
	ld   a, a                                        ; $7666: $7f
	add  b                                           ; $7667: $80
	cp   a                                           ; $7668: $bf
	add  b                                           ; $7669: $80
	cp   a                                           ; $766a: $bf
	ldh  [$df], a                                    ; $766b: $e0 $df
	ret  nz                                          ; $766d: $c0

	rst  JumpTable                                         ; $766e: $df
	ldh  [$ef], a                                    ; $766f: $e0 $ef
	ldh  a, [c]                                      ; $7671: $f2
	rst  $30                                         ; $7672: $f7
	cp   c                                           ; $7673: $b9
	jp   hl                                          ; $7674: $e9


	inc  c                                           ; $7675: $0c
	db   $f4                                         ; $7676: $f4
	ld   b, $fa                                      ; $7677: $06 $fa
	inc  bc                                          ; $7679: $03
	db   $fc                                         ; $767a: $fc
	ld   bc, $00ff                                   ; $767b: $01 $ff $00
	rst  $38                                         ; $767e: $ff
	db   $10                                         ; $767f: $10
	rst  $38                                         ; $7680: $ff
	sbc  d                                           ; $7681: $9a
	rst  $38                                         ; $7682: $ff
	ld   e, l                                        ; $7683: $5d
	ld   a, l                                        ; $7684: $7d
	add  b                                           ; $7685: $80
	xor  d                                           ; $7686: $aa
	add  b                                           ; $7687: $80
	inc  d                                           ; $7688: $14
	add  b                                           ; $7689: $80
	pop  bc                                          ; $768a: $c1
	ld   c, $ff                                      ; $768b: $0e $ff
	nop                                              ; $768d: $00
	xor  b                                           ; $768e: $a8
	rst  $38                                         ; $768f: $ff
	rla                                              ; $7690: $17
	rst  $38                                         ; $7691: $ff
	cp   a                                           ; $7692: $bf
	rst  $38                                         ; $7693: $ff
	ld   c, a                                        ; $7694: $4f
	ld   c, e                                        ; $7695: $4b
	sbc  e                                           ; $7696: $9b
	sub  a                                           ; $7697: $97
	scf                                              ; $7698: $37
	cpl                                              ; $7699: $2f
	rst  $28                                         ; $769a: $ef
	add  b                                           ; $769b: $80
	sbc  a                                           ; $769c: $9f
	add  b                                           ; $769d: $80
	ld   a, a                                        ; $769e: $7f
	add  e                                           ; $769f: $83
	rst  $38                                         ; $76a0: $ff
	add  d                                           ; $76a1: $82
	cp   $80                                         ; $76a2: $fe $80
	db   $fd                                         ; $76a4: $fd
	add  b                                           ; $76a5: $80
	push af                                          ; $76a6: $f5
	add  b                                           ; $76a7: $80
	db   $eb                                         ; $76a8: $eb
	add  b                                           ; $76a9: $80
	db   $d3                                         ; $76aa: $d3
	add  b                                           ; $76ab: $80
	and  a                                           ; $76ac: $a7
	add  b                                           ; $76ad: $80
	ld   c, a                                        ; $76ae: $4f
	add  b                                           ; $76af: $80
	rst  $38                                         ; $76b0: $ff
	inc  b                                           ; $76b1: $04
	add  b                                           ; $76b2: $80
	rst  $38                                         ; $76b3: $ff
	ldh  a, [rIE]                                    ; $76b4: $f0 $ff
	adc  a                                           ; $76b6: $8f
	add  c                                           ; $76b7: $81
	rst  $38                                         ; $76b8: $ff
	dec  c                                           ; $76b9: $0d
	ldh  [c], a                                      ; $76ba: $e2
	rst  $38                                         ; $76bb: $ff
	ld   [de], a                                     ; $76bc: $12
	rst  $38                                         ; $76bd: $ff
	rrca                                             ; $76be: $0f
	rst  $38                                         ; $76bf: $ff
	cp   $80                                         ; $76c0: $fe $80
	nop                                              ; $76c2: $00
	add  b                                           ; $76c3: $80
	ld   b, d                                        ; $76c4: $42
	add  b                                           ; $76c5: $80
	db   $fd                                         ; $76c6: $fd
	pop  bc                                          ; $76c7: $c1
	add  b                                           ; $76c8: $80
	db   $e3                                         ; $76c9: $e3
	ld   [bc], a                                     ; $76ca: $02
	ld   a, a                                        ; $76cb: $7f
	rst  $38                                         ; $76cc: $ff
	ld   a, a                                        ; $76cd: $7f
	add  c                                           ; $76ce: $81
	rst  $38                                         ; $76cf: $ff
	nop                                              ; $76d0: $00
	ld   e, l                                        ; $76d1: $5d
	add  l                                           ; $76d2: $85
	ret  nz                                          ; $76d3: $c0

	inc  b                                           ; $76d4: $04
	add  b                                           ; $76d5: $80
	nop                                              ; $76d6: $00
	ld   [bc], a                                     ; $76d7: $02
	nop                                              ; $76d8: $00
	rra                                              ; $76d9: $1f
	add  b                                           ; $76da: $80
	inc  bc                                          ; $76db: $03
	ld   bc, $dd00                                   ; $76dc: $01 $00 $dd
	add  e                                           ; $76df: $83
	nop                                              ; $76e0: $00
	dec  b                                           ; $76e1: $05
	ld   [hl], $00                                   ; $76e2: $36 $00
	inc  e                                           ; $76e4: $1c
	nop                                              ; $76e5: $00
	ld   [$8100], sp                                 ; $76e6: $08 $00 $81
	rst  $38                                         ; $76e9: $ff
	dec  b                                           ; $76ea: $05
	nop                                              ; $76eb: $00
	rlca                                             ; $76ec: $07
	rst  $38                                         ; $76ed: $ff
	rlca                                             ; $76ee: $07
	rst  $38                                         ; $76ef: $ff
	nop                                              ; $76f0: $00
	add  e                                           ; $76f1: $83
	rst  $38                                         ; $76f2: $ff
	dec  b                                           ; $76f3: $05
	rlca                                             ; $76f4: $07
	ld   hl, sp+$10                                  ; $76f5: $f8 $10
	ldh  a, [rAUD1SWEEP]                             ; $76f7: $f0 $10
	ldh  a, [$82]                                    ; $76f9: $f0 $82
	rst  $38                                         ; $76fb: $ff
	nop                                              ; $76fc: $00
	nop                                              ; $76fd: $00
	add  e                                           ; $76fe: $83
	rst  $38                                         ; $76ff: $ff
	nop                                              ; $7700: $00
	ret  nz                                          ; $7701: $c0

	add  e                                           ; $7702: $83
	ccf                                              ; $7703: $3f
	add  b                                           ; $7704: $80
	rst  $38                                         ; $7705: $ff
	inc  b                                           ; $7706: $04
	ret  nz                                          ; $7707: $c0

	rst  $38                                         ; $7708: $ff
	jr   nz, @+$01                                   ; $7709: $20 $ff

	ldh  [$81], a                                    ; $770b: $e0 $81
	rst  $38                                         ; $770d: $ff
	nop                                              ; $770e: $00
	nop                                              ; $770f: $00
	add  e                                           ; $7710: $83
	rst  $38                                         ; $7711: $ff
	ld   b, $fc                                      ; $7712: $06 $fc
	rst  $38                                         ; $7714: $ff
	inc  bc                                          ; $7715: $03
	rst  $38                                         ; $7716: $ff
	nop                                              ; $7717: $00
	rst  $38                                         ; $7718: $ff
	nop                                              ; $7719: $00
	add  c                                           ; $771a: $81
	rst  $38                                         ; $771b: $ff
	nop                                              ; $771c: $00
	nop                                              ; $771d: $00
	add  e                                           ; $771e: $83
	rst  $38                                         ; $771f: $ff
	nop                                              ; $7720: $00
	nop                                              ; $7721: $00
	add  c                                           ; $7722: $81
	rst  $38                                         ; $7723: $ff
	ld   [bc], a                                     ; $7724: $02
	nop                                              ; $7725: $00
	rst  $38                                         ; $7726: $ff
	nop                                              ; $7727: $00
	add  c                                           ; $7728: $81
	rst  $38                                         ; $7729: $ff
	nop                                              ; $772a: $00
	nop                                              ; $772b: $00
	add  e                                           ; $772c: $83
	rst  $38                                         ; $772d: $ff
	ld   b, $00                                      ; $772e: $06 $00
	rst  $38                                         ; $7730: $ff
	nop                                              ; $7731: $00
	rst  $38                                         ; $7732: $ff
	db   $fc                                         ; $7733: $fc
	rst  $38                                         ; $7734: $ff
	inc  bc                                          ; $7735: $03
	add  c                                           ; $7736: $81
	rst  $38                                         ; $7737: $ff
	nop                                              ; $7738: $00
	ld   bc, $fe83                                   ; $7739: $01 $83 $fe
	inc  b                                           ; $773c: $04
	nop                                              ; $773d: $00
	rst  $38                                         ; $773e: $ff
	nop                                              ; $773f: $00
	rst  $38                                         ; $7740: $ff
	nop                                              ; $7741: $00
	add  c                                           ; $7742: $81
	rst  $38                                         ; $7743: $ff
	jr   jr_013_7746                                 ; $7744: $18 $00

jr_013_7746:
	rst  $38                                         ; $7746: $ff
	ld   [$000f], sp                                 ; $7747: $08 $0f $00
	rlca                                             ; $774a: $07
	nop                                              ; $774b: $00
	rlca                                             ; $774c: $07
	inc  e                                           ; $774d: $1c
	ei                                               ; $774e: $fb
	dec  c                                           ; $774f: $0d
	db   $fd                                         ; $7750: $fd
	ld   d, $fe                                      ; $7751: $16 $fe
	rst  ToBoot                                         ; $7753: $c7
	rst  $38                                         ; $7754: $ff
	ccf                                              ; $7755: $3f
	rst  $38                                         ; $7756: $ff
	nop                                              ; $7757: $00
	rst  $38                                         ; $7758: $ff
	nop                                              ; $7759: $00
	rst  $38                                         ; $775a: $ff
	rrca                                             ; $775b: $0f
	rst  $38                                         ; $775c: $ff
	rrca                                             ; $775d: $0f
	add  e                                           ; $775e: $83
	rst  $38                                         ; $775f: $ff
	add  b                                           ; $7760: $80
	scf                                              ; $7761: $37
	add  b                                           ; $7762: $80
	jp   z, $f180                                    ; $7763: $ca $80 $f1

	add  b                                           ; $7766: $80
	cp   $88                                         ; $7767: $fe $88
	rst  $38                                         ; $7769: $ff
	add  b                                           ; $776a: $80
	xor  d                                           ; $776b: $aa
	add  b                                           ; $776c: $80
	ld   d, l                                        ; $776d: $55
	add  b                                           ; $776e: $80
	nop                                              ; $776f: $00
	add  b                                           ; $7770: $80
	rst  $38                                         ; $7771: $ff
	add  b                                           ; $7772: $80
	ld   a, [$f580]                                  ; $7773: $fa $80 $f5
	add  b                                           ; $7776: $80
	ld   [$5480], a                                  ; $7777: $ea $80 $54
	add  b                                           ; $777a: $80
	and  e                                           ; $777b: $a3
	add  b                                           ; $777c: $80
	rrca                                             ; $777d: $0f
	add  b                                           ; $777e: $80
	ld   a, a                                        ; $777f: $7f
	add  b                                           ; $7780: $80
	rst  $38                                         ; $7781: $ff
	nop                                              ; $7782: $00
	nop                                              ; $7783: $00
	add  b                                           ; $7784: $80
	sbc  a                                           ; $7785: $9f
	add  b                                           ; $7786: $80
	ccf                                              ; $7787: $3f
	add  hl, bc                                      ; $7788: $09
	ld   a, a                                        ; $7789: $7f
	ld   [hl], b                                     ; $778a: $70
	rst  $38                                         ; $778b: $ff
	ldh  a, [rIE]                                    ; $778c: $f0 $ff
	ld   hl, sp-$01                                  ; $778e: $f8 $ff
	rlca                                             ; $7790: $07
	rst  $38                                         ; $7791: $ff
	nop                                              ; $7792: $00
	add  e                                           ; $7793: $83
	rst  $38                                         ; $7794: $ff
	ld   a, [bc]                                     ; $7795: $0a
	ldh  [rIE], a                                    ; $7796: $e0 $ff
	ld   h, b                                        ; $7798: $60
	rst  $38                                         ; $7799: $ff
	ld   a, a                                        ; $779a: $7f
	rst  $38                                         ; $779b: $ff
	nop                                              ; $779c: $00
	rst  $38                                         ; $779d: $ff
	ldh  a, [rIE]                                    ; $779e: $f0 $ff
	rrca                                             ; $77a0: $0f
	add  c                                           ; $77a1: $81
	rst  $38                                         ; $77a2: $ff
	ld   b, $00                                      ; $77a3: $06 $00
	rst  $38                                         ; $77a5: $ff
	db   $fc                                         ; $77a6: $fc
	rst  $38                                         ; $77a7: $ff
	inc  bc                                          ; $77a8: $03
	rst  $38                                         ; $77a9: $ff
	nop                                              ; $77aa: $00
	add  c                                           ; $77ab: $81
	rst  $38                                         ; $77ac: $ff
	nop                                              ; $77ad: $00
	nop                                              ; $77ae: $00
	add  e                                           ; $77af: $83
	rst  $38                                         ; $77b0: $ff
	ld   [bc], a                                     ; $77b1: $02
	nop                                              ; $77b2: $00
	rst  $38                                         ; $77b3: $ff
	nop                                              ; $77b4: $00
	add  c                                           ; $77b5: $81
	rst  $38                                         ; $77b6: $ff
	inc  c                                           ; $77b7: $0c
	nop                                              ; $77b8: $00
	rst  $38                                         ; $77b9: $ff
	add  b                                           ; $77ba: $80
	rst  $38                                         ; $77bb: $ff
	ld   a, a                                        ; $77bc: $7f
	rst  $38                                         ; $77bd: $ff
	db   $fc                                         ; $77be: $fc
	rst  $38                                         ; $77bf: $ff
	db   $fc                                         ; $77c0: $fc
	rst  $38                                         ; $77c1: $ff
	ld   [hl], b                                     ; $77c2: $70
	rst  $38                                         ; $77c3: $ff
	ld   [hl], b                                     ; $77c4: $70
	add  c                                           ; $77c5: $81
	rst  $38                                         ; $77c6: $ff
	ld   [bc], a                                     ; $77c7: $02
	nop                                              ; $77c8: $00
	rst  $38                                         ; $77c9: $ff
	nop                                              ; $77ca: $00
	add  c                                           ; $77cb: $81
	rst  $38                                         ; $77cc: $ff
	ld   [bc], a                                     ; $77cd: $02
	nop                                              ; $77ce: $00
	rst  $38                                         ; $77cf: $ff
	nop                                              ; $77d0: $00
	add  c                                           ; $77d1: $81
	ldh  a, [$80]                                    ; $77d2: $f0 $80
	rst  $38                                         ; $77d4: $ff
	ld   [bc], a                                     ; $77d5: $02
	rrca                                             ; $77d6: $0f
	rst  $38                                         ; $77d7: $ff
	rrca                                             ; $77d8: $0f
	add  c                                           ; $77d9: $81
	rst  $38                                         ; $77da: $ff
	inc  b                                           ; $77db: $04
	rrca                                             ; $77dc: $0f
	rst  $38                                         ; $77dd: $ff
	rrca                                             ; $77de: $0f
	rst  $38                                         ; $77df: $ff
	rrca                                             ; $77e0: $0f
	add  c                                           ; $77e1: $81
	nop                                              ; $77e2: $00
	nop                                              ; $77e3: $00
	ld   b, b                                        ; $77e4: $40
	adc  c                                           ; $77e5: $89
	nop                                              ; $77e6: $00
	nop                                              ; $77e7: $00
	ld   b, b                                        ; $77e8: $40
	add  c                                           ; $77e9: $81
	nop                                              ; $77ea: $00
	nop                                              ; $77eb: $00
	db   $10                                         ; $77ec: $10
	add  c                                           ; $77ed: $81
	nop                                              ; $77ee: $00
	ld   [$00ee], sp                                 ; $77ef: $08 $ee $00
	xor  $00                                         ; $77f2: $ee $00
	xor  $00                                         ; $77f4: $ee $00
	xor  $00                                         ; $77f6: $ee $00
	db   $10                                         ; $77f8: $10
	add  c                                           ; $77f9: $81
	nop                                              ; $77fa: $00
	nop                                              ; $77fb: $00
	db   $10                                         ; $77fc: $10
	add  c                                           ; $77fd: $81
	nop                                              ; $77fe: $00
	ld   [$00ee], sp                                 ; $77ff: $08 $ee $00
	xor  $00                                         ; $7802: $ee $00
	ld   h, b                                        ; $7804: $60
	nop                                              ; $7805: $00
	ldh  [rP1], a                                    ; $7806: $e0 $00
	sub  b                                           ; $7808: $90
	add  c                                           ; $7809: $81
	nop                                              ; $780a: $00
	ld   b, $40                                      ; $780b: $06 $40
	nop                                              ; $780d: $00
	inc  b                                           ; $780e: $04
	nop                                              ; $780f: $00
	or   [hl]                                        ; $7810: $b6
	nop                                              ; $7811: $00
	cp   b                                           ; $7812: $b8
	add  e                                           ; $7813: $83
	nop                                              ; $7814: $00
	nop                                              ; $7815: $00
	ld   c, d                                        ; $7816: $4a
	add  c                                           ; $7817: $81
	nop                                              ; $7818: $00
	inc  b                                           ; $7819: $04
	jr   c, jr_013_781c                              ; $781a: $38 $00

jr_013_781c:
	ld   a, h                                        ; $781c: $7c
	nop                                              ; $781d: $00
	add  $81                                         ; $781e: $c6 $81
	nop                                              ; $7820: $00
	dec  b                                           ; $7821: $05
	adc  [hl]                                        ; $7822: $8e
	nop                                              ; $7823: $00
	inc  e                                           ; $7824: $1c
	nop                                              ; $7825: $00
	rst  $28                                         ; $7826: $ef
	rlca                                             ; $7827: $07
	add  b                                           ; $7828: $80
	ld   bc, $0702                                   ; $7829: $01 $02 $07
	ld   [hl], a                                     ; $782c: $77
	ld   [hl], b                                     ; $782d: $70
	add  e                                           ; $782e: $83
	ld   [hl], a                                     ; $782f: $77
	nop                                              ; $7830: $00
	ld   [hl], b                                     ; $7831: $70
	add  d                                           ; $7832: $82
	ld   [hl], a                                     ; $7833: $77
	add  c                                           ; $7834: $81
	rst  $38                                         ; $7835: $ff
	inc  b                                           ; $7836: $04
	ei                                               ; $7837: $fb
	inc  bc                                          ; $7838: $03
	inc  [hl]                                        ; $7839: $34
	ld   bc, $8310                                   ; $783a: $01 $10 $83
	ld   de, $3702                                   ; $783d: $11 $02 $37
	nop                                              ; $7840: $00
	inc  b                                           ; $7841: $04
	add  e                                           ; $7842: $83
	rst  $38                                         ; $7843: $ff
	ld   [bc], a                                     ; $7844: $02
	nop                                              ; $7845: $00
	rst  $38                                         ; $7846: $ff
	inc  b                                           ; $7847: $04
	add  c                                           ; $7848: $81
	db   $e3                                         ; $7849: $e3
	inc  b                                           ; $784a: $04
	ld   a, [$9ee3]                                  ; $784b: $fa $e3 $9e
	inc  h                                           ; $784e: $24
	ld   b, h                                        ; $784f: $44
	add  c                                           ; $7850: $81
	rst  $38                                         ; $7851: $ff
	inc  b                                           ; $7852: $04
	ldh  [rIE], a                                    ; $7853: $e0 $ff
	rra                                              ; $7855: $1f
	rst  $38                                         ; $7856: $ff
	nop                                              ; $7857: $00
	add  c                                           ; $7858: $81
	rst  $38                                         ; $7859: $ff

jr_013_785a:
	inc  b                                           ; $785a: $04
	ld   b, $f9                                      ; $785b: $06 $f9
	ld   de, $8998                                   ; $785d: $11 $98 $89
	add  c                                           ; $7860: $81
	rst  $38                                         ; $7861: $ff
	inc  b                                           ; $7862: $04
	nop                                              ; $7863: $00
	rst  $38                                         ; $7864: $ff
	ld   hl, sp-$01                                  ; $7865: $f8 $ff
	rlca                                             ; $7867: $07
	add  c                                           ; $7868: $81
	rst  $38                                         ; $7869: $ff
	ld   [bc], a                                     ; $786a: $02
	nop                                              ; $786b: $00
	rst  $38                                         ; $786c: $ff
	nop                                              ; $786d: $00
	add  c                                           ; $786e: $81
	rst  $38                                         ; $786f: $ff
	inc  b                                           ; $7870: $04
	ld   hl, sp-$01                                  ; $7871: $f8 $ff
	rlca                                             ; $7873: $07
	rst  $38                                         ; $7874: $ff
	nop                                              ; $7875: $00
	add  c                                           ; $7876: $81
	rst  $38                                         ; $7877: $ff
	inc  b                                           ; $7878: $04
	add  b                                           ; $7879: $80
	rst  $38                                         ; $787a: $ff
	nop                                              ; $787b: $00
	rst  $38                                         ; $787c: $ff
	ld   a, a                                        ; $787d: $7f
	add  c                                           ; $787e: $81
	rst  $38                                         ; $787f: $ff
	ld   a, [bc]                                     ; $7880: $0a
	nop                                              ; $7881: $00
	rst  $38                                         ; $7882: $ff
	ld   hl, sp-$01                                  ; $7883: $f8 $ff
	rlca                                             ; $7885: $07
	rst  $38                                         ; $7886: $ff
	ldh  [rIE], a                                    ; $7887: $e0 $ff
	rra                                              ; $7889: $1f
	rst  $38                                         ; $788a: $ff
	nop                                              ; $788b: $00
	add  c                                           ; $788c: $81
	rst  $38                                         ; $788d: $ff
	ld   bc, $ff00                                   ; $788e: $01 $00 $ff
	add  b                                           ; $7891: $80
	dec  d                                           ; $7892: $15
	add  d                                           ; $7893: $82
	rst  $38                                         ; $7894: $ff
	add  b                                           ; $7895: $80
	ccf                                              ; $7896: $3f
	ld   [bc], a                                     ; $7897: $02
	db   $fd                                         ; $7898: $fd
	pop  bc                                          ; $7899: $c1
	ldh  a, [c]                                      ; $789a: $f2
	add  c                                           ; $789b: $81
	or   b                                           ; $789c: $b0
	inc  b                                           ; $789d: $04
	ld   a, [hl]                                     ; $789e: $7e
	inc  bc                                          ; $789f: $03
	nop                                              ; $78a0: $00
	inc  bc                                          ; $78a1: $03
	rra                                              ; $78a2: $1f
	add  c                                           ; $78a3: $81
	nop                                              ; $78a4: $00
	nop                                              ; $78a5: $00
	ld   b, b                                        ; $78a6: $40
	add  l                                           ; $78a7: $85
	ret  nz                                          ; $78a8: $c0

	db   $10                                         ; $78a9: $10
	sbc  a                                           ; $78aa: $9f
	rst  $38                                         ; $78ab: $ff
	nop                                              ; $78ac: $00
	rst  $38                                         ; $78ad: $ff
	ldh  [rP1], a                                    ; $78ae: $e0 $00
	dec  e                                           ; $78b0: $1d
	nop                                              ; $78b1: $00
	ld   a, l                                        ; $78b2: $7d
	nop                                              ; $78b3: $00
	dec  a                                           ; $78b4: $3d
	nop                                              ; $78b5: $00
	jr   jr_013_78b8                                 ; $78b6: $18 $00

jr_013_78b8:
	ld   e, b                                        ; $78b8: $58
	nop                                              ; $78b9: $00
	db   $fd                                         ; $78ba: $fd
	add  c                                           ; $78bb: $81
	rst  $38                                         ; $78bc: $ff
	ld   [bc], a                                     ; $78bd: $02
	rrca                                             ; $78be: $0f
	rst  $38                                         ; $78bf: $ff
	rrca                                             ; $78c0: $0f
	add  c                                           ; $78c1: $81
	rst  $38                                         ; $78c2: $ff
	nop                                              ; $78c3: $00
	rrca                                             ; $78c4: $0f
	add  b                                           ; $78c5: $80
	rst  $38                                         ; $78c6: $ff
	dec  bc                                          ; $78c7: $0b
	ldh  a, [rP1]                                    ; $78c8: $f0 $00

jr_013_78ca:
	ldh  a, [rVBK]                                   ; $78ca: $f0 $4f
	nop                                              ; $78cc: $00
	ld   [bc], a                                     ; $78cd: $02
	nop                                              ; $78ce: $00
	ld   h, [hl]                                     ; $78cf: $66
	nop                                              ; $78d0: $00
	inc  a                                           ; $78d1: $3c
	nop                                              ; $78d2: $00
	jr   jr_013_785a                                 ; $78d3: $18 $85

	nop                                              ; $78d5: $00
	ld   [$0070], sp                                 ; $78d6: $08 $70 $00
	add  sp, $00                                     ; $78d9: $e8 $00
	inc  c                                           ; $78db: $0c
	nop                                              ; $78dc: $00
	or   $00                                         ; $78dd: $f6 $00
	ld   h, d                                        ; $78df: $62
	add  l                                           ; $78e0: $85
	nop                                              ; $78e1: $00
	ld   [$0090], sp                                 ; $78e2: $08 $90 $00
	ldh  [rP1], a                                    ; $78e5: $e0 $00
	ld   h, b                                        ; $78e7: $60
	nop                                              ; $78e8: $00
	jr   nc, jr_013_78eb                             ; $78e9: $30 $00

jr_013_78eb:
	jr   nz, @-$79                                   ; $78eb: $20 $85

	nop                                              ; $78ed: $00
	nop                                              ; $78ee: $00
	ld   c, b                                        ; $78ef: $48
	add  c                                           ; $78f0: $81
	nop                                              ; $78f1: $00
	inc  b                                           ; $78f2: $04
	ret  nz                                          ; $78f3: $c0

	nop                                              ; $78f4: $00
	sbc  b                                           ; $78f5: $98

jr_013_78f6:
	nop                                              ; $78f6: $00
	db   $10                                         ; $78f7: $10
	add  l                                           ; $78f8: $85
	nop                                              ; $78f9: $00
	inc  b                                           ; $78fa: $04
	stop                                             ; $78fb: $10 $00
	stop                                             ; $78fd: $10 $00
	db   $10                                         ; $78ff: $10
	add  c                                           ; $7900: $81
	nop                                              ; $7901: $00
	nop                                              ; $7902: $00
	db   $10                                         ; $7903: $10
	add  l                                           ; $7904: $85
	nop                                              ; $7905: $00
	nop                                              ; $7906: $00
	rst  $38                                         ; $7907: $ff
	add  c                                           ; $7908: $81
	ld   [hl], a                                     ; $7909: $77
	nop                                              ; $790a: $00
	ld   [hl], b                                     ; $790b: $70
	add  c                                           ; $790c: $81
	ld   [hl], a                                     ; $790d: $77
	nop                                              ; $790e: $00
	ld   [hl], b                                     ; $790f: $70
	add  c                                           ; $7910: $81
	ld   [hl], a                                     ; $7911: $77
	nop                                              ; $7912: $00
	ld   [hl], b                                     ; $7913: $70
	add  c                                           ; $7914: $81
	rlca                                             ; $7915: $07
	ld   bc, $0039                                   ; $7916: $01 $39 $00
	add  b                                           ; $7919: $80
	jr   jr_013_7928                                 ; $791a: $18 $0c

	nop                                              ; $791c: $00
	jr   jr_013_792f                                 ; $791d: $18 $10

	jr   @+$0f                                       ; $791f: $18 $0d

	jr   jr_013_78f6                                 ; $7921: $18 $d3

	inc  e                                           ; $7923: $1c
	inc  c                                           ; $7924: $0c
	rst  $38                                         ; $7925: $ff
	nop                                              ; $7926: $00
	rst  $38                                         ; $7927: $ff

jr_013_7928:
	db   $db                                         ; $7928: $db
	add  l                                           ; $7929: $85
	nop                                              ; $792a: $00
	inc  b                                           ; $792b: $04
	ld   h, b                                        ; $792c: $60
	jr   nz, jr_013_78ca                             ; $792d: $20 $9b

jr_013_792f:
	ld   h, b                                        ; $792f: $60
	sbc  a                                           ; $7930: $9f
	add  c                                           ; $7931: $81
	rst  $38                                         ; $7932: $ff
	dec  c                                           ; $7933: $0d
	cp   a                                           ; $7934: $bf
	nop                                              ; $7935: $00
	ret                                              ; $7936: $c9


	ld   b, b                                        ; $7937: $40
	nop                                              ; $7938: $00
	ld   b, b                                        ; $7939: $40
	nop                                              ; $793a: $00
	ld   b, b                                        ; $793b: $40
	ld   b, c                                        ; $793c: $41
	ld   b, b                                        ; $793d: $40
	scf                                              ; $793e: $37
	ld   b, b                                        ; $793f: $40
	cp   a                                           ; $7940: $bf
	rst  $38                                         ; $7941: $ff
	add  b                                           ; $7942: $80
	rrca                                             ; $7943: $0f
	add  b                                           ; $7944: $80
	rst  $38                                         ; $7945: $ff
	inc  b                                           ; $7946: $04
	nop                                              ; $7947: $00
	rst  $38                                         ; $7948: $ff
	cp   $ff                                         ; $7949: $fe $ff
	ld   bc, $ff81                                   ; $794b: $01 $81 $ff
	ld   [bc], a                                     ; $794e: $02
	nop                                              ; $794f: $00
	rst  $38                                         ; $7950: $ff
	nop                                              ; $7951: $00
	add  e                                           ; $7952: $83
	rst  $38                                         ; $7953: $ff
	ld   [bc], a                                     ; $7954: $02
	nop                                              ; $7955: $00
	rst  $38                                         ; $7956: $ff
	nop                                              ; $7957: $00
	add  c                                           ; $7958: $81
	rst  $38                                         ; $7959: $ff
	inc  c                                           ; $795a: $0c
	ret  nz                                          ; $795b: $c0

	rst  $38                                         ; $795c: $ff
	ccf                                              ; $795d: $3f
	rst  $38                                         ; $795e: $ff
	nop                                              ; $795f: $00
	rst  $38                                         ; $7960: $ff
	db   $fc                                         ; $7961: $fc
	rst  $38                                         ; $7962: $ff
	add  e                                           ; $7963: $83
	rst  $38                                         ; $7964: $ff
	ld   [hl], b                                     ; $7965: $70
	rst  $38                                         ; $7966: $ff
	rrca                                             ; $7967: $0f
	add  c                                           ; $7968: $81
	rst  $38                                         ; $7969: $ff
	nop                                              ; $796a: $00
	nop                                              ; $796b: $00
	add  c                                           ; $796c: $81
	rst  $38                                         ; $796d: $ff
	inc  b                                           ; $796e: $04
	nop                                              ; $796f: $00
	rst  $38                                         ; $7970: $ff
	nop                                              ; $7971: $00
	rst  $38                                         ; $7972: $ff
	cp   $81                                         ; $7973: $fe $81
	add  b                                           ; $7975: $80
	inc  bc                                          ; $7976: $03
	jp   nz, $bc80                                   ; $7977: $c2 $80 $bc

	add  b                                           ; $797a: $80
	add  b                                           ; $797b: $80
	pop  bc                                          ; $797c: $c1
	add  b                                           ; $797d: $80
	ld   a, [hl]                                     ; $797e: $7e
	add  b                                           ; $797f: $80
	ld   hl, sp-$80                                  ; $7980: $f8 $80
	rst  $38                                         ; $7982: $ff
	nop                                              ; $7983: $00
	ld   e, a                                        ; $7984: $5f
	add  l                                           ; $7985: $85
	ret  nz                                          ; $7986: $c0

	nop                                              ; $7987: $00
	add  b                                           ; $7988: $80
	add  c                                           ; $7989: $81
	nop                                              ; $798a: $00
	nop                                              ; $798b: $00
	rra                                              ; $798c: $1f
	add  b                                           ; $798d: $80
	inc  bc                                          ; $798e: $03
	ld   bc, $e000                                   ; $798f: $01 $00 $e0
	add  c                                           ; $7992: $81
	nop                                              ; $7993: $00

jr_013_7994:
	ld   [$000d], sp                                 ; $7994: $08 $0d $00
	dec  c                                           ; $7997: $0d
	nop                                              ; $7998: $00
	dec  e                                           ; $7999: $1d
	nop                                              ; $799a: $00
	inc  bc                                          ; $799b: $03
	nop                                              ; $799c: $00
	cp   $80                                         ; $799d: $fe $80
	rst  $38                                         ; $799f: $ff
	dec  b                                           ; $79a0: $05
	nop                                              ; $79a1: $00
	jr   nc, jr_013_7994                             ; $79a2: $30 $f0

	jr   nc, @-$0e                                   ; $79a4: $30 $f0

	nop                                              ; $79a6: $00
	add  b                                           ; $79a7: $80
	ldh  a, [$03]                                    ; $79a8: $f0 $03
	ld   hl, sp+$07                                  ; $79aa: $f8 $07
	rst  $38                                         ; $79ac: $ff
	nop                                              ; $79ad: $00
	add  c                                           ; $79ae: $81
	rst  $38                                         ; $79af: $ff
	ld   [bc], a                                     ; $79b0: $02
	nop                                              ; $79b1: $00
	rst  $38                                         ; $79b2: $ff
	nop                                              ; $79b3: $00
	add  h                                           ; $79b4: $84
	ccf                                              ; $79b5: $3f
	nop                                              ; $79b6: $00
	nop                                              ; $79b7: $00
	add  b                                           ; $79b8: $80
	rst  $38                                         ; $79b9: $ff
	nop                                              ; $79ba: $00
	nop                                              ; $79bb: $00
	add  c                                           ; $79bc: $81
	rst  $38                                         ; $79bd: $ff
	ld   [bc], a                                     ; $79be: $02
	nop                                              ; $79bf: $00
	rst  $38                                         ; $79c0: $ff
	nop                                              ; $79c1: $00
	add  h                                           ; $79c2: $84
	rst  $38                                         ; $79c3: $ff
	add  hl, bc                                      ; $79c4: $09
	nop                                              ; $79c5: $00
	ld   hl, sp-$01                                  ; $79c6: $f8 $ff
	rlca                                             ; $79c8: $07
	rst  $38                                         ; $79c9: $ff
	ret  nz                                          ; $79ca: $c0

	rst  $38                                         ; $79cb: $ff
	ccf                                              ; $79cc: $3f
	rst  $38                                         ; $79cd: $ff
	nop                                              ; $79ce: $00
	add  h                                           ; $79cf: $84
	rst  $38                                         ; $79d0: $ff
	add  b                                           ; $79d1: $80
	nop                                              ; $79d2: $00
	inc  bc                                          ; $79d3: $03
	rst  $38                                         ; $79d4: $ff
	add  b                                           ; $79d5: $80
	rst  $38                                         ; $79d6: $ff
	ld   a, a                                        ; $79d7: $7f
	add  c                                           ; $79d8: $81
	rst  $38                                         ; $79d9: $ff
	nop                                              ; $79da: $00
	nop                                              ; $79db: $00
	add  h                                           ; $79dc: $84
	rst  $38                                         ; $79dd: $ff
	add  hl, bc                                      ; $79de: $09
	nop                                              ; $79df: $00
	rrca                                             ; $79e0: $0f
	rst  $38                                         ; $79e1: $ff
	rrca                                             ; $79e2: $0f
	rst  $38                                         ; $79e3: $ff
	ldh  a, [rIE]                                    ; $79e4: $f0 $ff
	ldh  a, [rIE]                                    ; $79e6: $f0 $ff
	nop                                              ; $79e8: $00
	add  h                                           ; $79e9: $84
	cp   $00                                         ; $79ea: $fe $00
	nop                                              ; $79ec: $00
	add  d                                           ; $79ed: $82
	rst  $38                                         ; $79ee: $ff
	ld   [$ff00], sp                                 ; $79ef: $08 $00 $ff
	nop                                              ; $79f2: $00
	rst  $38                                         ; $79f3: $ff
	nop                                              ; $79f4: $00
	rlca                                             ; $79f5: $07
	nop                                              ; $79f6: $00
	rlca                                             ; $79f7: $07
	nop                                              ; $79f8: $00
	add  b                                           ; $79f9: $80
	rlca                                             ; $79fa: $07
	ld   c, $0f                                      ; $79fb: $0e $0f
	ldh  a, [rIE]                                    ; $79fd: $f0 $ff
	add  b                                           ; $79ff: $80
	rst  $38                                         ; $7a00: $ff
	ld   a, a                                        ; $7a01: $7f
	rst  $38                                         ; $7a02: $ff
	nop                                              ; $7a03: $00
	rst  $38                                         ; $7a04: $ff
	nop                                              ; $7a05: $00
	rst  $38                                         ; $7a06: $ff
	nop                                              ; $7a07: $00
	rst  $38                                         ; $7a08: $ff
	nop                                              ; $7a09: $00
	rst  $38                                         ; $7a0a: $ff
	add  b                                           ; $7a0b: $80
	cp   $15                                         ; $7a0c: $fe $15
	ld   bc, $06fd                                   ; $7a0e: $01 $fd $06
	ei                                               ; $7a11: $fb
	push af                                          ; $7a12: $f5
	rst  $30                                         ; $7a13: $f7
	dec  bc                                          ; $7a14: $0b
	xor  $1f                                         ; $7a15: $ee $1f
	ld   sp, hl                                      ; $7a17: $f9
	rlca                                             ; $7a18: $07
	rst  $20                                         ; $7a19: $e7
	ld   a, b                                        ; $7a1a: $78
	sbc  a                                           ; $7a1b: $9f
	ld   h, a                                        ; $7a1c: $67
	ld   a, b                                        ; $7a1d: $78
	sbc  b                                           ; $7a1e: $98
	ldh  [$67], a                                    ; $7a1f: $e0 $67
	add  a                                           ; $7a21: $87
	sbc  b                                           ; $7a22: $98
	jr   @-$7e                                       ; $7a23: $18 $80

	ld   h, b                                        ; $7a25: $60

jr_013_7a26:
	add  b                                           ; $7a26: $80
	rst  $38                                         ; $7a27: $ff
	nop                                              ; $7a28: $00
	nop                                              ; $7a29: $00
	add  b                                           ; $7a2a: $80
	rst  $38                                         ; $7a2b: $ff
	add  c                                           ; $7a2c: $81
	nop                                              ; $7a2d: $00
	add  b                                           ; $7a2e: $80
	rst  $38                                         ; $7a2f: $ff
	add  d                                           ; $7a30: $82
	nop                                              ; $7a31: $00
	add  b                                           ; $7a32: $80
	inc  e                                           ; $7a33: $1c
	jr   nz, jr_013_7a26                             ; $7a34: $20 $f0

	rst  $38                                         ; $7a36: $ff
	ld   [hl], b                                     ; $7a37: $70
	rst  $38                                         ; $7a38: $ff
	adc  a                                           ; $7a39: $8f
	ld   a, a                                        ; $7a3a: $7f
	ld   [hl], e                                     ; $7a3b: $73
	rrca                                             ; $7a3c: $0f
	adc  h                                           ; $7a3d: $8c
	add  e                                           ; $7a3e: $83
	di                                               ; $7a3f: $f3
	ldh  a, [rAUD3LEVEL]                             ; $7a40: $f0 $1c
	inc  a                                           ; $7a42: $3c
	inc  hl                                          ; $7a43: $23
	inc  de                                          ; $7a44: $13
	ld   de, $01ff                                   ; $7a45: $11 $ff $01
	rst  $38                                         ; $7a48: $ff
	nop                                              ; $7a49: $00
	rst  $38                                         ; $7a4a: $ff
	ccf                                              ; $7a4b: $3f
	rst  $38                                         ; $7a4c: $ff
	ret  nz                                          ; $7a4d: $c0

	rst  $38                                         ; $7a4e: $ff
	ld   [hl], b                                     ; $7a4f: $70
	rst  $38                                         ; $7a50: $ff
	or   a                                           ; $7a51: $b7
	ld   a, a                                        ; $7a52: $7f
	ld   e, e                                        ; $7a53: $5b
	ccf                                              ; $7a54: $3f
	call c, $ff81                                    ; $7a55: $dc $81 $ff
	inc  d                                           ; $7a58: $14
	nop                                              ; $7a59: $00
	rst  $38                                         ; $7a5a: $ff
	add  b                                           ; $7a5b: $80
	rst  $38                                         ; $7a5c: $ff
	ld   a, a                                        ; $7a5d: $7f
	rst  $38                                         ; $7a5e: $ff
	nop                                              ; $7a5f: $00
	rst  $38                                         ; $7a60: $ff
	ldh  a, [rIE]                                    ; $7a61: $f0 $ff
	ldh  a, [rIE]                                    ; $7a63: $f0 $ff
	nop                                              ; $7a65: $00
	rst  $38                                         ; $7a66: $ff
	nop                                              ; $7a67: $00
	rst  $38                                         ; $7a68: $ff
	db   $fc                                         ; $7a69: $fc
	rst  $38                                         ; $7a6a: $ff
	inc  bc                                          ; $7a6b: $03
	rst  $38                                         ; $7a6c: $ff
	nop                                              ; $7a6d: $00
	add  c                                           ; $7a6e: $81
	rst  $38                                         ; $7a6f: $ff
	ld   [$ff00], sp                                 ; $7a70: $08 $00 $ff
	nop                                              ; $7a73: $00
	rst  $38                                         ; $7a74: $ff
	nop                                              ; $7a75: $00
	rst  $38                                         ; $7a76: $ff
	nop                                              ; $7a77: $00
	rst  $38                                         ; $7a78: $ff
	nop                                              ; $7a79: $00
	add  c                                           ; $7a7a: $81
	rst  $38                                         ; $7a7b: $ff
	inc  c                                           ; $7a7c: $0c
	nop                                              ; $7a7d: $00
	rst  $38                                         ; $7a7e: $ff
	add  b                                           ; $7a7f: $80
	rst  $38                                         ; $7a80: $ff
	ld   a, a                                        ; $7a81: $7f
	rst  $38                                         ; $7a82: $ff
	nop                                              ; $7a83: $00
	rst  $38                                         ; $7a84: $ff
	nop                                              ; $7a85: $00
	rst  $38                                         ; $7a86: $ff
	ld   [hl], b                                     ; $7a87: $70
	rst  $38                                         ; $7a88: $ff
	ld   [hl], b                                     ; $7a89: $70
	add  c                                           ; $7a8a: $81
	rst  $38                                         ; $7a8b: $ff
	ld   [bc], a                                     ; $7a8c: $02
	nop                                              ; $7a8d: $00
	rst  $38                                         ; $7a8e: $ff
	nop                                              ; $7a8f: $00
	add  c                                           ; $7a90: $81
	rst  $38                                         ; $7a91: $ff
	nop                                              ; $7a92: $00
	nop                                              ; $7a93: $00
	add  b                                           ; $7a94: $80
	rst  $38                                         ; $7a95: $ff
	nop                                              ; $7a96: $00
	nop                                              ; $7a97: $00
	add  b                                           ; $7a98: $80
	rst  $38                                         ; $7a99: $ff
	nop                                              ; $7a9a: $00
	nop                                              ; $7a9b: $00
	add  l                                           ; $7a9c: $85
	rst  $38                                         ; $7a9d: $ff
	add  b                                           ; $7a9e: $80
	ld   hl, sp-$80                                  ; $7a9f: $f8 $80
	ldh  a, [rSB]                                    ; $7aa1: $f0 $01
	rst  $38                                         ; $7aa3: $ff
	nop                                              ; $7aa4: $00
	add  b                                           ; $7aa5: $80
	rst  $38                                         ; $7aa6: $ff
	nop                                              ; $7aa7: $00
	nop                                              ; $7aa8: $00
	add  l                                           ; $7aa9: $85
	rst  $38                                         ; $7aaa: $ff
	nop                                              ; $7aab: $00
	nop                                              ; $7aac: $00
	add  c                                           ; $7aad: $81
	ld   a, a                                        ; $7aae: $7f
	ld   bc, $0080                                   ; $7aaf: $01 $80 $00
	add  b                                           ; $7ab2: $80
	rst  $38                                         ; $7ab3: $ff
	nop                                              ; $7ab4: $00
	nop                                              ; $7ab5: $00
	add  l                                           ; $7ab6: $85
	rst  $38                                         ; $7ab7: $ff
	nop                                              ; $7ab8: $00
	nop                                              ; $7ab9: $00
	add  c                                           ; $7aba: $81
	rst  $38                                         ; $7abb: $ff
	nop                                              ; $7abc: $00
	nop                                              ; $7abd: $00
	adc  l                                           ; $7abe: $8d
	rst  $38                                         ; $7abf: $ff
	inc  b                                           ; $7ac0: $04
	ldh  [rIE], a                                    ; $7ac1: $e0 $ff
	rst  $20                                         ; $7ac3: $e7
	rst  $38                                         ; $7ac4: $ff
	ld   hl, sp-$75                                  ; $7ac5: $f8 $8b
	rst  $38                                         ; $7ac7: $ff
	nop                                              ; $7ac8: $00
	nop                                              ; $7ac9: $00
	add  c                                           ; $7aca: $81
	rst  $38                                         ; $7acb: $ff
	nop                                              ; $7acc: $00
	nop                                              ; $7acd: $00
	add  a                                           ; $7ace: $87
	rst  $38                                         ; $7acf: $ff
	ld   b, $83                                      ; $7ad0: $06 $83
	rst  $38                                         ; $7ad2: $ff
	ld   [hl], e                                     ; $7ad3: $73
	rst  $38                                         ; $7ad4: $ff
	adc  a                                           ; $7ad5: $8f
	rst  $38                                         ; $7ad6: $ff
	ld   a, a                                        ; $7ad7: $7f
	add  a                                           ; $7ad8: $87
	rst  $38                                         ; $7ad9: $ff
	ld   b, $ef                                      ; $7ada: $06 $ef
	inc  e                                           ; $7adc: $1c
	db   $ed                                         ; $7add: $ed
	ld   sp, hl                                      ; $7ade: $f9
	ld   a, [de]                                     ; $7adf: $1a
	ldh  a, [c]                                      ; $7ae0: $f2
	db   $f4                                         ; $7ae1: $f4
	add  c                                           ; $7ae2: $81
	db   $e4                                         ; $7ae3: $e4
	nop                                              ; $7ae4: $00
	add  sp, -$7f                                    ; $7ae5: $e8 $81
	ret  z                                           ; $7ae7: $c8

	inc  bc                                          ; $7ae8: $03
	ret  nc                                          ; $7ae9: $d0

	sub  c                                           ; $7aea: $91
	ld   bc, $8380                                   ; $7aeb: $01 $80 $83
	nop                                              ; $7aee: $00
	add  b                                           ; $7aef: $80
	ld   bc, $1c06                                   ; $7af0: $01 $06 $1c
	nop                                              ; $7af3: $00
	ld   a, h                                        ; $7af4: $7c
	inc  e                                           ; $7af5: $1c
	db   $fc                                         ; $7af6: $fc
	ld   a, [hl]                                     ; $7af7: $7e
	cp   $80                                         ; $7af8: $fe $80
	nop                                              ; $7afa: $00
	ld   [$fffe], sp                                 ; $7afb: $08 $fe $ff
	ld   hl, $1222                                   ; $7afe: $21 $22 $12
	inc  d                                           ; $7b01: $14
	db   $fc                                         ; $7b02: $fc
	rst  $38                                         ; $7b03: $ff
	add  a                                           ; $7b04: $87
	add  b                                           ; $7b05: $80
	adc  b                                           ; $7b06: $88
	add  hl, bc                                      ; $7b07: $09
	sbc  h                                           ; $7b08: $9c
	inc  e                                           ; $7b09: $1c
	xor  d                                           ; $7b0a: $aa
	and  d                                           ; $7b0b: $a2
	jr   jr_013_7b22                                 ; $7b0c: $18 $14

	adc  h                                           ; $7b0e: $8c
	adc  [hl]                                        ; $7b0f: $8e
	ld   c, $0f                                      ; $7b10: $0e $0f
	add  b                                           ; $7b12: $80
	ld   c, a                                        ; $7b13: $4f
	add  e                                           ; $7b14: $83
	adc  a                                           ; $7b15: $8f
	ld   b, $87                                      ; $7b16: $06 $87
	sbc  a                                           ; $7b18: $9f
	sub  h                                           ; $7b19: $94
	sbc  h                                           ; $7b1a: $9c
	sbc  e                                           ; $7b1b: $9b
	ld   c, a                                        ; $7b1c: $4f
	ld   c, h                                        ; $7b1d: $4c
	add  b                                           ; $7b1e: $80
	daa                                              ; $7b1f: $27
	nop                                              ; $7b20: $00
	inc  de                                          ; $7b21: $13

jr_013_7b22:
	add  c                                           ; $7b22: $81
	sub  e                                           ; $7b23: $93
	nop                                              ; $7b24: $00
	adc  c                                           ; $7b25: $89
	add  b                                           ; $7b26: $80
	ret                                              ; $7b27: $c9


	inc  bc                                          ; $7b28: $03
	ret  z                                           ; $7b29: $c8

	push bc                                          ; $7b2a: $c5
	inc  b                                           ; $7b2b: $04
	nop                                              ; $7b2c: $00
	add  b                                           ; $7b2d: $80
	rst  $38                                         ; $7b2e: $ff
	nop                                              ; $7b2f: $00
	nop                                              ; $7b30: $00
	adc  e                                           ; $7b31: $8b
	rst  $38                                         ; $7b32: $ff
	add  b                                           ; $7b33: $80
	db   $fc                                         ; $7b34: $fc
	add  b                                           ; $7b35: $80
	ld   hl, sp-$7d                                  ; $7b36: $f8 $83
	ld   sp, hl                                      ; $7b38: $f9
	add  e                                           ; $7b39: $83
	rst  $38                                         ; $7b3a: $ff
	ld   [bc], a                                     ; $7b3b: $02
	ld   sp, hl                                      ; $7b3c: $f9
	rst  $38                                         ; $7b3d: $ff
	nop                                              ; $7b3e: $00
	add  c                                           ; $7b3f: $81
	ld   a, a                                        ; $7b40: $7f
	ld   [bc], a                                     ; $7b41: $02
	add  b                                           ; $7b42: $80
	rst  $38                                         ; $7b43: $ff
	nop                                              ; $7b44: $00

jr_013_7b45:
	add  c                                           ; $7b45: $81
	rst  $38                                         ; $7b46: $ff
	ld   b, $fd                                      ; $7b47: $06 $fd
	db   $dd                                         ; $7b49: $dd
	rst  $38                                         ; $7b4a: $ff
	adc  h                                           ; $7b4b: $8c
	ld   d, e                                        ; $7b4c: $53
	rst  $38                                         ; $7b4d: $ff
	nop                                              ; $7b4e: $00
	add  c                                           ; $7b4f: $81
	rst  $38                                         ; $7b50: $ff
	ld   [bc], a                                     ; $7b51: $02
	nop                                              ; $7b52: $00
	rst  $38                                         ; $7b53: $ff
	nop                                              ; $7b54: $00
	add  c                                           ; $7b55: $81
	rst  $38                                         ; $7b56: $ff
	dec  b                                           ; $7b57: $05
	ei                                               ; $7b58: $fb
	db   $db                                         ; $7b59: $db
	rst  JumpTable                                         ; $7b5a: $df
	jr   jr_013_7b45                                 ; $7b5b: $18 $e8

	ldh  a, [$83]                                    ; $7b5d: $f0 $83
	pop  af                                          ; $7b5f: $f1
	add  a                                           ; $7b60: $87
	db   $fd                                         ; $7b61: $fd
	ld   bc, $000c                                   ; $7b62: $01 $0c $00
	add  b                                           ; $7b65: $80
	rst  $38                                         ; $7b66: $ff
	inc  b                                           ; $7b67: $04
	nop                                              ; $7b68: $00
	rst  $38                                         ; $7b69: $ff
	ld   [hl], e                                     ; $7b6a: $73
	adc  h                                           ; $7b6b: $8c
	inc  b                                           ; $7b6c: $04
	add  l                                           ; $7b6d: $85
	adc  h                                           ; $7b6e: $8c
	ld   bc, $0088                                   ; $7b6f: $01 $88 $00
	add  b                                           ; $7b72: $80
	rst  $38                                         ; $7b73: $ff
	inc  b                                           ; $7b74: $04
	nop                                              ; $7b75: $00
	rst  $38                                         ; $7b76: $ff
	sbc  h                                           ; $7b77: $9c
	ld   h, e                                        ; $7b78: $63
	ld   hl, $6385                                   ; $7b79: $21 $85 $63
	ld   bc, $0042                                   ; $7b7c: $01 $42 $00
	add  b                                           ; $7b7f: $80
	rst  $38                                         ; $7b80: $ff
	inc  b                                           ; $7b81: $04
	nop                                              ; $7b82: $00
	rst  $38                                         ; $7b83: $ff
	rst  $20                                         ; $7b84: $e7
	jr   jr_013_7b8f                                 ; $7b85: $18 $08

	add  l                                           ; $7b87: $85
	jr   @+$03                                       ; $7b88: $18 $01

	stop                                             ; $7b8a: $10 $00
	add  b                                           ; $7b8c: $80
	rst  $38                                         ; $7b8d: $ff
	inc  b                                           ; $7b8e: $04

jr_013_7b8f:
	nop                                              ; $7b8f: $00
	rst  $38                                         ; $7b90: $ff
	add  hl, sp                                      ; $7b91: $39
	add  $42                                         ; $7b92: $c6 $42
	add  l                                           ; $7b94: $85
	add  $01                                         ; $7b95: $c6 $01
	add  h                                           ; $7b97: $84
	nop                                              ; $7b98: $00
	add  b                                           ; $7b99: $80
	rst  $38                                         ; $7b9a: $ff
	inc  b                                           ; $7b9b: $04
	nop                                              ; $7b9c: $00
	rst  $38                                         ; $7b9d: $ff
	adc  $31                                         ; $7b9e: $ce $31
	db   $10                                         ; $7ba0: $10
	add  l                                           ; $7ba1: $85
	ld   sp, $2e01                                   ; $7ba2: $31 $01 $2e
	rrca                                             ; $7ba5: $0f
	add  e                                           ; $7ba6: $83
	adc  a                                           ; $7ba7: $8f
	add  a                                           ; $7ba8: $87
	rst  $28                                         ; $7ba9: $ef
	inc  b                                           ; $7baa: $04
	adc  [hl]                                        ; $7bab: $8e
	sub  e                                           ; $7bac: $93
	sub  c                                           ; $7bad: $91
	sub  a                                           ; $7bae: $97
	and  a                                           ; $7baf: $a7
	add  c                                           ; $7bb0: $81
	daa                                              ; $7bb1: $27
	nop                                              ; $7bb2: $00
	inc  hl                                          ; $7bb3: $23
	add  c                                           ; $7bb4: $81
	cpl                                              ; $7bb5: $2f
	add  b                                           ; $7bb6: $80
	ld   l, $80                                      ; $7bb7: $2e $80
	inc  l                                           ; $7bb9: $2c
	ld   bc, $fef6                                   ; $7bba: $01 $f6 $fe
	add  d                                           ; $7bbd: $82
	rst  $38                                         ; $7bbe: $ff
	nop                                              ; $7bbf: $00
	cp   $81                                         ; $7bc0: $fe $81
	rst  $38                                         ; $7bc2: $ff
	ld   bc, $8180                                   ; $7bc3: $01 $80 $81
	add  e                                           ; $7bc6: $83
	nop                                              ; $7bc7: $00

jr_013_7bc8:
	add  d                                           ; $7bc8: $82
	xor  d                                           ; $7bc9: $aa
	ld   bc, $7f88                                   ; $7bca: $01 $88 $7f
	add  e                                           ; $7bcd: $83
	rst  $38                                         ; $7bce: $ff
	ld   a, [bc]                                     ; $7bcf: $0a
	ld   [hl], a                                     ; $7bd0: $77
	ld   a, a                                        ; $7bd1: $7f
	ld   a, $7e                                      ; $7bd2: $3e $7e
	ld   c, a                                        ; $7bd4: $4f
	sbc  a                                           ; $7bd5: $9f
	adc  a                                           ; $7bd6: $8f
	cp   a                                           ; $7bd7: $bf
	rst  JumpTable                                         ; $7bd8: $df
	rst  $38                                         ; $7bd9: $ff
	ccf                                              ; $7bda: $3f
	add  c                                           ; $7bdb: $81
	rst  $38                                         ; $7bdc: $ff
	ld   bc, $c080                                   ; $7bdd: $01 $80 $c0
	add  d                                           ; $7be0: $82
	nop                                              ; $7be1: $00
	nop                                              ; $7be2: $00
	pop  hl                                          ; $7be3: $e1
	add  c                                           ; $7be4: $81
	push hl                                          ; $7be5: $e5
	ld   bc, $e7e1                                   ; $7be6: $01 $e1 $e7
	add  b                                           ; $7be9: $80
	db   $e3                                         ; $7bea: $e3
	add  b                                           ; $7beb: $80
	rst  $20                                         ; $7bec: $e7
	add  b                                           ; $7bed: $80
	db   $eb                                         ; $7bee: $eb
	add  b                                           ; $7bef: $80
	daa                                              ; $7bf0: $27
	add  b                                           ; $7bf1: $80
	dec  bc                                          ; $7bf2: $0b
	nop                                              ; $7bf3: $00
	ld   [bc], a                                     ; $7bf4: $02
	add  c                                           ; $7bf5: $81
	rst  $38                                         ; $7bf6: $ff
	nop                                              ; $7bf7: $00
	ld   a, a                                        ; $7bf8: $7f
	adc  c                                           ; $7bf9: $89
	rst  $38                                         ; $7bfa: $ff
	nop                                              ; $7bfb: $00
	ld   a, c                                        ; $7bfc: $79
	adc  l                                           ; $7bfd: $8d
	rst  $38                                         ; $7bfe: $ff
	ld   bc, $fff9                                   ; $7bff: $01 $f9 $ff
	add  b                                           ; $7c02: $80
	add  b                                           ; $7c03: $80
	add  b                                           ; $7c04: $80
	cp   h                                           ; $7c05: $bc
	add  b                                           ; $7c06: $80
	and  l                                           ; $7c07: $a5
	add  b                                           ; $7c08: $80
	and  a                                           ; $7c09: $a7
	inc  bc                                          ; $7c0a: $03
	cp   a                                           ; $7c0b: $bf
	cp   h                                           ; $7c0c: $bc
	adc  h                                           ; $7c0d: $8c
	adc  b                                           ; $7c0e: $88
	add  b                                           ; $7c0f: $80
	sbc  b                                           ; $7c10: $98
	ld   bc, $fff8                                   ; $7c11: $01 $f8 $ff
	add  b                                           ; $7c14: $80
	nop                                              ; $7c15: $00
	add  b                                           ; $7c16: $80
	rst  $38                                         ; $7c17: $ff
	add  b                                           ; $7c18: $80
	nop                                              ; $7c19: $00
	add  c                                           ; $7c1a: $81
	rst  $38                                         ; $7c1b: $ff
	add  e                                           ; $7c1c: $83
	nop                                              ; $7c1d: $00
	nop                                              ; $7c1e: $00
	ld   c, $8d                                      ; $7c1f: $0e $8d
	db   $fd                                         ; $7c21: $fd
	nop                                              ; $7c22: $00
	ld   [$8c8d], sp                                 ; $7c23: $08 $8d $8c
	nop                                              ; $7c26: $00
	xor  c                                           ; $7c27: $a9
	adc  l                                           ; $7c28: $8d
	ld   h, e                                        ; $7c29: $63
	nop                                              ; $7c2a: $00
	ld   c, d                                        ; $7c2b: $4a
	adc  l                                           ; $7c2c: $8d
	jr   jr_013_7c2f                                 ; $7c2d: $18 $00

jr_013_7c2f:
	ld   d, d                                        ; $7c2f: $52
	adc  l                                           ; $7c30: $8d
	add  $00                                         ; $7c31: $c6 $00
	sub  h                                           ; $7c33: $94
	adc  l                                           ; $7c34: $8d
	ld   sp, $ae00                                   ; $7c35: $31 $00 $ae
	adc  l                                           ; $7c38: $8d
	rst  $28                                         ; $7c39: $ef
	ld   bc, $2cbb                                   ; $7c3a: $01 $bb $2c
	add  b                                           ; $7c3d: $80
	jr   z, jr_013_7c42                              ; $7c3e: $28 $02

	jr   nc, jr_013_7c7a                             ; $7c40: $30 $38

jr_013_7c42:
	jr   jr_013_7bc8                                 ; $7c42: $18 $84

	sbc  b                                           ; $7c44: $98
	nop                                              ; $7c45: $00
	ret  c                                           ; $7c46: $d8

	add  b                                           ; $7c47: $80
	call z, $c000                                    ; $7c48: $cc $00 $c0
	add  b                                           ; $7c4b: $80
	ld   bc, $0080                                   ; $7c4c: $01 $80 $00
	add  h                                           ; $7c4f: $84
	ld   bc, $0380                                   ; $7c50: $01 $80 $03
	add  b                                           ; $7c53: $80
	nop                                              ; $7c54: $00
	dec  b                                           ; $7c55: $05
	ld   bc, rAUD1LEN                                   ; $7c56: $01 $11 $ff
	rst  $30                                         ; $7c59: $f7
	ld   e, h                                        ; $7c5a: $5c
	ld   c, h                                        ; $7c5b: $4c
	add  b                                           ; $7c5c: $80
	db   $fc                                         ; $7c5d: $fc
	add  hl, bc                                      ; $7c5e: $09
	ld   e, a                                        ; $7c5f: $5f
	ld   e, e                                        ; $7c60: $5b
	db   $fc                                         ; $7c61: $fc
	ld   hl, sp-$01                                  ; $7c62: $f8 $ff
	db   $eb                                         ; $7c64: $eb
	cp   h                                           ; $7c65: $bc
	xor  b                                           ; $7c66: $a8
	rst  $38                                         ; $7c67: $ff
	rst  $30                                         ; $7c68: $f7
	add  d                                           ; $7c69: $82
	add  b                                           ; $7c6a: $80
	add  b                                           ; $7c6b: $80
	ld   b, b                                        ; $7c6c: $40
	add  a                                           ; $7c6d: $87
	add  b                                           ; $7c6e: $80
	ld   bc, $1795                                   ; $7c6f: $01 $95 $17
	add  b                                           ; $7c72: $80
	dec  bc                                          ; $7c73: $0b
	add  b                                           ; $7c74: $80
	rla                                              ; $7c75: $17
	ld   bc, $2f29                                   ; $7c76: $01 $29 $2f
	add  b                                           ; $7c79: $80

jr_013_7c7a:
	rla                                              ; $7c7a: $17
	add  b                                           ; $7c7b: $80
	cpl                                              ; $7c7c: $2f
	ld   bc, $5f52                                   ; $7c7d: $01 $52 $5f
	add  b                                           ; $7c80: $80
	cp   a                                           ; $7c81: $bf
	nop                                              ; $7c82: $00
	adc  c                                           ; $7c83: $89
	add  e                                           ; $7c84: $83
	rst  $38                                         ; $7c85: $ff
	nop                                              ; $7c86: $00
	ld   a, a                                        ; $7c87: $7f
	adc  b                                           ; $7c88: $88
	rst  $38                                         ; $7c89: $ff
	add  c                                           ; $7c8a: $81
	nop                                              ; $7c8b: $00
	ld   [bc], a                                     ; $7c8c: $02
	cp   $00                                         ; $7c8d: $fe $00
	xor  $87                                         ; $7c8f: $ee $87
	nop                                              ; $7c91: $00
	nop                                              ; $7c92: $00
	db   $10                                         ; $7c93: $10
	add  c                                           ; $7c94: $81
	nop                                              ; $7c95: $00
	nop                                              ; $7c96: $00
	add  d                                           ; $7c97: $82
	add  e                                           ; $7c98: $83
	nop                                              ; $7c99: $00
	nop                                              ; $7c9a: $00
	add  $83                                         ; $7c9b: $c6 $83
	nop                                              ; $7c9d: $00
	nop                                              ; $7c9e: $00
	ld   b, h                                        ; $7c9f: $44
	add  e                                           ; $7ca0: $83
	nop                                              ; $7ca1: $00
	ld   [bc], a                                     ; $7ca2: $02
	cp   $00                                         ; $7ca3: $fe $00
	db   $fc                                         ; $7ca5: $fc
	add  c                                           ; $7ca6: $81
	nop                                              ; $7ca7: $00
	inc  b                                           ; $7ca8: $04
	ld   d, $00                                      ; $7ca9: $16 $00
	inc  c                                           ; $7cab: $0c
	nop                                              ; $7cac: $00
	ld   d, $86                                      ; $7cad: $16 $86
	db   $fd                                         ; $7caf: $fd
	add  c                                           ; $7cb0: $81
	pop  af                                          ; $7cb1: $f1
	add  d                                           ; $7cb2: $82
	ldh  a, [rP1]                                    ; $7cb3: $f0 $00
	inc  b                                           ; $7cb5: $04
	add  e                                           ; $7cb6: $83
	adc  h                                           ; $7cb7: $8c
	ld   [bc], a                                     ; $7cb8: $02
	adc  b                                           ; $7cb9: $88
	rst  $38                                         ; $7cba: $ff
	nop                                              ; $7cbb: $00
	add  c                                           ; $7cbc: $81
	rst  $38                                         ; $7cbd: $ff
	nop                                              ; $7cbe: $00
	nop                                              ; $7cbf: $00
	add  c                                           ; $7cc0: $81
	ld   a, a                                        ; $7cc1: $7f
	nop                                              ; $7cc2: $00
	ld   e, [hl]                                     ; $7cc3: $5e
	add  e                                           ; $7cc4: $83
	ld   h, e                                        ; $7cc5: $63
	ld   [bc], a                                     ; $7cc6: $02
	ld   b, d                                        ; $7cc7: $42
	rst  $38                                         ; $7cc8: $ff
	nop                                              ; $7cc9: $00
	add  c                                           ; $7cca: $81
	rst  $38                                         ; $7ccb: $ff
	nop                                              ; $7ccc: $00
	nop                                              ; $7ccd: $00
	add  c                                           ; $7cce: $81
	rst  $38                                         ; $7ccf: $ff
	nop                                              ; $7cd0: $00
	rst  $30                                         ; $7cd1: $f7
	add  e                                           ; $7cd2: $83
	jr   jr_013_7cd7                                 ; $7cd3: $18 $02

	db   $10                                         ; $7cd5: $10
	rst  $38                                         ; $7cd6: $ff

jr_013_7cd7:
	nop                                              ; $7cd7: $00
	add  c                                           ; $7cd8: $81
	rst  $38                                         ; $7cd9: $ff
	nop                                              ; $7cda: $00
	nop                                              ; $7cdb: $00
	add  c                                           ; $7cdc: $81
	rst  $38                                         ; $7cdd: $ff
	nop                                              ; $7cde: $00
	cp   l                                           ; $7cdf: $bd
	add  e                                           ; $7ce0: $83
	add  $02                                         ; $7ce1: $c6 $02
	add  h                                           ; $7ce3: $84
	rst  $38                                         ; $7ce4: $ff
	nop                                              ; $7ce5: $00
	add  c                                           ; $7ce6: $81
	rst  $38                                         ; $7ce7: $ff
	nop                                              ; $7ce8: $00
	nop                                              ; $7ce9: $00
	add  c                                           ; $7cea: $81
	rst  $38                                         ; $7ceb: $ff
	nop                                              ; $7cec: $00
	rst  $28                                         ; $7ced: $ef
	add  e                                           ; $7cee: $83
	ld   sp, $2102                                   ; $7cef: $31 $02 $21
	rst  $38                                         ; $7cf2: $ff
	nop                                              ; $7cf3: $00

jr_013_7cf4:
	add  c                                           ; $7cf4: $81
	rst  $38                                         ; $7cf5: $ff
	nop                                              ; $7cf6: $00
	nop                                              ; $7cf7: $00

jr_013_7cf8:
	add  c                                           ; $7cf8: $81
	cp   $00                                         ; $7cf9: $fe $00
	ld   [hl], c                                     ; $7cfb: $71
	add  [hl]                                        ; $7cfc: $86
	rst  $28                                         ; $7cfd: $ef
	add  c                                           ; $7cfe: $81
	adc  a                                           ; $7cff: $8f
	add  d                                           ; $7d00: $82
	rrca                                             ; $7d01: $0f
	ld   bc, $eef5                                   ; $7d02: $01 $f5 $ee
	add  b                                           ; $7d05: $80
	rst  $30                                         ; $7d06: $f7
	ld   [$ffe9], sp                                 ; $7d07: $08 $e9 $ff

jr_013_7d0a:
	or   $fd                                         ; $7d0a: $f6 $fd
	ld   a, [$fdff]                                  ; $7d0c: $fa $ff $fd
	rst  $38                                         ; $7d0f: $ff
	cp   $82                                         ; $7d10: $fe $82
	rst  $38                                         ; $7d12: $ff
	nop                                              ; $7d13: $00
	nop                                              ; $7d14: $00
	add  b                                           ; $7d15: $80
	ld   b, b                                        ; $7d16: $40
	add  b                                           ; $7d17: $80
	and  b                                           ; $7d18: $a0
	add  b                                           ; $7d19: $80
	call nc, Call_013_6a11                           ; $7d1a: $d4 $11 $6a
	ld   [$f515], a                                  ; $7d1d: $ea $15 $f5
	add  [hl]                                        ; $7d20: $86
	cp   $61                                         ; $7d21: $fe $61
	rst  $38                                         ; $7d23: $ff
	or   b                                           ; $7d24: $b0
	ld   a, $49                                      ; $7d25: $3e $49
	ld   a, a                                        ; $7d27: $7f
	ret                                              ; $7d28: $c9


	rst  $38                                         ; $7d29: $ff
	ld   [$487f], sp                                 ; $7d2a: $08 $7f $48
	ccf                                              ; $7d2d: $3f
	add  b                                           ; $7d2e: $80
	ld   c, a                                        ; $7d2f: $4f
	ld   bc, $aaa2                                   ; $7d30: $01 $a2 $aa
	add  b                                           ; $7d33: $80
	push de                                          ; $7d34: $d5
	ld   bc, $8101                                   ; $7d35: $01 $01 $81
	add  b                                           ; $7d38: $80
	add  d                                           ; $7d39: $82
	add  b                                           ; $7d3a: $80
	pop  bc                                          ; $7d3b: $c1
	dec  bc                                          ; $7d3c: $0b
	ccf                                              ; $7d3d: $3f
	rst  $38                                         ; $7d3e: $ff
	sbc  [hl]                                        ; $7d3f: $9e
	cp   $d4                                         ; $7d40: $fe $d4
	rst  $30                                         ; $7d42: $f7
	and  b                                           ; $7d43: $a0
	xor  a                                           ; $7d44: $af
	inc  bc                                          ; $7d45: $03
	ld   a, a                                        ; $7d46: $7f
	inc  a                                           ; $7d47: $3c
	ld   e, a                                        ; $7d48: $5f
	add  b                                           ; $7d49: $80
	cp   a                                           ; $7d4a: $bf
	ld   a, [bc]                                     ; $7d4b: $0a
	set  7, a                                        ; $7d4c: $cb $ff
	sub  a                                           ; $7d4e: $97
	rst  $38                                         ; $7d4f: $ff
	cpl                                              ; $7d50: $2f
	rst  $38                                         ; $7d51: $ff
	ld   e, a                                        ; $7d52: $5f
	rst  $38                                         ; $7d53: $ff

jr_013_7d54:
	cp   a                                           ; $7d54: $bf
	rst  $38                                         ; $7d55: $ff
	ld   a, a                                        ; $7d56: $7f
	add  b                                           ; $7d57: $80
	rst  $38                                         ; $7d58: $ff
	rrca                                             ; $7d59: $0f
	nop                                              ; $7d5a: $00
	ld   a, [bc]                                     ; $7d5b: $0a
	nop                                              ; $7d5c: $00
	ld   b, b                                        ; $7d5d: $40
	nop                                              ; $7d5e: $00
	ld   a, [bc]                                     ; $7d5f: $0a
	nop                                              ; $7d60: $00
	ld   a, $00                                      ; $7d61: $3e $00
	ld   [hl], $00                                   ; $7d63: $36 $00
	ret  nz                                          ; $7d65: $c0

	nop                                              ; $7d66: $00
	add  b                                           ; $7d67: $80
	nop                                              ; $7d68: $00
	jr   @-$79                                       ; $7d69: $18 $85

	nop                                              ; $7d6b: $00
	nop                                              ; $7d6c: $00
	db   $10                                         ; $7d6d: $10
	add  l                                           ; $7d6e: $85
	nop                                              ; $7d6f: $00

jr_013_7d70:
	nop                                              ; $7d70: $00
	jr   z, jr_013_7cf4                              ; $7d71: $28 $81

	nop                                              ; $7d73: $00
	nop                                              ; $7d74: $00
	jr   c, jr_013_7cf8                              ; $7d75: $38 $81

	nop                                              ; $7d77: $00
	nop                                              ; $7d78: $00
	db   $10                                         ; $7d79: $10
	add  l                                           ; $7d7a: $85
	nop                                              ; $7d7b: $00
	nop                                              ; $7d7c: $00
	db   $10                                         ; $7d7d: $10
	add  e                                           ; $7d7e: $83
	nop                                              ; $7d7f: $00
	ld   [bc], a                                     ; $7d80: $02
	jr   nc, jr_013_7d83                             ; $7d81: $30 $00

jr_013_7d83:
	jr   nz, jr_013_7d0a                             ; $7d83: $20 $85

	nop                                              ; $7d85: $00
	db   $f4                                         ; $7d86: $f4
	nop                                              ; $7d87: $00
	ld   [$000d], sp                                 ; $7d88: $08 $0d $00
	ld   b, $00                                      ; $7d8b: $06 $00
	ld   [bc], a                                     ; $7d8d: $02
	nop                                              ; $7d8e: $00
	ld   [$0100], sp                                 ; $7d8f: $08 $00 $01
	add  l                                           ; $7d92: $85
	nop                                              ; $7d93: $00
	ld   [bc], a                                     ; $7d94: $02
	ld   d, b                                        ; $7d95: $50
	nop                                              ; $7d96: $00
	call nc, $0081                                   ; $7d97: $d4 $81 $00
	inc  b                                           ; $7d9a: $04
	ld   [$0800], sp                                 ; $7d9b: $08 $00 $08
	nop                                              ; $7d9e: $00
	add  h                                           ; $7d9f: $84
	sub  c                                           ; $7da0: $91
	nop                                              ; $7da1: $00
	ld   [bc], a                                     ; $7da2: $02
	dec  b                                           ; $7da3: $05
	nop                                              ; $7da4: $00
	dec  d                                           ; $7da5: $15
	add  c                                           ; $7da6: $81
	nop                                              ; $7da7: $00
	inc  b                                           ; $7da8: $04
	ld   [$0800], sp                                 ; $7da9: $08 $00 $08

jr_013_7dac:
	nop                                              ; $7dac: $00
	db   $10                                         ; $7dad: $10
	add  l                                           ; $7dae: $85
	nop                                              ; $7daf: $00
	nop                                              ; $7db0: $00
	add  b                                           ; $7db1: $80

jr_013_7db2:
	add  b                                           ; $7db2: $80
	nop                                              ; $7db3: $00
	nop                                              ; $7db4: $00
	ld   bc, $0380                                   ; $7db5: $01 $80 $03
	nop                                              ; $7db8: $00
	add  c                                           ; $7db9: $81
	add  b                                           ; $7dba: $80
	ld   bc, $0005                                   ; $7dbb: $01 $05 $00
	ld   [bc], a                                     ; $7dbe: $02
	nop                                              ; $7dbf: $00
	inc  bc                                          ; $7dc0: $03
	nop                                              ; $7dc1: $00
	ld   bc, $0087                                   ; $7dc2: $01 $87 $00
	add  b                                           ; $7dc5: $80
	add  b                                           ; $7dc6: $80
	add  b                                           ; $7dc7: $80
	ldh  [$80], a                                    ; $7dc8: $e0 $80
	ld   a, b                                        ; $7dca: $78
	add  b                                           ; $7dcb: $80
	jr   c, jr_013_7d54                              ; $7dcc: $38 $86

	nop                                              ; $7dce: $00
	nop                                              ; $7dcf: $00
	add  b                                           ; $7dd0: $80
	add  c                                           ; $7dd1: $81
	nop                                              ; $7dd2: $00
	nop                                              ; $7dd3: $00
	add  b                                           ; $7dd4: $80
	add  c                                           ; $7dd5: $81
	nop                                              ; $7dd6: $00
	add  b                                           ; $7dd7: $80
	ld   bc, $0782                                   ; $7dd8: $01 $82 $07
	add  b                                           ; $7ddb: $80
	ld   c, $80                                      ; $7ddc: $0e $80
	inc  c                                           ; $7dde: $0c
	add  b                                           ; $7ddf: $80
	jr   @-$7e                                       ; $7de0: $18 $80

	jr   nz, jr_013_7d70                             ; $7de2: $20 $8c

Call_013_7de4:
	nop                                              ; $7de4: $00
	add  b                                           ; $7de5: $80
	ld   b, b                                        ; $7de6: $40
	add  b                                           ; $7de7: $80
	ret  nz                                          ; $7de8: $c0

	add  b                                           ; $7de9: $80
	add  b                                           ; $7dea: $80
	adc  h                                           ; $7deb: $8c
	nop                                              ; $7dec: $00
	nop                                              ; $7ded: $00
	ld   [bc], a                                     ; $7dee: $02
	add  c                                           ; $7def: $81
	ld   bc, $0202                                   ; $7df0: $01 $02 $02
	nop                                              ; $7df3: $00
	ld   bc, $0083                                   ; $7df4: $01 $83 $00
	ld   b, $03                                      ; $7df7: $06 $03
	nop                                              ; $7df9: $00
	inc  bc                                          ; $7dfa: $03
	nop                                              ; $7dfb: $00
	rlca                                             ; $7dfc: $07
	nop                                              ; $7dfd: $00
	ld   hl, sp-$80                                  ; $7dfe: $f8 $80
	ld   b, $80                                      ; $7e00: $06 $80
	cp   $0f                                         ; $7e02: $fe $0f
	ld   a, [hl]                                     ; $7e04: $7e
	cp   $3e                                         ; $7e05: $fe $3e
	ld   a, a                                        ; $7e07: $7f
	inc  e                                           ; $7e08: $1c
	inc  a                                           ; $7e09: $3c
	inc  c                                           ; $7e0a: $0c
	inc  e                                           ; $7e0b: $1c
	inc  b                                           ; $7e0c: $04
	jr   z, jr_013_7e0f                              ; $7e0d: $28 $00

jr_013_7e0f:
	ld   d, h                                        ; $7e0f: $54
	jr   nz, jr_013_7e3b                             ; $7e10: $20 $29

	jr   nc, @-$4e                                   ; $7e12: $30 $b0

	add  b                                           ; $7e14: $80
	ld   e, b                                        ; $7e15: $58
	ld   bc, $6766                                   ; $7e16: $01 $66 $67
	add  b                                           ; $7e19: $80
	cp   b                                           ; $7e1a: $b8
	dec  b                                           ; $7e1b: $05
	ld   c, h                                        ; $7e1c: $4c
	call z, Call_013_7630                            ; $7e1d: $cc $30 $76
	nop                                              ; $7e20: $00
	jr   c, jr_013_7db2                              ; $7e21: $38 $8f

	nop                                              ; $7e23: $00
	inc  b                                           ; $7e24: $04
	ret  nz                                          ; $7e25: $c0

	nop                                              ; $7e26: $00
	ldh  [rP1], a                                    ; $7e27: $e0 $00
	jr   nc, jr_013_7dac                             ; $7e29: $30 $81

	nop                                              ; $7e2b: $00
	ld   [$0080], sp                                 ; $7e2c: $08 $80 $00
	ld   c, b                                        ; $7e2f: $48
	nop                                              ; $7e30: $00
	and  h                                           ; $7e31: $a4
	db   $10                                         ; $7e32: $10
	ld   [de], a                                     ; $7e33: $12
	inc  d                                           ; $7e34: $14
	sub  l                                           ; $7e35: $95
	add  b                                           ; $7e36: $80
	inc  l                                           ; $7e37: $2c
	add  b                                           ; $7e38: $80
	ld   l, d                                        ; $7e39: $6a
	rlca                                             ; $7e3a: $07

jr_013_7e3b:
	ld   a, [de]                                     ; $7e3b: $1a
	dec  de                                          ; $7e3c: $1b
	inc  [hl]                                        ; $7e3d: $34
	or   [hl]                                        ; $7e3e: $b6
	ld   [$004c], sp                                 ; $7e3f: $08 $4c $00
	ret  z                                           ; $7e42: $c8

	add  b                                           ; $7e43: $80
	nop                                              ; $7e44: $00
	sub  c                                           ; $7e45: $91
	ldh  a, [$84]                                    ; $7e46: $f0 $84
	ldh  [$80], a                                    ; $7e48: $e0 $80
	ldh  a, [rP1]                                    ; $7e4a: $f0 $00
	nop                                              ; $7e4c: $00
	add  b                                           ; $7e4d: $80
	db   $fc                                         ; $7e4e: $fc
	add  l                                           ; $7e4f: $85
	nop                                              ; $7e50: $00
	add  b                                           ; $7e51: $80
	ld   bc, $0382                                   ; $7e52: $01 $82 $03
	add  b                                           ; $7e55: $80
	rlca                                             ; $7e56: $07
	ld   b, $0f                                      ; $7e57: $06 $0f
	ld   c, $1e                                      ; $7e59: $0e $1e
	jr   jr_013_7e95                                 ; $7e5b: $18 $38

	ld   sp, $8039                                   ; $7e5d: $31 $39 $80
	ld   hl, $2306                                   ; $7e60: $21 $06 $23
	cpl                                              ; $7e63: $2f
	inc  bc                                          ; $7e64: $03
	inc  sp                                          ; $7e65: $33
	inc  bc                                          ; $7e66: $03
	dec  bc                                          ; $7e67: $0b
	inc  bc                                          ; $7e68: $03
	add  b                                           ; $7e69: $80
	nop                                              ; $7e6a: $00
	dec  b                                           ; $7e6b: $05
	jr   c, @+$32                                    ; $7e6c: $38 $30

	ld   [hl], a                                     ; $7e6e: $77
	ld   h, b                                        ; $7e6f: $60
	ldh  [rIE], a                                    ; $7e70: $e0 $ff
	add  b                                           ; $7e72: $80
	cp   $80                                         ; $7e73: $fe $80
	db   $fc                                         ; $7e75: $fc
	add  d                                           ; $7e76: $82
	ld   hl, sp-$7e                                  ; $7e77: $f8 $82
	ldh  a, [$82]                                    ; $7e79: $f0 $82
	ldh  [$83], a                                    ; $7e7b: $e0 $83
	ret  nz                                          ; $7e7d: $c0

	inc  bc                                          ; $7e7e: $03
	nop                                              ; $7e7f: $00
	jr   nz, jr_013_7e82                             ; $7e80: $20 $00

jr_013_7e82:
	db   $e3                                         ; $7e82: $e3
	add  b                                           ; $7e83: $80
	ld   [bc], a                                     ; $7e84: $02
	ld   bc, $0300                                   ; $7e85: $01 $00 $03

jr_013_7e88:
	add  b                                           ; $7e88: $80
	nop                                              ; $7e89: $00

jr_013_7e8a:
	add  b                                           ; $7e8a: $80
	ld   bc, $0384                                   ; $7e8b: $01 $84 $03
	add  b                                           ; $7e8e: $80
	rlca                                             ; $7e8f: $07
	adc  l                                           ; $7e90: $8d
	nop                                              ; $7e91: $00
	inc  b                                           ; $7e92: $04
	db   $ec                                         ; $7e93: $ec
	nop                                              ; $7e94: $00

jr_013_7e95:
	inc  d                                           ; $7e95: $14

jr_013_7e96:
	nop                                              ; $7e96: $00
	ld   hl, sp-$5a                                  ; $7e97: $f8 $a6
	nop                                              ; $7e99: $00
	add  b                                           ; $7e9a: $80
	inc  e                                           ; $7e9b: $1c
	add  d                                           ; $7e9c: $82
	xor  $82                                         ; $7e9d: $ee $82
	rst  $30                                         ; $7e9f: $f7
	add  b                                           ; $7ea0: $80
	ld   [hl], a                                     ; $7ea1: $77

jr_013_7ea2:
	add  d                                           ; $7ea2: $82
	ld   a, e                                        ; $7ea3: $7b
	add  b                                           ; $7ea4: $80
	add  hl, sp                                      ; $7ea5: $39
	add  b                                           ; $7ea6: $80
	jr   nz, jr_013_7eb0                             ; $7ea7: $20 $07

	nop                                              ; $7ea9: $00
	ld   bc, $0600                                   ; $7eaa: $01 $00 $06
	nop                                              ; $7ead: $00
	jr   jr_013_7eb0                                 ; $7eae: $18 $00

jr_013_7eb0:
	rra                                              ; $7eb0: $1f
	add  b                                           ; $7eb1: $80
	nop                                              ; $7eb2: $00
	add  b                                           ; $7eb3: $80

jr_013_7eb4:
	rrca                                             ; $7eb4: $0f
	add  b                                           ; $7eb5: $80
	ld   b, $82                                      ; $7eb6: $06 $82
	inc  bc                                          ; $7eb8: $03
	add  d                                           ; $7eb9: $82
	ld   bc, $8380                                   ; $7eba: $01 $80 $83
	add  d                                           ; $7ebd: $82
	rst  $38                                         ; $7ebe: $ff
	add  b                                           ; $7ebf: $80

jr_013_7ec0:
	db   $fd                                         ; $7ec0: $fd
	add  c                                           ; $7ec1: $81
	nop                                              ; $7ec2: $00
	inc  bc                                          ; $7ec3: $03
	ldh  [rP1], a                                    ; $7ec4: $e0 $00
	jr   jr_013_7ec0                                 ; $7ec6: $18 $f8

	add  b                                           ; $7ec8: $80
	db   $fc                                         ; $7ec9: $fc
	ld   b, $7e                                      ; $7eca: $06 $7e
	ld   e, $7f                                      ; $7ecc: $1e $7f
	adc  a                                           ; $7ece: $8f
	sbc  a                                           ; $7ecf: $9f
	add  a                                           ; $7ed0: $87
	adc  a                                           ; $7ed1: $8f
	add  b                                           ; $7ed2: $80
	inc  bc                                          ; $7ed3: $03
	add  c                                           ; $7ed4: $81
	add  c                                           ; $7ed5: $81
	nop                                              ; $7ed6: $00
	add  l                                           ; $7ed7: $85
	add  b                                           ; $7ed8: $80
	add  b                                           ; $7ed9: $80
	ld   bc, $0200                                   ; $7eda: $01 $00 $02
	add  c                                           ; $7edd: $81
	add  b                                           ; $7ede: $80
	inc  b                                           ; $7edf: $04
	add  e                                           ; $7ee0: $83
	nop                                              ; $7ee1: $00
	ld   b, $00                                      ; $7ee2: $06 $00
	inc  b                                           ; $7ee4: $04
	add  d                                           ; $7ee5: $82
	nop                                              ; $7ee6: $00
	add  b                                           ; $7ee7: $80
	add  hl, bc                                      ; $7ee8: $09
	add  b                                           ; $7ee9: $80
	add  hl, sp                                      ; $7eea: $39
	add  b                                           ; $7eeb: $80
	ld   bc, $009a                                   ; $7eec: $01 $9a $00
	add  b                                           ; $7eef: $80
	jr   nz, @-$7c                                   ; $7ef0: $20 $82

	ldh  [$80], a                                    ; $7ef2: $e0 $80
	ret  nz                                          ; $7ef4: $c0

	add  b                                           ; $7ef5: $80
	nop                                              ; $7ef6: $00
	add  b                                           ; $7ef7: $80
	inc  bc                                          ; $7ef8: $03
	add  d                                           ; $7ef9: $82
	rlca                                             ; $7efa: $07
	add  b                                           ; $7efb: $80
	rrca                                             ; $7efc: $0f
	add  b                                           ; $7efd: $80
	ld   bc, $1e80                                   ; $7efe: $01 $80 $1e
	add  b                                           ; $7f01: $80
	rra                                              ; $7f02: $1f
	add  b                                           ; $7f03: $80
	ccf                                              ; $7f04: $3f
	add  b                                           ; $7f05: $80
	jr   nz, jr_013_7e88                             ; $7f06: $20 $80

	jr   c, jr_013_7e8a                              ; $7f08: $38 $80

	inc  a                                           ; $7f0a: $3c
	add  d                                           ; $7f0b: $82
	ld   a, $80                                      ; $7f0c: $3e $80
	inc  c                                           ; $7f0e: $0c
	add  b                                           ; $7f0f: $80
	inc  [hl]                                        ; $7f10: $34
	add  b                                           ; $7f11: $80
	jr   c, jr_013_7e96                              ; $7f12: $38 $82

	ld   hl, sp-$80                                  ; $7f14: $f8 $80
	jr   @-$7e                                       ; $7f16: $18 $80

	ld   [$0080], sp                                 ; $7f18: $08 $80 $00
	add  h                                           ; $7f1b: $84
	inc  b                                           ; $7f1c: $04
	add  d                                           ; $7f1d: $82
	rrca                                             ; $7f1e: $0f
	add  b                                           ; $7f1f: $80
	jr   jr_013_7ea2                                 ; $7f20: $18 $80

	db   $10                                         ; $7f22: $10
	add  b                                           ; $7f23: $80
	jr   nc, @-$7c                                   ; $7f24: $30 $82

	ld   d, b                                        ; $7f26: $50
	add  b                                           ; $7f27: $80
	jr   nc, @-$7c                                   ; $7f28: $30 $82

	ccf                                              ; $7f2a: $3f

jr_013_7f2b:
	add  d                                           ; $7f2b: $82
	dec  sp                                          ; $7f2c: $3b
	add  b                                           ; $7f2d: $80
	jr   jr_013_7eb4                                 ; $7f2e: $18 $84

	nop                                              ; $7f30: $00
	add  d                                           ; $7f31: $82
	db   $fc                                         ; $7f32: $fc
	add  b                                           ; $7f33: $80
	ld   hl, sp-$80                                  ; $7f34: $f8 $80
	ldh  [hScriptOpcodeParams+1], a                                    ; $7f36: $e0 $a1
	nop                                              ; $7f38: $00
	add  b                                           ; $7f39: $80
	ld   bc, $0380                                   ; $7f3a: $01 $80 $03
	add  b                                           ; $7f3d: $80
	rlca                                             ; $7f3e: $07
	add  b                                           ; $7f3f: $80
	rrca                                             ; $7f40: $0f
	add  d                                           ; $7f41: $82
	ld   c, $80                                      ; $7f42: $0e $80
	inc  c                                           ; $7f44: $0c
	add  b                                           ; $7f45: $80
	inc  b                                           ; $7f46: $04
	adc  d                                           ; $7f47: $8a
	nop                                              ; $7f48: $00
	add  d                                           ; $7f49: $82
	add  b                                           ; $7f4a: $80

jr_013_7f4b:
	adc  e                                           ; $7f4b: $8b
	nop                                              ; $7f4c: $00
	inc  bc                                          ; $7f4d: $03
	ld   bc, $0100                                   ; $7f4e: $01 $00 $01
	ld   [bc], a                                     ; $7f51: $02
	add  c                                           ; $7f52: $81
	inc  bc                                          ; $7f53: $03
	nop                                              ; $7f54: $00
	ld   bc, $0087                                   ; $7f55: $01 $87 $00
	add  b                                           ; $7f58: $80
	ld   bc, $0380                                   ; $7f59: $01 $80 $03
	nop                                              ; $7f5c: $00
	nop                                              ; $7f5d: $00
	add  b                                           ; $7f5e: $80
	rrca                                             ; $7f5f: $0f
	nop                                              ; $7f60: $00
	nop                                              ; $7f61: $00
	add  b                                           ; $7f62: $80
	rra                                              ; $7f63: $1f
	ld   [bc], a                                     ; $7f64: $02
	cpl                                              ; $7f65: $2f
	ccf                                              ; $7f66: $3f
	ld   l, a                                        ; $7f67: $6f
	add  l                                           ; $7f68: $85
	ld   a, a                                        ; $7f69: $7f
	add  b                                           ; $7f6a: $80
	ld   e, a                                        ; $7f6b: $5f
	ld   bc, $0302                                   ; $7f6c: $01 $02 $03
	add  h                                           ; $7f6f: $84
	rlca                                             ; $7f70: $07
	add  b                                           ; $7f71: $80
	rrca                                             ; $7f72: $0f
	nop                                              ; $7f73: $00
	ld   bc, $0f80                                   ; $7f74: $01 $80 $0f
	ld   bc, $0e00                                   ; $7f77: $01 $00 $0e
	add  c                                           ; $7f7a: $81
	rrca                                             ; $7f7b: $0f
	ld   bc, $0607                                   ; $7f7c: $01 $07 $06

Call_013_7f7f:
	add  b                                           ; $7f7f: $80

Call_013_7f80:
	inc  b                                           ; $7f80: $04
	nop                                              ; $7f81: $00
	nop                                              ; $7f82: $00
	add  d                                           ; $7f83: $82
	ld   bc, $0780                                   ; $7f84: $01 $80 $07
	add  b                                           ; $7f87: $80
	ld   bc, $008c                                   ; $7f88: $01 $8c $00
	ld   bc, $000e                                   ; $7f8b: $01 $0e $00
	adc  a                                           ; $7f8e: $8f
	ld   de, $1f00                                   ; $7f8f: $11 $00 $1f
	add  l                                           ; $7f92: $85
	nop                                              ; $7f93: $00
	add  b                                           ; $7f94: $80
	jr   nc, @-$7e                                   ; $7f95: $30 $80

	jr   c, @-$7e                                    ; $7f97: $38 $80

	inc  a                                           ; $7f99: $3c
	add  b                                           ; $7f9a: $80
	ld   a, $80                                      ; $7f9b: $3e $80
	ccf                                              ; $7f9d: $3f
	add  b                                           ; $7f9e: $80
	ld   a, $80                                      ; $7f9f: $3e $80
	inc  a                                           ; $7fa1: $3c
	add  b                                           ; $7fa2: $80
	jr   c, @-$7e                                    ; $7fa3: $38 $80

	jr   nc, @-$6e                                   ; $7fa5: $30 $90

	nop                                              ; $7fa7: $00
	add  b                                           ; $7fa8: $80
	jr   nc, jr_013_7f2b                             ; $7fa9: $30 $80

	inc  a                                           ; $7fab: $3c
	add  b                                           ; $7fac: $80
	ccf                                              ; $7fad: $3f
	add  b                                           ; $7fae: $80
	inc  a                                           ; $7faf: $3c
	add  b                                           ; $7fb0: $80
	jr   nc, jr_013_7f4b                             ; $7fb1: $30 $98

	nop                                              ; $7fb3: $00
	add  b                                           ; $7fb4: $80
	ccf                                              ; $7fb5: $3f
	adc  h                                           ; $7fb6: $8c
	nop                                              ; $7fb7: $00
	nop                                              ; $7fb8: $00
	ld   a, a                                        ; $7fb9: $7f
	add  e                                           ; $7fba: $83
	add  b                                           ; $7fbb: $80
	ld   [bc], a                                     ; $7fbc: $02
	pop  hl                                          ; $7fbd: $e1
	ld   h, c                                        ; $7fbe: $61
	ld   h, e                                        ; $7fbf: $63
	add  b                                           ; $7fc0: $80
	ld   [hl+], a                                    ; $7fc1: $22
	nop                                              ; $7fc2: $00
	inc  hl                                          ; $7fc3: $23
	add  b                                           ; $7fc4: $80
	ld   [hl+], a                                    ; $7fc5: $22
	add  d                                           ; $7fc6: $82
	inc  hl                                          ; $7fc7: $23
	add  b                                           ; $7fc8: $80
	ld   [hl+], a                                    ; $7fc9: $22
	add  b                                           ; $7fca: $80
	ld   h, $80                                      ; $7fcb: $26 $80
	ld   a, [hl+]                                    ; $7fcd: $2a
	add  b                                           ; $7fce: $80
	ld   h, $83                                      ; $7fcf: $26 $83
	inc  hl                                          ; $7fd1: $23
	ld   bc, $ffe3                                   ; $7fd2: $01 $e3 $ff
	sub  e                                           ; $7fd5: $93
	nop                                              ; $7fd6: $00
	add  b                                           ; $7fd7: $80
	ld   b, b                                        ; $7fd8: $40
	add  b                                           ; $7fd9: $80
	ret  nz                                          ; $7fda: $c0

	add  d                                           ; $7fdb: $82
	ldh  [rP1], a                                    ; $7fdc: $e0 $00
	nop                                              ; $7fde: $00
	add  b                                           ; $7fdf: $80
	ldh  [rIE], a                                    ; $7fe0: $e0 $ff
	nop                                              ; $7fe2: $00
	rst  $38                                         ; $7fe3: $ff
	nop                                              ; $7fe4: $00
	rst  $38                                         ; $7fe5: $ff
	nop                                              ; $7fe6: $00
	rst  $38                                         ; $7fe7: $ff
	nop                                              ; $7fe8: $00
	rst  $38                                         ; $7fe9: $ff
	nop                                              ; $7fea: $00
	rst  $38                                         ; $7feb: $ff
	nop                                              ; $7fec: $00
	rst  $38                                         ; $7fed: $ff
	nop                                              ; $7fee: $00
	rst  $38                                         ; $7fef: $ff
	nop                                              ; $7ff0: $00
	sub  l                                           ; $7ff1: $95
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
