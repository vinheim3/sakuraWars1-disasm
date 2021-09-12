; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $030", ROMX[$4000], BANK[$30]

SpriteGroupBPointers::
	dw $40e2
	dw $410a
	dw SpriteGroupBIdx02_MediaFactory1
	dw SpriteGroupBIdx03_MediaFactory2
	dw $419a
	dw $41aa
	dw $41ba
	dw $41ca
	dw $41d2
	dw $41da
	dw $41e2
	dw $41f2
	dw $41fe
	dw $420a
	dw $4222
	dw $4236
	dw $424a
	dw $425e
	dw $4276
	dw $428a
	dw $42a2
	dw $42ba
	dw $42d2
	dw $42ea
	dw $4302
	dw $4312
	dw $4322
	dw $4332
	dw $4336
	dw $433a
	dw $433e
	dw $4346
	dw $434e
	dw $4356
	dw $435e
	dw $4366
	dw $436e
	dw $4376
	dw $437e
	dw $438e
	dw $439e
	dw $43ae
	dw $43be
	dw $43ce
	dw $43de
	dw $442e
	dw $447e
	dw $44ce
	dw $451e
	dw $456e
	dw $45be
	dw $460e
	dw $465e
	dw $46ae
	dw $46fe
	dw $474e
	dw $479e
	dw $47ee
	dw $483e
	dw $4886
	dw $48a6
	dw $48c6
	dw $48e6
	dw $4906
	dw $4926
	dw $4946
	dw $499e
	dw $49f6
	dw $4a4e
	dw $4a96
	dw $4aa6
	dw $4ab6
	dw $4ac6
	dw $4ace
	dw $4ad6
	dw $4ade
	dw $4ae6
	dw $4aee
	dw $4af6
	dw $4afe
	dw $4b06
	dw $4b0e
	dw $4b16
	dw $4b1e
	dw $4b26
	dw $4b2e
	dw $4b36
	dw $4b3e
	dw $4b46
	dw $4b4e
	dw $4b56
	dw $4b5e
	dw $4b66
	dw $4b6e
	dw $4b76
	dw $4b7e
	dw $4b86
	dw $4b8e
	dw $4b96
	dw $4b9e
	dw $4ba6
	dw $4bae
	dw $4bb6
	dw $4bbe
	dw $4bc6
	dw $4bce
	dw $4bd6
	dw $4bde
	dw SpriteGroupBIdx6c_Jupiter1
	dw SpriteGroupBIdx6d_Jupiter2
	dw SpriteGroupBIdx6e_Jupiter3
	dw SpriteGroupBIdx6f_Jupiter4
	dw SpriteGroupBIdx70_Jupiter5


	ld   e, b                                        ; $40e2: $58
	ld   [$0701], sp                                 ; $40e3: $08 $01 $07
	ld   d, b                                        ; $40e6: $50
	ld   [$0700], sp                                 ; $40e7: $08 $00 $07
	ld   c, b                                        ; $40ea: $48
	ld   [$0701], sp                                 ; $40eb: $08 $01 $07
	ld   b, b                                        ; $40ee: $40
	ld   [$0700], sp                                 ; $40ef: $08 $00 $07
	jr   c, jr_030_40fc                              ; $40f2: $38 $08

	ld   bc, $3007                                   ; $40f4: $01 $07 $30
	ld   [$0700], sp                                 ; $40f7: $08 $00 $07
	jr   z, jr_030_4104                              ; $40fa: $28 $08

jr_030_40fc:
	ld   bc, $2007                                   ; $40fc: $01 $07 $20
	ld   [$0700], sp                                 ; $40ff: $08 $00 $07
	jr   jr_030_410c                                 ; $4102: $18 $08

jr_030_4104:
	ld   bc, $1007                                   ; $4104: $01 $07 $10
	ld   [$1700], sp                                 ; $4107: $08 $00 $17
	db   $10                                         ; $410a: $10
	ld   b, b                                        ; $410b: $40

jr_030_410c:
	nop                                              ; $410c: $00
	rlca                                             ; $410d: $07
	db   $10                                         ; $410e: $10
	jr   c, jr_030_4111                              ; $410f: $38 $00

jr_030_4111:
	rlca                                             ; $4111: $07
	db   $10                                         ; $4112: $10
	jr   nc, jr_030_4115                             ; $4113: $30 $00

jr_030_4115:
	rlca                                             ; $4115: $07
	db   $10                                         ; $4116: $10
	jr   z, jr_030_4119                              ; $4117: $28 $00

jr_030_4119:
	rlca                                             ; $4119: $07
	db   $10                                         ; $411a: $10
	jr   nz, jr_030_411d                             ; $411b: $20 $00

jr_030_411d:
	rlca                                             ; $411d: $07
	db   $10                                         ; $411e: $10
	jr   jr_030_4121                                 ; $411f: $18 $00

jr_030_4121:
	rlca                                             ; $4121: $07
	db   $10                                         ; $4122: $10
	stop                                             ; $4123: $10 $00
	rlca                                             ; $4125: $07
	db   $10                                         ; $4126: $10
	ld   [$1700], sp                                 ; $4127: $08 $00 $17


SpriteGroupBIdx02_MediaFactory1:
	db $18, $3c, $0b, $00
	db $10, $3c, $0a, $00
	db $18, $26, $07, $00
	db $10, $26, $06, $00
	db $18, $30, $09, $00
	db $10, $30, $08, $00
	db $18, $18, $05, $00
	db $10, $18, $04, $00
	db $18, $10, $03, $00
	db $10, $10, $02, $00
	db $18, $08, $01, $00
	db $10, $08, $00, $10


SpriteGroupBIdx03_MediaFactory2:
	db $18, $40, $1b, $00
	db $10, $40, $1a, $00
	db $18, $38, $19, $00
	db $10, $38, $18, $00
	db $18, $30, $17, $00
	db $10, $30, $16, $00
	db $18, $28, $15, $00
	db $10, $28, $14, $00
	db $18, $20, $13, $00
	db $10, $20, $12, $00
	db $18, $18, $11, $00
	db $10, $18, $10, $00
	db $18, $10, $0f, $00
	db $10, $10, $0e, $00
	db $18, $08, $0d, $00
	db $10, $08, $0c, $10



	db   $10                                         ; $419a: $10
	ld   [$0106], sp                                 ; $419b: $08 $06 $01
	stop                                             ; $419e: $10 $00
	inc  b                                           ; $41a0: $04
	ld   bc, $0b00                                   ; $41a1: $01 $00 $0b
	ld   [bc], a                                     ; $41a4: $02
	ld   bc, $0300                                   ; $41a5: $01 $00 $03
	nop                                              ; $41a8: $00
	ld   de, $0810                                   ; $41a9: $11 $10 $08
	ld   c, $01                                      ; $41ac: $0e $01
	stop                                             ; $41ae: $10 $00
	inc  c                                           ; $41b0: $0c
	ld   bc, $0b00                                   ; $41b1: $01 $00 $0b
	ld   a, [bc]                                     ; $41b4: $0a
	ld   bc, $0300                                   ; $41b5: $01 $00 $03
	ld   [$1011], sp                                 ; $41b8: $08 $11 $10
	ld   [$0116], sp                                 ; $41bb: $08 $16 $01
	stop                                             ; $41be: $10 $00
	inc  d                                           ; $41c0: $14
	ld   bc, $0b00                                   ; $41c1: $01 $00 $0b
	ld   [de], a                                     ; $41c4: $12
	ld   bc, $0300                                   ; $41c5: $01 $00 $03
	db   $10                                         ; $41c8: $10
	ld   de, $0920                                   ; $41c9: $11 $20 $09
	ld   l, $21                                      ; $41cc: $2e $21
	jr   nz, jr_030_41e1                             ; $41ce: $20 $11

	inc  l                                           ; $41d0: $2c
	ld   sp, $0920                                   ; $41d1: $31 $20 $09
	ld   a, $21                                      ; $41d4: $3e $21
	jr   nz, @+$13                                   ; $41d6: $20 $11

	inc  a                                           ; $41d8: $3c
	ld   sp, $0920                                   ; $41d9: $31 $20 $09
	ld   c, [hl]                                     ; $41dc: $4e
	ld   hl, $1120                                   ; $41dd: $21 $20 $11
	ld   c, h                                        ; $41e0: $4c

jr_030_41e1:
	ld   sp, $060f                                   ; $41e1: $31 $0f $06
	ld   a, [de]                                     ; $41e4: $1a
	ld   hl, $0e0f                                   ; $41e5: $21 $0f $0e
	jr   @+$23                                       ; $41e8: $18 $21

	ld   [de], a                                     ; $41ea: $12
	nop                                              ; $41eb: $00
	ld   a, [hl+]                                    ; $41ec: $2a
	ld   hl, $0812                                   ; $41ed: $21 $12 $08
	jr   z, jr_030_4223                              ; $41f0: $28 $31

	ld   [de], a                                     ; $41f2: $12
	ld   bc, $2120                                   ; $41f3: $01 $20 $21
	ld   [de], a                                     ; $41f6: $12
	add  hl, bc                                      ; $41f7: $09
	ld   e, $21                                      ; $41f8: $1e $21
	ld   [de], a                                     ; $41fa: $12
	ld   de, $311c                                   ; $41fb: $11 $1c $31
	ld   [de], a                                     ; $41fe: $12
	ld   [bc], a                                     ; $41ff: $02
	ld   h, $21                                      ; $4200: $26 $21
	ld   [de], a                                     ; $4202: $12
	ld   a, [bc]                                     ; $4203: $0a
	inc  h                                           ; $4204: $24
	ld   hl, $1212                                   ; $4205: $21 $12 $12
	ld   [hl+], a                                    ; $4208: $22
	ld   sp, $1417                                   ; $4209: $31 $17 $14
	ld   a, [hl-]                                    ; $420c: $3a
	inc  bc                                          ; $420d: $03
	rla                                              ; $420e: $17
	inc  c                                           ; $420f: $0c
	jr   c, @+$05                                    ; $4210: $38 $03

	rra                                              ; $4212: $1f
	inc  d                                           ; $4213: $14
	ld   [hl], $00                                   ; $4214: $36 $00
	rra                                              ; $4216: $1f
	inc  c                                           ; $4217: $0c
	inc  [hl]                                        ; $4218: $34
	nop                                              ; $4219: $00
	rrca                                             ; $421a: $0f
	inc  d                                           ; $421b: $14
	ld   [hl-], a                                    ; $421c: $32
	nop                                              ; $421d: $00
	rrca                                             ; $421e: $0f
	inc  c                                           ; $421f: $0c
	jr   nc, jr_030_4232                             ; $4220: $30 $10

	db   $10                                         ; $4222: $10

jr_030_4223:
	jr   jr_030_426d                                 ; $4223: $18 $48

	inc  bc                                          ; $4225: $03
	db   $10                                         ; $4226: $10
	db   $10                                         ; $4227: $10
	ld   b, [hl]                                     ; $4228: $46
	inc  bc                                          ; $4229: $03
	jr   nz, jr_030_4236                             ; $422a: $20 $0a

	ld   b, h                                        ; $422c: $44
	inc  bc                                          ; $422d: $03
	jr   nz, jr_030_4248                             ; $422e: $20 $18

	ld   b, d                                        ; $4230: $42
	nop                                              ; $4231: $00

jr_030_4232:
	jr   nz, @+$12                                   ; $4232: $20 $10

	ld   b, b                                        ; $4234: $40
	db   $10                                         ; $4235: $10

jr_030_4236:
	ld   e, $0a                                      ; $4236: $1e $0a
	ld   d, h                                        ; $4238: $54
	inc  bc                                          ; $4239: $03
	jr   nz, @+$12                                   ; $423a: $20 $10

	ld   d, b                                        ; $423c: $50
	nop                                              ; $423d: $00
	db   $10                                         ; $423e: $10
	ld   d, $58                                      ; $423f: $16 $58
	inc  bc                                          ; $4241: $03
	db   $10                                         ; $4242: $10
	ld   c, $56                                      ; $4243: $0e $56
	inc  bc                                          ; $4245: $03
	jr   nz, @+$1a                                   ; $4246: $20 $18

jr_030_4248:
	ld   d, d                                        ; $4248: $52
	db   $10                                         ; $4249: $10
	ld   de, $6215                                   ; $424a: $11 $15 $62
	inc  bc                                          ; $424d: $03
	ld   de, $600d                                   ; $424e: $11 $0d $60
	inc  bc                                          ; $4251: $03
	jr   nz, jr_030_425c                             ; $4252: $20 $08

	ld   e, [hl]                                     ; $4254: $5e
	inc  bc                                          ; $4255: $03
	jr   nz, @+$1a                                   ; $4256: $20 $18

	ld   e, h                                        ; $4258: $5c
	nop                                              ; $4259: $00
	jr   nz, @+$12                                   ; $425a: $20 $10

jr_030_425c:
	ld   e, d                                        ; $425c: $5a
	db   $10                                         ; $425d: $10
	ld   hl, $780c                                   ; $425e: $21 $0c $78
	inc  bc                                          ; $4261: $03
	ld   hl, $701c                                   ; $4262: $21 $1c $70
	nop                                              ; $4265: $00
	ld   hl, $6e14                                   ; $4266: $21 $14 $6e
	nop                                              ; $4269: $00
	ld   de, $761c                                   ; $426a: $11 $1c $76

jr_030_426d:
	inc  bc                                          ; $426d: $03
	ld   de, $7414                                   ; $426e: $11 $14 $74
	inc  bc                                          ; $4271: $03
	ld   de, $720c                                   ; $4272: $11 $0c $72
	inc  de                                          ; $4275: $13
	jr   nz, @+$1a                                   ; $4276: $20 $18

	ld   l, h                                        ; $4278: $6c
	inc  bc                                          ; $4279: $03
	ld   de, $6a17                                   ; $427a: $11 $17 $6a
	inc  bc                                          ; $427d: $03
	ld   de, $680f                                   ; $427e: $11 $0f $68
	inc  bc                                          ; $4281: $03
	jr   nz, @+$1a                                   ; $4282: $20 $18

	ld   h, [hl]                                     ; $4284: $66
	nop                                              ; $4285: $00
	jr   nz, jr_030_4298                             ; $4286: $20 $10

	ld   h, h                                        ; $4288: $64
	db   $10                                         ; $4289: $10
	ld   a, [de]                                     ; $428a: $1a
	db   $10                                         ; $428b: $10
	adc  d                                           ; $428c: $8a
	inc  bc                                          ; $428d: $03
	ld   a, [de]                                     ; $428e: $1a
	ld   [$0388], sp                                 ; $428f: $08 $88 $03
	ld   a, [de]                                     ; $4292: $1a
	nop                                              ; $4293: $00
	add  [hl]                                        ; $4294: $86
	inc  bc                                          ; $4295: $03
	ld   a, [bc]                                     ; $4296: $0a
	db   $10                                         ; $4297: $10

jr_030_4298:
	add  h                                           ; $4298: $84
	inc  b                                           ; $4299: $04
	ld   a, [bc]                                     ; $429a: $0a
	ld   [$0482], sp                                 ; $429b: $08 $82 $04
	ld   a, [bc]                                     ; $429e: $0a
	nop                                              ; $429f: $00
	add  b                                           ; $42a0: $80
	inc  d                                           ; $42a1: $14
	add  hl, de                                      ; $42a2: $19
	db   $10                                         ; $42a3: $10
	sub  [hl]                                        ; $42a4: $96
	inc  bc                                          ; $42a5: $03
	add  hl, de                                      ; $42a6: $19
	ld   [$0394], sp                                 ; $42a7: $08 $94 $03
	add  hl, de                                      ; $42aa: $19
	nop                                              ; $42ab: $00
	sub  d                                           ; $42ac: $92
	inc  bc                                          ; $42ad: $03
	add  hl, bc                                      ; $42ae: $09
	db   $10                                         ; $42af: $10
	sub  b                                           ; $42b0: $90
	inc  b                                           ; $42b1: $04
	add  hl, bc                                      ; $42b2: $09
	ld   [$048e], sp                                 ; $42b3: $08 $8e $04
	add  hl, bc                                      ; $42b6: $09
	nop                                              ; $42b7: $00
	adc  h                                           ; $42b8: $8c
	inc  d                                           ; $42b9: $14
	jr   @+$12                                       ; $42ba: $18 $10

	and  d                                           ; $42bc: $a2
	inc  bc                                          ; $42bd: $03
	jr   @+$0a                                       ; $42be: $18 $08

	and  b                                           ; $42c0: $a0
	inc  bc                                          ; $42c1: $03
	jr   jr_030_42c4                                 ; $42c2: $18 $00

jr_030_42c4:
	sbc  [hl]                                        ; $42c4: $9e
	inc  bc                                          ; $42c5: $03
	ld   [$9c10], sp                                 ; $42c6: $08 $10 $9c
	inc  b                                           ; $42c9: $04
	ld   [$9a08], sp                                 ; $42ca: $08 $08 $9a
	inc  b                                           ; $42cd: $04
	ld   [$9800], sp                                 ; $42ce: $08 $00 $98
	inc  d                                           ; $42d1: $14
	ld   [$a610], sp                                 ; $42d2: $08 $10 $a6
	inc  b                                           ; $42d5: $04
	ld   [$a408], sp                                 ; $42d6: $08 $08 $a4
	inc  b                                           ; $42d9: $04
	jr   @+$12                                       ; $42da: $18 $10

	and  d                                           ; $42dc: $a2
	inc  bc                                          ; $42dd: $03
	jr   @+$0a                                       ; $42de: $18 $08

	and  b                                           ; $42e0: $a0
	inc  bc                                          ; $42e1: $03
	jr   jr_030_42e4                                 ; $42e2: $18 $00

jr_030_42e4:
	sbc  [hl]                                        ; $42e4: $9e
	inc  bc                                          ; $42e5: $03
	ld   [$9800], sp                                 ; $42e6: $08 $00 $98
	inc  d                                           ; $42e9: $14
	ld   [$aa10], sp                                 ; $42ea: $08 $10 $aa
	inc  b                                           ; $42ed: $04
	ld   [$a808], sp                                 ; $42ee: $08 $08 $a8
	inc  b                                           ; $42f1: $04
	jr   jr_030_4304                                 ; $42f2: $18 $10

	and  d                                           ; $42f4: $a2
	inc  bc                                          ; $42f5: $03
	jr   @+$0a                                       ; $42f6: $18 $08

	and  b                                           ; $42f8: $a0
	inc  bc                                          ; $42f9: $03
	jr   jr_030_42fc                                 ; $42fa: $18 $00

jr_030_42fc:
	sbc  [hl]                                        ; $42fc: $9e
	inc  bc                                          ; $42fd: $03
	ld   [$9800], sp                                 ; $42fe: $08 $00 $98
	inc  d                                           ; $4301: $14
	dec  b                                           ; $4302: $05
	inc  b                                           ; $4303: $04

jr_030_4304:
	jp   nz, $0521                                   ; $4304: $c2 $21 $05

	inc  c                                           ; $4307: $0c
	ret  nz                                          ; $4308: $c0

	ld   hl, $080e                                   ; $4309: $21 $0e $08
	ld   b, $01                                      ; $430c: $06 $01
	ld   c, $00                                      ; $430e: $0e $00
	inc  b                                           ; $4310: $04
	ld   de, $0403                                   ; $4311: $11 $03 $04
	add  $21                                         ; $4314: $c6 $21
	inc  bc                                          ; $4316: $03
	inc  c                                           ; $4317: $0c
	call nz, $0c21                                   ; $4318: $c4 $21 $0c
	ld   [$0106], sp                                 ; $431b: $08 $06 $01
	inc  c                                           ; $431e: $0c
	nop                                              ; $431f: $00
	inc  b                                           ; $4320: $04
	ld   de, $0403                                   ; $4321: $11 $03 $04
	add  $21                                         ; $4324: $c6 $21
	inc  bc                                          ; $4326: $03
	inc  c                                           ; $4327: $0c
	call nz, $0b21                                   ; $4328: $c4 $21 $0b
	ld   [$0106], sp                                 ; $432b: $08 $06 $01
	dec  bc                                          ; $432e: $0b
	nop                                              ; $432f: $00
	inc  b                                           ; $4330: $04
	ld   de, $060a                                   ; $4331: $11 $0a $06
	ret  z                                           ; $4334: $c8

	ld   [de], a                                     ; $4335: $12
	dec  bc                                          ; $4336: $0b
	inc  b                                           ; $4337: $04
	jp   z, $0b12                                    ; $4338: $ca $12 $0b

	inc  b                                           ; $433b: $04
	call z, $0812                                    ; $433c: $cc $12 $08
	ld   [$02d2], sp                                 ; $433f: $08 $d2 $02
	ld   [$d000], sp                                 ; $4342: $08 $00 $d0
	ld   [de], a                                     ; $4345: $12
	ld   [$da08], sp                                 ; $4346: $08 $08 $da
	ld   [bc], a                                     ; $4349: $02
	ld   [$d800], sp                                 ; $434a: $08 $00 $d8
	ld   [de], a                                     ; $434d: $12
	ld   [$de08], sp                                 ; $434e: $08 $08 $de
	ld   [bc], a                                     ; $4351: $02
	ld   [$dc00], sp                                 ; $4352: $08 $00 $dc
	ld   [de], a                                     ; $4355: $12
	ld   b, $08                                      ; $4356: $06 $08
	jp   c, $0602                                    ; $4358: $da $02 $06

	nop                                              ; $435b: $00
	ret  c                                           ; $435c: $d8

	ld   [de], a                                     ; $435d: $12
	ld   b, $08                                      ; $435e: $06 $08
	sub  $02                                         ; $4360: $d6 $02
	ld   b, $00                                      ; $4362: $06 $00
	call nc, $0912                                   ; $4364: $d4 $12 $09
	ld   [$02de], sp                                 ; $4367: $08 $de $02
	add  hl, bc                                      ; $436a: $09
	nop                                              ; $436b: $00
	call c, $0a12                                    ; $436c: $dc $12 $0a
	ld   [$02da], sp                                 ; $436f: $08 $da $02
	ld   a, [bc]                                     ; $4372: $0a
	nop                                              ; $4373: $00
	ret  c                                           ; $4374: $d8

	ld   [de], a                                     ; $4375: $12
	add  hl, bc                                      ; $4376: $09
	ld   [$02d6], sp                                 ; $4377: $08 $d6 $02
	add  hl, bc                                      ; $437a: $09
	nop                                              ; $437b: $00
	call nc, $f812                                   ; $437c: $d4 $12 $f8
	inc  b                                           ; $437f: $04
	db   $ec                                         ; $4380: $ec
	ld   [bc], a                                     ; $4381: $02
	jr   jr_030_4388                                 ; $4382: $18 $04

	ld   a, [$0802]                                  ; $4384: $fa $02 $08
	inc  c                                           ; $4387: $0c

jr_030_4388:
	xor  $02                                         ; $4388: $ee $02
	ld   [$eafc], sp                                 ; $438a: $08 $fc $ea
	ld   [de], a                                     ; $438d: $12
	add  hl, de                                      ; $438e: $19
	inc  b                                           ; $438f: $04
	ld   a, [$0802]                                  ; $4390: $fa $02 $08
	dec  c                                           ; $4393: $0d
	xor  $02                                         ; $4394: $ee $02
	ld   hl, sp+$04                                  ; $4396: $f8 $04
	db   $ec                                         ; $4398: $ec
	nop                                              ; $4399: $00
	ld   [$eafb], sp                                 ; $439a: $08 $fb $ea
	ld   [de], a                                     ; $439d: $12
	jr   jr_030_43a8                                 ; $439e: $18 $08

	rlca                                             ; $43a0: $07
	ld   [bc], a                                     ; $43a1: $02
	db   $10                                         ; $43a2: $10
	ld   [$0206], sp                                 ; $43a3: $08 $06 $02
	jr   jr_030_43a8                                 ; $43a6: $18 $00

jr_030_43a8:
	dec  b                                           ; $43a8: $05
	ld   [bc], a                                     ; $43a9: $02
	stop                                             ; $43aa: $10 $00
	inc  b                                           ; $43ac: $04
	ld   [de], a                                     ; $43ad: $12
	jr   jr_030_43b8                                 ; $43ae: $18 $08

	rlca                                             ; $43b0: $07
	ld   bc, $0810                                   ; $43b1: $01 $10 $08
	ld   b, $01                                      ; $43b4: $06 $01
	jr   jr_030_43b8                                 ; $43b6: $18 $00

jr_030_43b8:
	dec  b                                           ; $43b8: $05
	ld   bc, $0010                                   ; $43b9: $01 $10 $00
	inc  b                                           ; $43bc: $04
	ld   de, $0810                                   ; $43bd: $11 $10 $08
	rlca                                             ; $43c0: $07
	ld   b, d                                        ; $43c1: $42
	jr   jr_030_43cc                                 ; $43c2: $18 $08

	ld   b, $42                                      ; $43c4: $06 $42
	stop                                             ; $43c6: $10 $00
	dec  b                                           ; $43c8: $05
	ld   b, d                                        ; $43c9: $42
	jr   jr_030_43cc                                 ; $43ca: $18 $00

jr_030_43cc:
	inc  b                                           ; $43cc: $04
	ld   d, d                                        ; $43cd: $52
	db   $10                                         ; $43ce: $10
	ld   [$4107], sp                                 ; $43cf: $08 $07 $41
	jr   jr_030_43dc                                 ; $43d2: $18 $08

	ld   b, $41                                      ; $43d4: $06 $41
	stop                                             ; $43d6: $10 $00
	dec  b                                           ; $43d8: $05
	ld   b, c                                        ; $43d9: $41
	jr   jr_030_43dc                                 ; $43da: $18 $00

jr_030_43dc:
	inc  b                                           ; $43dc: $04
	ld   d, c                                        ; $43dd: $51
	jr   c, jr_030_43f0                              ; $43de: $38 $10

	inc  bc                                          ; $43e0: $03
	ld   hl, $1030                                   ; $43e1: $21 $30 $10
	ld   [bc], a                                     ; $43e4: $02
	dec  h                                           ; $43e5: $25
	jr   c, jr_030_43f0                              ; $43e6: $38 $08

	inc  bc                                          ; $43e8: $03
	ld   bc, $0830                                   ; $43e9: $01 $30 $08
	ld   [bc], a                                     ; $43ec: $02
	dec  b                                           ; $43ed: $05
	jr   z, jr_030_4400                              ; $43ee: $28 $10

jr_030_43f0:
	scf                                              ; $43f0: $37
	inc  b                                           ; $43f1: $04
	jr   nz, jr_030_4404                             ; $43f2: $20 $10

	ld   [hl], $04                                   ; $43f4: $36 $04
	jr   z, jr_030_4400                              ; $43f6: $28 $08

	dec  [hl]                                        ; $43f8: $35
	inc  b                                           ; $43f9: $04
	jr   nz, jr_030_4404                             ; $43fa: $20 $08

	inc  [hl]                                        ; $43fc: $34
	inc  b                                           ; $43fd: $04
	jr   jr_030_4410                                 ; $43fe: $18 $10

jr_030_4400:
	inc  sp                                          ; $4400: $33
	inc  b                                           ; $4401: $04
	db   $10                                         ; $4402: $10
	db   $10                                         ; $4403: $10

jr_030_4404:
	ld   [hl-], a                                    ; $4404: $32
	inc  b                                           ; $4405: $04
	jr   jr_030_4410                                 ; $4406: $18 $08

	ld   sp, $1004                                   ; $4408: $31 $04 $10
	ld   [$0430], sp                                 ; $440b: $08 $30 $04
	jr   z, jr_030_4420                              ; $440e: $28 $10

jr_030_4410:
	cpl                                              ; $4410: $2f
	inc  hl                                          ; $4411: $23
	jr   nz, jr_030_4424                             ; $4412: $20 $10

	ld   l, $23                                      ; $4414: $2e $23
	jr   z, jr_030_4420                              ; $4416: $28 $08

	cpl                                              ; $4418: $2f
	inc  bc                                          ; $4419: $03
	jr   nz, jr_030_4424                             ; $441a: $20 $08

	ld   l, $03                                      ; $441c: $2e $03
	jr   jr_030_4430                                 ; $441e: $18 $10

jr_030_4420:
	dec  l                                           ; $4420: $2d
	inc  hl                                          ; $4421: $23
	db   $10                                         ; $4422: $10
	db   $10                                         ; $4423: $10

jr_030_4424:
	inc  l                                           ; $4424: $2c
	inc  hl                                          ; $4425: $23
	jr   jr_030_4430                                 ; $4426: $18 $08

	dec  l                                           ; $4428: $2d
	inc  bc                                          ; $4429: $03
	db   $10                                         ; $442a: $10
	ld   [$132c], sp                                 ; $442b: $08 $2c $13
	jr   c, jr_030_4438                              ; $442e: $38 $08

jr_030_4430:
	inc  bc                                          ; $4430: $03
	ld   bc, $1038                                   ; $4431: $01 $38 $10
	inc  bc                                          ; $4434: $03
	ld   hl, $0830                                   ; $4435: $21 $30 $08

jr_030_4438:
	ld   [bc], a                                     ; $4438: $02
	dec  b                                           ; $4439: $05
	jr   nc, jr_030_444c                             ; $443a: $30 $10

	ld   [bc], a                                     ; $443c: $02
	dec  h                                           ; $443d: $25
	jr   z, jr_030_4450                              ; $443e: $28 $10

	ld   b, e                                        ; $4440: $43
	inc  b                                           ; $4441: $04
	jr   nz, jr_030_4454                             ; $4442: $20 $10

	ld   b, d                                        ; $4444: $42
	inc  b                                           ; $4445: $04
	jr   z, jr_030_4450                              ; $4446: $28 $08

	ld   b, c                                        ; $4448: $41
	inc  b                                           ; $4449: $04
	jr   nz, jr_030_4454                             ; $444a: $20 $08

jr_030_444c:
	ld   b, b                                        ; $444c: $40
	inc  b                                           ; $444d: $04
	jr   jr_030_4460                                 ; $444e: $18 $10

jr_030_4450:
	ccf                                              ; $4450: $3f
	inc  b                                           ; $4451: $04
	db   $10                                         ; $4452: $10
	db   $10                                         ; $4453: $10

jr_030_4454:
	ld   a, $04                                      ; $4454: $3e $04
	jr   jr_030_4460                                 ; $4456: $18 $08

	dec  a                                           ; $4458: $3d
	inc  b                                           ; $4459: $04
	db   $10                                         ; $445a: $10
	ld   [$043c], sp                                 ; $445b: $08 $3c $04
	jr   z, jr_030_4470                              ; $445e: $28 $10

jr_030_4460:
	dec  sp                                          ; $4460: $3b
	inc  hl                                          ; $4461: $23
	jr   nz, jr_030_4474                             ; $4462: $20 $10

	ld   a, [hl-]                                    ; $4464: $3a
	inc  hl                                          ; $4465: $23
	jr   z, jr_030_4470                              ; $4466: $28 $08

	dec  sp                                          ; $4468: $3b
	inc  bc                                          ; $4469: $03
	jr   nz, jr_030_4474                             ; $446a: $20 $08

	ld   a, [hl-]                                    ; $446c: $3a
	inc  bc                                          ; $446d: $03
	jr   jr_030_4480                                 ; $446e: $18 $10

jr_030_4470:
	add  hl, sp                                      ; $4470: $39
	inc  hl                                          ; $4471: $23
	db   $10                                         ; $4472: $10
	db   $10                                         ; $4473: $10

jr_030_4474:
	jr   c, jr_030_4499                              ; $4474: $38 $23

	jr   jr_030_4480                                 ; $4476: $18 $08

	add  hl, sp                                      ; $4478: $39
	inc  bc                                          ; $4479: $03
	db   $10                                         ; $447a: $10
	ld   [$1338], sp                                 ; $447b: $08 $38 $13
	jr   z, jr_030_4490                              ; $447e: $28 $10

jr_030_4480:
	rst  $28                                         ; $4480: $ef
	ld   [bc], a                                     ; $4481: $02
	jr   nz, jr_030_4494                             ; $4482: $20 $10

	xor  $02                                         ; $4484: $ee $02
	jr   z, jr_030_4498                              ; $4486: $28 $10

	db   $ed                                         ; $4488: $ed
	ld   b, $20                                      ; $4489: $06 $20
	db   $10                                         ; $448b: $10
	db   $ec                                         ; $448c: $ec
	ld   b, $38                                      ; $448d: $06 $38
	db   $10                                         ; $448f: $10

jr_030_4490:
	inc  bc                                          ; $4490: $03
	ld   hl, $1030                                   ; $4491: $21 $30 $10

jr_030_4494:
	ld   [bc], a                                     ; $4494: $02
	dec  h                                           ; $4495: $25
	jr   c, jr_030_44a0                              ; $4496: $38 $08

jr_030_4498:
	inc  bc                                          ; $4498: $03

jr_030_4499:
	ld   bc, $0830                                   ; $4499: $01 $30 $08
	ld   [bc], a                                     ; $449c: $02
	dec  b                                           ; $449d: $05
	jr   z, jr_030_44a8                              ; $449e: $28 $08

jr_030_44a0:
	ld   c, a                                        ; $44a0: $4f
	ld   [bc], a                                     ; $44a1: $02
	jr   nz, jr_030_44ac                             ; $44a2: $20 $08

	ld   c, [hl]                                     ; $44a4: $4e
	ld   [bc], a                                     ; $44a5: $02
	jr   jr_030_44b8                                 ; $44a6: $18 $10

jr_030_44a8:
	ld   c, l                                        ; $44a8: $4d
	ld   [bc], a                                     ; $44a9: $02
	db   $10                                         ; $44aa: $10
	db   $10                                         ; $44ab: $10

jr_030_44ac:
	ld   c, h                                        ; $44ac: $4c
	ld   [bc], a                                     ; $44ad: $02
	jr   jr_030_44b8                                 ; $44ae: $18 $08

	ld   c, e                                        ; $44b0: $4b
	ld   [bc], a                                     ; $44b1: $02
	db   $10                                         ; $44b2: $10
	ld   [$024a], sp                                 ; $44b3: $08 $4a $02
	jr   jr_030_44c8                                 ; $44b6: $18 $10

jr_030_44b8:
	ld   b, a                                        ; $44b8: $47
	ld   bc, $1010                                   ; $44b9: $01 $10 $10
	ld   b, [hl]                                     ; $44bc: $46
	ld   bc, $0818                                   ; $44bd: $01 $18 $08
	ld   b, l                                        ; $44c0: $45
	ld   bc, $0810                                   ; $44c1: $01 $10 $08
	ld   b, h                                        ; $44c4: $44
	ld   bc, $0828                                   ; $44c5: $01 $28 $08

jr_030_44c8:
	ld   c, c                                        ; $44c8: $49
	ld   b, $20                                      ; $44c9: $06 $20
	ld   [$1648], sp                                 ; $44cb: $08 $48 $16
	add  hl, de                                      ; $44ce: $19
	ld   de, $025b                                   ; $44cf: $11 $5b $02
	ld   de, $5a11                                   ; $44d2: $11 $11 $5a
	ld   [bc], a                                     ; $44d5: $02
	add  hl, de                                      ; $44d6: $19
	add  hl, bc                                      ; $44d7: $09
	ld   e, c                                        ; $44d8: $59
	ld   [bc], a                                     ; $44d9: $02
	ld   de, $5809                                   ; $44da: $11 $09 $58
	ld   [bc], a                                     ; $44dd: $02
	jr   c, jr_030_44e9                              ; $44de: $38 $09

	inc  bc                                          ; $44e0: $03
	ld   bc, $1138                                   ; $44e1: $01 $38 $11
	inc  bc                                          ; $44e4: $03
	ld   hl, $1130                                   ; $44e5: $21 $30 $11
	ld   [bc], a                                     ; $44e8: $02

jr_030_44e9:
	dec  h                                           ; $44e9: $25
	jr   nc, jr_030_44f5                             ; $44ea: $30 $09

	ld   [bc], a                                     ; $44ec: $02
	dec  b                                           ; $44ed: $05
	jr   z, jr_030_4501                              ; $44ee: $28 $11

	ld   e, a                                        ; $44f0: $5f
	ld   [bc], a                                     ; $44f1: $02
	jr   nz, @+$13                                   ; $44f2: $20 $11

	ld   e, [hl]                                     ; $44f4: $5e

jr_030_44f5:
	ld   [bc], a                                     ; $44f5: $02
	jr   z, jr_030_4501                              ; $44f6: $28 $09

	ld   e, l                                        ; $44f8: $5d
	ld   [bc], a                                     ; $44f9: $02
	jr   nz, @+$0b                                   ; $44fa: $20 $09

	ld   e, h                                        ; $44fc: $5c
	ld   [bc], a                                     ; $44fd: $02
	jr   z, @+$13                                    ; $44fe: $28 $11

	ld   d, a                                        ; $4500: $57

jr_030_4501:
	ld   b, $20                                      ; $4501: $06 $20
	ld   de, $0656                                   ; $4503: $11 $56 $06
	jr   z, @+$0b                                    ; $4506: $28 $09

	ld   d, l                                        ; $4508: $55
	ld   b, $20                                      ; $4509: $06 $20
	add  hl, bc                                      ; $450b: $09
	ld   d, h                                        ; $450c: $54
	ld   b, $18                                      ; $450d: $06 $18
	ld   de, $0153                                   ; $450f: $11 $53 $01
	db   $10                                         ; $4512: $10
	ld   de, $0152                                   ; $4513: $11 $52 $01
	jr   jr_030_4521                                 ; $4516: $18 $09

	ld   d, c                                        ; $4518: $51
	ld   bc, $0910                                   ; $4519: $01 $10 $09
	ld   d, b                                        ; $451c: $50
	ld   de, $0918                                   ; $451d: $11 $18 $09
	ld   c, e                                        ; $4520: $4b

jr_030_4521:
	ld   [bc], a                                     ; $4521: $02
	db   $10                                         ; $4522: $10
	add  hl, bc                                      ; $4523: $09
	ld   c, d                                        ; $4524: $4a
	ld   [bc], a                                     ; $4525: $02
	jr   jr_030_4539                                 ; $4526: $18 $11

	ld   c, l                                        ; $4528: $4d
	ld   [bc], a                                     ; $4529: $02
	db   $10                                         ; $452a: $10
	ld   de, $024c                                   ; $452b: $11 $4c $02
	jr   jr_030_4541                                 ; $452e: $18 $11

	ld   b, a                                        ; $4530: $47
	ld   bc, $1110                                   ; $4531: $01 $10 $11
	ld   b, [hl]                                     ; $4534: $46
	ld   bc, $0918                                   ; $4535: $01 $18 $09
	ld   b, l                                        ; $4538: $45

jr_030_4539:
	ld   bc, $0910                                   ; $4539: $01 $10 $09
	ld   b, h                                        ; $453c: $44
	ld   bc, $0938                                   ; $453d: $01 $38 $09
	inc  bc                                          ; $4540: $03

jr_030_4541:
	ld   bc, $1138                                   ; $4541: $01 $38 $11
	inc  bc                                          ; $4544: $03
	ld   hl, $1130                                   ; $4545: $21 $30 $11
	ld   [bc], a                                     ; $4548: $02
	dec  h                                           ; $4549: $25
	jr   nc, jr_030_4555                             ; $454a: $30 $09

	ld   [bc], a                                     ; $454c: $02
	dec  b                                           ; $454d: $05
	jr   z, jr_030_4561                              ; $454e: $28 $11

	ld   e, a                                        ; $4550: $5f
	ld   [bc], a                                     ; $4551: $02
	jr   nz, @+$13                                   ; $4552: $20 $11

	ld   e, [hl]                                     ; $4554: $5e

jr_030_4555:
	ld   [bc], a                                     ; $4555: $02
	jr   z, jr_030_4561                              ; $4556: $28 $09

	ld   e, l                                        ; $4558: $5d
	ld   [bc], a                                     ; $4559: $02
	jr   nz, @+$0b                                   ; $455a: $20 $09

	ld   e, h                                        ; $455c: $5c
	ld   [bc], a                                     ; $455d: $02
	jr   z, @+$13                                    ; $455e: $28 $11

	ld   d, a                                        ; $4560: $57

jr_030_4561:
	ld   b, $20                                      ; $4561: $06 $20
	ld   de, $0656                                   ; $4563: $11 $56 $06
	jr   z, @+$0b                                    ; $4566: $28 $09

	ld   d, l                                        ; $4568: $55
	ld   b, $20                                      ; $4569: $06 $20
	add  hl, bc                                      ; $456b: $09
	ld   d, h                                        ; $456c: $54
	ld   d, $38                                      ; $456d: $16 $38
	ld   [$0103], sp                                 ; $456f: $08 $03 $01
	jr   c, jr_030_4584                              ; $4572: $38 $10

	inc  bc                                          ; $4574: $03
	ld   hl, $1030                                   ; $4575: $21 $30 $10
	ld   [bc], a                                     ; $4578: $02
	dec  h                                           ; $4579: $25
	jr   nc, jr_030_4584                             ; $457a: $30 $08

	ld   [bc], a                                     ; $457c: $02
	dec  b                                           ; $457d: $05
	jr   z, jr_030_4590                              ; $457e: $28 $10

	ld   h, a                                        ; $4580: $67
	inc  b                                           ; $4581: $04
	jr   nz, jr_030_4594                             ; $4582: $20 $10

jr_030_4584:
	ld   h, [hl]                                     ; $4584: $66
	inc  b                                           ; $4585: $04
	jr   z, jr_030_4590                              ; $4586: $28 $08

	ld   h, l                                        ; $4588: $65
	inc  b                                           ; $4589: $04
	jr   nz, jr_030_4594                             ; $458a: $20 $08

	ld   h, h                                        ; $458c: $64
	inc  b                                           ; $458d: $04
	jr   jr_030_45a0                                 ; $458e: $18 $10

jr_030_4590:
	ld   h, e                                        ; $4590: $63
	ld   [bc], a                                     ; $4591: $02
	db   $10                                         ; $4592: $10
	db   $10                                         ; $4593: $10

jr_030_4594:
	ld   h, d                                        ; $4594: $62
	ld   [bc], a                                     ; $4595: $02
	jr   jr_030_45a0                                 ; $4596: $18 $08

	ld   h, c                                        ; $4598: $61
	ld   [bc], a                                     ; $4599: $02
	db   $10                                         ; $459a: $10
	ld   [$0260], sp                                 ; $459b: $08 $60 $02
	jr   z, jr_030_45b0                              ; $459e: $28 $10

jr_030_45a0:
	ld   l, a                                        ; $45a0: $6f
	ld   b, $20                                      ; $45a1: $06 $20
	db   $10                                         ; $45a3: $10
	ld   l, [hl]                                     ; $45a4: $6e
	ld   b, $28                                      ; $45a5: $06 $28
	ld   [$066d], sp                                 ; $45a7: $08 $6d $06
	jr   nz, jr_030_45b4                             ; $45aa: $20 $08

	ld   l, h                                        ; $45ac: $6c
	ld   b, $18                                      ; $45ad: $06 $18
	db   $10                                         ; $45af: $10

jr_030_45b0:
	ld   l, e                                        ; $45b0: $6b
	ld   b, $10                                      ; $45b1: $06 $10
	db   $10                                         ; $45b3: $10

jr_030_45b4:
	ld   l, d                                        ; $45b4: $6a
	ld   b, $18                                      ; $45b5: $06 $18
	ld   [$0669], sp                                 ; $45b7: $08 $69 $06
	db   $10                                         ; $45ba: $10
	ld   [$1668], sp                                 ; $45bb: $08 $68 $16
	jr   jr_030_45d0                                 ; $45be: $18 $10

	ld   [hl], e                                     ; $45c0: $73
	ld   [bc], a                                     ; $45c1: $02
	db   $10                                         ; $45c2: $10
	db   $10                                         ; $45c3: $10
	ld   [hl], d                                     ; $45c4: $72
	ld   [bc], a                                     ; $45c5: $02
	jr   jr_030_45d0                                 ; $45c6: $18 $08

	ld   [hl], c                                     ; $45c8: $71
	ld   [bc], a                                     ; $45c9: $02
	db   $10                                         ; $45ca: $10
	ld   [$0270], sp                                 ; $45cb: $08 $70 $02
	jr   jr_030_45e0                                 ; $45ce: $18 $10

jr_030_45d0:
	ld   [hl], a                                     ; $45d0: $77
	ld   b, $10                                      ; $45d1: $06 $10
	db   $10                                         ; $45d3: $10
	halt                                             ; $45d4: $76
	ld   b, $18                                      ; $45d5: $06 $18
	ld   [$0675], sp                                 ; $45d7: $08 $75 $06
	db   $10                                         ; $45da: $10
	ld   [$0674], sp                                 ; $45db: $08 $74 $06
	jr   c, jr_030_45e8                              ; $45de: $38 $08

jr_030_45e0:
	inc  bc                                          ; $45e0: $03
	ld   bc, $1038                                   ; $45e1: $01 $38 $10
	inc  bc                                          ; $45e4: $03
	ld   hl, $1030                                   ; $45e5: $21 $30 $10

jr_030_45e8:
	ld   [bc], a                                     ; $45e8: $02
	dec  h                                           ; $45e9: $25
	jr   nc, jr_030_45f4                             ; $45ea: $30 $08

	ld   [bc], a                                     ; $45ec: $02
	dec  b                                           ; $45ed: $05
	jr   z, jr_030_4600                              ; $45ee: $28 $10

	ld   h, a                                        ; $45f0: $67
	inc  b                                           ; $45f1: $04
	jr   nz, jr_030_4604                             ; $45f2: $20 $10

jr_030_45f4:
	ld   h, [hl]                                     ; $45f4: $66
	inc  b                                           ; $45f5: $04
	jr   z, jr_030_4600                              ; $45f6: $28 $08

	ld   h, l                                        ; $45f8: $65
	inc  b                                           ; $45f9: $04
	jr   nz, jr_030_4604                             ; $45fa: $20 $08

	ld   h, h                                        ; $45fc: $64
	inc  b                                           ; $45fd: $04
	jr   z, jr_030_4610                              ; $45fe: $28 $10

jr_030_4600:
	ld   l, a                                        ; $4600: $6f
	ld   b, $20                                      ; $4601: $06 $20
	db   $10                                         ; $4603: $10

jr_030_4604:
	ld   l, [hl]                                     ; $4604: $6e
	ld   b, $28                                      ; $4605: $06 $28
	ld   [$066d], sp                                 ; $4607: $08 $6d $06
	jr   nz, jr_030_4614                             ; $460a: $20 $08

	ld   l, h                                        ; $460c: $6c
	ld   d, $38                                      ; $460d: $16 $38
	db   $10                                         ; $460f: $10

jr_030_4610:
	inc  bc                                          ; $4610: $03
	ld   hl, $0838                                   ; $4611: $21 $38 $08

jr_030_4614:
	inc  bc                                          ; $4614: $03
	ld   bc, $1030                                   ; $4615: $01 $30 $10
	ld   [bc], a                                     ; $4618: $02
	dec  h                                           ; $4619: $25
	jr   nc, jr_030_4624                             ; $461a: $30 $08

	ld   [bc], a                                     ; $461c: $02
	dec  b                                           ; $461d: $05
	jr   z, jr_030_4630                              ; $461e: $28 $10

	rrca                                             ; $4620: $0f
	ld   [bc], a                                     ; $4621: $02
	jr   nz, jr_030_4634                             ; $4622: $20 $10

jr_030_4624:
	ld   c, $02                                      ; $4624: $0e $02
	jr   z, jr_030_4630                              ; $4626: $28 $08

	dec  c                                           ; $4628: $0d
	ld   [bc], a                                     ; $4629: $02
	jr   nz, jr_030_4634                             ; $462a: $20 $08

	inc  c                                           ; $462c: $0c
	ld   [bc], a                                     ; $462d: $02
	jr   jr_030_4640                                 ; $462e: $18 $10

jr_030_4630:
	dec  bc                                          ; $4630: $0b
	nop                                              ; $4631: $00
	db   $10                                         ; $4632: $10
	db   $10                                         ; $4633: $10

jr_030_4634:
	ld   a, [bc]                                     ; $4634: $0a
	nop                                              ; $4635: $00
	jr   jr_030_4640                                 ; $4636: $18 $08

	add  hl, bc                                      ; $4638: $09
	nop                                              ; $4639: $00
	db   $10                                         ; $463a: $10
	ld   [$0008], sp                                 ; $463b: $08 $08 $00
	jr   z, jr_030_4650                              ; $463e: $28 $10

jr_030_4640:
	rla                                              ; $4640: $17
	ld   bc, $1020                                   ; $4641: $01 $20 $10
	ld   d, $01                                      ; $4644: $16 $01
	jr   z, jr_030_4650                              ; $4646: $28 $08

	dec  d                                           ; $4648: $15
	ld   bc, $0820                                   ; $4649: $01 $20 $08
	inc  d                                           ; $464c: $14
	ld   bc, $1018                                   ; $464d: $01 $18 $10

jr_030_4650:
	inc  de                                          ; $4650: $13
	inc  bc                                          ; $4651: $03
	db   $10                                         ; $4652: $10
	db   $10                                         ; $4653: $10
	ld   [de], a                                     ; $4654: $12
	inc  bc                                          ; $4655: $03
	jr   jr_030_4660                                 ; $4656: $18 $08

	ld   de, $1003                                   ; $4658: $11 $03 $10
	ld   [$1310], sp                                 ; $465b: $08 $10 $13
	jr   @+$11                                       ; $465e: $18 $0f

jr_030_4660:
	dec  de                                          ; $4660: $1b
	nop                                              ; $4661: $00
	db   $10                                         ; $4662: $10
	rrca                                             ; $4663: $0f
	ld   a, [de]                                     ; $4664: $1a
	nop                                              ; $4665: $00
	jr   @+$09                                       ; $4666: $18 $07

	add  hl, de                                      ; $4668: $19
	nop                                              ; $4669: $00
	db   $10                                         ; $466a: $10
	rlca                                             ; $466b: $07
	jr   jr_030_466e                                 ; $466c: $18 $00

jr_030_466e:
	jr   z, @+$11                                    ; $466e: $28 $0f

	dec  e                                           ; $4670: $1d
	ld   [hl+], a                                    ; $4671: $22
	jr   nz, @+$11                                   ; $4672: $20 $0f

	inc  e                                           ; $4674: $1c
	ld   [hl+], a                                    ; $4675: $22
	jr   z, @+$09                                    ; $4676: $28 $07

	dec  e                                           ; $4678: $1d
	ld   [bc], a                                     ; $4679: $02
	jr   nz, @+$09                                   ; $467a: $20 $07

	inc  e                                           ; $467c: $1c
	ld   [bc], a                                     ; $467d: $02
	jr   c, @+$09                                    ; $467e: $38 $07

	inc  bc                                          ; $4680: $03
	ld   bc, $0f38                                   ; $4681: $01 $38 $0f
	inc  bc                                          ; $4684: $03
	ld   hl, $0f30                                   ; $4685: $21 $30 $0f
	ld   [bc], a                                     ; $4688: $02
	dec  h                                           ; $4689: $25
	jr   nc, @+$09                                   ; $468a: $30 $07

	ld   [bc], a                                     ; $468c: $02
	dec  b                                           ; $468d: $05
	jr   z, @+$11                                    ; $468e: $28 $0f

	inc  hl                                          ; $4690: $23
	ld   hl, $0f20                                   ; $4691: $21 $20 $0f
	ld   [hl+], a                                    ; $4694: $22
	ld   hl, $0728                                   ; $4695: $21 $28 $07
	inc  hl                                          ; $4698: $23
	ld   bc, $0720                                   ; $4699: $01 $20 $07
	ld   [hl+], a                                    ; $469c: $22
	ld   bc, $0f19                                   ; $469d: $01 $19 $0f
	ld   hl, $1103                                   ; $46a0: $21 $03 $11
	rrca                                             ; $46a3: $0f
	jr   nz, jr_030_46a9                             ; $46a4: $20 $03

	add  hl, de                                      ; $46a6: $19
	rlca                                             ; $46a7: $07
	rra                                              ; $46a8: $1f

jr_030_46a9:
	inc  bc                                          ; $46a9: $03
	ld   de, $1e07                                   ; $46aa: $11 $07 $1e
	inc  de                                          ; $46ad: $13
	jr   c, @+$09                                    ; $46ae: $38 $07

	inc  bc                                          ; $46b0: $03
	ld   bc, $0f38                                   ; $46b1: $01 $38 $0f
	inc  bc                                          ; $46b4: $03
	ld   hl, $0730                                   ; $46b5: $21 $30 $07
	ld   [bc], a                                     ; $46b8: $02
	dec  b                                           ; $46b9: $05
	jr   nc, @+$11                                   ; $46ba: $30 $0f

	ld   [bc], a                                     ; $46bc: $02
	dec  h                                           ; $46bd: $25
	jr   z, @+$09                                    ; $46be: $28 $07

	add  hl, hl                                      ; $46c0: $29
	ld   [bc], a                                     ; $46c1: $02
	jr   z, jr_030_46d3                              ; $46c2: $28 $0f

	add  hl, hl                                      ; $46c4: $29
	ld   [hl+], a                                    ; $46c5: $22
	jr   nz, @+$11                                   ; $46c6: $20 $0f

	jr   z, jr_030_46ec                              ; $46c8: $28 $22

	jr   nz, jr_030_46d3                             ; $46ca: $20 $07

	jr   z, jr_030_46d0                              ; $46cc: $28 $02

	jr   @+$11                                       ; $46ce: $18 $0f

jr_030_46d0:
	daa                                              ; $46d0: $27
	nop                                              ; $46d1: $00
	db   $10                                         ; $46d2: $10

jr_030_46d3:
	rrca                                             ; $46d3: $0f
	ld   h, $00                                      ; $46d4: $26 $00
	jr   @+$09                                       ; $46d6: $18 $07

	dec  h                                           ; $46d8: $25
	nop                                              ; $46d9: $00
	db   $10                                         ; $46da: $10
	rlca                                             ; $46db: $07
	inc  h                                           ; $46dc: $24
	nop                                              ; $46dd: $00
	jr   z, @+$09                                    ; $46de: $28 $07

	dec  hl                                          ; $46e0: $2b
	ld   bc, $0f28                                   ; $46e1: $01 $28 $0f
	dec  hl                                          ; $46e4: $2b
	ld   hl, $0f20                                   ; $46e5: $21 $20 $0f
	ld   a, [hl+]                                    ; $46e8: $2a
	ld   hl, $0720                                   ; $46e9: $21 $20 $07

jr_030_46ec:
	ld   a, [hl+]                                    ; $46ec: $2a
	ld   bc, $0f18                                   ; $46ed: $01 $18 $0f
	ld   hl, $1003                                   ; $46f0: $21 $03 $10
	rrca                                             ; $46f3: $0f
	jr   nz, jr_030_46f9                             ; $46f4: $20 $03

	jr   @+$09                                       ; $46f6: $18 $07

	rra                                              ; $46f8: $1f

jr_030_46f9:
	inc  bc                                          ; $46f9: $03
	db   $10                                         ; $46fa: $10
	rlca                                             ; $46fb: $07
	ld   e, $13                                      ; $46fc: $1e $13
	jr   c, jr_030_4708                              ; $46fe: $38 $08

	inc  bc                                          ; $4700: $03
	ld   bc, $1038                                   ; $4701: $01 $38 $10
	inc  bc                                          ; $4704: $03
	ld   hl, $1030                                   ; $4705: $21 $30 $10

jr_030_4708:
	ld   [bc], a                                     ; $4708: $02
	dec  h                                           ; $4709: $25
	jr   nc, jr_030_4714                             ; $470a: $30 $08

	ld   [bc], a                                     ; $470c: $02
	dec  b                                           ; $470d: $05
	jr   z, jr_030_4720                              ; $470e: $28 $10

	and  a                                           ; $4710: $a7
	ld   [bc], a                                     ; $4711: $02
	jr   nz, jr_030_4724                             ; $4712: $20 $10

jr_030_4714:
	and  [hl]                                        ; $4714: $a6
	ld   [bc], a                                     ; $4715: $02
	jr   z, jr_030_4720                              ; $4716: $28 $08

	and  l                                           ; $4718: $a5
	ld   [bc], a                                     ; $4719: $02
	jr   nz, jr_030_4724                             ; $471a: $20 $08

	and  h                                           ; $471c: $a4
	ld   [bc], a                                     ; $471d: $02
	jr   jr_030_4730                                 ; $471e: $18 $10

jr_030_4720:
	and  e                                           ; $4720: $a3
	ld   [bc], a                                     ; $4721: $02
	db   $10                                         ; $4722: $10
	db   $10                                         ; $4723: $10

jr_030_4724:
	and  d                                           ; $4724: $a2
	ld   [bc], a                                     ; $4725: $02
	jr   jr_030_4730                                 ; $4726: $18 $08

	and  c                                           ; $4728: $a1
	ld   [bc], a                                     ; $4729: $02
	db   $10                                         ; $472a: $10
	ld   [$02a0], sp                                 ; $472b: $08 $a0 $02
	jr   z, jr_030_4740                              ; $472e: $28 $10

jr_030_4730:
	sbc  a                                           ; $4730: $9f
	ld   b, $20                                      ; $4731: $06 $20
	db   $10                                         ; $4733: $10
	sbc  [hl]                                        ; $4734: $9e
	ld   b, $28                                      ; $4735: $06 $28
	ld   [$069d], sp                                 ; $4737: $08 $9d $06
	jr   nz, jr_030_4744                             ; $473a: $20 $08

	sbc  h                                           ; $473c: $9c
	ld   b, $18                                      ; $473d: $06 $18
	db   $10                                         ; $473f: $10

jr_030_4740:
	sbc  e                                           ; $4740: $9b
	ld   b, $10                                      ; $4741: $06 $10
	db   $10                                         ; $4743: $10

jr_030_4744:
	sbc  d                                           ; $4744: $9a
	ld   b, $18                                      ; $4745: $06 $18
	ld   [$0699], sp                                 ; $4747: $08 $99 $06
	db   $10                                         ; $474a: $10
	ld   [$1698], sp                                 ; $474b: $08 $98 $16
	jr   c, jr_030_4759                              ; $474e: $38 $09

	inc  bc                                          ; $4750: $03
	ld   bc, $1138                                   ; $4751: $01 $38 $11
	inc  bc                                          ; $4754: $03
	ld   hl, $1130                                   ; $4755: $21 $30 $11
	ld   [bc], a                                     ; $4758: $02

jr_030_4759:
	dec  h                                           ; $4759: $25
	jr   nc, jr_030_4765                             ; $475a: $30 $09

	ld   [bc], a                                     ; $475c: $02
	dec  b                                           ; $475d: $05
	jr   z, jr_030_4771                              ; $475e: $28 $11

	or   a                                           ; $4760: $b7
	ld   [bc], a                                     ; $4761: $02
	jr   nz, @+$13                                   ; $4762: $20 $11

	or   [hl]                                        ; $4764: $b6

jr_030_4765:
	ld   [bc], a                                     ; $4765: $02
	jr   z, jr_030_4771                              ; $4766: $28 $09

	or   l                                           ; $4768: $b5
	ld   [bc], a                                     ; $4769: $02
	jr   nz, @+$0b                                   ; $476a: $20 $09

	or   h                                           ; $476c: $b4
	ld   [bc], a                                     ; $476d: $02
	jr   jr_030_4781                                 ; $476e: $18 $11

	or   e                                           ; $4770: $b3

jr_030_4771:
	ld   [bc], a                                     ; $4771: $02
	db   $10                                         ; $4772: $10
	ld   de, $02b2                                   ; $4773: $11 $b2 $02
	jr   jr_030_4781                                 ; $4776: $18 $09

	or   c                                           ; $4778: $b1
	ld   [bc], a                                     ; $4779: $02
	db   $10                                         ; $477a: $10
	add  hl, bc                                      ; $477b: $09
	or   b                                           ; $477c: $b0
	ld   [bc], a                                     ; $477d: $02
	jr   z, @+$13                                    ; $477e: $28 $11

	xor  a                                           ; $4780: $af

jr_030_4781:
	ld   b, $20                                      ; $4781: $06 $20
	ld   de, $06ae                                   ; $4783: $11 $ae $06
	jr   z, @+$0b                                    ; $4786: $28 $09

	xor  l                                           ; $4788: $ad
	ld   b, $20                                      ; $4789: $06 $20
	add  hl, bc                                      ; $478b: $09
	xor  h                                           ; $478c: $ac
	ld   b, $18                                      ; $478d: $06 $18
	ld   de, $06ab                                   ; $478f: $11 $ab $06
	db   $10                                         ; $4792: $10
	ld   de, $06aa                                   ; $4793: $11 $aa $06
	jr   jr_030_47a1                                 ; $4796: $18 $09

	xor  c                                           ; $4798: $a9
	ld   b, $10                                      ; $4799: $06 $10
	add  hl, bc                                      ; $479b: $09
	xor  b                                           ; $479c: $a8
	ld   d, $38                                      ; $479d: $16 $38
	db   $10                                         ; $479f: $10
	inc  bc                                          ; $47a0: $03

jr_030_47a1:
	ld   hl, $0838                                   ; $47a1: $21 $38 $08
	inc  bc                                          ; $47a4: $03
	ld   bc, $1030                                   ; $47a5: $01 $30 $10
	ld   [bc], a                                     ; $47a8: $02
	dec  h                                           ; $47a9: $25
	jr   nc, jr_030_47b4                             ; $47aa: $30 $08

	ld   [bc], a                                     ; $47ac: $02
	dec  b                                           ; $47ad: $05
	jr   z, jr_030_47c0                              ; $47ae: $28 $10

	add  a                                           ; $47b0: $87
	ld   [bc], a                                     ; $47b1: $02
	jr   nz, jr_030_47c4                             ; $47b2: $20 $10

jr_030_47b4:
	add  [hl]                                        ; $47b4: $86
	ld   [bc], a                                     ; $47b5: $02
	jr   z, jr_030_47c0                              ; $47b6: $28 $08

	add  l                                           ; $47b8: $85
	ld   [bc], a                                     ; $47b9: $02
	jr   nz, jr_030_47c4                             ; $47ba: $20 $08

	add  h                                           ; $47bc: $84
	ld   [bc], a                                     ; $47bd: $02
	jr   jr_030_47d0                                 ; $47be: $18 $10

jr_030_47c0:
	add  e                                           ; $47c0: $83
	ld   [bc], a                                     ; $47c1: $02
	db   $10                                         ; $47c2: $10
	db   $10                                         ; $47c3: $10

jr_030_47c4:
	add  d                                           ; $47c4: $82
	ld   [bc], a                                     ; $47c5: $02
	jr   jr_030_47d0                                 ; $47c6: $18 $08

	add  c                                           ; $47c8: $81
	ld   [bc], a                                     ; $47c9: $02
	db   $10                                         ; $47ca: $10
	ld   [$0280], sp                                 ; $47cb: $08 $80 $02
	jr   z, jr_030_47e0                              ; $47ce: $28 $10

jr_030_47d0:
	ld   a, a                                        ; $47d0: $7f
	dec  b                                           ; $47d1: $05
	jr   nz, jr_030_47e4                             ; $47d2: $20 $10

	ld   a, [hl]                                     ; $47d4: $7e
	dec  b                                           ; $47d5: $05
	jr   z, jr_030_47e0                              ; $47d6: $28 $08

	ld   a, l                                        ; $47d8: $7d
	dec  b                                           ; $47d9: $05
	jr   nz, jr_030_47e4                             ; $47da: $20 $08

	ld   a, h                                        ; $47dc: $7c
	dec  b                                           ; $47dd: $05
	jr   jr_030_47f0                                 ; $47de: $18 $10

jr_030_47e0:
	ld   a, e                                        ; $47e0: $7b
	dec  b                                           ; $47e1: $05
	db   $10                                         ; $47e2: $10
	db   $10                                         ; $47e3: $10

jr_030_47e4:
	ld   a, d                                        ; $47e4: $7a
	dec  b                                           ; $47e5: $05
	jr   jr_030_47f0                                 ; $47e6: $18 $08

	ld   a, c                                        ; $47e8: $79
	dec  b                                           ; $47e9: $05
	db   $10                                         ; $47ea: $10
	ld   [$1578], sp                                 ; $47eb: $08 $78 $15
	add  hl, hl                                      ; $47ee: $29
	db   $10                                         ; $47ef: $10

jr_030_47f0:
	add  a                                           ; $47f0: $87
	ld   [bc], a                                     ; $47f1: $02
	ld   hl, $8610                                   ; $47f2: $21 $10 $86
	ld   [bc], a                                     ; $47f5: $02
	add  hl, hl                                      ; $47f6: $29
	ld   [$0285], sp                                 ; $47f7: $08 $85 $02
	ld   hl, $8408                                   ; $47fa: $21 $08 $84
	ld   [bc], a                                     ; $47fd: $02
	add  hl, de                                      ; $47fe: $19
	db   $10                                         ; $47ff: $10
	add  e                                           ; $4800: $83
	ld   [bc], a                                     ; $4801: $02
	ld   de, $8210                                   ; $4802: $11 $10 $82
	ld   [bc], a                                     ; $4805: $02
	add  hl, de                                      ; $4806: $19
	ld   [$0281], sp                                 ; $4807: $08 $81 $02
	ld   de, $8008                                   ; $480a: $11 $08 $80
	ld   [bc], a                                     ; $480d: $02
	jr   z, jr_030_4820                              ; $480e: $28 $10

	adc  e                                           ; $4810: $8b
	dec  b                                           ; $4811: $05
	jr   nz, jr_030_4824                             ; $4812: $20 $10

	adc  d                                           ; $4814: $8a
	dec  b                                           ; $4815: $05
	jr   z, jr_030_4820                              ; $4816: $28 $08

	adc  c                                           ; $4818: $89
	dec  b                                           ; $4819: $05
	jr   nz, jr_030_4824                             ; $481a: $20 $08

	adc  b                                           ; $481c: $88
	dec  b                                           ; $481d: $05
	jr   c, jr_030_4830                              ; $481e: $38 $10

jr_030_4820:
	inc  bc                                          ; $4820: $03
	ld   hl, $0838                                   ; $4821: $21 $38 $08

jr_030_4824:
	inc  bc                                          ; $4824: $03
	ld   bc, $1030                                   ; $4825: $01 $30 $10
	ld   [bc], a                                     ; $4828: $02
	dec  h                                           ; $4829: $25
	jr   nc, @+$0a                                   ; $482a: $30 $08

	ld   [bc], a                                     ; $482c: $02
	dec  b                                           ; $482d: $05
	add  hl, de                                      ; $482e: $19
	db   $10                                         ; $482f: $10

jr_030_4830:
	ld   a, e                                        ; $4830: $7b
	dec  b                                           ; $4831: $05
	ld   de, $7a10                                   ; $4832: $11 $10 $7a
	dec  b                                           ; $4835: $05
	add  hl, de                                      ; $4836: $19
	ld   [$0579], sp                                 ; $4837: $08 $79 $05
	ld   de, $7808                                   ; $483a: $11 $08 $78
	dec  d                                           ; $483d: $15
	jr   c, @+$0d                                    ; $483e: $38 $0b

	inc  bc                                          ; $4840: $03
	ld   bc, $1338                                   ; $4841: $01 $38 $13
	inc  bc                                          ; $4844: $03
	ld   hl, $1330                                   ; $4845: $21 $30 $13
	ld   [bc], a                                     ; $4848: $02
	dec  h                                           ; $4849: $25
	jr   nc, @+$0d                                   ; $484a: $30 $0b

	ld   [bc], a                                     ; $484c: $02
	dec  b                                           ; $484d: $05
	jr   z, jr_030_485a                              ; $484e: $28 $0a

	add  a                                           ; $4850: $87
	ld   [bc], a                                     ; $4851: $02
	jr   nz, jr_030_485e                             ; $4852: $20 $0a

	add  [hl]                                        ; $4854: $86
	ld   [bc], a                                     ; $4855: $02
	jr   @+$15                                       ; $4856: $18 $13

	sub  a                                           ; $4858: $97
	ld   [bc], a                                     ; $4859: $02

jr_030_485a:
	db   $10                                         ; $485a: $10
	inc  de                                          ; $485b: $13
	sub  [hl]                                        ; $485c: $96
	ld   [bc], a                                     ; $485d: $02

jr_030_485e:
	jr   @+$0d                                       ; $485e: $18 $0b

	sub  l                                           ; $4860: $95
	ld   [bc], a                                     ; $4861: $02
	db   $10                                         ; $4862: $10
	dec  bc                                          ; $4863: $0b
	sub  h                                           ; $4864: $94
	ld   [bc], a                                     ; $4865: $02
	jr   z, jr_030_487b                              ; $4866: $28 $13

	sub  e                                           ; $4868: $93
	dec  b                                           ; $4869: $05
	jr   nz, @+$15                                   ; $486a: $20 $13

	sub  d                                           ; $486c: $92
	dec  b                                           ; $486d: $05
	jr   z, jr_030_487b                              ; $486e: $28 $0b

	sub  c                                           ; $4870: $91
	dec  b                                           ; $4871: $05
	jr   nz, @+$0d                                   ; $4872: $20 $0b

	sub  b                                           ; $4874: $90
	dec  b                                           ; $4875: $05
	jr   @+$15                                       ; $4876: $18 $13

	adc  a                                           ; $4878: $8f
	dec  b                                           ; $4879: $05
	db   $10                                         ; $487a: $10

jr_030_487b:
	inc  de                                          ; $487b: $13
	adc  [hl]                                        ; $487c: $8e
	dec  b                                           ; $487d: $05
	jr   @+$0d                                       ; $487e: $18 $0b

	adc  l                                           ; $4880: $8d
	dec  b                                           ; $4881: $05
	db   $10                                         ; $4882: $10
	dec  bc                                          ; $4883: $0b
	adc  h                                           ; $4884: $8c
	dec  d                                           ; $4885: $15
	jr   z, jr_030_4898                              ; $4886: $28 $10

	push de                                          ; $4888: $d5
	rlca                                             ; $4889: $07
	jr   nz, jr_030_489c                             ; $488a: $20 $10

	call nc, $2807                                   ; $488c: $d4 $07 $28
	ld   [$07d3], sp                                 ; $488f: $08 $d3 $07
	jr   nz, jr_030_489c                             ; $4892: $20 $08

	jp   nc, $1807                                   ; $4894: $d2 $07 $18

	db   $10                                         ; $4897: $10

jr_030_4898:
	pop  de                                          ; $4898: $d1
	rlca                                             ; $4899: $07
	db   $10                                         ; $489a: $10
	db   $10                                         ; $489b: $10

jr_030_489c:
	ret  nc                                          ; $489c: $d0

	rlca                                             ; $489d: $07
	jr   jr_030_48a8                                 ; $489e: $18 $08

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $48a0: $cf
	rlca                                             ; $48a1: $07
	db   $10                                         ; $48a2: $10
	ld   [$17ce], sp                                 ; $48a3: $08 $ce $17
	jr   z, jr_030_48b8                              ; $48a6: $28 $10

jr_030_48a8:
	pop  af                                          ; $48a8: $f1
	rlca                                             ; $48a9: $07
	jr   nz, jr_030_48bc                             ; $48aa: $20 $10

	ldh  a, [rTAC]                                   ; $48ac: $f0 $07
	jr   z, jr_030_48b8                              ; $48ae: $28 $08

	call $2007                                       ; $48b0: $cd $07 $20
	ld   [$07cc], sp                                 ; $48b3: $08 $cc $07
	jr   jr_030_48c8                                 ; $48b6: $18 $10

jr_030_48b8:
	rlc  a                                           ; $48b8: $cb $07
	db   $10                                         ; $48ba: $10
	db   $10                                         ; $48bb: $10

jr_030_48bc:
	jp   z, $1807                                    ; $48bc: $ca $07 $18

	ld   [$07c9], sp                                 ; $48bf: $08 $c9 $07
	db   $10                                         ; $48c2: $10
	ld   [$17c8], sp                                 ; $48c3: $08 $c8 $17
	jr   z, jr_030_48d8                              ; $48c6: $28 $10

jr_030_48c8:
	rst  ToBoot                                         ; $48c8: $c7
	rlca                                             ; $48c9: $07
	jr   nz, jr_030_48dc                             ; $48ca: $20 $10

	add  $07                                         ; $48cc: $c6 $07
	jr   z, jr_030_48d8                              ; $48ce: $28 $08

	push bc                                          ; $48d0: $c5
	rlca                                             ; $48d1: $07
	jr   nz, jr_030_48dc                             ; $48d2: $20 $08

	call nz, $1807                                   ; $48d4: $c4 $07 $18
	db   $10                                         ; $48d7: $10

jr_030_48d8:
	jp   $1007                                       ; $48d8: $c3 $07 $10


	db   $10                                         ; $48db: $10

jr_030_48dc:
	jp   nz, $1807                                   ; $48dc: $c2 $07 $18

	ld   [$07c1], sp                                 ; $48df: $08 $c1 $07
	db   $10                                         ; $48e2: $10
	ld   [$17c0], sp                                 ; $48e3: $08 $c0 $17
	jr   z, jr_030_48f8                              ; $48e6: $28 $10

	cp   a                                           ; $48e8: $bf
	rlca                                             ; $48e9: $07
	jr   nz, jr_030_48fc                             ; $48ea: $20 $10

	cp   [hl]                                        ; $48ec: $be
	rlca                                             ; $48ed: $07
	jr   z, jr_030_48f8                              ; $48ee: $28 $08

	cp   l                                           ; $48f0: $bd
	rlca                                             ; $48f1: $07
	jr   nz, jr_030_48fc                             ; $48f2: $20 $08

	cp   h                                           ; $48f4: $bc
	rlca                                             ; $48f5: $07
	jr   jr_030_4908                                 ; $48f6: $18 $10

jr_030_48f8:
	cp   e                                           ; $48f8: $bb
	rlca                                             ; $48f9: $07
	db   $10                                         ; $48fa: $10
	db   $10                                         ; $48fb: $10

jr_030_48fc:
	cp   d                                           ; $48fc: $ba
	rlca                                             ; $48fd: $07
	jr   jr_030_4908                                 ; $48fe: $18 $08

	cp   c                                           ; $4900: $b9
	rlca                                             ; $4901: $07
	db   $10                                         ; $4902: $10
	ld   [$17b8], sp                                 ; $4903: $08 $b8 $17
	jr   z, jr_030_4918                              ; $4906: $28 $10

jr_030_4908:
	push hl                                          ; $4908: $e5
	rlca                                             ; $4909: $07
	jr   nz, jr_030_491c                             ; $490a: $20 $10

	db   $e4                                         ; $490c: $e4
	rlca                                             ; $490d: $07
	jr   z, jr_030_4918                              ; $490e: $28 $08

	db   $e3                                         ; $4910: $e3
	rlca                                             ; $4911: $07
	jr   nz, jr_030_491c                             ; $4912: $20 $08

	ldh  [c], a                                      ; $4914: $e2
	rlca                                             ; $4915: $07
	jr   jr_030_4928                                 ; $4916: $18 $10

jr_030_4918:
	pop  hl                                          ; $4918: $e1
	rlca                                             ; $4919: $07
	db   $10                                         ; $491a: $10
	db   $10                                         ; $491b: $10

jr_030_491c:
	ldh  [rTAC], a                                   ; $491c: $e0 $07
	jr   jr_030_4928                                 ; $491e: $18 $08

	rst  JumpTable                                         ; $4920: $df
	rlca                                             ; $4921: $07
	db   $10                                         ; $4922: $10
	ld   [$17de], sp                                 ; $4923: $08 $de $17
	jr   z, jr_030_4938                              ; $4926: $28 $10

jr_030_4928:
	db   $dd                                         ; $4928: $dd
	rlca                                             ; $4929: $07
	jr   nz, jr_030_493c                             ; $492a: $20 $10

	call c, $2807                                    ; $492c: $dc $07 $28
	ld   [$07db], sp                                 ; $492f: $08 $db $07
	jr   nz, jr_030_493c                             ; $4932: $20 $08

	jp   c, $1807                                    ; $4934: $da $07 $18

	db   $10                                         ; $4937: $10

jr_030_4938:
	reti                                             ; $4938: $d9


	rlca                                             ; $4939: $07
	db   $10                                         ; $493a: $10
	db   $10                                         ; $493b: $10

jr_030_493c:
	ret  c                                           ; $493c: $d8

	rlca                                             ; $493d: $07
	jr   jr_030_4948                                 ; $493e: $18 $08

	rst  $10                                         ; $4940: $d7
	rlca                                             ; $4941: $07
	db   $10                                         ; $4942: $10
	ld   [$17d6], sp                                 ; $4943: $08 $d6 $17
	ld   d, $08                                      ; $4946: $16 $08

jr_030_4948:
	db   $eb                                         ; $4948: $eb
	ld   [bc], a                                     ; $4949: $02
	ld   c, $08                                      ; $494a: $0e $08
	ld   [$3802], a                                  ; $494c: $ea $02 $38
	add  hl, bc                                      ; $494f: $09
	inc  bc                                          ; $4950: $03
	ld   bc, $1138                                   ; $4951: $01 $38 $11
	inc  bc                                          ; $4954: $03
	ld   hl, $1130                                   ; $4955: $21 $30 $11
	ld   [bc], a                                     ; $4958: $02
	dec  h                                           ; $4959: $25
	jr   nc, jr_030_4965                             ; $495a: $30 $09

	ld   [bc], a                                     ; $495c: $02
	dec  b                                           ; $495d: $05
	jr   z, jr_030_4971                              ; $495e: $28 $11

	or   a                                           ; $4960: $b7
	ld   [bc], a                                     ; $4961: $02
	jr   nz, @+$13                                   ; $4962: $20 $11

	or   [hl]                                        ; $4964: $b6

jr_030_4965:
	ld   [bc], a                                     ; $4965: $02
	jr   z, jr_030_4971                              ; $4966: $28 $09

	or   l                                           ; $4968: $b5
	ld   [bc], a                                     ; $4969: $02
	jr   nz, @+$0b                                   ; $496a: $20 $09

	or   h                                           ; $496c: $b4
	ld   [bc], a                                     ; $496d: $02
	jr   jr_030_4981                                 ; $496e: $18 $11

	or   e                                           ; $4970: $b3

jr_030_4971:
	ld   [bc], a                                     ; $4971: $02
	db   $10                                         ; $4972: $10
	ld   de, $02b2                                   ; $4973: $11 $b2 $02
	jr   jr_030_4981                                 ; $4976: $18 $09

	or   c                                           ; $4978: $b1
	ld   [bc], a                                     ; $4979: $02
	db   $10                                         ; $497a: $10
	add  hl, bc                                      ; $497b: $09
	or   b                                           ; $497c: $b0
	ld   [bc], a                                     ; $497d: $02
	jr   z, @+$13                                    ; $497e: $28 $11

	xor  a                                           ; $4980: $af

jr_030_4981:
	ld   b, $20                                      ; $4981: $06 $20
	ld   de, $06ae                                   ; $4983: $11 $ae $06
	jr   z, @+$0b                                    ; $4986: $28 $09

	xor  l                                           ; $4988: $ad
	ld   b, $20                                      ; $4989: $06 $20
	add  hl, bc                                      ; $498b: $09
	xor  h                                           ; $498c: $ac
	ld   b, $18                                      ; $498d: $06 $18
	ld   de, $06ab                                   ; $498f: $11 $ab $06
	db   $10                                         ; $4992: $10
	ld   de, $06aa                                   ; $4993: $11 $aa $06
	jr   @+$0b                                       ; $4996: $18 $09

	xor  c                                           ; $4998: $a9
	ld   b, $10                                      ; $4999: $06 $10
	add  hl, bc                                      ; $499b: $09
	xor  b                                           ; $499c: $a8
	ld   d, $16                                      ; $499d: $16 $16
	ld   [$02e9], sp                                 ; $499f: $08 $e9 $02
	ld   c, $08                                      ; $49a2: $0e $08
	add  sp, $02                                     ; $49a4: $e8 $02
	jr   c, jr_030_49b1                              ; $49a6: $38 $09

	inc  bc                                          ; $49a8: $03
	ld   bc, $1138                                   ; $49a9: $01 $38 $11
	inc  bc                                          ; $49ac: $03
	ld   hl, $1130                                   ; $49ad: $21 $30 $11
	ld   [bc], a                                     ; $49b0: $02

jr_030_49b1:
	dec  h                                           ; $49b1: $25
	jr   nc, jr_030_49bd                             ; $49b2: $30 $09

	ld   [bc], a                                     ; $49b4: $02
	dec  b                                           ; $49b5: $05
	jr   z, jr_030_49c9                              ; $49b6: $28 $11

	or   a                                           ; $49b8: $b7
	ld   [bc], a                                     ; $49b9: $02
	jr   nz, @+$13                                   ; $49ba: $20 $11

	or   [hl]                                        ; $49bc: $b6

jr_030_49bd:
	ld   [bc], a                                     ; $49bd: $02
	jr   z, jr_030_49c9                              ; $49be: $28 $09

	or   l                                           ; $49c0: $b5
	ld   [bc], a                                     ; $49c1: $02
	jr   nz, @+$0b                                   ; $49c2: $20 $09

	or   h                                           ; $49c4: $b4
	ld   [bc], a                                     ; $49c5: $02
	jr   jr_030_49d9                                 ; $49c6: $18 $11

	or   e                                           ; $49c8: $b3

jr_030_49c9:
	ld   [bc], a                                     ; $49c9: $02
	db   $10                                         ; $49ca: $10
	ld   de, $02b2                                   ; $49cb: $11 $b2 $02
	jr   jr_030_49d9                                 ; $49ce: $18 $09

	or   c                                           ; $49d0: $b1
	ld   [bc], a                                     ; $49d1: $02
	db   $10                                         ; $49d2: $10
	add  hl, bc                                      ; $49d3: $09
	or   b                                           ; $49d4: $b0
	ld   [bc], a                                     ; $49d5: $02
	jr   z, @+$13                                    ; $49d6: $28 $11

	xor  a                                           ; $49d8: $af

jr_030_49d9:
	ld   b, $20                                      ; $49d9: $06 $20
	ld   de, $06ae                                   ; $49db: $11 $ae $06
	jr   z, @+$0b                                    ; $49de: $28 $09

	xor  l                                           ; $49e0: $ad
	ld   b, $20                                      ; $49e1: $06 $20
	add  hl, bc                                      ; $49e3: $09
	xor  h                                           ; $49e4: $ac
	ld   b, $18                                      ; $49e5: $06 $18
	ld   de, $06ab                                   ; $49e7: $11 $ab $06
	db   $10                                         ; $49ea: $10
	ld   de, $06aa                                   ; $49eb: $11 $aa $06

jr_030_49ee:
	jr   @+$0b                                       ; $49ee: $18 $09

	xor  c                                           ; $49f0: $a9
	ld   b, $10                                      ; $49f1: $06 $10
	add  hl, bc                                      ; $49f3: $09

jr_030_49f4:
	xor  b                                           ; $49f4: $a8
	ld   d, $16                                      ; $49f5: $16 $16
	ld   [$02e7], sp                                 ; $49f7: $08 $e7 $02
	ld   c, $08                                      ; $49fa: $0e $08
	and  $02                                         ; $49fc: $e6 $02
	jr   c, jr_030_4a09                              ; $49fe: $38 $09

	inc  bc                                          ; $4a00: $03
	ld   bc, $1138                                   ; $4a01: $01 $38 $11
	inc  bc                                          ; $4a04: $03
	ld   hl, $1130                                   ; $4a05: $21 $30 $11
	ld   [bc], a                                     ; $4a08: $02

jr_030_4a09:
	dec  h                                           ; $4a09: $25
	jr   nc, jr_030_4a15                             ; $4a0a: $30 $09

	ld   [bc], a                                     ; $4a0c: $02
	dec  b                                           ; $4a0d: $05
	jr   z, jr_030_4a21                              ; $4a0e: $28 $11

	or   a                                           ; $4a10: $b7
	ld   [bc], a                                     ; $4a11: $02
	jr   nz, @+$13                                   ; $4a12: $20 $11

	or   [hl]                                        ; $4a14: $b6

jr_030_4a15:
	ld   [bc], a                                     ; $4a15: $02
	jr   z, jr_030_4a21                              ; $4a16: $28 $09

	or   l                                           ; $4a18: $b5
	ld   [bc], a                                     ; $4a19: $02
	jr   nz, @+$0b                                   ; $4a1a: $20 $09

	or   h                                           ; $4a1c: $b4
	ld   [bc], a                                     ; $4a1d: $02
	jr   jr_030_4a31                                 ; $4a1e: $18 $11

	or   e                                           ; $4a20: $b3

jr_030_4a21:
	ld   [bc], a                                     ; $4a21: $02
	db   $10                                         ; $4a22: $10
	ld   de, $02b2                                   ; $4a23: $11 $b2 $02
	jr   jr_030_4a31                                 ; $4a26: $18 $09

	or   c                                           ; $4a28: $b1
	ld   [bc], a                                     ; $4a29: $02
	db   $10                                         ; $4a2a: $10
	add  hl, bc                                      ; $4a2b: $09
	or   b                                           ; $4a2c: $b0
	ld   [bc], a                                     ; $4a2d: $02
	jr   z, @+$13                                    ; $4a2e: $28 $11

	xor  a                                           ; $4a30: $af

jr_030_4a31:
	ld   b, $20                                      ; $4a31: $06 $20
	ld   de, $06ae                                   ; $4a33: $11 $ae $06
	jr   z, @+$0b                                    ; $4a36: $28 $09

	xor  l                                           ; $4a38: $ad
	ld   b, $20                                      ; $4a39: $06 $20
	add  hl, bc                                      ; $4a3b: $09
	xor  h                                           ; $4a3c: $ac
	ld   b, $18                                      ; $4a3d: $06 $18
	ld   de, $06ab                                   ; $4a3f: $11 $ab $06
	db   $10                                         ; $4a42: $10
	ld   de, $06aa                                   ; $4a43: $11 $aa $06
	jr   jr_030_4a51                                 ; $4a46: $18 $09

	xor  c                                           ; $4a48: $a9
	ld   b, $10                                      ; $4a49: $06 $10
	add  hl, bc                                      ; $4a4b: $09
	xor  b                                           ; $4a4c: $a8
	ld   d, $10                                      ; $4a4d: $16 $10
	jr   z, @-$67                                    ; $4a4f: $28 $97

jr_030_4a51:
	nop                                              ; $4a51: $00
	ld   [$9628], sp                                 ; $4a52: $08 $28 $96
	nop                                              ; $4a55: $00
	db   $10                                         ; $4a56: $10
	jr   nz, jr_030_49ee                             ; $4a57: $20 $95

	nop                                              ; $4a59: $00

jr_030_4a5a:
	ld   [$9420], sp                                 ; $4a5a: $08 $20 $94

jr_030_4a5d:
	nop                                              ; $4a5d: $00
	db   $10                                         ; $4a5e: $10
	jr   jr_030_49f4                                 ; $4a5f: $18 $93

	nop                                              ; $4a61: $00
	ld   [$9218], sp                                 ; $4a62: $08 $18 $92
	nop                                              ; $4a65: $00
	db   $10                                         ; $4a66: $10
	db   $10                                         ; $4a67: $10
	sub  c                                           ; $4a68: $91
	nop                                              ; $4a69: $00
	ld   [$9010], sp                                 ; $4a6a: $08 $10 $90
	nop                                              ; $4a6d: $00
	db   $10                                         ; $4a6e: $10
	ld   [$008f], sp                                 ; $4a6f: $08 $8f $00
	ld   [$8e08], sp                                 ; $4a72: $08 $08 $8e
	nop                                              ; $4a75: $00
	stop                                             ; $4a76: $10 $00
	adc  l                                           ; $4a78: $8d
	nop                                              ; $4a79: $00
	ld   [$8c00], sp                                 ; $4a7a: $08 $00 $8c
	nop                                              ; $4a7d: $00
	db   $10                                         ; $4a7e: $10
	ld   hl, sp-$75                                  ; $4a7f: $f8 $8b
	nop                                              ; $4a81: $00
	ld   [$8af8], sp                                 ; $4a82: $08 $f8 $8a
	nop                                              ; $4a85: $00
	db   $10                                         ; $4a86: $10
	ldh  a, [$89]                                    ; $4a87: $f0 $89
	nop                                              ; $4a89: $00
	ld   [$88f0], sp                                 ; $4a8a: $08 $f0 $88
	nop                                              ; $4a8d: $00
	db   $10                                         ; $4a8e: $10
	add  sp, -$79                                    ; $4a8f: $e8 $87
	nop                                              ; $4a91: $00
	ld   [$86e8], sp                                 ; $4a92: $08 $e8 $86
	db   $10                                         ; $4a95: $10
	db   $10                                         ; $4a96: $10
	ld   d, $a1                                      ; $4a97: $16 $a1
	jr   nz, @+$0a                                   ; $4a99: $20 $08

	ld   d, $a0                                      ; $4a9b: $16 $a0
	jr   nz, jr_030_4aaf                             ; $4a9d: $20 $10

	ldh  a, [c]                                      ; $4a9f: $f2
	and  c                                           ; $4aa0: $a1
	nop                                              ; $4aa1: $00
	ld   [$a0f2], sp                                 ; $4aa2: $08 $f2 $a0
	db   $10                                         ; $4aa5: $10
	db   $10                                         ; $4aa6: $10
	rla                                              ; $4aa7: $17
	and  c                                           ; $4aa8: $a1
	jr   nz, @+$0a                                   ; $4aa9: $20 $08

	rla                                              ; $4aab: $17
	and  b                                           ; $4aac: $a0
	jr   nz, jr_030_4abf                             ; $4aad: $20 $10

jr_030_4aaf:
	pop  af                                          ; $4aaf: $f1
	and  c                                           ; $4ab0: $a1
	nop                                              ; $4ab1: $00
	ld   [$a0f1], sp                                 ; $4ab2: $08 $f1 $a0
	db   $10                                         ; $4ab5: $10
	db   $10                                         ; $4ab6: $10
	jr   jr_030_4a5a                                 ; $4ab7: $18 $a1

	jr   nz, @+$0a                                   ; $4ab9: $20 $08

	jr   jr_030_4a5d                                 ; $4abb: $18 $a0

	jr   nz, jr_030_4acf                             ; $4abd: $20 $10

jr_030_4abf:
	ldh  a, [hScriptOpcodeParams+1]                                    ; $4abf: $f0 $a1
	nop                                              ; $4ac1: $00
	ld   [$a0f0], sp                                 ; $4ac2: $08 $f0 $a0
	db   $10                                         ; $4ac5: $10
	db   $10                                         ; $4ac6: $10
	ld   [$20a1], sp                                 ; $4ac7: $08 $a1 $20
	ld   [$a008], sp                                 ; $4aca: $08 $08 $a0
	jr   nc, jr_030_4adf                             ; $4acd: $30 $10

jr_030_4acf:
	rlca                                             ; $4acf: $07
	and  c                                           ; $4ad0: $a1
	jr   nz, jr_030_4adb                             ; $4ad1: $20 $08

	rlca                                             ; $4ad3: $07
	and  b                                           ; $4ad4: $a0
	jr   nc, @+$12                                   ; $4ad5: $30 $10

	ld   b, $a1                                      ; $4ad7: $06 $a1
	jr   nz, jr_030_4ae3                             ; $4ad9: $20 $08

jr_030_4adb:
	ld   b, $a0                                      ; $4adb: $06 $a0
	jr   nc, jr_030_4aef                             ; $4add: $30 $10

jr_030_4adf:
	ld   [$4894], sp                                 ; $4adf: $08 $94 $48
	dec  b                                           ; $4ae2: $05

jr_030_4ae3:
	ld   [$1894], sp                                 ; $4ae3: $08 $94 $18
	ld   de, $9408                                   ; $4ae6: $11 $08 $94
	ld   c, b                                        ; $4ae9: $48
	inc  b                                           ; $4aea: $04
	ld   [$1894], sp                                 ; $4aeb: $08 $94 $18
	ld   [de], a                                     ; $4aee: $12

jr_030_4aef:
	ld   [$4894], sp                                 ; $4aef: $08 $94 $48
	inc  bc                                          ; $4af2: $03
	ld   [$1894], sp                                 ; $4af3: $08 $94 $18
	db   $10                                         ; $4af6: $10
	ld   [$4f98], sp                                 ; $4af7: $08 $98 $4f
	dec  b                                           ; $4afa: $05
	ld   [$1f98], sp                                 ; $4afb: $08 $98 $1f
	ld   de, $9808                                   ; $4afe: $11 $08 $98
	ld   c, a                                        ; $4b01: $4f
	inc  b                                           ; $4b02: $04
	ld   [$1f98], sp                                 ; $4b03: $08 $98 $1f
	ld   [de], a                                     ; $4b06: $12
	ld   [$4f98], sp                                 ; $4b07: $08 $98 $4f
	inc  bc                                          ; $4b0a: $03
	ld   [$1f98], sp                                 ; $4b0b: $08 $98 $1f
	ld   [$d010], sp                                 ; $4b0e: $08 $10 $d0
	inc  hl                                          ; $4b11: $23
	ld   [$d0f8], sp                                 ; $4b12: $08 $f8 $d0
	inc  de                                          ; $4b15: $13
	ld   [$d011], sp                                 ; $4b16: $08 $11 $d0
	inc  hl                                          ; $4b19: $23
	ld   [$d0f7], sp                                 ; $4b1a: $08 $f7 $d0
	inc  de                                          ; $4b1d: $13
	ld   [$d012], sp                                 ; $4b1e: $08 $12 $d0
	inc  hl                                          ; $4b21: $23
	ld   [$d0f6], sp                                 ; $4b22: $08 $f6 $d0
	inc  de                                          ; $4b25: $13
	db   $10                                         ; $4b26: $10
	db   $10                                         ; $4b27: $10
	ld   [bc], a                                     ; $4b28: $02
	rrca                                             ; $4b29: $0f
	db   $10                                         ; $4b2a: $10
	ld   [$1f00], sp                                 ; $4b2b: $08 $00 $1f
	rrca                                             ; $4b2e: $0f
	db   $10                                         ; $4b2f: $10
	ld   b, $0f                                      ; $4b30: $06 $0f
	rrca                                             ; $4b32: $0f
	ld   [$1f04], sp                                 ; $4b33: $08 $04 $1f
	db   $10                                         ; $4b36: $10
	db   $10                                         ; $4b37: $10
	ld   a, [bc]                                     ; $4b38: $0a
	rrca                                             ; $4b39: $0f
	db   $10                                         ; $4b3a: $10
	ld   [$1f08], sp                                 ; $4b3b: $08 $08 $1f
	db   $10                                         ; $4b3e: $10
	db   $10                                         ; $4b3f: $10
	ld   c, $0f                                      ; $4b40: $0e $0f
	db   $10                                         ; $4b42: $10
	ld   [$1f0c], sp                                 ; $4b43: $08 $0c $1f
	db   $10                                         ; $4b46: $10
	db   $10                                         ; $4b47: $10
	ld   [de], a                                     ; $4b48: $12
	dec  c                                           ; $4b49: $0d
	db   $10                                         ; $4b4a: $10
	ld   [$1d10], sp                                 ; $4b4b: $08 $10 $1d
	rrca                                             ; $4b4e: $0f
	db   $10                                         ; $4b4f: $10
	ld   d, $0d                                      ; $4b50: $16 $0d
	rrca                                             ; $4b52: $0f
	ld   [$1d14], sp                                 ; $4b53: $08 $14 $1d
	db   $10                                         ; $4b56: $10
	db   $10                                         ; $4b57: $10
	ld   a, [de]                                     ; $4b58: $1a
	dec  c                                           ; $4b59: $0d
	db   $10                                         ; $4b5a: $10
	ld   [$1d18], sp                                 ; $4b5b: $08 $18 $1d
	db   $10                                         ; $4b5e: $10
	db   $10                                         ; $4b5f: $10
	ld   e, $0d                                      ; $4b60: $1e $0d
	db   $10                                         ; $4b62: $10
	ld   [$1d1c], sp                                 ; $4b63: $08 $1c $1d
	db   $10                                         ; $4b66: $10
	db   $10                                         ; $4b67: $10
	ld   [hl+], a                                    ; $4b68: $22
	ld   c, $10                                      ; $4b69: $0e $10
	ld   [$1e20], sp                                 ; $4b6b: $08 $20 $1e
	rrca                                             ; $4b6e: $0f
	db   $10                                         ; $4b6f: $10
	ld   h, $0e                                      ; $4b70: $26 $0e
	rrca                                             ; $4b72: $0f
	ld   [$1e24], sp                                 ; $4b73: $08 $24 $1e
	db   $10                                         ; $4b76: $10
	db   $10                                         ; $4b77: $10
	ld   a, [hl+]                                    ; $4b78: $2a
	ld   c, $10                                      ; $4b79: $0e $10
	ld   [$1e28], sp                                 ; $4b7b: $08 $28 $1e
	db   $10                                         ; $4b7e: $10
	db   $10                                         ; $4b7f: $10
	ld   l, $0e                                      ; $4b80: $2e $0e
	db   $10                                         ; $4b82: $10
	ld   [$1e2c], sp                                 ; $4b83: $08 $2c $1e
	db   $10                                         ; $4b86: $10
	db   $10                                         ; $4b87: $10
	ld   [hl-], a                                    ; $4b88: $32
	ld   c, $10                                      ; $4b89: $0e $10
	ld   [$1e30], sp                                 ; $4b8b: $08 $30 $1e
	rrca                                             ; $4b8e: $0f
	db   $10                                         ; $4b8f: $10
	ld   [hl], $0e                                   ; $4b90: $36 $0e
	rrca                                             ; $4b92: $0f
	ld   [$1e34], sp                                 ; $4b93: $08 $34 $1e
	db   $10                                         ; $4b96: $10
	db   $10                                         ; $4b97: $10
	ld   a, [hl-]                                    ; $4b98: $3a
	ld   c, $10                                      ; $4b99: $0e $10
	ld   [$1e38], sp                                 ; $4b9b: $08 $38 $1e
	db   $10                                         ; $4b9e: $10
	db   $10                                         ; $4b9f: $10
	ld   a, $0e                                      ; $4ba0: $3e $0e
	db   $10                                         ; $4ba2: $10
	ld   [$1e3c], sp                                 ; $4ba3: $08 $3c $1e
	db   $10                                         ; $4ba6: $10
	db   $10                                         ; $4ba7: $10
	ld   b, d                                        ; $4ba8: $42
	dec  c                                           ; $4ba9: $0d
	db   $10                                         ; $4baa: $10
	ld   [$1d40], sp                                 ; $4bab: $08 $40 $1d
	rrca                                             ; $4bae: $0f
	db   $10                                         ; $4baf: $10
	ld   b, [hl]                                     ; $4bb0: $46
	dec  c                                           ; $4bb1: $0d
	rrca                                             ; $4bb2: $0f
	ld   [$1d44], sp                                 ; $4bb3: $08 $44 $1d
	db   $10                                         ; $4bb6: $10
	db   $10                                         ; $4bb7: $10
	ld   c, d                                        ; $4bb8: $4a
	dec  c                                           ; $4bb9: $0d
	db   $10                                         ; $4bba: $10
	ld   [$1d48], sp                                 ; $4bbb: $08 $48 $1d
	db   $10                                         ; $4bbe: $10
	db   $10                                         ; $4bbf: $10
	ld   c, [hl]                                     ; $4bc0: $4e
	dec  c                                           ; $4bc1: $0d
	db   $10                                         ; $4bc2: $10
	ld   [$1d4c], sp                                 ; $4bc3: $08 $4c $1d
	db   $10                                         ; $4bc6: $10
	db   $10                                         ; $4bc7: $10
	ld   d, d                                        ; $4bc8: $52
	dec  c                                           ; $4bc9: $0d
	db   $10                                         ; $4bca: $10
	ld   [$1d50], sp                                 ; $4bcb: $08 $50 $1d
	rrca                                             ; $4bce: $0f
	db   $10                                         ; $4bcf: $10
	ld   d, [hl]                                     ; $4bd0: $56
	dec  c                                           ; $4bd1: $0d
	rrca                                             ; $4bd2: $0f
	ld   [$1d54], sp                                 ; $4bd3: $08 $54 $1d
	db   $10                                         ; $4bd6: $10
	db   $10                                         ; $4bd7: $10
	ld   e, d                                        ; $4bd8: $5a

jr_030_4bd9:
	dec  c                                           ; $4bd9: $0d
	db   $10                                         ; $4bda: $10
	ld   [$1d58], sp                                 ; $4bdb: $08 $58 $1d
	db   $10                                         ; $4bde: $10
	db   $10                                         ; $4bdf: $10
	ld   e, [hl]                                     ; $4be0: $5e
	dec  c                                           ; $4be1: $0d
	db   $10                                         ; $4be2: $10
	ld   [$1d5c], sp                                 ; $4be3: $08 $5c $1d


SpriteGroupBIdx6c_Jupiter1:
	db $35, $5d, $32, $83
	db $25, $5d, $30, $83
	db $35, $55, $2e, $83
	db $25, $55, $2c, $83
	db $35, $4d, $2a, $83
	db $25, $4d, $28, $83
	db $35, $45, $26, $83
	db $25, $45, $24, $83
	db $45, $3d, $22, $83
	db $35, $3d, $20, $83
	db $25, $3d, $1e, $83
	db $35, $35, $1c, $83
	db $25, $35, $1a, $83
	db $35, $2d, $18, $83
	db $25, $2d, $16, $83
	db $45, $25, $14, $83
	db $35, $25, $12, $83
	db $25, $25, $10, $83
	db $35, $1d, $0e, $83
	db $25, $1d, $0c, $83
	db $45, $15, $0a, $83
	db $35, $15, $08, $83
	db $25, $15, $06, $83
	db $45, $0d, $04, $83
	db $15, $35, $02, $83
	db $15, $15, $00, $93


SpriteGroupBIdx6d_Jupiter2:
	db $36, $5e, $32, $83
	db $26, $5e, $30, $83
	db $36, $56, $2e, $83
	db $26, $56, $2c, $83
	db $36, $4e, $2a, $83
	db $26, $4e, $28, $83
	db $36, $46, $26, $83
	db $26, $46, $24, $83
	db $46, $3e, $22, $83
	db $36, $3e, $20, $83
	db $26, $3e, $1e, $83
	db $36, $36, $1c, $83
	db $26, $36, $1a, $83
	db $36, $2e, $18, $83
	db $26, $2e, $16, $83
	db $46, $26, $14, $83
	db $36, $26, $12, $83
	db $26, $26, $10, $83
	db $36, $1e, $0e, $83
	db $26, $1e, $0c, $83
	db $46, $16, $0a, $83
	db $36, $16, $08, $83
	db $26, $16, $06, $83
	db $46, $0e, $04, $83
	db $16, $36, $02, $83
	db $16, $16, $00, $93


SpriteGroupBIdx6e_Jupiter3:
	db $37, $5f, $32, $82
	db $27, $5f, $30, $82
	db $37, $57, $2e, $82
	db $27, $57, $2c, $82
	db $37, $4f, $2a, $82
	db $27, $4f, $28, $82
	db $37, $47, $26, $82
	db $27, $47, $24, $82
	db $47, $3f, $22, $82
	db $37, $3f, $20, $82
	db $27, $3f, $1e, $82
	db $37, $37, $1c, $82
	db $27, $37, $1a, $82
	db $37, $2f, $18, $82
	db $27, $2f, $16, $82
	db $47, $27, $14, $82
	db $37, $27, $12, $82
	db $27, $27, $10, $82
	db $37, $1f, $0e, $82
	db $27, $1f, $0c, $82
	db $47, $17, $0a, $82
	db $37, $17, $08, $82
	db $27, $17, $06, $82
	db $47, $0f, $04, $82
	db $17, $37, $02, $82
	db $17, $17, $00, $92


SpriteGroupBIdx6f_Jupiter4:
	db $38, $60, $32, $81
	db $28, $60, $30, $81
	db $38, $58, $2e, $81
	db $28, $58, $2c, $81
	db $38, $50, $2a, $81
	db $28, $50, $28, $81
	db $38, $48, $26, $81
	db $28, $48, $24, $81
	db $48, $40, $22, $81
	db $38, $40, $20, $81
	db $28, $40, $1e, $81
	db $38, $38, $1c, $81
	db $28, $38, $1a, $81
	db $38, $30, $18, $81
	db $28, $30, $16, $81
	db $48, $28, $14, $81
	db $38, $28, $12, $81
	db $28, $28, $10, $81
	db $38, $20, $0e, $81
	db $28, $20, $0c, $81
	db $48, $18, $0a, $81
	db $38, $18, $08, $81
	db $28, $18, $06, $81
	db $48, $10, $04, $81
	db $18, $38, $02, $81
	db $18, $18, $00, $91


SpriteGroupBIdx70_Jupiter5:
	db $39, $61, $32, $80
	db $29, $61, $30, $80
	db $39, $59, $2e, $80
	db $29, $59, $2c, $80
	db $39, $51, $2a, $80
	db $29, $51, $28, $80
	db $39, $49, $26, $80
	db $29, $49, $24, $80
	db $49, $41, $22, $80
	db $39, $41, $20, $80
	db $29, $41, $1e, $80
	db $39, $39, $1c, $80
	db $29, $39, $1a, $80
	db $39, $31, $18, $80
	db $29, $31, $16, $80
	db $49, $29, $14, $80
	db $39, $29, $12, $80
	db $29, $29, $10, $80
	db $39, $21, $0e, $80
	db $29, $21, $0c, $80
	db $49, $19, $0a, $80
	db $39, $19, $08, $80
	db $29, $19, $06, $80
	db $49, $11, $04, $80
	db $19, $39, $02, $80
	db $19, $19, $00, $90


GameState02_Intro::
	ld   a, [wGameSubstate]                                         ; $4dee
	rst  JumpTable                                                  ; $4df1
	dw IntroSubstate0_MediaFactoryInit
	dw IntroSubstate1_MediaFactoryMain
	dw IntroSubstate2_RedCompanyInit
	dw IntroSubstate3_RedCompanyMain
	dw IntroSubstate4_JupiterInit
	dw IntroSubstate5_JupiterMain
	dw IntroSubstate6_NextGameState


IntroSubstate0_MediaFactoryInit:
; Turn off lcd, and clear display regs
	call TurnOffLCD                                                 ; $4e00
	call ClearDisplayRegsAllowVBlankInt                             ; $4e03

	ld   a, LCDCF_OFF|LCDCF_OBJON|LCDCF_BGON                        ; $4e06
	ld   [wLCDC], a                                                 ; $4e08

; Allow inputs
	ld   a, $ff                                                     ; $4e0b
	ld   [wInGameInputsEnabled], a                                  ; $4e0d
	
; Load small text tile data
	xor  a                                                          ; $4e10
	ldh  [rVBK], a                                                  ; $4e11
	ld   a, BANK(Gfx_MediaFactorySmallText)                         ; $4e13
	ld   de, _VRAM                                                  ; $4e15
	ld   hl, Gfx_MediaFactorySmallText                              ; $4e18
	ld   bc, Gfx_MediaFactorySmallText.end-Gfx_MediaFactorySmallText ; $4e1b
	call FarMemCopy                                                 ; $4e1e
	
; Load big symbol tile data
	ld   a, BANK(Gfx_MediaFactoryBigLogo)                           ; $4e21
	ld   de, _VRAM+$1000                                            ; $4e23
	ld   hl, Gfx_MediaFactoryBigLogo                                ; $4e26
	ld   bc, Gfx_MediaFactoryBigLogo.end-Gfx_MediaFactoryBigLogo    ; $4e29
	call FarMemCopy                                                 ; $4e2c
	
; Load tile attr
	ld   a, $01                                                     ; $4e2f
	ldh  [rVBK], a                                                  ; $4e31
	ld   hl, _SCRN0                                                 ; $4e33
	ld   a, BANK(TileAttr_MediaFactory)                             ; $4e36
	ld   de, TileAttr_MediaFactory                                  ; $4e38
	ldbc SCRN_X_B, SCRN_Y_B                                         ; $4e3b
	call FarCopyLayout                                              ; $4e3e
	
; Load tile map
	xor  a                                                          ; $4e41
	ldh  [rVBK], a                                                  ; $4e42
	ld   hl, _SCRN0                                                 ; $4e44
	ld   a, BANK(TileMap_MediaFactory)                              ; $4e47
	call FarCopyLayout                                              ; $4e49
	
; Clear oam and mute song, then turn on LCD
	call ClearOam                                                   ; $4e4c
	xor  a                                                          ; $4e4f
	call PlaySong                                                   ; $4e50
	call TurnOnLCD                                                  ; $4e53

; Fade from white
	ld   b, BANK(Palettes_AllWhite)                                 ; $4e56
	ld   hl, Palettes_AllWhite                                      ; $4e58
	ld   c, BANK(BGPalettes_MediaFactory)                           ; $4e5b
	ld   de, BGPalettes_MediaFactory                                ; $4e5d
	call FadeBGPalsBetween2Pals_LoadOBJPals                         ; $4e60

; To next substate
	ld   hl, wGameSubstate                                          ; $4e63
	inc  [hl]                                                       ; $4e66
	ret                                                             ; $4e67


IntroSubstate1_MediaFactoryMain:
; A - num frames until fade out happens
; B - initial amount to shift oam by
; C - amount to add to B to shift oam by (speed)
	ld   a, $b4                                                     ; $4e68
	ldbc $00, $04                                                   ; $4e6a

.nextFrame:
	push af                                                         ; $4e6d
	push bc                                                         ; $4e6e

; Clear oam and get B from pushed BC
	call ClearOam                                                   ; $4e6f
	ld   hl, sp+$01                                                 ; $4e72
	ld   b, [hl]                                                    ; $4e74

; Display Media Factory, shifted by curr B
	call UpdateMediaFactorySprites                                  ; $4e75
	rst  WaitUntilVBlankIntHandledIfLCDOn                           ; $4e78

; Shift Media Factory x coords
	pop  bc                                                         ; $4e79
	call UpdateShiftedMediaFactorySpriteX                           ; $4e7a
	pop  af                                                         ; $4e7d

; Exit wait loop if A pressed
	ld   hl, wInGameButtonsPressed                                  ; $4e7e
	bit  PADB_A, [hl]                                               ; $4e81
	jr   nz, .exitLoop                                              ; $4e83

	dec  a                                                          ; $4e85
	jr   nz, .nextFrame                                             ; $4e86

.exitLoop:
	push bc                                                         ; $4e88

; Set that it is the curr colors to fade from, and white palettes to fade to
	ld   b, BANK(BGPalettes_MediaFactory)                           ; $4e89
	ld   hl, BGPalettes_MediaFactory                                ; $4e8b
	ld   c, BANK(Palettes_AllWhite)                                 ; $4e8e
	ld   de, Palettes_AllWhite                                      ; $4e90
	xor  a                                                          ; $4e93
	ld   [wStartingColorIdxToLoadCompDataFor], a                    ; $4e94
	ld   a, $40                                                     ; $4e97
	ld   [wNumPaletteColorsToLoadCompDataFor], a                    ; $4e99
	ld   a, $03                                                     ; $4e9c
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                ; $4e9e

; Loop fading
	pop  bc                                                         ; $4ea1
	ld   a, $20                                                     ; $4ea2

.fadeLoop:
	push af                                                         ; $4ea4
	push bc                                                         ; $4ea5

; Get B from pushed BC, while keeping sprites displayed
	call ClearOam                                                   ; $4ea6
	ld   hl, sp+$01                                                 ; $4ea9
	ld   b, [hl]                                                    ; $4eab
	call UpdateMediaFactorySprites                                  ; $4eac

; Every 4 frames, fade BG palettes closer to white
	ld   a, [wFrameCounter]                                         ; $4eaf
	and  $03                                                        ; $4eb2
	ld   b, $00                                                     ; $4eb4
	ld   c, $40                                                     ; $4eb6
	call z, FadePalettesAndSetRangeToUpdate                         ; $4eb8
	rst  WaitUntilVBlankIntHandledIfLCDOn                           ; $4ebb

; Continue shifting sprites, eg if we pressed A
	pop  bc                                                         ; $4ebc
	call UpdateShiftedMediaFactorySpriteX                           ; $4ebd
	pop  af                                                         ; $4ec0

	dec  a                                                          ; $4ec1
	jr   nz, .fadeLoop                                              ; $4ec2

; Load final white palettes into shadow bg pals
	ld   a, BANK(Palettes_AllWhite)                                 ; $4ec4
	ld   hl, Palettes_AllWhite                                      ; $4ec6
	ld   de, wBGPalettes                                            ; $4ec9
	ld   bc, NUM_PALETTE_BYTES * 2                                  ; $4ecc
	call FarMemCopy                                                 ; $4ecf
	
	ld   bc, $003f                                                  ; $4ed2
	call SetBGandOBJPaletteRangesToUpdate                           ; $4ed5

; To next substate
	ld   hl, wGameSubstate                                          ; $4ed8
	inc  [hl]                                                       ; $4edb
	ret                                                             ; $4edc


; B - current sprite pixel shift amount
UpdateMediaFactorySprites:
; This load is overwritten
	ld   a, b                                                       ; $4edd
	ld   [wSpriteGroup], a                                          ; $4ede
	push bc                                                         ; $4ee1

; Media is shifted right from left off-screen
	ld   a, -$40                                                    ; $4ee2
	add  b                                                          ; $4ee4
	ld   b, a                                                       ; $4ee5

	ld   c, $1f                                                     ; $4ee6
	ld   a, SG_B                                                    ; $4ee8
	ld   [wSpriteGroup], a                                          ; $4eea
	ld   a, SGB_MEDIA                                               ; $4eed
	call LoadSpriteFromMainTable                                    ; $4eef

; Factory is shifted left from the right side of the screen
	pop  bc                                                         ; $4ef2
	ld   a, $a0                                                     ; $4ef3
	sub  b                                                          ; $4ef5
	ld   b, a                                                       ; $4ef6

	ld   c, $67                                                     ; $4ef7
	ld   a, SG_B                                                    ; $4ef9
	ld   [wSpriteGroup], a                                          ; $4efb
	ld   a, SGB_FACTORY                                             ; $4efe
	call LoadSpriteFromMainTable                                    ; $4f00
	ret                                                             ; $4f03


; B - curr shift amount
; C - curr shift addition/subtract
UpdateShiftedMediaFactorySpriteX:
	ld   a, b                                                       ; $4f04

; When C becomes negative below, add to B to lower it
	bit  7, c                                                       ; $4f05
	jr   nz, .addCtoB                                               ; $4f07

; Make C negative when B gets past $74
	cp   $74                                                        ; $4f09
	jr   nc, .negC                                                  ; $4f0b

; Else add C onto B
	add  c                                                          ; $4f0d
	ld   b, a                                                       ; $4f0e
	ret                                                             ; $4f0f

.negC:
	ld   a, c                                                       ; $4f10
	cpl                                                             ; $4f11
	inc  a                                                          ; $4f12
	ld   c, a                                                       ; $4f13
	ret                                                             ; $4f14

.addCtoB:
; $74 -> $70 means B - C is only run once
	cp   $71                                                        ; $4f15
	ret  c                                                          ; $4f17

	add  c                                                          ; $4f18
	ld   b, a                                                       ; $4f19
	ret                                                             ; $4f1a


IntroSubstate2_RedCompanyInit:
; Turn off lcd, and clear display regs
	call TurnOffLCD                                                 ; $4f1b
	call ClearDisplayRegsAllowVBlankInt                             ; $4f1e

	ld   a, LCDCF_OFF|LCDCF_BGON                                    ; $4f21
	ld   [wLCDC], a                                                 ; $4f23

; Allow inputs
	ld   a, $ff                                                     ; $4f26
	ld   [wInGameInputsEnabled], a                                  ; $4f28

; Load tile data for entire screen
	xor  a                                                          ; $4f2b
	ldh  [rVBK], a                                                  ; $4f2c
	ld   a, BANK(Gfx_RedCompany)                                    ; $4f2e
	ld   de, _VRAM+$1000                                            ; $4f30
	ld   hl, Gfx_RedCompany                                         ; $4f33
	ld   bc, Gfx_RedCompany.end-Gfx_RedCompany                      ; $4f36
	call FarMemCopy                                                 ; $4f39

; Load tile attr
	ld   a, $01                                                     ; $4f3c
	ldh  [rVBK], a                                                  ; $4f3e
	ld   hl, _SCRN0                                                 ; $4f40
	ld   a, BANK(TileAttr_RedCompany)                               ; $4f43
	ld   de, TileAttr_RedCompany                                    ; $4f45
	ldbc SCRN_X_B, SCRN_Y_B                                         ; $4f48
	call FarCopyLayout                                              ; $4f4b

; Load tile map in src after
	xor  a                                                          ; $4f4e
	ldh  [rVBK], a                                                  ; $4f4f
	ld   hl, _SCRN0                                                 ; $4f51
	ld   a, BANK(TileMap_RedCompany)                                ; $4f54
	call FarCopyLayout                                              ; $4f56

; Clear oam and turn on LCD
	call ClearOam                                                   ; $4f59
	call TurnOnLCD                                                  ; $4f5c

; Fade from white
	ld   b, BANK(Palettes_AllWhite)                                 ; $4f5f
	ld   hl, Palettes_AllWhite                                      ; $4f61
	ld   c, BANK(BGPalettes_RedCompany)                             ; $4f64
	ld   de, BGPalettes_RedCompany                                  ; $4f66
	call FadeBGPalsBetween2Pals_LoadOBJPals                         ; $4f69

; To next substate
	ld   hl, wGameSubstate                                          ; $4f6c
	inc  [hl]                                                       ; $4f6f
	ret                                                             ; $4f70


IntroSubstate3_RedCompanyMain:
; Wait this many frames..
	ld   a, $b4                                                     ; $4f71

.loop:
	push af                                                         ; $4f73
	rst  WaitUntilVBlankIntHandledIfLCDOn                           ; $4f74
	pop  af                                                         ; $4f75

; Until A is pressed
	ld   hl, wInGameButtonsPressed                                  ; $4f76
	bit  PADB_A, [hl]                                               ; $4f79
	jr   nz, .exitLoop                                              ; $4f7b

	dec  a                                                          ; $4f7d
	jr   nz, .loop                                                  ; $4f7e

.exitLoop:
; Fade from the current palettes to white
	ld   b, BANK(BGPalettes_RedCompany)                             ; $4f80
	ld   hl, BGPalettes_RedCompany                                  ; $4f82
	ld   c, BANK(Palettes_AllWhite)                                 ; $4f85
	ld   de, Palettes_AllWhite                                      ; $4f87
	call FadeBGPalsBetween2Pals_LoadOBJPals                         ; $4f8a

; To next substate
	ld   hl, wGameSubstate                                          ; $4f8d
	inc  [hl]                                                       ; $4f90
	ret                                                             ; $4f91


IntroSubstate4_JupiterInit:
; Turn off lcd, and clear display regs
	call TurnOffLCD                                                 ; $4f92
	call ClearDisplayRegsAllowVBlankInt                             ; $4f95

	ld   a, LCDCF_OFF|LCDCF_OBJ16|LCDCF_OBJON|LCDCF_BGON            ; $4f98
	ld   [wLCDC], a                                                 ; $4f9a

; Allow inputs
	ld   a, $ff                                                     ; $4f9d
	ld   [wInGameInputsEnabled], a                                  ; $4f9f

; Load shadows tile data
	xor  a                                                          ; $4fa2
	ldh  [rVBK], a                                                  ; $4fa3
	ld   a, BANK(RleXorTileData_Jupiter)                            ; $4fa5
	ld   hl, _VRAM                                                  ; $4fa7
	ld   de, RleXorTileData_Jupiter                                 ; $4faa
	call RLEXorCopy                                                 ; $4fad

; Load tile attr
	ld   a, $01                                                     ; $4fb0
	ldh  [rVBK], a                                                  ; $4fb2
	ld   hl, _SCRN0                                                 ; $4fb4
	ld   a, BANK(TileAttr_Jupiter)                                  ; $4fb7
	ld   de, TileAttr_Jupiter                                       ; $4fb9
	ldbc SCRN_X_B, SCRN_Y_B                                         ; $4fbc
	call FarCopyLayout                                              ; $4fbf

; Load tile map in src after
	xor  a                                                          ; $4fc2
	ldh  [rVBK], a                                                  ; $4fc3
	ld   hl, _SCRN0                                                 ; $4fc5
	ld   a, BANK(TileMap_Jupiter)                                   ; $4fc8
	call FarCopyLayout                                              ; $4fca

; Clear oam and turn on LCD
	call ClearOam                                                   ; $4fcd
	call TurnOnLCD                                                  ; $4fd0

; Fade from white
	ld   b, BANK(Palettes_AllWhite)                                 ; $4fd3
	ld   hl, Palettes_AllWhite                                      ; $4fd5
	ld   c, BANK(Palettes_Jupiter)                                  ; $4fd8
	ld   de, Palettes_Jupiter                                       ; $4fda
	call FadeBGPalsBetween2Pals_LoadOBJPals                         ; $4fdd

; To next substate
	ld   hl, wGameSubstate                                          ; $4fe0
	inc  [hl]                                                       ; $4fe3
	ret                                                             ; $4fe4


IntroSubstate5_JupiterMain:
	ld   a, $b4                                                     ; $4fe5

.frameLoop:
	push af                                                         ; $4fe7

; Clear oam, and get pushed A
	call ClearOam                                                   ; $4fe8
	ld   hl, sp+$01                                                 ; $4feb
	ld   a, [hl]                                                    ; $4fed

; Branch based on the timer countdown
	cp   $96                                                        ; $4fee
	jr   nc, .toNextFrame                                           ; $4ff0

	cp   $92                                                        ; $4ff2
	jr   c, .lt92h                                                  ; $4ff4

; Timer = $92 to $95
	ld   a, SG_B                                                    ; $4ff6
	ld   [wSpriteGroup], a                                          ; $4ff8
	ld   a, SGB_JUPITER1                                            ; $4ffb
	jr   .displaySprite                                             ; $4ffd

.lt92h:
	cp   $8e                                                        ; $4fff
	jr   c, .lt8eh                                                  ; $5001

; Timer = $8e to $91
	ld   a, SG_B                                                    ; $5003
	ld   [wSpriteGroup], a                                          ; $5005
	ld   a, SGB_JUPITER2                                            ; $5008
	jr   .displaySprite                                             ; $500a

.lt8eh:
	cp   $8a                                                        ; $500c
	jr   c, .lt8ah                                                  ; $500e

; Timer = $8a to $8d
	ld   a, SG_B                                                    ; $5010
	ld   [wSpriteGroup], a                                          ; $5012
	ld   a, SGB_JUPITER3                                            ; $5015
	jr   .displaySprite                                             ; $5017

.lt8ah:
	cp   $86                                                        ; $5019
	jr   c, .lt86h                                                  ; $501b

; Timer = $86 to $89
	ld   a, SG_B                                                    ; $501d
	ld   [wSpriteGroup], a                                          ; $501f
	ld   a, SGB_JUPITER4                                            ; $5022
	jr   .displaySprite                                             ; $5024

.lt86h:
; Timer = $00 to $85
	ld   a, SG_B                                                    ; $5026
	ld   [wSpriteGroup], a                                          ; $5028
	ld   a, SGB_JUPITER5                                            ; $502b

.displaySprite:
	ldbc $20, $20                                                   ; $502d
	call LoadSpriteFromMainTable                                    ; $5030

.toNextFrame:
; Continue next frame, existing when A is pressed
	rst  WaitUntilVBlankIntHandledIfLCDOn                           ; $5033
	pop  af                                                         ; $5034

	ld   hl, wInGameButtonsPressed                                  ; $5035
	bit  PADB_A, [hl]                                               ; $5038
	jr   nz, .exitLoop                                              ; $503a

	dec  a                                                          ; $503c
	jr   nz, .frameLoop                                             ; $503d

.exitLoop:
; Fade from the current palettes to white
	ld   b, BANK(Palettes_Jupiter)                                  ; $503f
	ld   hl, Palettes_Jupiter                                       ; $5041
	ld   c, BANK(Palettes_AllWhite)                                 ; $5044
	ld   de, Palettes_AllWhite                                      ; $5046
	call FadeBGPalsBetween2Pals_LoadOBJPals                         ; $5049

; To next substate
	ld   hl, wGameSubstate                                          ; $504c
	inc  [hl]                                                       ; $504f
	ret                                                             ; $5050


IntroSubstate6_NextGameState:
	ld   a, GS_46                                      ; $5051: $3e $46
	ld   [wGameState], a                                  ; $5053: $ea $a0 $c2
	xor  a                                           ; $5056: $af
	ld   [wGameSubstate], a                                  ; $5057: $ea $a1 $c2
	ret                                              ; $505a: $c9


; B - src rom bank for initial color vals
; C - src rom bank for final color vals
; DE - src address of final color vals
; HL - src address of initial color vals
FadeBGPalsBetween2Pals_LoadOBJPals:
; Preserve final color src
	ld   a, c                                                       ; $505b
	push af                                                         ; $505c
	push de                                                         ; $505d

; Load color comp data for BG palettes, fading at 1/8th speed
	xor  a                                                          ; $505e
	ld   [wStartingColorIdxToLoadCompDataFor], a                    ; $505f
	ld   a, $40                                                     ; $5062
	ld   [wNumPaletteColorsToLoadCompDataFor], a                    ; $5064
	ld   a, $03                                                     ; $5067
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                ; $5069

; Call fade loop for the BG palettes the 8 times..
	ld   a, $08                                                     ; $506c

.loop:
	push af                                                         ; $506e
	ld   b, $00                                                     ; $506f
	ld   c, $40                                                     ; $5071
	call FadePalettesAndSetRangeToUpdate                            ; $5073

; Waiting 4 vblanks in between fades
	rst  WaitUntilVBlankIntHandledIfLCDOn                           ; $5076
	rst  WaitUntilVBlankIntHandledIfLCDOn                           ; $5077
	rst  WaitUntilVBlankIntHandledIfLCDOn                           ; $5078
	rst  WaitUntilVBlankIntHandledIfLCDOn                           ; $5079

	pop  af                                                         ; $507a
	dec  a                                                          ; $507b
	jr   nz, .loop                                                  ; $507c

; Pop orig DE and C (final colors we faded to)
	pop  hl                                                         ; $507e
	pop  af                                                         ; $507f
	ld   de, wBGandOBJPalettes                                      ; $5080
	ld   bc, NUM_PALETTE_BYTES * 2                                  ; $5083
	call FarMemCopy                                                 ; $5086

; Update only BG palettes
	ld   bc, $003f                                                  ; $5089
	call SetBGandOBJPaletteRangesToUpdate                           ; $508c
	ret                                                             ; $508f


GameState03_MiniGames::
	ld   a, [wGameSubstate]                                  ; $5090: $fa $a1 $c2
	rst  JumpTable                                         ; $5093: $df
	dw MiniGamesSubstate0
	dw MiniGamesSubstate1
	dw $5265
	dw $539a
	dw $53c1
	dw $53c8
	dw $548f


MiniGamesSubstate0:
	xor  a                                           ; $50a2: $af
	ld   [$c69e], a                                  ; $50a3: $ea $9e $c6
	ld   [$c6a1], a                                  ; $50a6: $ea $a1 $c6
	ld   [$c6a9], a                                  ; $50a9: $ea $a9 $c6
	ld   hl, wGameSubstate                                   ; $50ac: $21 $a1 $c2
	inc  [hl]                                        ; $50af: $34
	ret                                              ; $50b0: $c9


MiniGamesSubstate1:
	call TurnOffLCD                                       ; $50b1: $cd $e3 $08
	call ClearDisplayRegsAllowVBlankInt                                       ; $50b4: $cd $59 $0b
	ld   a, LCDCF_OFF|LCDCF_WIN9C00|LCDCF_WINON|LCDCF_OBJON|LCDCF_BGON                                      ; $50b7: $3e $63
	ld   [wLCDC], a                                  ; $50b9: $ea $03 $c2
	xor  a                                           ; $50bc: $af
	ld   [wSCX], a                                  ; $50bd: $ea $07 $c2
	ld   [wWY], a                                  ; $50c0: $ea $0a $c2
	ld   a, $07                                      ; $50c3: $3e $07
	ld   [wWX], a                                  ; $50c5: $ea $09 $c2
	ld   a, [$c6a1]                                  ; $50c8: $fa $a1 $c6
	sub  $38                                         ; $50cb: $d6 $38
	ld   [wSCY], a                                  ; $50cd: $ea $08 $c2
	ld   a, $37                                      ; $50d0: $3e $37
	ld   [$c20b], a                                  ; $50d2: $ea $0b $c2
	ld   hl, $c20c                                   ; $50d5: $21 $0c $c2
	set  6, [hl]                                     ; $50d8: $cb $f6
	ld   hl, wIE                                   ; $50da: $21 $0d $c2
	set  1, [hl]                                     ; $50dd: $cb $ce
	ld   a, $01                                      ; $50df: $3e $01
	ld   [wLCDCIntFuncIdx], a                                  ; $50e1: $ea $8d $c2
	ld   a, $ff                                      ; $50e4: $3e $ff
	ld   [wInGameInputsEnabled], a                                  ; $50e6: $ea $0e $c2

;
	xor  a                                           ; $50e9: $af
	ldh  [rVBK], a                                   ; $50ea: $e0 $4f
	ld   a, $33                                      ; $50ec: $3e $33
	ld   hl, $8000                                   ; $50ee: $21 $00 $80
	ld   de, $552d                                   ; $50f1: $11 $2d $55
	call RLEXorCopy                                       ; $50f4: $cd $d2 $09

;
	ld   a, $01                                      ; $50f7: $3e $01
	ldh  [rVBK], a                                   ; $50f9: $e0 $4f
	ld   a, $33                                      ; $50fb: $3e $33
	ld   hl, $9000                                   ; $50fd: $21 $00 $90
	ld   de, $7577                                   ; $5100: $11 $77 $75
	call RLEXorCopy                                       ; $5103: $cd $d2 $09

;
	ld   a, $01                                      ; $5106: $3e $01
	ldh  [rVBK], a                                   ; $5108: $e0 $4f
	ld   hl, _SCRN0                                   ; $510a: $21 $00 $98
	ld   a, $34                                      ; $510d: $3e $34
	ld   de, $5522                                   ; $510f: $11 $22 $55
	ldbc $14, $1c                                   ; $5112: $01 $1c $14
	call FarCopyLayout                                       ; $5115: $cd $2c $0b

;
	xor  a                                           ; $5118: $af
	ldh  [rVBK], a                                   ; $5119: $e0 $4f
	ld   hl, _SCRN0                                   ; $511b: $21 $00 $98
	ld   a, $34                                      ; $511e: $3e $34
	call FarCopyLayout                                       ; $5120: $cd $2c $0b

;
	ld   a, $01                                      ; $5123: $3e $01
	ldh  [rVBK], a                                   ; $5125: $e0 $4f
	ld   hl, $9c00                                   ; $5127: $21 $00 $9c
	ld   a, $34                                      ; $512a: $3e $34
	ld   de, $64e2                                   ; $512c: $11 $e2 $64
	ld   bc, $1413                                   ; $512f: $01 $13 $14
	call FarCopyLayout                                       ; $5132: $cd $2c $0b
	xor  a                                           ; $5135: $af
	ldh  [rVBK], a                                   ; $5136: $e0 $4f
	ld   hl, $9c00                                   ; $5138: $21 $00 $9c
	ld   a, $34                                      ; $513b: $3e $34
	call FarCopyLayout                                       ; $513d: $cd $2c $0b
	ld   hl, $5259                                   ; $5140: $21 $59 $52
	ld   bc, $0000                                   ; $5143: $01 $00 $00

jr_030_5146:
	push bc                                          ; $5146: $c5
	ld   a, [hl+]                                    ; $5147: $2a
	ld   e, a                                        ; $5148: $5f
	ld   a, [hl+]                                    ; $5149: $2a
	ld   d, a                                        ; $514a: $57
	push hl                                          ; $514b: $e5
	or   a                                           ; $514c: $b7
	jr   z, jr_030_5193                              ; $514d: $28 $44

	ld   hl, sp+$02                                  ; $514f: $f8 $02
	ld   a, [hl+]                                    ; $5151: $2a
	ld   e, a                                        ; $5152: $5f
	ld   d, $00                                      ; $5153: $16 $00
	ld   a, [hl]                                     ; $5155: $7e
	ld   hl, $c6a3                                   ; $5156: $21 $a3 $c6
	add  hl, de                                      ; $5159: $19
	ld   [hl], a                                     ; $515a: $77
	ld   hl, sp+$02                                  ; $515b: $f8 $02
	ld   a, [hl]                                     ; $515d: $7e
	inc  [hl]                                        ; $515e: $34
	ld   e, $00                                      ; $515f: $1e $00
	ld   d, a                                        ; $5161: $57
	srl  d                                           ; $5162: $cb $3a
	rr   e                                           ; $5164: $cb $1b
	ld   hl, $9800                                   ; $5166: $21 $00 $98
	add  hl, de                                      ; $5169: $19
	ld   c, l                                        ; $516a: $4d
	ld   b, h                                        ; $516b: $44
	ld   hl, sp+$03                                  ; $516c: $f8 $03
	ld   a, [hl]                                     ; $516e: $7e
	ld   e, $00                                      ; $516f: $1e $00
	ld   d, a                                        ; $5171: $57
	srl  d                                           ; $5172: $cb $3a
	rr   e                                           ; $5174: $cb $1b
	ld   hl, $9800                                   ; $5176: $21 $00 $98
	add  hl, de                                      ; $5179: $19
	ld   e, c                                        ; $517a: $59
	ld   d, b                                        ; $517b: $50
	push hl                                          ; $517c: $e5
	push de                                          ; $517d: $d5
	ld   bc, $0080                                   ; $517e: $01 $80 $00
	xor  a                                           ; $5181: $af
	ldh  [rVBK], a                                   ; $5182: $e0 $4f
	call MemCopy                                       ; $5184: $cd $a9 $09
	pop  de                                          ; $5187: $d1
	pop  hl                                          ; $5188: $e1
	ld   bc, $0080                                   ; $5189: $01 $80 $00
	ld   a, $01                                      ; $518c: $3e $01
	ldh  [rVBK], a                                   ; $518e: $e0 $4f
	call MemCopy                                       ; $5190: $cd $a9 $09

jr_030_5193:
	pop  hl                                          ; $5193: $e1
	pop  bc                                          ; $5194: $c1
	inc  b                                           ; $5195: $04
	ld   a, b                                        ; $5196: $78
	cp   $06                                         ; $5197: $fe $06
	jr   c, jr_030_5146                              ; $5199: $38 $ab

	ld   a, c                                        ; $519b: $79
	ld   [$c6a2], a                                  ; $519c: $ea $a2 $c6
	ld   e, $00                                      ; $519f: $1e $00
	ld   d, a                                        ; $51a1: $57
	srl  d                                           ; $51a2: $cb $3a
	rr   e                                           ; $51a4: $cb $1b
	ld   hl, $9800                                   ; $51a6: $21 $00 $98
	add  hl, de                                      ; $51a9: $19
	ld   e, l                                        ; $51aa: $5d
	ld   d, h                                        ; $51ab: $54
	ld   hl, $9800                                   ; $51ac: $21 $00 $98
	push de                                          ; $51af: $d5
	ld   bc, $0080                                   ; $51b0: $01 $80 $00
	xor  a                                           ; $51b3: $af
	ldh  [rVBK], a                                   ; $51b4: $e0 $4f
	call MemCopy                                       ; $51b6: $cd $a9 $09
	pop  de                                          ; $51b9: $d1
	ld   hl, $9800                                   ; $51ba: $21 $00 $98
	ld   bc, $0080                                   ; $51bd: $01 $80 $00
	ld   a, $01                                      ; $51c0: $3e $01
	ldh  [rVBK], a                                   ; $51c2: $e0 $4f
	call MemCopy                                       ; $51c4: $cd $a9 $09
	ld   a, [wWramBank]                                  ; $51c7: $fa $93 $c2
	push af                                          ; $51ca: $f5
	ld   a, $05                                      ; $51cb: $3e $05
	ld   [wWramBank], a                                  ; $51cd: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $51d0: $e0 $70
	xor  a                                           ; $51d2: $af
	ldh  [rVBK], a                                   ; $51d3: $e0 $4f
	ld   hl, $9ce0                                   ; $51d5: $21 $e0 $9c
	ld   de, $d000                                   ; $51d8: $11 $00 $d0
	ld   bc, $0040                                   ; $51db: $01 $40 $00
	call MemCopy                                       ; $51de: $cd $a9 $09
	ld   hl, $9dc0                                   ; $51e1: $21 $c0 $9d
	ld   de, $d040                                   ; $51e4: $11 $40 $d0
	ld   bc, $00a0                                   ; $51e7: $01 $a0 $00
	call MemCopy                                       ; $51ea: $cd $a9 $09
	ld   hl, $9800                                   ; $51ed: $21 $00 $98
	ld   de, $d260                                   ; $51f0: $11 $60 $d2
	ld   bc, $0380                                   ; $51f3: $01 $80 $03
	call MemCopy                                       ; $51f6: $cd $a9 $09
	ld   a, $01                                      ; $51f9: $3e $01
	ldh  [rVBK], a                                   ; $51fb: $e0 $4f
	ld   hl, $9ce0                                   ; $51fd: $21 $e0 $9c
	ld   de, $d0e0                                   ; $5200: $11 $e0 $d0
	ld   bc, $0040                                   ; $5203: $01 $40 $00
	call MemCopy                                       ; $5206: $cd $a9 $09
	ld   hl, $9dc0                                   ; $5209: $21 $c0 $9d
	ld   de, $d120                                   ; $520c: $11 $20 $d1
	ld   bc, $00a0                                   ; $520f: $01 $a0 $00
	call MemCopy                                       ; $5212: $cd $a9 $09
	ld   hl, $9800                                   ; $5215: $21 $00 $98
	ld   de, $d5e0                                   ; $5218: $11 $e0 $d5
	ld   bc, $0380                                   ; $521b: $01 $80 $03
	call MemCopy                                       ; $521e: $cd $a9 $09
	pop  af                                          ; $5221: $f1
	ld   [wWramBank], a                                  ; $5222: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5225: $e0 $70
	call ClearOam                                       ; $5227: $cd $d7 $0d
	call Call_030_5280                               ; $522a: $cd $80 $52
	ld   a, $08                                      ; $522d: $3e $08
	ld   [$c69b], a                                  ; $522f: $ea $9b $c6
	xor  a                                           ; $5232: $af
	ld   [$c69c], a                                  ; $5233: $ea $9c $c6
	ld   [$c69d], a                                  ; $5236: $ea $9d $c6
	call Call_030_55fd                               ; $5239: $cd $fd $55
	call Call_030_567a                               ; $523c: $cd $7a $56
	ld   a, $07                                      ; $523f: $3e $07
	call SafeSetAudVolForMultipleChannels                                       ; $5241: $cd $e0 $1c
	call TurnOnLCD                                       ; $5244: $cd $09 $09
	ld   b, BANK(Palettes_AllWhite)                                      ; $5247: $06 $01
	ld   hl, Palettes_AllWhite                                   ; $5249: $21 $00 $70
	ld   c, $35                                      ; $524c: $0e $35
	ld   de, $4888                                   ; $524e: $11 $88 $48
	call Call_030_54bc                               ; $5251: $cd $bc $54
	ld   hl, wGameSubstate                                   ; $5254: $21 $a1 $c2
	inc  [hl]                                        ; $5257: $34
	ret                                              ; $5258: $c9


	rst  $38                                         ; $5259: $ff
	rst  $38                                         ; $525a: $ff
	rst  $38                                         ; $525b: $ff
	rst  $38                                         ; $525c: $ff
	rst  $38                                         ; $525d: $ff
	rst  $38                                         ; $525e: $ff
	rst  $38                                         ; $525f: $ff
	rst  $38                                         ; $5260: $ff
	rst  $38                                         ; $5261: $ff
	rst  $38                                         ; $5262: $ff
	rst  $38                                         ; $5263: $ff
	rst  $38                                         ; $5264: $ff
	call ClearOam                                       ; $5265: $cd $d7 $0d
	ld   hl, $c69f                                   ; $5268: $21 $9f $c6
	ld   a, [hl+]                                    ; $526b: $2a
	ld   h, [hl]                                     ; $526c: $66
	ld   l, a                                        ; $526d: $6f
	or   h                                           ; $526e: $b4
	jr   z, jr_030_5276                              ; $526f: $28 $05

	ld   de, $5276                                   ; $5271: $11 $76 $52
	push de                                          ; $5274: $d5
	jp   hl                                          ; $5275: $e9


jr_030_5276:
	call Call_030_55fd                               ; $5276: $cd $fd $55
	call Call_030_567a                               ; $5279: $cd $7a $56
	call Call_030_5526                               ; $527c: $cd $26 $55
	ret                                              ; $527f: $c9


Call_030_5280:
	call Call_030_565d                               ; $5280: $cd $5d $56
	ld   a, $8e                                      ; $5283: $3e $8e
	ld   [$c69f], a                                  ; $5285: $ea $9f $c6
	ld   a, $52                                      ; $5288: $3e $52
	ld   [$c6a0], a                                  ; $528a: $ea $a0 $c6
	ret                                              ; $528d: $c9


	xor  a                                           ; $528e: $af
	ld   [$c6a9], a                                  ; $528f: $ea $a9 $c6
	ld   hl, wInGameButtonsHeld                                   ; $5292: $21 $0f $c2
	bit  7, [hl]                                     ; $5295: $cb $7e
	jp   nz, Jump_030_5308                           ; $5297: $c2 $08 $53

	bit  6, [hl]                                     ; $529a: $cb $76
	jp   nz, Jump_030_5352                           ; $529c: $c2 $52 $53

	bit  0, [hl]                                     ; $529f: $cb $46
	jr   z, jr_030_52fa                              ; $52a1: $28 $57

	ld   c, $80                                      ; $52a3: $0e $80
	ld   de, $9d60                                   ; $52a5: $11 $60 $9d
	ld   a, $05                                      ; $52a8: $3e $05
	ld   hl, $d000                                   ; $52aa: $21 $00 $d0
	ld   b, $0e                                      ; $52ad: $06 $0e
	call EnqueueHDMATransfer                                       ; $52af: $cd $7c $02
	ld   c, $81                                      ; $52b2: $0e $81
	ld   de, $9d60                                   ; $52b4: $11 $60 $9d
	ld   a, $05                                      ; $52b7: $3e $05
	ld   hl, $d0e0                                   ; $52b9: $21 $e0 $d0
	ld   b, $0e                                      ; $52bc: $06 $0e
	call EnqueueHDMATransfer                                       ; $52be: $cd $7c $02
	ld   a, [$c69e]                                  ; $52c1: $fa $9e $c6
	ld   l, $00                                      ; $52c4: $2e $00
	ld   h, a                                        ; $52c6: $67
	srl  h                                           ; $52c7: $cb $3c
	rr   l                                           ; $52c9: $cb $1d
	push hl                                          ; $52cb: $e5
	ld   de, $d260                                   ; $52cc: $11 $60 $d2
	add  hl, de                                      ; $52cf: $19
	ld   a, $05                                      ; $52d0: $3e $05
	ld   c, $80                                      ; $52d2: $0e $80
	ld   de, $9ce0                                   ; $52d4: $11 $e0 $9c
	ld   b, $08                                      ; $52d7: $06 $08
	call EnqueueHDMATransfer                                       ; $52d9: $cd $7c $02
	pop  hl                                          ; $52dc: $e1
	ld   de, $d5e0                                   ; $52dd: $11 $e0 $d5
	add  hl, de                                      ; $52e0: $19
	ld   a, $05                                      ; $52e1: $3e $05
	ld   c, $81                                      ; $52e3: $0e $81
	ld   de, $9ce0                                   ; $52e5: $11 $e0 $9c
	ld   b, $08                                      ; $52e8: $06 $08
	call EnqueueHDMATransfer                                       ; $52ea: $cd $7c $02
	call Call_030_554f                               ; $52ed: $cd $4f $55
	ld   hl, wIE                                   ; $52f0: $21 $0d $c2
	res  1, [hl]                                     ; $52f3: $cb $8e
	ld   hl, wGameSubstate                                   ; $52f5: $21 $a1 $c2
	inc  [hl]                                        ; $52f8: $34
	ret                                              ; $52f9: $c9


jr_030_52fa:
	bit  1, [hl]                                     ; $52fa: $cb $4e
	ret  z                                           ; $52fc: $c8

	ld   a, $22                                      ; $52fd: $3e $22
	call PlaySoundEffect                                       ; $52ff: $cd $df $1a
	ld   a, $06                                      ; $5302: $3e $06
	ld   [wGameSubstate], a                                  ; $5304: $ea $a1 $c2
	ret                                              ; $5307: $c9


Jump_030_5308:
	ld   a, $20                                      ; $5308: $3e $20
	call PlaySoundEffect                                       ; $530a: $cd $df $1a
	ld   a, $01                                      ; $530d: $3e $01
	ld   [$c6a9], a                                  ; $530f: $ea $a9 $c6
	ld   a, $30                                      ; $5312: $3e $30
	ld   [$c69f], a                                  ; $5314: $ea $9f $c6
	ld   a, $53                                      ; $5317: $3e $53
	ld   [$c6a0], a                                  ; $5319: $ea $a0 $c6
	ld   a, [$c69e]                                  ; $531c: $fa $9e $c6
	or   a                                           ; $531f: $b7
	jr   nz, jr_030_5325                             ; $5320: $20 $03

	ld   [$c6a1], a                                  ; $5322: $ea $a1 $c6

jr_030_5325:
	inc  a                                           ; $5325: $3c
	ld   hl, $c6a2                                   ; $5326: $21 $a2 $c6
	cp   [hl]                                        ; $5329: $be
	jr   c, jr_030_532d                              ; $532a: $38 $01

	xor  a                                           ; $532c: $af

jr_030_532d:
	ld   [$c69e], a                                  ; $532d: $ea $9e $c6
	ld   a, [$c69e]                                  ; $5330: $fa $9e $c6
	or   a                                           ; $5333: $b7
	jr   nz, jr_030_5339                             ; $5334: $20 $03

	ld   a, [$c6a2]                                  ; $5336: $fa $a2 $c6

jr_030_5339:
	ld   b, a                                        ; $5339: $47
	swap b                                           ; $533a: $cb $30
	sla  b                                           ; $533c: $cb $20
	ld   a, [$c6a1]                                  ; $533e: $fa $a1 $c6
	inc  a                                           ; $5341: $3c
	cp   b                                           ; $5342: $b8
	jr   c, jr_030_5349                              ; $5343: $38 $04

	call Call_030_5280                               ; $5345: $cd $80 $52
	ld   a, b                                        ; $5348: $78

jr_030_5349:
	ld   [$c6a1], a                                  ; $5349: $ea $a1 $c6
	sub  $38                                         ; $534c: $d6 $38
	ld   [wSCY], a                                  ; $534e: $ea $08 $c2
	ret                                              ; $5351: $c9


Jump_030_5352:
	ld   a, $20                                      ; $5352: $3e $20
	call PlaySoundEffect                                       ; $5354: $cd $df $1a
	ld   a, $02                                      ; $5357: $3e $02
	ld   [$c6a9], a                                  ; $5359: $ea $a9 $c6
	ld   a, $7e                                      ; $535c: $3e $7e
	ld   [$c69f], a                                  ; $535e: $ea $9f $c6
	ld   a, $53                                      ; $5361: $3e $53
	ld   [$c6a0], a                                  ; $5363: $ea $a0 $c6
	ld   a, [$c69e]                                  ; $5366: $fa $9e $c6
	or   a                                           ; $5369: $b7
	jr   nz, jr_030_5379                             ; $536a: $20 $0d

	ld   a, [$c6a2]                                  ; $536c: $fa $a2 $c6
	swap a                                           ; $536f: $cb $37
	sla  a                                           ; $5371: $cb $27
	ld   [$c6a1], a                                  ; $5373: $ea $a1 $c6
	ld   a, [$c6a2]                                  ; $5376: $fa $a2 $c6

jr_030_5379:
	sub  $01                                         ; $5379: $d6 $01
	ld   [$c69e], a                                  ; $537b: $ea $9e $c6
	ld   a, [$c69e]                                  ; $537e: $fa $9e $c6
	ld   b, a                                        ; $5381: $47
	swap b                                           ; $5382: $cb $30
	sla  b                                           ; $5384: $cb $20
	ld   a, [$c6a1]                                  ; $5386: $fa $a1 $c6
	dec  a                                           ; $5389: $3d
	cp   b                                           ; $538a: $b8
	jr   nz, jr_030_5391                             ; $538b: $20 $04

	call Call_030_5280                               ; $538d: $cd $80 $52
	ld   a, b                                        ; $5390: $78

jr_030_5391:
	ld   [$c6a1], a                                  ; $5391: $ea $a1 $c6
	sub  $38                                         ; $5394: $d6 $38
	ld   [wSCY], a                                  ; $5396: $ea $08 $c2
	ret                                              ; $5399: $c9


	call ClearOam                                       ; $539a: $cd $d7 $0d
	call Call_030_55c9                               ; $539d: $cd $c9 $55
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $53a0: $cf
	ld   a, [$c69e]                                  ; $53a1: $fa $9e $c6
	ld   e, a                                        ; $53a4: $5f
	ld   d, $00                                      ; $53a5: $16 $00
	ld   hl, $c6a3                                   ; $53a7: $21 $a3 $c6
	add  hl, de                                      ; $53aa: $19
	ld   e, [hl]                                     ; $53ab: $5e
	ld   d, $00                                      ; $53ac: $16 $00
	ld   hl, $53bb                                   ; $53ae: $21 $bb $53
	add  hl, de                                      ; $53b1: $19
	ld   a, [hl]                                     ; $53b2: $7e
	call PlaySampledSound                                       ; $53b3: $cd $64 $1b
	ld   hl, wGameSubstate                                   ; $53b6: $21 $a1 $c2
	inc  [hl]                                        ; $53b9: $34
	ret                                              ; $53ba: $c9


	ld   a, [hl+]                                    ; $53bb: $2a
	ld   [hl], $42                                   ; $53bc: $36 $42
	ld   c, [hl]                                     ; $53be: $4e
	ld   e, d                                        ; $53bf: $5a
	ld   h, [hl]                                     ; $53c0: $66
	call ClearOam                                       ; $53c1: $cd $d7 $0d
	call Call_030_55c9                               ; $53c4: $cd $c9 $55
	ret                                              ; $53c7: $c9


	ld   b, $35                                      ; $53c8: $06 $35
	ld   hl, $4888                                   ; $53ca: $21 $88 $48
	ld   c, BANK(Palettes_AllWhite)                                      ; $53cd: $0e $01
	ld   de, Palettes_AllWhite                                   ; $53cf: $11 $00 $70
	call Call_030_54bc                               ; $53d2: $cd $bc $54
	ld   hl, wIE                                   ; $53d5: $21 $0d $c2
	res  1, [hl]                                     ; $53d8: $cb $8e
	ld   a, [$c69e]                                  ; $53da: $fa $9e $c6
	ld   e, a                                        ; $53dd: $5f
	ld   d, $00                                      ; $53de: $16 $00
	ld   hl, $c6a3                                   ; $53e0: $21 $a3 $c6
	add  hl, de                                      ; $53e3: $19
	ld   a, [hl]                                     ; $53e4: $7e
	ld   e, a                                        ; $53e5: $5f
	ld   d, $00                                      ; $53e6: $16 $00
	sla  e                                           ; $53e8: $cb $23
	rl   d                                           ; $53ea: $cb $12
	ld   hl, $53f7                                   ; $53ec: $21 $f7 $53
	add  hl, de                                      ; $53ef: $19
	ld   a, [hl+]                                    ; $53f0: $2a
	ld   h, [hl]                                     ; $53f1: $66
	ld   l, a                                        ; $53f2: $6f
	ld   bc, $0301                                   ; $53f3: $01 $01 $03
	jp   hl                                          ; $53f6: $e9


	inc  bc                                          ; $53f7: $03
	ld   d, h                                        ; $53f8: $54
	ld   a, [de]                                     ; $53f9: $1a
	ld   d, h                                        ; $53fa: $54
	inc  sp                                          ; $53fb: $33
	ld   d, h                                        ; $53fc: $54
	ld   c, d                                        ; $53fd: $4a
	ld   d, h                                        ; $53fe: $54
	ld   h, c                                        ; $53ff: $61
	ld   d, h                                        ; $5400: $54
	ld   a, b                                        ; $5401: $78
	ld   d, h                                        ; $5402: $54
	ld   h, b                                        ; $5403: $60
	ld   l, c                                        ; $5404: $69
	push af                                          ; $5405: $f5
	ld   a, $51                                      ; $5406: $3e $51
	ld   [wFarCallAddr], a                                  ; $5408: $ea $98 $c2
	ld   a, $7f                                      ; $540b: $3e $7f
	ld   [wFarCallAddr+1], a                                  ; $540d: $ea $99 $c2
	ld   a, $3e                                      ; $5410: $3e $3e
	ld   [wFarCallBank], a                                  ; $5412: $ea $9a $c2
	pop  af                                          ; $5415: $f1
	call FarCall                                       ; $5416: $cd $62 $09
	ret                                              ; $5419: $c9


	ld   h, b                                        ; $541a: $60
	ld   l, c                                        ; $541b: $69
	ld   a, $00                                      ; $541c: $3e $00
	push af                                          ; $541e: $f5
	ld   a, $61                                      ; $541f: $3e $61
	ld   [wFarCallAddr], a                                  ; $5421: $ea $98 $c2
	ld   a, $75                                      ; $5424: $3e $75
	ld   [wFarCallAddr+1], a                                  ; $5426: $ea $99 $c2
	ld   a, $10                                      ; $5429: $3e $10
	ld   [wFarCallBank], a                                  ; $542b: $ea $9a $c2
	pop  af                                          ; $542e: $f1
	call FarCall                                       ; $542f: $cd $62 $09
	ret                                              ; $5432: $c9


	ld   h, b                                        ; $5433: $60
	ld   l, c                                        ; $5434: $69
	push af                                          ; $5435: $f5
	ld   a, $9e                                      ; $5436: $3e $9e
	ld   [wFarCallAddr], a                                  ; $5438: $ea $98 $c2
	ld   a, $6d                                      ; $543b: $3e $6d
	ld   [wFarCallAddr+1], a                                  ; $543d: $ea $99 $c2
	ld   a, $11                                      ; $5440: $3e $11
	ld   [wFarCallBank], a                                  ; $5442: $ea $9a $c2
	pop  af                                          ; $5445: $f1
	call FarCall                                       ; $5446: $cd $62 $09
	ret                                              ; $5449: $c9


	ld   h, b                                        ; $544a: $60
	ld   l, c                                        ; $544b: $69
	push af                                          ; $544c: $f5
	ld   a, $4b                                      ; $544d: $3e $4b
	ld   [wFarCallAddr], a                                  ; $544f: $ea $98 $c2
	ld   a, $79                                      ; $5452: $3e $79
	ld   [wFarCallAddr+1], a                                  ; $5454: $ea $99 $c2
	ld   a, $3e                                      ; $5457: $3e $3e
	ld   [wFarCallBank], a                                  ; $5459: $ea $9a $c2
	pop  af                                          ; $545c: $f1
	call FarCall                                       ; $545d: $cd $62 $09
	ret                                              ; $5460: $c9


	ld   h, b                                        ; $5461: $60
	ld   l, c                                        ; $5462: $69
	push af                                          ; $5463: $f5
	ld   a, $01                                      ; $5464: $3e $01
	ld   [wFarCallAddr], a                                  ; $5466: $ea $98 $c2
	ld   a, $73                                      ; $5469: $3e $73
	ld   [wFarCallAddr+1], a                                  ; $546b: $ea $99 $c2
	ld   a, $3e                                      ; $546e: $3e $3e
	ld   [wFarCallBank], a                                  ; $5470: $ea $9a $c2
	pop  af                                          ; $5473: $f1
	call FarCall                                       ; $5474: $cd $62 $09
	ret                                              ; $5477: $c9


	ld   h, b                                        ; $5478: $60
	ld   l, c                                        ; $5479: $69
	push af                                          ; $547a: $f5
	ld   a, $34                                      ; $547b: $3e $34
	ld   [wFarCallAddr], a                                  ; $547d: $ea $98 $c2
	ld   a, $46                                      ; $5480: $3e $46
	ld   [wFarCallAddr+1], a                                  ; $5482: $ea $99 $c2
	ld   a, $3f                                      ; $5485: $3e $3f
	ld   [wFarCallBank], a                                  ; $5487: $ea $9a $c2
	pop  af                                          ; $548a: $f1
	call FarCall                                       ; $548b: $cd $62 $09
	ret                                              ; $548e: $c9


	ld   a, [$c654]                                  ; $548f: $fa $54 $c6
	call Func_1d3d                                       ; $5492: $cd $3d $1d
	ret  nz                                          ; $5495: $c0

	ld   b, $35                                      ; $5496: $06 $35
	ld   hl, $4888                                   ; $5498: $21 $88 $48
	ld   c, BANK(Palettes_AllWhite)                                      ; $549b: $0e $01
	ld   de, Palettes_AllWhite                                   ; $549d: $11 $00 $70
	call Call_030_54bc                               ; $54a0: $cd $bc $54
	call TurnOffLCD                                       ; $54a3: $cd $e3 $08
	xor  a                                           ; $54a6: $af
	call PlaySong                                       ; $54a7: $cd $92 $1a
	ld   hl, wIE                                   ; $54aa: $21 $0d $c2
	res  1, [hl]                                     ; $54ad: $cb $8e
	ld   a, [wMiniGamesReturnState]                                  ; $54af: $fa $99 $c6
	ld   [wGameState], a                                  ; $54b2: $ea $a0 $c2
	ld   a, [wMiniGamesReturnSubstate]                                  ; $54b5: $fa $9a $c6
	ld   [wGameSubstate], a                                  ; $54b8: $ea $a1 $c2
	ret                                              ; $54bb: $c9


Call_030_54bc:
	ld   a, c                                        ; $54bc: $79
	push af                                          ; $54bd: $f5
	push de                                          ; $54be: $d5
	xor  a                                           ; $54bf: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $54c0: $ea $62 $c3
	ld   a, $40                                      ; $54c3: $3e $40
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $54c5: $ea $63 $c3
	ld   a, $03                                      ; $54c8: $3e $03
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $54ca: $cd $48 $07
	ld   a, $08                                      ; $54cd: $3e $08

jr_030_54cf:
	push af                                          ; $54cf: $f5
	ld   b, $00                                      ; $54d0: $06 $00
	ld   c, $40                                      ; $54d2: $0e $40
	call FadePalettesAndSetRangeToUpdate                                       ; $54d4: $cd $32 $08
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $54d7: $cf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $54d8: $cf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $54d9: $cf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $54da: $cf
	pop  af                                          ; $54db: $f1
	dec  a                                           ; $54dc: $3d
	jr   nz, jr_030_54cf                             ; $54dd: $20 $f0

	pop  hl                                          ; $54df: $e1
	pop  af                                          ; $54e0: $f1
	ld   de, wBGPalettes                                   ; $54e1: $11 $de $c2
	ld   bc, $0080                                   ; $54e4: $01 $80 $00
	call FarMemCopy                                       ; $54e7: $cd $b2 $09
	ld   bc, $003f                                   ; $54ea: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $54ed: $cd $aa $04
	ret                                              ; $54f0: $c9


LCDCFunc01::
	ldh  a, [rLY]                                    ; $54f1: $f0 $44
	cp   $37                                         ; $54f3: $fe $37
	jr   nz, jr_030_550e                             ; $54f5: $20 $17

jr_030_54f7:
	ldh  a, [rSTAT]                                  ; $54f7: $f0 $41
	and  $03                                         ; $54f9: $e6 $03
	jr   z, jr_030_54f7                              ; $54fb: $28 $fa

jr_030_54fd:
	ldh  a, [rSTAT]                                  ; $54fd: $f0 $41
	and  $03                                         ; $54ff: $e6 $03
	jr   nz, jr_030_54fd                             ; $5501: $20 $fa

	ld   a, $ff                                      ; $5503: $3e $ff
	ldh  [rWX], a                                    ; $5505: $e0 $4b
	ld   a, $57                                      ; $5507: $3e $57
	ldh  [rLYC], a                                   ; $5509: $e0 $45
	jp   LCDCInterruptHandler.return                                       ; $550b: $c3 $4a $04


jr_030_550e:
	cp   $57                                         ; $550e: $fe $57
	jp   nz, LCDCInterruptHandler.return                                   ; $5510: $c2 $4a $04

jr_030_5513:
	ldh  a, [rSTAT]                                  ; $5513: $f0 $41
	and  $03                                         ; $5515: $e6 $03
	jr   z, jr_030_5513                              ; $5517: $28 $fa

jr_030_5519:
	ldh  a, [rSTAT]                                  ; $5519: $f0 $41
	and  $03                                         ; $551b: $e6 $03
	jr   nz, jr_030_5519                             ; $551d: $20 $fa

	ld   a, $07                                      ; $551f: $3e $07
	ldh  [rWX], a                                    ; $5521: $e0 $4b
	jp   LCDCInterruptHandler.return                                       ; $5523: $c3 $4a $04


Call_030_5526:
	ld   a, [wGameSubstate]                                  ; $5526: $fa $a1 $c2
	cp   $02                                         ; $5529: $fe $02
	jr   z, jr_030_5530                              ; $552b: $28 $03

	xor  a                                           ; $552d: $af
	jr   jr_030_553f                                 ; $552e: $18 $0f

jr_030_5530:
	ld   a, [wFrameCounter]                                  ; $5530: $fa $8f $c2
	and  $01                                         ; $5533: $e6 $01
	ret  nz                                          ; $5535: $c0

	ld   a, [wFrameCounter]                                  ; $5536: $fa $8f $c2
	and  $02                                         ; $5539: $e6 $02
	sla  a                                           ; $553b: $cb $27
	sla  a                                           ; $553d: $cb $27

jr_030_553f:
	ld   e, a                                        ; $553f: $5f
	ld   d, $00                                      ; $5540: $16 $00
	ld   hl, $4888                                   ; $5542: $21 $88 $48
	add  hl, de                                      ; $5545: $19
	ld   a, $35                                      ; $5546: $3e $35
	ld   bc, $0001                                   ; $5548: $01 $01 $00
	call $062c                                       ; $554b: $cd $2c $06
	ret                                              ; $554e: $c9


Call_030_554f:
	ld   a, [$c69e]                                  ; $554f: $fa $9e $c6
	ld   e, a                                        ; $5552: $5f
	ld   d, $00                                      ; $5553: $16 $00
	ld   hl, $c6a3                                   ; $5555: $21 $a3 $c6
	add  hl, de                                      ; $5558: $19
	ld   a, [hl]                                     ; $5559: $7e
	ld   e, a                                        ; $555a: $5f
	ld   d, $00                                      ; $555b: $16 $00
	sla  e                                           ; $555d: $cb $23
	rl   d                                           ; $555f: $cb $12
	ld   hl, $5587                                   ; $5561: $21 $87 $55
	add  hl, de                                      ; $5564: $19
	ld   a, [hl+]                                    ; $5565: $2a
	ld   h, [hl]                                     ; $5566: $66
	ld   l, a                                        ; $5567: $6f
	ld   a, [hl+]                                    ; $5568: $2a
	ld   [$c6ac], a                                  ; $5569: $ea $ac $c6
	ld   a, [hl+]                                    ; $556c: $2a
	ld   [$c6ad], a                                  ; $556d: $ea $ad $c6
	ld   a, l                                        ; $5570: $7d
	ld   [$c6aa], a                                  ; $5571: $ea $aa $c6
	ld   a, h                                        ; $5574: $7c
	ld   [$c6ab], a                                  ; $5575: $ea $ab $c6
	ld   bc, $7964                                   ; $5578: $01 $64 $79
	ld   a, $0b                                      ; $557b: $3e $0b
	ld   [wSpriteGroup], a                                  ; $557d: $ea $1a $c2
	ld   a, [$c6ad]                                  ; $5580: $fa $ad $c6
	call LoadSpriteFromMainTable                                       ; $5583: $cd $16 $0e
	ret                                              ; $5586: $c9


	sub  e                                           ; $5587: $93
	ld   d, l                                        ; $5588: $55
	sbc  d                                           ; $5589: $9a
	ld   d, l                                        ; $558a: $55
	and  c                                           ; $558b: $a1
	ld   d, l                                        ; $558c: $55
	and  [hl]                                        ; $558d: $a6
	ld   d, l                                        ; $558e: $55
	xor  l                                           ; $558f: $ad
	ld   d, l                                        ; $5590: $55
	cp   [hl]                                        ; $5591: $be
	ld   d, l                                        ; $5592: $55
	jr   nz, jr_030_55c1                             ; $5593: $20 $2c

	jr   nz, @+$2f                                   ; $5595: $20 $2d

	jr   nz, jr_030_55c5                             ; $5597: $20 $2c

	nop                                              ; $5599: $00
	ld   a, [hl+]                                    ; $559a: $2a
	ld   l, $0a                                      ; $559b: $2e $0a
	cpl                                              ; $559d: $2f
	jr   nc, @+$32                                   ; $559e: $30 $30

	nop                                              ; $55a0: $00
	jr   nc, jr_030_55d4                             ; $55a1: $30 $31

	jr   nc, jr_030_55d7                             ; $55a3: $30 $32

	nop                                              ; $55a5: $00
	jr   nz, @+$35                                   ; $55a6: $20 $33

	db   $10                                         ; $55a8: $10
	inc  [hl]                                        ; $55a9: $34
	jr   nc, @+$37                                   ; $55aa: $30 $35

	nop                                              ; $55ac: $00
	jr   nc, @+$38                                   ; $55ad: $30 $36

	jr   nc, @+$39                                   ; $55af: $30 $37

	inc  b                                           ; $55b1: $04
	ld   b, c                                        ; $55b2: $41
	inc  b                                           ; $55b3: $04
	ld   b, d                                        ; $55b4: $42
	inc  b                                           ; $55b5: $04
	ld   b, e                                        ; $55b6: $43
	inc  b                                           ; $55b7: $04
	ld   b, d                                        ; $55b8: $42
	inc  b                                           ; $55b9: $04
	ld   b, c                                        ; $55ba: $41
	inc  e                                           ; $55bb: $1c
	scf                                              ; $55bc: $37
	nop                                              ; $55bd: $00
	jr   nz, @+$3a                                   ; $55be: $20 $38

	inc  b                                           ; $55c0: $04

jr_030_55c1:
	add  hl, sp                                      ; $55c1: $39
	ld   [$043a], sp                                 ; $55c2: $08 $3a $04

jr_030_55c5:
	add  hl, sp                                      ; $55c5: $39
	jr   nc, @+$3a                                   ; $55c6: $30 $38

	nop                                              ; $55c8: $00

Call_030_55c9:
	ld   hl, $c6ac                                   ; $55c9: $21 $ac $c6
	dec  [hl]                                        ; $55cc: $35
	jr   nz, jr_030_55ee                             ; $55cd: $20 $1f

	ld   hl, $c6aa                                   ; $55cf: $21 $aa $c6
	ld   a, [hl+]                                    ; $55d2: $2a
	ld   h, [hl]                                     ; $55d3: $66

jr_030_55d4:
	ld   l, a                                        ; $55d4: $6f
	ld   a, [hl+]                                    ; $55d5: $2a
	or   a                                           ; $55d6: $b7

jr_030_55d7:
	jr   nz, jr_030_55df                             ; $55d7: $20 $06

	ld   hl, wGameSubstate                                   ; $55d9: $21 $a1 $c2
	inc  [hl]                                        ; $55dc: $34
	jr   jr_030_55ee                                 ; $55dd: $18 $0f

jr_030_55df:
	ld   [$c6ac], a                                  ; $55df: $ea $ac $c6
	ld   a, [hl+]                                    ; $55e2: $2a
	ld   [$c6ad], a                                  ; $55e3: $ea $ad $c6
	ld   a, l                                        ; $55e6: $7d
	ld   [$c6aa], a                                  ; $55e7: $ea $aa $c6
	ld   a, h                                        ; $55ea: $7c
	ld   [$c6ab], a                                  ; $55eb: $ea $ab $c6

jr_030_55ee:
	ld   bc, $7964                                   ; $55ee: $01 $64 $79
	ld   a, $0b                                      ; $55f1: $3e $0b
	ld   [wSpriteGroup], a                                  ; $55f3: $ea $1a $c2
	ld   a, [$c6ad]                                  ; $55f6: $fa $ad $c6
	call LoadSpriteFromMainTable                                       ; $55f9: $cd $16 $0e
	ret                                              ; $55fc: $c9


Call_030_55fd:
	ld   a, $0b                                      ; $55fd: $3e $0b
	ld   [wSpriteGroup], a                                  ; $55ff: $ea $1a $c2
	ld   hl, $c69b                                   ; $5602: $21 $9b $c6
	dec  [hl]                                        ; $5605: $35
	jr   nz, jr_030_5621                             ; $5606: $20 $19

	ld   a, $08                                      ; $5608: $3e $08
	ld   [hl], a                                     ; $560a: $77
	ld   hl, $c69c                                   ; $560b: $21 $9c $c6
	ld   a, [hl]                                     ; $560e: $7e
	inc  a                                           ; $560f: $3c
	cp   $06                                         ; $5610: $fe $06
	jr   c, jr_030_5615                              ; $5612: $38 $01

	xor  a                                           ; $5614: $af

jr_030_5615:
	ld   [hl], a                                     ; $5615: $77
	ld   e, a                                        ; $5616: $5f
	ld   d, $00                                      ; $5617: $16 $00
	ld   hl, $5642                                   ; $5619: $21 $42 $56
	add  hl, de                                      ; $561c: $19
	ld   a, [hl]                                     ; $561d: $7e
	ld   [$c69d], a                                  ; $561e: $ea $9d $c6

jr_030_5621:
	ld   a, [$c69d]                                  ; $5621: $fa $9d $c6
	ld   c, a                                        ; $5624: $4f
	ld   a, $24                                      ; $5625: $3e $24
	sub  c                                           ; $5627: $91
	ld   c, a                                        ; $5628: $4f
	ld   b, $50                                      ; $5629: $06 $50
	ld   hl, $5648                                   ; $562b: $21 $48 $56
	ld   a, [hl+]                                    ; $562e: $2a
	push hl                                          ; $562f: $e5
	call LoadSpriteFromMainTable                                       ; $5630: $cd $16 $0e
	pop  hl                                          ; $5633: $e1
	ld   a, [$c69d]                                  ; $5634: $fa $9d $c6
	ld   c, $5c                                      ; $5637: $0e $5c
	add  c                                           ; $5639: $81
	ld   c, a                                        ; $563a: $4f
	ld   b, $50                                      ; $563b: $06 $50
	ld   a, [hl]                                     ; $563d: $7e
	call LoadSpriteFromMainTable                                       ; $563e: $cd $16 $0e
	ret                                              ; $5641: $c9


	nop                                              ; $5642: $00
	ld   bc, $0302                                   ; $5643: $01 $02 $03
	ld   [bc], a                                     ; $5646: $02
	ld   bc, $2a28                                   ; $5647: $01 $28 $2a


; H - return state
; L - return substate
SetMiniGamesState::
; Set state to return to
	ld   a, h                                                       ; $564a
	ld   [wMiniGamesReturnState], a                                 ; $564b
	ld   a, l                                                       ; $564e
	ld   [wMiniGamesReturnSubstate], a                              ; $564f

; Then set mini-games state
	ld   a, GS_MINI_GAMES                                           ; $5652
	ld   [wGameState], a                                            ; $5654
	ld   a, $00                                                     ; $5657
	ld   [wGameSubstate], a                                         ; $5659
	ret                                                             ; $565c


Call_030_565d:
	ld   a, [$c69e]                                  ; $565d: $fa $9e $c6
	ld   e, a                                        ; $5660: $5f
	ld   d, $00                                      ; $5661: $16 $00
	ld   hl, $c6a3                                   ; $5663: $21 $a3 $c6
	add  hl, de                                      ; $5666: $19
	ld   a, [hl]                                     ; $5667: $7e
	ld   e, a                                        ; $5668: $5f
	ld   d, $00                                      ; $5669: $16 $00
	ld   hl, $5674                                   ; $566b: $21 $74 $56
	add  hl, de                                      ; $566e: $19
	ld   a, [hl]                                     ; $566f: $7e
	call PlaySong                                       ; $5670: $cd $92 $1a
	ret                                              ; $5673: $c9


	ld   b, $07                                      ; $5674: $06 $07
	ld   [$0b0a], sp                                 ; $5676: $08 $0a $0b
	add  hl, bc                                      ; $5679: $09

Call_030_567a:
	ld   a, $0b                                      ; $567a: $3e $0b
	ld   [wSpriteGroup], a                                  ; $567c: $ea $1a $c2
	ld   a, [$c69e]                                  ; $567f: $fa $9e $c6
	ld   e, a                                        ; $5682: $5f
	ld   d, $00                                      ; $5683: $16 $00
	ld   hl, $c6a3                                   ; $5685: $21 $a3 $c6
	add  hl, de                                      ; $5688: $19
	ld   a, [hl]                                     ; $5689: $7e
	ld   e, a                                        ; $568a: $5f
	ld   d, $00                                      ; $568b: $16 $00
	ld   hl, $5699                                   ; $568d: $21 $99 $56
	add  hl, de                                      ; $5690: $19
	ld   a, [hl]                                     ; $5691: $7e
	ld   bc, $7964                                   ; $5692: $01 $64 $79
	call LoadSpriteFromMainTable                                       ; $5695: $cd $16 $0e
	ret                                              ; $5698: $c9


	dec  sp                                          ; $5699: $3b
	inc  a                                           ; $569a: $3c
	dec  a                                           ; $569b: $3d
	ld   a, $3f                                      ; $569c: $3e $3f
	ld   b, b                                        ; $569e: $40


GameState04_IrisMiniGameMain::
	ld   a, [wGameSubstate]                                  ; $569f: $fa $a1 $c2
	rst  JumpTable                                         ; $56a2: $df
	dw IrisMiniGameMainSubstate0
	dw $57a3
	dw $57bd
	dw $57ec
	dw $5816
	dw $583f


IrisMiniGameMainSubstate0:
	call TurnOffLCD                                       ; $56af: $cd $e3 $08
	call ClearDisplayRegsAllowVBlankInt                                       ; $56b2: $cd $59 $0b
	ld   a, LCDCF_OFF|LCDCF_OBJ16|LCDCF_OBJON|LCDCF_BGON                                      ; $56b5: $3e $07
	ld   [wLCDC], a                                  ; $56b7: $ea $03 $c2
	ld   a, $ff                                      ; $56ba: $3e $ff
	ld   [wInGameInputsEnabled], a                                  ; $56bc: $ea $0e $c2

;
	xor  a                                           ; $56bf: $af
	ldh  [rVBK], a                                   ; $56c0: $e0 $4f
	ld   a, $33                                      ; $56c2: $3e $33
	ld   hl, $8000                                   ; $56c4: $21 $00 $80
	ld   de, $4000                                   ; $56c7: $11 $00 $40
	call RLEXorCopy                                       ; $56ca: $cd $d2 $09

;
	ld   a, $01                                      ; $56cd: $3e $01
	ldh  [rVBK], a                                   ; $56cf: $e0 $4f
	ld   a, $33                                      ; $56d1: $3e $33
	ld   hl, $8000                                   ; $56d3: $21 $00 $80
	ld   de, $6948                                   ; $56d6: $11 $48 $69
if def(VWF)
	call IrisMiniGameMainBank1_8000hHook
else
	call RLEXorCopy                                       ; $56d9: $cd $d2 $09
endc

;
	ld   a, $01                                      ; $56dc: $3e $01
	ldh  [rVBK], a                                   ; $56de: $e0 $4f

	ld   hl, $9800                                   ; $56e0: $21 $00 $98
	ld   a, $34                                      ; $56e3: $3e $34
	ld   de, $5982                                   ; $56e5: $11 $82 $59
	ld   bc, $141b                                   ; $56e8: $01 $1b $14
if def(VWF)
	call IrisMiniGameMainTileAttrHook
else
	call FarCopyLayout                                       ; $56eb: $cd $2c $0b
endc

;
	xor  a                                           ; $56ee: $af
	ldh  [rVBK], a                                   ; $56ef: $e0 $4f
	ld   hl, $9800                                   ; $56f1: $21 $00 $98
	ld   a, $34                                      ; $56f4: $3e $34
if def(VWF)
	call IrisMiniGameMainTileMapHook
else
	call FarCopyLayout                                       ; $56f6: $cd $2c $0b
endc

;
	ld   a, [wWramBank]                                  ; $56f9: $fa $93 $c2
	push af                                          ; $56fc: $f5
	ld   a, $05                                      ; $56fd: $3e $05
	ld   [wWramBank], a                                  ; $56ff: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5702: $e0 $70
	xor  a                                           ; $5704: $af
	ldh  [rVBK], a                                   ; $5705: $e0 $4f
	ld   hl, $99e0                                   ; $5707: $21 $e0 $99
	ld   de, $d000                                   ; $570a: $11 $00 $d0
	ld   bc, $0040                                   ; $570d: $01 $40 $00
	call MemCopy                                       ; $5710: $cd $a9 $09
	ld   hl, $9880                                   ; $5713: $21 $80 $98
	ld   de, $d040                                   ; $5716: $11 $40 $d0
	ld   bc, $0060                                   ; $5719: $01 $60 $00
	call MemCopy                                       ; $571c: $cd $a9 $09
	ld   a, $01                                      ; $571f: $3e $01
	ldh  [rVBK], a                                   ; $5721: $e0 $4f
	ld   hl, $9880                                   ; $5723: $21 $80 $98
	ld   de, $d0a0                                   ; $5726: $11 $a0 $d0
	ld   bc, $0060                                   ; $5729: $01 $60 $00
	call MemCopy                                       ; $572c: $cd $a9 $09
	xor  a                                           ; $572f: $af
	ldh  [rVBK], a                                   ; $5730: $e0 $4f
	ld   hl, $9a40                                   ; $5732: $21 $40 $9a
	ld   de, $d100                                   ; $5735: $11 $00 $d1
	ld   bc, $0120                                   ; $5738: $01 $20 $01
	call MemCopy                                       ; $573b: $cd $a9 $09
	ld   a, $01                                      ; $573e: $3e $01
	ldh  [rVBK], a                                   ; $5740: $e0 $4f
	ld   hl, $9a40                                   ; $5742: $21 $40 $9a
	ld   de, $d220                                   ; $5745: $11 $20 $d2
	ld   bc, $0120                                   ; $5748: $01 $20 $01
	call MemCopy                                       ; $574b: $cd $a9 $09
	pop  af                                          ; $574e: $f1
	ld   [wWramBank], a                                  ; $574f: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5752: $e0 $70
	ld   a, $60                                      ; $5754: $3e $60
	ld   [wRandomNumRange], a                                  ; $5756: $ea $a5 $c2
	call UpdateSramRandomSeed                                       ; $5759: $cd $70 $0c
	xor  a                                           ; $575c: $af
	ld   [$c71f], a                                  ; $575d: $ea $1f $c7
	ld   [$c723], a                                  ; $5760: $ea $23 $c7
	ld   a, $01                                      ; $5763: $3e $01
	ld   [$c721], a                                  ; $5765: $ea $21 $c7
	ld   a, $2d                                      ; $5768: $3e $2d
	ld   [$c722], a                                  ; $576a: $ea $22 $c7
	call ClearOam                                       ; $576d: $cd $d7 $0d
	call Call_030_5911                               ; $5770: $cd $11 $59
	call Call_030_5b6e                               ; $5773: $cd $6e $5b
	call Call_030_58d5                               ; $5776: $cd $d5 $58
	call Call_030_613e                               ; $5779: $cd $3e $61
	ld   a, $01                                      ; $577c: $3e $01
	ld   [$c723], a                                  ; $577e: $ea $23 $c7
	call Call_030_60c1                               ; $5781: $cd $c1 $60
	ld   a, $0e                                      ; $5784: $3e $0e
	call PlaySong                                       ; $5786: $cd $92 $1a
	ld   a, $07                                      ; $5789: $3e $07
	call SafeSetAudVolForMultipleChannels                                       ; $578b: $cd $e0 $1c
	call TurnOnLCD                                       ; $578e: $cd $09 $09
	ld   b, BANK(Palettes_AllWhite)                                      ; $5791: $06 $01
	ld   hl, Palettes_AllWhite                                   ; $5793: $21 $00 $70
	ld   c, $35                                      ; $5796: $0e $35
	ld   de, $4808                                   ; $5798: $11 $08 $48
	call Call_030_58a0                               ; $579b: $cd $a0 $58
	ld   hl, wGameSubstate                                   ; $579e: $21 $a1 $c2
	inc  [hl]                                        ; $57a1: $34
	ret                                              ; $57a2: $c9


	ld   a, $1e                                      ; $57a3: $3e $1e
	call Call_030_6208                               ; $57a5: $cd $08 $62
	call Call_030_622e                               ; $57a8: $cd $2e $62
	ld   a, $5a                                      ; $57ab: $3e $5a
	call Call_030_6208                               ; $57ad: $cd $08 $62
	call Call_030_624d                               ; $57b0: $cd $4d $62
	ld   a, $1e                                      ; $57b3: $3e $1e
	ld   [$c724], a                                  ; $57b5: $ea $24 $c7
	ld   hl, wGameSubstate                                   ; $57b8: $21 $a1 $c2
	inc  [hl]                                        ; $57bb: $34
	ret                                              ; $57bc: $c9


	call ClearOam                                       ; $57bd: $cd $d7 $0d
	call Call_030_5bb4                               ; $57c0: $cd $b4 $5b
	call Call_030_594b                               ; $57c3: $cd $4b $59
	call Call_030_58e3                               ; $57c6: $cd $e3 $58
	call Call_030_614f                               ; $57c9: $cd $4f $61
	call Call_030_60b2                               ; $57cc: $cd $b2 $60
	call Call_030_60c1                               ; $57cf: $cd $c1 $60
	call Call_030_62a2                               ; $57d2: $cd $a2 $62
	ld   a, [$c722]                                  ; $57d5: $fa $22 $c7
	or   a                                           ; $57d8: $b7
	ret  nz                                          ; $57d9: $c0

	ld   a, $1e                                      ; $57da: $3e $1e
	ld   [$c725], a                                  ; $57dc: $ea $25 $c7
	ld   a, $0a                                      ; $57df: $3e $0a
	ld   [$c726], a                                  ; $57e1: $ea $26 $c7
	call Call_030_62af                               ; $57e4: $cd $af $62
	ld   hl, wGameSubstate                                   ; $57e7: $21 $a1 $c2
	inc  [hl]                                        ; $57ea: $34
	ret                                              ; $57eb: $c9


	call ClearOam                                       ; $57ec: $cd $d7 $0d
	call Call_030_5bb4                               ; $57ef: $cd $b4 $5b
	call Call_030_594b                               ; $57f2: $cd $4b $59
	call Call_030_62ee                               ; $57f5: $cd $ee $62
	call $6316                                       ; $57f8: $cd $16 $63
	ld   hl, $c725                                   ; $57fb: $21 $25 $c7
	dec  [hl]                                        ; $57fe: $35
	ret  nz                                          ; $57ff: $c0

	ld   [hl], $1e                                   ; $5800: $36 $1e
	ld   hl, $c726                                   ; $5802: $21 $26 $c7
	dec  [hl]                                        ; $5805: $35
	jr   z, jr_030_5811                              ; $5806: $28 $09

	ld   a, [hl]                                     ; $5808: $7e
	and  $01                                         ; $5809: $e6 $01
	jp   z, Jump_030_626c                            ; $580b: $ca $6c $62

	jp   Jump_030_620f                               ; $580e: $c3 $0f $62


jr_030_5811:
	ld   hl, wGameSubstate                                   ; $5811: $21 $a1 $c2
	inc  [hl]                                        ; $5814: $34
	ret                                              ; $5815: $c9


	call ClearOam                                       ; $5816: $cd $d7 $0d
	call Call_030_5bb4                               ; $5819: $cd $b4 $5b
	call Call_030_594b                               ; $581c: $cd $4b $59
	call Call_030_62ee                               ; $581f: $cd $ee $62
	call $6316                                       ; $5822: $cd $16 $63
	ld   b, $02                                      ; $5825: $06 $02
	ld   a, [$cb1d]                                  ; $5827: $fa $1d $cb
	or   a                                           ; $582a: $b7
	jr   z, jr_030_582f                              ; $582b: $28 $02

	ld   b, $04                                      ; $582d: $06 $04

jr_030_582f:
	ld   a, [$c720]                                  ; $582f: $fa $20 $c7
	cp   b                                           ; $5832: $b8
	jr   c, jr_030_583a                              ; $5833: $38 $05

	ld   a, $50                                      ; $5835: $3e $50
	call PlaySampledSound                                       ; $5837: $cd $64 $1b

jr_030_583a:
	ld   hl, wGameSubstate                                   ; $583a: $21 $a1 $c2
	inc  [hl]                                        ; $583d: $34
	ret                                              ; $583e: $c9


	ld   b, $35                                      ; $583f: $06 $35
	ld   hl, $4808                                   ; $5841: $21 $08 $48
	ld   c, BANK(Palettes_AllWhite)                                      ; $5844: $0e $01
	ld   de, Palettes_AllWhite                                   ; $5846: $11 $00 $70
	call Call_030_58a0                               ; $5849: $cd $a0 $58
	call TurnOffLCD                                       ; $584c: $cd $e3 $08
	xor  a                                           ; $584f: $af
	call PlaySong                                       ; $5850: $cd $92 $1a
	ld   a, [$cb1d]                                  ; $5853: $fa $1d $cb
	or   a                                           ; $5856: $b7
	jr   nz, jr_030_586c                             ; $5857: $20 $13

	ld   a, [$c720]                                  ; $5859: $fa $20 $c7
	ld   [wBattleWon], a                                  ; $585c: $ea $21 $cb
	ld   a, [$c71c]                                  ; $585f: $fa $1c $c7
	ld   [wGameState], a                                  ; $5862: $ea $a0 $c2
	ld   a, [$c71d]                                  ; $5865: $fa $1d $c7
	ld   [wGameSubstate], a                                  ; $5868: $ea $a1 $c2
	ret                                              ; $586b: $c9


jr_030_586c:
	ld   de, $c986                                   ; $586c: $11 $86 $c9
	ld   a, [$c71f]                                  ; $586f: $fa $1f $c7
	ld   [de], a                                     ; $5872: $12
	inc  de                                          ; $5873: $13
	xor  a                                           ; $5874: $af
	ld   [de], a                                     ; $5875: $12
	ld   a, [$c71c]                                  ; $5876: $fa $1c $c7
	ld   d, a                                        ; $5879: $57
	ld   a, [$c71d]                                  ; $587a: $fa $1d $c7
	ld   e, a                                        ; $587d: $5f
	ld   a, [$c71e]                                  ; $587e: $fa $1e $c7
	ld   c, a                                        ; $5881: $4f
	ld   b, $03                                      ; $5882: $06 $03
	ld   a, [$c720]                                  ; $5884: $fa $20 $c7
	ld   h, $04                                      ; $5887: $26 $04
	ld   l, $00                                      ; $5889: $2e $00
	push af                                          ; $588b: $f5
	ld   a, $3c                                      ; $588c: $3e $3c
	ld   [wFarCallAddr], a                                  ; $588e: $ea $98 $c2
	ld   a, $55                                      ; $5891: $3e $55
	ld   [wFarCallAddr+1], a                                  ; $5893: $ea $99 $c2
	ld   a, $3e                                      ; $5896: $3e $3e
	ld   [wFarCallBank], a                                  ; $5898: $ea $9a $c2
	pop  af                                          ; $589b: $f1
	call FarCall                                       ; $589c: $cd $62 $09
	ret                                              ; $589f: $c9


Call_030_58a0:
	ld   a, c                                        ; $58a0: $79
	push af                                          ; $58a1: $f5
	push de                                          ; $58a2: $d5
	xor  a                                           ; $58a3: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $58a4: $ea $62 $c3
	ld   a, $40                                      ; $58a7: $3e $40
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $58a9: $ea $63 $c3
	ld   a, $03                                      ; $58ac: $3e $03
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $58ae: $cd $48 $07
	ld   a, $08                                      ; $58b1: $3e $08

jr_030_58b3:
	push af                                          ; $58b3: $f5
	ld   b, $00                                      ; $58b4: $06 $00
	ld   c, $40                                      ; $58b6: $0e $40
	call FadePalettesAndSetRangeToUpdate                                       ; $58b8: $cd $32 $08
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $58bb: $cf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $58bc: $cf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $58bd: $cf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $58be: $cf
	pop  af                                          ; $58bf: $f1
	dec  a                                           ; $58c0: $3d
	jr   nz, jr_030_58b3                             ; $58c1: $20 $f0

	pop  hl                                          ; $58c3: $e1
	pop  af                                          ; $58c4: $f1
	ld   de, wBGPalettes                                   ; $58c5: $11 $de $c2
	ld   bc, $0080                                   ; $58c8: $01 $80 $00
	call FarMemCopy                                       ; $58cb: $cd $b2 $09
	ld   bc, $003f                                   ; $58ce: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $58d1: $cd $aa $04
	ret                                              ; $58d4: $c9


Call_030_58d5:
	ld   bc, $7747                                   ; $58d5: $01 $47 $77
	ld   a, $0b                                      ; $58d8: $3e $0b
	ld   [wSpriteGroup], a                                  ; $58da: $ea $1a $c2
	ld   a, $0d                                      ; $58dd: $3e $0d
	call LoadSpriteFromMainTable                                       ; $58df: $cd $16 $0e
	ret                                              ; $58e2: $c9


Call_030_58e3:
	ld   a, [$c731]                                  ; $58e3: $fa $31 $c7
	cp   $5b                                         ; $58e6: $fe $5b
	jr   nc, jr_030_58f3                             ; $58e8: $30 $09

	ld   a, $0b                                      ; $58ea: $3e $0b
	ld   [wSpriteGroup], a                                  ; $58ec: $ea $1a $c2
	ld   a, $10                                      ; $58ef: $3e $10
	jr   jr_030_590a                                 ; $58f1: $18 $17

jr_030_58f3:
	ld   hl, $c735                                   ; $58f3: $21 $35 $c7
	ld   a, [hl+]                                    ; $58f6: $2a
	or   [hl]                                        ; $58f7: $b6
	jr   z, jr_030_5903                              ; $58f8: $28 $09

	ld   a, $0b                                      ; $58fa: $3e $0b
	ld   [wSpriteGroup], a                                  ; $58fc: $ea $1a $c2
	ld   a, $0f                                      ; $58ff: $3e $0f
	jr   jr_030_590a                                 ; $5901: $18 $07

jr_030_5903:
	ld   a, $0b                                      ; $5903: $3e $0b
	ld   [wSpriteGroup], a                                  ; $5905: $ea $1a $c2
	ld   a, $0e                                      ; $5908: $3e $0e

jr_030_590a:
	ld   bc, $7747                                   ; $590a: $01 $47 $77
	call LoadSpriteFromMainTable                                       ; $590d: $cd $16 $0e
	ret                                              ; $5910: $c9


Call_030_5911:
	ld   bc, $545b                                   ; $5911: $01 $5b $54
	ld   hl, $c72e                                   ; $5914: $21 $2e $c7
	xor  a                                           ; $5917: $af
	ld   [hl+], a                                    ; $5918: $22
	ld   [hl], b                                     ; $5919: $70
	ld   hl, $c730                                   ; $591a: $21 $30 $c7
	xor  a                                           ; $591d: $af
	ld   [hl+], a                                    ; $591e: $22
	ld   [hl], c                                     ; $591f: $71
	ld   a, $0b                                      ; $5920: $3e $0b
	ld   [wSpriteGroup], a                                  ; $5922: $ea $1a $c2
	ld   a, $04                                      ; $5925: $3e $04
	call LoadSpriteFromMainTable                                       ; $5927: $cd $16 $0e
	ld   bc, $4b52                                   ; $592a: $01 $52 $4b
	ld   a, $0b                                      ; $592d: $3e $0b
	ld   [wSpriteGroup], a                                  ; $592f: $ea $1a $c2
	ld   a, $09                                      ; $5932: $3e $09
	call LoadSpriteFromMainTable                                       ; $5934: $cd $16 $0e
	xor  a                                           ; $5937: $af
	ld   [$c732], a                                  ; $5938: $ea $32 $c7
	ld   [$c733], a                                  ; $593b: $ea $33 $c7
	ld   [$c734], a                                  ; $593e: $ea $34 $c7
	ld   [$c735], a                                  ; $5941: $ea $35 $c7
	ld   [$c736], a                                  ; $5944: $ea $36 $c7
	call Call_030_5999                               ; $5947: $cd $99 $59
	ret                                              ; $594a: $c9


Call_030_594b:
	ld   hl, $5956                                   ; $594b: $21 $56 $59
	push hl                                          ; $594e: $e5
	ld   hl, $c737                                   ; $594f: $21 $37 $c7
	ld   a, [hl+]                                    ; $5952: $2a
	ld   h, [hl]                                     ; $5953: $66
	ld   l, a                                        ; $5954: $6f
	jp   hl                                          ; $5955: $e9


	ld   a, [$c72f]                                  ; $5956: $fa $2f $c7
	ld   b, a                                        ; $5959: $47
	ld   a, [$c731]                                  ; $595a: $fa $31 $c7
	ld   c, a                                        ; $595d: $4f
	ld   a, $0b                                      ; $595e: $3e $0b
	ld   [wSpriteGroup], a                                  ; $5960: $ea $1a $c2
	ld   a, [$c73c]                                  ; $5963: $fa $3c $c7
	call LoadSpriteFromMainTable                                       ; $5966: $cd $16 $0e
	ld   a, [$c72f]                                  ; $5969: $fa $2f $c7
	sub  $09                                         ; $596c: $d6 $09
	ld   b, a                                        ; $596e: $47
	ld   c, $52                                      ; $596f: $0e $52
	ld   a, [$c731]                                  ; $5971: $fa $31 $c7
	cp   $28                                         ; $5974: $fe $28
	jr   nc, jr_030_5981                             ; $5976: $30 $09

	ld   a, $0b                                      ; $5978: $3e $0b
	ld   [wSpriteGroup], a                                  ; $597a: $ea $1a $c2
	ld   a, $07                                      ; $597d: $3e $07
	jr   jr_030_5995                                 ; $597f: $18 $14

jr_030_5981:
	cp   $41                                         ; $5981: $fe $41
	jr   nc, jr_030_598e                             ; $5983: $30 $09

	ld   a, $0b                                      ; $5985: $3e $0b
	ld   [wSpriteGroup], a                                  ; $5987: $ea $1a $c2
	ld   a, $08                                      ; $598a: $3e $08
	jr   jr_030_5995                                 ; $598c: $18 $07

jr_030_598e:
	ld   a, $0b                                      ; $598e: $3e $0b
	ld   [wSpriteGroup], a                                  ; $5990: $ea $1a $c2
	ld   a, $09                                      ; $5993: $3e $09

jr_030_5995:
	call LoadSpriteFromMainTable                                       ; $5995: $cd $16 $0e
	ret                                              ; $5998: $c9


Call_030_5999:
Jump_030_5999:
	ld   a, $b7                                      ; $5999: $3e $b7
	ld   [$c737], a                                  ; $599b: $ea $37 $c7
	ld   a, $59                                      ; $599e: $3e $59
	ld   [$c738], a                                  ; $59a0: $ea $38 $c7
	ld   hl, $5a38                                   ; $59a3: $21 $38 $5a
	ld   a, [hl+]                                    ; $59a6: $2a
	ld   [$c73b], a                                  ; $59a7: $ea $3b $c7
	ld   a, [hl+]                                    ; $59aa: $2a
	ld   [$c73c], a                                  ; $59ab: $ea $3c $c7
	ld   a, l                                        ; $59ae: $7d
	ld   [$c739], a                                  ; $59af: $ea $39 $c7
	ld   a, h                                        ; $59b2: $7c
	ld   [$c73a], a                                  ; $59b3: $ea $3a $c7
	ret                                              ; $59b6: $c9


	ld   a, [wGameSubstate]                                  ; $59b7: $fa $a1 $c2
	cp   $02                                         ; $59ba: $fe $02
	jp   nz, Jump_030_5a41                           ; $59bc: $c2 $41 $5a

	ld   hl, wInGameButtonsHeld                                   ; $59bf: $21 $0f $c2
	bit  5, [hl]                                     ; $59c2: $cb $6e
	jr   z, jr_030_59e2                              ; $59c4: $28 $1c

	ld   a, [$c735]                                  ; $59c6: $fa $35 $c7
	sub  $18                                         ; $59c9: $d6 $18
	ld   [$c735], a                                  ; $59cb: $ea $35 $c7
	ld   a, [$c736]                                  ; $59ce: $fa $36 $c7
	sbc  $00                                         ; $59d1: $de $00
	bit  7, a                                        ; $59d3: $cb $7f
	jr   z, jr_030_59dd                              ; $59d5: $28 $06

	cp   $fa                                         ; $59d7: $fe $fa
	jr   nc, jr_030_59dd                             ; $59d9: $30 $02

	ld   a, $fa                                      ; $59db: $3e $fa

jr_030_59dd:
	ld   [$c736], a                                  ; $59dd: $ea $36 $c7
	jr   jr_030_5a00                                 ; $59e0: $18 $1e

jr_030_59e2:
	bit  4, [hl]                                     ; $59e2: $cb $66
	jr   z, jr_030_5a00                              ; $59e4: $28 $1a

	ld   a, [$c735]                                  ; $59e6: $fa $35 $c7
	add  $18                                         ; $59e9: $c6 $18
	ld   [$c735], a                                  ; $59eb: $ea $35 $c7
	ld   a, [$c736]                                  ; $59ee: $fa $36 $c7
	adc  $00                                         ; $59f1: $ce $00
	bit  7, a                                        ; $59f3: $cb $7f
	jr   nz, jr_030_59fd                             ; $59f5: $20 $06

	cp   $06                                         ; $59f7: $fe $06
	jr   c, jr_030_59fd                              ; $59f9: $38 $02

	ld   a, $06                                      ; $59fb: $3e $06

jr_030_59fd:
	ld   [$c736], a                                  ; $59fd: $ea $36 $c7

jr_030_5a00:
	ld   hl, wInGameButtonsPressed                                   ; $5a00: $21 $10 $c2
	bit  0, [hl]                                     ; $5a03: $cb $46
	jr   z, jr_030_5a15                              ; $5a05: $28 $0e

	ld   a, [$c734]                                  ; $5a07: $fa $34 $c7
	add  $06                                         ; $5a0a: $c6 $06
	cp   $10                                         ; $5a0c: $fe $10
	jr   c, jr_030_5a12                              ; $5a0e: $38 $02

	ld   a, $10                                      ; $5a10: $3e $10

jr_030_5a12:
	ld   [$c734], a                                  ; $5a12: $ea $34 $c7

jr_030_5a15:
	call Call_030_5a9a                               ; $5a15: $cd $9a $5a
	ld   hl, $c73b                                   ; $5a18: $21 $3b $c7
	dec  [hl]                                        ; $5a1b: $35
	ret  nz                                          ; $5a1c: $c0

	ld   hl, $c739                                   ; $5a1d: $21 $39 $c7
	ld   a, [hl+]                                    ; $5a20: $2a
	ld   h, [hl]                                     ; $5a21: $66
	ld   l, a                                        ; $5a22: $6f
	ld   a, [hl+]                                    ; $5a23: $2a
	or   a                                           ; $5a24: $b7
	jp   z, Jump_030_5999                            ; $5a25: $ca $99 $59

	ld   [$c73b], a                                  ; $5a28: $ea $3b $c7
	ld   a, [hl+]                                    ; $5a2b: $2a
	ld   [$c73c], a                                  ; $5a2c: $ea $3c $c7
	ld   a, l                                        ; $5a2f: $7d
	ld   [$c739], a                                  ; $5a30: $ea $39 $c7
	ld   a, h                                        ; $5a33: $7c
	ld   [$c73a], a                                  ; $5a34: $ea $3a $c7
	ret                                              ; $5a37: $c9


	inc  b                                           ; $5a38: $04
	inc  b                                           ; $5a39: $04
	ld   [$0405], sp                                 ; $5a3a: $08 $05 $04
	inc  b                                           ; $5a3d: $04
	ld   [$0006], sp                                 ; $5a3e: $08 $06 $00

Jump_030_5a41:
	ld   a, $4c                                      ; $5a41: $3e $4c
	ld   [$c737], a                                  ; $5a43: $ea $37 $c7
	ld   a, $5a                                      ; $5a46: $3e $5a
	ld   [$c738], a                                  ; $5a48: $ea $38 $c7
	ret                                              ; $5a4b: $c9


	call Call_030_5a9a                               ; $5a4c: $cd $9a $5a
	ld   a, [$c731]                                  ; $5a4f: $fa $31 $c7
	cp   $5b                                         ; $5a52: $fe $5b
	ret  c                                           ; $5a54: $d8

	ld   a, $73                                      ; $5a55: $3e $73
	ld   [$c737], a                                  ; $5a57: $ea $37 $c7
	ld   a, $5a                                      ; $5a5a: $3e $5a
	ld   [$c738], a                                  ; $5a5c: $ea $38 $c7
	ld   hl, $5a91                                   ; $5a5f: $21 $91 $5a
	ld   a, [hl+]                                    ; $5a62: $2a
	ld   [$c73b], a                                  ; $5a63: $ea $3b $c7
	ld   a, [hl+]                                    ; $5a66: $2a
	ld   [$c73c], a                                  ; $5a67: $ea $3c $c7
	ld   a, l                                        ; $5a6a: $7d
	ld   [$c739], a                                  ; $5a6b: $ea $39 $c7
	ld   a, h                                        ; $5a6e: $7c
	ld   [$c73a], a                                  ; $5a6f: $ea $3a $c7
	ret                                              ; $5a72: $c9


	ld   hl, $c73b                                   ; $5a73: $21 $3b $c7
	dec  [hl]                                        ; $5a76: $35
	ret  nz                                          ; $5a77: $c0

	ld   hl, $c739                                   ; $5a78: $21 $39 $c7
	ld   a, [hl+]                                    ; $5a7b: $2a
	ld   h, [hl]                                     ; $5a7c: $66
	ld   l, a                                        ; $5a7d: $6f
	ld   a, [hl+]                                    ; $5a7e: $2a
	or   a                                           ; $5a7f: $b7
	ret  z                                           ; $5a80: $c8

	ld   [$c73b], a                                  ; $5a81: $ea $3b $c7
	ld   a, [hl+]                                    ; $5a84: $2a
	ld   [$c73c], a                                  ; $5a85: $ea $3c $c7
	ld   a, l                                        ; $5a88: $7d
	ld   [$c739], a                                  ; $5a89: $ea $39 $c7
	ld   a, h                                        ; $5a8c: $7c
	ld   [$c73a], a                                  ; $5a8d: $ea $3a $c7
	ret                                              ; $5a90: $c9


	inc  b                                           ; $5a91: $04
	inc  b                                           ; $5a92: $04
	inc  b                                           ; $5a93: $04
	ld   a, [bc]                                     ; $5a94: $0a
	inc  b                                           ; $5a95: $04
	dec  bc                                          ; $5a96: $0b
	inc  b                                           ; $5a97: $04
	inc  c                                           ; $5a98: $0c
	nop                                              ; $5a99: $00

Call_030_5a9a:
	ld   a, [$c735]                                  ; $5a9a: $fa $35 $c7
	ld   hl, $c72e                                   ; $5a9d: $21 $2e $c7
	add  [hl]                                        ; $5aa0: $86
	ld   [hl], a                                     ; $5aa1: $77
	ld   a, [$c736]                                  ; $5aa2: $fa $36 $c7
	ld   b, a                                        ; $5aa5: $47
	ld   a, [$c72f]                                  ; $5aa6: $fa $2f $c7
	adc  b                                           ; $5aa9: $88
	bit  7, b                                        ; $5aaa: $cb $78
	jr   z, jr_030_5ac4                              ; $5aac: $28 $16

	cp   $f0                                         ; $5aae: $fe $f0
	jr   nc, jr_030_5ab6                             ; $5ab0: $30 $04

	cp   $08                                         ; $5ab2: $fe $08
	jr   nc, jr_030_5ad4                             ; $5ab4: $30 $1e

jr_030_5ab6:
	xor  a                                           ; $5ab6: $af
	ld   [$c735], a                                  ; $5ab7: $ea $35 $c7
	ld   [$c736], a                                  ; $5aba: $ea $36 $c7
	ld   [$c72e], a                                  ; $5abd: $ea $2e $c7
	ld   a, $08                                      ; $5ac0: $3e $08
	jr   jr_030_5ad4                                 ; $5ac2: $18 $10

jr_030_5ac4:
	cp   $98                                         ; $5ac4: $fe $98
	jr   c, jr_030_5ad4                              ; $5ac6: $38 $0c

	xor  a                                           ; $5ac8: $af
	ld   [$c735], a                                  ; $5ac9: $ea $35 $c7
	ld   [$c736], a                                  ; $5acc: $ea $36 $c7
	ld   [$c72e], a                                  ; $5acf: $ea $2e $c7
	ld   a, $98                                      ; $5ad2: $3e $98

jr_030_5ad4:
	ld   [$c72f], a                                  ; $5ad4: $ea $2f $c7
	ld   a, [$c734]                                  ; $5ad7: $fa $34 $c7
	or   a                                           ; $5ada: $b7
	jr   z, jr_030_5afb                              ; $5adb: $28 $1e

	dec  a                                           ; $5add: $3d
	ld   [$c734], a                                  ; $5ade: $ea $34 $c7
	ld   a, [$c732]                                  ; $5ae1: $fa $32 $c7
	sub  $50                                         ; $5ae4: $d6 $50
	ld   [$c732], a                                  ; $5ae6: $ea $32 $c7
	ld   a, [$c733]                                  ; $5ae9: $fa $33 $c7
	sbc  $00                                         ; $5aec: $de $00
	bit  7, a                                        ; $5aee: $cb $7f
	jr   z, jr_030_5af8                              ; $5af0: $28 $06

	cp   $fd                                         ; $5af2: $fe $fd
	jr   nc, jr_030_5af8                             ; $5af4: $30 $02

	ld   a, $fd                                      ; $5af6: $3e $fd

jr_030_5af8:
	ld   [$c733], a                                  ; $5af8: $ea $33 $c7

jr_030_5afb:
	ld   bc, $0020                                   ; $5afb: $01 $20 $00
	ld   a, [$c731]                                  ; $5afe: $fa $31 $c7
	cp   $5b                                         ; $5b01: $fe $5b
	jr   c, jr_030_5b08                              ; $5b03: $38 $03

	ld   bc, $0000                                   ; $5b05: $01 $00 $00

jr_030_5b08:
	ld   a, [$c732]                                  ; $5b08: $fa $32 $c7
	add  c                                           ; $5b0b: $81
	ld   [$c732], a                                  ; $5b0c: $ea $32 $c7
	ld   a, [$c733]                                  ; $5b0f: $fa $33 $c7
	adc  b                                           ; $5b12: $88
	ld   [$c733], a                                  ; $5b13: $ea $33 $c7
	ld   a, [$c732]                                  ; $5b16: $fa $32 $c7
	ld   hl, $c730                                   ; $5b19: $21 $30 $c7
	add  [hl]                                        ; $5b1c: $86
	ld   [hl], a                                     ; $5b1d: $77
	ld   a, [$c733]                                  ; $5b1e: $fa $33 $c7
	ld   b, a                                        ; $5b21: $47
	ld   a, [$c731]                                  ; $5b22: $fa $31 $c7
	adc  b                                           ; $5b25: $88
	cp   $09                                         ; $5b26: $fe $09
	jr   nc, jr_030_5b30                             ; $5b28: $30 $06

	xor  a                                           ; $5b2a: $af
	ld   [$c730], a                                  ; $5b2b: $ea $30 $c7
	ld   a, $09                                      ; $5b2e: $3e $09

jr_030_5b30:
	cp   $5c                                         ; $5b30: $fe $5c
	jr   c, jr_030_5b3a                              ; $5b32: $38 $06

	xor  a                                           ; $5b34: $af
	ld   [$c730], a                                  ; $5b35: $ea $30 $c7
	ld   a, $5b                                      ; $5b38: $3e $5b

jr_030_5b3a:
	ld   [$c731], a                                  ; $5b3a: $ea $31 $c7
	ld   a, [$c731]                                  ; $5b3d: $fa $31 $c7
	cp   $5b                                         ; $5b40: $fe $5b
	jr   c, jr_030_5b6d                              ; $5b42: $38 $29

	ld   hl, $c735                                   ; $5b44: $21 $35 $c7
	ld   a, [hl+]                                    ; $5b47: $2a
	ld   c, a                                        ; $5b48: $4f
	ld   b, [hl]                                     ; $5b49: $46
	bit  7, b                                        ; $5b4a: $cb $78
	jr   nz, jr_030_5b5d                             ; $5b4c: $20 $0f

	ld   a, c                                        ; $5b4e: $79
	sub  $0c                                         ; $5b4f: $d6 $0c
	ld   c, a                                        ; $5b51: $4f
	ld   a, b                                        ; $5b52: $78
	sbc  $00                                         ; $5b53: $de $00
	ld   b, a                                        ; $5b55: $47
	jr   nc, jr_030_5b6a                             ; $5b56: $30 $12

	ld   bc, $0000                                   ; $5b58: $01 $00 $00
	jr   jr_030_5b6a                                 ; $5b5b: $18 $0d

jr_030_5b5d:
	ld   a, c                                        ; $5b5d: $79
	add  $0c                                         ; $5b5e: $c6 $0c
	ld   c, a                                        ; $5b60: $4f
	ld   a, b                                        ; $5b61: $78
	adc  $00                                         ; $5b62: $ce $00
	ld   b, a                                        ; $5b64: $47
	jr   nc, jr_030_5b6a                             ; $5b65: $30 $03

	ld   bc, $0000                                   ; $5b67: $01 $00 $00

jr_030_5b6a:
	ld   a, b                                        ; $5b6a: $78
	ld   [hl-], a                                    ; $5b6b: $32
	ld   [hl], c                                     ; $5b6c: $71

jr_030_5b6d:
	ret                                              ; $5b6d: $c9


Call_030_5b6e:
	xor  a                                           ; $5b6e: $af
	ld   [$c73d], a                                  ; $5b6f: $ea $3d $c7
	ld   hl, $c74b                                   ; $5b72: $21 $4b $c7
	ld   bc, $0030                                   ; $5b75: $01 $30 $00
	call MemSet                                       ; $5b78: $cd $96 $09
	ret                                              ; $5b7b: $c9


Call_030_5b7c:
	ld   a, $28                                      ; $5b7c: $3e $28
	ld   [$c73f], a                                  ; $5b7e: $ea $3f $c7
	ld   a, $5c                                      ; $5b81: $3e $5c
	ld   [$c740], a                                  ; $5b83: $ea $40 $c7
	xor  a                                           ; $5b86: $af
	ld   [$c741], a                                  ; $5b87: $ea $41 $c7
	ld   a, b                                        ; $5b8a: $78
	ld   [$c742], a                                  ; $5b8b: $ea $42 $c7
	ld   a, c                                        ; $5b8e: $79
	ld   [$c743], a                                  ; $5b8f: $ea $43 $c7
	ld   hl, $c74b                                   ; $5b92: $21 $4b $c7
	ld   de, $000c                                   ; $5b95: $11 $0c $00
	ld   b, $00                                      ; $5b98: $06 $00

jr_030_5b9a:
	ld   a, [hl+]                                    ; $5b9a: $2a
	ld   c, a                                        ; $5b9b: $4f
	ld   a, [hl-]                                    ; $5b9c: $3a
	or   c                                           ; $5b9d: $b1
	jr   z, jr_030_5ba8                              ; $5b9e: $28 $08

	add  hl, de                                      ; $5ba0: $19
	inc  b                                           ; $5ba1: $04
	ld   a, b                                        ; $5ba2: $78
	cp   $04                                         ; $5ba3: $fe $04
	jr   c, jr_030_5b9a                              ; $5ba5: $38 $f3

	ret                                              ; $5ba7: $c9


jr_030_5ba8:
	ld   e, l                                        ; $5ba8: $5d
	ld   d, h                                        ; $5ba9: $54
	ld   hl, $c73f                                   ; $5baa: $21 $3f $c7
	ld   bc, $000c                                   ; $5bad: $01 $0c $00
	call MemCopy                                       ; $5bb0: $cd $a9 $09
	ret                                              ; $5bb3: $c9


Call_030_5bb4:
	ld   a, [$c73d]                                  ; $5bb4: $fa $3d $c7
	inc  a                                           ; $5bb7: $3c
	and  $03                                         ; $5bb8: $e6 $03
	ld   [$c73d], a                                  ; $5bba: $ea $3d $c7
	xor  a                                           ; $5bbd: $af

jr_030_5bbe:
	push af                                          ; $5bbe: $f5
	call Call_030_5bc9                               ; $5bbf: $cd $c9 $5b
	pop  af                                          ; $5bc2: $f1
	inc  a                                           ; $5bc3: $3c
	cp   $04                                         ; $5bc4: $fe $04
	jr   c, jr_030_5bbe                              ; $5bc6: $38 $f6

	ret                                              ; $5bc8: $c9


Call_030_5bc9:
	ld   [$c73e], a                                  ; $5bc9: $ea $3e $c7
	ld   e, a                                        ; $5bcc: $5f
	ld   d, $00                                      ; $5bcd: $16 $00
	ld   hl, $5c24                                   ; $5bcf: $21 $24 $5c
	add  hl, de                                      ; $5bd2: $19
	ld   e, [hl]                                     ; $5bd3: $5e
	ld   hl, $c74b                                   ; $5bd4: $21 $4b $c7
	add  hl, de                                      ; $5bd7: $19
	ld   de, $c73f                                   ; $5bd8: $11 $3f $c7
	ld   bc, $000c                                   ; $5bdb: $01 $0c $00
	call MemCopy                                       ; $5bde: $cd $a9 $09
	ld   hl, $c73f                                   ; $5be1: $21 $3f $c7
	ld   a, [hl+]                                    ; $5be4: $2a
	ld   h, [hl]                                     ; $5be5: $66
	ld   l, a                                        ; $5be6: $6f
	or   h                                           ; $5be7: $b4
	ret  z                                           ; $5be8: $c8

	ld   de, $5bee                                   ; $5be9: $11 $ee $5b
	push de                                          ; $5bec: $d5
	jp   hl                                          ; $5bed: $e9


	ld   a, [$c73e]                                  ; $5bee: $fa $3e $c7
	ld   e, a                                        ; $5bf1: $5f
	ld   d, $00                                      ; $5bf2: $16 $00
	ld   hl, $5c24                                   ; $5bf4: $21 $24 $5c
	add  hl, de                                      ; $5bf7: $19
	ld   e, [hl]                                     ; $5bf8: $5e
	ld   hl, $c74b                                   ; $5bf9: $21 $4b $c7
	add  hl, de                                      ; $5bfc: $19
	ld   e, l                                        ; $5bfd: $5d
	ld   d, h                                        ; $5bfe: $54
	ld   hl, $c73f                                   ; $5bff: $21 $3f $c7
	ld   bc, $000c                                   ; $5c02: $01 $0c $00
	call MemCopy                                       ; $5c05: $cd $a9 $09
	ld   hl, $c73f                                   ; $5c08: $21 $3f $c7
	ld   a, [hl+]                                    ; $5c0b: $2a
	ld   h, [hl]                                     ; $5c0c: $66
	ld   l, a                                        ; $5c0d: $6f
	or   h                                           ; $5c0e: $b4
	ret  z                                           ; $5c0f: $c8

	ld   a, [$c742]                                  ; $5c10: $fa $42 $c7
	ld   b, a                                        ; $5c13: $47
	ld   a, [$c743]                                  ; $5c14: $fa $43 $c7
	ld   c, a                                        ; $5c17: $4f
	ld   a, $0b                                      ; $5c18: $3e $0b
	ld   [wSpriteGroup], a                                  ; $5c1a: $ea $1a $c2
	ld   a, [$c747]                                  ; $5c1d: $fa $47 $c7
	call LoadSpriteFromMainTable                                       ; $5c20: $cd $16 $0e
	ret                                              ; $5c23: $c9


	nop                                              ; $5c24: $00
	inc  c                                           ; $5c25: $0c
	jr   @+$26                                       ; $5c26: $18 $24

	ld   hl, $5c60                                   ; $5c28: $21 $60 $5c
	call Call_030_60a1                               ; $5c2b: $cd $a1 $60
	ld   a, $30                                      ; $5c2e: $3e $30
	ld   [$c742], a                                  ; $5c30: $ea $42 $c7
	ld   a, $3a                                      ; $5c33: $3e $3a
	ld   [$c743], a                                  ; $5c35: $ea $43 $c7
	ld   a, $43                                      ; $5c38: $3e $43
	ld   [$c73f], a                                  ; $5c3a: $ea $3f $c7
	ld   a, $5c                                      ; $5c3d: $3e $5c
	ld   [$c740], a                                  ; $5c3f: $ea $40 $c7
	ret                                              ; $5c42: $c9


	ld   a, [$c746]                                  ; $5c43: $fa $46 $c7
	dec  a                                           ; $5c46: $3d
	ld   [$c746], a                                  ; $5c47: $ea $46 $c7
	ret  nz                                          ; $5c4a: $c0

	ld   a, [$c744]                                  ; $5c4b: $fa $44 $c7
	ld   l, a                                        ; $5c4e: $6f
	ld   a, [$c745]                                  ; $5c4f: $fa $45 $c7
	ld   h, a                                        ; $5c52: $67
	inc  hl                                          ; $5c53: $23
	inc  hl                                          ; $5c54: $23
	call Call_030_60a1                               ; $5c55: $cd $a1 $60
	ld   a, [$c746]                                  ; $5c58: $fa $46 $c7
	or   a                                           ; $5c5b: $b7
	call z, Call_030_5c65                            ; $5c5c: $cc $65 $5c
	ret                                              ; $5c5f: $c9


	inc  bc                                          ; $5c60: $03
	dec  de                                          ; $5c61: $1b
	inc  bc                                          ; $5c62: $03
	inc  e                                           ; $5c63: $1c
	nop                                              ; $5c64: $00

Call_030_5c65:
	ld   hl, $5cd2                                   ; $5c65: $21 $d2 $5c
	call Call_030_60a1                               ; $5c68: $cd $a1 $60
	ld   a, $8e                                      ; $5c6b: $3e $8e
	ld   [$c73f], a                                  ; $5c6d: $ea $3f $c7
	ld   a, $5c                                      ; $5c70: $3e $5c
	ld   [$c740], a                                  ; $5c72: $ea $40 $c7
	call GetRandomNumInPreSpecifiedRange                                       ; $5c75: $cd $10 $0d
	and  $f0                                         ; $5c78: $e6 $f0
	swap a                                           ; $5c7a: $cb $37
	ld   e, a                                        ; $5c7c: $5f
	ld   d, $00                                      ; $5c7d: $16 $00
	sla  e                                           ; $5c7f: $cb $23
	ld   hl, $5cd5                                   ; $5c81: $21 $d5 $5c
	add  hl, de                                      ; $5c84: $19
	ld   a, [hl+]                                    ; $5c85: $2a
	ld   [$c748], a                                  ; $5c86: $ea $48 $c7
	ld   a, [hl]                                     ; $5c89: $7e
	ld   [$c749], a                                  ; $5c8a: $ea $49 $c7
	ret                                              ; $5c8d: $c9


	ld   a, [wGameSubstate]                                  ; $5c8e: $fa $a1 $c2
	cp   $02                                         ; $5c91: $fe $02
	jp   nz, Jump_030_6067                           ; $5c93: $c2 $67 $60

	ld   hl, $c748                                   ; $5c96: $21 $48 $c7
	ld   a, [hl+]                                    ; $5c99: $2a
	ld   h, [hl]                                     ; $5c9a: $66
	ld   l, a                                        ; $5c9b: $6f
	ld   a, [hl+]                                    ; $5c9c: $2a
	cp   $ff                                         ; $5c9d: $fe $ff
	jp   z, Jump_030_5fc9                            ; $5c9f: $ca $c9 $5f

	ld   [$c742], a                                  ; $5ca2: $ea $42 $c7
	ld   a, [hl+]                                    ; $5ca5: $2a
	ld   [$c743], a                                  ; $5ca6: $ea $43 $c7
	ld   a, l                                        ; $5ca9: $7d
	ld   [$c748], a                                  ; $5caa: $ea $48 $c7
	ld   a, h                                        ; $5cad: $7c
	ld   [$c749], a                                  ; $5cae: $ea $49 $c7
	ld   a, [$c746]                                  ; $5cb1: $fa $46 $c7
	dec  a                                           ; $5cb4: $3d
	ld   [$c746], a                                  ; $5cb5: $ea $46 $c7
	ret  nz                                          ; $5cb8: $c0

	ld   a, [$c744]                                  ; $5cb9: $fa $44 $c7
	ld   l, a                                        ; $5cbc: $6f
	ld   a, [$c745]                                  ; $5cbd: $fa $45 $c7
	ld   h, a                                        ; $5cc0: $67
	inc  hl                                          ; $5cc1: $23
	inc  hl                                          ; $5cc2: $23
	call Call_030_60a1                               ; $5cc3: $cd $a1 $60
	ld   a, [$c746]                                  ; $5cc6: $fa $46 $c7
	or   a                                           ; $5cc9: $b7
	ret  nz                                          ; $5cca: $c0

	ld   hl, $5cd2                                   ; $5ccb: $21 $d2 $5c
	call Call_030_60a1                               ; $5cce: $cd $a1 $60
	ret                                              ; $5cd1: $c9


	rst  $38                                         ; $5cd2: $ff
	dec  e                                           ; $5cd3: $1d
	nop                                              ; $5cd4: $00
	pop  hl                                          ; $5cd5: $e1
	ld   e, h                                        ; $5cd6: $5c
	ld   e, l                                        ; $5cd7: $5d
	ld   e, l                                        ; $5cd8: $5d
	reti                                             ; $5cd9: $d9


	ld   e, l                                        ; $5cda: $5d
	ld   d, l                                        ; $5cdb: $55
	ld   e, [hl]                                     ; $5cdc: $5e
	pop  de                                          ; $5cdd: $d1
	ld   e, [hl]                                     ; $5cde: $5e
	ld   c, l                                        ; $5cdf: $4d
	ld   e, a                                        ; $5ce0: $5f
	jr   nc, jr_030_5d1d                             ; $5ce1: $30 $3a

	ld   sp, $323b                                   ; $5ce3: $31 $3b $32
	inc  a                                           ; $5ce6: $3c
	inc  sp                                          ; $5ce7: $33
	dec  a                                           ; $5ce8: $3d
	inc  [hl]                                        ; $5ce9: $34
	ld   a, $35                                      ; $5cea: $3e $35
	ccf                                              ; $5cec: $3f
	ld   [hl], $40                                   ; $5ced: $36 $40
	scf                                              ; $5cef: $37
	ld   b, c                                        ; $5cf0: $41
	scf                                              ; $5cf1: $37
	ld   b, c                                        ; $5cf2: $41
	jr   c, jr_030_5d37                              ; $5cf3: $38 $42

	add  hl, sp                                      ; $5cf5: $39
	ld   b, e                                        ; $5cf6: $43
	ld   a, [hl-]                                    ; $5cf7: $3a
	ld   b, h                                        ; $5cf8: $44
	ld   a, [hl-]                                    ; $5cf9: $3a
	ld   b, h                                        ; $5cfa: $44
	dec  sp                                          ; $5cfb: $3b
	ld   b, l                                        ; $5cfc: $45
	inc  a                                           ; $5cfd: $3c
	ld   b, [hl]                                     ; $5cfe: $46
	inc  a                                           ; $5cff: $3c
	ld   b, [hl]                                     ; $5d00: $46
	inc  a                                           ; $5d01: $3c
	ld   b, [hl]                                     ; $5d02: $46
	dec  a                                           ; $5d03: $3d
	ld   b, a                                        ; $5d04: $47
	dec  a                                           ; $5d05: $3d
	ld   b, a                                        ; $5d06: $47
	dec  a                                           ; $5d07: $3d
	ld   b, a                                        ; $5d08: $47
	dec  a                                           ; $5d09: $3d
	ld   b, a                                        ; $5d0a: $47
	dec  a                                           ; $5d0b: $3d
	ld   b, a                                        ; $5d0c: $47
	dec  a                                           ; $5d0d: $3d
	ld   b, a                                        ; $5d0e: $47
	inc  a                                           ; $5d0f: $3c
	ld   b, [hl]                                     ; $5d10: $46
	inc  a                                           ; $5d11: $3c
	ld   b, [hl]                                     ; $5d12: $46
	inc  a                                           ; $5d13: $3c
	ld   b, [hl]                                     ; $5d14: $46
	dec  sp                                          ; $5d15: $3b
	ld   b, l                                        ; $5d16: $45
	dec  sp                                          ; $5d17: $3b
	ld   b, l                                        ; $5d18: $45
	ld   a, [hl-]                                    ; $5d19: $3a
	ld   b, h                                        ; $5d1a: $44
	ld   a, [hl-]                                    ; $5d1b: $3a
	ld   b, h                                        ; $5d1c: $44

jr_030_5d1d:
	add  hl, sp                                      ; $5d1d: $39
	ld   b, e                                        ; $5d1e: $43
	jr   c, @+$44                                    ; $5d1f: $38 $42

	jr   c, jr_030_5d65                              ; $5d21: $38 $42

	scf                                              ; $5d23: $37
	ld   b, c                                        ; $5d24: $41
	ld   [hl], $40                                   ; $5d25: $36 $40
	dec  [hl]                                        ; $5d27: $35
	ccf                                              ; $5d28: $3f
	inc  [hl]                                        ; $5d29: $34
	ld   a, $33                                      ; $5d2a: $3e $33
	dec  a                                           ; $5d2c: $3d
	ld   [hl-], a                                    ; $5d2d: $32
	inc  a                                           ; $5d2e: $3c
	ld   sp, $303b                                   ; $5d2f: $31 $3b $30
	ld   a, [hl-]                                    ; $5d32: $3a
	ld   l, $38                                      ; $5d33: $2e $38
	dec  l                                           ; $5d35: $2d
	scf                                              ; $5d36: $37

jr_030_5d37:
	inc  l                                           ; $5d37: $2c
	ld   [hl], $2b                                   ; $5d38: $36 $2b
	dec  [hl]                                        ; $5d3a: $35
	add  hl, hl                                      ; $5d3b: $29
	inc  sp                                          ; $5d3c: $33
	jr   z, jr_030_5d71                              ; $5d3d: $28 $32

	daa                                              ; $5d3f: $27
	ld   sp, $2f25                                   ; $5d40: $31 $25 $2f
	inc  h                                           ; $5d43: $24
	ld   l, $23                                      ; $5d44: $2e $23
	dec  l                                           ; $5d46: $2d
	ld   hl, $202b                                   ; $5d47: $21 $2b $20
	ld   a, [hl+]                                    ; $5d4a: $2a
	ld   e, $28                                      ; $5d4b: $1e $28
	dec  e                                           ; $5d4d: $1d
	daa                                              ; $5d4e: $27
	dec  de                                          ; $5d4f: $1b
	dec  h                                           ; $5d50: $25
	ld   a, [de]                                     ; $5d51: $1a
	inc  h                                           ; $5d52: $24
	jr   jr_030_5d77                                 ; $5d53: $18 $22

	rla                                              ; $5d55: $17
	ld   hl, $1f15                                   ; $5d56: $21 $15 $1f
	inc  d                                           ; $5d59: $14
	ld   e, $ff                                      ; $5d5a: $1e $ff
	rst  $38                                         ; $5d5c: $ff
	jr   nc, jr_030_5d99                             ; $5d5d: $30 $3a

	jr   nc, jr_030_5d9b                             ; $5d5f: $30 $3a

	ld   sp, $323b                                   ; $5d61: $31 $3b $32
	inc  a                                           ; $5d64: $3c

jr_030_5d65:
	inc  sp                                          ; $5d65: $33
	dec  a                                           ; $5d66: $3d
	inc  sp                                          ; $5d67: $33
	ld   a, $34                                      ; $5d68: $3e $34
	ccf                                              ; $5d6a: $3f
	dec  [hl]                                        ; $5d6b: $35
	ld   b, b                                        ; $5d6c: $40
	ld   [hl], $41                                   ; $5d6d: $36 $41
	ld   [hl], $41                                   ; $5d6f: $36 $41

jr_030_5d71:
	scf                                              ; $5d71: $37
	ld   b, d                                        ; $5d72: $42
	jr   c, jr_030_5db8                              ; $5d73: $38 $43

	jr   c, jr_030_5dbb                              ; $5d75: $38 $44

jr_030_5d77:
	add  hl, sp                                      ; $5d77: $39
	ld   b, h                                        ; $5d78: $44
	ld   a, [hl-]                                    ; $5d79: $3a
	ld   b, l                                        ; $5d7a: $45
	dec  sp                                          ; $5d7b: $3b
	ld   b, l                                        ; $5d7c: $45
	dec  sp                                          ; $5d7d: $3b
	ld   b, l                                        ; $5d7e: $45
	inc  a                                           ; $5d7f: $3c
	ld   b, [hl]                                     ; $5d80: $46
	inc  a                                           ; $5d81: $3c
	ld   b, [hl]                                     ; $5d82: $46
	dec  a                                           ; $5d83: $3d
	ld   b, [hl]                                     ; $5d84: $46
	ld   a, $46                                      ; $5d85: $3e $46
	ld   a, $46                                      ; $5d87: $3e $46
	ccf                                              ; $5d89: $3f
	ld   b, [hl]                                     ; $5d8a: $46
	ccf                                              ; $5d8b: $3f
	ld   b, [hl]                                     ; $5d8c: $46
	ld   b, b                                        ; $5d8d: $40
	ld   b, l                                        ; $5d8e: $45
	ld   b, c                                        ; $5d8f: $41
	ld   b, l                                        ; $5d90: $45
	ld   b, c                                        ; $5d91: $41
	ld   b, l                                        ; $5d92: $45
	ld   b, d                                        ; $5d93: $42
	ld   b, h                                        ; $5d94: $44
	ld   b, d                                        ; $5d95: $42
	ld   b, h                                        ; $5d96: $44
	ld   b, e                                        ; $5d97: $43
	ld   b, e                                        ; $5d98: $43

jr_030_5d99:
	ld   b, e                                        ; $5d99: $43
	ld   b, d                                        ; $5d9a: $42

jr_030_5d9b:
	ld   b, h                                        ; $5d9b: $44
	ld   b, d                                        ; $5d9c: $42
	ld   b, h                                        ; $5d9d: $44
	ld   b, c                                        ; $5d9e: $41
	ld   b, l                                        ; $5d9f: $45
	ld   b, b                                        ; $5da0: $40
	ld   b, l                                        ; $5da1: $45
	ccf                                              ; $5da2: $3f
	ld   b, [hl]                                     ; $5da3: $46
	ld   a, $46                                      ; $5da4: $3e $46
	ld   a, $47                                      ; $5da6: $3e $47
	dec  a                                           ; $5da8: $3d
	ld   b, a                                        ; $5da9: $47
	inc  a                                           ; $5daa: $3c
	ld   b, a                                        ; $5dab: $47
	ld   a, [hl-]                                    ; $5dac: $3a
	ld   c, b                                        ; $5dad: $48
	add  hl, sp                                      ; $5dae: $39
	ld   c, b                                        ; $5daf: $48
	jr   c, jr_030_5dfb                              ; $5db0: $38 $49

	scf                                              ; $5db2: $37
	ld   c, c                                        ; $5db3: $49
	ld   [hl], $49                                   ; $5db4: $36 $49
	inc  [hl]                                        ; $5db6: $34
	ld   c, d                                        ; $5db7: $4a

jr_030_5db8:
	inc  sp                                          ; $5db8: $33
	ld   c, d                                        ; $5db9: $4a
	ld   [hl-], a                                    ; $5dba: $32

jr_030_5dbb:
	ld   c, e                                        ; $5dbb: $4b
	ld   sp, ReserveBaseAnimSpriteSpecAndInstance                                   ; $5dbc: $31 $4b $2f
	ld   c, e                                        ; $5dbf: $4b
	ld   l, $4c                                      ; $5dc0: $2e $4c
	inc  l                                           ; $5dc2: $2c
	ld   c, h                                        ; $5dc3: $4c
	dec  hl                                          ; $5dc4: $2b
	ld   c, l                                        ; $5dc5: $4d
	add  hl, hl                                      ; $5dc6: $29
	ld   c, l                                        ; $5dc7: $4d
	jr   z, jr_030_5e17                              ; $5dc8: $28 $4d

	daa                                              ; $5dca: $27
	ld   c, [hl]                                     ; $5dcb: $4e
	dec  h                                           ; $5dcc: $25
	ld   c, [hl]                                     ; $5dcd: $4e
	inc  h                                           ; $5dce: $24
	ld   c, [hl]                                     ; $5dcf: $4e
	ld   [hl+], a                                    ; $5dd0: $22
	ld   c, a                                        ; $5dd1: $4f
	ld   hl, $1f4f                                   ; $5dd2: $21 $4f $1f
	ld   d, b                                        ; $5dd5: $50
	ld   e, $ff                                      ; $5dd6: $1e $ff
	rst  $38                                         ; $5dd8: $ff
	jr   nc, jr_030_5e15                             ; $5dd9: $30 $3a

	ld   sp, $323b                                   ; $5ddb: $31 $3b $32
	inc  a                                           ; $5dde: $3c
	inc  sp                                          ; $5ddf: $33
	ld   a, $34                                      ; $5de0: $3e $34
	ccf                                              ; $5de2: $3f
	ld   [hl], $40                                   ; $5de3: $36 $40
	scf                                              ; $5de5: $37
	ld   b, d                                        ; $5de6: $42
	jr   c, jr_030_5e2c                              ; $5de7: $38 $43

	add  hl, sp                                      ; $5de9: $39
	ld   b, h                                        ; $5dea: $44
	dec  sp                                          ; $5deb: $3b
	ld   b, l                                        ; $5dec: $45
	inc  a                                           ; $5ded: $3c
	ld   b, [hl]                                     ; $5dee: $46
	dec  a                                           ; $5def: $3d
	ld   b, a                                        ; $5df0: $47
	ccf                                              ; $5df1: $3f
	ld   b, a                                        ; $5df2: $47
	ld   b, b                                        ; $5df3: $40
	ld   c, b                                        ; $5df4: $48
	ld   b, c                                        ; $5df5: $41
	ld   c, c                                        ; $5df6: $49
	ld   b, e                                        ; $5df7: $43
	ld   c, c                                        ; $5df8: $49
	ld   b, h                                        ; $5df9: $44
	ld   c, c                                        ; $5dfa: $49

jr_030_5dfb:
	ld   b, [hl]                                     ; $5dfb: $46
	ld   c, d                                        ; $5dfc: $4a
	ld   b, a                                        ; $5dfd: $47
	ld   c, d                                        ; $5dfe: $4a
	ld   c, c                                        ; $5dff: $49
	ld   c, d                                        ; $5e00: $4a
	ld   c, d                                        ; $5e01: $4a
	ld   c, d                                        ; $5e02: $4a
	ld   c, e                                        ; $5e03: $4b
	ld   c, d                                        ; $5e04: $4a
	ld   c, l                                        ; $5e05: $4d
	ld   c, d                                        ; $5e06: $4a
	ld   c, [hl]                                     ; $5e07: $4e
	ld   c, d                                        ; $5e08: $4a
	ld   d, b                                        ; $5e09: $50
	ld   c, c                                        ; $5e0a: $49
	ld   d, c                                        ; $5e0b: $51
	ld   c, c                                        ; $5e0c: $49
	ld   d, e                                        ; $5e0d: $53
	ld   c, b                                        ; $5e0e: $48
	ld   d, l                                        ; $5e0f: $55
	ld   c, b                                        ; $5e10: $48
	ld   d, [hl]                                     ; $5e11: $56
	ld   b, a                                        ; $5e12: $47
	ld   e, b                                        ; $5e13: $58
	ld   b, a                                        ; $5e14: $47

jr_030_5e15:
	ld   e, c                                        ; $5e15: $59
	ld   b, [hl]                                     ; $5e16: $46

jr_030_5e17:
	ld   e, e                                        ; $5e17: $5b
	ld   b, l                                        ; $5e18: $45
	ld   e, h                                        ; $5e19: $5c
	ld   b, h                                        ; $5e1a: $44
	ld   e, [hl]                                     ; $5e1b: $5e
	ld   b, e                                        ; $5e1c: $43
	ld   h, b                                        ; $5e1d: $60
	ld   b, e                                        ; $5e1e: $43
	ld   h, c                                        ; $5e1f: $61
	ld   b, d                                        ; $5e20: $42
	ld   h, e                                        ; $5e21: $63
	ld   b, c                                        ; $5e22: $41
	ld   h, h                                        ; $5e23: $64
	ccf                                              ; $5e24: $3f
	ld   h, [hl]                                     ; $5e25: $66
	ld   a, $68                                      ; $5e26: $3e $68
	dec  a                                           ; $5e28: $3d
	ld   l, c                                        ; $5e29: $69
	inc  a                                           ; $5e2a: $3c
	ld   l, e                                        ; $5e2b: $6b

jr_030_5e2c:
	dec  sp                                          ; $5e2c: $3b
	ld   l, l                                        ; $5e2d: $6d
	add  hl, sp                                      ; $5e2e: $39
	ld   l, [hl]                                     ; $5e2f: $6e
	jr   c, @+$72                                    ; $5e30: $38 $70

	scf                                              ; $5e32: $37
	ld   [hl], d                                     ; $5e33: $72
	dec  [hl]                                        ; $5e34: $35
	ld   [hl], e                                     ; $5e35: $73
	inc  [hl]                                        ; $5e36: $34
	ld   [hl], l                                     ; $5e37: $75
	ld   [hl-], a                                    ; $5e38: $32
	ld   [hl], a                                     ; $5e39: $77
	ld   sp, $2f79                                   ; $5e3a: $31 $79 $2f
	ld   a, d                                        ; $5e3d: $7a
	ld   l, $7c                                      ; $5e3e: $2e $7c
	inc  l                                           ; $5e40: $2c
	ld   a, [hl]                                     ; $5e41: $7e
	dec  hl                                          ; $5e42: $2b
	ld   a, a                                        ; $5e43: $7f
	add  hl, hl                                      ; $5e44: $29
	add  c                                           ; $5e45: $81
	daa                                              ; $5e46: $27
	add  e                                           ; $5e47: $83
	ld   h, $85                                      ; $5e48: $26 $85
	inc  h                                           ; $5e4a: $24
	add  [hl]                                        ; $5e4b: $86
	ld   [hl+], a                                    ; $5e4c: $22
	adc  b                                           ; $5e4d: $88
	ld   hl, $1f8a                                   ; $5e4e: $21 $8a $1f
	adc  h                                           ; $5e51: $8c
	ld   e, $ff                                      ; $5e52: $1e $ff
	rst  $38                                         ; $5e54: $ff
	jr   nc, jr_030_5e91                             ; $5e55: $30 $3a

	jr   nc, jr_030_5e93                             ; $5e57: $30 $3a

	ld   sp, $323b                                   ; $5e59: $31 $3b $32
	inc  a                                           ; $5e5c: $3c
	inc  sp                                          ; $5e5d: $33
	inc  a                                           ; $5e5e: $3c
	inc  [hl]                                        ; $5e5f: $34
	dec  a                                           ; $5e60: $3d
	dec  [hl]                                        ; $5e61: $35
	ld   a, $36                                      ; $5e62: $3e $36
	ccf                                              ; $5e64: $3f
	ld   [hl], $3f                                   ; $5e65: $36 $3f
	scf                                              ; $5e67: $37
	ld   b, b                                        ; $5e68: $40
	jr   c, jr_030_5eac                              ; $5e69: $38 $41

	add  hl, sp                                      ; $5e6b: $39
	ld   b, c                                        ; $5e6c: $41
	add  hl, sp                                      ; $5e6d: $39
	ld   b, d                                        ; $5e6e: $42
	ld   a, [hl-]                                    ; $5e6f: $3a
	ld   b, e                                        ; $5e70: $43
	ld   a, [hl-]                                    ; $5e71: $3a
	ld   b, e                                        ; $5e72: $43
	dec  sp                                          ; $5e73: $3b
	ld   b, h                                        ; $5e74: $44
	dec  sp                                          ; $5e75: $3b
	ld   b, l                                        ; $5e76: $45
	dec  sp                                          ; $5e77: $3b
	ld   b, l                                        ; $5e78: $45
	inc  a                                           ; $5e79: $3c
	ld   b, [hl]                                     ; $5e7a: $46
	inc  a                                           ; $5e7b: $3c
	ld   b, [hl]                                     ; $5e7c: $46
	inc  a                                           ; $5e7d: $3c
	ld   b, a                                        ; $5e7e: $47
	inc  a                                           ; $5e7f: $3c
	ld   b, a                                        ; $5e80: $47
	inc  a                                           ; $5e81: $3c
	ld   c, b                                        ; $5e82: $48
	dec  sp                                          ; $5e83: $3b
	ld   c, b                                        ; $5e84: $48
	dec  sp                                          ; $5e85: $3b
	ld   c, c                                        ; $5e86: $49
	dec  sp                                          ; $5e87: $3b
	ld   c, c                                        ; $5e88: $49
	dec  sp                                          ; $5e89: $3b
	ld   c, c                                        ; $5e8a: $49
	ld   a, [hl-]                                    ; $5e8b: $3a
	ld   c, d                                        ; $5e8c: $4a
	ld   a, [hl-]                                    ; $5e8d: $3a
	ld   c, d                                        ; $5e8e: $4a
	add  hl, sp                                      ; $5e8f: $39
	ld   c, e                                        ; $5e90: $4b

jr_030_5e91:
	jr   c, jr_030_5ede                              ; $5e91: $38 $4b

jr_030_5e93:
	jr   c, jr_030_5ee0                              ; $5e93: $38 $4b

	scf                                              ; $5e95: $37
	ld   c, e                                        ; $5e96: $4b
	ld   [hl], $4c                                   ; $5e97: $36 $4c
	dec  [hl]                                        ; $5e99: $35
	ld   c, h                                        ; $5e9a: $4c
	inc  [hl]                                        ; $5e9b: $34
	ld   c, h                                        ; $5e9c: $4c
	inc  [hl]                                        ; $5e9d: $34
	ld   c, h                                        ; $5e9e: $4c
	inc  sp                                          ; $5e9f: $33
	ld   c, l                                        ; $5ea0: $4d
	ld   sp, $304d                                   ; $5ea1: $31 $4d $30
	ld   c, l                                        ; $5ea4: $4d
	cpl                                              ; $5ea5: $2f
	ld   c, l                                        ; $5ea6: $4d
	ld   l, $4d                                      ; $5ea7: $2e $4d
	dec  l                                           ; $5ea9: $2d
	ld   c, [hl]                                     ; $5eaa: $4e
	inc  l                                           ; $5eab: $2c

jr_030_5eac:
	ld   c, [hl]                                     ; $5eac: $4e
	ld   a, [hl+]                                    ; $5ead: $2a
	ld   c, [hl]                                     ; $5eae: $4e
	add  hl, hl                                      ; $5eaf: $29
	ld   c, [hl]                                     ; $5eb0: $4e
	jr   z, jr_030_5f01                              ; $5eb1: $28 $4e

	daa                                              ; $5eb3: $27
	ld   c, [hl]                                     ; $5eb4: $4e
	dec  h                                           ; $5eb5: $25
	ld   c, [hl]                                     ; $5eb6: $4e
	inc  h                                           ; $5eb7: $24
	ld   c, a                                        ; $5eb8: $4f
	ld   [hl+], a                                    ; $5eb9: $22
	ld   c, a                                        ; $5eba: $4f
	ld   hl, $1f4f                                   ; $5ebb: $21 $4f $1f
	ld   c, a                                        ; $5ebe: $4f
	ld   e, $4f                                      ; $5ebf: $1e $4f
	dec  e                                           ; $5ec1: $1d
	ld   c, a                                        ; $5ec2: $4f
	dec  de                                          ; $5ec3: $1b
	ld   c, a                                        ; $5ec4: $4f
	ld   a, [de]                                     ; $5ec5: $1a
	ld   c, a                                        ; $5ec6: $4f
	jr   jr_030_5f18                                 ; $5ec7: $18 $4f

	rla                                              ; $5ec9: $17
	ld   c, a                                        ; $5eca: $4f
	dec  d                                           ; $5ecb: $15
	ld   c, a                                        ; $5ecc: $4f
	inc  d                                           ; $5ecd: $14
	ld   d, b                                        ; $5ece: $50
	rst  $38                                         ; $5ecf: $ff
	rst  $38                                         ; $5ed0: $ff
	jr   nc, jr_030_5f0d                             ; $5ed1: $30 $3a

	jr   nc, jr_030_5f0f                             ; $5ed3: $30 $3a

	jr   nc, jr_030_5f12                             ; $5ed5: $30 $3b

	ld   sp, $313b                                   ; $5ed7: $31 $3b $31
	dec  sp                                          ; $5eda: $3b
	ld   [hl-], a                                    ; $5edb: $32
	inc  a                                           ; $5edc: $3c
	ld   [hl-], a                                    ; $5edd: $32

jr_030_5ede:
	inc  a                                           ; $5ede: $3c
	inc  sp                                          ; $5edf: $33

jr_030_5ee0:
	dec  a                                           ; $5ee0: $3d
	inc  sp                                          ; $5ee1: $33
	dec  a                                           ; $5ee2: $3d
	inc  sp                                          ; $5ee3: $33
	ld   a, $34                                      ; $5ee4: $3e $34
	ld   a, $34                                      ; $5ee6: $3e $34
	ccf                                              ; $5ee8: $3f
	dec  [hl]                                        ; $5ee9: $35
	ccf                                              ; $5eea: $3f
	dec  [hl]                                        ; $5eeb: $35
	ld   b, b                                        ; $5eec: $40
	ld   [hl], $40                                   ; $5eed: $36 $40
	ld   [hl], $41                                   ; $5eef: $36 $41
	scf                                              ; $5ef1: $37
	ld   b, c                                        ; $5ef2: $41
	scf                                              ; $5ef3: $37
	ld   b, d                                        ; $5ef4: $42
	jr   c, jr_030_5f39                              ; $5ef5: $38 $42

	jr   c, jr_030_5f3c                              ; $5ef7: $38 $43

	add  hl, sp                                      ; $5ef9: $39
	ld   b, e                                        ; $5efa: $43
	add  hl, sp                                      ; $5efb: $39
	ld   b, e                                        ; $5efc: $43
	ld   a, [hl-]                                    ; $5efd: $3a
	ld   b, h                                        ; $5efe: $44
	ld   a, [hl-]                                    ; $5eff: $3a
	ld   b, h                                        ; $5f00: $44

jr_030_5f01:
	dec  sp                                          ; $5f01: $3b
	ld   b, l                                        ; $5f02: $45
	dec  sp                                          ; $5f03: $3b
	ld   b, l                                        ; $5f04: $45
	inc  a                                           ; $5f05: $3c
	ld   b, [hl]                                     ; $5f06: $46
	inc  a                                           ; $5f07: $3c
	ld   b, [hl]                                     ; $5f08: $46
	dec  a                                           ; $5f09: $3d
	ld   b, [hl]                                     ; $5f0a: $46
	dec  a                                           ; $5f0b: $3d
	ld   b, a                                        ; $5f0c: $47

jr_030_5f0d:
	ld   a, $47                                      ; $5f0d: $3e $47

jr_030_5f0f:
	ld   a, $47                                      ; $5f0f: $3e $47
	ccf                                              ; $5f11: $3f

jr_030_5f12:
	ld   c, b                                        ; $5f12: $48
	ccf                                              ; $5f13: $3f
	ld   c, b                                        ; $5f14: $48
	ld   b, b                                        ; $5f15: $40
	ld   c, b                                        ; $5f16: $48
	ld   b, b                                        ; $5f17: $40

jr_030_5f18:
	ld   c, c                                        ; $5f18: $49
	ld   b, c                                        ; $5f19: $41
	ld   c, c                                        ; $5f1a: $49
	ld   b, d                                        ; $5f1b: $42
	ld   c, c                                        ; $5f1c: $49
	ld   b, d                                        ; $5f1d: $42
	ld   c, d                                        ; $5f1e: $4a
	ld   b, e                                        ; $5f1f: $43
	ld   c, d                                        ; $5f20: $4a
	ld   b, e                                        ; $5f21: $43
	ld   c, d                                        ; $5f22: $4a
	ld   b, h                                        ; $5f23: $44
	ld   c, e                                        ; $5f24: $4b
	ld   b, h                                        ; $5f25: $44
	ld   c, e                                        ; $5f26: $4b
	ld   b, l                                        ; $5f27: $45
	ld   c, e                                        ; $5f28: $4b
	ld   b, [hl]                                     ; $5f29: $46
	ld   c, e                                        ; $5f2a: $4b
	ld   b, [hl]                                     ; $5f2b: $46
	ld   c, h                                        ; $5f2c: $4c
	ld   b, a                                        ; $5f2d: $47
	ld   c, h                                        ; $5f2e: $4c
	ld   b, a                                        ; $5f2f: $47
	ld   c, h                                        ; $5f30: $4c
	ld   c, b                                        ; $5f31: $48
	ld   c, h                                        ; $5f32: $4c
	ld   c, c                                        ; $5f33: $49
	ld   c, l                                        ; $5f34: $4d
	ld   c, c                                        ; $5f35: $49
	ld   c, l                                        ; $5f36: $4d
	ld   c, d                                        ; $5f37: $4a
	ld   c, l                                        ; $5f38: $4d

jr_030_5f39:
	ld   c, e                                        ; $5f39: $4b
	ld   c, [hl]                                     ; $5f3a: $4e
	ld   c, e                                        ; $5f3b: $4b

jr_030_5f3c:
	ld   c, [hl]                                     ; $5f3c: $4e
	ld   c, h                                        ; $5f3d: $4c
	ld   c, [hl]                                     ; $5f3e: $4e
	ld   c, h                                        ; $5f3f: $4c
	ld   c, [hl]                                     ; $5f40: $4e
	ld   c, l                                        ; $5f41: $4d
	ld   c, a                                        ; $5f42: $4f
	ld   c, [hl]                                     ; $5f43: $4e
	ld   c, a                                        ; $5f44: $4f
	ld   c, [hl]                                     ; $5f45: $4e
	ld   c, a                                        ; $5f46: $4f
	ld   c, a                                        ; $5f47: $4f
	ld   c, a                                        ; $5f48: $4f
	ld   d, b                                        ; $5f49: $50
	ld   d, b                                        ; $5f4a: $50
	rst  $38                                         ; $5f4b: $ff
	rst  $38                                         ; $5f4c: $ff
	jr   nc, jr_030_5f89                             ; $5f4d: $30 $3a

	ld   sp, $323b                                   ; $5f4f: $31 $3b $32
	inc  a                                           ; $5f52: $3c
	inc  sp                                          ; $5f53: $33
	dec  a                                           ; $5f54: $3d
	inc  [hl]                                        ; $5f55: $34
	ld   a, $35                                      ; $5f56: $3e $35
	ld   b, b                                        ; $5f58: $40
	ld   [hl], $41                                   ; $5f59: $36 $41
	scf                                              ; $5f5b: $37
	ld   b, d                                        ; $5f5c: $42
	add  hl, sp                                      ; $5f5d: $39
	ld   b, e                                        ; $5f5e: $43
	ld   a, [hl-]                                    ; $5f5f: $3a
	ld   b, h                                        ; $5f60: $44
	dec  sp                                          ; $5f61: $3b
	ld   b, l                                        ; $5f62: $45
	inc  a                                           ; $5f63: $3c
	ld   b, [hl]                                     ; $5f64: $46
	dec  a                                           ; $5f65: $3d
	ld   b, a                                        ; $5f66: $47
	ccf                                              ; $5f67: $3f
	ld   c, b                                        ; $5f68: $48
	ld   b, b                                        ; $5f69: $40
	ld   c, c                                        ; $5f6a: $49
	ld   b, c                                        ; $5f6b: $41
	ld   c, d                                        ; $5f6c: $4a
	ld   b, e                                        ; $5f6d: $43
	ld   c, d                                        ; $5f6e: $4a
	ld   b, h                                        ; $5f6f: $44
	ld   c, e                                        ; $5f70: $4b
	ld   b, l                                        ; $5f71: $45
	ld   c, h                                        ; $5f72: $4c
	ld   b, a                                        ; $5f73: $47
	ld   c, h                                        ; $5f74: $4c
	ld   c, b                                        ; $5f75: $48
	ld   c, l                                        ; $5f76: $4d
	ld   c, d                                        ; $5f77: $4a
	ld   c, l                                        ; $5f78: $4d
	ld   c, e                                        ; $5f79: $4b
	ld   c, [hl]                                     ; $5f7a: $4e
	ld   c, l                                        ; $5f7b: $4d
	ld   c, [hl]                                     ; $5f7c: $4e
	ld   c, [hl]                                     ; $5f7d: $4e
	ld   c, a                                        ; $5f7e: $4f
	ld   d, b                                        ; $5f7f: $50
	ld   c, a                                        ; $5f80: $4f
	ld   d, c                                        ; $5f81: $51
	ld   d, b                                        ; $5f82: $50
	ld   d, e                                        ; $5f83: $53
	ld   d, b                                        ; $5f84: $50
	ld   d, h                                        ; $5f85: $54
	ld   d, b                                        ; $5f86: $50
	ld   d, [hl]                                     ; $5f87: $56
	ld   d, c                                        ; $5f88: $51

jr_030_5f89:
	ld   d, a                                        ; $5f89: $57
	ld   d, c                                        ; $5f8a: $51
	ld   e, c                                        ; $5f8b: $59
	ld   d, c                                        ; $5f8c: $51
	ld   e, e                                        ; $5f8d: $5b
	ld   d, c                                        ; $5f8e: $51
	ld   e, h                                        ; $5f8f: $5c
	ld   d, c                                        ; $5f90: $51
	ld   e, [hl]                                     ; $5f91: $5e
	ld   d, d                                        ; $5f92: $52
	ld   h, b                                        ; $5f93: $60
	ld   d, d                                        ; $5f94: $52
	ld   h, c                                        ; $5f95: $61
	ld   d, d                                        ; $5f96: $52
	ld   h, e                                        ; $5f97: $63
	ld   d, d                                        ; $5f98: $52
	ld   h, l                                        ; $5f99: $65
	ld   d, d                                        ; $5f9a: $52
	ld   h, [hl]                                     ; $5f9b: $66
	ld   d, d                                        ; $5f9c: $52
	ld   l, b                                        ; $5f9d: $68
	ld   d, d                                        ; $5f9e: $52
	ld   l, d                                        ; $5f9f: $6a
	ld   d, d                                        ; $5fa0: $52
	ld   l, e                                        ; $5fa1: $6b
	ld   d, d                                        ; $5fa2: $52
	ld   l, l                                        ; $5fa3: $6d
	ld   d, d                                        ; $5fa4: $52
	ld   l, a                                        ; $5fa5: $6f
	ld   d, d                                        ; $5fa6: $52
	ld   [hl], c                                     ; $5fa7: $71
	ld   d, d                                        ; $5fa8: $52
	ld   [hl], d                                     ; $5fa9: $72
	ld   d, d                                        ; $5faa: $52
	ld   [hl], h                                     ; $5fab: $74
	ld   d, d                                        ; $5fac: $52
	halt                                             ; $5fad: $76
	ld   d, d                                        ; $5fae: $52
	ld   a, b                                        ; $5faf: $78
	ld   d, c                                        ; $5fb0: $51
	ld   a, d                                        ; $5fb1: $7a
	ld   d, c                                        ; $5fb2: $51
	ld   a, e                                        ; $5fb3: $7b
	ld   d, c                                        ; $5fb4: $51
	ld   a, l                                        ; $5fb5: $7d
	ld   d, c                                        ; $5fb6: $51
	ld   a, a                                        ; $5fb7: $7f
	ld   d, c                                        ; $5fb8: $51
	add  c                                           ; $5fb9: $81
	ld   d, c                                        ; $5fba: $51
	add  d                                           ; $5fbb: $82
	ld   d, b                                        ; $5fbc: $50
	add  h                                           ; $5fbd: $84
	ld   d, b                                        ; $5fbe: $50
	add  [hl]                                        ; $5fbf: $86
	ld   d, b                                        ; $5fc0: $50
	adc  b                                           ; $5fc1: $88
	ld   d, b                                        ; $5fc2: $50
	adc  d                                           ; $5fc3: $8a
	ld   d, b                                        ; $5fc4: $50
	adc  h                                           ; $5fc5: $8c
	ld   d, b                                        ; $5fc6: $50
	rst  $38                                         ; $5fc7: $ff
	rst  $38                                         ; $5fc8: $ff

Jump_030_5fc9:
	ld   hl, $6056                                   ; $5fc9: $21 $56 $60
	call Call_030_60a1                               ; $5fcc: $cd $a1 $60
	ld   a, $df                                      ; $5fcf: $3e $df
	ld   [$c73f], a                                  ; $5fd1: $ea $3f $c7
	ld   a, $5f                                      ; $5fd4: $3e $5f
	ld   [$c740], a                                  ; $5fd6: $ea $40 $c7
	ld   a, $02                                      ; $5fd9: $3e $02
	ld   [$c74a], a                                  ; $5fdb: $ea $4a $c7
	ret                                              ; $5fde: $c9


	ld   a, [wGameSubstate]                                  ; $5fdf: $fa $a1 $c2
	cp   $02                                         ; $5fe2: $fe $02
	jp   nz, Jump_030_6067                           ; $5fe4: $c2 $67 $60

	ld   de, $0a10                                   ; $5fe7: $11 $10 $0a
	ld   a, [$c72f]                                  ; $5fea: $fa $2f $c7
	sub  $04                                         ; $5fed: $d6 $04
	ld   b, a                                        ; $5fef: $47
	ld   a, [$c742]                                  ; $5ff0: $fa $42 $c7
	sub  $08                                         ; $5ff3: $d6 $08
	cp   b                                           ; $5ff5: $b8
	jr   nc, jr_030_5ffe                             ; $5ff6: $30 $06

	ld   c, b                                        ; $5ff8: $48
	ld   b, a                                        ; $5ff9: $47
	ld   a, d                                        ; $5ffa: $7a
	ld   d, e                                        ; $5ffb: $53
	ld   e, a                                        ; $5ffc: $5f
	ld   a, c                                        ; $5ffd: $79

jr_030_5ffe:
	sub  b                                           ; $5ffe: $90
	cp   d                                           ; $5fff: $ba
	jr   nc, jr_030_6029                             ; $6000: $30 $27

	ld   de, $1210                                   ; $6002: $11 $10 $12
	ld   a, [$c731]                                  ; $6005: $fa $31 $c7
	sub  $08                                         ; $6008: $d6 $08
	ld   b, a                                        ; $600a: $47
	ld   a, [$c743]                                  ; $600b: $fa $43 $c7
	sub  $08                                         ; $600e: $d6 $08
	cp   b                                           ; $6010: $b8
	jr   nc, jr_030_6019                             ; $6011: $30 $06

	ld   c, b                                        ; $6013: $48
	ld   b, a                                        ; $6014: $47
	ld   a, d                                        ; $6015: $7a
	ld   d, e                                        ; $6016: $53
	ld   e, a                                        ; $6017: $5f
	ld   a, c                                        ; $6018: $79

jr_030_6019:
	sub  b                                           ; $6019: $90
	cp   d                                           ; $601a: $ba
	jr   nc, jr_030_6029                             ; $601b: $30 $0c

	ld   hl, $c71f                                   ; $601d: $21 $1f $c7
	inc  [hl]                                        ; $6020: $34
	ld   a, $01                                      ; $6021: $3e $01
	ld   [$c723], a                                  ; $6023: $ea $23 $c7
	jp   Jump_030_6067                               ; $6026: $c3 $67 $60


jr_030_6029:
	ld   a, [$c746]                                  ; $6029: $fa $46 $c7
	dec  a                                           ; $602c: $3d
	ld   [$c746], a                                  ; $602d: $ea $46 $c7
	ret  nz                                          ; $6030: $c0

	ld   a, [$c744]                                  ; $6031: $fa $44 $c7
	ld   l, a                                        ; $6034: $6f
	ld   a, [$c745]                                  ; $6035: $fa $45 $c7
	ld   h, a                                        ; $6038: $67
	inc  hl                                          ; $6039: $23
	inc  hl                                          ; $603a: $23
	call Call_030_60a1                               ; $603b: $cd $a1 $60
	ld   a, [$c746]                                  ; $603e: $fa $46 $c7
	or   a                                           ; $6041: $b7
	ret  nz                                          ; $6042: $c0

	ld   a, [$c71e]                                  ; $6043: $fa $1e $c7
	or   a                                           ; $6046: $b7
	jr   z, jr_030_604f                              ; $6047: $28 $06

	ld   hl, $c74a                                   ; $6049: $21 $4a $c7
	dec  [hl]                                        ; $604c: $35
	jr   z, jr_030_6067                              ; $604d: $28 $18

jr_030_604f:
	ld   hl, $6056                                   ; $604f: $21 $56 $60
	call Call_030_60a1                               ; $6052: $cd $a1 $60
	ret                                              ; $6055: $c9


	dec  b                                           ; $6056: $05
	rra                                              ; $6057: $1f
	dec  b                                           ; $6058: $05
	jr   nz, jr_030_6060                             ; $6059: $20 $05

	ld   hl, $2205                                   ; $605b: $21 $05 $22
	dec  b                                           ; $605e: $05
	rra                                              ; $605f: $1f

jr_030_6060:
	inc  bc                                          ; $6060: $03
	inc  hl                                          ; $6061: $23
	inc  bc                                          ; $6062: $03
	inc  h                                           ; $6063: $24
	inc  bc                                          ; $6064: $03
	dec  h                                           ; $6065: $25
	nop                                              ; $6066: $00

Jump_030_6067:
jr_030_6067:
	ld   hl, $609c                                   ; $6067: $21 $9c $60
	call Call_030_60a1                               ; $606a: $cd $a1 $60
	ld   a, $78                                      ; $606d: $3e $78
	ld   [$c73f], a                                  ; $606f: $ea $3f $c7
	ld   a, $60                                      ; $6072: $3e $60
	ld   [$c740], a                                  ; $6074: $ea $40 $c7
	ret                                              ; $6077: $c9


	ld   a, [$c746]                                  ; $6078: $fa $46 $c7
	dec  a                                           ; $607b: $3d
	ld   [$c746], a                                  ; $607c: $ea $46 $c7
	ret  nz                                          ; $607f: $c0

	ld   a, [$c744]                                  ; $6080: $fa $44 $c7
	ld   l, a                                        ; $6083: $6f
	ld   a, [$c745]                                  ; $6084: $fa $45 $c7
	ld   h, a                                        ; $6087: $67
	inc  hl                                          ; $6088: $23
	inc  hl                                          ; $6089: $23
	call Call_030_60a1                               ; $608a: $cd $a1 $60
	ld   a, [$c746]                                  ; $608d: $fa $46 $c7
	or   a                                           ; $6090: $b7
	ret  nz                                          ; $6091: $c0

	ld   hl, $c73f                                   ; $6092: $21 $3f $c7
	ld   bc, $000c                                   ; $6095: $01 $0c $00
	call MemSet                                       ; $6098: $cd $96 $09
	ret                                              ; $609b: $c9


	ld   [bc], a                                     ; $609c: $02
	ld   h, $02                                      ; $609d: $26 $02
	daa                                              ; $609f: $27
	nop                                              ; $60a0: $00

Call_030_60a1:
	ld   a, l                                        ; $60a1: $7d
	ld   [$c744], a                                  ; $60a2: $ea $44 $c7
	ld   a, h                                        ; $60a5: $7c
	ld   [$c745], a                                  ; $60a6: $ea $45 $c7
	ld   a, [hl+]                                    ; $60a9: $2a
	ld   [$c746], a                                  ; $60aa: $ea $46 $c7
	ld   a, [hl]                                     ; $60ad: $7e
	ld   [$c747], a                                  ; $60ae: $ea $47 $c7
	ret                                              ; $60b1: $c9


Call_030_60b2:
	ld   hl, $c721                                   ; $60b2: $21 $21 $c7
	dec  [hl]                                        ; $60b5: $35
	ret  nz                                          ; $60b6: $c0

	ld   a, $3c                                      ; $60b7: $3e $3c
	ld   [hl+], a                                    ; $60b9: $22
	dec  [hl]                                        ; $60ba: $35
	ld   a, $01                                      ; $60bb: $3e $01
	ld   [$c723], a                                  ; $60bd: $ea $23 $c7
	ret                                              ; $60c0: $c9


Call_030_60c1:
	ld   a, [$c723]                                  ; $60c1: $fa $23 $c7
	or   a                                           ; $60c4: $b7
	ret  z                                           ; $60c5: $c8

	xor  a                                           ; $60c6: $af
	ld   [$c723], a                                  ; $60c7: $ea $23 $c7
	ld   a, [wWramBank]                                  ; $60ca: $fa $93 $c2
	push af                                          ; $60cd: $f5
	ld   a, $05                                      ; $60ce: $3e $05
	ld   [wWramBank], a                                  ; $60d0: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $60d3: $e0 $70
	ld   a, [$c71f]                                  ; $60d5: $fa $1f $c7
	ld   hl, $d003                                   ; $60d8: $21 $03 $d0
	call Call_030_60fd                               ; $60db: $cd $fd $60
	ld   a, [$c722]                                  ; $60de: $fa $22 $c7
if def(VWF)
	ld   hl, $d00e
else
	ld   hl, $d00f                                   ; $60e1: $21 $0f $d0
endc
	call Call_030_6111                               ; $60e4: $cd $11 $61
	pop  af                                          ; $60e7: $f1
	ld   [wWramBank], a                                  ; $60e8: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $60eb: $e0 $70
	ld   a, $05                                      ; $60ed: $3e $05
	ld   hl, $d000                                   ; $60ef: $21 $00 $d0
	ld   c, $80                                      ; $60f2: $0e $80
	ld   de, $99e0                                   ; $60f4: $11 $e0 $99
	ld   b, $04                                      ; $60f7: $06 $04
	call EnqueueHDMATransfer                                       ; $60f9: $cd $7c $02
	ret                                              ; $60fc: $c9


Call_030_60fd:
	ld   b, $64                                      ; $60fd: $06 $64
	call Call_030_6136                               ; $60ff: $cd $36 $61
	push af                                          ; $6102: $f5
	ld   a, $e0                                      ; $6103: $3e $e0
	add  c                                           ; $6105: $81
	ld   [hl+], a                                    ; $6106: $22
	push hl                                          ; $6107: $e5
	ld   de, $001f                                   ; $6108: $11 $1f $00
	add  hl, de                                      ; $610b: $19
	add  $10                                         ; $610c: $c6 $10
	ld   [hl], a                                     ; $610e: $77
	pop  hl                                          ; $610f: $e1
	pop  af                                          ; $6110: $f1

Call_030_6111:
	ld   b, $0a                                      ; $6111: $06 $0a
	call Call_030_6136                               ; $6113: $cd $36 $61
	push af                                          ; $6116: $f5
	ld   a, $e0                                      ; $6117: $3e $e0
	add  c                                           ; $6119: $81
	ld   [hl+], a                                    ; $611a: $22
	push hl                                          ; $611b: $e5
	ld   de, $001f                                   ; $611c: $11 $1f $00
	add  hl, de                                      ; $611f: $19
	add  $10                                         ; $6120: $c6 $10
	ld   [hl], a                                     ; $6122: $77
	pop  hl                                          ; $6123: $e1
	pop  af                                          ; $6124: $f1
	ld   b, $01                                      ; $6125: $06 $01
	call Call_030_6136                               ; $6127: $cd $36 $61
	ld   a, $e0                                      ; $612a: $3e $e0
	add  c                                           ; $612c: $81
	ld   [hl+], a                                    ; $612d: $22
	ld   de, $001f                                   ; $612e: $11 $1f $00
	add  hl, de                                      ; $6131: $19
	add  $10                                         ; $6132: $c6 $10
	ld   [hl], a                                     ; $6134: $77
	ret                                              ; $6135: $c9


Call_030_6136:
	ld   c, $00                                      ; $6136: $0e $00

jr_030_6138:
	cp   b                                           ; $6138: $b8
	ret  c                                           ; $6139: $d8

	sub  b                                           ; $613a: $90
	inc  c                                           ; $613b: $0c
	jr   jr_030_6138                                 ; $613c: $18 $fa

Call_030_613e:
	call Call_030_6169                               ; $613e: $cd $69 $61
	ld   bc, $2030                                   ; $6141: $01 $30 $20
	ld   a, $0b                                      ; $6144: $3e $0b
	ld   [wSpriteGroup], a                                  ; $6146: $ea $1a $c2
	ld   a, $15                                      ; $6149: $3e $15
	call LoadSpriteFromMainTable                                       ; $614b: $cd $16 $0e
	ret                                              ; $614e: $c9


Call_030_614f:
	ld   hl, $615a                                   ; $614f: $21 $5a $61
	push hl                                          ; $6152: $e5
	ld   hl, $c727                                   ; $6153: $21 $27 $c7
	ld   a, [hl+]                                    ; $6156: $2a
	ld   h, [hl]                                     ; $6157: $66
	ld   l, a                                        ; $6158: $6f
	jp   hl                                          ; $6159: $e9


	ld   bc, $2030                                   ; $615a: $01 $30 $20
	ld   a, $0b                                      ; $615d: $3e $0b
	ld   [wSpriteGroup], a                                  ; $615f: $ea $1a $c2
	ld   a, [$c72c]                                  ; $6162: $fa $2c $c7
	call LoadSpriteFromMainTable                                       ; $6165: $cd $16 $0e
	ret                                              ; $6168: $c9


Call_030_6169:
jr_030_6169:
	ld   a, $7f                                      ; $6169: $3e $7f
	ld   [$c727], a                                  ; $616b: $ea $27 $c7
	ld   a, $61                                      ; $616e: $3e $61
	ld   [$c728], a                                  ; $6170: $ea $28 $c7
	ld   a, [$61a8]                                  ; $6173: $fa $a8 $61
	ld   [$c72c], a                                  ; $6176: $ea $2c $c7
	ld   a, $0b                                      ; $6179: $3e $0b
	ld   [$c72d], a                                  ; $617b: $ea $2d $c7
	ret                                              ; $617e: $c9


	ld   a, [$c71e]                                  ; $617f: $fa $1e $c7
	or   a                                           ; $6182: $b7
	jr   nz, jr_030_6197                             ; $6183: $20 $12

	ld   hl, $c74b                                   ; $6185: $21 $4b $c7
	ld   de, $000b                                   ; $6188: $11 $0b $00
	ld   b, $04                                      ; $618b: $06 $04

jr_030_618d:
	ld   a, [hl+]                                    ; $618d: $2a
	or   [hl]                                        ; $618e: $b6
	jr   nz, jr_030_61a1                             ; $618f: $20 $10

	add  hl, de                                      ; $6191: $19
	dec  b                                           ; $6192: $05
	jr   nz, jr_030_618d                             ; $6193: $20 $f8

	jr   jr_030_61a9                                 ; $6195: $18 $12

jr_030_6197:
	ld   hl, $c72d                                   ; $6197: $21 $2d $c7
	dec  [hl]                                        ; $619a: $35
	jr   nz, jr_030_61a1                             ; $619b: $20 $04

	ld   [hl], $0b                                   ; $619d: $36 $0b
	jr   jr_030_61a9                                 ; $619f: $18 $08

jr_030_61a1:
	ld   a, [$61a8]                                  ; $61a1: $fa $a8 $61
	ld   [$c72c], a                                  ; $61a4: $ea $2c $c7
	ret                                              ; $61a7: $c9


	dec  d                                           ; $61a8: $15

jr_030_61a9:
	ld   hl, $6201                                   ; $61a9: $21 $01 $62
	ld   a, [hl+]                                    ; $61ac: $2a
	ld   [$c72b], a                                  ; $61ad: $ea $2b $c7
	ld   a, [hl+]                                    ; $61b0: $2a
	ld   [$c72c], a                                  ; $61b1: $ea $2c $c7
	ld   a, l                                        ; $61b4: $7d
	ld   [$c729], a                                  ; $61b5: $ea $29 $c7
	ld   a, h                                        ; $61b8: $7c
	ld   [$c72a], a                                  ; $61b9: $ea $2a $c7
	ld   a, $c7                                      ; $61bc: $3e $c7
	ld   [$c727], a                                  ; $61be: $ea $27 $c7
	ld   a, $61                                      ; $61c1: $3e $61
	ld   [$c728], a                                  ; $61c3: $ea $28 $c7
	ret                                              ; $61c6: $c9


	ld   hl, $c72b                                   ; $61c7: $21 $2b $c7
	dec  [hl]                                        ; $61ca: $35
	ret  nz                                          ; $61cb: $c0

	ld   hl, $c729                                   ; $61cc: $21 $29 $c7
	ld   a, [hl+]                                    ; $61cf: $2a
	ld   h, [hl]                                     ; $61d0: $66
	ld   l, a                                        ; $61d1: $6f
	cp   $03                                         ; $61d2: $fe $03
	jr   nz, jr_030_61e3                             ; $61d4: $20 $0d

	ld   a, h                                        ; $61d6: $7c
	cp   $62                                         ; $61d7: $fe $62
	jr   nz, jr_030_61e3                             ; $61d9: $20 $08

	push hl                                          ; $61db: $e5
	ld   bc, $303a                                   ; $61dc: $01 $3a $30
	call Call_030_5b7c                               ; $61df: $cd $7c $5b
	pop  hl                                          ; $61e2: $e1

jr_030_61e3:
	ld   a, [hl+]                                    ; $61e3: $2a
	or   a                                           ; $61e4: $b7
	jr   z, jr_030_6169                              ; $61e5: $28 $82

	ld   b, a                                        ; $61e7: $47
	ld   a, [$c71e]                                  ; $61e8: $fa $1e $c7
	or   a                                           ; $61eb: $b7
	jr   z, jr_030_61f0                              ; $61ec: $28 $02

	srl  b                                           ; $61ee: $cb $38

jr_030_61f0:
	ld   a, b                                        ; $61f0: $78
	ld   [$c72b], a                                  ; $61f1: $ea $2b $c7
	ld   a, [hl+]                                    ; $61f4: $2a
	ld   [$c72c], a                                  ; $61f5: $ea $2c $c7
	ld   a, l                                        ; $61f8: $7d
	ld   [$c729], a                                  ; $61f9: $ea $29 $c7
	ld   a, h                                        ; $61fc: $7c
	ld   [$c72a], a                                  ; $61fd: $ea $2a $c7
	ret                                              ; $6200: $c9


	ld   [$3814], sp                                 ; $6201: $08 $14 $38
	inc  de                                          ; $6204: $13
	ld   [$0014], sp                                 ; $6205: $08 $14 $00

Call_030_6208:
jr_030_6208:
	push af                                          ; $6208: $f5
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6209: $cf
	pop  af                                          ; $620a: $f1
	dec  a                                           ; $620b: $3d
	jr   nz, jr_030_6208                             ; $620c: $20 $fa

	ret                                              ; $620e: $c9


Call_030_620f:
Jump_030_620f:
	ld   a, $05                                      ; $620f: $3e $05
	ld   hl, $d040                                   ; $6211: $21 $40 $d0
	ld   c, $80                                      ; $6214: $0e $80
	ld   de, $9880                                   ; $6216: $11 $80 $98
	ld   b, $06                                      ; $6219: $06 $06
	call EnqueueHDMATransfer                                       ; $621b: $cd $7c $02
	ld   a, $05                                      ; $621e: $3e $05
	ld   hl, $d0a0                                   ; $6220: $21 $a0 $d0
	ld   c, $81                                      ; $6223: $0e $81
	ld   de, $9880                                   ; $6225: $11 $80 $98
	ld   b, $06                                      ; $6228: $06 $06
	call EnqueueHDMATransfer                                       ; $622a: $cd $7c $02
	ret                                              ; $622d: $c9


Call_030_622e:
	ld   a, $05                                      ; $622e: $3e $05
	ld   hl, $d100                                   ; $6230: $21 $00 $d1
	ld   c, $80                                      ; $6233: $0e $80
	ld   de, $9880                                   ; $6235: $11 $80 $98
	ld   b, $06                                      ; $6238: $06 $06
	call EnqueueHDMATransfer                                       ; $623a: $cd $7c $02
	ld   a, $05                                      ; $623d: $3e $05
	ld   hl, $d220                                   ; $623f: $21 $20 $d2
	ld   c, $81                                      ; $6242: $0e $81
	ld   de, $9880                                   ; $6244: $11 $80 $98
	ld   b, $06                                      ; $6247: $06 $06
	call EnqueueHDMATransfer                                       ; $6249: $cd $7c $02
	ret                                              ; $624c: $c9


Call_030_624d:
	ld   a, $05                                      ; $624d: $3e $05
	ld   hl, $d160                                   ; $624f: $21 $60 $d1
	ld   c, $80                                      ; $6252: $0e $80
	ld   de, $9880                                   ; $6254: $11 $80 $98
	ld   b, $06                                      ; $6257: $06 $06
	call EnqueueHDMATransfer                                       ; $6259: $cd $7c $02
	ld   a, $05                                      ; $625c: $3e $05
	ld   hl, $d280                                   ; $625e: $21 $80 $d2
	ld   c, $81                                      ; $6261: $0e $81
	ld   de, $9880                                   ; $6263: $11 $80 $98
	ld   b, $06                                      ; $6266: $06 $06
	call EnqueueHDMATransfer                                       ; $6268: $cd $7c $02
	ret                                              ; $626b: $c9


Jump_030_626c:
	ld   a, $05                                      ; $626c: $3e $05
	ld   hl, $d1c0                                   ; $626e: $21 $c0 $d1
	ld   c, $80                                      ; $6271: $0e $80
	ld   de, $9880                                   ; $6273: $11 $80 $98
	ld   b, $06                                      ; $6276: $06 $06
	call EnqueueHDMATransfer                                       ; $6278: $cd $7c $02
	ld   a, $05                                      ; $627b: $3e $05
	ld   hl, $d2e0                                   ; $627d: $21 $e0 $d2
	ld   c, $81                                      ; $6280: $0e $81
	ld   de, $9880                                   ; $6282: $11 $80 $98
	ld   b, $06                                      ; $6285: $06 $06
	call EnqueueHDMATransfer                                       ; $6287: $cd $7c $02
	ret                                              ; $628a: $c9


	ld   a, c                                        ; $628b: $79
	ld   [$c71e], a                                  ; $628c: $ea $1e $c7
	ld   a, h                                        ; $628f: $7c
	ld   [$c71c], a                                  ; $6290: $ea $1c $c7
	ld   a, l                                        ; $6293: $7d
	ld   [$c71d], a                                  ; $6294: $ea $1d $c7
	ld   a, GS_IRIS_MINI_GAME_MAIN                                      ; $6297: $3e $04
	ld   [wGameState], a                                  ; $6299: $ea $a0 $c2
	ld   a, $00                                      ; $629c: $3e $00
	ld   [wGameSubstate], a                                  ; $629e: $ea $a1 $c2
	ret                                              ; $62a1: $c9


Call_030_62a2:
	ld   a, [$c724]                                  ; $62a2: $fa $24 $c7
	or   a                                           ; $62a5: $b7
	ret  z                                           ; $62a6: $c8

	dec  a                                           ; $62a7: $3d
	ld   [$c724], a                                  ; $62a8: $ea $24 $c7
	call z, Call_030_620f                            ; $62ab: $cc $0f $62
	ret                                              ; $62ae: $c9


Call_030_62af:
	ld   a, [$c71e]                                  ; $62af: $fa $1e $c7
	or   a                                           ; $62b2: $b7
	jr   nz, jr_030_62c3                             ; $62b3: $20 $0e

	ld   hl, $62dd                                   ; $62b5: $21 $dd $62
	ld   a, [$cb1d]                                  ; $62b8: $fa $1d $cb
	or   a                                           ; $62bb: $b7
	jr   z, jr_030_62cf                              ; $62bc: $28 $11

	ld   hl, $62e0                                   ; $62be: $21 $e0 $62
	jr   jr_030_62cf                                 ; $62c1: $18 $0c

jr_030_62c3:
	ld   hl, $62e5                                   ; $62c3: $21 $e5 $62
	ld   a, [$cb1d]                                  ; $62c6: $fa $1d $cb
	or   a                                           ; $62c9: $b7
	jr   z, jr_030_62cf                              ; $62ca: $28 $03

	ld   hl, $62e8                                   ; $62cc: $21 $e8 $62

jr_030_62cf:
	ld   a, [$c71f]                                  ; $62cf: $fa $1f $c7
	ld   b, $ff                                      ; $62d2: $06 $ff

jr_030_62d4:
	inc  b                                           ; $62d4: $04
	inc  hl                                          ; $62d5: $23
	cp   [hl]                                        ; $62d6: $be
	jr   nc, jr_030_62d4                             ; $62d7: $30 $fb

	ld   a, b                                        ; $62d9: $78
	ld   [$c720], a                                  ; $62da: $ea $20 $c7
	ret                                              ; $62dd: $c9


	rrca                                             ; $62de: $0f
	add  hl, de                                      ; $62df: $19
	rst  $38                                         ; $62e0: $ff
	ld   a, [bc]                                     ; $62e1: $0a
	rrca                                             ; $62e2: $0f
	inc  d                                           ; $62e3: $14
	add  hl, de                                      ; $62e4: $19
	rst  $38                                         ; $62e5: $ff
	ld   e, $2d                                      ; $62e6: $1e $2d
	rst  $38                                         ; $62e8: $ff
	inc  d                                           ; $62e9: $14
	ld   e, $28                                      ; $62ea: $1e $28
	dec  l                                           ; $62ec: $2d
	rst  $38                                         ; $62ed: $ff

Call_030_62ee:
	ld   a, $0b                                      ; $62ee: $3e $0b
	ld   [wSpriteGroup], a                                  ; $62f0: $ea $1a $c2
	ld   hl, $630e                                   ; $62f3: $21 $0e $63
	ld   a, [$cb1d]                                  ; $62f6: $fa $1d $cb
	or   a                                           ; $62f9: $b7
	jr   z, jr_030_62ff                              ; $62fa: $28 $03

	ld   hl, $6311                                   ; $62fc: $21 $11 $63

jr_030_62ff:
	ld   a, [$c720]                                  ; $62ff: $fa $20 $c7
	ld   e, a                                        ; $6302: $5f
	ld   d, $00                                      ; $6303: $16 $00
	add  hl, de                                      ; $6305: $19
	ld   a, [hl]                                     ; $6306: $7e
	ld   bc, $7747                                   ; $6307: $01 $47 $77
	call LoadSpriteFromMainTable                                       ; $630a: $cd $16 $0e
	ret                                              ; $630d: $c9


	ld   [de], a                                     ; $630e: $12
	dec  c                                           ; $630f: $0d
	ld   de, $0d12                                   ; $6310: $11 $12 $0d
	dec  c                                           ; $6313: $0d
	dec  c                                           ; $6314: $0d
	ld   de, $0b3e                                   ; $6315: $11 $3e $0b
	ld   [wSpriteGroup], a                                  ; $6318: $ea $1a $c2
	ld   hl, $6336                                   ; $631b: $21 $36 $63
	ld   a, [$cb1d]                                  ; $631e: $fa $1d $cb
	or   a                                           ; $6321: $b7
	jr   z, jr_030_6327                              ; $6322: $28 $03

	ld   hl, $6339                                   ; $6324: $21 $39 $63

jr_030_6327:
	ld   a, [$c720]                                  ; $6327: $fa $20 $c7
	ld   e, a                                        ; $632a: $5f
	ld   d, $00                                      ; $632b: $16 $00
	add  hl, de                                      ; $632d: $19
	ld   a, [hl]                                     ; $632e: $7e
	ld   bc, $2030                                   ; $632f: $01 $30 $20
	call LoadSpriteFromMainTable                                       ; $6332: $cd $16 $0e
	ret                                              ; $6335: $c9


	rla                                              ; $6336: $17
	dec  d                                           ; $6337: $15
	ld   d, $17                                      ; $6338: $16 $17
	dec  d                                           ; $633a: $15
	dec  d                                           ; $633b: $15
	dec  d                                           ; $633c: $15
	db $16 
	
	
GameState05_Credits::
	ld   a, [wGameSubstate] ; $633e: $fa $a1 $c2
	rst  JumpTable                                   ; $6341: $df
	dw $6356
	dw $6422
	dw $64e9
	dw $6636
	dw $6b18
	dw $6b34
	dw $6b54
	dw $6c5e
	dw $71c1
	dw $71d8

	ld   a, [wWramBank]                                  ; $6356: $fa $93 $c2
	push af                                          ; $6359: $f5
	ld   a, $05                                      ; $635a: $3e $05
	ld   [wWramBank], a                                  ; $635c: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $635f: $e0 $70
	ld   a, $ff                                      ; $6361: $3e $ff
	ld   b, $20                                      ; $6363: $06 $20
	ld   hl, $d000                                   ; $6365: $21 $00 $d0

jr_030_6368:
	ld   [hl+], a                                    ; $6368: $22
	dec  b                                           ; $6369: $05
	jr   nz, jr_030_6368                             ; $636a: $20 $fc

	ld   c, $80                                      ; $636c: $0e $80
	ld   de, $8000                                   ; $636e: $11 $00 $80
	ld   a, $05                                      ; $6371: $3e $05
	ld   hl, $d000                                   ; $6373: $21 $00 $d0
	ld   b, $02                                      ; $6376: $06 $02
	call EnqueueHDMATransfer                                       ; $6378: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $637b: $cf
	ld   hl, $d000                                   ; $637c: $21 $00 $d0
	ld   bc, $0400                                   ; $637f: $01 $00 $04
	call MemClear                                       ; $6382: $cd $95 $09
	ld   c, $81                                      ; $6385: $0e $81
	ld   de, $9c00                                   ; $6387: $11 $00 $9c
	ld   a, $05                                      ; $638a: $3e $05
	ld   hl, $d000                                   ; $638c: $21 $00 $d0
	ld   b, $40                                      ; $638f: $06 $40
	call EnqueueHDMATransfer                                       ; $6391: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6394: $cf
	ld   hl, $d000                                   ; $6395: $21 $00 $d0
	ld   a, $34                                      ; $6398: $3e $34
	ld   de, $5dba                                   ; $639a: $11 $ba $5d
	ld   bc, $2020                                   ; $639d: $01 $20 $20
	call FarCopyLayout                                       ; $63a0: $cd $2c $0b
	ld   c, $81                                      ; $63a3: $0e $81
	ld   de, $9800                                   ; $63a5: $11 $00 $98
	ld   a, $05                                      ; $63a8: $3e $05
	ld   hl, $d000                                   ; $63aa: $21 $00 $d0
	ld   b, $40                                      ; $63ad: $06 $40
	call EnqueueHDMATransfer                                       ; $63af: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $63b2: $cf
	pop  af                                          ; $63b3: $f1
	ld   [wWramBank], a                                  ; $63b4: $ea $93 $c2

jr_030_63b7:
	ldh  [rSVBK], a                                  ; $63b7: $e0 $70
	ld   hl, wLCDC                                   ; $63b9: $21 $03 $c2
	set  6, [hl]                                     ; $63bc: $cb $f6
	res  2, [hl]                                     ; $63be: $cb $96
	xor  a                                           ; $63c0: $af
	ld   [wSCX], a                                  ; $63c1: $ea $07 $c2
	ld   [wSCY], a                                  ; $63c4: $ea $08 $c2
	ld   [wWY], a                                  ; $63c7: $ea $0a $c2
	ld   [$c20b], a                                  ; $63ca: $ea $0b $c2
	ld   a, $07                                      ; $63cd: $3e $07
	ld   [wWX], a                                  ; $63cf: $ea $09 $c2
	ld   hl, $c20c                                   ; $63d2: $21 $0c $c2
	set  6, [hl]                                     ; $63d5: $cb $f6
	ld   hl, wIE                                   ; $63d7: $21 $0d $c2
	set  1, [hl]                                     ; $63da: $cb $ce
	ld   a, $02                                      ; $63dc: $3e $02
	ld   [wLCDCIntFuncIdx], a                                  ; $63de: $ea $8d $c2
	call ClearOam                                       ; $63e1: $cd $d7 $0d
	ld   a, b                                        ; $63e4: $78
	ld   [wSpriteGroup], a                                  ; $63e5: $ea $1a $c2
	ld   bc, $f800                                   ; $63e8: $01 $00 $f8
	ld   a, $0b                                      ; $63eb: $3e $0b
	ld   [wSpriteGroup], a                                  ; $63ed: $ea $1a $c2
	ld   a, $00                                      ; $63f0: $3e $00
	call LoadSpriteFromMainTable                                       ; $63f2: $cd $16 $0e
	ld   bc, $a000                                   ; $63f5: $01 $00 $a0
	ld   a, $0b                                      ; $63f8: $3e $0b
	ld   [wSpriteGroup], a                                  ; $63fa: $ea $1a $c2
	ld   a, $00                                      ; $63fd: $3e $00
	call LoadSpriteFromMainTable                                       ; $63ff: $cd $16 $0e
	ld   bc, $c028                                   ; $6402: $01 $28 $c0
	ld   hl, $c6fe                                   ; $6405: $21 $fe $c6
	call Call_030_72d9                               ; $6408: $cd $d9 $72
	ld   bc, $c030                                   ; $640b: $01 $30 $c0
	ld   hl, $c704                                   ; $640e: $21 $04 $c7
	call Call_030_72d9                               ; $6411: $cd $d9 $72
	ld   bc, $c008                                   ; $6414: $01 $08 $c0
	ld   hl, $c70a                                   ; $6417: $21 $0a $c7
	call Call_030_72d9                               ; $641a: $cd $d9 $72
	ld   hl, wGameSubstate                                   ; $641d: $21 $a1 $c2
	inc  [hl]                                        ; $6420: $34
	ret                                              ; $6421: $c9


	call ClearOam                                       ; $6422: $cd $d7 $0d
	ld   hl, $c6fe                                   ; $6425: $21 $fe $c6
	call Call_030_7372                               ; $6428: $cd $72 $73
	ld   [wSCX], a                                  ; $642b: $ea $07 $c2
	cpl                                              ; $642e: $2f
	inc  a                                           ; $642f: $3c
	ld   [wSCY], a                                  ; $6430: $ea $08 $c2
	ld   hl, $c70a                                   ; $6433: $21 $0a $c7
	call Call_030_7372                               ; $6436: $cd $72 $73
	ld   b, a                                        ; $6439: $47
	ld   a, [wSCX]                                  ; $643a: $fa $07 $c2
	add  b                                           ; $643d: $80
	sub  $01                                         ; $643e: $d6 $01
	jr   c, jr_030_644a                              ; $6440: $38 $08

	ld   [$c20b], a                                  ; $6442: $ea $0b $c2
	ld   hl, wLCDC                                   ; $6445: $21 $03 $c2
	set  5, [hl]                                     ; $6448: $cb $ee

jr_030_644a:
	ld   a, b                                        ; $644a: $78
	ld   [wSpriteGroup], a                                  ; $644b: $ea $1a $c2
	ld   hl, $c704                                   ; $644e: $21 $04 $c7
	call Call_030_7372                               ; $6451: $cd $72 $73
	jr   c, jr_030_645c                              ; $6454: $38 $06

	push af                                          ; $6456: $f5
	ld   hl, wGameSubstate                                   ; $6457: $21 $a1 $c2
	inc  [hl]                                        ; $645a: $34
	pop  af                                          ; $645b: $f1

jr_030_645c:
	push af                                          ; $645c: $f5
	add  $f8                                         ; $645d: $c6 $f8
	ld   hl, wSCX                                   ; $645f: $21 $07 $c2
	sub  [hl]                                        ; $6462: $96
	ld   b, a                                        ; $6463: $47
	ld   a, [wSCY]                                  ; $6464: $fa $08 $c2
	cpl                                              ; $6467: $2f
	inc  a                                           ; $6468: $3c
	ld   c, a                                        ; $6469: $4f
	ld   a, $0b                                      ; $646a: $3e $0b
	ld   [wSpriteGroup], a                                  ; $646c: $ea $1a $c2
	ld   a, $00                                      ; $646f: $3e $00
	call LoadSpriteFromMainTable                                       ; $6471: $cd $16 $0e
	pop  bc                                          ; $6474: $c1
	ld   a, $a0                                      ; $6475: $3e $a0
	sub  b                                           ; $6477: $90
	ld   hl, wSCX                                   ; $6478: $21 $07 $c2
	sub  [hl]                                        ; $647b: $96
	ld   b, a                                        ; $647c: $47
	ld   a, [wSCY]                                  ; $647d: $fa $08 $c2
	cpl                                              ; $6480: $2f
	inc  a                                           ; $6481: $3c
	ld   c, a                                        ; $6482: $4f
	ld   a, $0b                                      ; $6483: $3e $0b
	ld   [wSpriteGroup], a                                  ; $6485: $ea $1a $c2
	ld   a, $00                                      ; $6488: $3e $00
	call LoadSpriteFromMainTable                                       ; $648a: $cd $16 $0e
	ld   a, [$c709]                                  ; $648d: $fa $09 $c7
	or   a                                           ; $6490: $b7
	jr   z, jr_030_64e8                              ; $6491: $28 $55

	and  $07                                         ; $6493: $e6 $07
	jr   nz, jr_030_64e8                             ; $6495: $20 $51

	ld   a, [wWramBank]                                  ; $6497: $fa $93 $c2
	push af                                          ; $649a: $f5
	ld   a, $05                                      ; $649b: $3e $05
	ld   [wWramBank], a                                  ; $649d: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $64a0: $e0 $70
	ld   a, [$c709]                                  ; $64a2: $fa $09 $c7
	srl  a                                           ; $64a5: $cb $3f
	srl  a                                           ; $64a7: $cb $3f
	srl  a                                           ; $64a9: $cb $3f
	dec  a                                           ; $64ab: $3d
	ld   e, a                                        ; $64ac: $5f
	ld   d, $00                                      ; $64ad: $16 $00
	push de                                          ; $64af: $d5
	ld   hl, $d000                                   ; $64b0: $21 $00 $d0
	add  hl, de                                      ; $64b3: $19
	ld   de, $0020                                   ; $64b4: $11 $20 $00
	ld   b, $0a                                      ; $64b7: $06 $0a
	xor  a                                           ; $64b9: $af

jr_030_64ba:
	ld   [hl], a                                     ; $64ba: $77
	add  hl, de                                      ; $64bb: $19
	dec  b                                           ; $64bc: $05
	jr   nz, jr_030_64ba                             ; $64bd: $20 $fb

	pop  de                                          ; $64bf: $d1
	ld   a, $13                                      ; $64c0: $3e $13
	sub  e                                           ; $64c2: $93
	ld   e, a                                        ; $64c3: $5f
	ld   hl, $d000                                   ; $64c4: $21 $00 $d0
	add  hl, de                                      ; $64c7: $19
	ld   de, $0020                                   ; $64c8: $11 $20 $00
	ld   b, $0a                                      ; $64cb: $06 $0a
	xor  a                                           ; $64cd: $af

jr_030_64ce:
	ld   [hl], a                                     ; $64ce: $77
	add  hl, de                                      ; $64cf: $19
	dec  b                                           ; $64d0: $05
	jr   nz, jr_030_64ce                             ; $64d1: $20 $fb

	pop  af                                          ; $64d3: $f1
	ld   [wWramBank], a                                  ; $64d4: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $64d7: $e0 $70
	ld   a, $05                                      ; $64d9: $3e $05
	ld   hl, $d000                                   ; $64db: $21 $00 $d0
	ld   c, $81                                      ; $64de: $0e $81
	ld   de, $9800                                   ; $64e0: $11 $00 $98
	ld   b, $14                                      ; $64e3: $06 $14
	call EnqueueHDMATransfer                                       ; $64e5: $cd $7c $02

jr_030_64e8:
	ret                                              ; $64e8: $c9


	ld   a, [wWramBank]                                  ; $64e9: $fa $93 $c2
	push af                                          ; $64ec: $f5
	ld   a, $05                                      ; $64ed: $3e $05
	ld   [wWramBank], a                                  ; $64ef: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $64f2: $e0 $70
	ld   hl, $d000                                   ; $64f4: $21 $00 $d0
	ld   bc, $0800                                   ; $64f7: $01 $00 $08
	call MemClear                                       ; $64fa: $cd $95 $09
	ld   c, $80                                      ; $64fd: $0e $80
	ld   de, $8800                                   ; $64ff: $11 $00 $88
	ld   a, $05                                      ; $6502: $3e $05
	ld   hl, $d000                                   ; $6504: $21 $00 $d0
	ld   b, $40                                      ; $6507: $06 $40
	call EnqueueHDMATransfer                                       ; $6509: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $650c: $cf
	ld   c, $80                                      ; $650d: $0e $80
	ld   de, $8c00                                   ; $650f: $11 $00 $8c
	ld   a, $05                                      ; $6512: $3e $05
	ld   hl, $d400                                   ; $6514: $21 $00 $d4
	ld   b, $40                                      ; $6517: $06 $40
	call EnqueueHDMATransfer                                       ; $6519: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $651c: $cf
	ld   hl, $d000                                   ; $651d: $21 $00 $d0
	ld   bc, $0480                                   ; $6520: $01 $80 $04
	call MemClear                                       ; $6523: $cd $95 $09
	ld   hl, $d000                                   ; $6526: $21 $00 $d0
	ld   a, $34                                      ; $6529: $3e $34
	ld   de, $6aaa                                   ; $652b: $11 $aa $6a
	ld   bc, $1412                                   ; $652e: $01 $12 $14
	call FarCopyLayout                                       ; $6531: $cd $2c $0b
	call FarCopyLayout                                       ; $6534: $cd $2c $0b
	ld   c, $81                                      ; $6537: $0e $81
	ld   de, $9800                                   ; $6539: $11 $00 $98
	ld   a, $05                                      ; $653c: $3e $05
	ld   hl, $d000                                   ; $653e: $21 $00 $d0
	ld   b, $24                                      ; $6541: $06 $24
	call EnqueueHDMATransfer                                       ; $6543: $cd $7c $02
	ld   c, $80                                      ; $6546: $0e $80
	ld   de, $9800                                   ; $6548: $11 $00 $98
	ld   a, $05                                      ; $654b: $3e $05
	ld   hl, $d240                                   ; $654d: $21 $40 $d2
	ld   b, $24                                      ; $6550: $06 $24
	call EnqueueHDMATransfer                                       ; $6552: $cd $7c $02
	pop  af                                          ; $6555: $f1
	ld   [wWramBank], a                                  ; $6556: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $6559: $e0 $70
	ld   hl, wLCDC                                   ; $655b: $21 $03 $c2
	res  5, [hl]                                     ; $655e: $cb $ae
	xor  a                                           ; $6560: $af
	ld   [wSCX], a                                  ; $6561: $ea $07 $c2
	ld   [wSCY], a                                  ; $6564: $ea $08 $c2
	ld   a, $18                                      ; $6567: $3e $18
	ld   [$c20b], a                                  ; $6569: $ea $0b $c2
	ld   a, $03                                      ; $656c: $3e $03
	ld   [wLCDCIntFuncIdx], a                                  ; $656e: $ea $8d $c2
	call ClearOam                                       ; $6571: $cd $d7 $0d
	ld   a, $01                                      ; $6574: $3e $01
	ld   hl, $7080                                   ; $6576: $21 $80 $70
	ld   de, wBGPalettes                                   ; $6579: $11 $de $c2
	ld   bc, $0010                                   ; $657c: $01 $10 $00
	call FarMemCopy                                       ; $657f: $cd $b2 $09
	ld   a, $34                                      ; $6582: $3e $34
	ld   hl, $7f69                                   ; $6584: $21 $69 $7f
	ld   de, $c2ee                                   ; $6587: $11 $ee $c2
	ld   bc, $0008                                   ; $658a: $01 $08 $00
	call FarMemCopy                                       ; $658d: $cd $b2 $09
	ld   bc, $000b                                   ; $6590: $01 $0b $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $6593: $cd $aa $04
	ld   hl, $c718                                   ; $6596: $21 $18 $c7
	ld   a, $a3                                      ; $6599: $3e $a3
	ld   [hl+], a                                    ; $659b: $22
	ld   [hl], $65                                   ; $659c: $36 $65
	ld   hl, wGameSubstate                                   ; $659e: $21 $a1 $c2
	inc  [hl]                                        ; $65a1: $34
	ret                                              ; $65a2: $c9


	ld   [bc], a                                     ; $65a3: $02
	nop                                              ; $65a4: $00
	inc  bc                                          ; $65a5: $03
	dec  b                                           ; $65a6: $05
	rst  $38                                         ; $65a7: $ff
	ld   bc, $0204                                   ; $65a8: $01 $04 $02
	ld   bc, $0103                                   ; $65ab: $01 $03 $01
	rst  $38                                         ; $65ae: $ff
	ld   bc, $0204                                   ; $65af: $01 $04 $02
	ld   [bc], a                                     ; $65b2: $02
	inc  bc                                          ; $65b3: $03
	ld   [bc], a                                     ; $65b4: $02
	rst  $38                                         ; $65b5: $ff
	ld   bc, $0204                                   ; $65b6: $01 $04 $02
	inc  bc                                          ; $65b9: $03
	inc  bc                                          ; $65ba: $03
	inc  bc                                          ; $65bb: $03
	rst  $38                                         ; $65bc: $ff
	ld   bc, $0204                                   ; $65bd: $01 $04 $02
	inc  b                                           ; $65c0: $04
	inc  bc                                          ; $65c1: $03
	inc  b                                           ; $65c2: $04
	rst  $38                                         ; $65c3: $ff
	ld   bc, $0204                                   ; $65c4: $01 $04 $02
	dec  b                                           ; $65c7: $05
	inc  bc                                          ; $65c8: $03
	ld   b, $07                                      ; $65c9: $06 $07
	rst  $38                                         ; $65cb: $ff
	ld   bc, $0204                                   ; $65cc: $01 $04 $02
	ld   b, $03                                      ; $65cf: $06 $03
	ld   [$0a09], sp                                 ; $65d1: $08 $09 $0a
	dec  bc                                          ; $65d4: $0b
	rst  $38                                         ; $65d5: $ff
	ld   bc, $0204                                   ; $65d6: $01 $04 $02
	rlca                                             ; $65d9: $07
	inc  bc                                          ; $65da: $03
	inc  c                                           ; $65db: $0c
	dec  c                                           ; $65dc: $0d
	ld   c, $0f                                      ; $65dd: $0e $0f
	db   $10                                         ; $65df: $10
	rst  $38                                         ; $65e0: $ff
	ld   bc, $0204                                   ; $65e1: $01 $04 $02
	ld   [$1103], sp                                 ; $65e4: $08 $03 $11
	ld   [de], a                                     ; $65e7: $12
	rst  $38                                         ; $65e8: $ff
	ld   bc, $0204                                   ; $65e9: $01 $04 $02
	add  hl, bc                                      ; $65ec: $09
	inc  bc                                          ; $65ed: $03
	inc  de                                          ; $65ee: $13
	rst  $38                                         ; $65ef: $ff
	ld   bc, $0204                                   ; $65f0: $01 $04 $02
	ld   a, [bc]                                     ; $65f3: $0a
	inc  bc                                          ; $65f4: $03
	inc  d                                           ; $65f5: $14
	dec  d                                           ; $65f6: $15
	rst  $38                                         ; $65f7: $ff
	ld   bc, $0204                                   ; $65f8: $01 $04 $02
	dec  bc                                          ; $65fb: $0b
	inc  bc                                          ; $65fc: $03
	ld   d, $ff                                      ; $65fd: $16 $ff
	ld   bc, $0204                                   ; $65ff: $01 $04 $02
	inc  c                                           ; $6602: $0c
	inc  bc                                          ; $6603: $03
	jr   @+$19                                       ; $6604: $18 $17

	add  hl, de                                      ; $6606: $19
	rst  $38                                         ; $6607: $ff
	ld   bc, $0204                                   ; $6608: $01 $04 $02
	dec  c                                           ; $660b: $0d
	inc  bc                                          ; $660c: $03
	ld   a, [de]                                     ; $660d: $1a
	dec  de                                          ; $660e: $1b
	inc  e                                           ; $660f: $1c
	dec  e                                           ; $6610: $1d
	rst  $38                                         ; $6611: $ff
	ld   bc, $1e03                                   ; $6612: $01 $03 $1e
	rra                                              ; $6615: $1f
	jr   nz, jr_030_6639                             ; $6616: $20 $21

	rst  $38                                         ; $6618: $ff
	ld   bc, $0204                                   ; $6619: $01 $04 $02
	ld   c, $03                                      ; $661c: $0e $03
	ld   [hl+], a                                    ; $661e: $22
	inc  hl                                          ; $661f: $23
	inc  h                                           ; $6620: $24
	dec  h                                           ; $6621: $25
	rst  $38                                         ; $6622: $ff
	ld   bc, $0204                                   ; $6623: $01 $04 $02
	rrca                                             ; $6626: $0f
	inc  bc                                          ; $6627: $03
	ld   h, $27                                      ; $6628: $26 $27
	jr   z, @+$01                                    ; $662a: $28 $ff

	ld   bc, $2903                                   ; $662c: $01 $03 $29
	ld   a, [hl+]                                    ; $662f: $2a
	dec  hl                                          ; $6630: $2b
	inc  l                                           ; $6631: $2c
	rst  $38                                         ; $6632: $ff
	ld   bc, $0004                                   ; $6633: $01 $04 $00
	ld   hl, $c718                                   ; $6636: $21 $18 $c7

jr_030_6639:
	ld   a, [hl+]                                    ; $6639: $2a
	ld   h, [hl]                                     ; $663a: $66
	ld   l, a                                        ; $663b: $6f
	ld   a, [hl+]                                    ; $663c: $2a
	ld   e, l                                        ; $663d: $5d
	ld   d, h                                        ; $663e: $54
	add  a                                           ; $663f: $87
	ld   c, a                                        ; $6640: $4f
	ld   b, $00                                      ; $6641: $06 $00
	ld   hl, $6656                                   ; $6643: $21 $56 $66
	add  hl, bc                                      ; $6646: $09
	ld   a, [hl+]                                    ; $6647: $2a
	ld   h, [hl]                                     ; $6648: $66
	ld   l, a                                        ; $6649: $6f
	ld   bc, $664f                                   ; $664a: $01 $4f $66
	push bc                                          ; $664d: $c5
	jp   hl                                          ; $664e: $e9


	ld   hl, $c718                                   ; $664f: $21 $18 $c7
	ld   a, e                                        ; $6652: $7b
	ld   [hl+], a                                    ; $6653: $22
	ld   [hl], d                                     ; $6654: $72
	ret                                              ; $6655: $c9


	ld   h, b                                        ; $6656: $60
	ld   h, [hl]                                     ; $6657: $66
	ld   l, a                                        ; $6658: $6f
	ld   h, [hl]                                     ; $6659: $66
	adc  d                                           ; $665a: $8a
	ld   h, [hl]                                     ; $665b: $66
	ld   a, c                                        ; $665c: $79
	ld   h, a                                        ; $665d: $67
	ld   a, [bc]                                     ; $665e: $0a
	ld   h, a                                        ; $665f: $67
	xor  a                                           ; $6660: $af
	ld   [wSCX], a                                  ; $6661: $ea $07 $c2
	ld   hl, wIE                                   ; $6664: $21 $0d $c2
	res  1, [hl]                                     ; $6667: $cb $8e
	ld   a, $06                                      ; $6669: $3e $06
	ld   [wGameSubstate], a                                  ; $666b: $ea $a1 $c2
	ret                                              ; $666e: $c9


	push de                                          ; $666f: $d5
	xor  a                                           ; $6670: $af
	ld   b, $08                                      ; $6671: $06 $08
	ld   hl, $c710                                   ; $6673: $21 $10 $c7

jr_030_6676:
	ld   [hl+], a                                    ; $6676: $22
	dec  b                                           ; $6677: $05
	jr   nz, jr_030_6676                             ; $6678: $20 $fc

	ld   bc, $801f                                   ; $667a: $01 $1f $80
	ld   hl, $c704                                   ; $667d: $21 $04 $c7
	call Call_030_72d9                               ; $6680: $cd $d9 $72
	ld   a, $04                                      ; $6683: $3e $04
	ld   [wGameSubstate], a                                  ; $6685: $ea $a1 $c2
	pop  de                                          ; $6688: $d1
	ret                                              ; $6689: $c9


	ld   a, [wWramBank]                                  ; $668a: $fa $93 $c2
	push af                                          ; $668d: $f5
	ld   a, $05                                      ; $668e: $3e $05
	ld   [wWramBank], a                                  ; $6690: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $6693: $e0 $70
	ld   a, [de]                                     ; $6695: $1a
	inc  de                                          ; $6696: $13
	push de                                          ; $6697: $d5
	ld   h, a                                        ; $6698: $67
	ld   l, $00                                      ; $6699: $2e $00
	add  hl, hl                                      ; $669b: $29
	ld   bc, $4000                                   ; $669c: $01 $00 $40
	add  hl, bc                                      ; $669f: $09
	ld   a, $32                                      ; $66a0: $3e $32
	ld   de, $d000                                   ; $66a2: $11 $00 $d0
	ld   bc, $0200                                   ; $66a5: $01 $00 $02
	call FarMemCopy                                       ; $66a8: $cd $b2 $09
	pop  hl                                          ; $66ab: $e1
	pop  af                                          ; $66ac: $f1
	ld   [wWramBank], a                                  ; $66ad: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $66b0: $e0 $70
	push hl                                          ; $66b2: $e5
	ld   a, $68                                      ; $66b3: $3e $68
	ld   [wSCX], a                                  ; $66b5: $ea $07 $c2
	ld   de, $8e00                                   ; $66b8: $11 $00 $8e
	ld   c, $80                                      ; $66bb: $0e $80
	ld   a, $05                                      ; $66bd: $3e $05
	ld   hl, $d000                                   ; $66bf: $21 $00 $d0
	ld   b, $10                                      ; $66c2: $06 $10
	call EnqueueHDMATransfer                                       ; $66c4: $cd $7c $02

jr_030_66c7:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $66c7: $cf
	ld   b, $02                                      ; $66c8: $06 $02
	ld   a, [wInGameButtonsHeld]                                  ; $66ca: $fa $0f $c2
	and  $03                                         ; $66cd: $e6 $03
	jr   z, jr_030_66d5                              ; $66cf: $28 $04

	sla  b                                           ; $66d1: $cb $20
	sla  b                                           ; $66d3: $cb $20

jr_030_66d5:
	ld   hl, wSCX                                   ; $66d5: $21 $07 $c2
	ld   a, [hl]                                     ; $66d8: $7e
	add  b                                           ; $66d9: $80
	ld   [hl], a                                     ; $66da: $77
	cp   $b8                                         ; $66db: $fe $b8
	jr   c, jr_030_66c7                              ; $66dd: $38 $e8

	ld   de, $8f00                                   ; $66df: $11 $00 $8f
	ld   c, $80                                      ; $66e2: $0e $80
	ld   a, $05                                      ; $66e4: $3e $05
	ld   hl, $d100                                   ; $66e6: $21 $00 $d1
	ld   b, $10                                      ; $66e9: $06 $10
	call EnqueueHDMATransfer                                       ; $66eb: $cd $7c $02

jr_030_66ee:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $66ee: $cf
	ld   b, $02                                      ; $66ef: $06 $02
	ld   a, [wInGameButtonsHeld]                                  ; $66f1: $fa $0f $c2
	and  $03                                         ; $66f4: $e6 $03
	jr   z, jr_030_66fc                              ; $66f6: $28 $04

	sla  b                                           ; $66f8: $cb $20
	sla  b                                           ; $66fa: $cb $20

jr_030_66fc:
	ld   hl, wSCX                                   ; $66fc: $21 $07 $c2
	ld   a, [hl]                                     ; $66ff: $7e
	add  b                                           ; $6700: $80
	jr   nc, jr_030_6705                             ; $6701: $30 $02

	ld   a, $00                                      ; $6703: $3e $00

jr_030_6705:
	ld   [hl], a                                     ; $6705: $77
	jr   nc, jr_030_66ee                             ; $6706: $30 $e6

	pop  de                                          ; $6708: $d1
	ret                                              ; $6709: $c9


	push de                                          ; $670a: $d5
	ld   a, [wWramBank]                                  ; $670b: $fa $93 $c2
	push af                                          ; $670e: $f5
	ld   a, $05                                      ; $670f: $3e $05
	ld   [wWramBank], a                                  ; $6711: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $6714: $e0 $70
	ld   hl, $d000                                   ; $6716: $21 $00 $d0
	ld   bc, $0200                                   ; $6719: $01 $00 $02
	call MemClear                                       ; $671c: $cd $95 $09
	pop  af                                          ; $671f: $f1
	ld   [wWramBank], a                                  ; $6720: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $6723: $e0 $70
	xor  a                                           ; $6725: $af
	ld   [wSCX], a                                  ; $6726: $ea $07 $c2

jr_030_6729:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6729: $cf
	ld   b, $02                                      ; $672a: $06 $02
	ld   a, [wInGameButtonsHeld]                                  ; $672c: $fa $0f $c2
	and  $03                                         ; $672f: $e6 $03
	jr   z, jr_030_6737                              ; $6731: $28 $04

	sla  b                                           ; $6733: $cb $20
	sla  b                                           ; $6735: $cb $20

jr_030_6737:
	ld   hl, wSCX                                   ; $6737: $21 $07 $c2
	ld   a, [hl]                                     ; $673a: $7e
	add  b                                           ; $673b: $80
	ld   [hl], a                                     ; $673c: $77
	cp   $50                                         ; $673d: $fe $50
	jr   c, jr_030_6729                              ; $673f: $38 $e8

	ld   de, $8e00                                   ; $6741: $11 $00 $8e
	ld   c, $80                                      ; $6744: $0e $80
	ld   a, $05                                      ; $6746: $3e $05
	ld   hl, $d000                                   ; $6748: $21 $00 $d0
	ld   b, $10                                      ; $674b: $06 $10
	call EnqueueHDMATransfer                                       ; $674d: $cd $7c $02

jr_030_6750:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6750: $cf
	ld   b, $02                                      ; $6751: $06 $02
	ld   a, [wInGameButtonsHeld]                                  ; $6753: $fa $0f $c2
	and  $03                                         ; $6756: $e6 $03
	jr   z, jr_030_675e                              ; $6758: $28 $04

	sla  b                                           ; $675a: $cb $20
	sla  b                                           ; $675c: $cb $20

jr_030_675e:
	ld   hl, wSCX                                   ; $675e: $21 $07 $c2
	ld   a, [hl]                                     ; $6761: $7e
	add  b                                           ; $6762: $80
	ld   [hl], a                                     ; $6763: $77
	cp   $98                                         ; $6764: $fe $98
	jr   c, jr_030_6750                              ; $6766: $38 $e8

	ld   de, $8f00                                   ; $6768: $11 $00 $8f
	ld   c, $80                                      ; $676b: $0e $80
	ld   a, $05                                      ; $676d: $3e $05
	ld   hl, $d100                                   ; $676f: $21 $00 $d1
	ld   b, $10                                      ; $6772: $06 $10
	call EnqueueHDMATransfer                                       ; $6774: $cd $7c $02
	pop  de                                          ; $6777: $d1
	ret                                              ; $6778: $c9


	push de                                          ; $6779: $d5
	call InitWideTextBoxDimensions                                       ; $677a: $cd $ec $0f
	call ClearTextBoxDimensionsAndSetDefaultTextStyle                                       ; $677d: $cd $09 $14
	ld   bc, $0a02                                   ; $6780: $01 $02 $0a
	call SetKanjiTextBoxDimensions                                       ; $6783: $cd $24 $14
	xor  a                                           ; $6786: $af
	ld   [$c71a], a                                  ; $6787: $ea $1a $c7
	pop  de                                          ; $678a: $d1

jr_030_678b:
	push de                                          ; $678b: $d5
	ld   bc, $0000                                   ; $678c: $01 $00 $00
	call SetCurrKanjiColAndRowToDrawOn                                       ; $678f: $cd $34 $14
	pop  de                                          ; $6792: $d1
	ld   a, [wWramBank]                                  ; $6793: $fa $93 $c2
	push af                                          ; $6796: $f5
	ld   a, $05                                      ; $6797: $3e $05
	ld   [wWramBank], a                                  ; $6799: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $679c: $e0 $70
	ld   a, [de]                                     ; $679e: $1a
	inc  de                                          ; $679f: $13
	push de                                          ; $67a0: $d5
	add  a                                           ; $67a1: $87
	ld   c, a                                        ; $67a2: $4f
	ld   b, $00                                      ; $67a3: $06 $00
	ld   hl, $683a                                   ; $67a5: $21 $3a $68
	add  hl, bc                                      ; $67a8: $09
	ld   a, [hl+]                                    ; $67a9: $2a
	ld   c, a                                        ; $67aa: $4f
	ld   b, [hl]                                     ; $67ab: $46
	ld   hl, $683a                                   ; $67ac: $21 $3a $68
	add  hl, bc                                      ; $67af: $09
	ld   e, l                                        ; $67b0: $5d
	ld   d, h                                        ; $67b1: $54
	ld   hl, $d000                                   ; $67b2: $21 $00 $d0
	ld   a, $30                                      ; $67b5: $3e $30
	call LoadInstantText                                       ; $67b7: $cd $06 $13
	pop  hl                                          ; $67ba: $e1
	pop  af                                          ; $67bb: $f1
	ld   [wWramBank], a                                  ; $67bc: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $67bf: $e0 $70
	push hl                                          ; $67c1: $e5
	ld   hl, $c71a                                   ; $67c2: $21 $1a $c7
	ld   a, [hl]                                     ; $67c5: $7e
	inc  [hl]                                        ; $67c6: $34
	ld   l, a                                        ; $67c7: $6f
	ld   h, $00                                      ; $67c8: $26 $00
	add  hl, hl                                      ; $67ca: $29
	ld   de, $6aff                                   ; $67cb: $11 $ff $6a
	add  hl, de                                      ; $67ce: $19
	ld   a, [hl+]                                    ; $67cf: $2a
	ld   e, a                                        ; $67d0: $5f
	ld   d, [hl]                                     ; $67d1: $56
	ld   c, $80                                      ; $67d2: $0e $80
	ld   a, $05                                      ; $67d4: $3e $05
	ld   hl, $d000                                   ; $67d6: $21 $00 $d0
	ld   b, $12                                      ; $67d9: $06 $12
	call EnqueueHDMATransfer                                       ; $67db: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $67de: $cf
	pop  de                                          ; $67df: $d1
	ld   a, [de]                                     ; $67e0: $1a
	cp   $ff                                         ; $67e1: $fe $ff
	jr   nz, jr_030_678b                             ; $67e3: $20 $a6

	inc  de                                          ; $67e5: $13
	push de                                          ; $67e6: $d5
	ld   a, [wWramBank]                                  ; $67e7: $fa $93 $c2
	push af                                          ; $67ea: $f5
	ld   a, $05                                      ; $67eb: $3e $05
	ld   [wWramBank], a                                  ; $67ed: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $67f0: $e0 $70
	ld   a, [$c71a]                                  ; $67f2: $fa $1a $c7
	dec  a                                           ; $67f5: $3d
	ld   e, a                                        ; $67f6: $5f
	ld   d, $00                                      ; $67f7: $16 $00
	ld   l, a                                        ; $67f9: $6f
	ld   h, $00                                      ; $67fa: $26 $00
	add  hl, hl                                      ; $67fc: $29
	add  hl, de                                      ; $67fd: $19
	ld   de, $6b09                                   ; $67fe: $11 $09 $6b
	add  hl, de                                      ; $6801: $19
	ld   a, [hl+]                                    ; $6802: $2a
	ld   e, a                                        ; $6803: $5f
	ld   a, [hl+]                                    ; $6804: $2a
	ld   d, a                                        ; $6805: $57
	ld   a, [hl]                                     ; $6806: $7e
	ld   hl, $d000                                   ; $6807: $21 $00 $d0
	ld   bc, $140b                                   ; $680a: $01 $0b $14
	call FarCopyLayout                                       ; $680d: $cd $2c $0b
	call FarCopyLayout                                       ; $6810: $cd $2c $0b
	ld   c, $81                                      ; $6813: $0e $81
	ld   de, $98a0                                   ; $6815: $11 $a0 $98
	ld   a, $05                                      ; $6818: $3e $05
	ld   hl, $d000                                   ; $681a: $21 $00 $d0
	ld   b, $16                                      ; $681d: $06 $16
	call EnqueueHDMATransfer                                       ; $681f: $cd $7c $02
	ld   c, $80                                      ; $6822: $0e $80
	ld   de, $98a0                                   ; $6824: $11 $a0 $98
	ld   a, $05                                      ; $6827: $3e $05
	ld   hl, $d160                                   ; $6829: $21 $60 $d1
	ld   b, $16                                      ; $682c: $06 $16
	call EnqueueHDMATransfer                                       ; $682e: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6831: $cf
	pop  af                                          ; $6832: $f1
	ld   [wWramBank], a                                  ; $6833: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $6836: $e0 $70
	pop  de                                          ; $6838: $d1
	ret                                              ; $6839: $c9


	ld   e, d                                        ; $683a: $5a
	nop                                              ; $683b: $00
	ld   h, h                                        ; $683c: $64
	nop                                              ; $683d: $00
	ld   [hl], d                                     ; $683e: $72
	nop                                              ; $683f: $00
	add  b                                           ; $6840: $80
	nop                                              ; $6841: $00
	adc  [hl]                                        ; $6842: $8e
	nop                                              ; $6843: $00
	sbc  h                                           ; $6844: $9c
	nop                                              ; $6845: $00
	xor  e                                           ; $6846: $ab
	nop                                              ; $6847: $00
	cp   b                                           ; $6848: $b8
	nop                                              ; $6849: $00
	add  $00                                         ; $684a: $c6 $00
	call nc, $e100                                   ; $684c: $d4 $00 $e1
	nop                                              ; $684f: $00
	db   $ed                                         ; $6850: $ed
	nop                                              ; $6851: $00
	ei                                               ; $6852: $fb
	nop                                              ; $6853: $00
	add  hl, bc                                      ; $6854: $09
	ld   bc, $0117                                   ; $6855: $01 $17 $01
	ld   h, $01                                      ; $6858: $26 $01
	inc  [hl]                                        ; $685a: $34
	ld   bc, $0143                           ; $685b: $01 $43 $01
	ld   d, b                                        ; $685e: $50
	ld   bc, $015d                                   ; $685f: $01 $5d $01
	ld   l, e                                        ; $6862: $6b
	ld   bc, $0177                                   ; $6863: $01 $77 $01
	add  l                                           ; $6866: $85
	ld   bc, $0193                                   ; $6867: $01 $93 $01
	and  c                                           ; $686a: $a1
	ld   bc, $01ae                                   ; $686b: $01 $ae $01
	cp   e                                           ; $686e: $bb
	ld   bc, $01ca                                   ; $686f: $01 $ca $01
	ret  c                                           ; $6872: $d8

	ld   bc, $01e5                                   ; $6873: $01 $e5 $01
	di                                               ; $6876: $f3
	ld   bc, $0200                                   ; $6877: $01 $00 $02
	rrca                                             ; $687a: $0f
	ld   [bc], a                                     ; $687b: $02
	dec  e                                           ; $687c: $1d
	ld   [bc], a                                     ; $687d: $02
	dec  hl                                          ; $687e: $2b
	ld   [bc], a                                     ; $687f: $02
	scf                                              ; $6880: $37
	ld   [bc], a                                     ; $6881: $02
	ld   b, l                                        ; $6882: $45
	ld   [bc], a                                     ; $6883: $02
	ld   d, h                                        ; $6884: $54
	ld   [bc], a                                     ; $6885: $02
	ld   h, c                                        ; $6886: $61
	ld   [bc], a                                     ; $6887: $02
	ld   l, l                                        ; $6888: $6d
	ld   [bc], a                                     ; $6889: $02
	ld   a, e                                        ; $688a: $7b
	ld   [bc], a                                     ; $688b: $02
	adc  b                                           ; $688c: $88
	ld   [bc], a                                     ; $688d: $02
	sbc  e                                           ; $688e: $9b
	ld   [bc], a                                     ; $688f: $02
	xor  c                                           ; $6890: $a9
	ld   [bc], a                                     ; $6891: $02
	or   a                                           ; $6892: $b7
	ld   [bc], a                                     ; $6893: $02
	db   $10                                         ; $6894: $10
	db   $10                                         ; $6895: $10
	db   $10                                         ; $6896: $10
	db   $10                                         ; $6897: $10
	db   $10                                         ; $6898: $10
	db   $10                                         ; $6899: $10
	db   $10                                         ; $689a: $10
	db   $10                                         ; $689b: $10
	stop                                             ; $689c: $10 $00
	db   $10                                         ; $689e: $10
	db   $10                                         ; $689f: $10
	db   $10                                         ; $68a0: $10
	db   $10                                         ; $68a1: $10
	ld   [bc], a                                     ; $68a2: $02
	call z, $2f02                                    ; $68a3: $cc $02 $2f
	db   $10                                         ; $68a6: $10
	ld   [bc], a                                     ; $68a7: $02
	inc  hl                                          ; $68a8: $23
	inc  bc                                          ; $68a9: $03
	add  [hl]                                        ; $68aa: $86
	nop                                              ; $68ab: $00
	db   $10                                         ; $68ac: $10
	db   $10                                         ; $68ad: $10
	db   $10                                         ; $68ae: $10
	db   $10                                         ; $68af: $10
	dec  b                                           ; $68b0: $05
	ld   hl, sp+$03                                  ; $68b1: $f8 $03
	ld   e, d                                        ; $68b3: $5a
	db   $10                                         ; $68b4: $10
	dec  b                                           ; $68b5: $05
	xor  d                                           ; $68b6: $aa
	dec  b                                           ; $68b7: $05
	ld   [hl-], a                                    ; $68b8: $32
	nop                                              ; $68b9: $00
	db   $10                                         ; $68ba: $10
	db   $10                                         ; $68bb: $10
	db   $10                                         ; $68bc: $10
	db   $10                                         ; $68bd: $10
	ld   b, $aa                                      ; $68be: $06 $aa
	ld   [bc], a                                     ; $68c0: $02
	call $0310                                       ; $68c1: $cd $10 $03
	xor  e                                           ; $68c4: $ab
	inc  b                                           ; $68c5: $04
	nop                                              ; $68c6: $00
	nop                                              ; $68c7: $00
	db   $10                                         ; $68c8: $10
	db   $10                                         ; $68c9: $10
	db   $10                                         ; $68ca: $10
	db   $10                                         ; $68cb: $10
	inc  b                                           ; $68cc: $04
	ld   hl, $0b04                                   ; $68cd: $21 $04 $0b
	db   $10                                         ; $68d0: $10
	ld   [bc], a                                     ; $68d1: $02
	sbc  c                                           ; $68d2: $99
	inc  b                                           ; $68d3: $04
	xor  b                                           ; $68d4: $a8
	nop                                              ; $68d5: $00
	db   $10                                         ; $68d6: $10
	db   $10                                         ; $68d7: $10
	db   $10                                         ; $68d8: $10
	inc  b                                           ; $68d9: $04
	ld   b, l                                        ; $68da: $45
	ld   [bc], a                                     ; $68db: $02
	ld   e, e                                        ; $68dc: $5b
	db   $10                                         ; $68dd: $10
	ld   b, $ab                                      ; $68de: $06 $ab
	ld   [bc], a                                     ; $68e0: $02
	jr   nz, jr_030_68e8                             ; $68e1: $20 $05

	inc  c                                           ; $68e3: $0c
	nop                                              ; $68e4: $00
	db   $10                                         ; $68e5: $10
	db   $10                                         ; $68e6: $10
	db   $10                                         ; $68e7: $10

jr_030_68e8:
	db   $10                                         ; $68e8: $10
	db   $10                                         ; $68e9: $10
	dec  b                                           ; $68ea: $05
	ld   a, c                                        ; $68eb: $79
	inc  bc                                          ; $68ec: $03
	ld   e, b                                        ; $68ed: $58
	db   $10                                         ; $68ee: $10
	ld   b, $ac                                      ; $68ef: $06 $ac
	nop                                              ; $68f1: $00
	db   $10                                         ; $68f2: $10
	db   $10                                         ; $68f3: $10
	db   $10                                         ; $68f4: $10
	db   $10                                         ; $68f5: $10
	inc  b                                           ; $68f6: $04
	ld   b, a                                        ; $68f7: $47
	ld   [bc], a                                     ; $68f8: $02
	add  l                                           ; $68f9: $85
	db   $10                                         ; $68fa: $10
	ld   b, $47                                      ; $68fb: $06 $47
	ld   b, $d2                                      ; $68fd: $06 $d2
	nop                                              ; $68ff: $00
	db   $10                                         ; $6900: $10
	db   $10                                         ; $6901: $10
	db   $10                                         ; $6902: $10
	db   $10                                         ; $6903: $10
	inc  b                                           ; $6904: $04
	rst  ToBoot                                         ; $6905: $c7
	dec  b                                           ; $6906: $05
	ld   [hl], h                                     ; $6907: $74
	db   $10                                         ; $6908: $10
	dec  b                                           ; $6909: $05
	xor  d                                           ; $690a: $aa
	ld   b, $69                                      ; $690b: $06 $69
	nop                                              ; $690d: $00
	db   $10                                         ; $690e: $10
	db   $10                                         ; $690f: $10
	db   $10                                         ; $6910: $10
	db   $10                                         ; $6911: $10
	db   $10                                         ; $6912: $10
	inc  b                                           ; $6913: $04
	dec  bc                                          ; $6914: $0b
	inc  bc                                          ; $6915: $03
	ld   e, b                                        ; $6916: $58
	db   $10                                         ; $6917: $10
	inc  bc                                          ; $6918: $03
	adc  d                                           ; $6919: $8a
	nop                                              ; $691a: $00
	db   $10                                         ; $691b: $10
	db   $10                                         ; $691c: $10
	db   $10                                         ; $691d: $10
	inc  bc                                          ; $691e: $03
	ld   e, b                                        ; $691f: $58
	inc  b                                           ; $6920: $04
	adc  a                                           ; $6921: $8f
	db   $10                                         ; $6922: $10
	sub  h                                           ; $6923: $94
	ld   d, h                                        ; $6924: $54
	ld   h, c                                        ; $6925: $61
	nop                                              ; $6926: $00
	db   $10                                         ; $6927: $10
	db   $10                                         ; $6928: $10
	db   $10                                         ; $6929: $10
	db   $10                                         ; $692a: $10
	inc  b                                           ; $692b: $04
	ld   c, $04                                      ; $692c: $0e $04
	ld   a, d                                        ; $692e: $7a
	db   $10                                         ; $692f: $10
	dec  b                                           ; $6930: $05
	and  d                                           ; $6931: $a2
	inc  bc                                          ; $6932: $03
	ld   c, [hl]                                     ; $6933: $4e
	nop                                              ; $6934: $00
	db   $10                                         ; $6935: $10
	db   $10                                         ; $6936: $10
	db   $10                                         ; $6937: $10
	db   $10                                         ; $6938: $10
	inc  bc                                          ; $6939: $03
	halt                                             ; $693a: $76
	dec  b                                           ; $693b: $05
	ld   hl, sp+$10                                  ; $693c: $f8 $10
	dec  b                                           ; $693e: $05
	xor  d                                           ; $693f: $aa
	ld   [bc], a                                     ; $6940: $02
	dec  d                                           ; $6941: $15
	nop                                              ; $6942: $00
	db   $10                                         ; $6943: $10
	db   $10                                         ; $6944: $10
	db   $10                                         ; $6945: $10
	db   $10                                         ; $6946: $10
	inc  bc                                          ; $6947: $03
	sbc  d                                           ; $6948: $9a
	inc  b                                           ; $6949: $04
	ld   a, b                                        ; $694a: $78
	db   $10                                         ; $694b: $10
	ld   b, $6c                                      ; $694c: $06 $6c
	inc  bc                                          ; $694e: $03
	ld   d, d                                        ; $694f: $52
	nop                                              ; $6950: $00
	db   $10                                         ; $6951: $10
	db   $10                                         ; $6952: $10
	db   $10                                         ; $6953: $10
	inc  b                                           ; $6954: $04
	rst  $20                                         ; $6955: $e7
	inc  b                                           ; $6956: $04
	dec  bc                                          ; $6957: $0b
	db   $10                                         ; $6958: $10
	dec  b                                           ; $6959: $05
	ld   c, $04                                      ; $695a: $0e $04
	inc  hl                                          ; $695c: $23
	dec  b                                           ; $695d: $05
	inc  c                                           ; $695e: $0c
	nop                                              ; $695f: $00
	db   $10                                         ; $6960: $10
	db   $10                                         ; $6961: $10
	db   $10                                         ; $6962: $10
	db   $10                                         ; $6963: $10
	ld   b, $ad                                      ; $6964: $06 $ad
	inc  b                                           ; $6966: $04
	rst  $20                                         ; $6967: $e7
	db   $10                                         ; $6968: $10
	ld   [bc], a                                     ; $6969: $02
	ld   [hl], e                                     ; $696a: $73
	inc  bc                                          ; $696b: $03
	rra                                              ; $696c: $1f
	nop                                              ; $696d: $00
	db   $10                                         ; $696e: $10
	db   $10                                         ; $696f: $10
	db   $10                                         ; $6970: $10
	ld   b, $ae                                      ; $6971: $06 $ae
	ld   [bc], a                                     ; $6973: $02
	call $0310                                       ; $6974: $cd $10 $03
	add  hl, de                                      ; $6977: $19
	ld   [bc], a                                     ; $6978: $02
	dec  bc                                          ; $6979: $0b
	inc  bc                                          ; $697a: $03
	add  [hl]                                        ; $697b: $86
	nop                                              ; $697c: $00
	db   $10                                         ; $697d: $10
	db   $10                                         ; $697e: $10
	db   $10                                         ; $697f: $10
	db   $10                                         ; $6980: $10
	db   $10                                         ; $6981: $10
	ld   b, $65                                      ; $6982: $06 $65
	ld   [bc], a                                     ; $6984: $02
	cpl                                              ; $6985: $2f
	db   $10                                         ; $6986: $10
	inc  bc                                          ; $6987: $03
	add  d                                           ; $6988: $82
	nop                                              ; $6989: $00
	db   $10                                         ; $698a: $10
	db   $10                                         ; $698b: $10
	db   $10                                         ; $698c: $10
	db   $10                                         ; $698d: $10
	db   $10                                         ; $698e: $10
	ld   [bc], a                                     ; $698f: $02
	and  e                                           ; $6990: $a3
	dec  b                                           ; $6991: $05
	dec  de                                          ; $6992: $1b
	db   $10                                         ; $6993: $10
	inc  bc                                          ; $6994: $03
	ld   c, [hl]                                     ; $6995: $4e
	nop                                              ; $6996: $00
	db   $10                                         ; $6997: $10
	db   $10                                         ; $6998: $10
	db   $10                                         ; $6999: $10
	db   $10                                         ; $699a: $10
	inc  bc                                          ; $699b: $03
	halt                                             ; $699c: $76
	inc  b                                           ; $699d: $04
	ld   hl, $0310                                   ; $699e: $21 $10 $03
	jp   c, Jump_030_6a06                            ; $69a1: $da $06 $6a

	nop                                              ; $69a4: $00
	db   $10                                         ; $69a5: $10
	db   $10                                         ; $69a6: $10
	db   $10                                         ; $69a7: $10
	db   $10                                         ; $69a8: $10
	db   $10                                         ; $69a9: $10
	inc  bc                                          ; $69aa: $03
	jp   $7606                                       ; $69ab: $c3 $06 $76


	db   $10                                         ; $69ae: $10
	ld   hl, $1000                                   ; $69af: $21 $00 $10
	db   $10                                         ; $69b2: $10
	db   $10                                         ; $69b3: $10
	db   $10                                         ; $69b4: $10
	inc  b                                           ; $69b5: $04
	ld   hl, $de05                                   ; $69b6: $21 $05 $de
	db   $10                                         ; $69b9: $10
	dec  b                                           ; $69ba: $05
	ccf                                              ; $69bb: $3f
	ld   [bc], a                                     ; $69bc: $02
	jr   nz, jr_030_69bf                             ; $69bd: $20 $00

jr_030_69bf:
	db   $10                                         ; $69bf: $10
	db   $10                                         ; $69c0: $10
	db   $10                                         ; $69c1: $10
	db   $10                                         ; $69c2: $10
	ld   b, $72                                      ; $69c3: $06 $72
	dec  b                                           ; $69c5: $05
	ld   [hl], h                                     ; $69c6: $74
	db   $10                                         ; $69c7: $10
	ld   b, $71                                      ; $69c8: $06 $71
	dec  b                                           ; $69ca: $05
	ld   b, b                                        ; $69cb: $40
	nop                                              ; $69cc: $00
	db   $10                                         ; $69cd: $10
	db   $10                                         ; $69ce: $10
	db   $10                                         ; $69cf: $10
	db   $10                                         ; $69d0: $10
	inc  b                                           ; $69d1: $04
	ret                                              ; $69d2: $c9


	dec  b                                           ; $69d3: $05
	ld   e, d                                        ; $69d4: $5a
	db   $10                                         ; $69d5: $10
	inc  b                                           ; $69d6: $04
	ld   c, $06                                      ; $69d7: $0e $06
	ld   [hl], h                                     ; $69d9: $74
	nop                                              ; $69da: $00
	db   $10                                         ; $69db: $10
	db   $10                                         ; $69dc: $10
	db   $10                                         ; $69dd: $10
	db   $10                                         ; $69de: $10
	db   $10                                         ; $69df: $10
	inc  b                                           ; $69e0: $04
	sbc  d                                           ; $69e1: $9a
	dec  b                                           ; $69e2: $05
	ld   h, a                                        ; $69e3: $67
	db   $10                                         ; $69e4: $10
	ld   b, $6b                                      ; $69e5: $06 $6b
	nop                                              ; $69e7: $00
	db   $10                                         ; $69e8: $10
	db   $10                                         ; $69e9: $10
	db   $10                                         ; $69ea: $10
	db   $10                                         ; $69eb: $10
	db   $10                                         ; $69ec: $10
	ld   b, $6d                                      ; $69ed: $06 $6d
	inc  b                                           ; $69ef: $04
	ld   hl, $0610                                   ; $69f0: $21 $10 $06
	ld   [hl], b                                     ; $69f3: $70
	nop                                              ; $69f4: $00
	db   $10                                         ; $69f5: $10
	db   $10                                         ; $69f6: $10
	db   $10                                         ; $69f7: $10
	ld   b, $75                                      ; $69f8: $06 $75
	ld   b, $76                                      ; $69fa: $06 $76
	db   $10                                         ; $69fc: $10
	ld   b, $7a                                      ; $69fd: $06 $7a
	ld   b, $7c                                      ; $69ff: $06 $7c
	inc  bc                                          ; $6a01: $03
	add  [hl]                                        ; $6a02: $86
	nop                                              ; $6a03: $00
	db   $10                                         ; $6a04: $10
	db   $10                                         ; $6a05: $10

Jump_030_6a06:
	db   $10                                         ; $6a06: $10
	db   $10                                         ; $6a07: $10
	inc  b                                           ; $6a08: $04
	ld   d, d                                        ; $6a09: $52
	ld   b, $73                                      ; $6a0a: $06 $73
	db   $10                                         ; $6a0c: $10
	ld   b, $66                                      ; $6a0d: $06 $66
	ld   [bc], a                                     ; $6a0f: $02
	ld   b, h                                        ; $6a10: $44
	nop                                              ; $6a11: $00
	db   $10                                         ; $6a12: $10
	db   $10                                         ; $6a13: $10
	db   $10                                         ; $6a14: $10
	db   $10                                         ; $6a15: $10
	db   $10                                         ; $6a16: $10
	dec  b                                           ; $6a17: $05
	and  a                                           ; $6a18: $a7
	db   $10                                         ; $6a19: $10
	ld   b, $79                                      ; $6a1a: $06 $79
	ld   b, $77                                      ; $6a1c: $06 $77
	nop                                              ; $6a1e: $00
	db   $10                                         ; $6a1f: $10
	db   $10                                         ; $6a20: $10
	db   $10                                         ; $6a21: $10
	db   $10                                         ; $6a22: $10
	ld   [bc], a                                     ; $6a23: $02
	or   c                                           ; $6a24: $b1
	dec  b                                           ; $6a25: $05
	sbc  $10                                         ; $6a26: $de $10
	ld   b, $7b                                      ; $6a28: $06 $7b
	dec  b                                           ; $6a2a: $05
	rst  ToBoot                                         ; $6a2b: $c7
	nop                                              ; $6a2c: $00
	db   $10                                         ; $6a2d: $10
	db   $10                                         ; $6a2e: $10
	db   $10                                         ; $6a2f: $10
	db   $10                                         ; $6a30: $10
	db   $10                                         ; $6a31: $10
	ld   b, $6e                                      ; $6a32: $06 $6e
	inc  b                                           ; $6a34: $04
	ld   hl, $0510                                   ; $6a35: $21 $10 $05
	ld   a, c                                        ; $6a38: $79
	nop                                              ; $6a39: $00
	db   $10                                         ; $6a3a: $10
	db   $10                                         ; $6a3b: $10
	db   $10                                         ; $6a3c: $10
	ld   [bc], a                                     ; $6a3d: $02
	inc  [hl]                                        ; $6a3e: $34
	dec  b                                           ; $6a3f: $05
	sbc  $10                                         ; $6a40: $de $10
	inc  b                                           ; $6a42: $04
	xor  d                                           ; $6a43: $aa
	inc  bc                                          ; $6a44: $03
	add  b                                           ; $6a45: $80
	inc  b                                           ; $6a46: $04
	and  c                                           ; $6a47: $a1
	nop                                              ; $6a48: $00
	db   $10                                         ; $6a49: $10
	db   $10                                         ; $6a4a: $10
	db   $10                                         ; $6a4b: $10
	db   $10                                         ; $6a4c: $10
	inc  b                                           ; $6a4d: $04
	call nc, $3502                                   ; $6a4e: $d4 $02 $35
	db   $10                                         ; $6a51: $10
	ld   b, $c6                                      ; $6a52: $06 $c6
	inc  bc                                          ; $6a54: $03
	sub  d                                           ; $6a55: $92
	nop                                              ; $6a56: $00
	db   $10                                         ; $6a57: $10
	db   $10                                         ; $6a58: $10
	db   $10                                         ; $6a59: $10
	db   $10                                         ; $6a5a: $10
	dec  b                                           ; $6a5b: $05
	or   $03                                         ; $6a5c: $f6 $03
	ld   e, b                                        ; $6a5e: $58
	db   $10                                         ; $6a5f: $10
	ld   b, $67                                      ; $6a60: $06 $67
	inc  bc                                          ; $6a62: $03
	rra                                              ; $6a63: $1f
	nop                                              ; $6a64: $00
	db   $10                                         ; $6a65: $10
	db   $10                                         ; $6a66: $10
	ld   b, $c7                                      ; $6a67: $06 $c7
	ld   b, $c8                                      ; $6a69: $06 $c8
	db   $eb                                         ; $6a6b: $eb
	ret  z                                           ; $6a6c: $c8

	and  h                                           ; $6a6d: $a4
	or   b                                           ; $6a6e: $b0
	cp   d                                           ; $6a6f: $ba
	nop                                              ; $6a70: $00
	db   $10                                         ; $6a71: $10
	db   $10                                         ; $6a72: $10
	db   $10                                         ; $6a73: $10
	db   $10                                         ; $6a74: $10
	inc  b                                           ; $6a75: $04
	ld   hl, $0b04                                   ; $6a76: $21 $04 $0b
	db   $10                                         ; $6a79: $10
	inc  bc                                          ; $6a7a: $03
	adc  d                                           ; $6a7b: $8a
	ld   b, $68                                      ; $6a7c: $06 $68
	nop                                              ; $6a7e: $00
	db   $10                                         ; $6a7f: $10
	db   $10                                         ; $6a80: $10
	db   $10                                         ; $6a81: $10
	ld   [bc], a                                     ; $6a82: $02
	add  l                                           ; $6a83: $85
	ld   b, $2e                                      ; $6a84: $06 $2e
	ld   b, $6f                                      ; $6a86: $06 $6f
	db   $10                                         ; $6a88: $10
	ld   [bc], a                                     ; $6a89: $02
	jr   nz, jr_030_6a8e                             ; $6a8a: $20 $02

jr_030_6a8c:
	dec  d                                           ; $6a8c: $15
	nop                                              ; $6a8d: $00

jr_030_6a8e:
	db   $10                                         ; $6a8e: $10
	db   $10                                         ; $6a8f: $10
	db   $10                                         ; $6a90: $10
	db   $10                                         ; $6a91: $10
	db   $10                                         ; $6a92: $10
	inc  b                                           ; $6a93: $04
	rst  $20                                         ; $6a94: $e7
	dec  b                                           ; $6a95: $05
	sbc  $10                                         ; $6a96: $de $10
	ld   b, $78                                      ; $6a98: $06 $78
	nop                                              ; $6a9a: $00
	db   $10                                         ; $6a9b: $10
	db   $10                                         ; $6a9c: $10
	db   $10                                         ; $6a9d: $10
	ld   b, $c7                                      ; $6a9e: $06 $c7
	ld   b, $c8                                      ; $6aa0: $06 $c8
	and  l                                           ; $6aa2: $a5
	rst  JumpTable                                         ; $6aa3: $df
	cp   c                                           ; $6aa4: $b9
	push af                                          ; $6aa5: $f5
	nop                                              ; $6aa6: $00
	db   $10                                         ; $6aa7: $10
	db   $10                                         ; $6aa8: $10
	db   $10                                         ; $6aa9: $10
	db   $10                                         ; $6aaa: $10
	ld   b, $e4                                      ; $6aab: $06 $e4
	dec  b                                           ; $6aad: $05
	ld   hl, sp+$10                                  ; $6aae: $f8 $10
	ld   b, $e5                                      ; $6ab0: $06 $e5
	ld   b, $09                                      ; $6ab2: $06 $09
	nop                                              ; $6ab4: $00
	db   $10                                         ; $6ab5: $10
	db   $10                                         ; $6ab6: $10
	db   $10                                         ; $6ab7: $10
	db   $10                                         ; $6ab8: $10
	db   $10                                         ; $6ab9: $10
	ld   b, $e6                                      ; $6aba: $06 $e6
	inc  bc                                          ; $6abc: $03
	xor  l                                           ; $6abd: $ad
	db   $10                                         ; $6abe: $10
	ld   [bc], a                                     ; $6abf: $02
	jr   nz, jr_030_6ac2                             ; $6ac0: $20 $00

jr_030_6ac2:
	ld   b, $c9                                      ; $6ac2: $06 $c9
	ld   b, $ca                                      ; $6ac4: $06 $ca
	ld   b, $cb                                      ; $6ac6: $06 $cb
	ld   b, $cc                                      ; $6ac8: $06 $cc
	ld   b, $cd                                      ; $6aca: $06 $cd
	ld   b, $ce                                      ; $6acc: $06 $ce
	ld   b, $cf                                      ; $6ace: $06 $cf
	ld   b, $d0                                      ; $6ad0: $06 $d0
	ld   b, $d1                                      ; $6ad2: $06 $d1
	nop                                              ; $6ad4: $00
	db   $10                                         ; $6ad5: $10
	db   $10                                         ; $6ad6: $10
	db   $10                                         ; $6ad7: $10
	db   $10                                         ; $6ad8: $10
	dec  b                                           ; $6ad9: $05
	sbc  a                                           ; $6ada: $9f
	dec  b                                           ; $6adb: $05
	xor  [hl]                                        ; $6adc: $ae
	db   $10                                         ; $6add: $10
	ld   [bc], a                                     ; $6ade: $02
	ld   a, c                                        ; $6adf: $79
	ld   [bc], a                                     ; $6ae0: $02
	ld   a, a                                        ; $6ae1: $7f
	nop                                              ; $6ae2: $00
	db   $10                                         ; $6ae3: $10
	db   $10                                         ; $6ae4: $10
	db   $10                                         ; $6ae5: $10
	db   $10                                         ; $6ae6: $10
	inc  bc                                          ; $6ae7: $03
	ld   e, d                                        ; $6ae8: $5a
	dec  b                                           ; $6ae9: $05
	sbc  $10                                         ; $6aea: $de $10
	ld   b, $e7                                      ; $6aec: $06 $e7
	ld   [bc], a                                     ; $6aee: $02
	jr   nz, jr_030_6af1                             ; $6aef: $20 $00

jr_030_6af1:
	db   $10                                         ; $6af1: $10
	db   $10                                         ; $6af2: $10
	db   $10                                         ; $6af3: $10
	db   $10                                         ; $6af4: $10
	inc  bc                                          ; $6af5: $03
	inc  d                                           ; $6af6: $14
	inc  b                                           ; $6af7: $04
	ld   hl, $0410                                   ; $6af8: $21 $10 $04
	rst  $30                                         ; $6afb: $f7
	inc  b                                           ; $6afc: $04
	and  c                                           ; $6afd: $a1
	nop                                              ; $6afe: $00
	nop                                              ; $6aff: $00
	adc  b                                           ; $6b00: $88
	jr   nz, jr_030_6a8c                             ; $6b01: $20 $89

	ld   b, b                                        ; $6b03: $40
	adc  d                                           ; $6b04: $8a
	ld   h, b                                        ; $6b05: $60
	adc  e                                           ; $6b06: $8b
	add  b                                           ; $6b07: $80
	adc  h                                           ; $6b08: $8c
	and  c                                           ; $6b09: $a1
	ld   a, l                                        ; $6b0a: $7d
	inc  [hl]                                        ; $6b0b: $34
	nop                                              ; $6b0c: $00
	ld   b, b                                        ; $6b0d: $40
	dec  [hl]                                        ; $6b0e: $35
	cp   b                                           ; $6b0f: $b8
	ld   b, c                                        ; $6b10: $41
	dec  [hl]                                        ; $6b11: $35
	ld   [hl], b                                     ; $6b12: $70
	ld   b, e                                        ; $6b13: $43
	dec  [hl]                                        ; $6b14: $35
	jr   z, @+$47                                    ; $6b15: $28 $45

	dec  [hl]                                        ; $6b17: $35
	ld   hl, $c704                                   ; $6b18: $21 $04 $c7
	call Call_030_7372                               ; $6b1b: $cd $72 $73
	jr   c, jr_030_6b30                              ; $6b1e: $38 $10

	push af                                          ; $6b20: $f5
	ld   a, $05                                      ; $6b21: $3e $05
	ld   [wGameSubstate], a                                  ; $6b23: $ea $a1 $c2
	ld   bc, $801f                                   ; $6b26: $01 $1f $80
	ld   hl, $c704                                   ; $6b29: $21 $04 $c7
	call Call_030_72d9                               ; $6b2c: $cd $d9 $72
	pop  af                                          ; $6b2f: $f1

jr_030_6b30:
	call Call_030_728d                               ; $6b30: $cd $8d $72
	ret                                              ; $6b33: $c9


	ld   hl, $c704                                   ; $6b34: $21 $04 $c7
	call Call_030_7372                               ; $6b37: $cd $72 $73
	jr   c, jr_030_6b4c                              ; $6b3a: $38 $10

	push af                                          ; $6b3c: $f5
	ld   a, $03                                      ; $6b3d: $3e $03
	ld   [wGameSubstate], a                                  ; $6b3f: $ea $a1 $c2
	ld   bc, $801f                                   ; $6b42: $01 $1f $80
	ld   hl, $c704                                   ; $6b45: $21 $04 $c7
	call Call_030_72d9                               ; $6b48: $cd $d9 $72
	pop  af                                          ; $6b4b: $f1

jr_030_6b4c:
	ld   b, a                                        ; $6b4c: $47
	ld   a, $1f                                      ; $6b4d: $3e $1f
	sub  b                                           ; $6b4f: $90
	call Call_030_728d                               ; $6b50: $cd $8d $72
	ret                                              ; $6b53: $c9


	ld   b, $00                                      ; $6b54: $06 $00
	ld   hl, wBGPalettes                                   ; $6b56: $21 $de $c2
	ld   c, $01                                      ; $6b59: $0e $01
	ld   de, $7080                                   ; $6b5b: $11 $80 $70
	call Call_030_7251                               ; $6b5e: $cd $51 $72
	ld   a, [wWramBank]                                  ; $6b61: $fa $93 $c2
	push af                                          ; $6b64: $f5
	ld   a, $05                                      ; $6b65: $3e $05
	ld   [wWramBank], a                                  ; $6b67: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $6b6a: $e0 $70
	ld   hl, $d000                                   ; $6b6c: $21 $00 $d0
	ld   bc, $0400                                   ; $6b6f: $01 $00 $04
	call MemClear                                       ; $6b72: $cd $95 $09
	ld   de, $9800                                   ; $6b75: $11 $00 $98
	ld   c, $81                                      ; $6b78: $0e $81
	ld   a, $05                                      ; $6b7a: $3e $05
	ld   hl, $d000                                   ; $6b7c: $21 $00 $d0
	ld   b, $40                                      ; $6b7f: $06 $40
	call EnqueueHDMATransfer                                       ; $6b81: $cd $7c $02
	pop  af                                          ; $6b84: $f1
	ld   [wWramBank], a                                  ; $6b85: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $6b88: $e0 $70
	ld   a, $34                                      ; $6b8a: $3e $34
	ld   hl, $7f59                                   ; $6b8c: $21 $59 $7f
	ld   de, wBGPalettes                                   ; $6b8f: $11 $de $c2
	ld   bc, $0018                                   ; $6b92: $01 $18 $00
	call FarMemCopy                                       ; $6b95: $cd $b2 $09
	ld   bc, $000b                                   ; $6b98: $01 $0b $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $6b9b: $cd $aa $04
	call ClearOam                                       ; $6b9e: $cd $d7 $0d
	ld   hl, $c718                                   ; $6ba1: $21 $18 $c7
	ld   a, $b2                                      ; $6ba4: $3e $b2
	ld   [hl+], a                                    ; $6ba6: $22
	ld   [hl], $6b                                   ; $6ba7: $36 $6b
	xor  a                                           ; $6ba9: $af
	ld   [$c71b], a                                  ; $6baa: $ea $1b $c7
	ld   hl, wGameSubstate                                   ; $6bad: $21 $a1 $c2
	inc  [hl]                                        ; $6bb0: $34
	ret                                              ; $6bb1: $c9


	ld   bc, $0300                                   ; $6bb2: $01 $00 $03
	ld   [bc], a                                     ; $6bb5: $02
	nop                                              ; $6bb6: $00
	inc  bc                                          ; $6bb7: $03
	ld   [bc], a                                     ; $6bb8: $02
	ld   bc, $0203                                   ; $6bb9: $01 $03 $02
	ld   [bc], a                                     ; $6bbc: $02
	inc  bc                                          ; $6bbd: $03
	ld   [bc], a                                     ; $6bbe: $02
	inc  bc                                          ; $6bbf: $03
	inc  bc                                          ; $6bc0: $03
	ld   [bc], a                                     ; $6bc1: $02
	inc  b                                           ; $6bc2: $04
	inc  bc                                          ; $6bc3: $03
	ld   [bc], a                                     ; $6bc4: $02
	dec  b                                           ; $6bc5: $05
	inc  bc                                          ; $6bc6: $03
	ld   [bc], a                                     ; $6bc7: $02
	ld   b, $03                                      ; $6bc8: $06 $03
	inc  bc                                          ; $6bca: $03
	ld   bc, $0301                                   ; $6bcb: $01 $01 $03
	ld   [bc], a                                     ; $6bce: $02
	rlca                                             ; $6bcf: $07
	inc  bc                                          ; $6bd0: $03
	ld   [bc], a                                     ; $6bd1: $02
	ld   [$0303], sp                                 ; $6bd2: $08 $03 $03
	ld   bc, $0302                                   ; $6bd5: $01 $02 $03
	ld   [bc], a                                     ; $6bd8: $02
	add  hl, bc                                      ; $6bd9: $09
	inc  bc                                          ; $6bda: $03
	ld   [bc], a                                     ; $6bdb: $02
	ld   a, [bc]                                     ; $6bdc: $0a
	inc  bc                                          ; $6bdd: $03
	inc  bc                                          ; $6bde: $03
	ld   bc, $0303                                   ; $6bdf: $01 $03 $03
	ld   [bc], a                                     ; $6be2: $02
	dec  bc                                          ; $6be3: $0b
	inc  bc                                          ; $6be4: $03
	ld   [bc], a                                     ; $6be5: $02
	inc  c                                           ; $6be6: $0c
	inc  bc                                          ; $6be7: $03
	inc  bc                                          ; $6be8: $03
	ld   bc, $0304                                   ; $6be9: $01 $04 $03
	ld   [bc], a                                     ; $6bec: $02
	dec  c                                           ; $6bed: $0d
	inc  bc                                          ; $6bee: $03
	ld   [bc], a                                     ; $6bef: $02
	ld   c, $02                                      ; $6bf0: $0e $02
	rrca                                             ; $6bf2: $0f
	inc  bc                                          ; $6bf3: $03
	ld   [bc], a                                     ; $6bf4: $02
	db   $10                                         ; $6bf5: $10
	ld   [bc], a                                     ; $6bf6: $02
	ld   de, $1202                                   ; $6bf7: $11 $02 $12
	ld   [bc], a                                     ; $6bfa: $02
	inc  de                                          ; $6bfb: $13
	ld   [bc], a                                     ; $6bfc: $02
	inc  d                                           ; $6bfd: $14
	ld   [bc], a                                     ; $6bfe: $02
	dec  d                                           ; $6bff: $15
	ld   [bc], a                                     ; $6c00: $02
	ld   d, $02                                      ; $6c01: $16 $02
	rla                                              ; $6c03: $17
	ld   [bc], a                                     ; $6c04: $02
	jr   jr_030_6c09                                 ; $6c05: $18 $02

	add  hl, de                                      ; $6c07: $19
	ld   [bc], a                                     ; $6c08: $02

jr_030_6c09:
	ld   a, [de]                                     ; $6c09: $1a
	ld   [bc], a                                     ; $6c0a: $02
	dec  de                                          ; $6c0b: $1b
	ld   [bc], a                                     ; $6c0c: $02
	inc  e                                           ; $6c0d: $1c
	inc  bc                                          ; $6c0e: $03
	inc  bc                                          ; $6c0f: $03
	ld   bc, $0305                                   ; $6c10: $01 $05 $03
	ld   [bc], a                                     ; $6c13: $02
	dec  e                                           ; $6c14: $1d
	inc  bc                                          ; $6c15: $03
	ld   [bc], a                                     ; $6c16: $02
	ld   e, $03                                      ; $6c17: $1e $03
	ld   [bc], a                                     ; $6c19: $02
	rra                                              ; $6c1a: $1f
	ld   [bc], a                                     ; $6c1b: $02
	jr   nz, @+$05                                   ; $6c1c: $20 $03

	inc  bc                                          ; $6c1e: $03
	ld   bc, $0306                                   ; $6c1f: $01 $06 $03
	ld   [bc], a                                     ; $6c22: $02
	ld   hl, $0203                                   ; $6c23: $21 $03 $02
	ld   [hl+], a                                    ; $6c26: $22
	inc  bc                                          ; $6c27: $03
	ld   [bc], a                                     ; $6c28: $02
	inc  hl                                          ; $6c29: $23
	inc  bc                                          ; $6c2a: $03
	ld   [bc], a                                     ; $6c2b: $02
	inc  h                                           ; $6c2c: $24
	inc  bc                                          ; $6c2d: $03
	ld   [bc], a                                     ; $6c2e: $02
	dec  h                                           ; $6c2f: $25
	inc  bc                                          ; $6c30: $03
	inc  bc                                          ; $6c31: $03
	ld   bc, $0307                                   ; $6c32: $01 $07 $03
	ld   [bc], a                                     ; $6c35: $02
	ld   h, $03                                      ; $6c36: $26 $03
	ld   [bc], a                                     ; $6c38: $02
	daa                                              ; $6c39: $27
	inc  bc                                          ; $6c3a: $03
	inc  bc                                          ; $6c3b: $03
	ld   bc, $0308                                   ; $6c3c: $01 $08 $03
	ld   [bc], a                                     ; $6c3f: $02
	jr   z, jr_030_6c45                              ; $6c40: $28 $03

	ld   [bc], a                                     ; $6c42: $02
	add  hl, hl                                      ; $6c43: $29
	inc  bc                                          ; $6c44: $03

jr_030_6c45:
	inc  bc                                          ; $6c45: $03
	ld   bc, $0309                                   ; $6c46: $01 $09 $03
	ld   [bc], a                                     ; $6c49: $02
	jr   z, jr_030_6c4f                              ; $6c4a: $28 $03

	ld   [bc], a                                     ; $6c4c: $02
	ld   a, [hl+]                                    ; $6c4d: $2a
	inc  bc                                          ; $6c4e: $03

jr_030_6c4f:
	inc  bc                                          ; $6c4f: $03
	inc  bc                                          ; $6c50: $03
	inc  bc                                          ; $6c51: $03
	inc  bc                                          ; $6c52: $03
	inc  bc                                          ; $6c53: $03
	ld   bc, $030a                                   ; $6c54: $01 $0a $03
	ld   [bc], a                                     ; $6c57: $02
	dec  hl                                          ; $6c58: $2b
	inc  bc                                          ; $6c59: $03
	inc  bc                                          ; $6c5a: $03
	inc  bc                                          ; $6c5b: $03
	inc  bc                                          ; $6c5c: $03
	nop                                              ; $6c5d: $00
	ld   a, [wInGameButtonsHeld]                                  ; $6c5e: $fa $0f $c2
	and  $03                                         ; $6c61: $e6 $03
	jr   z, jr_030_6c73                              ; $6c63: $28 $0e

	ld   hl, wSCY                                   ; $6c65: $21 $08 $c2
	ld   a, [hl]                                     ; $6c68: $7e
	add  $04                                         ; $6c69: $c6 $04
	and  $fc                                         ; $6c6b: $e6 $fc
	ld   [hl], a                                     ; $6c6d: $77
	and  $0f                                         ; $6c6e: $e6 $0f
	ret  nz                                          ; $6c70: $c0

	jr   jr_030_6c81                                 ; $6c71: $18 $0e

jr_030_6c73:
	ld   a, [wFrameCounter]                                  ; $6c73: $fa $8f $c2
	and  $01                                         ; $6c76: $e6 $01
	ret  nz                                          ; $6c78: $c0

	ld   hl, wSCY                                   ; $6c79: $21 $08 $c2
	inc  [hl]                                        ; $6c7c: $34
	ld   a, [hl]                                     ; $6c7d: $7e
	and  $0f                                         ; $6c7e: $e6 $0f
	ret  nz                                          ; $6c80: $c0

jr_030_6c81:
	ld   hl, $c718                                   ; $6c81: $21 $18 $c7
	ld   a, [hl+]                                    ; $6c84: $2a
	ld   h, [hl]                                     ; $6c85: $66
	ld   l, a                                        ; $6c86: $6f
	ld   a, [hl+]                                    ; $6c87: $2a
	ld   e, l                                        ; $6c88: $5d
	ld   d, h                                        ; $6c89: $54
	add  a                                           ; $6c8a: $87
	ld   c, a                                        ; $6c8b: $4f
	ld   b, $00                                      ; $6c8c: $06 $00
	ld   hl, $6ca1                                   ; $6c8e: $21 $a1 $6c
	add  hl, bc                                      ; $6c91: $09
	ld   a, [hl+]                                    ; $6c92: $2a
	ld   h, [hl]                                     ; $6c93: $66
	ld   l, a                                        ; $6c94: $6f
	ld   bc, $6c9a                                   ; $6c95: $01 $9a $6c
	push bc                                          ; $6c98: $c5
	jp   hl                                          ; $6c99: $e9


	ld   hl, $c718                                   ; $6c9a: $21 $18 $c7
	ld   a, e                                        ; $6c9d: $7b
	ld   [hl+], a                                    ; $6c9e: $22
	ld   [hl], d                                     ; $6c9f: $72
	ret                                              ; $6ca0: $c9


	xor  c                                           ; $6ca1: $a9
	ld   l, h                                        ; $6ca2: $6c
	xor  a                                           ; $6ca3: $af
	ld   l, h                                        ; $6ca4: $6c
	ld   [hl], h                                     ; $6ca5: $74
	ld   l, l                                        ; $6ca6: $6d
	add  [hl]                                        ; $6ca7: $86
	ld   [hl], c                                     ; $6ca8: $71
	ld   a, $08                                      ; $6ca9: $3e $08
	ld   [wGameSubstate], a                                  ; $6cab: $ea $a1 $c2
	ret                                              ; $6cae: $c9


	ld   a, [wWramBank]                                  ; $6caf: $fa $93 $c2
	push af                                          ; $6cb2: $f5
	ld   a, $05                                      ; $6cb3: $3e $05
	ld   [wWramBank], a                                  ; $6cb5: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $6cb8: $e0 $70
	ld   a, [de]                                     ; $6cba: $1a
	inc  de                                          ; $6cbb: $13
	push de                                          ; $6cbc: $d5
	ld   h, a                                        ; $6cbd: $67
	ld   l, $00                                      ; $6cbe: $2e $00
	add  hl, hl                                      ; $6cc0: $29
	ld   bc, $6000                                   ; $6cc1: $01 $00 $60
	add  hl, bc                                      ; $6cc4: $09
	ld   a, $32                                      ; $6cc5: $3e $32
	ld   de, $d000                                   ; $6cc7: $11 $00 $d0
	ld   bc, $0200                                   ; $6cca: $01 $00 $02
	call FarMemCopy                                       ; $6ccd: $cd $b2 $09
	ld   a, [$c71b]                                  ; $6cd0: $fa $1b $c7
	and  $07                                         ; $6cd3: $e6 $07
	ld   h, a                                        ; $6cd5: $67
	ld   l, $00                                      ; $6cd6: $2e $00
	add  hl, hl                                      ; $6cd8: $29
	ld   de, $8800                                   ; $6cd9: $11 $00 $88
	add  hl, de                                      ; $6cdc: $19
	ld   e, l                                        ; $6cdd: $5d
	ld   d, h                                        ; $6cde: $54
	ld   a, [$c71b]                                  ; $6cdf: $fa $1b $c7
	and  $08                                         ; $6ce2: $e6 $08
	sla  a                                           ; $6ce4: $cb $27
	swap a                                           ; $6ce6: $cb $37
	set  7, a                                        ; $6ce8: $cb $ff
	ld   c, a                                        ; $6cea: $4f
	ld   a, $05                                      ; $6ceb: $3e $05
	ld   hl, $d000                                   ; $6ced: $21 $00 $d0
	ld   b, $20                                      ; $6cf0: $06 $20
	call EnqueueHDMATransfer                                       ; $6cf2: $cd $7c $02
	ld   hl, $d200                                   ; $6cf5: $21 $00 $d2
	ld   bc, $0080                                   ; $6cf8: $01 $80 $00
	call MemClear                                       ; $6cfb: $cd $95 $09
	ld   a, [$c71b]                                  ; $6cfe: $fa $1b $c7
	and  $08                                         ; $6d01: $e6 $08
	set  1, a                                        ; $6d03: $cb $cf
	ld   hl, $d202                                   ; $6d05: $21 $02 $d2
	ld   de, $d222                                   ; $6d08: $11 $22 $d2
	ld   b, $10                                      ; $6d0b: $06 $10

jr_030_6d0d:
	ld   [hl+], a                                    ; $6d0d: $22
	ld   [de], a                                     ; $6d0e: $12
	inc  de                                          ; $6d0f: $13
	dec  b                                           ; $6d10: $05
	jr   nz, jr_030_6d0d                             ; $6d11: $20 $fa

	ld   a, [$c71b]                                  ; $6d13: $fa $1b $c7
	and  $07                                         ; $6d16: $e6 $07
	ld   e, a                                        ; $6d18: $5f
	ld   d, $00                                      ; $6d19: $16 $00
	ld   hl, $6d6c                                   ; $6d1b: $21 $6c $6d
	add  hl, de                                      ; $6d1e: $19
	ld   a, [hl]                                     ; $6d1f: $7e
	ld   hl, $d242                                   ; $6d20: $21 $42 $d2
	ld   de, $d262                                   ; $6d23: $11 $62 $d2
	ld   b, $10                                      ; $6d26: $06 $10

jr_030_6d28:
	ld   [hl+], a                                    ; $6d28: $22
	inc  a                                           ; $6d29: $3c
	ld   [de], a                                     ; $6d2a: $12
	inc  de                                          ; $6d2b: $13
	inc  a                                           ; $6d2c: $3c
	dec  b                                           ; $6d2d: $05
	jr   nz, jr_030_6d28                             ; $6d2e: $20 $f8

	ld   a, [wSCY]                                  ; $6d30: $fa $08 $c2
	add  $a0                                         ; $6d33: $c6 $a0
	and  $f8                                         ; $6d35: $e6 $f8
	ld   l, a                                        ; $6d37: $6f
	ld   h, $00                                      ; $6d38: $26 $00
	add  hl, hl                                      ; $6d3a: $29
	add  hl, hl                                      ; $6d3b: $29
	ld   de, $9800                                   ; $6d3c: $11 $00 $98
	add  hl, de                                      ; $6d3f: $19
	ld   e, l                                        ; $6d40: $5d
	ld   d, h                                        ; $6d41: $54
	push de                                          ; $6d42: $d5
	ld   c, $81                                      ; $6d43: $0e $81
	ld   a, $05                                      ; $6d45: $3e $05
	ld   hl, $d200                                   ; $6d47: $21 $00 $d2
	ld   b, $04                                      ; $6d4a: $06 $04
	call EnqueueHDMATransfer                                       ; $6d4c: $cd $7c $02
	pop  de                                          ; $6d4f: $d1
	ld   c, $80                                      ; $6d50: $0e $80
	ld   a, $05                                      ; $6d52: $3e $05
	ld   hl, $d240                                   ; $6d54: $21 $40 $d2
	ld   b, $04                                      ; $6d57: $06 $04
	call EnqueueHDMATransfer                                       ; $6d59: $cd $7c $02
	ld   hl, $c71b                                   ; $6d5c: $21 $1b $c7
	ld   a, [hl]                                     ; $6d5f: $7e
	inc  a                                           ; $6d60: $3c
	and  $0f                                         ; $6d61: $e6 $0f
	ld   [hl], a                                     ; $6d63: $77
	pop  de                                          ; $6d64: $d1
	pop  af                                          ; $6d65: $f1
	ld   [wWramBank], a                                  ; $6d66: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $6d69: $e0 $70
	ret                                              ; $6d6b: $c9


	add  b                                           ; $6d6c: $80
	and  b                                           ; $6d6d: $a0
	ret  nz                                          ; $6d6e: $c0

	ldh  [rP1], a                                    ; $6d6f: $e0 $00
	jr   nz, @+$42                                   ; $6d71: $20 $40

	ld   h, b                                        ; $6d73: $60
	push de                                          ; $6d74: $d5
	call InitWideTextBoxDimensions                                       ; $6d75: $cd $ec $0f
	call ClearTextBoxDimensionsAndSetDefaultTextStyle                                       ; $6d78: $cd $09 $14
	ld   bc, $1002                                   ; $6d7b: $01 $02 $10
	call SetKanjiTextBoxDimensions                                       ; $6d7e: $cd $24 $14
	ld   bc, $0000                                   ; $6d81: $01 $00 $00
	call SetCurrKanjiColAndRowToDrawOn                                       ; $6d84: $cd $34 $14
	pop  de                                          ; $6d87: $d1
	ld   a, [wWramBank]                                  ; $6d88: $fa $93 $c2
	push af                                          ; $6d8b: $f5
	ld   a, $05                                      ; $6d8c: $3e $05
	ld   [wWramBank], a                                  ; $6d8e: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $6d91: $e0 $70
	ld   a, [de]                                     ; $6d93: $1a
	inc  de                                          ; $6d94: $13
	push de                                          ; $6d95: $d5
	push af                                          ; $6d96: $f5
	ld   hl, $d000                                   ; $6d97: $21 $00 $d0
	ld   bc, $0200                                   ; $6d9a: $01 $00 $02
	call MemClear                                       ; $6d9d: $cd $95 $09
	pop  af                                          ; $6da0: $f1
	add  a                                           ; $6da1: $87
	ld   c, a                                        ; $6da2: $4f
	ld   b, $00                                      ; $6da3: $06 $00
	ld   hl, $6e56                                   ; $6da5: $21 $56 $6e
	add  hl, bc                                      ; $6da8: $09
	ld   a, [hl+]                                    ; $6da9: $2a
	ld   c, a                                        ; $6daa: $4f
	ld   b, [hl]                                     ; $6dab: $46
	ld   hl, $6e56                                   ; $6dac: $21 $56 $6e
	add  hl, bc                                      ; $6daf: $09
	ld   e, l                                        ; $6db0: $5d
	ld   d, h                                        ; $6db1: $54
	ld   hl, $d000                                   ; $6db2: $21 $00 $d0
	ld   a, $30                                      ; $6db5: $3e $30
	call LoadInstantText                                       ; $6db7: $cd $06 $13
	ld   a, [$c71b]                                  ; $6dba: $fa $1b $c7
	and  $07                                         ; $6dbd: $e6 $07
	ld   h, a                                        ; $6dbf: $67
	ld   l, $00                                      ; $6dc0: $2e $00
	add  hl, hl                                      ; $6dc2: $29
	ld   de, $8800                                   ; $6dc3: $11 $00 $88
	add  hl, de                                      ; $6dc6: $19
	ld   e, l                                        ; $6dc7: $5d
	ld   d, h                                        ; $6dc8: $54
	ld   a, [$c71b]                                  ; $6dc9: $fa $1b $c7
	and  $08                                         ; $6dcc: $e6 $08
	sla  a                                           ; $6dce: $cb $27
	swap a                                           ; $6dd0: $cb $37
	set  7, a                                        ; $6dd2: $cb $ff
	ld   c, a                                        ; $6dd4: $4f
	ld   a, $05                                      ; $6dd5: $3e $05
	ld   hl, $d000                                   ; $6dd7: $21 $00 $d0
	ld   b, $20                                      ; $6dda: $06 $20
	call EnqueueHDMATransfer                                       ; $6ddc: $cd $7c $02
	ld   hl, $d200                                   ; $6ddf: $21 $00 $d2
	ld   bc, $0080                                   ; $6de2: $01 $80 $00
	call MemClear                                       ; $6de5: $cd $95 $09
	ld   a, [$c71b]                                  ; $6de8: $fa $1b $c7
	and  $08                                         ; $6deb: $e6 $08
	set  0, a                                        ; $6ded: $cb $c7
	ld   hl, $d202                                   ; $6def: $21 $02 $d2
	ld   de, $d222                                   ; $6df2: $11 $22 $d2
	ld   b, $10                                      ; $6df5: $06 $10

jr_030_6df7:
	ld   [hl+], a                                    ; $6df7: $22
	ld   [de], a                                     ; $6df8: $12
	inc  de                                          ; $6df9: $13
	dec  b                                           ; $6dfa: $05
	jr   nz, jr_030_6df7                             ; $6dfb: $20 $fa

	ld   a, [$c71b]                                  ; $6dfd: $fa $1b $c7
	and  $07                                         ; $6e00: $e6 $07
	ld   e, a                                        ; $6e02: $5f
	ld   d, $00                                      ; $6e03: $16 $00
	ld   hl, $717e                                   ; $6e05: $21 $7e $71
	add  hl, de                                      ; $6e08: $19
	ld   a, [hl]                                     ; $6e09: $7e
	ld   hl, $d242                                   ; $6e0a: $21 $42 $d2
	ld   de, $d262                                   ; $6e0d: $11 $62 $d2
	ld   b, $10                                      ; $6e10: $06 $10

jr_030_6e12:
	ld   [hl+], a                                    ; $6e12: $22
	inc  a                                           ; $6e13: $3c
	ld   [de], a                                     ; $6e14: $12
	inc  de                                          ; $6e15: $13
	inc  a                                           ; $6e16: $3c
	dec  b                                           ; $6e17: $05
	jr   nz, jr_030_6e12                             ; $6e18: $20 $f8

	ld   a, [wSCY]                                  ; $6e1a: $fa $08 $c2
	add  $a0                                         ; $6e1d: $c6 $a0
	and  $f8                                         ; $6e1f: $e6 $f8
	ld   l, a                                        ; $6e21: $6f
	ld   h, $00                                      ; $6e22: $26 $00
	add  hl, hl                                      ; $6e24: $29
	add  hl, hl                                      ; $6e25: $29
	ld   de, $9800                                   ; $6e26: $11 $00 $98
	add  hl, de                                      ; $6e29: $19
	ld   e, l                                        ; $6e2a: $5d
	ld   d, h                                        ; $6e2b: $54
	push de                                          ; $6e2c: $d5
	ld   c, $81                                      ; $6e2d: $0e $81
	ld   a, $05                                      ; $6e2f: $3e $05
	ld   hl, $d200                                   ; $6e31: $21 $00 $d2
	ld   b, $04                                      ; $6e34: $06 $04
	call EnqueueHDMATransfer                                       ; $6e36: $cd $7c $02
	pop  de                                          ; $6e39: $d1
	ld   c, $80                                      ; $6e3a: $0e $80
	ld   a, $05                                      ; $6e3c: $3e $05
	ld   hl, $d240                                   ; $6e3e: $21 $40 $d2
	ld   b, $04                                      ; $6e41: $06 $04
	call EnqueueHDMATransfer                                       ; $6e43: $cd $7c $02
	ld   hl, $c71b                                   ; $6e46: $21 $1b $c7
	ld   a, [hl]                                     ; $6e49: $7e
	inc  a                                           ; $6e4a: $3c
	and  $0f                                         ; $6e4b: $e6 $0f
	ld   [hl], a                                     ; $6e4d: $77
	pop  de                                          ; $6e4e: $d1
	pop  af                                          ; $6e4f: $f1
	ld   [wWramBank], a                                  ; $6e50: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $6e53: $e0 $70
	ret                                              ; $6e55: $c9


	ld   e, b                                        ; $6e56: $58
	nop                                              ; $6e57: $00
	ld   l, l                                        ; $6e58: $6d
	nop                                              ; $6e59: $00
	add  h                                           ; $6e5a: $84
	nop                                              ; $6e5b: $00
	sbc  h                                           ; $6e5c: $9c
	nop                                              ; $6e5d: $00
	xor  [hl]                                        ; $6e5e: $ae
	nop                                              ; $6e5f: $00
	call nz, $db00                                   ; $6e60: $c4 $00 $db
	nop                                              ; $6e63: $00
	pop  af                                          ; $6e64: $f1
	nop                                              ; $6e65: $00
	nop                                              ; $6e66: $00
	ld   bc, $010f                                   ; $6e67: $01 $0f $01
	ld   e, $01                                      ; $6e6a: $1e $01
	dec  l                                           ; $6e6c: $2d
	ld   bc, $013b                                   ; $6e6d: $01 $3b $01
	ld   c, d                                        ; $6e70: $4a
	ld   bc, $0157                                   ; $6e71: $01 $57 $01
	ld   h, h                                        ; $6e74: $64
	ld   bc, $0175                                   ; $6e75: $01 $75 $01
	add  d                                           ; $6e78: $82
	ld   bc, $0191                                   ; $6e79: $01 $91 $01
	and  c                                           ; $6e7c: $a1
	ld   bc, $01b0                                   ; $6e7d: $01 $b0 $01
	cp   a                                           ; $6e80: $bf
	ld   bc, $01ce                                   ; $6e81: $01 $ce $01
	db   $dd                                         ; $6e84: $dd
	ld   bc, $01ea                                   ; $6e85: $01 $ea $01
	ld   sp, hl                                      ; $6e88: $f9
	ld   bc, $0206                                   ; $6e89: $01 $06 $02
	dec  d                                           ; $6e8c: $15
	ld   [bc], a                                     ; $6e8d: $02
	inc  h                                           ; $6e8e: $24
	ld   [bc], a                                     ; $6e8f: $02
	inc  sp                                          ; $6e90: $33
	ld   [bc], a                                     ; $6e91: $02
	ld   b, h                                        ; $6e92: $44
	ld   [bc], a                                     ; $6e93: $02
	ld   d, e                                        ; $6e94: $53
	ld   [bc], a                                     ; $6e95: $02
	ld   h, a                                        ; $6e96: $67
	ld   [bc], a                                     ; $6e97: $02
	ld   [hl], h                                     ; $6e98: $74
	ld   [bc], a                                     ; $6e99: $02
	add  c                                           ; $6e9a: $81
	ld   [bc], a                                     ; $6e9b: $02
	sub  b                                           ; $6e9c: $90
	ld   [bc], a                                     ; $6e9d: $02
	sbc  a                                           ; $6e9e: $9f
	ld   [bc], a                                     ; $6e9f: $02
	xor  h                                           ; $6ea0: $ac
	ld   [bc], a                                     ; $6ea1: $02
	cp   e                                           ; $6ea2: $bb
	ld   [bc], a                                     ; $6ea3: $02
	call z, $db02                                    ; $6ea4: $cc $02 $db
	ld   [bc], a                                     ; $6ea7: $02
	xor  $02                                         ; $6ea8: $ee $02
	rst  $38                                         ; $6eaa: $ff
	ld   [bc], a                                     ; $6eab: $02
	inc  d                                           ; $6eac: $14
	inc  bc                                          ; $6ead: $03
	db   $10                                         ; $6eae: $10
	db   $10                                         ; $6eaf: $10
	db   $10                                         ; $6eb0: $10
	db   $10                                         ; $6eb1: $10
	dec  b                                           ; $6eb2: $05
	jp   hl                                          ; $6eb3: $e9


	ld   [bc], a                                     ; $6eb4: $02
	push af                                          ; $6eb5: $f5
	ld   [bc], a                                     ; $6eb6: $02
	add  [hl]                                        ; $6eb7: $86
	inc  bc                                          ; $6eb8: $03
	cpl                                              ; $6eb9: $2f
	inc  b                                           ; $6eba: $04
	dec  l                                           ; $6ebb: $2d
	inc  b                                           ; $6ebc: $04
	sbc  d                                           ; $6ebd: $9a
	inc  bc                                          ; $6ebe: $03
	add  c                                           ; $6ebf: $81
	inc  bc                                          ; $6ec0: $03
	cpl                                              ; $6ec1: $2f
	nop                                              ; $6ec2: $00
	db   $10                                         ; $6ec3: $10
	db   $10                                         ; $6ec4: $10
	inc  bc                                          ; $6ec5: $03
	xor  l                                           ; $6ec6: $ad
	inc  b                                           ; $6ec7: $04
	ret                                              ; $6ec8: $c9


	ld   b, $60                                      ; $6ec9: $06 $60
	ld   h, e                                        ; $6ecb: $63
	ld   e, l                                        ; $6ecc: $5d
	sub  a                                           ; $6ecd: $97
	ld   bc, $0615                                   ; $6ece: $01 $15 $06
	adc  e                                           ; $6ed1: $8b
	inc  bc                                          ; $6ed2: $03
	ld   e, b                                        ; $6ed3: $58
	db   $10                                         ; $6ed4: $10
	ld   b, $d3                                      ; $6ed5: $06 $d3
	inc  bc                                          ; $6ed7: $03
	dec  e                                           ; $6ed8: $1d
	nop                                              ; $6ed9: $00
	db   $10                                         ; $6eda: $10
	db   $10                                         ; $6edb: $10
	db   $10                                         ; $6edc: $10
	inc  bc                                          ; $6edd: $03
	sub  b                                           ; $6ede: $90
	inc  bc                                          ; $6edf: $03
	cp   e                                           ; $6ee0: $bb
	ld   h, a                                        ; $6ee1: $67
	adc  l                                           ; $6ee2: $8d
	sbc  d                                           ; $6ee3: $9a
	ld   bc, $0615                                   ; $6ee4: $01 $15 $06
	dec  d                                           ; $6ee7: $15
	ld   b, $6f                                      ; $6ee8: $06 $6f
	db   $10                                         ; $6eea: $10
	inc  b                                           ; $6eeb: $04
	and  c                                           ; $6eec: $a1
	ld   b, $d3                                      ; $6eed: $06 $d3
	dec  b                                           ; $6eef: $05
	adc  l                                           ; $6ef0: $8d
	nop                                              ; $6ef1: $00
	rst  JumpTable                                         ; $6ef2: $df
	db   $ec                                         ; $6ef3: $ec
	and  e                                           ; $6ef4: $a3
	di                                               ; $6ef5: $f3
	ret  nz                                          ; $6ef6: $c0

	jp   nz, $cbd1                                   ; $6ef7: $c2 $d1 $cb

	ld   bc, $0215                                   ; $6efa: $01 $15 $02
	cp   [hl]                                        ; $6efd: $be
	ld   b, $7a                                      ; $6efe: $06 $7a
	db   $10                                         ; $6f00: $10
	dec  b                                           ; $6f01: $05
	rlca                                             ; $6f02: $07
	nop                                              ; $6f03: $00
	db   $10                                         ; $6f04: $10
	db   $10                                         ; $6f05: $10
	db   $10                                         ; $6f06: $10
	db   $10                                         ; $6f07: $10
	and  e                                           ; $6f08: $a3
	and  l                                           ; $6f09: $a5
	db   $ec                                         ; $6f0a: $ec
	cp   d                                           ; $6f0b: $ba
	ld   bc, $0415                                   ; $6f0c: $01 $15 $04
	ld   c, e                                        ; $6f0f: $4b
	ld   [bc], a                                     ; $6f10: $02
	call $0510                                       ; $6f11: $cd $10 $05
	inc  [hl]                                        ; $6f14: $34
	inc  b                                           ; $6f15: $04
	and  c                                           ; $6f16: $a1
	inc  bc                                          ; $6f17: $03
	add  [hl]                                        ; $6f18: $86
	nop                                              ; $6f19: $00
	db   $10                                         ; $6f1a: $10
	db   $10                                         ; $6f1b: $10
	db   $10                                         ; $6f1c: $10
	db   $10                                         ; $6f1d: $10
	ld   b, $64                                      ; $6f1e: $06 $64
	db   $10                                         ; $6f20: $10
	ld   [bc], a                                     ; $6f21: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6f22: $cf
	dec  b                                           ; $6f23: $05
	ld   a, [de]                                     ; $6f24: $1a
	ld   bc, $0615                                   ; $6f25: $01 $15 $06
	call nc, $bb03                                   ; $6f28: $d4 $03 $bb
	db   $10                                         ; $6f2b: $10
	sub  h                                           ; $6f2c: $94
	sbc  b                                           ; $6f2d: $98
	inc  bc                                          ; $6f2e: $03
	add  [hl]                                        ; $6f2f: $86
	nop                                              ; $6f30: $00
	db   $10                                         ; $6f31: $10
	db   $10                                         ; $6f32: $10
	db   $10                                         ; $6f33: $10
	dec  b                                           ; $6f34: $05
	or   $03                                         ; $6f35: $f6 $03
	ld   e, d                                        ; $6f37: $5a
	xor  h                                           ; $6f38: $ac
	push af                                          ; $6f39: $f5
	rlc  c                                           ; $6f3a: $cb $01
	dec  d                                           ; $6f3c: $15
	inc  b                                           ; $6f3d: $04
	ld   hl, $0b04                                   ; $6f3e: $21 $04 $0b
	db   $10                                         ; $6f41: $10
	inc  bc                                          ; $6f42: $03
	xor  l                                           ; $6f43: $ad
	ld   b, $d5                                      ; $6f44: $06 $d5
	nop                                              ; $6f46: $00
	db   $10                                         ; $6f47: $10
	db   $10                                         ; $6f48: $10
	db   $10                                         ; $6f49: $10
	db   $10                                         ; $6f4a: $10
	db   $10                                         ; $6f4b: $10
	ld   b, $65                                      ; $6f4c: $06 $65
	dec  b                                           ; $6f4e: $05
	ld   hl, sp+$10                                  ; $6f4f: $f8 $10
	inc  b                                           ; $6f51: $04
	dec  hl                                          ; $6f52: $2b
	ld   [bc], a                                     ; $6f53: $02
	ld   a, a                                        ; $6f54: $7f
	nop                                              ; $6f55: $00
	db   $10                                         ; $6f56: $10
	db   $10                                         ; $6f57: $10
	db   $10                                         ; $6f58: $10
	db   $10                                         ; $6f59: $10
	db   $10                                         ; $6f5a: $10
	ld   [bc], a                                     ; $6f5b: $02
	call z, $2104                                    ; $6f5c: $cc $04 $21
	db   $10                                         ; $6f5f: $10
	inc  bc                                          ; $6f60: $03
	jp   c, $8603                                    ; $6f61: $da $03 $86

	nop                                              ; $6f64: $00
	db   $10                                         ; $6f65: $10
	db   $10                                         ; $6f66: $10
	db   $10                                         ; $6f67: $10
	db   $10                                         ; $6f68: $10
	db   $10                                         ; $6f69: $10
	ld   b, $d6                                      ; $6f6a: $06 $d6
	inc  bc                                          ; $6f6c: $03
	ld   e, c                                        ; $6f6d: $59
	db   $10                                         ; $6f6e: $10
	ld   [bc], a                                     ; $6f6f: $02
	ld   hl, sp+$06                                  ; $6f70: $f8 $06
	rst  $10                                         ; $6f72: $d7
	nop                                              ; $6f73: $00
	db   $10                                         ; $6f74: $10
	db   $10                                         ; $6f75: $10
	db   $10                                         ; $6f76: $10
	db   $10                                         ; $6f77: $10
	db   $10                                         ; $6f78: $10
	inc  bc                                          ; $6f79: $03
	ld   h, l                                        ; $6f7a: $65
	inc  b                                           ; $6f7b: $04
	ld   hl, $9410                                   ; $6f7c: $21 $10 $94
	adc  l                                           ; $6f7f: $8d
	inc  bc                                          ; $6f80: $03
	add  [hl]                                        ; $6f81: $86
	nop                                              ; $6f82: $00
	db   $10                                         ; $6f83: $10
	db   $10                                         ; $6f84: $10
	db   $10                                         ; $6f85: $10
	db   $10                                         ; $6f86: $10
	db   $10                                         ; $6f87: $10
	db   $10                                         ; $6f88: $10
	ld   b, $6e                                      ; $6f89: $06 $6e
	db   $10                                         ; $6f8b: $10
	ld   [bc], a                                     ; $6f8c: $02
	sbc  c                                           ; $6f8d: $99
	inc  bc                                          ; $6f8e: $03
	rra                                              ; $6f8f: $1f
	nop                                              ; $6f90: $00
	db   $10                                         ; $6f91: $10
	db   $10                                         ; $6f92: $10
	db   $10                                         ; $6f93: $10
	db   $10                                         ; $6f94: $10
	db   $10                                         ; $6f95: $10
	inc  bc                                          ; $6f96: $03
	ld   [$0a06], a                                  ; $6f97: $ea $06 $0a
	db   $10                                         ; $6f9a: $10
	inc  bc                                          ; $6f9b: $03
	ld   c, d                                        ; $6f9c: $4a
	inc  bc                                          ; $6f9d: $03
	ld   c, [hl]                                     ; $6f9e: $4e
	nop                                              ; $6f9f: $00
	db   $10                                         ; $6fa0: $10
	db   $10                                         ; $6fa1: $10
	db   $10                                         ; $6fa2: $10
	db   $10                                         ; $6fa3: $10
	db   $10                                         ; $6fa4: $10
	db   $10                                         ; $6fa5: $10
	ld   [bc], a                                     ; $6fa6: $02
	daa                                              ; $6fa7: $27
	dec  b                                           ; $6fa8: $05
	inc  de                                          ; $6fa9: $13
	ld   b, $d8                                      ; $6faa: $06 $d8
	nop                                              ; $6fac: $00
	db   $10                                         ; $6fad: $10
	db   $10                                         ; $6fae: $10
	db   $10                                         ; $6faf: $10
	db   $10                                         ; $6fb0: $10
	db   $10                                         ; $6fb1: $10
	ld   [bc], a                                     ; $6fb2: $02
	ld   h, a                                        ; $6fb3: $67
	inc  b                                           ; $6fb4: $04
	adc  a                                           ; $6fb5: $8f
	db   $10                                         ; $6fb6: $10
	ld   b, $af                                      ; $6fb7: $06 $af
	nop                                              ; $6fb9: $00
	db   $10                                         ; $6fba: $10
	db   $10                                         ; $6fbb: $10
	db   $10                                         ; $6fbc: $10
	db   $10                                         ; $6fbd: $10
	db   $10                                         ; $6fbe: $10
	inc  bc                                          ; $6fbf: $03
	dec  e                                           ; $6fc0: $1d
	dec  b                                           ; $6fc1: $05
	ld   hl, sp+$10                                  ; $6fc2: $f8 $10
	inc  b                                           ; $6fc4: $04
	and  c                                           ; $6fc5: $a1
	inc  b                                           ; $6fc6: $04
	pop  hl                                          ; $6fc7: $e1
	ld   [bc], a                                     ; $6fc8: $02
	ld   b, h                                        ; $6fc9: $44
	nop                                              ; $6fca: $00
	db   $10                                         ; $6fcb: $10
	db   $10                                         ; $6fcc: $10
	db   $10                                         ; $6fcd: $10
	db   $10                                         ; $6fce: $10
	db   $10                                         ; $6fcf: $10
	inc  bc                                          ; $6fd0: $03
	inc  d                                           ; $6fd1: $14
	inc  b                                           ; $6fd2: $04
	rst  $20                                         ; $6fd3: $e7
	db   $10                                         ; $6fd4: $10
	inc  bc                                          ; $6fd5: $03
	inc  e                                           ; $6fd6: $1c
	nop                                              ; $6fd7: $00
	db   $10                                         ; $6fd8: $10
	db   $10                                         ; $6fd9: $10
	db   $10                                         ; $6fda: $10
	db   $10                                         ; $6fdb: $10
	db   $10                                         ; $6fdc: $10
	inc  bc                                          ; $6fdd: $03
	xor  a                                           ; $6fde: $af
	inc  bc                                          ; $6fdf: $03
	ld   e, d                                        ; $6fe0: $5a
	db   $10                                         ; $6fe1: $10
	ld   b, $b2                                      ; $6fe2: $06 $b2
	ld   b, $b3                                      ; $6fe4: $06 $b3
	nop                                              ; $6fe6: $00
	db   $10                                         ; $6fe7: $10
	db   $10                                         ; $6fe8: $10
	db   $10                                         ; $6fe9: $10
	db   $10                                         ; $6fea: $10
	ld   b, $ae                                      ; $6feb: $06 $ae
	dec  b                                           ; $6fed: $05
	inc  [hl]                                        ; $6fee: $34
	inc  b                                           ; $6fef: $04
	or   h                                           ; $6ff0: $b4
	db   $10                                         ; $6ff1: $10
	ld   b, $b8                                      ; $6ff2: $06 $b8
	inc  bc                                          ; $6ff4: $03
	add  [hl]                                        ; $6ff5: $86
	nop                                              ; $6ff6: $00
	db   $10                                         ; $6ff7: $10
	db   $10                                         ; $6ff8: $10
	db   $10                                         ; $6ff9: $10
	db   $10                                         ; $6ffa: $10
	db   $10                                         ; $6ffb: $10
	inc  bc                                          ; $6ffc: $03
	ld   h, e                                        ; $6ffd: $63
	ld   b, $e3                                      ; $6ffe: $06 $e3
	db   $10                                         ; $7000: $10
	ld   b, $66                                      ; $7001: $06 $66
	ld   [bc], a                                     ; $7003: $02
	ld   b, h                                        ; $7004: $44
	nop                                              ; $7005: $00
	db   $10                                         ; $7006: $10
	db   $10                                         ; $7007: $10
	db   $10                                         ; $7008: $10
	db   $10                                         ; $7009: $10
	db   $10                                         ; $700a: $10
	inc  b                                           ; $700b: $04
	rrca                                             ; $700c: $0f
	inc  b                                           ; $700d: $04
	ld   hl, $0210                                   ; $700e: $21 $10 $02
	ld   c, h                                        ; $7011: $4c
	ld   [bc], a                                     ; $7012: $02
	jr   nz, jr_030_7015                             ; $7013: $20 $00

jr_030_7015:
	db   $10                                         ; $7015: $10
	db   $10                                         ; $7016: $10
	db   $10                                         ; $7017: $10
	db   $10                                         ; $7018: $10
	db   $10                                         ; $7019: $10
	ld   b, $b0                                      ; $701a: $06 $b0
	ld   [bc], a                                     ; $701c: $02
	call $0310                                       ; $701d: $cd $10 $03
	ld   c, d                                        ; $7020: $4a
	dec  b                                           ; $7021: $05
	ld   hl, $1000                                   ; $7022: $21 $00 $10
	db   $10                                         ; $7025: $10
	db   $10                                         ; $7026: $10
	db   $10                                         ; $7027: $10
	db   $10                                         ; $7028: $10
	inc  bc                                          ; $7029: $03
	ld   [$b406], a                                  ; $702a: $ea $06 $b4
	db   $10                                         ; $702d: $10
	ld   b, $b5                                      ; $702e: $06 $b5
	ld   b, $b6                                      ; $7030: $06 $b6
	nop                                              ; $7032: $00
	db   $10                                         ; $7033: $10
	db   $10                                         ; $7034: $10
	db   $10                                         ; $7035: $10
	db   $10                                         ; $7036: $10
	db   $10                                         ; $7037: $10
	ld   [bc], a                                     ; $7038: $02
	db   $db                                         ; $7039: $db
	ld   [bc], a                                     ; $703a: $02
	cp   $10                                         ; $703b: $fe $10
	dec  b                                           ; $703d: $05
	ld   h, c                                        ; $703e: $61
	nop                                              ; $703f: $00
	db   $10                                         ; $7040: $10
	db   $10                                         ; $7041: $10
	db   $10                                         ; $7042: $10
	db   $10                                         ; $7043: $10
	db   $10                                         ; $7044: $10
	inc  bc                                          ; $7045: $03
	ld   d, e                                        ; $7046: $53
	inc  b                                           ; $7047: $04
	rst  $20                                         ; $7048: $e7
	db   $10                                         ; $7049: $10
	ld   b, $b7                                      ; $704a: $06 $b7
	ld   b, $b3                                      ; $704c: $06 $b3
	nop                                              ; $704e: $00
	db   $10                                         ; $704f: $10
	db   $10                                         ; $7050: $10
	db   $10                                         ; $7051: $10
	db   $10                                         ; $7052: $10
	db   $10                                         ; $7053: $10
	inc  bc                                          ; $7054: $03
	xor  a                                           ; $7055: $af
	inc  bc                                          ; $7056: $03
	ld   e, b                                        ; $7057: $58
	db   $10                                         ; $7058: $10
	ld   b, $b1                                      ; $7059: $06 $b1
	nop                                              ; $705b: $00
	db   $10                                         ; $705c: $10
	db   $10                                         ; $705d: $10
	db   $10                                         ; $705e: $10
	db   $10                                         ; $705f: $10
	db   $10                                         ; $7060: $10
	inc  bc                                          ; $7061: $03
	dec  e                                           ; $7062: $1d
	dec  b                                           ; $7063: $05
	ld   hl, sp+$10                                  ; $7064: $f8 $10
	ld   b, $b8                                      ; $7066: $06 $b8
	inc  bc                                          ; $7068: $03
	add  d                                           ; $7069: $82
	nop                                              ; $706a: $00
	db   $10                                         ; $706b: $10
	db   $10                                         ; $706c: $10
	db   $10                                         ; $706d: $10
	db   $10                                         ; $706e: $10
	db   $10                                         ; $706f: $10
	inc  bc                                          ; $7070: $03
	dec  e                                           ; $7071: $1d
	dec  b                                           ; $7072: $05
	ld   hl, sp+$10                                  ; $7073: $f8 $10
	inc  b                                           ; $7075: $04
	ld   h, l                                        ; $7076: $65
	dec  b                                           ; $7077: $05
	rst  $10                                         ; $7078: $d7
	nop                                              ; $7079: $00
	db   $10                                         ; $707a: $10
	db   $10                                         ; $707b: $10
	db   $10                                         ; $707c: $10
	db   $10                                         ; $707d: $10
	db   $10                                         ; $707e: $10
	inc  b                                           ; $707f: $04
	ret                                              ; $7080: $c9


	inc  b                                           ; $7081: $04
	ld   hl, $0610                                   ; $7082: $21 $10 $06
	cp   c                                           ; $7085: $b9
	inc  b                                           ; $7086: $04
	rst  $38                                         ; $7087: $ff
	nop                                              ; $7088: $00
	db   $10                                         ; $7089: $10
	db   $10                                         ; $708a: $10
	db   $10                                         ; $708b: $10
	db   $10                                         ; $708c: $10
	db   $10                                         ; $708d: $10
	ld   b, $ba                                      ; $708e: $06 $ba
	inc  b                                           ; $7090: $04
	ld   hl, $0610                                   ; $7091: $21 $10 $06
	ld   [$e104], a                                  ; $7094: $ea $04 $e1
	inc  b                                           ; $7097: $04
	and  c                                           ; $7098: $a1
	nop                                              ; $7099: $00
	db   $10                                         ; $709a: $10
	db   $10                                         ; $709b: $10
	db   $10                                         ; $709c: $10
	db   $10                                         ; $709d: $10
	db   $10                                         ; $709e: $10
	ld   b, $bb                                      ; $709f: $06 $bb
	ld   b, $76                                      ; $70a1: $06 $76
	db   $10                                         ; $70a3: $10
	ld   b, $b2                                      ; $70a4: $06 $b2
	inc  bc                                          ; $70a6: $03
	sbc  $00                                         ; $70a7: $de $00
	db   $10                                         ; $70a9: $10
	db   $10                                         ; $70aa: $10
	db   $10                                         ; $70ab: $10
	inc  b                                           ; $70ac: $04
	ldh  [c], a                                      ; $70ad: $e2
	ld   [bc], a                                     ; $70ae: $02
	ldh  [rSC], a                                    ; $70af: $e0 $02
	add  [hl]                                        ; $70b1: $86
	inc  bc                                          ; $70b2: $03
	cpl                                              ; $70b3: $2f
	ld   [bc], a                                     ; $70b4: $02
	add  l                                           ; $70b5: $85
	ld   [bc], a                                     ; $70b6: $02
	sbc  e                                           ; $70b7: $9b
	ret  z                                           ; $70b8: $c8

	or   a                                           ; $70b9: $b7
	and  l                                           ; $70ba: $a5
	push af                                          ; $70bb: $f5
	nop                                              ; $70bc: $00
	db   $10                                         ; $70bd: $10
	db   $10                                         ; $70be: $10
	db   $10                                         ; $70bf: $10
	db   $10                                         ; $70c0: $10
	db   $10                                         ; $70c1: $10
	inc  b                                           ; $70c2: $04
	ld   hl, $de05                                   ; $70c3: $21 $05 $de
	db   $10                                         ; $70c6: $10
	ld   b, $bc                                      ; $70c7: $06 $bc
	nop                                              ; $70c9: $00
	db   $10                                         ; $70ca: $10
	db   $10                                         ; $70cb: $10
	db   $10                                         ; $70cc: $10
	db   $10                                         ; $70cd: $10
	db   $10                                         ; $70ce: $10
	dec  b                                           ; $70cf: $05
	rst  $30                                         ; $70d0: $f7
	inc  b                                           ; $70d1: $04
	ld   b, a                                        ; $70d2: $47
	db   $10                                         ; $70d3: $10
	ld   b, $bd                                      ; $70d4: $06 $bd
	nop                                              ; $70d6: $00
	db   $10                                         ; $70d7: $10
	db   $10                                         ; $70d8: $10
	db   $10                                         ; $70d9: $10
	db   $10                                         ; $70da: $10
	db   $10                                         ; $70db: $10
	inc  b                                           ; $70dc: $04
	ld   a, [hl]                                     ; $70dd: $7e
	ld   b, $be                                      ; $70de: $06 $be
	db   $10                                         ; $70e0: $10
	ld   b, $bf                                      ; $70e1: $06 $bf
	ld   b, $c0                                      ; $70e3: $06 $c0
	nop                                              ; $70e5: $00
	db   $10                                         ; $70e6: $10
	db   $10                                         ; $70e7: $10
	db   $10                                         ; $70e8: $10
	db   $10                                         ; $70e9: $10
	db   $10                                         ; $70ea: $10
	dec  b                                           ; $70eb: $05
	ld   l, c                                        ; $70ec: $69
	dec  b                                           ; $70ed: $05
	sbc  $10                                         ; $70ee: $de $10
	ld   b, $e8                                      ; $70f0: $06 $e8
	inc  bc                                          ; $70f2: $03
	xor  h                                           ; $70f3: $ac
	nop                                              ; $70f4: $00
	db   $10                                         ; $70f5: $10
	db   $10                                         ; $70f6: $10
	db   $10                                         ; $70f7: $10
	db   $10                                         ; $70f8: $10
	db   $10                                         ; $70f9: $10
	dec  b                                           ; $70fa: $05
	inc  [hl]                                        ; $70fb: $34
	inc  b                                           ; $70fc: $04
	or   h                                           ; $70fd: $b4
	db   $10                                         ; $70fe: $10
	ld   b, $e9                                      ; $70ff: $06 $e9
	nop                                              ; $7101: $00
	db   $10                                         ; $7102: $10
	db   $10                                         ; $7103: $10
	db   $10                                         ; $7104: $10
	db   $10                                         ; $7105: $10
	db   $10                                         ; $7106: $10
	inc  bc                                          ; $7107: $03
	ld   e, b                                        ; $7108: $58
	inc  bc                                          ; $7109: $03
	cp   e                                           ; $710a: $bb
	db   $10                                         ; $710b: $10
	dec  b                                           ; $710c: $05
	ccf                                              ; $710d: $3f
	ld   b, $09                                      ; $710e: $06 $09
	nop                                              ; $7110: $00
	db   $10                                         ; $7111: $10
	db   $10                                         ; $7112: $10
	db   $10                                         ; $7113: $10
	db   $10                                         ; $7114: $10
	db   $10                                         ; $7115: $10
	ld   [bc], a                                     ; $7116: $02
	cp   [hl]                                        ; $7117: $be
	ld   [bc], a                                     ; $7118: $02
	ld   h, a                                        ; $7119: $67
	db   $10                                         ; $711a: $10
	ld   [bc], a                                     ; $711b: $02
	ld   hl, sp+$04                                  ; $711c: $f8 $04
	inc  hl                                          ; $711e: $23
	dec  b                                           ; $711f: $05
	inc  c                                           ; $7120: $0c
	nop                                              ; $7121: $00
	db   $10                                         ; $7122: $10
	db   $10                                         ; $7123: $10
	db   $10                                         ; $7124: $10
	db   $10                                         ; $7125: $10
	db   $10                                         ; $7126: $10
	dec  b                                           ; $7127: $05
	ld   hl, $c106                                   ; $7128: $21 $06 $c1
	db   $10                                         ; $712b: $10
	inc  b                                           ; $712c: $04
	ld   h, l                                        ; $712d: $65
	dec  b                                           ; $712e: $05
	rst  $10                                         ; $712f: $d7
	nop                                              ; $7130: $00
	db   $10                                         ; $7131: $10
	db   $10                                         ; $7132: $10
	dec  b                                           ; $7133: $05
	jp   hl                                          ; $7134: $e9


	ld   [bc], a                                     ; $7135: $02
	push af                                          ; $7136: $f5
	ld   [bc], a                                     ; $7137: $02
	add  [hl]                                        ; $7138: $86
	inc  bc                                          ; $7139: $03
	cpl                                              ; $713a: $2f
	xor  $c4                                         ; $713b: $ee $c4
	jp   z, $f5ac                                    ; $713d: $ca $ac $f5

	jp   nc, $fbcc                                   ; $7140: $d2 $cc $fb

	nop                                              ; $7143: $00
	db   $10                                         ; $7144: $10
	db   $10                                         ; $7145: $10
	db   $10                                         ; $7146: $10
	dec  b                                           ; $7147: $05
	jp   hl                                          ; $7148: $e9


	ld   [bc], a                                     ; $7149: $02
	push af                                          ; $714a: $f5
	ld   [bc], a                                     ; $714b: $02
	add  [hl]                                        ; $714c: $86
	inc  bc                                          ; $714d: $03
	cpl                                              ; $714e: $2f
	cp   c                                           ; $714f: $b9
	rst  $20                                         ; $7150: $e7
	push de                                          ; $7151: $d5
	ret  nz                                          ; $7152: $c0

	ei                                               ; $7153: $fb
	nop                                              ; $7154: $00
	dec  b                                           ; $7155: $05
	jp   hl                                          ; $7156: $e9


	ld   [bc], a                                     ; $7157: $02
	push af                                          ; $7158: $f5
	ld   [bc], a                                     ; $7159: $02
	add  [hl]                                        ; $715a: $86
	inc  bc                                          ; $715b: $03
	cpl                                              ; $715c: $2f
	cp   h                                           ; $715d: $bc
	xor  l                                           ; $715e: $ad
	di                                               ; $715f: $f3
	xor  c                                           ; $7160: $a9
	push af                                          ; $7161: $f5
	ret  nz                                          ; $7162: $c0

	ei                                               ; $7163: $fb
	ret  c                                           ; $7164: $d8

	db   $eb                                         ; $7165: $eb
	and  l                                           ; $7166: $a5
	cp   l                                           ; $7167: $bd
	cp   d                                           ; $7168: $ba
	nop                                              ; $7169: $00
	db   $10                                         ; $716a: $10
	dec  b                                           ; $716b: $05
	jp   hl                                          ; $716c: $e9


	ld   [bc], a                                     ; $716d: $02
	push af                                          ; $716e: $f5
	ld   [bc], a                                     ; $716f: $02
	add  [hl]                                        ; $7170: $86
	inc  bc                                          ; $7171: $03
	cpl                                              ; $7172: $2f
	db   $e3                                         ; $7173: $e3
	ret  z                                           ; $7174: $c8

	and  h                                           ; $7175: $a4
	and  e                                           ; $7176: $a3
	sub  $a2                                         ; $7177: $d6 $a2
	or   b                                           ; $7179: $b0
	ret                                              ; $717a: $c9


	db   $ec                                         ; $717b: $ec
	ei                                               ; $717c: $fb
	nop                                              ; $717d: $00
	add  b                                           ; $717e: $80
	and  b                                           ; $717f: $a0
	ret  nz                                          ; $7180: $c0

	ldh  [rP1], a                                    ; $7181: $e0 $00
	jr   nz, jr_030_71c5                             ; $7183: $20 $40

	ld   h, b                                        ; $7185: $60
	ld   a, [wWramBank]                                  ; $7186: $fa $93 $c2
	push af                                          ; $7189: $f5
	ld   a, $05                                      ; $718a: $3e $05
	ld   [wWramBank], a                                  ; $718c: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $718f: $e0 $70
	push de                                          ; $7191: $d5
	ld   hl, $d000                                   ; $7192: $21 $00 $d0
	ld   bc, $0040                                   ; $7195: $01 $40 $00
	call MemClear                                       ; $7198: $cd $95 $09
	ld   a, [wSCY]                                  ; $719b: $fa $08 $c2
	add  $a0                                         ; $719e: $c6 $a0
	and  $f8                                         ; $71a0: $e6 $f8
	ld   l, a                                        ; $71a2: $6f
	ld   h, $00                                      ; $71a3: $26 $00
	add  hl, hl                                      ; $71a5: $29
	add  hl, hl                                      ; $71a6: $29
	ld   de, $9800                                   ; $71a7: $11 $00 $98
	add  hl, de                                      ; $71aa: $19
	ld   e, l                                        ; $71ab: $5d
	ld   d, h                                        ; $71ac: $54
	ld   c, $81                                      ; $71ad: $0e $81
	ld   a, $05                                      ; $71af: $3e $05
	ld   hl, $d000                                   ; $71b1: $21 $00 $d0
	ld   b, $04                                      ; $71b4: $06 $04
	call EnqueueHDMATransfer                                       ; $71b6: $cd $7c $02
	pop  de                                          ; $71b9: $d1
	pop  af                                          ; $71ba: $f1
	ld   [wWramBank], a                                  ; $71bb: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $71be: $e0 $70
	ret                                              ; $71c0: $c9


	ld   a, $3c                                      ; $71c1: $3e $3c

jr_030_71c3:
	push af                                          ; $71c3: $f5
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $71c4: $cf

jr_030_71c5:
	ld   a, [wInGameButtonsHeld]                                  ; $71c5: $fa $0f $c2
	and  $03                                         ; $71c8: $e6 $03
	jr   nz, jr_030_71cf                             ; $71ca: $20 $03

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $71cc: $cf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $71cd: $cf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $71ce: $cf

jr_030_71cf:
	pop  af                                          ; $71cf: $f1
	dec  a                                           ; $71d0: $3d
	jr   nz, jr_030_71c3                             ; $71d1: $20 $f0

	ld   hl, wGameSubstate                                   ; $71d3: $21 $a1 $c2
	inc  [hl]                                        ; $71d6: $34
	ret                                              ; $71d7: $c9


	ld   b, $00                                      ; $71d8: $06 $00
	ld   hl, wBGPalettes                                   ; $71da: $21 $de $c2
	ld   c, BANK(Palettes_AllWhite)                                      ; $71dd: $0e $01
	ld   de, Palettes_AllWhite                                   ; $71df: $11 $00 $70
	xor  a                                           ; $71e2: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $71e3: $ea $62 $c3
	ld   a, $40                                      ; $71e6: $3e $40
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $71e8: $ea $63 $c3
	ld   a, $04                                      ; $71eb: $3e $04
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $71ed: $cd $48 $07
	ld   a, $10                                      ; $71f0: $3e $10

jr_030_71f2:
	push af                                          ; $71f2: $f5
	ld   b, $00                                      ; $71f3: $06 $00
	ld   c, $40                                      ; $71f5: $0e $40
	call FadePalettesAndSetRangeToUpdate                                       ; $71f7: $cd $32 $08
	ld   a, $04                                      ; $71fa: $3e $04

jr_030_71fc:
	push af                                          ; $71fc: $f5
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $71fd: $cf
	ld   a, [wInGameButtonsHeld]                                  ; $71fe: $fa $0f $c2
	and  $03                                         ; $7201: $e6 $03
	jr   nz, jr_030_7208                             ; $7203: $20 $03

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7205: $cf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7206: $cf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7207: $cf

jr_030_7208:
	pop  af                                          ; $7208: $f1
	dec  a                                           ; $7209: $3d
	jr   nz, jr_030_71fc                             ; $720a: $20 $f0

	ld   hl, sp+$01                                  ; $720c: $f8 $01
	ld   a, [hl]                                     ; $720e: $7e
	dec  a                                           ; $720f: $3d
	srl  a                                           ; $7210: $cb $3f
	jr   z, jr_030_7219                              ; $7212: $28 $05

	call SafeSetAudVolForMultipleChannels                                       ; $7214: $cd $e0 $1c
	jr   jr_030_721d                                 ; $7217: $18 $04

jr_030_7219:
	xor  a                                           ; $7219: $af
	call PlaySong                                       ; $721a: $cd $92 $1a

jr_030_721d:
	pop  af                                          ; $721d: $f1
	dec  a                                           ; $721e: $3d
	jr   nz, jr_030_71f2                             ; $721f: $20 $d1

	ld   a, BANK(Palettes_AllWhite)                                      ; $7221: $3e $01
	ld   hl, Palettes_AllWhite                                   ; $7223: $21 $00 $70
	ld   de, wBGPalettes                                   ; $7226: $11 $de $c2
	ld   bc, $0080                                   ; $7229: $01 $80 $00
	call FarMemCopy                                       ; $722c: $cd $b2 $09
	ld   bc, $003f                                   ; $722f: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $7232: $cd $aa $04
	call TurnOffLCD                                       ; $7235: $cd $e3 $08
	ld   h, GS_46                                      ; $7238: $26 $46
	ld   l, $00                                      ; $723a: $2e $00

	M_FarCall Func_11_7e57
	ret                                              ; $7250: $c9


Call_030_7251:
	ld   a, c                                        ; $7251: $79
	push af                                          ; $7252: $f5
	push de                                          ; $7253: $d5
	xor  a                                           ; $7254: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $7255: $ea $62 $c3
	ld   a, $40                                      ; $7258: $3e $40
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $725a: $ea $63 $c3
	ld   a, $03                                      ; $725d: $3e $03
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $725f: $cd $48 $07
	ld   a, $08                                      ; $7262: $3e $08

jr_030_7264:
	push af                                          ; $7264: $f5
	ld   b, $00                                      ; $7265: $06 $00
	ld   c, $40                                      ; $7267: $0e $40
	call FadePalettesAndSetRangeToUpdate                                       ; $7269: $cd $32 $08
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $726c: $cf
	ld   a, [wInGameButtonsHeld]                                  ; $726d: $fa $0f $c2
	and  $03                                         ; $7270: $e6 $03
	jr   nz, jr_030_7277                             ; $7272: $20 $03

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7274: $cf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7275: $cf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7276: $cf

jr_030_7277:
	pop  af                                          ; $7277: $f1
	dec  a                                           ; $7278: $3d
	jr   nz, jr_030_7264                             ; $7279: $20 $e9

	pop  hl                                          ; $727b: $e1
	pop  af                                          ; $727c: $f1
	ld   de, wBGPalettes                                   ; $727d: $11 $de $c2
	ld   bc, $0080                                   ; $7280: $01 $80 $00
	call FarMemCopy                                       ; $7283: $cd $b2 $09
	ld   bc, $003f                                   ; $7286: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $7289: $cd $aa $04
	ret                                              ; $728c: $c9


Call_030_728d:
	ld   c, a                                        ; $728d: $4f
	ld   b, $00                                      ; $728e: $06 $00
	ld   l, c                                        ; $7290: $69
	ld   h, b                                        ; $7291: $60
	sla  c                                           ; $7292: $cb $21
	rl   b                                           ; $7294: $cb $10
	sla  c                                           ; $7296: $cb $21
	rl   b                                           ; $7298: $cb $10
	sla  c                                           ; $729a: $cb $21
	rl   b                                           ; $729c: $cb $10
	sla  c                                           ; $729e: $cb $21
	rl   b                                           ; $72a0: $cb $10
	sla  c                                           ; $72a2: $cb $21
	rl   b                                           ; $72a4: $cb $10
	add  hl, bc                                      ; $72a6: $09
	sla  c                                           ; $72a7: $cb $21
	rl   b                                           ; $72a9: $cb $10
	sla  c                                           ; $72ab: $cb $21
	rl   b                                           ; $72ad: $cb $10
	sla  c                                           ; $72af: $cb $21
	rl   b                                           ; $72b1: $cb $10
	sla  c                                           ; $72b3: $cb $21
	rl   b                                           ; $72b5: $cb $10
	sla  c                                           ; $72b7: $cb $21
	rl   b                                           ; $72b9: $cb $10
	add  hl, bc                                      ; $72bb: $09
	ld   a, l                                        ; $72bc: $7d
	ld   [$c2e4], a                                  ; $72bd: $ea $e4 $c2
	ld   a, h                                        ; $72c0: $7c
	ld   [$c2e5], a                                  ; $72c1: $ea $e5 $c2
	ld   a, $00                                      ; $72c4: $3e $00
	ld   hl, $c2e4                                   ; $72c6: $21 $e4 $c2
	ld   de, $c2ec                                   ; $72c9: $11 $ec $c2
	ld   bc, $0002                                   ; $72cc: $01 $02 $00
	call FarMemCopy                                       ; $72cf: $cd $b2 $09
	ld   bc, $0707                                   ; $72d2: $01 $07 $07
	call SetBGandOBJPaletteRangesToUpdate                                       ; $72d5: $cd $aa $04
	ret                                              ; $72d8: $c9


Call_030_72d9:
	ld   a, b                                        ; $72d9: $78
	ld   [hl+], a                                    ; $72da: $22
	ld   a, c                                        ; $72db: $79
	ld   [hl+], a                                    ; $72dc: $22
	push hl                                          ; $72dd: $e5
	ld   a, b                                        ; $72de: $78
	cpl                                              ; $72df: $2f
	ld   l, a                                        ; $72e0: $6f
	ld   h, $ff                                      ; $72e1: $26 $ff
	ld   de, $0001                                   ; $72e3: $11 $01 $00
	add  hl, de                                      ; $72e6: $19
	ld   a, l                                        ; $72e7: $7d
	ld   d, h                                        ; $72e8: $54
	pop  hl                                          ; $72e9: $e1
	ld   [hl+], a                                    ; $72ea: $22
	ld   a, d                                        ; $72eb: $7a
	ld   [hl+], a                                    ; $72ec: $22
	xor  a                                           ; $72ed: $af
	ld   [hl+], a                                    ; $72ee: $22
	ld   [hl+], a                                    ; $72ef: $22
	ret                                              ; $72f0: $c9


Call_030_72f1:
	ld   de, $c6f6                                   ; $72f1: $11 $f6 $c6
	ld   a, l                                        ; $72f4: $7d
	ld   [de], a                                     ; $72f5: $12
	inc  de                                          ; $72f6: $13
	ld   a, h                                        ; $72f7: $7c
	ld   [de], a                                     ; $72f8: $12
	inc  de                                          ; $72f9: $13
	ld   b, $06                                      ; $72fa: $06 $06

jr_030_72fc:
	ld   a, [hl+]                                    ; $72fc: $2a
	ld   [de], a                                     ; $72fd: $12
	inc  de                                          ; $72fe: $13
	dec  b                                           ; $72ff: $05
	jr   nz, jr_030_72fc                             ; $7300: $20 $fa

	ld   a, [$c6f8]                                  ; $7302: $fa $f8 $c6
	ld   b, a                                        ; $7305: $47
	ld   a, [$c6fc]                                  ; $7306: $fa $fc $c6
	cp   b                                           ; $7309: $b8
	ld   a, [$c6fd]                                  ; $730a: $fa $fd $c6
	ret  nc                                          ; $730d: $d0

	ld   a, [$c6f9]                                  ; $730e: $fa $f9 $c6
	ld   e, a                                        ; $7311: $5f
	ld   d, $00                                      ; $7312: $16 $00
	sla  e                                           ; $7314: $cb $23
	rl   d                                           ; $7316: $cb $12
	ld   a, [$c6fa]                                  ; $7318: $fa $fa $c6
	ld   l, a                                        ; $731b: $6f
	ld   a, [$c6fb]                                  ; $731c: $fa $fb $c6
	ld   h, a                                        ; $731f: $67
	add  hl, de                                      ; $7320: $19
	ld   a, [$c6f8]                                  ; $7321: $fa $f8 $c6
	ld   d, $00                                      ; $7324: $16 $00
	sla  a                                           ; $7326: $cb $27
	rl   d                                           ; $7328: $cb $12
	cpl                                              ; $732a: $2f
	ld   e, a                                        ; $732b: $5f
	ld   a, d                                        ; $732c: $7a
	cpl                                              ; $732d: $2f
	ld   d, a                                        ; $732e: $57
	ld   a, e                                        ; $732f: $7b
	add  $01                                         ; $7330: $c6 $01
	ld   e, a                                        ; $7332: $5f
	ld   a, d                                        ; $7333: $7a
	adc  $00                                         ; $7334: $ce $00
	ld   d, a                                        ; $7336: $57
	ld   a, [$c6fd]                                  ; $7337: $fa $fd $c6
	ld   c, a                                        ; $733a: $4f

jr_030_733b:
	bit  7, h                                        ; $733b: $cb $7c
	jr   nz, jr_030_7343                             ; $733d: $20 $04

	inc  c                                           ; $733f: $0c
	add  hl, de                                      ; $7340: $19
	jr   jr_030_733b                                 ; $7341: $18 $f8

jr_030_7343:
	ld   a, c                                        ; $7343: $79
	ld   [$c6fd], a                                  ; $7344: $ea $fd $c6
	ld   a, l                                        ; $7347: $7d
	ld   [$c6fa], a                                  ; $7348: $ea $fa $c6
	ld   a, h                                        ; $734b: $7c
	ld   [$c6fb], a                                  ; $734c: $ea $fb $c6
	ld   hl, $c6fc                                   ; $734f: $21 $fc $c6
	inc  [hl]                                        ; $7352: $34
	ld   a, [$c6f6]                                  ; $7353: $fa $f6 $c6
	ld   l, a                                        ; $7356: $6f
	ld   a, [$c6f7]                                  ; $7357: $fa $f7 $c6
	ld   h, a                                        ; $735a: $67
	ld   de, $c6f8                                   ; $735b: $11 $f8 $c6
	ld   b, $06                                      ; $735e: $06 $06

jr_030_7360:
	ld   a, [de]                                     ; $7360: $1a
	ld   [hl+], a                                    ; $7361: $22
	inc  de                                          ; $7362: $13
	dec  b                                           ; $7363: $05
	jr   nz, jr_030_7360                             ; $7364: $20 $fa

	ld   a, [$c6f8]                                  ; $7366: $fa $f8 $c6
	ld   b, a                                        ; $7369: $47
	ld   a, [$c6fc]                                  ; $736a: $fa $fc $c6
	cp   b                                           ; $736d: $b8
	ld   a, [$c6fd]                                  ; $736e: $fa $fd $c6
	ret                                              ; $7371: $c9


Call_030_7372:
	ld   b, $01                                      ; $7372: $06 $01
	ld   a, [wInGameButtonsHeld]                                  ; $7374: $fa $0f $c2
	and  $03                                         ; $7377: $e6 $03
	jr   z, jr_030_737f                              ; $7379: $28 $04

	sla  b                                           ; $737b: $cb $20
	sla  b                                           ; $737d: $cb $20

jr_030_737f:
	push bc                                          ; $737f: $c5
	push hl                                          ; $7380: $e5
	call Call_030_72f1                               ; $7381: $cd $f1 $72
	pop  hl                                          ; $7384: $e1
	pop  bc                                          ; $7385: $c1
	jr   nc, jr_030_738b                             ; $7386: $30 $03

	dec  b                                           ; $7388: $05
	jr   nz, jr_030_737f                             ; $7389: $20 $f4

jr_030_738b:
	ret                                              ; $738b: $c9


LCDCFunc02::
jr_030_738c:
	ldh  a, [rSTAT]                                  ; $738c: $f0 $41
	and  $03                                         ; $738e: $e6 $03
	jr   z, jr_030_738c                              ; $7390: $28 $fa

jr_030_7392:
	ldh  a, [rSTAT]                                  ; $7392: $f0 $41
	and  $03                                         ; $7394: $e6 $03
	jr   nz, jr_030_7392                             ; $7396: $20 $fa

	ld   a, $ff                                      ; $7398: $3e $ff
	ldh  [rWX], a                                    ; $739a: $e0 $4b
	jp   LCDCInterruptHandler.return                                       ; $739c: $c3 $4a $04


LCDCFunc03::
jr_030_739f:
	ldh  a, [rSTAT]                                  ; $739f: $f0 $41
	and  $03                                         ; $73a1: $e6 $03
	jr   z, jr_030_739f                              ; $73a3: $28 $fa

jr_030_73a5:
	ldh  a, [rSTAT]                                  ; $73a5: $f0 $41
	and  $03                                         ; $73a7: $e6 $03
	jr   nz, jr_030_73a5                             ; $73a9: $20 $fa

	xor  a                                           ; $73ab: $af
	ldh  [rSCX], a                                   ; $73ac: $e0 $43
	jp   LCDCInterruptHandler.return                                       ; $73ae: $c3 $4a $04


GameState06_SoundMode::
	ld   a, [wGameSubstate]                                  ; $73b1: $fa $a1 $c2
	rst  JumpTable                                         ; $73b4: $df
	cp   e                                           ; $73b5: $bb
	ld   [hl], e                                     ; $73b6: $73
	ld   d, e                                        ; $73b7: $53
	ld   [hl], l                                     ; $73b8: $75
	ld   h, a                                        ; $73b9: $67
	ld   [hl], l                                     ; $73ba: $75
	call TurnOffLCD                                       ; $73bb: $cd $e3 $08
	call ClearDisplayRegsAllowVBlankInt                                       ; $73be: $cd $59 $0b
	ld   a, LCDCF_OFF|LCDCF_OBJON|LCDCF_BGON                                      ; $73c1: $3e $03
	ld   [wLCDC], a                                  ; $73c3: $ea $03 $c2
	ld   a, $ff                                      ; $73c6: $3e $ff
	ld   [wInGameInputsEnabled], a                                  ; $73c8: $ea $0e $c2
	ld   a, $0c                                      ; $73cb: $3e $0c
	ld   [wBaseInitialStickyCounter], a                                  ; $73cd: $ea $13 $c2
	ld   a, $04                                      ; $73d0: $3e $04
	ld   [wBaseRepeatedStickyCounter], a                                  ; $73d2: $ea $14 $c2
	push af                                          ; $73d5: $f5
	ld   a, $1a                                      ; $73d6: $3e $1a
	ld   [wFarCallAddr], a                                  ; $73d8: $ea $98 $c2
	ld   a, $48                                      ; $73db: $3e $48
	ld   [wFarCallAddr+1], a                                  ; $73dd: $ea $99 $c2
	ld   a, $0a                                      ; $73e0: $3e $0a
	ld   [wFarCallBank], a                                  ; $73e2: $ea $9a $c2
	pop  af                                          ; $73e5: $f1
	call FarCall                                       ; $73e6: $cd $62 $09
	push af                                          ; $73e9: $f5
	ld   a, $34                                      ; $73ea: $3e $34
	ld   [wFarCallAddr], a                                  ; $73ec: $ea $98 $c2
	ld   a, $49                                      ; $73ef: $3e $49
	ld   [wFarCallAddr+1], a                                  ; $73f1: $ea $99 $c2
	ld   a, $0a                                      ; $73f4: $3e $0a
	ld   [wFarCallBank], a                                  ; $73f6: $ea $9a $c2
	pop  af                                          ; $73f9: $f1
	call FarCall                                       ; $73fa: $cd $62 $09
	ld   bc, $0001                                   ; $73fd: $01 $01 $00
	push af                                          ; $7400: $f5
	ld   a, $ba                                      ; $7401: $3e $ba
	ld   [wFarCallAddr], a                                  ; $7403: $ea $98 $c2
	ld   a, $54                                      ; $7406: $3e $54
	ld   [wFarCallAddr+1], a                                  ; $7408: $ea $99 $c2
	ld   a, $0a                                      ; $740b: $3e $0a
	ld   [wFarCallBank], a                                  ; $740d: $ea $9a $c2
	pop  af                                          ; $7410: $f1
	call FarCall                                       ; $7411: $cd $62 $09
	xor  a                                           ; $7414: $af
	ldh  [rVBK], a                                   ; $7415: $e0 $4f
	ld   a, $34                                      ; $7417: $3e $34
	ld   hl, $8800                                   ; $7419: $21 $00 $88
	ld   de, $780b                                   ; $741c: $11 $0b $78
	call RLEXorCopy                                       ; $741f: $cd $d2 $09
	ld   a, $34                                      ; $7422: $3e $34
	ld   hl, $9000                                   ; $7424: $21 $00 $90
	ld   de, $508c                                   ; $7427: $11 $8c $50
	call RLEXorCopy                                       ; $742a: $cd $d2 $09
	ld   a, $01                                      ; $742d: $3e $01
	ldh  [rVBK], a                                   ; $742f: $e0 $4f
	ld   hl, $9800                                   ; $7431: $21 $00 $98
	ld   a, $34                                      ; $7434: $3e $34
	ld   de, $75db                                   ; $7436: $11 $db $75
	ld   bc, $140a                                   ; $7439: $01 $0a $14
	call FarCopyLayout                                       ; $743c: $cd $2c $0b
	ld   a, [$c68e]                                  ; $743f: $fa $8e $c6
	bit  1, a                                        ; $7442: $cb $4f
	jr   nz, jr_030_7454                             ; $7444: $20 $0e

	ld   hl, $9880                                   ; $7446: $21 $80 $98
	ld   a, $34                                      ; $7449: $3e $34
	ld   de, $76a3                                   ; $744b: $11 $a3 $76
	ld   bc, $1402                                   ; $744e: $01 $02 $14
	call FarCopyLayout                                       ; $7451: $cd $2c $0b

jr_030_7454:
	ld   a, [$c68e]                                  ; $7454: $fa $8e $c6
	bit  0, a                                        ; $7457: $cb $47
	jr   nz, jr_030_7469                             ; $7459: $20 $0e

	ld   hl, $98e0                                   ; $745b: $21 $e0 $98
	ld   a, $34                                      ; $745e: $3e $34
	ld   de, $76cb                                   ; $7460: $11 $cb $76
	ld   bc, $1402                                   ; $7463: $01 $02 $14
	call FarCopyLayout                                       ; $7466: $cd $2c $0b

jr_030_7469:
	xor  a                                           ; $7469: $af
	ldh  [rVBK], a                                   ; $746a: $e0 $4f
	ld   hl, $9800                                   ; $746c: $21 $00 $98
	ld   a, $34                                      ; $746f: $3e $34
	ld   de, $76f3                                   ; $7471: $11 $f3 $76
	ld   bc, $140a                                   ; $7474: $01 $0a $14
	call FarCopyLayout                                       ; $7477: $cd $2c $0b
	ld   a, [$c68e]                                  ; $747a: $fa $8e $c6
	bit  1, a                                        ; $747d: $cb $4f
	jr   nz, jr_030_748f                             ; $747f: $20 $0e

	ld   hl, $9880                                   ; $7481: $21 $80 $98
	ld   a, $34                                      ; $7484: $3e $34
	ld   de, $77bb                                   ; $7486: $11 $bb $77
	ld   bc, $1402                                   ; $7489: $01 $02 $14
	call FarCopyLayout                                       ; $748c: $cd $2c $0b

jr_030_748f:
	ld   a, [$c68e]                                  ; $748f: $fa $8e $c6
	bit  0, a                                        ; $7492: $cb $47
	jr   nz, jr_030_74a4                             ; $7494: $20 $0e

	ld   hl, $98e0                                   ; $7496: $21 $e0 $98
	ld   a, $34                                      ; $7499: $3e $34
	ld   de, $77e3                                   ; $749b: $11 $e3 $77
	ld   bc, $1402                                   ; $749e: $01 $02 $14
	call FarCopyLayout                                       ; $74a1: $cd $2c $0b

jr_030_74a4:
	ld   a, [wWramBank]                                  ; $74a4: $fa $93 $c2
	push af                                          ; $74a7: $f5
	ld   a, $05                                      ; $74a8: $3e $05
	ld   [wWramBank], a                                  ; $74aa: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $74ad: $e0 $70
	xor  a                                           ; $74af: $af
	ldh  [rVBK], a                                   ; $74b0: $e0 $4f
	ld   hl, $9880                                   ; $74b2: $21 $80 $98
	ld   de, $d000                                   ; $74b5: $11 $00 $d0
	ld   bc, $00a0                                   ; $74b8: $01 $a0 $00
	call MemCopy                                       ; $74bb: $cd $a9 $09
	pop  af                                          ; $74be: $f1
	ld   [wWramBank], a                                  ; $74bf: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $74c2: $e0 $70
	ld   a, $35                                      ; $74c4: $3e $35
	ld   hl, $4908                                   ; $74c6: $21 $08 $49
	ld   de, wBGPalettes+3*8                                   ; $74c9: $11 $f6 $c2
	ld   bc, $0030                                   ; $74cc: $01 $30 $00
	call FarMemCopy                                       ; $74cf: $cd $b2 $09
	ld   bc, $0c23                                   ; $74d2: $01 $23 $0c
	call SetBGandOBJPaletteRangesToUpdate                                       ; $74d5: $cd $aa $04
	xor  a                                           ; $74d8: $af
	call PlaySong                                       ; $74d9: $cd $92 $1a
	call ClearOam                                       ; $74dc: $cd $d7 $0d
	xor  a                                           ; $74df: $af
	ld   [$c697], a                                  ; $74e0: $ea $97 $c6
	ld   [$c698], a                                  ; $74e3: $ea $98 $c6
	ld   a, [$c68e]                                  ; $74e6: $fa $8e $c6
	bit  0, a                                        ; $74e9: $cb $47
	call nz, Call_030_76d3                           ; $74eb: $c4 $d3 $76
	ld   a, [$c68e]                                  ; $74ee: $fa $8e $c6
	bit  1, a                                        ; $74f1: $cb $4f
	call nz, Call_030_7665                           ; $74f3: $c4 $65 $76
	call Call_030_760b                               ; $74f6: $cd $0b $76
	call Call_030_7653                               ; $74f9: $cd $53 $76
	call Call_030_7785                               ; $74fc: $cd $85 $77
	call Call_030_7599                               ; $74ff: $cd $99 $75
	ld   a, [wWramBank]                                  ; $7502: $fa $93 $c2
	push af                                          ; $7505: $f5
	ld   a, $05                                      ; $7506: $3e $05
	ld   [wWramBank], a                                  ; $7508: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $750b: $e0 $70
	ld   hl, wBGPalettes                                   ; $750d: $21 $de $c2
	ld   de, $d220                                   ; $7510: $11 $20 $d2
	ld   bc, $0080                                   ; $7513: $01 $80 $00
	call MemCopy                                       ; $7516: $cd $a9 $09
	ld   a, BANK(Palettes_AllWhite)                                      ; $7519: $3e $01
	ld   hl, Palettes_AllWhite                                   ; $751b: $21 $00 $70
	ld   de, wBGPalettes                                   ; $751e: $11 $de $c2
	ld   bc, $0080                                   ; $7521: $01 $80 $00
	call FarMemCopy                                       ; $7524: $cd $b2 $09
	pop  af                                          ; $7527: $f1
	ld   [wWramBank], a                                  ; $7528: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $752b: $e0 $70
	call TurnOnLCD                                       ; $752d: $cd $09 $09
	ld   a, [wWramBank]                                  ; $7530: $fa $93 $c2
	push af                                          ; $7533: $f5
	ld   a, $05                                      ; $7534: $3e $05
	ld   [wWramBank], a                                  ; $7536: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $7539: $e0 $70
	ld   b, BANK(Palettes_AllWhite)                                      ; $753b: $06 $01
	ld   hl, Palettes_AllWhite                                   ; $753d: $21 $00 $70
	ld   c, $00                                      ; $7540: $0e $00
	ld   de, $d220                                   ; $7542: $11 $20 $d2
	call Call_030_795c                               ; $7545: $cd $5c $79
	pop  af                                          ; $7548: $f1
	ld   [wWramBank], a                                  ; $7549: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $754c: $e0 $70
	ld   hl, wGameSubstate                                   ; $754e: $21 $a1 $c2
	inc  [hl]                                        ; $7551: $34
	ret                                              ; $7552: $c9


	call ClearOam                                       ; $7553: $cd $d7 $0d
	ld   bc, $700f                                   ; $7556: $01 $0f $70
	ld   a, $0b                                      ; $7559: $3e $0b
	ld   [wSpriteGroup], a                                  ; $755b: $ea $1a $c2
	ld   a, $44                                      ; $755e: $3e $44
	call LoadSpriteFromMainTable                                       ; $7560: $cd $16 $0e
	call Call_030_75f9                               ; $7563: $cd $f9 $75
	ret                                              ; $7566: $c9


	ld   a, [wWramBank]                                  ; $7567: $fa $93 $c2
	push af                                          ; $756a: $f5
	ld   a, $05                                      ; $756b: $3e $05
	ld   [wWramBank], a                                  ; $756d: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $7570: $e0 $70
	ld   b, $00                                      ; $7572: $06 $00
	ld   hl, $d220                                   ; $7574: $21 $20 $d2
	ld   c, BANK(Palettes_AllWhite)                                      ; $7577: $0e $01
	ld   de, Palettes_AllWhite                                   ; $7579: $11 $00 $70
	call Call_030_795c                               ; $757c: $cd $5c $79
	pop  af                                          ; $757f: $f1
	ld   [wWramBank], a                                  ; $7580: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $7583: $e0 $70
	xor  a                                           ; $7585: $af
	call PlaySoundEffect                                       ; $7586: $cd $df $1a
	call TurnOffLCD                                       ; $7589: $cd $e3 $08
	ld   a, [$c68c]                                  ; $758c: $fa $8c $c6
	ld   [wGameState], a                                  ; $758f: $ea $a0 $c2
	ld   a, [$c68d]                                  ; $7592: $fa $8d $c6
	ld   [wGameSubstate], a                                  ; $7595: $ea $a1 $c2
	ret                                              ; $7598: $c9


Call_030_7599:
	ld   a, [wWramBank]                                  ; $7599: $fa $93 $c2
	push af                                          ; $759c: $f5
	ld   a, $05                                      ; $759d: $3e $05
	ld   [wWramBank], a                                  ; $759f: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $75a2: $e0 $70
	ld   a, [$c697]                                  ; $75a4: $fa $97 $c6
	ld   hl, $d00e                                   ; $75a7: $21 $0e $d0
	call Call_030_75cc                               ; $75aa: $cd $cc $75
	ld   a, [$c698]                                  ; $75ad: $fa $98 $c6
	ld   hl, $d06e                                   ; $75b0: $21 $6e $d0
	call Call_030_75cc                               ; $75b3: $cd $cc $75
	pop  af                                          ; $75b6: $f1
	ld   [wWramBank], a                                  ; $75b7: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $75ba: $e0 $70
	ld   a, $05                                      ; $75bc: $3e $05
	ld   hl, $d000                                   ; $75be: $21 $00 $d0
	ld   c, $80                                      ; $75c1: $0e $80
	ld   de, $9880                                   ; $75c3: $11 $80 $98
	ld   b, $0a                                      ; $75c6: $06 $0a
	call EnqueueHDMATransfer                                       ; $75c8: $cd $7c $02
	ret                                              ; $75cb: $c9


Call_030_75cc:
	ld   b, $0a                                      ; $75cc: $06 $0a
	call Call_030_75f1                               ; $75ce: $cd $f1 $75
	push af                                          ; $75d1: $f5
	ld   a, $a2                                      ; $75d2: $3e $a2
	add  c                                           ; $75d4: $81
	ld   [hl+], a                                    ; $75d5: $22
	push hl                                          ; $75d6: $e5
	ld   de, $001f                                   ; $75d7: $11 $1f $00
	add  hl, de                                      ; $75da: $19
	add  $10                                         ; $75db: $c6 $10
	ld   [hl], a                                     ; $75dd: $77
	pop  hl                                          ; $75de: $e1
	pop  af                                          ; $75df: $f1
	ld   b, $01                                      ; $75e0: $06 $01
	call Call_030_75f1                               ; $75e2: $cd $f1 $75
	ld   a, $a2                                      ; $75e5: $3e $a2
	add  c                                           ; $75e7: $81
	ld   [hl+], a                                    ; $75e8: $22
	ld   de, $001f                                   ; $75e9: $11 $1f $00
	add  hl, de                                      ; $75ec: $19
	add  $10                                         ; $75ed: $c6 $10
	ld   [hl], a                                     ; $75ef: $77
	ret                                              ; $75f0: $c9


Call_030_75f1:
	ld   c, $00                                      ; $75f1: $0e $00

jr_030_75f3:
	cp   b                                           ; $75f3: $b8
	ret  c                                           ; $75f4: $d8

	sub  b                                           ; $75f5: $90
	inc  c                                           ; $75f6: $0c
	jr   jr_030_75f3                                 ; $75f7: $18 $fa

Call_030_75f9:
	ld   hl, $7604                                   ; $75f9: $21 $04 $76
	push hl                                          ; $75fc: $e5
	ld   hl, $c68f                                   ; $75fd: $21 $8f $c6
	ld   a, [hl+]                                    ; $7600: $2a
	ld   h, [hl]                                     ; $7601: $66
	ld   l, a                                        ; $7602: $6f
	jp   hl                                          ; $7603: $e9


	call Call_030_7630                               ; $7604: $cd $30 $76
	call Call_030_7653                               ; $7607: $cd $53 $76
	ret                                              ; $760a: $c9


Call_030_760b:
jr_030_760b:
	ld   hl, $7623                                   ; $760b: $21 $23 $76
	ld   a, [hl+]                                    ; $760e: $2a
	ld   [$c693], a                                  ; $760f: $ea $93 $c6
	ld   a, [hl+]                                    ; $7612: $2a
	ld   [$c694], a                                  ; $7613: $ea $94 $c6
	ld   a, [hl+]                                    ; $7616: $2a
	ld   [$c695], a                                  ; $7617: $ea $95 $c6
	ld   a, l                                        ; $761a: $7d
	ld   [$c691], a                                  ; $761b: $ea $91 $c6
	ld   a, h                                        ; $761e: $7c
	ld   [$c692], a                                  ; $761f: $ea $92 $c6
	ret                                              ; $7622: $c9


	ld   b, $48                                      ; $7623: $06 $48
	ld   b, l                                        ; $7625: $45
	inc  bc                                          ; $7626: $03
	ld   c, c                                        ; $7627: $49
	ld   b, [hl]                                     ; $7628: $46
	ld   b, $4a                                      ; $7629: $06 $4a
	ld   b, a                                        ; $762b: $47
	ld   b, $49                                      ; $762c: $06 $49
	ld   b, [hl]                                     ; $762e: $46
	nop                                              ; $762f: $00

Call_030_7630:
	ld   hl, $c693                                   ; $7630: $21 $93 $c6
	dec  [hl]                                        ; $7633: $35
	ret  nz                                          ; $7634: $c0

	ld   hl, $c691                                   ; $7635: $21 $91 $c6
	ld   a, [hl+]                                    ; $7638: $2a
	ld   h, [hl]                                     ; $7639: $66
	ld   l, a                                        ; $763a: $6f
	ld   a, [hl+]                                    ; $763b: $2a
	or   a                                           ; $763c: $b7
	jr   z, jr_030_760b                              ; $763d: $28 $cc

	ld   [$c693], a                                  ; $763f: $ea $93 $c6
	ld   a, [hl+]                                    ; $7642: $2a
	ld   [$c694], a                                  ; $7643: $ea $94 $c6
	ld   a, [hl+]                                    ; $7646: $2a
	ld   [$c695], a                                  ; $7647: $ea $95 $c6
	ld   a, l                                        ; $764a: $7d
	ld   [$c691], a                                  ; $764b: $ea $91 $c6
	ld   a, h                                        ; $764e: $7c
	ld   [$c692], a                                  ; $764f: $ea $92 $c6
	ret                                              ; $7652: $c9


Call_030_7653:
	ld   a, $0b                                      ; $7653: $3e $0b
	ld   [wSpriteGroup], a                                  ; $7655: $ea $1a $c2
	ld   b, $78                                      ; $7658: $06 $78
	ld   a, [$c696]                                  ; $765a: $fa $96 $c6
	ld   c, a                                        ; $765d: $4f
	ld   a, [$c695]                                  ; $765e: $fa $95 $c6
	call LoadSpriteFromMainTable                                       ; $7661: $cd $16 $0e
	ret                                              ; $7664: $c9


Call_030_7665:
Jump_030_7665:
	ld   a, $75                                      ; $7665: $3e $75
	ld   [$c68f], a                                  ; $7667: $ea $8f $c6
	ld   a, $76                                      ; $766a: $3e $76
	ld   [$c690], a                                  ; $766c: $ea $90 $c6
	ld   a, $27                                      ; $766f: $3e $27
	ld   [$c696], a                                  ; $7671: $ea $96 $c6
	ret                                              ; $7674: $c9


	ld   a, [wInGameStickyButtonsPressed]                                  ; $7675: $fa $11 $c2
	bit  6, a                                        ; $7678: $cb $77
	jr   z, jr_030_7684                              ; $767a: $28 $08

	ld   a, [$c68e]                                  ; $767c: $fa $8e $c6
	bit  0, a                                        ; $767f: $cb $47
	jr   nz, jr_030_76d3                             ; $7681: $20 $50

	ret                                              ; $7683: $c9


jr_030_7684:
	bit  7, a                                        ; $7684: $cb $7f
	jr   z, jr_030_7690                              ; $7686: $28 $08

	ld   a, [$c68e]                                  ; $7688: $fa $8e $c6
	bit  0, a                                        ; $768b: $cb $47
	jr   nz, jr_030_76d3                             ; $768d: $20 $44

	ret                                              ; $768f: $c9


jr_030_7690:
	bit  5, a                                        ; $7690: $cb $6f
	jr   z, jr_030_76a6                              ; $7692: $28 $12

	ld   hl, $c697                                   ; $7694: $21 $97 $c6
	ld   a, [hl]                                     ; $7697: $7e
	sub  $01                                         ; $7698: $d6 $01
	jr   nc, jr_030_769e                             ; $769a: $30 $02

	ld   a, $14                                      ; $769c: $3e $14

jr_030_769e:
	ld   [hl], a                                     ; $769e: $77
	call Call_030_7785                               ; $769f: $cd $85 $77
	call Call_030_7599                               ; $76a2: $cd $99 $75
	ret                                              ; $76a5: $c9


jr_030_76a6:
	bit  4, a                                        ; $76a6: $cb $67
	jr   z, jr_030_76bc                              ; $76a8: $28 $12

	ld   hl, $c697                                   ; $76aa: $21 $97 $c6
	ld   a, [hl]                                     ; $76ad: $7e
	inc  a                                           ; $76ae: $3c
	cp   $15                                         ; $76af: $fe $15
	jr   c, jr_030_76b4                              ; $76b1: $38 $01

	xor  a                                           ; $76b3: $af

jr_030_76b4:
	ld   [hl], a                                     ; $76b4: $77
	call Call_030_7785                               ; $76b5: $cd $85 $77
	call Call_030_7599                               ; $76b8: $cd $99 $75
	ret                                              ; $76bb: $c9


jr_030_76bc:
	ld   a, [wInGameButtonsPressed]                                  ; $76bc: $fa $10 $c2
	bit  0, a                                        ; $76bf: $cb $47
	jr   z, jr_030_76ca                              ; $76c1: $28 $07

	ld   a, [$c697]                                  ; $76c3: $fa $97 $c6
	call PlaySong                                       ; $76c6: $cd $92 $1a
	ret                                              ; $76c9: $c9


jr_030_76ca:
	bit  1, a                                        ; $76ca: $cb $4f
	jr   z, jr_030_76d2                              ; $76cc: $28 $04

	ld   hl, wGameSubstate                                   ; $76ce: $21 $a1 $c2
	inc  [hl]                                        ; $76d1: $34

jr_030_76d2:
	ret                                              ; $76d2: $c9


Call_030_76d3:
jr_030_76d3:
	ld   a, $e3                                      ; $76d3: $3e $e3
	ld   [$c68f], a                                  ; $76d5: $ea $8f $c6
	ld   a, $76                                      ; $76d8: $3e $76
	ld   [$c690], a                                  ; $76da: $ea $90 $c6
	ld   a, $3f                                      ; $76dd: $3e $3f
	ld   [$c696], a                                  ; $76df: $ea $96 $c6
	ret                                              ; $76e2: $c9


	ld   a, [wInGameStickyButtonsPressed]                                  ; $76e3: $fa $11 $c2
	bit  6, a                                        ; $76e6: $cb $77
	jr   z, jr_030_76f3                              ; $76e8: $28 $09

	ld   a, [$c68e]                                  ; $76ea: $fa $8e $c6
	bit  1, a                                        ; $76ed: $cb $4f
	jp   nz, Jump_030_7665                           ; $76ef: $c2 $65 $76

	ret                                              ; $76f2: $c9


jr_030_76f3:
	bit  7, a                                        ; $76f3: $cb $7f
	jr   z, jr_030_7700                              ; $76f5: $28 $09

	ld   a, [$c68e]                                  ; $76f7: $fa $8e $c6
	bit  1, a                                        ; $76fa: $cb $4f
	jp   nz, Jump_030_7665                           ; $76fc: $c2 $65 $76

	ret                                              ; $76ff: $c9


jr_030_7700:
	bit  5, a                                        ; $7700: $cb $6f
	jr   z, jr_030_7713                              ; $7702: $28 $0f

	ld   hl, $c698                                   ; $7704: $21 $98 $c6
	ld   a, [hl]                                     ; $7707: $7e
	sub  $01                                         ; $7708: $d6 $01
	jr   nc, jr_030_770e                             ; $770a: $30 $02

	ld   a, $42                                      ; $770c: $3e $42

jr_030_770e:
	ld   [hl], a                                     ; $770e: $77
	call Call_030_7599                               ; $770f: $cd $99 $75
	ret                                              ; $7712: $c9


jr_030_7713:
	bit  4, a                                        ; $7713: $cb $67
	jr   z, jr_030_7726                              ; $7715: $28 $0f

	ld   hl, $c698                                   ; $7717: $21 $98 $c6
	ld   a, [hl]                                     ; $771a: $7e
	inc  a                                           ; $771b: $3c
	cp   $43                                         ; $771c: $fe $43
	jr   c, jr_030_7721                              ; $771e: $38 $01

	xor  a                                           ; $7720: $af

jr_030_7721:
	ld   [hl], a                                     ; $7721: $77
	call Call_030_7599                               ; $7722: $cd $99 $75
	ret                                              ; $7725: $c9


jr_030_7726:
	bit  0, a                                        ; $7726: $cb $47
	jr   z, jr_030_7739                              ; $7728: $28 $0f

	ld   a, [$c698]                                  ; $772a: $fa $98 $c6
	ld   e, a                                        ; $772d: $5f
	ld   d, $00                                      ; $772e: $16 $00
	ld   hl, $7742                                   ; $7730: $21 $42 $77
	add  hl, de                                      ; $7733: $19
	ld   a, [hl]                                     ; $7734: $7e
	call PlaySoundEffect                                       ; $7735: $cd $df $1a
	ret                                              ; $7738: $c9


jr_030_7739:
	bit  1, a                                        ; $7739: $cb $4f
	jr   z, jr_030_7741                              ; $773b: $28 $04

	ld   hl, wGameSubstate                                   ; $773d: $21 $a1 $c2
	inc  [hl]                                        ; $7740: $34

jr_030_7741:
	ret                                              ; $7741: $c9


	ld   bc, $0302                                   ; $7742: $01 $02 $03
	inc  b                                           ; $7745: $04
	dec  b                                           ; $7746: $05
	ld   b, $07                                      ; $7747: $06 $07
	ld   [$0a09], sp                                 ; $7749: $08 $09 $0a
	dec  bc                                          ; $774c: $0b
	inc  c                                           ; $774d: $0c
	dec  c                                           ; $774e: $0d
	ld   c, $0f                                      ; $774f: $0e $0f
	db   $10                                         ; $7751: $10
	ld   de, $1312                                   ; $7752: $11 $12 $13
	inc  d                                           ; $7755: $14
	dec  d                                           ; $7756: $15
	ld   d, $17                                      ; $7757: $16 $17
	jr   jr_030_7774                                 ; $7759: $18 $19

	ld   a, [de]                                     ; $775b: $1a
	dec  de                                          ; $775c: $1b
	inc  e                                           ; $775d: $1c
	dec  e                                           ; $775e: $1d
	ld   e, $1f                                      ; $775f: $1e $1f
	jr   nz, jr_030_7784                             ; $7761: $20 $21

	ld   [hl+], a                                    ; $7763: $22
	inc  hl                                          ; $7764: $23
	inc  h                                           ; $7765: $24
	daa                                              ; $7766: $27
	jr   z, @+$2b                                    ; $7767: $28 $29

	ld   a, [hl+]                                    ; $7769: $2a
	dec  hl                                          ; $776a: $2b
	inc  l                                           ; $776b: $2c
	ld   l, $2f                                      ; $776c: $2e $2f
	jr   nc, @+$3a                                   ; $776e: $30 $38

	add  hl, sp                                      ; $7770: $39
	ld   a, [hl-]                                    ; $7771: $3a
	dec  sp                                          ; $7772: $3b
	inc  a                                           ; $7773: $3c

jr_030_7774:
	dec  a                                           ; $7774: $3d
	ld   a, $3f                                      ; $7775: $3e $3f
	ld   b, b                                        ; $7777: $40
	ld   b, c                                        ; $7778: $41
	ld   b, d                                        ; $7779: $42
	ld   b, e                                        ; $777a: $43
	ld   b, h                                        ; $777b: $44
	ld   b, l                                        ; $777c: $45
	ld   b, [hl]                                     ; $777d: $46
	ld   b, a                                        ; $777e: $47
	ld   c, b                                        ; $777f: $48
	ld   c, c                                        ; $7780: $49
	ld   c, d                                        ; $7781: $4a
	ld   c, e                                        ; $7782: $4b
	ld   c, h                                        ; $7783: $4c

jr_030_7784:
	ld   c, l                                        ; $7784: $4d

Call_030_7785:
	call InitWideTextBoxDimensions                                       ; $7785: $cd $ec $0f
	call ClearTextBoxDimensionsAndSetDefaultTextStyle                                       ; $7788: $cd $09 $14
	ld   bc, $0c02                                   ; $778b: $01 $02 $0c
	call SetKanjiTextBoxDimensions                                       ; $778e: $cd $24 $14
	ld   bc, $0000                                   ; $7791: $01 $00 $00
	call SetCurrKanjiColAndRowToDrawOn                                       ; $7794: $cd $34 $14
	ld   a, [wWramBank]                                  ; $7797: $fa $93 $c2
	push af                                          ; $779a: $f5
	ld   a, $05                                      ; $779b: $3e $05
	ld   [wWramBank], a                                  ; $779d: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $77a0: $e0 $70
	ld   a, [$c697]                                  ; $77a2: $fa $97 $c6
	add  a                                           ; $77a5: $87
	ld   c, a                                        ; $77a6: $4f
	ld   b, $00                                      ; $77a7: $06 $00
	ld   hl, $77d4                                   ; $77a9: $21 $d4 $77
	add  hl, bc                                      ; $77ac: $09
	ld   a, [hl+]                                    ; $77ad: $2a
	ld   c, a                                        ; $77ae: $4f
	ld   b, [hl]                                     ; $77af: $46
	ld   hl, $77d4                                   ; $77b0: $21 $d4 $77
	add  hl, bc                                      ; $77b3: $09
	ld   e, l                                        ; $77b4: $5d
	ld   d, h                                        ; $77b5: $54
	ld   hl, $d0a0                                   ; $77b6: $21 $a0 $d0
	ld   a, $30                                      ; $77b9: $3e $30
	call LoadInstantText                                       ; $77bb: $cd $06 $13
	pop  af                                          ; $77be: $f1
	ld   [wWramBank], a                                  ; $77bf: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $77c2: $e0 $70
	ld   de, $8800                                   ; $77c4: $11 $00 $88
	ld   c, $80                                      ; $77c7: $0e $80
	ld   a, $05                                      ; $77c9: $3e $05
	ld   hl, $d0a0                                   ; $77cb: $21 $a0 $d0
	ld   b, $18                                      ; $77ce: $06 $18
	call EnqueueHDMATransfer                                       ; $77d0: $cd $7c $02
	ret                                              ; $77d3: $c9


	ld   a, [hl+]                                    ; $77d4: $2a
	nop                                              ; $77d5: $00
	add  hl, sp                                      ; $77d6: $39
	nop                                              ; $77d7: $00
	ld   c, h                                        ; $77d8: $4c
	nop                                              ; $77d9: $00
	ld   e, l                                        ; $77da: $5d
	nop                                              ; $77db: $00
	ld   l, [hl]                                     ; $77dc: $6e
	nop                                              ; $77dd: $00
	ld   a, a                                        ; $77de: $7f
	nop                                              ; $77df: $00
	adc  l                                           ; $77e0: $8d
	nop                                              ; $77e1: $00
	sbc  h                                           ; $77e2: $9c
	nop                                              ; $77e3: $00
	xor  l                                           ; $77e4: $ad
	nop                                              ; $77e5: $00
	cp   h                                           ; $77e6: $bc
	nop                                              ; $77e7: $00
	rlc  b                                           ; $77e8: $cb $00
	reti                                             ; $77ea: $d9


	nop                                              ; $77eb: $00
	rst  $20                                         ; $77ec: $e7
	nop                                              ; $77ed: $00
	ei                                               ; $77ee: $fb
	nop                                              ; $77ef: $00
	ld   a, [bc]                                     ; $77f0: $0a
	ld   bc, $011c                                   ; $77f1: $01 $1c $01
	dec  hl                                          ; $77f4: $2b
	ld   bc, $013a                                   ; $77f5: $01 $3a $01
	ld   b, a                                        ; $77f8: $47
	ld   bc, $0156                                   ; $77f9: $01 $56 $01
	ld   h, e                                        ; $77fc: $63
	ld   bc, $1010                                   ; $77fd: $01 $10 $10
	db   $10                                         ; $7800: $10
	db   $10                                         ; $7801: $10
	db   $10                                         ; $7802: $10
	db   $10                                         ; $7803: $10
	db   $10                                         ; $7804: $10
	inc  e                                           ; $7805: $1c
	ld   hl, $0327                                   ; $7806: $21 $27 $03
	db   $e3                                         ; $7809: $e3
	inc  bc                                          ; $780a: $03
	ld   b, c                                        ; $780b: $41
	nop                                              ; $780c: $00
	db   $10                                         ; $780d: $10
	db   $10                                         ; $780e: $10
	db   $10                                         ; $780f: $10
	db   $10                                         ; $7810: $10
	db   $10                                         ; $7811: $10
	ld   b, $a0                                      ; $7812: $06 $a0
	ld   a, [$0804]                                  ; $7814: $fa $04 $08
	ld   [bc], a                                     ; $7817: $02
	adc  a                                           ; $7818: $8f
	ld   [bc], a                                     ; $7819: $02
	sub  b                                           ; $781a: $90
	ld   [bc], a                                     ; $781b: $02
	sub  c                                           ; $781c: $91
	inc  b                                           ; $781d: $04
	add  hl, bc                                      ; $781e: $09
	nop                                              ; $781f: $00
	db   $10                                         ; $7820: $10
	db   $10                                         ; $7821: $10
	db   $10                                         ; $7822: $10
	db   $10                                         ; $7823: $10
	db   $10                                         ; $7824: $10
	inc  bc                                          ; $7825: $03
	ld   l, a                                        ; $7826: $6f
	ld   a, l                                        ; $7827: $7d
	inc  b                                           ; $7828: $04
	and  e                                           ; $7829: $a3
	ld   b, $a1                                      ; $782a: $06 $a1
	ld   a, h                                        ; $782c: $7c
	inc  b                                           ; $782d: $04
	dec  bc                                          ; $782e: $0b
	ld   a, c                                        ; $782f: $79
	nop                                              ; $7830: $00
	db   $10                                         ; $7831: $10
	db   $10                                         ; $7832: $10
	db   $10                                         ; $7833: $10
	db   $10                                         ; $7834: $10
	adc  c                                           ; $7835: $89
	ld   a, h                                        ; $7836: $7c
	adc  d                                           ; $7837: $8a
	ld   a, h                                        ; $7838: $7c
	inc  b                                           ; $7839: $04
	ld   [$9102], sp                                 ; $783a: $08 $02 $91
	inc  bc                                          ; $783d: $03
	ld   d, d                                        ; $783e: $52
	ld   [bc], a                                     ; $783f: $02
	or   a                                           ; $7840: $b7
	nop                                              ; $7841: $00
	db   $10                                         ; $7842: $10
	db   $10                                         ; $7843: $10
	db   $10                                         ; $7844: $10
	db   $10                                         ; $7845: $10
	db   $10                                         ; $7846: $10
	db   $10                                         ; $7847: $10
	db   $10                                         ; $7848: $10
	ld   [bc], a                                     ; $7849: $02
	sbc  b                                           ; $784a: $98
	inc  bc                                          ; $784b: $03
	ld   h, a                                        ; $784c: $67
	ld   e, l                                        ; $784d: $5d
	ld   [bc], a                                     ; $784e: $02
	add  hl, de                                      ; $784f: $19
	inc  bc                                          ; $7850: $03
	ld   l, [hl]                                     ; $7851: $6e
	nop                                              ; $7852: $00
	db   $10                                         ; $7853: $10
	db   $10                                         ; $7854: $10
	db   $10                                         ; $7855: $10
	db   $10                                         ; $7856: $10
	db   $10                                         ; $7857: $10
	db   $10                                         ; $7858: $10
	db   $10                                         ; $7859: $10
	db   $10                                         ; $785a: $10
	db   $10                                         ; $785b: $10
	ld   e, b                                        ; $785c: $58
	inc  b                                           ; $785d: $04
	ld   d, h                                        ; $785e: $54
	sbc  d                                           ; $785f: $9a
	nop                                              ; $7860: $00
	db   $10                                         ; $7861: $10
	db   $10                                         ; $7862: $10
	db   $10                                         ; $7863: $10
	db   $10                                         ; $7864: $10
	db   $10                                         ; $7865: $10
	db   $10                                         ; $7866: $10
	db   $10                                         ; $7867: $10
	db   $10                                         ; $7868: $10
	inc  bc                                          ; $7869: $03
	ld   [hl], d                                     ; $786a: $72
	ld   e, d                                        ; $786b: $5a
	dec  b                                           ; $786c: $05
	db   $10                                         ; $786d: $10
	sbc  c                                           ; $786e: $99
	nop                                              ; $786f: $00
	db   $10                                         ; $7870: $10
	db   $10                                         ; $7871: $10
	db   $10                                         ; $7872: $10
	db   $10                                         ; $7873: $10
	inc  bc                                          ; $7874: $03
	ld   e, a                                        ; $7875: $5f
	inc  b                                           ; $7876: $04
	dec  c                                           ; $7877: $0d
	inc  bc                                          ; $7878: $03
	ld   e, a                                        ; $7879: $5f
	ld   b, $25                                      ; $787a: $06 $25
	ld   a, h                                        ; $787c: $7c
	ret  nz                                          ; $787d: $c0

	push af                                          ; $787e: $f5
	or   l                                           ; $787f: $b5
	nop                                              ; $7880: $00
	db   $10                                         ; $7881: $10
	db   $10                                         ; $7882: $10
	db   $10                                         ; $7883: $10
	db   $10                                         ; $7884: $10
	db   $10                                         ; $7885: $10
	inc  bc                                          ; $7886: $03
	ld   d, d                                        ; $7887: $52
	ld   e, e                                        ; $7888: $5b
	ld   [hl], h                                     ; $7889: $74
	ld   d, d                                        ; $788a: $52
	sbc  c                                           ; $788b: $99
	ld   [bc], a                                     ; $788c: $02
	ld   c, c                                        ; $788d: $49
	add  c                                           ; $788e: $81
	nop                                              ; $788f: $00
	db   $10                                         ; $7890: $10
	db   $10                                         ; $7891: $10
	db   $10                                         ; $7892: $10
	db   $10                                         ; $7893: $10
	inc  b                                           ; $7894: $04
	inc  a                                           ; $7895: $3c
	inc  b                                           ; $7896: $04
	ld   [hl], a                                     ; $7897: $77
	ld   hl, $fa29                                   ; $7898: $21 $29 $fa
	ld   hl, $fa29                                   ; $789b: $21 $29 $fa
	nop                                              ; $789e: $00
	db   $10                                         ; $789f: $10
	db   $10                                         ; $78a0: $10
	db   $10                                         ; $78a1: $10
	ld   [bc], a                                     ; $78a2: $02
	dec  hl                                          ; $78a3: $2b
	ld   h, l                                        ; $78a4: $65
	ld   a, h                                        ; $78a5: $7c
	cp   c                                           ; $78a6: $b9
	push hl                                          ; $78a7: $e5
	push af                                          ; $78a8: $f5
	sbc  $fb                                         ; $78a9: $de $fb
	db   $ed                                         ; $78ab: $ed
	nop                                              ; $78ac: $00
	db   $10                                         ; $78ad: $10
	db   $10                                         ; $78ae: $10
	db   $10                                         ; $78af: $10
	db   $10                                         ; $78b0: $10
	db   $10                                         ; $78b1: $10
	db   $e3                                         ; $78b2: $e3
	ret                                              ; $78b3: $c9


	rst  $28                                         ; $78b4: $ef
	ld   [hl], l                                     ; $78b5: $75
	ld   [bc], a                                     ; $78b6: $02
	ld   a, a                                        ; $78b7: $7f
	ld   h, c                                        ; $78b8: $61
	ld   d, h                                        ; $78b9: $54
	nop                                              ; $78ba: $00
	inc  bc                                          ; $78bb: $03
	add  b                                           ; $78bc: $80
	ld   [bc], a                                     ; $78bd: $02
	sub  c                                           ; $78be: $91
	di                                               ; $78bf: $f3
	inc  b                                           ; $78c0: $04
	ld   [$8f02], sp                                 ; $78c1: $08 $02 $8f
	ld   [bc], a                                     ; $78c4: $02
	sub  b                                           ; $78c5: $90
	ld   [bc], a                                     ; $78c6: $02
	sub  c                                           ; $78c7: $91
	inc  b                                           ; $78c8: $04
	add  hl, bc                                      ; $78c9: $09
	ld   a, h                                        ; $78ca: $7c
	rst  ToBoot                                         ; $78cb: $c7
	ei                                               ; $78cc: $fb
	rst  JumpTable                                         ; $78cd: $df
	nop                                              ; $78ce: $00
	db   $10                                         ; $78cf: $10
	db   $10                                         ; $78d0: $10
	inc  bc                                          ; $78d1: $03
	ld   l, b                                        ; $78d2: $68
	ld   d, d                                        ; $78d3: $52
	ld   [hl], c                                     ; $78d4: $71
	ld   [hl], h                                     ; $78d5: $74
	adc  l                                           ; $78d6: $8d
	sub  [hl]                                        ; $78d7: $96
	ld   d, h                                        ; $78d8: $54
	sbc  [hl]                                        ; $78d9: $9e
	inc  bc                                          ; $78da: $03
	ld   l, b                                        ; $78db: $68
	ld   a, [$1000]                                  ; $78dc: $fa $00 $10
	db   $10                                         ; $78df: $10
	ld   e, d                                        ; $78e0: $5a
	and  c                                           ; $78e1: $a1
	ld   a, [hl]                                     ; $78e2: $7e
	sbc  d                                           ; $78e3: $9a
	ld   a, [$0804]                                  ; $78e4: $fa $04 $08
	ld   [bc], a                                     ; $78e7: $02
	adc  a                                           ; $78e8: $8f
	ld   [bc], a                                     ; $78e9: $02
	sub  b                                           ; $78ea: $90
	ld   [bc], a                                     ; $78eb: $02
	sub  c                                           ; $78ec: $91
	inc  b                                           ; $78ed: $04
	add  hl, bc                                      ; $78ee: $09
	nop                                              ; $78ef: $00
	db   $10                                         ; $78f0: $10
	db   $10                                         ; $78f1: $10
	db   $10                                         ; $78f2: $10
	db   $10                                         ; $78f3: $10
	db   $10                                         ; $78f4: $10
	db   $10                                         ; $78f5: $10
	db   $10                                         ; $78f6: $10
	db   $10                                         ; $78f7: $10
	db   $10                                         ; $78f8: $10
	inc  bc                                          ; $78f9: $03
	ld   c, [hl]                                     ; $78fa: $4e
	dec  b                                           ; $78fb: $05
	ld   b, $fa                                      ; $78fc: $06 $fa
	nop                                              ; $78fe: $00
	db   $10                                         ; $78ff: $10
	db   $10                                         ; $7900: $10
	db   $10                                         ; $7901: $10
	db   $10                                         ; $7902: $10
	db   $10                                         ; $7903: $10
	db   $10                                         ; $7904: $10
	ld   b, $a2                                      ; $7905: $06 $a2
	ld   b, $a3                                      ; $7907: $06 $a3
	ld   a, h                                        ; $7909: $7c
	rst  ToBoot                                         ; $790a: $c7
	ei                                               ; $790b: $fb
	rst  JumpTable                                         ; $790c: $df
	nop                                              ; $790d: $00
	db   $10                                         ; $790e: $10
	db   $10                                         ; $790f: $10
	db   $10                                         ; $7910: $10
	db   $10                                         ; $7911: $10
	db   $10                                         ; $7912: $10
	db   $10                                         ; $7913: $10
	db   $10                                         ; $7914: $10
	db   $10                                         ; $7915: $10
	halt                                             ; $7916: $76
	ld   e, e                                        ; $7917: $5b
	adc  a                                           ; $7918: $8f
	ld   e, e                                        ; $7919: $5b
	nop                                              ; $791a: $00
	db   $10                                         ; $791b: $10
	db   $10                                         ; $791c: $10
	db   $10                                         ; $791d: $10
	db   $10                                         ; $791e: $10
	ld   b, $a4                                      ; $791f: $06 $a4
	dec  b                                           ; $7921: $05
	ld   e, l                                        ; $7922: $5d
	ld   a, h                                        ; $7923: $7c
	call z, $ecd3                                    ; $7924: $cc $d3 $ec
	cp   d                                           ; $7927: $ba
	ret                                              ; $7928: $c9


	nop                                              ; $7929: $00
	db   $10                                         ; $792a: $10
	db   $10                                         ; $792b: $10
	db   $10                                         ; $792c: $10
	db   $10                                         ; $792d: $10
	halt                                             ; $792e: $76
	ld   e, e                                        ; $792f: $5b
	adc  a                                           ; $7930: $8f
	ld   e, e                                        ; $7931: $5b
	ld   a, h                                        ; $7932: $7c
	rst  ToBoot                                         ; $7933: $c7
	ei                                               ; $7934: $fb
	rst  JumpTable                                         ; $7935: $df
	nop                                              ; $7936: $00
	db   $10                                         ; $7937: $10
	db   $10                                         ; $7938: $10
	inc  b                                           ; $7939: $04
	ld   [$2f04], sp                                 ; $793a: $08 $04 $2f
	ld   e, b                                        ; $793d: $58
	ld   [hl], l                                     ; $793e: $75
	ld   e, c                                        ; $793f: $59
	ld   e, a                                        ; $7940: $5f
	ld   a, h                                        ; $7941: $7c
	rst  ToBoot                                         ; $7942: $c7
	ei                                               ; $7943: $fb
	rst  JumpTable                                         ; $7944: $df
	nop                                              ; $7945: $00
	ld   [$c68e], a                                  ; $7946: $ea $8e $c6
	ld   a, h                                        ; $7949: $7c
	ld   [$c68c], a                                  ; $794a: $ea $8c $c6
	ld   a, l                                        ; $794d: $7d
	ld   [$c68d], a                                  ; $794e: $ea $8d $c6
	ld   a, GS_SOUND_MODE                                      ; $7951: $3e $06
	ld   [wGameState], a                                  ; $7953: $ea $a0 $c2
	ld   a, $00                                      ; $7956: $3e $00
	ld   [wGameSubstate], a                                  ; $7958: $ea $a1 $c2
	ret                                              ; $795b: $c9


Call_030_795c:
	ld   a, c                                        ; $795c: $79
	push af                                          ; $795d: $f5
	push de                                          ; $795e: $d5
	xor  a                                           ; $795f: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $7960: $ea $62 $c3
	ld   a, $40                                      ; $7963: $3e $40
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $7965: $ea $63 $c3
	ld   a, $03                                      ; $7968: $3e $03
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $796a: $cd $48 $07
	ld   a, $08                                      ; $796d: $3e $08

jr_030_796f:
	push af                                          ; $796f: $f5
	ld   b, $00                                      ; $7970: $06 $00
	ld   c, $40                                      ; $7972: $0e $40
	call FadePalettesAndSetRangeToUpdate                                       ; $7974: $cd $32 $08
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7977: $cf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7978: $cf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7979: $cf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $797a: $cf
	pop  af                                          ; $797b: $f1
	dec  a                                           ; $797c: $3d
	jr   nz, jr_030_796f                             ; $797d: $20 $f0

	pop  hl                                          ; $797f: $e1
	pop  af                                          ; $7980: $f1
	ld   de, wBGPalettes                                   ; $7981: $11 $de $c2
	ld   bc, $0080                                   ; $7984: $01 $80 $00
	call FarMemCopy                                       ; $7987: $cd $b2 $09
	ld   bc, $003f                                   ; $798a: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $798d: $cd $aa $04
	ret                                              ; $7990: $c9


GameState09_GirlVoiceSounds::
	ld   a, [wGameSubstate]                                  ; $7991: $fa $a1 $c2
	rst  JumpTable                                         ; $7994: $df
	sbc  e                                           ; $7995: $9b
	ld   a, c                                        ; $7996: $79
	ld   a, d                                        ; $7997: $7a
	ld   a, d                                        ; $7998: $7a
	add  h                                           ; $7999: $84
	ld   a, d                                        ; $799a: $7a
	call TurnOffLCD                                       ; $799b: $cd $e3 $08
	call ClearDisplayRegsAllowVBlankInt                                       ; $799e: $cd $59 $0b
	ld   a, LCDCF_OFF|LCDCF_OBJ16|LCDCF_OBJON|LCDCF_BGON                                      ; $79a1: $3e $07
	ld   [wLCDC], a                                  ; $79a3: $ea $03 $c2
	xor  a                                           ; $79a6: $af
	ld   [wSCX], a                                  ; $79a7: $ea $07 $c2
	ld   [wSCY], a                                  ; $79aa: $ea $08 $c2
	ld   a, $ff                                      ; $79ad: $3e $ff
	ld   [wInGameInputsEnabled], a                                  ; $79af: $ea $0e $c2
	ld   a, $0c                                      ; $79b2: $3e $0c
	ld   [wBaseInitialStickyCounter], a                                  ; $79b4: $ea $13 $c2
	ld   a, $04                                      ; $79b7: $3e $04
	ld   [wBaseRepeatedStickyCounter], a                                  ; $79b9: $ea $14 $c2
	xor  a                                           ; $79bc: $af
	ldh  [rVBK], a                                   ; $79bd: $e0 $4f
	ld   a, $34                                      ; $79bf: $3e $34
	ld   hl, $8800                                   ; $79c1: $21 $00 $88
	ld   de, $45e0                                   ; $79c4: $11 $e0 $45
	call RLEXorCopy                                       ; $79c7: $cd $d2 $09
	ld   a, $01                                      ; $79ca: $3e $01
	ldh  [rVBK], a                                   ; $79cc: $e0 $4f
	ld   a, $32                                      ; $79ce: $3e $32
	ld   hl, $8000                                   ; $79d0: $21 $00 $80
	ld   de, $7800                                   ; $79d3: $11 $00 $78
	call RLEXorCopy                                       ; $79d6: $cd $d2 $09
	ld   a, $01                                      ; $79d9: $3e $01
	ldh  [rVBK], a                                   ; $79db: $e0 $4f
	ld   hl, $9800                                   ; $79dd: $21 $00 $98
	ld   a, $34                                      ; $79e0: $3e $34
	ld   de, $4b8c                                   ; $79e2: $11 $8c $4b
	ld   bc, $1420                                   ; $79e5: $01 $20 $14
	call FarCopyLayout                                       ; $79e8: $cd $2c $0b
	xor  a                                           ; $79eb: $af
	ldh  [rVBK], a                                   ; $79ec: $e0 $4f
	ld   hl, $9800                                   ; $79ee: $21 $00 $98
	ld   a, $34                                      ; $79f1: $3e $34
	call FarCopyLayout                                       ; $79f3: $cd $2c $0b
	ld   a, [wWramBank]                                  ; $79f6: $fa $93 $c2
	push af                                          ; $79f9: $f5
	ld   a, $05                                      ; $79fa: $3e $05
	ld   [wWramBank], a                                  ; $79fc: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $79ff: $e0 $70
	ld   a, $01                                      ; $7a01: $3e $01
	ldh  [rVBK], a                                   ; $7a03: $e0 $4f
	ld   hl, $9880                                   ; $7a05: $21 $80 $98
	ld   de, $d000                                   ; $7a08: $11 $00 $d0
	ld   bc, $0040                                   ; $7a0b: $01 $40 $00
	call MemCopy                                       ; $7a0e: $cd $a9 $09
	ld   hl, $9a40                                   ; $7a11: $21 $40 $9a
	ld   de, $d040                                   ; $7a14: $11 $40 $d0
	ld   bc, $0040                                   ; $7a17: $01 $40 $00
	call MemCopy                                       ; $7a1a: $cd $a9 $09
	xor  a                                           ; $7a1d: $af
	ldh  [rVBK], a                                   ; $7a1e: $e0 $4f
	ld   hl, $9880                                   ; $7a20: $21 $80 $98
	ld   de, $d080                                   ; $7a23: $11 $80 $d0
	ld   bc, $0180                                   ; $7a26: $01 $80 $01
	call MemCopy                                       ; $7a29: $cd $a9 $09
	pop  af                                          ; $7a2c: $f1
	ld   [wWramBank], a                                  ; $7a2d: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $7a30: $e0 $70
	call ClearOam                                       ; $7a32: $cd $d7 $0d
	ld   b, $ff                                      ; $7a35: $06 $ff

jr_030_7a37:
	inc  b                                           ; $7a37: $04
	push bc                                          ; $7a38: $c5
	ld   a, b                                        ; $7a39: $78
	call Call_030_7d50                               ; $7a3a: $cd $50 $7d
	pop  bc                                          ; $7a3d: $c1
	or   a                                           ; $7a3e: $b7
	jr   z, jr_030_7a37                              ; $7a3f: $28 $f6

	ld   a, b                                        ; $7a41: $78
	ld   [wSoundModeGirlSelected], a                                  ; $7a42: $ea $66 $c6
	ld   a, $ff                                      ; $7a45: $3e $ff
	ld   [$c667], a                                  ; $7a47: $ea $67 $c6
	ld   hl, $c668                                   ; $7a4a: $21 $68 $c6
	ld   bc, $0006                                   ; $7a4d: $01 $06 $00
	ld   a, $00                                      ; $7a50: $3e $00
	call MemSet                                       ; $7a52: $cd $96 $09
	call Call_030_7b4e                               ; $7a55: $cd $4e $7b
	call Call_030_7ae5                               ; $7a58: $cd $e5 $7a
	call Call_030_7ca4                               ; $7a5b: $cd $a4 $7c
	call Call_030_7c62                               ; $7a5e: $cd $62 $7c
	xor  a                                           ; $7a61: $af
	call PlaySong                                       ; $7a62: $cd $92 $1a
	call TurnOnLCD                                       ; $7a65: $cd $09 $09
	ld   b, BANK(Palettes_AllWhite)                                      ; $7a68: $06 $01
	ld   hl, Palettes_AllWhite                                   ; $7a6a: $21 $00 $70
	ld   c, $33                                      ; $7a6d: $0e $33
	ld   de, $7f6f                                   ; $7a6f: $11 $6f $7f
	call Call_030_7aa1                               ; $7a72: $cd $a1 $7a
	ld   hl, wGameSubstate                                   ; $7a75: $21 $a1 $c2
	inc  [hl]                                        ; $7a78: $34
	ret                                              ; $7a79: $c9


	call ClearOam                                       ; $7a7a: $cd $d7 $0d
	call Call_030_7ad6                               ; $7a7d: $cd $d6 $7a
	call Call_030_7c53                               ; $7a80: $cd $53 $7c
	ret                                              ; $7a83: $c9


	ld   b, $33                                      ; $7a84: $06 $33
	ld   hl, $7f6f                                   ; $7a86: $21 $6f $7f
	ld   c, BANK(Palettes_AllWhite)                                      ; $7a89: $0e $01
	ld   de, Palettes_AllWhite                                   ; $7a8b: $11 $00 $70
	call Call_030_7aa1                               ; $7a8e: $cd $a1 $7a
	call TurnOffLCD                                       ; $7a91: $cd $e3 $08
	ld   a, [$c662]                                  ; $7a94: $fa $62 $c6
	ld   [wGameState], a                                  ; $7a97: $ea $a0 $c2
	ld   a, [$c663]                                  ; $7a9a: $fa $63 $c6
	ld   [wGameSubstate], a                                  ; $7a9d: $ea $a1 $c2
	ret                                              ; $7aa0: $c9


Call_030_7aa1:
	ld   a, c                                        ; $7aa1: $79
	push af                                          ; $7aa2: $f5
	push de                                          ; $7aa3: $d5
	xor  a                                           ; $7aa4: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $7aa5: $ea $62 $c3
	ld   a, $40                                      ; $7aa8: $3e $40
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $7aaa: $ea $63 $c3
	ld   a, $03                                      ; $7aad: $3e $03
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $7aaf: $cd $48 $07
	ld   a, $08                                      ; $7ab2: $3e $08

jr_030_7ab4:
	push af                                          ; $7ab4: $f5
	ld   b, $00                                      ; $7ab5: $06 $00
	ld   c, $40                                      ; $7ab7: $0e $40
	call FadePalettesAndSetRangeToUpdate                                       ; $7ab9: $cd $32 $08
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7abc: $cf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7abd: $cf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7abe: $cf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7abf: $cf
	pop  af                                          ; $7ac0: $f1
	dec  a                                           ; $7ac1: $3d
	jr   nz, jr_030_7ab4                             ; $7ac2: $20 $f0

	pop  hl                                          ; $7ac4: $e1
	pop  af                                          ; $7ac5: $f1
	ld   de, wBGPalettes                                   ; $7ac6: $11 $de $c2
	ld   bc, $0080                                   ; $7ac9: $01 $80 $00
	call FarMemCopy                                       ; $7acc: $cd $b2 $09
	ld   bc, $003f                                   ; $7acf: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $7ad2: $cd $aa $04
	ret                                              ; $7ad5: $c9


Call_030_7ad6:
	ld   hl, $7ae1                                   ; $7ad6: $21 $e1 $7a
	push hl                                          ; $7ad9: $e5
	ld   hl, $c664                                   ; $7ada: $21 $64 $c6
	ld   a, [hl+]                                    ; $7add: $2a
	ld   h, [hl]                                     ; $7ade: $66
	ld   l, a                                        ; $7adf: $6f
	jp   hl                                          ; $7ae0: $e9


	call Call_030_7ae5                               ; $7ae1: $cd $e5 $7a
	ret                                              ; $7ae4: $c9


Call_030_7ae5:
	ld   a, $0b                                      ; $7ae5: $3e $0b
	ld   [wSpriteGroup], a                                  ; $7ae7: $ea $1a $c2
	ld   a, [wSoundModeGirlSelected]                                  ; $7aea: $fa $66 $c6
	swap a                                           ; $7aed: $cb $37
	ld   bc, $7028                                   ; $7aef: $01 $28 $70
	add  c                                           ; $7af2: $81
	ld   c, a                                        ; $7af3: $4f
	ld   a, [$c671]                                  ; $7af4: $fa $71 $c6
	call LoadSpriteFromMainTable                                       ; $7af7: $cd $16 $0e
	ld   a, [wSoundModeGirlSelected]                                  ; $7afa: $fa $66 $c6
	ld   b, a                                        ; $7afd: $47
	ld   a, [$c667]                                  ; $7afe: $fa $67 $c6
	cp   b                                           ; $7b01: $b8
	ret  z                                           ; $7b02: $c8

	ld   a, [$c667]                                  ; $7b03: $fa $67 $c6
	cp   $ff                                         ; $7b06: $fe $ff
	jr   z, jr_030_7b27                              ; $7b08: $28 $1d

	ld   h, a                                        ; $7b0a: $67
	ld   l, $00                                      ; $7b0b: $2e $00
	srl  h                                           ; $7b0d: $cb $3c
	rr   l                                           ; $7b0f: $cb $1d
	srl  h                                           ; $7b11: $cb $3c
	rr   l                                           ; $7b13: $cb $1d
	ld   de, $9880                                   ; $7b15: $11 $80 $98
	add  hl, de                                      ; $7b18: $19
	ld   e, l                                        ; $7b19: $5d
	ld   d, h                                        ; $7b1a: $54
	ld   hl, $d000                                   ; $7b1b: $21 $00 $d0
	ld   a, $05                                      ; $7b1e: $3e $05
	ld   c, $81                                      ; $7b20: $0e $81
	ld   b, $04                                      ; $7b22: $06 $04
	call EnqueueHDMATransfer                                       ; $7b24: $cd $7c $02

jr_030_7b27:
	ld   a, [wSoundModeGirlSelected]                                  ; $7b27: $fa $66 $c6
	ld   h, a                                        ; $7b2a: $67
	ld   l, $00                                      ; $7b2b: $2e $00
	srl  h                                           ; $7b2d: $cb $3c
	rr   l                                           ; $7b2f: $cb $1d
	srl  h                                           ; $7b31: $cb $3c
	rr   l                                           ; $7b33: $cb $1d
	ld   de, $9880                                   ; $7b35: $11 $80 $98
	add  hl, de                                      ; $7b38: $19
	ld   e, l                                        ; $7b39: $5d
	ld   d, h                                        ; $7b3a: $54
	ld   hl, $d040                                   ; $7b3b: $21 $40 $d0
	ld   a, $05                                      ; $7b3e: $3e $05
	ld   c, $81                                      ; $7b40: $0e $81
	ld   b, $04                                      ; $7b42: $06 $04
	call EnqueueHDMATransfer                                       ; $7b44: $cd $7c $02
	ld   a, [wSoundModeGirlSelected]                                  ; $7b47: $fa $66 $c6
	ld   [$c667], a                                  ; $7b4a: $ea $67 $c6
	ret                                              ; $7b4d: $c9


Call_030_7b4e:
	ld   a, $6c                                      ; $7b4e: $3e $6c
	ld   [$c664], a                                  ; $7b50: $ea $64 $c6
	ld   a, $7b                                      ; $7b53: $3e $7b
	ld   [$c665], a                                  ; $7b55: $ea $65 $c6
	ld   hl, $7c4a                                   ; $7b58: $21 $4a $7c
	ld   a, [hl+]                                    ; $7b5b: $2a
	ld   [$c670], a                                  ; $7b5c: $ea $70 $c6
	ld   a, [hl+]                                    ; $7b5f: $2a
	ld   [$c671], a                                  ; $7b60: $ea $71 $c6
	ld   a, l                                        ; $7b63: $7d
	ld   [$c66e], a                                  ; $7b64: $ea $6e $c6
	ld   a, h                                        ; $7b67: $7c
	ld   [$c66f], a                                  ; $7b68: $ea $6f $c6
	ret                                              ; $7b6b: $c9


	ld   a, [wInGameButtonsPressed]                                  ; $7b6c: $fa $10 $c2
	bit  0, a                                        ; $7b6f: $cb $47
	jr   z, jr_030_7b7c                              ; $7b71: $28 $09

	call GetSelectedSampledSoundIdx                                       ; $7b73: $cd $7c $7d
	call PlaySampledSound                                       ; $7b76: $cd $64 $1b
	jp   Jump_030_7c26                               ; $7b79: $c3 $26 $7c


jr_030_7b7c:
	bit  1, a                                        ; $7b7c: $cb $4f
	jr   z, jr_030_7b8c                              ; $7b7e: $28 $0c

	ld   a, $22                                      ; $7b80: $3e $22
	call PlaySoundEffect                                       ; $7b82: $cd $df $1a
	ld   hl, wGameSubstate                                   ; $7b85: $21 $a1 $c2
	inc  [hl]                                        ; $7b88: $34
	jp   Jump_030_7c26                               ; $7b89: $c3 $26 $7c


jr_030_7b8c:
	ld   a, [wInGameStickyButtonsPressed]                                  ; $7b8c: $fa $11 $c2
	bit  6, a                                        ; $7b8f: $cb $77
	jr   z, jr_030_7bb7                              ; $7b91: $28 $24

	ld   a, [wSoundModeGirlSelected]                                  ; $7b93: $fa $66 $c6

jr_030_7b96:
	sub  $01                                         ; $7b96: $d6 $01
	jr   nc, jr_030_7b9c                             ; $7b98: $30 $02

	ld   a, $05                                      ; $7b9a: $3e $05

jr_030_7b9c:
	ld   b, a                                        ; $7b9c: $47
	push bc                                          ; $7b9d: $c5
	call Call_030_7d50                               ; $7b9e: $cd $50 $7d
	pop  bc                                          ; $7ba1: $c1
	or   a                                           ; $7ba2: $b7
	ld   a, b                                        ; $7ba3: $78
	jr   z, jr_030_7b96                              ; $7ba4: $28 $f0

	ld   hl, wSoundModeGirlSelected                                   ; $7ba6: $21 $66 $c6
	cp   [hl]                                        ; $7ba9: $be
	jr   z, jr_030_7c26                              ; $7baa: $28 $7a

	ld   [hl], a                                     ; $7bac: $77
	ld   a, $20                                      ; $7bad: $3e $20
	call PlaySoundEffect                                       ; $7baf: $cd $df $1a
	call Call_030_7ca4                               ; $7bb2: $cd $a4 $7c
	jr   jr_030_7c26                                 ; $7bb5: $18 $6f

jr_030_7bb7:
	bit  7, a                                        ; $7bb7: $cb $7f
	jr   z, jr_030_7bdf                              ; $7bb9: $28 $24

	ld   a, [wSoundModeGirlSelected]                                  ; $7bbb: $fa $66 $c6

jr_030_7bbe:
	inc  a                                           ; $7bbe: $3c
	cp   $06                                         ; $7bbf: $fe $06
	jr   c, jr_030_7bc4                              ; $7bc1: $38 $01

	xor  a                                           ; $7bc3: $af

jr_030_7bc4:
	ld   b, a                                        ; $7bc4: $47
	push bc                                          ; $7bc5: $c5
	call Call_030_7d50                               ; $7bc6: $cd $50 $7d
	pop  bc                                          ; $7bc9: $c1
	or   a                                           ; $7bca: $b7
	ld   a, b                                        ; $7bcb: $78
	jr   z, jr_030_7bbe                              ; $7bcc: $28 $f0

	ld   hl, wSoundModeGirlSelected                                   ; $7bce: $21 $66 $c6
	cp   [hl]                                        ; $7bd1: $be
	jr   z, jr_030_7c26                              ; $7bd2: $28 $52

	ld   [hl], a                                     ; $7bd4: $77
	ld   a, $20                                      ; $7bd5: $3e $20
	call PlaySoundEffect                                       ; $7bd7: $cd $df $1a
	call Call_030_7ca4                               ; $7bda: $cd $a4 $7c
	jr   jr_030_7c26                                 ; $7bdd: $18 $47

jr_030_7bdf:
	bit  5, a                                        ; $7bdf: $cb $6f
	jr   z, jr_030_7c03                              ; $7be1: $28 $20

	ld   a, [wSoundModeGirlSelected]                                  ; $7be3: $fa $66 $c6
	ld   e, a                                        ; $7be6: $5f
	ld   d, $00                                      ; $7be7: $16 $00
	ld   hl, $c668                                   ; $7be9: $21 $68 $c6
	add  hl, de                                      ; $7bec: $19
	ld   a, [hl]                                     ; $7bed: $7e
	sub  $01                                         ; $7bee: $d6 $01
	jr   nc, jr_030_7bf8                             ; $7bf0: $30 $06

	push hl                                          ; $7bf2: $e5
	call GetNumSampledSoundsForGirl                               ; $7bf3: $cd $a3 $7d
	pop  hl                                          ; $7bf6: $e1
	dec  a                                           ; $7bf7: $3d

jr_030_7bf8:
	ld   [hl], a                                     ; $7bf8: $77
	ld   a, $20                                      ; $7bf9: $3e $20
	call PlaySoundEffect                                       ; $7bfb: $cd $df $1a
	call Func_30_7df8                                       ; $7bfe: $cd $f8 $7d
	jr   jr_030_7c26                                 ; $7c01: $18 $23

jr_030_7c03:
	bit  4, a                                        ; $7c03: $cb $67
	jr   z, jr_030_7c26                              ; $7c05: $28 $1f

	call GetNumSampledSoundsForGirl                               ; $7c07: $cd $a3 $7d
	ld   b, a                                        ; $7c0a: $47
	ld   a, [wSoundModeGirlSelected]                                  ; $7c0b: $fa $66 $c6
	ld   e, a                                        ; $7c0e: $5f
	ld   d, $00                                      ; $7c0f: $16 $00
	ld   hl, $c668                                   ; $7c11: $21 $68 $c6
	add  hl, de                                      ; $7c14: $19
	ld   a, [hl]                                     ; $7c15: $7e
	inc  a                                           ; $7c16: $3c
	cp   b                                           ; $7c17: $b8
	jr   c, jr_030_7c1b                              ; $7c18: $38 $01

	xor  a                                           ; $7c1a: $af

jr_030_7c1b:
	ld   [hl], a                                     ; $7c1b: $77
	ld   a, $20                                      ; $7c1c: $3e $20
	call PlaySoundEffect                                       ; $7c1e: $cd $df $1a
	call Func_30_7df8                                      ; $7c21: $cd $f8 $7d
	jr   jr_030_7c26                                 ; $7c24: $18 $00

Jump_030_7c26:
jr_030_7c26:
	ld   hl, $c670                                   ; $7c26: $21 $70 $c6
	dec  [hl]                                        ; $7c29: $35
	ret  nz                                          ; $7c2a: $c0

	ld   hl, $c66e                                   ; $7c2b: $21 $6e $c6
	ld   a, [hl+]                                    ; $7c2e: $2a
	ld   h, [hl]                                     ; $7c2f: $66
	ld   l, a                                        ; $7c30: $6f

jr_030_7c31:
	ld   a, [hl+]                                    ; $7c31: $2a
	or   a                                           ; $7c32: $b7
	jr   nz, jr_030_7c3a                             ; $7c33: $20 $05

	ld   hl, $7c4a                                   ; $7c35: $21 $4a $7c
	jr   jr_030_7c31                                 ; $7c38: $18 $f7

jr_030_7c3a:
	ld   [$c670], a                                  ; $7c3a: $ea $70 $c6
	ld   a, [hl+]                                    ; $7c3d: $2a
	ld   [$c671], a                                  ; $7c3e: $ea $71 $c6
	ld   a, l                                        ; $7c41: $7d
	ld   [$c66e], a                                  ; $7c42: $ea $6e $c6
	ld   a, h                                        ; $7c45: $7c
	ld   [$c66f], a                                  ; $7c46: $ea $6f $c6
	ret                                              ; $7c49: $c9


	ld   [$0451], sp                                 ; $7c4a: $08 $51 $04
	ld   d, d                                        ; $7c4d: $52
	ld   [$0453], sp                                 ; $7c4e: $08 $53 $04
	ld   d, d                                        ; $7c51: $52
	nop                                              ; $7c52: $00

Call_030_7c53:
	ld   hl, $7c5e                                   ; $7c53: $21 $5e $7c
	push hl                                          ; $7c56: $e5
	ld   hl, $c672                                   ; $7c57: $21 $72 $c6
	ld   a, [hl+]                                    ; $7c5a: $2a
	ld   h, [hl]                                     ; $7c5b: $66
	ld   l, a                                        ; $7c5c: $6f
	jp   hl                                          ; $7c5d: $e9


	call Call_030_7c62                               ; $7c5e: $cd $62 $7c
	ret                                              ; $7c61: $c9


Call_030_7c62:
	ld   a, [wSoundModeGirlSelected]                                  ; $7c62: $fa $66 $c6
	swap a                                           ; $7c65: $cb $37
	ld   bc, $2020                                   ; $7c67: $01 $20 $20
	add  c                                           ; $7c6a: $81
	ld   c, a                                        ; $7c6b: $4f
	ld   a, [$c677]                                  ; $7c6c: $fa $77 $c6
	call LoadSpriteFromMainTable                                       ; $7c6f: $cd $16 $0e
	xor  a                                           ; $7c72: $af

jr_030_7c73:
	push af                                          ; $7c73: $f5
	ld   b, a                                        ; $7c74: $47
	ld   a, [wSoundModeGirlSelected]                                  ; $7c75: $fa $66 $c6
	cp   b                                           ; $7c78: $b8
	jr   z, jr_030_7c97                              ; $7c79: $28 $1c

	ld   a, b                                        ; $7c7b: $78
	call Call_030_7d50                               ; $7c7c: $cd $50 $7d
	or   a                                           ; $7c7f: $b7
	jr   z, jr_030_7c97                              ; $7c80: $28 $15

	ld   hl, sp+$01                                  ; $7c82: $f8 $01
	ld   a, [hl]                                     ; $7c84: $7e
	swap a                                           ; $7c85: $cb $37
	ld   bc, $2020                                   ; $7c87: $01 $20 $20
	add  c                                           ; $7c8a: $81
	ld   c, a                                        ; $7c8b: $4f
	ld   e, [hl]                                     ; $7c8c: $5e
	ld   d, $00                                      ; $7c8d: $16 $00
	ld   hl, $7c9e                                   ; $7c8f: $21 $9e $7c
	add  hl, de                                      ; $7c92: $19
	ld   a, [hl]                                     ; $7c93: $7e
	call LoadSpriteFromMainTable                                       ; $7c94: $cd $16 $0e

jr_030_7c97:
	pop  af                                          ; $7c97: $f1
	inc  a                                           ; $7c98: $3c
	cp   $06                                         ; $7c99: $fe $06
	jr   c, jr_030_7c73                              ; $7c9b: $38 $d6

	ret                                              ; $7c9d: $c9


	ld   d, h                                        ; $7c9e: $54
	ld   e, b                                        ; $7c9f: $58
	ld   e, h                                        ; $7ca0: $5c
	ld   h, b                                        ; $7ca1: $60
	ld   h, h                                        ; $7ca2: $64
	ld   l, b                                        ; $7ca3: $68

Call_030_7ca4:
	ld   a, $cd                                      ; $7ca4: $3e $cd
	ld   [$c672], a                                  ; $7ca6: $ea $72 $c6
	ld   a, $7c                                      ; $7ca9: $3e $7c
	ld   [$c673], a                                  ; $7cab: $ea $73 $c6
	ld   a, [wSoundModeGirlSelected]                                  ; $7cae: $fa $66 $c6
	ld   l, a                                        ; $7cb1: $6f
	ld   h, $00                                      ; $7cb2: $26 $00
	add  hl, hl                                      ; $7cb4: $29
	ld   de, $7cfc                                   ; $7cb5: $11 $fc $7c
	add  hl, de                                      ; $7cb8: $19
	ld   a, [hl+]                                    ; $7cb9: $2a
	ld   h, [hl]                                     ; $7cba: $66
	ld   l, a                                        ; $7cbb: $6f
	ld   a, [hl+]                                    ; $7cbc: $2a
	ld   [$c676], a                                  ; $7cbd: $ea $76 $c6
	ld   a, [hl+]                                    ; $7cc0: $2a
	ld   [$c677], a                                  ; $7cc1: $ea $77 $c6
	ld   a, l                                        ; $7cc4: $7d
	ld   [$c674], a                                  ; $7cc5: $ea $74 $c6
	ld   a, h                                        ; $7cc8: $7c
	ld   [$c675], a                                  ; $7cc9: $ea $75 $c6
	ret                                              ; $7ccc: $c9


	ld   hl, $c676                                   ; $7ccd: $21 $76 $c6
	dec  [hl]                                        ; $7cd0: $35
	ret  nz                                          ; $7cd1: $c0

	ld   hl, $c674                                   ; $7cd2: $21 $74 $c6
	ld   a, [hl+]                                    ; $7cd5: $2a
	ld   h, [hl]                                     ; $7cd6: $66
	ld   l, a                                        ; $7cd7: $6f

jr_030_7cd8:
	ld   a, [hl+]                                    ; $7cd8: $2a
	or   a                                           ; $7cd9: $b7
	jr   nz, jr_030_7cec                             ; $7cda: $20 $10

	ld   a, [wSoundModeGirlSelected]                                  ; $7cdc: $fa $66 $c6
	ld   l, a                                        ; $7cdf: $6f
	ld   h, $00                                      ; $7ce0: $26 $00
	add  hl, hl                                      ; $7ce2: $29
	ld   de, $7cfc                                   ; $7ce3: $11 $fc $7c
	add  hl, de                                      ; $7ce6: $19
	ld   a, [hl+]                                    ; $7ce7: $2a
	ld   h, [hl]                                     ; $7ce8: $66
	ld   l, a                                        ; $7ce9: $6f
	jr   jr_030_7cd8                                 ; $7cea: $18 $ec

jr_030_7cec:
	ld   [$c676], a                                  ; $7cec: $ea $76 $c6
	ld   a, [hl+]                                    ; $7cef: $2a
	ld   [$c677], a                                  ; $7cf0: $ea $77 $c6
	ld   a, l                                        ; $7cf3: $7d
	ld   [$c674], a                                  ; $7cf4: $ea $74 $c6
	ld   a, h                                        ; $7cf7: $7c
	ld   [$c675], a                                  ; $7cf8: $ea $75 $c6
	ret                                              ; $7cfb: $c9


	ld   [$117d], sp                                 ; $7cfc: $08 $7d $11
	ld   a, l                                        ; $7cff: $7d
	ld   a, [de]                                     ; $7d00: $1a
	ld   a, l                                        ; $7d01: $7d
	inc  hl                                          ; $7d02: $23
	ld   a, l                                        ; $7d03: $7d
	inc  l                                           ; $7d04: $2c
	ld   a, l                                        ; $7d05: $7d
	dec  [hl]                                        ; $7d06: $35
	ld   a, l                                        ; $7d07: $7d
	dec  bc                                          ; $7d08: $0b
	ld   d, h                                        ; $7d09: $54
	dec  bc                                          ; $7d0a: $0b
	ld   d, l                                        ; $7d0b: $55
	dec  bc                                          ; $7d0c: $0b
	ld   d, [hl]                                     ; $7d0d: $56
	dec  bc                                          ; $7d0e: $0b
	ld   d, a                                        ; $7d0f: $57
	nop                                              ; $7d10: $00
	dec  bc                                          ; $7d11: $0b
	ld   e, b                                        ; $7d12: $58
	dec  bc                                          ; $7d13: $0b
	ld   e, c                                        ; $7d14: $59
	dec  bc                                          ; $7d15: $0b
	ld   e, d                                        ; $7d16: $5a
	dec  bc                                          ; $7d17: $0b
	ld   e, e                                        ; $7d18: $5b
	nop                                              ; $7d19: $00
	dec  bc                                          ; $7d1a: $0b
	ld   e, h                                        ; $7d1b: $5c
	dec  bc                                          ; $7d1c: $0b
	ld   e, l                                        ; $7d1d: $5d
	dec  bc                                          ; $7d1e: $0b
	ld   e, [hl]                                     ; $7d1f: $5e
	dec  bc                                          ; $7d20: $0b
	ld   e, a                                        ; $7d21: $5f
	nop                                              ; $7d22: $00
	dec  bc                                          ; $7d23: $0b
	ld   h, b                                        ; $7d24: $60
	dec  bc                                          ; $7d25: $0b
	ld   h, c                                        ; $7d26: $61
	dec  bc                                          ; $7d27: $0b
	ld   h, d                                        ; $7d28: $62
	dec  bc                                          ; $7d29: $0b
	ld   h, e                                        ; $7d2a: $63
	nop                                              ; $7d2b: $00
	dec  bc                                          ; $7d2c: $0b
	ld   h, h                                        ; $7d2d: $64
	dec  bc                                          ; $7d2e: $0b
	ld   h, l                                        ; $7d2f: $65
	dec  bc                                          ; $7d30: $0b
	ld   h, [hl]                                     ; $7d31: $66
	dec  bc                                          ; $7d32: $0b
	ld   h, a                                        ; $7d33: $67
	nop                                              ; $7d34: $00
	dec  bc                                          ; $7d35: $0b
	ld   l, b                                        ; $7d36: $68
	dec  bc                                          ; $7d37: $0b
	ld   l, c                                        ; $7d38: $69
	dec  bc                                          ; $7d39: $0b
	ld   l, d                                        ; $7d3a: $6a
	dec  bc                                          ; $7d3b: $0b
	ld   l, e                                        ; $7d3c: $6b
	nop                                              ; $7d3d: $00
	ld   a, h                                        ; $7d3e: $7c
	ld   [$c662], a                                  ; $7d3f: $ea $62 $c6
	ld   a, l                                        ; $7d42: $7d
	ld   [$c663], a                                  ; $7d43: $ea $63 $c6
	ld   a, GS_GIRL_VOICE_SOUNDS                                      ; $7d46: $3e $09
	ld   [wGameState], a                                  ; $7d48: $ea $a0 $c2
	xor  a                                           ; $7d4b: $af
	ld   [wGameSubstate], a                                  ; $7d4c: $ea $a1 $c2
	ret                                              ; $7d4f: $c9


Call_030_7d50:
	ld   l, a                                        ; $7d50: $6f
	ld   h, $00                                      ; $7d51: $26 $00
	add  hl, hl                                      ; $7d53: $29
	ld   de, $7d70                                   ; $7d54: $11 $70 $7d
	add  hl, de                                      ; $7d57: $19
	ld   a, [hl+]                                    ; $7d58: $2a
	ld   h, [hl]                                     ; $7d59: $66
	ld   l, a                                        ; $7d5a: $6f
	push af                                          ; $7d5b: $f5
	ld   a, $d7                                      ; $7d5c: $3e $d7
	ld   [wFarCallAddr], a                                  ; $7d5e: $ea $98 $c2
	ld   a, $71                                      ; $7d61: $3e $71
	ld   [wFarCallAddr+1], a                                  ; $7d63: $ea $99 $c2
	ld   a, $0c                                      ; $7d66: $3e $0c
	ld   [wFarCallBank], a                                  ; $7d68: $ea $9a $c2
	pop  af                                          ; $7d6b: $f1
	call FarCall                                       ; $7d6c: $cd $62 $09
	ret                                              ; $7d6f: $c9


	call nz, $c801                                   ; $7d70: $c4 $01 $c8
	ld   bc, $01cc                                   ; $7d73: $01 $cc $01
	ret  nc                                          ; $7d76: $d0

	ld   bc, $01d4                                   ; $7d77: $01 $d4 $01
	ret  c                                           ; $7d7a: $d8

	db $01 
	
	
GetSelectedSampledSoundIdx:
;
	ld   a, [wSoundModeGirlSelected] ; $7d7c: $fa $66 $c6
	ld   e, a                                         ; $7d7f: $5f
	ld   d, $00                                      ; $7d80: $16 $00
	ld   hl, $c668                                   ; $7d82: $21 $68 $c6
	add  hl, de                                      ; $7d85: $19

;
	ld   c, [hl]                                     ; $7d86: $4e
	ld   b, $00                                      ; $7d87: $06 $00
	sla  e                                           ; $7d89: $cb $23
	rl   d                                           ; $7d8b: $cb $12
	ld   hl, .girlsSampledSounds                                   ; $7d8d: $21 $97 $7d
	add  hl, de                                      ; $7d90: $19

;
	ld   a, [hl+]                                    ; $7d91: $2a
	ld   h, [hl]                                     ; $7d92: $66
	ld   l, a                                        ; $7d93: $6f
	add  hl, bc                                      ; $7d94: $09

	ld   a, [hl]                                     ; $7d95: $7e
	ret                                              ; $7d96: $c9

.girlsSampledSounds:
	dw Data_30_7db5
	dw Data_30_7dc0
	dw Data_30_7dcb
	dw Data_30_7dd6
	dw Data_30_7de2
	dw Data_30_7ded


GetNumSampledSoundsForGirl:
; Get value from table in A, idxed by girl selected
	ld   a, [wSoundModeGirlSelected]                                  ; $7da3: $fa $66 $c6
	ld   e, a                                        ; $7da6: $5f
	ld   d, $00                                      ; $7da7: $16 $00
	ld   hl, .counts                                   ; $7da9: $21 $af $7d
	add  hl, de                                      ; $7dac: $19
	ld   a, [hl]                                     ; $7dad: $7e
	ret                                              ; $7dae: $c9

.counts:
	dec  bc                                          ; $7daf: $0b
	dec  bc                                          ; $7db0: $0b
	dec  bc                                          ; $7db1: $0b
	inc  c                                           ; $7db2: $0c
	dec  bc                                          ; $7db3: $0b
	dec  bc                                          ; $7db4: $0b


Data_30_7db5:
	db $25
	db $26
	db $27
	db $28
	db $29
	db $2a
	db $2b
	db $2c
	db $2d
	db $30
	db $00


Data_30_7dc0:
	db $31
	db $32
	db $33
	db $34
	db $35
	db $36
	db $37
	db $38
	db $39
	db $3c
	db $01
	
	
Data_30_7dcb:
	db $3d
	db $3e
	db $3f
	db $40
	db $41
	db $42
	db $43
	db $44
	db $45
	db $48
	db $02


Data_30_7dd6:
	db $49
	db $4a
	db $4b
	db $4c
	db $4d
	db $4e
	db $4f
	db $50
	db $51
	db $54
	db $03
	db $04


Data_30_7de2:
	db $55
	db $56
	db $57
	db $58
	db $59
	db $5a
	db $5b
	db $5c
	db $5d
	db $60
	db $05


Data_30_7ded:
	db $61
	db $62
	db $63
	db $64
	db $65
	db $66
	db $67
	db $68
	db $69
	db $6c
	db $06
	
	
Func_30_7df8:
	ld   a, [wWramBank] ; $7df8: $fa $93 $c2
	push af                                   ; $7dfb: $f5
	ld   a, $05                                   ; $7dfc: $3e $05
	ld   [wWramBank], a                                  ; $7dfe: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $7e01: $e0 $70
	ld   a, [wSoundModeGirlSelected]                                  ; $7e03: $fa $66 $c6
	ld   d, a                                        ; $7e06: $57
	ld   e, $00                                      ; $7e07: $1e $00
	srl  d                                           ; $7e09: $cb $3a
	rr   e                                           ; $7e0b: $cb $1b
	srl  d                                           ; $7e0d: $cb $3a
	rr   e                                           ; $7e0f: $cb $1b
	ld   hl, $d08d                                   ; $7e11: $21 $8d $d0
	add  hl, de                                      ; $7e14: $19
	push hl                                          ; $7e15: $e5
	ld   a, [wSoundModeGirlSelected]                                  ; $7e16: $fa $66 $c6
	ld   e, a                                        ; $7e19: $5f
	ld   d, $00                                      ; $7e1a: $16 $00
	ld   hl, $c668                                   ; $7e1c: $21 $68 $c6
	add  hl, de                                      ; $7e1f: $19
	ld   a, [hl]                                     ; $7e20: $7e
	pop  hl                                          ; $7e21: $e1
	call Call_030_7e3b                               ; $7e22: $cd $3b $7e
	pop  af                                          ; $7e25: $f1
	ld   [wWramBank], a                                  ; $7e26: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $7e29: $e0 $70
	ld   a, $05                                      ; $7e2b: $3e $05
	ld   hl, $d080                                   ; $7e2d: $21 $80 $d0
	ld   c, $80                                      ; $7e30: $0e $80
	ld   de, $9880                                   ; $7e32: $11 $80 $98
	ld   b, $18                                      ; $7e35: $06 $18
	call EnqueueHDMATransfer                                       ; $7e37: $cd $7c $02
	ret                                              ; $7e3a: $c9


Call_030_7e3b:
	ld   b, $0a                                      ; $7e3b: $06 $0a
	call Call_030_7e60                               ; $7e3d: $cd $60 $7e
	push af                                          ; $7e40: $f5
	ld   a, $80                                      ; $7e41: $3e $80
	add  c                                           ; $7e43: $81
	ld   [hl+], a                                    ; $7e44: $22
	push hl                                          ; $7e45: $e5
	ld   de, $001f                                   ; $7e46: $11 $1f $00
	add  hl, de                                      ; $7e49: $19
	add  $10                                         ; $7e4a: $c6 $10
	ld   [hl], a                                     ; $7e4c: $77
	pop  hl                                          ; $7e4d: $e1
	pop  af                                          ; $7e4e: $f1
	ld   b, $01                                      ; $7e4f: $06 $01
	call Call_030_7e60                               ; $7e51: $cd $60 $7e
	ld   a, $80                                      ; $7e54: $3e $80
	add  c                                           ; $7e56: $81
	ld   [hl+], a                                    ; $7e57: $22
	ld   de, $001f                                   ; $7e58: $11 $1f $00
	add  hl, de                                      ; $7e5b: $19
	add  $10                                         ; $7e5c: $c6 $10
	ld   [hl], a                                     ; $7e5e: $77
	ret                                              ; $7e5f: $c9


Call_030_7e60:
	ld   c, $00                                      ; $7e60: $0e $00

jr_030_7e62:
	cp   b                                           ; $7e62: $b8
	ret  c                                           ; $7e63: $d8

	sub  b                                           ; $7e64: $90
	inc  c                                           ; $7e65: $0c
	jr   jr_030_7e62                                 ; $7e66: $18 $fa


if def(VWF)

IrisMiniGameMainBank1_8000hHook:
	call RLEXorCopy

	M_FarCall LoadIrisMiniGameMainGfx1
	ret


IrisMiniGameMainTileMapHook:
	call FarCopyLayout

	ld   a, BANK(IrisMiniGameMainLayout1)
	ldbc $08, $03
	ld   de, IrisMiniGameMainLayout1
	ld   hl, $9a46
	call FarCopyLayout

	ld   a, BANK(IrisMiniGameMainLayout2)
	ldbc $08, $03
	ld   de, IrisMiniGameMainLayout2
	ld   hl, $9aa6
	call FarCopyLayout

	ld   a, BANK(IrisMiniGameMainLayout3)
	ldbc $0b, $03
	ld   de, IrisMiniGameMainLayout3
	ld   hl, $9b06
	call FarCopyLayout

	ld   a, BANK(IrisMiniGameMainLayout4)
	ldbc $05, $02
	ld   de, IrisMiniGameMainLayout4
	ld   hl, $99ed
	call FarCopyLayout
	ret


IrisMiniGameMainTileAttrHook:
	call FarCopyLayout

	ld   a, $88
	ld   [$9a46], a
	ld   [$9a66], a
	ld   [$9a86], a
	ld   [$9a4d], a
	ld   [$9a6d], a
	ld   [$9a8d], a
	ld   [$9b10], a
	ld   [$9b30], a
	ld   [$9b50], a
	ld   [$9b0e], a
	ld   [$9b0f], a
	ld   [$9b2e], a
	ld   [$9b2f], a
	ld   [$9b4e], a
	ld   [$9b4f], a

	ld   a, $03
	ld   [$99ee], a
	ld   [$9a0e], a

	ld   a, $0b
	ld   [$99f0], a
	ld   [$9a10], a

	ret

endc
