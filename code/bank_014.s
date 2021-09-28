; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $014", ROMX[$4000], BANK[$14]

	xor  l                                           ; $4000: $ad
	inc  b                                           ; $4001: $04
	add  b                                           ; $4002: $80
	nop                                              ; $4003: $00
	ld   a, [bc]                                     ; $4004: $0a
	rra                                              ; $4005: $1f
	nop                                              ; $4006: $00
	cpl                                              ; $4007: $2f
	rra                                              ; $4008: $1f
	ld   b, b                                        ; $4009: $40
	jr   nc, jr_014_4013                             ; $400a: $30 $07

	daa                                              ; $400c: $27
	jr   z, @+$2e                                    ; $400d: $28 $2c

	cpl                                              ; $400f: $2f
	add  c                                           ; $4010: $81
	jr   z, jr_014_401a                              ; $4011: $28 $07

jr_014_4013:
	ld   h, e                                        ; $4013: $63
	nop                                              ; $4014: $00
	rst  $28                                         ; $4015: $ef
	rrca                                             ; $4016: $0f
	ret  z                                           ; $4017: $c8

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4018: $cf
	ld   c, c                                        ; $4019: $49

jr_014_401a:
	ld   c, a                                        ; $401a: $4f
	add  b                                           ; $401b: $80
	jp   $1b02                                       ; $401c: $c3 $02 $1b


	inc  bc                                          ; $401f: $03
	db   $e3                                         ; $4020: $e3
	add  c                                           ; $4021: $81
	inc  bc                                          ; $4022: $03
	rlca                                             ; $4023: $07
	cp   $00                                         ; $4024: $fe $00
	rst  $30                                         ; $4026: $f7
	ldh  a, [rAUD1LOW]                               ; $4027: $f0 $13
	di                                               ; $4029: $f3
	sub  d                                           ; $402a: $92
	ldh  a, [c]                                      ; $402b: $f2
	add  b                                           ; $402c: $80
	jp   $d802                                       ; $402d: $c3 $02 $d8


	ret  nz                                          ; $4030: $c0

	rst  ToBoot                                         ; $4031: $c7
	add  c                                           ; $4032: $81
	ret  nz                                          ; $4033: $c0

	inc  c                                           ; $4034: $0c
	ld   h, b                                        ; $4035: $60
	nop                                              ; $4036: $00
	ld   hl, sp+$00                                  ; $4037: $f8 $00
	db   $f4                                         ; $4039: $f4
	ld   hl, sp+$02                                  ; $403a: $f8 $02
	inc  c                                           ; $403c: $0c
	ldh  [$e4], a                                    ; $403d: $e0 $e4
	inc  d                                           ; $403f: $14
	inc  [hl]                                        ; $4040: $34
	db   $f4                                         ; $4041: $f4
	add  c                                           ; $4042: $81
	inc  d                                           ; $4043: $14
	inc  bc                                          ; $4044: $03
	ld   a, $00                                      ; $4045: $3e $00
	ld   a, a                                        ; $4047: $7f
	nop                                              ; $4048: $00
	add  b                                           ; $4049: $80
	ccf                                              ; $404a: $3f
	add  b                                           ; $404b: $80
	db   $20, $80                                    ; $404c: $20 $80
	cpl                                              ; $404e: $2f
	add  b                                           ; $404f: $80
	jr   z, jr_014_4052                              ; $4050: $28 $00

jr_014_4052:
	dec  hl                                          ; $4052: $2b

jr_014_4053:
	add  c                                           ; $4053: $81
	jr   z, jr_014_405b                              ; $4054: $28 $05

	ld   a, e                                        ; $4056: $7b
	nop                                              ; $4057: $00
	ei                                               ; $4058: $fb
	inc  bc                                          ; $4059: $03
	ldh  a, [c]                                      ; $405a: $f2

jr_014_405b:
	di                                               ; $405b: $f3
	add  b                                           ; $405c: $80
	inc  de                                          ; $405d: $13
	add  b                                           ; $405e: $80
	db   $d3                                         ; $405f: $d3
	add  b                                           ; $4060: $80
	ld   d, e                                        ; $4061: $53
	add  b                                           ; $4062: $80
	ld   [hl], e                                     ; $4063: $73
	add  b                                           ; $4064: $80
	inc  bc                                          ; $4065: $03
	dec  b                                           ; $4066: $05
	ld   e, $00                                      ; $4067: $1e $00
	rst  JumpTable                                         ; $4069: $df
	ret  nz                                          ; $406a: $c0

	ld   c, a                                        ; $406b: $4f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $406c: $cf
	add  b                                           ; $406d: $80
	ret  z                                           ; $406e: $c8

jr_014_406f:
	add  b                                           ; $406f: $80
	res  0, b                                        ; $4070: $cb $80
	jp   z, $ce80                                    ; $4072: $ca $80 $ce

	add  b                                           ; $4075: $80
	ret  nz                                          ; $4076: $c0

	inc  bc                                          ; $4077: $03
	ld   a, a                                        ; $4078: $7f
	nop                                              ; $4079: $00
	cp   $00                                         ; $407a: $fe $00
	add  b                                           ; $407c: $80
	db   $fc                                         ; $407d: $fc
	add  b                                           ; $407e: $80
	inc  b                                           ; $407f: $04
	add  b                                           ; $4080: $80
	db   $f4                                         ; $4081: $f4
	add  b                                           ; $4082: $80
	inc  d                                           ; $4083: $14
	nop                                              ; $4084: $00
	call nc, $1481                                   ; $4085: $d4 $81 $14
	nop                                              ; $4088: $00

jr_014_4089:
	ld   a, $81                                      ; $4089: $3e $81

jr_014_408b:
	nop                                              ; $408b: $00
	inc  c                                           ; $408c: $0c
	jr   nz, jr_014_408f                             ; $408d: $20 $00

jr_014_408f:
	jr   nz, jr_014_4091                             ; $408f: $20 $00

jr_014_4091:
	ld   [$0e00], sp                                 ; $4091: $08 $00 $0e
	nop                                              ; $4094: $00
	ld   bc, $0400                                   ; $4095: $01 $00 $04
	ld   bc, $8103                                   ; $4098: $01 $03 $81
	nop                                              ; $409b: $00
	nop                                              ; $409c: $00
	ld   [bc], a                                     ; $409d: $02
	add  c                                           ; $409e: $81
	nop                                              ; $409f: $00
	nop                                              ; $40a0: $00
	inc  b                                           ; $40a1: $04
	add  c                                           ; $40a2: $81
	ld   bc, $c904                                   ; $40a3: $01 $04 $c9
	inc  bc                                          ; $40a6: $03
	inc  sp                                          ; $40a7: $33
	ld   [bc], a                                     ; $40a8: $02
	db   $fd                                         ; $40a9: $fd
	add  c                                           ; $40aa: $81
	nop                                              ; $40ab: $00
	nop                                              ; $40ac: $00
	add  b                                           ; $40ad: $80
	add  c                                           ; $40ae: $81
	nop                                              ; $40af: $00
	nop                                              ; $40b0: $00
	ld   b, b                                        ; $40b1: $40
	add  c                                           ; $40b2: $81
	nop                                              ; $40b3: $00
	inc  b                                           ; $40b4: $04
	daa                                              ; $40b5: $27
	add  b                                           ; $40b6: $80
	sbc  b                                           ; $40b7: $98
	add  c                                           ; $40b8: $81
	ld   a, [hl]                                     ; $40b9: $7e
	add  c                                           ; $40ba: $81
	nop                                              ; $40bb: $00
	ld   b, $08                                      ; $40bc: $06 $08
	nop                                              ; $40be: $00
	ld   [rROMB0], sp                                 ; $40bf: $08 $00 $20
	nop                                              ; $40c2: $00
	ldh  [$81], a                                    ; $40c3: $e0 $81
	nop                                              ; $40c5: $00
	inc  b                                           ; $40c6: $04
	ld   b, b                                        ; $40c7: $40
	nop                                              ; $40c8: $00
	add  b                                           ; $40c9: $80
	nop                                              ; $40ca: $00

jr_014_40cb:
	db   $10                                         ; $40cb: $10
	adc  b                                           ; $40cc: $88

Call_014_40cd:
	ld   l, h                                        ; $40cd: $6c
	ld   [bc], a                                     ; $40ce: $02
	jr   z, jr_014_40d1                              ; $40cf: $28 $00

jr_014_40d1:
	jr   c, jr_014_4053                              ; $40d1: $38 $80

	nop                                              ; $40d3: $00
	nop                                              ; $40d4: $00
	rrca                                             ; $40d5: $0f
	add  b                                           ; $40d6: $80
	nop                                              ; $40d7: $00
	ld   bc, $f606                                   ; $40d8: $01 $06 $f6
	add  b                                           ; $40db: $80
	ld   [bc], a                                     ; $40dc: $02
	add  b                                           ; $40dd: $80
	ld   [hl], d                                     ; $40de: $72
	ld   bc, $f202                                   ; $40df: $01 $02 $f2
	add  b                                           ; $40e2: $80
	rlca                                             ; $40e3: $07
	rlca                                             ; $40e4: $07
	nop                                              ; $40e5: $00
	rrca                                             ; $40e6: $0f
	nop                                              ; $40e7: $00
	inc  a                                           ; $40e8: $3c
	nop                                              ; $40e9: $00
	ld   h, [hl]                                     ; $40ea: $66
	inc  a                                           ; $40eb: $3c
	jr   jr_014_406f                                 ; $40ec: $18 $81

	inc  h                                           ; $40ee: $24
	dec  d                                           ; $40ef: $15
	and  h                                           ; $40f0: $a4
	inc  h                                           ; $40f1: $24
	nop                                              ; $40f2: $00
	inc  a                                           ; $40f3: $3c
	ld   e, d                                        ; $40f4: $5a
	nop                                              ; $40f5: $00
	cp   h                                           ; $40f6: $bc
	nop                                              ; $40f7: $00
	ld   a, h                                        ; $40f8: $7c
	nop                                              ; $40f9: $00
	add  $7c                                         ; $40fa: $c6 $7c
	jr   c, @+$46                                    ; $40fc: $38 $44

	ld   d, h                                        ; $40fe: $54
	ld   b, h                                        ; $40ff: $44
	ld   d, h                                        ; $4100: $54
	ld   b, h                                        ; $4101: $44
	nop                                              ; $4102: $00
	ld   a, h                                        ; $4103: $7c
	cp   d                                           ; $4104: $ba
	nop                                              ; $4105: $00
	add  b                                           ; $4106: $80
	jr   z, jr_014_4089                              ; $4107: $28 $80

	jr   c, jr_014_408b                              ; $4109: $38 $80

	nop                                              ; $410b: $00
	ld   bc, $0084                                   ; $410c: $01 $84 $00
	add  b                                           ; $410f: $80
	ld   [hl], b                                     ; $4110: $70
	ld   bc, $7057                                   ; $4111: $01 $57 $70
	add  b                                           ; $4114: $80
	ld   a, a                                        ; $4115: $7f
	inc  bc                                          ; $4116: $03
	ld   h, b                                        ; $4117: $60
	ld   a, a                                        ; $4118: $7f
	call nz, $8003                                   ; $4119: $c4 $03 $80
	nop                                              ; $411c: $00
	nop                                              ; $411d: $00
	rlca                                             ; $411e: $07
	add  e                                           ; $411f: $83
	nop                                              ; $4120: $00
	ld   bc, $00c0                                   ; $4121: $01 $c0 $00
	add  d                                           ; $4124: $82
	add  b                                           ; $4125: $80
	ld   bc, $c0e0                                   ; $4126: $01 $e0 $c0
	add  b                                           ; $4129: $80
	nop                                              ; $412a: $00
	nop                                              ; $412b: $00
	ldh  [$83], a                                    ; $412c: $e0 $83
	nop                                              ; $412e: $00
	ld   bc, $0003                                   ; $412f: $01 $03 $00
	add  d                                           ; $4132: $82
	ld   bc, $2901                                   ; $4133: $01 $01 $29
	inc  d                                           ; $4136: $14
	add  b                                           ; $4137: $80
	inc  e                                           ; $4138: $1c
	add  b                                           ; $4139: $80
	nop                                              ; $413a: $00
	ld   bc, $0021                                   ; $413b: $01 $21 $00
	add  b                                           ; $413e: $80
	ld   c, $01                                      ; $413f: $0e $01
	ld   [$800e], a                                  ; $4141: $ea $0e $80
	cp   $03                                         ; $4144: $fe $03
	ld   b, $fe                                      ; $4146: $06 $fe
	ld   d, h                                        ; $4148: $54

jr_014_4149:
	jr   z, jr_014_40cb                              ; $4149: $28 $80

	ld   l, $80                                      ; $414b: $2e $80
	ld   [hl+], a                                    ; $414d: $22
	add  b                                           ; $414e: $80
	ld   a, $80                                      ; $414f: $3e $80
	nop                                              ; $4151: $00
	ld   bc, $0080                                   ; $4152: $01 $80 $00
	add  b                                           ; $4155: $80
	ld   a, a                                        ; $4156: $7f
	inc  bc                                          ; $4157: $03
	ld   b, b                                        ; $4158: $40
	ld   a, a                                        ; $4159: $7f
	call nz, $8003                                   ; $415a: $c4 $03 $80
	nop                                              ; $415d: $00
	nop                                              ; $415e: $00
	rlca                                             ; $415f: $07
	add  e                                           ; $4160: $83
	nop                                              ; $4161: $00
	ld   bc, $00c0                                   ; $4162: $01 $c0 $00
	add  d                                           ; $4165: $82
	add  b                                           ; $4166: $80
	ld   bc, $c0e0                                   ; $4167: $01 $e0 $c0
	add  b                                           ; $416a: $80
	nop                                              ; $416b: $00
	nop                                              ; $416c: $00
	ldh  [$83], a                                    ; $416d: $e0 $83
	nop                                              ; $416f: $00
	ld   bc, $0003                                   ; $4170: $01 $03 $00

jr_014_4173:
	add  d                                           ; $4173: $82
	ld   bc, $e901                                   ; $4174: $01 $01 $e9
	inc  d                                           ; $4177: $14
	add  b                                           ; $4178: $80
	ld   [hl], h                                     ; $4179: $74
	add  b                                           ; $417a: $80
	ld   b, h                                        ; $417b: $44
	add  b                                           ; $417c: $80
	ld   a, h                                        ; $417d: $7c
	add  b                                           ; $417e: $80
	nop                                              ; $417f: $00
	ld   bc, $0001                                   ; $4180: $01 $01 $00
	add  b                                           ; $4183: $80
	cp   $01                                         ; $4184: $fe $01
	ld   [bc], a                                     ; $4186: $02
	cp   $82                                         ; $4187: $fe $82
	nop                                              ; $4189: $00
	nop                                              ; $418a: $00
	ld   [bc], a                                     ; $418b: $02
	add  c                                           ; $418c: $81
	nop                                              ; $418d: $00
	ld   b, $02                                      ; $418e: $06 $02
	nop                                              ; $4190: $00
	inc  c                                           ; $4191: $0c
	nop                                              ; $4192: $00
	jr   nc, jr_014_4198                             ; $4193: $30 $03

	jp   $0e80                                       ; $4195: $c3 $80 $0e


jr_014_4198:
	add  b                                           ; $4198: $80
	xor  $80                                         ; $4199: $ee $80
	cp   h                                           ; $419b: $bc
	dec  b                                           ; $419c: $05
	call z, Call_014_40cd                            ; $419d: $cc $cd $40
	ld   c, b                                        ; $41a0: $48
	ldh  [$ee], a                                    ; $41a1: $e0 $ee
	add  b                                           ; $41a3: $80
	ldh  [$03], a                                    ; $41a4: $e0 $03
	add  b                                           ; $41a6: $80
	sbc  b                                           ; $41a7: $98
	nop                                              ; $41a8: $00
	rra                                              ; $41a9: $1f
	add  b                                           ; $41aa: $80
	xor  $80                                         ; $41ab: $ee $80
	ld   a, d                                        ; $41ad: $7a
	add  b                                           ; $41ae: $80
	ld   h, [hl]                                     ; $41af: $66
	inc  bc                                          ; $41b0: $03
	inc  b                                           ; $41b1: $04
	inc  h                                           ; $41b2: $24
	ld   c, $ee                                      ; $41b3: $0e $ee
	add  b                                           ; $41b5: $80
	ld   c, $03                                      ; $41b6: $0e $03
	inc  bc                                          ; $41b8: $03
	inc  sp                                          ; $41b9: $33
	nop                                              ; $41ba: $00
	adc  a                                           ; $41bb: $8f
	add  c                                           ; $41bc: $81
	nop                                              ; $41bd: $00
	nop                                              ; $41be: $00
	add  b                                           ; $41bf: $80
	add  c                                           ; $41c0: $81
	nop                                              ; $41c1: $00
	ld   [$0080], sp                                 ; $41c2: $08 $80 $00
	ld   h, b                                        ; $41c5: $60
	nop                                              ; $41c6: $00
	jr   jr_014_4149                                 ; $41c7: $18 $80

	add  [hl]                                        ; $41c9: $86
	ldh  [$62], a                                    ; $41ca: $e0 $62
	add  d                                           ; $41cc: $82
	ld   [hl], h                                     ; $41cd: $74
	ld   [bc], a                                     ; $41ce: $02
	ld   h, h                                        ; $41cf: $64
	jr   nz, jr_014_420a                             ; $41d0: $20 $38

	adc  b                                           ; $41d2: $88
	nop                                              ; $41d3: $00
	nop                                              ; $41d4: $00
	ld   a, b                                        ; $41d5: $78
	add  b                                           ; $41d6: $80
	nop                                              ; $41d7: $00
	add  b                                           ; $41d8: $80
	jr   nc, jr_014_41de                             ; $41d9: $30 $03

	db   $10                                         ; $41db: $10
	ld   d, b                                        ; $41dc: $50
	db   $10                                         ; $41dd: $10

jr_014_41de:
	ld   d, h                                        ; $41de: $54
	add  b                                           ; $41df: $80
	db   $10                                         ; $41e0: $10
	add  b                                           ; $41e1: $80
	jr   c, jr_014_41f1                              ; $41e2: $38 $0d

	nop                                              ; $41e4: $00
	ld   a, h                                        ; $41e5: $7c
	nop                                              ; $41e6: $00
	ld   a, h                                        ; $41e7: $7c
	nop                                              ; $41e8: $00
	add  $7c                                         ; $41e9: $c6 $7c
	jr   c, jr_014_4231                              ; $41eb: $38 $44

	ld   h, b                                        ; $41ed: $60
	inc  a                                           ; $41ee: $3c
	ld   e, b                                        ; $41ef: $58
	ld   h, b                                        ; $41f0: $60

jr_014_41f1:
	jr   nz, jr_014_4173                             ; $41f1: $20 $80

	ld   a, h                                        ; $41f3: $7c
	inc  d                                           ; $41f4: $14
	nop                                              ; $41f5: $00
	cp   $00                                         ; $41f6: $fe $00
	ld   a, h                                        ; $41f8: $7c
	nop                                              ; $41f9: $00
	add  $7c                                         ; $41fa: $c6 $7c
	jr   c, jr_014_4242                              ; $41fc: $38 $44

	ld   b, b                                        ; $41fe: $40
	inc  e                                           ; $41ff: $1c
	jr   jr_014_4246                                 ; $4200: $18 $44

	nop                                              ; $4202: $00
	ld   a, h                                        ; $4203: $7c
	cp   d                                           ; $4204: $ba
	nop                                              ; $4205: $00
	jp   Jump_014_607f                               ; $4206: $c3 $7f $60


	ld   a, a                                        ; $4209: $7f

jr_014_420a:
	add  b                                           ; $420a: $80
	ld   [hl], b                                     ; $420b: $70
	ld   bc, $7057                                   ; $420c: $01 $57 $70
	add  b                                           ; $420f: $80
	nop                                              ; $4210: $00
	ld   bc, $0084                                   ; $4211: $01 $84 $00
	add  b                                           ; $4214: $80
	jr   c, @-$7e                                    ; $4215: $38 $80

	jr   z, jr_014_4219                              ; $4217: $28 $00

jr_014_4219:
	inc  a                                           ; $4219: $3c
	add  c                                           ; $421a: $81
	add  b                                           ; $421b: $80
	add  b                                           ; $421c: $80
	nop                                              ; $421d: $00
	nop                                              ; $421e: $00
	ret  nz                                          ; $421f: $c0

	add  e                                           ; $4220: $83
	nop                                              ; $4221: $00
	ld   bc, $0007                                   ; $4222: $01 $07 $00
	add  b                                           ; $4225: $80
	inc  bc                                          ; $4226: $03
	nop                                              ; $4227: $00
	dec  b                                           ; $4228: $05
	add  c                                           ; $4229: $81
	ld   bc, $0080                                   ; $422a: $01 $80 $00
	nop                                              ; $422d: $00
	inc  bc                                          ; $422e: $03
	add  e                                           ; $422f: $83
	nop                                              ; $4230: $00

jr_014_4231:
	ld   bc, $00e0                                   ; $4231: $01 $e0 $00
	add  b                                           ; $4234: $80
	ret  nz                                          ; $4235: $c0

	inc  bc                                          ; $4236: $03
	dec  e                                           ; $4237: $1d
	cp   $06                                         ; $4238: $fe $06
	cp   $80                                         ; $423a: $fe $80
	ld   c, $01                                      ; $423c: $0e $01
	ld   [$800e], a                                  ; $423e: $ea $0e $80
	nop                                              ; $4241: $00

jr_014_4242:
	ld   bc, $0021                                   ; $4242: $01 $21 $00
	add  b                                           ; $4245: $80

jr_014_4246:
	inc  e                                           ; $4246: $1c
	add  b                                           ; $4247: $80
	inc  d                                           ; $4248: $14
	inc  bc                                          ; $4249: $03
	add  c                                           ; $424a: $81
	ld   a, a                                        ; $424b: $7f
	ld   b, b                                        ; $424c: $40
	ld   a, a                                        ; $424d: $7f
	add  b                                           ; $424e: $80
	nop                                              ; $424f: $00
	ld   bc, $0080                                   ; $4250: $01 $80 $00
	add  b                                           ; $4253: $80
	ld   a, $80                                      ; $4254: $3e $80
	ld   [hl+], a                                    ; $4256: $22

jr_014_4257:
	add  b                                           ; $4257: $80
	ld   l, $80                                      ; $4258: $2e $80
	jr   z, jr_014_425c                              ; $425a: $28 $00

jr_014_425c:
	ccf                                              ; $425c: $3f
	add  c                                           ; $425d: $81
	add  b                                           ; $425e: $80
	add  b                                           ; $425f: $80
	nop                                              ; $4260: $00
	nop                                              ; $4261: $00
	ret  nz                                          ; $4262: $c0

	add  e                                           ; $4263: $83
	nop                                              ; $4264: $00
	ld   bc, $0007                                   ; $4265: $01 $07 $00
	add  b                                           ; $4268: $80
	inc  bc                                          ; $4269: $03
	nop                                              ; $426a: $00
	dec  b                                           ; $426b: $05
	add  c                                           ; $426c: $81
	ld   bc, $0080                                   ; $426d: $01 $80 $00
	nop                                              ; $4270: $00
	inc  bc                                          ; $4271: $03
	add  e                                           ; $4272: $83
	nop                                              ; $4273: $00
	ld   bc, $00e0                                   ; $4274: $01 $e0 $00
	add  b                                           ; $4277: $80
	ret  nz                                          ; $4278: $c0

	inc  bc                                          ; $4279: $03
	dec  e                                           ; $427a: $1d
	cp   $02                                         ; $427b: $fe $02
	cp   $80                                         ; $427d: $fe $80
	nop                                              ; $427f: $00
	ld   bc, $0001                                   ; $4280: $01 $01 $00
	add  b                                           ; $4283: $80
	ld   a, h                                        ; $4284: $7c
	add  b                                           ; $4285: $80
	ld   b, h                                        ; $4286: $44
	add  b                                           ; $4287: $80
	ld   [hl], h                                     ; $4288: $74
	add  b                                           ; $4289: $80
	inc  d                                           ; $428a: $14
	ld   b, $c1                                      ; $428b: $06 $c1
	inc  bc                                          ; $428d: $03
	inc  sp                                          ; $428e: $33
	nop                                              ; $428f: $00
	inc  c                                           ; $4290: $0c
	nop                                              ; $4291: $00
	ld   [bc], a                                     ; $4292: $02
	add  c                                           ; $4293: $81
	nop                                              ; $4294: $00
	nop                                              ; $4295: $00
	ld   [bc], a                                     ; $4296: $02
	add  d                                           ; $4297: $82
	nop                                              ; $4298: $00
	ld   bc, $fa01                                   ; $4299: $01 $01 $fa
	add  b                                           ; $429c: $80
	add  b                                           ; $429d: $80
	dec  b                                           ; $429e: $05
	ldh  [$ee], a                                    ; $429f: $e0 $ee
	ldh  [$e8], a                                    ; $42a1: $e0 $e8
	ld   b, b                                        ; $42a3: $40
	ld   b, c                                        ; $42a4: $41
	add  b                                           ; $42a5: $80
	call z, $bc80                                    ; $42a6: $cc $80 $bc
	add  b                                           ; $42a9: $80
	xor  $01                                         ; $42aa: $ee $01
	ld   [bc], a                                     ; $42ac: $02
	jp   nz, $0380                                   ; $42ad: $c2 $80 $03

	inc  bc                                          ; $42b0: $03
	ld   c, $ee                                      ; $42b1: $0e $ee
	ld   c, $2e                                      ; $42b3: $0e $2e
	add  b                                           ; $42b5: $80
	inc  b                                           ; $42b6: $04
	add  b                                           ; $42b7: $80
	ld   h, [hl]                                     ; $42b8: $66
	add  b                                           ; $42b9: $80
	ld   a, d                                        ; $42ba: $7a
	add  b                                           ; $42bb: $80
	xor  $07                                         ; $42bc: $ee $07
	add  c                                           ; $42be: $81
	add  [hl]                                        ; $42bf: $86
	add  b                                           ; $42c0: $80
	sbc  b                                           ; $42c1: $98
	nop                                              ; $42c2: $00
	ld   h, b                                        ; $42c3: $60
	nop                                              ; $42c4: $00
	add  b                                           ; $42c5: $80
	add  c                                           ; $42c6: $81
	nop                                              ; $42c7: $00
	nop                                              ; $42c8: $00
	add  b                                           ; $42c9: $80
	add  e                                           ; $42ca: $83
	nop                                              ; $42cb: $00
	ld   [$0080], sp                                 ; $42cc: $08 $80 $00
	inc  a                                           ; $42cf: $3c
	nop                                              ; $42d0: $00
	ld   h, b                                        ; $42d1: $60
	jr   c, @-$24                                    ; $42d2: $38 $da

	ld   l, b                                        ; $42d4: $68
	jr   z, jr_014_4257                              ; $42d5: $28 $80

	ld   c, b                                        ; $42d7: $48
	rlca                                             ; $42d8: $07

jr_014_42d9:
	ld   a, h                                        ; $42d9: $7c
	ld   a, [hl]                                     ; $42da: $7e
	ld   [$00e8], sp                                 ; $42db: $08 $e8 $00
	inc  e                                           ; $42de: $1c
	nop                                              ; $42df: $00
	cp   $80                                         ; $42e0: $fe $80
	nop                                              ; $42e2: $00
	add  b                                           ; $42e3: $80
	ld   a, h                                        ; $42e4: $7c
	dec  de                                          ; $42e5: $1b
	ld   b, b                                        ; $42e6: $40
	ld   b, h                                        ; $42e7: $44
	ld   a, h                                        ; $42e8: $7c
	ld   a, b                                        ; $42e9: $78
	inc  b                                           ; $42ea: $04
	add  b                                           ; $42eb: $80
	inc  a                                           ; $42ec: $3c
	ld   a, [hl-]                                    ; $42ed: $3a
	nop                                              ; $42ee: $00
	ld   a, h                                        ; $42ef: $7c
	nop                                              ; $42f0: $00
	ld   a, h                                        ; $42f1: $7c
	nop                                              ; $42f2: $00
	ret  nz                                          ; $42f3: $c0

	ld   a, b                                        ; $42f4: $78
	jr   c, jr_014_4337                              ; $42f5: $38 $40

	ld   b, [hl]                                     ; $42f7: $46
	ld   a, h                                        ; $42f8: $7c
	ld   a, b                                        ; $42f9: $78
	ld   b, h                                        ; $42fa: $44
	nop                                              ; $42fb: $00
	ld   a, h                                        ; $42fc: $7c
	cp   d                                           ; $42fd: $ba
	nop                                              ; $42fe: $00
	ld   a, h                                        ; $42ff: $7c
	nop                                              ; $4300: $00
	cp   $80                                         ; $4301: $fe $80
	nop                                              ; $4303: $00
	add  b                                           ; $4304: $80
	ld   a, h                                        ; $4305: $7c
	add  hl, bc                                      ; $4306: $09
	ld   b, h                                        ; $4307: $44
	ld   b, b                                        ; $4308: $40
	inc  c                                           ; $4309: $0c
	jp   c, $0818                                    ; $430a: $da $18 $08

	db   $10                                         ; $430d: $10
	inc  d                                           ; $430e: $14
	nop                                              ; $430f: $00
	ld   l, h                                        ; $4310: $6c
	add  c                                           ; $4311: $81
	jr   z, jr_014_4320                              ; $4312: $28 $0c

	dec  hl                                          ; $4314: $2b
	inc  l                                           ; $4315: $2c
	inc  hl                                          ; $4316: $23
	daa                                              ; $4317: $27
	db   $10                                         ; $4318: $10
	jr   nc, @+$71                                   ; $4319: $30 $6f

	rra                                              ; $431b: $1f
	jr   nc, jr_014_431e                             ; $431c: $30 $00

jr_014_431e:
	rra                                              ; $431e: $1f
	nop                                              ; $431f: $00

jr_014_4320:
	dec  b                                           ; $4320: $05
	add  c                                           ; $4321: $81
	inc  bc                                          ; $4322: $03
	inc  bc                                          ; $4323: $03
	db   $e3                                         ; $4324: $e3

jr_014_4325:
	inc  bc                                          ; $4325: $03
	db   $db                                         ; $4326: $db
	jp   Jump_014_4f80                               ; $4327: $c3 $80 $4f


	ld   b, $c9                                      ; $432a: $06 $c9
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $432c: $cf
	ld   [$e00f], sp                                 ; $432d: $08 $0f $e0
	nop                                              ; $4330: $00
	cp   a                                           ; $4331: $bf
	add  c                                           ; $4332: $81
	ret  nz                                          ; $4333: $c0

	inc  bc                                          ; $4334: $03
	rst  ToBoot                                         ; $4335: $c7
	ret  nz                                          ; $4336: $c0

jr_014_4337:
	db   $db                                         ; $4337: $db
	jp   $f280                                       ; $4338: $c3 $80 $f2


	ld   b, $93                                      ; $433b: $06 $93
	di                                               ; $433d: $f3
	db   $10                                         ; $433e: $10
	ldh  a, [rTAC]                                   ; $433f: $f0 $07
	nop                                              ; $4341: $00
	jp   nc, $1481                                   ; $4342: $d2 $81 $14

	inc  c                                           ; $4345: $0c
	call nc, $c434                                   ; $4346: $d4 $34 $c4
	db   $e4                                         ; $4349: $e4
	ld   [$f60c], sp                                 ; $434a: $08 $0c $f6
	ld   hl, sp+$0c                                  ; $434d: $f8 $0c
	nop                                              ; $434f: $00
	ld   hl, sp+$00                                  ; $4350: $f8 $00
	ld   d, h                                        ; $4352: $54
	add  c                                           ; $4353: $81
	jr   z, jr_014_4357                              ; $4354: $28 $01

	dec  hl                                          ; $4356: $2b

jr_014_4357:
	jr   z, jr_014_42d9                              ; $4357: $28 $80

	cpl                                              ; $4359: $2f
	add  b                                           ; $435a: $80
	jr   nz, @-$7e                                   ; $435b: $20 $80

	ccf                                              ; $435d: $3f
	add  b                                           ; $435e: $80
	nop                                              ; $435f: $00
	inc  bc                                          ; $4360: $03
	ld   a, a                                        ; $4361: $7f
	nop                                              ; $4362: $00
	db   $fd                                         ; $4363: $fd
	inc  bc                                          ; $4364: $03
	add  b                                           ; $4365: $80
	ld   [hl], e                                     ; $4366: $73
	add  b                                           ; $4367: $80
	ld   d, e                                        ; $4368: $53
	add  b                                           ; $4369: $80
	db   $d3                                         ; $436a: $d3
	add  b                                           ; $436b: $80
	inc  de                                          ; $436c: $13
	add  b                                           ; $436d: $80
	di                                               ; $436e: $f3
	dec  b                                           ; $436f: $05
	ld   [bc], a                                     ; $4370: $02
	inc  bc                                          ; $4371: $03
	ld   hl, sp+$00                                  ; $4372: $f8 $00
	cp   b                                           ; $4374: $b8
	ret  nz                                          ; $4375: $c0

	add  b                                           ; $4376: $80
	adc  $80                                         ; $4377: $ce $80
	jp   z, $cb80                                    ; $4379: $ca $80 $cb

	add  b                                           ; $437c: $80
	ret  z                                           ; $437d: $c8

	add  b                                           ; $437e: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $437f: $cf
	inc  b                                           ; $4380: $04
	ld   b, b                                        ; $4381: $40
	ret  nz                                          ; $4382: $c0

	rra                                              ; $4383: $1f
	nop                                              ; $4384: $00
	jp   z, $1481                                    ; $4385: $ca $81 $14

	ld   bc, $14d4                                   ; $4388: $01 $d4 $14
	add  b                                           ; $438b: $80
	db   $f4                                         ; $438c: $f4
	add  b                                           ; $438d: $80
	inc  b                                           ; $438e: $04
	add  b                                           ; $438f: $80
	db   $fc                                         ; $4390: $fc
	add  b                                           ; $4391: $80
	nop                                              ; $4392: $00
	inc  c                                           ; $4393: $0c
	cp   $00                                         ; $4394: $fe $00
	rlca                                             ; $4396: $07
	nop                                              ; $4397: $00
	ld   bc, $0e00                                   ; $4398: $01 $00 $0e
	nop                                              ; $439b: $00
	ld   [rROMB0], sp                                 ; $439c: $08 $00 $20
	nop                                              ; $439f: $00
	jr   nz, jr_014_4325                             ; $43a0: $20 $83

	nop                                              ; $43a2: $00
	ld   [bc], a                                     ; $43a3: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $43a4: $cf
	inc  bc                                          ; $43a5: $03
	res  0, c                                        ; $43a6: $cb $81
	ld   bc, $0500                                   ; $43a8: $01 $00 $05
	add  c                                           ; $43ab: $81
	nop                                              ; $43ac: $00
	nop                                              ; $43ad: $00
	ld   [bc], a                                     ; $43ae: $02
	add  c                                           ; $43af: $81
	nop                                              ; $43b0: $00
	inc  b                                           ; $43b1: $04
	ld   bc, $e700                                   ; $43b2: $01 $00 $e7
	add  b                                           ; $43b5: $80
	and  a                                           ; $43b6: $a7
	add  c                                           ; $43b7: $81
	nop                                              ; $43b8: $00
	nop                                              ; $43b9: $00
	ld   b, b                                        ; $43ba: $40
	add  c                                           ; $43bb: $81
	nop                                              ; $43bc: $00
	nop                                              ; $43bd: $00
	add  b                                           ; $43be: $80
	add  e                                           ; $43bf: $83
	nop                                              ; $43c0: $00
	nop                                              ; $43c1: $00
	ret  nz                                          ; $43c2: $c0

	add  c                                           ; $43c3: $81
	nop                                              ; $43c4: $00
	ld   b, $e0                                      ; $43c5: $06 $e0
	nop                                              ; $43c7: $00
	jr   nz, jr_014_43ca                             ; $43c8: $20 $00

jr_014_43ca:
	ld   [$0800], sp                                 ; $43ca: $08 $00 $08
	add  l                                           ; $43cd: $85
	nop                                              ; $43ce: $00
	ld   e, $7c                                      ; $43cf: $1e $7c
	nop                                              ; $43d1: $00
	add  $7c                                         ; $43d2: $c6 $7c
	jr   c, jr_014_441a                              ; $43d4: $38 $44

	nop                                              ; $43d6: $00
	ld   a, h                                        ; $43d7: $7c
	jr   c, jr_014_441e                              ; $43d8: $38 $44

	nop                                              ; $43da: $00
	ld   a, h                                        ; $43db: $7c
	cp   d                                           ; $43dc: $ba
	nop                                              ; $43dd: $00
	ld   a, h                                        ; $43de: $7c
	nop                                              ; $43df: $00
	ld   a, h                                        ; $43e0: $7c
	nop                                              ; $43e1: $00
	add  $7c                                         ; $43e2: $c6 $7c
	jr   c, jr_014_442a                              ; $43e4: $38 $44

	inc  b                                           ; $43e6: $04
	ld   a, h                                        ; $43e7: $7c
	inc  a                                           ; $43e8: $3c
	inc  b                                           ; $43e9: $04
	add  b                                           ; $43ea: $80

Call_014_43eb:
	inc  a                                           ; $43eb: $3c
	ld   a, [hl-]                                    ; $43ec: $3a
	nop                                              ; $43ed: $00
	ld   a, h                                        ; $43ee: $7c
	sbc  l                                           ; $43ef: $9d
	nop                                              ; $43f0: $00
	ld   b, $7e                                      ; $43f1: $06 $7e
	nop                                              ; $43f3: $00
	sbc  c                                           ; $43f4: $99
	inc  a                                           ; $43f5: $3c
	jr   @+$80                                       ; $43f6: $18 $7e

	inc  a                                           ; $43f8: $3c
	add  h                                           ; $43f9: $84
	ld   a, [hl]                                     ; $43fa: $7e
	inc  bc                                          ; $43fb: $03
	ld   a, a                                        ; $43fc: $7f
	ld   a, $7f                                      ; $43fd: $3e $7f
	cp   a                                           ; $43ff: $bf
	add  a                                           ; $4400: $87
	nop                                              ; $4401: $00
	inc  c                                           ; $4402: $0c
	add  c                                           ; $4403: $81
	nop                                              ; $4404: $00
	ld   a, [hl]                                     ; $4405: $7e
	nop                                              ; $4406: $00
	jr   jr_014_4445                                 ; $4407: $18 $3c

	and  l                                           ; $4409: $a5
	nop                                              ; $440a: $00
	sbc  c                                           ; $440b: $99
	inc  a                                           ; $440c: $3c
	jr   jr_014_448d                                 ; $440d: $18 $7e

	inc  a                                           ; $440f: $3c
	add  h                                           ; $4410: $84
	ld   a, [hl]                                     ; $4411: $7e
	add  hl, bc                                      ; $4412: $09
	cp   $7c                                         ; $4413: $fe $7c
	cp   $83                                         ; $4415: $fe $83
	nop                                              ; $4417: $00
	sbc  c                                           ; $4418: $99
	inc  a                                           ; $4419: $3c

jr_014_441a:
	jr   jr_014_449a                                 ; $441a: $18 $7e

	inc  a                                           ; $441c: $3c
	add  a                                           ; $441d: $87

jr_014_441e:
	ld   a, [hl]                                     ; $441e: $7e
	ld   b, $80                                      ; $441f: $06 $80
	nop                                              ; $4421: $00
	sbc  h                                           ; $4422: $9c
	ld   a, $1c                                      ; $4423: $3e $1c
	ld   a, a                                        ; $4425: $7f
	ld   a, $87                                      ; $4426: $3e $87
	ld   a, a                                        ; $4428: $7f
	ld   [bc], a                                     ; $4429: $02

jr_014_442a:
	rst  $38                                         ; $442a: $ff
	nop                                              ; $442b: $00
	add  b                                           ; $442c: $80
	add  c                                           ; $442d: $81
	nop                                              ; $442e: $00
	nop                                              ; $442f: $00
	ld   b, b                                        ; $4430: $40
	add  b                                           ; $4431: $80
	nop                                              ; $4432: $00
	ld   bc, $2080                                   ; $4433: $01 $80 $20
	add  b                                           ; $4436: $80
	add  b                                           ; $4437: $80
	add  hl, bc                                      ; $4438: $09
	ret  nz                                          ; $4439: $c0

	sub  b                                           ; $443a: $90
	ret  nz                                          ; $443b: $c0

	adc  [hl]                                        ; $443c: $8e
	nop                                              ; $443d: $00
	sbc  c                                           ; $443e: $99
	inc  a                                           ; $443f: $3c
	jr   jr_014_44c0                                 ; $4440: $18 $7e

	inc  a                                           ; $4442: $3c
	add  a                                           ; $4443: $87
	ld   a, [hl]                                     ; $4444: $7e

jr_014_4445:
	nop                                              ; $4445: $00
	rst  $38                                         ; $4446: $ff
	adc  a                                           ; $4447: $8f
	nop                                              ; $4448: $00
	ld   b, $7e                                      ; $4449: $06 $7e
	nop                                              ; $444b: $00
	sbc  c                                           ; $444c: $99
	inc  a                                           ; $444d: $3c
	jr   @+$80                                       ; $444e: $18 $7e

	inc  a                                           ; $4450: $3c
	add  l                                           ; $4451: $85
	ld   a, [hl]                                     ; $4452: $7e
	nop                                              ; $4453: $00
	rst  $38                                         ; $4454: $ff
	adc  a                                           ; $4455: $8f
	nop                                              ; $4456: $00
	ld   b, $7f                                      ; $4457: $06 $7f
	nop                                              ; $4459: $00
	sbc  a                                           ; $445a: $9f
	ccf                                              ; $445b: $3f
	rra                                              ; $445c: $1f
	ld   a, a                                        ; $445d: $7f
	ccf                                              ; $445e: $3f
	add  c                                           ; $445f: $81
	ld   a, a                                        ; $4460: $7f
	nop                                              ; $4461: $00
	ld   a, [hl]                                     ; $4462: $7e
	add  b                                           ; $4463: $80
	ld   a, a                                        ; $4464: $7f
	add  hl, bc                                      ; $4465: $09
	ld   a, [hl]                                     ; $4466: $7e
	rst  $38                                         ; $4467: $ff
	nop                                              ; $4468: $00
	cp   $00                                         ; $4469: $fe $00
	ld   sp, hl                                      ; $446b: $f9
	db   $fc                                         ; $446c: $fc
	ld   hl, sp-$02                                  ; $446d: $f8 $fe
	db   $fc                                         ; $446f: $fc
	add  c                                           ; $4470: $81
	cp   $00                                         ; $4471: $fe $00
	ld   a, [hl]                                     ; $4473: $7e
	add  b                                           ; $4474: $80
	cp   $09                                         ; $4475: $fe $09
	ld   a, [hl]                                     ; $4477: $7e
	rst  $38                                         ; $4478: $ff
	nop                                              ; $4479: $00
	ld   a, a                                        ; $447a: $7f
	nop                                              ; $447b: $00
	sbc  a                                           ; $447c: $9f
	ccf                                              ; $447d: $3f
	rra                                              ; $447e: $1f
	ld   a, a                                        ; $447f: $7f
	ccf                                              ; $4480: $3f
	add  c                                           ; $4481: $81
	ld   a, a                                        ; $4482: $7f
	nop                                              ; $4483: $00
	ld   a, [hl]                                     ; $4484: $7e
	add  b                                           ; $4485: $80
	ld   a, a                                        ; $4486: $7f
	rlca                                             ; $4487: $07
	ld   a, [hl]                                     ; $4488: $7e
	rst  $38                                         ; $4489: $ff
	nop                                              ; $448a: $00
	cp   $00                                         ; $448b: $fe $00

jr_014_448d:
	ld   sp, hl                                      ; $448d: $f9
	db   $fc                                         ; $448e: $fc
	ld   hl, sp-$7f                                  ; $448f: $f8 $81
	cp   $0e                                         ; $4491: $fe $0e
	ld   a, [$05fc]                                  ; $4493: $fa $fc $05
	nop                                              ; $4496: $00
	ld   a, [hl]                                     ; $4497: $7e
	nop                                              ; $4498: $00
	add  b                                           ; $4499: $80

jr_014_449a:
	nop                                              ; $449a: $00
	ld   a, a                                        ; $449b: $7f
	nop                                              ; $449c: $00
	sbc  a                                           ; $449d: $9f
	ccf                                              ; $449e: $3f
	rra                                              ; $449f: $1f
	ld   a, a                                        ; $44a0: $7f
	ccf                                              ; $44a1: $3f
	add  c                                           ; $44a2: $81
	ld   a, a                                        ; $44a3: $7f
	nop                                              ; $44a4: $00
	ld   a, [hl]                                     ; $44a5: $7e
	add  b                                           ; $44a6: $80
	ld   a, a                                        ; $44a7: $7f
	rlca                                             ; $44a8: $07
	ld   a, [hl]                                     ; $44a9: $7e
	rst  $38                                         ; $44aa: $ff
	nop                                              ; $44ab: $00
	cp   $00                                         ; $44ac: $fe $00
	ld   sp, hl                                      ; $44ae: $f9
	db   $fc                                         ; $44af: $fc
	ld   hl, sp-$7f                                  ; $44b0: $f8 $81
	cp   $08                                         ; $44b2: $fe $08
	ld   a, [$05fc]                                  ; $44b4: $fa $fc $05
	nop                                              ; $44b7: $00
	ld   a, [hl]                                     ; $44b8: $7e
	nop                                              ; $44b9: $00
	ld   b, b                                        ; $44ba: $40
	ccf                                              ; $44bb: $3f
	cp   a                                           ; $44bc: $bf
	add  l                                           ; $44bd: $85
	ccf                                              ; $44be: $3f
	nop                                              ; $44bf: $00

jr_014_44c0:
	rra                                              ; $44c0: $1f
	add  b                                           ; $44c1: $80
	ccf                                              ; $44c2: $3f
	dec  b                                           ; $44c3: $05
	rra                                              ; $44c4: $1f
	ld   e, a                                        ; $44c5: $5f
	rra                                              ; $44c6: $1f
	db   $fc                                         ; $44c7: $fc
	ld   a, [hl]                                     ; $44c8: $7e
	inc  a                                           ; $44c9: $3c
	add  h                                           ; $44ca: $84
	ld   a, [hl]                                     ; $44cb: $7e
	ld   bc, $7eff                                   ; $44cc: $01 $ff $7e
	add  e                                           ; $44cf: $83
	rst  $38                                         ; $44d0: $ff
	add  b                                           ; $44d1: $80
	db   $fc                                         ; $44d2: $fc
	nop                                              ; $44d3: $00
	db   $fd                                         ; $44d4: $fd
	add  l                                           ; $44d5: $85
	db   $fc                                         ; $44d6: $fc
	nop                                              ; $44d7: $00
	ld   hl, sp-$80                                  ; $44d8: $f8 $80
	db   $fc                                         ; $44da: $fc
	inc  bc                                          ; $44db: $03
	ld   hl, sp-$06                                  ; $44dc: $f8 $fa
	ld   hl, sp+$7d                                  ; $44de: $f8 $7d
	adc  l                                           ; $44e0: $8d
	ld   a, [hl]                                     ; $44e1: $7e
	add  h                                           ; $44e2: $84
	ld   a, a                                        ; $44e3: $7f
	nop                                              ; $44e4: $00
	ld   a, [hl]                                     ; $44e5: $7e
	add  b                                           ; $44e6: $80
	ld   a, a                                        ; $44e7: $7f
	add  l                                           ; $44e8: $85
	ld   a, [hl]                                     ; $44e9: $7e
	ld   [bc], a                                     ; $44ea: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $44eb: $cf
	ldh  [$c8], a                                    ; $44ec: $e0 $c8
	add  b                                           ; $44ee: $80
	ldh  [rSB], a                                    ; $44ef: $e0 $01
	ldh  a, [$e4]                                    ; $44f1: $f0 $e4
	add  b                                           ; $44f3: $80
	ldh  a, [rSB]                                    ; $44f4: $f0 $01
	ld   hl, sp+$72                                  ; $44f6: $f8 $72
	add  b                                           ; $44f8: $80
	ld   hl, sp+$03                                  ; $44f9: $f8 $03
	ld   a, h                                        ; $44fb: $7c
	add  hl, sp                                      ; $44fc: $39
	ld   a, h                                        ; $44fd: $7c
	ld   a, $8d                                      ; $44fe: $3e $8d
	ld   a, [hl]                                     ; $4500: $7e
	nop                                              ; $4501: $00
	rst  $38                                         ; $4502: $ff
	adc  l                                           ; $4503: $8d
	nop                                              ; $4504: $00
	nop                                              ; $4505: $00
	add  c                                           ; $4506: $81
	adc  l                                           ; $4507: $8d
	ld   a, [hl]                                     ; $4508: $7e
	nop                                              ; $4509: $00
	rst  $38                                         ; $450a: $ff
	adc  l                                           ; $450b: $8d
	nop                                              ; $450c: $00
	nop                                              ; $450d: $00
	add  c                                           ; $450e: $81
	xor  b                                           ; $450f: $a8
	ld   a, [hl]                                     ; $4510: $7e
	ld   bc, $7e7f                                   ; $4511: $01 $7f $7e
	add  c                                           ; $4514: $81
	ld   a, a                                        ; $4515: $7f
	nop                                              ; $4516: $00
	rst  $38                                         ; $4517: $ff
	add  l                                           ; $4518: $85
	nop                                              ; $4519: $00
	ld   [$0080], sp                                 ; $451a: $08 $80 $00
	ld   a, [hl]                                     ; $451d: $7e
	nop                                              ; $451e: $00
	ld   sp, hl                                      ; $451f: $f9
	db   $fc                                         ; $4520: $fc
	ld   hl, sp-$02                                  ; $4521: $f8 $fe
	ld   a, h                                        ; $4523: $7c
	adc  b                                           ; $4524: $88
	ld   a, [hl]                                     ; $4525: $7e
	ld   bc, $7e7f                                   ; $4526: $01 $7f $7e
	add  c                                           ; $4529: $81
	ld   a, a                                        ; $452a: $7f
	nop                                              ; $452b: $00
	rst  $38                                         ; $452c: $ff
	add  l                                           ; $452d: $85
	nop                                              ; $452e: $00
	ld   [$0080], sp                                 ; $452f: $08 $80 $00
	ld   a, [hl]                                     ; $4532: $7e
	nop                                              ; $4533: $00
	ld   sp, hl                                      ; $4534: $f9
	db   $fc                                         ; $4535: $fc
	ld   hl, sp-$02                                  ; $4536: $f8 $fe
	db   $dd                                         ; $4538: $dd
	add  e                                           ; $4539: $83
	rra                                              ; $453a: $1f
	nop                                              ; $453b: $00
	rrca                                             ; $453c: $0f
	add  b                                           ; $453d: $80
	rra                                              ; $453e: $1f
	ld   bc, $2f0f                                   ; $453f: $01 $0f $2f
	add  e                                           ; $4542: $83
	rrca                                             ; $4543: $0f
	nop                                              ; $4544: $00
	rra                                              ; $4545: $1f
	adc  l                                           ; $4546: $8d
	rst  $38                                         ; $4547: $ff
	nop                                              ; $4548: $00
	ei                                               ; $4549: $fb
	add  e                                           ; $454a: $83
	ld   hl, sp+$00                                  ; $454b: $f8 $00
	ldh  a, [$80]                                    ; $454d: $f0 $80
	ld   hl, sp+$01                                  ; $454f: $f8 $01
	ldh  a, [$f4]                                    ; $4551: $f0 $f4
	add  e                                           ; $4553: $83
	ldh  a, [rP1]                                    ; $4554: $f0 $00
	ld   a, c                                        ; $4556: $79
	sbc  l                                           ; $4557: $9d
	ld   a, [hl]                                     ; $4558: $7e
	ld   [bc], a                                     ; $4559: $02
	inc  a                                           ; $455a: $3c
	ld   a, $9c                                      ; $455b: $3e $9c
	add  b                                           ; $455d: $80
	ld   a, $01                                      ; $455e: $3e $01
	rra                                              ; $4560: $1f
	ld   c, [hl]                                     ; $4561: $4e
	add  b                                           ; $4562: $80
	rra                                              ; $4563: $1f
	ld   bc, $270f                                   ; $4564: $01 $0f $27
	add  b                                           ; $4567: $80
	rrca                                             ; $4568: $0f
	inc  bc                                          ; $4569: $03
	rlca                                             ; $456a: $07
	inc  de                                          ; $456b: $13
	rlca                                             ; $456c: $07
	adc  d                                           ; $456d: $8a
	add  [hl]                                        ; $456e: $86
	ld   a, [hl]                                     ; $456f: $7e
	ld   bc, $7efe                                   ; $4570: $01 $fe $7e
	add  e                                           ; $4573: $83
	cp   $00                                         ; $4574: $fe $00
	rst  $38                                         ; $4576: $ff
	adc  l                                           ; $4577: $8d
	nop                                              ; $4578: $00
	nop                                              ; $4579: $00
	add  c                                           ; $457a: $81
	adc  l                                           ; $457b: $8d
	ld   a, [hl]                                     ; $457c: $7e
	nop                                              ; $457d: $00
	rst  $38                                         ; $457e: $ff
	adc  l                                           ; $457f: $8d
	nop                                              ; $4580: $00
	nop                                              ; $4581: $00
	add  c                                           ; $4582: $81
	sbc  l                                           ; $4583: $9d
	ld   a, [hl]                                     ; $4584: $7e
	ld   [$7f3f], sp                                 ; $4585: $08 $3f $7f
	ld   e, a                                        ; $4588: $5f
	ccf                                              ; $4589: $3f
	and  b                                           ; $458a: $a0
	nop                                              ; $458b: $00
	ld   a, [hl]                                     ; $458c: $7e
	nop                                              ; $458d: $00
	ld   bc, $0085                                   ; $458e: $01 $85 $00
	nop                                              ; $4591: $00
	ld   bc, $fe81                                   ; $4592: $01 $81 $fe
	nop                                              ; $4595: $00
	ld   a, [hl]                                     ; $4596: $7e
	add  b                                           ; $4597: $80
	cp   $87                                         ; $4598: $fe $87
	ld   a, [hl]                                     ; $459a: $7e
	add  d                                           ; $459b: $82
	ld   a, a                                        ; $459c: $7f
	nop                                              ; $459d: $00
	ld   a, [hl]                                     ; $459e: $7e
	add  b                                           ; $459f: $80
	ld   a, a                                        ; $45a0: $7f
	add  a                                           ; $45a1: $87
	ld   a, [hl]                                     ; $45a2: $7e
	ld   [$fefc], sp                                 ; $45a3: $08 $fc $fe
	ld   a, [$05fc]                                  ; $45a6: $fa $fc $05
	nop                                              ; $45a9: $00
	ld   a, [hl]                                     ; $45aa: $7e
	nop                                              ; $45ab: $00
	add  b                                           ; $45ac: $80
	add  l                                           ; $45ad: $85
	nop                                              ; $45ae: $00
	ld   [bc], a                                     ; $45af: $02
	db   $10                                         ; $45b0: $10
	rrca                                             ; $45b1: $0f
	rlca                                             ; $45b2: $07
	add  b                                           ; $45b3: $80
	rrca                                             ; $45b4: $0f
	ld   bc, $1707                                   ; $45b5: $01 $07 $17
	add  c                                           ; $45b8: $81
	rlca                                             ; $45b9: $07
	ld   [$0703], sp                                 ; $45ba: $08 $03 $07
	dec  b                                           ; $45bd: $05
	inc  bc                                          ; $45be: $03
	ld   a, [bc]                                     ; $45bf: $0a
	nop                                              ; $45c0: $00
	rlca                                             ; $45c1: $07
	rst  $38                                         ; $45c2: $ff
	rst  $20                                         ; $45c3: $e7
	add  b                                           ; $45c4: $80
	rst  $38                                         ; $45c5: $ff
	add  e                                           ; $45c6: $83
	rst  $20                                         ; $45c7: $e7
	ld   [$e7c3], sp                                 ; $45c8: $08 $c3 $e7
	and  l                                           ; $45cb: $a5
	jp   $005a                                       ; $45cc: $c3 $5a $00


	rst  $28                                         ; $45cf: $ef
	ldh  a, [$e0]                                    ; $45d0: $f0 $e0
	add  b                                           ; $45d2: $80
	ldh  a, [rSB]                                    ; $45d3: $f0 $01
	ldh  [$e8], a                                    ; $45d5: $e0 $e8
	add  c                                           ; $45d7: $81
	ldh  [rTMA], a                                   ; $45d8: $e0 $06
	ret  nz                                          ; $45da: $c0

	ldh  [hScriptOpcodeParams], a                                    ; $45db: $e0 $a0
	ret  nz                                          ; $45dd: $c0

	ld   d, b                                        ; $45de: $50
	nop                                              ; $45df: $00
	ld   h, c                                        ; $45e0: $61
	add  a                                           ; $45e1: $87
	ld   a, [hl]                                     ; $45e2: $7e
	ld   b, $3c                                      ; $45e3: $06 $3c
	ld   a, [hl]                                     ; $45e5: $7e
	ld   e, d                                        ; $45e6: $5a
	inc  a                                           ; $45e7: $3c
	and  l                                           ; $45e8: $a5
	nop                                              ; $45e9: $00
	rst  $38                                         ; $45ea: $ff
	add  a                                           ; $45eb: $87
	ld   a, [hl]                                     ; $45ec: $7e
	ld   [$7e3c], sp                                 ; $45ed: $08 $3c $7e
	ld   e, d                                        ; $45f0: $5a
	inc  a                                           ; $45f1: $3c
	and  l                                           ; $45f2: $a5
	nop                                              ; $45f3: $00
	ld   [hl], d                                     ; $45f4: $72
	inc  bc                                          ; $45f5: $03
	add  hl, bc                                      ; $45f6: $09
	add  b                                           ; $45f7: $80
	inc  bc                                          ; $45f8: $03
	ld   bc, $0401                                   ; $45f9: $01 $01 $04
	add  b                                           ; $45fc: $80
	ld   bc, $0001                                   ; $45fd: $01 $01 $00
	ld   [bc], a                                     ; $4600: $02
	add  c                                           ; $4601: $81
	nop                                              ; $4602: $00
	ld   [bc], a                                     ; $4603: $02
	ld   bc, $0100                                   ; $4604: $01 $00 $01
	add  a                                           ; $4607: $87
	cp   $06                                         ; $4608: $fe $06
	ld   a, h                                        ; $460a: $7c
	cp   $ba                                         ; $460b: $fe $ba
	ld   a, h                                        ; $460d: $7c
	ld   b, l                                        ; $460e: $45
	nop                                              ; $460f: $00
	cp   $8d                                         ; $4610: $fe $8d
	nop                                              ; $4612: $00
	nop                                              ; $4613: $00
	add  c                                           ; $4614: $81
	add  b                                           ; $4615: $80
	ld   a, [hl]                                     ; $4616: $7e
	ld   bc, $7e7f                                   ; $4617: $01 $7f $7e
	add  c                                           ; $461a: $81
	ld   a, a                                        ; $461b: $7f
	ld   c, $3f                                      ; $461c: $0e $3f
	ld   a, a                                        ; $461e: $7f
	ld   e, a                                        ; $461f: $5f
	ccf                                              ; $4620: $3f
	and  b                                           ; $4621: $a0
	nop                                              ; $4622: $00
	ld   a, a                                        ; $4623: $7f
	nop                                              ; $4624: $00
	add  b                                           ; $4625: $80
	nop                                              ; $4626: $00
	ld   a, [hl]                                     ; $4627: $7e
	nop                                              ; $4628: $00
	ld   sp, hl                                      ; $4629: $f9
	db   $fc                                         ; $462a: $fc
	ld   hl, sp-$7f                                  ; $462b: $f8 $81
	cp   $06                                         ; $462d: $fe $06
	ld   a, [$05fc]                                  ; $462f: $fa $fc $05
	nop                                              ; $4632: $00
	cp   $00                                         ; $4633: $fe $00
	add  c                                           ; $4635: $81
	add  b                                           ; $4636: $80
	ld   a, [hl]                                     ; $4637: $7e
	ld   bc, $7e7f                                   ; $4638: $01 $7f $7e
	add  c                                           ; $463b: $81
	ld   a, a                                        ; $463c: $7f
	ld   [$7f3f], sp                                 ; $463d: $08 $3f $7f
	ld   e, a                                        ; $4640: $5f
	ccf                                              ; $4641: $3f
	and  b                                           ; $4642: $a0
	nop                                              ; $4643: $00
	ld   a, a                                        ; $4644: $7f
	nop                                              ; $4645: $00
	add  c                                           ; $4646: $81
	add  b                                           ; $4647: $80
	ld   a, [hl]                                     ; $4648: $7e
	ld   bc, $7efe                                   ; $4649: $01 $fe $7e
	add  c                                           ; $464c: $81
	cp   $0e                                         ; $464d: $fe $0e

jr_014_464f:
	db   $fc                                         ; $464f: $fc
	cp   $fa                                         ; $4650: $fe $fa
	db   $fc                                         ; $4652: $fc
	dec  b                                           ; $4653: $05
	nop                                              ; $4654: $00
	cp   $00                                         ; $4655: $fe $00
	ld   bc, $7e00                                   ; $4657: $01 $00 $7e
	nop                                              ; $465a: $00
	sbc  a                                           ; $465b: $9f
	ccf                                              ; $465c: $3f
	rra                                              ; $465d: $1f
	add  c                                           ; $465e: $81
	ld   a, a                                        ; $465f: $7f
	ld   b, $5f                                      ; $4660: $06 $5f
	ccf                                              ; $4662: $3f
	and  b                                           ; $4663: $a0
	nop                                              ; $4664: $00
	ld   a, a                                        ; $4665: $7f
	nop                                              ; $4666: $00
	add  c                                           ; $4667: $81
	add  b                                           ; $4668: $80
	ld   a, [hl]                                     ; $4669: $7e
	ld   bc, $7efe                                   ; $466a: $01 $fe $7e
	add  c                                           ; $466d: $81
	cp   $08                                         ; $466e: $fe $08
	db   $fc                                         ; $4670: $fc
	cp   $fa                                         ; $4671: $fe $fa
	db   $fc                                         ; $4673: $fc
	dec  b                                           ; $4674: $05
	nop                                              ; $4675: $00
	cp   $00                                         ; $4676: $fe $00
	add  c                                           ; $4678: $81
	add  b                                           ; $4679: $80
	ld   a, [hl]                                     ; $467a: $7e
	ld   bc, $7e7f                                   ; $467b: $01 $7f $7e
	add  c                                           ; $467e: $81
	ld   a, a                                        ; $467f: $7f
	ld   c, $3f                                      ; $4680: $0e $3f
	ld   a, a                                        ; $4682: $7f
	ld   e, a                                        ; $4683: $5f
	ccf                                              ; $4684: $3f
	and  b                                           ; $4685: $a0

Jump_014_4686:
	nop                                              ; $4686: $00
	ld   a, a                                        ; $4687: $7f
	nop                                              ; $4688: $00
	add  b                                           ; $4689: $80
	nop                                              ; $468a: $00

jr_014_468b:
	ld   a, [hl]                                     ; $468b: $7e
	nop                                              ; $468c: $00
	ld   sp, hl                                      ; $468d: $f9
	db   $fc                                         ; $468e: $fc

jr_014_468f:
	ld   hl, sp-$7f                                  ; $468f: $f8 $81
	cp   $06                                         ; $4691: $fe $06
	ld   a, [$05fc]                                  ; $4693: $fa $fc $05
	nop                                              ; $4696: $00
	cp   $00                                         ; $4697: $fe $00
	rst  $38                                         ; $4699: $ff
	add  b                                           ; $469a: $80
	nop                                              ; $469b: $00
	add  b                                           ; $469c: $80
	ld   a, a                                        ; $469d: $7f
	ld   bc, $5f40                                   ; $469e: $01 $40 $5f
	add  l                                           ; $46a1: $85
	ld   b, b                                        ; $46a2: $40
	ld   [bc], a                                     ; $46a3: $02
	ld   b, c                                        ; $46a4: $41
	ld   b, b                                        ; $46a5: $40
	ld   e, [hl]                                     ; $46a6: $5e
	add  b                                           ; $46a7: $80
	nop                                              ; $46a8: $00
	add  b                                           ; $46a9: $80
	rst  $38                                         ; $46aa: $ff
	rlca                                             ; $46ab: $07
	nop                                              ; $46ac: $00
	ldh  a, [rAUD1SWEEP]                             ; $46ad: $f0 $10
	ld   h, [hl]                                     ; $46af: $66
	ld   c, c                                        ; $46b0: $49
	jp   z, $fb9d                                    ; $46b1: $ca $9d $fb

	add  b                                           ; $46b4: $80
	ld   b, d                                        ; $46b5: $42
	ld   bc, $4a29                                   ; $46b6: $01 $29 $4a
	add  b                                           ; $46b9: $80
	nop                                              ; $46ba: $00
	add  b                                           ; $46bb: $80
	rst  $38                                         ; $46bc: $ff
	dec  bc                                          ; $46bd: $0b
	nop                                              ; $46be: $00
	dec  h                                           ; $46bf: $25
	jr   c, jr_014_464f                              ; $46c0: $38 $8d

	sbc  c                                           ; $46c2: $99
	ldh  [$2e], a                                    ; $46c3: $e0 $2e
	and  d                                           ; $46c5: $a2
	ld   d, a                                        ; $46c6: $57
	and  c                                           ; $46c7: $a1
	adc  e                                           ; $46c8: $8b
	jr   @-$7e                                       ; $46c9: $18 $80

	nop                                              ; $46cb: $00
	add  b                                           ; $46cc: $80
	cp   $0b                                         ; $46cd: $fe $0b
	ld   [bc], a                                     ; $46cf: $02
	xor  d                                           ; $46d0: $aa
	ld   a, d                                        ; $46d1: $7a
	ld   c, d                                        ; $46d2: $4a
	ld   a, d                                        ; $46d3: $7a
	jp   z, $aafa                                    ; $46d4: $ca $fa $aa

	ld   a, [$9a5a]                                  ; $46d7: $fa $5a $9a
	ld   b, d                                        ; $46da: $42
	add  b                                           ; $46db: $80
	nop                                              ; $46dc: $00
	add  b                                           ; $46dd: $80
	ld   a, a                                        ; $46de: $7f
	ld   bc, $5f40                                   ; $46df: $01 $40 $5f
	add  l                                           ; $46e2: $85
	ld   b, b                                        ; $46e3: $40
	ld   [bc], a                                     ; $46e4: $02
	ld   b, c                                        ; $46e5: $41
	ld   b, b                                        ; $46e6: $40
	ld   e, [hl]                                     ; $46e7: $5e
	add  b                                           ; $46e8: $80
	nop                                              ; $46e9: $00
	add  b                                           ; $46ea: $80
	rst  $38                                         ; $46eb: $ff
	dec  bc                                          ; $46ec: $0b
	nop                                              ; $46ed: $00
	ldh  a, [rAUD1SWEEP]                             ; $46ee: $f0 $10
	ld   h, [hl]                                     ; $46f0: $66
	ld   c, c                                        ; $46f1: $49
	jp   z, $fb9d                                    ; $46f2: $ca $9d $fb

	ld   b, d                                        ; $46f5: $42
	ld   b, [hl]                                     ; $46f6: $46
	jr   z, jr_014_4748                              ; $46f7: $28 $4f

	add  b                                           ; $46f9: $80
	nop                                              ; $46fa: $00
	add  b                                           ; $46fb: $80
	rst  $38                                         ; $46fc: $ff
	dec  bc                                          ; $46fd: $0b
	nop                                              ; $46fe: $00
	dec  h                                           ; $46ff: $25
	jr   c, jr_014_468f                              ; $4700: $38 $8d

	sbc  c                                           ; $4702: $99
	ldh  [$2e], a                                    ; $4703: $e0 $2e
	and  d                                           ; $4705: $a2
	ld   d, a                                        ; $4706: $57
	and  c                                           ; $4707: $a1
	adc  e                                           ; $4708: $8b
	jr   jr_014_468b                                 ; $4709: $18 $80

	nop                                              ; $470b: $00
	add  b                                           ; $470c: $80
	cp   $0b                                         ; $470d: $fe $0b
	ld   [bc], a                                     ; $470f: $02
	xor  d                                           ; $4710: $aa
	ld   a, d                                        ; $4711: $7a
	ld   c, d                                        ; $4712: $4a
	ld   a, d                                        ; $4713: $7a
	jp   z, $aafa                                    ; $4714: $ca $fa $aa

	ld   a, [$9a5a]                                  ; $4717: $fa $5a $9a
	ld   b, d                                        ; $471a: $42
	sub  e                                           ; $471b: $93
	nop                                              ; $471c: $00
	ld   a, [de]                                     ; $471d: $1a
	ld   [bc], a                                     ; $471e: $02
	inc  bc                                          ; $471f: $03
	ld   de, $0e1e                                   ; $4720: $11 $1e $0e
	ld   [hl], b                                     ; $4723: $70
	pop  af                                          ; $4724: $f1
	adc  d                                           ; $4725: $8a
	cp   [hl]                                        ; $4726: $be
	add  h                                           ; $4727: $84
	ld   sp, $0800                                   ; $4728: $31 $00 $08
	rrca                                             ; $472b: $0f
	ld   b, a                                        ; $472c: $47
	ld   a, c                                        ; $472d: $79
	dec  a                                           ; $472e: $3d
	push bc                                          ; $472f: $c5
	db   $ed                                         ; $4730: $ed
	dec  e                                           ; $4731: $1d
	ld   h, l                                        ; $4732: $65
	ld   l, l                                        ; $4733: $6d
	sub  l                                           ; $4734: $95
	cp   l                                           ; $4735: $bd
	ld   c, l                                        ; $4736: $4d
	ld   e, l                                        ; $4737: $5d

Jump_014_4738:
	ld   bc, $0080                                   ; $4738: $01 $80 $00
	adc  h                                           ; $473b: $8c
	add  b                                           ; $473c: $80
	add  b                                           ; $473d: $80
	nop                                              ; $473e: $00
	add  b                                           ; $473f: $80
	ld   a, a                                        ; $4740: $7f
	ld   bc, $5f40                                   ; $4741: $01 $40 $5f
	add  l                                           ; $4744: $85
	ld   b, b                                        ; $4745: $40
	ld   [bc], a                                     ; $4746: $02
	ld   b, c                                        ; $4747: $41

jr_014_4748:
	ld   b, b                                        ; $4748: $40
	ld   e, [hl]                                     ; $4749: $5e
	add  b                                           ; $474a: $80
	nop                                              ; $474b: $00
	add  b                                           ; $474c: $80
	rst  $38                                         ; $474d: $ff
	dec  bc                                          ; $474e: $0b
	nop                                              ; $474f: $00
	ldh  a, [$08]                                    ; $4750: $f0 $08
	ccf                                              ; $4752: $3f
	daa                                              ; $4753: $27
	ld   a, a                                        ; $4754: $7f
	rra                                              ; $4755: $1f
	rst  $38                                         ; $4756: $ff
	ld   a, [hl]                                     ; $4757: $7e
	cp   $fa                                         ; $4758: $fe $fa
	dec  b                                           ; $475a: $05
	add  b                                           ; $475b: $80
	nop                                              ; $475c: $00
	add  b                                           ; $475d: $80
	rst  $38                                         ; $475e: $ff
	dec  bc                                          ; $475f: $0b
	nop                                              ; $4760: $00
	rrca                                             ; $4761: $0f
	db   $10                                         ; $4762: $10
	sbc  h                                           ; $4763: $9c
	db   $e4                                         ; $4764: $e4
	sub  [hl]                                        ; $4765: $96
	add  sp, -$1d                                    ; $4766: $e8 $e3
	or   $f9                                         ; $4768: $f6 $f9
	ei                                               ; $476a: $fb
	ld   c, $80                                      ; $476b: $0e $80
	nop                                              ; $476d: $00
	add  b                                           ; $476e: $80
	cp   $01                                         ; $476f: $fe $01
	ld   [bc], a                                     ; $4771: $02
	ld   a, [$0285]                                  ; $4772: $fa $85 $02
	inc  bc                                          ; $4775: $03
	add  d                                           ; $4776: $82
	ld   [bc], a                                     ; $4777: $02
	ld   h, h                                        ; $4778: $64
	ld   b, d                                        ; $4779: $42
	add  b                                           ; $477a: $80
	ld   b, l                                        ; $477b: $45
	ld   bc, $4541                                   ; $477c: $01 $41 $45
	add  b                                           ; $477f: $80
	ld   c, b                                        ; $4780: $48
	dec  b                                           ; $4781: $05
	ld   c, c                                        ; $4782: $49
	ld   b, a                                        ; $4783: $47
	ld   b, [hl]                                     ; $4784: $46
	ld   c, b                                        ; $4785: $48
	ld   e, d                                        ; $4786: $5a
	ld   b, d                                        ; $4787: $42
	add  b                                           ; $4788: $80
	ld   e, d                                        ; $4789: $5a
	nop                                              ; $478a: $00
	ld   [bc], a                                     ; $478b: $02
	add  c                                           ; $478c: $81
	nop                                              ; $478d: $00
	add  d                                           ; $478e: $82
	ld   b, d                                        ; $478f: $42
	ld   [bc], a                                     ; $4790: $02
	ld   c, d                                        ; $4791: $4a
	ld   e, d                                        ; $4792: $5a
	ld   d, d                                        ; $4793: $52
	add  e                                           ; $4794: $83
	ld   b, d                                        ; $4795: $42
	dec  bc                                          ; $4796: $0b
	ld   l, e                                        ; $4797: $6b
	ld   h, l                                        ; $4798: $65
	ld   e, [hl]                                     ; $4799: $5e
	ld   [hl], $25                                   ; $479a: $36 $25
	rla                                              ; $479c: $17
	ld   [de], a                                     ; $479d: $12
	rlca                                             ; $479e: $07
	sub  c                                           ; $479f: $91
	jp   hl                                          ; $47a0: $e9


	ld   a, l                                        ; $47a1: $7d
	dec  b                                           ; $47a2: $05
	add  b                                           ; $47a3: $80
	ld   [$0003], sp                                 ; $47a4: $08 $03 $00
	ld   [$9a93], sp                                 ; $47a7: $08 $93 $9a
	add  b                                           ; $47aa: $80
	ld   a, d                                        ; $47ab: $7a
	add  b                                           ; $47ac: $80
	ld   a, [hl-]                                    ; $47ad: $3a
	add  b                                           ; $47ae: $80
	add  d                                           ; $47af: $82
	add  b                                           ; $47b0: $80
	ldh  a, [c]                                      ; $47b1: $f2
	ld   bc, $ca4a                                   ; $47b2: $01 $4a $ca
	add  d                                           ; $47b5: $82
	jp   c, $9c0d                                    ; $47b6: $da $0d $9c

	ld   b, d                                        ; $47b9: $42
	ld   b, a                                        ; $47ba: $47
	ld   b, l                                        ; $47bb: $45
	ld   b, e                                        ; $47bc: $43
	ld   b, h                                        ; $47bd: $44
	ld   c, c                                        ; $47be: $49
	ld   c, b                                        ; $47bf: $48
	ld   c, c                                        ; $47c0: $49
	ld   b, a                                        ; $47c1: $47
	ld   b, [hl]                                     ; $47c2: $46
	ld   c, b                                        ; $47c3: $48
	ld   e, d                                        ; $47c4: $5a
	ld   b, d                                        ; $47c5: $42
	add  b                                           ; $47c6: $80
	ld   e, d                                        ; $47c7: $5a
	nop                                              ; $47c8: $00
	inc  bc                                          ; $47c9: $03
	add  c                                           ; $47ca: $81
	nop                                              ; $47cb: $00
	add  b                                           ; $47cc: $80
	ld   b, d                                        ; $47cd: $42
	ld   b, $c1                                      ; $47ce: $06 $c1
	ld   b, b                                        ; $47d0: $40
	xor  b                                           ; $47d1: $a8
	jr   jr_014_4802                                 ; $47d2: $18 $2e

	nop                                              ; $47d4: $00
	ld   a, h                                        ; $47d5: $7c
	add  c                                           ; $47d6: $81
	ld   b, b                                        ; $47d7: $40
	inc  c                                           ; $47d8: $0c
	ld   c, c                                        ; $47d9: $49
	ld   h, l                                        ; $47da: $65
	ld   e, [hl]                                     ; $47db: $5e
	ld   [hl], $25                                   ; $47dc: $36 $25
	ld   d, $91                                      ; $47de: $16 $91
	dec  b                                           ; $47e0: $05
	ld   e, l                                        ; $47e1: $5d
	ld   hl, $01c9                                   ; $47e2: $21 $c9 $01
	inc  a                                           ; $47e5: $3c
	add  c                                           ; $47e6: $81
	nop                                              ; $47e7: $00
	dec  b                                           ; $47e8: $05
	sub  e                                           ; $47e9: $93
	sbc  d                                           ; $47ea: $9a
	ld   a, [$ba7a]                                  ; $47eb: $fa $7a $ba
	ld   a, [hl-]                                    ; $47ee: $3a
	add  b                                           ; $47ef: $80
	add  d                                           ; $47f0: $82
	add  b                                           ; $47f1: $80
	ldh  a, [c]                                      ; $47f2: $f2
	ld   bc, $ca4a                                   ; $47f3: $01 $4a $ca
	add  d                                           ; $47f6: $82
	jp   c, $8200                                    ; $47f7: $da $00 $82

	adc  l                                           ; $47fa: $8d
	nop                                              ; $47fb: $00
	ld   bc, $88af                                   ; $47fc: $01 $af $88
	add  b                                           ; $47ff: $80
	and  b                                           ; $4800: $a0
	inc  e                                           ; $4801: $1c

jr_014_4802:
	and  [hl]                                        ; $4802: $a6
	sub  h                                           ; $4803: $94
	or   h                                           ; $4804: $b4
	add  h                                           ; $4805: $84
	sub  a                                           ; $4806: $97
	and  h                                           ; $4807: $a4
	sbc  d                                           ; $4808: $9a
	sub  b                                           ; $4809: $90
	xor  h                                           ; $480a: $ac
	and  b                                           ; $480b: $a0
	sbc  b                                           ; $480c: $98
	and  b                                           ; $480d: $a0
	xor  h                                           ; $480e: $ac
	dec  h                                           ; $480f: $25
	pop  hl                                          ; $4810: $e1
	ld   [hl], c                                     ; $4811: $71
	dec  [hl]                                        ; $4812: $35
	add  hl, sp                                      ; $4813: $39
	dec  [hl]                                        ; $4814: $35
	dec  d                                           ; $4815: $15
	xor  l                                           ; $4816: $ad
	add  hl, bc                                      ; $4817: $09
	ld   l, c                                        ; $4818: $69
	add  hl, bc                                      ; $4819: $09
	pop  hl                                          ; $481a: $e1
	ld   de, $1161                                   ; $481b: $11 $61 $11
	ld   e, c                                        ; $481e: $59
	adc  l                                           ; $481f: $8d
	add  b                                           ; $4820: $80
	dec  bc                                          ; $4821: $0b
	sbc  l                                           ; $4822: $9d
	ld   b, c                                        ; $4823: $41
	ld   b, a                                        ; $4824: $47
	ld   b, c                                        ; $4825: $41
	ld   c, c                                        ; $4826: $49
	ld   c, d                                        ; $4827: $4a
	ld   c, [hl]                                     ; $4828: $4e
	ld   b, [hl]                                     ; $4829: $46
	ld   d, [hl]                                     ; $482a: $56
	ld   d, h                                        ; $482b: $54
	ld   e, b                                        ; $482c: $58
	ld   c, h                                        ; $482d: $4c
	add  b                                           ; $482e: $80
	ld   c, b                                        ; $482f: $48
	ld   [bc], a                                     ; $4830: $02
	ld   b, c                                        ; $4831: $41
	ld   c, c                                        ; $4832: $49
	or   b                                           ; $4833: $b0
	add  b                                           ; $4834: $80
	db   $fc                                         ; $4835: $fc
	add  hl, bc                                      ; $4836: $09
	cp   $7e                                         ; $4837: $fe $7e
	sbc  [hl]                                        ; $4839: $9e
	rra                                              ; $483a: $1f
	inc  e                                           ; $483b: $1c
	inc  c                                           ; $483c: $0c
	inc  e                                           ; $483d: $1c
	ld   l, $00                                      ; $483e: $2e $00
	inc  a                                           ; $4840: $3c
	add  b                                           ; $4841: $80
	nop                                              ; $4842: $00
	inc  b                                           ; $4843: $04
	ret  nz                                          ; $4844: $c0

	rst  JumpTable                                         ; $4845: $df
	ld   sp, hl                                      ; $4846: $f9
	ld   hl, sp-$07                                  ; $4847: $f8 $f9
	add  c                                           ; $4849: $81
	ld   hl, sp-$80                                  ; $484a: $f8 $80
	ld   a, b                                        ; $484c: $78
	inc  bc                                          ; $484d: $03
	jr   nc, @-$06                                   ; $484e: $30 $f8

	nop                                              ; $4850: $00
	jr   c, @-$7e                                    ; $4851: $38 $80

	nop                                              ; $4853: $00
	inc  b                                           ; $4854: $04
	rlca                                             ; $4855: $07
	or   b                                           ; $4856: $b0
	add  d                                           ; $4857: $82
	ldh  [c], a                                      ; $4858: $e2
	jp   nz, $d280                                   ; $4859: $c2 $80 $d2

	inc  b                                           ; $485c: $04
	ldh  a, [c]                                      ; $485d: $f2
	ldh  [c], a                                      ; $485e: $e2
	ld   l, d                                        ; $485f: $6a
	ld   [$817a], a                                  ; $4860: $ea $7a $81
	ld   [hl], d                                     ; $4863: $72
	add  b                                           ; $4864: $80
	ldh  a, [c]                                      ; $4865: $f2
	ld   bc, $5a98                                   ; $4866: $01 $98 $5a
	add  b                                           ; $4869: $80
	ld   e, b                                        ; $486a: $58
	inc  c                                           ; $486b: $0c
	ld   b, c                                        ; $486c: $41
	ld   d, a                                        ; $486d: $57
	ld   c, [hl]                                     ; $486e: $4e
	ld   e, b                                        ; $486f: $58
	ld   c, l                                        ; $4870: $4d
	ld   e, l                                        ; $4871: $5d
	ld   b, [hl]                                     ; $4872: $46
	ld   c, [hl]                                     ; $4873: $4e
	ld   d, d                                        ; $4874: $52
	ld   e, [hl]                                     ; $4875: $5e
	ld   b, d                                        ; $4876: $42
	ld   c, [hl]                                     ; $4877: $4e
	ld   e, b                                        ; $4878: $58
	add  c                                           ; $4879: $81
	ld   b, d                                        ; $487a: $42
	ld   [bc], a                                     ; $487b: $02
	ld   c, d                                        ; $487c: $4a
	ld   e, d                                        ; $487d: $5a
	ld   d, d                                        ; $487e: $52
	add  c                                           ; $487f: $81
	ld   b, d                                        ; $4880: $42
	nop                                              ; $4881: $00
	nop                                              ; $4882: $00
	add  c                                           ; $4883: $81
	ld   b, d                                        ; $4884: $42
	inc  de                                          ; $4885: $13
	ld   h, e                                        ; $4886: $63
	ld   l, e                                        ; $4887: $6b
	dec  bc                                          ; $4888: $0b
	ld   [$050d], sp                                 ; $4889: $08 $0d $05
	sub  c                                           ; $488c: $91
	jp   hl                                          ; $488d: $e9


	ld   a, a                                        ; $488e: $7f
	rlca                                             ; $488f: $07
	ld   c, $1f                                      ; $4890: $0e $1f
	dec  bc                                          ; $4892: $0b
	ccf                                              ; $4893: $3f
	add  l                                           ; $4894: $85
	rst  $28                                         ; $4895: $ef
	ld   c, e                                        ; $4896: $4b
	rra                                              ; $4897: $1f
	ld   b, b                                        ; $4898: $40
	jp   c, $ca80                                    ; $4899: $da $80 $ca

	inc  bc                                          ; $489c: $03
	ld   c, d                                        ; $489d: $4a
	jp   z, $8aaa                                    ; $489e: $ca $aa $8a

	add  b                                           ; $48a1: $80
	xor  d                                           ; $48a2: $aa
	ld   bc, $a282                                   ; $48a3: $01 $82 $a2
	add  d                                           ; $48a6: $82
	or   d                                           ; $48a7: $b2
	ld   bc, $5a18                                   ; $48a8: $01 $18 $5a
	add  b                                           ; $48ab: $80
	ld   e, b                                        ; $48ac: $58
	dec  l                                           ; $48ad: $2d

jr_014_48ae:
	ld   b, c                                        ; $48ae: $41
	ld   d, a                                        ; $48af: $57
	ld   c, [hl]                                     ; $48b0: $4e
	ld   e, b                                        ; $48b1: $58
	ld   c, l                                        ; $48b2: $4d
	ld   e, l                                        ; $48b3: $5d
	ld   b, [hl]                                     ; $48b4: $46
	ld   c, [hl]                                     ; $48b5: $4e
	ld   d, d                                        ; $48b6: $52
	ld   e, [hl]                                     ; $48b7: $5e
	ld   b, d                                        ; $48b8: $42
	ld   c, [hl]                                     ; $48b9: $4e
	ld   c, b                                        ; $48ba: $48
	ld   b, b                                        ; $48bb: $40
	ld   [hl], b                                     ; $48bc: $70
	ld   b, b                                        ; $48bd: $40
	ld   a, b                                        ; $48be: $78
	ld   b, b                                        ; $48bf: $40
	ld   d, b                                        ; $48c0: $50
	ld   b, b                                        ; $48c1: $40
	ld   e, [hl]                                     ; $48c2: $5e
	ld   b, b                                        ; $48c3: $40
	dec  c                                           ; $48c4: $0d
	ld   b, d                                        ; $48c5: $42
	ld   [hl], e                                     ; $48c6: $73
	ld   b, d                                        ; $48c7: $42
	ld   d, a                                        ; $48c8: $57
	inc  hl                                          ; $48c9: $23
	ld   c, a                                        ; $48ca: $4f
	ld   [$053d], sp                                 ; $48cb: $08 $3d $05
	ld   sp, $6709                                   ; $48ce: $31 $09 $67
	rlca                                             ; $48d1: $07
	sub  $12                                         ; $48d2: $d6 $12
	db   $ec                                         ; $48d4: $ec
	dec  a                                           ; $48d5: $3d
	call Call_014_4aee                               ; $48d6: $cd $ee $4a
	rra                                              ; $48d9: $1f
	ld   b, b                                        ; $48da: $40
	jp   c, $ca80                                    ; $48db: $da $80 $ca

	inc  c                                           ; $48de: $0c
	ld   c, d                                        ; $48df: $4a
	jp   z, $8aaa                                    ; $48e0: $ca $aa $8a

	xor  d                                           ; $48e3: $aa
	ld   a, [hl+]                                    ; $48e4: $2a
	ld   [bc], a                                     ; $48e5: $02
	and  d                                           ; $48e6: $a2
	cp   d                                           ; $48e7: $ba
	or   d                                           ; $48e8: $b2
	ld   a, [$f202]                                  ; $48e9: $fa $02 $f2
	adc  l                                           ; $48ec: $8d
	nop                                              ; $48ed: $00
	dec  c                                           ; $48ee: $0d
	xor  b                                           ; $48ef: $a8
	and  b                                           ; $48f0: $a0
	add  b                                           ; $48f1: $80
	sub  b                                           ; $48f2: $90
	or   d                                           ; $48f3: $b2
	and  b                                           ; $48f4: $a0
	sbc  a                                           ; $48f5: $9f
	add  b                                           ; $48f6: $80
	adc  c                                           ; $48f7: $89
	sub  c                                           ; $48f8: $91
	sbc  b                                           ; $48f9: $98
	sub  c                                           ; $48fa: $91
	add  d                                           ; $48fb: $82
	and  d                                           ; $48fc: $a2
	add  b                                           ; $48fd: $80
	add  b                                           ; $48fe: $80
	add  hl, bc                                      ; $48ff: $09
	ld   a, h                                        ; $4900: $7c
	ld   de, $0969                                   ; $4901: $11 $69 $09
	ld   sp, hl                                      ; $4904: $f9
	add  hl, de                                      ; $4905: $19
	jp   hl                                          ; $4906: $e9


	add  hl, de                                      ; $4907: $19
	add  hl, hl                                      ; $4908: $29
	add  hl, bc                                      ; $4909: $09
	add  b                                           ; $490a: $80
	dec  [hl]                                        ; $490b: $35
	inc  b                                           ; $490c: $04
	sub  l                                           ; $490d: $95
	cp   l                                           ; $490e: $bd
	add  hl, bc                                      ; $490f: $09
	ld   a, l                                        ; $4910: $7d
	ld   b, l                                        ; $4911: $45
	adc  l                                           ; $4912: $8d
	add  b                                           ; $4913: $80
	ld   bc, $438f                                   ; $4914: $01 $8f $43
	add  b                                           ; $4917: $80
	ld   b, a                                        ; $4918: $47
	ld   bc, $4743                                   ; $4919: $01 $43 $47
	add  c                                           ; $491c: $81
	ld   c, a                                        ; $491d: $4f
	nop                                              ; $491e: $00
	ld   d, a                                        ; $491f: $57
	add  b                                           ; $4920: $80
	ld   b, a                                        ; $4921: $47
	ld   bc, $4b43                                   ; $4922: $01 $43 $4b
	add  b                                           ; $4925: $80
	ld   b, e                                        ; $4926: $43
	inc  b                                           ; $4927: $04
	xor  b                                           ; $4928: $a8
	ldh  [$f0], a                                    ; $4929: $e0 $f0
	nop                                              ; $492b: $00
	jr   jr_014_48ae                                 ; $492c: $18 $80

	ldh  [rAUD2HIGH], a                              ; $492e: $e0 $19
	ldh  a, [$fe]                                    ; $4930: $f0 $fe
	ldh  [$e9], a                                    ; $4932: $e0 $e9
	and  $e4                                         ; $4934: $e6 $e4
	sub  $d4                                         ; $4936: $d6 $d4
	and  h                                           ; $4938: $a4
	ld   b, h                                        ; $4939: $44
	rrca                                             ; $493a: $0f
	cpl                                              ; $493b: $2f
	rra                                              ; $493c: $1f
	ccf                                              ; $493d: $3f
	rrca                                             ; $493e: $0f
	ld   l, a                                        ; $493f: $6f
	rlca                                             ; $4940: $07
	rst  ToBoot                                         ; $4941: $c7
	db   $10                                         ; $4942: $10
	ld   d, b                                        ; $4943: $50
	dec  e                                           ; $4944: $1d
	ld   e, l                                        ; $4945: $5d
	ld   l, [hl]                                     ; $4946: $6e
	ld   l, $3f                                      ; $4947: $2e $3f
	jr   nc, @-$79                                   ; $4949: $30 $85

	ldh  a, [c]                                      ; $494b: $f2
	ld   [de], a                                     ; $494c: $12
	ldh  [c], a                                      ; $494d: $e2
	ld   l, d                                        ; $494e: $6a
	ld   h, d                                        ; $494f: $62
	ldh  [c], a                                      ; $4950: $e2
	jp   nz, $c2d2                                   ; $4951: $c2 $d2 $c2

	ld   b, d                                        ; $4954: $42
	sub  h                                           ; $4955: $94
	ld   e, [hl]                                     ; $4956: $5e
	ld   b, [hl]                                     ; $4957: $46
	ld   e, [hl]                                     ; $4958: $5e
	ld   b, b                                        ; $4959: $40
	ld   e, b                                        ; $495a: $58
	ld   d, l                                        ; $495b: $55
	ld   b, a                                        ; $495c: $47
	ld   e, h                                        ; $495d: $5c
	ld   b, c                                        ; $495e: $41
	ld   e, a                                        ; $495f: $5f
	add  b                                           ; $4960: $80
	ld   b, b                                        ; $4961: $40
	add  b                                           ; $4962: $80
	ld   a, a                                        ; $4963: $7f
	nop                                              ; $4964: $00
	nop                                              ; $4965: $00
	add  b                                           ; $4966: $80
	add  hl, hl                                      ; $4967: $29
	ld   [$4000], sp                                 ; $4968: $08 $00 $40
	dec  sp                                          ; $496b: $3b
	dec  bc                                          ; $496c: $0b
	ld   [$0204], sp                                 ; $496d: $08 $04 $02
	ld   b, b                                        ; $4970: $40
	ld   a, $80                                      ; $4971: $3e $80
	nop                                              ; $4973: $00
	add  b                                           ; $4974: $80
	rst  $38                                         ; $4975: $ff
	dec  bc                                          ; $4976: $0b
	nop                                              ; $4977: $00
	rra                                              ; $4978: $1f
	ccf                                              ; $4979: $3f
	sbc  $ff                                         ; $497a: $de $ff
	cp   $ff                                         ; $497c: $fe $ff
	cp   $ff                                         ; $497e: $fe $ff
	inc  [hl]                                        ; $4980: $34
	ccf                                              ; $4981: $3f
	ld   a, [bc]                                     ; $4982: $0a
	add  b                                           ; $4983: $80
	nop                                              ; $4984: $00
	add  b                                           ; $4985: $80
	rst  $38                                         ; $4986: $ff
	dec  bc                                          ; $4987: $0b
	nop                                              ; $4988: $00
	ld   b, b                                        ; $4989: $40
	jp   nz, $e222                                   ; $498a: $c2 $22 $e2

	ld   b, d                                        ; $498d: $42
	ldh  [c], a                                      ; $498e: $e2
	jp   nc, $9af2                                   ; $498f: $d2 $f2 $9a

	ld   a, [$80a2]                                  ; $4992: $fa $a2 $80
	ld   [bc], a                                     ; $4995: $02
	add  b                                           ; $4996: $80
	cp   $0b                                         ; $4997: $fe $0b
	nop                                              ; $4999: $00
	ld   c, $5e                                      ; $499a: $0e $5e
	ld   b, [hl]                                     ; $499c: $46
	ld   e, [hl]                                     ; $499d: $5e
	ld   b, b                                        ; $499e: $40
	ld   e, b                                        ; $499f: $58
	ld   d, l                                        ; $49a0: $55
	ld   b, a                                        ; $49a1: $47
	ld   e, h                                        ; $49a2: $5c
	ld   b, c                                        ; $49a3: $41
	ld   e, a                                        ; $49a4: $5f
	add  b                                           ; $49a5: $80
	ld   b, b                                        ; $49a6: $40
	add  b                                           ; $49a7: $80
	ld   a, a                                        ; $49a8: $7f
	dec  bc                                          ; $49a9: $0b
	nop                                              ; $49aa: $00
	add  hl, hl                                      ; $49ab: $29
	ld   hl, $4000                                   ; $49ac: $21 $00 $40
	inc  sp                                          ; $49af: $33
	dec  bc                                          ; $49b0: $0b
	ld   [$0204], sp                                 ; $49b1: $08 $04 $02
	ld   b, b                                        ; $49b4: $40
	ld   a, $80                                      ; $49b5: $3e $80

jr_014_49b7:
	nop                                              ; $49b7: $00
	add  b                                           ; $49b8: $80
	rst  $38                                         ; $49b9: $ff
	dec  bc                                          ; $49ba: $0b
	nop                                              ; $49bb: $00
	rra                                              ; $49bc: $1f
	ccf                                              ; $49bd: $3f
	sbc  $ff                                         ; $49be: $de $ff
	cp   $ff                                         ; $49c0: $fe $ff
	cp   $ff                                         ; $49c2: $fe $ff
	inc  [hl]                                        ; $49c4: $34
	ccf                                              ; $49c5: $3f
	ld   a, [bc]                                     ; $49c6: $0a
	add  b                                           ; $49c7: $80
	nop                                              ; $49c8: $00
	add  b                                           ; $49c9: $80
	rst  $38                                         ; $49ca: $ff
	dec  bc                                          ; $49cb: $0b
	nop                                              ; $49cc: $00
	ld   c, b                                        ; $49cd: $48
	add  d                                           ; $49ce: $82
	ld   a, [hl+]                                    ; $49cf: $2a
	and  d                                           ; $49d0: $a2
	ld   [bc], a                                     ; $49d1: $02
	and  d                                           ; $49d2: $a2
	sub  d                                           ; $49d3: $92
	or   d                                           ; $49d4: $b2
	sbc  d                                           ; $49d5: $9a
	cp   d                                           ; $49d6: $ba
	ldh  [c], a                                      ; $49d7: $e2
	add  b                                           ; $49d8: $80
	ld   [bc], a                                     ; $49d9: $02
	add  b                                           ; $49da: $80
	cp   $8f                                         ; $49db: $fe $8f
	nop                                              ; $49dd: $00
	ld   a, [bc]                                     ; $49de: $0a
	and  c                                           ; $49df: $a1
	add  c                                           ; $49e0: $81
	and  h                                           ; $49e1: $a4
	adc  d                                           ; $49e2: $8a
	adc  [hl]                                        ; $49e3: $8e
	pop  af                                          ; $49e4: $f1
	ld   h, c                                        ; $49e5: $61
	ld   e, $0c                                      ; $49e6: $1e $0c
	inc  bc                                          ; $49e8: $03
	ld   bc, $0083                                   ; $49e9: $01 $83 $00
	ld   c, $f4                                      ; $49ec: $0e $f4
	db   $fd                                         ; $49ee: $fd
	pop  af                                          ; $49ef: $f1
	db   $fd                                         ; $49f0: $fd
	ld   d, l                                        ; $49f1: $55
	ld   a, l                                        ; $49f2: $7d
	dec  b                                           ; $49f3: $05
	dec  a                                           ; $49f4: $3d
	ld   de, $81c5                                   ; $49f5: $11 $c5 $81
	ld   a, c                                        ; $49f8: $79
	ld   sp, $070f                                   ; $49f9: $31 $0f $07
	add  b                                           ; $49fc: $80
	nop                                              ; $49fd: $00
	adc  h                                           ; $49fe: $8c
	add  b                                           ; $49ff: $80
	dec  b                                           ; $4a00: $05
	nop                                              ; $4a01: $00
	dec  e                                           ; $4a02: $1d
	ld   b, c                                        ; $4a03: $41
	ld   b, d                                        ; $4a04: $42
	ld   b, b                                        ; $4a05: $40
	ld   b, c                                        ; $4a06: $41
	add  e                                           ; $4a07: $83
	ld   b, b                                        ; $4a08: $40
	nop                                              ; $4a09: $00
	ld   e, a                                        ; $4a0a: $5f
	add  b                                           ; $4a0b: $80
	ld   b, b                                        ; $4a0c: $40
	add  b                                           ; $4a0d: $80
	ld   a, a                                        ; $4a0e: $7f
	dec  bc                                          ; $4a0f: $0b
	nop                                              ; $4a10: $00
	rst  $38                                         ; $4a11: $ff
	ldh  a, [$f2]                                    ; $4a12: $f0 $f2
	or   $34                                         ; $4a14: $f6 $34
	ccf                                              ; $4a16: $3f
	adc  a                                           ; $4a17: $8f
	ld   c, a                                        ; $4a18: $4f
	jr   nz, jr_014_4a2b                             ; $4a19: $20 $10

	ldh  a, [$80]                                    ; $4a1b: $f0 $80
	nop                                              ; $4a1d: $00
	add  b                                           ; $4a1e: $80
	rst  $38                                         ; $4a1f: $ff
	dec  bc                                          ; $4a20: $0b
	nop                                              ; $4a21: $00
	rst  $28                                         ; $4a22: $ef
	rra                                              ; $4a23: $1f
	ld   c, $01                                      ; $4a24: $0e $01
	add  a                                           ; $4a26: $87
	add  h                                           ; $4a27: $84
	dec  c                                           ; $4a28: $0d
	ldh  a, [c]                                      ; $4a29: $f2
	inc  b                                           ; $4a2a: $04

jr_014_4a2b:
	ld   [$800f], sp                                 ; $4a2b: $08 $0f $80
	nop                                              ; $4a2e: $00
	add  b                                           ; $4a2f: $80
	rst  $38                                         ; $4a30: $ff
	dec  b                                           ; $4a31: $05
	nop                                              ; $4a32: $00
	jr   c, jr_014_49b7                              ; $4a33: $38 $82

	jp   nz, $8202                                   ; $4a35: $c2 $02 $82

	add  e                                           ; $4a38: $83
	ld   [bc], a                                     ; $4a39: $02
	nop                                              ; $4a3a: $00
	ld   a, [$0280]                                  ; $4a3b: $fa $80 $02
	add  b                                           ; $4a3e: $80
	cp   $82                                         ; $4a3f: $fe $82
	nop                                              ; $4a41: $00
	add  b                                           ; $4a42: $80
	ld   a, a                                        ; $4a43: $7f
	ld   bc, $5f40                                   ; $4a44: $01 $40 $5f
	add  l                                           ; $4a47: $85
	ld   b, b                                        ; $4a48: $40
	ld   [bc], a                                     ; $4a49: $02
	ld   b, c                                        ; $4a4a: $41
	ld   b, b                                        ; $4a4b: $40
	ld   e, [hl]                                     ; $4a4c: $5e
	add  b                                           ; $4a4d: $80
	nop                                              ; $4a4e: $00
	add  b                                           ; $4a4f: $80
	rst  $38                                         ; $4a50: $ff
	ld   [$f000], sp                                 ; $4a51: $08 $00 $f0
	ld   [$273f], sp                                 ; $4a54: $08 $3f $27
	ld   a, a                                        ; $4a57: $7f
	rra                                              ; $4a58: $1f
	rst  $38                                         ; $4a59: $ff
	ld   a, a                                        ; $4a5a: $7f
	add  b                                           ; $4a5b: $80
	rst  $38                                         ; $4a5c: $ff
	add  c                                           ; $4a5d: $81
	nop                                              ; $4a5e: $00
	add  b                                           ; $4a5f: $80
	rst  $38                                         ; $4a60: $ff
	dec  bc                                          ; $4a61: $0b
	nop                                              ; $4a62: $00
	rrca                                             ; $4a63: $0f
	db   $10                                         ; $4a64: $10
	sbc  h                                           ; $4a65: $9c
	db   $e4                                         ; $4a66: $e4
	sub  [hl]                                        ; $4a67: $96
	add  sp, -$1d                                    ; $4a68: $e8 $e3
	or   $f9                                         ; $4a6a: $f6 $f9
	ei                                               ; $4a6c: $fb
	ld   c, $80                                      ; $4a6d: $0e $80
	nop                                              ; $4a6f: $00
	add  b                                           ; $4a70: $80
	cp   $01                                         ; $4a71: $fe $01
	ld   [bc], a                                     ; $4a73: $02
	ld   a, [$0285]                                  ; $4a74: $fa $85 $02
	ld   [bc], a                                     ; $4a77: $02
	add  d                                           ; $4a78: $82
	ld   [bc], a                                     ; $4a79: $02
	ld   a, d                                        ; $4a7a: $7a
	add  b                                           ; $4a7b: $80
	nop                                              ; $4a7c: $00
	adc  h                                           ; $4a7d: $8c
	ld   bc, $000f                                   ; $4a7e: $01 $0f $00
	db   $10                                         ; $4a81: $10
	ldh  a, [$e2]                                    ; $4a82: $f0 $e2
	sbc  [hl]                                        ; $4a84: $9e
	sbc  h                                           ; $4a85: $9c
	and  e                                           ; $4a86: $a3
	sbc  e                                           ; $4a87: $9b
	add  h                                           ; $4a88: $84
	add  e                                           ; $4a89: $83
	add  b                                           ; $4a8a: $80
	add  d                                           ; $4a8b: $82
	add  e                                           ; $4a8c: $83
	add  l                                           ; $4a8d: $85
	add  a                                           ; $4a8e: $87
	cp   h                                           ; $4a8f: $bc
	add  e                                           ; $4a90: $83
	nop                                              ; $4a91: $00
	ld   a, [bc]                                     ; $4a92: $0a
	ld   b, b                                        ; $4a93: $40
	ret  nz                                          ; $4a94: $c0

	adc  b                                           ; $4a95: $88
	ld   a, b                                        ; $4a96: $78
	ldh  a, [$8e]                                    ; $4a97: $f0 $8e
	rst  $28                                         ; $4a99: $ef
	pop  af                                          ; $4a9a: $f1
	db   $ed                                         ; $4a9b: $ed
	pop  af                                          ; $4a9c: $f1
	inc  c                                           ; $4a9d: $0c
	and  b                                           ; $4a9e: $a0
	nop                                              ; $4a9f: $00
	adc  h                                           ; $4aa0: $8c
	ld   bc, $0080                                   ; $4aa1: $01 $80 $00
	adc  h                                           ; $4aa4: $8c
	add  b                                           ; $4aa5: $80
	and  e                                           ; $4aa6: $a3
	nop                                              ; $4aa7: $00
	ld   a, [de]                                     ; $4aa8: $1a
	ld   [bc], a                                     ; $4aa9: $02
	inc  bc                                          ; $4aaa: $03
	ld   de, $0e1e                                   ; $4aab: $11 $1e $0e
	ld   [hl], b                                     ; $4aae: $70
	ldh  a, [$8b]                                    ; $4aaf: $f0 $8b
	cp   a                                           ; $4ab1: $bf
	add  h                                           ; $4ab2: $84
	jr   nc, jr_014_4ab5                             ; $4ab3: $30 $00

jr_014_4ab5:
	ld   [$470f], sp                                 ; $4ab5: $08 $0f $47
	ld   a, c                                        ; $4ab8: $79
	dec  a                                           ; $4ab9: $3d
	push bc                                          ; $4aba: $c5
	db   $ed                                         ; $4abb: $ed
	dec  e                                           ; $4abc: $1d
	ld   h, l                                        ; $4abd: $65
	ld   l, l                                        ; $4abe: $6d
	sub  l                                           ; $4abf: $95
	cp   l                                           ; $4ac0: $bd
	ld   c, l                                        ; $4ac1: $4d
	ld   e, l                                        ; $4ac2: $5d
	ld   bc, $0080                                   ; $4ac3: $01 $80 $00
	adc  e                                           ; $4ac6: $8b
	add  b                                           ; $4ac7: $80
	inc  bc                                          ; $4ac8: $03
	sbc  l                                           ; $4ac9: $9d
	ld   b, c                                        ; $4aca: $41
	ld   b, a                                        ; $4acb: $47
	ld   b, e                                        ; $4acc: $43
	add  b                                           ; $4acd: $80
	ld   c, e                                        ; $4ace: $4b
	dec  b                                           ; $4acf: $05
	ld   c, a                                        ; $4ad0: $4f
	ld   b, [hl]                                     ; $4ad1: $46
	ld   d, [hl]                                     ; $4ad2: $56
	ld   d, h                                        ; $4ad3: $54
	ld   e, b                                        ; $4ad4: $58
	ld   c, h                                        ; $4ad5: $4c
	add  b                                           ; $4ad6: $80
	ld   c, b                                        ; $4ad7: $48
	ld   [bc], a                                     ; $4ad8: $02
	ld   b, c                                        ; $4ad9: $41
	ld   c, c                                        ; $4ada: $49
	or   b                                           ; $4adb: $b0
	add  c                                           ; $4adc: $81
	rst  $38                                         ; $4add: $ff
	ld   bc, $9f7f                                   ; $4ade: $01 $7f $9f
	add  b                                           ; $4ae1: $80
	rra                                              ; $4ae2: $1f
	ld   bc, $1f0f                                   ; $4ae3: $01 $0f $1f
	add  b                                           ; $4ae6: $80
	rrca                                             ; $4ae7: $0f
	rlca                                             ; $4ae8: $07
	dec  bc                                          ; $4ae9: $0b
	rlca                                             ; $4aea: $07
	dec  bc                                          ; $4aeb: $0b
	ld   hl, sp-$10                                  ; $4aec: $f8 $f0

Call_014_4aee:
	ld   sp, hl                                      ; $4aee: $f9
	ld   hl, sp-$07                                  ; $4aef: $f8 $f9
	add  d                                           ; $4af1: $82
	ld   hl, sp+$01                                  ; $4af2: $f8 $01
	ldh  a, [$f8]                                    ; $4af4: $f0 $f8
	add  b                                           ; $4af6: $80
	ldh  a, [rTAC]                                   ; $4af7: $f0 $07
	ret  nc                                          ; $4af9: $d0

	ldh  [$d0], a                                    ; $4afa: $e0 $d0
	rra                                              ; $4afc: $1f
	ld   c, b                                        ; $4afd: $48
	add  d                                           ; $4afe: $82
	ldh  [c], a                                      ; $4aff: $e2
	jp   nz, $d280                                   ; $4b00: $c2 $80 $d2

	ld   bc, $e272                                   ; $4b03: $01 $72 $e2
	add  b                                           ; $4b06: $80
	ld   l, d                                        ; $4b07: $6a
	nop                                              ; $4b08: $00
	ld   a, d                                        ; $4b09: $7a
	add  c                                           ; $4b0a: $81
	ld   [hl], d                                     ; $4b0b: $72
	add  b                                           ; $4b0c: $80
	ldh  a, [c]                                      ; $4b0d: $f2
	nop                                              ; $4b0e: $00
	add  d                                           ; $4b0f: $82
	adc  l                                           ; $4b10: $8d
	ld   bc, $3603                                   ; $4b11: $01 $03 $36
	adc  a                                           ; $4b14: $8f
	add  a                                           ; $4b15: $87
	adc  a                                           ; $4b16: $8f
	add  b                                           ; $4b17: $80
	sbc  a                                           ; $4b18: $9f
	rlca                                             ; $4b19: $07
	adc  a                                           ; $4b1a: $8f

jr_014_4b1b:
	sbc  l                                           ; $4b1b: $9d
	cp   l                                           ; $4b1c: $bd
	cp   c                                           ; $4b1d: $b9
	sbc  c                                           ; $4b1e: $99
	or   c                                           ; $4b1f: $b1
	and  c                                           ; $4b20: $a1
	or   b                                           ; $4b21: $b0
	add  b                                           ; $4b22: $80
	and  b                                           ; $4b23: $a0
	ld   bc, $f962                                   ; $4b24: $01 $62 $f9
	add  b                                           ; $4b27: $80
	db   $fd                                         ; $4b28: $fd
	ld   bc, $fdf1                                   ; $4b29: $01 $f1 $fd
	add  d                                           ; $4b2c: $82
	push af                                          ; $4b2d: $f5
	ld   b, $e5                                      ; $4b2e: $06 $e5
	push af                                          ; $4b30: $f5
	push bc                                          ; $4b31: $c5
	push hl                                          ; $4b32: $e5
	call $f80d                                       ; $4b33: $cd $0d $f8
	sbc  [hl]                                        ; $4b36: $9e
	nop                                              ; $4b37: $00
	adc  [hl]                                        ; $4b38: $8e
	ld   bc, $808e                                   ; $4b39: $01 $8e $80
	sbc  l                                           ; $4b3c: $9d
	nop                                              ; $4b3d: $00
	inc  b                                           ; $4b3e: $04
	xor  d                                           ; $4b3f: $aa
	adc  b                                           ; $4b40: $88
	and  a                                           ; $4b41: $a7
	and  b                                           ; $4b42: $a0
	and  l                                           ; $4b43: $a5
	add  b                                           ; $4b44: $80
	sub  l                                           ; $4b45: $95
	nop                                              ; $4b46: $00
	add  l                                           ; $4b47: $85
	add  b                                           ; $4b48: $80
	and  l                                           ; $4b49: $a5
	ld   a, [bc]                                     ; $4b4a: $0a
	adc  a                                           ; $4b4b: $8f
	sbc  a                                           ; $4b4c: $9f
	or   l                                           ; $4b4d: $b5
	and  l                                           ; $4b4e: $a5
	add  l                                           ; $4b4f: $85
	and  l                                           ; $4b50: $a5
	and  c                                           ; $4b51: $a1
	dec  h                                           ; $4b52: $25
	pop  hl                                          ; $4b53: $e1
	ld   [hl], c                                     ; $4b54: $71
	ld   sp, $3d80                                   ; $4b55: $31 $80 $3d
	add  hl, bc                                      ; $4b58: $09
	dec  e                                           ; $4b59: $1d
	dec  c                                           ; $4b5a: $0d
	add  hl, de                                      ; $4b5b: $19
	xor  c                                           ; $4b5c: $a9
	ret                                              ; $4b5d: $c9


	ld   [hl], c                                     ; $4b5e: $71
	ld   de, $1101                                   ; $4b5f: $11 $01 $11
	add  hl, de                                      ; $4b62: $19
	adc  l                                           ; $4b63: $8d
	add  b                                           ; $4b64: $80
	ld   bc, $438f                                   ; $4b65: $01 $8f $43
	add  b                                           ; $4b68: $80
	ld   b, a                                        ; $4b69: $47
	ld   bc, $4743                                   ; $4b6a: $01 $43 $47
	add  c                                           ; $4b6d: $81
	ld   c, a                                        ; $4b6e: $4f
	nop                                              ; $4b6f: $00
	ld   d, a                                        ; $4b70: $57
	add  b                                           ; $4b71: $80
	ld   b, a                                        ; $4b72: $47
	ld   bc, $4b43                                   ; $4b73: $01 $43 $4b
	add  b                                           ; $4b76: $80
	ld   b, e                                        ; $4b77: $43
	ld   bc, $fca7                                   ; $4b78: $01 $a7 $fc
	add  b                                           ; $4b7b: $80
	cp   $00                                         ; $4b7c: $fe $00
	db   $fc                                         ; $4b7e: $fc
	add  l                                           ; $4b7f: $85
	cp   $01                                         ; $4b80: $fe $01
	db   $fc                                         ; $4b82: $fc
	cp   $81                                         ; $4b83: $fe $81
	db   $fc                                         ; $4b85: $fc
	nop                                              ; $4b86: $00
	ccf                                              ; $4b87: $3f
	add  b                                           ; $4b88: $80
	ld   a, a                                        ; $4b89: $7f
	nop                                              ; $4b8a: $00
	ccf                                              ; $4b8b: $3f
	add  l                                           ; $4b8c: $85
	ld   a, a                                        ; $4b8d: $7f
	ld   bc, $7f3f                                   ; $4b8e: $01 $3f $7f
	add  b                                           ; $4b91: $80
	ccf                                              ; $4b92: $3f
	nop                                              ; $4b93: $00
	jr   nc, jr_014_4b1b                             ; $4b94: $30 $85

	ldh  a, [c]                                      ; $4b96: $f2
	ld   bc, $eae2                                   ; $4b97: $01 $e2 $ea
	add  b                                           ; $4b9a: $80
	ldh  [c], a                                      ; $4b9b: $e2
	ld   bc, $d2c2                                   ; $4b9c: $01 $c2 $d2
	add  b                                           ; $4b9f: $80
	jp   nz, $1a00                                   ; $4ba0: $c2 $00 $1a

	adc  l                                           ; $4ba3: $8d
	ld   bc, $3a05                                   ; $4ba4: $01 $05 $3a
	and  a                                           ; $4ba7: $a7
	adc  e                                           ; $4ba8: $8b
	xor  a                                           ; $4ba9: $af
	and  a                                           ; $4baa: $a7
	xor  a                                           ; $4bab: $af
	add  [hl]                                        ; $4bac: $86
	sbc  a                                           ; $4bad: $9f
	add  b                                           ; $4bae: $80
	adc  a                                           ; $4baf: $8f
	inc  b                                           ; $4bb0: $04
	call $7d9d                                       ; $4bb1: $cd $9d $7d
	db   $fd                                         ; $4bb4: $fd
	cp   l                                           ; $4bb5: $bd
	add  c                                           ; $4bb6: $81
	db   $fd                                         ; $4bb7: $fd
	add  b                                           ; $4bb8: $80
	db   $dd                                         ; $4bb9: $dd
	ld   b, $cd                                      ; $4bba: $06 $cd
	sbc  l                                           ; $4bbc: $9d
	adc  c                                           ; $4bbd: $89
	dec  b                                           ; $4bbe: $05
	ld   bc, $f409                                   ; $4bbf: $01 $09 $f4
	sbc  [hl]                                        ; $4bc2: $9e
	nop                                              ; $4bc3: $00
	adc  [hl]                                        ; $4bc4: $8e
	ld   bc, $808e                                   ; $4bc5: $01 $8e $80
	sbc  l                                           ; $4bc8: $9d
	nop                                              ; $4bc9: $00
	dec  b                                           ; $4bca: $05
	and  b                                           ; $4bcb: $a0
	and  l                                           ; $4bcc: $a5
	adc  a                                           ; $4bcd: $8f
	sbc  a                                           ; $4bce: $9f
	or   l                                           ; $4bcf: $b5
	and  l                                           ; $4bd0: $a5
	add  b                                           ; $4bd1: $80
	add  l                                           ; $4bd2: $85
	add  b                                           ; $4bd3: $80
	sub  l                                           ; $4bd4: $95
	inc  bc                                          ; $4bd5: $03
	sub  b                                           ; $4bd6: $90
	sub  l                                           ; $4bd7: $95
	add  d                                           ; $4bd8: $82
	and  d                                           ; $4bd9: $a2
	add  b                                           ; $4bda: $80
	add  h                                           ; $4bdb: $84
	ld   b, $38                                      ; $4bdc: $06 $38
	ld   de, $c9a9                                   ; $4bde: $11 $a9 $c9
	ld   a, c                                        ; $4be1: $79
	add  hl, de                                      ; $4be2: $19
	add  hl, bc                                      ; $4be3: $09
	add  c                                           ; $4be4: $81
	add  hl, de                                      ; $4be5: $19
	add  b                                           ; $4be6: $80
	dec  a                                           ; $4be7: $3d
	inc  b                                           ; $4be8: $04
	sub  l                                           ; $4be9: $95
	cp   l                                           ; $4bea: $bd
	add  hl, bc                                      ; $4beb: $09
	ld   a, l                                        ; $4bec: $7d
	ld   b, l                                        ; $4bed: $45
	adc  l                                           ; $4bee: $8d
	add  b                                           ; $4bef: $80
	inc  b                                           ; $4bf0: $04
	sbc  l                                           ; $4bf1: $9d
	ld   b, c                                        ; $4bf2: $41
	ld   b, d                                        ; $4bf3: $42
	ld   b, b                                        ; $4bf4: $40
	ld   b, c                                        ; $4bf5: $41
	add  e                                           ; $4bf6: $83
	ld   b, b                                        ; $4bf7: $40
	nop                                              ; $4bf8: $00
	ld   e, a                                        ; $4bf9: $5f
	add  b                                           ; $4bfa: $80
	ld   b, b                                        ; $4bfb: $40
	add  b                                           ; $4bfc: $80
	ld   a, a                                        ; $4bfd: $7f
	dec  bc                                          ; $4bfe: $0b
	nop                                              ; $4bff: $00
	rst  $38                                         ; $4c00: $ff
	ld   hl, sp-$06                                  ; $4c01: $f8 $fa
	cp   $3c                                         ; $4c03: $fe $3c
	ccf                                              ; $4c05: $3f
	adc  a                                           ; $4c06: $8f
	ld   c, a                                        ; $4c07: $4f
	jr   nz, jr_014_4c1a                             ; $4c08: $20 $10

	ldh  a, [$80]                                    ; $4c0a: $f0 $80
	nop                                              ; $4c0c: $00
	add  b                                           ; $4c0d: $80
	rst  $38                                         ; $4c0e: $ff
	dec  bc                                          ; $4c0f: $0b

jr_014_4c10:
	nop                                              ; $4c10: $00
	rst  $28                                         ; $4c11: $ef
	rra                                              ; $4c12: $1f
	ld   c, $01                                      ; $4c13: $0e $01
	add  a                                           ; $4c15: $87
	add  h                                           ; $4c16: $84
	dec  c                                           ; $4c17: $0d
	ldh  a, [c]                                      ; $4c18: $f2
	inc  b                                           ; $4c19: $04

jr_014_4c1a:
	ld   [$800f], sp                                 ; $4c1a: $08 $0f $80
	nop                                              ; $4c1d: $00
	add  b                                           ; $4c1e: $80

Call_014_4c1f:
	rst  $38                                         ; $4c1f: $ff
	dec  b                                           ; $4c20: $05
	nop                                              ; $4c21: $00
	jr   c, @-$7c                                    ; $4c22: $38 $82

	jp   nz, $8202                                   ; $4c24: $c2 $02 $82

	add  e                                           ; $4c27: $83
	ld   [bc], a                                     ; $4c28: $02
	nop                                              ; $4c29: $00
	ld   a, [$0280]                                  ; $4c2a: $fa $80 $02
	add  b                                           ; $4c2d: $80
	cp   $80                                         ; $4c2e: $fe $80
	nop                                              ; $4c30: $00
	adc  h                                           ; $4c31: $8c
	ld   bc, $0001                                   ; $4c32: $01 $01 $00
	ccf                                              ; $4c35: $3f
	add  b                                           ; $4c36: $80
	add  a                                           ; $4c37: $87
	rla                                              ; $4c38: $17

jr_014_4c39:
	add  e                                           ; $4c39: $83
	add  d                                           ; $4c3a: $82
	add  c                                           ; $4c3b: $81
	add  a                                           ; $4c3c: $87
	add  h                                           ; $4c3d: $84
	cp   h                                           ; $4c3e: $bc
	and  e                                           ; $4c3f: $a3
	and  c                                           ; $4c40: $a1
	sbc  [hl]                                        ; $4c41: $9e

jr_014_4c42:
	adc  h                                           ; $4c42: $8c
	ldh  a, [$e0]                                    ; $4c43: $f0 $e0
	nop                                              ; $4c45: $00
	ld   [hl], l                                     ; $4c46: $75
	sbc  c                                           ; $4c47: $99
	dec  c                                           ; $4c48: $0d
	pop  af                                          ; $4c49: $f1
	sub  c                                           ; $4c4a: $91
	adc  a                                           ; $4c4b: $8f
	ld   b, $78                                      ; $4c4c: $06 $78
	jr   nc, jr_014_4c10                             ; $4c4e: $30 $c0

	add  b                                           ; $4c50: $80
	and  h                                           ; $4c51: $a4
	nop                                              ; $4c52: $00
	adc  h                                           ; $4c53: $8c
	ld   bc, $0080                                   ; $4c54: $01 $80 $00
	adc  h                                           ; $4c57: $8c
	add  b                                           ; $4c58: $80
	sbc  a                                           ; $4c59: $9f
	nop                                              ; $4c5a: $00
	ld   a, [bc]                                     ; $4c5b: $0a
	and  c                                           ; $4c5c: $a1
	add  c                                           ; $4c5d: $81
	xor  h                                           ; $4c5e: $ac
	add  d                                           ; $4c5f: $82
	adc  a                                           ; $4c60: $8f
	ldh  a, [$61]                                    ; $4c61: $f0 $61
	ld   e, $0c                                      ; $4c63: $1e $0c
	inc  bc                                          ; $4c65: $03
	ld   bc, $0083                                   ; $4c66: $01 $83 $00
	ld   c, $f4                                      ; $4c69: $0e $f4
	db   $fd                                         ; $4c6b: $fd
	pop  af                                          ; $4c6c: $f1
	db   $fd                                         ; $4c6d: $fd
	ld   d, l                                        ; $4c6e: $55
	ld   a, l                                        ; $4c6f: $7d
	dec  b                                           ; $4c70: $05
	dec  a                                           ; $4c71: $3d
	dec  d                                           ; $4c72: $15
	push bc                                          ; $4c73: $c5
	add  l                                           ; $4c74: $85
	ld   a, c                                        ; $4c75: $79
	ld   sp, $070f                                   ; $4c76: $31 $0f $07
	add  b                                           ; $4c79: $80
	nop                                              ; $4c7a: $00
	adc  h                                           ; $4c7b: $8c
	add  b                                           ; $4c7c: $80
	add  e                                           ; $4c7d: $83
	nop                                              ; $4c7e: $00
	dec  b                                           ; $4c7f: $05
	ld   [$120f], sp                                 ; $4c80: $08 $0f $12
	dec  e                                           ; $4c83: $1d
	nop                                              ; $4c84: $00
	add  hl, de                                      ; $4c85: $19
	add  l                                           ; $4c86: $85
	ld   de, $0082                                   ; $4c87: $11 $82 $00
	add  b                                           ; $4c8a: $80
	rst  $38                                         ; $4c8b: $ff
	adc  h                                           ; $4c8c: $8c
	nop                                              ; $4c8d: $00
	add  b                                           ; $4c8e: $80
	rst  $38                                         ; $4c8f: $ff
	ld   bc, $0100                                   ; $4c90: $01 $00 $01
	add  c                                           ; $4c93: $81
	nop                                              ; $4c94: $00
	inc  b                                           ; $4c95: $04
	ld   a, $00                                      ; $4c96: $3e $00
	rst  JumpTable                                         ; $4c98: $df
	nop                                              ; $4c99: $00
	ldh  [$82], a                                    ; $4c9a: $e0 $82
	nop                                              ; $4c9c: $00
	add  b                                           ; $4c9d: $80
	rst  $38                                         ; $4c9e: $ff
	add  hl, bc                                      ; $4c9f: $09
	nop                                              ; $4ca0: $00
	ret  nz                                          ; $4ca1: $c0

	nop                                              ; $4ca2: $00
	or   b                                           ; $4ca3: $b0
	nop                                              ; $4ca4: $00
	add  sp, $00                                     ; $4ca5: $e8 $00
	scf                                              ; $4ca7: $37
	jr   nz, jr_014_4c39                             ; $4ca8: $20 $8f

	add  d                                           ; $4caa: $82
	nop                                              ; $4cab: $00
	add  b                                           ; $4cac: $80
	rst  $38                                         ; $4cad: $ff
	add  l                                           ; $4cae: $85
	nop                                              ; $4caf: $00
	ld   [bc], a                                     ; $4cb0: $02
	add  b                                           ; $4cb1: $80
	nop                                              ; $4cb2: $00
	add  b                                           ; $4cb3: $80
	add  c                                           ; $4cb4: $81
	nop                                              ; $4cb5: $00
	dec  b                                           ; $4cb6: $05
	db   $10                                         ; $4cb7: $10
	ldh  a, [$c8]                                    ; $4cb8: $f0 $c8
	jr   c, jr_014_4cbc                              ; $4cba: $38 $00

jr_014_4cbc:
	jr   jr_014_4c42                                 ; $4cbc: $18 $84

	ld   [$4802], sp                                 ; $4cbe: $08 $02 $48
	ld   d, b                                        ; $4cc1: $50
	db   $10                                         ; $4cc2: $10
	add  h                                           ; $4cc3: $84
	ld   d, b                                        ; $4cc4: $50
	rlca                                             ; $4cc5: $07
	ld   b, b                                        ; $4cc6: $40
	ld   c, b                                        ; $4cc7: $48
	ld   e, b                                        ; $4cc8: $58
	ld   d, h                                        ; $4cc9: $54
	ld   e, h                                        ; $4cca: $5c
	ld   e, d                                        ; $4ccb: $5a
	ld   e, [hl]                                     ; $4ccc: $5e
	ld   e, h                                        ; $4ccd: $5c
	add  c                                           ; $4cce: $81
	nop                                              ; $4ccf: $00
	inc  de                                          ; $4cd0: $13
	ld   bc, $0200                                   ; $4cd1: $01 $00 $02
	nop                                              ; $4cd4: $00
	dec  b                                           ; $4cd5: $05
	nop                                              ; $4cd6: $00
	dec  bc                                          ; $4cd7: $0b
	nop                                              ; $4cd8: $00
	inc  b                                           ; $4cd9: $04
	ld   [bc], a                                     ; $4cda: $02
	inc  bc                                          ; $4cdb: $03
	nop                                              ; $4cdc: $00
	ld   a, [hl-]                                    ; $4cdd: $3a
	inc  bc                                          ; $4cde: $03
	db   $dd                                         ; $4cdf: $dd
	nop                                              ; $4ce0: $00
	ld   l, d                                        ; $4ce1: $6a
	ld   [$30b9], sp                                 ; $4ce2: $08 $b9 $30
	add  b                                           ; $4ce5: $80
	ld   [hl], h                                     ; $4ce6: $74
	inc  bc                                          ; $4ce7: $03
	ld   a, l                                        ; $4ce8: $7d
	ld   a, b                                        ; $4ce9: $78
	ld   a, d                                        ; $4cea: $7a
	ld   a, b                                        ; $4ceb: $78
	sub  [hl]                                        ; $4cec: $96
	nop                                              ; $4ced: $00
	dec  d                                           ; $4cee: $15
	ld   [bc], a                                     ; $4cef: $02
	inc  bc                                          ; $4cf0: $03
	ld   de, $0e1e                                   ; $4cf1: $11 $1e $0e
	ld   [hl], c                                     ; $4cf4: $71
	or   $8f                                         ; $4cf5: $f6 $8f
	or   a                                           ; $4cf7: $b7
	adc  a                                           ; $4cf8: $8f
	jr   nc, jr_014_4cfb                             ; $4cf9: $30 $00

jr_014_4cfb:
	ld   [$470f], sp                                 ; $4cfb: $08 $0f $47
	ld   a, c                                        ; $4cfe: $79
	add  hl, sp                                      ; $4cff: $39
	push bc                                          ; $4d00: $c5
	reti                                             ; $4d01: $d9


	ld   hl, $8141                                   ; $4d02: $21 $41 $81
	add  b                                           ; $4d05: $80
	pop  bc                                          ; $4d06: $c1
	ld   [bc], a                                     ; $4d07: $02
	ld   hl, $7da1                                   ; $4d08: $21 $a1 $7d
	add  b                                           ; $4d0b: $80
	nop                                              ; $4d0c: $00
	adc  e                                           ; $4d0d: $8b
	add  b                                           ; $4d0e: $80
	nop                                              ; $4d0f: $00
	ld   a, a                                        ; $4d10: $7f
	adc  c                                           ; $4d11: $89
	nop                                              ; $4d12: $00
	nop                                              ; $4d13: $00
	ld   c, $80                                      ; $4d14: $0e $80
	ld   a, [bc]                                     ; $4d16: $0a
	ld   bc, $0a04                                   ; $4d17: $01 $04 $0a
	add  l                                           ; $4d1a: $85
	nop                                              ; $4d1b: $00
	ld   [$3f20], sp                                 ; $4d1c: $08 $20 $3f
	ld   b, b                                        ; $4d1f: $40
	ld   a, a                                        ; $4d20: $7f
	sbc  a                                           ; $4d21: $9f
	rst  $38                                         ; $4d22: $ff
	ccf                                              ; $4d23: $3f
	rst  $38                                         ; $4d24: $ff
	add  b                                           ; $4d25: $80
	add  l                                           ; $4d26: $85
	nop                                              ; $4d27: $00
	ld   [$fe01], sp                                 ; $4d28: $08 $01 $fe
	ld   d, $fe                                      ; $4d2b: $16 $fe
	call nz, $8afc                                   ; $4d2d: $c4 $fc $8a
	ld   a, [$80a0]                                  ; $4d30: $fa $a0 $80
	ld   de, $0101                                   ; $4d33: $11 $01 $01
	add  hl, bc                                      ; $4d36: $09
	add  c                                           ; $4d37: $81
	add  hl, sp                                      ; $4d38: $39
	dec  b                                           ; $4d39: $05
	ld   sp, $0901                                   ; $4d3a: $31 $01 $09
	add  hl, sp                                      ; $4d3d: $39
	add  hl, bc                                      ; $4d3e: $09
	add  hl, sp                                      ; $4d3f: $39
	add  b                                           ; $4d40: $80
	ld   bc, $0213                                   ; $4d41: $01 $13 $02
	nop                                              ; $4d44: $00
	ld   bc, $0100                                   ; $4d45: $01 $00 $01
	nop                                              ; $4d48: $00
	dec  b                                           ; $4d49: $05
	nop                                              ; $4d4a: $00
	dec  bc                                          ; $4d4b: $0b
	nop                                              ; $4d4c: $00
	ld   d, $01                                      ; $4d4d: $16 $01
	dec  c                                           ; $4d4f: $0d
	dec  b                                           ; $4d50: $05
	dec  h                                           ; $4d51: $25
	inc  b                                           ; $4d52: $04
	xor  h                                           ; $4d53: $ac
	rra                                              ; $4d54: $1f
	rst  $38                                         ; $4d55: $ff
	ld   a, a                                        ; $4d56: $7f
	add  b                                           ; $4d57: $80
	rra                                              ; $4d58: $1f
	add  d                                           ; $4d59: $82
	rst  $38                                         ; $4d5a: $ff
	add  b                                           ; $4d5b: $80
	cp   [hl]                                        ; $4d5c: $be
	add  b                                           ; $4d5d: $80
	ld   a, l                                        ; $4d5e: $7d
	inc  bc                                          ; $4d5f: $03
	ld   l, l                                        ; $4d60: $6d
	ld   c, h                                        ; $4d61: $4c
	ld   de, $8030                                   ; $4d62: $11 $30 $80
	or   a                                           ; $4d65: $b7
	add  b                                           ; $4d66: $80
	cp   $86                                         ; $4d67: $fe $86
	rst  $38                                         ; $4d69: $ff
	add  b                                           ; $4d6a: $80
	db   $fd                                         ; $4d6b: $fd
	db   $10                                         ; $4d6c: $10
	ldh  [rP1], a                                    ; $4d6d: $e0 $00
	ret  nz                                          ; $4d6f: $c0

	nop                                              ; $4d70: $00
	ld   d, b                                        ; $4d71: $50
	nop                                              ; $4d72: $00
	add  sp, -$80                                    ; $4d73: $e8 $80
	db   $f4                                         ; $4d75: $f4
	ldh  [$da], a                                    ; $4d76: $e0 $da
	sub  b                                           ; $4d78: $90
	and  h                                           ; $4d79: $a4
	ret  nz                                          ; $4d7a: $c0

	call nc, $36c0                                   ; $4d7b: $d4 $c0 $36
	adc  l                                           ; $4d7e: $8d
	ld   [$0305], sp                                 ; $4d7f: $08 $05 $03
	ld   d, e                                        ; $4d82: $53
	ld   c, d                                        ; $4d83: $4a
	ld   d, e                                        ; $4d84: $53
	ld   c, [hl]                                     ; $4d85: $4e
	ld   c, a                                        ; $4d86: $4f
	add  d                                           ; $4d87: $82
	ld   b, b                                        ; $4d88: $40
	inc  c                                           ; $4d89: $0c
	ld   h, b                                        ; $4d8a: $60
	ld   a, a                                        ; $4d8b: $7f
	ld   e, c                                        ; $4d8c: $59
	ld   b, [hl]                                     ; $4d8d: $46
	ld   b, b                                        ; $4d8e: $40
	ld   b, [hl]                                     ; $4d8f: $46
	ld   c, c                                        ; $4d90: $49
	nop                                              ; $4d91: $00
	adc  a                                           ; $4d92: $8f
	add  b                                           ; $4d93: $80
	and  b                                           ; $4d94: $a0
	cp   a                                           ; $4d95: $bf
	rra                                              ; $4d96: $1f
	add  d                                           ; $4d97: $82
	nop                                              ; $4d98: $00
	add  b                                           ; $4d99: $80
	rst  $38                                         ; $4d9a: $ff
	add  c                                           ; $4d9b: $81
	nop                                              ; $4d9c: $00
	ld   [bc], a                                     ; $4d9d: $02
	rst  $38                                         ; $4d9e: $ff
	nop                                              ; $4d9f: $00
	rst  $38                                         ; $4da0: $ff
	add  b                                           ; $4da1: $80
	nop                                              ; $4da2: $00
	add  b                                           ; $4da3: $80
	rst  $38                                         ; $4da4: $ff
	add  d                                           ; $4da5: $82
	nop                                              ; $4da6: $00
	add  b                                           ; $4da7: $80
	rst  $38                                         ; $4da8: $ff
	sub  c                                           ; $4da9: $91
	nop                                              ; $4daa: $00
	inc  bc                                          ; $4dab: $03
	xor  a                                           ; $4dac: $af
	sbc  a                                           ; $4dad: $9f
	adc  a                                           ; $4dae: $8f
	sbc  a                                           ; $4daf: $9f
	add  b                                           ; $4db0: $80

jr_014_4db1:
	cp   a                                           ; $4db1: $bf
	dec  c                                           ; $4db2: $0d
	sbc  a                                           ; $4db3: $9f
	cp   a                                           ; $4db4: $bf
	or   a                                           ; $4db5: $b7
	cp   a                                           ; $4db6: $bf
	and  a                                           ; $4db7: $a7
	or   a                                           ; $4db8: $b7
	and  a                                           ; $4db9: $a7
	and  e                                           ; $4dba: $a3
	add  e                                           ; $4dbb: $83
	and  b                                           ; $4dbc: $a0
	or   e                                           ; $4dbd: $b3
	pop  af                                          ; $4dbe: $f1
	add  c                                           ; $4dbf: $81
	pop  de                                          ; $4dc0: $d1
	add  b                                           ; $4dc1: $80
	reti                                             ; $4dc2: $d9


	inc  bc                                          ; $4dc3: $03
	push bc                                          ; $4dc4: $c5
	db   $dd                                         ; $4dc5: $dd
	sbc  c                                           ; $4dc6: $99
	db   $dd                                         ; $4dc7: $dd
	add  b                                           ; $4dc8: $80
	adc  l                                           ; $4dc9: $8d
	ld   bc, $8d0d                                   ; $4dca: $01 $0d $8d
	add  b                                           ; $4dcd: $80
	dec  c                                           ; $4dce: $0d
	nop                                              ; $4dcf: $00
	pop  af                                          ; $4dd0: $f1
	adc  l                                           ; $4dd1: $8d
	add  b                                           ; $4dd2: $80
	ld   bc, $0471                                   ; $4dd3: $01 $71 $04
	add  c                                           ; $4dd6: $81
	pop  af                                          ; $4dd7: $f1
	dec  b                                           ; $4dd8: $05
	ld   bc, $a571                                   ; $4dd9: $01 $71 $a5
	push de                                          ; $4ddc: $d5
	ld   bc, $8005                                   ; $4ddd: $01 $05 $80
	pop  af                                          ; $4de0: $f1
	nop                                              ; $4de1: $00
	rst  $38                                         ; $4de2: $ff
	add  b                                           ; $4de3: $80
	nop                                              ; $4de4: $00
	db   $10                                         ; $4de5: $10
	rrca                                             ; $4de6: $0f
	ldh  a, [$80]                                    ; $4de7: $f0 $80
	rst  $38                                         ; $4de9: $ff
	ret  nc                                          ; $4dea: $d0

	rst  $38                                         ; $4deb: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4dec: $cf
	rst  $38                                         ; $4ded: $ff
	call $cffd                                       ; $4dee: $cd $fd $cf
	rst  $38                                         ; $4df1: $ff
	ldh  [$80], a                                    ; $4df2: $e0 $80
	rst  $38                                         ; $4df4: $ff
	nop                                              ; $4df5: $00
	ld   sp, hl                                      ; $4df6: $f9
	add  b                                           ; $4df7: $80
	ld   b, $01                                      ; $4df8: $06 $01
	or   $06                                         ; $4dfa: $f6 $06
	add  c                                           ; $4dfc: $81
	or   $80                                         ; $4dfd: $f6 $80
	ld   d, [hl]                                     ; $4dff: $56
	add  b                                           ; $4e00: $80
	db   $f4                                         ; $4e01: $f4
	add  b                                           ; $4e02: $80
	nop                                              ; $4e03: $00
	inc  b                                           ; $4e04: $04
	rst  $38                                         ; $4e05: $ff
	nop                                              ; $4e06: $00
	rst  $28                                         ; $4e07: $ef
	ld   de, $8201                                   ; $4e08: $11 $01 $82
	ld   de, $0101                                   ; $4e0b: $11 $01 $01
	add  hl, bc                                      ; $4e0e: $09
	add  c                                           ; $4e0f: $81
	add  hl, sp                                      ; $4e10: $39
	inc  b                                           ; $4e11: $04
	ld   sp, $0901                                   ; $4e12: $31 $01 $09
	add  hl, sp                                      ; $4e15: $39
	rra                                              ; $4e16: $1f
	add  c                                           ; $4e17: $81
	ld   c, $80                                      ; $4e18: $0e $80

jr_014_4e1a:
	ld   a, [bc]                                     ; $4e1a: $0a
	add  b                                           ; $4e1b: $80
	ld   [bc], a                                     ; $4e1c: $02
	ld   [$020a], sp                                 ; $4e1d: $08 $0a $02
	inc  de                                          ; $4e20: $13
	inc  bc                                          ; $4e21: $03
	dec  [hl]                                        ; $4e22: $35
	ld   bc, $0004                                   ; $4e23: $01 $04 $00
	db   $d3                                         ; $4e26: $d3
	add  b                                           ; $4e27: $80
	ld   [$4080], sp                                 ; $4e28: $08 $80 $40
	inc  bc                                          ; $4e2b: $03
	jp   c, $aa8a                                    ; $4e2c: $da $8a $aa

	jr   nz, jr_014_4db1                             ; $4e2f: $20 $80

	ld   [hl], l                                     ; $4e31: $75
	ld   bc, $4445                                   ; $4e32: $01 $45 $44
	add  b                                           ; $4e35: $80
	jr   nc, jr_014_4e3d                             ; $4e36: $30 $05

	ld   b, c                                        ; $4e38: $41
	xor  h                                           ; $4e39: $ac
	add  sp, -$38                                    ; $4e3a: $e8 $c8
	add  l                                           ; $4e3c: $85

jr_014_4e3d:
	ret  nz                                          ; $4e3d: $c0

	add  b                                           ; $4e3e: $80
	ld   a, [hl+]                                    ; $4e3f: $2a
	ld   bc, $22aa                                   ; $4e40: $01 $aa $22
	add  b                                           ; $4e43: $80
	ld   h, a                                        ; $4e44: $67
	add  b                                           ; $4e45: $80
	ld   l, b                                        ; $4e46: $68
	add  b                                           ; $4e47: $80
	ld   h, e                                        ; $4e48: $63
	dec  b                                           ; $4e49: $05
	ld   h, b                                        ; $4e4a: $60
	sub  [hl]                                        ; $4e4b: $96
	jr   nc, jr_014_4e8a                             ; $4e4c: $30 $3c

	jr   c, jr_014_4e68                              ; $4e4e: $38 $18

	add  c                                           ; $4e50: $81
	ret  c                                           ; $4e51: $d8

	ld   [$5054], sp                                 ; $4e52: $08 $54 $50
	ld   [de], a                                     ; $4e55: $12
	sub  b                                           ; $4e56: $90
	xor  b                                           ; $4e57: $a8
	jr   nz, jr_014_4e62                             ; $4e58: $20 $08

	add  b                                           ; $4e5a: $80
	add  h                                           ; $4e5b: $84
	adc  l                                           ; $4e5c: $8d
	ld   [$1b07], sp                                 ; $4e5d: $08 $07 $1b
	ldh  a, [$ee]                                    ; $4e60: $f0 $ee

jr_014_4e62:
	nop                                              ; $4e62: $00
	dec  d                                           ; $4e63: $15
	call nz, $03e7                                   ; $4e64: $c4 $e7 $03
	add  b                                           ; $4e67: $80

jr_014_4e68:
	dec  bc                                          ; $4e68: $0b
	inc  bc                                          ; $4e69: $03
	rst  $28                                         ; $4e6a: $ef
	rst  ToBoot                                         ; $4e6b: $c7
	rst  $10                                         ; $4e6c: $d7
	rst  ToBoot                                         ; $4e6d: $c7
	add  d                                           ; $4e6e: $82
	nop                                              ; $4e6f: $00
	ld   c, $c0                                      ; $4e70: $0e $c0
	nop                                              ; $4e72: $00
	and  b                                           ; $4e73: $a0
	nop                                              ; $4e74: $00
	ld   d, b                                        ; $4e75: $50
	nop                                              ; $4e76: $00
	xor  b                                           ; $4e77: $a8
	add  b                                           ; $4e78: $80
	or   h                                           ; $4e79: $b4
	add  b                                           ; $4e7a: $80
	adc  b                                           ; $4e7b: $88
	sub  b                                           ; $4e7c: $90
	jr   nc, jr_014_4e7f                             ; $4e7d: $30 $00

jr_014_4e7f:
	inc  b                                           ; $4e7f: $04
	add  [hl]                                        ; $4e80: $86
	ld   [rRAMG], sp                                 ; $4e81: $08 $00 $00
	add  b                                           ; $4e84: $80
	jr   jr_014_4e8b                                 ; $4e85: $18 $04

	jr   z, jr_014_4ec1                              ; $4e87: $28 $38

	ld   e, b                                        ; $4e89: $58

jr_014_4e8a:
	ld   a, b                                        ; $4e8a: $78

jr_014_4e8b:
	jr   nc, jr_014_4e1a                             ; $4e8b: $30 $8d

	nop                                              ; $4e8d: $00
	inc  b                                           ; $4e8e: $04
	sbc  a                                           ; $4e8f: $9f
	xor  h                                           ; $4e90: $ac
	xor  [hl]                                        ; $4e91: $ae
	cp   [hl]                                        ; $4e92: $be
	cp   l                                           ; $4e93: $bd
	add  e                                           ; $4e94: $83
	cp   a                                           ; $4e95: $bf
	inc  bc                                          ; $4e96: $03
	sbc  h                                           ; $4e97: $9c
	sbc  [hl]                                        ; $4e98: $9e
	adc  h                                           ; $4e99: $8c
	sbc  h                                           ; $4e9a: $9c
	add  b                                           ; $4e9b: $80
	adc  [hl]                                        ; $4e9c: $8e
	ld   [bc], a                                     ; $4e9d: $02
	rst  JumpTable                                         ; $4e9e: $df
	ld   a, l                                        ; $4e9f: $7d
	ld   l, l                                        ; $4ea0: $6d
	add  l                                           ; $4ea1: $85
	db   $fd                                         ; $4ea2: $fd
	ld   b, $f9                                      ; $4ea3: $06 $f9
	db   $fd                                         ; $4ea5: $fd
	ld   a, c                                        ; $4ea6: $79
	ld   sp, hl                                      ; $4ea7: $f9
	ld   a, c                                        ; $4ea8: $79
	ld   [hl], c                                     ; $4ea9: $71
	adc  l                                           ; $4eaa: $8d
	adc  [hl]                                        ; $4eab: $8e
	add  b                                           ; $4eac: $80
	ld   bc, $00ff                                   ; $4ead: $01 $ff $00
	add  e                                           ; $4eb0: $83
	rst  $38                                         ; $4eb1: $ff
	ld   [de], a                                     ; $4eb2: $12
	db   $e3                                         ; $4eb3: $e3
	rst  $38                                         ; $4eb4: $ff
	ld   de, $8cff                                   ; $4eb5: $11 $ff $8c
	rst  $38                                         ; $4eb8: $ff
	ld   a, a                                        ; $4eb9: $7f
	rst  $38                                         ; $4eba: $ff
	ld   bc, $06ff                                   ; $4ebb: $01 $ff $06
	rst  $38                                         ; $4ebe: $ff
	ei                                               ; $4ebf: $fb
	rst  $38                                         ; $4ec0: $ff

jr_014_4ec1:
	cp   $ff                                         ; $4ec1: $fe $ff

jr_014_4ec3:
	ldh  a, [rIE]                                    ; $4ec3: $f0 $ff
	db   $e3                                         ; $4ec5: $e3
	add  c                                           ; $4ec6: $81
	rst  $38                                         ; $4ec7: $ff
	inc  b                                           ; $4ec8: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4ec9: $cf
	rst  $38                                         ; $4eca: $ff
	jr   nz, @+$01                                   ; $4ecb: $20 $ff

	nop                                              ; $4ecd: $00
	add  e                                           ; $4ece: $83
	rst  $38                                         ; $4ecf: $ff
	inc  b                                           ; $4ed0: $04
	ccf                                              ; $4ed1: $3f
	rst  $38                                         ; $4ed2: $ff
	nop                                              ; $4ed3: $00
	rst  $38                                         ; $4ed4: $ff
	ret  nz                                          ; $4ed5: $c0

	add  c                                           ; $4ed6: $81
	rst  $38                                         ; $4ed7: $ff
	ld   bc, $3938                                   ; $4ed8: $01 $38 $39
	add  b                                           ; $4edb: $80
	ld   bc, $1180                                   ; $4edc: $01 $80 $11
	nop                                              ; $4edf: $00
	ld   bc, $1181                                   ; $4ee0: $01 $81 $11
	add  b                                           ; $4ee3: $80
	inc  de                                          ; $4ee4: $13
	inc  b                                           ; $4ee5: $04
	inc  d                                           ; $4ee6: $14
	rla                                              ; $4ee7: $17
	db   $10                                         ; $4ee8: $10
	ld   d, $1c                                      ; $4ee9: $16 $1c
	add  b                                           ; $4eeb: $80
	ld   [bc], a                                     ; $4eec: $02
	add  c                                           ; $4eed: $81
	inc  bc                                          ; $4eee: $03
	ld   b, $07                                      ; $4eef: $06 $07
	ld   bc, $000b                                   ; $4ef1: $01 $0b $00
	dec  b                                           ; $4ef4: $05
	nop                                              ; $4ef5: $00
	inc  bc                                          ; $4ef6: $03
	add  c                                           ; $4ef7: $81
	nop                                              ; $4ef8: $00
	rlca                                             ; $4ef9: $07
	jr   nc, jr_014_4efd                             ; $4efa: $30 $01

	rlca                                             ; $4efc: $07

jr_014_4efd:
	ld   d, l                                        ; $4efd: $55
	ld   a, a                                        ; $4efe: $7f
	ld   h, e                                        ; $4eff: $63
	ccf                                              ; $4f00: $3f
	ld   a, a                                        ; $4f01: $7f
	add  b                                           ; $4f02: $80
	ccf                                              ; $4f03: $3f
	ld   d, $9e                                      ; $4f04: $16 $9e
	ccf                                              ; $4f06: $3f
	ld   e, [hl]                                     ; $4f07: $5e
	ld   e, $b6                                      ; $4f08: $1e $b6
	rrca                                             ; $4f0a: $0f
	ld   l, [hl]                                     ; $4f0b: $6e
	ldh  [$f2], a                                    ; $4f0c: $e0 $f2
	ld   [$f1ff], a                                  ; $4f0e: $ea $ff $f1
	ccf                                              ; $4f11: $3f
	rst  $38                                         ; $4f12: $ff
	ccf                                              ; $4f13: $3f
	rst  $38                                         ; $4f14: $ff
	sbc  $3f                                         ; $4f15: $de $3f
	ld   e, $de                                      ; $4f17: $1e $de
	db   $db                                         ; $4f19: $db
	db   $fc                                         ; $4f1a: $fc
	db   $fd                                         ; $4f1b: $fd
	add  b                                           ; $4f1c: $80
	db   $10                                         ; $4f1d: $10
	add  c                                           ; $4f1e: $81
	or   b                                           ; $4f1f: $b0
	ld   a, [bc]                                     ; $4f20: $0a
	jr   c, jr_014_4ec3                              ; $4f21: $38 $a0

	inc  [hl]                                        ; $4f23: $34
	nop                                              ; $4f24: $00
	ld   l, b                                        ; $4f25: $68
	nop                                              ; $4f26: $00
	or   b                                           ; $4f27: $b0
	nop                                              ; $4f28: $00
	ld   b, b                                        ; $4f29: $40
	nop                                              ; $4f2a: $00
	add  b                                           ; $4f2b: $80
	adc  l                                           ; $4f2c: $8d
	ld   [$f702], sp                                 ; $4f2d: $08 $02 $f7
	nop                                              ; $4f30: $00
	rst  $38                                         ; $4f31: $ff
	add  b                                           ; $4f32: $80
	nop                                              ; $4f33: $00
	add  b                                           ; $4f34: $80
	rst  $38                                         ; $4f35: $ff
	add  d                                           ; $4f36: $82
	nop                                              ; $4f37: $00
	add  b                                           ; $4f38: $80
	rst  $38                                         ; $4f39: $ff
	add  c                                           ; $4f3a: $81
	nop                                              ; $4f3b: $00
	ld   b, $fc                                      ; $4f3c: $06 $fc
	nop                                              ; $4f3e: $00
	db   $fd                                         ; $4f3f: $fd
	ld   bc, $fd05                                   ; $4f40: $01 $05 $fd

jr_014_4f43:
	ld   hl, sp-$7e                                  ; $4f43: $f8 $82
	nop                                              ; $4f45: $00
	ld   [bc], a                                     ; $4f46: $02
	rst  $38                                         ; $4f47: $ff
	cp   $01                                         ; $4f48: $fe $01
	add  b                                           ; $4f4a: $80
	nop                                              ; $4f4b: $00
	dec  b                                           ; $4f4c: $05
	xor  b                                           ; $4f4d: $a8
	ret  z                                           ; $4f4e: $c8

	ld   l, b                                        ; $4f4f: $68
	ret  z                                           ; $4f50: $c8

	jr   nc, jr_014_4f43                             ; $4f51: $30 $f0

	add  d                                           ; $4f53: $82
	nop                                              ; $4f54: $00
	ld   b, $40                                      ; $4f55: $06 $40
	ret  nz                                          ; $4f57: $c0

	and  b                                           ; $4f58: $a0
	ldh  [rLCDC], a                                  ; $4f59: $e0 $40
	ldh  [$60], a                                    ; $4f5b: $e0 $60
	adc  l                                           ; $4f5d: $8d
	nop                                              ; $4f5e: $00
	ld   a, [bc]                                     ; $4f5f: $0a
	cp   a                                           ; $4f60: $bf
	add  [hl]                                        ; $4f61: $86
	cp   h                                           ; $4f62: $bc
	adc  e                                           ; $4f63: $8b
	rrca                                             ; $4f64: $0f
	ld   [hl], c                                     ; $4f65: $71
	ld   h, b                                        ; $4f66: $60
	ld   e, $0c                                      ; $4f67: $1e $0c
	inc  bc                                          ; $4f69: $03
	ld   bc, $0083                                   ; $4f6a: $01 $83 $00
	ld   c, $dc                                      ; $4f6d: $0e $dc
	ld   hl, $c141                                   ; $4f6f: $21 $41 $c1
	ld   bc, $e181                                   ; $4f72: $01 $81 $e1
	ld   hl, $c53d                                   ; $4f75: $21 $3d $c5
	add  l                                           ; $4f78: $85
	ld   a, c                                        ; $4f79: $79
	ld   sp, $070f                                   ; $4f7a: $31 $0f $07
	add  b                                           ; $4f7d: $80
	nop                                              ; $4f7e: $00
	adc  h                                           ; $4f7f: $8c

Jump_014_4f80:
	add  b                                           ; $4f80: $80
	add  e                                           ; $4f81: $83
	nop                                              ; $4f82: $00
	inc  c                                           ; $4f83: $0c
	rra                                              ; $4f84: $1f
	ld   a, a                                        ; $4f85: $7f
	ld   l, a                                        ; $4f86: $6f
	ld   a, a                                        ; $4f87: $7f
	ld   h, a                                        ; $4f88: $67
	ld   a, a                                        ; $4f89: $7f
	ld   h, l                                        ; $4f8a: $65
	ld   a, a                                        ; $4f8b: $7f
	ld   h, l                                        ; $4f8c: $65
	ld   a, a                                        ; $4f8d: $7f
	ld   h, e                                        ; $4f8e: $63
	ld   a, a                                        ; $4f8f: $7f
	ld   [hl], h                                     ; $4f90: $74
	add  c                                           ; $4f91: $81
	nop                                              ; $4f92: $00
	add  [hl]                                        ; $4f93: $86
	cp   $80                                         ; $4f94: $fe $80
	db   $fc                                         ; $4f96: $fc
	add  b                                           ; $4f97: $80
	ld   hl, sp-$7e                                  ; $4f98: $f8 $82
	nop                                              ; $4f9a: $00
	inc  c                                           ; $4f9b: $0c
	rra                                              ; $4f9c: $1f
	ld   a, a                                        ; $4f9d: $7f
	ld   l, a                                        ; $4f9e: $6f
	ld   a, a                                        ; $4f9f: $7f
	ld   l, a                                        ; $4fa0: $6f
	ld   a, a                                        ; $4fa1: $7f
	ld   l, a                                        ; $4fa2: $6f
	ld   a, a                                        ; $4fa3: $7f
	ld   h, a                                        ; $4fa4: $67
	ld   a, a                                        ; $4fa5: $7f
	ld   h, a                                        ; $4fa6: $67

jr_014_4fa7:
	ld   a, a                                        ; $4fa7: $7f
	ld   [hl], b                                     ; $4fa8: $70
	sub  e                                           ; $4fa9: $93
	nop                                              ; $4faa: $00
	dec  d                                           ; $4fab: $15
	ld   [bc], a                                     ; $4fac: $02
	inc  bc                                          ; $4fad: $03
	ld   de, $0e1e                                   ; $4fae: $11 $1e $0e
	ld   [hl], c                                     ; $4fb1: $71
	or   $8e                                         ; $4fb2: $f6 $8e
	or   [hl]                                        ; $4fb4: $b6
	adc  [hl]                                        ; $4fb5: $8e
	ld   sp, $0800                                   ; $4fb6: $31 $00 $08
	rrca                                             ; $4fb9: $0f
	ld   b, a                                        ; $4fba: $47
	ld   a, c                                        ; $4fbb: $79
	add  hl, sp                                      ; $4fbc: $39
	push bc                                          ; $4fbd: $c5
	reti                                             ; $4fbe: $d9


	ld   hl, $8141                                   ; $4fbf: $21 $41 $81
	add  b                                           ; $4fc2: $80
	pop  bc                                          ; $4fc3: $c1
	ld   [bc], a                                     ; $4fc4: $02
	ld   hl, $7da1                                   ; $4fc5: $21 $a1 $7d
	add  b                                           ; $4fc8: $80
	nop                                              ; $4fc9: $00
	adc  h                                           ; $4fca: $8c
	add  b                                           ; $4fcb: $80
	adc  [hl]                                        ; $4fcc: $8e
	ld   b, [hl]                                     ; $4fcd: $46
	dec  c                                           ; $4fce: $0d
	nop                                              ; $4fcf: $00
	ldh  [rAUD1SWEEP], a                             ; $4fd0: $e0 $10
	ld   [hl], b                                     ; $4fd2: $70
	nop                                              ; $4fd3: $00
	ld   h, b                                        ; $4fd4: $60
	db   $10                                         ; $4fd5: $10
	ld   [hl], b                                     ; $4fd6: $70
	nop                                              ; $4fd7: $00
	ld   h, b                                        ; $4fd8: $60
	db   $10                                         ; $4fd9: $10
	pop  af                                          ; $4fda: $f1
	ld   bc, $8000                                   ; $4fdb: $01 $00 $80
	rst  $38                                         ; $4fde: $ff
	inc  bc                                          ; $4fdf: $03
	nop                                              ; $4fe0: $00
	ld   sp, $394a                                   ; $4fe1: $31 $4a $39
	add  e                                           ; $4fe4: $83
	nop                                              ; $4fe5: $00
	ld   [bc], a                                     ; $4fe6: $02
	ld   [hl], e                                     ; $4fe7: $73
	ld   c, d                                        ; $4fe8: $4a
	ld   a, e                                        ; $4fe9: $7b
	add  b                                           ; $4fea: $80
	nop                                              ; $4feb: $00
	add  b                                           ; $4fec: $80
	rst  $38                                         ; $4fed: $ff
	add  c                                           ; $4fee: $81
	nop                                              ; $4fef: $00
	dec  b                                           ; $4ff0: $05
	ld   [$120f], sp                                 ; $4ff1: $08 $0f $12
	dec  e                                           ; $4ff4: $1d
	nop                                              ; $4ff5: $00
	add  hl, de                                      ; $4ff6: $19
	add  l                                           ; $4ff7: $85
	ld   de, $0082                                   ; $4ff8: $11 $82 $00
	add  b                                           ; $4ffb: $80
	rst  $38                                         ; $4ffc: $ff
	adc  h                                           ; $4ffd: $8c
	nop                                              ; $4ffe: $00
	add  b                                           ; $4fff: $80
	rst  $38                                         ; $5000: $ff
	add  e                                           ; $5001: $83
	nop                                              ; $5002: $00
	inc  b                                           ; $5003: $04
	ld   bc, $0600                                   ; $5004: $01 $00 $06
	nop                                              ; $5007: $00
	rlca                                             ; $5008: $07
	add  d                                           ; $5009: $82
	nop                                              ; $500a: $00
	add  b                                           ; $500b: $80
	rst  $38                                         ; $500c: $ff
	add  e                                           ; $500d: $83
	nop                                              ; $500e: $00
	inc  b                                           ; $500f: $04
	ldh  a, [rP1]                                    ; $5010: $f0 $00
	db   $ec                                         ; $5012: $ec
	nop                                              ; $5013: $00
	inc  e                                           ; $5014: $1c
	add  d                                           ; $5015: $82
	nop                                              ; $5016: $00
	add  b                                           ; $5017: $80
	rst  $38                                         ; $5018: $ff
	adc  e                                           ; $5019: $8b
	nop                                              ; $501a: $00
	dec  b                                           ; $501b: $05
	db   $10                                         ; $501c: $10
	ldh  a, [$c8]                                    ; $501d: $f0 $c8
	jr   c, jr_014_5021                              ; $501f: $38 $00

jr_014_5021:
	jr   jr_014_4fa7                                 ; $5021: $18 $84

	ld   [$4802], sp                                 ; $5023: $08 $02 $48
	ld   d, b                                        ; $5026: $50
	db   $10                                         ; $5027: $10
	add  h                                           ; $5028: $84
	ld   d, b                                        ; $5029: $50
	rlca                                             ; $502a: $07
	ld   b, b                                        ; $502b: $40
	ld   c, b                                        ; $502c: $48
	ld   e, b                                        ; $502d: $58
	ld   d, h                                        ; $502e: $54
	ld   e, h                                        ; $502f: $5c
	ld   e, d                                        ; $5030: $5a
	ld   e, [hl]                                     ; $5031: $5e
	ld   e, h                                        ; $5032: $5c
	add  c                                           ; $5033: $81
	nop                                              ; $5034: $00
	nop                                              ; $5035: $00
	ld   bc, $0081                                   ; $5036: $01 $81 $00
	ld   [bc], a                                     ; $5039: $02
	ld   [bc], a                                     ; $503a: $02
	nop                                              ; $503b: $00
	ld   bc, $0083                                   ; $503c: $01 $83 $00
	rlca                                             ; $503f: $07
	ld   h, d                                        ; $5040: $62
	ld   b, $bf                                      ; $5041: $06 $bf
	add  hl, de                                      ; $5043: $19
	ld   [hl], a                                     ; $5044: $77
	scf                                              ; $5045: $37
	rst  $28                                         ; $5046: $ef
	ld   l, a                                        ; $5047: $6f
	add  b                                           ; $5048: $80
	ld   l, b                                        ; $5049: $68
	add  b                                           ; $504a: $80
	add  a                                           ; $504b: $87
	add  b                                           ; $504c: $80
	rst  JumpTable                                         ; $504d: $df
	sub  b                                           ; $504e: $90
	nop                                              ; $504f: $00
	dec  b                                           ; $5050: $05
	xor  a                                           ; $5051: $af
	sbc  d                                           ; $5052: $9a
	adc  d                                           ; $5053: $8a
	sbc  h                                           ; $5054: $9c
	cp   h                                           ; $5055: $bc
	cp   [hl]                                        ; $5056: $be
	add  b                                           ; $5057: $80
	sbc  [hl]                                        ; $5058: $9e
	dec  bc                                          ; $5059: $0b
	sub  a                                           ; $505a: $97

jr_014_505b:
	xor  h                                           ; $505b: $ac
	or   [hl]                                        ; $505c: $b6
	or   b                                           ; $505d: $b0
	xor  h                                           ; $505e: $ac
	and  b                                           ; $505f: $a0
	adc  b                                           ; $5060: $88
	and  b                                           ; $5061: $a0
	or   h                                           ; $5062: $b4
	ld   [hl], c                                     ; $5063: $71
	ld   bc, $80d1                                   ; $5064: $01 $d1 $80
	reti                                             ; $5067: $d9


	ld   a, [bc]                                     ; $5068: $0a
	push bc                                          ; $5069: $c5
	push de                                          ; $506a: $d5
	add  c                                           ; $506b: $81
	ld   c, l                                        ; $506c: $4d
	dec  l                                           ; $506d: $2d
	dec  c                                           ; $506e: $0d
	db   $ed                                         ; $506f: $ed
	dec  c                                           ; $5070: $0d
	ld   c, l                                        ; $5071: $4d
	dec  c                                           ; $5072: $0d
	ld   [hl], c                                     ; $5073: $71
	adc  [hl]                                        ; $5074: $8e
	add  b                                           ; $5075: $80
	add  a                                           ; $5076: $87
	ld   b, [hl]                                     ; $5077: $46
	add  b                                           ; $5078: $80
	ld   h, [hl]                                     ; $5079: $66
	db   $10                                         ; $507a: $10
	ld   d, $76                                      ; $507b: $16 $76
	ld   b, $3f                                      ; $507d: $06 $3f
	rra                                              ; $507f: $1f
	nop                                              ; $5080: $00
	ld   b, $09                                      ; $5081: $06 $09
	rlca                                             ; $5083: $07
	nop                                              ; $5084: $00
	ld   c, $09                                      ; $5085: $0e $09
	ld   c, $00                                      ; $5087: $0e $00
	rlca                                             ; $5089: $07
	add  hl, bc                                      ; $508a: $09
	rrca                                             ; $508b: $0f
	add  b                                           ; $508c: $80
	nop                                              ; $508d: $00
	nop                                              ; $508e: $00
	rst  $38                                         ; $508f: $ff
	adc  [hl]                                        ; $5090: $8e
	nop                                              ; $5091: $00
	nop                                              ; $5092: $00
	rst  $38                                         ; $5093: $ff
	add  b                                           ; $5094: $80
	ld   de, $0101                                   ; $5095: $11 $01 $01
	add  hl, bc                                      ; $5098: $09
	add  c                                           ; $5099: $81
	add  hl, sp                                      ; $509a: $39
	dec  b                                           ; $509b: $05
	ld   sp, $0901                                   ; $509c: $31 $01 $09
	add  hl, sp                                      ; $509f: $39
	add  hl, bc                                      ; $50a0: $09
	add  hl, sp                                      ; $50a1: $39
	add  c                                           ; $50a2: $81
	ld   bc, $0014                                   ; $50a3: $01 $14 $00
	ld   bc, $0200                                   ; $50a6: $01 $00 $02
	nop                                              ; $50a9: $00
	ld   bc, $0400                                   ; $50aa: $01 $00 $04
	nop                                              ; $50ad: $00
	dec  bc                                          ; $50ae: $0b
	ld   bc, $0217                                   ; $50af: $01 $17 $02
	ld   c, $04                                      ; $50b2: $0e $04
	rst  $28                                         ; $50b4: $ef
	nop                                              ; $50b5: $00
	ld   [hl], a                                     ; $50b6: $77
	inc  bc                                          ; $50b7: $03
	ei                                               ; $50b8: $fb
	ld   [hl], e                                     ; $50b9: $73
	add  b                                           ; $50ba: $80
	rst  ToBoot                                         ; $50bb: $c7
	add  b                                           ; $50bc: $80
	rst  $30                                         ; $50bd: $f7
	inc  bc                                          ; $50be: $03
	rst  $38                                         ; $50bf: $ff
	ld   a, a                                        ; $50c0: $7f
	ld   a, e                                        ; $50c1: $7b
	ei                                               ; $50c2: $fb
	add  b                                           ; $50c3: $80
	db   $eb                                         ; $50c4: $eb
	inc  b                                           ; $50c5: $04
	and  $e0                                         ; $50c6: $e6 $e0
	db   $fd                                         ; $50c8: $fd
	ld   hl, sp-$02                                  ; $50c9: $f8 $fe
	add  c                                           ; $50cb: $81
	db   $fc                                         ; $50cc: $fc
	ld   [$cecf], sp                                 ; $50cd: $08 $cf $ce
	rst  $30                                         ; $50d0: $f7
	or   $fa                                         ; $50d1: $f6 $fa
	ei                                               ; $50d3: $fb
	db   $fd                                         ; $50d4: $fd
	db   $dd                                         ; $50d5: $dd
	jr   nz, jr_014_505b                             ; $50d6: $20 $83

	nop                                              ; $50d8: $00
	ld   a, [bc]                                     ; $50d9: $0a
	add  b                                           ; $50da: $80
	nop                                              ; $50db: $00
	ld   b, b                                        ; $50dc: $40
	nop                                              ; $50dd: $00
	and  b                                           ; $50de: $a0
	nop                                              ; $50df: $00
	ret  nc                                          ; $50e0: $d0

	nop                                              ; $50e1: $00
	ld   l, b                                        ; $50e2: $68
	nop                                              ; $50e3: $00
	ret  c                                           ; $50e4: $d8

	adc  l                                           ; $50e5: $8d
	ld   [$0305], sp                                 ; $50e6: $08 $05 $03
	ld   d, e                                        ; $50e9: $53
	ld   c, d                                        ; $50ea: $4a
	ld   d, e                                        ; $50eb: $53
	ld   c, [hl]                                     ; $50ec: $4e
	ld   c, a                                        ; $50ed: $4f
	add  d                                           ; $50ee: $82
	ld   b, b                                        ; $50ef: $40
	inc  c                                           ; $50f0: $0c
	ld   h, b                                        ; $50f1: $60
	ld   a, a                                        ; $50f2: $7f
	ld   e, c                                        ; $50f3: $59
	ld   b, [hl]                                     ; $50f4: $46
	ld   b, b                                        ; $50f5: $40
	ld   b, [hl]                                     ; $50f6: $46
	ld   b, l                                        ; $50f7: $45
	nop                                              ; $50f8: $00
	add  e                                           ; $50f9: $83
	add  b                                           ; $50fa: $80
	and  b                                           ; $50fb: $a0
	cp   a                                           ; $50fc: $bf
	rra                                              ; $50fd: $1f
	add  d                                           ; $50fe: $82
	nop                                              ; $50ff: $00
	add  b                                           ; $5100: $80
	rst  $38                                         ; $5101: $ff
	add  c                                           ; $5102: $81
	nop                                              ; $5103: $00
	ld   [bc], a                                     ; $5104: $02
	rst  $38                                         ; $5105: $ff
	nop                                              ; $5106: $00
	rst  $38                                         ; $5107: $ff
	add  b                                           ; $5108: $80
	nop                                              ; $5109: $00
	add  b                                           ; $510a: $80
	rst  $38                                         ; $510b: $ff
	add  d                                           ; $510c: $82
	nop                                              ; $510d: $00
	add  b                                           ; $510e: $80
	rst  $38                                         ; $510f: $ff
	sub  c                                           ; $5110: $91
	nop                                              ; $5111: $00
	nop                                              ; $5112: $00
	sbc  b                                           ; $5113: $98
	add  b                                           ; $5114: $80
	and  b                                           ; $5115: $a0
	ld   a, [bc]                                     ; $5116: $0a
	or   b                                           ; $5117: $b0
	or   d                                           ; $5118: $b2
	or   b                                           ; $5119: $b0
	cp   l                                           ; $511a: $bd
	and  d                                           ; $511b: $a2
	xor  e                                           ; $511c: $ab
	and  e                                           ; $511d: $a3
	add  b                                           ; $511e: $80
	sbc  d                                           ; $511f: $9a
	adc  b                                           ; $5120: $88
	sbc  b                                           ; $5121: $98
	add  b                                           ; $5122: $80
	adc  d                                           ; $5123: $8a
	inc  b                                           ; $5124: $04
	ld   e, e                                        ; $5125: $5b
	dec  a                                           ; $5126: $3d
	ld   l, l                                        ; $5127: $6d
	dec  e                                           ; $5128: $1d
	db   $dd                                         ; $5129: $dd
	add  b                                           ; $512a: $80
	dec  a                                           ; $512b: $3d
	add  b                                           ; $512c: $80
	db   $dd                                         ; $512d: $dd
	rlca                                             ; $512e: $07
	db   $ed                                         ; $512f: $ed
	jp   hl                                          ; $5130: $e9


	push af                                          ; $5131: $f5
	ld   [hl], c                                     ; $5132: $71
	ld   sp, hl                                      ; $5133: $f9
	ld   a, c                                        ; $5134: $79
	ld   [hl], c                                     ; $5135: $71
	adc  l                                           ; $5136: $8d
	adc  [hl]                                        ; $5137: $8e
	add  b                                           ; $5138: $80
	dec  bc                                          ; $5139: $0b
	nop                                              ; $513a: $00
	sbc  h                                           ; $513b: $9c
	ld   b, d                                        ; $513c: $42
	adc  h                                           ; $513d: $8c
	nop                                              ; $513e: $00
	ld   c, $02                                      ; $513f: $0e $02
	ld   a, [bc]                                     ; $5141: $0a
	nop                                              ; $5142: $00
	add  $40                                         ; $5143: $c6 $40
	jp   nc, $0080                                   ; $5145: $d2 $80 $00

	add  b                                           ; $5148: $80
	rst  $38                                         ; $5149: $ff
	adc  [hl]                                        ; $514a: $8e
	nop                                              ; $514b: $00
	adc  l                                           ; $514c: $8d
	ld   h, b                                        ; $514d: $60
	ld   [bc], a                                     ; $514e: $02
	ld   [hl], b                                     ; $514f: $70
	ld   de, $8201                                   ; $5150: $11 $01 $82
	ld   de, $0101                                   ; $5153: $11 $01 $01
	add  hl, bc                                      ; $5156: $09
	add  c                                           ; $5157: $81
	add  hl, sp                                      ; $5158: $39

jr_014_5159:
	inc  c                                           ; $5159: $0c
	ld   sp, $0901                                   ; $515a: $31 $01 $09
	add  hl, sp                                      ; $515d: $39
	ld   b, $00                                      ; $515e: $06 $00
	jr   jr_014_5167                                 ; $5160: $18 $05

	ld   b, a                                        ; $5162: $47
	dec  c                                           ; $5163: $0d
	dec  sp                                          ; $5164: $3b
	add  hl, de                                      ; $5165: $19
	dec  d                                           ; $5166: $15

jr_014_5167:
	add  c                                           ; $5167: $81
	inc  d                                           ; $5168: $14
	inc  c                                           ; $5169: $0c
	dec  l                                           ; $516a: $2d
	inc  c                                           ; $516b: $0c
	ld   c, h                                        ; $516c: $4c
	ld   c, $f5                                      ; $516d: $0e $f5
	push de                                          ; $516f: $d5
	pop  bc                                          ; $5170: $c1
	sbc  h                                           ; $5171: $9c
	call c, $3c3d                                    ; $5172: $dc $3d $3c
	ld   a, $be                                      ; $5175: $3e $be
	add  b                                           ; $5177: $80
	ld   a, [hl]                                     ; $5178: $7e
	add  b                                           ; $5179: $80
	ld   e, $80                                      ; $517a: $1e $80
	and  $0b                                         ; $517c: $e6 $0b
	inc  bc                                          ; $517e: $03
	cp   $c0                                         ; $517f: $fe $c0
	jp   $e8e0                                       ; $5181: $c3 $e0 $e8


	ld   h, b                                        ; $5184: $60
	ld   h, c                                        ; $5185: $61
	ld   b, $0a                                      ; $5186: $06 $0a
	adc  e                                           ; $5188: $8b
	res  0, b                                        ; $5189: $cb $80
	adc  e                                           ; $518b: $8b
	dec  bc                                          ; $518c: $0b
	xor  e                                           ; $518d: $ab
	dec  hl                                          ; $518e: $2b
	dec  sp                                          ; $518f: $3b
	add  sp, $20                                     ; $5190: $e8 $20
	inc  h                                           ; $5192: $24
	ldh  [$f8], a                                    ; $5193: $e0 $f8
	ldh  a, [$72]                                    ; $5195: $f0 $72
	ld   [hl], b                                     ; $5197: $70
	ld   a, h                                        ; $5198: $7c
	add  e                                           ; $5199: $83
	ld   a, b                                        ; $519a: $78
	add  b                                           ; $519b: $80
	ld   e, b                                        ; $519c: $58
	nop                                              ; $519d: $00
	ld   [bc], a                                     ; $519e: $02
	adc  l                                           ; $519f: $8d
	ld   [$3501], sp                                 ; $51a0: $08 $01 $35
	inc  a                                           ; $51a3: $3c
	add  b                                           ; $51a4: $80
	db   $fc                                         ; $51a5: $fc
	ld   bc, $fcfd                                   ; $51a6: $01 $fd $fc
	add  b                                           ; $51a9: $80
	inc  bc                                          ; $51aa: $03
	add  h                                           ; $51ab: $84
	rst  $38                                         ; $51ac: $ff
	add  d                                           ; $51ad: $82
	nop                                              ; $51ae: $00
	ld   [$0080], sp                                 ; $51af: $08 $80 $00
	ld   b, b                                        ; $51b2: $40
	nop                                              ; $51b3: $00
	add  b                                           ; $51b4: $80
	nop                                              ; $51b5: $00
	jr   nz, jr_014_51b8                             ; $51b6: $20 $00

jr_014_51b8:
	ret  nz                                          ; $51b8: $c0

	add  c                                           ; $51b9: $81
	add  b                                           ; $51ba: $80
	add  b                                           ; $51bb: $80
	nop                                              ; $51bc: $00
	nop                                              ; $51bd: $00
	jr   nz, @-$78                                   ; $51be: $20 $86

	ld   [rRAMG], sp                                 ; $51c0: $08 $00 $00
	add  b                                           ; $51c3: $80
	jr   jr_014_51ca                                 ; $51c4: $18 $04

	jr   z, jr_014_5200                              ; $51c6: $28 $38

	ld   e, b                                        ; $51c8: $58
	ld   a, b                                        ; $51c9: $78

jr_014_51ca:
	jr   nc, jr_014_5159                             ; $51ca: $30 $8d

	nop                                              ; $51cc: $00
	ld   a, [bc]                                     ; $51cd: $0a
	cp   a                                           ; $51ce: $bf
	add  [hl]                                        ; $51cf: $86
	cp   h                                           ; $51d0: $bc
	adc  e                                           ; $51d1: $8b
	rrca                                             ; $51d2: $0f
	ld   [hl], c                                     ; $51d3: $71
	ld   h, b                                        ; $51d4: $60
	ld   e, $0c                                      ; $51d5: $1e $0c
	inc  bc                                          ; $51d7: $03
	ld   bc, $0083                                   ; $51d8: $01 $83 $00
	ld   c, $dc                                      ; $51db: $0e $dc
	ld   hl, $c141                                   ; $51dd: $21 $41 $c1
	ld   bc, $e181                                   ; $51e0: $01 $81 $e1
	ld   hl, $c53d                                   ; $51e3: $21 $3d $c5
	add  l                                           ; $51e6: $85
	ld   a, c                                        ; $51e7: $79
	ld   sp, $070f                                   ; $51e8: $31 $0f $07
	add  b                                           ; $51eb: $80
	nop                                              ; $51ec: $00
	adc  h                                           ; $51ed: $8c
	add  b                                           ; $51ee: $80
	add  d                                           ; $51ef: $82
	nop                                              ; $51f0: $00
	inc  bc                                          ; $51f1: $03
	db   $fc                                         ; $51f2: $fc
	nop                                              ; $51f3: $00
	cp   $fc                                         ; $51f4: $fe $fc
	add  l                                           ; $51f6: $85
	cp   $80                                         ; $51f7: $fe $80
	db   $fc                                         ; $51f9: $fc
	add  b                                           ; $51fa: $80
	nop                                              ; $51fb: $00
	inc  bc                                          ; $51fc: $03
	inc  h                                           ; $51fd: $24
	inc  a                                           ; $51fe: $3c
	db   $10                                         ; $51ff: $10

jr_014_5200:
	inc  [hl]                                        ; $5200: $34
	add  b                                           ; $5201: $80
	inc  a                                           ; $5202: $3c
	add  e                                           ; $5203: $83
	nop                                              ; $5204: $00
	add  b                                           ; $5205: $80
	inc  a                                           ; $5206: $3c
	ld   bc, $3c00                                   ; $5207: $01 $00 $3c
	add  a                                           ; $520a: $87
	ld   h, b                                        ; $520b: $60
	add  b                                           ; $520c: $80
	ldh  [rTIMA], a                                  ; $520d: $e0 $05
	ld   b, b                                        ; $520f: $40
	ldh  [$80], a                                    ; $5210: $e0 $80
	ret  nz                                          ; $5212: $c0

	cp   b                                           ; $5213: $b8
	add  hl, sp                                      ; $5214: $39
	add  b                                           ; $5215: $80
	ld   bc, $1180                                   ; $5216: $01 $80 $11
	nop                                              ; $5219: $00
	ld   bc, $1181                                   ; $521a: $01 $81 $11
	add  b                                           ; $521d: $80
	inc  de                                          ; $521e: $13
	dec  e                                           ; $521f: $1d
	inc  d                                           ; $5220: $14
	rla                                              ; $5221: $17
	db   $10                                         ; $5222: $10
	ld   d, $3a                                      ; $5223: $16 $3a
	ld   c, $16                                      ; $5225: $0e $16
	ld   b, $26                                      ; $5227: $06 $26
	ld   b, $0b                                      ; $5229: $06 $0b
	inc  bc                                          ; $522b: $03
	inc  d                                           ; $522c: $14
	nop                                              ; $522d: $00
	dec  bc                                          ; $522e: $0b
	nop                                              ; $522f: $00
	ld   b, $00                                      ; $5230: $06 $00
	ld   bc, $4000                                   ; $5232: $01 $00 $40
	rlca                                             ; $5235: $07
	rra                                              ; $5236: $1f
	rst  $10                                         ; $5237: $d7
	ccf                                              ; $5238: $3f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5239: $cf
	ld   a, h                                        ; $523a: $7c
	ld   a, a                                        ; $523b: $7f
	ld   a, h                                        ; $523c: $7c
	ccf                                              ; $523d: $3f
	add  b                                           ; $523e: $80
	ld   a, a                                        ; $523f: $7f
	ld   b, $bf                                      ; $5240: $06 $bf
	inc  a                                           ; $5242: $3c
	ld   a, h                                        ; $5243: $7c
	rra                                              ; $5244: $1f
	db   $e4                                         ; $5245: $e4
	dec  sp                                          ; $5246: $3b
	inc  de                                          ; $5247: $13
	add  b                                           ; $5248: $80
	ld   d, e                                        ; $5249: $53
	ld   bc, $c2d3                                   ; $524a: $01 $d3 $c2
	add  b                                           ; $524d: $80
	jp   z, $da17                                    ; $524e: $ca $17 $da

	reti                                             ; $5251: $d9


	or   c                                           ; $5252: $b1
	or   b                                           ; $5253: $b0
	ld   hl, sp-$05                                  ; $5254: $f8 $fb
	ret  nz                                          ; $5256: $c0

	sub  l                                           ; $5257: $95
	ld   d, b                                        ; $5258: $50
	ld   c, d                                        ; $5259: $4a
	ld   b, b                                        ; $525a: $40
	ld   d, h                                        ; $525b: $54
	ld   b, b                                        ; $525c: $40
	xor  b                                           ; $525d: $a8
	add  b                                           ; $525e: $80
	sub  b                                           ; $525f: $90
	add  b                                           ; $5260: $80
	ld   b, b                                        ; $5261: $40
	nop                                              ; $5262: $00
	and  b                                           ; $5263: $a0
	nop                                              ; $5264: $00
	ld   b, b                                        ; $5265: $40
	nop                                              ; $5266: $00
	add  b                                           ; $5267: $80
	adc  l                                           ; $5268: $8d
	ld   [$f702], sp                                 ; $5269: $08 $02 $f7
	nop                                              ; $526c: $00
	rst  $38                                         ; $526d: $ff
	add  b                                           ; $526e: $80
	nop                                              ; $526f: $00
	add  b                                           ; $5270: $80
	rst  $38                                         ; $5271: $ff
	add  d                                           ; $5272: $82
	nop                                              ; $5273: $00
	add  b                                           ; $5274: $80

jr_014_5275:
	rst  $38                                         ; $5275: $ff
	add  c                                           ; $5276: $81
	nop                                              ; $5277: $00
	ld   b, $e0                                      ; $5278: $06 $e0
	nop                                              ; $527a: $00
	pop  hl                                          ; $527b: $e1
	ld   bc, $fd05                                   ; $527c: $01 $05 $fd

jr_014_527f:
	ld   hl, sp-$7e                                  ; $527f: $f8 $82
	nop                                              ; $5281: $00
	ld   [bc], a                                     ; $5282: $02
	rst  $38                                         ; $5283: $ff
	cp   $01                                         ; $5284: $fe $01
	add  b                                           ; $5286: $80
	nop                                              ; $5287: $00
	dec  b                                           ; $5288: $05
	xor  b                                           ; $5289: $a8
	ret  z                                           ; $528a: $c8

	ld   l, b                                        ; $528b: $68
	ret  z                                           ; $528c: $c8

	jr   nc, jr_014_527f                             ; $528d: $30 $f0

	add  d                                           ; $528f: $82
	nop                                              ; $5290: $00
	dec  b                                           ; $5291: $05
	ld   b, b                                        ; $5292: $40
	ret  nz                                          ; $5293: $c0

	and  b                                           ; $5294: $a0
	ldh  [rLCDC], a                                  ; $5295: $e0 $40
	ldh  [$98], a                                    ; $5297: $e0 $98
	ld   [bc], a                                     ; $5299: $02
	sbc  d                                           ; $529a: $9a
	nop                                              ; $529b: $00
	inc  b                                           ; $529c: $04
	inc  bc                                          ; $529d: $03
	nop                                              ; $529e: $00
	inc  b                                           ; $529f: $04
	inc  bc                                          ; $52a0: $03
	inc  b                                           ; $52a1: $04
	add  l                                           ; $52a2: $85
	nop                                              ; $52a3: $00
	inc  b                                           ; $52a4: $04
	ld   c, $00                                      ; $52a5: $0e $00
	ld   de, $ee0e                                   ; $52a7: $11 $0e $ee
	add  c                                           ; $52aa: $81
	rra                                              ; $52ab: $1f
	nop                                              ; $52ac: $00
	ldh  [$87], a                                    ; $52ad: $e0 $87
	nop                                              ; $52af: $00
	ld   d, $c0                                      ; $52b0: $16 $c0
	nop                                              ; $52b2: $00
	jr   c, jr_014_5275                              ; $52b3: $38 $c0

	add  $f8                                         ; $52b5: $c6 $f8
	ld   sp, hl                                      ; $52b7: $f9
	nop                                              ; $52b8: $00
	ld   a, $00                                      ; $52b9: $3e $00
	ld   h, b                                        ; $52bb: $60
	nop                                              ; $52bc: $00
	jr   nc, jr_014_52bf                             ; $52bd: $30 $00

jr_014_52bf:
	jr   jr_014_52c1                                 ; $52bf: $18 $00

jr_014_52c1:
	inc  c                                           ; $52c1: $0c
	nop                                              ; $52c2: $00
	ld   b, $00                                      ; $52c3: $06 $00
	ld   a, h                                        ; $52c5: $7c
	nop                                              ; $52c6: $00
	rst  $38                                         ; $52c7: $ff
	adc  e                                           ; $52c8: $8b
	nop                                              ; $52c9: $00
	db   $10                                         ; $52ca: $10
	add  b                                           ; $52cb: $80
	nop                                              ; $52cc: $00
	ld   a, a                                        ; $52cd: $7f
	nop                                              ; $52ce: $00
	ld   a, $00                                      ; $52cf: $3e $00
	ld   h, b                                        ; $52d1: $60
	nop                                              ; $52d2: $00
	jr   nc, jr_014_52d5                             ; $52d3: $30 $00

jr_014_52d5:
	jr   jr_014_52d7                                 ; $52d5: $18 $00

jr_014_52d7:
	inc  c                                           ; $52d7: $0c
	nop                                              ; $52d8: $00
	ld   b, $00                                      ; $52d9: $06 $00
	ld   a, h                                        ; $52db: $7c
	add  b                                           ; $52dc: $80
	nop                                              ; $52dd: $00
	adc  l                                           ; $52de: $8d
	rst  $38                                         ; $52df: $ff
	add  b                                           ; $52e0: $80
	rst  ToBoot                                         ; $52e1: $c7
	ld   [bc], a                                     ; $52e2: $02
	cp   e                                           ; $52e3: $bb
	add  e                                           ; $52e4: $83
	ld   e, l                                        ; $52e5: $5d
	add  c                                           ; $52e6: $81
	ld   hl, $3984                                   ; $52e7: $21 $84 $39
	add  b                                           ; $52ea: $80
	jr   c, jr_014_52ed                              ; $52eb: $38 $00

jr_014_52ed:
	cp   e                                           ; $52ed: $bb
	adc  c                                           ; $52ee: $89
	rst  $38                                         ; $52ef: $ff
	add  b                                           ; $52f0: $80
	rra                                              ; $52f1: $1f
	ld   [bc], a                                     ; $52f2: $02
	ld   c, a                                        ; $52f3: $4f
	rrca                                             ; $52f4: $0f
	cp   a                                           ; $52f5: $bf
	adc  l                                           ; $52f6: $8d
	rst  $38                                         ; $52f7: $ff
	db   $10                                         ; $52f8: $10
	and  d                                           ; $52f9: $a2
	rst  $38                                         ; $52fa: $ff
	adc  h                                           ; $52fb: $8c
	rst  $38                                         ; $52fc: $ff
	add  $ff                                         ; $52fd: $c6 $ff
	db   $e3                                         ; $52ff: $e3
	rst  $38                                         ; $5300: $ff
	pop  af                                          ; $5301: $f1
	rst  $38                                         ; $5302: $ff
	ld   hl, sp-$01                                  ; $5303: $f8 $ff
	db   $fc                                         ; $5305: $fc
	rst  $38                                         ; $5306: $ff
	cp   $ff                                         ; $5307: $fe $ff
	nop                                              ; $5309: $00
	add  c                                           ; $530a: $81
	rst  $38                                         ; $530b: $ff
	inc  c                                           ; $530c: $0c
	ld   a, a                                        ; $530d: $7f
	rst  $38                                         ; $530e: $ff
	ccf                                              ; $530f: $3f
	rst  $38                                         ; $5310: $ff
	sbc  a                                           ; $5311: $9f
	rst  $38                                         ; $5312: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5313: $cf
	rst  $38                                         ; $5314: $ff
	ld   h, a                                        ; $5315: $67
	rst  $38                                         ; $5316: $ff
	inc  sp                                          ; $5317: $33
	rst  $38                                         ; $5318: $ff
	cp   e                                           ; $5319: $bb
	adc  l                                           ; $531a: $8d
	rst  $38                                         ; $531b: $ff
	add  b                                           ; $531c: $80
	nop                                              ; $531d: $00
	ld   a, $3e                                      ; $531e: $3e $3e
	nop                                              ; $5320: $00
	ld   h, b                                        ; $5321: $60
	nop                                              ; $5322: $00
	jr   nc, jr_014_5325                             ; $5323: $30 $00

jr_014_5325:
	jr   jr_014_5327                                 ; $5325: $18 $00

jr_014_5327:
	inc  c                                           ; $5327: $0c
	nop                                              ; $5328: $00
	ld   b, $00                                      ; $5329: $06 $00
	ld   a, h                                        ; $532b: $7c
	nop                                              ; $532c: $00
	rst  $38                                         ; $532d: $ff
	nop                                              ; $532e: $00
	inc  bc                                          ; $532f: $03
	nop                                              ; $5330: $00
	dec  e                                           ; $5331: $1d
	ld   [hl+], a                                    ; $5332: $22
	inc  sp                                          ; $5333: $33
	dec  hl                                          ; $5334: $2b
	daa                                              ; $5335: $27
	ld   de, $001b                                   ; $5336: $11 $1b $00
	dec  c                                           ; $5339: $0d
	nop                                              ; $533a: $00
	inc  c                                           ; $533b: $0c
	ld   [bc], a                                     ; $533c: $02
	push af                                          ; $533d: $f5
	nop                                              ; $533e: $00
	ld   a, $00                                      ; $533f: $3e $00
	ld   h, b                                        ; $5341: $60
	nop                                              ; $5342: $00
	jr   nc, jr_014_5345                             ; $5343: $30 $00

jr_014_5345:
	jr   jr_014_5347                                 ; $5345: $18 $00

jr_014_5347:
	inc  c                                           ; $5347: $0c
	nop                                              ; $5348: $00
	ld   b, $00                                      ; $5349: $06 $00
	ld   a, h                                        ; $534b: $7c
	nop                                              ; $534c: $00
	ldh  a, [rTAC]                                   ; $534d: $f0 $07
	dec  b                                           ; $534f: $05
	inc  bc                                          ; $5350: $03
	dec  e                                           ; $5351: $1d
	rrca                                             ; $5352: $0f
	dec  sp                                          ; $5353: $3b
	rlca                                             ; $5354: $07
	ld   b, a                                        ; $5355: $47
	cpl                                              ; $5356: $2f
	daa                                              ; $5357: $27
	ld   a, $2f                                      ; $5358: $3e $2f
	inc  [hl]                                        ; $535a: $34
	halt                                             ; $535b: $76
	db   $10                                         ; $535c: $10
	db   $d3                                         ; $535d: $d3
	add  b                                           ; $535e: $80
	cp   a                                           ; $535f: $bf
	add  b                                           ; $5360: $80
	rst  $38                                         ; $5361: $ff
	inc  hl                                          ; $5362: $23
	ld   hl, sp-$01                                  ; $5363: $f8 $ff
	ret  nz                                          ; $5365: $c0

	ld   hl, sp+$00                                  ; $5366: $f8 $00
	ret  nz                                          ; $5368: $c0

	nop                                              ; $5369: $00
	rlca                                             ; $536a: $07
	nop                                              ; $536b: $00
	jr   c, jr_014_5375                              ; $536c: $38 $07

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $536e: $cf
	ld   a, [hl]                                     ; $536f: $7e
	ld   [hl], d                                     ; $5370: $72
	ccf                                              ; $5371: $3f
	dec  a                                           ; $5372: $3d
	rra                                              ; $5373: $1f
	ei                                               ; $5374: $fb

jr_014_5375:
	dec  c                                           ; $5375: $0d
	inc  c                                           ; $5376: $0c
	dec  c                                           ; $5377: $0d
	dec  e                                           ; $5378: $1d
	ld   b, $e6                                      ; $5379: $06 $e6
	rlca                                             ; $537b: $07
	inc  d                                           ; $537c: $14
	rst  $20                                         ; $537d: $e7
	sbc  b                                           ; $537e: $98
	nop                                              ; $537f: $00
	ld   b, b                                        ; $5380: $40
	add  b                                           ; $5381: $80
	nop                                              ; $5382: $00
	add  b                                           ; $5383: $80
	and  b                                           ; $5384: $a0
	ld   b, b                                        ; $5385: $40
	nop                                              ; $5386: $00
	add  b                                           ; $5387: $80
	ld   b, b                                        ; $5388: $40
	dec  bc                                          ; $5389: $0b
	add  b                                           ; $538a: $80
	sub  b                                           ; $538b: $90
	and  b                                           ; $538c: $a0
	add  b                                           ; $538d: $80
	ldh  [$b0], a                                    ; $538e: $e0 $b0
	add  b                                           ; $5390: $80
	ld   h, b                                        ; $5391: $60
	ret  nz                                          ; $5392: $c0

	add  b                                           ; $5393: $80
	nop                                              ; $5394: $00
	and  b                                           ; $5395: $a0
	add  c                                           ; $5396: $81
	nop                                              ; $5397: $00
	add  b                                           ; $5398: $80
	add  b                                           ; $5399: $80
	inc  d                                           ; $539a: $14
	ret  nz                                          ; $539b: $c0

	nop                                              ; $539c: $00
	add  b                                           ; $539d: $80
	nop                                              ; $539e: $00
	rst  $38                                         ; $539f: $ff
	nop                                              ; $53a0: $00
	ld   a, $00                                      ; $53a1: $3e $00
	ld   h, b                                        ; $53a3: $60
	nop                                              ; $53a4: $00
	jr   nc, jr_014_53a7                             ; $53a5: $30 $00

jr_014_53a7:
	jr   jr_014_53a9                                 ; $53a7: $18 $00

jr_014_53a9:
	inc  c                                           ; $53a9: $0c
	nop                                              ; $53aa: $00
	ld   b, $00                                      ; $53ab: $06 $00
	ld   a, h                                        ; $53ad: $7c
	nop                                              ; $53ae: $00
	rst  $38                                         ; $53af: $ff
	add  a                                           ; $53b0: $87
	nop                                              ; $53b1: $00
	ld   b, $07                                      ; $53b2: $06 $07
	nop                                              ; $53b4: $00
	inc  e                                           ; $53b5: $1c
	rlca                                             ; $53b6: $07
	inc  sp                                          ; $53b7: $33
	rra                                              ; $53b8: $1f
	ld   c, h                                        ; $53b9: $4c
	add  c                                           ; $53ba: $81
	jr   c, jr_014_53bd                              ; $53bb: $38 $00

jr_014_53bd:
	cp   d                                           ; $53bd: $ba
	add  c                                           ; $53be: $81
	ld   a, h                                        ; $53bf: $7c
	inc  bc                                          ; $53c0: $03
	xor  $10                                         ; $53c1: $ee $10
	sub  c                                           ; $53c3: $91
	ld   [de], a                                     ; $53c4: $12
	add  b                                           ; $53c5: $80
	ld   de, $8680                                   ; $53c6: $11 $80 $86
	ld   bc, $0f50                                   ; $53c9: $01 $50 $0f
	add  [hl]                                        ; $53cc: $86
	ld   c, a                                        ; $53cd: $4f
	ld   b, $57                                      ; $53ce: $06 $57
	rst  $20                                         ; $53d0: $e7
	pop  hl                                          ; $53d1: $e1
	ld   bc, $505e                                   ; $53d2: $01 $5e $50
	ld   bc, $ff8b                                   ; $53d5: $01 $8b $ff
	add  b                                           ; $53d8: $80
	ccf                                              ; $53d9: $3f
	adc  [hl]                                        ; $53da: $8e
	nop                                              ; $53db: $00
	add  b                                           ; $53dc: $80
	ld   e, l                                        ; $53dd: $5d
	add  b                                           ; $53de: $80
	ld   l, $80                                      ; $53df: $2e $80
	rla                                              ; $53e1: $17
	add  b                                           ; $53e2: $80
	dec  bc                                          ; $53e3: $0b
	add  b                                           ; $53e4: $80
	dec  b                                           ; $53e5: $05
	add  b                                           ; $53e6: $80
	ld   [bc], a                                     ; $53e7: $02
	add  b                                           ; $53e8: $80
	ld   bc, $0080                                   ; $53e9: $01 $80 $00
	add  d                                           ; $53ec: $82
	rst  $38                                         ; $53ed: $ff
	add  b                                           ; $53ee: $80
	ld   a, a                                        ; $53ef: $7f
	add  b                                           ; $53f0: $80
	cp   a                                           ; $53f1: $bf
	add  b                                           ; $53f2: $80
	rst  JumpTable                                         ; $53f3: $df
	add  b                                           ; $53f4: $80
	rst  $28                                         ; $53f5: $ef
	add  b                                           ; $53f6: $80
	ld   [hl], a                                     ; $53f7: $77
	add  b                                           ; $53f8: $80
	cp   e                                           ; $53f9: $bb
	ld   de, $00ff                                   ; $53fa: $11 $ff $00
	ld   a, $00                                      ; $53fd: $3e $00
	ld   h, b                                        ; $53ff: $60
	nop                                              ; $5400: $00
	jr   nc, jr_014_5403                             ; $5401: $30 $00

jr_014_5403:
	jr   jr_014_5405                                 ; $5403: $18 $00

jr_014_5405:
	inc  c                                           ; $5405: $0c
	nop                                              ; $5406: $00
	ld   b, $00                                      ; $5407: $06 $00
	ld   a, h                                        ; $5409: $7c
	nop                                              ; $540a: $00
	xor  $01                                         ; $540b: $ee $01
	add  d                                           ; $540d: $82
	inc  bc                                          ; $540e: $03
	nop                                              ; $540f: $00
	dec  de                                          ; $5410: $1b
	add  c                                           ; $5411: $81
	inc  bc                                          ; $5412: $03
	ld   l, $0f                                      ; $5413: $2e $0f
	inc  bc                                          ; $5415: $03
	rlca                                             ; $5416: $07
	nop                                              ; $5417: $00
	dec  sp                                          ; $5418: $3b
	nop                                              ; $5419: $00
	rst  ToBoot                                         ; $541a: $c7
	nop                                              ; $541b: $00
	ld   a, $00                                      ; $541c: $3e $00
	ld   h, b                                        ; $541e: $60
	nop                                              ; $541f: $00
	jr   nc, jr_014_5422                             ; $5420: $30 $00

jr_014_5422:
	jr   jr_014_5424                                 ; $5422: $18 $00

jr_014_5424:
	inc  c                                           ; $5424: $0c
	nop                                              ; $5425: $00
	ld   b, $00                                      ; $5426: $06 $00
	ld   a, h                                        ; $5428: $7c
	nop                                              ; $5429: $00
	rst  ToBoot                                         ; $542a: $c7
	db   $10                                         ; $542b: $10
	ld   de, $1310                                   ; $542c: $11 $10 $13
	ld   de, $0117                                   ; $542f: $11 $17 $01
	dec  b                                           ; $5432: $05
	ld   [bc], a                                     ; $5433: $02
	ld   a, [bc]                                     ; $5434: $0a
	ld   b, $14                                      ; $5435: $06 $14
	rla                                              ; $5437: $17
	db   $10                                         ; $5438: $10
	rla                                              ; $5439: $17
	call z, Call_014_4c1f                            ; $543a: $cc $1f $4c
	ld   a, a                                        ; $543d: $7f
	rst  ToBoot                                         ; $543e: $c7
	cp   c                                           ; $543f: $b9
	adc  d                                           ; $5440: $8a
	ld   a, d                                        ; $5441: $7a
	inc  bc                                          ; $5442: $03
	add  b                                           ; $5443: $80
	db   $fd                                         ; $5444: $fd
	ld   de, FarGetHLinHL                                   ; $5445: $11 $ee $0a
	rst  $28                                         ; $5448: $ef
	db   $ed                                         ; $5449: $ed
	rst  JumpTable                                         ; $544a: $df
	ld   e, c                                        ; $544b: $59
	ld   [hl], e                                     ; $544c: $73
	ld   d, e                                        ; $544d: $53
	cp   e                                           ; $544e: $bb
	ld   l, e                                        ; $544f: $6b
	ld   e, e                                        ; $5450: $5b
	ld   h, e                                        ; $5451: $63
	sbc  l                                           ; $5452: $9d
	ld   d, l                                        ; $5453: $55
	and  l                                           ; $5454: $a5
	ld   d, l                                        ; $5455: $55
	ld   sp, hl                                      ; $5456: $f9
	ret                                              ; $5457: $c9


	add  b                                           ; $5458: $80
	ld   d, [hl]                                     ; $5459: $56
	inc  bc                                          ; $545a: $03
	xor  d                                           ; $545b: $aa
	and  l                                           ; $545c: $a5
	ldh  [$e8], a                                    ; $545d: $e0 $e8
	add  c                                           ; $545f: $81
	ldh  a, [$0a]                                    ; $5460: $f0 $0a
	ldh  [$f0], a                                    ; $5462: $e0 $f0
	db   $e4                                         ; $5464: $e4
	ld   hl, sp-$18                                  ; $5465: $f8 $e8
	ld   hl, sp-$2e                                  ; $5467: $f8 $d2
	db   $f4                                         ; $5469: $f4
	ldh  a, [$f4]                                    ; $546a: $f0 $f4
	ld   [hl], $8f                                   ; $546c: $36 $8f
	nop                                              ; $546e: $00
	ld   [$0102], sp                                 ; $546f: $08 $02 $01
	ld   [$1307], sp                                 ; $5472: $08 $07 $13
	rrca                                             ; $5475: $0f
	ld   c, $0f                                      ; $5476: $0e $0f
	dec  c                                           ; $5478: $0d
	add  e                                           ; $5479: $83
	rrca                                             ; $547a: $0f
	dec  c                                           ; $547b: $0d
	ldh  a, [$1f]                                    ; $547c: $f0 $1f
	cp   h                                           ; $547e: $bc
	cp   a                                           ; $547f: $bf
	daa                                              ; $5480: $27
	rst  $20                                         ; $5481: $e7
	ret  c                                           ; $5482: $d8

	cp   $16                                         ; $5483: $fe $16
	jp   hl                                          ; $5485: $e9


	call c, $d6d3                                    ; $5486: $dc $d3 $d6
	call nc, $d580                                   ; $5489: $d4 $80 $d5
	db   $10                                         ; $548c: $10
	inc  d                                           ; $548d: $14
	rst  $38                                         ; $548e: $ff
	ld   a, a                                        ; $548f: $7f
	rst  $38                                         ; $5490: $ff
	adc  a                                           ; $5491: $8f
	rst  $38                                         ; $5492: $ff
	pop  af                                          ; $5493: $f1
	rst  $38                                         ; $5494: $ff
	ld   e, $9f                                      ; $5495: $1e $9f
	db   $d3                                         ; $5497: $d3
	ld   [hl], e                                     ; $5498: $73
	and  d                                           ; $5499: $a2
	cp   $9c                                         ; $549a: $fe $9c
	rst  $38                                         ; $549c: $ff

jr_014_549d:
	rra                                              ; $549d: $1f
	add  b                                           ; $549e: $80
	ld   a, $83                                      ; $549f: $3e $83
	rst  $38                                         ; $54a1: $ff
	dec  d                                           ; $54a2: $15
	jr   c, jr_014_549d                              ; $54a3: $38 $f8

	push bc                                          ; $54a5: $c5
	cp   $79                                         ; $54a6: $fe $79
	ld   a, [hl]                                     ; $54a8: $7e
	ld   c, e                                        ; $54a9: $4b
	res  7, e                                        ; $54aa: $cb $bb
	rlca                                             ; $54ac: $07
	add  hl, sp                                      ; $54ad: $39
	pop  bc                                          ; $54ae: $c1
	adc  $f0                                         ; $54af: $ce $f0
	nop                                              ; $54b1: $00
	rlca                                             ; $54b2: $07
	ld   sp, $023f                                   ; $54b3: $31 $3f $02
	di                                               ; $54b6: $f3
	ldh  a, [c]                                      ; $54b7: $f2
	di                                               ; $54b8: $f3
	add  b                                           ; $54b9: $80
	ld   [hl], e                                     ; $54ba: $73
	nop                                              ; $54bb: $00
	nop                                              ; $54bc: $00

jr_014_54bd:
	add  e                                           ; $54bd: $83
	rst  $38                                         ; $54be: $ff
	add  b                                           ; $54bf: $80
	rrca                                             ; $54c0: $0f
	ld   [$8777], sp                                 ; $54c1: $08 $77 $87
	dec  bc                                          ; $54c4: $0b
	di                                               ; $54c5: $f3
	ld   [hl], l                                     ; $54c6: $75
	sub  c                                           ; $54c7: $91
	ld   [bc], a                                     ; $54c8: $02
	db   $f4                                         ; $54c9: $f4
	push hl                                          ; $54ca: $e5
	adc  e                                           ; $54cb: $8b
	rst  $38                                         ; $54cc: $ff
	add  b                                           ; $54cd: $80
	ld   a, a                                        ; $54ce: $7f
	ld   c, $ff                                      ; $54cf: $0e $ff
	nop                                              ; $54d1: $00
	ld   a, $00                                      ; $54d2: $3e $00
	ld   h, b                                        ; $54d4: $60
	nop                                              ; $54d5: $00
	jr   nc, jr_014_54d8                             ; $54d6: $30 $00

jr_014_54d8:
	jr   jr_014_54da                                 ; $54d8: $18 $00

jr_014_54da:
	inc  c                                           ; $54da: $0c
	nop                                              ; $54db: $00
	ld   b, $00                                      ; $54dc: $06 $00
	ld   a, h                                        ; $54de: $7c
	add  c                                           ; $54df: $81
	nop                                              ; $54e0: $00
	ld   l, $3e                                      ; $54e1: $2e $3e
	nop                                              ; $54e3: $00
	ld   h, b                                        ; $54e4: $60
	nop                                              ; $54e5: $00
	jr   nc, jr_014_54e8                             ; $54e6: $30 $00

jr_014_54e8:
	jr   jr_014_54ea                                 ; $54e8: $18 $00

jr_014_54ea:
	inc  c                                           ; $54ea: $0c
	nop                                              ; $54eb: $00
	ld   b, $00                                      ; $54ec: $06 $00
	ld   a, h                                        ; $54ee: $7c
	nop                                              ; $54ef: $00
	or   c                                           ; $54f0: $b1
	ld   [$4384], sp                                 ; $54f1: $08 $84 $43
	ld   h, b                                        ; $54f4: $60
	ld   h, e                                        ; $54f5: $63
	halt                                             ; $54f6: $76
	ld   [hl], h                                     ; $54f7: $74
	ldh  a, [$38]                                    ; $54f8: $f0 $38
	ld   h, b                                        ; $54fa: $60
	jr   jr_014_5520                                 ; $54fb: $18 $23

	inc  bc                                          ; $54fd: $03
	ld   b, $07                                      ; $54fe: $06 $07
	xor  $00                                         ; $5500: $ee $00
	ld   a, $00                                      ; $5502: $3e $00
	ld   h, b                                        ; $5504: $60
	nop                                              ; $5505: $00
	jr   nc, jr_014_5508                             ; $5506: $30 $00

jr_014_5508:
	jr   jr_014_550a                                 ; $5508: $18 $00

jr_014_550a:
	inc  c                                           ; $550a: $0c
	nop                                              ; $550b: $00
	ld   b, $00                                      ; $550c: $06 $00
	ld   a, h                                        ; $550e: $7c
	nop                                              ; $550f: $00
	jp   c, $1f80                                    ; $5510: $da $80 $1f

	ld   bc, $0c1e                                   ; $5513: $01 $1e $0c
	add  b                                           ; $5516: $80
	ld   e, $13                                      ; $5517: $1e $13
	ld   c, $02                                      ; $5519: $0e $02
	ld   c, $0a                                      ; $551b: $0e $0a
	rla                                              ; $551d: $17
	ld   [hl], a                                     ; $551e: $77
	dec  sp                                          ; $551f: $3b

jr_014_5520:
	dec  hl                                          ; $5520: $2b
	dec  a                                           ; $5521: $3d
	adc  $d5                                         ; $5522: $ce $d5
	add  l                                           ; $5524: $85
	ld   a, [$5ee4]                                  ; $5525: $fa $e4 $5e
	db   $f4                                         ; $5528: $f4
	or   c                                           ; $5529: $b1
	ld   c, c                                        ; $552a: $49
	jr   nc, jr_014_54bd                             ; $552b: $30 $90

	add  b                                           ; $552d: $80
	ld   b, b                                        ; $552e: $40
	add  hl, bc                                      ; $552f: $09
	add  d                                           ; $5530: $82
	inc  bc                                          ; $5531: $03
	add  d                                           ; $5532: $82
	xor  [hl]                                        ; $5533: $ae
	ld   d, a                                        ; $5534: $57
	and  d                                           ; $5535: $a2
	ret                                              ; $5536: $c9


	sub  e                                           ; $5537: $93
	nop                                              ; $5538: $00
	ld   [bc], a                                     ; $5539: $02
	add  a                                           ; $553a: $87
	nop                                              ; $553b: $00
	ld   a, [bc]                                     ; $553c: $0a
	or   e                                           ; $553d: $b3
	ld   a, [$ead8]                                  ; $553e: $fa $d8 $ea
	ldh  [c], a                                      ; $5541: $e2
	call $ddcc                                       ; $5542: $cd $cc $dd
	rrca                                             ; $5545: $0f
	rst  $10                                         ; $5546: $d7
	jp   nc, $d781                                   ; $5547: $d2 $81 $d7

	ld   [bc], a                                     ; $554a: $02
	ld   d, a                                        ; $554b: $57
	sbc  a                                           ; $554c: $9f
	ld   d, b                                        ; $554d: $50
	add  c                                           ; $554e: $81
	nop                                              ; $554f: $00
	nop                                              ; $5550: $00
	add  b                                           ; $5551: $80
	add  e                                           ; $5552: $83
	nop                                              ; $5553: $00
	nop                                              ; $5554: $00
	ld   b, b                                        ; $5555: $40
	add  e                                           ; $5556: $83
	add  b                                           ; $5557: $80
	nop                                              ; $5558: $00
	ld   e, h                                        ; $5559: $5c
	add  e                                           ; $555a: $83
	rrca                                             ; $555b: $0f
	ld   a, [bc]                                     ; $555c: $0a
	cpl                                              ; $555d: $2f
	rrca                                             ; $555e: $0f
	ld   b, c                                        ; $555f: $41
	dec  a                                           ; $5560: $3d
	ld   l, $3e                                      ; $5561: $2e $3e
	ld   a, [hl]                                     ; $5563: $7e
	ld   e, $21                                      ; $5564: $1e $21
	ld   bc, $8d21                                   ; $5566: $01 $21 $8d
	push de                                          ; $5569: $d5
	dec  b                                           ; $556a: $05
	add  sp, -$01                                    ; $556b: $e8 $ff
	sbc  h                                           ; $556d: $9c
	sbc  a                                           ; $556e: $9f
	ld   c, a                                        ; $556f: $4f
	ld   l, a                                        ; $5570: $6f
	add  b                                           ; $5571: $80
	ld   l, c                                        ; $5572: $69

jr_014_5573:
	nop                                              ; $5573: $00
	ld   b, h                                        ; $5574: $44
	add  l                                           ; $5575: $85
	ld   h, [hl]                                     ; $5576: $66
	ld   d, $09                                      ; $5577: $16 $09
	ei                                               ; $5579: $fb
	ld   [hl], b                                     ; $557a: $70
	ld   hl, sp-$67                                  ; $557b: $f8 $99
	ei                                               ; $557d: $fb
	ld   hl, sp-$09                                  ; $557e: $f8 $f7
	ldh  a, [$ef]                                    ; $5580: $f0 $ef
	add  sp, -$11                                    ; $5582: $e8 $ef
	ret  z                                           ; $5584: $c8

	rst  JumpTable                                         ; $5585: $df
	reti                                             ; $5586: $d9


	rst  JumpTable                                         ; $5587: $df
	inc  d                                           ; $5588: $14
	jr   c, jr_014_5573                              ; $5589: $38 $e8

	rst  JumpTable                                         ; $558b: $df
	ld   a, b                                        ; $558c: $78
	rst  $38                                         ; $558d: $ff
	ld   a, a                                        ; $558e: $7f
	add  a                                           ; $558f: $87
	rst  $38                                         ; $5590: $ff
	ld   a, [bc]                                     ; $5591: $0a
	inc  b                                           ; $5592: $04
	ld   a, [bc]                                     ; $5593: $0a
	dec  d                                           ; $5594: $15
	rst  $20                                         ; $5595: $e7
	ld   bc, $83fe                                   ; $5596: $01 $fe $83
	rst  $38                                         ; $5599: $ff
	cp   a                                           ; $559a: $bf
	rst  $38                                         ; $559b: $ff
	rst  JumpTable                                         ; $559c: $df
	add  c                                           ; $559d: $81
	rst  $38                                         ; $559e: $ff
	dec  bc                                          ; $559f: $0b
	rst  $28                                         ; $55a0: $ef
	rst  $38                                         ; $55a1: $ff
	ld   c, a                                        ; $55a2: $4f
	ccf                                              ; $55a3: $3f
	ld   e, a                                        ; $55a4: $5f
	sbc  a                                           ; $55a5: $9f
	xor  a                                           ; $55a6: $af
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $55a7: $cf
	ld   d, a                                        ; $55a8: $57
	ld   h, a                                        ; $55a9: $67
	xor  e                                           ; $55aa: $ab
	or   e                                           ; $55ab: $b3
	add  b                                           ; $55ac: $80
	sub  e                                           ; $55ad: $93
	ld   bc, $d9d5                                   ; $55ae: $01 $d5 $d9
	add  b                                           ; $55b1: $80
	ret  z                                           ; $55b2: $c8

	nop                                              ; $55b3: $00
	ei                                               ; $55b4: $fb
	adc  [hl]                                        ; $55b5: $8e
	rst  $38                                         ; $55b6: $ff
	stop                                             ; $55b7: $10 $00
	ld   a, $00                                      ; $55b9: $3e $00
	ld   h, b                                        ; $55bb: $60
	nop                                              ; $55bc: $00
	jr   nc, jr_014_55bf                             ; $55bd: $30 $00

jr_014_55bf:
	jr   jr_014_55c1                                 ; $55bf: $18 $00

jr_014_55c1:
	inc  c                                           ; $55c1: $0c
	nop                                              ; $55c2: $00
	ld   b, $00                                      ; $55c3: $06 $00
	ld   a, h                                        ; $55c5: $7c
	nop                                              ; $55c6: $00
	pop  hl                                          ; $55c7: $e1
	rrca                                             ; $55c8: $0f
	add  b                                           ; $55c9: $80
	ld   c, $06                                      ; $55ca: $0e $06
	ld   e, $06                                      ; $55cc: $1e $06
	ld   c, $0b                                      ; $55ce: $0e $0b
	rrca                                             ; $55d0: $0f
	nop                                              ; $55d1: $00
	inc  bc                                          ; $55d2: $03
	add  e                                           ; $55d3: $83
	nop                                              ; $55d4: $00
	add  b                                           ; $55d5: $80
	call c, $ee80                                    ; $55d6: $dc $80 $ee
	add  b                                           ; $55d9: $80
	or   $01                                         ; $55da: $f6 $01
	ld   sp, hl                                      ; $55dc: $f9
	ld   hl, sp-$7c                                  ; $55dd: $f8 $84
	db   $fc                                         ; $55df: $fc
	inc  b                                           ; $55e0: $04
	rst  $38                                         ; $55e1: $ff
	cp   $4f                                         ; $55e2: $fe $4f
	ld   d, $c6                                      ; $55e4: $16 $c6
	add  b                                           ; $55e6: $80
	ld   d, l                                        ; $55e7: $55
	nop                                              ; $55e8: $00
	dec  [hl]                                        ; $55e9: $35

jr_014_55ea:
	add  b                                           ; $55ea: $80
	or   l                                           ; $55eb: $b5
	ld   [bc], a                                     ; $55ec: $02
	sub  l                                           ; $55ed: $95
	or   l                                           ; $55ee: $b5
	dec  [hl]                                        ; $55ef: $35
	add  d                                           ; $55f0: $82
	push af                                          ; $55f1: $f5
	inc  b                                           ; $55f2: $04
	call nc, Call_014_43eb                           ; $55f3: $d4 $eb $43
	inc  bc                                          ; $55f6: $03
	ld   bc, $2080                                   ; $55f7: $01 $80 $20
	ld   a, [de]                                     ; $55fa: $1a
	ld   sp, $1418                                   ; $55fb: $31 $18 $14
	rra                                              ; $55fe: $1f
	inc  de                                          ; $55ff: $13
	ld   bc, $1f16                                   ; $5600: $01 $16 $1f
	xor  d                                           ; $5603: $aa
	and  a                                           ; $5604: $a7
	push af                                          ; $5605: $f5
	nop                                              ; $5606: $00
	jr   nz, jr_014_55ea                             ; $5607: $20 $e1

	ldh  [hScriptOpcodeParams], a                                    ; $5609: $e0 $a0
	nop                                              ; $560b: $00
	ld   [hl+], a                                    ; $560c: $22
	pop  hl                                          ; $560d: $e1
	and  l                                           ; $560e: $a5
	ld   d, e                                        ; $560f: $53
	jp   z, $887b                                    ; $5610: $ca $7b $88

	adc  [hl]                                        ; $5613: $8e
	dec  b                                           ; $5614: $05
	reti                                             ; $5615: $d9


	add  c                                           ; $5616: $81
	dec  sp                                          ; $5617: $3b
	nop                                              ; $5618: $00
	sbc  e                                           ; $5619: $9b
	add  e                                           ; $561a: $83
	cp   c                                           ; $561b: $b9
	ld   [bc], a                                     ; $561c: $02
	add  hl, sp                                      ; $561d: $39
	cp   b                                           ; $561e: $b8
	cp   e                                           ; $561f: $bb
	add  b                                           ; $5620: $80
	and  b                                           ; $5621: $a0
	ld   bc, $ac90                                   ; $5622: $01 $90 $ac
	add  l                                           ; $5625: $85
	add  b                                           ; $5626: $80
	ld   [bc], a                                     ; $5627: $02
	ret  nz                                          ; $5628: $c0

	nop                                              ; $5629: $00
	add  b                                           ; $562a: $80
	add  e                                           ; $562b: $83
	nop                                              ; $562c: $00
	db   $10                                         ; $562d: $10
	db   $10                                         ; $562e: $10
	rrca                                             ; $562f: $0f
	adc  a                                           ; $5630: $8f
	rrca                                             ; $5631: $0f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5632: $cf
	rrca                                             ; $5633: $0f
	ld   l, a                                        ; $5634: $6f
	rrca                                             ; $5635: $0f
	xor  a                                           ; $5636: $af
	rst  $28                                         ; $5637: $ef
	ld   l, e                                        ; $5638: $6b
	dec  de                                          ; $5639: $1b
	add  hl, bc                                      ; $563a: $09
	add  l                                           ; $563b: $85
	add  c                                           ; $563c: $81
	ld   h, c                                        ; $563d: $61
	ld   e, l                                        ; $563e: $5d
	adc  c                                           ; $563f: $89
	push de                                          ; $5640: $d5
	add  b                                           ; $5641: $80
	call nc, $d105                                   ; $5642: $d4 $05 $d1
	rst  $10                                         ; $5645: $d7
	halt                                             ; $5646: $76
	ld   h, [hl]                                     ; $5647: $66
	ld   h, h                                        ; $5648: $64
	ld   h, [hl]                                     ; $5649: $66
	add  b                                           ; $564a: $80
	add  h                                           ; $564b: $84
	nop                                              ; $564c: $00
	and  b                                           ; $564d: $a0
	add  b                                           ; $564e: $80
	and  e                                           ; $564f: $a3
	inc  d                                           ; $5650: $14
	and  a                                           ; $5651: $a7
	add  a                                           ; $5652: $87
	adc  a                                           ; $5653: $8f
	db   $dd                                         ; $5654: $dd
	reti                                             ; $5655: $d9


	ld   c, e                                        ; $5656: $4b
	ld   a, c                                        ; $5657: $79
	db   $fc                                         ; $5658: $fc
	rst  JumpTable                                         ; $5659: $df
	reti                                             ; $565a: $d9


	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $565b: $cf
	cp   e                                           ; $565c: $bb
	or   a                                           ; $565d: $b7
	adc  e                                           ; $565e: $8b
	cp   e                                           ; $565f: $bb
	inc  sp                                          ; $5660: $33

jr_014_5661:
	db   $db                                         ; $5661: $db
	db   $dd                                         ; $5662: $dd
	db   $ed                                         ; $5663: $ed
	xor  c                                           ; $5664: $a9
	or   l                                           ; $5665: $b5
	add  b                                           ; $5666: $80
	ld   d, [hl]                                     ; $5667: $56
	nop                                              ; $5668: $00
	dec  bc                                          ; $5669: $0b
	add  l                                           ; $566a: $85
	rst  $38                                         ; $566b: $ff
	add  b                                           ; $566c: $80
	cp   $08                                         ; $566d: $fe $08
	ld   c, $4e                                      ; $566f: $0e $4e
	ld   a, a                                        ; $5671: $7f
	ccf                                              ; $5672: $3f
	ld   a, [hl]                                     ; $5673: $7e
	ld   a, a                                        ; $5674: $7f
	pop  af                                          ; $5675: $f1
	rst  $38                                         ; $5676: $ff
	rst  $30                                         ; $5677: $f7
	add  c                                           ; $5678: $81
	rst  $38                                         ; $5679: $ff
	ld   b, $fe                                      ; $567a: $06 $fe
	rst  $38                                         ; $567c: $ff
	ret                                              ; $567d: $c9


	ld   c, a                                        ; $567e: $4f
	ret  nz                                          ; $567f: $c0

	ld   a, a                                        ; $5680: $7f
	ccf                                              ; $5681: $3f
	add  c                                           ; $5682: $81
	rst  $38                                         ; $5683: $ff
	inc  bc                                          ; $5684: $03
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5685: $cf
	ret  z                                           ; $5686: $c8

	add  sp, -$13                                    ; $5687: $e8 $ed
	add  b                                           ; $5689: $80
	push hl                                          ; $568a: $e5
	ld   de, $6663                                   ; $568b: $11 $63 $66
	ld   a, h                                        ; $568e: $7c
	ld   a, [$f170]                                  ; $568f: $fa $70 $f1
	add  sp, -$08                                    ; $5692: $e8 $f8
	push hl                                          ; $5694: $e5
	cp   $04                                         ; $5695: $fe $04
	rrca                                             ; $5697: $0f
	di                                               ; $5698: $f3
	inc  bc                                          ; $5699: $03
	dec  c                                           ; $569a: $0d
	pop  af                                          ; $569b: $f1
	ld   e, d                                        ; $569c: $5a
	ld   d, h                                        ; $569d: $54
	add  b                                           ; $569e: $80
	add  b                                           ; $569f: $80
	ld   [bc], a                                     ; $56a0: $02
	db   $dd                                         ; $56a1: $dd
	ld   e, [hl]                                     ; $56a2: $5e
	ld   a, [hl]                                     ; $56a3: $7e
	add  b                                           ; $56a4: $80
	cp   [hl]                                        ; $56a5: $be
	db   $10                                         ; $56a6: $10
	ld   a, [hl]                                     ; $56a7: $7e
	inc  hl                                          ; $56a8: $23
	rst  $38                                         ; $56a9: $ff
	adc  h                                           ; $56aa: $8c
	rst  $38                                         ; $56ab: $ff
	add  $ff                                         ; $56ac: $c6 $ff
	db   $e3                                         ; $56ae: $e3
	rst  $38                                         ; $56af: $ff
	pop  af                                          ; $56b0: $f1
	rst  $38                                         ; $56b1: $ff
	ld   a, b                                        ; $56b2: $78
	ld   a, a                                        ; $56b3: $7f
	ld   a, h                                        ; $56b4: $7c
	ld   a, a                                        ; $56b5: $7f
	ld   a, [hl]                                     ; $56b6: $7e
	ld   a, a                                        ; $56b7: $7f
	add  b                                           ; $56b8: $80
	rst  $38                                         ; $56b9: $ff
	add  h                                           ; $56ba: $84
	cp   $86                                         ; $56bb: $fe $86
	rst  $38                                         ; $56bd: $ff
	add  d                                           ; $56be: $82
	cp   $86                                         ; $56bf: $fe $86
	rst  $38                                         ; $56c1: $ff
	add  b                                           ; $56c2: $80
	cp   $06                                         ; $56c3: $fe $06
	db   $fd                                         ; $56c5: $fd
	db   $fc                                         ; $56c6: $fc
	xor  h                                           ; $56c7: $ac
	ld   d, d                                        ; $56c8: $52
	ld   d, b                                        ; $56c9: $50
	ld   d, h                                        ; $56ca: $54
	and  h                                           ; $56cb: $a4
	add  b                                           ; $56cc: $80
	add  hl, hl                                      ; $56cd: $29
	db   $10                                         ; $56ce: $10
	inc  hl                                          ; $56cf: $23
	jp   nc, Jump_014_6496                           ; $56d0: $d2 $96 $64

	inc  l                                           ; $56d3: $2c
	ret                                              ; $56d4: $c9


	ld   e, c                                        ; $56d5: $59
	sbc  a                                           ; $56d6: $9f
	or   c                                           ; $56d7: $b1
	add  hl, hl                                      ; $56d8: $29
	dec  de                                          ; $56d9: $1b
	inc  de                                          ; $56da: $13
	rst  $10                                         ; $56db: $d7
	sub  a                                           ; $56dc: $97
	sub  l                                           ; $56dd: $95
	dec  e                                           ; $56de: $1d
	jr   jr_014_5661                                 ; $56df: $18 $80

	ld   e, e                                        ; $56e1: $5b
	add  b                                           ; $56e2: $80
	reti                                             ; $56e3: $d9


	rrca                                             ; $56e4: $0f
	call nz, $e3e2                                   ; $56e5: $c4 $e2 $e3
	ldh  a, [c]                                      ; $56e8: $f2
	pop  af                                          ; $56e9: $f1
	and  $ff                                         ; $56ea: $e6 $ff
	add  b                                           ; $56ec: $80
	ldh  [rSVBK], a                                  ; $56ed: $e0 $70
	scf                                              ; $56ef: $37
	cp   [hl]                                        ; $56f0: $be
	pop  bc                                          ; $56f1: $c1
	ld   e, b                                        ; $56f2: $58
	and  b                                           ; $56f3: $a0
	add  b                                           ; $56f4: $80
	add  b                                           ; $56f5: $80
	ld   hl, $3f0b                                   ; $56f6: $21 $0b $3f
	ret  c                                           ; $56f9: $d8

	sbc  $70                                         ; $56fa: $de $70
	rst  $30                                         ; $56fc: $f7
	or   b                                           ; $56fd: $b0
	rst  $30                                         ; $56fe: $f7
	ld   b, c                                        ; $56ff: $41
	adc  a                                           ; $5700: $8f
	rla                                              ; $5701: $17
	rst  JumpTable                                         ; $5702: $df
	rra                                              ; $5703: $1f
	add  b                                           ; $5704: $80
	ld   e, a                                        ; $5705: $5f
	add  c                                           ; $5706: $81
	rst  JumpTable                                         ; $5707: $df
	dec  c                                           ; $5708: $0d
	rrca                                             ; $5709: $0f
	stop                                             ; $570a: $10 $00
	ret  nz                                          ; $570c: $c0

	nop                                              ; $570d: $00
	ret  nc                                          ; $570e: $d0

	ldh  [$e8], a                                    ; $570f: $e0 $e8
	ldh  a, [$f4]                                    ; $5711: $f0 $f4
	ld   hl, sp-$06                                  ; $5713: $f8 $fa
	db   $fc                                         ; $5715: $fc
	db   $fd                                         ; $5716: $fd
	add  b                                           ; $5717: $80
	cp   $0b                                         ; $5718: $fe $0b
	rst  $38                                         ; $571a: $ff
	ld   [bc], a                                     ; $571b: $02
	add  hl, de                                      ; $571c: $19
	sbc  d                                           ; $571d: $9a
	add  [hl]                                        ; $571e: $86
	and  $a1                                         ; $571f: $e6 $a1
	or   b                                           ; $5721: $b0
	sub  b                                           ; $5722: $90
	sbc  h                                           ; $5723: $9c
	and  h                                           ; $5724: $a4
	and  a                                           ; $5725: $a7
	add  b                                           ; $5726: $80
	reti                                             ; $5727: $d9


	inc  d                                           ; $5728: $14
	ld   e, $ff                                      ; $5729: $1e $ff
	ld   c, $3e                                      ; $572b: $0e $3e
	reti                                             ; $572d: $d9


	ldh  [$ef], a                                    ; $572e: $e0 $ef
	scf                                              ; $5730: $37
	inc  sp                                          ; $5731: $33
	sub  e                                           ; $5732: $93
	ld   d, c                                        ; $5733: $51
	jr   nz, jr_014_5747                             ; $5734: $20 $11

	ld   c, $04                                      ; $5736: $0e $04
	push bc                                          ; $5738: $c5
	ld   b, d                                        ; $5739: $42
	db   $d3                                         ; $573a: $d3
	ld   sp, $fe9e                                   ; $573b: $31 $9e $fe
	add  b                                           ; $573e: $80
	ld   sp, hl                                      ; $573f: $f9
	add  b                                           ; $5740: $80
	ldh  [$80], a                                    ; $5741: $e0 $80
	ld   d, c                                        ; $5743: $51
	add  b                                           ; $5744: $80
	adc  a                                           ; $5745: $8f
	rra                                              ; $5746: $1f

jr_014_5747:
	ld   hl, sp+$1f                                  ; $5747: $f8 $1f
	sbc  a                                           ; $5749: $9f
	ld   b, a                                        ; $574a: $47
	ld   [hl], b                                     ; $574b: $70
	adc  b                                           ; $574c: $88
	ld   e, d                                        ; $574d: $5a
	sbc  d                                           ; $574e: $9a
	ld   e, d                                        ; $574f: $5a
	ld   a, [de]                                     ; $5750: $1a
	inc  [hl]                                        ; $5751: $34
	inc  e                                           ; $5752: $1c
	adc  h                                           ; $5753: $8c
	db   $fc                                         ; $5754: $fc
	sbc  h                                           ; $5755: $9c
	db   $fc                                         ; $5756: $fc
	ld   a, h                                        ; $5757: $7c
	db   $fc                                         ; $5758: $fc
	call $dcdd                                       ; $5759: $cd $dd $dc
	call z, $1f1c                                    ; $575c: $cc $1c $1f
	add  e                                           ; $575f: $83
	add  b                                           ; $5760: $80
	ret  nc                                          ; $5761: $d0

	ldh  a, [$de]                                    ; $5762: $f0 $de
	rst  $38                                         ; $5764: $ff
	ld   a, [hl]                                     ; $5765: $7e
	ld   a, a                                        ; $5766: $7f
	add  b                                           ; $5767: $80
	adc  a                                           ; $5768: $8f
	add  b                                           ; $5769: $80
	db   $fc                                         ; $576a: $fc
	inc  b                                           ; $576b: $04
	ld   a, c                                        ; $576c: $79
	ld   a, [$c3bf]                                  ; $576d: $fa $bf $c3
	rst  $38                                         ; $5770: $ff
	add  c                                           ; $5771: $81
	nop                                              ; $5772: $00
	ld   a, [hl+]                                    ; $5773: $2a
	rlca                                             ; $5774: $07
	rst  $38                                         ; $5775: $ff
	inc  b                                           ; $5776: $04
	rst  $38                                         ; $5777: $ff
	jp   $3fff                                       ; $5778: $c3 $ff $3f


	ld   a, a                                        ; $577b: $7f
	cp   a                                           ; $577c: $bf
	ccf                                              ; $577d: $3f
	ei                                               ; $577e: $fb
	db   $fd                                         ; $577f: $fd
	push af                                          ; $5780: $f5
	dec  c                                           ; $5781: $0d
	inc  c                                           ; $5782: $0c
	dec  c                                           ; $5783: $0d
	add  c                                           ; $5784: $81
	db   $fd                                         ; $5785: $fd
	ld   [hl], h                                     ; $5786: $74
	or   $36                                         ; $5787: $f6 $36
	or   a                                           ; $5789: $b7
	or   e                                           ; $578a: $b3
	di                                               ; $578b: $f3
	add  hl, sp                                      ; $578c: $39
	ld   a, [$fef2]                                  ; $578d: $fa $f2 $fe
	adc  [hl]                                        ; $5790: $8e
	cp   $7c                                         ; $5791: $fe $7c
	db   $fc                                         ; $5793: $fc
	db   $e3                                         ; $5794: $e3
	ldh  [$1f], a                                    ; $5795: $e0 $1f
	inc  bc                                          ; $5797: $03
	ld   l, a                                        ; $5798: $6f
	rrca                                             ; $5799: $0f
	ld   d, a                                        ; $579a: $57
	sub  a                                           ; $579b: $97
	sbc  e                                           ; $579c: $9b
	dec  de                                          ; $579d: $1b
	cp   a                                           ; $579e: $bf
	add  e                                           ; $579f: $83
	ld   a, a                                        ; $57a0: $7f
	adc  c                                           ; $57a1: $89
	rst  $38                                         ; $57a2: $ff
	cpl                                              ; $57a3: $2f
	nop                                              ; $57a4: $00
	ld   a, $00                                      ; $57a5: $3e $00
	ld   h, b                                        ; $57a7: $60
	nop                                              ; $57a8: $00
	jr   nc, jr_014_57ab                             ; $57a9: $30 $00

jr_014_57ab:
	jr   jr_014_57ad                                 ; $57ab: $18 $00

jr_014_57ad:
	inc  c                                           ; $57ad: $0c
	nop                                              ; $57ae: $00
	ld   b, $00                                      ; $57af: $06 $00
	ld   a, h                                        ; $57b1: $7c
	nop                                              ; $57b2: $00
	dec  b                                           ; $57b3: $05
	ld   hl, sp+$77                                  ; $57b4: $f8 $77
	ldh  a, [$2e]                                    ; $57b6: $f0 $2e
	ldh  [$03], a                                    ; $57b8: $e0 $03
	ldh  [$87], a                                    ; $57ba: $e0 $87
	ldh  [$cc], a                                    ; $57bc: $e0 $cc
	pop  af                                          ; $57be: $f1
	ld   [hl], c                                     ; $57bf: $71
	ld   sp, hl                                      ; $57c0: $f9
	add  hl, sp                                      ; $57c1: $39
	ld   sp, hl                                      ; $57c2: $f9
	ld   c, e                                        ; $57c3: $4b
	ld   h, b                                        ; $57c4: $60
	ld   a, a                                        ; $57c5: $7f
	ret  nz                                          ; $57c6: $c0

	rst  $38                                         ; $57c7: $ff
	ld   c, $e3                                      ; $57c8: $0e $e3
	ld   de, $22c5                                   ; $57ca: $11 $c5 $22
	ld   a, [bc]                                     ; $57cd: $0a
	and  l                                           ; $57ce: $a5
	add  l                                           ; $57cf: $85
	db   $db                                         ; $57d0: $db
	xor  l                                           ; $57d1: $ad
	db   $e3                                         ; $57d2: $e3
	add  l                                           ; $57d3: $85
	add  b                                           ; $57d4: $80
	ldh  [rSC], a                                    ; $57d5: $e0 $02
	ld   h, b                                        ; $57d7: $60
	ldh  a, [$80]                                    ; $57d8: $f0 $80
	add  b                                           ; $57da: $80
	ret  nz                                          ; $57db: $c0

	nop                                              ; $57dc: $00
	and  b                                           ; $57dd: $a0
	add  c                                           ; $57de: $81
	add  b                                           ; $57df: $80
	ld   bc, $80c0                                   ; $57e0: $01 $c0 $80
	add  b                                           ; $57e3: $80
	add  hl, bc                                      ; $57e4: $09

jr_014_57e5:
	ld   [bc], a                                     ; $57e5: $02
	and  $1f                                         ; $57e6: $e6 $1f
	ld   b, $8b                                      ; $57e8: $06 $8b
	ccf                                              ; $57ea: $3f
	inc  l                                           ; $57eb: $2c
	ld   d, e                                        ; $57ec: $53
	rst  $28                                         ; $57ed: $ef
	call $22e3                                       ; $57ee: $cd $e3 $22
	jp   hl                                          ; $57f1: $e9


	push hl                                          ; $57f2: $e5
	ldh  [$eb], a                                    ; $57f3: $e0 $eb
	add  sp, -$1e                                    ; $57f5: $e8 $e2
	add  sp, -$15                                    ; $57f7: $e8 $eb
	ld   [$e0e3], a                                  ; $57f9: $ea $e3 $e0
	rst  $20                                         ; $57fc: $e7
	rst  $38                                         ; $57fd: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $57fe: $cf
	ldh  a, [$3f]                                    ; $57ff: $f0 $3f
	ret  nz                                          ; $5801: $c0

	cp   $0f                                         ; $5802: $fe $0f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5804: $cf
	cpl                                              ; $5805: $2f
	ld   c, l                                        ; $5806: $4d
	rrca                                             ; $5807: $0f
	cp   e                                           ; $5808: $bb
	rra                                              ; $5809: $1f
	pop  af                                          ; $580a: $f1
	ld   a, $e8                                      ; $580b: $3e $e8
	rlca                                             ; $580d: $07
	db   $e3                                         ; $580e: $e3
	rlca                                             ; $580f: $07
	sra  e                                           ; $5810: $cb $2b
	rla                                              ; $5812: $17
	dec  b                                           ; $5813: $05
	inc  de                                          ; $5814: $13

jr_014_5815:
	ld   a, [de]                                     ; $5815: $1a
	ld   e, d                                        ; $5816: $5a
	ld   a, d                                        ; $5817: $7a
	dec  hl                                          ; $5818: $2b
	add  b                                           ; $5819: $80
	dec  de                                          ; $581a: $1b
	inc  b                                           ; $581b: $04
	inc  bc                                          ; $581c: $03
	dec  sp                                          ; $581d: $3b
	inc  c                                           ; $581e: $0c
	add  [hl]                                        ; $581f: $86
	and  c                                           ; $5820: $a1
	add  b                                           ; $5821: $80
	adc  b                                           ; $5822: $88
	ld   bc, $d6c6                                   ; $5823: $01 $c6 $d6
	add  b                                           ; $5826: $80
	ld   [$6b38], a                                  ; $5827: $ea $38 $6b
	db   $e3                                         ; $582a: $e3
	ld   [hl], l                                     ; $582b: $75
	ld   [hl], c                                     ; $582c: $71
	ld   hl, sp-$46                                  ; $582d: $f8 $ba
	add  sp, $31                                     ; $582f: $e8 $31
	sbc  l                                           ; $5831: $9d
	add  [hl]                                        ; $5832: $86
	db   $d3                                         ; $5833: $d3
	jr   nc, jr_014_5815                             ; $5834: $30 $df

	ret  nz                                          ; $5836: $c0

	rst  $20                                         ; $5837: $e7
	rst  $38                                         ; $5838: $ff
	ld   d, h                                        ; $5839: $54
	ld   a, h                                        ; $583a: $7c
	inc  bc                                          ; $583b: $03
	ccf                                              ; $583c: $3f
	cp   d                                           ; $583d: $ba
	cp   [hl]                                        ; $583e: $be
	inc  [hl]                                        ; $583f: $34
	inc  a                                           ; $5840: $3c
	adc  h                                           ; $5841: $8c
	ld   c, h                                        ; $5842: $4c
	sub  c                                           ; $5843: $91
	ret                                              ; $5844: $c9


	sub  $51                                         ; $5845: $d6 $51
	sbc  $c2                                         ; $5847: $de $c2
	rlca                                             ; $5849: $07
	inc  l                                           ; $584a: $2c
	ld   [$1c7c], sp                                 ; $584b: $08 $7c $1c
	db   $fc                                         ; $584e: $fc
	xor  [hl]                                        ; $584f: $ae
	dec  d                                           ; $5850: $15
	dec  b                                           ; $5851: $05
	add  [hl]                                        ; $5852: $86
	inc  b                                           ; $5853: $04
	call nz, $104d                                   ; $5854: $c4 $4d $10
	call nz, $9910                                   ; $5857: $c4 $10 $99
	add  hl, de                                      ; $585a: $19
	call nz, $908d                                   ; $585b: $c4 $8d $90
	call nc, $bfe0                                   ; $585e: $d4 $e0 $bf
	ccf                                              ; $5861: $3f
	add  c                                           ; $5862: $81
	jr   nz, jr_014_57e5                             ; $5863: $20 $80

	ld   b, b                                        ; $5865: $40
	dec  bc                                          ; $5866: $0b
	add  [hl]                                        ; $5867: $86
	rlca                                             ; $5868: $07
	ld   bc, $bf3f                                   ; $5869: $01 $3f $bf
	add  b                                           ; $586c: $80
	daa                                              ; $586d: $27
	add  a                                           ; $586e: $87
	nop                                              ; $586f: $00
	ldh  [$c0], a                                    ; $5870: $e0 $c0
	nop                                              ; $5872: $00
	add  b                                           ; $5873: $80
	ld   bc, $191a                                   ; $5874: $01 $1a $19
	rra                                              ; $5877: $1f
	ld   [bc], a                                     ; $5878: $02
	db   $fc                                         ; $5879: $fc
	cp   c                                           ; $587a: $b9
	jp   Jump_014_7ffb                               ; $587b: $c3 $fb $7f


	or   $fe                                         ; $587e: $f6 $fe
	inc  e                                           ; $5880: $1c
	call $e6d6                                       ; $5881: $cd $d6 $e6
	jp   hl                                          ; $5884: $e9


	pop  af                                          ; $5885: $f1
	halt                                             ; $5886: $76
	ld   hl, sp+$79                                  ; $5887: $f8 $79
	ld   b, [hl]                                     ; $5889: $46
	ld   d, [hl]                                     ; $588a: $56
	ccf                                              ; $588b: $3f
	ld   b, a                                        ; $588c: $47
	ld   a, a                                        ; $588d: $7f
	db   $e3                                         ; $588e: $e3
	rst  $38                                         ; $588f: $ff
	dec  bc                                          ; $5890: $0b
	add  c                                           ; $5891: $81
	rst  $38                                         ; $5892: $ff
	add  b                                           ; $5893: $80
	ld   a, a                                        ; $5894: $7f
	add  b                                           ; $5895: $80
	ccf                                              ; $5896: $3f
	ld   e, $9f                                      ; $5897: $1e $9f
	rra                                              ; $5899: $1f
	ld   c, a                                        ; $589a: $4f
	adc  a                                           ; $589b: $8f
	and  a                                           ; $589c: $a7
	rst  ToBoot                                         ; $589d: $c7
	db   $d3                                         ; $589e: $d3
	db   $e3                                         ; $589f: $e3
	rst  $28                                         ; $58a0: $ef
	nop                                              ; $58a1: $00
	ld   a, $00                                      ; $58a2: $3e $00
	ld   h, b                                        ; $58a4: $60
	nop                                              ; $58a5: $00
	jr   nc, jr_014_58a8                             ; $58a6: $30 $00

jr_014_58a8:
	jr   jr_014_58aa                                 ; $58a8: $18 $00

jr_014_58aa:
	inc  c                                           ; $58aa: $0c
	nop                                              ; $58ab: $00
	ld   b, $00                                      ; $58ac: $06 $00
	ld   a, h                                        ; $58ae: $7c
	nop                                              ; $58af: $00
	call c, wPortraitGalleryChosenPerson                                    ; $58b0: $dc $f9 $cb
	db   $fc                                         ; $58b3: $fc
	db   $e4                                         ; $58b4: $e4
	db   $fc                                         ; $58b5: $fc
	or   $81                                         ; $58b6: $f6 $81
	ld   hl, sp+$00                                  ; $58b8: $f8 $00
	ld   sp, hl                                      ; $58ba: $f9
	add  c                                           ; $58bb: $81
	ld   hl, sp+$1c                                  ; $58bc: $f8 $1c
	db   $fd                                         ; $58be: $fd
	di                                               ; $58bf: $f3
	db   $db                                         ; $58c0: $db
	add  $b4                                         ; $58c1: $c6 $b4
	adc  [hl]                                        ; $58c3: $8e
	ld   l, h                                        ; $58c4: $6c
	nop                                              ; $58c5: $00
	cp   l                                           ; $58c6: $bd
	nop                                              ; $58c7: $00
	db   $fc                                         ; $58c8: $fc
	ld   bc, $ef2f                                   ; $58c9: $01 $2f $ef
	rst  $10                                         ; $58cc: $d7
	rst  $30                                         ; $58cd: $f7
	pop  hl                                          ; $58ce: $e1
	pop  af                                          ; $58cf: $f1
	ld   b, $09                                      ; $58d0: $06 $09
	ld   bc, $1a09                                   ; $58d2: $01 $09 $1a
	dec  de                                          ; $58d5: $1b
	and  a                                           ; $58d6: $a7
	ld   [hl], e                                     ; $58d7: $73
	ld   l, $0c                                      ; $58d8: $2e $0c
	ld   e, $80                                      ; $58da: $1e $80
	ld   e, [hl]                                     ; $58dc: $5e
	nop                                              ; $58dd: $00
	ld   e, $80                                      ; $58de: $1e $80
	rst  $38                                         ; $58e0: $ff
	nop                                              ; $58e1: $00
	add  b                                           ; $58e2: $80
	add  e                                           ; $58e3: $83
	ccf                                              ; $58e4: $3f
	nop                                              ; $58e5: $00
	cp   a                                           ; $58e6: $bf
	add  d                                           ; $58e7: $82
	ccf                                              ; $58e8: $3f
	add  b                                           ; $58e9: $80
	cp   a                                           ; $58ea: $bf
	nop                                              ; $58eb: $00
	ccf                                              ; $58ec: $3f
	add  b                                           ; $58ed: $80
	cp   a                                           ; $58ee: $bf
	inc  bc                                          ; $58ef: $03
	inc  a                                           ; $58f0: $3c
	db   $eb                                         ; $58f1: $eb
	ld   sp, hl                                      ; $58f2: $f9
	push af                                          ; $58f3: $f5
	add  b                                           ; $58f4: $80
	pop  af                                          ; $58f5: $f1
	ld   [bc], a                                     ; $58f6: $02
	ldh  [c], a                                      ; $58f7: $e2
	ldh  a, [c]                                      ; $58f8: $f2
	or   $81                                         ; $58f9: $f6 $81
	ldh  a, [rP1]                                    ; $58fb: $f0 $00
	rst  $30                                         ; $58fd: $f7
	add  c                                           ; $58fe: $81
	ldh  a, [$0a]                                    ; $58ff: $f0 $0a
	dec  b                                           ; $5901: $05
	or   $e6                                         ; $5902: $f6 $e6
	db   $ec                                         ; $5904: $ec
	call z, $19d8                                    ; $5905: $cc $d8 $19
	db   $10                                         ; $5908: $10
	jp   nc, Jump_014_6cc0                           ; $5909: $d2 $c0 $6c

	add  c                                           ; $590c: $81
	ld   h, b                                        ; $590d: $60
	add  b                                           ; $590e: $80
	and  b                                           ; $590f: $a0
	inc  de                                          ; $5910: $13
	db   $f4                                         ; $5911: $f4
	inc  bc                                          ; $5912: $03
	push bc                                          ; $5913: $c5
	pop  bc                                          ; $5914: $c1
	ldh  [c], a                                      ; $5915: $e2
	ldh  [$f9], a                                    ; $5916: $e0 $f9
	ld   a, b                                        ; $5918: $78
	ld   a, h                                        ; $5919: $7c
	inc  e                                           ; $591a: $1c
	cp   $0e                                         ; $591b: $fe $0e
	dec  de                                          ; $591d: $1b
	rlca                                             ; $591e: $07
	add  hl, bc                                      ; $591f: $09
	inc  bc                                          ; $5920: $03
	ld   a, d                                        ; $5921: $7a
	sbc  l                                           ; $5922: $9d
	call $80dc                                       ; $5923: $cd $dc $80
	ld   l, [hl]                                     ; $5926: $6e
	inc  de                                          ; $5927: $13
	cp   a                                           ; $5928: $bf
	or   a                                           ; $5929: $b7
	sbc  a                                           ; $592a: $9f
	ld   e, e                                        ; $592b: $5b
	add  hl, hl                                      ; $592c: $29
	dec  bc                                          ; $592d: $0b
	sub  l                                           ; $592e: $95
	add  h                                           ; $592f: $84
	ret  z                                           ; $5930: $c8

	ret  nz                                          ; $5931: $c0

	and  h                                           ; $5932: $a4
	ld   e, l                                        ; $5933: $5d
	add  hl, de                                      ; $5934: $19
	dec  de                                          ; $5935: $1b
	add  e                                           ; $5936: $83
	rlca                                             ; $5937: $07
	ld   c, $4f                                      ; $5938: $0e $4f
	adc  c                                           ; $593a: $89
	adc  a                                           ; $593b: $8f
	add  b                                           ; $593c: $80
	rst  $28                                         ; $593d: $ef
	inc  b                                           ; $593e: $04
	add  a                                           ; $593f: $87
	rst  ToBoot                                         ; $5940: $c7
	add  a                                           ; $5941: $87
	rlca                                             ; $5942: $07
	ld   b, h                                        ; $5943: $44
	add  c                                           ; $5944: $81
	ld   hl, sp+$09                                  ; $5945: $f8 $09
	ld   [hl], $be                                   ; $5947: $36 $be
	xor  b                                           ; $5949: $a8
	cp   [hl]                                        ; $594a: $be
	sbc  a                                           ; $594b: $9f
	cp   a                                           ; $594c: $bf
	sbc  h                                           ; $594d: $9c
	sbc  a                                           ; $594e: $9f
	sbc  $df                                         ; $594f: $de $df
	add  b                                           ; $5951: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5952: $cf
	inc  b                                           ; $5953: $04
	ld   e, l                                        ; $5954: $5d
	db   $dd                                         ; $5955: $dd
	ld   de, $0899                                   ; $5956: $11 $99 $08
	add  b                                           ; $5959: $80
	db   $10                                         ; $595a: $10
	add  c                                           ; $595b: $81
	nop                                              ; $595c: $00
	ld   hl, $c140                                   ; $595d: $21 $40 $c1
	dec  c                                           ; $5960: $0d
	ldh  a, [c]                                      ; $5961: $f2
	adc  [hl]                                        ; $5962: $8e
	cp   $b6                                         ; $5963: $fe $b6
	add  h                                           ; $5965: $84
	cp   a                                           ; $5966: $bf
	add  h                                           ; $5967: $84
	cp   a                                           ; $5968: $bf
	cp   b                                           ; $5969: $b8
	ccf                                              ; $596a: $3f
	cp   a                                           ; $596b: $bf
	ld   a, $bf                                      ; $596c: $3e $bf
	ld   a, l                                        ; $596e: $7d
	ld   a, a                                        ; $596f: $7f
	ld   a, e                                        ; $5970: $7b
	ld   a, a                                        ; $5971: $7f
	pop  af                                          ; $5972: $f1
	rst  $38                                         ; $5973: $ff
	ld   c, e                                        ; $5974: $4b
	ld   a, [hl]                                     ; $5975: $7e
	sub  [hl]                                        ; $5976: $96
	ld   l, [hl]                                     ; $5977: $6e
	or   b                                           ; $5978: $b0
	adc  h                                           ; $5979: $8c
	db   $f4                                         ; $597a: $f4
	inc  de                                          ; $597b: $13
	rla                                              ; $597c: $17
	jp   hl                                          ; $597d: $e9


	push hl                                          ; $597e: $e5
	db   $fc                                         ; $597f: $fc
	add  b                                           ; $5980: $80
	ei                                               ; $5981: $fb
	ld   [bc], a                                     ; $5982: $02
	pop  af                                          ; $5983: $f1
	ld   sp, hl                                      ; $5984: $f9
	db   $10                                         ; $5985: $10
	add  b                                           ; $5986: $80
	ldh  [rAUD2LEN], a                               ; $5987: $e0 $16
	db   $e4                                         ; $5989: $e4
	push bc                                          ; $598a: $c5
	jp   c, $32a8                                    ; $598b: $da $a8 $32

	ld   h, e                                        ; $598e: $63
	inc  de                                          ; $598f: $13
	push hl                                          ; $5990: $e5
	dec  [hl]                                        ; $5991: $35
	jp   hl                                          ; $5992: $e9


	call $ded7                                       ; $5993: $cd $d7 $de
	ld   b, $65                                      ; $5996: $06 $65
	ld   h, [hl]                                     ; $5998: $66
	and  [hl]                                        ; $5999: $a6
	and  e                                           ; $599a: $a3
	inc  bc                                          ; $599b: $03
	and  l                                           ; $599c: $a5
	dec  b                                           ; $599d: $05
	ld   a, [de]                                     ; $599e: $1a
	ld   [bc], a                                     ; $599f: $02
	add  b                                           ; $59a0: $80
	and  c                                           ; $59a1: $a1
	inc  b                                           ; $59a2: $04
	db   $f4                                         ; $59a3: $f4
	ld   [hl], b                                     ; $59a4: $70
	ei                                               ; $59a5: $fb
	ldh  [$28], a                                    ; $59a6: $e0 $28
	add  c                                           ; $59a8: $81
	rst  $38                                         ; $59a9: $ff
	add  b                                           ; $59aa: $80
	ld   a, a                                        ; $59ab: $7f
	add  b                                           ; $59ac: $80
	cp   a                                           ; $59ad: $bf
	add  b                                           ; $59ae: $80
	rst  JumpTable                                         ; $59af: $df
	add  b                                           ; $59b0: $80
	ld   l, a                                        ; $59b1: $6f
	add  b                                           ; $59b2: $80
	scf                                              ; $59b3: $37
	ld   [bc], a                                     ; $59b4: $02
	add  e                                           ; $59b5: $83
	inc  bc                                          ; $59b6: $03
	add  l                                           ; $59b7: $85
	add  c                                           ; $59b8: $81
	pop  af                                          ; $59b9: $f1
	ld   bc, $e7fb                                   ; $59ba: $01 $fb $e7
	add  d                                           ; $59bd: $82
	db   $e3                                         ; $59be: $e3
	inc  bc                                          ; $59bf: $03
	or   $cf                                         ; $59c0: $f6 $cf
	push bc                                          ; $59c2: $c5
	rst  ToBoot                                         ; $59c3: $c7
	add  b                                           ; $59c4: $80
	add  $1d                                         ; $59c5: $c6 $1d
	ld   l, $f6                                      ; $59c7: $2e $f6
	db   $f4                                         ; $59c9: $f4
	rst  $30                                         ; $59ca: $f7
	rst  $38                                         ; $59cb: $ff
	ei                                               ; $59cc: $fb
	sbc  e                                           ; $59cd: $9b
	ei                                               ; $59ce: $fb
	ld   l, c                                        ; $59cf: $69
	ei                                               ; $59d0: $fb
	ldh  [c], a                                      ; $59d1: $e2
	db   $e3                                         ; $59d2: $e3
	sbc  b                                           ; $59d3: $98
	sbc  e                                           ; $59d4: $9b
	ld   c, d                                        ; $59d5: $4a
	ld   a, c                                        ; $59d6: $79
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $59d7: $cf
	rst  $38                                         ; $59d8: $ff
	jp   z, $29ce                                    ; $59d9: $ca $ce $29

	adc  h                                           ; $59dc: $8c
	or   e                                           ; $59dd: $b3
	sbc  [hl]                                        ; $59de: $9e
	adc  l                                           ; $59df: $8d
	rst  $38                                         ; $59e0: $ff
	ldh  [$fe], a                                    ; $59e1: $e0 $fe
	ld   e, $fe                                      ; $59e3: $1e $fe
	add  b                                           ; $59e5: $80
	rst  $38                                         ; $59e6: $ff
	ld   bc, $bf80                                   ; $59e7: $01 $80 $bf
	add  e                                           ; $59ea: $83
	ccf                                              ; $59eb: $3f
	ld   b, $7f                                      ; $59ec: $06 $7f
	ld   h, c                                        ; $59ee: $61
	ld   a, a                                        ; $59ef: $7f
	ld   e, [hl]                                     ; $59f0: $5e
	rst  $38                                         ; $59f1: $ff
	ccf                                              ; $59f2: $3f
	rst  $38                                         ; $59f3: $ff
	add  b                                           ; $59f4: $80
	ld   a, a                                        ; $59f5: $7f
	nop                                              ; $59f6: $00
	ld   [bc], a                                     ; $59f7: $02
	add  c                                           ; $59f8: $81
	ld   hl, sp+$00                                  ; $59f9: $f8 $00
	rst  ToBoot                                         ; $59fb: $c7
	add  c                                           ; $59fc: $81
	db   $fc                                         ; $59fd: $fc
	ld   a, [bc]                                     ; $59fe: $0a
	rst  JumpTable                                         ; $59ff: $df
	cp   $6e                                         ; $5a00: $fe $6e
	cp   $be                                         ; $5a02: $fe $be
	cp   $ce                                         ; $5a04: $fe $ce
	cp   $27                                         ; $5a06: $fe $27
	and  b                                           ; $5a08: $a0
	add  h                                           ; $5a09: $84
	add  b                                           ; $5a0a: $80
	adc  b                                           ; $5a0b: $88
	inc  b                                           ; $5a0c: $04
	ld   c, b                                        ; $5a0d: $48
	ld   a, [bc]                                     ; $5a0e: $0a
	ld   [hl], h                                     ; $5a0f: $74
	inc  d                                           ; $5a10: $14
	and  h                                           ; $5a11: $a4
	add  b                                           ; $5a12: $80
	sbc  h                                           ; $5a13: $9c
	ld   b, $84                                      ; $5a14: $06 $84
	ld   b, b                                        ; $5a16: $40
	jp   nz, Jump_014_4738                           ; $5a17: $c2 $38 $47

	ld   [bc], a                                     ; $5a1a: $02
	ld   bc, $008b                                   ; $5a1b: $01 $8b $00
	ld   b, $e3                                      ; $5a1e: $06 $e3
	ldh  [$fc], a                                    ; $5a20: $e0 $fc
	ld   a, l                                        ; $5a22: $7d
	push hl                                          ; $5a23: $e5
	dec  sp                                          ; $5a24: $3b
	ld   h, a                                        ; $5a25: $67
	add  b                                           ; $5a26: $80
	rlca                                             ; $5a27: $07
	ld   [$1b1f], sp                                 ; $5a28: $08 $1f $1b
	rra                                              ; $5a2b: $1f
	ld   a, l                                        ; $5a2c: $7d
	cpl                                              ; $5a2d: $2f
	xor  h                                           ; $5a2e: $ac
	ld   l, a                                        ; $5a2f: $6f
	rst  $30                                         ; $5a30: $f7
	cp   c                                           ; $5a31: $b9
	add  b                                           ; $5a32: $80
	rst  $20                                         ; $5a33: $e7
	jr   jr_014_5a64                                 ; $5a34: $18 $2e

	rst  $28                                         ; $5a36: $ef
	pop  de                                          ; $5a37: $d1
	rst  $30                                         ; $5a38: $f7
	db   $ed                                         ; $5a39: $ed
	ei                                               ; $5a3a: $fb
	push af                                          ; $5a3b: $f5
	db   $fc                                         ; $5a3c: $fc
	ld   a, [$f8ff]                                  ; $5a3d: $fa $ff $f8
	rst  $38                                         ; $5a40: $ff
	rra                                              ; $5a41: $1f
	rst  $20                                         ; $5a42: $e7
	pop  af                                          ; $5a43: $f1
	di                                               ; $5a44: $f3
	nop                                              ; $5a45: $00
	ldh  a, [$d3]                                    ; $5a46: $f0 $d3
	jp   $83a0                                       ; $5a48: $c3 $a0 $83


	and  e                                           ; $5a4b: $a3
	ld   h, b                                        ; $5a4c: $60
	ldh  [$81], a                                    ; $5a4d: $e0 $81
	db   $e3                                         ; $5a4f: $e3
	ld   a, [bc]                                     ; $5a50: $0a
	ldh  [c], a                                      ; $5a51: $e2
	db   $fd                                         ; $5a52: $fd
	rla                                              ; $5a53: $17

jr_014_5a54:
	ei                                               ; $5a54: $fb
	ld   [hl], c                                     ; $5a55: $71
	add  a                                           ; $5a56: $87
	ld   hl, sp-$03                                  ; $5a57: $f8 $fd
	inc  c                                           ; $5a59: $0c
	ldh  a, [$fe]                                    ; $5a5a: $f0 $fe
	add  b                                           ; $5a5c: $80
	nop                                              ; $5a5d: $00
	add  b                                           ; $5a5e: $80
	ld   hl, sp+$0c                                  ; $5a5f: $f8 $0c
	db   $fc                                         ; $5a61: $fc
	ld   d, $f9                                      ; $5a62: $16 $f9

jr_014_5a64:
	jp   $d6f9                                       ; $5a64: $c3 $f9 $d6


	cp   $06                                         ; $5a67: $fe $06
	rlca                                             ; $5a69: $07
	ld   d, c                                        ; $5a6a: $51
	ld   d, a                                        ; $5a6b: $57
	daa                                              ; $5a6c: $27
	cpl                                              ; $5a6d: $2f
	add  d                                           ; $5a6e: $82
	ld   e, [hl]                                     ; $5a6f: $5e
	dec  e                                           ; $5a70: $1d
	rra                                              ; $5a71: $1f
	ldh  a, [$c6]                                    ; $5a72: $f0 $c6
	add  sp, -$33                                    ; $5a74: $e8 $cd
	inc  a                                           ; $5a76: $3c
	cp   [hl]                                        ; $5a77: $be
	sbc  [hl]                                        ; $5a78: $9e
	ld   e, a                                        ; $5a79: $5f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5a7a: $cf
	rra                                              ; $5a7b: $1f
	ld   d, a                                        ; $5a7c: $57
	cpl                                              ; $5a7d: $2f
	dec  hl                                          ; $5a7e: $2b
	rrca                                             ; $5a7f: $0f
	dec  l                                           ; $5a80: $2d
	add  c                                           ; $5a81: $81
	ld   h, b                                        ; $5a82: $60
	add  e                                           ; $5a83: $83
	nop                                              ; $5a84: $00
	db   $fc                                         ; $5a85: $fc
	nop                                              ; $5a86: $00
	pop  bc                                          ; $5a87: $c1
	nop                                              ; $5a88: $00
	ld   h, d                                        ; $5a89: $62
	ld   bc, $81b1                                   ; $5a8a: $01 $b1 $81
	push bc                                          ; $5a8d: $c5
	jp   $e380                                       ; $5a8e: $c3 $80 $e3


	add  hl, de                                      ; $5a91: $19
	jr   z, jr_014_5a54                              ; $5a92: $28 $c0

	ccf                                              ; $5a94: $3f
	nop                                              ; $5a95: $00
	jp   $8000                                       ; $5a96: $c3 $00 $80


	nop                                              ; $5a99: $00
	ret  nz                                          ; $5a9a: $c0

	nop                                              ; $5a9b: $00
	ldh  [$80], a                                    ; $5a9c: $e0 $80
	or   b                                           ; $5a9e: $b0
	add  b                                           ; $5a9f: $80
	ret  c                                           ; $5aa0: $d8

	ret  nz                                          ; $5aa1: $c0

	ld   [hl], c                                     ; $5aa2: $71
	ld   bc, $00fe                                   ; $5aa3: $01 $fe $00
	ldh  a, [rP1]                                    ; $5aa6: $f0 $00
	ld   l, e                                        ; $5aa8: $6b
	ld   bc, $011d                                   ; $5aa9: $01 $1d $01
	add  b                                           ; $5aac: $80
	ld   [bc], a                                     ; $5aad: $02
	add  b                                           ; $5aae: $80
	ld   bc, $0080                                   ; $5aaf: $01 $80 $00
	nop                                              ; $5ab2: $00
	cpl                                              ; $5ab3: $2f
	add  e                                           ; $5ab4: $83
	adc  a                                           ; $5ab5: $8f
	add  b                                           ; $5ab6: $80
	sub  a                                           ; $5ab7: $97
	ld   a, [bc]                                     ; $5ab8: $0a
	add  [hl]                                        ; $5ab9: $86
	sub  a                                           ; $5aba: $97
	xor  c                                           ; $5abb: $a9
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5abc: $cf
	rst  ToBoot                                         ; $5abd: $c7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5abe: $cf
	rst  $10                                         ; $5abf: $d7
	rst  $20                                         ; $5ac0: $e7
	inc  de                                          ; $5ac1: $13
	rst  $38                                         ; $5ac2: $ff
	db   $fc                                         ; $5ac3: $fc
	add  c                                           ; $5ac4: $81
	rst  $38                                         ; $5ac5: $ff
	inc  b                                           ; $5ac6: $04
	adc  a                                           ; $5ac7: $8f
	rst  $38                                         ; $5ac8: $ff
	ld   [hl], c                                     ; $5ac9: $71
	rst  $38                                         ; $5aca: $ff

jr_014_5acb:
	cp   $83                                         ; $5acb: $fe $83
	rst  $38                                         ; $5acd: $ff
	add  b                                           ; $5ace: $80
	inc  bc                                          ; $5acf: $03
	ld   [bc], a                                     ; $5ad0: $02
	ld   b, $fe                                      ; $5ad1: $06 $fe
	ld   hl, sp-$7d                                  ; $5ad3: $f8 $83
	rst  $38                                         ; $5ad5: $ff
	ld   [bc], a                                     ; $5ad6: $02
	rrca                                             ; $5ad7: $0f
	rst  $38                                         ; $5ad8: $ff
	ldh  a, [$81]                                    ; $5ad9: $f0 $81
	rst  $38                                         ; $5adb: $ff
	add  b                                           ; $5adc: $80
	cp   a                                           ; $5add: $bf
	add  b                                           ; $5ade: $80
	rra                                              ; $5adf: $1f
	inc  de                                          ; $5ae0: $13
	rrca                                             ; $5ae1: $0f
	adc  a                                           ; $5ae2: $8f
	rst  $30                                         ; $5ae3: $f7
	rst  ToBoot                                         ; $5ae4: $c7
	call $c1c3                                       ; $5ae5: $cd $c3 $c1
	ret  nz                                          ; $5ae8: $c0

	jr   nz, jr_014_5acb                             ; $5ae9: $20 $e0

	ld   a, b                                        ; $5aeb: $78
	ld   a, c                                        ; $5aec: $79
	add  b                                           ; $5aed: $80
	cp   $fd                                         ; $5aee: $fe $fd
	db   $fc                                         ; $5af0: $fc
	di                                               ; $5af1: $f3
	pop  af                                          ; $5af2: $f1
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5af3: $cf
	jp   $0380                                       ; $5af4: $c3 $80 $03


	add  hl, bc                                      ; $5af7: $09
	db   $fc                                         ; $5af8: $fc
	add  b                                           ; $5af9: $80
	rrca                                             ; $5afa: $0f
	add  b                                           ; $5afb: $80
	rlca                                             ; $5afc: $07
	nop                                              ; $5afd: $00
	add  hl, sp                                      ; $5afe: $39
	dec  b                                           ; $5aff: $05
	or   $ce                                         ; $5b00: $f6 $ce
	add  b                                           ; $5b02: $80
	rst  $30                                         ; $5b03: $f7
	add  b                                           ; $5b04: $80
	ei                                               ; $5b05: $fb
	add  b                                           ; $5b06: $80
	db   $fd                                         ; $5b07: $fd
	add  b                                           ; $5b08: $80
	cp   $80                                         ; $5b09: $fe $80
	ld   a, a                                        ; $5b0b: $7f
	inc  b                                           ; $5b0c: $04
	sbc  a                                           ; $5b0d: $9f
	rra                                              ; $5b0e: $1f
	add  e                                           ; $5b0f: $83
	nop                                              ; $5b10: $00
	inc  b                                           ; $5b11: $04
	add  l                                           ; $5b12: $85
	inc  bc                                          ; $5b13: $03
	dec  c                                           ; $5b14: $0d
	ld   bc, $0503                                   ; $5b15: $01 $03 $05
	ld   bc, $0300                                   ; $5b18: $01 $00 $03
	ld   l, [hl]                                     ; $5b1b: $6e
	rst  $30                                         ; $5b1c: $f7
	rst  $28                                         ; $5b1d: $ef
	ei                                               ; $5b1e: $fb
	ld   [hl], a                                     ; $5b1f: $77
	db   $fd                                         ; $5b20: $fd
	ei                                               ; $5b21: $fb
	cp   $80                                         ; $5b22: $fe $80
	rst  $38                                         ; $5b24: $ff
	add  hl, de                                      ; $5b25: $19
	ld   sp, hl                                      ; $5b26: $f9
	rst  $38                                         ; $5b27: $ff
	and  c                                           ; $5b28: $a1
	rst  $38                                         ; $5b29: $ff
	add  e                                           ; $5b2a: $83
	rst  $30                                         ; $5b2b: $f7
	ld   a, e                                        ; $5b2c: $7b
	rst  $38                                         ; $5b2d: $ff
	inc  hl                                          ; $5b2e: $23
	rst  $38                                         ; $5b2f: $ff
	xor  l                                           ; $5b30: $ad
	push hl                                          ; $5b31: $e5
	ld   d, b                                        ; $5b32: $50
	ldh  a, [$4c]                                    ; $5b33: $f0 $4c
	inc  a                                           ; $5b35: $3c
	sub  d                                           ; $5b36: $92
	add  d                                           ; $5b37: $82
	or   h                                           ; $5b38: $b4
	or   a                                           ; $5b39: $b7
	ld   l, d                                        ; $5b3a: $6a
	ld   l, [hl]                                     ; $5b3b: $6e
	rst  ToBoot                                         ; $5b3c: $c7
	ret  nz                                          ; $5b3d: $c0

	adc  b                                           ; $5b3e: $88
	adc  e                                           ; $5b3f: $8b
	add  b                                           ; $5b40: $80

jr_014_5b41:
	dec  de                                          ; $5b41: $1b
	ld   [bc], a                                     ; $5b42: $02
	inc  sp                                          ; $5b43: $33
	jr   nc, jr_014_5bb6                             ; $5b44: $30 $70

	add  c                                           ; $5b46: $81
	ld   [hl], a                                     ; $5b47: $77

jr_014_5b48:
	ld   b, $b7                                      ; $5b48: $06 $b7
	or   b                                           ; $5b4a: $b0
	ld   d, b                                        ; $5b4b: $50
	rst  $10                                         ; $5b4c: $d7
	add  [hl]                                        ; $5b4d: $86
	nop                                              ; $5b4e: $00
	inc  bc                                          ; $5b4f: $03
	add  b                                           ; $5b50: $80
	di                                               ; $5b51: $f3
	dec  b                                           ; $5b52: $05
	ei                                               ; $5b53: $fb
	ld   hl, sp+$03                                  ; $5b54: $f8 $03
	ld   bc, $f0f1                                   ; $5b56: $01 $f1 $f0
	add  b                                           ; $5b59: $80
	ld   hl, sp-$80                                  ; $5b5a: $f8 $80
	nop                                              ; $5b5c: $00
	ld   [de], a                                     ; $5b5d: $12
	ldh  a, [$c2]                                    ; $5b5e: $f0 $c2
	ccf                                              ; $5b60: $3f
	scf                                              ; $5b61: $37
	ccf                                              ; $5b62: $3f
	inc  sp                                          ; $5b63: $33
	ccf                                              ; $5b64: $3f
	ld   sp, $383f                                   ; $5b65: $31 $3f $38

jr_014_5b68:
	ccf                                              ; $5b68: $3f
	dec  e                                           ; $5b69: $1d
	ld   a, a                                        ; $5b6a: $7f
	ld   bc, $007e                                   ; $5b6b: $01 $7e $00
	rra                                              ; $5b6e: $1f
	adc  $2e                                         ; $5b6f: $ce $2e
	add  h                                           ; $5b71: $84
	rst  $28                                         ; $5b72: $ef
	ld   a, [de]                                     ; $5b73: $1a
	adc  a                                           ; $5b74: $8f
	rst  $28                                         ; $5b75: $ef
	jr   nc, jr_014_5b48                             ; $5b76: $30 $d0

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5b78: $cf
	ld   l, a                                        ; $5b79: $6f
	cpl                                              ; $5b7a: $2f
	rst  $28                                         ; $5b7b: $ef
	jr   jr_014_5b41                                 ; $5b7c: $18 $c3

	rst  $28                                         ; $5b7e: $ef
	rlca                                             ; $5b7f: $07
	or   a                                           ; $5b80: $b7
	add  a                                           ; $5b81: $87
	xor  c                                           ; $5b82: $a9
	xor  a                                           ; $5b83: $af
	ld   c, b                                        ; $5b84: $48
	ld   c, a                                        ; $5b85: $4f
	dec  l                                           ; $5b86: $2d
	cpl                                              ; $5b87: $2f
	ret  nc                                          ; $5b88: $d0

	rst  JumpTable                                         ; $5b89: $df
	adc  b                                           ; $5b8a: $88
	rst  $20                                         ; $5b8b: $e7
	ld   d, a                                        ; $5b8c: $57
	ret  nz                                          ; $5b8d: $c0

	db   $ec                                         ; $5b8e: $ec
	add  c                                           ; $5b8f: $81
	ldh  [rAUD3HIGH], a                              ; $5b90: $e0 $1e
	and  $e4                                         ; $5b92: $e6 $e4
	rst  $20                                         ; $5b94: $e7
	ld   hl, sp+$6a                                  ; $5b95: $f8 $6a
	ldh  a, [c]                                      ; $5b97: $f2
	ld   a, e                                        ; $5b98: $7b
	db   $fc                                         ; $5b99: $fc
	ld   [bc], a                                     ; $5b9a: $02
	ld   hl, sp+$03                                  ; $5b9b: $f8 $03
	nop                                              ; $5b9d: $00
	ld   a, $00                                      ; $5b9e: $3e $00
	ld   h, b                                        ; $5ba0: $60
	nop                                              ; $5ba1: $00
	jr   nc, jr_014_5ba4                             ; $5ba2: $30 $00

jr_014_5ba4:
	jr   jr_014_5ba6                                 ; $5ba4: $18 $00

jr_014_5ba6:
	inc  c                                           ; $5ba6: $0c
	nop                                              ; $5ba7: $00
	ld   b, $00                                      ; $5ba8: $06 $00
	ld   a, h                                        ; $5baa: $7c
	nop                                              ; $5bab: $00
	ei                                               ; $5bac: $fb
	di                                               ; $5bad: $f3
	db   $f4                                         ; $5bae: $f4
	ld   hl, sp-$05                                  ; $5baf: $f8 $fb
	add  b                                           ; $5bb1: $80
	db   $fc                                         ; $5bb2: $fc
	add  b                                           ; $5bb3: $80
	rst  $38                                         ; $5bb4: $ff
	add  c                                           ; $5bb5: $81

jr_014_5bb6:
	cp   $05                                         ; $5bb6: $fe $05
	rst  $38                                         ; $5bb8: $ff
	db   $fc                                         ; $5bb9: $fc
	cp   $f9                                         ; $5bba: $fe $f9
	ld   a, [$80ff]                                  ; $5bbc: $fa $ff $80
	ld   a, a                                        ; $5bbf: $7f
	inc  c                                           ; $5bc0: $0c
	add  c                                           ; $5bc1: $81
	ld   bc, $2e0e                                   ; $5bc2: $01 $0e $2e
	xor  [hl]                                        ; $5bc5: $ae
	ld   l, [hl]                                     ; $5bc6: $6e
	ld   a, [hl]                                     ; $5bc7: $7e
	ld   e, [hl]                                     ; $5bc8: $5e
	ld   b, c                                        ; $5bc9: $41
	ret  nz                                          ; $5bca: $c0

	or   $88                                         ; $5bcb: $f6 $88
	ld   b, b                                        ; $5bcd: $40
	add  e                                           ; $5bce: $83
	rst  $38                                         ; $5bcf: $ff
	add  b                                           ; $5bd0: $80
	rlca                                             ; $5bd1: $07
	add  b                                           ; $5bd2: $80
	jr   c, jr_014_5bd8                              ; $5bd3: $38 $03

	ld   b, h                                        ; $5bd5: $44
	add  $02                                         ; $5bd6: $c6 $02

jr_014_5bd8:
	ld   a, a                                        ; $5bd8: $7f
	add  b                                           ; $5bd9: $80
	nop                                              ; $5bda: $00
	nop                                              ; $5bdb: $00
	cp   $81                                         ; $5bdc: $fe $81
	ld   a, a                                        ; $5bde: $7f
	add  b                                           ; $5bdf: $80
	ld   a, [hl]                                     ; $5be0: $7e
	inc  bc                                          ; $5be1: $03
	ld   l, h                                        ; $5be2: $6c
	ld   e, $3c                                      ; $5be3: $1e $3c
	jr   nc, jr_014_5b68                             ; $5be5: $30 $81

	inc  a                                           ; $5be7: $3c
	nop                                              ; $5be8: $00
	cp   l                                           ; $5be9: $bd
	add  b                                           ; $5bea: $80
	dec  a                                           ; $5beb: $3d
	jr   nz, @+$79                                   ; $5bec: $20 $77

	ret  nz                                          ; $5bee: $c0

	rst  $10                                         ; $5bef: $d7
	db   $ec                                         ; $5bf0: $ec
	adc  $d8                                         ; $5bf1: $ce $d8
	dec  e                                           ; $5bf3: $1d
	ld   [hl], $31                                   ; $5bf4: $36 $31
	sbc  b                                           ; $5bf6: $98
	sbc  c                                           ; $5bf7: $99
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5bf8: $cf
	sbc  $d7                                         ; $5bf9: $de $d7
	call $70eb                                       ; $5bfb: $cd $eb $70
	rrca                                             ; $5bfe: $0f
	scf                                              ; $5bff: $37
	rlca                                             ; $5c00: $07
	db   $eb                                         ; $5c01: $eb
	inc  hl                                          ; $5c02: $23
	di                                               ; $5c03: $f3
	ld   d, e                                        ; $5c04: $53
	db   $d3                                         ; $5c05: $d3
	sub  e                                           ; $5c06: $93
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5c07: $cf
	ld   b, a                                        ; $5c08: $47
	ld   e, a                                        ; $5c09: $5f
	ld   c, a                                        ; $5c0a: $4f
	ccf                                              ; $5c0b: $3f
	rra                                              ; $5c0c: $1f
	pop  bc                                          ; $5c0d: $c1
	add  b                                           ; $5c0e: $80
	nop                                              ; $5c0f: $00
	add  d                                           ; $5c10: $82
	ld   bc, $001a                                   ; $5c11: $01 $1a $00
	inc  bc                                          ; $5c14: $03
	ld   bc, $0206                                   ; $5c15: $01 $06 $02
	ld   [$0605], sp                                 ; $5c18: $08 $05 $06
	rlca                                             ; $5c1b: $07
	db   $ec                                         ; $5c1c: $ec
	ld   hl, sp-$13                                  ; $5c1d: $f8 $ed
	ld   a, l                                        ; $5c1f: $7d
	ld   d, d                                        ; $5c20: $52
	ld   a, [hl-]                                    ; $5c21: $3a
	sub  $ce                                         ; $5c22: $d6 $ce
	dec  c                                           ; $5c24: $0d
	db   $fd                                         ; $5c25: $fd
	push af                                          ; $5c26: $f5
	db   $fd                                         ; $5c27: $fd
	or   $fe                                         ; $5c28: $f6 $fe
	xor  $fe                                         ; $5c2a: $ee $fe
	ld   sp, $80de                                   ; $5c2c: $31 $de $80
	cp   [hl]                                        ; $5c2f: $be
	add  b                                           ; $5c30: $80
	ld   a, $0a                                      ; $5c31: $3e $0a
	ld   h, $3e                                      ; $5c33: $26 $3e
	ld   h, $3e                                      ; $5c35: $26 $3e
	add  [hl]                                        ; $5c37: $86
	sbc  [hl]                                        ; $5c38: $9e
	ld   h, [hl]                                     ; $5c39: $66
	cp   $95                                         ; $5c3a: $fe $95
	ld   a, a                                        ; $5c3c: $7f
	push af                                          ; $5c3d: $f5
	add  b                                           ; $5c3e: $80
	ld   d, a                                        ; $5c3f: $57
	ld   bc, $6050                                   ; $5c40: $01 $50 $60
	add  b                                           ; $5c43: $80
	ld   h, a                                        ; $5c44: $67
	add  hl, bc                                      ; $5c45: $09
	ld   h, b                                        ; $5c46: $60
	ld   l, c                                        ; $5c47: $69
	ld   l, d                                        ; $5c48: $6a
	ld   c, [hl]                                     ; $5c49: $4e
	ld   l, h                                        ; $5c4a: $6c
	ld   h, h                                        ; $5c4b: $64
	ld   l, h                                        ; $5c4c: $6c
	adc  a                                           ; $5c4d: $8f
	xor  $88                                         ; $5c4e: $ee $88
	add  b                                           ; $5c50: $80
	ld   a, [$0205]                                  ; $5c51: $fa $05 $02
	nop                                              ; $5c54: $00
	or   $f4                                         ; $5c55: $f6 $f4
	ld   bc, $85fe                                   ; $5c57: $01 $fe $85
	nop                                              ; $5c5a: $00
	nop                                              ; $5c5b: $00

jr_014_5c5c:
	ret  nz                                          ; $5c5c: $c0

	add  b                                           ; $5c5d: $80
	ccf                                              ; $5c5e: $3f
	nop                                              ; $5c5f: $00
	cp   a                                           ; $5c60: $bf
	add  b                                           ; $5c61: $80
	ccf                                              ; $5c62: $3f
	ld   bc, $5f1f                                   ; $5c63: $01 $1f $5f
	add  b                                           ; $5c66: $80
	rra                                              ; $5c67: $1f
	ld   bc, $2e0e                                   ; $5c68: $01 $0e $2e
	add  b                                           ; $5c6b: $80
	ld   hl, $3f00                                   ; $5c6c: $21 $00 $3f
	add  b                                           ; $5c6f: $80
	rra                                              ; $5c70: $1f
	rrca                                             ; $5c71: $0f
	rst  JumpTable                                         ; $5c72: $df
	sbc  $df                                         ; $5c73: $de $df
	cp   h                                           ; $5c75: $bc
	cp   a                                           ; $5c76: $bf
	cp   h                                           ; $5c77: $bc
	cp   a                                           ; $5c78: $bf
	ld   a, h                                        ; $5c79: $7c
	ld   a, a                                        ; $5c7a: $7f
	db   $fc                                         ; $5c7b: $fc
	rst  $38                                         ; $5c7c: $ff
	db   $fc                                         ; $5c7d: $fc
	rst  $38                                         ; $5c7e: $ff
	call c, $1eef                                    ; $5c7f: $dc $ef $1e
	add  c                                           ; $5c82: $81
	rst  $28                                         ; $5c83: $ef
	add  b                                           ; $5c84: $80
	rst  $30                                         ; $5c85: $f7
	ld   a, [bc]                                     ; $5c86: $0a
	db   $db                                         ; $5c87: $db
	ei                                               ; $5c88: $fb
	db   $ed                                         ; $5c89: $ed
	db   $fd                                         ; $5c8a: $fd
	or   $fe                                         ; $5c8b: $f6 $fe
	ld   hl, sp-$09                                  ; $5c8d: $f8 $f7
	ld   a, a                                        ; $5c8f: $7f
	ei                                               ; $5c90: $fb
	sub  b                                           ; $5c91: $90
	add  c                                           ; $5c92: $81
	ld   hl, sp+$1e                                  ; $5c93: $f8 $1e
	db   $fc                                         ; $5c95: $fc
	ldh  a, [$d4]                                    ; $5c96: $f0 $d4
	ldh  a, [$b2]                                    ; $5c98: $f0 $b2
	db   $ec                                         ; $5c9a: $ec
	ld   l, l                                        ; $5c9b: $6d
	ld   e, $1f                                      ; $5c9c: $1e $1f
	db   $fc                                         ; $5c9e: $fc
	cp   $f0                                         ; $5c9f: $fe $f0
	di                                               ; $5ca1: $f3
	nop                                              ; $5ca2: $00
	ld   a, $00                                      ; $5ca3: $3e $00
	ld   h, b                                        ; $5ca5: $60
	nop                                              ; $5ca6: $00
	jr   nc, jr_014_5ca9                             ; $5ca7: $30 $00

jr_014_5ca9:
	jr   jr_014_5cab                                 ; $5ca9: $18 $00

jr_014_5cab:
	inc  c                                           ; $5cab: $0c
	nop                                              ; $5cac: $00
	ld   b, $00                                      ; $5cad: $06 $00
	ld   a, h                                        ; $5caf: $7c
	nop                                              ; $5cb0: $00
	ld   hl, sp-$0d                                  ; $5cb1: $f8 $f3
	ei                                               ; $5cb3: $fb
	add  b                                           ; $5cb4: $80
	and  $07                                         ; $5cb5: $e6 $07
	db   $e4                                         ; $5cb7: $e4
	or   $ca                                         ; $5cb8: $f6 $ca
	adc  $c6                                         ; $5cba: $ce $c6
	call z, $fccd                                    ; $5cbc: $cc $cd $fc
	add  c                                           ; $5cbf: $81
	sbc  h                                           ; $5cc0: $9c
	nop                                              ; $5cc1: $00
	ld   [hl], $80                                   ; $5cc2: $36 $80
	ld   [$8800], sp                                 ; $5cc4: $08 $00 $88
	add  b                                           ; $5cc7: $80
	ld   [$1086], sp                                 ; $5cc8: $08 $86 $10
	add  b                                           ; $5ccb: $80
	jr   nz, jr_014_5c5c                             ; $5ccc: $20 $8e

	nop                                              ; $5cce: $00
	dec  b                                           ; $5ccf: $05
	ld   sp, $200e                                   ; $5cd0: $31 $0e $20
	db   $10                                         ; $5cd3: $10
	ld   e, $11                                      ; $5cd4: $1e $11
	add  h                                           ; $5cd6: $84
	db   $10                                         ; $5cd7: $10
	add  d                                           ; $5cd8: $82
	ld   [$f302], sp                                 ; $5cd9: $08 $02 $f3
	db   $ec                                         ; $5cdc: $ec
	push hl                                          ; $5cdd: $e5
	add  b                                           ; $5cde: $80
	db   $f4                                         ; $5cdf: $f4
	rlca                                             ; $5ce0: $07
	ld   [hl], e                                     ; $5ce1: $73
	ld   [hl], h                                     ; $5ce2: $74
	ld   a, c                                        ; $5ce3: $79
	ld   a, [$7d3c]                                  ; $5ce4: $fa $3c $7d
	ld   e, $3e                                      ; $5ce7: $1e $3e
	add  b                                           ; $5ce9: $80
	ld   c, $01                                      ; $5cea: $0e $01
	rla                                              ; $5cec: $17
	scf                                              ; $5ced: $37
	add  b                                           ; $5cee: $80
	ccf                                              ; $5cef: $3f
	inc  d                                           ; $5cf0: $14
	rst  $38                                         ; $5cf1: $ff
	ld   a, a                                        ; $5cf2: $7f
	rst  $38                                         ; $5cf3: $ff
	rra                                              ; $5cf4: $1f
	rst  $38                                         ; $5cf5: $ff
	adc  a                                           ; $5cf6: $8f
	rst  $38                                         ; $5cf7: $ff
	rst  ToBoot                                         ; $5cf8: $c7
	ld   a, a                                        ; $5cf9: $7f
	ld   h, e                                        ; $5cfa: $63
	ld   a, a                                        ; $5cfb: $7f
	pop  af                                          ; $5cfc: $f1
	ccf                                              ; $5cfd: $3f
	cp   l                                           ; $5cfe: $bd
	inc  bc                                          ; $5cff: $03
	adc  e                                           ; $5d00: $8b
	add  e                                           ; $5d01: $83
	ld   b, a                                        ; $5d02: $47
	ld   b, l                                        ; $5d03: $45
	and  a                                           ; $5d04: $a7
	and  [hl]                                        ; $5d05: $a6
	add  b                                           ; $5d06: $80
	rst  ToBoot                                         ; $5d07: $c7
	ld   b, $d3                                      ; $5d08: $06 $d3
	jp   $1b3b                                       ; $5d0a: $c3 $3b $1b


	ld   a, e                                        ; $5d0d: $7b
	dec  sp                                          ; $5d0e: $3b
	cp   [hl]                                        ; $5d0f: $be
	add  c                                           ; $5d10: $81
	cp   $12                                         ; $5d11: $fe $12
	sbc  $fe                                         ; $5d13: $de $fe
	rst  $28                                         ; $5d15: $ef
	rst  $38                                         ; $5d16: $ff
	ei                                               ; $5d17: $fb
	ld   a, a                                        ; $5d18: $7f
	pop  af                                          ; $5d19: $f1
	or   a                                           ; $5d1a: $b7
	ldh  [c], a                                      ; $5d1b: $e2
	rst  JumpTable                                         ; $5d1c: $df
	db   $eb                                         ; $5d1d: $eb
	rst  $20                                         ; $5d1e: $e7
	ldh  [c], a                                      ; $5d1f: $e2
	cp   $e7                                         ; $5d20: $fe $e7
	rst  $38                                         ; $5d22: $ff
	ld   hl, sp-$01                                  ; $5d23: $f8 $ff
	ld   a, b                                        ; $5d25: $78
	add  c                                           ; $5d26: $81
	ld   a, a                                        ; $5d27: $7f
	ld   [$beb5], sp                                 ; $5d28: $08 $b5 $be
	ld   c, h                                        ; $5d2b: $4c
	pop  bc                                          ; $5d2c: $c1
	add  c                                           ; $5d2d: $81
	rst  $38                                         ; $5d2e: $ff
	ld   e, l                                        ; $5d2f: $5d
	ld   l, [hl]                                     ; $5d30: $6e
	ld   c, $80                                      ; $5d31: $0e $80
	ld   l, $0c                                      ; $5d33: $2e $0c
	sbc  $5f                                         ; $5d35: $de $5f
	rst  $38                                         ; $5d37: $ff
	cp   c                                           ; $5d38: $b9
	ld   a, a                                        ; $5d39: $7f
	ld   a, d                                        ; $5d3a: $7a
	ei                                               ; $5d3b: $fb
	ld   a, [hl-]                                    ; $5d3c: $3a
	cp   a                                           ; $5d3d: $bf
	cp   d                                           ; $5d3e: $ba
	db   $fc                                         ; $5d3f: $fc
	scf                                              ; $5d40: $37
	ldh  a, [$83]                                    ; $5d41: $f0 $83
	rst  $38                                         ; $5d43: $ff
	ld   bc, $fe7e                                   ; $5d44: $01 $7e $fe
	add  c                                           ; $5d47: $81
	cp   [hl]                                        ; $5d48: $be
	nop                                              ; $5d49: $00
	ld   a, $81                                      ; $5d4a: $3e $81
	ld   a, a                                        ; $5d4c: $7f
	dec  b                                           ; $5d4d: $05
	cp   b                                           ; $5d4e: $b8
	rlca                                             ; $5d4f: $07
	ld   sp, hl                                      ; $5d50: $f9
	cp   c                                           ; $5d51: $b9
	or   $76                                         ; $5d52: $f6 $76
	add  d                                           ; $5d54: $82

jr_014_5d55:
	ei                                               ; $5d55: $fb
	add  b                                           ; $5d56: $80
	ld   a, l                                        ; $5d57: $7d
	add  b                                           ; $5d58: $80
	add  [hl]                                        ; $5d59: $86
	dec  b                                           ; $5d5a: $05
	jr   jr_014_5d55                                 ; $5d5b: $18 $f8

	cpl                                              ; $5d5d: $2f
	rst  JumpTable                                         ; $5d5e: $df
	rst  $28                                         ; $5d5f: $ef
	rst  $38                                         ; $5d60: $ff
	add  b                                           ; $5d61: $80
	nop                                              ; $5d62: $00
	add  b                                           ; $5d63: $80
	rst  $38                                         ; $5d64: $ff
	add  b                                           ; $5d65: $80
	ret  nz                                          ; $5d66: $c0

	add  b                                           ; $5d67: $80
	sbc  b                                           ; $5d68: $98
	add  hl, bc                                      ; $5d69: $09
	ld   h, $3e                                      ; $5d6a: $26 $3e
	ld   bc, $061f                                   ; $5d6c: $01 $1f $06
	rst  $38                                         ; $5d6f: $ff
	ld   a, a                                        ; $5d70: $7f
	db   $fc                                         ; $5d71: $fc
	ld   a, e                                        ; $5d72: $7b
	rlca                                             ; $5d73: $07
	add  b                                           ; $5d74: $80
	rst  $38                                         ; $5d75: $ff
	add  b                                           ; $5d76: $80
	ld   a, a                                        ; $5d77: $7f
	add  b                                           ; $5d78: $80
	ld   a, $80                                      ; $5d79: $3e $80
	dec  a                                           ; $5d7b: $3d
	add  b                                           ; $5d7c: $80
	ld   e, l                                        ; $5d7d: $5d
	db   $10                                         ; $5d7e: $10
	rrca                                             ; $5d7f: $0f
	ret  nz                                          ; $5d80: $c0

	xor  b                                           ; $5d81: $a8
	ld   h, b                                        ; $5d82: $60
	add  $d8                                         ; $5d83: $c6 $d8
	sbc  c                                           ; $5d85: $99
	cp   [hl]                                        ; $5d86: $be
	jr   nc, jr_014_5e08                             ; $5d87: $30 $7f

	and  b                                           ; $5d89: $a0
	rst  $38                                         ; $5d8a: $ff
	add  $ef                                         ; $5d8b: $c6 $ef
	add  sp, -$11                                    ; $5d8d: $e8 $ef
	rst  $38                                         ; $5d8f: $ff
	add  e                                           ; $5d90: $83
	nop                                              ; $5d91: $00
	ld   a, [bc]                                     ; $5d92: $0a
	add  b                                           ; $5d93: $80
	nop                                              ; $5d94: $00
	ld   h, b                                        ; $5d95: $60
	add  b                                           ; $5d96: $80
	db   $10                                         ; $5d97: $10
	ldh  [$08], a                                    ; $5d98: $e0 $08
	ldh  [$80], a                                    ; $5d9a: $e0 $80
	ldh  a, [$2a]                                    ; $5d9c: $f0 $2a
	add  c                                           ; $5d9e: $81
	sbc  h                                           ; $5d9f: $9c
	ld   bc, $9a98                                   ; $5da0: $01 $98 $9a
	add  b                                           ; $5da3: $80
	sbc  b                                           ; $5da4: $98
	nop                                              ; $5da5: $00
	ld   hl, sp-$7d                                  ; $5da6: $f8 $83
	jr   c, jr_014_5dac                              ; $5da8: $38 $02

	jr   nc, jr_014_5de0                             ; $5daa: $30 $34

jr_014_5dac:
	ld   e, b                                        ; $5dac: $58
	add  l                                           ; $5dad: $85
	jr   nz, @-$78                                   ; $5dae: $20 $86

	ld   b, b                                        ; $5db0: $40
	adc  [hl]                                        ; $5db1: $8e
	nop                                              ; $5db2: $00
	add  h                                           ; $5db3: $84
	ld   [$0486], sp                                 ; $5db4: $08 $86 $04
	add  b                                           ; $5db7: $80
	ld   [bc], a                                     ; $5db8: $02
	ld   [bc], a                                     ; $5db9: $02
	rra                                              ; $5dba: $1f
	inc  de                                          ; $5dbb: $13
	rlca                                             ; $5dbc: $07
	add  c                                           ; $5dbd: $81
	dec  b                                           ; $5dbe: $05
	ld   bc, $0a03                                   ; $5dbf: $01 $03 $0a
	add  b                                           ; $5dc2: $80
	ld   [bc], a                                     ; $5dc3: $02
	add  b                                           ; $5dc4: $80
	inc  bc                                          ; $5dc5: $03
	nop                                              ; $5dc6: $00
	ld   bc, $0581                                   ; $5dc7: $01 $81 $05
	inc  d                                           ; $5dca: $14
	and  c                                           ; $5dcb: $a1
	ccf                                              ; $5dcc: $3f
	ld   c, h                                        ; $5dcd: $4c
	sbc  a                                           ; $5dce: $9f
	add  [hl]                                        ; $5dcf: $86
	sbc  a                                           ; $5dd0: $9f
	or   e                                           ; $5dd1: $b3
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5dd2: $cf
	ret                                              ; $5dd3: $c9


	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5dd4: $cf
	call z, Call_014_5e4f                            ; $5dd5: $cc $4f $5e
	ld   h, a                                        ; $5dd8: $67
	rst  $20                                         ; $5dd9: $e7
	and  a                                           ; $5dda: $a7
	sub  e                                           ; $5ddb: $93
	dec  sp                                          ; $5ddc: $3b
	reti                                             ; $5ddd: $d9


	sbc  c                                           ; $5dde: $99
	ld   c, b                                        ; $5ddf: $48

jr_014_5de0:
	add  c                                           ; $5de0: $81
	ld   [$3880], sp                                 ; $5de1: $08 $80 $38
	rlca                                             ; $5de4: $07
	ret  c                                           ; $5de5: $d8

	sbc  b                                           ; $5de6: $98
	jp   hl                                          ; $5de7: $e9


	ret  z                                           ; $5de8: $c8

	di                                               ; $5de9: $f3
	pop  hl                                          ; $5dea: $e1
	ld   a, [bc]                                     ; $5deb: $0a
	ld   sp, hl                                      ; $5dec: $f9
	add  b                                           ; $5ded: $80
	xor  $80                                         ; $5dee: $ee $80
	sbc  a                                           ; $5df0: $9f
	inc  d                                           ; $5df1: $14
	dec  e                                           ; $5df2: $1d
	rra                                              ; $5df3: $1f
	jr   c, @+$41                                    ; $5df4: $38 $3f

	cp   c                                           ; $5df6: $b9
	ccf                                              ; $5df7: $3f
	add  hl, sp                                      ; $5df8: $39
	ccf                                              ; $5df9: $3f

jr_014_5dfa:
	add  hl, sp                                      ; $5dfa: $39
	ccf                                              ; $5dfb: $3f
	inc  bc                                          ; $5dfc: $03
	rst  $38                                         ; $5dfd: $ff
	ld   a, a                                        ; $5dfe: $7f
	nop                                              ; $5dff: $00
	ldh  a, [c]                                      ; $5e00: $f2
	cp   $4c                                         ; $5e01: $fe $4c
	rst  $38                                         ; $5e03: $ff
	and  c                                           ; $5e04: $a1
	rst  JumpTable                                         ; $5e05: $df
	ldh  [c], a                                      ; $5e06: $e2
	add  b                                           ; $5e07: $80

jr_014_5e08:
	db   $fd                                         ; $5e08: $fd
	add  c                                           ; $5e09: $81
	db   $fc                                         ; $5e0a: $fc
	inc  bc                                          ; $5e0b: $03
	db   $fd                                         ; $5e0c: $fd
	ldh  [c], a                                      ; $5e0d: $e2
	sbc  $1e                                         ; $5e0e: $de $1e
	add  b                                           ; $5e10: $80
	ld   a, h                                        ; $5e11: $7c
	add  b                                           ; $5e12: $80
	cp   b                                           ; $5e13: $b8
	ld   [$b030], sp                                 ; $5e14: $08 $30 $b0
	add  b                                           ; $5e17: $80
	ret  nz                                          ; $5e18: $c0

	ld   e, b                                        ; $5e19: $58
	ret  c                                           ; $5e1a: $d8

	inc  e                                           ; $5e1b: $1c
	call c, $8080                                    ; $5e1c: $dc $80 $80
	cp   a                                           ; $5e1f: $bf
	add  c                                           ; $5e20: $81
	rst  JumpTable                                         ; $5e21: $df
	nop                                              ; $5e22: $00
	ld   e, a                                        ; $5e23: $5f
	add  h                                           ; $5e24: $84
	rst  JumpTable                                         ; $5e25: $df
	nop                                              ; $5e26: $00
	cp   a                                           ; $5e27: $bf

jr_014_5e28:
	add  b                                           ; $5e28: $80
	ld   a, a                                        ; $5e29: $7f
	ld   [bc], a                                     ; $5e2a: $02
	ld   a, $ff                                      ; $5e2b: $3e $ff
	cp   $8b                                         ; $5e2d: $fe $8b
	rst  $38                                         ; $5e2f: $ff
	ld   a, [bc]                                     ; $5e30: $0a
	ld   a, e                                        ; $5e31: $7b
	add  a                                           ; $5e32: $87
	jp   $92e1                                       ; $5e33: $c3 $e1 $92


	cp   e                                           ; $5e36: $bb
	sub  [hl]                                        ; $5e37: $96
	sbc  [hl]                                        ; $5e38: $9e
	ld   b, b                                        ; $5e39: $40
	pop  bc                                          ; $5e3a: $c1
	add  c                                           ; $5e3b: $81
	add  c                                           ; $5e3c: $81
	rst  $38                                         ; $5e3d: $ff
	add  b                                           ; $5e3e: $80
	ret  nz                                          ; $5e3f: $c0

	ld   bc, $5ca3                                   ; $5e40: $01 $a3 $5c
	add  b                                           ; $5e43: $80
	ld   h, e                                        ; $5e44: $63
	nop                                              ; $5e45: $00
	nop                                              ; $5e46: $00

jr_014_5e47:
	add  b                                           ; $5e47: $80
	ld   a, a                                        ; $5e48: $7f
	add  e                                           ; $5e49: $83
	rst  $38                                         ; $5e4a: $ff
	add  b                                           ; $5e4b: $80
	ld   hl, sp-$80                                  ; $5e4c: $f8 $80
	nop                                              ; $5e4e: $00

Call_014_5e4f:
	ld   bc, $ef10                                   ; $5e4f: $01 $10 $ef
	add  b                                           ; $5e52: $80
	rrca                                             ; $5e53: $0f
	inc  bc                                          ; $5e54: $03
	jr   nc, jr_014_5e47                             ; $5e55: $30 $f0

	ret  nz                                          ; $5e57: $c0

	rst  $38                                         ; $5e58: $ff
	add  b                                           ; $5e59: $80
	cp   $80                                         ; $5e5a: $fe $80
	ldh  [$82], a                                    ; $5e5c: $e0 $82
	nop                                              ; $5e5e: $00
	nop                                              ; $5e5f: $00
	jr   @-$7d                                       ; $5e60: $18 $81

	ldh  a, [$03]                                    ; $5e62: $f0 $03
	jr   jr_014_5e66                                 ; $5e64: $18 $00

jr_014_5e66:
	jr   nc, jr_014_5e28                             ; $5e66: $30 $c0

	add  [hl]                                        ; $5e68: $86
	nop                                              ; $5e69: $00
	nop                                              ; $5e6a: $00
	ld   c, h                                        ; $5e6b: $4c
	adc  e                                           ; $5e6c: $8b
	inc  [hl]                                        ; $5e6d: $34
	inc  bc                                          ; $5e6e: $03
	inc  a                                           ; $5e6f: $3c
	jr   c, jr_014_5eae                              ; $5e70: $38 $3c

	ld   b, b                                        ; $5e72: $40
	add  b                                           ; $5e73: $80
	ld   b, e                                        ; $5e74: $43
	add  d                                           ; $5e75: $82
	ld   b, b                                        ; $5e76: $40
	add  [hl]                                        ; $5e77: $86
	jr   nz, jr_014_5dfa                             ; $5e78: $20 $80

	nop                                              ; $5e7a: $00
	add  b                                           ; $5e7b: $80
	ret  nz                                          ; $5e7c: $c0

	add  b                                           ; $5e7d: $80
	pop  hl                                          ; $5e7e: $e1
	add  b                                           ; $5e7f: $80
	jr   nc, jr_014_5e87                             ; $5e80: $30 $05

	ld   b, $00                                      ; $5e82: $06 $00
	rrca                                             ; $5e84: $0f
	ld   b, $1e                                      ; $5e85: $06 $1e

jr_014_5e87:
	ld   c, $80                                      ; $5e87: $0e $80
	rrca                                             ; $5e89: $0f
	nop                                              ; $5e8a: $00
	dec  a                                           ; $5e8b: $3d
	add  b                                           ; $5e8c: $80
	ld   [hl+], a                                    ; $5e8d: $22
	inc  bc                                          ; $5e8e: $03
	ld   h, d                                        ; $5e8f: $62
	ld   [hl+], a                                    ; $5e90: $22
	ldh  [c], a                                      ; $5e91: $e2
	ld   [hl], c                                     ; $5e92: $71
	add  l                                           ; $5e93: $85
	pop  af                                          ; $5e94: $f1
	add  b                                           ; $5e95: $80
	ldh  a, [rTIMA]                                  ; $5e96: $f0 $05
	inc  bc                                          ; $5e98: $03
	nop                                              ; $5e99: $00
	ld   [bc], a                                     ; $5e9a: $02
	nop                                              ; $5e9b: $00
	ldh  a, [rP1]                                    ; $5e9c: $f0 $00
	add  b                                           ; $5e9e: $80
	ldh  [$0a], a                                    ; $5e9f: $e0 $0a
	ld   [$1d00], sp                                 ; $5ea1: $08 $00 $1d
	jr   @+$40                                       ; $5ea4: $18 $3e

	inc  a                                           ; $5ea6: $3c
	ld   a, c                                        ; $5ea7: $79
	ld   a, b                                        ; $5ea8: $78
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5ea9: $cf
	rst  ToBoot                                         ; $5eaa: $c7
	rst  $38                                         ; $5eab: $ff
	add  c                                           ; $5eac: $81
	di                                               ; $5ead: $f3

jr_014_5eae:
	nop                                              ; $5eae: $00
	rst  $38                                         ; $5eaf: $ff
	add  c                                           ; $5eb0: $81
	ld   sp, hl                                      ; $5eb1: $f9
	nop                                              ; $5eb2: $00
	ld   a, a                                        ; $5eb3: $7f
	add  e                                           ; $5eb4: $83
	ld   a, h                                        ; $5eb5: $7c
	ld   bc, $f30d                                   ; $5eb6: $01 $0d $f3
	adc  h                                           ; $5eb9: $8c
	rst  $38                                         ; $5eba: $ff
	jr   @+$47                                       ; $5ebb: $18 $45

	ccf                                              ; $5ebd: $3f
	ld   a, [hl-]                                    ; $5ebe: $3a
	ccf                                              ; $5ebf: $3f
	inc  a                                           ; $5ec0: $3c
	ccf                                              ; $5ec1: $3f
	inc  sp                                          ; $5ec2: $33
	scf                                              ; $5ec3: $37
	rst  $10                                         ; $5ec4: $d7
	sub  a                                           ; $5ec5: $97
	and  $c7                                         ; $5ec6: $e6 $c7
	push bc                                          ; $5ec8: $c5
	rst  ToBoot                                         ; $5ec9: $c7
	db   $f4                                         ; $5eca: $f4
	ldh  [$d3], a                                    ; $5ecb: $e0 $d3
	db   $fc                                         ; $5ecd: $fc
	inc  a                                           ; $5ece: $3c
	db   $fc                                         ; $5ecf: $fc
	ld   a, $fe                                      ; $5ed0: $3e $fe
	add  b                                           ; $5ed2: $80
	sbc  $40                                         ; $5ed3: $de $40
	add  e                                           ; $5ed5: $83
	rst  JumpTable                                         ; $5ed6: $df
	add  b                                           ; $5ed7: $80
	rra                                              ; $5ed8: $1f
	ld   [bc], a                                     ; $5ed9: $02
	ld   c, [hl]                                     ; $5eda: $4e
	rst  JumpTable                                         ; $5edb: $df
	adc  a                                           ; $5edc: $8f
	adc  b                                           ; $5edd: $88
	rst  JumpTable                                         ; $5ede: $df
	nop                                              ; $5edf: $00
	cp   a                                           ; $5ee0: $bf
	add  b                                           ; $5ee1: $80
	cp   h                                           ; $5ee2: $bc
	ld   bc, $f0b0                                   ; $5ee3: $01 $b0 $f0
	add  b                                           ; $5ee6: $80
	ldh  [$82], a                                    ; $5ee7: $e0 $82
	ret  nz                                          ; $5ee9: $c0

	add  d                                           ; $5eea: $82
	add  b                                           ; $5eeb: $80
	add  d                                           ; $5eec: $82
	nop                                              ; $5eed: $00
	ld   c, $ff                                      ; $5eee: $0e $ff
	nop                                              ; $5ef0: $00
	ld   a, $00                                      ; $5ef1: $3e $00
	ld   h, b                                        ; $5ef3: $60
	nop                                              ; $5ef4: $00
	jr   nc, jr_014_5ef7                             ; $5ef5: $30 $00

jr_014_5ef7:
	jr   jr_014_5ef9                                 ; $5ef7: $18 $00

jr_014_5ef9:
	inc  c                                           ; $5ef9: $0c
	nop                                              ; $5efa: $00
	ld   b, $00                                      ; $5efb: $06 $00
	ld   a, h                                        ; $5efd: $7c
	add  c                                           ; $5efe: $81
	nop                                              ; $5eff: $00
	inc  c                                           ; $5f00: $0c
	ld   a, $00                                      ; $5f01: $3e $00
	ld   h, b                                        ; $5f03: $60
	nop                                              ; $5f04: $00
	jr   nc, jr_014_5f07                             ; $5f05: $30 $00

jr_014_5f07:
	jr   jr_014_5f09                                 ; $5f07: $18 $00

jr_014_5f09:
	inc  c                                           ; $5f09: $0c
	nop                                              ; $5f0a: $00
	ld   b, $00                                      ; $5f0b: $06 $00
	ld   a, h                                        ; $5f0d: $7c
	add  c                                           ; $5f0e: $81
	nop                                              ; $5f0f: $00
	inc  c                                           ; $5f10: $0c
	ld   a, $00                                      ; $5f11: $3e $00
	ld   h, b                                        ; $5f13: $60
	nop                                              ; $5f14: $00
	jr   nc, jr_014_5f17                             ; $5f15: $30 $00

jr_014_5f17:
	jr   jr_014_5f19                                 ; $5f17: $18 $00

jr_014_5f19:
	inc  c                                           ; $5f19: $0c
	nop                                              ; $5f1a: $00
	ld   b, $00                                      ; $5f1b: $06 $00
	ld   a, h                                        ; $5f1d: $7c
	add  c                                           ; $5f1e: $81
	nop                                              ; $5f1f: $00
	inc  c                                           ; $5f20: $0c
	ld   a, $00                                      ; $5f21: $3e $00
	ld   h, b                                        ; $5f23: $60
	nop                                              ; $5f24: $00
	jr   nc, jr_014_5f27                             ; $5f25: $30 $00

jr_014_5f27:
	jr   jr_014_5f29                                 ; $5f27: $18 $00

jr_014_5f29:
	inc  c                                           ; $5f29: $0c
	nop                                              ; $5f2a: $00
	ld   b, $00                                      ; $5f2b: $06 $00
	ld   a, h                                        ; $5f2d: $7c
	add  c                                           ; $5f2e: $81
	nop                                              ; $5f2f: $00
	ld   c, $3e                                      ; $5f30: $0e $3e
	nop                                              ; $5f32: $00
	ld   h, b                                        ; $5f33: $60
	nop                                              ; $5f34: $00
	jr   nc, jr_014_5f37                             ; $5f35: $30 $00

jr_014_5f37:
	jr   jr_014_5f39                                 ; $5f37: $18 $00

jr_014_5f39:
	inc  c                                           ; $5f39: $0c
	nop                                              ; $5f3a: $00
	ld   b, $00                                      ; $5f3b: $06 $00
	ld   a, h                                        ; $5f3d: $7c
	nop                                              ; $5f3e: $00
	cp   e                                           ; $5f3f: $bb
	adc  l                                           ; $5f40: $8d
	jr   c, jr_014_5f43                              ; $5f41: $38 $00

jr_014_5f43:
	ld   e, h                                        ; $5f43: $5c
	adc  l                                           ; $5f44: $8d
	jr   nz, jr_014_5f47                             ; $5f45: $20 $00

jr_014_5f47:
	ld   [$0781], sp                                 ; $5f47: $08 $81 $07
	ld   bc, $030b                                   ; $5f4a: $01 $0b $03
	add  b                                           ; $5f4d: $80
	ld   [bc], a                                     ; $5f4e: $02
	ld   bc, $0038                                   ; $5f4f: $01 $38 $00
	add  b                                           ; $5f52: $80
	rra                                              ; $5f53: $1f
	nop                                              ; $5f54: $00
	ld   a, a                                        ; $5f55: $7f
	add  c                                           ; $5f56: $81
	ccf                                              ; $5f57: $3f
	nop                                              ; $5f58: $00
	add  a                                           ; $5f59: $87
	add  l                                           ; $5f5a: $85
	ld   hl, sp+$00                                  ; $5f5b: $f8 $00
	db   $fc                                         ; $5f5d: $fc
	add  l                                           ; $5f5e: $85
	ld   a, h                                        ; $5f5f: $7c
	ld   a, [bc]                                     ; $5f60: $0a
	adc  [hl]                                        ; $5f61: $8e
	ldh  a, [$e2]                                    ; $5f62: $f0 $e2
	ldh  [$c5], a                                    ; $5f64: $e0 $c5
	ret  nz                                          ; $5f66: $c0

	adc  b                                           ; $5f67: $88
	add  b                                           ; $5f68: $80
	inc  c                                           ; $5f69: $0c
	nop                                              ; $5f6a: $00
	ei                                               ; $5f6b: $fb
	add  c                                           ; $5f6c: $81
	ld   hl, sp+$01                                  ; $5f6d: $f8 $01
	pop  af                                          ; $5f6f: $f1
	ldh  a, [$80]                                    ; $5f70: $f0 $80
	ld   a, [hl]                                     ; $5f72: $7e
	nop                                              ; $5f73: $00
	ld   a, $81                                      ; $5f74: $3e $81
	cp   [hl]                                        ; $5f76: $be
	adc  b                                           ; $5f77: $88
	ccf                                              ; $5f78: $3f
	add  h                                           ; $5f79: $84
	ld   a, a                                        ; $5f7a: $7f
	nop                                              ; $5f7b: $00
	rst  $38                                         ; $5f7c: $ff
	add  e                                           ; $5f7d: $83
	ccf                                              ; $5f7e: $3f
	nop                                              ; $5f7f: $00
	rst  $38                                         ; $5f80: $ff
	add  c                                           ; $5f81: $81
	sbc  a                                           ; $5f82: $9f
	ld   bc, $f02f                                   ; $5f83: $01 $2f $f0
	adc  h                                           ; $5f86: $8c
	rst  $38                                         ; $5f87: $ff
	dec  b                                           ; $5f88: $05
	ccf                                              ; $5f89: $3f
	ld   e, $9f                                      ; $5f8a: $1e $9f
	add  b                                           ; $5f8c: $80
	cp   $c0                                         ; $5f8d: $fe $c0
	add  b                                           ; $5f8f: $80
	ei                                               ; $5f90: $fb
	add  b                                           ; $5f91: $80
	db   $fd                                         ; $5f92: $fd
	add  b                                           ; $5f93: $80
	cp   $82                                         ; $5f94: $fe $82
	rst  $38                                         ; $5f96: $ff
	inc  bc                                          ; $5f97: $03
	ldh  a, [rSVBK]                                  ; $5f98: $f0 $70
	add  b                                           ; $5f9a: $80
	nop                                              ; $5f9b: $00
	add  b                                           ; $5f9c: $80
	ld   b, b                                        ; $5f9d: $40
	add  b                                           ; $5f9e: $80

jr_014_5f9f:
	and  b                                           ; $5f9f: $a0
	add  b                                           ; $5fa0: $80
	ret  nc                                          ; $5fa1: $d0

	add  b                                           ; $5fa2: $80
	add  sp, -$80                                    ; $5fa3: $e8 $80
	ld   [hl], h                                     ; $5fa5: $74
	add  b                                           ; $5fa6: $80
	cp   d                                           ; $5fa7: $ba
	ld   c, $ff                                      ; $5fa8: $0e $ff
	nop                                              ; $5faa: $00
	ld   a, $00                                      ; $5fab: $3e $00
	ld   h, b                                        ; $5fad: $60
	nop                                              ; $5fae: $00
	jr   nc, jr_014_5fb1                             ; $5faf: $30 $00

jr_014_5fb1:
	jr   jr_014_5fb3                                 ; $5fb1: $18 $00

jr_014_5fb3:
	inc  c                                           ; $5fb3: $0c
	nop                                              ; $5fb4: $00
	ld   b, $00                                      ; $5fb5: $06 $00
	ld   a, h                                        ; $5fb7: $7c
	add  c                                           ; $5fb8: $81
	nop                                              ; $5fb9: $00
	inc  c                                           ; $5fba: $0c
	ld   a, $00                                      ; $5fbb: $3e $00

jr_014_5fbd:
	ld   h, b                                        ; $5fbd: $60
	nop                                              ; $5fbe: $00
	jr   nc, jr_014_5fc1                             ; $5fbf: $30 $00

jr_014_5fc1:
	jr   jr_014_5fc3                                 ; $5fc1: $18 $00

jr_014_5fc3:
	inc  c                                           ; $5fc3: $0c
	nop                                              ; $5fc4: $00
	ld   b, $00                                      ; $5fc5: $06 $00
	ld   a, h                                        ; $5fc7: $7c
	add  c                                           ; $5fc8: $81
	nop                                              ; $5fc9: $00
	inc  c                                           ; $5fca: $0c
	ld   a, $00                                      ; $5fcb: $3e $00
	ld   h, b                                        ; $5fcd: $60
	nop                                              ; $5fce: $00
	jr   nc, jr_014_5fd1                             ; $5fcf: $30 $00

jr_014_5fd1:
	jr   jr_014_5fd3                                 ; $5fd1: $18 $00

jr_014_5fd3:
	inc  c                                           ; $5fd3: $0c
	nop                                              ; $5fd4: $00
	ld   b, $00                                      ; $5fd5: $06 $00
	ld   a, h                                        ; $5fd7: $7c
	add  c                                           ; $5fd8: $81
	nop                                              ; $5fd9: $00
	inc  c                                           ; $5fda: $0c
	ld   a, $00                                      ; $5fdb: $3e $00
	ld   h, b                                        ; $5fdd: $60
	nop                                              ; $5fde: $00
	jr   nc, jr_014_5fe1                             ; $5fdf: $30 $00

jr_014_5fe1:
	jr   jr_014_5fe3                                 ; $5fe1: $18 $00

jr_014_5fe3:
	inc  c                                           ; $5fe3: $0c
	nop                                              ; $5fe4: $00
	ld   b, $00                                      ; $5fe5: $06 $00
	ld   a, h                                        ; $5fe7: $7c
	add  c                                           ; $5fe8: $81
	nop                                              ; $5fe9: $00
	inc  c                                           ; $5fea: $0c
	ld   a, $00                                      ; $5feb: $3e $00
	ld   h, b                                        ; $5fed: $60
	nop                                              ; $5fee: $00
	jr   nc, jr_014_5ff1                             ; $5fef: $30 $00

jr_014_5ff1:
	jr   jr_014_5ff3                                 ; $5ff1: $18 $00

jr_014_5ff3:
	inc  c                                           ; $5ff3: $0c
	nop                                              ; $5ff4: $00
	ld   b, $00                                      ; $5ff5: $06 $00
	ld   a, h                                        ; $5ff7: $7c
	add  c                                           ; $5ff8: $81
	nop                                              ; $5ff9: $00
	ld   c, $3e                                      ; $5ffa: $0e $3e
	nop                                              ; $5ffc: $00
	ld   h, b                                        ; $5ffd: $60
	nop                                              ; $5ffe: $00
	jr   nc, jr_014_6001                             ; $5fff: $30 $00

jr_014_6001:
	jr   jr_014_6003                                 ; $6001: $18 $00

jr_014_6003:
	inc  c                                           ; $6003: $0c
	nop                                              ; $6004: $00
	ld   b, $00                                      ; $6005: $06 $00
	ld   a, h                                        ; $6007: $7c
	nop                                              ; $6008: $00
	cp   c                                           ; $6009: $b9
	add  c                                           ; $600a: $81
	ld   a, [hl-]                                    ; $600b: $3a
	nop                                              ; $600c: $00
	ld   a, $87                                      ; $600d: $3e $87
	inc  a                                           ; $600f: $3c
	add  b                                           ; $6010: $80
	dec  a                                           ; $6011: $3d
	nop                                              ; $6012: $00
	ld   e, [hl]                                     ; $6013: $5e
	add  c                                           ; $6014: $81
	jr   nz, jr_014_5f9f                             ; $6015: $20 $88

	db   $10                                         ; $6017: $10
	ld   [$1013], sp                                 ; $6018: $08 $13 $10
	ld   a, a                                        ; $601b: $7f
	inc  bc                                          ; $601c: $03
	ld   b, a                                        ; $601d: $47
	rlca                                             ; $601e: $07
	scf                                              ; $601f: $37
	rlca                                             ; $6020: $07
	rra                                              ; $6021: $1f
	add  c                                           ; $6022: $81
	rrca                                             ; $6023: $0f
	ld   b, $3e                                      ; $6024: $06 $3e
	ld   e, $7c                                      ; $6026: $1e $7c
	inc  a                                           ; $6028: $3c
	db   $fc                                         ; $6029: $fc
	ld   a, h                                        ; $602a: $7c
	ld   bc, $7e81                                   ; $602b: $01 $81 $7e
	nop                                              ; $602e: $00
	cp   $81                                         ; $602f: $fe $81
	ld   a, $84                                      ; $6031: $3e $84
	ccf                                              ; $6033: $3f
	ld   [bc], a                                     ; $6034: $02
	ld   a, a                                        ; $6035: $7f
	rra                                              ; $6036: $1f
	nop                                              ; $6037: $00
	add  l                                           ; $6038: $85
	jr   nz, jr_014_5fbd                             ; $6039: $20 $82

	db   $10                                         ; $603b: $10
	add  d                                           ; $603c: $82
	sub  b                                           ; $603d: $90
	nop                                              ; $603e: $00
	ld   h, b                                        ; $603f: $60
	add  l                                           ; $6040: $85
	ld   e, a                                        ; $6041: $5f
	add  [hl]                                        ; $6042: $86
	rra                                              ; $6043: $1f
	ld   [bc], a                                     ; $6044: $02
	ld   a, a                                        ; $6045: $7f
	sbc  a                                           ; $6046: $9f
	rst  $38                                         ; $6047: $ff
	add  e                                           ; $6048: $83
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6049: $cf
	nop                                              ; $604a: $00
	rst  $38                                         ; $604b: $ff
	add  l                                           ; $604c: $85
	rst  $20                                         ; $604d: $e7
	ld   c, $08                                      ; $604e: $0e $08
	nop                                              ; $6050: $00
	ld   a, $00                                      ; $6051: $3e $00
	ld   h, b                                        ; $6053: $60
	nop                                              ; $6054: $00
	jr   nc, jr_014_6057                             ; $6055: $30 $00

jr_014_6057:
	jr   jr_014_6059                                 ; $6057: $18 $00

jr_014_6059:
	inc  c                                           ; $6059: $0c
	nop                                              ; $605a: $00
	ld   b, $00                                      ; $605b: $06 $00
	ld   a, h                                        ; $605d: $7c
	add  c                                           ; $605e: $81
	nop                                              ; $605f: $00
	inc  c                                           ; $6060: $0c
	ld   a, $00                                      ; $6061: $3e $00
	ld   h, b                                        ; $6063: $60
	nop                                              ; $6064: $00
	jr   nc, jr_014_6067                             ; $6065: $30 $00

jr_014_6067:
	jr   jr_014_6069                                 ; $6067: $18 $00

jr_014_6069:
	inc  c                                           ; $6069: $0c
	nop                                              ; $606a: $00
	ld   b, $00                                      ; $606b: $06 $00
	ld   a, h                                        ; $606d: $7c
	add  c                                           ; $606e: $81
	nop                                              ; $606f: $00
	inc  c                                           ; $6070: $0c
	ld   a, $00                                      ; $6071: $3e $00
	ld   h, b                                        ; $6073: $60
	nop                                              ; $6074: $00
	jr   nc, jr_014_6077                             ; $6075: $30 $00

jr_014_6077:
	jr   jr_014_6079                                 ; $6077: $18 $00

jr_014_6079:
	inc  c                                           ; $6079: $0c
	nop                                              ; $607a: $00
	ld   b, $00                                      ; $607b: $06 $00
	ld   a, h                                        ; $607d: $7c
	add  c                                           ; $607e: $81

Jump_014_607f:
	nop                                              ; $607f: $00
	inc  c                                           ; $6080: $0c
	ld   a, $00                                      ; $6081: $3e $00
	ld   h, b                                        ; $6083: $60
	nop                                              ; $6084: $00
	jr   nc, jr_014_6087                             ; $6085: $30 $00

jr_014_6087:
	jr   jr_014_6089                                 ; $6087: $18 $00

jr_014_6089:
	inc  c                                           ; $6089: $0c
	nop                                              ; $608a: $00
	ld   b, $00                                      ; $608b: $06 $00
	ld   a, h                                        ; $608d: $7c
	add  c                                           ; $608e: $81
	nop                                              ; $608f: $00
	inc  c                                           ; $6090: $0c
	ld   a, $00                                      ; $6091: $3e $00
	ld   h, b                                        ; $6093: $60
	nop                                              ; $6094: $00
	jr   nc, jr_014_6097                             ; $6095: $30 $00

jr_014_6097:
	jr   jr_014_6099                                 ; $6097: $18 $00

jr_014_6099:
	inc  c                                           ; $6099: $0c
	nop                                              ; $609a: $00
	ld   b, $00                                      ; $609b: $06 $00
	ld   a, h                                        ; $609d: $7c
	add  c                                           ; $609e: $81
	nop                                              ; $609f: $00
	inc  c                                           ; $60a0: $0c
	ld   a, $00                                      ; $60a1: $3e $00
	ld   h, b                                        ; $60a3: $60
	nop                                              ; $60a4: $00
	jr   nc, jr_014_60a7                             ; $60a5: $30 $00

jr_014_60a7:
	jr   jr_014_60a9                                 ; $60a7: $18 $00

jr_014_60a9:
	inc  c                                           ; $60a9: $0c
	nop                                              ; $60aa: $00
	ld   b, $00                                      ; $60ab: $06 $00
	ld   a, h                                        ; $60ad: $7c
	add  c                                           ; $60ae: $81
	nop                                              ; $60af: $00
	inc  c                                           ; $60b0: $0c
	ld   a, $00                                      ; $60b1: $3e $00
	ld   h, b                                        ; $60b3: $60
	nop                                              ; $60b4: $00
	jr   nc, jr_014_60b7                             ; $60b5: $30 $00

jr_014_60b7:
	jr   jr_014_60b9                                 ; $60b7: $18 $00

jr_014_60b9:
	inc  c                                           ; $60b9: $0c
	nop                                              ; $60ba: $00
	ld   b, $00                                      ; $60bb: $06 $00
	ld   a, h                                        ; $60bd: $7c
	add  c                                           ; $60be: $81
	nop                                              ; $60bf: $00
	inc  c                                           ; $60c0: $0c
	ld   a, $00                                      ; $60c1: $3e $00
	ld   h, b                                        ; $60c3: $60
	nop                                              ; $60c4: $00
	jr   nc, jr_014_60c7                             ; $60c5: $30 $00

jr_014_60c7:
	jr   jr_014_60c9                                 ; $60c7: $18 $00

jr_014_60c9:
	inc  c                                           ; $60c9: $0c
	nop                                              ; $60ca: $00
	ld   b, $00                                      ; $60cb: $06 $00
	ld   a, h                                        ; $60cd: $7c
	add  c                                           ; $60ce: $81
	nop                                              ; $60cf: $00
	dec  c                                           ; $60d0: $0d
	ld   a, $00                                      ; $60d1: $3e $00
	ld   h, b                                        ; $60d3: $60
	nop                                              ; $60d4: $00
	jr   nc, jr_014_60d7                             ; $60d5: $30 $00

jr_014_60d7:
	jr   jr_014_60d9                                 ; $60d7: $18 $00

jr_014_60d9:
	inc  c                                           ; $60d9: $0c
	nop                                              ; $60da: $00
	ld   b, $00                                      ; $60db: $06 $00
	ld   a, h                                        ; $60dd: $7c
	nop                                              ; $60de: $00
	db   $10                                         ; $60df: $10
	inc  b                                           ; $60e0: $04
	add  h                                           ; $60e1: $84
	nop                                              ; $60e2: $00
	ld   [$0001], sp                                 ; $60e3: $08 $01 $00
	inc  bc                                          ; $60e6: $03
	ld   bc, $0002                                   ; $60e7: $01 $02 $00
	inc  bc                                          ; $60ea: $03
	ld   bc, $8302                                   ; $60eb: $01 $02 $83
	nop                                              ; $60ee: $00
	nop                                              ; $60ef: $00
	inc  bc                                          ; $60f0: $03
	add  l                                           ; $60f1: $85
	ld   bc, $0a04                                   ; $60f2: $01 $04 $0a
	ld   b, $0b                                      ; $60f5: $06 $0b
	inc  bc                                          ; $60f7: $03
	rlca                                             ; $60f8: $07
	add  c                                           ; $60f9: $81
	nop                                              ; $60fa: $00
	ld   bc, $00ff                                   ; $60fb: $01 $ff $00
	add  b                                           ; $60fe: $80
	rst  $38                                         ; $60ff: $ff
	add  b                                           ; $6100: $80
	nop                                              ; $6101: $00
	add  c                                           ; $6102: $81
	add  b                                           ; $6103: $80
	add  b                                           ; $6104: $80
	add  a                                           ; $6105: $87
	nop                                              ; $6106: $00
	adc  a                                           ; $6107: $8f
	add  b                                           ; $6108: $80
	xor  a                                           ; $6109: $af
	add  b                                           ; $610a: $80
	adc  a                                           ; $610b: $8f
	nop                                              ; $610c: $00
	rrca                                             ; $610d: $0f
	add  h                                           ; $610e: $84
	rra                                              ; $610f: $1f
	add  e                                           ; $6110: $83
	nop                                              ; $6111: $00
	nop                                              ; $6112: $00
	rst  $38                                         ; $6113: $ff
	add  c                                           ; $6114: $81
	nop                                              ; $6115: $00
	ld   bc, $00ff                                   ; $6116: $01 $ff $00
	add  b                                           ; $6119: $80
	rst  $38                                         ; $611a: $ff
	add  b                                           ; $611b: $80
	ld   bc, $0081                                   ; $611c: $01 $81 $00
	add  b                                           ; $611f: $80
	db   $fc                                         ; $6120: $fc
	add  b                                           ; $6121: $80
	ld   hl, sp-$80                                  ; $6122: $f8 $80
	db   $fc                                         ; $6124: $fc
	add  b                                           ; $6125: $80
	cp   $84                                         ; $6126: $fe $84
	ld   hl, sp+$00                                  ; $6128: $f8 $00
	nop                                              ; $612a: $00
	add  b                                           ; $612b: $80
	ld   bc, $0380                                   ; $612c: $01 $80 $03
	nop                                              ; $612f: $00
	rst  $38                                         ; $6130: $ff
	add  e                                           ; $6131: $83
	nop                                              ; $6132: $00
	inc  b                                           ; $6133: $04
	add  b                                           ; $6134: $80
	nop                                              ; $6135: $00
	ret  nz                                          ; $6136: $c0

	add  b                                           ; $6137: $80
	ld   h, b                                        ; $6138: $60
	add  c                                           ; $6139: $81
	ld   b, b                                        ; $613a: $40
	ld   b, $30                                      ; $613b: $06 $30
	jr   nz, jr_014_618f                             ; $613d: $20 $50

	ld   b, b                                        ; $613f: $40
	jr   c, jr_014_6162                              ; $6140: $38 $20

	cp   b                                           ; $6142: $b8
	add  l                                           ; $6143: $85
	add  b                                           ; $6144: $80
	nop                                              ; $6145: $00
	ld   b, b                                        ; $6146: $40
	add  c                                           ; $6147: $81
	nop                                              ; $6148: $00
	ld   [bc], a                                     ; $6149: $02
	adc  b                                           ; $614a: $88
	rlca                                             ; $614b: $07
	dec  bc                                          ; $614c: $0b
	add  c                                           ; $614d: $81
	inc  bc                                          ; $614e: $03
	nop                                              ; $614f: $00
	dec  b                                           ; $6150: $05
	add  e                                           ; $6151: $83
	ld   bc, $0601                                   ; $6152: $01 $01 $06
	ld   [bc], a                                     ; $6155: $02
	add  b                                           ; $6156: $80
	inc  bc                                          ; $6157: $03
	ld   [bc], a                                     ; $6158: $02
	rra                                              ; $6159: $1f
	rlca                                             ; $615a: $07
	dec  e                                           ; $615b: $1d
	add  c                                           ; $615c: $81
	ld   bc, $0300                                   ; $615d: $01 $00 $03
	adc  b                                           ; $6160: $88
	nop                                              ; $6161: $00

jr_014_6162:
	nop                                              ; $6162: $00
	rst  $38                                         ; $6163: $ff
	add  d                                           ; $6164: $82
	ldh  a, [$82]                                    ; $6165: $f0 $82
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6167: $cf
	add  b                                           ; $6168: $80
	inc  bc                                          ; $6169: $03
	add  b                                           ; $616a: $80
	rlca                                             ; $616b: $07
	add  d                                           ; $616c: $82
	sbc  a                                           ; $616d: $9f
	add  b                                           ; $616e: $80
	db   $fc                                         ; $616f: $fc
	add  b                                           ; $6170: $80
	rst  $38                                         ; $6171: $ff
	add  b                                           ; $6172: $80
	ld   a, a                                        ; $6173: $7f
	inc  b                                           ; $6174: $04
	sbc  a                                           ; $6175: $9f
	rra                                              ; $6176: $1f
	ld   b, b                                        ; $6177: $40
	nop                                              ; $6178: $00
	ccf                                              ; $6179: $3f
	add  d                                           ; $617a: $82
	nop                                              ; $617b: $00
	nop                                              ; $617c: $00
	rst  $38                                         ; $617d: $ff
	add  d                                           ; $617e: $82
	rra                                              ; $617f: $1f
	add  b                                           ; $6180: $80
	rst  $38                                         ; $6181: $ff
	add  b                                           ; $6182: $80
	db   $fc                                         ; $6183: $fc
	add  b                                           ; $6184: $80
	db   $e4                                         ; $6185: $e4
	add  b                                           ; $6186: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6187: $cf
	add  d                                           ; $6188: $82
	rst  $38                                         ; $6189: $ff
	add  b                                           ; $618a: $80
	sbc  a                                           ; $618b: $9f
	add  d                                           ; $618c: $82
	rst  $38                                         ; $618d: $ff
	add  b                                           ; $618e: $80

jr_014_618f:
	cp   $02                                         ; $618f: $fe $02
	inc  bc                                          ; $6191: $03
	nop                                              ; $6192: $00
	db   $fc                                         ; $6193: $fc
	add  c                                           ; $6194: $81
	nop                                              ; $6195: $00
	nop                                              ; $6196: $00
	add  b                                           ; $6197: $80
	add  e                                           ; $6198: $83
	nop                                              ; $6199: $00
	nop                                              ; $619a: $00
	ret  nz                                          ; $619b: $c0

	add  e                                           ; $619c: $83
	add  b                                           ; $619d: $80
	ld   [bc], a                                     ; $619e: $02
	and  b                                           ; $619f: $a0
	add  b                                           ; $61a0: $80
	ld   h, b                                        ; $61a1: $60
	add  c                                           ; $61a2: $81
	nop                                              ; $61a3: $00
	nop                                              ; $61a4: $00
	ret  nz                                          ; $61a5: $c0

	add  e                                           ; $61a6: $83
	add  b                                           ; $61a7: $80
	ld   [bc], a                                     ; $61a8: $02
	ld   b, b                                        ; $61a9: $40
	nop                                              ; $61aa: $00
	add  b                                           ; $61ab: $80
	add  a                                           ; $61ac: $87
	nop                                              ; $61ad: $00
	ld   b, $01                                      ; $61ae: $06 $01
	nop                                              ; $61b0: $00
	inc  bc                                          ; $61b1: $03
	ld   bc, $0206                                   ; $61b2: $01 $06 $02
	dec  b                                           ; $61b5: $05
	add  e                                           ; $61b6: $83
	ld   bc, $0702                                   ; $61b7: $01 $02 $07
	inc  bc                                          ; $61ba: $03
	ld   b, $85                                      ; $61bb: $06 $85
	nop                                              ; $61bd: $00
	nop                                              ; $61be: $00
	inc  bc                                          ; $61bf: $03
	add  e                                           ; $61c0: $83
	ld   bc, $0300                                   ; $61c1: $01 $00 $03
	add  c                                           ; $61c4: $81
	nop                                              ; $61c5: $00
	ld   bc, $00ff                                   ; $61c6: $01 $ff $00
	add  b                                           ; $61c9: $80
	rst  $38                                         ; $61ca: $ff
	add  e                                           ; $61cb: $83
	nop                                              ; $61cc: $00
	add  c                                           ; $61cd: $81
	rra                                              ; $61ce: $1f
	ld   bc, $4f5f                                   ; $61cf: $01 $5f $4f
	add  [hl]                                        ; $61d2: $86
	adc  a                                           ; $61d3: $8f
	nop                                              ; $61d4: $00
	rrca                                             ; $61d5: $0f
	add  c                                           ; $61d6: $81
	nop                                              ; $61d7: $00
	add  b                                           ; $61d8: $80
	add  b                                           ; $61d9: $80
	nop                                              ; $61da: $00
	rst  $38                                         ; $61db: $ff
	add  c                                           ; $61dc: $81
	nop                                              ; $61dd: $00
	inc  bc                                          ; $61de: $03
	cp   $00                                         ; $61df: $fe $00
	rst  $38                                         ; $61e1: $ff
	cp   $80                                         ; $61e2: $fe $80
	ld   bc, $0081                                   ; $61e4: $01 $81 $00
	add  [hl]                                        ; $61e7: $86
	ld   hl, sp-$80                                  ; $61e8: $f8 $80
	db   $fc                                         ; $61ea: $fc
	add  b                                           ; $61eb: $80
	cp   $80                                         ; $61ec: $fe $80
	db   $fc                                         ; $61ee: $fc
	add  c                                           ; $61ef: $81
	nop                                              ; $61f0: $00
	add  b                                           ; $61f1: $80
	ld   bc, $ff00                                   ; $61f2: $01 $00 $ff
	add  l                                           ; $61f5: $85
	nop                                              ; $61f6: $00
	ld   [bc], a                                     ; $61f7: $02
	add  b                                           ; $61f8: $80
	nop                                              ; $61f9: $00
	ret  nz                                          ; $61fa: $c0

	add  l                                           ; $61fb: $85
	add  b                                           ; $61fc: $80
	ld   [$300c], sp                                 ; $61fd: $08 $0c $30
	ld   e, h                                        ; $6200: $5c
	ld   b, b                                        ; $6201: $40
	ld   [hl], b                                     ; $6202: $70
	ld   h, b                                        ; $6203: $60
	ld   d, b                                        ; $6204: $50
	ld   b, b                                        ; $6205: $40
	and  b                                           ; $6206: $a0
	add  e                                           ; $6207: $83
	add  b                                           ; $6208: $80
	ld   b, $dc                                      ; $6209: $06 $dc
	inc  bc                                          ; $620b: $03
	dec  e                                           ; $620c: $1d
	ld   bc, $070b                                   ; $620d: $01 $0b $07
	dec  bc                                          ; $6210: $0b
	add  c                                           ; $6211: $81
	inc  bc                                          ; $6212: $03
	add  b                                           ; $6213: $80
	ld   [bc], a                                     ; $6214: $02
	nop                                              ; $6215: $00
	dec  b                                           ; $6216: $05
	add  e                                           ; $6217: $83
	ld   bc, $0706                                   ; $6218: $01 $06 $07
	inc  bc                                          ; $621b: $03
	rrca                                             ; $621c: $0f
	rlca                                             ; $621d: $07
	dec  c                                           ; $621e: $0d
	ld   bc, $8603                                   ; $621f: $01 $03 $86
	nop                                              ; $6222: $00
	nop                                              ; $6223: $00
	rst  $38                                         ; $6224: $ff
	add  b                                           ; $6225: $80
	ld   hl, sp-$80                                  ; $6226: $f8 $80
	ldh  a, [$82]                                    ; $6228: $f0 $82
	sbc  a                                           ; $622a: $9f
	add  b                                           ; $622b: $80
	rlca                                             ; $622c: $07
	add  b                                           ; $622d: $80
	inc  bc                                          ; $622e: $03
	add  d                                           ; $622f: $82
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6230: $cf
	add  b                                           ; $6231: $80
	ld   sp, hl                                      ; $6232: $f9
	add  d                                           ; $6233: $82
	rst  $38                                         ; $6234: $ff
	add  b                                           ; $6235: $80
	ccf                                              ; $6236: $3f
	ld   [bc], a                                     ; $6237: $02
	ldh  [rP1], a                                    ; $6238: $e0 $00
	rra                                              ; $623a: $1f
	add  d                                           ; $623b: $82
	nop                                              ; $623c: $00
	nop                                              ; $623d: $00
	rst  $38                                         ; $623e: $ff
	add  b                                           ; $623f: $80
	rrca                                             ; $6240: $0f
	add  b                                           ; $6241: $80
	rra                                              ; $6242: $1f
	add  b                                           ; $6243: $80
	rst  $38                                         ; $6244: $ff
	add  b                                           ; $6245: $80
	ld   sp, hl                                      ; $6246: $f9
	add  b                                           ; $6247: $80
	ret                                              ; $6248: $c9


	add  b                                           ; $6249: $80
	rst  $20                                         ; $624a: $e7
	add  d                                           ; $624b: $82
	rst  $38                                         ; $624c: $ff
	add  b                                           ; $624d: $80
	ccf                                              ; $624e: $3f
	add  b                                           ; $624f: $80
	rst  $38                                         ; $6250: $ff
	add  b                                           ; $6251: $80
	cp   $80                                         ; $6252: $fe $80
	db   $fc                                         ; $6254: $fc
	ld   [bc], a                                     ; $6255: $02
	ld   bc, $fe00                                   ; $6256: $01 $00 $fe
	add  c                                           ; $6259: $81
	nop                                              ; $625a: $00
	nop                                              ; $625b: $00
	ld   b, b                                        ; $625c: $40
	add  c                                           ; $625d: $81
	add  b                                           ; $625e: $80
	nop                                              ; $625f: $00
	ld   b, b                                        ; $6260: $40
	add  l                                           ; $6261: $85
	nop                                              ; $6262: $00
	nop                                              ; $6263: $00
	ret  nz                                          ; $6264: $c0

jr_014_6265:
	add  c                                           ; $6265: $81
	add  b                                           ; $6266: $80

jr_014_6267:
	ld   [bc], a                                     ; $6267: $02
	ldh  a, [$c0]                                    ; $6268: $f0 $c0
	ld   [hl], b                                     ; $626a: $70
	add  c                                           ; $626b: $81
	nop                                              ; $626c: $00
	nop                                              ; $626d: $00
	add  b                                           ; $626e: $80
	sbc  c                                           ; $626f: $99
	nop                                              ; $6270: $00
	inc  bc                                          ; $6271: $03
	ld   sp, $4708                                   ; $6272: $31 $08 $47
	ld   bc, $0380                                   ; $6275: $01 $80 $03
	add  b                                           ; $6278: $80
	rlca                                             ; $6279: $07
	add  b                                           ; $627a: $80
	ld   bc, $6604                                   ; $627b: $01 $04 $66
	ld   h, $37                                      ; $627e: $26 $37
	rlca                                             ; $6280: $07
	rrca                                             ; $6281: $0f
	adc  l                                           ; $6282: $8d
	nop                                              ; $6283: $00
	inc  bc                                          ; $6284: $03
	cp   $00                                         ; $6285: $fe $00
	rst  $38                                         ; $6287: $ff
	cp   $80                                         ; $6288: $fe $80
	db   $e3                                         ; $628a: $e3
	add  b                                           ; $628b: $80
	call z, $f780                                    ; $628c: $cc $80 $f7
	add  b                                           ; $628f: $80
	db   $e3                                         ; $6290: $e3
	add  b                                           ; $6291: $80
	inc  a                                           ; $6292: $3c
	add  b                                           ; $6293: $80
	rst  ToBoot                                         ; $6294: $c7
	nop                                              ; $6295: $00
	rst  $38                                         ; $6296: $ff
	adc  a                                           ; $6297: $8f
	nop                                              ; $6298: $00
	inc  bc                                          ; $6299: $03
	ld   hl, sp+$00                                  ; $629a: $f8 $00
	rst  $38                                         ; $629c: $ff
	ld   hl, sp-$80                                  ; $629d: $f8 $80
	ld   a, a                                        ; $629f: $7f
	add  b                                           ; $62a0: $80
	adc  a                                           ; $62a1: $8f
	add  b                                           ; $62a2: $80
	db   $f4                                         ; $62a3: $f4
	add  b                                           ; $62a4: $80
	ld   l, b                                        ; $62a5: $68
	ld   [bc], a                                     ; $62a6: $02
	adc  b                                           ; $62a7: $88
	adc  e                                           ; $62a8: $8b
	db   $fc                                         ; $62a9: $fc
	sub  e                                           ; $62aa: $93
	nop                                              ; $62ab: $00
	ld   a, [bc]                                     ; $62ac: $0a
	ldh  [rP1], a                                    ; $62ad: $e0 $00
	ld   hl, sp-$20                                  ; $62af: $f8 $e0
	ld   a, h                                        ; $62b1: $7c
	ld   a, b                                        ; $62b2: $78
	jr   nc, jr_014_6265                             ; $62b3: $30 $b0

	jr   nc, jr_014_6267                             ; $62b5: $30 $b0

	db   $f4                                         ; $62b7: $f4
	add  c                                           ; $62b8: $81
	rlca                                             ; $62b9: $07
	ld   [bc], a                                     ; $62ba: $02
	ld   [$0700], sp                                 ; $62bb: $08 $00 $07
	sub  a                                           ; $62be: $97
	nop                                              ; $62bf: $00
	ld   bc, $f807                                   ; $62c0: $01 $07 $f8
	add  d                                           ; $62c3: $82
	rst  $38                                         ; $62c4: $ff
	add  b                                           ; $62c5: $80
	rra                                              ; $62c6: $1f
	inc  b                                           ; $62c7: $04
	db   $e3                                         ; $62c8: $e3
	inc  bc                                          ; $62c9: $03
	inc  e                                           ; $62ca: $1c
	nop                                              ; $62cb: $00
	inc  bc                                          ; $62cc: $03
	sub  c                                           ; $62cd: $91
	nop                                              ; $62ce: $00
	ld   bc, $fc03                                   ; $62cf: $01 $03 $fc
	add  b                                           ; $62d2: $80
	rra                                              ; $62d3: $1f
	add  b                                           ; $62d4: $80
	db   $e3                                         ; $62d5: $e3
	add  b                                           ; $62d6: $80
	db   $fc                                         ; $62d7: $fc
	add  b                                           ; $62d8: $80
	rst  $38                                         ; $62d9: $ff
	add  b                                           ; $62da: $80
	ld   a, a                                        ; $62db: $7f
	ld   b, $8f                                      ; $62dc: $06 $8f
	rrca                                             ; $62de: $0f
	ld   [hl], c                                     ; $62df: $71
	ld   bc, $000e                                   ; $62e0: $01 $0e $00
	ld   bc, $008b                                   ; $62e3: $01 $8b $00
	ld   bc, $6894                                   ; $62e6: $01 $94 $68
	add  d                                           ; $62e9: $82
	ret  c                                           ; $62ea: $d8

	add  b                                           ; $62eb: $80
	jr   c, jr_014_62ee                              ; $62ec: $38 $00

jr_014_62ee:
	or   h                                           ; $62ee: $b4
	add  c                                           ; $62ef: $81
	or   b                                           ; $62f0: $b0
	inc  bc                                          ; $62f1: $03
	xor  b                                           ; $62f2: $a8
	and  b                                           ; $62f3: $a0
	sub  b                                           ; $62f4: $90

jr_014_62f5:
	add  b                                           ; $62f5: $80
	add  b                                           ; $62f6: $80
	nop                                              ; $62f7: $00
	nop                                              ; $62f8: $00
	ldh  [$9d], a                                    ; $62f9: $e0 $9d
	nop                                              ; $62fb: $00
	dec  b                                           ; $62fc: $05
	inc  c                                           ; $62fd: $0c
	ld   [bc], a                                     ; $62fe: $02
	ld   sp, $4300                                   ; $62ff: $31 $00 $43
	inc  bc                                          ; $6302: $03
	add  b                                           ; $6303: $80
	rlca                                             ; $6304: $07
	add  b                                           ; $6305: $80
	ld   bc, $6604                                   ; $6306: $01 $04 $66
	ld   h, $37                                      ; $6309: $26 $37
	rlca                                             ; $630b: $07
	rrca                                             ; $630c: $0f
	adc  l                                           ; $630d: $8d
	nop                                              ; $630e: $00
	ld   bc, $007f                                   ; $630f: $01 $7f $00
	add  b                                           ; $6312: $80
	ccf                                              ; $6313: $3f
	ld   bc, $f171                                   ; $6314: $01 $71 $f1
	add  b                                           ; $6317: $80
	call z, $f780                                    ; $6318: $cc $80 $f7
	add  b                                           ; $631b: $80
	db   $e3                                         ; $631c: $e3
	add  b                                           ; $631d: $80
	inc  a                                           ; $631e: $3c
	add  b                                           ; $631f: $80
	rst  ToBoot                                         ; $6320: $c7
	nop                                              ; $6321: $00
	rst  $38                                         ; $6322: $ff
	adc  a                                           ; $6323: $8f
	nop                                              ; $6324: $00
	inc  bc                                          ; $6325: $03
	ld   a, [hl]                                     ; $6326: $7e
	add  b                                           ; $6327: $80
	db   $fd                                         ; $6328: $fd
	db   $fc                                         ; $6329: $fc
	add  b                                           ; $632a: $80
	ld   a, a                                        ; $632b: $7f
	add  b                                           ; $632c: $80
	adc  a                                           ; $632d: $8f
	add  b                                           ; $632e: $80
	db   $f4                                         ; $632f: $f4
	add  b                                           ; $6330: $80
	ld   l, b                                        ; $6331: $68
	ld   [bc], a                                     ; $6332: $02
	adc  b                                           ; $6333: $88
	adc  e                                           ; $6334: $8b
	db   $fc                                         ; $6335: $fc
	sub  c                                           ; $6336: $91
	nop                                              ; $6337: $00
	inc  d                                           ; $6338: $14
	add  b                                           ; $6339: $80
	nop                                              ; $633a: $00
	ld   h, b                                        ; $633b: $60
	nop                                              ; $633c: $00
	ld   hl, sp-$20                                  ; $633d: $f8 $e0
	ld   e, $18                                      ; $633f: $1e $18
	ld   [hl-], a                                    ; $6341: $32
	or   b                                           ; $6342: $b0
	jr   nc, jr_014_62f5                             ; $6343: $30 $b0

	db   $f4                                         ; $6345: $f4
	rlca                                             ; $6346: $07
	ld   a, a                                        ; $6347: $7f
	rrca                                             ; $6348: $0f
	ld   [hl], c                                     ; $6349: $71
	ld   bc, $000e                                   ; $634a: $01 $0e $00
	ld   bc, $0095                                   ; $634d: $01 $95 $00
	ld   bc, $f807                                   ; $6350: $01 $07 $f8
	add  b                                           ; $6353: $80
	cp   $80                                         ; $6354: $fe $80
	rst  $38                                         ; $6356: $ff
	add  b                                           ; $6357: $80
	ccf                                              ; $6358: $3f
	inc  b                                           ; $6359: $04
	rst  JumpTable                                         ; $635a: $df
	rra                                              ; $635b: $1f
	jr   nz, jr_014_635e                             ; $635c: $20 $00

jr_014_635e:
	rra                                              ; $635e: $1f
	sub  c                                           ; $635f: $91
	nop                                              ; $6360: $00
	ld   bc, $fc03                                   ; $6361: $01 $03 $fc
	add  b                                           ; $6364: $80
	ccf                                              ; $6365: $3f
	add  b                                           ; $6366: $80
	rst  ToBoot                                         ; $6367: $c7
	add  b                                           ; $6368: $80
	ld   hl, sp-$7e                                  ; $6369: $f8 $82
	rst  $38                                         ; $636b: $ff
	inc  b                                           ; $636c: $04
	adc  a                                           ; $636d: $8f
	rrca                                             ; $636e: $0f
	ld   [hl], c                                     ; $636f: $71
	ld   bc, $8d0f                                   ; $6370: $01 $0f $8d
	nop                                              ; $6373: $00
	ld   [bc], a                                     ; $6374: $02
	sub  h                                           ; $6375: $94
	ld   l, b                                        ; $6376: $68
	or   h                                           ; $6377: $b4
	add  c                                           ; $6378: $81
	or   b                                           ; $6379: $b0
	add  b                                           ; $637a: $80
	ld   [hl], b                                     ; $637b: $70
	nop                                              ; $637c: $00
	ld   l, b                                        ; $637d: $68
	add  c                                           ; $637e: $81
	ld   h, b                                        ; $637f: $60
	ld   b, $a8                                      ; $6380: $06 $a8
	and  b                                           ; $6382: $a0
	sbc  b                                           ; $6383: $98
	add  b                                           ; $6384: $80
	sbc  b                                           ; $6385: $98
	nop                                              ; $6386: $00
	ld   a, b                                        ; $6387: $78
	sbc  l                                           ; $6388: $9d
	nop                                              ; $6389: $00
	inc  bc                                          ; $638a: $03
	ld   sp, $4708                                   ; $638b: $31 $08 $47
	ld   bc, $0380                                   ; $638e: $01 $80 $03
	ld   bc, $0f8f                                   ; $6391: $01 $8f $0f
	add  b                                           ; $6394: $80
	inc  bc                                          ; $6395: $03
	inc  b                                           ; $6396: $04
	call z, $6f4c                                    ; $6397: $cc $4c $6f
	rrca                                             ; $639a: $0f
	rra                                              ; $639b: $1f
	adc  l                                           ; $639c: $8d
	nop                                              ; $639d: $00
	inc  bc                                          ; $639e: $03
	ccf                                              ; $639f: $3f
	nop                                              ; $63a0: $00
	ld   a, $fe                                      ; $63a1: $3e $fe
	add  b                                           ; $63a3: $80
	db   $e3                                         ; $63a4: $e3
	add  b                                           ; $63a5: $80
	call z, $ef80                                    ; $63a6: $cc $80 $ef
	add  b                                           ; $63a9: $80
	rst  ToBoot                                         ; $63aa: $c7
	add  b                                           ; $63ab: $80
	ld   a, b                                        ; $63ac: $78
	add  b                                           ; $63ad: $80
	adc  a                                           ; $63ae: $8f
	nop                                              ; $63af: $00
	rst  $38                                         ; $63b0: $ff
	adc  l                                           ; $63b1: $8d
	nop                                              ; $63b2: $00
	dec  b                                           ; $63b3: $05
	add  b                                           ; $63b4: $80
	nop                                              ; $63b5: $00
	ld   a, b                                        ; $63b6: $78
	nop                                              ; $63b7: $00
	rst  $38                                         ; $63b8: $ff
	ld   hl, sp-$80                                  ; $63b9: $f8 $80
	ld   a, a                                        ; $63bb: $7f
	add  b                                           ; $63bc: $80
	rra                                              ; $63bd: $1f
	add  b                                           ; $63be: $80
	add  sp, $04                                     ; $63bf: $e8 $04
	ret  nc                                          ; $63c1: $d0

	pop  de                                          ; $63c2: $d1
	db   $10                                         ; $63c3: $10
	rla                                              ; $63c4: $17
	ld   sp, hl                                      ; $63c5: $f9
	sub  e                                           ; $63c6: $93
	nop                                              ; $63c7: $00
	dec  b                                           ; $63c8: $05
	ldh  [rP1], a                                    ; $63c9: $e0 $00
	ret  nc                                          ; $63cb: $d0

	ret  nz                                          ; $63cc: $c0

	ld   hl, sp-$10                                  ; $63cd: $f8 $f0
	add  b                                           ; $63cf: $80
	ld   h, b                                        ; $63d0: $60
	ld   [bc], a                                     ; $63d1: $02
	ld   h, $20                                      ; $63d2: $26 $20
	or   $81                                         ; $63d4: $f6 $81
	rlca                                             ; $63d6: $07
	inc  b                                           ; $63d7: $04
	dec  bc                                          ; $63d8: $0b
	inc  bc                                          ; $63d9: $03
	ld   [$0f00], sp                                 ; $63da: $08 $00 $0f
	sub  l                                           ; $63dd: $95
	nop                                              ; $63de: $00
	ld   bc, $f807                                   ; $63df: $01 $07 $f8
	add  d                                           ; $63e2: $82
	rst  $38                                         ; $63e3: $ff
	add  b                                           ; $63e4: $80
	rra                                              ; $63e5: $1f
	ld   [$03e3], sp                                 ; $63e6: $08 $e3 $03
	inc  e                                           ; $63e9: $1c
	nop                                              ; $63ea: $00
	inc  bc                                          ; $63eb: $03
	nop                                              ; $63ec: $00
	ld   bc, $0100                                   ; $63ed: $01 $00 $01
	adc  l                                           ; $63f0: $8d
	nop                                              ; $63f1: $00
	ld   bc, $fc03                                   ; $63f2: $01 $03 $fc
	add  b                                           ; $63f5: $80
	rra                                              ; $63f6: $1f
	add  b                                           ; $63f7: $80
	db   $e3                                         ; $63f8: $e3
	add  b                                           ; $63f9: $80
	db   $fc                                         ; $63fa: $fc
	add  b                                           ; $63fb: $80
	rst  $38                                         ; $63fc: $ff
	add  b                                           ; $63fd: $80
	ld   a, a                                        ; $63fe: $7f
	add  b                                           ; $63ff: $80
	ld   a, $80                                      ; $6400: $3e $80
	inc  bc                                          ; $6402: $03
	ld   [bc], a                                     ; $6403: $02
	db   $fc                                         ; $6404: $fc
	nop                                              ; $6405: $00
	inc  bc                                          ; $6406: $03
	adc  e                                           ; $6407: $8b
	nop                                              ; $6408: $00
	ld   bc, $6894                                   ; $6409: $01 $94 $68
	add  d                                           ; $640c: $82
	ret  c                                           ; $640d: $d8

	add  b                                           ; $640e: $80
	jr   c, jr_014_6411                              ; $640f: $38 $00

jr_014_6411:
	or   h                                           ; $6411: $b4
	add  c                                           ; $6412: $81
	or   b                                           ; $6413: $b0
	ld   b, $58                                      ; $6414: $06 $58
	ld   b, b                                        ; $6416: $40
	jr   nz, jr_014_6419                             ; $6417: $20 $00

jr_014_6419:
	jr   nc, jr_014_641b                             ; $6419: $30 $00

jr_014_641b:
	ldh  a, [$8b]                                    ; $641b: $f0 $8b
	nop                                              ; $641d: $00
	inc  b                                           ; $641e: $04
	db   $10                                         ; $641f: $10
	ld   [$1810], sp                                 ; $6420: $08 $10 $18
	db   $10                                         ; $6423: $10
	xor  l                                           ; $6424: $ad
	nop                                              ; $6425: $00
	nop                                              ; $6426: $00
	rst  $38                                         ; $6427: $ff
	add  b                                           ; $6428: $80
	nop                                              ; $6429: $00
	rlca                                             ; $642a: $07
	ld   a, [hl]                                     ; $642b: $7e
	rst  $38                                         ; $642c: $ff
	inc  a                                           ; $642d: $3c
	ld   a, [hl]                                     ; $642e: $7e
	jr   @+$3e                                       ; $642f: $18 $3c

	nop                                              ; $6431: $00
	jr   @+$01                                       ; $6432: $18 $ff

	nop                                              ; $6434: $00
	rst  $38                                         ; $6435: $ff
	nop                                              ; $6436: $00
	rst  $38                                         ; $6437: $ff
	nop                                              ; $6438: $00
	rst  $38                                         ; $6439: $ff
	nop                                              ; $643a: $00
	rst  $38                                         ; $643b: $ff
	nop                                              ; $643c: $00
	rst  $38                                         ; $643d: $ff
	nop                                              ; $643e: $00
	rst  $38                                         ; $643f: $ff
	nop                                              ; $6440: $00
	rst  $38                                         ; $6441: $ff
	nop                                              ; $6442: $00
	rst  $38                                         ; $6443: $ff
	nop                                              ; $6444: $00
	rst  $38                                         ; $6445: $ff
	nop                                              ; $6446: $00
	rst  $38                                         ; $6447: $ff
	nop                                              ; $6448: $00
	rst  $38                                         ; $6449: $ff
	nop                                              ; $644a: $00
	rst  $38                                         ; $644b: $ff
	nop                                              ; $644c: $00
	ldh  a, [c]                                      ; $644d: $f2
	nop                                              ; $644e: $00
	add  b                                           ; $644f: $80
	rst  $38                                         ; $6450: $ff
	nop                                              ; $6451: $00
	nop                                              ; $6452: $00
	add  b                                           ; $6453: $80
	rst  $38                                         ; $6454: $ff
	ld   bc, $2000                                   ; $6455: $01 $00 $20
	add  c                                           ; $6458: $81
	nop                                              ; $6459: $00
	ld   [de], a                                     ; $645a: $12
	ld   bc, $0100                                   ; $645b: $01 $00 $01
	nop                                              ; $645e: $00
	ld   h, b                                        ; $645f: $60
	nop                                              ; $6460: $00
	cp   a                                           ; $6461: $bf
	rst  $38                                         ; $6462: $ff
	nop                                              ; $6463: $00
	rst  $38                                         ; $6464: $ff
	push af                                          ; $6465: $f5
	nop                                              ; $6466: $00
	jr   nz, jr_014_6469                             ; $6467: $20 $00

jr_014_6469:
	ld   a, [bc]                                     ; $6469: $0a
	nop                                              ; $646a: $00
	call c, $dc00                                    ; $646b: $dc $00 $dc
	add  c                                           ; $646e: $81
	nop                                              ; $646f: $00
	ld   [bc], a                                     ; $6470: $02
	rst  JumpTable                                         ; $6471: $df
	rst  $38                                         ; $6472: $ff
	nop                                              ; $6473: $00
	add  b                                           ; $6474: $80
	rst  $38                                         ; $6475: $ff
	add  l                                           ; $6476: $85
	nop                                              ; $6477: $00
	inc  bc                                          ; $6478: $03
	ld   bc, $0200                                   ; $6479: $01 $00 $02
	nop                                              ; $647c: $00
	add  b                                           ; $647d: $80
	cp   $04                                         ; $647e: $fe $04
	ld   [bc], a                                     ; $6480: $02
	cp   $fa                                         ; $6481: $fe $fa
	ld   b, $46                                      ; $6483: $06 $46
	add  c                                           ; $6485: $81
	ld   b, $02                                      ; $6486: $06 $02
	add  $06                                         ; $6488: $c6 $06
	add  [hl]                                        ; $648a: $86
	add  c                                           ; $648b: $81
	ld   b, $10                                      ; $648c: $06 $10
	db   $fd                                         ; $648e: $fd
	rst  $38                                         ; $648f: $ff
	ld   bc, $00ff                                   ; $6490: $01 $ff $00
	rst  $38                                         ; $6493: $ff
	ld   hl, sp-$01                                  ; $6494: $f8 $ff

Jump_014_6496:
	rlca                                             ; $6496: $07
	rst  $38                                         ; $6497: $ff
	db   $fc                                         ; $6498: $fc
	rst  $38                                         ; $6499: $ff
	inc  bc                                          ; $649a: $03
	rst  $38                                         ; $649b: $ff
	ldh  a, [rIE]                                    ; $649c: $f0 $ff
	rrca                                             ; $649e: $0f
	add  c                                           ; $649f: $81
	rst  $38                                         ; $64a0: $ff
	ld   [bc], a                                     ; $64a1: $02
	nop                                              ; $64a2: $00
	rst  $38                                         ; $64a3: $ff
	nop                                              ; $64a4: $00
	add  c                                           ; $64a5: $81
	rst  $38                                         ; $64a6: $ff
	nop                                              ; $64a7: $00
	nop                                              ; $64a8: $00
	add  c                                           ; $64a9: $81
	rst  $38                                         ; $64aa: $ff
	nop                                              ; $64ab: $00
	nop                                              ; $64ac: $00
	add  c                                           ; $64ad: $81
	rst  $38                                         ; $64ae: $ff
	ld   [de], a                                     ; $64af: $12
	add  b                                           ; $64b0: $80
	rst  $38                                         ; $64b1: $ff
	ld   a, a                                        ; $64b2: $7f
	rst  $38                                         ; $64b3: $ff
	nop                                              ; $64b4: $00
	rst  $38                                         ; $64b5: $ff
	ld   hl, sp-$01                                  ; $64b6: $f8 $ff
	rlca                                             ; $64b8: $07
	rst  $38                                         ; $64b9: $ff
	ld   hl, sp-$01                                  ; $64ba: $f8 $ff
	ld   b, $ff                                      ; $64bc: $06 $ff
	cp   $ff                                         ; $64be: $fe $ff
	nop                                              ; $64c0: $00
	rst  $38                                         ; $64c1: $ff
	nop                                              ; $64c2: $00
	add  c                                           ; $64c3: $81
	rst  $38                                         ; $64c4: $ff
	nop                                              ; $64c5: $00
	nop                                              ; $64c6: $00
	add  c                                           ; $64c7: $81
	rst  $38                                         ; $64c8: $ff
	ld   [hl-], a                                    ; $64c9: $32
	nop                                              ; $64ca: $00
	rst  $38                                         ; $64cb: $ff
	nop                                              ; $64cc: $00
	rst  $38                                         ; $64cd: $ff
	nop                                              ; $64ce: $00
	rst  $38                                         ; $64cf: $ff
	nop                                              ; $64d0: $00
	rst  $38                                         ; $64d1: $ff
	nop                                              ; $64d2: $00
	rst  $38                                         ; $64d3: $ff
	ret  nz                                          ; $64d4: $c0

	rst  $38                                         ; $64d5: $ff
	ccf                                              ; $64d6: $3f
	rst  $38                                         ; $64d7: $ff
	ret  nz                                          ; $64d8: $c0

	rst  $38                                         ; $64d9: $ff
	ccf                                              ; $64da: $3f
	rst  $38                                         ; $64db: $ff
	nop                                              ; $64dc: $00
	rst  $38                                         ; $64dd: $ff
	ld   a, a                                        ; $64de: $7f
	rst  $38                                         ; $64df: $ff
	ld   [hl], b                                     ; $64e0: $70
	rst  $38                                         ; $64e1: $ff
	rrca                                             ; $64e2: $0f
	rst  $38                                         ; $64e3: $ff
	nop                                              ; $64e4: $00
	rst  $38                                         ; $64e5: $ff
	ld   hl, sp-$01                                  ; $64e6: $f8 $ff
	rlca                                             ; $64e8: $07
	rst  $38                                         ; $64e9: $ff
	ret  nz                                          ; $64ea: $c0

	rst  $38                                         ; $64eb: $ff
	inc  a                                           ; $64ec: $3c
	rst  $38                                         ; $64ed: $ff
	db   $e3                                         ; $64ee: $e3
	rst  $38                                         ; $64ef: $ff
	rra                                              ; $64f0: $1f
	rst  $38                                         ; $64f1: $ff
	ret  nz                                          ; $64f2: $c0

	rst  $38                                         ; $64f3: $ff
	ccf                                              ; $64f4: $3f
	rst  $38                                         ; $64f5: $ff
	nop                                              ; $64f6: $00
	rst  $38                                         ; $64f7: $ff
	ld   hl, sp-$01                                  ; $64f8: $f8 $ff
	rlca                                             ; $64fa: $07
	rst  $38                                         ; $64fb: $ff
	nop                                              ; $64fc: $00
	add  b                                           ; $64fd: $80
	rst  $38                                         ; $64fe: $ff
	call $0b00                                       ; $64ff: $cd $00 $0b
	ld   b, b                                        ; $6502: $40
	nop                                              ; $6503: $00
	ld   [$c100], sp                                 ; $6504: $08 $00 $c1
	nop                                              ; $6507: $00
	inc  a                                           ; $6508: $3c
	nop                                              ; $6509: $00
	ld   [hl], c                                     ; $650a: $71
	nop                                              ; $650b: $00
	call nz, $8100                                   ; $650c: $c4 $00 $81
	rst  $38                                         ; $650f: $ff
	ld   bc, $5700                                   ; $6510: $01 $00 $57
	add  c                                           ; $6513: $81
	nop                                              ; $6514: $00
	nop                                              ; $6515: $00
	adc  h                                           ; $6516: $8c
	add  c                                           ; $6517: $81
	nop                                              ; $6518: $00
	inc  bc                                          ; $6519: $03
	inc  b                                           ; $651a: $04
	nop                                              ; $651b: $00
	jr   nz, jr_014_651e                             ; $651c: $20 $00

jr_014_651e:
	add  c                                           ; $651e: $81
	rst  $38                                         ; $651f: $ff
	inc  bc                                          ; $6520: $03
	nop                                              ; $6521: $00
	ld   a, [de]                                     ; $6522: $1a
	nop                                              ; $6523: $00
	db   $e4                                         ; $6524: $e4
	add  l                                           ; $6525: $85
	nop                                              ; $6526: $00
	ld   bc, $0001                                   ; $6527: $01 $01 $00
	add  c                                           ; $652a: $81
	rst  $38                                         ; $652b: $ff
	ld   bc, $fa00                                   ; $652c: $01 $00 $fa
	adc  c                                           ; $652f: $89
	ld   b, $80                                      ; $6530: $06 $80
	cp   $06                                         ; $6532: $fe $06
	db   $fc                                         ; $6534: $fc
	nop                                              ; $6535: $00
	ldh  a, [rIE]                                    ; $6536: $f0 $ff
	rrca                                             ; $6538: $0f
	rst  $38                                         ; $6539: $ff
	nop                                              ; $653a: $00
	add  e                                           ; $653b: $83
	rst  $38                                         ; $653c: $ff
	ld   [bc], a                                     ; $653d: $02
	rrca                                             ; $653e: $0f
	rst  $38                                         ; $653f: $ff
	rrca                                             ; $6540: $0f
	add  c                                           ; $6541: $81
	rst  $38                                         ; $6542: $ff
	nop                                              ; $6543: $00
	nop                                              ; $6544: $00
	add  c                                           ; $6545: $81
	rst  $38                                         ; $6546: $ff
	nop                                              ; $6547: $00
	nop                                              ; $6548: $00
	add  c                                           ; $6549: $81
	rst  $38                                         ; $654a: $ff
	ld   [bc], a                                     ; $654b: $02
	ret  nz                                          ; $654c: $c0

	rst  $38                                         ; $654d: $ff
	ret  nz                                          ; $654e: $c0

	add  e                                           ; $654f: $83
	rst  $38                                         ; $6550: $ff
	ld   a, [bc]                                     ; $6551: $0a
	nop                                              ; $6552: $00
	rst  $38                                         ; $6553: $ff
	add  b                                           ; $6554: $80
	rst  $38                                         ; $6555: $ff
	ld   a, a                                        ; $6556: $7f
	rst  $38                                         ; $6557: $ff
	ret  nz                                          ; $6558: $c0

	rst  $38                                         ; $6559: $ff
	nop                                              ; $655a: $00
	rst  $38                                         ; $655b: $ff
	ccf                                              ; $655c: $3f
	add  e                                           ; $655d: $83
	rst  $38                                         ; $655e: $ff
	ld   [$ff03], sp                                 ; $655f: $08 $03 $ff
	inc  bc                                          ; $6562: $03
	rst  $38                                         ; $6563: $ff
	ldh  a, [rIE]                                    ; $6564: $f0 $ff
	rrca                                             ; $6566: $0f
	rst  $38                                         ; $6567: $ff
	nop                                              ; $6568: $00
	adc  c                                           ; $6569: $89
	rst  $38                                         ; $656a: $ff
	ld   [$ff00], sp                                 ; $656b: $08 $00 $ff
	ret  nz                                          ; $656e: $c0

	rst  $38                                         ; $656f: $ff
	ccf                                              ; $6570: $3f
	rst  $38                                         ; $6571: $ff
	ld   hl, sp-$01                                  ; $6572: $f8 $ff
	ld   hl, sp-$7d                                  ; $6574: $f8 $83
	rst  $38                                         ; $6576: $ff
	inc  b                                           ; $6577: $04
	ld   hl, sp-$01                                  ; $6578: $f8 $ff
	rlca                                             ; $657a: $07
	rst  $38                                         ; $657b: $ff
	nop                                              ; $657c: $00
	add  c                                           ; $657d: $81
	rst  $38                                         ; $657e: $ff
	ld   [bc], a                                     ; $657f: $02
	nop                                              ; $6580: $00
	rst  $38                                         ; $6581: $ff
	nop                                              ; $6582: $00
	add  e                                           ; $6583: $83
	rst  $38                                         ; $6584: $ff
	ld   [bc], a                                     ; $6585: $02
	nop                                              ; $6586: $00
	rst  $38                                         ; $6587: $ff
	nop                                              ; $6588: $00
	add  c                                           ; $6589: $81
	rst  $38                                         ; $658a: $ff
	inc  b                                           ; $658b: $04
	add  b                                           ; $658c: $80
	rst  $38                                         ; $658d: $ff
	nop                                              ; $658e: $00
	rst  $38                                         ; $658f: $ff
	ld   a, a                                        ; $6590: $7f
	add  d                                           ; $6591: $82
	rst  $38                                         ; $6592: $ff
	adc  l                                           ; $6593: $8d
	nop                                              ; $6594: $00
	add  b                                           ; $6595: $80
	rst  $38                                         ; $6596: $ff
	nop                                              ; $6597: $00
	nop                                              ; $6598: $00
	add  b                                           ; $6599: $80
	rst  $38                                         ; $659a: $ff
	add  c                                           ; $659b: $81
	nop                                              ; $659c: $00
	inc  c                                           ; $659d: $0c
	db   $fd                                         ; $659e: $fd
	nop                                              ; $659f: $00
	ld   hl, sp+$00                                  ; $65a0: $f8 $00
	stop                                             ; $65a2: $10 $00
	rrca                                             ; $65a4: $0f
	nop                                              ; $65a5: $00
	push hl                                          ; $65a6: $e5
	rst  $38                                         ; $65a7: $ff
	nop                                              ; $65a8: $00
	rst  $38                                         ; $65a9: $ff
	rst  $10                                         ; $65aa: $d7
	add  c                                           ; $65ab: $81
	nop                                              ; $65ac: $00
	ld   [bc], a                                     ; $65ad: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $65ae: $cf
	nop                                              ; $65af: $00
	rst  ToBoot                                         ; $65b0: $c7
	add  e                                           ; $65b1: $83
	nop                                              ; $65b2: $00
	ld   a, [bc]                                     ; $65b3: $0a
	rst  JumpTable                                         ; $65b4: $df
	rst  $38                                         ; $65b5: $ff
	nop                                              ; $65b6: $00
	rst  $38                                         ; $65b7: $ff
	cp   a                                           ; $65b8: $bf
	nop                                              ; $65b9: $00
	ldh  [rP1], a                                    ; $65ba: $e0 $00
	ld   a, [hl]                                     ; $65bc: $7e
	nop                                              ; $65bd: $00
	ld   c, h                                        ; $65be: $4c
	add  c                                           ; $65bf: $81
	nop                                              ; $65c0: $00
	ld   b, $30                                      ; $65c1: $06 $30
	nop                                              ; $65c3: $00
	ld   e, a                                        ; $65c4: $5f
	cp   $02                                         ; $65c5: $fe $02
	cp   $fa                                         ; $65c7: $fe $fa
	adc  c                                           ; $65c9: $89
	ld   b, $00                                      ; $65ca: $06 $00
	ld   [$ff81], sp                                 ; $65cc: $08 $81 $ff
	inc  b                                           ; $65cf: $04
	rrca                                             ; $65d0: $0f
	rst  $38                                         ; $65d1: $ff
	rlca                                             ; $65d2: $07
	db   $fc                                         ; $65d3: $fc
	nop                                              ; $65d4: $00
	add  d                                           ; $65d5: $82
	ld   hl, sp+$00                                  ; $65d6: $f8 $00
	nop                                              ; $65d8: $00
	add  b                                           ; $65d9: $80
	rst  $38                                         ; $65da: $ff
	adc  d                                           ; $65db: $8a
	ld   a, a                                        ; $65dc: $7f
	add  d                                           ; $65dd: $82
	rst  $38                                         ; $65de: $ff
	nop                                              ; $65df: $00
	ld   e, a                                        ; $65e0: $5f
	add  l                                           ; $65e1: $85
	ret  nz                                          ; $65e2: $c0

	inc  b                                           ; $65e3: $04
	add  c                                           ; $65e4: $81
	nop                                              ; $65e5: $00
	ld   bc, $1f00                                   ; $65e6: $01 $00 $1f
	add  b                                           ; $65e9: $80
	inc  bc                                          ; $65ea: $03
	ld   bc, $fa00                                   ; $65eb: $01 $00 $fa
	add  l                                           ; $65ee: $85
	ld   b, $00                                      ; $65ef: $06 $00
	inc  b                                           ; $65f1: $04
	add  c                                           ; $65f2: $81
	nop                                              ; $65f3: $00
	nop                                              ; $65f4: $00
	ld   hl, sp-$80                                  ; $65f5: $f8 $80
	ret  nz                                          ; $65f7: $c0

	ld   bc, $ff00                                   ; $65f8: $01 $00 $ff
	db   $fd                                         ; $65fb: $fd
	nop                                              ; $65fc: $00
	nop                                              ; $65fd: $00
	db   $10                                         ; $65fe: $10
	add  l                                           ; $65ff: $85
	nop                                              ; $6600: $00
	inc  bc                                          ; $6601: $03
	jr   nc, jr_014_6604                             ; $6602: $30 $00

jr_014_6604:
	jr   nz, jr_014_6606                             ; $6604: $20 $00

jr_014_6606:
	add  c                                           ; $6606: $81
	rst  $38                                         ; $6607: $ff
	dec  b                                           ; $6608: $05
	nop                                              ; $6609: $00
	rra                                              ; $660a: $1f
	nop                                              ; $660b: $00
	ret  nz                                          ; $660c: $c0

	nop                                              ; $660d: $00
	ld   h, c                                        ; $660e: $61
	add  c                                           ; $660f: $81
	nop                                              ; $6610: $00
	inc  bc                                          ; $6611: $03
	jp   $8200                                       ; $6612: $c3 $00 $82


	nop                                              ; $6615: $00
	add  c                                           ; $6616: $81
	rst  $38                                         ; $6617: $ff
	dec  b                                           ; $6618: $05
	nop                                              ; $6619: $00
	ld   [hl], c                                     ; $661a: $71
	nop                                              ; $661b: $00
	inc  c                                           ; $661c: $0c
	nop                                              ; $661d: $00
	add  [hl]                                        ; $661e: $86
	add  c                                           ; $661f: $81
	nop                                              ; $6620: $00
	inc  bc                                          ; $6621: $03
	inc  c                                           ; $6622: $0c
	nop                                              ; $6623: $00
	ld   [$8100], sp                                 ; $6624: $08 $00 $81
	rst  $38                                         ; $6627: $ff
	inc  bc                                          ; $6628: $03
	nop                                              ; $6629: $00
	ld   a, [de]                                     ; $662a: $1a
	ld   b, $e6                                      ; $662b: $06 $e6
	add  e                                           ; $662d: $83
	ld   b, $00                                      ; $662e: $06 $00
	inc  b                                           ; $6630: $04
	add  c                                           ; $6631: $81
	nop                                              ; $6632: $00
	nop                                              ; $6633: $00
	ld   hl, sp-$80                                  ; $6634: $f8 $80
	ret  nz                                          ; $6636: $c0

	nop                                              ; $6637: $00
	nop                                              ; $6638: $00
	add  b                                           ; $6639: $80
	adc  a                                           ; $663a: $8f
	add  b                                           ; $663b: $80
	ld   hl, sp-$80                                  ; $663c: $f8 $80
	ei                                               ; $663e: $fb
	add  a                                           ; $663f: $87
	db   $db                                         ; $6640: $db
	ld   [bc], a                                     ; $6641: $02
	jp   c, $fffe                                    ; $6642: $da $fe $ff

	add  b                                           ; $6645: $80
	nop                                              ; $6646: $00
	add  d                                           ; $6647: $82
	rst  $38                                         ; $6648: $ff
	ld   [$c1fd], sp                                 ; $6649: $08 $fd $c1
	ret  c                                           ; $664c: $d8

	add  d                                           ; $664d: $82
	add  h                                           ; $664e: $84
	dec  c                                           ; $664f: $0d
	dec  sp                                          ; $6650: $3b
	dec  hl                                          ; $6651: $2b
	inc  h                                           ; $6652: $24
	add  c                                           ; $6653: $81
	jp   c, $db80                                    ; $6654: $da $80 $db

	ld   bc, $dbda                                   ; $6657: $01 $da $db
	add  d                                           ; $665a: $82
	ei                                               ; $665b: $fb
	add  b                                           ; $665c: $80
	adc  e                                           ; $665d: $8b
	inc  bc                                          ; $665e: $03
	xor  e                                           ; $665f: $ab
	adc  e                                           ; $6660: $8b
	adc  b                                           ; $6661: $88
	ld   d, a                                        ; $6662: $57
	add  b                                           ; $6663: $80
	cp   a                                           ; $6664: $bf
	add  d                                           ; $6665: $82
	rst  $38                                         ; $6666: $ff
	dec  b                                           ; $6667: $05
	ld   a, a                                        ; $6668: $7f
	cp   $ff                                         ; $6669: $fe $ff
	cp   l                                           ; $666b: $bd
	rst  $38                                         ; $666c: $ff
	jp   $ff80                                       ; $666d: $c3 $80 $ff


	nop                                              ; $6670: $00
	sbc  d                                           ; $6671: $9a
	add  c                                           ; $6672: $81
	ld   a, [de]                                     ; $6673: $1a
	add  b                                           ; $6674: $80
	dec  de                                          ; $6675: $1b
	ld   bc, $58d8                                   ; $6676: $01 $d8 $58
	add  b                                           ; $6679: $80
	db   $db                                         ; $667a: $db
	add  h                                           ; $667b: $84
	jp   c, $ff00                                    ; $667c: $da $00 $ff

	add  b                                           ; $667f: $80
	rst  $30                                         ; $6680: $f7
	dec  b                                           ; $6681: $05
	rst  $38                                         ; $6682: $ff
	nop                                              ; $6683: $00
	rst  $38                                         ; $6684: $ff
	nop                                              ; $6685: $00
	rst  $38                                         ; $6686: $ff
	nop                                              ; $6687: $00
	add  b                                           ; $6688: $80
	rst  $38                                         ; $6689: $ff
	ld   bc, $ff00                                   ; $668a: $01 $00 $ff
	add  b                                           ; $668d: $80
	ld   a, a                                        ; $668e: $7f
	ld   bc, $5e55                                   ; $668f: $01 $55 $5e
	add  c                                           ; $6692: $81
	rst  $38                                         ; $6693: $ff
	inc  b                                           ; $6694: $04
	rrca                                             ; $6695: $0f
	rst  $38                                         ; $6696: $ff
	rlca                                             ; $6697: $07
	rst  $38                                         ; $6698: $ff
	rlca                                             ; $6699: $07
	add  b                                           ; $669a: $80
	rst  $38                                         ; $669b: $ff
	nop                                              ; $669c: $00
	rrca                                             ; $669d: $0f
	add  c                                           ; $669e: $81
	rst  $38                                         ; $669f: $ff
	ld   bc, $525f                                   ; $66a0: $01 $5f $52
	add  h                                           ; $66a3: $84
	rst  $38                                         ; $66a4: $ff
	nop                                              ; $66a5: $00
	ld   sp, hl                                      ; $66a6: $f9
	add  d                                           ; $66a7: $82
	ld   hl, sp-$80                                  ; $66a8: $f8 $80
	db   $fc                                         ; $66aa: $fc
	add  b                                           ; $66ab: $80
	rst  $38                                         ; $66ac: $ff
	nop                                              ; $66ad: $00
	nop                                              ; $66ae: $00
	add  b                                           ; $66af: $80
	ret  c                                           ; $66b0: $d8

	add  c                                           ; $66b1: $81
	rst  $38                                         ; $66b2: $ff
	ld   [bc], a                                     ; $66b3: $02
	nop                                              ; $66b4: $00
	rst  $38                                         ; $66b5: $ff
	nop                                              ; $66b6: $00
	add  d                                           ; $66b7: $82
	ld   a, a                                        ; $66b8: $7f
	nop                                              ; $66b9: $00
	nop                                              ; $66ba: $00
	add  b                                           ; $66bb: $80
	rst  $38                                         ; $66bc: $ff
	add  c                                           ; $66bd: $81
	nop                                              ; $66be: $00
	add  c                                           ; $66bf: $81
	rst  $38                                         ; $66c0: $ff
	ld   [bc], a                                     ; $66c1: $02
	nop                                              ; $66c2: $00
	rst  $38                                         ; $66c3: $ff
	nop                                              ; $66c4: $00
	add  d                                           ; $66c5: $82
	rst  $38                                         ; $66c6: $ff
	nop                                              ; $66c7: $00
	nop                                              ; $66c8: $00
	add  b                                           ; $66c9: $80
	rst  $38                                         ; $66ca: $ff
	nop                                              ; $66cb: $00
	inc  b                                           ; $66cc: $04
	add  b                                           ; $66cd: $80
	ld   e, $80                                      ; $66ce: $1e $80
	cp   $03                                         ; $66d0: $fe $03
	rst  $38                                         ; $66d2: $ff
	inc  b                                           ; $66d3: $04
	rst  $38                                         ; $66d4: $ff
	nop                                              ; $66d5: $00
	add  d                                           ; $66d6: $82
	rst  $38                                         ; $66d7: $ff
	nop                                              ; $66d8: $00
	nop                                              ; $66d9: $00
	add  c                                           ; $66da: $81
	rst  $38                                         ; $66db: $ff
	add  b                                           ; $66dc: $80
	ld   a, a                                        ; $66dd: $7f
	dec  b                                           ; $66de: $05
	rst  $38                                         ; $66df: $ff
	nop                                              ; $66e0: $00
	rst  $38                                         ; $66e1: $ff
	nop                                              ; $66e2: $00
	rst  $38                                         ; $66e3: $ff
	nop                                              ; $66e4: $00
	add  d                                           ; $66e5: $82
	rst  $38                                         ; $66e6: $ff
	nop                                              ; $66e7: $00
	nop                                              ; $66e8: $00
	add  b                                           ; $66e9: $80
	rst  $38                                         ; $66ea: $ff
	ld   a, [bc]                                     ; $66eb: $0a
	ccf                                              ; $66ec: $3f
	rst  $38                                         ; $66ed: $ff
	ccf                                              ; $66ee: $3f
	rst  $38                                         ; $66ef: $ff
	nop                                              ; $66f0: $00
	rst  $38                                         ; $66f1: $ff
	cp   $ff                                         ; $66f2: $fe $ff
	ld   bc, $00ff                                   ; $66f4: $01 $ff $00
	add  c                                           ; $66f7: $81
	rst  $38                                         ; $66f8: $ff
	nop                                              ; $66f9: $00
	nop                                              ; $66fa: $00
	add  e                                           ; $66fb: $83
	rst  $38                                         ; $66fc: $ff
	ld   [bc], a                                     ; $66fd: $02
	nop                                              ; $66fe: $00
	rst  $38                                         ; $66ff: $ff
	nop                                              ; $6700: $00
	add  c                                           ; $6701: $81
	rst  $38                                         ; $6702: $ff
	nop                                              ; $6703: $00
	nop                                              ; $6704: $00
	add  c                                           ; $6705: $81
	rst  $38                                         ; $6706: $ff
	nop                                              ; $6707: $00
	nop                                              ; $6708: $00
	add  c                                           ; $6709: $81
	rst  $38                                         ; $670a: $ff
	ld   c, $80                                      ; $670b: $0e $80
	rst  $38                                         ; $670d: $ff
	ld   a, a                                        ; $670e: $7f
	rst  $38                                         ; $670f: $ff
	nop                                              ; $6710: $00
	rst  $38                                         ; $6711: $ff
	ldh  a, [rIE]                                    ; $6712: $f0 $ff
	rrca                                             ; $6714: $0f
	rst  $38                                         ; $6715: $ff
	ret  nz                                          ; $6716: $c0

	rst  $38                                         ; $6717: $ff
	ld   a, $ff                                      ; $6718: $3e $ff
	ld   bc, $ff81                                   ; $671a: $01 $81 $ff
	dec  c                                           ; $671d: $0d
	db   $fc                                         ; $671e: $fc
	rst  $38                                         ; $671f: $ff
	inc  b                                           ; $6720: $04
	rst  $38                                         ; $6721: $ff
	rlca                                             ; $6722: $07
	rst  $38                                         ; $6723: $ff
	add  b                                           ; $6724: $80
	rst  $38                                         ; $6725: $ff
	ld   a, a                                        ; $6726: $7f
	rst  $38                                         ; $6727: $ff
	nop                                              ; $6728: $00
	rst  $38                                         ; $6729: $ff
	nop                                              ; $672a: $00
	rst  $38                                         ; $672b: $ff
	add  b                                           ; $672c: $80
	nop                                              ; $672d: $00
	add  b                                           ; $672e: $80
	ld   a, a                                        ; $672f: $7f
	inc  b                                           ; $6730: $04
	nop                                              ; $6731: $00
	ld   a, a                                        ; $6732: $7f
	inc  e                                           ; $6733: $1c
	nop                                              ; $6734: $00
	ld   a, $83                                      ; $6735: $3e $83
	nop                                              ; $6737: $00
	ld   bc, hScriptOpcodeParams+2                                   ; $6738: $01 $a2 $ff
	add  b                                           ; $673b: $80
	nop                                              ; $673c: $00
	add  b                                           ; $673d: $80
	ld   a, a                                        ; $673e: $7f
	ld   b, $00                                      ; $673f: $06 $00
	ld   a, a                                        ; $6741: $7f
	ld   [$1000], sp                                 ; $6742: $08 $00 $10
	nop                                              ; $6745: $00
	db   $10                                         ; $6746: $10
	add  c                                           ; $6747: $81
	nop                                              ; $6748: $00
	ld   bc, $ff88                                   ; $6749: $01 $88 $ff
	add  b                                           ; $674c: $80
	nop                                              ; $674d: $00
	add  b                                           ; $674e: $80
	ld   a, a                                        ; $674f: $7f
	dec  bc                                          ; $6750: $0b
	nop                                              ; $6751: $00
	ld   a, a                                        ; $6752: $7f
	inc  e                                           ; $6753: $1c
	nop                                              ; $6754: $00
	ld   a, $00                                      ; $6755: $3e $00
	jr   nz, jr_014_6759                             ; $6757: $20 $00

jr_014_6759:
	ld   b, $00                                      ; $6759: $06 $00
	add  h                                           ; $675b: $84
	rst  $38                                         ; $675c: $ff
	add  b                                           ; $675d: $80
	nop                                              ; $675e: $00
	add  b                                           ; $675f: $80
	ld   a, a                                        ; $6760: $7f
	dec  bc                                          ; $6761: $0b
	nop                                              ; $6762: $00
	ld   a, a                                        ; $6763: $7f
	inc  e                                           ; $6764: $1c
	nop                                              ; $6765: $00
	ld   a, $00                                      ; $6766: $3e $00
	jr   nz, jr_014_676a                             ; $6768: $20 $00

jr_014_676a:
	ld   e, $00                                      ; $676a: $1e $00
	sbc  h                                           ; $676c: $9c
	rst  $38                                         ; $676d: $ff
	add  b                                           ; $676e: $80
	nop                                              ; $676f: $00
	add  b                                           ; $6770: $80
	ld   a, a                                        ; $6771: $7f
	dec  bc                                          ; $6772: $0b
	nop                                              ; $6773: $00
	ld   a, a                                        ; $6774: $7f
	inc  b                                           ; $6775: $04
	nop                                              ; $6776: $00
	inc  c                                           ; $6777: $0c
	nop                                              ; $6778: $00
	jr   jr_014_677b                                 ; $6779: $18 $00

jr_014_677b:
	inc  [hl]                                        ; $677b: $34
	nop                                              ; $677c: $00
	and  h                                           ; $677d: $a4
	rst  $38                                         ; $677e: $ff
	add  b                                           ; $677f: $80
	nop                                              ; $6780: $00
	add  b                                           ; $6781: $80
	ld   a, a                                        ; $6782: $7f
	inc  b                                           ; $6783: $04
	nop                                              ; $6784: $00
	ld   a, a                                        ; $6785: $7f
	inc  a                                           ; $6786: $3c
	nop                                              ; $6787: $00
	inc  e                                           ; $6788: $1c
	add  c                                           ; $6789: $81
	nop                                              ; $678a: $00
	inc  bc                                          ; $678b: $03
	inc  e                                           ; $678c: $1c
	nop                                              ; $678d: $00
	cp   h                                           ; $678e: $bc
	rst  $38                                         ; $678f: $ff
	add  b                                           ; $6790: $80
	nop                                              ; $6791: $00
	add  b                                           ; $6792: $80
	ld   a, a                                        ; $6793: $7f
	dec  bc                                          ; $6794: $0b
	nop                                              ; $6795: $00
	ld   a, a                                        ; $6796: $7f
	inc  e                                           ; $6797: $1c
	nop                                              ; $6798: $00
	ld   a, $00                                      ; $6799: $3e $00
	ld   [bc], a                                     ; $679b: $02
	nop                                              ; $679c: $00
	inc  e                                           ; $679d: $1c
	nop                                              ; $679e: $00
	cp   h                                           ; $679f: $bc
	rst  $38                                         ; $67a0: $ff
	add  b                                           ; $67a1: $80
	nop                                              ; $67a2: $00
	add  b                                           ; $67a3: $80
	ld   a, a                                        ; $67a4: $7f
	inc  b                                           ; $67a5: $04
	nop                                              ; $67a6: $00
	ld   a, a                                        ; $67a7: $7f
	ld   a, $00                                      ; $67a8: $3e $00
	inc  e                                           ; $67aa: $1c
	add  c                                           ; $67ab: $81
	nop                                              ; $67ac: $00
	inc  bc                                          ; $67ad: $03
	ld   h, $00                                      ; $67ae: $26 $00
	add  h                                           ; $67b0: $84
	rst  $38                                         ; $67b1: $ff
	add  b                                           ; $67b2: $80
	nop                                              ; $67b3: $00
	add  b                                           ; $67b4: $80
	ld   a, a                                        ; $67b5: $7f
	inc  b                                           ; $67b6: $04
	nop                                              ; $67b7: $00
	ld   a, a                                        ; $67b8: $7f
	inc  e                                           ; $67b9: $1c
	nop                                              ; $67ba: $00
	ld   a, $81                                      ; $67bb: $3e $81
	nop                                              ; $67bd: $00
	inc  bc                                          ; $67be: $03
	ld   a, $00                                      ; $67bf: $3e $00
	sbc  h                                           ; $67c1: $9c
	rst  $38                                         ; $67c2: $ff
	add  b                                           ; $67c3: $80
	nop                                              ; $67c4: $00
	add  b                                           ; $67c5: $80
	ld   a, a                                        ; $67c6: $7f
	inc  b                                           ; $67c7: $04
	nop                                              ; $67c8: $00
	ld   a, a                                        ; $67c9: $7f
	inc  e                                           ; $67ca: $1c
	nop                                              ; $67cb: $00
	ld   a, $83                                      ; $67cc: $3e $83
	nop                                              ; $67ce: $00
	ld   bc, hScriptOpcodeParams+2                                   ; $67cf: $01 $a2 $ff
	add  b                                           ; $67d2: $80
	nop                                              ; $67d3: $00
	add  b                                           ; $67d4: $80
	ld   a, a                                        ; $67d5: $7f
	ld   bc, $7f2a                                   ; $67d6: $01 $2a $7f
	add  b                                           ; $67d9: $80
	ld   a, $80                                      ; $67da: $3e $80
	ld   l, $01                                      ; $67dc: $2e $01
	ld   [hl+], a                                    ; $67de: $22
	ld   a, [bc]                                     ; $67df: $0a
	add  b                                           ; $67e0: $80
	ld   a, [hl+]                                    ; $67e1: $2a
	nop                                              ; $67e2: $00
	add  d                                           ; $67e3: $82
	add  c                                           ; $67e4: $81
	nop                                              ; $67e5: $00
	nop                                              ; $67e6: $00
	ld   b, b                                        ; $67e7: $40
	add  c                                           ; $67e8: $81
	nop                                              ; $67e9: $00
	rla                                              ; $67ea: $17
	ld   a, $00                                      ; $67eb: $3e $00
	ld   [hl], $00                                   ; $67ed: $36 $00
	ret  nz                                          ; $67ef: $c0

	nop                                              ; $67f0: $00
	add  b                                           ; $67f1: $80
	nop                                              ; $67f2: $00
	rst  $30                                         ; $67f3: $f7
	rst  $38                                         ; $67f4: $ff
	nop                                              ; $67f5: $00
	rst  $38                                         ; $67f6: $ff
	ccf                                              ; $67f7: $3f
	nop                                              ; $67f8: $00
	ret  nz                                          ; $67f9: $c0

	nop                                              ; $67fa: $00
	ldh  a, [rP1]                                    ; $67fb: $f0 $00
	ldh  [rP1], a                                    ; $67fd: $e0 $00
	ret  nz                                          ; $67ff: $c0

Call_014_6800:
	nop                                              ; $6800: $00
	ret  nc                                          ; $6801: $d0

	nop                                              ; $6802: $00
	add  b                                           ; $6803: $80
	rst  $38                                         ; $6804: $ff
	nop                                              ; $6805: $00
	nop                                              ; $6806: $00
	add  b                                           ; $6807: $80
	rst  $38                                         ; $6808: $ff
	dec  c                                           ; $6809: $0d
	nop                                              ; $680a: $00
	inc  de                                          ; $680b: $13
	nop                                              ; $680c: $00
	add  hl, de                                      ; $680d: $19
	nop                                              ; $680e: $00
	ld   [$1000], sp                                 ; $680f: $08 $00 $10
	nop                                              ; $6812: $00
	jr   jr_014_6815                                 ; $6813: $18 $00

jr_014_6815:
	push af                                          ; $6815: $f5
	rst  $38                                         ; $6816: $ff
	nop                                              ; $6817: $00
	add  b                                           ; $6818: $80
	rst  $38                                         ; $6819: $ff
	rrca                                             ; $681a: $0f
	nop                                              ; $681b: $00
	db   $fc                                         ; $681c: $fc
	nop                                              ; $681d: $00
	call c, $d800                                    ; $681e: $dc $00 $d8
	nop                                              ; $6821: $00
	ld   [hl], b                                     ; $6822: $70
	nop                                              ; $6823: $00
	ld   [hl], b                                     ; $6824: $70
	nop                                              ; $6825: $00
	rlca                                             ; $6826: $07
	ret  nz                                          ; $6827: $c0

	nop                                              ; $6828: $00
	ret  nz                                          ; $6829: $c0

	ld   hl, sp-$7f                                  ; $682a: $f8 $81
	nop                                              ; $682c: $00
	nop                                              ; $682d: $00
	ld   [bc], a                                     ; $682e: $02
	add  l                                           ; $682f: $85
	ld   b, $00                                      ; $6830: $06 $00
	and  c                                           ; $6832: $a1
	add  e                                           ; $6833: $83
	nop                                              ; $6834: $00
	dec  b                                           ; $6835: $05
	ld   a, $00                                      ; $6836: $3e $00
	ld   h, e                                        ; $6838: $63
	ld   a, a                                        ; $6839: $7f
	nop                                              ; $683a: $00
	ld   a, a                                        ; $683b: $7f
	add  b                                           ; $683c: $80
	nop                                              ; $683d: $00
	add  b                                           ; $683e: $80
	rst  $38                                         ; $683f: $ff
	nop                                              ; $6840: $00
	ld   [hl], a                                     ; $6841: $77
	add  l                                           ; $6842: $85
	nop                                              ; $6843: $00
	inc  bc                                          ; $6844: $03
	ld   [hl], a                                     ; $6845: $77
	ld   a, a                                        ; $6846: $7f
	nop                                              ; $6847: $00
	ld   a, a                                        ; $6848: $7f
	add  b                                           ; $6849: $80
	nop                                              ; $684a: $00
	add  b                                           ; $684b: $80
	rst  $38                                         ; $684c: $ff
	dec  bc                                          ; $684d: $0b
	ld   [hl], a                                     ; $684e: $77
	nop                                              ; $684f: $00
	jr   jr_014_6852                                 ; $6850: $18 $00

jr_014_6852:
	jr   nc, jr_014_6854                             ; $6852: $30 $00

jr_014_6854:
	ld   e, $00                                      ; $6854: $1e $00
	ld   b, c                                        ; $6856: $41
	ld   a, a                                        ; $6857: $7f
	nop                                              ; $6858: $00
	ld   a, a                                        ; $6859: $7f
	add  b                                           ; $685a: $80
	nop                                              ; $685b: $00
	add  b                                           ; $685c: $80
	rst  $38                                         ; $685d: $ff
	nop                                              ; $685e: $00
	ld   a, l                                        ; $685f: $7d
	add  c                                           ; $6860: $81
	nop                                              ; $6861: $00
	rlca                                             ; $6862: $07
	jr   nz, jr_014_6865                             ; $6863: $20 $00

jr_014_6865:
	ld   a, $00                                      ; $6865: $3e $00
	ld   h, e                                        ; $6867: $63
	ld   a, a                                        ; $6868: $7f
	nop                                              ; $6869: $00
	ld   a, a                                        ; $686a: $7f
	add  b                                           ; $686b: $80
	nop                                              ; $686c: $00
	add  b                                           ; $686d: $80
	rst  $38                                         ; $686e: $ff
	inc  b                                           ; $686f: $04
	ld   e, e                                        ; $6870: $5b

jr_014_6871:
	nop                                              ; $6871: $00
	ld   a, [de]                                     ; $6872: $1a
	nop                                              ; $6873: $00
	ld   a, [hl-]                                    ; $6874: $3a
	add  c                                           ; $6875: $81
	nop                                              ; $6876: $00
	inc  bc                                          ; $6877: $03
	ld   a, e                                        ; $6878: $7b
	ld   a, a                                        ; $6879: $7f
	nop                                              ; $687a: $00
	ld   a, a                                        ; $687b: $7f
	add  b                                           ; $687c: $80
	nop                                              ; $687d: $00
	add  b                                           ; $687e: $80
	rst  $38                                         ; $687f: $ff
	nop                                              ; $6880: $00
	ld   a, l                                        ; $6881: $7d
	add  c                                           ; $6882: $81
	nop                                              ; $6883: $00
	rlca                                             ; $6884: $07
	jr   nz, jr_014_6887                             ; $6885: $20 $00

jr_014_6887:
	ld   a, $00                                      ; $6887: $3e $00
	ld   h, e                                        ; $6889: $63
	ld   a, a                                        ; $688a: $7f
	nop                                              ; $688b: $00
	ld   a, a                                        ; $688c: $7f
	add  b                                           ; $688d: $80
	nop                                              ; $688e: $00
	add  b                                           ; $688f: $80
	rst  $38                                         ; $6890: $ff
	nop                                              ; $6891: $00
	ld   e, l                                        ; $6892: $5d
	add  e                                           ; $6893: $83
	nop                                              ; $6894: $00
	dec  b                                           ; $6895: $05
	ld   a, $00                                      ; $6896: $3e $00
	ld   h, e                                        ; $6898: $63
	ld   a, a                                        ; $6899: $7f
	nop                                              ; $689a: $00
	ld   a, a                                        ; $689b: $7f
	add  b                                           ; $689c: $80
	nop                                              ; $689d: $00
	add  b                                           ; $689e: $80
	rst  $38                                         ; $689f: $ff
	ld   [bc], a                                     ; $68a0: $02
	ld   a, e                                        ; $68a1: $7b
	nop                                              ; $68a2: $00
	inc  c                                           ; $68a3: $0c
	add  e                                           ; $68a4: $83
	nop                                              ; $68a5: $00
	inc  bc                                          ; $68a6: $03
	ld   [hl], a                                     ; $68a7: $77
	ld   a, a                                        ; $68a8: $7f
	nop                                              ; $68a9: $00
	ld   a, a                                        ; $68aa: $7f
	add  b                                           ; $68ab: $80
	nop                                              ; $68ac: $00
	add  b                                           ; $68ad: $80
	rst  $38                                         ; $68ae: $ff
	nop                                              ; $68af: $00
	ld   e, l                                        ; $68b0: $5d
	add  e                                           ; $68b1: $83
	nop                                              ; $68b2: $00
	dec  b                                           ; $68b3: $05
	ld   a, $00                                      ; $68b4: $3e $00
	ld   h, e                                        ; $68b6: $63
	ld   a, a                                        ; $68b7: $7f
	nop                                              ; $68b8: $00
	ld   a, a                                        ; $68b9: $7f
	add  b                                           ; $68ba: $80
	nop                                              ; $68bb: $00
	add  b                                           ; $68bc: $80
	rst  $38                                         ; $68bd: $ff
	dec  bc                                          ; $68be: $0b
	ld   h, c                                        ; $68bf: $61
	nop                                              ; $68c0: $00
	inc  e                                           ; $68c1: $1c
	nop                                              ; $68c2: $00
	jr   nz, jr_014_68c5                             ; $68c3: $20 $00

jr_014_68c5:
	ld   a, $00                                      ; $68c5: $3e $00
	ld   h, e                                        ; $68c7: $63
	ld   a, a                                        ; $68c8: $7f
	nop                                              ; $68c9: $00
	ld   a, a                                        ; $68ca: $7f
	add  b                                           ; $68cb: $80
	nop                                              ; $68cc: $00
	add  b                                           ; $68cd: $80
	rst  $38                                         ; $68ce: $ff
	inc  bc                                          ; $68cf: $03
	ld   e, a                                        ; $68d0: $5f
	ld   a, [hl+]                                    ; $68d1: $2a
	ld   a, [bc]                                     ; $68d2: $0a
	ld   a, [hl+]                                    ; $68d3: $2a
	add  b                                           ; $68d4: $80
	ld   l, $80                                      ; $68d5: $2e $80
	ld   a, $80                                      ; $68d7: $3e $80
	ld   a, a                                        ; $68d9: $7f
	ld   bc, $7f2a                                   ; $68da: $01 $2a $7f
	add  b                                           ; $68dd: $80
	nop                                              ; $68de: $00
	add  b                                           ; $68df: $80
	rst  $38                                         ; $68e0: $ff
	nop                                              ; $68e1: $00
	rst  $30                                         ; $68e2: $f7
	add  c                                           ; $68e3: $81
	nop                                              ; $68e4: $00
	inc  b                                           ; $68e5: $04
	jr   jr_014_68e8                                 ; $68e6: $18 $00

jr_014_68e8:
	jr   nc, jr_014_68ea                             ; $68e8: $30 $00

jr_014_68ea:
	jr   nz, jr_014_6871                             ; $68ea: $20 $85

	nop                                              ; $68ec: $00
	nop                                              ; $68ed: $00
	ret  nz                                          ; $68ee: $c0

	add  c                                           ; $68ef: $81
	nop                                              ; $68f0: $00
	ld   [$0080], sp                                 ; $68f1: $08 $80 $00
	add  b                                           ; $68f4: $80
	nop                                              ; $68f5: $00
	ret  nc                                          ; $68f6: $d0

	nop                                              ; $68f7: $00
	ldh  [rP1], a                                    ; $68f8: $e0 $00
	rrca                                             ; $68fa: $0f
	add  b                                           ; $68fb: $80
	rst  $38                                         ; $68fc: $ff
	inc  bc                                          ; $68fd: $03
	nop                                              ; $68fe: $00
	db   $fd                                         ; $68ff: $fd
	nop                                              ; $6900: $00
	ld   [$0081], sp                                 ; $6901: $08 $81 $00
	nop                                              ; $6904: $00
	jr   @-$7d                                       ; $6905: $18 $81

	nop                                              ; $6907: $00
	ld   [bc], a                                     ; $6908: $02
	rlca                                             ; $6909: $07
	nop                                              ; $690a: $00
	ld   [$ff80], a                                  ; $690b: $ea $80 $ff
	rlca                                             ; $690e: $07
	nop                                              ; $690f: $00
	ld   [hl], a                                     ; $6910: $77
	nop                                              ; $6911: $00
	ld   [hl], b                                     ; $6912: $70
	nop                                              ; $6913: $00
	ret  c                                           ; $6914: $d8

	nop                                              ; $6915: $00
	adc  b                                           ; $6916: $88
	add  c                                           ; $6917: $81
	nop                                              ; $6918: $00
	ld   [bc], a                                     ; $6919: $02
	adc  h                                           ; $691a: $8c
	nop                                              ; $691b: $00
	db   $db                                         ; $691c: $db
	add  b                                           ; $691d: $80
	rst  $38                                         ; $691e: $ff
	ld   bc, $fa00                                   ; $691f: $01 $00 $fa
	add  l                                           ; $6922: $85
	ld   b, $00                                      ; $6923: $06 $00
	inc  b                                           ; $6925: $04
	add  c                                           ; $6926: $81
	nop                                              ; $6927: $00
	nop                                              ; $6928: $00
	ld   hl, sp-$80                                  ; $6929: $f8 $80
	ret  nz                                          ; $692b: $c0

	add  c                                           ; $692c: $81
	nop                                              ; $692d: $00
	add  b                                           ; $692e: $80
	ld   a, a                                        ; $692f: $7f
	nop                                              ; $6930: $00
	nop                                              ; $6931: $00
	add  b                                           ; $6932: $80
	ld   a, a                                        ; $6933: $7f
	ld   bc, $3e63                                   ; $6934: $01 $63 $3e
	add  l                                           ; $6937: $85
	nop                                              ; $6938: $00
	ld   bc, $005d                                   ; $6939: $01 $5d $00
	add  b                                           ; $693c: $80
	ld   a, a                                        ; $693d: $7f
	nop                                              ; $693e: $00
	nop                                              ; $693f: $00
	add  b                                           ; $6940: $80
	ld   a, a                                        ; $6941: $7f
	inc  bc                                          ; $6942: $03
	ld   [hl], a                                     ; $6943: $77
	stop                                             ; $6944: $10 $00
	db   $10                                         ; $6946: $10
	add  e                                           ; $6947: $83
	nop                                              ; $6948: $00
	ld   bc, $0077                                   ; $6949: $01 $77 $00
	add  b                                           ; $694c: $80
	ld   a, a                                        ; $694d: $7f
	nop                                              ; $694e: $00
	nop                                              ; $694f: $00
	add  b                                           ; $6950: $80
	ld   a, a                                        ; $6951: $7f
	ld   bc, $3e63                                   ; $6952: $01 $63 $3e
	add  c                                           ; $6955: $81
	nop                                              ; $6956: $00
	dec  b                                           ; $6957: $05
	jr   nz, jr_014_695a                             ; $6958: $20 $00

jr_014_695a:
	ld   b, $00                                      ; $695a: $06 $00
	ld   a, e                                        ; $695c: $7b
	nop                                              ; $695d: $00
	add  b                                           ; $695e: $80
	ld   a, a                                        ; $695f: $7f
	nop                                              ; $6960: $00
	nop                                              ; $6961: $00
	add  b                                           ; $6962: $80
	ld   a, a                                        ; $6963: $7f
	inc  bc                                          ; $6964: $03
	ld   h, e                                        ; $6965: $63
	ld   a, $00                                      ; $6966: $3e $00
	jr   nz, @-$7d                                   ; $6968: $20 $81

	nop                                              ; $696a: $00
	inc  bc                                          ; $696b: $03
	ld   e, $00                                      ; $696c: $1e $00
	ld   h, e                                        ; $696e: $63
	nop                                              ; $696f: $00
	add  b                                           ; $6970: $80
	ld   a, a                                        ; $6971: $7f
	nop                                              ; $6972: $00
	nop                                              ; $6973: $00
	add  b                                           ; $6974: $80
	ld   a, a                                        ; $6975: $7f
	nop                                              ; $6976: $00
	ld   [hl], a                                     ; $6977: $77
	add  b                                           ; $6978: $80
	nop                                              ; $6979: $00
	ld   [bc], a                                     ; $697a: $02
	jr   jr_014_697d                                 ; $697b: $18 $00

jr_014_697d:
	inc  b                                           ; $697d: $04
	add  c                                           ; $697e: $81
	nop                                              ; $697f: $00
	ld   bc, $006b                                   ; $6980: $01 $6b $00
	add  b                                           ; $6983: $80
	ld   a, a                                        ; $6984: $7f
	nop                                              ; $6985: $00
	nop                                              ; $6986: $00
	add  b                                           ; $6987: $80
	ld   a, a                                        ; $6988: $7f
	ld   bc, $1e41                                   ; $6989: $01 $41 $1e
	add  e                                           ; $698c: $83
	nop                                              ; $698d: $00
	inc  bc                                          ; $698e: $03
	inc  e                                           ; $698f: $1c
	nop                                              ; $6990: $00
	ld   b, e                                        ; $6991: $43
	nop                                              ; $6992: $00
	add  b                                           ; $6993: $80
	ld   a, a                                        ; $6994: $7f
	nop                                              ; $6995: $00
	nop                                              ; $6996: $00
	add  b                                           ; $6997: $80
	ld   a, a                                        ; $6998: $7f
	ld   bc, $3e63                                   ; $6999: $01 $63 $3e
	add  c                                           ; $699c: $81
	nop                                              ; $699d: $00
	dec  b                                           ; $699e: $05
	ld   [bc], a                                     ; $699f: $02
	nop                                              ; $69a0: $00
	inc  e                                           ; $69a1: $1c
	nop                                              ; $69a2: $00
	ld   b, e                                        ; $69a3: $43
	nop                                              ; $69a4: $00
	add  b                                           ; $69a5: $80
	ld   a, a                                        ; $69a6: $7f
	nop                                              ; $69a7: $00
	nop                                              ; $69a8: $00
	add  b                                           ; $69a9: $80
	ld   a, a                                        ; $69aa: $7f
	ld   bc, $1c41                                   ; $69ab: $01 $41 $1c
	add  c                                           ; $69ae: $81
	nop                                              ; $69af: $00
	nop                                              ; $69b0: $00
	ld   h, $81                                      ; $69b1: $26 $81
	nop                                              ; $69b3: $00
	ld   bc, $007b                                   ; $69b4: $01 $7b $00
	add  b                                           ; $69b7: $80
	ld   a, a                                        ; $69b8: $7f
	nop                                              ; $69b9: $00
	nop                                              ; $69ba: $00
	add  b                                           ; $69bb: $80
	ld   a, a                                        ; $69bc: $7f
	ld   bc, $3e63                                   ; $69bd: $01 $63 $3e
	add  e                                           ; $69c0: $83
	nop                                              ; $69c1: $00
	inc  bc                                          ; $69c2: $03
	ld   a, $00                                      ; $69c3: $3e $00
	ld   h, e                                        ; $69c5: $63
	nop                                              ; $69c6: $00
	add  b                                           ; $69c7: $80
	ld   a, a                                        ; $69c8: $7f
	nop                                              ; $69c9: $00
	nop                                              ; $69ca: $00
	add  b                                           ; $69cb: $80
	ld   a, a                                        ; $69cc: $7f
	ld   bc, $3e63                                   ; $69cd: $01 $63 $3e

jr_014_69d0:
	add  l                                           ; $69d0: $85
	nop                                              ; $69d1: $00
	ld   bc, $005d                                   ; $69d2: $01 $5d $00
	add  b                                           ; $69d5: $80
	ld   a, a                                        ; $69d6: $7f
	nop                                              ; $69d7: $00
	ld   a, [hl+]                                    ; $69d8: $2a
	add  c                                           ; $69d9: $81
	ld   a, a                                        ; $69da: $7f
	add  b                                           ; $69db: $80
	ld   a, $80                                      ; $69dc: $3e $80
	ld   l, $01                                      ; $69de: $2e $01
	ld   [hl+], a                                    ; $69e0: $22
	ld   a, [bc]                                     ; $69e1: $0a
	add  b                                           ; $69e2: $80
	ld   a, [hl+]                                    ; $69e3: $2a
	nop                                              ; $69e4: $00
	add  d                                           ; $69e5: $82
	add  a                                           ; $69e6: $87
	nop                                              ; $69e7: $00
	nop                                              ; $69e8: $00
	and  h                                           ; $69e9: $a4
	add  c                                           ; $69ea: $81
	nop                                              ; $69eb: $00
	inc  c                                           ; $69ec: $0c
	and  b                                           ; $69ed: $a0
	nop                                              ; $69ee: $00
	call nz, $3fff                                   ; $69ef: $c4 $ff $3f
	rst  $38                                         ; $69f2: $ff
	nop                                              ; $69f3: $00
	rst  $38                                         ; $69f4: $ff
	cp   $ff                                         ; $69f5: $fe $ff
	ld   bc, $00ff                                   ; $69f7: $01 $ff $00
	add  c                                           ; $69fa: $81
	rst  $38                                         ; $69fb: $ff
	nop                                              ; $69fc: $00
	nop                                              ; $69fd: $00
	add  e                                           ; $69fe: $83
	rst  $38                                         ; $69ff: $ff
	ld   [bc], a                                     ; $6a00: $02

jr_014_6a01:
	nop                                              ; $6a01: $00
	rst  $38                                         ; $6a02: $ff
	nop                                              ; $6a03: $00
	add  c                                           ; $6a04: $81
	rst  $38                                         ; $6a05: $ff
	nop                                              ; $6a06: $00
	nop                                              ; $6a07: $00
	add  c                                           ; $6a08: $81
	rst  $38                                         ; $6a09: $ff
	nop                                              ; $6a0a: $00
	nop                                              ; $6a0b: $00
	add  c                                           ; $6a0c: $81
	rst  $38                                         ; $6a0d: $ff
	ld   c, $80                                      ; $6a0e: $0e $80
	rst  $38                                         ; $6a10: $ff
	ld   a, a                                        ; $6a11: $7f
	rst  $38                                         ; $6a12: $ff
	nop                                              ; $6a13: $00
	rst  $38                                         ; $6a14: $ff
	ldh  a, [rIE]                                    ; $6a15: $f0 $ff
	rrca                                             ; $6a17: $0f
	rst  $38                                         ; $6a18: $ff
	ret  nz                                          ; $6a19: $c0

	rst  $38                                         ; $6a1a: $ff
	ccf                                              ; $6a1b: $3f
	rst  $38                                         ; $6a1c: $ff
	nop                                              ; $6a1d: $00
	add  c                                           ; $6a1e: $81
	rst  $38                                         ; $6a1f: $ff
	ld   [$fffc], sp                                 ; $6a20: $08 $fc $ff
	inc  b                                           ; $6a23: $04
	rst  $38                                         ; $6a24: $ff
	rlca                                             ; $6a25: $07
	rst  $38                                         ; $6a26: $ff
	add  b                                           ; $6a27: $80
	rst  $38                                         ; $6a28: $ff
	ld   a, a                                        ; $6a29: $7f
	add  c                                           ; $6a2a: $81
	rst  $38                                         ; $6a2b: $ff
	nop                                              ; $6a2c: $00
	ld   e, l                                        ; $6a2d: $5d
	add  l                                           ; $6a2e: $85
	nop                                              ; $6a2f: $00
	nop                                              ; $6a30: $00
	ld   e, l                                        ; $6a31: $5d
	add  b                                           ; $6a32: $80
	ld   h, e                                        ; $6a33: $63
	ld   [bc], a                                     ; $6a34: $02
	ld   a, a                                        ; $6a35: $7f
	nop                                              ; $6a36: $00
	ld   a, a                                        ; $6a37: $7f
	add  b                                           ; $6a38: $80
	nop                                              ; $6a39: $00
	nop                                              ; $6a3a: $00
	ld   [hl], a                                     ; $6a3b: $77
	add  l                                           ; $6a3c: $85
	nop                                              ; $6a3d: $00
	nop                                              ; $6a3e: $00
	ld   [hl], a                                     ; $6a3f: $77
	add  b                                           ; $6a40: $80
	ld   h, e                                        ; $6a41: $63
	ld   [bc], a                                     ; $6a42: $02
	ld   a, a                                        ; $6a43: $7f
	nop                                              ; $6a44: $00
	ld   a, a                                        ; $6a45: $7f
	add  b                                           ; $6a46: $80
	nop                                              ; $6a47: $00
	inc  b                                           ; $6a48: $04
	ld   [hl], a                                     ; $6a49: $77
	nop                                              ; $6a4a: $00
	jr   jr_014_6a4d                                 ; $6a4b: $18 $00

jr_014_6a4d:
	jr   nc, jr_014_69d0                             ; $6a4d: $30 $81

	nop                                              ; $6a4f: $00
	nop                                              ; $6a50: $00
	ld   e, a                                        ; $6a51: $5f
	add  b                                           ; $6a52: $80
	ld   b, c                                        ; $6a53: $41
	ld   [bc], a                                     ; $6a54: $02
	ld   a, a                                        ; $6a55: $7f
	nop                                              ; $6a56: $00
	ld   a, a                                        ; $6a57: $7f
	add  b                                           ; $6a58: $80
	nop                                              ; $6a59: $00
	nop                                              ; $6a5a: $00
	ld   a, l                                        ; $6a5b: $7d
	add  e                                           ; $6a5c: $83
	nop                                              ; $6a5d: $00
	ld   [bc], a                                     ; $6a5e: $02
	jr   nz, jr_014_6a61                             ; $6a5f: $20 $00

jr_014_6a61:
	ld   e, l                                        ; $6a61: $5d
	add  b                                           ; $6a62: $80
	ld   h, e                                        ; $6a63: $63
	ld   [bc], a                                     ; $6a64: $02
	ld   a, a                                        ; $6a65: $7f
	nop                                              ; $6a66: $00
	ld   a, a                                        ; $6a67: $7f
	add  b                                           ; $6a68: $80
	nop                                              ; $6a69: $00
	nop                                              ; $6a6a: $00
	ld   e, e                                        ; $6a6b: $5b
	add  c                                           ; $6a6c: $81
	nop                                              ; $6a6d: $00
	inc  bc                                          ; $6a6e: $03
	ld   a, [de]                                     ; $6a6f: $1a
	nop                                              ; $6a70: $00
	ld   a, [hl-]                                    ; $6a71: $3a
	nop                                              ; $6a72: $00
	add  c                                           ; $6a73: $81
	ld   a, e                                        ; $6a74: $7b
	ld   [bc], a                                     ; $6a75: $02
	ld   a, a                                        ; $6a76: $7f
	nop                                              ; $6a77: $00
	ld   a, a                                        ; $6a78: $7f
	add  b                                           ; $6a79: $80
	nop                                              ; $6a7a: $00
	ld   [bc], a                                     ; $6a7b: $02
	ld   e, l                                        ; $6a7c: $5d
	nop                                              ; $6a7d: $00
	jr   nz, jr_014_6a01                             ; $6a7e: $20 $81

	nop                                              ; $6a80: $00
	ld   [bc], a                                     ; $6a81: $02
	jr   nz, jr_014_6a84                             ; $6a82: $20 $00

jr_014_6a84:
	ld   e, l                                        ; $6a84: $5d
	add  b                                           ; $6a85: $80
	ld   h, e                                        ; $6a86: $63
	ld   [bc], a                                     ; $6a87: $02
	ld   a, a                                        ; $6a88: $7f
	nop                                              ; $6a89: $00
	ld   a, a                                        ; $6a8a: $7f
	add  b                                           ; $6a8b: $80
	nop                                              ; $6a8c: $00

jr_014_6a8d:
	nop                                              ; $6a8d: $00
	ld   e, l                                        ; $6a8e: $5d
	add  l                                           ; $6a8f: $85
	nop                                              ; $6a90: $00
	nop                                              ; $6a91: $00
	ld   e, l                                        ; $6a92: $5d
	add  b                                           ; $6a93: $80
	ld   h, e                                        ; $6a94: $63
	ld   [bc], a                                     ; $6a95: $02
	ld   a, a                                        ; $6a96: $7f
	nop                                              ; $6a97: $00
	ld   a, a                                        ; $6a98: $7f
	add  b                                           ; $6a99: $80
	nop                                              ; $6a9a: $00
	ld   [bc], a                                     ; $6a9b: $02
	ld   a, e                                        ; $6a9c: $7b
	nop                                              ; $6a9d: $00
	inc  c                                           ; $6a9e: $0c
	add  e                                           ; $6a9f: $83
	nop                                              ; $6aa0: $00
	add  c                                           ; $6aa1: $81
	ld   [hl], a                                     ; $6aa2: $77
	ld   [bc], a                                     ; $6aa3: $02
	ld   a, a                                        ; $6aa4: $7f
	nop                                              ; $6aa5: $00
	ld   a, a                                        ; $6aa6: $7f
	add  b                                           ; $6aa7: $80
	nop                                              ; $6aa8: $00
	nop                                              ; $6aa9: $00
	ld   e, l                                        ; $6aaa: $5d
	add  l                                           ; $6aab: $85
	nop                                              ; $6aac: $00
	nop                                              ; $6aad: $00
	ld   e, l                                        ; $6aae: $5d
	add  b                                           ; $6aaf: $80
	ld   h, e                                        ; $6ab0: $63
	ld   [bc], a                                     ; $6ab1: $02
	ld   a, a                                        ; $6ab2: $7f
	nop                                              ; $6ab3: $00
	ld   a, a                                        ; $6ab4: $7f
	add  b                                           ; $6ab5: $80
	nop                                              ; $6ab6: $00
	ld   [bc], a                                     ; $6ab7: $02
	ld   h, c                                        ; $6ab8: $61
	nop                                              ; $6ab9: $00
	inc  e                                           ; $6aba: $1c
	add  c                                           ; $6abb: $81
	nop                                              ; $6abc: $00
	ld   [bc], a                                     ; $6abd: $02
	jr   nz, jr_014_6ac0                             ; $6abe: $20 $00

jr_014_6ac0:
	ld   e, l                                        ; $6ac0: $5d

jr_014_6ac1:
	add  b                                           ; $6ac1: $80
	ld   h, e                                        ; $6ac2: $63
	ld   [bc], a                                     ; $6ac3: $02
	ld   a, a                                        ; $6ac4: $7f
	nop                                              ; $6ac5: $00
	ld   a, a                                        ; $6ac6: $7f
	add  b                                           ; $6ac7: $80
	nop                                              ; $6ac8: $00
	inc  bc                                          ; $6ac9: $03
	ld   e, a                                        ; $6aca: $5f
	ld   a, [hl+]                                    ; $6acb: $2a
	ld   a, [bc]                                     ; $6acc: $0a
	ld   a, [hl+]                                    ; $6acd: $2a
	add  b                                           ; $6ace: $80
	ld   l, $80                                      ; $6acf: $2e $80
	ld   a, $82                                      ; $6ad1: $3e $82
	ld   a, a                                        ; $6ad3: $7f
	ld   bc, $7f2a                                   ; $6ad4: $01 $2a $7f
	add  b                                           ; $6ad7: $80
	nop                                              ; $6ad8: $00
	nop                                              ; $6ad9: $00
	rst  $30                                         ; $6ada: $f7
	add  c                                           ; $6adb: $81
	nop                                              ; $6adc: $00
	inc  b                                           ; $6add: $04
	jr   jr_014_6ae0                                 ; $6ade: $18 $00

jr_014_6ae0:
	ld   [hl], b                                     ; $6ae0: $70
	nop                                              ; $6ae1: $00
	ld   h, b                                        ; $6ae2: $60

jr_014_6ae3:
	add  l                                           ; $6ae3: $85
	nop                                              ; $6ae4: $00
	ld   bc, $f807                                   ; $6ae5: $01 $07 $f8
	adc  h                                           ; $6ae8: $8c
	rst  $38                                         ; $6ae9: $ff
	add  b                                           ; $6aea: $80

jr_014_6aeb:
	nop                                              ; $6aeb: $00
	adc  [hl]                                        ; $6aec: $8e
	rst  $38                                         ; $6aed: $ff
	nop                                              ; $6aee: $00

jr_014_6aef:
	nop                                              ; $6aef: $00
	add  c                                           ; $6af0: $81
	ld   hl, sp+$02                                  ; $6af1: $f8 $02
	inc  b                                           ; $6af3: $04
	db   $fc                                         ; $6af4: $fc
	inc  b                                           ; $6af5: $04
	add  b                                           ; $6af6: $80
	db   $fc                                         ; $6af7: $fc
	nop                                              ; $6af8: $00
	rrca                                             ; $6af9: $0f
	add  c                                           ; $6afa: $81
	rst  $38                                         ; $6afb: $ff
	ld   bc, $545f                                   ; $6afc: $01 $5f $54
	add  c                                           ; $6aff: $81
	rst  $38                                         ; $6b00: $ff
	adc  d                                           ; $6b01: $8a
	ld   a, a                                        ; $6b02: $7f
	nop                                              ; $6b03: $00
	rst  $38                                         ; $6b04: $ff
	add  e                                           ; $6b05: $83
	nop                                              ; $6b06: $00
	ld   [bc], a                                     ; $6b07: $02
	ld   a, h                                        ; $6b08: $7c
	nop                                              ; $6b09: $00
	jr   c, jr_014_6a8d                              ; $6b0a: $38 $81

	nop                                              ; $6b0c: $00
	inc  b                                           ; $6b0d: $04
	ret  nz                                          ; $6b0e: $c0

	nop                                              ; $6b0f: $00
	add  b                                           ; $6b10: $80
	nop                                              ; $6b11: $00
	inc  b                                           ; $6b12: $04

jr_014_6b13:
	add  c                                           ; $6b13: $81
	nop                                              ; $6b14: $00
	ld   b, $7e                                      ; $6b15: $06 $7e
	nop                                              ; $6b17: $00
	ld   a, [hl]                                     ; $6b18: $7e
	nop                                              ; $6b19: $00
	ld   a, [hl]                                     ; $6b1a: $7e
	nop                                              ; $6b1b: $00
	ld   a, h                                        ; $6b1c: $7c
	add  e                                           ; $6b1d: $83
	nop                                              ; $6b1e: $00
	nop                                              ; $6b1f: $00
	ld   [bc], a                                     ; $6b20: $02
	add  c                                           ; $6b21: $81
	nop                                              ; $6b22: $00
	inc  c                                           ; $6b23: $0c
	ld   [bc], a                                     ; $6b24: $02
	nop                                              ; $6b25: $00
	ld   b, $00                                      ; $6b26: $06 $00
	inc  c                                           ; $6b28: $0c
	nop                                              ; $6b29: $00
	stop                                             ; $6b2a: $10 $00
	jr   nc, jr_014_6b2e                             ; $6b2c: $30 $00

jr_014_6b2e:
	ldh  [rP1], a                                    ; $6b2e: $e0 $00
	ret  z                                           ; $6b30: $c8

	add  e                                           ; $6b31: $83
	nop                                              ; $6b32: $00
	ld   [bc], a                                     ; $6b33: $02
	cp   $00                                         ; $6b34: $fe $00
	sbc  $81                                         ; $6b36: $de $81
	nop                                              ; $6b38: $00
	inc  b                                           ; $6b39: $04
	sbc  $00                                         ; $6b3a: $de $00
	sbc  $00                                         ; $6b3c: $de $00
	jr   nz, jr_014_6ac1                             ; $6b3e: $20 $81

	nop                                              ; $6b40: $00
	inc  c                                           ; $6b41: $0c
	jr   c, jr_014_6b44                              ; $6b42: $38 $00

jr_014_6b44:
	jr   c, jr_014_6b46                              ; $6b44: $38 $00

jr_014_6b46:
	cp   $00                                         ; $6b46: $fe $00
	ld   a, [$0c00]                                  ; $6b48: $fa $00 $0c
	nop                                              ; $6b4b: $00
	jr   jr_014_6b4e                                 ; $6b4c: $18 $00

jr_014_6b4e:
	db   $10                                         ; $6b4e: $10
	add  c                                           ; $6b4f: $81
	nop                                              ; $6b50: $00

jr_014_6b51:
	nop                                              ; $6b51: $00
	jr   nz, @-$7d                                   ; $6b52: $20 $81

	nop                                              ; $6b54: $00
	ld   [$00de], sp                                 ; $6b55: $08 $de $00
	sbc  $00                                         ; $6b58: $de $00
	call z, $dc00                                    ; $6b5a: $cc $00 $dc
	nop                                              ; $6b5d: $00
	jr   nc, jr_014_6ae3                             ; $6b5e: $30 $83

	nop                                              ; $6b60: $00
	ld   b, $fe                                      ; $6b61: $06 $fe
	nop                                              ; $6b63: $00
	or   $00                                         ; $6b64: $f6 $00
	jr   jr_014_6b68                                 ; $6b66: $18 $00

jr_014_6b68:
	jr   nc, jr_014_6aeb                             ; $6b68: $30 $81

	nop                                              ; $6b6a: $00
	nop                                              ; $6b6b: $00
	jr   nz, jr_014_6aef                             ; $6b6c: $20 $81

	nop                                              ; $6b6e: $00
	ld   [$0004], sp                                 ; $6b6f: $08 $04 $00
	inc  c                                           ; $6b72: $0c
	nop                                              ; $6b73: $00
	jr   jr_014_6b76                                 ; $6b74: $18 $00

jr_014_6b76:
	jr   nc, jr_014_6b78                             ; $6b76: $30 $00

jr_014_6b78:
	ld   h, b                                        ; $6b78: $60
	add  c                                           ; $6b79: $81
	nop                                              ; $6b7a: $00

jr_014_6b7b:
	db   $10                                         ; $6b7b: $10
	ld   b, b                                        ; $6b7c: $40
	nop                                              ; $6b7d: $00
	ld   a, [bc]                                     ; $6b7e: $0a
	nop                                              ; $6b7f: $00
	ld   b, b                                        ; $6b80: $40
	nop                                              ; $6b81: $00
	cp   d                                           ; $6b82: $ba
	nop                                              ; $6b83: $00
	or   b                                           ; $6b84: $b0
	nop                                              ; $6b85: $00
	ld   e, $00                                      ; $6b86: $1e $00
	inc  e                                           ; $6b88: $1c
	nop                                              ; $6b89: $00
	ld   [bc], a                                     ; $6b8a: $02
	nop                                              ; $6b8b: $00
	ld   b, b                                        ; $6b8c: $40
	add  c                                           ; $6b8d: $81
	nop                                              ; $6b8e: $00
	nop                                              ; $6b8f: $00
	jr   nz, jr_014_6b13                             ; $6b90: $20 $81

	nop                                              ; $6b92: $00
	ld   [$00de], sp                                 ; $6b93: $08 $de $00
	xor  $00                                         ; $6b96: $ee $00
	jr   jr_014_6b9a                                 ; $6b98: $18 $00

jr_014_6b9a:
	inc  c                                           ; $6b9a: $0c

jr_014_6b9b:
	nop                                              ; $6b9b: $00
	inc  b                                           ; $6b9c: $04
	add  e                                           ; $6b9d: $83
	nop                                              ; $6b9e: $00
	inc  b                                           ; $6b9f: $04
	add  b                                           ; $6ba0: $80
	nop                                              ; $6ba1: $00
	inc  b                                           ; $6ba2: $04
	nop                                              ; $6ba3: $00
	ld   b, $83                                      ; $6ba4: $06 $83
	nop                                              ; $6ba6: $00
	nop                                              ; $6ba7: $00
	add  d                                           ; $6ba8: $82
	add  c                                           ; $6ba9: $81
	nop                                              ; $6baa: $00
	nop                                              ; $6bab: $00
	ld   b, h                                        ; $6bac: $44
	add  c                                           ; $6bad: $81
	nop                                              ; $6bae: $00
	ld   [bc], a                                     ; $6baf: $02
	cp   d                                           ; $6bb0: $ba
	nop                                              ; $6bb1: $00
	cp   d                                           ; $6bb2: $ba
	add  c                                           ; $6bb3: $81
	nop                                              ; $6bb4: $00
	ld   [bc], a                                     ; $6bb5: $02
	ld   b, b                                        ; $6bb6: $40
	nop                                              ; $6bb7: $00
	ld   bc, $0a8d                                   ; $6bb8: $01 $8d $0a
	ld   [$000f], sp                                 ; $6bbb: $08 $0f $00
	jr   nz, jr_014_6bc0                             ; $6bbe: $20 $00

jr_014_6bc0:
	ld   [hl], b                                     ; $6bc0: $70
	nop                                              ; $6bc1: $00
	ld   [hl], b                                     ; $6bc2: $70
	nop                                              ; $6bc3: $00
	jr   nz, jr_014_6b51                             ; $6bc4: $20 $8b

	nop                                              ; $6bc6: $00
	ld   [bc], a                                     ; $6bc7: $02
	ld   a, h                                        ; $6bc8: $7c

jr_014_6bc9:
	nop                                              ; $6bc9: $00
	jr   c, @-$7d                                    ; $6bca: $38 $81

	nop                                              ; $6bcc: $00
	inc  b                                           ; $6bcd: $04
	ldh  [rP1], a                                    ; $6bce: $e0 $00
	or   b                                           ; $6bd0: $b0
	nop                                              ; $6bd1: $00
	sub  h                                           ; $6bd2: $94
	adc  l                                           ; $6bd3: $8d
	ld   a, a                                        ; $6bd4: $7f

jr_014_6bd5:
	nop                                              ; $6bd5: $00
	rst  $30                                         ; $6bd6: $f7
	add  c                                           ; $6bd7: $81
	nop                                              ; $6bd8: $00
	inc  b                                           ; $6bd9: $04
	jr   jr_014_6bdc                                 ; $6bda: $18 $00

jr_014_6bdc:
	jr   nc, jr_014_6bde                             ; $6bdc: $30 $00

jr_014_6bde:
	jr   nz, @-$79                                   ; $6bde: $20 $85

	nop                                              ; $6be0: $00
	ld   [$0002], sp                                 ; $6be1: $08 $02 $00
	ld   b, $00                                      ; $6be4: $06 $00
	inc  c                                           ; $6be6: $0c

jr_014_6be7:
	nop                                              ; $6be7: $00
	jr   c, jr_014_6bea                              ; $6be8: $38 $00

jr_014_6bea:
	jr   nc, @-$79                                   ; $6bea: $30 $85

	nop                                              ; $6bec: $00
	nop                                              ; $6bed: $00
	ld   [$0085], sp                                 ; $6bee: $08 $85 $00
	nop                                              ; $6bf1: $00
	ld   [$0085], sp                                 ; $6bf2: $08 $85 $00
	nop                                              ; $6bf5: $00
	jr   nz, jr_014_6b7b                             ; $6bf6: $20 $83

	nop                                              ; $6bf8: $00
	ld   [bc], a                                     ; $6bf9: $02
	ld   a, $00                                      ; $6bfa: $3e $00
	ld   e, $85                                      ; $6bfc: $1e $85
	nop                                              ; $6bfe: $00
	ld   [$0028], sp                                 ; $6bff: $08 $28 $00
	ld   h, b                                        ; $6c02: $60
	nop                                              ; $6c03: $00
	ret  nz                                          ; $6c04: $c0

	nop                                              ; $6c05: $00
	ld   c, $00                                      ; $6c06: $0e $00
	add  [hl]                                        ; $6c08: $86
	add  l                                           ; $6c09: $85
	nop                                              ; $6c0a: $00
	ld   [$0050], sp                                 ; $6c0b: $08 $50 $00
	ret  nz                                          ; $6c0e: $c0

	nop                                              ; $6c0f: $00
	stop                                             ; $6c10: $10 $00
	cp   $00                                         ; $6c12: $fe $00
	ld   a, [hl]                                     ; $6c14: $7e
	add  l                                           ; $6c15: $85
	nop                                              ; $6c16: $00
	nop                                              ; $6c17: $00
	jr   nz, jr_014_6b9b                             ; $6c18: $20 $81

	nop                                              ; $6c1a: $00
	inc  b                                           ; $6c1b: $04
	jr   nc, jr_014_6c1e                             ; $6c1c: $30 $00

jr_014_6c1e:
	inc  e                                           ; $6c1e: $1c
	nop                                              ; $6c1f: $00
	inc  c                                           ; $6c20: $0c
	add  l                                           ; $6c21: $85
	nop                                              ; $6c22: $00
	ld   [$0020], sp                                 ; $6c23: $08 $20 $00
	jr   nc, jr_014_6c28                             ; $6c26: $30 $00

jr_014_6c28:
	jr   jr_014_6c2a                                 ; $6c28: $18 $00

jr_014_6c2a:
	inc  c                                           ; $6c2a: $0c
	nop                                              ; $6c2b: $00
	inc  b                                           ; $6c2c: $04
	add  l                                           ; $6c2d: $85
	nop                                              ; $6c2e: $00
	nop                                              ; $6c2f: $00
	add  b                                           ; $6c30: $80
	add  c                                           ; $6c31: $81
	nop                                              ; $6c32: $00
	inc  b                                           ; $6c33: $04
	stop                                             ; $6c34: $10 $00
	ld   e, $00                                      ; $6c36: $1e $00
	adc  [hl]                                        ; $6c38: $8e
	add  a                                           ; $6c39: $87
	nop                                              ; $6c3a: $00
	ld   b, $80                                      ; $6c3b: $06 $80
	nop                                              ; $6c3d: $00
	ret  nz                                          ; $6c3e: $c0

	nop                                              ; $6c3f: $00
	ld   a, b                                        ; $6c40: $78
	nop                                              ; $6c41: $00
	jr   c, jr_014_6bc9                              ; $6c42: $38 $85

	nop                                              ; $6c44: $00
	nop                                              ; $6c45: $00
	add  d                                           ; $6c46: $82
	add  c                                           ; $6c47: $81
	nop                                              ; $6c48: $00
	inc  b                                           ; $6c49: $04
	jp   nc, $7000                           ; $6c4a: $d2 $00 $70

	nop                                              ; $6c4d: $00
	jr   nz, jr_014_6bd5                             ; $6c4e: $20 $85

	nop                                              ; $6c50: $00
	nop                                              ; $6c51: $00
	inc  b                                           ; $6c52: $04
	add  c                                           ; $6c53: $81
	nop                                              ; $6c54: $00
	inc  b                                           ; $6c55: $04
	inc  c                                           ; $6c56: $0c
	nop                                              ; $6c57: $00
	jr   jr_014_6c5a                                 ; $6c58: $18 $00

jr_014_6c5a:
	db   $10                                         ; $6c5a: $10
	add  a                                           ; $6c5b: $87
	nop                                              ; $6c5c: $00
	nop                                              ; $6c5d: $00
	ld   a, [bc]                                     ; $6c5e: $0a
	add  c                                           ; $6c5f: $81
	nop                                              ; $6c60: $00
	ld   [bc], a                                     ; $6c61: $02
	halt                                             ; $6c62: $76
	nop                                              ; $6c63: $00
	jr   c, jr_014_6be7                              ; $6c64: $38 $81

	nop                                              ; $6c66: $00
	ld   c, $e0                                      ; $6c67: $0e $e0
	nop                                              ; $6c69: $00
	or   b                                           ; $6c6a: $b0
	nop                                              ; $6c6b: $00
	inc  d                                           ; $6c6c: $14
	nop                                              ; $6c6d: $00
	inc  b                                           ; $6c6e: $04
	nop                                              ; $6c6f: $00
	ld   c, $00                                      ; $6c70: $0e $00
	ld   c, $00                                      ; $6c72: $0e $00
	ld   a, d                                        ; $6c74: $7a
	nop                                              ; $6c75: $00
	ld   a, h                                        ; $6c76: $7c
	add  e                                           ; $6c77: $83
	nop                                              ; $6c78: $00
	nop                                              ; $6c79: $00
	ld   [bc], a                                     ; $6c7a: $02
	add  c                                           ; $6c7b: $81
	nop                                              ; $6c7c: $00
	nop                                              ; $6c7d: $00
	add  h                                           ; $6c7e: $84
	add  c                                           ; $6c7f: $81
	nop                                              ; $6c80: $00
	ld   [bc], a                                     ; $6c81: $02
	ld   a, [hl-]                                    ; $6c82: $3a
	nop                                              ; $6c83: $00
	ld   a, [hl-]                                    ; $6c84: $3a
	add  e                                           ; $6c85: $83
	nop                                              ; $6c86: $00
	ld   [$0080], sp                                 ; $6c87: $08 $80 $00
	ld   e, $00                                      ; $6c8a: $1e $00
	ld   c, $00                                      ; $6c8c: $0e $00
	ld   [$ee00], a                                  ; $6c8e: $ea $00 $ee
	add  c                                           ; $6c91: $81
	nop                                              ; $6c92: $00
	inc  b                                           ; $6c93: $04
	ld   b, h                                        ; $6c94: $44
	nop                                              ; $6c95: $00
	ld   b, $00                                      ; $6c96: $06 $00
	ld   d, d                                        ; $6c98: $52
	add  c                                           ; $6c99: $81
	nop                                              ; $6c9a: $00
	nop                                              ; $6c9b: $00
	add  b                                           ; $6c9c: $80
	add  c                                           ; $6c9d: $81
	nop                                              ; $6c9e: $00
	ld   [$00c2], sp                                 ; $6c9f: $08 $c2 $00
	ld   c, $00                                      ; $6ca2: $0e $00
	ld   a, h                                        ; $6ca4: $7c
	nop                                              ; $6ca5: $00
	stop                                             ; $6ca6: $10 $00
	jr   nz, @-$71                                   ; $6ca8: $20 $8d

	nop                                              ; $6caa: $00
	add  b                                           ; $6cab: $80
	rst  $38                                         ; $6cac: $ff
	inc  b                                           ; $6cad: $04
	ldh  a, [rIE]                                    ; $6cae: $f0 $ff
	rrca                                             ; $6cb0: $0f
	rst  $38                                         ; $6cb1: $ff
	nop                                              ; $6cb2: $00
	add  c                                           ; $6cb3: $81
	rst  $38                                         ; $6cb4: $ff
	ld   [bc], a                                     ; $6cb5: $02
	nop                                              ; $6cb6: $00
	rst  $38                                         ; $6cb7: $ff
	nop                                              ; $6cb8: $00
	add  e                                           ; $6cb9: $83
	rst  $38                                         ; $6cba: $ff
	inc  b                                           ; $6cbb: $04
	nop                                              ; $6cbc: $00
	rst  $38                                         ; $6cbd: $ff
	ld   hl, sp-$01                                  ; $6cbe: $f8 $ff

Jump_014_6cc0:
	rlca                                             ; $6cc0: $07
	add  c                                           ; $6cc1: $81
	rst  $38                                         ; $6cc2: $ff
	ld   [bc], a                                     ; $6cc3: $02
	nop                                              ; $6cc4: $00
	rst  $38                                         ; $6cc5: $ff
	nop                                              ; $6cc6: $00
	add  c                                           ; $6cc7: $81
	rst  $38                                         ; $6cc8: $ff
	inc  b                                           ; $6cc9: $04
	ld   hl, sp-$01                                  ; $6cca: $f8 $ff
	rlca                                             ; $6ccc: $07
	rst  $38                                         ; $6ccd: $ff
	nop                                              ; $6cce: $00
	add  c                                           ; $6ccf: $81
	rst  $38                                         ; $6cd0: $ff
	inc  b                                           ; $6cd1: $04
	add  b                                           ; $6cd2: $80
	rst  $38                                         ; $6cd3: $ff
	nop                                              ; $6cd4: $00
	rst  $38                                         ; $6cd5: $ff
	ld   a, a                                        ; $6cd6: $7f
	add  c                                           ; $6cd7: $81
	rst  $38                                         ; $6cd8: $ff
	ld   a, [bc]                                     ; $6cd9: $0a
	nop                                              ; $6cda: $00
	rst  $38                                         ; $6cdb: $ff
	ld   hl, sp-$01                                  ; $6cdc: $f8 $ff
	rlca                                             ; $6cde: $07
	rst  $38                                         ; $6cdf: $ff
	ldh  [rIE], a                                    ; $6ce0: $e0 $ff
	rra                                              ; $6ce2: $1f
	rst  $38                                         ; $6ce3: $ff
	nop                                              ; $6ce4: $00
	add  c                                           ; $6ce5: $81
	rst  $38                                         ; $6ce6: $ff
	nop                                              ; $6ce7: $00
	nop                                              ; $6ce8: $00

jr_014_6ce9:
	add  c                                           ; $6ce9: $81
	rst  $38                                         ; $6cea: $ff
	nop                                              ; $6ceb: $00
	nop                                              ; $6cec: $00
	add  c                                           ; $6ced: $81
	rst  $38                                         ; $6cee: $ff
	jr   jr_014_6cf1                                 ; $6cef: $18 $00

jr_014_6cf1:
	rst  $38                                         ; $6cf1: $ff
	cp   $ff                                         ; $6cf2: $fe $ff
	ld   bc, $f0ff                                   ; $6cf4: $01 $ff $f0
	rst  $38                                         ; $6cf7: $ff
	inc  c                                           ; $6cf8: $0c
	rst  $38                                         ; $6cf9: $ff
	di                                               ; $6cfa: $f3
	rst  $38                                         ; $6cfb: $ff
	rrca                                             ; $6cfc: $0f
	rst  $38                                         ; $6cfd: $ff
	ret  nz                                          ; $6cfe: $c0

	rst  $38                                         ; $6cff: $ff
	ccf                                              ; $6d00: $3f
	rst  $38                                         ; $6d01: $ff
	nop                                              ; $6d02: $00
	rst  $38                                         ; $6d03: $ff
	ret  nz                                          ; $6d04: $c0

	rst  $38                                         ; $6d05: $ff
	ccf                                              ; $6d06: $3f
	rst  $38                                         ; $6d07: $ff
	nop                                              ; $6d08: $00
	add  b                                           ; $6d09: $80
	rst  $38                                         ; $6d0a: $ff
	dec  bc                                          ; $6d0b: $0b
	inc  bc                                          ; $6d0c: $03
	nop                                              ; $6d0d: $00
	inc  bc                                          ; $6d0e: $03
	rra                                              ; $6d0f: $1f
	nop                                              ; $6d10: $00
	ld   [bc], a                                     ; $6d11: $02
	nop                                              ; $6d12: $00
	ld   b, b                                        ; $6d13: $40
	ret  nz                                          ; $6d14: $c0

	call $cdc0                                       ; $6d15: $cd $c0 $cd
	add  c                                           ; $6d18: $81
	ret  nz                                          ; $6d19: $c0

	ld   [bc], a                                     ; $6d1a: $02
	sbc  l                                           ; $6d1b: $9d
	rst  $38                                         ; $6d1c: $ff
	nop                                              ; $6d1d: $00
	add  b                                           ; $6d1e: $80
	rst  $38                                         ; $6d1f: $ff
	dec  c                                           ; $6d20: $0d
	nop                                              ; $6d21: $00
	ret  z                                           ; $6d22: $c8

	nop                                              ; $6d23: $00
	ld   h, b                                        ; $6d24: $60
	nop                                              ; $6d25: $00
	ld   h, a                                        ; $6d26: $67
	nop                                              ; $6d27: $00
	db   $dd                                         ; $6d28: $dd
	nop                                              ; $6d29: $00
	stop                                             ; $6d2a: $10 $00
	db   $fd                                         ; $6d2c: $fd
	rst  $38                                         ; $6d2d: $ff
	nop                                              ; $6d2e: $00
	add  b                                           ; $6d2f: $80
	rst  $38                                         ; $6d30: $ff
	ld   bc, $0200                                   ; $6d31: $01 $00 $02
	add  c                                           ; $6d34: $81
	nop                                              ; $6d35: $00
	ld   [bc], a                                     ; $6d36: $02
	add  b                                           ; $6d37: $80
	nop                                              ; $6d38: $00
	add  b                                           ; $6d39: $80
	add  c                                           ; $6d3a: $81
	nop                                              ; $6d3b: $00
	ld   [bc], a                                     ; $6d3c: $02
	db   $fd                                         ; $6d3d: $fd
	rst  $38                                         ; $6d3e: $ff
	nop                                              ; $6d3f: $00
	add  b                                           ; $6d40: $80
	rst  $38                                         ; $6d41: $ff
	ld   bc, $1200                                   ; $6d42: $01 $00 $12
	add  c                                           ; $6d45: $81
	nop                                              ; $6d46: $00
	ld   [bc], a                                     ; $6d47: $02
	dec  l                                           ; $6d48: $2d
	nop                                              ; $6d49: $00
	dec  l                                           ; $6d4a: $2d
	add  c                                           ; $6d4b: $81
	nop                                              ; $6d4c: $00
	nop                                              ; $6d4d: $00
	ld   a, [de]                                     ; $6d4e: $1a
	add  c                                           ; $6d4f: $81
	nop                                              ; $6d50: $00
	inc  b                                           ; $6d51: $04
	jr   jr_014_6d54                                 ; $6d52: $18 $00

jr_014_6d54:
	jr   nc, jr_014_6d56                             ; $6d54: $30 $00

jr_014_6d56:
	jr   nz, @-$79                                   ; $6d56: $20 $85

	nop                                              ; $6d58: $00
	ld   [$0002], sp                                 ; $6d59: $08 $02 $00
	ld   b, $00                                      ; $6d5c: $06 $00
	inc  c                                           ; $6d5e: $0c
	nop                                              ; $6d5f: $00
	jr   c, jr_014_6d62                              ; $6d60: $38 $00

jr_014_6d62:
	jr   nc, jr_014_6ce9                             ; $6d62: $30 $85

	nop                                              ; $6d64: $00
	ld   [$009c], sp                                 ; $6d65: $08 $9c $00
	ld   a, [hl-]                                    ; $6d68: $3a
	nop                                              ; $6d69: $00
	ld   [bc], a                                     ; $6d6a: $02
	nop                                              ; $6d6b: $00
	db   $fc                                         ; $6d6c: $fc
	nop                                              ; $6d6d: $00
	ld   e, b                                        ; $6d6e: $58
	add  l                                           ; $6d6f: $85
	nop                                              ; $6d70: $00
	nop                                              ; $6d71: $00
	sub  d                                           ; $6d72: $92
	add  c                                           ; $6d73: $81
	nop                                              ; $6d74: $00
	nop                                              ; $6d75: $00
	add  d                                           ; $6d76: $82
	add  c                                           ; $6d77: $81
	nop                                              ; $6d78: $00
	nop                                              ; $6d79: $00
	db   $10                                         ; $6d7a: $10
	add  l                                           ; $6d7b: $85
	nop                                              ; $6d7c: $00
	nop                                              ; $6d7d: $00
	ld   b, b                                        ; $6d7e: $40
	add  e                                           ; $6d7f: $83
	nop                                              ; $6d80: $00
	ld   [bc], a                                     ; $6d81: $02
	ld   a, [hl]                                     ; $6d82: $7e
	nop                                              ; $6d83: $00
	ld   a, $85                                      ; $6d84: $3e $85
	nop                                              ; $6d86: $00
	nop                                              ; $6d87: $00
	dec  bc                                          ; $6d88: $0b
	add  c                                           ; $6d89: $81
	rst  $38                                         ; $6d8a: $ff
	inc  b                                           ; $6d8b: $04
	rrca                                             ; $6d8c: $0f
	rst  $38                                         ; $6d8d: $ff
	rlca                                             ; $6d8e: $07
	rst  $38                                         ; $6d8f: $ff
	rlca                                             ; $6d90: $07
	add  b                                           ; $6d91: $80
	rst  $38                                         ; $6d92: $ff
	nop                                              ; $6d93: $00
	rrca                                             ; $6d94: $0f
	add  c                                           ; $6d95: $81
	rst  $38                                         ; $6d96: $ff
	dec  b                                           ; $6d97: $05
	ld   e, a                                        ; $6d98: $5f
	and  h                                           ; $6d99: $a4
	rst  $38                                         ; $6d9a: $ff
	rrca                                             ; $6d9b: $0f
	rst  $38                                         ; $6d9c: $ff
	nop                                              ; $6d9d: $00
	add  c                                           ; $6d9e: $81
	rst  $38                                         ; $6d9f: $ff
	inc  c                                           ; $6da0: $0c
	ret  nz                                          ; $6da1: $c0

	rst  $38                                         ; $6da2: $ff
	ccf                                              ; $6da3: $3f
	rst  $38                                         ; $6da4: $ff
	add  b                                           ; $6da5: $80
	rst  $38                                         ; $6da6: $ff
	ld   a, a                                        ; $6da7: $7f
	rst  $38                                         ; $6da8: $ff
	nop                                              ; $6da9: $00
	rst  $38                                         ; $6daa: $ff
	cp   $ff                                         ; $6dab: $fe $ff
	ld   bc, $ff81                                   ; $6dad: $01 $81 $ff
	ld   a, [bc]                                     ; $6db0: $0a
	nop                                              ; $6db1: $00
	rst  $38                                         ; $6db2: $ff
	ret  nz                                          ; $6db3: $c0

	rst  $38                                         ; $6db4: $ff
	ccf                                              ; $6db5: $3f
	rst  $38                                         ; $6db6: $ff
	ldh  [rIE], a                                    ; $6db7: $e0 $ff
	rra                                              ; $6db9: $1f
	rst  $38                                         ; $6dba: $ff
	nop                                              ; $6dbb: $00
	add  c                                           ; $6dbc: $81
	rst  $38                                         ; $6dbd: $ff
	nop                                              ; $6dbe: $00
	nop                                              ; $6dbf: $00
	add  c                                           ; $6dc0: $81
	rst  $38                                         ; $6dc1: $ff
	nop                                              ; $6dc2: $00
	nop                                              ; $6dc3: $00
	add  c                                           ; $6dc4: $81
	rst  $38                                         ; $6dc5: $ff
	inc  b                                           ; $6dc6: $04

jr_014_6dc7:
	nop                                              ; $6dc7: $00
	rst  $38                                         ; $6dc8: $ff
	ldh  a, [rIE]                                    ; $6dc9: $f0 $ff
	rrca                                             ; $6dcb: $0f
	add  c                                           ; $6dcc: $81
	rst  $38                                         ; $6dcd: $ff
	inc  b                                           ; $6dce: $04
	nop                                              ; $6dcf: $00
	rst  $38                                         ; $6dd0: $ff
	cp   $ff                                         ; $6dd1: $fe $ff
	ld   bc, $ff81                                   ; $6dd3: $01 $81 $ff
	ld   [bc], a                                     ; $6dd6: $02
	nop                                              ; $6dd7: $00
	rst  $38                                         ; $6dd8: $ff
	nop                                              ; $6dd9: $00
	add  c                                           ; $6dda: $81
	rst  $38                                         ; $6ddb: $ff
	nop                                              ; $6ddc: $00
	nop                                              ; $6ddd: $00
	add  c                                           ; $6dde: $81
	rst  $38                                         ; $6ddf: $ff
	nop                                              ; $6de0: $00
	nop                                              ; $6de1: $00
	add  c                                           ; $6de2: $81
	rst  $38                                         ; $6de3: $ff
	ld   a, [bc]                                     ; $6de4: $0a
	add  b                                           ; $6de5: $80
	rst  $38                                         ; $6de6: $ff
	ld   a, a                                        ; $6de7: $7f
	rst  $38                                         ; $6de8: $ff
	nop                                              ; $6de9: $00
	rst  $38                                         ; $6dea: $ff
	db   $fc                                         ; $6deb: $fc
	rst  $38                                         ; $6dec: $ff
	inc  bc                                          ; $6ded: $03
	rst  $38                                         ; $6dee: $ff
	nop                                              ; $6def: $00
	add  e                                           ; $6df0: $83
	rst  $38                                         ; $6df1: $ff
	nop                                              ; $6df2: $00
	nop                                              ; $6df3: $00
	add  c                                           ; $6df4: $81
	rst  $38                                         ; $6df5: $ff
	nop                                              ; $6df6: $00
	ld   d, l                                        ; $6df7: $55
	add  l                                           ; $6df8: $85
	ret  nz                                          ; $6df9: $c0

	ld   [$c0c8], sp                                 ; $6dfa: $08 $c8 $c0
	jp   nz, $efc0                                   ; $6dfd: $c2 $c0 $ef

	rst  $38                                         ; $6e00: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6e01: $cf
	ret  nz                                          ; $6e02: $c0

	db   $fd                                         ; $6e03: $fd
	add  e                                           ; $6e04: $83
	nop                                              ; $6e05: $00
	dec  b                                           ; $6e06: $05
	ld   b, $00                                      ; $6e07: $06 $00
	adc  h                                           ; $6e09: $8c
	nop                                              ; $6e0a: $00
	ld   [$8100], sp                                 ; $6e0b: $08 $00 $81
	rst  $38                                         ; $6e0e: $ff
	inc  bc                                          ; $6e0f: $03
	nop                                              ; $6e10: $00
	ld   d, h                                        ; $6e11: $54
	nop                                              ; $6e12: $00
	ld   bc, $0081                                   ; $6e13: $01 $81 $00
	dec  b                                           ; $6e16: $05
	and  b                                           ; $6e17: $a0
	nop                                              ; $6e18: $00
	jr   jr_014_6e1b                                 ; $6e19: $18 $00

jr_014_6e1b:
	ld   [de], a                                     ; $6e1b: $12
	nop                                              ; $6e1c: $00
	add  c                                           ; $6e1d: $81
	rst  $38                                         ; $6e1e: $ff
	inc  c                                           ; $6e1f: $0c
	nop                                              ; $6e20: $00

jr_014_6e21:
	db   $fd                                         ; $6e21: $fd
	nop                                              ; $6e22: $00
	add  b                                           ; $6e23: $80
	nop                                              ; $6e24: $00
	add  b                                           ; $6e25: $80
	nop                                              ; $6e26: $00
	ld   b, $00                                      ; $6e27: $06 $00
	inc  c                                           ; $6e29: $0c
	nop                                              ; $6e2a: $00
	ld   [$8100], sp                                 ; $6e2b: $08 $00 $81
	rst  $38                                         ; $6e2e: $ff
	nop                                              ; $6e2f: $00
	nop                                              ; $6e30: $00


RleXorTileData_SaveScreenBank0_8800::
	db $68, $04, $85, $00, $80, $0f, $86, $08, $84, $00, $80, $ff, $83, $00, $03, $ff, $00, $ff, $00, $80, $20, $80, $50, $00, $00, $80, $ff, $00, $0f, $80, $2f, $80
	db $0f, $03, $f0, $00, $fb, $04, $80, $0a, $80, $15, $00, $00, $80, $ff, $80, $c1, $80, $e3, $04, $f7, $08, $00, $7d, $82, $80, $01, $80, $82, $00, $00, $80, $ff
	db $00, $f8, $82, $fb, $02, $07, $00, $ff, $84, $00, $80, $ff, $80, $07, $80, $03, $04, $01, $fe, $00, $7d, $82, $80, $01, $80, $82, $00, $00, $80, $ff, $07, $f8
	db $fb, $ff, $fd, $ff, $fc, $ff, $fd, $84, $00, $80, $ff, $00, $00, $80, $20, $80, $40, $80, $a0, $80, $82, $80, $00, $80, $82, $00, $00, $80, $ff, $81, $00, $80
	db $41, $80, $02, $80, $a2, $82, $60, $00, $00, $80, $ff, $00, $00, $80, $80, $80, $01, $80, $02, $80, $0a, $80, $04, $81, $00, $80, $ff, $83, $00, $80, $80, $80
	db $00, $82, $01, $00, $00, $80, $ff, $85, $00, $84, $ff, $00, $00, $80, $ff, $00, $00, $80, $8f, $80, $0d, $80, $42, $80, $ff, $80, $ee, $80, $d7, $00, $00, $80
	db $ff, $00, $0f, $80, $8f, $80, $4f, $03, $0f, $07, $f8, $ff, $80, $f3, $80, $71, $03, $1b, $fb, $f5, $e5, $80, $e2, $80, $e1, $80, $e2, $00, $f1, $8b, $08, $07
	db $09, $08, $0a, $fd, $ec, $dc, $c5, $b4, $80, $f0, $09, $82, $c0, $e4, $e0, $08, $00, $50, $40, $e0, $ff, $80, $00, $00, $ff, $81, $00, $00, $20, $81, $00, $05
	db $df, $00, $dd, $00, $22, $ff, $80, $00, $00, $ff, $87, $00, $03, $40, $00, $40, $ff, $80, $00, $02, $ff, $00, $0a, $81, $00, $02, $f6, $00, $f8, $81, $00, $01
	db $04, $ff, $80, $00, $00, $ff, $81, $00, $09, $08, $00, $77, $00, $77, $00, $30, $00, $38, $ff, $80, $00, $00, $ff, $81, $00, $09, $3c, $00, $34, $00, $18, $00
	db $2c, $00, $3c, $ff, $80, $00, $02, $ff, $00, $05, $81, $00, $07, $7b, $00, $7e, $00, $7e, $00, $7e, $ff, $80, $00, $00, $ff, $87, $00, $03, $40, $00, $40, $ff
	db $80, $00, $00, $ff, $81, $00, $09, $20, $00, $1e, $00, $1c, $00, $10, $00, $32, $ff, $80, $01, $00, $fd, $81, $01, $00, $06, $85, $02, $00, $87, $80, $7c, $80
	db $3c, $80, $1c, $81, $00, $00, $80, $83, $00, $80, $82, $82, $00, $80, $11, $80, $40, $80, $82, $80, $01, $80, $82, $a9, $00, $80, $70, $80, $3c, $80, $3e, $01
	db $44, $45, $80, $c7, $81, $ff, $83, $fe, $80, $7c, $02, $38, $9e, $a6, $80, $03, $80, $c6, $80, $df, $82, $f3, $0e, $03, $7b, $7f, $ff, $78, $87, $07, $03, $81
	db $83, $10, $1f, $4e, $7f, $3f, $80, $7f, $80, $ff, $02, $bf, $ad, $e2, $80, $e3, $07, $c6, $e6, $2f, $ef, $c3, $e3, $41, $e1, $80, $e3, $80, $ef, $01, $90, $08
	db $80, $28, $01, $59, $58, $80, $a8, $80, $58, $80, $28, $80, $08, $02, $0b, $0a, $a8, $81, $40, $80, $c0, $00, $a0, $81, $80, $01, $bf, $80, $80, $ff, $80, $00
	db $02, $db, $00, $04, $81, $00, $05, $1e, $00, $3e, $00, $ff, $00, $80, $ff, $80, $00, $02, $c1, $00, $3e, $85, $00, $01, $ff, $00, $80, $ff, $80, $00, $00, $fb
	db $81, $00, $07, $0c, $00, $78, $00, $70, $00, $ff, $00, $80, $ff, $80, $00, $0b, $b7, $00, $70, $00, $30, $00, $18, $00, $10, $00, $ff, $00, $80, $ff, $80, $00
	db $0b, $bd, $00, $58, $00, $3c, $00, $3a, $00, $1c, $00, $ff, $00, $80, $ff, $80, $00, $00, $f7, $83, $00, $05, $38, $00, $30, $00, $ff, $00, $80, $ff, $80, $00
	db $02, $c1, $00, $3e, $85, $00, $01, $ff, $00, $80, $ff, $80, $00, $0b, $b1, $00, $4c, $00, $06, $00, $1c, $00, $18, $00, $ff, $00, $80, $ff, $80, $00, $07, $f0
	db $00, $1f, $0f, $3b, $17, $71, $2d, $80, $3d, $01, $a3, $33, $80, $be, $80, $00, $01, $7f, $00, $80, $01, $82, $00, $80, $40, $80, $02, $80, $00, $00, $80, $8b
	db $00, $80, $30, $80, $02, $80, $04, $80, $0a, $80, $15, $80, $0a, $80, $44, $07, $a0, $a3, $43, $47, $07, $0f, $8d, $83, $80, $01, $01, $83, $82, $80, $01, $00
	db $00, $81, $e0, $80, $e1, $80, $e0, $02, $60, $ff, $7f, $81, $ff, $08, $7e, $ff, $3f, $5d, $9c, $83, $03, $07, $87, $80, $8f, $11, $81, $01, $11, $13, $3b, $38
	db $7d, $3c, $78, $18, $b3, $a3, $f7, $d7, $ff, $ed, $ff, $fd, $80, $ff, $12, $fe, $fd, $ff, $fd, $71, $70, $80, $81, $c1, $c2, $e2, $a0, $5f, $ff, $fe, $d9, $ff
	db $9b, $a3, $80, $41, $80, $00, $80, $41, $80, $82, $04, $9a, $8a, $84, $a4, $20, $87, $60, $05, $e0, $a0, $32, $0e, $1d, $1f, $80, $2e, $80, $7f, $80, $5f, $80
	db $af, $05, $7d, $7f, $bb, $bf, $08, $00, $80, $20, $80, $50, $80, $a8, $80, $50, $04, $20, $3c, $1d, $79, $7a, $80, $fa, $00, $02, $80, $42, $80, $a2, $80, $5f
	db $80, $17, $80, $71, $80, $f3, $80, $ff, $80, $82, $80, $00, $80, $82, $04, $10, $17, $47, $5f, $9f, $80, $bf, $04, $ff, $7f, $bf, $bd, $03, $80, $01, $05, $83
	db $82, $15, $f5, $e8, $c8, $80, $e3, $01, $b3, $f3, $80, $8f, $00, $80, $80, $7f, $81, $ff, $06, $fe, $7f, $7a, $1c, $18, $03, $13, $80, $17, $01, $1f, $0f, $80
	db $01, $80, $11, $80, $39, $80, $7c, $80, $38, $80, $93, $80, $c7, $80, $ef, $82, $ff, $0c, $fe, $ff, $fd, $f4, $78, $53, $a3, $93, $d3, $df, $ff, $62, $82, $80
	db $01, $80, $82, $80, $15, $80, $48, $80, $a0, $80, $f3, $80, $ff, $84, $00, $80, $0a, $80, $06, $06, $00, $01, $11, $13, $43, $47, $07, $84, $00, $80, $3c, $00
	db $f8, $80, $fa, $05, $f9, $f1, $e0, $f0, $e0, $00, $80, $02, $80, $01, $80, $82, $80, $c1, $80, $80, $80, $00, $80, $80, $80, $05, $80, $02, $80, $00, $80, $88
	db $80, $14, $80, $82, $80, $00, $80, $80, $00, $00, $85, $1f, $06, $9b, $97, $5f, $4f, $fb, $fc, $06, $80, $02, $00, $e2, $80, $e3, $01, $e4, $c4, $80, $c0, $03
	db $91, $d1, $82, $02, $80, $00, $80, $08, $03, $a0, $af, $6f, $7f, $83, $ff, $80, $f7, $06, $e3, $70, $77, $bb, $bf, $10, $ff, $81, $ef, $00, $c7, $80, $e7, $05
	db $87, $c3, $81, $03, $00, $01, $80, $82, $00, $00, $80, $e0, $84, $f0, $80, $90, $80, $80, $80, $40, $80, $01, $86, $00, $80, $44, $80, $c6, $80, $ee, $02, $ff
	db $00, $ef, $80, $ee, $80, $c7, $80, $a3, $80, $c1, $80, $80, $80, $41, $80, $a2, $00, $10, $81, $08, $00, $09, $80, $08, $80, $0c, $80, $08, $80, $0a, $81, $0e
	db $03, $70, $00, $bf, $3f, $80, $60, $04, $c1, $cd, $8f, $9b, $9a, $83, $ba, $01, $38, $00, $80, $ff, $80, $00, $82, $ff, $80, $00, $00, $ff, $85, $00, $01, $ff
	db $00, $82, $ff, $80, $00, $00, $ff, $81, $00, $01, $ff, $00, $80, $e7, $80, $33, $80, $98, $80, $cf, $80, $00, $00, $ff, $81, $00, $01, $ff, $00, $82, $ff, $80
	db $00, $80, $ff, $80, $00, $00, $ff, $81, $00, $01, $ff, $00, $80, $ff, $80, $00, $82, $ff, $80, $00, $00, $ff, $82, $00, $00, $ff, $80, $00, $00, $ff, $81, $00
	db $02, $7e, $00, $3c, $83, $00, $07, $bd, $00, $fc, $fd, $f9, $fb, $03, $00, $80, $ff, $80, $00, $00, $ff, $81, $00, $00, $ff, $80, $fe, $04, $fc, $fd, $f9, $fb
	db $03, $80, $ff, $80, $00, $00, $ff, $81, $00, $01, $ff, $00, $80, $ff, $80, $80, $80, $3f, $80, $ff, $80, $00, $00, $ff, $81, $00, $01, $ff, $00, $80, $ff, $80
	db $00, $82, $ff, $80, $00, $00, $ff, $81, $00, $01, $ff, $00, $80, $fd, $80, $01, $82, $fd, $80, $00, $07, $fe, $00, $01, $00, $ff, $01, $fd, $fc, $80, $fe, $02
	db $ff, $e7, $e3, $81, $db, $01, $47, $67, $80, $3f, $01, $ef, $00, $80, $01, $01, $82, $02, $80, $05, $80, $48, $80, $23, $04, $43, $63, $2f, $6f, $f1, $86, $0e
	db $80, $0a, $83, $08, $00, $74, $8d, $ba, $00, $c7, $83, $00, $02, $01, $00, $01, $83, $00, $12, $08, $00, $08, $00, $40, $00, $38, $00, $98, $00, $a0, $00, $23
	db $00, $fc, $00, $e4, $00, $7b, $93, $00, $02, $7e, $00, $3c, $83, $00, $02, $3c, $00, $7e, $83, $00, $06, $7e, $00, $3c, $00, $3c, $00, $3c, $81, $00, $01, $e2
	db $5f, $80, $4f, $03, $40, $50, $55, $59, $82, $5d, $82, $59, $01, $7c, $6f, $80, $6e, $80, $67, $80, $63, $80, $61, $01, $60, $00, $80, $41, $03, $22, $62, $51
	db $88, $80, $08, $80, $8a, $80, $1c, $80, $48, $80, $aa, $80, $fa, $80, $fe, $00, $74, $8d, $ba, $08, $c8, $00, $01, $00, $08, $00, $04, $00, $02, $85, $00, $10
	db $c2, $00, $c6, $00, $b4, $00, $50, $00, $60, $00, $78, $00, $c4, $00, $34, $00, $4a, $83, $00, $04, $3c, $00, $3c, $00, $42, $83, $00, $02, $7e, $00, $3c, $81
	db $00, $04, $3c, $00, $3c, $00, $42, $83, $00, $01, $be, $5d, $82, $41, $80, $51, $80, $59, $82, $5d, $02, $5f, $5b, $77, $81, $60, $80, $64, $80, $6a, $80, $65
	db $80, $6a, $80, $64, $03, $60, $00, $95, $0c, $80, $0a, $80, $18, $80, $0a, $80, $0c, $00, $08, $80, $0a, $81, $0e, $00, $32, $80, $da, $00, $c2, $80, $98, $82
	db $bf, $80, $98, $81, $c2, $04, $da, $5f, $57, $53, $43, $80, $19, $82, $fd, $80, $19, $80, $43, $02, $47, $57, $7f, $80, $00, $00, $60, $80, $64, $80, $6a, $80
	db $65, $80, $6a, $80, $64, $03, $60, $40, $51, $8e, $84, $0e, $01, $4e, $4a, $81, $0a, $03, $0c, $1c, $18, $74, $8d, $ba, $00, $c7, $81, $00, $00, $01, $81, $00
	db $00, $01, $81, $00, $16, $0f, $00, $01, $00, $0e, $00, $16, $00, $e5, $00, $64, $00, $8b, $00, $e4, $00, $60, $00, $90, $00, $b4, $5b, $59, $8b, $5d, $01, $5c
	db $2f, $80, $43, $80, $61, $80, $6b, $80, $45, $80, $22, $80, $01, $03, $02, $42, $d1, $08, $80, $18, $80, $28, $80, $3c, $80, $28, $80, $1a, $80, $08, $80, $18
	db $02, $09, $00, $01, $81, $00, $02, $01, $00, $01, $81, $00, $00, $01, $81, $00, $0c, $c8, $00, $05, $00, $88, $00, $e2, $00, $60, $00, $44, $00, $83, $81, $00
	db $00, $be, $81, $5d, $80, $59, $86, $5d, $02, $5f, $5b, $77, $81, $60, $80, $64, $80, $6a, $80, $65, $80, $6a, $80, $64, $80, $60, $01, $07, $fe, $80, $ee, $80
	db $de, $80, $aa, $80, $c8, $80, $88, $80, $48, $80, $aa, $00, $99, $80, $20, $82, $00, $86, $60, $02, $20, $b1, $08, $80, $18, $80, $28, $80, $3c, $80, $28, $80
	db $1a, $80, $08, $80, $18, $00, $74, $8d, $ba, $00, $c7, $81, $00, $00, $01, $81, $00, $00, $01, $81, $00, $14, $03, $00, $0c, $00, $4f, $00, $80, $00, $70, $00
	db $50, $00, $ee, $00, $76, $00, $a8, $00, $7c, $00, $3c, $80, $20, $8b, $00, $01, $67, $fe, $80, $ee, $80, $de, $80, $aa, $80, $c8, $80, $88, $80, $48, $80, $aa
	db $0a, $08, $00, $02, $00, $05, $00, $02, $00, $0c, $00, $08, $83, $00, $10, $47, $00, $34, $00, $20, $00, $6b, $00, $70, $00, $50, $00, $68, $00, $70, $00, $be
	db $87, $5d, $03, $5c, $50, $5f, $4f, $80, $5f, $09, $40, $2f, $2e, $6e, $47, $67, $4b, $6b, $07, $47, $80, $2a, $80, $45, $80, $6a, $01, $95, $0c, $80, $0a, $80
	db $18, $80, $0a, $80, $0c, $02, $08, $0a, $0b, $81, $0f, $00, $72, $81, $ba, $81, $bb, $04, $9b, $d9, $cd, $6c, $60, $80, $3f, $03, $80, $00, $7f, $ff, $80, $00
	db $00, $ff, $87, $00, $03, $40, $00, $40, $ff, $80, $00, $06, $ff, $00, $0a, $00, $40, $00, $0a, $81, $00, $02, $20, $00, $22, $83, $00, $05, $3c, $00, $7e, $00
	db $ff, $00, $80, $ff, $80, $00, $02, $c1, $00, $3e, $85, $00, $01, $ff, $00, $80, $ff, $80, $00, $02, $a3, $00, $1c, $83, $00, $03, $40, $00, $ff, $00, $80, $ff
	db $80, $00, $80, $3f, $02, $7f, $67, $e3, $81, $db, $01, $c7, $e7, $80, $fe, $80, $fc, $02, $00, $01, $6e, $81, $00, $80, $04, $80, $0a, $80, $05, $80, $0a, $05
	db $84, $44, $40, $00, $90, $8f, $84, $0f, $01, $4f, $4b, $81, $0b, $03, $0c, $1c, $18, $08, $80, $e0, $02, $ef, $cf, $ef, $80, $ff, $1b, $ef, $a7, $c7, $47, $03
	db $07, $01, $03, $9e, $9f, $4e, $ce, $97, $f7, $e3, $f3, $f1, $f9, $f8, $f4, $f5, $f9, $fa, $f2, $f8, $0f, $79, $7f, $80, $9b, $80, $17, $01, $59, $58, $80, $23
	db $80, $53, $80, $ab, $07, $00, $f0, $f7, $e7, $e2, $c2, $86, $46, $80, $22, $80, $63, $80, $73, $80, $7e, $80, $ff, $80, $43, $02, $17, $37, $43, $80, $7b, $02
	db $ff, $9d, $ff, $81, $fe, $02, $ff, $30, $cf, $80, $ef, $06, $90, $92, $43, $4d, $8f, $9f, $9c, $82, $bf, $02, $ff, $80, $ff, $80, $e3, $80, $f7, $80, $ff, $01
	db $6d, $ed, $80, $e7, $82, $ff, $01, $b5, $35, $80, $6b, $80, $fe, $80, $fd, $80, $f3, $02, $e0, $e3, $f3, $80, $f7, $02, $ff, $d0, $df, $80, $6f, $80, $cc, $80
	db $c9, $01, $1c, $fc, $80, $e6, $82, $e0, $01, $98, $78, $80, $a0, $80, $01, $82, $00, $80, $80, $80, $41, $80, $00, $89, $ff, $00, $00, $80, $7f, $80, $40, $01
	db $1f, $e0, $82, $f1, $80, $fd, $81, $ff, $00, $00, $80, $ff, $80, $00, $00, $c0, $81, $3f, $80, $bf, $83, $ff, $00, $00, $80, $ff, $81, $00, $88, $ff, $00, $01
	db $80, $fd, $80, $05, $01, $0f, $f1, $80, $fb, $85, $ff, $00, $00, $80, $ff, $81, $00, $88, $ff, $00, $00, $80, $ff, $80, $00, $01, $0a, $e5, $80, $ea, $80, $cd
	db $80, $aa, $80, $c5, $80, $aa, $80, $45, $80, $aa, $01, $10, $08, $80, $18, $80, $28, $80, $3c, $80, $29, $80, $1a, $80, $09, $80, $18, $09, $2f, $27, $04, $06
	db $04, $07, $83, $8b, $c9, $cf, $82, $0f, $04, $8f, $87, $88, $ff, $81, $81, $f1, $04, $32, $f3, $c5, $e7, $e3, $80, $e7, $81, $f7, $09, $2c, $db, $03, $23, $33
	db $d3, $fb, $ff, $c0, $fc, $80, $ff, $80, $fb, $03, $f7, $ff, $47, $b7, $80, $6b, $80, $f6, $80, $f7, $80, $e9, $02, $30, $33, $f3, $80, $f7, $12, $ff, $8f, $ff
	db $bf, $ff, $df, $ff, $ec, $ff, $32, $ff, $d9, $fb, $e1, $fb, $fe, $ff, $78, $ff, $80, $7f, $0d, $ff, $be, $5d, $ff, $a0, $ff, $c7, $e7, $d3, $ff, $bf, $ff, $70
	db $ff, $80, $fe, $80, $7f, $80, $ff, $0b, $36, $b6, $ad, $ed, $c6, $f6, $f5, $fd, $08, $ff, $ef, $ff, $80, $df, $80, $bf, $02, $5f, $53, $13, $80, $07, $04, $04
	db $26, $22, $1c, $fc, $80, $e6, $01, $f7, $d7, $80, $e3, $03, $81, $c1, $80, $00, $80, $41, $80, $82, $89, $00, $80, $70, $80, $3c, $01, $3e, $9e, $85, $40, $02
	db $43, $40, $43, $83, $40, $00, $e0, $83, $00, $06, $04, $00, $e0, $00, $c3, $00, $03, $81, $00, $00, $24, $81, $00, $0c, $20, $00, $70, $00, $70, $00, $e0, $00
	db $c7, $00, $07, $00, $0b, $8d, $05, $00, $ae, $8d, $40, $00, $e0, $81, $00, $00, $54, $81, $00, $08, $e8, $00, $98, $00, $98, $00, $98, $00, $24, $81, $00, $00
	db $08, $81, $00, $07, $36, $00, $36, $00, $77, $00, $6f, $00, $80, $ea, $80, $e5, $80, $c8, $80, $a0, $80, $40, $80, $a4, $80, $48, $80, $a1, $01, $e7, $ff, $80
	db $ee, $80, $df, $80, $ab, $80, $c9, $80, $88, $80, $49, $80, $aa, $00, $08, $80, $07, $80, $03, $80, $01, $80, $0e, $80, $3f, $80, $7f, $80, $ff, $80, $bf, $80
	db $f7, $80, $e3, $80, $c9, $80, $1c, $80, $3e, $80, $1c, $80, $88, $09, $80, $84, $f4, $fa, $ea, $f5, $d5, $c2, $3a, $38, $80, $7e, $82, $ff, $04, $fe, $4a, $bf
	db $65, $6f, $80, $f7, $03, $fd, $ff, $f0, $f3, $80, $e1, $01, $73, $f3, $80, $be, $09, $87, $ff, $fa, $f3, $e1, $f3, $db, $bf, $cf, $4f, $80, $37, $80, $1f, $09
	db $ba, $bf, $b2, $bf, $27, $ef, $d3, $f7, $ec, $ff, $80, $f3, $80, $f1, $0d, $f3, $73, $fe, $be, $24, $fc, $cc, $e6, $d4, $d7, $c3, $eb, $a9, $4f, $80, $0f, $80
	db $4f, $02, $8f, $87, $07, $82, $00, $80, $80, $04, $c1, $c5, $e7, $e3, $f7, $80, $ff, $81, $f7, $80, $01, $80, $21, $80, $c0, $80, $c8, $84, $f8, $80, $f0, $80
	db $7f, $82, $ff, $0d, $7e, $3e, $5c, $bc, $a3, $53, $57, $27, $2f, $af, $40, $43, $40, $43, $81, $40, $01, $5f, $40, $80, $7f, $81, $00, $05, $ff, $24, $00, $c7
	db $00, $e3, $81, $00, $01, $ff, $00, $80, $ff, $81, $00, $00, $ff, $80, $00, $02, $c0, $00, $c0, $81, $00, $01, $ff, $00, $80, $ff, $81, $00, $01, $ff, $0b, $85
	db $05, $01, $f5, $05, $80, $fd, $81, $01, $01, $ff, $a0, $85, $40, $01, $5f, $40, $80, $7f, $81, $00, $05, $ff, $bc, $00, $18, $00, $a4, $81, $00, $01, $ff, $00
	db $80, $ff, $81, $00, $05, $ff, $3e, $00, $1c, $00, $22, $81, $00, $01, $ff, $00, $80, $ff, $81, $00, $02, $ff, $70, $60, $80, $c0, $80, $a4, $80, $4a, $80, $e5
	db $80, $aa, $80, $44, $80, $a0, $00, $e7, $81, $ff, $80, $5f, $80, $2b, $02, $07, $00, $0f, $84, $00, $80, $1f, $08, $1e, $1b, $3d, $32, $0a, $ff, $00, $df, $20
	db $82, $40, $04, $00, $1c, $1d, $3f, $3e, $81, $7f, $00, $80, $80, $00, $00, $ff, $82, $f3, $06, $82, $fe, $3f, $7f, $dc, $ee, $f1, $80, $ff, $02, $00, $1c, $e3
	db $82, $f3, $80, $55, $80, $6b, $80, $fe, $05, $f8, $ff, $f8, $00, $1c, $e3, $82, $f3, $03, $fd, $ff, $7d, $7f, $80, $cc, $02, $0f, $ef, $1f, $80, $00, $00, $ff
	db $82, $fe, $03, $15, $35, $4f, $6f, $80, $fe, $80, $fd, $03, $ff, $00, $1e, $e1, $82, $f3, $0b, $f8, $ff, $6b, $6f, $d1, $d3, $60, $6f, $f1, $00, $80, $7f, $82
	db $ff, $00, $00, $80, $f7, $08, $e1, $e5, $cd, $69, $bc, $e3, $00, $03, $fc, $82, $d8, $00, $00, $80, $f0, $05, $e0, $e4, $c4, $c2, $3a, $c7, $80, $00, $83, $ff
	db $02, $f0, $ff, $ef, $81, $ff, $05, $f3, $ff, $ec, $00, $81, $7e, $80, $f8, $80, $80, $00, $1c, $81, $ff, $06, $dd, $ff, $be, $ff, $7f, $00, $ff, $83, $00, $0b
	db $07, $ff, $fb, $ff, $fd, $ff, $77, $ff, $89, $00, $21, $de, $80, $75, $80, $ab, $82, $ff, $02, $fe, $ff, $fe, $80, $ff, $02, $00, $2b, $d4, $80, $a8, $80, $50
	db $82, $ff, $07, $7f, $ff, $5d, $dd, $ff, $00, $eb, $14, $80, $08, $80, $00, $80, $ef, $80, $ff, $80, $ba, $80, $f5, $03, $ff, $00, $f7, $08, $80, $44, $80, $a0
	db $01, $b0, $a0, $80, $40, $80, $a2, $80, $40, $03, $e0, $00, $f0, $00, $80, $04, $86, $00, $00, $20, $81, $00, $10, $de, $00, $de, $00, $1a, $00, $5c, $00, $c0
	db $00, $0c, $00, $18, $00, $e6, $00, $54, $8f, $00, $04, $80, $00, $08, $00, $0c, $83, $00, $04, $04, $00, $c0, $00, $40, $89, $00, $02, $7e, $00, $3c, $83, $00
	db $02, $3c, $00, $3c, $83, $00, $04, $3c, $00, $3c, $00, $42, $89, $00, $06, $7e, $00, $3c, $00, $3c, $00, $3c, $81, $00, $02, $3c, $00, $3c, $81, $00, $04, $3c
	db $00, $3c, $00, $42, $8b, $00, $04, $80, $00, $04, $00, $06, $87, $00, $04, $d2, $00, $70, $00, $20, $8d, $00, $08, $30, $00, $30, $00, $78, $00, $fc, $00, $80
	db $81, $00, $04, $0c, $00, $18, $00, $10, $89, $00, $08, $38, $00, $38, $00, $7c, $00, $fe, $00, $80, $83, $00, $06, $06, $00, $0c, $00, $18, $00, $10, $8d, $00
	db $10, $30, $00, $30, $00, $fc, $00, $f4, $00, $18, $00, $20, $00, $60, $00, $cc, $00, $9c, $89, $00, $14, $38, $00, $38, $00, $fe, $00, $fa, $00, $0c, $00, $18
	db $00, $38, $00, $60, $00, $c0, $00, $0e, $00, $86, $8d, $00, $00, $28, $81, $00, $06, $d4, $00, $dc, $00, $58, $00, $dc, $81, $00, $02, $cc, $00, $68, $89, $00
	db $00, $24, $81, $00, $08, $da, $00, $de, $00, $1c, $00, $5e, $00, $c0, $83, $00, $02, $c6, $00, $64, $89, $00, $06, $40, $00, $04, $00, $b6, $00, $b8, $83, $00
	db $00, $02, $81, $00, $04, $c0, $00, $98, $00, $10, $ff, $00, $ff, $00, $81, $00



	ld   c, c                                        ; $7b81: $49
	ld   bc, $0f06                                   ; $7b82: $01 $06 $0f
	nop                                              ; $7b85: $00
	dec  de                                          ; $7b86: $1b
	dec  bc                                          ; $7b87: $0b
	dec  hl                                          ; $7b88: $2b
	dec  bc                                          ; $7b89: $0b
	ld   l, d                                        ; $7b8a: $6a
	add  e                                           ; $7b8b: $83
	ld   a, [hl+]                                    ; $7b8c: $2a
	nop                                              ; $7b8d: $00
	sub  $83                                         ; $7b8e: $d6 $83
	ld   d, [hl]                                     ; $7b90: $56
	add  b                                           ; $7b91: $80
	ld   b, l                                        ; $7b92: $45
	nop                                              ; $7b93: $00
	dec  c                                           ; $7b94: $0d
	add  c                                           ; $7b95: $81
	dec  l                                           ; $7b96: $2d
	inc  bc                                          ; $7b97: $03
	xor  l                                           ; $7b98: $ad
	dec  c                                           ; $7b99: $0d
	ld   l, h                                        ; $7b9a: $6c
	inc  c                                           ; $7b9b: $0c
	add  b                                           ; $7b9c: $80
	dec  c                                           ; $7b9d: $0d
	add  b                                           ; $7b9e: $80
	ld   bc, $1f00                                   ; $7b9f: $01 $00 $1f
	adc  c                                           ; $7ba2: $89
	nop                                              ; $7ba3: $00
	ld   b, $03                                      ; $7ba4: $06 $03
	nop                                              ; $7ba6: $00
	rlca                                             ; $7ba7: $07
	inc  bc                                          ; $7ba8: $03
	nop                                              ; $7ba9: $00
	inc  bc                                          ; $7baa: $03
	inc  c                                           ; $7bab: $0c
	add  l                                           ; $7bac: $85
	rlca                                             ; $7bad: $07
	add  b                                           ; $7bae: $80
	nop                                              ; $7baf: $00
	nop                                              ; $7bb0: $00
	rrca                                             ; $7bb1: $0f
	add  e                                           ; $7bb2: $83
	nop                                              ; $7bb3: $00
	inc  bc                                          ; $7bb4: $03
	ld   bc, $0200                                   ; $7bb5: $01 $00 $02
	nop                                              ; $7bb8: $00
	adc  b                                           ; $7bb9: $88
	ld   bc, $0700                                   ; $7bba: $01 $00 $07
	add  c                                           ; $7bbd: $81
	inc  bc                                          ; $7bbe: $03
	inc  bc                                          ; $7bbf: $03
	rrca                                             ; $7bc0: $0f
	rlca                                             ; $7bc1: $07
	ld   de, $8001                                   ; $7bc2: $11 $01 $80
	nop                                              ; $7bc5: $00
	inc  bc                                          ; $7bc6: $03
	ld   h, b                                        ; $7bc7: $60
	nop                                              ; $7bc8: $00
	db   $fc                                         ; $7bc9: $fc
	ld   a, h                                        ; $7bca: $7c
	add  b                                           ; $7bcb: $80
	ld   l, h                                        ; $7bcc: $6c
	nop                                              ; $7bcd: $00
	rst  $38                                         ; $7bce: $ff
	sub  l                                           ; $7bcf: $95
	nop                                              ; $7bd0: $00
	nop                                              ; $7bd1: $00
	inc  b                                           ; $7bd2: $04
	add  c                                           ; $7bd3: $81
	nop                                              ; $7bd4: $00
	ld   [bc], a                                     ; $7bd5: $02
	ld   [bc], a                                     ; $7bd6: $02
	nop                                              ; $7bd7: $00
	inc  bc                                          ; $7bd8: $03
	add  b                                           ; $7bd9: $80
	ld   [bc], a                                     ; $7bda: $02
	adc  c                                           ; $7bdb: $89
	inc  bc                                          ; $7bdc: $03
	nop                                              ; $7bdd: $00
	dec  b                                           ; $7bde: $05
	add  c                                           ; $7bdf: $81
	ld   bc, $0004                                   ; $7be0: $01 $04 $00
	ld   bc, $0002                                   ; $7be3: $01 $02 $00
	ld   bc, $0083                                   ; $7be6: $01 $83 $00
	inc  bc                                          ; $7be9: $03
	rrca                                             ; $7bea: $0f
	nop                                              ; $7beb: $00
	rst  $38                                         ; $7bec: $ff
	rrca                                             ; $7bed: $0f
	add  c                                           ; $7bee: $81
	rst  $38                                         ; $7bef: $ff
	add  b                                           ; $7bf0: $80
	nop                                              ; $7bf1: $00
	db   $10                                         ; $7bf2: $10
	rst  $38                                         ; $7bf3: $ff
	push af                                          ; $7bf4: $f5
	rst  $38                                         ; $7bf5: $ff
	and  c                                           ; $7bf6: $a1
	rst  $38                                         ; $7bf7: $ff
	inc  d                                           ; $7bf8: $14
	rst  $38                                         ; $7bf9: $ff
	cp   a                                           ; $7bfa: $bf
	inc  bc                                          ; $7bfb: $03
	di                                               ; $7bfc: $f3
	inc  b                                           ; $7bfd: $04
	inc  d                                           ; $7bfe: $14
	rrca                                             ; $7bff: $0f
	ld   [hl], a                                     ; $7c00: $77
	rra                                              ; $7c01: $1f
	ei                                               ; $7c02: $fb
	ld   a, a                                        ; $7c03: $7f
	add  b                                           ; $7c04: $80
	ccf                                              ; $7c05: $3f
	add  b                                           ; $7c06: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7c07: $cf
	inc  b                                           ; $7c08: $04
	rst  ToBoot                                         ; $7c09: $c7
	or   $f2                                         ; $7c0a: $f6 $f2
	ld   a, [$815a]                                  ; $7c0c: $fa $5a $81
	db   $fc                                         ; $7c0f: $fc
	ld   bc, $ff9c                                   ; $7c10: $01 $9c $ff
	sbc  h                                           ; $7c13: $9c
	nop                                              ; $7c14: $00
	rrca                                             ; $7c15: $0f
	ccf                                              ; $7c16: $3f
	cp   $be                                         ; $7c17: $fe $be
	ldh  a, [$7c]                                    ; $7c19: $f0 $7c
	ldh  [$f1], a                                    ; $7c1b: $e0 $f1
	pop  bc                                          ; $7c1d: $c1
	ldh  [$80], a                                    ; $7c1e: $e0 $80
	push bc                                          ; $7c20: $c5
	ld   bc, $0282                                   ; $7c21: $01 $82 $02
	add  hl, bc                                      ; $7c24: $09
	ld   bc, $0680                                   ; $7c25: $01 $80 $06
	dec  b                                           ; $7c28: $05
	dec  de                                          ; $7c29: $1b
	dec  bc                                          ; $7c2a: $0b
	inc  l                                           ; $7c2b: $2c
	inc  c                                           ; $7c2c: $0c
	push af                                          ; $7c2d: $f5
	dec  [hl]                                        ; $7c2e: $35
	add  b                                           ; $7c2f: $80
	ld   e, c                                        ; $7c30: $59
	add  b                                           ; $7c31: $80
	ld   l, h                                        ; $7c32: $6c
	add  b                                           ; $7c33: $80
	ld   [hl], $80                                   ; $7c34: $36 $80
	ld   e, d                                        ; $7c36: $5a
	db   $10                                         ; $7c37: $10
	ld   bc, $6e6c                                   ; $7c38: $01 $6c $6e
	or   b                                           ; $7c3b: $b0
	or   h                                           ; $7c3c: $b4
	ret  nz                                          ; $7c3d: $c0

	reti                                             ; $7c3e: $d9


	nop                                              ; $7c3f: $00
	ld   h, b                                        ; $7c40: $60
	nop                                              ; $7c41: $00
	add  c                                           ; $7c42: $81
	nop                                              ; $7c43: $00
	ld   bc, $0f00                                   ; $7c44: $01 $00 $0f
	ld   bc, $9d0f                                   ; $7c47: $01 $0f $9d
	nop                                              ; $7c4a: $00
	nop                                              ; $7c4b: $00
	ld   bc, $008b                                   ; $7c4c: $01 $8b $00
	ld   [bc], a                                     ; $7c4f: $02
	ldh  [rP1], a                                    ; $7c50: $e0 $00
	ld   e, $80                                      ; $7c52: $1e $80
	rst  $38                                         ; $7c54: $ff
	ld   [$ff7f], sp                                 ; $7c55: $08 $7f $ff
	rrca                                             ; $7c58: $0f
	ld   a, a                                        ; $7c59: $7f
	nop                                              ; $7c5a: $00
	ld   a, [hl-]                                    ; $7c5b: $3a
	ld   [$38fa], sp                                 ; $7c5c: $08 $fa $38
	add  b                                           ; $7c5f: $80
	cp   b                                           ; $7c60: $b8
	ld   [bc], a                                     ; $7c61: $02
	or   b                                           ; $7c62: $b0
	cp   d                                           ; $7c63: $ba
	push af                                          ; $7c64: $f5
	sbc  l                                           ; $7c65: $9d
	nop                                              ; $7c66: $00
	add  c                                           ; $7c67: $81
	rst  $38                                         ; $7c68: $ff
	add  hl, bc                                      ; $7c69: $09
	cp   $ff                                         ; $7c6a: $fe $ff
	ldh  a, [$fe]                                    ; $7c6c: $f0 $fe
	nop                                              ; $7c6e: $00
	ld   e, h                                        ; $7c6f: $5c
	db   $10                                         ; $7c70: $10
	rra                                              ; $7c71: $1f
	inc  e                                           ; $7c72: $1c
	ld   e, l                                        ; $7c73: $5d
	add  b                                           ; $7c74: $80
	dec  e                                           ; $7c75: $1d
	ld   bc, $2fcd                                   ; $7c76: $01 $cd $2f
	sbc  e                                           ; $7c79: $9b
	nop                                              ; $7c7a: $00
	add  b                                           ; $7c7b: $80
	db   $10                                         ; $7c7c: $10
	ld   [bc], a                                     ; $7c7d: $02
	ld   a, a                                        ; $7c7e: $7f
	add  c                                           ; $7c7f: $81
	ld   bc, $4380                                   ; $7c80: $01 $80 $43
	inc  bc                                          ; $7c83: $03
	ld   c, a                                        ; $7c84: $4f
	ld   b, c                                        ; $7c85: $41
	ld   c, a                                        ; $7c86: $4f
	ld   b, [hl]                                     ; $7c87: $46
	add  b                                           ; $7c88: $80
	ld   d, a                                        ; $7c89: $57
	ld   b, $37                                      ; $7c8a: $06 $37
	dec  sp                                          ; $7c8c: $3b
	inc  hl                                          ; $7c8d: $23
	inc  sp                                          ; $7c8e: $33
	ld   b, e                                        ; $7c8f: $43
	ld   d, e                                        ; $7c90: $53
	db   $e3                                         ; $7c91: $e3
	add  b                                           ; $7c92: $80
	ldh  [rTMA], a                                   ; $7c93: $e0 $06
	db   $eb                                         ; $7c95: $eb
	di                                               ; $7c96: $f3
	db   $f4                                         ; $7c97: $f4
	ldh  a, [$f3]                                    ; $7c98: $f0 $f3
	ldh  a, [$f8]                                    ; $7c9a: $f0 $f8
	add  c                                           ; $7c9c: $81
	ldh  [$03], a                                    ; $7c9d: $e0 $03
	ldh  a, [rLCDC]                                  ; $7c9f: $f0 $40
	ld   h, b                                        ; $7ca1: $60
	nop                                              ; $7ca2: $00
	add  b                                           ; $7ca3: $80
	add  b                                           ; $7ca4: $80
	rlca                                             ; $7ca5: $07
	ldh  [$c0], a                                    ; $7ca6: $e0 $c0
	pop  af                                          ; $7ca8: $f1
	ldh  [$2f], a                                    ; $7ca9: $e0 $2f
	pop  hl                                          ; $7cab: $e1
	dec  bc                                          ; $7cac: $0b
	res  0, b                                        ; $7cad: $cb $80
	xor  h                                           ; $7caf: $ac
	add  b                                           ; $7cb0: $80
	or   [hl]                                        ; $7cb1: $b6
	nop                                              ; $7cb2: $00
	rst  $38                                         ; $7cb3: $ff
	adc  l                                           ; $7cb4: $8d
	nop                                              ; $7cb5: $00
	dec  c                                           ; $7cb6: $0d
	ld   l, a                                        ; $7cb7: $6f
	sub  l                                           ; $7cb8: $95
	ld   [hl], l                                     ; $7cb9: $75
	ld   [hl], c                                     ; $7cba: $71
	pop  af                                          ; $7cbb: $f1
	db   $fc                                         ; $7cbc: $fc
	db   $fd                                         ; $7cbd: $fd
	db   $fc                                         ; $7cbe: $fc
	ld   [hl], l                                     ; $7cbf: $75
	ld   a, [hl]                                     ; $7cc0: $7e
	cp   d                                           ; $7cc1: $ba
	ld   a, $5a                                      ; $7cc2: $3e $5a
	jr   @-$7e                                       ; $7cc4: $18 $80

	db   $10                                         ; $7cc6: $10
	ld   bc, $0020                                   ; $7cc7: $01 $20 $00
	add  b                                           ; $7cca: $80
	inc  bc                                          ; $7ccb: $03
	inc  bc                                          ; $7ccc: $03
	add  a                                           ; $7ccd: $87
	rlca                                             ; $7cce: $07
	call z, $808c                                    ; $7ccf: $cc $8c $80
	adc  e                                           ; $7cd2: $8b
	ld   [bc], a                                     ; $7cd3: $02
	ld   d, h                                        ; $7cd4: $54

jr_014_7cd5:
	rlca                                             ; $7cd5: $07
	add  e                                           ; $7cd6: $83
	add  c                                           ; $7cd7: $81
	rlca                                             ; $7cd8: $07
	ld   b, $0f                                      ; $7cd9: $06 $0f
	ld   bc, $0007                                   ; $7cdb: $01 $07 $00
	ld   bc, $8000                                   ; $7cde: $01 $00 $80
	add  c                                           ; $7ce1: $81
	nop                                              ; $7ce2: $00
	ld   b, $80                                      ; $7ce3: $06 $80
	nop                                              ; $7ce5: $00
	add  b                                           ; $7ce6: $80
	nop                                              ; $7ce7: $00
	ldh  a, [$80]                                    ; $7ce8: $f0 $80
	ldh  a, [$a9]                                    ; $7cea: $f0 $a9
	nop                                              ; $7cec: $00
	ld   [bc], a                                     ; $7ced: $02
	ret  nz                                          ; $7cee: $c0

	nop                                              ; $7cef: $00
	ldh  [$80], a                                    ; $7cf0: $e0 $80
	ret  nz                                          ; $7cf2: $c0

	ld   bc, $3000                                   ; $7cf3: $01 $00 $30
	add  e                                           ; $7cf6: $83
	ldh  [rP1], a                                    ; $7cf7: $e0 $00
	nop                                              ; $7cf9: $00
	add  b                                           ; $7cfa: $80
	ldh  [$08], a                                    ; $7cfb: $e0 $08
	nop                                              ; $7cfd: $00
	ldh  a, [rP1]                                    ; $7cfe: $f0 $00
	add  b                                           ; $7d00: $80
	nop                                              ; $7d01: $00
	ret  nz                                          ; $7d02: $c0

	add  b                                           ; $7d03: $80
	or   b                                           ; $7d04: $b0
	add  b                                           ; $7d05: $80
	add  b                                           ; $7d06: $80
	ld   h, b                                        ; $7d07: $60
	add  b                                           ; $7d08: $80
	ldh  [$09], a                                    ; $7d09: $e0 $09
	ret  z                                           ; $7d0b: $c8

	ret  nc                                          ; $7d0c: $d0

	sbc  h                                           ; $7d0d: $9c
	cp   b                                           ; $7d0e: $b8
	ld   a, [hl+]                                    ; $7d0f: $2a
	ld   a, h                                        ; $7d10: $7c
	ld   [hl], c                                     ; $7d11: $71
	cp   $d5                                         ; $7d12: $fe $d5
	ret  nz                                          ; $7d14: $c0

	sbc  h                                           ; $7d15: $9c
	nop                                              ; $7d16: $00
	db   $10                                         ; $7d17: $10
	call nz, $f1ff                                   ; $7d18: $c4 $ff $f1
	db   $fd                                         ; $7d1b: $fd
	db   $d3                                         ; $7d1c: $d3
	ei                                               ; $7d1d: $fb
	rst  $20                                         ; $7d1e: $e7
	ld   [hl], a                                     ; $7d1f: $77
	or   $2e                                         ; $7d20: $f6 $2e
	dec  l                                           ; $7d22: $2d
	inc  a                                           ; $7d23: $3c
	ld   a, d                                        ; $7d24: $7a
	jr   @-$62                                       ; $7d25: $18 $9c

	nop                                              ; $7d27: $00
	cp   b                                           ; $7d28: $b8
	adc  l                                           ; $7d29: $8d
	nop                                              ; $7d2a: $00
	ld   b, $e0                                      ; $7d2b: $06 $e0
	nop                                              ; $7d2d: $00
	ret  nc                                          ; $7d2e: $d0

	ret  nz                                          ; $7d2f: $c0

	ld   [$f000], sp                                 ; $7d30: $08 $00 $f0
	add  c                                           ; $7d33: $81
	ret  nc                                          ; $7d34: $d0

	nop                                              ; $7d35: $00
	call c, $d880                                    ; $7d36: $dc $80 $d8
	inc  de                                          ; $7d39: $13
	add  sp, $6e                                     ; $7d3a: $e8 $6e
	db   $ec                                         ; $7d3c: $ec
	xor  a                                           ; $7d3d: $af
	or   $d7                                         ; $7d3e: $f6 $d7
	ld   a, e                                        ; $7d40: $7b
	db   $eb                                         ; $7d41: $eb
	dec  a                                           ; $7d42: $3d
	ld   [hl], l                                     ; $7d43: $75
	ld   e, $3a                                      ; $7d44: $1e $3a
	rrca                                             ; $7d46: $0f
	dec  e                                           ; $7d47: $1d
	rlca                                             ; $7d48: $07
	ld   c, $03                                      ; $7d49: $0e $03
	rlca                                             ; $7d4b: $07
	ld   bc, $8302                                   ; $7d4c: $01 $02 $83
	nop                                              ; $7d4f: $00
	add  h                                           ; $7d50: $84
	jr   nz, jr_014_7cd5                             ; $7d51: $20 $82

	db   $10                                         ; $7d53: $10
	add  b                                           ; $7d54: $80
	ld   [$0480], sp                                 ; $7d55: $08 $80 $04
	add  b                                           ; $7d58: $80
	ld   [bc], a                                     ; $7d59: $02
	add  b                                           ; $7d5a: $80
	ld   bc, $0096                                   ; $7d5b: $01 $96 $00
	ld   bc, $00e0                                   ; $7d5e: $01 $e0 $00
	add  b                                           ; $7d61: $80
	ret  nz                                          ; $7d62: $c0

	inc  b                                           ; $7d63: $04
	and  b                                           ; $7d64: $a0
	add  b                                           ; $7d65: $80
	ld   b, b                                        ; $7d66: $40
	nop                                              ; $7d67: $00
	add  b                                           ; $7d68: $80
	add  l                                           ; $7d69: $85
	nop                                              ; $7d6a: $00
	nop                                              ; $7d6b: $00
	inc  e                                           ; $7d6c: $1c
	adc  c                                           ; $7d6d: $89
	ld   [$2c00], sp                                 ; $7d6e: $08 $00 $2c
	add  l                                           ; $7d71: $85
	stop                                             ; $7d72: $10 $00
	ld   e, b                                        ; $7d74: $58
	add  l                                           ; $7d75: $85
	jr   nz, jr_014_7d78                             ; $7d76: $20 $00

jr_014_7d78:
	or   b                                           ; $7d78: $b0
	add  c                                           ; $7d79: $81
	ld   b, b                                        ; $7d7a: $40
	nop                                              ; $7d7b: $00
	and  a                                           ; $7d7c: $a7
	add  c                                           ; $7d7d: $81
	ld   [bc], a                                     ; $7d7e: $02
	nop                                              ; $7d7f: $00
	dec  bc                                          ; $7d80: $0b
	add  e                                           ; $7d81: $83
	inc  b                                           ; $7d82: $04
	nop                                              ; $7d83: $00
	ld   d, $85                                      ; $7d84: $16 $85
	ld   [$2c00], sp                                 ; $7d86: $08 $00 $2c
	add  l                                           ; $7d89: $85
	stop                                             ; $7d8a: $10 $00
	ld   e, b                                        ; $7d8c: $58
	add  e                                           ; $7d8d: $83
	jr   nz, jr_014_7d92                             ; $7d8e: $20 $02

	ld   e, [hl]                                     ; $7d90: $5e
	inc  b                                           ; $7d91: $04

jr_014_7d92:
	ld   d, $85                                      ; $7d92: $16 $85
	ld   [$2c00], sp                                 ; $7d94: $08 $00 $2c
	add  e                                           ; $7d97: $83
	stop                                             ; $7d98: $10 $00
	ld   e, b                                        ; $7d9a: $58
	add  l                                           ; $7d9b: $85
	jr   nz, jr_014_7d9e                             ; $7d9c: $20 $00

jr_014_7d9e:
	or   b                                           ; $7d9e: $b0
	add  l                                           ; $7d9f: $85
	ld   b, b                                        ; $7da0: $40
	nop                                              ; $7da1: $00
	and  b                                           ; $7da2: $a0
	add  h                                           ; $7da3: $84
	nop                                              ; $7da4: $00
	add  d                                           ; $7da5: $82
	db   $10                                         ; $7da6: $10
	add  b                                           ; $7da7: $80
	ld   l, b                                        ; $7da8: $68
	add  b                                           ; $7da9: $80
	add  h                                           ; $7daa: $84
	add  b                                           ; $7dab: $80
	ld   b, $80                                      ; $7dac: $06 $80
	ld   [$0092], sp                                 ; $7dae: $08 $92 $00
	add  d                                           ; $7db1: $82
	db   $10                                         ; $7db2: $10
	add  b                                           ; $7db3: $80
	ld   l, h                                        ; $7db4: $6c
	add  b                                           ; $7db5: $80
	add  d                                           ; $7db6: $82
	add  b                                           ; $7db7: $80
	ld   bc, $0e80                                   ; $7db8: $01 $80 $0e
	sbc  d                                           ; $7dbb: $9a
	nop                                              ; $7dbc: $00
	add  b                                           ; $7dbd: $80
	add  b                                           ; $7dbe: $80
	sub  b                                           ; $7dbf: $90
	nop                                              ; $7dc0: $00
	add  b                                           ; $7dc1: $80
	ld   sp, $2e80                                   ; $7dc2: $31 $80 $2e
	add  d                                           ; $7dc5: $82
	ld   b, b                                        ; $7dc6: $40
	add  d                                           ; $7dc7: $82
	add  b                                           ; $7dc8: $80
	sub  d                                           ; $7dc9: $92
	nop                                              ; $7dca: $00
	add  d                                           ; $7dcb: $82
	add  b                                           ; $7dcc: $80
	add  b                                           ; $7dcd: $80
	ld   h, b                                        ; $7dce: $60
	add  b                                           ; $7dcf: $80
	db   $10                                         ; $7dd0: $10
	add  b                                           ; $7dd1: $80
	ld   [$0482], sp                                 ; $7dd2: $08 $82 $04
	add  b                                           ; $7dd5: $80
	ld   [$1080], sp                                 ; $7dd6: $08 $80 $10
	adc  c                                           ; $7dd9: $89
	nop                                              ; $7dda: $00
	ld   b, $18                                      ; $7ddb: $06 $18
	sub  $da                                         ; $7ddd: $d6 $da
	ret  z                                           ; $7ddf: $c8

	db   $f4                                         ; $7de0: $f4
	push de                                          ; $7de1: $d5
	xor  l                                           ; $7de2: $ad
	add  c                                           ; $7de3: $81
	xor  a                                           ; $7de4: $af
	add  b                                           ; $7de5: $80
	ld   l, a                                        ; $7de6: $6f
	add  b                                           ; $7de7: $80
	ld   [hl], b                                     ; $7de8: $70
	add  b                                           ; $7de9: $80
	ld   l, a                                        ; $7dea: $6f
	add  b                                           ; $7deb: $80
	rst  $28                                         ; $7dec: $ef
	add  b                                           ; $7ded: $80
	rst  $30                                         ; $7dee: $f7
	add  b                                           ; $7def: $80
	db   $eb                                         ; $7df0: $eb
	add  b                                           ; $7df1: $80
	push af                                          ; $7df2: $f5
	add  hl, bc                                      ; $7df3: $09
	push hl                                          ; $7df4: $e5
	push af                                          ; $7df5: $f5
	jp   nc, $36f6                                   ; $7df6: $d2 $f6 $36

	ld   c, $ee                                      ; $7df9: $0e $ee
	or   $f4                                         ; $7dfb: $f6 $f4
	ldh  [$88], a                                    ; $7dfd: $e0 $88
	rst  $38                                         ; $7dff: $ff
	dec  b                                           ; $7e00: $05
	sbc  $ff                                         ; $7e01: $de $ff
	reti                                             ; $7e03: $d9


	rst  $38                                         ; $7e04: $ff
	dec  de                                          ; $7e05: $1b
	inc  e                                           ; $7e06: $1c
	add  b                                           ; $7e07: $80
	ret  nz                                          ; $7e08: $c0

	nop                                              ; $7e09: $00
	and  b                                           ; $7e0a: $a0
	add  b                                           ; $7e0b: $80
	or   d                                           ; $7e0c: $b2
	ld   [bc], a                                     ; $7e0d: $02
	and  a                                           ; $7e0e: $a7
	and  l                                           ; $7e0f: $a5
	and  d                                           ; $7e10: $a2
	add  b                                           ; $7e11: $80
	add  d                                           ; $7e12: $82
	dec  b                                           ; $7e13: $05
	add  a                                           ; $7e14: $87
	and  a                                           ; $7e15: $a7
	and  d                                           ; $7e16: $a2
	sub  d                                           ; $7e17: $92
	jr   z, jr_014_7e52                              ; $7e18: $28 $38

	add  c                                           ; $7e1a: $81
	ld   bc, $4d80                                   ; $7e1b: $01 $80 $4d
	ld   a, [bc]                                     ; $7e1e: $0a
	push hl                                          ; $7e1f: $e5
	pop  hl                                          ; $7e20: $e1
	ld   b, l                                        ; $7e21: $45
	dec  b                                           ; $7e22: $05
	ld   b, l                                        ; $7e23: $45
	ldh  [$e5], a                                    ; $7e24: $e0 $e5
	ld   b, l                                        ; $7e26: $45
	ld   c, l                                        ; $7e27: $4d
	ld   a, [bc]                                     ; $7e28: $0a
	rlca                                             ; $7e29: $07
	add  d                                           ; $7e2a: $82
	rst  $38                                         ; $7e2b: $ff
	inc  c                                           ; $7e2c: $0c
	ei                                               ; $7e2d: $fb
	rst  $38                                         ; $7e2e: $ff
	ld   sp, hl                                      ; $7e2f: $f9
	rst  $38                                         ; $7e30: $ff
	push af                                          ; $7e31: $f5
	rst  $38                                         ; $7e32: $ff

jr_014_7e33:
	di                                               ; $7e33: $f3
	rst  $38                                         ; $7e34: $ff
	dec  de                                          ; $7e35: $1b
	rst  $38                                         ; $7e36: $ff
	ldh  [c], a                                      ; $7e37: $e2
	sub  d                                           ; $7e38: $92
	sub  b                                           ; $7e39: $90
	add  b                                           ; $7e3a: $80
	sbc  h                                           ; $7e3b: $9c
	add  b                                           ; $7e3c: $80
	and  a                                           ; $7e3d: $a7
	add  b                                           ; $7e3e: $80
	ld   [hl], b                                     ; $7e3f: $70
	add  hl, bc                                      ; $7e40: $09
	set  7, e                                        ; $7e41: $cb $fb
	jr   nc, jr_014_7e33                             ; $7e43: $30 $ee

	rst  $28                                         ; $7e45: $ef
	pop  af                                          ; $7e46: $f1
	ldh  a, [rLCDC]                                  ; $7e47: $f0 $40
	ld   c, c                                        ; $7e49: $49
	add  hl, bc                                      ; $7e4a: $09
	add  b                                           ; $7e4b: $80
	add  hl, sp                                      ; $7e4c: $39
	add  b                                           ; $7e4d: $80
	push af                                          ; $7e4e: $f5
	add  b                                           ; $7e4f: $80
	ld   c, [hl]                                     ; $7e50: $4e
	rrca                                             ; $7e51: $0f

jr_014_7e52:
	db   $d3                                         ; $7e52: $d3
	rst  JumpTable                                         ; $7e53: $df
	inc  c                                           ; $7e54: $0c
	rlca                                             ; $7e55: $07
	ld   [hl], a                                     ; $7e56: $77
	ld   a, a                                        ; $7e57: $7f
	rrca                                             ; $7e58: $0f
	adc  b                                           ; $7e59: $88
	ld   a, [hl+]                                    ; $7e5a: $2a
	ld   a, [de]                                     ; $7e5b: $1a
	cp   d                                           ; $7e5c: $ba
	xor  d                                           ; $7e5d: $aa
	cp   d                                           ; $7e5e: $ba
	dec  de                                          ; $7e5f: $1b
	cp   e                                           ; $7e60: $bb
	cp   c                                           ; $7e61: $b9
	add  b                                           ; $7e62: $80
	xor  e                                           ; $7e63: $ab
	ld   bc, $f8fb                                   ; $7e64: $01 $fb $f8
	add  b                                           ; $7e67: $80
	dec  sp                                          ; $7e68: $3b
	ld   [bc], a                                     ; $7e69: $02
	ld   e, c                                        ; $7e6a: $59
	ld   l, $7f                                      ; $7e6b: $2e $7f
	add  b                                           ; $7e6d: $80
	ccf                                              ; $7e6e: $3f
	add  b                                           ; $7e6f: $80
	db   $dd                                         ; $7e70: $dd
	dec  b                                           ; $7e71: $05
	ld   [hl-], a                                    ; $7e72: $32
	ld   [hl], d                                     ; $7e73: $72
	jp   c, $d1ba                                    ; $7e74: $da $ba $d1

	pop  af                                          ; $7e77: $f1
	add  b                                           ; $7e78: $80
	rst  $28                                         ; $7e79: $ef
	add  hl, bc                                      ; $7e7a: $09
	ld   e, a                                        ; $7e7b: $5f
	rst  JumpTable                                         ; $7e7c: $df
	ld   a, a                                        ; $7e7d: $7f
	rst  $38                                         ; $7e7e: $ff
	db   $fd                                         ; $7e7f: $fd
	rst  $38                                         ; $7e80: $ff
	cp   h                                           ; $7e81: $bc
	cp   a                                           ; $7e82: $bf
	ld   c, [hl]                                     ; $7e83: $4e
	ld   c, a                                        ; $7e84: $4f
	add  b                                           ; $7e85: $80
	ld   e, a                                        ; $7e86: $5f
	add  b                                           ; $7e87: $80
	adc  a                                           ; $7e88: $8f
	add  b                                           ; $7e89: $80
	rst  $30                                         ; $7e8a: $f7
	ld   a, [bc]                                     ; $7e8b: $0a
	cp   e                                           ; $7e8c: $bb
	ei                                               ; $7e8d: $fb
	pop  de                                          ; $7e8e: $d1
	call nc, $ddd8                                   ; $7e8f: $d4 $d8 $dd
	push de                                          ; $7e92: $d5
	db   $dd                                         ; $7e93: $dd
	ret  z                                           ; $7e94: $c8

	db   $dd                                         ; $7e95: $dd
	sbc  l                                           ; $7e96: $9d
	add  b                                           ; $7e97: $80
	push de                                          ; $7e98: $d5
	add  b                                           ; $7e99: $80
	rst  JumpTable                                         ; $7e9a: $df
	inc  bc                                          ; $7e9b: $03
	call c, $989c                                    ; $7e9c: $dc $9c $98
	rst  $20                                         ; $7e9f: $e7
	add  b                                           ; $7ea0: $80
	nop                                              ; $7ea1: $00
	add  c                                           ; $7ea2: $81
	rst  $38                                         ; $7ea3: $ff
	ld   [bc], a                                     ; $7ea4: $02
	ccf                                              ; $7ea5: $3f
	rst  $38                                         ; $7ea6: $ff
	ret  nz                                          ; $7ea7: $c0

	add  b                                           ; $7ea8: $80
	rst  $38                                         ; $7ea9: $ff
	add  b                                           ; $7eaa: $80
	ret  nz                                          ; $7eab: $c0

	inc  bc                                          ; $7eac: $03
	ld   a, $3d                                      ; $7ead: $3e $3d
	ld   a, a                                        ; $7eaf: $7f
	ld   a, h                                        ; $7eb0: $7c
	add  b                                           ; $7eb1: $80
	add  c                                           ; $7eb2: $81
	add  b                                           ; $7eb3: $80
	add  d                                           ; $7eb4: $82
	add  b                                           ; $7eb5: $80
	ld   a, [hl-]                                    ; $7eb6: $3a
	add  b                                           ; $7eb7: $80
	ld   b, d                                        ; $7eb8: $42
	add  b                                           ; $7eb9: $80
	ld   a, [hl-]                                    ; $7eba: $3a
	add  b                                           ; $7ebb: $80
	ret  nz                                          ; $7ebc: $c0

	add  b                                           ; $7ebd: $80
	inc  a                                           ; $7ebe: $3c
	rlca                                             ; $7ebf: $07
	ret  nz                                          ; $7ec0: $c0

	sbc  a                                           ; $7ec1: $9f
	rst  JumpTable                                         ; $7ec2: $df
	cp   [hl]                                        ; $7ec3: $be
	cp   a                                           ; $7ec4: $bf
	sbc  h                                           ; $7ec5: $9c
	cp   a                                           ; $7ec6: $bf
	and  e                                           ; $7ec7: $a3
	add  b                                           ; $7ec8: $80
	cp   l                                           ; $7ec9: $bd
	ld   bc, $babb                                   ; $7eca: $01 $bb $ba
	add  b                                           ; $7ecd: $80
	rst  $10                                         ; $7ece: $d7
	add  b                                           ; $7ecf: $80
	rst  JumpTable                                         ; $7ed0: $df
	dec  bc                                          ; $7ed1: $0b
	ld   l, a                                        ; $7ed2: $6f
	inc  d                                           ; $7ed3: $14
	ei                                               ; $7ed4: $fb
	ld   a, l                                        ; $7ed5: $7d
	db   $fd                                         ; $7ed6: $fd
	db   $dd                                         ; $7ed7: $dd
	db   $fd                                         ; $7ed8: $fd
	call $adfd                                       ; $7ed9: $cd $fd $ad
	db   $fd                                         ; $7edc: $fd
	sbc  e                                           ; $7edd: $9b
	add  c                                           ; $7ede: $81
	ei                                               ; $7edf: $fb
	ld   a, [bc]                                     ; $7ee0: $0a
	sub  $f6                                         ; $7ee1: $d6 $f6
	rrca                                             ; $7ee3: $0f
	ld   a, a                                        ; $7ee4: $7f
	ld   [hl], a                                     ; $7ee5: $77
	cp   a                                           ; $7ee6: $bf
	cp   e                                           ; $7ee7: $bb
	rst  JumpTable                                         ; $7ee8: $df
	call c, $3ede                                    ; $7ee9: $dc $de $3e
	add  b                                           ; $7eec: $80
	db   $ed                                         ; $7eed: $ed
	dec  b                                           ; $7eee: $05
	db   $eb                                         ; $7eef: $eb
	ei                                               ; $7ef0: $fb
	rst  $30                                         ; $7ef1: $f7
	rst  $20                                         ; $7ef2: $e7
	and  $06                                         ; $7ef3: $e6 $06
	add  b                                           ; $7ef5: $80
	dec  a                                           ; $7ef6: $3d
	add  b                                           ; $7ef7: $80
	pop  bc                                          ; $7ef8: $c1
	add  b                                           ; $7ef9: $80
	dec  a                                           ; $7efa: $3d
	add  b                                           ; $7efb: $80
	pop  bc                                          ; $7efc: $c1
	add  b                                           ; $7efd: $80
	dec  a                                           ; $7efe: $3d
	add  b                                           ; $7eff: $80
	pop  bc                                          ; $7f00: $c1
	add  b                                           ; $7f01: $80
	dec  sp                                          ; $7f02: $3b
	add  b                                           ; $7f03: $80
	jp   nz, $7380                                   ; $7f04: $c2 $80 $73

	add  b                                           ; $7f07: $80
	inc  a                                           ; $7f08: $3c
	add  b                                           ; $7f09: $80
	ld   e, a                                        ; $7f0a: $5f
	add  b                                           ; $7f0b: $80
	xor  a                                           ; $7f0c: $af
	add  b                                           ; $7f0d: $80
	or   e                                           ; $7f0e: $b3
	ld   b, $35                                      ; $7f0f: $06 $35
	ld   [hl], l                                     ; $7f11: $75
	ld   b, [hl]                                     ; $7f12: $46
	and  $ef                                         ; $7f13: $e6 $ef
	pop  bc                                          ; $7f15: $c1
	adc  $80                                         ; $7f16: $ce $80
	inc  a                                           ; $7f18: $3c
	inc  b                                           ; $7f19: $04
	ld   hl, sp-$06                                  ; $7f1a: $f8 $fa
	add  d                                           ; $7f1c: $82
	push af                                          ; $7f1d: $f5
	ld   [hl], l                                     ; $7f1e: $75
	add  b                                           ; $7f1f: $80
	call $ac06                                       ; $7f20: $cd $06 $ac
	xor  [hl]                                        ; $7f23: $ae
	ld   h, d                                        ; $7f24: $62
	ld   h, a                                        ; $7f25: $67
	rst  $30                                         ; $7f26: $f7
	sub  h                                           ; $7f27: $94
	inc  h                                           ; $7f28: $24
	add  d                                           ; $7f29: $82
	inc  a                                           ; $7f2a: $3c
	add  b                                           ; $7f2b: $80
	cp   l                                           ; $7f2c: $bd
	add  b                                           ; $7f2d: $80
	sbc  l                                           ; $7f2e: $9d
	add  b                                           ; $7f2f: $80
	adc  l                                           ; $7f30: $8d
	add  b                                           ; $7f31: $80
	cp   l                                           ; $7f32: $bd
	add  b                                           ; $7f33: $80
	cp   d                                           ; $7f34: $ba
	add  hl, bc                                      ; $7f35: $09
	ld   b, b                                        ; $7f36: $40
	ld   a, b                                        ; $7f37: $78
	ld   sp, hl                                      ; $7f38: $f9
	sbc  c                                           ; $7f39: $99
	sbc  e                                           ; $7f3a: $9b
	db   $e3                                         ; $7f3b: $e3
	ld   h, a                                        ; $7f3c: $67
	ld   [hl], a                                     ; $7f3d: $77
	rst  $30                                         ; $7f3e: $f7
	add  a                                           ; $7f3f: $87
	add  b                                           ; $7f40: $80
	db   $d3                                         ; $7f41: $d3
	add  b                                           ; $7f42: $80
	dec  [hl]                                        ; $7f43: $35
	add  b                                           ; $7f44: $80
	ld   l, l                                        ; $7f45: $6d
	ld   bc, $f3f0                                   ; $7f46: $01 $f0 $f3
	add  b                                           ; $7f49: $80
	ld   a, e                                        ; $7f4a: $7b
	inc  bc                                          ; $7f4b: $03
	cp   a                                           ; $7f4c: $bf
	cp   l                                           ; $7f4d: $bd
	cp   h                                           ; $7f4e: $bc
	cp   l                                           ; $7f4f: $bd
	add  b                                           ; $7f50: $80
	sbc  $07                                         ; $7f51: $de $07
	rst  $10                                         ; $7f53: $d7
	rst  JumpTable                                         ; $7f54: $df
	rst  $20                                         ; $7f55: $e7
	rst  $28                                         ; $7f56: $ef
	adc  a                                           ; $7f57: $8f
	rst  $28                                         ; $7f58: $ef
	ld   l, a                                        ; $7f59: $6f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7f5a: $cf
	add  b                                           ; $7f5b: $80
	sbc  $07                                         ; $7f5c: $de $07
	ld   a, c                                        ; $7f5e: $79
	cp   l                                           ; $7f5f: $bd
	cp   c                                           ; $7f60: $b9
	cp   h                                           ; $7f61: $bc
	ld   [hl], d                                     ; $7f62: $72
	ld   a, e                                        ; $7f63: $7b
	di                                               ; $7f64: $f3
	ei                                               ; $7f65: $fb
	add  b                                           ; $7f66: $80
	rst  $30                                         ; $7f67: $f7
	dec  b                                           ; $7f68: $05
	pop  af                                          ; $7f69: $f1
	rst  $30                                         ; $7f6a: $f7
	db   $fc                                         ; $7f6b: $fc
	cp   d                                           ; $7f6c: $ba
	ld   a, [$803a]                                  ; $7f6d: $fa $3a $80
	ld   a, [de]                                     ; $7f70: $1a
	add  b                                           ; $7f71: $80
	ld   a, d                                        ; $7f72: $7a
	ld   bc, $0282                                   ; $7f73: $01 $82 $02
	add  d                                           ; $7f76: $82
	or   $80                                         ; $7f77: $f6 $80
	db   $10                                         ; $7f79: $10
	add  b                                           ; $7f7a: $80
	ld   e, d                                        ; $7f7b: $5a
	add  b                                           ; $7f7c: $80
	inc  a                                           ; $7f7d: $3c
	ld   bc, $7f7e                                   ; $7f7e: $01 $7e $7f
	add  b                                           ; $7f81: $80
	rra                                              ; $7f82: $1f
	ld   c, $ed                                      ; $7f83: $0e $ed
	rst  $28                                         ; $7f85: $ef
	ld   [hl], e                                     ; $7f86: $73
	ld   [hl], a                                     ; $7f87: $77
	rlca                                             ; $7f88: $07
	inc  bc                                          ; $7f89: $03
	cp   e                                           ; $7f8a: $bb
	cp   c                                           ; $7f8b: $b9
	ld   c, $ef                                      ; $7f8c: $0e $ef
	rst  $20                                         ; $7f8e: $e7
	rst  $30                                         ; $7f8f: $f7
	pop  af                                          ; $7f90: $f1
	ld   [hl], a                                     ; $7f91: $77
	halt                                             ; $7f92: $76
	add  b                                           ; $7f93: $80
	ld   [hl], a                                     ; $7f94: $77
	add  b                                           ; $7f95: $80
	cp   a                                           ; $7f96: $bf
	add  b                                           ; $7f97: $80
	add  e                                           ; $7f98: $83
	add  b                                           ; $7f99: $80
	db   $ec                                         ; $7f9a: $ec
	rlca                                             ; $7f9b: $07
	rst  JumpTable                                         ; $7f9c: $df
	cpl                                              ; $7f9d: $2f
	rst  $30                                         ; $7f9e: $f7
	rst  $20                                         ; $7f9f: $e7
	rst  $28                                         ; $7fa0: $ef
	adc  a                                           ; $7fa1: $8f
	xor  $6e                                         ; $7fa2: $ee $6e
	add  b                                           ; $7fa4: $80
	xor  $80                                         ; $7fa5: $ee $80
	db   $fd                                         ; $7fa7: $fd
	add  b                                           ; $7fa8: $80
	pop  bc                                          ; $7fa9: $c1
	add  b                                           ; $7faa: $80
	scf                                              ; $7fab: $37
	ld   [bc], a                                     ; $7fac: $02
	ei                                               ; $7fad: $fb
	and  c                                           ; $7fae: $a1
	ld   e, d                                        ; $7faf: $5a
	add  b                                           ; $7fb0: $80
	inc  a                                           ; $7fb1: $3c
	inc  c                                           ; $7fb2: $0c
	ld   l, [hl]                                     ; $7fb3: $6e
	cp   $e8                                         ; $7fb4: $fe $e8
	ld   hl, sp-$49                                  ; $7fb6: $f8 $b7
	rst  $30                                         ; $7fb8: $f7
	adc  $ee                                         ; $7fb9: $ce $ee
	ldh  [$c0], a                                    ; $7fbb: $e0 $c0
	db   $dd                                         ; $7fbd: $dd
	sbc  l                                           ; $7fbe: $9d
	ld   a, a                                        ; $7fbf: $7f
	xor  l                                           ; $7fc0: $ad
	nop                                              ; $7fc1: $00
	nop                                              ; $7fc2: $00
	ld   c, $83                                      ; $7fc3: $0e $83
	inc  b                                           ; $7fc5: $04
	ld   [bc], a                                     ; $7fc6: $02
	ld   h, h                                        ; $7fc7: $64
	inc  b                                           ; $7fc8: $04
	ld   [hl], $83                                   ; $7fc9: $36 $83
	jr   z, jr_014_7fcf                              ; $7fcb: $28 $02

	ld   e, b                                        ; $7fcd: $58
	db   $10                                         ; $7fce: $10

jr_014_7fcf:
	inc  a                                           ; $7fcf: $3c
	adc  l                                           ; $7fd0: $8d
	nop                                              ; $7fd1: $00
	ld   b, $20                                      ; $7fd2: $06 $20
	ret  nz                                          ; $7fd4: $c0

	ld   b, b                                        ; $7fd5: $40
	ret  nz                                          ; $7fd6: $c0

	ld   b, b                                        ; $7fd7: $40
	ret  nz                                          ; $7fd8: $c0

	ld   b, b                                        ; $7fd9: $40
	add  e                                           ; $7fda: $83
	ret  nz                                          ; $7fdb: $c0

	nop                                              ; $7fdc: $00
	and  b                                           ; $7fdd: $a0
	add  c                                           ; $7fde: $81
	add  b                                           ; $7fdf: $80
	inc  b                                           ; $7fe0: $04
	nop                                              ; $7fe1: $00
	add  b                                           ; $7fe2: $80
	ld   b, b                                        ; $7fe3: $40
	nop                                              ; $7fe4: $00
	add  b                                           ; $7fe5: $80
	add  e                                           ; $7fe6: $83
	nop                                              ; $7fe7: $00
	inc  bc                                          ; $7fe8: $03
	ldh  a, [rP1]                                    ; $7fe9: $f0 $00
	rst  $38                                         ; $7feb: $ff
	ldh  a, [$81]                                    ; $7fec: $f0 $81
	rst  $38                                         ; $7fee: $ff
	rst  $38                                         ; $7fef: $ff
	nop                                              ; $7ff0: $00
	rst  $38                                         ; $7ff1: $ff
	nop                                              ; $7ff2: $00
	rst  $38                                         ; $7ff3: $ff
	nop                                              ; $7ff4: $00
	cp   d                                           ; $7ff5: $ba
	nop                                              ; $7ff6: $00
	nop                                              ; $7ff7: $00
	nop                                              ; $7ff8: $00
	nop                                              ; $7ff9: $00
	nop                                              ; $7ffa: $00

Jump_014_7ffb:
	nop                                              ; $7ffb: $00
	nop                                              ; $7ffc: $00
	nop                                              ; $7ffd: $00
	nop                                              ; $7ffe: $00
	nop                                              ; $7fff: $00
