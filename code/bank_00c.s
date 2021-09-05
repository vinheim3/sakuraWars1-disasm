; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $00c", ROMX[$4000], BANK[$c]

GameState39_Explore::
	ld   a, [wGameSubstate]                                  ; $4000: $fa $a1 $c2
	bit  7, a                                        ; $4003: $cb $7f
	jp   nz, Jump_00c_451d                           ; $4005: $c2 $1d $45

	ld   a, [wWramBank]                                  ; $4008: $fa $93 $c2
	push af                                          ; $400b: $f5
	ld   a, $02                                      ; $400c: $3e $02
	ld   [wWramBank], a                                  ; $400e: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4011: $e0 $70
	ld   bc, $4026                                   ; $4013: $01 $26 $40
	push bc                                          ; $4016: $c5
	ld   a, [wGameSubstate]                                  ; $4017: $fa $a1 $c2
	ld   h, $00                                      ; $401a: $26 $00
	ld   l, a                                        ; $401c: $6f
	add  hl, hl                                      ; $401d: $29
	ld   bc, $402d                                   ; $401e: $01 $2d $40
	add  hl, bc                                      ; $4021: $09
	ld   a, [hl+]                                    ; $4022: $2a
	ld   h, [hl]                                     ; $4023: $66
	ld   l, a                                        ; $4024: $6f
	jp   hl                                          ; $4025: $e9


	pop  af                                          ; $4026: $f1
	ld   [wWramBank], a                                  ; $4027: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $402a: $e0 $70
	ret                                              ; $402c: $c9


	ld   b, c                                        ; $402d: $41
	ld   b, b                                        ; $402e: $40
	sub  d                                           ; $402f: $92
	ld   b, b                                        ; $4030: $40
	and  [hl]                                        ; $4031: $a6
	ld   b, b                                        ; $4032: $40
	cp   d                                           ; $4033: $ba
	ld   b, b                                        ; $4034: $40
	adc  $40                                         ; $4035: $ce $40
	rlca                                             ; $4037: $07
	ld   b, c                                        ; $4038: $41
	dec  de                                          ; $4039: $1b
	ld   b, c                                        ; $403a: $41
	ld   l, l                                        ; $403b: $6d
	ld   b, c                                        ; $403c: $41
	jp   z, $7541                            ; $403d: $ca $41 $75

	ld   b, d                                        ; $4040: $42
	call ClearDisplayRegsAllowVBlankInt                                       ; $4041: $cd $59 $0b
	ld   a, [wLCDC]                                  ; $4044: $fa $03 $c2
	and  $e0                                         ; $4047: $e6 $e0
	or   $83                                         ; $4049: $f6 $83
	ld   [wLCDC], a                                  ; $404b: $ea $03 $c2
	ld   a, $ff                                      ; $404e: $3e $ff
	ld   [wInGameInputsEnabled], a                                  ; $4050: $ea $0e $c2
	call ClearOam                                       ; $4053: $cd $d7 $0d
	call ClearBaseAnimSpriteSpecDetails                                       ; $4056: $cd $c9 $2e
	call Call_00c_43c4                               ; $4059: $cd $c4 $43
	ld   a, [wWramBank]                                  ; $405c: $fa $93 $c2
	push af                                          ; $405f: $f5
	ld   a, $07                                      ; $4060: $3e $07
	ld   [wWramBank], a                                  ; $4062: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4065: $e0 $70
	ld   a, [$cb2f]                                  ; $4067: $fa $2f $cb
	call Call_00c_4b1a                               ; $406a: $cd $1a $4b
	call FarGetAddrBank                                       ; $406d: $cd $09 $0b
	ld   d, h                                        ; $4070: $54
	ld   e, l                                        ; $4071: $5d
	ld   hl, $d000                                   ; $4072: $21 $00 $d0
	call RLEXorCopy                                       ; $4075: $cd $d2 $09
	pop  af                                          ; $4078: $f1
	ld   [wWramBank], a                                  ; $4079: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $407c: $e0 $70
	ld   c, $80                                      ; $407e: $0e $80
	ld   de, $8800                                   ; $4080: $11 $00 $88
	ld   a, $07                                      ; $4083: $3e $07
	ld   hl, $d000                                   ; $4085: $21 $00 $d0
	ld   b, $40                                      ; $4088: $06 $40
	call EnqueueHDMATransfer                                       ; $408a: $cd $7c $02
	ld   hl, wGameSubstate                                   ; $408d: $21 $a1 $c2
	inc  [hl]                                        ; $4090: $34
	ret                                              ; $4091: $c9


	ld   c, $80                                      ; $4092: $0e $80
	ld   de, $8c00                                   ; $4094: $11 $00 $8c
	ld   a, $07                                      ; $4097: $3e $07
	ld   hl, $d400                                   ; $4099: $21 $00 $d4
	ld   b, $40                                      ; $409c: $06 $40
	call EnqueueHDMATransfer                                       ; $409e: $cd $7c $02
	ld   hl, wGameSubstate                                   ; $40a1: $21 $a1 $c2
	inc  [hl]                                        ; $40a4: $34
	ret                                              ; $40a5: $c9


	ld   c, $80                                      ; $40a6: $0e $80
	ld   de, $9000                                   ; $40a8: $11 $00 $90
	ld   a, $07                                      ; $40ab: $3e $07
	ld   hl, $d800                                   ; $40ad: $21 $00 $d8
	ld   b, $40                                      ; $40b0: $06 $40
	call EnqueueHDMATransfer                                       ; $40b2: $cd $7c $02
	ld   hl, wGameSubstate                                   ; $40b5: $21 $a1 $c2
	inc  [hl]                                        ; $40b8: $34
	ret                                              ; $40b9: $c9


	ld   c, $80                                      ; $40ba: $0e $80
	ld   de, $9400                                   ; $40bc: $11 $00 $94
	ld   a, $07                                      ; $40bf: $3e $07
	ld   hl, $dc00                                   ; $40c1: $21 $00 $dc
	ld   b, $40                                      ; $40c4: $06 $40
	call EnqueueHDMATransfer                                       ; $40c6: $cd $7c $02
	ld   hl, wGameSubstate                                   ; $40c9: $21 $a1 $c2
	inc  [hl]                                        ; $40cc: $34
	ret                                              ; $40cd: $c9


	ld   a, [wWramBank]                                  ; $40ce: $fa $93 $c2
	push af                                          ; $40d1: $f5
	ld   a, $07                                      ; $40d2: $3e $07
	ld   [wWramBank], a                                  ; $40d4: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $40d7: $e0 $70
	ld   a, [$cb2f]                                  ; $40d9: $fa $2f $cb
	call Call_00c_4b1a                               ; $40dc: $cd $1a $4b
	inc  hl                                          ; $40df: $23
	inc  hl                                          ; $40e0: $23
	inc  hl                                          ; $40e1: $23
	call FarGetAddrBank                                       ; $40e2: $cd $09 $0b
	ld   d, h                                        ; $40e5: $54
	ld   e, l                                        ; $40e6: $5d
	ld   hl, $d000                                   ; $40e7: $21 $00 $d0
	call RLEXorCopy                                       ; $40ea: $cd $d2 $09
	pop  af                                          ; $40ed: $f1
	ld   [wWramBank], a                                  ; $40ee: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $40f1: $e0 $70
	ld   c, $81                                      ; $40f3: $0e $81
	ld   de, $9000                                   ; $40f5: $11 $00 $90
	ld   a, $07                                      ; $40f8: $3e $07
	ld   hl, $d000                                   ; $40fa: $21 $00 $d0
	ld   b, $40                                      ; $40fd: $06 $40
	call EnqueueHDMATransfer                                       ; $40ff: $cd $7c $02
	ld   hl, wGameSubstate                                   ; $4102: $21 $a1 $c2
	inc  [hl]                                        ; $4105: $34
	ret                                              ; $4106: $c9


	ld   c, $81                                      ; $4107: $0e $81
	ld   de, $9400                                   ; $4109: $11 $00 $94
	ld   a, $07                                      ; $410c: $3e $07
	ld   hl, $d400                                   ; $410e: $21 $00 $d4
	ld   b, $40                                      ; $4111: $06 $40
	call EnqueueHDMATransfer                                       ; $4113: $cd $7c $02
	ld   hl, wGameSubstate                                   ; $4116: $21 $a1 $c2
	inc  [hl]                                        ; $4119: $34
	ret                                              ; $411a: $c9


	ld   a, [wWramBank]                                  ; $411b: $fa $93 $c2
	push af                                          ; $411e: $f5
	ld   a, $07                                      ; $411f: $3e $07
	ld   [wWramBank], a                                  ; $4121: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4124: $e0 $70
	ld   a, [$cb2f]                                  ; $4126: $fa $2f $cb
	call Call_00c_4b1a                               ; $4129: $cd $1a $4b
	ld   bc, $0009                                   ; $412c: $01 $09 $00
	add  hl, bc                                      ; $412f: $09
	call FarGetAddrBank                                       ; $4130: $cd $09 $0b
	ld   d, h                                        ; $4133: $54
	ld   e, l                                        ; $4134: $5d
	ld   hl, $d000                                   ; $4135: $21 $00 $d0
	ld   bc, $1412                                   ; $4138: $01 $12 $14
	call FarCopyLayout                                       ; $413b: $cd $2c $0b
	ld   hl, $d400                                   ; $413e: $21 $00 $d4
	call FarCopyLayout                                       ; $4141: $cd $2c $0b
	pop  af                                          ; $4144: $f1
	ld   [wWramBank], a                                  ; $4145: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4148: $e0 $70
	ld   c, $81                                      ; $414a: $0e $81
	ld   de, $9800                                   ; $414c: $11 $00 $98
	ld   a, $07                                      ; $414f: $3e $07
	ld   hl, $d000                                   ; $4151: $21 $00 $d0
	ld   b, $24                                      ; $4154: $06 $24
	call EnqueueHDMATransfer                                       ; $4156: $cd $7c $02
	ld   c, $80                                      ; $4159: $0e $80
	ld   de, $9800                                   ; $415b: $11 $00 $98
	ld   a, $07                                      ; $415e: $3e $07
	ld   hl, $d400                                   ; $4160: $21 $00 $d4
	ld   b, $24                                      ; $4163: $06 $24
	call EnqueueHDMATransfer                                       ; $4165: $cd $7c $02
	ld   hl, wGameSubstate                                   ; $4168: $21 $a1 $c2
	inc  [hl]                                        ; $416b: $34
	ret                                              ; $416c: $c9


	ld   c, $00                                      ; $416d: $0e $00
	ld   de, $8100                                   ; $416f: $11 $00 $81
	ld   a, $8f                                      ; $4172: $3e $8f
	ld   hl, $4000                                   ; $4174: $21 $00 $40
	ld   b, $10                                      ; $4177: $06 $10
	call EnqueueHDMATransfer                                       ; $4179: $cd $7c $02
	ld   c, $01                                      ; $417c: $0e $01
	ld   de, $8000                                   ; $417e: $11 $00 $80
	ld   a, $8f                                      ; $4181: $3e $8f
	ld   hl, $4fd0                                   ; $4183: $21 $d0 $4f
	ld   b, $10                                      ; $4186: $06 $10
	call EnqueueHDMATransfer                                       ; $4188: $cd $7c $02
	ld   hl, $d000                                   ; $418b: $21 $00 $d0
	ld   bc, $0040                                   ; $418e: $01 $40 $00
	ld   a, $0f                                      ; $4191: $3e $0f
	call MemSet                                       ; $4193: $cd $96 $09
	ld   de, $d140                                   ; $4196: $11 $40 $d1
	ld   hl, $42c3                                   ; $4199: $21 $c3 $42
	ld   bc, $0040                                   ; $419c: $01 $40 $00
	call MemCopy                                       ; $419f: $cd $a9 $09
	ld   a, $4f                                      ; $41a2: $3e $4f
	ld   [$d020], a                                  ; $41a4: $ea $20 $d0
	ld   c, $80                                      ; $41a7: $0e $80
	ld   de, $9bc0                                   ; $41a9: $11 $c0 $9b
	ld   a, $02                                      ; $41ac: $3e $02
	ld   hl, $d140                                   ; $41ae: $21 $40 $d1
	ld   b, $04                                      ; $41b1: $06 $04
	call EnqueueHDMATransfer                                       ; $41b3: $cd $7c $02
	ld   c, $81                                      ; $41b6: $0e $81
	ld   de, $9bc0                                   ; $41b8: $11 $c0 $9b
	ld   a, $02                                      ; $41bb: $3e $02
	ld   hl, $d000                                   ; $41bd: $21 $00 $d0
	ld   b, $04                                      ; $41c0: $06 $04
	call EnqueueHDMATransfer                                       ; $41c2: $cd $7c $02
	ld   hl, wGameSubstate                                   ; $41c5: $21 $a1 $c2
	inc  [hl]                                        ; $41c8: $34
	ret                                              ; $41c9: $c9


	ld   a, [sCurrDay]                                  ; $41ca: $fa $b0 $af
	ld   h, a                                        ; $41cd: $67
	ld   l, $0a                                      ; $41ce: $2e $0a
	call HLequHdivModL                                       ; $41d0: $cd $fb $0b
	push hl                                          ; $41d3: $e5
	ld   b, $00                                      ; $41d4: $06 $00
	ld   c, h                                        ; $41d6: $4c
	swap c                                           ; $41d7: $cb $31
	ld   a, $8f                                      ; $41d9: $3e $8f
	ld   hl, $50d0                                   ; $41db: $21 $d0 $50
	add  hl, bc                                      ; $41de: $09
	add  hl, bc                                      ; $41df: $09
	ld   de, $8100                                   ; $41e0: $11 $00 $81
	ld   bc, $0201                                   ; $41e3: $01 $01 $02
	call EnqueueHDMATransfer                                       ; $41e6: $cd $7c $02
	pop  hl                                          ; $41e9: $e1
	ld   b, $00                                      ; $41ea: $06 $00
	ld   c, l                                        ; $41ec: $4d
	swap c                                           ; $41ed: $cb $31
	ld   a, $8f                                      ; $41ef: $3e $8f
	ld   hl, $50d0                                   ; $41f1: $21 $d0 $50
	add  hl, bc                                      ; $41f4: $09
	add  hl, bc                                      ; $41f5: $09
	ld   de, $8120                                   ; $41f6: $11 $20 $81
	ld   bc, $0201                                   ; $41f9: $01 $01 $02
	call EnqueueHDMATransfer                                       ; $41fc: $cd $7c $02
	ld   a, [sCurrDay]                                  ; $41ff: $fa $b0 $af
	dec  a                                           ; $4202: $3d
	ld   h, a                                        ; $4203: $67
	ld   l, $07                                      ; $4204: $2e $07
	call HLequHdivModL                                       ; $4206: $cd $fb $0b
	ld   h, $00                                      ; $4209: $26 $00
	swap l                                           ; $420b: $cb $35
	add  hl, hl                                      ; $420d: $29
	add  hl, hl                                      ; $420e: $29
	ld   bc, $52d0                                   ; $420f: $01 $d0 $52
	add  hl, bc                                      ; $4212: $09
	ld   a, $8f                                      ; $4213: $3e $8f
	ld   de, $8140                                   ; $4215: $11 $40 $81
	ld   bc, $0401                                   ; $4218: $01 $01 $04
	call EnqueueHDMATransfer                                       ; $421b: $cd $7c $02
	ld   a, [wTimeOfDay]                                  ; $421e: $fa $20 $cb

	M_FarCall GetNameIdxOfTimeOfDay

	sla  a                                           ; $4235: $cb $27
	sla  a                                           ; $4237: $cb $27
	swap a                                           ; $4239: $cb $37
	ld   b, $00                                      ; $423b: $06 $00
	ld   c, a                                        ; $423d: $4f
	ld   hl, $54d0                                   ; $423e: $21 $d0 $54
	add  hl, bc                                      ; $4241: $09
	ld   a, $8f                                      ; $4242: $3e $8f
	ld   de, $8180                                   ; $4244: $11 $80 $81
	ld   bc, $0401                                   ; $4247: $01 $01 $04
	call EnqueueHDMATransfer                                       ; $424a: $cd $7c $02
	ld   c, $01                                      ; $424d: $0e $01
	ld   de, $81c0                                   ; $424f: $11 $c0 $81
	ld   a, $8c                                      ; $4252: $3e $8c
	ld   hl, $4000                                   ; $4254: $21 $00 $40
	ld   b, $10                                      ; $4257: $06 $10
	call EnqueueHDMATransfer                                       ; $4259: $cd $7c $02
	ld   a, BANK(Palettes_AllWhite)                                      ; $425c: $3e $01
	ld   hl, Palettes_AllWhite                                   ; $425e: $21 $00 $70
	ld   de, wBGPalettes                                   ; $4261: $11 $de $c2
	ld   bc, $0080                                   ; $4264: $01 $80 $00
	call FarMemCopy                                       ; $4267: $cd $b2 $09
	ld   bc, $003f                                   ; $426a: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $426d: $cd $aa $04
	ld   hl, wGameSubstate                                   ; $4270: $21 $a1 $c2
	inc  [hl]                                        ; $4273: $34
	ret                                              ; $4274: $c9


	xor  a                                           ; $4275: $af
	ld   [$cb32], a                                  ; $4276: $ea $32 $cb
	ld   [$cb33], a                                  ; $4279: $ea $33 $cb
	ld   [$cb34], a                                  ; $427c: $ea $34 $cb
	ld   a, $ff                                      ; $427f: $3e $ff
	ld   [$cb31], a                                  ; $4281: $ea $31 $cb
	ld   [$cb43], a                                  ; $4284: $ea $43 $cb
	call Call_00c_48d8                               ; $4287: $cd $d8 $48
	ld   de, $cb3a                                   ; $428a: $11 $3a $cb
	ld   bc, $0007                                   ; $428d: $01 $07 $00
	call MemCopy                                       ; $4290: $cd $a9 $09
	ld   a, $01                                      ; $4293: $3e $01
	ld   hl, $0000                                   ; $4295: $21 $00 $00
	ld   d, h                                        ; $4298: $54
	ld   e, l                                        ; $4299: $5d
	call ReserveBaseAnimSpriteSpecAndInstance                                       ; $429a: $cd $4b $2f
	ld   [$cb30], a                                  ; $429d: $ea $30 $cb
	call Call_00c_42f7                               ; $42a0: $cd $f7 $42
	ld   a, $01                                      ; $42a3: $3e $01
	ld   hl, $0000                                   ; $42a5: $21 $00 $00
	ld   d, h                                        ; $42a8: $54
	ld   e, l                                        ; $42a9: $5d
	call ReserveBaseAnimSpriteSpecAndInstance                                       ; $42aa: $cd $4b $2f
	ld   [$cb35], a                                  ; $42ad: $ea $35 $cb
	call StartAnimatingAnimatedSpriteSpec                                       ; $42b0: $cd $14 $30
	call Call_00c_4461                               ; $42b3: $cd $61 $44
	xor  a                                           ; $42b6: $af
	ld   [$cb2b], a                                  ; $42b7: $ea $2b $cb
	ld   [$cb2c], a                                  ; $42ba: $ea $2c $cb
	ld   a, $ff                                      ; $42bd: $3e $ff
	ld   [wGameSubstate], a                                  ; $42bf: $ea $a1 $c2
	ret                                              ; $42c2: $c9


	nop                                              ; $42c3: $00
	db   $10                                         ; $42c4: $10
	ld   [de], a                                     ; $42c5: $12
	ld   [bc], a                                     ; $42c6: $02
	inc  bc                                          ; $42c7: $03
	inc  b                                           ; $42c8: $04
	ld   [$1514], sp                                 ; $42c9: $08 $14 $15
	ld   [$1918], sp                                 ; $42cc: $08 $18 $19
	inc  e                                           ; $42cf: $1c
	dec  e                                           ; $42d0: $1d
	ld   e, $1f                                      ; $42d1: $1e $1f
	jr   nz, jr_00c_42f6                             ; $42d3: $20 $21

	ld   [hl+], a                                    ; $42d5: $22
	inc  hl                                          ; $42d6: $23
	nop                                              ; $42d7: $00
	nop                                              ; $42d8: $00
	nop                                              ; $42d9: $00
	nop                                              ; $42da: $00
	nop                                              ; $42db: $00
	nop                                              ; $42dc: $00
	nop                                              ; $42dd: $00
	nop                                              ; $42de: $00
	nop                                              ; $42df: $00
	nop                                              ; $42e0: $00
	nop                                              ; $42e1: $00
	nop                                              ; $42e2: $00
	nop                                              ; $42e3: $00
	ld   de, $0513                                   ; $42e4: $11 $13 $05
	ld   b, $07                                      ; $42e7: $06 $07
	add  hl, bc                                      ; $42e9: $09
	ld   d, $17                                      ; $42ea: $16 $17
	add  hl, bc                                      ; $42ec: $09
	ld   a, [de]                                     ; $42ed: $1a
	dec  de                                          ; $42ee: $1b
	inc  h                                           ; $42ef: $24
	dec  h                                           ; $42f0: $25
	ld   h, $27                                      ; $42f1: $26 $27
	jr   z, jr_00c_431e                              ; $42f3: $28 $29

	ld   a, [hl+]                                    ; $42f5: $2a

jr_00c_42f6:
	dec  hl                                          ; $42f6: $2b

Call_00c_42f7:
	ld   hl, $dc40                                   ; $42f7: $21 $40 $dc
	ld   bc, $0010                                   ; $42fa: $01 $10 $00
	ld   a, $ff                                      ; $42fd: $3e $ff
	call MemSet                                       ; $42ff: $cd $96 $09
	ld   a, [wWramBank]                                  ; $4302: $fa $93 $c2
	push af                                          ; $4305: $f5
	ld   a, $07                                      ; $4306: $3e $07
	ld   [wWramBank], a                                  ; $4308: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $430b: $e0 $70
	ld   a, $10                                      ; $430d: $3e $10
	ld   de, $d000                                   ; $430f: $11 $00 $d0
	ld   hl, $7000                                   ; $4312: $21 $00 $70

jr_00c_4315:
	push af                                          ; $4315: $f5
	push hl                                          ; $4316: $e5
	push de                                          ; $4317: $d5
	dec  a                                           ; $4318: $3d
	xor  $0f                                         ; $4319: $ee $0f
	call Call_00c_4443                               ; $431b: $cd $43 $44

jr_00c_431e:
	or   a                                           ; $431e: $b7
	jr   nz, jr_00c_4324                             ; $431f: $20 $03

	ld   hl, $7000                                   ; $4321: $21 $00 $70

jr_00c_4324:
	ld   a, $8c                                      ; $4324: $3e $8c
	ld   c, $04                                      ; $4326: $0e $04
	call FarMemCopy16C                                       ; $4328: $cd $82 $0a
	pop  hl                                          ; $432b: $e1
	ld   bc, $0040                                   ; $432c: $01 $40 $00
	add  hl, bc                                      ; $432f: $09
	ld   d, h                                        ; $4330: $54
	ld   e, l                                        ; $4331: $5d
	pop  hl                                          ; $4332: $e1
	ld   bc, $0100                                   ; $4333: $01 $00 $01
	add  hl, bc                                      ; $4336: $09
	pop  af                                          ; $4337: $f1
	dec  a                                           ; $4338: $3d
	jr   nz, jr_00c_4315                             ; $4339: $20 $da

	pop  af                                          ; $433b: $f1
	ld   [wWramBank], a                                  ; $433c: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $433f: $e0 $70
	ld   c, $80                                      ; $4341: $0e $80
	ld   de, $8400                                   ; $4343: $11 $00 $84
	ld   a, $07                                      ; $4346: $3e $07
	ld   hl, $d000                                   ; $4348: $21 $00 $d0
	ld   b, $40                                      ; $434b: $06 $40
	call EnqueueHDMATransfer                                       ; $434d: $cd $7c $02
	ld   a, [$cb2f]                                  ; $4350: $fa $2f $cb
	sla  a                                           ; $4353: $cb $27
	ld   b, $00                                      ; $4355: $06 $00
	ld   c, a                                        ; $4357: $4f
	ld   hl, $4ba0                                   ; $4358: $21 $a0 $4b
	add  hl, bc                                      ; $435b: $09
	ld   a, [hl+]                                    ; $435c: $2a
	ld   h, [hl]                                     ; $435d: $66
	ld   l, a                                        ; $435e: $6f
	ld   d, $ff                                      ; $435f: $16 $ff

jr_00c_4361:
	ld   a, [hl]                                     ; $4361: $7e
	or   a                                           ; $4362: $b7
	ret  z                                           ; $4363: $c8

	push hl                                          ; $4364: $e5
	cp   d                                           ; $4365: $ba
	jr   z, jr_00c_43bc                              ; $4366: $28 $54

	ld   b, $00                                      ; $4368: $06 $00
	ld   c, a                                        ; $436a: $4f
	ld   hl, $db80                                   ; $436b: $21 $80 $db
	add  hl, bc                                      ; $436e: $09
	add  hl, bc                                      ; $436f: $09
	add  hl, bc                                      ; $4370: $09
	ld   a, [hl]                                     ; $4371: $7e
	bit  7, a                                        ; $4372: $cb $7f
	jr   nz, jr_00c_43bc                             ; $4374: $20 $46

	push af                                          ; $4376: $f5
	ld   h, $00                                      ; $4377: $26 $00
	ld   l, a                                        ; $4379: $6f
	ld   de, $dc40                                   ; $437a: $11 $40 $dc
	add  hl, de                                      ; $437d: $19
	push hl                                          ; $437e: $e5
	ld   a, $00                                      ; $437f: $3e $00
	ld   hl, $0000                                   ; $4381: $21 $00 $00
	ld   d, h                                        ; $4384: $54
	ld   e, l                                        ; $4385: $5d
	call ReserveBaseAnimSpriteSpecAndInstance                                       ; $4386: $cd $4b $2f
	pop  hl                                          ; $4389: $e1
	ld   [hl], a                                     ; $438a: $77
	call StartAnimatingAnimatedSpriteSpec                                       ; $438b: $cd $14 $30
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $438e: $cd $76 $30
	ld   d, h                                        ; $4391: $54
	ld   e, l                                        ; $4392: $5d
	ld   a, $01                                      ; $4393: $3e $01
	ld   [de], a                                     ; $4395: $12
	inc  de                                          ; $4396: $13
	pop  af                                          ; $4397: $f1
	ld   h, a                                        ; $4398: $67
	call Call_00c_4443                               ; $4399: $cd $43 $44
	or   a                                           ; $439c: $b7
	jr   nz, jr_00c_43a1                             ; $439d: $20 $02

	ld   h, $00                                      ; $439f: $26 $00

jr_00c_43a1:
	ld   a, $15                                      ; $43a1: $3e $15
	add  h                                           ; $43a3: $84
	ld   [de], a                                     ; $43a4: $12
	inc  de                                          ; $43a5: $13
	pop  hl                                          ; $43a6: $e1
	push hl                                          ; $43a7: $e5
	inc  hl                                          ; $43a8: $23
	inc  hl                                          ; $43a9: $23
	inc  hl                                          ; $43aa: $23
	ld   a, [hl+]                                    ; $43ab: $2a
	ld   b, a                                        ; $43ac: $47
	ld   a, [hl+]                                    ; $43ad: $2a
	sub  b                                           ; $43ae: $90
	srl  a                                           ; $43af: $cb $3f
	adc  b                                           ; $43b1: $88
	ld   [de], a                                     ; $43b2: $12
	inc  de                                          ; $43b3: $13
	ld   a, [hl+]                                    ; $43b4: $2a
	ld   b, a                                        ; $43b5: $47
	ld   a, [hl+]                                    ; $43b6: $2a
	sub  b                                           ; $43b7: $90
	srl  a                                           ; $43b8: $cb $3f
	adc  b                                           ; $43ba: $88
	ld   [de], a                                     ; $43bb: $12

jr_00c_43bc:
	pop  hl                                          ; $43bc: $e1
	ld   d, [hl]                                     ; $43bd: $56
	ld   bc, $0007                                   ; $43be: $01 $07 $00
	add  hl, bc                                      ; $43c1: $09
	jr   jr_00c_4361                                 ; $43c2: $18 $9d

Call_00c_43c4:
	ld   a, [$b0ac]                                  ; $43c4: $fa $ac $b0
	ld   [$cb41], a                                  ; $43c7: $ea $41 $cb
	ld   a, [$b0ad]                                  ; $43ca: $fa $ad $b0
	ld   [$cb42], a                                  ; $43cd: $ea $42 $cb
	ld   a, [$b1b8]                                  ; $43d0: $fa $b8 $b1
	or   a                                           ; $43d3: $b7
	jr   nz, jr_00c_4400                             ; $43d4: $20 $2a

	ld   hl, $0100                                   ; $43d6: $21 $00 $01
	ld   b, $01                                      ; $43d9: $06 $01

jr_00c_43db:
	push af                                          ; $43db: $f5
	ld   a, $d7                                      ; $43dc: $3e $d7
	ld   [wFarCallAddr], a                                  ; $43de: $ea $98 $c2
	ld   a, $71                                      ; $43e1: $3e $71
	ld   [wFarCallAddr+1], a                                  ; $43e3: $ea $99 $c2
	ld   a, $0c                                      ; $43e6: $3e $0c
	ld   [wFarCallBank], a                                  ; $43e8: $ea $9a $c2
	pop  af                                          ; $43eb: $f1
	call FarCall                                       ; $43ec: $cd $62 $09
	or   a                                           ; $43ef: $b7
	jr   z, jr_00c_43f6                              ; $43f0: $28 $04

	ld   a, b                                        ; $43f2: $78
	call Call_00c_4419                               ; $43f3: $cd $19 $44

jr_00c_43f6:
	inc  hl                                          ; $43f6: $23
	inc  hl                                          ; $43f7: $23
	inc  hl                                          ; $43f8: $23
	inc  hl                                          ; $43f9: $23
	inc  b                                           ; $43fa: $04
	ld   a, b                                        ; $43fb: $78
	cp   $07                                         ; $43fc: $fe $07
	jr   c, jr_00c_43db                              ; $43fe: $38 $db

jr_00c_4400:
	ld   hl, $db80                                   ; $4400: $21 $80 $db
	ld   b, $40                                      ; $4403: $06 $40

jr_00c_4405:
	ld   a, [hl+]                                    ; $4405: $2a
	ld   c, a                                        ; $4406: $4f
	ld   a, [hl+]                                    ; $4407: $2a
	ld   a, [hl+]                                    ; $4408: $2a
	bit  7, c                                        ; $4409: $cb $79
	jr   nz, jr_00c_4415                             ; $440b: $20 $08

	bit  3, a                                        ; $440d: $cb $5f
	jr   z, jr_00c_4415                              ; $440f: $28 $04

	ld   a, c                                        ; $4411: $79
	call Call_00c_4419                               ; $4412: $cd $19 $44

jr_00c_4415:
	dec  b                                           ; $4415: $05
	jr   nz, jr_00c_4405                             ; $4416: $20 $ed

	ret                                              ; $4418: $c9


Call_00c_4419:
	push de                                          ; $4419: $d5
	push hl                                          ; $441a: $e5
	push af                                          ; $441b: $f5
	srl  a                                           ; $441c: $cb $3f
	srl  a                                           ; $441e: $cb $3f
	srl  a                                           ; $4420: $cb $3f
	ld   d, $00                                      ; $4422: $16 $00
	ld   e, a                                        ; $4424: $5f
	ld   hl, $cb41                                   ; $4425: $21 $41 $cb
	add  hl, de                                      ; $4428: $19
	pop  af                                          ; $4429: $f1
	push hl                                          ; $442a: $e5
	and  $07                                         ; $442b: $e6 $07
	ld   d, $00                                      ; $442d: $16 $00
	ld   e, a                                        ; $442f: $5f
	ld   hl, $443b                                   ; $4430: $21 $3b $44
	add  hl, de                                      ; $4433: $19
	ld   a, [hl]                                     ; $4434: $7e
	pop  hl                                          ; $4435: $e1
	or   [hl]                                        ; $4436: $b6
	ld   [hl], a                                     ; $4437: $77
	pop  hl                                          ; $4438: $e1
	pop  de                                          ; $4439: $d1
	ret                                              ; $443a: $c9


	ld   bc, $0402                                   ; $443b: $01 $02 $04
	ld   [$2010], sp                                 ; $443e: $08 $10 $20
	ld   b, b                                        ; $4441: $40
	add  b                                           ; $4442: $80

Call_00c_4443:
	push hl                                          ; $4443: $e5
	ld   b, $00                                      ; $4444: $06 $00
	ld   c, a                                        ; $4446: $4f
	srl  c                                           ; $4447: $cb $39
	srl  c                                           ; $4449: $cb $39
	srl  c                                           ; $444b: $cb $39
	and  $07                                         ; $444d: $e6 $07
	ld   hl, $cb41                                   ; $444f: $21 $41 $cb
	add  hl, bc                                      ; $4452: $09
	ld   b, [hl]                                     ; $4453: $46

jr_00c_4454:
	or   a                                           ; $4454: $b7
	jr   z, jr_00c_445c                              ; $4455: $28 $05

	srl  b                                           ; $4457: $cb $38
	dec  a                                           ; $4459: $3d
	jr   jr_00c_4454                                 ; $445a: $18 $f8

jr_00c_445c:
	ld   a, b                                        ; $445c: $78
	and  $01                                         ; $445d: $e6 $01
	pop  hl                                          ; $445f: $e1
	ret                                              ; $4460: $c9


Call_00c_4461:
	ld   a, [$cb35]                                  ; $4461: $fa $35 $cb
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $4464: $cd $76 $30
	ld   a, [$cb37]                                  ; $4467: $fa $37 $cb
	ld   b, a                                        ; $446a: $47
	ld   a, [$cb39]                                  ; $446b: $fa $39 $cb
	ld   c, a                                        ; $446e: $4f
	push af                                          ; $446f: $f5
	ld   a, $2f                                      ; $4470: $3e $2f
	ld   [wFarCallAddr], a                                  ; $4472: $ea $98 $c2
	ld   a, $41                                      ; $4475: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $4477: $ea $99 $c2
	ld   a, $01                                      ; $447a: $3e $01
	ld   [wFarCallBank], a                                  ; $447c: $ea $9a $c2
	pop  af                                          ; $447f: $f1
	call FarCall                                       ; $4480: $cd $62 $09
	ld   a, [$cb3b]                                  ; $4483: $fa $3b $cb
	bit  7, a                                        ; $4486: $cb $7f
	jp   nz, Jump_00c_44f7                           ; $4488: $c2 $f7 $44

	bit  6, a                                        ; $448b: $cb $77
	jp   nz, Jump_00c_450a                           ; $448d: $c2 $0a $45

	ld   a, [$b1b7]                                  ; $4490: $fa $b7 $b1
	dec  a                                           ; $4493: $3d
	jr   z, jr_00c_44ac                              ; $4494: $28 $16

	dec  a                                           ; $4496: $3d
	jr   z, jr_00c_44bf                              ; $4497: $28 $26

	ld   c, $00                                      ; $4499: $0e $00
	ld   de, $8100                                   ; $449b: $11 $00 $81
	ld   a, $8f                                      ; $449e: $3e $8f
	ld   hl, $4000                                   ; $44a0: $21 $00 $40
	ld   b, $10                                      ; $44a3: $06 $10
	call EnqueueHDMATransfer                                       ; $44a5: $cd $7c $02
	ld   a, $08                                      ; $44a8: $3e $08
	jr   jr_00c_44d0                                 ; $44aa: $18 $24

jr_00c_44ac:
	ld   c, $00                                      ; $44ac: $0e $00
	ld   de, $8100                                   ; $44ae: $11 $00 $81
	ld   a, $8f                                      ; $44b1: $3e $8f
	ld   hl, $4300                                   ; $44b3: $21 $00 $43
	ld   b, $20                                      ; $44b6: $06 $20
	call EnqueueHDMATransfer                                       ; $44b8: $cd $7c $02
	ld   a, $0b                                      ; $44bb: $3e $0b
	jr   jr_00c_44d0                                 ; $44bd: $18 $11

jr_00c_44bf:
	ld   c, $00                                      ; $44bf: $0e $00
	ld   de, $8100                                   ; $44c1: $11 $00 $81
	ld   a, $8f                                      ; $44c4: $3e $8f
	ld   hl, $4500                                   ; $44c6: $21 $00 $45
	ld   b, $04                                      ; $44c9: $06 $04
	call EnqueueHDMATransfer                                       ; $44cb: $cd $7c $02
	ld   a, $0c                                      ; $44ce: $3e $0c

jr_00c_44d0:
	ld   hl, $cb43                                   ; $44d0: $21 $43 $cb
	cp   [hl]                                        ; $44d3: $be
	ret  z                                           ; $44d4: $c8

	ld   [hl], a                                     ; $44d5: $77
	ld   a, [$cb35]                                  ; $44d6: $fa $35 $cb
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $44d9: $cd $76 $30
	ld   de, $7762                                   ; $44dc: $11 $62 $77
	ld   a, [$cb43]                                  ; $44df: $fa $43 $cb
	push af                                          ; $44e2: $f5
	ld   a, $1c                                      ; $44e3: $3e $1c
	ld   [wFarCallAddr], a                                  ; $44e5: $ea $98 $c2
	ld   a, $41                                      ; $44e8: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $44ea: $ea $99 $c2
	ld   a, $01                                      ; $44ed: $3e $01
	ld   [wFarCallBank], a                                  ; $44ef: $ea $9a $c2
	pop  af                                          ; $44f2: $f1
	call FarCall                                       ; $44f3: $cd $62 $09
	ret                                              ; $44f6: $c9


Jump_00c_44f7:
	ld   c, $00                                      ; $44f7: $0e $00
	ld   de, $8100                                   ; $44f9: $11 $00 $81
	ld   a, $8f                                      ; $44fc: $3e $8f
	ld   hl, $4100                                   ; $44fe: $21 $00 $41
	ld   b, $10                                      ; $4501: $06 $10
	call EnqueueHDMATransfer                                       ; $4503: $cd $7c $02
	ld   a, $08                                      ; $4506: $3e $08
	jr   jr_00c_44d0                                 ; $4508: $18 $c6

Jump_00c_450a:
	ld   c, $00                                      ; $450a: $0e $00
	ld   de, $8100                                   ; $450c: $11 $00 $81
	ld   a, $8f                                      ; $450f: $3e $8f
	ld   hl, $4200                                   ; $4511: $21 $00 $42
	ld   b, $10                                      ; $4514: $06 $10
	call EnqueueHDMATransfer                                       ; $4516: $cd $7c $02
	ld   a, $08                                      ; $4519: $3e $08
	jr   jr_00c_44d0                                 ; $451b: $18 $b3

Jump_00c_451d:
	ld   a, [wWramBank]                                  ; $451d: $fa $93 $c2
	push af                                          ; $4520: $f5
	ld   a, $02                                      ; $4521: $3e $02
	ld   [wWramBank], a                                  ; $4523: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4526: $e0 $70
	call ClearOam                                       ; $4528: $cd $d7 $0d
	ld   bc, $453f                                   ; $452b: $01 $3f $45
	push bc                                          ; $452e: $c5
	ld   a, [$cb2b]                                  ; $452f: $fa $2b $cb
	sla  a                                           ; $4532: $cb $27
	ld   c, a                                        ; $4534: $4f
	ld   b, $00                                      ; $4535: $06 $00
	ld   hl, $4549                                   ; $4537: $21 $49 $45
	add  hl, bc                                      ; $453a: $09
	ld   a, [hl+]                                    ; $453b: $2a
	ld   h, [hl]                                     ; $453c: $66
	ld   l, a                                        ; $453d: $6f
	jp   hl                                          ; $453e: $e9


	call AnimateAllAnimatedSpriteSpecs                                       ; $453f: $cd $d3 $2e
	pop  af                                          ; $4542: $f1
	ld   [wWramBank], a                                  ; $4543: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4546: $e0 $70
	ret                                              ; $4548: $c9


	ld   d, e                                        ; $4549: $53
	ld   b, l                                        ; $454a: $45
	pop  hl                                          ; $454b: $e1
	ld   b, l                                        ; $454c: $45
	rla                                              ; $454d: $17
	ld   c, c                                        ; $454e: $49
	dec  [hl]                                        ; $454f: $35
	ld   c, c                                        ; $4550: $49
	add  d                                           ; $4551: $82
	ld   c, c                                        ; $4552: $49
	ld   a, [$cb2c]                                  ; $4553: $fa $2c $cb
	or   a                                           ; $4556: $b7
	jr   nz, jr_00c_4592                             ; $4557: $20 $39

	ld   a, [$cb2f]                                  ; $4559: $fa $2f $cb
	call Call_00c_4b1a                               ; $455c: $cd $1a $4b
	ld   bc, $0006                                   ; $455f: $01 $06 $00
	add  hl, bc                                      ; $4562: $09
	ld   a, [hl+]                                    ; $4563: $2a
	ld   e, a                                        ; $4564: $5f
	ld   a, [hl+]                                    ; $4565: $2a
	ld   d, a                                        ; $4566: $57
	ld   c, [hl]                                     ; $4567: $4e
	ld   b, $00                                      ; $4568: $06 $00
	ld   hl, wBGPalettes                                   ; $456a: $21 $de $c2
	xor  a                                           ; $456d: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $456e: $ea $62 $c3
	ld   a, $20                                      ; $4571: $3e $20
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $4573: $ea $63 $c3
	ld   a, $03                                      ; $4576: $3e $03
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $4578: $cd $48 $07
	ld   b, $00                                      ; $457b: $06 $00
	ld   hl, wBGPalettes                                   ; $457d: $21 $de $c2
	ld   c, $90                                      ; $4580: $0e $90
	ld   de, $4dd0                                   ; $4582: $11 $d0 $4d
	ld   a, $20                                      ; $4585: $3e $20
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $4587: $ea $62 $c3
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $458a: $ea $63 $c3
	ld   a, $03                                      ; $458d: $3e $03
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $458f: $cd $48 $07

jr_00c_4592:
	ld   hl, $cb2c                                   ; $4592: $21 $2c $cb
	ld   a, [hl]                                     ; $4595: $7e
	inc  [hl]                                        ; $4596: $34
	cp   $1f                                         ; $4597: $fe $1f
	jr   nc, jr_00c_45a4                             ; $4599: $30 $09

	and  $03                                         ; $459b: $e6 $03
	ret  nz                                          ; $459d: $c0

	ld   bc, $0040                                   ; $459e: $01 $40 $00
	jp   FadePalettesAndSetRangeToUpdate                                       ; $45a1: $c3 $32 $08


jr_00c_45a4:
	ld   a, [$cb2f]                                  ; $45a4: $fa $2f $cb
	call Call_00c_4b1a                               ; $45a7: $cd $1a $4b
	ld   bc, $0006                                   ; $45aa: $01 $06 $00
	add  hl, bc                                      ; $45ad: $09
	ld   a, [hl+]                                    ; $45ae: $2a
	ld   e, a                                        ; $45af: $5f
	ld   a, [hl+]                                    ; $45b0: $2a
	ld   d, a                                        ; $45b1: $57
	ld   a, [hl]                                     ; $45b2: $7e
	ld   h, d                                        ; $45b3: $62
	ld   l, e                                        ; $45b4: $6b
	ld   de, wBGPalettes                                   ; $45b5: $11 $de $c2
	ld   bc, $0040                                   ; $45b8: $01 $40 $00
	call FarMemCopy                                       ; $45bb: $cd $b2 $09
	ld   bc, $001f                                   ; $45be: $01 $1f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $45c1: $cd $aa $04
	ld   a, $90                                      ; $45c4: $3e $90
	ld   hl, $4e10                                   ; $45c6: $21 $10 $4e
	ld   de, wOBJPalettes                                   ; $45c9: $11 $1e $c3
	ld   bc, $0040                                   ; $45cc: $01 $40 $00
	call FarMemCopy                                       ; $45cf: $cd $b2 $09
	ld   bc, $203f                                   ; $45d2: $01 $3f $20
	call SetBGandOBJPaletteRangesToUpdate                                       ; $45d5: $cd $aa $04
	ld   hl, $cb2b                                   ; $45d8: $21 $2b $cb
	inc  [hl]                                        ; $45db: $34
	xor  a                                           ; $45dc: $af
	ld   [$cb2c], a                                  ; $45dd: $ea $2c $cb
	ret                                              ; $45e0: $c9


	call Call_00c_49b9                               ; $45e1: $cd $b9 $49
	ld   a, [wInGameButtonsPressed]                                  ; $45e4: $fa $10 $c2
	bit  3, a                                        ; $45e7: $cb $5f
	jr   nz, jr_00c_4613                             ; $45e9: $20 $28

	bit  2, a                                        ; $45eb: $cb $57
	jr   nz, jr_00c_4635                             ; $45ed: $20 $46

	call $465e                                       ; $45ef: $cd $5e $46
	ld   a, [wInGameButtonsHeld]                                  ; $45f2: $fa $0f $c2
	bit  1, a                                        ; $45f5: $cb $4f
	call nz, $465e                                   ; $45f7: $c4 $5e $46
	call Call_00c_48d8                               ; $45fa: $cd $d8 $48
	ld   de, $cb3a                                   ; $45fd: $11 $3a $cb
	ld   bc, $0007                                   ; $4600: $01 $07 $00
	call MemCopy                                       ; $4603: $cd $a9 $09
	call Call_00c_4461                               ; $4606: $cd $61 $44
	call Call_00c_479e                               ; $4609: $cd $9e $47
	call Call_00c_47b5                               ; $460c: $cd $b5 $47
	call $487c                                       ; $460f: $cd $7c $48
	ret                                              ; $4612: $c9


jr_00c_4613:
	ld   a, [$cb2f]                                  ; $4613: $fa $2f $cb
	ld   b, $00                                      ; $4616: $06 $00
	ld   c, a                                        ; $4618: $4f
	ld   hl, $4658                                   ; $4619: $21 $58 $46
	add  hl, bc                                      ; $461c: $09
	add  hl, bc                                      ; $461d: $09
	ld   a, [hl]                                     ; $461e: $7e
	ld   [$cb2f], a                                  ; $461f: $ea $2f $cb
	ld   a, $21                                      ; $4622: $3e $21
	call PlaySoundEffect                                       ; $4624: $cd $df $1a
	ld   hl, $cb2b                                   ; $4627: $21 $2b $cb
	inc  [hl]                                        ; $462a: $34
	xor  a                                           ; $462b: $af
	ld   [$cb2c], a                                  ; $462c: $ea $2c $cb
	ld   a, $39                                      ; $462f: $3e $39
	ld   [$cb2d], a                                  ; $4631: $ea $2d $cb
	ret                                              ; $4634: $c9


jr_00c_4635:
	ld   a, [$cb2f]                                  ; $4635: $fa $2f $cb
	ld   b, $00                                      ; $4638: $06 $00
	ld   c, a                                        ; $463a: $4f
	ld   hl, $4658                                   ; $463b: $21 $58 $46
	add  hl, bc                                      ; $463e: $09
	add  hl, bc                                      ; $463f: $09
	inc  hl                                          ; $4640: $23
	ld   a, [hl]                                     ; $4641: $7e
	ld   [$cb2f], a                                  ; $4642: $ea $2f $cb
	ld   a, $21                                      ; $4645: $3e $21
	call PlaySoundEffect                                       ; $4647: $cd $df $1a
	ld   hl, $cb2b                                   ; $464a: $21 $2b $cb
	inc  [hl]                                        ; $464d: $34
	xor  a                                           ; $464e: $af
	ld   [$cb2c], a                                  ; $464f: $ea $2c $cb
	ld   a, $39                                      ; $4652: $3e $39
	ld   [$cb2d], a                                  ; $4654: $ea $2d $cb
	ret                                              ; $4657: $c9


	ld   bc, $0202                                   ; $4658: $01 $02 $02
	nop                                              ; $465b: $00
	nop                                              ; $465c: $00
	ld   bc, $3421                                   ; $465d: $01 $21 $34
	set  7, d                                        ; $4660: $cb $fa
	rrca                                             ; $4662: $0f
	jp   nz, $f0e6                                   ; $4663: $c2 $e6 $f0

	jr   nz, jr_00c_466d                             ; $4666: $20 $05

	ld   a, [hl]                                     ; $4668: $7e
	inc  a                                           ; $4669: $3c
	ret  z                                           ; $466a: $c8

	ld   [hl], a                                     ; $466b: $77
	ret                                              ; $466c: $c9


jr_00c_466d:
	xor  a                                           ; $466d: $af
	ld   [hl], a                                     ; $466e: $77
	ld   hl, $46de                                   ; $466f: $21 $de $46
	ld   a, [$b1b6]                                  ; $4672: $fa $b6 $b1
	swap a                                           ; $4675: $cb $37
	sla  a                                           ; $4677: $cb $27
	sla  a                                           ; $4679: $cb $27
	ld   b, $00                                      ; $467b: $06 $00
	ld   c, a                                        ; $467d: $4f
	add  hl, bc                                      ; $467e: $09
	ld   a, [wInGameButtonsHeld]                                  ; $467f: $fa $0f $c2
	and  $f0                                         ; $4682: $e6 $f0
	swap a                                           ; $4684: $cb $37
	sla  a                                           ; $4686: $cb $27
	sla  a                                           ; $4688: $cb $27
	ld   b, $00                                      ; $468a: $06 $00
	ld   c, a                                        ; $468c: $4f
	add  hl, bc                                      ; $468d: $09
	ld   a, [hl+]                                    ; $468e: $2a
	ld   c, a                                        ; $468f: $4f
	ld   a, [hl+]                                    ; $4690: $2a
	ld   b, a                                        ; $4691: $47
	ld   a, [hl+]                                    ; $4692: $2a
	ld   e, a                                        ; $4693: $5f
	ld   a, [hl+]                                    ; $4694: $2a
	ld   d, a                                        ; $4695: $57
	ld   a, b                                        ; $4696: $78
	or   c                                           ; $4697: $b1
	jr   z, jr_00c_46ba                              ; $4698: $28 $20

	ld   a, [$cb36]                                  ; $469a: $fa $36 $cb
	ld   l, a                                        ; $469d: $6f
	ld   a, [$cb37]                                  ; $469e: $fa $37 $cb
	ld   h, a                                        ; $46a1: $67
	add  hl, bc                                      ; $46a2: $09
	ld   a, h                                        ; $46a3: $7c
	cp   $a0                                         ; $46a4: $fe $a0
	jr   c, jr_00c_46b2                              ; $46a6: $38 $0a

	ld   hl, $0000                                   ; $46a8: $21 $00 $00
	bit  7, b                                        ; $46ab: $cb $78
	jr   nz, jr_00c_46b2                             ; $46ad: $20 $03

	ld   hl, $9fff                                   ; $46af: $21 $ff $9f

jr_00c_46b2:
	ld   a, l                                        ; $46b2: $7d
	ld   [$cb36], a                                  ; $46b3: $ea $36 $cb
	ld   a, h                                        ; $46b6: $7c
	ld   [$cb37], a                                  ; $46b7: $ea $37 $cb

jr_00c_46ba:
	ld   a, d                                        ; $46ba: $7a
	or   e                                           ; $46bb: $b3
	ret  z                                           ; $46bc: $c8

	ld   a, [$cb38]                                  ; $46bd: $fa $38 $cb
	ld   l, a                                        ; $46c0: $6f
	ld   a, [$cb39]                                  ; $46c1: $fa $39 $cb
	ld   h, a                                        ; $46c4: $67
	add  hl, de                                      ; $46c5: $19
	ld   a, h                                        ; $46c6: $7c
	cp   $90                                         ; $46c7: $fe $90
	jr   c, jr_00c_46d5                              ; $46c9: $38 $0a

	ld   hl, $0000                                   ; $46cb: $21 $00 $00
	bit  7, d                                        ; $46ce: $cb $7a
	jr   nz, jr_00c_46d5                             ; $46d0: $20 $03

	ld   hl, $8fff                                   ; $46d2: $21 $ff $8f

jr_00c_46d5:
	ld   a, l                                        ; $46d5: $7d
	ld   [$cb38], a                                  ; $46d6: $ea $38 $cb
	ld   a, h                                        ; $46d9: $7c
	ld   [$cb39], a                                  ; $46da: $ea $39 $cb
	ret                                              ; $46dd: $c9


	nop                                              ; $46de: $00
	nop                                              ; $46df: $00
	nop                                              ; $46e0: $00
	nop                                              ; $46e1: $00
	nop                                              ; $46e2: $00
	ld   bc, $0000                                   ; $46e3: $01 $00 $00
	nop                                              ; $46e6: $00
	rst  $38                                         ; $46e7: $ff
	nop                                              ; $46e8: $00
	nop                                              ; $46e9: $00
	nop                                              ; $46ea: $00
	nop                                              ; $46eb: $00
	nop                                              ; $46ec: $00
	nop                                              ; $46ed: $00
	nop                                              ; $46ee: $00
	nop                                              ; $46ef: $00
	nop                                              ; $46f0: $00
	rst  $38                                         ; $46f1: $ff
	or   l                                           ; $46f2: $b5
	nop                                              ; $46f3: $00
	ld   c, e                                        ; $46f4: $4b
	rst  $38                                         ; $46f5: $ff
	ld   c, e                                        ; $46f6: $4b
	rst  $38                                         ; $46f7: $ff
	ld   c, e                                        ; $46f8: $4b
	rst  $38                                         ; $46f9: $ff
	nop                                              ; $46fa: $00
	nop                                              ; $46fb: $00
	nop                                              ; $46fc: $00
	rst  $38                                         ; $46fd: $ff
	nop                                              ; $46fe: $00
	nop                                              ; $46ff: $00
	nop                                              ; $4700: $00
	ld   bc, $00b5                                   ; $4701: $01 $b5 $00
	or   l                                           ; $4704: $b5
	nop                                              ; $4705: $00
	ld   c, e                                        ; $4706: $4b
	rst  $38                                         ; $4707: $ff
	or   l                                           ; $4708: $b5
	nop                                              ; $4709: $00
	nop                                              ; $470a: $00
	nop                                              ; $470b: $00
	nop                                              ; $470c: $00
	ld   bc, $0000                                   ; $470d: $01 $00 $00
	nop                                              ; $4710: $00
	nop                                              ; $4711: $00
	nop                                              ; $4712: $00
	ld   bc, $0000                                   ; $4713: $01 $00 $00
	nop                                              ; $4716: $00
	rst  $38                                         ; $4717: $ff
	nop                                              ; $4718: $00
	nop                                              ; $4719: $00
	nop                                              ; $471a: $00
	nop                                              ; $471b: $00
	nop                                              ; $471c: $00
	nop                                              ; $471d: $00
	nop                                              ; $471e: $00
	nop                                              ; $471f: $00
	nop                                              ; $4720: $00
	nop                                              ; $4721: $00
	add  b                                           ; $4722: $80
	ld   bc, $0000                                   ; $4723: $01 $00 $00
	add  b                                           ; $4726: $80
	cp   $00                                         ; $4727: $fe $00
	nop                                              ; $4729: $00
	nop                                              ; $472a: $00
	nop                                              ; $472b: $00
	nop                                              ; $472c: $00
	nop                                              ; $472d: $00
	nop                                              ; $472e: $00
	nop                                              ; $472f: $00
	add  b                                           ; $4730: $80
	cp   $10                                         ; $4731: $fe $10
	ld   bc, $fef0                                   ; $4733: $01 $f0 $fe
	ldh  a, [$fe]                                    ; $4736: $f0 $fe
	ldh  a, [$fe]                                    ; $4738: $f0 $fe
	nop                                              ; $473a: $00
	nop                                              ; $473b: $00
	add  b                                           ; $473c: $80
	cp   $00                                         ; $473d: $fe $00
	nop                                              ; $473f: $00
	add  b                                           ; $4740: $80
	ld   bc, $0110                                   ; $4741: $01 $10 $01
	db   $10                                         ; $4744: $10
	ld   bc, $fef0                                   ; $4745: $01 $f0 $fe
	db   $10                                         ; $4748: $10
	ld   bc, $0000                                   ; $4749: $01 $00 $00
	add  b                                           ; $474c: $80
	ld   bc, $0000                                   ; $474d: $01 $00 $00
	nop                                              ; $4750: $00
	nop                                              ; $4751: $00
	add  b                                           ; $4752: $80
	ld   bc, $0000                                   ; $4753: $01 $00 $00
	add  b                                           ; $4756: $80
	cp   $00                                         ; $4757: $fe $00
	nop                                              ; $4759: $00
	nop                                              ; $475a: $00
	nop                                              ; $475b: $00
	nop                                              ; $475c: $00
	nop                                              ; $475d: $00
	nop                                              ; $475e: $00
	nop                                              ; $475f: $00
	nop                                              ; $4760: $00
	nop                                              ; $4761: $00
	nop                                              ; $4762: $00
	ld   [bc], a                                     ; $4763: $02
	nop                                              ; $4764: $00
	nop                                              ; $4765: $00
	nop                                              ; $4766: $00
	cp   $00                                         ; $4767: $fe $00
	nop                                              ; $4769: $00
	nop                                              ; $476a: $00
	nop                                              ; $476b: $00
	nop                                              ; $476c: $00
	nop                                              ; $476d: $00
	nop                                              ; $476e: $00
	nop                                              ; $476f: $00
	nop                                              ; $4770: $00
	cp   $6a                                         ; $4771: $fe $6a
	ld   bc, $fe96                                   ; $4773: $01 $96 $fe
	sub  [hl]                                        ; $4776: $96
	cp   $96                                         ; $4777: $fe $96
	cp   $00                                         ; $4779: $fe $00
	nop                                              ; $477b: $00
	nop                                              ; $477c: $00
	cp   $00                                         ; $477d: $fe $00
	nop                                              ; $477f: $00
	nop                                              ; $4780: $00
	ld   [bc], a                                     ; $4781: $02
	ld   l, d                                        ; $4782: $6a
	ld   bc, $016a                                   ; $4783: $01 $6a $01
	sub  [hl]                                        ; $4786: $96
	cp   $6a                                         ; $4787: $fe $6a
	ld   bc, $0000                                   ; $4789: $01 $00 $00
	nop                                              ; $478c: $00
	ld   [bc], a                                     ; $478d: $02
	nop                                              ; $478e: $00
	nop                                              ; $478f: $00
	nop                                              ; $4790: $00
	nop                                              ; $4791: $00
	nop                                              ; $4792: $00
	ld   [bc], a                                     ; $4793: $02
	nop                                              ; $4794: $00
	nop                                              ; $4795: $00
	nop                                              ; $4796: $00
	cp   $00                                         ; $4797: $fe $00
	nop                                              ; $4799: $00
	nop                                              ; $479a: $00
	nop                                              ; $479b: $00
	nop                                              ; $479c: $00
	nop                                              ; $479d: $00

Call_00c_479e:
	ld   a, [$cb3c]                                  ; $479e: $fa $3c $cb
	ld   b, a                                        ; $47a1: $47
	ld   c, $00                                      ; $47a2: $0e $00
	ld   hl, $4000                                   ; $47a4: $21 $00 $40
	ld   a, $8c                                      ; $47a7: $3e $8c
	add  hl, bc                                      ; $47a9: $09
	ld   c, $01                                      ; $47aa: $0e $01
	ld   de, $81c0                                   ; $47ac: $11 $c0 $81
	ld   b, $10                                      ; $47af: $06 $10
	call EnqueueHDMATransfer                                       ; $47b1: $cd $7c $02
	ret                                              ; $47b4: $c9


Call_00c_47b5:
	ld   a, [$cb3a]                                  ; $47b5: $fa $3a $cb
	ld   b, $00                                      ; $47b8: $06 $00
	ld   c, a                                        ; $47ba: $4f
	ld   hl, $db80                                   ; $47bb: $21 $80 $db
	add  hl, bc                                      ; $47be: $09
	add  hl, bc                                      ; $47bf: $09
	add  hl, bc                                      ; $47c0: $09
	ld   b, $00                                      ; $47c1: $06 $00
	ld   c, [hl]                                     ; $47c3: $4e
	bit  7, c                                        ; $47c4: $cb $79
	jr   nz, jr_00c_47cf                             ; $47c6: $20 $07

	push hl                                          ; $47c8: $e5
	ld   hl, $dc40                                   ; $47c9: $21 $40 $dc
	add  hl, bc                                      ; $47cc: $09
	ld   b, [hl]                                     ; $47cd: $46
	pop  hl                                          ; $47ce: $e1

jr_00c_47cf:
	ld   a, [$cb31]                                  ; $47cf: $fa $31 $cb
	cp   b                                           ; $47d2: $b8
	ret  z                                           ; $47d3: $c8

	ld   a, [hl]                                     ; $47d4: $7e
	push af                                          ; $47d5: $f5
	ld   a, [$cb30]                                  ; $47d6: $fa $30 $cb
	call StopAnimatingAnimatedSpriteSpec                                       ; $47d9: $cd $06 $30
	ld   a, [$cb31]                                  ; $47dc: $fa $31 $cb
	bit  7, a                                        ; $47df: $cb $7f
	call z, StartAnimatingAnimatedSpriteSpec                                    ; $47e1: $cc $14 $30
	ld   a, $ff                                      ; $47e4: $3e $ff
	ld   [$cb31], a                                  ; $47e6: $ea $31 $cb
	pop  af                                          ; $47e9: $f1
	bit  7, a                                        ; $47ea: $cb $7f
	ret  nz                                          ; $47ec: $c0

	push af                                          ; $47ed: $f5
	ld   h, a                                        ; $47ee: $67
	call Call_00c_4443                               ; $47ef: $cd $43 $44
	or   a                                           ; $47f2: $b7
	ld   a, h                                        ; $47f3: $7c
	jr   nz, jr_00c_47f7                             ; $47f4: $20 $01

	xor  a                                           ; $47f6: $af

jr_00c_47f7:
	ld   b, a                                        ; $47f7: $47
	ld   c, $00                                      ; $47f8: $0e $00
	ld   hl, $7000                                   ; $47fa: $21 $00 $70
	add  hl, bc                                      ; $47fd: $09
	ld   de, $8000                                   ; $47fe: $11 $00 $80
	ld   a, $8c                                      ; $4801: $3e $8c
	ld   bc, $1000                                   ; $4803: $01 $00 $10
	call EnqueueHDMATransfer                                       ; $4806: $cd $7c $02
	pop  af                                          ; $4809: $f1
	push af                                          ; $480a: $f5
	ld   b, $00                                      ; $480b: $06 $00
	ld   c, a                                        ; $480d: $4f
	ld   hl, $dc40                                   ; $480e: $21 $40 $dc
	add  hl, bc                                      ; $4811: $09
	ld   a, [hl]                                     ; $4812: $7e
	ld   [$cb31], a                                  ; $4813: $ea $31 $cb
	call StopAnimatingAnimatedSpriteSpec                                       ; $4816: $cd $06 $30
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $4819: $cd $76 $30
	inc  hl                                          ; $481c: $23
	inc  hl                                          ; $481d: $23
	ld   a, [hl+]                                    ; $481e: $2a
	ld   b, a                                        ; $481f: $47
	ld   c, [hl]                                     ; $4820: $4e
	ld   a, [$cb30]                                  ; $4821: $fa $30 $cb
	call StartAnimatingAnimatedSpriteSpec                                       ; $4824: $cd $14 $30
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $4827: $cd $76 $30
	push af                                          ; $482a: $f5
	ld   a, $2f                                      ; $482b: $3e $2f
	ld   [wFarCallAddr], a                                  ; $482d: $ea $98 $c2
	ld   a, $41                                      ; $4830: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $4832: $ea $99 $c2
	ld   a, $01                                      ; $4835: $3e $01
	ld   [wFarCallBank], a                                  ; $4837: $ea $9a $c2
	pop  af                                          ; $483a: $f1
	call FarCall                                       ; $483b: $cd $62 $09
	pop  af                                          ; $483e: $f1
	ld   d, a                                        ; $483f: $57
	call Call_00c_4443                               ; $4840: $cd $43 $44
	or   a                                           ; $4843: $b7
	ld   a, d                                        ; $4844: $7a
	jr   nz, jr_00c_4848                             ; $4845: $20 $01

	xor  a                                           ; $4847: $af

jr_00c_4848:
	ld   d, h                                        ; $4848: $54
	ld   e, l                                        ; $4849: $5d
	ld   b, $00                                      ; $484a: $06 $00
	ld   c, a                                        ; $484c: $4f
	ld   hl, $486c                                   ; $484d: $21 $6c $48
	add  hl, bc                                      ; $4850: $09
	ld   a, [hl]                                     ; $4851: $7e
	ld   h, d                                        ; $4852: $62
	ld   l, e                                        ; $4853: $6b
	ld   de, $7762                                   ; $4854: $11 $62 $77
	push af                                          ; $4857: $f5
	ld   a, $1c                                      ; $4858: $3e $1c
	ld   [wFarCallAddr], a                                  ; $485a: $ea $98 $c2
	ld   a, $41                                      ; $485d: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $485f: $ea $99 $c2
	ld   a, $01                                      ; $4862: $3e $01
	ld   [wFarCallBank], a                                  ; $4864: $ea $9a $c2
	pop  af                                          ; $4867: $f1
	call FarCall                                       ; $4868: $cd $62 $09
	ret                                              ; $486b: $c9


	inc  b                                           ; $486c: $04
	dec  b                                           ; $486d: $05
	ld   b, $07                                      ; $486e: $06 $07
	rlca                                             ; $4870: $07
	ld   b, $06                                      ; $4871: $06 $06
	inc  b                                           ; $4873: $04
	inc  b                                           ; $4874: $04
	ld   b, $06                                      ; $4875: $06 $06
	ld   b, $06                                      ; $4877: $06 $06
	ld   b, $06                                      ; $4879: $06 $06
	ld   b, $fa                                      ; $487b: $06 $fa
	db   $10                                         ; $487d: $10
	jp   nz, $47cb                                   ; $487e: $c2 $cb $47

	ret  z                                           ; $4881: $c8

	ld   a, [$cb3a]                                  ; $4882: $fa $3a $cb
	or   a                                           ; $4885: $b7
	ret  z                                           ; $4886: $c8

	ld   a, [$cb3b]                                  ; $4887: $fa $3b $cb
	or   a                                           ; $488a: $b7
	jr   z, jr_00c_48a5                              ; $488b: $28 $18

	and  $3f                                         ; $488d: $e6 $3f
	ld   [$cb2f], a                                  ; $488f: $ea $2f $cb
	ld   hl, $cb2b                                   ; $4892: $21 $2b $cb
	inc  [hl]                                        ; $4895: $34
	xor  a                                           ; $4896: $af
	ld   [$cb2c], a                                  ; $4897: $ea $2c $cb
	ld   a, $39                                      ; $489a: $3e $39
	ld   [$cb2d], a                                  ; $489c: $ea $2d $cb
	ld   a, $21                                      ; $489f: $3e $21
	call PlaySoundEffect                                       ; $48a1: $cd $df $1a
	ret                                              ; $48a4: $c9


jr_00c_48a5:
	ld   a, [$cb3a]                                  ; $48a5: $fa $3a $cb
	ld   [$cb22], a                                  ; $48a8: $ea $22 $cb
	ld   b, $00                                      ; $48ab: $06 $00
	ld   c, a                                        ; $48ad: $4f
	ld   hl, $db80                                   ; $48ae: $21 $80 $db
	add  hl, bc                                      ; $48b1: $09
	add  hl, bc                                      ; $48b2: $09
	add  hl, bc                                      ; $48b3: $09
	ld   a, [hl+]                                    ; $48b4: $2a
	bit  7, a                                        ; $48b5: $cb $7f
	ret  nz                                          ; $48b7: $c0

	ld   [$cb23], a                                  ; $48b8: $ea $23 $cb
	ld   a, [hl+]                                    ; $48bb: $2a
	ld   [$cb24], a                                  ; $48bc: $ea $24 $cb
	ld   a, [hl]                                     ; $48bf: $7e
	and  $03                                         ; $48c0: $e6 $03
	ld   [$cb25], a                                  ; $48c2: $ea $25 $cb
	ld   hl, $cb2b                                   ; $48c5: $21 $2b $cb
	inc  [hl]                                        ; $48c8: $34
	xor  a                                           ; $48c9: $af
	ld   [$cb2c], a                                  ; $48ca: $ea $2c $cb
	ld   a, $3b                                      ; $48cd: $3e $3b
	ld   [$cb2d], a                                  ; $48cf: $ea $2d $cb
	ld   a, $21                                      ; $48d2: $3e $21
	call PlaySoundEffect                                       ; $48d4: $cd $df $1a
	ret                                              ; $48d7: $c9


Call_00c_48d8:
	ld   a, [$cb2f]                                  ; $48d8: $fa $2f $cb
	sla  a                                           ; $48db: $cb $27
	ld   b, $00                                      ; $48dd: $06 $00
	ld   c, a                                        ; $48df: $4f
	ld   hl, $4ba0                                   ; $48e0: $21 $a0 $4b
	add  hl, bc                                      ; $48e3: $09
	ld   a, [hl+]                                    ; $48e4: $2a
	ld   h, [hl]                                     ; $48e5: $66
	ld   l, a                                        ; $48e6: $6f
	ld   a, [$cb37]                                  ; $48e7: $fa $37 $cb
	ld   b, a                                        ; $48ea: $47
	ld   a, [$cb39]                                  ; $48eb: $fa $39 $cb
	ld   c, a                                        ; $48ee: $4f

jr_00c_48ef:
	push hl                                          ; $48ef: $e5
	ld   a, [hl+]                                    ; $48f0: $2a
	or   a                                           ; $48f1: $b7
	jr   z, jr_00c_4914                              ; $48f2: $28 $20

	inc  hl                                          ; $48f4: $23
	inc  hl                                          ; $48f5: $23
	ld   a, [hl+]                                    ; $48f6: $2a
	ld   e, a                                        ; $48f7: $5f
	ld   a, b                                        ; $48f8: $78
	cp   e                                           ; $48f9: $bb
	jr   c, jr_00c_490a                              ; $48fa: $38 $0e

	ld   a, [hl+]                                    ; $48fc: $2a
	cp   b                                           ; $48fd: $b8
	jr   c, jr_00c_490a                              ; $48fe: $38 $0a

	ld   a, [hl+]                                    ; $4900: $2a
	ld   e, a                                        ; $4901: $5f
	ld   a, c                                        ; $4902: $79
	cp   e                                           ; $4903: $bb
	jr   c, jr_00c_490a                              ; $4904: $38 $04

	ld   a, [hl+]                                    ; $4906: $2a
	cp   c                                           ; $4907: $b9
	jr   nc, jr_00c_4911                             ; $4908: $30 $07

jr_00c_490a:
	pop  hl                                          ; $490a: $e1
	ld   de, $0007                                   ; $490b: $11 $07 $00
	add  hl, de                                      ; $490e: $19
	jr   jr_00c_48ef                                 ; $490f: $18 $de

jr_00c_4911:
	pop  hl                                          ; $4911: $e1
	ld   a, [hl]                                     ; $4912: $7e
	ret                                              ; $4913: $c9


jr_00c_4914:
	pop  hl                                          ; $4914: $e1
	xor  a                                           ; $4915: $af
	ret                                              ; $4916: $c9


	call Call_00c_49b9                               ; $4917: $cd $b9 $49
	ld   a, [$cb32]                                  ; $491a: $fa $32 $cb
	or   a                                           ; $491d: $b7
	jr   nz, jr_00c_492e                             ; $491e: $20 $0e

	ld   hl, wIE                                   ; $4920: $21 $0d $c2
	res  1, [hl]                                     ; $4923: $cb $8e
	ld   hl, $cb2b                                   ; $4925: $21 $2b $cb
	inc  [hl]                                        ; $4928: $34
	xor  a                                           ; $4929: $af
	ld   [$cb2c], a                                  ; $492a: $ea $2c $cb
	ret                                              ; $492d: $c9


jr_00c_492e:
	inc  a                                           ; $492e: $3c
	res  0, a                                        ; $492f: $cb $87
	ld   [$cb32], a                                  ; $4931: $ea $32 $cb
	ret                                              ; $4934: $c9


	ld   a, [$cb2c]                                  ; $4935: $fa $2c $cb
	or   a                                           ; $4938: $b7
	jr   nz, jr_00c_4953                             ; $4939: $20 $18

	ld   b, $00                                      ; $493b: $06 $00
	ld   hl, wBGPalettes                                   ; $493d: $21 $de $c2
	ld   c, $01                                      ; $4940: $0e $01
	ld   de, $7000                                   ; $4942: $11 $00 $70
	xor  a                                           ; $4945: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $4946: $ea $62 $c3
	ld   a, $40                                      ; $4949: $3e $40
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $494b: $ea $63 $c3
	ld   a, $03                                      ; $494e: $3e $03
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $4950: $cd $48 $07

jr_00c_4953:
	ld   hl, $cb2c                                   ; $4953: $21 $2c $cb
	ld   a, [hl]                                     ; $4956: $7e
	inc  [hl]                                        ; $4957: $34
	cp   $1f                                         ; $4958: $fe $1f
	jr   nc, jr_00c_4965                             ; $495a: $30 $09

	and  $03                                         ; $495c: $e6 $03
	ret  nz                                          ; $495e: $c0

	ld   bc, $0040                                   ; $495f: $01 $40 $00
	jp   FadePalettesAndSetRangeToUpdate                                       ; $4962: $c3 $32 $08


jr_00c_4965:
	ld   a, BANK(Palettes_AllWhite)                                      ; $4965: $3e $01
	ld   hl, Palettes_AllWhite                                   ; $4967: $21 $00 $70
	ld   de, wBGPalettes                                   ; $496a: $11 $de $c2
	ld   bc, $0080                                   ; $496d: $01 $80 $00
	call FarMemCopy                                       ; $4970: $cd $b2 $09
	ld   bc, $003f                                   ; $4973: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $4976: $cd $aa $04
	ld   hl, $cb2b                                   ; $4979: $21 $2b $cb
	inc  [hl]                                        ; $497c: $34
	xor  a                                           ; $497d: $af
	ld   [$cb2c], a                                  ; $497e: $ea $2c $cb
	ret                                              ; $4981: $c9


	ld   a, [$cb2d]                                  ; $4982: $fa $2d $cb
	cp   $3b                                         ; $4985: $fe $3b
	jr   z, jr_00c_4991                              ; $4987: $28 $08

	ld   [wGameState], a                                  ; $4989: $ea $a0 $c2
	xor  a                                           ; $498c: $af
	ld   [wGameSubstate], a                                  ; $498d: $ea $a1 $c2
	ret                                              ; $4990: $c9


jr_00c_4991:
	ld   h, $38                                      ; $4991: $26 $38
	ld   l, $00                                      ; $4993: $2e $00
	ld   a, [$cb24]                                  ; $4995: $fa $24 $cb
	ld   c, a                                        ; $4998: $4f
	ld   a, [$cb25]                                  ; $4999: $fa $25 $cb
	ld   b, a                                        ; $499c: $47
	ld   a, [$cb22]                                  ; $499d: $fa $22 $cb
	ld   d, a                                        ; $49a0: $57
	ld   a, [$c653]                                  ; $49a1: $fa $53 $c6
	push af                                          ; $49a4: $f5
	ld   a, $20                                      ; $49a5: $3e $20
	ld   [wFarCallAddr], a                                  ; $49a7: $ea $98 $c2
	ld   a, $48                                      ; $49aa: $3e $48
	ld   [wFarCallAddr+1], a                                  ; $49ac: $ea $99 $c2
	ld   a, $09                                      ; $49af: $3e $09
	ld   [wFarCallBank], a                                  ; $49b1: $ea $9a $c2
	pop  af                                          ; $49b4: $f1
	call FarCall                                       ; $49b5: $cd $62 $09
	ret                                              ; $49b8: $c9


Call_00c_49b9:
	ld   a, [$cb32]                                  ; $49b9: $fa $32 $cb
	ld   b, $00                                      ; $49bc: $06 $00
	ld   c, a                                        ; $49be: $4f
	sla  c                                           ; $49bf: $cb $21
	ld   hl, $49c9                                   ; $49c1: $21 $c9 $49
	add  hl, bc                                      ; $49c4: $09
	ld   a, [hl+]                                    ; $49c5: $2a
	ld   h, [hl]                                     ; $49c6: $66
	ld   l, a                                        ; $49c7: $6f
	jp   hl                                          ; $49c8: $e9


	db   $d3                                         ; $49c9: $d3
	ld   c, c                                        ; $49ca: $49
	ld   h, $4a                                      ; $49cb: $26 $4a
	ld   d, d                                        ; $49cd: $52
	ld   c, d                                        ; $49ce: $4a
	add  c                                           ; $49cf: $81
	ld   c, d                                        ; $49d0: $4a
	and  b                                           ; $49d1: $a0
	ld   c, d                                        ; $49d2: $4a
	ld   a, [$cb34]                                  ; $49d3: $fa $34 $cb
	cp   $69                                         ; $49d6: $fe $69
	ret  c                                           ; $49d8: $d8

	ld   a, [$cb39]                                  ; $49d9: $fa $39 $cb
	cp   $60                                         ; $49dc: $fe $60
	jr   c, jr_00c_4a03                              ; $49de: $38 $23

	ld   a, $01                                      ; $49e0: $3e $01
	ld   [$cb32], a                                  ; $49e2: $ea $32 $cb
	ld   a, $01                                      ; $49e5: $3e $01
	ld   [$cb33], a                                  ; $49e7: $ea $33 $cb
	ld   a, $fe                                      ; $49ea: $3e $fe
	ld   [wSCY], a                                  ; $49ec: $ea $08 $c2
	xor  a                                           ; $49ef: $af
	ld   [$c20b], a                                  ; $49f0: $ea $0b $c2
	ld   hl, $c20c                                   ; $49f3: $21 $0c $c2
	set  6, [hl]                                     ; $49f6: $cb $f6
	ld   hl, wIE                                   ; $49f8: $21 $0d $c2
	set  1, [hl]                                     ; $49fb: $cb $ce
	ld   a, $06                                      ; $49fd: $3e $06
	ld   [wLCDCIntFuncIdx], a                                  ; $49ff: $ea $8d $c2
	ret                                              ; $4a02: $c9


jr_00c_4a03:
	ld   a, $03                                      ; $4a03: $3e $03
	ld   [$cb32], a                                  ; $4a05: $ea $32 $cb
	ld   a, $01                                      ; $4a08: $3e $01
	ld   [$cb33], a                                  ; $4a0a: $ea $33 $cb
	xor  a                                           ; $4a0d: $af
	ld   [wSCY], a                                  ; $4a0e: $ea $08 $c2
	ld   a, $8d                                      ; $4a11: $3e $8d
	ld   [$c20b], a                                  ; $4a13: $ea $0b $c2
	ld   hl, $c20c                                   ; $4a16: $21 $0c $c2
	set  6, [hl]                                     ; $4a19: $cb $f6
	ld   hl, wIE                                   ; $4a1b: $21 $0d $c2
	set  1, [hl]                                     ; $4a1e: $cb $ce
	ld   a, $07                                      ; $4a20: $3e $07
	ld   [wLCDCIntFuncIdx], a                                  ; $4a22: $ea $8d $c2
	ret                                              ; $4a25: $c9


	ld   a, [$cb34]                                  ; $4a26: $fa $34 $cb
	or   a                                           ; $4a29: $b7
	jr   z, jr_00c_4a33                              ; $4a2a: $28 $07

	ld   a, [$cb39]                                  ; $4a2c: $fa $39 $cb
	cp   $30                                         ; $4a2f: $fe $30
	jr   nc, jr_00c_4a38                             ; $4a31: $30 $05

jr_00c_4a33:
	ld   hl, $cb32                                   ; $4a33: $21 $32 $cb
	inc  [hl]                                        ; $4a36: $34
	ret                                              ; $4a37: $c9


jr_00c_4a38:
	ld   hl, $cb33                                   ; $4a38: $21 $33 $cb
	ld   a, [hl]                                     ; $4a3b: $7e
	cp   $0f                                         ; $4a3c: $fe $0f
	ret  nc                                          ; $4a3e: $d0

	inc  a                                           ; $4a3f: $3c
	sla  a                                           ; $4a40: $cb $27
	dec  a                                           ; $4a42: $3d
	ld   [hl], a                                     ; $4a43: $77
	ld   a, $ff                                      ; $4a44: $3e $ff
	sub  [hl]                                        ; $4a46: $96
	ld   [wSCY], a                                  ; $4a47: $ea $08 $c2
	ld   hl, wLCDC                                   ; $4a4a: $21 $03 $c2
	res  1, [hl]                                     ; $4a4d: $cb $8e
	set  4, [hl]                                     ; $4a4f: $cb $e6
	ret                                              ; $4a51: $c9


	ld   hl, $cb33                                   ; $4a52: $21 $33 $cb
	ld   a, [hl]                                     ; $4a55: $7e
	cp   $01                                         ; $4a56: $fe $01
	jr   nz, jr_00c_4a6e                             ; $4a58: $20 $14

	ld   hl, wIE                                   ; $4a5a: $21 $0d $c2
	res  1, [hl]                                     ; $4a5d: $cb $8e
	ld   hl, wLCDC                                   ; $4a5f: $21 $03 $c2
	set  1, [hl]                                     ; $4a62: $cb $ce
	res  4, [hl]                                     ; $4a64: $cb $a6
	xor  a                                           ; $4a66: $af
	ld   [wSCY], a                                  ; $4a67: $ea $08 $c2
	ld   [$cb32], a                                  ; $4a6a: $ea $32 $cb
	ret                                              ; $4a6d: $c9


jr_00c_4a6e:
	inc  a                                           ; $4a6e: $3c
	srl  a                                           ; $4a6f: $cb $3f
	dec  a                                           ; $4a71: $3d
	ld   [hl], a                                     ; $4a72: $77
	ld   a, $ff                                      ; $4a73: $3e $ff
	sub  [hl]                                        ; $4a75: $96
	ld   [wSCY], a                                  ; $4a76: $ea $08 $c2
	ld   hl, wLCDC                                   ; $4a79: $21 $03 $c2
	res  1, [hl]                                     ; $4a7c: $cb $8e
	set  4, [hl]                                     ; $4a7e: $cb $e6
	ret                                              ; $4a80: $c9


	ld   a, [$cb34]                                  ; $4a81: $fa $34 $cb
	or   a                                           ; $4a84: $b7
	jr   z, jr_00c_4a8e                              ; $4a85: $28 $07

	ld   a, [$cb39]                                  ; $4a87: $fa $39 $cb
	cp   $60                                         ; $4a8a: $fe $60
	jr   c, jr_00c_4a93                              ; $4a8c: $38 $05

jr_00c_4a8e:
	ld   hl, $cb32                                   ; $4a8e: $21 $32 $cb
	inc  [hl]                                        ; $4a91: $34
	ret                                              ; $4a92: $c9


jr_00c_4a93:
	ld   hl, $cb33                                   ; $4a93: $21 $33 $cb
	ld   a, [hl]                                     ; $4a96: $7e
	cp   $0f                                         ; $4a97: $fe $0f
	ret  nc                                          ; $4a99: $d0

	inc  a                                           ; $4a9a: $3c
	sla  a                                           ; $4a9b: $cb $27
	dec  a                                           ; $4a9d: $3d
	ld   [hl], a                                     ; $4a9e: $77
	ret                                              ; $4a9f: $c9


	ld   hl, $cb33                                   ; $4aa0: $21 $33 $cb
	ld   a, [hl]                                     ; $4aa3: $7e
	cp   $01                                         ; $4aa4: $fe $01
	jr   nz, jr_00c_4ab5                             ; $4aa6: $20 $0d

	ld   hl, wIE                                   ; $4aa8: $21 $0d $c2
	res  1, [hl]                                     ; $4aab: $cb $8e
	xor  a                                           ; $4aad: $af
	ld   [wSCY], a                                  ; $4aae: $ea $08 $c2
	ld   [$cb32], a                                  ; $4ab1: $ea $32 $cb
	ret                                              ; $4ab4: $c9


jr_00c_4ab5:
	inc  a                                           ; $4ab5: $3c
	srl  a                                           ; $4ab6: $cb $3f
	dec  a                                           ; $4ab8: $3d
	ld   [hl], a                                     ; $4ab9: $77
	ret                                              ; $4aba: $c9


LCDCFunc06::
	ld   hl, $c20b                                   ; $4abb: $21 $0b $c2
	ldh  a, [rLY]                                    ; $4abe: $f0 $44
	cp   [hl]                                        ; $4ac0: $be
	jp   nz, LCDCInterruptHandler.return                                   ; $4ac1: $c2 $4a $04

	ld   hl, $cb33                                   ; $4ac4: $21 $33 $cb

jr_00c_4ac7:
	ldh  a, [rLY]                                    ; $4ac7: $f0 $44
	cp   [hl]                                        ; $4ac9: $be
	jr   c, jr_00c_4ac7                              ; $4aca: $38 $fb

jr_00c_4acc:
	ldh  a, [rSTAT]                                  ; $4acc: $f0 $41
	and  $03                                         ; $4ace: $e6 $03
	jr   z, jr_00c_4acc                              ; $4ad0: $28 $fa

jr_00c_4ad2:
	ldh  a, [rSTAT]                                  ; $4ad2: $f0 $41
	and  $03                                         ; $4ad4: $e6 $03
	jr   nz, jr_00c_4ad2                             ; $4ad6: $20 $fa

	xor  a                                           ; $4ad8: $af
	ldh  [rSCY], a                                   ; $4ad9: $e0 $42
	ld   a, [wLCDC]                                  ; $4adb: $fa $03 $c2
	set  1, a                                        ; $4ade: $cb $cf
	res  4, a                                        ; $4ae0: $cb $a7
	ldh  [rLCDC], a                                  ; $4ae2: $e0 $40
	jp   LCDCInterruptHandler.return                                       ; $4ae4: $c3 $4a $04


LCDCFunc07::
	ld   hl, $c20b                                   ; $4ae7: $21 $0b $c2
	ldh  a, [rLY]                                    ; $4aea: $f0 $44
	cp   [hl]                                        ; $4aec: $be
	jp   nz, LCDCInterruptHandler.return                                   ; $4aed: $c2 $4a $04

	ld   hl, $cb33                                   ; $4af0: $21 $33 $cb
	ld   a, $61                                      ; $4af3: $3e $61
	add  [hl]                                        ; $4af5: $86
	ld   b, a                                        ; $4af6: $47
	ld   a, $8e                                      ; $4af7: $3e $8e
	sub  [hl]                                        ; $4af9: $96
	ld   c, a                                        ; $4afa: $4f

jr_00c_4afb:
	ldh  a, [rSTAT]                                  ; $4afb: $f0 $41
	and  $03                                         ; $4afd: $e6 $03
	jr   z, jr_00c_4afb                              ; $4aff: $28 $fa

jr_00c_4b01:
	ldh  a, [rSTAT]                                  ; $4b01: $f0 $41
	and  $03                                         ; $4b03: $e6 $03
	jr   nz, jr_00c_4b01                             ; $4b05: $20 $fa

	ld   a, b                                        ; $4b07: $78
	ldh  [rSCY], a                                   ; $4b08: $e0 $42
	ld   a, c                                        ; $4b0a: $79
	ld   [$c20b], a                                  ; $4b0b: $ea $0b $c2
	ld   a, [wLCDC]                                  ; $4b0e: $fa $03 $c2
	res  1, a                                        ; $4b11: $cb $8f
	set  4, a                                        ; $4b13: $cb $e7
	ldh  [rLCDC], a                                  ; $4b15: $e0 $40
	jp   LCDCInterruptHandler.return                                       ; $4b17: $c3 $4a $04


Call_00c_4b1a:
	swap a                                           ; $4b1a: $cb $37
	ld   b, $00                                      ; $4b1c: $06 $00
	ld   c, a                                        ; $4b1e: $4f
	ld   hl, $4b40                                   ; $4b1f: $21 $40 $4b
	add  hl, bc                                      ; $4b22: $09
	push af                                          ; $4b23: $f5
	ld   a, $3e                                      ; $4b24: $3e $3e
	ld   [wFarCallAddr], a                                  ; $4b26: $ea $98 $c2
	ld   a, $45                                      ; $4b29: $3e $45
	ld   [wFarCallAddr+1], a                                  ; $4b2b: $ea $99 $c2
	ld   a, $09                                      ; $4b2e: $3e $09
	ld   [wFarCallBank], a                                  ; $4b30: $ea $9a $c2
	pop  af                                          ; $4b33: $f1
	call FarCall                                       ; $4b34: $cd $62 $09
	jr   c, jr_00c_4b3d                              ; $4b37: $38 $04

	ld   bc, $0030                                   ; $4b39: $01 $30 $00
	add  hl, bc                                      ; $4b3c: $09

jr_00c_4b3d:
	ld   a, $0c                                      ; $4b3d: $3e $0c
	ret                                              ; $4b3f: $c9


	ld   d, b                                        ; $4b40: $50
	ld   e, d                                        ; $4b41: $5a
	adc  [hl]                                        ; $4b42: $8e
	ld   d, b                                        ; $4b43: $50
	ld   h, c                                        ; $4b44: $61
	adc  a                                           ; $4b45: $8f
	and  b                                           ; $4b46: $a0
	ld   a, a                                        ; $4b47: $7f
	adc  a                                           ; $4b48: $8f
	sub  b                                           ; $4b49: $90
	halt                                             ; $4b4a: $76
	adc  a                                           ; $4b4b: $8f
	nop                                              ; $4b4c: $00
	nop                                              ; $4b4d: $00
	nop                                              ; $4b4e: $00
	nop                                              ; $4b4f: $00
	nop                                              ; $4b50: $00
	ld   b, b                                        ; $4b51: $40
	adc  [hl]                                        ; $4b52: $8e
	sub  b                                           ; $4b53: $90
	ld   e, e                                        ; $4b54: $5b
	adc  a                                           ; $4b55: $8f
	ret  nc                                          ; $4b56: $d0

	ld   c, h                                        ; $4b57: $4c
	sub  b                                           ; $4b58: $90
	ld   h, b                                        ; $4b59: $60
	ld   a, c                                        ; $4b5a: $79
	adc  a                                           ; $4b5b: $8f
	nop                                              ; $4b5c: $00
	nop                                              ; $4b5d: $00
	nop                                              ; $4b5e: $00
	nop                                              ; $4b5f: $00
	ld   h, b                                        ; $4b60: $60
	ld   [hl], c                                     ; $4b61: $71
	adc  [hl]                                        ; $4b62: $8e
	jr   nc, @+$6e                                   ; $4b63: $30 $6c

	adc  a                                           ; $4b65: $8f
	db   $10                                         ; $4b66: $10
	ld   c, l                                        ; $4b67: $4d
	sub  b                                           ; $4b68: $90
	jr   nc, jr_00c_4be7                             ; $4b69: $30 $7c

	adc  a                                           ; $4b6b: $8f
	nop                                              ; $4b6c: $00
	nop                                              ; $4b6d: $00
	nop                                              ; $4b6e: $00
	nop                                              ; $4b6f: $00
	jr   nc, jr_00c_4bbf                             ; $4b70: $30 $4d

	adc  [hl]                                        ; $4b72: $8e
	ldh  a, [$66]                                    ; $4b73: $f0 $66
	adc  a                                           ; $4b75: $8f
	ld   d, b                                        ; $4b76: $50
	ld   c, l                                        ; $4b77: $4d
	sub  b                                           ; $4b78: $90
	nop                                              ; $4b79: $00
	ld   b, b                                        ; $4b7a: $40
	sub  b                                           ; $4b7b: $90
	nop                                              ; $4b7c: $00
	nop                                              ; $4b7d: $00
	nop                                              ; $4b7e: $00
	nop                                              ; $4b7f: $00
	nop                                              ; $4b80: $00
	ld   h, b                                        ; $4b81: $60
	adc  l                                           ; $4b82: $8d
	ret  nc                                          ; $4b83: $d0

	ld   d, l                                        ; $4b84: $55
	adc  a                                           ; $4b85: $8f
	sub  b                                           ; $4b86: $90
	ld   c, l                                        ; $4b87: $4d
	sub  b                                           ; $4b88: $90
	ret  nc                                          ; $4b89: $d0

	ld   b, d                                        ; $4b8a: $42
	sub  b                                           ; $4b8b: $90
	nop                                              ; $4b8c: $00
	nop                                              ; $4b8d: $00
	nop                                              ; $4b8e: $00
	nop                                              ; $4b8f: $00
	ldh  a, [$66]                                    ; $4b90: $f0 $66
	adc  [hl]                                        ; $4b92: $8e
	ld   [hl], b                                     ; $4b93: $70
	ld   [hl], c                                     ; $4b94: $71
	adc  a                                           ; $4b95: $8f
	ret  nc                                          ; $4b96: $d0

	ld   c, l                                        ; $4b97: $4d
	sub  b                                           ; $4b98: $90
	and  b                                           ; $4b99: $a0
	ld   b, l                                        ; $4b9a: $45
	sub  b                                           ; $4b9b: $90
	nop                                              ; $4b9c: $00
	nop                                              ; $4b9d: $00
	nop                                              ; $4b9e: $00
	nop                                              ; $4b9f: $00
	and  [hl]                                        ; $4ba0: $a6
	ld   c, e                                        ; $4ba1: $4b
	and  l                                           ; $4ba2: $a5
	ld   c, h                                        ; $4ba3: $4c
	ld   b, d                                        ; $4ba4: $42
	ld   c, l                                        ; $4ba5: $4d
	ld   bc, $0100                                   ; $4ba6: $01 $00 $01
	dec  b                                           ; $4ba9: $05
	rla                                              ; $4baa: $17
	db   $10                                         ; $4bab: $10
	ld   [hl+], a                                    ; $4bac: $22
	ld   [bc], a                                     ; $4bad: $02
	nop                                              ; $4bae: $00
	ld   c, $43                                      ; $4baf: $0e $43
	ld   e, a                                        ; $4bb1: $5f
	ld   b, $17                                      ; $4bb2: $06 $17
	ld   [bc], a                                     ; $4bb4: $02
	nop                                              ; $4bb5: $00
	ld   c, $43                                      ; $4bb6: $0e $43
	ld   c, h                                        ; $4bb8: $4c
	jr   jr_00c_4bda                                 ; $4bb9: $18 $1f

	inc  bc                                          ; $4bbb: $03
	nop                                              ; $4bbc: $00
	dec  c                                           ; $4bbd: $0d
	ld   h, d                                        ; $4bbe: $62

jr_00c_4bbf:
	sbc  e                                           ; $4bbf: $9b
	ld   b, $1f                                      ; $4bc0: $06 $1f
	inc  b                                           ; $4bc2: $04
	nop                                              ; $4bc3: $00
	ld   a, [hl+]                                    ; $4bc4: $2a
	ld   c, a                                        ; $4bc5: $4f
	ld   e, h                                        ; $4bc6: $5c
	ld   a, [de]                                     ; $4bc7: $1a
	daa                                              ; $4bc8: $27
	dec  b                                           ; $4bc9: $05
	nop                                              ; $4bca: $00
	inc  c                                           ; $4bcb: $0c
	ld   e, a                                        ; $4bcc: $5f
	sbc  e                                           ; $4bcd: $9b
	jr   nz, jr_00c_4c00                             ; $4bce: $20 $30

	ld   b, $42                                      ; $4bd0: $06 $42
	ld   [bc], a                                     ; $4bd2: $02
	dec  b                                           ; $4bd3: $05
	rlca                                             ; $4bd4: $07
	dec  h                                           ; $4bd5: $25
	cpl                                              ; $4bd6: $2f
	ld   b, $42                                      ; $4bd7: $06 $42
	ld   [bc], a                                     ; $4bd9: $02

jr_00c_4bda:
	ld   [$250a], sp                                 ; $4bda: $08 $0a $25
	jr   nc, @+$08                                   ; $4bdd: $30 $06

	ld   b, d                                        ; $4bdf: $42
	ld   [bc], a                                     ; $4be0: $02
	dec  bc                                          ; $4be1: $0b
	dec  c                                           ; $4be2: $0d
	dec  h                                           ; $4be3: $25
	ld   sp, $4206                                   ; $4be4: $31 $06 $42

jr_00c_4be7:
	ld   [bc], a                                     ; $4be7: $02
	ld   c, $10                                      ; $4be8: $0e $10
	dec  h                                           ; $4bea: $25
	ld   [hl-], a                                    ; $4beb: $32
	ld   b, $42                                      ; $4bec: $06 $42
	ld   [bc], a                                     ; $4bee: $02
	ld   de, $2513                                   ; $4bef: $11 $13 $25
	inc  sp                                          ; $4bf2: $33
	rlca                                             ; $4bf3: $07
	add  c                                           ; $4bf4: $81
	inc  bc                                          ; $4bf5: $03
	dec  b                                           ; $4bf6: $05
	rlca                                             ; $4bf7: $07
	jr   nc, jr_00c_4c32                             ; $4bf8: $30 $38

	rlca                                             ; $4bfa: $07
	add  c                                           ; $4bfb: $81
	inc  bc                                          ; $4bfc: $03
	ld   [$310a], sp                                 ; $4bfd: $08 $0a $31

jr_00c_4c00:
	jr   c, jr_00c_4c09                              ; $4c00: $38 $07

	add  c                                           ; $4c02: $81
	inc  bc                                          ; $4c03: $03
	dec  bc                                          ; $4c04: $0b
	dec  c                                           ; $4c05: $0d
	ld   [hl-], a                                    ; $4c06: $32
	jr   c, jr_00c_4c10                              ; $4c07: $38 $07

jr_00c_4c09:
	add  c                                           ; $4c09: $81
	inc  bc                                          ; $4c0a: $03
	ld   c, $10                                      ; $4c0b: $0e $10
	inc  sp                                          ; $4c0d: $33
	jr   c, jr_00c_4c17                              ; $4c0e: $38 $07

jr_00c_4c10:
	add  c                                           ; $4c10: $81
	inc  bc                                          ; $4c11: $03
	ld   de, $3413                                   ; $4c12: $11 $13 $34
	jr   c, jr_00c_4c1f                              ; $4c15: $38 $08

jr_00c_4c17:
	nop                                              ; $4c17: $00
	db   $10                                         ; $4c18: $10
	add  hl, hl                                      ; $4c19: $29
	ld   a, $2a                                      ; $4c1a: $3e $2a
	ccf                                              ; $4c1c: $3f
	add  hl, bc                                      ; $4c1d: $09
	nop                                              ; $4c1e: $00

jr_00c_4c1f:
	rrca                                             ; $4c1f: $0f
	ld   b, c                                        ; $4c20: $41
	ld   d, c                                        ; $4c21: $51
	ld   a, [hl+]                                    ; $4c22: $2a
	ccf                                              ; $4c23: $3f
	ld   a, [bc]                                     ; $4c24: $0a
	nop                                              ; $4c25: $00
	dec  bc                                          ; $4c26: $0b
	ld   e, a                                        ; $4c27: $5f
	sbc  d                                           ; $4c28: $9a
	ld   sp, $0b4c                                   ; $4c29: $31 $4c $0b
	nop                                              ; $4c2c: $00
	inc  b                                           ; $4c2d: $04
	dec  b                                           ; $4c2e: $05
	rla                                              ; $4c2f: $17
	ld   a, [hl-]                                    ; $4c30: $3a
	ld   c, h                                        ; $4c31: $4c

jr_00c_4c32:
	inc  c                                           ; $4c32: $0c
	nop                                              ; $4c33: $00
	dec  hl                                          ; $4c34: $2b
	add  hl, hl                                      ; $4c35: $29
	ld   e, h                                        ; $4c36: $5c
	ld   b, c                                        ; $4c37: $41
	ld   d, [hl]                                     ; $4c38: $56
	inc  c                                           ; $4c39: $0c
	nop                                              ; $4c3a: $00
	dec  hl                                          ; $4c3b: $2b
	ld   d, h                                        ; $4c3c: $54
	ld   e, h                                        ; $4c3d: $5c
	ld   a, [hl+]                                    ; $4c3e: $2a
	ld   b, b                                        ; $4c3f: $40
	dec  c                                           ; $4c40: $0d
	nop                                              ; $4c41: $00
	dec  b                                           ; $4c42: $05
	ld   [bc], a                                     ; $4c43: $02
	rla                                              ; $4c44: $17
	ld   d, l                                        ; $4c45: $55
	ld   [hl], d                                     ; $4c46: $72
	dec  c                                           ; $4c47: $0d
	nop                                              ; $4c48: $00
	dec  b                                           ; $4c49: $05
	dec  b                                           ; $4c4a: $05
	rla                                              ; $4c4b: $17
	ld   c, a                                        ; $4c4c: $4f
	ld   d, h                                        ; $4c4d: $54
	ld   c, $00                                      ; $4c4e: $0e $00
	ld   b, $29                                      ; $4c50: $06 $29
	ld   [hl], $6a                                   ; $4c52: $36 $6a
	ld   a, a                                        ; $4c54: $7f
	rrca                                             ; $4c55: $0f
	nop                                              ; $4c56: $00
	rlca                                             ; $4c57: $07
	add  hl, sp                                      ; $4c58: $39
	ld   e, [hl]                                     ; $4c59: $5e
	ld   l, d                                        ; $4c5a: $6a
	ld   a, a                                        ; $4c5b: $7f
	stop                                             ; $4c5c: $10 $00
	ld   [$6c62], sp                                 ; $4c5e: $08 $62 $6c
	ld   l, d                                        ; $4c61: $6a
	ld   a, a                                        ; $4c62: $7f
	ld   de, $0381                                   ; $4c63: $11 $81 $03
	adc  d                                           ; $4c66: $8a
	adc  h                                           ; $4c67: $8c
	ld   h, [hl]                                     ; $4c68: $66
	ld   a, e                                        ; $4c69: $7b
	ld   de, $0381                                   ; $4c6a: $11 $81 $03
	adc  l                                           ; $4c6d: $8d
	adc  a                                           ; $4c6e: $8f
	ld   h, a                                        ; $4c6f: $67
	ld   a, e                                        ; $4c70: $7b
	ld   de, $0381                                   ; $4c71: $11 $81 $03
	sub  b                                           ; $4c74: $90
	sub  d                                           ; $4c75: $92
	ld   h, [hl]                                     ; $4c76: $66
	ld   a, e                                        ; $4c77: $7b
	ld   de, $0381                                   ; $4c78: $11 $81 $03
	sub  e                                           ; $4c7b: $93
	sub  l                                           ; $4c7c: $95
	ld   h, l                                        ; $4c7d: $65
	ld   a, e                                        ; $4c7e: $7b
	ld   de, $0381                                   ; $4c7f: $11 $81 $03
	sub  [hl]                                        ; $4c82: $96
	sub  a                                           ; $4c83: $97
	ld   h, h                                        ; $4c84: $64
	ld   a, e                                        ; $4c85: $7b
	ld   de, $0381                                   ; $4c86: $11 $81 $03
	sbc  b                                           ; $4c89: $98
	sbc  e                                           ; $4c8a: $9b
	ld   h, e                                        ; $4c8b: $63
	ld   a, e                                        ; $4c8c: $7b
	ld   [de], a                                     ; $4c8d: $12
	nop                                              ; $4c8e: $00
	add  hl, bc                                      ; $4c8f: $09
	ld   h, d                                        ; $4c90: $62
	sbc  h                                           ; $4c91: $9c
	ld   e, a                                        ; $4c92: $5f
	ld   a, a                                        ; $4c93: $7f
	inc  de                                          ; $4c94: $13
	nop                                              ; $4c95: $00
	ld   a, [bc]                                     ; $4c96: $0a
	halt                                             ; $4c97: $76
	ld   a, a                                        ; $4c98: $7f
	add  b                                           ; $4c99: $80
	adc  [hl]                                        ; $4c9a: $8e
	dec  l                                           ; $4c9b: $2d
	nop                                              ; $4c9c: $00
	nop                                              ; $4c9d: $00
	inc  e                                           ; $4c9e: $1c
	ld   h, $17                                      ; $4c9f: $26 $17
	ld   l, [hl]                                     ; $4ca1: $6e
	nop                                              ; $4ca2: $00
	nop                                              ; $4ca3: $00
	nop                                              ; $4ca4: $00
	inc  d                                           ; $4ca5: $14
	nop                                              ; $4ca6: $00
	ld   de, $1705                                   ; $4ca7: $11 $05 $17
	ld   b, $19                                      ; $4caa: $06 $19
	dec  d                                           ; $4cac: $15
	nop                                              ; $4cad: $00
	dec  e                                           ; $4cae: $1d
	jr   z, jr_00c_4ce5                              ; $4caf: $28 $34

	jr   nc, jr_00c_4cf5                             ; $4cb1: $30 $42

	ld   d, $00                                      ; $4cb3: $16 $00
	dec  de                                          ; $4cb5: $1b
	scf                                              ; $4cb6: $37
	ld   b, e                                        ; $4cb7: $43
	ld   b, $19                                      ; $4cb8: $06 $19
	rla                                              ; $4cba: $17
	nop                                              ; $4cbb: $00
	ld   a, [de]                                     ; $4cbc: $1a
	ld   b, [hl]                                     ; $4cbd: $46
	ld   d, d                                        ; $4cbe: $52
	ld   b, $19                                      ; $4cbf: $06 $19
	jr   jr_00c_4d03                                 ; $4cc1: $18 $40

	rra                                              ; $4cc3: $1f
	dec  b                                           ; $4cc4: $05
	ld   [de], a                                     ; $4cc5: $12
	inc  e                                           ; $4cc6: $1c
	dec  l                                           ; $4cc7: $2d
	add  hl, de                                      ; $4cc8: $19
	nop                                              ; $4cc9: $00
	ld   e, $05                                      ; $4cca: $1e $05
	rla                                              ; $4ccc: $17
	jr   nc, jr_00c_4d11                             ; $4ccd: $30 $42

	ld   a, [de]                                     ; $4ccf: $1a
	nop                                              ; $4cd0: $00
	jr   @+$2a                                       ; $4cd1: $18 $28

	inc  [hl]                                        ; $4cd3: $34
	ld   b, $19                                      ; $4cd4: $06 $19
	dec  de                                          ; $4cd6: $1b
	nop                                              ; $4cd7: $00
	inc  e                                           ; $4cd8: $1c
	scf                                              ; $4cd9: $37
	ld   b, e                                        ; $4cda: $43
	jr   nc, jr_00c_4d1f                             ; $4cdb: $30 $42

	inc  e                                           ; $4cdd: $1c
	nop                                              ; $4cde: $00
	add  hl, de                                      ; $4cdf: $19
	ld   b, [hl]                                     ; $4ce0: $46
	ld   d, d                                        ; $4ce1: $52
	jr   nc, jr_00c_4d26                             ; $4ce2: $30 $42

	dec  e                                           ; $4ce4: $1d

jr_00c_4ce5:
	nop                                              ; $4ce5: $00
	dec  d                                           ; $4ce6: $15
	ld   h, c                                        ; $4ce7: $61
	sbc  c                                           ; $4ce8: $99
	ld   a, [hl-]                                    ; $4ce9: $3a
	ld   c, h                                        ; $4cea: $4c
	ld   e, $00                                      ; $4ceb: $1e $00
	inc  de                                          ; $4ced: $13
	dec  b                                           ; $4cee: $05
	rla                                              ; $4cef: $17
	ld   b, l                                        ; $4cf0: $45
	ld   d, [hl]                                     ; $4cf1: $56
	jr   nz, jr_00c_4cf4                             ; $4cf2: $20 $00

jr_00c_4cf4:
	inc  d                                           ; $4cf4: $14

jr_00c_4cf5:
	ld   [bc], a                                     ; $4cf5: $02
	add  hl, de                                      ; $4cf6: $19
	ld   e, b                                        ; $4cf7: $58
	ld   [hl], l                                     ; $4cf8: $75
	ld   hl, $1f40                                   ; $4cf9: $21 $40 $1f
	adc  a                                           ; $4cfc: $8f
	sub  c                                           ; $4cfd: $91
	ld   h, [hl]                                     ; $4cfe: $66
	ld   a, [hl]                                     ; $4cff: $7e
	ld   hl, $1f40                                   ; $4d00: $21 $40 $1f

jr_00c_4d03:
	sub  d                                           ; $4d03: $92
	sbc  h                                           ; $4d04: $9c
	ld   l, c                                        ; $4d05: $69
	ld   a, [hl]                                     ; $4d06: $7e
	ld   [hl+], a                                    ; $4d07: $22
	nop                                              ; $4d08: $00
	rla                                              ; $4d09: $17
	ld   a, c                                        ; $4d0a: $79
	add  e                                           ; $4d0b: $83
	ld   [hl], l                                     ; $4d0c: $75
	adc  l                                           ; $4d0d: $8d
	ld   [hl+], a                                    ; $4d0e: $22
	nop                                              ; $4d0f: $00
	rla                                              ; $4d10: $17

jr_00c_4d11:
	ld   [hl], l                                     ; $4d11: $75
	add  a                                           ; $4d12: $87
	halt                                             ; $4d13: $76
	adc  l                                           ; $4d14: $8d
	ld   [hl+], a                                    ; $4d15: $22
	nop                                              ; $4d16: $00
	rla                                              ; $4d17: $17
	ld   [hl], h                                     ; $4d18: $74
	adc  b                                           ; $4d19: $88
	ld   a, b                                        ; $4d1a: $78
	adc  l                                           ; $4d1b: $8d
	ld   [hl+], a                                    ; $4d1c: $22
	nop                                              ; $4d1d: $00
	rla                                              ; $4d1e: $17

jr_00c_4d1f:
	ld   [hl], e                                     ; $4d1f: $73
	adc  c                                           ; $4d20: $89
	ld   a, c                                        ; $4d21: $79
	adc  l                                           ; $4d22: $8d
	ld   [hl+], a                                    ; $4d23: $22
	nop                                              ; $4d24: $00
	rla                                              ; $4d25: $17

jr_00c_4d26:
	ld   l, b                                        ; $4d26: $68
	sub  h                                           ; $4d27: $94
	ld   a, d                                        ; $4d28: $7a
	adc  l                                           ; $4d29: $8d
	ld   [hl+], a                                    ; $4d2a: $22
	nop                                              ; $4d2b: $00
	rla                                              ; $4d2c: $17
	ld   h, a                                        ; $4d2d: $67
	sub  l                                           ; $4d2e: $95
	ld   a, h                                        ; $4d2f: $7c
	adc  l                                           ; $4d30: $8d
	ld   [hl+], a                                    ; $4d31: $22
	nop                                              ; $4d32: $00
	rla                                              ; $4d33: $17
	ld   h, h                                        ; $4d34: $64
	adc  l                                           ; $4d35: $8d
	add  b                                           ; $4d36: $80
	adc  l                                           ; $4d37: $8d
	rra                                              ; $4d38: $1f
	nop                                              ; $4d39: $00
	ld   d, $61                                      ; $4d3a: $16 $61
	adc  [hl]                                        ; $4d3c: $8e
	ld   h, b                                        ; $4d3d: $60
	ld   a, l                                        ; $4d3e: $7d
	nop                                              ; $4d3f: $00
	nop                                              ; $4d40: $00
	nop                                              ; $4d41: $00
	inc  hl                                          ; $4d42: $23
	nop                                              ; $4d43: $00
	add  hl, hl                                      ; $4d44: $29
	ld   b, d                                        ; $4d45: $42
	ld   l, a                                        ; $4d46: $6f
	db   $10                                         ; $4d47: $10
	daa                                              ; $4d48: $27
	inc  h                                           ; $4d49: $24
	nop                                              ; $4d4a: $00
	ld   hl, $9d72                                   ; $4d4b: $21 $72 $9d
	ld   b, $17                                      ; $4d4e: $06 $17
	dec  h                                           ; $4d50: $25
	nop                                              ; $4d51: $00
	inc  hl                                          ; $4d52: $23
	dec  b                                           ; $4d53: $05
	add  hl, de                                      ; $4d54: $19
	ld   a, [hl+]                                    ; $4d55: $2a
	ld   b, [hl]                                     ; $4d56: $46
	ld   h, $00                                      ; $4d57: $26 $00
	inc  l                                           ; $4d59: $2c
	dec  b                                           ; $4d5a: $05
	inc  de                                          ; $4d5b: $13
	ld   d, b                                        ; $4d5c: $50
	ld   d, h                                        ; $4d5d: $54
	ld   h, $00                                      ; $4d5e: $26 $00
	inc  l                                           ; $4d60: $2c
	dec  b                                           ; $4d61: $05
	rlca                                             ; $4d62: $07
	ld   d, b                                        ; $4d63: $50
	ld   d, l                                        ; $4d64: $55
	ld   h, $00                                      ; $4d65: $26 $00
	inc  l                                           ; $4d67: $2c
	ld   [$500a], sp                                 ; $4d68: $08 $0a $50
	ld   d, [hl]                                     ; $4d6b: $56
	ld   h, $00                                      ; $4d6c: $26 $00
	inc  l                                           ; $4d6e: $2c
	dec  bc                                          ; $4d6f: $0b
	dec  c                                           ; $4d70: $0d
	ld   d, b                                        ; $4d71: $50
	ld   d, a                                        ; $4d72: $57
	ld   h, $00                                      ; $4d73: $26 $00
	inc  l                                           ; $4d75: $2c
	ld   c, $10                                      ; $4d76: $0e $10
	ld   d, b                                        ; $4d78: $50
	ld   e, b                                        ; $4d79: $58
	ld   h, $00                                      ; $4d7a: $26 $00
	inc  l                                           ; $4d7c: $2c
	ld   de, $5013                                   ; $4d7d: $11 $13 $50
	ld   e, c                                        ; $4d80: $59
	daa                                              ; $4d81: $27
	add  b                                           ; $4d82: $80
	jr   nz, jr_00c_4d8a                             ; $4d83: $20 $05

	rlca                                             ; $4d85: $07
	ld   d, [hl]                                     ; $4d86: $56
	ld   e, a                                        ; $4d87: $5f
	daa                                              ; $4d88: $27
	add  b                                           ; $4d89: $80

jr_00c_4d8a:
	jr   nz, jr_00c_4d94                             ; $4d8a: $20 $08

	ld   a, [bc]                                     ; $4d8c: $0a
	ld   d, a                                        ; $4d8d: $57
	ld   e, a                                        ; $4d8e: $5f
	daa                                              ; $4d8f: $27
	add  b                                           ; $4d90: $80
	jr   nz, jr_00c_4d9e                             ; $4d91: $20 $0b

	dec  c                                           ; $4d93: $0d

jr_00c_4d94:
	ld   e, b                                        ; $4d94: $58
	ld   e, a                                        ; $4d95: $5f
	daa                                              ; $4d96: $27
	add  b                                           ; $4d97: $80
	jr   nz, jr_00c_4da8                             ; $4d98: $20 $0e

	db   $10                                         ; $4d9a: $10
	ld   e, c                                        ; $4d9b: $59
	ld   e, a                                        ; $4d9c: $5f
	daa                                              ; $4d9d: $27

jr_00c_4d9e:
	add  b                                           ; $4d9e: $80
	jr   nz, jr_00c_4db2                             ; $4d9f: $20 $11

	inc  de                                          ; $4da1: $13
	ld   e, d                                        ; $4da2: $5a
	ld   e, a                                        ; $4da3: $5f
	jr   z, jr_00c_4da6                              ; $4da4: $28 $00

jr_00c_4da6:
	ld   [hl+], a                                    ; $4da6: $22
	inc  l                                           ; $4da7: $2c

jr_00c_4da8:
	ld   b, l                                        ; $4da8: $45
	ccf                                              ; $4da9: $3f
	ld   e, a                                        ; $4daa: $5f
	add  hl, hl                                      ; $4dab: $29
	nop                                              ; $4dac: $00
	daa                                              ; $4dad: $27
	ld   c, b                                        ; $4dae: $48
	ld   e, [hl]                                     ; $4daf: $5e
	ccf                                              ; $4db0: $3f
	ld   e, a                                        ; $4db1: $5f

jr_00c_4db2:
	ld   a, [hl+]                                    ; $4db2: $2a
	nop                                              ; $4db3: $00
	db $28, $61

	ld   l, a                                        ; $4db6: $6f
	ccf                                              ; $4db7: $3f
	ld   e, a                                        ; $4db8: $5f
	dec  hl                                          ; $4db9: $2b
	nop                                              ; $4dba: $00
	ld   h, $2c                                      ; $4dbb: $26 $2c
	ld   l, l                                        ; $4dbd: $6d
	ld   h, d                                        ; $4dbe: $62
	ld   a, a                                        ; $4dbf: $7f
	inc  l                                           ; $4dc0: $2c
	nop                                              ; $4dc1: $00
	dec  h                                           ; $4dc2: $25
	ld   [hl], d                                     ; $4dc3: $72
	sbc  l                                           ; $4dc4: $9d
	ld   b, e                                        ; $4dc5: $43
	ld   a, a                                        ; $4dc6: $7f
	nop                                              ; $4dc7: $00
	nop                                              ; $4dc8: $00
	nop                                              ; $4dc9: $00


GameState3c_FileLoadDisplay::
; Jump if main substate
	ld   a, [wGameSubstate]                                         ; $4dca
	or   a                                                          ; $4dcd
	jp   nz, FileLoadDisplay_Substate1                              ; $4dce

; Preserve ram bank, and set it to the tile attr/map buffer's bank
	ld   a, [wWramBank]                                             ; $4dd1
	push af                                                         ; $4dd4

	ld   a, BANK(wFileLoadDisplayTileAttrBuffer)                    ; $4dd5
	ld   [wWramBank], a                                             ; $4dd7
	ldh  [rSVBK], a                                                 ; $4dda

; Mute sound, and minimize audvol
	xor  a                                                          ; $4ddc
	call PlaySong                                                   ; $4ddd

	ld   a, $00                                                     ; $4de0
	call SafeSetAudVolForMultipleChannels                           ; $4de2

; Turn off LCD, clear display regs, and enable BG+OBJ display
	call TurnOffLCD                                                 ; $4de5
	call ClearDisplayRegsAllowVBlankInt                             ; $4de8

	ld   a, [wLCDC]                                                 ; $4deb
	and  LCDCF_ON|LCDCF_WIN9C00|LCDCF_WINON                         ; $4dee
	or   LCDCF_OBJ16|LCDCF_OBJON|LCDCF_BGON                         ; $4df0
	ld   [wLCDC], a                                                 ; $4df2

; Load all white palettes, and update hw pals
	ld   a, BANK(Palettes_AllWhite)                                 ; $4df5
	ld   hl, Palettes_AllWhite                                      ; $4df7
	ld   de, wBGPalettes                                            ; $4dfa
	ld   bc, NUM_PALETTE_BYTES * 2                                  ; $4dfd
	call FarMemCopy                                                 ; $4e00

	ldbc $00, $3f                                                   ; $4e03
	call SetBGandOBJPaletteRangesToUpdate                           ; $4e06

; Allow all inputs, clear oam and base anim sprite details
	ld   a, $ff                                                     ; $4e09
	ld   [wInGameInputsEnabled], a                                  ; $4e0b

	call ClearOam                                                   ; $4e0e
	call ClearBaseAnimSpriteSpecDetails                             ; $4e11

; Decompress tile data into vram
	xor  a                                                          ; $4e14
	ldh  [rVBK], a                                                  ; $4e15
	ld   a, BANK(RleXorTileData_FileLoadDisplay)                    ; $4e17
	ld   hl, _VRAM                                                  ; $4e19
	ld   de, RleXorTileData_FileLoadDisplay                         ; $4e1c
	call RLEXorCopy                                                 ; $4e1f

; Layout copy into tile attr, then TileMap_FileLoadDisplay into map buffer
	ld   hl, wFileLoadDisplayTileAttrBuffer                         ; $4e22
	ld   a, BANK(TileAttr_FileLoadDisplay)                          ; $4e25
	ld   de, TileAttr_FileLoadDisplay                               ; $4e27
	ldbc SCRN_X_B, $16                                              ; $4e2a
	call FarCopyLayout                                              ; $4e2d

	ld   hl, wFileLoadDisplayTileMapBuffer                          ; $4e30
	call FarCopyLayout                                              ; $4e33

; Jump if not the last day
	ld   a, [sCurrDay]                                              ; $4e36
	cp   31                                                         ; $4e39
	jr   nz, .notLastDay                                            ; $4e3b

; Last day - copy last day kanji top row, from off-screen to on-screen
	ld   hl, wFileLoadDisplayTileMapBuffer+$285                     ; $4e3d
	ld   a, [hl+]                                                   ; $4e40
	ld   [wFileLoadDisplayTileMapBuffer+$c7], a                     ; $4e41
	ld   a, [hl+]                                                   ; $4e44
	ld   [wFileLoadDisplayTileMapBuffer+$c8], a                     ; $4e45
	ld   a, [hl+]                                                   ; $4e48
	ld   [wFileLoadDisplayTileMapBuffer+$c9], a                     ; $4e49
	ld   a, [hl+]                                                   ; $4e4c
	ld   [wFileLoadDisplayTileMapBuffer+$ca], a                     ; $4e4d
	ld   a, [hl+]                                                   ; $4e50
	ld   [wFileLoadDisplayTileMapBuffer+$cb], a                     ; $4e51
	ld   a, [hl+]                                                   ; $4e54
	ld   [wFileLoadDisplayTileMapBuffer+$cc], a                     ; $4e55

; Copy bottom row
	ld   hl, wFileLoadDisplayTileMapBuffer+$2a5                     ; $4e58
	ld   a, [hl+]                                                   ; $4e5b
	ld   [wFileLoadDisplayTileMapBuffer+$e7], a                     ; $4e5c
	ld   a, [hl+]                                                   ; $4e5f
	ld   [wFileLoadDisplayTileMapBuffer+$e8], a                     ; $4e60
	ld   a, [hl+]                                                   ; $4e63
	ld   [wFileLoadDisplayTileMapBuffer+$e9], a                     ; $4e64
	ld   a, [hl+]                                                   ; $4e67
	ld   [wFileLoadDisplayTileMapBuffer+$ea], a                     ; $4e68
	ld   a, [hl+]                                                   ; $4e6b
	ld   [wFileLoadDisplayTileMapBuffer+$eb], a                     ; $4e6c
	ld   a, [hl+]                                                   ; $4e6f
	ld   [wFileLoadDisplayTileMapBuffer+$ec], a                     ; $4e70
	jr   .afterDayBranch                                            ; $4e73

.notLastDay:
; Create an animatable type-0 sprite spec, and return its details addr in HL
	ld   a, ASST_0                                                  ; $4e75
	ld   hl, $0000                                                  ; $4e77
	ld   d, h                                                       ; $4e7a
	ld   e, l                                                       ; $4e7b
	call ReserveBaseAnimSpriteSpecAndInstance                       ; $4e7c
	call StartAnimatingAnimatedSpriteSpec                           ; $4e7f
	call HLequAddrOfAnimSpriteSpecDetails                           ; $4e82

; L = day of the week, from Sunday
	push hl                                                         ; $4e85
	ld   a, [sCurrDay]                                              ; $4e86
	dec  a                                                          ; $4e89
	ld   h, a                                                       ; $4e8a
	ld   l, $07                                                     ; $4e8b
	call HLequHdivModL                                              ; $4e8d

; E (sprite spec idx) = day of week offsetted from Sunday's val, load rest of sprite's details
	ld   a, SG1_FILE_LOAD_DISPLAY_SUNDAY                            ; $4e90
	add  l                                                          ; $4e92
	ldbc $40, $38                                                   ; $4e93
	ld   d, SG_1                                                    ; $4e96
	ld   e, a                                                       ; $4e98
	pop  hl                                                         ; $4e99

	M_FarCall LoadType0NewAnimatedSpriteSpecDetails

.afterDayBranch:
; todo: sprite for curr day 10's digit
	ld   a, [sCurrDay]                                  ; $4eae: $fa $b0 $af
	cp   $0a                                         ; $4eb1: $fe $0a
	ld   a, $00                                      ; $4eb3: $3e $00
	ld   hl, $0000                                   ; $4eb5: $21 $00 $00
	ld   d, h                                        ; $4eb8: $54
	ld   e, l                                        ; $4eb9: $5d
	call ReserveBaseAnimSpriteSpecAndInstance                                       ; $4eba: $cd $4b $2f
	call StartAnimatingAnimatedSpriteSpec                                       ; $4ebd: $cd $14 $30
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $4ec0: $cd $76 $30
	push hl                                          ; $4ec3: $e5
	ld   a, [sCurrDay]                                  ; $4ec4: $fa $b0 $af
	ld   h, a                                        ; $4ec7: $67
	ld   l, $0a                                      ; $4ec8: $2e $0a
	call HLequHdivModL                                       ; $4eca: $cd $fb $0b
	ld   a, $78                                      ; $4ecd: $3e $78
	add  h                                           ; $4ecf: $84
	ld   bc, $5c28                                   ; $4ed0: $01 $28 $5c
	ld   d, $01                                      ; $4ed3: $16 $01
	ld   e, a                                        ; $4ed5: $5f
	pop  hl                                          ; $4ed6: $e1

	M_FarCall LoadType0NewAnimatedSpriteSpecDetails
	
; todo: sprite for curr day 1's digit
	ld   a, $00                                      ; $4eeb: $3e $00
	ld   hl, $0000                                   ; $4eed: $21 $00 $00
	ld   d, h                                        ; $4ef0: $54
	ld   e, l                                        ; $4ef1: $5d
	call ReserveBaseAnimSpriteSpecAndInstance                                       ; $4ef2: $cd $4b $2f
	call StartAnimatingAnimatedSpriteSpec                                       ; $4ef5: $cd $14 $30
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $4ef8: $cd $76 $30
	push hl                                          ; $4efb: $e5
	ld   a, [sCurrDay]                                  ; $4efc: $fa $b0 $af
	ld   h, a                                        ; $4eff: $67
	ld   l, $0a                                      ; $4f00: $2e $0a
	call HLequHdivModL                                       ; $4f02: $cd $fb $0b
	ld   a, $78                                      ; $4f05: $3e $78
	add  l                                           ; $4f07: $85
	ld   bc, $6828                                   ; $4f08: $01 $28 $68
	ld   d, $01                                      ; $4f0b: $16 $01
	ld   e, a                                        ; $4f0d: $5f
	pop  hl                                          ; $4f0e: $e1

	M_FarCall LoadType0NewAnimatedSpriteSpecDetails

; todo: title logo misc sprites for filling in color clashes
	ld   a, $00                                      ; $4f23: $3e $00
	ld   hl, $0000                                   ; $4f25: $21 $00 $00
	ld   d, h                                        ; $4f28: $54
	ld   e, l                                        ; $4f29: $5d
	call ReserveBaseAnimSpriteSpecAndInstance                                       ; $4f2a: $cd $4b $2f
	call StartAnimatingAnimatedSpriteSpec                                       ; $4f2d: $cd $14 $30
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $4f30: $cd $76 $30
	ld   bc, $6868                                   ; $4f33: $01 $68 $68
	ld   d, $01                                      ; $4f36: $16 $01
	ld   a, $77                                      ; $4f38: $3e $77
	ld   e, a                                        ; $4f3a: $5f

	M_FarCall LoadType0NewAnimatedSpriteSpecDetails

; Enqueue tile attr, then tile map from ram buffer
	ld   c, $81                                                     ; $4f4f
	ld   de, _SCRN0                                                 ; $4f51
	ld   a, BANK(wFileLoadDisplayTileAttrBuffer)                    ; $4f54
	ld   hl, wFileLoadDisplayTileAttrBuffer                         ; $4f56
	ld   b, $400/$10                                                ; $4f59
	call EnqueueHDMATransfer                                        ; $4f5b

	ld   c, $80                                                     ; $4f5e
	ld   de, _SCRN0                                                 ; $4f60
	ld   a, BANK(wFileLoadDisplayTileMapBuffer)                     ; $4f63
	ld   hl, wFileLoadDisplayTileMapBuffer                          ; $4f65
	ld   b, $400/$10                                                ; $4f68
	call EnqueueHDMATransfer                                        ; $4f6a

; Turn on LCD, play sound and max aud vol
	call TurnOnLCD                                                  ; $4f6d

	ld   a, SONG_11                                                 ; $4f70
	call PlaySong                                                   ; $4f72

	ld   a, $07                                                     ; $4f75
	call SafeSetAudVolForMultipleChannels                           ; $4f77

; Init anim step and misc counter idx
	xor  a                                                          ; $4f7a
	ld   [wFileLoadDisplayAnimationStep], a                         ; $4f7b
	ld   [wFileLoadDisplayMiscCounterIdx], a                        ; $4f7e

; Inc to main substate, and restore ram bank
	ld   hl, wGameSubstate                                          ; $4f81
	inc  [hl]                                                       ; $4f84

	pop  af                                                         ; $4f85
	ld   [wWramBank], a                                             ; $4f86
	ldh  [rSVBK], a                                                 ; $4f89
	ret                                                             ; $4f8b


FileLoadDisplay_Substate1:
	call ClearOam                                                   ; $4f8c

; Don't skip unless B held
	xor  a                                                          ; $4f8f
	ld   [wFileLoadDisplayShouldSkip], a                            ; $4f90

	ld   a, [wInGameButtonsHeld]                                    ; $4f93
	bit  PADB_B, a                                                  ; $4f96
	jr   z, :+                                                      ; $4f98

	ld   a, $ff                                                     ; $4f9a
	ld   [wFileLoadDisplayShouldSkip], a                            ; $4f9c

; Push return address to ret to after handler
:	ld   bc, .return                                                ; $4f9f
	push bc                                                         ; $4fa2

; HL = anim step double idxed into table
	ld   a, [wFileLoadDisplayAnimationStep]                         ; $4fa3
	ld   b, $00                                                     ; $4fa6
	ld   c, a                                                       ; $4fa8
	ld   hl, .animationHandlers                                     ; $4fa9
	add  hl, bc                                                     ; $4fac
	add  hl, bc                                                     ; $4fad

; Jump to the step's handler
	ld   a, [hl+]                                                   ; $4fae
	ld   h, [hl]                                                    ; $4faf
	ld   l, a                                                       ; $4fb0
	jp   hl                                                         ; $4fb1

.return:
; Finally animate all sprites
	call AnimateAllAnimatedSpriteSpecs                              ; $4fb2
	ret                                                             ; $4fb5

.animationHandlers:
	dw FileLoadDisplayAnimationHandler0_Wait
	dw FileLoadDisplayAnimationHandler1_FadeIn
	dw FileLoadDisplayAnimationHandler2_PlaySound
	dw FileLoadDisplayAnimationHandler3_FadeOut
	dw FileLoadDisplayAnimationHandler4_ToNextState


FileLoadDisplayAnimationHandler0_Wait:
; If should skip, go to step 1
	ld   a, [wFileLoadDisplayShouldSkip]                            ; $4fc0
	or   a                                                          ; $4fc3
	jr   nz, .toNextStep                                            ; $4fc4

; Inc counter idx, continuing once >= $1e (bug: should ret c)
	ld   hl, wFileLoadDisplayMiscCounterIdx                         ; $4fc6
	ld   a, [hl]                                                    ; $4fc9
	inc  [hl]                                                       ; $4fca
	cp   $1e                                                        ; $4fcb
	ret  nc                                                         ; $4fcd

.toNextStep:
; Inc anim step and clear counter
	ld   hl, wFileLoadDisplayAnimationStep                          ; $4fce
	inc  [hl]                                                       ; $4fd1

	xor  a                                                          ; $4fd2
	ld   [wFileLoadDisplayMiscCounterIdx], a                        ; $4fd3
	ret                                                             ; $4fd6


FileLoadDisplayAnimationHandler1_FadeIn:
; Jump if already loaded below
	ld   a, [wFileLoadDisplayMiscCounterIdx]                        ; $4fd7
	or   a                                                          ; $4fda
	jr   nz, .afterInit                                             ; $4fdb

; Load palettes to fade to, and set to fade at 1/8th speed
	xor  a                                                          ; $4fdd
	ld   [wStartingColorIdxToLoadCompDataFor], a                    ; $4fde
	ld   a, $40                                                     ; $4fe1
	ld   [wNumPaletteColorsToLoadCompDataFor], a                    ; $4fe3

	ld   a, $03                                                     ; $4fe6
	ld   b, $00                                                     ; $4fe8
	ld   hl, wBGPalettes                                            ; $4fea
	ld   c, BANK(Palettes_FileLoadDisplay)                          ; $4fed
	ld   de, Palettes_FileLoadDisplay                               ; $4fef
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                ; $4ff2

.afterInit:
	ld   hl, wFileLoadDisplayMiscCounterIdx                         ; $4ff5

; Jump if we shouldn't skip
	ld   a, [wFileLoadDisplayShouldSkip]                            ; $4ff8
	or   a                                                          ; $4ffb
	jr   z, .afterSkipCheck                                         ; $4ffc

; Else go to next fade counter below, mult of 8 means we fade immediately
	ld   a, [hl]                                                    ; $4ffe
	add  $07                                                        ; $4fff
	and  $f8                                                        ; $5001
	ld   [hl], a                                                    ; $5003

.afterSkipCheck:
; Jump once counter >= $3f
	ld   a, [hl]                                                    ; $5004
	inc  [hl]                                                       ; $5005
	cp   $3f                                                        ; $5006
	jr   nc, .afterAllFaded                                         ; $5008

; Else every 8 frames, fade all palettes
	and  $07                                                        ; $500a
	ret  nz                                                         ; $500c

	ldbc $00, $40                                                   ; $500d
	jp   FadePalettesAndSetRangeToUpdate                            ; $5010

.afterAllFaded:
; Update all palettes to the final colors
	ld   a, BANK(Palettes_FileLoadDisplay)                          ; $5013
	ld   hl, Palettes_FileLoadDisplay                               ; $5015
	ld   de, wBGPalettes                                            ; $5018
	ld   bc, NUM_PALETTE_BYTES * 2                                  ; $501b
	call FarMemCopy                                                 ; $501e

	ldbc $00, $3f                                                   ; $5021
	call SetBGandOBJPaletteRangesToUpdate                           ; $5024

; Inc anim step and clear misc counter
	ld   hl, wFileLoadDisplayAnimationStep                          ; $5027
	inc  [hl]                                                       ; $502a

	xor  a                                                          ; $502b
	ld   [wFileLoadDisplayMiscCounterIdx], a                        ; $502c
	ret                                                             ; $502f


FileLoadDisplayAnimationHandler2_PlaySound:
; If should skip, go to next step
	ld   a, [wFileLoadDisplayShouldSkip]                            ; $5030
	or   a                                                          ; $5033
	jr   nz, .toNextStep                                            ; $5034

; If B or A pressed, go to next step
	ld   a, [wInGameButtonsPressed]                                 ; $5036
	and  PADF_B|PADF_A                                              ; $5039
	jr   nz, .toNextStep                                            ; $503b

;
	ld   a, [$c653]                                  ; $503d: $fa $53 $c6
	call Func_1d30                                       ; $5040: $cd $30 $1d
	or   a                                           ; $5043: $b7
	ret  nz                                          ; $5044: $c0

; Clear sound and go to next step
	xor  a                                                          ; $5045
	call PlaySong                                                   ; $5046
	jr   .toNextStep                                                ; $5049

.toNextStep:
; Inc anim step and clear misc counter
	ld   hl, wFileLoadDisplayAnimationStep                          ; $504b
	inc  [hl]                                                       ; $504e

	xor  a                                                          ; $504f
	ld   [wFileLoadDisplayMiscCounterIdx], a                        ; $5050
	ret                                                             ; $5053


FileLoadDisplayAnimationHandler3_FadeOut:
; Jump if already loaded below
	ld   a, [wFileLoadDisplayMiscCounterIdx]                        ; $5054
	or   a                                                          ; $5057
	jr   nz, .afterInit                                             ; $5058

; Load white palettes to fade to, and set to fade at 1/8th speed
	xor  a                                                          ; $505a
	ld   [wStartingColorIdxToLoadCompDataFor], a                    ; $505b
	ld   a, $40                                                     ; $505e
	ld   [wNumPaletteColorsToLoadCompDataFor], a                    ; $5060

	ld   a, $03                                                     ; $5063
	ld   b, $00                                                     ; $5065
	ld   hl, wBGPalettes                                            ; $5067
	ld   c, BANK(Palettes_AllWhite)                                 ; $506a
	ld   de, Palettes_AllWhite                                      ; $506c
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                ; $506f

.afterInit:
	ld   hl, wFileLoadDisplayMiscCounterIdx                         ; $5072

; Jump if we shouldn't skip
	ld   a, [wFileLoadDisplayShouldSkip]                            ; $5075
	or   a                                                          ; $5078
	jr   z, .afterSkipCheck                                         ; $5079

; Else go to next fade counter below, mult of 8 means we fade immediately
	ld   a, [hl]                                                    ; $507b
	add  $07                                                        ; $507c
	and  $f8                                                        ; $507e
	ld   [hl], a                                                    ; $5080

.afterSkipCheck:
; Have vol fade down as palettes fade down
	ld   a, [hl]                                                    ; $5081
	cpl                                                             ; $5082
	srl  a                                                          ; $5083
	srl  a                                                          ; $5085
	srl  a                                                          ; $5087
	and  $07                                                        ; $5089
	call SafeSetAudVolForMultipleChannels                           ; $508b

; Jump once counter >= $3f
	ld   a, [hl]                                                    ; $508e
	inc  [hl]                                                       ; $508f
	cp   $3f                                                        ; $5090
	jr   nc, .afterAllFaded                                         ; $5092

; Else every 8 frames, fade all palettes
	and  $07                                                        ; $5094
	ret  nz                                                         ; $5096

	ldbc $00, $40                                                   ; $5097
	jp   FadePalettesAndSetRangeToUpdate                            ; $509a

.afterAllFaded:
; Update all palettes to the final colors
	ld   a, BANK(Palettes_AllWhite)                                 ; $509d
	ld   hl, Palettes_AllWhite                                      ; $509f
	ld   de, wBGPalettes                                            ; $50a2
	ld   bc, NUM_PALETTE_BYTES * 2                                  ; $50a5
	call FarMemCopy                                                 ; $50a8

	ldbc $00, $3f                                                   ; $50ab
	call SetBGandOBJPaletteRangesToUpdate                           ; $50ae

; Mute sound, inc anim step and clear misc counter
	xor  a                                                          ; $50b1
	call PlaySong                                                   ; $50b2

	ld   hl, wFileLoadDisplayAnimationStep                          ; $50b5
	inc  [hl]                                                       ; $50b8

	xor  a                                                          ; $50b9
	ld   [wFileLoadDisplayMiscCounterIdx], a                        ; $50ba
	ret                                                             ; $50bd


FileLoadDisplayAnimationHandler4_ToNextState:
; Go to next state if we should skip..
	ld   a, [wFileLoadDisplayShouldSkip]                            ; $50be
	or   a                                                          ; $50c1
	jr   nz, .toNextState                                           ; $50c2

; Else inc misc counter, returning if >= $1e (bug: should be ret c)
	ld   hl, wFileLoadDisplayMiscCounterIdx                         ; $50c4
	ld   a, [hl]                                                    ; $50c7
	inc  [hl]                                                       ; $50c8
	cp   $1e                                                        ; $50c9
	ret  nc                                                         ; $50cb

.toNextState:
	ld   a, $38                                      ; $50cc: $3e $38
	ld   [wGameState], a                                  ; $50ce: $ea $a0 $c2

	xor  a                                           ; $50d1: $af
	ld   [wGameSubstate], a                                  ; $50d2: $ea $a1 $c2
	ret                                              ; $50d5: $c9



GameState3d::
	ld   a, [wGameSubstate]                                  ; $50d6: $fa $a1 $c2
	or   a                                           ; $50d9: $b7
	jp   nz, Jump_00c_5185                           ; $50da: $c2 $85 $51

	call ClearDisplayRegsAllowVBlankInt                                       ; $50dd: $cd $59 $0b
	ld   a, [wLCDC]                                  ; $50e0: $fa $03 $c2
	and  $e0                                         ; $50e3: $e6 $e0
	or   $87                                         ; $50e5: $f6 $87
	ld   [wLCDC], a                                  ; $50e7: $ea $03 $c2
	ldh  [rLCDC], a                                  ; $50ea: $e0 $40
	ld   a, BANK(Palettes_AllWhite)                                      ; $50ec: $3e $01
	ld   hl, Palettes_AllWhite                                   ; $50ee: $21 $00 $70
	ld   de, wBGPalettes                                   ; $50f1: $11 $de $c2
	ld   bc, $0080                                   ; $50f4: $01 $80 $00
	call FarMemCopy                                       ; $50f7: $cd $b2 $09
	ld   bc, $003f                                   ; $50fa: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $50fd: $cd $aa $04
	ld   a, $ff                                      ; $5100: $3e $ff
	ld   [wInGameInputsEnabled], a                                  ; $5102: $ea $0e $c2
	call ClearOam                                       ; $5105: $cd $d7 $0d
	call ClearBaseAnimSpriteSpecDetails                                       ; $5108: $cd $c9 $2e
	ld   a, [$cc23]                                  ; $510b: $fa $23 $cc
	call Call_00c_5363                               ; $510e: $cd $63 $53
	ld   bc, $000f                                   ; $5111: $01 $0f $00
	add  hl, bc                                      ; $5114: $09
	ld   a, [hl+]                                    ; $5115: $2a
	cp   $ff                                         ; $5116: $fe $ff
	jr   z, jr_00c_5179                              ; $5118: $28 $5f

	push hl                                          ; $511a: $e5
	push af                                          ; $511b: $f5
	ld   a, $00                                      ; $511c: $3e $00
	ld   hl, $0000                                   ; $511e: $21 $00 $00
	ld   d, h                                        ; $5121: $54
	ld   e, l                                        ; $5122: $5d
	call ReserveBaseAnimSpriteSpecAndInstance                                       ; $5123: $cd $4b $2f
	call StartAnimatingAnimatedSpriteSpec                                       ; $5126: $cd $14 $30
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $5129: $cd $76 $30
	ld   bc, $5020                                   ; $512c: $01 $20 $50
	ld   d, $0c                                      ; $512f: $16 $0c
	pop  af                                          ; $5131: $f1
	ld   e, a                                        ; $5132: $5f
	push af                                          ; $5133: $f5
	ld   a, $3c                                      ; $5134: $3e $3c
	ld   [wFarCallAddr], a                                  ; $5136: $ea $98 $c2
	ld   a, $40                                      ; $5139: $3e $40
	ld   [wFarCallAddr+1], a                                  ; $513b: $ea $99 $c2
	ld   a, $01                                      ; $513e: $3e $01
	ld   [wFarCallBank], a                                  ; $5140: $ea $9a $c2
	pop  af                                          ; $5143: $f1
	call FarCall                                       ; $5144: $cd $62 $09
	pop  hl                                          ; $5147: $e1
	ld   a, [hl+]                                    ; $5148: $2a
	cp   $ff                                         ; $5149: $fe $ff
	jr   z, jr_00c_5179                              ; $514b: $28 $2c

	push af                                          ; $514d: $f5
	ld   a, $00                                      ; $514e: $3e $00
	ld   hl, $0000                                   ; $5150: $21 $00 $00
	ld   d, h                                        ; $5153: $54
	ld   e, l                                        ; $5154: $5d
	call ReserveBaseAnimSpriteSpecAndInstance                                       ; $5155: $cd $4b $2f
	call StartAnimatingAnimatedSpriteSpec                                       ; $5158: $cd $14 $30
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $515b: $cd $76 $30
	ld   bc, $5020                                   ; $515e: $01 $20 $50
	ld   d, $0c                                      ; $5161: $16 $0c
	pop  af                                          ; $5163: $f1
	ld   e, a                                        ; $5164: $5f
	push af                                          ; $5165: $f5
	ld   a, $3c                                      ; $5166: $3e $3c
	ld   [wFarCallAddr], a                                  ; $5168: $ea $98 $c2
	ld   a, $40                                      ; $516b: $3e $40
	ld   [wFarCallAddr+1], a                                  ; $516d: $ea $99 $c2
	ld   a, $01                                      ; $5170: $3e $01
	ld   [wFarCallBank], a                                  ; $5172: $ea $9a $c2
	pop  af                                          ; $5175: $f1
	call FarCall                                       ; $5176: $cd $62 $09

jr_00c_5179:
	xor  a                                           ; $5179: $af
	ld   [$cc1f], a                                  ; $517a: $ea $1f $cc
	ld   [$cc20], a                                  ; $517d: $ea $20 $cc
	ld   hl, wGameSubstate                                   ; $5180: $21 $a1 $c2
	inc  [hl]                                        ; $5183: $34
	ret                                              ; $5184: $c9


Jump_00c_5185:
	call ClearOam                                       ; $5185: $cd $d7 $0d
	ld   bc, $519b                                   ; $5188: $01 $9b $51
	push bc                                          ; $518b: $c5
	ld   a, [$cc1f]                                  ; $518c: $fa $1f $cc
	ld   b, $00                                      ; $518f: $06 $00
	ld   c, a                                        ; $5191: $4f
	ld   hl, $519f                                   ; $5192: $21 $9f $51
	add  hl, bc                                      ; $5195: $09
	add  hl, bc                                      ; $5196: $09
	ld   a, [hl+]                                    ; $5197: $2a
	ld   h, [hl]                                     ; $5198: $66
	ld   l, a                                        ; $5199: $6f
	jp   hl                                          ; $519a: $e9


	call AnimateAllAnimatedSpriteSpecs                                       ; $519b: $cd $d3 $2e
	ret                                              ; $519e: $c9


	xor  c                                           ; $519f: $a9
	ld   d, c                                        ; $51a0: $51
	xor  c                                           ; $51a1: $a9
	ld   d, d                                        ; $51a2: $52
	xor  c                                           ; $51a3: $a9
	ld   d, d                                        ; $51a4: $52
	rst  $28                                         ; $51a5: $ef
	ld   d, d                                        ; $51a6: $52
	db   $fd                                         ; $51a7: $fd
	ld   d, d                                        ; $51a8: $52
	ld   a, [wWramBank]                                  ; $51a9: $fa $93 $c2
	push af                                          ; $51ac: $f5
	ld   a, $07                                      ; $51ad: $3e $07
	ld   [wWramBank], a                                  ; $51af: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $51b2: $e0 $70
	ld   bc, $51ca                                   ; $51b4: $01 $ca $51
	push bc                                          ; $51b7: $c5
	ld   hl, $cc51                                   ; $51b8: $21 $51 $cc
	ld   a, [hl]                                     ; $51bb: $7e
	inc  [hl]                                        ; $51bc: $34
	sla  a                                           ; $51bd: $cb $27
	ld   h, $00                                      ; $51bf: $26 $00
	ld   l, a                                        ; $51c1: $6f
	ld   bc, $51d1                                   ; $51c2: $01 $d1 $51
	add  hl, bc                                      ; $51c5: $09
	ld   a, [hl+]                                    ; $51c6: $2a
	ld   h, [hl]                                     ; $51c7: $66
	ld   l, a                                        ; $51c8: $6f
	jp   hl                                          ; $51c9: $e9


	pop  af                                          ; $51ca: $f1
	ld   [wWramBank], a                                  ; $51cb: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $51ce: $e0 $70
	ret                                              ; $51d0: $c9


	db   $db                                         ; $51d1: $db
	ld   d, c                                        ; $51d2: $51
	db   $fc                                         ; $51d3: $fc
	ld   d, c                                        ; $51d4: $51
	jr   nz, jr_00c_5229                             ; $51d5: $20 $52

	ld   d, h                                        ; $51d7: $54
	ld   d, d                                        ; $51d8: $52
	ld   h, h                                        ; $51d9: $64
	ld   d, d                                        ; $51da: $52
	ld   a, [$cc23]                                  ; $51db: $fa $23 $cc
	call Call_00c_5363                               ; $51de: $cd $63 $53
	ld   a, [hl+]                                    ; $51e1: $2a
	ld   e, a                                        ; $51e2: $5f
	ld   a, [hl+]                                    ; $51e3: $2a
	ld   d, a                                        ; $51e4: $57
	ld   a, [hl]                                     ; $51e5: $7e
	ld   hl, $d000                                   ; $51e6: $21 $00 $d0
	call RLEXorCopy                                       ; $51e9: $cd $d2 $09
	ld   c, $80                                      ; $51ec: $0e $80
	ld   de, $8000                                   ; $51ee: $11 $00 $80
	ld   a, $07                                      ; $51f1: $3e $07
	ld   hl, $d000                                   ; $51f3: $21 $00 $d0
	ld   b, $60                                      ; $51f6: $06 $60
	call EnqueueHDMATransfer                                       ; $51f8: $cd $7c $02
	ret                                              ; $51fb: $c9


	ld   a, [$cc23]                                  ; $51fc: $fa $23 $cc
	call Call_00c_5363                               ; $51ff: $cd $63 $53
	inc  hl                                          ; $5202: $23
	inc  hl                                          ; $5203: $23
	inc  hl                                          ; $5204: $23
	ld   a, [hl+]                                    ; $5205: $2a
	ld   e, a                                        ; $5206: $5f
	ld   a, [hl+]                                    ; $5207: $2a
	ld   d, a                                        ; $5208: $57
	ld   a, [hl]                                     ; $5209: $7e
	ld   hl, $d800                                   ; $520a: $21 $00 $d8
	call RLEXorCopy                                       ; $520d: $cd $d2 $09
	ld   c, $80                                      ; $5210: $0e $80
	ld   de, $8600                                   ; $5212: $11 $00 $86
	ld   a, $07                                      ; $5215: $3e $07
	ld   hl, $d600                                   ; $5217: $21 $00 $d6
	ld   b, $60                                      ; $521a: $06 $60
	call EnqueueHDMATransfer                                       ; $521c: $cd $7c $02
	ret                                              ; $521f: $c9


	ld   a, [$cc23]                                  ; $5220: $fa $23 $cc
	call Call_00c_5363                               ; $5223: $cd $63 $53
	ld   bc, $0006                                   ; $5226: $01 $06 $00

jr_00c_5229:
	add  hl, bc                                      ; $5229: $09
	ld   a, [hl+]                                    ; $522a: $2a
	ld   e, a                                        ; $522b: $5f
	ld   a, [hl+]                                    ; $522c: $2a
	ld   d, a                                        ; $522d: $57
	ld   a, [hl]                                     ; $522e: $7e
	ld   hl, $d000                                   ; $522f: $21 $00 $d0
	call RLEXorCopy                                       ; $5232: $cd $d2 $09
	ld   c, $80                                      ; $5235: $0e $80
	ld   de, $8c00                                   ; $5237: $11 $00 $8c
	ld   a, $07                                      ; $523a: $3e $07
	ld   hl, $dc00                                   ; $523c: $21 $00 $dc
	ld   b, $40                                      ; $523f: $06 $40
	call EnqueueHDMATransfer                                       ; $5241: $cd $7c $02
	ld   c, $80                                      ; $5244: $0e $80
	ld   de, $9000                                   ; $5246: $11 $00 $90
	ld   a, $07                                      ; $5249: $3e $07
	ld   hl, $d000                                   ; $524b: $21 $00 $d0
	ld   b, $20                                      ; $524e: $06 $20
	call EnqueueHDMATransfer                                       ; $5250: $cd $7c $02
	ret                                              ; $5253: $c9


	ld   c, $80                                      ; $5254: $0e $80
	ld   de, $9200                                   ; $5256: $11 $00 $92
	ld   a, $07                                      ; $5259: $3e $07
	ld   hl, $d200                                   ; $525b: $21 $00 $d2
	ld   b, $60                                      ; $525e: $06 $60
	call EnqueueHDMATransfer                                       ; $5260: $cd $7c $02
	ret                                              ; $5263: $c9


	ld   a, [$cc23]                                  ; $5264: $fa $23 $cc
	call Call_00c_5363                               ; $5267: $cd $63 $53
	ld   bc, $0009                                   ; $526a: $01 $09 $00
	add  hl, bc                                      ; $526d: $09
	ld   a, [hl+]                                    ; $526e: $2a
	ld   e, a                                        ; $526f: $5f
	ld   a, [hl+]                                    ; $5270: $2a
	ld   d, a                                        ; $5271: $57
	ld   a, [hl]                                     ; $5272: $7e
	ld   hl, $d000                                   ; $5273: $21 $00 $d0
	ld   bc, $1412                                   ; $5276: $01 $12 $14
	call FarCopyLayout                                       ; $5279: $cd $2c $0b
	ld   hl, $d400                                   ; $527c: $21 $00 $d4
	call FarCopyLayout                                       ; $527f: $cd $2c $0b
	ld   c, $81                                      ; $5282: $0e $81
	ld   de, $9800                                   ; $5284: $11 $00 $98
	ld   a, $07                                      ; $5287: $3e $07
	ld   hl, $d000                                   ; $5289: $21 $00 $d0
	ld   b, $24                                      ; $528c: $06 $24
	call EnqueueHDMATransfer                                       ; $528e: $cd $7c $02
	ld   c, $80                                      ; $5291: $0e $80
	ld   de, $9800                                   ; $5293: $11 $00 $98
	ld   a, $07                                      ; $5296: $3e $07
	ld   hl, $d400                                   ; $5298: $21 $00 $d4
	ld   b, $24                                      ; $529b: $06 $24
	call EnqueueHDMATransfer                                       ; $529d: $cd $7c $02

Jump_00c_52a0:
	ld   hl, $cc1f                                   ; $52a0: $21 $1f $cc
	inc  [hl]                                        ; $52a3: $34
	xor  a                                           ; $52a4: $af
	ld   [$cc20], a                                  ; $52a5: $ea $20 $cc
	ret                                              ; $52a8: $c9


	ld   a, [$cc20]                                  ; $52a9: $fa $20 $cc
	or   a                                           ; $52ac: $b7
	jr   nz, jr_00c_52c8                             ; $52ad: $20 $19

	call Call_00c_53fd                               ; $52af: $cd $fd $53
	ld   d, h                                        ; $52b2: $54
	ld   e, l                                        ; $52b3: $5d
	ld   c, a                                        ; $52b4: $4f
	xor  a                                           ; $52b5: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $52b6: $ea $62 $c3
	ld   a, $40                                      ; $52b9: $3e $40
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $52bb: $ea $63 $c3
	ld   a, $02                                      ; $52be: $3e $02
	ld   b, $00                                      ; $52c0: $06 $00
	ld   hl, wBGPalettes                                   ; $52c2: $21 $de $c2
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $52c5: $cd $48 $07

jr_00c_52c8:
	ld   hl, $cc20                                   ; $52c8: $21 $20 $cc
	ld   a, [hl]                                     ; $52cb: $7e
	inc  [hl]                                        ; $52cc: $34
	cp   $0f                                         ; $52cd: $fe $0f
	jr   nc, jr_00c_52da                             ; $52cf: $30 $09

	and  $03                                         ; $52d1: $e6 $03
	ret  nz                                          ; $52d3: $c0

	ld   bc, $0040                                   ; $52d4: $01 $40 $00
	jp   FadePalettesAndSetRangeToUpdate                                       ; $52d7: $c3 $32 $08


jr_00c_52da:
	call Call_00c_53fd                               ; $52da: $cd $fd $53
	ld   de, wBGPalettes                                   ; $52dd: $11 $de $c2
	ld   bc, $0080                                   ; $52e0: $01 $80 $00
	call FarMemCopy                                       ; $52e3: $cd $b2 $09
	ld   bc, $003f                                   ; $52e6: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $52e9: $cd $aa $04
	jp   Jump_00c_52a0                               ; $52ec: $c3 $a0 $52


	ld   a, [wInGameButtonsPressed]                                  ; $52ef: $fa $10 $c2
	and  $03                                         ; $52f2: $e6 $03
	ret  z                                           ; $52f4: $c8

	ld   a, $22                                      ; $52f5: $3e $22
	call PlaySoundEffect                                       ; $52f7: $cd $df $1a
	jp   Jump_00c_52a0                               ; $52fa: $c3 $a0 $52


	ld   a, [$cc20]                                  ; $52fd: $fa $20 $cc
	or   a                                           ; $5300: $b7
	jr   nz, jr_00c_531b                             ; $5301: $20 $18

	xor  a                                           ; $5303: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $5304: $ea $62 $c3
	ld   a, $40                                      ; $5307: $3e $40
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $5309: $ea $63 $c3
	ld   a, $02                                      ; $530c: $3e $02
	ld   b, $00                                      ; $530e: $06 $00
	ld   hl, wBGPalettes                                   ; $5310: $21 $de $c2
	ld   c, $01                                      ; $5313: $0e $01
	ld   de, $7000                                   ; $5315: $11 $00 $70
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $5318: $cd $48 $07

jr_00c_531b:
	ld   hl, $cc20                                   ; $531b: $21 $20 $cc
	ld   a, [hl]                                     ; $531e: $7e
	inc  [hl]                                        ; $531f: $34
	cp   $0f                                         ; $5320: $fe $0f
	jr   nc, jr_00c_532d                             ; $5322: $30 $09

	and  $03                                         ; $5324: $e6 $03
	ret  nz                                          ; $5326: $c0

	ld   bc, $0040                                   ; $5327: $01 $40 $00
	jp   FadePalettesAndSetRangeToUpdate                                       ; $532a: $c3 $32 $08


jr_00c_532d:
	ld   a, BANK(Palettes_AllWhite)                                      ; $532d: $3e $01
	ld   hl, Palettes_AllWhite                                   ; $532f: $21 $00 $70
	ld   de, wBGPalettes                                   ; $5332: $11 $de $c2
	ld   bc, $0080                                   ; $5335: $01 $80 $00
	call FarMemCopy                                       ; $5338: $cd $b2 $09
	ld   bc, $003f                                   ; $533b: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $533e: $cd $aa $04
	ld   a, [$cc21]                                  ; $5341: $fa $21 $cc
	ld   [wGameState], a                                  ; $5344: $ea $a0 $c2
	ld   a, [$cc22]                                  ; $5347: $fa $22 $cc
	ld   [wGameSubstate], a                                  ; $534a: $ea $a1 $c2
	ret                                              ; $534d: $c9


Func_0c_534e::
	ld   [$cc23], a                                  ; $534e: $ea $23 $cc
	ld   a, h                                        ; $5351: $7c
	ld   [$cc21], a                                  ; $5352: $ea $21 $cc
	ld   a, l                                        ; $5355: $7d
	ld   [$cc22], a                                  ; $5356: $ea $22 $cc
	ld   a, $3d                                      ; $5359: $3e $3d
	ld   [wGameState], a                                  ; $535b: $ea $a0 $c2
	xor  a                                           ; $535e: $af
	ld   [wGameSubstate], a                                  ; $535f: $ea $a1 $c2
	ret                                              ; $5362: $c9


Call_00c_5363:
	push bc                                          ; $5363: $c5
	dec  a                                           ; $5364: $3d
	ld   b, $00                                      ; $5365: $06 $00
	ld   c, a                                        ; $5367: $4f
	ld   h, b                                        ; $5368: $60
	ld   l, c                                        ; $5369: $69
	add  hl, hl                                      ; $536a: $29
	add  hl, hl                                      ; $536b: $29
	add  hl, hl                                      ; $536c: $29
	add  hl, hl                                      ; $536d: $29
	add  hl, bc                                      ; $536e: $09
	ld   bc, $5375                                   ; $536f: $01 $75 $53
	add  hl, bc                                      ; $5372: $09
	pop  bc                                          ; $5373: $c1
	ret                                              ; $5374: $c9


	and  c                                           ; $5375: $a1
	ld   l, [hl]                                     ; $5376: $6e
	sbc  [hl]                                        ; $5377: $9e
	ld   e, b                                        ; $5378: $58
	ld   c, e                                        ; $5379: $4b
	sbc  b                                           ; $537a: $98
	daa                                              ; $537b: $27
	ld   l, e                                        ; $537c: $6b
	sbc  [hl]                                        ; $537d: $9e
	ld   a, $51                                      ; $537e: $3e $51
	and  b                                           ; $5380: $a0
	ld   c, h                                        ; $5381: $4c
	ld   l, c                                        ; $5382: $69
	and  e                                           ; $5383: $a3
	nop                                              ; $5384: $00
	ld   bc, $6b0b                                   ; $5385: $01 $0b $6b
	and  c                                           ; $5388: $a1
	ld   [hl+], a                                    ; $5389: $22
	ld   [hl], h                                     ; $538a: $74
	sub  h                                           ; $538b: $94
	db   $ed                                         ; $538c: $ed
	ld   l, c                                        ; $538d: $69
	sbc  l                                           ; $538e: $9d
	ld   c, $54                                      ; $538f: $0e $54
	and  b                                           ; $5391: $a0
	call z, $a369                                    ; $5392: $cc $69 $a3
	ld   [bc], a                                     ; $5395: $02
	rst  $38                                         ; $5396: $ff
	ld   l, a                                        ; $5397: $6f
	ld   h, c                                        ; $5398: $61
	and  c                                           ; $5399: $a1
	add  hl, bc                                      ; $539a: $09
	ld   a, d                                        ; $539b: $7a
	sub  c                                           ; $539c: $91
	ld   e, a                                        ; $539d: $5f
	ld   d, b                                        ; $539e: $50
	sbc  a                                           ; $539f: $9f
	sbc  $56                                         ; $53a0: $de $56
	and  b                                           ; $53a2: $a0
	ld   c, h                                        ; $53a3: $4c
	ld   l, d                                        ; $53a4: $6a
	and  e                                           ; $53a5: $a3
	inc  bc                                          ; $53a6: $03
	rst  $38                                         ; $53a7: $ff
	sbc  e                                           ; $53a8: $9b
	ld   d, e                                        ; $53a9: $53
	sbc  a                                           ; $53aa: $9f
	nop                                              ; $53ab: $00
	ld   b, b                                        ; $53ac: $40
	sub  [hl]                                        ; $53ad: $96
	ld   l, b                                        ; $53ae: $68
	ld   b, a                                        ; $53af: $47
	sbc  [hl]                                        ; $53b0: $9e
	xor  [hl]                                        ; $53b1: $ae
	ld   e, c                                        ; $53b2: $59
	and  b                                           ; $53b3: $a0
	call z, $a36a                                    ; $53b4: $cc $6a $a3
	inc  b                                           ; $53b7: $04
	dec  b                                           ; $53b8: $05
	add  sp, $4f                                     ; $53b9: $e8 $4f
	and  c                                           ; $53bb: $a1
	jp   nc, $9668                                   ; $53bc: $d2 $68 $96

	ld   [hl], b                                     ; $53bf: $70
	ld   [hl], c                                     ; $53c0: $71
	sbc  l                                           ; $53c1: $9d
	ld   a, [hl]                                     ; $53c2: $7e
	ld   e, h                                        ; $53c3: $5c
	and  b                                           ; $53c4: $a0
	ld   c, h                                        ; $53c5: $4c
	ld   l, e                                        ; $53c6: $6b
	and  e                                           ; $53c7: $a3
	ld   b, $07                                      ; $53c8: $06 $07
	ld   d, a                                        ; $53ca: $57
	ld   c, a                                        ; $53cb: $4f
	sbc  l                                           ; $53cc: $9d
	ld   e, b                                        ; $53cd: $58
	ld   e, [hl]                                     ; $53ce: $5e
	sub  h                                           ; $53cf: $94
	add  d                                           ; $53d0: $82
	ld   a, e                                        ; $53d1: $7b
	sbc  a                                           ; $53d2: $9f
	ld   c, [hl]                                     ; $53d3: $4e
	ld   e, a                                        ; $53d4: $5f
	and  b                                           ; $53d5: $a0
	call z, $a36b                                    ; $53d6: $cc $6b $a3
	ld   [$9209], sp                                 ; $53d9: $08 $09 $92
	ld   a, l                                        ; $53dc: $7d
	sbc  e                                           ; $53dd: $9b
	jp   hl                                          ; $53de: $e9


	ld   e, c                                        ; $53df: $59
	sub  a                                           ; $53e0: $97
	and  b                                           ; $53e1: $a0
	ld   a, h                                        ; $53e2: $7c
	sbc  l                                           ; $53e3: $9d
	ld   e, $62                                      ; $53e4: $1e $62
	and  b                                           ; $53e6: $a0
	ld   c, h                                        ; $53e7: $4c
	ld   l, h                                        ; $53e8: $6c
	and  e                                           ; $53e9: $a3
	ld   a, [bc]                                     ; $53ea: $0a
	dec  bc                                          ; $53eb: $0b
	rst  ToBoot                                         ; $53ec: $c7
	ld   a, d                                        ; $53ed: $7a
	and  c                                           ; $53ee: $a1
	ld   a, a                                        ; $53ef: $7f
	ld   h, [hl]                                     ; $53f0: $66
	sub  a                                           ; $53f1: $97
	db   $ed                                         ; $53f2: $ed
	ld   a, [hl]                                     ; $53f3: $7e
	sub  l                                           ; $53f4: $95
	xor  $64                                         ; $53f5: $ee $64
	and  b                                           ; $53f7: $a0
	call z, $a36c                                    ; $53f8: $cc $6c $a3
	inc  c                                           ; $53fb: $0c
	rst  $38                                         ; $53fc: $ff

Call_00c_53fd:
	ld   a, [$cc23]                                  ; $53fd: $fa $23 $cc
	call Call_00c_5363                               ; $5400: $cd $63 $53
	ld   bc, $000c                                   ; $5403: $01 $0c $00
	add  hl, bc                                      ; $5406: $09
	ld   a, [hl+]                                    ; $5407: $2a
	ld   c, a                                        ; $5408: $4f
	ld   a, [hl+]                                    ; $5409: $2a
	ld   b, a                                        ; $540a: $47
	ld   a, [hl]                                     ; $540b: $7e
	ld   h, b                                        ; $540c: $60
	ld   l, c                                        ; $540d: $69
	ret                                              ; $540e: $c9


GameState3e::
	ld   a, [wGameSubstate]                                  ; $540f: $fa $a1 $c2
	or   a                                           ; $5412: $b7
	jp   nz, Jump_00c_55ac                           ; $5413: $c2 $ac $55

	ld   a, [wWramBank]                                  ; $5416: $fa $93 $c2
	push af                                          ; $5419: $f5
	ld   a, $02                                      ; $541a: $3e $02
	ld   [wWramBank], a                                  ; $541c: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $541f: $e0 $70
	call TurnOffLCD                                       ; $5421: $cd $e3 $08
	ld   a, $00                                      ; $5424: $3e $00
	call SafeSetAudVolForMultipleChannels                                       ; $5426: $cd $e0 $1c
	call ClearDisplayRegsAllowVBlankInt                                       ; $5429: $cd $59 $0b
	ld   a, [wLCDC]                                  ; $542c: $fa $03 $c2
	and  $e0                                         ; $542f: $e6 $e0
	or   $07                                         ; $5431: $f6 $07
	ld   [wLCDC], a                                  ; $5433: $ea $03 $c2
	ld   a, $ff                                      ; $5436: $3e $ff
	ld   [wInGameInputsEnabled], a                                  ; $5438: $ea $0e $c2
	call ClearOam                                       ; $543b: $cd $d7 $0d
	call ClearBaseAnimSpriteSpecDetails                                       ; $543e: $cd $c9 $2e
	ld   a, $01                                      ; $5441: $3e $01
	ldh  [rVBK], a                                   ; $5443: $e0 $4f
	ld   a, $a0                                      ; $5445: $3e $a0
	ld   de, $4b9e                                   ; $5447: $11 $9e $4b
	ld   hl, $9800                                   ; $544a: $21 $00 $98
	ld   bc, $1412                                   ; $544d: $01 $12 $14
	call FarCopyLayout                                       ; $5450: $cd $2c $0b
	xor  a                                           ; $5453: $af
	ldh  [rVBK], a                                   ; $5454: $e0 $4f
	ld   a, $a0                                      ; $5456: $3e $a0
	ld   hl, $9800                                   ; $5458: $21 $00 $98
	call FarCopyLayout                                       ; $545b: $cd $2c $0b
	ld   a, $92                                      ; $545e: $3e $92
	ld   hl, $8000                                   ; $5460: $21 $00 $80
	ld   de, $6110                                   ; $5463: $11 $10 $61
	call RLEXorCopy                                       ; $5466: $cd $d2 $09
	ld   hl, $9500                                   ; $5469: $21 $00 $95
	ld   bc, $0120                                   ; $546c: $01 $20 $01
	ld   de, $0000                                   ; $546f: $11 $00 $00
	call CopyEthenDintoHL_BCtimes                                       ; $5472: $cd $9f $09
	ld   a, BANK(Palettes_AllWhite)                                      ; $5475: $3e $01
	ld   hl, Palettes_AllWhite                                   ; $5477: $21 $00 $70
	ld   de, wBGPalettes                                   ; $547a: $11 $de $c2
	ld   bc, $0080                                   ; $547d: $01 $80 $00
	call FarMemCopy                                       ; $5480: $cd $b2 $09
	ld   bc, $003f                                   ; $5483: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $5486: $cd $aa $04
	ld   a, $01                                      ; $5489: $3e $01
	ldh  [rVBK], a                                   ; $548b: $e0 $4f
	ld   de, $d0c0                                   ; $548d: $11 $c0 $d0
	ld   hl, $9940                                   ; $5490: $21 $40 $99
	ld   bc, $0040                                   ; $5493: $01 $40 $00
	call MemCopy                                       ; $5496: $cd $a9 $09
	ld   de, $d240                                   ; $5499: $11 $40 $d2
	ld   hl, $99a0                                   ; $549c: $21 $a0 $99
	ld   bc, $0040                                   ; $549f: $01 $40 $00
	call MemCopy                                       ; $54a2: $cd $a9 $09
	xor  a                                           ; $54a5: $af
	ldh  [rVBK], a                                   ; $54a6: $e0 $4f
	ld   de, $d100                                   ; $54a8: $11 $00 $d1
	ld   hl, $9940                                   ; $54ab: $21 $40 $99
	ld   bc, $0040                                   ; $54ae: $01 $40 $00
	call MemCopy                                       ; $54b1: $cd $a9 $09
	ld   a, $90                                      ; $54b4: $3e $90
	ld   b, $01                                      ; $54b6: $06 $01
	ld   c, $89                                      ; $54b8: $0e $89
	ld   de, $0600                                   ; $54ba: $11 $00 $06
	ld   hl, $9800                                   ; $54bd: $21 $00 $98
	push af                                          ; $54c0: $f5
	ld   a, $79                                      ; $54c1: $3e $79
	ld   [wFarCallAddr], a                                  ; $54c3: $ea $98 $c2
	ld   a, $5b                                      ; $54c6: $3e $5b
	ld   [wFarCallAddr+1], a                                  ; $54c8: $ea $99 $c2
	ld   a, $0c                                      ; $54cb: $3e $0c
	ld   [wFarCallBank], a                                  ; $54cd: $ea $9a $c2
	pop  af                                          ; $54d0: $f1
	call FarCall                                       ; $54d1: $cd $62 $09
	ld   de, $c602                                   ; $54d4: $11 $02 $c6
	ld   hl, $55a0                                   ; $54d7: $21 $a0 $55
	ld   bc, $0040                                   ; $54da: $01 $40 $00
	call MemCopy                                       ; $54dd: $cd $a9 $09
	ld   de, $c642                                   ; $54e0: $11 $42 $c6
	ld   hl, $5598                                   ; $54e3: $21 $98 $55
	ld   bc, $0008                                   ; $54e6: $01 $08 $00
	call MemCopy                                       ; $54e9: $cd $a9 $09
	ld   a, $02                                      ; $54ec: $3e $02
	ld   hl, $0000                                   ; $54ee: $21 $00 $00
	ld   de, $c642                                   ; $54f1: $11 $42 $c6
	call ReserveBaseAnimSpriteSpecAndInstance                                       ; $54f4: $cd $4b $2f
	ld   [$cc33], a                                  ; $54f7: $ea $33 $cc
	call StartAnimatingAnimatedSpriteSpec                                       ; $54fa: $cd $14 $30
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $54fd: $cd $76 $30
	push af                                          ; $5500: $f5
	ld   a, $a0                                      ; $5501: $3e $a0
	ld   [wFarCallAddr], a                                  ; $5503: $ea $98 $c2
	ld   a, $44                                      ; $5506: $3e $44
	ld   [wFarCallAddr+1], a                                  ; $5508: $ea $99 $c2
	ld   a, $01                                      ; $550b: $3e $01
	ld   [wFarCallBank], a                                  ; $550d: $ea $9a $c2
	pop  af                                          ; $5510: $f1
	call FarCall                                       ; $5511: $cd $62 $09
	ld   a, $20                                      ; $5514: $3e $20
	ld   b, $21                                      ; $5516: $06 $21
	ld   c, $22                                      ; $5518: $0e $22
	push af                                          ; $551a: $f5
	ld   a, $ab                                      ; $551b: $3e $ab
	ld   [wFarCallAddr], a                                  ; $551d: $ea $98 $c2
	ld   a, $44                                      ; $5520: $3e $44
	ld   [wFarCallAddr+1], a                                  ; $5522: $ea $99 $c2
	ld   a, $01                                      ; $5525: $3e $01
	ld   [wFarCallBank], a                                  ; $5527: $ea $9a $c2
	pop  af                                          ; $552a: $f1
	call FarCall                                       ; $552b: $cd $62 $09
	ld   a, $01                                      ; $552e: $3e $01
	ld   hl, $0000                                   ; $5530: $21 $00 $00
	ld   d, h                                        ; $5533: $54
	ld   e, l                                        ; $5534: $5d
	call ReserveBaseAnimSpriteSpecAndInstance                                       ; $5535: $cd $4b $2f
	ld   [$cc32], a                                  ; $5538: $ea $32 $cc
	call StartAnimatingAnimatedSpriteSpec                                       ; $553b: $cd $14 $30
	ld   a, $01                                      ; $553e: $3e $01
	ld   hl, $0000                                   ; $5540: $21 $00 $00
	ld   d, h                                        ; $5543: $54
	ld   e, l                                        ; $5544: $5d
	call ReserveBaseAnimSpriteSpecAndInstance                                       ; $5545: $cd $4b $2f
	ld   [$cc35], a                                  ; $5548: $ea $35 $cc
	ld   a, $01                                      ; $554b: $3e $01
	ld   hl, $0000                                   ; $554d: $21 $00 $00
	ld   d, h                                        ; $5550: $54
	ld   e, l                                        ; $5551: $5d
	call ReserveBaseAnimSpriteSpecAndInstance                                       ; $5552: $cd $4b $2f
	ld   [$cc36], a                                  ; $5555: $ea $36 $cc
	call InitWideTextBoxDimensions                                       ; $5558: $cd $ec $0f
	ld   bc, $1201                                   ; $555b: $01 $01 $12
	call SetKanjiTextBoxDimensions                                       ; $555e: $cd $24 $14
	ld   a, $07                                      ; $5561: $3e $07
	call SafeSetAudVolForMultipleChannels                                       ; $5563: $cd $e0 $1c
	call TurnOnLCD                                       ; $5566: $cd $09 $09
	xor  a                                           ; $5569: $af
	ld   [$cc37], a                                  ; $556a: $ea $37 $cc
	call Call_00c_5a45                               ; $556d: $cd $45 $5a
	ld   a, $03                                      ; $5570: $3e $03
	ld   hl, $dcd0                                   ; $5572: $21 $d0 $dc
	ld   [hl+], a                                    ; $5575: $22
	ld   [hl+], a                                    ; $5576: $22
	ld   [hl+], a                                    ; $5577: $22
	ld   [hl+], a                                    ; $5578: $22
	ld   [hl+], a                                    ; $5579: $22
	ld   [hl+], a                                    ; $557a: $22
	ld   [hl+], a                                    ; $557b: $22
	ld   [hl+], a                                    ; $557c: $22
	xor  a                                           ; $557d: $af
	ld   hl, $afe1                                   ; $557e: $21 $e1 $af
	ld   [hl+], a                                    ; $5581: $22
	ld   [hl+], a                                    ; $5582: $22
	ld   [hl+], a                                    ; $5583: $22
	ld   [hl+], a                                    ; $5584: $22
	ld   [hl+], a                                    ; $5585: $22
	xor  a                                           ; $5586: $af
	ld   [$cc28], a                                  ; $5587: $ea $28 $cc
	ld   [$cc29], a                                  ; $558a: $ea $29 $cc
	ld   hl, wGameSubstate                                   ; $558d: $21 $a1 $c2
	inc  [hl]                                        ; $5590: $34
	pop  af                                          ; $5591: $f1
	ld   [wWramBank], a                                  ; $5592: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5595: $e0 $70
	ret                                              ; $5597: $c9


	ld   h, l                                        ; $5598: $65
	nop                                              ; $5599: $00
	ld   b, $01                                      ; $559a: $06 $01
	nop                                              ; $559c: $00
	ld   h, d                                        ; $559d: $62
	ld   [hl], a                                     ; $559e: $77
	ld   de, $6820                                   ; $559f: $11 $20 $68
	jr   nc, @+$6a                                   ; $55a2: $30 $68

	ld   b, b                                        ; $55a4: $40
	ld   l, b                                        ; $55a5: $68
	ld   d, b                                        ; $55a6: $50
	ld   l, b                                        ; $55a7: $68
	ld   h, b                                        ; $55a8: $60
	ld   l, b                                        ; $55a9: $68
	ld   [hl], b                                     ; $55aa: $70
	ld   l, b                                        ; $55ab: $68

Jump_00c_55ac:
	ld   a, [wWramBank]                                  ; $55ac: $fa $93 $c2
	push af                                          ; $55af: $f5
	ld   a, $02                                      ; $55b0: $3e $02
	ld   [wWramBank], a                                  ; $55b2: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $55b5: $e0 $70
	call ClearOam                                       ; $55b7: $cd $d7 $0d
	ld   hl, $afd0                                   ; $55ba: $21 $d0 $af
	push af                                          ; $55bd: $f5
	ld   a, $cb                                      ; $55be: $3e $cb
	ld   [wFarCallAddr], a                                  ; $55c0: $ea $98 $c2
	ld   a, $5b                                      ; $55c3: $3e $5b
	ld   [wFarCallAddr+1], a                                  ; $55c5: $ea $99 $c2
	ld   a, $0c                                      ; $55c8: $3e $0c
	ld   [wFarCallBank], a                                  ; $55ca: $ea $9a $c2
	pop  af                                          ; $55cd: $f1
	call FarCall                                       ; $55ce: $cd $62 $09
	ld   bc, $55e4                                   ; $55d1: $01 $e4 $55
	push bc                                          ; $55d4: $c5
	ld   a, [$cc28]                                  ; $55d5: $fa $28 $cc
	ld   b, $00                                      ; $55d8: $06 $00
	ld   c, a                                        ; $55da: $4f
	ld   hl, $55ee                                   ; $55db: $21 $ee $55
	add  hl, bc                                      ; $55de: $09
	add  hl, bc                                      ; $55df: $09
	ld   a, [hl+]                                    ; $55e0: $2a
	ld   h, [hl]                                     ; $55e1: $66
	ld   l, a                                        ; $55e2: $6f
	jp   hl                                          ; $55e3: $e9


	call AnimateAllAnimatedSpriteSpecs                                       ; $55e4: $cd $d3 $2e
	pop  af                                          ; $55e7: $f1
	ld   [wWramBank], a                                  ; $55e8: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $55eb: $e0 $70
	ret                                              ; $55ed: $c9


	cp   $55                                         ; $55ee: $fe $55
	ld   h, l                                        ; $55f0: $65
	ld   d, [hl]                                     ; $55f1: $56
	xor  h                                           ; $55f2: $ac
	ld   d, a                                        ; $55f3: $57
	rlca                                             ; $55f4: $07
	ld   e, b                                        ; $55f5: $58
	ld   c, [hl]                                     ; $55f6: $4e
	ld   e, b                                        ; $55f7: $58
	inc  e                                           ; $55f8: $1c
	ld   e, c                                        ; $55f9: $59
	ld   a, h                                        ; $55fa: $7c
	ld   e, c                                        ; $55fb: $59
	ldh  [c], a                                      ; $55fc: $e2
	ld   e, c                                        ; $55fd: $59
	ld   a, [$cc29]                                  ; $55fe: $fa $29 $cc
	or   a                                           ; $5601: $b7
	jr   nz, jr_00c_561c                             ; $5602: $20 $18

	xor  a                                           ; $5604: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $5605: $ea $62 $c3
	ld   a, $40                                      ; $5608: $3e $40
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $560a: $ea $63 $c3
	ld   a, $03                                      ; $560d: $3e $03
	ld   b, $00                                      ; $560f: $06 $00
	ld   hl, wBGPalettes                                   ; $5611: $21 $de $c2
	ld   c, $9e                                      ; $5614: $0e $9e
	ld   de, $7f70                                   ; $5616: $11 $70 $7f
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $5619: $cd $48 $07

jr_00c_561c:
	ld   hl, $cc29                                   ; $561c: $21 $29 $cc
	ld   a, [hl]                                     ; $561f: $7e
	inc  [hl]                                        ; $5620: $34
	cp   $1f                                         ; $5621: $fe $1f
	jr   nc, jr_00c_562e                             ; $5623: $30 $09

	and  $03                                         ; $5625: $e6 $03
	ret  nz                                          ; $5627: $c0

	ld   bc, $0040                                   ; $5628: $01 $40 $00
	jp   FadePalettesAndSetRangeToUpdate                                       ; $562b: $c3 $32 $08


jr_00c_562e:
	ld   a, $9e                                      ; $562e: $3e $9e
	ld   hl, $7f70                                   ; $5630: $21 $70 $7f
	ld   de, wBGPalettes                                   ; $5633: $11 $de $c2
	ld   bc, $0080                                   ; $5636: $01 $80 $00
	call FarMemCopy                                       ; $5639: $cd $b2 $09
	ld   bc, $003f                                   ; $563c: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $563f: $cd $aa $04
	ld   a, [$cc33]                                  ; $5642: $fa $33 $cc
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $5645: $cd $76 $30
	push af                                          ; $5648: $f5
	ld   a, $95                                      ; $5649: $3e $95
	ld   [wFarCallAddr], a                                  ; $564b: $ea $98 $c2
	ld   a, $44                                      ; $564e: $3e $44
	ld   [wFarCallAddr+1], a                                  ; $5650: $ea $99 $c2
	ld   a, $01                                      ; $5653: $3e $01
	ld   [wFarCallBank], a                                  ; $5655: $ea $9a $c2
	pop  af                                          ; $5658: $f1
	call FarCall                                       ; $5659: $cd $62 $09
	ld   hl, $cc28                                   ; $565c: $21 $28 $cc
	inc  [hl]                                        ; $565f: $34
	xor  a                                           ; $5660: $af
	ld   [$cc29], a                                  ; $5661: $ea $29 $cc
	ret                                              ; $5664: $c9


	ld   a, [$cc33]                                  ; $5665: $fa $33 $cc
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $5668: $cd $76 $30
	push af                                          ; $566b: $f5
	ld   a, $0a                                      ; $566c: $3e $0a
	ld   [wFarCallAddr], a                                  ; $566e: $ea $98 $c2
	ld   a, $45                                      ; $5671: $3e $45
	ld   [wFarCallAddr+1], a                                  ; $5673: $ea $99 $c2
	ld   a, $01                                      ; $5676: $3e $01
	ld   [wFarCallBank], a                                  ; $5678: $ea $9a $c2
	pop  af                                          ; $567b: $f1
	call FarCall                                       ; $567c: $cd $62 $09
	or   a                                           ; $567f: $b7
	jr   nz, jr_00c_56c4                             ; $5680: $20 $42

	push hl                                          ; $5682: $e5
	ld   hl, $d340                                   ; $5683: $21 $40 $d3
	ld   bc, $0120                                   ; $5686: $01 $20 $01
	ld   de, $0000                                   ; $5689: $11 $00 $00
	call CopyEthenDintoHL_BCtimes                                       ; $568c: $cd $9f $09
	ld   bc, $0000                                   ; $568f: $01 $00 $00
	call SetCurrKanjiColAndRowToDrawOn                                       ; $5692: $cd $34 $14
	pop  hl                                          ; $5695: $e1
	push af                                          ; $5696: $f5
	ld   a, $00                                      ; $5697: $3e $00
	ld   [wFarCallAddr], a                                  ; $5699: $ea $98 $c2
	ld   a, $45                                      ; $569c: $3e $45
	ld   [wFarCallAddr+1], a                                  ; $569e: $ea $99 $c2
	ld   a, $01                                      ; $56a1: $3e $01
	ld   [wFarCallBank], a                                  ; $56a3: $ea $9a $c2
	pop  af                                          ; $56a6: $f1
	call FarCall                                       ; $56a7: $cd $62 $09
	inc  a                                           ; $56aa: $3c
	call Call_00c_5ac0                               ; $56ab: $cd $c0 $5a
	ld   hl, $d340                                   ; $56ae: $21 $40 $d3
	call LoadInstantText                                       ; $56b1: $cd $06 $13
	ld   c, $80                                      ; $56b4: $0e $80
	ld   de, $9500                                   ; $56b6: $11 $00 $95
	ld   a, $02                                      ; $56b9: $3e $02
	ld   hl, $d340                                   ; $56bb: $21 $40 $d3
	ld   b, $24                                      ; $56be: $06 $24
	call EnqueueHDMATransfer                                       ; $56c0: $cd $7c $02
	ret                                              ; $56c3: $c9


jr_00c_56c4:
	bit  7, a                                        ; $56c4: $cb $7f
	jr   z, jr_00c_56ec                              ; $56c6: $28 $24

	ld   a, [$cc37]                                  ; $56c8: $fa $37 $cc
	dec  a                                           ; $56cb: $3d
	bit  7, a                                        ; $56cc: $cb $7f
	ret  nz                                          ; $56ce: $c0

	ld   [$cc37], a                                  ; $56cf: $ea $37 $cc
	ld   l, a                                        ; $56d2: $6f
	ld   h, $00                                      ; $56d3: $26 $00
	ld   bc, $afe1                                   ; $56d5: $01 $e1 $af
	add  hl, bc                                      ; $56d8: $09
	ld   l, [hl]                                     ; $56d9: $6e
	ld   h, $00                                      ; $56da: $26 $00
	ld   bc, $dcd0                                   ; $56dc: $01 $d0 $dc
	add  hl, bc                                      ; $56df: $09
	inc  [hl]                                        ; $56e0: $34
	xor  a                                           ; $56e1: $af
	call Call_00c_572f                               ; $56e2: $cd $2f $57
	call Call_00c_5a45                               ; $56e5: $cd $45 $5a
	call Call_00c_5a8a                               ; $56e8: $cd $8a $5a
	ret                                              ; $56eb: $c9


jr_00c_56ec:
	ld   d, a                                        ; $56ec: $57
	ld   l, a                                        ; $56ed: $6f
	ld   h, $00                                      ; $56ee: $26 $00
	ld   bc, $dcd0                                   ; $56f0: $01 $d0 $dc
	add  hl, bc                                      ; $56f3: $09
	ld   a, [hl]                                     ; $56f4: $7e
	or   a                                           ; $56f5: $b7
	ret  z                                           ; $56f6: $c8

	dec  [hl]                                        ; $56f7: $35
	ld   a, [$cc37]                                  ; $56f8: $fa $37 $cc
	ld   l, a                                        ; $56fb: $6f
	ld   h, $00                                      ; $56fc: $26 $00
	ld   bc, $afe1                                   ; $56fe: $01 $e1 $af
	add  hl, bc                                      ; $5701: $09
	ld   [hl], d                                     ; $5702: $72
	ld   a, d                                        ; $5703: $7a
	call Call_00c_572f                               ; $5704: $cd $2f $57
	ld   a, [$cc37]                                  ; $5707: $fa $37 $cc
	inc  a                                           ; $570a: $3c
	ld   [$cc37], a                                  ; $570b: $ea $37 $cc
	call Call_00c_5a45                               ; $570e: $cd $45 $5a
	call Call_00c_5a8a                               ; $5711: $cd $8a $5a
	ld   a, [$cc37]                                  ; $5714: $fa $37 $cc
	cp   $05                                         ; $5717: $fe $05
	ret  c                                           ; $5719: $d8

	ld   a, [$cc33]                                  ; $571a: $fa $33 $cc
	call StopAnimatingAnimatedSpriteSpec                                       ; $571d: $cd $06 $30
	ld   a, [$cc35]                                  ; $5720: $fa $35 $cc
	call StopAnimatingAnimatedSpriteSpec                                       ; $5723: $cd $06 $30
	ld   hl, $cc28                                   ; $5726: $21 $28 $cc
	inc  [hl]                                        ; $5729: $34
	xor  a                                           ; $572a: $af
	ld   [$cc29], a                                  ; $572b: $ea $29 $cc
	ret                                              ; $572e: $c9


Call_00c_572f:
	ld   l, a                                        ; $572f: $6f
	sla  a                                           ; $5730: $cb $27
	sla  a                                           ; $5732: $cb $27
	add  l                                           ; $5734: $85
	ld   l, a                                        ; $5735: $6f
	ld   h, $00                                      ; $5736: $26 $00
	ld   bc, $5784                                   ; $5738: $01 $84 $57
	add  hl, bc                                      ; $573b: $09
	ld   d, h                                        ; $573c: $54
	ld   e, l                                        ; $573d: $5d
	ld   a, [$cc37]                                  ; $573e: $fa $37 $cc
	sla  a                                           ; $5741: $cb $27
	add  $03                                         ; $5743: $c6 $03
	ld   l, a                                        ; $5745: $6f
	ld   h, $00                                      ; $5746: $26 $00
	ld   bc, $d0c0                                   ; $5748: $01 $c0 $d0
	add  hl, bc                                      ; $574b: $09
	ld   bc, $0020                                   ; $574c: $01 $20 $00
	ld   a, [de]                                     ; $574f: $1a
	inc  de                                          ; $5750: $13
	ld   [hl+], a                                    ; $5751: $22
	ld   [hl-], a                                    ; $5752: $32
	add  hl, bc                                      ; $5753: $09
	ld   [hl+], a                                    ; $5754: $22
	ld   [hl-], a                                    ; $5755: $32
	add  hl, bc                                      ; $5756: $09
	ld   a, [de]                                     ; $5757: $1a
	inc  de                                          ; $5758: $13
	ld   [hl+], a                                    ; $5759: $22
	ld   a, [de]                                     ; $575a: $1a
	inc  de                                          ; $575b: $13
	ld   [hl-], a                                    ; $575c: $32
	add  hl, bc                                      ; $575d: $09
	ld   a, [de]                                     ; $575e: $1a
	inc  de                                          ; $575f: $13
	ld   [hl+], a                                    ; $5760: $22
	ld   a, [de]                                     ; $5761: $1a
	inc  de                                          ; $5762: $13
	ld   [hl-], a                                    ; $5763: $32
	add  hl, bc                                      ; $5764: $09
	ld   c, $81                                      ; $5765: $0e $81
	ld   de, $9940                                   ; $5767: $11 $40 $99
	ld   a, $02                                      ; $576a: $3e $02
	ld   hl, $d0c0                                   ; $576c: $21 $c0 $d0
	ld   b, $04                                      ; $576f: $06 $04
	call EnqueueHDMATransfer                                       ; $5771: $cd $7c $02
	ld   c, $80                                      ; $5774: $0e $80
	ld   de, $9940                                   ; $5776: $11 $40 $99
	ld   a, $02                                      ; $5779: $3e $02
	ld   hl, $d100                                   ; $577b: $21 $00 $d1
	ld   b, $04                                      ; $577e: $06 $04
	call EnqueueHDMATransfer                                       ; $5780: $cd $7c $02
	ret                                              ; $5783: $c9


	rlca                                             ; $5784: $07
	cp   b                                           ; $5785: $b8
	cp   d                                           ; $5786: $ba
	cp   c                                           ; $5787: $b9
	cp   e                                           ; $5788: $bb
	rlca                                             ; $5789: $07
	and  b                                           ; $578a: $a0
	and  d                                           ; $578b: $a2
	and  c                                           ; $578c: $a1
	and  e                                           ; $578d: $a3
	dec  b                                           ; $578e: $05
	and  h                                           ; $578f: $a4
	and  [hl]                                        ; $5790: $a6
	and  l                                           ; $5791: $a5
	and  a                                           ; $5792: $a7
	ld   b, $a8                                      ; $5793: $06 $a8
	xor  d                                           ; $5795: $aa
	xor  c                                           ; $5796: $a9
	xor  e                                           ; $5797: $ab
	ld   b, $ac                                      ; $5798: $06 $ac
	xor  [hl]                                        ; $579a: $ae
	xor  l                                           ; $579b: $ad
	xor  a                                           ; $579c: $af
	dec  b                                           ; $579d: $05
	or   b                                           ; $579e: $b0
	or   d                                           ; $579f: $b2
	or   c                                           ; $57a0: $b1
	or   e                                           ; $57a1: $b3
	rlca                                             ; $57a2: $07
	or   h                                           ; $57a3: $b4
	or   [hl]                                        ; $57a4: $b6
	or   l                                           ; $57a5: $b5
	or   a                                           ; $57a6: $b7
	inc  bc                                          ; $57a7: $03
	cp   h                                           ; $57a8: $bc
	cp   [hl]                                        ; $57a9: $be
	cp   l                                           ; $57aa: $bd
	cp   a                                           ; $57ab: $bf
	ld   hl, $cc29                                   ; $57ac: $21 $29 $cc
	ld   a, [hl]                                     ; $57af: $7e
	or   a                                           ; $57b0: $b7
	jr   nz, jr_00c_57e0                             ; $57b1: $20 $2d

	inc  [hl]                                        ; $57b3: $34
	ld   hl, $d340                                   ; $57b4: $21 $40 $d3
	ld   bc, $0120                                   ; $57b7: $01 $20 $01
	ld   de, $0000                                   ; $57ba: $11 $00 $00
	call CopyEthenDintoHL_BCtimes                                       ; $57bd: $cd $9f $09
	ld   bc, $0000                                   ; $57c0: $01 $00 $00
	call SetCurrKanjiColAndRowToDrawOn                                       ; $57c3: $cd $34 $14
	ld   a, $09                                      ; $57c6: $3e $09
	call Call_00c_5ac0                               ; $57c8: $cd $c0 $5a
	ld   hl, $d340                                   ; $57cb: $21 $40 $d3
	call LoadInstantText                                       ; $57ce: $cd $06 $13
	ld   c, $80                                      ; $57d1: $0e $80
	ld   de, $9500                                   ; $57d3: $11 $00 $95
	ld   a, $02                                      ; $57d6: $3e $02
	ld   hl, $d340                                   ; $57d8: $21 $40 $d3
	ld   b, $24                                      ; $57db: $06 $24
	call EnqueueHDMATransfer                                       ; $57dd: $cd $7c $02

jr_00c_57e0:
	ld   a, [wInGameButtonsPressed]                                  ; $57e0: $fa $10 $c2
	bit  1, a                                        ; $57e3: $cb $4f
	jr   nz, jr_00c_57f8                             ; $57e5: $20 $11

	bit  0, a                                        ; $57e7: $cb $47
	ret  z                                           ; $57e9: $c8

	ld   a, $21                                      ; $57ea: $3e $21
	call PlaySoundEffect                                       ; $57ec: $cd $df $1a
	ld   hl, $cc28                                   ; $57ef: $21 $28 $cc
	inc  [hl]                                        ; $57f2: $34
	xor  a                                           ; $57f3: $af
	ld   [$cc29], a                                  ; $57f4: $ea $29 $cc
	ret                                              ; $57f7: $c9


jr_00c_57f8:
	ld   a, [$cc33]                                  ; $57f8: $fa $33 $cc
	call StartAnimatingAnimatedSpriteSpec                                       ; $57fb: $cd $14 $30
	ld   hl, $cc28                                   ; $57fe: $21 $28 $cc
	dec  [hl]                                        ; $5801: $35
	xor  a                                           ; $5802: $af
	ld   [$cc29], a                                  ; $5803: $ea $29 $cc
	ret                                              ; $5806: $c9


	ld   hl, $cc29                                   ; $5807: $21 $29 $cc
	ld   a, [hl]                                     ; $580a: $7e
	inc  [hl]                                        ; $580b: $34
	or   a                                           ; $580c: $b7
	jr   nz, jr_00c_583f                             ; $580d: $20 $30

	ld   a, [$cc32]                                  ; $580f: $fa $32 $cc
	call StopAnimatingAnimatedSpriteSpec                                       ; $5812: $cd $06 $30
	ld   a, [$cc36]                                  ; $5815: $fa $36 $cc
	call StartAnimatingAnimatedSpriteSpec                                       ; $5818: $cd $14 $30
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $581b: $cd $76 $30
	ld   bc, $5048                                   ; $581e: $01 $48 $50
	ld   de, $7762                                   ; $5821: $11 $62 $77
	ld   a, $17                                      ; $5824: $3e $17
	push af                                          ; $5826: $f5
	ld   a, $03                                      ; $5827: $3e $03
	ld   [wFarCallAddr], a                                  ; $5829: $ea $98 $c2
	ld   a, $41                                      ; $582c: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $582e: $ea $99 $c2
	ld   a, $01                                      ; $5831: $3e $01
	ld   [wFarCallBank], a                                  ; $5833: $ea $9a $c2
	pop  af                                          ; $5836: $f1
	call FarCall                                       ; $5837: $cd $62 $09
	ld   a, $23                                      ; $583a: $3e $23
	call PlaySoundEffect                                       ; $583c: $cd $df $1a

jr_00c_583f:
	ld   a, [$cc29]                                  ; $583f: $fa $29 $cc
	cp   $06                                         ; $5842: $fe $06
	ret  c                                           ; $5844: $d8

	ld   hl, $cc28                                   ; $5845: $21 $28 $cc
	inc  [hl]                                        ; $5848: $34
	xor  a                                           ; $5849: $af
	ld   [$cc29], a                                  ; $584a: $ea $29 $cc
	ret                                              ; $584d: $c9


	ld   hl, $cc29                                   ; $584e: $21 $29 $cc
	ld   a, [hl]                                     ; $5851: $7e
	or   a                                           ; $5852: $b7
	jr   nz, jr_00c_5880                             ; $5853: $20 $2b

	inc  [hl]                                        ; $5855: $34
	ld   a, $01                                      ; $5856: $3e $01
	ld   [$cc38], a                                  ; $5858: $ea $38 $cc
	ld   a, [$cc36]                                  ; $585b: $fa $36 $cc
	call StartAnimatingAnimatedSpriteSpec                                       ; $585e: $cd $14 $30
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $5861: $cd $76 $30
	ld   bc, $5048                                   ; $5864: $01 $48 $50
	ld   de, $7762                                   ; $5867: $11 $62 $77
	ld   a, $15                                      ; $586a: $3e $15
	push af                                          ; $586c: $f5
	ld   a, $03                                      ; $586d: $3e $03
	ld   [wFarCallAddr], a                                  ; $586f: $ea $98 $c2
	ld   a, $41                                      ; $5872: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $5874: $ea $99 $c2
	ld   a, $01                                      ; $5877: $3e $01
	ld   [wFarCallBank], a                                  ; $5879: $ea $9a $c2
	pop  af                                          ; $587c: $f1
	call FarCall                                       ; $587d: $cd $62 $09

jr_00c_5880:
	ld   a, [wInGameButtonsPressed]                                  ; $5880: $fa $10 $c2
	bit  0, a                                        ; $5883: $cb $47
	jp   nz, Jump_00c_58f9                           ; $5885: $c2 $f9 $58

	bit  1, a                                        ; $5888: $cb $4f
	jp   nz, Jump_00c_590d                           ; $588a: $c2 $0d $59

	and  $f0                                         ; $588d: $e6 $f0
	cp   $20                                         ; $588f: $fe $20
	jr   z, jr_00c_58c5                              ; $5891: $28 $32

	cp   $10                                         ; $5893: $fe $10
	ret  nz                                          ; $5895: $c0

	ld   a, [$cc38]                                  ; $5896: $fa $38 $cc
	dec  a                                           ; $5899: $3d
	ret  z                                           ; $589a: $c8

	ld   a, $01                                      ; $589b: $3e $01
	ld   [$cc38], a                                  ; $589d: $ea $38 $cc
	ld   a, [$cc36]                                  ; $58a0: $fa $36 $cc
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $58a3: $cd $76 $30
	ld   de, $7762                                   ; $58a6: $11 $62 $77
	ld   a, $15                                      ; $58a9: $3e $15
	push af                                          ; $58ab: $f5
	ld   a, $1c                                      ; $58ac: $3e $1c
	ld   [wFarCallAddr], a                                  ; $58ae: $ea $98 $c2
	ld   a, $41                                      ; $58b1: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $58b3: $ea $99 $c2
	ld   a, $01                                      ; $58b6: $3e $01
	ld   [wFarCallBank], a                                  ; $58b8: $ea $9a $c2
	pop  af                                          ; $58bb: $f1
	call FarCall                                       ; $58bc: $cd $62 $09
	ld   a, $20                                      ; $58bf: $3e $20
	call PlaySoundEffect                                       ; $58c1: $cd $df $1a
	ret                                              ; $58c4: $c9


jr_00c_58c5:
	ld   a, [wInGameButtonsPressed]                                  ; $58c5: $fa $10 $c2
	bit  5, a                                        ; $58c8: $cb $6f
	ret  z                                           ; $58ca: $c8

	ld   a, [$cc38]                                  ; $58cb: $fa $38 $cc
	or   a                                           ; $58ce: $b7
	ret  z                                           ; $58cf: $c8

	xor  a                                           ; $58d0: $af
	ld   [$cc38], a                                  ; $58d1: $ea $38 $cc
	ld   a, [$cc36]                                  ; $58d4: $fa $36 $cc
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $58d7: $cd $76 $30
	ld   de, $7762                                   ; $58da: $11 $62 $77
	ld   a, $16                                      ; $58dd: $3e $16
	push af                                          ; $58df: $f5
	ld   a, $1c                                      ; $58e0: $3e $1c
	ld   [wFarCallAddr], a                                  ; $58e2: $ea $98 $c2
	ld   a, $41                                      ; $58e5: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $58e7: $ea $99 $c2
	ld   a, $01                                      ; $58ea: $3e $01
	ld   [wFarCallBank], a                                  ; $58ec: $ea $9a $c2
	pop  af                                          ; $58ef: $f1
	call FarCall                                       ; $58f0: $cd $62 $09
	ld   a, $20                                      ; $58f3: $3e $20
	call PlaySoundEffect                                       ; $58f5: $cd $df $1a
	ret                                              ; $58f8: $c9


Jump_00c_58f9:
	ld   a, [$cc38]                                  ; $58f9: $fa $38 $cc
	or   a                                           ; $58fc: $b7
	jr   nz, jr_00c_590d                             ; $58fd: $20 $0e

	ld   hl, $cc28                                   ; $58ff: $21 $28 $cc
	inc  [hl]                                        ; $5902: $34
	xor  a                                           ; $5903: $af
	ld   [$cc29], a                                  ; $5904: $ea $29 $cc
	ld   a, $21                                      ; $5907: $3e $21
	call PlaySoundEffect                                       ; $5909: $cd $df $1a
	ret                                              ; $590c: $c9


Jump_00c_590d:
jr_00c_590d:
	ld   hl, $cc28                                   ; $590d: $21 $28 $cc
	inc  [hl]                                        ; $5910: $34
	inc  [hl]                                        ; $5911: $34
	xor  a                                           ; $5912: $af
	ld   [$cc29], a                                  ; $5913: $ea $29 $cc
	ld   a, $22                                      ; $5916: $3e $22
	call PlaySoundEffect                                       ; $5918: $cd $df $1a
	ret                                              ; $591b: $c9


	ld   hl, $cc29                                   ; $591c: $21 $29 $cc
	ld   a, [hl]                                     ; $591f: $7e
	or   a                                           ; $5920: $b7
	jr   nz, jr_00c_594f                             ; $5921: $20 $2c

	inc  [hl]                                        ; $5923: $34
	ld   a, [$cc36]                                  ; $5924: $fa $36 $cc
	call StartAnimatingAnimatedSpriteSpec                                       ; $5927: $cd $14 $30
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $592a: $cd $76 $30
	ld   bc, $5048                                   ; $592d: $01 $48 $50
	ld   de, $7762                                   ; $5930: $11 $62 $77
	ld   a, $18                                      ; $5933: $3e $18
	push af                                          ; $5935: $f5
	ld   a, $03                                      ; $5936: $3e $03
	ld   [wFarCallAddr], a                                  ; $5938: $ea $98 $c2
	ld   a, $41                                      ; $593b: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $593d: $ea $99 $c2
	ld   a, $01                                      ; $5940: $3e $01
	ld   [wFarCallBank], a                                  ; $5942: $ea $9a $c2
	pop  af                                          ; $5945: $f1
	call FarCall                                       ; $5946: $cd $62 $09
	ld   a, $24                                      ; $5949: $3e $24
	call PlaySoundEffect                                       ; $594b: $cd $df $1a
	ret                                              ; $594e: $c9


jr_00c_594f:
	ld   a, [$cc36]                                  ; $594f: $fa $36 $cc
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $5952: $cd $76 $30
	push af                                          ; $5955: $f5
	ld   a, $43                                      ; $5956: $3e $43
	ld   [wFarCallAddr], a                                  ; $5958: $ea $98 $c2
	ld   a, $41                                      ; $595b: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $595d: $ea $99 $c2
	ld   a, $01                                      ; $5960: $3e $01
	ld   [wFarCallBank], a                                  ; $5962: $ea $9a $c2
	pop  af                                          ; $5965: $f1
	call FarCall                                       ; $5966: $cd $62 $09
	bit  7, b                                        ; $5969: $cb $78
	ret  z                                           ; $596b: $c8

	ld   a, [$cc36]                                  ; $596c: $fa $36 $cc
	call StopAnimatingAnimatedSpriteSpec                                       ; $596f: $cd $06 $30
	ld   hl, $cc28                                   ; $5972: $21 $28 $cc
	inc  [hl]                                        ; $5975: $34
	inc  [hl]                                        ; $5976: $34
	xor  a                                           ; $5977: $af
	ld   [$cc29], a                                  ; $5978: $ea $29 $cc
	ret                                              ; $597b: $c9


	ld   hl, $cc29                                   ; $597c: $21 $29 $cc
	ld   a, [hl]                                     ; $597f: $7e
	or   a                                           ; $5980: $b7
	jr   nz, jr_00c_59af                             ; $5981: $20 $2c

	inc  [hl]                                        ; $5983: $34
	ld   a, [$cc36]                                  ; $5984: $fa $36 $cc
	call StartAnimatingAnimatedSpriteSpec                                       ; $5987: $cd $14 $30
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $598a: $cd $76 $30
	ld   bc, $5048                                   ; $598d: $01 $48 $50
	ld   de, $7762                                   ; $5990: $11 $62 $77
	ld   a, $19                                      ; $5993: $3e $19
	push af                                          ; $5995: $f5
	ld   a, $03                                      ; $5996: $3e $03
	ld   [wFarCallAddr], a                                  ; $5998: $ea $98 $c2
	ld   a, $41                                      ; $599b: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $599d: $ea $99 $c2
	ld   a, $01                                      ; $59a0: $3e $01
	ld   [wFarCallBank], a                                  ; $59a2: $ea $9a $c2
	pop  af                                          ; $59a5: $f1
	call FarCall                                       ; $59a6: $cd $62 $09
	ld   a, $24                                      ; $59a9: $3e $24
	call PlaySoundEffect                                       ; $59ab: $cd $df $1a
	ret                                              ; $59ae: $c9


jr_00c_59af:
	ld   a, [$cc36]                                  ; $59af: $fa $36 $cc
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $59b2: $cd $76 $30
	push af                                          ; $59b5: $f5
	ld   a, $43                                      ; $59b6: $3e $43
	ld   [wFarCallAddr], a                                  ; $59b8: $ea $98 $c2
	ld   a, $41                                      ; $59bb: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $59bd: $ea $99 $c2
	ld   a, $01                                      ; $59c0: $3e $01
	ld   [wFarCallBank], a                                  ; $59c2: $ea $9a $c2
	pop  af                                          ; $59c5: $f1
	call FarCall                                       ; $59c6: $cd $62 $09
	bit  7, b                                        ; $59c9: $cb $78
	ret  z                                           ; $59cb: $c8

	ld   a, [$cc32]                                  ; $59cc: $fa $32 $cc
	call StartAnimatingAnimatedSpriteSpec                                       ; $59cf: $cd $14 $30
	ld   a, [$cc36]                                  ; $59d2: $fa $36 $cc
	call StopAnimatingAnimatedSpriteSpec                                       ; $59d5: $cd $06 $30
	ld   a, $02                                      ; $59d8: $3e $02
	ld   [$cc28], a                                  ; $59da: $ea $28 $cc
	xor  a                                           ; $59dd: $af
	ld   [$cc29], a                                  ; $59de: $ea $29 $cc
	ret                                              ; $59e1: $c9


	ld   a, [$cc29]                                  ; $59e2: $fa $29 $cc
	or   a                                           ; $59e5: $b7
	jr   nz, jr_00c_5a00                             ; $59e6: $20 $18

	xor  a                                           ; $59e8: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $59e9: $ea $62 $c3
	ld   a, $40                                      ; $59ec: $3e $40
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $59ee: $ea $63 $c3
	ld   a, $03                                      ; $59f1: $3e $03
	ld   b, $00                                      ; $59f3: $06 $00
	ld   hl, wBGPalettes                                   ; $59f5: $21 $de $c2
	ld   c, $01                                      ; $59f8: $0e $01
	ld   de, $7000                                   ; $59fa: $11 $00 $70
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $59fd: $cd $48 $07

jr_00c_5a00:
	ld   hl, $cc29                                   ; $5a00: $21 $29 $cc
	ld   a, [hl]                                     ; $5a03: $7e
	inc  [hl]                                        ; $5a04: $34
	cp   $1f                                         ; $5a05: $fe $1f
	jr   nc, jr_00c_5a12                             ; $5a07: $30 $09

	and  $03                                         ; $5a09: $e6 $03
	ret  nz                                          ; $5a0b: $c0

	ld   bc, $0040                                   ; $5a0c: $01 $40 $00
	jp   FadePalettesAndSetRangeToUpdate                                       ; $5a0f: $c3 $32 $08


jr_00c_5a12:
	ld   a, BANK(Palettes_AllWhite)                                      ; $5a12: $3e $01
	ld   hl, Palettes_AllWhite                                   ; $5a14: $21 $00 $70
	ld   de, wBGPalettes                                   ; $5a17: $11 $de $c2
	ld   bc, $0080                                   ; $5a1a: $01 $80 $00
	call FarMemCopy                                       ; $5a1d: $cd $b2 $09
	ld   bc, $003f                                   ; $5a20: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $5a23: $cd $aa $04
	ld   a, [$cc2a]                                  ; $5a26: $fa $2a $cc
	ld   [wGameState], a                                  ; $5a29: $ea $a0 $c2
	ld   a, [$cc2b]                                  ; $5a2c: $fa $2b $cc
	ld   [wGameSubstate], a                                  ; $5a2f: $ea $a1 $c2
	ret                                              ; $5a32: $c9


Func_0c_5a33::
	ld   a, h                                        ; $5a33: $7c
	ld   [$cc2a], a                                  ; $5a34: $ea $2a $cc
	ld   a, l                                        ; $5a37: $7d
	ld   [$cc2b], a                                  ; $5a38: $ea $2b $cc
	ld   a, $3e                                      ; $5a3b: $3e $3e
	ld   [wGameState], a                                  ; $5a3d: $ea $a0 $c2
	xor  a                                           ; $5a40: $af
	ld   [wGameSubstate], a                                  ; $5a41: $ea $a1 $c2
	ret                                              ; $5a44: $c9


Call_00c_5a45:
	ld   a, [$cc32]                                  ; $5a45: $fa $32 $cc
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $5a48: $cd $76 $30
	push hl                                          ; $5a4b: $e5
	ld   a, [$cc37]                                  ; $5a4c: $fa $37 $cc
	ld   b, a                                        ; $5a4f: $47
	sla  a                                           ; $5a50: $cb $27
	add  b                                           ; $5a52: $80
	ld   l, a                                        ; $5a53: $6f
	ld   h, $00                                      ; $5a54: $26 $00
	ld   bc, $5a78                                   ; $5a56: $01 $78 $5a
	add  hl, bc                                      ; $5a59: $09
	ld   a, [hl+]                                    ; $5a5a: $2a
	ld   b, a                                        ; $5a5b: $47
	ld   a, [hl+]                                    ; $5a5c: $2a
	ld   c, a                                        ; $5a5d: $4f
	ld   de, $7762                                   ; $5a5e: $11 $62 $77
	ld   a, [hl+]                                    ; $5a61: $2a
	pop  hl                                          ; $5a62: $e1
	push af                                          ; $5a63: $f5
	ld   a, $03                                      ; $5a64: $3e $03
	ld   [wFarCallAddr], a                                  ; $5a66: $ea $98 $c2
	ld   a, $41                                      ; $5a69: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $5a6b: $ea $99 $c2
	ld   a, $01                                      ; $5a6e: $3e $01
	ld   [wFarCallBank], a                                  ; $5a70: $ea $9a $c2
	pop  af                                          ; $5a73: $f1
	call FarCall                                       ; $5a74: $cd $62 $09
	ret                                              ; $5a77: $c9


	db $18, $50

	ld   [de], a                                     ; $5a7a: $12
	jr   z, @+$52                                    ; $5a7b: $28 $50

	ld   [de], a                                     ; $5a7d: $12
	db $38, $50

	ld   [de], a                                     ; $5a80: $12
	ld   c, b                                        ; $5a81: $48
	ld   d, b                                        ; $5a82: $50
	ld   [de], a                                     ; $5a83: $12
	ld   e, b                                        ; $5a84: $58
	ld   d, b                                        ; $5a85: $50
	ld   [de], a                                     ; $5a86: $12
	add  b                                           ; $5a87: $80
	ld   b, b                                        ; $5a88: $40
	inc  de                                          ; $5a89: $13

Call_00c_5a8a:
	ld   hl, $dcd7                                   ; $5a8a: $21 $d7 $dc
	ld   b, $07                                      ; $5a8d: $06 $07

jr_00c_5a8f:
	ld   a, [hl-]                                    ; $5a8f: $3a
	or   a                                           ; $5a90: $b7
	jr   z, jr_00c_5a98                              ; $5a91: $28 $05

	dec  b                                           ; $5a93: $05
	jr   nz, jr_00c_5a8f                             ; $5a94: $20 $f9

	ld   b, $0a                                      ; $5a96: $06 $0a

jr_00c_5a98:
	inc  b                                           ; $5a98: $04
	swap b                                           ; $5a99: $cb $30
	ld   c, $68                                      ; $5a9b: $0e $68
	ld   a, [$cc35]                                  ; $5a9d: $fa $35 $cc
	call StartAnimatingAnimatedSpriteSpec                                       ; $5aa0: $cd $14 $30
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $5aa3: $cd $76 $30
	ld   de, $7762                                   ; $5aa6: $11 $62 $77
	ld   a, $14                                      ; $5aa9: $3e $14
	push af                                          ; $5aab: $f5
	ld   a, $03                                      ; $5aac: $3e $03
	ld   [wFarCallAddr], a                                  ; $5aae: $ea $98 $c2
	ld   a, $41                                      ; $5ab1: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $5ab3: $ea $99 $c2
	ld   a, $01                                      ; $5ab6: $3e $01
	ld   [wFarCallBank], a                                  ; $5ab8: $ea $9a $c2
	pop  af                                          ; $5abb: $f1
	call FarCall                                       ; $5abc: $cd $62 $09
	ret                                              ; $5abf: $c9


Call_00c_5ac0:
	sla  a                                           ; $5ac0: $cb $27
	ld   e, a                                        ; $5ac2: $5f
	ld   d, $00                                      ; $5ac3: $16 $00
	ld   hl, Data_0c_5ad5                                   ; $5ac5: $21 $d5 $5a
	add  hl, de                                      ; $5ac8: $19

	ld   a, [hl+]                                    ; $5ac9: $2a
	ld   d, [hl]                                     ; $5aca: $56
	ld   e, a                                        ; $5acb: $5f
	ld   hl, Data_0c_5ad5                                   ; $5acc: $21 $d5 $5a
	add  hl, de                                      ; $5acf: $19
	
	ld   d, h                                        ; $5ad0: $54
	ld   e, l                                        ; $5ad1: $5d
	ld   a, $0c                                      ; $5ad2: $3e $0c
	ret                                              ; $5ad4: $c9

if def(VWF)
else
Data_0c_5ad5:
endc
	inc  d                                           ; $5ad5: $14
	nop                                              ; $5ad6: $00
	inc  h                                           ; $5ad7: $24
	nop                                              ; $5ad8: $00
	inc  sp                                          ; $5ad9: $33
	nop                                              ; $5ada: $00
	ld   b, d                                        ; $5adb: $42
	nop                                              ; $5adc: $00
	ld   d, c                                        ; $5add: $51
	nop                                              ; $5ade: $00
	ld   h, c                                        ; $5adf: $61
	nop                                              ; $5ae0: $00
	ld   [hl], c                                     ; $5ae1: $71
	nop                                              ; $5ae2: $00
	add  b                                           ; $5ae3: $80
	nop                                              ; $5ae4: $00
	sub  b                                           ; $5ae5: $90
	nop                                              ; $5ae6: $00
	sub  a                                           ; $5ae7: $97
	nop                                              ; $5ae8: $00
	dec  b                                           ; $5ae9: $05
	ld   e, a                                        ; $5aea: $5f
	inc  bc                                          ; $5aeb: $03
	call nc, $04a0                                   ; $5aec: $d4 $a0 $04
	ld   b, l                                        ; $5aef: $45
	dec  b                                           ; $5af0: $05
	ld   a, [bc]                                     ; $5af1: $0a
	ld   h, l                                        ; $5af2: $65
	ld   [hl], h                                     ; $5af3: $74
	ld   e, l                                        ; $5af4: $5d
	ld   l, [hl]                                     ; $5af5: $6e
	ld   h, e                                        ; $5af6: $63
	ld   d, d                                        ; $5af7: $52
	nop                                              ; $5af8: $00
	ld   h, e                                        ; $5af9: $63
	ld   e, l                                        ; $5afa: $5d
	sub  a                                           ; $5afb: $97
	ld   e, c                                        ; $5afc: $59
	sub  a                                           ; $5afd: $97
	inc  bc                                          ; $5afe: $03
	ld   l, l                                        ; $5aff: $6d
	dec  b                                           ; $5b00: $05
	add  hl, de                                      ; $5b01: $19
	and  b                                           ; $5b02: $a0
	ld   [bc], a                                     ; $5b03: $02
	rst  $38                                         ; $5b04: $ff
	ld   e, a                                        ; $5b05: $5f
	sbc  c                                           ; $5b06: $99
	nop                                              ; $5b07: $00
	ld   h, a                                        ; $5b08: $67
	adc  l                                           ; $5b09: $8d
	sbc  d                                           ; $5b0a: $9a
	ld   e, c                                        ; $5b0b: $59
	sub  a                                           ; $5b0c: $97
	inc  bc                                          ; $5b0d: $03
	ld   l, l                                        ; $5b0e: $6d
	dec  b                                           ; $5b0f: $05
	add  hl, de                                      ; $5b10: $19
	and  b                                           ; $5b11: $a0
	ld   [bc], a                                     ; $5b12: $02
	rst  $38                                         ; $5b13: $ff
	ld   e, a                                        ; $5b14: $5f
	sbc  c                                           ; $5b15: $99
	nop                                              ; $5b16: $00
	rst  JumpTable                                         ; $5b17: $df
	db   $ec                                         ; $5b18: $ec
	and  e                                           ; $5b19: $a3
	ld   e, c                                        ; $5b1a: $59
	sub  a                                           ; $5b1b: $97
	inc  bc                                          ; $5b1c: $03
	ld   l, l                                        ; $5b1d: $6d
	dec  b                                           ; $5b1e: $05
	add  hl, de                                      ; $5b1f: $19
	and  b                                           ; $5b20: $a0
	ld   [bc], a                                     ; $5b21: $02
	rst  $38                                         ; $5b22: $ff
	ld   e, a                                        ; $5b23: $5f
	sbc  c                                           ; $5b24: $99
	nop                                              ; $5b25: $00
	and  e                                           ; $5b26: $a3
	and  l                                           ; $5b27: $a5
	db   $ec                                         ; $5b28: $ec
	cp   d                                           ; $5b29: $ba
	ld   e, c                                        ; $5b2a: $59
	sub  a                                           ; $5b2b: $97
	inc  bc                                          ; $5b2c: $03
	ld   l, l                                        ; $5b2d: $6d
	dec  b                                           ; $5b2e: $05
	add  hl, de                                      ; $5b2f: $19
	and  b                                           ; $5b30: $a0
	ld   [bc], a                                     ; $5b31: $02
	rst  $38                                         ; $5b32: $ff
	ld   e, a                                        ; $5b33: $5f
	sbc  c                                           ; $5b34: $99
	nop                                              ; $5b35: $00
	ld   [bc], a                                     ; $5b36: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5b37: $cf
	dec  b                                           ; $5b38: $05
	ld   a, [de]                                     ; $5b39: $1a
	ld   e, c                                        ; $5b3a: $59
	sub  a                                           ; $5b3b: $97
	inc  bc                                          ; $5b3c: $03
	ld   l, l                                        ; $5b3d: $6d
	dec  b                                           ; $5b3e: $05
	add  hl, de                                      ; $5b3f: $19
	and  b                                           ; $5b40: $a0
	ld   [bc], a                                     ; $5b41: $02
	rst  $38                                         ; $5b42: $ff
	ld   e, a                                        ; $5b43: $5f
	sbc  c                                           ; $5b44: $99
	nop                                              ; $5b45: $00
	xor  h                                           ; $5b46: $ac
	push af                                          ; $5b47: $f5
	bit  3, c                                        ; $5b48: $cb $59
	sub  a                                           ; $5b4a: $97
	inc  bc                                          ; $5b4b: $03
	ld   l, l                                        ; $5b4c: $6d
	dec  b                                           ; $5b4d: $05
	add  hl, de                                      ; $5b4e: $19
	and  b                                           ; $5b4f: $a0
	ld   [bc], a                                     ; $5b50: $02
	rst  $38                                         ; $5b51: $ff
	ld   e, a                                        ; $5b52: $5f
	sbc  c                                           ; $5b53: $99
	nop                                              ; $5b54: $00
	inc  bc                                          ; $5b55: $03
	and  a                                           ; $5b56: $a7
	and  c                                           ; $5b57: $a1
	ld   [hl], l                                     ; $5b58: $75
	inc  b                                           ; $5b59: $04
	dec  c                                           ; $5b5a: $0d
	dec  b                                           ; $5b5b: $05
	ld   a, [bc]                                     ; $5b5c: $0a
	and  b                                           ; $5b5d: $a0
	ld   [bc], a                                     ; $5b5e: $02
	sub  e                                           ; $5b5f: $93
	inc  b                                           ; $5b60: $04
	ld   a, h                                        ; $5b61: $7c
	ld   h, a                                        ; $5b62: $67
	sbc  c                                           ; $5b63: $99
	nop                                              ; $5b64: $00
	inc  bc                                          ; $5b65: $03
	ld   sp, $8c87                                   ; $5b66: $31 $87 $8c
	ld   l, c                                        ; $5b69: $69
	and  c                                           ; $5b6a: $a1
	nop                                              ; $5b6b: $00
	dec  b                                           ; $5b6c: $05
	ld   e, a                                        ; $5b6d: $5f
	inc  bc                                          ; $5b6e: $03
	call nc, $02a0                                   ; $5b6f: $d4 $a0 $02
	add  e                                           ; $5b72: $83
	inc  bc                                          ; $5b73: $03
	call nc, $8c65                                   ; $5b74: $d4 $65 $8c
	ld   h, a                                        ; $5b77: $67
	nop                                              ; $5b78: $00


Func_0c_5b79::
	ld   [$cc3e], a                                  ; $5b79: $ea $3e $cc
	ld   a, [wWramBank]                                  ; $5b7c: $fa $93 $c2
	push af                                          ; $5b7f: $f5
	ld   a, $02                                      ; $5b80: $3e $02
	ld   [wWramBank], a                                  ; $5b82: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5b85: $e0 $70
	ld   a, b                                        ; $5b87: $78
	ld   [$cc3a], a                                  ; $5b88: $ea $3a $cc
	ld   a, c                                        ; $5b8b: $79
	ld   [$cc3b], a                                  ; $5b8c: $ea $3b $cc
	ld   a, d                                        ; $5b8f: $7a
	ld   [$cc3c], a                                  ; $5b90: $ea $3c $cc
	ld   a, e                                        ; $5b93: $7b
	ld   [$cc3d], a                                  ; $5b94: $ea $3d $cc
	ld   a, l                                        ; $5b97: $7d
	ld   [$cc3f], a                                  ; $5b98: $ea $3f $cc
	ld   a, h                                        ; $5b9b: $7c
	ld   [$cc40], a                                  ; $5b9c: $ea $40 $cc
	xor  a                                           ; $5b9f: $af
	ldh  [rVBK], a                                   ; $5ba0: $e0 $4f
	ld   de, $da80                                   ; $5ba2: $11 $80 $da
	ld   b, $c0                                      ; $5ba5: $06 $c0

jr_00c_5ba7:
	ld   a, [hl+]                                    ; $5ba7: $2a
	ld   [de], a                                     ; $5ba8: $12
	inc  de                                          ; $5ba9: $13
	dec  b                                           ; $5baa: $05
	jr   nz, jr_00c_5ba7                             ; $5bab: $20 $fa

	ld   hl, $cc42                                   ; $5bad: $21 $42 $cc
	ld   a, $06                                      ; $5bb0: $3e $06

jr_00c_5bb2:
	push af                                          ; $5bb2: $f5
	push hl                                          ; $5bb3: $e5
	ld   a, $00                                      ; $5bb4: $3e $00
	ld   hl, $0000                                   ; $5bb6: $21 $00 $00
	ld   d, h                                        ; $5bb9: $54
	ld   e, l                                        ; $5bba: $5d
	call ReserveBaseAnimSpriteSpecAndInstance                                       ; $5bbb: $cd $4b $2f
	pop  hl                                          ; $5bbe: $e1
	ld   [hl+], a                                    ; $5bbf: $22
	pop  af                                          ; $5bc0: $f1
	dec  a                                           ; $5bc1: $3d
	jr   nz, jr_00c_5bb2                             ; $5bc2: $20 $ee

	pop  af                                          ; $5bc4: $f1
	ld   [wWramBank], a                                  ; $5bc5: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5bc8: $e0 $70
	ret                                              ; $5bca: $c9


Func_0c_5bcb::
	ld   a, [wWramBank]                                  ; $5bcb: $fa $93 $c2
	push af                                          ; $5bce: $f5
	ld   a, $02                                      ; $5bcf: $3e $02
	ld   [wWramBank], a                                  ; $5bd1: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5bd4: $e0 $70
	push hl                                          ; $5bd6: $e5
	ld   a, [$cc3c]                                  ; $5bd7: $fa $3c $cc
	ld   b, $00                                      ; $5bda: $06 $00
	ld   c, a                                        ; $5bdc: $4f
	ld   hl, $da80                                   ; $5bdd: $21 $80 $da
	add  hl, bc                                      ; $5be0: $09
	ld   d, h                                        ; $5be1: $54
	ld   e, l                                        ; $5be2: $5d
	pop  hl                                          ; $5be3: $e1
	ld   b, $00                                      ; $5be4: $06 $00

jr_00c_5be6:
	ld   a, [hl+]                                    ; $5be6: $2a
	ld   c, a                                        ; $5be7: $4f
	push hl                                          ; $5be8: $e5
	push de                                          ; $5be9: $d5
	push bc                                          ; $5bea: $c5
	call Call_00c_5c18                               ; $5beb: $cd $18 $5c
	pop  bc                                          ; $5bee: $c1
	pop  de                                          ; $5bef: $d1
	ld   hl, $0020                                   ; $5bf0: $21 $20 $00
	add  hl, de                                      ; $5bf3: $19
	ld   d, h                                        ; $5bf4: $54
	ld   e, l                                        ; $5bf5: $5d
	pop  hl                                          ; $5bf6: $e1
	inc  b                                           ; $5bf7: $04
	ld   a, b                                        ; $5bf8: $78
	cp   $06                                         ; $5bf9: $fe $06
	jr   c, jr_00c_5be6                              ; $5bfb: $38 $e9

	ld   c, $80                                      ; $5bfd: $0e $80
	ld   a, [$cc3f]                                  ; $5bff: $fa $3f $cc
	ld   e, a                                        ; $5c02: $5f
	ld   a, [$cc40]                                  ; $5c03: $fa $40 $cc
	ld   d, a                                        ; $5c06: $57
	ld   a, $02                                      ; $5c07: $3e $02
	ld   hl, $da80                                   ; $5c09: $21 $80 $da
	ld   b, $0c                                      ; $5c0c: $06 $0c
	call EnqueueHDMATransfer                                       ; $5c0e: $cd $7c $02
	pop  af                                          ; $5c11: $f1
	ld   [wWramBank], a                                  ; $5c12: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5c15: $e0 $70
	ret                                              ; $5c17: $c9


Call_00c_5c18:
	push bc                                          ; $5c18: $c5
	ld   a, c                                        ; $5c19: $79
	and  $f8                                         ; $5c1a: $e6 $f8
	srl  a                                           ; $5c1c: $cb $3f
	ld   h, $00                                      ; $5c1e: $26 $00
	ld   l, a                                        ; $5c20: $6f
	ld   b, h                                        ; $5c21: $44
	ld   c, l                                        ; $5c22: $4d
	add  hl, hl                                      ; $5c23: $29
	add  hl, bc                                      ; $5c24: $09
	ld   bc, $5c94                                   ; $5c25: $01 $94 $5c
	add  hl, bc                                      ; $5c28: $09
	ld   b, $0c                                      ; $5c29: $06 $0c
	ld   a, [$cc3e]                                  ; $5c2b: $fa $3e $cc
	ld   c, a                                        ; $5c2e: $4f

jr_00c_5c2f:
	ld   a, [hl+]                                    ; $5c2f: $2a
	add  c                                           ; $5c30: $81
	ld   [de], a                                     ; $5c31: $12
	inc  de                                          ; $5c32: $13
	dec  b                                           ; $5c33: $05
	jr   nz, jr_00c_5c2f                             ; $5c34: $20 $f9

	pop  bc                                          ; $5c36: $c1
	ld   d, $00                                      ; $5c37: $16 $00
	ld   e, b                                        ; $5c39: $58
	ld   hl, $cc42                                   ; $5c3a: $21 $42 $cc
	add  hl, de                                      ; $5c3d: $19
	ld   a, [hl]                                     ; $5c3e: $7e
	call StartAnimatingAnimatedSpriteSpec                                       ; $5c3f: $cd $14 $30
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $5c42: $cd $76 $30
	push hl                                          ; $5c45: $e5
	ld   a, c                                        ; $5c46: $79
	and  $07                                         ; $5c47: $e6 $07
	ld   d, $00                                      ; $5c49: $16 $00
	ld   e, a                                        ; $5c4b: $5f
	ld   hl, $5e14                                   ; $5c4c: $21 $14 $5e
	add  hl, de                                      ; $5c4f: $19
	ld   a, [$cc3b]                                  ; $5c50: $fa $3b $cc
	add  [hl]                                        ; $5c53: $86
	ld   e, a                                        ; $5c54: $5f
	ld   a, [$cc3a]                                  ; $5c55: $fa $3a $cc
	ld   d, a                                        ; $5c58: $57
	ld   a, b                                        ; $5c59: $78
	ld   b, c                                        ; $5c5a: $41
	ld   c, a                                        ; $5c5b: $4f
	ld   a, b                                        ; $5c5c: $78
	srl  a                                           ; $5c5d: $cb $3f
	srl  a                                           ; $5c5f: $cb $3f
	srl  a                                           ; $5c61: $cb $3f
	ld   b, a                                        ; $5c63: $47
	sla  a                                           ; $5c64: $cb $27
	add  b                                           ; $5c66: $80
	ld   b, a                                        ; $5c67: $47
	ld   a, [$cc3c]                                  ; $5c68: $fa $3c $cc
	sla  a                                           ; $5c6b: $cb $27
	sla  a                                           ; $5c6d: $cb $27
	sla  a                                           ; $5c6f: $cb $27
	add  b                                           ; $5c71: $80
	ld   b, a                                        ; $5c72: $47
	ld   a, [$cc3d]                                  ; $5c73: $fa $3d $cc
	sla  c                                           ; $5c76: $cb $21
	sla  c                                           ; $5c78: $cb $21
	sla  c                                           ; $5c7a: $cb $21
	add  c                                           ; $5c7c: $81
	ld   c, a                                        ; $5c7d: $4f
	pop  hl                                          ; $5c7e: $e1
	push af                                          ; $5c7f: $f5
	ld   a, $3c                                      ; $5c80: $3e $3c
	ld   [wFarCallAddr], a                                  ; $5c82: $ea $98 $c2
	ld   a, $40                                      ; $5c85: $3e $40
	ld   [wFarCallAddr+1], a                                  ; $5c87: $ea $99 $c2
	ld   a, $01                                      ; $5c8a: $3e $01
	ld   [wFarCallBank], a                                  ; $5c8c: $ea $9a $c2
	pop  af                                          ; $5c8f: $f1
	call FarCall                                       ; $5c90: $cd $62 $09
	ret                                              ; $5c93: $c9


	nop                                              ; $5c94: $00
	ld   bc, $0002                                   ; $5c95: $01 $02 $00
	ld   bc, $0002                                   ; $5c98: $01 $02 $00
	ld   bc, $0002                                   ; $5c9b: $01 $02 $00
	ld   bc, $0302                                   ; $5c9e: $01 $02 $03
	ld   bc, $0002                                   ; $5ca1: $01 $02 $00
	ld   bc, $0002                                   ; $5ca4: $01 $02 $00
	ld   bc, $0002                                   ; $5ca7: $01 $02 $00
	ld   bc, $0402                                   ; $5caa: $01 $02 $04
	ld   bc, $0002                                   ; $5cad: $01 $02 $00
	ld   bc, $0002                                   ; $5cb0: $01 $02 $00
	ld   bc, $0002                                   ; $5cb3: $01 $02 $00
	ld   bc, $0502                                   ; $5cb6: $01 $02 $05
	ld   bc, $0002                                   ; $5cb9: $01 $02 $00
	ld   bc, $0002                                   ; $5cbc: $01 $02 $00
	ld   bc, $0002                                   ; $5cbf: $01 $02 $00
	ld   bc, $0502                                   ; $5cc2: $01 $02 $05
	ld   b, $02                                      ; $5cc5: $06 $02
	nop                                              ; $5cc7: $00
	ld   bc, $0002                                   ; $5cc8: $01 $02 $00
	ld   bc, $0002                                   ; $5ccb: $01 $02 $00
	ld   bc, $0502                                   ; $5cce: $01 $02 $05
	rlca                                             ; $5cd1: $07
	ld   [bc], a                                     ; $5cd2: $02
	nop                                              ; $5cd3: $00
	ld   bc, $0002                                   ; $5cd4: $01 $02 $00
	ld   bc, $0002                                   ; $5cd7: $01 $02 $00
	ld   bc, $0502                                   ; $5cda: $01 $02 $05
	ld   [$0009], sp                                 ; $5cdd: $08 $09 $00
	ld   bc, $0002                                   ; $5ce0: $01 $02 $00
	ld   bc, $0002                                   ; $5ce3: $01 $02 $00
	ld   bc, $0502                                   ; $5ce6: $01 $02 $05
	ld   [$000a], sp                                 ; $5ce9: $08 $0a $00
	ld   bc, $0002                                   ; $5cec: $01 $02 $00
	ld   bc, $0002                                   ; $5cef: $01 $02 $00
	ld   bc, $0502                                   ; $5cf2: $01 $02 $05
	ld   [$000b], sp                                 ; $5cf5: $08 $0b $00
	ld   bc, $0002                                   ; $5cf8: $01 $02 $00
	ld   bc, $0002                                   ; $5cfb: $01 $02 $00
	ld   bc, $0502                                   ; $5cfe: $01 $02 $05
	ld   [$030b], sp                                 ; $5d01: $08 $0b $03
	ld   bc, $0002                                   ; $5d04: $01 $02 $00
	ld   bc, $0002                                   ; $5d07: $01 $02 $00
	ld   bc, $0502                                   ; $5d0a: $01 $02 $05
	ld   [$040b], sp                                 ; $5d0d: $08 $0b $04
	ld   bc, $0002                                   ; $5d10: $01 $02 $00
	ld   bc, $0002                                   ; $5d13: $01 $02 $00
	ld   bc, $0502                                   ; $5d16: $01 $02 $05
	ld   [$050b], sp                                 ; $5d19: $08 $0b $05
	ld   bc, $0002                                   ; $5d1c: $01 $02 $00
	ld   bc, $0002                                   ; $5d1f: $01 $02 $00
	ld   bc, $0502                                   ; $5d22: $01 $02 $05
	ld   [$050b], sp                                 ; $5d25: $08 $0b $05
	ld   b, $02                                      ; $5d28: $06 $02
	nop                                              ; $5d2a: $00
	ld   bc, $0002                                   ; $5d2b: $01 $02 $00
	ld   bc, $0502                                   ; $5d2e: $01 $02 $05
	ld   [$050b], sp                                 ; $5d31: $08 $0b $05
	rlca                                             ; $5d34: $07
	ld   [bc], a                                     ; $5d35: $02
	nop                                              ; $5d36: $00
	ld   bc, $0002                                   ; $5d37: $01 $02 $00
	ld   bc, $0502                                   ; $5d3a: $01 $02 $05
	ld   [$050b], sp                                 ; $5d3d: $08 $0b $05
	ld   [$0009], sp                                 ; $5d40: $08 $09 $00
	ld   bc, $0002                                   ; $5d43: $01 $02 $00
	ld   bc, $0502                                   ; $5d46: $01 $02 $05
	ld   [$050b], sp                                 ; $5d49: $08 $0b $05
	ld   [$000a], sp                                 ; $5d4c: $08 $0a $00
	ld   bc, $0002                                   ; $5d4f: $01 $02 $00
	ld   bc, $0502                                   ; $5d52: $01 $02 $05
	ld   [$050b], sp                                 ; $5d55: $08 $0b $05
	ld   [$000b], sp                                 ; $5d58: $08 $0b $00
	ld   bc, $0002                                   ; $5d5b: $01 $02 $00
	ld   bc, $0502                                   ; $5d5e: $01 $02 $05
	ld   [$050b], sp                                 ; $5d61: $08 $0b $05
	ld   [$030b], sp                                 ; $5d64: $08 $0b $03
	ld   bc, $0002                                   ; $5d67: $01 $02 $00
	ld   bc, $0502                                   ; $5d6a: $01 $02 $05
	ld   [$050b], sp                                 ; $5d6d: $08 $0b $05
	ld   [$040b], sp                                 ; $5d70: $08 $0b $04
	ld   bc, $0002                                   ; $5d73: $01 $02 $00
	ld   bc, $0502                                   ; $5d76: $01 $02 $05
	ld   [$050b], sp                                 ; $5d79: $08 $0b $05
	ld   [$050b], sp                                 ; $5d7c: $08 $0b $05
	ld   bc, $0002                                   ; $5d7f: $01 $02 $00
	ld   bc, $0502                                   ; $5d82: $01 $02 $05
	ld   [$050b], sp                                 ; $5d85: $08 $0b $05
	ld   [$050b], sp                                 ; $5d88: $08 $0b $05
	ld   b, $02                                      ; $5d8b: $06 $02
	nop                                              ; $5d8d: $00
	ld   bc, $0502                                   ; $5d8e: $01 $02 $05
	ld   [$050b], sp                                 ; $5d91: $08 $0b $05
	ld   [$050b], sp                                 ; $5d94: $08 $0b $05
	rlca                                             ; $5d97: $07
	ld   [bc], a                                     ; $5d98: $02
	nop                                              ; $5d99: $00
	ld   bc, $0502                                   ; $5d9a: $01 $02 $05
	ld   [$050b], sp                                 ; $5d9d: $08 $0b $05
	ld   [$050b], sp                                 ; $5da0: $08 $0b $05
	ld   [$0009], sp                                 ; $5da3: $08 $09 $00
	ld   bc, $0502                                   ; $5da6: $01 $02 $05
	ld   [$050b], sp                                 ; $5da9: $08 $0b $05
	ld   [$050b], sp                                 ; $5dac: $08 $0b $05
	ld   [$000a], sp                                 ; $5daf: $08 $0a $00
	ld   bc, $0502                                   ; $5db2: $01 $02 $05
	ld   [$050b], sp                                 ; $5db5: $08 $0b $05
	ld   [$050b], sp                                 ; $5db8: $08 $0b $05
	ld   [$000b], sp                                 ; $5dbb: $08 $0b $00
	ld   bc, $0502                                   ; $5dbe: $01 $02 $05
	ld   [$050b], sp                                 ; $5dc1: $08 $0b $05
	ld   [$050b], sp                                 ; $5dc4: $08 $0b $05
	ld   [$030b], sp                                 ; $5dc7: $08 $0b $03
	ld   bc, $0502                                   ; $5dca: $01 $02 $05
	ld   [$050b], sp                                 ; $5dcd: $08 $0b $05
	ld   [$050b], sp                                 ; $5dd0: $08 $0b $05
	ld   [$040b], sp                                 ; $5dd3: $08 $0b $04
	ld   bc, $0502                                   ; $5dd6: $01 $02 $05
	ld   [$050b], sp                                 ; $5dd9: $08 $0b $05
	ld   [$050b], sp                                 ; $5ddc: $08 $0b $05
	ld   [$050b], sp                                 ; $5ddf: $08 $0b $05
	ld   bc, $0502                                   ; $5de2: $01 $02 $05
	ld   [$050b], sp                                 ; $5de5: $08 $0b $05
	ld   [$050b], sp                                 ; $5de8: $08 $0b $05
	ld   [$050b], sp                                 ; $5deb: $08 $0b $05
	ld   b, $02                                      ; $5dee: $06 $02
	dec  b                                           ; $5df0: $05
	ld   [$050b], sp                                 ; $5df1: $08 $0b $05
	ld   [$050b], sp                                 ; $5df4: $08 $0b $05
	ld   [$050b], sp                                 ; $5df7: $08 $0b $05
	rlca                                             ; $5dfa: $07
	ld   [bc], a                                     ; $5dfb: $02
	dec  b                                           ; $5dfc: $05
	ld   [$050b], sp                                 ; $5dfd: $08 $0b $05
	ld   [$050b], sp                                 ; $5e00: $08 $0b $05
	ld   [$050b], sp                                 ; $5e03: $08 $0b $05
	ld   [$0509], sp                                 ; $5e06: $08 $09 $05
	ld   [$050b], sp                                 ; $5e09: $08 $0b $05
	ld   [$050b], sp                                 ; $5e0c: $08 $0b $05
	ld   [$050b], sp                                 ; $5e0f: $08 $0b $05
	ld   [$000a], sp                                 ; $5e12: $08 $0a $00
	ld   bc, $0101                                   ; $5e15: $01 $01 $01
	ld   bc, $0101                                   ; $5e18: $01 $01 $01
	ld   [bc], a                                     ; $5e1b: $02


GameState3f::
	ld   a, [wGameSubstate]                                  ; $5e1c: $fa $a1 $c2
	or   a                                           ; $5e1f: $b7
	jp   nz, Jump_00c_5ffc                           ; $5e20: $c2 $fc $5f

	ld   a, $00                                      ; $5e23: $3e $00
	call SafeSetAudVolForMultipleChannels                                       ; $5e25: $cd $e0 $1c
	xor  a                                           ; $5e28: $af
	call PlaySong                                       ; $5e29: $cd $92 $1a
	call TurnOffLCD                                       ; $5e2c: $cd $e3 $08
	call ClearDisplayRegsAllowVBlankInt                                       ; $5e2f: $cd $59 $0b
	ld   a, [wLCDC]                                  ; $5e32: $fa $03 $c2
	and  $e0                                         ; $5e35: $e6 $e0
	or   $07                                         ; $5e37: $f6 $07
	ld   [wLCDC], a                                  ; $5e39: $ea $03 $c2
	ld   a, $ff                                      ; $5e3c: $3e $ff
	ld   [wInGameInputsEnabled], a                                  ; $5e3e: $ea $0e $c2
	call ClearOam                                       ; $5e41: $cd $d7 $0d
	call ClearBaseAnimSpriteSpecDetails                                       ; $5e44: $cd $c9 $2e
	xor  a                                           ; $5e47: $af
	ld   [$b0aa], a                                  ; $5e48: $ea $aa $b0
	ld   a, [$b1b2]                                  ; $5e4b: $fa $b2 $b1
	or   a                                           ; $5e4e: $b7
	jr   nz, jr_00c_5ec4                             ; $5e4f: $20 $73

	ld   a, $ff                                      ; $5e51: $3e $ff
	ld   [$b0aa], a                                  ; $5e53: $ea $aa $b0
	push af                                          ; $5e56: $f5
	ld   a, $40                                      ; $5e57: $3e $40
	ld   [wFarCallAddr], a                                  ; $5e59: $ea $98 $c2
	ld   a, $45                                      ; $5e5c: $3e $45
	ld   [wFarCallAddr+1], a                                  ; $5e5e: $ea $99 $c2
	ld   a, $05                                      ; $5e61: $3e $05
	ld   [wFarCallBank], a                                  ; $5e63: $ea $9a $c2
	pop  af                                          ; $5e66: $f1
	call FarCall                                       ; $5e67: $cd $62 $09
	ld   [$b0ab], a                                  ; $5e6a: $ea $ab $b0
	ld   a, [sCurrDay]                                  ; $5e6d: $fa $b0 $af
	dec  a                                           ; $5e70: $3d
	ld   h, a                                        ; $5e71: $67
	ld   l, $07                                      ; $5e72: $2e $07
	call HLequHdivModL                                       ; $5e74: $cd $fb $0b
	inc  h                                           ; $5e77: $24
	ld   l, $c8                                      ; $5e78: $2e $c8
	call AequHtimesL                                       ; $5e7a: $cd $ac $0b
	push hl                                          ; $5e7d: $e5
	push af                                          ; $5e7e: $f5
	ld   a, $4e                                      ; $5e7f: $3e $4e
	ld   [wFarCallAddr], a                                  ; $5e81: $ea $98 $c2
	ld   a, $42                                      ; $5e84: $3e $42
	ld   [wFarCallAddr+1], a                                  ; $5e86: $ea $99 $c2
	ld   a, $0a                                      ; $5e89: $3e $0a
	ld   [wFarCallBank], a                                  ; $5e8b: $ea $9a $c2
	pop  af                                          ; $5e8e: $f1
	call FarCall                                       ; $5e8f: $cd $62 $09
	pop  bc                                          ; $5e92: $c1
	add  hl, bc                                      ; $5e93: $09
	jr   nc, jr_00c_5e99                             ; $5e94: $30 $03

	ld   hl, $ffff                                   ; $5e96: $21 $ff $ff

jr_00c_5e99:
	push af                                          ; $5e99: $f5
	ld   a, $3c                                      ; $5e9a: $3e $3c
	ld   [wFarCallAddr], a                                  ; $5e9c: $ea $98 $c2
	ld   a, $42                                      ; $5e9f: $3e $42
	ld   [wFarCallAddr+1], a                                  ; $5ea1: $ea $99 $c2
	ld   a, $0a                                      ; $5ea4: $3e $0a
	ld   [wFarCallBank], a                                  ; $5ea6: $ea $9a $c2
	pop  af                                          ; $5ea9: $f1
	call FarCall                                       ; $5eaa: $cd $62 $09
	ld   a, [$b1b2]                                  ; $5ead: $fa $b2 $b1
	push af                                          ; $5eb0: $f5
	ld   a, $1c                                      ; $5eb1: $3e $1c
	ld   [wFarCallAddr], a                                  ; $5eb3: $ea $98 $c2
	ld   a, $47                                      ; $5eb6: $3e $47
	ld   [wFarCallAddr+1], a                                  ; $5eb8: $ea $99 $c2
	ld   a, $0a                                      ; $5ebb: $3e $0a
	ld   [wFarCallBank], a                                  ; $5ebd: $ea $9a $c2
	pop  af                                          ; $5ec0: $f1
	call FarCall                                       ; $5ec1: $cd $62 $09

jr_00c_5ec4:
	ld   a, [wWramBank]                                  ; $5ec4: $fa $93 $c2
	push af                                          ; $5ec7: $f5
	ld   a, $07                                      ; $5ec8: $3e $07
	ld   [wWramBank], a                                  ; $5eca: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5ecd: $e0 $70
	ld   a, $97                                      ; $5ecf: $3e $97
	ld   hl, $d000                                   ; $5ed1: $21 $00 $d0
	ld   de, $4690                                   ; $5ed4: $11 $90 $46
	call RLEXorCopy                                       ; $5ed7: $cd $d2 $09
	ld   c, $80                                      ; $5eda: $0e $80
	ld   de, $8000                                   ; $5edc: $11 $00 $80
	ld   a, $07                                      ; $5edf: $3e $07
	ld   hl, $d000                                   ; $5ee1: $21 $00 $d0
	ld   b, $80                                      ; $5ee4: $06 $80
	call EnqueueHDMATransfer                                       ; $5ee6: $cd $7c $02
	ld   c, $80                                      ; $5ee9: $0e $80
	ld   de, $8800                                   ; $5eeb: $11 $00 $88
	ld   a, $07                                      ; $5eee: $3e $07
	ld   hl, $d800                                   ; $5ef0: $21 $00 $d8
	ld   b, $80                                      ; $5ef3: $06 $80
	call EnqueueHDMATransfer                                       ; $5ef5: $cd $7c $02
	ld   a, $9a                                      ; $5ef8: $3e $9a
	ld   hl, $d000                                   ; $5efa: $21 $00 $d0
	ld   de, $53a4                                   ; $5efd: $11 $a4 $53
	call RLEXorCopy                                       ; $5f00: $cd $d2 $09
	ld   c, $80                                      ; $5f03: $0e $80
	ld   de, $9000                                   ; $5f05: $11 $00 $90
	ld   a, $07                                      ; $5f08: $3e $07
	ld   hl, $d000                                   ; $5f0a: $21 $00 $d0
	ld   b, $80                                      ; $5f0d: $06 $80
	call EnqueueHDMATransfer                                       ; $5f0f: $cd $7c $02
	ld   hl, $d000                                   ; $5f12: $21 $00 $d0
	ld   a, $a0                                      ; $5f15: $3e $a0
	ld   de, $4e6e                                   ; $5f17: $11 $6e $4e
	ld   bc, $1412                                   ; $5f1a: $01 $12 $14
	call FarCopyLayout                                       ; $5f1d: $cd $2c $0b
	ld   hl, $d400                                   ; $5f20: $21 $00 $d4
	call FarCopyLayout                                       ; $5f23: $cd $2c $0b
	ld   c, $81                                      ; $5f26: $0e $81
	ld   de, $9800                                   ; $5f28: $11 $00 $98
	ld   a, $07                                      ; $5f2b: $3e $07
	ld   hl, $d000                                   ; $5f2d: $21 $00 $d0
	ld   b, $24                                      ; $5f30: $06 $24
	call EnqueueHDMATransfer                                       ; $5f32: $cd $7c $02
	ld   c, $80                                      ; $5f35: $0e $80
	ld   de, $9800                                   ; $5f37: $11 $00 $98
	ld   a, $07                                      ; $5f3a: $3e $07
	ld   hl, $d400                                   ; $5f3c: $21 $00 $d4
	ld   b, $24                                      ; $5f3f: $06 $24
	call EnqueueHDMATransfer                                       ; $5f41: $cd $7c $02
	pop  af                                          ; $5f44: $f1
	ld   [wWramBank], a                                  ; $5f45: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5f48: $e0 $70
	ld   a, BANK(Palettes_AllWhite)                                      ; $5f4a: $3e $01
	ld   hl, Palettes_AllWhite                                   ; $5f4c: $21 $00 $70
	ld   de, wBGPalettes                                   ; $5f4f: $11 $de $c2
	ld   bc, $0080                                   ; $5f52: $01 $80 $00
	call FarMemCopy                                       ; $5f55: $cd $b2 $09
	ld   bc, $003f                                   ; $5f58: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $5f5b: $cd $aa $04
	ld   a, $00                                      ; $5f5e: $3e $00
	ld   hl, $0000                                   ; $5f60: $21 $00 $00
	ld   d, h                                        ; $5f63: $54
	ld   e, l                                        ; $5f64: $5d
	call ReserveBaseAnimSpriteSpecAndInstance                                       ; $5f65: $cd $4b $2f
	ld   [$cc4e], a                                  ; $5f68: $ea $4e $cc
	call StartAnimatingAnimatedSpriteSpec                                       ; $5f6b: $cd $14 $30
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $5f6e: $cd $76 $30
	ld   bc, $0dd0                                   ; $5f71: $01 $d0 $0d
	ld   d, $01                                      ; $5f74: $16 $01
	ld   a, $9c                                      ; $5f76: $3e $9c
	ld   e, a                                        ; $5f78: $5f
	push af                                          ; $5f79: $f5
	ld   a, $3c                                      ; $5f7a: $3e $3c
	ld   [wFarCallAddr], a                                  ; $5f7c: $ea $98 $c2
	ld   a, $40                                      ; $5f7f: $3e $40
	ld   [wFarCallAddr+1], a                                  ; $5f81: $ea $99 $c2
	ld   a, $01                                      ; $5f84: $3e $01
	ld   [wFarCallBank], a                                  ; $5f86: $ea $9a $c2
	pop  af                                          ; $5f89: $f1
	call FarCall                                       ; $5f8a: $cd $62 $09
	ld   a, $00                                      ; $5f8d: $3e $00
	ld   hl, $0000                                   ; $5f8f: $21 $00 $00
	ld   d, h                                        ; $5f92: $54
	ld   e, l                                        ; $5f93: $5d
	call ReserveBaseAnimSpriteSpecAndInstance                                       ; $5f94: $cd $4b $2f
	ld   [$cc4f], a                                  ; $5f97: $ea $4f $cc
	call StartAnimatingAnimatedSpriteSpec                                       ; $5f9a: $cd $14 $30
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $5f9d: $cd $76 $30
	ld   bc, $64d0                                   ; $5fa0: $01 $d0 $64
	ld   d, $01                                      ; $5fa3: $16 $01
	ld   a, $a0                                      ; $5fa5: $3e $a0
	ld   e, a                                        ; $5fa7: $5f
	push af                                          ; $5fa8: $f5
	ld   a, $3c                                      ; $5fa9: $3e $3c
	ld   [wFarCallAddr], a                                  ; $5fab: $ea $98 $c2
	ld   a, $40                                      ; $5fae: $3e $40
	ld   [wFarCallAddr+1], a                                  ; $5fb0: $ea $99 $c2
	ld   a, $01                                      ; $5fb3: $3e $01
	ld   [wFarCallBank], a                                  ; $5fb5: $ea $9a $c2
	pop  af                                          ; $5fb8: $f1
	call FarCall                                       ; $5fb9: $cd $62 $09
	ld   a, $00                                      ; $5fbc: $3e $00
	ld   hl, $0000                                   ; $5fbe: $21 $00 $00
	ld   d, h                                        ; $5fc1: $54
	ld   e, l                                        ; $5fc2: $5d
	call ReserveBaseAnimSpriteSpecAndInstance                                       ; $5fc3: $cd $4b $2f
	call StartAnimatingAnimatedSpriteSpec                                       ; $5fc6: $cd $14 $30
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $5fc9: $cd $76 $30
	ld   bc, $3f57                                   ; $5fcc: $01 $57 $3f
	ld   d, $01                                      ; $5fcf: $16 $01
	ld   a, $a4                                      ; $5fd1: $3e $a4
	ld   e, a                                        ; $5fd3: $5f
	push af                                          ; $5fd4: $f5
	ld   a, $3c                                      ; $5fd5: $3e $3c
	ld   [wFarCallAddr], a                                  ; $5fd7: $ea $98 $c2
	ld   a, $40                                      ; $5fda: $3e $40
	ld   [wFarCallAddr+1], a                                  ; $5fdc: $ea $99 $c2
	ld   a, $01                                      ; $5fdf: $3e $01
	ld   [wFarCallBank], a                                  ; $5fe1: $ea $9a $c2
	pop  af                                          ; $5fe4: $f1
	call FarCall                                       ; $5fe5: $cd $62 $09
	ld   a, $10                                      ; $5fe8: $3e $10
	call PlaySong                                       ; $5fea: $cd $92 $1a
	call TurnOnLCD                                       ; $5fed: $cd $09 $09
	xor  a                                           ; $5ff0: $af
	ld   [$cc4c], a                                  ; $5ff1: $ea $4c $cc
	ld   [$cc4d], a                                  ; $5ff4: $ea $4d $cc
	ld   hl, wGameSubstate                                   ; $5ff7: $21 $a1 $c2
	inc  [hl]                                        ; $5ffa: $34
	ret                                              ; $5ffb: $c9


Jump_00c_5ffc:
	call ClearOam                                       ; $5ffc: $cd $d7 $0d
	ld   bc, $6012                                   ; $5fff: $01 $12 $60
	push bc                                          ; $6002: $c5
	ld   a, [$cc4c]                                  ; $6003: $fa $4c $cc
	ld   b, $00                                      ; $6006: $06 $00
	ld   c, a                                        ; $6008: $4f
	ld   hl, $6016                                   ; $6009: $21 $16 $60
	add  hl, bc                                      ; $600c: $09
	add  hl, bc                                      ; $600d: $09
	ld   a, [hl+]                                    ; $600e: $2a
	ld   h, [hl]                                     ; $600f: $66
	ld   l, a                                        ; $6010: $6f
	jp   hl                                          ; $6011: $e9


	call AnimateAllAnimatedSpriteSpecs                                       ; $6012: $cd $d3 $2e
	ret                                              ; $6015: $c9


	jr   nz, jr_00c_6078                             ; $6016: $20 $60

	ld   [hl], l                                     ; $6018: $75
	ld   h, b                                        ; $6019: $60
	ld   b, $61                                      ; $601a: $06 $61
	ld   a, a                                        ; $601c: $7f
	ld   h, c                                        ; $601d: $61
	adc  [hl]                                        ; $601e: $8e
	ld   h, c                                        ; $601f: $61
	ld   a, [$cc4d]                                  ; $6020: $fa $4d $cc
	or   a                                           ; $6023: $b7
	jr   nz, jr_00c_603e                             ; $6024: $20 $18

	xor  a                                           ; $6026: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $6027: $ea $62 $c3
	ld   a, $40                                      ; $602a: $3e $40
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $602c: $ea $63 $c3
	ld   a, $03                                      ; $602f: $3e $03
	ld   b, $00                                      ; $6031: $06 $00
	ld   hl, wBGPalettes                                   ; $6033: $21 $de $c2
	ld   c, $a3                                      ; $6036: $0e $a3
	ld   de, $63cc                                   ; $6038: $11 $cc $63
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $603b: $cd $48 $07

jr_00c_603e:
	ld   hl, $cc4d                                   ; $603e: $21 $4d $cc
	ld   a, [hl]                                     ; $6041: $7e
	and  $70                                         ; $6042: $e6 $70
	swap a                                           ; $6044: $cb $37
	call SafeSetAudVolForMultipleChannels                                       ; $6046: $cd $e0 $1c
	ld   a, [hl]                                     ; $6049: $7e
	inc  [hl]                                        ; $604a: $34
	cp   $7f                                         ; $604b: $fe $7f
	jr   nc, jr_00c_6058                             ; $604d: $30 $09

	and  $0f                                         ; $604f: $e6 $0f
	ret  nz                                          ; $6051: $c0

	ld   bc, $0040                                   ; $6052: $01 $40 $00
	jp   FadePalettesAndSetRangeToUpdate                                       ; $6055: $c3 $32 $08


jr_00c_6058:
	ld   a, $a3                                      ; $6058: $3e $a3
	ld   hl, $63cc                                   ; $605a: $21 $cc $63
	ld   de, wBGPalettes                                   ; $605d: $11 $de $c2
	ld   bc, $0080                                   ; $6060: $01 $80 $00
	call FarMemCopy                                       ; $6063: $cd $b2 $09
	ld   bc, $003f                                   ; $6066: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $6069: $cd $aa $04
	ld   hl, $cc4c                                   ; $606c: $21 $4c $cc
	inc  [hl]                                        ; $606f: $34
	xor  a                                           ; $6070: $af
	ld   [$cc4d], a                                  ; $6071: $ea $4d $cc
	ret                                              ; $6074: $c9


	ld   hl, $cc4d                                   ; $6075: $21 $4d $cc

jr_00c_6078:
	ld   a, [hl]                                     ; $6078: $7e
	inc  [hl]                                        ; $6079: $34
	ld   h, $00                                      ; $607a: $26 $00
	ld   l, a                                        ; $607c: $6f
	ld   bc, $60f7                                   ; $607d: $01 $f7 $60
	add  hl, bc                                      ; $6080: $09
	ld   a, [hl]                                     ; $6081: $7e
	cp   $80                                         ; $6082: $fe $80
	jr   z, jr_00c_60e9                              ; $6084: $28 $63

	push af                                          ; $6086: $f5
	push af                                          ; $6087: $f5
	ld   a, [$cc4e]                                  ; $6088: $fa $4e $cc
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $608b: $cd $76 $30
	push af                                          ; $608e: $f5
	ld   a, $71                                      ; $608f: $3e $71
	ld   [wFarCallAddr], a                                  ; $6091: $ea $98 $c2
	ld   a, $40                                      ; $6094: $3e $40
	ld   [wFarCallAddr+1], a                                  ; $6096: $ea $99 $c2
	ld   a, $01                                      ; $6099: $3e $01
	ld   [wFarCallBank], a                                  ; $609b: $ea $9a $c2
	pop  af                                          ; $609e: $f1
	call FarCall                                       ; $609f: $cd $62 $09
	pop  af                                          ; $60a2: $f1
	ld   c, a                                        ; $60a3: $4f
	push af                                          ; $60a4: $f5
	ld   a, $55                                      ; $60a5: $3e $55
	ld   [wFarCallAddr], a                                  ; $60a7: $ea $98 $c2
	ld   a, $40                                      ; $60aa: $3e $40
	ld   [wFarCallAddr+1], a                                  ; $60ac: $ea $99 $c2
	ld   a, $01                                      ; $60af: $3e $01
	ld   [wFarCallBank], a                                  ; $60b1: $ea $9a $c2
	pop  af                                          ; $60b4: $f1
	call FarCall                                       ; $60b5: $cd $62 $09
	ld   a, [$cc4f]                                  ; $60b8: $fa $4f $cc
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $60bb: $cd $76 $30
	push af                                          ; $60be: $f5
	ld   a, $71                                      ; $60bf: $3e $71
	ld   [wFarCallAddr], a                                  ; $60c1: $ea $98 $c2
	ld   a, $40                                      ; $60c4: $3e $40
	ld   [wFarCallAddr+1], a                                  ; $60c6: $ea $99 $c2
	ld   a, $01                                      ; $60c9: $3e $01
	ld   [wFarCallBank], a                                  ; $60cb: $ea $9a $c2
	pop  af                                          ; $60ce: $f1
	call FarCall                                       ; $60cf: $cd $62 $09
	pop  af                                          ; $60d2: $f1
	ld   c, a                                        ; $60d3: $4f
	push af                                          ; $60d4: $f5
	ld   a, $55                                      ; $60d5: $3e $55
	ld   [wFarCallAddr], a                                  ; $60d7: $ea $98 $c2
	ld   a, $40                                      ; $60da: $3e $40
	ld   [wFarCallAddr+1], a                                  ; $60dc: $ea $99 $c2
	ld   a, $01                                      ; $60df: $3e $01
	ld   [wFarCallBank], a                                  ; $60e1: $ea $9a $c2
	pop  af                                          ; $60e4: $f1
	call FarCall                                       ; $60e5: $cd $62 $09
	ret                                              ; $60e8: $c9


jr_00c_60e9:
	ld   a, $1e                                      ; $60e9: $3e $1e
	call PlaySoundEffect                                       ; $60eb: $cd $df $1a
	ld   hl, $cc4c                                   ; $60ee: $21 $4c $cc
	inc  [hl]                                        ; $60f1: $34
	xor  a                                           ; $60f2: $af
	ld   [$cc4d], a                                  ; $60f3: $ea $4d $cc
	ret                                              ; $60f6: $c9


	ret  c                                           ; $60f7: $d8

	ldh  [$e8], a                                    ; $60f8: $e0 $e8
	ldh  a, [$f8]                                    ; $60fa: $f0 $f8
	nop                                              ; $60fc: $00
	ld   [$080c], sp                                 ; $60fd: $08 $0c $08
	inc  b                                           ; $6100: $04
	ld   [bc], a                                     ; $6101: $02
	inc  b                                           ; $6102: $04
	ld   b, $04                                      ; $6103: $06 $04
	add  b                                           ; $6105: $80
	ld   hl, $cc4d                                   ; $6106: $21 $4d $cc
	ld   a, [hl]                                     ; $6109: $7e
	inc  [hl]                                        ; $610a: $34
	or   a                                           ; $610b: $b7
	jr   z, jr_00c_6120                              ; $610c: $28 $12

	cp   $05                                         ; $610e: $fe $05
	jr   z, jr_00c_6120                              ; $6110: $28 $0e

	cp   $08                                         ; $6112: $fe $08
	jr   z, jr_00c_6120                              ; $6114: $28 $0a

	ret  c                                           ; $6116: $d8

	ld   hl, $cc4c                                   ; $6117: $21 $4c $cc
	inc  [hl]                                        ; $611a: $34
	xor  a                                           ; $611b: $af
	ld   [$cc4d], a                                  ; $611c: $ea $4d $cc
	ret                                              ; $611f: $c9


jr_00c_6120:
	ld   a, [$cc4e]                                  ; $6120: $fa $4e $cc
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $6123: $cd $76 $30
	push af                                          ; $6126: $f5
	ld   a, $6a                                      ; $6127: $3e $6a
	ld   [wFarCallAddr], a                                  ; $6129: $ea $98 $c2
	ld   a, $40                                      ; $612c: $3e $40
	ld   [wFarCallAddr+1], a                                  ; $612e: $ea $99 $c2
	ld   a, $01                                      ; $6131: $3e $01
	ld   [wFarCallBank], a                                  ; $6133: $ea $9a $c2
	pop  af                                          ; $6136: $f1
	call FarCall                                       ; $6137: $cd $62 $09
	inc  c                                           ; $613a: $0c
	push af                                          ; $613b: $f5
	ld   a, $4b                                      ; $613c: $3e $4b
	ld   [wFarCallAddr], a                                  ; $613e: $ea $98 $c2
	ld   a, $40                                      ; $6141: $3e $40
	ld   [wFarCallAddr+1], a                                  ; $6143: $ea $99 $c2
	ld   a, $01                                      ; $6146: $3e $01
	ld   [wFarCallBank], a                                  ; $6148: $ea $9a $c2
	pop  af                                          ; $614b: $f1
	call FarCall                                       ; $614c: $cd $62 $09
	ld   a, [$cc4f]                                  ; $614f: $fa $4f $cc
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $6152: $cd $76 $30
	push af                                          ; $6155: $f5
	ld   a, $6a                                      ; $6156: $3e $6a
	ld   [wFarCallAddr], a                                  ; $6158: $ea $98 $c2
	ld   a, $40                                      ; $615b: $3e $40
	ld   [wFarCallAddr+1], a                                  ; $615d: $ea $99 $c2
	ld   a, $01                                      ; $6160: $3e $01
	ld   [wFarCallBank], a                                  ; $6162: $ea $9a $c2
	pop  af                                          ; $6165: $f1
	call FarCall                                       ; $6166: $cd $62 $09
	inc  c                                           ; $6169: $0c
	push af                                          ; $616a: $f5
	ld   a, $4b                                      ; $616b: $3e $4b
	ld   [wFarCallAddr], a                                  ; $616d: $ea $98 $c2
	ld   a, $40                                      ; $6170: $3e $40
	ld   [wFarCallAddr+1], a                                  ; $6172: $ea $99 $c2
	ld   a, $01                                      ; $6175: $3e $01
	ld   [wFarCallBank], a                                  ; $6177: $ea $9a $c2
	pop  af                                          ; $617a: $f1
	call FarCall                                       ; $617b: $cd $62 $09
	ret                                              ; $617e: $c9


	ld   a, [wInGameButtonsPressed]                                  ; $617f: $fa $10 $c2
	and  $09                                         ; $6182: $e6 $09
	ret  z                                           ; $6184: $c8

	ld   hl, $cc4c                                   ; $6185: $21 $4c $cc
	inc  [hl]                                        ; $6188: $34
	xor  a                                           ; $6189: $af
	ld   [$cc4d], a                                  ; $618a: $ea $4d $cc
	ret                                              ; $618d: $c9


	ld   a, [$cc4d]                                  ; $618e: $fa $4d $cc
	or   a                                           ; $6191: $b7
	jr   nz, jr_00c_61ac                             ; $6192: $20 $18

	xor  a                                           ; $6194: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $6195: $ea $62 $c3
	ld   a, $40                                      ; $6198: $3e $40
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $619a: $ea $63 $c3
	ld   a, $03                                      ; $619d: $3e $03
	ld   b, $00                                      ; $619f: $06 $00
	ld   hl, wBGPalettes                                   ; $61a1: $21 $de $c2
	ld   c, $01                                      ; $61a4: $0e $01
	ld   de, $7000                                   ; $61a6: $11 $00 $70
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $61a9: $cd $48 $07

jr_00c_61ac:
	ld   hl, $cc4d                                   ; $61ac: $21 $4d $cc
	ld   a, [hl]                                     ; $61af: $7e
	cpl                                              ; $61b0: $2f
	and  $70                                         ; $61b1: $e6 $70
	swap a                                           ; $61b3: $cb $37
	call SafeSetAudVolForMultipleChannels                                       ; $61b5: $cd $e0 $1c
	ld   a, [hl]                                     ; $61b8: $7e
	inc  [hl]                                        ; $61b9: $34
	cp   $7f                                         ; $61ba: $fe $7f
	jr   nc, jr_00c_61c7                             ; $61bc: $30 $09

	and  $0f                                         ; $61be: $e6 $0f
	ret  nz                                          ; $61c0: $c0

	ld   bc, $0040                                   ; $61c1: $01 $40 $00
	jp   FadePalettesAndSetRangeToUpdate                                       ; $61c4: $c3 $32 $08


jr_00c_61c7:
	ld   a, BANK(Palettes_AllWhite)                                      ; $61c7: $3e $01
	ld   hl, Palettes_AllWhite                                   ; $61c9: $21 $00 $70
	ld   de, wBGPalettes                                   ; $61cc: $11 $de $c2
	ld   bc, $0080                                   ; $61cf: $01 $80 $00
	call FarMemCopy                                       ; $61d2: $cd $b2 $09
	ld   bc, $003f                                   ; $61d5: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $61d8: $cd $aa $04
	xor  a                                           ; $61db: $af
	call PlaySong                                       ; $61dc: $cd $92 $1a
	ld   h, $46                                      ; $61df: $26 $46
	ld   l, $00                                      ; $61e1: $2e $00
	ld   bc, $000f                                   ; $61e3: $01 $0f $00
	ld   a, $01                                      ; $61e6: $3e $01
	push af                                          ; $61e8: $f5
	ld   a, $8f                                      ; $61e9: $3e $8f
	ld   [wFarCallAddr], a                                  ; $61eb: $ea $98 $c2
	ld   a, $75                                      ; $61ee: $3e $75
	ld   [wFarCallAddr+1], a                                  ; $61f0: $ea $99 $c2
	ld   a, $0c                                      ; $61f3: $3e $0c
	ld   [wFarCallBank], a                                  ; $61f5: $ea $9a $c2
	pop  af                                          ; $61f8: $f1
	call FarCall                                       ; $61f9: $cd $62 $09
	ret                                              ; $61fc: $c9


GameState40::
	ld   a, [wGameSubstate]                                  ; $61fd: $fa $a1 $c2
	dec  a                                           ; $6200: $3d
	jp   z, Jump_00c_670d                            ; $6201: $ca $0d $67

	dec  a                                           ; $6204: $3d
	jp   z, Jump_00c_6710                            ; $6205: $ca $10 $67

	xor  a                                           ; $6208: $af
	ld   [$cc57], a                                  ; $6209: $ea $57 $cc
	ld   [$cc58], a                                  ; $620c: $ea $58 $cc
	jp   Jump_00c_6212                               ; $620f: $c3 $12 $62


Jump_00c_6212:
	ld   a, [wWramBank]                                  ; $6212: $fa $93 $c2
	push af                                          ; $6215: $f5
	ld   a, $02                                      ; $6216: $3e $02
	ld   [wWramBank], a                                  ; $6218: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $621b: $e0 $70
	ld   a, $07                                      ; $621d: $3e $07
	call SafeSetAudVolForMultipleChannels                                       ; $621f: $cd $e0 $1c
	call ClearDisplayRegsAllowVBlankInt                                       ; $6222: $cd $59 $0b
	ld   a, [wLCDC]                                  ; $6225: $fa $03 $c2
	and  $80                                         ; $6228: $e6 $80
	or   $a7                                         ; $622a: $f6 $a7
	ld   [wLCDC], a                                  ; $622c: $ea $03 $c2
	ldh  [rLCDC], a                                  ; $622f: $e0 $40
	ld   a, BANK(Palettes_AllWhite)                                      ; $6231: $3e $01
	ld   hl, Palettes_AllWhite                                   ; $6233: $21 $00 $70
	ld   de, wBGPalettes                                   ; $6236: $11 $de $c2
	ld   bc, $0080                                   ; $6239: $01 $80 $00
	call FarMemCopy                                       ; $623c: $cd $b2 $09
	ld   bc, $003f                                   ; $623f: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $6242: $cd $aa $04
	ld   a, $07                                      ; $6245: $3e $07
	ld   [$c20b], a                                  ; $6247: $ea $0b $c2
	ld   hl, $c20c                                   ; $624a: $21 $0c $c2
	set  6, [hl]                                     ; $624d: $cb $f6
	ld   hl, wIE                                   ; $624f: $21 $0d $c2
	set  1, [hl]                                     ; $6252: $cb $ce
	ld   a, $09                                      ; $6254: $3e $09
	ld   [wLCDCIntFuncIdx], a                                  ; $6256: $ea $8d $c2
	ld   a, $70                                      ; $6259: $3e $70
	ld   [wSCY], a                                  ; $625b: $ea $08 $c2
	ld   a, $07                                      ; $625e: $3e $07
	ld   [wWX], a                                  ; $6260: $ea $09 $c2
	ld   a, $68                                      ; $6263: $3e $68
	ld   [wWY], a                                  ; $6265: $ea $0a $c2
	ld   a, $ff                                      ; $6268: $3e $ff
	ld   [wInGameInputsEnabled], a                                  ; $626a: $ea $0e $c2
	call ClearOam                                       ; $626d: $cd $d7 $0d
	call ClearBaseAnimSpriteSpecDetails                                       ; $6270: $cd $c9 $2e
	ld   a, $08                                      ; $6273: $3e $08
	ld   [$cc5b], a                                  ; $6275: $ea $5b $cc
	ld   a, [$cc57]                                  ; $6278: $fa $57 $cc
	and  $0f                                         ; $627b: $e6 $0f
	swap a                                           ; $627d: $cb $37
	sub  $08                                         ; $627f: $d6 $08
	ld   [$cc5a], a                                  ; $6281: $ea $5a $cc
	call Call_00c_640f                               ; $6284: $cd $0f $64
	xor  a                                           ; $6287: $af
	ld   [$cc5c], a                                  ; $6288: $ea $5c $cc
	ld   a, $00                                      ; $628b: $3e $00
	ld   hl, $0000                                   ; $628d: $21 $00 $00
	ld   d, h                                        ; $6290: $54
	ld   e, l                                        ; $6291: $5d
	call ReserveBaseAnimSpriteSpecAndInstance                                       ; $6292: $cd $4b $2f
	call StartAnimatingAnimatedSpriteSpec                                       ; $6295: $cd $14 $30
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $6298: $cd $76 $30
	ld   bc, $8808                                   ; $629b: $01 $08 $88
	ld   d, $09                                      ; $629e: $16 $09
	ld   a, [$cc54]                                  ; $62a0: $fa $54 $cc
	dec  a                                           ; $62a3: $3d
	add  $0a                                         ; $62a4: $c6 $0a
	ld   e, a                                        ; $62a6: $5f
	push af                                          ; $62a7: $f5
	ld   a, $3c                                      ; $62a8: $3e $3c
	ld   [wFarCallAddr], a                                  ; $62aa: $ea $98 $c2
	ld   a, $40                                      ; $62ad: $3e $40
	ld   [wFarCallAddr+1], a                                  ; $62af: $ea $99 $c2
	ld   a, $01                                      ; $62b2: $3e $01
	ld   [wFarCallBank], a                                  ; $62b4: $ea $9a $c2
	pop  af                                          ; $62b7: $f1
	call FarCall                                       ; $62b8: $cd $62 $09
	ld   a, $00                                      ; $62bb: $3e $00
	ld   hl, $0000                                   ; $62bd: $21 $00 $00
	ld   d, h                                        ; $62c0: $54
	ld   e, l                                        ; $62c1: $5d
	call ReserveBaseAnimSpriteSpecAndInstance                                       ; $62c2: $cd $4b $2f
	ld   [$cc5e], a                                  ; $62c5: $ea $5e $cc
	call StartAnimatingAnimatedSpriteSpec                                       ; $62c8: $cd $14 $30
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $62cb: $cd $76 $30
	ld   bc, $8808                                   ; $62ce: $01 $08 $88
	ld   d, $09                                      ; $62d1: $16 $09
	ld   a, $19                                      ; $62d3: $3e $19
	ld   e, a                                        ; $62d5: $5f
	push af                                          ; $62d6: $f5
	ld   a, $3c                                      ; $62d7: $3e $3c
	ld   [wFarCallAddr], a                                  ; $62d9: $ea $98 $c2
	ld   a, $40                                      ; $62dc: $3e $40
	ld   [wFarCallAddr+1], a                                  ; $62de: $ea $99 $c2
	ld   a, $01                                      ; $62e1: $3e $01
	ld   [wFarCallBank], a                                  ; $62e3: $ea $9a $c2
	pop  af                                          ; $62e6: $f1
	call FarCall                                       ; $62e7: $cd $62 $09
	xor  a                                           ; $62ea: $af
	ld   [$cc66], a                                  ; $62eb: $ea $66 $cc
	ld   [$cc50], a                                  ; $62ee: $ea $50 $cc
	ld   [$cc51], a                                  ; $62f1: $ea $51 $cc
	ld   a, $02                                      ; $62f4: $3e $02
	ld   [wGameSubstate], a                                  ; $62f6: $ea $a1 $c2
	pop  af                                          ; $62f9: $f1
	ld   [wWramBank], a                                  ; $62fa: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $62fd: $e0 $70
	ret                                              ; $62ff: $c9


Call_00c_6300:
	ld   a, [wWramBank]                                  ; $6300: $fa $93 $c2
	push af                                          ; $6303: $f5
	ld   a, $07                                      ; $6304: $3e $07
	ld   [wWramBank], a                                  ; $6306: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $6309: $e0 $70
	ld   hl, $d000                                   ; $630b: $21 $00 $d0
	ld   de, $000c                                   ; $630e: $11 $0c $00
	ld   b, $20                                      ; $6311: $06 $20

jr_00c_6313:
	call Call_00c_6321                               ; $6313: $cd $21 $63
	add  hl, de                                      ; $6316: $19
	dec  b                                           ; $6317: $05
	jr   nz, jr_00c_6313                             ; $6318: $20 $f9

	pop  af                                          ; $631a: $f1
	ld   [wWramBank], a                                  ; $631b: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $631e: $e0 $70
	ret                                              ; $6320: $c9


Call_00c_6321:
	ld   a, $01                                      ; $6321: $3e $01
	ld   [hl+], a                                    ; $6323: $22
	ld   [hl+], a                                    ; $6324: $22
	xor  a                                           ; $6325: $af
	ld   [hl+], a                                    ; $6326: $22
	ld   [hl+], a                                    ; $6327: $22
	ld   [hl+], a                                    ; $6328: $22
	set  3, a                                        ; $6329: $cb $df
	ld   [hl+], a                                    ; $632b: $22
	ld   [hl+], a                                    ; $632c: $22
	ld   [hl+], a                                    ; $632d: $22
	ld   [hl+], a                                    ; $632e: $22
	ld   [hl+], a                                    ; $632f: $22
	ld   [hl+], a                                    ; $6330: $22
	ld   [hl+], a                                    ; $6331: $22
	ld   [hl+], a                                    ; $6332: $22
	ld   [hl+], a                                    ; $6333: $22
	ld   [hl+], a                                    ; $6334: $22
	res  3, a                                        ; $6335: $cb $9f
	ld   [hl+], a                                    ; $6337: $22
	ld   [hl+], a                                    ; $6338: $22
	ld   a, $01                                      ; $6339: $3e $01
	ld   [hl+], a                                    ; $633b: $22
	ld   [hl+], a                                    ; $633c: $22
	ld   [hl+], a                                    ; $633d: $22
	ret                                              ; $633e: $c9


Call_00c_633f:
	ld   a, [wWramBank]                                  ; $633f: $fa $93 $c2
	push af                                          ; $6342: $f5
	ld   a, $07                                      ; $6343: $3e $07
	ld   [wWramBank], a                                  ; $6345: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $6348: $e0 $70
	ld   hl, $d400                                   ; $634a: $21 $00 $d4
	ld   de, $000c                                   ; $634d: $11 $0c $00
	ld   b, $20                                      ; $6350: $06 $20

jr_00c_6352:
	ld   a, $f8                                      ; $6352: $3e $f8
	ld   [hl+], a                                    ; $6354: $22
	ld   a, $fa                                      ; $6355: $3e $fa
	ld   [hl+], a                                    ; $6357: $22
	ld   a, $80                                      ; $6358: $3e $80
	ld   [hl+], a                                    ; $635a: $22
	ld   [hl+], a                                    ; $635b: $22
	ld   [hl+], a                                    ; $635c: $22
	ld   [hl+], a                                    ; $635d: $22
	ld   [hl+], a                                    ; $635e: $22
	ld   [hl+], a                                    ; $635f: $22
	ld   [hl+], a                                    ; $6360: $22
	ld   [hl+], a                                    ; $6361: $22
	ld   [hl+], a                                    ; $6362: $22
	ld   [hl+], a                                    ; $6363: $22
	ld   [hl+], a                                    ; $6364: $22
	ld   [hl+], a                                    ; $6365: $22
	ld   [hl+], a                                    ; $6366: $22
	ld   [hl+], a                                    ; $6367: $22
	ld   [hl+], a                                    ; $6368: $22
	ld   a, $fb                                      ; $6369: $3e $fb
	ld   [hl+], a                                    ; $636b: $22
	ld   a, $dc                                      ; $636c: $3e $dc
	ld   [hl+], a                                    ; $636e: $22
	ld   a, $ea                                      ; $636f: $3e $ea
	ld   [hl+], a                                    ; $6371: $22
	add  hl, de                                      ; $6372: $19
	dec  b                                           ; $6373: $05
	jr   nz, jr_00c_6352                             ; $6374: $20 $dc

	pop  af                                          ; $6376: $f1
	ld   [wWramBank], a                                  ; $6377: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $637a: $e0 $70
	ret                                              ; $637c: $c9


Call_00c_637d:
	ld   a, [wWramBank]                                  ; $637d: $fa $93 $c2
	push af                                          ; $6380: $f5
	ld   a, $07                                      ; $6381: $3e $07
	ld   [wWramBank], a                                  ; $6383: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $6386: $e0 $70
	call Call_00c_633f                               ; $6388: $cd $3f $63
	ld   a, [$cc57]                                  ; $638b: $fa $57 $cc
	and  $07                                         ; $638e: $e6 $07
	ld   h, a                                        ; $6390: $67
	ld   l, $14                                      ; $6391: $2e $14
	call AequHtimesL                                       ; $6393: $cd $ac $0b
	add  $e0                                         ; $6396: $c6 $e0
	ld   hl, $d405                                   ; $6398: $21 $05 $d4
	ld   de, $0016                                   ; $639b: $11 $16 $00
	ld   b, $06                                      ; $639e: $06 $06
	ld   c, $02                                      ; $63a0: $0e $02

jr_00c_63a2:
	call Call_00c_63e4                               ; $63a2: $cd $e4 $63
	cp   $80                                         ; $63a5: $fe $80
	jr   nz, jr_00c_63ab                             ; $63a7: $20 $02

	ld   a, $e0                                      ; $63a9: $3e $e0

jr_00c_63ab:
	add  hl, de                                      ; $63ab: $19
	dec  b                                           ; $63ac: $05
	jr   nz, jr_00c_63a2                             ; $63ad: $20 $f3

	pop  af                                          ; $63af: $f1
	ld   [wWramBank], a                                  ; $63b0: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $63b3: $e0 $70
	ret                                              ; $63b5: $c9


Call_00c_63b6:
	ld   a, [wWramBank]                                  ; $63b6: $fa $93 $c2
	push af                                          ; $63b9: $f5
	ld   a, $07                                      ; $63ba: $3e $07
	ld   [wWramBank], a                                  ; $63bc: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $63bf: $e0 $70
	call Call_00c_633f                               ; $63c1: $cd $3f $63
	ld   hl, $d405                                   ; $63c4: $21 $05 $d4
	ld   de, $0016                                   ; $63c7: $11 $16 $00
	ld   b, $10                                      ; $63ca: $06 $10
	ld   c, $02                                      ; $63cc: $0e $02
	ld   a, $e0                                      ; $63ce: $3e $e0

jr_00c_63d0:
	call Call_00c_63e4                               ; $63d0: $cd $e4 $63
	cp   $80                                         ; $63d3: $fe $80
	jr   nz, jr_00c_63d9                             ; $63d5: $20 $02

	ld   a, $e0                                      ; $63d7: $3e $e0

jr_00c_63d9:
	add  hl, de                                      ; $63d9: $19
	dec  b                                           ; $63da: $05
	jr   nz, jr_00c_63d0                             ; $63db: $20 $f3

	pop  af                                          ; $63dd: $f1
	ld   [wWramBank], a                                  ; $63de: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $63e1: $e0 $70
	ret                                              ; $63e3: $c9


Call_00c_63e4:
	ld   [hl+], a                                    ; $63e4: $22
	add  c                                           ; $63e5: $81
	ld   [hl+], a                                    ; $63e6: $22
	add  c                                           ; $63e7: $81
	ld   [hl+], a                                    ; $63e8: $22
	add  c                                           ; $63e9: $81
	ld   [hl+], a                                    ; $63ea: $22
	add  c                                           ; $63eb: $81
	ld   [hl+], a                                    ; $63ec: $22
	add  c                                           ; $63ed: $81
	ld   [hl+], a                                    ; $63ee: $22
	add  c                                           ; $63ef: $81
	ld   [hl+], a                                    ; $63f0: $22
	add  c                                           ; $63f1: $81
	ld   [hl+], a                                    ; $63f2: $22
	add  c                                           ; $63f3: $81
	ld   [hl+], a                                    ; $63f4: $22
	add  c                                           ; $63f5: $81
	ld   [hl+], a                                    ; $63f6: $22
	add  hl, de                                      ; $63f7: $19
	sub  $11                                         ; $63f8: $d6 $11
	ld   [hl+], a                                    ; $63fa: $22
	add  c                                           ; $63fb: $81
	ld   [hl+], a                                    ; $63fc: $22
	add  c                                           ; $63fd: $81
	ld   [hl+], a                                    ; $63fe: $22
	add  c                                           ; $63ff: $81
	ld   [hl+], a                                    ; $6400: $22
	add  c                                           ; $6401: $81
	ld   [hl+], a                                    ; $6402: $22
	add  c                                           ; $6403: $81
	ld   [hl+], a                                    ; $6404: $22
	add  c                                           ; $6405: $81
	ld   [hl+], a                                    ; $6406: $22
	add  c                                           ; $6407: $81
	ld   [hl+], a                                    ; $6408: $22
	add  c                                           ; $6409: $81
	ld   [hl+], a                                    ; $640a: $22
	add  c                                           ; $640b: $81
	ld   [hl+], a                                    ; $640c: $22
	inc  a                                           ; $640d: $3c
	ret                                              ; $640e: $c9


Call_00c_640f:
	xor  a                                           ; $640f: $af
	ld   [$cc56], a                                  ; $6410: $ea $56 $cc
	xor  a                                           ; $6413: $af
	call Call_00c_712f                               ; $6414: $cd $2f $71
	xor  a                                           ; $6417: $af
	ld   de, $d880                                   ; $6418: $11 $80 $d8

jr_00c_641b:
	push hl                                          ; $641b: $e5
	push de                                          ; $641c: $d5
	push af                                          ; $641d: $f5
	ld   a, [hl+]                                    ; $641e: $2a
	ld   h, [hl]                                     ; $641f: $66
	ld   l, a                                        ; $6420: $6f
	or   h                                           ; $6421: $b4
	jr   z, jr_00c_644f                              ; $6422: $28 $2b

	push af                                          ; $6424: $f5
	ld   a, $de                                      ; $6425: $3e $de
	ld   [wFarCallAddr], a                                  ; $6427: $ea $98 $c2
	ld   a, $44                                      ; $642a: $3e $44
	ld   [wFarCallAddr+1], a                                  ; $642c: $ea $99 $c2
	ld   a, $09                                      ; $642f: $3e $09
	ld   [wFarCallBank], a                                  ; $6431: $ea $9a $c2
	pop  af                                          ; $6434: $f1
	call FarCall                                       ; $6435: $cd $62 $09
	or   a                                           ; $6438: $b7
	jr   z, jr_00c_6445                              ; $6439: $28 $0a

	pop  af                                          ; $643b: $f1
	pop  de                                          ; $643c: $d1
	ld   [de], a                                     ; $643d: $12
	inc  de                                          ; $643e: $13
	push de                                          ; $643f: $d5
	push af                                          ; $6440: $f5
	ld   hl, $cc56                                   ; $6441: $21 $56 $cc
	inc  [hl]                                        ; $6444: $34

jr_00c_6445:
	pop  af                                          ; $6445: $f1
	inc  a                                           ; $6446: $3c
	pop  de                                          ; $6447: $d1
	pop  hl                                          ; $6448: $e1
	ld   bc, $0005                                   ; $6449: $01 $05 $00
	add  hl, bc                                      ; $644c: $09
	jr   jr_00c_641b                                 ; $644d: $18 $cc

jr_00c_644f:
	pop  hl                                          ; $644f: $e1
	pop  de                                          ; $6450: $d1
	pop  af                                          ; $6451: $f1
	xor  a                                           ; $6452: $af
	ld   [$cc54], a                                  ; $6453: $ea $54 $cc
	ld   b, $00                                      ; $6456: $06 $00
	ld   c, $ff                                      ; $6458: $0e $ff
	ld   de, $d980                                   ; $645a: $11 $80 $d9
	ld   hl, $d880                                   ; $645d: $21 $80 $d8

jr_00c_6460:
	ld   a, [hl+]                                    ; $6460: $2a
	push hl                                          ; $6461: $e5
	push de                                          ; $6462: $d5
	push bc                                          ; $6463: $c5
	call Call_00c_712f                               ; $6464: $cd $2f $71
	ld   bc, $0004                                   ; $6467: $01 $04 $00
	add  hl, bc                                      ; $646a: $09
	ld   a, [hl]                                     ; $646b: $7e
	and  $f0                                         ; $646c: $e6 $f0
	pop  bc                                          ; $646e: $c1
	push bc                                          ; $646f: $c5
	cp   c                                           ; $6470: $b9
	jr   z, jr_00c_6481                              ; $6471: $28 $0e

	pop  bc                                          ; $6473: $c1
	pop  de                                          ; $6474: $d1
	ld   c, a                                        ; $6475: $4f
	ld   [de], a                                     ; $6476: $12
	inc  de                                          ; $6477: $13
	ld   a, b                                        ; $6478: $78
	ld   [de], a                                     ; $6479: $12
	ld   hl, $cc54                                   ; $647a: $21 $54 $cc
	inc  [hl]                                        ; $647d: $34
	inc  de                                          ; $647e: $13
	push de                                          ; $647f: $d5
	push bc                                          ; $6480: $c5

jr_00c_6481:
	pop  bc                                          ; $6481: $c1
	pop  de                                          ; $6482: $d1
	pop  hl                                          ; $6483: $e1
	inc  b                                           ; $6484: $04
	ld   a, [$cc56]                                  ; $6485: $fa $56 $cc
	cp   b                                           ; $6488: $b8
	jr   nz, jr_00c_6460                             ; $6489: $20 $d5

	ld   a, [$cc54]                                  ; $648b: $fa $54 $cc
	sla  a                                           ; $648e: $cb $27
	ld   h, $00                                      ; $6490: $26 $00
	ld   l, a                                        ; $6492: $6f
	ld   bc, $d981                                   ; $6493: $01 $81 $d9
	add  hl, bc                                      ; $6496: $09
	ld   a, [$d981]                                  ; $6497: $fa $81 $d9
	ld   [hl-], a                                    ; $649a: $32
	ld   a, [$d980]                                  ; $649b: $fa $80 $d9
	ld   [hl-], a                                    ; $649e: $32
	ld   a, [hl-]                                    ; $649f: $3a
	ld   [$d97f], a                                  ; $64a0: $ea $7f $d9
	ld   a, [hl-]                                    ; $64a3: $3a
	ld   [$d97e], a                                  ; $64a4: $ea $7e $d9
	ret                                              ; $64a7: $c9


Call_00c_64a8:
	ld   h, $00                                      ; $64a8: $26 $00
	ld   l, a                                        ; $64aa: $6f
	ld   bc, $d880                                   ; $64ab: $01 $80 $d8
	add  hl, bc                                      ; $64ae: $09
	ld   a, [hl]                                     ; $64af: $7e
	ret                                              ; $64b0: $c9


	push af                                          ; $64b1: $f5
	call Call_00c_64d5                               ; $64b2: $cd $d5 $64
	pop  af                                          ; $64b5: $f1
	inc  a                                           ; $64b6: $3c
	push af                                          ; $64b7: $f5
	call Call_00c_64d5                               ; $64b8: $cd $d5 $64
	pop  af                                          ; $64bb: $f1
	inc  a                                           ; $64bc: $3c
	push af                                          ; $64bd: $f5
	call Call_00c_64d5                               ; $64be: $cd $d5 $64
	pop  af                                          ; $64c1: $f1
	inc  a                                           ; $64c2: $3c
	push af                                          ; $64c3: $f5
	call Call_00c_64d5                               ; $64c4: $cd $d5 $64
	pop  af                                          ; $64c7: $f1
	inc  a                                           ; $64c8: $3c
	push af                                          ; $64c9: $f5
	call Call_00c_64d5                               ; $64ca: $cd $d5 $64
	pop  af                                          ; $64cd: $f1
	inc  a                                           ; $64ce: $3c
	push af                                          ; $64cf: $f5
	call Call_00c_64d5                               ; $64d0: $cd $d5 $64
	pop  af                                          ; $64d3: $f1
	ret                                              ; $64d4: $c9


Call_00c_64d5:
	push af                                          ; $64d5: $f5
	ld   hl, $d340                                   ; $64d6: $21 $40 $d3
	ld   bc, $00a0                                   ; $64d9: $01 $a0 $00
	ld   de, $0000                                   ; $64dc: $11 $00 $00
	call CopyEthenDintoHL_BCtimes                                       ; $64df: $cd $9f $09
	call InitWideTextBoxDimensions                                       ; $64e2: $cd $ec $0f
	ld   bc, $1401                                   ; $64e5: $01 $01 $14
	call SetKanjiTextBoxDimensions                                       ; $64e8: $cd $24 $14
	ld   bc, $0000                                   ; $64eb: $01 $00 $00
	call SetCurrKanjiColAndRowToDrawOn                                       ; $64ee: $cd $34 $14
	pop  af                                          ; $64f1: $f1
	ld   hl, $cc56                                   ; $64f2: $21 $56 $cc
	cp   [hl]                                        ; $64f5: $be
	jr   nc, jr_00c_6558                             ; $64f6: $30 $60

	push af                                          ; $64f8: $f5
	call Call_00c_64a8                               ; $64f9: $cd $a8 $64
	call Call_00c_712f                               ; $64fc: $cd $2f $71
	push hl                                          ; $64ff: $e5
	ld   bc, $0004                                   ; $6500: $01 $04 $00
	add  hl, bc                                      ; $6503: $09
	ld   a, [hl]                                     ; $6504: $7e
	cp   $81                                         ; $6505: $fe $81
	jr   c, jr_00c_6533                              ; $6507: $38 $2a

	cp   $86                                         ; $6509: $fe $86
	jr   nc, jr_00c_6533                             ; $650b: $30 $26

	and  $0f                                         ; $650d: $e6 $0f
	dec  a                                           ; $650f: $3d
	ld   h, $00                                      ; $6510: $26 $00
	ld   l, a                                        ; $6512: $6f
	ld   bc, $00f6                                   ; $6513: $01 $f6 $00
	add  hl, bc                                      ; $6516: $09
	push af                                          ; $6517: $f5
	ld   a, $de                                      ; $6518: $3e $de
	ld   [wFarCallAddr], a                                  ; $651a: $ea $98 $c2
	ld   a, $44                                      ; $651d: $3e $44
	ld   [wFarCallAddr+1], a                                  ; $651f: $ea $99 $c2
	ld   a, $09                                      ; $6522: $3e $09
	ld   [wFarCallBank], a                                  ; $6524: $ea $9a $c2
	pop  af                                          ; $6527: $f1
	call FarCall                                       ; $6528: $cd $62 $09
	or   a                                           ; $652b: $b7
	jr   z, jr_00c_6533                              ; $652c: $28 $05

	ld   a, $02                                      ; $652e: $3e $02
	call SetDefaultAndCurrKanjiTileTextStyle                                       ; $6530: $cd $3f $15

jr_00c_6533:
	pop  hl                                          ; $6533: $e1
	ld   bc, $0002                                   ; $6534: $01 $02 $00
	add  hl, bc                                      ; $6537: $09
	ld   l, [hl]                                     ; $6538: $6e
	ld   h, $01                                      ; $6539: $26 $01

	M_FarCall Func_0a_5b4b

	ld   d, h                                        ; $654f: $54
	ld   e, l                                        ; $6550: $5d
	ld   hl, $d340                                   ; $6551: $21 $40 $d3
	call LoadInstantText                                       ; $6554: $cd $06 $13
	pop  af                                          ; $6557: $f1

jr_00c_6558:
	and  $07                                         ; $6558: $e6 $07
	ld   h, $14                                      ; $655a: $26 $14
	ld   l, a                                        ; $655c: $6f
	call AequHtimesL                                       ; $655d: $cd $ac $0b
	add  hl, hl                                      ; $6560: $29
	add  hl, hl                                      ; $6561: $29
	add  hl, hl                                      ; $6562: $29
	add  hl, hl                                      ; $6563: $29
	ld   bc, $8e00                                   ; $6564: $01 $00 $8e
	add  hl, bc                                      ; $6567: $09
	ld   c, $81                                      ; $6568: $0e $81
	ld   d, h                                        ; $656a: $54
	ld   e, l                                        ; $656b: $5d
	ld   a, $02                                      ; $656c: $3e $02
	ld   hl, $d340                                   ; $656e: $21 $40 $d3
	ld   b, $14                                      ; $6571: $06 $14
	call EnqueueHDMATransfer                                       ; $6573: $cd $7c $02
	ret                                              ; $6576: $c9


Call_00c_6577:
	push af                                          ; $6577: $f5
	ld   hl, $d340                                   ; $6578: $21 $40 $d3
	ld   bc, $0240                                   ; $657b: $01 $40 $02
	ld   de, $0000                                   ; $657e: $11 $00 $00
	call CopyEthenDintoHL_BCtimes                                       ; $6581: $cd $9f $09
	call InitWideTextBoxDimensions                                       ; $6584: $cd $ec $0f
	ld   bc, $1202                                   ; $6587: $01 $02 $12
	call SetKanjiTextBoxDimensions                                       ; $658a: $cd $24 $14
	ld   bc, $0000                                   ; $658d: $01 $00 $00
	call SetCurrKanjiColAndRowToDrawOn                                       ; $6590: $cd $34 $14
	pop  af                                          ; $6593: $f1
	ld   hl, $cc56                                   ; $6594: $21 $56 $cc
	cp   [hl]                                        ; $6597: $be
	jr   nc, jr_00c_6619                             ; $6598: $30 $7f

	call Call_00c_64a8                               ; $659a: $cd $a8 $64
	call Call_00c_712f                               ; $659d: $cd $2f $71
	push hl                                          ; $65a0: $e5
	ld   bc, $0003                                   ; $65a1: $01 $03 $00
	add  hl, bc                                      ; $65a4: $09
	ld   l, [hl]                                     ; $65a5: $6e
	ld   h, $01                                      ; $65a6: $26 $01

	M_FarCall Func_0a_5b4b

	ld   d, h                                        ; $65bc: $54
	ld   e, l                                        ; $65bd: $5d
	ld   hl, $d340                                   ; $65be: $21 $40 $d3
	call LoadInstantText                                       ; $65c1: $cd $06 $13
	pop  hl                                          ; $65c4: $e1
	ld   bc, $0004                                   ; $65c5: $01 $04 $00
	add  hl, bc                                      ; $65c8: $09
	ld   a, [hl]                                     ; $65c9: $7e
	cp   $81                                         ; $65ca: $fe $81
	jr   c, jr_00c_6619                              ; $65cc: $38 $4b

	cp   $86                                         ; $65ce: $fe $86
	jr   nc, jr_00c_6619                             ; $65d0: $30 $47

	and  $0f                                         ; $65d2: $e6 $0f
	dec  a                                           ; $65d4: $3d
	ld   h, $00                                      ; $65d5: $26 $00
	ld   l, a                                        ; $65d7: $6f
	ld   bc, $00f6                                   ; $65d8: $01 $f6 $00
	add  hl, bc                                      ; $65db: $09
	push af                                          ; $65dc: $f5
	ld   a, $de                                      ; $65dd: $3e $de
	ld   [wFarCallAddr], a                                  ; $65df: $ea $98 $c2
	ld   a, $44                                      ; $65e2: $3e $44
	ld   [wFarCallAddr+1], a                                  ; $65e4: $ea $99 $c2
	ld   a, $09                                      ; $65e7: $3e $09
	ld   [wFarCallBank], a                                  ; $65e9: $ea $9a $c2
	pop  af                                          ; $65ec: $f1
	call FarCall                                       ; $65ed: $cd $62 $09
	or   a                                           ; $65f0: $b7
	jr   z, jr_00c_6619                              ; $65f1: $28 $26

	ld   bc, $0001                                   ; $65f3: $01 $01 $00
	call SetCurrKanjiColAndRowToDrawOn                                       ; $65f6: $cd $34 $14
	ld   l, $1a                                      ; $65f9: $2e $1a
	ld   h, $01                                      ; $65fb: $26 $01

	M_FarCall Func_0a_5b4b

	ld   d, h                                        ; $6611: $54
	ld   e, l                                        ; $6612: $5d
	ld   hl, $d340                                   ; $6613: $21 $40 $d3
	call LoadInstantText                                       ; $6616: $cd $06 $13

jr_00c_6619:
	ld   c, $81                                      ; $6619: $0e $81
	ld   de, $8900                                   ; $661b: $11 $00 $89
	ld   a, $02                                      ; $661e: $3e $02
	ld   hl, $d340                                   ; $6620: $21 $40 $d3
	ld   b, $48                                      ; $6623: $06 $48
	call EnqueueHDMATransfer                                       ; $6625: $cd $7c $02
	ret                                              ; $6628: $c9


Call_00c_6629:
	ld   a, $09                                      ; $6629: $3e $09
	ld   [wSpriteGroup], a                                  ; $662b: $ea $1a $c2
	ld   hl, $cc66                                   ; $662e: $21 $66 $cc
	inc  [hl]                                        ; $6631: $34
	ld   h, [hl]                                     ; $6632: $66
	ld   l, $30                                      ; $6633: $2e $30
	call HLequHdivModL                                       ; $6635: $cd $fb $0b
	ld   a, l                                        ; $6638: $7d
	ld   [$cc66], a                                  ; $6639: $ea $66 $cc
	ld   h, $00                                      ; $663c: $26 $00
	srl  l                                           ; $663e: $cb $3d
	srl  l                                           ; $6640: $cb $3d
	srl  l                                           ; $6642: $cb $3d
	ld   bc, $66df                                   ; $6644: $01 $df $66
	add  hl, bc                                      ; $6647: $09
	ld   a, [$cc57]                                  ; $6648: $fa $57 $cc
	or   a                                           ; $664b: $b7
	jr   z, jr_00c_665b                              ; $664c: $28 $0d

	push hl                                          ; $664e: $e5
	ld   b, $48                                      ; $664f: $06 $48
	ld   a, $f8                                      ; $6651: $3e $f8
	sub  [hl]                                        ; $6653: $96
	ld   c, a                                        ; $6654: $4f
	ld   a, $25                                      ; $6655: $3e $25
	call LoadSpriteFromMainTable                                       ; $6657: $cd $16 $0e
	pop  hl                                          ; $665a: $e1

jr_00c_665b:
	ld   a, [$cc56]                                  ; $665b: $fa $56 $cc
	ld   b, a                                        ; $665e: $47
	ld   a, [$cc57]                                  ; $665f: $fa $57 $cc
	add  $06                                         ; $6662: $c6 $06
	cp   b                                           ; $6664: $b8
	jr   nc, jr_00c_6672                             ; $6665: $30 $0b

	ld   b, $48                                      ; $6667: $06 $48
	ld   a, $68                                      ; $6669: $3e $68
	add  [hl]                                        ; $666b: $86
	ld   c, a                                        ; $666c: $4f
	ld   a, $26                                      ; $666d: $3e $26
	call LoadSpriteFromMainTable                                       ; $666f: $cd $16 $0e

jr_00c_6672:
	ld   a, [$cc56]                                  ; $6672: $fa $56 $cc
	or   a                                           ; $6675: $b7
	ret  z                                           ; $6676: $c8

	ld   a, [$cc5e]                                  ; $6677: $fa $5e $cc
	call StopAnimatingAnimatedSpriteSpec                                       ; $667a: $cd $06 $30
	ld   a, [$cc5d]                                  ; $667d: $fa $5d $cc
	call StopAnimatingAnimatedSpriteSpec                                       ; $6680: $cd $06 $30
	call $66e5                                       ; $6683: $cd $e5 $66
	bit  7, a                                        ; $6686: $cb $7f
	ret  nz                                          ; $6688: $c0

	ld   c, a                                        ; $6689: $4f
	ld   a, [$cc5e]                                  ; $668a: $fa $5e $cc
	call StartAnimatingAnimatedSpriteSpec                                       ; $668d: $cd $14 $30
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $6690: $cd $76 $30
	ld   b, $88                                      ; $6693: $06 $88
	inc  c                                           ; $6695: $0c
	sla  c                                           ; $6696: $cb $21
	sla  c                                           ; $6698: $cb $21
	sla  c                                           ; $669a: $cb $21
	ld   d, $09                                      ; $669c: $16 $09
	swap e                                           ; $669e: $cb $33
	ld   a, $19                                      ; $66a0: $3e $19
	add  e                                           ; $66a2: $83
	ld   e, a                                        ; $66a3: $5f
	push af                                          ; $66a4: $f5
	ld   a, $3c                                      ; $66a5: $3e $3c
	ld   [wFarCallAddr], a                                  ; $66a7: $ea $98 $c2
	ld   a, $40                                      ; $66aa: $3e $40
	ld   [wFarCallAddr+1], a                                  ; $66ac: $ea $99 $c2
	ld   a, $01                                      ; $66af: $3e $01
	ld   [wFarCallBank], a                                  ; $66b1: $ea $9a $c2
	pop  af                                          ; $66b4: $f1
	call FarCall                                       ; $66b5: $cd $62 $09
	ld   a, [$cc5d]                                  ; $66b8: $fa $5d $cc
	call StartAnimatingAnimatedSpriteSpec                                       ; $66bb: $cd $14 $30
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $66be: $cd $76 $30
	ld   b, $09                                      ; $66c1: $06 $09
	ld   a, [$cc54]                                  ; $66c3: $fa $54 $cc
	dec  a                                           ; $66c6: $3d
	add  $0a                                         ; $66c7: $c6 $0a
	ld   c, a                                        ; $66c9: $4f
	push af                                          ; $66ca: $f5
	ld   a, $4b                                      ; $66cb: $3e $4b
	ld   [wFarCallAddr], a                                  ; $66cd: $ea $98 $c2
	ld   a, $40                                      ; $66d0: $3e $40
	ld   [wFarCallAddr+1], a                                  ; $66d2: $ea $99 $c2
	ld   a, $01                                      ; $66d5: $3e $01
	ld   [wFarCallBank], a                                  ; $66d7: $ea $9a $c2
	pop  af                                          ; $66da: $f1
	call FarCall                                       ; $66db: $cd $62 $09
	ret                                              ; $66de: $c9


	nop                                              ; $66df: $00
	ld   bc, $0302                                   ; $66e0: $01 $02 $03
	ld   [bc], a                                     ; $66e3: $02
	ld   bc, $58fa                                   ; $66e4: $01 $fa $58
	call z, $a8cd                                    ; $66e7: $cc $cd $a8
	ld   h, h                                        ; $66ea: $64
	call Call_00c_712f                               ; $66eb: $cd $2f $71
	ld   bc, $0004                                   ; $66ee: $01 $04 $00
	add  hl, bc                                      ; $66f1: $09
	ld   a, [hl]                                     ; $66f2: $7e
	and  $f0                                         ; $66f3: $e6 $f0
	ld   e, a                                        ; $66f5: $5f
	ld   hl, $d980                                   ; $66f6: $21 $80 $d9
	ld   a, [$cc54]                                  ; $66f9: $fa $54 $cc
	ld   b, a                                        ; $66fc: $47
	ld   c, $00                                      ; $66fd: $0e $00

jr_00c_66ff:
	ld   a, [hl+]                                    ; $66ff: $2a
	inc  hl                                          ; $6700: $23
	cp   e                                           ; $6701: $bb
	jr   z, jr_00c_670b                              ; $6702: $28 $07

	inc  c                                           ; $6704: $0c
	dec  b                                           ; $6705: $05
	jr   nz, jr_00c_66ff                             ; $6706: $20 $f7

	ld   a, $ff                                      ; $6708: $3e $ff
	ret                                              ; $670a: $c9


jr_00c_670b:
	ld   a, c                                        ; $670b: $79
	ret                                              ; $670c: $c9


Jump_00c_670d:
	jp   Jump_00c_6212                               ; $670d: $c3 $12 $62


Jump_00c_6710:
	ld   a, [wWramBank]                                  ; $6710: $fa $93 $c2
	push af                                          ; $6713: $f5
	ld   a, $02                                      ; $6714: $3e $02
	ld   [wWramBank], a                                  ; $6716: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $6719: $e0 $70
	call ClearOam                                       ; $671b: $cd $d7 $0d
	ld   bc, $6731                                   ; $671e: $01 $31 $67
	push bc                                          ; $6721: $c5
	ld   a, [$cc50]                                  ; $6722: $fa $50 $cc
	ld   b, $00                                      ; $6725: $06 $00
	ld   c, a                                        ; $6727: $4f
	ld   hl, $673e                                   ; $6728: $21 $3e $67
	add  hl, bc                                      ; $672b: $09
	add  hl, bc                                      ; $672c: $09
	ld   a, [hl+]                                    ; $672d: $2a
	ld   h, [hl]                                     ; $672e: $66
	ld   l, a                                        ; $672f: $6f
	jp   hl                                          ; $6730: $e9


	call Call_00c_6629                               ; $6731: $cd $29 $66
	call AnimateAllAnimatedSpriteSpecs                                       ; $6734: $cd $d3 $2e
	pop  af                                          ; $6737: $f1
	ld   [wWramBank], a                                  ; $6738: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $673b: $e0 $70
	ret                                              ; $673d: $c9


	ld   e, h                                        ; $673e: $5c
	ld   h, a                                        ; $673f: $67
	and  [hl]                                        ; $6740: $a6
	ld   l, b                                        ; $6741: $68
	dec  bc                                          ; $6742: $0b
	ld   l, c                                        ; $6743: $69
	add  hl, bc                                      ; $6744: $09
	ld   l, e                                        ; $6745: $6b
	pop  bc                                          ; $6746: $c1
	ld   l, e                                        ; $6747: $6b
	sub  $6b                                         ; $6748: $d6 $6b
	db   $eb                                         ; $674a: $eb
	ld   l, e                                        ; $674b: $6b
	ld   [hl], c                                     ; $674c: $71
	ld   l, h                                        ; $674d: $6c
	rst  $30                                         ; $674e: $f7
	ld   l, h                                        ; $674f: $6c
	ld   a, [bc]                                     ; $6750: $0a
	ld   l, l                                        ; $6751: $6d
	xor  b                                           ; $6752: $a8
	ld   l, [hl]                                     ; $6753: $6e
	ld   [$386f], sp                                 ; $6754: $08 $6f $38
	ld   l, a                                        ; $6757: $6f
	ld   d, a                                        ; $6758: $57
	ld   [hl], b                                     ; $6759: $70
	sbc  [hl]                                        ; $675a: $9e
	ld   [hl], b                                     ; $675b: $70
	ld   hl, $cc51                                   ; $675c: $21 $51 $cc
	ld   a, [hl]                                     ; $675f: $7e
	inc  [hl]                                        ; $6760: $34
	sla  a                                           ; $6761: $cb $27
	ld   h, $00                                      ; $6763: $26 $00
	ld   l, a                                        ; $6765: $6f
	ld   bc, $676e                                   ; $6766: $01 $6e $67
	add  hl, bc                                      ; $6769: $09
	ld   a, [hl+]                                    ; $676a: $2a
	ld   h, [hl]                                     ; $676b: $66
	ld   l, a                                        ; $676c: $6f
	jp   hl                                          ; $676d: $e9


	add  d                                           ; $676e: $82
	ld   h, a                                        ; $676f: $67
	xor  [hl]                                        ; $6770: $ae
	ld   h, a                                        ; $6771: $67
	cp   [hl]                                        ; $6772: $be
	ld   h, a                                        ; $6773: $67
	call nc, $1067                                   ; $6774: $d4 $67 $10
	ld   l, b                                        ; $6777: $68
	jr   z, jr_00c_67e2                              ; $6778: $28 $68

	ld   b, e                                        ; $677a: $43
	ld   l, b                                        ; $677b: $68
	ld   e, [hl]                                     ; $677c: $5e
	ld   l, b                                        ; $677d: $68
	ld   l, d                                        ; $677e: $6a
	ld   l, b                                        ; $677f: $68
	sub  a                                           ; $6780: $97
	ld   l, b                                        ; $6781: $68
	ld   a, [wWramBank]                                  ; $6782: $fa $93 $c2
	push af                                          ; $6785: $f5
	ld   a, $07                                      ; $6786: $3e $07
	ld   [wWramBank], a                                  ; $6788: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $678b: $e0 $70
	ld   a, $94                                      ; $678d: $3e $94
	ld   hl, $d000                                   ; $678f: $21 $00 $d0
	ld   de, $6cf3                                   ; $6792: $11 $f3 $6c
	call RLEXorCopy                                       ; $6795: $cd $d2 $09
	ld   c, $80                                      ; $6798: $0e $80
	ld   de, $8000                                   ; $679a: $11 $00 $80
	ld   a, $07                                      ; $679d: $3e $07
	ld   hl, $d000                                   ; $679f: $21 $00 $d0
	ld   b, $60                                      ; $67a2: $06 $60
	call EnqueueHDMATransfer                                       ; $67a4: $cd $7c $02
	pop  af                                          ; $67a7: $f1
	ld   [wWramBank], a                                  ; $67a8: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $67ab: $e0 $70
	ret                                              ; $67ad: $c9


	ld   c, $80                                      ; $67ae: $0e $80
	ld   de, $8600                                   ; $67b0: $11 $00 $86
	ld   a, $07                                      ; $67b3: $3e $07
	ld   hl, $d600                                   ; $67b5: $21 $00 $d6
	ld   b, $60                                      ; $67b8: $06 $60
	call EnqueueHDMATransfer                                       ; $67ba: $cd $7c $02
	ret                                              ; $67bd: $c9


	ld   c, $80                                      ; $67be: $0e $80
	ld   de, $8c00                                   ; $67c0: $11 $00 $8c
	ld   a, $07                                      ; $67c3: $3e $07
	ld   hl, $dc00                                   ; $67c5: $21 $00 $dc
	ld   b, $40                                      ; $67c8: $06 $40
	call EnqueueHDMATransfer                                       ; $67ca: $cd $7c $02
	ld   a, [$cc57]                                  ; $67cd: $fa $57 $cc
	call Call_00c_64d5                               ; $67d0: $cd $d5 $64
	ret                                              ; $67d3: $c9


	ld   a, [wWramBank]                                  ; $67d4: $fa $93 $c2
	push af                                          ; $67d7: $f5
	ld   a, $07                                      ; $67d8: $3e $07
	ld   [wWramBank], a                                  ; $67da: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $67dd: $e0 $70
	ld   hl, $d000                                   ; $67df: $21 $00 $d0

jr_00c_67e2:
	ld   a, $99                                      ; $67e2: $3e $99
	ld   de, $6df0                                   ; $67e4: $11 $f0 $6d
	ld   bc, $1420                                   ; $67e7: $01 $20 $14
	call FarCopyLayout                                       ; $67ea: $cd $2c $0b
	ld   hl, $d400                                   ; $67ed: $21 $00 $d4
	call FarCopyLayout                                       ; $67f0: $cd $2c $0b
	ld   c, $81                                      ; $67f3: $0e $81
	ld   de, $9800                                   ; $67f5: $11 $00 $98
	ld   a, $07                                      ; $67f8: $3e $07
	ld   hl, $d000                                   ; $67fa: $21 $00 $d0
	ld   b, $40                                      ; $67fd: $06 $40
	call EnqueueHDMATransfer                                       ; $67ff: $cd $7c $02
	pop  af                                          ; $6802: $f1
	ld   [wWramBank], a                                  ; $6803: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $6806: $e0 $70
	ld   a, [$cc57]                                  ; $6808: $fa $57 $cc
	inc  a                                           ; $680b: $3c
	call Call_00c_64d5                               ; $680c: $cd $d5 $64
	ret                                              ; $680f: $c9


	ld   c, $80                                      ; $6810: $0e $80
	ld   de, $9800                                   ; $6812: $11 $00 $98
	ld   a, $07                                      ; $6815: $3e $07
	ld   hl, $d400                                   ; $6817: $21 $00 $d4
	ld   b, $40                                      ; $681a: $06 $40
	call EnqueueHDMATransfer                                       ; $681c: $cd $7c $02
	ld   a, [$cc57]                                  ; $681f: $fa $57 $cc
	inc  a                                           ; $6822: $3c
	inc  a                                           ; $6823: $3c
	call Call_00c_64d5                               ; $6824: $cd $d5 $64
	ret                                              ; $6827: $c9


	call Call_00c_6300                               ; $6828: $cd $00 $63
	ld   c, $81                                      ; $682b: $0e $81
	ld   de, $9c00                                   ; $682d: $11 $00 $9c
	ld   a, $07                                      ; $6830: $3e $07
	ld   hl, $d000                                   ; $6832: $21 $00 $d0
	ld   b, $40                                      ; $6835: $06 $40
	call EnqueueHDMATransfer                                       ; $6837: $cd $7c $02
	ld   a, [$cc57]                                  ; $683a: $fa $57 $cc
	add  $03                                         ; $683d: $c6 $03
	call Call_00c_64d5                               ; $683f: $cd $d5 $64
	ret                                              ; $6842: $c9


	call Call_00c_63b6                               ; $6843: $cd $b6 $63
	ld   c, $80                                      ; $6846: $0e $80
	ld   de, $9c00                                   ; $6848: $11 $00 $9c
	ld   a, $07                                      ; $684b: $3e $07
	ld   hl, $d400                                   ; $684d: $21 $00 $d4
	ld   b, $40                                      ; $6850: $06 $40
	call EnqueueHDMATransfer                                       ; $6852: $cd $7c $02
	ld   a, [$cc57]                                  ; $6855: $fa $57 $cc
	add  $04                                         ; $6858: $c6 $04
	call Call_00c_64d5                               ; $685a: $cd $d5 $64
	ret                                              ; $685d: $c9


	call Call_00c_6a77                               ; $685e: $cd $77 $6a
	ld   a, [$cc57]                                  ; $6861: $fa $57 $cc
	add  $05                                         ; $6864: $c6 $05
	call Call_00c_64d5                               ; $6866: $cd $d5 $64
	ret                                              ; $6869: $c9


	ld   a, [wWramBank]                                  ; $686a: $fa $93 $c2
	push af                                          ; $686d: $f5
	ld   a, $07                                      ; $686e: $3e $07
	ld   [wWramBank], a                                  ; $6870: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $6873: $e0 $70
	ld   hl, $d000                                   ; $6875: $21 $00 $d0
	ld   bc, $0080                                   ; $6878: $01 $80 $00
	ld   de, $0000                                   ; $687b: $11 $00 $00
	call CopyEthenDintoHL_BCtimes                                       ; $687e: $cd $9f $09
	ld   c, $81                                      ; $6881: $0e $81
	ld   de, $8800                                   ; $6883: $11 $00 $88
	ld   a, $07                                      ; $6886: $3e $07
	ld   hl, $d000                                   ; $6888: $21 $00 $d0
	ld   b, $10                                      ; $688b: $06 $10
	call EnqueueHDMATransfer                                       ; $688d: $cd $7c $02
	pop  af                                          ; $6890: $f1
	ld   [wWramBank], a                                  ; $6891: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $6894: $e0 $70
	ret                                              ; $6896: $c9


	ld   a, [$cc58]                                  ; $6897: $fa $58 $cc
	call Call_00c_6577                               ; $689a: $cd $77 $65

Jump_00c_689d:
	ld   hl, $cc50                                   ; $689d: $21 $50 $cc
	inc  [hl]                                        ; $68a0: $34
	xor  a                                           ; $68a1: $af
	ld   [$cc51], a                                  ; $68a2: $ea $51 $cc
	ret                                              ; $68a5: $c9


	ld   a, [$cc51]                                  ; $68a6: $fa $51 $cc
	or   a                                           ; $68a9: $b7
	jr   nz, jr_00c_68e2                             ; $68aa: $20 $36

	ld   a, $a3                                      ; $68ac: $3e $a3
	ld   de, $da00                                   ; $68ae: $11 $00 $da
	ld   hl, $64cc                                   ; $68b1: $21 $cc $64
	ld   bc, $0080                                   ; $68b4: $01 $80 $00
	call FarMemCopy                                       ; $68b7: $cd $b2 $09
	ld   a, $7f                                      ; $68ba: $3e $7f
	ld   [$da10], a                                  ; $68bc: $ea $10 $da
	ld   [$da18], a                                  ; $68bf: $ea $18 $da
	ld   a, $4e                                      ; $68c2: $3e $4e
	ld   [$da11], a                                  ; $68c4: $ea $11 $da
	ld   [$da19], a                                  ; $68c7: $ea $19 $da
	xor  a                                           ; $68ca: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $68cb: $ea $62 $c3
	ld   a, $40                                      ; $68ce: $3e $40
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $68d0: $ea $63 $c3
	ld   a, $03                                      ; $68d3: $3e $03
	ld   b, $00                                      ; $68d5: $06 $00
	ld   hl, wBGPalettes                                   ; $68d7: $21 $de $c2
	ld   c, $00                                      ; $68da: $0e $00
	ld   de, $da00                                   ; $68dc: $11 $00 $da
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $68df: $cd $48 $07

jr_00c_68e2:
	ld   hl, $cc51                                   ; $68e2: $21 $51 $cc
	ld   a, [hl]                                     ; $68e5: $7e
	inc  [hl]                                        ; $68e6: $34
	cp   $1f                                         ; $68e7: $fe $1f
	jr   nc, jr_00c_68f4                             ; $68e9: $30 $09

	and  $03                                         ; $68eb: $e6 $03
	ret  nz                                          ; $68ed: $c0

	ld   bc, $0040                                   ; $68ee: $01 $40 $00
	jp   FadePalettesAndSetRangeToUpdate                                       ; $68f1: $c3 $32 $08


jr_00c_68f4:
	ld   a, $00                                      ; $68f4: $3e $00
	ld   hl, $da00                                   ; $68f6: $21 $00 $da
	ld   de, wBGPalettes                                   ; $68f9: $11 $de $c2
	ld   bc, $0080                                   ; $68fc: $01 $80 $00
	call FarMemCopy                                       ; $68ff: $cd $b2 $09
	ld   bc, $003f                                   ; $6902: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $6905: $cd $aa $04
	jp   Jump_00c_689d                               ; $6908: $c3 $9d $68


	call Call_00c_6a20                               ; $690b: $cd $20 $6a
	call Call_00c_6a4c                               ; $690e: $cd $4c $6a
	ld   a, [wInGameButtonsPressed]                                  ; $6911: $fa $10 $c2
	bit  0, a                                        ; $6914: $cb $47
	jr   z, jr_00c_692f                              ; $6916: $28 $17

	ld   a, [$cc58]                                  ; $6918: $fa $58 $cc
	ld   [$cc59], a                                  ; $691b: $ea $59 $cc
	ld   a, $21                                      ; $691e: $3e $21
	call PlaySoundEffect                                       ; $6920: $cd $df $1a
	ld   a, $09                                      ; $6923: $3e $09
	ld   [$cc50], a                                  ; $6925: $ea $50 $cc
	xor  a                                           ; $6928: $af
	ld   [$cc51], a                                  ; $6929: $ea $51 $cc
	jp   Jump_00c_6a07                               ; $692c: $c3 $07 $6a


jr_00c_692f:
	bit  1, a                                        ; $692f: $cb $4f
	jr   z, jr_00c_6947                              ; $6931: $28 $14

	ld   a, $ff                                      ; $6933: $3e $ff
	ld   [$cc59], a                                  ; $6935: $ea $59 $cc
	ld   a, $22                                      ; $6938: $3e $22
	call PlaySoundEffect                                       ; $693a: $cd $df $1a
	ld   a, $0d                                      ; $693d: $3e $0d
	ld   [$cc50], a                                  ; $693f: $ea $50 $cc
	xor  a                                           ; $6942: $af
	ld   [$cc51], a                                  ; $6943: $ea $51 $cc
	ret                                              ; $6946: $c9


jr_00c_6947:
	ld   a, [wInGameButtonsHeld]                                  ; $6947: $fa $0f $c2
	bit  6, a                                        ; $694a: $cb $77
	jr   z, jr_00c_697c                              ; $694c: $28 $2e

Call_00c_694e:
	ld   a, [$cc58]                                  ; $694e: $fa $58 $cc
	sub  $01                                         ; $6951: $d6 $01
	jp   c, Jump_00c_6a07                            ; $6953: $da $07 $6a

	ld   [$cc58], a                                  ; $6956: $ea $58 $cc
	ld   hl, $cc57                                   ; $6959: $21 $57 $cc
	cp   [hl]                                        ; $695c: $be
	jr   c, jr_00c_696e                              ; $695d: $38 $0f

	call Call_00c_6a0b                               ; $695f: $cd $0b $6a
	ld   a, $04                                      ; $6962: $3e $04
	ld   [$cc50], a                                  ; $6964: $ea $50 $cc
	xor  a                                           ; $6967: $af
	ld   [$cc51], a                                  ; $6968: $ea $51 $cc
	jp   Jump_00c_6a07                               ; $696b: $c3 $07 $6a


jr_00c_696e:
	dec  [hl]                                        ; $696e: $35
	call Call_00c_6a0b                               ; $696f: $cd $0b $6a
	ld   a, $06                                      ; $6972: $3e $06
	ld   [$cc50], a                                  ; $6974: $ea $50 $cc
	xor  a                                           ; $6977: $af
	ld   [$cc51], a                                  ; $6978: $ea $51 $cc
	ret                                              ; $697b: $c9


jr_00c_697c:
	bit  7, a                                        ; $697c: $cb $7f
	jr   z, jr_00c_69b3                              ; $697e: $28 $33

	ld   a, [$cc56]                                  ; $6980: $fa $56 $cc
	ld   b, a                                        ; $6983: $47
	ld   a, [$cc58]                                  ; $6984: $fa $58 $cc
	inc  a                                           ; $6987: $3c
	cp   b                                           ; $6988: $b8
	jp   nc, Jump_00c_6a07                           ; $6989: $d2 $07 $6a

	ld   [$cc58], a                                  ; $698c: $ea $58 $cc
	ld   hl, $cc57                                   ; $698f: $21 $57 $cc
	sub  [hl]                                        ; $6992: $96
	cp   $06                                         ; $6993: $fe $06
	jr   nc, jr_00c_69a5                             ; $6995: $30 $0e

	call Call_00c_6a0b                               ; $6997: $cd $0b $6a
	ld   a, $05                                      ; $699a: $3e $05
	ld   [$cc50], a                                  ; $699c: $ea $50 $cc
	xor  a                                           ; $699f: $af
	ld   [$cc51], a                                  ; $69a0: $ea $51 $cc
	jr   jr_00c_6a07                                 ; $69a3: $18 $62

jr_00c_69a5:
	inc  [hl]                                        ; $69a5: $34
	call Call_00c_6a0b                               ; $69a6: $cd $0b $6a
	ld   a, $07                                      ; $69a9: $3e $07
	ld   [$cc50], a                                  ; $69ab: $ea $50 $cc
	xor  a                                           ; $69ae: $af
	ld   [$cc51], a                                  ; $69af: $ea $51 $cc
	ret                                              ; $69b2: $c9


jr_00c_69b3:
	ld   a, [wInGameButtonsPressed]                                  ; $69b3: $fa $10 $c2
	cp   $20                                         ; $69b6: $fe $20
	jr   nz, jr_00c_69dd                             ; $69b8: $20 $23

	ld   a, [$cc54]                                  ; $69ba: $fa $54 $cc
	dec  a                                           ; $69bd: $3d
	jr   z, jr_00c_6a04                              ; $69be: $28 $44

	ld   a, $20                                      ; $69c0: $3e $20
	call PlaySoundEffect                                       ; $69c2: $cd $df $1a
	call Call_00c_6ad1                               ; $69c5: $cd $d1 $6a
	ld   [$cc58], a                                  ; $69c8: $ea $58 $cc
	ld   hl, $cc57                                   ; $69cb: $21 $57 $cc
	sub  [hl]                                        ; $69ce: $96
	cp   $06                                         ; $69cf: $fe $06
	jr   c, jr_00c_6a07                              ; $69d1: $38 $34

	ld   a, $03                                      ; $69d3: $3e $03
	ld   [$cc50], a                                  ; $69d5: $ea $50 $cc
	xor  a                                           ; $69d8: $af
	ld   [$cc51], a                                  ; $69d9: $ea $51 $cc
	ret                                              ; $69dc: $c9


jr_00c_69dd:
	cp   $10                                         ; $69dd: $fe $10
	jr   nz, jr_00c_6a04                             ; $69df: $20 $23

	ld   a, [$cc54]                                  ; $69e1: $fa $54 $cc
	dec  a                                           ; $69e4: $3d
	jr   z, jr_00c_6a04                              ; $69e5: $28 $1d

	ld   a, $20                                      ; $69e7: $3e $20
	call PlaySoundEffect                                       ; $69e9: $cd $df $1a
	call Call_00c_6aee                               ; $69ec: $cd $ee $6a
	ld   [$cc58], a                                  ; $69ef: $ea $58 $cc
	ld   hl, $cc57                                   ; $69f2: $21 $57 $cc
	sub  [hl]                                        ; $69f5: $96
	cp   $06                                         ; $69f6: $fe $06
	jr   c, jr_00c_6a07                              ; $69f8: $38 $0d

	ld   a, $03                                      ; $69fa: $3e $03
	ld   [$cc50], a                                  ; $69fc: $ea $50 $cc
	xor  a                                           ; $69ff: $af
	ld   [$cc51], a                                  ; $6a00: $ea $51 $cc
	ret                                              ; $6a03: $c9


jr_00c_6a04:
	call Call_00c_6a15                               ; $6a04: $cd $15 $6a

Jump_00c_6a07:
jr_00c_6a07:
	call Call_00c_6a77                               ; $6a07: $cd $77 $6a
	ret                                              ; $6a0a: $c9


Call_00c_6a0b:
	ld   a, [$cc5b]                                  ; $6a0b: $fa $5b $cc
	sub  $01                                         ; $6a0e: $d6 $01
	ret  c                                           ; $6a10: $d8

	ld   [$cc5b], a                                  ; $6a11: $ea $5b $cc
	ret                                              ; $6a14: $c9


Call_00c_6a15:
	ld   a, [$cc5b]                                  ; $6a15: $fa $5b $cc
	inc  a                                           ; $6a18: $3c
	cp   $08                                         ; $6a19: $fe $08
	ret  nc                                          ; $6a1b: $d0

	ld   [$cc5b], a                                  ; $6a1c: $ea $5b $cc
	ret                                              ; $6a1f: $c9


Call_00c_6a20:
	ld   a, $08                                      ; $6a20: $3e $08
	ld   hl, $cc5c                                   ; $6a22: $21 $5c $cc
	push af                                          ; $6a25: $f5
	ld   a, $8f                                      ; $6a26: $3e $8f
	ld   [wFarCallAddr], a                                  ; $6a28: $ea $98 $c2
	ld   a, $59                                      ; $6a2b: $3e $59
	ld   [wFarCallAddr+1], a                                  ; $6a2d: $ea $99 $c2
	ld   a, $0a                                      ; $6a30: $3e $0a
	ld   [wFarCallBank], a                                  ; $6a32: $ea $9a $c2
	pop  af                                          ; $6a35: $f1
	call FarCall                                       ; $6a36: $cd $62 $09
	ld   a, [$c2ee]                                  ; $6a39: $fa $ee $c2
	ld   [wBGPalettes+3*8], a                                  ; $6a3c: $ea $f6 $c2
	ld   a, [$c2ef]                                  ; $6a3f: $fa $ef $c2
	ld   [$c2f7], a                                  ; $6a42: $ea $f7 $c2
	ld   bc, $0c0f                                   ; $6a45: $01 $0f $0c
	call SetBGandOBJPaletteRangesToUpdate                                       ; $6a48: $cd $aa $04
	ret                                              ; $6a4b: $c9


Call_00c_6a4c:
	ld   hl, $d000                                   ; $6a4c: $21 $00 $d0
	call Call_00c_6321                               ; $6a4f: $cd $21 $63
	ld   hl, $d020                                   ; $6a52: $21 $20 $d0
	call Call_00c_6321                               ; $6a55: $cd $21 $63
	ld   a, [$cc58]                                  ; $6a58: $fa $58 $cc
	and  $0f                                         ; $6a5b: $e6 $0f
	swap a                                           ; $6a5d: $cb $37
	ld   h, $00                                      ; $6a5f: $26 $00
	ld   l, a                                        ; $6a61: $6f
	add  hl, hl                                      ; $6a62: $29
	add  hl, hl                                      ; $6a63: $29
	ld   bc, $9c00                                   ; $6a64: $01 $00 $9c
	add  hl, bc                                      ; $6a67: $09
	ld   c, $81                                      ; $6a68: $0e $81
	ld   d, h                                        ; $6a6a: $54
	ld   e, l                                        ; $6a6b: $5d
	ld   a, $02                                      ; $6a6c: $3e $02
	ld   hl, $d000                                   ; $6a6e: $21 $00 $d0
	ld   b, $04                                      ; $6a71: $06 $04
	call EnqueueHDMATransfer                                       ; $6a73: $cd $7c $02
	ret                                              ; $6a76: $c9


Call_00c_6a77:
	ld   hl, $d040                                   ; $6a77: $21 $40 $d0
	call Call_00c_6321                               ; $6a7a: $cd $21 $63
	ld   hl, $d060                                   ; $6a7d: $21 $60 $d0
	call Call_00c_6321                               ; $6a80: $cd $21 $63
	ld   a, $02                                      ; $6a83: $3e $02
	ld   hl, $d041                                   ; $6a85: $21 $41 $d0
	call Call_00c_6aaa                               ; $6a88: $cd $aa $6a
	ld   a, [$cc58]                                  ; $6a8b: $fa $58 $cc
	and  $0f                                         ; $6a8e: $e6 $0f
	swap a                                           ; $6a90: $cb $37
	ld   h, $00                                      ; $6a92: $26 $00
	ld   l, a                                        ; $6a94: $6f
	add  hl, hl                                      ; $6a95: $29
	add  hl, hl                                      ; $6a96: $29
	ld   bc, $9c00                                   ; $6a97: $01 $00 $9c
	add  hl, bc                                      ; $6a9a: $09
	ld   c, $81                                      ; $6a9b: $0e $81
	ld   d, h                                        ; $6a9d: $54
	ld   e, l                                        ; $6a9e: $5d
	ld   a, $02                                      ; $6a9f: $3e $02
	ld   hl, $d040                                   ; $6aa1: $21 $40 $d0
	ld   b, $04                                      ; $6aa4: $06 $04
	call EnqueueHDMATransfer                                       ; $6aa6: $cd $7c $02
	ret                                              ; $6aa9: $c9


Call_00c_6aaa:
	call Call_00c_6ab3                               ; $6aaa: $cd $b3 $6a
	push bc                                          ; $6aad: $c5
	ld   bc, $000f                                   ; $6aae: $01 $0f $00
	add  hl, bc                                      ; $6ab1: $09
	pop  bc                                          ; $6ab2: $c1

Call_00c_6ab3:
	set  0, a                                        ; $6ab3: $cb $c7
	ld   [hl+], a                                    ; $6ab5: $22
	res  0, a                                        ; $6ab6: $cb $87
	ld   [hl+], a                                    ; $6ab8: $22
	ld   [hl+], a                                    ; $6ab9: $22
	ld   [hl+], a                                    ; $6aba: $22
	set  3, a                                        ; $6abb: $cb $df
	ld   [hl+], a                                    ; $6abd: $22
	ld   [hl+], a                                    ; $6abe: $22
	ld   [hl+], a                                    ; $6abf: $22
	ld   [hl+], a                                    ; $6ac0: $22
	ld   [hl+], a                                    ; $6ac1: $22
	ld   [hl+], a                                    ; $6ac2: $22
	ld   [hl+], a                                    ; $6ac3: $22
	ld   [hl+], a                                    ; $6ac4: $22
	ld   [hl+], a                                    ; $6ac5: $22
	ld   [hl+], a                                    ; $6ac6: $22
	res  3, a                                        ; $6ac7: $cb $9f
	ld   [hl+], a                                    ; $6ac9: $22
	ld   [hl+], a                                    ; $6aca: $22
	set  0, a                                        ; $6acb: $cb $c7
	ld   [hl+], a                                    ; $6acd: $22
	res  0, a                                        ; $6ace: $cb $87
	ret                                              ; $6ad0: $c9


Call_00c_6ad1:
	ld   a, [$cc58]                                  ; $6ad1: $fa $58 $cc
	call Call_00c_64a8                               ; $6ad4: $cd $a8 $64
	call Call_00c_712f                               ; $6ad7: $cd $2f $71
	ld   bc, $0004                                   ; $6ada: $01 $04 $00
	add  hl, bc                                      ; $6add: $09
	ld   a, [hl]                                     ; $6ade: $7e
	and  $f0                                         ; $6adf: $e6 $f0
	ld   hl, $d980                                   ; $6ae1: $21 $80 $d9

jr_00c_6ae4:
	cp   [hl]                                        ; $6ae4: $be
	jr   z, jr_00c_6aeb                              ; $6ae5: $28 $04

	inc  hl                                          ; $6ae7: $23
	inc  hl                                          ; $6ae8: $23
	jr   jr_00c_6ae4                                 ; $6ae9: $18 $f9

jr_00c_6aeb:
	dec  hl                                          ; $6aeb: $2b
	ld   a, [hl]                                     ; $6aec: $7e
	ret                                              ; $6aed: $c9


Call_00c_6aee:
	ld   a, [$cc58]                                  ; $6aee: $fa $58 $cc
	call Call_00c_64a8                               ; $6af1: $cd $a8 $64
	call Call_00c_712f                               ; $6af4: $cd $2f $71
	ld   bc, $0004                                   ; $6af7: $01 $04 $00
	add  hl, bc                                      ; $6afa: $09
	ld   a, [hl]                                     ; $6afb: $7e
	and  $f0                                         ; $6afc: $e6 $f0
	ld   hl, $d980                                   ; $6afe: $21 $80 $d9

jr_00c_6b01:
	cp   [hl]                                        ; $6b01: $be
	inc  hl                                          ; $6b02: $23
	inc  hl                                          ; $6b03: $23
	jr   nz, jr_00c_6b01                             ; $6b04: $20 $fb

	inc  hl                                          ; $6b06: $23
	ld   a, [hl]                                     ; $6b07: $7e
	ret                                              ; $6b08: $c9


	ld   a, [$cc51]                                  ; $6b09: $fa $51 $cc
	sla  a                                           ; $6b0c: $cb $27
	ld   h, $00                                      ; $6b0e: $26 $00
	ld   l, a                                        ; $6b10: $6f
	ld   bc, $6b19                                   ; $6b11: $01 $19 $6b
	add  hl, bc                                      ; $6b14: $09
	ld   a, [hl+]                                    ; $6b15: $2a
	ld   h, [hl]                                     ; $6b16: $66
	ld   l, a                                        ; $6b17: $6f
	jp   hl                                          ; $6b18: $e9


	dec  l                                           ; $6b19: $2d
	ld   l, e                                        ; $6b1a: $6b
	ld   l, h                                        ; $6b1b: $6c
	ld   l, e                                        ; $6b1c: $6b
	adc  h                                           ; $6b1d: $8c
	ld   l, e                                        ; $6b1e: $6b
	adc  h                                           ; $6b1f: $8c
	ld   l, e                                        ; $6b20: $6b
	adc  h                                           ; $6b21: $8c
	ld   l, e                                        ; $6b22: $6b
	adc  h                                           ; $6b23: $8c
	ld   l, e                                        ; $6b24: $6b
	adc  h                                           ; $6b25: $8c
	ld   l, e                                        ; $6b26: $6b
	adc  h                                           ; $6b27: $8c
	ld   l, e                                        ; $6b28: $6b
	sbc  d                                           ; $6b29: $9a
	ld   l, e                                        ; $6b2a: $6b
	or   c                                           ; $6b2b: $b1
	ld   l, e                                        ; $6b2c: $6b
	ld   a, [$cc58]                                  ; $6b2d: $fa $58 $cc
	ld   [$cc57], a                                  ; $6b30: $ea $57 $cc
	add  $05                                         ; $6b33: $c6 $05
	ld   hl, $cc56                                   ; $6b35: $21 $56 $cc
	cp   [hl]                                        ; $6b38: $be
	jr   c, jr_00c_6b49                              ; $6b39: $38 $0e

	ld   a, [$cc56]                                  ; $6b3b: $fa $56 $cc
	sub  $06                                         ; $6b3e: $d6 $06
	ld   [$cc57], a                                  ; $6b40: $ea $57 $cc
	jr   nc, jr_00c_6b49                             ; $6b43: $30 $04

	xor  a                                           ; $6b45: $af
	ld   [$cc57], a                                  ; $6b46: $ea $57 $cc

jr_00c_6b49:
	ld   a, [$cc57]                                  ; $6b49: $fa $57 $cc
	and  $0f                                         ; $6b4c: $e6 $0f
	swap a                                           ; $6b4e: $cb $37
	sub  $08                                         ; $6b50: $d6 $08
	ld   [$cc5a], a                                  ; $6b52: $ea $5a $cc
	call Call_00c_633f                               ; $6b55: $cd $3f $63
	ld   c, $80                                      ; $6b58: $0e $80
	ld   de, $9c00                                   ; $6b5a: $11 $00 $9c
	ld   a, $07                                      ; $6b5d: $3e $07
	ld   hl, $d400                                   ; $6b5f: $21 $00 $d4
	ld   b, $40                                      ; $6b62: $06 $40
	call EnqueueHDMATransfer                                       ; $6b64: $cd $7c $02
	ld   hl, $cc51                                   ; $6b67: $21 $51 $cc
	inc  [hl]                                        ; $6b6a: $34
	ret                                              ; $6b6b: $c9


	ld   hl, $d340                                   ; $6b6c: $21 $40 $d3
	ld   bc, $0240                                   ; $6b6f: $01 $40 $02
	ld   de, $0000                                   ; $6b72: $11 $00 $00
	call CopyEthenDintoHL_BCtimes                                       ; $6b75: $cd $9f $09
	ld   c, $81                                      ; $6b78: $0e $81
	ld   de, $8900                                   ; $6b7a: $11 $00 $89
	ld   a, $02                                      ; $6b7d: $3e $02
	ld   hl, $d340                                   ; $6b7f: $21 $40 $d3
	ld   b, $48                                      ; $6b82: $06 $48
	call EnqueueHDMATransfer                                       ; $6b84: $cd $7c $02
	ld   hl, $cc51                                   ; $6b87: $21 $51 $cc
	inc  [hl]                                        ; $6b8a: $34
	ret                                              ; $6b8b: $c9


	ld   a, [$cc57]                                  ; $6b8c: $fa $57 $cc
	ld   hl, $cc51                                   ; $6b8f: $21 $51 $cc
	add  [hl]                                        ; $6b92: $86
	dec  a                                           ; $6b93: $3d
	dec  a                                           ; $6b94: $3d
	inc  [hl]                                        ; $6b95: $34
	call Call_00c_64d5                               ; $6b96: $cd $d5 $64
	ret                                              ; $6b99: $c9


	call Call_00c_63b6                               ; $6b9a: $cd $b6 $63
	ld   c, $80                                      ; $6b9d: $0e $80
	ld   de, $9c00                                   ; $6b9f: $11 $00 $9c
	ld   a, $07                                      ; $6ba2: $3e $07
	ld   hl, $d400                                   ; $6ba4: $21 $00 $d4
	ld   b, $40                                      ; $6ba7: $06 $40
	call EnqueueHDMATransfer                                       ; $6ba9: $cd $7c $02
	ld   hl, $cc51                                   ; $6bac: $21 $51 $cc
	inc  [hl]                                        ; $6baf: $34
	ret                                              ; $6bb0: $c9


	ld   a, [$cc58]                                  ; $6bb1: $fa $58 $cc
	call Call_00c_6577                               ; $6bb4: $cd $77 $65
	ld   a, $02                                      ; $6bb7: $3e $02
	ld   [$cc50], a                                  ; $6bb9: $ea $50 $cc
	xor  a                                           ; $6bbc: $af
	ld   [$cc51], a                                  ; $6bbd: $ea $51 $cc
	ret                                              ; $6bc0: $c9


	ld   a, $20                                      ; $6bc1: $3e $20
	call PlaySoundEffect                                       ; $6bc3: $cd $df $1a
	ld   a, [$cc58]                                  ; $6bc6: $fa $58 $cc
	call Call_00c_6577                               ; $6bc9: $cd $77 $65
	ld   a, $08                                      ; $6bcc: $3e $08
	ld   [$cc50], a                                  ; $6bce: $ea $50 $cc
	xor  a                                           ; $6bd1: $af
	ld   [$cc51], a                                  ; $6bd2: $ea $51 $cc
	ret                                              ; $6bd5: $c9


	ld   a, $20                                      ; $6bd6: $3e $20
	call PlaySoundEffect                                       ; $6bd8: $cd $df $1a
	ld   a, [$cc58]                                  ; $6bdb: $fa $58 $cc
	call Call_00c_6577                               ; $6bde: $cd $77 $65
	ld   a, $08                                      ; $6be1: $3e $08
	ld   [$cc50], a                                  ; $6be3: $ea $50 $cc
	xor  a                                           ; $6be6: $af
	ld   [$cc51], a                                  ; $6be7: $ea $51 $cc
	ret                                              ; $6bea: $c9


	ld   a, [$cc51]                                  ; $6beb: $fa $51 $cc
	sla  a                                           ; $6bee: $cb $27
	ld   h, $00                                      ; $6bf0: $26 $00
	ld   l, a                                        ; $6bf2: $6f
	ld   bc, $6bfb                                   ; $6bf3: $01 $fb $6b
	add  hl, bc                                      ; $6bf6: $09
	ld   a, [hl+]                                    ; $6bf7: $2a
	ld   h, [hl]                                     ; $6bf8: $66
	ld   l, a                                        ; $6bf9: $6f
	jp   hl                                          ; $6bfa: $e9


	inc  bc                                          ; $6bfb: $03
	ld   l, h                                        ; $6bfc: $6c
	ld   l, $6c                                      ; $6bfd: $2e $6c
	dec  sp                                          ; $6bff: $3b
	ld   l, h                                        ; $6c00: $6c
	ld   c, b                                        ; $6c01: $48
	ld   l, h                                        ; $6c02: $6c
	ld   a, $20                                      ; $6c03: $3e $20
	call PlaySoundEffect                                       ; $6c05: $cd $df $1a
	ld   a, [$cc58]                                  ; $6c08: $fa $58 $cc
	call Call_00c_64d5                               ; $6c0b: $cd $d5 $64
	ld   hl, $cc51                                   ; $6c0e: $21 $51 $cc
	ld   a, [$cc5b]                                  ; $6c11: $fa $5b $cc
	cp   $04                                         ; $6c14: $fe $04
	jr   c, jr_00c_6c22                              ; $6c16: $38 $0a

	ld   a, [$cc5a]                                  ; $6c18: $fa $5a $cc
	sub  $04                                         ; $6c1b: $d6 $04
	ld   [$cc5a], a                                  ; $6c1d: $ea $5a $cc
	inc  [hl]                                        ; $6c20: $34
	ret                                              ; $6c21: $c9


jr_00c_6c22:
	ld   a, [$cc5a]                                  ; $6c22: $fa $5a $cc
	sub  $08                                         ; $6c25: $d6 $08
	ld   [$cc5a], a                                  ; $6c27: $ea $5a $cc
	inc  [hl]                                        ; $6c2a: $34
	inc  [hl]                                        ; $6c2b: $34
	inc  [hl]                                        ; $6c2c: $34
	ret                                              ; $6c2d: $c9


	ld   a, [$cc5a]                                  ; $6c2e: $fa $5a $cc
	sub  $04                                         ; $6c31: $d6 $04
	ld   [$cc5a], a                                  ; $6c33: $ea $5a $cc
	ld   hl, $cc51                                   ; $6c36: $21 $51 $cc
	inc  [hl]                                        ; $6c39: $34
	ret                                              ; $6c3a: $c9


	ld   a, [$cc5a]                                  ; $6c3b: $fa $5a $cc
	sub  $04                                         ; $6c3e: $d6 $04
	ld   [$cc5a], a                                  ; $6c40: $ea $5a $cc
	ld   hl, $cc51                                   ; $6c43: $21 $51 $cc
	inc  [hl]                                        ; $6c46: $34
	ret                                              ; $6c47: $c9


	ld   a, [$cc58]                                  ; $6c48: $fa $58 $cc
	call Call_00c_6577                               ; $6c4b: $cd $77 $65
	ld   a, [$cc5b]                                  ; $6c4e: $fa $5b $cc
	cp   $04                                         ; $6c51: $fe $04
	jr   c, jr_00c_6c5f                              ; $6c53: $38 $0a

	ld   a, [$cc5a]                                  ; $6c55: $fa $5a $cc
	sub  $04                                         ; $6c58: $d6 $04
	ld   [$cc5a], a                                  ; $6c5a: $ea $5a $cc
	jr   jr_00c_6c67                                 ; $6c5d: $18 $08

jr_00c_6c5f:
	ld   a, [$cc5a]                                  ; $6c5f: $fa $5a $cc
	sub  $08                                         ; $6c62: $d6 $08
	ld   [$cc5a], a                                  ; $6c64: $ea $5a $cc

jr_00c_6c67:
	ld   a, $08                                      ; $6c67: $3e $08
	ld   [$cc50], a                                  ; $6c69: $ea $50 $cc
	xor  a                                           ; $6c6c: $af
	ld   [$cc51], a                                  ; $6c6d: $ea $51 $cc
	ret                                              ; $6c70: $c9


	ld   a, [$cc51]                                  ; $6c71: $fa $51 $cc
	sla  a                                           ; $6c74: $cb $27
	ld   h, $00                                      ; $6c76: $26 $00
	ld   l, a                                        ; $6c78: $6f
	ld   bc, $6c81                                   ; $6c79: $01 $81 $6c
	add  hl, bc                                      ; $6c7c: $09
	ld   a, [hl+]                                    ; $6c7d: $2a
	ld   h, [hl]                                     ; $6c7e: $66
	ld   l, a                                        ; $6c7f: $6f
	jp   hl                                          ; $6c80: $e9


	adc  c                                           ; $6c81: $89
	ld   l, h                                        ; $6c82: $6c
	or   h                                           ; $6c83: $b4
	ld   l, h                                        ; $6c84: $6c
	pop  bc                                          ; $6c85: $c1
	ld   l, h                                        ; $6c86: $6c
	adc  $6c                                         ; $6c87: $ce $6c
	ld   a, $20                                      ; $6c89: $3e $20
	call PlaySoundEffect                                       ; $6c8b: $cd $df $1a
	ld   a, [$cc58]                                  ; $6c8e: $fa $58 $cc
	call Call_00c_64d5                               ; $6c91: $cd $d5 $64
	ld   hl, $cc51                                   ; $6c94: $21 $51 $cc
	ld   a, [$cc5b]                                  ; $6c97: $fa $5b $cc
	cp   $04                                         ; $6c9a: $fe $04
	jr   c, jr_00c_6ca8                              ; $6c9c: $38 $0a

	ld   a, [$cc5a]                                  ; $6c9e: $fa $5a $cc
	add  $04                                         ; $6ca1: $c6 $04
	ld   [$cc5a], a                                  ; $6ca3: $ea $5a $cc
	inc  [hl]                                        ; $6ca6: $34
	ret                                              ; $6ca7: $c9


jr_00c_6ca8:
	ld   a, [$cc5a]                                  ; $6ca8: $fa $5a $cc
	add  $08                                         ; $6cab: $c6 $08
	ld   [$cc5a], a                                  ; $6cad: $ea $5a $cc
	inc  [hl]                                        ; $6cb0: $34
	inc  [hl]                                        ; $6cb1: $34
	inc  [hl]                                        ; $6cb2: $34
	ret                                              ; $6cb3: $c9


	ld   a, [$cc5a]                                  ; $6cb4: $fa $5a $cc
	add  $04                                         ; $6cb7: $c6 $04
	ld   [$cc5a], a                                  ; $6cb9: $ea $5a $cc
	ld   hl, $cc51                                   ; $6cbc: $21 $51 $cc
	inc  [hl]                                        ; $6cbf: $34
	ret                                              ; $6cc0: $c9


	ld   a, [$cc5a]                                  ; $6cc1: $fa $5a $cc
	add  $04                                         ; $6cc4: $c6 $04
	ld   [$cc5a], a                                  ; $6cc6: $ea $5a $cc
	ld   hl, $cc51                                   ; $6cc9: $21 $51 $cc
	inc  [hl]                                        ; $6ccc: $34
	ret                                              ; $6ccd: $c9


	ld   a, [$cc58]                                  ; $6cce: $fa $58 $cc
	call Call_00c_6577                               ; $6cd1: $cd $77 $65
	ld   a, [$cc5b]                                  ; $6cd4: $fa $5b $cc
	cp   $04                                         ; $6cd7: $fe $04
	jr   c, jr_00c_6ce5                              ; $6cd9: $38 $0a

	ld   a, [$cc5a]                                  ; $6cdb: $fa $5a $cc
	add  $04                                         ; $6cde: $c6 $04
	ld   [$cc5a], a                                  ; $6ce0: $ea $5a $cc
	jr   jr_00c_6ced                                 ; $6ce3: $18 $08

jr_00c_6ce5:
	ld   a, [$cc5a]                                  ; $6ce5: $fa $5a $cc
	add  $08                                         ; $6ce8: $c6 $08
	ld   [$cc5a], a                                  ; $6cea: $ea $5a $cc

jr_00c_6ced:
	ld   a, $08                                      ; $6ced: $3e $08
	ld   [$cc50], a                                  ; $6cef: $ea $50 $cc
	xor  a                                           ; $6cf2: $af
	ld   [$cc51], a                                  ; $6cf3: $ea $51 $cc
	ret                                              ; $6cf6: $c9


	ld   hl, $cc51                                   ; $6cf7: $21 $51 $cc
	inc  [hl]                                        ; $6cfa: $34
	ld   a, [$cc5b]                                  ; $6cfb: $fa $5b $cc
	cp   [hl]                                        ; $6cfe: $be
	ret  nc                                          ; $6cff: $d0

	ld   a, $02                                      ; $6d00: $3e $02
	ld   [$cc50], a                                  ; $6d02: $ea $50 $cc
	xor  a                                           ; $6d05: $af
	ld   [$cc51], a                                  ; $6d06: $ea $51 $cc
	ret                                              ; $6d09: $c9


	call Call_00c_6a20                               ; $6d0a: $cd $20 $6a
	ld   hl, $cc51                                   ; $6d0d: $21 $51 $cc
	ld   a, [hl]                                     ; $6d10: $7e
	or   a                                           ; $6d11: $b7
	jr   nz, jr_00c_6d1d                             ; $6d12: $20 $09

	xor  a                                           ; $6d14: $af
	ld   [$cc5f], a                                  ; $6d15: $ea $5f $cc
	ld   a, $23                                      ; $6d18: $3e $23
	call PlaySoundEffect                                       ; $6d1a: $cd $df $1a

jr_00c_6d1d:
	ld   a, [hl]                                     ; $6d1d: $7e
	inc  [hl]                                        ; $6d1e: $34
	sla  a                                           ; $6d1f: $cb $27
	ld   h, $00                                      ; $6d21: $26 $00
	ld   l, a                                        ; $6d23: $6f
	ld   bc, $6d2c                                   ; $6d24: $01 $2c $6d
	add  hl, bc                                      ; $6d27: $09
	ld   a, [hl+]                                    ; $6d28: $2a
	ld   h, [hl]                                     ; $6d29: $66
	ld   l, a                                        ; $6d2a: $6f
	jp   hl                                          ; $6d2b: $e9


	jr   c, jr_00c_6d9b                              ; $6d2c: $38 $6d

	ld   b, b                                        ; $6d2e: $40
	ld   l, l                                        ; $6d2f: $6d
	ld   b, b                                        ; $6d30: $40
	ld   l, l                                        ; $6d31: $6d
	ld   b, e                                        ; $6d32: $43
	ld   l, l                                        ; $6d33: $6d
	ld   b, e                                        ; $6d34: $43
	ld   l, l                                        ; $6d35: $6d
	ld   b, [hl]                                     ; $6d36: $46
	ld   l, l                                        ; $6d37: $6d
	ld   hl, wIE                                   ; $6d38: $21 $0d $c2
	res  1, [hl]                                     ; $6d3b: $cb $8e
	jp   Jump_00c_6d4c                               ; $6d3d: $c3 $4c $6d


	jp   Jump_00c_6dd9                               ; $6d40: $c3 $d9 $6d


	jp   Jump_00c_6e03                               ; $6d43: $c3 $03 $6e


	call Call_00c_6e21                               ; $6d46: $cd $21 $6e
	jp   Jump_00c_689d                               ; $6d49: $c3 $9d $68


Call_00c_6d4c:
Jump_00c_6d4c:
	ld   a, [wWramBank]                                  ; $6d4c: $fa $93 $c2
	push af                                          ; $6d4f: $f5
	ld   a, $07                                      ; $6d50: $3e $07
	ld   [wWramBank], a                                  ; $6d52: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $6d55: $e0 $70
	call Call_00c_6300                               ; $6d57: $cd $00 $63
	call Call_00c_637d                               ; $6d5a: $cd $7d $63
	ld   a, [wWramBank]                                  ; $6d5d: $fa $93 $c2
	push af                                          ; $6d60: $f5
	ld   a, $02                                      ; $6d61: $3e $02
	ld   [wWramBank], a                                  ; $6d63: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $6d66: $e0 $70
	call $66e5                                       ; $6d68: $cd $e5 $66
	ld   h, $00                                      ; $6d6b: $26 $00
	swap a                                           ; $6d6d: $cb $37
	ld   l, a                                        ; $6d6f: $6f
	add  hl, hl                                      ; $6d70: $29
	pop  af                                          ; $6d71: $f1
	ld   [wWramBank], a                                  ; $6d72: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $6d75: $e0 $70
	ld   de, $001d                                   ; $6d77: $11 $1d $00
	push hl                                          ; $6d7a: $e5
	ld   bc, $d011                                   ; $6d7b: $01 $11 $d0
	add  hl, bc                                      ; $6d7e: $09

jr_00c_6d7f:
	ld   a, $01                                      ; $6d7f: $3e $01

jr_00c_6d81:
	ld   [hl+], a                                    ; $6d81: $22
	ld   [hl+], a                                    ; $6d82: $22
	ld   [hl+], a                                    ; $6d83: $22
	add  hl, de                                      ; $6d84: $19
	ld   [hl+], a                                    ; $6d85: $22
	ld   [hl+], a                                    ; $6d86: $22

jr_00c_6d87:
	ld   [hl+], a                                    ; $6d87: $22
	pop  hl                                          ; $6d88: $e1

jr_00c_6d89:
	ld   bc, $d411                                   ; $6d89: $01 $11 $d4
	add  hl, bc                                      ; $6d8c: $09
	ld   a, $80                                      ; $6d8d: $3e $80
	ld   [hl+], a                                    ; $6d8f: $22
	ld   [hl+], a                                    ; $6d90: $22
	ld   a, $ab                                      ; $6d91: $3e $ab
	ld   [hl+], a                                    ; $6d93: $22
	add  hl, de                                      ; $6d94: $19
	ld   a, $80                                      ; $6d95: $3e $80
	ld   [hl+], a                                    ; $6d97: $22
	ld   [hl+], a                                    ; $6d98: $22
	ld   a, $ab                                      ; $6d99: $3e $ab

jr_00c_6d9b:
	ld   [hl+], a                                    ; $6d9b: $22
	ld   a, [$cc58]                                  ; $6d9c: $fa $58 $cc
	ld   hl, $cc57                                   ; $6d9f: $21 $57 $cc
	sub  [hl]                                        ; $6da2: $96
	swap a                                           ; $6da3: $cb $37
	sla  a                                           ; $6da5: $cb $27
	ld   h, $00                                      ; $6da7: $26 $00
	ld   l, a                                        ; $6da9: $6f
	add  hl, hl                                      ; $6daa: $29
	ld   bc, $d001                                   ; $6dab: $01 $01 $d0
	add  hl, bc                                      ; $6dae: $09
	ld   a, $02                                      ; $6daf: $3e $02
	call Call_00c_6aaa                               ; $6db1: $cd $aa $6a
	pop  af                                          ; $6db4: $f1
	ld   [wWramBank], a                                  ; $6db5: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $6db8: $e0 $70
	ld   c, $81                                      ; $6dba: $0e $81
	ld   de, $99e0                                   ; $6dbc: $11 $e0 $99
	ld   a, $07                                      ; $6dbf: $3e $07
	ld   hl, $d000                                   ; $6dc1: $21 $00 $d0
	ld   b, $18                                      ; $6dc4: $06 $18
	call EnqueueHDMATransfer                                       ; $6dc6: $cd $7c $02
	ld   c, $80                                      ; $6dc9: $0e $80
	ld   de, $99e0                                   ; $6dcb: $11 $e0 $99
	ld   a, $07                                      ; $6dce: $3e $07
	ld   hl, $d400                                   ; $6dd0: $21 $00 $d4
	ld   b, $18                                      ; $6dd3: $06 $18
	call EnqueueHDMATransfer                                       ; $6dd5: $cd $7c $02
	ret                                              ; $6dd8: $c9


Jump_00c_6dd9:
	ld   a, $09                                      ; $6dd9: $3e $09
	ld   [wSpriteGroup], a                                  ; $6ddb: $ea $1a $c2
	ld   a, [$cc58]                                  ; $6dde: $fa $58 $cc
	ld   hl, $cc57                                   ; $6de1: $21 $57 $cc
	sub  [hl]                                        ; $6de4: $96
	sla  a                                           ; $6de5: $cb $27
	ld   b, $00                                      ; $6de7: $06 $00
	ld   c, a                                        ; $6de9: $4f
	ld   hl, $6df7                                   ; $6dea: $21 $f7 $6d
	add  hl, bc                                      ; $6ded: $09
	ld   c, [hl]                                     ; $6dee: $4e
	ld   b, $50                                      ; $6def: $06 $50
	ld   a, $22                                      ; $6df1: $3e $22
	call LoadSpriteFromMainTable                                       ; $6df3: $cd $16 $0e
	ret                                              ; $6df6: $c9


	jr   z, jr_00c_6d7f                              ; $6df7: $28 $86

	jr   z, jr_00c_6d81                              ; $6df9: $28 $86

	jr   c, @-$38                                    ; $6dfb: $38 $c6

	jr   @+$48                                       ; $6dfd: $18 $46

	jr   z, jr_00c_6d87                              ; $6dff: $28 $86

	jr   z, jr_00c_6d89                              ; $6e01: $28 $86

Jump_00c_6e03:
	ld   a, $09                                      ; $6e03: $3e $09
	ld   [wSpriteGroup], a                                  ; $6e05: $ea $1a $c2
	ld   a, [$cc58]                                  ; $6e08: $fa $58 $cc
	ld   hl, $cc57                                   ; $6e0b: $21 $57 $cc
	sub  [hl]                                        ; $6e0e: $96
	sla  a                                           ; $6e0f: $cb $27
	ld   b, $00                                      ; $6e11: $06 $00
	ld   c, a                                        ; $6e13: $4f
	ld   hl, $6df7                                   ; $6e14: $21 $f7 $6d
	add  hl, bc                                      ; $6e17: $09
	ld   c, [hl]                                     ; $6e18: $4e
	ld   b, $50                                      ; $6e19: $06 $50
	ld   a, $23                                      ; $6e1b: $3e $23
	call LoadSpriteFromMainTable                                       ; $6e1d: $cd $16 $0e
	ret                                              ; $6e20: $c9


Call_00c_6e21:
	ld   a, [wWramBank]                                  ; $6e21: $fa $93 $c2
	push af                                          ; $6e24: $f5
	ld   a, $07                                      ; $6e25: $3e $07
	ld   [wWramBank], a                                  ; $6e27: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $6e2a: $e0 $70
	ld   a, [$cc58]                                  ; $6e2c: $fa $58 $cc
	ld   hl, $cc57                                   ; $6e2f: $21 $57 $cc
	sub  [hl]                                        ; $6e32: $96
	sla  a                                           ; $6e33: $cb $27
	ld   b, $00                                      ; $6e35: $06 $00
	ld   c, a                                        ; $6e37: $4f
	ld   hl, $6df8                                   ; $6e38: $21 $f8 $6d
	add  hl, bc                                      ; $6e3b: $09
	ld   b, $00                                      ; $6e3c: $06 $00
	ld   c, [hl]                                     ; $6e3e: $4e
	push bc                                          ; $6e3f: $c5
	ld   hl, $d000                                   ; $6e40: $21 $00 $d0
	add  hl, bc                                      ; $6e43: $09
	ld   a, $a4                                      ; $6e44: $3e $a4
	ld   de, $4399                                   ; $6e46: $11 $99 $43
	ld   bc, $0804                                   ; $6e49: $01 $04 $08
	call FarCopyLayout                                       ; $6e4c: $cd $2c $0b
	pop  bc                                          ; $6e4f: $c1
	ld   hl, $d400                                   ; $6e50: $21 $00 $d4
	add  hl, bc                                      ; $6e53: $09
	ld   bc, $0804                                   ; $6e54: $01 $04 $08
	call FarCopyLayout                                       ; $6e57: $cd $2c $0b
	pop  af                                          ; $6e5a: $f1
	ld   [wWramBank], a                                  ; $6e5b: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $6e5e: $e0 $70
	ld   c, $81                                      ; $6e60: $0e $81
	ld   de, $99e0                                   ; $6e62: $11 $e0 $99
	ld   a, $07                                      ; $6e65: $3e $07
	ld   hl, $d000                                   ; $6e67: $21 $00 $d0
	ld   b, $18                                      ; $6e6a: $06 $18
	call EnqueueHDMATransfer                                       ; $6e6c: $cd $7c $02
	ld   c, $80                                      ; $6e6f: $0e $80
	ld   de, $99e0                                   ; $6e71: $11 $e0 $99
	ld   a, $07                                      ; $6e74: $3e $07
	ld   hl, $d400                                   ; $6e76: $21 $00 $d4
	ld   b, $18                                      ; $6e79: $06 $18
	call EnqueueHDMATransfer                                       ; $6e7b: $cd $7c $02
	ret                                              ; $6e7e: $c9


Call_00c_6e7f:
	ld   a, $09                                      ; $6e7f: $3e $09
	ld   [wSpriteGroup], a                                  ; $6e81: $ea $1a $c2
	ld   a, [$cc58]                                  ; $6e84: $fa $58 $cc
	ld   hl, $cc57                                   ; $6e87: $21 $57 $cc
	sub  [hl]                                        ; $6e8a: $96
	sla  a                                           ; $6e8b: $cb $27
	ld   b, $00                                      ; $6e8d: $06 $00
	ld   c, a                                        ; $6e8f: $4f
	ld   hl, $6df7                                   ; $6e90: $21 $f7 $6d
	add  hl, bc                                      ; $6e93: $09
	ld   a, [hl]                                     ; $6e94: $7e
	add  $14                                         ; $6e95: $c6 $14
	ld   c, a                                        ; $6e97: $4f
	ld   b, $34                                      ; $6e98: $06 $34
	ld   a, [$cc5f]                                  ; $6e9a: $fa $5f $cc
	or   a                                           ; $6e9d: $b7
	jr   z, jr_00c_6ea2                              ; $6e9e: $28 $02

	ld   b, $4c                                      ; $6ea0: $06 $4c

jr_00c_6ea2:
	ld   a, $24                                      ; $6ea2: $3e $24
	call LoadSpriteFromMainTable                                       ; $6ea4: $cd $16 $0e
	ret                                              ; $6ea7: $c9


	call Call_00c_6a20                               ; $6ea8: $cd $20 $6a
	ld   hl, $cc51                                   ; $6eab: $21 $51 $cc
	ld   a, [hl]                                     ; $6eae: $7e
	inc  [hl]                                        ; $6eaf: $34
	bit  4, a                                        ; $6eb0: $cb $67
	call z, Call_00c_6e7f                            ; $6eb2: $cc $7f $6e
	ld   a, [wInGameButtonsPressed]                                  ; $6eb5: $fa $10 $c2
	bit  0, a                                        ; $6eb8: $cb $47
	jr   z, jr_00c_6eca                              ; $6eba: $28 $0e

	ld   a, [$cc5f]                                  ; $6ebc: $fa $5f $cc
	or   a                                           ; $6ebf: $b7
	jr   nz, jr_00c_6ece                             ; $6ec0: $20 $0c

	ld   a, $21                                      ; $6ec2: $3e $21
	call PlaySoundEffect                                       ; $6ec4: $cd $df $1a
	jp   Jump_00c_689d                               ; $6ec7: $c3 $9d $68


jr_00c_6eca:
	bit  1, a                                        ; $6eca: $cb $4f
	jr   z, jr_00c_6ee2                              ; $6ecc: $28 $14

jr_00c_6ece:
	ld   a, $22                                      ; $6ece: $3e $22
	call PlaySoundEffect                                       ; $6ed0: $cd $df $1a
	ld   a, $01                                      ; $6ed3: $3e $01
	ld   [$cc5f], a                                  ; $6ed5: $ea $5f $cc
	ld   a, $0c                                      ; $6ed8: $3e $0c
	ld   [$cc50], a                                  ; $6eda: $ea $50 $cc
	xor  a                                           ; $6edd: $af
	ld   [$cc51], a                                  ; $6ede: $ea $51 $cc
	ret                                              ; $6ee1: $c9


jr_00c_6ee2:
	bit  5, a                                        ; $6ee2: $cb $6f
	jr   z, jr_00c_6ef5                              ; $6ee4: $28 $0f

	ld   a, [$cc5f]                                  ; $6ee6: $fa $5f $cc
	or   a                                           ; $6ee9: $b7
	ret  z                                           ; $6eea: $c8

	ld   a, $20                                      ; $6eeb: $3e $20
	call PlaySoundEffect                                       ; $6eed: $cd $df $1a
	xor  a                                           ; $6ef0: $af
	ld   [$cc5f], a                                  ; $6ef1: $ea $5f $cc
	ret                                              ; $6ef4: $c9


jr_00c_6ef5:
	bit  4, a                                        ; $6ef5: $cb $67
	ret  z                                           ; $6ef7: $c8

	ld   a, [$cc5f]                                  ; $6ef8: $fa $5f $cc
	or   a                                           ; $6efb: $b7
	ret  nz                                          ; $6efc: $c0

	ld   a, $20                                      ; $6efd: $3e $20
	call PlaySoundEffect                                       ; $6eff: $cd $df $1a
	ld   a, $01                                      ; $6f02: $3e $01
	ld   [$cc5f], a                                  ; $6f04: $ea $5f $cc
	ret                                              ; $6f07: $c9


	call Call_00c_6a20                               ; $6f08: $cd $20 $6a
	ld   hl, $cc51                                   ; $6f0b: $21 $51 $cc
	ld   a, [hl]                                     ; $6f0e: $7e
	inc  [hl]                                        ; $6f0f: $34
	cp   $28                                         ; $6f10: $fe $28
	jr   nc, jr_00c_6f25                             ; $6f12: $30 $11

	srl  a                                           ; $6f14: $cb $3f
	srl  a                                           ; $6f16: $cb $3f
	ld   h, $00                                      ; $6f18: $26 $00
	ld   l, a                                        ; $6f1a: $6f
	ld   bc, $6f2e                                   ; $6f1b: $01 $2e $6f
	add  hl, bc                                      ; $6f1e: $09
	ld   a, [hl]                                     ; $6f1f: $7e
	or   a                                           ; $6f20: $b7
	call nz, Call_00c_6e7f                           ; $6f21: $c4 $7f $6e
	ret                                              ; $6f24: $c9


jr_00c_6f25:
	ld   hl, $cc50                                   ; $6f25: $21 $50 $cc
	inc  [hl]                                        ; $6f28: $34
	xor  a                                           ; $6f29: $af
	ld   [$cc51], a                                  ; $6f2a: $ea $51 $cc
	ret                                              ; $6f2d: $c9


	nop                                              ; $6f2e: $00
	rst  $38                                         ; $6f2f: $ff
	nop                                              ; $6f30: $00
	rst  $38                                         ; $6f31: $ff
	nop                                              ; $6f32: $00
	rst  $38                                         ; $6f33: $ff
	rst  $38                                         ; $6f34: $ff
	rst  $38                                         ; $6f35: $ff
	rst  $38                                         ; $6f36: $ff
	rst  $38                                         ; $6f37: $ff
	call Call_00c_6a20                               ; $6f38: $cd $20 $6a
	ld   hl, $cc51                                   ; $6f3b: $21 $51 $cc
	ld   a, [hl]                                     ; $6f3e: $7e
	or   a                                           ; $6f3f: $b7
	jr   nz, jr_00c_6f47                             ; $6f40: $20 $05

	ld   a, $24                                      ; $6f42: $3e $24
	call PlaySoundEffect                                       ; $6f44: $cd $df $1a

jr_00c_6f47:
	ld   a, [hl]                                     ; $6f47: $7e
	inc  [hl]                                        ; $6f48: $34
	sla  a                                           ; $6f49: $cb $27
	ld   h, $00                                      ; $6f4b: $26 $00
	ld   l, a                                        ; $6f4d: $6f
	ld   bc, $6f56                                   ; $6f4e: $01 $56 $6f
	add  hl, bc                                      ; $6f51: $09
	ld   a, [hl+]                                    ; $6f52: $2a
	ld   h, [hl]                                     ; $6f53: $66
	ld   l, a                                        ; $6f54: $6f
	jp   hl                                          ; $6f55: $e9


	ld   h, d                                        ; $6f56: $62
	ld   l, a                                        ; $6f57: $6f
	ld   h, l                                        ; $6f58: $65
	ld   l, a                                        ; $6f59: $6f
	ld   h, l                                        ; $6f5a: $65
	ld   l, a                                        ; $6f5b: $6f
	ld   l, b                                        ; $6f5c: $68
	ld   l, a                                        ; $6f5d: $6f
	ld   l, b                                        ; $6f5e: $68
	ld   l, a                                        ; $6f5f: $6f
	ld   l, e                                        ; $6f60: $6b
	ld   l, a                                        ; $6f61: $6f
	call Call_00c_6d4c                               ; $6f62: $cd $4c $6d
	jp   Jump_00c_6e03                               ; $6f65: $c3 $03 $6e


	jp   Jump_00c_6dd9                               ; $6f68: $c3 $d9 $6d


	ld   hl, wIE                                   ; $6f6b: $21 $0d $c2
	set  1, [hl]                                     ; $6f6e: $cb $ce
	ld   a, [$cc5f]                                  ; $6f70: $fa $5f $cc
	or   a                                           ; $6f73: $b7
	jr   nz, jr_00c_6fd4                             ; $6f74: $20 $5e

	ld   a, [$cc58]                                  ; $6f76: $fa $58 $cc
	call Call_00c_64a8                               ; $6f79: $cd $a8 $64
	call Call_00c_712f                               ; $6f7c: $cd $2f $71
	ld   bc, $0004                                   ; $6f7f: $01 $04 $00
	add  hl, bc                                      ; $6f82: $09
	ld   a, [hl]                                     ; $6f83: $7e
	cp   $81                                         ; $6f84: $fe $81
	jr   c, jr_00c_6fd0                              ; $6f86: $38 $48

	cp   $86                                         ; $6f88: $fe $86
	jr   nc, jr_00c_6fd0                             ; $6f8a: $30 $44

	and  $0f                                         ; $6f8c: $e6 $0f
	dec  a                                           ; $6f8e: $3d
	push af                                          ; $6f8f: $f5
	ld   h, $00                                      ; $6f90: $26 $00
	ld   l, a                                        ; $6f92: $6f
	ld   bc, $00f6                                   ; $6f93: $01 $f6 $00
	add  hl, bc                                      ; $6f96: $09
	push hl                                          ; $6f97: $e5
	push af                                          ; $6f98: $f5
	ld   a, $de                                      ; $6f99: $3e $de
	ld   [wFarCallAddr], a                                  ; $6f9b: $ea $98 $c2
	ld   a, $44                                      ; $6f9e: $3e $44
	ld   [wFarCallAddr+1], a                                  ; $6fa0: $ea $99 $c2
	ld   a, $09                                      ; $6fa3: $3e $09
	ld   [wFarCallBank], a                                  ; $6fa5: $ea $9a $c2
	pop  af                                          ; $6fa8: $f1
	call FarCall                                       ; $6fa9: $cd $62 $09
	pop  hl                                          ; $6fac: $e1
	cpl                                              ; $6fad: $2f
	push af                                          ; $6fae: $f5
	ld   a, $37                                      ; $6faf: $3e $37
	ld   [wFarCallAddr], a                                  ; $6fb1: $ea $98 $c2
	ld   a, $45                                      ; $6fb4: $3e $45
	ld   [wFarCallAddr+1], a                                  ; $6fb6: $ea $99 $c2
	ld   a, $09                                      ; $6fb9: $3e $09
	ld   [wFarCallBank], a                                  ; $6fbb: $ea $9a $c2
	pop  af                                          ; $6fbe: $f1
	call FarCall                                       ; $6fbf: $cd $62 $09
	pop  af                                          ; $6fc2: $f1
	sla  a                                           ; $6fc3: $cb $27
	ld   h, $00                                      ; $6fc5: $26 $00
	ld   l, a                                        ; $6fc7: $6f
	ld   bc, $6fde                                   ; $6fc8: $01 $de $6f
	add  hl, bc                                      ; $6fcb: $09
	ld   a, [hl+]                                    ; $6fcc: $2a
	ld   h, [hl]                                     ; $6fcd: $66
	ld   l, a                                        ; $6fce: $6f
	jp   hl                                          ; $6fcf: $e9


jr_00c_6fd0:
	ld   a, $0d                                      ; $6fd0: $3e $0d
	jr   jr_00c_6fd6                                 ; $6fd2: $18 $02

jr_00c_6fd4:
	ld   a, $02                                      ; $6fd4: $3e $02

jr_00c_6fd6:
	ld   [$cc50], a                                  ; $6fd6: $ea $50 $cc
	xor  a                                           ; $6fd9: $af
	ld   [$cc51], a                                  ; $6fda: $ea $51 $cc
	ret                                              ; $6fdd: $c9


	add  sp, $6f                                     ; $6fde: $e8 $6f
	scf                                              ; $6fe0: $37
	ld   [hl], b                                     ; $6fe1: $70
	ccf                                              ; $6fe2: $3f
	ld   [hl], b                                     ; $6fe3: $70
	ld   b, a                                        ; $6fe4: $47
	ld   [hl], b                                     ; $6fe5: $70
	ld   c, a                                        ; $6fe6: $4f
	ld   [hl], b                                     ; $6fe7: $70
	ld   a, $01                                      ; $6fe8: $3e $01
	ld   [$b023], a                                  ; $6fea: $ea $23 $b0

Jump_00c_6fed:
	call Call_00c_640f                               ; $6fed: $cd $0f $64
	ld   a, [$cc56]                                  ; $6ff0: $fa $56 $cc
	or   a                                           ; $6ff3: $b7
	jr   z, jr_00c_702d                              ; $6ff4: $28 $37

	call Call_00c_6a4c                               ; $6ff6: $cd $4c $6a
	ld   a, [$cc58]                                  ; $6ff9: $fa $58 $cc
	or   a                                           ; $6ffc: $b7
	jr   z, jr_00c_7029                              ; $6ffd: $28 $2a

	ld   a, [$cc57]                                  ; $6fff: $fa $57 $cc
	add  $05                                         ; $7002: $c6 $05
	ld   hl, $cc56                                   ; $7004: $21 $56 $cc
	cp   [hl]                                        ; $7007: $be
	jr   c, jr_00c_7029                              ; $7008: $38 $1f

	ld   a, [$cc56]                                  ; $700a: $fa $56 $cc
	cp   $06                                         ; $700d: $fe $06
	jr   nc, jr_00c_701d                             ; $700f: $30 $0c

	ld   a, [$cc58]                                  ; $7011: $fa $58 $cc
	cp   [hl]                                        ; $7014: $be
	jr   c, jr_00c_7029                              ; $7015: $38 $12

	ld   hl, $cc58                                   ; $7017: $21 $58 $cc
	dec  [hl]                                        ; $701a: $35
	jr   jr_00c_7029                                 ; $701b: $18 $0c

jr_00c_701d:
	ld   hl, $cc58                                   ; $701d: $21 $58 $cc
	dec  [hl]                                        ; $7020: $35
	ld   hl, $cc57                                   ; $7021: $21 $57 $cc
	ld   a, [hl]                                     ; $7024: $7e
	or   a                                           ; $7025: $b7
	jr   z, jr_00c_7029                              ; $7026: $28 $01

	dec  [hl]                                        ; $7028: $35

jr_00c_7029:
	ld   a, $03                                      ; $7029: $3e $03
	jr   jr_00c_702f                                 ; $702b: $18 $02

jr_00c_702d:
	ld   a, $0d                                      ; $702d: $3e $0d

jr_00c_702f:
	ld   [$cc50], a                                  ; $702f: $ea $50 $cc
	xor  a                                           ; $7032: $af
	ld   [$cc51], a                                  ; $7033: $ea $51 $cc
	ret                                              ; $7036: $c9


	ld   a, $02                                      ; $7037: $3e $02
	ld   [$b023], a                                  ; $7039: $ea $23 $b0
	jp   Jump_00c_6fed                               ; $703c: $c3 $ed $6f


	ld   a, $03                                      ; $703f: $3e $03
	ld   [$b023], a                                  ; $7041: $ea $23 $b0
	jp   Jump_00c_6fed                               ; $7044: $c3 $ed $6f


	ld   a, $04                                      ; $7047: $3e $04
	ld   [$b023], a                                  ; $7049: $ea $23 $b0
	jp   Jump_00c_6fed                               ; $704c: $c3 $ed $6f


	ld   a, $05                                      ; $704f: $3e $05
	ld   [$b023], a                                  ; $7051: $ea $23 $b0
	jp   Jump_00c_6fed                               ; $7054: $c3 $ed $6f


	ld   a, [$cc51]                                  ; $7057: $fa $51 $cc
	or   a                                           ; $705a: $b7
	jr   nz, jr_00c_7075                             ; $705b: $20 $18

	xor  a                                           ; $705d: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $705e: $ea $62 $c3
	ld   a, $40                                      ; $7061: $3e $40
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $7063: $ea $63 $c3
	ld   a, $03                                      ; $7066: $3e $03
	ld   b, $00                                      ; $7068: $06 $00
	ld   hl, wBGPalettes                                   ; $706a: $21 $de $c2
	ld   c, $01                                      ; $706d: $0e $01
	ld   de, $7000                                   ; $706f: $11 $00 $70
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $7072: $cd $48 $07

jr_00c_7075:
	ld   hl, $cc51                                   ; $7075: $21 $51 $cc
	ld   a, [hl]                                     ; $7078: $7e
	inc  [hl]                                        ; $7079: $34
	cp   $1f                                         ; $707a: $fe $1f
	jr   nc, jr_00c_7087                             ; $707c: $30 $09

	and  $03                                         ; $707e: $e6 $03
	ret  nz                                          ; $7080: $c0

	ld   bc, $0040                                   ; $7081: $01 $40 $00
	jp   FadePalettesAndSetRangeToUpdate                                       ; $7084: $c3 $32 $08


jr_00c_7087:
	ld   a, BANK(Palettes_AllWhite)                                      ; $7087: $3e $01
	ld   hl, Palettes_AllWhite                                   ; $7089: $21 $00 $70
	ld   de, wBGPalettes                                   ; $708c: $11 $de $c2
	ld   bc, $0080                                   ; $708f: $01 $80 $00
	call FarMemCopy                                       ; $7092: $cd $b2 $09
	ld   bc, $003f                                   ; $7095: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $7098: $cd $aa $04
	jp   Jump_00c_689d                               ; $709b: $c3 $9d $68


	ld   a, [$cc59]                                  ; $709e: $fa $59 $cc
	bit  7, a                                        ; $70a1: $cb $7f
	jr   nz, jr_00c_70ba                             ; $70a3: $20 $15

	call Call_00c_64a8                               ; $70a5: $cd $a8 $64
	call Call_00c_712f                               ; $70a8: $cd $2f $71
	ld   bc, $0004                                   ; $70ab: $01 $04 $00
	add  hl, bc                                      ; $70ae: $09
	ld   a, [hl]                                     ; $70af: $7e
	and  $f0                                         ; $70b0: $e6 $f0
	cp   $80                                         ; $70b2: $fe $80
	jr   z, jr_00c_70e3                              ; $70b4: $28 $2d

	cp   $10                                         ; $70b6: $fe $10
	jr   z, jr_00c_70c7                              ; $70b8: $28 $0d

jr_00c_70ba:
	ld   a, [$cc52]                                  ; $70ba: $fa $52 $cc
	ld   [wGameState], a                                  ; $70bd: $ea $a0 $c2
	ld   a, [$cc53]                                  ; $70c0: $fa $53 $cc
	ld   [wGameSubstate], a                                  ; $70c3: $ea $a1 $c2
	ret                                              ; $70c6: $c9


jr_00c_70c7:
	ld   a, [hl]                                     ; $70c7: $7e
	and  $0f                                         ; $70c8: $e6 $0f
	ld   h, $40                                      ; $70ca: $26 $40
	ld   l, $01                                      ; $70cc: $2e $01
	push af                                          ; $70ce: $f5
	ld   a, $4e                                      ; $70cf: $3e $4e
	ld   [wFarCallAddr], a                                  ; $70d1: $ea $98 $c2
	ld   a, $53                                      ; $70d4: $3e $53
	ld   [wFarCallAddr+1], a                                  ; $70d6: $ea $99 $c2
	ld   a, $0c                                      ; $70d9: $3e $0c
	ld   [wFarCallBank], a                                  ; $70db: $ea $9a $c2
	pop  af                                          ; $70de: $f1
	call FarCall                                       ; $70df: $cd $62 $09
	ret                                              ; $70e2: $c9


jr_00c_70e3:
	ld   a, [hl]                                     ; $70e3: $7e
	and  $0f                                         ; $70e4: $e6 $0f
	jr   z, jr_00c_70ea                              ; $70e6: $28 $02

	jr   jr_00c_710e                                 ; $70e8: $18 $24

jr_00c_70ea:
	ld   a, $11                                      ; $70ea: $3e $11
	call PlaySoundEffect                                       ; $70ec: $cd $df $1a
	ld   hl, $00f0                                   ; $70ef: $21 $f0 $00
	xor  a                                           ; $70f2: $af
	push af                                          ; $70f3: $f5
	ld   a, $37                                      ; $70f4: $3e $37
	ld   [wFarCallAddr], a                                  ; $70f6: $ea $98 $c2
	ld   a, $45                                      ; $70f9: $3e $45
	ld   [wFarCallAddr+1], a                                  ; $70fb: $ea $99 $c2
	ld   a, $09                                      ; $70fe: $3e $09
	ld   [wFarCallBank], a                                  ; $7100: $ea $9a $c2
	pop  af                                          ; $7103: $f1
	call FarCall                                       ; $7104: $cd $62 $09
	ld   a, $ff                                      ; $7107: $3e $ff
	ld   [$afd0], a                                  ; $7109: $ea $d0 $af
	jr   jr_00c_70ba                                 ; $710c: $18 $ac

jr_00c_710e:
	ld   h, $40                                      ; $710e: $26 $40
	ld   l, $01                                      ; $7110: $2e $01
	ld   de, sPlayerName                                   ; $7112: $11 $aa $af
	ld   bc, $0005                                   ; $7115: $01 $05 $00
	ld   a, $05                                      ; $7118: $3e $05

	M_FarCall SetEnterNameState
	ret                                              ; $712e: $c9


Call_00c_712f:
	push bc                                          ; $712f: $c5
	ld   b, $00                                      ; $7130: $06 $00
	ld   c, a                                        ; $7132: $4f
	ld   hl, $713d                                   ; $7133: $21 $3d $71
	add  hl, bc                                      ; $7136: $09
	add  hl, bc                                      ; $7137: $09
	add  hl, bc                                      ; $7138: $09
	add  hl, bc                                      ; $7139: $09
	add  hl, bc                                      ; $713a: $09
	pop  bc                                          ; $713b: $c1
	ret                                              ; $713c: $c9


	sub  h                                           ; $713d: $94
	nop                                              ; $713e: $00
	nop                                              ; $713f: $00
	dec  c                                           ; $7140: $0d
	ld   de, $0095                                   ; $7141: $11 $95 $00
	ld   bc, $120e                                   ; $7144: $01 $0e $12
	sub  [hl]                                        ; $7147: $96
	nop                                              ; $7148: $00
	ld   [bc], a                                     ; $7149: $02
	rrca                                             ; $714a: $0f
	inc  de                                          ; $714b: $13
	sub  a                                           ; $714c: $97
	nop                                              ; $714d: $00
	inc  bc                                          ; $714e: $03
	db   $10                                         ; $714f: $10
	inc  d                                           ; $7150: $14
	sbc  b                                           ; $7151: $98
	nop                                              ; $7152: $00
	inc  b                                           ; $7153: $04
	ld   de, $9915                                   ; $7154: $11 $15 $99
	nop                                              ; $7157: $00
	dec  b                                           ; $7158: $05
	ld   [de], a                                     ; $7159: $12
	ld   d, $f0                                      ; $715a: $16 $f0
	nop                                              ; $715c: $00
	rlca                                             ; $715d: $07
	inc  d                                           ; $715e: $14
	add  b                                           ; $715f: $80
	pop  af                                          ; $7160: $f1
	nop                                              ; $7161: $00
	ld   [$8115], sp                                 ; $7162: $08 $15 $81
	ldh  a, [c]                                      ; $7165: $f2
	nop                                              ; $7166: $00
	add  hl, bc                                      ; $7167: $09
	ld   d, $82                                      ; $7168: $16 $82
	di                                               ; $716a: $f3
	nop                                              ; $716b: $00
	ld   a, [bc]                                     ; $716c: $0a
	rla                                              ; $716d: $17
	add  e                                           ; $716e: $83
	db   $f4                                         ; $716f: $f4
	nop                                              ; $7170: $00
	dec  bc                                          ; $7171: $0b
	jr   @-$7a                                       ; $7172: $18 $84

	push af                                          ; $7174: $f5
	nop                                              ; $7175: $00
	inc  c                                           ; $7176: $0c
	add  hl, de                                      ; $7177: $19
	add  l                                           ; $7178: $85
	db   $d3                                         ; $7179: $d3
	nop                                              ; $717a: $00
	ld   b, $13                                      ; $717b: $06 $13
	add  [hl]                                        ; $717d: $86
	nop                                              ; $717e: $00
	nop                                              ; $717f: $00


LCDCFunc09::
	ld   hl, $c20b                                   ; $7180: $21 $0b $c2
	ldh  a, [rLY]                                    ; $7183: $f0 $44
	cp   [hl]                                        ; $7185: $be
	jp   nz, LCDCInterruptHandler.return                                   ; $7186: $c2 $4a $04

	ld   hl, $ff40                                   ; $7189: $21 $40 $ff

jr_00c_718c:
	ldh  a, [rSTAT]                                  ; $718c: $f0 $41
	and  $03                                         ; $718e: $e6 $03
	jr   z, jr_00c_718c                              ; $7190: $28 $fa

jr_00c_7192:
	ldh  a, [rSTAT]                                  ; $7192: $f0 $41
	and  $03                                         ; $7194: $e6 $03
	jr   nz, jr_00c_7192                             ; $7196: $20 $fa

	set  3, [hl]                                     ; $7198: $cb $de
	ld   a, [$cc5a]                                  ; $719a: $fa $5a $cc
	ldh  [rSCY], a                                   ; $719d: $e0 $42
	jp   LCDCInterruptHandler.return                                       ; $719f: $c3 $4a $04


Func_0c_71a2::
	call Call_00c_640f                               ; $71a2: $cd $0f $64
	ld   a, [$cc56]                                  ; $71a5: $fa $56 $cc
	or   a                                           ; $71a8: $b7
	jr   z, jr_00c_71ad                              ; $71a9: $28 $02

	xor  a                                           ; $71ab: $af
	ret                                              ; $71ac: $c9


jr_00c_71ad:
	dec  a                                           ; $71ad: $3d
	ret                                              ; $71ae: $c9


	ld   a, h                                        ; $71af: $7c
	ld   [$cc52], a                                  ; $71b0: $ea $52 $cc
	ld   a, l                                        ; $71b3: $7d
	ld   [$cc53], a                                  ; $71b4: $ea $53 $cc
	ld   a, $40                                      ; $71b7: $3e $40
	ld   [wGameState], a                                  ; $71b9: $ea $a0 $c2
	xor  a                                           ; $71bc: $af
	ld   [wGameSubstate], a                                  ; $71bd: $ea $a1 $c2
	ret                                              ; $71c0: $c9


	ret                                              ; $71c1: $c9


Call_00c_71c2:
	push af                                          ; $71c2: $f5
	ld   a, $35                                      ; $71c3: $3e $35
	ld   [wFarCallAddr], a                                  ; $71c5: $ea $98 $c2
	ld   a, $42                                      ; $71c8: $3e $42
	ld   [wFarCallAddr+1], a                                  ; $71ca: $ea $99 $c2
	ld   a, $0a                                      ; $71cd: $3e $0a
	ld   [wFarCallBank], a                                  ; $71cf: $ea $9a $c2
	pop  af                                          ; $71d2: $f1
	call FarCall                                       ; $71d3: $cd $62 $09
	ret                                              ; $71d6: $c9


Call_00c_71d7:
	inc  hl                                          ; $71d7: $23

	M_FarCall CheckIfFlagSet1
	
	dec  hl                                          ; $71ec: $2b
	ret                                              ; $71ed: $c9


	push af                                          ; $71ee: $f5
	ld   a, $de                                      ; $71ef: $3e $de
	ld   [wFarCallAddr], a                                  ; $71f1: $ea $98 $c2
	ld   a, $41                                      ; $71f4: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $71f6: $ea $99 $c2
	ld   a, $0a                                      ; $71f9: $3e $0a
	ld   [wFarCallBank], a                                  ; $71fb: $ea $9a $c2
	pop  af                                          ; $71fe: $f1
	call FarCall                                       ; $71ff: $cd $62 $09
	ret                                              ; $7202: $c9


	inc  hl                                          ; $7203: $23
	push af                                          ; $7204: $f5
	ld   a, $de                                      ; $7205: $3e $de
	ld   [wFarCallAddr], a                                  ; $7207: $ea $98 $c2
	ld   a, $41                                      ; $720a: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $720c: $ea $99 $c2
	ld   a, $0a                                      ; $720f: $3e $0a
	ld   [wFarCallBank], a                                  ; $7211: $ea $9a $c2
	pop  af                                          ; $7214: $f1
	call FarCall                                       ; $7215: $cd $62 $09
	dec  hl                                          ; $7218: $2b
	ret                                              ; $7219: $c9


	ld   hl, Data_0c_721f                                   ; $721a: $21 $1f $72
	jr   jr_00c_722d                                 ; $721d: $18 $0e


Data_0c_721f:
	dw $0100
	dw $0104
	dw $0108
	dw $010c
	dw $0110
	dw $0114
	dw $0000


jr_00c_722d:
	ld   d, h                                        ; $722d: $54
	ld   e, l                                        ; $722e: $5d

jr_00c_722f:
	ld   a, [de]                                     ; $722f: $1a
	ld   l, a                                        ; $7230: $6f
	inc  de                                          ; $7231: $13
	ld   a, [de]                                     ; $7232: $1a
	ld   h, a                                        ; $7233: $67
	inc  de                                          ; $7234: $13
	or   l                                           ; $7235: $b5
	ret  z                                           ; $7236: $c8

	call Call_00c_71c2                               ; $7237: $cd $c2 $71
	or   a                                           ; $723a: $b7
	jr   z, jr_00c_722f                              ; $723b: $28 $f2

	call Call_00c_71d7                               ; $723d: $cd $d7 $71
	or   a                                           ; $7240: $b7
	jr   nz, jr_00c_722f                             ; $7241: $20 $ec

	ld   a, $ff                                      ; $7243: $3e $ff
	ret                                              ; $7245: $c9


	ld   hl, Data_0c_721f                                   ; $7246: $21 $1f $72
	jr   jr_00c_722d                                 ; $7249: $18 $e2


Func_0c_724b::
	ld   hl, Data_0c_721f                                   ; $724b: $21 $1f $72
	jr   jr_00c_7250                                 ; $724e: $18 $00

jr_00c_7250:
	ld   d, h                                        ; $7250: $54
	ld   e, l                                        ; $7251: $5d

.loop:
	ld   a, [de]                                     ; $7252: $1a
	ld   l, a                                        ; $7253: $6f
	inc  de                                          ; $7254: $13
	ld   a, [de]                                     ; $7255: $1a
	ld   h, a                                        ; $7256: $67
	inc  de                                          ; $7257: $13
	or   l                                           ; $7258: $b5
	ret  z                                           ; $7259: $c8

	call Call_00c_71d7                               ; $725a: $cd $d7 $71
	or   a                                           ; $725d: $b7
	jr   z, .loop                              ; $725e: $28 $f2

	ld   a, $ff                                      ; $7260: $3e $ff
	ret                                              ; $7262: $c9


;
	ld   hl, Data_0c_7268                                   ; $7263: $21 $68 $72
	jr   jr_00c_722d                                 ; $7266: $18 $c5


Data_0c_7268:
	dw $0188
	dw $018c
	dw $0000


Func_0c_726e::
	ld   hl, Data_0c_7268                                   ; $726e: $21 $68 $72
	jr   jr_00c_7250                                 ; $7271: $18 $dd


AequFFh_0c_7273::
	ld   a, $ff                                      ; $7273: $3e $ff
	ret                                              ; $7275: $c9


	ld   hl, $0002                                   ; $7276: $21 $02 $00
	push af                                          ; $7279: $f5
	ld   a, $35                                      ; $727a: $3e $35
	ld   [wFarCallAddr], a                                  ; $727c: $ea $98 $c2
	ld   a, $42                                      ; $727f: $3e $42
	ld   [wFarCallAddr+1], a                                  ; $7281: $ea $99 $c2
	ld   a, $0a                                      ; $7284: $3e $0a
	ld   [wFarCallBank], a                                  ; $7286: $ea $9a $c2
	pop  af                                          ; $7289: $f1
	call FarCall                                       ; $728a: $cd $62 $09
	ret                                              ; $728d: $c9


AequFFh_0c_728e::
	ld   a, $ff                                      ; $728e: $3e $ff
	ret                                              ; $7290: $c9


	ld   hl, $0002                                   ; $7291: $21 $02 $00
	push af                                          ; $7294: $f5
	ld   a, $35                                      ; $7295: $3e $35
	ld   [wFarCallAddr], a                                  ; $7297: $ea $98 $c2
	ld   a, $42                                      ; $729a: $3e $42
	ld   [wFarCallAddr+1], a                                  ; $729c: $ea $99 $c2
	ld   a, $0a                                      ; $729f: $3e $0a
	ld   [wFarCallBank], a                                  ; $72a1: $ea $9a $c2
	pop  af                                          ; $72a4: $f1
	call FarCall                                       ; $72a5: $cd $62 $09
	or   a                                           ; $72a8: $b7
	ret  z                                           ; $72a9: $c8

	call Call_00c_694e                               ; $72aa: $cd $4e $69
	cpl                                              ; $72ad: $2f
	ret                                              ; $72ae: $c9


AequFFh_0c_72af::
	ld   a, $ff                                      ; $72af: $3e $ff
	ret                                              ; $72b1: $c9


	ld   hl, $0002                                   ; $72b2: $21 $02 $00
	push af                                          ; $72b5: $f5
	ld   a, $35                                      ; $72b6: $3e $35
	ld   [wFarCallAddr], a                                  ; $72b8: $ea $98 $c2
	ld   a, $42                                      ; $72bb: $3e $42
	ld   [wFarCallAddr+1], a                                  ; $72bd: $ea $99 $c2
	ld   a, $0a                                      ; $72c0: $3e $0a
	ld   [wFarCallBank], a                                  ; $72c2: $ea $9a $c2
	pop  af                                          ; $72c5: $f1
	call FarCall                                       ; $72c6: $cd $62 $09
	or   a                                           ; $72c9: $b7
	ret  z                                           ; $72ca: $c8

	ld   hl, $0014                                   ; $72cb: $21 $14 $00
	push af                                          ; $72ce: $f5
	ld   a, $35                                      ; $72cf: $3e $35
	ld   [wFarCallAddr], a                                  ; $72d1: $ea $98 $c2
	ld   a, $42                                      ; $72d4: $3e $42
	ld   [wFarCallAddr+1], a                                  ; $72d6: $ea $99 $c2
	ld   a, $0a                                      ; $72d9: $3e $0a
	ld   [wFarCallBank], a                                  ; $72db: $ea $9a $c2
	pop  af                                          ; $72de: $f1
	call FarCall                                       ; $72df: $cd $62 $09
	or   a                                           ; $72e2: $b7
	ret  nz                                          ; $72e3: $c0

	ld   hl, $0015                                   ; $72e4: $21 $15 $00
	push af                                          ; $72e7: $f5
	ld   a, $35                                      ; $72e8: $3e $35
	ld   [wFarCallAddr], a                                  ; $72ea: $ea $98 $c2
	ld   a, $42                                      ; $72ed: $3e $42
	ld   [wFarCallAddr+1], a                                  ; $72ef: $ea $99 $c2
	ld   a, $0a                                      ; $72f2: $3e $0a
	ld   [wFarCallBank], a                                  ; $72f4: $ea $9a $c2
	pop  af                                          ; $72f7: $f1
	call FarCall                                       ; $72f8: $cd $62 $09
	or   a                                           ; $72fb: $b7
	ret  nz                                          ; $72fc: $c0

	ld   hl, $0016                                   ; $72fd: $21 $16 $00
	push af                                          ; $7300: $f5
	ld   a, $35                                      ; $7301: $3e $35
	ld   [wFarCallAddr], a                                  ; $7303: $ea $98 $c2
	ld   a, $42                                      ; $7306: $3e $42
	ld   [wFarCallAddr+1], a                                  ; $7308: $ea $99 $c2
	ld   a, $0a                                      ; $730b: $3e $0a
	ld   [wFarCallBank], a                                  ; $730d: $ea $9a $c2
	pop  af                                          ; $7310: $f1
	call FarCall                                       ; $7311: $cd $62 $09
	or   a                                           ; $7314: $b7
	ret  nz                                          ; $7315: $c0

	ld   hl, $0017                                   ; $7316: $21 $17 $00
	push af                                          ; $7319: $f5
	ld   a, $35                                      ; $731a: $3e $35
	ld   [wFarCallAddr], a                                  ; $731c: $ea $98 $c2
	ld   a, $42                                      ; $731f: $3e $42
	ld   [wFarCallAddr+1], a                                  ; $7321: $ea $99 $c2
	ld   a, $0a                                      ; $7324: $3e $0a
	ld   [wFarCallBank], a                                  ; $7326: $ea $9a $c2
	pop  af                                          ; $7329: $f1
	call FarCall                                       ; $732a: $cd $62 $09
	or   a                                           ; $732d: $b7
	ret  nz                                          ; $732e: $c0

	ld   hl, $0018                                   ; $732f: $21 $18 $00
	push af                                          ; $7332: $f5
	ld   a, $35                                      ; $7333: $3e $35
	ld   [wFarCallAddr], a                                  ; $7335: $ea $98 $c2
	ld   a, $42                                      ; $7338: $3e $42
	ld   [wFarCallAddr+1], a                                  ; $733a: $ea $99 $c2
	ld   a, $0a                                      ; $733d: $3e $0a
	ld   [wFarCallBank], a                                  ; $733f: $ea $9a $c2
	pop  af                                          ; $7342: $f1
	call FarCall                                       ; $7343: $cd $62 $09
	or   a                                           ; $7346: $b7
	ret  nz                                          ; $7347: $c0

	ld   hl, $0019                                   ; $7348: $21 $19 $00
	push af                                          ; $734b: $f5
	ld   a, $35                                      ; $734c: $3e $35
	ld   [wFarCallAddr], a                                  ; $734e: $ea $98 $c2
	ld   a, $42                                      ; $7351: $3e $42
	ld   [wFarCallAddr+1], a                                  ; $7353: $ea $99 $c2
	ld   a, $0a                                      ; $7356: $3e $0a
	ld   [wFarCallBank], a                                  ; $7358: $ea $9a $c2
	pop  af                                          ; $735b: $f1
	call FarCall                                       ; $735c: $cd $62 $09
	ret                                              ; $735f: $c9


Func_0c_7360::
	M_FarCall Func_0a_426b
	ret                                              ; $7374: $c9


GameState44::
; Branch based on substate
	ld   a, [wGameSubstate]                                         ; $7375
	dec  a                                                          ; $7378
	jp   z, .substate1                                              ; $7379

	dec  a                                                          ; $737c
	jp   z, .substate2                                              ; $737d

; Substate 0 - set max vol and clear display regs
	ld   a, $07                                                     ; $7380
	call SafeSetAudVolForMultipleChannels                           ; $7382
	call ClearDisplayRegsAllowVBlankInt                             ; $7385

; Retain window lcdc status, and turn on LCD with 16-height sprites
	ld   a, [wLCDC]                                                 ; $7388
	and  LCDCF_ON|LCDCF_WIN9C00|LCDCF_WINON                         ; $738b
	or   LCDCF_ON|LCDCF_OBJ16|LCDCF_OBJON|LCDCF_BGON                ; $738d
	ld   [wLCDC], a                                                 ; $738f
	ldh  [rLCDC], a                                                 ; $7392

; Load all white palettes and have BG's updated
	ld   a, BANK(Palettes_AllWhite)                                 ; $7394
	ld   hl, Palettes_AllWhite                                      ; $7396
	ld   de, wBGPalettes                                            ; $7399
	ld   bc, NUM_PALETTE_BYTES * 2                                  ; $739c
	call FarMemCopy                                                 ; $739f

	ld   bc, $003f                                                  ; $73a2
	call SetBGandOBJPaletteRangesToUpdate                           ; $73a5

; Allow inputs, and clear oam
	ld   a, $ff                                                     ; $73a8
	ld   [wInGameInputsEnabled], a                                  ; $73aa
	call ClearOam                                                   ; $73ad

;
	call ClearBaseAnimSpriteSpecDetails                                       ; $73b0: $cd $c9 $2e

;
	ld   bc, $0000                                   ; $73b3: $01 $00 $00
	M_FarCall SetAnimSpriteType0CoordsRelativeTo
	M_FarCall Func_0a_426b
	M_FarCall Func_08_4000
	
;
	ld   a, [$cc78]                                  ; $73f2: $fa $78 $cc
	ld   [$cbc8], a                                  ; $73f5: $ea $c8 $cb
	xor  a                                           ; $73f8: $af
	ld   [$cba6], a                                  ; $73f9: $ea $a6 $cb
	ld   [$cba8], a                                  ; $73fc: $ea $a8 $cb
	ld   [$cbaa], a                                  ; $73ff: $ea $aa $cb
	ld   [$cba9], a                                  ; $7402: $ea $a9 $cb
	inc  a                                           ; $7405: $3c
	ld   [$cbab], a                                  ; $7406: $ea $ab $cb

; Script idx is a triple idx into the script sources table
	ld   a, [wIntroScriptIdx]                                       ; $7409
	ld   c, a                                                       ; $740c
	ld   a, [wIntroScriptIdx+1]                                     ; $740d
	ld   b, a                                                       ; $7410
	ld   hl, ScriptSources                                          ; $7411
	add  hl, bc                                                     ; $7414
	add  hl, bc                                                     ; $7415
	add  hl, bc                                                     ; $7416

; Copy the 3 bytes (addr, then bank)
	ld   a, BANK(ScriptSources)                                     ; $7417
	ld   de, wBaseScriptAddr                                        ; $7419
	ld   bc, $0003                                                  ; $741c
	call FarMemCopy                                                 ; $741f

; HL = word copied above, +$4000 to get actual script src addr
	ld   a, [wBaseScriptAddr]                                       ; $7422
	ld   l, a                                                       ; $7425
	ld   a, [wBaseScriptAddr+1]                                     ; $7426
	ld   h, a                                                       ; $7429
	ld   bc, $4000                                                  ; $742a
	add  hl, bc                                                     ; $742d

; Scripts start from bank $41, start running our selected script
	ld   a, [wBaseScriptBank]                                       ; $742e
	add  SCRIPT_DATA_BANK                                           ; $7431

	M_FarCall StartRunningScript
	
;
	xor  a                                           ; $7447: $af
	ld   [$cc72], a                                  ; $7448: $ea $72 $cc
	ld   [$cc73], a                                  ; $744b: $ea $73 $cc
	ld   a, $02                                      ; $744e: $3e $02
	ld   [wGameSubstate], a                                  ; $7450: $ea $a1 $c2
	ret                                              ; $7453: $c9

.substate1:
	call ClearDisplayRegsAllowVBlankInt                                       ; $7454: $cd $59 $0b
	ld   a, [wLCDC]                                  ; $7457: $fa $03 $c2
	and  $e0                                         ; $745a: $e6 $e0
	or   $87                                         ; $745c: $f6 $87
	ld   [wLCDC], a                                  ; $745e: $ea $03 $c2
	ldh  [rLCDC], a                                  ; $7461: $e0 $40
	ld   a, BANK(Palettes_AllWhite)                                      ; $7463: $3e $01
	ld   hl, Palettes_AllWhite                                   ; $7465: $21 $00 $70
	ld   de, wBGPalettes                                   ; $7468: $11 $de $c2
	ld   bc, $0080                                   ; $746b: $01 $80 $00
	call FarMemCopy                                       ; $746e: $cd $b2 $09
	ld   bc, $003f                                   ; $7471: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $7474: $cd $aa $04
	ld   a, $ff                                      ; $7477: $3e $ff
	ld   [wInGameInputsEnabled], a                                  ; $7479: $ea $0e $c2
	call ClearOam                                       ; $747c: $cd $d7 $0d
	call ClearBaseAnimSpriteSpecDetails                                       ; $747f: $cd $c9 $2e

	M_FarCall Func_08_4045
	
	xor  a                                           ; $7496: $af
	ld   [$cc72], a                                  ; $7497: $ea $72 $cc
	ld   [$cc73], a                                  ; $749a: $ea $73 $cc
	ld   a, $02                                      ; $749d: $3e $02
	ld   [wGameSubstate], a                                  ; $749f: $ea $a1 $c2
	ret                                              ; $74a2: $c9

.substate2:
	call ClearOam                                       ; $74a3: $cd $d7 $0d
	ld   bc, .return                                   ; $74a6: $01 $ba $74
	push bc                                          ; $74a9: $c5
	ld   a, [$cc72]                                  ; $74aa: $fa $72 $cc
	sla  a                                           ; $74ad: $cb $27
	ld   h, $00                                      ; $74af: $26 $00
	ld   l, a                                        ; $74b1: $6f
	ld   bc, .table                                   ; $74b2: $01 $be $74
	add  hl, bc                                      ; $74b5: $09
	ld   a, [hl+]                                    ; $74b6: $2a
	ld   h, [hl]                                     ; $74b7: $66
	ld   l, a                                        ; $74b8: $6f
	jp   hl                                          ; $74b9: $e9

.return:
	call AnimateAllAnimatedSpriteSpecs                                       ; $74ba: $cd $d3 $2e
	ret                                              ; $74bd: $c9

.table:
	dw .thing0
	dw .thing1
	dw .thing2

.thing0:
	ld   hl, $cc73                                   ; $74c4: $21 $73 $cc
	ld   a, [hl]                                     ; $74c7: $7e
	inc  [hl]                                        ; $74c8: $34

	M_FarCall todo_ClearsAndLoadsGfxForConvoScreens
	
	or   a                                           ; $74dd: $b7
	ret  nz                                          ; $74de: $c0

	M_FarCall Func_0a_4934
	
	ld   hl, wBGPalettes                                   ; $74f3: $21 $de $c2
	ld   bc, $0004                                   ; $74f6: $01 $04 $00
	ld   de, $7fff                                   ; $74f9: $11 $ff $7f
	call CopyEthenDintoHL_BCtimes                                       ; $74fc: $cd $9f $09
	ld   hl, $cc72                                   ; $74ff: $21 $72 $cc
	inc  [hl]                                        ; $7502: $34
	xor  a                                           ; $7503: $af
	ld   [$cc73], a                                  ; $7504: $ea $73 $cc
	ret                                              ; $7507: $c9

.thing1:
	M_FarCall HandleScriptEngine
	
	ld   a, [wScriptEngineIsRunning]                                  ; $751c: $fa $51 $cb
	or   a                                           ; $751f: $b7
	ret  nz                                          ; $7520: $c0

	ld   hl, $cc72                                   ; $7521: $21 $72 $cc
	inc  [hl]                                        ; $7524: $34
	xor  a                                           ; $7525: $af
	ld   [$cc73], a                                  ; $7526: $ea $73 $cc
	ret                                              ; $7529: $c9

.thing2:
	M_FarCall HandleScriptEngine
	
	ld   a, [$cc73]                                  ; $753e: $fa $73 $cc
	or   a                                           ; $7541: $b7
	jr   nz, .cont_755c                             ; $7542: $20 $18

	xor  a                                           ; $7544: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $7545: $ea $62 $c3
	ld   a, $40                                      ; $7548: $3e $40
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $754a: $ea $63 $c3
	ld   a, $03                                      ; $754d: $3e $03
	ld   b, $00                                      ; $754f: $06 $00
	ld   hl, wBGPalettes                                   ; $7551: $21 $de $c2
	ld   c, $01                                      ; $7554: $0e $01
	ld   de, $7000                                   ; $7556: $11 $00 $70
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $7559: $cd $48 $07

.cont_755c:
	ld   hl, $cc73                                   ; $755c: $21 $73 $cc
	ld   a, [hl]                                     ; $755f: $7e
	inc  [hl]                                        ; $7560: $34
	cp   $3f                                         ; $7561: $fe $3f
	jr   nc, .br_756e                             ; $7563: $30 $09

	and  $07                                         ; $7565: $e6 $07
	ld   bc, $0040                                   ; $7567: $01 $40 $00
	call z, FadePalettesAndSetRangeToUpdate                                    ; $756a: $cc $32 $08
	ret                                              ; $756d: $c9

.br_756e:
; Set all palettes to white, updating BG's
	ld   a, BANK(Palettes_AllWhite)                                 ; $756e
	ld   hl, Palettes_AllWhite                                      ; $7570
	ld   de, wBGPalettes                                            ; $7573
	ld   bc, NUM_PALETTE_BYTES * 2                                  ; $7576
	call FarMemCopy                                                 ; $7579
	
	ld   bc, $003f                                                  ; $757c
	call SetBGandOBJPaletteRangesToUpdate                           ; $757f

; Set new game state and substate
	ld   a, [wPostIntroScriptEngineGameState]                       ; $7582
	ld   [wGameState], a                                            ; $7585
	ld   a, [wPostIntroScriptEngineGameSubstate]                    ; $7588
	ld   [wGameSubstate], a                                         ; $758b
	ret                                                             ; $758e


; A - intro script control byte
; BC - script idx
; H - state to set after script engine done
; L - substate to set after script engine done
InitIntroScript::
;
	ld   [$cc78], a                                  ; $758f: $ea $78 $cc

; Set script idx
	ld   a, b                                                       ; $7592
	ld   [wIntroScriptIdx+1], a                                     ; $7593
	ld   a, c                                                       ; $7596
	ld   [wIntroScriptIdx], a                                       ; $7597

; Set game state/substate to go to after the script is done
	ld   a, h                                                       ; $759a
	ld   [wPostIntroScriptEngineGameState], a                       ; $759b
	ld   a, l                                                       ; $759e
	ld   [wPostIntroScriptEngineGameSubstate], a                    ; $759f

; Start intro script state
	ld   a, GS_44                                                   ; $75a2
	ld   [wGameState], a                                            ; $75a4
	xor  a                                                          ; $75a7
	ld   [wGameSubstate], a                                         ; $75a8
	ret                                                             ; $75ab


GameState46::
	ld   a, [wGameSubstate]                                  ; $75ac: $fa $a1 $c2
	sla  a                                           ; $75af: $cb $27
	ld   h, $00                                      ; $75b1: $26 $00
	ld   l, a                                        ; $75b3: $6f
	ld   bc, .substates                                   ; $75b4: $01 $bc $75
	add  hl, bc                                      ; $75b7: $09
	ld   a, [hl+]                                    ; $75b8: $2a
	ld   h, [hl]                                     ; $75b9: $66
	ld   l, a                                        ; $75ba: $6f
	jp   hl                                          ; $75bb: $e9

.substates:
	dw .substate0
	dw .substate1
	dw .substate2
	
.substate0:
	xor  a                                           ; $75c2: $af
	call PlaySong                                       ; $75c3: $cd $92 $1a

	M_FarCall Func_0a_426b
	
	ld   hl, wGameSubstate                                   ; $75da: $21 $a1 $c2
	inc  [hl]                                        ; $75dd: $34

	M_FarCall Call_00a_4024
	
	or   a                                           ; $75f2: $b7
	jr   z, .substate1                              ; $75f3: $28 $24

	ld   [$b0ab], a                                  ; $75f5: $ea $ab $b0
	xor  a                                           ; $75f8: $af
	ld   [$b0aa], a                                  ; $75f9: $ea $aa $b0
	ld   h, $46                                      ; $75fc: $26 $46
	ld   l, $00                                      ; $75fe: $2e $00
	ld   bc, $0003                                   ; $7600: $01 $03 $00
	xor  a                                           ; $7603: $af

	M_FarCall InitIntroScript
	
	ret                                              ; $7618: $c9

.substate1:
	xor  a                                           ; $7619: $af

	M_FarCall Call_00a_4333
	
	push af                                          ; $762e: $f5
	ld   a, $01                                      ; $762f: $3e $01

	M_FarCall Call_00a_4333
	
	ld   b, a                                        ; $7645: $47
	pop  af                                          ; $7646: $f1
	or   b                                           ; $7647: $b0
	push af                                          ; $7648: $f5
	ld   a, $02                                      ; $7649: $3e $02

	M_FarCall Call_00a_4333
	
	ld   b, a                                        ; $765f: $47
	pop  af                                          ; $7660: $f1
	or   b                                           ; $7661: $b0
	jr   z, .substate2                              ; $7662: $28 $25

	ld   [$b0ab], a                                  ; $7664: $ea $ab $b0
	ld   a, $01                                      ; $7667: $3e $01
	ld   [$b0aa], a                                  ; $7669: $ea $aa $b0
	ld   h, $46                                      ; $766c: $26 $46
	ld   l, $00                                      ; $766e: $2e $00
	ld   bc, $0003                                   ; $7670: $01 $03 $00
	xor  a                                           ; $7673: $af

	M_FarCall InitIntroScript
	
	ret                                              ; $7688: $c9

.substate2:
	ld   hl, $0000                                   ; $7689: $21 $00 $00

	M_FarCall CheckIfFlagSet1
	
	or   a                                           ; $76a0: $b7
	jr   nz, jr_00c_76c0                             ; $76a1: $20 $1d

	ld   h, $46                                      ; $76a3: $26 $46
	ld   l, $00                                      ; $76a5: $2e $00
	ld   bc, $0005                                   ; $76a7: $01 $05 $00
	xor  a                                           ; $76aa: $af

	M_FarCall InitIntroScript
	
	ret                                              ; $76bf: $c9

jr_00c_76c0:
	ld   hl, $772e                                   ; $76c0: $21 $2e $77

jr_00c_76c3:
	ld   a, [hl+]                                    ; $76c3: $2a
	ld   c, a                                        ; $76c4: $4f
	ld   a, [hl+]                                    ; $76c5: $2a
	ld   b, a                                        ; $76c6: $47
	bit  7, b                                        ; $76c7: $cb $78
	jr   nz, jr_00c_7724                             ; $76c9: $20 $59

	ld   a, [hl+]                                    ; $76cb: $2a
	ld   e, a                                        ; $76cc: $5f
	ld   a, [hl+]                                    ; $76cd: $2a
	ld   d, a                                        ; $76ce: $57
	push de                                          ; $76cf: $d5
	push hl                                          ; $76d0: $e5
	ld   h, b                                        ; $76d1: $60
	ld   l, c                                        ; $76d2: $69

	M_FarCall CheckIfFlagSet1
	
	pop  hl                                          ; $76e7: $e1
	pop  de                                          ; $76e8: $d1
	or   a                                           ; $76e9: $b7
	jr   z, jr_00c_76c3                              ; $76ea: $28 $d7

	push hl                                          ; $76ec: $e5
	ld   h, d                                        ; $76ed: $62
	ld   l, e                                        ; $76ee: $6b

	M_FarCall CheckIfFlagSet1
	
	pop  hl                                          ; $7703: $e1
	or   a                                           ; $7704: $b7
	jr   nz, jr_00c_76c3                             ; $7705: $20 $bc

	ld   h, $46                                      ; $7707: $26 $46
	ld   l, $00                                      ; $7709: $2e $00
	ld   bc, $0010                                   ; $770b: $01 $10 $00
	xor  a                                           ; $770e: $af

	M_FarCall InitIntroScript
	
	ret                                              ; $7723: $c9

jr_00c_7724:
	ld   a, GS_TITLE_SCREEN                                      ; $7724: $3e $36
	ld   [wGameState], a                                  ; $7726: $ea $a0 $c2
	xor  a                                           ; $7729: $af
	ld   [wGameSubstate], a                                  ; $772a: $ea $a1 $c2
	ret                                              ; $772d: $c9


;
	ld   [bc], a                                     ; $772e: $02
	nop                                              ; $772f: $00
	inc  bc                                          ; $7730: $03
	nop                                              ; $7731: $00
	inc  b                                           ; $7732: $04
	nop                                              ; $7733: $00
	dec  b                                           ; $7734: $05
	nop                                              ; $7735: $00
	ld   b, $00                                      ; $7736: $06 $00
	rlca                                             ; $7738: $07
	nop                                              ; $7739: $00
	ld   [$0900], sp                                 ; $773a: $08 $00 $09
	nop                                              ; $773d: $00
	ld   a, [bc]                                     ; $773e: $0a
	nop                                              ; $773f: $00
	dec  bc                                          ; $7740: $0b
	nop                                              ; $7741: $00
	inc  c                                           ; $7742: $0c
	nop                                              ; $7743: $00
	dec  c                                           ; $7744: $0d
	nop                                              ; $7745: $00
	ld   c, $00                                      ; $7746: $0e $00
	rrca                                             ; $7748: $0f
	nop                                              ; $7749: $00
	stop                                             ; $774a: $10 $00
	ld   de, $1200                                   ; $774c: $11 $00 $12
	nop                                              ; $774f: $00
	inc  de                                          ; $7750: $13
	nop                                              ; $7751: $00
	rst  $38                                         ; $7752: $ff
	rst  $38                                         ; $7753: $ff


GameState47_Prologue::
; Branch based on 2 substates
	ld   a, [wGameSubstate]                                         ; $7754
	or   a                                                          ; $7757
	jp   nz, .substate1_main                                        ; $7758

; Substate 0 - Init

; Set max audvol, then enable vblank
	ld   a, $07                                                     ; $775b
	call SafeSetAudVolForMultipleChannels                           ; $775d
	call ClearDisplayRegsAllowVBlankInt                             ; $7760
	
; Preserve window settings, and display all
	ld   a, [wLCDC]                                                 ; $7763
	and  LCDCF_ON|LCDCF_WIN9C00|LCDCF_WINON                         ; $7766
	or   LCDCF_ON|LCDCF_OBJ16|LCDCF_OBJON|LCDCF_BGON                ; $7768
	ld   [wLCDC], a                                                 ; $776a
	ldh  [rLCDC], a                                                 ; $776d

; Set curr palettes to all white
	ld   a, BANK(Palettes_AllWhite)                                 ; $776f
	ld   hl, Palettes_AllWhite                                      ; $7771
	ld   de, wBGandOBJPalettes                                      ; $7774
	ld   bc, NUM_PALETTE_BYTES * 2                                  ; $7777
	call FarMemCopy                                                 ; $777a

; Have BG palettes updated
	ldbc $00, $3f                                                   ; $777d
	call SetBGandOBJPaletteRangesToUpdate                           ; $7780

; Allow all inputs
	ld   a, $ff                                                     ; $7783
	ld   [wInGameInputsEnabled], a                                  ; $7785
	
; Clear oam and base anim sprite specs
	call ClearOam                                                   ; $7788
	call ClearBaseAnimSpriteSpecDetails                             ; $778b
	
;
	ld   bc, $0000                                   ; $778e: $01 $00 $00
	M_FarCall SetAnimSpriteType0CoordsRelativeTo
	
;
	M_FarCall Func_0a_426b
	
;
	ld   a, $08                                      ; $77b9: $3e $08
	ld   [sTextSpeedBaseCounter], a                                  ; $77bb: $ea $b3 $b1
	xor  a                                           ; $77be: $af
	ld   [$b1b4], a                                  ; $77bf: $ea $b4 $b1

;
	M_FarCall Func_08_4000

;
	ld   a, [$cc9e]                                  ; $77d6: $fa $9e $cc
	ld   [$cbc8], a                                  ; $77d9: $ea $c8 $cb
	xor  a                                           ; $77dc: $af
	ld   [$cba6], a                                  ; $77dd: $ea $a6 $cb
	ld   [$cba8], a                                  ; $77e0: $ea $a8 $cb
	ld   [$cbaa], a                                  ; $77e3: $ea $aa $cb
	ld   [$cba9], a                                  ; $77e6: $ea $a9 $cb
	inc  a                                           ; $77e9: $3c
	ld   [$cbab], a                                  ; $77ea: $ea $ab $cb

; Script idx is a triple idx into the script sources table
	ld   a, [wPrologueScriptIdx]                                    ; $77ed
	ld   c, a                                                       ; $77f0
	ld   a, [wPrologueScriptIdx+1]                                  ; $77f1
	ld   b, a                                                       ; $77f4
	ld   hl, ScriptSources                                          ; $77f5
	add  hl, bc                                                     ; $77f8
	add  hl, bc                                                     ; $77f9
	add  hl, bc                                                     ; $77fa
	
; Copy the 3 bytes (addr, then bank)
	ld   a, BANK(ScriptSources)                                     ; $77fb
	ld   de, wBaseScriptAddr                                        ; $77fd
	ld   bc, $0003                                                  ; $7800
	call FarMemCopy                                                 ; $7803

; HL = word copied above, +$4000 to get actual script src addr
	ld   a, [wBaseScriptAddr]                                       ; $7806
	ld   l, a                                                       ; $7809
	ld   a, [wBaseScriptAddr+1]                                     ; $780a
	ld   h, a                                                       ; $780d
	ld   bc, $4000                                                  ; $780e
	add  hl, bc                                                     ; $7811

; Scripts start from bank $41, start running our selected script
	ld   a, [wBaseScriptBank]                                       ; $7812
	add  SCRIPT_DATA_BANK                                           ; $7815

	M_FarCall StartRunningScript

; Clear sub-substate in main substate, and misc counter shared between those states
	xor  a                                                          ; $782b
	ld   [wPrologueMainSubSubstate], a                              ; $782c
	ld   [wPrologueMiscCounter], a                                  ; $782f

; Inc to main substate
	ld   hl, wGameSubstate                                          ; $7832
	inc  [hl]                                                       ; $7835
	ret                                                             ; $7836

.substate1_main:
	call ClearOam                                                   ; $7837
	
; Return to func below after handling sub-substate
	ld   bc, .return                                                ; $783a
	push bc                                                         ; $783d

; Jump to sub-substate handler
	ld   a, [wPrologueMainSubSubstate]                              ; $783e
	sla  a                                                          ; $7841
	ld   h, $00                                                     ; $7843
	ld   l, a                                                       ; $7845
	ld   bc, .mainSubstates                                         ; $7846
	add  hl, bc                                                     ; $7849
	ld   a, [hl+]                                                   ; $784a
	ld   h, [hl]                                                    ; $784b
	ld   l, a                                                       ; $784c
	jp   hl                                                         ; $784d

.return:
; Process any animations
	call AnimateAllAnimatedSpriteSpecs                              ; $784e
	ret                                                             ; $7851

.mainSubstates:
	dw .subSubstate0
	dw .subSubstate1
	dw .subSubstate2

.subSubstate0:
;
	ld   hl, wPrologueMiscCounter                                   ; $7858: $21 $99 $cc
	ld   a, [hl]                                     ; $785b: $7e
	inc  [hl]                                        ; $785c: $34

;
	M_FarCall todo_ClearsAndLoadsGfxForConvoScreens
	or   a                                           ; $7871: $b7
	ret  nz                                          ; $7872: $c0

;
	M_FarCall Func_0a_4934

; Set 1st BG palette to white
	ld   hl, wBGPalettes                                            ; $7887
	ld   bc, $0004                                                  ; $788a
	ld   de, $7fff                                                  ; $788d
	call CopyEthenDintoHL_BCtimes                                   ; $7890
	
; Go to next sub-substate
	ld   hl, wPrologueMainSubSubstate                               ; $7893
	inc  [hl]                                                       ; $7896

; Clear misc counter for it
	xor  a                                                          ; $7897
	ld   [wPrologueMiscCounter], a                                  ; $7898
	ret                                                             ; $789b

.subSubstate1:
; Go to exist sub-substate if start or b/a pressed
	ld   a, [wInGameButtonsPressed]                                 ; $789c
	and  PADF_START|PADF_B|PADF_A                                   ; $789f
	or   a                                                          ; $78a1
	jr   nz, .toSubSubstate2                                        ; $78a2

; While running script engine, act as if A is being pressed/held (auto change textboxes)
	ld   a, PADF_A                                                  ; $78a4
	ld   [wInGameButtonsPressed], a                                 ; $78a6
	ld   [wInGameButtonsHeld], a                                    ; $78a9

; Run script engine, then return while the engine is running
	M_FarCall HandleScriptEngine
	ld   a, [wScriptEngineIsRunning]                                ; $78c0
	or   a                                                          ; $78c3
	ret  nz                                                         ; $78c4

.toSubSubstate2:
; Go to next sub-substate, and clear misc counter fo rit
	ld   hl, wPrologueMainSubSubstate                               ; $78c5
	inc  [hl]                                                       ; $78c8
	
	xor  a                                                          ; $78c9
	ld   [wPrologueMiscCounter], a                                  ; $78ca
	ret                                                             ; $78cd

.subSubstate2:
; Jump if below init already one
	ld   a, [wPrologueMiscCounter]                                  ; $78ce
	or   a                                                          ; $78d1
	jr   nz, .afterSubSubstate2Init                                 ; $78d2

; Fade current BG color vals to white at 1/8th speed
	xor  a                                                          ; $78d4
	ld   [wStartingColorIdxToLoadCompDataFor], a                    ; $78d5
	ld   a, NUM_PALETTE_BYTES                                       ; $78d8
	ld   [wNumPaletteColorsToLoadCompDataFor], a                    ; $78da
	ld   a, $03                                                     ; $78dd
	ld   b, $00                                                     ; $78df
	ld   hl, wBGPalettes                                            ; $78e1
	ld   c, BANK(Palettes_AllWhite)                                 ; $78e4
	ld   de, Palettes_AllWhite                                      ; $78e6
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                ; $78e9

.afterSubSubstate2Init:
; As counter goes up, have volume go down every 8 frames
	ld   hl, wPrologueMiscCounter                                   ; $78ec
	ld   a, [hl]                                                    ; $78ef
	cpl                                                             ; $78f0
	srl  a                                                          ; $78f1
	srl  a                                                          ; $78f3
	srl  a                                                          ; $78f5
	and  $07                                                        ; $78f7
	call SafeSetAudVolForMultipleChannels                           ; $78f9

; Exit after $3f frames passed
	ld   a, [hl]                                                    ; $78fc
	inc  [hl]                                                       ; $78fd
	cp   $3f                                                        ; $78fe
	jr   nc, .toExitState                                           ; $7900

; Else fade to white every 8 frames
	and  $07                                                        ; $7902
	ldbc $00, $40                                                   ; $7904
	call z, FadePalettesAndSetRangeToUpdate                         ; $7907
	ret                                                             ; $790a

.toExitState:
; Copy white pals to BG + OBJ
	ld   a, BANK(Palettes_AllWhite)                                 ; $790b
	ld   hl, Palettes_AllWhite                                      ; $790d
	ld   de, wBGPalettes                                            ; $7910
	ld   bc, NUM_PALETTE_BYTES * 2                                  ; $7913
	call FarMemCopy                                                 ; $7916

; Have just BG pals update
	ldbc $00, $3f                                                   ; $7919
	call SetBGandOBJPaletteRangesToUpdate                           ; $791c

; Mute song
	xor  a                                                          ; $791f
	call PlaySong                                                   ; $7920

; Set new game state and substate
	ld   a, [wPostPrologueScriptEngineGameState]                    ; $7923
	ld   [wGameState], a                                            ; $7926
	ld   a, [wPostPrologueScriptEngineGameSubstate]                 ; $7929
	ld   [wGameSubstate], a                                         ; $792c
	ret                                                             ; $792f


; A -
; BC - script idx
; H - game state after script engine done
; L - game substate after script engine done
SetPrologueScriptState::
;
	ld   [$cc9e], a                                  ; $7930: $ea $9e $cc

; Set script idx
	ld   a, b                                                       ; $7933
	ld   [wPrologueScriptIdx+1], a                                  ; $7934
	ld   a, c                                                       ; $7937
	ld   [wPrologueScriptIdx], a                                    ; $7938
	
; Set game state/substate to go to after the script is done
	ld   a, h                                                       ; $793b
	ld   [wPostPrologueScriptEngineGameState], a                    ; $793c
	ld   a, l                                                       ; $793f
	ld   [wPostPrologueScriptEngineGameSubstate], a                 ; $7940

; Start prologue state
	ld   a, GS_PROLOGUE                                             ; $7943
	ld   [wGameState], a                                            ; $7945
	xor  a                                                          ; $7948
	ld   [wGameSubstate], a                                         ; $7949
	ret                                                             ; $794c


if def(VWF)
Data_0c_5ad5::
	dw Data_0c_5ad5entry00-Data_0c_5ad5
	dw Data_0c_5ad5entry01-Data_0c_5ad5
	dw Data_0c_5ad5entry02-Data_0c_5ad5
	dw Data_0c_5ad5entry03-Data_0c_5ad5
	dw Data_0c_5ad5entry04-Data_0c_5ad5
	dw Data_0c_5ad5entry05-Data_0c_5ad5
	dw Data_0c_5ad5entry06-Data_0c_5ad5
	dw Data_0c_5ad5entry07-Data_0c_5ad5
	dw Data_0c_5ad5entry08-Data_0c_5ad5
	dw Data_0c_5ad5entry09-Data_0c_5ad5

Data_0c_5ad5entry00:
	db $1f, $42, $48, $39, $46, $10, $4d, $43, $49, $46, $10, $47, $37, $3c, $39, $38, $49, $40, $39, $00
Data_0c_5ad5entry01:
	db $2c, $39, $37, $39, $3d, $4a, $39, $10, $48, $46, $35, $3d, $42, $3d, $42, $3b, $10, $3a, $46, $43, $41, $10, $2d, $35, $3f, $49, $46, $35, $00
Data_0c_5ad5entry02:
	db $2c, $39, $37, $39, $3d, $4a, $39, $10, $48, $46, $35, $3d, $42, $3d, $42, $3b, $10, $3a, $46, $43, $41, $10, $2d, $49, $41, $3d, $46, $39, $00
Data_0c_5ad5entry03:
	db $2c, $39, $37, $39, $3d, $4a, $39, $10, $48, $46, $35, $3d, $42, $3d, $42, $3b, $10, $3a, $46, $43, $41, $10, $27, $35, $46, $3d, $35, $00
Data_0c_5ad5entry04:
	db $2c, $39, $37, $39, $3d, $4a, $39, $10, $48, $46, $35, $3d, $42, $3d, $42, $3b, $10, $3a, $46, $43, $41, $10, $23, $46, $3d, $47, $00
Data_0c_5ad5entry05:
	db $2c, $39, $37, $39, $3d, $4a, $39, $10, $48, $46, $35, $3d, $42, $3d, $42, $3b, $10, $3a, $46, $43, $41, $10, $25, $43, $3c, $46, $35, $42, $00
Data_0c_5ad5entry06:
	db $2c, $39, $37, $39, $3d, $4a, $39, $10, $48, $46, $35, $3d, $42, $3d, $42, $3b, $10, $3a, $46, $43, $41, $10, $25, $35, $42, $42, $35, $00
Data_0c_5ad5entry07:
	db $2c, $39, $47, $48, $10, $35, $42, $38, $10, $46, $39, $37, $43, $4a, $39, $46, $10, $47, $48, $35, $41, $3d, $42, $35, $00
Data_0c_5ad5entry08:
	db $2f, $42, $35, $36, $40, $39, $10, $48, $43, $10, $47, $39, $40, $39, $37, $48, $00
Data_0c_5ad5entry09:
	db $2d, $37, $3c, $39, $38, $49, $40, $39, $10, $37, $43, $42, $3a, $3d, $46, $41, $39, $38, $00
endc