; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $00e", ROMX[$4000], BANK[$e]

Func_0e_4000::
;
	ld   d, $00                                      ; $4000: $16 $00
	ld   e, a                                        ; $4002: $5f
	ld   hl, SpriteGroup1Pointers                                   ; $4003: $21 $2c $40
	add  hl, de                                      ; $4006: $19
	add  hl, de                                      ; $4007: $19

;
	ld   a, [hl+]                                    ; $4008: $2a
	ld   h, [hl]                                     ; $4009: $66
	ld   l, a                                        ; $400a: $6f

;
	ld   d, HIGH(wOam)                                      ; $400b: $16 $c0
	ld   a, [wNextShadowOamIdxToPopulate]                                  ; $400d: $fa $19 $c2
	ld   e, a                                        ; $4010: $5f

jr_00e_4011:
;
	ld   a, [hl+]                                    ; $4011: $2a
	add  c                                           ; $4012: $81
	ld   [de], a                                     ; $4013: $12
	inc  de                                          ; $4014: $13

;
	ld   a, [hl+]                                    ; $4015: $2a
	add  b                                           ; $4016: $80
	ld   [de], a                                     ; $4017: $12
	inc  de                                          ; $4018: $13

;
	ld   a, [$cc71]                                  ; $4019: $fa $71 $cc
	or   [hl]                                        ; $401c: $b6
	inc  hl                                          ; $401d: $23
	ld   [de], a                                     ; $401e: $12
	inc  de                                          ; $401f: $13
	ld   a, [hl+]                                    ; $4020: $2a
	ld   [de], a                                     ; $4021: $12
	inc  de                                          ; $4022: $13
	bit  4, a                                        ; $4023: $cb $67
	jr   z, jr_00e_4011                              ; $4025: $28 $ea

	ld   a, e                                        ; $4027: $7b
	ld   [wNextShadowOamIdxToPopulate], a                                  ; $4028: $ea $19 $c2
	ret                                              ; $402b: $c9


SpriteGroup1Pointers::
	dw $4194
	dw $41a4
	dw $41b4
	dw $41c4
	dw $41d4
	dw $41e4
	dw $41f4
	dw $4204
	dw $4214
	dw $4224
	dw $4234
	dw $4244
	dw $4254
	dw $4264
	dw $4274
	dw $4284
	dw $4294
	dw $42a4
	dw $42b4
	dw $42c4
	dw $42d4
	dw $42e4
	dw $42f4
	dw $4304
	dw $4314
	dw $4324
	dw $4334
	dw $4344
	dw $4354
	dw $4364
	dw $4374
	dw $4384
	dw $4394
	dw $43a4
	dw $43b4
	dw $43c4
	dw $43d4
	dw $43e4
	dw $43f4
	dw $4404
	dw $4414
	dw $4424
	dw $4434
	dw $4444
	dw $4454
	dw $4464
	dw $4474
	dw $4484
	dw $4494
	dw $44a4
	dw $44b4
	dw $44c4
	dw $44d4
	dw $44d8
	dw $44e8
	dw $44f8
	dw $4508
	dw $4510
	dw $4518
	dw $4520
	dw $4528
	dw $4530
	dw $453c
	dw $4544
	dw $4548
	dw $454c
	dw $4550
	dw $4554
	dw $4558
	dw $455c
	dw $4560
	dw $4564
	dw $4570
	dw $457c
	dw $4588
	dw $4590
	dw $4594
	dw $4598
	dw $45a0
	dw $45a8
	dw $45ac
	dw $45b0
	dw $45b4
	dw $45b8
	dw $45bc
	dw $45c0
	dw $45c4
	dw $45c8
	dw $45cc
	dw $45d0
	dw $45dc
	dw $45e8
	dw $45f4
	dw $466c
	dw $46ac
	dw Data_0e_4730 ; new game - 5f
	dw Data_0e_4750 ; continue - 60
	dw Data_0e_4770 ; settings - 61
	dw Data_0e_4790 ; prologue - 62
	dw Data_0e_47b0 ; romando shop - 63
	dw Data_0e_47d0 ; treasure chest - 64
	dw Data_0e_47f0 ; minigames - 65
	dw Data_0e_4810 ; kinematron - 66
	dw Data_0e_4830 ; new game (red) - 67
	dw Data_0e_4850 ; continue (red) - 68
	dw Data_0e_4870
	dw Data_0e_4890
	dw Data_0e_48b0 ; romando shop (red) - 6b
	dw Data_0e_48d0
	dw Data_0e_48f0
	dw Data_0e_4910 ; kinematron (red) - 6e
	dw Data_0e_4930 ; title menu screen - arrow start
	dw Data_0e_4934
	dw Data_0e_4938
	dw Data_0e_493c
	dw Data_0e_4940
	dw Data_0e_4944
	dw Data_0e_4948
	dw Data_0e_494c ; title menu screen - arrow end
	dw $4950
	dw $498c
	dw $4994
	dw $499c
	dw $49a4
	dw $49ac
	dw $49b4
	dw $49bc
	dw $49c4
	dw $49cc
	dw $49d4
	dw $49dc
	dw $49e4
	dw $49ec
	dw $49f4
	dw $49fc
	dw $4a04
	dw $4a0c
	dw $4a14
	dw $4a18
	dw $4a1c
	dw SpriteGroup1_Idx8ch
	dw SpriteGroup1_Idx8dh
	dw SpriteGroup1_Idx8eh
	dw SpriteGroup1_Idx8fh_ScheduleConfirm
	dw $4a78
	dw $4a90
	dw $4a98
	dw $4aa0
	dw $4aa8
	dw $4ac8
	dw SpriteGroup1_Idx96h_SchedulePopupText
	dw SpriteGroup1_Idx97h
	dw SpriteGroup1_Idx98h
	dw SpriteGroup1_Idx99h
	dw $4bb8
	dw $4bc8
	dw SpriteGroup1_Idx9ch_GameOverLeftKanji1
	dw SpriteGroup1_Idx9dh
	dw $4c50
	dw $4c90
	dw SpriteGroup1_Idxa0h_GameOverRightKanji1
	dw SpriteGroup1_Idxa1h
	dw $4d3c
	dw $4d78
	dw SpriteGroup1_Idxa4h_GameOverPlayerSprite
	dw SpriteGroup1_Idxa5h
	dw $4e18
	dw $4e64
	dw $4e74
	dw $4ec0
	dw $4f0c
	dw $4f58
	dw $4f5c
	dw $4f60
	dw $4f68
	dw $4f88
	dw $4fd0
	dw $4fd8
	dw $4fe0
	dw $4fe8



	jr   jr_00e_41a6                                 ; $4194: $18 $10

	inc  de                                          ; $4196: $13
	ld   bc, $1010                                   ; $4197: $01 $10 $10
	ld   [de], a                                     ; $419a: $12
	ld   bc, $0818                                   ; $419b: $01 $18 $08
	ld   de, $1001                                   ; $419e: $11 $01 $10
	ld   [$1110], sp                                 ; $41a1: $08 $10 $11
	jr   jr_00e_41b6                                 ; $41a4: $18 $10

jr_00e_41a6:
	rra                                              ; $41a6: $1f

jr_00e_41a7:
	ld   b, $10                                      ; $41a7: $06 $10
	db   $10                                         ; $41a9: $10
	ld   e, $06                                      ; $41aa: $1e $06
	jr   jr_00e_41b6                                 ; $41ac: $18 $08

	dec  e                                           ; $41ae: $1d
	ld   b, $10                                      ; $41af: $06 $10
	ld   [$161c], sp                                 ; $41b1: $08 $1c $16
	jr   jr_00e_41c6                                 ; $41b4: $18 $10

jr_00e_41b6:
	inc  de                                          ; $41b6: $13
	ld   b, $10                                      ; $41b7: $06 $10
	db   $10                                         ; $41b9: $10
	ld   [de], a                                     ; $41ba: $12
	ld   b, $18                                      ; $41bb: $06 $18
	ld   [$0611], sp                                 ; $41bd: $08 $11 $06
	db   $10                                         ; $41c0: $10
	ld   [$1610], sp                                 ; $41c1: $08 $10 $16
	jr   jr_00e_41d6                                 ; $41c4: $18 $10

jr_00e_41c6:
	rla                                              ; $41c6: $17
	rlca                                             ; $41c7: $07
	db   $10                                         ; $41c8: $10
	db   $10                                         ; $41c9: $10
	ld   d, $07                                      ; $41ca: $16 $07
	jr   jr_00e_41d6                                 ; $41cc: $18 $08

	dec  d                                           ; $41ce: $15
	rlca                                             ; $41cf: $07
	db   $10                                         ; $41d0: $10
	ld   [$1714], sp                                 ; $41d1: $08 $14 $17
	jr   jr_00e_41e6                                 ; $41d4: $18 $10

jr_00e_41d6:
	dec  de                                          ; $41d6: $1b
	rlca                                             ; $41d7: $07
	db   $10                                         ; $41d8: $10
	db   $10                                         ; $41d9: $10
	ld   a, [de]                                     ; $41da: $1a
	rlca                                             ; $41db: $07
	jr   jr_00e_41e6                                 ; $41dc: $18 $08

	add  hl, de                                      ; $41de: $19
	rlca                                             ; $41df: $07
	db   $10                                         ; $41e0: $10
	ld   [$1718], sp                                 ; $41e1: $08 $18 $17
	jr   jr_00e_41f6                                 ; $41e4: $18 $10

jr_00e_41e6:
	rra                                              ; $41e6: $1f
	rlca                                             ; $41e7: $07
	db   $10                                         ; $41e8: $10
	db   $10                                         ; $41e9: $10
	ld   e, $07                                      ; $41ea: $1e $07
	jr   jr_00e_41f6                                 ; $41ec: $18 $08

	dec  e                                           ; $41ee: $1d
	rlca                                             ; $41ef: $07
	db   $10                                         ; $41f0: $10
	ld   [$171c], sp                                 ; $41f1: $08 $1c $17
	jr   jr_00e_4206                                 ; $41f4: $18 $10

jr_00e_41f6:
	inc  de                                          ; $41f6: $13
	rlca                                             ; $41f7: $07
	db   $10                                         ; $41f8: $10
	db   $10                                         ; $41f9: $10
	ld   [de], a                                     ; $41fa: $12
	rlca                                             ; $41fb: $07
	jr   jr_00e_4206                                 ; $41fc: $18 $08

	ld   de, $1007                                   ; $41fe: $11 $07 $10
	ld   [$1710], sp                                 ; $4201: $08 $10 $17
	jr   jr_00e_4216                                 ; $4204: $18 $10

jr_00e_4206:
	rla                                              ; $4206: $17
	ld   b, $10                                      ; $4207: $06 $10
	db   $10                                         ; $4209: $10
	ld   d, $06                                      ; $420a: $16 $06
	jr   jr_00e_4216                                 ; $420c: $18 $08

	dec  d                                           ; $420e: $15
	ld   b, $10                                      ; $420f: $06 $10
	ld   [$1614], sp                                 ; $4211: $08 $14 $16
	jr   jr_00e_4226                                 ; $4214: $18 $10

jr_00e_4216:
	dec  de                                          ; $4216: $1b
	ld   b, $10                                      ; $4217: $06 $10
	db   $10                                         ; $4219: $10
	ld   a, [de]                                     ; $421a: $1a
	ld   b, $18                                      ; $421b: $06 $18
	ld   [$0619], sp                                 ; $421d: $08 $19 $06
	db   $10                                         ; $4220: $10
	ld   [$1618], sp                                 ; $4221: $08 $18 $16
	jr   jr_00e_4236                                 ; $4224: $18 $10

jr_00e_4226:
	rla                                              ; $4226: $17
	ld   bc, $1010                                   ; $4227: $01 $10 $10
	ld   d, $01                                      ; $422a: $16 $01
	jr   jr_00e_4236                                 ; $422c: $18 $08

	dec  d                                           ; $422e: $15
	ld   bc, $0810                                   ; $422f: $01 $10 $08
	inc  d                                           ; $4232: $14
	ld   de, $1018                                   ; $4233: $11 $18 $10

jr_00e_4236:
	dec  de                                          ; $4236: $1b
	ld   bc, $1010                                   ; $4237: $01 $10 $10
	ld   a, [de]                                     ; $423a: $1a
	ld   bc, $0818                                   ; $423b: $01 $18 $08
	add  hl, de                                      ; $423e: $19
	ld   bc, $0810                                   ; $423f: $01 $10 $08
	jr   @+$13                                       ; $4242: $18 $11

	jr   jr_00e_4256                                 ; $4244: $18 $10

	rra                                              ; $4246: $1f
	ld   bc, $1010                                   ; $4247: $01 $10 $10
	ld   e, $01                                      ; $424a: $1e $01
	jr   jr_00e_4256                                 ; $424c: $18 $08

	dec  e                                           ; $424e: $1d
	ld   bc, $0810                                   ; $424f: $01 $10 $08
	inc  e                                           ; $4252: $1c
	ld   de, $1018                                   ; $4253: $11 $18 $10

jr_00e_4256:
	inc  de                                          ; $4256: $13
	inc  bc                                          ; $4257: $03
	db   $10                                         ; $4258: $10
	db   $10                                         ; $4259: $10
	ld   [de], a                                     ; $425a: $12
	inc  bc                                          ; $425b: $03
	jr   jr_00e_4266                                 ; $425c: $18 $08

	ld   de, $1003                                   ; $425e: $11 $03 $10
	ld   [$1310], sp                                 ; $4261: $08 $10 $13
	jr   jr_00e_4276                                 ; $4264: $18 $10

jr_00e_4266:
	rla                                              ; $4266: $17
	inc  bc                                          ; $4267: $03
	db   $10                                         ; $4268: $10
	db   $10                                         ; $4269: $10
	ld   d, $03                                      ; $426a: $16 $03
	jr   jr_00e_4276                                 ; $426c: $18 $08

	dec  d                                           ; $426e: $15
	inc  bc                                          ; $426f: $03
	db   $10                                         ; $4270: $10
	ld   [$1314], sp                                 ; $4271: $08 $14 $13
	jr   jr_00e_4286                                 ; $4274: $18 $10

jr_00e_4276:
	dec  de                                          ; $4276: $1b
	inc  bc                                          ; $4277: $03
	db   $10                                         ; $4278: $10
	db   $10                                         ; $4279: $10
	ld   a, [de]                                     ; $427a: $1a
	inc  bc                                          ; $427b: $03
	jr   jr_00e_4286                                 ; $427c: $18 $08

	add  hl, de                                      ; $427e: $19
	inc  bc                                          ; $427f: $03
	db   $10                                         ; $4280: $10
	ld   [$1318], sp                                 ; $4281: $08 $18 $13
	jr   jr_00e_4296                                 ; $4284: $18 $10

jr_00e_4286:
	rra                                              ; $4286: $1f
	inc  bc                                          ; $4287: $03
	db   $10                                         ; $4288: $10
	db   $10                                         ; $4289: $10
	ld   e, $03                                      ; $428a: $1e $03
	jr   jr_00e_4296                                 ; $428c: $18 $08

	dec  e                                           ; $428e: $1d
	inc  bc                                          ; $428f: $03
	db   $10                                         ; $4290: $10
	ld   [$131c], sp                                 ; $4291: $08 $1c $13
	jr   jr_00e_42a6                                 ; $4294: $18 $10

jr_00e_4296:
	inc  hl                                          ; $4296: $23
	inc  bc                                          ; $4297: $03
	db   $10                                         ; $4298: $10
	db   $10                                         ; $4299: $10
	ld   [hl+], a                                    ; $429a: $22
	inc  bc                                          ; $429b: $03
	jr   jr_00e_42a6                                 ; $429c: $18 $08

	ld   hl, $1003                                   ; $429e: $21 $03 $10
	ld   [$1320], sp                                 ; $42a1: $08 $20 $13
	jr   jr_00e_42b6                                 ; $42a4: $18 $10

jr_00e_42a6:
	daa                                              ; $42a6: $27
	inc  bc                                          ; $42a7: $03
	db   $10                                         ; $42a8: $10
	db   $10                                         ; $42a9: $10
	ld   h, $03                                      ; $42aa: $26 $03
	jr   jr_00e_42b6                                 ; $42ac: $18 $08

	dec  h                                           ; $42ae: $25
	inc  bc                                          ; $42af: $03
	db   $10                                         ; $42b0: $10
	ld   [$1324], sp                                 ; $42b1: $08 $24 $13
	jr   jr_00e_42c6                                 ; $42b4: $18 $10

jr_00e_42b6:
	dec  hl                                          ; $42b6: $2b
	inc  bc                                          ; $42b7: $03
	db   $10                                         ; $42b8: $10
	db   $10                                         ; $42b9: $10
	ld   a, [hl+]                                    ; $42ba: $2a
	inc  bc                                          ; $42bb: $03
	jr   jr_00e_42c6                                 ; $42bc: $18 $08

	add  hl, hl                                      ; $42be: $29
	inc  bc                                          ; $42bf: $03
	db   $10                                         ; $42c0: $10
	ld   [$1328], sp                                 ; $42c1: $08 $28 $13
	jr   jr_00e_42d6                                 ; $42c4: $18 $10

jr_00e_42c6:
	cpl                                              ; $42c6: $2f
	inc  bc                                          ; $42c7: $03
	db   $10                                         ; $42c8: $10
	db   $10                                         ; $42c9: $10
	ld   l, $03                                      ; $42ca: $2e $03
	jr   jr_00e_42d6                                 ; $42cc: $18 $08

	dec  l                                           ; $42ce: $2d
	inc  bc                                          ; $42cf: $03
	db   $10                                         ; $42d0: $10
	ld   [$132c], sp                                 ; $42d1: $08 $2c $13
	jr   @+$12                                       ; $42d4: $18 $10

jr_00e_42d6:
	inc  de                                          ; $42d6: $13
	inc  b                                           ; $42d7: $04
	db   $10                                         ; $42d8: $10
	db   $10                                         ; $42d9: $10
	ld   [de], a                                     ; $42da: $12
	inc  b                                           ; $42db: $04
	jr   @+$0a                                       ; $42dc: $18 $08

	ld   de, $1004                                   ; $42de: $11 $04 $10
	ld   [$1410], sp                                 ; $42e1: $08 $10 $14
	db   $10                                         ; $42e4: $10
	ld   [$0243], sp                                 ; $42e5: $08 $43 $02
	ld   [$4208], sp                                 ; $42e8: $08 $08 $42
	ld   [bc], a                                     ; $42eb: $02
	stop                                             ; $42ec: $10 $00
	ld   b, c                                        ; $42ee: $41
	ld   [bc], a                                     ; $42ef: $02
	ld   [$4000], sp                                 ; $42f0: $08 $00 $40
	ld   [de], a                                     ; $42f3: $12
	db   $10                                         ; $42f4: $10
	ld   [$0747], sp                                 ; $42f5: $08 $47 $07
	ld   [$4608], sp                                 ; $42f8: $08 $08 $46
	rlca                                             ; $42fb: $07
	stop                                             ; $42fc: $10 $00
	ld   b, l                                        ; $42fe: $45
	rlca                                             ; $42ff: $07
	ld   [$4400], sp                                 ; $4300: $08 $00 $44
	rla                                              ; $4303: $17
	db   $10                                         ; $4304: $10
	ld   [$054b], sp                                 ; $4305: $08 $4b $05
	ld   [$4a08], sp                                 ; $4308: $08 $08 $4a
	dec  b                                           ; $430b: $05
	stop                                             ; $430c: $10 $00
	ld   c, c                                        ; $430e: $49
	dec  b                                           ; $430f: $05
	ld   [$4800], sp                                 ; $4310: $08 $00 $48
	dec  d                                           ; $4313: $15
	db   $10                                         ; $4314: $10
	ld   [$064f], sp                                 ; $4315: $08 $4f $06
	ld   [$4e08], sp                                 ; $4318: $08 $08 $4e
	ld   b, $10                                      ; $431b: $06 $10
	nop                                              ; $431d: $00
	ld   c, l                                        ; $431e: $4d
	ld   b, $08                                      ; $431f: $06 $08
	nop                                              ; $4321: $00
	ld   c, h                                        ; $4322: $4c
	ld   d, $10                                      ; $4323: $16 $10
	ld   [$0653], sp                                 ; $4325: $08 $53 $06
	ld   [$5208], sp                                 ; $4328: $08 $08 $52
	ld   b, $10                                      ; $432b: $06 $10
	nop                                              ; $432d: $00
	ld   d, c                                        ; $432e: $51
	ld   b, $08                                      ; $432f: $06 $08
	nop                                              ; $4331: $00
	ld   d, b                                        ; $4332: $50
	ld   d, $10                                      ; $4333: $16 $10
	ld   [$0557], sp                                 ; $4335: $08 $57 $05
	ld   [$5608], sp                                 ; $4338: $08 $08 $56
	dec  b                                           ; $433b: $05
	stop                                             ; $433c: $10 $00
	ld   d, l                                        ; $433e: $55
	dec  b                                           ; $433f: $05
	ld   [$5400], sp                                 ; $4340: $08 $00 $54
	dec  d                                           ; $4343: $15
	db   $10                                         ; $4344: $10
	ld   [$055b], sp                                 ; $4345: $08 $5b $05
	ld   [$5a08], sp                                 ; $4348: $08 $08 $5a
	dec  b                                           ; $434b: $05
	stop                                             ; $434c: $10 $00
	ld   e, c                                        ; $434e: $59
	dec  b                                           ; $434f: $05
	ld   [$5800], sp                                 ; $4350: $08 $00 $58
	dec  d                                           ; $4353: $15
	db   $10                                         ; $4354: $10
	ld   [$005f], sp                                 ; $4355: $08 $5f $00
	ld   [$5e08], sp                                 ; $4358: $08 $08 $5e
	nop                                              ; $435b: $00
	stop                                             ; $435c: $10 $00
	ld   e, l                                        ; $435e: $5d
	nop                                              ; $435f: $00
	ld   [$5c00], sp                                 ; $4360: $08 $00 $5c
	db   $10                                         ; $4363: $10
	db   $10                                         ; $4364: $10
	ld   [$0063], sp                                 ; $4365: $08 $63 $00
	ld   [$6208], sp                                 ; $4368: $08 $08 $62
	nop                                              ; $436b: $00
	stop                                             ; $436c: $10 $00
	ld   h, c                                        ; $436e: $61
	nop                                              ; $436f: $00
	ld   [$6000], sp                                 ; $4370: $08 $00 $60
	db   $10                                         ; $4373: $10
	db   $10                                         ; $4374: $10
	ld   [$0567], sp                                 ; $4375: $08 $67 $05
	ld   [$6608], sp                                 ; $4378: $08 $08 $66
	dec  b                                           ; $437b: $05
	stop                                             ; $437c: $10 $00
	ld   h, l                                        ; $437e: $65
	dec  b                                           ; $437f: $05
	ld   [$6400], sp                                 ; $4380: $08 $00 $64
	dec  d                                           ; $4383: $15
	db   $10                                         ; $4384: $10
	ld   [$056b], sp                                 ; $4385: $08 $6b $05
	ld   [$6a08], sp                                 ; $4388: $08 $08 $6a
	dec  b                                           ; $438b: $05
	stop                                             ; $438c: $10 $00
	ld   l, c                                        ; $438e: $69
	dec  b                                           ; $438f: $05
	ld   [$6800], sp                                 ; $4390: $08 $00 $68
	dec  d                                           ; $4393: $15
	db   $10                                         ; $4394: $10
	ld   [$056f], sp                                 ; $4395: $08 $6f $05
	ld   [$6e08], sp                                 ; $4398: $08 $08 $6e
	dec  b                                           ; $439b: $05
	stop                                             ; $439c: $10 $00
	ld   l, l                                        ; $439e: $6d
	dec  b                                           ; $439f: $05
	ld   [$6c00], sp                                 ; $43a0: $08 $00 $6c
	dec  d                                           ; $43a3: $15
	db   $10                                         ; $43a4: $10
	ld   [$0573], sp                                 ; $43a5: $08 $73 $05
	ld   [$7208], sp                                 ; $43a8: $08 $08 $72
	dec  b                                           ; $43ab: $05
	stop                                             ; $43ac: $10 $00
	ld   [hl], c                                     ; $43ae: $71
	dec  b                                           ; $43af: $05
	ld   [$7000], sp                                 ; $43b0: $08 $00 $70
	dec  d                                           ; $43b3: $15
	db   $10                                         ; $43b4: $10
	ld   [$0577], sp                                 ; $43b5: $08 $77 $05
	ld   [$7608], sp                                 ; $43b8: $08 $08 $76
	dec  b                                           ; $43bb: $05
	stop                                             ; $43bc: $10 $00
	ld   [hl], l                                     ; $43be: $75
	dec  b                                           ; $43bf: $05
	ld   [$7400], sp                                 ; $43c0: $08 $00 $74
	dec  d                                           ; $43c3: $15
	db   $10                                         ; $43c4: $10
	ld   [$057b], sp                                 ; $43c5: $08 $7b $05
	ld   [$7a08], sp                                 ; $43c8: $08 $08 $7a
	dec  b                                           ; $43cb: $05
	stop                                             ; $43cc: $10 $00
	ld   a, c                                        ; $43ce: $79
	dec  b                                           ; $43cf: $05
	ld   [$7800], sp                                 ; $43d0: $08 $00 $78
	dec  d                                           ; $43d3: $15
	db   $10                                         ; $43d4: $10
	ld   [$057f], sp                                 ; $43d5: $08 $7f $05
	ld   [$7e08], sp                                 ; $43d8: $08 $08 $7e
	dec  b                                           ; $43db: $05
	stop                                             ; $43dc: $10 $00
	ld   a, l                                        ; $43de: $7d
	dec  b                                           ; $43df: $05
	ld   [$7c00], sp                                 ; $43e0: $08 $00 $7c
	dec  d                                           ; $43e3: $15
	db   $10                                         ; $43e4: $10
	ld   [$0703], sp                                 ; $43e5: $08 $03 $07
	ld   [$0208], sp                                 ; $43e8: $08 $08 $02
	rlca                                             ; $43eb: $07
	stop                                             ; $43ec: $10 $00
	ld   bc, $0807                                   ; $43ee: $01 $07 $08
	nop                                              ; $43f1: $00
	nop                                              ; $43f2: $00
	rla                                              ; $43f3: $17
	ld   c, $08                                      ; $43f4: $0e $08
	rlca                                             ; $43f6: $07
	rlca                                             ; $43f7: $07
	ld   b, $08                                      ; $43f8: $06 $08
	ld   b, $07                                      ; $43fa: $06 $07
	ld   c, $00                                      ; $43fc: $0e $00
	dec  b                                           ; $43fe: $05
	rlca                                             ; $43ff: $07
	ld   b, $00                                      ; $4400: $06 $00
	inc  b                                           ; $4402: $04
	rla                                              ; $4403: $17
	db   $10                                         ; $4404: $10
	ld   [$070b], sp                                 ; $4405: $08 $0b $07
	ld   [$0a08], sp                                 ; $4408: $08 $08 $0a
	rlca                                             ; $440b: $07
	stop                                             ; $440c: $10 $00
	add  hl, bc                                      ; $440e: $09
	rlca                                             ; $440f: $07
	ld   [$0800], sp                                 ; $4410: $08 $00 $08
	rla                                              ; $4413: $17
	db   $10                                         ; $4414: $10
	ld   [$070f], sp                                 ; $4415: $08 $0f $07
	ld   [$0e08], sp                                 ; $4418: $08 $08 $0e
	rlca                                             ; $441b: $07
	stop                                             ; $441c: $10 $00
	dec  c                                           ; $441e: $0d
	rlca                                             ; $441f: $07
	ld   [$0c00], sp                                 ; $4420: $08 $00 $0c
	rla                                              ; $4423: $17
	db   $10                                         ; $4424: $10
	ld   [$0503], sp                                 ; $4425: $08 $03 $05
	ld   [$0208], sp                                 ; $4428: $08 $08 $02
	dec  b                                           ; $442b: $05
	stop                                             ; $442c: $10 $00
	ld   bc, $0805                                   ; $442e: $01 $05 $08
	nop                                              ; $4431: $00
	nop                                              ; $4432: $00
	dec  d                                           ; $4433: $15
	ld   c, $08                                      ; $4434: $0e $08
	rlca                                             ; $4436: $07
	dec  b                                           ; $4437: $05
	ld   b, $08                                      ; $4438: $06 $08
	ld   b, $05                                      ; $443a: $06 $05
	ld   c, $00                                      ; $443c: $0e $00
	dec  b                                           ; $443e: $05
	dec  b                                           ; $443f: $05
	ld   b, $00                                      ; $4440: $06 $00
	inc  b                                           ; $4442: $04
	dec  d                                           ; $4443: $15
	db   $10                                         ; $4444: $10
	ld   [$050b], sp                                 ; $4445: $08 $0b $05
	ld   [$0a08], sp                                 ; $4448: $08 $08 $0a
	dec  b                                           ; $444b: $05
	stop                                             ; $444c: $10 $00
	add  hl, bc                                      ; $444e: $09
	dec  b                                           ; $444f: $05
	ld   [$0800], sp                                 ; $4450: $08 $00 $08
	dec  d                                           ; $4453: $15
	db   $10                                         ; $4454: $10

Call_00e_4455:
	ld   [$050f], sp                                 ; $4455: $08 $0f $05
	ld   [$0e08], sp                                 ; $4458: $08 $08 $0e
	dec  b                                           ; $445b: $05
	stop                                             ; $445c: $10 $00
	dec  c                                           ; $445e: $0d
	dec  b                                           ; $445f: $05
	ld   [$0c00], sp                                 ; $4460: $08 $00 $0c
	dec  d                                           ; $4463: $15
	db   $10                                         ; $4464: $10
	ld   [$0603], sp                                 ; $4465: $08 $03 $06
	ld   [$0208], sp                                 ; $4468: $08 $08 $02
	ld   b, $10                                      ; $446b: $06 $10
	nop                                              ; $446d: $00
	ld   bc, $0806                                   ; $446e: $01 $06 $08
	nop                                              ; $4471: $00
	nop                                              ; $4472: $00
	ld   d, $0e                                      ; $4473: $16 $0e
	ld   [$0607], sp                                 ; $4475: $08 $07 $06
	ld   b, $08                                      ; $4478: $06 $08
	ld   b, $06                                      ; $447a: $06 $06
	ld   c, $00                                      ; $447c: $0e $00
	dec  b                                           ; $447e: $05
	ld   b, $06                                      ; $447f: $06 $06
	nop                                              ; $4481: $00
	inc  b                                           ; $4482: $04
	ld   d, $10                                      ; $4483: $16 $10
	ld   [$060b], sp                                 ; $4485: $08 $0b $06
	ld   [$0a08], sp                                 ; $4488: $08 $08 $0a
	ld   b, $10                                      ; $448b: $06 $10
	nop                                              ; $448d: $00
	add  hl, bc                                      ; $448e: $09
	ld   b, $08                                      ; $448f: $06 $08
	nop                                              ; $4491: $00
	ld   [$1016], sp                                 ; $4492: $08 $16 $10
	ld   [$060f], sp                                 ; $4495: $08 $0f $06
	ld   [$0e08], sp                                 ; $4498: $08 $08 $0e
	ld   b, $10                                      ; $449b: $06 $10
	nop                                              ; $449d: $00
	dec  c                                           ; $449e: $0d
	ld   b, $08                                      ; $449f: $06 $08
	nop                                              ; $44a1: $00
	inc  c                                           ; $44a2: $0c
	ld   d, $10                                      ; $44a3: $16 $10
	nop                                              ; $44a5: $00
	ld   bc, $0802                                   ; $44a6: $01 $02 $08
	nop                                              ; $44a9: $00
	nop                                              ; $44aa: $00
	ld   [bc], a                                     ; $44ab: $02
	ld   [$0208], sp                                 ; $44ac: $08 $08 $02
	ld   [bc], a                                     ; $44af: $02
	db   $10                                         ; $44b0: $10
	ld   [$1203], sp                                 ; $44b1: $08 $03 $12
	db   $10                                         ; $44b4: $10
	ld   [$0207], sp                                 ; $44b5: $08 $07 $02
	ld   [$0608], sp                                 ; $44b8: $08 $08 $06
	ld   [bc], a                                     ; $44bb: $02
	stop                                             ; $44bc: $10 $00
	dec  b                                           ; $44be: $05
	ld   [bc], a                                     ; $44bf: $02
	ld   [$0400], sp                                 ; $44c0: $08 $00 $04
	ld   [de], a                                     ; $44c3: $12
	db   $10                                         ; $44c4: $10
	ld   [$020b], sp                                 ; $44c5: $08 $0b $02
	ld   [$0a08], sp                                 ; $44c8: $08 $08 $0a
	ld   [bc], a                                     ; $44cb: $02
	stop                                             ; $44cc: $10 $00
	add  hl, bc                                      ; $44ce: $09
	ld   [bc], a                                     ; $44cf: $02
	ld   [$0800], sp                                 ; $44d0: $08 $00 $08
	ld   [de], a                                     ; $44d3: $12
	db   $10                                         ; $44d4: $10
	ld   [$1f00], sp                                 ; $44d5: $08 $00 $1f
	jr   z, jr_00e_44ea                              ; $44d8: $28 $10

	ld   b, $0f                                      ; $44da: $06 $0f
	jr   jr_00e_44ee                                 ; $44dc: $18 $10

	inc  b                                           ; $44de: $04
	rrca                                             ; $44df: $0f
	jr   z, jr_00e_44ea                              ; $44e0: $28 $08

	ld   [bc], a                                     ; $44e2: $02
	rrca                                             ; $44e3: $0f
	jr   jr_00e_44ee                                 ; $44e4: $18 $08

	nop                                              ; $44e6: $00
	rra                                              ; $44e7: $1f
	jr   nz, jr_00e_44fa                             ; $44e8: $20 $10

jr_00e_44ea:
	ld   c, $0f                                      ; $44ea: $0e $0f
	db   $10                                         ; $44ec: $10
	db   $10                                         ; $44ed: $10

jr_00e_44ee:
	inc  c                                           ; $44ee: $0c
	rrca                                             ; $44ef: $0f
	jr   nz, jr_00e_44fa                             ; $44f0: $20 $08

	ld   a, [bc]                                     ; $44f2: $0a
	rrca                                             ; $44f3: $0f
	db   $10                                         ; $44f4: $10
	ld   [$1f08], sp                                 ; $44f5: $08 $08 $1f
	jr   nz, jr_00e_450a                             ; $44f8: $20 $10

jr_00e_44fa:
	ld   d, $0f                                      ; $44fa: $16 $0f
	db   $10                                         ; $44fc: $10
	db   $10                                         ; $44fd: $10
	inc  d                                           ; $44fe: $14
	rrca                                             ; $44ff: $0f
	jr   nz, jr_00e_450a                             ; $4500: $20 $08

	ld   [de], a                                     ; $4502: $12
	rrca                                             ; $4503: $0f
	db   $10                                         ; $4504: $10
	ld   [$1f10], sp                                 ; $4505: $08 $10 $1f
	db   $10                                         ; $4508: $10
	db   $10                                         ; $4509: $10

jr_00e_450a:
	ld   a, [de]                                     ; $450a: $1a
	rrca                                             ; $450b: $0f
	db   $10                                         ; $450c: $10
	ld   [$1f18], sp                                 ; $450d: $08 $18 $1f
	nop                                              ; $4510: $00
	db   $10                                         ; $4511: $10
	ld   [bc], a                                     ; $4512: $02
	ld   c, $00                                      ; $4513: $0e $00
	ld   [$1e00], sp                                 ; $4515: $08 $00 $1e
	cp   $10                                         ; $4518: $fe $10
	ld   [bc], a                                     ; $451a: $02
	ld   c, $fe                                      ; $451b: $0e $fe
	ld   [$1e00], sp                                 ; $451d: $08 $00 $1e
	db   $fc                                         ; $4520: $fc
	db   $10                                         ; $4521: $10
	ld   [bc], a                                     ; $4522: $02
	ld   c, $fc                                      ; $4523: $0e $fc
	ld   [$1e00], sp                                 ; $4525: $08 $00 $1e
	ld   a, [$0210]                                  ; $4528: $fa $10 $02
	ld   c, $fa                                      ; $452b: $0e $fa
	ld   [$1e00], sp                                 ; $452d: $08 $00 $1e
	dec  bc                                          ; $4530: $0b
	ld   [de], a                                     ; $4531: $12
	ld   c, $0e                                      ; $4532: $0e $0e
	ld   hl, sp+$10                                  ; $4534: $f8 $10
	ld   [bc], a                                     ; $4536: $02
	ld   c, $f8                                      ; $4537: $0e $f8
	ld   [$1e00], sp                                 ; $4539: $08 $00 $1e
	ld   [$0411], sp                                 ; $453c: $08 $11 $04
	ld   c, $f8                                      ; $453f: $0e $f8
	rrca                                             ; $4541: $0f
	ld   b, $1e                                      ; $4542: $06 $1e
	ld   b, $11                                      ; $4544: $06 $11
	inc  b                                           ; $4546: $04
	ld   e, $04                                      ; $4547: $1e $04
	ld   de, $1e04                                   ; $4549: $11 $04 $1e
	ld   [bc], a                                     ; $454c: $02
	ld   de, $1e04                                   ; $454d: $11 $04 $1e
	ld   hl, sp+$0e                                  ; $4550: $f8 $0e
	ld   b, $1f                                      ; $4552: $06 $1f
	ld   [bc], a                                     ; $4554: $02
	ld   c, $04                                      ; $4555: $0e $04
	rra                                              ; $4557: $1f
	inc  b                                           ; $4558: $04
	ld   c, $04                                      ; $4559: $0e $04
	rra                                              ; $455b: $1f
	ld   b, $0f                                      ; $455c: $06 $0f
	inc  b                                           ; $455e: $04
	rra                                              ; $455f: $1f
	ld   [$040f], sp                                 ; $4560: $08 $0f $04
	rra                                              ; $4563: $1f
	ld   a, [$0614]                                  ; $4564: $fa $14 $06
	rrca                                             ; $4567: $0f
	ld   a, [bc]                                     ; $4568: $0a
	ld   de, $0f0a                                   ; $4569: $11 $0a $0f
	ld   a, [bc]                                     ; $456c: $0a
	add  hl, bc                                      ; $456d: $09
	ld   [$fc1f], sp                                 ; $456e: $08 $1f $fc
	dec  d                                           ; $4571: $15
	inc  c                                           ; $4572: $0c
	rrca                                             ; $4573: $0f
	inc  c                                           ; $4574: $0c
	ld   de, $0f0a                                   ; $4575: $11 $0a $0f
	inc  c                                           ; $4578: $0c
	add  hl, bc                                      ; $4579: $09
	ld   [$fe1f], sp                                 ; $457a: $08 $1f $fe
	dec  d                                           ; $457d: $15
	inc  c                                           ; $457e: $0c
	rrca                                             ; $457f: $0f
	ld   c, $12                                      ; $4580: $0e $12
	ld   a, [bc]                                     ; $4582: $0a
	rrca                                             ; $4583: $0f
	ld   c, $0a                                      ; $4584: $0e $0a
	ld   [$001f], sp                                 ; $4586: $08 $1f $00
	dec  d                                           ; $4589: $15
	inc  c                                           ; $458a: $0c
	rrca                                             ; $458b: $0f
	db   $10                                         ; $458c: $10
	ld   de, $1f0e                                   ; $458d: $11 $0e $1f
	ld   [bc], a                                     ; $4590: $02
	ld   d, $0c                                      ; $4591: $16 $0c
	rra                                              ; $4593: $1f
	db   $10                                         ; $4594: $10
	ld   [$1810], sp                                 ; $4595: $08 $10 $18
	db   $10                                         ; $4598: $10
	db   $10                                         ; $4599: $10
	ld   [bc], a                                     ; $459a: $02
	rrca                                             ; $459b: $0f
	db   $10                                         ; $459c: $10
	ld   [$1f00], sp                                 ; $459d: $08 $00 $1f
	ld   c, $10                                      ; $45a0: $0e $10
	ld   [bc], a                                     ; $45a2: $02
	rrca                                             ; $45a3: $0f
	ld   c, $08                                      ; $45a4: $0e $08
	nop                                              ; $45a6: $00
	rra                                              ; $45a7: $1f
	db   $10                                         ; $45a8: $10
	ld   [$1000], sp                                 ; $45a9: $08 $00 $10
	db   $10                                         ; $45ac: $10
	ld   [$1002], sp                                 ; $45ad: $08 $02 $10
	db   $10                                         ; $45b0: $10
	ld   [$1004], sp                                 ; $45b1: $08 $04 $10
	db   $10                                         ; $45b4: $10
	ld   [$1006], sp                                 ; $45b5: $08 $06 $10
	db   $10                                         ; $45b8: $10
	ld   [$1008], sp                                 ; $45b9: $08 $08 $10
	db   $10                                         ; $45bc: $10
	ld   [$100a], sp                                 ; $45bd: $08 $0a $10
	db   $10                                         ; $45c0: $10
	ld   [FarPopulateKanjiConvoStructForCurrTextBox], sp                                 ; $45c1: $08 $0c $10
	db   $10                                         ; $45c4: $10
	ld   [$100e], sp                                 ; $45c5: $08 $0e $10
	db   $10                                         ; $45c8: $10
	ld   [$1010], sp                                 ; $45c9: $08 $10 $10
	db   $10                                         ; $45cc: $10
	ld   [$1012], sp                                 ; $45cd: $08 $12 $10
	db   $10                                         ; $45d0: $10
	jr   jr_00e_45f7                                 ; $45d1: $18 $24

	ld   bc, $1010                                   ; $45d3: $01 $10 $10
	ld   [hl+], a                                    ; $45d6: $22
	ld   bc, $0810                                   ; $45d7: $01 $10 $08
	jr   nz, @+$13                                   ; $45da: $20 $11

	db   $10                                         ; $45dc: $10
	jr   jr_00e_4609                                 ; $45dd: $18 $2a

	ld   bc, $1010                                   ; $45df: $01 $10 $10
	jr   z, jr_00e_45e5                              ; $45e2: $28 $01

	db   $10                                         ; $45e4: $10

jr_00e_45e5:
	ld   [$1126], sp                                 ; $45e5: $08 $26 $11
	db   $10                                         ; $45e8: $10
	jr   jr_00e_461b                                 ; $45e9: $18 $30

	ld   bc, $1010                                   ; $45eb: $01 $10 $10
	ld   l, $01                                      ; $45ee: $2e $01
	db   $10                                         ; $45f0: $10
	ld   [$112c], sp                                 ; $45f1: $08 $2c $11
	daa                                              ; $45f4: $27
	ld   b, b                                        ; $45f5: $40
	inc  c                                           ; $45f6: $0c

jr_00e_45f7:
	rrca                                             ; $45f7: $0f
	cpl                                              ; $45f8: $2f
	ld   b, b                                        ; $45f9: $40
	rrca                                             ; $45fa: $0f
	rrca                                             ; $45fb: $0f
	cpl                                              ; $45fc: $2f
	jr   c, @+$10                                    ; $45fd: $38 $0e

	rrca                                             ; $45ff: $0f
	db   $10                                         ; $4600: $10
	ld   a, l                                        ; $4601: $7d
	ld   [bc], a                                     ; $4602: $02
	rrca                                             ; $4603: $0f
	db   $10                                         ; $4604: $10
	ld   [hl], l                                     ; $4605: $75
	ld   bc, $100f                                   ; $4606: $01 $0f $10

jr_00e_4609:
	ld   l, l                                        ; $4609: $6d
	nop                                              ; $460a: $00
	rrca                                             ; $460b: $0f
	jr   jr_00e_4686                                 ; $460c: $18 $78

	ld   b, $0f                                      ; $460e: $06 $0f
	jr   jr_00e_4682                                 ; $4610: $18 $70

	dec  b                                           ; $4612: $05
	rrca                                             ; $4613: $0f
	jr   jr_00e_467e                                 ; $4614: $18 $68

	inc  b                                           ; $4616: $04
	rrca                                             ; $4617: $0f
	jr   jr_00e_467a                                 ; $4618: $18 $60

	inc  bc                                          ; $461a: $03

jr_00e_461b:
	rrca                                             ; $461b: $0f
	jr   nz, jr_00e_4686                             ; $461c: $20 $68

	dec  bc                                          ; $461e: $0b
	rrca                                             ; $461f: $0f
	jr   nz, jr_00e_4682                             ; $4620: $20 $60

	ld   a, [bc]                                     ; $4622: $0a
	rrca                                             ; $4623: $0f
	jr   nz, jr_00e_467e                             ; $4624: $20 $58

	add  hl, bc                                      ; $4626: $09
	rrca                                             ; $4627: $0f
	jr   nz, jr_00e_467a                             ; $4628: $20 $50

	ld   [$200f], sp                                 ; $462a: $08 $0f $20
	ld   c, b                                        ; $462d: $48
	rlca                                             ; $462e: $07
	rrca                                             ; $462f: $0f
	jr   z, jr_00e_467a                              ; $4630: $28 $48

	dec  c                                           ; $4632: $0d
	rrca                                             ; $4633: $0f
	ld   a, [hl-]                                    ; $4634: $3a
	jr   c, jr_00e_464e                              ; $4635: $38 $17

	rrca                                             ; $4637: $0f
	ccf                                              ; $4638: $3f
	ld   h, b                                        ; $4639: $60
	inc  e                                           ; $463a: $1c
	rrca                                             ; $463b: $0f
	dec  a                                           ; $463c: $3d
	ld   e, b                                        ; $463d: $58
	dec  de                                          ; $463e: $1b
	rrca                                             ; $463f: $0f
	dec  sp                                          ; $4640: $3b
	ld   l, b                                        ; $4641: $68
	dec  e                                           ; $4642: $1d
	rrca                                             ; $4643: $0f
	dec  sp                                          ; $4644: $3b
	ld   d, b                                        ; $4645: $50
	ld   a, [de]                                     ; $4646: $1a
	rrca                                             ; $4647: $0f
	dec  sp                                          ; $4648: $3b
	ld   c, b                                        ; $4649: $48
	add  hl, de                                      ; $464a: $19
	rrca                                             ; $464b: $0f
	dec  sp                                          ; $464c: $3b
	ld   b, b                                        ; $464d: $40

jr_00e_464e:
	jr   jr_00e_465f                                 ; $464e: $18 $0f

	ld   c, e                                        ; $4650: $4b
	ld   [$0f14], sp                                 ; $4651: $08 $14 $0f
	jr   c, jr_00e_467e                              ; $4654: $38 $28

	db   $10                                         ; $4656: $10
	rrca                                             ; $4657: $0f
	inc  a                                           ; $4658: $3c
	jr   nz, jr_00e_466e                             ; $4659: $20 $13

	rrca                                             ; $465b: $0f
	ccf                                              ; $465c: $3f
	jr   jr_00e_4671                                 ; $465d: $18 $12

jr_00e_465f:
	rrca                                             ; $465f: $0f
	ld   b, a                                        ; $4660: $47
	jr   jr_00e_4679                                 ; $4661: $18 $16

	rrca                                             ; $4663: $0f
	ld   b, e                                        ; $4664: $43
	db   $10                                         ; $4665: $10
	ld   de, $4b0f                                   ; $4666: $11 $0f $4b
	db   $10                                         ; $4669: $10
	dec  d                                           ; $466a: $15
	rra                                              ; $466b: $1f
	inc  a                                           ; $466c: $3c
	inc  a                                           ; $466d: $3c

jr_00e_466e:
	dec  l                                           ; $466e: $2d
	rrca                                             ; $466f: $0f
	inc  a                                           ; $4670: $3c

jr_00e_4671:
	inc  [hl]                                        ; $4671: $34
	inc  l                                           ; $4672: $2c
	rrca                                             ; $4673: $0f
	inc  a                                           ; $4674: $3c
	inc  l                                           ; $4675: $2c
	dec  hl                                          ; $4676: $2b
	rrca                                             ; $4677: $0f
	inc  a                                           ; $4678: $3c

jr_00e_4679:
	inc  h                                           ; $4679: $24

jr_00e_467a:
	ld   a, [hl+]                                    ; $467a: $2a
	rrca                                             ; $467b: $0f
	inc  [hl]                                        ; $467c: $34
	inc  a                                           ; $467d: $3c

jr_00e_467e:
	jr   z, jr_00e_468f                              ; $467e: $28 $0f

	inc  [hl]                                        ; $4680: $34
	inc  l                                           ; $4681: $2c

jr_00e_4682:
	daa                                              ; $4682: $27
	rrca                                             ; $4683: $0f
	inc  [hl]                                        ; $4684: $34
	inc  h                                           ; $4685: $24

jr_00e_4686:
	ld   h, $0f                                      ; $4686: $26 $0f
	inc  l                                           ; $4688: $2c
	inc  a                                           ; $4689: $3c
	dec  h                                           ; $468a: $25
	rrca                                             ; $468b: $0f
	inc  l                                           ; $468c: $2c
	inc  [hl]                                        ; $468d: $34
	inc  h                                           ; $468e: $24

jr_00e_468f:
	rrca                                             ; $468f: $0f
	inc  l                                           ; $4690: $2c
	inc  l                                           ; $4691: $2c
	inc  hl                                          ; $4692: $23
	rrca                                             ; $4693: $0f
	inc  l                                           ; $4694: $2c
	inc  h                                           ; $4695: $24
	ld   [hl+], a                                    ; $4696: $22
	rrca                                             ; $4697: $0f
	inc  h                                           ; $4698: $24
	inc  a                                           ; $4699: $3c
	ld   hl, $240f                                   ; $469a: $21 $0f $24
	inc  [hl]                                        ; $469d: $34
	jr   nz, jr_00e_46af                             ; $469e: $20 $0f

	inc  h                                           ; $46a0: $24
	inc  l                                           ; $46a1: $2c
	rra                                              ; $46a2: $1f
	rrca                                             ; $46a3: $0f
	inc  h                                           ; $46a4: $24
	inc  h                                           ; $46a5: $24
	ld   e, $0f                                      ; $46a6: $1e $0f
	inc  l                                           ; $46a8: $2c
	ld   b, h                                        ; $46a9: $44
	add  hl, hl                                      ; $46aa: $29
	rra                                              ; $46ab: $1f
	ld   c, [hl]                                     ; $46ac: $4e
	ld   [bc], a                                     ; $46ad: $02
	ld   c, e                                        ; $46ae: $4b

jr_00e_46af:
	rrca                                             ; $46af: $0f
	ld   c, [hl]                                     ; $46b0: $4e
	ld   a, [$0f4a]                                  ; $46b1: $fa $4a $0f
	ld   b, [hl]                                     ; $46b4: $46
	ld   [bc], a                                     ; $46b5: $02
	ld   c, c                                        ; $46b6: $49
	rrca                                             ; $46b7: $0f
	ld   b, [hl]                                     ; $46b8: $46
	ld   a, [$0f48]                                  ; $46b9: $fa $48 $0f
	daa                                              ; $46bc: $27
	rrca                                             ; $46bd: $0f
	add  hl, hl                                      ; $46be: $29
	rrca                                             ; $46bf: $0f
	ld   l, $07                                      ; $46c0: $2e $07
	ld   c, l                                        ; $46c2: $4d
	rrca                                             ; $46c3: $0f
	ld   h, $07                                      ; $46c4: $26 $07
	ld   c, h                                        ; $46c6: $4c
	rrca                                             ; $46c7: $0f
	ld   [hl], $50                                   ; $46c8: $36 $50
	ld   b, a                                        ; $46ca: $47
	rrca                                             ; $46cb: $0f
	ld   a, $50                                      ; $46cc: $3e $50
	ld   b, [hl]                                     ; $46ce: $46
	rrca                                             ; $46cf: $0f
	ld   b, [hl]                                     ; $46d0: $46
	ld   d, b                                        ; $46d1: $50
	ld   b, l                                        ; $46d2: $45
	rrca                                             ; $46d3: $0f
	ld   b, [hl]                                     ; $46d4: $46
	ld   c, b                                        ; $46d5: $48
	ld   b, h                                        ; $46d6: $44
	rrca                                             ; $46d7: $0f
	ld   d, [hl]                                     ; $46d8: $56
	ld   b, b                                        ; $46d9: $40
	ld   b, e                                        ; $46da: $43
	rrca                                             ; $46db: $0f
	ld   c, [hl]                                     ; $46dc: $4e
	ld   c, b                                        ; $46dd: $48
	ld   b, d                                        ; $46de: $42
	rrca                                             ; $46df: $0f
	ld   c, [hl]                                     ; $46e0: $4e
	ld   b, b                                        ; $46e1: $40
	ld   b, c                                        ; $46e2: $41
	rrca                                             ; $46e3: $0f
	ld   d, c                                        ; $46e4: $51
	jr   c, jr_00e_4727                              ; $46e5: $38 $40

	rrca                                             ; $46e7: $0f
	ld   d, c                                        ; $46e8: $51
	jr   nc, @+$41                                   ; $46e9: $30 $3f

	rrca                                             ; $46eb: $0f
	ld   d, b                                        ; $46ec: $50
	jr   z, jr_00e_472d                              ; $46ed: $28 $3e

	rrca                                             ; $46ef: $0f
	ld   c, h                                        ; $46f0: $4c
	jr   nz, jr_00e_4730                             ; $46f1: $20 $3d

	rrca                                             ; $46f3: $0f
	ld   c, b                                        ; $46f4: $48
	db $28, $3c

	rrca                                             ; $46f7: $0f
	ld   b, h                                        ; $46f8: $44
	db $20, $3b

	rrca                                             ; $46fb: $0f
	ld   b, h                                        ; $46fc: $44
	jr   @+$3c                                       ; $46fd: $18 $3a

	rrca                                             ; $46ff: $0f
	inc  a                                           ; $4700: $3c
	jr   @+$3b                                       ; $4701: $18 $39

	rrca                                             ; $4703: $0f
	inc  [hl]                                        ; $4704: $34
	db $18, $38

	rrca                                             ; $4707: $0f
	inc  h                                           ; $4708: $24
	db $18, $34

	rrca                                             ; $470b: $0f
	inc  l                                           ; $470c: $2c
	db $18, $37

	rrca                                             ; $470f: $0f
	inc  h                                           ; $4710: $24
	ld   d, b                                        ; $4711: $50
	ld   [hl], $0f                                   ; $4712: $36 $0f
	inc  e                                           ; $4714: $1c
	ld   d, b                                        ; $4715: $50
	dec  [hl]                                        ; $4716: $35
	rrca                                             ; $4717: $0f
	inc  e                                           ; $4718: $1c
	jr   nz, @+$35                                   ; $4719: $20 $33

	rrca                                             ; $471b: $0f
	inc  e                                           ; $471c: $1c
	db $18, $32

	rrca                                             ; $471f: $0f
	inc  d                                           ; $4720: $14
	jr   c, @+$33                                    ; $4721: $38 $31

	rrca                                             ; $4723: $0f
	inc  d                                           ; $4724: $14
	db $30, $30

jr_00e_4727:
	rrca                                             ; $4727: $0f
	inc  d                                           ; $4728: $14
	db $28, $2f

	rrca                                             ; $472b: $0f
	inc  d                                           ; $472c: $14

jr_00e_472d:
	db $20, $2e

	rra                                              ; $472f: $1f

jr_00e_4730:


Data_0e_4730: ; new game - white
if def(VWF)
	db $10, $08, $00, $08
	db $10, $10, $0e, $08
	db $10, $18, $10, $08
	db $10, $20, $12, $08
	db $10, $28, $14, $08
	db $10, $30, $16, $08
	db $10, $38, $18, $08
	db $10, $40, $00, $38
else
	db $10, $38, $0c, $08
	db $10, $30, $0a, $08
	db $10, $28, $08, $08
	db $10, $20, $06, $08
	db $10, $18, $04, $08
	db $10, $10, $02, $08
	db $10, $40, $00, $28
	db $10, $08, $00, $18
endc


Data_0e_4750: ; continue
if def(VWF)
	db $10, $08, $00, $08
	db $10, $10, $1a, $08
	db $10, $18, $1c, $08
	db $10, $20, $1e, $08
	db $10, $28, $20, $08
	db $10, $30, $22, $08
	db $10, $38, $24, $08
	db $10, $40, $00, $38
else
	db $10, $38, $0c, $08
	db $10, $30, $0a, $08
	db $10, $40, $00, $28
	db $10, $08, $00, $08
	db $10, $28, $14, $08
	db $10, $20, $12, $08
	db $10, $18, $10, $08
	db $10, $10, $0e, $18
endc


Data_0e_4770: ; settings
if def(VWF)
	db $10, $08, $00, $08
	db $10, $10, $26, $08
	db $10, $18, $28, $08
	db $10, $20, $2a, $08
	db $10, $28, $2c, $08
	db $10, $30, $2e, $08
	db $10, $38, $30, $08
	db $10, $40, $00, $38
else
	db $10, $38, $22, $28
	db $10, $40, $00, $28
	db $10, $28, $36, $08
	db $10, $20, $36, $08
	db $10, $30, $18, $08
	db $10, $18, $16, $08
	db $10, $08, $00, $08
	db $10, $10, $22, $18
endc
	
	
Data_0e_4790: ; prologue
if def(VWF)
	db $10, $08, $00, $08
	db $10, $10, $02, $08
	db $10, $18, $04, $08
	db $10, $20, $06, $08
	db $10, $28, $08, $08
	db $10, $30, $0a, $08
	db $10, $38, $0c, $08
	db $10, $40, $00, $38
else
	db $10, $10, $4c, $08
	db $10, $38, $4e, $08
	db $10, $40, $00, $28
	db $10, $30, $2a, $08
	db $10, $28, $28, $08
	db $10, $20, $26, $08
	db $10, $18, $24, $08
	db $10, $08, $00, $18
endc
	
	
Data_0e_47b0: ; romando shop
if def(VWF)
	db $10, $08, $00, $08
	db $10, $10, $32, $08
	db $10, $18, $34, $08
	db $10, $20, $36, $08
	db $10, $28, $38, $08
	db $10, $30, $3a, $08
	db $10, $38, $3c, $08
	db $10, $40, $00, $38
else
	db $10, $38, $22, $28
	db $10, $40, $00, $28
	db $10, $08, $00, $08
	db $10, $30, $32, $08
	db $10, $28, $30, $08
	db $10, $20, $2e, $08
	db $10, $18, $2c, $08
	db $10, $10, $22, $18
endc


Data_0e_47d0: ; treasure chest
if def(VWF)
	db $10, $08, $00, $08
	db $10, $10, $3e, $08
	db $10, $18, $40, $08
	db $10, $20, $42, $08
	db $10, $28, $44, $08
	db $10, $30, $46, $08
	db $10, $38, $48, $08
	db $10, $40, $00, $38
else
	db $10, $30, $4a, $08
	db $10, $28, $36, $08
	db $10, $20, $36, $08
	db $10, $18, $34, $08
	db $10, $38, $22, $28
	db $10, $40, $00, $28
	db $10, $08, $00, $08
	db $10, $10, $22, $18
endc


Data_0e_47f0: ; minigames
if def(VWF)
	db $10, $08, $00, $08
	db $10, $10, $4a, $08
	db $10, $18, $4c, $08
	db $10, $20, $4e, $08
	db $10, $28, $50, $08
	db $10, $30, $52, $08
	db $10, $38, $54, $08
	db $10, $40, $00, $38
else
	db $10, $40, $00, $28
	db $10, $08, $00, $08
	db $10, $38, $42, $08
	db $10, $30, $40, $08
	db $10, $28, $3e, $08
	db $10, $20, $3c, $08
	db $10, $18, $3a, $08
	db $10, $10, $38, $18
endc


Data_0e_4810: ; kinematron
if def(VWF)
	db $10, $08, $00, $08
	db $10, $10, $56, $08
	db $10, $18, $58, $08
	db $10, $20, $5a, $08
	db $10, $28, $5c, $08
	db $10, $30, $5e, $08
	db $10, $38, $60, $08
	db $10, $40, $00, $38
else
	db $10, $30, $46, $08
	db $10, $18, $44, $08
	db $10, $38, $22, $28
	db $10, $40, $00, $28
	db $10, $28, $36, $08
	db $10, $20, $36, $08
	db $10, $08, $00, $08
	db $10, $10, $22, $18
endc
	
	
Data_0e_4830: ; new game - red
if def(VWF)
	db $10, $08, $00, $09
	db $10, $10, $0e, $09
	db $10, $18, $10, $09
	db $10, $20, $12, $09
	db $10, $28, $14, $09
	db $10, $30, $16, $09
	db $10, $38, $18, $09
	db $10, $40, $00, $39
else
	db $10, $38, $0c, $09
	db $10, $30, $0a, $09
	db $10, $28, $08, $09
	db $10, $20, $06, $09
	db $10, $18, $04, $09
	db $10, $10, $02, $09
	db $10, $40, $00, $29
	db $10, $08, $00, $19
endc


Data_0e_4850: ; continue
if def(VWF)
	db $10, $08, $00, $09
	db $10, $10, $1a, $09
	db $10, $18, $1c, $09
	db $10, $20, $1e, $09
	db $10, $28, $20, $09
	db $10, $30, $22, $09
	db $10, $38, $24, $09
	db $10, $40, $00, $39
else
	db $10, $38, $0c, $09
	db $10, $30, $0a, $09
	db $10, $40, $00, $29
	db $10, $08, $00, $09
	db $10, $28, $14, $09
	db $10, $20, $12, $09
	db $10, $18, $10, $09
	db $10, $10, $0e, $19
endc


Data_0e_4870: ; settings
if def(VWF)
	db $10, $08, $00, $09
	db $10, $10, $26, $09
	db $10, $18, $28, $09
	db $10, $20, $2a, $09
	db $10, $28, $2c, $09
	db $10, $30, $2e, $09
	db $10, $38, $30, $09
	db $10, $40, $00, $39
else
	db $10, $38, $22, $29
	db $10, $40, $00, $29
	db $10, $28, $36, $09
	db $10, $20, $36, $09
	db $10, $30, $18, $09
	db $10, $18, $16, $09
	db $10, $08, $00, $09
	db $10, $10, $22, $19
endc


Data_0e_4890: ; prologue
if def(VWF)
	db $10, $08, $00, $09
	db $10, $10, $02, $09
	db $10, $18, $04, $09
	db $10, $20, $06, $09
	db $10, $28, $08, $09
	db $10, $30, $0a, $09
	db $10, $38, $0c, $09
	db $10, $40, $00, $39
else
	db $10, $10, $4c, $09
	db $10, $38, $4e, $09
	db $10, $40, $00, $29
	db $10, $30, $2a, $09
	db $10, $28, $28, $09
	db $10, $20, $26, $09
	db $10, $18, $24, $09
	db $10, $08, $00, $19
endc


Data_0e_48b0: ; romando shop
if def(VWF)
	db $10, $08, $00, $09
	db $10, $10, $32, $09
	db $10, $18, $34, $09
	db $10, $20, $36, $09
	db $10, $28, $38, $09
	db $10, $30, $3a, $09
	db $10, $38, $3c, $09
	db $10, $40, $00, $39
else
	db $10, $38, $22, $29
	db $10, $40, $00, $29
	db $10, $08, $00, $09
	db $10, $30, $32, $09
	db $10, $28, $30, $09
	db $10, $20, $2e, $09
	db $10, $18, $2c, $09
	db $10, $10, $22, $19
endc


Data_0e_48d0: ; treasure chest
if def(VWF)
	db $10, $08, $00, $09
	db $10, $10, $3e, $09
	db $10, $18, $40, $09
	db $10, $20, $42, $09
	db $10, $28, $44, $09
	db $10, $30, $46, $09
	db $10, $38, $48, $09
	db $10, $40, $00, $39
else
	db $10, $30, $4a, $09
	db $10, $28, $36, $09
	db $10, $20, $36, $09
	db $10, $18, $34, $09
	db $10, $38, $22, $29
	db $10, $40, $00, $29
	db $10, $08, $00, $09
	db $10, $10, $22, $19
endc


Data_0e_48f0: ; minigames
if def(VWF)
	db $10, $08, $00, $09
	db $10, $10, $4a, $09
	db $10, $18, $4c, $09
	db $10, $20, $4e, $09
	db $10, $28, $50, $09
	db $10, $30, $52, $09
	db $10, $38, $54, $09
	db $10, $40, $00, $39
else
	db $10, $40, $00, $29
	db $10, $08, $00, $09
	db $10, $38, $42, $09
	db $10, $30, $40, $09
	db $10, $28, $3e, $09
	db $10, $20, $3c, $09
	db $10, $18, $3a, $09
	db $10, $10, $38, $19
endc


Data_0e_4910: ; kinematron
if def(VWF)
	db $10, $08, $00, $09
	db $10, $10, $56, $09
	db $10, $18, $58, $09
	db $10, $20, $5a, $09
	db $10, $28, $5c, $09
	db $10, $30, $5e, $09
	db $10, $38, $60, $09
	db $10, $40, $00, $39
else
	db $10, $30, $46, $09
	db $10, $18, $44, $09
	db $10, $38, $22, $29
	db $10, $40, $00, $29
	db $10, $28, $36, $09
	db $10, $20, $36, $09
	db $10, $08, $00, $09
	db $10, $10, $22, $19
endc


if def(VWF)
Data_0e_4930:
	db $10, $08, $62, $18


Data_0e_4934:
	db $10, $09, $62, $18


Data_0e_4938:
	db $10, $0a, $62, $18


Data_0e_493c:
	db $10, $0b, $62, $18


Data_0e_4940:
	db $10, $08, $62, $38


Data_0e_4944:
	db $10, $07, $62, $38


Data_0e_4948:
	db $10, $06, $62, $38


Data_0e_494c:
	db $10, $05, $62, $38
else
Data_0e_4930:
	db $10, $08, $48, $18


Data_0e_4934:
	db $10, $09, $48, $18


Data_0e_4938:
	db $10, $0a, $48, $18


Data_0e_493c:
	db $10, $0b, $48, $18


Data_0e_4940:
	db $10, $08, $48, $38


Data_0e_4944:
	db $10, $07, $48, $38


Data_0e_4948:
	db $10, $06, $48, $38


Data_0e_494c:
	db $10, $05, $48, $38
endc



	db $18 ; 4950

jr_00e_4951:
	ld   hl, sp+$02                                  ; $4951: $f8 $02
	inc  b                                           ; $4953: $04
	nop                                              ; $4954: $00
	nop                                              ; $4955: $00
	ld   [de], a                                     ; $4956: $12
	ld   bc, $0018                                   ; $4957: $01 $18 $00
	stop                                             ; $495a: $10 $00
	ld   [$0400], sp                                 ; $495c: $08 $00 $04
	nop                                              ; $495f: $00
	db   $10                                         ; $4960: $10
	ldh  [rAUD1HIGH], a                              ; $4961: $e0 $14
	ld   bc, $d818                                   ; $4963: $01 $18 $d8
	ld   c, $01                                      ; $4966: $0e $01
	db $18, $d0

	inc  c                                           ; $496a: $0c
	ld   bc, $c018                                   ; $496b: $01 $18 $c0
	ld   a, [bc]                                     ; $496e: $0a
	ld   bc, $f11b                                   ; $496f: $01 $1b $f1
	inc  e                                           ; $4972: $1c
	ld   [bc], a                                     ; $4973: $02
	dec  de                                          ; $4974: $1b
	jp   hl                                          ; $4975: $e9


	ld   a, [de]                                     ; $4976: $1a
	ld   [bc], a                                     ; $4977: $02
	dec  de                                          ; $4978: $1b
	pop  hl                                          ; $4979: $e1
	jr   jr_00e_497e                                 ; $497a: $18 $02

	dec  de                                          ; $497c: $1b
	reti                                             ; $497d: $d9


jr_00e_497e:
	ld   d, $02                                      ; $497e: $16 $02
	ld   c, $19                                      ; $4980: $0e $19
	jr   nz, jr_00e_4986                             ; $4982: $20 $02

	ld   c, $11                                      ; $4984: $0e $11

jr_00e_4986:
	ld   e, $02                                      ; $4986: $1e $02
	ld   [$00f8], sp                                 ; $4988: $08 $f8 $00
	db   $10                                         ; $498b: $10
	ld   [$3208], sp                                 ; $498c: $08 $08 $32
	inc  bc                                          ; $498f: $03
	ld   [rROMB1], sp                                 ; $4990: $08 $00 $30
	inc  de                                          ; $4993: $13
	ld   [$3608], sp                                 ; $4994: $08 $08 $36
	inc  bc                                          ; $4997: $03
	ld   [$3400], sp                                 ; $4998: $08 $00 $34
	inc  de                                          ; $499b: $13
	ld   [$3a08], sp                                 ; $499c: $08 $08 $3a
	inc  bc                                          ; $499f: $03
	ld   [$3800], sp                                 ; $49a0: $08 $00 $38
	inc  de                                          ; $49a3: $13
	ld   [$3e08], sp                                 ; $49a4: $08 $08 $3e
	inc  bc                                          ; $49a7: $03
	ld   [$3c00], sp                                 ; $49a8: $08 $00 $3c
	inc  de                                          ; $49ab: $13
	ld   [$4208], sp                                 ; $49ac: $08 $08 $42
	inc  bc                                          ; $49af: $03
	ld   [$4000], sp                                 ; $49b0: $08 $00 $40
	inc  de                                          ; $49b3: $13
	ld   [$4608], sp                                 ; $49b4: $08 $08 $46
	inc  bc                                          ; $49b7: $03
	ld   [$4400], sp                                 ; $49b8: $08 $00 $44
	inc  de                                          ; $49bb: $13
	ld   [$4a08], sp                                 ; $49bc: $08 $08 $4a
	inc  bc                                          ; $49bf: $03
	ld   [$4800], sp                                 ; $49c0: $08 $00 $48
	inc  de                                          ; $49c3: $13
	ld   [$4e08], sp                                 ; $49c4: $08 $08 $4e
	inc  bc                                          ; $49c7: $03
	ld   [$4c00], sp                                 ; $49c8: $08 $00 $4c
	inc  de                                          ; $49cb: $13
	ld   [$5208], sp                                 ; $49cc: $08 $08 $52
	inc  bc                                          ; $49cf: $03
	ld   [$5000], sp                                 ; $49d0: $08 $00 $50
	inc  de                                          ; $49d3: $13
	ld   [$5608], sp                                 ; $49d4: $08 $08 $56
	inc  bc                                          ; $49d7: $03
	ld   [$5400], sp                                 ; $49d8: $08 $00 $54
	inc  de                                          ; $49db: $13
	ld   [$5a08], sp                                 ; $49dc: $08 $08 $5a
	dec  b                                           ; $49df: $05
	ld   [$5800], sp                                 ; $49e0: $08 $00 $58
	dec  d                                           ; $49e3: $15
	ld   [$5e08], sp                                 ; $49e4: $08 $08 $5e
	inc  bc                                          ; $49e7: $03
	ld   [$5c00], sp                                 ; $49e8: $08 $00 $5c
	inc  de                                          ; $49eb: $13
	ld   [$6208], sp                                 ; $49ec: $08 $08 $62
	inc  bc                                          ; $49ef: $03
	ld   [$6000], sp                                 ; $49f0: $08 $00 $60
	inc  de                                          ; $49f3: $13
	ld   [$2608], sp                                 ; $49f4: $08 $08 $26
	inc  bc                                          ; $49f7: $03
	ld   [$6400], sp                                 ; $49f8: $08 $00 $64
	inc  de                                          ; $49fb: $13
	ld   [$2a08], sp                                 ; $49fc: $08 $08 $2a
	inc  bc                                          ; $49ff: $03
	ld   [$2800], sp                                 ; $4a00: $08 $00 $28
	inc  de                                          ; $4a03: $13
	ld   [$2e08], sp                                 ; $4a04: $08 $08 $2e
	inc  bc                                          ; $4a07: $03
	ld   [$2c00], sp                                 ; $4a08: $08 $00 $2c
	inc  de                                          ; $4a0b: $13
	ld   [$2408], sp                                 ; $4a0c: $08 $08 $24
	ld   b, $08                                      ; $4a0f: $06 $08
	nop                                              ; $4a11: $00
	ld   [hl+], a                                    ; $4a12: $22
	ld   d, $10                                      ; $4a13: $16 $10
	ld   [$1482], sp                                 ; $4a15: $08 $82 $14
	db   $10                                         ; $4a18: $10
	ld   [$1484], sp                                 ; $4a19: $08 $84 $14
	db   $10                                         ; $4a1c: $10
	ld   [$1486], sp                                 ; $4a1d: $08 $86 $14


SpriteGroup1_Idx8ch:
	db $1f, $17, $3c, $07
	db $1f, $0f, $02, $07
	db $1f, $07, $3a, $07
	db $0f, $17, $30, $07
	db $0f, $0f, $02, $07
	db $0f, $07, $00, $17


SpriteGroup1_Idx8dh:
	db $1f, $17, $3c, $01
	db $1f, $0f, $02, $01
	db $1f, $07, $3a, $01
	db $0f, $17, $30, $01
	db $0f, $0f, $02, $01
	db $0f, $07, $00, $11
	
	
SpriteGroup1_Idx8eh:
	db $1f, $17, $3c, $06
	db $1f, $0f, $02, $06
	db $1f, $07, $3a, $06
	db $0f, $17, $30, $06
	db $0f, $0f, $02, $06
	db $0f, $07, $00, $16
	
	
SpriteGroup1_Idx8fh_ScheduleConfirm:
	db $20, $10, $38, $04
	db $20, $08, $36, $04
	db $10, $10, $34, $04
	db $10, $08, $32, $14



	rra                                              ; $4a78: $1f
	rla                                              ; $4a79: $17
	inc  a                                           ; $4a7a: $3c
	dec  b                                           ; $4a7b: $05
	rra                                              ; $4a7c: $1f
	rrca                                             ; $4a7d: $0f
	ld   [bc], a                                     ; $4a7e: $02
	dec  b                                           ; $4a7f: $05
	rra                                              ; $4a80: $1f
	rlca                                             ; $4a81: $07
	ld   a, [hl-]                                    ; $4a82: $3a
	dec  b                                           ; $4a83: $05
	rrca                                             ; $4a84: $0f
	rla                                              ; $4a85: $17
	jr   nc, jr_00e_4a8d                             ; $4a86: $30 $05

	rrca                                             ; $4a88: $0f
	rrca                                             ; $4a89: $0f
	ld   [bc], a                                     ; $4a8a: $02
	dec  b                                           ; $4a8b: $05
	rrca                                             ; $4a8c: $0f

jr_00e_4a8d:
	rlca                                             ; $4a8d: $07
	nop                                              ; $4a8e: $00
	dec  d                                           ; $4a8f: $15
	db   $10                                         ; $4a90: $10
	db   $10                                         ; $4a91: $10
	ld   [$1001], sp                                 ; $4a92: $08 $01 $10
	ld   [$1104], sp                                 ; $4a95: $08 $04 $11
	db   $10                                         ; $4a98: $10
	ld   [$0406], sp                                 ; $4a99: $08 $06 $04
	db   $10                                         ; $4a9c: $10
	db   $10                                         ; $4a9d: $10
	ld   a, $14                                      ; $4a9e: $3e $14
	jr   @+$0a                                       ; $4aa0: $18 $08

	ld   a, [bc]                                     ; $4aa2: $0a
	ld   h, e                                        ; $4aa3: $63
	jr   jr_00e_4aa6                                 ; $4aa4: $18 $00

jr_00e_4aa6:
	ld   a, [bc]                                     ; $4aa6: $0a
	inc  de                                          ; $4aa7: $13
	inc  d                                           ; $4aa8: $14
	ld   hl, sp+$2e                                  ; $4aa9: $f8 $2e
	inc  bc                                          ; $4aab: $03
	inc  d                                           ; $4aac: $14
	db   $10                                         ; $4aad: $10
	inc  l                                           ; $4aae: $2c
	inc  hl                                          ; $4aaf: $23
	inc  d                                           ; $4ab0: $14
	ld   [$230c], sp                                 ; $4ab1: $08 $0c $23
	inc  d                                           ; $4ab4: $14
	nop                                              ; $4ab5: $00
	inc  c                                           ; $4ab6: $0c
	inc  bc                                          ; $4ab7: $03
	inc  e                                           ; $4ab8: $1c
	ld   hl, sp+$2c                                  ; $4ab9: $f8 $2c
	ld   b, e                                        ; $4abb: $43
	inc  e                                           ; $4abc: $1c
	db   $10                                         ; $4abd: $10
	ld   l, $63                                      ; $4abe: $2e $63
	inc  e                                           ; $4ac0: $1c
	ld   [$630c], sp                                 ; $4ac1: $08 $0c $63
	inc  e                                           ; $4ac4: $1c
	nop                                              ; $4ac5: $00
	inc  c                                           ; $4ac6: $0c
	ld   d, e                                        ; $4ac7: $53
	db   $10                                         ; $4ac8: $10
	jr   nz, jr_00e_4ae7                             ; $4ac9: $20 $1c

	inc  bc                                          ; $4acb: $03
	db   $10                                         ; $4acc: $10
	db $18, $1a

	inc  bc                                          ; $4acf: $03
	db   $10                                         ; $4ad0: $10
	db   $10                                         ; $4ad1: $10
	jr   @+$05                                       ; $4ad2: $18 $03

	db   $10                                         ; $4ad4: $10
	ld   [$0316], sp                                 ; $4ad5: $08 $16 $03
	stop                                             ; $4ad8: $10 $00
	inc  d                                           ; $4ada: $14
	inc  bc                                          ; $4adb: $03
	db   $10                                         ; $4adc: $10
	ld   hl, sp+$12                                  ; $4add: $f8 $12
	inc  bc                                          ; $4adf: $03
	db   $10                                         ; $4ae0: $10
	ldh  a, [rAUD1SWEEP]                             ; $4ae1: $f0 $10
	inc  bc                                          ; $4ae3: $03
	db   $10                                         ; $4ae4: $10
	add  sp, $0e                                     ; $4ae5: $e8 $0e

jr_00e_4ae7:
	inc  de                                          ; $4ae7: $13


SpriteGroup1_Idx96h_SchedulePopupText:
	db $10, $20, $1c, $03
	db $10, $18, $1a, $03
	db $10, $10, $18, $03
	db $10, $08, $16, $03
	db $10, $00, $14, $03
	db $10, $f8, $12, $03
	db $10, $f0, $10, $03
	db $10, $e8, $0e, $03
	db $20, $20, $26, $03
if def(VWF)
	db $20, $18, $42, $03
	db $20, $10, $24, $03
	db $20, $08, $22, $03
else
	db $20, $18, $24, $03
	db $20, $10, $22, $03
	db $20, $08, $20, $03
endc
	db $20, $00, $2a, $03
	db $20, $e8, $2c, $43
	db $20, $f8, $20, $03
	db $20, $f0, $1e, $13


SpriteGroup1_Idx97h:
	db $10, $20, $1c, $03
	db $10, $18, $1a, $03
	db $10, $10, $18, $03
	db $10, $08, $16, $03
	db $10, $00, $14, $03
	db $10, $f8, $12, $03
	db $10, $f0, $10, $03
	db $10, $e8, $0e, $03
	db $20, $00, $0c, $43
	db $20, $e8, $28, $03
	db $20, $20, $26, $03
if def(VWF)
	db $20, $18, $42, $03
	db $20, $10, $24, $03
	db $20, $08, $22, $03
else
	db $20, $18, $24, $03
	db $20, $10, $22, $03
	db $20, $08, $20, $03
endc
	db $20, $f8, $20, $03
	db $20, $f0, $1e, $13


SpriteGroup1_Idx98h:
	db $10, $20, $1c, $03
	db $10, $18, $1a, $03
	db $10, $10, $18, $03
	db $10, $08, $16, $03
	db $10, $00, $14, $03
	db $10, $f8, $12, $03
	db $10, $f0, $10, $03
	db $10, $e8, $0e, $03
	db $20, $e8, $2c, $43
	db $20, $00, $0c, $43
	db $20, $20, $26, $03
if def(VWF)
	db $20, $18, $42, $03
	db $20, $10, $24, $03
	db $20, $08, $22, $03
else
	db $20, $18, $24, $03
	db $20, $10, $22, $03
	db $20, $08, $20, $03
endc
	db $20, $f8, $20, $03
	db $20, $f0, $1e, $13


SpriteGroup1_Idx99h:
	inc  de                                          ; $4ba8: $13
	inc  de                                          ; $4ba9: $13

jr_00e_4baa:
	ld   b, b                                        ; $4baa: $40
	ld   h, c                                        ; $4bab: $61
	inc  de                                          ; $4bac: $13
	ld   b, $40                                      ; $4bad: $06 $40
	ld   b, c                                        ; $4baf: $41
	ld   c, $13                                      ; $4bb0: $0e $13

jr_00e_4bb2:
	ld   b, b                                        ; $4bb2: $40
	ld   hl, $060e                                   ; $4bb3: $21 $0e $06
	ld   b, b                                        ; $4bb6: $40
	ld   de, $1414                                   ; $4bb7: $11 $14 $14
	ld   b, b                                        ; $4bba: $40
	ld   h, c                                        ; $4bbb: $61
	inc  d                                           ; $4bbc: $14
	dec  b                                           ; $4bbd: $05
	ld   b, b                                        ; $4bbe: $40
	ld   b, c                                        ; $4bbf: $41
	dec  c                                           ; $4bc0: $0d
	inc  d                                           ; $4bc1: $14
	ld   b, b                                        ; $4bc2: $40
	ld   hl, $050d                                   ; $4bc3: $21 $0d $05
	ld   b, b                                        ; $4bc6: $40
	ld   de, $1515                                   ; $4bc7: $11 $15 $15
	ld   b, b                                        ; $4bca: $40
	ld   h, c                                        ; $4bcb: $61
	dec  d                                           ; $4bcc: $15
	inc  b                                           ; $4bcd: $04
	ld   b, b                                        ; $4bce: $40
	ld   b, c                                        ; $4bcf: $41
	inc  c                                           ; $4bd0: $0c
	dec  d                                           ; $4bd1: $15
	ld   b, b                                        ; $4bd2: $40
	ld   hl, $040c                                   ; $4bd3: $21 $0c $04
	ld   b, b                                        ; $4bd6: $40
	db $11 
	
	
SpriteGroup1_Idx9ch_GameOverLeftKanji1:
	db $30, $29, $14, $03
	db $30, $20, $18, $03
	db $30, $18, $16, $03
	db $30, $08, $14, $03
	db $20, $28, $12, $03
	db $20, $20, $10, $03
	db $20, $18, $0e, $03
	db $20, $10, $0c, $03
	db $20, $08, $0a, $03
	db $10, $28, $08, $03
	db $10, $20, $06, $03
	db $10, $18, $04, $03
	db $10, $10, $02, $03
	db $10, $08, $00, $13


SpriteGroup1_Idx9dh:
	jr   c, jr_00e_4c1a                              ; $4c10: $38 $08

jr_00e_4c12:
	ld   [hl], d                                     ; $4c12: $72
	inc  bc                                          ; $4c13: $03
	jr   nc, jr_00e_4c1e                             ; $4c14: $30 $08

	ld   l, $03                                      ; $4c16: $2e $03
	jr   nc, @+$2e                                   ; $4c18: $30 $2c

jr_00e_4c1a:
	ld   [hl], d                                     ; $4c1a: $72
	inc  bc                                          ; $4c1b: $03
	jr   nc, @+$2a                                   ; $4c1c: $30 $28

jr_00e_4c1e:
	inc  [hl]                                        ; $4c1e: $34
	inc  bc                                          ; $4c1f: $03
	jr   nc, @+$22                                   ; $4c20: $30 $20

	ld   [hl-], a                                    ; $4c22: $32
	inc  bc                                          ; $4c23: $03
	jr   nc, @+$1a                                   ; $4c24: $30 $18

	jr   nc, jr_00e_4c2b                             ; $4c26: $30 $03

	jr   nz, jr_00e_4c52                             ; $4c28: $20 $28

	inc  l                                           ; $4c2a: $2c

jr_00e_4c2b:
	inc  bc                                          ; $4c2b: $03
	jr   nz, @+$22                                   ; $4c2c: $20 $20

	ld   a, [hl+]                                    ; $4c2e: $2a
	inc  bc                                          ; $4c2f: $03
	jr   nz, jr_00e_4c4a                             ; $4c30: $20 $18

	jr   z, @+$05                                    ; $4c32: $28 $03

	jr   nz, @+$12                                   ; $4c34: $20 $10

	ld   h, $03                                      ; $4c36: $26 $03
	jr   nz, @+$0a                                   ; $4c38: $20 $08

	inc  h                                           ; $4c3a: $24
	inc  bc                                          ; $4c3b: $03
	db   $10                                         ; $4c3c: $10
	jr   z, @+$24                                    ; $4c3d: $28 $22

	inc  bc                                          ; $4c3f: $03
	db   $10                                         ; $4c40: $10
	jr   nz, @+$22                                   ; $4c41: $20 $20

	inc  bc                                          ; $4c43: $03
	db   $10                                         ; $4c44: $10
	jr   @+$20                                       ; $4c45: $18 $1e

	inc  bc                                          ; $4c47: $03
	db   $10                                         ; $4c48: $10
	db   $10                                         ; $4c49: $10

jr_00e_4c4a:
	inc  e                                           ; $4c4a: $1c
	inc  bc                                          ; $4c4b: $03
	db   $10                                         ; $4c4c: $10
	ld   [$131a], sp                                 ; $4c4d: $08 $1a $13
	jr   c, jr_00e_4c5a                              ; $4c50: $38 $08

jr_00e_4c52:
	ld   l, h                                        ; $4c52: $6c
	inc  bc                                          ; $4c53: $03
	inc  [hl]                                        ; $4c54: $34
	ld   l, $70                                      ; $4c55: $2e $70
	inc  bc                                          ; $4c57: $03
	jr   nc, @+$2a                                   ; $4c58: $30 $28

jr_00e_4c5a:
	inc  [hl]                                        ; $4c5a: $34
	inc  bc                                          ; $4c5b: $03
	jr   nc, @+$22                                   ; $4c5c: $30 $20

	ld   [hl-], a                                    ; $4c5e: $32
	inc  bc                                          ; $4c5f: $03
	jr   nc, jr_00e_4c7a                             ; $4c60: $30 $18

	jr   nc, @+$05                                   ; $4c62: $30 $03

	jr   nc, jr_00e_4c6e                             ; $4c64: $30 $08

	ld   l, $03                                      ; $4c66: $2e $03
	jr   nz, jr_00e_4c92                             ; $4c68: $20 $28

	inc  l                                           ; $4c6a: $2c
	inc  bc                                          ; $4c6b: $03
	jr   nz, @+$22                                   ; $4c6c: $20 $20

jr_00e_4c6e:
	ld   a, [hl+]                                    ; $4c6e: $2a
	inc  bc                                          ; $4c6f: $03
	jr   nz, jr_00e_4c8a                             ; $4c70: $20 $18

	jr   z, @+$05                                    ; $4c72: $28 $03

	jr   nz, @+$12                                   ; $4c74: $20 $10

	ld   h, $03                                      ; $4c76: $26 $03
	jr   nz, @+$0a                                   ; $4c78: $20 $08

jr_00e_4c7a:
	inc  h                                           ; $4c7a: $24
	inc  bc                                          ; $4c7b: $03
	db   $10                                         ; $4c7c: $10
	jr   z, @+$24                                    ; $4c7d: $28 $22

	inc  bc                                          ; $4c7f: $03
	db   $10                                         ; $4c80: $10
	jr   nz, jr_00e_4ca3                             ; $4c81: $20 $20

	inc  bc                                          ; $4c83: $03
	db   $10                                         ; $4c84: $10
	jr   @+$20                                       ; $4c85: $18 $1e

	inc  bc                                          ; $4c87: $03
	db   $10                                         ; $4c88: $10
	db   $10                                         ; $4c89: $10

jr_00e_4c8a:
	inc  e                                           ; $4c8a: $1c
	inc  bc                                          ; $4c8b: $03
	db   $10                                         ; $4c8c: $10
	ld   [$131a], sp                                 ; $4c8d: $08 $1a $13
	jr   nc, @+$2a                                   ; $4c90: $30 $28

jr_00e_4c92:
	inc  [hl]                                        ; $4c92: $34
	inc  bc                                          ; $4c93: $03
	jr   nc, @+$22                                   ; $4c94: $30 $20

	ld   [hl-], a                                    ; $4c96: $32
	inc  bc                                          ; $4c97: $03
	jr   nc, jr_00e_4cb2                             ; $4c98: $30 $18

	jr   nc, @+$05                                   ; $4c9a: $30 $03

	jr   nc, jr_00e_4ca6                             ; $4c9c: $30 $08

	ld   l, $03                                      ; $4c9e: $2e $03
	db $20, $28

	inc  l                                           ; $4ca2: $2c

jr_00e_4ca3:
	inc  bc                                          ; $4ca3: $03
	jr   nz, @+$22                                   ; $4ca4: $20 $20

jr_00e_4ca6:
	ld   a, [hl+]                                    ; $4ca6: $2a
	inc  bc                                          ; $4ca7: $03
	jr   nz, jr_00e_4cc2                             ; $4ca8: $20 $18

	jr   z, @+$05                                    ; $4caa: $28 $03

	jr   nz, @+$12                                   ; $4cac: $20 $10

	ld   h, $03                                      ; $4cae: $26 $03
	jr   nz, @+$0a                                   ; $4cb0: $20 $08

jr_00e_4cb2:
	inc  h                                           ; $4cb2: $24
	inc  bc                                          ; $4cb3: $03
	db   $10                                         ; $4cb4: $10
	jr   z, @+$24                                    ; $4cb5: $28 $22

	inc  bc                                          ; $4cb7: $03
	db   $10                                         ; $4cb8: $10
	db $20, $20

	inc  bc                                          ; $4cbb: $03
	db   $10                                         ; $4cbc: $10
	jr   @+$20                                       ; $4cbd: $18 $1e

	inc  bc                                          ; $4cbf: $03
	db   $10                                         ; $4cc0: $10
	db   $10                                         ; $4cc1: $10

jr_00e_4cc2:
	inc  e                                           ; $4cc2: $1c
	inc  bc                                          ; $4cc3: $03
	db   $10                                         ; $4cc4: $10
	ld   [$131a], sp                                 ; $4cc5: $08 $1a $13


SpriteGroup1_Idxa0h_GameOverRightKanji1:
	db $30, $28, $50, $03
	db $30, $20, $4e, $03
	db $30, $18, $4c, $03
	db $30, $08, $4a, $03
	db $20, $28, $48, $03
	db $20, $20, $46, $03
	db $20, $18, $44, $03
	db $20, $10, $42, $03
	db $20, $08, $40, $03
	db $10, $28, $3e, $03
	db $10, $20, $3c, $03
	db $10, $18, $3a, $03
	db $10, $10, $38, $03
	db $10, $08, $36, $13


SpriteGroup1_Idxa1h:
	jr   c, jr_00e_4d22                              ; $4d00: $38 $20

jr_00e_4d02:
	ld   [hl], d                                     ; $4d02: $72
	inc  bc                                          ; $4d03: $03
	jr   nc, jr_00e_4d31                             ; $4d04: $30 $2b

	ld   [hl], h                                     ; $4d06: $74
	inc  bc                                          ; $4d07: $03
	jr   nc, @+$22                                   ; $4d08: $30 $20

	ld   l, d                                        ; $4d0a: $6a
	inc  bc                                          ; $4d0b: $03
	jr   nc, jr_00e_4d26                             ; $4d0c: $30 $18

	ld   l, b                                        ; $4d0e: $68
	inc  bc                                          ; $4d0f: $03
	jr   nc, jr_00e_4d1a                             ; $4d10: $30 $08

	ld   h, [hl]                                     ; $4d12: $66
	inc  bc                                          ; $4d13: $03
	jr   nz, jr_00e_4d3e                             ; $4d14: $20 $28

	ld   h, h                                        ; $4d16: $64
	inc  bc                                          ; $4d17: $03
	jr   nz, @+$22                                   ; $4d18: $20 $20

jr_00e_4d1a:
	ld   h, d                                        ; $4d1a: $62
	inc  bc                                          ; $4d1b: $03
	jr   nz, jr_00e_4d36                             ; $4d1c: $20 $18

	ld   h, b                                        ; $4d1e: $60
	inc  bc                                          ; $4d1f: $03
	jr   nz, @+$12                                   ; $4d20: $20 $10

jr_00e_4d22:
	ld   e, [hl]                                     ; $4d22: $5e
	inc  bc                                          ; $4d23: $03
	jr   nz, @+$0a                                   ; $4d24: $20 $08

jr_00e_4d26:
	ld   e, h                                        ; $4d26: $5c
	inc  bc                                          ; $4d27: $03
	db   $10                                         ; $4d28: $10
	jr   z, @+$5c                                    ; $4d29: $28 $5a

	inc  bc                                          ; $4d2b: $03
	db   $10                                         ; $4d2c: $10

jr_00e_4d2d:
	jr   nz, jr_00e_4d87                             ; $4d2d: $20 $58

jr_00e_4d2f:
	inc  bc                                          ; $4d2f: $03
	db   $10                                         ; $4d30: $10

jr_00e_4d31:
	jr   @+$58                                       ; $4d31: $18 $56

	inc  bc                                          ; $4d33: $03
	db   $10                                         ; $4d34: $10
	db   $10                                         ; $4d35: $10

jr_00e_4d36:
	ld   d, h                                        ; $4d36: $54
	inc  bc                                          ; $4d37: $03
	db   $10                                         ; $4d38: $10
	ld   [$1352], sp                                 ; $4d39: $08 $52 $13
	ld   a, $20                                      ; $4d3c: $3e $20

jr_00e_4d3e:
	ld   [hl], b                                     ; $4d3e: $70
	inc  bc                                          ; $4d3f: $03
	dec  [hl]                                        ; $4d40: $35
	ld   a, [hl+]                                    ; $4d41: $2a
	ld   l, [hl]                                     ; $4d42: $6e
	inc  bc                                          ; $4d43: $03
	jr   nc, @+$22                                   ; $4d44: $30 $20

	ld   l, d                                        ; $4d46: $6a
	inc  bc                                          ; $4d47: $03
	jr   nc, jr_00e_4d62                             ; $4d48: $30 $18

	ld   l, b                                        ; $4d4a: $68
	inc  bc                                          ; $4d4b: $03
	jr   nc, jr_00e_4d56                             ; $4d4c: $30 $08

	ld   h, [hl]                                     ; $4d4e: $66
	inc  bc                                          ; $4d4f: $03
	jr   nz, jr_00e_4d7a                             ; $4d50: $20 $28

	ld   h, h                                        ; $4d52: $64
	inc  bc                                          ; $4d53: $03
	jr   nz, @+$22                                   ; $4d54: $20 $20

jr_00e_4d56:
	ld   h, d                                        ; $4d56: $62
	inc  bc                                          ; $4d57: $03
	jr   nz, jr_00e_4d72                             ; $4d58: $20 $18

	ld   h, b                                        ; $4d5a: $60
	inc  bc                                          ; $4d5b: $03
	jr   nz, @+$12                                   ; $4d5c: $20 $10

	ld   e, [hl]                                     ; $4d5e: $5e
	inc  bc                                          ; $4d5f: $03
	jr   nz, @+$0a                                   ; $4d60: $20 $08

jr_00e_4d62:
	ld   e, h                                        ; $4d62: $5c
	inc  bc                                          ; $4d63: $03
	db   $10                                         ; $4d64: $10
	jr   z, @+$5c                                    ; $4d65: $28 $5a

	inc  bc                                          ; $4d67: $03
	db   $10                                         ; $4d68: $10
	db $20, $58

	inc  bc                                          ; $4d6b: $03
	db   $10                                         ; $4d6c: $10
	db $18, $56

	inc  bc                                          ; $4d6f: $03
	db   $10                                         ; $4d70: $10
	db   $10                                         ; $4d71: $10

jr_00e_4d72:
	ld   d, h                                        ; $4d72: $54
	inc  bc                                          ; $4d73: $03
	db   $10                                         ; $4d74: $10
	ld   [$1352], sp                                 ; $4d75: $08 $52 $13
	jr   nc, @+$22                                   ; $4d78: $30 $20

jr_00e_4d7a:
	ld   l, d                                        ; $4d7a: $6a
	inc  bc                                          ; $4d7b: $03
	jr   nc, jr_00e_4d96                             ; $4d7c: $30 $18

	ld   l, b                                        ; $4d7e: $68
	inc  bc                                          ; $4d7f: $03
	jr   nc, jr_00e_4d8a                             ; $4d80: $30 $08

	ld   h, [hl]                                     ; $4d82: $66
	inc  bc                                          ; $4d83: $03
	db $20, $28

	ld   h, h                                        ; $4d86: $64

jr_00e_4d87:
	inc  bc                                          ; $4d87: $03
	jr   nz, @+$22                                   ; $4d88: $20 $20

jr_00e_4d8a:
	ld   h, d                                        ; $4d8a: $62
	inc  bc                                          ; $4d8b: $03
	jr   nz, jr_00e_4da6                             ; $4d8c: $20 $18

	ld   h, b                                        ; $4d8e: $60
	inc  bc                                          ; $4d8f: $03
	jr   nz, @+$12                                   ; $4d90: $20 $10

	ld   e, [hl]                                     ; $4d92: $5e
	inc  bc                                          ; $4d93: $03
	jr   nz, @+$0a                                   ; $4d94: $20 $08

jr_00e_4d96:
	ld   e, h                                        ; $4d96: $5c
	inc  bc                                          ; $4d97: $03
	db   $10                                         ; $4d98: $10
	jr   z, @+$5c                                    ; $4d99: $28 $5a

	inc  bc                                          ; $4d9b: $03
	db   $10                                         ; $4d9c: $10
	jr   nz, @+$5a                                   ; $4d9d: $20 $58

	inc  bc                                          ; $4d9f: $03
	db   $10                                         ; $4da0: $10
	jr   @+$58                                       ; $4da1: $18 $56

	inc  bc                                          ; $4da3: $03
	db   $10                                         ; $4da4: $10
	db   $10                                         ; $4da5: $10

jr_00e_4da6:
	ld   d, h                                        ; $4da6: $54
	inc  bc                                          ; $4da7: $03
	db   $10                                         ; $4da8: $10
	ld   [$1352], sp                                 ; $4da9: $08 $52 $13


SpriteGroup1_Idxa4h_GameOverPlayerSprite:
	db $18, $28, $84, $02
	db $18, $20, $82, $02
	db $20, $18, $80, $02
	db $20, $10, $7e, $02
	db $20, $08, $7c, $01
	db $10, $18, $7a, $02
	db $10, $10, $78, $00
	db $10, $08, $76, $10


SpriteGroup1_Idxa5h:
	ld   [$0c18], sp                                 ; $4dcc: $08 $18 $0c
	nop                                              ; $4dcf: $00
	ld   hl, sp+$18                                  ; $4dd0: $f8 $18

jr_00e_4dd2:
	ld   a, [bc]                                     ; $4dd2: $0a
	ld   bc, $1018                                   ; $4dd3: $01 $18 $10

jr_00e_4dd6:
	ld   [$0800], sp                                 ; $4dd6: $08 $00 $08
	db   $10                                         ; $4dd9: $10
	ld   b, $00                                      ; $4dda: $06 $00
	ld   hl, sp+$10                                  ; $4ddc: $f8 $10
	inc  b                                           ; $4dde: $04
	ld   bc, $2018                                   ; $4ddf: $01 $18 $20
	ld   [bc], a                                     ; $4de2: $02
	nop                                              ; $4de3: $00
	jr   jr_00e_4dfe                                 ; $4de4: $18 $18

	nop                                              ; $4de6: $00
	nop                                              ; $4de7: $00
	jr   nz, @+$0a                                   ; $4de8: $20 $08

	inc  h                                           ; $4dea: $24
	nop                                              ; $4deb: $00
	db   $10                                         ; $4dec: $10
	ld   [$0022], sp                                 ; $4ded: $08 $22 $00
	nop                                              ; $4df0: $00
	ld   [$0020], sp                                 ; $4df1: $08 $20 $00
	ldh  a, [$08]                                    ; $4df4: $f0 $08
	ld   e, $01                                      ; $4df6: $1e $01
	jr   z, jr_00e_4dfa                              ; $4df8: $28 $00

jr_00e_4dfa:
	inc  e                                           ; $4dfa: $1c
	nop                                              ; $4dfb: $00
	jr   jr_00e_4dfe                                 ; $4dfc: $18 $00

jr_00e_4dfe:
	ld   a, [de]                                     ; $4dfe: $1a
	nop                                              ; $4dff: $00
	ld   [$1800], sp                                 ; $4e00: $08 $00 $18
	nop                                              ; $4e03: $00
	ld   hl, sp+$00                                  ; $4e04: $f8 $00

jr_00e_4e06:
	ld   d, $01                                      ; $4e06: $16 $01
	jr   z, @-$06                                    ; $4e08: $28 $f8

	inc  d                                           ; $4e0a: $14
	nop                                              ; $4e0b: $00
	jr   jr_00e_4e06                                 ; $4e0c: $18 $f8

	ld   [de], a                                     ; $4e0e: $12
	nop                                              ; $4e0f: $00
	ld   [$10f8], sp                                 ; $4e10: $08 $f8 $10
	nop                                              ; $4e13: $00
	db   $10                                         ; $4e14: $10
	ldh  a, [$0e]                                    ; $4e15: $f0 $0e
	db   $10                                         ; $4e17: $10
	jr   nz, jr_00e_4e2a                             ; $4e18: $20 $10

	jr   jr_00e_4e1c                                 ; $4e1a: $18 $00

jr_00e_4e1c:
	db   $10                                         ; $4e1c: $10
	db   $10                                         ; $4e1d: $10
	inc  h                                           ; $4e1e: $24
	nop                                              ; $4e1f: $00
	nop                                              ; $4e20: $00
	db   $10                                         ; $4e21: $10
	ld   [hl+], a                                    ; $4e22: $22
	ld   bc, $10f0                                   ; $4e23: $01 $f0 $10
	jr   nz, @+$03                                   ; $4e26: $20 $01

	jr   jr_00e_4e32                                 ; $4e28: $18 $08

jr_00e_4e2a:
	ld   e, $00                                      ; $4e2a: $1e $00
	ld   [$1c08], sp                                 ; $4e2c: $08 $08 $1c
	nop                                              ; $4e2f: $00
	ld   hl, sp+$08                                  ; $4e30: $f8 $08

jr_00e_4e32:
	ld   a, [de]                                     ; $4e32: $1a
	ld   bc, $0020                                   ; $4e33: $01 $20 $00
	ld   d, $00                                      ; $4e36: $16 $00
	stop                                             ; $4e38: $10 $00
	inc  d                                           ; $4e3a: $14
	nop                                              ; $4e3b: $00
	nop                                              ; $4e3c: $00
	nop                                              ; $4e3d: $00
	ld   [de], a                                     ; $4e3e: $12
	nop                                              ; $4e3f: $00
	ldh  a, [rP1]                                    ; $4e40: $f0 $00
	db   $10                                         ; $4e42: $10
	ld   bc, $1818                                   ; $4e43: $01 $18 $18

jr_00e_4e46:
	inc  c                                           ; $4e46: $0c
	nop                                              ; $4e47: $00
	ld   hl, sp+$18                                  ; $4e48: $f8 $18
	ld   a, [bc]                                     ; $4e4a: $0a
	nop                                              ; $4e4b: $00
	jr   nz, jr_00e_4e46                             ; $4e4c: $20 $f8

	ld   c, $00                                      ; $4e4e: $0e $00
	nop                                              ; $4e50: $00
	ldh  a, [$08]                                    ; $4e51: $f0 $08
	nop                                              ; $4e53: $00
	jr   nc, jr_00e_4e57                             ; $4e54: $30 $01

	ld   [bc], a                                     ; $4e56: $02

jr_00e_4e57:
	ld   [bc], a                                     ; $4e57: $02
	jr   nc, jr_00e_4e6b                             ; $4e58: $30 $11

	ld   b, $02                                      ; $4e5a: $06 $02
	jr   nc, jr_00e_4e67                             ; $4e5c: $30 $09

	inc  b                                           ; $4e5e: $04
	ld   [bc], a                                     ; $4e5f: $02
	jr   nc, jr_00e_4e7b                             ; $4e60: $30 $19

	nop                                              ; $4e62: $00
	ld   [de], a                                     ; $4e63: $12
	ld   [$06e0], sp                                 ; $4e64: $08 $e0 $06

jr_00e_4e67:
	ld   bc, $0e00                                   ; $4e67: $01 $00 $0e
	inc  b                                           ; $4e6a: $04

jr_00e_4e6b:
	nop                                              ; $4e6b: $00

jr_00e_4e6c:
	jr   jr_00e_4e6c                                 ; $4e6c: $18 $fe

	ld   [bc], a                                     ; $4e6e: $02
	nop                                              ; $4e6f: $00
	ld   [$00fe], sp                                 ; $4e70: $08 $fe $00
	db   $10                                         ; $4e73: $10
	ldh  a, [rAUD1SWEEP]                             ; $4e74: $f0 $10
	ld   c, $00                                      ; $4e76: $0e $00
	db   $10                                         ; $4e78: $10
	jr   @+$1c                                       ; $4e79: $18 $1a

jr_00e_4e7b:
	nop                                              ; $4e7b: $00
	nop                                              ; $4e7c: $00
	jr   jr_00e_4e97                                 ; $4e7d: $18 $18

	nop                                              ; $4e7f: $00
	ldh  a, [rAUD2LOW]                               ; $4e80: $f0 $18
	ld   d, $00                                      ; $4e82: $16 $00
	jr   nz, jr_00e_4e96                             ; $4e84: $20 $10

	inc  d                                           ; $4e86: $14
	nop                                              ; $4e87: $00
	db   $10                                         ; $4e88: $10
	db   $10                                         ; $4e89: $10
	ld   [de], a                                     ; $4e8a: $12
	nop                                              ; $4e8b: $00
	nop                                              ; $4e8c: $00
	db   $10                                         ; $4e8d: $10
	stop                                             ; $4e8e: $10 $00
	jr   z, @+$0a                                    ; $4e90: $28 $08

	inc  c                                           ; $4e92: $0c
	nop                                              ; $4e93: $00
	jr   jr_00e_4e9e                                 ; $4e94: $18 $08

jr_00e_4e96:
	ld   a, [bc]                                     ; $4e96: $0a

jr_00e_4e97:
	nop                                              ; $4e97: $00
	ld   [$0808], sp                                 ; $4e98: $08 $08 $08
	nop                                              ; $4e9b: $00
	ld   hl, sp+$08                                  ; $4e9c: $f8 $08

jr_00e_4e9e:
	ld   b, $00                                      ; $4e9e: $06 $00
	ld   [$24f8], sp                                 ; $4ea0: $08 $f8 $24
	ld   bc, $f008                                   ; $4ea3: $01 $08 $f0
	ld   [hl+], a                                    ; $4ea6: $22
	nop                                              ; $4ea7: $00
	jr   nz, jr_00e_4eaa                             ; $4ea8: $20 $00

jr_00e_4eaa:
	inc  b                                           ; $4eaa: $04
	nop                                              ; $4eab: $00
	stop                                             ; $4eac: $10 $00
	ld   [bc], a                                     ; $4eae: $02
	ld   bc, $0000                                   ; $4eaf: $01 $00 $00
	nop                                              ; $4eb2: $00
	nop                                              ; $4eb3: $00
	jr   nz, jr_00e_4ece                             ; $4eb4: $20 $18

	inc  e                                           ; $4eb6: $1c
	nop                                              ; $4eb7: $00
	ld   hl, sp+$20                                  ; $4eb8: $f8 $20
	ld   e, $00                                      ; $4eba: $1e $00
	nop                                              ; $4ebc: $00
	ldh  [rAUD4LEN], a                               ; $4ebd: $e0 $20
	ld   [de], a                                     ; $4ebf: $12
	ld   de, $2428                                   ; $4ec0: $11 $28 $24
	ld   [bc], a                                     ; $4ec3: $02
	ld   hl, sp+$18                                  ; $4ec4: $f8 $18
	ld   [hl+], a                                    ; $4ec6: $22
	nop                                              ; $4ec7: $00
	ld   [$2010], sp                                 ; $4ec8: $08 $10 $20
	nop                                              ; $4ecb: $00
	ld   hl, sp+$10                                  ; $4ecc: $f8 $10

jr_00e_4ece:
	ld   e, $00                                      ; $4ece: $1e $00
	db   $10                                         ; $4ed0: $10
	ld   [$001c], sp                                 ; $4ed1: $08 $1c $00
	nop                                              ; $4ed4: $00
	ld   [$001a], sp                                 ; $4ed5: $08 $1a $00
	ldh  a, [$08]                                    ; $4ed8: $f0 $08
	jr   jr_00e_4edc                                 ; $4eda: $18 $00

jr_00e_4edc:
	jr   nz, jr_00e_4ede                             ; $4edc: $20 $00

jr_00e_4ede:
	ld   d, $00                                      ; $4ede: $16 $00
	stop                                             ; $4ee0: $10 $00
	inc  d                                           ; $4ee2: $14
	ld   bc, $0000                                   ; $4ee3: $01 $00 $00

jr_00e_4ee6:
	ld   [de], a                                     ; $4ee6: $12
	ld   bc, $00f0                                   ; $4ee7: $01 $f0 $00
	stop                                             ; $4eea: $10 $00
	jr   nz, jr_00e_4ee6                             ; $4eec: $20 $f8

	ld   c, $00                                      ; $4eee: $0e $00
	db   $10                                         ; $4ef0: $10
	ld   hl, sp+$0c                                  ; $4ef1: $f8 $0c
	nop                                              ; $4ef3: $00
	nop                                              ; $4ef4: $00
	ld   hl, sp+$0a                                  ; $4ef5: $f8 $0a
	nop                                              ; $4ef7: $00
	ldh  a, [$f8]                                    ; $4ef8: $f0 $f8
	ld   [rROMB0], sp                                 ; $4efa: $08 $00 $20
	ldh  a, [rTMA]                                   ; $4efd: $f0 $06
	nop                                              ; $4eff: $00
	db   $10                                         ; $4f00: $10
	ldh  a, [rDIV]                                   ; $4f01: $f0 $04
	nop                                              ; $4f03: $00
	nop                                              ; $4f04: $00
	ldh  a, [rSC]                                    ; $4f05: $f0 $02

jr_00e_4f07:
	nop                                              ; $4f07: $00
	ldh  a, [$f0]                                    ; $4f08: $f0 $f0
	nop                                              ; $4f0a: $00
	db   $10                                         ; $4f0b: $10
	jr   nc, jr_00e_4f07                             ; $4f0c: $30 $f9

	ld   e, $02                                      ; $4f0e: $1e $02
	ld   [$2418], sp                                 ; $4f10: $08 $18 $24
	nop                                              ; $4f13: $00
	ld   hl, sp+$18                                  ; $4f14: $f8 $18
	ld   [hl+], a                                    ; $4f16: $22
	nop                                              ; $4f17: $00
	jr   nz, jr_00e_4f2a                             ; $4f18: $20 $10

	jr   nz, jr_00e_4f1c                             ; $4f1a: $20 $00

jr_00e_4f1c:
	nop                                              ; $4f1c: $00
	db   $10                                         ; $4f1d: $10
	inc  e                                           ; $4f1e: $1c
	nop                                              ; $4f1f: $00
	jr   jr_00e_4f2a                                 ; $4f20: $18 $08

	ld   a, [de]                                     ; $4f22: $1a
	nop                                              ; $4f23: $00
	ld   [$1808], sp                                 ; $4f24: $08 $08 $18
	nop                                              ; $4f27: $00
	ld   hl, sp+$08                                  ; $4f28: $f8 $08

jr_00e_4f2a:
	ld   d, $00                                      ; $4f2a: $16 $00
	jr   nc, jr_00e_4f2f                             ; $4f2c: $30 $01

	inc  d                                           ; $4f2e: $14

jr_00e_4f2f:
	ld   [bc], a                                     ; $4f2f: $02
	stop                                             ; $4f30: $10 $00
	ld   [de], a                                     ; $4f32: $12
	nop                                              ; $4f33: $00
	nop                                              ; $4f34: $00
	nop                                              ; $4f35: $00

jr_00e_4f36:
	stop                                             ; $4f36: $10 $00
	ldh  a, [rP1]                                    ; $4f38: $f0 $00
	ld   c, $00                                      ; $4f3a: $0e $00
	jr   nz, jr_00e_4f36                             ; $4f3c: $20 $f8

	inc  c                                           ; $4f3e: $0c
	nop                                              ; $4f3f: $00
	db   $10                                         ; $4f40: $10
	ld   hl, sp+$0a                                  ; $4f41: $f8 $0a
	nop                                              ; $4f43: $00
	nop                                              ; $4f44: $00
	ld   hl, sp+$08                                  ; $4f45: $f8 $08
	nop                                              ; $4f47: $00
	ldh  a, [$f8]                                    ; $4f48: $f0 $f8
	ld   b, $01                                      ; $4f4a: $06 $01
	db   $10                                         ; $4f4c: $10
	ldh  a, [rDIV]                                   ; $4f4d: $f0 $04
	nop                                              ; $4f4f: $00
	nop                                              ; $4f50: $00
	ldh  a, [rSC]                                    ; $4f51: $f0 $02
	nop                                              ; $4f53: $00
	ldh  a, [$f0]                                    ; $4f54: $f0 $f0
	nop                                              ; $4f56: $00
	ld   de, $0008                                   ; $4f57: $11 $08 $00
	nop                                              ; $4f5a: $00
	rra                                              ; $4f5b: $1f
	ld   [$0208], sp                                 ; $4f5c: $08 $08 $02
	rra                                              ; $4f5f: $1f
	ld   [$8808], sp                                 ; $4f60: $08 $08 $88
	rlca                                             ; $4f63: $07
	ld   [$8600], sp                                 ; $4f64: $08 $00 $86
	rla                                              ; $4f67: $17
	db   $10                                         ; $4f68: $10
	ld   [$479e], sp                                 ; $4f69: $08 $9e $47
	nop                                              ; $4f6c: $00
	ld   [$079e], sp                                 ; $4f6d: $08 $9e $07
	stop                                             ; $4f70: $10 $00
	sbc  h                                           ; $4f72: $9c
	ld   b, a                                        ; $4f73: $47
	nop                                              ; $4f74: $00
	nop                                              ; $4f75: $00
	sbc  h                                           ; $4f76: $9c
	rlca                                             ; $4f77: $07
	nop                                              ; $4f78: $00
	ld   hl, sp-$66                                  ; $4f79: $f8 $9a
	rlca                                             ; $4f7b: $07
	db   $10                                         ; $4f7c: $10
	db   $10                                         ; $4f7d: $10
	add  h                                           ; $4f7e: $84
	rlca                                             ; $4f7f: $07
	db   $10                                         ; $4f80: $10
	ld   hl, sp-$7e                                  ; $4f81: $f8 $82
	rlca                                             ; $4f83: $07
	nop                                              ; $4f84: $00
	db   $10                                         ; $4f85: $10
	add  b                                           ; $4f86: $80
	rla                                              ; $4f87: $17
	ld   hl, sp+$18                                  ; $4f88: $f8 $18
	sbc  b                                           ; $4f8a: $98
	rlca                                             ; $4f8b: $07
	jr   @+$1a                                       ; $4f8c: $18 $18

	sub  [hl]                                        ; $4f8e: $96
	rlca                                             ; $4f8f: $07
	jr   @-$0e                                       ; $4f90: $18 $f0

	sub  h                                           ; $4f92: $94
	rlca                                             ; $4f93: $07
	ld   [$9208], sp                                 ; $4f94: $08 $08 $92
	daa                                              ; $4f97: $27
	ld   [$9210], sp                                 ; $4f98: $08 $10 $92
	daa                                              ; $4f9b: $27
	ld   [$9200], sp                                 ; $4f9c: $08 $00 $92
	rlca                                             ; $4f9f: $07
	ld   [$92f8], sp                                 ; $4fa0: $08 $f8 $92
	rlca                                             ; $4fa3: $07
	ld   [$9018], sp                                 ; $4fa4: $08 $18 $90
	daa                                              ; $4fa7: $27
	ld   [$90f0], sp                                 ; $4fa8: $08 $f0 $90
	rlca                                             ; $4fab: $07
	jr   jr_00e_4fb6                                 ; $4fac: $18 $08

	adc  [hl]                                        ; $4fae: $8e
	ld   h, a                                        ; $4faf: $67
	jr   jr_00e_4fb2                                 ; $4fb0: $18 $00

jr_00e_4fb2:
	adc  [hl]                                        ; $4fb2: $8e
	ld   b, a                                        ; $4fb3: $47
	ld   hl, sp+$08                                  ; $4fb4: $f8 $08

jr_00e_4fb6:
	adc  [hl]                                        ; $4fb6: $8e
	daa                                              ; $4fb7: $27
	ld   hl, sp+$00                                  ; $4fb8: $f8 $00

jr_00e_4fba:
	adc  [hl]                                        ; $4fba: $8e
	rlca                                             ; $4fbb: $07
	jr   jr_00e_4fce                                 ; $4fbc: $18 $10

	adc  h                                           ; $4fbe: $8c
	ld   h, a                                        ; $4fbf: $67
	jr   jr_00e_4fba                                 ; $4fc0: $18 $f8

	adc  h                                           ; $4fc2: $8c
	ld   b, a                                        ; $4fc3: $47
	ld   hl, sp+$10                                  ; $4fc4: $f8 $10
	adc  h                                           ; $4fc6: $8c
	daa                                              ; $4fc7: $27
	ld   hl, sp-$08                                  ; $4fc8: $f8 $f8
	adc  h                                           ; $4fca: $8c
	rlca                                             ; $4fcb: $07
	ld   hl, sp-$10                                  ; $4fcc: $f8 $f0

jr_00e_4fce:
	adc  d                                           ; $4fce: $8a
	rla                                              ; $4fcf: $17
	ld   [$022c], sp                                 ; $4fd0: $08 $2c $02
	rrca                                             ; $4fd3: $0f
	ld   [$00dc], sp                                 ; $4fd4: $08 $dc $00
	rra                                              ; $4fd7: $1f
	ld   [$022d], sp                                 ; $4fd8: $08 $2d $02
	rrca                                             ; $4fdb: $0f
	ld   [$00db], sp                                 ; $4fdc: $08 $db $00
	rra                                              ; $4fdf: $1f
	ld   [$022e], sp                                 ; $4fe0: $08 $2e $02
	rrca                                             ; $4fe3: $0f
	ld   [$00da], sp                                 ; $4fe4: $08 $da $00
	rra                                              ; $4fe7: $1f
	ld   [$022f], sp                                 ; $4fe8: $08 $2f $02
	rrca                                             ; $4feb: $0f
	ld   [$00d9], sp                                 ; $4fec: $08 $d9 $00
	rra                                              ; $4fef: $1f


SpriteGroup6Pointers::
	ldh  a, [$50]                                    ; $4ff0: $f0 $50
	ld   d, b                                        ; $4ff2: $50
	ld   d, c                                        ; $4ff3: $51
	ret  nz                                          ; $4ff4: $c0

	ld   d, c                                        ; $4ff5: $51
	jr   jr_00e_504a                                 ; $4ff6: $18 $52

	ld   a, h                                        ; $4ff8: $7c
	ld   d, d                                        ; $4ff9: $52
	ret  c                                           ; $4ffa: $d8

	ld   d, d                                        ; $4ffb: $52
	jr   z, jr_00e_5051                              ; $4ffc: $28 $53

	ld   a, h                                        ; $4ffe: $7c
	ld   d, e                                        ; $4fff: $53
	call nc, $3453                                   ; $5000: $d4 $53 $34
	ld   d, h                                        ; $5003: $54
	sub  h                                           ; $5004: $94
	ld   d, h                                        ; $5005: $54
	inc  b                                           ; $5006: $04
	ld   d, l                                        ; $5007: $55
	ld   a, b                                        ; $5008: $78
	ld   d, l                                        ; $5009: $55
	call c, Call_00e_4455                            ; $500a: $dc $55 $44
	ld   d, [hl]                                     ; $500d: $56
	or   h                                           ; $500e: $b4
	ld   d, [hl]                                     ; $500f: $56
	inc  d                                           ; $5010: $14
	ld   d, a                                        ; $5011: $57
	adc  h                                           ; $5012: $8c
	ld   d, a                                        ; $5013: $57
	db   $f4                                         ; $5014: $f4
	ld   d, a                                        ; $5015: $57
	ld   d, h                                        ; $5016: $54
	ld   e, b                                        ; $5017: $58
	or   b                                           ; $5018: $b0
	ld   e, b                                        ; $5019: $58
	inc  h                                           ; $501a: $24
	ld   e, c                                        ; $501b: $59
	add  h                                           ; $501c: $84
	ld   e, c                                        ; $501d: $59
	call z, $1059                                    ; $501e: $cc $59 $10
	ld   e, d                                        ; $5021: $5a
	ld   h, h                                        ; $5022: $64
	ld   e, d                                        ; $5023: $5a
	ret  nz                                          ; $5024: $c0

	ld   e, d                                        ; $5025: $5a
	inc  d                                           ; $5026: $14
	ld   e, e                                        ; $5027: $5b
	ld   h, b                                        ; $5028: $60
	ld   e, e                                        ; $5029: $5b
	or   h                                           ; $502a: $b4
	ld   e, e                                        ; $502b: $5b
	inc  c                                           ; $502c: $0c
	ld   e, h                                        ; $502d: $5c
	ld   l, h                                        ; $502e: $6c
	ld   e, h                                        ; $502f: $5c
	cp   h                                           ; $5030: $bc
	ld   e, h                                        ; $5031: $5c
	jr   nz, jr_00e_5091                             ; $5032: $20 $5d

	inc  [hl]                                        ; $5034: $34
	ld   e, l                                        ; $5035: $5d
	ld   c, b                                        ; $5036: $48
	ld   e, l                                        ; $5037: $5d
	ld   e, h                                        ; $5038: $5c
	ld   e, l                                        ; $5039: $5d
	ld   h, b                                        ; $503a: $60
	ld   e, l                                        ; $503b: $5d
	ld   h, h                                        ; $503c: $64
	ld   e, l                                        ; $503d: $5d
	ld   [hl], b                                     ; $503e: $70
	ld   e, l                                        ; $503f: $5d
	ld   a, h                                        ; $5040: $7c
	ld   e, l                                        ; $5041: $5d
	adc  b                                           ; $5042: $88
	ld   e, l                                        ; $5043: $5d
	adc  h                                           ; $5044: $8c
	ld   e, l                                        ; $5045: $5d
	sub  h                                           ; $5046: $94
	ld   e, l                                        ; $5047: $5d
	xor  b                                           ; $5048: $a8
	ld   e, l                                        ; $5049: $5d

jr_00e_504a:
	cp   h                                           ; $504a: $bc
	ld   e, l                                        ; $504b: $5d
	ret  nc                                          ; $504c: $d0

	ld   e, l                                        ; $504d: $5d
	call nc, $d85d                                   ; $504e: $d4 $5d $d8

jr_00e_5051:
	ld   e, l                                        ; $5051: $5d
	add  sp, $5d                                     ; $5052: $e8 $5d
	ld   hl, sp+$5d                                  ; $5054: $f8 $5d
	ld   [$0c5e], sp                                 ; $5056: $08 $5e $0c
	ld   e, [hl]                                     ; $5059: $5e
	db   $10                                         ; $505a: $10
	ld   e, [hl]                                     ; $505b: $5e
	jr   jr_00e_50bc                                 ; $505c: $18 $5e

	jr   nz, jr_00e_50be                             ; $505e: $20 $5e

	jr   z, jr_00e_50c0                              ; $5060: $28 $5e

	inc  l                                           ; $5062: $2c
	ld   e, [hl]                                     ; $5063: $5e
	jr   nc, jr_00e_50c4                             ; $5064: $30 $5e

	ld   b, b                                        ; $5066: $40
	ld   e, [hl]                                     ; $5067: $5e
	ld   d, b                                        ; $5068: $50
	ld   e, [hl]                                     ; $5069: $5e
	ld   h, b                                        ; $506a: $60
	ld   e, [hl]                                     ; $506b: $5e
	ld   h, h                                        ; $506c: $64
	ld   e, [hl]                                     ; $506d: $5e
	ld   l, b                                        ; $506e: $68
	ld   e, [hl]                                     ; $506f: $5e
	ld   [hl], h                                     ; $5070: $74
	ld   e, [hl]                                     ; $5071: $5e
	add  b                                           ; $5072: $80
	ld   e, [hl]                                     ; $5073: $5e
	adc  h                                           ; $5074: $8c
	ld   e, [hl]                                     ; $5075: $5e
	sub  b                                           ; $5076: $90
	ld   e, [hl]                                     ; $5077: $5e
	sub  h                                           ; $5078: $94
	ld   e, [hl]                                     ; $5079: $5e
	and  h                                           ; $507a: $a4
	ld   e, [hl]                                     ; $507b: $5e
	or   h                                           ; $507c: $b4
	ld   e, [hl]                                     ; $507d: $5e
	call nz, $cc5e                                   ; $507e: $c4 $5e $cc
	ld   e, [hl]                                     ; $5081: $5e
	call nc, $e45e                                   ; $5082: $d4 $5e $e4
	ld   e, [hl]                                     ; $5085: $5e
	db   $f4                                         ; $5086: $f4
	ld   e, [hl]                                     ; $5087: $5e
	inc  b                                           ; $5088: $04
	ld   e, a                                        ; $5089: $5f
	ld   [$0c5f], sp                                 ; $508a: $08 $5f $0c
	ld   e, a                                        ; $508d: $5f
	jr   @+$61                                       ; $508e: $18 $5f

	inc  h                                           ; $5090: $24

jr_00e_5091:
	ld   e, a                                        ; $5091: $5f
	jr   nc, jr_00e_50f3                             ; $5092: $30 $5f

	inc  [hl]                                        ; $5094: $34
	ld   e, a                                        ; $5095: $5f
	jr   c, jr_00e_50f7                              ; $5096: $38 $5f

	ld   c, b                                        ; $5098: $48
	ld   e, a                                        ; $5099: $5f
	ld   e, b                                        ; $509a: $58
	ld   e, a                                        ; $509b: $5f
	ld   l, b                                        ; $509c: $68
	ld   e, a                                        ; $509d: $5f
	ld   l, h                                        ; $509e: $6c
	ld   e, a                                        ; $509f: $5f
	ld   [hl], b                                     ; $50a0: $70
	ld   e, a                                        ; $50a1: $5f
	sub  b                                           ; $50a2: $90
	ld   e, a                                        ; $50a3: $5f
	or   b                                           ; $50a4: $b0
	ld   e, a                                        ; $50a5: $5f
	ret  nc                                          ; $50a6: $d0

	ld   e, a                                        ; $50a7: $5f
	ret  c                                           ; $50a8: $d8

	ld   e, a                                        ; $50a9: $5f
	ldh  [$5f], a                                    ; $50aa: $e0 $5f
	nop                                              ; $50ac: $00
	ld   h, b                                        ; $50ad: $60
	jr   nz, jr_00e_5110                             ; $50ae: $20 $60

	ld   b, b                                        ; $50b0: $40
	ld   h, b                                        ; $50b1: $60
	ld   c, h                                        ; $50b2: $4c
	ld   h, b                                        ; $50b3: $60
	ld   e, b                                        ; $50b4: $58
	ld   h, b                                        ; $50b5: $60
	ld   l, b                                        ; $50b6: $68
	ld   h, b                                        ; $50b7: $60
	ld   a, b                                        ; $50b8: $78
	ld   h, b                                        ; $50b9: $60
	adc  b                                           ; $50ba: $88
	ld   h, b                                        ; $50bb: $60

jr_00e_50bc:
	adc  h                                           ; $50bc: $8c
	ld   h, b                                        ; $50bd: $60

jr_00e_50be:
	sub  b                                           ; $50be: $90
	ld   h, b                                        ; $50bf: $60

jr_00e_50c0:
	xor  h                                           ; $50c0: $ac
	ld   h, b                                        ; $50c1: $60
	ret  z                                           ; $50c2: $c8

	ld   h, b                                        ; $50c3: $60

jr_00e_50c4:
	db   $e4                                         ; $50c4: $e4
	ld   h, b                                        ; $50c5: $60
	add  sp, $60                                     ; $50c6: $e8 $60
	db   $ec                                         ; $50c8: $ec
	ld   h, b                                        ; $50c9: $60
	db   $fc                                         ; $50ca: $fc
	ld   h, b                                        ; $50cb: $60
	inc  c                                           ; $50cc: $0c
	ld   h, c                                        ; $50cd: $61
	inc  e                                           ; $50ce: $1c
	ld   h, c                                        ; $50cf: $61
	jr   nz, jr_00e_5133                             ; $50d0: $20 $61

	inc  h                                           ; $50d2: $24
	ld   h, c                                        ; $50d3: $61
	ld   b, h                                        ; $50d4: $44
	ld   h, c                                        ; $50d5: $61
	ld   h, h                                        ; $50d6: $64
	ld   h, c                                        ; $50d7: $61
	add  h                                           ; $50d8: $84
	ld   h, c                                        ; $50d9: $61
	adc  b                                           ; $50da: $88
	ld   h, c                                        ; $50db: $61
	adc  h                                           ; $50dc: $8c
	ld   h, c                                        ; $50dd: $61
	xor  b                                           ; $50de: $a8
	ld   h, c                                        ; $50df: $61
	call nz, $e061                                   ; $50e0: $c4 $61 $e0
	ld   h, c                                        ; $50e3: $61
	add  sp, $61                                     ; $50e4: $e8 $61
	ldh  a, [$61]                                    ; $50e6: $f0 $61
	db   $fc                                         ; $50e8: $fc
	ld   h, c                                        ; $50e9: $61

jr_00e_50ea:
	ld   [$1462], sp                                 ; $50ea: $08 $62 $14
	ld   h, d                                        ; $50ed: $62
	jr   jr_00e_5152                                 ; $50ee: $18 $62

	db   $10                                         ; $50f0: $10
	jr   @+$70                                       ; $50f1: $18 $6e

jr_00e_50f3:
	nop                                              ; $50f3: $00
	jr   nz, jr_00e_50f6                             ; $50f4: $20 $00

jr_00e_50f6:
	ld   l, h                                        ; $50f6: $6c

jr_00e_50f7:
	inc  b                                           ; $50f7: $04
	jr   nc, jr_00e_50ea                             ; $50f8: $30 $f0

	ld   e, [hl]                                     ; $50fa: $5e
	inc  b                                           ; $50fb: $04
	jr   nc, jr_00e_5126                             ; $50fc: $30 $28

	ld   l, d                                        ; $50fe: $6a
	ld   [bc], a                                     ; $50ff: $02
	jr   nz, jr_00e_5122                             ; $5100: $20 $20

	ld   l, b                                        ; $5102: $68
	ld   [bc], a                                     ; $5103: $02
	jr   nz, @+$12                                   ; $5104: $20 $10

	ld   h, [hl]                                     ; $5106: $66
	nop                                              ; $5107: $00
	jr   nz, jr_00e_5112                             ; $5108: $20 $08

jr_00e_510a:
	ld   h, h                                        ; $510a: $64
	inc  b                                           ; $510b: $04
	jr   nz, jr_00e_510e                             ; $510c: $20 $00

jr_00e_510e:
	ld   h, d                                        ; $510e: $62
	ld   [bc], a                                     ; $510f: $02

jr_00e_5110:
	jr   nz, jr_00e_510a                             ; $5110: $20 $f8

jr_00e_5112:
	ld   h, b                                        ; $5112: $60
	ld   [bc], a                                     ; $5113: $02
	db   $10                                         ; $5114: $10
	jr   nz, jr_00e_5173                             ; $5115: $20 $5c

	inc  bc                                          ; $5117: $03
	db   $10                                         ; $5118: $10
	jr   @+$5c                                       ; $5119: $18 $5a

	ld   bc, $f810                                   ; $511b: $01 $10 $f8
	ld   e, b                                        ; $511e: $58
	ld   [bc], a                                     ; $511f: $02
	nop                                              ; $5120: $00
	db   $10                                         ; $5121: $10

jr_00e_5122:
	ld   d, d                                        ; $5122: $52
	nop                                              ; $5123: $00
	ld   hl, sp+$08                                  ; $5124: $f8 $08

jr_00e_5126:
	ld   b, [hl]                                     ; $5126: $46
	nop                                              ; $5127: $00
	ld   [$4cf0], sp                                 ; $5128: $08 $f0 $4c
	ld   [bc], a                                     ; $512b: $02
	ld   hl, sp-$10                                  ; $512c: $f8 $f0
	ld   b, b                                        ; $512e: $40
	ld   [bc], a                                     ; $512f: $02
	nop                                              ; $5130: $00
	jr   nz, @+$58                                   ; $5131: $20 $56

jr_00e_5133:
	inc  bc                                          ; $5133: $03
	nop                                              ; $5134: $00
	jr   jr_00e_518b                                 ; $5135: $18 $54

	ld   bc, $0000                                   ; $5137: $01 $00 $00
	ld   d, b                                        ; $513a: $50
	nop                                              ; $513b: $00
	nop                                              ; $513c: $00
	ld   hl, sp+$4e                                  ; $513d: $f8 $4e
	nop                                              ; $513f: $00
	ldh  a, [rAUD2LOW]                               ; $5140: $f0 $18
	ld   c, d                                        ; $5142: $4a
	inc  bc                                          ; $5143: $03
	ldh  a, [rAUD1SWEEP]                             ; $5144: $f0 $10

jr_00e_5146:
	ld   c, b                                        ; $5146: $48
	ld   bc, $00f0                                   ; $5147: $01 $f0 $00

jr_00e_514a:
	ld   b, h                                        ; $514a: $44
	ld   bc, $f8f0                                   ; $514b: $01 $f0 $f8
	ld   b, d                                        ; $514e: $42
	ld   de, $ff20                                   ; $514f: $11 $20 $ff

jr_00e_5152:
	ld   [hl], b                                     ; $5152: $70
	inc  b                                           ; $5153: $04
	db   $10                                         ; $5154: $10
	jr   @+$70                                       ; $5155: $18 $6e

	nop                                              ; $5157: $00
	jr   nc, jr_00e_517a                             ; $5158: $30 $20

	halt                                             ; $515a: $76
	inc  b                                           ; $515b: $04
	jr   nc, jr_00e_5176                             ; $515c: $30 $18

	ld   [hl], h                                     ; $515e: $74
	inc  b                                           ; $515f: $04
	jr   nc, jr_00e_5172                             ; $5160: $30 $10

jr_00e_5162:
	ld   [hl], d                                     ; $5162: $72
	inc  b                                           ; $5163: $04
	jr   nc, jr_00e_5146                             ; $5164: $30 $e0

	ld   l, h                                        ; $5166: $6c
	inc  b                                           ; $5167: $04
	jr   nc, jr_00e_514a                             ; $5168: $30 $e0

	ld   l, d                                        ; $516a: $6a
	ld   [bc], a                                     ; $516b: $02
	jr   z, @-$16                                    ; $516c: $28 $e8

jr_00e_516e:
	ld   l, b                                        ; $516e: $68
	ld   [bc], a                                     ; $516f: $02
	jr   nz, jr_00e_5162                             ; $5170: $20 $f0

jr_00e_5172:
	ld   h, [hl]                                     ; $5172: $66

jr_00e_5173:
	ld   [bc], a                                     ; $5173: $02
	jr   nc, jr_00e_516e                             ; $5174: $30 $f8

jr_00e_5176:
	ld   h, h                                        ; $5176: $64
	ld   [bc], a                                     ; $5177: $02
	jr   nz, jr_00e_517a                             ; $5178: $20 $00

jr_00e_517a:
	ld   h, d                                        ; $517a: $62
	ld   [bc], a                                     ; $517b: $02
	jr   nz, jr_00e_5176                             ; $517c: $20 $f8

	ld   h, b                                        ; $517e: $60
	ld   [bc], a                                     ; $517f: $02
	ld   [$5cf0], sp                                 ; $5180: $08 $f0 $5c
	ld   [bc], a                                     ; $5183: $02
	db   $10                                         ; $5184: $10
	ld   hl, sp+$5e                                  ; $5185: $f8 $5e
	ld   [bc], a                                     ; $5187: $02
	jr   nc, jr_00e_51b2                             ; $5188: $30 $28

	ld   e, d                                        ; $518a: $5a

jr_00e_518b:
	ld   [bc], a                                     ; $518b: $02
	jr   nz, jr_00e_51ae                             ; $518c: $20 $20

	ld   e, b                                        ; $518e: $58
	ld   [bc], a                                     ; $518f: $02
	jr   nz, @+$12                                   ; $5190: $20 $10

	ld   d, [hl]                                     ; $5192: $56
	nop                                              ; $5193: $00
	db   $10                                         ; $5194: $10
	jr   nz, jr_00e_51eb                             ; $5195: $20 $54

	inc  bc                                          ; $5197: $03
	db   $10                                         ; $5198: $10
	jr   @+$54                                       ; $5199: $18 $52

	ld   bc, $2000                                   ; $519b: $01 $00 $20
	ld   d, b                                        ; $519e: $50
	inc  bc                                          ; $519f: $03
	nop                                              ; $51a0: $00
	jr   @+$50                                       ; $51a1: $18 $4e

	ld   bc, $18f0                                   ; $51a3: $01 $f0 $18
	ld   c, h                                        ; $51a6: $4c
	inc  bc                                          ; $51a7: $03
	ldh  a, [rAUD1SWEEP]                             ; $51a8: $f0 $10
	ld   c, d                                        ; $51aa: $4a
	ld   bc, $08f8                                   ; $51ab: $01 $f8 $08

jr_00e_51ae:
	ld   c, b                                        ; $51ae: $48
	ld   [bc], a                                     ; $51af: $02
	nop                                              ; $51b0: $00
	nop                                              ; $51b1: $00

jr_00e_51b2:
	ld   b, [hl]                                     ; $51b2: $46
	nop                                              ; $51b3: $00
	ldh  a, [rP1]                                    ; $51b4: $f0 $00
	ld   b, h                                        ; $51b6: $44
	ld   bc, $f8f0                                   ; $51b7: $01 $f0 $f8
	ld   b, d                                        ; $51ba: $42
	ld   bc, $f0f8                                   ; $51bb: $01 $f8 $f0

jr_00e_51be:
	ld   b, b                                        ; $51be: $40
	ld   [de], a                                     ; $51bf: $12
	db   $10                                         ; $51c0: $10
	jr   @+$6c                                       ; $51c1: $18 $6a

	nop                                              ; $51c3: $00
	jr   c, jr_00e_51be                              ; $51c4: $38 $f8

jr_00e_51c6:
	ld   d, d                                        ; $51c6: $52
	ld   bc, $f828                                   ; $51c7: $01 $28 $f8

jr_00e_51ca:
	ld   l, b                                        ; $51ca: $68
	ld   bc, $1030                                   ; $51cb: $01 $30 $10
	ld   h, [hl]                                     ; $51ce: $66
	ld   bc, $f818                                   ; $51cf: $01 $18 $f8
	ld   h, d                                        ; $51d2: $62
	ld   bc, $2030                                   ; $51d3: $01 $30 $20
	ld   h, b                                        ; $51d6: $60
	ld   [bc], a                                     ; $51d7: $02
	jr   z, jr_00e_51ca                              ; $51d8: $28 $f0

	ld   e, d                                        ; $51da: $5a
	ld   [bc], a                                     ; $51db: $02
	jr   nc, jr_00e_51c6                             ; $51dc: $30 $e8

	ld   e, [hl]                                     ; $51de: $5e
	ld   [bc], a                                     ; $51df: $02
	jr   z, @+$1a                                    ; $51e0: $28 $18

	ld   e, h                                        ; $51e2: $5c
	nop                                              ; $51e3: $00
	jr   nz, jr_00e_5206                             ; $51e4: $20 $20

	ld   e, b                                        ; $51e6: $58
	ld   bc, $1020                                   ; $51e7: $01 $20 $10
	ld   d, [hl]                                     ; $51ea: $56

jr_00e_51eb:
	nop                                              ; $51eb: $00
	jr   nz, jr_00e_51ee                             ; $51ec: $20 $00

jr_00e_51ee:
	ld   d, h                                        ; $51ee: $54
	nop                                              ; $51ef: $00
	jr   jr_00e_520a                                 ; $51f0: $18 $18

	ld   d, b                                        ; $51f2: $50
	ld   bc, $0020                                   ; $51f3: $01 $20 $00
	ld   h, h                                        ; $51f6: $64
	ld   [bc], a                                     ; $51f7: $02
	ld   [$4e18], sp                                 ; $51f8: $08 $18 $4e
	ld   bc, $f008                                   ; $51fb: $01 $08 $f0
	ld   c, h                                        ; $51fe: $4c
	ld   bc, $18f8                                   ; $51ff: $01 $f8 $18
	ld   c, d                                        ; $5202: $4a
	ld   bc, $10f8                                   ; $5203: $01 $f8 $10

jr_00e_5206:
	ld   c, b                                        ; $5206: $48
	ld   bc, $08f8                                   ; $5207: $01 $f8 $08

jr_00e_520a:
	ld   b, [hl]                                     ; $520a: $46
	ld   bc, $00f8                                   ; $520b: $01 $f8 $00
	ld   b, h                                        ; $520e: $44
	ld   bc, $f8f8                                   ; $520f: $01 $f8 $f8
	ld   b, d                                        ; $5212: $42
	ld   bc, $f0f8                                   ; $5213: $01 $f8 $f0
	ld   b, b                                        ; $5216: $40
	ld   de, $1820                                   ; $5217: $11 $20 $18
	ld   e, h                                        ; $521a: $5c
	inc  bc                                          ; $521b: $03
	jr   nz, jr_00e_522e                             ; $521c: $20 $10

	ld   l, [hl]                                     ; $521e: $6e
	inc  bc                                          ; $521f: $03
	jr   nz, jr_00e_5232                             ; $5220: $20 $10

	ld   e, d                                        ; $5222: $5a
	nop                                              ; $5223: $00
	db   $10                                         ; $5224: $10
	db   $10                                         ; $5225: $10
	ld   d, [hl]                                     ; $5226: $56
	nop                                              ; $5227: $00
	jr   nc, jr_00e_5237                             ; $5228: $30 $0d

	ld   [hl], b                                     ; $522a: $70
	inc  b                                           ; $522b: $04
	jr   nz, jr_00e_5236                             ; $522c: $20 $08

jr_00e_522e:
	ld   l, h                                        ; $522e: $6c
	inc  bc                                          ; $522f: $03
	jr   jr_00e_523a                                 ; $5230: $18 $08

jr_00e_5232:
	ld   e, b                                        ; $5232: $58
	nop                                              ; $5233: $00
	jr   z, jr_00e_523e                              ; $5234: $28 $08

jr_00e_5236:
	ld   e, [hl]                                     ; $5236: $5e

jr_00e_5237:
	ld   [bc], a                                     ; $5237: $02
	jr   z, jr_00e_523a                              ; $5238: $28 $00

jr_00e_523a:
	ld   h, d                                        ; $523a: $62
	inc  bc                                          ; $523b: $03
	jr   nz, jr_00e_523e                             ; $523c: $20 $00

jr_00e_523e:
	ld   l, d                                        ; $523e: $6a
	ld   [bc], a                                     ; $523f: $02
	jr   jr_00e_5242                                 ; $5240: $18 $00

jr_00e_5242:
	ld   h, b                                        ; $5242: $60
	nop                                              ; $5243: $00
	jr   nc, jr_00e_523e                             ; $5244: $30 $f8

	ld   h, [hl]                                     ; $5246: $66
	inc  bc                                          ; $5247: $03
	jr   nz, jr_00e_5242                             ; $5248: $20 $f8

	ld   h, h                                        ; $524a: $64
	ld   [bc], a                                     ; $524b: $02
	jr   nc, jr_00e_523e                             ; $524c: $30 $f0

	ld   l, b                                        ; $524e: $68
	inc  bc                                          ; $524f: $03
	jr   nc, jr_00e_527a                             ; $5250: $30 $28

	ld   d, h                                        ; $5252: $54
	ld   [bc], a                                     ; $5253: $02
	jr   nz, jr_00e_527e                             ; $5254: $20 $28

	ld   d, d                                        ; $5256: $52
	ld   [bc], a                                     ; $5257: $02
	db   $10                                         ; $5258: $10
	jr   z, jr_00e_52ab                              ; $5259: $28 $50

	ld   [bc], a                                     ; $525b: $02
	nop                                              ; $525c: $00
	jr   nz, @+$50                                   ; $525d: $20 $4e

	ld   bc, $18f8                                   ; $525f: $01 $f8 $18
	ld   c, h                                        ; $5262: $4c
	ld   bc, $10f8                                   ; $5263: $01 $f8 $10
	ld   c, d                                        ; $5266: $4a
	ld   bc, $08f8                                   ; $5267: $01 $f8 $08
	ld   c, b                                        ; $526a: $48
	ld   [bc], a                                     ; $526b: $02
	ld   hl, sp+$00                                  ; $526c: $f8 $00
	ld   b, [hl]                                     ; $526e: $46
	ld   [bc], a                                     ; $526f: $02
	ld   hl, sp-$08                                  ; $5270: $f8 $f8
	ld   b, h                                        ; $5272: $44
	ld   [bc], a                                     ; $5273: $02
	ld   [$42f0], sp                                 ; $5274: $08 $f0 $42
	ld   [bc], a                                     ; $5277: $02
	ld   hl, sp-$10                                  ; $5278: $f8 $f0

jr_00e_527a:
	ld   b, b                                        ; $527a: $40
	ld   [de], a                                     ; $527b: $12
	jr   nz, jr_00e_527e                             ; $527c: $20 $00

jr_00e_527e:
	ld   l, b                                        ; $527e: $68
	inc  b                                           ; $527f: $04
	jr   z, jr_00e_528a                              ; $5280: $28 $08

	ld   l, d                                        ; $5282: $6a
	inc  b                                           ; $5283: $04
	jr   z, jr_00e_529e                              ; $5284: $28 $18

	ld   l, h                                        ; $5286: $6c
	inc  b                                           ; $5287: $04
	jr   nc, jr_00e_52aa                             ; $5288: $30 $20

jr_00e_528a:
	ld   h, h                                        ; $528a: $64
	inc  bc                                          ; $528b: $03
	jr   nc, @+$2a                                   ; $528c: $30 $28

	ld   h, [hl]                                     ; $528e: $66
	inc  bc                                          ; $528f: $03
	jr   nc, jr_00e_527a                             ; $5290: $30 $e8

	ld   h, d                                        ; $5292: $62
	inc  bc                                          ; $5293: $03
	jr   nz, jr_00e_52ae                             ; $5294: $20 $18

jr_00e_5296:
	ld   h, b                                        ; $5296: $60
	nop                                              ; $5297: $00
	jr   nz, jr_00e_52aa                             ; $5298: $20 $10

jr_00e_529a:
	ld   e, [hl]                                     ; $529a: $5e
	nop                                              ; $529b: $00
	jr   nz, jr_00e_5296                             ; $529c: $20 $f8

jr_00e_529e:
	ld   e, b                                        ; $529e: $58
	ld   [bc], a                                     ; $529f: $02
	jr   nz, jr_00e_52a2                             ; $52a0: $20 $00

jr_00e_52a2:
	ld   e, d                                        ; $52a2: $5a
	ld   [bc], a                                     ; $52a3: $02
	db   $10                                         ; $52a4: $10
	jr   @+$54                                       ; $52a5: $18 $52

	ld   [bc], a                                     ; $52a7: $02
	jr   nz, jr_00e_529a                             ; $52a8: $20 $f0

jr_00e_52aa:
	ld   d, [hl]                                     ; $52aa: $56

jr_00e_52ab:
	ld   [bc], a                                     ; $52ab: $02
	jr   nz, jr_00e_5296                             ; $52ac: $20 $e8

jr_00e_52ae:
	ld   d, h                                        ; $52ae: $54
	ld   [bc], a                                     ; $52af: $02
	db   $10                                         ; $52b0: $10
	add  sp, $4e                                     ; $52b1: $e8 $4e
	ld   [bc], a                                     ; $52b3: $02
	db   $10                                         ; $52b4: $10
	ldh  a, [$50]                                    ; $52b5: $f0 $50
	ld   [bc], a                                     ; $52b7: $02
	nop                                              ; $52b8: $00
	jr   jr_00e_5307                                 ; $52b9: $18 $4c

	ld   [bc], a                                     ; $52bb: $02
	nop                                              ; $52bc: $00
	ldh  a, [rWY]                                    ; $52bd: $f0 $4a
	ld   [bc], a                                     ; $52bf: $02
	ld   hl, sp+$10                                  ; $52c0: $f8 $10
	ld   c, b                                        ; $52c2: $48
	ld   [bc], a                                     ; $52c3: $02
	ldh  a, [$08]                                    ; $52c4: $f0 $08
	ld   b, [hl]                                     ; $52c6: $46
	ld   bc, $00f0                                   ; $52c7: $01 $f0 $00
	ld   b, h                                        ; $52ca: $44
	ld   bc, $f8f0                                   ; $52cb: $01 $f0 $f8

jr_00e_52ce:
	ld   b, d                                        ; $52ce: $42
	ld   [bc], a                                     ; $52cf: $02
	ldh  a, [$f0]                                    ; $52d0: $f0 $f0

jr_00e_52d2:
	ld   b, b                                        ; $52d2: $40
	ld   [bc], a                                     ; $52d3: $02
	jr   nz, jr_00e_52de                             ; $52d4: $20 $08

	ld   e, h                                        ; $52d6: $5c
	db   $10                                         ; $52d7: $10
	jr   jr_00e_52d2                                 ; $52d8: $18 $f8

	ld   h, [hl]                                     ; $52da: $66
	ld   [bc], a                                     ; $52db: $02
	jr   nz, jr_00e_52de                             ; $52dc: $20 $00

jr_00e_52de:
	ld   e, d                                        ; $52de: $5a
	nop                                              ; $52df: $00
	jr   nz, jr_00e_52e2                             ; $52e0: $20 $00

jr_00e_52e2:
	ld   h, h                                        ; $52e2: $64
	ld   [bc], a                                     ; $52e3: $02
	jr   nc, jr_00e_52ce                             ; $52e4: $30 $e8

	ld   h, d                                        ; $52e6: $62
	inc  bc                                          ; $52e7: $03
	ld   e, $e8                                      ; $52e8: $1e $e8

jr_00e_52ea:
	ld   h, b                                        ; $52ea: $60
	ld   [bc], a                                     ; $52eb: $02
	jr   z, jr_00e_52de                              ; $52ec: $28 $f0

jr_00e_52ee:
	ld   e, [hl]                                     ; $52ee: $5e
	inc  b                                           ; $52ef: $04
	jr   nz, jr_00e_52fa                             ; $52f0: $20 $08

	ld   e, h                                        ; $52f2: $5c
	nop                                              ; $52f3: $00
	jr   nz, jr_00e_52ee                             ; $52f4: $20 $f8

	ld   e, b                                        ; $52f6: $58
	inc  b                                           ; $52f7: $04
	jr   jr_00e_52ea                                 ; $52f8: $18 $f0

jr_00e_52fa:
	ld   d, [hl]                                     ; $52fa: $56
	ld   [bc], a                                     ; $52fb: $02
	ld   [$54f0], sp                                 ; $52fc: $08 $f0 $54
	ld   [bc], a                                     ; $52ff: $02
	ld   hl, sp-$10                                  ; $5300: $f8 $f0
	ld   d, d                                        ; $5302: $52
	ld   [bc], a                                     ; $5303: $02
	jr   nc, jr_00e_532e                             ; $5304: $30 $28

	ld   d, b                                        ; $5306: $50

jr_00e_5307:
	inc  bc                                          ; $5307: $03
	jr   z, jr_00e_532a                              ; $5308: $28 $20

	ld   c, [hl]                                     ; $530a: $4e
	inc  bc                                          ; $530b: $03
	jr   nz, jr_00e_5326                             ; $530c: $20 $18

	ld   c, h                                        ; $530e: $4c
	inc  b                                           ; $530f: $04
	db   $10                                         ; $5310: $10
	jr   jr_00e_535d                                 ; $5311: $18 $4a

	ld   [bc], a                                     ; $5313: $02
	nop                                              ; $5314: $00
	jr   jr_00e_535f                                 ; $5315: $18 $48

	ld   [bc], a                                     ; $5317: $02
	ld   hl, sp+$10                                  ; $5318: $f8 $10
	ld   b, [hl]                                     ; $531a: $46
	ld   [bc], a                                     ; $531b: $02
	ldh  a, [$08]                                    ; $531c: $f0 $08

jr_00e_531e:
	ld   b, h                                        ; $531e: $44
	ld   bc, $00f0                                   ; $531f: $01 $f0 $00
	ld   b, d                                        ; $5322: $42
	ld   bc, $f8f0                                   ; $5323: $01 $f0 $f8

jr_00e_5326:
	ld   b, b                                        ; $5326: $40
	ld   [de], a                                     ; $5327: $12
	jr   nz, @+$05                                   ; $5328: $20 $03

jr_00e_532a:
	ld   h, [hl]                                     ; $532a: $66
	inc  b                                           ; $532b: $04
	jr   z, jr_00e_5346                              ; $532c: $28 $18

jr_00e_532e:
	ld   l, b                                        ; $532e: $68
	inc  b                                           ; $532f: $04
	jr   nc, @+$2a                                   ; $5330: $30 $28

	ld   h, d                                        ; $5332: $62
	inc  bc                                          ; $5333: $03
	jr   nc, jr_00e_531e                             ; $5334: $30 $e8

	ld   h, h                                        ; $5336: $64
	inc  bc                                          ; $5337: $03
	jr   z, @+$22                                    ; $5338: $28 $20

	ld   h, b                                        ; $533a: $60
	inc  bc                                          ; $533b: $03
	jr   nz, jr_00e_5356                             ; $533c: $20 $18

	ld   e, [hl]                                     ; $533e: $5e
	ld   [bc], a                                     ; $533f: $02
	jr   nz, jr_00e_5352                             ; $5340: $20 $10

jr_00e_5342:
	ld   e, h                                        ; $5342: $5c
	nop                                              ; $5343: $00
	jr   nz, jr_00e_534e                             ; $5344: $20 $08

jr_00e_5346:
	ld   e, d                                        ; $5346: $5a
	nop                                              ; $5347: $00
	jr   nz, jr_00e_534a                             ; $5348: $20 $00

jr_00e_534a:
	ld   e, b                                        ; $534a: $58
	ld   [bc], a                                     ; $534b: $02
	jr   nz, jr_00e_5346                             ; $534c: $20 $f8

jr_00e_534e:
	ld   d, [hl]                                     ; $534e: $56
	ld   [bc], a                                     ; $534f: $02
	jr   nz, jr_00e_5342                             ; $5350: $20 $f0

jr_00e_5352:
	ld   d, h                                        ; $5352: $54
	ld   [bc], a                                     ; $5353: $02
	ld   e, $e8                                      ; $5354: $1e $e8

jr_00e_5356:
	ld   d, d                                        ; $5356: $52
	ld   [bc], a                                     ; $5357: $02
	db   $10                                         ; $5358: $10
	ldh  a, [$50]                                    ; $5359: $f0 $50
	ld   [bc], a                                     ; $535b: $02
	nop                                              ; $535c: $00

jr_00e_535d:
	ldh  a, [$4e]                                    ; $535d: $f0 $4e

jr_00e_535f:
	ld   [bc], a                                     ; $535f: $02
	db   $10                                         ; $5360: $10
	jr   jr_00e_53af                                 ; $5361: $18 $4c

	ld   [bc], a                                     ; $5363: $02
	nop                                              ; $5364: $00
	jr   @+$4c                                       ; $5365: $18 $4a

	ld   [bc], a                                     ; $5367: $02
	ld   hl, sp+$10                                  ; $5368: $f8 $10
	ld   c, b                                        ; $536a: $48
	ld   [bc], a                                     ; $536b: $02
	ldh  a, [$08]                                    ; $536c: $f0 $08
	ld   b, [hl]                                     ; $536e: $46
	ld   bc, $00f0                                   ; $536f: $01 $f0 $00
	ld   b, h                                        ; $5372: $44
	ld   bc, $f8f0                                   ; $5373: $01 $f0 $f8
	ld   b, d                                        ; $5376: $42
	ld   [bc], a                                     ; $5377: $02
	ldh  a, [$f0]                                    ; $5378: $f0 $f0
	ld   b, b                                        ; $537a: $40
	ld   [de], a                                     ; $537b: $12
	jr   jr_00e_538e                                 ; $537c: $18 $10

	ld   l, d                                        ; $537e: $6a
	inc  b                                           ; $537f: $04
	jr   jr_00e_538a                                 ; $5380: $18 $08

jr_00e_5382:
	ld   l, b                                        ; $5382: $68
	inc  b                                           ; $5383: $04
	jr   nz, jr_00e_539e                             ; $5384: $20 $18

jr_00e_5386:
	ld   h, h                                        ; $5386: $64
	nop                                              ; $5387: $00
	ld   hl, sp-$08                                  ; $5388: $f8 $f8

jr_00e_538a:
	ld   h, [hl]                                     ; $538a: $66
	ld   bc, $f820                                   ; $538b: $01 $20 $f8

jr_00e_538e:
	ld   h, d                                        ; $538e: $62
	nop                                              ; $538f: $00
	jr   nz, jr_00e_5382                             ; $5390: $20 $f0

jr_00e_5392:
	ld   h, b                                        ; $5392: $60
	nop                                              ; $5393: $00
	jr   z, jr_00e_5386                              ; $5394: $28 $f0

	ld   e, h                                        ; $5396: $5c
	ld   [bc], a                                     ; $5397: $02
	jr   z, jr_00e_5392                              ; $5398: $28 $f8

	ld   e, [hl]                                     ; $539a: $5e
	ld   [bc], a                                     ; $539b: $02
	jr   nc, jr_00e_5386                             ; $539c: $30 $e8

jr_00e_539e:
	ld   e, d                                        ; $539e: $5a
	inc  bc                                          ; $539f: $03
	jr   nz, jr_00e_538a                             ; $53a0: $20 $e8

	ld   e, b                                        ; $53a2: $58
	ld   [bc], a                                     ; $53a3: $02
	db   $10                                         ; $53a4: $10
	add  sp, $56                                     ; $53a5: $e8 $56
	ld   [bc], a                                     ; $53a7: $02
	db   $10                                         ; $53a8: $10
	ldh  a, [rHDMA4]                                 ; $53a9: $f0 $54
	ld   [bc], a                                     ; $53ab: $02
	nop                                              ; $53ac: $00
	ldh  a, [rHDMA2]                                 ; $53ad: $f0 $52

jr_00e_53af:
	ld   [bc], a                                     ; $53af: $02
	jr   nc, jr_00e_53d2                             ; $53b0: $30 $20

	ld   d, b                                        ; $53b2: $50
	inc  bc                                          ; $53b3: $03
	jr   nz, jr_00e_53d6                             ; $53b4: $20 $20

	ld   c, [hl]                                     ; $53b6: $4e
	inc  bc                                          ; $53b7: $03
	jr   nz, jr_00e_53d2                             ; $53b8: $20 $18

	ld   c, h                                        ; $53ba: $4c
	inc  bc                                          ; $53bb: $03
	db   $10                                         ; $53bc: $10
	jr   jr_00e_5409                                 ; $53bd: $18 $4a

	ld   [bc], a                                     ; $53bf: $02
	nop                                              ; $53c0: $00
	jr   jr_00e_540b                                 ; $53c1: $18 $48

	ld   [bc], a                                     ; $53c3: $02
	ld   hl, sp+$10                                  ; $53c4: $f8 $10
	ld   b, [hl]                                     ; $53c6: $46
	ld   bc, $08f3                                   ; $53c7: $01 $f3 $08
	ld   b, h                                        ; $53ca: $44
	ld   bc, $00f0                                   ; $53cb: $01 $f0 $00

jr_00e_53ce:
	ld   b, d                                        ; $53ce: $42
	ld   bc, $f8f8                                   ; $53cf: $01 $f8 $f8

jr_00e_53d2:
	ld   b, b                                        ; $53d2: $40
	ld   [de], a                                     ; $53d3: $12
	nop                                              ; $53d4: $00
	nop                                              ; $53d5: $00

jr_00e_53d6:
	ld   b, h                                        ; $53d6: $44
	nop                                              ; $53d7: $00
	ldh  a, [rP1]                                    ; $53d8: $f0 $00

jr_00e_53da:
	ld   b, d                                        ; $53da: $42
	ld   bc, $1010                                   ; $53db: $01 $10 $10
	ld   l, [hl]                                     ; $53de: $6e
	nop                                              ; $53df: $00
	jr   nc, @-$1e                                   ; $53e0: $30 $e0

	ld   l, h                                        ; $53e2: $6c
	ld   [bc], a                                     ; $53e3: $02
	jr   z, jr_00e_53ce                              ; $53e4: $28 $e8

	ld   l, d                                        ; $53e6: $6a
	ld   [bc], a                                     ; $53e7: $02
	jr   nz, jr_00e_53da                             ; $53e8: $20 $f0

	ld   l, b                                        ; $53ea: $68
	ld   [bc], a                                     ; $53eb: $02
	jr   nc, @+$2a                                   ; $53ec: $30 $28

	ld   h, [hl]                                     ; $53ee: $66
	ld   [bc], a                                     ; $53ef: $02
	jr   z, @+$22                                    ; $53f0: $28 $20

	ld   h, h                                        ; $53f2: $64
	ld   [bc], a                                     ; $53f3: $02
	jr   nz, @+$1a                                   ; $53f4: $20 $18

	ld   h, d                                        ; $53f6: $62
	ld   [bc], a                                     ; $53f7: $02
	jr   nz, jr_00e_540a                             ; $53f8: $20 $10

	ld   h, b                                        ; $53fa: $60
	ld   [bc], a                                     ; $53fb: $02
	jr   jr_00e_53fe                                 ; $53fc: $18 $00

jr_00e_53fe:
	ld   e, h                                        ; $53fe: $5c
	inc  bc                                          ; $53ff: $03
	jr   nz, jr_00e_540a                             ; $5400: $20 $08

	ld   e, [hl]                                     ; $5402: $5e
	inc  bc                                          ; $5403: $03
	jr   jr_00e_53fe                                 ; $5404: $18 $f8

	ld   e, d                                        ; $5406: $5a
	inc  bc                                          ; $5407: $03
	db   $10                                         ; $5408: $10

jr_00e_5409:
	db   $10                                         ; $5409: $10

jr_00e_540a:
	ld   e, b                                        ; $540a: $58

jr_00e_540b:
	inc  b                                           ; $540b: $04
	db   $10                                         ; $540c: $10
	ld   [$0056], sp                                 ; $540d: $08 $56 $00
	nop                                              ; $5410: $00
	ld   [$0054], sp                                 ; $5411: $08 $54 $00
	ld   [$52f0], sp                                 ; $5414: $08 $f0 $52
	ld   bc, $f0f8                                   ; $5417: $01 $f8 $f0

jr_00e_541a:
	ld   d, b                                        ; $541a: $50
	ld   bc, $18f8                                   ; $541b: $01 $f8 $18
	ld   c, d                                        ; $541e: $4a
	ld   bc, $10f0                                   ; $541f: $01 $f0 $10
	ld   c, b                                        ; $5422: $48
	ld   bc, $08f0                                   ; $5423: $01 $f0 $08
	ld   b, [hl]                                     ; $5426: $46
	ld   bc, $f8f0                                   ; $5427: $01 $f0 $f8
	ld   b, b                                        ; $542a: $40
	ld   bc, $1808                                   ; $542b: $01 $08 $18
	ld   c, [hl]                                     ; $542e: $4e
	ld   bc, $2002                                   ; $542f: $01 $02 $20
	ld   c, h                                        ; $5432: $4c
	ld   de, $e030                                   ; $5433: $11 $30 $e0
	ld   l, [hl]                                     ; $5436: $6e
	ld   [bc], a                                     ; $5437: $02
	jr   nz, jr_00e_541a                             ; $5438: $20 $e0

jr_00e_543a:
	ld   l, b                                        ; $543a: $68
	ld   [bc], a                                     ; $543b: $02
	jr   nc, jr_00e_5466                             ; $543c: $30 $28

	ld   h, h                                        ; $543e: $64
	ld   [bc], a                                     ; $543f: $02
	jr   nz, jr_00e_5452                             ; $5440: $20 $10

	ld   e, [hl]                                     ; $5442: $5e
	inc  bc                                          ; $5443: $03
	jr   jr_00e_5456                                 ; $5444: $18 $10

jr_00e_5446:
	ld   l, h                                        ; $5446: $6c
	ld   [bc], a                                     ; $5447: $02
	jr   z, @+$22                                    ; $5448: $28 $20

	ld   h, d                                        ; $544a: $62
	ld   [bc], a                                     ; $544b: $02
	jr   nz, jr_00e_5466                             ; $544c: $20 $18

	ld   h, b                                        ; $544e: $60
	ld   [bc], a                                     ; $544f: $02
	jr   z, jr_00e_543a                              ; $5450: $28 $e8

jr_00e_5452:
	ld   l, d                                        ; $5452: $6a
	ld   [bc], a                                     ; $5453: $02
	jr   nz, jr_00e_5446                             ; $5454: $20 $f0

jr_00e_5456:
	ld   h, [hl]                                     ; $5456: $66
	ld   [bc], a                                     ; $5457: $02
	jr   jr_00e_5462                                 ; $5458: $18 $08

jr_00e_545a:
	ld   e, h                                        ; $545a: $5c
	nop                                              ; $545b: $00
	jr   jr_00e_545e                                 ; $545c: $18 $00

jr_00e_545e:
	ld   e, d                                        ; $545e: $5a
	nop                                              ; $545f: $00
	jr   jr_00e_545a                                 ; $5460: $18 $f8

jr_00e_5462:
	ld   e, b                                        ; $5462: $58
	inc  bc                                          ; $5463: $03
	db   $10                                         ; $5464: $10
	db   $10                                         ; $5465: $10

jr_00e_5466:
	ld   d, [hl]                                     ; $5466: $56
	nop                                              ; $5467: $00
	ld   [$5408], sp                                 ; $5468: $08 $08 $54
	nop                                              ; $546b: $00
	nop                                              ; $546c: $00
	nop                                              ; $546d: $00
	ld   d, d                                        ; $546e: $52
	nop                                              ; $546f: $00
	ld   [$50f0], sp                                 ; $5470: $08 $f0 $50
	ld   bc, $f0f8                                   ; $5473: $01 $f8 $f0
	ld   c, [hl]                                     ; $5476: $4e
	ld   bc, $1808                                   ; $5477: $01 $08 $18

jr_00e_547a:
	ld   c, h                                        ; $547a: $4c
	ld   bc, $2003                                   ; $547b: $01 $03 $20
	ld   c, d                                        ; $547e: $4a
	ld   bc, $18f8                                   ; $547f: $01 $f8 $18
	ld   c, b                                        ; $5482: $48
	ld   bc, $10f0                                   ; $5483: $01 $f0 $10
	ld   b, [hl]                                     ; $5486: $46
	ld   bc, $08f0                                   ; $5487: $01 $f0 $08
	ld   b, h                                        ; $548a: $44
	ld   bc, $00f0                                   ; $548b: $01 $f0 $00
	ld   b, d                                        ; $548e: $42
	ld   bc, $f8f0                                   ; $548f: $01 $f0 $f8
	ld   b, b                                        ; $5492: $40
	ld   de, $f020                                   ; $5493: $11 $20 $f0
	halt                                             ; $5496: $76
	inc  bc                                          ; $5497: $03
	jr   nc, jr_00e_547a                             ; $5498: $30 $e0

	ld   [hl], h                                     ; $549a: $74
	inc  bc                                          ; $549b: $03
	jr   nc, jr_00e_54c6                             ; $549c: $30 $28

jr_00e_549e:
	ld   [hl], d                                     ; $549e: $72
	inc  bc                                          ; $549f: $03
	jr   z, jr_00e_54c2                              ; $54a0: $28 $20

jr_00e_54a2:
	ld   [hl], b                                     ; $54a2: $70
	inc  bc                                          ; $54a3: $03
	jr   nz, @+$1a                                   ; $54a4: $20 $18

jr_00e_54a6:
	ld   l, [hl]                                     ; $54a6: $6e
	nop                                              ; $54a7: $00
	jr   nz, jr_00e_54ba                             ; $54a8: $20 $10

	ld   l, h                                        ; $54aa: $6c
	nop                                              ; $54ab: $00
	jr   nz, jr_00e_54a6                             ; $54ac: $20 $f8

	ld   l, d                                        ; $54ae: $6a
	nop                                              ; $54af: $00
	jr   nz, jr_00e_54a2                             ; $54b0: $20 $f0

	ld   l, b                                        ; $54b2: $68
	nop                                              ; $54b3: $00
	jr   nz, jr_00e_549e                             ; $54b4: $20 $e8

	ld   h, [hl]                                     ; $54b6: $66
	inc  b                                           ; $54b7: $04
	jr   jr_00e_54da                                 ; $54b8: $18 $20

jr_00e_54ba:
	ld   h, h                                        ; $54ba: $64
	nop                                              ; $54bb: $00
	db   $10                                         ; $54bc: $10
	jr   @+$64                                       ; $54bd: $18 $62

	ld   bc, $f010                                   ; $54bf: $01 $10 $f0

jr_00e_54c2:
	ld   h, b                                        ; $54c2: $60
	ld   bc, $e810                                   ; $54c3: $01 $10 $e8

jr_00e_54c6:
	ld   e, [hl]                                     ; $54c6: $5e
	ld   [bc], a                                     ; $54c7: $02
	ld   [$5c20], sp                                 ; $54c8: $08 $20 $5c
	ld   [bc], a                                     ; $54cb: $02
	nop                                              ; $54cc: $00
	jr   @+$5c                                       ; $54cd: $18 $5a

	ld   bc, $1000                                   ; $54cf: $01 $00 $10
	ld   e, b                                        ; $54d2: $58
	ld   bc, $0800                                   ; $54d3: $01 $00 $08
	ld   d, [hl]                                     ; $54d6: $56
	nop                                              ; $54d7: $00
	nop                                              ; $54d8: $00
	nop                                              ; $54d9: $00

jr_00e_54da:
	ld   d, h                                        ; $54da: $54
	nop                                              ; $54db: $00
	nop                                              ; $54dc: $00
	ld   hl, sp+$52                                  ; $54dd: $f8 $52
	ld   bc, $f000                                   ; $54df: $01 $00 $f0
	ld   d, b                                        ; $54e2: $50
	ld   bc, $20f8                                   ; $54e3: $01 $f8 $20
	ld   c, h                                        ; $54e6: $4c
	ld   [bc], a                                     ; $54e7: $02
	ldh  a, [rAUD2LOW]                               ; $54e8: $f0 $18

jr_00e_54ea:
	ld   c, d                                        ; $54ea: $4a
	ld   [bc], a                                     ; $54eb: $02
	ldh  a, [rAUD1SWEEP]                             ; $54ec: $f0 $10
	ld   c, b                                        ; $54ee: $48
	ld   [bc], a                                     ; $54ef: $02
	ldh  a, [$08]                                    ; $54f0: $f0 $08
	ld   b, [hl]                                     ; $54f2: $46
	ld   [bc], a                                     ; $54f3: $02
	ldh  a, [rP1]                                    ; $54f4: $f0 $00

jr_00e_54f6:
	ld   b, h                                        ; $54f6: $44
	ld   [bc], a                                     ; $54f7: $02
	ldh  a, [$f8]                                    ; $54f8: $f0 $f8
	ld   b, d                                        ; $54fa: $42
	ld   [bc], a                                     ; $54fb: $02
	ldh  a, [$f0]                                    ; $54fc: $f0 $f0
	ld   b, b                                        ; $54fe: $40
	ld   [bc], a                                     ; $54ff: $02
	nop                                              ; $5500: $00
	add  sp, $4e                                     ; $5501: $e8 $4e
	ld   [de], a                                     ; $5503: $12
	jr   z, jr_00e_54f6                              ; $5504: $28 $f0

	ld   a, b                                        ; $5506: $78
	inc  b                                           ; $5507: $04
	jr   nz, jr_00e_54ea                             ; $5508: $20 $e0

jr_00e_550a:
	halt                                             ; $550a: $76
	nop                                              ; $550b: $00
	db   $10                                         ; $550c: $10
	add  sp, $74                                     ; $550d: $e8 $74
	nop                                              ; $550f: $00
	inc  e                                           ; $5510: $1c
	add  sp, $72                                     ; $5511: $e8 $72
	inc  b                                           ; $5513: $04
	jr   nc, jr_00e_5536                             ; $5514: $30 $20

	ld   [hl], b                                     ; $5516: $70
	nop                                              ; $5517: $00
	jr   z, jr_00e_5532                              ; $5518: $28 $18

	ld   l, [hl]                                     ; $551a: $6e
	inc  bc                                          ; $551b: $03
	jr   nz, @-$0e                                   ; $551c: $20 $f0

	ld   l, h                                        ; $551e: $6c
	nop                                              ; $551f: $00
	jr   nc, jr_00e_550a                             ; $5520: $30 $e8

	ld   l, d                                        ; $5522: $6a
	nop                                              ; $5523: $00
	jr   nz, @-$16                                   ; $5524: $20 $e8

	ld   l, b                                        ; $5526: $68
	inc  bc                                          ; $5527: $03
	jr   nc, jr_00e_550a                             ; $5528: $30 $e0

	ld   h, [hl]                                     ; $552a: $66
	nop                                              ; $552b: $00
	jr   nz, @-$1e                                   ; $552c: $20 $e0

	ld   h, h                                        ; $552e: $64
	inc  b                                           ; $552f: $04
	jr   nc, jr_00e_550a                             ; $5530: $30 $d8

jr_00e_5532:
	ld   h, d                                        ; $5532: $62
	nop                                              ; $5533: $00
	jr   nz, @-$26                                   ; $5534: $20 $d8

jr_00e_5536:
	ld   h, b                                        ; $5536: $60
	nop                                              ; $5537: $00
	jr   jr_00e_555a                                 ; $5538: $18 $20

	ld   e, [hl]                                     ; $553a: $5e
	nop                                              ; $553b: $00
	db   $10                                         ; $553c: $10
	jr   jr_00e_559b                                 ; $553d: $18 $5c

	ld   bc, $2008                                   ; $553f: $01 $08 $20
	ld   e, d                                        ; $5542: $5a
	ld   [bc], a                                     ; $5543: $02
	ld   hl, sp+$20                                  ; $5544: $f8 $20
	ld   e, b                                        ; $5546: $58
	ld   [bc], a                                     ; $5547: $02
	nop                                              ; $5548: $00
	jr   @+$58                                       ; $5549: $18 $56

	ld   bc, $18f0                                   ; $554b: $01 $f0 $18
	ld   d, h                                        ; $554e: $54
	ld   [bc], a                                     ; $554f: $02
	nop                                              ; $5550: $00
	db   $10                                         ; $5551: $10
	ld   d, d                                        ; $5552: $52
	ld   [bc], a                                     ; $5553: $02
	ldh  a, [rAUD1SWEEP]                             ; $5554: $f0 $10
	ld   d, b                                        ; $5556: $50
	ld   [bc], a                                     ; $5557: $02
	ldh  a, [$08]                                    ; $5558: $f0 $08

jr_00e_555a:
	ld   c, [hl]                                     ; $555a: $4e
	ld   [bc], a                                     ; $555b: $02
	ldh  a, [rP1]                                    ; $555c: $f0 $00
	ld   c, h                                        ; $555e: $4c
	ld   [bc], a                                     ; $555f: $02
	nop                                              ; $5560: $00
	ld   hl, sp+$4a                                  ; $5561: $f8 $4a
	ld   [bc], a                                     ; $5563: $02
	ldh  a, [$f8]                                    ; $5564: $f0 $f8

jr_00e_5566:
	ld   c, b                                        ; $5566: $48
	ld   [bc], a                                     ; $5567: $02
	inc  b                                           ; $5568: $04
	ldh  a, [rDMA]                                   ; $5569: $f0 $46
	ld   [bc], a                                     ; $556b: $02
	db   $f4                                         ; $556c: $f4
	ldh  a, [rLY]                                    ; $556d: $f0 $44
	ld   [bc], a                                     ; $556f: $02
	db   $10                                         ; $5570: $10
	add  sp, $42                                     ; $5571: $e8 $42
	ld   [bc], a                                     ; $5573: $02
	nop                                              ; $5574: $00
	add  sp, $40                                     ; $5575: $e8 $40
	ld   [de], a                                     ; $5577: $12
	jr   nz, jr_00e_558a                             ; $5578: $20 $10

	ld   [hl], b                                     ; $557a: $70
	inc  bc                                          ; $557b: $03
	jr   nz, @-$06                                   ; $557c: $20 $f8

	ld   l, [hl]                                     ; $557e: $6e
	inc  bc                                          ; $557f: $03
	jr   nc, @-$16                                   ; $5580: $30 $e8

	ld   l, h                                        ; $5582: $6c
	inc  bc                                          ; $5583: $03
	jr   nc, jr_00e_5566                             ; $5584: $30 $e0

	ld   l, d                                        ; $5586: $6a
	inc  bc                                          ; $5587: $03
	jr   nc, @+$22                                   ; $5588: $30 $20

jr_00e_558a:
	ld   l, b                                        ; $558a: $68
	inc  bc                                          ; $558b: $03
	jr   nz, jr_00e_55ae                             ; $558c: $20 $20

jr_00e_558e:
	ld   h, [hl]                                     ; $558e: $66
	nop                                              ; $558f: $00
	jr   nz, @+$1a                                   ; $5590: $20 $18

jr_00e_5592:
	ld   h, h                                        ; $5592: $64
	inc  b                                           ; $5593: $04
	jr   nz, @+$12                                   ; $5594: $20 $10

	ld   h, d                                        ; $5596: $62
	nop                                              ; $5597: $00
	jr   nz, jr_00e_5592                             ; $5598: $20 $f8

	ld   h, b                                        ; $559a: $60

jr_00e_559b:
	nop                                              ; $559b: $00
	jr   nz, jr_00e_558e                             ; $559c: $20 $f0

	ld   e, [hl]                                     ; $559e: $5e
	inc  b                                           ; $559f: $04
	jr   nz, jr_00e_558a                             ; $55a0: $20 $e8

	ld   e, h                                        ; $55a2: $5c
	nop                                              ; $55a3: $00
	db   $10                                         ; $55a4: $10
	jr   nz, @+$5c                                   ; $55a5: $20 $5a

	ld   [bc], a                                     ; $55a7: $02
	db   $10                                         ; $55a8: $10
	jr   jr_00e_5603                                 ; $55a9: $18 $58

	ld   bc, $f010                                   ; $55ab: $01 $10 $f0

jr_00e_55ae:
	ld   d, [hl]                                     ; $55ae: $56
	ld   bc, $e810                                   ; $55af: $01 $10 $e8
	ld   d, h                                        ; $55b2: $54
	ld   [bc], a                                     ; $55b3: $02
	nop                                              ; $55b4: $00
	jr   nz, @+$54                                   ; $55b5: $20 $52

	ld   [bc], a                                     ; $55b7: $02
	nop                                              ; $55b8: $00
	ld   [$0050], sp                                 ; $55b9: $08 $50 $00
	nop                                              ; $55bc: $00
	nop                                              ; $55bd: $00
	ld   c, [hl]                                     ; $55be: $4e
	nop                                              ; $55bf: $00
	nop                                              ; $55c0: $00
	add  sp, $4c                                     ; $55c1: $e8 $4c
	ld   [bc], a                                     ; $55c3: $02
	ldh  a, [rAUD2LOW]                               ; $55c4: $f0 $18
	ld   c, d                                        ; $55c6: $4a
	ld   [bc], a                                     ; $55c7: $02
	ldh  a, [rAUD1SWEEP]                             ; $55c8: $f0 $10

jr_00e_55ca:
	ld   c, b                                        ; $55ca: $48
	ld   [bc], a                                     ; $55cb: $02
	ldh  a, [$08]                                    ; $55cc: $f0 $08
	ld   b, [hl]                                     ; $55ce: $46
	ld   [bc], a                                     ; $55cf: $02
	ldh  a, [rP1]                                    ; $55d0: $f0 $00

jr_00e_55d2:
	ld   b, h                                        ; $55d2: $44
	ld   [bc], a                                     ; $55d3: $02
	ldh  a, [$f8]                                    ; $55d4: $f0 $f8

jr_00e_55d6:
	ld   b, d                                        ; $55d6: $42
	ld   [bc], a                                     ; $55d7: $02
	ldh  a, [$f0]                                    ; $55d8: $f0 $f0

jr_00e_55da:
	ld   b, b                                        ; $55da: $40
	ld   [de], a                                     ; $55db: $12
	jr   nz, jr_00e_55d6                             ; $55dc: $20 $f8

	ld   [hl], b                                     ; $55de: $70
	nop                                              ; $55df: $00
	jr   z, jr_00e_55ca                              ; $55e0: $28 $e8

	ld   l, h                                        ; $55e2: $6c
	ld   [bc], a                                     ; $55e3: $02
	jr   nz, jr_00e_55d6                             ; $55e4: $20 $f0

	ld   l, [hl]                                     ; $55e6: $6e
	ld   [bc], a                                     ; $55e7: $02
	jr   nc, jr_00e_55da                             ; $55e8: $30 $f0

	ld   [hl], d                                     ; $55ea: $72
	nop                                              ; $55eb: $00
	db   $10                                         ; $55ec: $10
	ret  c                                           ; $55ed: $d8

	ld   h, [hl]                                     ; $55ee: $66
	ld   [bc], a                                     ; $55ef: $02
	jr   jr_00e_55d2                                 ; $55f0: $18 $e0

	ld   l, d                                        ; $55f2: $6a
	ld   [bc], a                                     ; $55f3: $02
	ld   [$68e0], sp                                 ; $55f4: $08 $e0 $68
	ld   [bc], a                                     ; $55f7: $02
	jr   nc, @+$1a                                   ; $55f8: $30 $18

	ld   h, h                                        ; $55fa: $64
	ld   [bc], a                                     ; $55fb: $02
	jr   nc, @+$12                                   ; $55fc: $30 $10

	ld   h, d                                        ; $55fe: $62
	ld   [bc], a                                     ; $55ff: $02
	jr   nz, @+$22                                   ; $5600: $20 $20

	ld   h, b                                        ; $5602: $60

jr_00e_5603:
	nop                                              ; $5603: $00
	jr   nz, jr_00e_561e                             ; $5604: $20 $18

	ld   e, [hl]                                     ; $5606: $5e
	nop                                              ; $5607: $00
	jr   nz, jr_00e_561a                             ; $5608: $20 $10

	ld   e, h                                        ; $560a: $5c
	nop                                              ; $560b: $00
	db   $10                                         ; $560c: $10
	jr   z, @+$5c                                    ; $560d: $28 $5a

	ld   [bc], a                                     ; $560f: $02
	nop                                              ; $5610: $00
	jr   z, jr_00e_566b                              ; $5611: $28 $58

	ld   [bc], a                                     ; $5613: $02
	nop                                              ; $5614: $00
	jr   nz, @+$58                                   ; $5615: $20 $56

	ld   [bc], a                                     ; $5617: $02
	ld   hl, sp+$18                                  ; $5618: $f8 $18

jr_00e_561a:
	ld   d, h                                        ; $561a: $54
	ld   [bc], a                                     ; $561b: $02
	nop                                              ; $561c: $00
	db   $10                                         ; $561d: $10

jr_00e_561e:
	ld   d, d                                        ; $561e: $52
	nop                                              ; $561f: $00
	nop                                              ; $5620: $00
	ld   [$0050], sp                                 ; $5621: $08 $50 $00
	nop                                              ; $5624: $00
	nop                                              ; $5625: $00
	ld   c, [hl]                                     ; $5626: $4e
	nop                                              ; $5627: $00
	ldh  a, [rAUD1SWEEP]                             ; $5628: $f0 $10
	ld   c, h                                        ; $562a: $4c
	ld   [bc], a                                     ; $562b: $02
	ldh  a, [$08]                                    ; $562c: $f0 $08
	ld   c, d                                        ; $562e: $4a
	ld   [bc], a                                     ; $562f: $02
	ldh  a, [rP1]                                    ; $5630: $f0 $00
	ld   c, b                                        ; $5632: $48
	ld   [bc], a                                     ; $5633: $02
	ldh  a, [$f8]                                    ; $5634: $f0 $f8
	ld   b, [hl]                                     ; $5636: $46
	ld   [bc], a                                     ; $5637: $02
	ld   hl, sp-$10                                  ; $5638: $f8 $f0
	ld   b, h                                        ; $563a: $44
	ld   [bc], a                                     ; $563b: $02
	nop                                              ; $563c: $00
	add  sp, $42                                     ; $563d: $e8 $42
	ld   [bc], a                                     ; $563f: $02
	ldh  a, [$e8]                                    ; $5640: $f0 $e8
	ld   b, b                                        ; $5642: $40
	ld   [de], a                                     ; $5643: $12
	jr   nz, jr_00e_564e                             ; $5644: $20 $08

jr_00e_5646:
	halt                                             ; $5646: $76
	nop                                              ; $5647: $00
	jr   nz, jr_00e_564a                             ; $5648: $20 $00

jr_00e_564a:
	ld   [hl], h                                     ; $564a: $74
	nop                                              ; $564b: $00
	jr   nc, @-$0e                                   ; $564c: $30 $f0

jr_00e_564e:
	ld   [hl], d                                     ; $564e: $72
	ld   bc, $e830                                   ; $564f: $01 $30 $e8
	ld   [hl], b                                     ; $5652: $70
	inc  bc                                          ; $5653: $03
	jr   nz, jr_00e_564e                             ; $5654: $20 $f8

	ld   l, [hl]                                     ; $5656: $6e
	inc  b                                           ; $5657: $04
	jr   nz, jr_00e_564a                             ; $5658: $20 $f0

	ld   l, h                                        ; $565a: $6c
	ld   [bc], a                                     ; $565b: $02
	jr   jr_00e_5646                                 ; $565c: $18 $e8

	ld   l, d                                        ; $565e: $6a
	nop                                              ; $565f: $00
	db   $10                                         ; $5660: $10
	ldh  [rBCPS], a                                  ; $5661: $e0 $68
	inc  bc                                          ; $5663: $03
	db   $10                                         ; $5664: $10
	ldh  [$66], a                                    ; $5665: $e0 $66
	ld   bc, $e800                                   ; $5667: $01 $00 $e8
	ld   h, h                                        ; $566a: $64

jr_00e_566b:
	ld   bc, $0800                                   ; $566b: $01 $00 $08
	ld   h, d                                        ; $566e: $62
	nop                                              ; $566f: $00
	nop                                              ; $5670: $00
	nop                                              ; $5671: $00
	ld   h, b                                        ; $5672: $60
	nop                                              ; $5673: $00
	jr   nc, jr_00e_56a6                             ; $5674: $30 $30

	ld   e, [hl]                                     ; $5676: $5e
	ld   bc, $2828                                   ; $5677: $01 $28 $28
	ld   e, h                                        ; $567a: $5c
	ld   bc, $1028                                   ; $567b: $01 $28 $10
	ld   d, h                                        ; $567e: $54
	inc  bc                                          ; $567f: $03
	jr   nc, @+$1a                                   ; $5680: $30 $18

	ld   d, [hl]                                     ; $5682: $56
	inc  bc                                          ; $5683: $03
	jr   z, jr_00e_56a6                              ; $5684: $28 $20

	ld   e, d                                        ; $5686: $5a
	ld   bc, $1828                                   ; $5687: $01 $28 $18
	ld   e, b                                        ; $568a: $58
	inc  b                                           ; $568b: $04
	jr   nz, jr_00e_569e                             ; $568c: $20 $10

	ld   d, d                                        ; $568e: $52
	nop                                              ; $568f: $00
	jr   jr_00e_56b2                                 ; $5690: $18 $20

	ld   d, b                                        ; $5692: $50
	nop                                              ; $5693: $00
	jr   jr_00e_56ae                                 ; $5694: $18 $18

	ld   c, [hl]                                     ; $5696: $4e
	nop                                              ; $5697: $00
	ld   [$4c18], sp                                 ; $5698: $08 $18 $4c
	ld   [bc], a                                     ; $569b: $02
	ld   hl, sp+$18                                  ; $569c: $f8 $18

jr_00e_569e:
	ld   c, d                                        ; $569e: $4a
	ld   bc, $10f0                                   ; $569f: $01 $f0 $10
	ld   c, b                                        ; $56a2: $48
	ld   bc, $08f0                                   ; $56a3: $01 $f0 $08

jr_00e_56a6:
	ld   b, [hl]                                     ; $56a6: $46
	ld   bc, $00f0                                   ; $56a7: $01 $f0 $00
	ld   b, h                                        ; $56aa: $44
	ld   bc, $f8f0                                   ; $56ab: $01 $f0 $f8

jr_00e_56ae:
	ld   b, d                                        ; $56ae: $42
	ld   bc, $f0f0                                   ; $56af: $01 $f0 $f0

jr_00e_56b2:
	ld   b, b                                        ; $56b2: $40
	ld   de, $1820                                   ; $56b3: $11 $20 $18
	ld   l, [hl]                                     ; $56b6: $6e
	ld   bc, $f820                                   ; $56b7: $01 $20 $f8
	ld   l, h                                        ; $56ba: $6c
	ld   bc, $f020                                   ; $56bb: $01 $20 $f0

jr_00e_56be:
	ld   l, d                                        ; $56be: $6a
	ld   bc, $e030                                   ; $56bf: $01 $30 $e0

jr_00e_56c2:
	ld   l, b                                        ; $56c2: $68
	ld   bc, $e828                                   ; $56c3: $01 $28 $e8
	ld   h, [hl]                                     ; $56c6: $66
	inc  bc                                          ; $56c7: $03
	jr   nz, jr_00e_56c2                             ; $56c8: $20 $f8

	ld   h, h                                        ; $56ca: $64
	ld   [bc], a                                     ; $56cb: $02
	jr   nz, jr_00e_56be                             ; $56cc: $20 $f0

	ld   h, d                                        ; $56ce: $62
	ld   [bc], a                                     ; $56cf: $02
	db   $10                                         ; $56d0: $10
	ldh  a, [$60]                                    ; $56d1: $f0 $60
	ld   bc, $e808                                   ; $56d3: $01 $08 $e8
	ld   e, [hl]                                     ; $56d6: $5e
	ld   bc, $e8f8                                   ; $56d7: $01 $f8 $e8
	ld   e, h                                        ; $56da: $5c
	ld   bc, $2830                                   ; $56db: $01 $30 $28
	ld   e, d                                        ; $56de: $5a
	ld   bc, $2030                                   ; $56df: $01 $30 $20
	ld   e, b                                        ; $56e2: $58
	inc  bc                                          ; $56e3: $03
	jr   nc, jr_00e_56fe                             ; $56e4: $30 $18

	ld   d, [hl]                                     ; $56e6: $56
	nop                                              ; $56e7: $00
	jr   nc, @+$12                                   ; $56e8: $30 $10

	ld   d, h                                        ; $56ea: $54
	nop                                              ; $56eb: $00
	jr   nz, jr_00e_570e                             ; $56ec: $20 $20

	ld   d, d                                        ; $56ee: $52
	inc  bc                                          ; $56ef: $03
	jr   nz, jr_00e_570a                             ; $56f0: $20 $18

	ld   d, b                                        ; $56f2: $50
	ld   [bc], a                                     ; $56f3: $02
	jr   nz, jr_00e_5706                             ; $56f4: $20 $10

	ld   c, [hl]                                     ; $56f6: $4e
	ld   [bc], a                                     ; $56f7: $02
	db   $10                                         ; $56f8: $10
	jr   jr_00e_5747                                 ; $56f9: $18 $4c

	ld   bc, $1800                                   ; $56fb: $01 $00 $18

jr_00e_56fe:
	ld   c, d                                        ; $56fe: $4a
	ld   bc, $10f8                                   ; $56ff: $01 $f8 $10
	ld   c, b                                        ; $5702: $48
	ld   bc, $08f8                                   ; $5703: $01 $f8 $08

jr_00e_5706:
	ld   b, [hl]                                     ; $5706: $46
	ld   bc, $f0f0                                   ; $5707: $01 $f0 $f0

jr_00e_570a:
	ld   b, b                                        ; $570a: $40
	ld   bc, $00f0                                   ; $570b: $01 $f0 $00

jr_00e_570e:
	ld   b, h                                        ; $570e: $44
	ld   bc, $f8f0                                   ; $570f: $01 $f0 $f8
	ld   b, d                                        ; $5712: $42
	ld   de, $1028                                   ; $5713: $11 $28 $10
	ld   h, d                                        ; $5716: $62
	inc  b                                           ; $5717: $04
	jr   nz, jr_00e_572a                             ; $5718: $20 $10

	ld   e, h                                        ; $571a: $5c
	nop                                              ; $571b: $00
	jr   nz, jr_00e_5726                             ; $571c: $20 $08

	ld   e, d                                        ; $571e: $5a
	nop                                              ; $571f: $00
	jr   nc, jr_00e_5732                             ; $5720: $30 $10

	ld   a, d                                        ; $5722: $7a
	inc  b                                           ; $5723: $04
	jr   c, jr_00e_5726                              ; $5724: $38 $00

jr_00e_5726:
	ld   a, b                                        ; $5726: $78
	inc  b                                           ; $5727: $04
	jr   z, jr_00e_572a                              ; $5728: $28 $00

jr_00e_572a:
	halt                                             ; $572a: $76
	inc  b                                           ; $572b: $04
	jr   c, jr_00e_5726                              ; $572c: $38 $f8

	ld   [hl], h                                     ; $572e: $74
	inc  b                                           ; $572f: $04
	jr   z, jr_00e_572a                              ; $5730: $28 $f8

jr_00e_5732:
	ld   [hl], d                                     ; $5732: $72
	inc  b                                           ; $5733: $04
	jr   nc, @+$2a                                   ; $5734: $30 $28

	ld   [hl], b                                     ; $5736: $70
	ld   bc, $e038                                   ; $5737: $01 $38 $e0
	ld   l, h                                        ; $573a: $6c
	inc  b                                           ; $573b: $04
	jr   nc, @+$22                                   ; $573c: $30 $20

	ld   l, [hl]                                     ; $573e: $6e
	ld   bc, $d830                                   ; $573f: $01 $30 $d8
	ld   l, d                                        ; $5742: $6a
	ld   [bc], a                                     ; $5743: $02
	jr   nc, jr_00e_5726                             ; $5744: $30 $e0

jr_00e_5746:
	ld   l, b                                        ; $5746: $68

jr_00e_5747:
	ld   [bc], a                                     ; $5747: $02
	jr   z, jr_00e_5732                              ; $5748: $28 $e8

	ld   h, [hl]                                     ; $574a: $66
	ld   [bc], a                                     ; $574b: $02
	jr   nz, jr_00e_5746                             ; $574c: $20 $f8

	ld   h, h                                        ; $574e: $64
	ld   [bc], a                                     ; $574f: $02
	daa                                              ; $5750: $27
	jr   nz, jr_00e_57b3                             ; $5751: $20 $60

	inc  bc                                          ; $5753: $03
	jr   nz, jr_00e_576e                             ; $5754: $20 $18

	ld   e, [hl]                                     ; $5756: $5e
	ld   bc, $0820                                   ; $5757: $01 $20 $08
	ld   e, b                                        ; $575a: $58
	inc  b                                           ; $575b: $04
	dec  e                                           ; $575c: $1d
	ldh  a, [rRP]                                    ; $575d: $f0 $56
	ld   bc, $f818                                   ; $575f: $01 $18 $f8
	ld   d, h                                        ; $5762: $54
	ld   bc, $1810                                   ; $5763: $01 $10 $18
	ld   d, d                                        ; $5766: $52
	ld   bc, $f010                                   ; $5767: $01 $10 $f0
	ld   d, b                                        ; $576a: $50
	ld   bc, $e808                                   ; $576b: $01 $08 $e8

jr_00e_576e:
	ld   b, d                                        ; $576e: $42
	ld   bc, $e8f8                                   ; $576f: $01 $f8 $e8
	ld   b, b                                        ; $5772: $40
	ld   bc, $1800                                   ; $5773: $01 $00 $18
	ld   c, [hl]                                     ; $5776: $4e
	ld   bc, $10f0                                   ; $5777: $01 $f0 $10
	ld   c, h                                        ; $577a: $4c
	ld   bc, $08f0                                   ; $577b: $01 $f0 $08
	ld   c, d                                        ; $577e: $4a
	ld   bc, $00f0                                   ; $577f: $01 $f0 $00
	ld   c, b                                        ; $5782: $48
	ld   bc, $f8f0                                   ; $5783: $01 $f0 $f8

jr_00e_5786:
	ld   b, [hl]                                     ; $5786: $46
	ld   bc, $f0f0                                   ; $5787: $01 $f0 $f0

jr_00e_578a:
	ld   b, h                                        ; $578a: $44
	ld   de, $2830                                   ; $578b: $11 $30 $28
	ld   h, b                                        ; $578e: $60
	inc  b                                           ; $578f: $04
	jr   z, jr_00e_578a                              ; $5790: $28 $f8

	ld   [hl], b                                     ; $5792: $70
	inc  bc                                          ; $5793: $03
	jr   z, jr_00e_5786                              ; $5794: $28 $f0

	ld   l, [hl]                                     ; $5796: $6e
	ld   bc, $e830                                   ; $5797: $01 $30 $e8
	ld   l, h                                        ; $579a: $6c
	ld   bc, $e028                                   ; $579b: $01 $28 $e0
	ld   l, d                                        ; $579e: $6a
	ld   bc, $e820                                   ; $579f: $01 $20 $e8
	ld   l, b                                        ; $57a2: $68
	ld   bc, $f018                                   ; $57a3: $01 $18 $f0
	ld   h, [hl]                                     ; $57a6: $66
	ld   bc, $f008                                   ; $57a7: $01 $08 $f0
	ld   h, h                                        ; $57aa: $64
	nop                                              ; $57ab: $00
	ld   a, [bc]                                     ; $57ac: $0a
	add  sp, $62                                     ; $57ad: $e8 $62
	ld   bc, $2028                                   ; $57af: $01 $28 $20
	ld   [hl], d                                     ; $57b2: $72

jr_00e_57b3:
	inc  bc                                          ; $57b3: $03
	jr   z, jr_00e_57d6                              ; $57b4: $28 $20

	ld   e, [hl]                                     ; $57b6: $5e
	inc  b                                           ; $57b7: $04
	jr   nz, jr_00e_57ca                             ; $57b8: $20 $10

	ld   e, h                                        ; $57ba: $5c
	inc  bc                                          ; $57bb: $03
	jr   jr_00e_57de                                 ; $57bc: $18 $20

	ld   e, b                                        ; $57be: $58
	ld   bc, $2810                                   ; $57bf: $01 $10 $28
	ld   d, [hl]                                     ; $57c2: $56
	ld   bc, $300a                                   ; $57c3: $01 $0a $30
	ld   d, h                                        ; $57c6: $54
	ld   bc, $2800                                   ; $57c7: $01 $00 $28

jr_00e_57ca:
	ld   d, d                                        ; $57ca: $52
	ld   bc, $2008                                   ; $57cb: $01 $08 $20
	ld   d, b                                        ; $57ce: $50
	ld   bc, $1818                                   ; $57cf: $01 $18 $18
	ld   e, d                                        ; $57d2: $5a
	ld   bc, $1808                                   ; $57d3: $01 $08 $18

jr_00e_57d6:
	ld   c, [hl]                                     ; $57d6: $4e
	ld   bc, $18f8                                   ; $57d7: $01 $f8 $18
	ld   c, h                                        ; $57da: $4c
	ld   bc, $10f0                                   ; $57db: $01 $f0 $10

jr_00e_57de:
	ld   c, d                                        ; $57de: $4a
	ld   bc, $08f0                                   ; $57df: $01 $f0 $08
	ld   c, b                                        ; $57e2: $48
	ld   bc, $00f0                                   ; $57e3: $01 $f0 $00
	ld   b, [hl]                                     ; $57e6: $46
	ld   bc, $f8f8                                   ; $57e7: $01 $f8 $f8

jr_00e_57ea:
	ld   b, h                                        ; $57ea: $44
	ld   bc, $f0f8                                   ; $57eb: $01 $f8 $f0
	ld   b, d                                        ; $57ee: $42
	ld   bc, $e8fa                                   ; $57ef: $01 $fa $e8

jr_00e_57f2:
	ld   b, b                                        ; $57f2: $40
	ld   de, $1018                                   ; $57f3: $11 $18 $10
	ld   l, [hl]                                     ; $57f6: $6e
	nop                                              ; $57f7: $00
	jr   jr_00e_57f2                                 ; $57f8: $18 $f8

	ld   l, h                                        ; $57fa: $6c
	nop                                              ; $57fb: $00
	jr   nc, jr_00e_5816                             ; $57fc: $30 $18

	ld   l, d                                        ; $57fe: $6a
	nop                                              ; $57ff: $00
	jr   nc, @+$2a                                   ; $5800: $30 $28

	ld   l, b                                        ; $5802: $68
	ld   bc, $2028                                   ; $5803: $01 $28 $20
	ld   h, [hl]                                     ; $5806: $66
	ld   bc, $1828                                   ; $5807: $01 $28 $18
	ld   h, h                                        ; $580a: $64
	ld   bc, $1028                                   ; $580b: $01 $28 $10
	ld   h, d                                        ; $580e: $62
	inc  b                                           ; $580f: $04
	jr   nc, jr_00e_57ea                             ; $5810: $30 $d8

	ld   e, [hl]                                     ; $5812: $5e
	ld   bc, $e028                                   ; $5813: $01 $28 $e0

jr_00e_5816:
	ld   h, b                                        ; $5816: $60
	ld   bc, $f020                                   ; $5817: $01 $20 $f0
	ld   e, b                                        ; $581a: $58
	ld   bc, $e820                                   ; $581b: $01 $20 $e8

jr_00e_581e:
	ld   d, [hl]                                     ; $581e: $56
	inc  bc                                          ; $581f: $03
	jr   jr_00e_5832                                 ; $5820: $18 $10

	ld   e, h                                        ; $5822: $5c
	ld   [bc], a                                     ; $5823: $02
	jr   jr_00e_581e                                 ; $5824: $18 $f8

	ld   e, d                                        ; $5826: $5a
	inc  bc                                          ; $5827: $03
	ld   a, [bc]                                     ; $5828: $0a
	jr   jr_00e_587f                                 ; $5829: $18 $54

	ld   [bc], a                                     ; $582b: $02
	ld   a, [$4a18]                                  ; $582c: $fa $18 $4a
	ld   [bc], a                                     ; $582f: $02
	ld   hl, sp+$10                                  ; $5830: $f8 $10

jr_00e_5832:
	ld   c, b                                        ; $5832: $48
	ld   [bc], a                                     ; $5833: $02
	ldh  a, [$08]                                    ; $5834: $f0 $08
	ld   b, [hl]                                     ; $5836: $46
	ld   [bc], a                                     ; $5837: $02
	ldh  a, [rP1]                                    ; $5838: $f0 $00

jr_00e_583a:
	ld   b, h                                        ; $583a: $44
	ld   [bc], a                                     ; $583b: $02
	ldh  a, [$f8]                                    ; $583c: $f0 $f8
	ld   b, d                                        ; $583e: $42
	ld   [bc], a                                     ; $583f: $02
	ldh  a, [$f0]                                    ; $5840: $f0 $f0
	ld   b, b                                        ; $5842: $40
	ld   [bc], a                                     ; $5843: $02
	nop                                              ; $5844: $00
	ldh  a, [$4e]                                    ; $5845: $f0 $4e
	ld   [bc], a                                     ; $5847: $02
	nop                                              ; $5848: $00
	add  sp, $4c                                     ; $5849: $e8 $4c
	ld   [bc], a                                     ; $584b: $02
	db   $10                                         ; $584c: $10
	ldh  a, [rHDMA2]                                 ; $584d: $f0 $52
	ld   [bc], a                                     ; $584f: $02
	db   $10                                         ; $5850: $10
	add  sp, $50                                     ; $5851: $e8 $50
	ld   [de], a                                     ; $5853: $12
	jr   @-$0e                                       ; $5854: $18 $f0

	ld   l, b                                        ; $5856: $68
	inc  bc                                          ; $5857: $03
	jr   @-$06                                       ; $5858: $18 $f8

	ld   l, d                                        ; $585a: $6a
	inc  bc                                          ; $585b: $03
	jr   jr_00e_586e                                 ; $585c: $18 $10

	ld   l, h                                        ; $585e: $6c
	inc  bc                                          ; $585f: $03
	jr   nc, jr_00e_583a                             ; $5860: $30 $d8

jr_00e_5862:
	ld   h, [hl]                                     ; $5862: $66
	ld   bc, $e028                                   ; $5863: $01 $28 $e0
	ld   h, h                                        ; $5866: $64
	ld   bc, $e828                                   ; $5867: $01 $28 $e8
	ld   h, d                                        ; $586a: $62
	ld   bc, $f818                                   ; $586b: $01 $18 $f8

jr_00e_586e:
	ld   h, b                                        ; $586e: $60
	ld   [bc], a                                     ; $586f: $02
	jr   jr_00e_5862                                 ; $5870: $18 $f0

	ld   e, [hl]                                     ; $5872: $5e
	ld   [bc], a                                     ; $5873: $02
	db   $10                                         ; $5874: $10
	add  sp, $5c                                     ; $5875: $e8 $5c
	ld   [bc], a                                     ; $5877: $02
	ld   [$5af0], sp                                 ; $5878: $08 $f0 $5a
	ld   [bc], a                                     ; $587b: $02
	nop                                              ; $587c: $00
	add  sp, $58                                     ; $587d: $e8 $58

jr_00e_587f:
	ld   [bc], a                                     ; $587f: $02
	ld   hl, sp-$10                                  ; $5880: $f8 $f0
	ld   d, [hl]                                     ; $5882: $56
	ld   [bc], a                                     ; $5883: $02
	jr   nc, jr_00e_58ae                             ; $5884: $30 $28

	ld   d, h                                        ; $5886: $54
	ld   bc, $2028                                   ; $5887: $01 $28 $20
	ld   d, d                                        ; $588a: $52
	ld   bc, $1828                                   ; $588b: $01 $28 $18
	ld   d, b                                        ; $588e: $50
	ld   bc, $1028                                   ; $588f: $01 $28 $10

jr_00e_5892:
	ld   c, [hl]                                     ; $5892: $4e
	ld   bc, $1018                                   ; $5893: $01 $18 $10
	ld   c, h                                        ; $5896: $4c
	ld   [bc], a                                     ; $5897: $02
	ld   a, [bc]                                     ; $5898: $0a
	jr   @+$4c                                       ; $5899: $18 $4a

	ld   [bc], a                                     ; $589b: $02
	ld   a, [$4818]                                  ; $589c: $fa $18 $48
	ld   [bc], a                                     ; $589f: $02
	ld   hl, sp+$10                                  ; $58a0: $f8 $10
	ld   b, [hl]                                     ; $58a2: $46
	ld   [bc], a                                     ; $58a3: $02
	ldh  a, [$08]                                    ; $58a4: $f0 $08

jr_00e_58a6:
	ld   b, h                                        ; $58a6: $44
	ld   [bc], a                                     ; $58a7: $02
	ldh  a, [rP1]                                    ; $58a8: $f0 $00

jr_00e_58aa:
	ld   b, d                                        ; $58aa: $42
	ld   [bc], a                                     ; $58ab: $02
	ldh  a, [$f8]                                    ; $58ac: $f0 $f8

jr_00e_58ae:
	ld   b, b                                        ; $58ae: $40
	ld   [de], a                                     ; $58af: $12
	jr   nc, jr_00e_58b2                             ; $58b0: $30 $00

jr_00e_58b2:
	ld   [hl], h                                     ; $58b2: $74
	ld   [bc], a                                     ; $58b3: $02
	jr   z, jr_00e_58a6                              ; $58b4: $28 $f0

	halt                                             ; $58b6: $76
	ld   [bc], a                                     ; $58b7: $02
	jr   nc, jr_00e_5892                             ; $58b8: $30 $d8

jr_00e_58ba:
	ld   [hl], d                                     ; $58ba: $72
	inc  bc                                          ; $58bb: $03
	jr   nc, @-$1e                                   ; $58bc: $30 $e0

	ld   [hl], b                                     ; $58be: $70
	inc  bc                                          ; $58bf: $03
	jr   c, jr_00e_58aa                              ; $58c0: $38 $e8

	ld   l, [hl]                                     ; $58c2: $6e
	inc  bc                                          ; $58c3: $03
	jr   z, jr_00e_58ae                              ; $58c4: $28 $e8

	ld   l, h                                        ; $58c6: $6c
	inc  bc                                          ; $58c7: $03
	jr   nc, jr_00e_58ba                             ; $58c8: $30 $f0

jr_00e_58ca:
	ld   l, d                                        ; $58ca: $6a
	inc  bc                                          ; $58cb: $03
	jr   jr_00e_58ce                                 ; $58cc: $18 $00

jr_00e_58ce:
	ld   a, b                                        ; $58ce: $78
	inc  bc                                          ; $58cf: $03
	jr   jr_00e_58d2                                 ; $58d0: $18 $00

jr_00e_58d2:
	ld   l, b                                        ; $58d2: $68
	nop                                              ; $58d3: $00
	jr   jr_00e_58ce                                 ; $58d4: $18 $f8

	ld   h, [hl]                                     ; $58d6: $66
	nop                                              ; $58d7: $00
	jr   jr_00e_58ca                                 ; $58d8: $18 $f0

	ld   h, h                                        ; $58da: $64
	ld   [bc], a                                     ; $58db: $02
	ld   [$62f8], sp                                 ; $58dc: $08 $f8 $62
	ld   [bc], a                                     ; $58df: $02
	ld   [$60f0], sp                                 ; $58e0: $08 $f0 $60
	ld   [bc], a                                     ; $58e3: $02
	ld   hl, sp-$10                                  ; $58e4: $f8 $f0
	ld   e, [hl]                                     ; $58e6: $5e
	ld   [bc], a                                     ; $58e7: $02
	jr   nc, @+$12                                   ; $58e8: $30 $10

	ld   e, h                                        ; $58ea: $5c
	ld   [bc], a                                     ; $58eb: $02
	jr   nz, jr_00e_58fe                             ; $58ec: $20 $10

	ld   e, d                                        ; $58ee: $5a
	ld   bc, $1828                                   ; $58ef: $01 $28 $18
	ld   e, b                                        ; $58f2: $58
	nop                                              ; $58f3: $00
	jr   nc, jr_00e_5916                             ; $58f4: $30 $20

	ld   d, [hl]                                     ; $58f6: $56
	inc  bc                                          ; $58f7: $03
	dec  e                                           ; $58f8: $1d
	jr   nz, jr_00e_594f                             ; $58f9: $20 $54

	ld   [bc], a                                     ; $58fb: $02
	jr   nz, jr_00e_5926                             ; $58fc: $20 $28

jr_00e_58fe:
	ld   d, d                                        ; $58fe: $52
	ld   [bc], a                                     ; $58ff: $02
	jr   @+$32                                       ; $5900: $18 $30

	ld   d, b                                        ; $5902: $50
	ld   [bc], a                                     ; $5903: $02
	db   $10                                         ; $5904: $10
	jr   z, @+$50                                    ; $5905: $28 $4e

	ld   [bc], a                                     ; $5907: $02
	dec  c                                           ; $5908: $0d
	jr   nz, jr_00e_5957                             ; $5909: $20 $4c

	ld   [bc], a                                     ; $590b: $02
	db   $fd                                         ; $590c: $fd
	jr   nz, @+$4c                                   ; $590d: $20 $4a

	ld   [bc], a                                     ; $590f: $02
	ldh  a, [rAUD2LOW]                               ; $5910: $f0 $18
	ld   c, b                                        ; $5912: $48
	ld   [bc], a                                     ; $5913: $02
	ldh  a, [rAUD1SWEEP]                             ; $5914: $f0 $10

jr_00e_5916:
	ld   b, [hl]                                     ; $5916: $46
	ld   [bc], a                                     ; $5917: $02
	ldh  a, [$08]                                    ; $5918: $f0 $08
	ld   b, h                                        ; $591a: $44
	ld   [bc], a                                     ; $591b: $02
	ldh  a, [rP1]                                    ; $591c: $f0 $00

jr_00e_591e:
	ld   b, d                                        ; $591e: $42
	ld   [bc], a                                     ; $591f: $02
	ldh  a, [$f8]                                    ; $5920: $f0 $f8

jr_00e_5922:
	ld   b, b                                        ; $5922: $40
	ld   [de], a                                     ; $5923: $12
	jr   z, jr_00e_591e                              ; $5924: $28 $f8

jr_00e_5926:
	ld   h, [hl]                                     ; $5926: $66
	ld   [bc], a                                     ; $5927: $02
	jr   nz, jr_00e_5922                             ; $5928: $20 $f8

jr_00e_592a:
	ld   l, h                                        ; $592a: $6c
	ld   bc, $f028                                   ; $592b: $01 $28 $f0
	ld   h, h                                        ; $592e: $64
	ld   [bc], a                                     ; $592f: $02
	ld   [$6e00], sp                                 ; $5930: $08 $00 $6e
	ld   bc, $e010                                   ; $5933: $01 $10 $e0
	ld   e, h                                        ; $5936: $5c
	nop                                              ; $5937: $00
	inc  hl                                          ; $5938: $23
	db   $10                                         ; $5939: $10
	ld   l, d                                        ; $593a: $6a
	ld   [bc], a                                     ; $593b: $02
	jr   jr_00e_593e                                 ; $593c: $18 $00

jr_00e_593e:
	ld   l, b                                        ; $593e: $68
	nop                                              ; $593f: $00
	jr   nz, jr_00e_592a                             ; $5940: $20 $e8

	ld   h, d                                        ; $5942: $62
	ld   [bc], a                                     ; $5943: $02
	jr   nc, jr_00e_591e                             ; $5944: $30 $d8

	ld   h, b                                        ; $5946: $60
	inc  bc                                          ; $5947: $03
	jr   nz, jr_00e_592a                             ; $5948: $20 $e0

	ld   e, [hl]                                     ; $594a: $5e
	inc  bc                                          ; $594b: $03
	ld   [$5ad8], sp                                 ; $594c: $08 $d8 $5a

jr_00e_594f:
	ld   bc, $e0f8                                   ; $594f: $01 $f8 $e0
	ld   e, b                                        ; $5952: $58
	ld   bc, $d8f8                                   ; $5953: $01 $f8 $d8
	ld   d, [hl]                                     ; $5956: $56

jr_00e_5957:
	ld   bc, $1830                                   ; $5957: $01 $30 $18
	ld   d, h                                        ; $595a: $54
	inc  bc                                          ; $595b: $03
	jr   nc, jr_00e_597e                             ; $595c: $30 $20

	ld   d, d                                        ; $595e: $52
	inc  bc                                          ; $595f: $03
	jr   nz, jr_00e_5982                             ; $5960: $20 $20

	ld   d, b                                        ; $5962: $50
	inc  bc                                          ; $5963: $03
	jr   nz, jr_00e_597e                             ; $5964: $20 $18

	ld   c, [hl]                                     ; $5966: $4e
	inc  bc                                          ; $5967: $03
	jr   jr_00e_597a                                 ; $5968: $18 $10

	ld   c, h                                        ; $596a: $4c
	inc  bc                                          ; $596b: $03
	db   $10                                         ; $596c: $10
	ld   [$014a], sp                 ; $596d: $08 $4a $01
	nop                                              ; $5970: $00
	ld   [$0148], sp                         ; $5971: $08 $48 $01
	ld   hl, sp+$00                                  ; $5974: $f8 $00
	ld   b, [hl]                                     ; $5976: $46
	ld   bc, $f8f0                                   ; $5977: $01 $f0 $f8

jr_00e_597a:
	ld   b, h                                        ; $597a: $44
	ld   bc, $f0f0                                   ; $597b: $01 $f0 $f0

jr_00e_597e:
	ld   b, d                                        ; $597e: $42
	ld   bc, $e8f0                                   ; $597f: $01 $f0 $e8

jr_00e_5982:
	ld   b, b                                        ; $5982: $40
	ld   de, $0018                                   ; $5983: $11 $18 $00

jr_00e_5986:
	ld   h, b                                        ; $5986: $60
	nop                                              ; $5987: $00
	jr   jr_00e_5992                                 ; $5988: $18 $08

	ld   h, d                                        ; $598a: $62
	nop                                              ; $598b: $00
	jr   nc, @-$1e                                   ; $598c: $30 $e0

	ld   e, [hl]                                     ; $598e: $5e
	inc  bc                                          ; $598f: $03
	jr   z, jr_00e_597a                              ; $5990: $28 $e8

jr_00e_5992:
	ld   e, h                                        ; $5992: $5c
	inc  b                                           ; $5993: $04
	jr   z, jr_00e_5986                              ; $5994: $28 $f0

	ld   e, d                                        ; $5996: $5a
	inc  b                                           ; $5997: $04
	jr   nz, jr_00e_5992                             ; $5998: $20 $f8

	ld   e, b                                        ; $599a: $58
	ld   bc, $3030                                   ; $599b: $01 $30 $30
	ld   d, [hl]                                     ; $599e: $56
	inc  bc                                          ; $599f: $03
	jr   nc, jr_00e_59ca                             ; $59a0: $30 $28

	ld   d, h                                        ; $59a2: $54
	inc  bc                                          ; $59a3: $03
	jr   z, jr_00e_59c6                              ; $59a4: $28 $20

	ld   d, d                                        ; $59a6: $52
	inc  b                                           ; $59a7: $04
	jr   z, jr_00e_59c2                              ; $59a8: $28 $18

	ld   d, b                                        ; $59aa: $50
	inc  b                                           ; $59ab: $04
	jr   nz, jr_00e_59be                             ; $59ac: $20 $10

jr_00e_59ae:
	ld   c, [hl]                                     ; $59ae: $4e
	inc  bc                                          ; $59af: $03
	db   $10                                         ; $59b0: $10
	db   $10                                         ; $59b1: $10
	ld   c, h                                        ; $59b2: $4c
	nop                                              ; $59b3: $00
	nop                                              ; $59b4: $00
	db   $10                                         ; $59b5: $10
	ld   c, d                                        ; $59b6: $4a
	nop                                              ; $59b7: $00
	ldh  a, [rAUD1SWEEP]                             ; $59b8: $f0 $10

jr_00e_59ba:
	ld   c, b                                        ; $59ba: $48
	nop                                              ; $59bb: $00
	ldh  a, [$08]                                    ; $59bc: $f0 $08

jr_00e_59be:
	ld   b, [hl]                                     ; $59be: $46
	nop                                              ; $59bf: $00
	ldh  a, [rP1]                                    ; $59c0: $f0 $00

jr_00e_59c2:
	ld   b, h                                        ; $59c2: $44
	nop                                              ; $59c3: $00
	ldh  a, [$f8]                                    ; $59c4: $f0 $f8

jr_00e_59c6:
	ld   b, d                                        ; $59c6: $42
	nop                                              ; $59c7: $00
	ldh  a, [$f0]                                    ; $59c8: $f0 $f0

jr_00e_59ca:
	ld   b, b                                        ; $59ca: $40
	db   $10                                         ; $59cb: $10
	jr   nc, jr_00e_59ae                             ; $59cc: $30 $e0

	ld   h, b                                        ; $59ce: $60
	ld   [bc], a                                     ; $59cf: $02
	jr   z, jr_00e_59ba                              ; $59d0: $28 $e8

jr_00e_59d2:
	ld   e, [hl]                                     ; $59d2: $5e
	ld   [bc], a                                     ; $59d3: $02
	jr   z, jr_00e_59c6                              ; $59d4: $28 $f0

	ld   e, h                                        ; $59d6: $5c
	ld   [bc], a                                     ; $59d7: $02
	jr   nz, jr_00e_59d2                             ; $59d8: $20 $f8

	ld   e, d                                        ; $59da: $5a
	ld   [bc], a                                     ; $59db: $02
	jr   nz, jr_00e_59de                             ; $59dc: $20 $00

jr_00e_59de:
	ld   e, b                                        ; $59de: $58
	nop                                              ; $59df: $00
	jr   nz, jr_00e_59ea                             ; $59e0: $20 $08

	ld   d, [hl]                                     ; $59e2: $56
	nop                                              ; $59e3: $00
	jr   nc, jr_00e_5a16                             ; $59e4: $30 $30

	ld   d, h                                        ; $59e6: $54
	inc  bc                                          ; $59e7: $03
	jr   nc, jr_00e_5a12                             ; $59e8: $30 $28

jr_00e_59ea:
	ld   d, d                                        ; $59ea: $52
	ld   [bc], a                                     ; $59eb: $02
	jr   z, jr_00e_5a0e                              ; $59ec: $28 $20

	ld   d, b                                        ; $59ee: $50
	ld   [bc], a                                     ; $59ef: $02
	jr   nz, jr_00e_5a0a                             ; $59f0: $20 $18

	ld   c, [hl]                                     ; $59f2: $4e
	ld   [bc], a                                     ; $59f3: $02
	jr   jr_00e_5a06                                 ; $59f4: $18 $10

	ld   c, h                                        ; $59f6: $4c
	nop                                              ; $59f7: $00
	ld   [$4a10], sp                                 ; $59f8: $08 $10 $4a
	nop                                              ; $59fb: $00
	ld   hl, sp+$10                                  ; $59fc: $f8 $10

jr_00e_59fe:
	ld   c, b                                        ; $59fe: $48
	nop                                              ; $59ff: $00
	ldh  a, [$08]                                    ; $5a00: $f0 $08
	ld   b, [hl]                                     ; $5a02: $46
	nop                                              ; $5a03: $00
	ldh  a, [rP1]                                    ; $5a04: $f0 $00

jr_00e_5a06:
	ld   b, h                                        ; $5a06: $44
	nop                                              ; $5a07: $00
	ldh  a, [$f8]                                    ; $5a08: $f0 $f8

jr_00e_5a0a:
	ld   b, d                                        ; $5a0a: $42
	nop                                              ; $5a0b: $00
	ldh  a, [$f0]                                    ; $5a0c: $f0 $f0

jr_00e_5a0e:
	ld   b, b                                        ; $5a0e: $40
	db   $10                                         ; $5a0f: $10
	jr   nc, jr_00e_5a12                             ; $5a10: $30 $00

jr_00e_5a12:
	ld   l, b                                        ; $5a12: $68
	inc  b                                           ; $5a13: $04
	jr   z, jr_00e_59fe                              ; $5a14: $28 $e8

jr_00e_5a16:
	ld   h, [hl]                                     ; $5a16: $66
	ld   bc, $e028                                   ; $5a17: $01 $28 $e0
	ld   h, h                                        ; $5a1a: $64
	ld   bc, $d830                                   ; $5a1b: $01 $30 $d8
	ld   h, d                                        ; $5a1e: $62
	ld   bc, $2828                                   ; $5a1f: $01 $28 $28
	ld   e, [hl]                                     ; $5a22: $5e
	ld   bc, $2028                                   ; $5a23: $01 $28 $20
	ld   e, h                                        ; $5a26: $5c
	ld   bc, $1828                                   ; $5a27: $01 $28 $18
	ld   e, d                                        ; $5a2a: $5a
	ld   bc, $3030                                   ; $5a2b: $01 $30 $30
	ld   h, b                                        ; $5a2e: $60
	ld   bc, $1020                                   ; $5a2f: $01 $20 $10

jr_00e_5a32:
	ld   e, b                                        ; $5a32: $58
	ld   [bc], a                                     ; $5a33: $02
	jr   nz, jr_00e_5a3e                             ; $5a34: $20 $08

jr_00e_5a36:
	ld   d, [hl]                                     ; $5a36: $56
	nop                                              ; $5a37: $00
	jr   nz, jr_00e_5a3a                             ; $5a38: $20 $00

jr_00e_5a3a:
	ld   d, h                                        ; $5a3a: $54
	nop                                              ; $5a3b: $00
	jr   nz, jr_00e_5a36                             ; $5a3c: $20 $f8

jr_00e_5a3e:
	ld   d, d                                        ; $5a3e: $52
	ld   [bc], a                                     ; $5a3f: $02
	jr   nz, jr_00e_5a32                             ; $5a40: $20 $f0

	ld   d, b                                        ; $5a42: $50
	ld   bc, $1808                                   ; $5a43: $01 $08 $18
	ld   c, [hl]                                     ; $5a46: $4e
	nop                                              ; $5a47: $00
	ld   hl, sp-$10                                  ; $5a48: $f8 $f0
	ld   c, b                                        ; $5a4a: $48
	nop                                              ; $5a4b: $00
	ld   hl, sp+$18                                  ; $5a4c: $f8 $18
	ld   c, h                                        ; $5a4e: $4c
	nop                                              ; $5a4f: $00
	ld   [$4af0], sp                                 ; $5a50: $08 $f0 $4a
	nop                                              ; $5a53: $00
	ldh  a, [rAUD1SWEEP]                             ; $5a54: $f0 $10

jr_00e_5a56:
	ld   b, [hl]                                     ; $5a56: $46
	nop                                              ; $5a57: $00
	ldh  a, [$08]                                    ; $5a58: $f0 $08
	ld   b, h                                        ; $5a5a: $44
	nop                                              ; $5a5b: $00
	ldh  a, [rP1]                                    ; $5a5c: $f0 $00
	ld   b, d                                        ; $5a5e: $42
	nop                                              ; $5a5f: $00
	ldh  a, [$f8]                                    ; $5a60: $f0 $f8
	ld   b, b                                        ; $5a62: $40
	db   $10                                         ; $5a63: $10
	jr   z, @+$2a                                    ; $5a64: $28 $28

	ld   h, d                                        ; $5a66: $62
	inc  b                                           ; $5a67: $04
	jr   z, jr_00e_5a8a                              ; $5a68: $28 $20

	ld   h, b                                        ; $5a6a: $60
	ld   [bc], a                                     ; $5a6b: $02
	jr   z, jr_00e_5a56                              ; $5a6c: $28 $e8

	ld   d, [hl]                                     ; $5a6e: $56
	ld   [bc], a                                     ; $5a6f: $02
	jr   z, @-$1e                                    ; $5a70: $28 $e0

	ld   d, h                                        ; $5a72: $54
	inc  b                                           ; $5a73: $04
	jr   nc, @+$32                                   ; $5a74: $30 $30

	ld   h, [hl]                                     ; $5a76: $66
	ld   [bc], a                                     ; $5a77: $02
	jr   nc, @-$26                                   ; $5a78: $30 $d8

	ld   h, h                                        ; $5a7a: $64
	ld   [bc], a                                     ; $5a7b: $02
	jr   nz, jr_00e_5a86                             ; $5a7c: $20 $08

	ld   e, h                                        ; $5a7e: $5c
	ld   [bc], a                                     ; $5a7f: $02
	jr   nz, jr_00e_5a82                             ; $5a80: $20 $00

jr_00e_5a82:
	ld   e, d                                        ; $5a82: $5a
	ld   [bc], a                                     ; $5a83: $02
	jr   nz, @+$12                                   ; $5a84: $20 $10

jr_00e_5a86:
	ld   e, [hl]                                     ; $5a86: $5e
	ld   [bc], a                                     ; $5a87: $02
	jr   nz, jr_00e_5a82                             ; $5a88: $20 $f8

jr_00e_5a8a:
	ld   e, b                                        ; $5a8a: $58
	ld   [bc], a                                     ; $5a8b: $02
	db   $10                                         ; $5a8c: $10
	jr   @+$54                                       ; $5a8d: $18 $52

	ld   [bc], a                                     ; $5a8f: $02
	nop                                              ; $5a90: $00
	jr   @+$50                                       ; $5a91: $18 $4e

	ld   [bc], a                                     ; $5a93: $02
	db   $10                                         ; $5a94: $10
	ldh  a, [$50]                                    ; $5a95: $f0 $50
	ld   [bc], a                                     ; $5a97: $02
	nop                                              ; $5a98: $00
	ldh  a, [$4c]                                    ; $5a99: $f0 $4c
	ld   [bc], a                                     ; $5a9b: $02
	nop                                              ; $5a9c: $00
	ld   hl, sp+$68                                  ; $5a9d: $f8 $68
	inc  b                                           ; $5a9f: $04
	nop                                              ; $5aa0: $00
	db   $10                                         ; $5aa1: $10
	ld   l, h                                        ; $5aa2: $6c
	inc  b                                           ; $5aa3: $04
	nop                                              ; $5aa4: $00
	ld   [$046a], sp                                 ; $5aa5: $08 $6a $04
	ldh  a, [rAUD2LOW]                               ; $5aa8: $f0 $18
	ld   c, d                                        ; $5aaa: $4a
	ld   [bc], a                                     ; $5aab: $02
	ldh  a, [rAUD1SWEEP]                             ; $5aac: $f0 $10
	ld   c, b                                        ; $5aae: $48
	ld   [bc], a                                     ; $5aaf: $02
	ldh  a, [$08]                                    ; $5ab0: $f0 $08
	ld   b, [hl]                                     ; $5ab2: $46
	ld   [bc], a                                     ; $5ab3: $02
	ldh  a, [rP1]                                    ; $5ab4: $f0 $00
	ld   b, h                                        ; $5ab6: $44
	ld   [bc], a                                     ; $5ab7: $02
	ldh  a, [$f8]                                    ; $5ab8: $f0 $f8
	ld   b, d                                        ; $5aba: $42
	ld   [bc], a                                     ; $5abb: $02
	ldh  a, [$f0]                                    ; $5abc: $f0 $f0
	ld   b, b                                        ; $5abe: $40
	ld   [de], a                                     ; $5abf: $12
	jr   nz, jr_00e_5ac2                             ; $5ac0: $20 $00

jr_00e_5ac2:
	ld   e, d                                        ; $5ac2: $5a
	inc  bc                                          ; $5ac3: $03
	jr   nc, jr_00e_5ae6                             ; $5ac4: $30 $20

	ld   l, b                                        ; $5ac6: $68
	ld   [bc], a                                     ; $5ac7: $02
	jr   nc, jr_00e_5aea                             ; $5ac8: $30 $20

	ld   h, d                                        ; $5aca: $62
	inc  b                                           ; $5acb: $04
	jr   nc, jr_00e_5ae6                             ; $5acc: $30 $18

jr_00e_5ace:
	ld   h, [hl]                                     ; $5ace: $66
	ld   [bc], a                                     ; $5acf: $02
	jr   z, jr_00e_5aea                              ; $5ad0: $28 $18

jr_00e_5ad2:
	ld   h, b                                        ; $5ad2: $60
	inc  b                                           ; $5ad3: $04
	jr   nz, jr_00e_5ae6                             ; $5ad4: $20 $10

jr_00e_5ad6:
	ld   h, h                                        ; $5ad6: $64
	inc  b                                           ; $5ad7: $04
	jr   nz, jr_00e_5aea                             ; $5ad8: $20 $10

jr_00e_5ada:
	ld   e, [hl]                                     ; $5ada: $5e
	ld   [bc], a                                     ; $5adb: $02
	jr   nz, jr_00e_5ae6                             ; $5adc: $20 $08

	ld   e, h                                        ; $5ade: $5c
	inc  bc                                          ; $5adf: $03
	jr   nz, jr_00e_5ada                             ; $5ae0: $20 $f8

	ld   e, b                                        ; $5ae2: $58
	inc  b                                           ; $5ae3: $04
	jr   z, jr_00e_5ad6                              ; $5ae4: $28 $f0

jr_00e_5ae6:
	ld   d, [hl]                                     ; $5ae6: $56
	inc  bc                                          ; $5ae7: $03
	jr   z, jr_00e_5ad2                              ; $5ae8: $28 $e8

jr_00e_5aea:
	ld   d, h                                        ; $5aea: $54
	inc  b                                           ; $5aeb: $04
	jr   nc, jr_00e_5ace                             ; $5aec: $30 $e0

	ld   d, d                                        ; $5aee: $52
	inc  b                                           ; $5aef: $04
	ld   [bc], a                                     ; $5af0: $02
	jr   nz, jr_00e_5b43                             ; $5af1: $20 $50

	ld   bc, $18f8                                   ; $5af3: $01 $f8 $18
	ld   c, [hl]                                     ; $5af6: $4e
	ld   bc, $10f0                                   ; $5af7: $01 $f0 $10
	ld   c, h                                        ; $5afa: $4c
	ld   bc, $08f0                                   ; $5afb: $01 $f0 $08
	ld   c, d                                        ; $5afe: $4a
	ld   bc, $f8f8                                   ; $5aff: $01 $f8 $f8
	ld   b, h                                        ; $5b02: $44
	ld   bc, $00f0                                   ; $5b03: $01 $f0 $00

jr_00e_5b06:
	ld   c, b                                        ; $5b06: $48
	ld   bc, $f810                                   ; $5b07: $01 $10 $f8

jr_00e_5b0a:
	ld   b, [hl]                                     ; $5b0a: $46
	nop                                              ; $5b0b: $00
	db   $10                                         ; $5b0c: $10
	ldh  a, [rSCY]                                   ; $5b0d: $f0 $42
	ld   bc, $f000                                   ; $5b0f: $01 $00 $f0
	ld   b, b                                        ; $5b12: $40
	ld   de, $e030                                   ; $5b13: $11 $30 $e0
	ld   h, h                                        ; $5b16: $64
	inc  bc                                          ; $5b17: $03
	jr   z, jr_00e_5b0a                              ; $5b18: $28 $f0

jr_00e_5b1a:
	ld   h, b                                        ; $5b1a: $60
	inc  bc                                          ; $5b1b: $03
	jr   nc, jr_00e_5b06                             ; $5b1c: $30 $e8

	ld   h, d                                        ; $5b1e: $62
	inc  bc                                          ; $5b1f: $03
	jr   nc, jr_00e_5b1a                             ; $5b20: $30 $f8

	ld   e, [hl]                                     ; $5b22: $5e
	inc  bc                                          ; $5b23: $03
	jr   nc, jr_00e_5b46                             ; $5b24: $30 $20

	ld   e, h                                        ; $5b26: $5c
	inc  bc                                          ; $5b27: $03
	jr   nc, @+$1a                                   ; $5b28: $30 $18

	ld   e, d                                        ; $5b2a: $5a
	inc  bc                                          ; $5b2b: $03
	jr   nz, @+$12                                   ; $5b2c: $20 $10

	ld   e, b                                        ; $5b2e: $58
	ld   [bc], a                                     ; $5b2f: $02
	jr   nz, jr_00e_5b3a                             ; $5b30: $20 $08

jr_00e_5b32:
	ld   d, [hl]                                     ; $5b32: $56
	inc  b                                           ; $5b33: $04
	jr   nz, jr_00e_5b36                             ; $5b34: $20 $00

jr_00e_5b36:
	ld   d, h                                        ; $5b36: $54
	inc  b                                           ; $5b37: $04
	jr   nz, jr_00e_5b32                             ; $5b38: $20 $f8

jr_00e_5b3a:
	ld   d, d                                        ; $5b3a: $52
	inc  bc                                          ; $5b3b: $03
	db   $10                                         ; $5b3c: $10
	ld   hl, sp+$50                                  ; $5b3d: $f8 $50
	nop                                              ; $5b3f: $00
	db   $10                                         ; $5b40: $10
	ldh  a, [$4e]                                    ; $5b41: $f0 $4e

jr_00e_5b43:
	ld   bc, $f000                                   ; $5b43: $01 $00 $f0

jr_00e_5b46:
	ld   c, h                                        ; $5b46: $4c
	ld   bc, $f8f8                                   ; $5b47: $01 $f8 $f8
	ld   c, d                                        ; $5b4a: $4a
	ld   bc, $2002                                   ; $5b4b: $01 $02 $20
	ld   c, b                                        ; $5b4e: $48
	ld   bc, $18f8                                   ; $5b4f: $01 $f8 $18
	ld   b, [hl]                                     ; $5b52: $46
	ld   bc, $10f0                                   ; $5b53: $01 $f0 $10
	ld   b, h                                        ; $5b56: $44
	ld   bc, $08f0                                   ; $5b57: $01 $f0 $08
	ld   b, d                                        ; $5b5a: $42
	ld   bc, $00f0                                   ; $5b5b: $01 $f0 $00
	ld   b, b                                        ; $5b5e: $40
	ld   de, $1028                                   ; $5b5f: $11 $28 $10

jr_00e_5b62:
	ld   h, h                                        ; $5b62: $64
	inc  bc                                          ; $5b63: $03
	jr   z, jr_00e_5b6e                              ; $5b64: $28 $08

	ld   h, d                                        ; $5b66: $62
	inc  bc                                          ; $5b67: $03
	jr   z, jr_00e_5b6a                              ; $5b68: $28 $00

jr_00e_5b6a:
	ld   h, b                                        ; $5b6a: $60
	inc  bc                                          ; $5b6b: $03
	jr   nz, jr_00e_5b76                             ; $5b6c: $20 $08

jr_00e_5b6e:
	ld   l, b                                        ; $5b6e: $68
	nop                                              ; $5b6f: $00
	jr   nz, jr_00e_5b72                             ; $5b70: $20 $00

jr_00e_5b72:
	ld   h, [hl]                                     ; $5b72: $66
	nop                                              ; $5b73: $00
	ldh  a, [rP1]                                    ; $5b74: $f0 $00

jr_00e_5b76:
	ld   b, b                                        ; $5b76: $40
	nop                                              ; $5b77: $00
	ldh  a, [rAUD1SWEEP]                             ; $5b78: $f0 $10
	ld   b, h                                        ; $5b7a: $44
	nop                                              ; $5b7b: $00
	ldh  a, [$08]                                    ; $5b7c: $f0 $08
	ld   b, d                                        ; $5b7e: $42
	nop                                              ; $5b7f: $00
	jr   nc, jr_00e_5b62                             ; $5b80: $30 $e0

	ld   e, [hl]                                     ; $5b82: $5e
	ld   bc, $e830                                   ; $5b83: $01 $30 $e8
	ld   e, h                                        ; $5b86: $5c
	ld   bc, $f030                                   ; $5b87: $01 $30 $f0
	ld   e, d                                        ; $5b8a: $5a
	ld   bc, $f020                                   ; $5b8b: $01 $20 $f0
	ld   e, b                                        ; $5b8e: $58
	ld   bc, $f818                                   ; $5b8f: $01 $18 $f8
	ld   d, [hl]                                     ; $5b92: $56
	nop                                              ; $5b93: $00
	db   $10                                         ; $5b94: $10
	ldh  a, [rHDMA4]                                 ; $5b95: $f0 $54
	nop                                              ; $5b97: $00
	nop                                              ; $5b98: $00
	ldh  a, [rHDMA2]                                 ; $5b99: $f0 $52
	nop                                              ; $5b9b: $00
	ld   hl, sp-$08                                  ; $5b9c: $f8 $f8
	ld   d, b                                        ; $5b9e: $50
	nop                                              ; $5b9f: $00
	jr   nc, jr_00e_5bc2                             ; $5ba0: $30 $20

	ld   c, [hl]                                     ; $5ba2: $4e
	ld   bc, $1828                                   ; $5ba3: $01 $28 $18
	ld   c, h                                        ; $5ba6: $4c
	ld   [bc], a                                     ; $5ba7: $02
	jr   jr_00e_5bc2                                 ; $5ba8: $18 $18

	ld   c, d                                        ; $5baa: $4a
	nop                                              ; $5bab: $00
	ld   [$4818], sp                                 ; $5bac: $08 $18 $48
	nop                                              ; $5baf: $00
	ld   hl, sp+$18                                  ; $5bb0: $f8 $18
	ld   b, [hl]                                     ; $5bb2: $46
	db   $10                                         ; $5bb3: $10
	jr   jr_00e_5bbe                                 ; $5bb4: $18 $08

	ld   l, d                                        ; $5bb6: $6a
	inc  b                                           ; $5bb7: $04
	jr   jr_00e_5bba                                 ; $5bb8: $18 $00

jr_00e_5bba:
	ld   l, b                                        ; $5bba: $68
	inc  b                                           ; $5bbb: $04
	jr   jr_00e_5bce                                 ; $5bbc: $18 $10

jr_00e_5bbe:
	ld   h, [hl]                                     ; $5bbe: $66
	nop                                              ; $5bbf: $00
	jr   nz, jr_00e_5bc2                             ; $5bc0: $20 $00

jr_00e_5bc2:
	ld   h, h                                        ; $5bc2: $64
	ld   [bc], a                                     ; $5bc3: $02
	ld   hl, sp-$10                                  ; $5bc4: $f8 $f0
	ld   h, d                                        ; $5bc6: $62
	ld   [bc], a                                     ; $5bc7: $02
	jr   nz, jr_00e_5bc2                             ; $5bc8: $20 $f8

jr_00e_5bca:
	ld   e, h                                        ; $5bca: $5c
	inc  bc                                          ; $5bcb: $03
	jr   nc, jr_00e_5bbe                             ; $5bcc: $30 $f0

jr_00e_5bce:
	ld   h, b                                        ; $5bce: $60
	inc  b                                           ; $5bcf: $04
	jr   nc, jr_00e_5bca                             ; $5bd0: $30 $f8

	ld   e, [hl]                                     ; $5bd2: $5e
	inc  b                                           ; $5bd3: $04
	dec  bc                                          ; $5bd4: $0b
	ldh  a, [$5a]                                    ; $5bd5: $f0 $5a
	ld   bc, $2030                                   ; $5bd7: $01 $30 $20
	ld   e, b                                        ; $5bda: $58
	inc  bc                                          ; $5bdb: $03
	jr   z, jr_00e_5bf6                              ; $5bdc: $28 $18

	ld   d, [hl]                                     ; $5bde: $56
	inc  bc                                          ; $5bdf: $03
	jr   nz, jr_00e_5bf2                             ; $5be0: $20 $10

	ld   d, h                                        ; $5be2: $54
	inc  bc                                          ; $5be3: $03
	jr   jr_00e_5bfe                                 ; $5be4: $18 $18

	ld   d, d                                        ; $5be6: $52
	ld   bc, $2010                                   ; $5be7: $01 $10 $20
	ld   d, b                                        ; $5bea: $50
	ld   bc, $1808                                   ; $5beb: $01 $08 $18
	ld   c, [hl]                                     ; $5bee: $4e
	ld   bc, $18f8                                   ; $5bef: $01 $f8 $18

jr_00e_5bf2:
	ld   c, h                                        ; $5bf2: $4c
	ld   bc, $10f0                                   ; $5bf3: $01 $f0 $10

jr_00e_5bf6:
	ld   c, d                                        ; $5bf6: $4a
	ld   bc, $08f0                                   ; $5bf7: $01 $f0 $08
	ld   c, b                                        ; $5bfa: $48
	ld   bc, $00f0                                   ; $5bfb: $01 $f0 $00

jr_00e_5bfe:
	ld   b, [hl]                                     ; $5bfe: $46
	ld   bc, $f0fb                                   ; $5bff: $01 $fb $f0
	ld   b, d                                        ; $5c02: $42
	ld   bc, $e800                                   ; $5c03: $01 $00 $e8
	ld   b, b                                        ; $5c06: $40
	ld   bc, $f8f0                                   ; $5c07: $01 $f0 $f8

jr_00e_5c0a:
	ld   b, h                                        ; $5c0a: $44
	ld   de, $1830                                   ; $5c0b: $11 $30 $18

jr_00e_5c0e:
	ld   l, [hl]                                     ; $5c0e: $6e
	inc  b                                           ; $5c0f: $04
	jr   nc, jr_00e_5c22                             ; $5c10: $30 $10

jr_00e_5c12:
	ld   l, h                                        ; $5c12: $6c
	inc  b                                           ; $5c13: $04
	jr   nz, jr_00e_5c26                             ; $5c14: $20 $10

	ld   l, d                                        ; $5c16: $6a
	inc  b                                           ; $5c17: $04
	jr   nc, jr_00e_5c12                             ; $5c18: $30 $f8

	ld   l, b                                        ; $5c1a: $68
	inc  b                                           ; $5c1b: $04
	jr   nc, jr_00e_5c0e                             ; $5c1c: $30 $f0

	ld   h, [hl]                                     ; $5c1e: $66
	inc  b                                           ; $5c1f: $04
	jr   z, jr_00e_5c0a                              ; $5c20: $28 $e8

jr_00e_5c22:
	ld   h, h                                        ; $5c22: $64
	ld   bc, $e030                                   ; $5c23: $01 $30 $e0

jr_00e_5c26:
	ld   h, d                                        ; $5c26: $62
	ld   bc, $2030                                   ; $5c27: $01 $30 $20
	ld   h, b                                        ; $5c2a: $60
	ld   bc, $1828                                   ; $5c2b: $01 $28 $18
	ld   e, [hl]                                     ; $5c2e: $5e
	inc  b                                           ; $5c2f: $04
	jr   nz, jr_00e_5c42                             ; $5c30: $20 $10

jr_00e_5c32:
	ld   e, h                                        ; $5c32: $5c
	inc  bc                                          ; $5c33: $03
	jr   nz, jr_00e_5c3e                             ; $5c34: $20 $08

jr_00e_5c36:
	ld   e, d                                        ; $5c36: $5a
	ld   [bc], a                                     ; $5c37: $02
	jr   nz, jr_00e_5c3a                             ; $5c38: $20 $00

jr_00e_5c3a:
	ld   e, b                                        ; $5c3a: $58
	nop                                              ; $5c3b: $00
	jr   nz, jr_00e_5c36                             ; $5c3c: $20 $f8

jr_00e_5c3e:
	ld   d, [hl]                                     ; $5c3e: $56
	inc  bc                                          ; $5c3f: $03
	jr   nz, jr_00e_5c32                             ; $5c40: $20 $f0

jr_00e_5c42:
	ld   d, h                                        ; $5c42: $54
	inc  b                                           ; $5c43: $04
	jr   jr_00e_5c5e                                 ; $5c44: $18 $18

	ld   d, d                                        ; $5c46: $52
	ld   [bc], a                                     ; $5c47: $02
	ld   [$5018], sp                                 ; $5c48: $08 $18 $50
	nop                                              ; $5c4b: $00
	nop                                              ; $5c4c: $00
	jr   nz, @+$50                                   ; $5c4d: $20 $4e

	ld   [bc], a                                     ; $5c4f: $02
	ld   hl, sp+$18                                  ; $5c50: $f8 $18
	ld   c, h                                        ; $5c52: $4c
	ld   [bc], a                                     ; $5c53: $02
	db   $10                                         ; $5c54: $10
	ldh  a, [rWY]                                    ; $5c55: $f0 $4a
	ld   [bc], a                                     ; $5c57: $02
	nop                                              ; $5c58: $00
	ldh  a, [rOBP0]                                  ; $5c59: $f0 $48
	ld   [bc], a                                     ; $5c5b: $02
	ld   hl, sp-$08                                  ; $5c5c: $f8 $f8

jr_00e_5c5e:
	ld   b, [hl]                                     ; $5c5e: $46
	ld   [bc], a                                     ; $5c5f: $02
	ldh  a, [rAUD1SWEEP]                             ; $5c60: $f0 $10

Call_00e_5c62:
	ld   b, h                                        ; $5c62: $44
	ld   [bc], a                                     ; $5c63: $02
	ldh  a, [$08]                                    ; $5c64: $f0 $08
	ld   b, d                                        ; $5c66: $42
	ld   [bc], a                                     ; $5c67: $02
	ldh  a, [rP1]                                    ; $5c68: $f0 $00
	ld   b, b                                        ; $5c6a: $40
	ld   [de], a                                     ; $5c6b: $12
	jr   nz, jr_00e_5c76                             ; $5c6c: $20 $08

	ld   h, [hl]                                     ; $5c6e: $66
	nop                                              ; $5c6f: $00
	jr   nz, jr_00e_5c72                             ; $5c70: $20 $00

jr_00e_5c72:
	ld   h, h                                        ; $5c72: $64
	nop                                              ; $5c73: $00
	jr   nc, @-$1e                                   ; $5c74: $30 $e0

jr_00e_5c76:
	ld   h, d                                        ; $5c76: $62
	ld   bc, $e828                                   ; $5c77: $01 $28 $e8
	ld   h, b                                        ; $5c7a: $60
	ld   bc, $f028                                   ; $5c7b: $01 $28 $f0
	ld   e, [hl]                                     ; $5c7e: $5e
	ld   bc, $f820                                   ; $5c7f: $01 $20 $f8
	ld   e, h                                        ; $5c82: $5c
	ld   [bc], a                                     ; $5c83: $02
	db   $10                                         ; $5c84: $10
	ld   hl, sp+$5a                                  ; $5c85: $f8 $5a
	inc  bc                                          ; $5c87: $03
	nop                                              ; $5c88: $00
	ldh  a, [$58]                                    ; $5c89: $f0 $58
	nop                                              ; $5c8b: $00
	jr   nc, jr_00e_5cc6                             ; $5c8c: $30 $38

	ld   d, [hl]                                     ; $5c8e: $56
	ld   bc, $3030                                   ; $5c8f: $01 $30 $30
	ld   d, h                                        ; $5c92: $54
	ld   bc, $2828                                   ; $5c93: $01 $28 $28
	ld   d, d                                        ; $5c96: $52
	ld   bc, $2028                                   ; $5c97: $01 $28 $20
	ld   d, b                                        ; $5c9a: $50
	ld   bc, $1820                                   ; $5c9b: $01 $20 $18
	ld   c, [hl]                                     ; $5c9e: $4e
	ld   bc, $1018                                   ; $5c9f: $01 $18 $10
	ld   c, h                                        ; $5ca2: $4c
	inc  bc                                          ; $5ca3: $03
	db   $10                                         ; $5ca4: $10
	jr   @+$4c                                       ; $5ca5: $18 $4a

	inc  bc                                          ; $5ca7: $03
	nop                                              ; $5ca8: $00
	jr   jr_00e_5cf3                                 ; $5ca9: $18 $48

	nop                                              ; $5cab: $00
	ld   hl, sp+$10                                  ; $5cac: $f8 $10
	ld   b, [hl]                                     ; $5cae: $46
	nop                                              ; $5caf: $00
	ldh  a, [$08]                                    ; $5cb0: $f0 $08

jr_00e_5cb2:
	ld   b, h                                        ; $5cb2: $44
	ld   [bc], a                                     ; $5cb3: $02
	ldh  a, [rP1]                                    ; $5cb4: $f0 $00
	ld   b, d                                        ; $5cb6: $42
	ld   [bc], a                                     ; $5cb7: $02
	ldh  a, [$f8]                                    ; $5cb8: $f0 $f8
	ld   b, b                                        ; $5cba: $40
	ld   [de], a                                     ; $5cbb: $12
	ldh  a, [rP1]                                    ; $5cbc: $f0 $00
	ld   b, [hl]                                     ; $5cbe: $46
	nop                                              ; $5cbf: $00
	nop                                              ; $5cc0: $00
	nop                                              ; $5cc1: $00
	ld   b, d                                        ; $5cc2: $42
	ld   [bc], a                                     ; $5cc3: $02
	ldh  a, [rP1]                                    ; $5cc4: $f0 $00

jr_00e_5cc6:
	ld   b, b                                        ; $5cc6: $40
	ld   [bc], a                                     ; $5cc7: $02
	jr   nc, jr_00e_5cb2                             ; $5cc8: $30 $e8

	ld   [hl], b                                     ; $5cca: $70
	nop                                              ; $5ccb: $00
	jr   nc, @-$26                                   ; $5ccc: $30 $d8

	ld   l, [hl]                                     ; $5cce: $6e
	ld   bc, $d030                                   ; $5ccf: $01 $30 $d0
	ld   l, h                                        ; $5cd2: $6c
	ld   bc, $d820                                   ; $5cd3: $01 $20 $d8
	ld   l, d                                        ; $5cd6: $6a
	ld   bc, $e020                                   ; $5cd7: $01 $20 $e0
	ld   l, b                                        ; $5cda: $68
	ld   bc, $e818                                   ; $5cdb: $01 $18 $e8
	ld   h, [hl]                                     ; $5cde: $66
	ld   bc, $0010                                   ; $5cdf: $01 $10 $00
	ld   h, h                                        ; $5ce2: $64
	ld   [bc], a                                     ; $5ce3: $02
	db   $10                                         ; $5ce4: $10
	ld   hl, sp+$62                                  ; $5ce5: $f8 $62
	ld   bc, $f010                                   ; $5ce7: $01 $10 $f0
	ld   h, b                                        ; $5cea: $60
	ld   bc, $2028                                   ; $5ceb: $01 $28 $20
	ld   e, d                                        ; $5cee: $5a
	nop                                              ; $5cef: $00
	jr   z, jr_00e_5d22                              ; $5cf0: $28 $30

	ld   e, [hl]                                     ; $5cf2: $5e

jr_00e_5cf3:
	ld   bc, $3030                                   ; $5cf3: $01 $30 $30
	ld   e, h                                        ; $5cf6: $5c
	ld   bc, $4010                                   ; $5cf7: $01 $10 $40
	ld   e, b                                        ; $5cfa: $58
	nop                                              ; $5cfb: $00
	inc  de                                          ; $5cfc: $13
	jr   c, @+$58                                    ; $5cfd: $38 $56

	nop                                              ; $5cff: $00
	jr   @+$32                                       ; $5d00: $18 $30

	ld   d, h                                        ; $5d02: $54
	nop                                              ; $5d03: $00
	db   $10                                         ; $5d04: $10
	jr   z, jr_00e_5d59                              ; $5d05: $28 $52

	ld   bc, $2010                                   ; $5d07: $01 $10 $20
	ld   d, b                                        ; $5d0a: $50
	ld   bc, $1808                                   ; $5d0b: $01 $08 $18
	ld   c, [hl]                                     ; $5d0e: $4e
	ld   bc, $18f8                                   ; $5d0f: $01 $f8 $18
	ld   c, h                                        ; $5d12: $4c
	nop                                              ; $5d13: $00
	ldh  a, [rAUD1SWEEP]                             ; $5d14: $f0 $10
	ld   c, d                                        ; $5d16: $4a
	nop                                              ; $5d17: $00
	ldh  a, [$08]                                    ; $5d18: $f0 $08
	ld   c, b                                        ; $5d1a: $48
	nop                                              ; $5d1b: $00
	ldh  a, [c]                                      ; $5d1c: $f2
	ld   hl, sp+$44                                  ; $5d1d: $f8 $44
	db   $10                                         ; $5d1f: $10
	jr   @+$0a                                       ; $5d20: $18 $08

jr_00e_5d22:
	ld   [$1000], sp                                 ; $5d22: $08 $00 $10
	db   $10                                         ; $5d25: $10
	ld   b, $00                                      ; $5d26: $06 $00
	ld   [$0408], sp                                 ; $5d28: $08 $08 $04
	nop                                              ; $5d2b: $00
	stop                                             ; $5d2c: $10 $00
	ld   [bc], a                                     ; $5d2e: $02
	nop                                              ; $5d2f: $00
	db   $10                                         ; $5d30: $10
	ld   hl, sp+$00                                  ; $5d31: $f8 $00
	db   $10                                         ; $5d33: $10
	jr   @+$0a                                       ; $5d34: $18 $08

	ld   [de], a                                     ; $5d36: $12
	nop                                              ; $5d37: $00
	db   $10                                         ; $5d38: $10
	db   $10                                         ; $5d39: $10
	stop                                             ; $5d3a: $10 $00
	ld   [$0e08], sp                                 ; $5d3c: $08 $08 $0e
	nop                                              ; $5d3f: $00
	stop                                             ; $5d40: $10 $00
	inc  c                                           ; $5d42: $0c
	nop                                              ; $5d43: $00
	db   $10                                         ; $5d44: $10
	ld   hl, sp+$0a                                  ; $5d45: $f8 $0a
	db   $10                                         ; $5d47: $10
	jr   @+$0a                                       ; $5d48: $18 $08

	inc  e                                           ; $5d4a: $1c
	nop                                              ; $5d4b: $00
	db   $10                                         ; $5d4c: $10
	db   $10                                         ; $5d4d: $10
	ld   a, [de]                                     ; $5d4e: $1a
	nop                                              ; $5d4f: $00
	ld   [$1808], sp                                 ; $5d50: $08 $08 $18
	nop                                              ; $5d53: $00
	stop                                             ; $5d54: $10 $00
	ld   d, $00                                      ; $5d56: $16 $00
	db   $10                                         ; $5d58: $10

jr_00e_5d59:
	ld   hl, sp+$14                                  ; $5d59: $f8 $14
	db   $10                                         ; $5d5b: $10
	jr   nz, jr_00e_5d62                             ; $5d5c: $20 $04

	ld   e, $10                                      ; $5d5e: $1e $10
	jr   nz, @+$06                                   ; $5d60: $20 $04

jr_00e_5d62:
	jr   nz, jr_00e_5d74                             ; $5d62: $20 $10

	ld   [$0408], sp                                 ; $5d64: $08 $08 $04
	nop                                              ; $5d67: $00
	ld   [$0200], sp                                 ; $5d68: $08 $00 $02
	nop                                              ; $5d6b: $00
	ld   [$00f8], sp                                 ; $5d6c: $08 $f8 $00
	db   $10                                         ; $5d6f: $10
	ld   [$0a08], sp                                 ; $5d70: $08 $08 $0a
	nop                                              ; $5d73: $00

jr_00e_5d74:
	ld   [$0800], sp                                 ; $5d74: $08 $00 $08
	nop                                              ; $5d77: $00
	ld   [$06f8], sp                                 ; $5d78: $08 $f8 $06
	db   $10                                         ; $5d7b: $10
	ld   [$1008], sp                                 ; $5d7c: $08 $08 $10
	nop                                              ; $5d7f: $00
	ld   [$0e00], sp                                 ; $5d80: $08 $00 $0e
	nop                                              ; $5d83: $00
	ld   [$0cf8], sp                                 ; $5d84: $08 $f8 $0c
	db   $10                                         ; $5d87: $10
	jr   @-$06                                       ; $5d88: $18 $f8

	ld   [de], a                                     ; $5d8a: $12
	db   $10                                         ; $5d8b: $10
	jr   @-$06                                       ; $5d8c: $18 $f8

	inc  d                                           ; $5d8e: $14
	nop                                              ; $5d8f: $00
	db   $10                                         ; $5d90: $10
	ld   hl, sp+$20                                  ; $5d91: $f8 $20
	db   $10                                         ; $5d93: $10
	db   $10                                         ; $5d94: $10
	db   $10                                         ; $5d95: $10
	ld   a, [bc]                                     ; $5d96: $0a
	nop                                              ; $5d97: $00
	jr   @+$0a                                       ; $5d98: $18 $08

	ld   [$0800], sp                                 ; $5d9a: $08 $00 $08
	ld   [$0004], sp                                 ; $5d9d: $08 $04 $00
	ld   [$0200], sp                                 ; $5da0: $08 $00 $02
	nop                                              ; $5da3: $00
	db   $10                                         ; $5da4: $10
	ld   hl, sp+$00                                  ; $5da5: $f8 $00
	db   $10                                         ; $5da7: $10
	db   $10                                         ; $5da8: $10
	db   $10                                         ; $5da9: $10
	ld   d, $00                                      ; $5daa: $16 $00
	jr   @+$0a                                       ; $5dac: $18 $08

	inc  d                                           ; $5dae: $14
	nop                                              ; $5daf: $00
	ld   [$1008], sp                                 ; $5db0: $08 $08 $10
	nop                                              ; $5db3: $00
	ld   [$0e00], sp                                 ; $5db4: $08 $00 $0e
	nop                                              ; $5db7: $00
	db   $10                                         ; $5db8: $10
	ld   hl, sp+$0c                                  ; $5db9: $f8 $0c
	db   $10                                         ; $5dbb: $10
	db   $10                                         ; $5dbc: $10
	db   $10                                         ; $5dbd: $10
	ld   e, $00                                      ; $5dbe: $1e $00
	jr   @+$0a                                       ; $5dc0: $18 $08

	jr   nz, jr_00e_5dc4                             ; $5dc2: $20 $00

jr_00e_5dc4:
	ld   [$1c08], sp                                 ; $5dc4: $08 $08 $1c
	nop                                              ; $5dc7: $00
	ld   [$1a00], sp                                 ; $5dc8: $08 $00 $1a
	nop                                              ; $5dcb: $00
	db   $10                                         ; $5dcc: $10
	ld   hl, sp+$18                                  ; $5dcd: $f8 $18
	db   $10                                         ; $5dcf: $10
	jr   @+$03                                       ; $5dd0: $18 $01

	ld   b, $10                                      ; $5dd2: $06 $10
	jr   jr_00e_5dd7                                 ; $5dd4: $18 $01

	ld   [de], a                                     ; $5dd6: $12

jr_00e_5dd7:
	db   $10                                         ; $5dd7: $10
	ld   [$0610], sp                                 ; $5dd8: $08 $10 $06
	nop                                              ; $5ddb: $00
	ld   [$0408], sp                                 ; $5ddc: $08 $08 $04
	nop                                              ; $5ddf: $00
	ld   [$0200], sp                                 ; $5de0: $08 $00 $02
	nop                                              ; $5de3: $00
	ld   [$00f8], sp                                 ; $5de4: $08 $f8 $00
	db   $10                                         ; $5de7: $10
	ld   [$0e10], sp                                 ; $5de8: $08 $10 $0e
	nop                                              ; $5deb: $00
	ld   [$0c08], sp                                 ; $5dec: $08 $08 $0c
	nop                                              ; $5def: $00
	ld   [$0a00], sp                                 ; $5df0: $08 $00 $0a
	nop                                              ; $5df3: $00
	ld   [$08f8], sp                                 ; $5df4: $08 $f8 $08
	db   $10                                         ; $5df7: $10
	ld   [$1610], sp                                 ; $5df8: $08 $10 $16
	nop                                              ; $5dfb: $00
	ld   [$1408], sp                                 ; $5dfc: $08 $08 $14
	nop                                              ; $5dff: $00
	ld   [$1200], sp                                 ; $5e00: $08 $00 $12
	nop                                              ; $5e03: $00
	ld   [$10f8], sp                                 ; $5e04: $08 $f8 $10
	db   $10                                         ; $5e07: $10
	jr   @+$05                                       ; $5e08: $18 $03

	jr   jr_00e_5e1c                                 ; $5e0a: $18 $10

	jr   @+$05                                       ; $5e0c: $18 $03

	ld   a, [de]                                     ; $5e0e: $1a
	db   $10                                         ; $5e0f: $10
	ld   [$0200], sp                                 ; $5e10: $08 $00 $02
	nop                                              ; $5e13: $00
	ld   [$00f8], sp                                 ; $5e14: $08 $f8 $00
	db   $10                                         ; $5e17: $10
	ld   [$0600], sp                                 ; $5e18: $08 $00 $06
	nop                                              ; $5e1b: $00

jr_00e_5e1c:
	ld   [$04f8], sp                                 ; $5e1c: $08 $f8 $04
	db   $10                                         ; $5e1f: $10
	ld   [$0a00], sp                                 ; $5e20: $08 $00 $0a
	nop                                              ; $5e23: $00
	ld   [$08f8], sp                                 ; $5e24: $08 $f8 $08
	db   $10                                         ; $5e27: $10
	db   $10                                         ; $5e28: $10
	rlca                                             ; $5e29: $07
	inc  c                                           ; $5e2a: $0c
	db   $10                                         ; $5e2b: $10
	db   $10                                         ; $5e2c: $10
	rlca                                             ; $5e2d: $07
	ld   c, $10                                      ; $5e2e: $0e $10
	db   $10                                         ; $5e30: $10
	db   $10                                         ; $5e31: $10
	ld   b, $00                                      ; $5e32: $06 $00
	db   $10                                         ; $5e34: $10
	ld   [$0004], sp                                 ; $5e35: $08 $04 $00
	stop                                             ; $5e38: $10 $00
	ld   [bc], a                                     ; $5e3a: $02
	nop                                              ; $5e3b: $00
	db   $10                                         ; $5e3c: $10
	ld   hl, sp+$00                                  ; $5e3d: $f8 $00
	db   $10                                         ; $5e3f: $10
	db   $10                                         ; $5e40: $10
	db   $10                                         ; $5e41: $10
	ld   c, $00                                      ; $5e42: $0e $00
	db   $10                                         ; $5e44: $10
	ld   [$000c], sp                                 ; $5e45: $08 $0c $00
	stop                                             ; $5e48: $10 $00
	ld   a, [bc]                                     ; $5e4a: $0a
	nop                                              ; $5e4b: $00
	db   $10                                         ; $5e4c: $10
	ld   hl, sp+$08                                  ; $5e4d: $f8 $08
	db   $10                                         ; $5e4f: $10
	db   $10                                         ; $5e50: $10
	db   $10                                         ; $5e51: $10
	ld   d, $00                                      ; $5e52: $16 $00
	db   $10                                         ; $5e54: $10
	ld   [$0014], sp                                 ; $5e55: $08 $14 $00
	stop                                             ; $5e58: $10 $00
	ld   [de], a                                     ; $5e5a: $12
	nop                                              ; $5e5b: $00
	db   $10                                         ; $5e5c: $10
	ld   hl, sp+$10                                  ; $5e5d: $f8 $10
	db   $10                                         ; $5e5f: $10
	jr   nz, jr_00e_5e66                             ; $5e60: $20 $04

	jr   jr_00e_5e74                                 ; $5e62: $18 $10

	jr   nz, @+$06                                   ; $5e64: $20 $04

jr_00e_5e66:
	ld   a, [de]                                     ; $5e66: $1a
	db   $10                                         ; $5e67: $10
	db   $10                                         ; $5e68: $10
	ld   [$0004], sp                                 ; $5e69: $08 $04 $00
	stop                                             ; $5e6c: $10 $00
	ld   [bc], a                                     ; $5e6e: $02
	nop                                              ; $5e6f: $00
	db   $10                                         ; $5e70: $10
	ld   hl, sp+$00                                  ; $5e71: $f8 $00
	db   $10                                         ; $5e73: $10

jr_00e_5e74:
	db   $10                                         ; $5e74: $10
	ld   [$000a], sp                                 ; $5e75: $08 $0a $00
	stop                                             ; $5e78: $10 $00
	ld   [$1000], sp                                 ; $5e7a: $08 $00 $10
	ld   hl, sp+$06                                  ; $5e7d: $f8 $06
	db   $10                                         ; $5e7f: $10
	db   $10                                         ; $5e80: $10
	ld   [$0010], sp                                 ; $5e81: $08 $10 $00
	stop                                             ; $5e84: $10 $00
	ld   c, $00                                      ; $5e86: $0e $00
	db   $10                                         ; $5e88: $10
	ld   hl, sp+$0c                                  ; $5e89: $f8 $0c
	db   $10                                         ; $5e8b: $10
	jr   jr_00e_5e8e                                 ; $5e8c: $18 $00

jr_00e_5e8e:
	ld   [de], a                                     ; $5e8e: $12
	db   $10                                         ; $5e8f: $10
	jr   jr_00e_5e92                                 ; $5e90: $18 $00

jr_00e_5e92:
	inc  d                                           ; $5e92: $14
	db   $10                                         ; $5e93: $10
	jr   jr_00e_5e8e                                 ; $5e94: $18 $f8

	ld   b, $00                                      ; $5e96: $06 $00
	db   $10                                         ; $5e98: $10
	ld   [$0004], sp                                 ; $5e99: $08 $04 $00
	stop                                             ; $5e9c: $10 $00

jr_00e_5e9e:
	ld   [bc], a                                     ; $5e9e: $02
	nop                                              ; $5e9f: $00
	ld   [$00f8], sp                                 ; $5ea0: $08 $f8 $00
	db   $10                                         ; $5ea3: $10
	jr   jr_00e_5e9e                                 ; $5ea4: $18 $f8

	ld   c, $00                                      ; $5ea6: $0e $00
	db   $10                                         ; $5ea8: $10
	ld   [$000c], sp                                 ; $5ea9: $08 $0c $00
	stop                                             ; $5eac: $10 $00

jr_00e_5eae:
	ld   a, [bc]                                     ; $5eae: $0a
	nop                                              ; $5eaf: $00
	ld   [$08f8], sp                                 ; $5eb0: $08 $f8 $08
	db   $10                                         ; $5eb3: $10
	jr   jr_00e_5eae                                 ; $5eb4: $18 $f8

	ld   d, $00                                      ; $5eb6: $16 $00
	db   $10                                         ; $5eb8: $10
	ld   [$0014], sp                                 ; $5eb9: $08 $14 $00
	stop                                             ; $5ebc: $10 $00
	ld   [de], a                                     ; $5ebe: $12
	nop                                              ; $5ebf: $00
	ld   [$10f8], sp                                 ; $5ec0: $08 $f8 $10
	db   $10                                         ; $5ec3: $10
	jr   nz, jr_00e_5ec6                             ; $5ec4: $20 $00

jr_00e_5ec6:
	ld   a, [de]                                     ; $5ec6: $1a
	nop                                              ; $5ec7: $00
	jr   nz, @-$06                                   ; $5ec8: $20 $f8

jr_00e_5eca:
	jr   jr_00e_5edc                                 ; $5eca: $18 $10

	jr   nz, jr_00e_5ece                             ; $5ecc: $20 $00

jr_00e_5ece:
	ld   e, $00                                      ; $5ece: $1e $00
	jr   nz, jr_00e_5eca                             ; $5ed0: $20 $f8

	inc  e                                           ; $5ed2: $1c
	db   $10                                         ; $5ed3: $10
	ld   [$0610], sp                                 ; $5ed4: $08 $10 $06
	nop                                              ; $5ed7: $00
	ld   [$0408], sp                                 ; $5ed8: $08 $08 $04
	nop                                              ; $5edb: $00

jr_00e_5edc:
	ld   [$0200], sp                                 ; $5edc: $08 $00 $02
	nop                                              ; $5edf: $00
	ld   [$00f8], sp                                 ; $5ee0: $08 $f8 $00
	db   $10                                         ; $5ee3: $10
	ld   [$0e10], sp                                 ; $5ee4: $08 $10 $0e
	nop                                              ; $5ee7: $00
	ld   [$0c08], sp                                 ; $5ee8: $08 $08 $0c
	nop                                              ; $5eeb: $00
	ld   [$0a00], sp                                 ; $5eec: $08 $00 $0a
	nop                                              ; $5eef: $00
	ld   [$08f8], sp                                 ; $5ef0: $08 $f8 $08
	db   $10                                         ; $5ef3: $10
	ld   [$1610], sp                                 ; $5ef4: $08 $10 $16
	nop                                              ; $5ef7: $00
	ld   [$1408], sp                                 ; $5ef8: $08 $08 $14
	nop                                              ; $5efb: $00
	ld   [$1200], sp                                 ; $5efc: $08 $00 $12
	nop                                              ; $5eff: $00
	ld   [$10f8], sp                                 ; $5f00: $08 $f8 $10
	db   $10                                         ; $5f03: $10
	jr   @+$05                                       ; $5f04: $18 $03

	jr   jr_00e_5f18                                 ; $5f06: $18 $10

	jr   @+$05                                       ; $5f08: $18 $03

	ld   a, [de]                                     ; $5f0a: $1a
	db   $10                                         ; $5f0b: $10
	ld   [$0408], sp                                 ; $5f0c: $08 $08 $04
	nop                                              ; $5f0f: $00
	ld   [$0200], sp                                 ; $5f10: $08 $00 $02
	nop                                              ; $5f13: $00
	ld   [$00f8], sp                                 ; $5f14: $08 $f8 $00
	db   $10                                         ; $5f17: $10

jr_00e_5f18:
	ld   [$0a08], sp                                 ; $5f18: $08 $08 $0a
	nop                                              ; $5f1b: $00
	ld   [$0800], sp                                 ; $5f1c: $08 $00 $08
	nop                                              ; $5f1f: $00
	ld   [$06f8], sp                                 ; $5f20: $08 $f8 $06
	db   $10                                         ; $5f23: $10
	ld   [$1008], sp                                 ; $5f24: $08 $08 $10
	nop                                              ; $5f27: $00
	ld   [$0e00], sp                                 ; $5f28: $08 $00 $0e
	nop                                              ; $5f2b: $00
	ld   [$0cf8], sp                                 ; $5f2c: $08 $f8 $0c

jr_00e_5f2f:
	db   $10                                         ; $5f2f: $10
	jr   jr_00e_5f2f                                 ; $5f30: $18 $fd

	ld   [de], a                                     ; $5f32: $12

jr_00e_5f33:
	db   $10                                         ; $5f33: $10
	jr   jr_00e_5f33                                 ; $5f34: $18 $fd

	inc  d                                           ; $5f36: $14
	db   $10                                         ; $5f37: $10
	stop                                             ; $5f38: $10 $00
	ld   b, $00                                      ; $5f3a: $06 $00
	db   $10                                         ; $5f3c: $10
	ld   hl, sp+$04                                  ; $5f3d: $f8 $04
	nop                                              ; $5f3f: $00
	db   $10                                         ; $5f40: $10
	ldh  a, [rSC]                                    ; $5f41: $f0 $02
	nop                                              ; $5f43: $00
	db   $10                                         ; $5f44: $10
	add  sp, $00                                     ; $5f45: $e8 $00
	db   $10                                         ; $5f47: $10
	stop                                             ; $5f48: $10 $00
	ld   c, $00                                      ; $5f4a: $0e $00
	db   $10                                         ; $5f4c: $10
	ld   hl, sp+$0c                                  ; $5f4d: $f8 $0c
	nop                                              ; $5f4f: $00
	db   $10                                         ; $5f50: $10
	ldh  a, [$0a]                                    ; $5f51: $f0 $0a
	nop                                              ; $5f53: $00
	db   $10                                         ; $5f54: $10
	add  sp, $08                                     ; $5f55: $e8 $08
	db   $10                                         ; $5f57: $10
	stop                                             ; $5f58: $10 $00
	ld   d, $00                                      ; $5f5a: $16 $00
	db   $10                                         ; $5f5c: $10
	ld   hl, sp+$14                                  ; $5f5d: $f8 $14
	nop                                              ; $5f5f: $00
	db   $10                                         ; $5f60: $10
	ldh  a, [rAUD1ENV]                               ; $5f61: $f0 $12
	nop                                              ; $5f63: $00
	db   $10                                         ; $5f64: $10
	add  sp, $10                                     ; $5f65: $e8 $10
	db   $10                                         ; $5f67: $10
	jr   @-$06                                       ; $5f68: $18 $f8

	jr   @+$12                                       ; $5f6a: $18 $10

	jr   @-$06                                       ; $5f6c: $18 $f8

	ld   a, [de]                                     ; $5f6e: $1a
	db   $10                                         ; $5f6f: $10
	db   $10                                         ; $5f70: $10
	add  hl, bc                                      ; $5f71: $09
	ld   c, $00                                      ; $5f72: $0e $00
	db   $10                                         ; $5f74: $10
	ld   bc, $000c                                   ; $5f75: $01 $0c $00
	db   $10                                         ; $5f78: $10
	ld   sp, hl                                      ; $5f79: $f9
	ld   a, [bc]                                     ; $5f7a: $0a
	ld   bc, $f110                                   ; $5f7b: $01 $10 $f1
	ld   [$0001], sp                                 ; $5f7e: $08 $01 $00
	add  hl, bc                                      ; $5f81: $09
	ld   b, $00                                      ; $5f82: $06 $00
	nop                                              ; $5f84: $00
	ld   bc, $0004                                   ; $5f85: $01 $04 $00
	nop                                              ; $5f88: $00
	ld   sp, hl                                      ; $5f89: $f9
	ld   [bc], a                                     ; $5f8a: $02
	nop                                              ; $5f8b: $00
	nop                                              ; $5f8c: $00
	pop  af                                          ; $5f8d: $f1
	nop                                              ; $5f8e: $00
	db   $10                                         ; $5f8f: $10
	db   $10                                         ; $5f90: $10
	add  hl, bc                                      ; $5f91: $09
	ld   e, $00                                      ; $5f92: $1e $00
	db   $10                                         ; $5f94: $10
	ld   bc, $001c                                   ; $5f95: $01 $1c $00
	db   $10                                         ; $5f98: $10
	ld   sp, hl                                      ; $5f99: $f9
	ld   a, [de]                                     ; $5f9a: $1a
	ld   bc, $f110                                   ; $5f9b: $01 $10 $f1
	jr   jr_00e_5fa1                                 ; $5f9e: $18 $01

	nop                                              ; $5fa0: $00

jr_00e_5fa1:
	add  hl, bc                                      ; $5fa1: $09
	ld   d, $00                                      ; $5fa2: $16 $00
	nop                                              ; $5fa4: $00
	ld   bc, $0014                                   ; $5fa5: $01 $14 $00
	nop                                              ; $5fa8: $00
	ld   sp, hl                                      ; $5fa9: $f9
	ld   [de], a                                     ; $5faa: $12
	nop                                              ; $5fab: $00
	nop                                              ; $5fac: $00
	pop  af                                          ; $5fad: $f1
	db   $10                                         ; $5fae: $10
	db   $10                                         ; $5faf: $10
	db   $10                                         ; $5fb0: $10
	add  hl, bc                                      ; $5fb1: $09
	ld   l, $00                                      ; $5fb2: $2e $00
	db   $10                                         ; $5fb4: $10
	ld   bc, $002c                                   ; $5fb5: $01 $2c $00
	db   $10                                         ; $5fb8: $10
	ld   sp, hl                                      ; $5fb9: $f9
	ld   a, [hl+]                                    ; $5fba: $2a
	ld   bc, $f110                                   ; $5fbb: $01 $10 $f1
	jr   z, jr_00e_5fc1                              ; $5fbe: $28 $01

	nop                                              ; $5fc0: $00

jr_00e_5fc1:
	add  hl, bc                                      ; $5fc1: $09
	ld   h, $00                                      ; $5fc2: $26 $00
	nop                                              ; $5fc4: $00
	ld   bc, $0024                                   ; $5fc5: $01 $24 $00
	nop                                              ; $5fc8: $00
	ld   sp, hl                                      ; $5fc9: $f9
	ld   [hl+], a                                    ; $5fca: $22
	nop                                              ; $5fcb: $00
	nop                                              ; $5fcc: $00
	pop  af                                          ; $5fcd: $f1
	jr   nz, jr_00e_5fe0                             ; $5fce: $20 $10

	jr   jr_00e_5fda                                 ; $5fd0: $18 $08

	ld   [hl-], a                                    ; $5fd2: $32
	nop                                              ; $5fd3: $00
	jr   jr_00e_5fd6                                 ; $5fd4: $18 $00

jr_00e_5fd6:
	jr   nc, jr_00e_5fe8                             ; $5fd6: $30 $10

	jr   jr_00e_5fe2                                 ; $5fd8: $18 $08

jr_00e_5fda:
	ld   [hl], $00                                   ; $5fda: $36 $00
	jr   jr_00e_5fde                                 ; $5fdc: $18 $00

jr_00e_5fde:
	inc  [hl]                                        ; $5fde: $34
	db   $10                                         ; $5fdf: $10

jr_00e_5fe0:
	db   $10                                         ; $5fe0: $10
	db   $10                                         ; $5fe1: $10

jr_00e_5fe2:
	ld   c, $03                                      ; $5fe2: $0e $03
	db   $10                                         ; $5fe4: $10
	ld   [$000c], sp                                 ; $5fe5: $08 $0c $00

jr_00e_5fe8:
	stop                                             ; $5fe8: $10 $00
	ld   a, [bc]                                     ; $5fea: $0a
	nop                                              ; $5feb: $00
	db   $10                                         ; $5fec: $10
	ld   hl, sp+$08                                  ; $5fed: $f8 $08
	inc  bc                                          ; $5fef: $03
	nop                                              ; $5ff0: $00
	db   $10                                         ; $5ff1: $10
	ld   b, $00                                      ; $5ff2: $06 $00
	nop                                              ; $5ff4: $00
	ld   [$0004], sp                                 ; $5ff5: $08 $04 $00
	nop                                              ; $5ff8: $00
	nop                                              ; $5ff9: $00
	ld   [bc], a                                     ; $5ffa: $02
	nop                                              ; $5ffb: $00
	nop                                              ; $5ffc: $00
	ld   hl, sp+$00                                  ; $5ffd: $f8 $00
	db   $10                                         ; $5fff: $10
	db   $10                                         ; $6000: $10
	db   $10                                         ; $6001: $10
	ld   e, $03                                      ; $6002: $1e $03
	db   $10                                         ; $6004: $10
	ld   [$001c], sp                                 ; $6005: $08 $1c $00
	stop                                             ; $6008: $10 $00
	ld   a, [de]                                     ; $600a: $1a
	nop                                              ; $600b: $00
	db   $10                                         ; $600c: $10
	ld   hl, sp+$18                                  ; $600d: $f8 $18
	inc  bc                                          ; $600f: $03
	nop                                              ; $6010: $00
	db   $10                                         ; $6011: $10
	ld   d, $00                                      ; $6012: $16 $00
	nop                                              ; $6014: $00
	ld   [$0014], sp                                 ; $6015: $08 $14 $00
	nop                                              ; $6018: $00
	nop                                              ; $6019: $00
	ld   [de], a                                     ; $601a: $12
	nop                                              ; $601b: $00
	nop                                              ; $601c: $00
	ld   hl, sp+$10                                  ; $601d: $f8 $10
	db   $10                                         ; $601f: $10
	db   $10                                         ; $6020: $10
	db   $10                                         ; $6021: $10
	ld   l, $03                                      ; $6022: $2e $03
	db   $10                                         ; $6024: $10
	ld   [$002c], sp                                 ; $6025: $08 $2c $00
	stop                                             ; $6028: $10 $00
	ld   a, [hl+]                                    ; $602a: $2a
	nop                                              ; $602b: $00
	db   $10                                         ; $602c: $10
	ld   hl, sp+$28                                  ; $602d: $f8 $28
	inc  bc                                          ; $602f: $03
	nop                                              ; $6030: $00
	db   $10                                         ; $6031: $10
	ld   h, $00                                      ; $6032: $26 $00
	nop                                              ; $6034: $00
	ld   [$0024], sp                                 ; $6035: $08 $24 $00
	nop                                              ; $6038: $00
	nop                                              ; $6039: $00
	ld   [hl+], a                                    ; $603a: $22
	nop                                              ; $603b: $00
	nop                                              ; $603c: $00
	ld   hl, sp+$20                                  ; $603d: $f8 $20
	db   $10                                         ; $603f: $10
	ld   [de], a                                     ; $6040: $12
	ld   [$0034], sp                                 ; $6041: $08 $34 $00
	ld   [de], a                                     ; $6044: $12
	nop                                              ; $6045: $00
	ld   [hl-], a                                    ; $6046: $32
	nop                                              ; $6047: $00
	ld   [de], a                                     ; $6048: $12
	ld   hl, sp+$30                                  ; $6049: $f8 $30
	inc  de                                          ; $604b: $13
	ld   [de], a                                     ; $604c: $12
	ld   [$003a], sp                                 ; $604d: $08 $3a $00
	ld   [de], a                                     ; $6050: $12
	nop                                              ; $6051: $00
	jr   c, jr_00e_6054                              ; $6052: $38 $00

jr_00e_6054:
	ld   [de], a                                     ; $6054: $12
	ld   hl, sp+$36                                  ; $6055: $f8 $36
	inc  de                                          ; $6057: $13
	db   $10                                         ; $6058: $10
	jr   jr_00e_6061                                 ; $6059: $18 $06

	ld   bc, $1010                                   ; $605b: $01 $10 $10
	inc  b                                           ; $605e: $04
	nop                                              ; $605f: $00
	db   $10                                         ; $6060: $10

jr_00e_6061:
	ld   [$0002], sp                                 ; $6061: $08 $02 $00
	stop                                             ; $6064: $10 $00
	nop                                              ; $6066: $00
	db   $10                                         ; $6067: $10
	db   $10                                         ; $6068: $10
	jr   jr_00e_6079                                 ; $6069: $18 $0e

	ld   bc, $1010                                   ; $606b: $01 $10 $10
	inc  c                                           ; $606e: $0c
	nop                                              ; $606f: $00
	db   $10                                         ; $6070: $10
	ld   [$000a], sp                                 ; $6071: $08 $0a $00
	stop                                             ; $6074: $10 $00
	ld   [$1010], sp                                 ; $6076: $08 $10 $10

jr_00e_6079:
	jr   jr_00e_6091                                 ; $6079: $18 $16

	ld   bc, $1010                                   ; $607b: $01 $10 $10
	inc  d                                           ; $607e: $14
	nop                                              ; $607f: $00
	db   $10                                         ; $6080: $10
	ld   [$0012], sp                                 ; $6081: $08 $12 $00
	stop                                             ; $6084: $10 $00
	db   $10                                         ; $6086: $10
	db   $10                                         ; $6087: $10
	jr   @+$0e                                       ; $6088: $18 $0c

	jr   @+$12                                       ; $608a: $18 $10

	jr   jr_00e_609a                                 ; $608c: $18 $0c

	ld   a, [de]                                     ; $608e: $1a
	db   $10                                         ; $608f: $10
	db   $10                                         ; $6090: $10

jr_00e_6091:
	db   $10                                         ; $6091: $10
	inc  c                                           ; $6092: $0c
	nop                                              ; $6093: $00
	db   $10                                         ; $6094: $10
	ld   [$000a], sp                                 ; $6095: $08 $0a $00
	stop                                             ; $6098: $10 $00

jr_00e_609a:
	ld   [rRAMG], sp                                 ; $609a: $08 $00 $00
	db   $10                                         ; $609d: $10
	ld   b, $00                                      ; $609e: $06 $00
	nop                                              ; $60a0: $00
	ld   [$0004], sp                                 ; $60a1: $08 $04 $00
	nop                                              ; $60a4: $00
	nop                                              ; $60a5: $00
	ld   [bc], a                                     ; $60a6: $02
	nop                                              ; $60a7: $00
	ld   [$00f8], sp                                 ; $60a8: $08 $f8 $00
	db   $10                                         ; $60ab: $10
	db   $10                                         ; $60ac: $10
	db   $10                                         ; $60ad: $10
	ld   a, [de]                                     ; $60ae: $1a
	nop                                              ; $60af: $00
	db   $10                                         ; $60b0: $10
	ld   [$0018], sp                                 ; $60b1: $08 $18 $00
	stop                                             ; $60b4: $10 $00
	ld   d, $00                                      ; $60b6: $16 $00
	nop                                              ; $60b8: $00
	db   $10                                         ; $60b9: $10
	inc  d                                           ; $60ba: $14
	nop                                              ; $60bb: $00
	nop                                              ; $60bc: $00
	ld   [$0012], sp                                 ; $60bd: $08 $12 $00
	nop                                              ; $60c0: $00
	nop                                              ; $60c1: $00
	stop                                             ; $60c2: $10 $00
	ld   [$0ef8], sp                                 ; $60c4: $08 $f8 $0e
	db   $10                                         ; $60c7: $10
	db   $10                                         ; $60c8: $10
	db   $10                                         ; $60c9: $10
	jr   z, jr_00e_60cc                              ; $60ca: $28 $00

jr_00e_60cc:
	db   $10                                         ; $60cc: $10
	ld   [$0026], sp                                 ; $60cd: $08 $26 $00
	stop                                             ; $60d0: $10 $00
	inc  h                                           ; $60d2: $24
	nop                                              ; $60d3: $00
	nop                                              ; $60d4: $00
	db   $10                                         ; $60d5: $10
	ld   [hl+], a                                    ; $60d6: $22
	nop                                              ; $60d7: $00
	nop                                              ; $60d8: $00
	ld   [$0020], sp                                 ; $60d9: $08 $20 $00
	nop                                              ; $60dc: $00
	nop                                              ; $60dd: $00
	ld   e, $00                                      ; $60de: $1e $00
	ld   [$1cf8], sp                                 ; $60e0: $08 $f8 $1c
	db   $10                                         ; $60e3: $10
	jr   jr_00e_60ea                                 ; $60e4: $18 $04

jr_00e_60e6:
	ld   a, [hl+]                                    ; $60e6: $2a
	db   $10                                         ; $60e7: $10
	jr   jr_00e_60ee                                 ; $60e8: $18 $04

jr_00e_60ea:
	inc  l                                           ; $60ea: $2c
	db   $10                                         ; $60eb: $10
	jr   jr_00e_60e6                                 ; $60ec: $18 $f8

jr_00e_60ee:
	ld   b, $02                                      ; $60ee: $06 $02
	ld   [$0408], sp                                 ; $60f0: $08 $08 $04
	nop                                              ; $60f3: $00
	ld   [$0200], sp                                 ; $60f4: $08 $00 $02
	nop                                              ; $60f7: $00
	ld   [$00f8], sp                                 ; $60f8: $08 $f8 $00
	db   $10                                         ; $60fb: $10
	jr   @-$06                                       ; $60fc: $18 $f8

	ld   c, $02                                      ; $60fe: $0e $02
	ld   [$0c08], sp                                 ; $6100: $08 $08 $0c
	nop                                              ; $6103: $00
	ld   [$0a00], sp                                 ; $6104: $08 $00 $0a
	nop                                              ; $6107: $00
	ld   [$08f8], sp                                 ; $6108: $08 $f8 $08
	db   $10                                         ; $610b: $10
	jr   @-$06                                       ; $610c: $18 $f8

	ld   d, $02                                      ; $610e: $16 $02
	ld   [$1408], sp                                 ; $6110: $08 $08 $14
	nop                                              ; $6113: $00
	ld   [$1200], sp                                 ; $6114: $08 $00 $12
	nop                                              ; $6117: $00
	ld   [$10f8], sp                                 ; $6118: $08 $f8 $10
	db   $10                                         ; $611b: $10
	jr   jr_00e_611e                                 ; $611c: $18 $00

jr_00e_611e:
	jr   jr_00e_6130                                 ; $611e: $18 $10

	jr   jr_00e_6122                                 ; $6120: $18 $00

jr_00e_6122:
	ld   a, [de]                                     ; $6122: $1a
	db   $10                                         ; $6123: $10
	db   $10                                         ; $6124: $10
	db   $10                                         ; $6125: $10
	ld   c, $00                                      ; $6126: $0e $00
	db   $10                                         ; $6128: $10
	ld   [$000c], sp                                 ; $6129: $08 $0c $00
	stop                                             ; $612c: $10 $00
	ld   a, [bc]                                     ; $612e: $0a
	nop                                              ; $612f: $00

jr_00e_6130:
	db   $10                                         ; $6130: $10
	ld   hl, sp+$08                                  ; $6131: $f8 $08
	nop                                              ; $6133: $00
	nop                                              ; $6134: $00
	db   $10                                         ; $6135: $10
	ld   b, $00                                      ; $6136: $06 $00
	nop                                              ; $6138: $00
	ld   [$0004], sp                                 ; $6139: $08 $04 $00
	nop                                              ; $613c: $00
	nop                                              ; $613d: $00
	ld   [bc], a                                     ; $613e: $02
	nop                                              ; $613f: $00
	nop                                              ; $6140: $00
	ld   hl, sp+$00                                  ; $6141: $f8 $00
	db   $10                                         ; $6143: $10
	db   $10                                         ; $6144: $10
	db   $10                                         ; $6145: $10
	ld   e, $00                                      ; $6146: $1e $00
	db   $10                                         ; $6148: $10
	ld   [$001c], sp                                 ; $6149: $08 $1c $00
	stop                                             ; $614c: $10 $00
	ld   a, [de]                                     ; $614e: $1a
	nop                                              ; $614f: $00
	db   $10                                         ; $6150: $10
	ld   hl, sp+$18                                  ; $6151: $f8 $18
	nop                                              ; $6153: $00
	nop                                              ; $6154: $00
	db   $10                                         ; $6155: $10
	ld   d, $00                                      ; $6156: $16 $00
	nop                                              ; $6158: $00
	ld   [$0014], sp                                 ; $6159: $08 $14 $00
	nop                                              ; $615c: $00
	nop                                              ; $615d: $00
	ld   [de], a                                     ; $615e: $12
	nop                                              ; $615f: $00
	nop                                              ; $6160: $00
	ld   hl, sp+$10                                  ; $6161: $f8 $10
	db   $10                                         ; $6163: $10
	db   $10                                         ; $6164: $10
	db   $10                                         ; $6165: $10
	ld   l, $00                                      ; $6166: $2e $00
	db   $10                                         ; $6168: $10
	ld   [$002c], sp                                 ; $6169: $08 $2c $00
	stop                                             ; $616c: $10 $00
	ld   a, [hl+]                                    ; $616e: $2a
	nop                                              ; $616f: $00
	db   $10                                         ; $6170: $10
	ld   hl, sp+$28                                  ; $6171: $f8 $28
	nop                                              ; $6173: $00
	nop                                              ; $6174: $00
	db   $10                                         ; $6175: $10
	ld   h, $00                                      ; $6176: $26 $00
	nop                                              ; $6178: $00
	ld   [$0024], sp                                 ; $6179: $08 $24 $00
	nop                                              ; $617c: $00
	nop                                              ; $617d: $00
	ld   [hl+], a                                    ; $617e: $22
	nop                                              ; $617f: $00
	nop                                              ; $6180: $00
	ld   hl, sp+$20                                  ; $6181: $f8 $20
	db   $10                                         ; $6183: $10
	db   $10                                         ; $6184: $10
	inc  b                                           ; $6185: $04
	jr   nc, jr_00e_6198                             ; $6186: $30 $10

	db   $10                                         ; $6188: $10
	inc  b                                           ; $6189: $04
	ld   [hl-], a                                    ; $618a: $32
	db   $10                                         ; $618b: $10
	db   $10                                         ; $618c: $10
	ld   [$000c], sp                                 ; $618d: $08 $0c $00
	stop                                             ; $6190: $10 $00
	ld   a, [bc]                                     ; $6192: $0a
	nop                                              ; $6193: $00
	db   $10                                         ; $6194: $10
	ld   hl, sp+$08                                  ; $6195: $f8 $08
	nop                                              ; $6197: $00

jr_00e_6198:
	ld   [$0610], sp                                 ; $6198: $08 $10 $06
	nop                                              ; $619b: $00
	nop                                              ; $619c: $00
	ld   [$0004], sp                                 ; $619d: $08 $04 $00
	nop                                              ; $61a0: $00
	nop                                              ; $61a1: $00
	ld   [bc], a                                     ; $61a2: $02
	nop                                              ; $61a3: $00
	nop                                              ; $61a4: $00
	ld   hl, sp+$00                                  ; $61a5: $f8 $00
	db   $10                                         ; $61a7: $10
	db   $10                                         ; $61a8: $10
	ld   [$001a], sp                                 ; $61a9: $08 $1a $00
	stop                                             ; $61ac: $10 $00
	jr   jr_00e_61b0                                 ; $61ae: $18 $00

jr_00e_61b0:
	db   $10                                         ; $61b0: $10
	ld   hl, sp+$16                                  ; $61b1: $f8 $16
	nop                                              ; $61b3: $00
	ld   [$1410], sp                                 ; $61b4: $08 $10 $14
	nop                                              ; $61b7: $00
	nop                                              ; $61b8: $00
	ld   [$0012], sp                                 ; $61b9: $08 $12 $00
	nop                                              ; $61bc: $00
	nop                                              ; $61bd: $00
	stop                                             ; $61be: $10 $00
	nop                                              ; $61c0: $00
	ld   hl, sp+$0e                                  ; $61c1: $f8 $0e
	db   $10                                         ; $61c3: $10
	db   $10                                         ; $61c4: $10
	ld   [$0028], sp                                 ; $61c5: $08 $28 $00
	stop                                             ; $61c8: $10 $00
	ld   h, $00                                      ; $61ca: $26 $00
	db   $10                                         ; $61cc: $10
	ld   hl, sp+$24                                  ; $61cd: $f8 $24
	nop                                              ; $61cf: $00
	ld   [$2210], sp                                 ; $61d0: $08 $10 $22
	nop                                              ; $61d3: $00
	nop                                              ; $61d4: $00
	ld   [$0020], sp                                 ; $61d5: $08 $20 $00
	nop                                              ; $61d8: $00
	nop                                              ; $61d9: $00
	ld   e, $00                                      ; $61da: $1e $00
	nop                                              ; $61dc: $00
	ld   hl, sp+$1c                                  ; $61dd: $f8 $1c
	db   $10                                         ; $61df: $10
	jr   jr_00e_61ea                                 ; $61e0: $18 $08

	inc  l                                           ; $61e2: $2c
	nop                                              ; $61e3: $00
	jr   jr_00e_61e6                                 ; $61e4: $18 $00

jr_00e_61e6:
	ld   a, [hl+]                                    ; $61e6: $2a
	db   $10                                         ; $61e7: $10
	jr   jr_00e_61f2                                 ; $61e8: $18 $08

jr_00e_61ea:
	jr   nc, jr_00e_61ec                             ; $61ea: $30 $00

jr_00e_61ec:
	jr   jr_00e_61ee                                 ; $61ec: $18 $00

jr_00e_61ee:
	ld   l, $10                                      ; $61ee: $2e $10
	nop                                              ; $61f0: $00
	db   $10                                         ; $61f1: $10

jr_00e_61f2:
	inc  b                                           ; $61f2: $04
	nop                                              ; $61f3: $00
	nop                                              ; $61f4: $00
	ld   [$0002], sp                                 ; $61f5: $08 $02 $00
	nop                                              ; $61f8: $00
	nop                                              ; $61f9: $00
	nop                                              ; $61fa: $00
	stop                                             ; $61fb: $10 $00
	db   $10                                         ; $61fd: $10
	ld   a, [bc]                                     ; $61fe: $0a
	nop                                              ; $61ff: $00
	nop                                              ; $6200: $00
	ld   [$0008], sp                                 ; $6201: $08 $08 $00
	nop                                              ; $6204: $00
	nop                                              ; $6205: $00
	ld   b, $10                                      ; $6206: $06 $10
	nop                                              ; $6208: $00
	db   $10                                         ; $6209: $10
	stop                                             ; $620a: $10 $00
	nop                                              ; $620c: $00
	ld   [$000e], sp                                 ; $620d: $08 $0e $00
	nop                                              ; $6210: $00
	nop                                              ; $6211: $00
	inc  c                                           ; $6212: $0c
	stop                                             ; $6213: $10 $00
	ld   [$1012], sp                                 ; $6215: $08 $12 $10
	nop                                              ; $6218: $00
	ld   [$1014], sp                                 ; $6219: $08 $14 $10


SpriteGroupCPointers::
	dw $62dc
	dw $635c
	dw $6378
	dw $63c8
	dw $6448
	dw $64c8
	dw $64e4
	dw $6564
	dw $6578
	dw $65f8
	dw $6618
	dw $6698
	dw $66a0
	dw $6700
	dw $6704
	dw $6708
	dw $670c
	dw $6710
	dw $6720
	dw $6730
	dw $6740
	dw $6750
	dw $6760
	dw $6770
	dw $6780
	dw $6790
	dw $67a0
	dw $67b0
	dw $67c0
	dw $67c4
	dw SpriteGroupC_Idx1eh_DormRoomDay
	dw SpriteGroupC_Idx1fh_DormRoom0
	dw $67d4
	dw $67d8
	dw $67dc
	dw $67e0
	dw $67e4
	dw $67e8
	dw $67ec
	dw $67f0
	dw $67f4
	dw SpriteGroupC_Idx29h_DormRoomSunday
	dw SpriteGroupC_Idx2ah_DormRoomMonday
	dw SpriteGroupC_Idx2bh_DormRoomTuesday
	dw SpriteGroupC_Idx2ch_DormRoomWednesday
	dw SpriteGroupC_Idx2dh_DormRoomThursday
	dw SpriteGroupC_Idx2eh_DormRoomFriday
	dw SpriteGroupC_Idx2fh_DormRoomSaturday
	dw SpriteGroupC_Idx30h_DormRoomMorning
	dw SpriteGroupC_Idx31h_DormRoomNoon
	dw SpriteGroupC_Idx32h_DormRoomNight
	dw $6848
	dw $687c
	dw $68b0
	dw $68f4
	dw $6924
	dw $6958
	dw $699c
	dw $69dc
	dw $6a20
	dw $6a44
	dw $6a64
	dw $6a7c
	dw $6a90
	dw $6aa4
	dw $6abc
	dw $6ad4
	dw $6af0
	dw $6b0c
	dw $6b24
	dw $6b40
	dw $6b58
	dw $6b8c
	dw $6bbc
	dw $6bec
	dw $6c1c
	dw $6c4c
	dw $6c64
	dw $6c74
	dw Data_0e_6c84
	dw $6cbc
	dw $6d14
	dw $6d6c
	dw $6dc4
	dw $6e1c
	dw $6e28
	dw $6e34
	dw $6e40
	dw $6e8c
	dw $6ed4
	dw $6f1c
	dw $6f64
	dw $6fac
	dw $6ff4
	dw $703c
	dw $7084

	
	ld   [hl], b                                     ; $62dc: $70
	ld   hl, sp+$3e                                  ; $62dd: $f8 $3e
	ld   b, $70                                      ; $62df: $06 $70
	ret  c                                           ; $62e1: $d8

jr_00e_62e2:
	inc  a                                           ; $62e2: $3c
	ld   b, $60                                      ; $62e3: $06 $60
	ld   hl, sp+$3a                                  ; $62e5: $f8 $3a
	nop                                              ; $62e7: $00

jr_00e_62e8:
	ld   h, b                                        ; $62e8: $60
	ldh  a, [$38]                                    ; $62e9: $f0 $38
	dec  b                                           ; $62eb: $05
	ld   h, b                                        ; $62ec: $60
	ret  c                                           ; $62ed: $d8

	ld   [hl], $05                                   ; $62ee: $36 $05
	ld   d, b                                        ; $62f0: $50
	jr   nz, jr_00e_6327                             ; $62f1: $20 $34

	inc  b                                           ; $62f3: $04
	ld   e, b                                        ; $62f4: $58
	db   $10                                         ; $62f5: $10

jr_00e_62f6:
	ld   [hl-], a                                    ; $62f6: $32
	dec  b                                           ; $62f7: $05
	ld   c, b                                        ; $62f8: $48
	db   $10                                         ; $62f9: $10

jr_00e_62fa:
	jr   nc, jr_00e_6301                             ; $62fa: $30 $05

	ld   c, b                                        ; $62fc: $48
	ld   [$052e], sp                                 ; $62fd: $08 $2e $05
	ld   c, b                                        ; $6300: $48

jr_00e_6301:
	ldh  a, [$2c]                                    ; $6301: $f0 $2c
	dec  b                                           ; $6303: $05
	jr   c, @-$26                                    ; $6304: $38 $d8

	ld   a, [hl+]                                    ; $6306: $2a
	dec  b                                           ; $6307: $05
	jr   z, jr_00e_630a                              ; $6308: $28 $00

jr_00e_630a:
	jr   z, jr_00e_6310                              ; $630a: $28 $04

	jr   z, @-$0e                                    ; $630c: $28 $f0

	ld   h, $02                                      ; $630e: $26 $02

jr_00e_6310:
	jr   nz, jr_00e_62fa                             ; $6310: $20 $e8

	inc  h                                           ; $6312: $24
	dec  b                                           ; $6313: $05
	jr   z, jr_00e_62f6                              ; $6314: $28 $e0

	ld   [hl+], a                                    ; $6316: $22
	dec  b                                           ; $6317: $05
	db   $10                                         ; $6318: $10
	db   $10                                         ; $6319: $10

jr_00e_631a:
	jr   nz, jr_00e_631c                             ; $631a: $20 $00

jr_00e_631c:
	jr   jr_00e_6326                                 ; $631c: $18 $08

jr_00e_631e:
	ld   e, $02                                      ; $631e: $1e $02
	jr   jr_00e_6322                                 ; $6320: $18 $00

jr_00e_6322:
	inc  e                                           ; $6322: $1c
	inc  bc                                          ; $6323: $03
	jr   jr_00e_631e                                 ; $6324: $18 $f8

jr_00e_6326:
	ld   a, [de]                                     ; $6326: $1a

jr_00e_6327:
	inc  b                                           ; $6327: $04
	jr   jr_00e_631a                                 ; $6328: $18 $f0

	jr   jr_00e_6333                                 ; $632a: $18 $07

	db   $10                                         ; $632c: $10
	add  sp, $16                                     ; $632d: $e8 $16
	nop                                              ; $632f: $00
	ld   [$1418], sp                                 ; $6330: $08 $18 $14

jr_00e_6333:
	ld   bc, $1000                                   ; $6333: $01 $00 $10

jr_00e_6336:
	ld   [de], a                                     ; $6336: $12
	nop                                              ; $6337: $00
	ld   [$1008], sp                                 ; $6338: $08 $08 $10
	inc  bc                                          ; $633b: $03
	ld   [$0e00], sp                                 ; $633c: $08 $00 $0e
	inc  bc                                          ; $633f: $03
	ld   [$0cf8], sp                                 ; $6340: $08 $f8 $0c
	inc  bc                                          ; $6343: $03
	ld   [$0af0], sp                                 ; $6344: $08 $f0 $0a
	rlca                                             ; $6347: $07
	nop                                              ; $6348: $00
	add  sp, $08                                     ; $6349: $e8 $08
	nop                                              ; $634b: $00
	ld   hl, sp+$08                                  ; $634c: $f8 $08
	ld   b, $00                                      ; $634e: $06 $00
	ld   hl, sp+$00                                  ; $6350: $f8 $00
	inc  b                                           ; $6352: $04
	ld   bc, $f8f8                                   ; $6353: $01 $f8 $f8
	ld   [bc], a                                     ; $6356: $02
	ld   bc, $f0f8                                   ; $6357: $01 $f8 $f0
	nop                                              ; $635a: $00
	db   $10                                         ; $635b: $10
	ld   l, b                                        ; $635c: $68
	jr   nc, jr_00e_63ab                             ; $635d: $30 $4c

	ld   bc, $2868                                   ; $635f: $01 $68 $28
	ld   c, d                                        ; $6362: $4a
	ld   b, $68                                      ; $6363: $06 $68
	jr   nz, @+$4a                                   ; $6365: $20 $48

	ld   b, $68                                      ; $6367: $06 $68
	jr   jr_00e_63b1                                 ; $6369: $18 $46

	ld   b, $68                                      ; $636b: $06 $68
	db   $10                                         ; $636d: $10
	ld   b, h                                        ; $636e: $44
	ld   b, $68                                      ; $636f: $06 $68
	ld   [$0642], sp                                 ; $6371: $08 $42 $06
	ld   l, b                                        ; $6374: $68
	nop                                              ; $6375: $00
	ld   b, b                                        ; $6376: $40
	ld   d, $08                                      ; $6377: $16 $08
	ld   hl, sp+$00                                  ; $6379: $f8 $00
	ld   bc, $e848                                   ; $637b: $01 $48 $e8
	inc  d                                           ; $637e: $14
	nop                                              ; $637f: $00
	jr   c, @-$16                                    ; $6380: $38 $e8

	ld   [de], a                                     ; $6382: $12
	nop                                              ; $6383: $00
	ld   l, b                                        ; $6384: $68
	ld   hl, sp+$26                                  ; $6385: $f8 $26
	ld   [bc], a                                     ; $6387: $02
	ld   l, b                                        ; $6388: $68
	ldh  a, [rAUDVOL]                                ; $6389: $f0 $24
	ld   [bc], a                                     ; $638b: $02
	ld   l, b                                        ; $638c: $68
	add  sp, $22                                     ; $638d: $e8 $22
	ld   [bc], a                                     ; $638f: $02
	ld   l, b                                        ; $6390: $68
	ldh  [rAUD4LEN], a                               ; $6391: $e0 $20
	inc  b                                           ; $6393: $04
	ld   l, b                                        ; $6394: $68
	ret  c                                           ; $6395: $d8

	ld   e, $04                                      ; $6396: $1e $04
	ld   e, b                                        ; $6398: $58
	ei                                               ; $6399: $fb
	inc  e                                           ; $639a: $1c
	ld   [bc], a                                     ; $639b: $02
	ld   e, b                                        ; $639c: $58
	di                                               ; $639d: $f3
	ld   a, [de]                                     ; $639e: $1a
	ld   [bc], a                                     ; $639f: $02
	ld   e, b                                        ; $63a0: $58
	db   $eb                                         ; $63a1: $eb
	jr   jr_00e_63a6                                 ; $63a2: $18 $02

	ld   e, b                                        ; $63a4: $58
	db   $e3                                         ; $63a5: $e3

jr_00e_63a6:
	ld   d, $02                                      ; $63a6: $16 $02
	ld   c, b                                        ; $63a8: $48
	add  hl, hl                                      ; $63a9: $29
	db   $10                                         ; $63aa: $10

jr_00e_63ab:
	inc  bc                                          ; $63ab: $03
	ld   c, b                                        ; $63ac: $48
	ld   hl, $030e                                   ; $63ad: $21 $0e $03
	ld   c, b                                        ; $63b0: $48

jr_00e_63b1:
	db   $10                                         ; $63b1: $10
	inc  c                                           ; $63b2: $0c
	inc  bc                                          ; $63b3: $03
	ld   c, b                                        ; $63b4: $48
	ld   [$030a], sp                                 ; $63b5: $08 $0a $03
	ld   [$0408], sp                                 ; $63b8: $08 $08 $04
	ld   bc, $0008                                   ; $63bb: $01 $08 $00
	ld   [bc], a                                     ; $63be: $02
	ld   bc, $1808                                   ; $63bf: $01 $08 $18
	ld   [$0801], sp                                 ; $63c2: $08 $01 $08
	db   $10                                         ; $63c5: $10
	ld   b, $11                                      ; $63c6: $06 $11
	jr   nc, @-$0e                                   ; $63c8: $30 $f0

	ld   a, [bc]                                     ; $63ca: $0a
	inc  bc                                          ; $63cb: $03
	ld   l, b                                        ; $63cc: $68
	pop  af                                          ; $63cd: $f1
	ld   a, $00                                      ; $63ce: $3e $00
	ld   l, b                                        ; $63d0: $68
	ld   sp, hl                                      ; $63d1: $f9
	inc  a                                           ; $63d2: $3c
	nop                                              ; $63d3: $00
	ld   l, b                                        ; $63d4: $68
	ld   bc, $003a                                   ; $63d5: $01 $3a $00
	ld   l, b                                        ; $63d8: $68
	add  hl, bc                                      ; $63d9: $09
	jr   c, jr_00e_63dc                              ; $63da: $38 $00

jr_00e_63dc:
	ld   l, b                                        ; $63dc: $68
	ld   de, $0036                                   ; $63dd: $11 $36 $00
	ld   h, b                                        ; $63e0: $60
	add  hl, de                                      ; $63e1: $19
	inc  [hl]                                        ; $63e2: $34
	nop                                              ; $63e3: $00
	ld   e, b                                        ; $63e4: $58
	ld   de, $0032                                   ; $63e5: $11 $32 $00
	ld   e, b                                        ; $63e8: $58
	add  hl, bc                                      ; $63e9: $09
	jr   nc, jr_00e_63ec                             ; $63ea: $30 $00

jr_00e_63ec:
	ld   e, b                                        ; $63ec: $58
	ld   bc, $002e                                   ; $63ed: $01 $2e $00
	ld   e, b                                        ; $63f0: $58
	ld   sp, hl                                      ; $63f1: $f9
	inc  l                                           ; $63f2: $2c
	nop                                              ; $63f3: $00
	ld   e, b                                        ; $63f4: $58
	pop  af                                          ; $63f5: $f1
	ld   a, [hl+]                                    ; $63f6: $2a
	nop                                              ; $63f7: $00
	ld   l, b                                        ; $63f8: $68
	jr   nc, @+$2a                                   ; $63f9: $30 $28

	dec  b                                           ; $63fb: $05
	ld   e, b                                        ; $63fc: $58
	jr   nc, @+$28                                   ; $63fd: $30 $26

	dec  b                                           ; $63ff: $05
	ld   d, b                                        ; $6400: $50
	jr   z, @+$26                                    ; $6401: $28 $24

	inc  bc                                          ; $6403: $03
	ld   c, b                                        ; $6404: $48
	jr   nz, @+$12                                   ; $6405: $20 $10

	inc  bc                                          ; $6407: $03
	ld   d, b                                        ; $6408: $50
	jr   @+$10                                       ; $6409: $18 $0e

	inc  bc                                          ; $640b: $03
	ld   b, b                                        ; $640c: $40
	jr   @+$0e                                       ; $640d: $18 $0c

	inc  bc                                          ; $640f: $03
	ccf                                              ; $6410: $3f
	jr   @+$24                                       ; $6411: $18 $22

	inc  b                                           ; $6413: $04
	ld   c, b                                        ; $6414: $48
	db   $10                                         ; $6415: $10
	jr   nz, jr_00e_641c                             ; $6416: $20 $04

	jr   c, jr_00e_642a                              ; $6418: $38 $10

	ld   e, $04                                      ; $641a: $1e $04

jr_00e_641c:
	ld   b, b                                        ; $641c: $40
	nop                                              ; $641d: $00

jr_00e_641e:
	ld   a, [de]                                     ; $641e: $1a
	inc  b                                           ; $641f: $04
	ld   b, b                                        ; $6420: $40
	ld   [$041c], sp                                 ; $6421: $08 $1c $04
	jr   nc, jr_00e_642e                             ; $6424: $30 $08

	jr   jr_00e_642c                                 ; $6426: $18 $04

	jr   nc, jr_00e_642a                             ; $6428: $30 $00

jr_00e_642a:
	ld   d, $04                                      ; $642a: $16 $04

jr_00e_642c:
	jr   c, jr_00e_641e                              ; $642c: $38 $f0

jr_00e_642e:
	ld   [de], a                                     ; $642e: $12
	inc  b                                           ; $642f: $04
	jr   c, jr_00e_642a                              ; $6430: $38 $f8

	inc  d                                           ; $6432: $14
	inc  b                                           ; $6433: $04
	jr   z, jr_00e_641e                              ; $6434: $28 $e8

	ld   [$2803], sp                                 ; $6436: $08 $03 $28
	ldh  [rTMA], a                                   ; $6439: $e0 $06
	inc  bc                                          ; $643b: $03
	jr   @-$04                                       ; $643c: $18 $fa

	inc  b                                           ; $643e: $04
	ld   [bc], a                                     ; $643f: $02
	ld   [$0208], sp                                 ; $6440: $08 $08 $02
	ld   bc, $0008                                   ; $6443: $01 $08 $00
	nop                                              ; $6446: $00
	ld   de, $f860                                   ; $6447: $11 $60 $f8
	inc  a                                           ; $644a: $3c
	ld   bc, $3058                                   ; $644b: $01 $58 $30
	ld   a, [hl+]                                    ; $644e: $2a
	inc  b                                           ; $644f: $04
	ld   c, b                                        ; $6450: $48
	jr   z, jr_00e_647b                              ; $6451: $28 $28

	inc  b                                           ; $6453: $04
	ld   c, b                                        ; $6454: $48
	jr   nz, jr_00e_647d                             ; $6455: $20 $26

	inc  b                                           ; $6457: $04
	ld   b, b                                        ; $6458: $40
	ret  c                                           ; $6459: $d8

	inc  l                                           ; $645a: $2c
	ld   bc, $0058                                   ; $645b: $01 $58 $00
	ld   a, $01                                      ; $645e: $3e $01
	ld   d, b                                        ; $6460: $50
	ld   hl, sp+$3a                                  ; $6461: $f8 $3a
	ld   bc, $f050                                   ; $6463: $01 $50 $f0
	jr   c, jr_00e_6469                              ; $6466: $38 $01

	ld   d, b                                        ; $6468: $50

jr_00e_6469:
	add  sp, $36                                     ; $6469: $e8 $36
	inc  bc                                          ; $646b: $03
	ld   d, b                                        ; $646c: $50
	ldh  [$34], a                                    ; $646d: $e0 $34
	inc  bc                                          ; $646f: $03
	ld   d, b                                        ; $6470: $50
	ret  c                                           ; $6471: $d8

	ld   [hl-], a                                    ; $6472: $32
	inc  bc                                          ; $6473: $03
	ld   b, b                                        ; $6474: $40
	ldh  a, [$2e]                                    ; $6475: $f0 $2e
	ld   b, $40                                      ; $6477: $06 $40
	ld   hl, sp+$30                                  ; $6479: $f8 $30

jr_00e_647b:
	ld   b, $40                                      ; $647b: $06 $40

jr_00e_647d:
	db   $10                                         ; $647d: $10
	ld   e, $01                                      ; $647e: $1e $01
	jr   nc, jr_00e_649a                             ; $6480: $30 $18

	inc  e                                           ; $6482: $1c
	ld   b, $38                                      ; $6483: $06 $38
	jr   z, jr_00e_64ab                              ; $6485: $28 $24

	ld   bc, $2038                                   ; $6487: $01 $38 $20
	ld   [hl+], a                                    ; $648a: $22
	inc  b                                           ; $648b: $04
	jr   z, @-$06                                    ; $648c: $28 $f8

	inc  d                                           ; $648e: $14
	ld   [bc], a                                     ; $648f: $02
	jr   c, jr_00e_6492                              ; $6490: $38 $00

jr_00e_6492:
	ld   d, $05                                      ; $6492: $16 $05
	jr   z, jr_00e_649e                              ; $6494: $28 $08

jr_00e_6496:
	jr   @+$07                                       ; $6496: $18 $05

	jr   nc, @+$12                                   ; $6498: $30 $10

jr_00e_649a:
	ld   a, [de]                                     ; $649a: $1a
	ld   [bc], a                                     ; $649b: $02
	jr   z, @+$22                                    ; $649c: $28 $20

jr_00e_649e:
	jr   nz, jr_00e_64a1                             ; $649e: $20 $01

	db   $10                                         ; $64a0: $10

jr_00e_64a1:
	jr   z, @+$14                                    ; $64a1: $28 $12

	dec  b                                           ; $64a3: $05
	db   $10                                         ; $64a4: $10
	jr   nz, @+$12                                   ; $64a5: $20 $10

	dec  b                                           ; $64a7: $05
	db   $10                                         ; $64a8: $10
	jr   jr_00e_64b9                                 ; $64a9: $18 $0e

jr_00e_64ab:
	dec  b                                           ; $64ab: $05
	jr   @+$12                                       ; $64ac: $18 $10

	inc  c                                           ; $64ae: $0c
	dec  b                                           ; $64af: $05
	jr   nz, jr_00e_649a                             ; $64b0: $20 $e8

	ld   a, [bc]                                     ; $64b2: $0a
	nop                                              ; $64b3: $00
	jr   nz, jr_00e_6496                             ; $64b4: $20 $e0

	ld   [rROMB0], sp                                 ; $64b6: $08 $00 $20

jr_00e_64b9:
	ret  c                                           ; $64b9: $d8

	ld   b, $00                                      ; $64ba: $06 $00
	db   $10                                         ; $64bc: $10
	ldh  a, [rDIV]                                   ; $64bd: $f0 $04
	ld   bc, $e000                                   ; $64bf: $01 $00 $e0
	ld   [bc], a                                     ; $64c2: $02
	ld   bc, $d800                                   ; $64c3: $01 $00 $d8
	nop                                              ; $64c6: $00
	ld   de, $2060                                   ; $64c7: $11 $60 $20
	ld   b, h                                        ; $64ca: $44
	ld   bc, $0068                                   ; $64cb: $01 $68 $00
	ld   c, h                                        ; $64ce: $4c
	ld   bc, $f868                                   ; $64cf: $01 $68 $f8
	ld   c, d                                        ; $64d2: $4a
	ld   bc, $1068                                   ; $64d3: $01 $68 $10
	ld   b, d                                        ; $64d6: $42
	ld   bc, $e060                                   ; $64d7: $01 $60 $e0

jr_00e_64da:
	ld   b, [hl]                                     ; $64da: $46
	inc  bc                                          ; $64db: $03
	ld   [hl], b                                     ; $64dc: $70
	ldh  [rOBP0], a                                  ; $64dd: $e0 $48
	inc  bc                                          ; $64df: $03
	ld   e, b                                        ; $64e0: $58
	db   $10                                         ; $64e1: $10
	ld   b, b                                        ; $64e2: $40
	ld   de, $d838                                   ; $64e3: $11 $38 $d8
	inc  e                                           ; $64e6: $1c
	ld   [bc], a                                     ; $64e7: $02
	jr   c, jr_00e_64da                              ; $64e8: $38 $f0

	ld   e, $03                                      ; $64ea: $1e $03
	ld   e, b                                        ; $64ec: $58
	ldh  [$34], a                                    ; $64ed: $e0 $34
	ld   b, $58                                      ; $64ef: $06 $58
	ldh  a, [$36]                                    ; $64f1: $f0 $36
	ld   b, $58                                      ; $64f3: $06 $58
	jr   z, @+$40                                    ; $64f5: $28 $3e

	ld   [bc], a                                     ; $64f7: $02
	ld   e, b                                        ; $64f8: $58
	jr   nz, @+$3e                                   ; $64f9: $20 $3c

	ld   [bc], a                                     ; $64fb: $02
	ld   d, b                                        ; $64fc: $50
	jr   @+$3c                                       ; $64fd: $18 $3a

	ld   bc, $0850                                   ; $64ff: $01 $50 $08
	jr   c, jr_00e_6505                              ; $6502: $38 $01

	ld   c, b                                        ; $6504: $48

jr_00e_6505:
	jr   z, @+$34                                    ; $6505: $28 $32

	rlca                                             ; $6507: $07
	ld   b, b                                        ; $6508: $40
	jr   nz, jr_00e_653b                             ; $6509: $20 $30

	rlca                                             ; $650b: $07
	ld   b, b                                        ; $650c: $40
	jr   @+$30                                       ; $650d: $18 $2e

	rlca                                             ; $650f: $07
	ld   b, b                                        ; $6510: $40
	db   $10                                         ; $6511: $10
	inc  l                                           ; $6512: $2c
	ld   bc, $0840                                   ; $6513: $01 $40 $08
	ld   a, [hl+]                                    ; $6516: $2a
	ld   bc, $3038                                   ; $6517: $01 $38 $30
	jr   z, jr_00e_6520                              ; $651a: $28 $04

	jr   c, @+$2a                                    ; $651c: $38 $28

	ld   h, $04                                      ; $651e: $26 $04

jr_00e_6520:
	jr   nc, jr_00e_6542                             ; $6520: $30 $20

	inc  h                                           ; $6522: $24
	inc  b                                           ; $6523: $04
	jr   nc, jr_00e_653e                             ; $6524: $30 $18

	ld   [hl+], a                                    ; $6526: $22
	ld   bc, $1030                                   ; $6527: $01 $30 $10
	jr   nz, @+$03                                   ; $652a: $20 $01

	jr   z, jr_00e_655e                              ; $652c: $28 $30

	ld   a, [de]                                     ; $652e: $1a
	ld   b, $28                                      ; $652f: $06 $28
	jr   z, jr_00e_654b                              ; $6531: $28 $18

	inc  bc                                          ; $6533: $03
	jr   nz, @+$22                                   ; $6534: $20 $20

	ld   d, $00                                      ; $6536: $16 $00
	jr   nz, @+$1a                                   ; $6538: $20 $18

	inc  d                                           ; $653a: $14

jr_00e_653b:
	dec  b                                           ; $653b: $05
	jr   nz, @+$12                                   ; $653c: $20 $10

jr_00e_653e:
	ld   [de], a                                     ; $653e: $12
	dec  b                                           ; $653f: $05
	jr   nz, jr_00e_654a                             ; $6540: $20 $08

jr_00e_6542:
	db   $10                                         ; $6542: $10
	dec  b                                           ; $6543: $05
	db   $10                                         ; $6544: $10
	jr   jr_00e_6553                                 ; $6545: $18 $0c

	inc  bc                                          ; $6547: $03
	db   $10                                         ; $6548: $10
	db   $10                                         ; $6549: $10

jr_00e_654a:
	ld   a, [bc]                                     ; $654a: $0a

jr_00e_654b:
	nop                                              ; $654b: $00
	db   $10                                         ; $654c: $10
	ld   [$0308], sp                                 ; $654d: $08 $08 $03
	db   $10                                         ; $6550: $10
	jr   nc, jr_00e_6561                             ; $6551: $30 $0e

jr_00e_6553:
	inc  bc                                          ; $6553: $03
	nop                                              ; $6554: $00
	jr   z, jr_00e_655d                              ; $6555: $28 $06

	inc  bc                                          ; $6557: $03
	nop                                              ; $6558: $00
	jr   jr_00e_655f                                 ; $6559: $18 $04

	inc  bc                                          ; $655b: $03
	nop                                              ; $655c: $00

jr_00e_655d:
	db   $10                                         ; $655d: $10

jr_00e_655e:
	ld   [bc], a                                     ; $655e: $02

jr_00e_655f:
	inc  bc                                          ; $655f: $03
	nop                                              ; $6560: $00

jr_00e_6561:
	ld   [$1300], sp                                 ; $6561: $08 $00 $13
	ld   l, b                                        ; $6564: $68
	ld   hl, sp+$42                                  ; $6565: $f8 $42
	ld   b, $68                                      ; $6567: $06 $68
	ldh  [rLCDC], a                                  ; $6569: $e0 $40
	ld   bc, $2868                                   ; $656b: $01 $68 $28
	ld   c, b                                        ; $656e: $48
	inc  bc                                          ; $656f: $03
	ld   l, b                                        ; $6570: $68
	jr   nz, jr_00e_65b9                             ; $6571: $20 $46

	ld   [bc], a                                     ; $6573: $02
	ld   l, b                                        ; $6574: $68
	jr   jr_00e_65bb                                 ; $6575: $18 $44

	ld   [de], a                                     ; $6577: $12
	ld   b, b                                        ; $6578: $40
	nop                                              ; $6579: $00
	ld   c, [hl]                                     ; $657a: $4e
	rlca                                             ; $657b: $07
	jr   z, @+$22                                    ; $657c: $28 $20

	ld   c, h                                        ; $657e: $4c
	ld   [bc], a                                     ; $657f: $02
	ld   c, b                                        ; $6580: $48
	jr   z, @+$48                                    ; $6581: $28 $46

	ld   [bc], a                                     ; $6583: $02
	jr   z, @+$12                                    ; $6584: $28 $10

jr_00e_6586:
	ld   b, h                                        ; $6586: $44
	ld   [bc], a                                     ; $6587: $02
	jr   nc, jr_00e_658a                             ; $6588: $30 $00

jr_00e_658a:
	ld   b, d                                        ; $658a: $42
	ld   [bc], a                                     ; $658b: $02
	jr   nz, jr_00e_6586                             ; $658c: $20 $f8

	ld   b, b                                        ; $658e: $40
	ld   b, $40                                      ; $658f: $06 $40
	ldh  [$3a], a                                    ; $6591: $e0 $3a
	dec  b                                           ; $6593: $05
	ld   d, b                                        ; $6594: $50
	add  sp, $38                                     ; $6595: $e8 $38
	inc  bc                                          ; $6597: $03
	ld   d, b                                        ; $6598: $50
	nop                                              ; $6599: $00
	inc  [hl]                                        ; $659a: $34
	inc  bc                                          ; $659b: $03
	ld   c, b                                        ; $659c: $48
	ld   hl, sp+$30                                  ; $659d: $f8 $30
	inc  b                                           ; $659f: $04
	ld   b, b                                        ; $65a0: $40
	ldh  a, [$2e]                                    ; $65a1: $f0 $2e
	inc  b                                           ; $65a3: $04
	ld   c, b                                        ; $65a4: $48
	inc  de                                          ; $65a5: $13
	inc  l                                           ; $65a6: $2c
	inc  bc                                          ; $65a7: $03
	ld   c, b                                        ; $65a8: $48
	dec  bc                                          ; $65a9: $0b
	ld   a, [hl+]                                    ; $65aa: $2a
	inc  bc                                          ; $65ab: $03
	jr   z, @+$2a                                    ; $65ac: $28 $28

	jr   z, jr_00e_65b2                              ; $65ae: $28 $02

	ld   a, $30                                      ; $65b0: $3e $30

jr_00e_65b2:
	ld   h, $02                                      ; $65b2: $26 $02
	ld   a, [bc]                                     ; $65b4: $0a
	nop                                              ; $65b5: $00
	jr   nz, jr_00e_65b9                             ; $65b6: $20 $01

	ld   a, [de]                                     ; $65b8: $1a

jr_00e_65b9:
	jr   jr_00e_65d7                                 ; $65b9: $18 $1c

jr_00e_65bb:
	nop                                              ; $65bb: $00
	add  hl, bc                                      ; $65bc: $09
	jr   @+$1c                                       ; $65bd: $18 $1a

	nop                                              ; $65bf: $00
	dec  c                                           ; $65c0: $0d
	db   $10                                         ; $65c1: $10
	jr   jr_00e_65c4                                 ; $65c2: $18 $00

jr_00e_65c4:
	db   $fd                                         ; $65c4: $fd
	db   $10                                         ; $65c5: $10
	ld   d, $00                                      ; $65c6: $16 $00
	ld   [$1408], sp                                 ; $65c8: $08 $08 $14
	nop                                              ; $65cb: $00
	ld   hl, sp+$08                                  ; $65cc: $f8 $08
	ld   [de], a                                     ; $65ce: $12
	nop                                              ; $65cf: $00
	jr   @-$06                                       ; $65d0: $18 $f8

	ld   e, $01                                      ; $65d2: $1e $01
	ld   hl, $1000                                   ; $65d4: $21 $00 $10

jr_00e_65d7:
	inc  bc                                          ; $65d7: $03
	ld   a, [$0e00]                                  ; $65d8: $fa $00 $0e
	nop                                              ; $65db: $00
	ld   [$0cf8], sp                                 ; $65dc: $08 $f8 $0c
	nop                                              ; $65df: $00
	ld   hl, sp-$08                                  ; $65e0: $f8 $f8
	ld   a, [bc]                                     ; $65e2: $0a
	nop                                              ; $65e3: $00
	jr   @-$0e                                       ; $65e4: $18 $f0

	ld   [$0800], sp                                 ; $65e6: $08 $00 $08
	ldh  a, [rTMA]                                   ; $65e9: $f0 $06
	nop                                              ; $65eb: $00
	ld   hl, sp-$10                                  ; $65ec: $f8 $f0
	inc  b                                           ; $65ee: $04
	nop                                              ; $65ef: $00
	jr   @-$16                                       ; $65f0: $18 $e8

	ld   [bc], a                                     ; $65f2: $02
	nop                                              ; $65f3: $00
	ld   [$00e8], sp                                 ; $65f4: $08 $e8 $00
	db   $10                                         ; $65f7: $10
	ld   l, b                                        ; $65f8: $68
	jr   z, jr_00e_6645                              ; $65f9: $28 $4a

	ld   bc, $2958                                   ; $65fb: $01 $58 $29
	ld   c, b                                        ; $65fe: $48
	ld   bc, $e868                                   ; $65ff: $01 $68 $e8
	ld   a, $05                                      ; $6602: $3e $05
	ld   l, b                                        ; $6604: $68
	ldh  [$3c], a                                    ; $6605: $e0 $3c
	dec  b                                           ; $6607: $05
	ld   e, b                                        ; $6608: $58
	ld   [$0336], sp                                 ; $6609: $08 $36 $03
	ld   e, e                                        ; $660c: $5b
	ret  c                                           ; $660d: $d8

	ld   [hl-], a                                    ; $660e: $32
	ld   [bc], a                                     ; $660f: $02
	ld   e, b                                        ; $6610: $58
	jr   nz, jr_00e_6637                             ; $6611: $20 $24

	ld   [bc], a                                     ; $6613: $02
	ld   l, b                                        ; $6614: $68
	jr   jr_00e_6639                                 ; $6615: $18 $22

	ld   [de], a                                     ; $6617: $12
	ld   l, b                                        ; $6618: $68
	nop                                              ; $6619: $00
	ld   a, $00                                      ; $661a: $3e $00
	ld   l, b                                        ; $661c: $68
	ld   hl, sp+$3c                                  ; $661d: $f8 $3c
	inc  bc                                          ; $661f: $03
	ld   e, b                                        ; $6620: $58
	ld   hl, sp+$3a                                  ; $6621: $f8 $3a
	inc  bc                                          ; $6623: $03
	ld   d, b                                        ; $6624: $50
	jr   z, jr_00e_665f                              ; $6625: $28 $38

	dec  b                                           ; $6627: $05
	ld   d, b                                        ; $6628: $50
	jr   nz, @+$38                                   ; $6629: $20 $36

	nop                                              ; $662b: $00
	ld   d, b                                        ; $662c: $50
	db   $10                                         ; $662d: $10
	inc  [hl]                                        ; $662e: $34
	nop                                              ; $662f: $00
	ld   d, b                                        ; $6630: $50
	nop                                              ; $6631: $00
	ld   [hl-], a                                    ; $6632: $32
	nop                                              ; $6633: $00
	ld   d, b                                        ; $6634: $50
	ldh  a, [$30]                                    ; $6635: $f0 $30

jr_00e_6637:
	nop                                              ; $6637: $00
	ld   d, b                                        ; $6638: $50

jr_00e_6639:
	add  sp, $2e                                     ; $6639: $e8 $2e
	nop                                              ; $663b: $00
	ld   e, b                                        ; $663c: $58
	ldh  [$2c], a                                    ; $663d: $e0 $2c
	nop                                              ; $663f: $00
	ld   b, b                                        ; $6640: $40
	jr   z, jr_00e_666d                              ; $6641: $28 $2a

	nop                                              ; $6643: $00
	ld   b, b                                        ; $6644: $40

jr_00e_6645:
	jr   nz, jr_00e_666f                             ; $6645: $20 $28

	inc  b                                           ; $6647: $04
	ld   b, b                                        ; $6648: $40
	jr   @+$28                                       ; $6649: $18 $26

	inc  b                                           ; $664b: $04
	ld   b, b                                        ; $664c: $40
	ld   [$0424], sp                                 ; $664d: $08 $24 $04
	jr   nc, @+$1a                                   ; $6650: $30 $18

jr_00e_6652:
	ld   [hl+], a                                    ; $6652: $22
	inc  b                                           ; $6653: $04
	jr   nc, jr_00e_665e                             ; $6654: $30 $08

jr_00e_6656:
	ld   e, $07                                      ; $6656: $1e $07
	jr   c, jr_00e_665a                              ; $6658: $38 $00

jr_00e_665a:
	inc  e                                           ; $665a: $1c
	rlca                                             ; $665b: $07
	jr   nc, jr_00e_6656                             ; $665c: $30 $f8

jr_00e_665e:
	ld   a, [de]                                     ; $665e: $1a

jr_00e_665f:
	nop                                              ; $665f: $00
	jr   c, jr_00e_6652                              ; $6660: $38 $f0

	jr   jr_00e_6664                                 ; $6662: $18 $00

jr_00e_6664:
	jr   c, @-$16                                    ; $6664: $38 $e8

	ld   d, $00                                      ; $6666: $16 $00
	ld   b, b                                        ; $6668: $40
	ldh  [rAUD1HIGH], a                              ; $6669: $e0 $14
	nop                                              ; $666b: $00
	ld   c, b                                        ; $666c: $48

jr_00e_666d:
	ret  c                                           ; $666d: $d8

	ld   [de], a                                     ; $666e: $12

jr_00e_666f:
	nop                                              ; $666f: $00
	jr   c, jr_00e_6682                              ; $6670: $38 $10

	jr   nz, @+$03                                   ; $6672: $20 $01

	jr   nz, jr_00e_668e                             ; $6674: $20 $18

	db   $10                                         ; $6676: $10
	ld   b, $20                                      ; $6677: $06 $20
	db   $10                                         ; $6679: $10
	ld   c, $02                                      ; $667a: $0e $02
	db   $10                                         ; $667c: $10
	db   $10                                         ; $667d: $10
	inc  c                                           ; $667e: $0c
	ld   [bc], a                                     ; $667f: $02
	jr   nz, jr_00e_668a                             ; $6680: $20 $08

jr_00e_6682:
	ld   a, [bc]                                     ; $6682: $0a
	ld   [bc], a                                     ; $6683: $02
	jr   z, jr_00e_6686                              ; $6684: $28 $00

jr_00e_6686:
	ld   [$1806], sp                                 ; $6686: $08 $06 $18
	nop                                              ; $6689: $00

jr_00e_668a:
	ld   b, $02                                      ; $668a: $06 $02
	jr   nz, jr_00e_6686                             ; $668c: $20 $f8

jr_00e_668e:
	inc  b                                           ; $668e: $04
	nop                                              ; $668f: $00
	jr   jr_00e_6682                                 ; $6690: $18 $f0

	nop                                              ; $6692: $00
	nop                                              ; $6693: $00
	db   $10                                         ; $6694: $10
	ld   hl, sp+$02                                  ; $6695: $f8 $02
	db   $10                                         ; $6697: $10
	ld   h, b                                        ; $6698: $60

jr_00e_6699:
	jr   z, @+$44                                    ; $6699: $28 $42

jr_00e_669b:
	inc  bc                                          ; $669b: $03
	ld   l, b                                        ; $669c: $68
	jr   nz, @+$42                                   ; $669d: $20 $40

	inc  de                                          ; $669f: $13
	jr   jr_00e_66ba                                 ; $66a0: $18 $18

	ld   l, $05                                      ; $66a2: $2e $05
	jr   z, @+$32                                    ; $66a4: $28 $30

	ld   a, [hl+]                                    ; $66a6: $2a
	inc  bc                                          ; $66a7: $03
	jr   @+$32                                       ; $66a8: $18 $30

	jr   z, @+$05                                    ; $66aa: $28 $03

	jr   z, @+$2a                                    ; $66ac: $28 $28

	ld   h, $03                                      ; $66ae: $26 $03
	jr   @+$2a                                       ; $66b0: $18 $28

	inc  h                                           ; $66b2: $24

jr_00e_66b3:
	inc  bc                                          ; $66b3: $03
	jr   z, @+$22                                    ; $66b4: $28 $20

	ld   [hl+], a                                    ; $66b6: $22
	inc  bc                                          ; $66b7: $03
	jr   @+$22                                       ; $66b8: $18 $20

jr_00e_66ba:
	jr   nz, @+$05                                   ; $66ba: $20 $03

	jr   z, jr_00e_66c6                              ; $66bc: $28 $08

jr_00e_66be:
	ld   e, $02                                      ; $66be: $1e $02
	jr   nz, jr_00e_66c2                             ; $66c0: $20 $00

jr_00e_66c2:
	inc  e                                           ; $66c2: $1c
	ld   [bc], a                                     ; $66c3: $02
	jr   jr_00e_66be                                 ; $66c4: $18 $f8

jr_00e_66c6:
	ld   a, [de]                                     ; $66c6: $1a
	ld   [bc], a                                     ; $66c7: $02
	jr   nc, @-$09                                   ; $66c8: $30 $f5

	jr   jr_00e_66ce                                 ; $66ca: $18 $02

	jr   z, jr_00e_66be                              ; $66cc: $28 $f0

jr_00e_66ce:
	ld   d, $02                                      ; $66ce: $16 $02
	jr   nz, jr_00e_66ba                             ; $66d0: $20 $e8

	inc  d                                           ; $66d2: $14
	ld   [bc], a                                     ; $66d3: $02
	db   $10                                         ; $66d4: $10
	add  sp, $12                                     ; $66d5: $e8 $12
	ld   [bc], a                                     ; $66d7: $02
	nop                                              ; $66d8: $00
	ldh  [rAUD1SWEEP], a                             ; $66d9: $e0 $10
	nop                                              ; $66db: $00
	jr   nc, @+$12                                   ; $66dc: $30 $10

	ld   c, $00                                      ; $66de: $0e $00
	ld   l, b                                        ; $66e0: $68

jr_00e_66e1:
	push af                                          ; $66e1: $f5
	inc  c                                           ; $66e2: $0c

jr_00e_66e3:
	ld   [bc], a                                     ; $66e3: $02
	ld   e, b                                        ; $66e4: $58
	ld   hl, sp+$0a                                  ; $66e5: $f8 $0a
	nop                                              ; $66e7: $00
	ld   c, b                                        ; $66e8: $48
	add  sp, $2c                                     ; $66e9: $e8 $2c
	inc  b                                           ; $66eb: $04
	ld   c, b                                        ; $66ec: $48
	ldh  a, [$08]                                    ; $66ed: $f0 $08
	ld   bc, $3038                                   ; $66ef: $01 $38 $30
	ld   b, $00                                      ; $66f2: $06 $00
	jr   c, @+$2a                                    ; $66f4: $38 $28

	inc  b                                           ; $66f6: $04
	nop                                              ; $66f7: $00
	jr   c, jr_00e_671a                              ; $66f8: $38 $20

	ld   [bc], a                                     ; $66fa: $02

jr_00e_66fb:
	nop                                              ; $66fb: $00
	jr   c, @+$1a                                    ; $66fc: $38 $18

	nop                                              ; $66fe: $00
	db   $10                                         ; $66ff: $10
	db   $10                                         ; $6700: $10
	ld   [$1568], sp                                 ; $6701: $08 $68 $15
	db   $10                                         ; $6704: $10
	ld   [$1e70], sp                                 ; $6705: $08 $70 $1e
	db   $10                                         ; $6708: $10
	ld   [$1e72], sp                                 ; $6709: $08 $72 $1e
	db   $10                                         ; $670c: $10
	ld   [$1e74], sp                                 ; $670d: $08 $74 $1e
	db   $10                                         ; $6710: $10

jr_00e_6711:
	jr   nz, jr_00e_6699                             ; $6711: $20 $86

jr_00e_6713:
	inc  c                                           ; $6713: $0c
	db   $10                                         ; $6714: $10
	jr   jr_00e_669b                                 ; $6715: $18 $84

	inc  c                                           ; $6717: $0c
	db   $10                                         ; $6718: $10
	db   $10                                         ; $6719: $10

jr_00e_671a:
	add  d                                           ; $671a: $82
	inc  c                                           ; $671b: $0c
	db   $10                                         ; $671c: $10
	ld   [$1c80], sp                                 ; $671d: $08 $80 $1c
	db   $10                                         ; $6720: $10
	jr   nz, @-$70                                   ; $6721: $20 $8e

	inc  c                                           ; $6723: $0c
	db   $10                                         ; $6724: $10
	jr   jr_00e_66b3                                 ; $6725: $18 $8c

	inc  c                                           ; $6727: $0c
	db   $10                                         ; $6728: $10

jr_00e_6729:
	db   $10                                         ; $6729: $10
	adc  d                                           ; $672a: $8a

jr_00e_672b:
	inc  c                                           ; $672b: $0c
	db   $10                                         ; $672c: $10
	ld   [$1c88], sp                                 ; $672d: $08 $88 $1c
	db   $10                                         ; $6730: $10
	jr   nz, @-$68                                   ; $6731: $20 $96

	inc  c                                           ; $6733: $0c
	db   $10                                         ; $6734: $10
	jr   @-$6a                                       ; $6735: $18 $94

	inc  c                                           ; $6737: $0c
	db   $10                                         ; $6738: $10
	db   $10                                         ; $6739: $10
	sub  d                                           ; $673a: $92
	inc  c                                           ; $673b: $0c
	db   $10                                         ; $673c: $10
	ld   [$1c90], sp                                 ; $673d: $08 $90 $1c
	db   $10                                         ; $6740: $10

jr_00e_6741:
	jr   nz, jr_00e_66e1                             ; $6741: $20 $9e

jr_00e_6743:
	inc  c                                           ; $6743: $0c
	db   $10                                         ; $6744: $10
	jr   jr_00e_66e3                                 ; $6745: $18 $9c

	inc  c                                           ; $6747: $0c
	db   $10                                         ; $6748: $10
	db   $10                                         ; $6749: $10
	sbc  d                                           ; $674a: $9a
	inc  c                                           ; $674b: $0c
	db   $10                                         ; $674c: $10
	ld   [$1c98], sp                                 ; $674d: $08 $98 $1c
	db   $10                                         ; $6750: $10
	jr   nz, @-$58                                   ; $6751: $20 $a6

	inc  c                                           ; $6753: $0c
	db   $10                                         ; $6754: $10
	jr   jr_00e_66fb                                 ; $6755: $18 $a4

	inc  c                                           ; $6757: $0c
	db   $10                                         ; $6758: $10

jr_00e_6759:
	db   $10                                         ; $6759: $10
	and  d                                           ; $675a: $a2

jr_00e_675b:
	inc  c                                           ; $675b: $0c
	db   $10                                         ; $675c: $10
	ld   [$1ca0], sp                                 ; $675d: $08 $a0 $1c
	db   $10                                         ; $6760: $10
	jr   nz, jr_00e_6711                             ; $6761: $20 $ae

	inc  c                                           ; $6763: $0c
	db   $10                                         ; $6764: $10
	jr   jr_00e_6713                                 ; $6765: $18 $ac

	inc  c                                           ; $6767: $0c
	db   $10                                         ; $6768: $10
	db   $10                                         ; $6769: $10
	xor  d                                           ; $676a: $aa
	inc  c                                           ; $676b: $0c
	db   $10                                         ; $676c: $10
	ld   [$1ca8], sp                                 ; $676d: $08 $a8 $1c
	db   $10                                         ; $6770: $10

jr_00e_6771:
	jr   nz, jr_00e_6729                             ; $6771: $20 $b6

jr_00e_6773:
	inc  c                                           ; $6773: $0c
	db   $10                                         ; $6774: $10
	jr   jr_00e_672b                                 ; $6775: $18 $b4

	inc  c                                           ; $6777: $0c
	db   $10                                         ; $6778: $10
	db   $10                                         ; $6779: $10
	or   d                                           ; $677a: $b2
	inc  c                                           ; $677b: $0c
	db   $10                                         ; $677c: $10
	ld   [$1cb0], sp                                 ; $677d: $08 $b0 $1c
	db   $10                                         ; $6780: $10
	jr   nz, jr_00e_6741                             ; $6781: $20 $be

	inc  c                                           ; $6783: $0c
	db   $10                                         ; $6784: $10
	jr   jr_00e_6743                                 ; $6785: $18 $bc

	inc  c                                           ; $6787: $0c
	db   $10                                         ; $6788: $10

jr_00e_6789:
	db   $10                                         ; $6789: $10
	cp   d                                           ; $678a: $ba

jr_00e_678b:
	inc  c                                           ; $678b: $0c
	db   $10                                         ; $678c: $10
	ld   [$1cb8], sp                                 ; $678d: $08 $b8 $1c
	db   $10                                         ; $6790: $10
	jr   nz, jr_00e_6759                             ; $6791: $20 $c6

	inc  c                                           ; $6793: $0c
	db   $10                                         ; $6794: $10
	jr   jr_00e_675b                                 ; $6795: $18 $c4

	inc  c                                           ; $6797: $0c
	db   $10                                         ; $6798: $10
	db   $10                                         ; $6799: $10
	jp   nz, FarPopulateKanjiConvoStructForCurrTextBox                                   ; $679a: $c2 $0c $10

	ld   [$1cc0], sp                                 ; $679d: $08 $c0 $1c
	db   $10                                         ; $67a0: $10
	jr   nz, jr_00e_6771                             ; $67a1: $20 $ce

	inc  c                                           ; $67a3: $0c
	db   $10                                         ; $67a4: $10
	jr   jr_00e_6773                                 ; $67a5: $18 $cc

	inc  c                                           ; $67a7: $0c
	db   $10                                         ; $67a8: $10
	db   $10                                         ; $67a9: $10
	jp   z, FarPopulateKanjiConvoStructForCurrTextBox                                    ; $67aa: $ca $0c $10

	ld   [$1cc8], sp                                 ; $67ad: $08 $c8 $1c
	db   $10                                         ; $67b0: $10
	jr   nz, jr_00e_6789                             ; $67b1: $20 $d6

	inc  c                                           ; $67b3: $0c
	db   $10                                         ; $67b4: $10
	jr   jr_00e_678b                                 ; $67b5: $18 $d4

	inc  c                                           ; $67b7: $0c
	db   $10                                         ; $67b8: $10
	db   $10                                         ; $67b9: $10
	jp   nc, FarPopulateKanjiConvoStructForCurrTextBox                                   ; $67ba: $d2 $0c $10

	ld   [$1cd0], sp                                 ; $67bd: $08 $d0 $1c
	db   $10                                         ; $67c0: $10
	ld   [$1d76], sp                                 ; $67c1: $08 $76 $1d
	db   $10                                         ; $67c4: $10
	ld   [$3d76], sp                                 ; $67c5: $08 $76 $3d

if def(VWF)
else
SpriteGroupC_Idx1eh_DormRoomDay:
endc
	db $10, $10, $3e, $0f
	db $10, $08, $3c, $1f


SpriteGroupC_Idx1fh_DormRoom0:
	db $10, $08, $00, $1f



	db   $10                                         ; $67d4: $10
	ld   [$1f02], sp                                 ; $67d5: $08 $02 $1f
	db   $10                                         ; $67d8: $10
	ld   [$1f04], sp                                 ; $67d9: $08 $04 $1f
	db   $10                                         ; $67dc: $10
	ld   [$1f06], sp                                 ; $67dd: $08 $06 $1f
	db   $10                                         ; $67e0: $10
	ld   [$1f08], sp                                 ; $67e1: $08 $08 $1f
	db   $10                                         ; $67e4: $10
	ld   [$1f0a], sp                                 ; $67e5: $08 $0a $1f
	db   $10                                         ; $67e8: $10
	ld   [$1f0c], sp                                 ; $67e9: $08 $0c $1f
	db   $10                                         ; $67ec: $10
	ld   [$1f0e], sp                                 ; $67ed: $08 $0e $1f
	db   $10                                         ; $67f0: $10
	ld   [$1f10], sp                                 ; $67f1: $08 $10 $1f
	db   $10                                         ; $67f4: $10
	ld   [$1f12], sp                                 ; $67f5: $08 $12 $1f


SpriteGroupC_Idx29h_DormRoomSunday:
	db $10, $10, $16, $0c
	db $10, $08, $14, $1c


SpriteGroupC_Idx2ah_DormRoomMonday:
	db $10, $10, $1a, $0f
	db $10, $08, $18, $1f


if def(VWF)
else
SpriteGroupC_Idx2bh_DormRoomTuesday:
endc
	db $10, $10, $1e, $0f
	db $10, $08, $1c, $1f


if def(VWF)
else
SpriteGroupC_Idx2ch_DormRoomWednesday:
endc
	db $10, $10, $22, $0f
	db $10, $08, $20, $1f


if def(VWF)
else
SpriteGroupC_Idx2dh_DormRoomThursday:
endc
	db $10, $10, $26, $0f
	db $10, $08, $24, $1f


if def(VWF)
else
SpriteGroupC_Idx2eh_DormRoomFriday:
endc
	db $10, $10, $2a, $0f
	db $10, $08, $28, $1f


if def(VWF)
else
SpriteGroupC_Idx2fh_DormRoomSaturday:
endc
	db $10, $10, $2e, $0f
	db $10, $08, $2c, $1f


if def(VWF)
SpriteGroupC_Idx30h_DormRoomMorning:
	db $10, $10, $3a, $0d
	db $10, $08, $38, $1d


SpriteGroupC_Idx31h_DormRoomNoon:
	db $10, $10, $3e, $0f
	db $10, $08, $3c, $1f


SpriteGroupC_Idx32h_DormRoomNight:
	db $10, $10, $42, $0f
	db $10, $08, $40, $1f
else
SpriteGroupC_Idx30h_DormRoomMorning:
	db $10, $10, $32, $0d
	db $10, $08, $30, $1d


SpriteGroupC_Idx31h_DormRoomNoon:
	db $10, $10, $36, $0f
	db $10, $08, $34, $1f


SpriteGroupC_Idx32h_DormRoomNight:
	db $10, $10, $3a, $0f
	db $10, $08, $38, $1f
endc



	add  sp, $06                                     ; $6848: $e8 $06
	ld   b, d                                        ; $684a: $42
	add  hl, bc                                      ; $684b: $09
	ld   hl, sp+$06                                  ; $684c: $f8 $06
	ld   b, b                                        ; $684e: $40
	add  hl, bc                                      ; $684f: $09
	add  hl, bc                                      ; $6850: $09
	db   $10                                         ; $6851: $10
	ld   [de], a                                     ; $6852: $12
	nop                                              ; $6853: $00
	add  hl, bc                                      ; $6854: $09
	ld   [$0010], sp                                 ; $6855: $08 $10 $00
	jr   nz, @+$0c                                   ; $6858: $20 $0a

	inc  d                                           ; $685a: $14
	nop                                              ; $685b: $00
	jr   nz, jr_00e_686e                             ; $685c: $20 $10

	ld   c, $01                                      ; $685e: $0e $01
	jr   nz, jr_00e_686a                             ; $6860: $20 $08

	inc  c                                           ; $6862: $0c
	ld   bc, $1010                                   ; $6863: $01 $10 $10
	ld   a, [bc]                                     ; $6866: $0a
	ld   bc, $0810                                   ; $6867: $01 $10 $08

jr_00e_686a:
	ld   [$1001], sp                                 ; $686a: $08 $01 $10
	nop                                              ; $686d: $00

jr_00e_686e:
	ld   b, $01                                      ; $686e: $06 $01
	db   $10                                         ; $6870: $10
	ld   hl, sp+$04                                  ; $6871: $f8 $04
	ld   bc, $1000                                   ; $6873: $01 $00 $10
	ld   [bc], a                                     ; $6876: $02
	ld   bc, $0800                                   ; $6877: $01 $00 $08
	nop                                              ; $687a: $00
	ld   de, $06e8                                   ; $687b: $11 $e8 $06
	ld   b, d                                        ; $687e: $42
	add  hl, bc                                      ; $687f: $09
	ld   hl, sp+$06                                  ; $6880: $f8 $06
	ld   b, b                                        ; $6882: $40
	add  hl, bc                                      ; $6883: $09
	jr   @+$0a                                       ; $6884: $18 $08

	ld   a, [hl+]                                    ; $6886: $2a
	nop                                              ; $6887: $00
	stop                                             ; $6888: $10 $00

jr_00e_688a:
	jr   z, jr_00e_688c                              ; $688a: $28 $00

jr_00e_688c:
	db   $10                                         ; $688c: $10
	ld   hl, sp+$26                                  ; $688d: $f8 $26
	nop                                              ; $688f: $00
	jr   jr_00e_689a                                 ; $6890: $18 $08

	inc  h                                           ; $6892: $24
	ld   bc, $0018                                   ; $6893: $01 $18 $00
	ld   [hl+], a                                    ; $6896: $22
	ld   bc, $f818                                   ; $6897: $01 $18 $f8

jr_00e_689a:
	jr   nz, jr_00e_689e                             ; $689a: $20 $02

	jr   @-$0e                                       ; $689c: $18 $f0

jr_00e_689e:
	ld   e, $02                                      ; $689e: $1e $02
	jr   jr_00e_688a                                 ; $68a0: $18 $e8

	inc  e                                           ; $68a2: $1c
	ld   bc, $0708                                   ; $68a3: $01 $08 $07
	ld   a, [de]                                     ; $68a6: $1a
	ld   bc, $ff08                                   ; $68a7: $01 $08 $ff
	jr   @+$03                                       ; $68aa: $18 $01

	ld   [$16f7], sp                                 ; $68ac: $08 $f7 $16
	ld   de, $06e8                                   ; $68af: $11 $e8 $06
	ld   b, d                                        ; $68b2: $42
	add  hl, bc                                      ; $68b3: $09
	ld   hl, sp+$06                                  ; $68b4: $f8 $06
	ld   b, b                                        ; $68b6: $40
	add  hl, bc                                      ; $68b7: $09
	jr   @+$15                                       ; $68b8: $18 $13

	ld   c, b                                        ; $68ba: $48
	nop                                              ; $68bb: $00
	jr   @+$0d                                       ; $68bc: $18 $0b

	ld   b, [hl]                                     ; $68be: $46
	nop                                              ; $68bf: $00
	ld   [$4416], sp                                 ; $68c0: $08 $16 $44
	nop                                              ; $68c3: $00
	ld   [$420e], sp                                 ; $68c4: $08 $0e $42
	nop                                              ; $68c7: $00
	jr   jr_00e_68e0                                 ; $68c8: $18 $16

	ld   b, b                                        ; $68ca: $40
	ld   bc, $0e18                                   ; $68cb: $01 $18 $0e

jr_00e_68ce:
	ld   a, $01                                      ; $68ce: $3e $01
	jr   jr_00e_68d8                                 ; $68d0: $18 $06

jr_00e_68d2:
	inc  a                                           ; $68d2: $3c
	ld   bc, $fe18                                   ; $68d3: $01 $18 $fe
	ld   a, [hl-]                                    ; $68d6: $3a
	ld   [bc], a                                     ; $68d7: $02

jr_00e_68d8:
	jr   jr_00e_68d2                                 ; $68d8: $18 $f8

	jr   c, jr_00e_68de                              ; $68da: $38 $02

	jr   jr_00e_68ce                                 ; $68dc: $18 $f0

jr_00e_68de:
	ld   [hl], $02                                   ; $68de: $36 $02

jr_00e_68e0:
	ld   [$3416], sp                                 ; $68e0: $08 $16 $34
	ld   bc, $0e08                                   ; $68e3: $01 $08 $0e
	ld   [hl-], a                                    ; $68e6: $32
	ld   bc, $0608                                   ; $68e7: $01 $08 $06
	jr   nc, @+$03                                   ; $68ea: $30 $01

	ld   [$2efe], sp                                 ; $68ec: $08 $fe $2e
	ld   bc, $0ef8                                   ; $68ef: $01 $f8 $0e
	inc  l                                           ; $68f2: $2c
	ld   de, $06e8                                   ; $68f3: $11 $e8 $06
	ld   b, d                                        ; $68f6: $42
	add  hl, bc                                      ; $68f7: $09
	ld   hl, sp+$06                                  ; $68f8: $f8 $06
	ld   b, b                                        ; $68fa: $40
	add  hl, bc                                      ; $68fb: $09
	db   $10                                         ; $68fc: $10
	ld   d, $60                                      ; $68fd: $16 $60
	nop                                              ; $68ff: $00
	db   $10                                         ; $6900: $10
	ld   c, $5e                                      ; $6901: $0e $5e
	nop                                              ; $6903: $00
	jr   jr_00e_691c                                 ; $6904: $18 $16

	ld   e, h                                        ; $6906: $5c
	ld   bc, $0e18                                   ; $6907: $01 $18 $0e
	ld   e, d                                        ; $690a: $5a
	ld   bc, $0618                                   ; $690b: $01 $18 $06
	ld   e, b                                        ; $690e: $58
	ld   [bc], a                                     ; $690f: $02

jr_00e_6910:
	jr   jr_00e_6910                                 ; $6910: $18 $fe

	ld   d, [hl]                                     ; $6912: $56
	ld   [bc], a                                     ; $6913: $02
	jr   @-$03                                       ; $6914: $18 $fb

	ld   d, h                                        ; $6916: $54
	ld   [bc], a                                     ; $6917: $02
	jr   @-$0b                                       ; $6918: $18 $f3

	ld   d, d                                        ; $691a: $52
	ld   [bc], a                                     ; $691b: $02

jr_00e_691c:
	ld   [$5016], sp                                 ; $691c: $08 $16 $50
	ld   bc, $0e08                                   ; $691f: $01 $08 $0e
	ld   c, [hl]                                     ; $6922: $4e
	ld   de, $06e8                                   ; $6923: $11 $e8 $06
	ld   b, d                                        ; $6926: $42
	add  hl, bc                                      ; $6927: $09
	ld   hl, sp+$06                                  ; $6928: $f8 $06
	ld   b, b                                        ; $692a: $40
	add  hl, bc                                      ; $692b: $09
	jr   @+$01                                       ; $692c: $18 $ff

	ld   d, h                                        ; $692e: $54
	ld   [bc], a                                     ; $692f: $02
	jr   @-$07                                       ; $6930: $18 $f7

	ld   l, d                                        ; $6932: $6a
	ld   [bc], a                                     ; $6933: $02
	jr   nz, @+$10                                   ; $6934: $20 $0e

	ld   a, b                                        ; $6936: $78
	nop                                              ; $6937: $00
	db   $10                                         ; $6938: $10
	ld   d, $76                                      ; $6939: $16 $76
	nop                                              ; $693b: $00
	db   $10                                         ; $693c: $10
	ld   c, $74                                      ; $693d: $0e $74
	nop                                              ; $693f: $00
	jr   @+$18                                       ; $6940: $18 $16

	ld   [hl], d                                     ; $6942: $72
	ld   bc, $0e18                                   ; $6943: $01 $18 $0e
	ld   [hl], b                                     ; $6946: $70
	ld   bc, $0618                                   ; $6947: $01 $18 $06
	ld   l, [hl]                                     ; $694a: $6e
	ld   [bc], a                                     ; $694b: $02
	ld   [$6816], sp                                 ; $694c: $08 $16 $68
	ld   bc, $0e08                                   ; $694f: $01 $08 $0e
	ld   h, [hl]                                     ; $6952: $66
	ld   bc, $0608                                   ; $6953: $01 $08 $06
	ld   h, h                                        ; $6956: $64
	ld   de, $06e8                                   ; $6957: $11 $e8 $06
	ld   b, d                                        ; $695a: $42
	add  hl, bc                                      ; $695b: $09
	ld   hl, sp+$06                                  ; $695c: $f8 $06
	ld   b, b                                        ; $695e: $40
	add  hl, bc                                      ; $695f: $09
	jr   @+$01                                       ; $6960: $18 $ff

	ld   d, h                                        ; $6962: $54
	ld   [bc], a                                     ; $6963: $02
	jr   @-$07                                       ; $6964: $18 $f7

	ld   l, d                                        ; $6966: $6a
	ld   [bc], a                                     ; $6967: $02
	nop                                              ; $6968: $00
	ld   b, $10                                      ; $6969: $06 $10
	ld   [$1608], sp                                 ; $696b: $08 $08 $16
	inc  d                                           ; $696e: $14
	ld   [$0e08], sp                                 ; $696f: $08 $08 $0e
	ld   [de], a                                     ; $6972: $12
	ld   [$1618], sp                                 ; $6973: $08 $18 $16
	ld   d, $08                                      ; $6976: $16 $08
	jr   jr_00e_6990                                 ; $6978: $18 $16

	ld   c, $09                                      ; $697a: $0e $09
	jr   jr_00e_698c                                 ; $697c: $18 $0e

	inc  c                                           ; $697e: $0c
	add  hl, bc                                      ; $697f: $09
	jr   jr_00e_6988                                 ; $6980: $18 $06

	ld   a, [bc]                                     ; $6982: $0a
	ld   a, [bc]                                     ; $6983: $0a
	ld   [$0416], sp                                 ; $6984: $08 $16 $04
	add  hl, bc                                      ; $6987: $09

jr_00e_6988:
	ld   [$020e], sp                                 ; $6988: $08 $0e $02
	add  hl, bc                                      ; $698b: $09

jr_00e_698c:
	ld   [$0006], sp                                 ; $698c: $08 $06 $00
	add  hl, bc                                      ; $698f: $09

jr_00e_6990:
	ld   hl, sp+$16                                  ; $6990: $f8 $16
	ld   a, [hl]                                     ; $6992: $7e
	ld   bc, $0ef8                                   ; $6993: $01 $f8 $0e
	ld   a, h                                        ; $6996: $7c
	ld   bc, $06f8                                   ; $6997: $01 $f8 $06
	ld   a, d                                        ; $699a: $7a
	ld   de, $06e9                                   ; $699b: $11 $e9 $06
	ld   b, d                                        ; $699e: $42
	add  hl, bc                                      ; $699f: $09
	nop                                              ; $69a0: $00
	ld   b, $20                                      ; $69a1: $06 $20
	ld   [$0608], sp                                 ; $69a3: $08 $08 $06
	inc  e                                           ; $69a6: $1c
	add  hl, bc                                      ; $69a7: $09
	ld   sp, hl                                      ; $69a8: $f9
	ld   b, $40                                      ; $69a9: $06 $40
	add  hl, bc                                      ; $69ab: $09
	ld   [$1416], sp                                 ; $69ac: $08 $16 $14
	ld   [$0e08], sp                                 ; $69af: $08 $08 $0e
	ld   [de], a                                     ; $69b2: $12
	ld   [$0e08], sp                                 ; $69b3: $08 $08 $0e
	ld   e, $09                                      ; $69b6: $1e $09
	ld   hl, sp+$0e                                  ; $69b8: $f8 $0e
	ld   a, [de]                                     ; $69ba: $1a
	add  hl, bc                                      ; $69bb: $09
	jr   @+$01                                       ; $69bc: $18 $ff

	ld   d, h                                        ; $69be: $54
	ld   [bc], a                                     ; $69bf: $02
	jr   @-$07                                       ; $69c0: $18 $f7

	ld   l, d                                        ; $69c2: $6a
	ld   [bc], a                                     ; $69c3: $02
	jr   @+$18                                       ; $69c4: $18 $16

	ld   d, $08                                      ; $69c6: $16 $08
	jr   jr_00e_69e0                                 ; $69c8: $18 $16

	ld   c, $09                                      ; $69ca: $0e $09
	jr   @+$10                                       ; $69cc: $18 $0e

	inc  c                                           ; $69ce: $0c
	add  hl, bc                                      ; $69cf: $09
	jr   jr_00e_69d8                                 ; $69d0: $18 $06

	ld   a, [bc]                                     ; $69d2: $0a
	ld   a, [bc]                                     ; $69d3: $0a
	ld   [$0416], sp                                 ; $69d4: $08 $16 $04
	add  hl, bc                                      ; $69d7: $09

jr_00e_69d8:
	ld   hl, sp+$16                                  ; $69d8: $f8 $16
	ld   a, [hl]                                     ; $69da: $7e
	ld   de, $06e8                                   ; $69db: $11 $e8 $06
	ld   b, d                                        ; $69de: $42
	add  hl, bc                                      ; $69df: $09

jr_00e_69e0:
	ld   hl, sp+$06                                  ; $69e0: $f8 $06
	ld   b, b                                        ; $69e2: $40
	add  hl, bc                                      ; $69e3: $09
	nop                                              ; $69e4: $00
	ld   b, $10                                      ; $69e5: $06 $10
	dec  bc                                          ; $69e7: $0b
	ld   [$0006], sp                                 ; $69e8: $08 $06 $00
	dec  bc                                          ; $69eb: $0b
	jr   @+$01                                       ; $69ec: $18 $ff

	ld   d, h                                        ; $69ee: $54
	inc  bc                                          ; $69ef: $03
	jr   @-$07                                       ; $69f0: $18 $f7

	ld   l, d                                        ; $69f2: $6a
	inc  bc                                          ; $69f3: $03
	ld   [$1416], sp                                 ; $69f4: $08 $16 $14
	dec  bc                                          ; $69f7: $0b
	ld   [$120e], sp                                 ; $69f8: $08 $0e $12
	dec  bc                                          ; $69fb: $0b
	jr   jr_00e_6a14                                 ; $69fc: $18 $16

	ld   d, $0b                                      ; $69fe: $16 $0b
	jr   jr_00e_6a18                                 ; $6a00: $18 $16

	ld   c, $0b                                      ; $6a02: $0e $0b
	jr   jr_00e_6a14                                 ; $6a04: $18 $0e

	inc  c                                           ; $6a06: $0c
	dec  bc                                          ; $6a07: $0b
	jr   jr_00e_6a10                                 ; $6a08: $18 $06

	ld   a, [bc]                                     ; $6a0a: $0a
	dec  bc                                          ; $6a0b: $0b
	ld   [$0416], sp                                 ; $6a0c: $08 $16 $04
	dec  bc                                          ; $6a0f: $0b

jr_00e_6a10:
	ld   [$020e], sp                                 ; $6a10: $08 $0e $02
	dec  bc                                          ; $6a13: $0b

jr_00e_6a14:
	ld   hl, sp+$16                                  ; $6a14: $f8 $16
	ld   a, [hl]                                     ; $6a16: $7e
	inc  bc                                          ; $6a17: $03

jr_00e_6a18:
	ld   hl, sp+$0e                                  ; $6a18: $f8 $0e
	ld   a, h                                        ; $6a1a: $7c
	inc  bc                                          ; $6a1b: $03
	ld   hl, sp+$06                                  ; $6a1c: $f8 $06
	ld   a, d                                        ; $6a1e: $7a
	inc  de                                          ; $6a1f: $13
	add  sp, $06                                     ; $6a20: $e8 $06
	ld   b, d                                        ; $6a22: $42
	add  hl, bc                                      ; $6a23: $09
	ld   hl, sp+$06                                  ; $6a24: $f8 $06
	ld   b, b                                        ; $6a26: $40
	add  hl, bc                                      ; $6a27: $09
	jr   jr_00e_6a4a                                 ; $6a28: $18 $20

	ld   [hl-], a                                    ; $6a2a: $32
	dec  bc                                          ; $6a2b: $0b
	jr   jr_00e_6a46                                 ; $6a2c: $18 $18

	jr   nc, jr_00e_6a3b                             ; $6a2e: $30 $0b

	jr   jr_00e_6a42                                 ; $6a30: $18 $10

	ld   l, $0b                                      ; $6a32: $2e $0b
	jr   jr_00e_6a3e                                 ; $6a34: $18 $08

	inc  l                                           ; $6a36: $2c
	dec  bc                                          ; $6a37: $0b
	jr   @+$05                                       ; $6a38: $18 $03

	ld   a, [hl+]                                    ; $6a3a: $2a

jr_00e_6a3b:
	dec  bc                                          ; $6a3b: $0b
	jr   @-$03                                       ; $6a3c: $18 $fb

jr_00e_6a3e:
	jr   z, jr_00e_6a4b                              ; $6a3e: $28 $0b

	jr   @-$0b                                       ; $6a40: $18 $f3

jr_00e_6a42:
	ld   h, $1b                                      ; $6a42: $26 $1b
	jr   @+$22                                       ; $6a44: $18 $20

jr_00e_6a46:
	ld   a, $0b                                      ; $6a46: $3e $0b
	jr   jr_00e_6a62                                 ; $6a48: $18 $18

jr_00e_6a4a:
	inc  a                                           ; $6a4a: $3c

jr_00e_6a4b:
	dec  bc                                          ; $6a4b: $0b
	jr   jr_00e_6a5e                                 ; $6a4c: $18 $10

	ld   a, [hl-]                                    ; $6a4e: $3a
	dec  bc                                          ; $6a4f: $0b
	jr   jr_00e_6a5a                                 ; $6a50: $18 $08

jr_00e_6a52:
	jr   c, jr_00e_6a5f                              ; $6a52: $38 $0b

	jr   jr_00e_6a56                                 ; $6a54: $18 $00

jr_00e_6a56:
	ld   [hl], $0b                                   ; $6a56: $36 $0b
	jr   jr_00e_6a52                                 ; $6a58: $18 $f8

jr_00e_6a5a:
	inc  [hl]                                        ; $6a5a: $34
	dec  bc                                          ; $6a5b: $0b
	add  sp, $06                                     ; $6a5c: $e8 $06

jr_00e_6a5e:
	ld   b, d                                        ; $6a5e: $42

jr_00e_6a5f:
	add  hl, bc                                      ; $6a5f: $09
	ld   hl, sp+$06                                  ; $6a60: $f8 $06

jr_00e_6a62:
	ld   b, b                                        ; $6a62: $40
	add  hl, de                                      ; $6a63: $19
	nop                                              ; $6a64: $00
	ld   de, $0114                                   ; $6a65: $11 $14 $01
	nop                                              ; $6a68: $00
	inc  d                                           ; $6a69: $14
	inc  b                                           ; $6a6a: $04
	ld   [bc], a                                     ; $6a6b: $02
	ldh  a, [rAUD2LOW]                               ; $6a6c: $f0 $18
	ld   [bc], a                                     ; $6a6e: $02
	nop                                              ; $6a6f: $00
	ldh  a, [rAUD1SWEEP]                             ; $6a70: $f0 $10
	nop                                              ; $6a72: $00
	nop                                              ; $6a73: $00
	ld   [$d618], sp                                 ; $6a74: $08 $18 $d6
	ld   [bc], a                                     ; $6a77: $02
	nop                                              ; $6a78: $00
	jr   @-$38                                       ; $6a79: $18 $c6

	ld   [de], a                                     ; $6a7b: $12
	nop                                              ; $6a7c: $00
	db   $10                                         ; $6a7d: $10
	ld   [de], a                                     ; $6a7e: $12
	ld   bc, $1800                                   ; $6a7f: $01 $00 $18
	inc  c                                           ; $6a82: $0c
	ld   [bc], a                                     ; $6a83: $02
	nop                                              ; $6a84: $00
	db   $10                                         ; $6a85: $10
	ld   a, [bc]                                     ; $6a86: $0a
	ld   [bc], a                                     ; $6a87: $02
	ldh  a, [rAUD2LOW]                               ; $6a88: $f0 $18
	ld   [$f000], sp                                 ; $6a8a: $08 $00 $f0
	db   $10                                         ; $6a8d: $10
	ld   b, $10                                      ; $6a8e: $06 $10
	nop                                              ; $6a90: $00
	db   $10                                         ; $6a91: $10
	ld   [de], a                                     ; $6a92: $12
	ld   bc, $1800                                   ; $6a93: $01 $00 $18
	db   $10                                         ; $6a96: $10
	ld   [bc], a                                     ; $6a97: $02
	nop                                              ; $6a98: $00
	db   $10                                         ; $6a99: $10
	ld   c, $02                                      ; $6a9a: $0e $02
	ldh  a, [rAUD2LOW]                               ; $6a9c: $f0 $18
	ld   [$f000], sp                                 ; $6a9e: $08 $00 $f0
	db   $10                                         ; $6aa1: $10
	ld   b, $10                                      ; $6aa2: $06 $10
	ld   [$2210], sp                                 ; $6aa4: $08 $10 $22
	ld   bc, $2000                                   ; $6aa7: $01 $00 $20
	inc  e                                           ; $6aaa: $1c
	nop                                              ; $6aab: $00
	nop                                              ; $6aac: $00
	jr   jr_00e_6ac9                                 ; $6aad: $18 $1a

	nop                                              ; $6aaf: $00
	nop                                              ; $6ab0: $00
	db   $10                                         ; $6ab1: $10
	jr   @+$04                                       ; $6ab2: $18 $02

	nop                                              ; $6ab4: $00
	ld   [$0216], sp                                 ; $6ab5: $08 $16 $02
	ldh  a, [rAUD1SWEEP]                             ; $6ab8: $f0 $10
	ld   e, $10                                      ; $6aba: $1e $10
	ld   [$2210], sp                                 ; $6abc: $08 $10 $22
	ld   bc, $10f0                                   ; $6abf: $01 $f0 $10
	jr   nz, jr_00e_6ac4                             ; $6ac2: $20 $00

jr_00e_6ac4:
	nop                                              ; $6ac4: $00
	jr   nz, jr_00e_6ae3                             ; $6ac5: $20 $1c

	nop                                              ; $6ac7: $00
	nop                                              ; $6ac8: $00

jr_00e_6ac9:
	jr   @+$1c                                       ; $6ac9: $18 $1a

	nop                                              ; $6acb: $00
	nop                                              ; $6acc: $00
	db   $10                                         ; $6acd: $10
	jr   @+$04                                       ; $6ace: $18 $02

	nop                                              ; $6ad0: $00
	ld   [$1216], sp                                 ; $6ad1: $08 $16 $12
	nop                                              ; $6ad4: $00
	jr   @+$14                                       ; $6ad5: $18 $12

	nop                                              ; $6ad7: $00
	nop                                              ; $6ad8: $00
	db   $10                                         ; $6ad9: $10
	stop                                             ; $6ada: $10 $00
	ldh  a, [$08]                                    ; $6adc: $f0 $08
	inc  d                                           ; $6ade: $14
	nop                                              ; $6adf: $00
	nop                                              ; $6ae0: $00
	jr   @+$08                                       ; $6ae1: $18 $06

jr_00e_6ae3:
	ld   bc, $1000                                   ; $6ae3: $01 $00 $10
	inc  b                                           ; $6ae6: $04
	ld   bc, $18f0                                   ; $6ae7: $01 $f0 $18
	ld   [bc], a                                     ; $6aea: $02
	nop                                              ; $6aeb: $00
	ldh  a, [rAUD1SWEEP]                             ; $6aec: $f0 $10
	nop                                              ; $6aee: $00
	db   $10                                         ; $6aef: $10
	ldh  a, [$08]                                    ; $6af0: $f0 $08
	ld   d, $01                                      ; $6af2: $16 $01
	nop                                              ; $6af4: $00
	jr   @+$14                                       ; $6af5: $18 $12

	nop                                              ; $6af7: $00
	nop                                              ; $6af8: $00
	db   $10                                         ; $6af9: $10
	stop                                             ; $6afa: $10 $00
	nop                                              ; $6afc: $00
	jr   @+$08                                       ; $6afd: $18 $06

	ld   bc, $1000                                   ; $6aff: $01 $00 $10
	inc  b                                           ; $6b02: $04
	ld   bc, $18f0                                   ; $6b03: $01 $f0 $18
	ld   [bc], a                                     ; $6b06: $02
	nop                                              ; $6b07: $00
	ldh  a, [rAUD1SWEEP]                             ; $6b08: $f0 $10
	nop                                              ; $6b0a: $00
	stop                                             ; $6b0b: $10 $00
	jr   @+$14                                       ; $6b0d: $18 $12

	nop                                              ; $6b0f: $00
	nop                                              ; $6b10: $00
	db   $10                                         ; $6b11: $10
	stop                                             ; $6b12: $10 $00
	nop                                              ; $6b14: $00
	jr   jr_00e_6b25                                 ; $6b15: $18 $0e

	ld   bc, $1000                                   ; $6b17: $01 $00 $10
	inc  c                                           ; $6b1a: $0c
	ld   bc, $18f0                                   ; $6b1b: $01 $f0 $18
	ld   a, [bc]                                     ; $6b1e: $0a
	nop                                              ; $6b1f: $00
	ldh  a, [rAUD1SWEEP]                             ; $6b20: $f0 $10
	ld   [$0010], sp                                 ; $6b22: $08 $10 $00

jr_00e_6b25:
	db   $10                                         ; $6b25: $10
	jr   nz, jr_00e_6b28                             ; $6b26: $20 $00

jr_00e_6b28:
	nop                                              ; $6b28: $00
	jr   jr_00e_6b3d                                 ; $6b29: $18 $12

	nop                                              ; $6b2b: $00
	ldh  a, [$08]                                    ; $6b2c: $f0 $08
	ld   [hl+], a                                    ; $6b2e: $22
	nop                                              ; $6b2f: $00
	nop                                              ; $6b30: $00
	db   $10                                         ; $6b31: $10
	ld   e, $01                                      ; $6b32: $1e $01
	ldh  a, [rAUD2LOW]                               ; $6b34: $f0 $18
	inc  e                                           ; $6b36: $1c
	nop                                              ; $6b37: $00
	ldh  a, [rAUD1SWEEP]                             ; $6b38: $f0 $10
	ld   a, [de]                                     ; $6b3a: $1a
	nop                                              ; $6b3b: $00
	nop                                              ; $6b3c: $00

jr_00e_6b3d:
	jr   jr_00e_6b45                                 ; $6b3d: $18 $06

	ld   de, $10f0                                   ; $6b3f: $11 $f0 $10
	jr   jr_00e_6b44                                 ; $6b42: $18 $00

jr_00e_6b44:
	nop                                              ; $6b44: $00

jr_00e_6b45:
	db   $10                                         ; $6b45: $10
	jr   nz, jr_00e_6b48                             ; $6b46: $20 $00

jr_00e_6b48:
	nop                                              ; $6b48: $00
	jr   @+$14                                       ; $6b49: $18 $12

	nop                                              ; $6b4b: $00
	nop                                              ; $6b4c: $00
	db   $10                                         ; $6b4d: $10
	ld   e, $01                                      ; $6b4e: $1e $01
	ldh  a, [rAUD2LOW]                               ; $6b50: $f0 $18
	inc  e                                           ; $6b52: $1c
	nop                                              ; $6b53: $00
	nop                                              ; $6b54: $00
	jr   @+$08                                       ; $6b55: $18 $06

	ld   de, $1ff8                                   ; $6b57: $11 $f8 $1f
	ld   l, d                                        ; $6b5a: $6a
	rlca                                             ; $6b5b: $07
	ld   hl, sp+$17                                  ; $6b5c: $f8 $17
	ld   l, b                                        ; $6b5e: $68
	rlca                                             ; $6b5f: $07
	ld   hl, sp+$0f                                  ; $6b60: $f8 $0f
	ld   h, [hl]                                     ; $6b62: $66
	rlca                                             ; $6b63: $07
	ld   hl, sp+$07                                  ; $6b64: $f8 $07
	ld   h, h                                        ; $6b66: $64
	rlca                                             ; $6b67: $07
	ld   hl, sp-$01                                  ; $6b68: $f8 $ff
	ld   h, d                                        ; $6b6a: $62
	rlca                                             ; $6b6b: $07
	ld   hl, sp-$09                                  ; $6b6c: $f8 $f7
	ld   h, b                                        ; $6b6e: $60
	rlca                                             ; $6b6f: $07
	db   $ed                                         ; $6b70: $ed
	ld   e, e                                        ; $6b71: $5b
	inc  c                                           ; $6b72: $0c
	ld   [bc], a                                     ; $6b73: $02
	db   $e4                                         ; $6b74: $e4
	ld   d, e                                        ; $6b75: $53
	ld   a, [bc]                                     ; $6b76: $0a
	ld   [bc], a                                     ; $6b77: $02
	db   $f4                                         ; $6b78: $f4
	ld   c, h                                        ; $6b79: $4c
	ld   [$e402], sp                                 ; $6b7a: $08 $02 $e4
	ld   c, e                                        ; $6b7d: $4b
	ld   b, $02                                      ; $6b7e: $06 $02
	ldh  a, [$d8]                                    ; $6b80: $f0 $d8
	inc  b                                           ; $6b82: $04
	ld   bc, $f8d8                                   ; $6b83: $01 $d8 $f8
	ld   [bc], a                                     ; $6b86: $02
	nop                                              ; $6b87: $00
	ldh  [$28], a                                    ; $6b88: $e0 $28
	nop                                              ; $6b8a: $00
	db   $10                                         ; $6b8b: $10
	jr   nz, jr_00e_6bba                             ; $6b8c: $20 $2c

	ld   a, h                                        ; $6b8e: $7c
	inc  bc                                          ; $6b8f: $03
	jr   nc, jr_00e_6bbe                             ; $6b90: $30 $2c

	ld   b, [hl]                                     ; $6b92: $46
	inc  bc                                          ; $6b93: $03
	jr   nc, jr_00e_6bba                             ; $6b94: $30 $24

	ld   b, h                                        ; $6b96: $44
	inc  bc                                          ; $6b97: $03
	jr   nz, jr_00e_6bbe                             ; $6b98: $20 $24

	ld   b, b                                        ; $6b9a: $40
	inc  bc                                          ; $6b9b: $03
	jr   nz, jr_00e_6bda                             ; $6b9c: $20 $3c

	ld   e, $05                                      ; $6b9e: $1e $05
	db   $10                                         ; $6ba0: $10
	inc  a                                           ; $6ba1: $3c
	inc  e                                           ; $6ba2: $1c
	dec  b                                           ; $6ba3: $05
	jr   nz, jr_00e_6bda                             ; $6ba4: $20 $34

	ld   a, [de]                                     ; $6ba6: $1a
	inc  bc                                          ; $6ba7: $03
	db   $10                                         ; $6ba8: $10
	inc  [hl]                                        ; $6ba9: $34
	jr   @+$05                                       ; $6baa: $18 $03

	db   $10                                         ; $6bac: $10
	inc  l                                           ; $6bad: $2c
	ld   d, $03                                      ; $6bae: $16 $03
	db   $10                                         ; $6bb0: $10
	inc  h                                           ; $6bb1: $24
	inc  d                                           ; $6bb2: $14
	inc  bc                                          ; $6bb3: $03
	jr   nz, jr_00e_6bd2                             ; $6bb4: $20 $1c

	ld   [de], a                                     ; $6bb6: $12
	inc  b                                           ; $6bb7: $04
	db   $10                                         ; $6bb8: $10
	inc  e                                           ; $6bb9: $1c

jr_00e_6bba:
	db   $10                                         ; $6bba: $10
	inc  d                                           ; $6bbb: $14
	jr   nz, jr_00e_6bea                             ; $6bbc: $20 $2c

jr_00e_6bbe:
	ld   a, h                                        ; $6bbe: $7c
	inc  bc                                          ; $6bbf: $03
	jr   nc, jr_00e_6bee                             ; $6bc0: $30 $2c

	ld   c, b                                        ; $6bc2: $48
	inc  bc                                          ; $6bc3: $03
	jr   nc, jr_00e_6bea                             ; $6bc4: $30 $24

	ld   b, h                                        ; $6bc6: $44
	inc  bc                                          ; $6bc7: $03
	jr   nz, jr_00e_6bee                             ; $6bc8: $20 $24

	ld   b, b                                        ; $6bca: $40
	inc  bc                                          ; $6bcb: $03
	jr   nz, jr_00e_6c0a                             ; $6bcc: $20 $3c

	ld   l, $05                                      ; $6bce: $2e $05
	db   $10                                         ; $6bd0: $10
	inc  a                                           ; $6bd1: $3c

jr_00e_6bd2:
	inc  l                                           ; $6bd2: $2c
	dec  b                                           ; $6bd3: $05
	jr   nz, jr_00e_6c0a                             ; $6bd4: $20 $34

	ld   a, [hl+]                                    ; $6bd6: $2a
	inc  bc                                          ; $6bd7: $03
	db   $10                                         ; $6bd8: $10
	inc  [hl]                                        ; $6bd9: $34

jr_00e_6bda:
	jr   z, @+$05                                    ; $6bda: $28 $03

	db   $10                                         ; $6bdc: $10
	inc  l                                           ; $6bdd: $2c
	ld   h, $03                                      ; $6bde: $26 $03
	db   $10                                         ; $6be0: $10
	inc  h                                           ; $6be1: $24
	inc  h                                           ; $6be2: $24
	inc  bc                                          ; $6be3: $03
	jr   nz, jr_00e_6c02                             ; $6be4: $20 $1c

	ld   [hl+], a                                    ; $6be6: $22
	inc  b                                           ; $6be7: $04
	db   $10                                         ; $6be8: $10
	inc  e                                           ; $6be9: $1c

jr_00e_6bea:
	jr   nz, jr_00e_6c00                             ; $6bea: $20 $14

	jr   nc, jr_00e_6c1a                             ; $6bec: $30 $2c

jr_00e_6bee:
	ld   c, d                                        ; $6bee: $4a
	inc  bc                                          ; $6bef: $03
	jr   nc, jr_00e_6c16                             ; $6bf0: $30 $24

	ld   b, h                                        ; $6bf2: $44
	inc  bc                                          ; $6bf3: $03
	jr   nz, jr_00e_6c22                             ; $6bf4: $20 $2c

	ld   b, d                                        ; $6bf6: $42
	inc  bc                                          ; $6bf7: $03
	jr   nz, jr_00e_6c1e                             ; $6bf8: $20 $24

	ld   b, b                                        ; $6bfa: $40
	inc  bc                                          ; $6bfb: $03
	jr   nz, jr_00e_6c3a                             ; $6bfc: $20 $3c

	ld   a, $05                                      ; $6bfe: $3e $05

jr_00e_6c00:
	db   $10                                         ; $6c00: $10
	inc  a                                           ; $6c01: $3c

jr_00e_6c02:
	inc  a                                           ; $6c02: $3c
	dec  b                                           ; $6c03: $05
	jr   nz, jr_00e_6c3a                             ; $6c04: $20 $34

	ld   a, [hl-]                                    ; $6c06: $3a
	inc  bc                                          ; $6c07: $03
	db   $10                                         ; $6c08: $10
	inc  [hl]                                        ; $6c09: $34

jr_00e_6c0a:
	jr   c, @+$05                                    ; $6c0a: $38 $03

	db   $10                                         ; $6c0c: $10
	inc  l                                           ; $6c0d: $2c
	ld   [hl], $03                                   ; $6c0e: $36 $03
	db   $10                                         ; $6c10: $10
	inc  h                                           ; $6c11: $24
	inc  [hl]                                        ; $6c12: $34
	inc  bc                                          ; $6c13: $03
	jr   nz, jr_00e_6c32                             ; $6c14: $20 $1c

jr_00e_6c16:
	ld   [hl-], a                                    ; $6c16: $32
	inc  b                                           ; $6c17: $04
	db   $10                                         ; $6c18: $10
	inc  e                                           ; $6c19: $1c

jr_00e_6c1a:
	jr   nc, jr_00e_6c30                             ; $6c1a: $30 $14

	jr   nz, jr_00e_6c4a                             ; $6c1c: $20 $2c

jr_00e_6c1e:
	ld   a, h                                        ; $6c1e: $7c
	inc  bc                                          ; $6c1f: $03
	jr   nz, @+$36                                   ; $6c20: $20 $34

jr_00e_6c22:
	ld   a, d                                        ; $6c22: $7a
	inc  bc                                          ; $6c23: $03
	db   $10                                         ; $6c24: $10
	inc  a                                           ; $6c25: $3c
	ld   a, b                                        ; $6c26: $78
	dec  b                                           ; $6c27: $05
	jr   nc, @+$2e                                   ; $6c28: $30 $2c

	ld   c, b                                        ; $6c2a: $48
	inc  bc                                          ; $6c2b: $03
	jr   nc, @+$26                                   ; $6c2c: $30 $24

	ld   b, h                                        ; $6c2e: $44
	inc  bc                                          ; $6c2f: $03

jr_00e_6c30:
	jr   nz, @+$26                                   ; $6c30: $20 $24

jr_00e_6c32:
	ld   b, b                                        ; $6c32: $40
	inc  bc                                          ; $6c33: $03
	jr   nz, jr_00e_6c72                             ; $6c34: $20 $3c

	ld   l, $05                                      ; $6c36: $2e $05
	db   $10                                         ; $6c38: $10
	inc  [hl]                                        ; $6c39: $34

jr_00e_6c3a:
	jr   z, @+$05                                    ; $6c3a: $28 $03

	db   $10                                         ; $6c3c: $10
	inc  l                                           ; $6c3d: $2c
	ld   h, $03                                      ; $6c3e: $26 $03
	db   $10                                         ; $6c40: $10
	inc  h                                           ; $6c41: $24
	inc  h                                           ; $6c42: $24
	inc  bc                                          ; $6c43: $03
	jr   nz, @+$1e                                   ; $6c44: $20 $1c

	ld   [hl+], a                                    ; $6c46: $22
	inc  b                                           ; $6c47: $04
	db   $10                                         ; $6c48: $10
	inc  e                                           ; $6c49: $1c

jr_00e_6c4a:
	jr   nz, @+$16                                   ; $6c4a: $20 $14

	dec  d                                           ; $6c4c: $15
	ld   l, $5a                                      ; $6c4d: $2e $5a
	ld   b, $15                                      ; $6c4f: $06 $15
	ld   h, $58                                      ; $6c51: $26 $58
	ld   b, $15                                      ; $6c53: $06 $15
	ld   e, $56                                      ; $6c55: $1e $56
	ld   b, $15                                      ; $6c57: $06 $15
	ld   d, $54                                      ; $6c59: $16 $54
	ld   b, $15                                      ; $6c5b: $06 $15
	ld   c, $52                                      ; $6c5d: $0e $52
	ld   b, $15                                      ; $6c5f: $06 $15
	ld   b, $50                                      ; $6c61: $06 $50
	ld   d, $18                                      ; $6c63: $16 $18
	ld   sp, $0376                                   ; $6c65: $31 $76 $03
	jr   @+$29                                       ; $6c68: $18 $27

	ld   [hl], h                                     ; $6c6a: $74
	inc  bc                                          ; $6c6b: $03
	db $18, $31

	ld   [hl], d                                     ; $6c6e: $72
	ld   b, $18                                      ; $6c6f: $06 $18
	daa                                              ; $6c71: $27

jr_00e_6c72:
	ld   [hl], b                                     ; $6c72: $70
	ld   d, $18                                      ; $6c73: $16 $18
	ld   sp, $036e                                   ; $6c75: $31 $6e $03
	db $18, $27

	ld   l, h                                        ; $6c7a: $6c
	inc  bc                                          ; $6c7b: $03
	jr   @+$33                                       ; $6c7c: $18 $31

	ld   e, [hl]                                     ; $6c7e: $5e
	ld   b, $18                                      ; $6c7f: $06 $18
	daa                                              ; $6c81: $27
	ld   e, h                                        ; $6c82: $5c
	db $16 
	
	
if def(VWF)
else
Data_0e_6c84:
endc
	db $e8, $30, $7c, $00
	db $f8, $1f, $6a, $07
	db $f8, $17, $68, $07
	db $f8, $0f, $66, $07
	db $f8, $07, $64, $07
	db $f8, $ff, $62, $07
	db $f8, $f7, $60, $07
	db $ed, $5b, $0c, $02
	db $e4, $53, $0a, $02
	db $f4, $4c, $08, $02
	db $e4, $4b, $06, $02
	db $f0, $d8, $04, $01
	db $d8, $f8, $02, $00
	db $e0, $28, $00, $10

	
	jr   c, jr_00e_6cde                              ; $6cbc: $38 $20

	ld   d, $0b                                      ; $6cbe: $16 $0b
	jr   c, jr_00e_6cda                              ; $6cc0: $38 $18

	inc  d                                           ; $6cc2: $14
	dec  c                                           ; $6cc3: $0d
	jr   c, jr_00e_6cd6                              ; $6cc4: $38 $10

	ld   [de], a                                     ; $6cc6: $12
	dec  c                                           ; $6cc7: $0d
	jr   c, jr_00e_6cd2                              ; $6cc8: $38 $08

	db   $10                                         ; $6cca: $10
	inc  c                                           ; $6ccb: $0c
	jr   z, jr_00e_6ce6                              ; $6ccc: $28 $18

	ld   [bc], a                                     ; $6cce: $02
	inc  c                                           ; $6ccf: $0c
	jr   z, @+$12                                    ; $6cd0: $28 $10

jr_00e_6cd2:
	nop                                              ; $6cd2: $00
	inc  c                                           ; $6cd3: $0c
	jr   z, jr_00e_6cde                              ; $6cd4: $28 $08

jr_00e_6cd6:
	ld   e, h                                        ; $6cd6: $5c
	inc  b                                           ; $6cd7: $04
	jr   @+$0a                                       ; $6cd8: $18 $08

jr_00e_6cda:
	ld   [hl], d                                     ; $6cda: $72
	inc  b                                           ; $6cdb: $04
	jr   @+$12                                       ; $6cdc: $18 $10

jr_00e_6cde:
	ld   [hl], b                                     ; $6cde: $70
	inc  b                                           ; $6cdf: $04
	ld   [$3410], sp                                 ; $6ce0: $08 $10 $34
	inc  b                                           ; $6ce3: $04
	jr   z, @+$22                                    ; $6ce4: $28 $20

jr_00e_6ce6:
	jr   nc, jr_00e_6ceb                             ; $6ce6: $30 $03

	jr   @+$22                                       ; $6ce8: $18 $20

	inc  l                                           ; $6cea: $2c

jr_00e_6ceb:
	inc  bc                                          ; $6ceb: $03
	db   $10                                         ; $6cec: $10
	jr   @+$2a                                       ; $6ced: $18 $28

	inc  b                                           ; $6cef: $04
	jr   nc, jr_00e_6d2e                             ; $6cf0: $30 $3c

	jr   nz, @+$05                                   ; $6cf2: $20 $03

	jr   nz, jr_00e_6d32                             ; $6cf4: $20 $3c

	ld   e, $03                                      ; $6cf6: $1e $03
	jr   c, jr_00e_6d2a                              ; $6cf8: $38 $30

	inc  e                                           ; $6cfa: $1c
	inc  bc                                          ; $6cfb: $03
	ld   [$1a20], sp                                 ; $6cfc: $08 $20 $1a
	inc  bc                                          ; $6cff: $03
	ld   [$1828], sp                                 ; $6d00: $08 $28 $18

jr_00e_6d03:
	inc  bc                                          ; $6d03: $03
	ld   [$1630], sp                                 ; $6d04: $08 $30 $16
	inc  bc                                          ; $6d07: $03
	ld   [$1438], sp                                 ; $6d08: $08 $38 $14
	inc  bc                                          ; $6d0b: $03
	db   $10                                         ; $6d0c: $10
	ld   b, b                                        ; $6d0d: $40
	ld   [de], a                                     ; $6d0e: $12
	inc  bc                                          ; $6d0f: $03
	db   $10                                         ; $6d10: $10
	ld   c, b                                        ; $6d11: $48
	db   $10                                         ; $6d12: $10
	inc  de                                          ; $6d13: $13
	jr   c, jr_00e_6d36                              ; $6d14: $38 $20

	ld   e, $0b                                      ; $6d16: $1e $0b
	jr   c, jr_00e_6d32                              ; $6d18: $38 $18

	inc  e                                           ; $6d1a: $1c
	dec  c                                           ; $6d1b: $0d
	jr   c, jr_00e_6d2e                              ; $6d1c: $38 $10

	ld   a, [de]                                     ; $6d1e: $1a
	dec  c                                           ; $6d1f: $0d
	jr   c, jr_00e_6d2a                              ; $6d20: $38 $08

	jr   jr_00e_6d30                                 ; $6d22: $18 $0c

	jr   z, jr_00e_6d3e                              ; $6d24: $28 $18

	ld   b, $0c                                      ; $6d26: $06 $0c
	jr   z, @+$12                                    ; $6d28: $28 $10

jr_00e_6d2a:
	inc  b                                           ; $6d2a: $04
	inc  c                                           ; $6d2b: $0c
	jr   z, jr_00e_6d36                              ; $6d2c: $28 $08

jr_00e_6d2e:
	ld   e, [hl]                                     ; $6d2e: $5e
	inc  b                                           ; $6d2f: $04

jr_00e_6d30:
	jr   @+$0a                                       ; $6d30: $18 $08

jr_00e_6d32:
	halt                                             ; $6d32: $76
	inc  b                                           ; $6d33: $04
	jr   @+$12                                       ; $6d34: $18 $10

jr_00e_6d36:
	ld   [hl], h                                     ; $6d36: $74
	inc  b                                           ; $6d37: $04
	ld   [$3610], sp                                 ; $6d38: $08 $10 $36
	inc  b                                           ; $6d3b: $04
	jr   z, @+$22                                    ; $6d3c: $28 $20

jr_00e_6d3e:
	ld   [hl-], a                                    ; $6d3e: $32
	inc  bc                                          ; $6d3f: $03
	jr   @+$22                                       ; $6d40: $18 $20

	ld   l, $03                                      ; $6d42: $2e $03
	db   $10                                         ; $6d44: $10
	jr   @+$2c                                       ; $6d45: $18 $2a

	inc  b                                           ; $6d47: $04
	ld   [$2620], sp                                 ; $6d48: $08 $20 $26
	inc  bc                                          ; $6d4b: $03
	jr   nc, jr_00e_6d8a                             ; $6d4c: $30 $3c

	ld   [hl+], a                                    ; $6d4e: $22
	inc  bc                                          ; $6d4f: $03
	jr   nz, @+$3e                                   ; $6d50: $20 $3c

	ld   e, $03                                      ; $6d52: $1e $03
	jr   c, jr_00e_6d86                              ; $6d54: $38 $30

	inc  e                                           ; $6d56: $1c
	inc  bc                                          ; $6d57: $03
	ld   [$1828], sp                                 ; $6d58: $08 $28 $18
	inc  bc                                          ; $6d5b: $03
	ld   [$1630], sp                                 ; $6d5c: $08 $30 $16
	inc  bc                                          ; $6d5f: $03
	ld   [$1438], sp                                 ; $6d60: $08 $38 $14
	inc  bc                                          ; $6d63: $03
	db   $10                                         ; $6d64: $10
	ld   b, b                                        ; $6d65: $40
	ld   [de], a                                     ; $6d66: $12
	inc  bc                                          ; $6d67: $03
	db   $10                                         ; $6d68: $10
	ld   c, b                                        ; $6d69: $48
	db   $10                                         ; $6d6a: $10
	inc  de                                          ; $6d6b: $13
	ld   [$4420], sp                                 ; $6d6c: $08 $20 $44
	inc  bc                                          ; $6d6f: $03
	jr   z, jr_00e_6d7a                              ; $6d70: $28 $08

	ld   l, h                                        ; $6d72: $6c
	inc  b                                           ; $6d73: $04
	jr   jr_00e_6d7e                                 ; $6d74: $18 $08

	ld   a, d                                        ; $6d76: $7a
	inc  b                                           ; $6d77: $04
	jr   jr_00e_6d8a                                 ; $6d78: $18 $10

jr_00e_6d7a:
	ld   a, b                                        ; $6d7a: $78
	inc  b                                           ; $6d7b: $04
	jr   nc, jr_00e_6dba                             ; $6d7c: $30 $3c

jr_00e_6d7e:
	ld   c, [hl]                                     ; $6d7e: $4e
	inc  bc                                          ; $6d7f: $03
	jr   nz, jr_00e_6dbe                             ; $6d80: $20 $3c

	ld   c, h                                        ; $6d82: $4c
	inc  bc                                          ; $6d83: $03
	jr   z, @+$22                                    ; $6d84: $28 $20

jr_00e_6d86:
	ld   c, d                                        ; $6d86: $4a
	inc  bc                                          ; $6d87: $03
	jr   jr_00e_6daa                                 ; $6d88: $18 $20

jr_00e_6d8a:
	ld   c, b                                        ; $6d8a: $48
	inc  bc                                          ; $6d8b: $03
	db   $10                                         ; $6d8c: $10
	jr   @+$48                                       ; $6d8d: $18 $46

	inc  b                                           ; $6d8f: $04
	ld   [$4228], sp                                 ; $6d90: $08 $28 $42
	inc  bc                                          ; $6d93: $03
	ld   [$4030], sp                                 ; $6d94: $08 $30 $40
	inc  bc                                          ; $6d97: $03
	ld   [$3e38], sp                                 ; $6d98: $08 $38 $3e
	inc  bc                                          ; $6d9b: $03
	db   $10                                         ; $6d9c: $10
	ld   b, b                                        ; $6d9d: $40
	inc  a                                           ; $6d9e: $3c
	inc  bc                                          ; $6d9f: $03
	db   $10                                         ; $6da0: $10
	ld   c, b                                        ; $6da1: $48
	ld   a, [hl-]                                    ; $6da2: $3a
	inc  bc                                          ; $6da3: $03
	ld   [$3810], sp                                 ; $6da4: $08 $10 $38
	inc  b                                           ; $6da7: $04
	jr   c, jr_00e_6dda                              ; $6da8: $38 $30

jr_00e_6daa:
	inc  e                                           ; $6daa: $1c
	inc  bc                                          ; $6dab: $03
	jr   c, jr_00e_6dce                              ; $6dac: $38 $20

	ld   h, $0b                                      ; $6dae: $26 $0b
	jr   c, jr_00e_6dca                              ; $6db0: $38 $18

	inc  h                                           ; $6db2: $24
	dec  c                                           ; $6db3: $0d
	jr   c, @+$12                                    ; $6db4: $38 $10

	ld   [hl+], a                                    ; $6db6: $22
	dec  c                                           ; $6db7: $0d
	jr   c, jr_00e_6dc2                              ; $6db8: $38 $08

jr_00e_6dba:
	jr   nz, jr_00e_6dc8                             ; $6dba: $20 $0c

	jr   z, @+$1a                                    ; $6dbc: $28 $18

jr_00e_6dbe:
	ld   a, [bc]                                     ; $6dbe: $0a
	inc  c                                           ; $6dbf: $0c
	jr   z, jr_00e_6dd2                              ; $6dc0: $28 $10

jr_00e_6dc2:
	ld   [$081c], sp                                 ; $6dc2: $08 $1c $08
	jr   nz, @+$28                                   ; $6dc5: $20 $26

	inc  bc                                          ; $6dc7: $03

jr_00e_6dc8:
	jr   z, jr_00e_6dd2                              ; $6dc8: $28 $08

jr_00e_6dca:
	ld   l, [hl]                                     ; $6dca: $6e
	inc  b                                           ; $6dcb: $04
	jr   @+$0a                                       ; $6dcc: $18 $08

jr_00e_6dce:
	halt                                             ; $6dce: $76
	inc  b                                           ; $6dcf: $04
	jr   @+$12                                       ; $6dd0: $18 $10

jr_00e_6dd2:
	ld   [hl], h                                     ; $6dd2: $74
	inc  b                                           ; $6dd3: $04
	ld   [$3610], sp                                 ; $6dd4: $08 $10 $36
	inc  b                                           ; $6dd7: $04
	jr   z, @+$22                                    ; $6dd8: $28 $20

jr_00e_6dda:
	ld   [hl-], a                                    ; $6dda: $32
	inc  bc                                          ; $6ddb: $03
	jr   jr_00e_6dfe                                 ; $6ddc: $18 $20

	ld   l, $03                                      ; $6dde: $2e $03
	db   $10                                         ; $6de0: $10
	jr   @+$2c                                       ; $6de1: $18 $2a

	inc  b                                           ; $6de3: $04
	ld   [$0e30], sp                                 ; $6de4: $08 $30 $0e
	inc  bc                                          ; $6de7: $03
	jr   nc, jr_00e_6e26                             ; $6de8: $30 $3c

	inc  h                                           ; $6dea: $24
	inc  bc                                          ; $6deb: $03
	jr   nz, @+$3e                                   ; $6dec: $20 $3c

	ld   e, $03                                      ; $6dee: $1e $03
	jr   c, jr_00e_6e22                              ; $6df0: $38 $30

	inc  e                                           ; $6df2: $1c
	inc  bc                                          ; $6df3: $03
	ld   [$1828], sp                                 ; $6df4: $08 $28 $18
	inc  bc                                          ; $6df7: $03
	ld   [$1438], sp                                 ; $6df8: $08 $38 $14
	inc  bc                                          ; $6dfb: $03
	db   $10                                         ; $6dfc: $10
	ld   b, b                                        ; $6dfd: $40

jr_00e_6dfe:
	ld   [de], a                                     ; $6dfe: $12
	inc  bc                                          ; $6dff: $03
	db   $10                                         ; $6e00: $10
	ld   c, b                                        ; $6e01: $48
	db   $10                                         ; $6e02: $10
	inc  bc                                          ; $6e03: $03
	jr   c, jr_00e_6e26                              ; $6e04: $38 $20

	ld   l, $0b                                      ; $6e06: $2e $0b
	jr   c, jr_00e_6e22                              ; $6e08: $38 $18

	inc  l                                           ; $6e0a: $2c
	dec  c                                           ; $6e0b: $0d
	jr   c, @+$12                                    ; $6e0c: $38 $10

	ld   a, [hl+]                                    ; $6e0e: $2a
	dec  c                                           ; $6e0f: $0d
	jr   c, jr_00e_6e1a                              ; $6e10: $38 $08

	jr   z, @+$0e                                    ; $6e12: $28 $0c

	jr   z, jr_00e_6e2e                              ; $6e14: $28 $18

	ld   c, $0c                                      ; $6e16: $0e $0c
	jr   z, @+$12                                    ; $6e18: $28 $10

jr_00e_6e1a:
	inc  c                                           ; $6e1a: $0c
	inc  e                                           ; $6e1b: $1c
	ld   a, [de]                                     ; $6e1c: $1a
	jr   c, @+$36                                    ; $6e1d: $38 $34

	ld   c, $18                                      ; $6e1f: $0e $18

jr_00e_6e21:
	ld   a, [hl+]                                    ; $6e21: $2a

jr_00e_6e22:
	ld   [hl-], a                                    ; $6e22: $32

jr_00e_6e23:
	ld   c, $18                                      ; $6e23: $0e $18
	ld   [hl+], a                                    ; $6e25: $22

jr_00e_6e26:
	jr   nc, jr_00e_6e46                             ; $6e26: $30 $1e

	ld   a, [de]                                     ; $6e28: $1a
	jr   c, @+$3c                                    ; $6e29: $38 $3a

jr_00e_6e2b:
	ld   c, $18                                      ; $6e2b: $0e $18
	ld   a, [hl+]                                    ; $6e2d: $2a

jr_00e_6e2e:
	jr   c, jr_00e_6e3e                              ; $6e2e: $38 $0e

	jr   @+$24                                       ; $6e30: $18 $22

	ld   [hl], $1e                                   ; $6e32: $36 $1e
	ld   a, [de]                                     ; $6e34: $1a
	jr   c, jr_00e_6e77                              ; $6e35: $38 $40

	ld   c, $18                                      ; $6e37: $0e $18
	ld   a, [hl+]                                    ; $6e39: $2a
	ld   a, $0e                                      ; $6e3a: $3e $0e
	jr   jr_00e_6e60                                 ; $6e3c: $18 $22

jr_00e_6e3e:
	inc  a                                           ; $6e3e: $3c
	ld   e, $10                                      ; $6e3f: $1e $10
	ld   e, b                                        ; $6e41: $58
	call nc, $100f                                   ; $6e42: $d4 $0f $10
	ld   d, b                                        ; $6e45: $50

jr_00e_6e46:
	jp   nc, $100f                                   ; $6e46: $d2 $0f $10

	ld   c, b                                        ; $6e49: $48
	ret  nc                                          ; $6e4a: $d0

	rrca                                             ; $6e4b: $0f
	jr   nz, jr_00e_6e8e                             ; $6e4c: $20 $40

	adc  $0f                                         ; $6e4e: $ce $0f
	db   $10                                         ; $6e50: $10
	ld   b, b                                        ; $6e51: $40
	call z, $200f                                    ; $6e52: $cc $0f $20
	jr   c, jr_00e_6e21                              ; $6e55: $38 $ca

	rrca                                             ; $6e57: $0f
	db   $10                                         ; $6e58: $10
	jr   c, jr_00e_6e23                              ; $6e59: $38 $c8

	rrca                                             ; $6e5b: $0f
	jr   nz, jr_00e_6e8e                             ; $6e5c: $20 $30

	add  $0f                                         ; $6e5e: $c6 $0f

jr_00e_6e60:
	db   $10                                         ; $6e60: $10
	jr   nc, @-$3a                                   ; $6e61: $30 $c4

	rrca                                             ; $6e63: $0f
	jr   nz, jr_00e_6e8e                             ; $6e64: $20 $28

	jp   nz, $2a0f                                   ; $6e66: $c2 $0f $2a

	jr   nz, jr_00e_6e2b                             ; $6e69: $20 $c0

	rrca                                             ; $6e6b: $0f
	jr   nz, jr_00e_6e8e                             ; $6e6c: $20 $20

	cp   [hl]                                        ; $6e6e: $be
	rrca                                             ; $6e6f: $0f
	db   $10                                         ; $6e70: $10
	jr   nz, @-$42                                   ; $6e71: $20 $bc

	rrca                                             ; $6e73: $0f
	ld   a, [hl+]                                    ; $6e74: $2a
	jr   @-$44                                       ; $6e75: $18 $ba

jr_00e_6e77:
	rrca                                             ; $6e77: $0f
	jr   nz, jr_00e_6e92                             ; $6e78: $20 $18

	cp   b                                           ; $6e7a: $b8
	rrca                                             ; $6e7b: $0f
	jr   nz, jr_00e_6e8e                             ; $6e7c: $20 $10

	or   [hl]                                        ; $6e7e: $b6
	rrca                                             ; $6e7f: $0f
	db   $10                                         ; $6e80: $10
	db   $10                                         ; $6e81: $10
	or   h                                           ; $6e82: $b4
	rrca                                             ; $6e83: $0f
	dec  hl                                          ; $6e84: $2b
	ld   [$0fb2], sp                                 ; $6e85: $08 $b2 $0f
	ld   d, $08                                      ; $6e88: $16 $08
	or   b                                           ; $6e8a: $b0
	rra                                              ; $6e8b: $1f
	inc  h                                           ; $6e8c: $24
	ld   d, h                                        ; $6e8d: $54

jr_00e_6e8e:
	ld   a, d                                        ; $6e8e: $7a
	ld   b, $24                                      ; $6e8f: $06 $24
	ld   c, h                                        ; $6e91: $4c

jr_00e_6e92:
	ld   a, b                                        ; $6e92: $78
	ld   b, $24                                      ; $6e93: $06 $24
	ld   b, h                                        ; $6e95: $44
	halt                                             ; $6e96: $76
	inc  b                                           ; $6e97: $04
	inc  h                                           ; $6e98: $24
	inc  a                                           ; $6e99: $3c
	ld   [hl], h                                     ; $6e9a: $74
	inc  b                                           ; $6e9b: $04
	inc  h                                           ; $6e9c: $24
	cpl                                              ; $6e9d: $2f
	ld   [hl], d                                     ; $6e9e: $72
	ld   b, $24                                      ; $6e9f: $06 $24
	daa                                              ; $6ea1: $27
	ld   [hl], b                                     ; $6ea2: $70
	ld   b, $24                                      ; $6ea3: $06 $24
	ld   hl, $066e                                   ; $6ea5: $21 $6e $06
	inc  h                                           ; $6ea8: $24
	add  hl, de                                      ; $6ea9: $19
	ld   l, h                                        ; $6eaa: $6c
	ld   b, $24                                      ; $6eab: $06 $24
	ld   de, $066a                                   ; $6ead: $11 $6a $06
	inc  h                                           ; $6eb0: $24
	ld   [$0668], sp                                 ; $6eb1: $08 $68 $06
	db   $10                                         ; $6eb4: $10
	ld   c, l                                        ; $6eb5: $4d
	ld   h, [hl]                                     ; $6eb6: $66
	ld   b, $10                                      ; $6eb7: $06 $10
	ld   b, l                                        ; $6eb9: $45
	ld   h, h                                        ; $6eba: $64
	ld   b, $10                                      ; $6ebb: $06 $10
	dec  sp                                          ; $6ebd: $3b
	ld   h, d                                        ; $6ebe: $62
	ld   b, $10                                      ; $6ebf: $06 $10
	inc  sp                                          ; $6ec1: $33
	ld   h, b                                        ; $6ec2: $60
	ld   b, $10                                      ; $6ec3: $06 $10
	add  hl, hl                                      ; $6ec5: $29
	ld   e, [hl]                                     ; $6ec6: $5e
	ld   b, $10                                      ; $6ec7: $06 $10
	ld   hl, $065c                                   ; $6ec9: $21 $5c $06
	db   $10                                         ; $6ecc: $10
	rla                                              ; $6ecd: $17
	ld   e, d                                        ; $6ece: $5a
	ld   b, $10                                      ; $6ecf: $06 $10
	rrca                                             ; $6ed1: $0f
	ld   e, b                                        ; $6ed2: $58
	ld   d, $24                                      ; $6ed3: $16 $24
	ld   d, h                                        ; $6ed5: $54
	ld   a, d                                        ; $6ed6: $7a
	ld   b, $24                                      ; $6ed7: $06 $24
	ld   c, h                                        ; $6ed9: $4c
	ld   a, b                                        ; $6eda: $78
	ld   b, $24                                      ; $6edb: $06 $24
	ld   b, h                                        ; $6edd: $44
	halt                                             ; $6ede: $76
	ld   b, $24                                      ; $6edf: $06 $24
	inc  a                                           ; $6ee1: $3c
	ld   [hl], h                                     ; $6ee2: $74
	ld   b, $24                                      ; $6ee3: $06 $24
	cpl                                              ; $6ee5: $2f
	ld   [hl], d                                     ; $6ee6: $72
	ld   b, $24                                      ; $6ee7: $06 $24
	daa                                              ; $6ee9: $27
	ld   [hl], b                                     ; $6eea: $70
	ld   b, $24                                      ; $6eeb: $06 $24
	ld   hl, $066e                                   ; $6eed: $21 $6e $06
	inc  h                                           ; $6ef0: $24
	add  hl, de                                      ; $6ef1: $19
	ld   l, h                                        ; $6ef2: $6c
	ld   b, $24                                      ; $6ef3: $06 $24
	ld   de, $066a                                   ; $6ef5: $11 $6a $06
	inc  h                                           ; $6ef8: $24
	ld   [$0668], sp                                 ; $6ef9: $08 $68 $06
	db   $10                                         ; $6efc: $10
	ld   c, l                                        ; $6efd: $4d
	ld   h, [hl]                                     ; $6efe: $66
	ld   b, $10                                      ; $6eff: $06 $10
	ld   b, l                                        ; $6f01: $45
	ld   h, h                                        ; $6f02: $64
	ld   b, $10                                      ; $6f03: $06 $10
	dec  sp                                          ; $6f05: $3b
	ld   h, d                                        ; $6f06: $62
	ld   b, $10                                      ; $6f07: $06 $10
	inc  sp                                          ; $6f09: $33
	ld   h, b                                        ; $6f0a: $60
	ld   b, $10                                      ; $6f0b: $06 $10
	add  hl, hl                                      ; $6f0d: $29
	ld   e, [hl]                                     ; $6f0e: $5e
	ld   b, $10                                      ; $6f0f: $06 $10
	ld   hl, $065c                                   ; $6f11: $21 $5c $06
	db   $10                                         ; $6f14: $10
	rla                                              ; $6f15: $17
	ld   e, d                                        ; $6f16: $5a
	ld   b, $10                                      ; $6f17: $06 $10
	rrca                                             ; $6f19: $0f
	ld   e, b                                        ; $6f1a: $58
	ld   d, $24                                      ; $6f1b: $16 $24
	ld   d, h                                        ; $6f1d: $54
	ld   a, d                                        ; $6f1e: $7a
	ld   b, $24                                      ; $6f1f: $06 $24
	ld   c, h                                        ; $6f21: $4c
	ld   a, b                                        ; $6f22: $78
	ld   b, $24                                      ; $6f23: $06 $24
	ld   b, h                                        ; $6f25: $44
	halt                                             ; $6f26: $76
	ld   b, $24                                      ; $6f27: $06 $24
	inc  a                                           ; $6f29: $3c
	ld   [hl], h                                     ; $6f2a: $74
	ld   b, $24                                      ; $6f2b: $06 $24
	cpl                                              ; $6f2d: $2f
	ld   [hl], d                                     ; $6f2e: $72
	ld   b, $24                                      ; $6f2f: $06 $24
	daa                                              ; $6f31: $27
	ld   [hl], b                                     ; $6f32: $70
	ld   b, $24                                      ; $6f33: $06 $24
	ld   hl, $066e                                   ; $6f35: $21 $6e $06
	inc  h                                           ; $6f38: $24
	add  hl, de                                      ; $6f39: $19
	ld   l, h                                        ; $6f3a: $6c
	ld   b, $24                                      ; $6f3b: $06 $24
	ld   de, $066a                                   ; $6f3d: $11 $6a $06
	inc  h                                           ; $6f40: $24
	ld   [$0668], sp                                 ; $6f41: $08 $68 $06
	db   $10                                         ; $6f44: $10
	ld   c, l                                        ; $6f45: $4d
	ld   h, [hl]                                     ; $6f46: $66
	ld   b, $10                                      ; $6f47: $06 $10
	ld   b, l                                        ; $6f49: $45
	ld   h, h                                        ; $6f4a: $64
	ld   b, $10                                      ; $6f4b: $06 $10
	dec  sp                                          ; $6f4d: $3b
	ld   h, d                                        ; $6f4e: $62
	ld   b, $10                                      ; $6f4f: $06 $10
	inc  sp                                          ; $6f51: $33
	ld   h, b                                        ; $6f52: $60
	ld   b, $10                                      ; $6f53: $06 $10
	add  hl, hl                                      ; $6f55: $29
	ld   e, [hl]                                     ; $6f56: $5e
	ld   b, $10                                      ; $6f57: $06 $10
	ld   hl, $065c                                   ; $6f59: $21 $5c $06
	db   $10                                         ; $6f5c: $10
	rla                                              ; $6f5d: $17
	ld   e, d                                        ; $6f5e: $5a
	ld   b, $10                                      ; $6f5f: $06 $10
	rrca                                             ; $6f61: $0f
	ld   e, b                                        ; $6f62: $58
	ld   d, $24                                      ; $6f63: $16 $24
	ld   d, h                                        ; $6f65: $54
	ld   a, d                                        ; $6f66: $7a
	ld   b, $24                                      ; $6f67: $06 $24
	ld   c, h                                        ; $6f69: $4c
	ld   a, b                                        ; $6f6a: $78
	ld   b, $24                                      ; $6f6b: $06 $24
	ld   b, h                                        ; $6f6d: $44
	halt                                             ; $6f6e: $76
	ld   b, $24                                      ; $6f6f: $06 $24
	inc  a                                           ; $6f71: $3c
	ld   [hl], h                                     ; $6f72: $74
	ld   b, $24                                      ; $6f73: $06 $24
	cpl                                              ; $6f75: $2f
	ld   [hl], d                                     ; $6f76: $72
	ld   b, $24                                      ; $6f77: $06 $24
	daa                                              ; $6f79: $27
	ld   [hl], b                                     ; $6f7a: $70
	ld   b, $24                                      ; $6f7b: $06 $24
	ld   hl, $066e                                   ; $6f7d: $21 $6e $06
	inc  h                                           ; $6f80: $24
	add  hl, de                                      ; $6f81: $19
	ld   l, h                                        ; $6f82: $6c
	ld   b, $24                                      ; $6f83: $06 $24
	ld   de, $066a                                   ; $6f85: $11 $6a $06
	inc  h                                           ; $6f88: $24
	ld   [$0668], sp                                 ; $6f89: $08 $68 $06
	db   $10                                         ; $6f8c: $10
	ld   c, l                                        ; $6f8d: $4d
	ld   h, [hl]                                     ; $6f8e: $66
	ld   b, $10                                      ; $6f8f: $06 $10
	ld   b, l                                        ; $6f91: $45
	ld   h, h                                        ; $6f92: $64
	ld   b, $10                                      ; $6f93: $06 $10
	dec  sp                                          ; $6f95: $3b
	ld   h, d                                        ; $6f96: $62
	ld   b, $10                                      ; $6f97: $06 $10
	inc  sp                                          ; $6f99: $33
	ld   h, b                                        ; $6f9a: $60
	ld   b, $10                                      ; $6f9b: $06 $10
	add  hl, hl                                      ; $6f9d: $29
	ld   e, [hl]                                     ; $6f9e: $5e
	ld   b, $10                                      ; $6f9f: $06 $10
	ld   hl, $065c                                   ; $6fa1: $21 $5c $06
	db   $10                                         ; $6fa4: $10
	rla                                              ; $6fa5: $17
	ld   e, d                                        ; $6fa6: $5a
	ld   b, $10                                      ; $6fa7: $06 $10
	rrca                                             ; $6fa9: $0f
	ld   e, b                                        ; $6faa: $58
	ld   d, $24                                      ; $6fab: $16 $24
	ld   d, h                                        ; $6fad: $54
	ld   a, d                                        ; $6fae: $7a
	ld   b, $24                                      ; $6faf: $06 $24
	ld   c, h                                        ; $6fb1: $4c
	ld   a, b                                        ; $6fb2: $78
	ld   b, $24                                      ; $6fb3: $06 $24
	ld   b, h                                        ; $6fb5: $44
	halt                                             ; $6fb6: $76
	ld   b, $24                                      ; $6fb7: $06 $24
	inc  a                                           ; $6fb9: $3c
	ld   [hl], h                                     ; $6fba: $74
	ld   b, $24                                      ; $6fbb: $06 $24
	cpl                                              ; $6fbd: $2f
	ld   [hl], d                                     ; $6fbe: $72
	ld   b, $24                                      ; $6fbf: $06 $24
	daa                                              ; $6fc1: $27
	ld   [hl], b                                     ; $6fc2: $70
	ld   b, $24                                      ; $6fc3: $06 $24
	ld   hl, $066e                                   ; $6fc5: $21 $6e $06
	inc  h                                           ; $6fc8: $24
	add  hl, de                                      ; $6fc9: $19
	ld   l, h                                        ; $6fca: $6c
	ld   b, $24                                      ; $6fcb: $06 $24
	ld   de, $066a                                   ; $6fcd: $11 $6a $06
	inc  h                                           ; $6fd0: $24
	ld   [$0668], sp                                 ; $6fd1: $08 $68 $06
	db   $10                                         ; $6fd4: $10
	ld   c, l                                        ; $6fd5: $4d
	ld   h, [hl]                                     ; $6fd6: $66
	ld   b, $10                                      ; $6fd7: $06 $10
	ld   b, l                                        ; $6fd9: $45
	ld   h, h                                        ; $6fda: $64
	ld   b, $10                                      ; $6fdb: $06 $10
	dec  sp                                          ; $6fdd: $3b
	ld   h, d                                        ; $6fde: $62
	ld   b, $10                                      ; $6fdf: $06 $10
	inc  sp                                          ; $6fe1: $33
	ld   h, b                                        ; $6fe2: $60
	ld   b, $10                                      ; $6fe3: $06 $10
	add  hl, hl                                      ; $6fe5: $29
	ld   e, [hl]                                     ; $6fe6: $5e
	ld   b, $10                                      ; $6fe7: $06 $10
	ld   hl, $065c                                   ; $6fe9: $21 $5c $06
	db   $10                                         ; $6fec: $10
	rla                                              ; $6fed: $17
	ld   e, d                                        ; $6fee: $5a
	ld   b, $10                                      ; $6fef: $06 $10
	rrca                                             ; $6ff1: $0f
	ld   e, b                                        ; $6ff2: $58
	ld   d, $24                                      ; $6ff3: $16 $24
	ld   d, h                                        ; $6ff5: $54
	ld   a, d                                        ; $6ff6: $7a
	ld   b, $24                                      ; $6ff7: $06 $24
	ld   c, h                                        ; $6ff9: $4c
	ld   a, b                                        ; $6ffa: $78
	ld   b, $24                                      ; $6ffb: $06 $24
	ld   b, h                                        ; $6ffd: $44
	halt                                             ; $6ffe: $76
	ld   b, $24                                      ; $6fff: $06 $24
	inc  a                                           ; $7001: $3c
	ld   [hl], h                                     ; $7002: $74
	ld   b, $24                                      ; $7003: $06 $24
	cpl                                              ; $7005: $2f
	ld   [hl], d                                     ; $7006: $72
	ld   b, $24                                      ; $7007: $06 $24
	daa                                              ; $7009: $27
	ld   [hl], b                                     ; $700a: $70
	ld   b, $24                                      ; $700b: $06 $24
	ld   hl, $066e                                   ; $700d: $21 $6e $06
	inc  h                                           ; $7010: $24
	add  hl, de                                      ; $7011: $19
	ld   l, h                                        ; $7012: $6c
	ld   b, $24                                      ; $7013: $06 $24
	ld   de, $066a                                   ; $7015: $11 $6a $06
	inc  h                                           ; $7018: $24
	ld   [$0668], sp                                 ; $7019: $08 $68 $06
	db   $10                                         ; $701c: $10
	ld   c, l                                        ; $701d: $4d
	ld   h, [hl]                                     ; $701e: $66
	ld   b, $10                                      ; $701f: $06 $10
	ld   b, l                                        ; $7021: $45
	ld   h, h                                        ; $7022: $64
	ld   b, $10                                      ; $7023: $06 $10
	dec  sp                                          ; $7025: $3b
	ld   h, d                                        ; $7026: $62
	ld   b, $10                                      ; $7027: $06 $10
	inc  sp                                          ; $7029: $33
	ld   h, b                                        ; $702a: $60
	ld   b, $10                                      ; $702b: $06 $10
	add  hl, hl                                      ; $702d: $29
	ld   e, [hl]                                     ; $702e: $5e
	ld   b, $10                                      ; $702f: $06 $10
	ld   hl, $065c                                   ; $7031: $21 $5c $06
	db   $10                                         ; $7034: $10
	rla                                              ; $7035: $17
	ld   e, d                                        ; $7036: $5a
	ld   b, $10                                      ; $7037: $06 $10
	rrca                                             ; $7039: $0f
	ld   e, b                                        ; $703a: $58
	ld   d, $24                                      ; $703b: $16 $24
	ld   d, h                                        ; $703d: $54
	ld   a, d                                        ; $703e: $7a
	ld   b, $24                                      ; $703f: $06 $24
	ld   c, h                                        ; $7041: $4c
	ld   a, b                                        ; $7042: $78
	ld   b, $24                                      ; $7043: $06 $24
	ld   b, h                                        ; $7045: $44
	halt                                             ; $7046: $76
	dec  b                                           ; $7047: $05
	inc  h                                           ; $7048: $24
	inc  a                                           ; $7049: $3c
	ld   [hl], h                                     ; $704a: $74
	dec  b                                           ; $704b: $05
	inc  h                                           ; $704c: $24
	cpl                                              ; $704d: $2f
	ld   [hl], d                                     ; $704e: $72
	ld   b, $24                                      ; $704f: $06 $24
	daa                                              ; $7051: $27
	ld   [hl], b                                     ; $7052: $70
	ld   b, $24                                      ; $7053: $06 $24
	ld   hl, $066e                                   ; $7055: $21 $6e $06
	inc  h                                           ; $7058: $24
	add  hl, de                                      ; $7059: $19
	ld   l, h                                        ; $705a: $6c
	ld   b, $24                                      ; $705b: $06 $24
	ld   de, $066a                                   ; $705d: $11 $6a $06
	inc  h                                           ; $7060: $24
	ld   [$0668], sp                                 ; $7061: $08 $68 $06
	db   $10                                         ; $7064: $10
	ld   c, l                                        ; $7065: $4d
	ld   h, [hl]                                     ; $7066: $66
	ld   b, $10                                      ; $7067: $06 $10
	ld   b, l                                        ; $7069: $45
	ld   h, h                                        ; $706a: $64
	ld   b, $10                                      ; $706b: $06 $10
	dec  sp                                          ; $706d: $3b
	ld   h, d                                        ; $706e: $62
	ld   b, $10                                      ; $706f: $06 $10
	inc  sp                                          ; $7071: $33
	ld   h, b                                        ; $7072: $60
	ld   b, $10                                      ; $7073: $06 $10
	add  hl, hl                                      ; $7075: $29
	ld   e, [hl]                                     ; $7076: $5e
	ld   b, $10                                      ; $7077: $06 $10
	ld   hl, $065c                                   ; $7079: $21 $5c $06
	db   $10                                         ; $707c: $10
	rla                                              ; $707d: $17
	ld   e, d                                        ; $707e: $5a
	ld   b, $10                                      ; $707f: $06 $10
	rrca                                             ; $7081: $0f
	ld   e, b                                        ; $7082: $58
	ld   d, $24                                      ; $7083: $16 $24
	ld   d, a                                        ; $7085: $57
	ld   a, d                                        ; $7086: $7a
	ld   b, $24                                      ; $7087: $06 $24
	ld   c, a                                        ; $7089: $4f
	ld   a, b                                        ; $708a: $78
	ld   b, $24                                      ; $708b: $06 $24
	ld   b, a                                        ; $708d: $47
	halt                                             ; $708e: $76
	ld   b, $24                                      ; $708f: $06 $24
	ccf                                              ; $7091: $3f
	ld   [hl], h                                     ; $7092: $74
	ld   b, $24                                      ; $7093: $06 $24
	ld   [hl-], a                                    ; $7095: $32
	ld   [hl], d                                     ; $7096: $72
	ld   b, $24                                      ; $7097: $06 $24
	ld   a, [hl+]                                    ; $7099: $2a
	ld   [hl], b                                     ; $709a: $70
	ld   b, $24                                      ; $709b: $06 $24
	ld   [hl+], a                                    ; $709d: $22
	ld   l, [hl]                                     ; $709e: $6e
	ld   b, $24                                      ; $709f: $06 $24
	ld   a, [de]                                     ; $70a1: $1a
	ld   l, h                                        ; $70a2: $6c
	ld   b, $24                                      ; $70a3: $06 $24
	db   $10                                         ; $70a5: $10
	ld   l, d                                        ; $70a6: $6a
	ld   b, $24                                      ; $70a7: $06 $24
	ld   [$0668], sp                                 ; $70a9: $08 $68 $06
	db   $10                                         ; $70ac: $10
	ld   c, a                                        ; $70ad: $4f
	ld   h, [hl]                                     ; $70ae: $66
	ld   b, $10                                      ; $70af: $06 $10
	ld   b, a                                        ; $70b1: $47
	ld   h, h                                        ; $70b2: $64
	ld   b, $10                                      ; $70b3: $06 $10
	dec  a                                           ; $70b5: $3d
	ld   h, d                                        ; $70b6: $62
	ld   b, $10                                      ; $70b7: $06 $10
	dec  [hl]                                        ; $70b9: $35
	ld   h, b                                        ; $70ba: $60
	ld   b, $10                                      ; $70bb: $06 $10
	dec  hl                                          ; $70bd: $2b
	ld   e, [hl]                                     ; $70be: $5e
	ld   b, $10                                      ; $70bf: $06 $10
	inc  hl                                          ; $70c1: $23
	ld   e, h                                        ; $70c2: $5c
	ld   b, $10                                      ; $70c3: $06 $10
	add  hl, de                                      ; $70c5: $19
	ld   e, d                                        ; $70c6: $5a
	ld   b, $10                                      ; $70c7: $06 $10
	ld   de, $1658                                   ; $70c9: $11 $58 $16


SpriteGroupFPointers::
	ld   a, $71                                      ; $70cc: $3e $71
	ld   d, [hl]                                     ; $70ce: $56
	ld   [hl], c                                     ; $70cf: $71
	ld   l, [hl]                                     ; $70d0: $6e
	ld   [hl], c                                     ; $70d1: $71
	adc  d                                           ; $70d2: $8a
	ld   [hl], c                                     ; $70d3: $71
	xor  [hl]                                        ; $70d4: $ae
	ld   [hl], c                                     ; $70d5: $71
	jp   z, $e271                                    ; $70d6: $ca $71 $e2

	ld   [hl], c                                     ; $70d9: $71
	cp   $71                                         ; $70da: $fe $71
	ld   e, $72                                      ; $70dc: $1e $72
	ld   a, $72                                      ; $70de: $3e $72
	ld   d, d                                        ; $70e0: $52
	ld   [hl], d                                     ; $70e1: $72
	ld   h, [hl]                                     ; $70e2: $66
	ld   [hl], d                                     ; $70e3: $72
	ld   a, d                                        ; $70e4: $7a
	ld   [hl], d                                     ; $70e5: $72
	add  d                                           ; $70e6: $82
	ld   [hl], d                                     ; $70e7: $72
	adc  d                                           ; $70e8: $8a
	ld   [hl], d                                     ; $70e9: $72
	sub  d                                           ; $70ea: $92
	ld   [hl], d                                     ; $70eb: $72
	sbc  d                                           ; $70ec: $9a
	ld   [hl], d                                     ; $70ed: $72
	or   d                                           ; $70ee: $b2
	ld   [hl], d                                     ; $70ef: $72
	jp   z, $e672                                    ; $70f0: $ca $72 $e6

	ld   [hl], d                                     ; $70f3: $72
	ld   [bc], a                                     ; $70f4: $02
	ld   [hl], e                                     ; $70f5: $73
	ld   e, $73                                      ; $70f6: $1e $73
	ld   [hl], $73                                   ; $70f8: $36 $73
	ld   d, d                                        ; $70fa: $52
	ld   [hl], e                                     ; $70fb: $73
	ld   l, [hl]                                     ; $70fc: $6e
	ld   [hl], e                                     ; $70fd: $73
	ld   a, [hl]                                     ; $70fe: $7e
	ld   [hl], e                                     ; $70ff: $73
	sub  d                                           ; $7100: $92
	ld   [hl], e                                     ; $7101: $73
	and  d                                           ; $7102: $a2
	ld   [hl], e                                     ; $7103: $73
	or   [hl]                                        ; $7104: $b6
	ld   [hl], e                                     ; $7105: $73
	jp   c, $0273                                    ; $7106: $da $73 $02

	ld   [hl], h                                     ; $7109: $74
	ld   a, [hl+]                                    ; $710a: $2a
	ld   [hl], h                                     ; $710b: $74
	ld   d, d                                        ; $710c: $52
	ld   [hl], h                                     ; $710d: $74
	ld   a, d                                        ; $710e: $7a
	ld   [hl], h                                     ; $710f: $74
	sbc  [hl]                                        ; $7110: $9e
	ld   [hl], h                                     ; $7111: $74
	jp   nz, $e674                                   ; $7112: $c2 $74 $e6

	ld   [hl], h                                     ; $7115: $74
	ld   a, [bc]                                     ; $7116: $0a
	ld   [hl], l                                     ; $7117: $75
	ld   h, $75                                      ; $7118: $26 $75
	ld   b, d                                        ; $711a: $42
	ld   [hl], l                                     ; $711b: $75
	ld   e, [hl]                                     ; $711c: $5e
	ld   [hl], l                                     ; $711d: $75
	ld   a, d                                        ; $711e: $7a
	ld   [hl], l                                     ; $711f: $75
	sub  d                                           ; $7120: $92
	ld   [hl], l                                     ; $7121: $75
	xor  [hl]                                        ; $7122: $ae
	ld   [hl], l                                     ; $7123: $75
	jp   z, $e675                                    ; $7124: $ca $75 $e6

	ld   [hl], l                                     ; $7127: $75
	ld   [bc], a                                     ; $7128: $02
	halt                                             ; $7129: $76
	ld   e, $76                                      ; $712a: $1e $76
	ld   a, [hl-]                                    ; $712c: $3a
	halt                                             ; $712d: $76
	ld   d, [hl]                                     ; $712e: $56
	halt                                             ; $712f: $76
	ld   [hl], d                                     ; $7130: $72
	halt                                             ; $7131: $76
	sub  [hl]                                        ; $7132: $96
	halt                                             ; $7133: $76
	cp   d                                           ; $7134: $ba
	halt                                             ; $7135: $76
	sbc  $76                                         ; $7136: $de $76
	ld   a, [bc]                                     ; $7138: $0a
	ld   [hl], a                                     ; $7139: $77
	ld   [hl], $77                                   ; $713a: $36 $77
	ld   h, d                                        ; $713c: $62
	ld   [hl], a                                     ; $713d: $77
	nop                                              ; $713e: $00
	ld   [hl+], a                                    ; $713f: $22
	db   $10                                         ; $7140: $10
	ld   [bc], a                                     ; $7141: $02
	nop                                              ; $7142: $00
	ld   a, [de]                                     ; $7143: $1a
	ld   c, $02                                      ; $7144: $0e $02
	nop                                              ; $7146: $00
	dec  d                                           ; $7147: $15
	inc  l                                           ; $7148: $2c
	ld   bc, $1200                                   ; $7149: $01 $00 $12
	inc  c                                           ; $714c: $0c
	ld   [bc], a                                     ; $714d: $02
	ldh  a, [rAUD3HIGH]                              ; $714e: $f0 $1e
	ld   [bc], a                                     ; $7150: $02
	nop                                              ; $7151: $00
	ldh  a, [rAUD2LEN]                               ; $7152: $f0 $16
	nop                                              ; $7154: $00
	stop                                             ; $7155: $10 $00
	jr   nz, jr_00e_716f                             ; $7157: $20 $16

	ld   [bc], a                                     ; $7159: $02
	nop                                              ; $715a: $00
	jr   jr_00e_7171                                 ; $715b: $18 $14

	ld   [bc], a                                     ; $715d: $02
	nop                                              ; $715e: $00
	db   $10                                         ; $715f: $10
	ld   [de], a                                     ; $7160: $12
	ld   [bc], a                                     ; $7161: $02
	nop                                              ; $7162: $00
	ld   [de], a                                     ; $7163: $12
	inc  l                                           ; $7164: $2c
	ld   bc, $19f0                                   ; $7165: $01 $f0 $19
	ld   b, $00                                      ; $7168: $06 $00
	ldh  a, [rAUD1LEN]                               ; $716a: $f0 $11
	inc  b                                           ; $716c: $04
	stop                                             ; $716d: $10 $00

jr_00e_716f:
	jr   nz, jr_00e_718f                             ; $716f: $20 $1e

jr_00e_7171:
	ld   [bc], a                                     ; $7171: $02
	nop                                              ; $7172: $00
	jr   @+$1e                                       ; $7173: $18 $1c

	ld   [bc], a                                     ; $7175: $02
	nop                                              ; $7176: $00
	db   $10                                         ; $7177: $10
	ld   a, [de]                                     ; $7178: $1a
	ld   [bc], a                                     ; $7179: $02
	nop                                              ; $717a: $00
	ld   [$0218], sp                                 ; $717b: $08 $18 $02
	nop                                              ; $717e: $00
	ld   de, $012c                                   ; $717f: $11 $2c $01
	ldh  a, [rAUD2LOW]                               ; $7182: $f0 $18
	ld   b, $00                                      ; $7184: $06 $00
	ldh  a, [rAUD1SWEEP]                             ; $7186: $f0 $10
	inc  b                                           ; $7188: $04
	stop                                             ; $7189: $10 $00
	inc  e                                           ; $718b: $1c
	ld   a, [hl+]                                    ; $718c: $2a
	ld   [bc], a                                     ; $718d: $02
	nop                                              ; $718e: $00

jr_00e_718f:
	inc  d                                           ; $718f: $14
	jr   z, jr_00e_7194                              ; $7190: $28 $02

	nop                                              ; $7192: $00
	inc  c                                           ; $7193: $0c

jr_00e_7194:
	ld   h, $02                                      ; $7194: $26 $02
	nop                                              ; $7196: $00
	dec  c                                           ; $7197: $0d
	inc  l                                           ; $7198: $2c
	ld   bc, $06f0                                   ; $7199: $01 $f0 $06
	inc  h                                           ; $719c: $24
	ld   [bc], a                                     ; $719d: $02
	ldh  a, [$fe]                                    ; $719e: $f0 $fe
	ld   [hl+], a                                    ; $71a0: $22
	ld   [bc], a                                     ; $71a1: $02
	ldh  a, [$f6]                                    ; $71a2: $f0 $f6
	jr   nz, jr_00e_71a8                             ; $71a4: $20 $02

	ldh  a, [rAUD2LEN]                               ; $71a6: $f0 $16

jr_00e_71a8:
	ld   a, [bc]                                     ; $71a8: $0a
	nop                                              ; $71a9: $00
	ldh  a, [$0e]                                    ; $71aa: $f0 $0e
	ld   [$f810], sp                                 ; $71ac: $08 $10 $f8
	inc  h                                           ; $71af: $24
	ld   b, $00                                      ; $71b0: $06 $00
	add  sp, $24                                     ; $71b2: $e8 $24
	nop                                              ; $71b4: $00
	nop                                              ; $71b5: $00
	nop                                              ; $71b6: $00
	inc  e                                           ; $71b7: $1c
	inc  c                                           ; $71b8: $0c
	ld   [bc], a                                     ; $71b9: $02
	nop                                              ; $71ba: $00
	inc  d                                           ; $71bb: $14
	ld   a, [bc]                                     ; $71bc: $0a
	ld   [bc], a                                     ; $71bd: $02
	nop                                              ; $71be: $00
	inc  c                                           ; $71bf: $0c
	ld   [$f002], sp                                 ; $71c0: $08 $02 $f0
	inc  e                                           ; $71c3: $1c
	inc  b                                           ; $71c4: $04
	nop                                              ; $71c5: $00
	ldh  a, [rAUD1HIGH]                              ; $71c6: $f0 $14
	ld   [bc], a                                     ; $71c8: $02
	db   $10                                         ; $71c9: $10
	add  sp, $1b                                     ; $71ca: $e8 $1b
	ld   c, $00                                      ; $71cc: $0e $00
	nop                                              ; $71ce: $00
	inc  e                                           ; $71cf: $1c
	jr   jr_00e_71d4                                 ; $71d0: $18 $02

	nop                                              ; $71d2: $00
	inc  d                                           ; $71d3: $14

jr_00e_71d4:
	ld   d, $02                                      ; $71d4: $16 $02
	nop                                              ; $71d6: $00
	inc  c                                           ; $71d7: $0c
	inc  d                                           ; $71d8: $14
	ld   [bc], a                                     ; $71d9: $02
	ldh  a, [rAUD3LEVEL]                             ; $71da: $f0 $1c
	ld   [de], a                                     ; $71dc: $12
	nop                                              ; $71dd: $00
	ldh  a, [rAUD1HIGH]                              ; $71de: $f0 $14
	db   $10                                         ; $71e0: $10
	stop                                             ; $71e1: $10 $00
	ld   [de], a                                     ; $71e3: $12
	ld   h, $01                                      ; $71e4: $26 $01
	ldh  a, [rAUD3ENA]                               ; $71e6: $f0 $1a
	inc  e                                           ; $71e8: $1c
	nop                                              ; $71e9: $00
	ldh  a, [rAUD1ENV]                               ; $71ea: $f0 $12
	ld   a, [de]                                     ; $71ec: $1a
	nop                                              ; $71ed: $00
	nop                                              ; $71ee: $00
	ld   a, [de]                                     ; $71ef: $1a
	inc  h                                           ; $71f0: $24
	ld   [bc], a                                     ; $71f1: $02
	nop                                              ; $71f2: $00
	ld   [de], a                                     ; $71f3: $12
	ld   [hl+], a                                    ; $71f4: $22
	ld   [bc], a                                     ; $71f5: $02
	nop                                              ; $71f6: $00
	ld   a, [bc]                                     ; $71f7: $0a
	jr   nz, jr_00e_71fc                             ; $71f8: $20 $02

	nop                                              ; $71fa: $00
	ld   [bc], a                                     ; $71fb: $02

jr_00e_71fc:
	ld   e, $12                                      ; $71fc: $1e $12
	nop                                              ; $71fe: $00
	inc  de                                          ; $71ff: $13
	ld   c, $01                                      ; $7200: $0e $01
	nop                                              ; $7202: $00
	dec  de                                          ; $7203: $1b
	inc  c                                           ; $7204: $0c
	ld   [bc], a                                     ; $7205: $02
	nop                                              ; $7206: $00
	inc  de                                          ; $7207: $13
	ld   a, [bc]                                     ; $7208: $0a
	ld   [bc], a                                     ; $7209: $02
	nop                                              ; $720a: $00
	dec  bc                                          ; $720b: $0b
	ld   [$f002], sp                                 ; $720c: $08 $02 $f0
	dec  de                                          ; $720f: $1b
	ld   b, $00                                      ; $7210: $06 $00
	ldh  a, [rAUD1LOW]                               ; $7212: $f0 $13
	inc  b                                           ; $7214: $04
	nop                                              ; $7215: $00
	ldh  a, [$0b]                                    ; $7216: $f0 $0b
	ld   [bc], a                                     ; $7218: $02
	nop                                              ; $7219: $00
	ldh  a, [$03]                                    ; $721a: $f0 $03
	nop                                              ; $721c: $00
	db   $10                                         ; $721d: $10
	ld   hl, sp+$06                                  ; $721e: $f8 $06
	db   $10                                         ; $7220: $10
	ld   [bc], a                                     ; $7221: $02
	nop                                              ; $7222: $00
	inc  d                                           ; $7223: $14
	ld   e, $01                                      ; $7224: $1e $01
	nop                                              ; $7226: $00
	inc  e                                           ; $7227: $1c
	inc  e                                           ; $7228: $1c
	ld   [bc], a                                     ; $7229: $02
	nop                                              ; $722a: $00
	inc  d                                           ; $722b: $14
	ld   a, [de]                                     ; $722c: $1a
	ld   [bc], a                                     ; $722d: $02
	nop                                              ; $722e: $00
	inc  c                                           ; $722f: $0c
	jr   jr_00e_7234                                 ; $7230: $18 $02

	ldh  a, [rAUD3LEVEL]                             ; $7232: $f0 $1c

jr_00e_7234:
	ld   d, $00                                      ; $7234: $16 $00
	ldh  a, [rAUD1HIGH]                              ; $7236: $f0 $14
	inc  d                                           ; $7238: $14
	nop                                              ; $7239: $00
	ldh  a, [$0c]                                    ; $723a: $f0 $0c
	ld   [de], a                                     ; $723c: $12
	stop                                             ; $723d: $10 $00
	db   $10                                         ; $723f: $10
	inc  e                                           ; $7240: $1c
	ld   bc, $1000                                   ; $7241: $01 $00 $10
	ld   b, $02                                      ; $7244: $06 $02
	nop                                              ; $7246: $00
	ld   [$0204], sp                                 ; $7247: $08 $04 $02
	ldh  a, [rAUD1SWEEP]                             ; $724a: $f0 $10
	ld   [bc], a                                     ; $724c: $02
	nop                                              ; $724d: $00
	ldh  a, [$08]                                    ; $724e: $f0 $08
	nop                                              ; $7250: $00
	stop                                             ; $7251: $10 $00
	db   $10                                         ; $7253: $10
	inc  e                                           ; $7254: $1c
	ld   bc, $1000                                   ; $7255: $01 $00 $10
	ld   c, $02                                      ; $7258: $0e $02
	nop                                              ; $725a: $00
	ld   [$020c], sp                                 ; $725b: $08 $0c $02
	ldh  a, [rAUD1SWEEP]                             ; $725e: $f0 $10
	ld   a, [bc]                                     ; $7260: $0a
	nop                                              ; $7261: $00
	ldh  a, [$08]                                    ; $7262: $f0 $08
	ld   [$0010], sp                                 ; $7264: $08 $10 $00
	db   $10                                         ; $7267: $10
	inc  e                                           ; $7268: $1c
	ld   bc, $1000                                   ; $7269: $01 $00 $10
	ld   d, $02                                      ; $726c: $16 $02
	nop                                              ; $726e: $00
	ld   [$0214], sp                                 ; $726f: $08 $14 $02
	ldh  a, [rAUD1SWEEP]                             ; $7272: $f0 $10
	ld   [de], a                                     ; $7274: $12
	nop                                              ; $7275: $00
	ldh  a, [$08]                                    ; $7276: $f0 $08
	db   $10                                         ; $7278: $10
	db   $10                                         ; $7279: $10
	di                                               ; $727a: $f3
	dec  h                                           ; $727b: $25
	ld   a, [de]                                     ; $727c: $1a
	inc  bc                                          ; $727d: $03
	di                                               ; $727e: $f3
	dec  e                                           ; $727f: $1d
	jr   jr_00e_7295                                 ; $7280: $18 $13

	ldh  a, [c]                                      ; $7282: $f2
	dec  h                                           ; $7283: $25
	ld   a, [de]                                     ; $7284: $1a
	inc  bc                                          ; $7285: $03
	ldh  a, [c]                                      ; $7286: $f2
	dec  e                                           ; $7287: $1d
	jr   jr_00e_729d                                 ; $7288: $18 $13

	ldh  a, [rAUDTERM]                               ; $728a: $f0 $25
	ld   a, [de]                                     ; $728c: $1a
	inc  bc                                          ; $728d: $03
	ldh  a, [rAUD3LOW]                               ; $728e: $f0 $1d
	jr   jr_00e_72a5                                 ; $7290: $18 $13

	pop  af                                          ; $7292: $f1
	dec  h                                           ; $7293: $25
	ld   a, [de]                                     ; $7294: $1a

jr_00e_7295:
	inc  bc                                          ; $7295: $03
	pop  af                                          ; $7296: $f1
	dec  e                                           ; $7297: $1d
	jr   jr_00e_72ad                                 ; $7298: $18 $13

	nop                                              ; $729a: $00
	jr   jr_00e_72a7                                 ; $729b: $18 $0a

jr_00e_729d:
	inc  bc                                          ; $729d: $03
	nop                                              ; $729e: $00
	db   $10                                         ; $729f: $10
	ld   [$0003], sp                                 ; $72a0: $08 $03 $00
	jr   @+$08                                       ; $72a3: $18 $06

jr_00e_72a5:
	ld   [bc], a                                     ; $72a5: $02
	nop                                              ; $72a6: $00

jr_00e_72a7:
	db   $10                                         ; $72a7: $10
	inc  b                                           ; $72a8: $04
	ld   [bc], a                                     ; $72a9: $02
	ldh  a, [rAUD2LOW]                               ; $72aa: $f0 $18
	ld   [bc], a                                     ; $72ac: $02

jr_00e_72ad:
	nop                                              ; $72ad: $00
	ldh  a, [rAUD1SWEEP]                             ; $72ae: $f0 $10
	nop                                              ; $72b0: $00
	stop                                             ; $72b1: $10 $00
	jr   @+$14                                       ; $72b3: $18 $12

	inc  bc                                          ; $72b5: $03
	nop                                              ; $72b6: $00
	db   $10                                         ; $72b7: $10
	db   $10                                         ; $72b8: $10
	inc  bc                                          ; $72b9: $03
	nop                                              ; $72ba: $00
	jr   @+$10                                       ; $72bb: $18 $0e

	ld   [bc], a                                     ; $72bd: $02
	nop                                              ; $72be: $00
	db   $10                                         ; $72bf: $10
	inc  c                                           ; $72c0: $0c
	ld   [bc], a                                     ; $72c1: $02
	ldh  a, [rAUD2LOW]                               ; $72c2: $f0 $18
	ld   [bc], a                                     ; $72c4: $02
	nop                                              ; $72c5: $00
	ldh  a, [rAUD1SWEEP]                             ; $72c6: $f0 $10
	nop                                              ; $72c8: $00
	db   $10                                         ; $72c9: $10
	ld   hl, sp+$1c                                  ; $72ca: $f8 $1c
	ld   d, $03                                      ; $72cc: $16 $03
	nop                                              ; $72ce: $00
	jr   @+$14                                       ; $72cf: $18 $12

	inc  bc                                          ; $72d1: $03
	nop                                              ; $72d2: $00
	db   $10                                         ; $72d3: $10
	db   $10                                         ; $72d4: $10
	inc  bc                                          ; $72d5: $03
	nop                                              ; $72d6: $00
	jr   @+$10                                       ; $72d7: $18 $0e

	ld   [bc], a                                     ; $72d9: $02
	nop                                              ; $72da: $00
	db   $10                                         ; $72db: $10
	inc  c                                           ; $72dc: $0c
	ld   [bc], a                                     ; $72dd: $02
	ldh  a, [rAUD2LOW]                               ; $72de: $f0 $18
	ld   [bc], a                                     ; $72e0: $02
	nop                                              ; $72e1: $00
	ldh  a, [rAUD1SWEEP]                             ; $72e2: $f0 $10
	nop                                              ; $72e4: $00
	db   $10                                         ; $72e5: $10
	ld   hl, sp+$1d                                  ; $72e6: $f8 $1d
	inc  d                                           ; $72e8: $14
	inc  bc                                          ; $72e9: $03
	nop                                              ; $72ea: $00
	jr   @+$14                                       ; $72eb: $18 $12

	inc  bc                                          ; $72ed: $03
	nop                                              ; $72ee: $00
	db   $10                                         ; $72ef: $10
	db   $10                                         ; $72f0: $10
	inc  bc                                          ; $72f1: $03
	nop                                              ; $72f2: $00
	jr   @+$10                                       ; $72f3: $18 $0e

	ld   [bc], a                                     ; $72f5: $02
	nop                                              ; $72f6: $00
	db   $10                                         ; $72f7: $10
	inc  c                                           ; $72f8: $0c
	ld   [bc], a                                     ; $72f9: $02
	ldh  a, [rAUD2LOW]                               ; $72fa: $f0 $18
	ld   [bc], a                                     ; $72fc: $02
	nop                                              ; $72fd: $00
	ldh  a, [rAUD1SWEEP]                             ; $72fe: $f0 $10
	nop                                              ; $7300: $00
	db   $10                                         ; $7301: $10
	ld   bc, $1a1d                                   ; $7302: $01 $1d $1a
	inc  bc                                          ; $7305: $03
	nop                                              ; $7306: $00
	jr   @+$14                                       ; $7307: $18 $12

	inc  bc                                          ; $7309: $03
	nop                                              ; $730a: $00
	db   $10                                         ; $730b: $10
	db   $10                                         ; $730c: $10
	inc  bc                                          ; $730d: $03
	nop                                              ; $730e: $00
	jr   jr_00e_731f                                 ; $730f: $18 $0e

	ld   [bc], a                                     ; $7311: $02
	nop                                              ; $7312: $00
	db   $10                                         ; $7313: $10
	inc  c                                           ; $7314: $0c
	ld   [bc], a                                     ; $7315: $02
	ldh  a, [rAUD2LOW]                               ; $7316: $f0 $18
	ld   [bc], a                                     ; $7318: $02
	nop                                              ; $7319: $00
	ldh  a, [rAUD1SWEEP]                             ; $731a: $f0 $10
	nop                                              ; $731c: $00
	stop                                             ; $731d: $10 $00

jr_00e_731f:
	jr   nz, jr_00e_7321                             ; $731f: $20 $00

jr_00e_7321:
	jr   nz, @+$0a                                   ; $7321: $20 $08

	jr   jr_00e_732d                                 ; $7323: $18 $08

	nop                                              ; $7325: $00
	ld   [$0610], sp                                 ; $7326: $08 $10 $06
	nop                                              ; $7329: $00
	ld   hl, sp+$18                                  ; $732a: $f8 $18
	inc  b                                           ; $732c: $04

jr_00e_732d:
	nop                                              ; $732d: $00
	ld   hl, sp+$10                                  ; $732e: $f8 $10
	ld   [bc], a                                     ; $7330: $02
	nop                                              ; $7331: $00
	nop                                              ; $7332: $00
	ld   [$1000], sp                                 ; $7333: $08 $00 $10
	ld   hl, sp+$20                                  ; $7336: $f8 $20
	inc  d                                           ; $7338: $14
	nop                                              ; $7339: $00
	nop                                              ; $733a: $00
	jr   nz, @+$0c                                   ; $733b: $20 $0a

	jr   nz, @+$0a                                   ; $733d: $20 $08

	jr   @+$14                                       ; $733f: $18 $12

	nop                                              ; $7341: $00
	ld   [$1010], sp                                 ; $7342: $08 $10 $10
	nop                                              ; $7345: $00
	ld   hl, sp+$18                                  ; $7346: $f8 $18
	ld   c, $00                                      ; $7348: $0e $00
	ld   hl, sp+$10                                  ; $734a: $f8 $10
	inc  c                                           ; $734c: $0c
	nop                                              ; $734d: $00
	nop                                              ; $734e: $00
	ld   [$100a], sp                                 ; $734f: $08 $0a $10
	ld   hl, sp+$20                                  ; $7352: $f8 $20
	ld   d, $00                                      ; $7354: $16 $00
	nop                                              ; $7356: $00
	jr   nz, @+$0c                                   ; $7357: $20 $0a

	jr   nz, @+$0a                                   ; $7359: $20 $08

	jr   jr_00e_736f                                 ; $735b: $18 $12

	nop                                              ; $735d: $00
	ld   [$1010], sp                                 ; $735e: $08 $10 $10
	nop                                              ; $7361: $00
	ld   hl, sp+$18                                  ; $7362: $f8 $18
	ld   c, $00                                      ; $7364: $0e $00
	ld   hl, sp+$10                                  ; $7366: $f8 $10
	inc  c                                           ; $7368: $0c
	nop                                              ; $7369: $00
	nop                                              ; $736a: $00
	ld   [$100a], sp                                 ; $736b: $08 $0a $10
	nop                                              ; $736e: $00

jr_00e_736f:
	ld   a, [de]                                     ; $736f: $1a
	ld   e, $00                                      ; $7370: $1e $00
	nop                                              ; $7372: $00
	ld   [de], a                                     ; $7373: $12
	inc  e                                           ; $7374: $1c
	nop                                              ; $7375: $00
	ldh  a, [rAUD3ENA]                               ; $7376: $f0 $1a
	ld   a, [de]                                     ; $7378: $1a
	nop                                              ; $7379: $00
	ldh  a, [rAUD1ENV]                               ; $737a: $f0 $12
	jr   jr_00e_738e                                 ; $737c: $18 $10

	nop                                              ; $737e: $00
	ld   [$0038], sp                                 ; $737f: $08 $38 $00
	nop                                              ; $7382: $00
	jr   jr_00e_73ab                                 ; $7383: $18 $26

	nop                                              ; $7385: $00
	nop                                              ; $7386: $00
	db   $10                                         ; $7387: $10
	inc  h                                           ; $7388: $24
	nop                                              ; $7389: $00
	ldh  a, [rAUD2LOW]                               ; $738a: $f0 $18
	ld   [hl+], a                                    ; $738c: $22
	nop                                              ; $738d: $00

jr_00e_738e:
	ldh  a, [rAUD1SWEEP]                             ; $738e: $f0 $10
	jr   nz, jr_00e_73a2                             ; $7390: $20 $10

	nop                                              ; $7392: $00
	ld   a, [de]                                     ; $7393: $1a
	ld   l, $00                                      ; $7394: $2e $00
	nop                                              ; $7396: $00
	ld   [de], a                                     ; $7397: $12
	inc  l                                           ; $7398: $2c
	nop                                              ; $7399: $00
	ldh  a, [rAUD3ENA]                               ; $739a: $f0 $1a
	ld   a, [hl+]                                    ; $739c: $2a
	nop                                              ; $739d: $00
	ldh  a, [rAUD1ENV]                               ; $739e: $f0 $12
	jr   z, jr_00e_73b2                              ; $73a0: $28 $10

jr_00e_73a2:
	nop                                              ; $73a2: $00
	ld   [$0038], sp                                 ; $73a3: $08 $38 $00
	nop                                              ; $73a6: $00
	jr   jr_00e_73df                                 ; $73a7: $18 $36

	nop                                              ; $73a9: $00
	nop                                              ; $73aa: $00

jr_00e_73ab:
	db   $10                                         ; $73ab: $10
	inc  [hl]                                        ; $73ac: $34
	nop                                              ; $73ad: $00
	ldh  a, [rAUD2LOW]                               ; $73ae: $f0 $18
	ld   [hl-], a                                    ; $73b0: $32
	nop                                              ; $73b1: $00

jr_00e_73b2:
	ldh  a, [rAUD1SWEEP]                             ; $73b2: $f0 $10
	jr   nc, @+$12                                   ; $73b4: $30 $10

	inc  b                                           ; $73b6: $04
	ld   e, $14                                      ; $73b7: $1e $14
	inc  bc                                          ; $73b9: $03
	inc  b                                           ; $73ba: $04
	inc  h                                           ; $73bb: $24
	ld   [de], a                                     ; $73bc: $12
	ld   [bc], a                                     ; $73bd: $02
	inc  b                                           ; $73be: $04
	inc  e                                           ; $73bf: $1c
	db   $10                                         ; $73c0: $10
	ld   [bc], a                                     ; $73c1: $02
	push af                                          ; $73c2: $f5
	inc  d                                           ; $73c3: $14
	inc  b                                           ; $73c4: $04
	ld   bc, $1405                                   ; $73c5: $01 $05 $14
	ld   a, [bc]                                     ; $73c8: $0a
	nop                                              ; $73c9: $00
	dec  b                                           ; $73ca: $05
	inc  c                                           ; $73cb: $0c
	ld   [$0500], sp                                 ; $73cc: $08 $00 $05
	inc  b                                           ; $73cf: $04
	ld   b, $00                                      ; $73d0: $06 $00
	push af                                          ; $73d2: $f5
	inc  c                                           ; $73d3: $0c
	ld   [bc], a                                     ; $73d4: $02
	ld   bc, $04f5                                   ; $73d5: $01 $f5 $04
	nop                                              ; $73d8: $00
	ld   de, $1cfd                                   ; $73d9: $11 $fd $1c
	ld   c, $00                                      ; $73dc: $0e $00
	inc  b                                           ; $73de: $04

jr_00e_73df:
	ld   e, $14                                      ; $73df: $1e $14
	inc  bc                                          ; $73e1: $03
	inc  b                                           ; $73e2: $04
	inc  h                                           ; $73e3: $24
	ld   [de], a                                     ; $73e4: $12
	ld   [bc], a                                     ; $73e5: $02
	inc  b                                           ; $73e6: $04
	inc  e                                           ; $73e7: $1c
	db   $10                                         ; $73e8: $10
	ld   [bc], a                                     ; $73e9: $02
	push af                                          ; $73ea: $f5
	inc  d                                           ; $73eb: $14
	inc  c                                           ; $73ec: $0c
	ld   bc, $1405                                   ; $73ed: $01 $05 $14
	ld   a, [bc]                                     ; $73f0: $0a
	nop                                              ; $73f1: $00
	dec  b                                           ; $73f2: $05
	inc  c                                           ; $73f3: $0c
	ld   [$0500], sp                                 ; $73f4: $08 $00 $05
	inc  b                                           ; $73f7: $04
	ld   b, $00                                      ; $73f8: $06 $00
	push af                                          ; $73fa: $f5
	inc  c                                           ; $73fb: $0c
	ld   [bc], a                                     ; $73fc: $02
	ld   bc, $04f5                                   ; $73fd: $01 $f5 $04
	nop                                              ; $7400: $00
	ld   de, $25fa                                   ; $7401: $11 $fa $25
	ld   a, [de]                                     ; $7404: $1a
	inc  bc                                          ; $7405: $03
	ld   a, [$181d]                                  ; $7406: $fa $1d $18
	inc  bc                                          ; $7409: $03
	ld   [bc], a                                     ; $740a: $02
	dec  h                                           ; $740b: $25
	ld   d, $02                                      ; $740c: $16 $02
	ld   [bc], a                                     ; $740e: $02
	dec  e                                           ; $740f: $1d
	inc  d                                           ; $7410: $14
	ld   [bc], a                                     ; $7411: $02
	ld   hl, sp+$1d                                  ; $7412: $f8 $1d
	inc  c                                           ; $7414: $0c
	ld   bc, $15f8                                   ; $7415: $01 $f8 $15
	ld   a, [bc]                                     ; $7418: $0a
	ld   bc, $0d00                                   ; $7419: $01 $00 $0d
	ld   [$0001], sp                                 ; $741c: $08 $01 $00
	dec  b                                           ; $741f: $05
	ld   b, $01                                      ; $7420: $06 $01
	ldh  a, [$0d]                                    ; $7422: $f0 $0d
	ld   [bc], a                                     ; $7424: $02
	nop                                              ; $7425: $00
	ldh  a, [rTIMA]                                  ; $7426: $f0 $05
	nop                                              ; $7428: $00
	db   $10                                         ; $7429: $10
	ld   a, [$1a25]                                  ; $742a: $fa $25 $1a
	inc  bc                                          ; $742d: $03
	ld   a, [$1c1d]                                  ; $742e: $fa $1d $1c
	inc  bc                                          ; $7431: $03
	ld   [bc], a                                     ; $7432: $02
	dec  e                                           ; $7433: $1d
	inc  d                                           ; $7434: $14
	ld   [bc], a                                     ; $7435: $02
	ld   [bc], a                                     ; $7436: $02
	dec  h                                           ; $7437: $25
	ld   d, $02                                      ; $7438: $16 $02
	nop                                              ; $743a: $00
	dec  e                                           ; $743b: $1d
	ld   [de], a                                     ; $743c: $12
	ld   bc, $1500                                   ; $743d: $01 $00 $15
	db   $10                                         ; $7440: $10
	ld   bc, $0d00                                   ; $7441: $01 $00 $0d
	ld   c, $01                                      ; $7444: $0e $01
	ldh  a, [$0d]                                    ; $7446: $f0 $0d
	inc  b                                           ; $7448: $04
	nop                                              ; $7449: $00
	nop                                              ; $744a: $00
	dec  b                                           ; $744b: $05
	ld   b, $01                                      ; $744c: $06 $01
	ldh  a, [rTIMA]                                  ; $744e: $f0 $05
	nop                                              ; $7450: $00
	db   $10                                         ; $7451: $10
	ld   a, [$2225]                                  ; $7452: $fa $25 $22
	inc  bc                                          ; $7455: $03
	ld   a, [$201d]                                  ; $7456: $fa $1d $20
	ld   bc, $2502                                   ; $7459: $01 $02 $25
	ld   d, $02                                      ; $745c: $16 $02
	ld   [bc], a                                     ; $745e: $02
	dec  e                                           ; $745f: $1d
	ld   e, $02                                      ; $7460: $1e $02
	nop                                              ; $7462: $00
	dec  e                                           ; $7463: $1d
	ld   [de], a                                     ; $7464: $12
	ld   bc, $1500                                   ; $7465: $01 $00 $15
	db   $10                                         ; $7468: $10
	ld   bc, $0d00                                   ; $7469: $01 $00 $0d
	ld   c, $01                                      ; $746c: $0e $01
	ldh  a, [$0d]                                    ; $746e: $f0 $0d
	inc  b                                           ; $7470: $04
	nop                                              ; $7471: $00
	nop                                              ; $7472: $00
	dec  b                                           ; $7473: $05
	ld   b, $01                                      ; $7474: $06 $01
	ldh  a, [rTIMA]                                  ; $7476: $f0 $05
	nop                                              ; $7478: $00
	db   $10                                         ; $7479: $10
	ld   [$1c0c], sp                                 ; $747a: $08 $0c $1c
	ld   [bc], a                                     ; $747d: $02
	ld   [$1a04], sp                                 ; $747e: $08 $04 $1a
	ld   [bc], a                                     ; $7481: $02
	nop                                              ; $7482: $00
	inc  h                                           ; $7483: $24
	inc  c                                           ; $7484: $0c
	nop                                              ; $7485: $00
	nop                                              ; $7486: $00
	inc  e                                           ; $7487: $1c
	ld   a, [bc]                                     ; $7488: $0a
	nop                                              ; $7489: $00
	ld   [$0814], sp                                 ; $748a: $08 $14 $08
	nop                                              ; $748d: $00
	nop                                              ; $748e: $00
	inc  b                                           ; $748f: $04
	inc  b                                           ; $7490: $04
	ld   bc, $0c08                                   ; $7491: $01 $08 $0c
	ld   b, $00                                      ; $7494: $06 $00
	ld   hl, sp+$14                                  ; $7496: $f8 $14
	ld   [bc], a                                     ; $7498: $02
	ld   bc, $0cf8                                   ; $7499: $01 $f8 $0c
	nop                                              ; $749c: $00
	ld   de, $0c08                                   ; $749d: $11 $08 $0c
	inc  e                                           ; $74a0: $1c
	ld   [bc], a                                     ; $74a1: $02
	ld   [$1a04], sp                                 ; $74a2: $08 $04 $1a
	ld   [bc], a                                     ; $74a5: $02
	nop                                              ; $74a6: $00
	inc  h                                           ; $74a7: $24
	stop                                             ; $74a8: $10 $00
	nop                                              ; $74aa: $00
	inc  e                                           ; $74ab: $1c
	ld   c, $00                                      ; $74ac: $0e $00
	ld   [$0814], sp                                 ; $74ae: $08 $14 $08
	nop                                              ; $74b1: $00
	nop                                              ; $74b2: $00
	inc  b                                           ; $74b3: $04
	inc  b                                           ; $74b4: $04
	ld   bc, $0c08                                   ; $74b5: $01 $08 $0c
	ld   b, $00                                      ; $74b8: $06 $00
	ld   hl, sp+$14                                  ; $74ba: $f8 $14
	ld   [bc], a                                     ; $74bc: $02
	ld   bc, $0cf8                                   ; $74bd: $01 $f8 $0c
	nop                                              ; $74c0: $00
	ld   de, $0c08                                   ; $74c1: $11 $08 $0c
	inc  e                                           ; $74c4: $1c
	ld   [bc], a                                     ; $74c5: $02
	ld   [$1a04], sp                                 ; $74c6: $08 $04 $1a
	ld   [bc], a                                     ; $74c9: $02
	ld   [$140c], sp                                 ; $74ca: $08 $0c $14
	nop                                              ; $74cd: $00
	nop                                              ; $74ce: $00
	inc  b                                           ; $74cf: $04
	ld   [de], a                                     ; $74d0: $12
	ld   bc, $2400                                   ; $74d1: $01 $00 $24
	stop                                             ; $74d4: $10 $00
	nop                                              ; $74d6: $00
	inc  e                                           ; $74d7: $1c
	ld   c, $00                                      ; $74d8: $0e $00
	ld   [$0814], sp                                 ; $74da: $08 $14 $08
	nop                                              ; $74dd: $00
	ld   hl, sp+$14                                  ; $74de: $f8 $14
	ld   [bc], a                                     ; $74e0: $02
	ld   bc, $0cf8                                   ; $74e1: $01 $f8 $0c
	nop                                              ; $74e4: $00
	ld   de, $0c08                                   ; $74e5: $11 $08 $0c
	inc  e                                           ; $74e8: $1c
	ld   [bc], a                                     ; $74e9: $02
	ld   [$1a04], sp                                 ; $74ea: $08 $04 $1a
	ld   [bc], a                                     ; $74ed: $02
	ld   [$180c], sp                                 ; $74ee: $08 $0c $18
	nop                                              ; $74f1: $00
	nop                                              ; $74f2: $00
	inc  b                                           ; $74f3: $04
	ld   d, $01                                      ; $74f4: $16 $01
	nop                                              ; $74f6: $00
	inc  h                                           ; $74f7: $24
	stop                                             ; $74f8: $10 $00
	nop                                              ; $74fa: $00
	inc  e                                           ; $74fb: $1c
	ld   c, $00                                      ; $74fc: $0e $00
	ld   [$0814], sp                                 ; $74fe: $08 $14 $08
	nop                                              ; $7501: $00
	ld   hl, sp+$14                                  ; $7502: $f8 $14
	ld   [bc], a                                     ; $7504: $02
	ld   bc, $0cf8                                   ; $7505: $01 $f8 $0c
	nop                                              ; $7508: $00
	ld   de, $12f8                                   ; $7509: $11 $f8 $12
	inc  e                                           ; $750c: $1c
	ld   [bc], a                                     ; $750d: $02
	ld   hl, sp+$0a                                  ; $750e: $f8 $0a
	ld   a, [de]                                     ; $7510: $1a
	ld   [bc], a                                     ; $7511: $02
	ld   sp, hl                                      ; $7512: $f9
	ld   a, [bc]                                     ; $7513: $0a
	jr   jr_00e_7516                                 ; $7514: $18 $00

jr_00e_7516:
	nop                                              ; $7516: $00
	ld   a, [de]                                     ; $7517: $1a
	ld   a, [bc]                                     ; $7518: $0a
	nop                                              ; $7519: $00
	nop                                              ; $751a: $00
	ld   [de], a                                     ; $751b: $12
	ld   [$f000], sp                                 ; $751c: $08 $00 $f0
	ld   a, [de]                                     ; $751f: $1a
	ld   [bc], a                                     ; $7520: $02
	ld   bc, $12f0                                   ; $7521: $01 $f0 $12
	nop                                              ; $7524: $00
	ld   de, $12f9                                   ; $7525: $11 $f9 $12
	inc  e                                           ; $7528: $1c
	ld   [bc], a                                     ; $7529: $02
	ld   sp, hl                                      ; $752a: $f9
	ld   a, [bc]                                     ; $752b: $0a
	ld   a, [de]                                     ; $752c: $1a
	ld   [bc], a                                     ; $752d: $02
	ld   a, [$180a]                                  ; $752e: $fa $0a $18
	nop                                              ; $7531: $00
	nop                                              ; $7532: $00
	ld   a, [de]                                     ; $7533: $1a
	ld   c, $00                                      ; $7534: $0e $00
	nop                                              ; $7536: $00
	ld   [de], a                                     ; $7537: $12
	inc  c                                           ; $7538: $0c
	nop                                              ; $7539: $00
	ldh  a, [rAUD3ENA]                               ; $753a: $f0 $1a
	ld   b, $01                                      ; $753c: $06 $01
	ldh  a, [rAUD1ENV]                               ; $753e: $f0 $12
	inc  b                                           ; $7540: $04
	ld   de, $11f8                                   ; $7541: $11 $f8 $11
	inc  e                                           ; $7544: $1c
	ld   [bc], a                                     ; $7545: $02
	ld   hl, sp+$09                                  ; $7546: $f8 $09
	ld   a, [de]                                     ; $7548: $1a
	ld   [bc], a                                     ; $7549: $02
	nop                                              ; $754a: $00
	ld   de, $0010                                   ; $754b: $11 $10 $00
	ld   sp, hl                                      ; $754e: $f9
	add  hl, bc                                      ; $754f: $09
	jr   jr_00e_7552                                 ; $7550: $18 $00

jr_00e_7552:
	nop                                              ; $7552: $00
	add  hl, de                                      ; $7553: $19
	ld   [de], a                                     ; $7554: $12
	nop                                              ; $7555: $00
	ldh  a, [rAUD2HIGH]                              ; $7556: $f0 $19
	ld   [bc], a                                     ; $7558: $02
	ld   bc, $11f0                                   ; $7559: $01 $f0 $11
	nop                                              ; $755c: $00
	ld   de, $13f8                                   ; $755d: $11 $f8 $13
	inc  e                                           ; $7560: $1c
	ld   [bc], a                                     ; $7561: $02
	ld   hl, sp+$0b                                  ; $7562: $f8 $0b
	ld   a, [de]                                     ; $7564: $1a
	ld   [bc], a                                     ; $7565: $02
	ld   sp, hl                                      ; $7566: $f9
	dec  bc                                          ; $7567: $0b
	jr   jr_00e_756a                                 ; $7568: $18 $00

jr_00e_756a:
	ldh  a, [rAUD3LEN]                               ; $756a: $f0 $1b
	ld   [bc], a                                     ; $756c: $02
	ld   bc, $13f0                                   ; $756d: $01 $f0 $13
	nop                                              ; $7570: $00
	ld   bc, $1a00                                   ; $7571: $01 $00 $1a
	ld   d, $00                                      ; $7574: $16 $00
	nop                                              ; $7576: $00
	ld   [de], a                                     ; $7577: $12
	inc  d                                           ; $7578: $14
	db   $10                                         ; $7579: $10
	ld   bc, $1e20                                   ; $757a: $01 $20 $1e
	ld   [bc], a                                     ; $757d: $02
	ld   bc, $1c18                                   ; $757e: $01 $18 $1c
	ld   [bc], a                                     ; $7581: $02
	push af                                          ; $7582: $f5
	db   $10                                         ; $7583: $10
	ld   [bc], a                                     ; $7584: $02
	ld   bc, $08f5                                   ; $7585: $01 $f5 $08
	nop                                              ; $7588: $00
	ld   bc, $0f05                                   ; $7589: $01 $05 $0f
	ld   b, $00                                      ; $758c: $06 $00
	dec  b                                           ; $758e: $05
	rlca                                             ; $758f: $07
	inc  b                                           ; $7590: $04
	db   $10                                         ; $7591: $10
	ld   bc, $1e20                                   ; $7592: $01 $20 $1e
	ld   [bc], a                                     ; $7595: $02
	ld   bc, $1c18                                   ; $7596: $01 $18 $1c
	ld   [bc], a                                     ; $7599: $02
	dec  b                                           ; $759a: $05
	inc  de                                          ; $759b: $13
	inc  c                                           ; $759c: $0c
	nop                                              ; $759d: $00
	dec  b                                           ; $759e: $05
	dec  bc                                          ; $759f: $0b
	ld   a, [bc]                                     ; $75a0: $0a
	nop                                              ; $75a1: $00
	dec  b                                           ; $75a2: $05
	inc  bc                                          ; $75a3: $03
	ld   [$f500], sp                                 ; $75a4: $08 $00 $f5
	db   $10                                         ; $75a7: $10
	ld   [bc], a                                     ; $75a8: $02
	ld   bc, $08f5                                   ; $75a9: $01 $f5 $08
	nop                                              ; $75ac: $00
	ld   de, $1305                                   ; $75ad: $11 $05 $13
	ld   d, $00                                      ; $75b0: $16 $00
	ld   bc, $1e20                                   ; $75b2: $01 $20 $1e
	ld   [bc], a                                     ; $75b5: $02
	ld   bc, $1c18                                   ; $75b6: $01 $18 $1c
	ld   [bc], a                                     ; $75b9: $02
	push af                                          ; $75ba: $f5
	ld   [de], a                                     ; $75bb: $12
	db   $10                                         ; $75bc: $10
	ld   bc, $0af5                                   ; $75bd: $01 $f5 $0a
	ld   c, $01                                      ; $75c0: $0e $01
	dec  b                                           ; $75c2: $05
	dec  bc                                          ; $75c3: $0b
	inc  d                                           ; $75c4: $14
	nop                                              ; $75c5: $00
	dec  b                                           ; $75c6: $05
	inc  bc                                          ; $75c7: $03
	ld   [de], a                                     ; $75c8: $12
	db   $10                                         ; $75c9: $10
	ld   bc, $1e20                                   ; $75ca: $01 $20 $1e
	ld   [bc], a                                     ; $75cd: $02
	ld   bc, $1c18                                   ; $75ce: $01 $18 $1c
	ld   [bc], a                                     ; $75d1: $02
	push af                                          ; $75d2: $f5
	ld   de, $0110                                   ; $75d3: $11 $10 $01
	push af                                          ; $75d6: $f5
	add  hl, bc                                      ; $75d7: $09
	ld   c, $01                                      ; $75d8: $0e $01
	dec  b                                           ; $75da: $05
	inc  de                                          ; $75db: $13
	ld   a, [de]                                     ; $75dc: $1a
	nop                                              ; $75dd: $00
	dec  b                                           ; $75de: $05
	dec  bc                                          ; $75df: $0b
	jr   jr_00e_75e2                                 ; $75e0: $18 $00

jr_00e_75e2:
	dec  b                                           ; $75e2: $05
	inc  bc                                          ; $75e3: $03
	ld   [$0010], sp                                 ; $75e4: $08 $10 $00
	ld   a, [bc]                                     ; $75e7: $0a
	jr   nz, jr_00e_75eb                             ; $75e8: $20 $01

	nop                                              ; $75ea: $00

jr_00e_75eb:
	ld   [de], a                                     ; $75eb: $12
	inc  e                                           ; $75ec: $1c
	ld   bc, $1500                                   ; $75ed: $01 $00 $15
	inc  h                                           ; $75f0: $24
	ld   [bc], a                                     ; $75f1: $02
	nop                                              ; $75f2: $00
	dec  c                                           ; $75f3: $0d
	ld   [hl+], a                                    ; $75f4: $22
	ld   [bc], a                                     ; $75f5: $02
	nop                                              ; $75f6: $00
	ld   a, [de]                                     ; $75f7: $1a
	ld   e, $01                                      ; $75f8: $1e $01
	ldh  a, [rAUD3ENA]                               ; $75fa: $f0 $1a
	jr   z, jr_00e_75fe                              ; $75fc: $28 $00

jr_00e_75fe:
	ldh  a, [rAUD1ENV]                               ; $75fe: $f0 $12
	ld   h, $10                                      ; $7600: $26 $10
	nop                                              ; $7602: $00
	ld   a, [bc]                                     ; $7603: $0a
	jr   nz, jr_00e_7607                             ; $7604: $20 $01

	nop                                              ; $7606: $00

jr_00e_7607:
	ld   [de], a                                     ; $7607: $12
	inc  b                                           ; $7608: $04
	ld   bc, $1500                                   ; $7609: $01 $00 $15
	inc  h                                           ; $760c: $24
	ld   [bc], a                                     ; $760d: $02
	nop                                              ; $760e: $00
	dec  c                                           ; $760f: $0d
	ld   [hl+], a                                    ; $7610: $22
	ld   [bc], a                                     ; $7611: $02
	nop                                              ; $7612: $00
	ld   a, [de]                                     ; $7613: $1a
	ld   b, $01                                      ; $7614: $06 $01
	ldh  a, [rAUD3ENA]                               ; $7616: $f0 $1a
	ld   [bc], a                                     ; $7618: $02
	nop                                              ; $7619: $00
	ldh  a, [rAUD1ENV]                               ; $761a: $f0 $12
	nop                                              ; $761c: $00
	stop                                             ; $761d: $10 $00
	dec  d                                           ; $761f: $15
	inc  h                                           ; $7620: $24
	ld   [bc], a                                     ; $7621: $02
	nop                                              ; $7622: $00
	dec  c                                           ; $7623: $0d
	ld   [hl+], a                                    ; $7624: $22
	ld   [bc], a                                     ; $7625: $02
	nop                                              ; $7626: $00
	ld   a, [bc]                                     ; $7627: $0a
	jr   nz, jr_00e_762b                             ; $7628: $20 $01

	nop                                              ; $762a: $00

jr_00e_762b:
	ld   [de], a                                     ; $762b: $12
	inc  c                                           ; $762c: $0c
	ld   bc, $1a00                                   ; $762d: $01 $00 $1a
	ld   c, $01                                      ; $7630: $0e $01
	ldh  a, [rAUD3ENA]                               ; $7632: $f0 $1a
	ld   a, [bc]                                     ; $7634: $0a
	nop                                              ; $7635: $00
	ldh  a, [rAUD1ENV]                               ; $7636: $f0 $12
	ld   [$0010], sp                                 ; $7638: $08 $10 $00
	dec  d                                           ; $763b: $15
	inc  h                                           ; $763c: $24
	ld   [bc], a                                     ; $763d: $02
	nop                                              ; $763e: $00
	dec  c                                           ; $763f: $0d
	ld   [hl+], a                                    ; $7640: $22
	ld   [bc], a                                     ; $7641: $02
	nop                                              ; $7642: $00
	ld   a, [bc]                                     ; $7643: $0a
	jr   nz, jr_00e_7647                             ; $7644: $20 $01

	nop                                              ; $7646: $00

jr_00e_7647:
	ld   [de], a                                     ; $7647: $12
	inc  d                                           ; $7648: $14
	ld   bc, $1a00                                   ; $7649: $01 $00 $1a
	ld   d, $01                                      ; $764c: $16 $01
	ldh  a, [rAUD3ENA]                               ; $764e: $f0 $1a
	ld   [de], a                                     ; $7650: $12
	nop                                              ; $7651: $00
	ldh  a, [rAUD1ENV]                               ; $7652: $f0 $12
	db   $10                                         ; $7654: $10
	stop                                             ; $7655: $10 $00
	ld   a, [bc]                                     ; $7657: $0a
	jr   nz, jr_00e_765b                             ; $7658: $20 $01

	nop                                              ; $765a: $00

jr_00e_765b:
	ld   [de], a                                     ; $765b: $12
	inc  e                                           ; $765c: $1c
	ld   bc, $1500                                   ; $765d: $01 $00 $15
	inc  h                                           ; $7660: $24
	ld   [bc], a                                     ; $7661: $02
	nop                                              ; $7662: $00
	dec  c                                           ; $7663: $0d
	ld   [hl+], a                                    ; $7664: $22
	ld   [bc], a                                     ; $7665: $02
	nop                                              ; $7666: $00
	ld   a, [de]                                     ; $7667: $1a
	ld   e, $01                                      ; $7668: $1e $01
	ldh  a, [rAUD3ENA]                               ; $766a: $f0 $1a
	ld   a, [de]                                     ; $766c: $1a
	nop                                              ; $766d: $00
	ldh  a, [rAUD1ENV]                               ; $766e: $f0 $12
	jr   jr_00e_7682                                 ; $7670: $18 $10

	nop                                              ; $7672: $00
	jr   jr_00e_76ad                                 ; $7673: $18 $38

	ld   [bc], a                                     ; $7675: $02
	ldh  a, [rAUD4LEN]                               ; $7676: $f0 $20
	ld   [hl], $02                                   ; $7678: $36 $02
	ldh  a, [rAUD2LOW]                               ; $767a: $f0 $18
	inc  [hl]                                        ; $767c: $34
	ld   [bc], a                                     ; $767d: $02
	nop                                              ; $767e: $00
	jr   nz, @+$0c                                   ; $767f: $20 $0a

	nop                                              ; $7681: $00

jr_00e_7682:
	ldh  a, [rAUD4LEN]                               ; $7682: $f0 $20
	ld   [rRAMG], sp                                 ; $7684: $08 $00 $00
	jr   jr_00e_768f                                 ; $7687: $18 $06

	nop                                              ; $7689: $00
	ldh  a, [rAUD2LOW]                               ; $768a: $f0 $18
	inc  b                                           ; $768c: $04
	nop                                              ; $768d: $00
	nop                                              ; $768e: $00

jr_00e_768f:
	db   $10                                         ; $768f: $10
	ld   [bc], a                                     ; $7690: $02
	nop                                              ; $7691: $00
	ldh  a, [rAUD1SWEEP]                             ; $7692: $f0 $10
	nop                                              ; $7694: $00
	db   $10                                         ; $7695: $10
	ld   bc, $3818                                   ; $7696: $01 $18 $38
	ld   [bc], a                                     ; $7699: $02
	pop  af                                          ; $769a: $f1
	jr   nz, @+$38                                   ; $769b: $20 $36

	ld   [bc], a                                     ; $769d: $02
	pop  af                                          ; $769e: $f1
	jr   @+$36                                       ; $769f: $18 $34

	ld   [bc], a                                     ; $76a1: $02
	nop                                              ; $76a2: $00
	jr   nz, jr_00e_76c7                             ; $76a3: $20 $22

	nop                                              ; $76a5: $00
	ldh  a, [rAUD4LEN]                               ; $76a6: $f0 $20
	jr   nz, jr_00e_76aa                             ; $76a8: $20 $00

jr_00e_76aa:
	nop                                              ; $76aa: $00
	jr   @+$20                                       ; $76ab: $18 $1e

jr_00e_76ad:
	nop                                              ; $76ad: $00
	ldh  a, [rAUD2LOW]                               ; $76ae: $f0 $18
	inc  e                                           ; $76b0: $1c
	nop                                              ; $76b1: $00
	nop                                              ; $76b2: $00
	db   $10                                         ; $76b3: $10
	ld   a, [de]                                     ; $76b4: $1a
	nop                                              ; $76b5: $00
	ldh  a, [rAUD1SWEEP]                             ; $76b6: $f0 $10
	jr   jr_00e_76ca                                 ; $76b8: $18 $10

	ld   bc, $3818                                   ; $76ba: $01 $18 $38
	ld   [bc], a                                     ; $76bd: $02
	pop  af                                          ; $76be: $f1
	jr   nz, @+$38                                   ; $76bf: $20 $36

	ld   [bc], a                                     ; $76c1: $02
	pop  af                                          ; $76c2: $f1
	jr   @+$36                                       ; $76c3: $18 $34

	ld   [bc], a                                     ; $76c5: $02
	nop                                              ; $76c6: $00

jr_00e_76c7:
	jr   nz, @+$18                                   ; $76c7: $20 $16

	nop                                              ; $76c9: $00

jr_00e_76ca:
	ldh  a, [rAUD4LEN]                               ; $76ca: $f0 $20
	inc  d                                           ; $76cc: $14
	nop                                              ; $76cd: $00
	nop                                              ; $76ce: $00
	jr   @+$14                                       ; $76cf: $18 $12

	nop                                              ; $76d1: $00
	ldh  a, [rAUD2LOW]                               ; $76d2: $f0 $18
	stop                                             ; $76d4: $10 $00
	nop                                              ; $76d6: $00
	db   $10                                         ; $76d7: $10
	ld   c, $00                                      ; $76d8: $0e $00
	ldh  a, [rAUD1SWEEP]                             ; $76da: $f0 $10
	inc  c                                           ; $76dc: $0c
	db   $10                                         ; $76dd: $10
	add  sp, $30                                     ; $76de: $e8 $30
	ld   h, $01                                      ; $76e0: $26 $01
	add  sp, $28                                     ; $76e2: $e8 $28
	inc  h                                           ; $76e4: $24
	ld   bc, $1800                                   ; $76e5: $01 $00 $18
	jr   c, jr_00e_76ec                              ; $76e8: $38 $02

	ldh  a, [rAUD4LEN]                               ; $76ea: $f0 $20

jr_00e_76ec:
	ld   [hl], $02                                   ; $76ec: $36 $02
	ldh  a, [rAUD2LOW]                               ; $76ee: $f0 $18
	inc  [hl]                                        ; $76f0: $34
	ld   [bc], a                                     ; $76f1: $02
	nop                                              ; $76f2: $00
	jr   nz, @+$0c                                   ; $76f3: $20 $0a

	nop                                              ; $76f5: $00
	ldh  a, [rAUD4LEN]                               ; $76f6: $f0 $20
	ld   [rRAMG], sp                                 ; $76f8: $08 $00 $00
	jr   jr_00e_7703                                 ; $76fb: $18 $06

	nop                                              ; $76fd: $00
	ldh  a, [rAUD2LOW]                               ; $76fe: $f0 $18
	inc  b                                           ; $7700: $04
	nop                                              ; $7701: $00
	nop                                              ; $7702: $00

jr_00e_7703:
	db   $10                                         ; $7703: $10
	ld   [bc], a                                     ; $7704: $02
	nop                                              ; $7705: $00
	ldh  a, [rAUD1SWEEP]                             ; $7706: $f0 $10
	nop                                              ; $7708: $00
	db   $10                                         ; $7709: $10
	add  sp, $30                                     ; $770a: $e8 $30
	ld   a, [hl+]                                    ; $770c: $2a
	ld   bc, $28e8                                   ; $770d: $01 $e8 $28
	jr   z, jr_00e_7713                              ; $7710: $28 $01

	nop                                              ; $7712: $00

jr_00e_7713:
	jr   jr_00e_774d                                 ; $7713: $18 $38

	ld   [bc], a                                     ; $7715: $02
	ldh  a, [rAUD4LEN]                               ; $7716: $f0 $20
	ld   [hl], $02                                   ; $7718: $36 $02
	ldh  a, [rAUD2LOW]                               ; $771a: $f0 $18
	inc  [hl]                                        ; $771c: $34
	ld   [bc], a                                     ; $771d: $02
	nop                                              ; $771e: $00
	jr   nz, @+$0c                                   ; $771f: $20 $0a

	nop                                              ; $7721: $00
	ldh  a, [rAUD4LEN]                               ; $7722: $f0 $20
	ld   [rRAMG], sp                                 ; $7724: $08 $00 $00
	jr   jr_00e_772f                                 ; $7727: $18 $06

	nop                                              ; $7729: $00
	ldh  a, [rAUD2LOW]                               ; $772a: $f0 $18
	inc  b                                           ; $772c: $04
	nop                                              ; $772d: $00
	nop                                              ; $772e: $00

jr_00e_772f:
	db   $10                                         ; $772f: $10
	ld   [bc], a                                     ; $7730: $02
	nop                                              ; $7731: $00
	ldh  a, [rAUD1SWEEP]                             ; $7732: $f0 $10
	nop                                              ; $7734: $00
	db   $10                                         ; $7735: $10
	add  sp, $30                                     ; $7736: $e8 $30
	ld   l, $01                                      ; $7738: $2e $01
	add  sp, $28                                     ; $773a: $e8 $28
	inc  l                                           ; $773c: $2c
	ld   bc, $1800                                   ; $773d: $01 $00 $18
	jr   c, jr_00e_7744                              ; $7740: $38 $02

	ldh  a, [rAUD4LEN]                               ; $7742: $f0 $20

jr_00e_7744:
	ld   [hl], $02                                   ; $7744: $36 $02
	ldh  a, [rAUD2LOW]                               ; $7746: $f0 $18
	inc  [hl]                                        ; $7748: $34
	ld   [bc], a                                     ; $7749: $02
	nop                                              ; $774a: $00
	jr   nz, @+$0c                                   ; $774b: $20 $0a

jr_00e_774d:
	nop                                              ; $774d: $00
	ldh  a, [rAUD4LEN]                               ; $774e: $f0 $20
	ld   [rRAMG], sp                                 ; $7750: $08 $00 $00
	jr   jr_00e_775b                                 ; $7753: $18 $06

	nop                                              ; $7755: $00
	ldh  a, [rAUD2LOW]                               ; $7756: $f0 $18
	inc  b                                           ; $7758: $04
	nop                                              ; $7759: $00
	nop                                              ; $775a: $00

jr_00e_775b:
	db   $10                                         ; $775b: $10
	ld   [bc], a                                     ; $775c: $02
	nop                                              ; $775d: $00
	ldh  a, [rAUD1SWEEP]                             ; $775e: $f0 $10
	nop                                              ; $7760: $00
	db   $10                                         ; $7761: $10
	add  sp, $30                                     ; $7762: $e8 $30
	ld   [hl-], a                                    ; $7764: $32
	ld   bc, $28e8                                   ; $7765: $01 $e8 $28
	jr   nc, jr_00e_776b                             ; $7768: $30 $01

	nop                                              ; $776a: $00

jr_00e_776b:
	db $18, $38

	ld   [bc], a                                     ; $776d: $02
	ldh  a, [rAUD4LEN]                               ; $776e: $f0 $20
	ld   [hl], $02                                   ; $7770: $36 $02
	ldh  a, [rAUD2LOW]                               ; $7772: $f0 $18
	inc  [hl]                                        ; $7774: $34
	ld   [bc], a                                     ; $7775: $02
	nop                                              ; $7776: $00
	jr   nz, @+$0c                                   ; $7777: $20 $0a

	nop                                              ; $7779: $00
	ldh  a, [rAUD4LEN]                               ; $777a: $f0 $20
	ld   [rRAMG], sp                                 ; $777c: $08 $00 $00
	jr   jr_00e_7787                                 ; $777f: $18 $06

	nop                                              ; $7781: $00
	ldh  a, [rAUD2LOW]                               ; $7782: $f0 $18
	inc  b                                           ; $7784: $04
	nop                                              ; $7785: $00
	nop                                              ; $7786: $00

jr_00e_7787:
	db   $10                                         ; $7787: $10
	ld   [bc], a                                     ; $7788: $02
	nop                                              ; $7789: $00
	ldh  a, [rAUD1SWEEP]                             ; $778a: $f0 $10
	nop                                              ; $778c: $00
	stop                                             ; $778d: $10 $00


if def(VWF)
Data_0e_6c84:
; GB flowers
	db $e9, $5b, $0c, $02
	db $e0, $53, $0a, $02
	db $f0, $4c, $08, $02
	db $e0, $4b, $06, $02

	db $25-$40, $67-$40, $60, $00 ; below sakurA
	db $1f-$40, $68-$40, $62, $01 ; right side of sakurA
	db $30-$40, $6a-$40, $64, $00 ; left of warS
	db $32-$40, $70-$40, $66, $07 ; right side of warS
	db $2a-$40, $71-$40, $68, $01 ; leaf
	db $3e-$40, $88-$40, $6a, $07 ; flower on subtitle

; kana
	db $3a-$40, $4f-$40, $42, $08
	db $3a-$40, $57-$40, $44, $08
	db $3a-$40, $5f-$40, $46, $08
	db $3a-$40, $67-$40, $48, $08
	db $3a-$40, $6f-$40, $4a, $18


SpriteGroupC_Idx1eh_DormRoomDay:
	db $10, $08, $44, $0f
	db $10, $10, $46, $0f
	db $10, $18, $48, $1f


SpriteGroupC_Idx2bh_DormRoomTuesday:
	db $10, $00, $1c, $0f
	db $10, $08, $1e, $0f
	db $10, $10, $20, $1f


SpriteGroupC_Idx2ch_DormRoomWednesday:
	db $10, $00, $22, $0f
	db $10, $08, $24, $0f
	db $10, $10, $26, $1f


SpriteGroupC_Idx2dh_DormRoomThursday:
	db $10, $00, $28, $0f
	db $10, $08, $2a, $0f
	db $10, $10, $2c, $1f


SpriteGroupC_Idx2eh_DormRoomFriday:
	db $10, $08, $2e, $0f
	db $10, $10, $30, $1f


SpriteGroupC_Idx2fh_DormRoomSaturday:
	db $10, $00, $32, $0f
	db $10, $08, $34, $0f
	db $10, $10, $36, $1f
	
endc