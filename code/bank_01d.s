; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $01d", ROMX[$4000], BANK[$1d]

	jr   nz, jr_01d_4002                             ; $4000: $20 $00

jr_01d_4002:
	ld   b, $47                                      ; $4002: $06 $47
	rrca                                             ; $4004: $0f
	ld   bc, $0103                                   ; $4005: $01 $03 $01
	rlca                                             ; $4008: $07
	add  hl, de                                      ; $4009: $19
	adc  e                                           ; $400a: $8b
	nop                                              ; $400b: $00
	ld   a, a                                        ; $400c: $7f
	sub  c                                           ; $400d: $91
	ld   bc, $0103                                   ; $400e: $01 $03 $01
	rrca                                             ; $4011: $0f
	ld   bc, $0103                                   ; $4012: $01 $03 $01
	rlca                                             ; $4015: $07
	ld   bc, $0103                                   ; $4016: $01 $03 $01
	sbc  b                                           ; $4019: $98
	rrca                                             ; $401a: $0f
	ld   bc, $0103                                   ; $401b: $01 $03 $01
	rlca                                             ; $401e: $07
	add  hl, bc                                      ; $401f: $09
	sub  l                                           ; $4020: $95
	ld   bc, $0103                                   ; $4021: $01 $03 $01
	inc  bc                                          ; $4024: $03
	ld   bc, $0103                                   ; $4025: $01 $03 $01
	inc  bc                                          ; $4028: $03
	ld   bc, $0103                                   ; $4029: $01 $03 $01
	sub  [hl]                                        ; $402c: $96
	add  c                                           ; $402d: $81
	ld   bc, $0103                                   ; $402e: $01 $03 $01
	rrca                                             ; $4031: $0f
	ld   bc, $0103                                   ; $4032: $01 $03 $01
	rlca                                             ; $4035: $07
	ld   bc, $0103                                   ; $4036: $01 $03 $01
	cp   b                                           ; $4039: $b8
	rrca                                             ; $403a: $0f
	ld   bc, $0103                                   ; $403b: $01 $03 $01
	rlca                                             ; $403e: $07
	ld   l, h                                        ; $403f: $6c
	ret  nc                                          ; $4040: $d0

	ld   bc, $0103                                   ; $4041: $01 $03 $01
	inc  bc                                          ; $4044: $03
	ld   bc, $0103                                   ; $4045: $01 $03 $01
	inc  bc                                          ; $4048: $03
	ld   bc, $0103                                   ; $4049: $01 $03 $01
	db   $d3                                         ; $404c: $d3
	db   $e4                                         ; $404d: $e4
	ld   bc, $0103                                   ; $404e: $01 $03 $01
	rrca                                             ; $4051: $0f
	ld   bc, $0103                                   ; $4052: $01 $03 $01
	rlca                                             ; $4055: $07
	ld   bc, $0103                                   ; $4056: $01 $03 $01
	sbc  b                                           ; $4059: $98
	rrca                                             ; $405a: $0f
	ld   bc, $0103                                   ; $405b: $01 $03 $01
	rlca                                             ; $405e: $07
	ld   a, h                                        ; $405f: $7c
	ldh  [rSB], a                                    ; $4060: $e0 $01
	inc  bc                                          ; $4062: $03
	ld   bc, $0103                                   ; $4063: $01 $03 $01
	inc  bc                                          ; $4066: $03
	ld   bc, $0103                                   ; $4067: $01 $03 $01
	inc  bc                                          ; $406a: $03
	ld   bc, $f4e3                                   ; $406b: $01 $e3 $f4
	ld   bc, $0103                                   ; $406e: $01 $03 $01
	rrca                                             ; $4071: $0f
	ld   bc, $0103                                   ; $4072: $01 $03 $01
	rlca                                             ; $4075: $07
	ld   bc, $0103                                   ; $4076: $01 $03 $01
	or   d                                           ; $4079: $b2
	inc  bc                                          ; $407a: $03
	ld   bc, $0322                                   ; $407b: $01 $22 $03
	ld   bc, $f16e                                   ; $407e: $01 $6e $f1
	ld   bc, $0103                                   ; $4081: $01 $03 $01
	inc  bc                                          ; $4084: $03
	ld   bc, $0103                                   ; $4085: $01 $03 $01
	inc  bc                                          ; $4088: $03
	ld   bc, $0103                                   ; $4089: $01 $03 $01
	ldh  a, [c]                                      ; $408c: $f2
	dec  l                                           ; $408d: $2d
	add  c                                           ; $408e: $81
	ld   bc, $0103                                   ; $408f: $01 $03 $01
	rlca                                             ; $4092: $07
	ld   bc, $0103                                   ; $4093: $01 $03 $01
	rrca                                             ; $4096: $0f
	ld   bc, $0103                                   ; $4097: $01 $03 $01
	sub  $03                                         ; $409a: $d6 $03
	ld   bc, $0322                                   ; $409c: $01 $22 $03
	ld   bc, $c17e                                   ; $409f: $01 $7e $c1
	ld   bc, $0103                                   ; $40a2: $01 $03 $01
	inc  bc                                          ; $40a5: $03
	ld   bc, $0103                                   ; $40a6: $01 $03 $01
	inc  bc                                          ; $40a9: $03
	ld   bc, $0103                                   ; $40aa: $01 $03 $01
	jp   nz, $0191                                   ; $40ad: $c2 $91 $01

	inc  bc                                          ; $40b0: $03
	ld   bc, $0107                                   ; $40b1: $01 $07 $01
	inc  bc                                          ; $40b4: $03
	ld   bc, $010f                                   ; $40b5: $01 $0f $01
	inc  bc                                          ; $40b8: $03
	ld   bc, $11df                                   ; $40b9: $01 $df $11
	add  b                                           ; $40bc: $80
	nop                                              ; $40bd: $00
	inc  a                                           ; $40be: $3c
	ld   a, $0d                                      ; $40bf: $3e $0d
	ld   h, h                                        ; $40c1: $64
	jp   nc, $0301                                   ; $40c2: $d2 $01 $03

	ld   bc, $0103                                   ; $40c5: $01 $03 $01
	inc  bc                                          ; $40c8: $03
	ld   bc, $0103                                   ; $40c9: $01 $03 $01
	inc  bc                                          ; $40cc: $03
	ld   bc, $a2d1                                   ; $40cd: $01 $d1 $a2
	ld   bc, $0103                                   ; $40d0: $01 $03 $01
	rlca                                             ; $40d3: $07
	ld   bc, $0103                                   ; $40d4: $01 $03 $01
	rrca                                             ; $40d7: $0f
	ld   bc, $0103                                   ; $40d8: $01 $03 $01
	rst  $38                                         ; $40db: $ff
	ld   bc, $2213                                   ; $40dc: $01 $13 $22
	ld   hl, $7433                                   ; $40df: $21 $33 $74
	ldh  [c], a                                      ; $40e2: $e2
	ld   bc, $0103                                   ; $40e3: $01 $03 $01
	inc  bc                                          ; $40e6: $03
	ld   bc, $0103                                   ; $40e7: $01 $03 $01
	inc  bc                                          ; $40ea: $03
	ld   bc, $0103                                   ; $40eb: $01 $03 $01
	pop  hl                                          ; $40ee: $e1
	or   d                                           ; $40ef: $b2
	ld   bc, $0103                                   ; $40f0: $01 $03 $01
	rlca                                             ; $40f3: $07
	ld   bc, $0103                                   ; $40f4: $01 $03 $01
	rrca                                             ; $40f7: $0f
	ld   bc, $0103                                   ; $40f8: $01 $03 $01
	adc  $83                                         ; $40fb: $ce $83
	nop                                              ; $40fd: $00
	ld   a, a                                        ; $40fe: $7f
	halt                                             ; $40ff: $76
	di                                               ; $4100: $f3
	ld   bc, $0103                                   ; $4101: $01 $03 $01
	inc  bc                                          ; $4104: $03
	ld   bc, $0103                                   ; $4105: $01 $03 $01
	inc  bc                                          ; $4108: $03
	ld   bc, $0103                                   ; $4109: $01 $03 $01
	ldh  a, [$8f]                                    ; $410c: $f0 $8f
	ld   bc, $0103                                   ; $410e: $01 $03 $01
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4111: $cf
	ld   bc, $0103                                   ; $4112: $01 $03 $01
	add  e                                           ; $4115: $83
	ld   bc, $0103                                   ; $4116: $01 $03 $01
	jp   $0301                                       ; $4119: $c3 $01 $03


	ld   bc, $0107                                   ; $411c: $01 $07 $01
	ld   b, $c3                                      ; $411f: $06 $c3
	ld   bc, $0103                                   ; $4121: $01 $03 $01
	inc  bc                                          ; $4124: $03
	ld   bc, $0103                                   ; $4125: $01 $03 $01
	inc  bc                                          ; $4128: $03
	ld   bc, $0103                                   ; $4129: $01 $03 $01
	ret  nz                                          ; $412c: $c0

	sbc  a                                           ; $412d: $9f
	ld   bc, $0103                                   ; $412e: $01 $03 $01
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4131: $cf
	ld   bc, $0103                                   ; $4132: $01 $03 $01
	add  e                                           ; $4135: $83
	ld   bc, $0103                                   ; $4136: $01 $03 $01
	jp   $0301                                       ; $4139: $c3 $01 $03


	ld   bc, $0107                                   ; $413c: $01 $07 $01
	ld   de, $01d4                                   ; $413f: $11 $d4 $01
	inc  bc                                          ; $4142: $03
	ld   bc, $0103                                   ; $4143: $01 $03 $01
	inc  bc                                          ; $4146: $03
	ld   bc, $0103                                   ; $4147: $01 $03 $01
	inc  bc                                          ; $414a: $03
	ld   bc, $a8d7                                   ; $414b: $01 $d7 $a8
	ld   bc, $0103                                   ; $414e: $01 $03 $01
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4151: $cf
	ld   bc, $0103                                   ; $4152: $01 $03 $01
	add  e                                           ; $4155: $83
	ld   bc, $0103                                   ; $4156: $01 $03 $01
	jp   $0301                                       ; $4159: $c3 $01 $03


	ld   bc, $0107                                   ; $415c: $01 $07 $01
	ld   hl, $01e4                                   ; $415f: $21 $e4 $01
	inc  bc                                          ; $4162: $03
	ld   bc, $0103                                   ; $4163: $01 $03 $01
	inc  bc                                          ; $4166: $03
	ld   bc, $0103                                   ; $4167: $01 $03 $01
	inc  bc                                          ; $416a: $03
	ld   bc, $b8e7                                   ; $416b: $01 $e7 $b8
	ld   bc, $0103                                   ; $416e: $01 $03 $01
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4171: $cf
	ld   bc, $0103                                   ; $4172: $01 $03 $01
	add  e                                           ; $4175: $83
	ld   bc, $0103                                   ; $4176: $01 $03 $01
	jp   $0301                                       ; $4179: $c3 $01 $03


	ld   bc, $0107                                   ; $417c: $01 $07 $01
	inc  hl                                          ; $417f: $23
	ld   h, e                                        ; $4180: $63
	and  [hl]                                        ; $4181: $a6
	ld   bc, $0103                                   ; $4182: $01 $03 $01
	inc  bc                                          ; $4185: $03
	ld   bc, $0103                                   ; $4186: $01 $03 $01
	inc  bc                                          ; $4189: $03
	ld   bc, $0103                                   ; $418a: $01 $03 $01
	and  l                                           ; $418d: $a5
	ld   e, a                                        ; $418e: $5f
	inc  bc                                          ; $418f: $03
	ld   bc, $7907                                   ; $4190: $01 $07 $79
	db   $10                                         ; $4193: $10
	ld   c, $07                                      ; $4194: $0e $07
	ld   bc, $0103                                   ; $4196: $01 $03 $01
	ccf                                              ; $4199: $3f
	ld   d, [hl]                                     ; $419a: $56
	ld   bc, $2e0f                                   ; $419b: $01 $0f $2e
	ld   bc, $250f                                   ; $419e: $01 $0f $25
	inc  bc                                          ; $41a1: $03
	ld   bc, $8859                                   ; $41a2: $01 $59 $88
	nop                                              ; $41a5: $00
	ld   a, [de]                                     ; $41a6: $1a
	ld   c, a                                        ; $41a7: $4f
	inc  bc                                          ; $41a8: $03
	ld   bc, $4d07                                   ; $41a9: $01 $07 $4d
	inc  bc                                          ; $41ac: $03
	ld   bc, $0107                                   ; $41ad: $01 $07 $01
	ld   [hl], e                                     ; $41b0: $73
	nop                                              ; $41b1: $00
	ld   bc, $0131                                   ; $41b2: $01 $31 $01
	rrca                                             ; $41b5: $0f
	ld   l, $01                                      ; $41b6: $2e $01
	rrca                                             ; $41b8: $0f
	dec  h                                           ; $41b9: $25
	inc  bc                                          ; $41ba: $03
	ld   bc, $037a                                   ; $41bb: $01 $7a $03
	ld   bc, $010f                                   ; $41be: $01 $0f $01
	rrca                                             ; $41c1: $0f
	add  c                                           ; $41c2: $81
	nop                                              ; $41c3: $00
	rrca                                             ; $41c4: $0f
	inc  c                                           ; $41c5: $0c
	ld   de, $0352                                   ; $41c6: $11 $52 $03
	ld   bc, $4407                                   ; $41c9: $01 $07 $44
	ld   bc, $0103                                   ; $41cc: $01 $03 $01
	ld   c, d                                        ; $41cf: $4a
	inc  bc                                          ; $41d0: $03
	ld   bc, $6007                                   ; $41d1: $01 $07 $60
	ld   de, $0080                                   ; $41d4: $11 $80 $00
	inc  a                                           ; $41d7: $3c
	ld   a, $0d                                      ; $41d8: $3e $0d
	ld   c, e                                        ; $41da: $4b
	inc  bc                                          ; $41db: $03
	ld   bc, $1f50                                   ; $41dc: $01 $50 $1f
	nop                                              ; $41df: $00
	sub  e                                           ; $41e0: $93
	push af                                          ; $41e1: $f5
	nop                                              ; $41e2: $00
	ldh  a, [c]                                      ; $41e3: $f2
	ld   bc, $f200                                   ; $41e4: $01 $00 $f2
	db   $f4                                         ; $41e7: $f4
	jp   z, $0103                                    ; $41e8: $ca $03 $01

	rlca                                             ; $41eb: $07
	ld   b, h                                        ; $41ec: $44
	ld   bc, $0103                                   ; $41ed: $01 $03 $01
	ld   c, d                                        ; $41f0: $4a
	inc  bc                                          ; $41f1: $03
	ld   bc, $6007                                   ; $41f2: $01 $07 $60
	ld   bc, $2213                                   ; $41f5: $01 $13 $22
	ld   hl, $4b33                                   ; $41f8: $21 $33 $4b
	inc  bc                                          ; $41fb: $03
	ld   bc, $0446                                   ; $41fc: $01 $46 $04
	inc  bc                                          ; $41ff: $03
	ld   [hl], d                                     ; $4200: $72
	ld   bc, $0103                                   ; $4201: $01 $03 $01
	ld   h, e                                        ; $4204: $63
	rlca                                             ; $4205: $07
	sbc  d                                           ; $4206: $9a
	inc  bc                                          ; $4207: $03
	xor  h                                           ; $4208: $ac
	ld   bc, $011f                                   ; $4209: $01 $1f $01
	rla                                              ; $420c: $17
	ld   bc, $010f                                   ; $420d: $01 $0f $01
	rla                                              ; $4210: $17
	ld   bc, $017f                                   ; $4211: $01 $7f $01
	ld   b, h                                        ; $4214: $44
	add  e                                           ; $4215: $83
	nop                                              ; $4216: $00
	ld   a, [hl+]                                    ; $4217: $2a
	ld   bc, $0104                              ; $4218: $01 $04 $01
	inc  bc                                          ; $421b: $03
	ld   b, $00                                      ; $421c: $06 $00
	ld   [hl], c                                     ; $421e: $71
	inc  bc                                          ; $421f: $03
	nop                                              ; $4220: $00
	ld   c, $01                                      ; $4221: $0e $01
	nop                                              ; $4223: $00
	inc  bc                                          ; $4224: $03
	ld   bc, $0149                           ; $4225: $01 $49 $01
	rlca                                             ; $4228: $07
	ld   bc, $011f                                   ; $4229: $01 $1f $01
	rlca                                             ; $422c: $07
	ld   bc, $016f                                   ; $422d: $01 $6f $01
	rlca                                             ; $4230: $07
	ld   bc, $0318                                   ; $4231: $01 $18 $03
	ld   bc, $1f50                                   ; $4234: $01 $50 $1f
	nop                                              ; $4237: $00
	sub  e                                           ; $4238: $93
	push af                                          ; $4239: $f5
	nop                                              ; $423a: $00
	ldh  a, [c]                                      ; $423b: $f2
	ld   bc, $f200                                   ; $423c: $01 $00 $f2
	db   $f4                                         ; $423f: $f4
	jp   z, Jump_01d_4d03                            ; $4240: $ca $03 $4d

	add  c                                           ; $4243: $81
	nop                                              ; $4244: $00
	inc  b                                           ; $4245: $04
	ld   sp, $0f01                                   ; $4246: $31 $01 $0f
	ld   bc, $853e                                   ; $4249: $01 $3e $85
	nop                                              ; $424c: $00
	db   $10                                         ; $424d: $10
	ld   c, d                                        ; $424e: $4a
	inc  bc                                          ; $424f: $03
	ld   bc, $0446                                   ; $4250: $01 $46 $04
	inc  bc                                          ; $4253: $03
	ld   [hl], d                                     ; $4254: $72
	ld   bc, $0103                                   ; $4255: $01 $03 $01
	ld   h, e                                        ; $4258: $63
	rlca                                             ; $4259: $07
	sbc  d                                           ; $425a: $9a
	inc  bc                                          ; $425b: $03
	xor  h                                           ; $425c: $ac
	ld   bc, $8128                                   ; $425d: $01 $28 $81
	nop                                              ; $4260: $00
	inc  b                                           ; $4261: $04
	dec  a                                           ; $4262: $3d
	ld   bc, $0107                                   ; $4263: $01 $07 $01
	ld   a, [hl-]                                    ; $4266: $3a
	add  l                                           ; $4267: $85
	nop                                              ; $4268: $00
	dec  [hl]                                        ; $4269: $35
	inc  bc                                          ; $426a: $03
	inc  b                                           ; $426b: $04
	ld   bc, $0603                                   ; $426c: $01 $03 $06
	nop                                              ; $426f: $00
	ld   [hl], c                                     ; $4270: $71
	inc  bc                                          ; $4271: $03
	nop                                              ; $4272: $00
	ld   c, $01                                      ; $4273: $0e $01
	nop                                              ; $4275: $00
	inc  bc                                          ; $4276: $03
	ld   bc, $0149                           ; $4277: $01 $49 $01
	inc  [hl]                                        ; $427a: $34
	nop                                              ; $427b: $00
	or   $03                                         ; $427c: $f6 $03
	ld   bc, $0312                                   ; $427e: $01 $12 $03
	ld   bc, $0133                                   ; $4281: $01 $33 $01
	inc  bc                                          ; $4284: $03
	ld   bc, $0113                                   ; $4285: $01 $13 $01
	add  $00                                         ; $4288: $c6 $00
	ld   h, c                                        ; $428a: $61
	ld   bc, $010f                                   ; $428b: $01 $0f $01
	inc  bc                                          ; $428e: $03
	ld   bc, $0107                                   ; $428f: $01 $07 $01
	inc  bc                                          ; $4292: $03
	ld   bc, $010f                                   ; $4293: $01 $0f $01
	inc  bc                                          ; $4296: $03
	ld   bc, $032a                                   ; $4297: $01 $2a $03
	ld   c, l                                        ; $429a: $4d
	nop                                              ; $429b: $00
	and  $03                                         ; $429c: $e6 $03
	ld   bc, $88e4                                   ; $429e: $01 $e4 $88
	nop                                              ; $42a1: $00
	dec  d                                           ; $42a2: $15
	ld   d, c                                        ; $42a3: $51
	ld   bc, $010f                                   ; $42a4: $01 $0f $01
	inc  bc                                          ; $42a7: $03
	ld   bc, $0107                                   ; $42a8: $01 $07 $01
	inc  bc                                          ; $42ab: $03
	ld   bc, $010f                                   ; $42ac: $01 $0f $01
	inc  bc                                          ; $42af: $03
	ld   bc, $017d                                   ; $42b0: $01 $7d $01
	jr   z, jr_01d_42b5                              ; $42b3: $28 $00

jr_01d_42b5:
	sub  $03                                         ; $42b5: $d6 $03
	ld   bc, $88d4                                   ; $42b7: $01 $d4 $88
	nop                                              ; $42ba: $00
	dec  d                                           ; $42bb: $15
	ld   b, c                                        ; $42bc: $41
	ld   bc, $010f                                   ; $42bd: $01 $0f $01
	inc  bc                                          ; $42c0: $03
	ld   bc, $0107                                   ; $42c1: $01 $07 $01
	inc  bc                                          ; $42c4: $03
	ld   bc, $012b                                   ; $42c5: $01 $2b $01
	ld   sp, $6701                                   ; $42c8: $31 $01 $67
	ld   bc, $0034                                   ; $42cb: $01 $34 $00
	add  $03                                         ; $42ce: $c6 $03
	ld   bc, $ffc4                                   ; $42d0: $01 $c4 $ff
	nop                                              ; $42d3: $00
	rst  $38                                         ; $42d4: $ff
	nop                                              ; $42d5: $00
	add  [hl]                                        ; $42d6: $86
	nop                                              ; $42d7: $00
	dec  b                                           ; $42d8: $05
	dec  b                                           ; $42d9: $05
	dec  b                                           ; $42da: $05
	dec  b                                           ; $42db: $05
	inc  b                                           ; $42dc: $04
	inc  b                                           ; $42dd: $04
	inc  b                                           ; $42de: $04
	dec  b                                           ; $42df: $05
	dec  b                                           ; $42e0: $05
	dec  b                                           ; $42e1: $05
	dec  b                                           ; $42e2: $05
	dec  b                                           ; $42e3: $05
	dec  b                                           ; $42e4: $05
	dec  b                                           ; $42e5: $05
	dec  b                                           ; $42e6: $05
	dec  b                                           ; $42e7: $05
	dec  c                                           ; $42e8: $0d
	dec  c                                           ; $42e9: $0d
	dec  c                                           ; $42ea: $0d
	dec  c                                           ; $42eb: $0d
	dec  b                                           ; $42ec: $05
	dec  b                                           ; $42ed: $05
	dec  b                                           ; $42ee: $05
	inc  b                                           ; $42ef: $04
	ld   bc, $0100                                   ; $42f0: $01 $00 $01
	inc  b                                           ; $42f3: $04
	dec  b                                           ; $42f4: $05
	dec  b                                           ; $42f5: $05
	dec  b                                           ; $42f6: $05
	dec  b                                           ; $42f7: $05
	dec  b                                           ; $42f8: $05
	dec  b                                           ; $42f9: $05
	dec  b                                           ; $42fa: $05
	dec  b                                           ; $42fb: $05
	dec  c                                           ; $42fc: $0d
	dec  c                                           ; $42fd: $0d
	dec  c                                           ; $42fe: $0d
	dec  c                                           ; $42ff: $0d
	dec  b                                           ; $4300: $05
	dec  b                                           ; $4301: $05
	inc  b                                           ; $4302: $04
	ld   bc, $0101                                   ; $4303: $01 $01 $01
	ld   bc, $0504                                   ; $4306: $01 $04 $05
	dec  b                                           ; $4309: $05
	dec  b                                           ; $430a: $05
	dec  b                                           ; $430b: $05
	dec  b                                           ; $430c: $05
	dec  b                                           ; $430d: $05
	dec  b                                           ; $430e: $05
	dec  b                                           ; $430f: $05
	dec  c                                           ; $4310: $0d
	dec  c                                           ; $4311: $0d
	dec  c                                           ; $4312: $0d
	dec  c                                           ; $4313: $0d
	dec  b                                           ; $4314: $05
	dec  b                                           ; $4315: $05
	inc  b                                           ; $4316: $04
	nop                                              ; $4317: $00
	nop                                              ; $4318: $00
	nop                                              ; $4319: $00
	nop                                              ; $431a: $00
	nop                                              ; $431b: $00
	dec  b                                           ; $431c: $05
	dec  b                                           ; $431d: $05
	dec  b                                           ; $431e: $05
	dec  b                                           ; $431f: $05
	dec  b                                           ; $4320: $05
	dec  b                                           ; $4321: $05
	dec  b                                           ; $4322: $05
	dec  b                                           ; $4323: $05
	dec  c                                           ; $4324: $0d
	dec  c                                           ; $4325: $0d
	dec  c                                           ; $4326: $0d
	dec  c                                           ; $4327: $0d
	dec  b                                           ; $4328: $05
	dec  b                                           ; $4329: $05
	dec  b                                           ; $432a: $05
	inc  b                                           ; $432b: $04
	nop                                              ; $432c: $00
	nop                                              ; $432d: $00
	nop                                              ; $432e: $00
	nop                                              ; $432f: $00
	dec  b                                           ; $4330: $05
	dec  b                                           ; $4331: $05
	dec  b                                           ; $4332: $05
	dec  b                                           ; $4333: $05
	dec  b                                           ; $4334: $05
	dec  b                                           ; $4335: $05
	dec  b                                           ; $4336: $05
	dec  b                                           ; $4337: $05
	dec  c                                           ; $4338: $0d
	dec  c                                           ; $4339: $0d
	dec  c                                           ; $433a: $0d
	dec  c                                           ; $433b: $0d
	dec  b                                           ; $433c: $05
	dec  b                                           ; $433d: $05
	dec  b                                           ; $433e: $05
	inc  b                                           ; $433f: $04
	nop                                              ; $4340: $00
	nop                                              ; $4341: $00
	nop                                              ; $4342: $00
	nop                                              ; $4343: $00
	inc  b                                           ; $4344: $04
	inc  b                                           ; $4345: $04
	dec  b                                           ; $4346: $05
	dec  b                                           ; $4347: $05
	dec  b                                           ; $4348: $05
	dec  b                                           ; $4349: $05
	dec  b                                           ; $434a: $05
	dec  b                                           ; $434b: $05
	dec  c                                           ; $434c: $0d
	dec  c                                           ; $434d: $0d
	dec  c                                           ; $434e: $0d
	dec  c                                           ; $434f: $0d
	dec  b                                           ; $4350: $05
	dec  b                                           ; $4351: $05
	dec  b                                           ; $4352: $05
	inc  b                                           ; $4353: $04
	ld   bc, $0002                                   ; $4354: $01 $02 $00
	ld   bc, $0401                                   ; $4357: $01 $01 $04
	dec  b                                           ; $435a: $05
	dec  b                                           ; $435b: $05
	ld   b, $06                                      ; $435c: $06 $06
	ld   b, $06                                      ; $435e: $06 $06
	ld   c, $0e                                      ; $4360: $0e $0e
	ld   c, $0d                                      ; $4362: $0e $0d
	dec  b                                           ; $4364: $05
	dec  b                                           ; $4365: $05
	inc  b                                           ; $4366: $04
	ld   bc, $0201                                   ; $4367: $01 $01 $02
	ld   [bc], a                                     ; $436a: $02
	ld   bc, $0101                                   ; $436b: $01 $01 $01
	inc  b                                           ; $436e: $04
	inc  b                                           ; $436f: $04
	inc  b                                           ; $4370: $04
	ld   b, $06                                      ; $4371: $06 $06
	ld   b, $0e                                      ; $4373: $06 $0e
	ld   c, $0e                                      ; $4375: $0e $0e
	dec  c                                           ; $4377: $0d
	dec  b                                           ; $4378: $05
	inc  b                                           ; $4379: $04
	inc  b                                           ; $437a: $04
	ld   bc, $0201                                   ; $437b: $01 $01 $02
	ld   [bc], a                                     ; $437e: $02
	ld   bc, $0102                                   ; $437f: $01 $02 $01
	ld   bc, $0401                                   ; $4382: $01 $01 $04
	ld   b, $06                                      ; $4385: $06 $06
	ld   b, $0e                                      ; $4387: $06 $0e
	ld   c, $0e                                      ; $4389: $0e $0e
	dec  c                                           ; $438b: $0d
	inc  c                                           ; $438c: $0c
	add  hl, bc                                      ; $438d: $09
	inc  c                                           ; $438e: $0c
	add  hl, bc                                      ; $438f: $09
	add  hl, bc                                      ; $4390: $09
	add  hl, bc                                      ; $4391: $09
	add  hl, bc                                      ; $4392: $09
	ld   a, [bc]                                     ; $4393: $0a
	ld   a, [bc]                                     ; $4394: $0a
	ld   a, [bc]                                     ; $4395: $0a
	ld   a, [bc]                                     ; $4396: $0a
	inc  c                                           ; $4397: $0c
	ld   b, $06                                      ; $4398: $06 $06
	ld   b, $06                                      ; $439a: $06 $06
	ld   b, $06                                      ; $439c: $06 $06
	ld   b, $0d                                      ; $439e: $06 $0d
	inc  c                                           ; $43a0: $0c
	inc  c                                           ; $43a1: $0c
	inc  c                                           ; $43a2: $0c
	add  hl, bc                                      ; $43a3: $09
	ld   a, [bc]                                     ; $43a4: $0a
	ld   a, [bc]                                     ; $43a5: $0a
	ld   a, [bc]                                     ; $43a6: $0a
	ld   a, [bc]                                     ; $43a7: $0a
	ld   a, [bc]                                     ; $43a8: $0a
	ld   a, [bc]                                     ; $43a9: $0a
	ld   a, [bc]                                     ; $43aa: $0a
	dec  c                                           ; $43ab: $0d
	ld   b, $06                                      ; $43ac: $06 $06
	ld   b, $06                                      ; $43ae: $06 $06
	ld   b, $06                                      ; $43b0: $06 $06
	dec  b                                           ; $43b2: $05
	dec  b                                           ; $43b3: $05
	dec  c                                           ; $43b4: $0d
	dec  c                                           ; $43b5: $0d
	dec  c                                           ; $43b6: $0d
	dec  c                                           ; $43b7: $0d
	dec  c                                           ; $43b8: $0d
	ld   a, [bc]                                     ; $43b9: $0a
	ld   a, [bc]                                     ; $43ba: $0a
	ld   a, [bc]                                     ; $43bb: $0a
	ld   a, [bc]                                     ; $43bc: $0a
	ld   a, [bc]                                     ; $43bd: $0a
	ld   a, [bc]                                     ; $43be: $0a
	dec  c                                           ; $43bf: $0d
	ld   b, $06                                      ; $43c0: $06 $06
	ld   b, $06                                      ; $43c2: $06 $06
	ld   b, $06                                      ; $43c4: $06 $06
	dec  b                                           ; $43c6: $05
	dec  b                                           ; $43c7: $05
	dec  c                                           ; $43c8: $0d
	dec  c                                           ; $43c9: $0d
	dec  c                                           ; $43ca: $0d
	dec  c                                           ; $43cb: $0d
	dec  c                                           ; $43cc: $0d
	add  hl, bc                                      ; $43cd: $09
	add  hl, bc                                      ; $43ce: $09
	add  hl, bc                                      ; $43cf: $09
	add  hl, bc                                      ; $43d0: $09
	dec  c                                           ; $43d1: $0d
	dec  c                                           ; $43d2: $0d
	ld   c, $05                                      ; $43d3: $0e $05
	ld   b, $06                                      ; $43d5: $06 $06
	ld   b, $06                                      ; $43d7: $06 $06
	ld   b, $05                                      ; $43d9: $06 $05
	dec  b                                           ; $43db: $05
	dec  c                                           ; $43dc: $0d
	dec  c                                           ; $43dd: $0d
	dec  c                                           ; $43de: $0d

Call_01d_43df:
	dec  c                                           ; $43df: $0d
	dec  bc                                          ; $43e0: $0b
	add  hl, bc                                      ; $43e1: $09
	dec  bc                                          ; $43e2: $0b
	dec  bc                                          ; $43e3: $0b
	ld   a, [bc]                                     ; $43e4: $0a
	ld   a, [bc]                                     ; $43e5: $0a
	dec  c                                           ; $43e6: $0d
	ld   c, $06                                      ; $43e7: $0e $06
	dec  b                                           ; $43e9: $05
	dec  b                                           ; $43ea: $05
	ld   b, $06                                      ; $43eb: $06 $06
	ld   b, $06                                      ; $43ed: $06 $06
	ld   b, $0d                                      ; $43ef: $06 $0d
	dec  c                                           ; $43f1: $0d
	dec  c                                           ; $43f2: $0d
	dec  c                                           ; $43f3: $0d
	dec  bc                                          ; $43f4: $0b
	add  hl, bc                                      ; $43f5: $09
	dec  bc                                          ; $43f6: $0b
	dec  bc                                          ; $43f7: $0b
	ld   a, [bc]                                     ; $43f8: $0a
	dec  c                                           ; $43f9: $0d
	dec  c                                           ; $43fa: $0d
	dec  c                                           ; $43fb: $0d
	ld   b, $06                                      ; $43fc: $06 $06
	ld   b, $06                                      ; $43fe: $06 $06
	ld   b, $06                                      ; $4400: $06 $06
	ld   b, $06                                      ; $4402: $06 $06
	dec  c                                           ; $4404: $0d
	dec  c                                           ; $4405: $0d
	dec  c                                           ; $4406: $0d
	dec  bc                                          ; $4407: $0b
	add  hl, bc                                      ; $4408: $09
	add  hl, bc                                      ; $4409: $09
	add  hl, bc                                      ; $440a: $09
	add  hl, bc                                      ; $440b: $09
	add  hl, bc                                      ; $440c: $09
	dec  c                                           ; $440d: $0d
	ld   c, $0e                                      ; $440e: $0e $0e
	ld   b, $06                                      ; $4410: $06 $06
	ld   b, $06                                      ; $4412: $06 $06
	ld   b, $06                                      ; $4414: $06 $06
	ld   b, $06                                      ; $4416: $06 $06
	dec  c                                           ; $4418: $0d
	dec  c                                           ; $4419: $0d
	dec  c                                           ; $441a: $0d
	dec  bc                                          ; $441b: $0b
	add  hl, bc                                      ; $441c: $09
	add  hl, bc                                      ; $441d: $09
	add  hl, bc                                      ; $441e: $09
	add  hl, bc                                      ; $441f: $09
	add  hl, bc                                      ; $4420: $09
	dec  c                                           ; $4421: $0d
	ld   c, $0e                                      ; $4422: $0e $0e
	dec  b                                           ; $4424: $05
	ld   b, $06                                      ; $4425: $06 $06
	ld   b, $06                                      ; $4427: $06 $06
	ld   b, $06                                      ; $4429: $06 $06
	dec  b                                           ; $442b: $05
	dec  c                                           ; $442c: $0d
	dec  c                                           ; $442d: $0d
	dec  c                                           ; $442e: $0d
	dec  bc                                          ; $442f: $0b
	add  hl, bc                                      ; $4430: $09
	add  hl, bc                                      ; $4431: $09
	add  hl, bc                                      ; $4432: $09
	add  hl, bc                                      ; $4433: $09
	add  hl, bc                                      ; $4434: $09
	dec  c                                           ; $4435: $0d
	ld   c, $0d                                      ; $4436: $0e $0d
	dec  c                                           ; $4438: $0d
	dec  c                                           ; $4439: $0d
	ld   c, $0d                                      ; $443a: $0e $0d
	dec  c                                           ; $443c: $0d
	dec  c                                           ; $443d: $0d
	dec  c                                           ; $443e: $0d
	dec  c                                           ; $443f: $0d
	add  b                                           ; $4440: $80
	add  c                                           ; $4441: $81
	add  d                                           ; $4442: $82
	add  e                                           ; $4443: $83
	add  h                                           ; $4444: $84
	add  l                                           ; $4445: $85
	add  [hl]                                        ; $4446: $86
	add  a                                           ; $4447: $87
	adc  b                                           ; $4448: $88
	adc  c                                           ; $4449: $89
	adc  d                                           ; $444a: $8a
	adc  e                                           ; $444b: $8b
	adc  h                                           ; $444c: $8c
	adc  l                                           ; $444d: $8d
	adc  [hl]                                        ; $444e: $8e
	adc  a                                           ; $444f: $8f
	add  b                                           ; $4450: $80
	add  c                                           ; $4451: $81
	add  d                                           ; $4452: $82
	add  e                                           ; $4453: $83
	sub  b                                           ; $4454: $90
	sub  c                                           ; $4455: $91
	sub  d                                           ; $4456: $92
	sub  e                                           ; $4457: $93
	sub  h                                           ; $4458: $94
	sub  l                                           ; $4459: $95
	sub  [hl]                                        ; $445a: $96
	sub  a                                           ; $445b: $97
	sbc  b                                           ; $445c: $98
	sbc  c                                           ; $445d: $99
	sbc  d                                           ; $445e: $9a
	sbc  e                                           ; $445f: $9b
	sbc  h                                           ; $4460: $9c
	sbc  l                                           ; $4461: $9d
	sbc  [hl]                                        ; $4462: $9e
	sbc  a                                           ; $4463: $9f
	sub  b                                           ; $4464: $90
	sub  c                                           ; $4465: $91
	sub  d                                           ; $4466: $92
	sub  e                                           ; $4467: $93
	and  b                                           ; $4468: $a0
	and  c                                           ; $4469: $a1
	and  d                                           ; $446a: $a2
	and  e                                           ; $446b: $a3
	and  h                                           ; $446c: $a4
	and  l                                           ; $446d: $a5
	and  [hl]                                        ; $446e: $a6
	and  a                                           ; $446f: $a7
	xor  b                                           ; $4470: $a8
	xor  c                                           ; $4471: $a9
	xor  d                                           ; $4472: $aa
	xor  e                                           ; $4473: $ab
	xor  h                                           ; $4474: $ac
	xor  l                                           ; $4475: $ad
	xor  [hl]                                        ; $4476: $ae
	xor  a                                           ; $4477: $af
	and  b                                           ; $4478: $a0
	and  c                                           ; $4479: $a1
	and  d                                           ; $447a: $a2
	and  e                                           ; $447b: $a3
	or   b                                           ; $447c: $b0
	or   c                                           ; $447d: $b1
	or   d                                           ; $447e: $b2
	or   e                                           ; $447f: $b3
	or   h                                           ; $4480: $b4
	or   l                                           ; $4481: $b5
	or   [hl]                                        ; $4482: $b6
	or   a                                           ; $4483: $b7
	cp   b                                           ; $4484: $b8
	cp   c                                           ; $4485: $b9
	cp   d                                           ; $4486: $ba
	cp   e                                           ; $4487: $bb
	cp   h                                           ; $4488: $bc
	cp   l                                           ; $4489: $bd
	cp   [hl]                                        ; $448a: $be
	cp   a                                           ; $448b: $bf
	or   b                                           ; $448c: $b0
	or   c                                           ; $448d: $b1
	or   d                                           ; $448e: $b2
	or   e                                           ; $448f: $b3
	ret  nz                                          ; $4490: $c0

	pop  bc                                          ; $4491: $c1
	jp   nz, $c4c3                                   ; $4492: $c2 $c3 $c4

	push bc                                          ; $4495: $c5
	add  $c7                                         ; $4496: $c6 $c7
	ret  z                                           ; $4498: $c8

	ret                                              ; $4499: $c9


	jp   z, $cccb                                    ; $449a: $ca $cb $cc

	call $cfce                                       ; $449d: $cd $ce $cf
	ret  nz                                          ; $44a0: $c0

	pop  bc                                          ; $44a1: $c1
	jp   nz, $d0c3                                   ; $44a2: $c2 $c3 $d0

	pop  de                                          ; $44a5: $d1
	jp   nc, $d4d3                                   ; $44a6: $d2 $d3 $d4

	push de                                          ; $44a9: $d5
	sub  $d7                                         ; $44aa: $d6 $d7
	ret  c                                           ; $44ac: $d8

	reti                                             ; $44ad: $d9


	jp   c, $dcdb                                    ; $44ae: $da $db $dc

	db   $dd                                         ; $44b1: $dd
	sbc  $df                                         ; $44b2: $de $df
	ret  nc                                          ; $44b4: $d0

	pop  de                                          ; $44b5: $d1
	jp   nc, $e0d3                                   ; $44b6: $d2 $d3 $e0

	pop  hl                                          ; $44b9: $e1
	ldh  [c], a                                      ; $44ba: $e2
	db   $e3                                         ; $44bb: $e3
	db   $e4                                         ; $44bc: $e4
	push hl                                          ; $44bd: $e5
	and  $e7                                         ; $44be: $e6 $e7
	add  sp, -$17                                    ; $44c0: $e8 $e9
	ld   [$eceb], a                                  ; $44c2: $ea $eb $ec
	db   $ed                                         ; $44c5: $ed
	xor  $ef                                         ; $44c6: $ee $ef
	ldh  [$e1], a                                    ; $44c8: $e0 $e1
	ldh  [c], a                                      ; $44ca: $e2
	db   $e3                                         ; $44cb: $e3
	ldh  a, [$f1]                                    ; $44cc: $f0 $f1
	ldh  a, [c]                                      ; $44ce: $f2
	di                                               ; $44cf: $f3
	db   $f4                                         ; $44d0: $f4
	push af                                          ; $44d1: $f5
	or   $f7                                         ; $44d2: $f6 $f7
	ld   hl, sp-$07                                  ; $44d4: $f8 $f9
	ld   a, [$fcfb]                                  ; $44d6: $fa $fb $fc
	db   $fd                                         ; $44d9: $fd
	cp   $ff                                         ; $44da: $fe $ff
	ldh  a, [$f1]                                    ; $44dc: $f0 $f1
	ldh  a, [c]                                      ; $44de: $f2
	di                                               ; $44df: $f3
	nop                                              ; $44e0: $00
	ld   bc, $0302                                   ; $44e1: $01 $02 $03
	inc  b                                           ; $44e4: $04
	dec  b                                           ; $44e5: $05
	ld   b, $07                                      ; $44e6: $06 $07
	ld   [$0a09], sp                                 ; $44e8: $08 $09 $0a
	dec  bc                                          ; $44eb: $0b
	inc  c                                           ; $44ec: $0c
	dec  c                                           ; $44ed: $0d
	ld   c, $0f                                      ; $44ee: $0e $0f
	nop                                              ; $44f0: $00
	ld   bc, $0302                                   ; $44f1: $01 $02 $03
	add  h                                           ; $44f4: $84
	add  l                                           ; $44f5: $85
	add  [hl]                                        ; $44f6: $86
	add  a                                           ; $44f7: $87
	adc  b                                           ; $44f8: $88
	adc  c                                           ; $44f9: $89
	adc  d                                           ; $44fa: $8a
	adc  e                                           ; $44fb: $8b
	adc  h                                           ; $44fc: $8c
	adc  l                                           ; $44fd: $8d
	adc  [hl]                                        ; $44fe: $8e
	adc  a                                           ; $44ff: $8f
	db   $10                                         ; $4500: $10
	ld   de, $1312                                   ; $4501: $11 $12 $13
	inc  d                                           ; $4504: $14
	dec  d                                           ; $4505: $15
	ld   d, $13                                      ; $4506: $16 $13
	sub  h                                           ; $4508: $94
	sub  l                                           ; $4509: $95
	sub  [hl]                                        ; $450a: $96
	sub  a                                           ; $450b: $97
	sbc  b                                           ; $450c: $98
	sbc  c                                           ; $450d: $99
	sbc  d                                           ; $450e: $9a
	sbc  e                                           ; $450f: $9b
	sbc  h                                           ; $4510: $9c
	sbc  l                                           ; $4511: $9d
	sbc  [hl]                                        ; $4512: $9e
	sbc  a                                           ; $4513: $9f
	jr   nz, jr_01d_4537                             ; $4514: $20 $21

	ld   [hl+], a                                    ; $4516: $22
	inc  hl                                          ; $4517: $23
	inc  h                                           ; $4518: $24
	dec  h                                           ; $4519: $25
	ld   h, $27                                      ; $451a: $26 $27
	and  h                                           ; $451c: $a4
	and  l                                           ; $451d: $a5
	and  [hl]                                        ; $451e: $a6
	and  a                                           ; $451f: $a7
	xor  b                                           ; $4520: $a8
	xor  c                                           ; $4521: $a9
	xor  d                                           ; $4522: $aa
	xor  e                                           ; $4523: $ab
	xor  h                                           ; $4524: $ac
	xor  l                                           ; $4525: $ad
	xor  [hl]                                        ; $4526: $ae
	xor  a                                           ; $4527: $af
	jr   nc, jr_01d_455b                             ; $4528: $30 $31

	ld   [hl-], a                                    ; $452a: $32
	inc  sp                                          ; $452b: $33
	inc  [hl]                                        ; $452c: $34
	dec  [hl]                                        ; $452d: $35
	ld   [hl], $37                                   ; $452e: $36 $37
	or   h                                           ; $4530: $b4
	or   l                                           ; $4531: $b5
	or   [hl]                                        ; $4532: $b6
	or   a                                           ; $4533: $b7
	cp   b                                           ; $4534: $b8
	cp   c                                           ; $4535: $b9
	cp   d                                           ; $4536: $ba

jr_01d_4537:
	cp   e                                           ; $4537: $bb
	cp   h                                           ; $4538: $bc
	cp   l                                           ; $4539: $bd
	cp   [hl]                                        ; $453a: $be
	cp   a                                           ; $453b: $bf
	ld   b, b                                        ; $453c: $40
	ld   b, c                                        ; $453d: $41
	ld   b, d                                        ; $453e: $42
	ld   b, e                                        ; $453f: $43
	ld   b, h                                        ; $4540: $44
	ld   b, l                                        ; $4541: $45
	ld   b, [hl]                                     ; $4542: $46
	ld   b, a                                        ; $4543: $47
	call nz, $c6c5                                   ; $4544: $c4 $c5 $c6
	rst  ToBoot                                         ; $4547: $c7
	ret  z                                           ; $4548: $c8

	ret                                              ; $4549: $c9


	jp   z, $cccb                                    ; $454a: $ca $cb $cc

	call $cfce                                       ; $454d: $cd $ce $cf
	jr   @+$1b                                       ; $4550: $18 $19

	ld   a, [de]                                     ; $4552: $1a
	dec  de                                          ; $4553: $1b
	inc  e                                           ; $4554: $1c
	dec  e                                           ; $4555: $1d
	ld   e, $1f                                      ; $4556: $1e $1f
	call nc, $d6d5                                   ; $4558: $d4 $d5 $d6

jr_01d_455b:
	rst  $10                                         ; $455b: $d7
	ret  c                                           ; $455c: $d8

	reti                                             ; $455d: $d9


	jp   c, $dcdb                                    ; $455e: $da $db $dc

	db   $dd                                         ; $4561: $dd
	sbc  $df                                         ; $4562: $de $df
	jr   z, jr_01d_458f                              ; $4564: $28 $29

	ld   a, [hl+]                                    ; $4566: $2a
	dec  hl                                          ; $4567: $2b
	inc  l                                           ; $4568: $2c
	dec  l                                           ; $4569: $2d
	ld   l, $2f                                      ; $456a: $2e $2f
	db   $e4                                         ; $456c: $e4
	push hl                                          ; $456d: $e5
	and  $e7                                         ; $456e: $e6 $e7
	add  sp, -$17                                    ; $4570: $e8 $e9
	ld   [$eceb], a                                  ; $4572: $ea $eb $ec
	db   $ed                                         ; $4575: $ed
	xor  $ef                                         ; $4576: $ee $ef
	jr   c, jr_01d_45b3                              ; $4578: $38 $39

	ld   a, [hl-]                                    ; $457a: $3a
	dec  sp                                          ; $457b: $3b
	inc  a                                           ; $457c: $3c
	dec  a                                           ; $457d: $3d
	ld   a, $3f                                      ; $457e: $3e $3f
	db   $f4                                         ; $4580: $f4
	push af                                          ; $4581: $f5
	or   $f7                                         ; $4582: $f6 $f7
	ld   hl, sp-$07                                  ; $4584: $f8 $f9
	ld   a, [$fcfb]                                  ; $4586: $fa $fb $fc
	db   $fd                                         ; $4589: $fd
	cp   $ff                                         ; $458a: $fe $ff
	ld   c, b                                        ; $458c: $48
	ld   c, c                                        ; $458d: $49
	ld   c, d                                        ; $458e: $4a

jr_01d_458f:
	ld   c, e                                        ; $458f: $4b
	ld   c, h                                        ; $4590: $4c
	ld   c, l                                        ; $4591: $4d
	ld   c, [hl]                                     ; $4592: $4e
	ld   c, a                                        ; $4593: $4f
	inc  b                                           ; $4594: $04
	dec  b                                           ; $4595: $05
	ld   b, $07                                      ; $4596: $06 $07
	ld   [$0a09], sp                                 ; $4598: $08 $09 $0a
	dec  bc                                          ; $459b: $0b
	inc  c                                           ; $459c: $0c
	dec  c                                           ; $459d: $0d
	ld   c, $0f                                      ; $459e: $0e $0f
	db   $10                                         ; $45a0: $10
	ld   de, $1312                                   ; $45a1: $11 $12 $13
	inc  d                                           ; $45a4: $14
	dec  d                                           ; $45a5: $15
	ld   d, $17                                      ; $45a6: $16 $17
	nop                                              ; $45a8: $00
	nop                                              ; $45a9: $00
	rlca                                             ; $45aa: $07
	rlca                                             ; $45ab: $07
	rlca                                             ; $45ac: $07
	nop                                              ; $45ad: $00
	nop                                              ; $45ae: $00
	nop                                              ; $45af: $00
	rlca                                             ; $45b0: $07
	rlca                                             ; $45b1: $07
	inc  b                                           ; $45b2: $04

jr_01d_45b3:
	inc  b                                           ; $45b3: $04
	inc  b                                           ; $45b4: $04
	inc  b                                           ; $45b5: $04
	nop                                              ; $45b6: $00
	nop                                              ; $45b7: $00
	nop                                              ; $45b8: $00
	nop                                              ; $45b9: $00
	nop                                              ; $45ba: $00
	rlca                                             ; $45bb: $07
	nop                                              ; $45bc: $00
	nop                                              ; $45bd: $00
	rlca                                             ; $45be: $07
	rlca                                             ; $45bf: $07
	rlca                                             ; $45c0: $07
	nop                                              ; $45c1: $00
	nop                                              ; $45c2: $00
	nop                                              ; $45c3: $00
	rlca                                             ; $45c4: $07
	inc  b                                           ; $45c5: $04
	inc  b                                           ; $45c6: $04
	inc  b                                           ; $45c7: $04
	inc  b                                           ; $45c8: $04
	inc  b                                           ; $45c9: $04
	rlca                                             ; $45ca: $07
	rlca                                             ; $45cb: $07
	rlca                                             ; $45cc: $07
	rlca                                             ; $45cd: $07
	nop                                              ; $45ce: $00
	nop                                              ; $45cf: $00
	rlca                                             ; $45d0: $07
	rlca                                             ; $45d1: $07
	rlca                                             ; $45d2: $07
	rlca                                             ; $45d3: $07
	rlca                                             ; $45d4: $07
	rlca                                             ; $45d5: $07
	rlca                                             ; $45d6: $07
	rlca                                             ; $45d7: $07
	rlca                                             ; $45d8: $07
	inc  b                                           ; $45d9: $04
	inc  b                                           ; $45da: $04
	inc  b                                           ; $45db: $04
	inc  b                                           ; $45dc: $04
	inc  b                                           ; $45dd: $04
	inc  b                                           ; $45de: $04
	rlca                                             ; $45df: $07
	rlca                                             ; $45e0: $07
	rlca                                             ; $45e1: $07
	nop                                              ; $45e2: $00
	nop                                              ; $45e3: $00
	rlca                                             ; $45e4: $07
	rlca                                             ; $45e5: $07
	rlca                                             ; $45e6: $07
	rlca                                             ; $45e7: $07
	rlca                                             ; $45e8: $07
	rlca                                             ; $45e9: $07
	rlca                                             ; $45ea: $07
	rlca                                             ; $45eb: $07
	rlca                                             ; $45ec: $07
	inc  b                                           ; $45ed: $04
	inc  b                                           ; $45ee: $04
	inc  b                                           ; $45ef: $04
	inc  b                                           ; $45f0: $04
	inc  b                                           ; $45f1: $04
	inc  b                                           ; $45f2: $04
	rlca                                             ; $45f3: $07
	rlca                                             ; $45f4: $07
	rlca                                             ; $45f5: $07
	nop                                              ; $45f6: $00
	nop                                              ; $45f7: $00
	rlca                                             ; $45f8: $07
	rlca                                             ; $45f9: $07
	rlca                                             ; $45fa: $07
	rlca                                             ; $45fb: $07
	rlca                                             ; $45fc: $07
	rlca                                             ; $45fd: $07
	rlca                                             ; $45fe: $07
	rlca                                             ; $45ff: $07
	rlca                                             ; $4600: $07
	inc  b                                           ; $4601: $04
	inc  b                                           ; $4602: $04
	inc  b                                           ; $4603: $04
	inc  bc                                          ; $4604: $03
	inc  bc                                          ; $4605: $03
	ld   [bc], a                                     ; $4606: $02
	inc  bc                                          ; $4607: $03
	nop                                              ; $4608: $00
	nop                                              ; $4609: $00
	rlca                                             ; $460a: $07
	rlca                                             ; $460b: $07
	rlca                                             ; $460c: $07
	rlca                                             ; $460d: $07
	rlca                                             ; $460e: $07
	rlca                                             ; $460f: $07
	rlca                                             ; $4610: $07
	rlca                                             ; $4611: $07
	rlca                                             ; $4612: $07
	rlca                                             ; $4613: $07
	rlca                                             ; $4614: $07
	inc  b                                           ; $4615: $04
	inc  b                                           ; $4616: $04
	inc  b                                           ; $4617: $04
	ld   [bc], a                                     ; $4618: $02
	ld   [bc], a                                     ; $4619: $02
	ld   [bc], a                                     ; $461a: $02
	ld   [bc], a                                     ; $461b: $02
	ld   [bc], a                                     ; $461c: $02
	nop                                              ; $461d: $00
	nop                                              ; $461e: $00
	rlca                                             ; $461f: $07
	rlca                                             ; $4620: $07
	rlca                                             ; $4621: $07
	rlca                                             ; $4622: $07
	rlca                                             ; $4623: $07
	rlca                                             ; $4624: $07
	rlca                                             ; $4625: $07
	rlca                                             ; $4626: $07
	rlca                                             ; $4627: $07
	rlca                                             ; $4628: $07
	inc  b                                           ; $4629: $04
	inc  b                                           ; $462a: $04
	rlca                                             ; $462b: $07
	nop                                              ; $462c: $00
	ld   [bc], a                                     ; $462d: $02
	ld   [bc], a                                     ; $462e: $02
	ld   [bc], a                                     ; $462f: $02
	ld   [bc], a                                     ; $4630: $02
	nop                                              ; $4631: $00
	nop                                              ; $4632: $00
	rlca                                             ; $4633: $07
	rlca                                             ; $4634: $07
	dec  c                                           ; $4635: $0d
	dec  c                                           ; $4636: $0d
	dec  c                                           ; $4637: $0d
	dec  c                                           ; $4638: $0d
	dec  c                                           ; $4639: $0d
	dec  c                                           ; $463a: $0d
	dec  c                                           ; $463b: $0d
	dec  c                                           ; $463c: $0d
	nop                                              ; $463d: $00
	nop                                              ; $463e: $00
	nop                                              ; $463f: $00
	nop                                              ; $4640: $00
	nop                                              ; $4641: $00
	nop                                              ; $4642: $00
	ld   [bc], a                                     ; $4643: $02
	ld   [bc], a                                     ; $4644: $02
	ld   [bc], a                                     ; $4645: $02
	inc  bc                                          ; $4646: $03
	rlca                                             ; $4647: $07
	nop                                              ; $4648: $00
	dec  c                                           ; $4649: $0d
	dec  c                                           ; $464a: $0d
	dec  c                                           ; $464b: $0d
	dec  c                                           ; $464c: $0d
	dec  c                                           ; $464d: $0d
	dec  c                                           ; $464e: $0d
	dec  c                                           ; $464f: $0d
	dec  c                                           ; $4650: $0d
	nop                                              ; $4651: $00
	nop                                              ; $4652: $00
	nop                                              ; $4653: $00
	nop                                              ; $4654: $00
	nop                                              ; $4655: $00
	ld   bc, $0101                                   ; $4656: $01 $01 $01
	ld   [bc], a                                     ; $4659: $02
	inc  bc                                          ; $465a: $03
	rlca                                             ; $465b: $07
	nop                                              ; $465c: $00
	dec  c                                           ; $465d: $0d
	dec  c                                           ; $465e: $0d
	dec  c                                           ; $465f: $0d
	dec  c                                           ; $4660: $0d
	dec  c                                           ; $4661: $0d
	dec  c                                           ; $4662: $0d
	dec  c                                           ; $4663: $0d
	dec  c                                           ; $4664: $0d
	nop                                              ; $4665: $00
	nop                                              ; $4666: $00
	nop                                              ; $4667: $00
	nop                                              ; $4668: $00
	ld   bc, $0101                                   ; $4669: $01 $01 $01
	ld   bc, $0302                                   ; $466c: $01 $02 $03
	rlca                                             ; $466f: $07
	nop                                              ; $4670: $00
	dec  c                                           ; $4671: $0d
	dec  c                                           ; $4672: $0d
	dec  c                                           ; $4673: $0d
	dec  c                                           ; $4674: $0d
	dec  c                                           ; $4675: $0d
	dec  c                                           ; $4676: $0d
	dec  c                                           ; $4677: $0d
	dec  c                                           ; $4678: $0d
	rlca                                             ; $4679: $07
	nop                                              ; $467a: $00
	nop                                              ; $467b: $00
	ld   bc, $0201                                   ; $467c: $01 $01 $02
	ld   bc, $0201                                   ; $467f: $01 $01 $02
	inc  bc                                          ; $4682: $03
	nop                                              ; $4683: $00
	nop                                              ; $4684: $00
	rlca                                             ; $4685: $07
	rlca                                             ; $4686: $07
	rlca                                             ; $4687: $07
	rlca                                             ; $4688: $07
	rlca                                             ; $4689: $07
	rlca                                             ; $468a: $07
	rlca                                             ; $468b: $07
	rlca                                             ; $468c: $07
	nop                                              ; $468d: $00
	nop                                              ; $468e: $00
	ld   bc, $0201                                   ; $468f: $01 $01 $02
	ld   [bc], a                                     ; $4692: $02
	ld   bc, $0202                                   ; $4693: $01 $02 $02
	inc  bc                                          ; $4696: $03
	nop                                              ; $4697: $00
	nop                                              ; $4698: $00
	rlca                                             ; $4699: $07
	rlca                                             ; $469a: $07
	dec  c                                           ; $469b: $0d
	dec  c                                           ; $469c: $0d
	dec  c                                           ; $469d: $0d
	dec  c                                           ; $469e: $0d
	dec  c                                           ; $469f: $0d
	rlca                                             ; $46a0: $07
	nop                                              ; $46a1: $00
	ld   bc, $0201                                   ; $46a2: $01 $01 $02
	ld   [bc], a                                     ; $46a5: $02
	ld   [bc], a                                     ; $46a6: $02
	ld   [bc], a                                     ; $46a7: $02
	ld   [bc], a                                     ; $46a8: $02
	ld   [bc], a                                     ; $46a9: $02
	inc  bc                                          ; $46aa: $03
	nop                                              ; $46ab: $00
	rlca                                             ; $46ac: $07
	rlca                                             ; $46ad: $07
	rlca                                             ; $46ae: $07
	rlca                                             ; $46af: $07
	dec  c                                           ; $46b0: $0d
	dec  c                                           ; $46b1: $0d
	dec  c                                           ; $46b2: $0d
	rlca                                             ; $46b3: $07
	rlca                                             ; $46b4: $07
	nop                                              ; $46b5: $00
	nop                                              ; $46b6: $00
	ld   bc, $0201                                   ; $46b7: $01 $01 $02
	ld   [bc], a                                     ; $46ba: $02
	ld   [bc], a                                     ; $46bb: $02
	ld   [bc], a                                     ; $46bc: $02
	ld   [bc], a                                     ; $46bd: $02
	inc  bc                                          ; $46be: $03
	rlca                                             ; $46bf: $07
	nop                                              ; $46c0: $00
	nop                                              ; $46c1: $00
	rlca                                             ; $46c2: $07
	dec  c                                           ; $46c3: $0d
	dec  c                                           ; $46c4: $0d
	dec  c                                           ; $46c5: $0d
	dec  c                                           ; $46c6: $0d
	dec  c                                           ; $46c7: $0d
	rlca                                             ; $46c8: $07
	rlca                                             ; $46c9: $07
	rlca                                             ; $46ca: $07
	nop                                              ; $46cb: $00
	nop                                              ; $46cc: $00
	ld   bc, $0201                                   ; $46cd: $01 $01 $02
	ld   [bc], a                                     ; $46d0: $02
	ld   [bc], a                                     ; $46d1: $02
	inc  bc                                          ; $46d2: $03
	rlca                                             ; $46d3: $07
	nop                                              ; $46d4: $00
	nop                                              ; $46d5: $00
	rlca                                             ; $46d6: $07
	rlca                                             ; $46d7: $07
	rlca                                             ; $46d8: $07
	rlca                                             ; $46d9: $07
	rlca                                             ; $46da: $07
	rlca                                             ; $46db: $07
	rlca                                             ; $46dc: $07
	rlca                                             ; $46dd: $07
	nop                                              ; $46de: $00
	nop                                              ; $46df: $00
	nop                                              ; $46e0: $00
	nop                                              ; $46e1: $00
	nop                                              ; $46e2: $00
	nop                                              ; $46e3: $00
	nop                                              ; $46e4: $00
	nop                                              ; $46e5: $00
	nop                                              ; $46e6: $00
	rlca                                             ; $46e7: $07
	nop                                              ; $46e8: $00
	nop                                              ; $46e9: $00
	rlca                                             ; $46ea: $07
	rlca                                             ; $46eb: $07
	nop                                              ; $46ec: $00
	nop                                              ; $46ed: $00
	nop                                              ; $46ee: $00
	nop                                              ; $46ef: $00
	nop                                              ; $46f0: $00
	rlca                                             ; $46f1: $07
	nop                                              ; $46f2: $00
	nop                                              ; $46f3: $00
	nop                                              ; $46f4: $00
	nop                                              ; $46f5: $00
	nop                                              ; $46f6: $00
	nop                                              ; $46f7: $00
	nop                                              ; $46f8: $00
	nop                                              ; $46f9: $00
	nop                                              ; $46fa: $00
	rlca                                             ; $46fb: $07
	rlca                                             ; $46fc: $07
	rlca                                             ; $46fd: $07
	rlca                                             ; $46fe: $07
	rlca                                             ; $46ff: $07
	nop                                              ; $4700: $00
	nop                                              ; $4701: $00
	nop                                              ; $4702: $00
	nop                                              ; $4703: $00
	nop                                              ; $4704: $00
	rlca                                             ; $4705: $07
	rlca                                             ; $4706: $07
	nop                                              ; $4707: $00
	rlca                                             ; $4708: $07
	nop                                              ; $4709: $00
	nop                                              ; $470a: $00
	nop                                              ; $470b: $00
	rlca                                             ; $470c: $07
	nop                                              ; $470d: $00
	nop                                              ; $470e: $00
	nop                                              ; $470f: $00
	rra                                              ; $4710: $1f
	add  hl, sp                                      ; $4711: $39
	daa                                              ; $4712: $27
	daa                                              ; $4713: $27
	daa                                              ; $4714: $27
	ld   sp, $3332                                   ; $4715: $31 $32 $33
	daa                                              ; $4718: $27
	daa                                              ; $4719: $27
	add  c                                           ; $471a: $81
	add  d                                           ; $471b: $82
	add  e                                           ; $471c: $83
	add  h                                           ; $471d: $84
	ld   a, [hl-]                                    ; $471e: $3a
	dec  sp                                          ; $471f: $3b
	inc  a                                           ; $4720: $3c
	dec  a                                           ; $4721: $3d
	ld   a, $27                                      ; $4722: $3e $27
	dec  a                                           ; $4724: $3d
	ld   a, $01                                      ; $4725: $3e $01
	ld   [bc], a                                     ; $4727: $02
	daa                                              ; $4728: $27
	ld   [hl], $37                                   ; $4729: $36 $37
	jr   c, jr_01d_4754                              ; $472b: $38 $27

	sub  b                                           ; $472d: $90
	sub  c                                           ; $472e: $91
	sub  d                                           ; $472f: $92
	sub  e                                           ; $4730: $93
	sub  h                                           ; $4731: $94
	daa                                              ; $4732: $27
	daa                                              ; $4733: $27
	daa                                              ; $4734: $27
	daa                                              ; $4735: $27
	dec  hl                                          ; $4736: $2b
	inc  l                                           ; $4737: $2c
	daa                                              ; $4738: $27
	db   $10                                         ; $4739: $10
	ld   de, $1312                                   ; $473a: $11 $12 $13
	daa                                              ; $473d: $27
	daa                                              ; $473e: $27
	daa                                              ; $473f: $27
	daa                                              ; $4740: $27
	and  b                                           ; $4741: $a0
	and  c                                           ; $4742: $a1
	and  d                                           ; $4743: $a2
	and  e                                           ; $4744: $a3
	and  h                                           ; $4745: $a4
	and  l                                           ; $4746: $a5
	daa                                              ; $4747: $27
	daa                                              ; $4748: $27
	daa                                              ; $4749: $27
	ld   sp, $2732                                   ; $474a: $31 $32 $27
	jr   nz, @+$23                                   ; $474d: $20 $21

	ld   [hl+], a                                    ; $474f: $22
	inc  hl                                          ; $4750: $23
	inc  bc                                          ; $4751: $03
	daa                                              ; $4752: $27
	daa                                              ; $4753: $27

jr_01d_4754:
	daa                                              ; $4754: $27
	or   b                                           ; $4755: $b0
	or   c                                           ; $4756: $b1
	or   d                                           ; $4757: $b2
	or   e                                           ; $4758: $b3
	or   h                                           ; $4759: $b4
	or   l                                           ; $475a: $b5
	daa                                              ; $475b: $27
	daa                                              ; $475c: $27
	daa                                              ; $475d: $27
	ld   [hl], $37                                   ; $475e: $36 $37
	daa                                              ; $4760: $27
	daa                                              ; $4761: $27
	inc  b                                           ; $4762: $04
	dec  b                                           ; $4763: $05
	ld   b, $07                                      ; $4764: $06 $07
	daa                                              ; $4766: $27
	daa                                              ; $4767: $27
	daa                                              ; $4768: $27
	ret  nz                                          ; $4769: $c0

jr_01d_476a:
	pop  bc                                          ; $476a: $c1
	jp   nz, $c4c3                                   ; $476b: $c2 $c3 $c4

	push bc                                          ; $476e: $c5
	add  $c7                                         ; $476f: $c6 $c7
	ret  z                                           ; $4771: $c8

	daa                                              ; $4772: $27
	daa                                              ; $4773: $27
	daa                                              ; $4774: $27
	daa                                              ; $4775: $27
	inc  d                                           ; $4776: $14
	dec  d                                           ; $4777: $15
	ld   d, $17                                      ; $4778: $16 $17
	daa                                              ; $477a: $27
	daa                                              ; $477b: $27
	daa                                              ; $477c: $27
	ret  nc                                          ; $477d: $d0

	pop  de                                          ; $477e: $d1
	jp   nc, $d4d3                                   ; $477f: $d2 $d3 $d4

	push de                                          ; $4782: $d5
	sub  $d7                                         ; $4783: $d6 $d7
	ret  c                                           ; $4785: $d8

	add  b                                           ; $4786: $80
	daa                                              ; $4787: $27
	daa                                              ; $4788: $27
	daa                                              ; $4789: $27
	inc  h                                           ; $478a: $24
	dec  h                                           ; $478b: $25
	ld   h, $27                                      ; $478c: $26 $27
	daa                                              ; $478e: $27
	daa                                              ; $478f: $27
	daa                                              ; $4790: $27
	ldh  [$e1], a                                    ; $4791: $e0 $e1
	daa                                              ; $4793: $27
	db   $e3                                         ; $4794: $e3
	db   $e4                                         ; $4795: $e4
	push hl                                          ; $4796: $e5
	and  $e7                                         ; $4797: $e6 $e7
	add  sp, -$7b                                    ; $4799: $e8 $85
	daa                                              ; $479b: $27
	daa                                              ; $479c: $27
	ld   b, b                                        ; $479d: $40
	ld   b, c                                        ; $479e: $41
	ld   b, d                                        ; $479f: $42
	ld   b, e                                        ; $47a0: $43
	ld   b, b                                        ; $47a1: $40
	ld   b, c                                        ; $47a2: $41
	ld   b, d                                        ; $47a3: $42
	ld   b, e                                        ; $47a4: $43
	dec  hl                                          ; $47a5: $2b
	inc  l                                           ; $47a6: $2c
	dec  l                                           ; $47a7: $2d
	di                                               ; $47a8: $f3
	db   $f4                                         ; $47a9: $f4
	push af                                          ; $47aa: $f5
	or   $f7                                         ; $47ab: $f6 $f7
	ld   hl, sp-$6b                                  ; $47ad: $f8 $95
	daa                                              ; $47af: $27
	ld   e, $44                                      ; $47b0: $1e $44
	ld   b, l                                        ; $47b2: $45
	ld   b, [hl]                                     ; $47b3: $46
	ld   b, a                                        ; $47b4: $47
	ld   b, h                                        ; $47b5: $44
	ld   b, l                                        ; $47b6: $45
	ld   b, [hl]                                     ; $47b7: $46
	ld   b, a                                        ; $47b8: $47
	ld   sp, $3332                                   ; $47b9: $31 $32 $33
	adc  c                                           ; $47bc: $89
	adc  d                                           ; $47bd: $8a
	adc  e                                           ; $47be: $8b
	adc  h                                           ; $47bf: $8c
	adc  l                                           ; $47c0: $8d
	adc  [hl]                                        ; $47c1: $8e
	adc  a                                           ; $47c2: $8f
	daa                                              ; $47c3: $27
	ld   l, $48                                      ; $47c4: $2e $48
	ld   c, c                                        ; $47c6: $49
	ld   c, d                                        ; $47c7: $4a
	ld   c, e                                        ; $47c8: $4b
	ld   c, b                                        ; $47c9: $48
	ld   c, c                                        ; $47ca: $49
	ld   c, d                                        ; $47cb: $4a
	ld   c, e                                        ; $47cc: $4b
	ld   [hl], $37                                   ; $47cd: $36 $37
	jr   c, jr_01d_476a                              ; $47cf: $38 $99

	sbc  d                                           ; $47d1: $9a
	sbc  e                                           ; $47d2: $9b
	sbc  h                                           ; $47d3: $9c
	sbc  l                                           ; $47d4: $9d
	sbc  [hl]                                        ; $47d5: $9e
	sbc  a                                           ; $47d6: $9f
	daa                                              ; $47d7: $27
	inc  [hl]                                        ; $47d8: $34
	ld   c, h                                        ; $47d9: $4c
	ld   c, l                                        ; $47da: $4d
	ld   c, [hl]                                     ; $47db: $4e
	ld   c, a                                        ; $47dc: $4f
	ld   c, h                                        ; $47dd: $4c
	ld   c, l                                        ; $47de: $4d
	ld   c, [hl]                                     ; $47df: $4e
	ld   c, a                                        ; $47e0: $4f
	daa                                              ; $47e1: $27
	add  a                                           ; $47e2: $87
	adc  b                                           ; $47e3: $88
	xor  c                                           ; $47e4: $a9
	xor  d                                           ; $47e5: $aa
	xor  e                                           ; $47e6: $ab
	xor  h                                           ; $47e7: $ac
	xor  l                                           ; $47e8: $ad
	xor  [hl]                                        ; $47e9: $ae
	xor  a                                           ; $47ea: $af
	dec  hl                                          ; $47eb: $2b
	add  hl, sp                                      ; $47ec: $39
	daa                                              ; $47ed: $27
	daa                                              ; $47ee: $27
	daa                                              ; $47ef: $27
	daa                                              ; $47f0: $27
	daa                                              ; $47f1: $27
	daa                                              ; $47f2: $27
	daa                                              ; $47f3: $27
	daa                                              ; $47f4: $27
	sub  [hl]                                        ; $47f5: $96
	sub  a                                           ; $47f6: $97
	sbc  b                                           ; $47f7: $98
	cp   c                                           ; $47f8: $b9
	cp   d                                           ; $47f9: $ba
	cp   e                                           ; $47fa: $bb
	cp   h                                           ; $47fb: $bc
	cp   l                                           ; $47fc: $bd
	cp   [hl]                                        ; $47fd: $be
	cp   a                                           ; $47fe: $bf
	ld   sp, $273e                                   ; $47ff: $31 $3e $27
	daa                                              ; $4802: $27
	ld   d, b                                        ; $4803: $50
	ld   d, c                                        ; $4804: $51
	ld   d, d                                        ; $4805: $52
	ld   d, e                                        ; $4806: $53
	ld   d, h                                        ; $4807: $54
	daa                                              ; $4808: $27
	and  [hl]                                        ; $4809: $a6
	and  a                                           ; $480a: $a7
	xor  b                                           ; $480b: $a8
	ret                                              ; $480c: $c9


	jp   z, $cccb                                    ; $480d: $ca $cb $cc

	call $cfce                                       ; $4810: $cd $ce $cf
	ld   [hl], $27                                   ; $4813: $36 $27
	daa                                              ; $4815: $27
	daa                                              ; $4816: $27
	daa                                              ; $4817: $27
	ld   d, l                                        ; $4818: $55
	ld   d, [hl]                                     ; $4819: $56
	ld   d, a                                        ; $481a: $57
	daa                                              ; $481b: $27
	daa                                              ; $481c: $27
	or   [hl]                                        ; $481d: $b6
	or   a                                           ; $481e: $b7
	cp   b                                           ; $481f: $b8
	reti                                             ; $4820: $d9


	jp   c, $dcdb                                    ; $4821: $da $db $dc

	db   $dd                                         ; $4824: $dd
	sbc  $df                                         ; $4825: $de $df
	daa                                              ; $4827: $27
	inc  l                                           ; $4828: $2c
	dec  l                                           ; $4829: $2d
	daa                                              ; $482a: $27
	ld   e, b                                        ; $482b: $58
	ld   e, c                                        ; $482c: $59
	ld   e, d                                        ; $482d: $5a
	ld   e, e                                        ; $482e: $5b
	ld   e, h                                        ; $482f: $5c
	daa                                              ; $4830: $27
	daa                                              ; $4831: $27
	daa                                              ; $4832: $27
	add  hl, hl                                      ; $4833: $29
	jp   hl                                          ; $4834: $e9


	ld   [$eceb], a                                  ; $4835: $ea $eb $ec
	db   $ed                                         ; $4838: $ed
	xor  $ef                                         ; $4839: $ee $ef
	daa                                              ; $483b: $27
	ld   [hl-], a                                    ; $483c: $32
	inc  sp                                          ; $483d: $33
	daa                                              ; $483e: $27
	daa                                              ; $483f: $27
	daa                                              ; $4840: $27
	daa                                              ; $4841: $27
	daa                                              ; $4842: $27
	daa                                              ; $4843: $27
	daa                                              ; $4844: $27
	daa                                              ; $4845: $27
	jr   jr_01d_4861                                 ; $4846: $18 $19

	ld   sp, hl                                      ; $4848: $f9
	ld   a, [$fcfb]                                  ; $4849: $fa $fb $fc
	db   $fd                                         ; $484c: $fd
	cp   $ff                                         ; $484d: $fe $ff
	daa                                              ; $484f: $27
	scf                                              ; $4850: $37
	jr   c, jr_01d_487a                              ; $4851: $38 $27

	daa                                              ; $4853: $27
	ld   a, [de]                                     ; $4854: $1a
	dec  de                                          ; $4855: $1b
	inc  e                                           ; $4856: $1c
	dec  e                                           ; $4857: $1d
	ld   e, $27                                      ; $4858: $1e $27
	jr   z, jr_01d_4864                              ; $485a: $28 $08

	add  hl, bc                                      ; $485c: $09
	ld   a, [bc]                                     ; $485d: $0a
	dec  bc                                          ; $485e: $0b
	inc  c                                           ; $485f: $0c
	dec  c                                           ; $4860: $0d

jr_01d_4861:
	ld   c, $0f                                      ; $4861: $0e $0f
	daa                                              ; $4863: $27

jr_01d_4864:
	daa                                              ; $4864: $27
	daa                                              ; $4865: $27
	daa                                              ; $4866: $27
	daa                                              ; $4867: $27
	ld   a, [hl+]                                    ; $4868: $2a
	ld   [hl-], a                                    ; $4869: $32
	ld   [hl-], a                                    ; $486a: $32
	ld   [hl-], a                                    ; $486b: $32
	ld   l, $27                                      ; $486c: $2e $27
	daa                                              ; $486e: $27
	ldh  [c], a                                      ; $486f: $e2
	daa                                              ; $4870: $27
	ldh  a, [$f1]                                    ; $4871: $f0 $f1
	ldh  a, [c]                                      ; $4873: $f2
	daa                                              ; $4874: $27
	dec  hl                                          ; $4875: $2b
	inc  l                                           ; $4876: $2c
	dec  l                                           ; $4877: $2d
	inc  b                                           ; $4878: $04
	inc  b                                           ; $4879: $04

jr_01d_487a:
	inc  b                                           ; $487a: $04
	inc  b                                           ; $487b: $04
	inc  b                                           ; $487c: $04
	inc  b                                           ; $487d: $04
	inc  b                                           ; $487e: $04
	inc  b                                           ; $487f: $04
	inc  b                                           ; $4880: $04
	inc  b                                           ; $4881: $04
	inc  b                                           ; $4882: $04
	inc  b                                           ; $4883: $04
	dec  b                                           ; $4884: $05
	inc  b                                           ; $4885: $04
	inc  b                                           ; $4886: $04
	inc  b                                           ; $4887: $04
	inc  b                                           ; $4888: $04
	inc  b                                           ; $4889: $04
	inc  b                                           ; $488a: $04
	inc  b                                           ; $488b: $04
	inc  b                                           ; $488c: $04
	inc  b                                           ; $488d: $04
	inc  b                                           ; $488e: $04
	inc  b                                           ; $488f: $04
	inc  b                                           ; $4890: $04
	inc  b                                           ; $4891: $04
	inc  b                                           ; $4892: $04
	inc  b                                           ; $4893: $04
	inc  b                                           ; $4894: $04
	inc  b                                           ; $4895: $04
	ld   bc, $0401                                   ; $4896: $01 $01 $04
	inc  b                                           ; $4899: $04
	inc  b                                           ; $489a: $04
	inc  b                                           ; $489b: $04
	inc  b                                           ; $489c: $04
	inc  b                                           ; $489d: $04
	inc  b                                           ; $489e: $04
	inc  b                                           ; $489f: $04
	inc  b                                           ; $48a0: $04
	inc  b                                           ; $48a1: $04
	inc  b                                           ; $48a2: $04
	inc  b                                           ; $48a3: $04
	inc  b                                           ; $48a4: $04
	inc  b                                           ; $48a5: $04
	inc  b                                           ; $48a6: $04
	inc  b                                           ; $48a7: $04
	inc  b                                           ; $48a8: $04
	inc  b                                           ; $48a9: $04
	ld   bc, $0000                                   ; $48aa: $01 $00 $00
	nop                                              ; $48ad: $00
	inc  b                                           ; $48ae: $04
	inc  b                                           ; $48af: $04
	inc  b                                           ; $48b0: $04
	inc  b                                           ; $48b1: $04
	inc  b                                           ; $48b2: $04
	inc  b                                           ; $48b3: $04
	ld   b, $06                                      ; $48b4: $06 $06
	ld   b, $06                                      ; $48b6: $06 $06
	ld   b, $06                                      ; $48b8: $06 $06
	ld   b, $00                                      ; $48ba: $06 $00
	nop                                              ; $48bc: $00
	ld   b, $06                                      ; $48bd: $06 $06
	nop                                              ; $48bf: $00
	nop                                              ; $48c0: $00
	ld   b, $06                                      ; $48c1: $06 $06
	rlca                                             ; $48c3: $07
	rlca                                             ; $48c4: $07
	rlca                                             ; $48c5: $07
	rlca                                             ; $48c6: $07
	rlca                                             ; $48c7: $07
	ld   b, $06                                      ; $48c8: $06 $06
	ld   b, $06                                      ; $48ca: $06 $06
	ld   b, $06                                      ; $48cc: $06 $06
	ld   b, $06                                      ; $48ce: $06 $06
	ld   b, $06                                      ; $48d0: $06 $06
	ld   b, $00                                      ; $48d2: $06 $00
	nop                                              ; $48d4: $00
	ld   b, $07                                      ; $48d5: $06 $07
	rlca                                             ; $48d7: $07
	rlca                                             ; $48d8: $07
	rlca                                             ; $48d9: $07
	rlca                                             ; $48da: $07
	rlca                                             ; $48db: $07
	ld   b, $06                                      ; $48dc: $06 $06
	ld   b, $06                                      ; $48de: $06 $06
	ld   b, $06                                      ; $48e0: $06 $06
	ld   b, $06                                      ; $48e2: $06 $06
	ld   b, $03                                      ; $48e4: $06 $03
	inc  bc                                          ; $48e6: $03
	nop                                              ; $48e7: $00
	ld   b, $06                                      ; $48e8: $06 $06
	ld   b, $07                                      ; $48ea: $06 $07
	rlca                                             ; $48ec: $07
	rlca                                             ; $48ed: $07
	ld   b, $06                                      ; $48ee: $06 $06
	ld   b, $06                                      ; $48f0: $06 $06
	ld   b, $06                                      ; $48f2: $06 $06
	ld   b, $06                                      ; $48f4: $06 $06
	ld   b, $06                                      ; $48f6: $06 $06
	inc  bc                                          ; $48f8: $03
	inc  bc                                          ; $48f9: $03
	ld   [bc], a                                     ; $48fa: $02
	ld   [bc], a                                     ; $48fb: $02
	ld   b, $06                                      ; $48fc: $06 $06
	rlca                                             ; $48fe: $07
	ld   b, $06                                      ; $48ff: $06 $06
	rlca                                             ; $4901: $07
	ld   b, $06                                      ; $4902: $06 $06
	ld   b, $06                                      ; $4904: $06 $06
	ld   b, $06                                      ; $4906: $06 $06
	ld   b, $06                                      ; $4908: $06 $06
	ld   b, $03                                      ; $490a: $06 $03
	inc  bc                                          ; $490c: $03
	inc  bc                                          ; $490d: $03
	inc  bc                                          ; $490e: $03
	ld   [bc], a                                     ; $490f: $02
	ld   [bc], a                                     ; $4910: $02
	ld   [bc], a                                     ; $4911: $02
	rlca                                             ; $4912: $07
	ld   b, $07                                      ; $4913: $06 $07
	ld   b, $06                                      ; $4915: $06 $06
	ld   b, $06                                      ; $4917: $06 $06
	ld   b, $07                                      ; $4919: $06 $07
	rlca                                             ; $491b: $07
	ld   b, $06                                      ; $491c: $06 $06
	inc  bc                                          ; $491e: $03
	inc  bc                                          ; $491f: $03
	inc  bc                                          ; $4920: $03
	inc  bc                                          ; $4921: $03
	ld   [bc], a                                     ; $4922: $02
	ld   [bc], a                                     ; $4923: $02
	ld   [bc], a                                     ; $4924: $02
	ld   b, $07                                      ; $4925: $06 $07
	rlca                                             ; $4927: $07
	rlca                                             ; $4928: $07
	ld   b, $06                                      ; $4929: $06 $06
	ld   b, $07                                      ; $492b: $06 $07
	rlca                                             ; $492d: $07
	rlca                                             ; $492e: $07
	rlca                                             ; $492f: $07
	ld   b, $06                                      ; $4930: $06 $06
	ld   [bc], a                                     ; $4932: $02
	ld   b, $02                                      ; $4933: $06 $02
	ld   [bc], a                                     ; $4935: $02
	ld   [bc], a                                     ; $4936: $02
	ld   [bc], a                                     ; $4937: $02
	ld   [bc], a                                     ; $4938: $02
	ld   [bc], a                                     ; $4939: $02
	ld   b, $07                                      ; $493a: $06 $07
	rlca                                             ; $493c: $07
	rlca                                             ; $493d: $07
	rlca                                             ; $493e: $07
	rlca                                             ; $493f: $07
	rrca                                             ; $4940: $0f
	rrca                                             ; $4941: $0f
	rrca                                             ; $4942: $0f
	rrca                                             ; $4943: $0f
	ld   c, $0e                                      ; $4944: $0e $0e
	ld   [$0a0e], sp                                 ; $4946: $08 $0e $0a
	dec  c                                           ; $4949: $0d
	dec  c                                           ; $494a: $0d
	dec  c                                           ; $494b: $0d
	ld   a, [bc]                                     ; $494c: $0a
	ld   a, [bc]                                     ; $494d: $0a
	ld   a, [bc]                                     ; $494e: $0a
	rrca                                             ; $494f: $0f
	rrca                                             ; $4950: $0f
	rrca                                             ; $4951: $0f
	rrca                                             ; $4952: $0f
	rrca                                             ; $4953: $0f
	rrca                                             ; $4954: $0f
	rrca                                             ; $4955: $0f
	rrca                                             ; $4956: $0f
	ld   c, $0e                                      ; $4957: $0e $0e
	ld   c, $0f                                      ; $4959: $0e $0f
	ld   c, $0d                                      ; $495b: $0e $0d
	dec  c                                           ; $495d: $0d
	dec  c                                           ; $495e: $0d
	dec  c                                           ; $495f: $0d
	dec  c                                           ; $4960: $0d
	ld   c, $0e                                      ; $4961: $0e $0e
	rrca                                             ; $4963: $0f
	rrca                                             ; $4964: $0f
	rrca                                             ; $4965: $0f
	rrca                                             ; $4966: $0f
	ld   b, $0f                                      ; $4967: $06 $0f
	rrca                                             ; $4969: $0f
	rrca                                             ; $496a: $0f
	ld   c, $0e                                      ; $496b: $0e $0e
	ld   c, $0e                                      ; $496d: $0e $0e
	ld   c, $0d                                      ; $496f: $0e $0d
	dec  b                                           ; $4971: $05
	dec  c                                           ; $4972: $0d
	dec  c                                           ; $4973: $0d
	dec  c                                           ; $4974: $0d
	dec  c                                           ; $4975: $0d
	ld   c, $0f                                      ; $4976: $0e $0f
	rrca                                             ; $4978: $0f
	rrca                                             ; $4979: $0f
	rrca                                             ; $497a: $0f
	ld   b, $0d                                      ; $497b: $06 $0d
	dec  c                                           ; $497d: $0d
	dec  c                                           ; $497e: $0d
	dec  c                                           ; $497f: $0d
	dec  c                                           ; $4980: $0d
	dec  c                                           ; $4981: $0d
	dec  c                                           ; $4982: $0d
	dec  c                                           ; $4983: $0d
	dec  c                                           ; $4984: $0d
	dec  c                                           ; $4985: $0d
	dec  c                                           ; $4986: $0d
	dec  c                                           ; $4987: $0d
	dec  c                                           ; $4988: $0d
	dec  c                                           ; $4989: $0d
	dec  c                                           ; $498a: $0d
	dec  c                                           ; $498b: $0d
	dec  c                                           ; $498c: $0d
	dec  c                                           ; $498d: $0d
	dec  c                                           ; $498e: $0d
	dec  c                                           ; $498f: $0d
	dec  c                                           ; $4990: $0d
	dec  c                                           ; $4991: $0d
	dec  c                                           ; $4992: $0d
	dec  c                                           ; $4993: $0d
	dec  c                                           ; $4994: $0d
	dec  c                                           ; $4995: $0d
	dec  c                                           ; $4996: $0d
	dec  c                                           ; $4997: $0d
	dec  c                                           ; $4998: $0d
	dec  c                                           ; $4999: $0d
	dec  c                                           ; $499a: $0d
	dec  c                                           ; $499b: $0d
	dec  c                                           ; $499c: $0d
	dec  c                                           ; $499d: $0d
	dec  c                                           ; $499e: $0d
	dec  c                                           ; $499f: $0d
	dec  l                                           ; $49a0: $2d
	dec  c                                           ; $49a1: $0d
	dec  c                                           ; $49a2: $0d
	dec  c                                           ; $49a3: $0d
	dec  c                                           ; $49a4: $0d
	dec  c                                           ; $49a5: $0d
	dec  c                                           ; $49a6: $0d
	dec  c                                           ; $49a7: $0d
	dec  c                                           ; $49a8: $0d
	dec  c                                           ; $49a9: $0d
	dec  c                                           ; $49aa: $0d
	dec  c                                           ; $49ab: $0d
	dec  c                                           ; $49ac: $0d
	dec  c                                           ; $49ad: $0d
	dec  c                                           ; $49ae: $0d
	dec  c                                           ; $49af: $0d
	dec  c                                           ; $49b0: $0d
	dec  c                                           ; $49b1: $0d
	dec  c                                           ; $49b2: $0d
	dec  c                                           ; $49b3: $0d
	dec  l                                           ; $49b4: $2d
	dec  c                                           ; $49b5: $0d
	dec  c                                           ; $49b6: $0d
	dec  c                                           ; $49b7: $0d
	dec  c                                           ; $49b8: $0d
	dec  c                                           ; $49b9: $0d
	dec  c                                           ; $49ba: $0d
	dec  c                                           ; $49bb: $0d
	dec  c                                           ; $49bc: $0d
	dec  c                                           ; $49bd: $0d
	dec  c                                           ; $49be: $0d
	dec  c                                           ; $49bf: $0d
	dec  c                                           ; $49c0: $0d
	dec  b                                           ; $49c1: $05
	dec  c                                           ; $49c2: $0d
	dec  b                                           ; $49c3: $05
	dec  c                                           ; $49c4: $0d
	dec  c                                           ; $49c5: $0d
	dec  c                                           ; $49c6: $0d
	dec  c                                           ; $49c7: $0d
	dec  c                                           ; $49c8: $0d
	dec  c                                           ; $49c9: $0d
	dec  c                                           ; $49ca: $0d
	dec  c                                           ; $49cb: $0d
	dec  c                                           ; $49cc: $0d
	dec  c                                           ; $49cd: $0d
	dec  c                                           ; $49ce: $0d
	dec  c                                           ; $49cf: $0d
	dec  c                                           ; $49d0: $0d
	dec  c                                           ; $49d1: $0d
	dec  c                                           ; $49d2: $0d
	dec  b                                           ; $49d3: $05
	dec  c                                           ; $49d4: $0d
	dec  b                                           ; $49d5: $05
	dec  c                                           ; $49d6: $0d
	dec  b                                           ; $49d7: $05
	dec  b                                           ; $49d8: $05
	dec  b                                           ; $49d9: $05
	dec  b                                           ; $49da: $05
	dec  c                                           ; $49db: $0d
	dec  c                                           ; $49dc: $0d
	dec  c                                           ; $49dd: $0d
	dec  c                                           ; $49de: $0d
	dec  c                                           ; $49df: $0d
	add  b                                           ; $49e0: $80
	add  b                                           ; $49e1: $80
	add  b                                           ; $49e2: $80
	add  b                                           ; $49e3: $80
	add  b                                           ; $49e4: $80
	add  b                                           ; $49e5: $80
	add  b                                           ; $49e6: $80
	add  b                                           ; $49e7: $80
	add  b                                           ; $49e8: $80
	add  b                                           ; $49e9: $80
	add  c                                           ; $49ea: $81
	add  d                                           ; $49eb: $82
	add  e                                           ; $49ec: $83
	add  b                                           ; $49ed: $80
	add  b                                           ; $49ee: $80
	add  b                                           ; $49ef: $80
	add  b                                           ; $49f0: $80
	add  b                                           ; $49f1: $80
	add  b                                           ; $49f2: $80
	add  b                                           ; $49f3: $80
	add  b                                           ; $49f4: $80
	add  b                                           ; $49f5: $80
	add  b                                           ; $49f6: $80
	add  b                                           ; $49f7: $80
	add  b                                           ; $49f8: $80
	add  b                                           ; $49f9: $80
	add  b                                           ; $49fa: $80
	add  b                                           ; $49fb: $80
	add  h                                           ; $49fc: $84
	add  l                                           ; $49fd: $85
	add  [hl]                                        ; $49fe: $86
	add  a                                           ; $49ff: $87
	adc  b                                           ; $4a00: $88
	adc  c                                           ; $4a01: $89
	adc  d                                           ; $4a02: $8a
	add  b                                           ; $4a03: $80
	add  b                                           ; $4a04: $80
	add  b                                           ; $4a05: $80
	add  b                                           ; $4a06: $80
	add  b                                           ; $4a07: $80
	add  b                                           ; $4a08: $80
	add  b                                           ; $4a09: $80
	add  b                                           ; $4a0a: $80
	add  b                                           ; $4a0b: $80
	add  b                                           ; $4a0c: $80
	add  b                                           ; $4a0d: $80
	adc  e                                           ; $4a0e: $8b
	adc  h                                           ; $4a0f: $8c
	adc  l                                           ; $4a10: $8d
	adc  [hl]                                        ; $4a11: $8e
	adc  a                                           ; $4a12: $8f
	sub  b                                           ; $4a13: $90
	sub  c                                           ; $4a14: $91
	sub  d                                           ; $4a15: $92
	sub  e                                           ; $4a16: $93
	add  b                                           ; $4a17: $80
	add  b                                           ; $4a18: $80
	add  b                                           ; $4a19: $80
	add  b                                           ; $4a1a: $80
	add  b                                           ; $4a1b: $80
	add  b                                           ; $4a1c: $80
	add  b                                           ; $4a1d: $80
	add  b                                           ; $4a1e: $80
	add  b                                           ; $4a1f: $80
	add  b                                           ; $4a20: $80
	add  b                                           ; $4a21: $80
	sub  h                                           ; $4a22: $94
	sub  l                                           ; $4a23: $95
	sub  [hl]                                        ; $4a24: $96
	sub  a                                           ; $4a25: $97
	sbc  b                                           ; $4a26: $98
	sbc  c                                           ; $4a27: $99
	sbc  d                                           ; $4a28: $9a
	sbc  e                                           ; $4a29: $9b
	add  b                                           ; $4a2a: $80
	sbc  h                                           ; $4a2b: $9c
	sbc  l                                           ; $4a2c: $9d
	sbc  [hl]                                        ; $4a2d: $9e
	sbc  a                                           ; $4a2e: $9f
	sbc  l                                           ; $4a2f: $9d
	add  b                                           ; $4a30: $80
	add  b                                           ; $4a31: $80
	add  b                                           ; $4a32: $80
	add  b                                           ; $4a33: $80
	add  b                                           ; $4a34: $80
	and  b                                           ; $4a35: $a0
	and  c                                           ; $4a36: $a1
	and  d                                           ; $4a37: $a2
	and  e                                           ; $4a38: $a3
	and  h                                           ; $4a39: $a4
	and  l                                           ; $4a3a: $a5
	and  [hl]                                        ; $4a3b: $a6
	and  a                                           ; $4a3c: $a7
	xor  b                                           ; $4a3d: $a8
	xor  c                                           ; $4a3e: $a9
	xor  d                                           ; $4a3f: $aa
	xor  e                                           ; $4a40: $ab
	xor  h                                           ; $4a41: $ac
	xor  l                                           ; $4a42: $ad
	xor  [hl]                                        ; $4a43: $ae
	add  b                                           ; $4a44: $80
	add  b                                           ; $4a45: $80
	add  b                                           ; $4a46: $80
	add  b                                           ; $4a47: $80
	add  b                                           ; $4a48: $80
	xor  a                                           ; $4a49: $af
	or   b                                           ; $4a4a: $b0
	or   c                                           ; $4a4b: $b1
	or   d                                           ; $4a4c: $b2
	or   e                                           ; $4a4d: $b3
	or   h                                           ; $4a4e: $b4
	or   l                                           ; $4a4f: $b5
	or   [hl]                                        ; $4a50: $b6
	or   a                                           ; $4a51: $b7
	cp   b                                           ; $4a52: $b8
	cp   c                                           ; $4a53: $b9
	cp   d                                           ; $4a54: $ba
	cp   e                                           ; $4a55: $bb
	add  b                                           ; $4a56: $80
	add  b                                           ; $4a57: $80
	add  b                                           ; $4a58: $80
	cp   h                                           ; $4a59: $bc
	cp   l                                           ; $4a5a: $bd
	cp   [hl]                                        ; $4a5b: $be
	add  b                                           ; $4a5c: $80
	add  b                                           ; $4a5d: $80
	cp   a                                           ; $4a5e: $bf
	ret  nz                                          ; $4a5f: $c0

	pop  bc                                          ; $4a60: $c1
	jp   nz, $c4c3                                   ; $4a61: $c2 $c3 $c4

	push bc                                          ; $4a64: $c5
	add  $c7                                         ; $4a65: $c6 $c7
	add  b                                           ; $4a67: $80
	add  b                                           ; $4a68: $80
	ret  z                                           ; $4a69: $c8

	add  b                                           ; $4a6a: $80
	add  b                                           ; $4a6b: $80
	add  b                                           ; $4a6c: $80
	add  b                                           ; $4a6d: $80
	ret                                              ; $4a6e: $c9


	jp   z, $cccb                                    ; $4a6f: $ca $cb $cc

	call $cfce                                       ; $4a72: $cd $ce $cf
	ret  nc                                          ; $4a75: $d0

	pop  de                                          ; $4a76: $d1
	jp   nc, $d4d3                                   ; $4a77: $d2 $d3 $d4

	push de                                          ; $4a7a: $d5
	add  b                                           ; $4a7b: $80
	sub  $80                                         ; $4a7c: $d6 $80
	add  b                                           ; $4a7e: $80
	add  b                                           ; $4a7f: $80
	add  b                                           ; $4a80: $80
	add  b                                           ; $4a81: $80
	rst  $10                                         ; $4a82: $d7
	ret  c                                           ; $4a83: $d8

	reti                                             ; $4a84: $d9


	jp   c, $dcdb                                    ; $4a85: $da $db $dc

	db   $dd                                         ; $4a88: $dd
	sbc  $df                                         ; $4a89: $de $df
	ldh  [$e1], a                                    ; $4a8b: $e0 $e1
	ldh  [c], a                                      ; $4a8d: $e2
	db   $e3                                         ; $4a8e: $e3
	db   $e4                                         ; $4a8f: $e4
	push hl                                          ; $4a90: $e5
	and  $e7                                         ; $4a91: $e6 $e7
	add  sp, -$17                                    ; $4a93: $e8 $e9
	ld   [$eceb], a                                  ; $4a95: $ea $eb $ec
	db   $ed                                         ; $4a98: $ed
	xor  $ef                                         ; $4a99: $ee $ef
	ldh  a, [$f1]                                    ; $4a9b: $f0 $f1
	ldh  a, [c]                                      ; $4a9d: $f2
	di                                               ; $4a9e: $f3
	db   $f4                                         ; $4a9f: $f4
	push af                                          ; $4aa0: $f5
	or   $f7                                         ; $4aa1: $f6 $f7
	ld   hl, sp-$07                                  ; $4aa3: $f8 $f9
	ld   a, [$fcfb]                                  ; $4aa5: $fa $fb $fc
	add  b                                           ; $4aa8: $80
	add  c                                           ; $4aa9: $81
	add  d                                           ; $4aaa: $82
	add  e                                           ; $4aab: $83
	add  h                                           ; $4aac: $84
	add  l                                           ; $4aad: $85
	add  [hl]                                        ; $4aae: $86
	add  a                                           ; $4aaf: $87
	adc  b                                           ; $4ab0: $88
	adc  c                                           ; $4ab1: $89
	adc  d                                           ; $4ab2: $8a
	adc  e                                           ; $4ab3: $8b
	adc  h                                           ; $4ab4: $8c
	adc  l                                           ; $4ab5: $8d
	adc  [hl]                                        ; $4ab6: $8e
	adc  a                                           ; $4ab7: $8f
	sub  b                                           ; $4ab8: $90
	sub  c                                           ; $4ab9: $91
	sub  d                                           ; $4aba: $92
	sub  e                                           ; $4abb: $93
	sub  h                                           ; $4abc: $94
	sub  l                                           ; $4abd: $95
	sub  [hl]                                        ; $4abe: $96
	sub  a                                           ; $4abf: $97
	sbc  b                                           ; $4ac0: $98
	sbc  c                                           ; $4ac1: $99
	sbc  d                                           ; $4ac2: $9a
	sbc  e                                           ; $4ac3: $9b
	sbc  h                                           ; $4ac4: $9c
	sbc  l                                           ; $4ac5: $9d
	sbc  [hl]                                        ; $4ac6: $9e
	sbc  a                                           ; $4ac7: $9f
	and  b                                           ; $4ac8: $a0
	and  c                                           ; $4ac9: $a1
	and  d                                           ; $4aca: $a2
	and  e                                           ; $4acb: $a3
	and  h                                           ; $4acc: $a4
	and  l                                           ; $4acd: $a5
	and  [hl]                                        ; $4ace: $a6
	add  b                                           ; $4acf: $80
	and  a                                           ; $4ad0: $a7
	xor  b                                           ; $4ad1: $a8
	xor  c                                           ; $4ad2: $a9
	xor  d                                           ; $4ad3: $aa
	xor  e                                           ; $4ad4: $ab
	xor  h                                           ; $4ad5: $ac
	xor  l                                           ; $4ad6: $ad
	xor  [hl]                                        ; $4ad7: $ae
	xor  a                                           ; $4ad8: $af
	add  b                                           ; $4ad9: $80
	or   b                                           ; $4ada: $b0
	or   c                                           ; $4adb: $b1
	or   d                                           ; $4adc: $b2
	or   e                                           ; $4add: $b3
	or   h                                           ; $4ade: $b4
	or   l                                           ; $4adf: $b5
	or   [hl]                                        ; $4ae0: $b6
	or   a                                           ; $4ae1: $b7
	cp   b                                           ; $4ae2: $b8
	add  b                                           ; $4ae3: $80
	cp   c                                           ; $4ae4: $b9
	cp   c                                           ; $4ae5: $b9
	cp   c                                           ; $4ae6: $b9
	cp   c                                           ; $4ae7: $b9
	cp   c                                           ; $4ae8: $b9
	cp   c                                           ; $4ae9: $b9
	cp   c                                           ; $4aea: $b9
	cp   d                                           ; $4aeb: $ba
	cp   e                                           ; $4aec: $bb
	cp   h                                           ; $4aed: $bc
	cp   l                                           ; $4aee: $bd
	cp   [hl]                                        ; $4aef: $be
	cp   a                                           ; $4af0: $bf
	ret  nz                                          ; $4af1: $c0

	pop  bc                                          ; $4af2: $c1
	jp   nz, $b9b9                                   ; $4af3: $c2 $b9 $b9

	cp   c                                           ; $4af6: $b9
	cp   c                                           ; $4af7: $b9
	cp   c                                           ; $4af8: $b9
	cp   c                                           ; $4af9: $b9
	cp   c                                           ; $4afa: $b9
	jp   $c5c4                                       ; $4afb: $c3 $c4 $c5


	add  $c7                                         ; $4afe: $c6 $c7
	ret  z                                           ; $4b00: $c8

	ret                                              ; $4b01: $c9


	jp   z, $cccb                                    ; $4b02: $ca $cb $cc

	call $cfce                                       ; $4b05: $cd $ce $cf
	jp   $b9b9                                       ; $4b08: $c3 $b9 $b9


	cp   c                                           ; $4b0b: $b9
	cp   c                                           ; $4b0c: $b9
	cp   c                                           ; $4b0d: $b9
	cp   c                                           ; $4b0e: $b9
	ret  nc                                          ; $4b0f: $d0

	pop  de                                          ; $4b10: $d1
	jp   nc, $d4d3                                   ; $4b11: $d2 $d3 $d4

	push de                                          ; $4b14: $d5
	sub  $d7                                         ; $4b15: $d6 $d7
	ret  c                                           ; $4b17: $d8

	reti                                             ; $4b18: $d9


	jp   c, $d2db                                    ; $4b19: $da $db $d2

	ret  nc                                          ; $4b1c: $d0

	cp   c                                           ; $4b1d: $b9
	cp   c                                           ; $4b1e: $b9
	cp   c                                           ; $4b1f: $b9
	cp   c                                           ; $4b20: $b9
	cp   c                                           ; $4b21: $b9
	cp   c                                           ; $4b22: $b9
	cp   c                                           ; $4b23: $b9
	cp   c                                           ; $4b24: $b9
	cp   c                                           ; $4b25: $b9
	call c, $dedd                                    ; $4b26: $dc $dd $de
	add  b                                           ; $4b29: $80
	rst  JumpTable                                         ; $4b2a: $df
	add  b                                           ; $4b2b: $80
	ldh  [$e1], a                                    ; $4b2c: $e0 $e1
	ldh  [c], a                                      ; $4b2e: $e2
	cp   c                                           ; $4b2f: $b9
	cp   c                                           ; $4b30: $b9
	cp   c                                           ; $4b31: $b9
	cp   c                                           ; $4b32: $b9
	cp   c                                           ; $4b33: $b9
	cp   c                                           ; $4b34: $b9
	cp   c                                           ; $4b35: $b9
	cp   c                                           ; $4b36: $b9
	cp   c                                           ; $4b37: $b9
	cp   c                                           ; $4b38: $b9
	cp   c                                           ; $4b39: $b9
	db   $e3                                         ; $4b3a: $e3
	add  b                                           ; $4b3b: $80
	db   $e4                                         ; $4b3c: $e4
	add  b                                           ; $4b3d: $80
	push hl                                          ; $4b3e: $e5
	add  b                                           ; $4b3f: $80
	db   $fd                                         ; $4b40: $fd
	cp   $ff                                         ; $4b41: $fe $ff
	cp   c                                           ; $4b43: $b9
	cp   c                                           ; $4b44: $b9
	cp   c                                           ; $4b45: $b9
	cp   c                                           ; $4b46: $b9
	cp   c                                           ; $4b47: $b9
	nop                                              ; $4b48: $00
	nop                                              ; $4b49: $00
	nop                                              ; $4b4a: $00
	nop                                              ; $4b4b: $00
	nop                                              ; $4b4c: $00
	nop                                              ; $4b4d: $00
	nop                                              ; $4b4e: $00
	nop                                              ; $4b4f: $00
	nop                                              ; $4b50: $00
	nop                                              ; $4b51: $00
	nop                                              ; $4b52: $00
	nop                                              ; $4b53: $00
	nop                                              ; $4b54: $00
	nop                                              ; $4b55: $00
	nop                                              ; $4b56: $00
	dec  b                                           ; $4b57: $05
	dec  b                                           ; $4b58: $05
	dec  b                                           ; $4b59: $05
	dec  b                                           ; $4b5a: $05
	dec  b                                           ; $4b5b: $05
	nop                                              ; $4b5c: $00
	nop                                              ; $4b5d: $00
	nop                                              ; $4b5e: $00
	nop                                              ; $4b5f: $00
	nop                                              ; $4b60: $00
	nop                                              ; $4b61: $00
	rlca                                             ; $4b62: $07
	rlca                                             ; $4b63: $07
	rlca                                             ; $4b64: $07
	rlca                                             ; $4b65: $07
	rlca                                             ; $4b66: $07
	rlca                                             ; $4b67: $07
	rlca                                             ; $4b68: $07
	rlca                                             ; $4b69: $07
	rlca                                             ; $4b6a: $07
	rlca                                             ; $4b6b: $07
	dec  b                                           ; $4b6c: $05
	dec  b                                           ; $4b6d: $05
	dec  b                                           ; $4b6e: $05
	dec  b                                           ; $4b6f: $05
	nop                                              ; $4b70: $00
	nop                                              ; $4b71: $00
	nop                                              ; $4b72: $00
	nop                                              ; $4b73: $00
	nop                                              ; $4b74: $00
	nop                                              ; $4b75: $00
	rlca                                             ; $4b76: $07
	rlca                                             ; $4b77: $07
	rlca                                             ; $4b78: $07
	rlca                                             ; $4b79: $07
	rlca                                             ; $4b7a: $07
	rlca                                             ; $4b7b: $07
	rlca                                             ; $4b7c: $07
	rlca                                             ; $4b7d: $07
	rlca                                             ; $4b7e: $07
	rlca                                             ; $4b7f: $07
	dec  b                                           ; $4b80: $05
	dec  b                                           ; $4b81: $05
	dec  b                                           ; $4b82: $05
	dec  b                                           ; $4b83: $05
	nop                                              ; $4b84: $00
	nop                                              ; $4b85: $00
	nop                                              ; $4b86: $00
	nop                                              ; $4b87: $00
	nop                                              ; $4b88: $00
	nop                                              ; $4b89: $00
	rlca                                             ; $4b8a: $07
	rlca                                             ; $4b8b: $07
	rlca                                             ; $4b8c: $07
	rlca                                             ; $4b8d: $07
	rlca                                             ; $4b8e: $07
	rlca                                             ; $4b8f: $07
	rlca                                             ; $4b90: $07
	rlca                                             ; $4b91: $07
	rlca                                             ; $4b92: $07
	rlca                                             ; $4b93: $07
	dec  b                                           ; $4b94: $05
	dec  b                                           ; $4b95: $05
	dec  b                                           ; $4b96: $05
	dec  b                                           ; $4b97: $05
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
	nop                                              ; $4ba4: $00
	nop                                              ; $4ba5: $00
	nop                                              ; $4ba6: $00
	nop                                              ; $4ba7: $00
	dec  b                                           ; $4ba8: $05
	dec  b                                           ; $4ba9: $05
	dec  b                                           ; $4baa: $05
	dec  b                                           ; $4bab: $05
	nop                                              ; $4bac: $00
	nop                                              ; $4bad: $00
	nop                                              ; $4bae: $00
	nop                                              ; $4baf: $00
	nop                                              ; $4bb0: $00
	nop                                              ; $4bb1: $00
	nop                                              ; $4bb2: $00
	nop                                              ; $4bb3: $00
	inc  b                                           ; $4bb4: $04
	nop                                              ; $4bb5: $00
	inc  bc                                          ; $4bb6: $03
	inc  b                                           ; $4bb7: $04
	inc  b                                           ; $4bb8: $04
	inc  b                                           ; $4bb9: $04
	nop                                              ; $4bba: $00
	nop                                              ; $4bbb: $00
	dec  b                                           ; $4bbc: $05
	dec  c                                           ; $4bbd: $0d
	dec  c                                           ; $4bbe: $0d
	dec  c                                           ; $4bbf: $0d
	nop                                              ; $4bc0: $00
	nop                                              ; $4bc1: $00
	nop                                              ; $4bc2: $00
	nop                                              ; $4bc3: $00
	nop                                              ; $4bc4: $00
	nop                                              ; $4bc5: $00
	nop                                              ; $4bc6: $00
	nop                                              ; $4bc7: $00
	inc  b                                           ; $4bc8: $04
	nop                                              ; $4bc9: $00
	inc  bc                                          ; $4bca: $03
	nop                                              ; $4bcb: $00
	inc  b                                           ; $4bcc: $04
	inc  b                                           ; $4bcd: $04
	inc  b                                           ; $4bce: $04
	nop                                              ; $4bcf: $00
	ld   [$0d0d], sp                                 ; $4bd0: $08 $0d $0d
	dec  c                                           ; $4bd3: $0d
	nop                                              ; $4bd4: $00
	nop                                              ; $4bd5: $00
	nop                                              ; $4bd6: $00
	nop                                              ; $4bd7: $00
	nop                                              ; $4bd8: $00
	nop                                              ; $4bd9: $00
	nop                                              ; $4bda: $00
	nop                                              ; $4bdb: $00
	inc  bc                                          ; $4bdc: $03
	inc  bc                                          ; $4bdd: $03
	inc  bc                                          ; $4bde: $03
	inc  bc                                          ; $4bdf: $03
	inc  bc                                          ; $4be0: $03
	nop                                              ; $4be1: $00
	nop                                              ; $4be2: $00
	nop                                              ; $4be3: $00
	ld   [rRAMG], sp                                 ; $4be4: $08 $00 $00
	nop                                              ; $4be7: $00
	nop                                              ; $4be8: $00
	nop                                              ; $4be9: $00
	nop                                              ; $4bea: $00
	nop                                              ; $4beb: $00
	nop                                              ; $4bec: $00
	nop                                              ; $4bed: $00
	nop                                              ; $4bee: $00
	inc  b                                           ; $4bef: $04
	inc  b                                           ; $4bf0: $04
	inc  bc                                          ; $4bf1: $03
	inc  bc                                          ; $4bf2: $03
	inc  bc                                          ; $4bf3: $03
	inc  bc                                          ; $4bf4: $03
	nop                                              ; $4bf5: $00
	nop                                              ; $4bf6: $00
	nop                                              ; $4bf7: $00
	ld   [$0808], sp                                 ; $4bf8: $08 $08 $08
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
	inc  bc                                          ; $4c05: $03
	inc  bc                                          ; $4c06: $03
	inc  bc                                          ; $4c07: $03
	inc  bc                                          ; $4c08: $03
	nop                                              ; $4c09: $00
	ld   bc, $0901                                   ; $4c0a: $01 $01 $09
	ld   [$0008], sp                                 ; $4c0d: $08 $08 $00
	nop                                              ; $4c10: $00
	nop                                              ; $4c11: $00
	nop                                              ; $4c12: $00
	nop                                              ; $4c13: $00
	nop                                              ; $4c14: $00
	nop                                              ; $4c15: $00
	nop                                              ; $4c16: $00
	nop                                              ; $4c17: $00
	nop                                              ; $4c18: $00
	ld   bc, $0303                                   ; $4c19: $01 $03 $03
	inc  bc                                          ; $4c1c: $03
	ld   [bc], a                                     ; $4c1d: $02
	ld   [bc], a                                     ; $4c1e: $02
	ld   bc, TurnOnLCD                                   ; $4c1f: $01 $09 $09
	add  hl, bc                                      ; $4c22: $09
	add  hl, bc                                      ; $4c23: $09
	nop                                              ; $4c24: $00
	nop                                              ; $4c25: $00
	nop                                              ; $4c26: $00
	nop                                              ; $4c27: $00
	ld   bc, $0101                                   ; $4c28: $01 $01 $01
	ld   [bc], a                                     ; $4c2b: $02
	ld   [bc], a                                     ; $4c2c: $02
	inc  bc                                          ; $4c2d: $03
	inc  bc                                          ; $4c2e: $03
	inc  bc                                          ; $4c2f: $03
	inc  bc                                          ; $4c30: $03
	ld   [bc], a                                     ; $4c31: $02
	ld   [bc], a                                     ; $4c32: $02
	ld   bc, $0101                                   ; $4c33: $01 $01 $01
	add  hl, bc                                      ; $4c36: $09
	add  hl, bc                                      ; $4c37: $09
	nop                                              ; $4c38: $00
	nop                                              ; $4c39: $00
	nop                                              ; $4c3a: $00
	ld   bc, $0101                                   ; $4c3b: $01 $01 $01
	ld   bc, $0302                                   ; $4c3e: $01 $02 $03
	inc  bc                                          ; $4c41: $03
	inc  bc                                          ; $4c42: $03
	inc  bc                                          ; $4c43: $03
	inc  bc                                          ; $4c44: $03
	inc  bc                                          ; $4c45: $03
	ld   [bc], a                                     ; $4c46: $02
	ld   bc, $0101                                   ; $4c47: $01 $01 $01
	ld   bc, $0009                                   ; $4c4a: $01 $09 $00
	nop                                              ; $4c4d: $00
	ld   [TurnOnLCD], sp                                 ; $4c4e: $08 $09 $09
	add  hl, bc                                      ; $4c51: $09
	add  hl, bc                                      ; $4c52: $09
	dec  bc                                          ; $4c53: $0b
	inc  bc                                          ; $4c54: $03
	inc  bc                                          ; $4c55: $03
	inc  bc                                          ; $4c56: $03
	inc  bc                                          ; $4c57: $03
	inc  bc                                          ; $4c58: $03
	inc  bc                                          ; $4c59: $03
	ld   [bc], a                                     ; $4c5a: $02
	ld   [bc], a                                     ; $4c5b: $02
	add  hl, bc                                      ; $4c5c: $09
	ld   bc, $0101                                   ; $4c5d: $01 $01 $01
	nop                                              ; $4c60: $00
	nop                                              ; $4c61: $00
	ld   bc, $0901                                   ; $4c62: $01 $01 $09
	add  hl, bc                                      ; $4c65: $09
	ld   [bc], a                                     ; $4c66: $02
	inc  bc                                          ; $4c67: $03
	ld   b, $00                                      ; $4c68: $06 $00
	nop                                              ; $4c6a: $00
	nop                                              ; $4c6b: $00
	ld   [bc], a                                     ; $4c6c: $02
	inc  bc                                          ; $4c6d: $03
	ld   [bc], a                                     ; $4c6e: $02
	ld   [bc], a                                     ; $4c6f: $02
	ld   a, [bc]                                     ; $4c70: $0a
	add  hl, bc                                      ; $4c71: $09
	add  hl, bc                                      ; $4c72: $09
	add  hl, bc                                      ; $4c73: $09
	nop                                              ; $4c74: $00
	nop                                              ; $4c75: $00
	ld   [$0a09], sp                                 ; $4c76: $08 $09 $0a
	dec  bc                                          ; $4c79: $0b
	dec  bc                                          ; $4c7a: $0b
	ld   a, [bc]                                     ; $4c7b: $0a
	ld   b, $00                                      ; $4c7c: $06 $00
	nop                                              ; $4c7e: $00
	ld   [bc], a                                     ; $4c7f: $02
	ld   [bc], a                                     ; $4c80: $02
	ld   bc, $0303                                   ; $4c81: $01 $03 $03
	ld   a, [bc]                                     ; $4c84: $0a
	ld   bc, $0901                                   ; $4c85: $01 $01 $09
	nop                                              ; $4c88: $00
	nop                                              ; $4c89: $00
	ld   bc, $0201                                   ; $4c8a: $01 $01 $02
	inc  bc                                          ; $4c8d: $03
	inc  bc                                          ; $4c8e: $03
	ld   b, $06                                      ; $4c8f: $06 $06
	inc  bc                                          ; $4c91: $03
	nop                                              ; $4c92: $00
	ld   [bc], a                                     ; $4c93: $02
	ld   bc, $0301                                   ; $4c94: $01 $01 $03
	inc  bc                                          ; $4c97: $03
	add  hl, bc                                      ; $4c98: $09
	ld   a, [bc]                                     ; $4c99: $0a
	ld   bc, $0009                                   ; $4c9a: $01 $09 $00
	nop                                              ; $4c9d: $00
	ld   bc, $0002                                   ; $4c9e: $01 $02 $00
	nop                                              ; $4ca1: $00
	ld   bc, $0606                                   ; $4ca2: $01 $06 $06
	inc  bc                                          ; $4ca5: $03
	ld   b, $02                                      ; $4ca6: $06 $02
	ld   bc, $0201                                   ; $4ca8: $01 $01 $02
	nop                                              ; $4cab: $00
	ld   [$020a], sp                                 ; $4cac: $08 $0a $02
	ld   bc, $8180                                   ; $4caf: $01 $80 $81
	add  d                                           ; $4cb2: $82
	add  e                                           ; $4cb3: $83
	add  d                                           ; $4cb4: $82
	add  h                                           ; $4cb5: $84
	add  h                                           ; $4cb6: $84
	add  h                                           ; $4cb7: $84
	add  l                                           ; $4cb8: $85
	add  [hl]                                        ; $4cb9: $86
	add  a                                           ; $4cba: $87
	adc  b                                           ; $4cbb: $88
	adc  c                                           ; $4cbc: $89
	add  h                                           ; $4cbd: $84
	add  h                                           ; $4cbe: $84
	adc  d                                           ; $4cbf: $8a
	ld   l, e                                        ; $4cc0: $6b
	ld   l, h                                        ; $4cc1: $6c
	ld   l, l                                        ; $4cc2: $6d
	ld   l, [hl]                                     ; $4cc3: $6e
	add  h                                           ; $4cc4: $84
	adc  e                                           ; $4cc5: $8b
	adc  h                                           ; $4cc6: $8c
	adc  l                                           ; $4cc7: $8d
	adc  [hl]                                        ; $4cc8: $8e
	adc  a                                           ; $4cc9: $8f
	sub  b                                           ; $4cca: $90
	sub  c                                           ; $4ccb: $91
	sub  d                                           ; $4ccc: $92
	sub  e                                           ; $4ccd: $93
	sub  h                                           ; $4cce: $94
	sub  l                                           ; $4ccf: $95
	sub  [hl]                                        ; $4cd0: $96
	sub  a                                           ; $4cd1: $97
	sbc  b                                           ; $4cd2: $98
	sbc  c                                           ; $4cd3: $99
	ld   l, a                                        ; $4cd4: $6f
	ld   [hl], b                                     ; $4cd5: $70
	ld   [hl], c                                     ; $4cd6: $71
	ld   [hl], d                                     ; $4cd7: $72
	add  h                                           ; $4cd8: $84
	sbc  d                                           ; $4cd9: $9a
	sbc  e                                           ; $4cda: $9b
	sbc  h                                           ; $4cdb: $9c
	sbc  l                                           ; $4cdc: $9d
	sbc  [hl]                                        ; $4cdd: $9e
	sbc  a                                           ; $4cde: $9f
	and  b                                           ; $4cdf: $a0
	and  c                                           ; $4ce0: $a1
	and  d                                           ; $4ce1: $a2
	and  e                                           ; $4ce2: $a3
	and  h                                           ; $4ce3: $a4
	and  l                                           ; $4ce4: $a5
	and  [hl]                                        ; $4ce5: $a6
	and  a                                           ; $4ce6: $a7
	xor  b                                           ; $4ce7: $a8
	ld   [hl], e                                     ; $4ce8: $73
	ld   [hl], h                                     ; $4ce9: $74
	ld   [hl], l                                     ; $4cea: $75
	halt                                             ; $4ceb: $76
	add  h                                           ; $4cec: $84
	xor  c                                           ; $4ced: $a9
	xor  d                                           ; $4cee: $aa
	xor  e                                           ; $4cef: $ab
	xor  h                                           ; $4cf0: $ac
	xor  l                                           ; $4cf1: $ad
	xor  [hl]                                        ; $4cf2: $ae
	xor  a                                           ; $4cf3: $af
	or   b                                           ; $4cf4: $b0
	or   c                                           ; $4cf5: $b1
	or   d                                           ; $4cf6: $b2
	or   e                                           ; $4cf7: $b3
	or   h                                           ; $4cf8: $b4
	or   l                                           ; $4cf9: $b5
	or   [hl]                                        ; $4cfa: $b6
	or   a                                           ; $4cfb: $b7
	ld   [hl], a                                     ; $4cfc: $77
	ld   a, b                                        ; $4cfd: $78
	ld   a, c                                        ; $4cfe: $79
	ld   a, d                                        ; $4cff: $7a
	add  b                                           ; $4d00: $80
	add  b                                           ; $4d01: $80
	add  b                                           ; $4d02: $80

Jump_01d_4d03:
	add  b                                           ; $4d03: $80
	cp   c                                           ; $4d04: $b9
	cp   d                                           ; $4d05: $ba
	cp   e                                           ; $4d06: $bb
	cp   h                                           ; $4d07: $bc
	cp   l                                           ; $4d08: $bd
	cp   [hl]                                        ; $4d09: $be
	cp   a                                           ; $4d0a: $bf
	ret  nz                                          ; $4d0b: $c0

	pop  bc                                          ; $4d0c: $c1
	jp   nz, $c4c3                                   ; $4d0d: $c2 $c3 $c4

	ld   a, e                                        ; $4d10: $7b
	ld   a, h                                        ; $4d11: $7c
	ld   a, l                                        ; $4d12: $7d
	ld   a, [hl]                                     ; $4d13: $7e
	add  b                                           ; $4d14: $80
	add  b                                           ; $4d15: $80
	add  b                                           ; $4d16: $80
	add  b                                           ; $4d17: $80
	add  b                                           ; $4d18: $80
	push bc                                          ; $4d19: $c5
	add  $c7                                         ; $4d1a: $c6 $c7
	ret  z                                           ; $4d1c: $c8

	ret                                              ; $4d1d: $c9


	jp   z, $cccb                                    ; $4d1e: $ca $cb $cc

	call $cfce                                       ; $4d21: $cd $ce $cf
	ld   a, a                                        ; $4d24: $7f
	add  b                                           ; $4d25: $80
	add  c                                           ; $4d26: $81
	add  d                                           ; $4d27: $82
	add  b                                           ; $4d28: $80
	add  b                                           ; $4d29: $80
	add  b                                           ; $4d2a: $80
	add  b                                           ; $4d2b: $80
	add  b                                           ; $4d2c: $80
	ret  nc                                          ; $4d2d: $d0

	pop  de                                          ; $4d2e: $d1
	jp   nc, $d4d3                                   ; $4d2f: $d2 $d3 $d4

	push de                                          ; $4d32: $d5
	sub  $d7                                         ; $4d33: $d6 $d7
	ret  c                                           ; $4d35: $d8

	reti                                             ; $4d36: $d9


	jp   c, $8483                                    ; $4d37: $da $83 $84

	add  h                                           ; $4d3a: $84
	add  l                                           ; $4d3b: $85
	add  b                                           ; $4d3c: $80
	add  b                                           ; $4d3d: $80
	add  b                                           ; $4d3e: $80
	add  b                                           ; $4d3f: $80
	db   $db                                         ; $4d40: $db
	call c, $dedd                                    ; $4d41: $dc $dd $de
	rst  JumpTable                                         ; $4d44: $df
	ldh  [$e1], a                                    ; $4d45: $e0 $e1
	ldh  [c], a                                      ; $4d47: $e2
	db   $e3                                         ; $4d48: $e3
	db   $e4                                         ; $4d49: $e4
	push hl                                          ; $4d4a: $e5
	and  $86                                         ; $4d4b: $e6 $86
	add  b                                           ; $4d4d: $80
	add  b                                           ; $4d4e: $80
	add  b                                           ; $4d4f: $80
	add  b                                           ; $4d50: $80
	add  b                                           ; $4d51: $80
	add  b                                           ; $4d52: $80
	add  b                                           ; $4d53: $80
	rst  $20                                         ; $4d54: $e7
	add  sp, -$17                                    ; $4d55: $e8 $e9
	ld   [$eceb], a                                  ; $4d57: $ea $eb $ec
	db   $ed                                         ; $4d5a: $ed
	xor  $ef                                         ; $4d5b: $ee $ef
	ldh  a, [$f1]                                    ; $4d5d: $f0 $f1
	ldh  a, [c]                                      ; $4d5f: $f2
	add  a                                           ; $4d60: $87
	adc  b                                           ; $4d61: $88
	adc  c                                           ; $4d62: $89
	add  b                                           ; $4d63: $80
	add  b                                           ; $4d64: $80
	add  b                                           ; $4d65: $80
	add  b                                           ; $4d66: $80
	add  b                                           ; $4d67: $80
	add  b                                           ; $4d68: $80
	di                                               ; $4d69: $f3
	db   $f4                                         ; $4d6a: $f4
	push af                                          ; $4d6b: $f5
	or   $f7                                         ; $4d6c: $f6 $f7
	ld   hl, sp-$07                                  ; $4d6e: $f8 $f9
	ld   a, [$fcfb]                                  ; $4d70: $fa $fb $fc
	db   $fd                                         ; $4d73: $fd
	adc  d                                           ; $4d74: $8a
	adc  e                                           ; $4d75: $8b
	adc  h                                           ; $4d76: $8c
	add  b                                           ; $4d77: $80
	add  b                                           ; $4d78: $80
	add  b                                           ; $4d79: $80
	add  b                                           ; $4d7a: $80
	add  b                                           ; $4d7b: $80
	cp   $ff                                         ; $4d7c: $fe $ff
	nop                                              ; $4d7e: $00
	ld   bc, $0302                                   ; $4d7f: $01 $02 $03
	inc  b                                           ; $4d82: $04
	dec  b                                           ; $4d83: $05
	ld   b, $07                                      ; $4d84: $06 $07
	ld   [$8d09], sp                                 ; $4d86: $08 $09 $8d
	adc  [hl]                                        ; $4d89: $8e
	adc  a                                           ; $4d8a: $8f
	sub  b                                           ; $4d8b: $90
	add  b                                           ; $4d8c: $80
	add  b                                           ; $4d8d: $80
	add  b                                           ; $4d8e: $80
	ld   a, [bc]                                     ; $4d8f: $0a
	dec  bc                                          ; $4d90: $0b
	inc  c                                           ; $4d91: $0c
	dec  c                                           ; $4d92: $0d
	ld   c, $0f                                      ; $4d93: $0e $0f
	db   $10                                         ; $4d95: $10
	ld   de, $1312                                   ; $4d96: $11 $12 $13
	inc  d                                           ; $4d99: $14
	dec  d                                           ; $4d9a: $15
	ld   d, $59                                      ; $4d9b: $16 $59
	ld   e, c                                        ; $4d9d: $59
	sub  c                                           ; $4d9e: $91
	sub  d                                           ; $4d9f: $92
	add  b                                           ; $4da0: $80
	add  b                                           ; $4da1: $80
	ld   a, [bc]                                     ; $4da2: $0a
	rla                                              ; $4da3: $17
	jr   jr_01d_4dbf                                 ; $4da4: $18 $19

	ld   a, [de]                                     ; $4da6: $1a
	dec  de                                          ; $4da7: $1b
	inc  e                                           ; $4da8: $1c
	dec  e                                           ; $4da9: $1d
	ld   e, $1f                                      ; $4daa: $1e $1f
	jr   nz, jr_01d_4dcf                             ; $4dac: $20 $21

	ld   [hl+], a                                    ; $4dae: $22
	inc  hl                                          ; $4daf: $23
	ld   e, c                                        ; $4db0: $59
	ld   e, c                                        ; $4db1: $59
	ld   e, c                                        ; $4db2: $59
	sub  e                                           ; $4db3: $93
	add  b                                           ; $4db4: $80
	inc  h                                           ; $4db5: $24
	xor  d                                           ; $4db6: $aa
	xor  e                                           ; $4db7: $ab
	xor  h                                           ; $4db8: $ac
	xor  l                                           ; $4db9: $ad
	xor  [hl]                                        ; $4dba: $ae
	xor  a                                           ; $4dbb: $af
	dec  hl                                          ; $4dbc: $2b
	inc  l                                           ; $4dbd: $2c
	dec  l                                           ; $4dbe: $2d

jr_01d_4dbf:
	ld   l, $2f                                      ; $4dbf: $2e $2f
	jr   nc, jr_01d_4df4                             ; $4dc1: $30 $31

	ld   [hl-], a                                    ; $4dc3: $32
	sub  h                                           ; $4dc4: $94
	ld   e, c                                        ; $4dc5: $59
	ld   e, c                                        ; $4dc6: $59
	ld   e, c                                        ; $4dc7: $59
	inc  sp                                          ; $4dc8: $33
	inc  [hl]                                        ; $4dc9: $34
	dec  [hl]                                        ; $4dca: $35
	ld   [hl], $bc                                   ; $4dcb: $36 $bc
	cp   l                                           ; $4dcd: $bd
	add  hl, sp                                      ; $4dce: $39

jr_01d_4dcf:
	ld   a, [hl-]                                    ; $4dcf: $3a
	dec  sp                                          ; $4dd0: $3b
	inc  a                                           ; $4dd1: $3c
	inc  a                                           ; $4dd2: $3c
	inc  a                                           ; $4dd3: $3c
	dec  a                                           ; $4dd4: $3d
	ld   a, $3f                                      ; $4dd5: $3e $3f
	ld   b, b                                        ; $4dd7: $40
	sub  l                                           ; $4dd8: $95
	sub  [hl]                                        ; $4dd9: $96
	sub  a                                           ; $4dda: $97
	sbc  b                                           ; $4ddb: $98
	ld   b, c                                        ; $4ddc: $41
	ld   b, d                                        ; $4ddd: $42
	jp   z, $cccb                                    ; $4dde: $ca $cb $cc

	call $cfce                                       ; $4de1: $cd $ce $cf
	ld   c, c                                        ; $4de4: $49
	inc  a                                           ; $4de5: $3c
	inc  a                                           ; $4de6: $3c
	ld   c, d                                        ; $4de7: $4a
	ld   c, e                                        ; $4de8: $4b
	ld   c, h                                        ; $4de9: $4c
	ld   c, l                                        ; $4dea: $4d
	ld   c, [hl]                                     ; $4deb: $4e
	sbc  c                                           ; $4dec: $99
	ld   e, c                                        ; $4ded: $59
	ld   e, c                                        ; $4dee: $59
	sbc  d                                           ; $4def: $9a
	add  b                                           ; $4df0: $80
	ld   c, a                                        ; $4df1: $4f
	ld   d, b                                        ; $4df2: $50
	ld   d, c                                        ; $4df3: $51

jr_01d_4df4:
	ld   d, d                                        ; $4df4: $52
	ld   d, e                                        ; $4df5: $53
	ld   d, h                                        ; $4df6: $54
	ld   d, l                                        ; $4df7: $55
	ld   d, [hl]                                     ; $4df8: $56
	ld   d, a                                        ; $4df9: $57
	inc  a                                           ; $4dfa: $3c
	ld   e, b                                        ; $4dfb: $58
	ld   e, c                                        ; $4dfc: $59
	ld   e, d                                        ; $4dfd: $5a
	ld   e, e                                        ; $4dfe: $5b
	ld   e, h                                        ; $4dff: $5c
	sbc  e                                           ; $4e00: $9b
	sbc  h                                           ; $4e01: $9c
	ld   e, c                                        ; $4e02: $59
	sbc  l                                           ; $4e03: $9d
	add  b                                           ; $4e04: $80
	ld   e, l                                        ; $4e05: $5d
	ld   e, [hl]                                     ; $4e06: $5e
	ld   e, a                                        ; $4e07: $5f
	ld   h, b                                        ; $4e08: $60
	ld   h, b                                        ; $4e09: $60
	ld   h, c                                        ; $4e0a: $61
	ld   h, d                                        ; $4e0b: $62
	ld   h, e                                        ; $4e0c: $63
	ld   h, h                                        ; $4e0d: $64
	ld   h, l                                        ; $4e0e: $65
	ld   h, [hl]                                     ; $4e0f: $66
	ld   h, a                                        ; $4e10: $67
	ld   l, b                                        ; $4e11: $68
	ld   l, c                                        ; $4e12: $69
	ld   l, d                                        ; $4e13: $6a
	sbc  [hl]                                        ; $4e14: $9e
	sbc  a                                           ; $4e15: $9f
	cp   b                                           ; $4e16: $b8
	ld   e, c                                        ; $4e17: $59
	inc  bc                                          ; $4e18: $03
	inc  bc                                          ; $4e19: $03
	inc  bc                                          ; $4e1a: $03
	ld   [bc], a                                     ; $4e1b: $02
	ld   [bc], a                                     ; $4e1c: $02
	inc  bc                                          ; $4e1d: $03
	inc  bc                                          ; $4e1e: $03
	inc  bc                                          ; $4e1f: $03
	inc  bc                                          ; $4e20: $03
	inc  bc                                          ; $4e21: $03
	inc  bc                                          ; $4e22: $03
	inc  bc                                          ; $4e23: $03
	inc  bc                                          ; $4e24: $03
	inc  bc                                          ; $4e25: $03
	inc  bc                                          ; $4e26: $03
	inc  bc                                          ; $4e27: $03
	inc  bc                                          ; $4e28: $03
	dec  b                                           ; $4e29: $05
	dec  b                                           ; $4e2a: $05
	dec  b                                           ; $4e2b: $05
	inc  bc                                          ; $4e2c: $03
	inc  bc                                          ; $4e2d: $03
	ld   [bc], a                                     ; $4e2e: $02
	ld   [bc], a                                     ; $4e2f: $02
	ld   [bc], a                                     ; $4e30: $02
	ld   [bc], a                                     ; $4e31: $02
	inc  bc                                          ; $4e32: $03
	inc  bc                                          ; $4e33: $03
	inc  bc                                          ; $4e34: $03
	inc  bc                                          ; $4e35: $03
	inc  bc                                          ; $4e36: $03
	inc  bc                                          ; $4e37: $03
	inc  bc                                          ; $4e38: $03
	inc  bc                                          ; $4e39: $03
	inc  bc                                          ; $4e3a: $03
	inc  bc                                          ; $4e3b: $03
	inc  bc                                          ; $4e3c: $03
	inc  bc                                          ; $4e3d: $03
	dec  b                                           ; $4e3e: $05
	dec  b                                           ; $4e3f: $05
	ld   h, e                                        ; $4e40: $63
	inc  bc                                          ; $4e41: $03
	ld   [bc], a                                     ; $4e42: $02
	ld   [bc], a                                     ; $4e43: $02
	ld   [bc], a                                     ; $4e44: $02
	ld   [bc], a                                     ; $4e45: $02
	inc  bc                                          ; $4e46: $03
	inc  bc                                          ; $4e47: $03
	inc  bc                                          ; $4e48: $03
	inc  bc                                          ; $4e49: $03
	inc  bc                                          ; $4e4a: $03
	inc  bc                                          ; $4e4b: $03
	inc  bc                                          ; $4e4c: $03
	inc  bc                                          ; $4e4d: $03
	inc  bc                                          ; $4e4e: $03
	inc  bc                                          ; $4e4f: $03
	inc  bc                                          ; $4e50: $03
	inc  bc                                          ; $4e51: $03
	inc  bc                                          ; $4e52: $03
	dec  b                                           ; $4e53: $05
	ld   h, e                                        ; $4e54: $63
	ld   h, e                                        ; $4e55: $63
	ld   [bc], a                                     ; $4e56: $02
	ld   [bc], a                                     ; $4e57: $02
	ld   [bc], a                                     ; $4e58: $02
	ld   [bc], a                                     ; $4e59: $02
	ld   [bc], a                                     ; $4e5a: $02
	inc  bc                                          ; $4e5b: $03
	inc  bc                                          ; $4e5c: $03
	inc  bc                                          ; $4e5d: $03
	inc  bc                                          ; $4e5e: $03
	inc  bc                                          ; $4e5f: $03
	inc  bc                                          ; $4e60: $03
	inc  bc                                          ; $4e61: $03
	inc  bc                                          ; $4e62: $03
	inc  bc                                          ; $4e63: $03
	inc  bc                                          ; $4e64: $03
	inc  bc                                          ; $4e65: $03
	inc  bc                                          ; $4e66: $03
	inc  bc                                          ; $4e67: $03
	ld   b, e                                        ; $4e68: $43
	inc  bc                                          ; $4e69: $03
	ld   [bc], a                                     ; $4e6a: $02
	ld   [bc], a                                     ; $4e6b: $02
	ld   [bc], a                                     ; $4e6c: $02
	ld   [bc], a                                     ; $4e6d: $02
	ld   [bc], a                                     ; $4e6e: $02
	inc  bc                                          ; $4e6f: $03
	inc  bc                                          ; $4e70: $03
	inc  bc                                          ; $4e71: $03
	inc  bc                                          ; $4e72: $03
	inc  bc                                          ; $4e73: $03
	inc  bc                                          ; $4e74: $03
	inc  bc                                          ; $4e75: $03
	inc  bc                                          ; $4e76: $03
	inc  bc                                          ; $4e77: $03
	inc  bc                                          ; $4e78: $03
	inc  bc                                          ; $4e79: $03
	inc  bc                                          ; $4e7a: $03
	inc  bc                                          ; $4e7b: $03
	ld   h, e                                        ; $4e7c: $63
	inc  b                                           ; $4e7d: $04
	ld   bc, $0101                                   ; $4e7e: $01 $01 $01
	ld   bc, $0303                                   ; $4e81: $01 $03 $03
	inc  bc                                          ; $4e84: $03
	inc  bc                                          ; $4e85: $03
	inc  bc                                          ; $4e86: $03
	inc  bc                                          ; $4e87: $03
	inc  bc                                          ; $4e88: $03
	inc  bc                                          ; $4e89: $03
	inc  bc                                          ; $4e8a: $03
	inc  bc                                          ; $4e8b: $03
	inc  bc                                          ; $4e8c: $03
	inc  bc                                          ; $4e8d: $03
	inc  bc                                          ; $4e8e: $03
	inc  bc                                          ; $4e8f: $03
	ld   h, e                                        ; $4e90: $63
	inc  b                                           ; $4e91: $04
	inc  b                                           ; $4e92: $04
	inc  bc                                          ; $4e93: $03
	inc  bc                                          ; $4e94: $03
	inc  b                                           ; $4e95: $04
	inc  b                                           ; $4e96: $04
	inc  bc                                          ; $4e97: $03
	inc  bc                                          ; $4e98: $03
	inc  bc                                          ; $4e99: $03
	inc  bc                                          ; $4e9a: $03
	inc  bc                                          ; $4e9b: $03
	inc  bc                                          ; $4e9c: $03
	inc  bc                                          ; $4e9d: $03
	inc  bc                                          ; $4e9e: $03
	inc  bc                                          ; $4e9f: $03
	inc  bc                                          ; $4ea0: $03
	inc  bc                                          ; $4ea1: $03
	inc  bc                                          ; $4ea2: $03
	inc  bc                                          ; $4ea3: $03
	inc  bc                                          ; $4ea4: $03
	inc  bc                                          ; $4ea5: $03
	inc  b                                           ; $4ea6: $04
	inc  bc                                          ; $4ea7: $03
	inc  bc                                          ; $4ea8: $03
	inc  b                                           ; $4ea9: $04
	nop                                              ; $4eaa: $00
	inc  bc                                          ; $4eab: $03
	inc  bc                                          ; $4eac: $03
	inc  bc                                          ; $4ead: $03
	inc  bc                                          ; $4eae: $03
	inc  bc                                          ; $4eaf: $03
	inc  bc                                          ; $4eb0: $03
	inc  bc                                          ; $4eb1: $03
	inc  bc                                          ; $4eb2: $03
	inc  bc                                          ; $4eb3: $03
	inc  bc                                          ; $4eb4: $03
	inc  bc                                          ; $4eb5: $03
	inc  bc                                          ; $4eb6: $03
	inc  bc                                          ; $4eb7: $03
	inc  bc                                          ; $4eb8: $03
	inc  bc                                          ; $4eb9: $03
	inc  bc                                          ; $4eba: $03
	inc  b                                           ; $4ebb: $04
	inc  bc                                          ; $4ebc: $03
	inc  b                                           ; $4ebd: $04
	nop                                              ; $4ebe: $00
	inc  bc                                          ; $4ebf: $03
	inc  bc                                          ; $4ec0: $03
	inc  bc                                          ; $4ec1: $03
	inc  bc                                          ; $4ec2: $03
	inc  bc                                          ; $4ec3: $03
	inc  bc                                          ; $4ec4: $03
	inc  bc                                          ; $4ec5: $03
	inc  bc                                          ; $4ec6: $03
	inc  bc                                          ; $4ec7: $03
	inc  bc                                          ; $4ec8: $03
	inc  bc                                          ; $4ec9: $03
	inc  bc                                          ; $4eca: $03
	inc  bc                                          ; $4ecb: $03
	inc  bc                                          ; $4ecc: $03
	inc  bc                                          ; $4ecd: $03
	inc  bc                                          ; $4ece: $03
	inc  b                                           ; $4ecf: $04
	inc  bc                                          ; $4ed0: $03
	inc  bc                                          ; $4ed1: $03
	inc  bc                                          ; $4ed2: $03
	ld   h, e                                        ; $4ed3: $63
	inc  bc                                          ; $4ed4: $03
	inc  bc                                          ; $4ed5: $03
	inc  bc                                          ; $4ed6: $03
	inc  bc                                          ; $4ed7: $03
	inc  bc                                          ; $4ed8: $03
	inc  bc                                          ; $4ed9: $03
	inc  bc                                          ; $4eda: $03
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
	ld   bc, $6301                                   ; $4ee5: $01 $01 $63
	ld   h, e                                        ; $4ee8: $63
	inc  bc                                          ; $4ee9: $03
	inc  bc                                          ; $4eea: $03
	inc  bc                                          ; $4eeb: $03
	inc  bc                                          ; $4eec: $03
	inc  bc                                          ; $4eed: $03
	inc  bc                                          ; $4eee: $03
	inc  bc                                          ; $4eef: $03
	inc  bc                                          ; $4ef0: $03
	inc  bc                                          ; $4ef1: $03
	inc  bc                                          ; $4ef2: $03
	inc  bc                                          ; $4ef3: $03
	inc  bc                                          ; $4ef4: $03
	inc  bc                                          ; $4ef5: $03
	inc  bc                                          ; $4ef6: $03
	ld   [bc], a                                     ; $4ef7: $02
	dec  bc                                          ; $4ef8: $0b
	dec  bc                                          ; $4ef9: $0b
	dec  bc                                          ; $4efa: $0b
	dec  bc                                          ; $4efb: $0b
	dec  bc                                          ; $4efc: $0b
	dec  bc                                          ; $4efd: $0b
	dec  bc                                          ; $4efe: $0b
	dec  bc                                          ; $4eff: $0b
	dec  bc                                          ; $4f00: $0b
	dec  bc                                          ; $4f01: $0b
	dec  bc                                          ; $4f02: $0b
	dec  bc                                          ; $4f03: $0b
	inc  bc                                          ; $4f04: $03
	inc  bc                                          ; $4f05: $03
	inc  bc                                          ; $4f06: $03
	inc  bc                                          ; $4f07: $03
	inc  bc                                          ; $4f08: $03
	inc  bc                                          ; $4f09: $03
	inc  bc                                          ; $4f0a: $03
	ld   [bc], a                                     ; $4f0b: $02
	dec  bc                                          ; $4f0c: $0b
	dec  bc                                          ; $4f0d: $0b
	dec  bc                                          ; $4f0e: $0b
	dec  bc                                          ; $4f0f: $0b
	dec  bc                                          ; $4f10: $0b
	dec  bc                                          ; $4f11: $0b
	dec  bc                                          ; $4f12: $0b
	dec  bc                                          ; $4f13: $0b
	dec  bc                                          ; $4f14: $0b
	dec  bc                                          ; $4f15: $0b
	dec  bc                                          ; $4f16: $0b
	dec  bc                                          ; $4f17: $0b
	inc  bc                                          ; $4f18: $03
	inc  bc                                          ; $4f19: $03
	inc  bc                                          ; $4f1a: $03
	inc  bc                                          ; $4f1b: $03
	inc  bc                                          ; $4f1c: $03
	inc  bc                                          ; $4f1d: $03
	inc  bc                                          ; $4f1e: $03
	ld   b, $03                                      ; $4f1f: $06 $03
	ld   b, $03                                      ; $4f21: $06 $03
	ld   h, e                                        ; $4f23: $63
	ld   h, e                                        ; $4f24: $63
	inc  bc                                          ; $4f25: $03
	inc  bc                                          ; $4f26: $03
	inc  bc                                          ; $4f27: $03
	inc  bc                                          ; $4f28: $03
	ld   c, $0e                                      ; $4f29: $0e $0e
	ld   c, $0e                                      ; $4f2b: $0e $0e
	ld   c, $03                                      ; $4f2d: $0e $03
	inc  bc                                          ; $4f2f: $03
	inc  bc                                          ; $4f30: $03
	inc  bc                                          ; $4f31: $03
	inc  bc                                          ; $4f32: $03
	ld   b, $03                                      ; $4f33: $06 $03
	ld   b, $03                                      ; $4f35: $06 $03
	inc  bc                                          ; $4f37: $03
	ld   h, e                                        ; $4f38: $63
	ld   h, e                                        ; $4f39: $63
	inc  bc                                          ; $4f3a: $03
	inc  bc                                          ; $4f3b: $03
	inc  bc                                          ; $4f3c: $03
	ld   c, $0e                                      ; $4f3d: $0e $0e
	ld   c, $0e                                      ; $4f3f: $0e $0e
	inc  bc                                          ; $4f41: $03
	inc  bc                                          ; $4f42: $03
	inc  bc                                          ; $4f43: $03
	inc  bc                                          ; $4f44: $03
	inc  bc                                          ; $4f45: $03
	ld   b, $06                                      ; $4f46: $06 $06
	inc  bc                                          ; $4f48: $03
	inc  bc                                          ; $4f49: $03
	inc  bc                                          ; $4f4a: $03
	inc  bc                                          ; $4f4b: $03
	inc  bc                                          ; $4f4c: $03
	ld   h, e                                        ; $4f4d: $63
	ld   h, e                                        ; $4f4e: $63
	ld   b, e                                        ; $4f4f: $43
	ld   c, $0e                                      ; $4f50: $0e $0e
	ld   c, $0e                                      ; $4f52: $0e $0e
	ld   c, $03                                      ; $4f54: $0e $03
	inc  bc                                          ; $4f56: $03
	inc  bc                                          ; $4f57: $03
	inc  bc                                          ; $4f58: $03
	dec  bc                                          ; $4f59: $0b
	ld   c, $0e                                      ; $4f5a: $0e $0e
	dec  bc                                          ; $4f5c: $0b
	dec  bc                                          ; $4f5d: $0b
	dec  bc                                          ; $4f5e: $0b
	dec  bc                                          ; $4f5f: $0b
	inc  bc                                          ; $4f60: $03
	inc  bc                                          ; $4f61: $03
	ld   h, e                                        ; $4f62: $63
	ld   h, e                                        ; $4f63: $63
	ld   c, $0e                                      ; $4f64: $0e $0e
	ld   c, $0e                                      ; $4f66: $0e $0e
	ld   c, $03                                      ; $4f68: $0e $03
	inc  bc                                          ; $4f6a: $03
	inc  bc                                          ; $4f6b: $03
	inc  bc                                          ; $4f6c: $03
	dec  bc                                          ; $4f6d: $0b
	dec  bc                                          ; $4f6e: $0b
	dec  bc                                          ; $4f6f: $0b
	dec  bc                                          ; $4f70: $0b
	dec  bc                                          ; $4f71: $0b
	dec  bc                                          ; $4f72: $0b
	dec  bc                                          ; $4f73: $0b
	inc  bc                                          ; $4f74: $03
	inc  bc                                          ; $4f75: $03
	inc  bc                                          ; $4f76: $03
	ld   h, e                                        ; $4f77: $63
	ld   h, e                                        ; $4f78: $63
	ld   b, e                                        ; $4f79: $43
	ld   h, e                                        ; $4f7a: $63
	ld   h, e                                        ; $4f7b: $63
	inc  bc                                          ; $4f7c: $03
	inc  bc                                          ; $4f7d: $03
	inc  bc                                          ; $4f7e: $03
	inc  bc                                          ; $4f7f: $03
	sbc  e                                           ; $4f80: $9b
	sbc  e                                           ; $4f81: $9b
	sbc  e                                           ; $4f82: $9b
	add  d                                           ; $4f83: $82
	add  e                                           ; $4f84: $83
	sbc  e                                           ; $4f85: $9b
	sbc  e                                           ; $4f86: $9b
	sbc  e                                           ; $4f87: $9b
	sbc  e                                           ; $4f88: $9b
	sbc  e                                           ; $4f89: $9b
	sbc  h                                           ; $4f8a: $9c
	adc  b                                           ; $4f8b: $88
	adc  c                                           ; $4f8c: $89
	adc  e                                           ; $4f8d: $8b
	adc  h                                           ; $4f8e: $8c
	adc  l                                           ; $4f8f: $8d
	adc  l                                           ; $4f90: $8d
	adc  e                                           ; $4f91: $8b
	adc  h                                           ; $4f92: $8c
	adc  l                                           ; $4f93: $8d
	sbc  e                                           ; $4f94: $9b
	sbc  e                                           ; $4f95: $9b
	sub  c                                           ; $4f96: $91
	sub  d                                           ; $4f97: $92
	sub  e                                           ; $4f98: $93
	sub  h                                           ; $4f99: $94
	sbc  e                                           ; $4f9a: $9b
	sbc  e                                           ; $4f9b: $9b
	sbc  e                                           ; $4f9c: $9b
	sbc  e                                           ; $4f9d: $9b
	sub  a                                           ; $4f9e: $97
	sbc  b                                           ; $4f9f: $98
	sbc  c                                           ; $4fa0: $99
	sbc  d                                           ; $4fa1: $9a
	adc  e                                           ; $4fa2: $8b
	adc  h                                           ; $4fa3: $8c
	adc  l                                           ; $4fa4: $8d
	adc  l                                           ; $4fa5: $8d
	adc  e                                           ; $4fa6: $8b
	adc  h                                           ; $4fa7: $8c
	sbc  h                                           ; $4fa8: $9c
	sbc  e                                           ; $4fa9: $9b
	and  c                                           ; $4faa: $a1
	and  d                                           ; $4fab: $a2
	and  e                                           ; $4fac: $a3
	and  h                                           ; $4fad: $a4
	sbc  e                                           ; $4fae: $9b
	sbc  e                                           ; $4faf: $9b
	sbc  e                                           ; $4fb0: $9b
	and  [hl]                                        ; $4fb1: $a6
	and  a                                           ; $4fb2: $a7
	xor  b                                           ; $4fb3: $a8
	xor  c                                           ; $4fb4: $a9
	xor  d                                           ; $4fb5: $aa
	xor  e                                           ; $4fb6: $ab
	adc  e                                           ; $4fb7: $8b
	adc  h                                           ; $4fb8: $8c
	adc  l                                           ; $4fb9: $8d
	adc  l                                           ; $4fba: $8d
	adc  e                                           ; $4fbb: $8b
	sbc  l                                           ; $4fbc: $9d
	sbc  h                                           ; $4fbd: $9c
	or   c                                           ; $4fbe: $b1
	or   d                                           ; $4fbf: $b2
	or   e                                           ; $4fc0: $b3
	or   h                                           ; $4fc1: $b4
	or   l                                           ; $4fc2: $b5
	sbc  e                                           ; $4fc3: $9b
	sbc  e                                           ; $4fc4: $9b
	or   [hl]                                        ; $4fc5: $b6
	or   a                                           ; $4fc6: $b7
	cp   b                                           ; $4fc7: $b8
	cp   c                                           ; $4fc8: $b9
	cp   d                                           ; $4fc9: $ba
	cp   e                                           ; $4fca: $bb
	cp   h                                           ; $4fcb: $bc
	adc  e                                           ; $4fcc: $8b
	adc  h                                           ; $4fcd: $8c
	adc  l                                           ; $4fce: $8d
	adc  l                                           ; $4fcf: $8d
	adc  d                                           ; $4fd0: $8a
	ret  nz                                          ; $4fd1: $c0

	pop  bc                                          ; $4fd2: $c1
	jp   nz, $c4c3                                   ; $4fd3: $c2 $c3 $c4

	push bc                                          ; $4fd6: $c5
	sbc  e                                           ; $4fd7: $9b
	adc  a                                           ; $4fd8: $8f
	add  $c7                                         ; $4fd9: $c6 $c7
	ret  z                                           ; $4fdb: $c8

	ret                                              ; $4fdc: $c9


	jp   z, $cccb                                    ; $4fdd: $ca $cb $cc

	call $8cce                                       ; $4fe0: $cd $ce $8c
	adc  l                                           ; $4fe3: $8d
	adc  e                                           ; $4fe4: $8b
	ret  nc                                          ; $4fe5: $d0

	pop  de                                          ; $4fe6: $d1
	jp   nc, $d4d3                                   ; $4fe7: $d2 $d3 $d4

	push de                                          ; $4fea: $d5
	add  l                                           ; $4feb: $85
	sbc  a                                           ; $4fec: $9f
	sub  $d7                                         ; $4fed: $d6 $d7
	ret  c                                           ; $4fef: $d8

	reti                                             ; $4ff0: $d9


	jp   c, $dcdb                                    ; $4ff1: $da $db $dc

	db   $dd                                         ; $4ff4: $dd
	sbc  $8b                                         ; $4ff5: $de $8b
	adc  h                                           ; $4ff7: $8c
	adc  h                                           ; $4ff8: $8c
	ldh  [$e1], a                                    ; $4ff9: $e0 $e1
	ldh  [c], a                                      ; $4ffb: $e2
	db   $e3                                         ; $4ffc: $e3
	db   $e4                                         ; $4ffd: $e4
	push hl                                          ; $4ffe: $e5
	sub  l                                           ; $4fff: $95
	xor  a                                           ; $5000: $af
	and  $e7                                         ; $5001: $e6 $e7
	add  sp, -$17                                    ; $5003: $e8 $e9
	ld   [$eceb], a                                  ; $5005: $ea $eb $ec
	db   $ed                                         ; $5008: $ed
	xor  $87                                         ; $5009: $ee $87
	adc  e                                           ; $500b: $8b
	adc  l                                           ; $500c: $8d
	ldh  a, [$f1]                                    ; $500d: $f0 $f1
	ldh  a, [c]                                      ; $500f: $f2
	di                                               ; $5010: $f3
	db   $f4                                         ; $5011: $f4
	push af                                          ; $5012: $f5
	and  l                                           ; $5013: $a5
	cp   a                                           ; $5014: $bf
	or   $f7                                         ; $5015: $f6 $f7
	ld   hl, sp-$07                                  ; $5017: $f8 $f9
	ld   a, [$fcfb]                                  ; $5019: $fa $fb $fc
	db   $fd                                         ; $501c: $fd
	cp   $ff                                         ; $501d: $fe $ff
	add  a                                           ; $501f: $87
	adc  l                                           ; $5020: $8d
	nop                                              ; $5021: $00
	ld   bc, $0302                                   ; $5022: $01 $02 $03
	inc  b                                           ; $5025: $04
	dec  b                                           ; $5026: $05
	sbc  e                                           ; $5027: $9b
	sbc  e                                           ; $5028: $9b
	ld   b, $07                                      ; $5029: $06 $07
	ld   [$0a09], sp                                 ; $502b: $08 $09 $0a
	dec  bc                                          ; $502e: $0b
	inc  c                                           ; $502f: $0c
	dec  c                                           ; $5030: $0d
	ld   c, $0f                                      ; $5031: $0e $0f
	sbc  l                                           ; $5033: $9d
	adc  l                                           ; $5034: $8d
	db   $10                                         ; $5035: $10
	ld   de, $1312                                   ; $5036: $11 $12 $13
	inc  d                                           ; $5039: $14
	dec  d                                           ; $503a: $15
	sbc  h                                           ; $503b: $9c
	sbc  e                                           ; $503c: $9b
	ld   d, $17                                      ; $503d: $16 $17
	jr   @+$1b                                       ; $503f: $18 $19

	ld   a, [de]                                     ; $5041: $1a
	dec  de                                          ; $5042: $1b
	inc  e                                           ; $5043: $1c
	dec  e                                           ; $5044: $1d
	ld   e, $9b                                      ; $5045: $1e $9b
	sbc  h                                           ; $5047: $9c
	adc  l                                           ; $5048: $8d
	jr   nz, jr_01d_506c                             ; $5049: $20 $21

	ld   [hl+], a                                    ; $504b: $22
	inc  hl                                          ; $504c: $23
	inc  h                                           ; $504d: $24
	dec  h                                           ; $504e: $25
	sbc  l                                           ; $504f: $9d
	sbc  h                                           ; $5050: $9c
	ld   h, $27                                      ; $5051: $26 $27
	jr   z, jr_01d_507e                              ; $5053: $28 $29

	ld   a, [hl+]                                    ; $5055: $2a
	dec  hl                                          ; $5056: $2b
	inc  l                                           ; $5057: $2c
	dec  l                                           ; $5058: $2d
	ld   l, $9b                                      ; $5059: $2e $9b
	sbc  e                                           ; $505b: $9b
	adc  l                                           ; $505c: $8d
	jr   nc, jr_01d_5090                             ; $505d: $30 $31

	ld   [hl-], a                                    ; $505f: $32
	nop                                              ; $5060: $00
	ld   bc, $0302                                   ; $5061: $01 $02 $03
	inc  b                                           ; $5064: $04
	dec  b                                           ; $5065: $05
	ld   b, $07                                      ; $5066: $06 $07
	ld   [$1e09], sp                                 ; $5068: $08 $09 $1e
	rra                                              ; $506b: $1f

jr_01d_506c:
	dec  a                                           ; $506c: $3d
	ld   a, $3f                                      ; $506d: $3e $3f
	sbc  e                                           ; $506f: $9b
	adc  l                                           ; $5070: $8d
	ld   b, b                                        ; $5071: $40
	ld   b, c                                        ; $5072: $41
	ld   b, d                                        ; $5073: $42
	db   $10                                         ; $5074: $10
	ld   de, $1312                                   ; $5075: $11 $12 $13
	inc  d                                           ; $5078: $14
	dec  d                                           ; $5079: $15
	ld   d, $17                                      ; $507a: $16 $17
	jr   jr_01d_5097                                 ; $507c: $18 $19

jr_01d_507e:
	ld   l, $2f                                      ; $507e: $2e $2f
	ld   c, l                                        ; $5080: $4d
	ld   c, [hl]                                     ; $5081: $4e
	ld   c, a                                        ; $5082: $4f
	sbc  e                                           ; $5083: $9b
	adc  l                                           ; $5084: $8d
	ld   d, b                                        ; $5085: $50
	ld   d, c                                        ; $5086: $51
	ld   d, d                                        ; $5087: $52
	ld   d, e                                        ; $5088: $53
	ld   d, h                                        ; $5089: $54
	ld   d, l                                        ; $508a: $55
	adc  h                                           ; $508b: $8c
	adc  e                                           ; $508c: $8b
	ld   d, [hl]                                     ; $508d: $56
	ld   d, a                                        ; $508e: $57
	ld   e, b                                        ; $508f: $58

jr_01d_5090:
	ld   e, c                                        ; $5090: $59
	ld   a, [bc]                                     ; $5091: $0a
	dec  bc                                          ; $5092: $0b
	inc  c                                           ; $5093: $0c
	dec  c                                           ; $5094: $0d
	ld   c, $9b                                      ; $5095: $0e $9b

jr_01d_5097:
	sbc  e                                           ; $5097: $9b
	adc  l                                           ; $5098: $8d
	ld   h, b                                        ; $5099: $60
	ld   h, c                                        ; $509a: $61
	ld   h, d                                        ; $509b: $62
	ld   h, e                                        ; $509c: $63
	ld   h, h                                        ; $509d: $64
	ld   h, l                                        ; $509e: $65
	ld   h, [hl]                                     ; $509f: $66
	adc  h                                           ; $50a0: $8c
	adc  e                                           ; $50a1: $8b
	ld   h, a                                        ; $50a2: $67
	ld   l, b                                        ; $50a3: $68
	ld   l, c                                        ; $50a4: $69
	ld   a, [de]                                     ; $50a5: $1a
	dec  de                                          ; $50a6: $1b
	inc  e                                           ; $50a7: $1c
	dec  e                                           ; $50a8: $1d
	sbc  e                                           ; $50a9: $9b
	sbc  e                                           ; $50aa: $9b
	sbc  e                                           ; $50ab: $9b
	adc  l                                           ; $50ac: $8d
	ld   [hl], b                                     ; $50ad: $70
	ld   [hl], c                                     ; $50ae: $71
	ld   [hl], d                                     ; $50af: $72
	ld   [hl], e                                     ; $50b0: $73
	ld   [hl], h                                     ; $50b1: $74
	ld   [hl], l                                     ; $50b2: $75
	halt                                             ; $50b3: $76
	adc  l                                           ; $50b4: $8d
	adc  h                                           ; $50b5: $8c
	adc  e                                           ; $50b6: $8b
	adc  d                                           ; $50b7: $8a
	add  hl, hl                                      ; $50b8: $29
	ld   a, [hl+]                                    ; $50b9: $2a
	dec  hl                                          ; $50ba: $2b
	inc  l                                           ; $50bb: $2c
	dec  l                                           ; $50bc: $2d
	sbc  e                                           ; $50bd: $9b
	sbc  e                                           ; $50be: $9b
	sbc  e                                           ; $50bf: $9b
	adc  l                                           ; $50c0: $8d
	jr   nz, jr_01d_50e4                             ; $50c1: $20 $21

	ld   [hl+], a                                    ; $50c3: $22
	inc  hl                                          ; $50c4: $23
	inc  h                                           ; $50c5: $24
	dec  h                                           ; $50c6: $25
	ld   h, $8d                                      ; $50c7: $26 $8d
	adc  l                                           ; $50c9: $8d
	adc  h                                           ; $50ca: $8c
	adc  e                                           ; $50cb: $8b
	add  hl, sp                                      ; $50cc: $39
	ld   a, [hl-]                                    ; $50cd: $3a
	dec  sp                                          ; $50ce: $3b
	inc  a                                           ; $50cf: $3c
	dec  a                                           ; $50d0: $3d
	sbc  e                                           ; $50d1: $9b
	sbc  e                                           ; $50d2: $9b
	sbc  e                                           ; $50d3: $9b
	adc  l                                           ; $50d4: $8d
	jr   nc, jr_01d_5108                             ; $50d5: $30 $31

	ld   [hl-], a                                    ; $50d7: $32
	inc  sp                                          ; $50d8: $33
	inc  [hl]                                        ; $50d9: $34
	dec  [hl]                                        ; $50da: $35
	ld   [hl], $8d                                   ; $50db: $36 $8d
	adc  l                                           ; $50dd: $8d
	adc  l                                           ; $50de: $8d
	adc  h                                           ; $50df: $8c
	adc  e                                           ; $50e0: $8b
	adc  d                                           ; $50e1: $8a
	sbc  l                                           ; $50e2: $9d
	sbc  h                                           ; $50e3: $9c

jr_01d_50e4:
	sbc  e                                           ; $50e4: $9b
	sbc  e                                           ; $50e5: $9b
	sbc  e                                           ; $50e6: $9b
	sbc  e                                           ; $50e7: $9b
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

jr_01d_5108:
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
	jr   nz, jr_01d_5126                             ; $5124: $20 $00

jr_01d_5126:
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
	jr   nz, jr_01d_513a                             ; $5138: $20 $00

jr_01d_513a:
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
	jr   nz, jr_01d_514e                             ; $514c: $20 $00

jr_01d_514e:
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
	jr   nz, jr_01d_5162                             ; $5160: $20 $00

jr_01d_5162:
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
	ld   h, b                                        ; $5174: $60
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
	ld   h, b                                        ; $5186: $60
	ld   h, b                                        ; $5187: $60
	ld   h, b                                        ; $5188: $60
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
	ld   h, b                                        ; $519a: $60
	ld   h, b                                        ; $519b: $60
	ld   h, b                                        ; $519c: $60
	ld   h, b                                        ; $519d: $60
	ld   b, b                                        ; $519e: $40
	ld   b, b                                        ; $519f: $40
	ld   b, b                                        ; $51a0: $40
	ld   b, b                                        ; $51a1: $40
	ld   b, b                                        ; $51a2: $40
	nop                                              ; $51a3: $00
	nop                                              ; $51a4: $00
	nop                                              ; $51a5: $00
	nop                                              ; $51a6: $00
	nop                                              ; $51a7: $00
	jr   nz, jr_01d_51ea                             ; $51a8: $20 $40

	ld   b, b                                        ; $51aa: $40
	ld   b, b                                        ; $51ab: $40
	ld   b, b                                        ; $51ac: $40
	ld   b, b                                        ; $51ad: $40
	ld   h, b                                        ; $51ae: $60
	ld   h, b                                        ; $51af: $60
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
	ld   [bc], a                                     ; $51da: $02
	ld   [bc], a                                     ; $51db: $02
	ld   [bc], a                                     ; $51dc: $02
	nop                                              ; $51dd: $00
	nop                                              ; $51de: $00
	nop                                              ; $51df: $00
	nop                                              ; $51e0: $00
	nop                                              ; $51e1: $00
	nop                                              ; $51e2: $00
	nop                                              ; $51e3: $00
	jr   nz, jr_01d_51e6                             ; $51e4: $20 $00

jr_01d_51e6:
	nop                                              ; $51e6: $00
	nop                                              ; $51e7: $00
	nop                                              ; $51e8: $00
	nop                                              ; $51e9: $00

jr_01d_51ea:
	nop                                              ; $51ea: $00
	nop                                              ; $51eb: $00
	nop                                              ; $51ec: $00
	ld   bc, $0202                                   ; $51ed: $01 $02 $02
	ld   [bc], a                                     ; $51f0: $02
	ld   bc, $0000                                   ; $51f1: $01 $00 $00
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
	ld   [bc], a                                     ; $5202: $02
	ld   [bc], a                                     ; $5203: $02
	ld   [bc], a                                     ; $5204: $02
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
	add  b                                           ; $5250: $80
	add  c                                           ; $5251: $81
	add  d                                           ; $5252: $82
	add  d                                           ; $5253: $82
	add  d                                           ; $5254: $82
	add  d                                           ; $5255: $82
	add  d                                           ; $5256: $82
	add  d                                           ; $5257: $82
	add  d                                           ; $5258: $82
	add  d                                           ; $5259: $82
	add  d                                           ; $525a: $82
	add  d                                           ; $525b: $82
	add  d                                           ; $525c: $82
	add  d                                           ; $525d: $82
	add  d                                           ; $525e: $82
	add  d                                           ; $525f: $82
	add  d                                           ; $5260: $82
	add  d                                           ; $5261: $82
	add  d                                           ; $5262: $82
	adc  b                                           ; $5263: $88
	add  e                                           ; $5264: $83
	add  h                                           ; $5265: $84
	add  l                                           ; $5266: $85
	and  b                                           ; $5267: $a0
	and  c                                           ; $5268: $a1
	and  d                                           ; $5269: $a2
	and  e                                           ; $526a: $a3
	and  h                                           ; $526b: $a4
	and  l                                           ; $526c: $a5
	and  [hl]                                        ; $526d: $a6
	and  a                                           ; $526e: $a7
	xor  b                                           ; $526f: $a8
	xor  c                                           ; $5270: $a9
	xor  d                                           ; $5271: $aa
	xor  e                                           ; $5272: $ab
	xor  h                                           ; $5273: $ac
	xor  l                                           ; $5274: $ad
	add  l                                           ; $5275: $85
	add  l                                           ; $5276: $85
	adc  c                                           ; $5277: $89
	add  [hl]                                        ; $5278: $86
	add  a                                           ; $5279: $87
	add  l                                           ; $527a: $85
	or   b                                           ; $527b: $b0
	or   c                                           ; $527c: $b1
	or   d                                           ; $527d: $b2
	or   e                                           ; $527e: $b3
	or   h                                           ; $527f: $b4
	or   l                                           ; $5280: $b5
	or   [hl]                                        ; $5281: $b6
	or   a                                           ; $5282: $b7
	cp   b                                           ; $5283: $b8
	cp   c                                           ; $5284: $b9
	cp   d                                           ; $5285: $ba
	cp   e                                           ; $5286: $bb
	cp   h                                           ; $5287: $bc
	cp   l                                           ; $5288: $bd
	add  l                                           ; $5289: $85
	add  l                                           ; $528a: $85
	adc  c                                           ; $528b: $89
	adc  c                                           ; $528c: $89
	add  l                                           ; $528d: $85
	add  l                                           ; $528e: $85
	xor  [hl]                                        ; $528f: $ae
	xor  a                                           ; $5290: $af
	ret  nz                                          ; $5291: $c0

	pop  bc                                          ; $5292: $c1
	jp   nz, $c3a9                                   ; $5293: $c2 $a9 $c3

	call nz, $acc5                                   ; $5296: $c4 $c5 $ac
	add  $c7                                         ; $5299: $c6 $c7
	add  l                                           ; $529b: $85
	add  l                                           ; $529c: $85
	add  l                                           ; $529d: $85
	add  l                                           ; $529e: $85
	adc  c                                           ; $529f: $89
	adc  c                                           ; $52a0: $89
	add  l                                           ; $52a1: $85
	add  l                                           ; $52a2: $85
	cp   [hl]                                        ; $52a3: $be
	cp   a                                           ; $52a4: $bf
	ret  nc                                          ; $52a5: $d0

	pop  de                                          ; $52a6: $d1
	jp   nc, $d3b9                                   ; $52a7: $d2 $b9 $d3

	call nc, $bcd5                                   ; $52aa: $d4 $d5 $bc
	sub  $d7                                         ; $52ad: $d6 $d7
	dec  de                                          ; $52af: $1b
	add  l                                           ; $52b0: $85
	add  l                                           ; $52b1: $85
	add  l                                           ; $52b2: $85
	adc  c                                           ; $52b3: $89
	adc  c                                           ; $52b4: $89
	add  l                                           ; $52b5: $85
	add  l                                           ; $52b6: $85
	xor  [hl]                                        ; $52b7: $ae
	xor  a                                           ; $52b8: $af
	ret  nz                                          ; $52b9: $c0

	pop  bc                                          ; $52ba: $c1
	jp   nz, $c9c8                                   ; $52bb: $c2 $c8 $c9

	jp   z, $cccb                                    ; $52be: $ca $cb $cc

	call $abad                                       ; $52c1: $cd $ad $ab
	adc  $85                                         ; $52c4: $ce $85
	add  l                                           ; $52c6: $85
	adc  c                                           ; $52c7: $89
	adc  c                                           ; $52c8: $89
	add  l                                           ; $52c9: $85
	add  l                                           ; $52ca: $85
	cp   [hl]                                        ; $52cb: $be
	cp   a                                           ; $52cc: $bf
	ret  nc                                          ; $52cd: $d0

	pop  de                                          ; $52ce: $d1
	jp   nc, $d9d8                                   ; $52cf: $d2 $d8 $d9

	jp   c, $dcdb                                    ; $52d2: $da $db $dc

	db   $dd                                         ; $52d5: $dd
	cp   l                                           ; $52d6: $bd
	cp   e                                           ; $52d7: $bb
	sbc  $85                                         ; $52d8: $de $85
	add  l                                           ; $52da: $85
	adc  c                                           ; $52db: $89
	adc  c                                           ; $52dc: $89
	add  l                                           ; $52dd: $85
	add  l                                           ; $52de: $85
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $52df: $cf
	ldh  [$e1], a                                    ; $52e0: $e0 $e1
	ldh  [c], a                                      ; $52e2: $e2
	db   $e3                                         ; $52e3: $e3
	jp   $c5e4                                       ; $52e4: $c3 $e4 $c5


	push hl                                          ; $52e7: $e5
	and  $85                                         ; $52e8: $e6 $85
	add  l                                           ; $52ea: $85
	add  l                                           ; $52eb: $85
	add  l                                           ; $52ec: $85
	add  l                                           ; $52ed: $85
	add  a                                           ; $52ee: $87
	add  [hl]                                        ; $52ef: $86
	adc  c                                           ; $52f0: $89
	add  l                                           ; $52f1: $85
	add  l                                           ; $52f2: $85
	rst  JumpTable                                         ; $52f3: $df
	ldh  a, [$f1]                                    ; $52f4: $f0 $f1
	ldh  a, [c]                                      ; $52f6: $f2
	di                                               ; $52f7: $f3
	db   $d3                                         ; $52f8: $d3
	db   $f4                                         ; $52f9: $f4
	push de                                          ; $52fa: $d5
	push af                                          ; $52fb: $f5
	or   $1b                                         ; $52fc: $f6 $1b
	add  l                                           ; $52fe: $85
	add  l                                           ; $52ff: $85
	add  l                                           ; $5300: $85
	add  l                                           ; $5301: $85
	add  h                                           ; $5302: $84
	add  e                                           ; $5303: $83
	adc  b                                           ; $5304: $88
	add  d                                           ; $5305: $82
	add  d                                           ; $5306: $82
	add  d                                           ; $5307: $82
	add  d                                           ; $5308: $82
	add  d                                           ; $5309: $82
	add  d                                           ; $530a: $82
	adc  a                                           ; $530b: $8f
	sub  b                                           ; $530c: $90
	sub  b                                           ; $530d: $90
	sub  b                                           ; $530e: $90
	sub  b                                           ; $530f: $90
	adc  a                                           ; $5310: $8f
	add  d                                           ; $5311: $82
	add  d                                           ; $5312: $82
	add  d                                           ; $5313: $82
	add  d                                           ; $5314: $82
	add  d                                           ; $5315: $82
	add  c                                           ; $5316: $81
	add  b                                           ; $5317: $80
	adc  h                                           ; $5318: $8c
	adc  h                                           ; $5319: $8c
	adc  h                                           ; $531a: $8c
	adc  h                                           ; $531b: $8c
	adc  h                                           ; $531c: $8c
	adc  h                                           ; $531d: $8c
	adc  h                                           ; $531e: $8c
	sub  c                                           ; $531f: $91
	sub  d                                           ; $5320: $92
	sub  e                                           ; $5321: $93
	sub  h                                           ; $5322: $94
	sub  l                                           ; $5323: $95
	sub  [hl]                                        ; $5324: $96
	adc  h                                           ; $5325: $8c
	adc  h                                           ; $5326: $8c
	adc  h                                           ; $5327: $8c
	adc  h                                           ; $5328: $8c
	adc  h                                           ; $5329: $8c
	adc  h                                           ; $532a: $8c
	adc  h                                           ; $532b: $8c
	adc  l                                           ; $532c: $8d
	adc  l                                           ; $532d: $8d
	adc  l                                           ; $532e: $8d
	adc  l                                           ; $532f: $8d
	adc  l                                           ; $5330: $8d
	adc  l                                           ; $5331: $8d
	adc  l                                           ; $5332: $8d
	sub  a                                           ; $5333: $97
	sbc  b                                           ; $5334: $98
	sbc  c                                           ; $5335: $99
	sbc  d                                           ; $5336: $9a
	sbc  e                                           ; $5337: $9b
	sbc  h                                           ; $5338: $9c
	adc  l                                           ; $5339: $8d
	adc  l                                           ; $533a: $8d
	adc  l                                           ; $533b: $8d
	adc  l                                           ; $533c: $8d
	adc  l                                           ; $533d: $8d
	adc  l                                           ; $533e: $8d
	adc  l                                           ; $533f: $8d
	add  l                                           ; $5340: $85
	add  l                                           ; $5341: $85
	dec  b                                           ; $5342: $05
	ld   b, $07                                      ; $5343: $06 $07
	add  l                                           ; $5345: $85
	add  l                                           ; $5346: $85
	sbc  l                                           ; $5347: $9d
	sbc  [hl]                                        ; $5348: $9e
	sbc  [hl]                                        ; $5349: $9e
	sbc  [hl]                                        ; $534a: $9e
	sbc  [hl]                                        ; $534b: $9e
	sbc  l                                           ; $534c: $9d
	add  l                                           ; $534d: $85
	add  l                                           ; $534e: $85
	add  l                                           ; $534f: $85
	add  l                                           ; $5350: $85
	add  l                                           ; $5351: $85
	add  l                                           ; $5352: $85
	add  l                                           ; $5353: $85
	add  l                                           ; $5354: $85
	sbc  a                                           ; $5355: $9f
	dec  d                                           ; $5356: $15
	ld   d, $17                                      ; $5357: $16 $17
	dec  bc                                          ; $5359: $0b
	add  l                                           ; $535a: $85
	rst  $20                                         ; $535b: $e7
	add  sp, -$17                                    ; $535c: $e8 $e9
	ld   [$eceb], a                                  ; $535e: $ea $eb $ec
	and  d                                           ; $5361: $a2
	rst  ToBoot                                         ; $5362: $c7
	xor  e                                           ; $5363: $ab
	push hl                                          ; $5364: $e5
	xor  l                                           ; $5365: $ad
	add  l                                           ; $5366: $85
	add  l                                           ; $5367: $85
	add  l                                           ; $5368: $85
	add  l                                           ; $5369: $85
	ld   [$0a09], sp                                 ; $536a: $08 $09 $0a
	add  l                                           ; $536d: $85
	add  l                                           ; $536e: $85
	rst  $30                                         ; $536f: $f7
	ld   hl, sp-$07                                  ; $5370: $f8 $f9
	ld   a, [$fcfb]                                  ; $5372: $fa $fb $fc
	or   d                                           ; $5375: $b2
	rst  $10                                         ; $5376: $d7
	cp   e                                           ; $5377: $bb
	push af                                          ; $5378: $f5
	cp   l                                           ; $5379: $bd
	add  l                                           ; $537a: $85
	add  l                                           ; $537b: $85
	add  l                                           ; $537c: $85
	add  l                                           ; $537d: $85
	add  l                                           ; $537e: $85
	add  l                                           ; $537f: $85
	add  l                                           ; $5380: $85
	add  l                                           ; $5381: $85
	add  l                                           ; $5382: $85
	db   $ed                                         ; $5383: $ed
	xor  $ef                                         ; $5384: $ee $ef
	nop                                              ; $5386: $00
	and  d                                           ; $5387: $a2
	ld   bc, $0302                                   ; $5388: $01 $02 $03
	xor  d                                           ; $538b: $aa
	xor  e                                           ; $538c: $ab
	inc  b                                           ; $538d: $04
	add  l                                           ; $538e: $85
	add  l                                           ; $538f: $85
	add  l                                           ; $5390: $85
	add  l                                           ; $5391: $85
	jr   jr_01d_53ad                                 ; $5392: $18 $19

	ld   a, [de]                                     ; $5394: $1a
	add  l                                           ; $5395: $85
	add  l                                           ; $5396: $85
	db   $fd                                         ; $5397: $fd
	cp   $ff                                         ; $5398: $fe $ff
	db   $10                                         ; $539a: $10
	or   d                                           ; $539b: $b2
	ld   de, $1312                                   ; $539c: $11 $12 $13
	cp   d                                           ; $539f: $ba
	cp   e                                           ; $53a0: $bb
	inc  d                                           ; $53a1: $14
	add  l                                           ; $53a2: $85
	add  l                                           ; $53a3: $85
	adc  [hl]                                        ; $53a4: $8e
	adc  [hl]                                        ; $53a5: $8e
	adc  [hl]                                        ; $53a6: $8e
	adc  [hl]                                        ; $53a7: $8e
	adc  [hl]                                        ; $53a8: $8e
	adc  [hl]                                        ; $53a9: $8e
	adc  [hl]                                        ; $53aa: $8e
	adc  [hl]                                        ; $53ab: $8e
	adc  [hl]                                        ; $53ac: $8e

jr_01d_53ad:
	adc  [hl]                                        ; $53ad: $8e
	adc  [hl]                                        ; $53ae: $8e
	adc  [hl]                                        ; $53af: $8e
	adc  [hl]                                        ; $53b0: $8e
	adc  [hl]                                        ; $53b1: $8e
	adc  [hl]                                        ; $53b2: $8e
	adc  [hl]                                        ; $53b3: $8e
	adc  [hl]                                        ; $53b4: $8e
	adc  [hl]                                        ; $53b5: $8e
	adc  [hl]                                        ; $53b6: $8e
	adc  [hl]                                        ; $53b7: $8e
	ld   d, e                                        ; $53b8: $53
	nop                                              ; $53b9: $00
	ld   [bc], a                                     ; $53ba: $02
	ld   e, l                                        ; $53bb: $5d
	inc  bc                                          ; $53bc: $03
	ld   bc, $008d                                   ; $53bd: $01 $8d $00
	ld   [bc], a                                     ; $53c0: $02
	ld   bc, $613f                                   ; $53c1: $01 $3f $61
	adc  c                                           ; $53c4: $89
	nop                                              ; $53c5: $00
	ld   [$1560], sp                                 ; $53c6: $08 $60 $15
	inc  bc                                          ; $53c9: $03
	ld   bc, $2e0f                                   ; $53ca: $01 $0f $2e
	ld   a, b                                        ; $53cd: $78
	ld   d, a                                        ; $53ce: $57
	inc  bc                                          ; $53cf: $03
	add  [hl]                                        ; $53d0: $86
	nop                                              ; $53d1: $00
	inc  bc                                          ; $53d2: $03
	ld   a, b                                        ; $53d3: $78
	ld   bc, $4340                                   ; $53d4: $01 $40 $43
	adc  c                                           ; $53d7: $89
	nop                                              ; $53d8: $00
	inc  d                                           ; $53d9: $14
	ld   sp, $01a1                                   ; $53da: $31 $a1 $01
	inc  bc                                          ; $53dd: $03
	ld   bc, $0107                                   ; $53de: $01 $07 $01
	inc  bc                                          ; $53e1: $03
	ld   bc, $010f                                   ; $53e2: $01 $0f $01
	inc  bc                                          ; $53e5: $03
	ld   bc, $0107                                   ; $53e6: $01 $07 $01
	inc  bc                                          ; $53e9: $03
	ld   bc, $019b                                   ; $53ea: $01 $9b $01
	dec  sp                                          ; $53ed: $3b
	ld   a, $89                                      ; $53ee: $3e $89
	nop                                              ; $53f0: $00
	inc  d                                           ; $53f1: $14
	ld   sp, $0191                                   ; $53f2: $31 $91 $01
	inc  bc                                          ; $53f5: $03
	ld   bc, $0107                                   ; $53f6: $01 $07 $01
	inc  bc                                          ; $53f9: $03
	ld   bc, $010f                                   ; $53fa: $01 $0f $01
	inc  bc                                          ; $53fd: $03
	ld   bc, $0107                                   ; $53fe: $01 $07 $01
	inc  bc                                          ; $5401: $03
	ld   bc, $00d5                                   ; $5402: $01 $d5 $00
	ld   b, h                                        ; $5405: $44
	ld   a, $89                                      ; $5406: $3e $89
	nop                                              ; $5408: $00
	inc  d                                           ; $5409: $14
	ld   sp, $0181                                   ; $540a: $31 $81 $01
	inc  bc                                          ; $540d: $03
	ld   bc, $0107                                   ; $540e: $01 $07 $01
	inc  bc                                          ; $5411: $03
	ld   bc, $010f                                   ; $5412: $01 $0f $01
	inc  bc                                          ; $5415: $03
	ld   bc, $0107                                   ; $5416: $01 $07 $01
	inc  bc                                          ; $5419: $03
	ld   bc, $01b9                                   ; $541a: $01 $b9 $01
	add  hl, sp                                      ; $541d: $39
	ld   a, $89                                      ; $541e: $3e $89
	nop                                              ; $5420: $00
	inc  d                                           ; $5421: $14
	ld   sp, $01f1                                   ; $5422: $31 $f1 $01
	inc  bc                                          ; $5425: $03
	ld   bc, $0107                                   ; $5426: $01 $07 $01
	inc  bc                                          ; $5429: $03
	ld   bc, $010f                                   ; $542a: $01 $0f $01
	inc  bc                                          ; $542d: $03
	ld   bc, $0107                                   ; $542e: $01 $07 $01
	inc  bc                                          ; $5431: $03
	ld   bc, $01c7                                   ; $5432: $01 $c7 $01
	scf                                              ; $5435: $37
	ld   a, $89                                      ; $5436: $3e $89
	nop                                              ; $5438: $00
	inc  d                                           ; $5439: $14
	ld   sp, $01e1                                   ; $543a: $31 $e1 $01
	inc  bc                                          ; $543d: $03
	ld   bc, $0107                                   ; $543e: $01 $07 $01
	inc  bc                                          ; $5441: $03
	ld   bc, $010f                                   ; $5442: $01 $0f $01
	inc  bc                                          ; $5445: $03
	ld   bc, $0107                                   ; $5446: $01 $07 $01
	inc  bc                                          ; $5449: $03
	ld   bc, $01d5                                   ; $544a: $01 $d5 $01
	dec  [hl]                                        ; $544d: $35
	ld   a, $89                                      ; $544e: $3e $89
	nop                                              ; $5450: $00
	inc  d                                           ; $5451: $14
	ld   sp, $01d1                                   ; $5452: $31 $d1 $01
	inc  bc                                          ; $5455: $03
	ld   bc, $0107                                   ; $5456: $01 $07 $01
	inc  bc                                          ; $5459: $03
	ld   bc, $010f                                   ; $545a: $01 $0f $01
	inc  bc                                          ; $545d: $03
	ld   bc, $0107                                   ; $545e: $01 $07 $01
	inc  bc                                          ; $5461: $03
	ld   bc, $01e3                                   ; $5462: $01 $e3 $01
	inc  sp                                          ; $5465: $33
	ld   a, $89                                      ; $5466: $3e $89
	nop                                              ; $5468: $00
	ld   c, $31                                      ; $5469: $0e $31
	pop  bc                                          ; $546b: $c1
	ld   bc, $008b                                   ; $546c: $01 $8b $00
	adc  b                                           ; $546f: $88
	ld   bc, $0107                                   ; $5470: $01 $07 $01
	inc  bc                                          ; $5473: $03
	ld   bc, $010f                                   ; $5474: $01 $0f $01
	inc  bc                                          ; $5477: $03
	add  b                                           ; $5478: $80
	add  d                                           ; $5479: $82
	nop                                              ; $547a: $00
	ld   bc, $3e44                                   ; $547b: $01 $44 $3e
	adc  c                                           ; $547e: $89
	nop                                              ; $547f: $00
	ld   bc, $4b31                                   ; $5480: $01 $31 $4b
	add  e                                           ; $5483: $83
	nop                                              ; $5484: $00
	ld   [$0701], sp                                 ; $5485: $08 $01 $07
	or   $01                                         ; $5488: $f6 $01
	rlca                                             ; $548a: $07
	ld   bc, $0103                                   ; $548b: $01 $03 $01
	push af                                          ; $548e: $f5
	add  c                                           ; $548f: $81
	nop                                              ; $5490: $00
	ld   bc, $3e44                                   ; $5491: $01 $44 $3e
	adc  c                                           ; $5494: $89
	nop                                              ; $5495: $00
	ld   bc, $4b31                                   ; $5496: $01 $31 $4b
	add  e                                           ; $5499: $83
	nop                                              ; $549a: $00
	rlca                                             ; $549b: $07
	add  c                                           ; $549c: $81
	rlca                                             ; $549d: $07
	ld   bc, $0103                                   ; $549e: $01 $03 $01
	rst  $38                                         ; $54a1: $ff
	ld   bc, $827b                                   ; $54a2: $01 $7b $82
	nop                                              ; $54a5: $00
	ld   bc, $3e44                                   ; $54a6: $01 $44 $3e
	adc  c                                           ; $54a9: $89
	nop                                              ; $54aa: $00
	ld   bc, $4b31                                   ; $54ab: $01 $31 $4b
	adc  a                                           ; $54ae: $8f
	nop                                              ; $54af: $00
	ld   bc, $3e44                                   ; $54b0: $01 $44 $3e
	adc  c                                           ; $54b3: $89
	nop                                              ; $54b4: $00
	rrca                                             ; $54b5: $0f
	ld   c, $01                                      ; $54b6: $0e $01
	rra                                              ; $54b8: $1f
	ld   bc, $0103                                   ; $54b9: $01 $03 $01
	ld   l, c                                        ; $54bc: $69
	ld   l, [hl]                                     ; $54bd: $6e
	ld   bc, $0103                                   ; $54be: $01 $03 $01
	rrca                                             ; $54c1: $0f
	ld   bc, $0103                                   ; $54c2: $01 $03 $01
	ld   h, c                                        ; $54c5: $61
	add  c                                           ; $54c6: $81
	nop                                              ; $54c7: $00
	ld   bc, $1c66                                   ; $54c8: $01 $66 $1c
	adc  c                                           ; $54cb: $89
	nop                                              ; $54cc: $00
	inc  d                                           ; $54cd: $14
	dec  e                                           ; $54ce: $1d
	inc  bc                                          ; $54cf: $03
	ld   bc, $013f                  ; $54d0: $01 $3f $01
	inc  bc                                          ; $54d3: $03
	ld   bc, $0107                                   ; $54d4: $01 $07 $01
	inc  bc                                          ; $54d7: $03
	ld   bc, $010f                                   ; $54d8: $01 $0f $01
	inc  bc                                          ; $54db: $03
	ld   bc, $0107                                   ; $54dc: $01 $07 $01
	inc  bc                                          ; $54df: $03
	ld   bc, $301f                                   ; $54e0: $01 $1f $30
	adc  c                                           ; $54e3: $89
	nop                                              ; $54e4: $00
	dec  c                                           ; $54e5: $0d
	ld   sp, $0103                                   ; $54e6: $31 $03 $01
	rlca                                             ; $54e9: $07
	ld   bc, $00e5                                   ; $54ea: $01 $e5 $00
	rst  $20                                         ; $54ed: $e7
	rrca                                             ; $54ee: $0f
	ld   bc, $0103                                   ; $54ef: $01 $03 $01
	rlca                                             ; $54f2: $07
	db   $ec                                         ; $54f3: $ec
	add  d                                           ; $54f4: $82
	nop                                              ; $54f5: $00
	ld   [bc], a                                     ; $54f6: $02
	db   $ed                                         ; $54f7: $ed
	inc  bc                                          ; $54f8: $03
	ld   a, $89                                      ; $54f9: $3e $89
	nop                                              ; $54fb: $00
	dec  c                                           ; $54fc: $0d
	ld   sp, $7f0e                                   ; $54fd: $31 $0e $7f
	ld   bc, $a203                                   ; $5500: $01 $03 $a2
	nop                                              ; $5503: $00
	and  h                                           ; $5504: $a4
	ld   bc, $0103                                   ; $5505: $01 $03 $01
	rrca                                             ; $5508: $0f
	ld   bc, $82a9                                   ; $5509: $01 $a9 $82
	nop                                              ; $550c: $00
	ld   [bc], a                                     ; $550d: $02
	xor  d                                           ; $550e: $aa
	ld   [hl], h                                     ; $550f: $74
	ld   a, $89                                      ; $5510: $3e $89
	nop                                              ; $5512: $00
	dec  c                                           ; $5513: $0d
	ld   c, $45                                      ; $5514: $0e $45
	rlca                                             ; $5516: $07
	ld   bc, $be03                                   ; $5517: $01 $03 $be
	nop                                              ; $551a: $00
	and  b                                           ; $551b: $a0
	ld   bc, $0103                                   ; $551c: $01 $03 $01
	rlca                                             ; $551f: $07
	ld   bc, $82a5                                   ; $5520: $01 $a5 $82
	nop                                              ; $5523: $00
	ld   [bc], a                                     ; $5524: $02
	and  [hl]                                        ; $5525: $a6
	ld   c, d                                        ; $5526: $4a
	inc  e                                           ; $5527: $1c
	adc  c                                           ; $5528: $89
	nop                                              ; $5529: $00
	ld   [bc], a                                     ; $552a: $02
	ld   d, a                                        ; $552b: $57
	rrca                                             ; $552c: $0f
	ld   bc, $0083                                   ; $552d: $01 $83 $00
	nop                                              ; $5530: $00
	ld   bc, $0280                                   ; $5531: $01 $80 $02
	nop                                              ; $5534: $00
	ld   bc, $0084                                   ; $5535: $01 $84 $00
	ld   [bc], a                                     ; $5538: $02
	ld   [bc], a                                     ; $5539: $02
	rlca                                             ; $553a: $07
	ld   e, h                                        ; $553b: $5c
	adc  c                                           ; $553c: $89
	nop                                              ; $553d: $00
	ld   a, a                                        ; $553e: $7f
	sub  c                                           ; $553f: $91
	di                                               ; $5540: $f3
	ld   bc, $f107                                   ; $5541: $01 $07 $f1
	ldh  a, [$03]                                    ; $5544: $f0 $03
	cp   $ff                                         ; $5546: $fe $ff
	rrca                                             ; $5548: $0f
	ld   bc, $0103                                   ; $5549: $01 $03 $01
	push af                                          ; $554c: $f5
	ld   bc, $959b                                   ; $554d: $01 $9b $95
	inc  bc                                          ; $5550: $03
	ld   bc, $0107                                   ; $5551: $01 $07 $01
	inc  bc                                          ; $5554: $03
	ld   bc, $010f                                   ; $5555: $01 $0f $01
	inc  bc                                          ; $5558: $03
	ld   bc, $0107                                   ; $5559: $01 $07 $01
	inc  bc                                          ; $555c: $03
	ld   bc, $a59b                                   ; $555d: $01 $9b $a5
	call $0301                                       ; $5560: $cd $01 $03
	ld   bc, $011f                                   ; $5563: $01 $1f $01
	inc  bc                                          ; $5566: $03
	ld   bc, $0107                                   ; $5567: $01 $07 $01
	inc  bc                                          ; $556a: $03
	ld   bc, $010f                                   ; $556b: $01 $0f $01
	inc  bc                                          ; $556e: $03
	db   $db                                         ; $556f: $db
	inc  bc                                          ; $5570: $03
	ld   bc, $0107                                   ; $5571: $01 $07 $01
	inc  bc                                          ; $5574: $03
	ld   bc, $010f                                   ; $5575: $01 $0f $01
	inc  bc                                          ; $5578: $03
	ld   bc, $0107                                   ; $5579: $01 $07 $01
	inc  bc                                          ; $557c: $03
	ld   bc, $cbd5                                   ; $557d: $01 $d5 $cb
	jp   z, $0107                                    ; $5580: $ca $07 $01

	inc  bc                                          ; $5583: $03
	ld   bc, $017f                                   ; $5584: $01 $7f $01
	inc  bc                                          ; $5587: $03
	ld   bc, $0107                                   ; $5588: $01 $07 $01
	inc  bc                                          ; $558b: $03
	ld   bc, $010f                                   ; $558c: $01 $0f $01
	cp   b                                           ; $558f: $b8
	inc  bc                                          ; $5590: $03
	ld   bc, $0107                                   ; $5591: $01 $07 $01
	inc  bc                                          ; $5594: $03
	ld   bc, $010f                                   ; $5595: $01 $0f $01
	inc  bc                                          ; $5598: $03
	ld   bc, $0107                                   ; $5599: $01 $07 $01
	inc  bc                                          ; $559c: $03
	ld   bc, $0cb9                                   ; $559d: $01 $b9 $0c
	ld   bc, $0107                                   ; $55a0: $01 $07 $01
	inc  bc                                          ; $55a3: $03
	ld   bc, $011f                                   ; $55a4: $01 $1f $01
	inc  bc                                          ; $55a7: $03
	ld   bc, $d807                                   ; $55a8: $01 $07 $d8
	reti                                             ; $55ab: $d9


	inc  bc                                          ; $55ac: $03
	ld   bc, $d90f                                   ; $55ad: $01 $0f $d9
	inc  bc                                          ; $55b0: $03
	ld   bc, $0107                                   ; $55b1: $01 $07 $01
	inc  bc                                          ; $55b4: $03
	ld   bc, $010f                                   ; $55b5: $01 $0f $01
	inc  bc                                          ; $55b8: $03
	ld   bc, $0107                                   ; $55b9: $01 $07 $01
	inc  bc                                          ; $55bc: $03
	ld   bc, $14c7                                   ; $55bd: $01 $c7 $14
	add  hl, sp                                      ; $55c0: $39
	and  c                                           ; $55c1: $a1
	ld   bc, $0388                                   ; $55c2: $01 $88 $03
	ld   bc, $0107                                   ; $55c5: $01 $07 $01
	adc  d                                           ; $55c8: $8a
	rrca                                             ; $55c9: $0f
	add  [hl]                                        ; $55ca: $86
	ld   bc, $bb84                                   ; $55cb: $01 $84 $bb
	ld   bc, $01bf                                   ; $55ce: $01 $bf $01
	sbc  e                                           ; $55d1: $9b
	ld   bc, $3e3b                                   ; $55d2: $01 $3b $3e
	adc  c                                           ; $55d5: $89
	nop                                              ; $55d6: $00
	inc  d                                           ; $55d7: $14
	ld   sp, $0191                                   ; $55d8: $31 $91 $01
	add  e                                           ; $55db: $83
	ld   bc, $0107                                   ; $55dc: $01 $07 $01
	inc  bc                                          ; $55df: $03
	ld   bc, $010f                                   ; $55e0: $01 $0f $01
	inc  bc                                          ; $55e3: $03
	ld   bc, $0107                                   ; $55e4: $01 $07 $01
	ld   [bc], a                                     ; $55e7: $02
	rra                                              ; $55e8: $1f
	ld   c, d                                        ; $55e9: $4a
	nop                                              ; $55ea: $00
	ld   b, h                                        ; $55eb: $44
	ld   a, $89                                      ; $55ec: $3e $89
	nop                                              ; $55ee: $00
	inc  d                                           ; $55ef: $14
	ld   sp, $0181                                   ; $55f0: $31 $81 $01
	add  b                                           ; $55f3: $80
	inc  bc                                          ; $55f4: $03
	ld   bc, $0107                                   ; $55f5: $01 $07 $01
	inc  bc                                          ; $55f8: $03
	ld   bc, $010f                                   ; $55f9: $01 $0f $01
	inc  bc                                          ; $55fc: $03
	ld   bc, $8186                                   ; $55fd: $01 $86 $81
	ld   bc, $013b                                   ; $5600: $01 $3b $01
	add  hl, sp                                      ; $5603: $39
	ld   a, $89                                      ; $5604: $3e $89
	nop                                              ; $5606: $00
	inc  d                                           ; $5607: $14
	ld   sp, $01f1                                   ; $5608: $31 $f1 $01
	inc  bc                                          ; $560b: $03
	db   $fc                                         ; $560c: $fc
	ld   bc, $017f                                   ; $560d: $01 $7f $01
	inc  bc                                          ; $5610: $03
	ld   bc, $0107                                   ; $5611: $01 $07 $01
	adc  [hl]                                        ; $5614: $8e
	adc  l                                           ; $5615: $8d
	ld   bc, $010f                                   ; $5616: $01 $0f $01
	ld   b, c                                        ; $5619: $41
	ld   bc, $3e37                                   ; $561a: $01 $37 $3e
	adc  c                                           ; $561d: $89
	nop                                              ; $561e: $00
	inc  d                                           ; $561f: $14
	ld   sp, $01a1                                   ; $5620: $31 $a1 $01
	inc  bc                                          ; $5623: $03
	ret  c                                           ; $5624: $d8

	ld   bc, $da07                                   ; $5625: $01 $07 $da
	db   $db                                         ; $5628: $db
	inc  bc                                          ; $5629: $03
	rst  $10                                         ; $562a: $d7
	inc  bc                                          ; $562b: $03
	push de                                          ; $562c: $d5
	db   $d3                                         ; $562d: $d3
	ld   bc, $0103                                   ; $562e: $01 $03 $01
	sbc  e                                           ; $5631: $9b
	ld   bc, $3e3b                                   ; $5632: $01 $3b $3e
	adc  c                                           ; $5635: $89
	nop                                              ; $5636: $00
	inc  d                                           ; $5637: $14
	ld   sp, $0191                                   ; $5638: $31 $91 $01
	inc  bc                                          ; $563b: $03
	ldh  a, [c]                                      ; $563c: $f2
	ld   bc, $0103                                   ; $563d: $01 $03 $01
	rlca                                             ; $5640: $07
	ld   bc, $0f02                                   ; $5641: $01 $02 $0f
	ld   bc, $0103                                   ; $5644: $01 $03 $01
	rlca                                             ; $5647: $07
	di                                               ; $5648: $f3
	push de                                          ; $5649: $d5
	nop                                              ; $564a: $00
	ld   b, h                                        ; $564b: $44
	ld   a, $89                                      ; $564c: $3e $89
	nop                                              ; $564e: $00
	inc  d                                           ; $564f: $14
	ld   sp, $0181                                   ; $5650: $31 $81 $01
	inc  bc                                          ; $5653: $03
	rst  $28                                         ; $5654: $ef
	inc  bc                                          ; $5655: $03
	ld   bc, $013f                  ; $5656: $01 $3f $01
	inc  bc                                          ; $5659: $03
	ld   bc, $0107                                   ; $565a: $01 $07 $01
	inc  bc                                          ; $565d: $03
	ld   bc, $d70f                                   ; $565e: $01 $0f $d7
	cp   c                                           ; $5661: $b9
	ld   bc, $3e39                                   ; $5662: $01 $39 $3e
	adc  c                                           ; $5665: $89
	nop                                              ; $5666: $00
	inc  d                                           ; $5667: $14
	ld   sp, $01f1                                   ; $5668: $31 $f1 $01
	inc  bc                                          ; $566b: $03
	xor  e                                           ; $566c: $ab
	inc  bc                                          ; $566d: $03
	ld   bc, $0107                                   ; $566e: $01 $07 $01
	inc  bc                                          ; $5671: $03
	ld   bc, $011f                                   ; $5672: $01 $1f $01
	inc  bc                                          ; $5675: $03
	ld   bc, $bb07                                   ; $5676: $01 $07 $bb
	rst  ToBoot                                         ; $5679: $c7
	ld   bc, $3e37                                   ; $567a: $01 $37 $3e
	ret                                              ; $567d: $c9


	nop                                              ; $567e: $00
	ld   c, h                                        ; $567f: $4c
	nop                                              ; $5680: $00
	rlca                                             ; $5681: $07
	add  l                                           ; $5682: $85
	inc  bc                                          ; $5683: $03
	rlca                                             ; $5684: $07
	nop                                              ; $5685: $00
	ld   sp, $0602                                   ; $5686: $31 $02 $06
	dec  [hl]                                        ; $5689: $35
	add  b                                           ; $568a: $80
	nop                                              ; $568b: $00
	dec  bc                                          ; $568c: $0b
	add  hl, sp                                      ; $568d: $39
	ld   [bc], a                                     ; $568e: $02
	ld   b, $02                                      ; $568f: $06 $02
	ld   a, [hl]                                     ; $5691: $7e
	ld   [bc], a                                     ; $5692: $02
	inc  c                                           ; $5693: $0c
	ld   c, a                                        ; $5694: $4f
	nop                                              ; $5695: $00
	rlca                                             ; $5696: $07
	inc  bc                                          ; $5697: $03
	dec  b                                           ; $5698: $05
	adc  b                                           ; $5699: $88
	nop                                              ; $569a: $00
	rlca                                             ; $569b: $07
	dec  b                                           ; $569c: $05
	inc  bc                                          ; $569d: $03
	rlca                                             ; $569e: $07
	nop                                              ; $569f: $00
	jr   nc, jr_01d_56a4                             ; $56a0: $30 $02

	ld   b, $34                                      ; $56a2: $06 $34

jr_01d_56a4:
	add  b                                           ; $56a4: $80
	nop                                              ; $56a5: $00
	dec  bc                                          ; $56a6: $0b
	jr   c, jr_01d_56ab                              ; $56a7: $38 $02

	ld   b, $02                                      ; $56a9: $06 $02

jr_01d_56ab:
	ld   a, [hl]                                     ; $56ab: $7e
	ld   [bc], a                                     ; $56ac: $02
	inc  c                                           ; $56ad: $0c
	ld   c, [hl]                                     ; $56ae: $4e
	nop                                              ; $56af: $00
	rlca                                             ; $56b0: $07
	inc  bc                                          ; $56b1: $03
	dec  b                                           ; $56b2: $05
	adc  b                                           ; $56b3: $88
	nop                                              ; $56b4: $00
	ld   bc, $0103                                   ; $56b5: $01 $03 $01
	sub  b                                           ; $56b8: $90
	nop                                              ; $56b9: $00
	ld   bc, $0301                                   ; $56ba: $01 $01 $03
	adc  b                                           ; $56bd: $88
	nop                                              ; $56be: $00
	dec  d                                           ; $56bf: $15
	inc  b                                           ; $56c0: $04
	dec  b                                           ; $56c1: $05
	add  c                                           ; $56c2: $81
	ld   [bc], a                                     ; $56c3: $02
	ld   b, $02                                      ; $56c4: $06 $02
	ld   c, $02                                      ; $56c6: $0e $02
	ld   b, $02                                      ; $56c8: $06 $02
	ld   e, $02                                      ; $56ca: $1e $02
	ld   b, $02                                      ; $56cc: $06 $02
	ld   c, $02                                      ; $56ce: $0e $02
	ld   b, $02                                      ; $56d0: $06 $02
	ld   a, $a1                                      ; $56d2: $3e $a1
	dec  b                                           ; $56d4: $05
	inc  b                                           ; $56d5: $04
	adc  b                                           ; $56d6: $88
	nop                                              ; $56d7: $00
	dec  d                                           ; $56d8: $15
	inc  b                                           ; $56d9: $04
	dec  b                                           ; $56da: $05
	add  b                                           ; $56db: $80
	ld   [bc], a                                     ; $56dc: $02
	ld   b, $02                                      ; $56dd: $06 $02
	ld   c, $02                                      ; $56df: $0e $02
	ld   b, $02                                      ; $56e1: $06 $02
	ld   e, $02                                      ; $56e3: $1e $02
	ld   b, $02                                      ; $56e5: $06 $02
	ld   c, $02                                      ; $56e7: $0e $02
	ld   b, $02                                      ; $56e9: $06 $02
	ld   a, $a0                                      ; $56eb: $3e $a0
	dec  b                                           ; $56ed: $05
	inc  b                                           ; $56ee: $04
	adc  b                                           ; $56ef: $88
	nop                                              ; $56f0: $00
	dec  d                                           ; $56f1: $15
	inc  b                                           ; $56f2: $04
	dec  b                                           ; $56f3: $05
	and  e                                           ; $56f4: $a3
	ld   b, $02                                      ; $56f5: $06 $02
	ld   c, $02                                      ; $56f7: $0e $02
	ld   b, $02                                      ; $56f9: $06 $02
	ld   e, $02                                      ; $56fb: $1e $02
	ld   b, $02                                      ; $56fd: $06 $02
	ld   c, $02                                      ; $56ff: $0e $02
	ld   b, $02                                      ; $5701: $06 $02
	ld   a, [hl]                                     ; $5703: $7e
	ld   [bc], a                                     ; $5704: $02
	jp   $0405                                       ; $5705: $c3 $05 $04


	adc  b                                           ; $5708: $88
	nop                                              ; $5709: $00
	dec  d                                           ; $570a: $15
	inc  b                                           ; $570b: $04
	dec  b                                           ; $570c: $05
	and  d                                           ; $570d: $a2
	ld   b, $02                                      ; $570e: $06 $02
	ld   c, $02                                      ; $5710: $0e $02
	ld   b, $02                                      ; $5712: $06 $02
	ld   e, $02                                      ; $5714: $1e $02
	ld   b, $02                                      ; $5716: $06 $02
	ld   c, $02                                      ; $5718: $0e $02
	ld   b, $02                                      ; $571a: $06 $02
	ld   a, [hl]                                     ; $571c: $7e
	ld   [bc], a                                     ; $571d: $02
	jp   nz, $0405                                   ; $571e: $c2 $05 $04

	adc  b                                           ; $5721: $88
	nop                                              ; $5722: $00
	dec  d                                           ; $5723: $15
	inc  b                                           ; $5724: $04
	dec  b                                           ; $5725: $05
	push bc                                          ; $5726: $c5
	ld   [bc], a                                     ; $5727: $02
	ld   c, $02                                      ; $5728: $0e $02
	ld   b, $02                                      ; $572a: $06 $02
	ld   e, $02                                      ; $572c: $1e $02
	ld   b, $02                                      ; $572e: $06 $02
	ld   c, $02                                      ; $5730: $0e $02
	ld   b, $02                                      ; $5732: $06 $02
	ld   a, $02                                      ; $5734: $3e $02
	ld   b, $e5                                      ; $5736: $06 $e5
	dec  b                                           ; $5738: $05
	inc  b                                           ; $5739: $04
	adc  b                                           ; $573a: $88
	nop                                              ; $573b: $00
	dec  d                                           ; $573c: $15
	inc  b                                           ; $573d: $04
	dec  b                                           ; $573e: $05
	call nz, $0e02                                   ; $573f: $c4 $02 $0e
	ld   [bc], a                                     ; $5742: $02
	ld   b, $02                                      ; $5743: $06 $02
	ld   e, $02                                      ; $5745: $1e $02
	ld   b, $02                                      ; $5747: $06 $02
	ld   c, $02                                      ; $5749: $0e $02
	ld   b, $02                                      ; $574b: $06 $02
	ld   a, $02                                      ; $574d: $3e $02
	ld   b, $e4                                      ; $574f: $06 $e4
	dec  b                                           ; $5751: $05
	inc  b                                           ; $5752: $04
	adc  b                                           ; $5753: $88
	nop                                              ; $5754: $00
	dec  d                                           ; $5755: $15
	inc  b                                           ; $5756: $04
	dec  b                                           ; $5757: $05
	rst  $20                                         ; $5758: $e7
	ld   c, $02                                      ; $5759: $0e $02
	ld   b, $02                                      ; $575b: $06 $02
	ld   e, $02                                      ; $575d: $1e $02
	ld   b, $02                                      ; $575f: $06 $02
	ld   c, $02                                      ; $5761: $0e $02
	ld   b, $02                                      ; $5763: $06 $02
	ld   a, [hl]                                     ; $5765: $7e
	ld   [bc], a                                     ; $5766: $02
	ld   b, $02                                      ; $5767: $06 $02
	add  a                                           ; $5769: $87
	dec  b                                           ; $576a: $05
	inc  b                                           ; $576b: $04
	adc  b                                           ; $576c: $88
	nop                                              ; $576d: $00
	dec  d                                           ; $576e: $15
	inc  b                                           ; $576f: $04
	dec  b                                           ; $5770: $05
	and  $0e                                         ; $5771: $e6 $0e
	ld   [bc], a                                     ; $5773: $02
	ld   b, $02                                      ; $5774: $06 $02
	ld   e, $02                                      ; $5776: $1e $02
	ld   b, $02                                      ; $5778: $06 $02
	ld   c, $02                                      ; $577a: $0e $02
	ld   b, $02                                      ; $577c: $06 $02
	ld   a, [hl]                                     ; $577e: $7e
	ld   [bc], a                                     ; $577f: $02
	ld   b, $02                                      ; $5780: $06 $02
	add  [hl]                                        ; $5782: $86
	dec  b                                           ; $5783: $05
	inc  b                                           ; $5784: $04
	adc  b                                           ; $5785: $88
	nop                                              ; $5786: $00
	dec  d                                           ; $5787: $15
	inc  b                                           ; $5788: $04
	dec  b                                           ; $5789: $05
	adc  c                                           ; $578a: $89
	ld   [bc], a                                     ; $578b: $02
	ld   b, $02                                      ; $578c: $06 $02
	ld   e, $02                                      ; $578e: $1e $02
	ld   b, $02                                      ; $5790: $06 $02
	ld   c, $02                                      ; $5792: $0e $02
	ld   b, $02                                      ; $5794: $06 $02
	ld   a, $02                                      ; $5796: $3e $02
	ld   b, $02                                      ; $5798: $06 $02
	ld   c, $a9                                      ; $579a: $0e $a9
	dec  b                                           ; $579c: $05
	inc  b                                           ; $579d: $04
	adc  b                                           ; $579e: $88
	nop                                              ; $579f: $00
	dec  d                                           ; $57a0: $15
	inc  b                                           ; $57a1: $04
	dec  b                                           ; $57a2: $05
	adc  b                                           ; $57a3: $88
	ld   [bc], a                                     ; $57a4: $02
	ld   b, $02                                      ; $57a5: $06 $02
	ld   e, $02                                      ; $57a7: $1e $02
	ld   b, $02                                      ; $57a9: $06 $02
	ld   c, $02                                      ; $57ab: $0e $02
	ld   b, $02                                      ; $57ad: $06 $02
	ld   a, $02                                      ; $57af: $3e $02
	ld   b, $02                                      ; $57b1: $06 $02
	ld   c, $a8                                      ; $57b3: $0e $a8
	dec  b                                           ; $57b5: $05
	inc  b                                           ; $57b6: $04
	adc  b                                           ; $57b7: $88
	nop                                              ; $57b8: $00
	dec  d                                           ; $57b9: $15
	inc  b                                           ; $57ba: $04
	dec  b                                           ; $57bb: $05
	xor  e                                           ; $57bc: $ab
	ld   b, $02                                      ; $57bd: $06 $02
	ld   e, $02                                      ; $57bf: $1e $02
	ld   b, $02                                      ; $57c1: $06 $02
	ld   c, $02                                      ; $57c3: $0e $02
	ld   b, $02                                      ; $57c5: $06 $02
	ld   a, [hl]                                     ; $57c7: $7e
	ld   [bc], a                                     ; $57c8: $02
	ld   b, $02                                      ; $57c9: $06 $02
	ld   c, $02                                      ; $57cb: $0e $02
	rlc  l                                           ; $57cd: $cb $05
	inc  b                                           ; $57cf: $04
	adc  b                                           ; $57d0: $88
	nop                                              ; $57d1: $00
	dec  d                                           ; $57d2: $15
	inc  b                                           ; $57d3: $04
	dec  b                                           ; $57d4: $05
	xor  d                                           ; $57d5: $aa
	ld   b, $02                                      ; $57d6: $06 $02
	ld   e, $02                                      ; $57d8: $1e $02
	ld   b, $02                                      ; $57da: $06 $02
	ld   c, $02                                      ; $57dc: $0e $02
	ld   b, $02                                      ; $57de: $06 $02
	ld   a, [hl]                                     ; $57e0: $7e
	ld   [bc], a                                     ; $57e1: $02
	ld   b, $02                                      ; $57e2: $06 $02
	ld   c, $02                                      ; $57e4: $0e $02
	jp   z, $0405                                    ; $57e6: $ca $05 $04

	adc  b                                           ; $57e9: $88
	nop                                              ; $57ea: $00
	inc  c                                           ; $57eb: $0c
	inc  b                                           ; $57ec: $04
	dec  b                                           ; $57ed: $05
	add  hl, bc                                      ; $57ee: $09
	ld   [bc], a                                     ; $57ef: $02
	dec  bc                                          ; $57f0: $0b
	nop                                              ; $57f1: $00
	ld   de, $1302                                   ; $57f2: $11 $02 $13
	nop                                              ; $57f5: $00
	dec  d                                           ; $57f6: $15
	ld   [bc], a                                     ; $57f7: $02
	rla                                              ; $57f8: $17
	add  d                                           ; $57f9: $82
	nop                                              ; $57fa: $00
	inc  b                                           ; $57fb: $04
	add  hl, de                                      ; $57fc: $19
	ld   [bc], a                                     ; $57fd: $02
	dec  de                                          ; $57fe: $1b
	dec  b                                           ; $57ff: $05
	inc  b                                           ; $5800: $04
	adc  b                                           ; $5801: $88
	nop                                              ; $5802: $00
	inc  c                                           ; $5803: $0c
	inc  b                                           ; $5804: $04
	dec  b                                           ; $5805: $05
	ld   [$0a02], sp                                 ; $5806: $08 $02 $0a
	nop                                              ; $5809: $00
	db   $10                                         ; $580a: $10
	ld   [bc], a                                     ; $580b: $02
	ld   [de], a                                     ; $580c: $12
	nop                                              ; $580d: $00
	inc  d                                           ; $580e: $14
	ld   [bc], a                                     ; $580f: $02
	ld   d, $82                                      ; $5810: $16 $82
	nop                                              ; $5812: $00
	inc  b                                           ; $5813: $04
	jr   jr_01d_5818                                 ; $5814: $18 $02

	ld   a, [de]                                     ; $5816: $1a
	dec  b                                           ; $5817: $05

jr_01d_5818:
	inc  b                                           ; $5818: $04
	adc  b                                           ; $5819: $88
	nop                                              ; $581a: $00
	ld   bc, $0103                                   ; $581b: $01 $03 $01
	sub  b                                           ; $581e: $90
	nop                                              ; $581f: $00
	ld   bc, $0301                                   ; $5820: $01 $01 $03
	adc  b                                           ; $5823: $88
	nop                                              ; $5824: $00
	db   $10                                         ; $5825: $10
	inc  c                                           ; $5826: $0c
	ld   [bc], a                                     ; $5827: $02
	rrca                                             ; $5828: $0f
	nop                                              ; $5829: $00
	ld   de, $1302                                   ; $582a: $11 $02 $13
	nop                                              ; $582d: $00
	add  hl, bc                                      ; $582e: $09
	ld   [bc], a                                     ; $582f: $02
	dec  bc                                          ; $5830: $0b
	nop                                              ; $5831: $00
	dec  c                                           ; $5832: $0d
	ld   [bc], a                                     ; $5833: $02
	rrca                                             ; $5834: $0f
	nop                                              ; $5835: $00
	ld   bc, $008d                                   ; $5836: $01 $8d $00
	db   $10                                         ; $5839: $10
	dec  c                                           ; $583a: $0d
	ld   [bc], a                                     ; $583b: $02
	ld   c, $00                                      ; $583c: $0e $00
	db   $10                                         ; $583e: $10
	ld   [bc], a                                     ; $583f: $02
	ld   [de], a                                     ; $5840: $12
	nop                                              ; $5841: $00
	ld   [$0a02], sp                                 ; $5842: $08 $02 $0a
	nop                                              ; $5845: $00
	inc  c                                           ; $5846: $0c
	ld   [bc], a                                     ; $5847: $02
	ld   c, $00                                      ; $5848: $0e $00
	ld   bc, $008d                                   ; $584a: $01 $8d $00
	ld   [$0208], sp                                 ; $584d: $08 $08 $02
	dec  bc                                          ; $5850: $0b
	nop                                              ; $5851: $00
	ld   de, $1302                                   ; $5852: $11 $02 $13
	nop                                              ; $5855: $00
	ld   bc, $0095                                   ; $5856: $01 $95 $00
	ld   [$0209], sp                                 ; $5859: $08 $09 $02
	ld   a, [bc]                                     ; $585c: $0a
	nop                                              ; $585d: $00
	db   $10                                         ; $585e: $10
	ld   [bc], a                                     ; $585f: $02
	ld   [de], a                                     ; $5860: $12
	nop                                              ; $5861: $00
	ld   bc, $0095                                   ; $5862: $01 $95 $00
	ld   de, $0001                                   ; $5865: $11 $01 $00
	ld   sp, $0602                                   ; $5868: $31 $02 $06
	dec  [hl]                                        ; $586b: $35
	nop                                              ; $586c: $00
	add  hl, sp                                      ; $586d: $39
	ld   [bc], a                                     ; $586e: $02
	ld   b, $02                                      ; $586f: $06 $02
	ld   a, [hl]                                     ; $5871: $7e
	ld   [bc], a                                     ; $5872: $02
	ld   b, $0a                                      ; $5873: $06 $0a
	ld   c, a                                        ; $5875: $4f
	nop                                              ; $5876: $00
	ld   bc, $008c                                   ; $5877: $01 $8c $00
	ld   de, $0001                                   ; $587a: $11 $01 $00
	jr   nc, jr_01d_5881                             ; $587d: $30 $02

	ld   b, $34                                      ; $587f: $06 $34

jr_01d_5881:
	nop                                              ; $5881: $00
	jr   c, jr_01d_5886                              ; $5882: $38 $02

	ld   b, $02                                      ; $5884: $06 $02

jr_01d_5886:
	ld   a, [hl]                                     ; $5886: $7e
	ld   [bc], a                                     ; $5887: $02
	ld   b, $0a                                      ; $5888: $06 $0a
	ld   c, [hl]                                     ; $588a: $4e
	nop                                              ; $588b: $00
	ld   bc, $008c                                   ; $588c: $01 $8c $00
	ld   de, $3101                                   ; $588f: $11 $01 $31
	ld   [bc], a                                     ; $5892: $02
	ld   b, $35                                      ; $5893: $06 $35
	nop                                              ; $5895: $00
	add  hl, sp                                      ; $5896: $39
	ld   [bc], a                                     ; $5897: $02
	ld   b, $02                                      ; $5898: $06 $02
	ld   a, [hl]                                     ; $589a: $7e
	ld   [bc], a                                     ; $589b: $02
	ld   b, $02                                      ; $589c: $06 $02
	ld   [$004f], sp                                 ; $589e: $08 $4f $00
	ld   bc, $008c                                   ; $58a1: $01 $8c $00
	ld   de, $3001                                   ; $58a4: $11 $01 $30
	ld   [bc], a                                     ; $58a7: $02
	ld   b, $34                                      ; $58a8: $06 $34
	nop                                              ; $58aa: $00
	jr   c, jr_01d_58af                              ; $58ab: $38 $02

	ld   b, $02                                      ; $58ad: $06 $02

jr_01d_58af:
	ld   a, [hl]                                     ; $58af: $7e
	ld   [bc], a                                     ; $58b0: $02
	ld   b, $02                                      ; $58b1: $06 $02
	ld   [$004e], sp                                 ; $58b3: $08 $4e $00
	ld   bc, $008c                                   ; $58b6: $01 $8c $00
	ld   de, $3101                                   ; $58b9: $11 $01 $31
	ld   [bc], a                                     ; $58bc: $02
	ld   b, $35                                      ; $58bd: $06 $35
	nop                                              ; $58bf: $00
	add  hl, sp                                      ; $58c0: $39
	ld   [bc], a                                     ; $58c1: $02
	ld   b, $02                                      ; $58c2: $06 $02
	ld   a, [hl]                                     ; $58c4: $7e
	ld   [bc], a                                     ; $58c5: $02
	ld   b, $02                                      ; $58c6: $06 $02
	ld   c, $06                                      ; $58c8: $0e $06
	ld   c, a                                        ; $58ca: $4f
	ld   bc, $008c                                   ; $58cb: $01 $8c $00
	ld   de, $3001                                   ; $58ce: $11 $01 $30
	ld   [bc], a                                     ; $58d1: $02
	ld   b, $34                                      ; $58d2: $06 $34
	nop                                              ; $58d4: $00
	jr   c, jr_01d_58d9                              ; $58d5: $38 $02

	ld   b, $02                                      ; $58d7: $06 $02

jr_01d_58d9:
	ld   a, [hl]                                     ; $58d9: $7e
	ld   [bc], a                                     ; $58da: $02
	ld   b, $02                                      ; $58db: $06 $02
	ld   c, $06                                      ; $58dd: $0e $06
	ld   c, [hl]                                     ; $58df: $4e
	ld   bc, $008c                                   ; $58e0: $01 $8c $00
	ld   de, $3101                                   ; $58e3: $11 $01 $31
	ld   [bc], a                                     ; $58e6: $02
	ld   b, $35                                      ; $58e7: $06 $35
	add  hl, sp                                      ; $58e9: $39
	ld   [bc], a                                     ; $58ea: $02
	ld   b, $02                                      ; $58eb: $06 $02
	ld   a, [hl]                                     ; $58ed: $7e
	ld   [bc], a                                     ; $58ee: $02
	ld   b, $02                                      ; $58ef: $06 $02
	ld   c, $02                                      ; $58f1: $0e $02
	inc  b                                           ; $58f3: $04
	ld   c, a                                        ; $58f4: $4f
	ld   bc, $008c                                   ; $58f5: $01 $8c $00
	ld   de, $3001                                   ; $58f8: $11 $01 $30
	ld   [bc], a                                     ; $58fb: $02
	ld   b, $34                                      ; $58fc: $06 $34
	jr   c, jr_01d_5902                              ; $58fe: $38 $02

	ld   b, $02                                      ; $5900: $06 $02

jr_01d_5902:
	ld   a, [hl]                                     ; $5902: $7e
	ld   [bc], a                                     ; $5903: $02
	ld   b, $02                                      ; $5904: $06 $02
	ld   c, $02                                      ; $5906: $0e $02
	inc  b                                           ; $5908: $04
	ld   c, [hl]                                     ; $5909: $4e
	ld   bc, $008c                                   ; $590a: $01 $8c $00
	ld   de, $3101                                   ; $590d: $11 $01 $31
	ld   [bc], a                                     ; $5910: $02
	ld   b, $35                                      ; $5911: $06 $35
	add  hl, sp                                      ; $5913: $39
	ld   [bc], a                                     ; $5914: $02
	ld   b, $02                                      ; $5915: $06 $02
	ld   a, [hl]                                     ; $5917: $7e
	ld   [bc], a                                     ; $5918: $02
	ld   b, $02                                      ; $5919: $06 $02
	ld   c, $02                                      ; $591b: $0e $02
	ld   b, $02                                      ; $591d: $06 $02
	ld   c, [hl]                                     ; $591f: $4e
	adc  h                                           ; $5920: $8c
	nop                                              ; $5921: $00
	ld   de, $3001                                   ; $5922: $11 $01 $30
	ld   [bc], a                                     ; $5925: $02
	ld   b, $34                                      ; $5926: $06 $34
	jr   c, jr_01d_592c                              ; $5928: $38 $02

	ld   b, $02                                      ; $592a: $06 $02

jr_01d_592c:
	ld   a, [hl]                                     ; $592c: $7e
	ld   [bc], a                                     ; $592d: $02
	ld   b, $02                                      ; $592e: $06 $02
	ld   c, $02                                      ; $5930: $0e $02
	ld   b, $02                                      ; $5932: $06 $02
	ld   c, a                                        ; $5934: $4f
	adc  h                                           ; $5935: $8c
	nop                                              ; $5936: $00
	or   b                                           ; $5937: $b0
	nop                                              ; $5938: $00
	nop                                              ; $5939: $00
	add  b                                           ; $593a: $80
	adc  b                                           ; $593b: $88
	nop                                              ; $593c: $00
	dec  b                                           ; $593d: $05
	ld   bc, $0103                                   ; $593e: $01 $03 $01
	rlca                                             ; $5941: $07
	ld   bc, $8103                                   ; $5942: $01 $03 $81
	nop                                              ; $5945: $00
	nop                                              ; $5946: $00
	ld   a, c                                        ; $5947: $79
	adc  c                                           ; $5948: $89
	nop                                              ; $5949: $00
	nop                                              ; $594a: $00
	ld   a, a                                        ; $594b: $7f
	add  a                                           ; $594c: $87
	nop                                              ; $594d: $00
	ld   a, [bc]                                     ; $594e: $0a
	rlca                                             ; $594f: $07
	rrca                                             ; $5950: $0f
	ld   bc, $0103                                   ; $5951: $01 $03 $01
	rlca                                             ; $5954: $07
	ld   bc, $0300                                   ; $5955: $01 $00 $03
	ld   [$8979], sp                                 ; $5958: $08 $79 $89
	nop                                              ; $595b: $00
	nop                                              ; $595c: $00
	ld   a, a                                        ; $595d: $7f
	add  d                                           ; $595e: $82
	nop                                              ; $595f: $00
	rrca                                             ; $5960: $0f
	rrca                                             ; $5961: $0f
	rra                                              ; $5962: $1f
	ld   bc, $0103                                   ; $5963: $01 $03 $01
	rlca                                             ; $5966: $07
	ld   bc, $1516                                   ; $5967: $01 $16 $15
	ld   bc, $010f                                   ; $596a: $01 $0f $01
	inc  bc                                          ; $596d: $03
	ld   bc, $791d                                   ; $596e: $01 $1d $79
	adc  c                                           ; $5971: $89
	nop                                              ; $5972: $00
	nop                                              ; $5973: $00
	ld   a, a                                        ; $5974: $7f
	add  c                                           ; $5975: $81
	nop                                              ; $5976: $00
	db   $10                                         ; $5977: $10
	inc  e                                           ; $5978: $1c
	ld   bc, $001b                                   ; $5979: $01 $1b $00
	jr   jr_01d_597f                                 ; $597c: $18 $01

	ccf                                              ; $597e: $3f

jr_01d_597f:
	ld   bc, $0103                                   ; $597f: $01 $03 $01
	rlca                                             ; $5982: $07
	ld   bc, $0103                                   ; $5983: $01 $03 $01
	ld   hl, $7900                                   ; $5986: $21 $00 $79
	adc  c                                           ; $5989: $89
	nop                                              ; $598a: $00
	nop                                              ; $598b: $00
	ld   a, a                                        ; $598c: $7f
	add  c                                           ; $598d: $81
	nop                                              ; $598e: $00
	db   $10                                         ; $598f: $10
	jr   z, jr_01d_59c0                              ; $5990: $28 $2e

	nop                                              ; $5992: $00
	cpl                                              ; $5993: $2f
	nop                                              ; $5994: $00
	cpl                                              ; $5995: $2f
	nop                                              ; $5996: $00
	inc  l                                           ; $5997: $2c
	ld   bc, $0107                                   ; $5998: $01 $07 $01
	inc  bc                                          ; $599b: $03
	ld   bc, $361f                                   ; $599c: $01 $1f $36
	scf                                              ; $599f: $37
	ld   c, [hl]                                     ; $59a0: $4e
	adc  c                                           ; $59a1: $89
	nop                                              ; $59a2: $00
	nop                                              ; $59a3: $00
	ld   a, a                                        ; $59a4: $7f
	add  c                                           ; $59a5: $81
	nop                                              ; $59a6: $00
	db   $10                                         ; $59a7: $10
	ld   [hl-], a                                    ; $59a8: $32
	inc  [hl]                                        ; $59a9: $34
	nop                                              ; $59aa: $00
	dec  [hl]                                        ; $59ab: $35
	nop                                              ; $59ac: $00
	dec  [hl]                                        ; $59ad: $35
	nop                                              ; $59ae: $00
	ld   [hl-], a                                    ; $59af: $32
	ld   bc, $3003                                   ; $59b0: $01 $03 $30
	ld   sp, $010f                                   ; $59b3: $31 $0f $01
	inc  bc                                          ; $59b6: $03
	ld   bc, $8944                                   ; $59b7: $01 $44 $89
	nop                                              ; $59ba: $00
	nop                                              ; $59bb: $00
	ld   a, a                                        ; $59bc: $7f
	add  c                                           ; $59bd: $81
	nop                                              ; $59be: $00
	db   $10                                         ; $59bf: $10

jr_01d_59c0:
	inc  a                                           ; $59c0: $3c
	ld   a, [hl-]                                    ; $59c1: $3a
	nop                                              ; $59c2: $00
	dec  sp                                          ; $59c3: $3b
	inc  bc                                          ; $59c4: $03
	ld   bc, $7f00                                   ; $59c5: $01 $00 $7f
	ld   bc, $0103                                   ; $59c8: $01 $03 $01
	rlca                                             ; $59cb: $07
	ld   bc, $0103                                   ; $59cc: $01 $03 $01
	add  hl, bc                                      ; $59cf: $09
	ld   sp, $0089                                   ; $59d0: $31 $89 $00
	nop                                              ; $59d3: $00
	ld   a, a                                        ; $59d4: $7f
	add  c                                           ; $59d5: $81
	nop                                              ; $59d6: $00
	ld   b, $48                                      ; $59d7: $06 $48
	ld   c, [hl]                                     ; $59d9: $4e
	nop                                              ; $59da: $00
	ld   c, a                                        ; $59db: $4f
	inc  bc                                          ; $59dc: $03
	ld   bc, $8007                                   ; $59dd: $01 $07 $80
	nop                                              ; $59e0: $00
	ld   [bc], a                                     ; $59e1: $02
	rlca                                             ; $59e2: $07
	ld   b, $03                                      ; $59e3: $06 $03
	add  d                                           ; $59e5: $82
	nop                                              ; $59e6: $00
	nop                                              ; $59e7: $00
	ld   sp, $0089                                   ; $59e8: $31 $89 $00
	nop                                              ; $59eb: $00
	ld   a, a                                        ; $59ec: $7f
	add  c                                           ; $59ed: $81
	nop                                              ; $59ee: $00
	ld   b, $4f                                      ; $59ef: $06 $4f
	rra                                              ; $59f1: $1f
	ld   d, [hl]                                     ; $59f2: $56
	ld   d, a                                        ; $59f3: $57
	inc  bc                                          ; $59f4: $03
	ld   bc, $8055                                   ; $59f5: $01 $55 $80
	nop                                              ; $59f8: $00
	ld   [bc], a                                     ; $59f9: $02
	ld   e, a                                        ; $59fa: $5f
	inc  d                                           ; $59fb: $14
	inc  bc                                          ; $59fc: $03
	add  d                                           ; $59fd: $82
	nop                                              ; $59fe: $00
	nop                                              ; $59ff: $00
	ld   sp, $0089                                   ; $5a00: $31 $89 $00
	nop                                              ; $5a03: $00
	dec  hl                                          ; $5a04: $2b
	add  d                                           ; $5a05: $82
	nop                                              ; $5a06: $00
	dec  b                                           ; $5a07: $05
	ld   bc, $0103                                   ; $5a08: $01 $03 $01
	rrca                                             ; $5a0b: $0f
	ld   bc, $805f                                   ; $5a0c: $01 $5f $80
	nop                                              ; $5a0f: $00
	ld   [bc], a                                     ; $5a10: $02
	ld   e, a                                        ; $5a11: $5f
	inc  d                                           ; $5a12: $14
	inc  bc                                          ; $5a13: $03
	add  d                                           ; $5a14: $82
	nop                                              ; $5a15: $00
	nop                                              ; $5a16: $00
	ld   sp, $0089                                   ; $5a17: $31 $89 $00
	nop                                              ; $5a1a: $00
	dec  h                                           ; $5a1b: $25
	add  l                                           ; $5a1c: $85
	nop                                              ; $5a1d: $00
	ld   [bc], a                                     ; $5a1e: $02
	ld   bc, $0107                                   ; $5a1f: $01 $07 $01
	add  b                                           ; $5a22: $80
	nop                                              ; $5a23: $00
	ld   [bc], a                                     ; $5a24: $02
	ld   bc, $0311                                   ; $5a25: $01 $11 $03
	add  d                                           ; $5a28: $82
	nop                                              ; $5a29: $00
	nop                                              ; $5a2a: $00
	ld   sp, $0089                                   ; $5a2b: $31 $89 $00
	nop                                              ; $5a2e: $00
	ld   hl, $0085                                   ; $5a2f: $21 $85 $00
	ld   [bc], a                                     ; $5a32: $02
	ld   bc, $013f                  ; $5a33: $01 $3f $01
	add  b                                           ; $5a36: $80
	inc  bc                                          ; $5a37: $03
	ld   [bc], a                                     ; $5a38: $02
	ld   bc, $032d                                   ; $5a39: $01 $2d $03
	add  d                                           ; $5a3c: $82
	nop                                              ; $5a3d: $00
	nop                                              ; $5a3e: $00
	ld   sp, $0089                                   ; $5a3f: $31 $89 $00
	nop                                              ; $5a42: $00
	inc  e                                           ; $5a43: $1c
	add  l                                           ; $5a44: $85
	nop                                              ; $5a45: $00
	rlca                                             ; $5a46: $07
	rlca                                             ; $5a47: $07
	ld   bc, $0103                                   ; $5a48: $01 $03 $01
	rrca                                             ; $5a4b: $0f
	ld   bc, $2403                                   ; $5a4c: $01 $03 $24
	add  d                                           ; $5a4f: $82
	nop                                              ; $5a50: $00
	nop                                              ; $5a51: $00
	ld   sp, $0089                                   ; $5a52: $31 $89 $00
	nop                                              ; $5a55: $00
	inc  d                                           ; $5a56: $14
	sub  c                                           ; $5a57: $91
	nop                                              ; $5a58: $00
	nop                                              ; $5a59: $00
	inc  d                                           ; $5a5a: $14
	adc  c                                           ; $5a5b: $89
	nop                                              ; $5a5c: $00
	nop                                              ; $5a5d: $00
	ld   a, c                                        ; $5a5e: $79
	add  c                                           ; $5a5f: $81
	nop                                              ; $5a60: $00
	inc  c                                           ; $5a61: $0c
	or   [hl]                                        ; $5a62: $b6
	ld   bc, $0103                                   ; $5a63: $01 $03 $01
	rlca                                             ; $5a66: $07
	ld   bc, $6d03                                   ; $5a67: $01 $03 $6d
	ld   h, e                                        ; $5a6a: $63
	ld   bc, $6803                                   ; $5a6b: $01 $03 $68
	call nc, $0081                                   ; $5a6e: $d4 $81 $00
	nop                                              ; $5a71: $00
	ld   a, c                                        ; $5a72: $79
	adc  c                                           ; $5a73: $89
	nop                                              ; $5a74: $00
	nop                                              ; $5a75: $00
	ld   a, c                                        ; $5a76: $79
	add  c                                           ; $5a77: $81
	nop                                              ; $5a78: $00
	inc  c                                           ; $5a79: $0c
	add  $01                                         ; $5a7a: $c6 $01
	inc  bc                                          ; $5a7c: $03
	ld   bc, $0107                                   ; $5a7d: $01 $07 $01
	inc  bc                                          ; $5a80: $03
	dec  l                                           ; $5a81: $2d
	inc  hl                                          ; $5a82: $23
	ld   bc, $2803                                   ; $5a83: $01 $03 $28
	db   $e4                                         ; $5a86: $e4
	add  c                                           ; $5a87: $81
	nop                                              ; $5a88: $00
	nop                                              ; $5a89: $00
	ld   a, c                                        ; $5a8a: $79
	adc  c                                           ; $5a8b: $89
	nop                                              ; $5a8c: $00
	nop                                              ; $5a8d: $00
	ld   a, c                                        ; $5a8e: $79
	add  d                                           ; $5a8f: $82
	nop                                              ; $5a90: $00
	add  hl, bc                                      ; $5a91: $09
	jp   c, $0301                                    ; $5a92: $da $01 $03

	ld   bc, $0109                                   ; $5a95: $01 $09 $01
	daa                                              ; $5a98: $27
	ld   c, a                                        ; $5a99: $4f
	ld   c, l                                        ; $5a9a: $4d
	db   $f4                                         ; $5a9b: $f4
	add  e                                           ; $5a9c: $83
	nop                                              ; $5a9d: $00
	nop                                              ; $5a9e: $00
	ld   a, c                                        ; $5a9f: $79
	adc  c                                           ; $5aa0: $89
	nop                                              ; $5aa1: $00
	nop                                              ; $5aa2: $00
	ld   a, c                                        ; $5aa3: $79
	add  d                                           ; $5aa4: $82
	nop                                              ; $5aa5: $00
	ld   a, [bc]                                     ; $5aa6: $0a
	ld   [$0301], a                                  ; $5aa7: $ea $01 $03
	ld   bc, $0109                                   ; $5aaa: $01 $09 $01
	ld   d, $3e                                      ; $5aad: $16 $3e
	inc  a                                           ; $5aaf: $3c
	sbc  h                                           ; $5ab0: $9c
	ld   l, c                                        ; $5ab1: $69
	add  d                                           ; $5ab2: $82
	nop                                              ; $5ab3: $00
	nop                                              ; $5ab4: $00
	ld   a, c                                        ; $5ab5: $79
	adc  c                                           ; $5ab6: $89
	nop                                              ; $5ab7: $00
	ld   bc, $07d4                                   ; $5ab8: $01 $d4 $07
	adc  a                                           ; $5abb: $8f
	nop                                              ; $5abc: $00
	ld   bc, $d407                                   ; $5abd: $01 $07 $d4
	adc  c                                           ; $5ac0: $89
	nop                                              ; $5ac1: $00
	inc  d                                           ; $5ac2: $14
	jp   nc, $011d                                   ; $5ac3: $d2 $1d $01

	inc  bc                                          ; $5ac6: $03
	ld   bc, $0107                                   ; $5ac7: $01 $07 $01
	inc  bc                                          ; $5aca: $03
	ld   bc, $010f                                   ; $5acb: $01 $0f $01
	inc  bc                                          ; $5ace: $03
	ld   bc, $0107                                   ; $5acf: $01 $07 $01
	inc  bc                                          ; $5ad2: $03
	ld   bc, $016f                                   ; $5ad3: $01 $6f $01
	ld   a, h                                        ; $5ad6: $7c
	jp   nc, $0089                                   ; $5ad7: $d2 $89 $00

	inc  d                                           ; $5ada: $14
	jp   nc, $016d                                   ; $5adb: $d2 $6d $01

	inc  bc                                          ; $5ade: $03
	ld   bc, $0107                                   ; $5adf: $01 $07 $01
	inc  bc                                          ; $5ae2: $03
	ld   bc, $010f                                   ; $5ae3: $01 $0f $01
	inc  bc                                          ; $5ae6: $03
	ld   bc, $0107                                   ; $5ae7: $01 $07 $01
	inc  bc                                          ; $5aea: $03
	ld   bc, $012f                                   ; $5aeb: $01 $2f $01
	ld   c, a                                        ; $5aee: $4f
	pop  de                                          ; $5aef: $d1
	adc  c                                           ; $5af0: $89
	nop                                              ; $5af1: $00
	ld   bc, $abd2                                   ; $5af2: $01 $d2 $ab
	add  b                                           ; $5af5: $80
	nop                                              ; $5af6: $00
	inc  c                                           ; $5af7: $0c
	cp   [hl]                                        ; $5af8: $be
	ld   bc, $6803                                   ; $5af9: $01 $03 $68
	ld   bc, $0107                                   ; $5afc: $01 $07 $01
	inc  bc                                          ; $5aff: $03
	ld   bc, $010f                                   ; $5b00: $01 $0f $01
	inc  bc                                          ; $5b03: $03
	call c, $0080                                    ; $5b04: $dc $80 $00
	ld   bc, $d2ab                                   ; $5b07: $01 $ab $d2
	adc  c                                           ; $5b0a: $89
	nop                                              ; $5b0b: $00
	ld   bc, $abd2                                   ; $5b0c: $01 $d2 $ab
	add  b                                           ; $5b0f: $80
	nop                                              ; $5b10: $00
	inc  c                                           ; $5b11: $0c
	adc  $01                                         ; $5b12: $ce $01
	inc  bc                                          ; $5b14: $03
	jr   z, jr_01d_5b18                              ; $5b15: $28 $01

	rlca                                             ; $5b17: $07

jr_01d_5b18:
	ld   bc, $0103                                   ; $5b18: $01 $03 $01
	rrca                                             ; $5b1b: $0f
	ld   bc, $ec03                                   ; $5b1c: $01 $03 $ec
	add  b                                           ; $5b1f: $80
	nop                                              ; $5b20: $00
	ld   bc, $d2ab                                   ; $5b21: $01 $ab $d2
	adc  c                                           ; $5b24: $89
	nop                                              ; $5b25: $00
	ld   bc, $07d4                                   ; $5b26: $01 $d4 $07
	adc  a                                           ; $5b29: $8f
	nop                                              ; $5b2a: $00
	ld   bc, $d407                                   ; $5b2b: $01 $07 $d4
	adc  c                                           ; $5b2e: $89
	nop                                              ; $5b2f: $00
	inc  d                                           ; $5b30: $14
	ld   a, c                                        ; $5b31: $79
	halt                                             ; $5b32: $76
	ld   bc, $0103                                   ; $5b33: $01 $03 $01
	rlca                                             ; $5b36: $07
	ld   bc, $0103                                   ; $5b37: $01 $03 $01
	rst  $30                                         ; $5b3a: $f7
	ld   bc, $0103                                   ; $5b3b: $01 $03 $01
	rlca                                             ; $5b3e: $07
	ld   bc, $0103                                   ; $5b3f: $01 $03 $01
	db   $eb                                         ; $5b42: $eb
	ld   l, d                                        ; $5b43: $6a
	nop                                              ; $5b44: $00
	ld   a, c                                        ; $5b45: $79
	adc  c                                           ; $5b46: $89
	nop                                              ; $5b47: $00
	inc  d                                           ; $5b48: $14
	ld   a, c                                        ; $5b49: $79
	ld   a, [hl]                                     ; $5b4a: $7e
	ld   bc, $0103                                   ; $5b4b: $01 $03 $01
	rlca                                             ; $5b4e: $07
	ld   bc, $0103                                   ; $5b4f: $01 $03 $01
	rst  $30                                         ; $5b52: $f7
	ld   bc, $0103                                   ; $5b53: $01 $03 $01
	rlca                                             ; $5b56: $07
	ld   bc, $0103                                   ; $5b57: $01 $03 $01
	ldh  [c], a                                      ; $5b5a: $e2
	inc  bc                                          ; $5b5b: $03
	ld   l, b                                        ; $5b5c: $68
	ld   a, c                                        ; $5b5d: $79
	adc  c                                           ; $5b5e: $89
	nop                                              ; $5b5f: $00
	nop                                              ; $5b60: $00
	ld   a, c                                        ; $5b61: $79
	add  b                                           ; $5b62: $80
	nop                                              ; $5b63: $00
	ld   c, $96                                      ; $5b64: $0e $96
	ld   bc, $0103                                   ; $5b66: $01 $03 $01
	rlca                                             ; $5b69: $07
	ld   bc, $0103                                   ; $5b6a: $01 $03 $01
	rrca                                             ; $5b6d: $0f
	ld   bc, $0103                                   ; $5b6e: $01 $03 $01
	rlca                                             ; $5b71: $07
	ld   bc, $809b                                   ; $5b72: $01 $9b $80
	nop                                              ; $5b75: $00
	nop                                              ; $5b76: $00
	ld   a, c                                        ; $5b77: $79
	adc  c                                           ; $5b78: $89
	nop                                              ; $5b79: $00
	nop                                              ; $5b7a: $00
	ld   a, c                                        ; $5b7b: $79
	add  b                                           ; $5b7c: $80
	nop                                              ; $5b7d: $00
	ld   c, $a6                                      ; $5b7e: $0e $a6
	ld   bc, $0103                                   ; $5b80: $01 $03 $01
	rlca                                             ; $5b83: $07
	ld   bc, $0103                                   ; $5b84: $01 $03 $01
	rrca                                             ; $5b87: $0f
	ld   bc, $3403                                   ; $5b88: $01 $03 $34
	ld   bc, $69f0                                   ; $5b8b: $01 $f0 $69
	add  b                                           ; $5b8e: $80
	nop                                              ; $5b8f: $00
	nop                                              ; $5b90: $00
	ld   a, c                                        ; $5b91: $79
	adc  c                                           ; $5b92: $89
	nop                                              ; $5b93: $00
	nop                                              ; $5b94: $00
	ld   a, a                                        ; $5b95: $7f
	add  b                                           ; $5b96: $80
	nop                                              ; $5b97: $00
	ld   bc, $07ab                                   ; $5b98: $01 $ab $07
	adc  c                                           ; $5b9b: $89
	nop                                              ; $5b9c: $00
	ld   bc, $e507                                   ; $5b9d: $01 $07 $e5
	add  b                                           ; $5ba0: $80
	nop                                              ; $5ba1: $00
	nop                                              ; $5ba2: $00
	ld   sp, $0089                                   ; $5ba3: $31 $89 $00
	nop                                              ; $5ba6: $00
	ld   a, a                                        ; $5ba7: $7f
	add  b                                           ; $5ba8: $80
	nop                                              ; $5ba9: $00
	ld   [$ddad], sp                                 ; $5baa: $08 $ad $dd
	ld   bc, $8603                                   ; $5bad: $01 $03 $86
	ld   bc, $0103                                   ; $5bb0: $01 $03 $01
	ld   hl, $6980                                   ; $5bb3: $21 $80 $69
	inc  bc                                          ; $5bb6: $03
	ld   a, [hl+]                                    ; $5bb7: $2a
	ld   a, [$e3ab]                                  ; $5bb8: $fa $ab $e3
	add  b                                           ; $5bbb: $80
	nop                                              ; $5bbc: $00
	nop                                              ; $5bbd: $00
	ld   sp, $0089                                   ; $5bbe: $31 $89 $00
	nop                                              ; $5bc1: $00
	dec  hl                                          ; $5bc2: $2b
	add  b                                           ; $5bc3: $80
	nop                                              ; $5bc4: $00
	ld   [$d5f9], sp                                 ; $5bc5: $08 $f9 $d5
	ld   bc, $8203                                   ; $5bc8: $01 $03 $82
	ld   bc, $0103                                   ; $5bcb: $01 $03 $01
	dec  e                                           ; $5bce: $1d
	add  b                                           ; $5bcf: $80
	add  hl, hl                                      ; $5bd0: $29
	inc  bc                                          ; $5bd1: $03
	dec  de                                          ; $5bd2: $1b
	ld   d, d                                        ; $5bd3: $52
	ld   [bc], a                                     ; $5bd4: $02
	db   $e3                                         ; $5bd5: $e3
	add  b                                           ; $5bd6: $80
	nop                                              ; $5bd7: $00
	nop                                              ; $5bd8: $00
	ld   sp, $0089                                   ; $5bd9: $31 $89 $00
	nop                                              ; $5bdc: $00
	dec  h                                           ; $5bdd: $25
	add  b                                           ; $5bde: $80
	nop                                              ; $5bdf: $00
	ld   bc, $07f1                                   ; $5be0: $01 $f1 $07
	adc  c                                           ; $5be3: $89
	nop                                              ; $5be4: $00
	ld   bc, $e507                                   ; $5be5: $01 $07 $e5
	add  b                                           ; $5be8: $80
	nop                                              ; $5be9: $00
	nop                                              ; $5bea: $00
	ld   sp, $0089                                   ; $5beb: $31 $89 $00
	and  b                                           ; $5bee: $a0
	nop                                              ; $5bef: $00
	ld   [bc], a                                     ; $5bf0: $02
	rra                                              ; $5bf1: $1f
	rrca                                             ; $5bf2: $0f
	rra                                              ; $5bf3: $1f
	add  c                                           ; $5bf4: $81
	rlca                                             ; $5bf5: $07
	ld   a, [de]                                     ; $5bf6: $1a
	rla                                              ; $5bf7: $17
	inc  c                                           ; $5bf8: $0c
	xor  $00                                         ; $5bf9: $ee $00
	or   l                                           ; $5bfb: $b5
	or   b                                           ; $5bfc: $b0
	ld   b, c                                        ; $5bfd: $41
	nop                                              ; $5bfe: $00
	cp   b                                           ; $5bff: $b8
	nop                                              ; $5c00: $00
	ld   sp, hl                                      ; $5c01: $f9
	add  b                                           ; $5c02: $80
	cp   h                                           ; $5c03: $bc
	add  b                                           ; $5c04: $80
	add  [hl]                                        ; $5c05: $86
	nop                                              ; $5c06: $00
	jr   nz, @+$42                                   ; $5c07: $20 $40

	ld   e, [hl]                                     ; $5c09: $5e
	ldh  [$e4], a                                    ; $5c0a: $e0 $e4
	ld   [hl], b                                     ; $5c0c: $70
	ld   [hl], h                                     ; $5c0d: $74
	ret  nz                                          ; $5c0e: $c0

	ld   hl, sp+$00                                  ; $5c0f: $f8 $00
	call nz, $7980                           ; $5c11: $c4 $80 $79
	add  b                                           ; $5c14: $80
	inc  a                                           ; $5c15: $3c
	add  d                                           ; $5c16: $82
	ld   a, $80                                      ; $5c17: $3e $80
	cpl                                              ; $5c19: $2f
	add  b                                           ; $5c1a: $80
	ccf                                              ; $5c1b: $3f
	add  d                                           ; $5c1c: $82
	scf                                              ; $5c1d: $37
	add  b                                           ; $5c1e: $80
	di                                               ; $5c1f: $f3
	add  d                                           ; $5c20: $82
	ld   sp, hl                                      ; $5c21: $f9
	add  b                                           ; $5c22: $80
	ld   a, h                                        ; $5c23: $7c
	add  b                                           ; $5c24: $80
	inc  a                                           ; $5c25: $3c
	add  b                                           ; $5c26: $80
	ld   a, $80                                      ; $5c27: $3e $80
	sbc  [hl]                                        ; $5c29: $9e
	add  hl, de                                      ; $5c2a: $19
	rst  JumpTable                                         ; $5c2b: $df
	pop  af                                          ; $5c2c: $f1
	ret  nz                                          ; $5c2d: $c0

	ret                                              ; $5c2e: $c9


	jp   nz, $e072                                   ; $5c2f: $c2 $72 $e0

	rst  $28                                         ; $5c32: $ef
	rst  $20                                         ; $5c33: $e7
	sbc  [hl]                                        ; $5c34: $9e
	rst  JumpTable                                         ; $5c35: $df
	ld   c, c                                        ; $5c36: $49
	ld   c, a                                        ; $5c37: $4f
	ld   b, a                                        ; $5c38: $47
	rlca                                             ; $5c39: $07
	rst  $30                                         ; $5c3a: $f7
	ld   [hl], a                                     ; $5c3b: $77
	add  c                                           ; $5c3c: $81
	ld   b, $fa                                      ; $5c3d: $06 $fa
	ld   a, d                                        ; $5c3f: $7a
	pop  de                                          ; $5c40: $d1
	db   $dd                                         ; $5c41: $dd
	call $3cfd                                       ; $5c42: $cd $fd $3c
	add  b                                           ; $5c45: $80
	or   $02                                         ; $5c46: $f6 $02
	cp   $f9                                         ; $5c48: $fe $f9
	ld   hl, sp-$80                                  ; $5c4a: $f8 $80
	ret  nz                                          ; $5c4c: $c0

	add  d                                           ; $5c4d: $82
	nop                                              ; $5c4e: $00
	nop                                              ; $5c4f: $00
	add  b                                           ; $5c50: $80
	add  c                                           ; $5c51: $81
	nop                                              ; $5c52: $00
	add  b                                           ; $5c53: $80
	ld   bc, $4006                                   ; $5c54: $01 $06 $40
	nop                                              ; $5c57: $00
	ld   h, b                                        ; $5c58: $60
	nop                                              ; $5c59: $00
	ccf                                              ; $5c5a: $3f
	nop                                              ; $5c5b: $00
	sbc  b                                           ; $5c5c: $98
	add  c                                           ; $5c5d: $81
	rlca                                             ; $5c5e: $07
	add  b                                           ; $5c5f: $80
	inc  bc                                          ; $5c60: $03
	inc  d                                           ; $5c61: $14
	rra                                              ; $5c62: $1f
	rrca                                             ; $5c63: $0f
	db   $ec                                         ; $5c64: $ec
	db   $fc                                         ; $5c65: $fc
	inc  bc                                          ; $5c66: $03
	nop                                              ; $5c67: $00
	ld   a, h                                        ; $5c68: $7c
	nop                                              ; $5c69: $00
	add  b                                           ; $5c6a: $80
	nop                                              ; $5c6b: $00
	ld   [$f7ff], sp                                 ; $5c6c: $08 $ff $f7
	cp   h                                           ; $5c6f: $bc
	cp   a                                           ; $5c70: $bf
	ld   hl, sp-$71                                  ; $5c71: $f8 $8f
	add  b                                           ; $5c73: $80
	ld   [hl], c                                     ; $5c74: $71
	nop                                              ; $5c75: $00
	add  l                                           ; $5c76: $85
	add  b                                           ; $5c77: $80
	inc  bc                                          ; $5c78: $03
	add  hl, bc                                      ; $5c79: $09
	inc  c                                           ; $5c7a: $0c
	rrca                                             ; $5c7b: $0f
	ld   a, a                                        ; $5c7c: $7f
	db   $e3                                         ; $5c7d: $e3
	nop                                              ; $5c7e: $00
	add  c                                           ; $5c7f: $81
	nop                                              ; $5c80: $00
	ld   c, $01                                      ; $5c81: $0e $01
	ld   de, $0f80                                   ; $5c83: $11 $80 $0f
	add  hl, bc                                      ; $5c86: $09
	cp   a                                           ; $5c87: $bf
	add  b                                           ; $5c88: $80
	nop                                              ; $5c89: $00
	add  c                                           ; $5c8a: $81
	add  b                                           ; $5c8b: $80
	cp   [hl]                                        ; $5c8c: $be
	add  b                                           ; $5c8d: $80
	sbc  a                                           ; $5c8e: $9f
	rra                                              ; $5c8f: $1f
	add  b                                           ; $5c90: $80
	add  b                                           ; $5c91: $80
	rra                                              ; $5c92: $1f
	add  c                                           ; $5c93: $81
	sbc  a                                           ; $5c94: $9f
	ld   bc, $01a1                                   ; $5c95: $01 $a1 $01
	add  b                                           ; $5c98: $80
	nop                                              ; $5c99: $00
	ld   [bc], a                                     ; $5c9a: $02
	ld   b, b                                        ; $5c9b: $40
	nop                                              ; $5c9c: $00
	add  b                                           ; $5c9d: $80
	add  b                                           ; $5c9e: $80
	nop                                              ; $5c9f: $00
	adc  b                                           ; $5ca0: $88
	rst  $38                                         ; $5ca1: $ff
	add  b                                           ; $5ca2: $80
	dec  de                                          ; $5ca3: $1b
	add  b                                           ; $5ca4: $80
	ld   [hl-], a                                    ; $5ca5: $32
	ld   [bc], a                                     ; $5ca6: $02
	inc  h                                           ; $5ca7: $24
	db   $e4                                         ; $5ca8: $e4
	ccf                                              ; $5ca9: $3f
	add  b                                           ; $5caa: $80
	ld   a, a                                        ; $5cab: $7f
	ld   [bc], a                                     ; $5cac: $02
	ei                                               ; $5cad: $fb
	rst  $38                                         ; $5cae: $ff
	ei                                               ; $5caf: $fb
	add  c                                           ; $5cb0: $81
	rst  $38                                         ; $5cb1: $ff
	add  b                                           ; $5cb2: $80
	rrca                                             ; $5cb3: $0f
	inc  c                                           ; $5cb4: $0c
	xor  c                                           ; $5cb5: $a9
	rrca                                             ; $5cb6: $0f
	ccf                                              ; $5cb7: $3f
	rra                                              ; $5cb8: $1f
	ld   sp, hl                                      ; $5cb9: $f9
	rst  $38                                         ; $5cba: $ff
	ld   c, a                                        ; $5cbb: $4f
	rst  $38                                         ; $5cbc: $ff
	db   $fc                                         ; $5cbd: $fc
	rst  $38                                         ; $5cbe: $ff
	call z, $feff                                    ; $5cbf: $cc $ff $fe
	add  c                                           ; $5cc2: $81
	rst  $38                                         ; $5cc3: $ff
	ld   [de], a                                     ; $5cc4: $12
	db   $fd                                         ; $5cc5: $fd
	rst  $38                                         ; $5cc6: $ff
	db   $fc                                         ; $5cc7: $fc
	rst  $38                                         ; $5cc8: $ff
	cp   a                                           ; $5cc9: $bf
	rst  $38                                         ; $5cca: $ff
	rst  JumpTable                                         ; $5ccb: $df
	rst  $38                                         ; $5ccc: $ff
	ld   h, e                                        ; $5ccd: $63
	rst  $38                                         ; $5cce: $ff
	di                                               ; $5ccf: $f3
	rst  $38                                         ; $5cd0: $ff
	rst  $30                                         ; $5cd1: $f7
	rst  $38                                         ; $5cd2: $ff
	rst  JumpTable                                         ; $5cd3: $df
	rst  $38                                         ; $5cd4: $ff
	inc  hl                                          ; $5cd5: $23
	rst  $38                                         ; $5cd6: $ff
	ei                                               ; $5cd7: $fb
	add  b                                           ; $5cd8: $80
	rst  $38                                         ; $5cd9: $ff
	add  d                                           ; $5cda: $82
	ld   hl, sp+$08                                  ; $5cdb: $f8 $08
	db   $fc                                         ; $5cdd: $fc
	db   $fd                                         ; $5cde: $fd
	db   $fc                                         ; $5cdf: $fc
	rst  $38                                         ; $5ce0: $ff
	db   $f4                                         ; $5ce1: $f4
	di                                               ; $5ce2: $f3
	ld   hl, sp-$05                                  ; $5ce3: $f8 $fb
	ld   hl, sp-$80                                  ; $5ce5: $f8 $80
	db   $fc                                         ; $5ce7: $fc
	ld   a, [de]                                     ; $5ce8: $1a
	ldh  [rP1], a                                    ; $5ce9: $e0 $00
	ld   [hl], a                                     ; $5ceb: $77
	nop                                              ; $5cec: $00
	rst  $28                                         ; $5ced: $ef
	nop                                              ; $5cee: $00
	add  l                                           ; $5cef: $85
	nop                                              ; $5cf0: $00
	rlca                                             ; $5cf1: $07
	nop                                              ; $5cf2: $00
	add  h                                           ; $5cf3: $84
	nop                                              ; $5cf4: $00
	ret  nz                                          ; $5cf5: $c0

	nop                                              ; $5cf6: $00
	jr   nc, jr_01d_5cf9                             ; $5cf7: $30 $00

jr_01d_5cf9:
	ld   [hl], a                                     ; $5cf9: $77
	nop                                              ; $5cfa: $00
	cp   $00                                         ; $5cfb: $fe $00
	cp   $00                                         ; $5cfd: $fe $00
	db   $fd                                         ; $5cff: $fd
	nop                                              ; $5d00: $00
	ei                                               ; $5d01: $fb
	nop                                              ; $5d02: $00
	ld   bc, $0081                                   ; $5d03: $01 $81 $00
	ld   [de], a                                     ; $5d06: $12
	jr   c, jr_01d_5d09                              ; $5d07: $38 $00

jr_01d_5d09:
	call c, $f800                                    ; $5d09: $dc $00 $f8
	nop                                              ; $5d0c: $00
	sbc  d                                           ; $5d0d: $9a
	nop                                              ; $5d0e: $00
	rst  ToBoot                                         ; $5d0f: $c7
	nop                                              ; $5d10: $00
	ld   b, b                                        ; $5d11: $40
	nop                                              ; $5d12: $00
	inc  bc                                          ; $5d13: $03
	nop                                              ; $5d14: $00
	inc  bc                                          ; $5d15: $03
	nop                                              ; $5d16: $00
	jr   jr_01d_5d19                                 ; $5d17: $18 $00

jr_01d_5d19:
	add  hl, de                                      ; $5d19: $19
	add  b                                           ; $5d1a: $80
	inc  hl                                          ; $5d1b: $23
	add  b                                           ; $5d1c: $80
	ld   [hl], $80                                   ; $5d1d: $36 $80
	ld   [hl], l                                     ; $5d1f: $75
	add  b                                           ; $5d20: $80
	ld   l, d                                        ; $5d21: $6a
	add  b                                           ; $5d22: $80
	ld   d, l                                        ; $5d23: $55
	add  b                                           ; $5d24: $80
	xor  d                                           ; $5d25: $aa
	add  b                                           ; $5d26: $80
	inc  d                                           ; $5d27: $14
	add  b                                           ; $5d28: $80
	and  b                                           ; $5d29: $a0
	add  b                                           ; $5d2a: $80
	push bc                                          ; $5d2b: $c5
	add  b                                           ; $5d2c: $80
	xor  d                                           ; $5d2d: $aa
	add  b                                           ; $5d2e: $80
	ld   b, l                                        ; $5d2f: $45
	add  b                                           ; $5d30: $80
	and  d                                           ; $5d31: $a2
	add  b                                           ; $5d32: $80
	ld   d, h                                        ; $5d33: $54
	add  b                                           ; $5d34: $80

jr_01d_5d35:
	add  b                                           ; $5d35: $80
	add  c                                           ; $5d36: $81
	nop                                              ; $5d37: $00
	ld   bc, $e31f                                   ; $5d38: $01 $1f $e3
	add  b                                           ; $5d3b: $80
	add  b                                           ; $5d3c: $80
	ld   bc, $6062                                   ; $5d3d: $01 $62 $60
	add  b                                           ; $5d40: $80
	ldh  a, [rSC]                                    ; $5d41: $f0 $02
	pop  bc                                          ; $5d43: $c1
	ld   hl, sp+$38                                  ; $5d44: $f8 $38
	add  b                                           ; $5d46: $80
	ld   sp, hl                                      ; $5d47: $f9
	nop                                              ; $5d48: $00
	db   $fc                                         ; $5d49: $fc
	add  b                                           ; $5d4a: $80
	ld   hl, sp+$12                                  ; $5d4b: $f8 $12
	ld   bc, $0200                                   ; $5d4d: $01 $00 $02
	nop                                              ; $5d50: $00
	rlca                                             ; $5d51: $07
	nop                                              ; $5d52: $00
	jr   c, jr_01d_5d56                              ; $5d53: $38 $01

	pop  af                                          ; $5d55: $f1

jr_01d_5d56:
	ld   bc, $8251                                   ; $5d56: $01 $51 $82
	ld   [hl+], a                                    ; $5d59: $22
	ld   [bc], a                                     ; $5d5a: $02
	jp   Jump_01d_6d14                               ; $5d5b: $c3 $14 $6d


	nop                                              ; $5d5e: $00
	ld   b, $81                                      ; $5d5f: $06 $81
	ld   bc, $0080                                   ; $5d61: $01 $80 $00
	ld   [$0343], sp                                 ; $5d64: $08 $43 $03
	ldh  a, [rP1]                                    ; $5d67: $f0 $00
	cpl                                              ; $5d69: $2f
	nop                                              ; $5d6a: $00
	stop                                             ; $5d6b: $10 $00
	ldh  a, [$80]                                    ; $5d6d: $f0 $80
	inc  bc                                          ; $5d6f: $03
	add  c                                           ; $5d70: $81
	rst  $38                                         ; $5d71: $ff

jr_01d_5d72:
	ld   b, $3f                                      ; $5d72: $06 $3f
	scf                                              ; $5d74: $37
	rst  $30                                         ; $5d75: $f7
	rst  ToBoot                                         ; $5d76: $c7
	ld   b, a                                        ; $5d77: $47
	jr   c, jr_01d_5d72                              ; $5d78: $38 $f8

	add  b                                           ; $5d7a: $80
	ld   a, h                                        ; $5d7b: $7c
	dec  b                                           ; $5d7c: $05
	ld   b, b                                        ; $5d7d: $40
	inc  b                                           ; $5d7e: $04
	db   $fd                                         ; $5d7f: $fd
	pop  hl                                          ; $5d80: $e1
	rst  $38                                         ; $5d81: $ff
	rst  $20                                         ; $5d82: $e7
	add  b                                           ; $5d83: $80
	cp   h                                           ; $5d84: $bc
	add  b                                           ; $5d85: $80
	ldh  a, [rP1]                                    ; $5d86: $f0 $00
	nop                                              ; $5d88: $00
	add  b                                           ; $5d89: $80
	inc  bc                                          ; $5d8a: $03
	inc  b                                           ; $5d8b: $04
	ld   [bc], a                                     ; $5d8c: $02
	ld   c, $0d                                      ; $5d8d: $0e $0d
	ld   a, l                                        ; $5d8f: $7d
	add  e                                           ; $5d90: $83
	add  b                                           ; $5d91: $80
	ld   d, l                                        ; $5d92: $55
	add  b                                           ; $5d93: $80
	xor  d                                           ; $5d94: $aa
	add  b                                           ; $5d95: $80
	ld   d, l                                        ; $5d96: $55
	add  b                                           ; $5d97: $80
	ld   a, [hl+]                                    ; $5d98: $2a
	add  l                                           ; $5d99: $85
	nop                                              ; $5d9a: $00
	inc  b                                           ; $5d9b: $04
	ldh  [rP1], a                                    ; $5d9c: $e0 $00
	rst  $38                                         ; $5d9e: $ff
	and  b                                           ; $5d9f: $a0
	cp   a                                           ; $5da0: $bf
	add  b                                           ; $5da1: $80
	ld   d, a                                        ; $5da2: $57
	add  b                                           ; $5da3: $80
	xor  d                                           ; $5da4: $aa
	add  b                                           ; $5da5: $80
	ld   d, l                                        ; $5da6: $55
	add  b                                           ; $5da7: $80
	ld   a, [bc]                                     ; $5da8: $0a
	add  b                                           ; $5da9: $80
	ld   bc, $0002                                   ; $5daa: $01 $02 $00
	rst  JumpTable                                         ; $5dad: $df
	jr   nz, jr_01d_5d35                             ; $5dae: $20 $85

	rst  $38                                         ; $5db0: $ff
	add  b                                           ; $5db1: $80
	ld   e, a                                        ; $5db2: $5f
	add  b                                           ; $5db3: $80
	xor  a                                           ; $5db4: $af
	add  b                                           ; $5db5: $80
	ld   d, l                                        ; $5db6: $55
	ld   [bc], a                                     ; $5db7: $02
	xor  d                                           ; $5db8: $aa
	ld   a, [hl+]                                    ; $5db9: $2a
	ld   a, a                                        ; $5dba: $7f
	add  d                                           ; $5dbb: $82
	rst  $38                                         ; $5dbc: $ff
	ld   [bc], a                                     ; $5dbd: $02
	ld   sp, hl                                      ; $5dbe: $f9
	rst  $38                                         ; $5dbf: $ff
	ld   a, [$ff81]                                  ; $5dc0: $fa $81 $ff
	inc  b                                           ; $5dc3: $04
	ei                                               ; $5dc4: $fb
	rst  $38                                         ; $5dc5: $ff
	db   $fd                                         ; $5dc6: $fd
	rst  $38                                         ; $5dc7: $ff
	ld   a, [$ff81]                                  ; $5dc8: $fa $81 $ff
	nop                                              ; $5dcb: $00
	ld   a, a                                        ; $5dcc: $7f
	add  e                                           ; $5dcd: $83
	rst  $38                                         ; $5dce: $ff
	ld   [bc], a                                     ; $5dcf: $02
	sbc  a                                           ; $5dd0: $9f
	rst  $38                                         ; $5dd1: $ff
	sbc  a                                           ; $5dd2: $9f
	add  c                                           ; $5dd3: $81
	rst  $38                                         ; $5dd4: $ff
	nop                                              ; $5dd5: $00
	ld   a, l                                        ; $5dd6: $7d
	add  d                                           ; $5dd7: $82
	db   $fc                                         ; $5dd8: $fc
	inc  bc                                          ; $5dd9: $03
	db   $ec                                         ; $5dda: $ec
	rst  $28                                         ; $5ddb: $ef
	db   $f4                                         ; $5ddc: $f4
	push af                                          ; $5ddd: $f5
	add  b                                           ; $5dde: $80
	ei                                               ; $5ddf: $fb
	add  b                                           ; $5de0: $80
	push af                                          ; $5de1: $f5
	add  b                                           ; $5de2: $80
	xor  $09                                         ; $5de3: $ee $09
	rst  $38                                         ; $5de5: $ff
	add  a                                           ; $5de6: $87
	jr   nc, jr_01d_5e25                             ; $5de7: $30 $3c

	jr   nz, jr_01d_5e22                             ; $5de9: $20 $37

	db   $10                                         ; $5deb: $10
	or   e                                           ; $5dec: $b3
	ld   a, $fe                                      ; $5ded: $3e $fe
	add  l                                           ; $5def: $85
	rst  $38                                         ; $5df0: $ff
	inc  c                                           ; $5df1: $0c
	cp   e                                           ; $5df2: $bb
	nop                                              ; $5df3: $00
	add  e                                           ; $5df4: $83
	nop                                              ; $5df5: $00
	add  b                                           ; $5df6: $80
	ld   [bc], a                                     ; $5df7: $02
	inc  bc                                          ; $5df8: $03
	nop                                              ; $5df9: $00
	ld   [bc], a                                     ; $5dfa: $02
	add  c                                           ; $5dfb: $81
	db   $fd                                         ; $5dfc: $fd
	jp   nz, $80fa                                   ; $5dfd: $c2 $fa $80

	push de                                          ; $5e00: $d5
	rlca                                             ; $5e01: $07
	xor  d                                           ; $5e02: $aa
	adc  h                                           ; $5e03: $8c
	ld   bc, $0a07                                   ; $5e04: $01 $07 $0a
	ld   [$d414], a                                  ; $5e07: $ea $14 $d4
	add  b                                           ; $5e0a: $80
	xor  b                                           ; $5e0b: $a8
	add  b                                           ; $5e0c: $80
	ld   b, b                                        ; $5e0d: $40
	add  b                                           ; $5e0e: $80
	add  b                                           ; $5e0f: $80
	add  d                                           ; $5e10: $82
	nop                                              ; $5e11: $00
	add  b                                           ; $5e12: $80
	ld   b, b                                        ; $5e13: $40
	adc  e                                           ; $5e14: $8b
	nop                                              ; $5e15: $00
	dec  b                                           ; $5e16: $05
	rrca                                             ; $5e17: $0f
	rst  $30                                         ; $5e18: $f7
	rst  $20                                         ; $5e19: $e7
	ei                                               ; $5e1a: $fb
	ld   e, e                                        ; $5e1b: $5b
	ld   a, l                                        ; $5e1c: $7d
	add  b                                           ; $5e1d: $80
	cp   c                                           ; $5e1e: $b9
	inc  b                                           ; $5e1f: $04
	di                                               ; $5e20: $f3
	ret  nc                                          ; $5e21: $d0

jr_01d_5e22:
	ld   [hl], b                                     ; $5e22: $70
	ld   b, b                                        ; $5e23: $40
	add  b                                           ; $5e24: $80

jr_01d_5e25:
	add  c                                           ; $5e25: $81
	nop                                              ; $5e26: $00
	ld   bc, $f1a2                                   ; $5e27: $01 $a2 $f1
	add  b                                           ; $5e2a: $80
	pop  bc                                          ; $5e2b: $c1
	db   $10                                         ; $5e2c: $10
	add  l                                           ; $5e2d: $85
	add  d                                           ; $5e2e: $82
	ld   a, [bc]                                     ; $5e2f: $0a
	ld   b, $17                                      ; $5e30: $06 $17
	dec  c                                           ; $5e32: $0d
	ccf                                              ; $5e33: $3f
	inc  bc                                          ; $5e34: $03
	ld   h, a                                        ; $5e35: $67
	rlca                                             ; $5e36: $07
	rst  $10                                         ; $5e37: $d7
	rlca                                             ; $5e38: $07
	ld   hl, $4e4c                                   ; $5e39: $21 $4c $4e
	ld   b, b                                        ; $5e3c: $40
	xor  h                                           ; $5e3d: $ac
	add  c                                           ; $5e3e: $81
	and  b                                           ; $5e3f: $a0
	inc  bc                                          ; $5e40: $03
	reti                                             ; $5e41: $d9


	ret  nc                                          ; $5e42: $d0

	xor  $e8                                         ; $5e43: $ee $e8
	add  b                                           ; $5e45: $80
	or   $19                                         ; $5e46: $f6 $19
	ldh  [$f8], a                                    ; $5e48: $e0 $f8
	and  $00                                         ; $5e4a: $e6 $00
	ld   bc, $0300                                   ; $5e4c: $01 $00 $03
	nop                                              ; $5e4f: $00
	ld   h, h                                        ; $5e50: $64
	inc  bc                                          ; $5e51: $03
	db   $d3                                         ; $5e52: $d3
	ld   h, e                                        ; $5e53: $63
	daa                                              ; $5e54: $27
	ldh  [$f3], a                                    ; $5e55: $e0 $f3
	nop                                              ; $5e57: $00
	rst  $28                                         ; $5e58: $ef
	nop                                              ; $5e59: $00
	ldh  a, [rAUD3LEN]                               ; $5e5a: $f0 $1b
	db   $db                                         ; $5e5c: $db
	rlca                                             ; $5e5d: $07
	scf                                              ; $5e5e: $37

jr_01d_5e5f:
	rrca                                             ; $5e5f: $0f
	add  e                                           ; $5e60: $83
	inc  bc                                          ; $5e61: $03
	add  b                                           ; $5e62: $80
	nop                                              ; $5e63: $00
	rlca                                             ; $5e64: $07
	add  b                                           ; $5e65: $80
	nop                                              ; $5e66: $00
	ld   a, b                                        ; $5e67: $78
	nop                                              ; $5e68: $00
	rst  $38                                         ; $5e69: $ff
	ld   a, b                                        ; $5e6a: $78
	dec  b                                           ; $5e6b: $05
	db   $fd                                         ; $5e6c: $fd
	add  b                                           ; $5e6d: $80
	ldh  a, [c]                                      ; $5e6e: $f2
	add  b                                           ; $5e6f: $80
	ldh  [c], a                                      ; $5e70: $e2
	rlca                                             ; $5e71: $07

jr_01d_5e72:
	adc  [hl]                                        ; $5e72: $8e
	add  [hl]                                        ; $5e73: $86
	ld   d, $07                                      ; $5e74: $16 $07
	dec  [hl]                                        ; $5e76: $35
	rla                                              ; $5e77: $17
	rst  $30                                         ; $5e78: $f7
	scf                                              ; $5e79: $37
	add  b                                           ; $5e7a: $80
	xor  e                                           ; $5e7b: $ab
	dec  b                                           ; $5e7c: $05
	db   $e4                                         ; $5e7d: $e4
	ldh  [$74], a                                    ; $5e7e: $e0 $74
	ld   [hl], b                                     ; $5e80: $70
	or   [hl]                                        ; $5e81: $b6
	or   h                                           ; $5e82: $b4
	add  b                                           ; $5e83: $80
	sbc  h                                           ; $5e84: $9c
	ld   [$2c2d], sp                                 ; $5e85: $08 $2d $2c
	dec  h                                           ; $5e88: $25
	and  l                                           ; $5e89: $a5
	adc  c                                           ; $5e8a: $89
	ret                                              ; $5e8b: $c9


	ret  z                                           ; $5e8c: $c8

	jp   hl                                          ; $5e8d: $e9


	ld   e, $87                                      ; $5e8e: $1e $87
	nop                                              ; $5e90: $00
	ld   b, $80                                      ; $5e91: $06 $80
	nop                                              ; $5e93: $00
	ret  nz                                          ; $5e94: $c0

	add  b                                           ; $5e95: $80
	and  b                                           ; $5e96: $a0
	add  b                                           ; $5e97: $80
	ldh  [rIE], a                                    ; $5e98: $e0 $ff
	nop                                              ; $5e9a: $00
	rst  $38                                         ; $5e9b: $ff
	nop                                              ; $5e9c: $00
	cp   e                                           ; $5e9d: $bb
	nop                                              ; $5e9e: $00
	add  b                                           ; $5e9f: $80
	nop                                              ; $5ea0: $00
	add  h                                           ; $5ea1: $84
	nop                                              ; $5ea2: $00
	db   $10                                         ; $5ea3: $10
	ld   a, h                                        ; $5ea4: $7c
	inc  bc                                          ; $5ea5: $03
	ld   a, h                                        ; $5ea6: $7c
	rst  $38                                         ; $5ea7: $ff
	nop                                              ; $5ea8: $00
	db   $fc                                         ; $5ea9: $fc
	ret  nz                                          ; $5eaa: $c0

	rst  $38                                         ; $5eab: $ff
	pop  bc                                          ; $5eac: $c1
	cp   $f0                                         ; $5ead: $fe $f0
	nop                                              ; $5eaf: $00
	or   h                                           ; $5eb0: $b4
	jr   c, jr_01d_5ef7                              ; $5eb1: $38 $44

	nop                                              ; $5eb3: $00
	jr   c, @-$69                                    ; $5eb4: $38 $95

	nop                                              ; $5eb6: $00
	ld   b, $80                                      ; $5eb7: $06 $80

jr_01d_5eb9:
	nop                                              ; $5eb9: $00
	ret  nz                                          ; $5eba: $c0

	add  b                                           ; $5ebb: $80
	nop                                              ; $5ebc: $00
	add  b                                           ; $5ebd: $80
	ret  nz                                          ; $5ebe: $c0

	add  l                                           ; $5ebf: $85
	nop                                              ; $5ec0: $00
	nop                                              ; $5ec1: $00
	add  b                                           ; $5ec2: $80
	adc  e                                           ; $5ec3: $8b
	nop                                              ; $5ec4: $00
	add  b                                           ; $5ec5: $80
	inc  bc                                          ; $5ec6: $03
	add  b                                           ; $5ec7: $80
	ld   c, $80                                      ; $5ec8: $0e $80
	inc  e                                           ; $5eca: $1c
	ld   c, $7c                                      ; $5ecb: $0e $7c
	inc  e                                           ; $5ecd: $1c
	rst  JumpTable                                         ; $5ece: $df
	ld   a, h                                        ; $5ecf: $7c
	add  hl, sp                                      ; $5ed0: $39
	ld   a, h                                        ; $5ed1: $7c
	ld   a, d                                        ; $5ed2: $7a
	ld   a, b                                        ; $5ed3: $78
	ld   [hl], b                                     ; $5ed4: $70
	ld   a, b                                        ; $5ed5: $78
	ld   h, h                                        ; $5ed6: $64
	jr   nc, jr_01d_5eb9                             ; $5ed7: $30 $e0

	nop                                              ; $5ed9: $00
	jr   nc, jr_01d_5e5f                             ; $5eda: $30 $83

	nop                                              ; $5edc: $00
	ld   [bc], a                                     ; $5edd: $02
	rrca                                             ; $5ede: $0f
	nop                                              ; $5edf: $00
	rlca                                             ; $5ee0: $07
	and  a                                           ; $5ee1: $a7
	nop                                              ; $5ee2: $00
	ld   [bc], a                                     ; $5ee3: $02
	rlca                                             ; $5ee4: $07
	nop                                              ; $5ee5: $00
	ld   [$0781], sp                                 ; $5ee6: $08 $81 $07
	ld   b, $16                                      ; $5ee9: $06 $16
	rrca                                             ; $5eeb: $0f
	dec  e                                           ; $5eec: $1d
	rlca                                             ; $5eed: $07
	rrca                                             ; $5eee: $0f
	inc  bc                                          ; $5eef: $03
	jr   jr_01d_5e72                                 ; $5ef0: $18 $80

	nop                                              ; $5ef2: $00

jr_01d_5ef3:
	dec  c                                           ; $5ef3: $0d
	rrca                                             ; $5ef4: $0f
	ld   h, b                                        ; $5ef5: $60
	nop                                              ; $5ef6: $00

jr_01d_5ef7:
	ld   hl, sp+$70                                  ; $5ef7: $f8 $70
	ld   l, h                                        ; $5ef9: $6c
	ld   e, b                                        ; $5efa: $58
	ld   l, [hl]                                     ; $5efb: $6e
	ld   a, h                                        ; $5efc: $7c
	dec  c                                           ; $5efd: $0d
	inc  a                                           ; $5efe: $3c
	inc  l                                           ; $5eff: $2c
	ccf                                              ; $5f00: $3f
	ld   e, l                                        ; $5f01: $5d
	add  c                                           ; $5f02: $81
	ld   e, a                                        ; $5f03: $5f
	ld   [$6f6b], sp                                 ; $5f04: $08 $6b $6f
	xor  l                                           ; $5f07: $ad
	cpl                                              ; $5f08: $2f
	ld   a, [hl+]                                    ; $5f09: $2a
	cpl                                              ; $5f0a: $2f
	ld   b, d                                        ; $5f0b: $42
	nop                                              ; $5f0c: $00
	ccf                                              ; $5f0d: $3f
	add  l                                           ; $5f0e: $85
	nop                                              ; $5f0f: $00
	inc  c                                           ; $5f10: $0c
	ccf                                              ; $5f11: $3f
	rra                                              ; $5f12: $1f
	db   $10                                         ; $5f13: $10
	rra                                              ; $5f14: $1f
	ld   sp, $1901                                   ; $5f15: $31 $01 $19
	inc  bc                                          ; $5f18: $03
	ld   b, $00                                      ; $5f19: $06 $00
	di                                               ; $5f1b: $f3
	nop                                              ; $5f1c: $00
	rrca                                             ; $5f1d: $0f
	adc  e                                           ; $5f1e: $8b
	nop                                              ; $5f1f: $00
	ld   b, $f0                                      ; $5f20: $06 $f0
	nop                                              ; $5f22: $00
	inc  c                                           ; $5f23: $0c
	nop                                              ; $5f24: $00
	ld   [bc], a                                     ; $5f25: $02
	nop                                              ; $5f26: $00
	ld   bc, $00a3                                   ; $5f27: $01 $a3 $00
	ld   [bc], a                                     ; $5f2a: $02
	inc  bc                                          ; $5f2b: $03
	nop                                              ; $5f2c: $00
	inc  b                                           ; $5f2d: $04
	add  c                                           ; $5f2e: $81
	inc  bc                                          ; $5f2f: $03
	ld   [bc], a                                     ; $5f30: $02
	ld   [bc], a                                     ; $5f31: $02
	inc  bc                                          ; $5f32: $03
	ld   bc, $0381                                   ; $5f33: $01 $81 $03
	inc  b                                           ; $5f36: $04
	inc  b                                           ; $5f37: $04
	nop                                              ; $5f38: $00
	inc  bc                                          ; $5f39: $03
	nop                                              ; $5f3a: $00
	ld   bc, $0081                                   ; $5f3b: $01 $81 $00
	nop                                              ; $5f3e: $00
	ld   [bc], a                                     ; $5f3f: $02
	add  c                                           ; $5f40: $81
	ld   bc, $0302                                   ; $5f41: $01 $02 $03
	nop                                              ; $5f44: $00
	ld   bc, $0081                                   ; $5f45: $01 $81 $00
	nop                                              ; $5f48: $00
	ld   bc, $0087                                   ; $5f49: $01 $87 $00
	ld   [bc], a                                     ; $5f4c: $02
	ld   [bc], a                                     ; $5f4d: $02
	nop                                              ; $5f4e: $00
	rrca                                             ; $5f4f: $0f
	add  b                                           ; $5f50: $80
	inc  bc                                          ; $5f51: $03
	ld   [bc], a                                     ; $5f52: $02
	rlca                                             ; $5f53: $07
	dec  de                                          ; $5f54: $1b
	rlca                                             ; $5f55: $07
	add  b                                           ; $5f56: $80
	ld   c, $04                                      ; $5f57: $0e $04
	ld   bc, $1009                                   ; $5f59: $01 $09 $10
	nop                                              ; $5f5c: $00
	rrca                                             ; $5f5d: $0f
	add  c                                           ; $5f5e: $81
	nop                                              ; $5f5f: $00
	ld   [bc], a                                     ; $5f60: $02
	ccf                                              ; $5f61: $3f
	nop                                              ; $5f62: $00
	ret  nz                                          ; $5f63: $c0

jr_01d_5f64:
	add  [hl]                                        ; $5f64: $86
	nop                                              ; $5f65: $00
	add  b                                           ; $5f66: $80
	ld   a, b                                        ; $5f67: $78
	inc  b                                           ; $5f68: $04
	db   $fc                                         ; $5f69: $fc
	inc  b                                           ; $5f6a: $04
	db   $fc                                         ; $5f6b: $fc
	ld   sp, hl                                      ; $5f6c: $f9
	db   $fc                                         ; $5f6d: $fc
	add  b                                           ; $5f6e: $80
	db   $e4                                         ; $5f6f: $e4
	add  b                                           ; $5f70: $80
	jr   jr_01d_5ef3                                 ; $5f71: $18 $80

	db   $fc                                         ; $5f73: $fc
	inc  b                                           ; $5f74: $04
	ldh  a, [c]                                      ; $5f75: $f2
	ldh  a, [$0c]                                    ; $5f76: $f0 $0c

jr_01d_5f78:
	nop                                              ; $5f78: $00
	ldh  a, [$8f]                                    ; $5f79: $f0 $8f
	nop                                              ; $5f7b: $00
	ld   [bc], a                                     ; $5f7c: $02
	inc  bc                                          ; $5f7d: $03
	nop                                              ; $5f7e: $00
	inc  b                                           ; $5f7f: $04
	add  b                                           ; $5f80: $80
	nop                                              ; $5f81: $00
	ld   [bc], a                                     ; $5f82: $02
	inc  bc                                          ; $5f83: $03
	nop                                              ; $5f84: $00
	ld   bc, $0382                                   ; $5f85: $01 $82 $03
	ld   b, $01                                      ; $5f88: $06 $01
	inc  bc                                          ; $5f8a: $03
	dec  b                                           ; $5f8b: $05
	ld   bc, $0002                                   ; $5f8c: $01 $02 $00
	ld   bc, $0081                                   ; $5f8f: $01 $81 $00
	add  hl, bc                                      ; $5f92: $09
	inc  a                                           ; $5f93: $3c
	nop                                              ; $5f94: $00
	rst  JumpTable                                         ; $5f95: $df
	inc  e                                           ; $5f96: $1c
	dec  a                                           ; $5f97: $3d
	ccf                                              ; $5f98: $3f
	ld   a, [de]                                     ; $5f99: $1a
	ld   a, a                                        ; $5f9a: $7f
	rra                                              ; $5f9b: $1f
	ccf                                              ; $5f9c: $3f
	add  b                                           ; $5f9d: $80
	ld   a, a                                        ; $5f9e: $7f
	ld   [$7f5f], sp                                 ; $5f9f: $08 $5f $7f
	add  hl, de                                      ; $5fa2: $19
	ld   a, a                                        ; $5fa3: $7f
	ld   [hl], c                                     ; $5fa4: $71
	ld   [hl], b                                     ; $5fa5: $70
	adc  a                                           ; $5fa6: $8f

jr_01d_5fa7:
	nop                                              ; $5fa7: $00
	ld   [hl], b                                     ; $5fa8: $70
	adc  l                                           ; $5fa9: $8d
	nop                                              ; $5faa: $00
	inc  bc                                          ; $5fab: $03
	ld   hl, sp+$00                                  ; $5fac: $f8 $00
	add  a                                           ; $5fae: $87
	add  b                                           ; $5faf: $80
	adc  b                                           ; $5fb0: $88
	nop                                              ; $5fb1: $00
	ld   b, $c0                                      ; $5fb2: $06 $c0
	nop                                              ; $5fb4: $00
	jr   c, jr_01d_5fb7                              ; $5fb5: $38 $00

jr_01d_5fb7:
	ld   b, $00                                      ; $5fb7: $06 $00
	ld   bc, $00c7                                   ; $5fb9: $01 $c7 $00
	db   $10                                         ; $5fbc: $10
	ld   a, h                                        ; $5fbd: $7c
	inc  bc                                          ; $5fbe: $03
	ld   a, h                                        ; $5fbf: $7c
	rst  $38                                         ; $5fc0: $ff
	nop                                              ; $5fc1: $00
	db   $fc                                         ; $5fc2: $fc
	ret  nz                                          ; $5fc3: $c0

	rst  $38                                         ; $5fc4: $ff
	pop  bc                                          ; $5fc5: $c1
	cp   $f0                                         ; $5fc6: $fe $f0
	nop                                              ; $5fc8: $00
	or   h                                           ; $5fc9: $b4
	jr   c, jr_01d_6010                              ; $5fca: $38 $44

	nop                                              ; $5fcc: $00
	jr   c, jr_01d_5f64                              ; $5fcd: $38 $95

	nop                                              ; $5fcf: $00
	ld   b, $80                                      ; $5fd0: $06 $80

jr_01d_5fd2:
	nop                                              ; $5fd2: $00
	ret  nz                                          ; $5fd3: $c0

	add  b                                           ; $5fd4: $80
	nop                                              ; $5fd5: $00
	add  b                                           ; $5fd6: $80
	ret  nz                                          ; $5fd7: $c0

	add  l                                           ; $5fd8: $85
	nop                                              ; $5fd9: $00
	nop                                              ; $5fda: $00
	add  b                                           ; $5fdb: $80
	adc  e                                           ; $5fdc: $8b
	nop                                              ; $5fdd: $00
	add  b                                           ; $5fde: $80
	inc  bc                                          ; $5fdf: $03
	add  b                                           ; $5fe0: $80
	ld   c, $80                                      ; $5fe1: $0e $80
	inc  e                                           ; $5fe3: $1c
	ld   c, $7c                                      ; $5fe4: $0e $7c
	inc  e                                           ; $5fe6: $1c
	rst  JumpTable                                         ; $5fe7: $df
	ld   a, h                                        ; $5fe8: $7c
	add  hl, sp                                      ; $5fe9: $39
	ld   a, h                                        ; $5fea: $7c
	ld   a, d                                        ; $5feb: $7a
	ld   a, b                                        ; $5fec: $78
	ld   [hl], b                                     ; $5fed: $70
	ld   a, b                                        ; $5fee: $78
	ld   h, h                                        ; $5fef: $64
	jr   nc, jr_01d_5fd2                             ; $5ff0: $30 $e0

	nop                                              ; $5ff2: $00
	jr   nc, jr_01d_5f78                             ; $5ff3: $30 $83

	nop                                              ; $5ff5: $00
	ld   [bc], a                                     ; $5ff6: $02
	rrca                                             ; $5ff7: $0f
	nop                                              ; $5ff8: $00
	rlca                                             ; $5ff9: $07
	sub  a                                           ; $5ffa: $97
	nop                                              ; $5ffb: $00
	jr   jr_01d_603e                                 ; $5ffc: $18 $40

	nop                                              ; $5ffe: $00
	ldh  [rLCDC], a                                  ; $5fff: $e0 $40
	jr   @+$62                                       ; $6001: $18 $60

	ld   l, h                                        ; $6003: $6c
	ld   a, b                                        ; $6004: $78
	ld   [hl], a                                     ; $6005: $77
	ld   a, h                                        ; $6006: $7c
	ld   a, b                                        ; $6007: $78
	ld   a, [hl]                                     ; $6008: $7e
	sbc  $3e                                         ; $6009: $de $3e
	ld   e, [hl]                                     ; $600b: $5e
	ld   e, $1c                                      ; $600c: $1e $1c
	ld   e, $0e                                      ; $600e: $1e $0e

jr_01d_6010:
	ld   e, $2c                                      ; $6010: $1e $2c
	inc  c                                           ; $6012: $0c
	rrca                                             ; $6013: $0f
	nop                                              ; $6014: $00
	inc  e                                           ; $6015: $1c
	sub  l                                           ; $6016: $95
	nop                                              ; $6017: $00
	ld   [bc], a                                     ; $6018: $02
	rlca                                             ; $6019: $07
	nop                                              ; $601a: $00
	ld   [$0781], sp                                 ; $601b: $08 $81 $07
	ld   b, $16                                      ; $601e: $06 $16
	rrca                                             ; $6020: $0f
	dec  e                                           ; $6021: $1d
	rlca                                             ; $6022: $07
	rrca                                             ; $6023: $0f
	inc  bc                                          ; $6024: $03
	jr   jr_01d_5fa7                                 ; $6025: $18 $80

	nop                                              ; $6027: $00
	db   $10                                         ; $6028: $10
	rrca                                             ; $6029: $0f
	cpl                                              ; $602a: $2f
	rra                                              ; $602b: $1f
	db   $10                                         ; $602c: $10
	rra                                              ; $602d: $1f
	ld   sp, $1901                                   ; $602e: $31 $01 $19
	inc  bc                                          ; $6031: $03
	ld   b, $00                                      ; $6032: $06 $00
	di                                               ; $6034: $f3
	nop                                              ; $6035: $00
	rst  $28                                         ; $6036: $ef
	db   $10                                         ; $6037: $10
	ld   c, $01                                      ; $6038: $0e $01
	add  b                                           ; $603a: $80
	nop                                              ; $603b: $00
	nop                                              ; $603c: $00
	add  b                                           ; $603d: $80

jr_01d_603e:
	add  l                                           ; $603e: $85
	nop                                              ; $603f: $00
	add  b                                           ; $6040: $80
	ld   b, b                                        ; $6041: $40
	inc  b                                           ; $6042: $04
	db   $fc                                         ; $6043: $fc
	inc  b                                           ; $6044: $04
	ld   a, a                                        ; $6045: $7f
	nop                                              ; $6046: $00
	rlca                                             ; $6047: $07
	and  e                                           ; $6048: $a3
	nop                                              ; $6049: $00
	ld   [bc], a                                     ; $604a: $02
	inc  bc                                          ; $604b: $03
	nop                                              ; $604c: $00
	inc  b                                           ; $604d: $04
	add  c                                           ; $604e: $81
	inc  bc                                          ; $604f: $03
	ld   [bc], a                                     ; $6050: $02
	ld   [bc], a                                     ; $6051: $02
	inc  bc                                          ; $6052: $03
	dec  c                                           ; $6053: $0d
	add  c                                           ; $6054: $81
	rlca                                             ; $6055: $07
	inc  b                                           ; $6056: $04
	ld   [$0700], sp                                 ; $6057: $08 $00 $07
	nop                                              ; $605a: $00
	ld   bc, $0081                                   ; $605b: $01 $81 $00
	nop                                              ; $605e: $00
	ld   [bc], a                                     ; $605f: $02
	add  c                                           ; $6060: $81
	ld   bc, $030c                                   ; $6061: $01 $0c $03
	nop                                              ; $6064: $00
	ld   bc, $0100                                   ; $6065: $01 $00 $01
	nop                                              ; $6068: $00
	rlca                                             ; $6069: $07
	nop                                              ; $606a: $00
	ld   c, $00                                      ; $606b: $0e $00
	inc  b                                           ; $606d: $04
	nop                                              ; $606e: $00
	inc  de                                          ; $606f: $13
	add  b                                           ; $6070: $80
	inc  c                                           ; $6071: $0c
	add  b                                           ; $6072: $80
	rrca                                             ; $6073: $0f
	dec  d                                           ; $6074: $15
	ld   c, $1e                                      ; $6075: $0e $1e
	ld   bc, $0f19                                   ; $6077: $01 $19 $0f
	daa                                              ; $607a: $27
	rra                                              ; $607b: $1f
	ld   d, $1f                                      ; $607c: $16 $1f
	ld   e, $1f                                      ; $607e: $1e $1f
	ld   de, $2206                                   ; $6080: $11 $06 $22
	ld   c, $1d                                      ; $6083: $0e $1d
	nop                                              ; $6085: $00
	ld   sp, $ff00                                   ; $6086: $31 $00 $ff
	nop                                              ; $6089: $00
	ret  nz                                          ; $608a: $c0

	add  c                                           ; $608b: $81
	nop                                              ; $608c: $00
	ld   [$0002], sp                                 ; $608d: $08 $02 $00
	add  c                                           ; $6090: $81
	ld   bc, $0141                                   ; $6091: $01 $41 $01
	ld   sp, $0d01                                   ; $6094: $31 $01 $0d
	add  b                                           ; $6097: $80
	di                                               ; $6098: $f3
	add  hl, bc                                      ; $6099: $09
	ld   hl, sp-$05                                  ; $609a: $f8 $fb
	ld   hl, sp+$18                                  ; $609c: $f8 $18
	ld   hl, sp-$64                                  ; $609e: $f8 $9c
	add  b                                           ; $60a0: $80
	ld   a, b                                        ; $60a1: $78
	nop                                              ; $60a2: $00
	add  b                                           ; $60a3: $80
	add  c                                           ; $60a4: $81
	nop                                              ; $60a5: $00
	inc  b                                           ; $60a6: $04
	rlca                                             ; $60a7: $07
	nop                                              ; $60a8: $00
	ld   c, $06                                      ; $60a9: $0e $06
	inc  b                                           ; $60ab: $04
	add  e                                           ; $60ac: $83
	ld   b, $00                                      ; $60ad: $06 $00
	dec  bc                                          ; $60af: $0b
	add  c                                           ; $60b0: $81
	inc  bc                                          ; $60b1: $03
	ld   [bc], a                                     ; $60b2: $02
	ld   [bc], a                                     ; $60b3: $02
	nop                                              ; $60b4: $00
	rlca                                             ; $60b5: $07
	sub  a                                           ; $60b6: $97
	nop                                              ; $60b7: $00
	inc  c                                           ; $60b8: $0c
	ld   a, [hl]                                     ; $60b9: $7e
	nop                                              ; $60ba: $00
	add  c                                           ; $60bb: $81
	ld   a, [hl]                                     ; $60bc: $7e
	ld   l, [hl]                                     ; $60bd: $6e
	ld   a, [hl]                                     ; $60be: $7e
	ld   e, [hl]                                     ; $60bf: $5e
	ld   a, d                                        ; $60c0: $7a
	dec  sp                                          ; $60c1: $3b
	ld   a, h                                        ; $60c2: $7c
	sbc  h                                           ; $60c3: $9c
	inc  e                                           ; $60c4: $1c
	ld   c, h                                        ; $60c5: $4c
	add  b                                           ; $60c6: $80
	inc  e                                           ; $60c7: $1c
	rlca                                             ; $60c8: $07
	jr   jr_01d_6107                                 ; $60c9: $18 $3c

	nop                                              ; $60cb: $00
	jr   jr_01d_60ce                                 ; $60cc: $18 $00

jr_01d_60ce:
	ld   bc, $0300                                   ; $60ce: $01 $00 $03
	adc  c                                           ; $60d1: $89
	nop                                              ; $60d2: $00
	ld   b, $f0                                      ; $60d3: $06 $f0
	nop                                              ; $60d5: $00
	xor  $10                                         ; $60d6: $ee $10
	rrca                                             ; $60d8: $0f
	nop                                              ; $60d9: $00
	ld   bc, $0081                                   ; $60da: $01 $81 $00
	inc  bc                                          ; $60dd: $03
	ld   [$0c00], sp                                 ; $60de: $08 $00 $0c
	nop                                              ; $60e1: $00
	add  b                                           ; $60e2: $80
	ld   [bc], a                                     ; $60e3: $02
	ld   [$0107], sp                                 ; $60e4: $08 $07 $01
	di                                               ; $60e7: $f3
	db   $10                                         ; $60e8: $10
	db   $fc                                         ; $60e9: $fc
	inc  b                                           ; $60ea: $04
	rra                                              ; $60eb: $1f
	nop                                              ; $60ec: $00
	rlca                                             ; $60ed: $07
	add  c                                           ; $60ee: $81
	nop                                              ; $60ef: $00
	nop                                              ; $60f0: $00
	ld   bc, $00b5                                   ; $60f1: $01 $b5 $00
	ld   a, [$8400]                                  ; $60f4: $fa $00 $84
	nop                                              ; $60f7: $00
	ld   bc, $0b03                                   ; $60f8: $01 $03 $0b
	add  d                                           ; $60fb: $82
	nop                                              ; $60fc: $00
	ld   [bc], a                                     ; $60fd: $02
	dec  bc                                          ; $60fe: $0b
	inc  bc                                          ; $60ff: $03
	ld   [$0083], sp                                 ; $6100: $08 $83 $00
	nop                                              ; $6103: $00
	inc  b                                           ; $6104: $04
	add  c                                           ; $6105: $81
	nop                                              ; $6106: $00

jr_01d_6107:
	ld   [bc], a                                     ; $6107: $02
	ld   [$0400], sp                                 ; $6108: $08 $00 $04
	add  h                                           ; $610b: $84
	nop                                              ; $610c: $00
	nop                                              ; $610d: $00
	rrca                                             ; $610e: $0f
	add  c                                           ; $610f: $81
	nop                                              ; $6110: $00
	ld   [bc], a                                     ; $6111: $02
	rrca                                             ; $6112: $0f
	ld   b, e                                        ; $6113: $43
	ld   c, e                                        ; $6114: $4b
	add  d                                           ; $6115: $82
	nop                                              ; $6116: $00
	ld   [bc], a                                     ; $6117: $02
	ld   c, e                                        ; $6118: $4b
	ld   b, e                                        ; $6119: $43
	ld   [$0083], sp                                 ; $611a: $08 $83 $00
	nop                                              ; $611d: $00
	inc  b                                           ; $611e: $04
	add  c                                           ; $611f: $81
	nop                                              ; $6120: $00
	ld   [bc], a                                     ; $6121: $02
	ld   [$0400], sp                                 ; $6122: $08 $00 $04
	add  h                                           ; $6125: $84
	nop                                              ; $6126: $00
	nop                                              ; $6127: $00
	rrca                                             ; $6128: $0f
	add  c                                           ; $6129: $81
	nop                                              ; $612a: $00
	nop                                              ; $612b: $00
	rrca                                             ; $612c: $0f
	add  l                                           ; $612d: $85
	nop                                              ; $612e: $00
	ld   bc, $0902                                   ; $612f: $01 $02 $09
	add  c                                           ; $6132: $81
	nop                                              ; $6133: $00
	inc  b                                           ; $6134: $04
	ld   [$0700], sp                                 ; $6135: $08 $00 $07
	nop                                              ; $6138: $00
	ld   [$0081], sp                                 ; $6139: $08 $81 $00
	nop                                              ; $613c: $00
	inc  c                                           ; $613d: $0c
	add  h                                           ; $613e: $84
	nop                                              ; $613f: $00
	nop                                              ; $6140: $00
	rrca                                             ; $6141: $0f
	add  c                                           ; $6142: $81
	nop                                              ; $6143: $00
	nop                                              ; $6144: $00
	rrca                                             ; $6145: $0f
	add  l                                           ; $6146: $85
	nop                                              ; $6147: $00
	ld   bc, $0902                                   ; $6148: $01 $02 $09
	add  c                                           ; $614b: $81
	nop                                              ; $614c: $00
	inc  b                                           ; $614d: $04
	ld   [$0700], sp                                 ; $614e: $08 $00 $07
	nop                                              ; $6151: $00
	ld   [$0081], sp                                 ; $6152: $08 $81 $00
	nop                                              ; $6155: $00
	inc  c                                           ; $6156: $0c
	add  h                                           ; $6157: $84
	nop                                              ; $6158: $00
	nop                                              ; $6159: $00
	rrca                                             ; $615a: $0f
	add  c                                           ; $615b: $81
	nop                                              ; $615c: $00
	nop                                              ; $615d: $00
	rrca                                             ; $615e: $0f
	add  b                                           ; $615f: $80
	nop                                              ; $6160: $00
	nop                                              ; $6161: $00
	dec  b                                           ; $6162: $05
	add  b                                           ; $6163: $80
	nop                                              ; $6164: $00
	dec  b                                           ; $6165: $05
	dec  b                                           ; $6166: $05
	nop                                              ; $6167: $00
	ld   [bc], a                                     ; $6168: $02
	ld   bc, $0800                                   ; $6169: $01 $00 $08
	add  c                                           ; $616c: $81
	nop                                              ; $616d: $00
	ld   [bc], a                                     ; $616e: $02
	rrca                                             ; $616f: $0f
	nop                                              ; $6170: $00
	ld   [$0081], sp                                 ; $6171: $08 $81 $00
	nop                                              ; $6174: $00
	inc  c                                           ; $6175: $0c
	adc  d                                           ; $6176: $8a
	nop                                              ; $6177: $00
	nop                                              ; $6178: $00
	dec  b                                           ; $6179: $05
	add  d                                           ; $617a: $82
	nop                                              ; $617b: $00
	inc  b                                           ; $617c: $04
	dec  b                                           ; $617d: $05
	ld   [bc], a                                     ; $617e: $02
	ld   bc, $0800                                   ; $617f: $01 $00 $08
	add  c                                           ; $6182: $81
	nop                                              ; $6183: $00
	ld   [bc], a                                     ; $6184: $02
	rrca                                             ; $6185: $0f
	nop                                              ; $6186: $00
	ld   [$0081], sp                                 ; $6187: $08 $81 $00
	nop                                              ; $618a: $00
	inc  c                                           ; $618b: $0c
	adc  d                                           ; $618c: $8a
	nop                                              ; $618d: $00
	nop                                              ; $618e: $00
	dec  b                                           ; $618f: $05
	add  d                                           ; $6190: $82
	nop                                              ; $6191: $00
	inc  b                                           ; $6192: $04
	dec  b                                           ; $6193: $05
	ld   [bc], a                                     ; $6194: $02
	ld   bc, $0800                                   ; $6195: $01 $00 $08
	add  c                                           ; $6198: $81
	nop                                              ; $6199: $00
	ld   [bc], a                                     ; $619a: $02
	rrca                                             ; $619b: $0f
	nop                                              ; $619c: $00
	ld   [$0081], sp                                 ; $619d: $08 $81 $00
	nop                                              ; $61a0: $00
	inc  c                                           ; $61a1: $0c
	adc  d                                           ; $61a2: $8a
	nop                                              ; $61a3: $00
	nop                                              ; $61a4: $00
	dec  b                                           ; $61a5: $05
	add  d                                           ; $61a6: $82
	nop                                              ; $61a7: $00
	inc  b                                           ; $61a8: $04
	dec  b                                           ; $61a9: $05
	ld   [bc], a                                     ; $61aa: $02
	ld   bc, $0800                                   ; $61ab: $01 $00 $08
	add  c                                           ; $61ae: $81
	nop                                              ; $61af: $00
	ld   [bc], a                                     ; $61b0: $02
	rrca                                             ; $61b1: $0f
	nop                                              ; $61b2: $00
	ld   [$0081], sp                                 ; $61b3: $08 $81 $00
	nop                                              ; $61b6: $00
	inc  c                                           ; $61b7: $0c
	adc  e                                           ; $61b8: $8b
	nop                                              ; $61b9: $00
	nop                                              ; $61ba: $00
	dec  b                                           ; $61bb: $05
	add  b                                           ; $61bc: $80
	nop                                              ; $61bd: $00
	nop                                              ; $61be: $00
	inc  b                                           ; $61bf: $04
	add  d                                           ; $61c0: $82
	nop                                              ; $61c1: $00
	nop                                              ; $61c2: $00
	ld   [$0081], sp                                 ; $61c3: $08 $81 $00
	nop                                              ; $61c6: $00
	ld   bc, $0084                                   ; $61c7: $01 $84 $00
	nop                                              ; $61ca: $00
	ld   [$0083], sp                                 ; $61cb: $08 $83 $00
	nop                                              ; $61ce: $00
	ld   [$0082], sp                                 ; $61cf: $08 $82 $00
	nop                                              ; $61d2: $00
	add  hl, bc                                      ; $61d3: $09
	add  h                                           ; $61d4: $84
	nop                                              ; $61d5: $00
	inc  bc                                          ; $61d6: $03
	inc  bc                                          ; $61d7: $03
	ld   bc, $0800                                   ; $61d8: $01 $00 $08
	add  c                                           ; $61db: $81
	nop                                              ; $61dc: $00
	nop                                              ; $61dd: $00
	inc  bc                                          ; $61de: $03
	add  h                                           ; $61df: $84
	nop                                              ; $61e0: $00
	nop                                              ; $61e1: $00
	ld   [$0082], sp                                 ; $61e2: $08 $82 $00
	ld   bc, $0901                                   ; $61e5: $01 $01 $09
	add  d                                           ; $61e8: $82
	nop                                              ; $61e9: $00
	nop                                              ; $61ea: $00
	add  hl, bc                                      ; $61eb: $09
	add  h                                           ; $61ec: $84
	nop                                              ; $61ed: $00
	inc  bc                                          ; $61ee: $03
	inc  bc                                          ; $61ef: $03
	ld   bc, $0800                                   ; $61f0: $01 $00 $08
	add  c                                           ; $61f3: $81
	nop                                              ; $61f4: $00
	ld   [bc], a                                     ; $61f5: $02
	ld   [$0800], sp                                 ; $61f6: $08 $00 $08
	add  c                                           ; $61f9: $81
	nop                                              ; $61fa: $00
	nop                                              ; $61fb: $00
	dec  bc                                          ; $61fc: $0b
	add  e                                           ; $61fd: $83
	nop                                              ; $61fe: $00
	nop                                              ; $61ff: $00
	ld   bc, $0085                                   ; $6200: $01 $85 $00
	nop                                              ; $6203: $00
	rlca                                             ; $6204: $07
	add  b                                           ; $6205: $80
	nop                                              ; $6206: $00
	nop                                              ; $6207: $00
	rlca                                             ; $6208: $07
	add  d                                           ; $6209: $82
	nop                                              ; $620a: $00
	nop                                              ; $620b: $00

jr_01d_620c:
	ld   [$0081], sp                                 ; $620c: $08 $81 $00
	nop                                              ; $620f: $00

jr_01d_6210:
	ld   [bc], a                                     ; $6210: $02
	add  b                                           ; $6211: $80
	ld   [$0081], sp                                 ; $6212: $08 $81 $00
	nop                                              ; $6215: $00
	dec  bc                                          ; $6216: $0b
	add  e                                           ; $6217: $83

jr_01d_6218:
	nop                                              ; $6218: $00
	nop                                              ; $6219: $00
	ld   b, $82                                      ; $621a: $06 $82
	nop                                              ; $621c: $00
	ld   [bc], a                                     ; $621d: $02
	jr   nz, jr_01d_6220                             ; $621e: $20 $00

jr_01d_6220:
	jr   nz, @-$74                                   ; $6220: $20 $8a

	nop                                              ; $6222: $00
	ld   [bc], a                                     ; $6223: $02
	ld   [bc], a                                     ; $6224: $02
	nop                                              ; $6225: $00
	ld   [$0081], sp                                 ; $6226: $08 $81 $00
	nop                                              ; $6229: $00
	inc  c                                           ; $622a: $0c
	add  e                                           ; $622b: $83
	nop                                              ; $622c: $00
	nop                                              ; $622d: $00
	ld   b, $8f                                      ; $622e: $06 $8f

jr_01d_6230:
	nop                                              ; $6230: $00
	ld   [bc], a                                     ; $6231: $02
	ld   [$0200], sp                                 ; $6232: $08 $00 $02
	add  b                                           ; $6235: $80
	ld   [$0081], sp                                 ; $6236: $08 $81 $00
	nop                                              ; $6239: $00
	inc  c                                           ; $623a: $0c
	add  e                                           ; $623b: $83
	nop                                              ; $623c: $00
	nop                                              ; $623d: $00
	ld   b, $8b                                      ; $623e: $06 $8b
	nop                                              ; $6240: $00
	ld   b, $0b                                      ; $6241: $06 $0b
	nop                                              ; $6243: $00
	ld   c, $05                                      ; $6244: $0e $05
	ld   [$0e00], sp                                 ; $6246: $08 $00 $0e
	adc  c                                           ; $6249: $89
	nop                                              ; $624a: $00
	nop                                              ; $624b: $00
	ld   b, $8b                                      ; $624c: $06 $8b
	nop                                              ; $624e: $00
	inc  bc                                          ; $624f: $03
	dec  bc                                          ; $6250: $0b
	nop                                              ; $6251: $00
	ld   b, $05                                      ; $6252: $06 $05
	add  b                                           ; $6254: $80
	nop                                              ; $6255: $00
	nop                                              ; $6256: $00
	ld   c, $89                                      ; $6257: $0e $89
	nop                                              ; $6259: $00
	nop                                              ; $625a: $00
	ld   b, $8a                                      ; $625b: $06 $8a
	nop                                              ; $625d: $00
	nop                                              ; $625e: $00
	ld   [$0084], sp                                 ; $625f: $08 $84 $00
	nop                                              ; $6262: $00
	ld   c, $89                                      ; $6263: $0e $89
	nop                                              ; $6265: $00
	nop                                              ; $6266: $00
	ld   c, $83                                      ; $6267: $0e $83
	nop                                              ; $6269: $00
	ld   bc, $2820                                   ; $626a: $01 $20 $28
	adc  d                                           ; $626d: $8a
	nop                                              ; $626e: $00
	nop                                              ; $626f: $00
	ld   b, $89                                      ; $6270: $06 $89
	nop                                              ; $6272: $00
	nop                                              ; $6273: $00
	rlca                                             ; $6274: $07
	sub  b                                           ; $6275: $90
	nop                                              ; $6276: $00
	add  b                                           ; $6277: $80
	jr   nz, @-$76                                   ; $6278: $20 $88

	nop                                              ; $627a: $00
	ld   [bc], a                                     ; $627b: $02
	jr   nz, jr_01d_6286                             ; $627c: $20 $08

	jr   nz, jr_01d_6210                             ; $627e: $20 $90

	nop                                              ; $6280: $00
	add  b                                           ; $6281: $80
	jr   nz, jr_01d_620c                             ; $6282: $20 $88

	nop                                              ; $6284: $00
	add  b                                           ; $6285: $80

jr_01d_6286:
	jr   nz, jr_01d_6218                             ; $6286: $20 $90

	nop                                              ; $6288: $00
	add  b                                           ; $6289: $80
	jr   nz, @-$76                                   ; $628a: $20 $88

	nop                                              ; $628c: $00
	add  b                                           ; $628d: $80
	jr   nz, @-$73                                   ; $628e: $20 $8b

	nop                                              ; $6290: $00
	ld   [bc], a                                     ; $6291: $02
	rlca                                             ; $6292: $07
	nop                                              ; $6293: $00
	rlca                                             ; $6294: $07
	add  b                                           ; $6295: $80
	nop                                              ; $6296: $00
	nop                                              ; $6297: $00
	ld   c, b                                        ; $6298: $48
	adc  b                                           ; $6299: $88
	nop                                              ; $629a: $00
	ld   [bc], a                                     ; $629b: $02
	jr   nz, jr_01d_62e6                             ; $629c: $20 $48

	jr   nz, jr_01d_6230                             ; $629e: $20 $90

	nop                                              ; $62a0: $00
	nop                                              ; $62a1: $00
	rrca                                             ; $62a2: $0f
	adc  c                                           ; $62a3: $89
	nop                                              ; $62a4: $00
	nop                                              ; $62a5: $00
	ld   b, a                                        ; $62a6: $47
	sub  b                                           ; $62a7: $90
	nop                                              ; $62a8: $00
	ld   bc, $6720                                   ; $62a9: $01 $20 $67
	adc  c                                           ; $62ac: $89
	nop                                              ; $62ad: $00
	nop                                              ; $62ae: $00
	rrca                                             ; $62af: $0f
	add  b                                           ; $62b0: $80
	nop                                              ; $62b1: $00
	add  b                                           ; $62b2: $80
	ld   [$0081], sp                                 ; $62b3: $08 $81 $00
	nop                                              ; $62b6: $00
	ld   [$0084], sp                                 ; $62b7: $08 $84 $00
	ld   bc, $0f08                                   ; $62ba: $01 $08 $0f
	adc  l                                           ; $62bd: $8d
	nop                                              ; $62be: $00
	nop                                              ; $62bf: $00
	rrca                                             ; $62c0: $0f
	add  b                                           ; $62c1: $80
	nop                                              ; $62c2: $00
	add  b                                           ; $62c3: $80
	ld   [$0081], sp                                 ; $62c4: $08 $81 $00
	nop                                              ; $62c7: $00
	ld   [$0084], sp                                 ; $62c8: $08 $84 $00
	ld   bc, $0f08                                   ; $62cb: $01 $08 $0f
	adc  l                                           ; $62ce: $8d
	nop                                              ; $62cf: $00
	nop                                              ; $62d0: $00
	rrca                                             ; $62d1: $0f
	adc  [hl]                                        ; $62d2: $8e
	nop                                              ; $62d3: $00
	ld   bc, $0008                                   ; $62d4: $01 $08 $00
	add  b                                           ; $62d7: $80
	ld   [$0080], sp                                 ; $62d8: $08 $80 $00
	nop                                              ; $62db: $00
	ld   [$0097], sp                                 ; $62dc: $08 $97 $00
	ld   bc, $0008                                   ; $62df: $01 $08 $00
	add  b                                           ; $62e2: $80
	ld   [$0080], sp                                 ; $62e3: $08 $80 $00

jr_01d_62e6:
	nop                                              ; $62e6: $00
	ld   [$0086], sp                                 ; $62e7: $08 $86 $00
	nop                                              ; $62ea: $00
	ld   [$0082], sp                                 ; $62eb: $08 $82 $00
	ld   [bc], a                                     ; $62ee: $02
	ld   [$0800], sp                                 ; $62ef: $08 $00 $08
	add  h                                           ; $62f2: $84
	nop                                              ; $62f3: $00
	nop                                              ; $62f4: $00
	ld   [$0082], sp                                 ; $62f5: $08 $82 $00
	ld   bc, $0008                                   ; $62f8: $01 $08 $00
	add  b                                           ; $62fb: $80
	ld   [$0001], sp                                 ; $62fc: $08 $01 $00
	ld   [$0080], sp                                 ; $62ff: $08 $80 $00
	ld   bc, $0008                                   ; $6302: $01 $08 $00
	add  b                                           ; $6305: $80
	ld   [rRAMG], sp                                 ; $6306: $08 $00 $00
	add  b                                           ; $6309: $80
	ld   [rRAMG], sp                                 ; $630a: $08 $00 $00
	add  c                                           ; $630d: $81
	ld   [$0001], sp                                 ; $630e: $08 $01 $00
	ld   [$0084], sp                                 ; $6311: $08 $84 $00
	nop                                              ; $6314: $00
	ld   [$0082], sp                                 ; $6315: $08 $82 $00
	ld   bc, $0008                                   ; $6318: $01 $08 $00
	add  b                                           ; $631b: $80
	ld   [$0001], sp                                 ; $631c: $08 $01 $00
	ld   [$0080], sp                                 ; $631f: $08 $80 $00
	ld   bc, $0008                                   ; $6322: $01 $08 $00
	add  b                                           ; $6325: $80
	ld   [$0082], sp                                 ; $6326: $08 $82 $00
	nop                                              ; $6329: $00
	ld   [$0080], sp                                 ; $632a: $08 $80 $00
	add  c                                           ; $632d: $81
	ld   [$0084], sp                                 ; $632e: $08 $84 $00
	ld   bc, $0f08                                   ; $6331: $01 $08 $0f
	adc  l                                           ; $6334: $8d
	nop                                              ; $6335: $00
	nop                                              ; $6336: $00
	rlca                                             ; $6337: $07
	add  b                                           ; $6338: $80
	nop                                              ; $6339: $00
	nop                                              ; $633a: $00
	ld   [$0080], sp                                 ; $633b: $08 $80 $00
	add  c                                           ; $633e: $81
	ld   [$0084], sp                                 ; $633f: $08 $84 $00
	ld   bc, $0f08                                   ; $6342: $01 $08 $0f
	adc  l                                           ; $6345: $8d
	nop                                              ; $6346: $00
	jp   nz, $8100                                   ; $6347: $c2 $00 $81

	nop                                              ; $634a: $00
	dec  bc                                          ; $634b: $0b
	rrca                                             ; $634c: $0f
	ld   c, $01                                      ; $634d: $0e $01
	ld   [bc], a                                     ; $634f: $02
	inc  bc                                          ; $6350: $03
	dec  b                                           ; $6351: $05
	ld   b, $0a                                      ; $6352: $06 $0a
	inc  c                                           ; $6354: $0c
	inc  bc                                          ; $6355: $03
	rrca                                             ; $6356: $0f
	ld   [$0f80], sp                                 ; $6357: $08 $80 $0f
	add  b                                           ; $635a: $80
	nop                                              ; $635b: $00
	add  b                                           ; $635c: $80
	rst  $38                                         ; $635d: $ff
	add  b                                           ; $635e: $80
	add  b                                           ; $635f: $80
	add  c                                           ; $6360: $81
	nop                                              ; $6361: $00
	add  b                                           ; $6362: $80
	ld   bc, $fe02                                   ; $6363: $01 $02 $fe
	rst  $38                                         ; $6366: $ff
	ld   bc, $fe80                                   ; $6367: $01 $80 $fe
	add  b                                           ; $636a: $80
	nop                                              ; $636b: $00
	inc  b                                           ; $636c: $04
	rst  $38                                         ; $636d: $ff
	cp   a                                           ; $636e: $bf
	ld   h, b                                        ; $636f: $60
	and  d                                           ; $6370: $a2
	jp   nz, $d580                                   ; $6371: $c2 $80 $d5

	inc  bc                                          ; $6374: $03
	ld   l, e                                        ; $6375: $6b
	xor  e                                           ; $6376: $ab
	rst  JumpTable                                         ; $6377: $df
	ld   e, a                                        ; $6378: $5f
	add  b                                           ; $6379: $80
	rst  $38                                         ; $637a: $ff
	add  c                                           ; $637b: $81
	nop                                              ; $637c: $00
	inc  b                                           ; $637d: $04
	rst  $38                                         ; $637e: $ff
	rst  $30                                         ; $637f: $f7
	inc  c                                           ; $6380: $0c
	or   h                                           ; $6381: $b4
	cp   b                                           ; $6382: $b8
	add  b                                           ; $6383: $80
	ld   a, c                                        ; $6384: $79
	dec  bc                                          ; $6385: $0b
	rst  $28                                         ; $6386: $ef
	rst  $30                                         ; $6387: $f7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6388: $cf
	rst  $38                                         ; $6389: $ff
	ldh  [rIE], a                                    ; $638a: $e0 $ff
	dec  a                                           ; $638c: $3d
	ld   [bc], a                                     ; $638d: $02
	nop                                              ; $638e: $00
	rst  $38                                         ; $638f: $ff
	ld   [$8017], a                                  ; $6390: $ea $17 $80
	xor  d                                           ; $6393: $aa
	ld   bc, $7d7b                                   ; $6394: $01 $7b $7d
	add  d                                           ; $6397: $82
	db   $fd                                         ; $6398: $fd
	rlca                                             ; $6399: $07
	rlca                                             ; $639a: $07
	ei                                               ; $639b: $fb
	ld   b, a                                        ; $639c: $47
	cp   a                                           ; $639d: $bf
	nop                                              ; $639e: $00
	rst  $38                                         ; $639f: $ff
	xor  b                                           ; $63a0: $a8
	ld   d, a                                        ; $63a1: $57
	add  b                                           ; $63a2: $80
	cp   a                                           ; $63a3: $bf
	add  b                                           ; $63a4: $80
	rst  $38                                         ; $63a5: $ff
	nop                                              ; $63a6: $00
	cp   $83                                         ; $63a7: $fe $83
	rst  $38                                         ; $63a9: $ff
	dec  b                                           ; $63aa: $05
	cp   $ff                                         ; $63ab: $fe $ff
	nop                                              ; $63ad: $00
	rst  $38                                         ; $63ae: $ff
	cp   a                                           ; $63af: $bf
	ret  nz                                          ; $63b0: $c0

	add  d                                           ; $63b1: $82
	cp   a                                           ; $63b2: $bf
	nop                                              ; $63b3: $00
	rst  $38                                         ; $63b4: $ff
	add  c                                           ; $63b5: $81
	ld   a, a                                        ; $63b6: $7f
	rlca                                             ; $63b7: $07
	nop                                              ; $63b8: $00
	rst  $38                                         ; $63b9: $ff
	nop                                              ; $63ba: $00
	rst  $38                                         ; $63bb: $ff
	nop                                              ; $63bc: $00
	rst  $38                                         ; $63bd: $ff
	xor  a                                           ; $63be: $af
	ld   [hl], b                                     ; $63bf: $70
	add  h                                           ; $63c0: $84
	rst  $28                                         ; $63c1: $ef
	add  hl, bc                                      ; $63c2: $09
	cp   a                                           ; $63c3: $bf
	rst  JumpTable                                         ; $63c4: $df
	ld   e, a                                        ; $63c5: $5f
	rst  JumpTable                                         ; $63c6: $df
	ccf                                              ; $63c7: $3f
	rst  $38                                         ; $63c8: $ff
	nop                                              ; $63c9: $00
	rst  $38                                         ; $63ca: $ff
	sub  a                                           ; $63cb: $97
	ld   a, b                                        ; $63cc: $78
	add  [hl]                                        ; $63cd: $86
	rst  $30                                         ; $63ce: $f7
	ld   [$fff0], sp                                 ; $63cf: $08 $f0 $ff
	ldh  [rIE], a                                    ; $63d2: $e0 $ff
	nop                                              ; $63d4: $00
	rst  $38                                         ; $63d5: $ff
	push hl                                          ; $63d6: $e5
	ld   e, $f5                                      ; $63d7: $1e $f5
	add  l                                           ; $63d9: $85
	db   $fd                                         ; $63da: $fd
	inc  b                                           ; $63db: $04
	inc  c                                           ; $63dc: $0c
	cp   $01                                         ; $63dd: $fe $01
	rst  $38                                         ; $63df: $ff
	nop                                              ; $63e0: $00
	add  b                                           ; $63e1: $80
	rst  $38                                         ; $63e2: $ff
	nop                                              ; $63e3: $00
	ld   bc, $ff82                                   ; $63e4: $01 $82 $ff
	nop                                              ; $63e7: $00
	cp   $85                                         ; $63e8: $fe $85
	rst  $38                                         ; $63ea: $ff
	inc  bc                                          ; $63eb: $03
	nop                                              ; $63ec: $00
	rst  $38                                         ; $63ed: $ff
	ld   a, a                                        ; $63ee: $7f
	add  b                                           ; $63ef: $80
	add  d                                           ; $63f0: $82
	ld   a, a                                        ; $63f1: $7f
	nop                                              ; $63f2: $00
	ccf                                              ; $63f3: $3f
	add  c                                           ; $63f4: $81
	cp   a                                           ; $63f5: $bf
	inc  bc                                          ; $63f6: $03
	add  b                                           ; $63f7: $80
	rst  $38                                         ; $63f8: $ff
	rst  JumpTable                                         ; $63f9: $df
	and  b                                           ; $63fa: $a0
	add  c                                           ; $63fb: $81
	sub  b                                           ; $63fc: $90
	nop                                              ; $63fd: $00
	ld   d, b                                        ; $63fe: $50
	add  b                                           ; $63ff: $80
	ret  z                                           ; $6400: $c8

	ld   bc, $e888                                   ; $6401: $01 $88 $e8
	add  d                                           ; $6404: $82
	db   $e4                                         ; $6405: $e4
	ld   [bc], a                                     ; $6406: $02
	ld   [hl+], a                                    ; $6407: $22
	ldh  a, [c]                                      ; $6408: $f2
	ldh  a, [$8d]                                    ; $6409: $f0 $8d
	nop                                              ; $640b: $00
	add  b                                           ; $640c: $80
	ld   bc, $0000                                   ; $640d: $01 $00 $00
	add  b                                           ; $6410: $80
	ld   bc, $0089                                   ; $6411: $01 $89 $00
	inc  b                                           ; $6414: $04
	add  b                                           ; $6415: $80
	ret  nz                                          ; $6416: $c0

	ld   h, b                                        ; $6417: $60
	ccf                                              ; $6418: $3f
	rra                                              ; $6419: $1f
	add  b                                           ; $641a: $80
	ret  nz                                          ; $641b: $c0

	add  b                                           ; $641c: $80
	ccf                                              ; $641d: $3f
	nop                                              ; $641e: $00
	nop                                              ; $641f: $00
	add  b                                           ; $6420: $80
	ld   bc, $0088                                   ; $6421: $01 $88 $00
	add  b                                           ; $6424: $80
	dec  b                                           ; $6425: $05
	add  b                                           ; $6426: $80
	dec  bc                                          ; $6427: $0b
	add  b                                           ; $6428: $80
	rlca                                             ; $6429: $07
	add  b                                           ; $642a: $80
	rrca                                             ; $642b: $0f
	ld   c, $0e                                      ; $642c: $0e $0e
	rrca                                             ; $642e: $0f
	dec  c                                           ; $642f: $0d
	ld   c, $5b                                      ; $6430: $0e $5b
	ld   e, l                                        ; $6432: $5d
	or   a                                           ; $6433: $b7
	cp   e                                           ; $6434: $bb
	ld   l, a                                        ; $6435: $6f
	ld   [hl], a                                     ; $6436: $77
	rst  JumpTable                                         ; $6437: $df
	rst  $28                                         ; $6438: $ef
	sbc  a                                           ; $6439: $9f
	rst  $38                                         ; $643a: $ff
	ld   b, b                                        ; $643b: $40
	add  b                                           ; $643c: $80
	rst  $38                                         ; $643d: $ff
	ld   bc, $7f80                                   ; $643e: $01 $80 $7f
	add  e                                           ; $6441: $83
	rst  $38                                         ; $6442: $ff
	ld   [bc], a                                     ; $6443: $02
	cp   $ff                                         ; $6444: $fe $ff
	db   $fd                                         ; $6446: $fd
	add  c                                           ; $6447: $81
	cp   $00                                         ; $6448: $fe $00
	inc  bc                                          ; $644a: $03
	add  b                                           ; $644b: $80
	db   $fd                                         ; $644c: $fd
	inc  b                                           ; $644d: $04
	dec  c                                           ; $644e: $0d
	adc  h                                           ; $644f: $8c
	ret  nz                                          ; $6450: $c0

	ld   e, a                                        ; $6451: $5f
	sbc  a                                           ; $6452: $9f
	add  b                                           ; $6453: $80
	cp   a                                           ; $6454: $bf
	ld   bc, $7fff                                   ; $6455: $01 $ff $7f
	add  [hl]                                        ; $6458: $86
	rst  $38                                         ; $6459: $ff
	ld   [bc], a                                     ; $645a: $02
	inc  de                                          ; $645b: $13
	dec  de                                          ; $645c: $1b
	rst  $28                                         ; $645d: $ef
	add  c                                           ; $645e: $81
	rst  $30                                         ; $645f: $f7
	nop                                              ; $6460: $00
	rst  JumpTable                                         ; $6461: $df
	add  c                                           ; $6462: $81
	rst  $28                                         ; $6463: $ef
	rlca                                             ; $6464: $07
	cp   a                                           ; $6465: $bf
	rst  JumpTable                                         ; $6466: $df
	ret  nz                                          ; $6467: $c0

	rst  $38                                         ; $6468: $ff
	ccf                                              ; $6469: $3f
	ret  nz                                          ; $646a: $c0

	ld   a, l                                        ; $646b: $7d
	rst  $38                                         ; $646c: $ff
	add  d                                           ; $646d: $82
	cp   $00                                         ; $646e: $fe $00
	ei                                               ; $6470: $fb
	add  e                                           ; $6471: $83
	db   $fd                                         ; $6472: $fd
	nop                                              ; $6473: $00
	rlca                                             ; $6474: $07
	add  b                                           ; $6475: $80
	ei                                               ; $6476: $fb
	ld   [bc], a                                     ; $6477: $02
	dec  bc                                          ; $6478: $0b
	ld   [$8400], sp                                 ; $6479: $08 $00 $84
	rst  $38                                         ; $647c: $ff
	nop                                              ; $647d: $00
	cp   $85                                         ; $647e: $fe $85
	rst  $38                                         ; $6480: $ff
	ld   [bc], a                                     ; $6481: $02
	sbc  [hl]                                        ; $6482: $9e
	rst  JumpTable                                         ; $6483: $df
	ld   e, a                                        ; $6484: $5f
	add  e                                           ; $6485: $83
	rst  JumpTable                                         ; $6486: $df
	nop                                              ; $6487: $00
	rst  $38                                         ; $6488: $ff
	add  c                                           ; $6489: $81
	cp   a                                           ; $648a: $bf
	nop                                              ; $648b: $00
	add  b                                           ; $648c: $80
	add  b                                           ; $648d: $80
	rst  $38                                         ; $648e: $ff
	ld   [bc], a                                     ; $648f: $02
	add  b                                           ; $6490: $80
	ld   l, h                                        ; $6491: $6c
	db   $fc                                         ; $6492: $fc
	add  b                                           ; $6493: $80
	ei                                               ; $6494: $fb
	add  [hl]                                        ; $6495: $86
	rst  $30                                         ; $6496: $f7
	nop                                              ; $6497: $00
	rla                                              ; $6498: $17
	add  b                                           ; $6499: $80
	rst  $30                                         ; $649a: $f7
	ld   [bc], a                                     ; $649b: $02
	rla                                              ; $649c: $17
	inc  d                                           ; $649d: $14
	ld   b, $89                                      ; $649e: $06 $89
	cp   $03                                         ; $64a0: $fe $03
	rst  $38                                         ; $64a2: $ff
	db   $fd                                         ; $64a3: $fd
	rst  $38                                         ; $64a4: $ff
	cp   $89                                         ; $64a5: $fe $89
	rst  $38                                         ; $64a7: $ff
	nop                                              ; $64a8: $00
	nop                                              ; $64a9: $00
	add  b                                           ; $64aa: $80
	rst  $38                                         ; $64ab: $ff
	inc  bc                                          ; $64ac: $03
	nop                                              ; $64ad: $00
	ld   b, b                                        ; $64ae: $40
	ret  nz                                          ; $64af: $c0

	rra                                              ; $64b0: $1f
	add  e                                           ; $64b1: $83
	rst  JumpTable                                         ; $64b2: $df
	add  b                                           ; $64b3: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $64b4: $cf
	ld   [bc], a                                     ; $64b5: $02
	adc  a                                           ; $64b6: $8f
	rst  $28                                         ; $64b7: $ef
	cpl                                              ; $64b8: $2f
	add  b                                           ; $64b9: $80
	rst  $28                                         ; $64ba: $ef
	rlca                                             ; $64bb: $07
	cpl                                              ; $64bc: $2f
	ld   [hl+], a                                    ; $64bd: $22
	ld   [de], a                                     ; $64be: $12
	ldh  a, [c]                                      ; $64bf: $f2
	ld   a, [$f9f8]                                  ; $64c0: $fa $f8 $f9
	jp   hl                                          ; $64c3: $e9


	add  b                                           ; $64c4: $80
	db   $fd                                         ; $64c5: $fd
	add  c                                           ; $64c6: $81
	db   $fc                                         ; $64c7: $fc
	nop                                              ; $64c8: $00
	db   $f4                                         ; $64c9: $f4
	add  c                                           ; $64ca: $81
	cp   $00                                         ; $64cb: $fe $00
	ld   b, $86                                      ; $64cd: $06 $86
	nop                                              ; $64cf: $00
	add  d                                           ; $64d0: $82
	add  b                                           ; $64d1: $80
	add  c                                           ; $64d2: $81
	ld   b, b                                        ; $64d3: $40
	ld   bc, $afef                                   ; $64d4: $01 $ef $af
	add  b                                           ; $64d7: $80
	ld   d, [hl]                                     ; $64d8: $56
	add  b                                           ; $64d9: $80
	xor  e                                           ; $64da: $ab
	add  b                                           ; $64db: $80
	ld   d, l                                        ; $64dc: $55
	add  b                                           ; $64dd: $80
	xor  e                                           ; $64de: $ab
	add  b                                           ; $64df: $80
	ld   d, l                                        ; $64e0: $55
	add  b                                           ; $64e1: $80
	xor  d                                           ; $64e2: $aa
	add  b                                           ; $64e3: $80
	ld   d, l                                        ; $64e4: $55
	add  b                                           ; $64e5: $80
	ld   [bc], a                                     ; $64e6: $02
	add  b                                           ; $64e7: $80
	ld   c, c                                        ; $64e8: $49
	add  b                                           ; $64e9: $80
	ld   [de], a                                     ; $64ea: $12
	add  b                                           ; $64eb: $80
	ld   bc, $0a80                                   ; $64ec: $01 $80 $0a
	add  b                                           ; $64ef: $80
	nop                                              ; $64f0: $00
	add  b                                           ; $64f1: $80
	ld   [de], a                                     ; $64f2: $12
	adc  b                                           ; $64f3: $88
	nop                                              ; $64f4: $00
	ld   bc, $00ff                                   ; $64f5: $01 $ff $00
	add  b                                           ; $64f8: $80
	add  c                                           ; $64f9: $81
	add  b                                           ; $64fa: $80
	nop                                              ; $64fb: $00
	add  b                                           ; $64fc: $80
	add  c                                           ; $64fd: $81
	add  b                                           ; $64fe: $80
	nop                                              ; $64ff: $00

jr_01d_6500:
	add  b                                           ; $6500: $80

Jump_01d_6501:
	add  c                                           ; $6501: $81
	add  b                                           ; $6502: $80
	nop                                              ; $6503: $00
	add  b                                           ; $6504: $80
	add  c                                           ; $6505: $81
	add  b                                           ; $6506: $80
	nop                                              ; $6507: $00
	add  b                                           ; $6508: $80
	add  c                                           ; $6509: $81
	add  b                                           ; $650a: $80
	nop                                              ; $650b: $00
	add  b                                           ; $650c: $80
	add  c                                           ; $650d: $81
	nop                                              ; $650e: $00
	rst  $38                                         ; $650f: $ff

jr_01d_6510:
	add  l                                           ; $6510: $85
	nop                                              ; $6511: $00
	ld   bc, $f807                                   ; $6512: $01 $07 $f8
	add  b                                           ; $6515: $80
	db   $f4                                         ; $6516: $f4
	add  b                                           ; $6517: $80
	ld   hl, sp-$80                                  ; $6518: $f8 $80
	db   $f4                                         ; $651a: $f4
	nop                                              ; $651b: $00
	rst  $38                                         ; $651c: $ff
	add  l                                           ; $651d: $85
	nop                                              ; $651e: $00
	nop                                              ; $651f: $00
	ldh  a, [$85]                                    ; $6520: $f0 $85
	nop                                              ; $6522: $00
	ld   bc, $f8f7                                   ; $6523: $01 $f7 $f8
	add  b                                           ; $6526: $80
	db   $f4                                         ; $6527: $f4
	add  b                                           ; $6528: $80
	ld   hl, sp-$80                                  ; $6529: $f8 $80
	db   $f4                                         ; $652b: $f4
	add  b                                           ; $652c: $80
	ld   hl, sp-$80                                  ; $652d: $f8 $80
	db   $f4                                         ; $652f: $f4
	add  b                                           ; $6530: $80
	ld   hl, sp-$80                                  ; $6531: $f8 $80
	db   $f4                                         ; $6533: $f4
	nop                                              ; $6534: $00
	rrca                                             ; $6535: $0f
	adc  l                                           ; $6536: $8d
	nop                                              ; $6537: $00
	add  hl, bc                                      ; $6538: $09
	ldh  a, [c]                                      ; $6539: $f2
	ld   bc, $e31c                                   ; $653a: $01 $1c $e3
	rst  $30                                         ; $653d: $f7
	ld   a, [bc]                                     ; $653e: $0a
	db   $fc                                         ; $653f: $fc
	inc  bc                                          ; $6540: $03
	or   h                                           ; $6541: $b4
	ld   c, d                                        ; $6542: $4a
	add  b                                           ; $6543: $80
	dec  d                                           ; $6544: $15
	add  b                                           ; $6545: $80
	ld   a, [bc]                                     ; $6546: $0a
	add  b                                           ; $6547: $80
	ld   d, l                                        ; $6548: $55
	rlca                                             ; $6549: $07
	sbc  a                                           ; $654a: $9f
	ld   a, a                                        ; $654b: $7f
	ld   e, a                                        ; $654c: $5f
	ld   a, a                                        ; $654d: $7f
	cp   a                                           ; $654e: $bf
	rst  $38                                         ; $654f: $ff
	ld   a, a                                        ; $6550: $7f
	rst  $38                                         ; $6551: $ff
	add  b                                           ; $6552: $80
	cp   a                                           ; $6553: $bf
	add  b                                           ; $6554: $80
	ld   a, e                                        ; $6555: $7b
	add  b                                           ; $6556: $80
	xor  a                                           ; $6557: $af
	add  b                                           ; $6558: $80
	ld   e, e                                        ; $6559: $5b
	rst  $38                                         ; $655a: $ff
	nop                                              ; $655b: $00
	rst  $38                                         ; $655c: $ff
	nop                                              ; $655d: $00
	rst  $38                                         ; $655e: $ff
	nop                                              ; $655f: $00
	rst  $38                                         ; $6560: $ff
	nop                                              ; $6561: $00
	rst  $38                                         ; $6562: $ff
	nop                                              ; $6563: $00

jr_01d_6564:
	rst  $38                                         ; $6564: $ff
	nop                                              ; $6565: $00
	rst  $38                                         ; $6566: $ff
	nop                                              ; $6567: $00
	rst  $38                                         ; $6568: $ff
	nop                                              ; $6569: $00
	rst  $38                                         ; $656a: $ff
	nop                                              ; $656b: $00
	rst  $38                                         ; $656c: $ff
	nop                                              ; $656d: $00
	db   $f4                                         ; $656e: $f4
	nop                                              ; $656f: $00
	and  [hl]                                        ; $6570: $a6
	nop                                              ; $6571: $00
	inc  b                                           ; $6572: $04
	rst  $38                                         ; $6573: $ff
	nop                                              ; $6574: $00
	inc  a                                           ; $6575: $3c
	ld   b, d                                        ; $6576: $42
	jr   jr_01d_6500                                 ; $6577: $18 $87

	nop                                              ; $6579: $00
	ld   [bc], a                                     ; $657a: $02
	ld   e, d                                        ; $657b: $5a
	ld   b, d                                        ; $657c: $42
	add  c                                           ; $657d: $81

jr_01d_657e:
	adc  l                                           ; $657e: $8d
	nop                                              ; $657f: $00
	ld   [bc], a                                     ; $6580: $02
	rst  $38                                         ; $6581: $ff
	nop                                              ; $6582: $00
	jr   jr_01d_6510                                 ; $6583: $18 $8b

	nop                                              ; $6585: $00
	nop                                              ; $6586: $00
	rst  $20                                         ; $6587: $e7
	adc  l                                           ; $6588: $8d
	nop                                              ; $6589: $00
	inc  b                                           ; $658a: $04
	rst  $38                                         ; $658b: $ff
	nop                                              ; $658c: $00
	ld   a, h                                        ; $658d: $7c
	ld   [bc], a                                     ; $658e: $02
	ld   a, b                                        ; $658f: $78
	add  c                                           ; $6590: $81
	nop                                              ; $6591: $00

jr_01d_6592:
	ld   [bc], a                                     ; $6592: $02
	ld   a, [hl-]                                    ; $6593: $3a
	ld   b, d                                        ; $6594: $42
	ld   e, $81                                      ; $6595: $1e $81
	nop                                              ; $6597: $00
	ld   [bc], a                                     ; $6598: $02
	ld   e, $00                                      ; $6599: $1e $00
	add  c                                           ; $659b: $81
	adc  l                                           ; $659c: $8d
	nop                                              ; $659d: $00
	inc  b                                           ; $659e: $04
	rst  $38                                         ; $659f: $ff
	nop                                              ; $65a0: $00
	ld   a, h                                        ; $65a1: $7c
	ld   [bc], a                                     ; $65a2: $02
	ld   a, b                                        ; $65a3: $78
	add  c                                           ; $65a4: $81
	nop                                              ; $65a5: $00
	ld   [bc], a                                     ; $65a6: $02
	jr   c, jr_01d_65e9                              ; $65a7: $38 $40

	ld   a, b                                        ; $65a9: $78

jr_01d_65aa:
	add  c                                           ; $65aa: $81
	nop                                              ; $65ab: $00
	ld   [bc], a                                     ; $65ac: $02
	ld   a, d                                        ; $65ad: $7a
	ld   [bc], a                                     ; $65ae: $02
	add  c                                           ; $65af: $81
	adc  l                                           ; $65b0: $8d

jr_01d_65b1:
	nop                                              ; $65b1: $00
	ld   [bc], a                                     ; $65b2: $02
	rst  $38                                         ; $65b3: $ff
	nop                                              ; $65b4: $00
	ld   h, [hl]                                     ; $65b5: $66
	add  l                                           ; $65b6: $85
	nop                                              ; $65b7: $00
	ld   [bc], a                                     ; $65b8: $02
	ld   e, b                                        ; $65b9: $58
	ld   b, b                                        ; $65ba: $40
	ld   a, b                                        ; $65bb: $78

jr_01d_65bc:
	add  c                                           ; $65bc: $81
	nop                                              ; $65bd: $00
	nop                                              ; $65be: $00
	ld   sp, hl                                      ; $65bf: $f9
	adc  l                                           ; $65c0: $8d
	nop                                              ; $65c1: $00
	inc  b                                           ; $65c2: $04
	rst  $38                                         ; $65c3: $ff
	nop                                              ; $65c4: $00
	ld   a, [hl]                                     ; $65c5: $7e
	nop                                              ; $65c6: $00
	ld   e, $81                                      ; $65c7: $1e $81
	nop                                              ; $65c9: $00
	ld   [bc], a                                     ; $65ca: $02
	inc  e                                           ; $65cb: $1c
	ld   [bc], a                                     ; $65cc: $02
	ld   a, b                                        ; $65cd: $78
	add  c                                           ; $65ce: $81
	nop                                              ; $65cf: $00
	ld   [bc], a                                     ; $65d0: $02
	ld   a, d                                        ; $65d1: $7a
	ld   [bc], a                                     ; $65d2: $02
	add  c                                           ; $65d3: $81
	adc  l                                           ; $65d4: $8d
	nop                                              ; $65d5: $00
	inc  b                                           ; $65d6: $04
	rst  $38                                         ; $65d7: $ff
	nop                                              ; $65d8: $00
	inc  a                                           ; $65d9: $3c
	ld   b, d                                        ; $65da: $42
	ld   e, $81                                      ; $65db: $1e $81
	nop                                              ; $65dd: $00
	ld   [bc], a                                     ; $65de: $02
	inc  e                                           ; $65df: $1c
	ld   [bc], a                                     ; $65e0: $02
	jr   jr_01d_6564                                 ; $65e1: $18 $81

	nop                                              ; $65e3: $00
	ld   [bc], a                                     ; $65e4: $02
	ld   e, d                                        ; $65e5: $5a
	ld   b, d                                        ; $65e6: $42
	add  c                                           ; $65e7: $81
	adc  l                                           ; $65e8: $8d

jr_01d_65e9:
	nop                                              ; $65e9: $00
	inc  b                                           ; $65ea: $04
	rst  $38                                         ; $65eb: $ff
	nop                                              ; $65ec: $00
	inc  a                                           ; $65ed: $3c
	ld   b, d                                        ; $65ee: $42
	ld   a, b                                        ; $65ef: $78
	adc  c                                           ; $65f0: $89
	nop                                              ; $65f1: $00
	nop                                              ; $65f2: $00
	ld   sp, hl                                      ; $65f3: $f9
	adc  l                                           ; $65f4: $8d
	nop                                              ; $65f5: $00
	inc  b                                           ; $65f6: $04
	rst  $38                                         ; $65f7: $ff
	nop                                              ; $65f8: $00
	inc  a                                           ; $65f9: $3c
	ld   b, d                                        ; $65fa: $42
	jr   jr_01d_657e                                 ; $65fb: $18 $81

	nop                                              ; $65fd: $00
	ld   [bc], a                                     ; $65fe: $02
	jr   jr_01d_6601                                 ; $65ff: $18 $00

jr_01d_6601:
	jr   @-$7d                                       ; $6601: $18 $81

	nop                                              ; $6603: $00
	ld   [bc], a                                     ; $6604: $02
	ld   e, d                                        ; $6605: $5a
	ld   b, d                                        ; $6606: $42
	add  c                                           ; $6607: $81
	adc  l                                           ; $6608: $8d
	nop                                              ; $6609: $00
	inc  b                                           ; $660a: $04
	rst  $38                                         ; $660b: $ff
	nop                                              ; $660c: $00
	inc  a                                           ; $660d: $3c
	ld   b, d                                        ; $660e: $42
	jr   jr_01d_6592                                 ; $660f: $18 $81

	nop                                              ; $6611: $00
	ld   [bc], a                                     ; $6612: $02
	ld   e, b                                        ; $6613: $58
	ld   b, b                                        ; $6614: $40
	ld   a, b                                        ; $6615: $78
	add  c                                           ; $6616: $81
	nop                                              ; $6617: $00
	ld   [bc], a                                     ; $6618: $02
	ld   a, [hl-]                                    ; $6619: $3a
	ld   b, d                                        ; $661a: $42
	add  c                                           ; $661b: $81
	sub  e                                           ; $661c: $93
	nop                                              ; $661d: $00
	nop                                              ; $661e: $00
	ld   a, a                                        ; $661f: $7f
	add  b                                           ; $6620: $80
	nop                                              ; $6621: $00
	add  b                                           ; $6622: $80
	ccf                                              ; $6623: $3f
	ld   bc, $5818                                   ; $6624: $01 $18 $58
	add  b                                           ; $6627: $80
	jr   jr_01d_65aa                                 ; $6628: $18 $80

	rra                                              ; $662a: $1f
	ld   bc, $5818                                   ; $662b: $01 $18 $58
	add  b                                           ; $662e: $80
	jr   jr_01d_65b1                                 ; $662f: $18 $80

	ccf                                              ; $6631: $3f
	ld   bc, $7f00                                   ; $6632: $01 $00 $7f
	adc  e                                           ; $6635: $8b
	nop                                              ; $6636: $00
	ld   [bc], a                                     ; $6637: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6638: $cf
	nop                                              ; $6639: $00
	jr   nc, jr_01d_65bc                             ; $663a: $30 $80

	add  a                                           ; $663c: $87
	add  d                                           ; $663d: $82
	call z, $8f80                                    ; $663e: $cc $80 $8f
	add  d                                           ; $6641: $82
	call z, $9e80                                    ; $6642: $cc $80 $9e
	ld   bc, $ff00                                   ; $6645: $01 $00 $ff
	adc  e                                           ; $6648: $8b
	nop                                              ; $6649: $00
	ld   [bc], a                                     ; $664a: $02
	rst  $28                                         ; $664b: $ef
	nop                                              ; $664c: $00
	db   $10                                         ; $664d: $10
	add  b                                           ; $664e: $80
	rst  ToBoot                                         ; $664f: $c7
	ld   bc, $6b63                                   ; $6650: $01 $63 $6b
	add  b                                           ; $6653: $80
	ld   h, e                                        ; $6654: $63
	add  b                                           ; $6655: $80
	db   $e3                                         ; $6656: $e3
	ld   bc, $6b63                                   ; $6657: $01 $63 $6b
	add  b                                           ; $665a: $80
	ld   h, e                                        ; $665b: $63
	add  b                                           ; $665c: $80
	rst  $30                                         ; $665d: $f7
	ld   bc, $ff00                                   ; $665e: $01 $00 $ff
	add  l                                           ; $6661: $85
	nop                                              ; $6662: $00
	add  b                                           ; $6663: $80
	rlca                                             ; $6664: $07
	inc  c                                           ; $6665: $0c
	dec  de                                          ; $6666: $1b
	inc  e                                           ; $6667: $1c
	dec  hl                                          ; $6668: $2b
	inc  sp                                          ; $6669: $33
	inc  c                                           ; $666a: $0c
	cpl                                              ; $666b: $2f
	ld   d, e                                        ; $666c: $53
	ld   e, a                                        ; $666d: $5f
	rra                                              ; $666e: $1f
	ld   e, [hl]                                     ; $666f: $5e
	cpl                                              ; $6670: $2f
	dec  a                                           ; $6671: $3d
	inc  a                                           ; $6672: $3c
	add  b                                           ; $6673: $80
	dec  a                                           ; $6674: $3d
	nop                                              ; $6675: $00
	inc  a                                           ; $6676: $3c
	add  b                                           ; $6677: $80
	dec  a                                           ; $6678: $3d
	dec  bc                                          ; $6679: $0b
	ld   c, h                                        ; $667a: $4c
	ld   e, l                                        ; $667b: $5d
	dec  e                                           ; $667c: $1d
	ld   e, l                                        ; $667d: $5d
	ld   hl, $102f                                   ; $667e: $21 $2f $10
	inc  sp                                          ; $6681: $33
	inc  b                                           ; $6682: $04
	inc  e                                           ; $6683: $1c
	nop                                              ; $6684: $00

jr_01d_6685:
	rlca                                             ; $6685: $07
	add  b                                           ; $6686: $80
	ldh  a, [$0c]                                    ; $6687: $f0 $0c

jr_01d_6689:
	db   $ec                                         ; $6689: $ec
	inc  e                                           ; $668a: $1c
	ld   [$18e6], a                                  ; $668b: $ea $e6 $18
	ld   a, [$7de5]                                  ; $668e: $fa $e5 $7d
	db   $fc                                         ; $6691: $fc
	cp   l                                           ; $6692: $bd
	ld   a, d                                        ; $6693: $7a
	sbc  $9e                                         ; $6694: $de $9e
	add  b                                           ; $6696: $80
	sbc  $00                                         ; $6697: $de $00
	ld   e, $80                                      ; $6699: $1e $80
	sbc  $0b                                         ; $669b: $de $0b
	add  hl, de                                      ; $669d: $19
	db   $dd                                         ; $669e: $dd
	call c, $c2dd                                    ; $669f: $dc $dd $c2
	ld   a, [$e604]                                  ; $66a2: $fa $04 $e6
	db   $10                                         ; $66a5: $10

jr_01d_66a6:
	inc  e                                           ; $66a6: $1c
	nop                                              ; $66a7: $00
	ldh  a, [$80]                                    ; $66a8: $f0 $80
	rrca                                             ; $66aa: $0f
	ld   a, [bc]                                     ; $66ab: $0a
	scf                                              ; $66ac: $37
	jr   c, jr_01d_6706                              ; $66ad: $38 $57

	ld   h, a                                        ; $66af: $67
	jr   jr_01d_6711                                 ; $66b0: $18 $5f

	and  a                                           ; $66b2: $a7
	cp   b                                           ; $66b3: $b8
	dec  sp                                          ; $66b4: $3b
	cp   e                                           ; $66b5: $bb
	ld   e, b                                        ; $66b6: $58
	add  b                                           ; $66b7: $80
	ld   a, e                                        ; $66b8: $7b
	nop                                              ; $66b9: $00
	ld   a, b                                        ; $66ba: $78
	add  b                                           ; $66bb: $80
	ld   a, e                                        ; $66bc: $7b
	dec  c                                           ; $66bd: $0d
	ld   a, b                                        ; $66be: $78
	ld   a, e                                        ; $66bf: $7b
	sbc  e                                           ; $66c0: $9b
	cp   e                                           ; $66c1: $bb
	dec  sp                                          ; $66c2: $3b
	cp   b                                           ; $66c3: $b8
	ld   b, b                                        ; $66c4: $40
	ld   e, a                                        ; $66c5: $5f
	jr   nz, jr_01d_672f                             ; $66c6: $20 $67

	ld   [$0038], sp                                 ; $66c8: $08 $38 $00
	rrca                                             ; $66cb: $0f
	add  b                                           ; $66cc: $80
	ldh  [$0a], a                                    ; $66cd: $e0 $0a
	ret  c                                           ; $66cf: $d8

	jr   c, jr_01d_66a6                              ; $66d0: $38 $d4

	call z, $f430                                    ; $66d2: $cc $30 $f4
	jp   z, $f87a                                    ; $66d5: $ca $7a $f8

	cp   d                                           ; $66d8: $ba
	inc  [hl]                                        ; $66d9: $34
	add  b                                           ; $66da: $80
	cp   h                                           ; $66db: $bc
	db   $10                                         ; $66dc: $10
	ld   a, h                                        ; $66dd: $7c
	db   $fc                                         ; $66de: $fc
	cp   h                                           ; $66df: $bc
	inc  a                                           ; $66e0: $3c
	cp   h                                           ; $66e1: $bc
	or   d                                           ; $66e2: $b2
	cp   d                                           ; $66e3: $ba
	cp   b                                           ; $66e4: $b8
	ld   a, d                                        ; $66e5: $7a
	ld   b, h                                        ; $66e6: $44
	db   $f4                                         ; $66e7: $f4
	ld   [$20cc], sp                                 ; $66e8: $08 $cc $20
	jr   c, jr_01d_66ed                              ; $66eb: $38 $00

jr_01d_66ed:
	ldh  [$80], a                                    ; $66ed: $e0 $80
	nop                                              ; $66ef: $00
	inc  b                                           ; $66f0: $04
	jr   jr_01d_672f                                 ; $66f1: $18 $3c

	jr   jr_01d_6773                                 ; $66f3: $18 $7e

	inc  a                                           ; $66f5: $3c
	add  c                                           ; $66f6: $81
	ld   a, [hl]                                     ; $66f7: $7e
	inc  b                                           ; $66f8: $04
	inc  a                                           ; $66f9: $3c
	ld   a, [hl]                                     ; $66fa: $7e
	ld   e, d                                        ; $66fb: $5a
	inc  a                                           ; $66fc: $3c
	inc  h                                           ; $66fd: $24
	sub  l                                           ; $66fe: $95
	nop                                              ; $66ff: $00
	ld   [bc], a                                     ; $6700: $02
	rra                                              ; $6701: $1f
	nop                                              ; $6702: $00
	jr   nz, jr_01d_6685                             ; $6703: $20 $80

	rrca                                             ; $6705: $0f

jr_01d_6706:
	add  d                                           ; $6706: $82
	jr   jr_01d_6689                                 ; $6707: $18 $80

	add  hl, de                                      ; $6709: $19
	add  d                                           ; $670a: $82
	jr   jr_01d_6710                                 ; $670b: $18 $03

	rrca                                             ; $670d: $0f
	cpl                                              ; $670e: $2f
	nop                                              ; $670f: $00

jr_01d_6710:
	rra                                              ; $6710: $1f

jr_01d_6711:
	adc  e                                           ; $6711: $8b
	nop                                              ; $6712: $00
	ld   [bc], a                                     ; $6713: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6714: $cf
	nop                                              ; $6715: $00
	jr   nc, @-$7e                                   ; $6716: $30 $80

	add  a                                           ; $6718: $87
	ld   bc, $cdcc                                   ; $6719: $01 $cc $cd
	add  b                                           ; $671c: $80
	inc  c                                           ; $671d: $0c
	add  b                                           ; $671e: $80
	db   $ec                                         ; $671f: $ec
	ld   bc, $cdcc                                   ; $6720: $01 $cc $cd
	add  b                                           ; $6723: $80
	call z, $8703                                    ; $6724: $cc $03 $87
	or   a                                           ; $6727: $b7
	nop                                              ; $6728: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6729: $cf
	adc  e                                           ; $672a: $8b
	nop                                              ; $672b: $00
	ld   [bc], a                                     ; $672c: $02
	rst  $28                                         ; $672d: $ef
	nop                                              ; $672e: $00

jr_01d_672f:
	db   $10                                         ; $672f: $10
	add  b                                           ; $6730: $80
	rst  ToBoot                                         ; $6731: $c7
	ld   bc, $6d6c                                   ; $6732: $01 $6c $6d
	add  e                                           ; $6735: $83
	ld   l, h                                        ; $6736: $6c
	nop                                              ; $6737: $00
	ld   l, l                                        ; $6738: $6d
	add  b                                           ; $6739: $80
	ld   l, h                                        ; $673a: $6c
	inc  bc                                          ; $673b: $03
	rst  ToBoot                                         ; $673c: $c7
	rst  $10                                         ; $673d: $d7
	nop                                              ; $673e: $00
	rst  $28                                         ; $673f: $ef
	adc  e                                           ; $6740: $8b
	nop                                              ; $6741: $00
	nop                                              ; $6742: $00
	rst  $38                                         ; $6743: $ff
	add  b                                           ; $6744: $80
	nop                                              ; $6745: $00
	add  b                                           ; $6746: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6747: $cf
	adc  b                                           ; $6748: $88
	ld   h, [hl]                                     ; $6749: $66
	add  b                                           ; $674a: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $674b: $cf
	ld   bc, $ff00                                   ; $674c: $01 $00 $ff
	adc  e                                           ; $674f: $8b
	nop                                              ; $6750: $00
	ld   [bc], a                                     ; $6751: $02
	ld   hl, sp+$00                                  ; $6752: $f8 $00
	inc  b                                           ; $6754: $04
	add  b                                           ; $6755: $80
	ldh  a, [rSB]                                    ; $6756: $f0 $01
	jr   jr_01d_67b2                                 ; $6758: $18 $58

	add  e                                           ; $675a: $83
	jr   jr_01d_675d                                 ; $675b: $18 $00

jr_01d_675d:
	ld   e, b                                        ; $675d: $58
	add  b                                           ; $675e: $80
	jr   jr_01d_6764                                 ; $675f: $18 $03

	ldh  a, [$f4]                                    ; $6761: $f0 $f4
	nop                                              ; $6763: $00

jr_01d_6764:
	ld   hl, sp-$75                                  ; $6764: $f8 $8b
	nop                                              ; $6766: $00
	ld   [bc], a                                     ; $6767: $02
	ldh  a, [rP1]                                    ; $6768: $f0 $00
	ld   [$e080], sp                                 ; $676a: $08 $80 $e0
	ld   bc, $b030                                   ; $676d: $01 $30 $b0
	add  e                                           ; $6770: $83
	jr   nc, jr_01d_6773                             ; $6771: $30 $00

jr_01d_6773:
	or   b                                           ; $6773: $b0
	add  b                                           ; $6774: $80
	jr   nc, jr_01d_677a                             ; $6775: $30 $03

	ldh  [$e8], a                                    ; $6777: $e0 $e8
	nop                                              ; $6779: $00

jr_01d_677a:
	ldh  a, [rIE]                                    ; $677a: $f0 $ff
	nop                                              ; $677c: $00
	rst  $38                                         ; $677d: $ff
	nop                                              ; $677e: $00
	rst  $38                                         ; $677f: $ff
	nop                                              ; $6780: $00
	rst  $38                                         ; $6781: $ff
	nop                                              ; $6782: $00
	rst  $38                                         ; $6783: $ff
	nop                                              ; $6784: $00
	rst  $38                                         ; $6785: $ff
	nop                                              ; $6786: $00
	rst  $38                                         ; $6787: $ff
	nop                                              ; $6788: $00
	rst  $38                                         ; $6789: $ff
	nop                                              ; $678a: $00
	rst  $38                                         ; $678b: $ff
	nop                                              ; $678c: $00
	db   $fc                                         ; $678d: $fc
	nop                                              ; $678e: $00


RleXorTileMap_Settings::
	add  hl, de                                      ; $678f: $19
	nop                                              ; $6790: $00
	ld   a, a                                        ; $6791: $7f
	add  a                                           ; $6792: $87
	rrca                                             ; $6793: $0f
	ld   bc, $0103                                   ; $6794: $01 $03 $01
	rlca                                             ; $6797: $07
	inc  bc                                          ; $6798: $03
	ld   bc, $a00e                                   ; $6799: $01 $0e $a0
	ld   bc, $9803                                   ; $679c: $01 $03 $98
	ld   bc, $0107                                   ; $679f: $01 $07 $01
	inc  bc                                          ; $67a2: $03
	ld   bc, $079c                                   ; $67a3: $01 $9c $07
	sub  a                                           ; $67a6: $97
	rlca                                             ; $67a7: $07
	ld   bc, $5e58                                   ; $67a8: $01 $58 $5e
	ld   b, e                                        ; $67ab: $43
	ld   bc, $5e1c                                   ; $67ac: $01 $1c $5e
	ld   h, b                                        ; $67af: $60
	rlca                                             ; $67b0: $07
	add  hl, sp                                      ; $67b1: $39

jr_01d_67b2:
	ld   a, d                                        ; $67b2: $7a
	rrca                                             ; $67b3: $0f
	ld   bc, $0119                                   ; $67b4: $01 $19 $01
	inc  bc                                          ; $67b7: $03
	rlca                                             ; $67b8: $07
	or   l                                           ; $67b9: $b5
	ldh  a, [$50]                                    ; $67ba: $f0 $50
	and  c                                           ; $67bc: $a1
	inc  bc                                          ; $67bd: $03
	ld   hl, sp+$01                                  ; $67be: $f8 $01
	rlca                                             ; $67c0: $07
	ld   bc, $0103                                   ; $67c1: $01 $03 $01
	db   $fc                                         ; $67c4: $fc
	rlca                                             ; $67c5: $07
	rst  $30                                         ; $67c6: $f7
	rlca                                             ; $67c7: $07
	ld   bc, $0006                                   ; $67c8: $01 $06 $00
	jp   wtodo_VisitedTitleScreen                                       ; $67cb: $c3 $01 $c2


	nop                                              ; $67ce: $00
	jr   nz, @+$09                                   ; $67cf: $20 $07

	daa                                              ; $67d1: $27
	ld   h, h                                        ; $67d2: $64
	rrca                                             ; $67d3: $0f
	ld   b, e                                        ; $67d4: $43
	ld   a, e                                        ; $67d5: $7b
	ld   bc, $0103                                   ; $67d6: $01 $03 $01
	dec  b                                           ; $67d9: $05
	rst  $10                                         ; $67da: $d7
	inc  bc                                          ; $67db: $03
	ldh  [c], a                                      ; $67dc: $e2
	db   $10                                         ; $67dd: $10
	ld   l, d                                        ; $67de: $6a
	ld   bc, $0107                                   ; $67df: $01 $07 $01
	inc  bc                                          ; $67e2: $03
	ld   bc, $079c                                   ; $67e3: $01 $9c $07
	rst  $30                                         ; $67e6: $f7
	rlca                                             ; $67e7: $07
	ld   bc, $e9ef                                   ; $67e8: $01 $ef $e9
	ld   b, e                                        ; $67eb: $43
	ld   bc, $e9ab                                   ; $67ec: $01 $ab $e9
	ld   h, b                                        ; $67ef: $60
	rlca                                             ; $67f0: $07
	adc  [hl]                                        ; $67f1: $8e
	db   $ed                                         ; $67f2: $ed
	rrca                                             ; $67f3: $0f
	ld   d, h                                        ; $67f4: $54
	ld   c, h                                        ; $67f5: $4c
	ld   bc, $0103                                   ; $67f6: $01 $03 $01
	dec  b                                           ; $67f9: $05
	ld   bc, $0024                                   ; $67fa: $01 $24 $00
	dec  hl                                          ; $67fd: $2b
	cp   h                                           ; $67fe: $bc
	ld   bc, $0103                                   ; $67ff: $01 $03 $01
	rrca                                             ; $6802: $0f
	dec  a                                           ; $6803: $3d
	inc  bc                                          ; $6804: $03
	ld   bc, $07e4                                   ; $6805: $01 $e4 $07
	ld   bc, $a9af                                   ; $6808: $01 $af $a9
	jp   Jump_01d_6b01                               ; $680b: $c3 $01 $6b


	xor  c                                           ; $680e: $a9
	jr   nz, jr_01d_6818                             ; $680f: $20 $07

	adc  [hl]                                        ; $6811: $8e
	inc  bc                                          ; $6812: $03
	xor  l                                           ; $6813: $ad
	rrca                                             ; $6814: $0f
	ld   bc, $8b6f                                   ; $6815: $01 $6f $8b

jr_01d_6818:
	nop                                              ; $6818: $00
	ld   b, e                                        ; $6819: $43
	sub  e                                           ; $681a: $93
	inc  bc                                          ; $681b: $03
	ld   bc, $0784                                   ; $681c: $01 $84 $07
	ld   bc, $e7e1                                   ; $681f: $01 $e1 $e7
	ld   b, e                                        ; $6822: $43
	ld   bc, $e7a5                                   ; $6823: $01 $a5 $e7
	ld   h, b                                        ; $6826: $60
	rlca                                             ; $6827: $07
	add  b                                           ; $6828: $80
	add  e                                           ; $6829: $83
	rrca                                             ; $682a: $0f
	ld   bc, $0117                                   ; $682b: $01 $17 $01
	sbc  a                                           ; $682e: $9f
	ld   bc, $0103                                   ; $682f: $01 $03 $01
	cp   c                                           ; $6832: $b9
	rst  ToBoot                                         ; $6833: $c7
	inc  bc                                          ; $6834: $03
	ld   bc, $079c                                   ; $6835: $01 $9c $07
	ld   bc, $a858                                   ; $6838: $01 $58 $a8
	inc  bc                                          ; $683b: $03
	ld   bc, $0784                                   ; $683c: $01 $84 $07
	ld   bc, $a7a1                                   ; $683f: $01 $a1 $a7
	jp   Jump_01d_6501                               ; $6842: $c3 $01 $65


	and  a                                           ; $6845: $a7
	jr   nz, jr_01d_684f                             ; $6846: $20 $07

	add  b                                           ; $6848: $80
	add  e                                           ; $6849: $83
	rrca                                             ; $684a: $0f
	ld   bc, $0137                                   ; $684b: $01 $37 $01
	cp   a                                           ; $684e: $bf

jr_01d_684f:
	ld   bc, $0103                                   ; $684f: $01 $03 $01
	ld   b, $58                                      ; $6852: $06 $58
	inc  bc                                          ; $6854: $03
	ld   bc, $07fc                                   ; $6855: $01 $fc $07
	ld   bc, $5906                                   ; $6858: $01 $06 $59
	ld   bc, $1f7b                                   ; $685b: $01 $7b $1f
	add  l                                           ; $685e: $85
	nop                                              ; $685f: $00
	jr   @+$4b                                       ; $6860: $18 $49

	ld   bc, $e30f                                   ; $6862: $01 $0f $e3
	xor  h                                           ; $6865: $ac
	rrca                                             ; $6866: $0f
	ld   bc, $01dd                                   ; $6867: $01 $dd $01
	inc  bc                                          ; $686a: $03
	ld   bc, $010f                                   ; $686b: $01 $0f $01
	inc  bc                                          ; $686e: $03
	ld   bc, $3f07                                   ; $686f: $01 $07 $3f
	and  b                                           ; $6872: $a0
	rlca                                             ; $6873: $07
	ld   bc, $f0ef                                   ; $6874: $01 $ef $f0
	ld   bc, $0f5b                                   ; $6877: $01 $5b $0f
	add  l                                           ; $687a: $85
	nop                                              ; $687b: $00
	ld   a, a                                        ; $687c: $7f
	add  hl, sp                                      ; $687d: $39
	ld   bc, $a30f                                   ; $687e: $01 $0f $a3
	rst  $28                                         ; $6881: $ef
	ld   bc, $b203                                   ; $6882: $01 $03 $b2
	ld   bc, $0103                                   ; $6885: $01 $03 $01
	rrca                                             ; $6888: $0f
	ld   bc, $0103                                   ; $6889: $01 $03 $01
	rlca                                             ; $688c: $07
	rra                                              ; $688d: $1f
	ldh  [rTAC], a                                   ; $688e: $e0 $07
	ld   bc, $ebaf                                   ; $6890: $01 $af $eb
	inc  bc                                          ; $6893: $03
	ld   bc, $0133                                   ; $6894: $01 $33 $01
	inc  bc                                          ; $6897: $03
	ld   bc, $0163                                   ; $6898: $01 $63 $01
	inc  bc                                          ; $689b: $03
	ld   h, c                                        ; $689c: $61
	ld   h, l                                        ; $689d: $65
	ld   bc, $830f                                   ; $689e: $01 $0f $83
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $68a1: $cf
	ld   bc, $3c03                                   ; $68a2: $01 $03 $3c
	ld   bc, $0107                                   ; $68a5: $01 $07 $01
	inc  bc                                          ; $68a8: $03
	ld   bc, $019f                                   ; $68a9: $01 $9f $01
	inc  bc                                          ; $68ac: $03
	ld   bc, $0780                                   ; $68ad: $01 $80 $07
	ld   bc, $c5e1                                   ; $68b0: $01 $e1 $c5
	inc  bc                                          ; $68b3: $03
	ld   bc, $0153                                   ; $68b4: $01 $53 $01
	inc  bc                                          ; $68b7: $03
	ld   bc, $0123                                   ; $68b8: $01 $23 $01
	inc  bc                                          ; $68bb: $03
	ld   hl, $0125                                   ; $68bc: $21 $25 $01
	rrca                                             ; $68bf: $0f
	add  e                                           ; $68c0: $83
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $68c1: $cf
	ld   bc, $1c03                                   ; $68c2: $01 $03 $1c
	ld   bc, $0107                                   ; $68c5: $01 $07 $01
	inc  bc                                          ; $68c8: $03
	ld   bc, $01ff                                   ; $68c9: $01 $ff $01
	inc  bc                                          ; $68cc: $03
	ld   bc, $0780                                   ; $68cd: $01 $80 $07
	ld   bc, $c5a1                                   ; $68d0: $01 $a1 $c5
	inc  bc                                          ; $68d3: $03
	ld   bc, $015b                                   ; $68d4: $01 $5b $01
	inc  bc                                          ; $68d7: $03
	ld   bc, $0107                                   ; $68d8: $01 $07 $01
	inc  bc                                          ; $68db: $03
	ld   bc, $01a9                                   ; $68dc: $01 $a9 $01
	rrca                                             ; $68df: $0f
	inc  bc                                          ; $68e0: $03
	rst  $28                                         ; $68e1: $ef
	ld   bc, $ef03                                   ; $68e2: $01 $03 $ef
	ld   c, e                                        ; $68e5: $4b
	ld   bc, $01d9                                   ; $68e6: $01 $d9 $01
	rlca                                             ; $68e9: $07
	ld   bc, $03dc                                   ; $68ea: $01 $dc $03
	ld   bc, $0302                                   ; $68ed: $01 $02 $03
	ld   bc, $ea48                                   ; $68f0: $01 $48 $ea
	inc  bc                                          ; $68f3: $03
	ld   bc, $01bb                                   ; $68f4: $01 $bb $01
	inc  bc                                          ; $68f7: $03
	ld   bc, $0107                                   ; $68f8: $01 $07 $01
	inc  bc                                          ; $68fb: $03
	ld   bc, $6920                                   ; $68fc: $01 $20 $69
	ld   bc, $030f                                   ; $68ff: $01 $0f $03
	xor  a                                           ; $6902: $af
	ld   bc, $af03                                   ; $6903: $01 $03 $af
	ld   c, e                                        ; $6906: $4b
	ld   bc, $01f9                                   ; $6907: $01 $f9 $01
	rlca                                             ; $690a: $07
	ld   bc, $03fc                                   ; $690b: $01 $fc $03
	ld   bc, $0302                                   ; $690e: $01 $02 $03
	ld   bc, $aa48                                   ; $6911: $01 $48 $aa
	inc  bc                                          ; $6914: $03
	ld   bc, $4170                                   ; $6915: $01 $70 $41
	ld   bc, $0107                                   ; $6918: $01 $07 $01
	inc  bc                                          ; $691b: $03
	ld   bc, $4c44                                   ; $691c: $01 $44 $4c
	add  c                                           ; $691f: $81
	nop                                              ; $6920: $00
	inc  e                                           ; $6921: $1c
	dec  hl                                          ; $6922: $2b
	ld   bc, $c703                                   ; $6923: $01 $03 $c7
	inc  bc                                          ; $6926: $03
	ld   bc, $01d9                                   ; $6927: $01 $d9 $01
	rlca                                             ; $692a: $07
	ld   bc, $03dc                                   ; $692b: $01 $dc $03
	ld   bc, $0302                                   ; $692e: $01 $02 $03
	ld   bc, wIsGBC                                   ; $6931: $01 $00 $c2
	inc  bc                                          ; $6934: $03
	ld   bc, $c110                                   ; $6935: $01 $10 $c1
	ld   bc, $0107                                   ; $6938: $01 $07 $01
	inc  bc                                          ; $693b: $03
	ld   bc, $3cc4                                   ; $693c: $01 $c4 $3c
	add  c                                           ; $693f: $81
	nop                                              ; $6940: $00
	inc  e                                           ; $6941: $1c
	dec  de                                          ; $6942: $1b
	ld   bc, $c703                                   ; $6943: $01 $03 $c7
	inc  bc                                          ; $6946: $03
	ld   bc, $01f9                                   ; $6947: $01 $f9 $01
	rlca                                             ; $694a: $07
	ld   bc, $03fc                                   ; $694b: $01 $fc $03
	ld   bc, $0302                                   ; $694e: $01 $02 $03
	ld   bc, wIsGBC                                   ; $6951: $01 $00 $c2
	inc  bc                                          ; $6954: $03
	ld   bc, $0050                                   ; $6955: $01 $50 $00
	ld   a, c                                        ; $6958: $79
	ld   bc, $0107                                   ; $6959: $01 $07 $01
	ld   a, [hl]                                     ; $695c: $7e
	nop                                              ; $695d: $00
	ld   c, h                                        ; $695e: $4c
	add  c                                           ; $695f: $81
	nop                                              ; $6960: $00
	inc  bc                                          ; $6961: $03
	dec  bc                                          ; $6962: $0b
	ld   bc, $5003                                   ; $6963: $01 $03 $50
	adc  e                                           ; $6966: $8b
	nop                                              ; $6967: $00
	dec  bc                                          ; $6968: $0b
	ld   d, a                                        ; $6969: $57
	inc  bc                                          ; $696a: $03
	ld   bc, $0030                                   ; $696b: $01 $30 $00
	add  hl, de                                      ; $696e: $19
	ld   bc, $0107                                   ; $696f: $01 $07 $01
	ld   e, $00                                      ; $6972: $1e $00
	inc  a                                           ; $6974: $3c
	add  c                                           ; $6975: $81
	nop                                              ; $6976: $00
	inc  d                                           ; $6977: $14
	ei                                               ; $6978: $fb
	ld   bc, $4203                                   ; $6979: $01 $03 $42
	ld   bc, $0103                                   ; $697c: $01 $03 $01
	rrca                                             ; $697f: $0f
	ld   bc, $0103                                   ; $6980: $01 $03 $01
	rlca                                             ; $6983: $07
	ld   bc, $0103                                   ; $6984: $01 $03 $01
	ld   a, [de]                                     ; $6987: $1a
	call $0399                                       ; $6988: $cd $99 $03
	ld   bc, $89fc                                   ; $698b: $01 $fc $89
	nop                                              ; $698e: $00
	inc  d                                           ; $698f: $14
	db   $eb                                         ; $6990: $eb
	ld   bc, $0103                                   ; $6991: $01 $03 $01
	rrca                                             ; $6994: $0f
	ld   bc, $0103                                   ; $6995: $01 $03 $01
	rlca                                             ; $6998: $07
	ld   bc, $0103                                   ; $6999: $01 $03 $01
	add  e                                           ; $699c: $83
	ld   bc, $0103                                   ; $699d: $01 $03 $01
	adc  a                                           ; $69a0: $8f
	ld   bc, $0103                                   ; $69a1: $01 $03 $01
	db   $ec                                         ; $69a4: $ec
	rst  $38                                         ; $69a5: $ff
	nop                                              ; $69a6: $00
	rst  $38                                         ; $69a7: $ff
	nop                                              ; $69a8: $00
	rst  $38                                         ; $69a9: $ff
	nop                                              ; $69aa: $00
	add  $00                                         ; $69ab: $c6 $00
	ld   a, [hl]                                     ; $69ad: $7e
	nop                                              ; $69ae: $00
	add  l                                           ; $69af: $85
	nop                                              ; $69b0: $00
	inc  bc                                          ; $69b1: $03
	ld   bc, $0103                                   ; $69b2: $01 $03 $01
	inc  bc                                          ; $69b5: $03
	add  a                                           ; $69b6: $87
	nop                                              ; $69b7: $00
	nop                                              ; $69b8: $00
	rst  $28                                         ; $69b9: $ef
	adc  c                                           ; $69ba: $89
	nop                                              ; $69bb: $00
	nop                                              ; $69bc: $00
	rst  $28                                         ; $69bd: $ef
	add  h                                           ; $69be: $84
	nop                                              ; $69bf: $00
	inc  bc                                          ; $69c0: $03
	inc  b                                           ; $69c1: $04
	ld   bc, $0603                                   ; $69c2: $01 $03 $06
	add  a                                           ; $69c5: $87
	nop                                              ; $69c6: $00
	nop                                              ; $69c7: $00
	rst  $28                                         ; $69c8: $ef
	adc  c                                           ; $69c9: $89
	nop                                              ; $69ca: $00
	nop                                              ; $69cb: $00
	rst  $28                                         ; $69cc: $ef
	add  h                                           ; $69cd: $84
	nop                                              ; $69ce: $00
	inc  bc                                          ; $69cf: $03
	rlca                                             ; $69d0: $07
	rrca                                             ; $69d1: $0f
	ld   bc, $8709                                   ; $69d2: $01 $09 $87
	nop                                              ; $69d5: $00
	nop                                              ; $69d6: $00
	rst  $28                                         ; $69d7: $ef
	adc  c                                           ; $69d8: $89
	nop                                              ; $69d9: $00
	nop                                              ; $69da: $00
	rst  $28                                         ; $69db: $ef
	add  h                                           ; $69dc: $84
	nop                                              ; $69dd: $00
	inc  bc                                          ; $69de: $03
	ld   a, [bc]                                     ; $69df: $0a
	ld   bc, $0c07                                   ; $69e0: $01 $07 $0c
	add  a                                           ; $69e3: $87
	nop                                              ; $69e4: $00
	nop                                              ; $69e5: $00
	rst  $28                                         ; $69e6: $ef
	adc  c                                           ; $69e7: $89
	nop                                              ; $69e8: $00
	nop                                              ; $69e9: $00
	rst  $28                                         ; $69ea: $ef
	add  h                                           ; $69eb: $84
	nop                                              ; $69ec: $00
	ld   [bc], a                                     ; $69ed: $02
	dec  c                                           ; $69ee: $0d
	inc  bc                                          ; $69ef: $03
	ld   c, $88                                      ; $69f0: $0e $88
	nop                                              ; $69f2: $00
	nop                                              ; $69f3: $00
	rst  $28                                         ; $69f4: $ef
	adc  c                                           ; $69f5: $89
	nop                                              ; $69f6: $00
	nop                                              ; $69f7: $00
	rst  $28                                         ; $69f8: $ef
	add  h                                           ; $69f9: $84
	nop                                              ; $69fa: $00
	ld   bc, $1f0f                                   ; $69fb: $01 $0f $1f
	add  c                                           ; $69fe: $81
	nop                                              ; $69ff: $00
	ld   bc, $1101                                   ; $6a00: $01 $01 $11
	add  h                                           ; $6a03: $84
	nop                                              ; $6a04: $00
	nop                                              ; $6a05: $00
	rst  $28                                         ; $6a06: $ef
	adc  c                                           ; $6a07: $89
	nop                                              ; $6a08: $00
	nop                                              ; $6a09: $00
	rst  $28                                         ; $6a0a: $ef
	add  h                                           ; $6a0b: $84
	nop                                              ; $6a0c: $00
	ld   b, $12                                      ; $6a0d: $06 $12
	ld   bc, $0007                                   ; $6a0f: $01 $07 $00
	ld   bc, $1603                                   ; $6a12: $01 $03 $16
	add  h                                           ; $6a15: $84
	nop                                              ; $6a16: $00
	nop                                              ; $6a17: $00
	rst  $28                                         ; $6a18: $ef
	adc  c                                           ; $6a19: $89
	nop                                              ; $6a1a: $00
	nop                                              ; $6a1b: $00
	rst  $28                                         ; $6a1c: $ef
	add  h                                           ; $6a1d: $84
	nop                                              ; $6a1e: $00
	ld   b, $17                                      ; $6a1f: $06 $17
	rrca                                             ; $6a21: $0f
	ld   bc, $0300                                   ; $6a22: $01 $00 $03
	ld   bc, $841b                                   ; $6a25: $01 $1b $84
	nop                                              ; $6a28: $00
	nop                                              ; $6a29: $00
	rst  $28                                         ; $6a2a: $ef
	adc  c                                           ; $6a2b: $89
	nop                                              ; $6a2c: $00
	nop                                              ; $6a2d: $00
	rst  $28                                         ; $6a2e: $ef
	add  h                                           ; $6a2f: $84
	nop                                              ; $6a30: $00
	ld   b, $1c                                      ; $6a31: $06 $1c
	ld   bc, $0004                                   ; $6a33: $01 $04 $00
	inc  bc                                          ; $6a36: $03
	ld   bc, $841b                                   ; $6a37: $01 $1b $84
	nop                                              ; $6a3a: $00
	nop                                              ; $6a3b: $00
	rst  $28                                         ; $6a3c: $ef
	adc  c                                           ; $6a3d: $89
	nop                                              ; $6a3e: $00
	nop                                              ; $6a3f: $00
	rst  $28                                         ; $6a40: $ef
	add  h                                           ; $6a41: $84
	nop                                              ; $6a42: $00
	ld   b, $1e                                      ; $6a43: $06 $1e
	ld   bc, $003f                                   ; $6a45: $01 $3f $00
	ld   bc, $2203                                   ; $6a48: $01 $03 $22
	add  h                                           ; $6a4b: $84
	nop                                              ; $6a4c: $00
	nop                                              ; $6a4d: $00
	rst  $28                                         ; $6a4e: $ef
	adc  c                                           ; $6a4f: $89
	nop                                              ; $6a50: $00
	nop                                              ; $6a51: $00
	rst  $28                                         ; $6a52: $ef
	add  h                                           ; $6a53: $84
	nop                                              ; $6a54: $00
	ld   b, $23                                      ; $6a55: $06 $23
	rlca                                             ; $6a57: $07
	ld   bc, $0103                                   ; $6a58: $01 $03 $01
	rrca                                             ; $6a5b: $0f
	jr   z, @-$7a                                    ; $6a5c: $28 $84

	nop                                              ; $6a5e: $00
	nop                                              ; $6a5f: $00
	rst  $28                                         ; $6a60: $ef
	adc  c                                           ; $6a61: $89
	nop                                              ; $6a62: $00
	nop                                              ; $6a63: $00
	rst  $28                                         ; $6a64: $ef
	add  h                                           ; $6a65: $84
	nop                                              ; $6a66: $00
	ld   b, $29                                      ; $6a67: $06 $29
	inc  bc                                          ; $6a69: $03
	ld   bc, $0107                                   ; $6a6a: $01 $07 $01
	inc  bc                                          ; $6a6d: $03
	ld   l, $84                                      ; $6a6e: $2e $84
	nop                                              ; $6a70: $00
	nop                                              ; $6a71: $00
	rst  $28                                         ; $6a72: $ef
	adc  c                                           ; $6a73: $89
	nop                                              ; $6a74: $00
	nop                                              ; $6a75: $00
	rst  $28                                         ; $6a76: $ef
	add  h                                           ; $6a77: $84
	nop                                              ; $6a78: $00
	ld   b, $2f                                      ; $6a79: $06 $2f
	rra                                              ; $6a7b: $1f
	ld   bc, $0103                                   ; $6a7c: $01 $03 $01
	rlca                                             ; $6a7f: $07
	inc  [hl]                                        ; $6a80: $34
	add  h                                           ; $6a81: $84
	nop                                              ; $6a82: $00
	nop                                              ; $6a83: $00
	rst  $28                                         ; $6a84: $ef
	adc  c                                           ; $6a85: $89
	nop                                              ; $6a86: $00
	nop                                              ; $6a87: $00
	rst  $28                                         ; $6a88: $ef
	add  h                                           ; $6a89: $84
	nop                                              ; $6a8a: $00
	ld   b, $35                                      ; $6a8b: $06 $35
	inc  bc                                          ; $6a8d: $03
	ld   bc, $010f                                   ; $6a8e: $01 $0f $01
	inc  bc                                          ; $6a91: $03
	ld   a, [hl-]                                    ; $6a92: $3a
	add  h                                           ; $6a93: $84
	nop                                              ; $6a94: $00
	nop                                              ; $6a95: $00
	rst  $28                                         ; $6a96: $ef
	adc  c                                           ; $6a97: $89
	nop                                              ; $6a98: $00
	nop                                              ; $6a99: $00
	rst  $28                                         ; $6a9a: $ef
	sub  c                                           ; $6a9b: $91
	nop                                              ; $6a9c: $00
	nop                                              ; $6a9d: $00
	rst  $28                                         ; $6a9e: $ef
	adc  c                                           ; $6a9f: $89
	nop                                              ; $6aa0: $00
	nop                                              ; $6aa1: $00
	call nc, $0091                                   ; $6aa2: $d4 $91 $00
	nop                                              ; $6aa5: $00
	call nc, $0089                                   ; $6aa6: $d4 $89 $00
	inc  d                                           ; $6aa9: $14
	or   $25                                         ; $6aaa: $f6 $25
	ld   bc, $0103                                   ; $6aac: $01 $03 $01
	ld   a, a                                        ; $6aaf: $7f
	ld   bc, $0103                                   ; $6ab0: $01 $03 $01
	rlca                                             ; $6ab3: $07
	ld   bc, $0103                                   ; $6ab4: $01 $03 $01
	rrca                                             ; $6ab7: $0f
	ld   bc, $0103                                   ; $6ab8: $01 $03 $01
	rlca                                             ; $6abb: $07
	ld   bc, $f654                                   ; $6abc: $01 $54 $f6
	adc  c                                           ; $6abf: $89
	nop                                              ; $6ac0: $00
	inc  d                                           ; $6ac1: $14
	or   $57                                         ; $6ac2: $f6 $57
	ld   bc, $011f                                   ; $6ac4: $01 $1f $01
	inc  bc                                          ; $6ac7: $03
	ld   bc, $0107                                   ; $6ac8: $01 $07 $01
	inc  bc                                          ; $6acb: $03
	ld   bc, $010f                                   ; $6acc: $01 $0f $01
	inc  bc                                          ; $6acf: $03
	ld   bc, $0107                                   ; $6ad0: $01 $07 $01
	inc  bc                                          ; $6ad3: $03
	ld   bc, $f646                                   ; $6ad4: $01 $46 $f6
	adc  c                                           ; $6ad7: $89
	nop                                              ; $6ad8: $00
	inc  b                                           ; $6ad9: $04
	rst  $28                                         ; $6ada: $ef
	nop                                              ; $6adb: $00
	ld   h, b                                        ; $6adc: $60
	ld   bc, $8903                                   ; $6add: $01 $03 $89
	nop                                              ; $6ae0: $00
	inc  b                                           ; $6ae1: $04
	inc  bc                                          ; $6ae2: $03
	ld   bc, $0060                                   ; $6ae3: $01 $60 $00
	rst  $28                                         ; $6ae6: $ef
	adc  c                                           ; $6ae7: $89
	nop                                              ; $6ae8: $00
	inc  d                                           ; $6ae9: $14
	rst  $28                                         ; $6aea: $ef
	nop                                              ; $6aeb: $00
	ld   h, e                                        ; $6aec: $63
	ld   [hl], h                                     ; $6aed: $74
	ld   [hl], e                                     ; $6aee: $73
	ld   bc, $0103                                   ; $6aef: $01 $03 $01
	rrca                                             ; $6af2: $0f
	ld   bc, $0103                                   ; $6af3: $01 $03 $01
	rlca                                             ; $6af6: $07
	ld   bc, $7703                                   ; $6af7: $01 $03 $77
	ld   c, $74                                      ; $6afa: $0e $74
	ld   h, e                                        ; $6afc: $63
	nop                                              ; $6afd: $00
	rst  $28                                         ; $6afe: $ef
	adc  c                                           ; $6aff: $89
	nop                                              ; $6b00: $00

Jump_01d_6b01:
	inc  d                                           ; $6b01: $14
	rst  $28                                         ; $6b02: $ef
	nop                                              ; $6b03: $00
	ld   h, e                                        ; $6b04: $63
	ld   [hl], h                                     ; $6b05: $74
	ld   c, $76                                      ; $6b06: $0e $76
	rra                                              ; $6b08: $1f
	ld   bc, $0103                                   ; $6b09: $01 $03 $01
	rlca                                             ; $6b0c: $07
	ld   bc, $0103                                   ; $6b0d: $01 $03 $01
	rrca                                             ; $6b10: $0f
	ld   h, c                                        ; $6b11: $61
	ld   c, $74                                      ; $6b12: $0e $74
	ld   h, e                                        ; $6b14: $63
	nop                                              ; $6b15: $00
	rst  $28                                         ; $6b16: $ef
	adc  c                                           ; $6b17: $89
	nop                                              ; $6b18: $00
	inc  d                                           ; $6b19: $14
	rst  $28                                         ; $6b1a: $ef
	nop                                              ; $6b1b: $00
	ld   h, e                                        ; $6b1c: $63
	ld   [hl], h                                     ; $6b1d: $74
	ld   l, [hl]                                     ; $6b1e: $6e
	inc  bc                                          ; $6b1f: $03
	ld   bc, $0107                                   ; $6b20: $01 $07 $01
	inc  bc                                          ; $6b23: $03
	ld   bc, $017f                                   ; $6b24: $01 $7f $01
	inc  bc                                          ; $6b27: $03
	ld   bc, $1307                                   ; $6b28: $01 $07 $13
	ld   [hl], h                                     ; $6b2b: $74
	ld   h, e                                        ; $6b2c: $63
	nop                                              ; $6b2d: $00
	rst  $28                                         ; $6b2e: $ef
	adc  c                                           ; $6b2f: $89
	nop                                              ; $6b30: $00
	inc  d                                           ; $6b31: $14
	rst  $28                                         ; $6b32: $ef
	nop                                              ; $6b33: $00
	ld   h, e                                        ; $6b34: $63
	ld   [hl], h                                     ; $6b35: $74
	ld   [de], a                                     ; $6b36: $12
	inc  bc                                          ; $6b37: $03
	ld   bc, $010f                                   ; $6b38: $01 $0f $01
	inc  bc                                          ; $6b3b: $03
	ld   bc, $0107                                   ; $6b3c: $01 $07 $01
	inc  bc                                          ; $6b3f: $03
	ld   bc, $071f                                   ; $6b40: $01 $1f $07
	ld   [hl], h                                     ; $6b43: $74
	ld   h, e                                        ; $6b44: $63
	nop                                              ; $6b45: $00
	rst  $28                                         ; $6b46: $ef
	adc  c                                           ; $6b47: $89
	nop                                              ; $6b48: $00
	inc  b                                           ; $6b49: $04
	rst  $28                                         ; $6b4a: $ef
	nop                                              ; $6b4b: $00
	ld   h, b                                        ; $6b4c: $60
	ld   bc, $8903                                   ; $6b4d: $01 $03 $89
	nop                                              ; $6b50: $00
	inc  b                                           ; $6b51: $04
	inc  bc                                          ; $6b52: $03
	ld   bc, $0060                                   ; $6b53: $01 $60 $00
	rst  $28                                         ; $6b56: $ef
	adc  c                                           ; $6b57: $89
	nop                                              ; $6b58: $00
	inc  b                                           ; $6b59: $04
	rst  $28                                         ; $6b5a: $ef
	nop                                              ; $6b5b: $00
	ld   h, b                                        ; $6b5c: $60
	ld   bc, $8903                                   ; $6b5d: $01 $03 $89
	nop                                              ; $6b60: $00
	inc  b                                           ; $6b61: $04
	inc  bc                                          ; $6b62: $03
	ld   bc, $0060                                   ; $6b63: $01 $60 $00
	rst  $28                                         ; $6b66: $ef
	adc  c                                           ; $6b67: $89
	nop                                              ; $6b68: $00
	inc  d                                           ; $6b69: $14
	rst  $28                                         ; $6b6a: $ef
	nop                                              ; $6b6b: $00
	ld   h, e                                        ; $6b6c: $63
	ld   [hl], h                                     ; $6b6d: $74
	ld   [hl], e                                     ; $6b6e: $73
	ld   bc, $0103                                   ; $6b6f: $01 $03 $01
	halt                                             ; $6b72: $76
	inc  bc                                          ; $6b73: $03
	ld   bc, $0778                                   ; $6b74: $01 $78 $07
	ld   bc, $7703                                   ; $6b77: $01 $03 $77
	ld   c, $74                                      ; $6b7a: $0e $74
	ld   h, e                                        ; $6b7c: $63
	nop                                              ; $6b7d: $00
	rst  $28                                         ; $6b7e: $ef
	adc  c                                           ; $6b7f: $89
	nop                                              ; $6b80: $00
	inc  d                                           ; $6b81: $14
	rst  $28                                         ; $6b82: $ef
	nop                                              ; $6b83: $00
	ld   h, e                                        ; $6b84: $63
	ld   [hl], h                                     ; $6b85: $74
	ld   c, $76                                      ; $6b86: $0e $76
	rra                                              ; $6b88: $1f
	ld   bc, $0165                                   ; $6b89: $01 $65 $01
	inc  bc                                          ; $6b8c: $03
	ld   h, e                                        ; $6b8d: $63
	inc  bc                                          ; $6b8e: $03
	ld   bc, $610f                                   ; $6b8f: $01 $0f $61
	ld   c, $74                                      ; $6b92: $0e $74
	ld   h, e                                        ; $6b94: $63
	nop                                              ; $6b95: $00
	rst  $28                                         ; $6b96: $ef
	adc  c                                           ; $6b97: $89
	nop                                              ; $6b98: $00
	inc  b                                           ; $6b99: $04
	rst  $28                                         ; $6b9a: $ef
	nop                                              ; $6b9b: $00
	ld   h, b                                        ; $6b9c: $60
	ld   bc, $8903                                   ; $6b9d: $01 $03 $89
	nop                                              ; $6ba0: $00
	inc  b                                           ; $6ba1: $04
	inc  bc                                          ; $6ba2: $03
	ld   bc, $0060                                   ; $6ba3: $01 $60 $00
	rst  $28                                         ; $6ba6: $ef
	rst  $38                                         ; $6ba7: $ff
	nop                                              ; $6ba8: $00
	adc  b                                           ; $6ba9: $88
	nop                                              ; $6baa: $00
	ld   [hl], h                                     ; $6bab: $74
	nop                                              ; $6bac: $00
	nop                                              ; $6bad: $00
	nop                                              ; $6bae: $00
	add  a                                           ; $6baf: $87
	rst  $38                                         ; $6bb0: $ff
	add  b                                           ; $6bb1: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6bb2: $cf
	add  d                                           ; $6bb3: $82
	rst  $38                                         ; $6bb4: $ff
	add  b                                           ; $6bb5: $80
	ldh  [$03], a                                    ; $6bb6: $e0 $03
	sbc  e                                           ; $6bb8: $9b
	ei                                               ; $6bb9: $fb
	add  a                                           ; $6bba: $87
	rst  $20                                         ; $6bbb: $e7
	add  b                                           ; $6bbc: $80
	rst  JumpTable                                         ; $6bbd: $df
	ld   [$fff8], sp                                 ; $6bbe: $08 $f8 $ff
	rlca                                             ; $6bc1: $07
	nop                                              ; $6bc2: $00
	add  a                                           ; $6bc3: $87
	cp   a                                           ; $6bc4: $bf
	ei                                               ; $6bc5: $fb
	rst  ToBoot                                         ; $6bc6: $c7
	inc  b                                           ; $6bc7: $04
	add  b                                           ; $6bc8: $80
	ld   a, a                                        ; $6bc9: $7f
	dec  d                                           ; $6bca: $15
	nop                                              ; $6bcb: $00
	cp   $ff                                         ; $6bcc: $fe $ff
	ld   sp, hl                                      ; $6bce: $f9
	cp   $06                                         ; $6bcf: $fe $06
	ld   hl, sp-$01                                  ; $6bd1: $f8 $ff

jr_01d_6bd3:
	rlca                                             ; $6bd3: $07
	rst  ToBoot                                         ; $6bd4: $c7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6bd5: $cf
	ld   hl, sp-$09                                  ; $6bd6: $f8 $f7
	ret  z                                           ; $6bd8: $c8

	jr   nc, jr_01d_6bd3                             ; $6bd9: $30 $f8

	jr   c, jr_01d_6c1c                              ; $6bdb: $38 $3f

	add  b                                           ; $6bdd: $80
	rst  $38                                         ; $6bde: $ff
	ld   a, a                                        ; $6bdf: $7f
	rst  $38                                         ; $6be0: $ff
	add  b                                           ; $6be1: $80
	rst  $30                                         ; $6be2: $f7
	add  d                                           ; $6be3: $82
	rst  $38                                         ; $6be4: $ff
	add  b                                           ; $6be5: $80
	db   $fd                                         ; $6be6: $fd
	add  b                                           ; $6be7: $80
	ld   a, h                                        ; $6be8: $7c
	ld   b, $1f                                      ; $6be9: $06 $1f
	rst  $20                                         ; $6beb: $e7
	rra                                              ; $6bec: $1f
	ld   hl, sp-$19                                  ; $6bed: $f8 $e7
	rst  $38                                         ; $6bef: $ff
	ld   hl, sp-$80                                  ; $6bf0: $f8 $80
	rst  $38                                         ; $6bf2: $ff
	inc  b                                           ; $6bf3: $04
	cp   $7f                                         ; $6bf4: $fe $7f
	ld   a, l                                        ; $6bf6: $7d
	cp   $fd                                         ; $6bf7: $fe $fd
	add  b                                           ; $6bf9: $80
	rst  $38                                         ; $6bfa: $ff
	add  b                                           ; $6bfb: $80
	ld   a, a                                        ; $6bfc: $7f
	dec  bc                                          ; $6bfd: $0b
	sbc  a                                           ; $6bfe: $9f
	ld   e, a                                        ; $6bff: $5f
	rst  ToBoot                                         ; $6c00: $c7
	rst  $30                                         ; $6c01: $f7
	inc  bc                                          ; $6c02: $03
	ei                                               ; $6c03: $fb
	ldh  a, [$7e]                                    ; $6c04: $f0 $7e
	ld   a, b                                        ; $6c06: $78
	pop  af                                          ; $6c07: $f1
	cp   $f1                                         ; $6c08: $fe $f1
	add  e                                           ; $6c0a: $83
	rst  $38                                         ; $6c0b: $ff
	add  b                                           ; $6c0c: $80
	ldh  a, [rSC]                                    ; $6c0d: $f0 $02
	ldh  [$ef], a                                    ; $6c0f: $e0 $ef
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6c11: $cf
	add  b                                           ; $6c12: $80
	rst  JumpTable                                         ; $6c13: $df
	inc  de                                          ; $6c14: $13
	ccf                                              ; $6c15: $3f
	rra                                              ; $6c16: $1f
	jr   jr_01d_6c20                                 ; $6c17: $18 $07

	add  a                                           ; $6c19: $87
	rst  $20                                         ; $6c1a: $e7
	add  c                                           ; $6c1b: $81

jr_01d_6c1c:
	ld   de, $6860                                   ; $6c1c: $11 $60 $68
	db   $f4                                         ; $6c1f: $f4

jr_01d_6c20:
	db   $fc                                         ; $6c20: $fc
	db   $e4                                         ; $6c21: $e4
	ld   hl, sp-$40                                  ; $6c22: $f8 $c0
	rst  $38                                         ; $6c24: $ff
	adc  h                                           ; $6c25: $8c
	rst  $38                                         ; $6c26: $ff
	rra                                              ; $6c27: $1f
	cp   a                                           ; $6c28: $bf
	add  b                                           ; $6c29: $80
	nop                                              ; $6c2a: $00
	add  b                                           ; $6c2b: $80
	add  b                                           ; $6c2c: $80
	add  l                                           ; $6c2d: $85
	nop                                              ; $6c2e: $00
	ld   [$00e0], sp                                 ; $6c2f: $08 $e0 $00
	xor  $f0                                         ; $6c32: $ee $f0
	cp   $03                                         ; $6c34: $fe $03
	ld   [bc], a                                     ; $6c36: $02
	inc  bc                                          ; $6c37: $03
	ld   bc, $0781                                   ; $6c38: $01 $81 $07
	ld   [bc], a                                     ; $6c3b: $02
	dec  b                                           ; $6c3c: $05
	inc  bc                                          ; $6c3d: $03
	ld   [bc], a                                     ; $6c3e: $02
	add  b                                           ; $6c3f: $80
	ld   bc, $0081                                   ; $6c40: $01 $81 $00
	inc  c                                           ; $6c43: $0c
	cp   $ff                                         ; $6c44: $fe $ff
	ld   a, c                                        ; $6c46: $79
	rst  $38                                         ; $6c47: $ff
	add  c                                           ; $6c48: $81
	rst  $38                                         ; $6c49: $ff
	adc  a                                           ; $6c4a: $8f
	rst  $38                                         ; $6c4b: $ff
	ld   a, $fc                                      ; $6c4c: $3e $fc
	cpl                                              ; $6c4e: $2f
	ei                                               ; $6c4f: $fb
	sbc  e                                           ; $6c50: $9b
	add  b                                           ; $6c51: $80
	di                                               ; $6c52: $f3
	ld   bc, $4743                                   ; $6c53: $01 $43 $47
	add  l                                           ; $6c56: $85
	nop                                              ; $6c57: $00
	add  hl, bc                                      ; $6c58: $09
	add  b                                           ; $6c59: $80
	nop                                              ; $6c5a: $00
	ld   hl, sp-$80                                  ; $6c5b: $f8 $80
	cp   $f8                                         ; $6c5d: $fe $f8
	rst  $38                                         ; $6c5f: $ff
	cp   $ee                                         ; $6c60: $fe $ee
	ld   c, $82                                      ; $6c62: $0e $82
	rrca                                             ; $6c64: $0f
	add  b                                           ; $6c65: $80
	rlca                                             ; $6c66: $07
	ld   [bc], a                                     ; $6c67: $02
	dec  bc                                          ; $6c68: $0b
	inc  bc                                          ; $6c69: $03
	ld   b, $81                                      ; $6c6a: $06 $81
	ld   bc, $c005                                   ; $6c6c: $01 $05 $c0
	nop                                              ; $6c6f: $00
	ret  nc                                          ; $6c70: $d0

	nop                                              ; $6c71: $00
	ret  nz                                          ; $6c72: $c0

	nop                                              ; $6c73: $00
	add  b                                           ; $6c74: $80
	ldh  a, [rTMA]                                   ; $6c75: $f0 $06
	cp   h                                           ; $6c77: $bc
	db   $fd                                         ; $6c78: $fd
	ld   a, l                                        ; $6c79: $7d
	rst  $38                                         ; $6c7a: $ff
	db   $fd                                         ; $6c7b: $fd
	rst  $38                                         ; $6c7c: $ff
	cp   $81                                         ; $6c7d: $fe $81
	rst  $38                                         ; $6c7f: $ff
	inc  d                                           ; $6c80: $14
	nop                                              ; $6c81: $00
	inc  e                                           ; $6c82: $1c
	inc  hl                                          ; $6c83: $23
	inc  a                                           ; $6c84: $3c
	rlca                                             ; $6c85: $07
	ei                                               ; $6c86: $fb
	rst  $38                                         ; $6c87: $ff
	rlca                                             ; $6c88: $07
	add  hl, bc                                      ; $6c89: $09
	cp   $ff                                         ; $6c8a: $fe $ff
	nop                                              ; $6c8c: $00
	ld   c, $8e                                      ; $6c8d: $0e $8e
	sub  b                                           ; $6c8f: $90
	add  b                                           ; $6c90: $80
	sub  [hl]                                        ; $6c91: $96
	ld   [$01df], sp                                 ; $6c92: $08 $df $01
	rst  JumpTable                                         ; $6c95: $df
	add  b                                           ; $6c96: $80
	cp   a                                           ; $6c97: $bf
	ld   b, $7f                                      ; $6c98: $06 $7f
	add  a                                           ; $6c9a: $87
	rst  $38                                         ; $6c9b: $ff
	ld   hl, sp+$07                                  ; $6c9c: $f8 $07
	ld   b, a                                        ; $6c9e: $47
	ld   b, b                                        ; $6c9f: $40
	add  b                                           ; $6ca0: $80
	dec  a                                           ; $6ca1: $3d
	add  c                                           ; $6ca2: $81
	rst  $38                                         ; $6ca3: $ff
	add  b                                           ; $6ca4: $80
	db   $fd                                         ; $6ca5: $fd
	add  b                                           ; $6ca6: $80
	rst  $30                                         ; $6ca7: $f7
	add  e                                           ; $6ca8: $83
	rst  $38                                         ; $6ca9: $ff
	add  b                                           ; $6caa: $80
	ld   hl, sp-$80                                  ; $6cab: $f8 $80
	rst  $38                                         ; $6cad: $ff
	inc  bc                                          ; $6cae: $03
	ld   hl, sp-$15                                  ; $6caf: $f8 $eb
	rst  $28                                         ; $6cb1: $ef
	db   $fc                                         ; $6cb2: $fc
	add  d                                           ; $6cb3: $82
	rst  $38                                         ; $6cb4: $ff
	nop                                              ; $6cb5: $00
	nop                                              ; $6cb6: $00
	add  b                                           ; $6cb7: $80
	rst  $38                                         ; $6cb8: $ff
	nop                                              ; $6cb9: $00
	nop                                              ; $6cba: $00
	add  b                                           ; $6cbb: $80
	rst  $38                                         ; $6cbc: $ff
	dec  b                                           ; $6cbd: $05
	cp   $ff                                         ; $6cbe: $fe $ff
	ld   bc, $fff0                                   ; $6cc0: $01 $f0 $ff
	ld   c, a                                        ; $6cc3: $4f
	add  b                                           ; $6cc4: $80
	rst  JumpTable                                         ; $6cc5: $df
	inc  d                                           ; $6cc6: $14
	call c, Call_01d_43df                            ; $6cc7: $dc $df $43
	call c, $03df                                    ; $6cca: $dc $df $03
	add  hl, sp                                      ; $6ccd: $39
	cp   e                                           ; $6cce: $bb
	cp   $7d                                         ; $6ccf: $fe $7d
	ld   c, $7f                                      ; $6cd1: $0e $7f
	di                                               ; $6cd3: $f3
	adc  a                                           ; $6cd4: $8f
	db   $fc                                         ; $6cd5: $fc
	di                                               ; $6cd6: $f3
	inc  bc                                          ; $6cd7: $03
	db   $fc                                         ; $6cd8: $fc
	db   $fd                                         ; $6cd9: $fd
	ld   bc, $80ff                                   ; $6cda: $01 $ff $80
	cp   l                                           ; $6cdd: $bd
	add  b                                           ; $6cde: $80
	cp   $0b                                         ; $6cdf: $fe $0b
	rst  $38                                         ; $6ce1: $ff
	ld   hl, sp-$01                                  ; $6ce2: $f8 $ff
	or   $fe                                         ; $6ce4: $f6 $fe
	ld   c, $f9                                      ; $6ce6: $0e $f9
	ld   a, a                                        ; $6ce8: $7f
	rlca                                             ; $6ce9: $07
	ld   a, a                                        ; $6cea: $7f
	sbc  a                                           ; $6ceb: $9f
	sbc  [hl]                                        ; $6cec: $9e
	add  b                                           ; $6ced: $80
	rst  $20                                         ; $6cee: $e7
	db   $10                                         ; $6cef: $10
	ld   h, b                                        ; $6cf0: $60
	ld   a, a                                        ; $6cf1: $7f
	ld   hl, $f1c1                                   ; $6cf2: $21 $c1 $f1
	ld   a, h                                        ; $6cf5: $7c
	ld   c, [hl]                                     ; $6cf6: $4e
	inc  a                                           ; $6cf7: $3c
	adc  a                                           ; $6cf8: $8f
	adc  [hl]                                        ; $6cf9: $8e
	jp   $c083                                       ; $6cfa: $c3 $83 $c0


	ld   a, a                                        ; $6cfd: $7f
	add  b                                           ; $6cfe: $80
	cp   $7e                                         ; $6cff: $fe $7e
	add  b                                           ; $6d01: $80
	cp   $03                                         ; $6d02: $fe $03
	ld   hl, sp-$39                                  ; $6d04: $f8 $c7
	rst  $38                                         ; $6d06: $ff
	ret  nz                                          ; $6d07: $c0

	add  b                                           ; $6d08: $80
	ld   a, l                                        ; $6d09: $7d
	dec  b                                           ; $6d0a: $05
	pop  af                                          ; $6d0b: $f1
	db   $fd                                         ; $6d0c: $fd
	dec  c                                           ; $6d0d: $0d
	pop  af                                          ; $6d0e: $f1
	db   $fd                                         ; $6d0f: $fd
	dec  c                                           ; $6d10: $0d
	add  b                                           ; $6d11: $80
	db   $ed                                         ; $6d12: $ed
	add  b                                           ; $6d13: $80

Jump_01d_6d14:
	ld   sp, $bf03                                   ; $6d14: $31 $03 $bf
	ccf                                              ; $6d17: $3f
	rst  $38                                         ; $6d18: $ff
	ld   a, a                                        ; $6d19: $7f
	adc  d                                           ; $6d1a: $8a
	rst  $38                                         ; $6d1b: $ff
	add  d                                           ; $6d1c: $82
	cp   $03                                         ; $6d1d: $fe $03
	db   $fc                                         ; $6d1f: $fc
	db   $fd                                         ; $6d20: $fd
	ld   sp, hl                                      ; $6d21: $f9
	ei                                               ; $6d22: $fb
	add  c                                           ; $6d23: $81
	di                                               ; $6d24: $f3
	rlca                                             ; $6d25: $07
	push af                                          ; $6d26: $f5
	push hl                                          ; $6d27: $e5
	xor  $ce                                         ; $6d28: $ee $ce
	sbc  $e1                                         ; $6d2a: $de $e1
	nop                                              ; $6d2c: $00
	add  b                                           ; $6d2d: $80
	add  c                                           ; $6d2e: $81
	nop                                              ; $6d2f: $00
	ld   [bc], a                                     ; $6d30: $02
	ld   [hl], b                                     ; $6d31: $70
	ld   bc, $8009                                   ; $6d32: $01 $09 $80
	ld   [hl], c                                     ; $6d35: $71
	inc  c                                           ; $6d36: $0c
	ld   [hl], d                                     ; $6d37: $72
	ld   [hl], h                                     ; $6d38: $74
	ld   a, b                                        ; $6d39: $78
	ld   a, c                                        ; $6d3a: $79
	db   $fd                                         ; $6d3b: $fd
	ld   b, $43                                      ; $6d3c: $06 $43
	ld   c, a                                        ; $6d3e: $4f
	add  a                                           ; $6d3f: $87
	sbc  [hl]                                        ; $6d40: $9e
	adc  [hl]                                        ; $6d41: $8e
	xor  h                                           ; $6d42: $ac
	inc  l                                           ; $6d43: $2c
	add  b                                           ; $6d44: $80
	ld   l, l                                        ; $6d45: $6d
	add  b                                           ; $6d46: $80
	ld   l, e                                        ; $6d47: $6b
	nop                                              ; $6d48: $00
	ei                                               ; $6d49: $fb
	add  c                                           ; $6d4a: $81
	db   $db                                         ; $6d4b: $db
	ld   bc, $ff3f                                   ; $6d4c: $01 $3f $ff
	add  b                                           ; $6d4f: $80
	ccf                                              ; $6d50: $3f
	add  b                                           ; $6d51: $80
	adc  a                                           ; $6d52: $8f
	add  d                                           ; $6d53: $82
	rst  $28                                         ; $6d54: $ef
	add  b                                           ; $6d55: $80
	rst  $20                                         ; $6d56: $e7
	add  d                                           ; $6d57: $82
	rst  $30                                         ; $6d58: $f7
	ld   [$c0cf], sp                                 ; $6d59: $08 $cf $c0
	ld   hl, sp-$0f                                  ; $6d5c: $f8 $f1
	ldh  a, [$f1]                                    ; $6d5e: $f0 $f1
	rst  $38                                         ; $6d60: $ff
	ei                                               ; $6d61: $fb
	rst  $38                                         ; $6d62: $ff
	add  c                                           ; $6d63: $81
	db   $fd                                         ; $6d64: $fd
	nop                                              ; $6d65: $00
	rst  $38                                         ; $6d66: $ff
	add  c                                           ; $6d67: $81
	cp   $8b                                         ; $6d68: $fe $8b
	nop                                              ; $6d6a: $00
	add  b                                           ; $6d6b: $80
	ld   e, $81                                      ; $6d6c: $1e $81
	ccf                                              ; $6d6e: $3f
	nop                                              ; $6d6f: $00
	rra                                              ; $6d70: $1f
	add  b                                           ; $6d71: $80
	rrca                                             ; $6d72: $0f
	dec  bc                                          ; $6d73: $0b
	rlca                                             ; $6d74: $07
	ld   c, a                                        ; $6d75: $4f
	ld   bc, $0015                                   ; $6d76: $01 $15 $00
	ld   b, l                                        ; $6d79: $45
	nop                                              ; $6d7a: $00
	dec  bc                                          ; $6d7b: $0b
	nop                                              ; $6d7c: $00
	scf                                              ; $6d7d: $37
	nop                                              ; $6d7e: $00
	dec  b                                           ; $6d7f: $05
	add  b                                           ; $6d80: $80
	add  b                                           ; $6d81: $80
	add  b                                           ; $6d82: $80
	ldh  [$80], a                                    ; $6d83: $e0 $80
	ldh  a, [$80]                                    ; $6d85: $f0 $80
	ld   [hl], b                                     ; $6d87: $70
	add  b                                           ; $6d88: $80
	ld   h, b                                        ; $6d89: $60
	dec  b                                           ; $6d8a: $05
	nop                                              ; $6d8b: $00
	add  b                                           ; $6d8c: $80
	nop                                              ; $6d8d: $00
	add  b                                           ; $6d8e: $80
	nop                                              ; $6d8f: $00
	rst  $38                                         ; $6d90: $ff
	rst  $38                                         ; $6d91: $ff
	nop                                              ; $6d92: $00
	rst  $38                                         ; $6d93: $ff
	nop                                              ; $6d94: $00
	rst  $38                                         ; $6d95: $ff
	nop                                              ; $6d96: $00
	ld   a, [$c900]                                  ; $6d97: $fa $00 $c9
	nop                                              ; $6d9a: $00
	nop                                              ; $6d9b: $00
	add  [hl]                                        ; $6d9c: $86
	adc  a                                           ; $6d9d: $8f
	nop                                              ; $6d9e: $00
	add  b                                           ; $6d9f: $80
	jr   nz, jr_01d_6da2                             ; $6da0: $20 $00

jr_01d_6da2:
	add  [hl]                                        ; $6da2: $86
	adc  c                                           ; $6da3: $89
	nop                                              ; $6da4: $00
	ld   bc, $8a86                                   ; $6da5: $01 $86 $8a
	adc  l                                           ; $6da8: $8d
	nop                                              ; $6da9: $00
	inc  bc                                          ; $6daa: $03
	ld   [$8200], sp                                 ; $6dab: $08 $00 $82
	add  [hl]                                        ; $6dae: $86
	adc  c                                           ; $6daf: $89
	nop                                              ; $6db0: $00
	ld   bc, $8286                                   ; $6db1: $01 $86 $82
	add  b                                           ; $6db4: $80
	rlca                                             ; $6db5: $07
	adc  l                                           ; $6db6: $8d
	nop                                              ; $6db7: $00
	ld   bc, $8682                                   ; $6db8: $01 $82 $86
	adc  c                                           ; $6dbb: $89
	nop                                              ; $6dbc: $00
	ld   bc, $8586                                   ; $6dbd: $01 $86 $85
	adc  b                                           ; $6dc0: $88
	nop                                              ; $6dc1: $00
	nop                                              ; $6dc2: $00
	rlca                                             ; $6dc3: $07
	add  d                                           ; $6dc4: $82
	nop                                              ; $6dc5: $00
	inc  bc                                          ; $6dc6: $03
	ld   [$8a00], sp                                 ; $6dc7: $08 $00 $8a
	add  [hl]                                        ; $6dca: $86
	adc  c                                           ; $6dcb: $89
	nop                                              ; $6dcc: $00
	ld   bc, $8586                                   ; $6dcd: $01 $86 $85
	adc  c                                           ; $6dd0: $89
	nop                                              ; $6dd1: $00
	nop                                              ; $6dd2: $00
	rlca                                             ; $6dd3: $07
	add  e                                           ; $6dd4: $83
	nop                                              ; $6dd5: $00
	ld   bc, $8682                                   ; $6dd6: $01 $82 $86
	adc  c                                           ; $6dd9: $89
	nop                                              ; $6dda: $00
	ld   bc, $8586                                   ; $6ddb: $01 $86 $85
	adc  a                                           ; $6dde: $8f
	nop                                              ; $6ddf: $00
	ld   bc, $8685                                   ; $6de0: $01 $85 $86
	adc  c                                           ; $6de3: $89
	nop                                              ; $6de4: $00
	ld   bc, $8586                                   ; $6de5: $01 $86 $85
	adc  a                                           ; $6de8: $8f
	nop                                              ; $6de9: $00
	ld   bc, $8685                                   ; $6dea: $01 $85 $86
	adc  c                                           ; $6ded: $89
	nop                                              ; $6dee: $00
	ld   bc, $8586                                   ; $6def: $01 $86 $85
	add  b                                           ; $6df2: $80
	nop                                              ; $6df3: $00
	nop                                              ; $6df4: $00
	ld   b, $8c                                      ; $6df5: $06 $8c
	nop                                              ; $6df7: $00
	ld   bc, $8683                                   ; $6df8: $01 $83 $86
	adc  c                                           ; $6dfb: $89
	nop                                              ; $6dfc: $00
	dec  b                                           ; $6dfd: $05
	add  [hl]                                        ; $6dfe: $86
	add  e                                           ; $6dff: $83
	nop                                              ; $6e00: $00
	ld   [$0800], sp                                 ; $6e01: $08 $00 $08
	add  [hl]                                        ; $6e04: $86
	nop                                              ; $6e05: $00
	nop                                              ; $6e06: $00
	ld   [$0082], sp                                 ; $6e07: $08 $82 $00
	ld   bc, $868b                                   ; $6e0a: $01 $8b $86
	adc  c                                           ; $6e0d: $89
	nop                                              ; $6e0e: $00
	ld   bc, $8b86                                   ; $6e0f: $01 $86 $8b
	add  l                                           ; $6e12: $85
	nop                                              ; $6e13: $00
	nop                                              ; $6e14: $00
	ld   [$0083], sp                                 ; $6e15: $08 $83 $00
	nop                                              ; $6e18: $00
	ld   [$0081], sp                                 ; $6e19: $08 $81 $00
	ld   bc, $868b                                   ; $6e1c: $01 $8b $86
	adc  c                                           ; $6e1f: $89
	nop                                              ; $6e20: $00
	ld   bc, $8b86                                   ; $6e21: $01 $86 $8b
	add  e                                           ; $6e24: $83
	nop                                              ; $6e25: $00
	nop                                              ; $6e26: $00
	ld   [$0084], sp                                 ; $6e27: $08 $84 $00
	nop                                              ; $6e2a: $00
	ld   [$0082], sp                                 ; $6e2b: $08 $82 $00
	ld   bc, $868b                                   ; $6e2e: $01 $8b $86
	adc  c                                           ; $6e31: $89
	nop                                              ; $6e32: $00
	ld   bc, $8b86                                   ; $6e33: $01 $86 $8b
	adc  a                                           ; $6e36: $8f
	nop                                              ; $6e37: $00
	ld   bc, $868b                                   ; $6e38: $01 $8b $86
	adc  c                                           ; $6e3b: $89
	nop                                              ; $6e3c: $00
	ld   bc, $8386                                   ; $6e3d: $01 $86 $83
	add  d                                           ; $6e40: $82
	nop                                              ; $6e41: $00
	add  b                                           ; $6e42: $80
	ld   [$0085], sp                                 ; $6e43: $08 $85 $00
	nop                                              ; $6e46: $00
	ld   [$0081], sp                                 ; $6e47: $08 $81 $00
	ld   bc, $868b                                   ; $6e4a: $01 $8b $86
	adc  c                                           ; $6e4d: $89
	nop                                              ; $6e4e: $00
	nop                                              ; $6e4f: $00
	add  [hl]                                        ; $6e50: $86
	sub  c                                           ; $6e51: $91
	nop                                              ; $6e52: $00
	nop                                              ; $6e53: $00
	add  [hl]                                        ; $6e54: $86
	adc  c                                           ; $6e55: $89
	nop                                              ; $6e56: $00
	nop                                              ; $6e57: $00
	add  [hl]                                        ; $6e58: $86
	add  d                                           ; $6e59: $82
	nop                                              ; $6e5a: $00
	ld   [bc], a                                     ; $6e5b: $02
	ld   [$0800], sp                                 ; $6e5c: $08 $00 $08
	add  e                                           ; $6e5f: $83
	nop                                              ; $6e60: $00
	nop                                              ; $6e61: $00
	ld   [$0082], sp                                 ; $6e62: $08 $82 $00
	ld   [bc], a                                     ; $6e65: $02
	ld   [$8600], sp                                 ; $6e66: $08 $00 $86
	adc  c                                           ; $6e69: $89
	nop                                              ; $6e6a: $00
	nop                                              ; $6e6b: $00
	add  [hl]                                        ; $6e6c: $86
	add  d                                           ; $6e6d: $82
	nop                                              ; $6e6e: $00
	ld   [bc], a                                     ; $6e6f: $02
	ld   [$0800], sp                                 ; $6e70: $08 $00 $08
	add  e                                           ; $6e73: $83
	nop                                              ; $6e74: $00
	nop                                              ; $6e75: $00
	ld   [$0082], sp                                 ; $6e76: $08 $82 $00
	ld   [bc], a                                     ; $6e79: $02
	ld   [$8600], sp                                 ; $6e7a: $08 $00 $86
	adc  c                                           ; $6e7d: $89
	nop                                              ; $6e7e: $00
	nop                                              ; $6e7f: $00
	add  [hl]                                        ; $6e80: $86
	add  d                                           ; $6e81: $82
	nop                                              ; $6e82: $00
	ld   [bc], a                                     ; $6e83: $02
	ld   [$0800], sp                                 ; $6e84: $08 $00 $08
	add  e                                           ; $6e87: $83
	nop                                              ; $6e88: $00
	nop                                              ; $6e89: $00
	ld   [$0082], sp                                 ; $6e8a: $08 $82 $00
	ld   [bc], a                                     ; $6e8d: $02
	ld   [$8600], sp                                 ; $6e8e: $08 $00 $86
	adc  c                                           ; $6e91: $89
	nop                                              ; $6e92: $00
	nop                                              ; $6e93: $00
	add  [hl]                                        ; $6e94: $86
	add  l                                           ; $6e95: $85
	nop                                              ; $6e96: $00
	add  b                                           ; $6e97: $80
	jr   nz, @-$76                                   ; $6e98: $20 $88

	nop                                              ; $6e9a: $00
	nop                                              ; $6e9b: $00
	add  [hl]                                        ; $6e9c: $86
	adc  c                                           ; $6e9d: $89
	nop                                              ; $6e9e: $00
	ld   bc, $0703                                   ; $6e9f: $01 $03 $07
	adc  h                                           ; $6ea2: $8c
	nop                                              ; $6ea3: $00
	add  b                                           ; $6ea4: $80
	rlca                                             ; $6ea5: $07
	adc  h                                           ; $6ea6: $8c
	nop                                              ; $6ea7: $00
	nop                                              ; $6ea8: $00
	rlca                                             ; $6ea9: $07
	add  a                                           ; $6eaa: $87
	nop                                              ; $6eab: $00
	nop                                              ; $6eac: $00
	rlca                                             ; $6ead: $07
	add  e                                           ; $6eae: $83
	nop                                              ; $6eaf: $00
	nop                                              ; $6eb0: $00
	rlca                                             ; $6eb1: $07
	add  a                                           ; $6eb2: $87
	nop                                              ; $6eb3: $00
	nop                                              ; $6eb4: $00
	rlca                                             ; $6eb5: $07
	add  d                                           ; $6eb6: $82
	nop                                              ; $6eb7: $00
	ld   bc, $0f08                                   ; $6eb8: $01 $08 $0f
	add  e                                           ; $6ebb: $83
	nop                                              ; $6ebc: $00
	nop                                              ; $6ebd: $00
	ld   [$0082], sp                                 ; $6ebe: $08 $82 $00
	nop                                              ; $6ec1: $00
	rlca                                             ; $6ec2: $07
	add  d                                           ; $6ec3: $82
	nop                                              ; $6ec4: $00
	nop                                              ; $6ec5: $00
	rrca                                             ; $6ec6: $0f
	adc  b                                           ; $6ec7: $88
	nop                                              ; $6ec8: $00
	nop                                              ; $6ec9: $00
	rlca                                             ; $6eca: $07
	add  d                                           ; $6ecb: $82
	nop                                              ; $6ecc: $00
	nop                                              ; $6ecd: $00
	rrca                                             ; $6ece: $0f
	adc  b                                           ; $6ecf: $88
	nop                                              ; $6ed0: $00
	add  b                                           ; $6ed1: $80
	ld   [$0081], sp                                 ; $6ed2: $08 $81 $00
	nop                                              ; $6ed5: $00
	ld   [$008d], sp                                 ; $6ed6: $08 $8d $00
	inc  bc                                          ; $6ed9: $03
	add  l                                           ; $6eda: $85
	add  d                                           ; $6edb: $82
	rlca                                             ; $6edc: $07
	rrca                                             ; $6edd: $0f
	add  d                                           ; $6ede: $82
	nop                                              ; $6edf: $00
	inc  bc                                          ; $6ee0: $03
	ld   [$0800], sp                                 ; $6ee1: $08 $00 $08
	nop                                              ; $6ee4: $00
	add  b                                           ; $6ee5: $80
	ld   [$0001], sp                                 ; $6ee6: $08 $01 $00
	ld   [$0081], sp                                 ; $6ee9: $08 $81 $00
	ld   bc, $8682                                   ; $6eec: $01 $82 $86
	adc  c                                           ; $6eef: $89
	nop                                              ; $6ef0: $00
	inc  bc                                          ; $6ef1: $03
	add  [hl]                                        ; $6ef2: $86
	add  l                                           ; $6ef3: $85
	nop                                              ; $6ef4: $00
	ld   [$0086], sp                                 ; $6ef5: $08 $86 $00
	nop                                              ; $6ef8: $00
	rlca                                             ; $6ef9: $07
	add  h                                           ; $6efa: $84
	nop                                              ; $6efb: $00
	ld   bc, $868a                                   ; $6efc: $01 $8a $86
	adc  c                                           ; $6eff: $89
	nop                                              ; $6f00: $00
	inc  bc                                          ; $6f01: $03
	add  [hl]                                        ; $6f02: $86
	add  l                                           ; $6f03: $85
	nop                                              ; $6f04: $00
	ld   [$0087], sp                                 ; $6f05: $08 $87 $00
	nop                                              ; $6f08: $00
	rlca                                             ; $6f09: $07
	add  b                                           ; $6f0a: $80
	ld   [$0004], sp                                 ; $6f0b: $08 $04 $00
	ld   [$8200], sp                                 ; $6f0e: $08 $00 $82
	add  [hl]                                        ; $6f11: $86
	adc  c                                           ; $6f12: $89
	nop                                              ; $6f13: $00
	ld   bc, $8586                                   ; $6f14: $01 $86 $85
	add  b                                           ; $6f17: $80
	nop                                              ; $6f18: $00
	nop                                              ; $6f19: $00
	ld   [$0085], sp                                 ; $6f1a: $08 $85 $00
	add  b                                           ; $6f1d: $80
	ld   [$0081], sp                                 ; $6f1e: $08 $81 $00
	inc  bc                                          ; $6f21: $03
	ld   [$8500], sp                                 ; $6f22: $08 $00 $85
	add  [hl]                                        ; $6f25: $86
	adc  c                                           ; $6f26: $89
	nop                                              ; $6f27: $00
	ld   bc, $8286                                   ; $6f28: $01 $86 $82
	add  b                                           ; $6f2b: $80
	rlca                                             ; $6f2c: $07
	nop                                              ; $6f2d: $00
	ld   [$0080], sp                                 ; $6f2e: $08 $80 $00
	add  b                                           ; $6f31: $80
	ld   [$0002], sp                                 ; $6f32: $08 $02 $00
	ld   [$8000], sp                                 ; $6f35: $08 $00 $80
	ld   [$0083], sp                                 ; $6f38: $08 $83 $00
	ld   bc, $8682                                   ; $6f3b: $01 $82 $86
	adc  c                                           ; $6f3e: $89
	nop                                              ; $6f3f: $00
	ld   bc, $8586                                   ; $6f40: $01 $86 $85
	add  b                                           ; $6f43: $80
	nop                                              ; $6f44: $00
	nop                                              ; $6f45: $00
	ld   [$0085], sp                                 ; $6f46: $08 $85 $00
	nop                                              ; $6f49: $00
	rlca                                             ; $6f4a: $07
	add  c                                           ; $6f4b: $81
	nop                                              ; $6f4c: $00
	add  b                                           ; $6f4d: $80
	ld   [$0002], sp                                 ; $6f4e: $08 $02 $00
	adc  d                                           ; $6f51: $8a
	add  [hl]                                        ; $6f52: $86
	adc  c                                           ; $6f53: $89
	nop                                              ; $6f54: $00
	ld   bc, $8586                                   ; $6f55: $01 $86 $85
	add  b                                           ; $6f58: $80
	nop                                              ; $6f59: $00
	nop                                              ; $6f5a: $00
	ld   [$0086], sp                                 ; $6f5b: $08 $86 $00
	nop                                              ; $6f5e: $00
	rlca                                             ; $6f5f: $07
	add  b                                           ; $6f60: $80
	nop                                              ; $6f61: $00
	nop                                              ; $6f62: $00
	ld   [$0080], sp                                 ; $6f63: $08 $80 $00
	ld   bc, $8682                                   ; $6f66: $01 $82 $86
	adc  c                                           ; $6f69: $89
	nop                                              ; $6f6a: $00
	ld   bc, $8586                                   ; $6f6b: $01 $86 $85
	add  b                                           ; $6f6e: $80
	nop                                              ; $6f6f: $00
	nop                                              ; $6f70: $00
	ld   [$0089], sp                                 ; $6f71: $08 $89 $00
	nop                                              ; $6f74: $00
	ld   [$0080], sp                                 ; $6f75: $08 $80 $00
	ld   bc, $8685                                   ; $6f78: $01 $85 $86
	ret                                              ; $6f7b: $c9


	nop                                              ; $6f7c: $00
	ret                                              ; $6f7d: $c9


	nop                                              ; $6f7e: $00
	nop                                              ; $6f7f: $00
	ld   [bc], a                                     ; $6f80: $02
	add  e                                           ; $6f81: $83
	nop                                              ; $6f82: $00
	nop                                              ; $6f83: $00
	ld   [$008b], sp                                 ; $6f84: $08 $8b $00
	nop                                              ; $6f87: $00
	dec  bc                                          ; $6f88: $0b
	add  l                                           ; $6f89: $85
	nop                                              ; $6f8a: $00
	nop                                              ; $6f8b: $00
	ld   b, $81                                      ; $6f8c: $06 $81
	nop                                              ; $6f8e: $00
	ld   bc, $0605                                   ; $6f8f: $01 $05 $06
	add  c                                           ; $6f92: $81
	nop                                              ; $6f93: $00
	ld   [bc], a                                     ; $6f94: $02
	ld   b, $08                                      ; $6f95: $06 $08
	dec  bc                                          ; $6f97: $0b
	adc  c                                           ; $6f98: $89
	nop                                              ; $6f99: $00
	add  b                                           ; $6f9a: $80
	dec  bc                                          ; $6f9b: $0b
	add  l                                           ; $6f9c: $85
	nop                                              ; $6f9d: $00
	nop                                              ; $6f9e: $00
	ld   b, $81                                      ; $6f9f: $06 $81
	nop                                              ; $6fa1: $00
	ld   bc, $0605                                   ; $6fa2: $01 $05 $06
	add  c                                           ; $6fa5: $81
	nop                                              ; $6fa6: $00
	ld   [bc], a                                     ; $6fa7: $02
	ld   b, $08                                      ; $6fa8: $06 $08
	dec  bc                                          ; $6faa: $0b
	adc  c                                           ; $6fab: $89
	nop                                              ; $6fac: $00
	add  b                                           ; $6fad: $80
	dec  bc                                          ; $6fae: $0b
	add  l                                           ; $6faf: $85
	nop                                              ; $6fb0: $00
	nop                                              ; $6fb1: $00
	ld   b, $81                                      ; $6fb2: $06 $81
	nop                                              ; $6fb4: $00
	ld   bc, $0605                                   ; $6fb5: $01 $05 $06
	add  b                                           ; $6fb8: $80
	ld   bc, $0003                                   ; $6fb9: $01 $03 $00
	ld   b, $08                                      ; $6fbc: $06 $08
	dec  bc                                          ; $6fbe: $0b
	adc  c                                           ; $6fbf: $89
	nop                                              ; $6fc0: $00
	add  b                                           ; $6fc1: $80
	dec  bc                                          ; $6fc2: $0b
	add  l                                           ; $6fc3: $85
	nop                                              ; $6fc4: $00
	nop                                              ; $6fc5: $00
	ld   b, $81                                      ; $6fc6: $06 $81
	nop                                              ; $6fc8: $00
	ld   bc, $0405                                   ; $6fc9: $01 $05 $04
	add  c                                           ; $6fcc: $81
	nop                                              ; $6fcd: $00
	ld   [bc], a                                     ; $6fce: $02
	inc  b                                           ; $6fcf: $04
	ld   [$890b], sp                                 ; $6fd0: $08 $0b $89
	nop                                              ; $6fd3: $00
	ld   bc, $0d0b                                   ; $6fd4: $01 $0b $0d
	adc  c                                           ; $6fd7: $89
	nop                                              ; $6fd8: $00
	nop                                              ; $6fd9: $00
	dec  b                                           ; $6fda: $05
	add  e                                           ; $6fdb: $83
	nop                                              ; $6fdc: $00
	ld   bc, $0b08                                   ; $6fdd: $01 $08 $0b
	adc  c                                           ; $6fe0: $89
	nop                                              ; $6fe1: $00
	ld   bc, $0d0b                                   ; $6fe2: $01 $0b $0d
	adc  c                                           ; $6fe5: $89
	nop                                              ; $6fe6: $00
	ld   bc, $0805                                   ; $6fe7: $01 $05 $08
	add  c                                           ; $6fea: $81
	nop                                              ; $6feb: $00
	add  b                                           ; $6fec: $80
	ld   [$0b00], sp                                 ; $6fed: $08 $00 $0b
	adc  c                                           ; $6ff0: $89
	nop                                              ; $6ff1: $00
	ld   bc, $0d0b                                   ; $6ff2: $01 $0b $0d
	adc  c                                           ; $6ff5: $89
	nop                                              ; $6ff6: $00
	nop                                              ; $6ff7: $00
	dec  b                                           ; $6ff8: $05
	add  e                                           ; $6ff9: $83
	nop                                              ; $6ffa: $00
	ld   bc, $0b08                                   ; $6ffb: $01 $08 $0b
	adc  c                                           ; $6ffe: $89
	nop                                              ; $6fff: $00
	ld   bc, $0d0b                                   ; $7000: $01 $0b $0d
	adc  c                                           ; $7003: $89
	nop                                              ; $7004: $00
	nop                                              ; $7005: $00
	inc  b                                           ; $7006: $04
	add  e                                           ; $7007: $83
	nop                                              ; $7008: $00
	ld   bc, FarGetAddrBank                                   ; $7009: $01 $09 $0b
	adc  c                                           ; $700c: $89
	nop                                              ; $700d: $00
	add  b                                           ; $700e: $80
	dec  bc                                          ; $700f: $0b
	adc  c                                           ; $7010: $89
	nop                                              ; $7011: $00
	nop                                              ; $7012: $00
	inc  bc                                          ; $7013: $03
	add  e                                           ; $7014: $83
	nop                                              ; $7015: $00
	ld   bc, $0b08                                   ; $7016: $01 $08 $0b
	adc  c                                           ; $7019: $89
	nop                                              ; $701a: $00
	add  b                                           ; $701b: $80
	dec  bc                                          ; $701c: $0b
	adc  c                                           ; $701d: $89
	nop                                              ; $701e: $00
	ld   bc, $0403                                   ; $701f: $01 $03 $04
	add  c                                           ; $7022: $81
	nop                                              ; $7023: $00
	ld   [bc], a                                     ; $7024: $02
	inc  b                                           ; $7025: $04
	ld   [$890b], sp                                 ; $7026: $08 $0b $89
	nop                                              ; $7029: $00
	add  b                                           ; $702a: $80
	dec  bc                                          ; $702b: $0b
	adc  c                                           ; $702c: $89
	nop                                              ; $702d: $00
	ld   bc, $0403                                   ; $702e: $01 $03 $04
	add  c                                           ; $7031: $81
	nop                                              ; $7032: $00
	ld   [bc], a                                     ; $7033: $02
	inc  b                                           ; $7034: $04
	ld   [$890b], sp                                 ; $7035: $08 $0b $89
	nop                                              ; $7038: $00
	add  b                                           ; $7039: $80
	dec  bc                                          ; $703a: $0b
	adc  c                                           ; $703b: $89
	nop                                              ; $703c: $00
	ld   bc, $0703                                   ; $703d: $01 $03 $07
	add  c                                           ; $7040: $81
	nop                                              ; $7041: $00
	ld   [bc], a                                     ; $7042: $02
	rlca                                             ; $7043: $07
	nop                                              ; $7044: $00
	inc  bc                                          ; $7045: $03
	adc  c                                           ; $7046: $89
	nop                                              ; $7047: $00
	add  b                                           ; $7048: $80
	inc  bc                                          ; $7049: $03
	add  c                                           ; $704a: $81
	nop                                              ; $704b: $00
	ld   [bc], a                                     ; $704c: $02
	ld   [bc], a                                     ; $704d: $02
	nop                                              ; $704e: $00
	add  hl, bc                                      ; $704f: $09
	add  e                                           ; $7050: $83
	nop                                              ; $7051: $00
	ld   bc, $0708                                   ; $7052: $01 $08 $07
	add  c                                           ; $7055: $81
	nop                                              ; $7056: $00
	inc  b                                           ; $7057: $04
	rlca                                             ; $7058: $07
	nop                                              ; $7059: $00
	ld   [bc], a                                     ; $705a: $02
	nop                                              ; $705b: $00
	ld   [bc], a                                     ; $705c: $02
	adc  b                                           ; $705d: $88
	nop                                              ; $705e: $00
	nop                                              ; $705f: $00
	inc  bc                                          ; $7060: $03
	add  c                                           ; $7061: $81
	nop                                              ; $7062: $00
	nop                                              ; $7063: $00
	dec  bc                                          ; $7064: $0b
	add  d                                           ; $7065: $82
	nop                                              ; $7066: $00
	nop                                              ; $7067: $00
	dec  bc                                          ; $7068: $0b
	add  b                                           ; $7069: $80
	nop                                              ; $706a: $00
	nop                                              ; $706b: $00
	inc  bc                                          ; $706c: $03
	add  h                                           ; $706d: $84
	nop                                              ; $706e: $00
	ld   [bc], a                                     ; $706f: $02
	ld   [bc], a                                     ; $7070: $02
	nop                                              ; $7071: $00
	ld   a, [bc]                                     ; $7072: $0a
	adc  b                                           ; $7073: $88
	nop                                              ; $7074: $00
	nop                                              ; $7075: $00
	dec  bc                                          ; $7076: $0b
	add  c                                           ; $7077: $81
	nop                                              ; $7078: $00
	nop                                              ; $7079: $00
	dec  b                                           ; $707a: $05
	add  c                                           ; $707b: $81
	nop                                              ; $707c: $00
	nop                                              ; $707d: $00
	ld   [bc], a                                     ; $707e: $02
	add  c                                           ; $707f: $81
	nop                                              ; $7080: $00
	ld   bc, $0804                                   ; $7081: $01 $04 $08
	add  c                                           ; $7084: $81
	nop                                              ; $7085: $00
	nop                                              ; $7086: $00
	ld   [$0081], sp                                 ; $7087: $08 $81 $00
	nop                                              ; $708a: $00
	ld   [$0080], sp                                 ; $708b: $08 $80 $00
	inc  bc                                          ; $708e: $03
	rlca                                             ; $708f: $07
	ld   b, b                                        ; $7090: $40
	nop                                              ; $7091: $00
	ld   b, b                                        ; $7092: $40
	add  c                                           ; $7093: $81
	nop                                              ; $7094: $00
	ld   bc, $2c20                                   ; $7095: $01 $20 $2c
	add  c                                           ; $7098: $81
	nop                                              ; $7099: $00
	nop                                              ; $709a: $00
	dec  b                                           ; $709b: $05
	add  b                                           ; $709c: $80
	ld   bc, $0001                                   ; $709d: $01 $01 $00
	ld   bc, $0081                                   ; $70a0: $01 $81 $00
	nop                                              ; $70a3: $00
	rlca                                             ; $70a4: $07
	add  e                                           ; $70a5: $83
	nop                                              ; $70a6: $00
	nop                                              ; $70a7: $00
	ld   [bc], a                                     ; $70a8: $02
	add  b                                           ; $70a9: $80
	nop                                              ; $70aa: $00
	nop                                              ; $70ab: $00
	ld   [$0080], sp                                 ; $70ac: $08 $80 $00
	nop                                              ; $70af: $00
	dec  b                                           ; $70b0: $05
	add  c                                           ; $70b1: $81
	nop                                              ; $70b2: $00
	inc  b                                           ; $70b3: $04
	rlca                                             ; $70b4: $07
	nop                                              ; $70b5: $00
	rlca                                             ; $70b6: $07
	nop                                              ; $70b7: $00
	ld   bc, $0081                                   ; $70b8: $01 $81 $00
	nop                                              ; $70bb: $00
	ld   [bc], a                                     ; $70bc: $02
	add  c                                           ; $70bd: $81
	nop                                              ; $70be: $00
	nop                                              ; $70bf: $00
	ld   [bc], a                                     ; $70c0: $02
	add  c                                           ; $70c1: $81
	nop                                              ; $70c2: $00
	nop                                              ; $70c3: $00
	rrca                                             ; $70c4: $0f
	add  e                                           ; $70c5: $83
	nop                                              ; $70c6: $00
	ld   bc, $0803                                   ; $70c7: $01 $03 $08
	add  b                                           ; $70ca: $80
	nop                                              ; $70cb: $00
	add  b                                           ; $70cc: $80
	ld   [$0500], sp                                 ; $70cd: $08 $00 $05
	add  l                                           ; $70d0: $85
	nop                                              ; $70d1: $00
	add  c                                           ; $70d2: $81
	ld   bc, $0001                                   ; $70d3: $01 $01 $00
	ld   bc, $0081                                   ; $70d6: $01 $81 $00
	add  c                                           ; $70d9: $81
	ld   bc, $0001                                   ; $70da: $01 $01 $00
	ld   c, $80                                      ; $70dd: $0e $80
	nop                                              ; $70df: $00
	nop                                              ; $70e0: $00
	ld   [$0080], sp                                 ; $70e1: $08 $80 $00
	inc  bc                                          ; $70e4: $03
	rlca                                             ; $70e5: $07
	ld   b, b                                        ; $70e6: $40
	nop                                              ; $70e7: $00
	ld   b, b                                        ; $70e8: $40
	add  c                                           ; $70e9: $81
	nop                                              ; $70ea: $00
	inc  bc                                          ; $70eb: $03
	jr   nz, @+$2e                                   ; $70ec: $20 $2c

	nop                                              ; $70ee: $00
	add  hl, bc                                      ; $70ef: $09
	add  c                                           ; $70f0: $81
	nop                                              ; $70f1: $00
	nop                                              ; $70f2: $00
	ld   b, $81                                      ; $70f3: $06 $81
	nop                                              ; $70f5: $00
	nop                                              ; $70f6: $00
	ld   b, $85                                      ; $70f7: $06 $85
	nop                                              ; $70f9: $00
	nop                                              ; $70fa: $00
	ld   [$0080], sp                                 ; $70fb: $08 $80 $00
	nop                                              ; $70fe: $00
	ld   [$0080], sp                                 ; $70ff: $08 $80 $00
	nop                                              ; $7102: $00
	dec  b                                           ; $7103: $05
	add  c                                           ; $7104: $81
	nop                                              ; $7105: $00
	ld   b, $07                                      ; $7106: $06 $07
	nop                                              ; $7108: $00
	rlca                                             ; $7109: $07
	nop                                              ; $710a: $00
	ld   bc, $0400                                   ; $710b: $01 $00 $04
	add  c                                           ; $710e: $81
	nop                                              ; $710f: $00
	nop                                              ; $7110: $00
	dec  b                                           ; $7111: $05
	add  c                                           ; $7112: $81
	nop                                              ; $7113: $00
	nop                                              ; $7114: $00
	dec  b                                           ; $7115: $05
	add  l                                           ; $7116: $85
	nop                                              ; $7117: $00
	add  b                                           ; $7118: $80
	ld   [$0080], sp                                 ; $7119: $08 $80 $00
	add  b                                           ; $711c: $80
	ld   [$0500], sp                                 ; $711d: $08 $00 $05
	add  l                                           ; $7120: $85
	nop                                              ; $7121: $00
	add  b                                           ; $7122: $80
	ld   bc, $0502                                   ; $7123: $01 $02 $05
	nop                                              ; $7126: $00
	dec  b                                           ; $7127: $05
	adc  c                                           ; $7128: $89
	nop                                              ; $7129: $00
	ld   [bc], a                                     ; $712a: $02
	dec  b                                           ; $712b: $05
	nop                                              ; $712c: $00
	dec  b                                           ; $712d: $05
	adc  e                                           ; $712e: $8b
	nop                                              ; $712f: $00
	inc  b                                           ; $7130: $04
	inc  c                                           ; $7131: $0c
	nop                                              ; $7132: $00
	add  hl, bc                                      ; $7133: $09
	nop                                              ; $7134: $00
	dec  b                                           ; $7135: $05
	add  b                                           ; $7136: $80
	nop                                              ; $7137: $00
	nop                                              ; $7138: $00
	dec  b                                           ; $7139: $05
	adc  b                                           ; $713a: $88
	nop                                              ; $713b: $00
	nop                                              ; $713c: $00
	dec  b                                           ; $713d: $05
	adc  e                                           ; $713e: $8b
	nop                                              ; $713f: $00
	inc  b                                           ; $7140: $04
	ld   bc, $0400                                   ; $7141: $01 $00 $04
	nop                                              ; $7144: $00
	dec  b                                           ; $7145: $05
	add  b                                           ; $7146: $80
	nop                                              ; $7147: $00
	nop                                              ; $7148: $00
	dec  b                                           ; $7149: $05
	adc  b                                           ; $714a: $88
	nop                                              ; $714b: $00
	nop                                              ; $714c: $00
	dec  b                                           ; $714d: $05
	adc  e                                           ; $714e: $8b
	nop                                              ; $714f: $00
	add  b                                           ; $7150: $80
	ld   bc, $0502                                   ; $7151: $01 $02 $05
	nop                                              ; $7154: $00
	dec  b                                           ; $7155: $05
	add  b                                           ; $7156: $80
	nop                                              ; $7157: $00
	nop                                              ; $7158: $00
	dec  b                                           ; $7159: $05
	rst  $38                                         ; $715a: $ff
	nop                                              ; $715b: $00
	rst  $38                                         ; $715c: $ff
	nop                                              ; $715d: $00
	add  [hl]                                        ; $715e: $86
	nop                                              ; $715f: $00
	sbc  $00                                         ; $7160: $de $00
	nop                                              ; $7162: $00
	ld   b, $8c                                      ; $7163: $06 $8c
	nop                                              ; $7165: $00
	nop                                              ; $7166: $00
	ld   [bc], a                                     ; $7167: $02
	add  d                                           ; $7168: $82
	nop                                              ; $7169: $00
	nop                                              ; $716a: $00
	inc  c                                           ; $716b: $0c
	adc  c                                           ; $716c: $89
	nop                                              ; $716d: $00
	nop                                              ; $716e: $00
	ld   c, $8c                                      ; $716f: $0e $8c
	nop                                              ; $7171: $00
	nop                                              ; $7172: $00
	ld   [bc], a                                     ; $7173: $02
	add  d                                           ; $7174: $82
	nop                                              ; $7175: $00
	nop                                              ; $7176: $00
	inc  c                                           ; $7177: $0c
	adc  c                                           ; $7178: $89
	nop                                              ; $7179: $00
	nop                                              ; $717a: $00
	ld   c, $8b                                      ; $717b: $0e $8b
	nop                                              ; $717d: $00
	nop                                              ; $717e: $00
	ld   [bc], a                                     ; $717f: $02
	add  e                                           ; $7180: $83
	nop                                              ; $7181: $00
	nop                                              ; $7182: $00
	inc  c                                           ; $7183: $0c
	adc  c                                           ; $7184: $89
	nop                                              ; $7185: $00
	nop                                              ; $7186: $00
	ld   c, $83                                      ; $7187: $0e $83
	nop                                              ; $7189: $00
	ld   [bc], a                                     ; $718a: $02
	ld   [bc], a                                     ; $718b: $02
	nop                                              ; $718c: $00
	ld   [bc], a                                     ; $718d: $02
	add  l                                           ; $718e: $85
	nop                                              ; $718f: $00
	nop                                              ; $7190: $00
	ld   [bc], a                                     ; $7191: $02
	add  c                                           ; $7192: $81
	nop                                              ; $7193: $00
	nop                                              ; $7194: $00
	inc  c                                           ; $7195: $0c
	adc  c                                           ; $7196: $89
	nop                                              ; $7197: $00
	nop                                              ; $7198: $00
	ld   c, $82                                      ; $7199: $0e $82
	nop                                              ; $719b: $00
	inc  b                                           ; $719c: $04
	ld   [bc], a                                     ; $719d: $02
	nop                                              ; $719e: $00
	ld   [bc], a                                     ; $719f: $02
	nop                                              ; $71a0: $00
	ld   [bc], a                                     ; $71a1: $02
	add  b                                           ; $71a2: $80
	nop                                              ; $71a3: $00
	nop                                              ; $71a4: $00
	ld   [bc], a                                     ; $71a5: $02
	add  b                                           ; $71a6: $80
	nop                                              ; $71a7: $00
	nop                                              ; $71a8: $00
	ld   [bc], a                                     ; $71a9: $02
	add  c                                           ; $71aa: $81
	nop                                              ; $71ab: $00
	ld   bc, $0e02                                   ; $71ac: $01 $02 $0e
	adc  c                                           ; $71af: $89
	nop                                              ; $71b0: $00
	nop                                              ; $71b1: $00
	ld   c, $82                                      ; $71b2: $0e $82
	nop                                              ; $71b4: $00
	nop                                              ; $71b5: $00
	ld   [bc], a                                     ; $71b6: $02
	add  h                                           ; $71b7: $84
	nop                                              ; $71b8: $00
	add  b                                           ; $71b9: $80
	ld   [bc], a                                     ; $71ba: $02
	add  e                                           ; $71bb: $83
	nop                                              ; $71bc: $00
	ld   bc, $0e02                                   ; $71bd: $01 $02 $0e
	adc  c                                           ; $71c0: $89
	nop                                              ; $71c1: $00
	nop                                              ; $71c2: $00
	ld   c, $82                                      ; $71c3: $0e $82
	nop                                              ; $71c5: $00
	nop                                              ; $71c6: $00
	ld   [bc], a                                     ; $71c7: $02
	add  h                                           ; $71c8: $84
	nop                                              ; $71c9: $00
	ld   bc, $0103                                   ; $71ca: $01 $03 $01
	add  e                                           ; $71cd: $83
	nop                                              ; $71ce: $00
	ld   bc, $0d03                                   ; $71cf: $01 $03 $0d
	adc  c                                           ; $71d2: $89
	nop                                              ; $71d3: $00
	nop                                              ; $71d4: $00
	ld   c, $82                                      ; $71d5: $0e $82
	nop                                              ; $71d7: $00
	nop                                              ; $71d8: $00
	ld   [bc], a                                     ; $71d9: $02
	add  c                                           ; $71da: $81
	nop                                              ; $71db: $00
	nop                                              ; $71dc: $00
	ld   [bc], a                                     ; $71dd: $02
	add  c                                           ; $71de: $81
	nop                                              ; $71df: $00
	add  b                                           ; $71e0: $80
	jr   nz, jr_01d_71e3                             ; $71e1: $20 $00

jr_01d_71e3:
	inc  bc                                          ; $71e3: $03
	add  d                                           ; $71e4: $82
	nop                                              ; $71e5: $00
	nop                                              ; $71e6: $00
	dec  c                                           ; $71e7: $0d
	adc  c                                           ; $71e8: $89
	nop                                              ; $71e9: $00
	nop                                              ; $71ea: $00
	ld   c, $83                                      ; $71eb: $0e $83
	nop                                              ; $71ed: $00
	nop                                              ; $71ee: $00
	ld   [bc], a                                     ; $71ef: $02
	add  b                                           ; $71f0: $80
	nop                                              ; $71f1: $00
	add  b                                           ; $71f2: $80
	ld   [bc], a                                     ; $71f3: $02
	add  b                                           ; $71f4: $80
	nop                                              ; $71f5: $00
	ld   [bc], a                                     ; $71f6: $02
	jr   nz, jr_01d_721b                             ; $71f7: $20 $22

	inc  bc                                          ; $71f9: $03
	add  d                                           ; $71fa: $82
	nop                                              ; $71fb: $00
	nop                                              ; $71fc: $00
	dec  c                                           ; $71fd: $0d
	adc  c                                           ; $71fe: $89
	nop                                              ; $71ff: $00
	nop                                              ; $7200: $00
	ld   c, $84                                      ; $7201: $0e $84
	nop                                              ; $7203: $00
	nop                                              ; $7204: $00
	ld   [bc], a                                     ; $7205: $02
	add  e                                           ; $7206: $83
	nop                                              ; $7207: $00
	ld   [bc], a                                     ; $7208: $02
	jr   nz, jr_01d_722d                             ; $7209: $20 $22

	inc  bc                                          ; $720b: $03
	add  d                                           ; $720c: $82
	nop                                              ; $720d: $00
	nop                                              ; $720e: $00
	dec  c                                           ; $720f: $0d
	adc  c                                           ; $7210: $89
	nop                                              ; $7211: $00
	nop                                              ; $7212: $00
	inc  c                                           ; $7213: $0c
	adc  d                                           ; $7214: $8a
	nop                                              ; $7215: $00
	ld   [bc], a                                     ; $7216: $02
	jr   nz, jr_01d_723b                             ; $7217: $20 $22

	inc  bc                                          ; $7219: $03
	add  d                                           ; $721a: $82

jr_01d_721b:
	nop                                              ; $721b: $00
	nop                                              ; $721c: $00
	dec  c                                           ; $721d: $0d
	adc  c                                           ; $721e: $89
	nop                                              ; $721f: $00
	nop                                              ; $7220: $00
	inc  c                                           ; $7221: $0c
	adc  c                                           ; $7222: $89
	nop                                              ; $7223: $00
	inc  bc                                          ; $7224: $03
	jr   nz, jr_01d_7227                             ; $7225: $20 $00

jr_01d_7227:
	ld   [hl+], a                                    ; $7227: $22
	inc  bc                                          ; $7228: $03
	add  d                                           ; $7229: $82
	nop                                              ; $722a: $00
	nop                                              ; $722b: $00
	dec  c                                           ; $722c: $0d

jr_01d_722d:
	adc  c                                           ; $722d: $89
	nop                                              ; $722e: $00
	nop                                              ; $722f: $00
	dec  c                                           ; $7230: $0d
	add  l                                           ; $7231: $85
	nop                                              ; $7232: $00
	ld   bc, $0302                                   ; $7233: $01 $02 $03
	add  d                                           ; $7236: $82
	nop                                              ; $7237: $00
	ld   bc, $0302                                   ; $7238: $01 $02 $03

jr_01d_723b:
	add  d                                           ; $723b: $82
	nop                                              ; $723c: $00
	nop                                              ; $723d: $00
	dec  c                                           ; $723e: $0d
	adc  c                                           ; $723f: $89
	nop                                              ; $7240: $00
	nop                                              ; $7241: $00
	dec  c                                           ; $7242: $0d
	sub  c                                           ; $7243: $91
	nop                                              ; $7244: $00
	nop                                              ; $7245: $00
	dec  c                                           ; $7246: $0d
	adc  c                                           ; $7247: $89
	nop                                              ; $7248: $00
	nop                                              ; $7249: $00
	inc  c                                           ; $724a: $0c
	add  c                                           ; $724b: $81
	nop                                              ; $724c: $00
	nop                                              ; $724d: $00
	ld   bc, $0089                                   ; $724e: $01 $89 $00
	nop                                              ; $7251: $00
	ld   bc, $0081                                   ; $7252: $01 $81 $00
	nop                                              ; $7255: $00
	inc  c                                           ; $7256: $0c
	adc  c                                           ; $7257: $89
	nop                                              ; $7258: $00
	nop                                              ; $7259: $00
	inc  c                                           ; $725a: $0c
	add  c                                           ; $725b: $81
	nop                                              ; $725c: $00
	nop                                              ; $725d: $00
	ld   bc, $0089                                   ; $725e: $01 $89 $00
	nop                                              ; $7261: $00
	ld   bc, $0081                                   ; $7262: $01 $81 $00
	nop                                              ; $7265: $00
	inc  c                                           ; $7266: $0c
	adc  c                                           ; $7267: $89
	nop                                              ; $7268: $00
	nop                                              ; $7269: $00
	inc  c                                           ; $726a: $0c
	add  d                                           ; $726b: $82
	nop                                              ; $726c: $00
	nop                                              ; $726d: $00
	ld   bc, $0086                                   ; $726e: $01 $86 $00
	nop                                              ; $7271: $00
	ld   bc, $0083                                   ; $7272: $01 $83 $00
	nop                                              ; $7275: $00
	inc  c                                           ; $7276: $0c
	adc  c                                           ; $7277: $89
	nop                                              ; $7278: $00
	nop                                              ; $7279: $00
	inc  c                                           ; $727a: $0c

jr_01d_727b:
	add  d                                           ; $727b: $82
	nop                                              ; $727c: $00
	nop                                              ; $727d: $00
	ld   bc, $0086                                   ; $727e: $01 $86 $00
	nop                                              ; $7281: $00
	ld   bc, $0083                                   ; $7282: $01 $83 $00
	nop                                              ; $7285: $00
	inc  c                                           ; $7286: $0c
	adc  c                                           ; $7287: $89
	nop                                              ; $7288: $00
	nop                                              ; $7289: $00
	dec  c                                           ; $728a: $0d
	sub  b                                           ; $728b: $90
	nop                                              ; $728c: $00
	ld   bc, $2d20                                   ; $728d: $01 $20 $2d
	adc  c                                           ; $7290: $89
	nop                                              ; $7291: $00
	nop                                              ; $7292: $00

jr_01d_7293:
	dec  c                                           ; $7293: $0d
	sub  b                                           ; $7294: $90
	nop                                              ; $7295: $00
	ld   bc, $2d20                                   ; $7296: $01 $20 $2d
	adc  c                                           ; $7299: $89
	nop                                              ; $729a: $00
	nop                                              ; $729b: $00
	dec  c                                           ; $729c: $0d
	sub  c                                           ; $729d: $91
	nop                                              ; $729e: $00
	nop                                              ; $729f: $00
	dec  c                                           ; $72a0: $0d
	adc  c                                           ; $72a1: $89
	nop                                              ; $72a2: $00
	ld   bc, $010d                                   ; $72a3: $01 $0d $01
	add  b                                           ; $72a6: $80
	nop                                              ; $72a7: $00
	nop                                              ; $72a8: $00
	ld   bc, $0089                                   ; $72a9: $01 $89 $00
	nop                                              ; $72ac: $00
	ld   bc, $0080                                   ; $72ad: $01 $80 $00
	ld   bc, $2d21                                   ; $72b0: $01 $21 $2d
	adc  c                                           ; $72b3: $89
	nop                                              ; $72b4: $00
	ld   bc, $010d                                   ; $72b5: $01 $0d $01
	add  b                                           ; $72b8: $80
	nop                                              ; $72b9: $00
	nop                                              ; $72ba: $00
	ld   bc, $0089                                   ; $72bb: $01 $89 $00
	nop                                              ; $72be: $00
	ld   bc, $0080                                   ; $72bf: $01 $80 $00
	ld   bc, $2d21                                   ; $72c2: $01 $21 $2d
	adc  c                                           ; $72c5: $89
	nop                                              ; $72c6: $00
	nop                                              ; $72c7: $00
	ld   c, l                                        ; $72c8: $4d
	sub  b                                           ; $72c9: $90
	nop                                              ; $72ca: $00
	ld   bc, $6d20                                   ; $72cb: $01 $20 $6d
	adc  c                                           ; $72ce: $89
	nop                                              ; $72cf: $00
	nop                                              ; $72d0: $00
	inc  c                                           ; $72d1: $0c
	sub  c                                           ; $72d2: $91
	nop                                              ; $72d3: $00
	nop                                              ; $72d4: $00
	inc  c                                           ; $72d5: $0c
	adc  c                                           ; $72d6: $89
	nop                                              ; $72d7: $00
	nop                                              ; $72d8: $00
	inc  c                                           ; $72d9: $0c
	sub  c                                           ; $72da: $91
	nop                                              ; $72db: $00
	nop                                              ; $72dc: $00
	inc  c                                           ; $72dd: $0c
	adc  c                                           ; $72de: $89
	nop                                              ; $72df: $00
	nop                                              ; $72e0: $00
	inc  c                                           ; $72e1: $0c
	sub  c                                           ; $72e2: $91
	nop                                              ; $72e3: $00
	nop                                              ; $72e4: $00
	inc  c                                           ; $72e5: $0c
	adc  c                                           ; $72e6: $89
	nop                                              ; $72e7: $00
	nop                                              ; $72e8: $00
	inc  c                                           ; $72e9: $0c
	sub  c                                           ; $72ea: $91
	nop                                              ; $72eb: $00
	nop                                              ; $72ec: $00
	inc  c                                           ; $72ed: $0c
	adc  c                                           ; $72ee: $89
	nop                                              ; $72ef: $00
	nop                                              ; $72f0: $00
	ld   c, $80                                      ; $72f1: $0e $80
	nop                                              ; $72f3: $00
	nop                                              ; $72f4: $00
	inc  bc                                          ; $72f5: $03
	adc  d                                           ; $72f6: $8a
	nop                                              ; $72f7: $00
	add  b                                           ; $72f8: $80
	jr   nz, jr_01d_727b                             ; $72f9: $20 $80

	nop                                              ; $72fb: $00
	nop                                              ; $72fc: $00
	dec  c                                           ; $72fd: $0d
	adc  c                                           ; $72fe: $89
	nop                                              ; $72ff: $00
	nop                                              ; $7300: $00

Call_01d_7301:
	ld   c, $80                                      ; $7301: $0e $80
	nop                                              ; $7303: $00
	ld   bc, $0103                                   ; $7304: $01 $03 $01
	add  h                                           ; $7307: $84
	nop                                              ; $7308: $00
	nop                                              ; $7309: $00
	ld   bc, $0080                                   ; $730a: $01 $80 $00
	inc  bc                                          ; $730d: $03

Jump_01d_730e:
	ld   bc, $2100                                   ; $730e: $01 $00 $21
	jr   nz, jr_01d_7293                             ; $7311: $20 $80

	nop                                              ; $7313: $00
	nop                                              ; $7314: $00
	dec  c                                           ; $7315: $0d
	adc  c                                           ; $7316: $89
	nop                                              ; $7317: $00
	nop                                              ; $7318: $00
	ld   c, $80                                      ; $7319: $0e $80
	nop                                              ; $731b: $00
	ld   bc, $0103                                   ; $731c: $01 $03 $01
	add  h                                           ; $731f: $84
	nop                                              ; $7320: $00
	nop                                              ; $7321: $00
	ld   bc, $0080                                   ; $7322: $01 $80 $00
	add  b                                           ; $7325: $80
	ld   bc, $2080                                   ; $7326: $01 $80 $20
	add  b                                           ; $7329: $80
	nop                                              ; $732a: $00
	nop                                              ; $732b: $00
	dec  c                                           ; $732c: $0d
	adc  c                                           ; $732d: $89
	nop                                              ; $732e: $00
	nop                                              ; $732f: $00
	inc  c                                           ; $7330: $0c
	add  b                                           ; $7331: $80
	nop                                              ; $7332: $00
	nop                                              ; $7333: $00
	ld   b, c                                        ; $7334: $41
	adc  d                                           ; $7335: $8a
	nop                                              ; $7336: $00
	ld   bc, $6020                                   ; $7337: $01 $20 $60
	add  b                                           ; $733a: $80
	nop                                              ; $733b: $00
	nop                                              ; $733c: $00
	dec  c                                           ; $733d: $0d

jr_01d_733e:
	adc  c                                           ; $733e: $89
	nop                                              ; $733f: $00
	cp   d                                           ; $7340: $ba
	nop                                              ; $7341: $00
	nop                                              ; $7342: $00
	dec  b                                           ; $7343: $05
	add  d                                           ; $7344: $82
	nop                                              ; $7345: $00
	nop                                              ; $7346: $00
	dec  c                                           ; $7347: $0d
	add  d                                           ; $7348: $82
	nop                                              ; $7349: $00
	nop                                              ; $734a: $00
	inc  b                                           ; $734b: $04
	add  d                                           ; $734c: $82
	nop                                              ; $734d: $00
	nop                                              ; $734e: $00
	inc  b                                           ; $734f: $04
	add  e                                           ; $7350: $83
	nop                                              ; $7351: $00
	add  b                                           ; $7352: $80
	ld   b, $01                                      ; $7353: $06 $01
	nop                                              ; $7355: $00
	ld   [$00a8], sp                                 ; $7356: $08 $a8 $00
	inc  b                                           ; $7359: $04
	inc  bc                                          ; $735a: $03
	inc  b                                           ; $735b: $04
	nop                                              ; $735c: $00
	inc  b                                           ; $735d: $04
	inc  bc                                          ; $735e: $03
	add  h                                           ; $735f: $84
	nop                                              ; $7360: $00
	ld   [bc], a                                     ; $7361: $02
	rlca                                             ; $7362: $07
	nop                                              ; $7363: $00
	rlca                                             ; $7364: $07
	add  c                                           ; $7365: $81
	nop                                              ; $7366: $00
	nop                                              ; $7367: $00
	ld   [$4680], sp                                 ; $7368: $08 $80 $46
	ld   bc, $0800                                   ; $736b: $01 $00 $08
	adc  b                                           ; $736e: $88
	nop                                              ; $736f: $00
	nop                                              ; $7370: $00
	inc  bc                                          ; $7371: $03
	add  c                                           ; $7372: $81
	nop                                              ; $7373: $00
	nop                                              ; $7374: $00
	inc  bc                                          ; $7375: $03
	add  e                                           ; $7376: $83
	nop                                              ; $7377: $00
	nop                                              ; $7378: $00
	ld   [bc], a                                     ; $7379: $02
	add  c                                           ; $737a: $81
	nop                                              ; $737b: $00
	nop                                              ; $737c: $00
	ld   [bc], a                                     ; $737d: $02
	add  b                                           ; $737e: $80
	nop                                              ; $737f: $00
	nop                                              ; $7380: $00
	ld   c, $80                                      ; $7381: $0e $80
	nop                                              ; $7383: $00
	ld   bc, $0806                                   ; $7384: $01 $06 $08
	adc  b                                           ; $7387: $88
	nop                                              ; $7388: $00
	nop                                              ; $7389: $00
	inc  bc                                          ; $738a: $03
	add  c                                           ; $738b: $81
	nop                                              ; $738c: $00
	nop                                              ; $738d: $00
	inc  bc                                          ; $738e: $03
	add  e                                           ; $738f: $83
	nop                                              ; $7390: $00
	nop                                              ; $7391: $00
	ld   [bc], a                                     ; $7392: $02
	add  c                                           ; $7393: $81
	nop                                              ; $7394: $00
	nop                                              ; $7395: $00
	ld   [bc], a                                     ; $7396: $02
	adc  a                                           ; $7397: $8f
	nop                                              ; $7398: $00
	nop                                              ; $7399: $00
	ld   [bc], a                                     ; $739a: $02
	add  c                                           ; $739b: $81
	nop                                              ; $739c: $00
	nop                                              ; $739d: $00
	ld   [bc], a                                     ; $739e: $02
	add  b                                           ; $739f: $80
	jr   nz, @-$7d                                   ; $73a0: $20 $81

	nop                                              ; $73a2: $00
	nop                                              ; $73a3: $00
	ld   [bc], a                                     ; $73a4: $02
	add  c                                           ; $73a5: $81
	nop                                              ; $73a6: $00
	nop                                              ; $73a7: $00
	ld   [bc], a                                     ; $73a8: $02
	add  b                                           ; $73a9: $80
	nop                                              ; $73aa: $00
	nop                                              ; $73ab: $00
	ld   c, $80                                      ; $73ac: $0e $80
	nop                                              ; $73ae: $00
	ld   bc, $0806                                   ; $73af: $01 $06 $08
	adc  b                                           ; $73b2: $88
	nop                                              ; $73b3: $00
	nop                                              ; $73b4: $00
	ld   [bc], a                                     ; $73b5: $02
	add  c                                           ; $73b6: $81
	nop                                              ; $73b7: $00
	nop                                              ; $73b8: $00
	ld   [bc], a                                     ; $73b9: $02
	add  b                                           ; $73ba: $80
	jr   nz, jr_01d_733e                             ; $73bb: $20 $81

	nop                                              ; $73bd: $00
	nop                                              ; $73be: $00
	ld   [bc], a                                     ; $73bf: $02
	add  c                                           ; $73c0: $81

jr_01d_73c1:
	nop                                              ; $73c1: $00
	nop                                              ; $73c2: $00
	ld   [bc], a                                     ; $73c3: $02
	add  b                                           ; $73c4: $80
	nop                                              ; $73c5: $00
	nop                                              ; $73c6: $00
	dec  b                                           ; $73c7: $05

jr_01d_73c8:
	add  l                                           ; $73c8: $85
	nop                                              ; $73c9: $00
	nop                                              ; $73ca: $00
	dec  b                                           ; $73cb: $05
	add  d                                           ; $73cc: $82
	nop                                              ; $73cd: $00

jr_01d_73ce:
	ld   [bc], a                                     ; $73ce: $02
	ld   [$0a00], sp                                 ; $73cf: $08 $00 $0a
	add  c                                           ; $73d2: $81
	nop                                              ; $73d3: $00
	ld   b, $0a                                      ; $73d4: $06 $0a
	nop                                              ; $73d6: $00
	ld   [$0800], sp                                 ; $73d7: $08 $00 $08
	nop                                              ; $73da: $00
	ld   a, [bc]                                     ; $73db: $0a
	add  c                                           ; $73dc: $81

jr_01d_73dd:
	nop                                              ; $73dd: $00
	inc  bc                                          ; $73de: $03
	ld   a, [bc]                                     ; $73df: $0a
	nop                                              ; $73e0: $00
	ld   [$8505], sp                                 ; $73e1: $08 $05 $85
	nop                                              ; $73e4: $00
	nop                                              ; $73e5: $00
	dec  b                                           ; $73e6: $05
	add  d                                           ; $73e7: $82
	nop                                              ; $73e8: $00
	ld   [bc], a                                     ; $73e9: $02
	ld   [$0a00], sp                                 ; $73ea: $08 $00 $0a
	add  c                                           ; $73ed: $81
	nop                                              ; $73ee: $00
	ld   b, $0a                                      ; $73ef: $06 $0a
	nop                                              ; $73f1: $00
	ld   [$0800], sp                                 ; $73f2: $08 $00 $08
	nop                                              ; $73f5: $00
	add  hl, bc                                      ; $73f6: $09
	add  c                                           ; $73f7: $81
	nop                                              ; $73f8: $00
	inc  bc                                          ; $73f9: $03
	add  hl, bc                                      ; $73fa: $09
	nop                                              ; $73fb: $00
	ld   [$8504], sp                                 ; $73fc: $08 $04 $85
	nop                                              ; $73ff: $00
	nop                                              ; $7400: $00
	inc  b                                           ; $7401: $04
	add  h                                           ; $7402: $84
	nop                                              ; $7403: $00
	nop                                              ; $7404: $00
	ld   [bc], a                                     ; $7405: $02
	add  c                                           ; $7406: $81
	nop                                              ; $7407: $00
	nop                                              ; $7408: $00
	ld   [bc], a                                     ; $7409: $02
	add  e                                           ; $740a: $83
	nop                                              ; $740b: $00
	nop                                              ; $740c: $00
	ld   bc, $0081                                   ; $740d: $01 $81 $00
	nop                                              ; $7410: $00
	ld   bc, $0080                                   ; $7411: $01 $80 $00
	nop                                              ; $7414: $00
	inc  b                                           ; $7415: $04
	add  l                                           ; $7416: $85
	nop                                              ; $7417: $00
	nop                                              ; $7418: $00
	inc  b                                           ; $7419: $04
	rst  $38                                         ; $741a: $ff
	nop                                              ; $741b: $00
	add  c                                           ; $741c: $81
	nop                                              ; $741d: $00
	nop                                              ; $741e: $00
	ld   [$0080], sp                                 ; $741f: $08 $80 $00
	nop                                              ; $7422: $00
	ld   b, b                                        ; $7423: $40
	add  b                                           ; $7424: $80
	ld   b, [hl]                                     ; $7425: $46
	ld   bc, $4000                                   ; $7426: $01 $00 $40
	adc  b                                           ; $7429: $88
	nop                                              ; $742a: $00
	ld   bc, $2028                                   ; $742b: $01 $28 $20
	adc  [hl]                                        ; $742e: $8e
	nop                                              ; $742f: $00
	add  b                                           ; $7430: $80
	ld   c, $8a                                      ; $7431: $0e $8a
	nop                                              ; $7433: $00
	add  b                                           ; $7434: $80
	jr   nz, jr_01d_73c1                             ; $7435: $20 $8a

	nop                                              ; $7437: $00
	nop                                              ; $7438: $00
	ld   [$0081], sp                                 ; $7439: $08 $81 $00
	add  b                                           ; $743c: $80
	ld   b, [hl]                                     ; $743d: $46
	adc  d                                           ; $743e: $8a
	nop                                              ; $743f: $00
	ld   bc, $2028                                   ; $7440: $01 $28 $20
	sub  c                                           ; $7443: $91
	nop                                              ; $7444: $00
	nop                                              ; $7445: $00
	jr   nz, jr_01d_73c8                             ; $7446: $20 $80

	nop                                              ; $7448: $00
	nop                                              ; $7449: $00
	jr   nz, jr_01d_73ce                             ; $744a: $20 $82

	nop                                              ; $744c: $00
	nop                                              ; $744d: $00
	jr   nz, @-$7d                                   ; $744e: $20 $81

	nop                                              ; $7450: $00
	nop                                              ; $7451: $00
	jr   nz, jr_01d_73dd                             ; $7452: $20 $89

	nop                                              ; $7454: $00
	ld   [$0403], sp                                 ; $7455: $08 $03 $04
	nop                                              ; $7458: $00
	inc  b                                           ; $7459: $04
	inc  bc                                          ; $745a: $03
	rlca                                             ; $745b: $07
	nop                                              ; $745c: $00
	rlca                                             ; $745d: $07
	ld   bc, $0085                                   ; $745e: $01 $85 $00
	add  b                                           ; $7461: $80
	push bc                                          ; $7462: $c5
	ld   [bc], a                                     ; $7463: $02
	nop                                              ; $7464: $00
	push hl                                          ; $7465: $e5
	db   $ec                                         ; $7466: $ec
	add  a                                           ; $7467: $87
	nop                                              ; $7468: $00
	ld   [bc], a                                     ; $7469: $02
	ld   [$0300], sp                                 ; $746a: $08 $00 $03
	add  c                                           ; $746d: $81
	nop                                              ; $746e: $00
	nop                                              ; $746f: $00
	ld   bc, $0081                                   ; $7470: $01 $81 $00
	nop                                              ; $7473: $00
	inc  bc                                          ; $7474: $03
	add  l                                           ; $7475: $85
	nop                                              ; $7476: $00
	inc  b                                           ; $7477: $04
	push bc                                          ; $7478: $c5
	nop                                              ; $7479: $00
	jr   nz, jr_01d_747c                             ; $747a: $20 $00

jr_01d_747c:
	db   $e4                                         ; $747c: $e4
	add  e                                           ; $747d: $83
	nop                                              ; $747e: $00
	nop                                              ; $747f: $00
	ld   [$0081], sp                                 ; $7480: $08 $81 $00
	ld   [bc], a                                     ; $7483: $02
	ld   [$0300], sp                                 ; $7484: $08 $00 $03
	add  c                                           ; $7487: $81
	nop                                              ; $7488: $00
	nop                                              ; $7489: $00
	ld   bc, $0081                                   ; $748a: $01 $81 $00
	nop                                              ; $748d: $00
	inc  bc                                          ; $748e: $03
	add  l                                           ; $748f: $85
	nop                                              ; $7490: $00
	inc  b                                           ; $7491: $04
	push bc                                          ; $7492: $c5
	nop                                              ; $7493: $00
	jr   nz, jr_01d_7496                             ; $7494: $20 $00

jr_01d_7496:
	db   $e4                                         ; $7496: $e4
	add  e                                           ; $7497: $83
	nop                                              ; $7498: $00
	nop                                              ; $7499: $00
	ld   [$0081], sp                                 ; $749a: $08 $81 $00
	ld   [bc], a                                     ; $749d: $02
	ld   [$0200], sp                                 ; $749e: $08 $00 $02
	add  l                                           ; $74a1: $85
	nop                                              ; $74a2: $00
	nop                                              ; $74a3: $00
	inc  bc                                          ; $74a4: $03
	add  l                                           ; $74a5: $85
	nop                                              ; $74a6: $00
	inc  b                                           ; $74a7: $04
	adc  d                                           ; $74a8: $8a
	ld   c, a                                        ; $74a9: $4f
	jr   nz, jr_01d_751b                             ; $74aa: $20 $6f

	adc  e                                           ; $74ac: $8b
	add  e                                           ; $74ad: $83
	nop                                              ; $74ae: $00
	nop                                              ; $74af: $00
	ld   [$0081], sp                                 ; $74b0: $08 $81 $00
	ld   [bc], a                                     ; $74b3: $02
	ld   [$0200], sp                                 ; $74b4: $08 $00 $02
	add  l                                           ; $74b7: $85
	nop                                              ; $74b8: $00
	nop                                              ; $74b9: $00
	inc  bc                                          ; $74ba: $03
	add  l                                           ; $74bb: $85
	nop                                              ; $74bc: $00
	inc  b                                           ; $74bd: $04
	adc  d                                           ; $74be: $8a
	rrca                                             ; $74bf: $0f
	jr   nz, jr_01d_74f1                             ; $74c0: $20 $2f

	adc  e                                           ; $74c2: $8b
	add  d                                           ; $74c3: $82
	nop                                              ; $74c4: $00
	nop                                              ; $74c5: $00
	ld   [$0082], sp                                 ; $74c6: $08 $82 $00
	ld   [bc], a                                     ; $74c9: $02
	ld   [$0200], sp                                 ; $74ca: $08 $00 $02
	add  l                                           ; $74cd: $85
	nop                                              ; $74ce: $00
	nop                                              ; $74cf: $00
	inc  bc                                          ; $74d0: $03
	add  l                                           ; $74d1: $85
	nop                                              ; $74d2: $00
	inc  b                                           ; $74d3: $04
	add  l                                           ; $74d4: $85
	nop                                              ; $74d5: $00
	jr   nz, jr_01d_74d8                             ; $74d6: $20 $00

jr_01d_74d8:
	xor  h                                           ; $74d8: $ac
	add  a                                           ; $74d9: $87
	nop                                              ; $74da: $00
	ld   [bc], a                                     ; $74db: $02
	ld   [$0200], sp                                 ; $74dc: $08 $00 $02
	add  c                                           ; $74df: $81
	nop                                              ; $74e0: $00
	nop                                              ; $74e1: $00
	inc  bc                                          ; $74e2: $03
	adc  c                                           ; $74e3: $89
	nop                                              ; $74e4: $00
	inc  b                                           ; $74e5: $04
	add  l                                           ; $74e6: $85
	nop                                              ; $74e7: $00
	jr   nz, jr_01d_74ea                             ; $74e8: $20 $00

jr_01d_74ea:
	and  h                                           ; $74ea: $a4
	adc  c                                           ; $74eb: $89
	nop                                              ; $74ec: $00
	nop                                              ; $74ed: $00
	ld   [bc], a                                     ; $74ee: $02
	add  c                                           ; $74ef: $81
	nop                                              ; $74f0: $00

jr_01d_74f1:
	nop                                              ; $74f1: $00
	inc  bc                                          ; $74f2: $03
	adc  c                                           ; $74f3: $89
	nop                                              ; $74f4: $00
	add  b                                           ; $74f5: $80
	add  l                                           ; $74f6: $85
	ld   [bc], a                                     ; $74f7: $02
	nop                                              ; $74f8: $00
	and  l                                           ; $74f9: $a5
	and  h                                           ; $74fa: $a4
	sbc  c                                           ; $74fb: $99
	nop                                              ; $74fc: $00
	add  b                                           ; $74fd: $80
	ld   c, $9c                                      ; $74fe: $0e $9c
	nop                                              ; $7500: $00
	add  b                                           ; $7501: $80
	ld   c, $88                                      ; $7502: $0e $88
	nop                                              ; $7504: $00
	ld   [bc], a                                     ; $7505: $02
	ld   [$0800], sp                                 ; $7506: $08 $00 $08
	rst  $38                                         ; $7509: $ff
	nop                                              ; $750a: $00
	or   [hl]                                        ; $750b: $b6
	nop                                              ; $750c: $00
	nop                                              ; $750d: $00
	inc  bc                                          ; $750e: $03
	add  a                                           ; $750f: $87
	nop                                              ; $7510: $00
	ld   [bc], a                                     ; $7511: $02
	ld   bc, $0300                                   ; $7512: $01 $00 $03
	add  l                                           ; $7515: $85
	nop                                              ; $7516: $00
	nop                                              ; $7517: $00
	add  hl, bc                                      ; $7518: $09
	adc  c                                           ; $7519: $89
	nop                                              ; $751a: $00

jr_01d_751b:
	ld   bc, $030b                                   ; $751b: $01 $0b $03
	add  a                                           ; $751e: $87
	nop                                              ; $751f: $00
	nop                                              ; $7520: $00
	ld   bc, $0086                                   ; $7521: $01 $86 $00
	nop                                              ; $7524: $00
	add  hl, bc                                      ; $7525: $09
	adc  c                                           ; $7526: $89
	nop                                              ; $7527: $00
	ld   bc, $030b                                   ; $7528: $01 $0b $03
	add  a                                           ; $752b: $87
	nop                                              ; $752c: $00
	nop                                              ; $752d: $00
	ld   bc, $0086                                   ; $752e: $01 $86 $00
	nop                                              ; $7531: $00
	add  hl, bc                                      ; $7532: $09
	adc  c                                           ; $7533: $89
	nop                                              ; $7534: $00
	nop                                              ; $7535: $00
	dec  bc                                          ; $7536: $0b
	add  l                                           ; $7537: $85
	nop                                              ; $7538: $00
	ld   bc, $0301                                   ; $7539: $01 $01 $03
	add  a                                           ; $753c: $87
	nop                                              ; $753d: $00
	ld   bc, $0a03                                   ; $753e: $01 $03 $0a
	adc  c                                           ; $7541: $89
	nop                                              ; $7542: $00
	ld   [bc], a                                     ; $7543: $02
	ld   a, [bc]                                     ; $7544: $0a
	ld   b, $04                                      ; $7545: $06 $04
	adc  [hl]                                        ; $7547: $8e
	nop                                              ; $7548: $00
	ld   bc, $0a02                                   ; $7549: $01 $02 $0a
	adc  c                                           ; $754c: $89
	nop                                              ; $754d: $00
	ld   [bc], a                                     ; $754e: $02
	ld   a, [bc]                                     ; $754f: $0a
	ld   b, $04                                      ; $7550: $06 $04
	adc  l                                           ; $7552: $8d
	nop                                              ; $7553: $00
	ld   [bc], a                                     ; $7554: $02
	inc  b                                           ; $7555: $04
	ld   b, $0a                                      ; $7556: $06 $0a
	adc  c                                           ; $7558: $89
	nop                                              ; $7559: $00
	ld   bc, $020a                                   ; $755a: $01 $0a $02
	adc  [hl]                                        ; $755d: $8e
	nop                                              ; $755e: $00
	ld   [bc], a                                     ; $755f: $02
	inc  b                                           ; $7560: $04
	ld   b, $0a                                      ; $7561: $06 $0a
	adc  c                                           ; $7563: $89
	nop                                              ; $7564: $00
	ld   [bc], a                                     ; $7565: $02
	add  hl, bc                                      ; $7566: $09
	dec  b                                           ; $7567: $05
	inc  b                                           ; $7568: $04
	adc  [hl]                                        ; $7569: $8e
	nop                                              ; $756a: $00
	ld   bc, $0a02                                   ; $756b: $01 $02 $0a
	adc  c                                           ; $756e: $89
	nop                                              ; $756f: $00
	ld   [bc], a                                     ; $7570: $02
	add  hl, bc                                      ; $7571: $09
	dec  b                                           ; $7572: $05
	inc  b                                           ; $7573: $04
	add  b                                           ; $7574: $80
	nop                                              ; $7575: $00
	nop                                              ; $7576: $00
	ld   [$0089], sp                                 ; $7577: $08 $89 $00
	inc  bc                                          ; $757a: $03
	ld   [$0604], sp                                 ; $757b: $08 $04 $06
	ld   a, [bc]                                     ; $757e: $0a
	adc  c                                           ; $757f: $89
	nop                                              ; $7580: $00
	ld   bc, $0109                                   ; $7581: $01 $09 $01
	add  c                                           ; $7584: $81
	nop                                              ; $7585: $00
	nop                                              ; $7586: $00
	ld   [$0089], sp                                 ; $7587: $08 $89 $00
	inc  bc                                          ; $758a: $03
	ld   [$0604], sp                                 ; $758b: $08 $04 $06
	ld   a, [bc]                                     ; $758e: $0a
	adc  c                                           ; $758f: $89
	nop                                              ; $7590: $00
	ld   [bc], a                                     ; $7591: $02
	add  hl, bc                                      ; $7592: $09
	dec  b                                           ; $7593: $05
	inc  b                                           ; $7594: $04
	adc  [hl]                                        ; $7595: $8e
	nop                                              ; $7596: $00
	ld   bc, $0a02                                   ; $7597: $01 $02 $0a
	adc  c                                           ; $759a: $89
	nop                                              ; $759b: $00
	ld   bc, $0109                                   ; $759c: $01 $09 $01
	add  c                                           ; $759f: $81
	nop                                              ; $75a0: $00
	nop                                              ; $75a1: $00
	ld   [$0089], sp                                 ; $75a2: $08 $89 $00
	inc  bc                                          ; $75a5: $03
	ld   [$0604], sp                                 ; $75a6: $08 $04 $06
	ld   a, [bc]                                     ; $75a9: $0a
	adc  c                                           ; $75aa: $89
	nop                                              ; $75ab: $00
	ld   bc, $0109                                   ; $75ac: $01 $09 $01
	add  c                                           ; $75af: $81
	nop                                              ; $75b0: $00
	nop                                              ; $75b1: $00
	ld   [$0089], sp                                 ; $75b2: $08 $89 $00
	inc  bc                                          ; $75b5: $03
	ld   [$0704], sp                                 ; $75b6: $08 $04 $07
	dec  bc                                          ; $75b9: $0b
	adc  c                                           ; $75ba: $89
	nop                                              ; $75bb: $00
	ld   [bc], a                                     ; $75bc: $02
	add  hl, bc                                      ; $75bd: $09
	dec  b                                           ; $75be: $05
	ld   b, h                                        ; $75bf: $44
	adc  l                                           ; $75c0: $8d
	nop                                              ; $75c1: $00
	ld   [bc], a                                     ; $75c2: $02
	ld   b, b                                        ; $75c3: $40
	ld   [bc], a                                     ; $75c4: $02
	ld   a, [bc]                                     ; $75c5: $0a
	adc  c                                           ; $75c6: $89
	nop                                              ; $75c7: $00
	nop                                              ; $75c8: $00
	add  hl, bc                                      ; $75c9: $09
	adc  b                                           ; $75ca: $88
	nop                                              ; $75cb: $00
	nop                                              ; $75cc: $00
	dec  b                                           ; $75cd: $05
	add  l                                           ; $75ce: $85
	nop                                              ; $75cf: $00
	ld   bc, $0b07                                   ; $75d0: $01 $07 $0b
	adc  c                                           ; $75d3: $89
	nop                                              ; $75d4: $00
	nop                                              ; $75d5: $00
	add  hl, bc                                      ; $75d6: $09
	adc  b                                           ; $75d7: $88
	nop                                              ; $75d8: $00
	nop                                              ; $75d9: $00
	ld   bc, $0085                                   ; $75da: $01 $85 $00
	ld   bc, $0b03                                   ; $75dd: $01 $03 $0b
	adc  c                                           ; $75e0: $89
	nop                                              ; $75e1: $00
	nop                                              ; $75e2: $00
	add  hl, bc                                      ; $75e3: $09
	adc  b                                           ; $75e4: $88
	nop                                              ; $75e5: $00
	nop                                              ; $75e6: $00
	ld   bc, $0085                                   ; $75e7: $01 $85 $00
	ld   bc, $0b03                                   ; $75ea: $01 $03 $0b
	adc  c                                           ; $75ed: $89
	nop                                              ; $75ee: $00
	ld   bc, $030a                                   ; $75ef: $01 $0a $03
	add  [hl]                                        ; $75f2: $86
	nop                                              ; $75f3: $00
	ld   [bc], a                                     ; $75f4: $02
	inc  bc                                          ; $75f5: $03
	nop                                              ; $75f6: $00
	ld   bc, $0085                                   ; $75f7: $01 $85 $00
	nop                                              ; $75fa: $00
	dec  bc                                          ; $75fb: $0b
	adc  c                                           ; $75fc: $89
	nop                                              ; $75fd: $00
	nop                                              ; $75fe: $00
	dec  bc                                          ; $75ff: $0b
	add  a                                           ; $7600: $87
	nop                                              ; $7601: $00
	ld   [bc], a                                     ; $7602: $02
	ld   bc, $0300                                   ; $7603: $01 $00 $03
	add  l                                           ; $7606: $85
	nop                                              ; $7607: $00
	nop                                              ; $7608: $00
	add  hl, bc                                      ; $7609: $09
	adc  c                                           ; $760a: $89
	nop                                              ; $760b: $00
	ld   bc, $030b                                   ; $760c: $01 $0b $03
	add  a                                           ; $760f: $87
	nop                                              ; $7610: $00
	nop                                              ; $7611: $00
	ld   bc, $0086                                   ; $7612: $01 $86 $00
	nop                                              ; $7615: $00
	add  hl, bc                                      ; $7616: $09
	adc  c                                           ; $7617: $89
	nop                                              ; $7618: $00
	ld   bc, $030b                                   ; $7619: $01 $0b $03
	add  a                                           ; $761c: $87
	nop                                              ; $761d: $00
	nop                                              ; $761e: $00
	ld   bc, $0086                                   ; $761f: $01 $86 $00
	nop                                              ; $7622: $00
	add  hl, bc                                      ; $7623: $09
	adc  c                                           ; $7624: $89
	nop                                              ; $7625: $00
	ld   bc, $030b                                   ; $7626: $01 $0b $03
	add  a                                           ; $7629: $87
	nop                                              ; $762a: $00
	nop                                              ; $762b: $00
	ld   bc, $0086                                   ; $762c: $01 $86 $00
	nop                                              ; $762f: $00
	add  hl, bc                                      ; $7630: $09
	adc  c                                           ; $7631: $89
	nop                                              ; $7632: $00
	ld   bc, $030b                                   ; $7633: $01 $0b $03
	add  a                                           ; $7636: $87
	nop                                              ; $7637: $00
	nop                                              ; $7638: $00
	ld   bc, $0086                                   ; $7639: $01 $86 $00
	nop                                              ; $763c: $00
	add  hl, bc                                      ; $763d: $09
	adc  c                                           ; $763e: $89
	nop                                              ; $763f: $00
	inc  b                                           ; $7640: $04
	dec  bc                                          ; $7641: $0b
	inc  bc                                          ; $7642: $03
	ld   [$0800], sp                                 ; $7643: $08 $00 $08
	add  h                                           ; $7646: $84
	nop                                              ; $7647: $00
	nop                                              ; $7648: $00
	ld   bc, $0086                                   ; $7649: $01 $86 $00
	nop                                              ; $764c: $00
	add  hl, bc                                      ; $764d: $09
	adc  c                                           ; $764e: $89
	nop                                              ; $764f: $00
	inc  b                                           ; $7650: $04
	dec  bc                                          ; $7651: $0b
	inc  bc                                          ; $7652: $03
	ld   [$0800], sp                                 ; $7653: $08 $00 $08
	add  h                                           ; $7656: $84
	nop                                              ; $7657: $00
	nop                                              ; $7658: $00
	ld   bc, $0086                                   ; $7659: $01 $86 $00
	nop                                              ; $765c: $00
	add  hl, bc                                      ; $765d: $09
	adc  c                                           ; $765e: $89
	nop                                              ; $765f: $00
	ld   [bc], a                                     ; $7660: $02
	dec  bc                                          ; $7661: $0b
	inc  bc                                          ; $7662: $03
	ld   [$0085], sp                                 ; $7663: $08 $85 $00
	ld   bc, $0108                                   ; $7666: $01 $08 $01
	add  [hl]                                        ; $7669: $86
	nop                                              ; $766a: $00
	nop                                              ; $766b: $00
	add  hl, bc                                      ; $766c: $09
	adc  c                                           ; $766d: $89
	nop                                              ; $766e: $00
	add  b                                           ; $766f: $80
	dec  bc                                          ; $7670: $0b
	add  [hl]                                        ; $7671: $86
	nop                                              ; $7672: $00
	ld   bc, $0108                                   ; $7673: $01 $08 $01
	add  [hl]                                        ; $7676: $86
	nop                                              ; $7677: $00
	nop                                              ; $7678: $00
	add  hl, bc                                      ; $7679: $09
	adc  c                                           ; $767a: $89
	nop                                              ; $767b: $00
	ld   [bc], a                                     ; $767c: $02
	dec  bc                                          ; $767d: $0b
	inc  bc                                          ; $767e: $03
	ld   [$0085], sp                                 ; $767f: $08 $85 $00
	ld   bc, $0108                                   ; $7682: $01 $08 $01
	add  [hl]                                        ; $7685: $86
	nop                                              ; $7686: $00
	nop                                              ; $7687: $00
	add  hl, bc                                      ; $7688: $09
	adc  c                                           ; $7689: $89
	nop                                              ; $768a: $00
	ld   [bc], a                                     ; $768b: $02
	dec  bc                                          ; $768c: $0b
	inc  bc                                          ; $768d: $03
	ld   [$0085], sp                                 ; $768e: $08 $85 $00
	ld   bc, $0108                                   ; $7691: $01 $08 $01
	add  [hl]                                        ; $7694: $86
	nop                                              ; $7695: $00
	nop                                              ; $7696: $00
	add  hl, bc                                      ; $7697: $09
	adc  c                                           ; $7698: $89
	nop                                              ; $7699: $00
	ld   bc, $080b                                   ; $769a: $01 $0b $08
	add  [hl]                                        ; $769d: $86
	nop                                              ; $769e: $00
	ld   [bc], a                                     ; $769f: $02
	ld   bc, $0308                                   ; $76a0: $01 $08 $03
	add  l                                           ; $76a3: $85
	nop                                              ; $76a4: $00
	nop                                              ; $76a5: $00
	add  hl, bc                                      ; $76a6: $09
	adc  c                                           ; $76a7: $89
	nop                                              ; $76a8: $00
	nop                                              ; $76a9: $00
	inc  bc                                          ; $76aa: $03
	add  [hl]                                        ; $76ab: $86
	nop                                              ; $76ac: $00
	inc  bc                                          ; $76ad: $03
	ld   bc, $0300                                   ; $76ae: $01 $00 $03
	ld   [$0085], sp                                 ; $76b1: $08 $85 $00
	nop                                              ; $76b4: $00
	add  hl, bc                                      ; $76b5: $09
	adc  c                                           ; $76b6: $89
	nop                                              ; $76b7: $00
	nop                                              ; $76b8: $00
	inc  bc                                          ; $76b9: $03
	add  h                                           ; $76ba: $84
	nop                                              ; $76bb: $00
	nop                                              ; $76bc: $00
	ld   bc, $0080                                   ; $76bd: $01 $80 $00
	ld   [bc], a                                     ; $76c0: $02
	inc  bc                                          ; $76c1: $03
	nop                                              ; $76c2: $00
	ld   [$0085], sp                                 ; $76c3: $08 $85 $00
	nop                                              ; $76c6: $00
	add  hl, bc                                      ; $76c7: $09
	adc  c                                           ; $76c8: $89
	nop                                              ; $76c9: $00
	ld   d, e                                        ; $76ca: $53
	nop                                              ; $76cb: $00
	add  b                                           ; $76cc: $80
	ld   bc, $8000                                   ; $76cd: $01 $00 $80
	add  c                                           ; $76d0: $81
	nop                                              ; $76d1: $00
	ld   bc, $0040                                   ; $76d2: $01 $40 $00
	add  b                                           ; $76d5: $80
	inc  b                                           ; $76d6: $04
	add  b                                           ; $76d7: $80
	inc  bc                                          ; $76d8: $03
	inc  bc                                          ; $76d9: $03
	ld   b, c                                        ; $76da: $41
	ld   bc, $0181                                   ; $76db: $01 $81 $01
	adc  h                                           ; $76de: $8c
	rst  $38                                         ; $76df: $ff
	ld   a, [hl-]                                    ; $76e0: $3a
	xor  d                                           ; $76e1: $aa
	rst  $38                                         ; $76e2: $ff
	and  b                                           ; $76e3: $a0
	rst  $38                                         ; $76e4: $ff
	ldh  [rIE], a                                    ; $76e5: $e0 $ff
	ldh  [rIE], a                                    ; $76e7: $e0 $ff
	ldh  [rIE], a                                    ; $76e9: $e0 $ff
	ret  nz                                          ; $76eb: $c0

	rst  $38                                         ; $76ec: $ff
	add  b                                           ; $76ed: $80
	rst  $38                                         ; $76ee: $ff
	nop                                              ; $76ef: $00
	rst  $38                                         ; $76f0: $ff
	nop                                              ; $76f1: $00
	rst  $38                                         ; $76f2: $ff
	nop                                              ; $76f3: $00
	rst  $38                                         ; $76f4: $ff
	nop                                              ; $76f5: $00
	rst  $38                                         ; $76f6: $ff
	nop                                              ; $76f7: $00
	rst  $38                                         ; $76f8: $ff
	nop                                              ; $76f9: $00
	rst  $38                                         ; $76fa: $ff
	db   $10                                         ; $76fb: $10
	rst  $38                                         ; $76fc: $ff
	jr   @+$01                                       ; $76fd: $18 $ff

	dec  e                                           ; $76ff: $1d
	rst  $38                                         ; $7700: $ff
	rra                                              ; $7701: $1f
	rst  $38                                         ; $7702: $ff
	nop                                              ; $7703: $00
	ldh  a, [rP1]                                    ; $7704: $f0 $00
	ldh  a, [$08]                                    ; $7706: $f0 $08
	ld   hl, sp+$00                                  ; $7708: $f8 $00
	ld   hl, sp+$00                                  ; $770a: $f8 $00
	db   $fc                                         ; $770c: $fc
	nop                                              ; $770d: $00
	db   $fc                                         ; $770e: $fc
	db   $10                                         ; $770f: $10
	db   $fc                                         ; $7710: $fc
	cp   b                                           ; $7711: $b8
	cp   $1d                                         ; $7712: $fe $1d
	inc  de                                          ; $7714: $13
	inc  sp                                          ; $7715: $33
	daa                                              ; $7716: $27
	ld   h, a                                        ; $7717: $67
	ld   c, a                                        ; $7718: $4f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7719: $cf
	sbc  a                                           ; $771a: $9f
	sbc  [hl]                                        ; $771b: $9e
	add  b                                           ; $771c: $80
	ccf                                              ; $771d: $3f
	add  b                                           ; $771e: $80
	ld   a, a                                        ; $771f: $7f
	add  c                                           ; $7720: $81
	rst  $38                                         ; $7721: $ff
	inc  bc                                          ; $7722: $03
	ld   sp, $a8c0                                   ; $7723: $31 $c0 $a8
	and  b                                           ; $7726: $a0
	add  b                                           ; $7727: $80
	ret  nz                                          ; $7728: $c0

	dec  b                                           ; $7729: $05
	and  h                                           ; $772a: $a4
	and  b                                           ; $772b: $a0
	jp   nc, $e9d0                                   ; $772c: $d2 $d0 $e9

	add  sp, -$80                                    ; $772f: $e8 $80
	call nc, $e080                                   ; $7731: $d4 $80 $e0
	ld   bc, $f00f                                   ; $7734: $01 $0f $f0
	add  b                                           ; $7737: $80
	ldh  [$80], a                                    ; $7738: $e0 $80
	ld   [hl], b                                     ; $773a: $70

jr_01d_773b:
	add  h                                           ; $773b: $84
	nop                                              ; $773c: $00
	inc  b                                           ; $773d: $04
	add  b                                           ; $773e: $80
	nop                                              ; $773f: $00
	ld   b, b                                        ; $7740: $40
	nop                                              ; $7741: $00
	ret  nz                                          ; $7742: $c0

	adc  e                                           ; $7743: $8b
	nop                                              ; $7744: $00
	dec  de                                          ; $7745: $1b
	inc  bc                                          ; $7746: $03
	nop                                              ; $7747: $00
	add  l                                           ; $7748: $85
	cp   e                                           ; $7749: $bb
	ldh  a, [c]                                      ; $774a: $f2
	pop  de                                          ; $774b: $d1
	or   c                                           ; $774c: $b1
	ldh  [$f8], a                                    ; $774d: $e0 $f8
	ret  nc                                          ; $774f: $d0

	inc  e                                           ; $7750: $1c
	ret  z                                           ; $7751: $c8

	ld   c, [hl]                                     ; $7752: $4e
	inc  h                                           ; $7753: $24
	and  a                                           ; $7754: $a7
	ld   [de], a                                     ; $7755: $12
	db   $d3                                         ; $7756: $d3
	adc  c                                           ; $7757: $89
	adc  $02                                         ; $7758: $ce $02
	adc  d                                           ; $775a: $8a
	add  [hl]                                        ; $775b: $86
	rlca                                             ; $775c: $07
	add  l                                           ; $775d: $85
	sub  l                                           ; $775e: $95
	ld   d, l                                        ; $775f: $55
	halt                                             ; $7760: $76
	ld   a, [hl+]                                    ; $7761: $2a
	add  b                                           ; $7762: $80
	ld   l, e                                        ; $7763: $6b
	add  hl, bc                                      ; $7764: $09
	jr   z, jr_01d_7793                              ; $7765: $28 $2c

	db   $ec                                         ; $7767: $ec
	inc  sp                                          ; $7768: $33
	nop                                              ; $7769: $00
	jr   nc, jr_01d_773b                             ; $776a: $30 $cf

	call z, $3031                                    ; $776c: $cc $31 $30
	add  b                                           ; $776f: $80
	call z, Call_01d_7301                            ; $7770: $cc $01 $73
	ld   [hl], b                                     ; $7773: $70
	add  b                                           ; $7774: $80
	sbc  b                                           ; $7775: $98
	add  hl, bc                                      ; $7776: $09
	and  $e1                                         ; $7777: $e6 $e1
	ld   sp, $bc30                                   ; $7779: $31 $30 $bc
	ld   a, $36                                      ; $777c: $3e $36
	ld   a, $ec                                      ; $777e: $3e $ec
	ld   a, l                                        ; $7780: $7d
	add  b                                           ; $7781: $80
	ld   a, c                                        ; $7782: $79
	add  b                                           ; $7783: $80
	ld   sp, hl                                      ; $7784: $f9
	inc  de                                          ; $7785: $13
	ld   h, c                                        ; $7786: $61
	ld   [hl], b                                     ; $7787: $70
	rrca                                             ; $7788: $0f
	add  b                                           ; $7789: $80
	rst  $38                                         ; $778a: $ff
	nop                                              ; $778b: $00
	push af                                          ; $778c: $f5
	ld   [$80e4], sp                                 ; $778d: $08 $e4 $80
	ld   sp, hl                                      ; $7790: $f9
	ldh  [$f2], a                                    ; $7791: $e0 $f2

jr_01d_7793:
	ld   [hl], c                                     ; $7793: $71
	push af                                          ; $7794: $f5
	sub  e                                           ; $7795: $93
	ld   a, a                                        ; $7796: $7f
	ld   h, a                                        ; $7797: $67
	inc  e                                           ; $7798: $1c
	rra                                              ; $7799: $1f
	add  b                                           ; $779a: $80
	rst  $20                                         ; $779b: $e7
	ld   a, [bc]                                     ; $779c: $0a
	add  a                                           ; $779d: $87
	nop                                              ; $779e: $00
	add  b                                           ; $779f: $80
	nop                                              ; $77a0: $00
	ld   b, b                                        ; $77a1: $40
	nop                                              ; $77a2: $00
	and  b                                           ; $77a3: $a0
	nop                                              ; $77a4: $00
	sbc  b                                           ; $77a5: $98
	nop                                              ; $77a6: $00
	ld   h, b                                        ; $77a7: $60
	add  c                                           ; $77a8: $81
	nop                                              ; $77a9: $00
	ld   [bc], a                                     ; $77aa: $02
	jr   nz, jr_01d_77ad                             ; $77ab: $20 $00

jr_01d_77ad:
	pop  bc                                          ; $77ad: $c1
	add  c                                           ; $77ae: $81
	ld   bc, $0380                                   ; $77af: $01 $80 $03
	add  b                                           ; $77b2: $80
	rlca                                             ; $77b3: $07
	add  h                                           ; $77b4: $84
	ld   a, a                                        ; $77b5: $7f
	add  b                                           ; $77b6: $80
	rst  $38                                         ; $77b7: $ff
	inc  h                                           ; $77b8: $24
	push de                                          ; $77b9: $d5
	rst  $38                                         ; $77ba: $ff
	add  b                                           ; $77bb: $80
	rst  $38                                         ; $77bc: $ff
	add  b                                           ; $77bd: $80
	rst  $38                                         ; $77be: $ff
	add  b                                           ; $77bf: $80
	rst  $38                                         ; $77c0: $ff
	add  b                                           ; $77c1: $80
	rst  $38                                         ; $77c2: $ff
	add  b                                           ; $77c3: $80
	rst  $38                                         ; $77c4: $ff
	nop                                              ; $77c5: $00
	rst  $38                                         ; $77c6: $ff
	nop                                              ; $77c7: $00
	rst  $38                                         ; $77c8: $ff
	nop                                              ; $77c9: $00
	rst  $38                                         ; $77ca: $ff
	nop                                              ; $77cb: $00
	rst  $38                                         ; $77cc: $ff
	nop                                              ; $77cd: $00
	rst  $38                                         ; $77ce: $ff
	ld   a, [bc]                                     ; $77cf: $0a
	rst  $38                                         ; $77d0: $ff
	rrca                                             ; $77d1: $0f
	rst  $38                                         ; $77d2: $ff
	rrca                                             ; $77d3: $0f
	rst  $38                                         ; $77d4: $ff
	rrca                                             ; $77d5: $0f
	rst  $38                                         ; $77d6: $ff
	rrca                                             ; $77d7: $0f
	rst  $38                                         ; $77d8: $ff
	rra                                              ; $77d9: $1f
	rst  $38                                         ; $77da: $ff
	ccf                                              ; $77db: $3f
	rst  $38                                         ; $77dc: $ff
	ld   a, a                                        ; $77dd: $7f
	adc  l                                           ; $77de: $8d
	rst  $38                                         ; $77df: $ff
	nop                                              ; $77e0: $00
	add  b                                           ; $77e1: $80
	add  c                                           ; $77e2: $81
	rst  $38                                         ; $77e3: $ff
	inc  bc                                          ; $77e4: $03
	or   l                                           ; $77e5: $b5
	push af                                          ; $77e6: $f5
	ld   a, [hl+]                                    ; $77e7: $2a
	ld   [$d480], a                                  ; $77e8: $ea $80 $d4
	add  b                                           ; $77eb: $80
	and  b                                           ; $77ec: $a0
	rlca                                             ; $77ed: $07
	rst  $10                                         ; $77ee: $d7
	ret  nc                                          ; $77ef: $d0

	db   $e4                                         ; $77f0: $e4
	ldh  [$d2], a                                    ; $77f1: $e0 $d2
	ret  nc                                          ; $77f3: $d0

	jp   hl                                          ; $77f4: $e9


	add  sp, -$80                                    ; $77f5: $e8 $80
	ld   d, h                                        ; $77f7: $54
	add  b                                           ; $77f8: $80
	and  b                                           ; $77f9: $a0
	add  b                                           ; $77fa: $80
	nop                                              ; $77fb: $00
	ld   [bc], a                                     ; $77fc: $02
	rra                                              ; $77fd: $1f
	nop                                              ; $77fe: $00
	ldh  [$83], a                                    ; $77ff: $e0 $83
	nop                                              ; $7801: $00
	ld   [de], a                                     ; $7802: $12
	add  b                                           ; $7803: $80
	nop                                              ; $7804: $00
	ld   [hl], b                                     ; $7805: $70
	nop                                              ; $7806: $00
	inc  c                                           ; $7807: $0c
	nop                                              ; $7808: $00
	ld   [bc], a                                     ; $7809: $02
	nop                                              ; $780a: $00
	cp   $00                                         ; $780b: $fe $00
	ld   bc, $0700                                   ; $780d: $01 $00 $07
	nop                                              ; $7810: $00
	dec  b                                           ; $7811: $05
	nop                                              ; $7812: $00
	ld   [bc], a                                     ; $7813: $02
	nop                                              ; $7814: $00
	ld   bc, $0085                                   ; $7815: $01 $85 $00
	jr   @-$22                                       ; $7818: $18 $dc

	ld   b, a                                        ; $781a: $47
	ld   [hl], a                                     ; $781b: $77
	inc  hl                                          ; $781c: $23
	add  hl, sp                                      ; $781d: $39
	sub  b                                           ; $781e: $90
	sbc  a                                           ; $781f: $9f
	ld   c, b                                        ; $7820: $48
	ld   d, h                                        ; $7821: $54
	inc  a                                           ; $7822: $3c
	cp   e                                           ; $7823: $bb
	add  hl, de                                      ; $7824: $19
	ret  c                                           ; $7825: $d8

	sbc  b                                           ; $7826: $98
	ld   [$19c8], a                                  ; $7827: $ea $c8 $19
	nop                                              ; $782a: $00
	ld   [hl], b                                     ; $782b: $70
	nop                                              ; $782c: $00
	xor  b                                           ; $782d: $a8
	nop                                              ; $782e: $00
	ld   h, h                                        ; $782f: $64
	nop                                              ; $7830: $00
	add  b                                           ; $7831: $80
	add  e                                           ; $7832: $83
	nop                                              ; $7833: $00
	ld   [bc], a                                     ; $7834: $02
	ldh  a, [rP1]                                    ; $7835: $f0 $00
	call nz, $0081                                   ; $7837: $c4 $81 $00
	nop                                              ; $783a: $00
	ld   [$008f], sp                                 ; $783b: $08 $8f $00
	inc  b                                           ; $783e: $04
	inc  bc                                          ; $783f: $03
	nop                                              ; $7840: $00
	ld   [bc], a                                     ; $7841: $02
	nop                                              ; $7842: $00
	ld   bc, $0083                                   ; $7843: $01 $83 $00
	dec  b                                           ; $7846: $05
	ldh  [$f0], a                                    ; $7847: $e0 $f0
	ld   de, $f6f8                                   ; $7849: $11 $f8 $f6
	ldh  a, [$80]                                    ; $784c: $f0 $80
	nop                                              ; $784e: $00
	add  b                                           ; $784f: $80
	inc  bc                                          ; $7850: $03
	add  d                                           ; $7851: $82
	nop                                              ; $7852: $00
	add  b                                           ; $7853: $80
	add  b                                           ; $7854: $80
	inc  bc                                          ; $7855: $03
	add  c                                           ; $7856: $81
	ld   bc, $0383                                   ; $7857: $01 $83 $03
	add  b                                           ; $785a: $80
	rlca                                             ; $785b: $07
	add  b                                           ; $785c: $80
	ccf                                              ; $785d: $3f
	add  d                                           ; $785e: $82
	rst  $38                                         ; $785f: $ff
	add  b                                           ; $7860: $80
	ld   a, a                                        ; $7861: $7f
	add  b                                           ; $7862: $80
	ccf                                              ; $7863: $3f
	add  b                                           ; $7864: $80
	rst  $38                                         ; $7865: $ff
	ld   c, $fe                                      ; $7866: $0e $fe
	rst  $38                                         ; $7868: $ff
	db   $fc                                         ; $7869: $fc
	rst  $38                                         ; $786a: $ff
	ld   hl, sp-$01                                  ; $786b: $f8 $ff
	ldh  a, [rIE]                                    ; $786d: $f0 $ff
	ldh  [rIE], a                                    ; $786f: $e0 $ff
	ret  nz                                          ; $7871: $c0

	rst  $38                                         ; $7872: $ff
	ret  nz                                          ; $7873: $c0

	rst  $38                                         ; $7874: $ff
	dec  d                                           ; $7875: $15
	rst  $38                                         ; $7876: $ff
	nop                                              ; $7877: $00
	rst  $38                                         ; $7878: $ff
	nop                                              ; $7879: $00
	rst  $38                                         ; $787a: $ff
	nop                                              ; $787b: $00
	rst  $38                                         ; $787c: $ff
	nop                                              ; $787d: $00
	sbc  c                                           ; $787e: $99
	nop                                              ; $787f: $00


RleXorTileMap_DMG::
	db $2d, $00, $14, $20, $01, $03, $01, $07, $01, $07, $01, $07, $01, $07, $01, $07, $01, $07, $01, $07, $01, $03, $01, $e0, $89, $00, $14, $f7, $01, $03, $01, $73
	db $75, $07, $01, $73, $75, $07, $01, $73, $75, $07, $01, $73, $75, $03, $01, $f0, $89, $00, $14, $67, $22, $60, $a3, $03, $01, $07, $05, $03, $01, $07, $05, $03
	db $01, $07, $05, $03, $b3, $63, $13, $46, $89, $00, $0a, $77, $f5, $d5, $0b, $07, $01, $03, $01, $d6, $03, $ca, $84, $00, $03, $60, $12, $63, $56, $89, $00, $0a
	db $07, $86, $d6, $db, $07, $01, $03, $01, $ed, $63, $41, $81, $00, $06, $a9, $17, $be, $60, $d4, $95, $66, $89, $00, $14, $17, $97, $d7, $c0, $01, $03, $01, $07
	db $01, $03, $01, $0f, $01, $03, $01, $07, $01, $bd, $d9, $88, $76, $89, $00, $14, $67, $e8, $d8, $f0, $01, $03, $01, $07, $01, $03, $01, $0f, $01, $03, $01, $07
	db $01, $8d, $9a, $fb, $46, $89, $00, $14, $77, $f5, $d5, $e0, $01, $03, $01, $07, $01, $03, $01, $0f, $01, $27, $01, $31, $01, $8f, $12, $63, $56, $89, $00, $14
	db $07, $86, $d6, $13, $07, $01, $03, $01, $0f, $01, $03, $01, $07, $01, $03, $01, $3d, $52, $d4, $95, $66, $89, $00, $0b, $17, $97, $d7, $03, $07, $01, $03, $01
	db $0f, $01, $03, $1a, $83, $00, $03, $60, $d9, $88, $76, $89, $00, $14, $67, $e8, $4c, $a7, $07, $01, $03, $01, $0f, $01, $03, $01, $07, $01, $03, $01, $04, $5b
	db $8a, $fb, $46, $89, $00, $14, $77, $f5, $05, $f3, $07, $01, $03, $01, $0f, $01, $03, $01, $07, $01, $03, $01, $97, $1b, $19, $01, $ec, $89, $00, $14, $07, $86
	db $84, $01, $07, $01, $03, $01, $0f, $01, $03, $01, $07, $01, $03, $01, $f7, $78, $7a, $01, $fc, $89, $00, $14, $17, $01, $03, $01, $07, $01, $03, $01, $0f, $01
	db $03, $01, $07, $01, $03, $01, $f3, $01, $03, $01, $e8, $89, $00, $14, $67, $41, $d2, $d0, $07, $01, $03, $01, $0f, $01, $03, $01, $07, $01, $03, $01, $d3, $01
	db $0e, $0c, $f8, $89, $00, $14, $77, $83, $73, $b3, $07, $01, $03, $01, $0f, $01, $03, $01, $07, $01, $03, $01, $c2, $0e, $73, $7c, $fb, $89, $00, $14, $c7, $01
	db $03, $01, $30, $36, $03, $01, $0f, $01, $03, $01, $07, $01, $0f, $01, $30, $73, $4e, $01, $c8, $89, $00, $14, $d7, $01, $03, $01, $07, $01, $03, $01, $0f, $01
	db $03, $01, $07, $01, $0f, $01, $07, $01, $0b, $01, $d8, $ff, $00, $ff, $00, $ff, $00, $c6, $00


RleXorTileMap_ResetData::
	db $2b, $00, $14, $00, $01, $31, $01, $03, $01, $03, $01, $03, $01, $03, $01, $03, $01, $03, $01, $03, $01, $31, $01, $fc, $89, $00, $14, $ef, $01, $19, $01, $03
	db $01, $03, $01, $03, $01, $03, $01, $03, $01, $03, $01, $03, $01, $19, $01, $ec, $89, $00, $14, $e6, $11, $04, $01, $03, $01, $17, $15, $03, $01, $17, $15, $03
	db $01, $17, $15, $03, $37, $30, $14, $e2, $89, $00, $06, $e5, $13, $29, $2b, $03, $7e, $01, $85, $00, $06, $01, $7d, $03, $22, $20, $01, $f4, $89, $00, $14, $e4
	db $11, $2b, $29, $01, $71, $38, $01, $03, $01, $07, $01, $03, $01, $3f, $70, $01, $22, $20, $15, $e1, $89, $00, $14, $e3, $17, $29, $2b, $03, $72, $28, $01, $03
	db $01, $07, $01, $03, $01, $2f, $71, $03, $26, $24, $17, $e0, $89, $00, $14, $e6, $11, $2b, $29, $01, $73, $30, $01, $03, $01, $07, $01, $03, $60, $56, $72, $01
	db $26, $24, $14, $e2, $89, $00, $14, $e5, $13, $29, $2b, $03, $70, $20, $01, $03, $01, $07, $01, $03, $71, $57, $73, $03, $22, $20, $01, $f4, $89, $00, $14, $e4
	db $11, $2b, $29, $01, $71, $4f, $78, $75, $0d, $00, $0d, $00, $06, $44, $70, $01, $22, $20, $15, $e1, $89, $00, $14, $e3, $17, $29, $2b, $03, $72, $4f, $68, $64
	db $0c, $00, $0c, $00, $06, $45, $71, $03, $26, $24, $17, $e0, $89, $00, $06, $e6, $11, $2b, $29, $01, $7d, $01, $85, $00, $06, $01, $7c, $01, $26, $24, $14, $e2
	db $89, $00, $14, $e5, $13, $29, $2b, $03, $01, $03, $01, $03, $01, $03, $01, $03, $01, $03, $01, $03, $22, $20, $01, $f4, $89, $00, $14, $e4, $11, $2b, $29, $01
	db $03, $01, $03, $01, $03, $01, $03, $01, $03, $01, $03, $01, $22, $20, $15, $e1, $89, $00, $14, $e3, $17, $29, $5b, $19, $01, $03, $01, $07, $01, $03, $01, $0f
	db $01, $03, $01, $10, $57, $24, $17, $e0, $89, $00, $14, $e6, $11, $2b, $59, $0a, $01, $03, $01, $07, $18, $01, $03, $01, $1a, $4b, $01, $34, $26, $24, $14, $e2
	db $89, $00, $14, $e5, $13, $2d, $01, $03, $01, $0f, $0d, $03, $01, $0f, $0d, $03, $01, $0f, $0d, $03, $0f, $23, $01, $f4, $89, $00, $14, $fb, $01, $0e, $03, $01
	db $03, $01, $03, $01, $03, $01, $03, $01, $03, $01, $03, $01, $03, $0c, $01, $f8, $89, $00, $14, $eb, $01, $21, $01, $03, $3d, $3f, $01, $03, $3d, $3f, $01, $03
	db $3d, $3f, $01, $03, $3d, $1d, $01, $e8, $ff, $00, $ff, $00, $ff, $00, $c6, $00


	or   l                                           ; $7be3: $b5
	nop                                              ; $7be4: $00
	nop                                              ; $7be5: $00
	dec  b                                           ; $7be6: $05
	add  h                                           ; $7be7: $84
	nop                                              ; $7be8: $00
	inc  bc                                          ; $7be9: $03
	ld   [bc], a                                     ; $7bea: $02
	nop                                              ; $7beb: $00
	ld   bc, $8703                                   ; $7bec: $01 $03 $87
	nop                                              ; $7bef: $00
	nop                                              ; $7bf0: $00
	dec  c                                           ; $7bf1: $0d
	adc  c                                           ; $7bf2: $89
	nop                                              ; $7bf3: $00
	nop                                              ; $7bf4: $00
	dec  c                                           ; $7bf5: $0d
	add  h                                           ; $7bf6: $84
	nop                                              ; $7bf7: $00
	inc  bc                                          ; $7bf8: $03
	ld   [bc], a                                     ; $7bf9: $02
	ld   bc, $0300                                   ; $7bfa: $01 $00 $03
	add  a                                           ; $7bfd: $87
	nop                                              ; $7bfe: $00
	nop                                              ; $7bff: $00
	dec  c                                           ; $7c00: $0d
	adc  c                                           ; $7c01: $89
	nop                                              ; $7c02: $00
	nop                                              ; $7c03: $00
	dec  c                                           ; $7c04: $0d
	add  h                                           ; $7c05: $84
	nop                                              ; $7c06: $00
	add  d                                           ; $7c07: $82
	inc  bc                                          ; $7c08: $03
	add  a                                           ; $7c09: $87
	nop                                              ; $7c0a: $00
	nop                                              ; $7c0b: $00
	dec  c                                           ; $7c0c: $0d
	adc  c                                           ; $7c0d: $89
	nop                                              ; $7c0e: $00
	nop                                              ; $7c0f: $00
	dec  c                                           ; $7c10: $0d
	add  h                                           ; $7c11: $84
	nop                                              ; $7c12: $00
	nop                                              ; $7c13: $00
	inc  bc                                          ; $7c14: $03
	add  b                                           ; $7c15: $80
	nop                                              ; $7c16: $00
	nop                                              ; $7c17: $00
	inc  bc                                          ; $7c18: $03
	add  a                                           ; $7c19: $87
	nop                                              ; $7c1a: $00
	nop                                              ; $7c1b: $00
	dec  c                                           ; $7c1c: $0d
	adc  c                                           ; $7c1d: $89
	nop                                              ; $7c1e: $00
	nop                                              ; $7c1f: $00
	dec  c                                           ; $7c20: $0d
	sub  c                                           ; $7c21: $91
	nop                                              ; $7c22: $00
	nop                                              ; $7c23: $00
	dec  c                                           ; $7c24: $0d
	adc  c                                           ; $7c25: $89
	nop                                              ; $7c26: $00
	nop                                              ; $7c27: $00
	dec  c                                           ; $7c28: $0d
	add  h                                           ; $7c29: $84
	nop                                              ; $7c2a: $00
	nop                                              ; $7c2b: $00
	ld   [bc], a                                     ; $7c2c: $02
	add  e                                           ; $7c2d: $83
	nop                                              ; $7c2e: $00
	nop                                              ; $7c2f: $00
	ld   [bc], a                                     ; $7c30: $02
	add  h                                           ; $7c31: $84
	nop                                              ; $7c32: $00
	nop                                              ; $7c33: $00
	dec  c                                           ; $7c34: $0d
	adc  c                                           ; $7c35: $89
	nop                                              ; $7c36: $00
	nop                                              ; $7c37: $00
	dec  c                                           ; $7c38: $0d
	add  h                                           ; $7c39: $84
	nop                                              ; $7c3a: $00
	ld   bc, $0201                                   ; $7c3b: $01 $01 $02
	add  d                                           ; $7c3e: $82
	nop                                              ; $7c3f: $00
	nop                                              ; $7c40: $00
	inc  bc                                          ; $7c41: $03
	add  h                                           ; $7c42: $84
	nop                                              ; $7c43: $00
	nop                                              ; $7c44: $00
	dec  c                                           ; $7c45: $0d
	adc  c                                           ; $7c46: $89
	nop                                              ; $7c47: $00
	nop                                              ; $7c48: $00
	dec  c                                           ; $7c49: $0d
	add  h                                           ; $7c4a: $84
	nop                                              ; $7c4b: $00
	ld   bc, $0201                                   ; $7c4c: $01 $01 $02
	add  d                                           ; $7c4f: $82
	nop                                              ; $7c50: $00
	nop                                              ; $7c51: $00
	inc  bc                                          ; $7c52: $03
	add  h                                           ; $7c53: $84
	nop                                              ; $7c54: $00
	nop                                              ; $7c55: $00
	dec  c                                           ; $7c56: $0d
	adc  c                                           ; $7c57: $89
	nop                                              ; $7c58: $00
	nop                                              ; $7c59: $00
	dec  c                                           ; $7c5a: $0d
	add  h                                           ; $7c5b: $84
	nop                                              ; $7c5c: $00
	ld   bc, $0201                                   ; $7c5d: $01 $01 $02
	add  d                                           ; $7c60: $82
	nop                                              ; $7c61: $00
	nop                                              ; $7c62: $00
	inc  bc                                          ; $7c63: $03
	add  h                                           ; $7c64: $84
	nop                                              ; $7c65: $00
	nop                                              ; $7c66: $00
	dec  c                                           ; $7c67: $0d
	adc  c                                           ; $7c68: $89
	nop                                              ; $7c69: $00
	nop                                              ; $7c6a: $00
	dec  c                                           ; $7c6b: $0d
	add  h                                           ; $7c6c: $84
	nop                                              ; $7c6d: $00
	ld   bc, $0201                                   ; $7c6e: $01 $01 $02
	add  d                                           ; $7c71: $82
	nop                                              ; $7c72: $00
	nop                                              ; $7c73: $00
	inc  bc                                          ; $7c74: $03
	add  h                                           ; $7c75: $84
	nop                                              ; $7c76: $00
	nop                                              ; $7c77: $00
	dec  c                                           ; $7c78: $0d
	adc  c                                           ; $7c79: $89
	nop                                              ; $7c7a: $00
	nop                                              ; $7c7b: $00
	dec  c                                           ; $7c7c: $0d
	add  h                                           ; $7c7d: $84
	nop                                              ; $7c7e: $00
	ld   bc, $0201                                   ; $7c7f: $01 $01 $02
	add  d                                           ; $7c82: $82
	nop                                              ; $7c83: $00
	nop                                              ; $7c84: $00
	inc  bc                                          ; $7c85: $03
	add  h                                           ; $7c86: $84
	nop                                              ; $7c87: $00
	nop                                              ; $7c88: $00
	dec  c                                           ; $7c89: $0d
	adc  c                                           ; $7c8a: $89
	nop                                              ; $7c8b: $00
	nop                                              ; $7c8c: $00
	dec  c                                           ; $7c8d: $0d
	add  h                                           ; $7c8e: $84
	nop                                              ; $7c8f: $00
	ld   bc, $0201                                   ; $7c90: $01 $01 $02
	add  d                                           ; $7c93: $82
	nop                                              ; $7c94: $00
	nop                                              ; $7c95: $00
	inc  bc                                          ; $7c96: $03
	add  h                                           ; $7c97: $84
	nop                                              ; $7c98: $00
	nop                                              ; $7c99: $00
	dec  c                                           ; $7c9a: $0d
	adc  c                                           ; $7c9b: $89
	nop                                              ; $7c9c: $00
	nop                                              ; $7c9d: $00
	dec  c                                           ; $7c9e: $0d
	add  h                                           ; $7c9f: $84
	nop                                              ; $7ca0: $00
	ld   bc, $0201                                   ; $7ca1: $01 $01 $02
	add  d                                           ; $7ca4: $82
	nop                                              ; $7ca5: $00
	nop                                              ; $7ca6: $00
	inc  bc                                          ; $7ca7: $03
	add  h                                           ; $7ca8: $84
	nop                                              ; $7ca9: $00
	nop                                              ; $7caa: $00
	dec  c                                           ; $7cab: $0d
	adc  c                                           ; $7cac: $89
	nop                                              ; $7cad: $00
	nop                                              ; $7cae: $00
	dec  c                                           ; $7caf: $0d
	add  h                                           ; $7cb0: $84
	nop                                              ; $7cb1: $00
	ld   bc, $0102                                   ; $7cb2: $01 $02 $01
	add  d                                           ; $7cb5: $82
	nop                                              ; $7cb6: $00
	nop                                              ; $7cb7: $00
	inc  bc                                          ; $7cb8: $03
	add  h                                           ; $7cb9: $84
	nop                                              ; $7cba: $00
	nop                                              ; $7cbb: $00
	dec  c                                           ; $7cbc: $0d
	adc  c                                           ; $7cbd: $89
	nop                                              ; $7cbe: $00
	nop                                              ; $7cbf: $00
	dec  c                                           ; $7cc0: $0d
	sub  c                                           ; $7cc1: $91
	nop                                              ; $7cc2: $00
	nop                                              ; $7cc3: $00
	dec  c                                           ; $7cc4: $0d
	adc  c                                           ; $7cc5: $89
	nop                                              ; $7cc6: $00
	nop                                              ; $7cc7: $00
	dec  c                                           ; $7cc8: $0d
	sub  c                                           ; $7cc9: $91
	nop                                              ; $7cca: $00
	nop                                              ; $7ccb: $00
	dec  c                                           ; $7ccc: $0d
	adc  c                                           ; $7ccd: $89
	nop                                              ; $7cce: $00
	nop                                              ; $7ccf: $00
	dec  c                                           ; $7cd0: $0d
	sub  c                                           ; $7cd1: $91
	nop                                              ; $7cd2: $00
	nop                                              ; $7cd3: $00
	dec  c                                           ; $7cd4: $0d
	adc  c                                           ; $7cd5: $89
	nop                                              ; $7cd6: $00
	nop                                              ; $7cd7: $00
	dec  c                                           ; $7cd8: $0d
	sub  c                                           ; $7cd9: $91
	nop                                              ; $7cda: $00
	nop                                              ; $7cdb: $00
	dec  c                                           ; $7cdc: $0d
	adc  c                                           ; $7cdd: $89
	nop                                              ; $7cde: $00
	nop                                              ; $7cdf: $00
	dec  c                                           ; $7ce0: $0d
	adc  l                                           ; $7ce1: $8d
	nop                                              ; $7ce2: $00
	inc  b                                           ; $7ce3: $04
	jr   nz, jr_01d_7ce6                             ; $7ce4: $20 $00

jr_01d_7ce6:
	jr   nz, jr_01d_7ce8                             ; $7ce6: $20 $00

jr_01d_7ce8:
	dec  c                                           ; $7ce8: $0d
	adc  c                                           ; $7ce9: $89
	nop                                              ; $7cea: $00
	nop                                              ; $7ceb: $00
	dec  c                                           ; $7cec: $0d
	add  b                                           ; $7ced: $80
	nop                                              ; $7cee: $00
	add  b                                           ; $7cef: $80
	ld   [$0089], sp                                 ; $7cf0: $08 $89 $00
	inc  b                                           ; $7cf3: $04
	jr   z, jr_01d_7cfe                              ; $7cf4: $28 $08

	jr   nz, jr_01d_7cf8                             ; $7cf6: $20 $00

jr_01d_7cf8:
	dec  c                                           ; $7cf8: $0d
	adc  c                                           ; $7cf9: $89
	nop                                              ; $7cfa: $00
	nop                                              ; $7cfb: $00
	dec  c                                           ; $7cfc: $0d
	add  b                                           ; $7cfd: $80

jr_01d_7cfe:
	nop                                              ; $7cfe: $00
	add  b                                           ; $7cff: $80
	ld   [$0089], sp                                 ; $7d00: $08 $89 $00
	inc  b                                           ; $7d03: $04
	jr   z, jr_01d_7d0e                              ; $7d04: $28 $08

	jr   nz, jr_01d_7d08                             ; $7d06: $20 $00

jr_01d_7d08:
	dec  c                                           ; $7d08: $0d
	adc  c                                           ; $7d09: $89
	nop                                              ; $7d0a: $00
	nop                                              ; $7d0b: $00
	dec  c                                           ; $7d0c: $0d
	add  b                                           ; $7d0d: $80

jr_01d_7d0e:
	nop                                              ; $7d0e: $00
	add  b                                           ; $7d0f: $80
	ld   [$0084], sp                                 ; $7d10: $08 $84 $00
	nop                                              ; $7d13: $00
	ld   [$0082], sp                                 ; $7d14: $08 $82 $00
	inc  b                                           ; $7d17: $04
	jr   nz, jr_01d_7d22                             ; $7d18: $20 $08

	jr   nz, jr_01d_7d1c                             ; $7d1a: $20 $00

jr_01d_7d1c:
	dec  c                                           ; $7d1c: $0d
	adc  c                                           ; $7d1d: $89
	nop                                              ; $7d1e: $00
	nop                                              ; $7d1f: $00
	dec  c                                           ; $7d20: $0d
	add  b                                           ; $7d21: $80

jr_01d_7d22:
	nop                                              ; $7d22: $00
	nop                                              ; $7d23: $00
	ld   [$008a], sp                                 ; $7d24: $08 $8a $00
	inc  b                                           ; $7d27: $04
	jr   nz, jr_01d_7d32                             ; $7d28: $20 $08

	jr   nz, jr_01d_7d2c                             ; $7d2a: $20 $00

jr_01d_7d2c:
	dec  c                                           ; $7d2c: $0d
	adc  c                                           ; $7d2d: $89
	nop                                              ; $7d2e: $00
	ld   [bc], a                                     ; $7d2f: $02
	dec  c                                           ; $7d30: $0d
	nop                                              ; $7d31: $00

jr_01d_7d32:
	ld   b, b                                        ; $7d32: $40
	adc  e                                           ; $7d33: $8b
	nop                                              ; $7d34: $00
	inc  b                                           ; $7d35: $04
	jr   nz, jr_01d_7d38                             ; $7d36: $20 $00

jr_01d_7d38:
	ld   h, b                                        ; $7d38: $60
	nop                                              ; $7d39: $00
	dec  c                                           ; $7d3a: $0d
	adc  c                                           ; $7d3b: $89
	nop                                              ; $7d3c: $00
	nop                                              ; $7d3d: $00
	dec  c                                           ; $7d3e: $0d
	adc  l                                           ; $7d3f: $8d
	nop                                              ; $7d40: $00
	inc  b                                           ; $7d41: $04
	jr   nz, jr_01d_7d44                             ; $7d42: $20 $00

jr_01d_7d44:
	jr   nz, jr_01d_7d46                             ; $7d44: $20 $00

jr_01d_7d46:
	dec  c                                           ; $7d46: $0d
	adc  c                                           ; $7d47: $89
	nop                                              ; $7d48: $00
	nop                                              ; $7d49: $00
	dec  c                                           ; $7d4a: $0d
	add  b                                           ; $7d4b: $80
	nop                                              ; $7d4c: $00
	add  b                                           ; $7d4d: $80

jr_01d_7d4e:
	ld   [$0081], sp                                 ; $7d4e: $08 $81 $00
	nop                                              ; $7d51: $00
	ld   [$0080], sp                                 ; $7d52: $08 $80 $00
	nop                                              ; $7d55: $00
	ld   [$0082], sp                                 ; $7d56: $08 $82 $00
	inc  b                                           ; $7d59: $04
	jr   z, jr_01d_7d64                              ; $7d5a: $28 $08

	jr   nz, jr_01d_7d5e                             ; $7d5c: $20 $00

jr_01d_7d5e:
	dec  c                                           ; $7d5e: $0d
	adc  c                                           ; $7d5f: $89
	nop                                              ; $7d60: $00
	nop                                              ; $7d61: $00
	dec  c                                           ; $7d62: $0d
	add  b                                           ; $7d63: $80

jr_01d_7d64:
	nop                                              ; $7d64: $00
	add  b                                           ; $7d65: $80
	ld   [$0081], sp                                 ; $7d66: $08 $81 $00
	nop                                              ; $7d69: $00
	ld   [$0080], sp                                 ; $7d6a: $08 $80 $00
	nop                                              ; $7d6d: $00
	ld   [$0082], sp                                 ; $7d6e: $08 $82 $00
	inc  b                                           ; $7d71: $04
	jr   z, jr_01d_7d7c                              ; $7d72: $28 $08

	jr   nz, jr_01d_7d76                             ; $7d74: $20 $00

jr_01d_7d76:
	dec  c                                           ; $7d76: $0d
	adc  c                                           ; $7d77: $89
	nop                                              ; $7d78: $00
	ld   [bc], a                                     ; $7d79: $02
	dec  c                                           ; $7d7a: $0d
	nop                                              ; $7d7b: $00

jr_01d_7d7c:
	ld   b, b                                        ; $7d7c: $40
	adc  e                                           ; $7d7d: $8b
	nop                                              ; $7d7e: $00
	inc  b                                           ; $7d7f: $04
	jr   nz, jr_01d_7d82                             ; $7d80: $20 $00

jr_01d_7d82:
	ld   h, b                                        ; $7d82: $60
	nop                                              ; $7d83: $00
	dec  c                                           ; $7d84: $0d
	rst  $38                                         ; $7d85: $ff
	nop                                              ; $7d86: $00
	adc  b                                           ; $7d87: $88
	nop                                              ; $7d88: $00
	xor  d                                           ; $7d89: $aa
	nop                                              ; $7d8a: $00
	nop                                              ; $7d8b: $00
	dec  b                                           ; $7d8c: $05
	sub  c                                           ; $7d8d: $91
	nop                                              ; $7d8e: $00
	nop                                              ; $7d8f: $00
	dec  c                                           ; $7d90: $0d
	adc  c                                           ; $7d91: $89
	nop                                              ; $7d92: $00
	nop                                              ; $7d93: $00
	dec  c                                           ; $7d94: $0d
	sub  c                                           ; $7d95: $91
	nop                                              ; $7d96: $00
	nop                                              ; $7d97: $00
	dec  c                                           ; $7d98: $0d
	adc  c                                           ; $7d99: $89
	nop                                              ; $7d9a: $00
	nop                                              ; $7d9b: $00
	dec  c                                           ; $7d9c: $0d
	adc  c                                           ; $7d9d: $89
	nop                                              ; $7d9e: $00
	ld   bc, $0302                                   ; $7d9f: $01 $02 $03
	add  h                                           ; $7da2: $84
	nop                                              ; $7da3: $00
	nop                                              ; $7da4: $00
	inc  c                                           ; $7da5: $0c
	adc  c                                           ; $7da6: $89
	nop                                              ; $7da7: $00
	nop                                              ; $7da8: $00
	dec  c                                           ; $7da9: $0d
	adc  c                                           ; $7daa: $89
	nop                                              ; $7dab: $00
	ld   bc, $0102                                   ; $7dac: $01 $02 $01
	add  d                                           ; $7daf: $82
	nop                                              ; $7db0: $00
	ld   [bc], a                                     ; $7db1: $02
	ld   [bc], a                                     ; $7db2: $02
	nop                                              ; $7db3: $00
	inc  c                                           ; $7db4: $0c
	adc  c                                           ; $7db5: $89
	nop                                              ; $7db6: $00

jr_01d_7db7:
	nop                                              ; $7db7: $00
	dec  c                                           ; $7db8: $0d
	adc  c                                           ; $7db9: $89
	nop                                              ; $7dba: $00
	ld   bc, $0102                                   ; $7dbb: $01 $02 $01
	add  d                                           ; $7dbe: $82
	nop                                              ; $7dbf: $00
	ld   [bc], a                                     ; $7dc0: $02
	ld   [bc], a                                     ; $7dc1: $02
	nop                                              ; $7dc2: $00
	inc  c                                           ; $7dc3: $0c
	adc  c                                           ; $7dc4: $89
	nop                                              ; $7dc5: $00
	nop                                              ; $7dc6: $00
	inc  c                                           ; $7dc7: $0c
	add  b                                           ; $7dc8: $80
	nop                                              ; $7dc9: $00
	nop                                              ; $7dca: $00
	jr   nz, jr_01d_7d4e                             ; $7dcb: $20 $81

	nop                                              ; $7dcd: $00
	ld   b, $03                                      ; $7dce: $06 $03
	ld   [bc], a                                     ; $7dd0: $02
	nop                                              ; $7dd1: $00
	jr   nz, jr_01d_7dd4                             ; $7dd2: $20 $00

jr_01d_7dd4:
	ld   [bc], a                                     ; $7dd4: $02
	ld   bc, $0081                                   ; $7dd5: $01 $81 $00
	inc  bc                                          ; $7dd8: $03
	ld   b, b                                        ; $7dd9: $40
	ld   b, d                                        ; $7dda: $42
	nop                                              ; $7ddb: $00
	inc  c                                           ; $7ddc: $0c
	adc  c                                           ; $7ddd: $89
	nop                                              ; $7dde: $00
	nop                                              ; $7ddf: $00
	inc  c                                           ; $7de0: $0c
	add  b                                           ; $7de1: $80
	nop                                              ; $7de2: $00
	ld   bc, $0020                                   ; $7de3: $01 $20 $00
	add  b                                           ; $7de6: $80
	ld   b, b                                        ; $7de7: $40
	ld   b, $03                                      ; $7de8: $06 $03
	ld   [bc], a                                     ; $7dea: $02
	nop                                              ; $7deb: $00
	jr   nz, jr_01d_7dee                             ; $7dec: $20 $00

jr_01d_7dee:
	ld   [bc], a                                     ; $7dee: $02
	ld   b, c                                        ; $7def: $41
	add  b                                           ; $7df0: $80
	ld   b, b                                        ; $7df1: $40
	inc  b                                           ; $7df2: $04
	nop                                              ; $7df3: $00
	ld   b, b                                        ; $7df4: $40
	ld   [bc], a                                     ; $7df5: $02
	nop                                              ; $7df6: $00
	inc  c                                           ; $7df7: $0c
	adc  c                                           ; $7df8: $89
	nop                                              ; $7df9: $00
	nop                                              ; $7dfa: $00
	inc  l                                           ; $7dfb: $2c
	add  c                                           ; $7dfc: $81
	ld   b, b                                        ; $7dfd: $40
	add  c                                           ; $7dfe: $81
	nop                                              ; $7dff: $00
	ld   b, $43                                      ; $7e00: $06 $43

jr_01d_7e02:
	ld   [bc], a                                     ; $7e02: $02
	ld   b, b                                        ; $7e03: $40
	jr   nz, jr_01d_7e46                             ; $7e04: $20 $40

	ld   [bc], a                                     ; $7e06: $02
	ld   bc, $0082                                   ; $7e07: $01 $82 $00
	ld   [bc], a                                     ; $7e0a: $02
	ld   [bc], a                                     ; $7e0b: $02
	nop                                              ; $7e0c: $00
	inc  c                                           ; $7e0d: $0c
	adc  c                                           ; $7e0e: $89
	nop                                              ; $7e0f: $00
	ld   [bc], a                                     ; $7e10: $02
	inc  l                                           ; $7e11: $2c
	jr   nz, jr_01d_7e74                             ; $7e12: $20 $60

	add  d                                           ; $7e14: $82
	nop                                              ; $7e15: $00
	ld   bc, $2243                                   ; $7e16: $01 $43 $22
	adc  c                                           ; $7e19: $89
	nop                                              ; $7e1a: $00
	nop                                              ; $7e1b: $00
	dec  c                                           ; $7e1c: $0d
	adc  c                                           ; $7e1d: $89
	nop                                              ; $7e1e: $00
	nop                                              ; $7e1f: $00
	inc  c                                           ; $7e20: $0c
	add  b                                           ; $7e21: $80
	nop                                              ; $7e22: $00
	nop                                              ; $7e23: $00
	ld   h, b                                        ; $7e24: $60
	add  c                                           ; $7e25: $81
	nop                                              ; $7e26: $00
	ld   bc, $2243                                   ; $7e27: $01 $43 $22
	adc  c                                           ; $7e2a: $89
	nop                                              ; $7e2b: $00
	nop                                              ; $7e2c: $00
	dec  c                                           ; $7e2d: $0d
	adc  c                                           ; $7e2e: $89
	nop                                              ; $7e2f: $00
	nop                                              ; $7e30: $00
	inc  c                                           ; $7e31: $0c
	add  b                                           ; $7e32: $80
	nop                                              ; $7e33: $00
	add  b                                           ; $7e34: $80
	jr   nz, jr_01d_7db7                             ; $7e35: $20 $80

	nop                                              ; $7e37: $00
	ld   bc, $2223                                   ; $7e38: $01 $23 $22
	adc  c                                           ; $7e3b: $89
	nop                                              ; $7e3c: $00
	nop                                              ; $7e3d: $00
	dec  c                                           ; $7e3e: $0d
	adc  c                                           ; $7e3f: $89
	nop                                              ; $7e40: $00
	nop                                              ; $7e41: $00
	dec  c                                           ; $7e42: $0d
	sub  c                                           ; $7e43: $91
	nop                                              ; $7e44: $00
	nop                                              ; $7e45: $00

jr_01d_7e46:
	dec  c                                           ; $7e46: $0d
	adc  c                                           ; $7e47: $89
	nop                                              ; $7e48: $00
	nop                                              ; $7e49: $00
	dec  c                                           ; $7e4a: $0d
	sub  c                                           ; $7e4b: $91
	nop                                              ; $7e4c: $00
	nop                                              ; $7e4d: $00
	dec  c                                           ; $7e4e: $0d
	adc  c                                           ; $7e4f: $89
	nop                                              ; $7e50: $00
	nop                                              ; $7e51: $00
	dec  c                                           ; $7e52: $0d
	sub  c                                           ; $7e53: $91
	nop                                              ; $7e54: $00
	nop                                              ; $7e55: $00
	dec  c                                           ; $7e56: $0d
	adc  c                                           ; $7e57: $89
	nop                                              ; $7e58: $00
	nop                                              ; $7e59: $00
	inc  c                                           ; $7e5a: $0c
	sub  c                                           ; $7e5b: $91
	nop                                              ; $7e5c: $00
	nop                                              ; $7e5d: $00
	inc  c                                           ; $7e5e: $0c
	adc  c                                           ; $7e5f: $89
	nop                                              ; $7e60: $00
	nop                                              ; $7e61: $00
	inc  c                                           ; $7e62: $0c

jr_01d_7e63:
	sub  c                                           ; $7e63: $91
	nop                                              ; $7e64: $00
	nop                                              ; $7e65: $00
	inc  c                                           ; $7e66: $0c
	adc  c                                           ; $7e67: $89
	nop                                              ; $7e68: $00
	nop                                              ; $7e69: $00
	inc  c                                           ; $7e6a: $0c
	sub  c                                           ; $7e6b: $91
	nop                                              ; $7e6c: $00
	nop                                              ; $7e6d: $00
	inc  c                                           ; $7e6e: $0c
	adc  c                                           ; $7e6f: $89
	nop                                              ; $7e70: $00
	nop                                              ; $7e71: $00
	inc  c                                           ; $7e72: $0c
	sub  c                                           ; $7e73: $91

jr_01d_7e74:
	nop                                              ; $7e74: $00
	nop                                              ; $7e75: $00
	inc  c                                           ; $7e76: $0c
	adc  c                                           ; $7e77: $89
	nop                                              ; $7e78: $00
	nop                                              ; $7e79: $00
	dec  c                                           ; $7e7a: $0d
	adc  d                                           ; $7e7b: $8a
	nop                                              ; $7e7c: $00
	nop                                              ; $7e7d: $00
	jr   nz, jr_01d_7e02                             ; $7e7e: $20 $82

	nop                                              ; $7e80: $00
	ld   [bc], a                                     ; $7e81: $02
	ld   hl, $0c00                                   ; $7e82: $21 $00 $0c
	adc  c                                           ; $7e85: $89
	nop                                              ; $7e86: $00
	ld   bc, $000c                                   ; $7e87: $01 $0c $00
	add  b                                           ; $7e8a: $80
	ld   bc, $008a                                   ; $7e8b: $01 $8a $00
	inc  b                                           ; $7e8e: $04
	ld   bc, $2120                                   ; $7e8f: $01 $20 $21
	nop                                              ; $7e92: $00
	inc  c                                           ; $7e93: $0c
	adc  c                                           ; $7e94: $89
	nop                                              ; $7e95: $00
	ld   bc, $000c                                   ; $7e96: $01 $0c $00
	add  b                                           ; $7e99: $80
	ld   bc, $0080                                   ; $7e9a: $01 $80 $00
	nop                                              ; $7e9d: $00
	ld   [$0086], sp                                 ; $7e9e: $08 $86 $00
	dec  b                                           ; $7ea1: $05
	ld   [$2001], sp                                 ; $7ea2: $08 $01 $20
	ld   hl, $0c00                                   ; $7ea5: $21 $00 $0c
	adc  c                                           ; $7ea8: $89
	nop                                              ; $7ea9: $00
	inc  bc                                          ; $7eaa: $03
	inc  l                                           ; $7eab: $2c
	ld   b, b                                        ; $7eac: $40
	ld   h, c                                        ; $7ead: $61
	ld   bc, $0084                                   ; $7eae: $01 $84 $00
	nop                                              ; $7eb1: $00
	ld   [$0084], sp                                 ; $7eb2: $08 $84 $00
	inc  bc                                          ; $7eb5: $03
	add  hl, hl                                      ; $7eb6: $29
	ld   hl, $0c00                                   ; $7eb7: $21 $00 $0c
	adc  c                                           ; $7eba: $89
	nop                                              ; $7ebb: $00
	inc  bc                                          ; $7ebc: $03
	inc  l                                           ; $7ebd: $2c
	jr   nz, jr_01d_7ec1                             ; $7ebe: $20 $01

	add  hl, bc                                      ; $7ec0: $09

jr_01d_7ec1:
	adc  e                                           ; $7ec1: $8b
	nop                                              ; $7ec2: $00
	inc  bc                                          ; $7ec3: $03
	add  hl, hl                                      ; $7ec4: $29
	jr   nz, jr_01d_7ec7                             ; $7ec5: $20 $00

jr_01d_7ec7:
	dec  c                                           ; $7ec7: $0d
	adc  c                                           ; $7ec8: $89
	nop                                              ; $7ec9: $00
	ld   [bc], a                                     ; $7eca: $02
	inc  c                                           ; $7ecb: $0c
	nop                                              ; $7ecc: $00
	ld   b, c                                        ; $7ecd: $41
	adc  h                                           ; $7ece: $8c
	nop                                              ; $7ecf: $00
	inc  bc                                          ; $7ed0: $03
	jr   nz, @+$62                                   ; $7ed1: $20 $60

	nop                                              ; $7ed3: $00
	dec  c                                           ; $7ed4: $0d
	adc  c                                           ; $7ed5: $89
	nop                                              ; $7ed6: $00
	nop                                              ; $7ed7: $00
	inc  c                                           ; $7ed8: $0c
	add  b                                           ; $7ed9: $80
	nop                                              ; $7eda: $00
	nop                                              ; $7edb: $00
	ld   bc, $0087                                   ; $7edc: $01 $87 $00
	nop                                              ; $7edf: $00
	jr   nz, jr_01d_7e63                             ; $7ee0: $20 $81

	nop                                              ; $7ee2: $00
	nop                                              ; $7ee3: $00
	ld   hl, $0080                                   ; $7ee4: $21 $80 $00
	nop                                              ; $7ee7: $00
	inc  c                                           ; $7ee8: $0c
	adc  c                                           ; $7ee9: $89
	nop                                              ; $7eea: $00
	nop                                              ; $7eeb: $00
	inc  l                                           ; $7eec: $2c
	add  b                                           ; $7eed: $80
	ld   b, b                                        ; $7eee: $40
	ld   bc, $0121                                   ; $7eef: $01 $21 $01
	add  c                                           ; $7ef2: $81
	nop                                              ; $7ef3: $00
	nop                                              ; $7ef4: $00
	ld   [$0080], sp                                 ; $7ef5: $08 $80 $00
	nop                                              ; $7ef8: $00
	ld   [$0082], sp                                 ; $7ef9: $08 $82 $00
	add  b                                           ; $7efc: $80
	ld   hl, $0080                                   ; $7efd: $21 $80 $00
	nop                                              ; $7f00: $00
	inc  c                                           ; $7f01: $0c
	adc  c                                           ; $7f02: $89
	nop                                              ; $7f03: $00
	ld   b, $2c                                      ; $7f04: $06 $2c
	jr   nz, @+$62                                   ; $7f06: $20 $60

	ld   h, c                                        ; $7f08: $61
	ld   bc, $0800                                   ; $7f09: $01 $00 $08
	add  [hl]                                        ; $7f0c: $86
	nop                                              ; $7f0d: $00
	ld   [bc], a                                     ; $7f0e: $02
	ld   [$2021], sp                                 ; $7f0f: $08 $21 $20
	add  b                                           ; $7f12: $80
	nop                                              ; $7f13: $00
	nop                                              ; $7f14: $00
	dec  c                                           ; $7f15: $0d
	adc  c                                           ; $7f16: $89
	nop                                              ; $7f17: $00
	nop                                              ; $7f18: $00
	inc  c                                           ; $7f19: $0c
	add  b                                           ; $7f1a: $80
	nop                                              ; $7f1b: $00
	nop                                              ; $7f1c: $00
	ld   b, c                                        ; $7f1d: $41
	add  a                                           ; $7f1e: $87
	nop                                              ; $7f1f: $00
	nop                                              ; $7f20: $00
	jr   nz, @-$7d                                   ; $7f21: $20 $81

	nop                                              ; $7f23: $00
	nop                                              ; $7f24: $00
	ld   h, b                                        ; $7f25: $60
	add  b                                           ; $7f26: $80
	nop                                              ; $7f27: $00
	nop                                              ; $7f28: $00
	dec  c                                           ; $7f29: $0d
	rst  $38                                         ; $7f2a: $ff
	nop                                              ; $7f2b: $00
	adc  b                                           ; $7f2c: $88
	nop                                              ; $7f2d: $00
	ld   d, $00                                      ; $7f2e: $16 $00
	inc  c                                           ; $7f30: $0c
	db   $10                                         ; $7f31: $10
	ld   bc, $a603                                   ; $7f32: $01 $03 $a6
	ld   bc, $0103                                   ; $7f35: $01 $03 $01
	rrca                                             ; $7f38: $0f
	ld   bc, $0300                                   ; $7f39: $01 $00 $03
	ld   bc, $8002                                   ; $7f3c: $01 $02 $80
	dec  b                                           ; $7f3f: $05
	add  b                                           ; $7f40: $80
	nop                                              ; $7f41: $00
	inc  bc                                          ; $7f42: $03
	inc  b                                           ; $7f43: $04
	inc  bc                                          ; $7f44: $03
	cp   c                                           ; $7f45: $b9
	dec  [hl]                                        ; $7f46: $35
	adc  c                                           ; $7f47: $89
	nop                                              ; $7f48: $00
	inc  d                                           ; $7f49: $14
	ld   hl, $ad07                                   ; $7f4a: $21 $07 $ad
	ld   b, $7f                                      ; $7f4d: $06 $7f
	ld   bc, $0103                                   ; $7f4f: $01 $03 $01
	rlca                                             ; $7f52: $07
	ld   bc, $7f03                                   ; $7f53: $01 $03 $7f
	ld   a, [hl]                                     ; $7f56: $7e
	rrca                                             ; $7f57: $0f
	ld   bc, $7303                                   ; $7f58: $01 $03 $73
	ld   [hl], d                                     ; $7f5b: $72
	rlca                                             ; $7f5c: $07
	swap l                                           ; $7f5d: $cb $35
	adc  c                                           ; $7f5f: $89
	nop                                              ; $7f60: $00
	ld   a, [bc]                                     ; $7f61: $0a
	ld   bc, $db25                                   ; $7f62: $01 $25 $db
	inc  bc                                          ; $7f65: $03
	ld   bc, $011f                                   ; $7f66: $01 $1f $01
	inc  bc                                          ; $7f69: $03
	ld   bc, $6d07                                   ; $7f6a: $01 $07 $6d
	add  b                                           ; $7f6d: $80
	nop                                              ; $7f6e: $00
	rlca                                             ; $7f6f: $07
	ld   l, h                                        ; $7f70: $6c
	inc  bc                                          ; $7f71: $03
	ld   bc, $006e                                   ; $7f72: $01 $6e $00
	ld   h, c                                        ; $7f75: $61
	rst  JumpTable                                         ; $7f76: $df
	dec  [hl]                                        ; $7f77: $35
	adc  c                                           ; $7f78: $89
	nop                                              ; $7f79: $00
	ld   a, [bc]                                     ; $7f7a: $0a
	ld   b, $ed                                      ; $7f7b: $06 $ed
	ld   h, b                                        ; $7f7d: $60
	ld   h, e                                        ; $7f7e: $63
	ld   bc, $0107                                   ; $7f7f: $01 $07 $01
	inc  bc                                          ; $7f82: $03
	ld   bc, $593f                                   ; $7f83: $01 $3f $59
	add  b                                           ; $7f86: $80
	nop                                              ; $7f87: $00
	rlca                                             ; $7f88: $07
	ld   e, b                                        ; $7f89: $58
	inc  bc                                          ; $7f8a: $03
	ld   bc, $0107                                   ; $7f8b: $01 $07 $01
	inc  bc                                          ; $7f8e: $03
	pop  hl                                          ; $7f8f: $e1
	dec  [hl]                                        ; $7f90: $35
	adc  c                                           ; $7f91: $89
	nop                                              ; $7f92: $00
	inc  d                                           ; $7f93: $14
	ld   [de], a                                     ; $7f94: $12
	rst  ToBoot                                         ; $7f95: $c7
	rrca                                             ; $7f96: $0f
	ld   d, c                                        ; $7f97: $51
	ld   d, b                                        ; $7f98: $50
	inc  bc                                          ; $7f99: $03
	ld   bc, $0107                                   ; $7f9a: $01 $07 $01
	inc  bc                                          ; $7f9d: $03
	ld   bc, $011f                                   ; $7f9e: $01 $1f $01
	inc  bc                                          ; $7fa1: $03
	ld   bc, $0107                                   ; $7fa2: $01 $07 $01
	inc  bc                                          ; $7fa5: $03
	ld   c, a                                        ; $7fa6: $4f
	cp   [hl]                                        ; $7fa7: $be
	dec  [hl]                                        ; $7fa8: $35
	adc  c                                           ; $7fa9: $89
	nop                                              ; $7faa: $00
	inc  d                                           ; $7fab: $14
	ld   [de], a                                     ; $7fac: $12
	rst  $10                                         ; $7fad: $d7
	rrca                                             ; $7fae: $0f
	ld   bc, $7c40                                   ; $7faf: $01 $40 $7c
	ccf                                              ; $7fb2: $3f
	ld   bc, $0107                                   ; $7fb3: $01 $07 $01
	inc  bc                                          ; $7fb6: $03
	ld   bc, $f3ff                                   ; $7fb7: $01 $ff $f3
	ldh  a, [c]                                      ; $7fba: $f2
	inc  bc                                          ; $7fbb: $03
	ld   bc, $bd07                                   ; $7fbc: $01 $07 $bd
	cp   [hl]                                        ; $7fbf: $be
	dec  [hl]                                        ; $7fc0: $35
	adc  c                                           ; $7fc1: $89
	nop                                              ; $7fc2: $00
	inc  d                                           ; $7fc3: $14
	ld   [de], a                                     ; $7fc4: $12
	dec  h                                           ; $7fc5: $25
	inc  bc                                          ; $7fc6: $03
	ld   bc, $010f                                   ; $7fc7: $01 $0f $01
	inc  bc                                          ; $7fca: $03
	ld   bc, $b507                                   ; $7fcb: $01 $07 $b5
	or   h                                           ; $7fce: $b4
	inc  bc                                          ; $7fcf: $03
	ld   bc, $e3fc                                   ; $7fd0: $01 $fc $e3
	ld   bc, $0703                                   ; $7fd3: $01 $03 $07
	ld   [hl], $07                                   ; $7fd6: $36 $07
	ld   d, $89                                      ; $7fd8: $16 $89
	nop                                              ; $7fda: $00
	rrca                                             ; $7fdb: $0f
	db   $10                                         ; $7fdc: $10
	ld   sp, $0107                                   ; $7fdd: $31 $07 $01
	inc  bc                                          ; $7fe0: $03
	ld   bc, $010f                                   ; $7fe1: $01 $0f $01
	and  b                                           ; $7fe4: $a0
	and  e                                           ; $7fe5: $a3
	ld   bc, $ef07                                   ; $7fe6: $01 $07 $ef
	xor  $38                                         ; $7fe9: $ee $38
	inc  bc                                          ; $7feb: $03
