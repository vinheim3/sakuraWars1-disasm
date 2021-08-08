; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $020", ROMX[$4000], BANK[$20]

GameState26::
	ld   a, [wGameSubstate]                                  ; $4000: $fa $a1 $c2
	rst  JumpTable                                         ; $4003: $df
	ld   b, l                                        ; $4004: $45
	ld   b, b                                        ; $4005: $40
	rst  $20                                         ; $4006: $e7
	ld   b, b                                        ; $4007: $40
	di                                               ; $4008: $f3
	ld   b, b                                        ; $4009: $40
	or   d                                           ; $400a: $b2
	ld   b, c                                        ; $400b: $41
	inc  d                                           ; $400c: $14
	ld   b, h                                        ; $400d: $44
	ld   [$0f41], sp                                 ; $400e: $08 $41 $0f
	ld   d, e                                        ; $4011: $53
	inc  d                                           ; $4012: $14
	ld   d, e                                        ; $4013: $53
	inc  h                                           ; $4014: $24
	ld   d, e                                        ; $4015: $53
	db   $e4                                         ; $4016: $e4
	ld   d, a                                        ; $4017: $57
	ld   [$ca61], a                                  ; $4018: $ea $61 $ca
	ld   a, c                                        ; $401b: $79
	ld   [$ca71], a                                  ; $401c: $ea $71 $ca
	ld   a, h                                        ; $401f: $7c
	ld   [$ca4e], a                                  ; $4020: $ea $4e $ca
	ld   a, l                                        ; $4023: $7d
	ld   [$ca4f], a                                  ; $4024: $ea $4f $ca
	ld   a, $26                                      ; $4027: $3e $26
	ld   [wGameState], a                                  ; $4029: $ea $a0 $c2
	ld   a, $03                                      ; $402c: $3e $03
	ld   [wGameSubstate], a                                  ; $402e: $ea $a1 $c2
	ret                                              ; $4031: $c9


	ld   a, h                                        ; $4032: $7c
	ld   [$ca4e], a                                  ; $4033: $ea $4e $ca
	ld   a, l                                        ; $4036: $7d
	ld   [$ca4f], a                                  ; $4037: $ea $4f $ca
	ld   a, $26                                      ; $403a: $3e $26
	ld   [wGameState], a                                  ; $403c: $ea $a0 $c2
	ld   a, $00                                      ; $403f: $3e $00
	ld   [wGameSubstate], a                                  ; $4041: $ea $a1 $c2
	ret                                              ; $4044: $c9


	ld   a, $ff                                      ; $4045: $3e $ff
	ld   [wInGameInputsEnabled], a                                  ; $4047: $ea $0e $c2
	call ClearOam                                       ; $404a: $cd $d7 $0d
	ld   a, [wLCDC]                                  ; $404d: $fa $03 $c2
	and  $c0                                         ; $4050: $e6 $c0
	or   $47                                         ; $4052: $f6 $47
	ld   [wLCDC], a                                  ; $4054: $ea $03 $c2
	ld   a, [wWramBank]                                  ; $4057: $fa $93 $c2
	push af                                          ; $405a: $f5
	ld   a, $07                                      ; $405b: $3e $07
	ld   [wWramBank], a                                  ; $405d: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4060: $e0 $70
	ld   a, $2f                                      ; $4062: $3e $2f
	ld   hl, $d000                                   ; $4064: $21 $00 $d0
	ld   de, $6309                                   ; $4067: $11 $09 $63
	call RLEXorCopy                                       ; $406a: $cd $d2 $09
	ld   c, $81                                      ; $406d: $0e $81
	ld   de, $9800                                   ; $406f: $11 $00 $98
	ld   a, $07                                      ; $4072: $3e $07
	ld   hl, $d000                                   ; $4074: $21 $00 $d0
	ld   b, $24                                      ; $4077: $06 $24
	call EnqueueHDMATransfer                                       ; $4079: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $407c: $cf
	ld   a, $2f                                      ; $407d: $3e $2f
	ld   hl, $d000                                   ; $407f: $21 $00 $d0
	ld   de, $5a66                                   ; $4082: $11 $66 $5a
	call RLEXorCopy                                       ; $4085: $cd $d2 $09
	ld   c, $80                                      ; $4088: $0e $80
	ld   de, $9800                                   ; $408a: $11 $00 $98
	ld   a, $07                                      ; $408d: $3e $07
	ld   hl, $d000                                   ; $408f: $21 $00 $d0
	ld   b, $24                                      ; $4092: $06 $24
	call EnqueueHDMATransfer                                       ; $4094: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4097: $cf
	ld   a, $2d                                      ; $4098: $3e $2d
	ld   hl, $d000                                   ; $409a: $21 $00 $d0
	ld   de, $4000                                   ; $409d: $11 $00 $40
	call RLEXorCopy                                       ; $40a0: $cd $d2 $09
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $40a3: $cf
	ld   c, $80                                      ; $40a4: $0e $80
	ld   de, $8800                                   ; $40a6: $11 $00 $88
	ld   a, $07                                      ; $40a9: $3e $07
	ld   hl, $d000                                   ; $40ab: $21 $00 $d0
	ld   b, $40                                      ; $40ae: $06 $40
	call EnqueueHDMATransfer                                       ; $40b0: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $40b3: $cf
	ld   c, $80                                      ; $40b4: $0e $80
	ld   de, $8c00                                   ; $40b6: $11 $00 $8c
	ld   a, $07                                      ; $40b9: $3e $07
	ld   hl, $d400                                   ; $40bb: $21 $00 $d4
	ld   b, $60                                      ; $40be: $06 $60
	call EnqueueHDMATransfer                                       ; $40c0: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $40c3: $cf
	ld   c, $80                                      ; $40c4: $0e $80
	ld   de, $9200                                   ; $40c6: $11 $00 $92
	ld   a, $07                                      ; $40c9: $3e $07
	ld   hl, $da00                                   ; $40cb: $21 $00 $da
	ld   b, $60                                      ; $40ce: $06 $60
	call EnqueueHDMATransfer                                       ; $40d0: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $40d3: $cf
	pop  af                                          ; $40d4: $f1
	ld   [wWramBank], a                                  ; $40d5: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $40d8: $e0 $70
	ld   c, $2c                                      ; $40da: $0e $2c
	ld   de, $7f72                                   ; $40dc: $11 $72 $7f
	call Call_020_5762                               ; $40df: $cd $62 $57
	ld   hl, wGameSubstate                                   ; $40e2: $21 $a1 $c2
	inc  [hl]                                        ; $40e5: $34
	ret                                              ; $40e6: $c9


	ld   a, [wInGameButtonsPressed]                                  ; $40e7: $fa $10 $c2
	and  $03                                         ; $40ea: $e6 $03
	jr   z, jr_020_40f2                              ; $40ec: $28 $04

	ld   hl, wGameSubstate                                   ; $40ee: $21 $a1 $c2
	inc  [hl]                                        ; $40f1: $34

jr_020_40f2:
	ret                                              ; $40f2: $c9


	ld   b, $2c                                      ; $40f3: $06 $2c
	ld   hl, $7f72                                   ; $40f5: $21 $72 $7f
	call Call_020_573a                               ; $40f8: $cd $3a $57
	ld   a, [$ca4e]                                  ; $40fb: $fa $4e $ca
	ld   [wGameState], a                                  ; $40fe: $ea $a0 $c2
	ld   a, [$ca4f]                                  ; $4101: $fa $4f $ca
	ld   [wGameSubstate], a                                  ; $4104: $ea $a1 $c2
	ret                                              ; $4107: $c9


	call Call_020_578a                               ; $4108: $cd $8a $57
	ld   a, [$cb1d]                                  ; $410b: $fa $1d $cb
	or   a                                           ; $410e: $b7
	jr   nz, jr_020_413a                             ; $410f: $20 $29

	ld   a, [$ca4e]                                  ; $4111: $fa $4e $ca
	ld   [wGameState], a                                  ; $4114: $ea $a0 $c2
	ld   a, [$ca4f]                                  ; $4117: $fa $4f $ca
	ld   [wGameSubstate], a                                  ; $411a: $ea $a1 $c2
	ld   a, [$ca61]                                  ; $411d: $fa $61 $ca
	cp   $01                                         ; $4120: $fe $01
	jr   z, jr_020_4139                              ; $4122: $28 $15

	ld   a, [$ca5e]                                  ; $4124: $fa $5e $ca
	ld   [wBattleWon], a                                  ; $4127: $ea $21 $cb
	call ClearDisplayRegsAllowVBlankInt                                       ; $412a: $cd $59 $0b
	ld   a, [$ca4e]                                  ; $412d: $fa $4e $ca
	ld   [wGameState], a                                  ; $4130: $ea $a0 $c2
	ld   a, [$ca4f]                                  ; $4133: $fa $4f $ca
	ld   [wGameSubstate], a                                  ; $4136: $ea $a1 $c2

jr_020_4139:
	ret                                              ; $4139: $c9


jr_020_413a:
	ld   a, [$ca72]                                  ; $413a: $fa $72 $ca
	and  $02                                         ; $413d: $e6 $02
	jr   nz, jr_020_4151                             ; $413f: $20 $10

	ld   de, $c986                                   ; $4141: $11 $86 $c9
	ld   a, $3b                                      ; $4144: $3e $3b
	ld   [de], a                                     ; $4146: $12
	inc  de                                          ; $4147: $13
	ld   a, $3b                                      ; $4148: $3e $3b
	ld   [de], a                                     ; $414a: $12
	inc  de                                          ; $414b: $13
	ld   a, $63                                      ; $414c: $3e $63
	ld   [de], a                                     ; $414e: $12
	jr   jr_020_4162                                 ; $414f: $18 $11

jr_020_4151:
	ld   de, $c986                                   ; $4151: $11 $86 $c9
	ld   a, [$cab0]                                  ; $4154: $fa $b0 $ca
	ld   [de], a                                     ; $4157: $12
	inc  de                                          ; $4158: $13
	ld   a, [$cab1]                                  ; $4159: $fa $b1 $ca
	ld   [de], a                                     ; $415c: $12
	inc  de                                          ; $415d: $13
	ld   a, [$cab2]                                  ; $415e: $fa $b2 $ca
	ld   [de], a                                     ; $4161: $12

jr_020_4162:
	ld   h, $26                                      ; $4162: $26 $26
	ld   l, $03                                      ; $4164: $2e $03
	ld   a, [$ca4e]                                  ; $4166: $fa $4e $ca
	ld   d, a                                        ; $4169: $57
	ld   a, [$ca4f]                                  ; $416a: $fa $4f $ca
	ld   e, a                                        ; $416d: $5f
	ld   b, $01                                      ; $416e: $06 $01
	ld   a, [$ca71]                                  ; $4170: $fa $71 $ca
	ld   c, a                                        ; $4173: $4f
	ld   a, [$ca5e]                                  ; $4174: $fa $5e $ca
	push af                                          ; $4177: $f5
	ld   a, $3c                                      ; $4178: $3e $3c
	ld   [wFarCallAddr], a                                  ; $417a: $ea $98 $c2
	ld   a, $55                                      ; $417d: $3e $55
	ld   [wFarCallAddr+1], a                                  ; $417f: $ea $99 $c2
	ld   a, $3e                                      ; $4182: $3e $3e
	ld   [wFarCallBank], a                                  ; $4184: $ea $9a $c2
	pop  af                                          ; $4187: $f1
	call FarCall                                       ; $4188: $cd $62 $09
	call ClearDisplayRegsAllowVBlankInt                                       ; $418b: $cd $59 $0b
	ret                                              ; $418e: $c9


	ld   c, $00                                      ; $418f: $0e $00
	ld   a, [de]                                     ; $4191: $1a
	cp   [hl]                                        ; $4192: $be
	jr   z, jr_020_4199                              ; $4193: $28 $04

	jr   nc, jr_020_41ad                             ; $4195: $30 $16

	jr   jr_020_41b0                                 ; $4197: $18 $17

jr_020_4199:
	inc  hl                                          ; $4199: $23
	inc  de                                          ; $419a: $13
	ld   a, [de]                                     ; $419b: $1a
	cp   [hl]                                        ; $419c: $be
	jr   z, jr_020_41a3                              ; $419d: $28 $04

	jr   nc, jr_020_41ad                             ; $419f: $30 $0c

	jr   jr_020_41b0                                 ; $41a1: $18 $0d

jr_020_41a3:
	inc  hl                                          ; $41a3: $23
	inc  de                                          ; $41a4: $13
	ld   a, [de]                                     ; $41a5: $1a
	cp   [hl]                                        ; $41a6: $be
	jr   z, jr_020_41b0                              ; $41a7: $28 $07

	jr   nc, jr_020_41ad                             ; $41a9: $30 $02

	jr   jr_020_41b0                                 ; $41ab: $18 $03

jr_020_41ad:
	ld   a, $01                                      ; $41ad: $3e $01
	ret                                              ; $41af: $c9


jr_020_41b0:
	xor  a                                           ; $41b0: $af
	ret                                              ; $41b1: $c9


	ld   a, $ff                                      ; $41b2: $3e $ff
	ld   [wInGameInputsEnabled], a                                  ; $41b4: $ea $0e $c2
	call TurnOffLCD                                       ; $41b7: $cd $e3 $08
	xor  a                                           ; $41ba: $af
	call PlaySound                                       ; $41bb: $cd $92 $1a
	call ClearDisplayRegsAllowVBlankInt                                       ; $41be: $cd $59 $0b
	call ClearOam                                       ; $41c1: $cd $d7 $0d
	ld   a, [wLCDC]                                  ; $41c4: $fa $03 $c2
	and  $e0                                         ; $41c7: $e6 $e0
	or   $67                                         ; $41c9: $f6 $67
	ld   [wLCDC], a                                  ; $41cb: $ea $03 $c2
	ld   a, $01                                      ; $41ce: $3e $01
	ldh  [rVBK], a                                   ; $41d0: $e0 $4f
	ld   a, [$ca71]                                  ; $41d2: $fa $71 $ca
	cp   $00                                         ; $41d5: $fe $00
	jr   nz, jr_020_41e9                             ; $41d7: $20 $10

	ld   a, $29                                      ; $41d9: $3e $29
	ld   de, $9800                                   ; $41db: $11 $00 $98
	ld   hl, $6000                                   ; $41de: $21 $00 $60
	ld   bc, $0400                                   ; $41e1: $01 $00 $04
	call FarMemCopy                                       ; $41e4: $cd $b2 $09
	jr   jr_020_41f7                                 ; $41e7: $18 $0e

jr_020_41e9:
	ld   a, $29                                      ; $41e9: $3e $29
	ld   de, $9800                                   ; $41eb: $11 $00 $98
	ld   hl, $5800                                   ; $41ee: $21 $00 $58
	ld   bc, $0400                                   ; $41f1: $01 $00 $04
	call FarMemCopy                                       ; $41f4: $cd $b2 $09

jr_020_41f7:
	ld   a, $29                                      ; $41f7: $3e $29
	ld   de, $9c00                                   ; $41f9: $11 $00 $9c
	ld   hl, $6800                                   ; $41fc: $21 $00 $68
	ld   bc, $0400                                   ; $41ff: $01 $00 $04
	call FarMemCopy                                       ; $4202: $cd $b2 $09
	ld   a, $25                                      ; $4205: $3e $25
	ld   de, $8000                                   ; $4207: $11 $00 $80
	ld   hl, $5800                                   ; $420a: $21 $00 $58
	ld   bc, $1800                                   ; $420d: $01 $00 $18
	call FarMemCopy                                       ; $4210: $cd $b2 $09
	xor  a                                           ; $4213: $af
	ldh  [rVBK], a                                   ; $4214: $e0 $4f
	ld   a, [$ca71]                                  ; $4216: $fa $71 $ca
	cp   $00                                         ; $4219: $fe $00
	jr   nz, jr_020_422d                             ; $421b: $20 $10

	ld   a, $29                                      ; $421d: $3e $29
	ld   de, $9800                                   ; $421f: $11 $00 $98
	ld   hl, $6400                                   ; $4222: $21 $00 $64
	ld   bc, $0400                                   ; $4225: $01 $00 $04
	call FarMemCopy                                       ; $4228: $cd $b2 $09
	jr   jr_020_423b                                 ; $422b: $18 $0e

jr_020_422d:
	ld   a, $29                                      ; $422d: $3e $29
	ld   de, $9800                                   ; $422f: $11 $00 $98
	ld   hl, $5c00                                   ; $4232: $21 $00 $5c
	ld   bc, $0400                                   ; $4235: $01 $00 $04
	call FarMemCopy                                       ; $4238: $cd $b2 $09

jr_020_423b:
	ld   a, $29                                      ; $423b: $3e $29
	ld   de, $9c00                                   ; $423d: $11 $00 $9c
	ld   hl, $6c00                                   ; $4240: $21 $00 $6c
	ld   bc, $0400                                   ; $4243: $01 $00 $04
	call FarMemCopy                                       ; $4246: $cd $b2 $09
	ld   a, $25                                      ; $4249: $3e $25
	ld   de, $8000                                   ; $424b: $11 $00 $80
	ld   hl, $4000                                   ; $424e: $21 $00 $40
	ld   bc, $1800                                   ; $4251: $01 $00 $18
	call FarMemCopy                                       ; $4254: $cd $b2 $09
	call Call_020_433c                               ; $4257: $cd $3c $43
	call Call_020_57b9                               ; $425a: $cd $b9 $57
	ld   a, $f4                                      ; $425d: $3e $f4
	ld   de, $9c31                                   ; $425f: $11 $31 $9c
	ld   [de], a                                     ; $4262: $12
	ld   a, $f5                                      ; $4263: $3e $f5
	ld   de, $9c32                                   ; $4265: $11 $32 $9c
	ld   [de], a                                     ; $4268: $12
	ld   a, $f6                                      ; $4269: $3e $f6
	ld   de, $9c51                                   ; $426b: $11 $51 $9c
	ld   [de], a                                     ; $426e: $12
	ld   a, $f7                                      ; $426f: $3e $f7
	ld   de, $9c52                                   ; $4271: $11 $52 $9c
	ld   [de], a                                     ; $4274: $12
	ld   bc, $0a02                                   ; $4275: $01 $02 $0a
	ld   a, [$caab]                                  ; $4278: $fa $ab $ca
	call Call_020_4de9                               ; $427b: $cd $e9 $4d
	push de                                          ; $427e: $d5
	xor  a                                           ; $427f: $af
	ldh  [rVBK], a                                   ; $4280: $e0 $4f
	ld   a, d                                        ; $4282: $7a
	ld   d, $e3                                      ; $4283: $16 $e3
	add  d                                           ; $4285: $82
	ld   de, $9c4a                                   ; $4286: $11 $4a $9c
	ld   [de], a                                     ; $4289: $12
	pop  de                                          ; $428a: $d1
	ld   bc, $0b02                                   ; $428b: $01 $02 $0b
	xor  a                                           ; $428e: $af
	ldh  [rVBK], a                                   ; $428f: $e0 $4f
	ld   a, e                                        ; $4291: $7b
	ld   d, $e4                                      ; $4292: $16 $e4
	add  d                                           ; $4294: $82
	ld   de, $9c4b                                   ; $4295: $11 $4b $9c
	ld   [de], a                                     ; $4298: $12
	ld   bc, $0d02                                   ; $4299: $01 $02 $0d
	ld   a, [$caac]                                  ; $429c: $fa $ac $ca
	call Call_020_4de9                               ; $429f: $cd $e9 $4d
	push de                                          ; $42a2: $d5
	xor  a                                           ; $42a3: $af
	ldh  [rVBK], a                                   ; $42a4: $e0 $4f
	ld   a, d                                        ; $42a6: $7a
	ld   d, $e3                                      ; $42a7: $16 $e3
	add  d                                           ; $42a9: $82
	ld   de, $9c4d                                   ; $42aa: $11 $4d $9c
	ld   [de], a                                     ; $42ad: $12
	pop  de                                          ; $42ae: $d1
	ld   bc, $0e02                                   ; $42af: $01 $02 $0e
	xor  a                                           ; $42b2: $af
	ldh  [rVBK], a                                   ; $42b3: $e0 $4f
	ld   a, e                                        ; $42b5: $7b
	ld   d, $e4                                      ; $42b6: $16 $e4
	add  d                                           ; $42b8: $82
	ld   de, $9c4e                                   ; $42b9: $11 $4e $9c
	ld   [de], a                                     ; $42bc: $12
	ld   a, $70                                      ; $42bd: $3e $70
	ld   [wWY], a                                  ; $42bf: $ea $0a $c2
	ld   a, $07                                      ; $42c2: $3e $07
	ld   [wWX], a                                  ; $42c4: $ea $09 $c2
	ld   a, [$ca71]                                  ; $42c7: $fa $71 $ca
	cp   $00                                         ; $42ca: $fe $00
	jr   nz, jr_020_42e0                             ; $42cc: $20 $12

	ld   a, $35                                      ; $42ce: $3e $35
	ld   [wSCX], a                                  ; $42d0: $ea $07 $c2
	ld   [$ca6d], a                                  ; $42d3: $ea $6d $ca
	ld   a, $90                                      ; $42d6: $3e $90
	ld   [wSCY], a                                  ; $42d8: $ea $08 $c2
	ld   [$ca6e], a                                  ; $42db: $ea $6e $ca
	jr   jr_020_42f0                                 ; $42de: $18 $10

jr_020_42e0:
	ld   a, $48                                      ; $42e0: $3e $48
	ld   [wSCX], a                                  ; $42e2: $ea $07 $c2
	ld   [$ca6d], a                                  ; $42e5: $ea $6d $ca
	ld   a, $00                                      ; $42e8: $3e $00
	ld   [wSCY], a                                  ; $42ea: $ea $08 $c2
	ld   [$ca6e], a                                  ; $42ed: $ea $6e $ca

jr_020_42f0:
	xor  a                                           ; $42f0: $af
	ld   [$ca47], a                                  ; $42f1: $ea $47 $ca
	ld   a, $08                                      ; $42f4: $3e $08
	ld   [$ca48], a                                  ; $42f6: $ea $48 $ca
	ld   a, [wWramBank]                                  ; $42f9: $fa $93 $c2
	push af                                          ; $42fc: $f5
	ld   a, $07                                      ; $42fd: $3e $07
	ld   [wWramBank], a                                  ; $42ff: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4302: $e0 $70
	ld   de, $d540                                   ; $4304: $11 $40 $d5
	ld   a, $29                                      ; $4307: $3e $29
	ld   hl, $6c00                                   ; $4309: $21 $00 $6c
	ld   bc, $0080                                   ; $430c: $01 $80 $00
	call FarMemCopy                                       ; $430f: $cd $b2 $09
	pop  af                                          ; $4312: $f1
	ld   [wWramBank], a                                  ; $4313: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4316: $e0 $70
	call Call_020_4e5e                               ; $4318: $cd $5e $4e
	call Call_020_4eac                               ; $431b: $cd $ac $4e
	call Call_020_4e19                               ; $431e: $cd $19 $4e
	ld   a, $0e                                      ; $4321: $3e $0e
	call PlaySound                                       ; $4323: $cd $92 $1a
	ld   a, $07                                      ; $4326: $3e $07
	call SafeSetAudVolForMultipleChannels                                       ; $4328: $cd $e0 $1c
	call TurnOnLCD                                       ; $432b: $cd $09 $09
	ld   c, $2a                                      ; $432e: $0e $2a
	ld   de, $6000                                   ; $4330: $11 $00 $60
	call Call_020_5762                               ; $4333: $cd $62 $57
	ld   a, $06                                      ; $4336: $3e $06
	ld   [wGameSubstate], a                                  ; $4338: $ea $a1 $c2
	ret                                              ; $433b: $c9


Call_020_433c:
	xor  a                                           ; $433c: $af
	ld   [$ca72], a                                  ; $433d: $ea $72 $ca
	ld   [$ca75], a                                  ; $4340: $ea $75 $ca
	ld   [$ca76], a                                  ; $4343: $ea $76 $ca
	ld   [$ca78], a                                  ; $4346: $ea $78 $ca
	ld   [$ca77], a                                  ; $4349: $ea $77 $ca
	ld   [$ca79], a                                  ; $434c: $ea $79 $ca
	ld   [$ca7b], a                                  ; $434f: $ea $7b $ca
	ld   [$ca7c], a                                  ; $4352: $ea $7c $ca
	ld   [$ca7a], a                                  ; $4355: $ea $7a $ca
	ld   [$ca7d], a                                  ; $4358: $ea $7d $ca
	ld   [$ca7e], a                                  ; $435b: $ea $7e $ca
	ld   [$ca5e], a                                  ; $435e: $ea $5e $ca
	ld   [$ca7f], a                                  ; $4361: $ea $7f $ca
	ld   [$ca80], a                                  ; $4364: $ea $80 $ca
	ld   [$ca83], a                                  ; $4367: $ea $83 $ca
	ld   [$ca84], a                                  ; $436a: $ea $84 $ca
	ld   [$ca87], a                                  ; $436d: $ea $87 $ca
	ld   [$ca88], a                                  ; $4370: $ea $88 $ca
	ld   [$ca89], a                                  ; $4373: $ea $89 $ca
	ld   [$ca92], a                                  ; $4376: $ea $92 $ca
	ld   [$ca8a], a                                  ; $4379: $ea $8a $ca
	ld   [$ca90], a                                  ; $437c: $ea $90 $ca
	ld   [$ca91], a                                  ; $437f: $ea $91 $ca
	ld   [$ca85], a                                  ; $4382: $ea $85 $ca
	ld   [$ca86], a                                  ; $4385: $ea $86 $ca
	ld   [$ca93], a                                  ; $4388: $ea $93 $ca
	ld   c, $36                                      ; $438b: $0e $36
	sla  c                                           ; $438d: $cb $21
	ld   hl, $ca97                                   ; $438f: $21 $97 $ca

jr_020_4392:
	xor  a                                           ; $4392: $af
	ld   [hl+], a                                    ; $4393: $22
	dec  c                                           ; $4394: $0d
	ld   a, c                                        ; $4395: $79
	cp   $00                                         ; $4396: $fe $00
	jr   nz, jr_020_4392                             ; $4398: $20 $f8

	xor  a                                           ; $439a: $af
	ld   [$ca82], a                                  ; $439b: $ea $82 $ca
	ld   a, $00                                      ; $439e: $3e $00
	ld   [$cacc], a                                  ; $43a0: $ea $cc $ca
	ld   a, $00                                      ; $43a3: $3e $00
	ld   [$cab1], a                                  ; $43a5: $ea $b1 $ca
	xor  a                                           ; $43a8: $af
	ld   [$cab2], a                                  ; $43a9: $ea $b2 $ca

Call_020_43ac:
	ld   hl, $ca72                                   ; $43ac: $21 $72 $ca
	ld   a, [$cacc]                                  ; $43af: $fa $cc $ca
	ld   [$ca42], a                                  ; $43b2: $ea $42 $ca
	call Call_020_46a9                               ; $43b5: $cd $a9 $46
	ld   a, $0c                                      ; $43b8: $3e $0c
	ld   [$ca9b], a                                  ; $43ba: $ea $9b $ca
	call Call_020_47f1                               ; $43bd: $cd $f1 $47
	call Call_020_50c4                               ; $43c0: $cd $c4 $50
	call Call_020_47db                               ; $43c3: $cd $db $47
	call Call_020_46c7                               ; $43c6: $cd $c7 $46
	ld   a, $0c                                      ; $43c9: $3e $0c
	ld   [$ca9b], a                                  ; $43cb: $ea $9b $ca
	call Call_020_47f1                               ; $43ce: $cd $f1 $47
	ld   a, [$ca42]                                  ; $43d1: $fa $42 $ca
	ld   [$cacc], a                                  ; $43d4: $ea $cc $ca
	call Call_020_50bf                               ; $43d7: $cd $bf $50
	call Call_020_47db                               ; $43da: $cd $db $47
	ld   a, [$ca86]                                  ; $43dd: $fa $86 $ca
	inc  a                                           ; $43e0: $3c
	ld   [$ca86], a                                  ; $43e1: $ea $86 $ca
	cp   $0a                                         ; $43e4: $fe $0a
	jr   c, jr_020_43f8                              ; $43e6: $38 $10

	xor  a                                           ; $43e8: $af
	ld   [$ca86], a                                  ; $43e9: $ea $86 $ca
	ld   a, [$ca85]                                  ; $43ec: $fa $85 $ca
	inc  a                                           ; $43ef: $3c
	cp   $04                                         ; $43f0: $fe $04
	jr   c, jr_020_43f5                              ; $43f2: $38 $01

	xor  a                                           ; $43f4: $af

jr_020_43f5:
	ld   [$ca85], a                                  ; $43f5: $ea $85 $ca

jr_020_43f8:
	ld   a, $03                                      ; $43f8: $3e $03
	ld   [wSpriteGroup], a                                  ; $43fa: $ea $1a $c2
	ld   a, [$caa1]                                  ; $43fd: $fa $a1 $ca
	add  $08                                         ; $4400: $c6 $08
	ld   b, a                                        ; $4402: $47
	ld   a, [$caa3]                                  ; $4403: $fa $a3 $ca
	sub  $10                                         ; $4406: $d6 $10
	ld   c, a                                        ; $4408: $4f
	ld   a, [$ca85]                                  ; $4409: $fa $85 $ca
	ld   d, a                                        ; $440c: $57
	ld   a, $7b                                      ; $440d: $3e $7b
	add  d                                           ; $440f: $82
	call LoadSpriteFromMainTable                                       ; $4410: $cd $16 $0e
	ret                                              ; $4413: $c9


	call ClearOam                                       ; $4414: $cd $d7 $0d
	call Call_020_56d1                               ; $4417: $cd $d1 $56
	call Call_020_4f83                               ; $441a: $cd $83 $4f
	ld   hl, $ca82                                   ; $441d: $21 $82 $ca
	ld   a, [hl]                                     ; $4420: $7e
	cp   $00                                         ; $4421: $fe $00
	jr   z, jr_020_4428                              ; $4423: $28 $03

	dec  [hl]                                        ; $4425: $35
	jr   jr_020_4433                                 ; $4426: $18 $0b

jr_020_4428:
	ld   a, [$ca84]                                  ; $4428: $fa $84 $ca
	and  a                                           ; $442b: $a7
	jr   nz, jr_020_4433                             ; $442c: $20 $05

	ld   c, $00                                      ; $442e: $0e $00
	call Call_020_554f                               ; $4430: $cd $4f $55

jr_020_4433:
	ld   c, $80                                      ; $4433: $0e $80
	ld   de, $9c00                                   ; $4435: $11 $00 $9c
	ld   a, $07                                      ; $4438: $3e $07
	ld   hl, $d540                                   ; $443a: $21 $40 $d5
	ld   b, $08                                      ; $443d: $06 $08
	call EnqueueHDMATransfer                                       ; $443f: $cd $7c $02
	ld   a, [$ca84]                                  ; $4442: $fa $84 $ca
	cp   $02                                         ; $4445: $fe $02
	jr   z, jr_020_4457                              ; $4447: $28 $0e

	cp   $00                                         ; $4449: $fe $00
	jr   z, jr_020_445f                              ; $444b: $28 $12

	ld   c, $03                                      ; $444d: $0e $03
	call Call_020_554f                               ; $444f: $cd $4f $55
	call Call_020_55ab                               ; $4452: $cd $ab $55
	jr   jr_020_445f                                 ; $4455: $18 $08

jr_020_4457:
	ld   c, $01                                      ; $4457: $0e $01
	call Call_020_554f                               ; $4459: $cd $4f $55
	call Call_020_55bf                               ; $445c: $cd $bf $55

jr_020_445f:
	ld   a, [$ca79]                                  ; $445f: $fa $79 $ca
	cp   $ff                                         ; $4462: $fe $ff
	jr   nz, jr_020_4480                             ; $4464: $20 $1a

	ld   a, [$ca7c]                                  ; $4466: $fa $7c $ca
	inc  a                                           ; $4469: $3c
	ld   [$ca7c], a                                  ; $446a: $ea $7c $ca
	cp   $3c                                         ; $446d: $fe $3c
	jr   nz, jr_020_4480                             ; $446f: $20 $0f

	xor  a                                           ; $4471: $af
	ld   [$ca7c], a                                  ; $4472: $ea $7c $ca
	ld   a, [$ca7b]                                  ; $4475: $fa $7b $ca
	inc  a                                           ; $4478: $3c
	cp   $3c                                         ; $4479: $fe $3c
	jr   nc, jr_020_4480                             ; $447b: $30 $03

	ld   [$ca7b], a                                  ; $447d: $ea $7b $ca

jr_020_4480:
	ld   a, [$ca7a]                                  ; $4480: $fa $7a $ca
	cp   $ff                                         ; $4483: $fe $ff
	jr   nz, jr_020_44a1                             ; $4485: $20 $1a

	ld   a, [$ca7e]                                  ; $4487: $fa $7e $ca
	inc  a                                           ; $448a: $3c
	ld   [$ca7e], a                                  ; $448b: $ea $7e $ca
	cp   $3c                                         ; $448e: $fe $3c
	jr   nz, jr_020_44a1                             ; $4490: $20 $0f

	xor  a                                           ; $4492: $af
	ld   [$ca7e], a                                  ; $4493: $ea $7e $ca
	ld   a, [$ca7d]                                  ; $4496: $fa $7d $ca
	inc  a                                           ; $4499: $3c
	cp   $3c                                         ; $449a: $fe $3c
	jr   nc, jr_020_44a1                             ; $449c: $30 $03

	ld   [$ca7d], a                                  ; $449e: $ea $7d $ca

jr_020_44a1:
	ld   a, [wInGameButtonsHeld]                                  ; $44a1: $fa $0f $c2
	ld   [$ca74], a                                  ; $44a4: $ea $74 $ca
	ld   a, [$caa3]                                  ; $44a7: $fa $a3 $ca
	ld   hl, $ca6d                                   ; $44aa: $21 $6d $ca
	add  [hl]                                        ; $44ad: $86
	ld   d, a                                        ; $44ae: $57
	ld   a, [$cad9]                                  ; $44af: $fa $d9 $ca
	ld   hl, $ca6d                                   ; $44b2: $21 $6d $ca
	add  [hl]                                        ; $44b5: $86
	cp   d                                           ; $44b6: $ba
	jr   nc, jr_020_44c1                             ; $44b7: $30 $08

	call Call_020_45f6                               ; $44b9: $cd $f6 $45
	call Call_020_4650                               ; $44bc: $cd $50 $46
	jr   jr_020_44c7                                 ; $44bf: $18 $06

jr_020_44c1:
	call Call_020_4650                               ; $44c1: $cd $50 $46
	call Call_020_45f6                               ; $44c4: $cd $f6 $45

jr_020_44c7:
	ld   a, [$ca89]                                  ; $44c7: $fa $89 $ca
	cp   $f0                                         ; $44ca: $fe $f0
	jr   nz, jr_020_4518                             ; $44cc: $20 $4a

	ld   hl, wBGPalettes                                   ; $44ce: $21 $de $c2
	ld   b, $00                                      ; $44d1: $06 $00
	ld   a, [$ca87]                                  ; $44d3: $fa $87 $ca
	or   a                                           ; $44d6: $b7
	jr   nz, jr_020_44f1                             ; $44d7: $20 $18

	ld   a, $10                                      ; $44d9: $3e $10
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $44db: $ea $62 $c3
	ld   a, $14                                      ; $44de: $3e $14
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $44e0: $ea $63 $c3
	ld   a, $03                                      ; $44e3: $3e $03
	ld   c, $01                                      ; $44e5: $0e $01
	ld   de, $7080                                   ; $44e7: $11 $80 $70
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $44ea: $cd $48 $07
	xor  a                                           ; $44ed: $af
	ld   [$ca87], a                                  ; $44ee: $ea $87 $ca

jr_020_44f1:
	ld   a, [$ca87]                                  ; $44f1: $fa $87 $ca
	inc  a                                           ; $44f4: $3c
	ld   [$ca87], a                                  ; $44f5: $ea $87 $ca
	cp   $04                                         ; $44f8: $fe $04
	jr   c, jr_020_4518                              ; $44fa: $38 $1c

	xor  a                                           ; $44fc: $af
	ld   [$ca87], a                                  ; $44fd: $ea $87 $ca
	ld   hl, $ca88                                   ; $4500: $21 $88 $ca
	ld   a, [hl]                                     ; $4503: $7e
	inc  [hl]                                        ; $4504: $34
	cp   $03                                         ; $4505: $fe $03
	jr   nc, jr_020_4513                             ; $4507: $30 $0a

	dec  a                                           ; $4509: $3d
	ld   b, $10                                      ; $450a: $06 $10
	ld   c, $14                                      ; $450c: $0e $14
	call FadePalettesAndSetRangeToUpdate                                       ; $450e: $cd $32 $08
	jr   jr_020_4518                                 ; $4511: $18 $05

jr_020_4513:
	ld   a, $ff                                      ; $4513: $3e $ff
	ld   [$ca89], a                                  ; $4515: $ea $89 $ca

jr_020_4518:
	ld   a, [$ca7f]                                  ; $4518: $fa $7f $ca
	and  a                                           ; $451b: $a7
	jp   z, Jump_020_45a4                            ; $451c: $ca $a4 $45

	ld   a, [$ca7f]                                  ; $451f: $fa $7f $ca
	inc  a                                           ; $4522: $3c
	cp   $3c                                         ; $4523: $fe $3c
	jr   nz, jr_020_452d                             ; $4525: $20 $06

	ld   a, $01                                      ; $4527: $3e $01
	ld   hl, $ca80                                   ; $4529: $21 $80 $ca
	dec  [hl]                                        ; $452c: $35

jr_020_452d:
	ld   [$ca7f], a                                  ; $452d: $ea $7f $ca
	ld   a, [$ca80]                                  ; $4530: $fa $80 $ca
	cp   $00                                         ; $4533: $fe $00
	ret  nz                                          ; $4535: $c0

	ld   a, [$cb1d]                                  ; $4536: $fa $1d $cb
	or   a                                           ; $4539: $b7
	jr   z, jr_020_456f                              ; $453a: $28 $33

	ld   a, [$ca5e]                                  ; $453c: $fa $5e $ca
	cp   $03                                         ; $453f: $fe $03
	jr   nz, jr_020_4556                             ; $4541: $20 $13

	ld   a, [$ca7d]                                  ; $4543: $fa $7d $ca
	cp   $03                                         ; $4546: $fe $03
	jr   c, jr_020_4554                              ; $4548: $38 $0a

	ld   a, $04                                      ; $454a: $3e $04
	ld   [$ca5e], a                                  ; $454c: $ea $5e $ca
	ld   a, $38                                      ; $454f: $3e $38
	call $1b64                                       ; $4551: $cd $64 $1b

jr_020_4554:
	jr   jr_020_458f                                 ; $4554: $18 $39

jr_020_4556:
	ld   a, [$ca7b]                                  ; $4556: $fa $7b $ca
	cp   $03                                         ; $4559: $fe $03
	jr   c, jr_020_456d                              ; $455b: $38 $10

	cp   $05                                         ; $455d: $fe $05
	jr   c, jr_020_4568                              ; $455f: $38 $07

	ld   a, $00                                      ; $4561: $3e $00
	ld   [$ca5e], a                                  ; $4563: $ea $5e $ca
	jr   jr_020_456d                                 ; $4566: $18 $05

jr_020_4568:
	ld   a, $01                                      ; $4568: $3e $01
	ld   [$ca5e], a                                  ; $456a: $ea $5e $ca

jr_020_456d:
	jr   jr_020_458f                                 ; $456d: $18 $20

jr_020_456f:
	ld   a, [$ca72]                                  ; $456f: $fa $72 $ca
	and  $06                                         ; $4572: $e6 $06
	and  a                                           ; $4574: $a7
	jr   z, jr_020_45d4                              ; $4575: $28 $5d

	ld   a, [$ca84]                                  ; $4577: $fa $84 $ca
	cp   $01                                         ; $457a: $fe $01
	jr   nz, jr_020_4583                             ; $457c: $20 $05

	ld   a, $38                                      ; $457e: $3e $38
	call $1b64                                       ; $4580: $cd $64 $1b

jr_020_4583:
	ld   a, [$ca7b]                                  ; $4583: $fa $7b $ca
	cp   $06                                         ; $4586: $fe $06
	jr   c, jr_020_458f                              ; $4588: $38 $05

	ld   a, $00                                      ; $458a: $3e $00
	ld   [$ca5e], a                                  ; $458c: $ea $5e $ca

jr_020_458f:
	ld   hl, wBGPalettes                                   ; $458f: $21 $de $c2
	ld   b, $00                                      ; $4592: $06 $00
	call Call_020_5709                               ; $4594: $cd $09 $57
	xor  a                                           ; $4597: $af
	ld   [wSCX], a                                  ; $4598: $ea $07 $c2
	ld   [wSCY], a                                  ; $459b: $ea $08 $c2
	ld   a, $05                                      ; $459e: $3e $05
	ld   [wGameSubstate], a                                  ; $45a0: $ea $a1 $c2
	ret                                              ; $45a3: $c9


Jump_020_45a4:
	ld   a, [$cb1d]                                  ; $45a4: $fa $1d $cb
	or   a                                           ; $45a7: $b7
	jr   nz, jr_020_45b9                             ; $45a8: $20 $0f

	ld   a, [$ca72]                                  ; $45aa: $fa $72 $ca
	bit  2, a                                        ; $45ad: $cb $57
	jr   nz, jr_020_45cf                             ; $45af: $20 $1e

	ld   a, [$ca72]                                  ; $45b1: $fa $72 $ca
	bit  1, a                                        ; $45b4: $cb $4f
	jr   nz, jr_020_45c8                             ; $45b6: $20 $10

	ret                                              ; $45b8: $c9


jr_020_45b9:
	ld   a, [$ca72]                                  ; $45b9: $fa $72 $ca
	bit  2, a                                        ; $45bc: $cb $57
	jr   nz, jr_020_45e6                             ; $45be: $20 $26

	ld   a, [$ca72]                                  ; $45c0: $fa $72 $ca
	bit  1, a                                        ; $45c3: $cb $4f
	jr   nz, jr_020_45df                             ; $45c5: $20 $18

	ret                                              ; $45c7: $c9


jr_020_45c8:
	ld   a, $02                                      ; $45c8: $3e $02
	ld   [$ca5e], a                                  ; $45ca: $ea $5e $ca
	jr   jr_020_45d4                                 ; $45cd: $18 $05

jr_020_45cf:
	ld   a, $01                                      ; $45cf: $3e $01
	ld   [$ca5e], a                                  ; $45d1: $ea $5e $ca

jr_020_45d4:
	ld   a, $01                                      ; $45d4: $3e $01
	ld   [$ca7f], a                                  ; $45d6: $ea $7f $ca
	ld   a, $07                                      ; $45d9: $3e $07
	ld   [$ca80], a                                  ; $45db: $ea $80 $ca
	ret                                              ; $45de: $c9


jr_020_45df:
	ld   a, $03                                      ; $45df: $3e $03
	ld   [$ca5e], a                                  ; $45e1: $ea $5e $ca
	jr   jr_020_45eb                                 ; $45e4: $18 $05

jr_020_45e6:
	ld   a, $02                                      ; $45e6: $3e $02
	ld   [$ca5e], a                                  ; $45e8: $ea $5e $ca

jr_020_45eb:
	ld   a, $01                                      ; $45eb: $3e $01
	ld   [$ca7f], a                                  ; $45ed: $ea $7f $ca
	ld   a, $06                                      ; $45f0: $3e $06
	ld   [$ca80], a                                  ; $45f2: $ea $80 $ca
	ret                                              ; $45f5: $c9


Call_020_45f6:
	ld   a, $00                                      ; $45f6: $3e $00
	ld   [$ca70], a                                  ; $45f8: $ea $70 $ca
	call Call_020_483c                               ; $45fb: $cd $3c $48
	call Call_020_50c4                               ; $45fe: $cd $c4 $50
	call Call_020_525a                               ; $4601: $cd $5a $52
	ld   a, [$cacc]                                  ; $4604: $fa $cc $ca
	cp   $03                                         ; $4607: $fe $03
	jr   nz, jr_020_4642                             ; $4609: $20 $37

	ld   a, [$ca72]                                  ; $460b: $fa $72 $ca
	bit  1, a                                        ; $460e: $cb $4f
	jr   nz, jr_020_4615                             ; $4610: $20 $03

	call Call_020_55d3                               ; $4612: $cd $d3 $55

jr_020_4615:
	xor  a                                           ; $4615: $af
	ld   [$ca79], a                                  ; $4616: $ea $79 $ca
	ld   hl, $ca72                                   ; $4619: $21 $72 $ca
	set  1, [hl]                                     ; $461c: $cb $ce
	ld   a, [$ca7a]                                  ; $461e: $fa $7a $ca
	cp   $ff                                         ; $4621: $fe $ff
	jr   z, jr_020_4642                              ; $4623: $28 $1d

	ld   a, [$ca79]                                  ; $4625: $fa $79 $ca
	cp   $ff                                         ; $4628: $fe $ff
	jr   z, jr_020_4642                              ; $462a: $28 $16

	ld   a, $ff                                      ; $462c: $3e $ff
	ld   [$ca7a], a                                  ; $462e: $ea $7a $ca
	ld   a, [$ca72]                                  ; $4631: $fa $72 $ca
	bit  2, a                                        ; $4634: $cb $57
	jr   nz, jr_020_4643                             ; $4636: $20 $0b

	ld   a, $01                                      ; $4638: $3e $01
	ld   [$ca84], a                                  ; $463a: $ea $84 $ca
	ld   a, $f0                                      ; $463d: $3e $f0
	ld   [$ca89], a                                  ; $463f: $ea $89 $ca

jr_020_4642:
	ret                                              ; $4642: $c9


jr_020_4643:
	ld   a, [$ca80]                                  ; $4643: $fa $80 $ca
	cp   $02                                         ; $4646: $fe $02
	jr   c, jr_020_464f                              ; $4648: $38 $05

	ld   a, $02                                      ; $464a: $3e $02
	ld   [$ca80], a                                  ; $464c: $ea $80 $ca

jr_020_464f:
	ret                                              ; $464f: $c9


Call_020_4650:
	ld   a, $ff                                      ; $4650: $3e $ff
	ld   [$ca70], a                                  ; $4652: $ea $70 $ca
	call Call_020_47db                               ; $4655: $cd $db $47
	call Call_020_46e5                               ; $4658: $cd $e5 $46
	call Call_020_50bf                               ; $465b: $cd $bf $50
	call Call_020_525a                               ; $465e: $cd $5a $52
	ld   a, [$cacc]                                  ; $4661: $fa $cc $ca
	cp   $03                                         ; $4664: $fe $03
	jr   nz, jr_020_4695                             ; $4666: $20 $2d

	xor  a                                           ; $4668: $af
	ld   [$ca7a], a                                  ; $4669: $ea $7a $ca
	ld   hl, $ca72                                   ; $466c: $21 $72 $ca
	set  2, [hl]                                     ; $466f: $cb $d6
	ld   a, [$ca79]                                  ; $4671: $fa $79 $ca
	cp   $ff                                         ; $4674: $fe $ff
	jr   z, jr_020_4695                              ; $4676: $28 $1d

	ld   a, [$ca7a]                                  ; $4678: $fa $7a $ca
	cp   $ff                                         ; $467b: $fe $ff
	jr   z, jr_020_4695                              ; $467d: $28 $16

	ld   a, $ff                                      ; $467f: $3e $ff
	ld   [$ca79], a                                  ; $4681: $ea $79 $ca
	ld   a, [$ca72]                                  ; $4684: $fa $72 $ca
	bit  1, a                                        ; $4687: $cb $4f
	jr   nz, jr_020_4699                             ; $4689: $20 $0e

	ld   a, $02                                      ; $468b: $3e $02
	ld   [$ca84], a                                  ; $468d: $ea $84 $ca
	ld   a, $f0                                      ; $4690: $3e $f0
	ld   [$ca89], a                                  ; $4692: $ea $89 $ca

jr_020_4695:
	call Call_020_47db                               ; $4695: $cd $db $47
	ret                                              ; $4698: $c9


jr_020_4699:
	ld   a, [$ca80]                                  ; $4699: $fa $80 $ca
	cp   $02                                         ; $469c: $fe $02
	jr   c, jr_020_46a5                              ; $469e: $38 $05

	ld   a, $02                                      ; $46a0: $3e $02
	ld   [$ca80], a                                  ; $46a2: $ea $80 $ca

jr_020_46a5:
	call Call_020_47db                               ; $46a5: $cd $db $47
	ret                                              ; $46a8: $c9


Call_020_46a9:
	ld   a, [$ca71]                                  ; $46a9: $fa $71 $ca
	cp   $00                                         ; $46ac: $fe $00
	jr   nz, jr_020_46bc                             ; $46ae: $20 $0c

	ld   a, $35                                      ; $46b0: $3e $35
	ld   [$caa1], a                                  ; $46b2: $ea $a1 $ca
	ld   a, $54                                      ; $46b5: $3e $54
	ld   [$caa3], a                                  ; $46b7: $ea $a3 $ca
	jr   jr_020_46c6                                 ; $46ba: $18 $0a

jr_020_46bc:
	ld   a, $39                                      ; $46bc: $3e $39
	ld   [$caa1], a                                  ; $46be: $ea $a1 $ca
	ld   a, $25                                      ; $46c1: $3e $25
	ld   [$caa3], a                                  ; $46c3: $ea $a3 $ca

jr_020_46c6:
	ret                                              ; $46c6: $c9


Call_020_46c7:
	ld   a, [$ca71]                                  ; $46c7: $fa $71 $ca
	cp   $00                                         ; $46ca: $fe $00
	jr   nz, jr_020_46da                             ; $46cc: $20 $0c

	ld   a, $35                                      ; $46ce: $3e $35
	ld   [$caa1], a                                  ; $46d0: $ea $a1 $ca
	ld   a, $39                                      ; $46d3: $3e $39
	ld   [$caa3], a                                  ; $46d5: $ea $a3 $ca
	jr   jr_020_46e4                                 ; $46d8: $18 $0a

jr_020_46da:
	ld   a, $39                                      ; $46da: $3e $39
	ld   [$caa1], a                                  ; $46dc: $ea $a1 $ca
	ld   a, $3d                                      ; $46df: $3e $3d
	ld   [$caa3], a                                  ; $46e1: $ea $a3 $ca

jr_020_46e4:
	ret                                              ; $46e4: $c9


Call_020_46e5:
	xor  a                                           ; $46e5: $af
	ld   [$ca6f], a                                  ; $46e6: $ea $6f $ca
	call Call_020_470b                               ; $46e9: $cd $0b $47
	call Call_020_48c9                               ; $46ec: $cd $c9 $48
	call Call_020_48f9                               ; $46ef: $cd $f9 $48
	ld   d, a                                        ; $46f2: $57
	ld   a, [$ca72]                                  ; $46f3: $fa $72 $ca
	and  $06                                         ; $46f6: $e6 $06
	jr   nz, jr_020_46fe                             ; $46f8: $20 $04

	ld   a, d                                        ; $46fa: $7a
	call Call_020_5200                               ; $46fb: $cd $00 $52

jr_020_46fe:
	call $49ca                                       ; $46fe: $cd $ca $49
	call Call_020_4b81                               ; $4701: $cd $81 $4b
	call Call_020_493e                               ; $4704: $cd $3e $49
	call Call_020_4d1a                               ; $4707: $cd $1a $4d
	ret                                              ; $470a: $c9


Call_020_470b:
	ld   a, [$caa1]                                  ; $470b: $fa $a1 $ca
	ld   b, a                                        ; $470e: $47
	ld   a, [$ca6d]                                  ; $470f: $fa $6d $ca
	add  b                                           ; $4712: $80
	ld   b, a                                        ; $4713: $47
	ld   a, [$caa3]                                  ; $4714: $fa $a3 $ca
	ld   c, a                                        ; $4717: $4f
	ld   a, [$ca6e]                                  ; $4718: $fa $6e $ca
	add  c                                           ; $471b: $81
	ld   c, a                                        ; $471c: $4f
	push bc                                          ; $471d: $c5
	pop  bc                                          ; $471e: $c1
	push bc                                          ; $471f: $c5
	ld   a, b                                        ; $4720: $78
	sub  $04                                         ; $4721: $d6 $04
	ld   b, a                                        ; $4723: $47
	ld   a, c                                        ; $4724: $79
	add  $04                                         ; $4725: $c6 $04
	ld   c, a                                        ; $4727: $4f
	call Call_020_4c64                               ; $4728: $cd $64 $4c
	cp   $ff                                         ; $472b: $fe $ff
	jp   z, Jump_020_476a                            ; $472d: $ca $6a $47

	pop  bc                                          ; $4730: $c1
	push af                                          ; $4731: $f5
	ld   hl, $ca8a                                   ; $4732: $21 $8a $ca
	inc  [hl]                                        ; $4735: $34
	ld   a, [hl]                                     ; $4736: $7e
	cp   $fa                                         ; $4737: $fe $fa
	jr   nz, jr_020_4767                             ; $4739: $20 $2c

	ld   a, [$ca90]                                  ; $473b: $fa $90 $ca
	cp   b                                           ; $473e: $b8
	jr   nz, jr_020_475b                             ; $473f: $20 $1a

	ld   a, [$ca91]                                  ; $4741: $fa $91 $ca
	cp   c                                           ; $4744: $b9
	jr   nz, jr_020_475b                             ; $4745: $20 $14

	ld   a, [$ca92]                                  ; $4747: $fa $92 $ca
	inc  a                                           ; $474a: $3c
	ld   [$ca92], a                                  ; $474b: $ea $92 $ca
	cp   $03                                         ; $474e: $fe $03
	jr   nz, jr_020_4767                             ; $4750: $20 $15

	xor  a                                           ; $4752: $af
	ld   [$ca92], a                                  ; $4753: $ea $92 $ca
	xor  a                                           ; $4756: $af
	ld   [hl], a                                     ; $4757: $77
	pop  af                                          ; $4758: $f1
	jr   jr_020_47a6                                 ; $4759: $18 $4b

jr_020_475b:
	xor  a                                           ; $475b: $af
	ld   [$ca8a], a                                  ; $475c: $ea $8a $ca
	ld   a, b                                        ; $475f: $78
	ld   [$ca90], a                                  ; $4760: $ea $90 $ca
	ld   a, c                                        ; $4763: $79
	ld   [$ca91], a                                  ; $4764: $ea $91 $ca

jr_020_4767:
	pop  af                                          ; $4767: $f1
	jr   jr_020_476d                                 ; $4768: $18 $03

Jump_020_476a:
	pop  bc                                          ; $476a: $c1
	jr   jr_020_47a6                                 ; $476b: $18 $39

jr_020_476d:
	and  $0f                                         ; $476d: $e6 $0f
	ld   c, a                                        ; $476f: $4f
	sla  c                                           ; $4770: $cb $21
	ld   a, [$ca9b]                                  ; $4772: $fa $9b $ca
	cp   c                                           ; $4775: $b9
	jr   z, jr_020_4798                              ; $4776: $28 $20

	ld   b, a                                        ; $4778: $47
	ld   a, $0f                                      ; $4779: $3e $0f
	sub  b                                           ; $477b: $90
	ld   e, a                                        ; $477c: $5f
	ld   d, $00                                      ; $477d: $16 $00
	ld   hl, $47bc                                   ; $477f: $21 $bc $47
	add  hl, de                                      ; $4782: $19
	ld   b, $00                                      ; $4783: $06 $00
	add  hl, bc                                      ; $4785: $09
	ld   a, [$ca9a]                                  ; $4786: $fa $9a $ca
	add  [hl]                                        ; $4789: $86
	and  $7f                                         ; $478a: $e6 $7f
	ld   [$ca9a], a                                  ; $478c: $ea $9a $ca
	srl  a                                           ; $478f: $cb $3f
	srl  a                                           ; $4791: $cb $3f
	srl  a                                           ; $4793: $cb $3f
	ld   [$ca9b], a                                  ; $4795: $ea $9b $ca

jr_020_4798:
	ld   a, [$ca98]                                  ; $4798: $fa $98 $ca
	inc  a                                           ; $479b: $3c
	inc  a                                           ; $479c: $3c
	cp   $20                                         ; $479d: $fe $20
	jr   c, jr_020_47a3                              ; $479f: $38 $02

	ld   a, $1f                                      ; $47a1: $3e $1f

jr_020_47a3:
	ld   [$ca98], a                                  ; $47a3: $ea $98 $ca

jr_020_47a6:
	ld   a, [$ca98]                                  ; $47a6: $fa $98 $ca
	call Call_020_4981                               ; $47a9: $cd $81 $49
	push af                                          ; $47ac: $f5
	swap a                                           ; $47ad: $cb $37
	and  $0f                                         ; $47af: $e6 $0f
	ld   [$ca99], a                                  ; $47b1: $ea $99 $ca
	pop  af                                          ; $47b4: $f1
	call Call_020_49ab                               ; $47b5: $cd $ab $49
	ld   [$ca97], a                                  ; $47b8: $ea $97 $ca
	ret                                              ; $47bb: $c9


	ld   bc, $0101                                   ; $47bc: $01 $01 $01
	ld   bc, $0101                                   ; $47bf: $01 $01 $01
	ld   bc, $ffff                                   ; $47c2: $01 $ff $ff
	rst  $38                                         ; $47c5: $ff
	rst  $38                                         ; $47c6: $ff
	rst  $38                                         ; $47c7: $ff
	rst  $38                                         ; $47c8: $ff
	rst  $38                                         ; $47c9: $ff
	rst  $38                                         ; $47ca: $ff
	ld   bc, $0101                                   ; $47cb: $01 $01 $01
	ld   bc, $0101                                   ; $47ce: $01 $01 $01
	ld   bc, $ff01                                   ; $47d1: $01 $01 $ff
	rst  $38                                         ; $47d4: $ff
	rst  $38                                         ; $47d5: $ff
	rst  $38                                         ; $47d6: $ff
	rst  $38                                         ; $47d7: $ff
	rst  $38                                         ; $47d8: $ff
	rst  $38                                         ; $47d9: $ff
	rst  $38                                         ; $47da: $ff

Call_020_47db:
	ld   hl, $ca97                                   ; $47db: $21 $97 $ca
	ld   bc, $cacd                                   ; $47de: $01 $cd $ca
	ld   de, $0036                                   ; $47e1: $11 $36 $00

jr_020_47e4:
	ld   a, [hl]                                     ; $47e4: $7e
	push af                                          ; $47e5: $f5
	ld   a, [bc]                                     ; $47e6: $0a
	ld   [hl+], a                                    ; $47e7: $22
	pop  af                                          ; $47e8: $f1
	ld   [bc], a                                     ; $47e9: $02
	inc  bc                                          ; $47ea: $03
	dec  de                                          ; $47eb: $1b
	ld   a, e                                        ; $47ec: $7b
	or   d                                           ; $47ed: $b2
	jr   nz, jr_020_47e4                             ; $47ee: $20 $f4

	ret                                              ; $47f0: $c9


Call_020_47f1:
	xor  a                                           ; $47f1: $af
	ld   [$ca97], a                                  ; $47f2: $ea $97 $ca
	ld   [$ca98], a                                  ; $47f5: $ea $98 $ca
	ld   [$ca99], a                                  ; $47f8: $ea $99 $ca
	ld   [$ca9c], a                                  ; $47fb: $ea $9c $ca
	ld   [$ca9d], a                                  ; $47fe: $ea $9d $ca
	ld   [$ca9e], a                                  ; $4801: $ea $9e $ca
	ld   [$ca9f], a                                  ; $4804: $ea $9f $ca
	ld   [$caa0], a                                  ; $4807: $ea $a0 $ca
	ld   [$caa2], a                                  ; $480a: $ea $a2 $ca
	ld   [$caca], a                                  ; $480d: $ea $ca $ca
	ld   [$cacb], a                                  ; $4810: $ea $cb $ca
	ld   [$caae], a                                  ; $4813: $ea $ae $ca
	ld   [$caaf], a                                  ; $4816: $ea $af $ca
	ld   [$cab3], a                                  ; $4819: $ea $b3 $ca
	ld   [$cab4], a                                  ; $481c: $ea $b4 $ca
	ld   [$cab5], a                                  ; $481f: $ea $b5 $ca
	ld   [$cac8], a                                  ; $4822: $ea $c8 $ca
	ld   a, $08                                      ; $4825: $3e $08
	ld   [$cac9], a                                  ; $4827: $ea $c9 $ca
	ld   a, [$ca9b]                                  ; $482a: $fa $9b $ca
	sla  a                                           ; $482d: $cb $27
	sla  a                                           ; $482f: $cb $27
	sla  a                                           ; $4831: $cb $27
	ld   [$ca9a], a                                  ; $4833: $ea $9a $ca
	ld   hl, $cab5                                   ; $4836: $21 $b5 $ca
	set  5, [hl]                                     ; $4839: $cb $ee
	ret                                              ; $483b: $c9


Call_020_483c:
	call Call_020_485c                               ; $483c: $cd $5c $48
	call Call_020_48c9                               ; $483f: $cd $c9 $48
	call Call_020_48f9                               ; $4842: $cd $f9 $48
	call Call_020_5200                               ; $4845: $cd $00 $52
	call $49ca                                       ; $4848: $cd $ca $49
	call Call_020_4b81                               ; $484b: $cd $81 $4b
	call Call_020_493e                               ; $484e: $cd $3e $49
	ld   a, [$ca72]                                  ; $4851: $fa $72 $ca
	bit  1, a                                        ; $4854: $cb $4f
	jr   nz, jr_020_485b                             ; $4856: $20 $03

	call $4d0d                                       ; $4858: $cd $0d $4d

jr_020_485b:
	ret                                              ; $485b: $c9


Call_020_485c:
	ld   a, [$ca74]                                  ; $485c: $fa $74 $ca
	bit  0, a                                        ; $485f: $cb $47
	jr   nz, jr_020_486c                             ; $4861: $20 $09

	ld   a, [$ca98]                                  ; $4863: $fa $98 $ca
	or   a                                           ; $4866: $b7
	jr   z, jr_020_4877                              ; $4867: $28 $0e

	dec  a                                           ; $4869: $3d
	jr   jr_020_4877                                 ; $486a: $18 $0b

jr_020_486c:
	ld   a, [$ca98]                                  ; $486c: $fa $98 $ca
	inc  a                                           ; $486f: $3c
	inc  a                                           ; $4870: $3c
	cp   $20                                         ; $4871: $fe $20
	jr   c, jr_020_4877                              ; $4873: $38 $02

	ld   a, $1f                                      ; $4875: $3e $1f

jr_020_4877:
	ld   [$ca98], a                                  ; $4877: $ea $98 $ca
	call Call_020_4981                               ; $487a: $cd $81 $49
	push af                                          ; $487d: $f5
	swap a                                           ; $487e: $cb $37
	and  $0f                                         ; $4880: $e6 $0f
	ld   [$ca99], a                                  ; $4882: $ea $99 $ca
	pop  af                                          ; $4885: $f1
	call Call_020_49ab                               ; $4886: $cd $ab $49
	ld   [$ca97], a                                  ; $4889: $ea $97 $ca
	ld   a, [$ca74]                                  ; $488c: $fa $74 $ca
	bit  5, a                                        ; $488f: $cb $6f
	jr   nz, jr_020_4899                             ; $4891: $20 $06

	bit  4, a                                        ; $4893: $cb $67
	jr   nz, jr_020_489f                             ; $4895: $20 $08

	jr   jr_020_48b1                                 ; $4897: $18 $18

jr_020_4899:
	ld   a, [$ca9a]                                  ; $4899: $fa $9a $ca
	inc  a                                           ; $489c: $3c
	jr   jr_020_48a3                                 ; $489d: $18 $04

jr_020_489f:
	ld   a, [$ca9a]                                  ; $489f: $fa $9a $ca
	dec  a                                           ; $48a2: $3d

jr_020_48a3:
	and  $7f                                         ; $48a3: $e6 $7f
	ld   [$ca9a], a                                  ; $48a5: $ea $9a $ca
	srl  a                                           ; $48a8: $cb $3f
	srl  a                                           ; $48aa: $cb $3f
	srl  a                                           ; $48ac: $cb $3f
	ld   [$ca9b], a                                  ; $48ae: $ea $9b $ca

jr_020_48b1:
	ret                                              ; $48b1: $c9


	ld   a, $ff                                      ; $48b2: $3e $ff
	ld   [$ca93], a                                  ; $48b4: $ea $93 $ca
	ld   a, [wGameState]                                  ; $48b7: $fa $a0 $c2
	ld   [$ca94], a                                  ; $48ba: $ea $94 $ca
	ld   a, [wGameSubstate]                                  ; $48bd: $fa $a1 $c2
	ld   [$ca95], a                                  ; $48c0: $ea $95 $ca
	ld   a, $09                                      ; $48c3: $3e $09
	ld   [wGameSubstate], a                                  ; $48c5: $ea $a1 $c2
	ret                                              ; $48c8: $c9


Call_020_48c9:
	ld   bc, $ca99                                   ; $48c9: $01 $99 $ca
	ld   a, [bc]                                     ; $48cc: $0a
	or   a                                           ; $48cd: $b7
	jr   z, jr_020_48f1                              ; $48ce: $28 $21

	ld   a, [$ca9b]                                  ; $48d0: $fa $9b $ca
	ld   e, a                                        ; $48d3: $5f
	ld   d, $00                                      ; $48d4: $16 $00
	sla  e                                           ; $48d6: $cb $23
	ld   hl, $4c44                                   ; $48d8: $21 $44 $4c
	add  hl, de                                      ; $48db: $19
	ld   a, [bc]                                     ; $48dc: $0a
	ld   d, a                                        ; $48dd: $57
	ld   e, a                                        ; $48de: $5f
	xor  a                                           ; $48df: $af

jr_020_48e0:
	add  [hl]                                        ; $48e0: $86
	dec  d                                           ; $48e1: $15
	jr   nz, jr_020_48e0                             ; $48e2: $20 $fc

	ld   [$ca9c], a                                  ; $48e4: $ea $9c $ca
	inc  hl                                          ; $48e7: $23
	xor  a                                           ; $48e8: $af

jr_020_48e9:
	add  [hl]                                        ; $48e9: $86
	dec  e                                           ; $48ea: $1d
	jr   nz, jr_020_48e9                             ; $48eb: $20 $fc

	ld   [$ca9d], a                                  ; $48ed: $ea $9d $ca
	ret                                              ; $48f0: $c9


jr_020_48f1:
	xor  a                                           ; $48f1: $af
	ld   [$ca9c], a                                  ; $48f2: $ea $9c $ca
	ld   [$ca9d], a                                  ; $48f5: $ea $9d $ca
	ret                                              ; $48f8: $c9


Call_020_48f9:
	ld   de, $ffff                                   ; $48f9: $11 $ff $ff
	ld   hl, $ca9e                                   ; $48fc: $21 $9e $ca
	ld   a, [$ca9c]                                  ; $48ff: $fa $9c $ca
	sub  [hl]                                        ; $4902: $96
	ld   b, a                                        ; $4903: $47
	bit  7, b                                        ; $4904: $cb $78
	jr   z, jr_020_4909                              ; $4906: $28 $01

	xor  d                                           ; $4908: $aa

jr_020_4909:
	ld   d, a                                        ; $4909: $57
	ld   [$ca42], a                                  ; $490a: $ea $42 $ca
	ld   a, [$ca97]                                  ; $490d: $fa $97 $ca
	cp   d                                           ; $4910: $ba
	jr   c, jr_020_4914                              ; $4911: $38 $01

	ld   a, d                                        ; $4913: $7a

jr_020_4914:
	bit  7, b                                        ; $4914: $cb $78
	jr   z, jr_020_4919                              ; $4916: $28 $01

	xor  e                                           ; $4918: $ab

jr_020_4919:
	add  [hl]                                        ; $4919: $86
	ld   [hl+], a                                    ; $491a: $22
	ld   de, $ffff                                   ; $491b: $11 $ff $ff
	ld   a, [$ca9d]                                  ; $491e: $fa $9d $ca
	sub  [hl]                                        ; $4921: $96
	ld   b, a                                        ; $4922: $47
	bit  7, b                                        ; $4923: $cb $78
	jr   z, jr_020_4928                              ; $4925: $28 $01

	xor  d                                           ; $4927: $aa

jr_020_4928:
	ld   d, a                                        ; $4928: $57
	ld   a, [$ca97]                                  ; $4929: $fa $97 $ca
	cp   d                                           ; $492c: $ba
	jr   c, jr_020_4930                              ; $492d: $38 $01

	ld   a, d                                        ; $492f: $7a

jr_020_4930:
	bit  7, b                                        ; $4930: $cb $78
	jr   z, jr_020_4935                              ; $4932: $28 $01

	xor  e                                           ; $4934: $ab

jr_020_4935:
	add  [hl]                                        ; $4935: $86
	ld   [hl], a                                     ; $4936: $77
	ld   a, [$ca42]                                  ; $4937: $fa $42 $ca
	add  d                                           ; $493a: $82
	srl  a                                           ; $493b: $cb $3f
	ret                                              ; $493d: $c9


Call_020_493e:
	ld   a, [$ca9e]                                  ; $493e: $fa $9e $ca
	bit  7, a                                        ; $4941: $cb $7f
	jr   z, jr_020_4949                              ; $4943: $28 $04

	ld   h, $ff                                      ; $4945: $26 $ff
	jr   jr_020_494b                                 ; $4947: $18 $02

jr_020_4949:
	ld   h, $00                                      ; $4949: $26 $00

jr_020_494b:
	ld   l, a                                        ; $494b: $6f
	ld   c, l                                        ; $494c: $4d
	ld   b, h                                        ; $494d: $44
	sla  l                                           ; $494e: $cb $25
	rl   h                                           ; $4950: $cb $14
	sla  l                                           ; $4952: $cb $25
	rl   h                                           ; $4954: $cb $14
	add  hl, bc                                      ; $4956: $09
	ld   a, h                                        ; $4957: $7c
	ld   [$caa7], a                                  ; $4958: $ea $a7 $ca
	ld   a, l                                        ; $495b: $7d
	ld   [$caa6], a                                  ; $495c: $ea $a6 $ca
	ld   a, [$ca9f]                                  ; $495f: $fa $9f $ca
	bit  7, a                                        ; $4962: $cb $7f
	jr   z, jr_020_496a                              ; $4964: $28 $04

	ld   h, $ff                                      ; $4966: $26 $ff
	jr   jr_020_496c                                 ; $4968: $18 $02

jr_020_496a:
	ld   h, $00                                      ; $496a: $26 $00

jr_020_496c:
	ld   l, a                                        ; $496c: $6f
	ld   c, l                                        ; $496d: $4d
	ld   b, h                                        ; $496e: $44
	sla  l                                           ; $496f: $cb $25
	rl   h                                           ; $4971: $cb $14
	sla  l                                           ; $4973: $cb $25
	rl   h                                           ; $4975: $cb $14
	add  hl, bc                                      ; $4977: $09
	ld   a, h                                        ; $4978: $7c
	ld   [$caa9], a                                  ; $4979: $ea $a9 $ca
	ld   a, l                                        ; $497c: $7d
	ld   [$caa8], a                                  ; $497d: $ea $a8 $ca
	ret                                              ; $4980: $c9


Call_020_4981:
	ld   c, a                                        ; $4981: $4f
	ld   b, $00                                      ; $4982: $06 $00
	ld   hl, $498a                                   ; $4984: $21 $8a $49
	add  hl, bc                                      ; $4987: $09
	ld   a, [hl]                                     ; $4988: $7e
	ret                                              ; $4989: $c9


	nop                                              ; $498a: $00
	inc  bc                                          ; $498b: $03
	ld   b, $09                                      ; $498c: $06 $09
	inc  c                                           ; $498e: $0c
	rrca                                             ; $498f: $0f
	ld   [de], a                                     ; $4990: $12
	inc  d                                           ; $4991: $14
	rla                                              ; $4992: $17
	ld   a, [de]                                     ; $4993: $1a
	dec  e                                           ; $4994: $1d
	jr   nz, jr_020_49ba                             ; $4995: $20 $23

	ld   h, $29                                      ; $4997: $26 $29
	inc  l                                           ; $4999: $2c
	jr   nc, jr_020_49cf                             ; $499a: $30 $33

	ld   [hl], $39                                   ; $499c: $36 $39
	inc  a                                           ; $499e: $3c
	ld   b, b                                        ; $499f: $40
	ld   b, l                                        ; $49a0: $45
	ld   c, d                                        ; $49a1: $4a
	ld   d, b                                        ; $49a2: $50
	ld   d, l                                        ; $49a3: $55
	ld   e, d                                        ; $49a4: $5a
	ld   h, b                                        ; $49a5: $60
	ld   h, l                                        ; $49a6: $65
	ld   l, d                                        ; $49a7: $6a
	ld   [hl], b                                     ; $49a8: $70
	ld   a, b                                        ; $49a9: $78
	add  b                                           ; $49aa: $80

Call_020_49ab:
	srl  a                                           ; $49ab: $cb $3f
	srl  a                                           ; $49ad: $cb $3f
	srl  a                                           ; $49af: $cb $3f
	ld   c, a                                        ; $49b1: $4f
	ld   b, $00                                      ; $49b2: $06 $00
	ld   hl, $49ba                                   ; $49b4: $21 $ba $49
	add  hl, bc                                      ; $49b7: $09
	ld   a, [hl]                                     ; $49b8: $7e
	ret                                              ; $49b9: $c9


jr_020_49ba:
	ld   b, b                                        ; $49ba: $40
	db   $10                                         ; $49bb: $10
	ld   [$0304], sp                                 ; $49bc: $08 $04 $03
	inc  bc                                          ; $49bf: $03
	inc  bc                                          ; $49c0: $03
	ld   [bc], a                                     ; $49c1: $02
	ld   [bc], a                                     ; $49c2: $02
	ld   [bc], a                                     ; $49c3: $02
	ld   [bc], a                                     ; $49c4: $02
	ld   bc, $0101                                   ; $49c5: $01 $01 $01
	ld   bc, $2101                                   ; $49c8: $01 $01 $21
	and  [hl]                                        ; $49cb: $a6
	jp   z, Jump_020_562a                            ; $49cc: $ca $2a $56

jr_020_49cf:
	ld   e, a                                        ; $49cf: $5f
	sla  e                                           ; $49d0: $cb $23
	rl   d                                           ; $49d2: $cb $12
	ld   a, [$caa1]                                  ; $49d4: $fa $a1 $ca
	ld   h, a                                        ; $49d7: $67
	ld   a, [$caa0]                                  ; $49d8: $fa $a0 $ca
	ld   l, a                                        ; $49db: $6f
	add  hl, de                                      ; $49dc: $19
	ld   b, h                                        ; $49dd: $44
	ld   a, [$ca6d]                                  ; $49de: $fa $6d $ca
	ld   d, a                                        ; $49e1: $57
	ld   a, b                                        ; $49e2: $78
	add  d                                           ; $49e3: $82
	ld   b, a                                        ; $49e4: $47
	ld   hl, $caa8                                   ; $49e5: $21 $a8 $ca
	ld   a, [hl+]                                    ; $49e8: $2a
	ld   d, [hl]                                     ; $49e9: $56
	ld   e, a                                        ; $49ea: $5f
	sla  e                                           ; $49eb: $cb $23
	rl   d                                           ; $49ed: $cb $12
	ld   a, [$caa3]                                  ; $49ef: $fa $a3 $ca
	ld   h, a                                        ; $49f2: $67
	ld   a, [$caa2]                                  ; $49f3: $fa $a2 $ca
	ld   l, a                                        ; $49f6: $6f
	add  hl, de                                      ; $49f7: $19
	ld   c, h                                        ; $49f8: $4c
	ld   a, [$ca6e]                                  ; $49f9: $fa $6e $ca
	ld   d, a                                        ; $49fc: $57
	ld   a, c                                        ; $49fd: $79
	add  d                                           ; $49fe: $82
	ld   c, a                                        ; $49ff: $4f
	call Call_020_4bc6                               ; $4a00: $cd $c6 $4b
	cp   $ff                                         ; $4a03: $fe $ff
	jp   z, Jump_020_4b4e                            ; $4a05: $ca $4e $4b

	push af                                          ; $4a08: $f5
	ld   a, $2f                                      ; $4a09: $3e $2f
	call Func_1adf                                       ; $4a0b: $cd $df $1a
	pop  af                                          ; $4a0e: $f1
	push af                                          ; $4a0f: $f5
	call Call_020_4c22                               ; $4a10: $cd $22 $4c
	pop  de                                          ; $4a13: $d1
	ld   e, a                                        ; $4a14: $5f
	ld   hl, $caa6                                   ; $4a15: $21 $a6 $ca
	ld   a, [hl+]                                    ; $4a18: $2a
	or   [hl]                                        ; $4a19: $b6
	jp   z, Jump_020_4af9                            ; $4a1a: $ca $f9 $4a

	ld   hl, $caa8                                   ; $4a1d: $21 $a8 $ca
	ld   a, [hl+]                                    ; $4a20: $2a
	or   [hl]                                        ; $4a21: $b6
	jp   z, Jump_020_4adc                            ; $4a22: $ca $dc $4a

	ld   b, e                                        ; $4a25: $43
	ld   c, $04                                      ; $4a26: $0e $04
	xor  a                                           ; $4a28: $af

jr_020_4a29:
	sra  b                                           ; $4a29: $cb $28
	jr   nc, jr_020_4a2e                             ; $4a2b: $30 $01

	inc  a                                           ; $4a2d: $3c

jr_020_4a2e:
	dec  c                                           ; $4a2e: $0d
	jr   nz, jr_020_4a29                             ; $4a2f: $20 $f8

	cp   $01                                         ; $4a31: $fe $01
	jr   nz, jr_020_4a42                             ; $4a33: $20 $0d

	ld   a, e                                        ; $4a35: $7b
	or   a                                           ; $4a36: $b7
	jp   z, Jump_020_4b16                            ; $4a37: $ca $16 $4b

	and  $03                                         ; $4a3a: $e6 $03
	jp   nz, Jump_020_4af9                           ; $4a3c: $c2 $f9 $4a

	jp   Jump_020_4adc                               ; $4a3f: $c3 $dc $4a


jr_020_4a42:
	ld   a, d                                        ; $4a42: $7a
	cp   $0c                                         ; $4a43: $fe $0c
	jp   z, Jump_020_4af9                            ; $4a45: $ca $f9 $4a

	cp   $03                                         ; $4a48: $fe $03
	jp   z, Jump_020_4adc                            ; $4a4a: $ca $dc $4a

	ld   a, e                                        ; $4a4d: $7b
	cp   $09                                         ; $4a4e: $fe $09
	jr   z, jr_020_4a7e                              ; $4a50: $28 $2c

	cp   $05                                         ; $4a52: $fe $05
	jr   z, jr_020_4a9e                              ; $4a54: $28 $48

	cp   $0a                                         ; $4a56: $fe $0a
	jr   z, jr_020_4abd                              ; $4a58: $28 $63

	ld   a, d                                        ; $4a5a: $7a
	and  $06                                         ; $4a5b: $e6 $06
	cp   $06                                         ; $4a5d: $fe $06
	jp   z, Jump_020_4b16                            ; $4a5f: $ca $16 $4b

	bit  2, d                                        ; $4a62: $cb $52
	jp   nz, Jump_020_4af9                           ; $4a64: $c2 $f9 $4a

	bit  1, d                                        ; $4a67: $cb $4a
	jr   nz, jr_020_4adc                             ; $4a69: $20 $71

	ld   hl, $caa7                                   ; $4a6b: $21 $a7 $ca
	bit  7, [hl]                                     ; $4a6e: $cb $7e
	jp   nz, Jump_020_4af9                           ; $4a70: $c2 $f9 $4a

	ld   hl, $caa9                                   ; $4a73: $21 $a9 $ca
	bit  7, [hl]                                     ; $4a76: $cb $7e
	jp   z, Jump_020_4adc                            ; $4a78: $ca $dc $4a

	jp   Jump_020_4b16                               ; $4a7b: $c3 $16 $4b


jr_020_4a7e:
	ld   a, d                                        ; $4a7e: $7a
	and  $09                                         ; $4a7f: $e6 $09
	cp   $09                                         ; $4a81: $fe $09
	jp   z, Jump_020_4b16                            ; $4a83: $ca $16 $4b

	bit  3, d                                        ; $4a86: $cb $5a
	jr   nz, jr_020_4af9                             ; $4a88: $20 $6f

	bit  0, d                                        ; $4a8a: $cb $42
	jr   nz, jr_020_4adc                             ; $4a8c: $20 $4e

	ld   hl, $caa7                                   ; $4a8e: $21 $a7 $ca
	bit  7, [hl]                                     ; $4a91: $cb $7e
	jr   z, jr_020_4af9                              ; $4a93: $28 $64

	ld   hl, $caa9                                   ; $4a95: $21 $a9 $ca
	bit  7, [hl]                                     ; $4a98: $cb $7e
	jr   nz, jr_020_4adc                             ; $4a9a: $20 $40

	jr   jr_020_4b16                                 ; $4a9c: $18 $78

jr_020_4a9e:
	ld   a, d                                        ; $4a9e: $7a
	and  $05                                         ; $4a9f: $e6 $05
	cp   $05                                         ; $4aa1: $fe $05
	jr   z, jr_020_4b16                              ; $4aa3: $28 $71

	bit  2, d                                        ; $4aa5: $cb $52
	jr   nz, jr_020_4af9                             ; $4aa7: $20 $50

	bit  0, d                                        ; $4aa9: $cb $42
	jr   nz, jr_020_4adc                             ; $4aab: $20 $2f

	ld   hl, $caa7                                   ; $4aad: $21 $a7 $ca
	bit  7, [hl]                                     ; $4ab0: $cb $7e
	jr   nz, jr_020_4af9                             ; $4ab2: $20 $45

	ld   hl, $caa9                                   ; $4ab4: $21 $a9 $ca
	bit  7, [hl]                                     ; $4ab7: $cb $7e
	jr   nz, jr_020_4adc                             ; $4ab9: $20 $21

	jr   jr_020_4b16                                 ; $4abb: $18 $59

jr_020_4abd:
	ld   a, d                                        ; $4abd: $7a
	and  $0a                                         ; $4abe: $e6 $0a
	cp   $0a                                         ; $4ac0: $fe $0a
	jr   z, jr_020_4b16                              ; $4ac2: $28 $52

	bit  3, d                                        ; $4ac4: $cb $5a
	jr   nz, jr_020_4af9                             ; $4ac6: $20 $31

	bit  1, d                                        ; $4ac8: $cb $4a
	jr   nz, jr_020_4adc                             ; $4aca: $20 $10

	ld   hl, $caa7                                   ; $4acc: $21 $a7 $ca
	bit  7, [hl]                                     ; $4acf: $cb $7e
	jr   z, jr_020_4af9                              ; $4ad1: $28 $26

	ld   hl, $caa9                                   ; $4ad3: $21 $a9 $ca
	bit  7, [hl]                                     ; $4ad6: $cb $7e
	jr   z, jr_020_4adc                              ; $4ad8: $28 $02

	jr   jr_020_4b16                                 ; $4ada: $18 $3a

Jump_020_4adc:
jr_020_4adc:
	ld   a, [$ca96]                                  ; $4adc: $fa $96 $ca
	cp   $14                                         ; $4adf: $fe $14
	jr   z, jr_020_4b27                              ; $4ae1: $28 $44

	inc  a                                           ; $4ae3: $3c
	ld   [$ca96], a                                  ; $4ae4: $ea $96 $ca
	xor  a                                           ; $4ae7: $af
	ld   [$caa7], a                                  ; $4ae8: $ea $a7 $ca
	ld   [$caa6], a                                  ; $4aeb: $ea $a6 $ca
	ld   a, [$ca9e]                                  ; $4aee: $fa $9e $ca
	sra  a                                           ; $4af1: $cb $2f
	ld   [$ca9e], a                                  ; $4af3: $ea $9e $ca
	jp   $49ca                                       ; $4af6: $c3 $ca $49


Jump_020_4af9:
jr_020_4af9:
	ld   a, [$ca96]                                  ; $4af9: $fa $96 $ca
	cp   $14                                         ; $4afc: $fe $14
	jr   z, jr_020_4b27                              ; $4afe: $28 $27

	inc  a                                           ; $4b00: $3c
	ld   [$ca96], a                                  ; $4b01: $ea $96 $ca
	xor  a                                           ; $4b04: $af
	ld   [$caa9], a                                  ; $4b05: $ea $a9 $ca
	ld   [$caa8], a                                  ; $4b08: $ea $a8 $ca
	ld   a, [$ca9f]                                  ; $4b0b: $fa $9f $ca
	sra  a                                           ; $4b0e: $cb $2f
	ld   [$ca9f], a                                  ; $4b10: $ea $9f $ca
	jp   $49ca                                       ; $4b13: $c3 $ca $49


Jump_020_4b16:
jr_020_4b16:
	xor  a                                           ; $4b16: $af
	ld   [$caa9], a                                  ; $4b17: $ea $a9 $ca
	ld   [$caa8], a                                  ; $4b1a: $ea $a8 $ca
	ld   a, [$ca9f]                                  ; $4b1d: $fa $9f $ca
	sra  a                                           ; $4b20: $cb $2f
	ld   [$ca9f], a                                  ; $4b22: $ea $9f $ca
	jr   jr_020_4adc                                 ; $4b25: $18 $b5

jr_020_4b27:
	call Call_020_4bc6                               ; $4b27: $cd $c6 $4b
	bit  2, a                                        ; $4b2a: $cb $57
	jr   nz, jr_020_4b33                             ; $4b2c: $20 $05

	ld   hl, $caa1                                   ; $4b2e: $21 $a1 $ca
	dec  [hl]                                        ; $4b31: $35
	dec  [hl]                                        ; $4b32: $35

jr_020_4b33:
	bit  3, a                                        ; $4b33: $cb $5f
	jr   nz, jr_020_4b3c                             ; $4b35: $20 $05

	ld   hl, $caa1                                   ; $4b37: $21 $a1 $ca
	inc  [hl]                                        ; $4b3a: $34
	inc  [hl]                                        ; $4b3b: $34

jr_020_4b3c:
	bit  0, a                                        ; $4b3c: $cb $47
	jr   nz, jr_020_4b45                             ; $4b3e: $20 $05

	ld   hl, $caa3                                   ; $4b40: $21 $a3 $ca
	dec  [hl]                                        ; $4b43: $35
	dec  [hl]                                        ; $4b44: $35

jr_020_4b45:
	bit  1, a                                        ; $4b45: $cb $4f
	jr   nz, jr_020_4b4e                             ; $4b47: $20 $05

	ld   hl, $caa3                                   ; $4b49: $21 $a3 $ca
	inc  [hl]                                        ; $4b4c: $34
	inc  [hl]                                        ; $4b4d: $34

Jump_020_4b4e:
jr_020_4b4e:
	xor  a                                           ; $4b4e: $af
	ld   [$ca96], a                                  ; $4b4f: $ea $96 $ca
	ld   hl, $caa6                                   ; $4b52: $21 $a6 $ca
	ld   a, [hl+]                                    ; $4b55: $2a
	ld   d, [hl]                                     ; $4b56: $56
	ld   e, a                                        ; $4b57: $5f
	ld   a, [$caa1]                                  ; $4b58: $fa $a1 $ca
	ld   h, a                                        ; $4b5b: $67
	ld   a, [$caa0]                                  ; $4b5c: $fa $a0 $ca
	ld   l, a                                        ; $4b5f: $6f
	add  hl, de                                      ; $4b60: $19
	ld   a, h                                        ; $4b61: $7c
	ld   [$caa1], a                                  ; $4b62: $ea $a1 $ca
	ld   a, l                                        ; $4b65: $7d
	ld   [$caa0], a                                  ; $4b66: $ea $a0 $ca
	ld   hl, $caa8                                   ; $4b69: $21 $a8 $ca
	ld   a, [hl+]                                    ; $4b6c: $2a
	ld   d, [hl]                                     ; $4b6d: $56
	ld   e, a                                        ; $4b6e: $5f
	ld   a, [$caa3]                                  ; $4b6f: $fa $a3 $ca
	ld   h, a                                        ; $4b72: $67
	ld   a, [$caa2]                                  ; $4b73: $fa $a2 $ca
	ld   l, a                                        ; $4b76: $6f
	add  hl, de                                      ; $4b77: $19
	ld   a, h                                        ; $4b78: $7c
	ld   [$caa3], a                                  ; $4b79: $ea $a3 $ca
	ld   a, l                                        ; $4b7c: $7d
	ld   [$caa2], a                                  ; $4b7d: $ea $a2 $ca
	ret                                              ; $4b80: $c9


Call_020_4b81:
	ld   a, [$caa1]                                  ; $4b81: $fa $a1 $ca
	ld   b, a                                        ; $4b84: $47
	ld   a, [$cad7]                                  ; $4b85: $fa $d7 $ca
	sub  b                                           ; $4b88: $90
	ld   b, a                                        ; $4b89: $47
	add  $08                                         ; $4b8a: $c6 $08
	cp   $11                                         ; $4b8c: $fe $11
	ret  nc                                          ; $4b8e: $d0

	ld   a, [$caa3]                                  ; $4b8f: $fa $a3 $ca
	ld   c, a                                        ; $4b92: $4f
	ld   a, [$cad9]                                  ; $4b93: $fa $d9 $ca
	sub  c                                           ; $4b96: $91
	ld   c, a                                        ; $4b97: $4f
	add  $08                                         ; $4b98: $c6 $08
	cp   $11                                         ; $4b9a: $fe $11
	ret  nc                                          ; $4b9c: $d0

	sla  b                                           ; $4b9d: $cb $20
	rla                                              ; $4b9f: $17
	sla  b                                           ; $4ba0: $cb $20
	rra                                              ; $4ba2: $1f
	rr   b                                           ; $4ba3: $cb $18
	sla  c                                           ; $4ba5: $cb $21
	rla                                              ; $4ba7: $17
	sla  c                                           ; $4ba8: $cb $21
	rra                                              ; $4baa: $1f
	rr   c                                           ; $4bab: $cb $19
	ld   hl, $ca9e                                   ; $4bad: $21 $9e $ca
	ld   a, [hl]                                     ; $4bb0: $7e
	sub  b                                           ; $4bb1: $90
	ld   [hl+], a                                    ; $4bb2: $22
	ld   a, [hl]                                     ; $4bb3: $7e
	sub  c                                           ; $4bb4: $91
	ld   [hl], a                                     ; $4bb5: $77
	ld   a, $30                                      ; $4bb6: $3e $30
	call Func_1adf                                       ; $4bb8: $cd $df $1a
	ld   c, $02                                      ; $4bbb: $0e $02
	call Call_020_554f                               ; $4bbd: $cd $4f $55
	ld   a, $3c                                      ; $4bc0: $3e $3c
	ld   [$ca82], a                                  ; $4bc2: $ea $82 $ca
	ret                                              ; $4bc5: $c9


Call_020_4bc6:
	push bc                                          ; $4bc6: $c5
	ld   a, b                                        ; $4bc7: $78
	add  $08                                         ; $4bc8: $c6 $08
	ld   b, a                                        ; $4bca: $47
	ld   a, c                                        ; $4bcb: $79
	add  $08                                         ; $4bcc: $c6 $08
	ld   c, a                                        ; $4bce: $4f
	call Call_020_4c64                               ; $4bcf: $cd $64 $4c
	cp   $ff                                         ; $4bd2: $fe $ff
	jr   z, jr_020_4bf0                              ; $4bd4: $28 $1a

	pop  bc                                          ; $4bd6: $c1
	push bc                                          ; $4bd7: $c5
	ld   a, b                                        ; $4bd8: $78
	sub  $08                                         ; $4bd9: $d6 $08
	ld   b, a                                        ; $4bdb: $47
	ld   a, c                                        ; $4bdc: $79
	add  $08                                         ; $4bdd: $c6 $08
	ld   c, a                                        ; $4bdf: $4f
	call Call_020_4c64                               ; $4be0: $cd $64 $4c
	cp   $ff                                         ; $4be3: $fe $ff
	jr   z, jr_020_4bf0                              ; $4be5: $28 $09

	pop  bc                                          ; $4be7: $c1
	push bc                                          ; $4be8: $c5
	call Call_020_4c64                               ; $4be9: $cd $64 $4c
	cp   $ff                                         ; $4bec: $fe $ff
	jr   nz, jr_020_4c1e                             ; $4bee: $20 $2e

jr_020_4bf0:
	ld   bc, $0000                                   ; $4bf0: $01 $00 $00
	inc  hl                                          ; $4bf3: $23
	ld   a, [hl]                                     ; $4bf4: $7e
	cp   $ff                                         ; $4bf5: $fe $ff
	jr   nz, jr_020_4bfb                             ; $4bf7: $20 $02

	set  3, b                                        ; $4bf9: $cb $d8

jr_020_4bfb:
	dec  hl                                          ; $4bfb: $2b
	dec  hl                                          ; $4bfc: $2b
	ld   a, [hl]                                     ; $4bfd: $7e
	cp   $ff                                         ; $4bfe: $fe $ff
	jr   nz, jr_020_4c04                             ; $4c00: $20 $02

	set  2, b                                        ; $4c02: $cb $d0

jr_020_4c04:
	inc  hl                                          ; $4c04: $23
	ld   de, $ffe0                                   ; $4c05: $11 $e0 $ff
	add  hl, de                                      ; $4c08: $19
	ld   a, [hl]                                     ; $4c09: $7e
	cp   $ff                                         ; $4c0a: $fe $ff
	jr   nz, jr_020_4c10                             ; $4c0c: $20 $02

	set  0, b                                        ; $4c0e: $cb $c0

jr_020_4c10:
	ld   de, $0040                                   ; $4c10: $11 $40 $00
	add  hl, de                                      ; $4c13: $19
	ld   a, [hl]                                     ; $4c14: $7e
	cp   $ff                                         ; $4c15: $fe $ff
	jr   nz, jr_020_4c1b                             ; $4c17: $20 $02

	set  1, b                                        ; $4c19: $cb $c8

jr_020_4c1b:
	ld   a, b                                        ; $4c1b: $78
	pop  bc                                          ; $4c1c: $c1
	ret                                              ; $4c1d: $c9


jr_020_4c1e:
	ld   a, $ff                                      ; $4c1e: $3e $ff
	pop  bc                                          ; $4c20: $c1
	ret                                              ; $4c21: $c9


Call_020_4c22:
	ld   d, $00                                      ; $4c22: $16 $00
	ld   a, c                                        ; $4c24: $79
	and  $07                                         ; $4c25: $e6 $07
	jr   z, jr_020_4c31                              ; $4c27: $28 $08

	cp   $07                                         ; $4c29: $fe $07
	jr   nz, jr_020_4c33                             ; $4c2b: $20 $06

	set  1, d                                        ; $4c2d: $cb $ca
	jr   jr_020_4c33                                 ; $4c2f: $18 $02

jr_020_4c31:
	set  0, d                                        ; $4c31: $cb $c2

jr_020_4c33:
	ld   a, b                                        ; $4c33: $78
	and  $07                                         ; $4c34: $e6 $07
	jr   z, jr_020_4c40                              ; $4c36: $28 $08

	cp   $07                                         ; $4c38: $fe $07
	jr   nz, jr_020_4c42                             ; $4c3a: $20 $06

	set  3, d                                        ; $4c3c: $cb $da
	jr   jr_020_4c42                                 ; $4c3e: $18 $02

jr_020_4c40:
	set  2, d                                        ; $4c40: $cb $d2

jr_020_4c42:
	ld   a, d                                        ; $4c42: $7a
	ret                                              ; $4c43: $c9


	nop                                              ; $4c44: $00
	ld   hl, sp-$03                                  ; $4c45: $f8 $fd
	ld   sp, hl                                      ; $4c47: $f9
	ld   a, [$f9fa]                                  ; $4c48: $fa $fa $f9
	db   $fd                                         ; $4c4b: $fd
	ld   hl, sp+$00                                  ; $4c4c: $f8 $00
	ld   sp, hl                                      ; $4c4e: $f9
	inc  bc                                          ; $4c4f: $03
	ld   a, [$fd06]                                  ; $4c50: $fa $06 $fd
	rlca                                             ; $4c53: $07
	nop                                              ; $4c54: $00
	ld   [$0703], sp                                 ; $4c55: $08 $03 $07
	ld   b, $06                                      ; $4c58: $06 $06
	rlca                                             ; $4c5a: $07
	inc  bc                                          ; $4c5b: $03
	ld   [$0700], sp                                 ; $4c5c: $08 $00 $07
	db   $fd                                         ; $4c5f: $fd
	ld   b, $fa                                      ; $4c60: $06 $fa
	inc  bc                                          ; $4c62: $03
	ld   sp, hl                                      ; $4c63: $f9

Call_020_4c64:
	push bc                                          ; $4c64: $c5
	ld   e, b                                        ; $4c65: $58
	ld   a, [$ca71]                                  ; $4c66: $fa $71 $ca
	cp   $00                                         ; $4c69: $fe $00
	jr   nz, jr_020_4c72                             ; $4c6b: $20 $05

	ld   hl, $4c8d                                   ; $4c6d: $21 $8d $4c
	jr   jr_020_4c75                                 ; $4c70: $18 $03

jr_020_4c72:
	ld   hl, $4ccd                                   ; $4c72: $21 $cd $4c

jr_020_4c75:
	ld   b, $00                                      ; $4c75: $06 $00
	srl  c                                           ; $4c77: $cb $39
	srl  c                                           ; $4c79: $cb $39
	res  0, c                                        ; $4c7b: $cb $81
	add  hl, bc                                      ; $4c7d: $09
	ld   a, [hl+]                                    ; $4c7e: $2a
	ld   h, [hl]                                     ; $4c7f: $66
	ld   l, a                                        ; $4c80: $6f
	srl  e                                           ; $4c81: $cb $3b
	srl  e                                           ; $4c83: $cb $3b
	srl  e                                           ; $4c85: $cb $3b
	ld   d, $00                                      ; $4c87: $16 $00
	add  hl, de                                      ; $4c89: $19
	ld   a, [hl]                                     ; $4c8a: $7e
	pop  bc                                          ; $4c8b: $c1
	ret                                              ; $4c8c: $c9


	db   $fc                                         ; $4c8d: $fc
	ld   d, a                                        ; $4c8e: $57
	inc  e                                           ; $4c8f: $1c
	ld   e, b                                        ; $4c90: $58
	inc  a                                           ; $4c91: $3c
	ld   e, b                                        ; $4c92: $58
	ld   e, h                                        ; $4c93: $5c
	ld   e, b                                        ; $4c94: $58
	ld   a, h                                        ; $4c95: $7c
	ld   e, b                                        ; $4c96: $58
	sbc  h                                           ; $4c97: $9c
	ld   e, b                                        ; $4c98: $58
	cp   h                                           ; $4c99: $bc
	ld   e, b                                        ; $4c9a: $58
	call c, $fc58                                    ; $4c9b: $dc $58 $fc
	ld   e, b                                        ; $4c9e: $58
	inc  e                                           ; $4c9f: $1c
	ld   e, c                                        ; $4ca0: $59
	inc  a                                           ; $4ca1: $3c
	ld   e, c                                        ; $4ca2: $59
	ld   e, h                                        ; $4ca3: $5c
	ld   e, c                                        ; $4ca4: $59
	ld   a, h                                        ; $4ca5: $7c
	ld   e, c                                        ; $4ca6: $59
	sbc  h                                           ; $4ca7: $9c
	ld   e, c                                        ; $4ca8: $59
	cp   h                                           ; $4ca9: $bc
	ld   e, c                                        ; $4caa: $59
	call c, $fc59                                    ; $4cab: $dc $59 $fc
	ld   e, c                                        ; $4cae: $59
	inc  e                                           ; $4caf: $1c
	ld   e, d                                        ; $4cb0: $5a
	inc  a                                           ; $4cb1: $3c
	ld   e, d                                        ; $4cb2: $5a
	ld   e, h                                        ; $4cb3: $5c
	ld   e, d                                        ; $4cb4: $5a
	ld   a, h                                        ; $4cb5: $7c
	ld   e, d                                        ; $4cb6: $5a
	sbc  h                                           ; $4cb7: $9c
	ld   e, d                                        ; $4cb8: $5a
	cp   h                                           ; $4cb9: $bc
	ld   e, d                                        ; $4cba: $5a
	call c, $fc5a                                    ; $4cbb: $dc $5a $fc
	ld   e, d                                        ; $4cbe: $5a
	inc  e                                           ; $4cbf: $1c
	ld   e, e                                        ; $4cc0: $5b
	inc  a                                           ; $4cc1: $3c
	ld   e, e                                        ; $4cc2: $5b
	ld   e, h                                        ; $4cc3: $5c
	ld   e, e                                        ; $4cc4: $5b
	ld   a, h                                        ; $4cc5: $7c
	ld   e, e                                        ; $4cc6: $5b
	sbc  h                                           ; $4cc7: $9c
	ld   e, e                                        ; $4cc8: $5b
	cp   h                                           ; $4cc9: $bc
	ld   e, e                                        ; $4cca: $5b
	call c, $fc5b                                    ; $4ccb: $dc $5b $fc
	ld   e, e                                        ; $4cce: $5b
	inc  e                                           ; $4ccf: $1c
	ld   e, h                                        ; $4cd0: $5c
	inc  a                                           ; $4cd1: $3c
	ld   e, h                                        ; $4cd2: $5c
	ld   e, h                                        ; $4cd3: $5c
	ld   e, h                                        ; $4cd4: $5c
	ld   a, h                                        ; $4cd5: $7c
	ld   e, h                                        ; $4cd6: $5c
	sbc  h                                           ; $4cd7: $9c
	ld   e, h                                        ; $4cd8: $5c
	cp   h                                           ; $4cd9: $bc
	ld   e, h                                        ; $4cda: $5c
	call c, $fc5c                                    ; $4cdb: $dc $5c $fc
	ld   e, h                                        ; $4cde: $5c
	inc  e                                           ; $4cdf: $1c
	ld   e, l                                        ; $4ce0: $5d
	inc  a                                           ; $4ce1: $3c
	ld   e, l                                        ; $4ce2: $5d
	ld   e, h                                        ; $4ce3: $5c
	ld   e, l                                        ; $4ce4: $5d
	ld   a, h                                        ; $4ce5: $7c
	ld   e, l                                        ; $4ce6: $5d
	sbc  h                                           ; $4ce7: $9c
	ld   e, l                                        ; $4ce8: $5d
	cp   h                                           ; $4ce9: $bc
	ld   e, l                                        ; $4cea: $5d
	call c, $fc5d                                    ; $4ceb: $dc $5d $fc
	ld   e, l                                        ; $4cee: $5d
	inc  e                                           ; $4cef: $1c
	ld   e, [hl]                                     ; $4cf0: $5e
	inc  a                                           ; $4cf1: $3c
	ld   e, [hl]                                     ; $4cf2: $5e
	ld   e, h                                        ; $4cf3: $5c
	ld   e, [hl]                                     ; $4cf4: $5e
	ld   a, h                                        ; $4cf5: $7c
	ld   e, [hl]                                     ; $4cf6: $5e
	sbc  h                                           ; $4cf7: $9c
	ld   e, [hl]                                     ; $4cf8: $5e
	cp   h                                           ; $4cf9: $bc
	ld   e, [hl]                                     ; $4cfa: $5e
	call c, $fc5e                                    ; $4cfb: $dc $5e $fc
	ld   e, [hl]                                     ; $4cfe: $5e
	inc  e                                           ; $4cff: $1c
	ld   e, a                                        ; $4d00: $5f
	inc  a                                           ; $4d01: $3c
	ld   e, a                                        ; $4d02: $5f
	ld   e, h                                        ; $4d03: $5c
	ld   e, a                                        ; $4d04: $5f
	ld   a, h                                        ; $4d05: $7c
	ld   e, a                                        ; $4d06: $5f
	sbc  h                                           ; $4d07: $9c
	ld   e, a                                        ; $4d08: $5f
	cp   h                                           ; $4d09: $bc
	ld   e, a                                        ; $4d0a: $5f
	call c, $cd5f                                    ; $4d0b: $dc $5f $cd
	cp   b                                           ; $4d0e: $b8
	ld   c, l                                        ; $4d0f: $4d
	call Call_020_4f04                               ; $4d10: $cd $04 $4f
	call Call_020_4eac                               ; $4d13: $cd $ac $4e
	call Call_020_4d1a                               ; $4d16: $cd $1a $4d
	ret                                              ; $4d19: $c9


Call_020_4d1a:
	ld   a, [$caa1]                                  ; $4d1a: $fa $a1 $ca
	ld   b, a                                        ; $4d1d: $47
	ld   a, [$caa3]                                  ; $4d1e: $fa $a3 $ca
	ld   c, a                                        ; $4d21: $4f
	ld   a, [$ca6d]                                  ; $4d22: $fa $6d $ca
	ld   d, a                                        ; $4d25: $57
	ld   a, b                                        ; $4d26: $78
	add  d                                           ; $4d27: $82
	ld   b, a                                        ; $4d28: $47
	ld   a, [$ca6e]                                  ; $4d29: $fa $6e $ca
	ld   d, a                                        ; $4d2c: $57
	ld   a, c                                        ; $4d2d: $79
	add  d                                           ; $4d2e: $82
	ld   c, a                                        ; $4d2f: $4f
	call Call_020_4c64                               ; $4d30: $cd $64 $4c
	ld   hl, $cab5                                   ; $4d33: $21 $b5 $ca
	ld   b, [hl]                                     ; $4d36: $46
	and  $f0                                         ; $4d37: $e6 $f0
	cp   $e0                                         ; $4d39: $fe $e0
	jr   z, jr_020_4d47                              ; $4d3b: $28 $0a

	cp   $d0                                         ; $4d3d: $fe $d0
	jr   z, jr_020_4d8d                              ; $4d3f: $28 $4c

	cp   $c0                                         ; $4d41: $fe $c0
	jr   z, jr_020_4d9c                              ; $4d43: $28 $57

	jr   jr_020_4db3                                 ; $4d45: $18 $6c

jr_020_4d47:
	ld   a, b                                        ; $4d47: $78
	and  $48                                         ; $4d48: $e6 $48
	jr   nz, jr_020_4dab                             ; $4d4a: $20 $5f

	bit  5, b                                        ; $4d4c: $cb $68
	jr   nz, jr_020_4d76                             ; $4d4e: $20 $26

	bit  4, b                                        ; $4d50: $cb $60
	jr   z, jr_020_4db3                              ; $4d52: $28 $5f

	bit  1, b                                        ; $4d54: $cb $48
	jr   nz, jr_020_4d61                             ; $4d56: $20 $09

	ld   a, [$ca70]                                  ; $4d58: $fa $70 $ca
	and  a                                           ; $4d5b: $a7
	jr   nz, jr_020_4d61                             ; $4d5c: $20 $03

	call Call_020_4df6                               ; $4d5e: $cd $f6 $4d

jr_020_4d61:
	ld   hl, $cacc                                   ; $4d61: $21 $cc $ca
	ld   a, [hl]                                     ; $4d64: $7e
	cp   $03                                         ; $4d65: $fe $03
	jr   z, jr_020_4d6a                              ; $4d67: $28 $01

	inc  [hl]                                        ; $4d69: $34

jr_020_4d6a:
	ld   a, [$ca70]                                  ; $4d6a: $fa $70 $ca
	and  a                                           ; $4d6d: $a7
	jr   nz, jr_020_4d76                             ; $4d6e: $20 $06

	call Call_020_4e19                               ; $4d70: $cd $19 $4e
	call Call_020_4e5e                               ; $4d73: $cd $5e $4e

jr_020_4d76:
	ld   a, [$cacc]                                  ; $4d76: $fa $cc $ca
	and  a                                           ; $4d79: $a7
	jr   z, jr_020_4d83                              ; $4d7a: $28 $07

	xor  a                                           ; $4d7c: $af
	ld   [$caae], a                                  ; $4d7d: $ea $ae $ca
	ld   [$caaf], a                                  ; $4d80: $ea $af $ca

jr_020_4d83:
	res  1, b                                        ; $4d83: $cb $88

jr_020_4d85:
	res  5, b                                        ; $4d85: $cb $a8
	set  2, b                                        ; $4d87: $cb $d0
	res  4, b                                        ; $4d89: $cb $a0
	jr   jr_020_4db3                                 ; $4d8b: $18 $26

jr_020_4d8d:
	ld   a, b                                        ; $4d8d: $78
	and  $50                                         ; $4d8e: $e6 $50
	jr   nz, jr_020_4db1                             ; $4d90: $20 $1f

	bit  2, b                                        ; $4d92: $cb $50
	jr   z, jr_020_4db3                              ; $4d94: $28 $1d

	set  3, b                                        ; $4d96: $cb $d8
	res  2, b                                        ; $4d98: $cb $90
	jr   jr_020_4db3                                 ; $4d9a: $18 $17

jr_020_4d9c:
	ld   a, b                                        ; $4d9c: $78
	and  $44                                         ; $4d9d: $e6 $44
	jr   nz, jr_020_4db1                             ; $4d9f: $20 $10

	bit  3, b                                        ; $4da1: $cb $58
	jr   z, jr_020_4db3                              ; $4da3: $28 $0e

	set  4, b                                        ; $4da5: $cb $e0
	res  3, b                                        ; $4da7: $cb $98
	jr   jr_020_4db3                                 ; $4da9: $18 $08

jr_020_4dab:
	res  6, b                                        ; $4dab: $cb $b0
	res  3, b                                        ; $4dad: $cb $98
	jr   jr_020_4d85                                 ; $4daf: $18 $d4

jr_020_4db1:
	set  6, b                                        ; $4db1: $cb $f0

jr_020_4db3:
	ld   hl, $cab5                                   ; $4db3: $21 $b5 $ca
	ld   [hl], b                                     ; $4db6: $70
	ret                                              ; $4db7: $c9


	ld   d, $02                                      ; $4db8: $16 $02
	ld   a, [$cab4]                                  ; $4dba: $fa $b4 $ca
	inc  a                                           ; $4dbd: $3c
	cp   $03                                         ; $4dbe: $fe $03
	jr   nz, jr_020_4dc5                             ; $4dc0: $20 $03

	ld   d, $01                                      ; $4dc2: $16 $01
	xor  a                                           ; $4dc4: $af

jr_020_4dc5:
	ld   [$cab4], a                                  ; $4dc5: $ea $b4 $ca
	ld   a, [$caaf]                                  ; $4dc8: $fa $af $ca
	add  d                                           ; $4dcb: $82
	cp   $64                                         ; $4dcc: $fe $64
	jr   c, jr_020_4dd2                              ; $4dce: $38 $02

	sub  $64                                         ; $4dd0: $d6 $64

jr_020_4dd2:
	ld   [$caaf], a                                  ; $4dd2: $ea $af $ca
	or   a                                           ; $4dd5: $b7
	jr   nz, jr_020_4de8                             ; $4dd6: $20 $10

	ld   hl, $caae                                   ; $4dd8: $21 $ae $ca
	inc  [hl]                                        ; $4ddb: $34
	ld   a, [hl]                                     ; $4ddc: $7e
	cp   $3c                                         ; $4ddd: $fe $3c
	jr   nz, jr_020_4de8                             ; $4ddf: $20 $07

	xor  a                                           ; $4de1: $af
	ld   [hl], a                                     ; $4de2: $77
	ld   hl, $cab5                                   ; $4de3: $21 $b5 $ca
	set  1, [hl]                                     ; $4de6: $cb $ce

jr_020_4de8:
	ret                                              ; $4de8: $c9


Call_020_4de9:
	ld   d, $00                                      ; $4de9: $16 $00

jr_020_4deb:
	inc  d                                           ; $4deb: $14
	sub  $0a                                         ; $4dec: $d6 $0a
	cp   $80                                         ; $4dee: $fe $80
	jr   c, jr_020_4deb                              ; $4df0: $38 $f9

	add  $0a                                         ; $4df2: $c6 $0a
	ld   e, a                                        ; $4df4: $5f
	ret                                              ; $4df5: $c9


Call_020_4df6:
	ld   hl, $caab                                   ; $4df6: $21 $ab $ca
	ld   a, [$caae]                                  ; $4df9: $fa $ae $ca
	cp   [hl]                                        ; $4dfc: $be
	jr   z, jr_020_4e02                              ; $4dfd: $28 $03

	ret  nc                                          ; $4dff: $d0

	jr   jr_020_4e08                                 ; $4e00: $18 $06

jr_020_4e02:
	inc  hl                                          ; $4e02: $23
	ld   a, [$caaf]                                  ; $4e03: $fa $af $ca
	cp   [hl]                                        ; $4e06: $be
	ret  nc                                          ; $4e07: $d0

jr_020_4e08:
	ld   hl, $caac                                   ; $4e08: $21 $ac $ca
	ld   a, [$caaf]                                  ; $4e0b: $fa $af $ca
	ld   [hl-], a                                    ; $4e0e: $32
	ld   a, [$caae]                                  ; $4e0f: $fa $ae $ca
	ld   [hl-], a                                    ; $4e12: $32
	ld   a, $ff                                      ; $4e13: $3e $ff
	ld   [$ca75], a                                  ; $4e15: $ea $75 $ca
	ret                                              ; $4e18: $c9


Call_020_4e19:
	ld   bc, $0a02                                   ; $4e19: $01 $02 $0a
	ld   a, [$caab]                                  ; $4e1c: $fa $ab $ca
	call Call_020_4de9                               ; $4e1f: $cd $e9 $4d
	push de                                          ; $4e22: $d5
	xor  a                                           ; $4e23: $af
	ldh  [rVBK], a                                   ; $4e24: $e0 $4f
	ld   a, d                                        ; $4e26: $7a
	ld   d, $e3                                      ; $4e27: $16 $e3
	add  d                                           ; $4e29: $82
	call Call_020_552b                               ; $4e2a: $cd $2b $55
	pop  de                                          ; $4e2d: $d1
	ld   bc, $0b02                                   ; $4e2e: $01 $02 $0b
	xor  a                                           ; $4e31: $af
	ldh  [rVBK], a                                   ; $4e32: $e0 $4f
	ld   a, e                                        ; $4e34: $7b
	ld   d, $e4                                      ; $4e35: $16 $e4
	add  d                                           ; $4e37: $82
	call Call_020_552b                               ; $4e38: $cd $2b $55
	ld   bc, $0d02                                   ; $4e3b: $01 $02 $0d
	ld   a, [$caac]                                  ; $4e3e: $fa $ac $ca
	call Call_020_4de9                               ; $4e41: $cd $e9 $4d
	push de                                          ; $4e44: $d5
	xor  a                                           ; $4e45: $af
	ldh  [rVBK], a                                   ; $4e46: $e0 $4f
	ld   a, d                                        ; $4e48: $7a
	ld   d, $e3                                      ; $4e49: $16 $e3
	add  d                                           ; $4e4b: $82
	call Call_020_552b                               ; $4e4c: $cd $2b $55
	pop  de                                          ; $4e4f: $d1
	ld   bc, $0e02                                   ; $4e50: $01 $02 $0e
	xor  a                                           ; $4e53: $af
	ldh  [rVBK], a                                   ; $4e54: $e0 $4f
	ld   a, e                                        ; $4e56: $7b
	ld   d, $e4                                      ; $4e57: $16 $e4
	add  d                                           ; $4e59: $82
	call Call_020_552b                               ; $4e5a: $cd $2b $55
	ret                                              ; $4e5d: $c9


Call_020_4e5e:
	ld   a, [$cacc]                                  ; $4e5e: $fa $cc $ca
	cp   $03                                         ; $4e61: $fe $03
	ret  nc                                          ; $4e63: $d0

	xor  a                                           ; $4e64: $af
	ldh  [rVBK], a                                   ; $4e65: $e0 $4f
	ld   bc, $1101                                   ; $4e67: $01 $01 $11
	ld   d, $f0                                      ; $4e6a: $16 $f0
	ld   a, [$cacc]                                  ; $4e6c: $fa $cc $ca
	inc  a                                           ; $4e6f: $3c
	sla  a                                           ; $4e70: $cb $27
	sla  a                                           ; $4e72: $cb $27
	add  d                                           ; $4e74: $82
	call Call_020_552b                               ; $4e75: $cd $2b $55
	ld   bc, $1201                                   ; $4e78: $01 $01 $12
	ld   d, $f1                                      ; $4e7b: $16 $f1
	ld   a, [$cacc]                                  ; $4e7d: $fa $cc $ca
	inc  a                                           ; $4e80: $3c
	sla  a                                           ; $4e81: $cb $27
	sla  a                                           ; $4e83: $cb $27
	add  d                                           ; $4e85: $82
	call Call_020_552b                               ; $4e86: $cd $2b $55
	ld   bc, $1102                                   ; $4e89: $01 $02 $11
	ld   d, $f2                                      ; $4e8c: $16 $f2
	ld   a, [$cacc]                                  ; $4e8e: $fa $cc $ca
	inc  a                                           ; $4e91: $3c
	sla  a                                           ; $4e92: $cb $27
	sla  a                                           ; $4e94: $cb $27
	add  d                                           ; $4e96: $82
	call Call_020_552b                               ; $4e97: $cd $2b $55
	ld   bc, $1202                                   ; $4e9a: $01 $02 $12
	ld   d, $f3                                      ; $4e9d: $16 $f3
	ld   a, [$cacc]                                  ; $4e9f: $fa $cc $ca
	inc  a                                           ; $4ea2: $3c
	sla  a                                           ; $4ea3: $cb $27
	sla  a                                           ; $4ea5: $cb $27
	add  d                                           ; $4ea7: $82
	call Call_020_552b                               ; $4ea8: $cd $2b $55
	ret                                              ; $4eab: $c9


Call_020_4eac:
	ld   a, [$cab0]                                  ; $4eac: $fa $b0 $ca
	call Call_020_4de9                               ; $4eaf: $cd $e9 $4d
	ld   bc, $0901                                   ; $4eb2: $01 $01 $09
	xor  a                                           ; $4eb5: $af
	ldh  [rVBK], a                                   ; $4eb6: $e0 $4f
	ld   a, e                                        ; $4eb8: $7b
	ld   d, $e4                                      ; $4eb9: $16 $e4
	add  d                                           ; $4ebb: $82
	call Call_020_552b                               ; $4ebc: $cd $2b $55
	ld   bc, $0b01                                   ; $4ebf: $01 $01 $0b
	ld   a, [$cab1]                                  ; $4ec2: $fa $b1 $ca
	call Call_020_4de9                               ; $4ec5: $cd $e9 $4d
	push de                                          ; $4ec8: $d5
	xor  a                                           ; $4ec9: $af
	ldh  [rVBK], a                                   ; $4eca: $e0 $4f
	ld   a, d                                        ; $4ecc: $7a
	ld   d, $e3                                      ; $4ecd: $16 $e3
	add  d                                           ; $4ecf: $82
	call Call_020_552b                               ; $4ed0: $cd $2b $55
	pop  de                                          ; $4ed3: $d1
	ld   bc, $0c01                                   ; $4ed4: $01 $01 $0c
	xor  a                                           ; $4ed7: $af
	ldh  [rVBK], a                                   ; $4ed8: $e0 $4f
	ld   a, e                                        ; $4eda: $7b
	ld   d, $e4                                      ; $4edb: $16 $e4
	add  d                                           ; $4edd: $82
	call Call_020_552b                               ; $4ede: $cd $2b $55
	ld   bc, $0e01                                   ; $4ee1: $01 $01 $0e
	ld   a, [$cab2]                                  ; $4ee4: $fa $b2 $ca
	call Call_020_4de9                               ; $4ee7: $cd $e9 $4d
	push de                                          ; $4eea: $d5
	xor  a                                           ; $4eeb: $af
	ldh  [rVBK], a                                   ; $4eec: $e0 $4f
	ld   a, d                                        ; $4eee: $7a
	ld   d, $e3                                      ; $4eef: $16 $e3
	add  d                                           ; $4ef1: $82
	call Call_020_552b                               ; $4ef2: $cd $2b $55
	pop  de                                          ; $4ef5: $d1
	ld   bc, $0f01                                   ; $4ef6: $01 $01 $0f
	xor  a                                           ; $4ef9: $af
	ldh  [rVBK], a                                   ; $4efa: $e0 $4f
	ld   a, e                                        ; $4efc: $7b
	ld   d, $e4                                      ; $4efd: $16 $e4
	add  d                                           ; $4eff: $82
	call Call_020_552b                               ; $4f00: $cd $2b $55
	ret                                              ; $4f03: $c9


Call_020_4f04:
	ld   d, $02                                      ; $4f04: $16 $02
	ld   a, [$cab3]                                  ; $4f06: $fa $b3 $ca
	inc  a                                           ; $4f09: $3c
	cp   $03                                         ; $4f0a: $fe $03
	jr   nz, jr_020_4f11                             ; $4f0c: $20 $03

	ld   d, $01                                      ; $4f0e: $16 $01
	xor  a                                           ; $4f10: $af

jr_020_4f11:
	ld   [$cab3], a                                  ; $4f11: $ea $b3 $ca
	ld   a, [$cab2]                                  ; $4f14: $fa $b2 $ca
	add  d                                           ; $4f17: $82
	ld   d, a                                        ; $4f18: $57
	cp   $64                                         ; $4f19: $fe $64
	jr   c, jr_020_4f20                              ; $4f1b: $38 $03

	sub  $64                                         ; $4f1d: $d6 $64
	ld   d, a                                        ; $4f1f: $57

jr_020_4f20:
	ld   a, [$cab0]                                  ; $4f20: $fa $b0 $ca
	cp   $09                                         ; $4f23: $fe $09
	jr   nz, jr_020_4f2e                             ; $4f25: $20 $07

	ld   a, [$cab1]                                  ; $4f27: $fa $b1 $ca
	cp   $3b                                         ; $4f2a: $fe $3b
	jr   z, jr_020_4f49                              ; $4f2c: $28 $1b

jr_020_4f2e:
	ld   a, d                                        ; $4f2e: $7a
	ld   [$cab2], a                                  ; $4f2f: $ea $b2 $ca
	or   a                                           ; $4f32: $b7
	jr   nz, jr_020_4f49                             ; $4f33: $20 $14

	ld   hl, $cab1                                   ; $4f35: $21 $b1 $ca
	inc  [hl]                                        ; $4f38: $34
	ld   a, [hl]                                     ; $4f39: $7e
	cp   $3c                                         ; $4f3a: $fe $3c
	jr   nz, jr_020_4f49                             ; $4f3c: $20 $0b

	xor  a                                           ; $4f3e: $af
	ld   [hl], a                                     ; $4f3f: $77
	ld   hl, $cab0                                   ; $4f40: $21 $b0 $ca
	inc  [hl]                                        ; $4f43: $34
	ld   hl, $cab5                                   ; $4f44: $21 $b5 $ca
	set  1, [hl]                                     ; $4f47: $cb $ce

jr_020_4f49:
	ret                                              ; $4f49: $c9


	ld   hl, $cab5                                   ; $4f4a: $21 $b5 $ca
	bit  7, [hl]                                     ; $4f4d: $cb $7e
	ret  nz                                          ; $4f4f: $c0

	ld   d, $02                                      ; $4f50: $16 $02
	ld   a, [$cab3]                                  ; $4f52: $fa $b3 $ca
	inc  a                                           ; $4f55: $3c
	cp   $03                                         ; $4f56: $fe $03
	jr   nz, jr_020_4f5d                             ; $4f58: $20 $03

	ld   d, $01                                      ; $4f5a: $16 $01
	xor  a                                           ; $4f5c: $af

jr_020_4f5d:
	ld   [$cab3], a                                  ; $4f5d: $ea $b3 $ca
	ld   a, [$cab2]                                  ; $4f60: $fa $b2 $ca
	sub  d                                           ; $4f63: $92
	cp   $64                                         ; $4f64: $fe $64
	jr   c, jr_020_4f6a                              ; $4f66: $38 $02

	add  $64                                         ; $4f68: $c6 $64

jr_020_4f6a:
	ld   [$cab2], a                                  ; $4f6a: $ea $b2 $ca
	cp   $62                                         ; $4f6d: $fe $62
	jr   nz, jr_020_4f82                             ; $4f6f: $20 $11

	ld   hl, $cab1                                   ; $4f71: $21 $b1 $ca
	dec  [hl]                                        ; $4f74: $35
	ld   a, [hl]                                     ; $4f75: $7e
	cp   $ff                                         ; $4f76: $fe $ff
	jr   nz, jr_020_4f82                             ; $4f78: $20 $08

	xor  a                                           ; $4f7a: $af
	ld   [hl+], a                                    ; $4f7b: $22
	ld   [hl], a                                     ; $4f7c: $77
	ld   hl, $cab5                                   ; $4f7d: $21 $b5 $ca
	set  7, [hl]                                     ; $4f80: $cb $fe

jr_020_4f82:
	ret                                              ; $4f82: $c9


Call_020_4f83:
	xor  a                                           ; $4f83: $af
	ld   [$ca6f], a                                  ; $4f84: $ea $6f $ca
	ld   a, [$caa1]                                  ; $4f87: $fa $a1 $ca
	cp   $2b                                         ; $4f8a: $fe $2b
	jr   nc, jr_020_4fa0                             ; $4f8c: $30 $12

	ld   a, [wSCX]                                  ; $4f8e: $fa $07 $c2
	cp   $00                                         ; $4f91: $fe $00
	jr   z, jr_020_4fa0                              ; $4f93: $28 $0b

	call Call_020_4ff3                               ; $4f95: $cd $f3 $4f
	ld   a, [$ca6f]                                  ; $4f98: $fa $6f $ca
	or   $01                                         ; $4f9b: $f6 $01
	ld   [$ca6f], a                                  ; $4f9d: $ea $6f $ca

jr_020_4fa0:
	ld   a, [$caa3]                                  ; $4fa0: $fa $a3 $ca
	cp   $35                                         ; $4fa3: $fe $35
	jr   nc, jr_020_4fb9                             ; $4fa5: $30 $12

	ld   a, [wSCY]                                  ; $4fa7: $fa $08 $c2
	cp   $00                                         ; $4faa: $fe $00
	jr   z, jr_020_4fb9                              ; $4fac: $28 $0b

	call Call_020_5026                               ; $4fae: $cd $26 $50
	ld   a, [$ca6f]                                  ; $4fb1: $fa $6f $ca
	or   $02                                         ; $4fb4: $f6 $02
	ld   [$ca6f], a                                  ; $4fb6: $ea $6f $ca

jr_020_4fb9:
	ld   a, [$caa1]                                  ; $4fb9: $fa $a1 $ca
	cp   $70                                         ; $4fbc: $fe $70
	jr   c, jr_020_4fd2                              ; $4fbe: $38 $12

	ld   a, [wSCX]                                  ; $4fc0: $fa $07 $c2
	cp   $60                                         ; $4fc3: $fe $60
	jr   z, jr_020_4fd2                              ; $4fc5: $28 $0b

	call Call_020_5059                               ; $4fc7: $cd $59 $50
	ld   a, [$ca6f]                                  ; $4fca: $fa $6f $ca
	or   $04                                         ; $4fcd: $f6 $04
	ld   [$ca6f], a                                  ; $4fcf: $ea $6f $ca

jr_020_4fd2:
	ld   a, [$caa3]                                  ; $4fd2: $fa $a3 $ca
	cp   $40                                         ; $4fd5: $fe $40
	jr   c, jr_020_4feb                              ; $4fd7: $38 $12

	ld   a, [wSCY]                                  ; $4fd9: $fa $08 $c2
	cp   $90                                         ; $4fdc: $fe $90
	jr   z, jr_020_4feb                              ; $4fde: $28 $0b

	call Call_020_508c                               ; $4fe0: $cd $8c $50
	ld   a, [$ca6f]                                  ; $4fe3: $fa $6f $ca
	or   $08                                         ; $4fe6: $f6 $08
	ld   [$ca6f], a                                  ; $4fe8: $ea $6f $ca

jr_020_4feb:
	ld   a, [$ca6f]                                  ; $4feb: $fa $6f $ca
	cp   $00                                         ; $4fee: $fe $00
	ret  z                                           ; $4ff0: $c8

	scf                                              ; $4ff1: $37
	ret                                              ; $4ff2: $c9


Call_020_4ff3:
	ld   a, [wSCX]                                  ; $4ff3: $fa $07 $c2
	dec  a                                           ; $4ff6: $3d
	ld   [wSCX], a                                  ; $4ff7: $ea $07 $c2
	ld   [$ca6d], a                                  ; $4ffa: $ea $6d $ca
	ld   hl, $caa1                                   ; $4ffd: $21 $a1 $ca
	inc  [hl]                                        ; $5000: $34
	ld   hl, $cad7                                   ; $5001: $21 $d7 $ca
	inc  [hl]                                        ; $5004: $34
	ld   hl, $caba                                   ; $5005: $21 $ba $ca
	inc  [hl]                                        ; $5008: $34
	ld   hl, $cac0                                   ; $5009: $21 $c0 $ca
	inc  [hl]                                        ; $500c: $34
	ld   hl, $cac6                                   ; $500d: $21 $c6 $ca
	inc  [hl]                                        ; $5010: $34
	ld   hl, $caf0                                   ; $5011: $21 $f0 $ca
	inc  [hl]                                        ; $5014: $34
	ld   hl, $caf6                                   ; $5015: $21 $f6 $ca
	inc  [hl]                                        ; $5018: $34
	ld   hl, $cafc                                   ; $5019: $21 $fc $ca
	inc  [hl]                                        ; $501c: $34
	ld   a, [$ca6f]                                  ; $501d: $fa $6f $ca
	or   $01                                         ; $5020: $f6 $01
	ld   [$ca6f], a                                  ; $5022: $ea $6f $ca
	ret                                              ; $5025: $c9


Call_020_5026:
	ld   a, [wSCY]                                  ; $5026: $fa $08 $c2
	dec  a                                           ; $5029: $3d
	ld   [wSCY], a                                  ; $502a: $ea $08 $c2
	ld   [$ca6e], a                                  ; $502d: $ea $6e $ca
	ld   hl, $caa3                                   ; $5030: $21 $a3 $ca
	inc  [hl]                                        ; $5033: $34
	ld   hl, $cad9                                   ; $5034: $21 $d9 $ca
	inc  [hl]                                        ; $5037: $34
	ld   hl, $cabb                                   ; $5038: $21 $bb $ca
	inc  [hl]                                        ; $503b: $34
	ld   hl, $cac1                                   ; $503c: $21 $c1 $ca
	inc  [hl]                                        ; $503f: $34
	ld   hl, $cac7                                   ; $5040: $21 $c7 $ca
	inc  [hl]                                        ; $5043: $34
	ld   hl, $caf1                                   ; $5044: $21 $f1 $ca
	inc  [hl]                                        ; $5047: $34
	ld   hl, $caf7                                   ; $5048: $21 $f7 $ca
	inc  [hl]                                        ; $504b: $34
	ld   hl, $cafd                                   ; $504c: $21 $fd $ca
	inc  [hl]                                        ; $504f: $34
	ld   a, [$ca6f]                                  ; $5050: $fa $6f $ca
	or   $02                                         ; $5053: $f6 $02
	ld   [$ca6f], a                                  ; $5055: $ea $6f $ca
	ret                                              ; $5058: $c9


Call_020_5059:
	ld   a, [wSCX]                                  ; $5059: $fa $07 $c2
	inc  a                                           ; $505c: $3c
	ld   [wSCX], a                                  ; $505d: $ea $07 $c2
	ld   [$ca6d], a                                  ; $5060: $ea $6d $ca
	ld   hl, $caa1                                   ; $5063: $21 $a1 $ca
	dec  [hl]                                        ; $5066: $35
	ld   hl, $cad7                                   ; $5067: $21 $d7 $ca
	dec  [hl]                                        ; $506a: $35
	ld   hl, $caba                                   ; $506b: $21 $ba $ca
	dec  [hl]                                        ; $506e: $35
	ld   hl, $cac0                                   ; $506f: $21 $c0 $ca
	dec  [hl]                                        ; $5072: $35
	ld   hl, $cac6                                   ; $5073: $21 $c6 $ca
	dec  [hl]                                        ; $5076: $35
	ld   hl, $caf0                                   ; $5077: $21 $f0 $ca
	dec  [hl]                                        ; $507a: $35
	ld   hl, $caf6                                   ; $507b: $21 $f6 $ca
	dec  [hl]                                        ; $507e: $35
	ld   hl, $cafc                                   ; $507f: $21 $fc $ca
	dec  [hl]                                        ; $5082: $35
	ld   a, [$ca6f]                                  ; $5083: $fa $6f $ca
	or   $04                                         ; $5086: $f6 $04
	ld   [$ca6f], a                                  ; $5088: $ea $6f $ca
	ret                                              ; $508b: $c9


Call_020_508c:
	ld   a, [wSCY]                                  ; $508c: $fa $08 $c2
	inc  a                                           ; $508f: $3c
	ld   [wSCY], a                                  ; $5090: $ea $08 $c2
	ld   [$ca6e], a                                  ; $5093: $ea $6e $ca
	ld   hl, $caa3                                   ; $5096: $21 $a3 $ca
	dec  [hl]                                        ; $5099: $35
	ld   hl, $cad9                                   ; $509a: $21 $d9 $ca
	dec  [hl]                                        ; $509d: $35
	ld   hl, $cabb                                   ; $509e: $21 $bb $ca
	dec  [hl]                                        ; $50a1: $35
	ld   hl, $cac1                                   ; $50a2: $21 $c1 $ca
	dec  [hl]                                        ; $50a5: $35
	ld   hl, $cac7                                   ; $50a6: $21 $c7 $ca
	dec  [hl]                                        ; $50a9: $35
	ld   hl, $caf1                                   ; $50aa: $21 $f1 $ca
	dec  [hl]                                        ; $50ad: $35
	ld   hl, $caf7                                   ; $50ae: $21 $f7 $ca
	dec  [hl]                                        ; $50b1: $35
	ld   hl, $cafd                                   ; $50b2: $21 $fd $ca
	dec  [hl]                                        ; $50b5: $35
	ld   a, [$ca6f]                                  ; $50b6: $fa $6f $ca
	or   $08                                         ; $50b9: $f6 $08
	ld   [$ca6f], a                                  ; $50bb: $ea $6f $ca
	ret                                              ; $50be: $c9


Call_020_50bf:
	ld   hl, $510b                                   ; $50bf: $21 $0b $51
	jr   jr_020_50c7                                 ; $50c2: $18 $03

Call_020_50c4:
	ld   hl, $512b                                   ; $50c4: $21 $2b $51

jr_020_50c7:
	ld   a, [$ca99]                                  ; $50c7: $fa $99 $ca
	and  $0f                                         ; $50ca: $e6 $0f
	ld   b, a                                        ; $50cc: $47
	ld   a, $0a                                      ; $50cd: $3e $0a
	sub  b                                           ; $50cf: $90
	ld   b, a                                        ; $50d0: $47
	ld   a, [$cacb]                                  ; $50d1: $fa $cb $ca
	inc  a                                           ; $50d4: $3c
	cp   b                                           ; $50d5: $b8
	jr   c, jr_020_50e5                              ; $50d6: $38 $0d

	ld   a, [$caca]                                  ; $50d8: $fa $ca $ca
	inc  a                                           ; $50db: $3c
	cp   $04                                         ; $50dc: $fe $04
	jr   nz, jr_020_50e1                             ; $50de: $20 $01

	xor  a                                           ; $50e0: $af

jr_020_50e1:
	ld   [$caca], a                                  ; $50e1: $ea $ca $ca
	xor  a                                           ; $50e4: $af

jr_020_50e5:
	ld   [$cacb], a                                  ; $50e5: $ea $cb $ca
	ld   a, [$ca9b]                                  ; $50e8: $fa $9b $ca
	ld   e, a                                        ; $50eb: $5f
	ld   d, $00                                      ; $50ec: $16 $00
	sla  e                                           ; $50ee: $cb $23
	add  hl, de                                      ; $50f0: $19
	ld   a, [hl+]                                    ; $50f1: $2a
	ld   h, [hl]                                     ; $50f2: $66
	ld   l, a                                        ; $50f3: $6f
	ld   a, [$caca]                                  ; $50f4: $fa $ca $ca
	ld   e, a                                        ; $50f7: $5f
	add  hl, de                                      ; $50f8: $19
	ld   a, $03                                      ; $50f9: $3e $03
	ld   [wSpriteGroup], a                                  ; $50fb: $ea $1a $c2
	ld   a, [$caa1]                                  ; $50fe: $fa $a1 $ca
	ld   b, a                                        ; $5101: $47
	ld   a, [$caa3]                                  ; $5102: $fa $a3 $ca
	ld   c, a                                        ; $5105: $4f
	ld   a, [hl]                                     ; $5106: $7e
	call LoadSpriteFromMainTable                                       ; $5107: $cd $16 $0e
	ret                                              ; $510a: $c9


	ld   l, e                                        ; $510b: $6b
	ld   d, c                                        ; $510c: $51
	ld   l, a                                        ; $510d: $6f
	ld   d, c                                        ; $510e: $51
	ld   [hl], e                                     ; $510f: $73
	ld   d, c                                        ; $5110: $51
	ld   [hl], a                                     ; $5111: $77
	ld   d, c                                        ; $5112: $51
	ld   a, e                                        ; $5113: $7b
	ld   d, c                                        ; $5114: $51
	ld   a, a                                        ; $5115: $7f
	ld   d, c                                        ; $5116: $51
	add  e                                           ; $5117: $83
	ld   d, c                                        ; $5118: $51
	add  a                                           ; $5119: $87
	ld   d, c                                        ; $511a: $51
	ld   c, e                                        ; $511b: $4b
	ld   d, c                                        ; $511c: $51
	ld   c, a                                        ; $511d: $4f
	ld   d, c                                        ; $511e: $51
	ld   d, e                                        ; $511f: $53
	ld   d, c                                        ; $5120: $51
	ld   d, a                                        ; $5121: $57
	ld   d, c                                        ; $5122: $51
	ld   e, e                                        ; $5123: $5b
	ld   d, c                                        ; $5124: $51
	ld   e, a                                        ; $5125: $5f
	ld   d, c                                        ; $5126: $51
	ld   h, e                                        ; $5127: $63
	ld   d, c                                        ; $5128: $51
	ld   h, a                                        ; $5129: $67
	ld   d, c                                        ; $512a: $51
	xor  e                                           ; $512b: $ab
	ld   d, c                                        ; $512c: $51
	xor  a                                           ; $512d: $af
	ld   d, c                                        ; $512e: $51
	or   e                                           ; $512f: $b3
	ld   d, c                                        ; $5130: $51
	or   a                                           ; $5131: $b7
	ld   d, c                                        ; $5132: $51
	cp   e                                           ; $5133: $bb
	ld   d, c                                        ; $5134: $51
	cp   a                                           ; $5135: $bf
	ld   d, c                                        ; $5136: $51
	jp   $c751                                       ; $5137: $c3 $51 $c7


	ld   d, c                                        ; $513a: $51
	adc  e                                           ; $513b: $8b
	ld   d, c                                        ; $513c: $51
	adc  a                                           ; $513d: $8f
	ld   d, c                                        ; $513e: $51
	sub  e                                           ; $513f: $93
	ld   d, c                                        ; $5140: $51
	sub  a                                           ; $5141: $97
	ld   d, c                                        ; $5142: $51
	sbc  e                                           ; $5143: $9b
	ld   d, c                                        ; $5144: $51
	sbc  a                                           ; $5145: $9f
	ld   d, c                                        ; $5146: $51
	and  e                                           ; $5147: $a3
	ld   d, c                                        ; $5148: $51
	and  a                                           ; $5149: $a7
	ld   d, c                                        ; $514a: $51
	ld   c, e                                        ; $514b: $4b
	ld   c, h                                        ; $514c: $4c
	ld   c, e                                        ; $514d: $4b
	ld   c, l                                        ; $514e: $4d
	ld   c, e                                        ; $514f: $4b
	ld   c, h                                        ; $5150: $4c
	ld   c, e                                        ; $5151: $4b
	ld   c, l                                        ; $5152: $4d
	ld   c, [hl]                                     ; $5153: $4e
	ld   c, a                                        ; $5154: $4f
	ld   c, [hl]                                     ; $5155: $4e
	ld   d, b                                        ; $5156: $50
	ld   c, [hl]                                     ; $5157: $4e
	ld   c, a                                        ; $5158: $4f
	ld   c, [hl]                                     ; $5159: $4e
	ld   d, b                                        ; $515a: $50
	ld   d, c                                        ; $515b: $51
	ld   d, d                                        ; $515c: $52
	ld   d, c                                        ; $515d: $51
	ld   d, e                                        ; $515e: $53
	ld   d, c                                        ; $515f: $51
	ld   d, d                                        ; $5160: $52
	ld   d, c                                        ; $5161: $51
	ld   d, e                                        ; $5162: $53
	ld   d, h                                        ; $5163: $54
	ld   d, l                                        ; $5164: $55
	ld   d, h                                        ; $5165: $54
	ld   d, [hl]                                     ; $5166: $56
	ld   d, h                                        ; $5167: $54
	ld   d, l                                        ; $5168: $55
	ld   d, h                                        ; $5169: $54
	ld   d, [hl]                                     ; $516a: $56
	ld   d, a                                        ; $516b: $57
	ld   e, b                                        ; $516c: $58
	ld   d, a                                        ; $516d: $57
	ld   e, c                                        ; $516e: $59
	ld   d, a                                        ; $516f: $57
	ld   e, b                                        ; $5170: $58
	ld   d, a                                        ; $5171: $57
	ld   e, c                                        ; $5172: $59
	ld   e, d                                        ; $5173: $5a
	ld   e, e                                        ; $5174: $5b
	ld   e, d                                        ; $5175: $5a
	ld   e, h                                        ; $5176: $5c
	ld   e, d                                        ; $5177: $5a
	ld   e, e                                        ; $5178: $5b
	ld   e, d                                        ; $5179: $5a
	ld   e, h                                        ; $517a: $5c
	ld   e, l                                        ; $517b: $5d
	ld   e, [hl]                                     ; $517c: $5e
	ld   e, l                                        ; $517d: $5d
	ld   e, a                                        ; $517e: $5f
	ld   e, l                                        ; $517f: $5d
	ld   e, [hl]                                     ; $5180: $5e
	ld   e, l                                        ; $5181: $5d
	ld   e, a                                        ; $5182: $5f
	ld   h, b                                        ; $5183: $60
	ld   h, c                                        ; $5184: $61
	ld   h, b                                        ; $5185: $60
	ld   h, d                                        ; $5186: $62
	ld   h, b                                        ; $5187: $60
	ld   h, c                                        ; $5188: $61
	ld   h, b                                        ; $5189: $60
	ld   h, d                                        ; $518a: $62
	ld   h, e                                        ; $518b: $63
	ld   h, h                                        ; $518c: $64
	ld   h, e                                        ; $518d: $63
	ld   h, l                                        ; $518e: $65
	ld   h, e                                        ; $518f: $63
	ld   h, h                                        ; $5190: $64
	ld   h, e                                        ; $5191: $63
	ld   h, l                                        ; $5192: $65
	ld   h, [hl]                                     ; $5193: $66
	ld   h, a                                        ; $5194: $67
	ld   h, [hl]                                     ; $5195: $66
	ld   l, b                                        ; $5196: $68
	ld   h, [hl]                                     ; $5197: $66
	ld   h, a                                        ; $5198: $67
	ld   h, [hl]                                     ; $5199: $66
	ld   l, b                                        ; $519a: $68
	ld   l, c                                        ; $519b: $69
	ld   l, d                                        ; $519c: $6a
	ld   l, c                                        ; $519d: $69
	ld   l, e                                        ; $519e: $6b
	ld   l, c                                        ; $519f: $69
	ld   l, d                                        ; $51a0: $6a
	ld   l, c                                        ; $51a1: $69
	ld   l, e                                        ; $51a2: $6b
	ld   l, h                                        ; $51a3: $6c
	ld   l, l                                        ; $51a4: $6d
	ld   l, h                                        ; $51a5: $6c
	ld   l, [hl]                                     ; $51a6: $6e
	ld   l, h                                        ; $51a7: $6c
	ld   l, l                                        ; $51a8: $6d
	ld   l, h                                        ; $51a9: $6c
	ld   l, [hl]                                     ; $51aa: $6e
	ld   l, a                                        ; $51ab: $6f
	ld   [hl], b                                     ; $51ac: $70
	ld   l, a                                        ; $51ad: $6f
	ld   [hl], c                                     ; $51ae: $71
	ld   l, a                                        ; $51af: $6f
	ld   [hl], b                                     ; $51b0: $70
	ld   l, a                                        ; $51b1: $6f
	ld   [hl], c                                     ; $51b2: $71
	ld   [hl], d                                     ; $51b3: $72
	ld   [hl], e                                     ; $51b4: $73
	ld   [hl], d                                     ; $51b5: $72
	ld   [hl], h                                     ; $51b6: $74
	ld   [hl], d                                     ; $51b7: $72
	ld   [hl], e                                     ; $51b8: $73
	ld   [hl], d                                     ; $51b9: $72
	ld   [hl], h                                     ; $51ba: $74
	ld   [hl], l                                     ; $51bb: $75
	halt                                             ; $51bc: $76
	ld   [hl], l                                     ; $51bd: $75
	ld   [hl], a                                     ; $51be: $77
	ld   [hl], l                                     ; $51bf: $75
	halt                                             ; $51c0: $76
	ld   [hl], l                                     ; $51c1: $75
	ld   [hl], a                                     ; $51c2: $77
	ld   a, b                                        ; $51c3: $78
	ld   a, c                                        ; $51c4: $79
	ld   a, b                                        ; $51c5: $78
	ld   a, d                                        ; $51c6: $7a
	ld   a, b                                        ; $51c7: $78
	ld   a, c                                        ; $51c8: $79
	ld   a, b                                        ; $51c9: $78
	ld   a, d                                        ; $51ca: $7a

Call_020_51cb:
	ld   a, [hl+]                                    ; $51cb: $2a
	ld   [de], a                                     ; $51cc: $12
	inc  de                                          ; $51cd: $13
	ld   a, [hl+]                                    ; $51ce: $2a
	ld   [de], a                                     ; $51cf: $12
	inc  de                                          ; $51d0: $13
	xor  a                                           ; $51d1: $af
	ld   [de], a                                     ; $51d2: $12
	inc  de                                          ; $51d3: $13
	ld   a, [$caa1]                                  ; $51d4: $fa $a1 $ca
	ld   [de], a                                     ; $51d7: $12
	inc  de                                          ; $51d8: $13
	ld   a, [$caa3]                                  ; $51d9: $fa $a3 $ca
	add  $08                                         ; $51dc: $c6 $08
	ld   [de], a                                     ; $51de: $12
	ret                                              ; $51df: $c9


Call_020_51e0:
	ld   a, [de]                                     ; $51e0: $1a
	and  a                                           ; $51e1: $a7
	ret  z                                           ; $51e2: $c8

	dec  a                                           ; $51e3: $3d
	ld   [de], a                                     ; $51e4: $12
	ret  nz                                          ; $51e5: $c0

	push de                                          ; $51e6: $d5
	inc  de                                          ; $51e7: $13
	inc  de                                          ; $51e8: $13
	ld   a, [de]                                     ; $51e9: $1a
	inc  a                                           ; $51ea: $3c
	ld   [de], a                                     ; $51eb: $12
	ld   c, a                                        ; $51ec: $4f
	ld   b, $00                                      ; $51ed: $06 $00
	sla  c                                           ; $51ef: $cb $21
	rl   b                                           ; $51f1: $cb $10
	add  hl, bc                                      ; $51f3: $09
	ld   a, [hl+]                                    ; $51f4: $2a
	pop  de                                          ; $51f5: $d1
	and  a                                           ; $51f6: $a7
	scf                                              ; $51f7: $37
	ret  z                                           ; $51f8: $c8

	push de                                          ; $51f9: $d5
	ld   [de], a                                     ; $51fa: $12
	inc  de                                          ; $51fb: $13
	ld   a, [hl+]                                    ; $51fc: $2a
	ld   [de], a                                     ; $51fd: $12
	pop  de                                          ; $51fe: $d1
	ret                                              ; $51ff: $c9


Call_020_5200:
	cp   $06                                         ; $5200: $fe $06
	ret  c                                           ; $5202: $d8

	ld   [$ca42], a                                  ; $5203: $ea $42 $ca
	ld   hl, $cac9                                   ; $5206: $21 $c9 $ca
	dec  [hl]                                        ; $5209: $35
	ret  nz                                          ; $520a: $c0

	ld   [hl], $08                                   ; $520b: $36 $08
	ld   a, [$cab6]                                  ; $520d: $fa $b6 $ca
	and  a                                           ; $5210: $a7
	jr   nz, jr_020_5222                             ; $5211: $20 $0f

	ld   a, $ff                                      ; $5213: $3e $ff
	ld   [$cab6], a                                  ; $5215: $ea $b6 $ca
	ld   hl, $524c                                   ; $5218: $21 $4c $52
	ld   de, $cab7                                   ; $521b: $11 $b7 $ca
	call Call_020_51cb                               ; $521e: $cd $cb $51
	ret                                              ; $5221: $c9


jr_020_5222:
	ld   a, [$cabc]                                  ; $5222: $fa $bc $ca
	and  a                                           ; $5225: $a7
	jr   nz, jr_020_5237                             ; $5226: $20 $0f

	ld   a, $ff                                      ; $5228: $3e $ff
	ld   [$cabc], a                                  ; $522a: $ea $bc $ca
	ld   hl, $524c                                   ; $522d: $21 $4c $52
	ld   de, $cabd                                   ; $5230: $11 $bd $ca
	call Call_020_51cb                               ; $5233: $cd $cb $51
	ret                                              ; $5236: $c9


jr_020_5237:
	ld   a, [$cac2]                                  ; $5237: $fa $c2 $ca
	and  a                                           ; $523a: $a7
	jr   nz, jr_020_524b                             ; $523b: $20 $0e

	ld   a, $ff                                      ; $523d: $3e $ff
	ld   [$cac2], a                                  ; $523f: $ea $c2 $ca
	ld   hl, $524c                                   ; $5242: $21 $4c $52
	ld   de, $cac3                                   ; $5245: $11 $c3 $ca
	call Call_020_51cb                               ; $5248: $cd $cb $51

jr_020_524b:
	ret                                              ; $524b: $c9


	inc  b                                           ; $524c: $04
	ld   c, b                                        ; $524d: $48
	inc  b                                           ; $524e: $04
	ld   c, c                                        ; $524f: $49
	inc  b                                           ; $5250: $04
	ld   c, d                                        ; $5251: $4a
	ld   [bc], a                                     ; $5252: $02
	ld   c, c                                        ; $5253: $49
	ld   [bc], a                                     ; $5254: $02
	ld   c, d                                        ; $5255: $4a
	dec  b                                           ; $5256: $05
	ld   c, c                                        ; $5257: $49
	rlca                                             ; $5258: $07
	ld   c, b                                        ; $5259: $48

Call_020_525a:
	ld   hl, $5300                                   ; $525a: $21 $00 $53
	ld   de, $cab7                                   ; $525d: $11 $b7 $ca
	call Call_020_51e0                               ; $5260: $cd $e0 $51
	jr   nc, jr_020_5278                             ; $5263: $30 $13

	ld   a, [$cab7]                                  ; $5265: $fa $b7 $ca
	and  a                                           ; $5268: $a7
	jr   nz, jr_020_5278                             ; $5269: $20 $0d

	xor  a                                           ; $526b: $af
	ld   [$cab6], a                                  ; $526c: $ea $b6 $ca
	ld   [$cab7], a                                  ; $526f: $ea $b7 $ca
	ld   [$cab8], a                                  ; $5272: $ea $b8 $ca
	ld   [$cab9], a                                  ; $5275: $ea $b9 $ca

jr_020_5278:
	ld   hl, $5300                                   ; $5278: $21 $00 $53
	ld   de, $cabd                                   ; $527b: $11 $bd $ca
	call Call_020_51e0                               ; $527e: $cd $e0 $51
	jr   nc, jr_020_5296                             ; $5281: $30 $13

	ld   a, [$cabd]                                  ; $5283: $fa $bd $ca
	and  a                                           ; $5286: $a7
	jr   nz, jr_020_5296                             ; $5287: $20 $0d

	xor  a                                           ; $5289: $af
	ld   [$cabc], a                                  ; $528a: $ea $bc $ca
	ld   [$cabd], a                                  ; $528d: $ea $bd $ca
	ld   [$cabe], a                                  ; $5290: $ea $be $ca
	ld   [$cabf], a                                  ; $5293: $ea $bf $ca

jr_020_5296:
	ld   hl, $5300                                   ; $5296: $21 $00 $53
	ld   de, $cac3                                   ; $5299: $11 $c3 $ca
	call Call_020_51e0                               ; $529c: $cd $e0 $51
	jr   nc, jr_020_52b4                             ; $529f: $30 $13

	ld   a, [$cac3]                                  ; $52a1: $fa $c3 $ca
	and  a                                           ; $52a4: $a7
	jr   nz, jr_020_52b4                             ; $52a5: $20 $0d

	xor  a                                           ; $52a7: $af
	ld   [$cac2], a                                  ; $52a8: $ea $c2 $ca
	ld   [$cac3], a                                  ; $52ab: $ea $c3 $ca
	ld   [$cac4], a                                  ; $52ae: $ea $c4 $ca
	ld   [$cac5], a                                  ; $52b1: $ea $c5 $ca

jr_020_52b4:
	ld   a, [$cab6]                                  ; $52b4: $fa $b6 $ca
	and  a                                           ; $52b7: $a7
	jr   z, jr_020_52cd                              ; $52b8: $28 $13

	ld   a, $03                                      ; $52ba: $3e $03
	ld   [wSpriteGroup], a                                  ; $52bc: $ea $1a $c2
	ld   a, [$caba]                                  ; $52bf: $fa $ba $ca
	ld   b, a                                        ; $52c2: $47
	ld   a, [$cabb]                                  ; $52c3: $fa $bb $ca
	ld   c, a                                        ; $52c6: $4f
	ld   a, [$cab8]                                  ; $52c7: $fa $b8 $ca
	call LoadSpriteFromMainTable                                       ; $52ca: $cd $16 $0e

jr_020_52cd:
	ld   a, [$cabc]                                  ; $52cd: $fa $bc $ca
	and  a                                           ; $52d0: $a7
	jr   z, jr_020_52e6                              ; $52d1: $28 $13

	ld   a, $03                                      ; $52d3: $3e $03
	ld   [wSpriteGroup], a                                  ; $52d5: $ea $1a $c2
	ld   a, [$cac0]                                  ; $52d8: $fa $c0 $ca
	ld   b, a                                        ; $52db: $47
	ld   a, [$cac1]                                  ; $52dc: $fa $c1 $ca
	ld   c, a                                        ; $52df: $4f
	ld   a, [$cabe]                                  ; $52e0: $fa $be $ca
	call LoadSpriteFromMainTable                                       ; $52e3: $cd $16 $0e

jr_020_52e6:
	ld   a, [$cac2]                                  ; $52e6: $fa $c2 $ca
	and  a                                           ; $52e9: $a7
	jr   z, jr_020_52ff                              ; $52ea: $28 $13

	ld   a, $03                                      ; $52ec: $3e $03
	ld   [wSpriteGroup], a                                  ; $52ee: $ea $1a $c2
	ld   a, [$cac6]                                  ; $52f1: $fa $c6 $ca
	ld   b, a                                        ; $52f4: $47
	ld   a, [$cac7]                                  ; $52f5: $fa $c7 $ca
	ld   c, a                                        ; $52f8: $4f
	ld   a, [$cac4]                                  ; $52f9: $fa $c4 $ca
	call LoadSpriteFromMainTable                                       ; $52fc: $cd $16 $0e

jr_020_52ff:
	ret                                              ; $52ff: $c9


	inc  b                                           ; $5300: $04
	ld   c, b                                        ; $5301: $48
	inc  b                                           ; $5302: $04
	ld   c, c                                        ; $5303: $49
	inc  b                                           ; $5304: $04
	ld   c, d                                        ; $5305: $4a
	ld   [bc], a                                     ; $5306: $02
	ld   c, c                                        ; $5307: $49
	ld   [bc], a                                     ; $5308: $02
	ld   c, d                                        ; $5309: $4a
	dec  b                                           ; $530a: $05
	ld   c, c                                        ; $530b: $49
	rlca                                             ; $530c: $07
	ld   c, b                                        ; $530d: $48
	nop                                              ; $530e: $00
	ld   hl, $ca4a                                   ; $530f: $21 $4a $ca
	ld   [hl], $05                                   ; $5312: $36 $05
	ld   hl, $ca49                                   ; $5314: $21 $49 $ca
	ld   [hl], $01                                   ; $5317: $36 $01
	ld   a, $2e                                      ; $5319: $3e $2e
	call Func_1adf                                       ; $531b: $cd $df $1a
	ld   a, $08                                      ; $531e: $3e $08
	ld   [wGameSubstate], a                                  ; $5320: $ea $a1 $c2
	ret                                              ; $5323: $c9


	call ClearOam                                       ; $5324: $cd $d7 $0d
	call Call_020_43ac                               ; $5327: $cd $ac $43
	call Call_020_56d1                               ; $532a: $cd $d1 $56
	ld   hl, $ca49                                   ; $532d: $21 $49 $ca
	dec  [hl]                                        ; $5330: $35
	ret  nz                                          ; $5331: $c0

	ld   a, [$ca4a]                                  ; $5332: $fa $4a $ca
	cp   $01                                         ; $5335: $fe $01
	jr   nz, jr_020_533d                             ; $5337: $20 $04

	ld   [hl], $05                                   ; $5339: $36 $05
	jr   jr_020_533f                                 ; $533b: $18 $02

jr_020_533d:
	ld   [hl], $3c                                   ; $533d: $36 $3c

jr_020_533f:
	ld   a, [$ca71]                                  ; $533f: $fa $71 $ca
	cp   $00                                         ; $5342: $fe $00
	jr   nz, jr_020_5375                             ; $5344: $20 $2f

	ld   a, [wWramBank]                                  ; $5346: $fa $93 $c2
	push af                                          ; $5349: $f5
	ld   a, $07                                      ; $534a: $3e $07
	ld   [wWramBank], a                                  ; $534c: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $534f: $e0 $70
	ld   de, $dd20                                   ; $5351: $11 $20 $dd
	ld   a, $29                                      ; $5354: $3e $29
	ld   hl, $6650                                   ; $5356: $21 $50 $66
	ld   bc, $00f0                                   ; $5359: $01 $f0 $00
	call FarMemCopy                                       ; $535c: $cd $b2 $09
	ld   de, $de10                                   ; $535f: $11 $10 $de
	ld   a, $29                                      ; $5362: $3e $29
	ld   hl, $6250                                   ; $5364: $21 $50 $62
	ld   bc, $00f0                                   ; $5367: $01 $f0 $00
	call FarMemCopy                                       ; $536a: $cd $b2 $09
	pop  af                                          ; $536d: $f1
	ld   [wWramBank], a                                  ; $536e: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5371: $e0 $70
	jr   jr_020_53a2                                 ; $5373: $18 $2d

jr_020_5375:
	ld   a, [wWramBank]                                  ; $5375: $fa $93 $c2
	push af                                          ; $5378: $f5
	ld   a, $07                                      ; $5379: $3e $07
	ld   [wWramBank], a                                  ; $537b: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $537e: $e0 $70
	ld   de, $dd20                                   ; $5380: $11 $20 $dd
	ld   a, $29                                      ; $5383: $3e $29
	ld   hl, $5cf0                                   ; $5385: $21 $f0 $5c
	ld   bc, $00f0                                   ; $5388: $01 $f0 $00
	call FarMemCopy                                       ; $538b: $cd $b2 $09
	ld   de, $de10                                   ; $538e: $11 $10 $de
	ld   a, $29                                      ; $5391: $3e $29
	ld   hl, $58f0                                   ; $5393: $21 $f0 $58
	ld   bc, $00f0                                   ; $5396: $01 $f0 $00
	call FarMemCopy                                       ; $5399: $cd $b2 $09
	pop  af                                          ; $539c: $f1
	ld   [wWramBank], a                                  ; $539d: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $53a0: $e0 $70

jr_020_53a2:
	ld   hl, $ca4a                                   ; $53a2: $21 $4a $ca
	dec  [hl]                                        ; $53a5: $35
	jr   z, jr_020_53f6                              ; $53a6: $28 $4e

	ld   a, [hl]                                     ; $53a8: $7e
	dec  a                                           ; $53a9: $3d
	jr   nz, jr_020_53b1                             ; $53aa: $20 $05

	ld   hl, $ca72                                   ; $53ac: $21 $72 $ca
	set  0, [hl]                                     ; $53af: $cb $c6

jr_020_53b1:
	ld   e, a                                        ; $53b1: $5f
	ld   d, $00                                      ; $53b2: $16 $00
	sla  e                                           ; $53b4: $cb $23
	ld   a, [$ca71]                                  ; $53b6: $fa $71 $ca
	cp   $00                                         ; $53b9: $fe $00
	jr   nz, jr_020_53c2                             ; $53bb: $20 $05

	ld   hl, $5441                                   ; $53bd: $21 $41 $54
	jr   jr_020_53c5                                 ; $53c0: $18 $03

jr_020_53c2:
	ld   hl, $5449                                   ; $53c2: $21 $49 $54

jr_020_53c5:
	add  hl, de                                      ; $53c5: $19
	ld   a, [hl+]                                    ; $53c6: $2a
	ld   h, [hl]                                     ; $53c7: $66
	ld   l, a                                        ; $53c8: $6f

jr_020_53c9:
	ld   a, [hl+]                                    ; $53c9: $2a
	cp   $ff                                         ; $53ca: $fe $ff
	jr   z, jr_020_53fb                              ; $53cc: $28 $2d

	ld   b, a                                        ; $53ce: $47
	ld   a, [hl+]                                    ; $53cf: $2a
	ld   c, a                                        ; $53d0: $4f
	push hl                                          ; $53d1: $e5
	ld   a, [wWramBank]                                  ; $53d2: $fa $93 $c2
	push af                                          ; $53d5: $f5
	ld   a, $07                                      ; $53d6: $3e $07
	ld   [wWramBank], a                                  ; $53d8: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $53db: $e0 $70
	ld   a, $02                                      ; $53dd: $3e $02
	ld   hl, $dd00                                   ; $53df: $21 $00 $dd
	call Call_020_5509                               ; $53e2: $cd $09 $55
	ld   a, $02                                      ; $53e5: $3e $02
	ld   hl, $ddf0                                   ; $53e7: $21 $f0 $dd
	call Call_020_5509                               ; $53ea: $cd $09 $55
	pop  af                                          ; $53ed: $f1
	ld   [wWramBank], a                                  ; $53ee: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $53f1: $e0 $70
	pop  hl                                          ; $53f3: $e1
	jr   jr_020_53c9                                 ; $53f4: $18 $d3

jr_020_53f6:
	ld   a, $04                                      ; $53f6: $3e $04
	ld   [wGameSubstate], a                                  ; $53f8: $ea $a1 $c2

jr_020_53fb:
	ld   a, [$ca71]                                  ; $53fb: $fa $71 $ca
	cp   $00                                         ; $53fe: $fe $00
	jr   nz, jr_020_5422                             ; $5400: $20 $20

	ld   c, $d0                                      ; $5402: $0e $d0
	ld   de, $9a50                                   ; $5404: $11 $50 $9a
	ld   a, $07                                      ; $5407: $3e $07
	ld   hl, $dd20                                   ; $5409: $21 $20 $dd
	ld   b, $0f                                      ; $540c: $06 $0f
	call EnqueueHDMATransfer                                       ; $540e: $cd $7c $02
	ld   c, $d1                                      ; $5411: $0e $d1
	ld   de, $9a50                                   ; $5413: $11 $50 $9a
	ld   a, $07                                      ; $5416: $3e $07
	ld   hl, $de10                                   ; $5418: $21 $10 $de
	ld   b, $0f                                      ; $541b: $06 $0f
	call EnqueueHDMATransfer                                       ; $541d: $cd $7c $02
	jr   jr_020_5440                                 ; $5420: $18 $1e

jr_020_5422:
	ld   c, $f0                                      ; $5422: $0e $f0
	ld   de, $98f0                                   ; $5424: $11 $f0 $98
	ld   a, $07                                      ; $5427: $3e $07
	ld   hl, $dd20                                   ; $5429: $21 $20 $dd
	ld   b, $0f                                      ; $542c: $06 $0f
	call EnqueueHDMATransfer                                       ; $542e: $cd $7c $02
	ld   c, $f1                                      ; $5431: $0e $f1
	ld   de, $98f0                                   ; $5433: $11 $f0 $98
	ld   a, $07                                      ; $5436: $3e $07
	ld   hl, $de10                                   ; $5438: $21 $10 $de
	ld   b, $0f                                      ; $543b: $06 $0f
	call EnqueueHDMATransfer                                       ; $543d: $cd $7c $02

jr_020_5440:
	ret                                              ; $5440: $c9


	sub  h                                           ; $5441: $94
	ld   d, h                                        ; $5442: $54
	add  c                                           ; $5443: $81
	ld   d, h                                        ; $5444: $54
	ld   l, b                                        ; $5445: $68
	ld   d, h                                        ; $5446: $54
	ld   d, c                                        ; $5447: $51
	ld   d, h                                        ; $5448: $54
	ldh  a, [rHDMA4]                                 ; $5449: $f0 $54
	db   $dd                                         ; $544b: $dd
	ld   d, h                                        ; $544c: $54
	call nz, $ad54                                   ; $544d: $c4 $54 $ad
	ld   d, h                                        ; $5450: $54
	nop                                              ; $5451: $00
	ld   bc, $0101                                   ; $5452: $01 $01 $01
	ld   [bc], a                                     ; $5455: $02
	ld   bc, $0103                                   ; $5456: $01 $03 $01
	inc  bc                                          ; $5459: $03
	ld   [bc], a                                     ; $545a: $02
	ld   [bc], a                                     ; $545b: $02
	inc  bc                                          ; $545c: $03
	inc  bc                                          ; $545d: $03
	inc  b                                           ; $545e: $04
	inc  bc                                          ; $545f: $03
	dec  b                                           ; $5460: $05
	ld   [bc], a                                     ; $5461: $02
	ld   b, $01                                      ; $5462: $06 $01
	ld   b, $00                                      ; $5464: $06 $00
	dec  b                                           ; $5466: $05
	rst  $38                                         ; $5467: $ff
	ld   bc, $0201                                   ; $5468: $01 $01 $02
	ld   bc, $0200                                   ; $546b: $01 $00 $02
	inc  bc                                          ; $546e: $03
	ld   [bc], a                                     ; $546f: $02
	inc  bc                                          ; $5470: $03
	inc  bc                                          ; $5471: $03
	ld   [bc], a                                     ; $5472: $02
	inc  b                                           ; $5473: $04
	ld   bc, $0004                                   ; $5474: $01 $04 $00
	dec  b                                           ; $5477: $05
	nop                                              ; $5478: $00
	ld   b, $01                                      ; $5479: $06 $01
	ld   b, $02                                      ; $547b: $06 $02
	ld   b, $03                                      ; $547d: $06 $03
	ld   b, $ff                                      ; $547f: $06 $ff
	ld   bc, $0202                                   ; $5481: $01 $02 $02
	ld   bc, $0202                                   ; $5484: $01 $02 $02
	ld   [bc], a                                     ; $5487: $02
	inc  bc                                          ; $5488: $03
	ld   [bc], a                                     ; $5489: $02
	inc  b                                           ; $548a: $04
	ld   [bc], a                                     ; $548b: $02
	dec  b                                           ; $548c: $05
	ld   bc, $0206                                   ; $548d: $01 $06 $02
	ld   b, $03                                      ; $5490: $06 $03
	ld   b, $ff                                      ; $5492: $06 $ff
	ld   bc, $0201                                   ; $5494: $01 $01 $02
	ld   bc, $0203                                   ; $5497: $01 $03 $02
	inc  bc                                          ; $549a: $03
	inc  bc                                          ; $549b: $03
	inc  bc                                          ; $549c: $03
	inc  b                                           ; $549d: $04
	inc  bc                                          ; $549e: $03
	dec  b                                           ; $549f: $05
	nop                                              ; $54a0: $00
	ld   [bc], a                                     ; $54a1: $02
	nop                                              ; $54a2: $00
	inc  bc                                          ; $54a3: $03
	nop                                              ; $54a4: $00
	inc  b                                           ; $54a5: $04
	nop                                              ; $54a6: $00
	dec  b                                           ; $54a7: $05
	ld   bc, $0206                                   ; $54a8: $01 $06 $02
	ld   b, $ff                                      ; $54ab: $06 $ff
	ld   bc, $0200                                   ; $54ad: $01 $00 $02
	nop                                              ; $54b0: $00
	inc  bc                                          ; $54b1: $03
	nop                                              ; $54b2: $00
	inc  b                                           ; $54b3: $04
	nop                                              ; $54b4: $00
	inc  b                                           ; $54b5: $04
	ld   bc, $0203                                   ; $54b6: $01 $03 $02
	inc  b                                           ; $54b9: $04
	inc  bc                                          ; $54ba: $03
	inc  b                                           ; $54bb: $04
	inc  b                                           ; $54bc: $04
	inc  bc                                          ; $54bd: $03
	dec  b                                           ; $54be: $05
	ld   [bc], a                                     ; $54bf: $02
	dec  b                                           ; $54c0: $05
	ld   bc, $ff04                                   ; $54c1: $01 $04 $ff
	ld   [bc], a                                     ; $54c4: $02
	nop                                              ; $54c5: $00
	inc  bc                                          ; $54c6: $03
	nop                                              ; $54c7: $00
	ld   bc, $0401                                   ; $54c8: $01 $01 $04
	ld   bc, $0204                                   ; $54cb: $01 $04 $02
	inc  bc                                          ; $54ce: $03
	inc  bc                                          ; $54cf: $03
	ld   [bc], a                                     ; $54d0: $02
	inc  bc                                          ; $54d1: $03
	ld   bc, $0104                              ; $54d2: $01 $04 $01
	dec  b                                           ; $54d5: $05
	ld   [bc], a                                     ; $54d6: $02
	dec  b                                           ; $54d7: $05
	inc  bc                                          ; $54d8: $03
	dec  b                                           ; $54d9: $05
	inc  b                                           ; $54da: $04
	dec  b                                           ; $54db: $05
	rst  $38                                         ; $54dc: $ff
	ld   [bc], a                                     ; $54dd: $02
	ld   bc, $0003                                   ; $54de: $01 $03 $00
	inc  bc                                          ; $54e1: $03
	ld   bc, $0203                                   ; $54e2: $01 $03 $02
	inc  bc                                          ; $54e5: $03
	inc  bc                                          ; $54e6: $03
	inc  bc                                          ; $54e7: $03
	inc  b                                           ; $54e8: $04
	ld   [bc], a                                     ; $54e9: $02
	dec  b                                           ; $54ea: $05
	inc  bc                                          ; $54eb: $03
	dec  b                                           ; $54ec: $05
	inc  b                                           ; $54ed: $04
	dec  b                                           ; $54ee: $05
	rst  $38                                         ; $54ef: $ff
	ld   [bc], a                                     ; $54f0: $02
	nop                                              ; $54f1: $00
	inc  bc                                          ; $54f2: $03
	nop                                              ; $54f3: $00
	inc  b                                           ; $54f4: $04
	ld   bc, $0204                                   ; $54f5: $01 $04 $02
	inc  b                                           ; $54f8: $04
	inc  bc                                          ; $54f9: $03
	inc  b                                           ; $54fa: $04
	inc  b                                           ; $54fb: $04
	ld   bc, $0101                                   ; $54fc: $01 $01 $01
	ld   [bc], a                                     ; $54ff: $02
	ld   bc, $0103                                   ; $5500: $01 $03 $01
	inc  b                                           ; $5503: $04
	ld   [bc], a                                     ; $5504: $02
	dec  b                                           ; $5505: $05
	inc  bc                                          ; $5506: $03
	dec  b                                           ; $5507: $05
	rst  $38                                         ; $5508: $ff

Call_020_5509:
	push bc                                          ; $5509: $c5
	ld   de, $0020                                   ; $550a: $11 $20 $00
	inc  c                                           ; $550d: $0c

jr_020_550e:
	add  hl, de                                      ; $550e: $19
	dec  c                                           ; $550f: $0d
	jr   nz, jr_020_550e                             ; $5510: $20 $fc

	ld   e, b                                        ; $5512: $58
	add  hl, de                                      ; $5513: $19
	ld   [hl], a                                     ; $5514: $77
	pop  bc                                          ; $5515: $c1
	ret                                              ; $5516: $c9


Call_020_5517:
	push bc                                          ; $5517: $c5
	push hl                                          ; $5518: $e5
	ld   hl, $97e0                                   ; $5519: $21 $e0 $97
	ld   de, $0020                                   ; $551c: $11 $20 $00
	inc  c                                           ; $551f: $0c

jr_020_5520:
	add  hl, de                                      ; $5520: $19
	dec  c                                           ; $5521: $0d
	jr   nz, jr_020_5520                             ; $5522: $20 $fc

	ld   e, b                                        ; $5524: $58
	add  hl, de                                      ; $5525: $19
	ld   d, a                                        ; $5526: $57
	ld   [hl], d                                     ; $5527: $72
	pop  hl                                          ; $5528: $e1
	pop  bc                                          ; $5529: $c1
	ret                                              ; $552a: $c9


Call_020_552b:
	push bc                                          ; $552b: $c5
	ld   d, a                                        ; $552c: $57
	ld   a, [wWramBank]                                  ; $552d: $fa $93 $c2
	push af                                          ; $5530: $f5
	ld   a, $07                                      ; $5531: $3e $07
	ld   [wWramBank], a                                  ; $5533: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5536: $e0 $70
	ld   a, d                                        ; $5538: $7a
	ld   hl, $d520                                   ; $5539: $21 $20 $d5
	ld   de, $0020                                   ; $553c: $11 $20 $00
	inc  c                                           ; $553f: $0c

jr_020_5540:
	add  hl, de                                      ; $5540: $19
	dec  c                                           ; $5541: $0d
	jr   nz, jr_020_5540                             ; $5542: $20 $fc

	ld   e, b                                        ; $5544: $58
	add  hl, de                                      ; $5545: $19
	ld   [hl], a                                     ; $5546: $77
	pop  af                                          ; $5547: $f1
	ld   [wWramBank], a                                  ; $5548: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $554b: $e0 $70
	pop  bc                                          ; $554d: $c1
	ret                                              ; $554e: $c9


Call_020_554f:
	ld   a, [$ca81]                                  ; $554f: $fa $81 $ca
	cp   c                                           ; $5552: $b9
	ret  z                                           ; $5553: $c8

	ld   a, c                                        ; $5554: $79
	ld   [$ca81], a                                  ; $5555: $ea $81 $ca
	ld   a, [wWramBank]                                  ; $5558: $fa $93 $c2
	push af                                          ; $555b: $f5
	ld   a, $07                                      ; $555c: $3e $07
	ld   [wWramBank], a                                  ; $555e: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5561: $e0 $70
	ld   b, $00                                      ; $5563: $06 $00
	ld   hl, $55a7                                   ; $5565: $21 $a7 $55
	add  hl, bc                                      ; $5568: $09
	ld   a, [hl]                                     ; $5569: $7e
	ld   [$ca43], a                                  ; $556a: $ea $43 $ca
	ld   a, $00                                      ; $556d: $3e $00
	ld   [$ca44], a                                  ; $556f: $ea $44 $ca
	ld   [$ca45], a                                  ; $5572: $ea $45 $ca
	ld   hl, $d540                                   ; $5575: $21 $40 $d5

jr_020_5578:
	ld   a, $00                                      ; $5578: $3e $00
	ld   [$ca44], a                                  ; $557a: $ea $44 $ca

jr_020_557d:
	ld   a, [$ca43]                                  ; $557d: $fa $43 $ca
	ld   [hl], a                                     ; $5580: $77
	inc  a                                           ; $5581: $3c
	ld   [$ca43], a                                  ; $5582: $ea $43 $ca
	inc  hl                                          ; $5585: $23
	ld   a, [$ca44]                                  ; $5586: $fa $44 $ca
	inc  a                                           ; $5589: $3c
	ld   [$ca44], a                                  ; $558a: $ea $44 $ca
	cp   $04                                         ; $558d: $fe $04
	jr   nz, jr_020_557d                             ; $558f: $20 $ec

	ld   bc, $001c                                   ; $5591: $01 $1c $00
	add  hl, bc                                      ; $5594: $09
	ld   a, [$ca45]                                  ; $5595: $fa $45 $ca
	inc  a                                           ; $5598: $3c
	ld   [$ca45], a                                  ; $5599: $ea $45 $ca
	cp   $04                                         ; $559c: $fe $04
	jr   nz, jr_020_5578                             ; $559e: $20 $d8

	pop  af                                          ; $55a0: $f1
	ld   [wWramBank], a                                  ; $55a1: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $55a4: $e0 $70
	ret                                              ; $55a6: $c9


	and  b                                           ; $55a7: $a0
	or   b                                           ; $55a8: $b0
	ret  nz                                          ; $55a9: $c0

	ret  nc                                          ; $55aa: $d0

Call_020_55ab:
	ld   a, $03                                      ; $55ab: $3e $03
	ld   [wSpriteGroup], a                                  ; $55ad: $ea $1a $c2
	ld   b, $4c                                      ; $55b0: $06 $4c
	ld   c, $34                                      ; $55b2: $0e $34
	ld   a, $03                                      ; $55b4: $3e $03
	ld   [wSpriteGroup], a                                  ; $55b6: $ea $1a $c2
	ld   a, $7f                                      ; $55b9: $3e $7f
	call LoadSpriteFromMainTable                                       ; $55bb: $cd $16 $0e
	ret                                              ; $55be: $c9


Call_020_55bf:
	ld   a, $03                                      ; $55bf: $3e $03
	ld   [wSpriteGroup], a                                  ; $55c1: $ea $1a $c2
	ld   b, $4c                                      ; $55c4: $06 $4c
	ld   c, $38                                      ; $55c6: $0e $38
	ld   a, $03                                      ; $55c8: $3e $03
	ld   [wSpriteGroup], a                                  ; $55ca: $ea $1a $c2
	ld   a, $80                                      ; $55cd: $3e $80
	call LoadSpriteFromMainTable                                       ; $55cf: $cd $16 $0e
	ret                                              ; $55d2: $c9


Call_020_55d3:
	ld   hl, $ca52                                   ; $55d3: $21 $52 $ca
	ld   c, $00                                      ; $55d6: $0e $00

jr_020_55d8:
	ld   a, [$cab0]                                  ; $55d8: $fa $b0 $ca
	cp   [hl]                                        ; $55db: $be
	jr   z, jr_020_55e2                              ; $55dc: $28 $04

	jr   c, jr_020_5600                              ; $55de: $38 $20

	jr   jr_020_55f6                                 ; $55e0: $18 $14

jr_020_55e2:
	inc  hl                                          ; $55e2: $23
	ld   a, [$cab1]                                  ; $55e3: $fa $b1 $ca
	cp   [hl]                                        ; $55e6: $be
	jr   z, jr_020_55ed                              ; $55e7: $28 $04

	jr   c, jr_020_5600                              ; $55e9: $38 $15

	jr   jr_020_55f7                                 ; $55eb: $18 $0a

jr_020_55ed:
	inc  hl                                          ; $55ed: $23
	ld   a, [$cab2]                                  ; $55ee: $fa $b2 $ca
	cp   [hl]                                        ; $55f1: $be
	jr   c, jr_020_5600                              ; $55f2: $38 $0c

	jr   jr_020_55f8                                 ; $55f4: $18 $02

jr_020_55f6:
	inc  hl                                          ; $55f6: $23

jr_020_55f7:
	inc  hl                                          ; $55f7: $23

jr_020_55f8:
	inc  hl                                          ; $55f8: $23
	inc  c                                           ; $55f9: $0c
	ld   a, c                                        ; $55fa: $79
	cp   $04                                         ; $55fb: $fe $04
	ret  z                                           ; $55fd: $c8

	jr   c, jr_020_55d8                              ; $55fe: $38 $d8

jr_020_5600:
	ld   a, c                                        ; $5600: $79
	ld   [$ca46], a                                  ; $5601: $ea $46 $ca
	ld   a, c                                        ; $5604: $79
	sla  a                                           ; $5605: $cb $27
	add  c                                           ; $5607: $81
	ld   b, $00                                      ; $5608: $06 $00
	ld   c, a                                        ; $560a: $4f
	ld   hl, $ca5d                                   ; $560b: $21 $5d $ca
	ld   de, $0003                                   ; $560e: $11 $03 $00

jr_020_5611:
	dec  hl                                          ; $5611: $2b
	dec  hl                                          ; $5612: $2b
	dec  hl                                          ; $5613: $2b
	ld   a, [hl]                                     ; $5614: $7e
	add  hl, de                                      ; $5615: $19
	ld   [hl], a                                     ; $5616: $77
	dec  hl                                          ; $5617: $2b
	dec  hl                                          ; $5618: $2b
	dec  hl                                          ; $5619: $2b
	dec  hl                                          ; $561a: $2b
	ld   a, [hl]                                     ; $561b: $7e
	add  hl, de                                      ; $561c: $19
	ld   [hl], a                                     ; $561d: $77
	dec  hl                                          ; $561e: $2b
	dec  hl                                          ; $561f: $2b
	dec  hl                                          ; $5620: $2b
	dec  hl                                          ; $5621: $2b
	ld   a, [hl]                                     ; $5622: $7e
	add  hl, de                                      ; $5623: $19
	ld   [hl], a                                     ; $5624: $77
	dec  hl                                          ; $5625: $2b
	ld   a, [$ca46]                                  ; $5626: $fa $46 $ca
	inc  a                                           ; $5629: $3c

Jump_020_562a:
	ld   [$ca46], a                                  ; $562a: $ea $46 $ca
	cp   $03                                         ; $562d: $fe $03
	jr   nz, jr_020_5611                             ; $562f: $20 $e0

	ld   hl, $ca52                                   ; $5631: $21 $52 $ca
	add  hl, bc                                      ; $5634: $09
	ld   a, [$cab0]                                  ; $5635: $fa $b0 $ca
	ld   [hl+], a                                    ; $5638: $22
	ld   a, [$cab1]                                  ; $5639: $fa $b1 $ca
	ld   [hl+], a                                    ; $563c: $22
	ld   a, [$cab2]                                  ; $563d: $fa $b2 $ca
	ld   [hl], a                                     ; $5640: $77
	ret                                              ; $5641: $c9


	ld   hl, $ca52                                   ; $5642: $21 $52 $ca
	ld   a, $63                                      ; $5645: $3e $63
	ld   c, $0c                                      ; $5647: $0e $0c

jr_020_5649:
	ld   [hl+], a                                    ; $5649: $22
	dec  c                                           ; $564a: $0d
	jr   nz, jr_020_5649                             ; $564b: $20 $fc

	ret                                              ; $564d: $c9


	ld   hl, $ca52                                   ; $564e: $21 $52 $ca
	ld   a, $00                                      ; $5651: $3e $00
	ld   [$ca46], a                                  ; $5653: $ea $46 $ca

jr_020_5656:
	ld   a, [hl+]                                    ; $5656: $2a
	call Call_020_4de9                               ; $5657: $cd $e9 $4d
	ld   bc, $0908                                   ; $565a: $01 $08 $09
	ld   a, [$ca46]                                  ; $565d: $fa $46 $ca
	sla  a                                           ; $5660: $cb $27
	add  c                                           ; $5662: $81
	ld   c, a                                        ; $5663: $4f
	xor  a                                           ; $5664: $af
	ldh  [rVBK], a                                   ; $5665: $e0 $4f
	ld   a, $c0                                      ; $5667: $3e $c0
	add  e                                           ; $5669: $83
	call Call_020_5517                               ; $566a: $cd $17 $55
	ld   bc, $0b08                                   ; $566d: $01 $08 $0b
	ld   a, [$ca46]                                  ; $5670: $fa $46 $ca
	sla  a                                           ; $5673: $cb $27
	add  c                                           ; $5675: $81
	ld   c, a                                        ; $5676: $4f
	ld   a, [hl+]                                    ; $5677: $2a
	call Call_020_4de9                               ; $5678: $cd $e9 $4d
	push de                                          ; $567b: $d5
	xor  a                                           ; $567c: $af
	ldh  [rVBK], a                                   ; $567d: $e0 $4f
	ld   a, $bf                                      ; $567f: $3e $bf
	add  d                                           ; $5681: $82
	call Call_020_5517                               ; $5682: $cd $17 $55
	pop  de                                          ; $5685: $d1
	ld   bc, $0c08                                   ; $5686: $01 $08 $0c
	ld   a, [$ca46]                                  ; $5689: $fa $46 $ca
	sla  a                                           ; $568c: $cb $27
	add  c                                           ; $568e: $81
	ld   c, a                                        ; $568f: $4f
	xor  a                                           ; $5690: $af
	ldh  [rVBK], a                                   ; $5691: $e0 $4f
	ld   a, $c0                                      ; $5693: $3e $c0
	add  e                                           ; $5695: $83
	call Call_020_5517                               ; $5696: $cd $17 $55
	ld   bc, $0e08                                   ; $5699: $01 $08 $0e
	ld   a, [$ca46]                                  ; $569c: $fa $46 $ca
	sla  a                                           ; $569f: $cb $27
	add  c                                           ; $56a1: $81
	ld   c, a                                        ; $56a2: $4f
	ld   a, [hl+]                                    ; $56a3: $2a
	call Call_020_4de9                               ; $56a4: $cd $e9 $4d
	push de                                          ; $56a7: $d5
	xor  a                                           ; $56a8: $af
	ldh  [rVBK], a                                   ; $56a9: $e0 $4f
	ld   a, $bf                                      ; $56ab: $3e $bf
	add  d                                           ; $56ad: $82
	call Call_020_5517                               ; $56ae: $cd $17 $55
	pop  de                                          ; $56b1: $d1
	ld   bc, $0f08                                   ; $56b2: $01 $08 $0f
	ld   a, [$ca46]                                  ; $56b5: $fa $46 $ca
	sla  a                                           ; $56b8: $cb $27
	add  c                                           ; $56ba: $81
	ld   c, a                                        ; $56bb: $4f
	xor  a                                           ; $56bc: $af
	ldh  [rVBK], a                                   ; $56bd: $e0 $4f
	ld   a, $c0                                      ; $56bf: $3e $c0
	add  e                                           ; $56c1: $83
	call Call_020_5517                               ; $56c2: $cd $17 $55
	push hl                                          ; $56c5: $e5
	ld   hl, $ca46                                   ; $56c6: $21 $46 $ca
	inc  [hl]                                        ; $56c9: $34
	ld   a, [hl]                                     ; $56ca: $7e
	pop  hl                                          ; $56cb: $e1
	cp   $04                                         ; $56cc: $fe $04
	jr   nz, jr_020_5656                             ; $56ce: $20 $86

	ret                                              ; $56d0: $c9


Call_020_56d1:
	ld   b, $10                                      ; $56d1: $06 $10
	ld   c, $80                                      ; $56d3: $0e $80
	ld   a, $03                                      ; $56d5: $3e $03
	ld   [wSpriteGroup], a                                  ; $56d7: $ea $1a $c2
	ld   a, $81                                      ; $56da: $3e $81
	call LoadSpriteFromMainTable                                       ; $56dc: $cd $16 $0e
	ret                                              ; $56df: $c9


	ld   a, $0c                                      ; $56e0: $3e $0c
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $56e2: $ea $62 $c3
	ld   a, $1c                                      ; $56e5: $3e $1c
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $56e7: $ea $63 $c3
	ld   a, $03                                      ; $56ea: $3e $03
	ld   c, $01                                      ; $56ec: $0e $01
	ld   de, $7080                                   ; $56ee: $11 $80 $70
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $56f1: $cd $48 $07
	ld   a, $02                                      ; $56f4: $3e $02

jr_020_56f6:
	push af                                          ; $56f6: $f5
	ld   b, $0c                                      ; $56f7: $06 $0c
	ld   c, $1c                                      ; $56f9: $0e $1c
	call FadePalettesAndSetRangeToUpdate                                       ; $56fb: $cd $32 $08
	ld   bc, $0004                                   ; $56fe: $01 $04 $00
	call WaitUntilBCVBlankIntsHandledIfLCDOn                                       ; $5701: $cd $79 $0a
	pop  af                                          ; $5704: $f1
	dec  a                                           ; $5705: $3d
	jr   nz, jr_020_56f6                             ; $5706: $20 $ee

	ret                                              ; $5708: $c9


Call_020_5709:
	xor  a                                           ; $5709: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $570a: $ea $62 $c3
	ld   a, $40                                      ; $570d: $3e $40
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $570f: $ea $63 $c3
	ld   a, $03                                      ; $5712: $3e $03
	ld   c, $01                                      ; $5714: $0e $01
	ld   de, $7000                                   ; $5716: $11 $00 $70
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $5719: $cd $48 $07
	ld   a, $08                                      ; $571c: $3e $08

jr_020_571e:
	push af                                          ; $571e: $f5
	cp   $08                                         ; $571f: $fe $08
	jr   z, jr_020_5728                              ; $5721: $28 $05

	and  $07                                         ; $5723: $e6 $07
	call SafeSetAudVolForMultipleChannels                                       ; $5725: $cd $e0 $1c

jr_020_5728:
	ld   b, $00                                      ; $5728: $06 $00
	ld   c, $40                                      ; $572a: $0e $40
	call FadePalettesAndSetRangeToUpdate                                       ; $572c: $cd $32 $08
	ld   bc, $0004                                   ; $572f: $01 $04 $00
	call WaitUntilBCVBlankIntsHandledIfLCDOn                                       ; $5732: $cd $79 $0a
	pop  af                                          ; $5735: $f1
	dec  a                                           ; $5736: $3d
	jr   nz, jr_020_571e                             ; $5737: $20 $e5

	ret                                              ; $5739: $c9


Call_020_573a:
	xor  a                                           ; $573a: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $573b: $ea $62 $c3
	ld   a, $40                                      ; $573e: $3e $40
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $5740: $ea $63 $c3
	ld   a, $03                                      ; $5743: $3e $03
	ld   c, $01                                      ; $5745: $0e $01
	ld   de, $7000                                   ; $5747: $11 $00 $70
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $574a: $cd $48 $07
	ld   a, $08                                      ; $574d: $3e $08

jr_020_574f:
	push af                                          ; $574f: $f5
	ld   b, $00                                      ; $5750: $06 $00
	ld   c, $40                                      ; $5752: $0e $40
	call FadePalettesAndSetRangeToUpdate                                       ; $5754: $cd $32 $08
	ld   bc, $0004                                   ; $5757: $01 $04 $00
	call WaitUntilBCVBlankIntsHandledIfLCDOn                                       ; $575a: $cd $79 $0a
	pop  af                                          ; $575d: $f1
	dec  a                                           ; $575e: $3d
	jr   nz, jr_020_574f                             ; $575f: $20 $ee

	ret                                              ; $5761: $c9


Call_020_5762:
	xor  a                                           ; $5762: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $5763: $ea $62 $c3
	ld   a, $40                                      ; $5766: $3e $40
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $5768: $ea $63 $c3
	ld   a, $03                                      ; $576b: $3e $03
	ld   b, $01                                      ; $576d: $06 $01
	ld   hl, $7000                                   ; $576f: $21 $00 $70
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $5772: $cd $48 $07
	ld   a, $08                                      ; $5775: $3e $08

jr_020_5777:
	push af                                          ; $5777: $f5
	ld   b, $00                                      ; $5778: $06 $00
	ld   c, $40                                      ; $577a: $0e $40
	call FadePalettesAndSetRangeToUpdate                                       ; $577c: $cd $32 $08
	ld   bc, $0004                                   ; $577f: $01 $04 $00
	call WaitUntilBCVBlankIntsHandledIfLCDOn                                       ; $5782: $cd $79 $0a
	pop  af                                          ; $5785: $f1
	dec  a                                           ; $5786: $3d
	jr   nz, jr_020_5777                             ; $5787: $20 $ee

	ret                                              ; $5789: $c9


Call_020_578a:
	ld   a, [$ca71]                                  ; $578a: $fa $71 $ca
	ld   b, $00                                      ; $578d: $06 $00
	ld   c, a                                        ; $578f: $4f
	ld   hl, $57b7                                   ; $5790: $21 $b7 $57
	add  hl, bc                                      ; $5793: $09
	ld   a, [hl]                                     ; $5794: $7e
	push af                                          ; $5795: $f5
	ld   hl, $caab                                   ; $5796: $21 $ab $ca
	ld   a, [hl+]                                    ; $5799: $2a
	ld   b, a                                        ; $579a: $47
	ld   a, [hl+]                                    ; $579b: $2a
	ld   c, a                                        ; $579c: $4f
	ld   d, $00                                      ; $579d: $16 $00
	ld   e, $00                                      ; $579f: $1e $00
	pop  af                                          ; $57a1: $f1
	push af                                          ; $57a2: $f5
	ld   a, $78                                      ; $57a3: $3e $78
	ld   [wFarCallAddr], a                                  ; $57a5: $ea $98 $c2
	ld   a, $42                                      ; $57a8: $3e $42
	ld   [wFarCallAddr+1], a                                  ; $57aa: $ea $99 $c2
	ld   a, $0a                                      ; $57ad: $3e $0a
	ld   [wFarCallBank], a                                  ; $57af: $ea $9a $c2
	pop  af                                          ; $57b2: $f1
	call FarCall                                       ; $57b3: $cd $62 $09
	ret                                              ; $57b6: $c9


	inc  c                                           ; $57b7: $0c
	dec  c                                           ; $57b8: $0d

Call_020_57b9:
	ld   hl, $caab                                   ; $57b9: $21 $ab $ca
	push hl                                          ; $57bc: $e5
	ld   a, [$ca71]                                  ; $57bd: $fa $71 $ca
	ld   b, $00                                      ; $57c0: $06 $00
	ld   c, a                                        ; $57c2: $4f
	ld   hl, $57e2                                   ; $57c3: $21 $e2 $57
	add  hl, bc                                      ; $57c6: $09
	ld   a, [hl]                                     ; $57c7: $7e
	push af                                          ; $57c8: $f5
	ld   a, $97                                      ; $57c9: $3e $97
	ld   [wFarCallAddr], a                                  ; $57cb: $ea $98 $c2
	ld   a, $42                                      ; $57ce: $3e $42
	ld   [wFarCallAddr+1], a                                  ; $57d0: $ea $99 $c2
	ld   a, $0a                                      ; $57d3: $3e $0a
	ld   [wFarCallBank], a                                  ; $57d5: $ea $9a $c2
	pop  af                                          ; $57d8: $f1
	call FarCall                                       ; $57d9: $cd $62 $09
	pop  hl                                          ; $57dc: $e1
	ld   a, b                                        ; $57dd: $78
	ld   [hl+], a                                    ; $57de: $22
	ld   a, c                                        ; $57df: $79
	ld   [hl+], a                                    ; $57e0: $22
	ret                                              ; $57e1: $c9


	inc  c                                           ; $57e2: $0c
	dec  c                                           ; $57e3: $0d
	ld   a, [wInGameButtonsPressed]                                  ; $57e4: $fa $10 $c2
	and  $08                                         ; $57e7: $e6 $08
	jr   z, jr_020_57fb                              ; $57e9: $28 $10

	xor  a                                           ; $57eb: $af
	ld   [$ca93], a                                  ; $57ec: $ea $93 $ca
	ld   a, [$ca94]                                  ; $57ef: $fa $94 $ca
	ld   [wGameState], a                                  ; $57f2: $ea $a0 $c2
	ld   a, [$ca95]                                  ; $57f5: $fa $95 $ca
	ld   [wGameSubstate], a                                  ; $57f8: $ea $a1 $c2

jr_020_57fb:
	ret                                              ; $57fb: $c9


	rst  $38                                         ; $57fc: $ff
	rst  $38                                         ; $57fd: $ff
	rst  $38                                         ; $57fe: $ff
	rst  $38                                         ; $57ff: $ff
	rst  $38                                         ; $5800: $ff
	rst  $38                                         ; $5801: $ff
	rst  $38                                         ; $5802: $ff
	rst  $38                                         ; $5803: $ff
	rst  $38                                         ; $5804: $ff
	rst  $38                                         ; $5805: $ff
	rst  $38                                         ; $5806: $ff
	rst  $38                                         ; $5807: $ff
	rst  $38                                         ; $5808: $ff
	rst  $38                                         ; $5809: $ff
	rst  $38                                         ; $580a: $ff
	rst  $38                                         ; $580b: $ff
	rst  $38                                         ; $580c: $ff
	rst  $38                                         ; $580d: $ff
	rst  $38                                         ; $580e: $ff
	rst  $38                                         ; $580f: $ff
	rst  $38                                         ; $5810: $ff
	rst  $38                                         ; $5811: $ff
	rst  $38                                         ; $5812: $ff
	rst  $38                                         ; $5813: $ff
	rst  $38                                         ; $5814: $ff
	rst  $38                                         ; $5815: $ff
	rst  $38                                         ; $5816: $ff
	rst  $38                                         ; $5817: $ff
	rst  $38                                         ; $5818: $ff
	rst  $38                                         ; $5819: $ff
	rst  $38                                         ; $581a: $ff
	rst  $38                                         ; $581b: $ff
	rst  $38                                         ; $581c: $ff
	rst  $38                                         ; $581d: $ff
	rst  $38                                         ; $581e: $ff
	rst  $38                                         ; $581f: $ff
	rst  $38                                         ; $5820: $ff
	rst  $38                                         ; $5821: $ff
	rst  $38                                         ; $5822: $ff
	rst  $38                                         ; $5823: $ff
	rst  $38                                         ; $5824: $ff
	rst  $38                                         ; $5825: $ff
	rst  $38                                         ; $5826: $ff
	rst  $38                                         ; $5827: $ff
	rst  $38                                         ; $5828: $ff
	rst  $38                                         ; $5829: $ff
	rst  $38                                         ; $582a: $ff
	rst  $38                                         ; $582b: $ff
	rst  $38                                         ; $582c: $ff
	rst  $38                                         ; $582d: $ff
	rst  $38                                         ; $582e: $ff
	rst  $38                                         ; $582f: $ff
	rst  $38                                         ; $5830: $ff
	rst  $38                                         ; $5831: $ff
	rst  $38                                         ; $5832: $ff
	rst  $38                                         ; $5833: $ff
	rst  $38                                         ; $5834: $ff
	rst  $38                                         ; $5835: $ff
	rst  $38                                         ; $5836: $ff
	rst  $38                                         ; $5837: $ff
	rst  $38                                         ; $5838: $ff
	rst  $38                                         ; $5839: $ff
	rst  $38                                         ; $583a: $ff
	rst  $38                                         ; $583b: $ff
	rst  $38                                         ; $583c: $ff
	rst  $38                                         ; $583d: $ff
	rst  $38                                         ; $583e: $ff
	rst  $38                                         ; $583f: $ff
	dec  b                                           ; $5840: $05
	dec  b                                           ; $5841: $05
	dec  b                                           ; $5842: $05
	dec  b                                           ; $5843: $05
	inc  b                                           ; $5844: $04
	inc  bc                                          ; $5845: $03
	inc  bc                                          ; $5846: $03
	inc  bc                                          ; $5847: $03
	jp   nc, $02d2                                   ; $5848: $d2 $d2 $02

	ld   [bc], a                                     ; $584b: $02
	ld   [bc], a                                     ; $584c: $02
	ld   [bc], a                                     ; $584d: $02
	ld   [bc], a                                     ; $584e: $02
	ld   [bc], a                                     ; $584f: $02
	ld   [bc], a                                     ; $5850: $02
	rst  $38                                         ; $5851: $ff
	rst  $38                                         ; $5852: $ff
	rst  $38                                         ; $5853: $ff
	rst  $38                                         ; $5854: $ff
	rst  $38                                         ; $5855: $ff
	rst  $38                                         ; $5856: $ff
	rst  $38                                         ; $5857: $ff
	rst  $38                                         ; $5858: $ff
	rst  $38                                         ; $5859: $ff
	rst  $38                                         ; $585a: $ff
	rst  $38                                         ; $585b: $ff
	rst  $38                                         ; $585c: $ff
	rst  $38                                         ; $585d: $ff
	rst  $38                                         ; $585e: $ff
	dec  b                                           ; $585f: $05
	dec  b                                           ; $5860: $05
	dec  b                                           ; $5861: $05
	dec  b                                           ; $5862: $05
	dec  b                                           ; $5863: $05
	inc  b                                           ; $5864: $04
	inc  b                                           ; $5865: $04
	inc  b                                           ; $5866: $04
	ld   [bc], a                                     ; $5867: $02
	jp   nc, $02d2                                   ; $5868: $d2 $d2 $02

	ld   [bc], a                                     ; $586b: $02
	ld   [bc], a                                     ; $586c: $02
	ld   [bc], a                                     ; $586d: $02
	ld   [bc], a                                     ; $586e: $02
	ld   [bc], a                                     ; $586f: $02
	ld   [bc], a                                     ; $5870: $02
	ld   [bc], a                                     ; $5871: $02
	ld   [bc], a                                     ; $5872: $02
	ld   [bc], a                                     ; $5873: $02
	ld   [bc], a                                     ; $5874: $02
	ld   [bc], a                                     ; $5875: $02
	ld   [bc], a                                     ; $5876: $02
	ld   [bc], a                                     ; $5877: $02
	rst  $38                                         ; $5878: $ff
	rst  $38                                         ; $5879: $ff
	rst  $38                                         ; $587a: $ff
	rst  $38                                         ; $587b: $ff
	rst  $38                                         ; $587c: $ff
	rst  $38                                         ; $587d: $ff
	rst  $38                                         ; $587e: $ff
	dec  b                                           ; $587f: $05
	dec  b                                           ; $5880: $05
	dec  b                                           ; $5881: $05
	dec  b                                           ; $5882: $05
	dec  b                                           ; $5883: $05
	dec  b                                           ; $5884: $05
	inc  b                                           ; $5885: $04
	inc  b                                           ; $5886: $04
	ld   [bc], a                                     ; $5887: $02
	jp   nc, $02d2                                   ; $5888: $d2 $d2 $02

	ld   [bc], a                                     ; $588b: $02
	ld   [bc], a                                     ; $588c: $02
	ld   [bc], a                                     ; $588d: $02
	ld   [bc], a                                     ; $588e: $02
	ld   [bc], a                                     ; $588f: $02
	ld   [bc], a                                     ; $5890: $02
	ld   [bc], a                                     ; $5891: $02
	ld   [bc], a                                     ; $5892: $02
	ld   [bc], a                                     ; $5893: $02
	ld   [bc], a                                     ; $5894: $02
	ld   [bc], a                                     ; $5895: $02
	ld   [bc], a                                     ; $5896: $02
	ld   [bc], a                                     ; $5897: $02
	rst  $38                                         ; $5898: $ff
	rst  $38                                         ; $5899: $ff
	rst  $38                                         ; $589a: $ff
	rst  $38                                         ; $589b: $ff
	rst  $38                                         ; $589c: $ff
	rst  $38                                         ; $589d: $ff
	rst  $38                                         ; $589e: $ff
	dec  b                                           ; $589f: $05
	dec  b                                           ; $58a0: $05
	dec  b                                           ; $58a1: $05
	dec  b                                           ; $58a2: $05
	dec  b                                           ; $58a3: $05
	dec  b                                           ; $58a4: $05
	dec  b                                           ; $58a5: $05
	inc  b                                           ; $58a6: $04
	ld   [bc], a                                     ; $58a7: $02
	jp   nc, $01d2                                   ; $58a8: $d2 $d2 $01

	ld   [bc], a                                     ; $58ab: $02
	ld   [bc], a                                     ; $58ac: $02
	ld   [bc], a                                     ; $58ad: $02
	ld   [bc], a                                     ; $58ae: $02
	ld   [bc], a                                     ; $58af: $02
	ld   [bc], a                                     ; $58b0: $02
	ld   [bc], a                                     ; $58b1: $02
	ld   [bc], a                                     ; $58b2: $02
	ld   [bc], a                                     ; $58b3: $02
	ld   [bc], a                                     ; $58b4: $02
	ld   [bc], a                                     ; $58b5: $02
	ld   [bc], a                                     ; $58b6: $02
	ld   [bc], a                                     ; $58b7: $02
	rst  $38                                         ; $58b8: $ff
	rst  $38                                         ; $58b9: $ff
	rst  $38                                         ; $58ba: $ff
	rst  $38                                         ; $58bb: $ff
	rst  $38                                         ; $58bc: $ff
	rst  $38                                         ; $58bd: $ff
	rst  $38                                         ; $58be: $ff
	dec  b                                           ; $58bf: $05
	dec  b                                           ; $58c0: $05
	dec  b                                           ; $58c1: $05
	dec  b                                           ; $58c2: $05
	inc  b                                           ; $58c3: $04
	inc  b                                           ; $58c4: $04
	inc  b                                           ; $58c5: $04
	inc  b                                           ; $58c6: $04
	ld   [bc], a                                     ; $58c7: $02
	jp   nc, $01d2                                   ; $58c8: $d2 $d2 $01

	ld   bc, $0101                                   ; $58cb: $01 $01 $01
	ld   [bc], a                                     ; $58ce: $02
	ld   [bc], a                                     ; $58cf: $02
	ld   [bc], a                                     ; $58d0: $02
	ld   [bc], a                                     ; $58d1: $02
	ld   [bc], a                                     ; $58d2: $02
	ld   [bc], a                                     ; $58d3: $02
	ld   [bc], a                                     ; $58d4: $02
	ld   [bc], a                                     ; $58d5: $02
	ld   [bc], a                                     ; $58d6: $02
	ld   [bc], a                                     ; $58d7: $02
	ld   [bc], a                                     ; $58d8: $02
	ld   [bc], a                                     ; $58d9: $02
	rst  $38                                         ; $58da: $ff
	rst  $38                                         ; $58db: $ff
	rst  $38                                         ; $58dc: $ff
	rst  $38                                         ; $58dd: $ff
	rst  $38                                         ; $58de: $ff
	ld   b, $05                                      ; $58df: $06 $05
	dec  b                                           ; $58e1: $05
	dec  b                                           ; $58e2: $05
	dec  b                                           ; $58e3: $05
	dec  b                                           ; $58e4: $05
	dec  b                                           ; $58e5: $05
	inc  b                                           ; $58e6: $04
	inc  b                                           ; $58e7: $04
	rst  $38                                         ; $58e8: $ff
	rst  $38                                         ; $58e9: $ff
	rst  $38                                         ; $58ea: $ff
	ld   bc, $0101                                   ; $58eb: $01 $01 $01
	ld   bc, $0201                                   ; $58ee: $01 $01 $02
	ld   [bc], a                                     ; $58f1: $02
	ld   [bc], a                                     ; $58f2: $02
	ld   [bc], a                                     ; $58f3: $02
	ld   [bc], a                                     ; $58f4: $02
	ld   [bc], a                                     ; $58f5: $02
	ld   [bc], a                                     ; $58f6: $02
	ld   [bc], a                                     ; $58f7: $02
	ld   [bc], a                                     ; $58f8: $02
	ld   [bc], a                                     ; $58f9: $02
	rst  $38                                         ; $58fa: $ff
	rst  $38                                         ; $58fb: $ff
	rst  $38                                         ; $58fc: $ff
	rst  $38                                         ; $58fd: $ff
	rst  $38                                         ; $58fe: $ff
	ld   b, $06                                      ; $58ff: $06 $06
	ld   b, $06                                      ; $5901: $06 $06
	ld   b, $06                                      ; $5903: $06 $06
	dec  b                                           ; $5905: $05
	inc  b                                           ; $5906: $04
	inc  b                                           ; $5907: $04
	inc  b                                           ; $5908: $04
	inc  b                                           ; $5909: $04
	rst  $38                                         ; $590a: $ff
	rst  $38                                         ; $590b: $ff
	rst  $38                                         ; $590c: $ff
	ld   bc, $0101                                   ; $590d: $01 $01 $01
	ld   bc, $0101                                   ; $5910: $01 $01 $01
	ld   bc, $0202                                   ; $5913: $01 $02 $02
	ld   bc, $0101                                   ; $5916: $01 $01 $01
	ld   bc, $ffff                                   ; $5919: $01 $ff $ff
	rst  $38                                         ; $591c: $ff
	rst  $38                                         ; $591d: $ff
	rst  $38                                         ; $591e: $ff
	ld   b, $06                                      ; $591f: $06 $06
	ld   b, $06                                      ; $5921: $06 $06
	ld   b, $05                                      ; $5923: $06 $05
	dec  b                                           ; $5925: $05
	dec  b                                           ; $5926: $05
	dec  b                                           ; $5927: $05
	dec  b                                           ; $5928: $05
	inc  b                                           ; $5929: $04
	dec  b                                           ; $592a: $05
	inc  b                                           ; $592b: $04
	rst  $38                                         ; $592c: $ff
	rst  $38                                         ; $592d: $ff
	rst  $38                                         ; $592e: $ff
	ld   bc, $0101                                   ; $592f: $01 $01 $01
	ld   bc, $0201                                   ; $5932: $01 $01 $02
	ld   [bc], a                                     ; $5935: $02
	ld   bc, $0101                                   ; $5936: $01 $01 $01
	ld   bc, $ffff                                   ; $5939: $01 $ff $ff
	rst  $38                                         ; $593c: $ff
	rst  $38                                         ; $593d: $ff
	rst  $38                                         ; $593e: $ff
	ld   b, $06                                      ; $593f: $06 $06
	ld   b, $06                                      ; $5941: $06 $06
	ld   b, $05                                      ; $5943: $06 $05
	dec  b                                           ; $5945: $05
	dec  b                                           ; $5946: $05
	dec  b                                           ; $5947: $05
	dec  b                                           ; $5948: $05
	dec  b                                           ; $5949: $05
	dec  b                                           ; $594a: $05
	inc  b                                           ; $594b: $04
	inc  b                                           ; $594c: $04
	inc  b                                           ; $594d: $04
	rst  $38                                         ; $594e: $ff
	rst  $38                                         ; $594f: $ff
	rst  $38                                         ; $5950: $ff
	ld   bc, $0101                                   ; $5951: $01 $01 $01
	ld   bc, $0101                                   ; $5954: $01 $01 $01
	ld   bc, $0101                                   ; $5957: $01 $01 $01
	rst  $38                                         ; $595a: $ff
	rst  $38                                         ; $595b: $ff
	rst  $38                                         ; $595c: $ff
	rst  $38                                         ; $595d: $ff
	rst  $38                                         ; $595e: $ff
	rst  $38                                         ; $595f: $ff
	rst  $38                                         ; $5960: $ff
	rst  $38                                         ; $5961: $ff
	rst  $38                                         ; $5962: $ff
	rst  $38                                         ; $5963: $ff
	ld   b, $06                                      ; $5964: $06 $06
	ld   b, $05                                      ; $5966: $06 $05
	dec  b                                           ; $5968: $05
	dec  b                                           ; $5969: $05
	dec  b                                           ; $596a: $05
	dec  b                                           ; $596b: $05
	dec  b                                           ; $596c: $05
	inc  b                                           ; $596d: $04
	inc  bc                                          ; $596e: $03
	inc  bc                                          ; $596f: $03
	rst  $38                                         ; $5970: $ff
	rst  $38                                         ; $5971: $ff
	rst  $38                                         ; $5972: $ff
	ld   bc, $0101                                   ; $5973: $01 $01 $01
	ld   bc, $0101                                   ; $5976: $01 $01 $01
	ld   bc, $ffff                                   ; $5979: $01 $ff $ff
	rst  $38                                         ; $597c: $ff
	rst  $38                                         ; $597d: $ff
	rst  $38                                         ; $597e: $ff
	rst  $38                                         ; $597f: $ff
	rst  $38                                         ; $5980: $ff
	rst  $38                                         ; $5981: $ff
	rst  $38                                         ; $5982: $ff
	rst  $38                                         ; $5983: $ff
	ld   b, $06                                      ; $5984: $06 $06
	ld   b, $06                                      ; $5986: $06 $06
	dec  b                                           ; $5988: $05
	dec  b                                           ; $5989: $05
	ld   b, $05                                      ; $598a: $06 $05
	dec  b                                           ; $598c: $05
	dec  b                                           ; $598d: $05
	inc  bc                                          ; $598e: $03
	inc  bc                                          ; $598f: $03
	inc  bc                                          ; $5990: $03
	inc  bc                                          ; $5991: $03
	rst  $38                                         ; $5992: $ff
	rst  $38                                         ; $5993: $ff
	rst  $38                                         ; $5994: $ff
	ld   bc, $0001                                   ; $5995: $01 $01 $00
	nop                                              ; $5998: $00
	ld   bc, $ffff                                   ; $5999: $01 $ff $ff
	rst  $38                                         ; $599c: $ff
	rst  $38                                         ; $599d: $ff
	rst  $38                                         ; $599e: $ff
	rst  $38                                         ; $599f: $ff
	rst  $38                                         ; $59a0: $ff
	rst  $38                                         ; $59a1: $ff
	rst  $38                                         ; $59a2: $ff
	rst  $38                                         ; $59a3: $ff
	rst  $38                                         ; $59a4: $ff
	rst  $38                                         ; $59a5: $ff
	rst  $38                                         ; $59a6: $ff
	ld   b, $06                                      ; $59a7: $06 $06
	ld   b, $05                                      ; $59a9: $06 $05
	dec  b                                           ; $59ab: $05
	dec  b                                           ; $59ac: $05
	dec  b                                           ; $59ad: $05
	inc  bc                                          ; $59ae: $03
	inc  bc                                          ; $59af: $03
	inc  bc                                          ; $59b0: $03
	inc  bc                                          ; $59b1: $03
	rst  $38                                         ; $59b2: $ff
	rst  $38                                         ; $59b3: $ff
	rst  $38                                         ; $59b4: $ff
	nop                                              ; $59b5: $00
	nop                                              ; $59b6: $00
	ld   bc, $0101                                   ; $59b7: $01 $01 $01
	rst  $38                                         ; $59ba: $ff
	rst  $38                                         ; $59bb: $ff
	rst  $38                                         ; $59bc: $ff
	rst  $38                                         ; $59bd: $ff
	rst  $38                                         ; $59be: $ff
	inc  b                                           ; $59bf: $04
	inc  b                                           ; $59c0: $04
	inc  bc                                          ; $59c1: $03
	inc  bc                                          ; $59c2: $03
	jp   $03c3                                       ; $59c3: $c3 $c3 $03


	rst  $38                                         ; $59c6: $ff
	rst  $38                                         ; $59c7: $ff
	rst  $38                                         ; $59c8: $ff
	ld   b, $06                                      ; $59c9: $06 $06
	ld   b, $05                                      ; $59cb: $06 $05
	inc  b                                           ; $59cd: $04
	inc  bc                                          ; $59ce: $03
	inc  bc                                          ; $59cf: $03
	inc  bc                                          ; $59d0: $03
	inc  bc                                          ; $59d1: $03
	inc  bc                                          ; $59d2: $03
	rst  $38                                         ; $59d3: $ff
	rst  $38                                         ; $59d4: $ff
	nop                                              ; $59d5: $00
	nop                                              ; $59d6: $00
	nop                                              ; $59d7: $00
	ld   bc, $ff01                                   ; $59d8: $01 $01 $ff
	rst  $38                                         ; $59db: $ff
	rst  $38                                         ; $59dc: $ff
	rst  $38                                         ; $59dd: $ff
	dec  b                                           ; $59de: $05
	inc  b                                           ; $59df: $04
	inc  b                                           ; $59e0: $04
	inc  bc                                          ; $59e1: $03
	inc  bc                                          ; $59e2: $03
	jp   $02c2                                       ; $59e3: $c3 $c2 $02


	ld   [bc], a                                     ; $59e6: $02
	ld   [bc], a                                     ; $59e7: $02
	ld   [bc], a                                     ; $59e8: $02
	rst  $38                                         ; $59e9: $ff
	rst  $38                                         ; $59ea: $ff
	rst  $38                                         ; $59eb: $ff
	inc  b                                           ; $59ec: $04
	inc  b                                           ; $59ed: $04
	inc  bc                                          ; $59ee: $03
	inc  bc                                          ; $59ef: $03
	inc  bc                                          ; $59f0: $03
	inc  bc                                          ; $59f1: $03
	inc  bc                                          ; $59f2: $03
	rst  $38                                         ; $59f3: $ff
	rst  $38                                         ; $59f4: $ff
	nop                                              ; $59f5: $00
	nop                                              ; $59f6: $00
	nop                                              ; $59f7: $00
	nop                                              ; $59f8: $00
	ld   bc, $ffff                                   ; $59f9: $01 $ff $ff
	rst  $38                                         ; $59fc: $ff
	rst  $38                                         ; $59fd: $ff
	dec  b                                           ; $59fe: $05
	inc  b                                           ; $59ff: $04
	inc  b                                           ; $5a00: $04
	inc  bc                                          ; $5a01: $03
	inc  b                                           ; $5a02: $04
	jp   nz, $02c2                                   ; $5a03: $c2 $c2 $02

	ld   [bc], a                                     ; $5a06: $02
	ld   [bc], a                                     ; $5a07: $02
	ld   [bc], a                                     ; $5a08: $02
	ld   [bc], a                                     ; $5a09: $02
	ld   [bc], a                                     ; $5a0a: $02
	inc  b                                           ; $5a0b: $04
	inc  b                                           ; $5a0c: $04
	inc  b                                           ; $5a0d: $04
	ld   [bc], a                                     ; $5a0e: $02
	ld   [bc], a                                     ; $5a0f: $02
	inc  bc                                          ; $5a10: $03
	inc  bc                                          ; $5a11: $03
	inc  bc                                          ; $5a12: $03
	rst  $38                                         ; $5a13: $ff
	rst  $38                                         ; $5a14: $ff
	nop                                              ; $5a15: $00
	nop                                              ; $5a16: $00
	nop                                              ; $5a17: $00
	nop                                              ; $5a18: $00
	ld   bc, $ffff                                   ; $5a19: $01 $ff $ff
	rst  $38                                         ; $5a1c: $ff
	rst  $38                                         ; $5a1d: $ff
	dec  b                                           ; $5a1e: $05
	inc  b                                           ; $5a1f: $04
	inc  b                                           ; $5a20: $04
	inc  b                                           ; $5a21: $04
	inc  b                                           ; $5a22: $04
	jp   nz, $02c2                                   ; $5a23: $c2 $c2 $02

	ld   [bc], a                                     ; $5a26: $02
	ld   [bc], a                                     ; $5a27: $02
	ld   [bc], a                                     ; $5a28: $02
	ld   [bc], a                                     ; $5a29: $02
	ld   [bc], a                                     ; $5a2a: $02
	ld   [bc], a                                     ; $5a2b: $02
	ld   [bc], a                                     ; $5a2c: $02
	ld   [bc], a                                     ; $5a2d: $02
	ld   [bc], a                                     ; $5a2e: $02
	ld   [bc], a                                     ; $5a2f: $02
	ld   [bc], a                                     ; $5a30: $02
	ld   [bc], a                                     ; $5a31: $02
	ld   [bc], a                                     ; $5a32: $02
	rst  $38                                         ; $5a33: $ff
	rst  $38                                         ; $5a34: $ff
	nop                                              ; $5a35: $00
	nop                                              ; $5a36: $00
	nop                                              ; $5a37: $00
	nop                                              ; $5a38: $00
	nop                                              ; $5a39: $00
	rst  $38                                         ; $5a3a: $ff
	rst  $38                                         ; $5a3b: $ff
	rst  $38                                         ; $5a3c: $ff
	rst  $38                                         ; $5a3d: $ff
	dec  b                                           ; $5a3e: $05
	inc  b                                           ; $5a3f: $04
	inc  b                                           ; $5a40: $04
	inc  b                                           ; $5a41: $04
	inc  b                                           ; $5a42: $04
	jp   nz, $02c2                                   ; $5a43: $c2 $c2 $02

	ld   [bc], a                                     ; $5a46: $02
	ld   [bc], a                                     ; $5a47: $02
	ld   [bc], a                                     ; $5a48: $02
	ld   [bc], a                                     ; $5a49: $02
	ld   [bc], a                                     ; $5a4a: $02
	ld   [bc], a                                     ; $5a4b: $02
	ld   [bc], a                                     ; $5a4c: $02
	ld   [bc], a                                     ; $5a4d: $02
	ld   [bc], a                                     ; $5a4e: $02
	ld   [bc], a                                     ; $5a4f: $02
	ld   [bc], a                                     ; $5a50: $02
	ld   [bc], a                                     ; $5a51: $02
	ld   [bc], a                                     ; $5a52: $02
	rst  $38                                         ; $5a53: $ff
	rst  $38                                         ; $5a54: $ff
	nop                                              ; $5a55: $00
	nop                                              ; $5a56: $00
	nop                                              ; $5a57: $00
	nop                                              ; $5a58: $00
	nop                                              ; $5a59: $00
	rst  $38                                         ; $5a5a: $ff
	rst  $38                                         ; $5a5b: $ff
	rst  $38                                         ; $5a5c: $ff
	rst  $38                                         ; $5a5d: $ff
	dec  b                                           ; $5a5e: $05
	inc  b                                           ; $5a5f: $04
	inc  b                                           ; $5a60: $04
	inc  b                                           ; $5a61: $04
	inc  b                                           ; $5a62: $04
	jp   nz, $02c2                                   ; $5a63: $c2 $c2 $02

	ld   [bc], a                                     ; $5a66: $02
	ld   [bc], a                                     ; $5a67: $02
	ld   [bc], a                                     ; $5a68: $02
	ld   [bc], a                                     ; $5a69: $02
	ld   [bc], a                                     ; $5a6a: $02
	ld   [bc], a                                     ; $5a6b: $02
	ld   [bc], a                                     ; $5a6c: $02
	ld   [bc], a                                     ; $5a6d: $02
	ld   [bc], a                                     ; $5a6e: $02
	ld   [bc], a                                     ; $5a6f: $02
	ld   [bc], a                                     ; $5a70: $02
	ld   [bc], a                                     ; $5a71: $02
	ld   [bc], a                                     ; $5a72: $02
	rst  $38                                         ; $5a73: $ff
	rst  $38                                         ; $5a74: $ff
	nop                                              ; $5a75: $00
	nop                                              ; $5a76: $00
	nop                                              ; $5a77: $00
	nop                                              ; $5a78: $00
	nop                                              ; $5a79: $00
	rst  $38                                         ; $5a7a: $ff
	rst  $38                                         ; $5a7b: $ff
	rst  $38                                         ; $5a7c: $ff
	rst  $38                                         ; $5a7d: $ff
	dec  b                                           ; $5a7e: $05
	inc  b                                           ; $5a7f: $04
	inc  b                                           ; $5a80: $04
	inc  b                                           ; $5a81: $04
	inc  b                                           ; $5a82: $04
	jp   nz, $01c2                                   ; $5a83: $c2 $c2 $01

	ld   bc, $0101                                   ; $5a86: $01 $01 $01
	ld   [bc], a                                     ; $5a89: $02
	ld   [bc], a                                     ; $5a8a: $02
	ld   [bc], a                                     ; $5a8b: $02
	ld   [bc], a                                     ; $5a8c: $02
	ld   [bc], a                                     ; $5a8d: $02
	ld   [bc], a                                     ; $5a8e: $02
	ld   [bc], a                                     ; $5a8f: $02
	ld   [bc], a                                     ; $5a90: $02
	ld   [bc], a                                     ; $5a91: $02
	ld   [bc], a                                     ; $5a92: $02
	rst  $38                                         ; $5a93: $ff
	rst  $38                                         ; $5a94: $ff
	nop                                              ; $5a95: $00
	nop                                              ; $5a96: $00
	nop                                              ; $5a97: $00
	nop                                              ; $5a98: $00
	nop                                              ; $5a99: $00
	rst  $38                                         ; $5a9a: $ff
	rst  $38                                         ; $5a9b: $ff
	rst  $38                                         ; $5a9c: $ff
	rst  $38                                         ; $5a9d: $ff
	dec  b                                           ; $5a9e: $05
	inc  b                                           ; $5a9f: $04
	dec  b                                           ; $5aa0: $05
	dec  b                                           ; $5aa1: $05
	inc  b                                           ; $5aa2: $04
	jp   nz, $01c2                                   ; $5aa3: $c2 $c2 $01

	ld   bc, $0101                                   ; $5aa6: $01 $01 $01
	ld   [bc], a                                     ; $5aa9: $02
	ld   [bc], a                                     ; $5aaa: $02
	ld   bc, $0101                                   ; $5aab: $01 $01 $01
	ld   bc, $0202                                   ; $5aae: $01 $02 $02
	ld   [bc], a                                     ; $5ab1: $02
	ld   [bc], a                                     ; $5ab2: $02
	rst  $38                                         ; $5ab3: $ff
	rst  $38                                         ; $5ab4: $ff
	rlca                                             ; $5ab5: $07
	nop                                              ; $5ab6: $00
	nop                                              ; $5ab7: $00
	nop                                              ; $5ab8: $00
	nop                                              ; $5ab9: $00
	rst  $38                                         ; $5aba: $ff
	rst  $38                                         ; $5abb: $ff
	rst  $38                                         ; $5abc: $ff
	rst  $38                                         ; $5abd: $ff
	dec  b                                           ; $5abe: $05
	dec  b                                           ; $5abf: $05
	dec  b                                           ; $5ac0: $05
	dec  b                                           ; $5ac1: $05
	inc  b                                           ; $5ac2: $04
	rst  $38                                         ; $5ac3: $ff
	rst  $38                                         ; $5ac4: $ff
	rst  $38                                         ; $5ac5: $ff
	rst  $38                                         ; $5ac6: $ff
	rst  $38                                         ; $5ac7: $ff
	rst  $38                                         ; $5ac8: $ff
	rst  $38                                         ; $5ac9: $ff
	rst  $38                                         ; $5aca: $ff
	rst  $38                                         ; $5acb: $ff
	rst  $38                                         ; $5acc: $ff
	rst  $38                                         ; $5acd: $ff
	rst  $38                                         ; $5ace: $ff
	rst  $38                                         ; $5acf: $ff
	rst  $38                                         ; $5ad0: $ff
	rst  $38                                         ; $5ad1: $ff
	rst  $38                                         ; $5ad2: $ff
	rst  $38                                         ; $5ad3: $ff
	rst  $38                                         ; $5ad4: $ff
	nop                                              ; $5ad5: $00
	nop                                              ; $5ad6: $00
	nop                                              ; $5ad7: $00
	nop                                              ; $5ad8: $00
	nop                                              ; $5ad9: $00
	rst  $38                                         ; $5ada: $ff
	rst  $38                                         ; $5adb: $ff
	rst  $38                                         ; $5adc: $ff
	rst  $38                                         ; $5add: $ff
	dec  b                                           ; $5ade: $05
	dec  b                                           ; $5adf: $05
	dec  b                                           ; $5ae0: $05
	inc  b                                           ; $5ae1: $04
	inc  b                                           ; $5ae2: $04
	rst  $38                                         ; $5ae3: $ff
	rst  $38                                         ; $5ae4: $ff
	rst  $38                                         ; $5ae5: $ff
	rst  $38                                         ; $5ae6: $ff
	rst  $38                                         ; $5ae7: $ff
	rst  $38                                         ; $5ae8: $ff
	rst  $38                                         ; $5ae9: $ff
	rst  $38                                         ; $5aea: $ff
	rst  $38                                         ; $5aeb: $ff
	rst  $38                                         ; $5aec: $ff
	rst  $38                                         ; $5aed: $ff
	rst  $38                                         ; $5aee: $ff
	rst  $38                                         ; $5aef: $ff
	rst  $38                                         ; $5af0: $ff
	rst  $38                                         ; $5af1: $ff
	rst  $38                                         ; $5af2: $ff
	rst  $38                                         ; $5af3: $ff
	rst  $38                                         ; $5af4: $ff
	nop                                              ; $5af5: $00
	nop                                              ; $5af6: $00
	nop                                              ; $5af7: $00
	nop                                              ; $5af8: $00
	nop                                              ; $5af9: $00
	rst  $38                                         ; $5afa: $ff
	rst  $38                                         ; $5afb: $ff
	rst  $38                                         ; $5afc: $ff
	rst  $38                                         ; $5afd: $ff
	ld   b, $05                                      ; $5afe: $06 $05
	dec  b                                           ; $5b00: $05
	inc  b                                           ; $5b01: $04
	inc  b                                           ; $5b02: $04
	rst  $38                                         ; $5b03: $ff
	rst  $38                                         ; $5b04: $ff
	rst  $38                                         ; $5b05: $ff
	rst  $38                                         ; $5b06: $ff
	rst  $38                                         ; $5b07: $ff
	rst  $38                                         ; $5b08: $ff
	rst  $38                                         ; $5b09: $ff
	rst  $38                                         ; $5b0a: $ff
	rst  $38                                         ; $5b0b: $ff
	rst  $38                                         ; $5b0c: $ff
	rst  $38                                         ; $5b0d: $ff
	rst  $38                                         ; $5b0e: $ff
	rst  $38                                         ; $5b0f: $ff
	rst  $38                                         ; $5b10: $ff
	rst  $38                                         ; $5b11: $ff
	rst  $38                                         ; $5b12: $ff
	rst  $38                                         ; $5b13: $ff
	rst  $38                                         ; $5b14: $ff
	rlca                                             ; $5b15: $07
	nop                                              ; $5b16: $00
	nop                                              ; $5b17: $00
	nop                                              ; $5b18: $00
	nop                                              ; $5b19: $00
	rst  $38                                         ; $5b1a: $ff
	rst  $38                                         ; $5b1b: $ff
	rst  $38                                         ; $5b1c: $ff
	rst  $38                                         ; $5b1d: $ff
	ld   b, $05                                      ; $5b1e: $06 $05
	dec  b                                           ; $5b20: $05
	dec  b                                           ; $5b21: $05
	inc  b                                           ; $5b22: $04
	dec  b                                           ; $5b23: $05
	ld   b, $06                                      ; $5b24: $06 $06
	ld   b, $06                                      ; $5b26: $06 $06
	ld   b, $06                                      ; $5b28: $06 $06
	ld   b, $06                                      ; $5b2a: $06 $06
	ld   b, $e6                                      ; $5b2c: $06 $e6
	and  $06                                         ; $5b2e: $e6 $06
	ld   b, $06                                      ; $5b30: $06 $06
	ld   b, $07                                      ; $5b32: $06 $07
	rlca                                             ; $5b34: $07
	rlca                                             ; $5b35: $07
	nop                                              ; $5b36: $00
	nop                                              ; $5b37: $00
	nop                                              ; $5b38: $00
	nop                                              ; $5b39: $00
	rst  $38                                         ; $5b3a: $ff
	rst  $38                                         ; $5b3b: $ff
	rst  $38                                         ; $5b3c: $ff
	rst  $38                                         ; $5b3d: $ff
	ld   b, $06                                      ; $5b3e: $06 $06
	ld   b, $06                                      ; $5b40: $06 $06
	ld   b, $06                                      ; $5b42: $06 $06
	ld   b, $06                                      ; $5b44: $06 $06
	ld   b, $06                                      ; $5b46: $06 $06
	rlca                                             ; $5b48: $07
	ld   b, $06                                      ; $5b49: $06 $06
	ld   b, $06                                      ; $5b4b: $06 $06
	and  $e6                                         ; $5b4d: $e6 $e6
	ld   b, $06                                      ; $5b4f: $06 $06
	ld   b, $06                                      ; $5b51: $06 $06
	ld   b, $07                                      ; $5b53: $06 $07
	rlca                                             ; $5b55: $07
	rlca                                             ; $5b56: $07
	nop                                              ; $5b57: $00
	nop                                              ; $5b58: $00
	nop                                              ; $5b59: $00
	rst  $38                                         ; $5b5a: $ff
	rst  $38                                         ; $5b5b: $ff
	rst  $38                                         ; $5b5c: $ff
	rst  $38                                         ; $5b5d: $ff
	ld   b, $06                                      ; $5b5e: $06 $06
	ld   b, $06                                      ; $5b60: $06 $06
	ld   b, $06                                      ; $5b62: $06 $06
	ld   b, $06                                      ; $5b64: $06 $06
	ld   b, $06                                      ; $5b66: $06 $06
	rlca                                             ; $5b68: $07
	ld   b, $06                                      ; $5b69: $06 $06
	ld   b, $06                                      ; $5b6b: $06 $06
	and  $e6                                         ; $5b6d: $e6 $e6
	ld   b, $06                                      ; $5b6f: $06 $06
	ld   b, $06                                      ; $5b71: $06 $06
	ld   b, $07                                      ; $5b73: $06 $07
	rlca                                             ; $5b75: $07
	nop                                              ; $5b76: $00
	nop                                              ; $5b77: $00
	nop                                              ; $5b78: $00
	nop                                              ; $5b79: $00
	rst  $38                                         ; $5b7a: $ff
	rst  $38                                         ; $5b7b: $ff
	rst  $38                                         ; $5b7c: $ff
	rst  $38                                         ; $5b7d: $ff
	ld   b, $06                                      ; $5b7e: $06 $06
	ld   b, $06                                      ; $5b80: $06 $06
	ld   b, $06                                      ; $5b82: $06 $06
	ld   b, $06                                      ; $5b84: $06 $06
	rlca                                             ; $5b86: $07
	rlca                                             ; $5b87: $07
	ld   b, $06                                      ; $5b88: $06 $06
	ld   b, $06                                      ; $5b8a: $06 $06
	ld   b, $e6                                      ; $5b8c: $06 $e6
	and  $06                                         ; $5b8e: $e6 $06
	ld   b, $06                                      ; $5b90: $06 $06
	ld   b, $06                                      ; $5b92: $06 $06
	rlca                                             ; $5b94: $07
	rlca                                             ; $5b95: $07
	rlca                                             ; $5b96: $07
	rlca                                             ; $5b97: $07
	nop                                              ; $5b98: $00
	nop                                              ; $5b99: $00
	rst  $38                                         ; $5b9a: $ff
	rst  $38                                         ; $5b9b: $ff
	rst  $38                                         ; $5b9c: $ff
	rst  $38                                         ; $5b9d: $ff
	ld   b, $06                                      ; $5b9e: $06 $06
	ld   b, $06                                      ; $5ba0: $06 $06
	ld   b, $07                                      ; $5ba2: $06 $07
	rlca                                             ; $5ba4: $07
	rlca                                             ; $5ba5: $07
	rlca                                             ; $5ba6: $07
	rlca                                             ; $5ba7: $07
	ld   b, $06                                      ; $5ba8: $06 $06
	ld   b, $06                                      ; $5baa: $06 $06
	ld   b, $e6                                      ; $5bac: $06 $e6
	and  $06                                         ; $5bae: $e6 $06
	ld   b, $06                                      ; $5bb0: $06 $06
	ld   b, $06                                      ; $5bb2: $06 $06
	ld   b, $06                                      ; $5bb4: $06 $06
	rlca                                             ; $5bb6: $07
	rlca                                             ; $5bb7: $07
	nop                                              ; $5bb8: $00
	nop                                              ; $5bb9: $00
	rst  $38                                         ; $5bba: $ff
	rst  $38                                         ; $5bbb: $ff
	rst  $38                                         ; $5bbc: $ff
	rst  $38                                         ; $5bbd: $ff
	rst  $38                                         ; $5bbe: $ff
	rst  $38                                         ; $5bbf: $ff
	rst  $38                                         ; $5bc0: $ff
	rst  $38                                         ; $5bc1: $ff
	rst  $38                                         ; $5bc2: $ff
	rst  $38                                         ; $5bc3: $ff
	rst  $38                                         ; $5bc4: $ff
	rst  $38                                         ; $5bc5: $ff
	rst  $38                                         ; $5bc6: $ff
	rst  $38                                         ; $5bc7: $ff
	rst  $38                                         ; $5bc8: $ff
	rst  $38                                         ; $5bc9: $ff
	rst  $38                                         ; $5bca: $ff
	rst  $38                                         ; $5bcb: $ff
	rst  $38                                         ; $5bcc: $ff
	rst  $38                                         ; $5bcd: $ff
	rst  $38                                         ; $5bce: $ff
	rst  $38                                         ; $5bcf: $ff
	rst  $38                                         ; $5bd0: $ff
	rst  $38                                         ; $5bd1: $ff
	rst  $38                                         ; $5bd2: $ff
	rst  $38                                         ; $5bd3: $ff
	rst  $38                                         ; $5bd4: $ff
	rst  $38                                         ; $5bd5: $ff
	rst  $38                                         ; $5bd6: $ff
	rst  $38                                         ; $5bd7: $ff
	rst  $38                                         ; $5bd8: $ff
	rst  $38                                         ; $5bd9: $ff
	rst  $38                                         ; $5bda: $ff
	rst  $38                                         ; $5bdb: $ff
	rst  $38                                         ; $5bdc: $ff
	rst  $38                                         ; $5bdd: $ff
	rst  $38                                         ; $5bde: $ff

Jump_020_5bdf:
	rst  $38                                         ; $5bdf: $ff
	rst  $38                                         ; $5be0: $ff
	rst  $38                                         ; $5be1: $ff
	rst  $38                                         ; $5be2: $ff
	rst  $38                                         ; $5be3: $ff
	rst  $38                                         ; $5be4: $ff
	rst  $38                                         ; $5be5: $ff
	rst  $38                                         ; $5be6: $ff
	rst  $38                                         ; $5be7: $ff
	rst  $38                                         ; $5be8: $ff
	rst  $38                                         ; $5be9: $ff
	rst  $38                                         ; $5bea: $ff
	rst  $38                                         ; $5beb: $ff
	rst  $38                                         ; $5bec: $ff
	rst  $38                                         ; $5bed: $ff
	rst  $38                                         ; $5bee: $ff
	rst  $38                                         ; $5bef: $ff
	rst  $38                                         ; $5bf0: $ff
	rst  $38                                         ; $5bf1: $ff
	rst  $38                                         ; $5bf2: $ff
	rst  $38                                         ; $5bf3: $ff
	rst  $38                                         ; $5bf4: $ff
	rst  $38                                         ; $5bf5: $ff
	rst  $38                                         ; $5bf6: $ff
	rst  $38                                         ; $5bf7: $ff
	rst  $38                                         ; $5bf8: $ff
	rst  $38                                         ; $5bf9: $ff
	rst  $38                                         ; $5bfa: $ff
	rst  $38                                         ; $5bfb: $ff
	rst  $38                                         ; $5bfc: $ff
	rst  $38                                         ; $5bfd: $ff
	rst  $38                                         ; $5bfe: $ff
	rst  $38                                         ; $5bff: $ff
	rst  $38                                         ; $5c00: $ff
	rst  $38                                         ; $5c01: $ff
	rst  $38                                         ; $5c02: $ff
	rst  $38                                         ; $5c03: $ff
	rst  $38                                         ; $5c04: $ff
	rst  $38                                         ; $5c05: $ff
	rst  $38                                         ; $5c06: $ff
	rst  $38                                         ; $5c07: $ff
	rst  $38                                         ; $5c08: $ff
	rst  $38                                         ; $5c09: $ff
	rst  $38                                         ; $5c0a: $ff
	rst  $38                                         ; $5c0b: $ff
	rst  $38                                         ; $5c0c: $ff
	rst  $38                                         ; $5c0d: $ff
	rst  $38                                         ; $5c0e: $ff
	rst  $38                                         ; $5c0f: $ff
	rst  $38                                         ; $5c10: $ff
	rst  $38                                         ; $5c11: $ff
	rst  $38                                         ; $5c12: $ff
	rst  $38                                         ; $5c13: $ff
	rst  $38                                         ; $5c14: $ff
	rst  $38                                         ; $5c15: $ff
	rst  $38                                         ; $5c16: $ff
	rst  $38                                         ; $5c17: $ff
	rst  $38                                         ; $5c18: $ff
	rst  $38                                         ; $5c19: $ff
	rst  $38                                         ; $5c1a: $ff
	rst  $38                                         ; $5c1b: $ff
	rst  $38                                         ; $5c1c: $ff
	rst  $38                                         ; $5c1d: $ff
	rst  $38                                         ; $5c1e: $ff
	rst  $38                                         ; $5c1f: $ff
	rst  $38                                         ; $5c20: $ff
	rst  $38                                         ; $5c21: $ff
	rst  $38                                         ; $5c22: $ff
	rst  $38                                         ; $5c23: $ff
	rst  $38                                         ; $5c24: $ff
	rst  $38                                         ; $5c25: $ff
	rst  $38                                         ; $5c26: $ff
	rst  $38                                         ; $5c27: $ff
	rst  $38                                         ; $5c28: $ff
	rst  $38                                         ; $5c29: $ff
	rst  $38                                         ; $5c2a: $ff
	rst  $38                                         ; $5c2b: $ff
	rst  $38                                         ; $5c2c: $ff
	rst  $38                                         ; $5c2d: $ff
	rst  $38                                         ; $5c2e: $ff
	rst  $38                                         ; $5c2f: $ff
	rst  $38                                         ; $5c30: $ff
	rst  $38                                         ; $5c31: $ff
	rst  $38                                         ; $5c32: $ff
	rst  $38                                         ; $5c33: $ff
	rst  $38                                         ; $5c34: $ff
	rst  $38                                         ; $5c35: $ff
	rst  $38                                         ; $5c36: $ff
	rst  $38                                         ; $5c37: $ff
	rst  $38                                         ; $5c38: $ff
	rst  $38                                         ; $5c39: $ff
	rst  $38                                         ; $5c3a: $ff
	rst  $38                                         ; $5c3b: $ff
	rst  $38                                         ; $5c3c: $ff
	rst  $38                                         ; $5c3d: $ff
	rst  $38                                         ; $5c3e: $ff
	dec  b                                           ; $5c3f: $05
	dec  b                                           ; $5c40: $05
	dec  b                                           ; $5c41: $05
	dec  b                                           ; $5c42: $05
	dec  b                                           ; $5c43: $05
	dec  b                                           ; $5c44: $05
	inc  b                                           ; $5c45: $04
	inc  b                                           ; $5c46: $04
	inc  b                                           ; $5c47: $04
	rst  $38                                         ; $5c48: $ff
	rst  $38                                         ; $5c49: $ff
	rst  $38                                         ; $5c4a: $ff
	rst  $38                                         ; $5c4b: $ff
	rst  $38                                         ; $5c4c: $ff
	rst  $38                                         ; $5c4d: $ff
	rst  $38                                         ; $5c4e: $ff
	rst  $38                                         ; $5c4f: $ff
	rst  $38                                         ; $5c50: $ff
	rst  $38                                         ; $5c51: $ff
	rst  $38                                         ; $5c52: $ff
	ld   b, $06                                      ; $5c53: $06 $06
	inc  b                                           ; $5c55: $04
	inc  b                                           ; $5c56: $04
	inc  b                                           ; $5c57: $04
	inc  b                                           ; $5c58: $04
	rst  $38                                         ; $5c59: $ff
	rst  $38                                         ; $5c5a: $ff
	rst  $38                                         ; $5c5b: $ff
	rst  $38                                         ; $5c5c: $ff
	ld   b, $06                                      ; $5c5d: $06 $06
	ld   b, $06                                      ; $5c5f: $06 $06
	ld   b, $06                                      ; $5c61: $06 $06
	dec  b                                           ; $5c63: $05
	dec  b                                           ; $5c64: $05
	dec  b                                           ; $5c65: $05
	inc  b                                           ; $5c66: $04
	inc  b                                           ; $5c67: $04
	dec  b                                           ; $5c68: $05
	ld   b, $06                                      ; $5c69: $06 $06
	ld   b, $06                                      ; $5c6b: $06 $06
	ld   b, $06                                      ; $5c6d: $06 $06
	and  $e6                                         ; $5c6f: $e6 $e6
	ld   b, $06                                      ; $5c71: $06 $06
	ld   b, $06                                      ; $5c73: $06 $06
	inc  b                                           ; $5c75: $04
	inc  b                                           ; $5c76: $04
	inc  b                                           ; $5c77: $04
	inc  b                                           ; $5c78: $04
	inc  bc                                          ; $5c79: $03
	rst  $38                                         ; $5c7a: $ff
	rst  $38                                         ; $5c7b: $ff
	rst  $38                                         ; $5c7c: $ff
	ld   b, $06                                      ; $5c7d: $06 $06
	ld   b, $06                                      ; $5c7f: $06 $06
	ld   b, $06                                      ; $5c81: $06 $06
	dec  b                                           ; $5c83: $05
	ld   b, $06                                      ; $5c84: $06 $06
	ld   b, $06                                      ; $5c86: $06 $06
	dec  b                                           ; $5c88: $05
	dec  b                                           ; $5c89: $05
	dec  b                                           ; $5c8a: $05
	ld   b, $06                                      ; $5c8b: $06 $06
	ld   b, $06                                      ; $5c8d: $06 $06
	and  $e6                                         ; $5c8f: $e6 $e6
	ld   b, $06                                      ; $5c91: $06 $06
	ld   b, $06                                      ; $5c93: $06 $06
	inc  b                                           ; $5c95: $04
	inc  b                                           ; $5c96: $04
	inc  b                                           ; $5c97: $04
	inc  b                                           ; $5c98: $04
	inc  bc                                          ; $5c99: $03
	rst  $38                                         ; $5c9a: $ff
	rst  $38                                         ; $5c9b: $ff
	rst  $38                                         ; $5c9c: $ff
	ld   b, $06                                      ; $5c9d: $06 $06
	ld   b, $06                                      ; $5c9f: $06 $06
	ld   b, $06                                      ; $5ca1: $06 $06
	ld   b, $06                                      ; $5ca3: $06 $06
	ld   b, $06                                      ; $5ca5: $06 $06
	ld   b, $06                                      ; $5ca7: $06 $06
	dec  b                                           ; $5ca9: $05
	dec  b                                           ; $5caa: $05
	ld   b, $06                                      ; $5cab: $06 $06
	ld   b, $06                                      ; $5cad: $06 $06
	and  $e6                                         ; $5caf: $e6 $e6
	ld   b, $06                                      ; $5cb1: $06 $06
	ld   b, $04                                      ; $5cb3: $06 $04
	inc  b                                           ; $5cb5: $04
	inc  b                                           ; $5cb6: $04
	inc  b                                           ; $5cb7: $04
	inc  b                                           ; $5cb8: $04
	inc  bc                                          ; $5cb9: $03
	inc  bc                                          ; $5cba: $03
	rst  $38                                         ; $5cbb: $ff
	rst  $38                                         ; $5cbc: $ff
	ld   b, $06                                      ; $5cbd: $06 $06
	ld   b, $06                                      ; $5cbf: $06 $06
	ld   b, $06                                      ; $5cc1: $06 $06
	ld   b, $06                                      ; $5cc3: $06 $06
	ld   b, $06                                      ; $5cc5: $06 $06
	ld   b, $06                                      ; $5cc7: $06 $06
	ld   b, $06                                      ; $5cc9: $06 $06
	ld   b, $06                                      ; $5ccb: $06 $06
	ld   b, $06                                      ; $5ccd: $06 $06
	and  $e6                                         ; $5ccf: $e6 $e6
	ld   b, $06                                      ; $5cd1: $06 $06
	ld   b, $04                                      ; $5cd3: $06 $04
	inc  b                                           ; $5cd5: $04
	inc  b                                           ; $5cd6: $04
	inc  b                                           ; $5cd7: $04
	inc  bc                                          ; $5cd8: $03
	inc  bc                                          ; $5cd9: $03
	inc  bc                                          ; $5cda: $03
	rst  $38                                         ; $5cdb: $ff
	rst  $38                                         ; $5cdc: $ff
	rlca                                             ; $5cdd: $07
	rlca                                             ; $5cde: $07
	rlca                                             ; $5cdf: $07
	ld   b, $06                                      ; $5ce0: $06 $06
	nop                                              ; $5ce2: $00
	nop                                              ; $5ce3: $00
	ld   b, $06                                      ; $5ce4: $06 $06
	rlca                                             ; $5ce6: $07
	ld   b, $06                                      ; $5ce7: $06 $06
	ld   b, $06                                      ; $5ce9: $06 $06
	ld   b, $06                                      ; $5ceb: $06 $06
	ld   b, $06                                      ; $5ced: $06 $06
	and  $e6                                         ; $5cef: $e6 $e6
	ld   b, $06                                      ; $5cf1: $06 $06
	dec  b                                           ; $5cf3: $05
	inc  b                                           ; $5cf4: $04
	inc  b                                           ; $5cf5: $04
	inc  b                                           ; $5cf6: $04
	inc  b                                           ; $5cf7: $04
	inc  bc                                          ; $5cf8: $03
	inc  bc                                          ; $5cf9: $03
	inc  bc                                          ; $5cfa: $03
	rst  $38                                         ; $5cfb: $ff
	rst  $38                                         ; $5cfc: $ff
	rlca                                             ; $5cfd: $07
	rlca                                             ; $5cfe: $07
	rlca                                             ; $5cff: $07
	rlca                                             ; $5d00: $07
	rlca                                             ; $5d01: $07
	nop                                              ; $5d02: $00
	nop                                              ; $5d03: $00
	rst  $38                                         ; $5d04: $ff
	rst  $38                                         ; $5d05: $ff
	rlca                                             ; $5d06: $07
	rlca                                             ; $5d07: $07
	rlca                                             ; $5d08: $07
	rlca                                             ; $5d09: $07
	rlca                                             ; $5d0a: $07
	rlca                                             ; $5d0b: $07
	ld   b, $06                                      ; $5d0c: $06 $06
	ld   b, $e6                                      ; $5d0e: $06 $e6
	and  $06                                         ; $5d10: $e6 $06
	ld   b, $05                                      ; $5d12: $06 $05
	dec  b                                           ; $5d14: $05
	inc  b                                           ; $5d15: $04
	inc  b                                           ; $5d16: $04
	inc  b                                           ; $5d17: $04
	inc  bc                                          ; $5d18: $03
	inc  bc                                          ; $5d19: $03
	inc  bc                                          ; $5d1a: $03
	rst  $38                                         ; $5d1b: $ff
	rst  $38                                         ; $5d1c: $ff
	rlca                                             ; $5d1d: $07
	rlca                                             ; $5d1e: $07
	rlca                                             ; $5d1f: $07
	nop                                              ; $5d20: $00
	rst  $38                                         ; $5d21: $ff
	rst  $38                                         ; $5d22: $ff
	rst  $38                                         ; $5d23: $ff
	rst  $38                                         ; $5d24: $ff
	rst  $38                                         ; $5d25: $ff
	rst  $38                                         ; $5d26: $ff
	rst  $38                                         ; $5d27: $ff
	rst  $38                                         ; $5d28: $ff
	rst  $38                                         ; $5d29: $ff
	rst  $38                                         ; $5d2a: $ff
	rst  $38                                         ; $5d2b: $ff
	rst  $38                                         ; $5d2c: $ff
	rst  $38                                         ; $5d2d: $ff
	rst  $38                                         ; $5d2e: $ff
	rst  $38                                         ; $5d2f: $ff
	rst  $38                                         ; $5d30: $ff
	rst  $38                                         ; $5d31: $ff
	rst  $38                                         ; $5d32: $ff
	rst  $38                                         ; $5d33: $ff
	inc  b                                           ; $5d34: $04
	inc  b                                           ; $5d35: $04
	inc  b                                           ; $5d36: $04
	inc  b                                           ; $5d37: $04
	inc  bc                                          ; $5d38: $03
	ld   [bc], a                                     ; $5d39: $02
	ld   [bc], a                                     ; $5d3a: $02
	rst  $38                                         ; $5d3b: $ff
	rst  $38                                         ; $5d3c: $ff
	rlca                                             ; $5d3d: $07
	nop                                              ; $5d3e: $00
	nop                                              ; $5d3f: $00
	ld   [bc], a                                     ; $5d40: $02
	rst  $38                                         ; $5d41: $ff
	rst  $38                                         ; $5d42: $ff
	rst  $38                                         ; $5d43: $ff
	rst  $38                                         ; $5d44: $ff
	rst  $38                                         ; $5d45: $ff
	rst  $38                                         ; $5d46: $ff
	rst  $38                                         ; $5d47: $ff
	rst  $38                                         ; $5d48: $ff
	rst  $38                                         ; $5d49: $ff
	rst  $38                                         ; $5d4a: $ff
	rst  $38                                         ; $5d4b: $ff
	rst  $38                                         ; $5d4c: $ff
	rst  $38                                         ; $5d4d: $ff
	rst  $38                                         ; $5d4e: $ff
	rst  $38                                         ; $5d4f: $ff
	rst  $38                                         ; $5d50: $ff
	rst  $38                                         ; $5d51: $ff
	rst  $38                                         ; $5d52: $ff
	rst  $38                                         ; $5d53: $ff
	dec  b                                           ; $5d54: $05
	dec  b                                           ; $5d55: $05
	inc  b                                           ; $5d56: $04
	inc  bc                                          ; $5d57: $03
	inc  bc                                          ; $5d58: $03
	ld   [bc], a                                     ; $5d59: $02
	ld   [bc], a                                     ; $5d5a: $02
	rst  $38                                         ; $5d5b: $ff
	rst  $38                                         ; $5d5c: $ff
	rlca                                             ; $5d5d: $07
	nop                                              ; $5d5e: $00
	ld   bc, $0202                                   ; $5d5f: $01 $02 $02
	rst  $38                                         ; $5d62: $ff
	rst  $38                                         ; $5d63: $ff
	rst  $38                                         ; $5d64: $ff
	rst  $38                                         ; $5d65: $ff
	rst  $38                                         ; $5d66: $ff
	rst  $38                                         ; $5d67: $ff
	rst  $38                                         ; $5d68: $ff
	inc  b                                           ; $5d69: $04
	inc  b                                           ; $5d6a: $04
	inc  bc                                          ; $5d6b: $03
	ld   [bc], a                                     ; $5d6c: $02
	ld   [bc], a                                     ; $5d6d: $02
	ld   [bc], a                                     ; $5d6e: $02
	rst  $38                                         ; $5d6f: $ff
	rst  $38                                         ; $5d70: $ff
	rst  $38                                         ; $5d71: $ff
	rst  $38                                         ; $5d72: $ff
	rst  $38                                         ; $5d73: $ff
	dec  b                                           ; $5d74: $05
	dec  b                                           ; $5d75: $05
	dec  b                                           ; $5d76: $05
	inc  bc                                          ; $5d77: $03
	ld   [bc], a                                     ; $5d78: $02
	inc  bc                                          ; $5d79: $03
	rst  $38                                         ; $5d7a: $ff
	rst  $38                                         ; $5d7b: $ff
	rst  $38                                         ; $5d7c: $ff
	rlca                                             ; $5d7d: $07
	nop                                              ; $5d7e: $00
	ld   bc, $0202                                   ; $5d7f: $01 $02 $02
	rst  $38                                         ; $5d82: $ff
	rst  $38                                         ; $5d83: $ff
	rst  $38                                         ; $5d84: $ff
	rst  $38                                         ; $5d85: $ff
	dec  b                                           ; $5d86: $05
	dec  b                                           ; $5d87: $05
	inc  b                                           ; $5d88: $04
	inc  b                                           ; $5d89: $04
	inc  bc                                          ; $5d8a: $03
	inc  bc                                          ; $5d8b: $03
	ld   [bc], a                                     ; $5d8c: $02
	ld   [bc], a                                     ; $5d8d: $02
	ld   [bc], a                                     ; $5d8e: $02
	ld   [bc], a                                     ; $5d8f: $02
	ld   [bc], a                                     ; $5d90: $02
	rst  $38                                         ; $5d91: $ff
	rst  $38                                         ; $5d92: $ff
	dec  b                                           ; $5d93: $05
	dec  b                                           ; $5d94: $05
	dec  b                                           ; $5d95: $05
	dec  b                                           ; $5d96: $05
	inc  bc                                          ; $5d97: $03
	inc  bc                                          ; $5d98: $03
	inc  bc                                          ; $5d99: $03
	rst  $38                                         ; $5d9a: $ff
	rst  $38                                         ; $5d9b: $ff
	rst  $38                                         ; $5d9c: $ff
	nop                                              ; $5d9d: $00
	nop                                              ; $5d9e: $00
	nop                                              ; $5d9f: $00
	ld   bc, $0201                                   ; $5da0: $01 $01 $02
	rst  $38                                         ; $5da3: $ff
	rst  $38                                         ; $5da4: $ff
	dec  b                                           ; $5da5: $05
	dec  b                                           ; $5da6: $05
	inc  b                                           ; $5da7: $04
	inc  b                                           ; $5da8: $04
	inc  bc                                          ; $5da9: $03
	inc  bc                                          ; $5daa: $03
	ld   [bc], a                                     ; $5dab: $02
	ld   [bc], a                                     ; $5dac: $02
	ld   [bc], a                                     ; $5dad: $02
	ld   [bc], a                                     ; $5dae: $02
	ld   [bc], a                                     ; $5daf: $02
	ld   [bc], a                                     ; $5db0: $02
	rst  $38                                         ; $5db1: $ff
	rst  $38                                         ; $5db2: $ff
	ld   b, $06                                      ; $5db3: $06 $06
	dec  b                                           ; $5db5: $05
	dec  b                                           ; $5db6: $05
	inc  b                                           ; $5db7: $04
	inc  bc                                          ; $5db8: $03
	inc  bc                                          ; $5db9: $03
	rst  $38                                         ; $5dba: $ff
	rst  $38                                         ; $5dbb: $ff
	rst  $38                                         ; $5dbc: $ff
	nop                                              ; $5dbd: $00
	nop                                              ; $5dbe: $00
	nop                                              ; $5dbf: $00
	ld   bc, $0201                                   ; $5dc0: $01 $01 $02
	rst  $38                                         ; $5dc3: $ff
	rst  $38                                         ; $5dc4: $ff
	dec  b                                           ; $5dc5: $05
	dec  b                                           ; $5dc6: $05
	inc  b                                           ; $5dc7: $04
	inc  b                                           ; $5dc8: $04
	inc  bc                                          ; $5dc9: $03
	ld   [bc], a                                     ; $5dca: $02
	ld   [bc], a                                     ; $5dcb: $02
	ld   [bc], a                                     ; $5dcc: $02
	ld   [bc], a                                     ; $5dcd: $02
	ld   [bc], a                                     ; $5dce: $02
	ld   [bc], a                                     ; $5dcf: $02
	ld   [bc], a                                     ; $5dd0: $02
	rst  $38                                         ; $5dd1: $ff
	rst  $38                                         ; $5dd2: $ff
	ld   b, $06                                      ; $5dd3: $06 $06
	dec  b                                           ; $5dd5: $05
	dec  b                                           ; $5dd6: $05
	inc  b                                           ; $5dd7: $04
	inc  bc                                          ; $5dd8: $03
	inc  bc                                          ; $5dd9: $03
	rst  $38                                         ; $5dda: $ff
	rst  $38                                         ; $5ddb: $ff
	rst  $38                                         ; $5ddc: $ff
	rst  $38                                         ; $5ddd: $ff
	nop                                              ; $5dde: $00
	nop                                              ; $5ddf: $00
	ld   bc, $0201                                   ; $5de0: $01 $01 $02
	rst  $38                                         ; $5de3: $ff
	rst  $38                                         ; $5de4: $ff
	dec  b                                           ; $5de5: $05
	dec  b                                           ; $5de6: $05
	inc  b                                           ; $5de7: $04
	inc  b                                           ; $5de8: $04
	ld   [bc], a                                     ; $5de9: $02
	ld   [bc], a                                     ; $5dea: $02
	ld   [bc], a                                     ; $5deb: $02
	ld   [bc], a                                     ; $5dec: $02
	ld   bc, $0201                                   ; $5ded: $01 $01 $02
	ld   [bc], a                                     ; $5df0: $02
	ld   [bc], a                                     ; $5df1: $02
	rst  $38                                         ; $5df2: $ff
	rst  $38                                         ; $5df3: $ff
	ld   b, $05                                      ; $5df4: $06 $05
	dec  b                                           ; $5df6: $05
	inc  b                                           ; $5df7: $04
	inc  b                                           ; $5df8: $04
	inc  bc                                          ; $5df9: $03
	rst  $38                                         ; $5dfa: $ff
	rst  $38                                         ; $5dfb: $ff
	rst  $38                                         ; $5dfc: $ff
	rst  $38                                         ; $5dfd: $ff
	nop                                              ; $5dfe: $00
	nop                                              ; $5dff: $00
	ld   bc, $0201                                   ; $5e00: $01 $01 $02
	rst  $38                                         ; $5e03: $ff
	rst  $38                                         ; $5e04: $ff
	dec  b                                           ; $5e05: $05
	dec  b                                           ; $5e06: $05
	inc  b                                           ; $5e07: $04
	ld   [bc], a                                     ; $5e08: $02
	ld   [bc], a                                     ; $5e09: $02
	ld   [bc], a                                     ; $5e0a: $02
	rst  $38                                         ; $5e0b: $ff
	rst  $38                                         ; $5e0c: $ff
	nop                                              ; $5e0d: $00
	ld   bc, $0202                                   ; $5e0e: $01 $02 $02
	ld   [bc], a                                     ; $5e11: $02
	rst  $38                                         ; $5e12: $ff
	rst  $38                                         ; $5e13: $ff
	dec  b                                           ; $5e14: $05
	dec  b                                           ; $5e15: $05
	dec  b                                           ; $5e16: $05
	inc  b                                           ; $5e17: $04
	inc  b                                           ; $5e18: $04
	inc  bc                                          ; $5e19: $03
	rst  $38                                         ; $5e1a: $ff
	rst  $38                                         ; $5e1b: $ff
	rst  $38                                         ; $5e1c: $ff
	rst  $38                                         ; $5e1d: $ff
	rlca                                             ; $5e1e: $07
	nop                                              ; $5e1f: $00
	ld   bc, $0201                                   ; $5e20: $01 $01 $02
	rst  $38                                         ; $5e23: $ff
	rst  $38                                         ; $5e24: $ff
	dec  b                                           ; $5e25: $05
	dec  b                                           ; $5e26: $05
	inc  b                                           ; $5e27: $04
	inc  b                                           ; $5e28: $04
	ld   [bc], a                                     ; $5e29: $02
	rst  $38                                         ; $5e2a: $ff
	rst  $38                                         ; $5e2b: $ff
	rst  $38                                         ; $5e2c: $ff
	nop                                              ; $5e2d: $00
	ld   bc, $0101                                   ; $5e2e: $01 $01 $01
	ld   [bc], a                                     ; $5e31: $02
	rst  $38                                         ; $5e32: $ff
	rst  $38                                         ; $5e33: $ff
	dec  b                                           ; $5e34: $05
	dec  b                                           ; $5e35: $05
	dec  b                                           ; $5e36: $05
	inc  b                                           ; $5e37: $04
	inc  b                                           ; $5e38: $04
	inc  bc                                          ; $5e39: $03
	rst  $38                                         ; $5e3a: $ff
	rst  $38                                         ; $5e3b: $ff
	rst  $38                                         ; $5e3c: $ff
	ld   b, $07                                      ; $5e3d: $06 $07
	rlca                                             ; $5e3f: $07
	ld   bc, $ff01                                   ; $5e40: $01 $01 $ff
	rst  $38                                         ; $5e43: $ff
	rst  $38                                         ; $5e44: $ff
	dec  b                                           ; $5e45: $05
	dec  b                                           ; $5e46: $05
	dec  b                                           ; $5e47: $05
	inc  b                                           ; $5e48: $04
	inc  bc                                          ; $5e49: $03
	rst  $38                                         ; $5e4a: $ff
	rst  $38                                         ; $5e4b: $ff
	rst  $38                                         ; $5e4c: $ff
	nop                                              ; $5e4d: $00
	nop                                              ; $5e4e: $00
	nop                                              ; $5e4f: $00
	ld   bc, $ff02                                   ; $5e50: $01 $02 $ff
	rst  $38                                         ; $5e53: $ff
	ld   b, $05                                      ; $5e54: $06 $05
	dec  b                                           ; $5e56: $05
	inc  b                                           ; $5e57: $04
	inc  b                                           ; $5e58: $04
	inc  bc                                          ; $5e59: $03
	rst  $38                                         ; $5e5a: $ff
	rst  $38                                         ; $5e5b: $ff
	rst  $38                                         ; $5e5c: $ff
	ld   b, $07                                      ; $5e5d: $06 $07
	nop                                              ; $5e5f: $00
	ld   bc, $ff01                                   ; $5e60: $01 $01 $ff
	rst  $38                                         ; $5e63: $ff
	rst  $38                                         ; $5e64: $ff
	ld   b, $05                                      ; $5e65: $06 $05
	dec  b                                           ; $5e67: $05
	inc  b                                           ; $5e68: $04
	inc  b                                           ; $5e69: $04
	inc  bc                                          ; $5e6a: $03
	inc  bc                                          ; $5e6b: $03
	rst  $38                                         ; $5e6c: $ff
	nop                                              ; $5e6d: $00
	nop                                              ; $5e6e: $00
	nop                                              ; $5e6f: $00
	ld   bc, $0201                                   ; $5e70: $01 $01 $02
	rst  $38                                         ; $5e73: $ff
	ld   b, $05                                      ; $5e74: $06 $05
	dec  b                                           ; $5e76: $05
	inc  b                                           ; $5e77: $04
	inc  b                                           ; $5e78: $04
	inc  bc                                          ; $5e79: $03
	rst  $38                                         ; $5e7a: $ff
	rst  $38                                         ; $5e7b: $ff
	rst  $38                                         ; $5e7c: $ff
	rlca                                             ; $5e7d: $07
	nop                                              ; $5e7e: $00
	nop                                              ; $5e7f: $00
	ld   bc, $ffff                                   ; $5e80: $01 $ff $ff
	rst  $38                                         ; $5e83: $ff
	rst  $38                                         ; $5e84: $ff
	ld   b, $06                                      ; $5e85: $06 $06
	dec  b                                           ; $5e87: $05
	inc  b                                           ; $5e88: $04
	inc  b                                           ; $5e89: $04
	inc  bc                                          ; $5e8a: $03
	inc  bc                                          ; $5e8b: $03
	rst  $38                                         ; $5e8c: $ff
	rst  $38                                         ; $5e8d: $ff
	nop                                              ; $5e8e: $00
	nop                                              ; $5e8f: $00
	ld   bc, $0101                                   ; $5e90: $01 $01 $01
	rst  $38                                         ; $5e93: $ff
	ld   b, $06                                      ; $5e94: $06 $06
	dec  b                                           ; $5e96: $05
	inc  b                                           ; $5e97: $04
	inc  bc                                          ; $5e98: $03
	inc  bc                                          ; $5e99: $03
	rst  $38                                         ; $5e9a: $ff
	rst  $38                                         ; $5e9b: $ff
	rst  $38                                         ; $5e9c: $ff
	rlca                                             ; $5e9d: $07
	nop                                              ; $5e9e: $00
	nop                                              ; $5e9f: $00
	ld   bc, $ffff                                   ; $5ea0: $01 $ff $ff
	rst  $38                                         ; $5ea3: $ff
	rst  $38                                         ; $5ea4: $ff
	rst  $38                                         ; $5ea5: $ff
	ld   b, $06                                      ; $5ea6: $06 $06
	dec  b                                           ; $5ea8: $05
	inc  b                                           ; $5ea9: $04
	inc  bc                                          ; $5eaa: $03
	inc  bc                                          ; $5eab: $03
	ld   [bc], a                                     ; $5eac: $02
	rst  $38                                         ; $5ead: $ff
	nop                                              ; $5eae: $00
	nop                                              ; $5eaf: $00
	nop                                              ; $5eb0: $00
	ld   bc, $ff01                                   ; $5eb1: $01 $01 $ff
	ld   b, $06                                      ; $5eb4: $06 $06
	dec  b                                           ; $5eb6: $05
	inc  b                                           ; $5eb7: $04
	inc  bc                                          ; $5eb8: $03
	inc  bc                                          ; $5eb9: $03
	rst  $38                                         ; $5eba: $ff
	rst  $38                                         ; $5ebb: $ff
	rst  $38                                         ; $5ebc: $ff
	rlca                                             ; $5ebd: $07
	nop                                              ; $5ebe: $00
	ld   bc, $ff02                                   ; $5ebf: $01 $02 $ff
	rst  $38                                         ; $5ec2: $ff
	rst  $38                                         ; $5ec3: $ff
	rst  $38                                         ; $5ec4: $ff
	rst  $38                                         ; $5ec5: $ff
	rst  $38                                         ; $5ec6: $ff
	ld   b, $05                                      ; $5ec7: $06 $05
	inc  b                                           ; $5ec9: $04
	inc  b                                           ; $5eca: $04
	inc  bc                                          ; $5ecb: $03
	ld   [bc], a                                     ; $5ecc: $02
	rst  $38                                         ; $5ecd: $ff
	nop                                              ; $5ece: $00
	nop                                              ; $5ecf: $00
	nop                                              ; $5ed0: $00
	ld   bc, $ff01                                   ; $5ed1: $01 $01 $ff
	rst  $38                                         ; $5ed4: $ff
	ld   b, $06                                      ; $5ed5: $06 $06
	inc  b                                           ; $5ed7: $04
	inc  b                                           ; $5ed8: $04
	inc  bc                                          ; $5ed9: $03
	inc  bc                                          ; $5eda: $03
	rst  $38                                         ; $5edb: $ff
	rst  $38                                         ; $5edc: $ff
	rlca                                             ; $5edd: $07
	rlca                                             ; $5ede: $07
	ld   bc, wIsDoubleSpeed                                   ; $5edf: $01 $02 $c2
	jp   nz, $0302                                   ; $5ee2: $c2 $02 $03

	ld   [bc], a                                     ; $5ee5: $02
	rst  $38                                         ; $5ee6: $ff
	rst  $38                                         ; $5ee7: $ff
	dec  b                                           ; $5ee8: $05
	dec  b                                           ; $5ee9: $05
	inc  bc                                          ; $5eea: $03
	ld   [bc], a                                     ; $5eeb: $02
	ld   [bc], a                                     ; $5eec: $02
	rst  $38                                         ; $5eed: $ff
	nop                                              ; $5eee: $00
	nop                                              ; $5eef: $00
	nop                                              ; $5ef0: $00
	ld   bc, $ff02                                   ; $5ef1: $01 $02 $ff
	rst  $38                                         ; $5ef4: $ff
	ld   b, $06                                      ; $5ef5: $06 $06
	inc  b                                           ; $5ef7: $04
	inc  b                                           ; $5ef8: $04
	inc  bc                                          ; $5ef9: $03
	inc  bc                                          ; $5efa: $03
	rst  $38                                         ; $5efb: $ff
	rst  $38                                         ; $5efc: $ff
	rlca                                             ; $5efd: $07
	rlca                                             ; $5efe: $07
	nop                                              ; $5eff: $00
	ld   [bc], a                                     ; $5f00: $02
	jp   nz, $03c3                                   ; $5f01: $c2 $c3 $03

	ld   [bc], a                                     ; $5f04: $02
	inc  bc                                          ; $5f05: $03
	ld   [bc], a                                     ; $5f06: $02
	inc  b                                           ; $5f07: $04
	inc  b                                           ; $5f08: $04
	inc  bc                                          ; $5f09: $03
	inc  bc                                          ; $5f0a: $03
	ld   [bc], a                                     ; $5f0b: $02
	ld   [bc], a                                     ; $5f0c: $02
	rst  $38                                         ; $5f0d: $ff
	nop                                              ; $5f0e: $00
	nop                                              ; $5f0f: $00
	nop                                              ; $5f10: $00
	ld   bc, $ff02                                   ; $5f11: $01 $02 $ff
	rst  $38                                         ; $5f14: $ff
	rst  $38                                         ; $5f15: $ff
	ld   b, $04                                      ; $5f16: $06 $04
	inc  bc                                          ; $5f18: $03
	inc  bc                                          ; $5f19: $03
	inc  bc                                          ; $5f1a: $03
	rst  $38                                         ; $5f1b: $ff
	rst  $38                                         ; $5f1c: $ff
	rlca                                             ; $5f1d: $07
	rlca                                             ; $5f1e: $07
	nop                                              ; $5f1f: $00
	ld   bc, $c2c2                                   ; $5f20: $01 $c2 $c2
	inc  bc                                          ; $5f23: $03
	ld   [bc], a                                     ; $5f24: $02
	inc  bc                                          ; $5f25: $03
	ld   [bc], a                                     ; $5f26: $02
	ld   [bc], a                                     ; $5f27: $02
	inc  bc                                          ; $5f28: $03
	inc  bc                                          ; $5f29: $03
	inc  bc                                          ; $5f2a: $03
	ld   [bc], a                                     ; $5f2b: $02
	rst  $38                                         ; $5f2c: $ff
	rst  $38                                         ; $5f2d: $ff
	rst  $38                                         ; $5f2e: $ff
	nop                                              ; $5f2f: $00
	nop                                              ; $5f30: $00
	ld   [bc], a                                     ; $5f31: $02
	ld   [bc], a                                     ; $5f32: $02
	rst  $38                                         ; $5f33: $ff
	rst  $38                                         ; $5f34: $ff
	rst  $38                                         ; $5f35: $ff
	inc  bc                                          ; $5f36: $03
	inc  bc                                          ; $5f37: $03
	inc  bc                                          ; $5f38: $03
	inc  bc                                          ; $5f39: $03
	inc  bc                                          ; $5f3a: $03
	rst  $38                                         ; $5f3b: $ff
	rst  $38                                         ; $5f3c: $ff
	rlca                                             ; $5f3d: $07
	rlca                                             ; $5f3e: $07
	nop                                              ; $5f3f: $00
	ld   bc, $c2c1                                   ; $5f40: $01 $c1 $c2
	ld   [bc], a                                     ; $5f43: $02
	ld   [bc], a                                     ; $5f44: $02
	ld   [bc], a                                     ; $5f45: $02
	ld   [bc], a                                     ; $5f46: $02
	ld   [bc], a                                     ; $5f47: $02
	ld   [bc], a                                     ; $5f48: $02
	ld   [bc], a                                     ; $5f49: $02
	ld   [bc], a                                     ; $5f4a: $02
	ld   [bc], a                                     ; $5f4b: $02
	rst  $38                                         ; $5f4c: $ff
	rst  $38                                         ; $5f4d: $ff
	rst  $38                                         ; $5f4e: $ff
	nop                                              ; $5f4f: $00
	nop                                              ; $5f50: $00
	ld   [bc], a                                     ; $5f51: $02
	ld   [bc], a                                     ; $5f52: $02
	ld   [bc], a                                     ; $5f53: $02
	jp   nc, $04d3                                   ; $5f54: $d2 $d3 $04

	inc  bc                                          ; $5f57: $03
	inc  bc                                          ; $5f58: $03
	inc  bc                                          ; $5f59: $03
	ld   [bc], a                                     ; $5f5a: $02
	rst  $38                                         ; $5f5b: $ff
	rst  $38                                         ; $5f5c: $ff
	rst  $38                                         ; $5f5d: $ff
	rlca                                             ; $5f5e: $07
	nop                                              ; $5f5f: $00
	ld   bc, $c2c1                                   ; $5f60: $01 $c1 $c2
	ld   [bc], a                                     ; $5f63: $02
	ld   bc, $0201                                   ; $5f64: $01 $01 $02
	ld   bc, $0101                                   ; $5f67: $01 $01 $01
	ld   [bc], a                                     ; $5f6a: $02
	ld   [bc], a                                     ; $5f6b: $02
	rst  $38                                         ; $5f6c: $ff
	rst  $38                                         ; $5f6d: $ff
	rst  $38                                         ; $5f6e: $ff
	nop                                              ; $5f6f: $00
	nop                                              ; $5f70: $00
	nop                                              ; $5f71: $00
	nop                                              ; $5f72: $00
	ld   [bc], a                                     ; $5f73: $02
	jp   nc, $03d2                                   ; $5f74: $d2 $d2 $03

	inc  bc                                          ; $5f77: $03
	inc  bc                                          ; $5f78: $03
	ld   [bc], a                                     ; $5f79: $02
	ld   [bc], a                                     ; $5f7a: $02
	rst  $38                                         ; $5f7b: $ff
	rst  $38                                         ; $5f7c: $ff
	rst  $38                                         ; $5f7d: $ff
	rlca                                             ; $5f7e: $07
	nop                                              ; $5f7f: $00
	ld   bc, $ffff                                   ; $5f80: $01 $ff $ff
	rst  $38                                         ; $5f83: $ff
	rst  $38                                         ; $5f84: $ff
	nop                                              ; $5f85: $00
	nop                                              ; $5f86: $00
	ld   bc, $0101                                   ; $5f87: $01 $01 $01
	rst  $38                                         ; $5f8a: $ff
	rst  $38                                         ; $5f8b: $ff
	rst  $38                                         ; $5f8c: $ff
	rst  $38                                         ; $5f8d: $ff
	rst  $38                                         ; $5f8e: $ff
	rst  $38                                         ; $5f8f: $ff
	nop                                              ; $5f90: $00
	nop                                              ; $5f91: $00
	ld   bc, $d201                                   ; $5f92: $01 $01 $d2
	jp   nc, $0202                                   ; $5f95: $d2 $02 $02

	ld   [bc], a                                     ; $5f98: $02
	ld   [bc], a                                     ; $5f99: $02
	ld   [bc], a                                     ; $5f9a: $02
	rst  $38                                         ; $5f9b: $ff
	rst  $38                                         ; $5f9c: $ff
	rst  $38                                         ; $5f9d: $ff
	rst  $38                                         ; $5f9e: $ff
	rst  $38                                         ; $5f9f: $ff
	rst  $38                                         ; $5fa0: $ff
	rst  $38                                         ; $5fa1: $ff
	rst  $38                                         ; $5fa2: $ff
	rst  $38                                         ; $5fa3: $ff
	rst  $38                                         ; $5fa4: $ff
	rst  $38                                         ; $5fa5: $ff
	rst  $38                                         ; $5fa6: $ff
	rst  $38                                         ; $5fa7: $ff
	rst  $38                                         ; $5fa8: $ff
	rst  $38                                         ; $5fa9: $ff
	rst  $38                                         ; $5faa: $ff
	rst  $38                                         ; $5fab: $ff
	rst  $38                                         ; $5fac: $ff
	rst  $38                                         ; $5fad: $ff
	rst  $38                                         ; $5fae: $ff
	rst  $38                                         ; $5faf: $ff
	rst  $38                                         ; $5fb0: $ff
	ld   bc, $0101                                   ; $5fb1: $01 $01 $01
	pop  de                                          ; $5fb4: $d1
	jp   nc, $0000                                  ; $5fb5: $d2 $00 $00

	nop                                              ; $5fb8: $00
	rst  $38                                         ; $5fb9: $ff
	rst  $38                                         ; $5fba: $ff
	rst  $38                                         ; $5fbb: $ff
	rst  $38                                         ; $5fbc: $ff
	rst  $38                                         ; $5fbd: $ff
	rst  $38                                         ; $5fbe: $ff
	rst  $38                                         ; $5fbf: $ff
	rst  $38                                         ; $5fc0: $ff
	rst  $38                                         ; $5fc1: $ff
	rst  $38                                         ; $5fc2: $ff
	rst  $38                                         ; $5fc3: $ff
	rst  $38                                         ; $5fc4: $ff
	rst  $38                                         ; $5fc5: $ff
	rst  $38                                         ; $5fc6: $ff
	rst  $38                                         ; $5fc7: $ff
	rst  $38                                         ; $5fc8: $ff
	rst  $38                                         ; $5fc9: $ff
	rst  $38                                         ; $5fca: $ff
	rst  $38                                         ; $5fcb: $ff
	rst  $38                                         ; $5fcc: $ff
	rst  $38                                         ; $5fcd: $ff
	rst  $38                                         ; $5fce: $ff
	rst  $38                                         ; $5fcf: $ff
	rst  $38                                         ; $5fd0: $ff
	rst  $38                                         ; $5fd1: $ff
	ld   bc, $d101                                   ; $5fd2: $01 $01 $d1
	pop  de                                          ; $5fd5: $d1
	nop                                              ; $5fd6: $00
	rst  $38                                         ; $5fd7: $ff
	rst  $38                                         ; $5fd8: $ff
	rst  $38                                         ; $5fd9: $ff
	rst  $38                                         ; $5fda: $ff
	rst  $38                                         ; $5fdb: $ff
	rst  $38                                         ; $5fdc: $ff
	rst  $38                                         ; $5fdd: $ff
	rst  $38                                         ; $5fde: $ff
	rst  $38                                         ; $5fdf: $ff
	rst  $38                                         ; $5fe0: $ff
	rst  $38                                         ; $5fe1: $ff
	rst  $38                                         ; $5fe2: $ff
	rst  $38                                         ; $5fe3: $ff
	rst  $38                                         ; $5fe4: $ff
	rst  $38                                         ; $5fe5: $ff
	rst  $38                                         ; $5fe6: $ff
	rst  $38                                         ; $5fe7: $ff
	rst  $38                                         ; $5fe8: $ff
	rst  $38                                         ; $5fe9: $ff
	rst  $38                                         ; $5fea: $ff
	rst  $38                                         ; $5feb: $ff
	rst  $38                                         ; $5fec: $ff
	rst  $38                                         ; $5fed: $ff
	rst  $38                                         ; $5fee: $ff
	rst  $38                                         ; $5fef: $ff
	rst  $38                                         ; $5ff0: $ff
	rst  $38                                         ; $5ff1: $ff
	rst  $38                                         ; $5ff2: $ff
	rst  $38                                         ; $5ff3: $ff
	rst  $38                                         ; $5ff4: $ff
	rst  $38                                         ; $5ff5: $ff
	rst  $38                                         ; $5ff6: $ff
	rst  $38                                         ; $5ff7: $ff
	rst  $38                                         ; $5ff8: $ff
	rst  $38                                         ; $5ff9: $ff
	rst  $38                                         ; $5ffa: $ff
	rst  $38                                         ; $5ffb: $ff
	ld   b, $62                                      ; $5ffc: $06 $62
	ld   hl, sp+$61                                  ; $5ffe: $f8 $61
	ld   [$dc61], a                                  ; $6000: $ea $61 $dc
	ld   h, c                                        ; $6003: $61
	adc  $61                                         ; $6004: $ce $61
	ret  nz                                          ; $6006: $c0

	ld   h, c                                        ; $6007: $61
	or   d                                           ; $6008: $b2
	ld   h, c                                        ; $6009: $61
	and  h                                           ; $600a: $a4
	ld   h, c                                        ; $600b: $61
	sub  [hl]                                        ; $600c: $96
	ld   h, c                                        ; $600d: $61
	adc  b                                           ; $600e: $88
	ld   h, c                                        ; $600f: $61
	ld   a, d                                        ; $6010: $7a
	ld   h, c                                        ; $6011: $61
	ld   l, h                                        ; $6012: $6c
	ld   h, c                                        ; $6013: $61
	ld   e, [hl]                                     ; $6014: $5e
	ld   h, c                                        ; $6015: $61
	ld   d, b                                        ; $6016: $50
	ld   h, c                                        ; $6017: $61
	ld   b, d                                        ; $6018: $42
	ld   h, c                                        ; $6019: $61
	inc  [hl]                                        ; $601a: $34
	ld   h, c                                        ; $601b: $61
	ld   h, $61                                      ; $601c: $26 $61
	jr   jr_020_6081                                 ; $601e: $18 $61

	ld   a, [bc]                                     ; $6020: $0a
	ld   h, c                                        ; $6021: $61
	db   $fc                                         ; $6022: $fc
	ld   h, b                                        ; $6023: $60
	xor  $60                                         ; $6024: $ee $60
	db   $dd                                         ; $6026: $dd
	ld   h, b                                        ; $6027: $60
	call z, $bb60                                    ; $6028: $cc $60 $bb
	ld   h, b                                        ; $602b: $60
	xor  d                                           ; $602c: $aa
	ld   h, b                                        ; $602d: $60
	sub  [hl]                                        ; $602e: $96
	ld   h, b                                        ; $602f: $60
	ld   a, [hl-]                                    ; $6030: $3a
	ld   h, b                                        ; $6031: $60
	ld   d, c                                        ; $6032: $51
	ld   h, b                                        ; $6033: $60
	ld   [hl], c                                     ; $6034: $71
	ld   h, b                                        ; $6035: $60
	add  l                                           ; $6036: $85
	ld   h, b                                        ; $6037: $60
	rst  $38                                         ; $6038: $ff
	rst  $38                                         ; $6039: $ff
	ld   bc, $0000                                   ; $603a: $01 $00 $00
	ld   b, $50                                      ; $603d: $06 $50
	rra                                              ; $603f: $1f
	nop                                              ; $6040: $00
	ld   h, c                                        ; $6041: $61
	dec  h                                           ; $6042: $25
	rrca                                             ; $6043: $0f
	ld   d, b                                        ; $6044: $50
	ld   sp, $3601                                   ; $6045: $31 $01 $36
	ld   b, b                                        ; $6048: $40
	rrca                                             ; $6049: $0f
	ld   d, e                                        ; $604a: $53
	ld   b, e                                        ; $604b: $43
	nop                                              ; $604c: $00
	ld   h, h                                        ; $604d: $64
	ld   c, l                                        ; $604e: $4d
	rrca                                             ; $604f: $0f
	rst  $38                                         ; $6050: $ff
	ld   bc, $0000                                   ; $6051: $01 $00 $00
	add  hl, bc                                      ; $6054: $09
	ld   c, a                                        ; $6055: $4f
	rra                                              ; $6056: $1f
	nop                                              ; $6057: $00
	ld   c, a                                        ; $6058: $4f
	ld   l, $00                                      ; $6059: $2e $00
	ld   d, c                                        ; $605b: $51
	ld   b, b                                        ; $605c: $40
	ld   bc, $1d43                                   ; $605d: $01 $43 $1d
	rrca                                             ; $6060: $0f
	ld   e, l                                        ; $6061: $5d
	ld   [hl+], a                                    ; $6062: $22
	rrca                                             ; $6063: $0f
	ld   b, d                                        ; $6064: $42
	ld   sp, $5f0f                                   ; $6065: $31 $0f $5f
	jr   c, jr_020_6079                              ; $6068: $38 $0f

	ld   e, l                                        ; $606a: $5d
	ld   c, e                                        ; $606b: $4b
	rrca                                             ; $606c: $0f
	ccf                                              ; $606d: $3f
	ld   b, l                                        ; $606e: $45
	rrca                                             ; $606f: $0f
	rst  $38                                         ; $6070: $ff
	nop                                              ; $6071: $00
	ld   [bc], a                                     ; $6072: $02
	ld   [bc], a                                     ; $6073: $02
	dec  b                                           ; $6074: $05
	jr   c, @+$1e                                    ; $6075: $38 $1c

	ld   [bc], a                                     ; $6077: $02
	dec  sp                                          ; $6078: $3b

jr_020_6079:
	scf                                              ; $6079: $37
	ld   [bc], a                                     ; $607a: $02
	ld   [hl-], a                                    ; $607b: $32
	ld   c, d                                        ; $607c: $4a
	nop                                              ; $607d: $00
	ld   d, c                                        ; $607e: $51
	jr   z, jr_020_6090                              ; $607f: $28 $0f

jr_020_6081:
	ld   e, h                                        ; $6081: $5c
	ld   b, c                                        ; $6082: $41
	rrca                                             ; $6083: $0f
	rst  $38                                         ; $6084: $ff
	ld   [bc], a                                     ; $6085: $02
	ld   bc, $0400                                   ; $6086: $01 $00 $04
	ld   e, l                                        ; $6089: $5d
	inc  e                                           ; $608a: $1c
	nop                                              ; $608b: $00
	ld   e, e                                        ; $608c: $5b
	ld   sp, $6102                                   ; $608d: $31 $02 $61

jr_020_6090:
	ld   c, b                                        ; $6090: $48
	ld   bc, $214d                                   ; $6091: $01 $4d $21
	rrca                                             ; $6094: $0f
	rst  $38                                         ; $6095: $ff
	nop                                              ; $6096: $00
	ld   [bc], a                                     ; $6097: $02
	ld   bc, $4205                                   ; $6098: $01 $05 $42
	ld   [hl+], a                                    ; $609b: $22
	ld   [bc], a                                     ; $609c: $02
	ld   c, l                                        ; $609d: $4d
	inc  sp                                          ; $609e: $33
	nop                                              ; $609f: $00
	ld   l, h                                        ; $60a0: $6c
	scf                                              ; $60a1: $37
	rrca                                             ; $60a2: $0f
	ld   h, a                                        ; $60a3: $67
	inc  e                                           ; $60a4: $1c
	rrca                                             ; $60a5: $0f
	ld   d, a                                        ; $60a6: $57
	ld   b, d                                        ; $60a7: $42
	ld   bc, $01ff                                   ; $60a8: $01 $ff $01
	ld   [bc], a                                     ; $60ab: $02
	ld   bc, $4204                                   ; $60ac: $01 $04 $42
	rra                                              ; $60af: $1f
	ld   bc, $1c67                                   ; $60b0: $01 $67 $1c
	rrca                                             ; $60b3: $0f
	ld   c, l                                        ; $60b4: $4d
	ld   sp, $5d01                                   ; $60b5: $31 $01 $5d
	ld   b, d                                        ; $60b8: $42
	ld   [bc], a                                     ; $60b9: $02
	rst  $38                                         ; $60ba: $ff
	ld   [bc], a                                     ; $60bb: $02
	nop                                              ; $60bc: $00
	ld   [bc], a                                     ; $60bd: $02
	inc  b                                           ; $60be: $04
	ld   c, a                                        ; $60bf: $4f
	rra                                              ; $60c0: $1f
	nop                                              ; $60c1: $00
	ld   l, l                                        ; $60c2: $6d
	inc  h                                           ; $60c3: $24
	rrca                                             ; $60c4: $0f
	ld   d, b                                        ; $60c5: $50
	inc  [hl]                                        ; $60c6: $34
	ld   [bc], a                                     ; $60c7: $02
	ld   h, e                                        ; $60c8: $63
	ld   b, a                                        ; $60c9: $47
	ld   [bc], a                                     ; $60ca: $02
	rst  $38                                         ; $60cb: $ff
	nop                                              ; $60cc: $00
	nop                                              ; $60cd: $00
	ld   bc, $5004                                   ; $60ce: $01 $04 $50
	rra                                              ; $60d1: $1f
	nop                                              ; $60d2: $00
	ld   d, b                                        ; $60d3: $50
	ld   sp, $5301                                   ; $60d4: $31 $01 $53
	ld   b, e                                        ; $60d7: $43
	nop                                              ; $60d8: $00
	ld   h, h                                        ; $60d9: $64
	ld   c, l                                        ; $60da: $4d
	rrca                                             ; $60db: $0f
	rst  $38                                         ; $60dc: $ff
	ld   bc, $0200                                   ; $60dd: $01 $00 $02
	inc  b                                           ; $60e0: $04
	ccf                                              ; $60e1: $3f
	ld   hl, $5002                                   ; $60e2: $21 $02 $50
	ld   sp, $3501                                   ; $60e5: $31 $01 $35
	dec  a                                           ; $60e8: $3d
	rrca                                             ; $60e9: $0f
	ld   d, e                                        ; $60ea: $53
	ld   b, e                                        ; $60eb: $43
	nop                                              ; $60ec: $00
	rst  $38                                         ; $60ed: $ff
	ld   [bc], a                                     ; $60ee: $02
	ld   bc, $0300                                   ; $60ef: $01 $00 $03
	ld   b, d                                        ; $60f2: $42
	ld   [hl+], a                                    ; $60f3: $22
	ld   [bc], a                                     ; $60f4: $02
	ld   c, l                                        ; $60f5: $4d
	inc  sp                                          ; $60f6: $33
	nop                                              ; $60f7: $00
	ld   d, a                                        ; $60f8: $57
	ld   b, d                                        ; $60f9: $42
	ld   bc, $01ff                                   ; $60fa: $01 $ff $01
	ld   bc, $0302                                   ; $60fd: $01 $02 $03
	ld   b, d                                        ; $6100: $42
	rra                                              ; $6101: $1f
	ld   bc, $314d                                   ; $6102: $01 $4d $31
	ld   bc, $425d                                   ; $6105: $01 $5d $42
	ld   [bc], a                                     ; $6108: $02
	rst  $38                                         ; $6109: $ff
	nop                                              ; $610a: $00
	ld   [bc], a                                     ; $610b: $02
	ld   [bc], a                                     ; $610c: $02
	inc  bc                                          ; $610d: $03
	ld   c, a                                        ; $610e: $4f
	rra                                              ; $610f: $1f
	nop                                              ; $6110: $00
	ld   d, b                                        ; $6111: $50
	inc  [hl]                                        ; $6112: $34
	ld   [bc], a                                     ; $6113: $02
	ld   h, e                                        ; $6114: $63
	ld   b, a                                        ; $6115: $47
	ld   [bc], a                                     ; $6116: $02
	rst  $38                                         ; $6117: $ff
	nop                                              ; $6118: $00
	nop                                              ; $6119: $00
	ld   bc, $5003                                   ; $611a: $01 $03 $50
	rra                                              ; $611d: $1f
	nop                                              ; $611e: $00
	ld   d, b                                        ; $611f: $50
	ld   sp, $5301                                   ; $6120: $31 $01 $53
	ld   b, e                                        ; $6123: $43
	nop                                              ; $6124: $00
	rst  $38                                         ; $6125: $ff
	ld   [bc], a                                     ; $6126: $02
	nop                                              ; $6127: $00
	ld   bc, $3f03                                   ; $6128: $01 $03 $3f
	ld   hl, $5002                                   ; $612b: $21 $02 $50
	ld   sp, $5301                                   ; $612e: $31 $01 $53
	ld   b, e                                        ; $6131: $43
	nop                                              ; $6132: $00
	rst  $38                                         ; $6133: $ff
	nop                                              ; $6134: $00
	ld   bc, $0301                                   ; $6135: $01 $01 $03
	ld   c, b                                        ; $6138: $48
	ld   hl, $5401                                   ; $6139: $21 $01 $54
	ld   [hl-], a                                    ; $613c: $32
	ld   bc, $4455                                   ; $613d: $01 $55 $44
	nop                                              ; $6140: $00
	rst  $38                                         ; $6141: $ff
	ld   [bc], a                                     ; $6142: $02
	ld   bc, $0300                                   ; $6143: $01 $00 $03
	ld   b, h                                        ; $6146: $44
	inc  hl                                          ; $6147: $23
	ld   [bc], a                                     ; $6148: $02
	ld   d, [hl]                                     ; $6149: $56
	ld   l, $00                                      ; $614a: $2e $00
	ld   d, d                                        ; $614c: $52
	ld   b, b                                        ; $614d: $40
	ld   bc, $02ff                                   ; $614e: $01 $ff $02
	ld   bc, $0301                                   ; $6151: $01 $01 $03
	ld   d, h                                        ; $6154: $54
	ld   [hl+], a                                    ; $6155: $22
	ld   bc, $354b                                   ; $6156: $01 $4b $35
	ld   bc, $435e                                   ; $6159: $01 $5e $43
	ld   [bc], a                                     ; $615c: $02
	rst  $38                                         ; $615d: $ff
	ld   [bc], a                                     ; $615e: $02
	ld   [bc], a                                     ; $615f: $02
	nop                                              ; $6160: $00
	inc  bc                                          ; $6161: $03
	ld   d, h                                        ; $6162: $54
	dec  h                                           ; $6163: $25
	ld   [bc], a                                     ; $6164: $02
	ld   c, d                                        ; $6165: $4a
	scf                                              ; $6166: $37
	nop                                              ; $6167: $00
	scf                                              ; $6168: $37
	ccf                                              ; $6169: $3f
	ld   [bc], a                                     ; $616a: $02
	rst  $38                                         ; $616b: $ff
	nop                                              ; $616c: $00
	ld   bc, $0302                                   ; $616d: $01 $02 $03
	ld   b, d                                        ; $6170: $42
	ld   [hl+], a                                    ; $6171: $22
	ld   [bc], a                                     ; $6172: $02
	ld   c, l                                        ; $6173: $4d
	inc  sp                                          ; $6174: $33
	ldh  a, [$57]                                    ; $6175: $f0 $57
	ld   b, d                                        ; $6177: $42
	ld   bc, $00ff                                   ; $6178: $01 $ff $00
	ld   bc, $0302                                   ; $617b: $01 $02 $03
	ld   b, d                                        ; $617e: $42
	rra                                              ; $617f: $1f
	pop  af                                          ; $6180: $f1
	ld   c, l                                        ; $6181: $4d
	ld   sp, $5d01                                   ; $6182: $31 $01 $5d
	ld   b, d                                        ; $6185: $42
	ld   [bc], a                                     ; $6186: $02
	rst  $38                                         ; $6187: $ff
	nop                                              ; $6188: $00
	ld   bc, $0302                                   ; $6189: $01 $02 $03
	ld   c, a                                        ; $618c: $4f
	rra                                              ; $618d: $1f
	nop                                              ; $618e: $00
	ld   d, b                                        ; $618f: $50
	inc  [hl]                                        ; $6190: $34
	ld   [bc], a                                     ; $6191: $02
	ld   h, e                                        ; $6192: $63
	ld   b, a                                        ; $6193: $47
	ldh  a, [c]                                      ; $6194: $f2
	rst  $38                                         ; $6195: $ff
	nop                                              ; $6196: $00
	ld   bc, $0302                                   ; $6197: $01 $02 $03
	ld   d, b                                        ; $619a: $50
	rra                                              ; $619b: $1f
	ldh  a, [$50]                                    ; $619c: $f0 $50
	ld   sp, $5301                                   ; $619e: $31 $01 $53
	ld   b, e                                        ; $61a1: $43
	ldh  a, [rIE]                                    ; $61a2: $f0 $ff
	nop                                              ; $61a4: $00
	ld   bc, $0302                                   ; $61a5: $01 $02 $03
	ccf                                              ; $61a8: $3f
	ld   hl, $5002                                   ; $61a9: $21 $02 $50
	ld   sp, $53f1                                   ; $61ac: $31 $f1 $53
	ld   b, e                                        ; $61af: $43
	nop                                              ; $61b0: $00
	rst  $38                                         ; $61b1: $ff
	ld   [bc], a                                     ; $61b2: $02
	nop                                              ; $61b3: $00
	ld   [bc], a                                     ; $61b4: $02
	inc  bc                                          ; $61b5: $03
	ccf                                              ; $61b6: $3f
	ld   hl, $5002                                   ; $61b7: $21 $02 $50
	ld   sp, $53f1                                   ; $61ba: $31 $f1 $53
	ld   b, e                                        ; $61bd: $43
	nop                                              ; $61be: $00
	rst  $38                                         ; $61bf: $ff
	nop                                              ; $61c0: $00
	ld   bc, $0302                                   ; $61c1: $01 $02 $03
	ld   b, a                                        ; $61c4: $47
	inc  h                                           ; $61c5: $24
	ldh  a, [c]                                      ; $61c6: $f2
	ld   d, h                                        ; $61c7: $54
	jr   c, jr_020_61cb                              ; $61c8: $38 $01

	ld   e, e                                        ; $61ca: $5b

jr_020_61cb:
	ld   c, b                                        ; $61cb: $48
	nop                                              ; $61cc: $00
	rst  $38                                         ; $61cd: $ff
	nop                                              ; $61ce: $00
	ld   bc, $0301                                   ; $61cf: $01 $01 $03
	ld   c, b                                        ; $61d2: $48
	ld   hl, $5401                                   ; $61d3: $21 $01 $54
	ld   [hl-], a                                    ; $61d6: $32
	pop  af                                          ; $61d7: $f1
	ld   d, l                                        ; $61d8: $55
	ld   b, h                                        ; $61d9: $44
	nop                                              ; $61da: $00
	rst  $38                                         ; $61db: $ff
	ld   [bc], a                                     ; $61dc: $02
	ld   bc, $0300                                   ; $61dd: $01 $00 $03
	ld   b, h                                        ; $61e0: $44
	inc  hl                                          ; $61e1: $23
	ld   [bc], a                                     ; $61e2: $02
	ld   d, [hl]                                     ; $61e3: $56
	ld   l, $f0                                      ; $61e4: $2e $f0
	ld   d, d                                        ; $61e6: $52
	ld   b, b                                        ; $61e7: $40
	ld   bc, $02ff                                   ; $61e8: $01 $ff $02
	ld   bc, $0301                                   ; $61eb: $01 $01 $03
	ld   d, h                                        ; $61ee: $54
	ld   [hl+], a                                    ; $61ef: $22
	pop  af                                          ; $61f0: $f1
	ld   c, e                                        ; $61f1: $4b
	dec  [hl]                                        ; $61f2: $35
	ld   bc, $435e                                   ; $61f3: $01 $5e $43
	ldh  a, [c]                                      ; $61f6: $f2
	rst  $38                                         ; $61f7: $ff
	ld   [bc], a                                     ; $61f8: $02
	nop                                              ; $61f9: $00
	nop                                              ; $61fa: $00
	inc  bc                                          ; $61fb: $03
	ld   d, h                                        ; $61fc: $54
	dec  h                                           ; $61fd: $25
	ld   [bc], a                                     ; $61fe: $02
	ld   c, d                                        ; $61ff: $4a
	scf                                              ; $6200: $37
	nop                                              ; $6201: $00
	scf                                              ; $6202: $37
	ccf                                              ; $6203: $3f
	ldh  a, [c]                                      ; $6204: $f2
	rst  $38                                         ; $6205: $ff
	ld   bc, $0001                                   ; $6206: $01 $01 $00
	inc  bc                                          ; $6209: $03
	ld   c, c                                        ; $620a: $49
	ld   e, $f0                                      ; $620b: $1e $f0
	ld   d, c                                        ; $620d: $51
	ld   l, $f1                                      ; $620e: $2e $f1
	ld   d, a                                        ; $6210: $57
	ld   b, d                                        ; $6211: $42
	db $01, $ff 
	
	
GameState25::
	db $fa
	and  c                                           ; $6215: $a1
	jp   nz, Jump_020_5bdf                           ; $6216: $c2 $df $5b

	ld   h, d                                        ; $6219: $62
	di                                               ; $621a: $f3
	ld   h, d                                        ; $621b: $62
	rst  $38                                         ; $621c: $ff
	ld   h, d                                        ; $621d: $62
	ld   [de], a                                     ; $621e: $12
	ld   h, h                                        ; $621f: $64
	adc  l                                           ; $6220: $8d
	ld   h, h                                        ; $6221: $64
	adc  b                                           ; $6222: $88
	ld   h, [hl]                                     ; $6223: $66
	db   $fc                                         ; $6224: $fc
	ld   h, [hl]                                     ; $6225: $66
	ld   l, [hl]                                     ; $6226: $6e
	ld   h, a                                        ; $6227: $67
	cp   h                                           ; $6228: $bc
	ld   h, a                                        ; $6229: $67
	ld   b, $79                                      ; $622a: $06 $79
	inc  d                                           ; $622c: $14
	ld   h, e                                        ; $622d: $63
	ld   [$ca62], a                                  ; $622e: $ea $62 $ca
	ld   a, c                                        ; $6231: $79
	ld   [$cad1], a                                  ; $6232: $ea $d1 $ca
	ld   a, h                                        ; $6235: $7c
	ld   [$ca4e], a                                  ; $6236: $ea $4e $ca
	ld   a, l                                        ; $6239: $7d
	ld   [$ca4f], a                                  ; $623a: $ea $4f $ca
	ld   a, $25                                      ; $623d: $3e $25
	ld   [wGameState], a                                  ; $623f: $ea $a0 $c2
	ld   a, $03                                      ; $6242: $3e $03
	ld   [wGameSubstate], a                                  ; $6244: $ea $a1 $c2
	ret                                              ; $6247: $c9


	ld   a, h                                        ; $6248: $7c
	ld   [$ca4e], a                                  ; $6249: $ea $4e $ca
	ld   a, l                                        ; $624c: $7d
	ld   [$ca4f], a                                  ; $624d: $ea $4f $ca
	ld   a, $25                                      ; $6250: $3e $25
	ld   [wGameState], a                                  ; $6252: $ea $a0 $c2
	ld   a, $00                                      ; $6255: $3e $00
	ld   [wGameSubstate], a                                  ; $6257: $ea $a1 $c2
	ret                                              ; $625a: $c9


	ld   a, $ff                                      ; $625b: $3e $ff
	ld   [wInGameInputsEnabled], a                                  ; $625d: $ea $0e $c2
	call ClearOam                                       ; $6260: $cd $d7 $0d
	ld   a, [wWramBank]                                  ; $6263: $fa $93 $c2
	push af                                          ; $6266: $f5
	ld   a, $07                                      ; $6267: $3e $07
	ld   [wWramBank], a                                  ; $6269: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $626c: $e0 $70
	ld   a, $2f                                      ; $626e: $3e $2f
	ld   hl, $d000                                   ; $6270: $21 $00 $d0
	ld   de, $6122                                   ; $6273: $11 $22 $61
	call RLEXorCopy                                       ; $6276: $cd $d2 $09
	ld   c, $81                                      ; $6279: $0e $81
	ld   de, $9800                                   ; $627b: $11 $00 $98
	ld   a, $07                                      ; $627e: $3e $07
	ld   hl, $d000                                   ; $6280: $21 $00 $d0
	ld   b, $24                                      ; $6283: $06 $24
	call EnqueueHDMATransfer                                       ; $6285: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6288: $cf
	ld   a, $2f                                      ; $6289: $3e $2f
	ld   hl, $d000                                   ; $628b: $21 $00 $d0
	ld   de, $58e6                                   ; $628e: $11 $e6 $58
	call RLEXorCopy                                       ; $6291: $cd $d2 $09
	ld   c, $80                                      ; $6294: $0e $80
	ld   de, $9800                                   ; $6296: $11 $00 $98
	ld   a, $07                                      ; $6299: $3e $07
	ld   hl, $d000                                   ; $629b: $21 $00 $d0
	ld   b, $24                                      ; $629e: $06 $24
	call EnqueueHDMATransfer                                       ; $62a0: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $62a3: $cf
	ld   a, $2d                                      ; $62a4: $3e $2d
	ld   hl, $d000                                   ; $62a6: $21 $00 $d0
	ld   de, $5ca0                                   ; $62a9: $11 $a0 $5c
	call RLEXorCopy                                       ; $62ac: $cd $d2 $09
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $62af: $cf
	ld   c, $80                                      ; $62b0: $0e $80
	ld   de, $8800                                   ; $62b2: $11 $00 $88
	ld   a, $07                                      ; $62b5: $3e $07
	ld   hl, $d000                                   ; $62b7: $21 $00 $d0
	ld   b, $40                                      ; $62ba: $06 $40
	call EnqueueHDMATransfer                                       ; $62bc: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $62bf: $cf
	ld   c, $80                                      ; $62c0: $0e $80
	ld   de, $8c00                                   ; $62c2: $11 $00 $8c
	ld   a, $07                                      ; $62c5: $3e $07
	ld   hl, $d400                                   ; $62c7: $21 $00 $d4
	ld   b, $60                                      ; $62ca: $06 $60
	call EnqueueHDMATransfer                                       ; $62cc: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $62cf: $cf
	ld   c, $80                                      ; $62d0: $0e $80
	ld   de, $9200                                   ; $62d2: $11 $00 $92
	ld   a, $07                                      ; $62d5: $3e $07
	ld   hl, $da00                                   ; $62d7: $21 $00 $da
	ld   b, $60                                      ; $62da: $06 $60
	call EnqueueHDMATransfer                                       ; $62dc: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $62df: $cf
	pop  af                                          ; $62e0: $f1
	ld   [wWramBank], a                                  ; $62e1: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $62e4: $e0 $70
	ld   c, $2f                                      ; $62e6: $0e $2f
	ld   de, $6ae3                                   ; $62e8: $11 $e3 $6a
	call Call_020_7991                               ; $62eb: $cd $91 $79
	ld   hl, wGameSubstate                                   ; $62ee: $21 $a1 $c2
	inc  [hl]                                        ; $62f1: $34
	ret                                              ; $62f2: $c9


	ld   a, [wInGameButtonsPressed]                                  ; $62f3: $fa $10 $c2
	and  $03                                         ; $62f6: $e6 $03
	jr   z, jr_020_62fe                              ; $62f8: $28 $04

	ld   hl, wGameSubstate                                   ; $62fa: $21 $a1 $c2
	inc  [hl]                                        ; $62fd: $34

jr_020_62fe:
	ret                                              ; $62fe: $c9


	ld   b, $2f                                      ; $62ff: $06 $2f
	ld   hl, $6ae3                                   ; $6301: $21 $e3 $6a
	call Call_020_7969                               ; $6304: $cd $69 $79
	ld   a, [$ca4e]                                  ; $6307: $fa $4e $ca
	ld   [wGameState], a                                  ; $630a: $ea $a0 $c2
	ld   a, [$ca4f]                                  ; $630d: $fa $4f $ca
	ld   [wGameSubstate], a                                  ; $6310: $ea $a1 $c2
	ret                                              ; $6313: $c9


	ld   a, [$cb1d]                                  ; $6314: $fa $1d $cb
	or   a                                           ; $6317: $b7
	jr   nz, jr_020_6343                             ; $6318: $20 $29

	ld   a, [$ca4e]                                  ; $631a: $fa $4e $ca
	ld   [wGameState], a                                  ; $631d: $ea $a0 $c2
	ld   a, [$ca4f]                                  ; $6320: $fa $4f $ca
	ld   [wGameSubstate], a                                  ; $6323: $ea $a1 $c2
	call ClearDisplayRegsAllowVBlankInt                                       ; $6326: $cd $59 $0b
	ld   a, [$ca62]                                  ; $6329: $fa $62 $ca
	cp   $01                                         ; $632c: $fe $01
	jr   z, jr_020_6342                              ; $632e: $28 $12

	ld   a, [$ca60]                                  ; $6330: $fa $60 $ca
	ld   [wBattleWon], a                                  ; $6333: $ea $21 $cb
	ld   a, [$ca4e]                                  ; $6336: $fa $4e $ca
	ld   [wGameState], a                                  ; $6339: $ea $a0 $c2
	ld   a, [$ca4f]                                  ; $633c: $fa $4f $ca
	ld   [wGameSubstate], a                                  ; $633f: $ea $a1 $c2

jr_020_6342:
	ret                                              ; $6342: $c9


jr_020_6343:
	call ClearDisplayRegsAllowVBlankInt                                       ; $6343: $cd $59 $0b
	ld   de, $c986                                   ; $6346: $11 $86 $c9
	ld   a, [$cacd]                                  ; $6349: $fa $cd $ca
	ld   [de], a                                     ; $634c: $12
	inc  de                                          ; $634d: $13
	xor  a                                           ; $634e: $af
	ld   [de], a                                     ; $634f: $12
	ld   h, $25                                      ; $6350: $26 $25
	ld   l, $03                                      ; $6352: $2e $03
	ld   a, [$ca4e]                                  ; $6354: $fa $4e $ca
	ld   d, a                                        ; $6357: $57
	ld   a, [$ca4f]                                  ; $6358: $fa $4f $ca
	ld   e, a                                        ; $635b: $5f
	ld   b, $04                                      ; $635c: $06 $04
	ld   a, [$cad1]                                  ; $635e: $fa $d1 $ca
	ld   c, a                                        ; $6361: $4f
	ld   a, [$ca60]                                  ; $6362: $fa $60 $ca
	push af                                          ; $6365: $f5
	ld   a, $3c                                      ; $6366: $3e $3c
	ld   [wFarCallAddr], a                                  ; $6368: $ea $98 $c2
	ld   a, $55                                      ; $636b: $3e $55
	ld   [wFarCallAddr+1], a                                  ; $636d: $ea $99 $c2
	ld   a, $3e                                      ; $6370: $3e $3e
	ld   [wFarCallBank], a                                  ; $6372: $ea $9a $c2
	pop  af                                          ; $6375: $f1
	call FarCall                                       ; $6376: $cd $62 $09
	ret                                              ; $6379: $c9


Call_020_637a:
	ld   a, [$cb1d]                                  ; $637a: $fa $1d $cb
	or   a                                           ; $637d: $b7
	jr   nz, jr_020_63c0                             ; $637e: $20 $40

	ld   a, [$cad1]                                  ; $6380: $fa $d1 $ca
	and  a                                           ; $6383: $a7
	jr   nz, jr_020_63a2                             ; $6384: $20 $1c

	ld   a, [$cacd]                                  ; $6386: $fa $cd $ca
	cp   $0a                                         ; $6389: $fe $0a
	jr   c, jr_020_639e                              ; $638b: $38 $11

	cp   $0f                                         ; $638d: $fe $0f
	jr   c, jr_020_639a                              ; $638f: $38 $09

	ld   a, $ff                                      ; $6391: $3e $ff
	ld   [$cad2], a                                  ; $6393: $ea $d2 $ca
	ld   a, $02                                      ; $6396: $3e $02
	jr   jr_020_63bc                                 ; $6398: $18 $22

jr_020_639a:
	ld   a, $01                                      ; $639a: $3e $01
	jr   jr_020_63bc                                 ; $639c: $18 $1e

jr_020_639e:
	ld   a, $00                                      ; $639e: $3e $00
	jr   jr_020_63bc                                 ; $63a0: $18 $1a

jr_020_63a2:
	ld   a, [$cacd]                                  ; $63a2: $fa $cd $ca
	cp   $0a                                         ; $63a5: $fe $0a
	jr   c, jr_020_63ba                              ; $63a7: $38 $11

	cp   $14                                         ; $63a9: $fe $14
	jr   c, jr_020_63b6                              ; $63ab: $38 $09

	ld   a, $ff                                      ; $63ad: $3e $ff
	ld   [$cad2], a                                  ; $63af: $ea $d2 $ca
	ld   a, $02                                      ; $63b2: $3e $02
	jr   jr_020_63bc                                 ; $63b4: $18 $06

jr_020_63b6:
	ld   a, $02                                      ; $63b6: $3e $02
	jr   jr_020_63bc                                 ; $63b8: $18 $02

jr_020_63ba:
	ld   a, $00                                      ; $63ba: $3e $00

jr_020_63bc:
	ld   [$ca60], a                                  ; $63bc: $ea $60 $ca
	ret                                              ; $63bf: $c9


jr_020_63c0:
	ld   a, [$cad1]                                  ; $63c0: $fa $d1 $ca
	and  a                                           ; $63c3: $a7
	jr   nz, jr_020_63e5                             ; $63c4: $20 $1f

	ld   a, [$cacd]                                  ; $63c6: $fa $cd $ca
	cp   $05                                         ; $63c9: $fe $05
	jr   c, jr_020_63d9                              ; $63cb: $38 $0c

	cp   $0a                                         ; $63cd: $fe $0a
	jr   c, jr_020_63dd                              ; $63cf: $38 $0c

	cp   $0f                                         ; $63d1: $fe $0f
	jr   c, jr_020_63e1                              ; $63d3: $38 $0c

	ld   a, $03                                      ; $63d5: $3e $03
	jr   jr_020_6404                                 ; $63d7: $18 $2b

jr_020_63d9:
	ld   a, $00                                      ; $63d9: $3e $00
	jr   jr_020_6404                                 ; $63db: $18 $27

jr_020_63dd:
	ld   a, $01                                      ; $63dd: $3e $01
	jr   jr_020_6404                                 ; $63df: $18 $23

jr_020_63e1:
	ld   a, $02                                      ; $63e1: $3e $02
	jr   jr_020_6404                                 ; $63e3: $18 $1f

jr_020_63e5:
	ld   a, [$cacd]                                  ; $63e5: $fa $cd $ca
	cp   $0a                                         ; $63e8: $fe $0a
	jr   c, jr_020_63f8                              ; $63ea: $38 $0c

	cp   $0f                                         ; $63ec: $fe $0f
	jr   c, jr_020_63fc                              ; $63ee: $38 $0c

	cp   $14                                         ; $63f0: $fe $14
	jr   c, jr_020_6400                              ; $63f2: $38 $0c

	ld   a, $03                                      ; $63f4: $3e $03
	jr   jr_020_6404                                 ; $63f6: $18 $0c

jr_020_63f8:
	ld   a, $00                                      ; $63f8: $3e $00
	jr   jr_020_6404                                 ; $63fa: $18 $08

jr_020_63fc:
	ld   a, $01                                      ; $63fc: $3e $01
	jr   jr_020_6404                                 ; $63fe: $18 $04

jr_020_6400:
	ld   a, $02                                      ; $6400: $3e $02
	jr   jr_020_6404                                 ; $6402: $18 $00

jr_020_6404:
	ld   [$ca60], a                                  ; $6404: $ea $60 $ca
	ret                                              ; $6407: $c9


	ld   b, $01                                      ; $6408: $06 $01
	ld   a, [de]                                     ; $640a: $1a
	cp   [hl]                                        ; $640b: $be
	jr   c, jr_020_6410                              ; $640c: $38 $02

	ld   b, $00                                      ; $640e: $06 $00

jr_020_6410:
	ld   a, b                                        ; $6410: $78
	ret                                              ; $6411: $c9


	call TurnOffLCD                                       ; $6412: $cd $e3 $08
	ld   a, $ff                                      ; $6415: $3e $ff
	ld   [wInGameInputsEnabled], a                                  ; $6417: $ea $0e $c2
	ld   a, $0c                                      ; $641a: $3e $0c
	ld   [wBaseInitialStickyCounter], a                                  ; $641c: $ea $13 $c2
	ld   a, $04                                      ; $641f: $3e $04
	ld   [wBaseRepeatedStickyCounter], a                                  ; $6421: $ea $14 $c2
	xor  a                                           ; $6424: $af
	call PlaySound                                       ; $6425: $cd $92 $1a
	call ClearDisplayRegsAllowVBlankInt                                       ; $6428: $cd $59 $0b
	call ClearOam                                       ; $642b: $cd $d7 $0d
	ld   a, [wLCDC]                                  ; $642e: $fa $03 $c2
	and  $e0                                         ; $6431: $e6 $e0
	or   $67                                         ; $6433: $f6 $67
	ld   [wLCDC], a                                  ; $6435: $ea $03 $c2
	ld   a, $01                                      ; $6438: $3e $01
	ldh  [rVBK], a                                   ; $643a: $e0 $4f
	ld   a, $2a                                      ; $643c: $3e $2a
	ld   de, $9800                                   ; $643e: $11 $00 $98
	ld   hl, $5c00                                   ; $6441: $21 $00 $5c
	ld   bc, $0400                                   ; $6444: $01 $00 $04
	call FarMemCopy                                       ; $6447: $cd $b2 $09
	ld   a, $26                                      ; $644a: $3e $26
	ld   de, $8800                                   ; $644c: $11 $00 $88
	ld   hl, $5800                                   ; $644f: $21 $00 $58
	ld   bc, $1000                                   ; $6452: $01 $00 $10
	call FarMemCopy                                       ; $6455: $cd $b2 $09
	xor  a                                           ; $6458: $af
	ldh  [rVBK], a                                   ; $6459: $e0 $4f
	ld   a, $2a                                      ; $645b: $3e $2a
	ld   de, $9800                                   ; $645d: $11 $00 $98
	ld   hl, $5800                                   ; $6460: $21 $00 $58
	ld   bc, $0400                                   ; $6463: $01 $00 $04
	call FarMemCopy                                       ; $6466: $cd $b2 $09
	ld   a, $26                                      ; $6469: $3e $26
	ld   de, $8000                                   ; $646b: $11 $00 $80
	ld   hl, $4000                                   ; $646e: $21 $00 $40
	ld   bc, $1800                                   ; $6471: $01 $00 $18
	call FarMemCopy                                       ; $6474: $cd $b2 $09
	ld   a, $07                                      ; $6477: $3e $07
	ld   [wWX], a                                  ; $6479: $ea $09 $c2
	ld   a, $90                                      ; $647c: $3e $90
	ld   [wWY], a                                  ; $647e: $ea $0a $c2
	xor  a                                           ; $6481: $af
	ld   [wSCX], a                                  ; $6482: $ea $07 $c2
	ld   [wSCY], a                                  ; $6485: $ea $08 $c2
	ld   hl, wGameSubstate                                   ; $6488: $21 $a1 $c2
	inc  [hl]                                        ; $648b: $34
	ret                                              ; $648c: $c9


	ld   a, $01                                      ; $648d: $3e $01
	ldh  [rVBK], a                                   ; $648f: $e0 $4f
	ld   a, $2a                                      ; $6491: $3e $2a
	ld   de, $9c00                                   ; $6493: $11 $00 $9c
	ld   hl, $4400                                   ; $6496: $21 $00 $44
	ld   bc, $0180                                   ; $6499: $01 $80 $01
	call FarMemCopy                                       ; $649c: $cd $b2 $09
	xor  a                                           ; $649f: $af
	ldh  [rVBK], a                                   ; $64a0: $e0 $4f
	ld   a, $2a                                      ; $64a2: $3e $2a
	ld   de, $9c00                                   ; $64a4: $11 $00 $9c
	ld   hl, $4000                                   ; $64a7: $21 $00 $40
	ld   bc, $0180                                   ; $64aa: $01 $80 $01
	call FarMemCopy                                       ; $64ad: $cd $b2 $09
	xor  a                                           ; $64b0: $af
	ld   [$ca71], a                                  ; $64b1: $ea $71 $ca
	ld   [$ca72], a                                  ; $64b4: $ea $72 $ca
	ld   [$ca6e], a                                  ; $64b7: $ea $6e $ca
	ld   [$ca73], a                                  ; $64ba: $ea $73 $ca
	ld   [$cab0], a                                  ; $64bd: $ea $b0 $ca
	ld   [$cac5], a                                  ; $64c0: $ea $c5 $ca
	ld   [$cac4], a                                  ; $64c3: $ea $c4 $ca
	ld   [$cad2], a                                  ; $64c6: $ea $d2 $ca
	ld   [$cacd], a                                  ; $64c9: $ea $cd $ca
	ld   [$ca77], a                                  ; $64cc: $ea $77 $ca
	ld   [$ca78], a                                  ; $64cf: $ea $78 $ca
	ld   [$ca79], a                                  ; $64d2: $ea $79 $ca
	ld   [$ca7a], a                                  ; $64d5: $ea $7a $ca
	ld   [$cab4], a                                  ; $64d8: $ea $b4 $ca
	ld   [$cab5], a                                  ; $64db: $ea $b5 $ca
	ld   [$cab6], a                                  ; $64de: $ea $b6 $ca
	ld   [$cab7], a                                  ; $64e1: $ea $b7 $ca
	ld   [$cab8], a                                  ; $64e4: $ea $b8 $ca
	ld   [$cab9], a                                  ; $64e7: $ea $b9 $ca
	ld   [$caba], a                                  ; $64ea: $ea $ba $ca
	ld   [$cabb], a                                  ; $64ed: $ea $bb $ca
	ld   [$cac1], a                                  ; $64f0: $ea $c1 $ca
	ld   [$cac2], a                                  ; $64f3: $ea $c2 $ca
	ld   [$cac3], a                                  ; $64f6: $ea $c3 $ca
	ld   [$cab1], a                                  ; $64f9: $ea $b1 $ca
	ld   [$cac6], a                                  ; $64fc: $ea $c6 $ca
	ld   [$ca43], a                                  ; $64ff: $ea $43 $ca
	ld   [$ca44], a                                  ; $6502: $ea $44 $ca
	ld   [$cacc], a                                  ; $6505: $ea $cc $ca
	ld   [$cac8], a                                  ; $6508: $ea $c8 $ca
	ld   [$cab2], a                                  ; $650b: $ea $b2 $ca
	ld   c, $1b                                      ; $650e: $0e $1b
	ld   hl, $ca7b                                   ; $6510: $21 $7b $ca

jr_020_6513:
	ld   [hl+], a                                    ; $6513: $22
	dec  c                                           ; $6514: $0d
	jr   nz, jr_020_6513                             ; $6515: $20 $fc

	ld   a, $90                                      ; $6517: $3e $90
	ld   [$cacf], a                                  ; $6519: $ea $cf $ca
	ld   a, $97                                      ; $651c: $3e $97
	ld   [$cad0], a                                  ; $651e: $ea $d0 $ca
	ld   a, $06                                      ; $6521: $3e $06
	ld   [$ca6f], a                                  ; $6523: $ea $6f $ca
	ld   a, $ff                                      ; $6526: $3e $ff
	ld   [$ca9f], a                                  ; $6528: $ea $9f $ca
	ld   [$caa0], a                                  ; $652b: $ea $a0 $ca
	ld   [$caa1], a                                  ; $652e: $ea $a1 $ca
	ld   [$cabc], a                                  ; $6531: $ea $bc $ca
	ld   [$cabd], a                                  ; $6534: $ea $bd $ca
	ld   [$cabe], a                                  ; $6537: $ea $be $ca
	ld   [$cabf], a                                  ; $653a: $ea $bf $ca
	ld   c, $1e                                      ; $653d: $0e $1e
	ld   hl, $cad3                                   ; $653f: $21 $d3 $ca

jr_020_6542:
	ld   [hl+], a                                    ; $6542: $22
	dec  c                                           ; $6543: $0d
	jr   nz, jr_020_6542                             ; $6544: $20 $fc

	ld   a, $02                                      ; $6546: $3e $02
	ld   [$cac0], a                                  ; $6548: $ea $c0 $ca
	ld   a, $32                                      ; $654b: $3e $32
	ld   [$caca], a                                  ; $654d: $ea $ca $ca
	ld   [$cacb], a                                  ; $6550: $ea $cb $ca
	ld   a, [$cad1]                                  ; $6553: $fa $d1 $ca
	and  a                                           ; $6556: $a7
	jr   nz, jr_020_6568                             ; $6557: $20 $0f

	ld   a, $3c                                      ; $6559: $3e $3c
	ld   [$cac7], a                                  ; $655b: $ea $c7 $ca
	ld   a, $14                                      ; $655e: $3e $14
	ld   [$cac9], a                                  ; $6560: $ea $c9 $ca
	call Call_020_65bc                               ; $6563: $cd $bc $65
	jr   jr_020_6575                                 ; $6566: $18 $0d

jr_020_6568:
	ld   a, $5a                                      ; $6568: $3e $5a
	ld   [$cac7], a                                  ; $656a: $ea $c7 $ca
	ld   a, $1e                                      ; $656d: $3e $1e
	ld   [$cac9], a                                  ; $656f: $ea $c9 $ca
	call Call_020_6611                               ; $6572: $cd $11 $66

jr_020_6575:
	call Call_020_7227                               ; $6575: $cd $27 $72
	call ClearOam                                       ; $6578: $cd $d7 $0d
	call Call_020_6b8f                               ; $657b: $cd $8f $6b
	call Call_020_7407                               ; $657e: $cd $07 $74
	call Call_020_6ec9                               ; $6581: $cd $c9 $6e
	ld   a, [$ca9f]                                  ; $6584: $fa $9f $ca
	cp   $ff                                         ; $6587: $fe $ff
	jr   z, jr_020_658e                              ; $6589: $28 $03

	call Call_020_74c7                               ; $658b: $cd $c7 $74

jr_020_658e:
	ld   a, [$caa0]                                  ; $658e: $fa $a0 $ca
	cp   $ff                                         ; $6591: $fe $ff
	jr   z, jr_020_6598                              ; $6593: $28 $03

	call Call_020_755d                               ; $6595: $cd $5d $75

jr_020_6598:
	ld   a, [$caa1]                                  ; $6598: $fa $a1 $ca
	cp   $ff                                         ; $659b: $fe $ff
	jr   z, jr_020_65a2                              ; $659d: $28 $03

	call Call_020_75e4                               ; $659f: $cd $e4 $75

jr_020_65a2:
	ld   a, $0e                                      ; $65a2: $3e $0e
	call PlaySound                                       ; $65a4: $cd $92 $1a
	ld   a, $07                                      ; $65a7: $3e $07
	call SafeSetAudVolForMultipleChannels                                       ; $65a9: $cd $e0 $1c
	call TurnOnLCD                                       ; $65ac: $cd $09 $09
	ld   c, $2a                                      ; $65af: $0e $2a
	ld   de, $6080                                   ; $65b1: $11 $80 $60
	call Call_020_7991                               ; $65b4: $cd $91 $79
	ld   hl, wGameSubstate                                   ; $65b7: $21 $a1 $c2
	inc  [hl]                                        ; $65ba: $34
	ret                                              ; $65bb: $c9


Call_020_65bc:
	ld   a, $0c                                      ; $65bc: $3e $0c
	ld   [wRandomNumRange], a                                  ; $65be: $ea $a5 $c2
	call UpdateSramRandomSeed                                       ; $65c1: $cd $70 $0c
	ld   e, $0c                                      ; $65c4: $1e $0c

jr_020_65c6:
	push de                                          ; $65c6: $d5
	push bc                                          ; $65c7: $c5
	call GetRandomNumInPreSpecifiedRange                                       ; $65c8: $cd $10 $0d
	pop  bc                                          ; $65cb: $c1
	pop  de                                          ; $65cc: $d1
	ld   d, a                                        ; $65cd: $57
	ld   bc, $0000                                   ; $65ce: $01 $00 $00
	ld   hl, $cad3                                   ; $65d1: $21 $d3 $ca

jr_020_65d4:
	ld   a, [hl]                                     ; $65d4: $7e
	cp   $ff                                         ; $65d5: $fe $ff
	jr   z, jr_020_65e0                              ; $65d7: $28 $07

	cp   d                                           ; $65d9: $ba
	jr   z, jr_020_65c6                              ; $65da: $28 $ea

	inc  hl                                          ; $65dc: $23
	inc  c                                           ; $65dd: $0c
	jr   jr_020_65d4                                 ; $65de: $18 $f4

jr_020_65e0:
	ld   a, d                                        ; $65e0: $7a
	ld   [hl], a                                     ; $65e1: $77
	dec  e                                           ; $65e2: $1d
	jr   nz, jr_020_65c6                             ; $65e3: $20 $e1

	ld   a, $08                                      ; $65e5: $3e $08
	ld   [wRandomNumRange], a                                  ; $65e7: $ea $a5 $c2
	call UpdateSramRandomSeed                                       ; $65ea: $cd $70 $0c
	ld   e, $08                                      ; $65ed: $1e $08

jr_020_65ef:
	push de                                          ; $65ef: $d5
	push bc                                          ; $65f0: $c5
	call GetRandomNumInPreSpecifiedRange                                       ; $65f1: $cd $10 $0d
	add  $0c                                         ; $65f4: $c6 $0c
	pop  bc                                          ; $65f6: $c1
	pop  de                                          ; $65f7: $d1
	ld   d, a                                        ; $65f8: $57
	ld   bc, $0000                                   ; $65f9: $01 $00 $00
	ld   hl, $cadf                                   ; $65fc: $21 $df $ca

jr_020_65ff:
	ld   a, [hl]                                     ; $65ff: $7e
	cp   $ff                                         ; $6600: $fe $ff
	jr   z, jr_020_660b                              ; $6602: $28 $07

	cp   d                                           ; $6604: $ba
	jr   z, jr_020_65ef                              ; $6605: $28 $e8

	inc  hl                                          ; $6607: $23
	inc  c                                           ; $6608: $0c
	jr   jr_020_65ff                                 ; $6609: $18 $f4

jr_020_660b:
	ld   a, d                                        ; $660b: $7a
	ld   [hl], a                                     ; $660c: $77
	dec  e                                           ; $660d: $1d
	jr   nz, jr_020_65ef                             ; $660e: $20 $df

	ret                                              ; $6610: $c9


Call_020_6611:
	ld   a, $1e                                      ; $6611: $3e $1e
	ld   [wRandomNumRange], a                                  ; $6613: $ea $a5 $c2
	call UpdateSramRandomSeed                                       ; $6616: $cd $70 $0c
	ld   e, $1e                                      ; $6619: $1e $1e

jr_020_661b:
	push de                                          ; $661b: $d5
	push bc                                          ; $661c: $c5
	call GetRandomNumInPreSpecifiedRange                                       ; $661d: $cd $10 $0d
	pop  bc                                          ; $6620: $c1
	pop  de                                          ; $6621: $d1
	ld   d, a                                        ; $6622: $57
	ld   bc, $0000                                   ; $6623: $01 $00 $00
	ld   hl, $cad3                                   ; $6626: $21 $d3 $ca

jr_020_6629:
	ld   a, [hl]                                     ; $6629: $7e
	cp   $ff                                         ; $662a: $fe $ff
	jr   z, jr_020_6635                              ; $662c: $28 $07

	cp   d                                           ; $662e: $ba
	jr   z, jr_020_661b                              ; $662f: $28 $ea

	inc  hl                                          ; $6631: $23
	inc  c                                           ; $6632: $0c
	jr   jr_020_6629                                 ; $6633: $18 $f4

jr_020_6635:
	ld   a, d                                        ; $6635: $7a
	ld   [hl], a                                     ; $6636: $77
	dec  e                                           ; $6637: $1d
	jr   nz, jr_020_661b                             ; $6638: $20 $e1

	ret                                              ; $663a: $c9


Call_020_663b:
	ld   a, [wInGameButtonsHeld]                                  ; $663b: $fa $0f $c2
	and  $f0                                         ; $663e: $e6 $f0
	srl  a                                           ; $6640: $cb $3f
	srl  a                                           ; $6642: $cb $3f
	srl  a                                           ; $6644: $cb $3f
	ld   b, $00                                      ; $6646: $06 $00
	ld   c, a                                        ; $6648: $4f
	ld   hl, $6668                                   ; $6649: $21 $68 $66
	add  hl, bc                                      ; $664c: $09
	ld   a, [hl+]                                    ; $664d: $2a
	ld   c, [hl]                                     ; $664e: $4e
	ld   b, a                                        ; $664f: $47
	ld   a, [$caca]                                  ; $6650: $fa $ca $ca
	add  b                                           ; $6653: $80
	inc  hl                                          ; $6654: $23
	cp   $9f                                         ; $6655: $fe $9f
	jr   nc, jr_020_665c                             ; $6657: $30 $03

	ld   [$caca], a                                  ; $6659: $ea $ca $ca

jr_020_665c:
	ld   a, [$cacb]                                  ; $665c: $fa $cb $ca
	add  c                                           ; $665f: $81
	cp   $60                                         ; $6660: $fe $60
	jr   nc, jr_020_6667                             ; $6662: $30 $03

	ld   [$cacb], a                                  ; $6664: $ea $cb $ca

jr_020_6667:
	ret                                              ; $6667: $c9


	nop                                              ; $6668: $00
	nop                                              ; $6669: $00
	ld   [bc], a                                     ; $666a: $02
	nop                                              ; $666b: $00
	cp   $00                                         ; $666c: $fe $00
	nop                                              ; $666e: $00
	nop                                              ; $666f: $00
	nop                                              ; $6670: $00
	cp   $02                                         ; $6671: $fe $02
	cp   $fe                                         ; $6673: $fe $fe
	cp   $00                                         ; $6675: $fe $00
	cp   $00                                         ; $6677: $fe $00
	ld   [bc], a                                     ; $6679: $02
	ld   [bc], a                                     ; $667a: $02
	ld   [bc], a                                     ; $667b: $02
	cp   $02                                         ; $667c: $fe $02
	nop                                              ; $667e: $00
	ld   [bc], a                                     ; $667f: $02
	nop                                              ; $6680: $00
	nop                                              ; $6681: $00
	ld   [bc], a                                     ; $6682: $02
	nop                                              ; $6683: $00
	cp   $00                                         ; $6684: $fe $00
	nop                                              ; $6686: $00
	nop                                              ; $6687: $00
	call ClearOam                                       ; $6688: $cd $d7 $0d
	call Call_020_6b8f                               ; $668b: $cd $8f $6b
	call Call_020_7407                               ; $668e: $cd $07 $74
	call Call_020_6ec9                               ; $6691: $cd $c9 $6e
	ld   a, [$ca9f]                                  ; $6694: $fa $9f $ca
	cp   $ff                                         ; $6697: $fe $ff
	jr   z, jr_020_669e                              ; $6699: $28 $03

	call Call_020_74c7                               ; $669b: $cd $c7 $74

jr_020_669e:
	ld   a, [$caa0]                                  ; $669e: $fa $a0 $ca
	cp   $ff                                         ; $66a1: $fe $ff
	jr   z, jr_020_66a8                              ; $66a3: $28 $03

	call Call_020_755d                               ; $66a5: $cd $5d $75

jr_020_66a8:
	ld   a, [$caa1]                                  ; $66a8: $fa $a1 $ca
	cp   $ff                                         ; $66ab: $fe $ff
	jr   z, jr_020_66b2                              ; $66ad: $28 $03

	call Call_020_75e4                               ; $66af: $cd $e4 $75

jr_020_66b2:
	call Call_020_7379                               ; $66b2: $cd $79 $73
	call Call_020_72eb                               ; $66b5: $cd $eb $72
	ld   a, [$ca78]                                  ; $66b8: $fa $78 $ca
	ld   [$ca7a], a                                  ; $66bb: $ea $7a $ca
	ld   a, [$ca79]                                  ; $66be: $fa $79 $ca
	ld   [$ca77], a                                  ; $66c1: $ea $77 $ca
	xor  a                                           ; $66c4: $af
	ld   [$ca77], a                                  ; $66c5: $ea $77 $ca
	call Call_020_744a                               ; $66c8: $cd $4a $74
	ld   a, [$ca7a]                                  ; $66cb: $fa $7a $ca
	ld   [$ca78], a                                  ; $66ce: $ea $78 $ca
	ld   a, $01                                      ; $66d1: $3e $01
	ld   [$ca77], a                                  ; $66d3: $ea $77 $ca
	call Call_020_744a                               ; $66d6: $cd $4a $74
	ld   c, $81                                      ; $66d9: $0e $81
	ld   de, $9c00                                   ; $66db: $11 $00 $9c
	ld   a, $07                                      ; $66de: $3e $07
	ld   hl, $d840                                   ; $66e0: $21 $40 $d8
	ld   b, $0c                                      ; $66e3: $06 $0c
	call EnqueueHDMATransfer                                       ; $66e5: $cd $7c $02
	ld   c, $80                                      ; $66e8: $0e $80
	ld   de, $9c00                                   ; $66ea: $11 $00 $9c
	ld   a, $07                                      ; $66ed: $3e $07
	ld   hl, $d900                                   ; $66ef: $21 $00 $d9
	ld   b, $0c                                      ; $66f2: $06 $0c
	call EnqueueHDMATransfer                                       ; $66f4: $cd $7c $02
	ld   hl, wGameSubstate                                   ; $66f7: $21 $a1 $c2
	inc  [hl]                                        ; $66fa: $34
	ret                                              ; $66fb: $c9


	call ClearOam                                       ; $66fc: $cd $d7 $0d
	call Call_020_6b8f                               ; $66ff: $cd $8f $6b
	call Call_020_7407                               ; $6702: $cd $07 $74
	call Call_020_6ec9                               ; $6705: $cd $c9 $6e
	ld   a, [$ca9f]                                  ; $6708: $fa $9f $ca
	cp   $ff                                         ; $670b: $fe $ff
	jr   z, jr_020_6712                              ; $670d: $28 $03

	call Call_020_74c7                               ; $670f: $cd $c7 $74

jr_020_6712:
	ld   a, [$caa0]                                  ; $6712: $fa $a0 $ca
	cp   $ff                                         ; $6715: $fe $ff
	jr   z, jr_020_671c                              ; $6717: $28 $03

	call Call_020_755d                               ; $6719: $cd $5d $75

jr_020_671c:
	ld   a, [$caa1]                                  ; $671c: $fa $a1 $ca
	cp   $ff                                         ; $671f: $fe $ff
	jr   z, jr_020_6726                              ; $6721: $28 $03

	call Call_020_75e4                               ; $6723: $cd $e4 $75

jr_020_6726:
	ld   a, [$cacf]                                  ; $6726: $fa $cf $ca
	ld   c, $60                                      ; $6729: $0e $60
	dec  a                                           ; $672b: $3d
	dec  a                                           ; $672c: $3d
	ld   [wWY], a                                  ; $672d: $ea $0a $c2
	ld   [$cacf], a                                  ; $6730: $ea $cf $ca
	cp   c                                           ; $6733: $b9
	jr   z, jr_020_6765                              ; $6734: $28 $2f

	ld   a, [$cad0]                                  ; $6736: $fa $d0 $ca
	dec  a                                           ; $6739: $3d
	dec  a                                           ; $673a: $3d
	ld   [$cad0], a                                  ; $673b: $ea $d0 $ca
	ld   a, [$cacc]                                  ; $673e: $fa $cc $ca
	inc  a                                           ; $6741: $3c
	ld   [$cacc], a                                  ; $6742: $ea $cc $ca
	cp   $03                                         ; $6745: $fe $03
	jr   nz, jr_020_675c                             ; $6747: $20 $13

	xor  a                                           ; $6749: $af
	ld   [$cacc], a                                  ; $674a: $ea $cc $ca
	ld   a, [$ca6f]                                  ; $674d: $fa $6f $ca
	cp   $00                                         ; $6750: $fe $00
	jr   z, jr_020_675c                              ; $6752: $28 $08

	dec  a                                           ; $6754: $3d
	ld   [$ca6f], a                                  ; $6755: $ea $6f $ca
	xor  a                                           ; $6758: $af
	ld   [$ca72], a                                  ; $6759: $ea $72 $ca

jr_020_675c:
	ld   a, $01                                      ; $675c: $3e $01
	ld   [$ca71], a                                  ; $675e: $ea $71 $ca
	call $6f11                                       ; $6761: $cd $11 $6f
	ret                                              ; $6764: $c9


jr_020_6765:
	xor  a                                           ; $6765: $af
	ld   [$ca71], a                                  ; $6766: $ea $71 $ca
	ld   hl, wGameSubstate                                   ; $6769: $21 $a1 $c2
	inc  [hl]                                        ; $676c: $34
	ret                                              ; $676d: $c9


	call ClearOam                                       ; $676e: $cd $d7 $0d
	call Call_020_6b8f                               ; $6771: $cd $8f $6b
	call Call_020_7407                               ; $6774: $cd $07 $74
	call Call_020_6ec9                               ; $6777: $cd $c9 $6e
	ld   a, [$ca9f]                                  ; $677a: $fa $9f $ca
	cp   $ff                                         ; $677d: $fe $ff
	jr   z, jr_020_6784                              ; $677f: $28 $03

	call Call_020_74c7                               ; $6781: $cd $c7 $74

jr_020_6784:
	ld   a, [$caa0]                                  ; $6784: $fa $a0 $ca
	cp   $ff                                         ; $6787: $fe $ff
	jr   z, jr_020_678e                              ; $6789: $28 $03

	call Call_020_755d                               ; $678b: $cd $5d $75

jr_020_678e:
	ld   a, [$caa1]                                  ; $678e: $fa $a1 $ca
	cp   $ff                                         ; $6791: $fe $ff
	jr   z, jr_020_6798                              ; $6793: $28 $03

	call Call_020_75e4                               ; $6795: $cd $e4 $75

jr_020_6798:
	ld   a, $02                                      ; $6798: $3e $02
	ld   [$cac5], a                                  ; $679a: $ea $c5 $ca
	ld   a, [$cacc]                                  ; $679d: $fa $cc $ca
	inc  a                                           ; $67a0: $3c
	ld   [$cacc], a                                  ; $67a1: $ea $cc $ca
	cp   $3c                                         ; $67a4: $fe $3c
	jr   nz, jr_020_67b8                             ; $67a6: $20 $10

	ld   a, $00                                      ; $67a8: $3e $00
	ld   [$cacc], a                                  ; $67aa: $ea $cc $ca
	ld   [$cac5], a                                  ; $67ad: $ea $c5 $ca
	call $6f11                                       ; $67b0: $cd $11 $6f
	ld   hl, wGameSubstate                                   ; $67b3: $21 $a1 $c2
	inc  [hl]                                        ; $67b6: $34
	ret                                              ; $67b7: $c9


jr_020_67b8:
	call $6f11                                       ; $67b8: $cd $11 $6f
	ret                                              ; $67bb: $c9


	call ClearOam                                       ; $67bc: $cd $d7 $0d
	call Call_020_6b8f                               ; $67bf: $cd $8f $6b
	call Call_020_7407                               ; $67c2: $cd $07 $74
	call Call_020_6ec9                               ; $67c5: $cd $c9 $6e
	call Call_020_766b                               ; $67c8: $cd $6b $76
	ld   a, [$cac7]                                  ; $67cb: $fa $c7 $ca
	cp   $00                                         ; $67ce: $fe $00
	jp   z, Jump_020_6b28                            ; $67d0: $ca $28 $6b

	ld   a, [$ca71]                                  ; $67d3: $fa $71 $ca
	and  a                                           ; $67d6: $a7
	jr   nz, jr_020_67e9                             ; $67d7: $20 $10

	ld   a, [$cac8]                                  ; $67d9: $fa $c8 $ca
	inc  a                                           ; $67dc: $3c
	cp   $3c                                         ; $67dd: $fe $3c
	jr   nz, jr_020_67e6                             ; $67df: $20 $05

	xor  a                                           ; $67e1: $af
	ld   hl, $cac7                                   ; $67e2: $21 $c7 $ca
	dec  [hl]                                        ; $67e5: $35

jr_020_67e6:
	ld   [$cac8], a                                  ; $67e6: $ea $c8 $ca

jr_020_67e9:
	ld   a, [$ca9f]                                  ; $67e9: $fa $9f $ca
	cp   $ff                                         ; $67ec: $fe $ff
	jr   z, jr_020_67f3                              ; $67ee: $28 $03

	call Call_020_74c7                               ; $67f0: $cd $c7 $74

jr_020_67f3:
	ld   a, [$caa0]                                  ; $67f3: $fa $a0 $ca
	cp   $ff                                         ; $67f6: $fe $ff
	jr   z, jr_020_67fd                              ; $67f8: $28 $03

	call Call_020_755d                               ; $67fa: $cd $5d $75

jr_020_67fd:
	ld   a, [$caa1]                                  ; $67fd: $fa $a1 $ca
	cp   $ff                                         ; $6800: $fe $ff
	jr   z, jr_020_6807                              ; $6802: $28 $03

	call Call_020_75e4                               ; $6804: $cd $e4 $75

jr_020_6807:
	call Call_020_6e48                               ; $6807: $cd $48 $6e
	ld   a, [$cac5]                                  ; $680a: $fa $c5 $ca
	cp   $05                                         ; $680d: $fe $05
	jr   c, jr_020_6834                              ; $680f: $38 $23

	ld   a, [$cace]                                  ; $6811: $fa $ce $ca
	and  a                                           ; $6814: $a7
	jr   z, jr_020_6834                              ; $6815: $28 $1d

	ld   a, [$cace]                                  ; $6817: $fa $ce $ca
	dec  a                                           ; $681a: $3d
	cp   $00                                         ; $681b: $fe $00
	jr   nz, jr_020_682e                             ; $681d: $20 $0f

	ld   bc, $001e                                   ; $681f: $01 $1e $00
	call WaitUntilBCVBlankIntsHandledIfLCDOn                                       ; $6822: $cd $79 $0a
	xor  a                                           ; $6825: $af
	ld   [$cac5], a                                  ; $6826: $ea $c5 $ca
	ld   a, $02                                      ; $6829: $3e $02
	ld   [$cac0], a                                  ; $682b: $ea $c0 $ca

jr_020_682e:
	ld   [$cace], a                                  ; $682e: $ea $ce $ca
	jp   Jump_020_6ad0                               ; $6831: $c3 $d0 $6a


jr_020_6834:
	ld   a, [$ca71]                                  ; $6834: $fa $71 $ca
	cp   $01                                         ; $6837: $fe $01
	jp   z, Jump_020_6954                            ; $6839: $ca $54 $69

	cp   $10                                         ; $683c: $fe $10
	jp   z, Jump_020_6974                            ; $683e: $ca $74 $69

	cp   $02                                         ; $6841: $fe $02
	jp   z, Jump_020_69af                            ; $6843: $ca $af $69

	cp   $04                                         ; $6846: $fe $04
	jp   z, Jump_020_6a3c                            ; $6848: $ca $3c $6a

	cp   $08                                         ; $684b: $fe $08
	jp   z, Jump_020_6a92                            ; $684d: $ca $92 $6a

	cp   $80                                         ; $6850: $fe $80
	jr   z, jr_020_687f                              ; $6852: $28 $2b

	ld   a, [$cac5]                                  ; $6854: $fa $c5 $ca
	and  $01                                         ; $6857: $e6 $01
	jr   z, jr_020_6871                              ; $6859: $28 $16

	call Call_020_663b                               ; $685b: $cd $3b $66
	ld   a, [wInGameButtonsPressed]                                  ; $685e: $fa $10 $c2
	and  $01                                         ; $6861: $e6 $01
	jp   nz, Jump_020_6902                           ; $6863: $c2 $02 $69

	ld   a, [wInGameButtonsPressed]                                  ; $6866: $fa $10 $c2
	and  $02                                         ; $6869: $e6 $02
	jp   nz, Jump_020_6921                           ; $686b: $c2 $21 $69

	jp   Jump_020_6ab8                               ; $686e: $c3 $b8 $6a


jr_020_6871:
	ld   a, [wInGameButtonsPressed]                                  ; $6871: $fa $10 $c2
	and  $20                                         ; $6874: $e6 $20
	jr   nz, jr_020_6891                             ; $6876: $20 $19

	ld   a, [wInGameButtonsPressed]                                  ; $6878: $fa $10 $c2
	and  $10                                         ; $687b: $e6 $10
	jr   nz, jr_020_68ca                             ; $687d: $20 $4b

jr_020_687f:
	ld   a, [wInGameButtonsPressed]                                  ; $687f: $fa $10 $c2
	and  $01                                         ; $6882: $e6 $01
	jr   nz, jr_020_6902                             ; $6884: $20 $7c

	ld   a, [wInGameButtonsPressed]                                  ; $6886: $fa $10 $c2
	and  $02                                         ; $6889: $e6 $02
	jp   nz, Jump_020_6921                           ; $688b: $c2 $21 $69

	jp   Jump_020_6ab8                               ; $688e: $c3 $b8 $6a


jr_020_6891:
	ld   a, [$cac5]                                  ; $6891: $fa $c5 $ca
	cp   $01                                         ; $6894: $fe $01
	jr   nz, jr_020_689d                             ; $6896: $20 $05

	ld   hl, $caca                                   ; $6898: $21 $ca $ca
	dec  [hl]                                        ; $689b: $35
	dec  [hl]                                        ; $689c: $35

jr_020_689d:
	ld   a, [$cab1]                                  ; $689d: $fa $b1 $ca
	and  a                                           ; $68a0: $a7
	ret  nz                                          ; $68a1: $c0

jr_020_68a2:
	ld   hl, $ca78                                   ; $68a2: $21 $78 $ca
	ld   a, [hl]                                     ; $68a5: $7e
	inc  hl                                          ; $68a6: $23
	ld   [hl], a                                     ; $68a7: $77
	ld   hl, $ca78                                   ; $68a8: $21 $78 $ca
	ld   a, [hl]                                     ; $68ab: $7e
	cp   $00                                         ; $68ac: $fe $00
	jr   z, jr_020_68b4                              ; $68ae: $28 $04

	dec  a                                           ; $68b0: $3d
	ld   [hl], a                                     ; $68b1: $77
	jr   jr_020_68b7                                 ; $68b2: $18 $03

jr_020_68b4:
	ld   a, $02                                      ; $68b4: $3e $02
	ld   [hl], a                                     ; $68b6: $77

jr_020_68b7:
	ld   a, [$ca78]                                  ; $68b7: $fa $78 $ca
	ld   d, $00                                      ; $68ba: $16 $00
	ld   e, a                                        ; $68bc: $5f
	ld   hl, $ca74                                   ; $68bd: $21 $74 $ca
	add  hl, de                                      ; $68c0: $19
	ld   a, [hl]                                     ; $68c1: $7e
	and  $f0                                         ; $68c2: $e6 $f0
	jr   nz, jr_020_68a2                             ; $68c4: $20 $dc

	call Call_020_6c16                               ; $68c6: $cd $16 $6c
	ret                                              ; $68c9: $c9


jr_020_68ca:
	ld   a, [$cac5]                                  ; $68ca: $fa $c5 $ca
	cp   $01                                         ; $68cd: $fe $01
	jr   nz, jr_020_68d6                             ; $68cf: $20 $05

	ld   hl, $caca                                   ; $68d1: $21 $ca $ca
	inc  [hl]                                        ; $68d4: $34
	inc  [hl]                                        ; $68d5: $34

jr_020_68d6:
	ld   a, [$cab1]                                  ; $68d6: $fa $b1 $ca
	and  a                                           ; $68d9: $a7
	ret  nz                                          ; $68da: $c0

jr_020_68db:
	ld   hl, $ca78                                   ; $68db: $21 $78 $ca
	ld   a, [hl]                                     ; $68de: $7e
	inc  hl                                          ; $68df: $23
	ld   [hl], a                                     ; $68e0: $77
	ld   hl, $ca78                                   ; $68e1: $21 $78 $ca
	ld   a, [hl]                                     ; $68e4: $7e
	cp   $02                                         ; $68e5: $fe $02
	jr   z, jr_020_68ed                              ; $68e7: $28 $04

	inc  a                                           ; $68e9: $3c
	ld   [hl], a                                     ; $68ea: $77
	jr   jr_020_68ef                                 ; $68eb: $18 $02

jr_020_68ed:
	xor  a                                           ; $68ed: $af
	ld   [hl], a                                     ; $68ee: $77

jr_020_68ef:
	ld   a, [$ca78]                                  ; $68ef: $fa $78 $ca
	ld   d, $00                                      ; $68f2: $16 $00
	ld   e, a                                        ; $68f4: $5f
	ld   hl, $ca74                                   ; $68f5: $21 $74 $ca
	add  hl, de                                      ; $68f8: $19
	ld   a, [hl]                                     ; $68f9: $7e
	and  $f0                                         ; $68fa: $e6 $f0
	jr   nz, jr_020_68db                             ; $68fc: $20 $dd

	call Call_020_6c16                               ; $68fe: $cd $16 $6c
	ret                                              ; $6901: $c9


Jump_020_6902:
jr_020_6902:
	ld   a, [$cac4]                                  ; $6902: $fa $c4 $ca
	cp   $03                                         ; $6905: $fe $03
	ret  z                                           ; $6907: $c8

	ld   a, [$cac5]                                  ; $6908: $fa $c5 $ca
	cp   $01                                         ; $690b: $fe $01
	jr   z, jr_020_691d                              ; $690d: $28 $0e

	ld   a, $01                                      ; $690f: $3e $01
	ld   [$cac5], a                                  ; $6911: $ea $c5 $ca
	ld   [$cab1], a                                  ; $6914: $ea $b1 $ca
	ld   a, $19                                      ; $6917: $3e $19
	call Func_1adf                                       ; $6919: $cd $df $1a
	ret                                              ; $691c: $c9


jr_020_691d:
	call Call_020_6ca3                               ; $691d: $cd $a3 $6c
	ret                                              ; $6920: $c9


Jump_020_6921:
	ld   a, [$cac5]                                  ; $6921: $fa $c5 $ca
	and  a                                           ; $6924: $a7
	jr   nz, jr_020_6931                             ; $6925: $20 $0a

	ld   a, [$cac4]                                  ; $6927: $fa $c4 $ca
	cp   $00                                         ; $692a: $fe $00
	ret  z                                           ; $692c: $c8

	call Call_020_6da1                               ; $692d: $cd $a1 $6d
	ret                                              ; $6930: $c9


jr_020_6931:
	ld   a, $00                                      ; $6931: $3e $00
	ld   [$cac5], a                                  ; $6933: $ea $c5 $ca
	ld   [$cab1], a                                  ; $6936: $ea $b1 $ca
	ret                                              ; $6939: $c9


	ld   a, [$cac5]                                  ; $693a: $fa $c5 $ca
	cp   $01                                         ; $693d: $fe $01
	jr   nz, jr_020_6946                             ; $693f: $20 $05

	ld   hl, $cacb                                   ; $6941: $21 $cb $ca
	dec  [hl]                                        ; $6944: $35
	dec  [hl]                                        ; $6945: $35

jr_020_6946:
	ret                                              ; $6946: $c9


	ld   a, [$cac5]                                  ; $6947: $fa $c5 $ca
	cp   $01                                         ; $694a: $fe $01
	jr   nz, jr_020_6953                             ; $694c: $20 $05

	ld   hl, $cacb                                   ; $694e: $21 $cb $ca
	inc  [hl]                                        ; $6951: $34
	inc  [hl]                                        ; $6952: $34

jr_020_6953:
	ret                                              ; $6953: $c9


Jump_020_6954:
	xor  a                                           ; $6954: $af
	ld   [$cabc], a                                  ; $6955: $ea $bc $ca
	ld   [$cabd], a                                  ; $6958: $ea $bd $ca
	ld   [$cabe], a                                  ; $695b: $ea $be $ca
	ld   a, [$cac9]                                  ; $695e: $fa $c9 $ca
	cp   $01                                         ; $6961: $fe $01
	jp   z, Jump_020_6ad4                            ; $6963: $ca $d4 $6a

	ld   a, $10                                      ; $6966: $3e $10
	ld   [$ca71], a                                  ; $6968: $ea $71 $ca
	xor  a                                           ; $696b: $af
	ld   [$ca72], a                                  ; $696c: $ea $72 $ca
	ld   a, $16                                      ; $696f: $3e $16
	call Func_1adf                                       ; $6971: $cd $df $1a

Jump_020_6974:
	ld   a, [$ca6f]                                  ; $6974: $fa $6f $ca
	cp   $01                                         ; $6977: $fe $01
	jr   nz, jr_020_6987                             ; $6979: $20 $0c

	ld   a, [$ca72]                                  ; $697b: $fa $72 $ca
	inc  a                                           ; $697e: $3c
	ld   [$ca72], a                                  ; $697f: $ea $72 $ca
	cp   $0a                                         ; $6982: $fe $0a
	jp   nz, Jump_020_6ab8                           ; $6984: $c2 $b8 $6a

jr_020_6987:
	ld   a, [$ca72]                                  ; $6987: $fa $72 $ca
	inc  a                                           ; $698a: $3c
	ld   [$ca72], a                                  ; $698b: $ea $72 $ca
	cp   $04                                         ; $698e: $fe $04
	jp   c, Jump_020_6ab8                            ; $6990: $da $b8 $6a

	ld   a, [$ca6f]                                  ; $6993: $fa $6f $ca
	cp   $06                                         ; $6996: $fe $06
	jr   z, jr_020_69a5                              ; $6998: $28 $0b

	inc  a                                           ; $699a: $3c
	ld   [$ca6f], a                                  ; $699b: $ea $6f $ca
	xor  a                                           ; $699e: $af
	ld   [$ca72], a                                  ; $699f: $ea $72 $ca
	jp   Jump_020_6ab8                               ; $69a2: $c3 $b8 $6a


jr_020_69a5:
	ld   a, $02                                      ; $69a5: $3e $02
	ld   [$ca71], a                                  ; $69a7: $ea $71 $ca
	ld   a, $17                                      ; $69aa: $3e $17
	call Func_1adf                                       ; $69ac: $cd $df $1a

Jump_020_69af:
	call Call_020_6bc8                               ; $69af: $cd $c8 $6b
	ld   a, [wSCX]                                  ; $69b2: $fa $07 $c2
	dec  a                                           ; $69b5: $3d
	dec  a                                           ; $69b6: $3d
	dec  a                                           ; $69b7: $3d
	dec  a                                           ; $69b8: $3d
	ld   [wSCX], a                                  ; $69b9: $ea $07 $c2
	cp   $00                                         ; $69bc: $fe $00
	jr   z, jr_020_6a2e                              ; $69be: $28 $6e

	ld   a, [wSCX]                                  ; $69c0: $fa $07 $c2
	cp   $78                                         ; $69c3: $fe $78
	jr   z, jr_020_69ca                              ; $69c5: $28 $03

	jp   Jump_020_6ab8                               ; $69c7: $c3 $b8 $6a


jr_020_69ca:
	ld   hl, $cacd                                   ; $69ca: $21 $cd $ca
	inc  [hl]                                        ; $69cd: $34
	ld   a, $ff                                      ; $69ce: $3e $ff
	ld   [$cabc], a                                  ; $69d0: $ea $bc $ca
	ld   [$cabd], a                                  ; $69d3: $ea $bd $ca
	ld   [$cabe], a                                  ; $69d6: $ea $be $ca
	ld   [$ca9f], a                                  ; $69d9: $ea $9f $ca
	xor  a                                           ; $69dc: $af
	ld   [$cac3], a                                  ; $69dd: $ea $c3 $ca
	ld   [$cac5], a                                  ; $69e0: $ea $c5 $ca
	ld   [$ca7b], a                                  ; $69e3: $ea $7b $ca
	ld   [$ca7c], a                                  ; $69e6: $ea $7c $ca
	ld   [$ca7d], a                                  ; $69e9: $ea $7d $ca
	ld   [$ca7e], a                                  ; $69ec: $ea $7e $ca
	ld   [$ca7f], a                                  ; $69ef: $ea $7f $ca
	ld   [$ca80], a                                  ; $69f2: $ea $80 $ca
	ld   [$ca81], a                                  ; $69f5: $ea $81 $ca
	ld   [$ca82], a                                  ; $69f8: $ea $82 $ca
	ld   [$ca83], a                                  ; $69fb: $ea $83 $ca
	ld   [$ca84], a                                  ; $69fe: $ea $84 $ca
	ld   [$ca85], a                                  ; $6a01: $ea $85 $ca
	ld   [$ca86], a                                  ; $6a04: $ea $86 $ca
	ld   [$ca87], a                                  ; $6a07: $ea $87 $ca
	ld   [$ca43], a                                  ; $6a0a: $ea $43 $ca
	ld   [$ca44], a                                  ; $6a0d: $ea $44 $ca
	ld   a, $ff                                      ; $6a10: $3e $ff
	ld   [$ca9f], a                                  ; $6a12: $ea $9f $ca
	ld   [$caa0], a                                  ; $6a15: $ea $a0 $ca
	ld   [$caa1], a                                  ; $6a18: $ea $a1 $ca
	call Call_020_7227                               ; $6a1b: $cd $27 $72
	call Call_020_6bf1                               ; $6a1e: $cd $f1 $6b
	call Call_020_6c16                               ; $6a21: $cd $16 $6c
	ld   a, $02                                      ; $6a24: $3e $02
	ld   [$cac0], a                                  ; $6a26: $ea $c0 $ca
	ld   hl, $cac9                                   ; $6a29: $21 $c9 $ca
	dec  [hl]                                        ; $6a2c: $35
	ret                                              ; $6a2d: $c9


jr_020_6a2e:
	ld   a, $04                                      ; $6a2e: $3e $04
	ld   [$ca71], a                                  ; $6a30: $ea $71 $ca
	xor  a                                           ; $6a33: $af
	ld   [$ca42], a                                  ; $6a34: $ea $42 $ca
	ld   a, $18                                      ; $6a37: $3e $18
	call Func_1adf                                       ; $6a39: $cd $df $1a

Jump_020_6a3c:
	ld   a, [$ca42]                                  ; $6a3c: $fa $42 $ca
	ld   c, a                                        ; $6a3f: $4f
	ld   b, $00                                      ; $6a40: $06 $00
	ld   hl, $6b6b                                   ; $6a42: $21 $6b $6b
	add  hl, bc                                      ; $6a45: $09
	ld   a, [hl]                                     ; $6a46: $7e
	cp   $00                                         ; $6a47: $fe $00
	jr   z, jr_020_6a86                              ; $6a49: $28 $3b

	ld   a, [wSCX]                                  ; $6a4b: $fa $07 $c2
	add  [hl]                                        ; $6a4e: $86
	ld   [wSCX], a                                  ; $6a4f: $ea $07 $c2
	ld   a, [$ca42]                                  ; $6a52: $fa $42 $ca
	ld   c, a                                        ; $6a55: $4f
	ld   b, $00                                      ; $6a56: $06 $00
	ld   hl, $6b7d                                   ; $6a58: $21 $7d $6b
	add  hl, bc                                      ; $6a5b: $09
	ld   de, $ca7b                                   ; $6a5c: $11 $7b $ca
	ld   a, [$caaf]                                  ; $6a5f: $fa $af $ca
	ld   c, a                                        ; $6a62: $4f

jr_020_6a63:
	ld   a, [de]                                     ; $6a63: $1a
	add  [hl]                                        ; $6a64: $86
	ld   [de], a                                     ; $6a65: $12
	inc  de                                          ; $6a66: $13
	inc  de                                          ; $6a67: $13
	inc  de                                          ; $6a68: $13
	dec  c                                           ; $6a69: $0d
	ld   a, c                                        ; $6a6a: $79
	cp   $00                                         ; $6a6b: $fe $00
	jr   nz, jr_020_6a63                             ; $6a6d: $20 $f4

	ld   b, $00                                      ; $6a6f: $06 $00
	ld   de, $caa3                                   ; $6a71: $11 $a3 $ca
	ld   c, $03                                      ; $6a74: $0e $03

jr_020_6a76:
	ld   a, [de]                                     ; $6a76: $1a
	add  [hl]                                        ; $6a77: $86
	ld   [de], a                                     ; $6a78: $12
	inc  de                                          ; $6a79: $13
	dec  c                                           ; $6a7a: $0d
	ld   a, c                                        ; $6a7b: $79
	cp   $00                                         ; $6a7c: $fe $00
	jr   nz, jr_020_6a76                             ; $6a7e: $20 $f6

	ld   hl, $ca42                                   ; $6a80: $21 $42 $ca
	inc  [hl]                                        ; $6a83: $34
	jr   jr_020_6ab8                                 ; $6a84: $18 $32

jr_020_6a86:
	ld   a, $08                                      ; $6a86: $3e $08
	ld   [$ca71], a                                  ; $6a88: $ea $71 $ca
	xor  a                                           ; $6a8b: $af
	ld   [$ca72], a                                  ; $6a8c: $ea $72 $ca
	ld   [wSCX], a                                  ; $6a8f: $ea $07 $c2

Jump_020_6a92:
	ld   a, [$ca72]                                  ; $6a92: $fa $72 $ca
	inc  a                                           ; $6a95: $3c
	ld   [$ca72], a                                  ; $6a96: $ea $72 $ca
	cp   $03                                         ; $6a99: $fe $03
	jr   nz, jr_020_6ab8                             ; $6a9b: $20 $1b

	ld   a, [$ca6f]                                  ; $6a9d: $fa $6f $ca
	cp   $00                                         ; $6aa0: $fe $00
	jr   z, jr_020_6aae                              ; $6aa2: $28 $0a

	dec  a                                           ; $6aa4: $3d
	ld   [$ca6f], a                                  ; $6aa5: $ea $6f $ca
	xor  a                                           ; $6aa8: $af
	ld   [$ca72], a                                  ; $6aa9: $ea $72 $ca
	jr   jr_020_6ab8                                 ; $6aac: $18 $0a

jr_020_6aae:
	ld   a, $16                                      ; $6aae: $3e $16
	call Func_1adf                                       ; $6ab0: $cd $df $1a
	ld   a, $00                                      ; $6ab3: $3e $00
	ld   [$ca71], a                                  ; $6ab5: $ea $71 $ca

Jump_020_6ab8:
jr_020_6ab8:
	ld   a, [$cac5]                                  ; $6ab8: $fa $c5 $ca
	cp   $02                                         ; $6abb: $fe $02
	jr   nz, jr_020_6ad0                             ; $6abd: $20 $11

	ld   a, [$cacc]                                  ; $6abf: $fa $cc $ca
	inc  a                                           ; $6ac2: $3c
	ld   [$cacc], a                                  ; $6ac3: $ea $cc $ca
	cp   $3c                                         ; $6ac6: $fe $3c
	ret  nz                                          ; $6ac8: $c0

	xor  a                                           ; $6ac9: $af
	ld   [$cacc], a                                  ; $6aca: $ea $cc $ca
	ld   [$cac5], a                                  ; $6acd: $ea $c5 $ca

Jump_020_6ad0:
jr_020_6ad0:
	call $6f11                                       ; $6ad0: $cd $11 $6f
	ret                                              ; $6ad3: $c9


Jump_020_6ad4:
	call ClearOam                                       ; $6ad4: $cd $d7 $0d
	call Call_020_6ec9                               ; $6ad7: $cd $c9 $6e
	ld   a, $04                                      ; $6ada: $3e $04
	ld   [$cac5], a                                  ; $6adc: $ea $c5 $ca
	call $6f11                                       ; $6adf: $cd $11 $6f
	ld   a, [$cacc]                                  ; $6ae2: $fa $cc $ca
	inc  a                                           ; $6ae5: $3c
	ld   [$cacc], a                                  ; $6ae6: $ea $cc $ca
	cp   $78                                         ; $6ae9: $fe $78
	ret  nz                                          ; $6aeb: $c0

	ld   hl, $cacd                                   ; $6aec: $21 $cd $ca
	inc  [hl]                                        ; $6aef: $34
	ld   a, $5c                                      ; $6af0: $3e $5c
	call $1b64                                       ; $6af2: $cd $64 $1b
	ld   a, [$cb1d]                                  ; $6af5: $fa $1d $cb
	or   a                                           ; $6af8: $b7
	jr   nz, jr_020_6b02                             ; $6af9: $20 $07

	ld   a, $02                                      ; $6afb: $3e $02
	ld   [$ca60], a                                  ; $6afd: $ea $60 $ca
	jr   jr_020_6b07                                 ; $6b00: $18 $05

jr_020_6b02:
	ld   a, $04                                      ; $6b02: $3e $04
	ld   [$ca60], a                                  ; $6b04: $ea $60 $ca

jr_020_6b07:
	xor  a                                           ; $6b07: $af
	ld   [$cac5], a                                  ; $6b08: $ea $c5 $ca
	ld   b, $2a                                      ; $6b0b: $06 $2a
	ld   hl, $6080                                   ; $6b0d: $21 $80 $60
	call Call_020_7938                               ; $6b10: $cd $38 $79
	call TurnOffLCD                                       ; $6b13: $cd $e3 $08
	ld   a, $00                                      ; $6b16: $3e $00
	call SafeSetAudVolForMultipleChannels                                       ; $6b18: $cd $e0 $1c
	xor  a                                           ; $6b1b: $af
	ld   [wSCX], a                                  ; $6b1c: $ea $07 $c2
	ld   [wSCY], a                                  ; $6b1f: $ea $08 $c2
	ld   a, $0a                                      ; $6b22: $3e $0a
	ld   [wGameSubstate], a                                  ; $6b24: $ea $a1 $c2
	ret                                              ; $6b27: $c9


Jump_020_6b28:
	call ClearOam                                       ; $6b28: $cd $d7 $0d
	call Call_020_6ec9                               ; $6b2b: $cd $c9 $6e
	ld   a, $03                                      ; $6b2e: $3e $03
	ld   [$cac5], a                                  ; $6b30: $ea $c5 $ca
	call $6f11                                       ; $6b33: $cd $11 $6f
	call Call_020_637a                               ; $6b36: $cd $7a $63
	ld   a, [$cacc]                                  ; $6b39: $fa $cc $ca
	inc  a                                           ; $6b3c: $3c
	ld   [$cacc], a                                  ; $6b3d: $ea $cc $ca
	cp   $78                                         ; $6b40: $fe $78
	ret  nz                                          ; $6b42: $c0

	ld   a, [$cad2]                                  ; $6b43: $fa $d2 $ca
	and  a                                           ; $6b46: $a7
	jr   z, jr_020_6b4e                              ; $6b47: $28 $05

	ld   a, $5c                                      ; $6b49: $3e $5c
	call $1b64                                       ; $6b4b: $cd $64 $1b

jr_020_6b4e:
	ld   b, $2a                                      ; $6b4e: $06 $2a
	ld   hl, $6080                                   ; $6b50: $21 $80 $60
	call Call_020_7938                               ; $6b53: $cd $38 $79
	call TurnOffLCD                                       ; $6b56: $cd $e3 $08
	ld   a, $00                                      ; $6b59: $3e $00
	call SafeSetAudVolForMultipleChannels                                       ; $6b5b: $cd $e0 $1c
	xor  a                                           ; $6b5e: $af
	ld   [wSCX], a                                  ; $6b5f: $ea $07 $c2
	ld   [wSCY], a                                  ; $6b62: $ea $08 $c2
	ld   a, $0a                                      ; $6b65: $3e $0a
	ld   [wGameSubstate], a                                  ; $6b67: $ea $a1 $c2
	ret                                              ; $6b6a: $c9


	cp   $fe                                         ; $6b6b: $fe $fe
	cp   $fe                                         ; $6b6d: $fe $fe
	cp   $02                                         ; $6b6f: $fe $02
	ld   [bc], a                                     ; $6b71: $02
	ld   [bc], a                                     ; $6b72: $02
	ld   [bc], a                                     ; $6b73: $02
	ld   [bc], a                                     ; $6b74: $02
	cp   $ff                                         ; $6b75: $fe $ff
	rst  $38                                         ; $6b77: $ff
	ld   bc, $0101                                   ; $6b78: $01 $01 $01
	ld   bc, $0200                                   ; $6b7b: $01 $00 $02
	ld   [bc], a                                     ; $6b7e: $02
	ld   [bc], a                                     ; $6b7f: $02
	ld   [bc], a                                     ; $6b80: $02
	ld   [bc], a                                     ; $6b81: $02
	cp   $fe                                         ; $6b82: $fe $fe
	cp   $fe                                         ; $6b84: $fe $fe
	cp   $02                                         ; $6b86: $fe $02
	ld   bc, $ff01                                   ; $6b88: $01 $01 $ff
	rst  $38                                         ; $6b8b: $ff
	rst  $38                                         ; $6b8c: $ff
	rst  $38                                         ; $6b8d: $ff
	nop                                              ; $6b8e: $00

Call_020_6b8f:
	ld   a, [$cab1]                                  ; $6b8f: $fa $b1 $ca
	and  a                                           ; $6b92: $a7
	ret  z                                           ; $6b93: $c8

	ld   a, $03                                      ; $6b94: $3e $03
	ld   [wSpriteGroup], a                                  ; $6b96: $ea $1a $c2
	ld   a, [$caca]                                  ; $6b99: $fa $ca $ca
	add  $04                                         ; $6b9c: $c6 $04
	ld   b, a                                        ; $6b9e: $47
	ld   a, [$cacb]                                  ; $6b9f: $fa $cb $ca
	ld   c, a                                        ; $6ba2: $4f
	ld   a, $8d                                      ; $6ba3: $3e $8d
	ld   d, a                                        ; $6ba5: $57
	ld   a, [$cab2]                                  ; $6ba6: $fa $b2 $ca
	add  d                                           ; $6ba9: $82
	call LoadSpriteFromMainTable                                       ; $6baa: $cd $16 $0e
	ld   a, [$cab3]                                  ; $6bad: $fa $b3 $ca
	inc  a                                           ; $6bb0: $3c
	ld   [$cab3], a                                  ; $6bb1: $ea $b3 $ca
	cp   $08                                         ; $6bb4: $fe $08
	ret  nz                                          ; $6bb6: $c0

	xor  a                                           ; $6bb7: $af
	ld   [$cab3], a                                  ; $6bb8: $ea $b3 $ca
	ld   hl, $cab2                                   ; $6bbb: $21 $b2 $ca
	inc  [hl]                                        ; $6bbe: $34
	ld   a, [hl]                                     ; $6bbf: $7e
	cp   $03                                         ; $6bc0: $fe $03
	ret  nz                                          ; $6bc2: $c0

	xor  a                                           ; $6bc3: $af
	ld   [$cab2], a                                  ; $6bc4: $ea $b2 $ca
	ret                                              ; $6bc7: $c9


Call_020_6bc8:
	ld   hl, $ca7b                                   ; $6bc8: $21 $7b $ca
	ld   a, [$caaf]                                  ; $6bcb: $fa $af $ca
	ld   c, a                                        ; $6bce: $4f

jr_020_6bcf:
	ld   a, [hl]                                     ; $6bcf: $7e
	inc  a                                           ; $6bd0: $3c
	inc  a                                           ; $6bd1: $3c
	inc  a                                           ; $6bd2: $3c
	inc  a                                           ; $6bd3: $3c
	ld   [hl], a                                     ; $6bd4: $77
	inc  hl                                          ; $6bd5: $23
	inc  hl                                          ; $6bd6: $23
	inc  hl                                          ; $6bd7: $23
	dec  c                                           ; $6bd8: $0d
	ld   a, c                                        ; $6bd9: $79
	cp   $00                                         ; $6bda: $fe $00
	jr   nz, jr_020_6bcf                             ; $6bdc: $20 $f1

	ld   hl, $caa3                                   ; $6bde: $21 $a3 $ca
	ld   c, $03                                      ; $6be1: $0e $03

jr_020_6be3:
	ld   a, [hl]                                     ; $6be3: $7e
	inc  a                                           ; $6be4: $3c
	inc  a                                           ; $6be5: $3c
	inc  a                                           ; $6be6: $3c
	inc  a                                           ; $6be7: $3c
	ld   [hl], a                                     ; $6be8: $77
	inc  hl                                          ; $6be9: $23
	dec  c                                           ; $6bea: $0d
	ld   a, c                                        ; $6beb: $79
	cp   $00                                         ; $6bec: $fe $00
	jr   nz, jr_020_6be3                             ; $6bee: $20 $f3

	ret                                              ; $6bf0: $c9


Call_020_6bf1:
	ld   hl, $ca7b                                   ; $6bf1: $21 $7b $ca
	ld   a, [$caaf]                                  ; $6bf4: $fa $af $ca
	ld   c, a                                        ; $6bf7: $4f

jr_020_6bf8:
	ld   a, [hl]                                     ; $6bf8: $7e
	add  $88                                         ; $6bf9: $c6 $88
	ld   [hl], a                                     ; $6bfb: $77
	inc  hl                                          ; $6bfc: $23
	inc  hl                                          ; $6bfd: $23
	inc  hl                                          ; $6bfe: $23
	dec  c                                           ; $6bff: $0d
	ld   a, c                                        ; $6c00: $79
	cp   $00                                         ; $6c01: $fe $00
	jr   nz, jr_020_6bf8                             ; $6c03: $20 $f3

	ld   hl, $caa3                                   ; $6c05: $21 $a3 $ca
	ld   c, $03                                      ; $6c08: $0e $03

jr_020_6c0a:
	ld   a, [hl]                                     ; $6c0a: $7e
	add  $88                                         ; $6c0b: $c6 $88
	ld   [hl], a                                     ; $6c0d: $77
	inc  hl                                          ; $6c0e: $23
	dec  c                                           ; $6c0f: $0d
	ld   a, c                                        ; $6c10: $79
	cp   $00                                         ; $6c11: $fe $00
	jr   nz, jr_020_6c0a                             ; $6c13: $20 $f5

	ret                                              ; $6c15: $c9


Call_020_6c16:
	call Call_020_7379                               ; $6c16: $cd $79 $73
	call Call_020_72eb                               ; $6c19: $cd $eb $72
	ld   a, [$ca78]                                  ; $6c1c: $fa $78 $ca
	ld   [$ca7a], a                                  ; $6c1f: $ea $7a $ca
	ld   a, [$ca79]                                  ; $6c22: $fa $79 $ca
	ld   [$ca77], a                                  ; $6c25: $ea $77 $ca
	ld   a, [$cac4]                                  ; $6c28: $fa $c4 $ca
	cp   $03                                         ; $6c2b: $fe $03
	jr   z, jr_020_6c44                              ; $6c2d: $28 $15

	xor  a                                           ; $6c2f: $af
	ld   [$ca77], a                                  ; $6c30: $ea $77 $ca
	call Call_020_744a                               ; $6c33: $cd $4a $74
	ld   a, [$ca7a]                                  ; $6c36: $fa $7a $ca
	ld   [$ca78], a                                  ; $6c39: $ea $78 $ca
	ld   a, $01                                      ; $6c3c: $3e $01
	ld   [$ca77], a                                  ; $6c3e: $ea $77 $ca
	call Call_020_744a                               ; $6c41: $cd $4a $74

jr_020_6c44:
	ld   c, $81                                      ; $6c44: $0e $81
	ld   de, $9c00                                   ; $6c46: $11 $00 $9c
	ld   a, $07                                      ; $6c49: $3e $07
	ld   hl, $d840                                   ; $6c4b: $21 $40 $d8
	ld   b, $0c                                      ; $6c4e: $06 $0c
	call EnqueueHDMATransfer                                       ; $6c50: $cd $7c $02
	ld   c, $80                                      ; $6c53: $0e $80
	ld   de, $9c00                                   ; $6c55: $11 $00 $9c
	ld   a, $07                                      ; $6c58: $3e $07
	ld   hl, $d900                                   ; $6c5a: $21 $00 $d9
	ld   b, $0c                                      ; $6c5d: $06 $0c
	call EnqueueHDMATransfer                                       ; $6c5f: $cd $7c $02
	ret                                              ; $6c62: $c9


Call_020_6c63:
	ld   hl, $ca7b                                   ; $6c63: $21 $7b $ca
	ld   a, [$caaf]                                  ; $6c66: $fa $af $ca
	ld   e, a                                        ; $6c69: $5f
	ld   d, $00                                      ; $6c6a: $16 $00

jr_020_6c6c:
	push de                                          ; $6c6c: $d5
	ld   a, [hl+]                                    ; $6c6d: $2a
	ld   d, a                                        ; $6c6e: $57
	ld   a, [hl+]                                    ; $6c6f: $2a
	ld   e, a                                        ; $6c70: $5f
	call Call_020_6c89                               ; $6c71: $cd $89 $6c
	jr   c, jr_020_6c83                              ; $6c74: $38 $0d

	inc  hl                                          ; $6c76: $23
	pop  de                                          ; $6c77: $d1
	inc  d                                           ; $6c78: $14
	ld   a, e                                        ; $6c79: $7b
	cp   d                                           ; $6c7a: $ba
	jr   nz, jr_020_6c6c                             ; $6c7b: $20 $ef

	ld   a, $ff                                      ; $6c7d: $3e $ff
	ld   [$cab0], a                                  ; $6c7f: $ea $b0 $ca
	ret                                              ; $6c82: $c9


jr_020_6c83:
	pop  de                                          ; $6c83: $d1
	ld   a, d                                        ; $6c84: $7a
	ld   [$cab0], a                                  ; $6c85: $ea $b0 $ca
	ret                                              ; $6c88: $c9


Call_020_6c89:
	ld   a, [$caca]                                  ; $6c89: $fa $ca $ca
	ld   b, a                                        ; $6c8c: $47
	ld   a, d                                        ; $6c8d: $7a
	sub  b                                           ; $6c8e: $90
	ld   b, a                                        ; $6c8f: $47
	add  $04                                         ; $6c90: $c6 $04
	cp   $11                                         ; $6c92: $fe $11
	ret  nc                                          ; $6c94: $d0

	ld   a, [$cacb]                                  ; $6c95: $fa $cb $ca
	ld   c, a                                        ; $6c98: $4f
	ld   a, e                                        ; $6c99: $7b
	sub  c                                           ; $6c9a: $91
	ld   c, a                                        ; $6c9b: $4f
	add  $07                                         ; $6c9c: $c6 $07
	cp   $0f                                         ; $6c9e: $fe $0f
	ret  nc                                          ; $6ca0: $d0

	scf                                              ; $6ca1: $37
	ret                                              ; $6ca2: $c9


Call_020_6ca3:
	call Call_020_6c63                               ; $6ca3: $cd $63 $6c
	ld   b, $00                                      ; $6ca6: $06 $00
	ld   a, [$ca9f]                                  ; $6ca8: $fa $9f $ca
	cp   $ff                                         ; $6cab: $fe $ff
	jr   z, jr_020_6cc0                              ; $6cad: $28 $11

	inc  b                                           ; $6caf: $04
	ld   a, [$caa0]                                  ; $6cb0: $fa $a0 $ca
	cp   $ff                                         ; $6cb3: $fe $ff
	jr   z, jr_020_6cc0                              ; $6cb5: $28 $09

	inc  b                                           ; $6cb7: $04
	ld   a, [$caa1]                                  ; $6cb8: $fa $a1 $ca
	cp   $ff                                         ; $6cbb: $fe $ff
	jr   z, jr_020_6cc0                              ; $6cbd: $28 $01

	inc  b                                           ; $6cbf: $04

jr_020_6cc0:
	ld   a, b                                        ; $6cc0: $78
	ld   [$ca45], a                                  ; $6cc1: $ea $45 $ca
	ld   a, [$ca78]                                  ; $6cc4: $fa $78 $ca
	ld   d, $00                                      ; $6cc7: $16 $00
	ld   e, a                                        ; $6cc9: $5f
	ld   hl, $ca74                                   ; $6cca: $21 $74 $ca
	add  hl, de                                      ; $6ccd: $19
	ld   a, [hl]                                     ; $6cce: $7e
	and  $f0                                         ; $6ccf: $e6 $f0
	ret  nz                                          ; $6cd1: $c0

	ld   hl, $cab0                                   ; $6cd2: $21 $b0 $ca
	ld   a, [hl]                                     ; $6cd5: $7e
	cp   $ff                                         ; $6cd6: $fe $ff
	ret  z                                           ; $6cd8: $c8

	ld   c, a                                        ; $6cd9: $4f
	sla  a                                           ; $6cda: $cb $27
	add  c                                           ; $6cdc: $81
	ld   b, $00                                      ; $6cdd: $06 $00
	ld   c, a                                        ; $6cdf: $4f
	ld   hl, $ca7b                                   ; $6ce0: $21 $7b $ca
	add  hl, bc                                      ; $6ce3: $09
	ld   a, [hl+]                                    ; $6ce4: $2a
	ld   b, a                                        ; $6ce5: $47
	ld   a, [hl+]                                    ; $6ce6: $2a
	ld   c, a                                        ; $6ce7: $4f
	ld   a, [hl]                                     ; $6ce8: $7e
	ld   [$ca43], a                                  ; $6ce9: $ea $43 $ca
	and  $f0                                         ; $6cec: $e6 $f0
	ret  nz                                          ; $6cee: $c0

	push hl                                          ; $6cef: $e5
	ld   a, $1a                                      ; $6cf0: $3e $1a
	call Func_1adf                                       ; $6cf2: $cd $df $1a
	ld   a, [$ca45]                                  ; $6cf5: $fa $45 $ca
	ld   d, $00                                      ; $6cf8: $16 $00
	ld   e, a                                        ; $6cfa: $5f
	ld   hl, $caa3                                   ; $6cfb: $21 $a3 $ca
	add  hl, de                                      ; $6cfe: $19
	ld   [hl], b                                     ; $6cff: $70
	ld   hl, $caa7                                   ; $6d00: $21 $a7 $ca
	add  hl, de                                      ; $6d03: $19
	ld   [hl], c                                     ; $6d04: $71
	ld   a, [$cab0]                                  ; $6d05: $fa $b0 $ca
	ld   b, $00                                      ; $6d08: $06 $00
	ld   c, a                                        ; $6d0a: $4f
	ld   hl, $ca96                                   ; $6d0b: $21 $96 $ca
	add  hl, bc                                      ; $6d0e: $09
	ld   a, [$ca78]                                  ; $6d0f: $fa $78 $ca
	swap a                                           ; $6d12: $cb $37
	ld   b, a                                        ; $6d14: $47
	ld   a, [$ca45]                                  ; $6d15: $fa $45 $ca
	add  b                                           ; $6d18: $80
	ld   [hl], a                                     ; $6d19: $77
	ld   a, [$ca78]                                  ; $6d1a: $fa $78 $ca
	ld   c, a                                        ; $6d1d: $4f
	ld   b, $00                                      ; $6d1e: $06 $00
	ld   hl, $ca74                                   ; $6d20: $21 $74 $ca
	add  hl, bc                                      ; $6d23: $09
	ld   a, [hl]                                     ; $6d24: $7e
	push af                                          ; $6d25: $f5
	ld   a, [$ca45]                                  ; $6d26: $fa $45 $ca
	ld   d, $00                                      ; $6d29: $16 $00
	ld   e, a                                        ; $6d2b: $5f
	ld   hl, $caab                                   ; $6d2c: $21 $ab $ca
	add  hl, de                                      ; $6d2f: $19
	pop  af                                          ; $6d30: $f1
	ld   [hl], a                                     ; $6d31: $77
	ld   a, [$ca43]                                  ; $6d32: $fa $43 $ca
	ld   d, a                                        ; $6d35: $57
	ld   a, [hl]                                     ; $6d36: $7e
	cp   d                                           ; $6d37: $ba
	jr   nz, jr_020_6d3e                             ; $6d38: $20 $04

	ld   hl, $cac6                                   ; $6d3a: $21 $c6 $ca
	inc  [hl]                                        ; $6d3d: $34

jr_020_6d3e:
	ld   a, $00                                      ; $6d3e: $3e $00
	ld   [$cac5], a                                  ; $6d40: $ea $c5 $ca
	ld   a, [$ca45]                                  ; $6d43: $fa $45 $ca
	ld   d, $00                                      ; $6d46: $16 $00
	ld   e, a                                        ; $6d48: $5f
	ld   hl, $ca9f                                   ; $6d49: $21 $9f $ca
	add  hl, de                                      ; $6d4c: $19
	ld   a, [$cab0]                                  ; $6d4d: $fa $b0 $ca
	ld   [hl], a                                     ; $6d50: $77
	ld   hl, $cac4                                   ; $6d51: $21 $c4 $ca
	inc  [hl]                                        ; $6d54: $34
	xor  a                                           ; $6d55: $af
	ld   [$cab1], a                                  ; $6d56: $ea $b1 $ca
	pop  hl                                          ; $6d59: $e1
	ld   a, [hl]                                     ; $6d5a: $7e
	or   $f0                                         ; $6d5b: $f6 $f0
	ld   [hl], a                                     ; $6d5d: $77
	ld   a, [$ca78]                                  ; $6d5e: $fa $78 $ca
	ld   d, $00                                      ; $6d61: $16 $00
	ld   e, a                                        ; $6d63: $5f
	ld   hl, $ca74                                   ; $6d64: $21 $74 $ca
	add  hl, de                                      ; $6d67: $19
	ld   a, [hl]                                     ; $6d68: $7e
	add  $f0                                         ; $6d69: $c6 $f0
	ld   [hl], a                                     ; $6d6b: $77
	ld   a, [$cac4]                                  ; $6d6c: $fa $c4 $ca
	cp   $03                                         ; $6d6f: $fe $03
	jr   z, jr_020_6d96                              ; $6d71: $28 $23

jr_020_6d73:
	ld   hl, $ca78                                   ; $6d73: $21 $78 $ca
	ld   a, [hl]                                     ; $6d76: $7e
	inc  hl                                          ; $6d77: $23
	ld   [hl], a                                     ; $6d78: $77
	ld   hl, $ca78                                   ; $6d79: $21 $78 $ca
	ld   a, [hl]                                     ; $6d7c: $7e
	cp   $02                                         ; $6d7d: $fe $02
	jr   z, jr_020_6d85                              ; $6d7f: $28 $04

	inc  a                                           ; $6d81: $3c
	ld   [hl], a                                     ; $6d82: $77
	jr   jr_020_6d87                                 ; $6d83: $18 $02

jr_020_6d85:
	xor  a                                           ; $6d85: $af
	ld   [hl], a                                     ; $6d86: $77

jr_020_6d87:
	ld   a, [$ca78]                                  ; $6d87: $fa $78 $ca
	ld   d, $00                                      ; $6d8a: $16 $00
	ld   e, a                                        ; $6d8c: $5f
	ld   hl, $ca74                                   ; $6d8d: $21 $74 $ca
	add  hl, de                                      ; $6d90: $19
	ld   a, [hl]                                     ; $6d91: $7e
	and  $f0                                         ; $6d92: $e6 $f0
	jr   nz, jr_020_6d73                             ; $6d94: $20 $dd

jr_020_6d96:
	call Call_020_6c16                               ; $6d96: $cd $16 $6c
	ld   a, [$ca44]                                  ; $6d99: $fa $44 $ca
	inc  a                                           ; $6d9c: $3c
	ld   [$ca44], a                                  ; $6d9d: $ea $44 $ca
	ret                                              ; $6da0: $c9


Call_020_6da1:
	xor  a                                           ; $6da1: $af
	ld   [$cacc], a                                  ; $6da2: $ea $cc $ca
	ld   [$ca71], a                                  ; $6da5: $ea $71 $ca
	ld   a, [$cac4]                                  ; $6da8: $fa $c4 $ca
	dec  a                                           ; $6dab: $3d
	ld   b, $00                                      ; $6dac: $06 $00
	ld   c, a                                        ; $6dae: $4f
	ld   hl, $ca9f                                   ; $6daf: $21 $9f $ca
	add  hl, bc                                      ; $6db2: $09
	ld   a, [hl]                                     ; $6db3: $7e
	ld   c, a                                        ; $6db4: $4f
	sla  a                                           ; $6db5: $cb $27
	add  c                                           ; $6db7: $81
	ld   b, $00                                      ; $6db8: $06 $00
	ld   c, a                                        ; $6dba: $4f
	ld   hl, $ca7b                                   ; $6dbb: $21 $7b $ca
	add  hl, bc                                      ; $6dbe: $09
	inc  hl                                          ; $6dbf: $23
	inc  hl                                          ; $6dc0: $23
	ld   a, [hl]                                     ; $6dc1: $7e
	ld   [$ca43], a                                  ; $6dc2: $ea $43 $ca
	and  $f0                                         ; $6dc5: $e6 $f0
	cp   $00                                         ; $6dc7: $fe $00
	jr   z, jr_020_6e47                              ; $6dc9: $28 $7c

	ld   a, [$ca44]                                  ; $6dcb: $fa $44 $ca
	and  a                                           ; $6dce: $a7
	jr   z, jr_020_6e47                              ; $6dcf: $28 $76

	push hl                                          ; $6dd1: $e5
	ld   a, [$cac4]                                  ; $6dd2: $fa $c4 $ca
	dec  a                                           ; $6dd5: $3d
	ld   d, $00                                      ; $6dd6: $16 $00
	ld   e, a                                        ; $6dd8: $5f
	ld   hl, $caab                                   ; $6dd9: $21 $ab $ca
	add  hl, de                                      ; $6ddc: $19
	ld   a, [hl]                                     ; $6ddd: $7e
	ld   d, a                                        ; $6dde: $57
	pop  hl                                          ; $6ddf: $e1
	ld   a, [hl]                                     ; $6de0: $7e
	and  $0f                                         ; $6de1: $e6 $0f
	ld   [hl], a                                     ; $6de3: $77
	cp   d                                           ; $6de4: $ba
	jr   nz, jr_020_6deb                             ; $6de5: $20 $04

	ld   hl, $cac6                                   ; $6de7: $21 $c6 $ca
	dec  [hl]                                        ; $6dea: $35

jr_020_6deb:
	ld   a, [$cac4]                                  ; $6deb: $fa $c4 $ca
	dec  a                                           ; $6dee: $3d
	ld   b, $00                                      ; $6def: $06 $00
	ld   c, a                                        ; $6df1: $4f
	ld   hl, $ca9f                                   ; $6df2: $21 $9f $ca
	add  hl, bc                                      ; $6df5: $09
	ld   a, [hl]                                     ; $6df6: $7e
	ld   b, $00                                      ; $6df7: $06 $00
	ld   c, a                                        ; $6df9: $4f
	ld   hl, $ca96                                   ; $6dfa: $21 $96 $ca
	add  hl, bc                                      ; $6dfd: $09
	ld   a, [hl]                                     ; $6dfe: $7e
	and  $0f                                         ; $6dff: $e6 $0f
	ld   [$ca43], a                                  ; $6e01: $ea $43 $ca
	ld   a, [hl]                                     ; $6e04: $7e
	swap a                                           ; $6e05: $cb $37
	and  $0f                                         ; $6e07: $e6 $0f
	ld   [$ca78], a                                  ; $6e09: $ea $78 $ca
	ld   e, a                                        ; $6e0c: $5f
	ld   d, $00                                      ; $6e0d: $16 $00
	ld   hl, $ca74                                   ; $6e0f: $21 $74 $ca
	add  hl, de                                      ; $6e12: $19
	ld   a, [hl]                                     ; $6e13: $7e
	and  $0f                                         ; $6e14: $e6 $0f
	ld   [hl], a                                     ; $6e16: $77
	ld   a, [$ca43]                                  ; $6e17: $fa $43 $ca
	ld   b, $00                                      ; $6e1a: $06 $00
	ld   c, a                                        ; $6e1c: $4f
	ld   hl, $ca9f                                   ; $6e1d: $21 $9f $ca
	add  hl, bc                                      ; $6e20: $09
	ld   a, [hl]                                     ; $6e21: $7e
	ld   a, $ff                                      ; $6e22: $3e $ff
	ld   [hl], a                                     ; $6e24: $77
	ld   a, [$cac4]                                  ; $6e25: $fa $c4 $ca
	dec  a                                           ; $6e28: $3d
	ld   b, $00                                      ; $6e29: $06 $00
	ld   c, a                                        ; $6e2b: $4f
	ld   hl, $caab                                   ; $6e2c: $21 $ab $ca
	add  hl, bc                                      ; $6e2f: $09
	xor  a                                           ; $6e30: $af
	ld   [hl], a                                     ; $6e31: $77
	ld   hl, $cac4                                   ; $6e32: $21 $c4 $ca
	dec  [hl]                                        ; $6e35: $35
	ld   a, [$ca44]                                  ; $6e36: $fa $44 $ca
	dec  a                                           ; $6e39: $3d
	ld   [$ca44], a                                  ; $6e3a: $ea $44 $ca
	xor  a                                           ; $6e3d: $af
	ld   [$cab1], a                                  ; $6e3e: $ea $b1 $ca
	ld   [$cac5], a                                  ; $6e41: $ea $c5 $ca
	call Call_020_6c16                               ; $6e44: $cd $16 $6c

jr_020_6e47:
	ret                                              ; $6e47: $c9


Call_020_6e48:
	ld   a, [$cac4]                                  ; $6e48: $fa $c4 $ca
	cp   $03                                         ; $6e4b: $fe $03
	ret  nz                                          ; $6e4d: $c0

	ld   a, $80                                      ; $6e4e: $3e $80
	ld   [$ca71], a                                  ; $6e50: $ea $71 $ca
	ld   a, [$cacc]                                  ; $6e53: $fa $cc $ca
	inc  a                                           ; $6e56: $3c
	ld   [$cacc], a                                  ; $6e57: $ea $cc $ca
	cp   $3c                                         ; $6e5a: $fe $3c
	ret  nz                                          ; $6e5c: $c0

	xor  a                                           ; $6e5d: $af
	ld   [$cacc], a                                  ; $6e5e: $ea $cc $ca
	ld   a, $02                                      ; $6e61: $3e $02
	ld   [$cace], a                                  ; $6e63: $ea $ce $ca
	ld   a, [$cac6]                                  ; $6e66: $fa $c6 $ca
	cp   $03                                         ; $6e69: $fe $03
	jr   nz, jr_020_6e91                             ; $6e6b: $20 $24

	ld   a, $1b                                      ; $6e6d: $3e $1b
	call Func_1adf                                       ; $6e6f: $cd $df $1a
	ld   a, $01                                      ; $6e72: $3e $01
	ld   [$ca71], a                                  ; $6e74: $ea $71 $ca
	ld   a, $ff                                      ; $6e77: $3e $ff
	ld   [$cac3], a                                  ; $6e79: $ea $c3 $ca
	ld   a, $05                                      ; $6e7c: $3e $05
	ld   [$cac5], a                                  ; $6e7e: $ea $c5 $ca
	ld   a, $00                                      ; $6e81: $3e $00
	ld   [$cac0], a                                  ; $6e83: $ea $c0 $ca
	xor  a                                           ; $6e86: $af
	ld   [$cac6], a                                  ; $6e87: $ea $c6 $ca
	ld   [$cac4], a                                  ; $6e8a: $ea $c4 $ca
	ld   [$ca44], a                                  ; $6e8d: $ea $44 $ca
	ret                                              ; $6e90: $c9


jr_020_6e91:
	ld   a, $1c                                      ; $6e91: $3e $1c
	call Func_1adf                                       ; $6e93: $cd $df $1a
	xor  a                                           ; $6e96: $af
	ld   [$cac4], a                                  ; $6e97: $ea $c4 $ca
	ld   [$cac6], a                                  ; $6e9a: $ea $c6 $ca
	ld   a, $ff                                      ; $6e9d: $3e $ff
	ld   [$ca9f], a                                  ; $6e9f: $ea $9f $ca
	ld   [$caa0], a                                  ; $6ea2: $ea $a0 $ca
	ld   [$caa1], a                                  ; $6ea5: $ea $a1 $ca
	ld   hl, $ca73                                   ; $6ea8: $21 $73 $ca
	dec  [hl]                                        ; $6eab: $35
	call Call_020_7227                               ; $6eac: $cd $27 $72
	ld   a, $06                                      ; $6eaf: $3e $06
	ld   [$cac5], a                                  ; $6eb1: $ea $c5 $ca
	call Call_020_6c16                               ; $6eb4: $cd $16 $6c
	ld   a, $01                                      ; $6eb7: $3e $01
	ld   [$cac0], a                                  ; $6eb9: $ea $c0 $ca
	xor  a                                           ; $6ebc: $af
	ld   [$cab1], a                                  ; $6ebd: $ea $b1 $ca
	ld   [$ca44], a                                  ; $6ec0: $ea $44 $ca
	ld   a, $00                                      ; $6ec3: $3e $00
	ld   [$ca71], a                                  ; $6ec5: $ea $71 $ca
	ret                                              ; $6ec8: $c9


Call_020_6ec9:
	ld   a, [$cac2]                                  ; $6ec9: $fa $c2 $ca
	inc  a                                           ; $6ecc: $3c
	cp   $14                                         ; $6ecd: $fe $14
	jr   c, jr_020_6ede                              ; $6ecf: $38 $0d

	ld   a, [$cac1]                                  ; $6ed1: $fa $c1 $ca
	inc  a                                           ; $6ed4: $3c
	cp   $02                                         ; $6ed5: $fe $02
	jr   nz, jr_020_6eda                             ; $6ed7: $20 $01

	xor  a                                           ; $6ed9: $af

jr_020_6eda:
	ld   [$cac1], a                                  ; $6eda: $ea $c1 $ca
	xor  a                                           ; $6edd: $af

jr_020_6ede:
	ld   [$cac2], a                                  ; $6ede: $ea $c2 $ca
	ld   a, [$cac0]                                  ; $6ee1: $fa $c0 $ca
	sla  a                                           ; $6ee4: $cb $27
	ld   e, a                                        ; $6ee6: $5f
	ld   d, $00                                      ; $6ee7: $16 $00
	ld   hl, $6f05                                   ; $6ee9: $21 $05 $6f
	add  hl, de                                      ; $6eec: $19
	ld   a, [hl+]                                    ; $6eed: $2a
	ld   h, [hl]                                     ; $6eee: $66
	ld   l, a                                        ; $6eef: $6f
	ld   a, [$cac1]                                  ; $6ef0: $fa $c1 $ca
	ld   e, a                                        ; $6ef3: $5f
	add  hl, de                                      ; $6ef4: $19
	ld   a, $04                                      ; $6ef5: $3e $04
	ld   [wSpriteGroup], a                                  ; $6ef7: $ea $1a $c2
	ld   b, $0a                                      ; $6efa: $06 $0a
	ld   a, [$cad0]                                  ; $6efc: $fa $d0 $ca
	ld   c, a                                        ; $6eff: $4f
	ld   a, [hl]                                     ; $6f00: $7e
	call LoadSpriteFromMainTable                                       ; $6f01: $cd $16 $0e
	ret                                              ; $6f04: $c9


	dec  bc                                          ; $6f05: $0b
	ld   l, a                                        ; $6f06: $6f
	dec  c                                           ; $6f07: $0d
	ld   l, a                                        ; $6f08: $6f
	rrca                                             ; $6f09: $0f
	ld   l, a                                        ; $6f0a: $6f
	call c, $dbdc                                    ; $6f0b: $dc $dc $db
	db   $db                                         ; $6f0e: $db
	db   $dd                                         ; $6f0f: $dd
	sbc  $fa                                         ; $6f10: $de $fa
	jp   $feca                                       ; $6f12: $c3 $ca $fe


	rst  $38                                         ; $6f15: $ff
	jr   nz, jr_020_6f23                             ; $6f16: $20 $0b

	ld   a, [$ca6e]                                  ; $6f18: $fa $6e $ca
	cp   $05                                         ; $6f1b: $fe $05
	jr   nz, jr_020_6f22                             ; $6f1d: $20 $03

	xor  a                                           ; $6f1f: $af
	jr   jr_020_6f23                                 ; $6f20: $18 $01

jr_020_6f22:
	inc  a                                           ; $6f22: $3c

jr_020_6f23:
	ld   [$ca6e], a                                  ; $6f23: $ea $6e $ca
	call Call_020_71e8                               ; $6f26: $cd $e8 $71
	ld   a, [$ca6e]                                  ; $6f29: $fa $6e $ca
	call Call_020_71a9                               ; $6f2c: $cd $a9 $71
	call Call_020_7143                               ; $6f2f: $cd $43 $71
	call $70de                                       ; $6f32: $cd $de $70
	call Call_020_6fcd                               ; $6f35: $cd $cd $6f
	call $7083                                       ; $6f38: $cd $83 $70
	call Call_020_6f72                               ; $6f3b: $cd $72 $6f
	call Call_020_7028                               ; $6f3e: $cd $28 $70
	call Call_020_76cf                               ; $6f41: $cd $cf $76
	call Call_020_7719                               ; $6f44: $cd $19 $77
	call $77ef                                       ; $6f47: $cd $ef $77
	call Call_020_778a                               ; $6f4a: $cd $8a $77
	call Call_020_78ad                               ; $6f4d: $cd $ad $78
	call $7854                                       ; $6f50: $cd $54 $78
	ld   c, $81                                      ; $6f53: $0e $81
	ld   de, $9800                                   ; $6f55: $11 $00 $98
	ld   a, $07                                      ; $6f58: $3e $07
	ld   hl, $d540                                   ; $6f5a: $21 $40 $d5
	ld   b, $18                                      ; $6f5d: $06 $18
	call EnqueueHDMATransfer                                       ; $6f5f: $cd $7c $02
	ld   c, $80                                      ; $6f62: $0e $80
	ld   de, $9800                                   ; $6f64: $11 $00 $98
	ld   a, $07                                      ; $6f67: $3e $07
	ld   hl, $d6c0                                   ; $6f69: $21 $c0 $d6
	ld   b, $18                                      ; $6f6c: $06 $18
	call EnqueueHDMATransfer                                       ; $6f6e: $cd $7c $02
	ret                                              ; $6f71: $c9


Call_020_6f72:
	ld   a, [wWramBank]                                  ; $6f72: $fa $93 $c2
	push af                                          ; $6f75: $f5
	ld   a, $07                                      ; $6f76: $3e $07
	ld   [wWramBank], a                                  ; $6f78: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $6f7b: $e0 $70
	ld   hl, $4800                                   ; $6f7d: $21 $00 $48
	ld   d, h                                        ; $6f80: $54
	ld   e, l                                        ; $6f81: $5d
	ld   hl, $6fbf                                   ; $6f82: $21 $bf $6f
	ld   a, [$ca6f]                                  ; $6f85: $fa $6f $ca
	sla  a                                           ; $6f88: $cb $27
	ld   c, a                                        ; $6f8a: $4f
	ld   b, $00                                      ; $6f8b: $06 $00
	add  hl, bc                                      ; $6f8d: $09
	ld   c, [hl]                                     ; $6f8e: $4e
	inc  hl                                          ; $6f8f: $23
	ld   b, [hl]                                     ; $6f90: $46
	ld   h, b                                        ; $6f91: $60
	ld   l, c                                        ; $6f92: $69
	add  hl, de                                      ; $6f93: $19
	ld   de, $d6c0                                   ; $6f94: $11 $c0 $d6
	ld   b, $0c                                      ; $6f97: $06 $0c

jr_020_6f99:
	ld   a, $2a                                      ; $6f99: $3e $2a
	push bc                                          ; $6f9b: $c5
	ld   bc, $0004                                   ; $6f9c: $01 $04 $00
	call FarMemCopy                                       ; $6f9f: $cd $b2 $09
	pop  bc                                          ; $6fa2: $c1
	ld   a, l                                        ; $6fa3: $7d
	add  $1c                                         ; $6fa4: $c6 $1c
	ld   l, a                                        ; $6fa6: $6f
	ld   a, h                                        ; $6fa7: $7c
	adc  $00                                         ; $6fa8: $ce $00
	ld   h, a                                        ; $6faa: $67
	ld   a, e                                        ; $6fab: $7b
	add  $1c                                         ; $6fac: $c6 $1c
	ld   e, a                                        ; $6fae: $5f
	ld   a, d                                        ; $6faf: $7a
	adc  $00                                         ; $6fb0: $ce $00
	ld   d, a                                        ; $6fb2: $57
	dec  b                                           ; $6fb3: $05
	ld   a, b                                        ; $6fb4: $78
	and  a                                           ; $6fb5: $a7
	jr   nz, jr_020_6f99                             ; $6fb6: $20 $e1

	pop  af                                          ; $6fb8: $f1
	ld   [wWramBank], a                                  ; $6fb9: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $6fbc: $e0 $70
	ret                                              ; $6fbe: $c9


	inc  b                                           ; $6fbf: $04
	nop                                              ; $6fc0: $00
	nop                                              ; $6fc1: $00
	nop                                              ; $6fc2: $00
	inc  b                                           ; $6fc3: $04
	nop                                              ; $6fc4: $00
	ld   [$0c00], sp                                 ; $6fc5: $08 $00 $0c
	nop                                              ; $6fc8: $00
	stop                                             ; $6fc9: $10 $00
	inc  d                                           ; $6fcb: $14
	nop                                              ; $6fcc: $00

Call_020_6fcd:
	ld   a, [wWramBank]                                  ; $6fcd: $fa $93 $c2
	push af                                          ; $6fd0: $f5
	ld   a, $07                                      ; $6fd1: $3e $07
	ld   [wWramBank], a                                  ; $6fd3: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $6fd6: $e0 $70
	ld   hl, $4c00                                   ; $6fd8: $21 $00 $4c
	ld   d, h                                        ; $6fdb: $54
	ld   e, l                                        ; $6fdc: $5d
	ld   hl, $701a                                   ; $6fdd: $21 $1a $70
	ld   a, [$ca6f]                                  ; $6fe0: $fa $6f $ca
	sla  a                                           ; $6fe3: $cb $27
	ld   c, a                                        ; $6fe5: $4f
	ld   b, $00                                      ; $6fe6: $06 $00
	add  hl, bc                                      ; $6fe8: $09
	ld   c, [hl]                                     ; $6fe9: $4e
	inc  hl                                          ; $6fea: $23
	ld   b, [hl]                                     ; $6feb: $46
	ld   h, b                                        ; $6fec: $60
	ld   l, c                                        ; $6fed: $69
	add  hl, de                                      ; $6fee: $19
	ld   de, $d540                                   ; $6fef: $11 $40 $d5
	ld   b, $0c                                      ; $6ff2: $06 $0c

jr_020_6ff4:
	ld   a, $2a                                      ; $6ff4: $3e $2a
	push bc                                          ; $6ff6: $c5
	ld   bc, $0004                                   ; $6ff7: $01 $04 $00
	call FarMemCopy                                       ; $6ffa: $cd $b2 $09
	pop  bc                                          ; $6ffd: $c1
	ld   a, l                                        ; $6ffe: $7d
	add  $1c                                         ; $6fff: $c6 $1c
	ld   l, a                                        ; $7001: $6f
	ld   a, h                                        ; $7002: $7c
	adc  $00                                         ; $7003: $ce $00
	ld   h, a                                        ; $7005: $67
	ld   a, e                                        ; $7006: $7b
	add  $1c                                         ; $7007: $c6 $1c
	ld   e, a                                        ; $7009: $5f
	ld   a, d                                        ; $700a: $7a
	adc  $00                                         ; $700b: $ce $00
	ld   d, a                                        ; $700d: $57
	dec  b                                           ; $700e: $05
	ld   a, b                                        ; $700f: $78
	and  a                                           ; $7010: $a7
	jr   nz, jr_020_6ff4                             ; $7011: $20 $e1

	pop  af                                          ; $7013: $f1
	ld   [wWramBank], a                                  ; $7014: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $7017: $e0 $70
	ret                                              ; $7019: $c9


	inc  b                                           ; $701a: $04
	nop                                              ; $701b: $00
	nop                                              ; $701c: $00
	nop                                              ; $701d: $00
	inc  b                                           ; $701e: $04
	nop                                              ; $701f: $00
	ld   [$0c00], sp                                 ; $7020: $08 $00 $0c
	nop                                              ; $7023: $00
	stop                                             ; $7024: $10 $00
	inc  d                                           ; $7026: $14
	nop                                              ; $7027: $00

Call_020_7028:
	ld   a, [wWramBank]                                  ; $7028: $fa $93 $c2
	push af                                          ; $702b: $f5
	ld   a, $07                                      ; $702c: $3e $07
	ld   [wWramBank], a                                  ; $702e: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $7031: $e0 $70
	ld   hl, $4800                                   ; $7033: $21 $00 $48
	ld   d, h                                        ; $7036: $54
	ld   e, l                                        ; $7037: $5d
	ld   hl, $7075                                   ; $7038: $21 $75 $70
	ld   a, [$ca6f]                                  ; $703b: $fa $6f $ca
	sla  a                                           ; $703e: $cb $27
	ld   c, a                                        ; $7040: $4f
	ld   b, $00                                      ; $7041: $06 $00
	add  hl, bc                                      ; $7043: $09
	ld   c, [hl]                                     ; $7044: $4e
	inc  hl                                          ; $7045: $23
	ld   b, [hl]                                     ; $7046: $46
	ld   h, b                                        ; $7047: $60
	ld   l, c                                        ; $7048: $69
	add  hl, de                                      ; $7049: $19
	ld   de, $d6d0                                   ; $704a: $11 $d0 $d6
	ld   b, $0c                                      ; $704d: $06 $0c

jr_020_704f:
	ld   a, $2a                                      ; $704f: $3e $2a
	push bc                                          ; $7051: $c5
	ld   bc, $0004                                   ; $7052: $01 $04 $00
	call FarMemCopy                                       ; $7055: $cd $b2 $09
	pop  bc                                          ; $7058: $c1
	ld   a, l                                        ; $7059: $7d
	add  $1c                                         ; $705a: $c6 $1c
	ld   l, a                                        ; $705c: $6f
	ld   a, h                                        ; $705d: $7c
	adc  $00                                         ; $705e: $ce $00
	ld   h, a                                        ; $7060: $67
	ld   a, e                                        ; $7061: $7b
	add  $1c                                         ; $7062: $c6 $1c
	ld   e, a                                        ; $7064: $5f
	ld   a, d                                        ; $7065: $7a
	adc  $00                                         ; $7066: $ce $00
	ld   d, a                                        ; $7068: $57
	dec  b                                           ; $7069: $05
	ld   a, b                                        ; $706a: $78
	and  a                                           ; $706b: $a7
	jr   nz, jr_020_704f                             ; $706c: $20 $e1

	pop  af                                          ; $706e: $f1
	ld   [wWramBank], a                                  ; $706f: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $7072: $e0 $70
	ret                                              ; $7074: $c9


	add  h                                           ; $7075: $84
	ld   bc, $0180                                   ; $7076: $01 $80 $01
	add  h                                           ; $7079: $84
	ld   bc, $0188                                   ; $707a: $01 $88 $01
	adc  h                                           ; $707d: $8c
	ld   bc, $0190                                   ; $707e: $01 $90 $01
	sub  h                                           ; $7081: $94
	ld   bc, $93fa                                   ; $7082: $01 $fa $93
	jp   nz, $3ef5                                   ; $7085: $c2 $f5 $3e

	rlca                                             ; $7088: $07
	ld   [wWramBank], a                                  ; $7089: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $708c: $e0 $70
	ld   hl, $4c00                                   ; $708e: $21 $00 $4c
	ld   d, h                                        ; $7091: $54
	ld   e, l                                        ; $7092: $5d
	ld   hl, $70d0                                   ; $7093: $21 $d0 $70
	ld   a, [$ca6f]                                  ; $7096: $fa $6f $ca
	sla  a                                           ; $7099: $cb $27
	ld   c, a                                        ; $709b: $4f
	ld   b, $00                                      ; $709c: $06 $00
	add  hl, bc                                      ; $709e: $09
	ld   c, [hl]                                     ; $709f: $4e
	inc  hl                                          ; $70a0: $23
	ld   b, [hl]                                     ; $70a1: $46
	ld   h, b                                        ; $70a2: $60
	ld   l, c                                        ; $70a3: $69
	add  hl, de                                      ; $70a4: $19
	ld   de, $d550                                   ; $70a5: $11 $50 $d5
	ld   b, $0c                                      ; $70a8: $06 $0c

jr_020_70aa:
	ld   a, $2a                                      ; $70aa: $3e $2a
	push bc                                          ; $70ac: $c5
	ld   bc, $0004                                   ; $70ad: $01 $04 $00
	call FarMemCopy                                       ; $70b0: $cd $b2 $09
	pop  bc                                          ; $70b3: $c1
	ld   a, l                                        ; $70b4: $7d
	add  $1c                                         ; $70b5: $c6 $1c
	ld   l, a                                        ; $70b7: $6f
	ld   a, h                                        ; $70b8: $7c
	adc  $00                                         ; $70b9: $ce $00
	ld   h, a                                        ; $70bb: $67
	ld   a, e                                        ; $70bc: $7b
	add  $1c                                         ; $70bd: $c6 $1c
	ld   e, a                                        ; $70bf: $5f
	ld   a, d                                        ; $70c0: $7a
	adc  $00                                         ; $70c1: $ce $00
	ld   d, a                                        ; $70c3: $57
	dec  b                                           ; $70c4: $05
	ld   a, b                                        ; $70c5: $78
	and  a                                           ; $70c6: $a7
	jr   nz, jr_020_70aa                             ; $70c7: $20 $e1

	pop  af                                          ; $70c9: $f1
	ld   [wWramBank], a                                  ; $70ca: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $70cd: $e0 $70
	ret                                              ; $70cf: $c9


	add  h                                           ; $70d0: $84
	ld   bc, $0180                                   ; $70d1: $01 $80 $01
	add  h                                           ; $70d4: $84
	ld   bc, $0188                                   ; $70d5: $01 $88 $01
	adc  h                                           ; $70d8: $8c
	ld   bc, $0190                                   ; $70d9: $01 $90 $01
	sub  h                                           ; $70dc: $94
	ld   bc, $93fa                                   ; $70dd: $01 $fa $93
	jp   nz, $3ef5                                   ; $70e0: $c2 $f5 $3e

	rlca                                             ; $70e3: $07
	ld   [wWramBank], a                                  ; $70e4: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $70e7: $e0 $70
	ld   hl, $4800                                   ; $70e9: $21 $00 $48
	ld   d, h                                        ; $70ec: $54
	ld   e, l                                        ; $70ed: $5d
	ld   hl, $7137                                   ; $70ee: $21 $37 $71
	ld   a, [$cac3]                                  ; $70f1: $fa $c3 $ca
	cp   $ff                                         ; $70f4: $fe $ff
	jr   nz, jr_020_7108                             ; $70f6: $20 $10

	ld   a, [$ca6e]                                  ; $70f8: $fa $6e $ca
	sla  a                                           ; $70fb: $cb $27
	ld   c, a                                        ; $70fd: $4f
	ld   b, $00                                      ; $70fe: $06 $00
	add  hl, bc                                      ; $7100: $09
	ld   c, [hl]                                     ; $7101: $4e
	inc  hl                                          ; $7102: $23
	ld   b, [hl]                                     ; $7103: $46
	ld   h, b                                        ; $7104: $60
	ld   l, c                                        ; $7105: $69
	jr   jr_020_710b                                 ; $7106: $18 $03

jr_020_7108:
	ld   hl, $0018                                   ; $7108: $21 $18 $00

jr_020_710b:
	add  hl, de                                      ; $710b: $19
	ld   de, $d6c7                                   ; $710c: $11 $c7 $d6
	ld   b, $03                                      ; $710f: $06 $03

jr_020_7111:
	ld   a, $2a                                      ; $7111: $3e $2a
	push bc                                          ; $7113: $c5
	ld   bc, $0006                                   ; $7114: $01 $06 $00
	call FarMemCopy                                       ; $7117: $cd $b2 $09
	pop  bc                                          ; $711a: $c1
	ld   a, l                                        ; $711b: $7d
	add  $1a                                         ; $711c: $c6 $1a
	ld   l, a                                        ; $711e: $6f
	ld   a, h                                        ; $711f: $7c
	adc  $00                                         ; $7120: $ce $00
	ld   h, a                                        ; $7122: $67
	ld   a, e                                        ; $7123: $7b
	add  $1a                                         ; $7124: $c6 $1a
	ld   e, a                                        ; $7126: $5f
	ld   a, d                                        ; $7127: $7a
	adc  $00                                         ; $7128: $ce $00
	ld   d, a                                        ; $712a: $57
	dec  b                                           ; $712b: $05
	ld   a, b                                        ; $712c: $78
	and  a                                           ; $712d: $a7
	jr   nz, jr_020_7111                             ; $712e: $20 $e1

	pop  af                                          ; $7130: $f1
	ld   [wWramBank], a                                  ; $7131: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $7134: $e0 $70
	ret                                              ; $7136: $c9


	jr   jr_020_7139                                 ; $7137: $18 $00

jr_020_7139:
	jr   jr_020_713b                                 ; $7139: $18 $00

jr_020_713b:
	ld   a, b                                        ; $713b: $78
	nop                                              ; $713c: $00
	ld   a, b                                        ; $713d: $78
	nop                                              ; $713e: $00
	ret  c                                           ; $713f: $d8

	nop                                              ; $7140: $00
	ret  c                                           ; $7141: $d8

	nop                                              ; $7142: $00

Call_020_7143:
	ld   a, [wWramBank]                                  ; $7143: $fa $93 $c2
	push af                                          ; $7146: $f5
	ld   a, $07                                      ; $7147: $3e $07
	ld   [wWramBank], a                                  ; $7149: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $714c: $e0 $70
	ld   hl, $4c00                                   ; $714e: $21 $00 $4c
	ld   d, h                                        ; $7151: $54
	ld   e, l                                        ; $7152: $5d
	ld   hl, $719d                                   ; $7153: $21 $9d $71
	ld   a, [$cac3]                                  ; $7156: $fa $c3 $ca
	cp   $ff                                         ; $7159: $fe $ff
	jr   nz, jr_020_716d                             ; $715b: $20 $10

	ld   a, [$ca6e]                                  ; $715d: $fa $6e $ca
	sla  a                                           ; $7160: $cb $27
	ld   c, a                                        ; $7162: $4f
	ld   b, $00                                      ; $7163: $06 $00
	add  hl, bc                                      ; $7165: $09
	ld   c, [hl]                                     ; $7166: $4e
	inc  hl                                          ; $7167: $23
	ld   b, [hl]                                     ; $7168: $46
	ld   h, b                                        ; $7169: $60
	ld   l, c                                        ; $716a: $69
	jr   jr_020_7170                                 ; $716b: $18 $03

jr_020_716d:
	ld   hl, $0018                                   ; $716d: $21 $18 $00

jr_020_7170:
	add  hl, de                                      ; $7170: $19
	ld   de, $d547                                   ; $7171: $11 $47 $d5
	ld   b, $03                                      ; $7174: $06 $03

jr_020_7176:
	ld   a, $2a                                      ; $7176: $3e $2a
	push bc                                          ; $7178: $c5
	ld   bc, $0006                                   ; $7179: $01 $06 $00
	call FarMemCopy                                       ; $717c: $cd $b2 $09
	pop  bc                                          ; $717f: $c1
	xor  a                                           ; $7180: $af
	ld   a, l                                        ; $7181: $7d
	add  $1a                                         ; $7182: $c6 $1a
	ld   l, a                                        ; $7184: $6f
	ld   a, h                                        ; $7185: $7c
	adc  $00                                         ; $7186: $ce $00
	ld   h, a                                        ; $7188: $67
	ld   a, e                                        ; $7189: $7b
	add  $1a                                         ; $718a: $c6 $1a
	ld   e, a                                        ; $718c: $5f
	ld   a, d                                        ; $718d: $7a
	adc  $00                                         ; $718e: $ce $00
	ld   d, a                                        ; $7190: $57
	dec  b                                           ; $7191: $05
	ld   a, b                                        ; $7192: $78
	and  a                                           ; $7193: $a7
	jr   nz, jr_020_7176                             ; $7194: $20 $e0

	pop  af                                          ; $7196: $f1
	ld   [wWramBank], a                                  ; $7197: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $719a: $e0 $70
	ret                                              ; $719c: $c9


	jr   jr_020_719f                                 ; $719d: $18 $00

jr_020_719f:
	jr   jr_020_71a1                                 ; $719f: $18 $00

jr_020_71a1:
	ld   a, b                                        ; $71a1: $78
	nop                                              ; $71a2: $00
	ld   a, b                                        ; $71a3: $78
	nop                                              ; $71a4: $00
	ret  c                                           ; $71a5: $d8

	nop                                              ; $71a6: $00
	ret  c                                           ; $71a7: $d8

	nop                                              ; $71a8: $00

Call_020_71a9:
	ld   b, a                                        ; $71a9: $47
	sla  a                                           ; $71aa: $cb $27
	add  b                                           ; $71ac: $80
	ld   c, a                                        ; $71ad: $4f
	ld   b, $00                                      ; $71ae: $06 $00
	ld   a, [wWramBank]                                  ; $71b0: $fa $93 $c2
	push af                                          ; $71b3: $f5
	ld   a, $07                                      ; $71b4: $3e $07
	ld   [wWramBank], a                                  ; $71b6: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $71b9: $e0 $70
	ld   de, $d6c0                                   ; $71bb: $11 $c0 $d6
	ld   hl, $71d6                                   ; $71be: $21 $d6 $71
	add  hl, bc                                      ; $71c1: $09
	ld   c, [hl]                                     ; $71c2: $4e
	inc  hl                                          ; $71c3: $23
	ld   b, [hl]                                     ; $71c4: $46
	inc  hl                                          ; $71c5: $23
	ld   a, [hl]                                     ; $71c6: $7e
	ld   h, b                                        ; $71c7: $60
	ld   l, c                                        ; $71c8: $69
	ld   bc, $0180                                   ; $71c9: $01 $80 $01
	call FarMemCopy                                       ; $71cc: $cd $b2 $09
	pop  af                                          ; $71cf: $f1
	ld   [wWramBank], a                                  ; $71d0: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $71d3: $e0 $70
	ret                                              ; $71d5: $c9


	nop                                              ; $71d6: $00
	ld   [hl], b                                     ; $71d7: $70
	add  hl, hl                                      ; $71d8: $29
	nop                                              ; $71d9: $00
	ld   [hl], b                                     ; $71da: $70
	add  hl, hl                                      ; $71db: $29
	add  b                                           ; $71dc: $80
	ld   [hl], c                                     ; $71dd: $71
	add  hl, hl                                      ; $71de: $29
	add  b                                           ; $71df: $80
	ld   [hl], c                                     ; $71e0: $71
	add  hl, hl                                      ; $71e1: $29
	nop                                              ; $71e2: $00
	ld   a, b                                        ; $71e3: $78
	add  hl, hl                                      ; $71e4: $29
	nop                                              ; $71e5: $00
	ld   a, b                                        ; $71e6: $78
	add  hl, hl                                      ; $71e7: $29

Call_020_71e8:
	ld   b, a                                        ; $71e8: $47
	sla  a                                           ; $71e9: $cb $27
	add  b                                           ; $71eb: $80
	ld   c, a                                        ; $71ec: $4f
	ld   b, $00                                      ; $71ed: $06 $00
	ld   a, [wWramBank]                                  ; $71ef: $fa $93 $c2
	push af                                          ; $71f2: $f5
	ld   a, $07                                      ; $71f3: $3e $07
	ld   [wWramBank], a                                  ; $71f5: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $71f8: $e0 $70
	ld   de, $d540                                   ; $71fa: $11 $40 $d5
	ld   hl, $7215                                   ; $71fd: $21 $15 $72
	add  hl, bc                                      ; $7200: $09
	ld   c, [hl]                                     ; $7201: $4e
	inc  hl                                          ; $7202: $23
	ld   b, [hl]                                     ; $7203: $46
	inc  hl                                          ; $7204: $23
	ld   a, [hl]                                     ; $7205: $7e
	ld   h, b                                        ; $7206: $60
	ld   l, c                                        ; $7207: $69
	ld   bc, $0180                                   ; $7208: $01 $80 $01
	call FarMemCopy                                       ; $720b: $cd $b2 $09
	pop  af                                          ; $720e: $f1
	ld   [wWramBank], a                                  ; $720f: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $7212: $e0 $70
	ret                                              ; $7214: $c9


	nop                                              ; $7215: $00
	ld   [hl], h                                     ; $7216: $74
	add  hl, hl                                      ; $7217: $29
	nop                                              ; $7218: $00
	ld   [hl], h                                     ; $7219: $74
	add  hl, hl                                      ; $721a: $29
	add  b                                           ; $721b: $80
	ld   [hl], l                                     ; $721c: $75
	add  hl, hl                                      ; $721d: $29
	add  b                                           ; $721e: $80
	ld   [hl], l                                     ; $721f: $75
	add  hl, hl                                      ; $7220: $29
	nop                                              ; $7221: $00
	ld   a, h                                        ; $7222: $7c
	add  hl, hl                                      ; $7223: $29
	nop                                              ; $7224: $00
	ld   a, h                                        ; $7225: $7c
	add  hl, hl                                      ; $7226: $29

Call_020_7227:
	ld   a, [$cad1]                                  ; $7227: $fa $d1 $ca
	and  a                                           ; $722a: $a7
	jr   z, jr_020_7243                              ; $722b: $28 $16

	ld   a, [$ca73]                                  ; $722d: $fa $73 $ca
	ld   b, $00                                      ; $7230: $06 $00
	ld   c, a                                        ; $7232: $4f
	ld   hl, $cad3                                   ; $7233: $21 $d3 $ca
	add  hl, bc                                      ; $7236: $09
	ld   a, [hl]                                     ; $7237: $7e
	sla  a                                           ; $7238: $cb $27
	ld   b, $00                                      ; $723a: $06 $00
	ld   c, a                                        ; $723c: $4f
	ld   hl, $5ffc                                   ; $723d: $21 $fc $5f
	add  hl, bc                                      ; $7240: $09
	jr   jr_020_7257                                 ; $7241: $18 $14

jr_020_7243:
	ld   a, [$ca73]                                  ; $7243: $fa $73 $ca
	ld   b, $00                                      ; $7246: $06 $00
	ld   c, a                                        ; $7248: $4f
	ld   hl, $cad3                                   ; $7249: $21 $d3 $ca
	add  hl, bc                                      ; $724c: $09
	ld   a, [hl]                                     ; $724d: $7e
	sla  a                                           ; $724e: $cb $27
	ld   b, $00                                      ; $7250: $06 $00
	ld   c, a                                        ; $7252: $4f
	ld   hl, $5ffc                                   ; $7253: $21 $fc $5f
	add  hl, bc                                      ; $7256: $09

jr_020_7257:
	ld   a, [hl+]                                    ; $7257: $2a
	ld   h, [hl]                                     ; $7258: $66
	ld   l, a                                        ; $7259: $6f
	ld   a, [hl+]                                    ; $725a: $2a
	ld   [$ca74], a                                  ; $725b: $ea $74 $ca
	ld   a, [hl+]                                    ; $725e: $2a
	ld   [$ca75], a                                  ; $725f: $ea $75 $ca
	ld   a, [hl+]                                    ; $7262: $2a
	ld   [$ca76], a                                  ; $7263: $ea $76 $ca
	ld   a, [hl+]                                    ; $7266: $2a
	ld   [$caaf], a                                  ; $7267: $ea $af $ca
	push hl                                          ; $726a: $e5
	ld   hl, $ca7b                                   ; $726b: $21 $7b $ca
	ld   d, h                                        ; $726e: $54
	ld   e, l                                        ; $726f: $5d
	pop  hl                                          ; $7270: $e1
	ld   c, $09                                      ; $7271: $0e $09

jr_020_7273:
	ld   a, [hl+]                                    ; $7273: $2a
	ld   [de], a                                     ; $7274: $12
	inc  de                                          ; $7275: $13
	ld   a, [hl+]                                    ; $7276: $2a
	ld   [de], a                                     ; $7277: $12
	inc  de                                          ; $7278: $13
	ld   a, [hl]                                     ; $7279: $7e
	and  $f0                                         ; $727a: $e6 $f0
	jr   z, jr_020_7288                              ; $727c: $28 $0a

	call Call_020_72a8                               ; $727e: $cd $a8 $72
	ld   a, [$cac4]                                  ; $7281: $fa $c4 $ca
	inc  a                                           ; $7284: $3c
	ld   [$cac4], a                                  ; $7285: $ea $c4 $ca

jr_020_7288:
	ld   a, [hl+]                                    ; $7288: $2a
	ld   [de], a                                     ; $7289: $12
	inc  de                                          ; $728a: $13
	dec  c                                           ; $728b: $0d
	ld   a, [hl]                                     ; $728c: $7e
	cp   $ff                                         ; $728d: $fe $ff
	jr   nz, jr_020_7273                             ; $728f: $20 $e2

	ld   a, c                                        ; $7291: $79
	and  a                                           ; $7292: $a7
	jr   z, jr_020_72a3                              ; $7293: $28 $0e

jr_020_7295:
	ld   a, $ff                                      ; $7295: $3e $ff
	ld   [de], a                                     ; $7297: $12
	inc  de                                          ; $7298: $13
	ld   [de], a                                     ; $7299: $12
	inc  de                                          ; $729a: $13
	ld   [de], a                                     ; $729b: $12
	inc  de                                          ; $729c: $13
	dec  c                                           ; $729d: $0d
	ld   a, c                                        ; $729e: $79
	cp   $00                                         ; $729f: $fe $00
	jr   nz, jr_020_7295                             ; $72a1: $20 $f2

jr_020_72a3:
	ld   hl, $ca73                                   ; $72a3: $21 $73 $ca
	inc  [hl]                                        ; $72a6: $34
	ret                                              ; $72a7: $c9


Call_020_72a8:
	push hl                                          ; $72a8: $e5
	push de                                          ; $72a9: $d5
	push bc                                          ; $72aa: $c5
	dec  hl                                          ; $72ab: $2b
	dec  hl                                          ; $72ac: $2b
	ld   a, [hl+]                                    ; $72ad: $2a
	ld   b, a                                        ; $72ae: $47
	ld   a, [hl+]                                    ; $72af: $2a
	ld   c, a                                        ; $72b0: $4f
	push hl                                          ; $72b1: $e5
	ld   a, [$cac4]                                  ; $72b2: $fa $c4 $ca
	ld   d, $00                                      ; $72b5: $16 $00
	ld   e, a                                        ; $72b7: $5f
	ld   hl, $caa3                                   ; $72b8: $21 $a3 $ca
	add  hl, de                                      ; $72bb: $19
	ld   a, b                                        ; $72bc: $78
	ld   [hl], a                                     ; $72bd: $77
	ld   hl, $caa7                                   ; $72be: $21 $a7 $ca
	add  hl, de                                      ; $72c1: $19
	ld   a, c                                        ; $72c2: $79
	ld   [hl], a                                     ; $72c3: $77
	pop  hl                                          ; $72c4: $e1
	ld   a, [hl]                                     ; $72c5: $7e
	and  $0f                                         ; $72c6: $e6 $0f
	push af                                          ; $72c8: $f5
	ld   a, [$cac4]                                  ; $72c9: $fa $c4 $ca
	ld   d, $00                                      ; $72cc: $16 $00
	ld   e, a                                        ; $72ce: $5f
	ld   hl, $caab                                   ; $72cf: $21 $ab $ca
	add  hl, de                                      ; $72d2: $19
	pop  af                                          ; $72d3: $f1
	ld   [hl], a                                     ; $72d4: $77
	ld   hl, $cac6                                   ; $72d5: $21 $c6 $ca
	inc  [hl]                                        ; $72d8: $34
	ld   a, [$cac4]                                  ; $72d9: $fa $c4 $ca
	ld   d, $00                                      ; $72dc: $16 $00
	ld   e, a                                        ; $72de: $5f
	ld   hl, $ca9f                                   ; $72df: $21 $9f $ca
	add  hl, de                                      ; $72e2: $19
	ld   a, [$cac4]                                  ; $72e3: $fa $c4 $ca
	ld   [hl], a                                     ; $72e6: $77
	pop  bc                                          ; $72e7: $c1
	pop  de                                          ; $72e8: $d1
	pop  hl                                          ; $72e9: $e1
	ret                                              ; $72ea: $c9


Call_020_72eb:
	ld   a, [wWramBank]                                  ; $72eb: $fa $93 $c2
	push af                                          ; $72ee: $f5
	ld   a, $07                                      ; $72ef: $3e $07
	ld   [wWramBank], a                                  ; $72f1: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $72f4: $e0 $70
	ld   de, $d900                                   ; $72f6: $11 $00 $d9
	ld   a, $2a                                      ; $72f9: $3e $2a
	ld   hl, $4000                                   ; $72fb: $21 $00 $40
	ld   bc, $00c0                                   ; $72fe: $01 $c0 $00
	call FarMemCopy                                       ; $7301: $cd $b2 $09
	ld   de, $0000                                   ; $7304: $11 $00 $00

jr_020_7307:
	push bc                                          ; $7307: $c5
	push de                                          ; $7308: $d5
	call Call_020_731c                               ; $7309: $cd $1c $73
	pop  de                                          ; $730c: $d1
	pop  bc                                          ; $730d: $c1
	inc  de                                          ; $730e: $13
	inc  c                                           ; $730f: $0c
	ld   a, e                                        ; $7310: $7b
	cp   $03                                         ; $7311: $fe $03
	jr   nz, jr_020_7307                             ; $7313: $20 $f2

	pop  af                                          ; $7315: $f1
	ld   [wWramBank], a                                  ; $7316: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $7319: $e0 $70
	ret                                              ; $731b: $c9


Call_020_731c:
	ld   a, c                                        ; $731c: $79
	ld   [$ca42], a                                  ; $731d: $ea $42 $ca
	ld   hl, $ca74                                   ; $7320: $21 $74 $ca
	add  hl, de                                      ; $7323: $19
	ld   a, [hl]                                     ; $7324: $7e
	and  $f0                                         ; $7325: $e6 $f0
	ret  nz                                          ; $7327: $c0

	ld   a, [hl]                                     ; $7328: $7e
	ld   hl, $40e0                                   ; $7329: $21 $e0 $40
	ld   d, h                                        ; $732c: $54
	ld   e, l                                        ; $732d: $5d
	ld   hl, $7373                                   ; $732e: $21 $73 $73
	sla  a                                           ; $7331: $cb $27
	ld   c, a                                        ; $7333: $4f
	ld   b, $00                                      ; $7334: $06 $00
	add  hl, bc                                      ; $7336: $09
	ld   c, [hl]                                     ; $7337: $4e
	inc  hl                                          ; $7338: $23
	ld   b, [hl]                                     ; $7339: $46
	ld   h, b                                        ; $733a: $60
	ld   l, c                                        ; $733b: $69
	add  hl, de                                      ; $733c: $19
	ld   de, $d927                                   ; $733d: $11 $27 $d9
	ld   a, [$ca42]                                  ; $7340: $fa $42 $ca
	sla  a                                           ; $7343: $cb $27
	sla  a                                           ; $7345: $cb $27
	ld   b, $00                                      ; $7347: $06 $00
	ld   c, a                                        ; $7349: $4f
	push hl                                          ; $734a: $e5
	ld   h, d                                        ; $734b: $62
	ld   l, e                                        ; $734c: $6b
	add  hl, bc                                      ; $734d: $09
	ld   d, h                                        ; $734e: $54
	ld   e, l                                        ; $734f: $5d
	pop  hl                                          ; $7350: $e1
	ld   b, $04                                      ; $7351: $06 $04

jr_020_7353:
	ld   a, $2a                                      ; $7353: $3e $2a
	push bc                                          ; $7355: $c5
	ld   bc, $0004                                   ; $7356: $01 $04 $00
	call FarMemCopy                                       ; $7359: $cd $b2 $09
	pop  bc                                          ; $735c: $c1
	ld   a, l                                        ; $735d: $7d
	add  $1c                                         ; $735e: $c6 $1c
	ld   l, a                                        ; $7360: $6f
	ld   a, h                                        ; $7361: $7c
	adc  $00                                         ; $7362: $ce $00
	ld   h, a                                        ; $7364: $67
	ld   a, e                                        ; $7365: $7b
	add  $1c                                         ; $7366: $c6 $1c
	ld   e, a                                        ; $7368: $5f
	ld   a, d                                        ; $7369: $7a
	adc  $00                                         ; $736a: $ce $00
	ld   d, a                                        ; $736c: $57
	dec  b                                           ; $736d: $05
	ld   a, b                                        ; $736e: $78
	and  a                                           ; $736f: $a7
	jr   nz, jr_020_7353                             ; $7370: $20 $e1

	ret                                              ; $7372: $c9


	ld   [$0400], sp                                 ; $7373: $08 $00 $04
	nop                                              ; $7376: $00
	nop                                              ; $7377: $00
	nop                                              ; $7378: $00

Call_020_7379:
	ld   a, [wWramBank]                                  ; $7379: $fa $93 $c2
	push af                                          ; $737c: $f5
	ld   a, $07                                      ; $737d: $3e $07
	ld   [wWramBank], a                                  ; $737f: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $7382: $e0 $70
	ld   de, $d840                                   ; $7384: $11 $40 $d8
	ld   a, $2a                                      ; $7387: $3e $2a
	ld   hl, $4400                                   ; $7389: $21 $00 $44
	ld   bc, $00c0                                   ; $738c: $01 $c0 $00
	call FarMemCopy                                       ; $738f: $cd $b2 $09
	ld   de, $0000                                   ; $7392: $11 $00 $00

jr_020_7395:
	push bc                                          ; $7395: $c5
	push de                                          ; $7396: $d5
	call Call_020_73aa                               ; $7397: $cd $aa $73
	pop  de                                          ; $739a: $d1
	pop  bc                                          ; $739b: $c1
	inc  de                                          ; $739c: $13
	inc  c                                           ; $739d: $0c
	ld   a, e                                        ; $739e: $7b
	cp   $03                                         ; $739f: $fe $03
	jr   nz, jr_020_7395                             ; $73a1: $20 $f2

	pop  af                                          ; $73a3: $f1
	ld   [wWramBank], a                                  ; $73a4: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $73a7: $e0 $70
	ret                                              ; $73a9: $c9


Call_020_73aa:
	ld   a, c                                        ; $73aa: $79
	ld   [$ca42], a                                  ; $73ab: $ea $42 $ca
	ld   hl, $ca74                                   ; $73ae: $21 $74 $ca
	add  hl, de                                      ; $73b1: $19
	ld   a, [hl]                                     ; $73b2: $7e
	and  $f0                                         ; $73b3: $e6 $f0
	ret  nz                                          ; $73b5: $c0

	ld   a, [hl]                                     ; $73b6: $7e
	ld   hl, $44e0                                   ; $73b7: $21 $e0 $44
	ld   d, h                                        ; $73ba: $54
	ld   e, l                                        ; $73bb: $5d
	ld   hl, $7401                                   ; $73bc: $21 $01 $74
	sla  a                                           ; $73bf: $cb $27
	ld   c, a                                        ; $73c1: $4f
	ld   b, $00                                      ; $73c2: $06 $00
	add  hl, bc                                      ; $73c4: $09
	ld   c, [hl]                                     ; $73c5: $4e
	inc  hl                                          ; $73c6: $23
	ld   b, [hl]                                     ; $73c7: $46
	ld   h, b                                        ; $73c8: $60
	ld   l, c                                        ; $73c9: $69
	add  hl, de                                      ; $73ca: $19
	ld   de, $d867                                   ; $73cb: $11 $67 $d8
	ld   a, [$ca42]                                  ; $73ce: $fa $42 $ca
	sla  a                                           ; $73d1: $cb $27
	sla  a                                           ; $73d3: $cb $27
	ld   b, $00                                      ; $73d5: $06 $00
	ld   c, a                                        ; $73d7: $4f
	push hl                                          ; $73d8: $e5
	ld   h, d                                        ; $73d9: $62
	ld   l, e                                        ; $73da: $6b
	add  hl, bc                                      ; $73db: $09
	ld   d, h                                        ; $73dc: $54
	ld   e, l                                        ; $73dd: $5d
	pop  hl                                          ; $73de: $e1
	ld   b, $04                                      ; $73df: $06 $04

jr_020_73e1:
	ld   a, $2a                                      ; $73e1: $3e $2a
	push bc                                          ; $73e3: $c5
	ld   bc, $0004                                   ; $73e4: $01 $04 $00
	call FarMemCopy                                       ; $73e7: $cd $b2 $09
	pop  bc                                          ; $73ea: $c1
	ld   a, l                                        ; $73eb: $7d
	add  $1c                                         ; $73ec: $c6 $1c
	ld   l, a                                        ; $73ee: $6f
	ld   a, h                                        ; $73ef: $7c
	adc  $00                                         ; $73f0: $ce $00
	ld   h, a                                        ; $73f2: $67
	ld   a, e                                        ; $73f3: $7b
	add  $1c                                         ; $73f4: $c6 $1c
	ld   e, a                                        ; $73f6: $5f
	ld   a, d                                        ; $73f7: $7a
	adc  $00                                         ; $73f8: $ce $00
	ld   d, a                                        ; $73fa: $57
	dec  b                                           ; $73fb: $05
	ld   a, b                                        ; $73fc: $78
	and  a                                           ; $73fd: $a7
	jr   nz, jr_020_73e1                             ; $73fe: $20 $e1

	ret                                              ; $7400: $c9


	ld   [$0400], sp                                 ; $7401: $08 $00 $04
	nop                                              ; $7404: $00
	nop                                              ; $7405: $00
	nop                                              ; $7406: $00

Call_020_7407:
	ld   hl, $ca7b                                   ; $7407: $21 $7b $ca
	ld   a, [$caaf]                                  ; $740a: $fa $af $ca
	ld   d, a                                        ; $740d: $57

jr_020_740e:
	push de                                          ; $740e: $d5
	ld   a, [hl+]                                    ; $740f: $2a
	ld   b, a                                        ; $7410: $47
	ld   a, [hl+]                                    ; $7411: $2a
	ld   c, a                                        ; $7412: $4f
	ld   a, [hl]                                     ; $7413: $7e
	and  $f0                                         ; $7414: $e6 $f0
	jr   nz, jr_020_7441                             ; $7416: $20 $29

	ld   d, b                                        ; $7418: $50
	ld   e, c                                        ; $7419: $59
	ld   a, [$cab1]                                  ; $741a: $fa $b1 $ca
	and  a                                           ; $741d: $a7
	jr   z, jr_020_7427                              ; $741e: $28 $07

	push bc                                          ; $7420: $c5
	call Call_020_6c89                               ; $7421: $cd $89 $6c
	pop  bc                                          ; $7424: $c1
	jr   c, jr_020_7435                              ; $7425: $38 $0e

jr_020_7427:
	push hl                                          ; $7427: $e5
	ld   a, $03                                      ; $7428: $3e $03
	ld   [wSpriteGroup], a                                  ; $742a: $ea $1a $c2
	ld   a, $8b                                      ; $742d: $3e $8b
	call LoadSpriteFromMainTable                                       ; $742f: $cd $16 $0e
	pop  hl                                          ; $7432: $e1
	jr   jr_020_7441                                 ; $7433: $18 $0c

jr_020_7435:
	push hl                                          ; $7435: $e5
	ld   a, $03                                      ; $7436: $3e $03
	ld   [wSpriteGroup], a                                  ; $7438: $ea $1a $c2
	ld   a, $8c                                      ; $743b: $3e $8c
	call LoadSpriteFromMainTable                                       ; $743d: $cd $16 $0e
	pop  hl                                          ; $7440: $e1

jr_020_7441:
	inc  hl                                          ; $7441: $23
	pop  de                                          ; $7442: $d1
	dec  d                                           ; $7443: $15
	ld   a, d                                        ; $7444: $7a
	cp   $00                                         ; $7445: $fe $00
	jr   nz, jr_020_740e                             ; $7447: $20 $c5

	ret                                              ; $7449: $c9


Call_020_744a:
	ld   a, [wWramBank]                                  ; $744a: $fa $93 $c2
	push af                                          ; $744d: $f5
	ld   a, $07                                      ; $744e: $3e $07
	ld   [wWramBank], a                                  ; $7450: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $7453: $e0 $70
	ld   hl, $ca74                                   ; $7455: $21 $74 $ca
	ld   a, [$ca77]                                  ; $7458: $fa $77 $ca
	ld   c, a                                        ; $745b: $4f
	ld   b, $00                                      ; $745c: $06 $00
	add  hl, bc                                      ; $745e: $09
	ld   a, [hl]                                     ; $745f: $7e
	and  $f0                                         ; $7460: $e6 $f0
	jr   nz, jr_020_7467                             ; $7462: $20 $03

	ld   a, [hl]                                     ; $7464: $7e
	jr   jr_020_7469                                 ; $7465: $18 $02

jr_020_7467:
	ld   a, $03                                      ; $7467: $3e $03

jr_020_7469:
	ld   hl, $4580                                   ; $7469: $21 $80 $45
	ld   d, h                                        ; $746c: $54
	ld   e, l                                        ; $746d: $5d
	ld   hl, $74bf                                   ; $746e: $21 $bf $74
	sla  a                                           ; $7471: $cb $27
	ld   c, a                                        ; $7473: $4f
	ld   b, $00                                      ; $7474: $06 $00
	add  hl, bc                                      ; $7476: $09
	ld   c, [hl]                                     ; $7477: $4e
	inc  hl                                          ; $7478: $23
	ld   b, [hl]                                     ; $7479: $46
	ld   h, b                                        ; $747a: $60
	ld   l, c                                        ; $747b: $69
	add  hl, de                                      ; $747c: $19
	ld   de, $d867                                   ; $747d: $11 $67 $d8
	ld   a, [$ca78]                                  ; $7480: $fa $78 $ca
	sla  a                                           ; $7483: $cb $27
	sla  a                                           ; $7485: $cb $27
	ld   b, $00                                      ; $7487: $06 $00
	ld   c, a                                        ; $7489: $4f
	push hl                                          ; $748a: $e5
	ld   h, d                                        ; $748b: $62
	ld   l, e                                        ; $748c: $6b
	add  hl, bc                                      ; $748d: $09
	ld   d, h                                        ; $748e: $54
	ld   e, l                                        ; $748f: $5d
	pop  hl                                          ; $7490: $e1
	ld   b, $04                                      ; $7491: $06 $04

jr_020_7493:
	ld   a, $2a                                      ; $7493: $3e $2a
	push bc                                          ; $7495: $c5
	ld   bc, $0004                                   ; $7496: $01 $04 $00
	call FarMemCopy                                       ; $7499: $cd $b2 $09
	pop  bc                                          ; $749c: $c1
	ld   a, l                                        ; $749d: $7d
	add  $1c                                         ; $749e: $c6 $1c
	ld   l, a                                        ; $74a0: $6f
	ld   a, h                                        ; $74a1: $7c
	adc  $00                                         ; $74a2: $ce $00
	ld   h, a                                        ; $74a4: $67
	ld   a, e                                        ; $74a5: $7b
	add  $1c                                         ; $74a6: $c6 $1c
	ld   e, a                                        ; $74a8: $5f
	ld   a, d                                        ; $74a9: $7a
	adc  $00                                         ; $74aa: $ce $00
	ld   d, a                                        ; $74ac: $57
	dec  b                                           ; $74ad: $05
	ld   a, b                                        ; $74ae: $78
	and  a                                           ; $74af: $a7
	jr   nz, jr_020_7493                             ; $74b0: $20 $e1

	pop  af                                          ; $74b2: $f1
	ld   [wWramBank], a                                  ; $74b3: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $74b6: $e0 $70
	ret                                              ; $74b8: $c9


	xor  $f2                                         ; $74b9: $ee $f2
	ld   [FarPopulateKanjiConvoStructForCurrTextBox], sp                                 ; $74bb: $08 $0c $10
	inc  d                                           ; $74be: $14
	ld   [$0400], sp                                 ; $74bf: $08 $00 $04
	nop                                              ; $74c2: $00
	nop                                              ; $74c3: $00
	nop                                              ; $74c4: $00
	inc  c                                           ; $74c5: $0c
	nop                                              ; $74c6: $00

Call_020_74c7:
	ld   a, [$cabc]                                  ; $74c7: $fa $bc $ca
	cp   $ff                                         ; $74ca: $fe $ff
	jr   nz, jr_020_74d5                             ; $74cc: $20 $07

	xor  a                                           ; $74ce: $af
	ld   [$cab4], a                                  ; $74cf: $ea $b4 $ca
	ld   [$cab8], a                                  ; $74d2: $ea $b8 $ca

jr_020_74d5:
	ld   a, [$cab8]                                  ; $74d5: $fa $b8 $ca
	inc  a                                           ; $74d8: $3c
	cp   $02                                         ; $74d9: $fe $02
	jr   c, jr_020_7525                              ; $74db: $38 $48

	ld   b, $00                                      ; $74dd: $06 $00
	ld   a, [$caa7]                                  ; $74df: $fa $a7 $ca
	ld   d, a                                        ; $74e2: $57
	ld   a, [$caa8]                                  ; $74e3: $fa $a8 $ca
	cp   d                                           ; $74e6: $ba
	jr   c, jr_020_74ef                              ; $74e7: $38 $06

	ld   a, b                                        ; $74e9: $78
	or   $01                                         ; $74ea: $f6 $01
	ld   b, a                                        ; $74ec: $47
	jr   jr_020_74f3                                 ; $74ed: $18 $04

jr_020_74ef:
	ld   a, b                                        ; $74ef: $78
	or   $04                                         ; $74f0: $f6 $04
	ld   b, a                                        ; $74f2: $47

jr_020_74f3:
	ld   a, [$caa9]                                  ; $74f3: $fa $a9 $ca
	cp   d                                           ; $74f6: $ba
	jr   c, jr_020_74ff                              ; $74f7: $38 $06

	ld   a, b                                        ; $74f9: $78
	or   $01                                         ; $74fa: $f6 $01
	ld   b, a                                        ; $74fc: $47
	jr   jr_020_7503                                 ; $74fd: $18 $04

jr_020_74ff:
	ld   a, b                                        ; $74ff: $78
	or   $04                                         ; $7500: $f6 $04
	ld   b, a                                        ; $7502: $47

jr_020_7503:
	ld   a, b                                        ; $7503: $78
	cp   $05                                         ; $7504: $fe $05
	jr   z, jr_020_7517                              ; $7506: $28 $0f

	ld   a, [$cab4]                                  ; $7508: $fa $b4 $ca
	inc  a                                           ; $750b: $3c
	cp   $03                                         ; $750c: $fe $03
	jr   nz, jr_020_7511                             ; $750e: $20 $01

	xor  a                                           ; $7510: $af

jr_020_7511:
	ld   [$cab4], a                                  ; $7511: $ea $b4 $ca
	xor  a                                           ; $7514: $af
	jr   jr_020_7525                                 ; $7515: $18 $0e

jr_020_7517:
	ld   a, [$cab4]                                  ; $7517: $fa $b4 $ca
	cp   $00                                         ; $751a: $fe $00
	jr   nz, jr_020_7520                             ; $751c: $20 $02

	ld   a, $03                                      ; $751e: $3e $03

jr_020_7520:
	dec  a                                           ; $7520: $3d
	ld   [$cab4], a                                  ; $7521: $ea $b4 $ca
	xor  a                                           ; $7524: $af

jr_020_7525:
	ld   [$cab8], a                                  ; $7525: $ea $b8 $ca
	ld   a, [$caab]                                  ; $7528: $fa $ab $ca
	ld   hl, $754e                                   ; $752b: $21 $4e $75
	ld   e, a                                        ; $752e: $5f
	ld   d, $00                                      ; $752f: $16 $00
	sla  e                                           ; $7531: $cb $23
	add  hl, de                                      ; $7533: $19
	ld   a, [hl+]                                    ; $7534: $2a
	ld   h, [hl]                                     ; $7535: $66
	ld   l, a                                        ; $7536: $6f
	ld   a, [$cab4]                                  ; $7537: $fa $b4 $ca
	ld   e, a                                        ; $753a: $5f
	add  hl, de                                      ; $753b: $19
	ld   a, $03                                      ; $753c: $3e $03
	ld   [wSpriteGroup], a                                  ; $753e: $ea $1a $c2
	ld   a, [$caa3]                                  ; $7541: $fa $a3 $ca
	ld   b, a                                        ; $7544: $47
	ld   a, [$caa7]                                  ; $7545: $fa $a7 $ca
	ld   c, a                                        ; $7548: $4f
	ld   a, [hl]                                     ; $7549: $7e
	call LoadSpriteFromMainTable                                       ; $754a: $cd $16 $0e
	ret                                              ; $754d: $c9


	ld   d, h                                        ; $754e: $54
	ld   [hl], l                                     ; $754f: $75
	ld   d, a                                        ; $7550: $57
	ld   [hl], l                                     ; $7551: $75
	ld   e, d                                        ; $7552: $5a
	ld   [hl], l                                     ; $7553: $75
	add  d                                           ; $7554: $82
	add  e                                           ; $7555: $83
	add  h                                           ; $7556: $84
	add  l                                           ; $7557: $85
	add  [hl]                                        ; $7558: $86
	add  a                                           ; $7559: $87
	adc  b                                           ; $755a: $88
	adc  c                                           ; $755b: $89
	adc  d                                           ; $755c: $8a

Call_020_755d:
	ld   a, [$cabd]                                  ; $755d: $fa $bd $ca
	cp   $ff                                         ; $7560: $fe $ff
	jr   nz, jr_020_756b                             ; $7562: $20 $07

	xor  a                                           ; $7564: $af
	ld   [$cab5], a                                  ; $7565: $ea $b5 $ca
	ld   [$cab9], a                                  ; $7568: $ea $b9 $ca

jr_020_756b:
	ld   a, [$cab9]                                  ; $756b: $fa $b9 $ca
	inc  a                                           ; $756e: $3c
	cp   $02                                         ; $756f: $fe $02
	jr   c, jr_020_75bb                              ; $7571: $38 $48

	ld   b, $00                                      ; $7573: $06 $00
	ld   a, [$caa8]                                  ; $7575: $fa $a8 $ca
	ld   d, a                                        ; $7578: $57
	ld   a, [$caa7]                                  ; $7579: $fa $a7 $ca
	cp   d                                           ; $757c: $ba
	jr   c, jr_020_7585                              ; $757d: $38 $06

	ld   a, b                                        ; $757f: $78
	or   $01                                         ; $7580: $f6 $01
	ld   b, a                                        ; $7582: $47
	jr   jr_020_7589                                 ; $7583: $18 $04

jr_020_7585:
	ld   a, b                                        ; $7585: $78
	or   $04                                         ; $7586: $f6 $04
	ld   b, a                                        ; $7588: $47

jr_020_7589:
	ld   a, [$caa9]                                  ; $7589: $fa $a9 $ca
	cp   d                                           ; $758c: $ba
	jr   c, jr_020_7595                              ; $758d: $38 $06

	ld   a, b                                        ; $758f: $78
	or   $01                                         ; $7590: $f6 $01
	ld   b, a                                        ; $7592: $47
	jr   jr_020_7599                                 ; $7593: $18 $04

jr_020_7595:
	ld   a, b                                        ; $7595: $78
	or   $04                                         ; $7596: $f6 $04
	ld   b, a                                        ; $7598: $47

jr_020_7599:
	ld   a, b                                        ; $7599: $78
	cp   $05                                         ; $759a: $fe $05
	jr   z, jr_020_75ad                              ; $759c: $28 $0f

	ld   a, [$cab5]                                  ; $759e: $fa $b5 $ca
	inc  a                                           ; $75a1: $3c
	cp   $03                                         ; $75a2: $fe $03
	jr   nz, jr_020_75a7                             ; $75a4: $20 $01

	xor  a                                           ; $75a6: $af

jr_020_75a7:
	ld   [$cab5], a                                  ; $75a7: $ea $b5 $ca
	xor  a                                           ; $75aa: $af
	jr   jr_020_75bb                                 ; $75ab: $18 $0e

jr_020_75ad:
	ld   a, [$cab5]                                  ; $75ad: $fa $b5 $ca
	cp   $00                                         ; $75b0: $fe $00
	jr   nz, jr_020_75b6                             ; $75b2: $20 $02

	ld   a, $03                                      ; $75b4: $3e $03

jr_020_75b6:
	dec  a                                           ; $75b6: $3d
	ld   [$cab5], a                                  ; $75b7: $ea $b5 $ca
	xor  a                                           ; $75ba: $af

jr_020_75bb:
	ld   [$cab9], a                                  ; $75bb: $ea $b9 $ca
	ld   a, [$caac]                                  ; $75be: $fa $ac $ca
	ld   hl, $754e                                   ; $75c1: $21 $4e $75
	ld   e, a                                        ; $75c4: $5f
	ld   d, $00                                      ; $75c5: $16 $00
	sla  e                                           ; $75c7: $cb $23
	add  hl, de                                      ; $75c9: $19
	ld   a, [hl+]                                    ; $75ca: $2a
	ld   h, [hl]                                     ; $75cb: $66
	ld   l, a                                        ; $75cc: $6f
	ld   a, [$cab5]                                  ; $75cd: $fa $b5 $ca
	ld   e, a                                        ; $75d0: $5f
	add  hl, de                                      ; $75d1: $19
	ld   a, $03                                      ; $75d2: $3e $03
	ld   [wSpriteGroup], a                                  ; $75d4: $ea $1a $c2
	ld   a, [$caa4]                                  ; $75d7: $fa $a4 $ca
	ld   b, a                                        ; $75da: $47
	ld   a, [$caa8]                                  ; $75db: $fa $a8 $ca
	ld   c, a                                        ; $75de: $4f
	ld   a, [hl]                                     ; $75df: $7e
	call LoadSpriteFromMainTable                                       ; $75e0: $cd $16 $0e
	ret                                              ; $75e3: $c9


Call_020_75e4:
	ld   a, [$cabe]                                  ; $75e4: $fa $be $ca
	cp   $ff                                         ; $75e7: $fe $ff
	jr   nz, jr_020_75f2                             ; $75e9: $20 $07

	xor  a                                           ; $75eb: $af
	ld   [$cab6], a                                  ; $75ec: $ea $b6 $ca
	ld   [$caba], a                                  ; $75ef: $ea $ba $ca

jr_020_75f2:
	ld   a, [$caba]                                  ; $75f2: $fa $ba $ca
	inc  a                                           ; $75f5: $3c
	cp   $02                                         ; $75f6: $fe $02
	jr   c, jr_020_7642                              ; $75f8: $38 $48

	ld   b, $00                                      ; $75fa: $06 $00
	ld   a, [$caa9]                                  ; $75fc: $fa $a9 $ca
	ld   d, a                                        ; $75ff: $57
	ld   a, [$caa7]                                  ; $7600: $fa $a7 $ca
	cp   d                                           ; $7603: $ba
	jr   c, jr_020_760c                              ; $7604: $38 $06

	ld   a, b                                        ; $7606: $78
	or   $01                                         ; $7607: $f6 $01
	ld   b, a                                        ; $7609: $47
	jr   jr_020_7610                                 ; $760a: $18 $04

jr_020_760c:
	ld   a, b                                        ; $760c: $78
	or   $04                                         ; $760d: $f6 $04
	ld   b, a                                        ; $760f: $47

jr_020_7610:
	ld   a, [$caa8]                                  ; $7610: $fa $a8 $ca
	cp   d                                           ; $7613: $ba
	jr   c, jr_020_761c                              ; $7614: $38 $06

	ld   a, b                                        ; $7616: $78
	or   $01                                         ; $7617: $f6 $01
	ld   b, a                                        ; $7619: $47
	jr   jr_020_7620                                 ; $761a: $18 $04

jr_020_761c:
	ld   a, b                                        ; $761c: $78
	or   $04                                         ; $761d: $f6 $04
	ld   b, a                                        ; $761f: $47

jr_020_7620:
	ld   a, b                                        ; $7620: $78
	cp   $05                                         ; $7621: $fe $05
	jr   z, jr_020_7634                              ; $7623: $28 $0f

	ld   a, [$cab6]                                  ; $7625: $fa $b6 $ca
	inc  a                                           ; $7628: $3c
	cp   $03                                         ; $7629: $fe $03
	jr   nz, jr_020_762e                             ; $762b: $20 $01

	xor  a                                           ; $762d: $af

jr_020_762e:
	ld   [$cab6], a                                  ; $762e: $ea $b6 $ca
	xor  a                                           ; $7631: $af
	jr   jr_020_7642                                 ; $7632: $18 $0e

jr_020_7634:
	ld   a, [$cab6]                                  ; $7634: $fa $b6 $ca
	cp   $00                                         ; $7637: $fe $00
	jr   nz, jr_020_763d                             ; $7639: $20 $02

	ld   a, $03                                      ; $763b: $3e $03

jr_020_763d:
	dec  a                                           ; $763d: $3d
	ld   [$cab6], a                                  ; $763e: $ea $b6 $ca
	xor  a                                           ; $7641: $af

jr_020_7642:
	ld   [$caba], a                                  ; $7642: $ea $ba $ca
	ld   a, [$caad]                                  ; $7645: $fa $ad $ca
	ld   hl, $754e                                   ; $7648: $21 $4e $75
	ld   e, a                                        ; $764b: $5f
	ld   d, $00                                      ; $764c: $16 $00
	sla  e                                           ; $764e: $cb $23
	add  hl, de                                      ; $7650: $19
	ld   a, [hl+]                                    ; $7651: $2a
	ld   h, [hl]                                     ; $7652: $66
	ld   l, a                                        ; $7653: $6f
	ld   a, [$cab6]                                  ; $7654: $fa $b6 $ca
	ld   e, a                                        ; $7657: $5f
	add  hl, de                                      ; $7658: $19
	ld   a, $03                                      ; $7659: $3e $03
	ld   [wSpriteGroup], a                                  ; $765b: $ea $1a $c2
	ld   a, [$caa5]                                  ; $765e: $fa $a5 $ca
	ld   b, a                                        ; $7661: $47
	ld   a, [$caa9]                                  ; $7662: $fa $a9 $ca
	ld   c, a                                        ; $7665: $4f
	ld   a, [hl]                                     ; $7666: $7e
	call LoadSpriteFromMainTable                                       ; $7667: $cd $16 $0e
	ret                                              ; $766a: $c9


Call_020_766b:
	ld   a, [$cabb]                                  ; $766b: $fa $bb $ca
	inc  a                                           ; $766e: $3c
	cp   $02                                         ; $766f: $fe $02
	jr   c, jr_020_7680                              ; $7671: $38 $0d

	ld   a, [$cab7]                                  ; $7673: $fa $b7 $ca
	inc  a                                           ; $7676: $3c
	cp   $03                                         ; $7677: $fe $03
	jr   nz, jr_020_767c                             ; $7679: $20 $01

	xor  a                                           ; $767b: $af

jr_020_767c:
	ld   [$cab7], a                                  ; $767c: $ea $b7 $ca
	xor  a                                           ; $767f: $af

jr_020_7680:
	ld   [$cabb], a                                  ; $7680: $ea $bb $ca
	ld   a, [$ca78]                                  ; $7683: $fa $78 $ca
	ld   e, a                                        ; $7686: $5f
	ld   d, $00                                      ; $7687: $16 $00
	ld   hl, $ca74                                   ; $7689: $21 $74 $ca
	add  hl, de                                      ; $768c: $19
	ld   a, [hl]                                     ; $768d: $7e
	bit  7, a                                        ; $768e: $cb $7f
	jr   nz, jr_020_76bc                             ; $7690: $20 $2a

	ld   hl, $76bd                                   ; $7692: $21 $bd $76
	ld   e, a                                        ; $7695: $5f
	ld   d, $00                                      ; $7696: $16 $00
	sla  e                                           ; $7698: $cb $23
	add  hl, de                                      ; $769a: $19
	ld   a, [hl+]                                    ; $769b: $2a
	ld   h, [hl]                                     ; $769c: $66
	ld   l, a                                        ; $769d: $6f
	ld   a, [$cab7]                                  ; $769e: $fa $b7 $ca
	ld   e, a                                        ; $76a1: $5f
	add  hl, de                                      ; $76a2: $19
	push hl                                          ; $76a3: $e5
	ld   a, $03                                      ; $76a4: $3e $03
	ld   [wSpriteGroup], a                                  ; $76a6: $ea $1a $c2
	ld   hl, $76cc                                   ; $76a9: $21 $cc $76
	ld   a, [$ca78]                                  ; $76ac: $fa $78 $ca
	ld   b, $00                                      ; $76af: $06 $00
	ld   c, a                                        ; $76b1: $4f
	add  hl, bc                                      ; $76b2: $09
	ld   a, [hl]                                     ; $76b3: $7e
	ld   b, a                                        ; $76b4: $47
	pop  hl                                          ; $76b5: $e1
	ld   c, $78                                      ; $76b6: $0e $78
	ld   a, [hl]                                     ; $76b8: $7e
	call LoadSpriteFromMainTable                                       ; $76b9: $cd $16 $0e

jr_020_76bc:
	ret                                              ; $76bc: $c9


	jp   $c676                                       ; $76bd: $c3 $76 $c6


	halt                                             ; $76c0: $76
	ret                                              ; $76c1: $c9


	halt                                             ; $76c2: $76
	add  d                                           ; $76c3: $82
	add  e                                           ; $76c4: $83
	add  h                                           ; $76c5: $84
	add  l                                           ; $76c6: $85
	add  [hl]                                        ; $76c7: $86
	add  a                                           ; $76c8: $87
	adc  b                                           ; $76c9: $88
	adc  c                                           ; $76ca: $89
	adc  d                                           ; $76cb: $8a
	ld   c, b                                        ; $76cc: $48
	ld   l, b                                        ; $76cd: $68
	adc  b                                           ; $76ce: $88

Call_020_76cf:
	ld   a, [$ca71]                                  ; $76cf: $fa $71 $ca
	cp   $00                                         ; $76d2: $fe $00
	jr   z, jr_020_76d9                              ; $76d4: $28 $03

	cp   $00                                         ; $76d6: $fe $00
	ret  nz                                          ; $76d8: $c0

jr_020_76d9:
	ld   a, [wWramBank]                                  ; $76d9: $fa $93 $c2
	push af                                          ; $76dc: $f5
	ld   a, $07                                      ; $76dd: $3e $07
	ld   [wWramBank], a                                  ; $76df: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $76e2: $e0 $70
	ld   a, [$cac7]                                  ; $76e4: $fa $c7 $ca
	call $0d7d                                       ; $76e7: $cd $7d $0d
	ld   c, a                                        ; $76ea: $4f
	ld   a, $40                                      ; $76eb: $3e $40
	add  c                                           ; $76ed: $81
	ld   c, a                                        ; $76ee: $4f
	ld   de, $d782                                   ; $76ef: $11 $82 $d7
	call Call_020_7763                               ; $76f2: $cd $63 $77
	pop  af                                          ; $76f5: $f1
	ld   c, a                                        ; $76f6: $4f
	ld   a, $40                                      ; $76f7: $3e $40
	add  c                                           ; $76f9: $81
	ld   c, a                                        ; $76fa: $4f
	ld   de, $d781                                   ; $76fb: $11 $81 $d7
	call Call_020_7763                               ; $76fe: $cd $63 $77
	pop  af                                          ; $7701: $f1
	ld   de, $d602                                   ; $7702: $11 $02 $d6
	ld   c, $08                                      ; $7705: $0e $08
	call Call_020_7778                               ; $7707: $cd $78 $77
	ld   de, $d601                                   ; $770a: $11 $01 $d6
	ld   c, $08                                      ; $770d: $0e $08
	call Call_020_7778                               ; $770f: $cd $78 $77
	pop  af                                          ; $7712: $f1
	ld   [wWramBank], a                                  ; $7713: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $7716: $e0 $70
	ret                                              ; $7718: $c9


Call_020_7719:
	ld   a, [$ca71]                                  ; $7719: $fa $71 $ca
	cp   $00                                         ; $771c: $fe $00
	jr   z, jr_020_7723                              ; $771e: $28 $03

	cp   $80                                         ; $7720: $fe $80
	ret  nz                                          ; $7722: $c0

jr_020_7723:
	ld   a, [wWramBank]                                  ; $7723: $fa $93 $c2
	push af                                          ; $7726: $f5
	ld   a, $07                                      ; $7727: $3e $07
	ld   [wWramBank], a                                  ; $7729: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $772c: $e0 $70
	ld   a, [$cac9]                                  ; $772e: $fa $c9 $ca
	call $0d7d                                       ; $7731: $cd $7d $0d
	ld   c, a                                        ; $7734: $4f
	ld   a, $40                                      ; $7735: $3e $40
	add  c                                           ; $7737: $81
	ld   c, a                                        ; $7738: $4f
	ld   de, $d792                                   ; $7739: $11 $92 $d7
	call Call_020_7763                               ; $773c: $cd $63 $77
	pop  af                                          ; $773f: $f1
	ld   c, a                                        ; $7740: $4f
	ld   a, $40                                      ; $7741: $3e $40
	add  c                                           ; $7743: $81
	ld   c, a                                        ; $7744: $4f
	ld   de, $d791                                   ; $7745: $11 $91 $d7
	call Call_020_7763                               ; $7748: $cd $63 $77
	pop  af                                          ; $774b: $f1
	ld   de, $d612                                   ; $774c: $11 $12 $d6
	ld   c, $08                                      ; $774f: $0e $08
	call Call_020_7778                               ; $7751: $cd $78 $77
	ld   de, $d611                                   ; $7754: $11 $11 $d6
	ld   c, $08                                      ; $7757: $0e $08
	call Call_020_7778                               ; $7759: $cd $78 $77
	pop  af                                          ; $775c: $f1
	ld   [wWramBank], a                                  ; $775d: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $7760: $e0 $70
	ret                                              ; $7762: $c9


Call_020_7763:
	ld   b, $02                                      ; $7763: $06 $02

jr_020_7765:
	ld   a, c                                        ; $7765: $79
	ld   [de], a                                     ; $7766: $12
	add  $10                                         ; $7767: $c6 $10
	ld   c, a                                        ; $7769: $4f
	ld   a, e                                        ; $776a: $7b
	add  $20                                         ; $776b: $c6 $20
	ld   e, a                                        ; $776d: $5f
	ld   a, d                                        ; $776e: $7a
	adc  $00                                         ; $776f: $ce $00
	ld   d, a                                        ; $7771: $57
	dec  b                                           ; $7772: $05
	ld   a, b                                        ; $7773: $78
	and  a                                           ; $7774: $a7
	jr   nz, jr_020_7765                             ; $7775: $20 $ee

	ret                                              ; $7777: $c9


Call_020_7778:
	ld   b, $02                                      ; $7778: $06 $02

jr_020_777a:
	ld   a, c                                        ; $777a: $79
	ld   [de], a                                     ; $777b: $12
	ld   a, e                                        ; $777c: $7b
	add  $20                                         ; $777d: $c6 $20
	ld   e, a                                        ; $777f: $5f
	ld   a, d                                        ; $7780: $7a
	adc  $00                                         ; $7781: $ce $00
	ld   d, a                                        ; $7783: $57
	dec  b                                           ; $7784: $05
	ld   a, b                                        ; $7785: $78
	and  a                                           ; $7786: $a7
	jr   nz, jr_020_777a                             ; $7787: $20 $f1

	ret                                              ; $7789: $c9


Call_020_778a:
	ld   a, [$cac5]                                  ; $778a: $fa $c5 $ca
	cp   $02                                         ; $778d: $fe $02
	jr   z, jr_020_779a                              ; $778f: $28 $09

	cp   $03                                         ; $7791: $fe $03
	jr   z, jr_020_779a                              ; $7793: $28 $05

	cp   $04                                         ; $7795: $fe $04
	jr   z, jr_020_779a                              ; $7797: $28 $01

	ret                                              ; $7799: $c9


jr_020_779a:
	ld   a, [wWramBank]                                  ; $779a: $fa $93 $c2
	push af                                          ; $779d: $f5
	ld   a, $07                                      ; $779e: $3e $07
	ld   [wWramBank], a                                  ; $77a0: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $77a3: $e0 $70
	ld   hl, $5000                                   ; $77a5: $21 $00 $50
	ld   d, h                                        ; $77a8: $54
	ld   e, l                                        ; $77a9: $5d
	ld   hl, $77e9                                   ; $77aa: $21 $e9 $77
	ld   a, [$cac5]                                  ; $77ad: $fa $c5 $ca
	sub  $02                                         ; $77b0: $d6 $02
	sla  a                                           ; $77b2: $cb $27
	ld   c, a                                        ; $77b4: $4f
	ld   b, $00                                      ; $77b5: $06 $00
	add  hl, bc                                      ; $77b7: $09
	ld   c, [hl]                                     ; $77b8: $4e
	inc  hl                                          ; $77b9: $23
	ld   b, [hl]                                     ; $77ba: $46
	ld   h, b                                        ; $77bb: $60
	ld   l, c                                        ; $77bc: $69
	add  hl, de                                      ; $77bd: $19
	ld   de, $d745                                   ; $77be: $11 $45 $d7
	ld   b, $04                                      ; $77c1: $06 $04

jr_020_77c3:
	ld   a, $2a                                      ; $77c3: $3e $2a
	push bc                                          ; $77c5: $c5
	ld   bc, $000a                                   ; $77c6: $01 $0a $00
	call FarMemCopy                                       ; $77c9: $cd $b2 $09
	pop  bc                                          ; $77cc: $c1
	ld   a, l                                        ; $77cd: $7d
	add  $16                                         ; $77ce: $c6 $16
	ld   l, a                                        ; $77d0: $6f
	ld   a, h                                        ; $77d1: $7c
	adc  $00                                         ; $77d2: $ce $00
	ld   h, a                                        ; $77d4: $67
	ld   a, e                                        ; $77d5: $7b
	add  $16                                         ; $77d6: $c6 $16
	ld   e, a                                        ; $77d8: $5f
	ld   a, d                                        ; $77d9: $7a
	adc  $00                                         ; $77da: $ce $00
	ld   d, a                                        ; $77dc: $57
	dec  b                                           ; $77dd: $05
	ld   a, b                                        ; $77de: $78
	and  a                                           ; $77df: $a7
	jr   nz, jr_020_77c3                             ; $77e0: $20 $e1

	pop  af                                          ; $77e2: $f1
	ld   [wWramBank], a                                  ; $77e3: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $77e6: $e0 $70
	ret                                              ; $77e8: $c9


	nop                                              ; $77e9: $00
	nop                                              ; $77ea: $00
	add  b                                           ; $77eb: $80
	nop                                              ; $77ec: $00
	ret  nz                                          ; $77ed: $c0

	ld   bc, $c5fa                                   ; $77ee: $01 $fa $c5
	jp   z, $02fe                                    ; $77f1: $ca $fe $02

	jr   z, jr_020_77ff                              ; $77f4: $28 $09

	cp   $03                                         ; $77f6: $fe $03
	jr   z, jr_020_77ff                              ; $77f8: $28 $05

	cp   $04                                         ; $77fa: $fe $04
	jr   z, jr_020_77ff                              ; $77fc: $28 $01

	ret                                              ; $77fe: $c9


jr_020_77ff:
	ld   a, [wWramBank]                                  ; $77ff: $fa $93 $c2
	push af                                          ; $7802: $f5
	ld   a, $07                                      ; $7803: $3e $07
	ld   [wWramBank], a                                  ; $7805: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $7808: $e0 $70
	ld   hl, $5400                                   ; $780a: $21 $00 $54
	ld   d, h                                        ; $780d: $54
	ld   e, l                                        ; $780e: $5d
	ld   hl, $784e                                   ; $780f: $21 $4e $78
	ld   a, [$cac5]                                  ; $7812: $fa $c5 $ca
	sub  $02                                         ; $7815: $d6 $02
	sla  a                                           ; $7817: $cb $27
	ld   c, a                                        ; $7819: $4f
	ld   b, $00                                      ; $781a: $06 $00
	add  hl, bc                                      ; $781c: $09
	ld   c, [hl]                                     ; $781d: $4e
	inc  hl                                          ; $781e: $23
	ld   b, [hl]                                     ; $781f: $46
	ld   h, b                                        ; $7820: $60
	ld   l, c                                        ; $7821: $69
	add  hl, de                                      ; $7822: $19
	ld   de, $d5c5                                   ; $7823: $11 $c5 $d5
	ld   b, $04                                      ; $7826: $06 $04

jr_020_7828:
	ld   a, $2a                                      ; $7828: $3e $2a
	push bc                                          ; $782a: $c5
	ld   bc, $000a                                   ; $782b: $01 $0a $00
	call FarMemCopy                                       ; $782e: $cd $b2 $09
	pop  bc                                          ; $7831: $c1
	ld   a, l                                        ; $7832: $7d
	add  $16                                         ; $7833: $c6 $16
	ld   l, a                                        ; $7835: $6f
	ld   a, h                                        ; $7836: $7c
	adc  $00                                         ; $7837: $ce $00
	ld   h, a                                        ; $7839: $67
	ld   a, e                                        ; $783a: $7b
	add  $16                                         ; $783b: $c6 $16
	ld   e, a                                        ; $783d: $5f
	ld   a, d                                        ; $783e: $7a
	adc  $00                                         ; $783f: $ce $00
	ld   d, a                                        ; $7841: $57
	dec  b                                           ; $7842: $05
	ld   a, b                                        ; $7843: $78
	and  a                                           ; $7844: $a7
	jr   nz, jr_020_7828                             ; $7845: $20 $e1

	pop  af                                          ; $7847: $f1
	ld   [wWramBank], a                                  ; $7848: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $784b: $e0 $70
	ret                                              ; $784d: $c9


	nop                                              ; $784e: $00
	nop                                              ; $784f: $00
	add  b                                           ; $7850: $80
	nop                                              ; $7851: $00
	ret  nz                                          ; $7852: $c0

	ld   bc, $c5fa                                   ; $7853: $01 $fa $c5
	jp   z, $05fe                                    ; $7856: $ca $fe $05

	ret  c                                           ; $7859: $d8

	ld   a, [wWramBank]                                  ; $785a: $fa $93 $c2
	push af                                          ; $785d: $f5
	ld   a, $07                                      ; $785e: $3e $07
	ld   [wWramBank], a                                  ; $7860: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $7863: $e0 $70
	ld   hl, $5000                                   ; $7865: $21 $00 $50
	ld   d, h                                        ; $7868: $54
	ld   e, l                                        ; $7869: $5d
	ld   hl, $78a9                                   ; $786a: $21 $a9 $78
	ld   a, [$cac5]                                  ; $786d: $fa $c5 $ca
	sub  $05                                         ; $7870: $d6 $05
	sla  a                                           ; $7872: $cb $27
	ld   c, a                                        ; $7874: $4f
	ld   b, $00                                      ; $7875: $06 $00
	add  hl, bc                                      ; $7877: $09
	ld   c, [hl]                                     ; $7878: $4e
	inc  hl                                          ; $7879: $23
	ld   b, [hl]                                     ; $787a: $46
	ld   h, b                                        ; $787b: $60
	ld   l, c                                        ; $787c: $69
	add  hl, de                                      ; $787d: $19
	ld   de, $d727                                   ; $787e: $11 $27 $d7
	ld   b, $06                                      ; $7881: $06 $06

jr_020_7883:
	ld   a, $2a                                      ; $7883: $3e $2a
	push bc                                          ; $7885: $c5
	ld   bc, $0006                                   ; $7886: $01 $06 $00
	call FarMemCopy                                       ; $7889: $cd $b2 $09
	pop  bc                                          ; $788c: $c1
	ld   a, l                                        ; $788d: $7d
	add  $1a                                         ; $788e: $c6 $1a
	ld   l, a                                        ; $7890: $6f
	ld   a, h                                        ; $7891: $7c
	adc  $00                                         ; $7892: $ce $00
	ld   h, a                                        ; $7894: $67
	ld   a, e                                        ; $7895: $7b
	add  $1a                                         ; $7896: $c6 $1a
	ld   e, a                                        ; $7898: $5f
	ld   a, d                                        ; $7899: $7a
	adc  $00                                         ; $789a: $ce $00
	ld   d, a                                        ; $789c: $57
	dec  b                                           ; $789d: $05
	ld   a, b                                        ; $789e: $78
	and  a                                           ; $789f: $a7
	jr   nz, jr_020_7883                             ; $78a0: $20 $e1

	pop  af                                          ; $78a2: $f1
	ld   [wWramBank], a                                  ; $78a3: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $78a6: $e0 $70
	ret                                              ; $78a8: $c9


	nop                                              ; $78a9: $00
	ld   bc, $0106                                   ; $78aa: $01 $06 $01

Call_020_78ad:
	ld   a, [$cac5]                                  ; $78ad: $fa $c5 $ca
	cp   $05                                         ; $78b0: $fe $05
	ret  c                                           ; $78b2: $d8

	ld   a, [wWramBank]                                  ; $78b3: $fa $93 $c2
	push af                                          ; $78b6: $f5
	ld   a, $07                                      ; $78b7: $3e $07
	ld   [wWramBank], a                                  ; $78b9: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $78bc: $e0 $70
	ld   hl, $5400                                   ; $78be: $21 $00 $54
	ld   d, h                                        ; $78c1: $54
	ld   e, l                                        ; $78c2: $5d
	ld   hl, $7902                                   ; $78c3: $21 $02 $79
	ld   a, [$cac5]                                  ; $78c6: $fa $c5 $ca
	sub  $05                                         ; $78c9: $d6 $05
	sla  a                                           ; $78cb: $cb $27
	ld   c, a                                        ; $78cd: $4f
	ld   b, $00                                      ; $78ce: $06 $00
	add  hl, bc                                      ; $78d0: $09
	ld   c, [hl]                                     ; $78d1: $4e
	inc  hl                                          ; $78d2: $23
	ld   b, [hl]                                     ; $78d3: $46
	ld   h, b                                        ; $78d4: $60
	ld   l, c                                        ; $78d5: $69
	add  hl, de                                      ; $78d6: $19
	ld   de, $d5a7                                   ; $78d7: $11 $a7 $d5
	ld   b, $06                                      ; $78da: $06 $06

jr_020_78dc:
	ld   a, $2a                                      ; $78dc: $3e $2a
	push bc                                          ; $78de: $c5
	ld   bc, $0006                                   ; $78df: $01 $06 $00
	call FarMemCopy                                       ; $78e2: $cd $b2 $09
	pop  bc                                          ; $78e5: $c1
	ld   a, l                                        ; $78e6: $7d
	add  $1a                                         ; $78e7: $c6 $1a
	ld   l, a                                        ; $78e9: $6f
	ld   a, h                                        ; $78ea: $7c
	adc  $00                                         ; $78eb: $ce $00
	ld   h, a                                        ; $78ed: $67
	ld   a, e                                        ; $78ee: $7b
	add  $1a                                         ; $78ef: $c6 $1a
	ld   e, a                                        ; $78f1: $5f
	ld   a, d                                        ; $78f2: $7a
	adc  $00                                         ; $78f3: $ce $00
	ld   d, a                                        ; $78f5: $57
	dec  b                                           ; $78f6: $05
	ld   a, b                                        ; $78f7: $78
	and  a                                           ; $78f8: $a7
	jr   nz, jr_020_78dc                             ; $78f9: $20 $e1

	pop  af                                          ; $78fb: $f1
	ld   [wWramBank], a                                  ; $78fc: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $78ff: $e0 $70
	ret                                              ; $7901: $c9


	nop                                              ; $7902: $00
	ld   bc, $0106                                   ; $7903: $01 $06 $01
	ld   a, $02                                      ; $7906: $3e $02
	ld   [$cac5], a                                  ; $7908: $ea $c5 $ca
	call $77ef                                       ; $790b: $cd $ef $77
	call Call_020_778a                               ; $790e: $cd $8a $77
	ld   c, $81                                      ; $7911: $0e $81
	ld   de, $9c00                                   ; $7913: $11 $00 $9c
	ld   a, $07                                      ; $7916: $3e $07
	ld   hl, $d840                                   ; $7918: $21 $40 $d8
	ld   b, $0c                                      ; $791b: $06 $0c
	call EnqueueHDMATransfer                                       ; $791d: $cd $7c $02
	ld   c, $80                                      ; $7920: $0e $80
	ld   de, $9c00                                   ; $7922: $11 $00 $9c
	ld   a, $07                                      ; $7925: $3e $07
	ld   hl, $d900                                   ; $7927: $21 $00 $d9
	ld   b, $0c                                      ; $792a: $06 $0c
	call EnqueueHDMATransfer                                       ; $792c: $cd $7c $02
	xor  a                                           ; $792f: $af
	ld   [$cac5], a                                  ; $7930: $ea $c5 $ca
	ld   hl, wGameSubstate                                   ; $7933: $21 $a1 $c2
	inc  [hl]                                        ; $7936: $34
	ret                                              ; $7937: $c9


Call_020_7938:
	xor  a                                           ; $7938: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $7939: $ea $62 $c3
	ld   a, $40                                      ; $793c: $3e $40
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $793e: $ea $63 $c3
	ld   a, $03                                      ; $7941: $3e $03
	ld   c, $01                                      ; $7943: $0e $01
	ld   de, $7000                                   ; $7945: $11 $00 $70
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $7948: $cd $48 $07
	ld   a, $08                                      ; $794b: $3e $08

jr_020_794d:
	push af                                          ; $794d: $f5
	cp   $08                                         ; $794e: $fe $08
	jr   z, jr_020_7957                              ; $7950: $28 $05

	and  $07                                         ; $7952: $e6 $07
	call SafeSetAudVolForMultipleChannels                                       ; $7954: $cd $e0 $1c

jr_020_7957:
	ld   b, $00                                      ; $7957: $06 $00
	ld   c, $40                                      ; $7959: $0e $40
	call FadePalettesAndSetRangeToUpdate                                       ; $795b: $cd $32 $08
	ld   bc, $0004                                   ; $795e: $01 $04 $00
	call WaitUntilBCVBlankIntsHandledIfLCDOn                                       ; $7961: $cd $79 $0a
	pop  af                                          ; $7964: $f1
	dec  a                                           ; $7965: $3d
	jr   nz, jr_020_794d                             ; $7966: $20 $e5

	ret                                              ; $7968: $c9


Call_020_7969:
	xor  a                                           ; $7969: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $796a: $ea $62 $c3
	ld   a, $40                                      ; $796d: $3e $40
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $796f: $ea $63 $c3
	ld   a, $03                                      ; $7972: $3e $03
	ld   c, $01                                      ; $7974: $0e $01
	ld   de, $7000                                   ; $7976: $11 $00 $70
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $7979: $cd $48 $07
	ld   a, $08                                      ; $797c: $3e $08

jr_020_797e:
	push af                                          ; $797e: $f5
	ld   b, $00                                      ; $797f: $06 $00
	ld   c, $40                                      ; $7981: $0e $40
	call FadePalettesAndSetRangeToUpdate                                       ; $7983: $cd $32 $08
	ld   bc, $0004                                   ; $7986: $01 $04 $00
	call WaitUntilBCVBlankIntsHandledIfLCDOn                                       ; $7989: $cd $79 $0a
	pop  af                                          ; $798c: $f1
	dec  a                                           ; $798d: $3d
	jr   nz, jr_020_797e                             ; $798e: $20 $ee

	ret                                              ; $7990: $c9


Call_020_7991:
	xor  a                                           ; $7991: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $7992: $ea $62 $c3
	ld   a, $40                                      ; $7995: $3e $40
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $7997: $ea $63 $c3
	ld   a, $03                                      ; $799a: $3e $03
	ld   b, $01                                      ; $799c: $06 $01
	ld   hl, $7000                                   ; $799e: $21 $00 $70
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $79a1: $cd $48 $07
	ld   a, $08                                      ; $79a4: $3e $08

jr_020_79a6:
	push af                                          ; $79a6: $f5
	ld   b, $00                                      ; $79a7: $06 $00
	ld   c, $40                                      ; $79a9: $0e $40
	call FadePalettesAndSetRangeToUpdate                                       ; $79ab: $cd $32 $08
	ld   bc, $0004                                   ; $79ae: $01 $04 $00
	call WaitUntilBCVBlankIntsHandledIfLCDOn                                       ; $79b1: $cd $79 $0a
	pop  af                                          ; $79b4: $f1
	dec  a                                           ; $79b5: $3d
	jr   nz, jr_020_79a6                             ; $79b6: $20 $ee

	ret                                              ; $79b8: $c9


GameState24::
	ld   a, [wGameSubstate]                                  ; $79b9: $fa $a1 $c2
	rst  JumpTable                                         ; $79bc: $df
	call nc, $3879                                   ; $79bd: $d4 $79 $38
	ld   a, d                                        ; $79c0: $7a
	ld   l, a                                        ; $79c1: $6f
	ld   a, e                                        ; $79c2: $7b
	ld   a, h                                        ; $79c3: $7c
	ld   [$ca4c], a                                  ; $79c4: $ea $4c $ca
	ld   a, l                                        ; $79c7: $7d
	ld   [$ca4d], a                                  ; $79c8: $ea $4d $ca
	ld   a, h                                        ; $79cb: $7c
	ld   [$ca4c], a                                  ; $79cc: $ea $4c $ca
	ld   a, l                                        ; $79cf: $7d
	ld   [$ca4d], a                                  ; $79d0: $ea $4d $ca
	ret                                              ; $79d3: $c9


	ld   a, $ff                                      ; $79d4: $3e $ff
	ld   [wInGameInputsEnabled], a                                  ; $79d6: $ea $0e $c2
	call TurnOffLCD                                       ; $79d9: $cd $e3 $08
	ld   a, $00                                      ; $79dc: $3e $00
	call SafeSetAudVolForMultipleChannels                                       ; $79de: $cd $e0 $1c
	call ClearDisplayRegsAllowVBlankInt                                       ; $79e1: $cd $59 $0b
	call ClearOam                                       ; $79e4: $cd $d7 $0d
	ld   a, [wLCDC]                                  ; $79e7: $fa $03 $c2
	and  $e0                                         ; $79ea: $e6 $e0
	or   $67                                         ; $79ec: $f6 $67
	ld   [wLCDC], a                                  ; $79ee: $ea $03 $c2
	ld   a, $01                                      ; $79f1: $3e $01
	ldh  [rVBK], a                                   ; $79f3: $e0 $4f
	ld   a, $2f                                      ; $79f5: $3e $2f
	ld   hl, $9800                                   ; $79f7: $21 $00 $98
	ld   de, $6b63                                   ; $79fa: $11 $63 $6b
	call RLEXorCopy                                       ; $79fd: $cd $d2 $09
	xor  a                                           ; $7a00: $af
	ldh  [rVBK], a                                   ; $7a01: $e0 $4f
	ld   a, $2f                                      ; $7a03: $3e $2f
	ld   hl, $9800                                   ; $7a05: $21 $00 $98
	ld   de, $4bfc                                   ; $7a08: $11 $fc $4b
	call RLEXorCopy                                       ; $7a0b: $cd $d2 $09
	ld   a, $2e                                      ; $7a0e: $3e $2e
	ld   hl, $8800                                   ; $7a10: $21 $00 $88
	ld   de, $62c6                                   ; $7a13: $11 $c6 $62
	call RLEXorCopy                                       ; $7a16: $cd $d2 $09
	ld   a, $07                                      ; $7a19: $3e $07
	call SafeSetAudVolForMultipleChannels                                       ; $7a1b: $cd $e0 $1c
	call TurnOnLCD                                       ; $7a1e: $cd $09 $09
	ld   c, $2c                                      ; $7a21: $0e $2c
	ld   de, $7ff2                                   ; $7a23: $11 $f2 $7f
	call Call_020_5762                               ; $7a26: $cd $62 $57
	ld   a, $ff                                      ; $7a29: $3e $ff
	ld   [$cb1d], a                                  ; $7a2b: $ea $1d $cb
	ld   a, $03                                      ; $7a2e: $3e $03
	call PlaySound                                       ; $7a30: $cd $92 $1a
	ld   hl, wGameSubstate                                   ; $7a33: $21 $a1 $c2
	inc  [hl]                                        ; $7a36: $34
	ret                                              ; $7a37: $c9


	ld   a, [wInGameButtonsPressed]                                  ; $7a38: $fa $10 $c2
	and  $40                                         ; $7a3b: $e6 $40
	jp   nz, Jump_020_7a79                           ; $7a3d: $c2 $79 $7a

	ld   a, [wInGameButtonsPressed]                                  ; $7a40: $fa $10 $c2
	and  $20                                         ; $7a43: $e6 $20
	jp   nz, Jump_020_7abf                           ; $7a45: $c2 $bf $7a

	ld   a, [wInGameButtonsPressed]                                  ; $7a48: $fa $10 $c2
	and  $80                                         ; $7a4b: $e6 $80
	jp   nz, Jump_020_7ae1                           ; $7a4d: $c2 $e1 $7a

	ld   a, [wInGameButtonsPressed]                                  ; $7a50: $fa $10 $c2
	and  $10                                         ; $7a53: $e6 $10
	jp   nz, Jump_020_7a9d                           ; $7a55: $c2 $9d $7a

	ld   a, [wInGameButtonsPressed]                                  ; $7a58: $fa $10 $c2
	and  $04                                         ; $7a5b: $e6 $04
	jp   nz, Jump_020_7b03                           ; $7a5d: $c2 $03 $7b

	ld   a, [wInGameButtonsPressed]                                  ; $7a60: $fa $10 $c2
	and  $01                                         ; $7a63: $e6 $01
	jp   nz, Jump_020_7b15                           ; $7a65: $c2 $15 $7b

	ld   a, [wInGameButtonsPressed]                                  ; $7a68: $fa $10 $c2
	and  $02                                         ; $7a6b: $e6 $02
	jp   nz, Jump_020_7b37                           ; $7a6d: $c2 $37 $7b

	ld   a, [wInGameButtonsPressed]                                  ; $7a70: $fa $10 $c2
	and  $08                                         ; $7a73: $e6 $08
	jp   nz, Jump_020_7b59                           ; $7a75: $c2 $59 $7b

	ret                                              ; $7a78: $c9


Jump_020_7a79:
	call Call_020_7b70                               ; $7a79: $cd $70 $7b
	ld   a, $07                                      ; $7a7c: $3e $07
	call SafeSetAudVolForMultipleChannels                                       ; $7a7e: $cd $e0 $1c
	ld   a, $24                                      ; $7a81: $3e $24
	ld   h, a                                        ; $7a83: $67
	ld   l, $00                                      ; $7a84: $2e $00
	ld   a, $00                                      ; $7a86: $3e $00
	push af                                          ; $7a88: $f5
	ld   a, $61                                      ; $7a89: $3e $61
	ld   [wFarCallAddr], a                                  ; $7a8b: $ea $98 $c2
	ld   a, $75                                      ; $7a8e: $3e $75
	ld   [wFarCallAddr+1], a                                  ; $7a90: $ea $99 $c2
	ld   a, $10                                      ; $7a93: $3e $10
	ld   [wFarCallBank], a                                  ; $7a95: $ea $9a $c2
	pop  af                                          ; $7a98: $f1
	call FarCall                                       ; $7a99: $cd $62 $09
	ret                                              ; $7a9c: $c9


Jump_020_7a9d:
	call Call_020_7b70                               ; $7a9d: $cd $70 $7b
	ld   a, $07                                      ; $7aa0: $3e $07
	call SafeSetAudVolForMultipleChannels                                       ; $7aa2: $cd $e0 $1c
	ld   a, $24                                      ; $7aa5: $3e $24
	ld   h, a                                        ; $7aa7: $67
	ld   l, $00                                      ; $7aa8: $2e $00
	push af                                          ; $7aaa: $f5
	ld   a, $01                                      ; $7aab: $3e $01
	ld   [wFarCallAddr], a                                  ; $7aad: $ea $98 $c2
	ld   a, $73                                      ; $7ab0: $3e $73
	ld   [wFarCallAddr+1], a                                  ; $7ab2: $ea $99 $c2
	ld   a, $3e                                      ; $7ab5: $3e $3e
	ld   [wFarCallBank], a                                  ; $7ab7: $ea $9a $c2
	pop  af                                          ; $7aba: $f1
	call FarCall                                       ; $7abb: $cd $62 $09
	ret                                              ; $7abe: $c9


Jump_020_7abf:
	call Call_020_7b70                               ; $7abf: $cd $70 $7b
	ld   a, $07                                      ; $7ac2: $3e $07
	call SafeSetAudVolForMultipleChannels                                       ; $7ac4: $cd $e0 $1c
	ld   a, $24                                      ; $7ac7: $3e $24
	ld   h, a                                        ; $7ac9: $67
	ld   l, $00                                      ; $7aca: $2e $00
	push af                                          ; $7acc: $f5
	ld   a, $51                                      ; $7acd: $3e $51
	ld   [wFarCallAddr], a                                  ; $7acf: $ea $98 $c2
	ld   a, $7f                                      ; $7ad2: $3e $7f
	ld   [wFarCallAddr+1], a                                  ; $7ad4: $ea $99 $c2
	ld   a, $3e                                      ; $7ad7: $3e $3e
	ld   [wFarCallBank], a                                  ; $7ad9: $ea $9a $c2
	pop  af                                          ; $7adc: $f1
	call FarCall                                       ; $7add: $cd $62 $09
	ret                                              ; $7ae0: $c9


Jump_020_7ae1:
	call Call_020_7b70                               ; $7ae1: $cd $70 $7b
	ld   a, $07                                      ; $7ae4: $3e $07
	call SafeSetAudVolForMultipleChannels                                       ; $7ae6: $cd $e0 $1c
	ld   a, $24                                      ; $7ae9: $3e $24
	ld   h, a                                        ; $7aeb: $67
	ld   l, $00                                      ; $7aec: $2e $00
	push af                                          ; $7aee: $f5
	ld   a, $34                                      ; $7aef: $3e $34
	ld   [wFarCallAddr], a                                  ; $7af1: $ea $98 $c2
	ld   a, $46                                      ; $7af4: $3e $46
	ld   [wFarCallAddr+1], a                                  ; $7af6: $ea $99 $c2
	ld   a, $3f                                      ; $7af9: $3e $3f
	ld   [wFarCallBank], a                                  ; $7afb: $ea $9a $c2
	pop  af                                          ; $7afe: $f1
	call FarCall                                       ; $7aff: $cd $62 $09
	ret                                              ; $7b02: $c9


Jump_020_7b03:
	call TurnOffLCD                                       ; $7b03: $cd $e3 $08
	ld   a, $00                                      ; $7b06: $3e $00
	call SafeSetAudVolForMultipleChannels                                       ; $7b08: $cd $e0 $1c
	ld   a, $2e                                      ; $7b0b: $3e $2e
	ld   [wGameState], a                                  ; $7b0d: $ea $a0 $c2
	xor  a                                           ; $7b10: $af
	ld   [wGameSubstate], a                                  ; $7b11: $ea $a1 $c2
	ret                                              ; $7b14: $c9


Jump_020_7b15:
	call Call_020_7b70                               ; $7b15: $cd $70 $7b
	ld   a, $07                                      ; $7b18: $3e $07
	call SafeSetAudVolForMultipleChannels                                       ; $7b1a: $cd $e0 $1c
	ld   a, $24                                      ; $7b1d: $3e $24
	ld   h, a                                        ; $7b1f: $67
	ld   l, $00                                      ; $7b20: $2e $00
	push af                                          ; $7b22: $f5
	ld   a, $4b                                      ; $7b23: $3e $4b
	ld   [wFarCallAddr], a                                  ; $7b25: $ea $98 $c2
	ld   a, $79                                      ; $7b28: $3e $79
	ld   [wFarCallAddr+1], a                                  ; $7b2a: $ea $99 $c2
	ld   a, $3e                                      ; $7b2d: $3e $3e
	ld   [wFarCallBank], a                                  ; $7b2f: $ea $9a $c2
	pop  af                                          ; $7b32: $f1
	call FarCall                                       ; $7b33: $cd $62 $09
	ret                                              ; $7b36: $c9


Jump_020_7b37:
	call Call_020_7b70                               ; $7b37: $cd $70 $7b
	ld   a, $07                                      ; $7b3a: $3e $07
	call SafeSetAudVolForMultipleChannels                                       ; $7b3c: $cd $e0 $1c
	ld   a, $24                                      ; $7b3f: $3e $24
	ld   h, a                                        ; $7b41: $67
	ld   l, $00                                      ; $7b42: $2e $00
	push af                                          ; $7b44: $f5
	ld   a, $9e                                      ; $7b45: $3e $9e
	ld   [wFarCallAddr], a                                  ; $7b47: $ea $98 $c2
	ld   a, $6d                                      ; $7b4a: $3e $6d
	ld   [wFarCallAddr+1], a                                  ; $7b4c: $ea $99 $c2
	ld   a, $11                                      ; $7b4f: $3e $11
	ld   [wFarCallBank], a                                  ; $7b51: $ea $9a $c2
	pop  af                                          ; $7b54: $f1
	call FarCall                                       ; $7b55: $cd $62 $09
	ret                                              ; $7b58: $c9


Jump_020_7b59:
	call Call_020_7b70                               ; $7b59: $cd $70 $7b
	call TurnOffLCD                                       ; $7b5c: $cd $e3 $08
	ld   a, $00                                      ; $7b5f: $3e $00
	call SafeSetAudVolForMultipleChannels                                       ; $7b61: $cd $e0 $1c
	ld   a, $02                                      ; $7b64: $3e $02
	ld   [wGameState], a                                  ; $7b66: $ea $a0 $c2
	ld   a, $00                                      ; $7b69: $3e $00
	ld   [wGameSubstate], a                                  ; $7b6b: $ea $a1 $c2
	ret                                              ; $7b6e: $c9


	ret                                              ; $7b6f: $c9


Call_020_7b70:
	xor  a                                           ; $7b70: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $7b71: $ea $62 $c3
	ld   a, $40                                      ; $7b74: $3e $40
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $7b76: $ea $63 $c3
	ld   a, $03                                      ; $7b79: $3e $03
	ld   b, $2c                                      ; $7b7b: $06 $2c
	ld   hl, $7ff2                                   ; $7b7d: $21 $f2 $7f
	ld   c, $01                                      ; $7b80: $0e $01
	ld   de, $7000                                   ; $7b82: $11 $00 $70
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $7b85: $cd $48 $07
	ld   a, $08                                      ; $7b88: $3e $08

jr_020_7b8a:
	push af                                          ; $7b8a: $f5
	cp   $08                                         ; $7b8b: $fe $08
	jr   z, jr_020_7b94                              ; $7b8d: $28 $05

	and  $07                                         ; $7b8f: $e6 $07
	call SafeSetAudVolForMultipleChannels                                       ; $7b91: $cd $e0 $1c

jr_020_7b94:
	ld   b, $00                                      ; $7b94: $06 $00
	ld   c, $40                                      ; $7b96: $0e $40
	call FadePalettesAndSetRangeToUpdate                                       ; $7b98: $cd $32 $08
	ld   bc, $0004                                   ; $7b9b: $01 $04 $00
	call WaitUntilBCVBlankIntsHandledIfLCDOn                                       ; $7b9e: $cd $79 $0a
	pop  af                                          ; $7ba1: $f1
	dec  a                                           ; $7ba2: $3d
	jr   nz, jr_020_7b8a                             ; $7ba3: $20 $e5

	ret                                              ; $7ba5: $c9


	nop                                              ; $7ba6: $00
	nop                                              ; $7ba7: $00
	nop                                              ; $7ba8: $00
	nop                                              ; $7ba9: $00
	nop                                              ; $7baa: $00
	nop                                              ; $7bab: $00
	nop                                              ; $7bac: $00
	nop                                              ; $7bad: $00
	nop                                              ; $7bae: $00
	nop                                              ; $7baf: $00
	nop                                              ; $7bb0: $00
	nop                                              ; $7bb1: $00
	nop                                              ; $7bb2: $00
	nop                                              ; $7bb3: $00
	nop                                              ; $7bb4: $00
	nop                                              ; $7bb5: $00
	nop                                              ; $7bb6: $00
	nop                                              ; $7bb7: $00
	nop                                              ; $7bb8: $00
	nop                                              ; $7bb9: $00
	nop                                              ; $7bba: $00
	nop                                              ; $7bbb: $00
	nop                                              ; $7bbc: $00
	nop                                              ; $7bbd: $00
	nop                                              ; $7bbe: $00
	nop                                              ; $7bbf: $00
	nop                                              ; $7bc0: $00
	nop                                              ; $7bc1: $00
	nop                                              ; $7bc2: $00
	nop                                              ; $7bc3: $00
	nop                                              ; $7bc4: $00
	nop                                              ; $7bc5: $00
	nop                                              ; $7bc6: $00
	nop                                              ; $7bc7: $00
	nop                                              ; $7bc8: $00
	nop                                              ; $7bc9: $00
	nop                                              ; $7bca: $00
	nop                                              ; $7bcb: $00
	nop                                              ; $7bcc: $00
	nop                                              ; $7bcd: $00
	nop                                              ; $7bce: $00
	nop                                              ; $7bcf: $00
	nop                                              ; $7bd0: $00
	nop                                              ; $7bd1: $00
	nop                                              ; $7bd2: $00
	nop                                              ; $7bd3: $00
	nop                                              ; $7bd4: $00
	nop                                              ; $7bd5: $00
	nop                                              ; $7bd6: $00
	nop                                              ; $7bd7: $00
	nop                                              ; $7bd8: $00
	nop                                              ; $7bd9: $00
	nop                                              ; $7bda: $00
	nop                                              ; $7bdb: $00
	nop                                              ; $7bdc: $00
	nop                                              ; $7bdd: $00
	nop                                              ; $7bde: $00
	nop                                              ; $7bdf: $00
	nop                                              ; $7be0: $00
	nop                                              ; $7be1: $00
	nop                                              ; $7be2: $00
	nop                                              ; $7be3: $00
	nop                                              ; $7be4: $00
	nop                                              ; $7be5: $00
	nop                                              ; $7be6: $00
	nop                                              ; $7be7: $00
	nop                                              ; $7be8: $00
	nop                                              ; $7be9: $00
	nop                                              ; $7bea: $00
	nop                                              ; $7beb: $00
	nop                                              ; $7bec: $00
	nop                                              ; $7bed: $00
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
	nop                                              ; $7c00: $00
	nop                                              ; $7c01: $00
	nop                                              ; $7c02: $00
	nop                                              ; $7c03: $00
	nop                                              ; $7c04: $00
	nop                                              ; $7c05: $00
	nop                                              ; $7c06: $00
	nop                                              ; $7c07: $00
	nop                                              ; $7c08: $00
	nop                                              ; $7c09: $00
	nop                                              ; $7c0a: $00
	nop                                              ; $7c0b: $00
	nop                                              ; $7c0c: $00
	nop                                              ; $7c0d: $00
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
	nop                                              ; $7c20: $00
	nop                                              ; $7c21: $00
	nop                                              ; $7c22: $00
	nop                                              ; $7c23: $00
	nop                                              ; $7c24: $00
	nop                                              ; $7c25: $00
	nop                                              ; $7c26: $00
	nop                                              ; $7c27: $00
	nop                                              ; $7c28: $00
	nop                                              ; $7c29: $00
	nop                                              ; $7c2a: $00
	nop                                              ; $7c2b: $00
	nop                                              ; $7c2c: $00
	nop                                              ; $7c2d: $00
	nop                                              ; $7c2e: $00
	nop                                              ; $7c2f: $00
	nop                                              ; $7c30: $00
	nop                                              ; $7c31: $00
	nop                                              ; $7c32: $00
	nop                                              ; $7c33: $00
	nop                                              ; $7c34: $00
	nop                                              ; $7c35: $00
	nop                                              ; $7c36: $00
	nop                                              ; $7c37: $00
	nop                                              ; $7c38: $00
	nop                                              ; $7c39: $00
	nop                                              ; $7c3a: $00
	nop                                              ; $7c3b: $00
	nop                                              ; $7c3c: $00
	nop                                              ; $7c3d: $00
	nop                                              ; $7c3e: $00
	nop                                              ; $7c3f: $00
	nop                                              ; $7c40: $00
	nop                                              ; $7c41: $00
	nop                                              ; $7c42: $00
	nop                                              ; $7c43: $00
	nop                                              ; $7c44: $00
	nop                                              ; $7c45: $00
	nop                                              ; $7c46: $00
	nop                                              ; $7c47: $00
	nop                                              ; $7c48: $00
	nop                                              ; $7c49: $00
	nop                                              ; $7c4a: $00
	nop                                              ; $7c4b: $00
	nop                                              ; $7c4c: $00
	nop                                              ; $7c4d: $00
	nop                                              ; $7c4e: $00
	nop                                              ; $7c4f: $00
	nop                                              ; $7c50: $00
	nop                                              ; $7c51: $00
	nop                                              ; $7c52: $00
	nop                                              ; $7c53: $00
	nop                                              ; $7c54: $00
	nop                                              ; $7c55: $00
	nop                                              ; $7c56: $00
	nop                                              ; $7c57: $00
	nop                                              ; $7c58: $00
	nop                                              ; $7c59: $00
	nop                                              ; $7c5a: $00
	nop                                              ; $7c5b: $00
	nop                                              ; $7c5c: $00
	nop                                              ; $7c5d: $00
	nop                                              ; $7c5e: $00
	nop                                              ; $7c5f: $00
	nop                                              ; $7c60: $00
	nop                                              ; $7c61: $00
	nop                                              ; $7c62: $00
	nop                                              ; $7c63: $00
	nop                                              ; $7c64: $00
	nop                                              ; $7c65: $00
	nop                                              ; $7c66: $00
	nop                                              ; $7c67: $00
	nop                                              ; $7c68: $00
	nop                                              ; $7c69: $00
	nop                                              ; $7c6a: $00
	nop                                              ; $7c6b: $00
	nop                                              ; $7c6c: $00
	nop                                              ; $7c6d: $00
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
	nop                                              ; $7c80: $00
	nop                                              ; $7c81: $00
	nop                                              ; $7c82: $00
	nop                                              ; $7c83: $00
	nop                                              ; $7c84: $00
	nop                                              ; $7c85: $00
	nop                                              ; $7c86: $00
	nop                                              ; $7c87: $00
	nop                                              ; $7c88: $00
	nop                                              ; $7c89: $00
	nop                                              ; $7c8a: $00
	nop                                              ; $7c8b: $00
	nop                                              ; $7c8c: $00
	nop                                              ; $7c8d: $00
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
	nop                                              ; $7ca0: $00
	nop                                              ; $7ca1: $00
	nop                                              ; $7ca2: $00
	nop                                              ; $7ca3: $00
	nop                                              ; $7ca4: $00
	nop                                              ; $7ca5: $00
	nop                                              ; $7ca6: $00
	nop                                              ; $7ca7: $00
	nop                                              ; $7ca8: $00
	nop                                              ; $7ca9: $00
	nop                                              ; $7caa: $00
	nop                                              ; $7cab: $00
	nop                                              ; $7cac: $00
	nop                                              ; $7cad: $00
	nop                                              ; $7cae: $00
	nop                                              ; $7caf: $00
	nop                                              ; $7cb0: $00
	nop                                              ; $7cb1: $00
	nop                                              ; $7cb2: $00
	nop                                              ; $7cb3: $00
	nop                                              ; $7cb4: $00
	nop                                              ; $7cb5: $00
	nop                                              ; $7cb6: $00
	nop                                              ; $7cb7: $00
	nop                                              ; $7cb8: $00
	nop                                              ; $7cb9: $00
	nop                                              ; $7cba: $00
	nop                                              ; $7cbb: $00
	nop                                              ; $7cbc: $00
	nop                                              ; $7cbd: $00
	nop                                              ; $7cbe: $00
	nop                                              ; $7cbf: $00
	nop                                              ; $7cc0: $00
	nop                                              ; $7cc1: $00
	nop                                              ; $7cc2: $00
	nop                                              ; $7cc3: $00
	nop                                              ; $7cc4: $00
	nop                                              ; $7cc5: $00
	nop                                              ; $7cc6: $00
	nop                                              ; $7cc7: $00
	nop                                              ; $7cc8: $00
	nop                                              ; $7cc9: $00
	nop                                              ; $7cca: $00
	nop                                              ; $7ccb: $00
	nop                                              ; $7ccc: $00
	nop                                              ; $7ccd: $00
	nop                                              ; $7cce: $00
	nop                                              ; $7ccf: $00
	nop                                              ; $7cd0: $00
	nop                                              ; $7cd1: $00
	nop                                              ; $7cd2: $00
	nop                                              ; $7cd3: $00
	nop                                              ; $7cd4: $00
	nop                                              ; $7cd5: $00
	nop                                              ; $7cd6: $00
	nop                                              ; $7cd7: $00
	nop                                              ; $7cd8: $00
	nop                                              ; $7cd9: $00
	nop                                              ; $7cda: $00
	nop                                              ; $7cdb: $00
	nop                                              ; $7cdc: $00
	nop                                              ; $7cdd: $00
	nop                                              ; $7cde: $00
	nop                                              ; $7cdf: $00
	nop                                              ; $7ce0: $00
	nop                                              ; $7ce1: $00
	nop                                              ; $7ce2: $00
	nop                                              ; $7ce3: $00
	nop                                              ; $7ce4: $00
	nop                                              ; $7ce5: $00
	nop                                              ; $7ce6: $00
	nop                                              ; $7ce7: $00
	nop                                              ; $7ce8: $00
	nop                                              ; $7ce9: $00
	nop                                              ; $7cea: $00
	nop                                              ; $7ceb: $00
	nop                                              ; $7cec: $00
	nop                                              ; $7ced: $00
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
	nop                                              ; $7cfb: $00
	nop                                              ; $7cfc: $00
	nop                                              ; $7cfd: $00
	nop                                              ; $7cfe: $00
	nop                                              ; $7cff: $00
	nop                                              ; $7d00: $00
	nop                                              ; $7d01: $00
	nop                                              ; $7d02: $00
	nop                                              ; $7d03: $00
	nop                                              ; $7d04: $00
	nop                                              ; $7d05: $00
	nop                                              ; $7d06: $00
	nop                                              ; $7d07: $00
	nop                                              ; $7d08: $00
	nop                                              ; $7d09: $00
	nop                                              ; $7d0a: $00
	nop                                              ; $7d0b: $00
	nop                                              ; $7d0c: $00
	nop                                              ; $7d0d: $00
	nop                                              ; $7d0e: $00
	nop                                              ; $7d0f: $00
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
	nop                                              ; $7d25: $00
	nop                                              ; $7d26: $00
	nop                                              ; $7d27: $00
	nop                                              ; $7d28: $00
	nop                                              ; $7d29: $00
	nop                                              ; $7d2a: $00
	nop                                              ; $7d2b: $00
	nop                                              ; $7d2c: $00
	nop                                              ; $7d2d: $00
	nop                                              ; $7d2e: $00
	nop                                              ; $7d2f: $00
	nop                                              ; $7d30: $00
	nop                                              ; $7d31: $00
	nop                                              ; $7d32: $00
	nop                                              ; $7d33: $00
	nop                                              ; $7d34: $00
	nop                                              ; $7d35: $00
	nop                                              ; $7d36: $00
	nop                                              ; $7d37: $00
	nop                                              ; $7d38: $00
	nop                                              ; $7d39: $00
	nop                                              ; $7d3a: $00
	nop                                              ; $7d3b: $00
	nop                                              ; $7d3c: $00
	nop                                              ; $7d3d: $00
	nop                                              ; $7d3e: $00
	nop                                              ; $7d3f: $00
	nop                                              ; $7d40: $00
	nop                                              ; $7d41: $00
	nop                                              ; $7d42: $00
	nop                                              ; $7d43: $00
	nop                                              ; $7d44: $00
	nop                                              ; $7d45: $00
	nop                                              ; $7d46: $00
	nop                                              ; $7d47: $00
	nop                                              ; $7d48: $00
	nop                                              ; $7d49: $00
	nop                                              ; $7d4a: $00
	nop                                              ; $7d4b: $00
	nop                                              ; $7d4c: $00
	nop                                              ; $7d4d: $00
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
	nop                                              ; $7d60: $00
	nop                                              ; $7d61: $00
	nop                                              ; $7d62: $00
	nop                                              ; $7d63: $00
	nop                                              ; $7d64: $00
	nop                                              ; $7d65: $00
	nop                                              ; $7d66: $00
	nop                                              ; $7d67: $00
	nop                                              ; $7d68: $00
	nop                                              ; $7d69: $00
	nop                                              ; $7d6a: $00
	nop                                              ; $7d6b: $00
	nop                                              ; $7d6c: $00
	nop                                              ; $7d6d: $00
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
	nop                                              ; $7d80: $00
	nop                                              ; $7d81: $00
	nop                                              ; $7d82: $00
	nop                                              ; $7d83: $00
	nop                                              ; $7d84: $00
	nop                                              ; $7d85: $00
	nop                                              ; $7d86: $00
	nop                                              ; $7d87: $00
	nop                                              ; $7d88: $00
	nop                                              ; $7d89: $00
	nop                                              ; $7d8a: $00
	nop                                              ; $7d8b: $00
	nop                                              ; $7d8c: $00
	nop                                              ; $7d8d: $00
	nop                                              ; $7d8e: $00
	nop                                              ; $7d8f: $00
	nop                                              ; $7d90: $00
	nop                                              ; $7d91: $00
	nop                                              ; $7d92: $00
	nop                                              ; $7d93: $00
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
	nop                                              ; $7da2: $00
	nop                                              ; $7da3: $00
	nop                                              ; $7da4: $00
	nop                                              ; $7da5: $00
	nop                                              ; $7da6: $00
	nop                                              ; $7da7: $00
	nop                                              ; $7da8: $00
	nop                                              ; $7da9: $00
	nop                                              ; $7daa: $00
	nop                                              ; $7dab: $00
	nop                                              ; $7dac: $00
	nop                                              ; $7dad: $00
	nop                                              ; $7dae: $00
	nop                                              ; $7daf: $00
	nop                                              ; $7db0: $00
	nop                                              ; $7db1: $00
	nop                                              ; $7db2: $00
	nop                                              ; $7db3: $00
	nop                                              ; $7db4: $00
	nop                                              ; $7db5: $00
	nop                                              ; $7db6: $00
	nop                                              ; $7db7: $00
	nop                                              ; $7db8: $00
	nop                                              ; $7db9: $00
	nop                                              ; $7dba: $00
	nop                                              ; $7dbb: $00
	nop                                              ; $7dbc: $00
	nop                                              ; $7dbd: $00
	nop                                              ; $7dbe: $00
	nop                                              ; $7dbf: $00
	nop                                              ; $7dc0: $00
	nop                                              ; $7dc1: $00
	nop                                              ; $7dc2: $00
	nop                                              ; $7dc3: $00
	nop                                              ; $7dc4: $00
	nop                                              ; $7dc5: $00
	nop                                              ; $7dc6: $00
	nop                                              ; $7dc7: $00
	nop                                              ; $7dc8: $00
	nop                                              ; $7dc9: $00
	nop                                              ; $7dca: $00
	nop                                              ; $7dcb: $00
	nop                                              ; $7dcc: $00
	nop                                              ; $7dcd: $00
	nop                                              ; $7dce: $00
	nop                                              ; $7dcf: $00
	nop                                              ; $7dd0: $00
	nop                                              ; $7dd1: $00
	nop                                              ; $7dd2: $00
	nop                                              ; $7dd3: $00
	nop                                              ; $7dd4: $00
	nop                                              ; $7dd5: $00
	nop                                              ; $7dd6: $00
	nop                                              ; $7dd7: $00
	nop                                              ; $7dd8: $00
	nop                                              ; $7dd9: $00
	nop                                              ; $7dda: $00
	nop                                              ; $7ddb: $00
	nop                                              ; $7ddc: $00
	nop                                              ; $7ddd: $00
	nop                                              ; $7dde: $00
	nop                                              ; $7ddf: $00
	nop                                              ; $7de0: $00
	nop                                              ; $7de1: $00
	nop                                              ; $7de2: $00
	nop                                              ; $7de3: $00
	nop                                              ; $7de4: $00
	nop                                              ; $7de5: $00
	nop                                              ; $7de6: $00
	nop                                              ; $7de7: $00
	nop                                              ; $7de8: $00
	nop                                              ; $7de9: $00
	nop                                              ; $7dea: $00
	nop                                              ; $7deb: $00
	nop                                              ; $7dec: $00
	nop                                              ; $7ded: $00
	nop                                              ; $7dee: $00
	nop                                              ; $7def: $00
	nop                                              ; $7df0: $00
	nop                                              ; $7df1: $00
	nop                                              ; $7df2: $00
	nop                                              ; $7df3: $00
	nop                                              ; $7df4: $00
	nop                                              ; $7df5: $00
	nop                                              ; $7df6: $00
	nop                                              ; $7df7: $00
	nop                                              ; $7df8: $00
	nop                                              ; $7df9: $00
	nop                                              ; $7dfa: $00
	nop                                              ; $7dfb: $00
	nop                                              ; $7dfc: $00
	nop                                              ; $7dfd: $00
	nop                                              ; $7dfe: $00
	nop                                              ; $7dff: $00
	nop                                              ; $7e00: $00
	nop                                              ; $7e01: $00
	nop                                              ; $7e02: $00
	nop                                              ; $7e03: $00
	nop                                              ; $7e04: $00
	nop                                              ; $7e05: $00
	nop                                              ; $7e06: $00
	nop                                              ; $7e07: $00
	nop                                              ; $7e08: $00
	nop                                              ; $7e09: $00
	nop                                              ; $7e0a: $00
	nop                                              ; $7e0b: $00
	nop                                              ; $7e0c: $00
	nop                                              ; $7e0d: $00
	nop                                              ; $7e0e: $00
	nop                                              ; $7e0f: $00
	nop                                              ; $7e10: $00
	nop                                              ; $7e11: $00
	nop                                              ; $7e12: $00
	nop                                              ; $7e13: $00
	nop                                              ; $7e14: $00
	nop                                              ; $7e15: $00
	nop                                              ; $7e16: $00
	nop                                              ; $7e17: $00
	nop                                              ; $7e18: $00
	nop                                              ; $7e19: $00
	nop                                              ; $7e1a: $00
	nop                                              ; $7e1b: $00
	nop                                              ; $7e1c: $00
	nop                                              ; $7e1d: $00
	nop                                              ; $7e1e: $00
	nop                                              ; $7e1f: $00
	nop                                              ; $7e20: $00
	nop                                              ; $7e21: $00
	nop                                              ; $7e22: $00
	nop                                              ; $7e23: $00
	nop                                              ; $7e24: $00
	nop                                              ; $7e25: $00
	nop                                              ; $7e26: $00
	nop                                              ; $7e27: $00
	nop                                              ; $7e28: $00
	nop                                              ; $7e29: $00
	nop                                              ; $7e2a: $00
	nop                                              ; $7e2b: $00
	nop                                              ; $7e2c: $00
	nop                                              ; $7e2d: $00
	nop                                              ; $7e2e: $00
	nop                                              ; $7e2f: $00
	nop                                              ; $7e30: $00
	nop                                              ; $7e31: $00
	nop                                              ; $7e32: $00
	nop                                              ; $7e33: $00
	nop                                              ; $7e34: $00
	nop                                              ; $7e35: $00
	nop                                              ; $7e36: $00
	nop                                              ; $7e37: $00
	nop                                              ; $7e38: $00
	nop                                              ; $7e39: $00
	nop                                              ; $7e3a: $00
	nop                                              ; $7e3b: $00
	nop                                              ; $7e3c: $00
	nop                                              ; $7e3d: $00
	nop                                              ; $7e3e: $00
	nop                                              ; $7e3f: $00
	nop                                              ; $7e40: $00
	nop                                              ; $7e41: $00
	nop                                              ; $7e42: $00
	nop                                              ; $7e43: $00
	nop                                              ; $7e44: $00
	nop                                              ; $7e45: $00
	nop                                              ; $7e46: $00
	nop                                              ; $7e47: $00
	nop                                              ; $7e48: $00
	nop                                              ; $7e49: $00
	nop                                              ; $7e4a: $00
	nop                                              ; $7e4b: $00
	nop                                              ; $7e4c: $00
	nop                                              ; $7e4d: $00
	nop                                              ; $7e4e: $00
	nop                                              ; $7e4f: $00
	nop                                              ; $7e50: $00
	nop                                              ; $7e51: $00
	nop                                              ; $7e52: $00
	nop                                              ; $7e53: $00
	nop                                              ; $7e54: $00
	nop                                              ; $7e55: $00
	nop                                              ; $7e56: $00
	nop                                              ; $7e57: $00
	nop                                              ; $7e58: $00
	nop                                              ; $7e59: $00
	nop                                              ; $7e5a: $00
	nop                                              ; $7e5b: $00
	nop                                              ; $7e5c: $00
	nop                                              ; $7e5d: $00
	nop                                              ; $7e5e: $00
	nop                                              ; $7e5f: $00
	nop                                              ; $7e60: $00
	nop                                              ; $7e61: $00
	nop                                              ; $7e62: $00
	nop                                              ; $7e63: $00
	nop                                              ; $7e64: $00
	nop                                              ; $7e65: $00
	nop                                              ; $7e66: $00
	nop                                              ; $7e67: $00
	nop                                              ; $7e68: $00
	nop                                              ; $7e69: $00
	nop                                              ; $7e6a: $00
	nop                                              ; $7e6b: $00
	nop                                              ; $7e6c: $00
	nop                                              ; $7e6d: $00
	nop                                              ; $7e6e: $00
	nop                                              ; $7e6f: $00
	nop                                              ; $7e70: $00
	nop                                              ; $7e71: $00
	nop                                              ; $7e72: $00
	nop                                              ; $7e73: $00
	nop                                              ; $7e74: $00
	nop                                              ; $7e75: $00
	nop                                              ; $7e76: $00
	nop                                              ; $7e77: $00
	nop                                              ; $7e78: $00
	nop                                              ; $7e79: $00
	nop                                              ; $7e7a: $00
	nop                                              ; $7e7b: $00
	nop                                              ; $7e7c: $00
	nop                                              ; $7e7d: $00
	nop                                              ; $7e7e: $00
	nop                                              ; $7e7f: $00
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
	nop                                              ; $7e9e: $00
	nop                                              ; $7e9f: $00
	nop                                              ; $7ea0: $00
	nop                                              ; $7ea1: $00
	nop                                              ; $7ea2: $00
	nop                                              ; $7ea3: $00
	nop                                              ; $7ea4: $00
	nop                                              ; $7ea5: $00
	nop                                              ; $7ea6: $00
	nop                                              ; $7ea7: $00
	nop                                              ; $7ea8: $00
	nop                                              ; $7ea9: $00
	nop                                              ; $7eaa: $00
	nop                                              ; $7eab: $00
	nop                                              ; $7eac: $00
	nop                                              ; $7ead: $00
	nop                                              ; $7eae: $00
	nop                                              ; $7eaf: $00
	nop                                              ; $7eb0: $00
	nop                                              ; $7eb1: $00
	nop                                              ; $7eb2: $00
	nop                                              ; $7eb3: $00
	nop                                              ; $7eb4: $00
	nop                                              ; $7eb5: $00
	nop                                              ; $7eb6: $00
	nop                                              ; $7eb7: $00
	nop                                              ; $7eb8: $00
	nop                                              ; $7eb9: $00
	nop                                              ; $7eba: $00
	nop                                              ; $7ebb: $00
	nop                                              ; $7ebc: $00
	nop                                              ; $7ebd: $00
	nop                                              ; $7ebe: $00
	nop                                              ; $7ebf: $00
	nop                                              ; $7ec0: $00
	nop                                              ; $7ec1: $00
	nop                                              ; $7ec2: $00
	nop                                              ; $7ec3: $00
	nop                                              ; $7ec4: $00
	nop                                              ; $7ec5: $00
	nop                                              ; $7ec6: $00
	nop                                              ; $7ec7: $00
	nop                                              ; $7ec8: $00
	nop                                              ; $7ec9: $00
	nop                                              ; $7eca: $00
	nop                                              ; $7ecb: $00
	nop                                              ; $7ecc: $00
	nop                                              ; $7ecd: $00
	nop                                              ; $7ece: $00
	nop                                              ; $7ecf: $00
	nop                                              ; $7ed0: $00
	nop                                              ; $7ed1: $00
	nop                                              ; $7ed2: $00
	nop                                              ; $7ed3: $00
	nop                                              ; $7ed4: $00
	nop                                              ; $7ed5: $00
	nop                                              ; $7ed6: $00
	nop                                              ; $7ed7: $00
	nop                                              ; $7ed8: $00
	nop                                              ; $7ed9: $00
	nop                                              ; $7eda: $00
	nop                                              ; $7edb: $00
	nop                                              ; $7edc: $00
	nop                                              ; $7edd: $00
	nop                                              ; $7ede: $00
	nop                                              ; $7edf: $00
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
