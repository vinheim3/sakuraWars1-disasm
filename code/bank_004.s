; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $004", ROMX[$4000], BANK[$4]

GameState42_RomandoShop::
	ld   a, [wGameSubstate]                                  ; $4000: $fa $a1 $c2
	dec  a                                           ; $4003: $3d
	jp   z, RomandoShopSubstate1                            ; $4004: $ca $ae $44

	dec  a                                           ; $4007: $3d
	jp   z, RomandoShopSubstate2                            ; $4008: $ca $eb $44

; Substate 0
	xor  a                                           ; $400b: $af
	ld   [$cc57], a                                  ; $400c: $ea $57 $cc
	ld   [$cc58], a                                  ; $400f: $ea $58 $cc
	jp   RomandoShopSubstate0                               ; $4012: $c3 $15 $40


RomandoShopSubstate0:
	ld   a, [wWramBank]                                  ; $4015: $fa $93 $c2
	push af                                          ; $4018: $f5
	ld   a, $02                                      ; $4019: $3e $02
	ld   [wWramBank], a                                  ; $401b: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $401e: $e0 $70
	call ClearDisplayRegsAllowVBlankInt                                       ; $4020: $cd $59 $0b
	ld   a, [wLCDC]                                  ; $4023: $fa $03 $c2
	and  $80                                         ; $4026: $e6 $80
	or   $a7                                         ; $4028: $f6 $a7
	ld   [wLCDC], a                                  ; $402a: $ea $03 $c2
	ldh  [rLCDC], a                                  ; $402d: $e0 $40
	ld   a, $01                                      ; $402f: $3e $01
	ld   hl, $7000                                   ; $4031: $21 $00 $70
	ld   de, wBGPalettes                                   ; $4034: $11 $de $c2
	ld   bc, $0080                                   ; $4037: $01 $80 $00
	call FarMemCopy                                       ; $403a: $cd $b2 $09
	ld   bc, $003f                                   ; $403d: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $4040: $cd $aa $04
	ld   a, $07                                      ; $4043: $3e $07
	ld   [$c20b], a                                  ; $4045: $ea $0b $c2
	ld   hl, $c20c                                   ; $4048: $21 $0c $c2
	set  6, [hl]                                     ; $404b: $cb $f6
	ld   hl, wIE                                   ; $404d: $21 $0d $c2
	set  1, [hl]                                     ; $4050: $cb $ce
	ld   a, $0b                                      ; $4052: $3e $0b
	ld   [wLCDCIntFuncIdx], a                                  ; $4054: $ea $8d $c2
	ld   a, $70                                      ; $4057: $3e $70
	ld   [wSCY], a                                  ; $4059: $ea $08 $c2
	ld   a, $07                                      ; $405c: $3e $07
	ld   [wWX], a                                  ; $405e: $ea $09 $c2
	ld   a, $58                                      ; $4061: $3e $58
	ld   [wWY], a                                  ; $4063: $ea $0a $c2
	ld   a, $ff                                      ; $4066: $3e $ff
	ld   [wInGameInputsEnabled], a                                  ; $4068: $ea $0e $c2
	call ClearOam                                       ; $406b: $cd $d7 $0d
	call ClearBaseAnimSpriteSpecDetails                                       ; $406e: $cd $c9 $2e
	ld   a, $08                                      ; $4071: $3e $08
	ld   [$cc5b], a                                  ; $4073: $ea $5b $cc
	ld   a, [$cc57]                                  ; $4076: $fa $57 $cc
	and  $0f                                         ; $4079: $e6 $0f
	swap a                                           ; $407b: $cb $37
	sub  $08                                         ; $407d: $d6 $08
	ld   [$cc5a], a                                  ; $407f: $ea $5a $cc
	xor  a                                           ; $4082: $af
	ld   [$cc5c], a                                  ; $4083: $ea $5c $cc
	push af                                          ; $4086: $f5
	ld   a, $4e                                      ; $4087: $3e $4e
	ld   [wFarCallAddr], a                                  ; $4089: $ea $98 $c2
	ld   a, $42                                      ; $408c: $3e $42
	ld   [wFarCallAddr+1], a                                  ; $408e: $ea $99 $c2
	ld   a, $0a                                      ; $4091: $3e $0a
	ld   [wFarCallBank], a                                  ; $4093: $ea $9a $c2
	pop  af                                          ; $4096: $f1
	call FarCall                                       ; $4097: $cd $62 $09
	ld   a, l                                        ; $409a: $7d
	ld   [$cc60], a                                  ; $409b: $ea $60 $cc
	ld   a, h                                        ; $409e: $7c
	ld   [$cc61], a                                  ; $409f: $ea $61 $cc
	call Call_004_4253                               ; $40a2: $cd $53 $42
	ld   a, $00                                      ; $40a5: $3e $00
	ld   hl, $0000                                   ; $40a7: $21 $00 $00
	ld   d, h                                        ; $40aa: $54
	ld   e, l                                        ; $40ab: $5d
	call ReserveBaseAnimSpriteSpecAndInstance                                       ; $40ac: $cd $4b $2f
	ld   [$cc5d], a                                  ; $40af: $ea $5d $cc
	call StartAnimatingAnimatedSpriteSpec                                       ; $40b2: $cd $14 $30
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $40b5: $cd $76 $30
	ld   bc, $8808                                   ; $40b8: $01 $08 $88
	ld   d, $09                                      ; $40bb: $16 $09
	ld   a, [$cc54]                                  ; $40bd: $fa $54 $cc
	add  $0a                                         ; $40c0: $c6 $0a
	dec  a                                           ; $40c2: $3d
	ld   e, a                                        ; $40c3: $5f
	push af                                          ; $40c4: $f5
	ld   a, $3c                                      ; $40c5: $3e $3c
	ld   [wFarCallAddr], a                                  ; $40c7: $ea $98 $c2
	ld   a, $40                                      ; $40ca: $3e $40
	ld   [wFarCallAddr+1], a                                  ; $40cc: $ea $99 $c2
	ld   a, $01                                      ; $40cf: $3e $01
	ld   [wFarCallBank], a                                  ; $40d1: $ea $9a $c2
	pop  af                                          ; $40d4: $f1
	call FarCall                                       ; $40d5: $cd $62 $09
	ld   a, $00                                      ; $40d8: $3e $00
	ld   hl, $0000                                   ; $40da: $21 $00 $00
	ld   d, h                                        ; $40dd: $54
	ld   e, l                                        ; $40de: $5d
	call ReserveBaseAnimSpriteSpecAndInstance                                       ; $40df: $cd $4b $2f
	ld   [$cc5e], a                                  ; $40e2: $ea $5e $cc
	call StartAnimatingAnimatedSpriteSpec                                       ; $40e5: $cd $14 $30
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $40e8: $cd $76 $30
	ld   bc, $8808                                   ; $40eb: $01 $08 $88
	ld   d, $09                                      ; $40ee: $16 $09
	ld   a, $19                                      ; $40f0: $3e $19
	ld   e, a                                        ; $40f2: $5f
	push af                                          ; $40f3: $f5
	ld   a, $3c                                      ; $40f4: $3e $3c
	ld   [wFarCallAddr], a                                  ; $40f6: $ea $98 $c2
	ld   a, $40                                      ; $40f9: $3e $40
	ld   [wFarCallAddr+1], a                                  ; $40fb: $ea $99 $c2
	ld   a, $01                                      ; $40fe: $3e $01
	ld   [wFarCallBank], a                                  ; $4100: $ea $9a $c2
	pop  af                                          ; $4103: $f1
	call FarCall                                       ; $4104: $cd $62 $09
	ld   a, $14                                      ; $4107: $3e $14
	call PlaySong                                       ; $4109: $cd $92 $1a
	ld   a, $07                                      ; $410c: $3e $07
	call SafeSetAudVolForMultipleChannels                                       ; $410e: $cd $e0 $1c
	xor  a                                           ; $4111: $af
	ld   [$cc66], a                                  ; $4112: $ea $66 $cc
	ld   [$cc50], a                                  ; $4115: $ea $50 $cc
	ld   [$cc51], a                                  ; $4118: $ea $51 $cc
	ld   a, $02                                      ; $411b: $3e $02
	ld   [wGameSubstate], a                                  ; $411d: $ea $a1 $c2
	pop  af                                          ; $4120: $f1
	ld   [wWramBank], a                                  ; $4121: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4124: $e0 $70
	ret                                              ; $4126: $c9


Call_004_4127:
	ld   a, [wWramBank]                                  ; $4127: $fa $93 $c2
	push af                                          ; $412a: $f5
	ld   a, $07                                      ; $412b: $3e $07
	ld   [wWramBank], a                                  ; $412d: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4130: $e0 $70
	ld   hl, $d000                                   ; $4132: $21 $00 $d0
	ld   de, $000c                                   ; $4135: $11 $0c $00
	ld   b, $20                                      ; $4138: $06 $20

jr_004_413a:
	call Call_004_4148                               ; $413a: $cd $48 $41
	add  hl, de                                      ; $413d: $19
	dec  b                                           ; $413e: $05
	jr   nz, jr_004_413a                             ; $413f: $20 $f9

	pop  af                                          ; $4141: $f1
	ld   [wWramBank], a                                  ; $4142: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4145: $e0 $70
	ret                                              ; $4147: $c9


Call_004_4148:
	ld   a, $01                                      ; $4148: $3e $01
	ld   [hl+], a                                    ; $414a: $22
	ld   [hl+], a                                    ; $414b: $22
	ld   a, $08                                      ; $414c: $3e $08
	ld   [hl+], a                                    ; $414e: $22
	ld   [hl+], a                                    ; $414f: $22
	ld   [hl+], a                                    ; $4150: $22
	ld   [hl+], a                                    ; $4151: $22
	ld   [hl+], a                                    ; $4152: $22
	ld   [hl+], a                                    ; $4153: $22
	ld   [hl+], a                                    ; $4154: $22
	ld   [hl+], a                                    ; $4155: $22
	ld   [hl+], a                                    ; $4156: $22
	ld   [hl+], a                                    ; $4157: $22
if def(VWF)
	ld   [hl+], a                                    ; $415d: $22
	res  3, a                                        ; $4158: $cb $9f
	ld   [hl+], a                                    ; $415a: $22
	set  3, a                                        ; $415b: $cb $df
else
	res  3, a                                        ; $4158: $cb $9f
	ld   [hl+], a                                    ; $415a: $22
	set  3, a                                        ; $415b: $cb $df
	ld   [hl+], a                                    ; $415d: $22
endc
	ld   [hl+], a                                    ; $415e: $22
	ld   [hl+], a                                    ; $415f: $22
	ld   [hl+], a                                    ; $4160: $22
	ld   a, $01                                      ; $4161: $3e $01
	ld   [hl+], a                                    ; $4163: $22
	ld   [hl+], a                                    ; $4164: $22
	ld   [hl+], a                                    ; $4165: $22
	ret                                              ; $4166: $c9


Call_004_4167:
	ld   a, [wWramBank]                                  ; $4167: $fa $93 $c2
	push af                                          ; $416a: $f5
	ld   a, $07                                      ; $416b: $3e $07
	ld   [wWramBank], a                                  ; $416d: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4170: $e0 $70
	ld   hl, $d400                                   ; $4172: $21 $00 $d4
	ld   de, $000c                                   ; $4175: $11 $0c $00
	ld   b, $20                                      ; $4178: $06 $20

jr_004_417a:
	ld   a, $f8                                      ; $417a: $3e $f8
	ld   [hl+], a                                    ; $417c: $22
	ld   a, $fa                                      ; $417d: $3e $fa
	ld   [hl+], a                                    ; $417f: $22
	ld   a, $7f                                      ; $4180: $3e $7f
	ld   [hl+], a                                    ; $4182: $22
	ld   [hl+], a                                    ; $4183: $22
	ld   [hl+], a                                    ; $4184: $22
	ld   [hl+], a                                    ; $4185: $22
	ld   [hl+], a                                    ; $4186: $22
	ld   [hl+], a                                    ; $4187: $22
	ld   [hl+], a                                    ; $4188: $22
	ld   [hl+], a                                    ; $4189: $22
	ld   [hl+], a                                    ; $418a: $22
	ld   [hl+], a                                    ; $418b: $22
if def(VWF)
	ld   [hl+], a
	inc  a
	ld   [hl+], a
	dec  a
else
	inc  a                                           ; $418c: $3c
	ld   [hl+], a                                    ; $418d: $22
	dec  a                                           ; $418e: $3d
	ld   [hl+], a                                    ; $418f: $22
endc
	ld   [hl+], a                                    ; $4190: $22
	ld   [hl+], a                                    ; $4191: $22
	ld   [hl+], a                                    ; $4192: $22
	ld   a, $fb                                      ; $4193: $3e $fb
	ld   [hl+], a                                    ; $4195: $22
	ld   a, $dc                                      ; $4196: $3e $dc
	ld   [hl+], a                                    ; $4198: $22
	ld   a, $ea                                      ; $4199: $3e $ea
	ld   [hl+], a                                    ; $419b: $22
	add  hl, de                                      ; $419c: $19
	dec  b                                           ; $419d: $05
	jr   nz, jr_004_417a                             ; $419e: $20 $da

	pop  af                                          ; $41a0: $f1
	ld   [wWramBank], a                                  ; $41a1: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $41a4: $e0 $70
	ret                                              ; $41a6: $c9


Call_004_41a7:
	ld   a, [wWramBank]                                  ; $41a7: $fa $93 $c2
	push af                                          ; $41aa: $f5
	ld   a, $07                                      ; $41ab: $3e $07
	ld   [wWramBank], a                                  ; $41ad: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $41b0: $e0 $70
	call Call_004_4167                               ; $41b2: $cd $67 $41
	ld   a, [$cc57]                                  ; $41b5: $fa $57 $cc
	and  $07                                         ; $41b8: $e6 $07
	ld   h, a                                        ; $41ba: $67
	ld   l, $1c                                      ; $41bb: $2e $1c
	call AequHtimesL                                       ; $41bd: $cd $ac $0b
	add  $80                                         ; $41c0: $c6 $80
	ld   hl, $d402                                   ; $41c2: $21 $02 $d4
	ld   de, $0011                                   ; $41c5: $11 $11 $00
	ld   b, $05                                      ; $41c8: $06 $05
	ld   c, $02                                      ; $41ca: $0e $02

jr_004_41cc:
	call Call_004_420e                               ; $41cc: $cd $0e $42
	cp   $60                                         ; $41cf: $fe $60
	jr   nz, jr_004_41d5                             ; $41d1: $20 $02

	ld   a, $80                                      ; $41d3: $3e $80

jr_004_41d5:
	add  hl, de                                      ; $41d5: $19
	dec  b                                           ; $41d6: $05
	jr   nz, jr_004_41cc                             ; $41d7: $20 $f3

	pop  af                                          ; $41d9: $f1
	ld   [wWramBank], a                                  ; $41da: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $41dd: $e0 $70
	ret                                              ; $41df: $c9


Call_004_41e0:
	ld   a, [wWramBank]                                  ; $41e0: $fa $93 $c2
	push af                                          ; $41e3: $f5
	ld   a, $07                                      ; $41e4: $3e $07
	ld   [wWramBank], a                                  ; $41e6: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $41e9: $e0 $70
	call Call_004_4167                               ; $41eb: $cd $67 $41
	ld   hl, $d402                                   ; $41ee: $21 $02 $d4
	ld   de, $0011                                   ; $41f1: $11 $11 $00
	ld   b, $10                                      ; $41f4: $06 $10
	ld   c, $02                                      ; $41f6: $0e $02
	ld   a, $80                                      ; $41f8: $3e $80

jr_004_41fa:
	call Call_004_420e                               ; $41fa: $cd $0e $42
	cp   $60                                         ; $41fd: $fe $60
	jr   nz, jr_004_4203                             ; $41ff: $20 $02

	ld   a, $80                                      ; $4201: $3e $80

jr_004_4203:
	add  hl, de                                      ; $4203: $19
	dec  b                                           ; $4204: $05
	jr   nz, jr_004_41fa                             ; $4205: $20 $f3

	pop  af                                          ; $4207: $f1
	ld   [wWramBank], a                                  ; $4208: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $420b: $e0 $70
	ret                                              ; $420d: $c9


Call_004_420e:
	ld   [hl+], a                                    ; $420e: $22
	add  c                                           ; $420f: $81
	ld   [hl+], a                                    ; $4210: $22
	add  c                                           ; $4211: $81
	ld   [hl+], a                                    ; $4212: $22
	add  c                                           ; $4213: $81
	ld   [hl+], a                                    ; $4214: $22
	add  c                                           ; $4215: $81
	ld   [hl+], a                                    ; $4216: $22
	add  c                                           ; $4217: $81
	ld   [hl+], a                                    ; $4218: $22
	add  c                                           ; $4219: $81
	ld   [hl+], a                                    ; $421a: $22
	add  c                                           ; $421b: $81
	ld   [hl+], a                                    ; $421c: $22
	add  c                                           ; $421d: $81
	ld   [hl+], a                                    ; $421e: $22
	add  c                                           ; $421f: $81
	ld   [hl+], a                                    ; $4220: $22
	add  c                                           ; $4221: $81
if def(VWF)
	ld   [hl+], a                                    ; $4227: $22
	add  c                                           ; $4228: $81

	push af                                          ; $4222: $f5
	ld   a, $80                                      ; $4223: $3e $80
	ld   [hl+], a                                    ; $4225: $22
	pop  af                                          ; $4226: $f1
else
	push af                                          ; $4222: $f5
	ld   a, $80                                      ; $4223: $3e $80
	ld   [hl+], a                                    ; $4225: $22
	pop  af                                          ; $4226: $f1

	ld   [hl+], a                                    ; $4227: $22
	add  c                                           ; $4228: $81
endc
	ld   [hl+], a                                    ; $4229: $22
	add  c                                           ; $422a: $81
	ld   [hl+], a                                    ; $422b: $22
	add  c                                           ; $422c: $81
	ld   [hl+], a                                    ; $422d: $22
	add  hl, de                                      ; $422e: $19
	sub  $19                                         ; $422f: $d6 $19
	ld   [hl+], a                                    ; $4231: $22
	add  c                                           ; $4232: $81
	ld   [hl+], a                                    ; $4233: $22
	add  c                                           ; $4234: $81
	ld   [hl+], a                                    ; $4235: $22
	add  c                                           ; $4236: $81
	ld   [hl+], a                                    ; $4237: $22
	add  c                                           ; $4238: $81
	ld   [hl+], a                                    ; $4239: $22
	add  c                                           ; $423a: $81
	ld   [hl+], a                                    ; $423b: $22
	add  c                                           ; $423c: $81
	ld   [hl+], a                                    ; $423d: $22
	add  c                                           ; $423e: $81
	ld   [hl+], a                                    ; $423f: $22
	add  c                                           ; $4240: $81
	ld   [hl+], a                                    ; $4241: $22
	add  c                                           ; $4242: $81
	ld   [hl+], a                                    ; $4243: $22
	add  c                                           ; $4244: $81
if def(VWF)
	ld   [hl+], a                                    ; $424a: $22
	add  c                                           ; $424b: $81

	push af                                          ; $4245: $f5
	ld   a, $80                                      ; $4246: $3e $80
	ld   [hl+], a                                    ; $4248: $22
	pop  af                                          ; $4249: $f1
else
	push af                                          ; $4245: $f5
	ld   a, $80                                      ; $4246: $3e $80
	ld   [hl+], a                                    ; $4248: $22
	pop  af                                          ; $4249: $f1

	ld   [hl+], a                                    ; $424a: $22
	add  c                                           ; $424b: $81
endc
	ld   [hl+], a                                    ; $424c: $22
	add  c                                           ; $424d: $81
	ld   [hl+], a                                    ; $424e: $22
	add  c                                           ; $424f: $81
	ld   [hl+], a                                    ; $4250: $22
	inc  a                                           ; $4251: $3c
	ret                                              ; $4252: $c9


Call_004_4253:
	xor  a                                           ; $4253: $af
	ld   [$cc56], a                                  ; $4254: $ea $56 $cc
	xor  a                                           ; $4257: $af
	call HLequAddrOfRomandoItemMetadata                               ; $4258: $cd $1f $50
	xor  a                                           ; $425b: $af
	ld   de, $d880                                   ; $425c: $11 $80 $d8

jr_004_425f:
	push hl                                          ; $425f: $e5
	push de                                          ; $4260: $d5
	push af                                          ; $4261: $f5
	ld   a, [hl+]                                    ; $4262: $2a
	ld   e, a                                        ; $4263: $5f
	ld   a, [hl+]                                    ; $4264: $2a
	ld   d, a                                        ; $4265: $57
	or   e                                           ; $4266: $b3
	jr   z, jr_004_4286                              ; $4267: $28 $1d

	ld   a, [hl+]                                    ; $4269: $2a
	ld   h, [hl]                                     ; $426a: $66
	ld   l, a                                        ; $426b: $6f
	call CheckIfRomandoItemBuyable                               ; $426c: $cd $df $42
	or   a                                           ; $426f: $b7
	jr   z, jr_004_427c                              ; $4270: $28 $0a

	pop  af                                          ; $4272: $f1
	pop  de                                          ; $4273: $d1
	ld   [de], a                                     ; $4274: $12
	inc  de                                          ; $4275: $13
	push de                                          ; $4276: $d5
	push af                                          ; $4277: $f5
	ld   hl, $cc56                                   ; $4278: $21 $56 $cc
	inc  [hl]                                        ; $427b: $34

jr_004_427c:
	pop  af                                          ; $427c: $f1
	inc  a                                           ; $427d: $3c
	pop  de                                          ; $427e: $d1
	pop  hl                                          ; $427f: $e1
	ld   bc, $000f                                   ; $4280: $01 $0f $00
	add  hl, bc                                      ; $4283: $09
	jr   jr_004_425f                                 ; $4284: $18 $d9

jr_004_4286:
	pop  hl                                          ; $4286: $e1
	pop  de                                          ; $4287: $d1
	pop  af                                          ; $4288: $f1
	xor  a                                           ; $4289: $af
	ld   [$cc54], a                                  ; $428a: $ea $54 $cc
	ld   b, $00                                      ; $428d: $06 $00
	ld   c, $ff                                      ; $428f: $0e $ff
	ld   de, $d980                                   ; $4291: $11 $80 $d9
	ld   hl, $d880                                   ; $4294: $21 $80 $d8

jr_004_4297:
	ld   a, [hl+]                                    ; $4297: $2a
	push hl                                          ; $4298: $e5
	push de                                          ; $4299: $d5
	push bc                                          ; $429a: $c5
	call HLequAddrOfRomandoItemMetadata                               ; $429b: $cd $1f $50
	ld   bc, $000e                                   ; $429e: $01 $0e $00
	add  hl, bc                                      ; $42a1: $09
	ld   a, [hl]                                     ; $42a2: $7e
	and  $f0                                         ; $42a3: $e6 $f0
	pop  bc                                          ; $42a5: $c1
	push bc                                          ; $42a6: $c5
	cp   c                                           ; $42a7: $b9
	jr   z, jr_004_42b8                              ; $42a8: $28 $0e

	pop  bc                                          ; $42aa: $c1
	pop  de                                          ; $42ab: $d1
	ld   c, a                                        ; $42ac: $4f
	ld   [de], a                                     ; $42ad: $12
	inc  de                                          ; $42ae: $13
	ld   a, b                                        ; $42af: $78
	ld   [de], a                                     ; $42b0: $12
	ld   hl, $cc54                                   ; $42b1: $21 $54 $cc
	inc  [hl]                                        ; $42b4: $34
	inc  de                                          ; $42b5: $13
	push de                                          ; $42b6: $d5
	push bc                                          ; $42b7: $c5

jr_004_42b8:
	pop  bc                                          ; $42b8: $c1
	pop  de                                          ; $42b9: $d1
	pop  hl                                          ; $42ba: $e1
	inc  b                                           ; $42bb: $04
	ld   a, [$cc56]                                  ; $42bc: $fa $56 $cc
	cp   b                                           ; $42bf: $b8
	jr   nz, jr_004_4297                             ; $42c0: $20 $d5

	ld   a, [$cc54]                                  ; $42c2: $fa $54 $cc
	sla  a                                           ; $42c5: $cb $27
	ld   h, $00                                      ; $42c7: $26 $00
	ld   l, a                                        ; $42c9: $6f
	ld   bc, $d981                                   ; $42ca: $01 $81 $d9
	add  hl, bc                                      ; $42cd: $09
	ld   a, [$d981]                                  ; $42ce: $fa $81 $d9
	ld   [hl-], a                                    ; $42d1: $32
	ld   a, [$d980]                                  ; $42d2: $fa $80 $d9
	ld   [hl-], a                                    ; $42d5: $32
	ld   a, [hl-]                                    ; $42d6: $3a
	ld   [$d97f], a                                  ; $42d7: $ea $7f $d9
	ld   a, [hl-]                                    ; $42da: $3a
	ld   [$d97e], a                                  ; $42db: $ea $7e $d9
	ret                                              ; $42de: $c9


; DE - adress of item prereq flag/func
; Returns $ff if buyable, else 0
CheckIfRomandoItemBuyable:
; Jump if flag
	bit  6, d                                                       ; $42df
	jr   z, .isFlag                                                 ; $42e1

; Call flag handler to check if unlocked
	ld   bc, .done                                                  ; $42e3
	push bc                                                         ; $42e6

	ld   h, d                                                       ; $42e7
	ld   l, e                                                       ; $42e8
	jp   hl                                                         ; $42e9

.isFlag:
	push hl                                                         ; $42ea

; Return with 0 if item not unlocked
	ld   h, d                                                       ; $42eb
	ld   l, e                                                       ; $42ec
	M_FarCall CheckIfFlagSet1

	pop  hl                                                         ; $4301
	or   a                                                          ; $4302
	jr   z, .done                                                   ; $4303

; Return with 0 if bought
	M_FarCall CheckIfNextFlagSet1

	cpl                                                             ; $4319

.done:
	ret                                                             ; $431a


Call_004_431b:
	ld   h, $00                                      ; $431b: $26 $00
	ld   l, a                                        ; $431d: $6f
	ld   bc, $d880                                   ; $431e: $01 $80 $d8
	add  hl, bc                                      ; $4321: $09
	ld   a, [hl]                                     ; $4322: $7e
	ret                                              ; $4323: $c9


	push af                                          ; $4324: $f5
	call Call_004_4342                               ; $4325: $cd $42 $43
	pop  af                                          ; $4328: $f1
	inc  a                                           ; $4329: $3c
	push af                                          ; $432a: $f5
	call Call_004_4342                               ; $432b: $cd $42 $43
	pop  af                                          ; $432e: $f1
	inc  a                                           ; $432f: $3c
	push af                                          ; $4330: $f5
	call Call_004_4342                               ; $4331: $cd $42 $43
	pop  af                                          ; $4334: $f1
	inc  a                                           ; $4335: $3c
	push af                                          ; $4336: $f5
	call Call_004_4342                               ; $4337: $cd $42 $43
	pop  af                                          ; $433a: $f1
	inc  a                                           ; $433b: $3c
	push af                                          ; $433c: $f5
	call Call_004_4342                               ; $433d: $cd $42 $43
	pop  af                                          ; $4340: $f1
	ret                                              ; $4341: $c9


Call_004_4342:
	push af                                          ; $4342: $f5
	ld   hl, $d340                                   ; $4343: $21 $40 $d3
	ld   bc, $00e0                                   ; $4346: $01 $e0 $00
	ld   de, $0000                                   ; $4349: $11 $00 $00
	call CopyEthenDintoHL_BCtimes                                       ; $434c: $cd $9f $09
	call InitWideTextBoxDimensions                                       ; $434f: $cd $ec $0f
	ld   bc, $0e01                                   ; $4352: $01 $01 $0e
	call SetKanjiTextBoxDimensions                                       ; $4355: $cd $24 $14
	ld   bc, $0000                                   ; $4358: $01 $00 $00
	call SetCurrKanjiColAndRowToDrawOn                                       ; $435b: $cd $34 $14
	pop  af                                          ; $435e: $f1
	ld   hl, $cc56                                   ; $435f: $21 $56 $cc
	cp   [hl]                                        ; $4362: $be
	jp   nc, Jump_004_440b                           ; $4363: $d2 $0b $44

	push af                                          ; $4366: $f5
	call Call_004_54c5                               ; $4367: $cd $c5 $54
	ld   a, l                                        ; $436a: $7d
	ld   [$cc64], a                                  ; $436b: $ea $64 $cc
	ld   a, h                                        ; $436e: $7c
	ld   [$cc65], a                                  ; $436f: $ea $65 $cc
	pop  af                                          ; $4372: $f1
	push af                                          ; $4373: $f5
	call Call_004_431b                               ; $4374: $cd $1b $43
	call HLequAddrOfRomandoItemMetadata                               ; $4377: $cd $1f $50
	push hl                                          ; $437a: $e5
	ld   a, [$cc64]                                  ; $437b: $fa $64 $cc
	ld   c, a                                        ; $437e: $4f
	ld   a, [$cc65]                                  ; $437f: $fa $65 $cc
	ld   b, a                                        ; $4382: $47
	ld   a, [$cc60]                                  ; $4383: $fa $60 $cc
	ld   l, a                                        ; $4386: $6f
	ld   a, [$cc61]                                  ; $4387: $fa $61 $cc
	ld   h, a                                        ; $438a: $67
	call Call_004_558f                               ; $438b: $cd $8f $55
	jr   nc, jr_004_4395                             ; $438e: $30 $05

	ld   a, $02                                      ; $4390: $3e $02
	call SetDefaultAndCurrKanjiTileTextStyle                                       ; $4392: $cd $3f $15

jr_004_4395:
	pop  hl                                          ; $4395: $e1
	ld   bc, $0004                                   ; $4396: $01 $04 $00
	add  hl, bc                                      ; $4399: $09
	ld   l, [hl]                                     ; $439a: $6e
	ld   h, MIT_ROMANDO_SHOP_CHEST                                      ; $439b: $26 $03

	M_FarCall GetAddrBankOfMiscInstantText

	ld   d, h                                        ; $43b1: $54
	ld   e, l                                        ; $43b2: $5d
	ld   hl, $d340                                   ; $43b3: $21 $40 $d3
	call LoadInstantText                                       ; $43b6: $cd $06 $13
if def(VWF)
	ldbc 11, 0
else
	ld   bc, $0a00                                   ; $43b9: $01 $00 $0a
endc
	call SetCurrKanjiColAndRowToDrawOn                                       ; $43bc: $cd $34 $14
	ld   a, [$cc64]                                  ; $43bf: $fa $64 $cc
	ld   l, a                                        ; $43c2: $6f
	ld   a, [$cc65]                                  ; $43c3: $fa $65 $cc
	ld   h, a                                        ; $43c6: $67
	ld   a, $0a                                      ; $43c7: $3e $0a
	call LAequHLdivmodA                                       ; $43c9: $cd $50 $0c
	add  $11                                         ; $43cc: $c6 $11
	ld   [$da83], a                                  ; $43ce: $ea $83 $da
	ld   a, $0a                                      ; $43d1: $3e $0a
	call LAequHLdivmodA                                       ; $43d3: $cd $50 $0c
	add  $11                                         ; $43d6: $c6 $11
	ld   [$da82], a                                  ; $43d8: $ea $82 $da
	ld   a, $0a                                      ; $43db: $3e $0a
	call LAequHLdivmodA                                       ; $43dd: $cd $50 $0c
	add  $11                                         ; $43e0: $c6 $11
	ld   [$da81], a                                  ; $43e2: $ea $81 $da
	ld   a, $0a                                      ; $43e5: $3e $0a
	call LAequHLdivmodA                                       ; $43e7: $cd $50 $0c
	add  $11                                         ; $43ea: $c6 $11
	ld   [$da80], a                                  ; $43ec: $ea $80 $da
	xor  a                                           ; $43ef: $af
	ld   [$da84], a                                  ; $43f0: $ea $84 $da

;
	ld   hl, $da80                                   ; $43f3: $21 $80 $da

.loop_43f6:
	ld   a, [hl]                                     ; $43f6: $7e
	cp   $11                                         ; $43f7: $fe $11
	jr   nz, .br_4400                             ; $43f9: $20 $05

	ld   a, $10                                      ; $43fb: $3e $10
	ld   [hl+], a                                    ; $43fd: $22
	jr   .loop_43f6                                 ; $43fe: $18 $f6

.br_4400:
	ld   de, $da80                                   ; $4400: $11 $80 $da
	xor  a                                           ; $4403: $af
	ld   hl, $d340                                   ; $4404: $21 $40 $d3
	call LoadInstantText                                       ; $4407: $cd $06 $13
	pop  af                                          ; $440a: $f1

Jump_004_440b:
	and  $07                                         ; $440b: $e6 $07
	ld   h, $1c                                      ; $440d: $26 $1c
	ld   l, a                                        ; $440f: $6f
	call AequHtimesL                                       ; $4410: $cd $ac $0b
	add  hl, hl                                      ; $4413: $29
	add  hl, hl                                      ; $4414: $29
	add  hl, hl                                      ; $4415: $29
	add  hl, hl                                      ; $4416: $29
	ld   bc, $8800                                   ; $4417: $01 $00 $88
	add  hl, bc                                      ; $441a: $09
	ld   c, $81                                      ; $441b: $0e $81
	ld   d, h                                        ; $441d: $54
	ld   e, l                                        ; $441e: $5d
	ld   a, $02                                      ; $441f: $3e $02
	ld   hl, $d340                                   ; $4421: $21 $40 $d3
	ld   b, $1c                                      ; $4424: $06 $1c
	call EnqueueHDMATransfer                                       ; $4426: $cd $7c $02
	ret                                              ; $4429: $c9


Call_004_442a:
	push af                                          ; $442a: $f5
	ld   hl, $d340                                   ; $442b: $21 $40 $d3
	ld   bc, $0240                                   ; $442e: $01 $40 $02
	ld   de, $0000                                   ; $4431: $11 $00 $00
	call CopyEthenDintoHL_BCtimes                                       ; $4434: $cd $9f $09
	call InitWideTextBoxDimensions                                       ; $4437: $cd $ec $0f
if def(VWF)
	ldbc $14, 2
else
	ld   bc, $1202                                   ; $443a: $01 $02 $12
endc
	call SetKanjiTextBoxDimensions                                       ; $443d: $cd $24 $14
	ld   bc, $0000                                   ; $4440: $01 $00 $00
	call SetCurrKanjiColAndRowToDrawOn                                       ; $4443: $cd $34 $14
	pop  af                                          ; $4446: $f1
	ld   hl, $cc56                                   ; $4447: $21 $56 $cc
	cp   [hl]                                        ; $444a: $be
	jr   nc, jr_004_4476                             ; $444b: $30 $29

	call Call_004_431b                               ; $444d: $cd $1b $43
	call HLequAddrOfRomandoItemMetadata                               ; $4450: $cd $1f $50
	ld   bc, $0005                                   ; $4453: $01 $05 $00
	add  hl, bc                                      ; $4456: $09
	ld   l, [hl]                                     ; $4457: $6e
	ld   h, MIT_ROMANDO_SHOP_CHEST                                      ; $4458: $26 $03

	M_FarCall GetAddrBankOfMiscInstantText

	ld   d, h                                        ; $446e: $54
	ld   e, l                                        ; $446f: $5d
	ld   hl, $d340                                   ; $4470: $21 $40 $d3
if def(VWF)
	call RomandoShopLoadDescripTextHook
else
	call LoadInstantText                                       ; $4473: $cd $06 $13
endc

jr_004_4476:
	ld   c, $80                                      ; $4476: $0e $80
	ld   de, $9000                                   ; $4478: $11 $00 $90
	ld   a, $02                                      ; $447b: $3e $02
	ld   hl, $d340                                   ; $447d: $21 $40 $d3
if def(VWF)
	ld   b, $50
else
	ld   b, $48                                      ; $4480: $06 $48
endc
	call EnqueueHDMATransfer                                       ; $4482: $cd $7c $02
	ret                                              ; $4485: $c9


Call_004_4486:
	ld   a, [$cc58]                                  ; $4486: $fa $58 $cc
	call Call_004_431b                               ; $4489: $cd $1b $43
	call HLequAddrOfRomandoItemMetadata                               ; $448c: $cd $1f $50
	ld   bc, $000e                                   ; $448f: $01 $0e $00
	add  hl, bc                                      ; $4492: $09
	ld   a, [hl]                                     ; $4493: $7e
	and  $f0                                         ; $4494: $e6 $f0
	ld   e, a                                        ; $4496: $5f
	ld   hl, $d980                                   ; $4497: $21 $80 $d9
	ld   a, [$cc54]                                  ; $449a: $fa $54 $cc
	ld   b, a                                        ; $449d: $47
	ld   c, $00                                      ; $449e: $0e $00

jr_004_44a0:
	ld   a, [hl+]                                    ; $44a0: $2a
	inc  hl                                          ; $44a1: $23
	cp   e                                           ; $44a2: $bb
	jr   z, jr_004_44ac                              ; $44a3: $28 $07

	inc  c                                           ; $44a5: $0c
	dec  b                                           ; $44a6: $05
	jr   nz, jr_004_44a0                             ; $44a7: $20 $f7

	ld   a, $ff                                      ; $44a9: $3e $ff
	ret                                              ; $44ab: $c9


jr_004_44ac:
	ld   a, c                                        ; $44ac: $79
	ret                                              ; $44ad: $c9


RomandoShopSubstate1:
	call Call_004_4253                               ; $44ae: $cd $53 $42
	ld   a, [$cc58]                                  ; $44b1: $fa $58 $cc
	ld   hl, $cc56                                   ; $44b4: $21 $56 $cc
	cp   [hl]                                        ; $44b7: $be
	jr   c, jr_004_44e8                              ; $44b8: $38 $2e

	ld   a, [hl]                                     ; $44ba: $7e
	or   a                                           ; $44bb: $b7
	jr   nz, jr_004_44cb                             ; $44bc: $20 $0d

	ld   a, [wShopChestReturnState]                                  ; $44be: $fa $52 $cc
	ld   [wGameState], a                                  ; $44c1: $ea $a0 $c2
	ld   a, [wShopChestReturnSubstate]                                  ; $44c4: $fa $53 $cc
	ld   [wGameSubstate], a                                  ; $44c7: $ea $a1 $c2
	ret                                              ; $44ca: $c9


jr_004_44cb:
	dec  a                                           ; $44cb: $3d
	ld   [$cc58], a                                  ; $44cc: $ea $58 $cc
	ld   a, [hl]                                     ; $44cf: $7e
	cp   $05                                         ; $44d0: $fe $05
	jr   nc, jr_004_44da                             ; $44d2: $30 $06

	xor  a                                           ; $44d4: $af
	ld   [$cc57], a                                  ; $44d5: $ea $57 $cc
	jr   jr_004_44e8                                 ; $44d8: $18 $0e

jr_004_44da:
	ld   a, [$cc57]                                  ; $44da: $fa $57 $cc
	add  $04                                         ; $44dd: $c6 $04
	sub  [hl]                                        ; $44df: $96
	jr   c, jr_004_44e8                              ; $44e0: $38 $06

	ld   a, [hl]                                     ; $44e2: $7e
	sub  $05                                         ; $44e3: $d6 $05
	ld   [$cc57], a                                  ; $44e5: $ea $57 $cc

jr_004_44e8:
	jp   RomandoShopSubstate0                               ; $44e8: $c3 $15 $40


RomandoShopSubstate2:
	ld   a, [wWramBank]                                  ; $44eb: $fa $93 $c2
	push af                                          ; $44ee: $f5
	ld   a, $02                                      ; $44ef: $3e $02
	ld   [wWramBank], a                                  ; $44f1: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $44f4: $e0 $70
	call ClearOam                                       ; $44f6: $cd $d7 $0d
	ld   bc, $450c                                   ; $44f9: $01 $0c $45
	push bc                                          ; $44fc: $c5
	ld   a, [$cc50]                                  ; $44fd: $fa $50 $cc
	ld   b, $00                                      ; $4500: $06 $00
	ld   c, a                                        ; $4502: $4f
	ld   hl, $4519                                   ; $4503: $21 $19 $45
	add  hl, bc                                      ; $4506: $09
	add  hl, bc                                      ; $4507: $09
	ld   a, [hl+]                                    ; $4508: $2a
	ld   h, [hl]                                     ; $4509: $66
	ld   l, a                                        ; $450a: $6f
	jp   hl                                          ; $450b: $e9


	call Call_004_4691                               ; $450c: $cd $91 $46
	call AnimateAllAnimatedSpriteSpecs                                       ; $450f: $cd $d3 $2e
	pop  af                                          ; $4512: $f1
	ld   [wWramBank], a                                  ; $4513: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4516: $e0 $70
	ret                                              ; $4518: $c9


	scf                                              ; $4519: $37
	ld   b, l                                        ; $451a: $45
	jp   nz, $2d47                                   ; $451b: $c2 $47 $2d

	ld   c, b                                        ; $451e: $48
	ld   e, a                                        ; $451f: $5f
	ld   c, d                                        ; $4520: $4a
	ld   [de], a                                     ; $4521: $12
	ld   c, e                                        ; $4522: $4b
	daa                                              ; $4523: $27
	ld   c, e                                        ; $4524: $4b
	inc  a                                           ; $4525: $3c
	ld   c, e                                        ; $4526: $4b
	jp   nz, Jump_004_484b                           ; $4527: $c2 $4b $48

	ld   c, h                                        ; $452a: $4c
	ld   e, e                                        ; $452b: $5b
	ld   c, h                                        ; $452c: $4c
	rst  $38                                         ; $452d: $ff
	ld   c, l                                        ; $452e: $4d
	ld   l, b                                        ; $452f: $68
	ld   c, [hl]                                     ; $4530: $4e
	sbc  e                                           ; $4531: $9b
	ld   c, [hl]                                     ; $4532: $4e
	ld   b, d                                        ; $4533: $42
	ld   c, a                                        ; $4534: $4f
	adc  $4f                                         ; $4535: $ce $4f


;
	ld   hl, $cc51                                   ; $4537: $21 $51 $cc
	ld   a, [hl]                                     ; $453a: $7e
	inc  [hl]                                        ; $453b: $34
	sla  a                                           ; $453c: $cb $27
	ld   h, $00                                      ; $453e: $26 $00
	ld   l, a                                        ; $4540: $6f
	ld   bc, $4549                                   ; $4541: $01 $49 $45
	add  hl, bc                                      ; $4544: $09
	ld   a, [hl+]                                    ; $4545: $2a
	ld   h, [hl]                                     ; $4546: $66
	ld   l, a                                        ; $4547: $6f
	jp   hl                                          ; $4548: $e9


	ld   e, l                                        ; $4549: $5d
	ld   b, l                                        ; $454a: $45
	adc  c                                           ; $454b: $89
	ld   b, l                                        ; $454c: $45
	sbc  c                                           ; $454d: $99
	ld   b, l                                        ; $454e: $45
	xor  a                                           ; $454f: $af
	ld   b, l                                        ; $4550: $45
	inc  bc                                          ; $4551: $03
	ld   b, [hl]                                     ; $4552: $46
	dec  de                                          ; $4553: $1b
	ld   b, [hl]                                     ; $4554: $46
	ld   [hl], $46                                   ; $4555: $36 $46
	ld   c, c                                        ; $4557: $49
	ld   b, [hl]                                     ; $4558: $46
	ld   a, [hl]                                     ; $4559: $7e
	ld   b, [hl]                                     ; $455a: $46
	add  l                                           ; $455b: $85
	ld   b, [hl]                                     ; $455c: $46


;
	ld   a, [wWramBank]                                  ; $455d: $fa $93 $c2
	push af                                          ; $4560: $f5
	ld   a, $07                                      ; $4561: $3e $07
	ld   [wWramBank], a                                  ; $4563: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4566: $e0 $70
	ld   a, $94                                      ; $4568: $3e $94
	ld   hl, $d000                                   ; $456a: $21 $00 $d0
	ld   de, $6cf3                                   ; $456d: $11 $f3 $6c
if def(VWF)
	call RomandoShopBank0_8000hHook
else
	call RLEXorCopy                                       ; $4570: $cd $d2 $09
endc
	ld   c, $80                                      ; $4573: $0e $80
	ld   de, $8000                                   ; $4575: $11 $00 $80
	ld   a, $07                                      ; $4578: $3e $07
	ld   hl, $d000                                   ; $457a: $21 $00 $d0
	ld   b, $60                                      ; $457d: $06 $60
	call EnqueueHDMATransfer                                       ; $457f: $cd $7c $02
	pop  af                                          ; $4582: $f1
	ld   [wWramBank], a                                  ; $4583: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4586: $e0 $70
	ret                                              ; $4588: $c9


	ld   c, $80                                      ; $4589: $0e $80
	ld   de, $8600                                   ; $458b: $11 $00 $86
	ld   a, $07                                      ; $458e: $3e $07
	ld   hl, $d600                                   ; $4590: $21 $00 $d6
	ld   b, $60                                      ; $4593: $06 $60
	call EnqueueHDMATransfer                                       ; $4595: $cd $7c $02
	ret                                              ; $4598: $c9


	ld   c, $80                                      ; $4599: $0e $80
	ld   de, $8c00                                   ; $459b: $11 $00 $8c
	ld   a, $07                                      ; $459e: $3e $07
	ld   hl, $dc00                                   ; $45a0: $21 $00 $dc
	ld   b, $40                                      ; $45a3: $06 $40
	call EnqueueHDMATransfer                                       ; $45a5: $cd $7c $02
	ld   a, [$cc57]                                  ; $45a8: $fa $57 $cc
	call Call_004_4342                               ; $45ab: $cd $42 $43
	ret                                              ; $45ae: $c9


	ld   a, [wWramBank]                                  ; $45af: $fa $93 $c2
	push af                                          ; $45b2: $f5
	ld   a, $07                                      ; $45b3: $3e $07
	ld   [wWramBank], a                                  ; $45b5: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $45b8: $e0 $70
	ld   hl, $d000                                   ; $45ba: $21 $00 $d0
	ld   a, $99                                      ; $45bd: $3e $99
	ld   de, $6df0                                   ; $45bf: $11 $f0 $6d
	ld   bc, $1420                                   ; $45c2: $01 $20 $14
	call FarCopyLayout                                       ; $45c5: $cd $2c $0b
	ld   hl, $d400                                   ; $45c8: $21 $00 $d4
if def(VWF)
	call RomandoShopTileMapHook
else
	call FarCopyLayout                                       ; $45cb: $cd $2c $0b
endc
	ld   c, $81                                      ; $45ce: $0e $81
	ld   de, $9800                                   ; $45d0: $11 $00 $98
	ld   a, $07                                      ; $45d3: $3e $07
	ld   hl, $d000                                   ; $45d5: $21 $00 $d0
	ld   b, $40                                      ; $45d8: $06 $40
	call EnqueueHDMATransfer                                       ; $45da: $cd $7c $02
	ld   de, $d000                                   ; $45dd: $11 $00 $d0
	ld   hl, $d0a0                                   ; $45e0: $21 $a0 $d0
	ld   bc, $00e0                                   ; $45e3: $01 $e0 $00
	call MemCopy                                       ; $45e6: $cd $a9 $09
	ld   de, $d400                                   ; $45e9: $11 $00 $d4
	ld   hl, $d4a0                                   ; $45ec: $21 $a0 $d4
	ld   bc, $00e0                                   ; $45ef: $01 $e0 $00
	call MemCopy                                       ; $45f2: $cd $a9 $09
	pop  af                                          ; $45f5: $f1
	ld   [wWramBank], a                                  ; $45f6: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $45f9: $e0 $70
	ld   a, [$cc57]                                  ; $45fb: $fa $57 $cc
	inc  a                                           ; $45fe: $3c
	call Call_004_4342                               ; $45ff: $cd $42 $43
	ret                                              ; $4602: $c9


	ld   c, $80                                      ; $4603: $0e $80
	ld   de, $9800                                   ; $4605: $11 $00 $98
	ld   a, $07                                      ; $4608: $3e $07
	ld   hl, $d400                                   ; $460a: $21 $00 $d4
	ld   b, $40                                      ; $460d: $06 $40
	call EnqueueHDMATransfer                                       ; $460f: $cd $7c $02
	ld   a, [$cc57]                                  ; $4612: $fa $57 $cc
	inc  a                                           ; $4615: $3c
	inc  a                                           ; $4616: $3c
	call Call_004_4342                               ; $4617: $cd $42 $43
	ret                                              ; $461a: $c9


	call Call_004_4127                               ; $461b: $cd $27 $41
	ld   c, $81                                      ; $461e: $0e $81
	ld   de, $9c00                                   ; $4620: $11 $00 $9c
	ld   a, $07                                      ; $4623: $3e $07
	ld   hl, $d000                                   ; $4625: $21 $00 $d0
	ld   b, $40                                      ; $4628: $06 $40
	call EnqueueHDMATransfer                                       ; $462a: $cd $7c $02
	ld   a, [$cc57]                                  ; $462d: $fa $57 $cc
	add  $03                                         ; $4630: $c6 $03
	call Call_004_4342                               ; $4632: $cd $42 $43
	ret                                              ; $4635: $c9


	call Call_004_41e0                               ; $4636: $cd $e0 $41
	ld   c, $80                                      ; $4639: $0e $80
	ld   de, $9c00                                   ; $463b: $11 $00 $9c
	ld   a, $07                                      ; $463e: $3e $07
	ld   hl, $d400                                   ; $4640: $21 $00 $d4
	ld   b, $40                                      ; $4643: $06 $40
	call EnqueueHDMATransfer                                       ; $4645: $cd $7c $02
	ret                                              ; $4648: $c9


	ld   a, [wWramBank]                                  ; $4649: $fa $93 $c2
	push af                                          ; $464c: $f5
	ld   a, $07                                      ; $464d: $3e $07
	ld   [wWramBank], a                                  ; $464f: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4652: $e0 $70
	ld   hl, $d000                                   ; $4654: $21 $00 $d0
	ld   bc, $0080                                   ; $4657: $01 $80 $00
	ld   de, $0000                                   ; $465a: $11 $00 $00
	call CopyEthenDintoHL_BCtimes                                       ; $465d: $cd $9f $09
	ld   c, $81                                      ; $4660: $0e $81
	ld   de, $9700                                   ; $4662: $11 $00 $97
	ld   a, $07                                      ; $4665: $3e $07
	ld   hl, $d000                                   ; $4667: $21 $00 $d0
	ld   b, $10                                      ; $466a: $06 $10
	call EnqueueHDMATransfer                                       ; $466c: $cd $7c $02
	pop  af                                          ; $466f: $f1
	ld   [wWramBank], a                                  ; $4670: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4673: $e0 $70
	ld   a, [$cc57]                                  ; $4675: $fa $57 $cc
	add  $04                                         ; $4678: $c6 $04
	call Call_004_4342                               ; $467a: $cd $42 $43
	ret                                              ; $467d: $c9


	ld   a, [$cc58]                                  ; $467e: $fa $58 $cc
	call Call_004_442a                               ; $4681: $cd $2a $44
	ret                                              ; $4684: $c9


	call Call_004_49c9                               ; $4685: $cd $c9 $49
	ld   hl, $cc50                                   ; $4688: $21 $50 $cc
	inc  [hl]                                        ; $468b: $34
	xor  a                                           ; $468c: $af
	ld   [$cc51], a                                  ; $468d: $ea $51 $cc
	ret                                              ; $4690: $c9


Call_004_4691:
	ld   a, $09                                      ; $4691: $3e $09
	ld   [wSpriteGroup], a                                  ; $4693: $ea $1a $c2
	ld   hl, $cc66                                   ; $4696: $21 $66 $cc
	inc  [hl]                                        ; $4699: $34
	ld   h, [hl]                                     ; $469a: $66
	ld   l, $30                                      ; $469b: $2e $30
	call HLequHdivModL                                       ; $469d: $cd $fb $0b
	ld   a, l                                        ; $46a0: $7d
	ld   [$cc66], a                                  ; $46a1: $ea $66 $cc
	ld   h, $00                                      ; $46a4: $26 $00
	srl  l                                           ; $46a6: $cb $3d
	srl  l                                           ; $46a8: $cb $3d
	srl  l                                           ; $46aa: $cb $3d
	ld   bc, $47bc                                   ; $46ac: $01 $bc $47
	add  hl, bc                                      ; $46af: $09
	ld   a, [$cc57]                                  ; $46b0: $fa $57 $cc
	or   a                                           ; $46b3: $b7
	jr   z, jr_004_46c3                              ; $46b4: $28 $0d

	push hl                                          ; $46b6: $e5
	ld   b, $48                                      ; $46b7: $06 $48
	ld   a, $f8                                      ; $46b9: $3e $f8
	sub  [hl]                                        ; $46bb: $96
	ld   c, a                                        ; $46bc: $4f
	ld   a, $25                                      ; $46bd: $3e $25
	call LoadSpriteFromMainTable                                       ; $46bf: $cd $16 $0e
	pop  hl                                          ; $46c2: $e1

jr_004_46c3:
	ld   a, [$cc56]                                  ; $46c3: $fa $56 $cc
	ld   b, a                                        ; $46c6: $47
	ld   a, [$cc57]                                  ; $46c7: $fa $57 $cc
	add  $05                                         ; $46ca: $c6 $05
	cp   b                                           ; $46cc: $b8
	jr   nc, jr_004_46da                             ; $46cd: $30 $0b

	ld   b, $48                                      ; $46cf: $06 $48
	ld   a, $58                                      ; $46d1: $3e $58
	add  [hl]                                        ; $46d3: $86
	ld   c, a                                        ; $46d4: $4f
	ld   a, $26                                      ; $46d5: $3e $26
	call LoadSpriteFromMainTable                                       ; $46d7: $cd $16 $0e

jr_004_46da:
	ld   a, [$cc61]                                  ; $46da: $fa $61 $cc
	ld   h, a                                        ; $46dd: $67
	ld   a, [$cc60]                                  ; $46de: $fa $60 $cc
	ld   l, a                                        ; $46e1: $6f
	ld   a, $0a                                      ; $46e2: $3e $0a
	call LAequHLdivmodA                                       ; $46e4: $cd $50 $0c
	ld   [wPlayerName+3], a                                  ; $46e7: $ea $11 $cb
	ld   a, $0a                                      ; $46ea: $3e $0a
	call LAequHLdivmodA                                       ; $46ec: $cd $50 $0c
	ld   [wPlayerName+2], a                                  ; $46ef: $ea $10 $cb
	ld   a, $0a                                      ; $46f2: $3e $0a
	call LAequHLdivmodA                                       ; $46f4: $cd $50 $0c
	ld   [wPlayerName+1], a                                  ; $46f7: $ea $0f $cb
	ld   a, $0a                                      ; $46fa: $3e $0a
	call LAequHLdivmodA                                       ; $46fc: $cd $50 $0c
	ld   [wPlayerName], a                                  ; $46ff: $ea $0e $cb
	ld   a, l                                        ; $4702: $7d
	ld   [$cb0d], a                                  ; $4703: $ea $0d $cb
	ld   hl, $cb0d                                   ; $4706: $21 $0d $cb
	ld   a, [hl+]                                    ; $4709: $2a
	or   a                                           ; $470a: $b7
	jr   nz, jr_004_471b                             ; $470b: $20 $0e

	ld   a, [hl+]                                    ; $470d: $2a
	or   a                                           ; $470e: $b7
	jr   nz, jr_004_4723                             ; $470f: $20 $12

	ld   a, [hl+]                                    ; $4711: $2a
	or   a                                           ; $4712: $b7
	jr   nz, jr_004_472e                             ; $4713: $20 $19

	ld   a, [hl+]                                    ; $4715: $2a
	or   a                                           ; $4716: $b7
	jr   nz, jr_004_4739                             ; $4717: $20 $20

	jr   jr_004_4744                                 ; $4719: $18 $29

jr_004_471b:
	add  $27                                         ; $471b: $c6 $27
	ld   bc, $6060                                   ; $471d: $01 $60 $60
	call LoadSpriteFromMainTable                                       ; $4720: $cd $16 $0e

jr_004_4723:
	ld   a, [wPlayerName]                                  ; $4723: $fa $0e $cb
	add  $27                                         ; $4726: $c6 $27
	ld   bc, $6860                                   ; $4728: $01 $60 $68
	call LoadSpriteFromMainTable                                       ; $472b: $cd $16 $0e

jr_004_472e:
	ld   a, [wPlayerName+1]                                  ; $472e: $fa $0f $cb
	add  $27                                         ; $4731: $c6 $27
	ld   bc, $7060                                   ; $4733: $01 $60 $70
	call LoadSpriteFromMainTable                                       ; $4736: $cd $16 $0e

jr_004_4739:
	ld   a, [wPlayerName+2]                                  ; $4739: $fa $10 $cb
	add  $27                                         ; $473c: $c6 $27
	ld   bc, $7860                                   ; $473e: $01 $60 $78
	call LoadSpriteFromMainTable                                       ; $4741: $cd $16 $0e

jr_004_4744:
	ld   a, [wPlayerName+3]                                  ; $4744: $fa $11 $cb
	add  $27                                         ; $4747: $c6 $27
	ld   bc, $8060                                   ; $4749: $01 $60 $80
	call LoadSpriteFromMainTable                                       ; $474c: $cd $16 $0e
	ld   a, [$cc56]                                  ; $474f: $fa $56 $cc
	or   a                                           ; $4752: $b7
	ret  z                                           ; $4753: $c8

	ld   a, [$cc5e]                                  ; $4754: $fa $5e $cc
	call StopAnimatingAnimatedSpriteSpec                                       ; $4757: $cd $06 $30
	ld   a, [$cc5d]                                  ; $475a: $fa $5d $cc
	call StopAnimatingAnimatedSpriteSpec                                       ; $475d: $cd $06 $30
	call Call_004_4486                               ; $4760: $cd $86 $44
	bit  7, a                                        ; $4763: $cb $7f
	ret  nz                                          ; $4765: $c0

	ld   c, a                                        ; $4766: $4f
	ld   a, [$cc5e]                                  ; $4767: $fa $5e $cc
	call StartAnimatingAnimatedSpriteSpec                                       ; $476a: $cd $14 $30
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $476d: $cd $76 $30
	ld   b, $88                                      ; $4770: $06 $88
	inc  c                                           ; $4772: $0c
	sla  c                                           ; $4773: $cb $21
	sla  c                                           ; $4775: $cb $21
	sla  c                                           ; $4777: $cb $21
	ld   d, $09                                      ; $4779: $16 $09
	swap e                                           ; $477b: $cb $33
	ld   a, $19                                      ; $477d: $3e $19
	add  e                                           ; $477f: $83
	ld   e, a                                        ; $4780: $5f
	push af                                          ; $4781: $f5
	ld   a, $3c                                      ; $4782: $3e $3c
	ld   [wFarCallAddr], a                                  ; $4784: $ea $98 $c2
	ld   a, $40                                      ; $4787: $3e $40
	ld   [wFarCallAddr+1], a                                  ; $4789: $ea $99 $c2
	ld   a, $01                                      ; $478c: $3e $01
	ld   [wFarCallBank], a                                  ; $478e: $ea $9a $c2
	pop  af                                          ; $4791: $f1
	call FarCall                                       ; $4792: $cd $62 $09
	ld   a, [$cc5d]                                  ; $4795: $fa $5d $cc
	call StartAnimatingAnimatedSpriteSpec                                       ; $4798: $cd $14 $30
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $479b: $cd $76 $30
	ld   b, $09                                      ; $479e: $06 $09
	ld   a, [$cc54]                                  ; $47a0: $fa $54 $cc
	dec  a                                           ; $47a3: $3d
	add  $0a                                         ; $47a4: $c6 $0a
	ld   c, a                                        ; $47a6: $4f
	push af                                          ; $47a7: $f5
	ld   a, $4b                                      ; $47a8: $3e $4b
	ld   [wFarCallAddr], a                                  ; $47aa: $ea $98 $c2
	ld   a, $40                                      ; $47ad: $3e $40
	ld   [wFarCallAddr+1], a                                  ; $47af: $ea $99 $c2
	ld   a, $01                                      ; $47b2: $3e $01
	ld   [wFarCallBank], a                                  ; $47b4: $ea $9a $c2
	pop  af                                          ; $47b7: $f1
	call FarCall                                       ; $47b8: $cd $62 $09
	ret                                              ; $47bb: $c9


	nop                                              ; $47bc: $00
	ld   bc, $0302                                   ; $47bd: $01 $02 $03
	ld   [bc], a                                     ; $47c0: $02
	ld   bc, $51fa                                   ; $47c1: $01 $fa $51
	call z, $20b7                                    ; $47c4: $cc $b7 $20
	ld   [hl], $3e                                   ; $47c7: $36 $3e
	and  e                                           ; $47c9: $a3
	ld   de, $da00                                   ; $47ca: $11 $00 $da
	ld   hl, $654c                                   ; $47cd: $21 $4c $65
	ld   bc, $0080                                   ; $47d0: $01 $80 $00
	call FarMemCopy                                       ; $47d3: $cd $b2 $09
	ld   a, $7f                                      ; $47d6: $3e $7f
	ld   [$da10], a                                  ; $47d8: $ea $10 $da
	ld   [$da18], a                                  ; $47db: $ea $18 $da
	ld   a, $4e                                      ; $47de: $3e $4e
	ld   [$da11], a                                  ; $47e0: $ea $11 $da
	ld   [$da19], a                                  ; $47e3: $ea $19 $da
	xor  a                                           ; $47e6: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $47e7: $ea $62 $c3
	ld   a, $40                                      ; $47ea: $3e $40
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $47ec: $ea $63 $c3
	ld   a, $03                                      ; $47ef: $3e $03
	ld   b, $00                                      ; $47f1: $06 $00
	ld   hl, wBGPalettes                                   ; $47f3: $21 $de $c2
	ld   c, $00                                      ; $47f6: $0e $00
	ld   de, $da00                                   ; $47f8: $11 $00 $da
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $47fb: $cd $48 $07
	ld   hl, $cc51                                   ; $47fe: $21 $51 $cc
	ld   a, [hl]                                     ; $4801: $7e
	inc  [hl]                                        ; $4802: $34
	cp   $1f                                         ; $4803: $fe $1f
	jr   nc, jr_004_4810                             ; $4805: $30 $09

	and  $03                                         ; $4807: $e6 $03
	ret  nz                                          ; $4809: $c0

	ld   bc, $0040                                   ; $480a: $01 $40 $00
	jp   FadePalettesAndSetRangeToUpdate                                       ; $480d: $c3 $32 $08


jr_004_4810:
	ld   a, $00                                      ; $4810: $3e $00
	ld   hl, $da00                                   ; $4812: $21 $00 $da
	ld   de, wBGPalettes                                   ; $4815: $11 $de $c2
	ld   bc, $0080                                   ; $4818: $01 $80 $00
	call FarMemCopy                                       ; $481b: $cd $b2 $09
	ld   bc, $003f                                   ; $481e: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $4821: $cd $aa $04
	ld   hl, $cc50                                   ; $4824: $21 $50 $cc
	inc  [hl]                                        ; $4827: $34
	xor  a                                           ; $4828: $af
	ld   [$cc51], a                                  ; $4829: $ea $51 $cc
	ret                                              ; $482c: $c9


	call Call_004_4972                               ; $482d: $cd $72 $49
	ld   a, [$cc56]                                  ; $4830: $fa $56 $cc
	or   a                                           ; $4833: $b7
	jr   nz, jr_004_483e                             ; $4834: $20 $08

	ld   a, [wInGameButtonsPressed]                                  ; $4836: $fa $10 $c2
	bit  1, a                                        ; $4839: $cb $4f
	jr   nz, jr_004_4874                             ; $483b: $20 $37

	ret                                              ; $483d: $c9


jr_004_483e:
	call Call_004_499e                               ; $483e: $cd $9e $49
	ld   a, [wInGameButtonsPressed]                                  ; $4841: $fa $10 $c2
	bit  0, a                                        ; $4844: $cb $47
	jr   z, jr_004_4874                              ; $4846: $28 $2c

	ld   a, [$cc58]                                  ; $4848: $fa $58 $cc

Jump_004_484b:
	call Call_004_54c5                               ; $484b: $cd $c5 $54
	ld   b, h                                        ; $484e: $44
	ld   c, l                                        ; $484f: $4d
	ld   a, [$cc60]                                  ; $4850: $fa $60 $cc
	ld   l, a                                        ; $4853: $6f
	ld   a, [$cc61]                                  ; $4854: $fa $61 $cc
	ld   h, a                                        ; $4857: $67
	call Call_004_558f                               ; $4858: $cd $8f $55
	jr   c, jr_004_4874                              ; $485b: $38 $17

	ld   a, [$cc58]                                  ; $485d: $fa $58 $cc
	ld   [$cc59], a                                  ; $4860: $ea $59 $cc
	ld   a, $21                                      ; $4863: $3e $21
	call PlaySoundEffect                                       ; $4865: $cd $df $1a
	ld   a, $09                                      ; $4868: $3e $09
	ld   [$cc50], a                                  ; $486a: $ea $50 $cc
	xor  a                                           ; $486d: $af
	ld   [$cc51], a                                  ; $486e: $ea $51 $cc
	jp   Jump_004_4959                               ; $4871: $c3 $59 $49


jr_004_4874:
	ld   a, [wInGameButtonsPressed]                                  ; $4874: $fa $10 $c2
	bit  1, a                                        ; $4877: $cb $4f
	jr   z, jr_004_4893                              ; $4879: $28 $18

	ld   a, $ff                                      ; $487b: $3e $ff
	ld   [$cc59], a                                  ; $487d: $ea $59 $cc
	xor  a                                           ; $4880: $af
	call PlaySong                                       ; $4881: $cd $92 $1a
	ld   a, $22                                      ; $4884: $3e $22
	call PlaySoundEffect                                       ; $4886: $cd $df $1a
	ld   a, $0e                                      ; $4889: $3e $0e
	ld   [$cc50], a                                  ; $488b: $ea $50 $cc
	xor  a                                           ; $488e: $af
	ld   [$cc51], a                                  ; $488f: $ea $51 $cc
	ret                                              ; $4892: $c9


jr_004_4893:
	ld   a, [wInGameButtonsHeld]                                  ; $4893: $fa $0f $c2
	bit  6, a                                        ; $4896: $cb $77
	jr   z, jr_004_48c8                              ; $4898: $28 $2e

	ld   a, [$cc58]                                  ; $489a: $fa $58 $cc
	sub  $01                                         ; $489d: $d6 $01
	jp   c, Jump_004_4959                            ; $489f: $da $59 $49

	ld   [$cc58], a                                  ; $48a2: $ea $58 $cc
	ld   hl, $cc57                                   ; $48a5: $21 $57 $cc
	cp   [hl]                                        ; $48a8: $be
	jr   c, jr_004_48ba                              ; $48a9: $38 $0f

	call Call_004_495d                               ; $48ab: $cd $5d $49
	ld   a, $04                                      ; $48ae: $3e $04
	ld   [$cc50], a                                  ; $48b0: $ea $50 $cc
	xor  a                                           ; $48b3: $af
	ld   [$cc51], a                                  ; $48b4: $ea $51 $cc
	jp   Jump_004_4959                               ; $48b7: $c3 $59 $49


jr_004_48ba:
	dec  [hl]                                        ; $48ba: $35
	call Call_004_495d                               ; $48bb: $cd $5d $49
	ld   a, $06                                      ; $48be: $3e $06
	ld   [$cc50], a                                  ; $48c0: $ea $50 $cc
	xor  a                                           ; $48c3: $af
	ld   [$cc51], a                                  ; $48c4: $ea $51 $cc
	ret                                              ; $48c7: $c9


jr_004_48c8:
	bit  7, a                                        ; $48c8: $cb $7f
	jr   z, jr_004_48ff                              ; $48ca: $28 $33

	ld   a, [$cc56]                                  ; $48cc: $fa $56 $cc
	ld   b, a                                        ; $48cf: $47
	ld   a, [$cc58]                                  ; $48d0: $fa $58 $cc
	inc  a                                           ; $48d3: $3c
	cp   b                                           ; $48d4: $b8
	jp   nc, Jump_004_4959                           ; $48d5: $d2 $59 $49

	ld   [$cc58], a                                  ; $48d8: $ea $58 $cc
	ld   hl, $cc57                                   ; $48db: $21 $57 $cc
	sub  [hl]                                        ; $48de: $96
	cp   $05                                         ; $48df: $fe $05
	jr   nc, jr_004_48f1                             ; $48e1: $30 $0e

	call Call_004_495d                               ; $48e3: $cd $5d $49
	ld   a, $05                                      ; $48e6: $3e $05
	ld   [$cc50], a                                  ; $48e8: $ea $50 $cc
	xor  a                                           ; $48eb: $af
	ld   [$cc51], a                                  ; $48ec: $ea $51 $cc
	jr   jr_004_4959                                 ; $48ef: $18 $68

jr_004_48f1:
	inc  [hl]                                        ; $48f1: $34
	call Call_004_495d                               ; $48f2: $cd $5d $49
	ld   a, $07                                      ; $48f5: $3e $07
	ld   [$cc50], a                                  ; $48f7: $ea $50 $cc
	xor  a                                           ; $48fa: $af
	ld   [$cc51], a                                  ; $48fb: $ea $51 $cc
	ret                                              ; $48fe: $c9


jr_004_48ff:
	ld   a, [wInGameButtonsPressed]                                  ; $48ff: $fa $10 $c2
	cp   $20                                         ; $4902: $fe $20
	jr   nz, jr_004_4937                             ; $4904: $20 $31

	ld   a, [$cc54]                                  ; $4906: $fa $54 $cc
	dec  a                                           ; $4909: $3d
	jr   z, jr_004_4956                              ; $490a: $28 $4a

	ld   a, $20                                      ; $490c: $3e $20
	call PlaySoundEffect                                       ; $490e: $cd $df $1a
	call Call_004_4a27                               ; $4911: $cd $27 $4a
	ld   [$cc58], a                                  ; $4914: $ea $58 $cc
	ld   hl, $cc57                                   ; $4917: $21 $57 $cc
	sub  [hl]                                        ; $491a: $96
	cp   $05                                         ; $491b: $fe $05
	jr   nc, jr_004_4927                             ; $491d: $30 $08

jr_004_491f:
	ld   a, [$cc58]                                  ; $491f: $fa $58 $cc
	call Call_004_442a                               ; $4922: $cd $2a $44
	jr   jr_004_4959                                 ; $4925: $18 $32

jr_004_4927:
	ld   a, [$cc58]                                  ; $4927: $fa $58 $cc
	ld   [$cc57], a                                  ; $492a: $ea $57 $cc
	ld   a, $03                                      ; $492d: $3e $03
	ld   [$cc50], a                                  ; $492f: $ea $50 $cc
	xor  a                                           ; $4932: $af
	ld   [$cc51], a                                  ; $4933: $ea $51 $cc
	ret                                              ; $4936: $c9


jr_004_4937:
	cp   $10                                         ; $4937: $fe $10
	jr   nz, jr_004_4956                             ; $4939: $20 $1b

	ld   a, [$cc54]                                  ; $493b: $fa $54 $cc
	dec  a                                           ; $493e: $3d
	jr   z, jr_004_4956                              ; $493f: $28 $15

	ld   a, $20                                      ; $4941: $3e $20
	call PlaySoundEffect                                       ; $4943: $cd $df $1a
	call Call_004_4a44                               ; $4946: $cd $44 $4a
	ld   [$cc58], a                                  ; $4949: $ea $58 $cc
	ld   hl, $cc57                                   ; $494c: $21 $57 $cc
	sub  [hl]                                        ; $494f: $96
	cp   $05                                         ; $4950: $fe $05
	jr   nc, jr_004_4927                             ; $4952: $30 $d3

	jr   jr_004_491f                                 ; $4954: $18 $c9

jr_004_4956:
	call Call_004_4967                               ; $4956: $cd $67 $49

Jump_004_4959:
jr_004_4959:
	call Call_004_49c9                               ; $4959: $cd $c9 $49
	ret                                              ; $495c: $c9


Call_004_495d:
	ld   a, [$cc5b]                                  ; $495d: $fa $5b $cc
	sub  $01                                         ; $4960: $d6 $01
	ret  c                                           ; $4962: $d8

	ld   [$cc5b], a                                  ; $4963: $ea $5b $cc
	ret                                              ; $4966: $c9


Call_004_4967:
	ld   a, [$cc5b]                                  ; $4967: $fa $5b $cc
	inc  a                                           ; $496a: $3c
	cp   $08                                         ; $496b: $fe $08
	ret  nc                                          ; $496d: $d0

	ld   [$cc5b], a                                  ; $496e: $ea $5b $cc
	ret                                              ; $4971: $c9


Call_004_4972:
	ld   a, $08                                      ; $4972: $3e $08
	ld   hl, $cc5c                                   ; $4974: $21 $5c $cc
	push af                                          ; $4977: $f5
	ld   a, $8f                                      ; $4978: $3e $8f
	ld   [wFarCallAddr], a                                  ; $497a: $ea $98 $c2
	ld   a, $59                                      ; $497d: $3e $59
	ld   [wFarCallAddr+1], a                                  ; $497f: $ea $99 $c2
	ld   a, $0a                                      ; $4982: $3e $0a
	ld   [wFarCallBank], a                                  ; $4984: $ea $9a $c2
	pop  af                                          ; $4987: $f1
	call FarCall                                       ; $4988: $cd $62 $09
	ld   a, [$c2ee]                                  ; $498b: $fa $ee $c2
	ld   [wBGPalettes+3*8], a                                  ; $498e: $ea $f6 $c2
	ld   a, [$c2ef]                                  ; $4991: $fa $ef $c2
	ld   [$c2f7], a                                  ; $4994: $ea $f7 $c2
	ld   bc, $0c0f                                   ; $4997: $01 $0f $0c
	call SetBGandOBJPaletteRangesToUpdate                                       ; $499a: $cd $aa $04
	ret                                              ; $499d: $c9


Call_004_499e:
	ld   hl, $d000                                   ; $499e: $21 $00 $d0
	call Call_004_4148                               ; $49a1: $cd $48 $41
	ld   hl, $d020                                   ; $49a4: $21 $20 $d0
	call Call_004_4148                               ; $49a7: $cd $48 $41
	ld   a, [$cc58]                                  ; $49aa: $fa $58 $cc
	and  $0f                                         ; $49ad: $e6 $0f
	swap a                                           ; $49af: $cb $37
	ld   h, $00                                      ; $49b1: $26 $00
	ld   l, a                                        ; $49b3: $6f
	add  hl, hl                                      ; $49b4: $29
	add  hl, hl                                      ; $49b5: $29
	ld   bc, $9c00                                   ; $49b6: $01 $00 $9c
	add  hl, bc                                      ; $49b9: $09
	ld   c, $81                                      ; $49ba: $0e $81
	ld   d, h                                        ; $49bc: $54
	ld   e, l                                        ; $49bd: $5d
	ld   a, $02                                      ; $49be: $3e $02
	ld   hl, $d000                                   ; $49c0: $21 $00 $d0
	ld   b, $04                                      ; $49c3: $06 $04
	call EnqueueHDMATransfer                                       ; $49c5: $cd $7c $02
	ret                                              ; $49c8: $c9


Call_004_49c9:
	ld   hl, $d040                                   ; $49c9: $21 $40 $d0
	call Call_004_4148                               ; $49cc: $cd $48 $41
	ld   hl, $d060                                   ; $49cf: $21 $60 $d0
	call Call_004_4148                               ; $49d2: $cd $48 $41
	ld   a, $02                                      ; $49d5: $3e $02
	ld   hl, $d041                                   ; $49d7: $21 $41 $d0
	call Call_004_49fc                               ; $49da: $cd $fc $49
	ld   a, [$cc58]                                  ; $49dd: $fa $58 $cc
	and  $0f                                         ; $49e0: $e6 $0f
	swap a                                           ; $49e2: $cb $37
	ld   h, $00                                      ; $49e4: $26 $00
	ld   l, a                                        ; $49e6: $6f
	add  hl, hl                                      ; $49e7: $29
	add  hl, hl                                      ; $49e8: $29
	ld   bc, $9c00                                   ; $49e9: $01 $00 $9c
	add  hl, bc                                      ; $49ec: $09
	ld   c, $81                                      ; $49ed: $0e $81
	ld   d, h                                        ; $49ef: $54
	ld   e, l                                        ; $49f0: $5d
	ld   a, $02                                      ; $49f1: $3e $02
	ld   hl, $d040                                   ; $49f3: $21 $40 $d0
	ld   b, $04                                      ; $49f6: $06 $04
	call EnqueueHDMATransfer                                       ; $49f8: $cd $7c $02
	ret                                              ; $49fb: $c9


Call_004_49fc:
	call Call_004_4a05                               ; $49fc: $cd $05 $4a
	push bc                                          ; $49ff: $c5
	ld   bc, $000f                                   ; $4a00: $01 $0f $00
	add  hl, bc                                      ; $4a03: $09
	pop  bc                                          ; $4a04: $c1

Call_004_4a05:
	set  0, a                                        ; $4a05: $cb $c7
	ld   [hl+], a                                    ; $4a07: $22
	res  0, a                                        ; $4a08: $cb $87
	set  3, a                                        ; $4a0a: $cb $df
	ld   [hl+], a                                    ; $4a0c: $22
	ld   [hl+], a                                    ; $4a0d: $22
	ld   [hl+], a                                    ; $4a0e: $22
	ld   [hl+], a                                    ; $4a0f: $22
	ld   [hl+], a                                    ; $4a10: $22
	ld   [hl+], a                                    ; $4a11: $22
	ld   [hl+], a                                    ; $4a12: $22
	ld   [hl+], a                                    ; $4a13: $22
	ld   [hl+], a                                    ; $4a14: $22
	ld   [hl+], a                                    ; $4a15: $22
if def(VWF)
	ld   [hl+], a                                    ; $4a1b: $22
	res  3, a                                        ; $4a16: $cb $9f
	ld   [hl+], a                                    ; $4a18: $22
	set  3, a                                        ; $4a19: $cb $df
else
	res  3, a                                        ; $4a16: $cb $9f
	ld   [hl+], a                                    ; $4a18: $22
	set  3, a                                        ; $4a19: $cb $df
	ld   [hl+], a                                    ; $4a1b: $22
endc
	ld   [hl+], a                                    ; $4a1c: $22
	ld   [hl+], a                                    ; $4a1d: $22
	ld   [hl+], a                                    ; $4a1e: $22
	res  3, a                                        ; $4a1f: $cb $9f
	set  0, a                                        ; $4a21: $cb $c7
	ld   [hl+], a                                    ; $4a23: $22
	res  0, a                                        ; $4a24: $cb $87
	ret                                              ; $4a26: $c9


Call_004_4a27:
	ld   a, [$cc58]                                  ; $4a27: $fa $58 $cc
	call Call_004_431b                               ; $4a2a: $cd $1b $43
	call HLequAddrOfRomandoItemMetadata                               ; $4a2d: $cd $1f $50
	ld   bc, $000e                                   ; $4a30: $01 $0e $00
	add  hl, bc                                      ; $4a33: $09
	ld   a, [hl]                                     ; $4a34: $7e
	and  $f0                                         ; $4a35: $e6 $f0
	ld   hl, $d980                                   ; $4a37: $21 $80 $d9

jr_004_4a3a:
	cp   [hl]                                        ; $4a3a: $be
	jr   z, jr_004_4a41                              ; $4a3b: $28 $04

	inc  hl                                          ; $4a3d: $23
	inc  hl                                          ; $4a3e: $23
	jr   jr_004_4a3a                                 ; $4a3f: $18 $f9

jr_004_4a41:
	dec  hl                                          ; $4a41: $2b
	ld   a, [hl]                                     ; $4a42: $7e
	ret                                              ; $4a43: $c9


Call_004_4a44:
	ld   a, [$cc58]                                  ; $4a44: $fa $58 $cc
	call Call_004_431b                               ; $4a47: $cd $1b $43
	call HLequAddrOfRomandoItemMetadata                               ; $4a4a: $cd $1f $50
	ld   bc, $000e                                   ; $4a4d: $01 $0e $00
	add  hl, bc                                      ; $4a50: $09
	ld   a, [hl]                                     ; $4a51: $7e
	and  $f0                                         ; $4a52: $e6 $f0
	ld   hl, $d980                                   ; $4a54: $21 $80 $d9

jr_004_4a57:
	cp   [hl]                                        ; $4a57: $be
	inc  hl                                          ; $4a58: $23
	inc  hl                                          ; $4a59: $23
	jr   nz, jr_004_4a57                             ; $4a5a: $20 $fb

	inc  hl                                          ; $4a5c: $23
	ld   a, [hl]                                     ; $4a5d: $7e
	ret                                              ; $4a5e: $c9


	ld   a, [$cc51]                                  ; $4a5f: $fa $51 $cc
	sla  a                                           ; $4a62: $cb $27
	ld   h, $00                                      ; $4a64: $26 $00
	ld   l, a                                        ; $4a66: $6f
	ld   bc, $4a6f                                   ; $4a67: $01 $6f $4a
	add  hl, bc                                      ; $4a6a: $09
	ld   a, [hl+]                                    ; $4a6b: $2a
	ld   h, [hl]                                     ; $4a6c: $66
	ld   l, a                                        ; $4a6d: $6f
	jp   hl                                          ; $4a6e: $e9


	add  c                                           ; $4a6f: $81
	ld   c, d                                        ; $4a70: $4a
	cp   l                                           ; $4a71: $bd
	ld   c, d                                        ; $4a72: $4a
	db   $dd                                         ; $4a73: $dd
	ld   c, d                                        ; $4a74: $4a
	db   $dd                                         ; $4a75: $dd
	ld   c, d                                        ; $4a76: $4a
	db   $dd                                         ; $4a77: $dd
	ld   c, d                                        ; $4a78: $4a
	db   $dd                                         ; $4a79: $dd
	ld   c, d                                        ; $4a7a: $4a
	db   $dd                                         ; $4a7b: $dd
	ld   c, d                                        ; $4a7c: $4a
	db   $eb                                         ; $4a7d: $eb
	ld   c, d                                        ; $4a7e: $4a
	ld   [bc], a                                     ; $4a7f: $02
	ld   c, e                                        ; $4a80: $4b
	ld   a, [$cc57]                                  ; $4a81: $fa $57 $cc
	add  $04                                         ; $4a84: $c6 $04
	ld   hl, $cc56                                   ; $4a86: $21 $56 $cc
	cp   [hl]                                        ; $4a89: $be
	jr   c, jr_004_4a9a                              ; $4a8a: $38 $0e

	ld   a, [$cc56]                                  ; $4a8c: $fa $56 $cc
	sub  $05                                         ; $4a8f: $d6 $05
	ld   [$cc57], a                                  ; $4a91: $ea $57 $cc
	jr   nc, jr_004_4a9a                             ; $4a94: $30 $04

	xor  a                                           ; $4a96: $af
	ld   [$cc57], a                                  ; $4a97: $ea $57 $cc

jr_004_4a9a:
	ld   a, [$cc57]                                  ; $4a9a: $fa $57 $cc
	and  $0f                                         ; $4a9d: $e6 $0f
	swap a                                           ; $4a9f: $cb $37
	sub  $08                                         ; $4aa1: $d6 $08
	ld   [$cc5a], a                                  ; $4aa3: $ea $5a $cc
	call Call_004_4167                               ; $4aa6: $cd $67 $41
	ld   c, $80                                      ; $4aa9: $0e $80
	ld   de, $9c00                                   ; $4aab: $11 $00 $9c
	ld   a, $07                                      ; $4aae: $3e $07
	ld   hl, $d400                                   ; $4ab0: $21 $00 $d4
	ld   b, $40                                      ; $4ab3: $06 $40
	call EnqueueHDMATransfer                                       ; $4ab5: $cd $7c $02
	ld   hl, $cc51                                   ; $4ab8: $21 $51 $cc
	inc  [hl]                                        ; $4abb: $34
	ret                                              ; $4abc: $c9


	ld   hl, $d340                                   ; $4abd: $21 $40 $d3
if def(VWF)
	ld   bc, $280
else
	ld   bc, $0240                                   ; $4ac0: $01 $40 $02
endc
	ld   de, $0000                                   ; $4ac3: $11 $00 $00
	call CopyEthenDintoHL_BCtimes                                       ; $4ac6: $cd $9f $09
if def(VWF)
	ld   c, $80
	ld   de, $9000
else
	ld   c, $81                                      ; $4ac9: $0e $81
	ld   de, $8900                                   ; $4acb: $11 $00 $89
endc
	ld   a, $02                                      ; $4ace: $3e $02
	ld   hl, $d340                                   ; $4ad0: $21 $40 $d3
if def(VWF)
	ld   b, $50
else
	ld   b, $48                                      ; $4ad3: $06 $48
endc
	call EnqueueHDMATransfer                                       ; $4ad5: $cd $7c $02
	ld   hl, $cc51                                   ; $4ad8: $21 $51 $cc
	inc  [hl]                                        ; $4adb: $34
	ret                                              ; $4adc: $c9


	ld   a, [$cc57]                                  ; $4add: $fa $57 $cc
	ld   hl, $cc51                                   ; $4ae0: $21 $51 $cc
	add  [hl]                                        ; $4ae3: $86
	dec  a                                           ; $4ae4: $3d
	dec  a                                           ; $4ae5: $3d
	inc  [hl]                                        ; $4ae6: $34
	call Call_004_4342                               ; $4ae7: $cd $42 $43
	ret                                              ; $4aea: $c9


	call Call_004_41e0                               ; $4aeb: $cd $e0 $41
	ld   c, $80                                      ; $4aee: $0e $80
	ld   de, $9c00                                   ; $4af0: $11 $00 $9c
	ld   a, $07                                      ; $4af3: $3e $07
	ld   hl, $d400                                   ; $4af5: $21 $00 $d4
	ld   b, $40                                      ; $4af8: $06 $40
	call EnqueueHDMATransfer                                       ; $4afa: $cd $7c $02
	ld   hl, $cc51                                   ; $4afd: $21 $51 $cc
	inc  [hl]                                        ; $4b00: $34
	ret                                              ; $4b01: $c9


	ld   a, [$cc58]                                  ; $4b02: $fa $58 $cc
	call Call_004_442a                               ; $4b05: $cd $2a $44
	ld   a, $02                                      ; $4b08: $3e $02
	ld   [$cc50], a                                  ; $4b0a: $ea $50 $cc
	xor  a                                           ; $4b0d: $af
	ld   [$cc51], a                                  ; $4b0e: $ea $51 $cc
	ret                                              ; $4b11: $c9


	ld   a, $20                                      ; $4b12: $3e $20
	call PlaySoundEffect                                       ; $4b14: $cd $df $1a
	ld   a, [$cc58]                                  ; $4b17: $fa $58 $cc
	call Call_004_442a                               ; $4b1a: $cd $2a $44
	ld   a, $08                                      ; $4b1d: $3e $08
	ld   [$cc50], a                                  ; $4b1f: $ea $50 $cc
	xor  a                                           ; $4b22: $af
	ld   [$cc51], a                                  ; $4b23: $ea $51 $cc
	ret                                              ; $4b26: $c9


	ld   a, $20                                      ; $4b27: $3e $20
	call PlaySoundEffect                                       ; $4b29: $cd $df $1a
	ld   a, [$cc58]                                  ; $4b2c: $fa $58 $cc
	call Call_004_442a                               ; $4b2f: $cd $2a $44
	ld   a, $08                                      ; $4b32: $3e $08
	ld   [$cc50], a                                  ; $4b34: $ea $50 $cc
	xor  a                                           ; $4b37: $af
	ld   [$cc51], a                                  ; $4b38: $ea $51 $cc
	ret                                              ; $4b3b: $c9


	ld   a, [$cc51]                                  ; $4b3c: $fa $51 $cc
	sla  a                                           ; $4b3f: $cb $27
	ld   h, $00                                      ; $4b41: $26 $00
	ld   l, a                                        ; $4b43: $6f
	ld   bc, $4b4c                                   ; $4b44: $01 $4c $4b
	add  hl, bc                                      ; $4b47: $09
	ld   a, [hl+]                                    ; $4b48: $2a
	ld   h, [hl]                                     ; $4b49: $66
	ld   l, a                                        ; $4b4a: $6f
	jp   hl                                          ; $4b4b: $e9


	ld   d, h                                        ; $4b4c: $54
	ld   c, e                                        ; $4b4d: $4b
	ld   a, a                                        ; $4b4e: $7f
	ld   c, e                                        ; $4b4f: $4b
	adc  h                                           ; $4b50: $8c
	ld   c, e                                        ; $4b51: $4b
	sbc  c                                           ; $4b52: $99
	ld   c, e                                        ; $4b53: $4b
	ld   a, $20                                      ; $4b54: $3e $20
	call PlaySoundEffect                                       ; $4b56: $cd $df $1a
	ld   a, [$cc58]                                  ; $4b59: $fa $58 $cc
	call Call_004_4342                               ; $4b5c: $cd $42 $43
	ld   hl, $cc51                                   ; $4b5f: $21 $51 $cc
	ld   a, [$cc5b]                                  ; $4b62: $fa $5b $cc
	cp   $04                                         ; $4b65: $fe $04
	jr   c, jr_004_4b73                              ; $4b67: $38 $0a

	ld   a, [$cc5a]                                  ; $4b69: $fa $5a $cc
	sub  $04                                         ; $4b6c: $d6 $04
	ld   [$cc5a], a                                  ; $4b6e: $ea $5a $cc
	inc  [hl]                                        ; $4b71: $34
	ret                                              ; $4b72: $c9


jr_004_4b73:
	ld   a, [$cc5a]                                  ; $4b73: $fa $5a $cc
	sub  $08                                         ; $4b76: $d6 $08
	ld   [$cc5a], a                                  ; $4b78: $ea $5a $cc
	inc  [hl]                                        ; $4b7b: $34
	inc  [hl]                                        ; $4b7c: $34
	inc  [hl]                                        ; $4b7d: $34
	ret                                              ; $4b7e: $c9


	ld   a, [$cc5a]                                  ; $4b7f: $fa $5a $cc
	sub  $04                                         ; $4b82: $d6 $04
	ld   [$cc5a], a                                  ; $4b84: $ea $5a $cc
	ld   hl, $cc51                                   ; $4b87: $21 $51 $cc
	inc  [hl]                                        ; $4b8a: $34
	ret                                              ; $4b8b: $c9


	ld   a, [$cc5a]                                  ; $4b8c: $fa $5a $cc
	sub  $04                                         ; $4b8f: $d6 $04
	ld   [$cc5a], a                                  ; $4b91: $ea $5a $cc
	ld   hl, $cc51                                   ; $4b94: $21 $51 $cc
	inc  [hl]                                        ; $4b97: $34
	ret                                              ; $4b98: $c9


	ld   a, [$cc58]                                  ; $4b99: $fa $58 $cc
	call Call_004_442a                               ; $4b9c: $cd $2a $44
	ld   a, [$cc5b]                                  ; $4b9f: $fa $5b $cc
	cp   $04                                         ; $4ba2: $fe $04
	jr   c, jr_004_4bb0                              ; $4ba4: $38 $0a

	ld   a, [$cc5a]                                  ; $4ba6: $fa $5a $cc
	sub  $04                                         ; $4ba9: $d6 $04
	ld   [$cc5a], a                                  ; $4bab: $ea $5a $cc
	jr   jr_004_4bb8                                 ; $4bae: $18 $08

jr_004_4bb0:
	ld   a, [$cc5a]                                  ; $4bb0: $fa $5a $cc
	sub  $08                                         ; $4bb3: $d6 $08
	ld   [$cc5a], a                                  ; $4bb5: $ea $5a $cc

jr_004_4bb8:
	ld   a, $08                                      ; $4bb8: $3e $08
	ld   [$cc50], a                                  ; $4bba: $ea $50 $cc
	xor  a                                           ; $4bbd: $af
	ld   [$cc51], a                                  ; $4bbe: $ea $51 $cc
	ret                                              ; $4bc1: $c9


	ld   a, [$cc51]                                  ; $4bc2: $fa $51 $cc
	sla  a                                           ; $4bc5: $cb $27
	ld   h, $00                                      ; $4bc7: $26 $00
	ld   l, a                                        ; $4bc9: $6f
	ld   bc, $4bd2                                   ; $4bca: $01 $d2 $4b
	add  hl, bc                                      ; $4bcd: $09
	ld   a, [hl+]                                    ; $4bce: $2a
	ld   h, [hl]                                     ; $4bcf: $66
	ld   l, a                                        ; $4bd0: $6f
	jp   hl                                          ; $4bd1: $e9


	jp   c, $054b                                    ; $4bd2: $da $4b $05

	ld   c, h                                        ; $4bd5: $4c
	ld   [de], a                                     ; $4bd6: $12
	ld   c, h                                        ; $4bd7: $4c
	rra                                              ; $4bd8: $1f
	ld   c, h                                        ; $4bd9: $4c
	ld   a, $20                                      ; $4bda: $3e $20
	call PlaySoundEffect                                       ; $4bdc: $cd $df $1a
	ld   a, [$cc58]                                  ; $4bdf: $fa $58 $cc
	call Call_004_4342                               ; $4be2: $cd $42 $43
	ld   hl, $cc51                                   ; $4be5: $21 $51 $cc
	ld   a, [$cc5b]                                  ; $4be8: $fa $5b $cc
	cp   $04                                         ; $4beb: $fe $04
	jr   c, jr_004_4bf9                              ; $4bed: $38 $0a

	ld   a, [$cc5a]                                  ; $4bef: $fa $5a $cc
	add  $04                                         ; $4bf2: $c6 $04
	ld   [$cc5a], a                                  ; $4bf4: $ea $5a $cc
	inc  [hl]                                        ; $4bf7: $34
	ret                                              ; $4bf8: $c9


jr_004_4bf9:
	ld   a, [$cc5a]                                  ; $4bf9: $fa $5a $cc
	add  $08                                         ; $4bfc: $c6 $08
	ld   [$cc5a], a                                  ; $4bfe: $ea $5a $cc
	inc  [hl]                                        ; $4c01: $34
	inc  [hl]                                        ; $4c02: $34
	inc  [hl]                                        ; $4c03: $34
	ret                                              ; $4c04: $c9


	ld   a, [$cc5a]                                  ; $4c05: $fa $5a $cc
	add  $04                                         ; $4c08: $c6 $04
	ld   [$cc5a], a                                  ; $4c0a: $ea $5a $cc
	ld   hl, $cc51                                   ; $4c0d: $21 $51 $cc
	inc  [hl]                                        ; $4c10: $34
	ret                                              ; $4c11: $c9


	ld   a, [$cc5a]                                  ; $4c12: $fa $5a $cc
	add  $04                                         ; $4c15: $c6 $04
	ld   [$cc5a], a                                  ; $4c17: $ea $5a $cc
	ld   hl, $cc51                                   ; $4c1a: $21 $51 $cc
	inc  [hl]                                        ; $4c1d: $34
	ret                                              ; $4c1e: $c9


	ld   a, [$cc58]                                  ; $4c1f: $fa $58 $cc
	call Call_004_442a                               ; $4c22: $cd $2a $44
	ld   a, [$cc5b]                                  ; $4c25: $fa $5b $cc
	cp   $04                                         ; $4c28: $fe $04
	jr   c, jr_004_4c36                              ; $4c2a: $38 $0a

	ld   a, [$cc5a]                                  ; $4c2c: $fa $5a $cc
	add  $04                                         ; $4c2f: $c6 $04
	ld   [$cc5a], a                                  ; $4c31: $ea $5a $cc
	jr   jr_004_4c3e                                 ; $4c34: $18 $08

jr_004_4c36:
	ld   a, [$cc5a]                                  ; $4c36: $fa $5a $cc
	add  $08                                         ; $4c39: $c6 $08
	ld   [$cc5a], a                                  ; $4c3b: $ea $5a $cc

jr_004_4c3e:
	ld   a, $08                                      ; $4c3e: $3e $08
	ld   [$cc50], a                                  ; $4c40: $ea $50 $cc
	xor  a                                           ; $4c43: $af
	ld   [$cc51], a                                  ; $4c44: $ea $51 $cc
	ret                                              ; $4c47: $c9


	ld   hl, $cc51                                   ; $4c48: $21 $51 $cc
	inc  [hl]                                        ; $4c4b: $34
	ld   a, [$cc5b]                                  ; $4c4c: $fa $5b $cc
	cp   [hl]                                        ; $4c4f: $be
	ret  nc                                          ; $4c50: $d0

	ld   a, $02                                      ; $4c51: $3e $02
	ld   [$cc50], a                                  ; $4c53: $ea $50 $cc
	xor  a                                           ; $4c56: $af
	ld   [$cc51], a                                  ; $4c57: $ea $51 $cc
	ret                                              ; $4c5a: $c9


	call Call_004_4972                               ; $4c5b: $cd $72 $49
	ld   hl, $cc51                                   ; $4c5e: $21 $51 $cc
	ld   a, [hl]                                     ; $4c61: $7e
	or   a                                           ; $4c62: $b7
	jr   nz, jr_004_4c6e                             ; $4c63: $20 $09

	xor  a                                           ; $4c65: $af
	ld   [$cc5f], a                                  ; $4c66: $ea $5f $cc
	ld   a, $23                                      ; $4c69: $3e $23
	call PlaySoundEffect                                       ; $4c6b: $cd $df $1a

jr_004_4c6e:
	ld   a, [hl]                                     ; $4c6e: $7e
	inc  [hl]                                        ; $4c6f: $34
	sla  a                                           ; $4c70: $cb $27
	ld   h, $00                                      ; $4c72: $26 $00
	ld   l, a                                        ; $4c74: $6f
	ld   bc, $4c7d                                   ; $4c75: $01 $7d $4c
	add  hl, bc                                      ; $4c78: $09
	ld   a, [hl+]                                    ; $4c79: $2a
	ld   h, [hl]                                     ; $4c7a: $66
	ld   l, a                                        ; $4c7b: $6f
	jp   hl                                          ; $4c7c: $e9


	adc  c                                           ; $4c7d: $89
	ld   c, h                                        ; $4c7e: $4c
	sub  c                                           ; $4c7f: $91
	ld   c, h                                        ; $4c80: $4c
	sub  c                                           ; $4c81: $91
	ld   c, h                                        ; $4c82: $4c
	sub  h                                           ; $4c83: $94
	ld   c, h                                        ; $4c84: $4c
	sub  h                                           ; $4c85: $94
	ld   c, h                                        ; $4c86: $4c
	sub  a                                           ; $4c87: $97
	ld   c, h                                        ; $4c88: $4c
	ld   hl, wIE                                   ; $4c89: $21 $0d $c2
	res  1, [hl]                                     ; $4c8c: $cb $8e
	jp   Jump_004_4ca3                               ; $4c8e: $c3 $a3 $4c


	jp   Jump_004_4d30                               ; $4c91: $c3 $30 $4d


	jp   Jump_004_4d5a                               ; $4c94: $c3 $5a $4d


	call Call_004_4d78                               ; $4c97: $cd $78 $4d
	ld   hl, $cc50                                   ; $4c9a: $21 $50 $cc
	inc  [hl]                                        ; $4c9d: $34
	xor  a                                           ; $4c9e: $af
	ld   [$cc51], a                                  ; $4c9f: $ea $51 $cc
	ret                                              ; $4ca2: $c9


Call_004_4ca3:
Jump_004_4ca3:
	ld   a, [wWramBank]                                  ; $4ca3: $fa $93 $c2
	push af                                          ; $4ca6: $f5
	ld   a, $07                                      ; $4ca7: $3e $07
	ld   [wWramBank], a                                  ; $4ca9: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4cac: $e0 $70
	call Call_004_4127                               ; $4cae: $cd $27 $41
	call Call_004_41a7                               ; $4cb1: $cd $a7 $41
	ld   a, [wWramBank]                                  ; $4cb4: $fa $93 $c2
	push af                                          ; $4cb7: $f5
	ld   a, $02                                      ; $4cb8: $3e $02
	ld   [wWramBank], a                                  ; $4cba: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4cbd: $e0 $70
	call Call_004_4486                               ; $4cbf: $cd $86 $44
	ld   h, $00                                      ; $4cc2: $26 $00
	swap a                                           ; $4cc4: $cb $37
	ld   l, a                                        ; $4cc6: $6f
	add  hl, hl                                      ; $4cc7: $29
	pop  af                                          ; $4cc8: $f1
	ld   [wWramBank], a                                  ; $4cc9: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4ccc: $e0 $70
	ld   de, $001d                                   ; $4cce: $11 $1d $00
	push hl                                          ; $4cd1: $e5
	ld   bc, $d011                                   ; $4cd2: $01 $11 $d0
	add  hl, bc                                      ; $4cd5: $09

jr_004_4cd6:
	ld   a, $01                                      ; $4cd6: $3e $01

jr_004_4cd8:
	ld   [hl+], a                                    ; $4cd8: $22
	ld   [hl+], a                                    ; $4cd9: $22
	ld   [hl+], a                                    ; $4cda: $22
	add  hl, de                                      ; $4cdb: $19
	ld   [hl+], a                                    ; $4cdc: $22
	ld   [hl+], a                                    ; $4cdd: $22

jr_004_4cde:
	ld   [hl+], a                                    ; $4cde: $22
	pop  hl                                          ; $4cdf: $e1

jr_004_4ce0:
	ld   bc, $d411                                   ; $4ce0: $01 $11 $d4
	add  hl, bc                                      ; $4ce3: $09
	ld   a, $80                                      ; $4ce4: $3e $80
	ld   [hl+], a                                    ; $4ce6: $22
	ld   [hl+], a                                    ; $4ce7: $22
	ld   a, $ab                                      ; $4ce8: $3e $ab
	ld   [hl+], a                                    ; $4cea: $22
	add  hl, de                                      ; $4ceb: $19
	ld   a, $80                                      ; $4cec: $3e $80
	ld   [hl+], a                                    ; $4cee: $22
	ld   [hl+], a                                    ; $4cef: $22
	ld   a, $ab                                      ; $4cf0: $3e $ab
	ld   [hl+], a                                    ; $4cf2: $22
	ld   a, [$cc58]                                  ; $4cf3: $fa $58 $cc
	ld   hl, $cc57                                   ; $4cf6: $21 $57 $cc
	sub  [hl]                                        ; $4cf9: $96
	swap a                                           ; $4cfa: $cb $37
	sla  a                                           ; $4cfc: $cb $27
	ld   h, $00                                      ; $4cfe: $26 $00
	ld   l, a                                        ; $4d00: $6f
	add  hl, hl                                      ; $4d01: $29
	ld   bc, $d001                                   ; $4d02: $01 $01 $d0
	add  hl, bc                                      ; $4d05: $09
	ld   a, $02                                      ; $4d06: $3e $02
	call Call_004_49fc                               ; $4d08: $cd $fc $49
	pop  af                                          ; $4d0b: $f1
	ld   [wWramBank], a                                  ; $4d0c: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4d0f: $e0 $70
	ld   c, $81                                      ; $4d11: $0e $81
	ld   de, $99e0                                   ; $4d13: $11 $e0 $99
	ld   a, $07                                      ; $4d16: $3e $07
	ld   hl, $d000                                   ; $4d18: $21 $00 $d0
	ld   b, $18                                      ; $4d1b: $06 $18
	call EnqueueHDMATransfer                                       ; $4d1d: $cd $7c $02
	ld   c, $80                                      ; $4d20: $0e $80
	ld   de, $99e0                                   ; $4d22: $11 $e0 $99
	ld   a, $07                                      ; $4d25: $3e $07
	ld   hl, $d400                                   ; $4d27: $21 $00 $d4
	ld   b, $18                                      ; $4d2a: $06 $18
	call EnqueueHDMATransfer                                       ; $4d2c: $cd $7c $02
	ret                                              ; $4d2f: $c9


Jump_004_4d30:
	ld   a, $09                                      ; $4d30: $3e $09
	ld   [wSpriteGroup], a                                  ; $4d32: $ea $1a $c2
	ld   a, [$cc58]                                  ; $4d35: $fa $58 $cc
	ld   hl, $cc57                                   ; $4d38: $21 $57 $cc
	sub  [hl]                                        ; $4d3b: $96
	sla  a                                           ; $4d3c: $cb $27
	ld   b, $00                                      ; $4d3e: $06 $00
	ld   c, a                                        ; $4d40: $4f
	ld   hl, $4d4e                                   ; $4d41: $21 $4e $4d
	add  hl, bc                                      ; $4d44: $09
	ld   c, [hl]                                     ; $4d45: $4e
	ld   b, $50                                      ; $4d46: $06 $50
	ld   a, $22                                      ; $4d48: $3e $22
	call LoadSpriteFromMainTable                                       ; $4d4a: $cd $16 $0e
	ret                                              ; $4d4d: $c9


	jr   z, jr_004_4cd6                              ; $4d4e: $28 $86

	jr   z, jr_004_4cd8                              ; $4d50: $28 $86

	jr   c, @-$38                                    ; $4d52: $38 $c6

	jr   @+$48                                       ; $4d54: $18 $46

	jr   z, jr_004_4cde                              ; $4d56: $28 $86

	jr   z, jr_004_4ce0                              ; $4d58: $28 $86

Jump_004_4d5a:
	ld   a, $09                                      ; $4d5a: $3e $09
	ld   [wSpriteGroup], a                                  ; $4d5c: $ea $1a $c2
	ld   a, [$cc58]                                  ; $4d5f: $fa $58 $cc
	ld   hl, $cc57                                   ; $4d62: $21 $57 $cc
	sub  [hl]                                        ; $4d65: $96
	sla  a                                           ; $4d66: $cb $27
	ld   b, $00                                      ; $4d68: $06 $00
	ld   c, a                                        ; $4d6a: $4f
	ld   hl, $4d4e                                   ; $4d6b: $21 $4e $4d
	add  hl, bc                                      ; $4d6e: $09
	ld   c, [hl]                                     ; $4d6f: $4e
	ld   b, $50                                      ; $4d70: $06 $50
	ld   a, $23                                      ; $4d72: $3e $23
	call LoadSpriteFromMainTable                                       ; $4d74: $cd $16 $0e
	ret                                              ; $4d77: $c9


Call_004_4d78:
	ld   a, [wWramBank]                                  ; $4d78: $fa $93 $c2
	push af                                          ; $4d7b: $f5
	ld   a, $07                                      ; $4d7c: $3e $07
	ld   [wWramBank], a                                  ; $4d7e: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4d81: $e0 $70
	ld   a, [$cc58]                                  ; $4d83: $fa $58 $cc
	ld   hl, $cc57                                   ; $4d86: $21 $57 $cc
	sub  [hl]                                        ; $4d89: $96
	sla  a                                           ; $4d8a: $cb $27
	ld   b, $00                                      ; $4d8c: $06 $00
	ld   c, a                                        ; $4d8e: $4f
	ld   hl, $4d4f                                   ; $4d8f: $21 $4f $4d
	add  hl, bc                                      ; $4d92: $09
	ld   b, $00                                      ; $4d93: $06 $00
	ld   c, [hl]                                     ; $4d95: $4e
	push bc                                          ; $4d96: $c5
	ld   hl, $d000                                   ; $4d97: $21 $00 $d0
	add  hl, bc                                      ; $4d9a: $09
	ld   a, BANK(TileAttr_RomandoTreasureInvConfirmPopup)                                      ; $4d9b: $3e $a4
	ld   de, TileAttr_RomandoTreasureInvConfirmPopup                                   ; $4d9d: $11 $99 $43
	ld   bc, $0804                                   ; $4da0: $01 $04 $08
	call FarCopyLayout                                       ; $4da3: $cd $2c $0b

; TileMap_RomandoTreasureInvConfirmPopup
	pop  bc                                          ; $4da6: $c1
	ld   hl, $d400                                   ; $4da7: $21 $00 $d4
	add  hl, bc                                      ; $4daa: $09
	ld   bc, $0804                                   ; $4dab: $01 $04 $08
	call FarCopyLayout                                       ; $4dae: $cd $2c $0b
	pop  af                                          ; $4db1: $f1
	ld   [wWramBank], a                                  ; $4db2: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4db5: $e0 $70
	ld   c, $81                                      ; $4db7: $0e $81
	ld   de, $99e0                                   ; $4db9: $11 $e0 $99
	ld   a, $07                                      ; $4dbc: $3e $07
	ld   hl, $d000                                   ; $4dbe: $21 $00 $d0
	ld   b, $18                                      ; $4dc1: $06 $18
	call EnqueueHDMATransfer                                       ; $4dc3: $cd $7c $02
	ld   c, $80                                      ; $4dc6: $0e $80
	ld   de, $99e0                                   ; $4dc8: $11 $e0 $99
	ld   a, $07                                      ; $4dcb: $3e $07
	ld   hl, $d400                                   ; $4dcd: $21 $00 $d4
	ld   b, $18                                      ; $4dd0: $06 $18
	call EnqueueHDMATransfer                                       ; $4dd2: $cd $7c $02
	ret                                              ; $4dd5: $c9


Call_004_4dd6:
	ld   a, $09                                      ; $4dd6: $3e $09
	ld   [wSpriteGroup], a                                  ; $4dd8: $ea $1a $c2
	ld   a, [$cc58]                                  ; $4ddb: $fa $58 $cc
	ld   hl, $cc57                                   ; $4dde: $21 $57 $cc
	sub  [hl]                                        ; $4de1: $96
	sla  a                                           ; $4de2: $cb $27
	ld   b, $00                                      ; $4de4: $06 $00
	ld   c, a                                        ; $4de6: $4f
	ld   hl, $4d4e                                   ; $4de7: $21 $4e $4d
	add  hl, bc                                      ; $4dea: $09
	ld   a, [hl]                                     ; $4deb: $7e
	add  $14                                         ; $4dec: $c6 $14
	ld   c, a                                        ; $4dee: $4f
	ld   b, $34                                      ; $4def: $06 $34
	ld   a, [$cc5f]                                  ; $4df1: $fa $5f $cc
	or   a                                           ; $4df4: $b7
	jr   z, jr_004_4df9                              ; $4df5: $28 $02

	ld   b, $4c                                      ; $4df7: $06 $4c

jr_004_4df9:
	ld   a, $24                                      ; $4df9: $3e $24
	call LoadSpriteFromMainTable                                       ; $4dfb: $cd $16 $0e
	ret                                              ; $4dfe: $c9


	call Call_004_4972                               ; $4dff: $cd $72 $49
	ld   hl, $cc51                                   ; $4e02: $21 $51 $cc
	ld   a, [hl]                                     ; $4e05: $7e
	inc  [hl]                                        ; $4e06: $34
	bit  4, a                                        ; $4e07: $cb $67
	call z, Call_004_4dd6                            ; $4e09: $cc $d6 $4d
	ld   a, [wInGameButtonsPressed]                                  ; $4e0c: $fa $10 $c2
	bit  0, a                                        ; $4e0f: $cb $47
	jr   z, jr_004_4e27                              ; $4e11: $28 $14

	ld   a, $21                                      ; $4e13: $3e $21
	call PlaySoundEffect                                       ; $4e15: $cd $df $1a
	ld   a, [$cc5f]                                  ; $4e18: $fa $5f $cc
	or   a                                           ; $4e1b: $b7
	jr   nz, jr_004_4e33                             ; $4e1c: $20 $15

	ld   hl, $cc50                                   ; $4e1e: $21 $50 $cc
	inc  [hl]                                        ; $4e21: $34
	xor  a                                           ; $4e22: $af
	ld   [$cc51], a                                  ; $4e23: $ea $51 $cc
	ret                                              ; $4e26: $c9


jr_004_4e27:
	ld   a, [wInGameButtonsPressed]                                  ; $4e27: $fa $10 $c2
	bit  1, a                                        ; $4e2a: $cb $4f
	jr   z, jr_004_4e42                              ; $4e2c: $28 $14

	ld   a, $22                                      ; $4e2e: $3e $22
	call PlaySoundEffect                                       ; $4e30: $cd $df $1a

jr_004_4e33:
	ld   a, $01                                      ; $4e33: $3e $01
	ld   [$cc5f], a                                  ; $4e35: $ea $5f $cc
	ld   a, $0d                                      ; $4e38: $3e $0d
	ld   [$cc50], a                                  ; $4e3a: $ea $50 $cc
	xor  a                                           ; $4e3d: $af
	ld   [$cc51], a                                  ; $4e3e: $ea $51 $cc
	ret                                              ; $4e41: $c9


jr_004_4e42:
	bit  5, a                                        ; $4e42: $cb $6f
	jr   z, jr_004_4e55                              ; $4e44: $28 $0f

	ld   a, [$cc5f]                                  ; $4e46: $fa $5f $cc
	or   a                                           ; $4e49: $b7
	ret  z                                           ; $4e4a: $c8

	ld   a, $20                                      ; $4e4b: $3e $20
	call PlaySoundEffect                                       ; $4e4d: $cd $df $1a
	xor  a                                           ; $4e50: $af
	ld   [$cc5f], a                                  ; $4e51: $ea $5f $cc
	ret                                              ; $4e54: $c9


jr_004_4e55:
	bit  4, a                                        ; $4e55: $cb $67
	ret  z                                           ; $4e57: $c8

	ld   a, [$cc5f]                                  ; $4e58: $fa $5f $cc
	or   a                                           ; $4e5b: $b7
	ret  nz                                          ; $4e5c: $c0

	ld   a, $20                                      ; $4e5d: $3e $20
	call PlaySoundEffect                                       ; $4e5f: $cd $df $1a
	ld   a, $01                                      ; $4e62: $3e $01
	ld   [$cc5f], a                                  ; $4e64: $ea $5f $cc
	ret                                              ; $4e67: $c9


	call Call_004_4972                               ; $4e68: $cd $72 $49
	ld   hl, $cc51                                   ; $4e6b: $21 $51 $cc
	ld   a, [hl]                                     ; $4e6e: $7e
	inc  [hl]                                        ; $4e6f: $34
	cp   $28                                         ; $4e70: $fe $28
	jr   nc, jr_004_4e85                             ; $4e72: $30 $11

	srl  a                                           ; $4e74: $cb $3f
	srl  a                                           ; $4e76: $cb $3f
	ld   h, $00                                      ; $4e78: $26 $00
	ld   l, a                                        ; $4e7a: $6f
	ld   bc, $4e91                                   ; $4e7b: $01 $91 $4e
	add  hl, bc                                      ; $4e7e: $09
	ld   a, [hl]                                     ; $4e7f: $7e
	or   a                                           ; $4e80: $b7
	call nz, Call_004_4dd6                           ; $4e81: $c4 $d6 $4d
	ret                                              ; $4e84: $c9


jr_004_4e85:
	call Call_004_4dd6                               ; $4e85: $cd $d6 $4d
	ld   hl, $cc50                                   ; $4e88: $21 $50 $cc
	inc  [hl]                                        ; $4e8b: $34
	xor  a                                           ; $4e8c: $af
	ld   [$cc51], a                                  ; $4e8d: $ea $51 $cc
	ret                                              ; $4e90: $c9


	nop                                              ; $4e91: $00
	rst  $38                                         ; $4e92: $ff
	nop                                              ; $4e93: $00
	rst  $38                                         ; $4e94: $ff
	nop                                              ; $4e95: $00
	rst  $38                                         ; $4e96: $ff
	rst  $38                                         ; $4e97: $ff
	rst  $38                                         ; $4e98: $ff
	rst  $38                                         ; $4e99: $ff
	rst  $38                                         ; $4e9a: $ff
	call Call_004_4972                               ; $4e9b: $cd $72 $49
	call Call_004_4dd6                               ; $4e9e: $cd $d6 $4d
	ld   a, [$cc51]                                  ; $4ea1: $fa $51 $cc
	or   a                                           ; $4ea4: $b7
	jr   nz, jr_004_4f14                             ; $4ea5: $20 $6d

	ld   a, $11                                      ; $4ea7: $3e $11
	call PlaySoundEffect                                       ; $4ea9: $cd $df $1a
	ld   a, [$cc59]                                  ; $4eac: $fa $59 $cc
	call Call_004_431b                               ; $4eaf: $cd $1b $43
	call HLequAddrOfRomandoItemMetadata                               ; $4eb2: $cd $1f $50
	ld   bc, $0002                                   ; $4eb5: $01 $02 $00
	add  hl, bc                                      ; $4eb8: $09
	ld   a, [hl+]                                    ; $4eb9: $2a
	ld   h, [hl]                                     ; $4eba: $66
	ld   l, a                                        ; $4ebb: $6f
	ld   a, $ff                                      ; $4ebc: $3e $ff

	M_FarCall SetOrUnsetNextFlag1

	ld   a, [$cc59]                                  ; $4ed2: $fa $59 $cc
	call Call_004_54c5                               ; $4ed5: $cd $c5 $54
	push hl                                          ; $4ed8: $e5
	push hl                                          ; $4ed9: $e5
	push af                                          ; $4eda: $f5
	ld   a, $4e                                      ; $4edb: $3e $4e
	ld   [wFarCallAddr], a                                  ; $4edd: $ea $98 $c2
	ld   a, $42                                      ; $4ee0: $3e $42
	ld   [wFarCallAddr+1], a                                  ; $4ee2: $ea $99 $c2
	ld   a, $0a                                      ; $4ee5: $3e $0a
	ld   [wFarCallBank], a                                  ; $4ee7: $ea $9a $c2
	pop  af                                          ; $4eea: $f1
	call FarCall                                       ; $4eeb: $cd $62 $09
	pop  bc                                          ; $4eee: $c1
	call Call_004_5595                               ; $4eef: $cd $95 $55
	push af                                          ; $4ef2: $f5
	ld   a, $3c                                      ; $4ef3: $3e $3c
	ld   [wFarCallAddr], a                                  ; $4ef5: $ea $98 $c2
	ld   a, $42                                      ; $4ef8: $3e $42
	ld   [wFarCallAddr+1], a                                  ; $4efa: $ea $99 $c2
	ld   a, $0a                                      ; $4efd: $3e $0a
	ld   [wFarCallBank], a                                  ; $4eff: $ea $9a $c2
	pop  af                                          ; $4f02: $f1
	call FarCall                                       ; $4f03: $cd $62 $09
	pop  hl                                          ; $4f06: $e1
	ld   a, $0a                                      ; $4f07: $3e $0a
	call LAequHLdivmodA                                       ; $4f09: $cd $50 $0c
	ld   a, l                                        ; $4f0c: $7d
	ld   [$cc62], a                                  ; $4f0d: $ea $62 $cc
	ld   a, h                                        ; $4f10: $7c
	ld   [$cc63], a                                  ; $4f11: $ea $63 $cc

jr_004_4f14:
	ld   hl, $cc51                                   ; $4f14: $21 $51 $cc
	ld   a, [hl]                                     ; $4f17: $7e
	inc  [hl]                                        ; $4f18: $34
	cp   $0a                                         ; $4f19: $fe $0a
	jr   nc, jr_004_4f39                             ; $4f1b: $30 $1c

	ld   a, [$cc60]                                  ; $4f1d: $fa $60 $cc
	ld   l, a                                        ; $4f20: $6f
	ld   a, [$cc61]                                  ; $4f21: $fa $61 $cc
	ld   h, a                                        ; $4f24: $67
	ld   a, [$cc62]                                  ; $4f25: $fa $62 $cc
	ld   c, a                                        ; $4f28: $4f
	ld   a, [$cc63]                                  ; $4f29: $fa $63 $cc
	ld   b, a                                        ; $4f2c: $47
	call Call_004_5595                               ; $4f2d: $cd $95 $55
	ld   a, l                                        ; $4f30: $7d
	ld   [$cc60], a                                  ; $4f31: $ea $60 $cc
	ld   a, h                                        ; $4f34: $7c
	ld   [$cc61], a                                  ; $4f35: $ea $61 $cc
	ret                                              ; $4f38: $c9


jr_004_4f39:
	ld   hl, $cc50                                   ; $4f39: $21 $50 $cc
	inc  [hl]                                        ; $4f3c: $34
	xor  a                                           ; $4f3d: $af
	ld   [$cc51], a                                  ; $4f3e: $ea $51 $cc
	ret                                              ; $4f41: $c9


	call Call_004_4972                               ; $4f42: $cd $72 $49
	ld   hl, $cc51                                   ; $4f45: $21 $51 $cc
	ld   a, [hl]                                     ; $4f48: $7e
	or   a                                           ; $4f49: $b7
	jr   nz, jr_004_4f51                             ; $4f4a: $20 $05

	ld   a, $24                                      ; $4f4c: $3e $24
	call PlaySoundEffect                                       ; $4f4e: $cd $df $1a

jr_004_4f51:
	ld   a, [hl]                                     ; $4f51: $7e
	inc  [hl]                                        ; $4f52: $34
	sla  a                                           ; $4f53: $cb $27
	ld   h, $00                                      ; $4f55: $26 $00
	ld   l, a                                        ; $4f57: $6f
	ld   bc, $4f60                                   ; $4f58: $01 $60 $4f
	add  hl, bc                                      ; $4f5b: $09
	ld   a, [hl+]                                    ; $4f5c: $2a
	ld   h, [hl]                                     ; $4f5d: $66
	ld   l, a                                        ; $4f5e: $6f
	jp   hl                                          ; $4f5f: $e9


	ld   l, h                                        ; $4f60: $6c
	ld   c, a                                        ; $4f61: $4f
	ld   l, a                                        ; $4f62: $6f
	ld   c, a                                        ; $4f63: $4f
	ld   l, a                                        ; $4f64: $6f
	ld   c, a                                        ; $4f65: $4f
	ld   [hl], d                                     ; $4f66: $72
	ld   c, a                                        ; $4f67: $4f
	ld   [hl], d                                     ; $4f68: $72
	ld   c, a                                        ; $4f69: $4f
	ld   [hl], l                                     ; $4f6a: $75
	ld   c, a                                        ; $4f6b: $4f
	call Call_004_4ca3                               ; $4f6c: $cd $a3 $4c
	jp   Jump_004_4d5a                               ; $4f6f: $c3 $5a $4d


	jp   Jump_004_4d30                               ; $4f72: $c3 $30 $4d


	ld   hl, wIE                                   ; $4f75: $21 $0d $c2
	set  1, [hl]                                     ; $4f78: $cb $ce
	ld   a, [$cc5f]                                  ; $4f7a: $fa $5f $cc
	or   a                                           ; $4f7d: $b7
	jr   nz, jr_004_4fc4                             ; $4f7e: $20 $44

	call Call_004_4253                               ; $4f80: $cd $53 $42
	ld   a, [$cc56]                                  ; $4f83: $fa $56 $cc
	or   a                                           ; $4f86: $b7
	jr   z, jr_004_4fc0                              ; $4f87: $28 $37

	call Call_004_499e                               ; $4f89: $cd $9e $49
	ld   a, [$cc58]                                  ; $4f8c: $fa $58 $cc
	or   a                                           ; $4f8f: $b7
	jr   z, jr_004_4fbc                              ; $4f90: $28 $2a

	ld   a, [$cc57]                                  ; $4f92: $fa $57 $cc
	add  $04                                         ; $4f95: $c6 $04
	ld   hl, $cc56                                   ; $4f97: $21 $56 $cc
	cp   [hl]                                        ; $4f9a: $be
	jr   c, jr_004_4fbc                              ; $4f9b: $38 $1f

	ld   a, [$cc56]                                  ; $4f9d: $fa $56 $cc
	cp   $05                                         ; $4fa0: $fe $05
	jr   nc, jr_004_4fb0                             ; $4fa2: $30 $0c

	ld   a, [$cc58]                                  ; $4fa4: $fa $58 $cc
	cp   [hl]                                        ; $4fa7: $be
	jr   c, jr_004_4fbc                              ; $4fa8: $38 $12

	ld   hl, $cc58                                   ; $4faa: $21 $58 $cc
	dec  [hl]                                        ; $4fad: $35
	jr   jr_004_4fbc                                 ; $4fae: $18 $0c

jr_004_4fb0:
	ld   hl, $cc58                                   ; $4fb0: $21 $58 $cc
	dec  [hl]                                        ; $4fb3: $35
	ld   hl, $cc57                                   ; $4fb4: $21 $57 $cc
	ld   a, [hl]                                     ; $4fb7: $7e
	or   a                                           ; $4fb8: $b7
	jr   z, jr_004_4fbc                              ; $4fb9: $28 $01

	dec  [hl]                                        ; $4fbb: $35

jr_004_4fbc:
	ld   a, $03                                      ; $4fbc: $3e $03
	jr   jr_004_4fc6                                 ; $4fbe: $18 $06

jr_004_4fc0:
	ld   a, $0e                                      ; $4fc0: $3e $0e
	jr   jr_004_4fc6                                 ; $4fc2: $18 $02

jr_004_4fc4:
	ld   a, $02                                      ; $4fc4: $3e $02

jr_004_4fc6:
	ld   [$cc50], a                                  ; $4fc6: $ea $50 $cc
	xor  a                                           ; $4fc9: $af
	ld   [$cc51], a                                  ; $4fca: $ea $51 $cc
	ret                                              ; $4fcd: $c9


	ld   a, [$cc51]                                  ; $4fce: $fa $51 $cc
	or   a                                           ; $4fd1: $b7
	jr   nz, jr_004_4fec                             ; $4fd2: $20 $18

	xor  a                                           ; $4fd4: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $4fd5: $ea $62 $c3
	ld   a, $40                                      ; $4fd8: $3e $40
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $4fda: $ea $63 $c3
	ld   a, $03                                      ; $4fdd: $3e $03
	ld   b, $00                                      ; $4fdf: $06 $00
	ld   hl, wBGPalettes                                   ; $4fe1: $21 $de $c2
	ld   c, $01                                      ; $4fe4: $0e $01
	ld   de, $7000                                   ; $4fe6: $11 $00 $70
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $4fe9: $cd $48 $07

jr_004_4fec:
	ld   hl, $cc51                                   ; $4fec: $21 $51 $cc
	ld   a, [hl]                                     ; $4fef: $7e
	inc  [hl]                                        ; $4ff0: $34
	cp   $1f                                         ; $4ff1: $fe $1f
	jr   nc, jr_004_4ffe                             ; $4ff3: $30 $09

	and  $03                                         ; $4ff5: $e6 $03
	ret  nz                                          ; $4ff7: $c0

	ld   bc, $0040                                   ; $4ff8: $01 $40 $00
	jp   FadePalettesAndSetRangeToUpdate                                       ; $4ffb: $c3 $32 $08


jr_004_4ffe:
	ld   a, $01                                      ; $4ffe: $3e $01
	ld   hl, $7000                                   ; $5000: $21 $00 $70
	ld   de, wBGPalettes                                   ; $5003: $11 $de $c2
	ld   bc, $0080                                   ; $5006: $01 $80 $00
	call FarMemCopy                                       ; $5009: $cd $b2 $09
	ld   bc, $003f                                   ; $500c: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $500f: $cd $aa $04
	ld   a, [wShopChestReturnState]                                  ; $5012: $fa $52 $cc
	ld   [wGameState], a                                  ; $5015: $ea $a0 $c2
	ld   a, [wShopChestReturnSubstate]                                  ; $5018: $fa $53 $cc
	ld   [wGameSubstate], a                                  ; $501b: $ea $a1 $c2
	ret                                              ; $501e: $c9


; A - item index
HLequAddrOfRomandoItemMetadata:
; 15-byte entries
	push bc                                                         ; $501f
	ld   h, a                                                       ; $5020
	ld   l, $0f                                                     ; $5021
	call AequHtimesL                                                ; $5023
	ld   bc, RomandoShopItemMetadata                                ; $5026
	add  hl, bc                                                     ; $5029
	pop  bc                                                         ; $502a
	ret                                                             ; $502b

macro RomandoItem
	dw \1, \2 ; prereq flag, item flag
	db \3, \4 ; name text idx, description text idx
	; if any of the 1st 2 flags are set, the price is the 4th word, else its the 3rd
	dw \5, \6, \7, \8
	db \9 ; unk
endm

RomandoShopItemMetadata:
	RomandoItem FLAG1_GAME_BEATEN, FLAG1_SAKURA_PHOTO, $14, $15, FLAG1_SAKURA_CHEAP_GENERAL_PRICES, FLAG1_SAKURA_CHEAP_GENERAL_PRICES, 1000, 100, $11
	RomandoItem FLAG1_GAME_BEATEN, FLAG1_SUMIRE_PHOTO, $16, $17, FLAG1_SUMIRE_CHEAP_GENERAL_PRICES, FLAG1_SUMIRE_CHEAP_GENERAL_PRICES, 1000, 100, $12
	RomandoItem FLAG1_GAME_BEATEN, FLAG1_MARIA_PHOTO, $18, $19, FLAG1_MARIA_CHEAP_GENERAL_PRICES, FLAG1_MARIA_CHEAP_GENERAL_PRICES, 1000, 100, $13
	RomandoItem FLAG1_GAME_BEATEN, FLAG1_IRIS_PHOTO, $1a, $1b, FLAG1_IRIS_CHEAP_GENERAL_PRICES, FLAG1_IRIS_CHEAP_GENERAL_PRICES, 1000, 100, $14
	RomandoItem FLAG1_GAME_BEATEN, FLAG1_KOHRAN_PHOTO, $1c, $1d, FLAG1_KOHRAN_CHEAP_GENERAL_PRICES, FLAG1_KOHRAN_CHEAP_GENERAL_PRICES, 1000, 100, $15
	RomandoItem FLAG1_GAME_BEATEN, FLAG1_KANNA_PHOTO, $1e, $1f, FLAG1_KANNA_CHEAP_GENERAL_PRICES, FLAG1_KANNA_CHEAP_GENERAL_PRICES, 1000, 100, $16
	RomandoItem FLAG1_ORIHIME_PHOTO, FLAG1_ORIHIME_PHOTO, $20, $21, FLAG1_ORIHIME_PHOTO, FLAG1_ORIHIME_PHOTO, 1000, 1000, $17
	RomandoItem FLAG1_RENI_PHOTO, FLAG1_RENI_PHOTO, $22, $23, FLAG1_RENI_PHOTO, FLAG1_ORIHIME_PHOTO, 1000, 1000, $18
	RomandoItem FLAG1_SAKURA_ENDING, FLAG1_SAKURA_EVENT_GALLERY, $26, $27, FLAG1_SAKURA_CHEAP_GENERAL_PRICES, FLAG1_SAKURA_CHEAP_GENERAL_PRICES, 2000, 200, $21
	RomandoItem FLAG1_SUMIRE_ENDING, FLAG1_SUMIRE_EVENT_GALLERY, $28, $29, FLAG1_SUMIRE_CHEAP_GENERAL_PRICES, FLAG1_SUMIRE_CHEAP_GENERAL_PRICES, 2000, 200, $22
	RomandoItem FLAG1_MARIA_ENDING, FLAG1_MARIA_EVENT_GALLERY, $2a, $2b, FLAG1_MARIA_CHEAP_GENERAL_PRICES, FLAG1_MARIA_CHEAP_GENERAL_PRICES, 2000, 200, $23
	RomandoItem FLAG1_IRIS_ENDING, FLAG1_IRIS_EVENT_GALLERY, $2c, $2d, FLAG1_IRIS_CHEAP_GENERAL_PRICES, FLAG1_IRIS_CHEAP_GENERAL_PRICES, 2000, 200, $24
	RomandoItem FLAG1_KOHRAN_ENDING, FLAG1_KOHRAN_EVENT_GALLERY, $2e, $2f, FLAG1_KOHRAN_CHEAP_GENERAL_PRICES, FLAG1_KOHRAN_CHEAP_GENERAL_PRICES, 2000, 200, $25
	RomandoItem FLAG1_KANNA_ENDING, FLAG1_KANNA_EVENT_GALLERY, $30, $31, FLAG1_KANNA_CHEAP_GENERAL_PRICES, FLAG1_KANNA_CHEAP_GENERAL_PRICES, 2000, 200, $26
	RomandoItem CheckIfGotAllEventGalleries, FLAG1_MISC_EVENT_GALLERY, $32, $33, FLAG1_GAME_BEATEN, FLAG1_GAME_BEATEN, 1000, 1000, $27
	RomandoItem FLAG1_SAKURA_PORTRAIT_GALLERY, FLAG1_SAKURA_PORTRAIT_GALLERY, $36, $37, FLAG1_SAKURA_CHEAP_GENERAL_PRICES, FLAG1_SAKURA_CHEAP_GENERAL_PRICES, 3000, 300, $31
	RomandoItem FLAG1_SUMIRE_PORTRAIT_GALLERY, FLAG1_SUMIRE_PORTRAIT_GALLERY, $38, $39, FLAG1_SUMIRE_CHEAP_GENERAL_PRICES, FLAG1_SUMIRE_CHEAP_GENERAL_PRICES, 3000, 300, $32
	RomandoItem FLAG1_MARIA_PORTRAIT_GALLERY, FLAG1_MARIA_PORTRAIT_GALLERY, $3a, $3b, FLAG1_MARIA_CHEAP_GENERAL_PRICES, FLAG1_MARIA_CHEAP_GENERAL_PRICES, 3000, 300, $33
	RomandoItem FLAG1_IRIS_PORTRAIT_GALLERY, FLAG1_IRIS_PORTRAIT_GALLERY, $3c, $3d, FLAG1_IRIS_CHEAP_GENERAL_PRICES, FLAG1_IRIS_CHEAP_GENERAL_PRICES, 3000, 300, $34
	RomandoItem FLAG1_KOHRAN_PORTRAIT_GALLERY, FLAG1_KOHRAN_PORTRAIT_GALLERY, $3e, $3f, FLAG1_KOHRAN_CHEAP_GENERAL_PRICES, FLAG1_KOHRAN_CHEAP_GENERAL_PRICES, 3000, 300, $35
	RomandoItem FLAG1_KANNA_PORTRAIT_GALLERY, FLAG1_KANNA_PORTRAIT_GALLERY, $40, $41, FLAG1_KANNA_CHEAP_GENERAL_PRICES, FLAG1_KANNA_CHEAP_GENERAL_PRICES, 3000, 300, $36
	RomandoItem CheckIfGotAllPortraitGalleries, FLAG1_MISC_PORTRAIT_GALLERY, $42, $43, FLAG1_GAME_BEATEN, FLAG1_GAME_BEATEN, 1000, 1000, $37
	RomandoItem FLAG1_GAME_BEATEN, FLAG1_MUSIC_COLLECTION, $02, $03, FLAG1_GAME_BEATEN, FLAG1_GAME_BEATEN, 2000, 2000, $50
	RomandoItem FLAG1_GAME_BEATEN, FLAG1_SOUND_EFFECT_COLLECTION, $04, $05, FLAG1_GAME_BEATEN, FLAG1_GAME_BEATEN, 1000, 1000, $51
	RomandoItem FLAG1_SAKURA_ENDING, FLAG1_SAKURA_VOICES, $08, $09, FLAG1_SAKURA_CHEAP_GENERAL_PRICES, FLAG1_SAKURA_CHEAP_GENERAL_PRICES, 1000, 100, $01
	RomandoItem FLAG1_SUMIRE_ENDING, FLAG1_SUMIRE_VOICES, $0a, $0b, FLAG1_SUMIRE_CHEAP_GENERAL_PRICES, FLAG1_SUMIRE_CHEAP_GENERAL_PRICES, 1000, 100, $02
	RomandoItem FLAG1_MARIA_ENDING, FLAG1_MARIA_VOICES, $0c, $0d, FLAG1_MARIA_CHEAP_GENERAL_PRICES, FLAG1_MARIA_CHEAP_GENERAL_PRICES, 1000, 100, $03
	RomandoItem FLAG1_IRIS_ENDING, FLAG1_IRIS_VOICES, $0e, $0f, FLAG1_IRIS_CHEAP_GENERAL_PRICES, FLAG1_IRIS_CHEAP_GENERAL_PRICES, 1000, 100, $04
	RomandoItem FLAG1_KOHRAN_ENDING, FLAG1_KOHRAN_VOICES, $10, $11, FLAG1_KOHRAN_CHEAP_GENERAL_PRICES, FLAG1_KOHRAN_CHEAP_GENERAL_PRICES, 1000, 100, $05
	RomandoItem FLAG1_KANNA_ENDING, FLAG1_KANNA_VOICES, $12, $13, FLAG1_KANNA_CHEAP_GENERAL_PRICES, FLAG1_KANNA_CHEAP_GENERAL_PRICES, 1000, 100, $06
	RomandoItem FLAG1_ITEM_INDEX, FLAG1_ITEM_INDEX, $74, $75, FLAG1_GAME_BEATEN, FLAG1_GAME_BEATEN, 1000, 1000, $89
	RomandoItem FLAG1_OGAMI_ENDING, FLAG1_RECOVERY_DRINK, $62, $63, FLAG1_GAME_BEATEN, FLAG1_GAME_BEATEN, 500, 500, $80
	RomandoItem FLAG1_RING_OF_REV, FLAG1_RING_OF_REV, $64, $65, FLAG1_RING_OF_REV, FLAG1_RING_OF_REV, 3000, 3000, $81
	RomandoItem FLAG1_MYSTERY_CHARM, FLAG1_MYSTERY_CHARM, $66, $67, FLAG1_MYSTERY_CHARM, FLAG1_MYSTERY_CHARM, 3000, 3000, $82
	RomandoItem FLAG1_GUTS_HEADBAND, FLAG1_GUTS_HEADBAND, $68, $69, FLAG1_GUTS_HEADBAND, FLAG1_GUTS_HEADBAND, 3000, 3000, $83
	RomandoItem FLAG1_LIGHT_SHOES, FLAG1_LIGHT_SHOES, $6a, $6b, FLAG1_LIGHT_SHOES, FLAG1_LIGHT_SHOES, 3000, 3000, $84
	RomandoItem FLAG1_CLEAR_LENS, FLAG1_CLEAR_LENS, $6c, $6d, FLAG1_CLEAR_LENS, FLAG1_CLEAR_LENS, 3000, 3000, $85
	RomandoItem FLAG1_OGAMI_ENDING, FLAG1_NAMEPLATE, $60, $61, FLAG1_NAMEPLATE, FLAG1_NAMEPLATE, 5000, 5000, $86
	RomandoItem FLAG1_PETAL_CURSOR, FLAG1_PETAL_CURSOR, $50, $51, FLAG1_PETAL_CURSOR, FLAG1_PETAL_CURSOR, 1000, 1000, $87
	RomandoItem FLAG1_CANDY_CURSOR, FLAG1_CANDY_CURSOR, $52, $53, FLAG1_CANDY_CURSOR, FLAG1_CANDY_CURSOR, 1000, 1000, $88
	RomandoItem FLAG1_GAME_BEATEN, FLAG1_SAKURAS_SCHEDULE, $54, $55, FLAG1_SAKURA_CHEAP_GENERAL_PRICES, FLAG1_SAKURA_CHEAP_GENERAL_PRICES, 5000, 500, $71
	RomandoItem FLAG1_GAME_BEATEN, FLAG1_SUMIRES_SCHEDULE, $56, $57, FLAG1_SUMIRE_CHEAP_GENERAL_PRICES, FLAG1_SUMIRE_CHEAP_GENERAL_PRICES, 5000, 500, $72
	RomandoItem FLAG1_GAME_BEATEN, FLAG1_MARIAS_SCHEDULE, $58, $59, FLAG1_MARIA_CHEAP_GENERAL_PRICES, FLAG1_MARIA_CHEAP_GENERAL_PRICES, 5000, 500, $73
	RomandoItem FLAG1_GAME_BEATEN, FLAG1_IRIS_SCHEDULE, $5a, $5b, FLAG1_IRIS_CHEAP_GENERAL_PRICES, FLAG1_IRIS_CHEAP_GENERAL_PRICES, 5000, 500, $74
	RomandoItem FLAG1_GAME_BEATEN, FLAG1_KOHRANS_SCHEDULE, $5c, $5d, FLAG1_KOHRAN_CHEAP_GENERAL_PRICES, FLAG1_KOHRAN_CHEAP_GENERAL_PRICES, 5000, 500, $75
	RomandoItem FLAG1_GAME_BEATEN, FLAG1_KANNAS_SCHEDULE, $5e, $5f, FLAG1_KANNA_CHEAP_GENERAL_PRICES, FLAG1_KANNA_CHEAP_GENERAL_PRICES, 5000, 500, $76
	RomandoItem FLAG1_OGAMI_ENDING, FLAG1_MOCK_BATTLE, $72, $73, FLAG1_GAME_BEATEN, FLAG1_GAME_BEATEN, 1000, 1000, $4a
	RomandoItem FLAG1_PUSH_UPS, FLAG1_PUSH_UPS, $6e, $6f, FLAG1_MARIA_CHEAP_GENERAL_PRICES, FLAG1_MARIA_CHEAP_GENERAL_PRICES, 1000, 100, $48
	RomandoItem FLAG1_RED_LIGHT_GREEN_LIGHT, FLAG1_RED_LIGHT_GREEN_LIGHT, $70, $71, FLAG1_IRIS_CHEAP_GENERAL_PRICES, FLAG1_IRIS_CHEAP_GENERAL_PRICES, 1000, 100, $49
	RomandoItem FLAG1_SAKURA_EX_MODE, FLAG1_SAKURA_EX_MODE, $44, $45, FLAG1_SAKURA_CHEAP_EX_MODE_PRICES, FLAG1_SAKURA_CHEAP_EX_MODE_PRICES, 3000, 1000, $41
	RomandoItem FLAG1_SUMIRE_EX_MODE, FLAG1_SUMIRE_EX_MODE, $46, $47, FLAG1_SUMIRE_CHEAP_EX_MODE_PRICES, FLAG1_SUMIRE_CHEAP_EX_MODE_PRICES, 3000, 1000, $42
	RomandoItem FLAG1_MARIA_EX_MODE, FLAG1_MARIA_EX_MODE, $48, $49, FLAG1_MARIA_CHEAP_EX_MODE_PRICES, FLAG1_MARIA_CHEAP_EX_MODE_PRICES, 3000, 1000, $43
	RomandoItem FLAG1_IRIS_EX_MODE, FLAG1_IRIS_EX_MODE, $4a, $4b, FLAG1_IRIS_CHEAP_EX_MODE_PRICES, FLAG1_IRIS_CHEAP_EX_MODE_PRICES, 3000, 1000, $44
	RomandoItem FLAG1_KOHRAN_EX_MODE, FLAG1_KOHRAN_EX_MODE, $4c, $4d, FLAG1_KOHRAN_CHEAP_EX_MODE_PRICES, FLAG1_KOHRAN_CHEAP_EX_MODE_PRICES, 3000, 1000, $45
	RomandoItem FLAG1_KANNA_EX_MODE, FLAG1_KANNA_EX_MODE, $4e, $4f, FLAG1_KANNA_CHEAP_EX_MODE_PRICES, FLAG1_KANNA_CHEAP_EX_MODE_PRICES, 3000, 1000, $46
	db $00, $00


CheckIfGotAllEventGalleries:
; Return if misc gallery already bought
	ld   hl, FLAG1_MISC_EVENT_GALLERY                               ; $5367
	M_FarCall CheckIfNextFlagSet1
	cpl                                                             ; $537e
	or   a                                                          ; $537f
	ret  z                                                          ; $5380

; Return if any individual gallery not bought yet
	ld   hl, FLAG1_SAKURA_EVENT_GALLERY                             ; $5381
	M_FarCall CheckIfNextFlagSet1
	or   a                                                          ; $5398
	ret  z                                                          ; $5399

	ld   hl, FLAG1_SUMIRE_EVENT_GALLERY                             ; $539a
	M_FarCall CheckIfNextFlagSet1
	or   a                                                          ; $53b1
	ret  z                                                          ; $53b2

	ld   hl, FLAG1_MARIA_EVENT_GALLERY                              ; $53b3
	M_FarCall CheckIfNextFlagSet1
	or   a                                                          ; $53ca
	ret  z                                                          ; $53cb

	ld   hl, FLAG1_IRIS_EVENT_GALLERY                               ; $53cc
	M_FarCall CheckIfNextFlagSet1
	or   a                                                          ; $53e3
	ret  z                                                          ; $53e4

	ld   hl, FLAG1_KOHRAN_EVENT_GALLERY                             ; $53e5
	M_FarCall CheckIfNextFlagSet1
	or   a                                                          ; $53fc
	ret  z                                                          ; $53fd

; After last check, this returns $ff if all individual galleries bought
	ld   hl, FLAG1_KANNA_EVENT_GALLERY                              ; $53fe
	M_FarCall CheckIfNextFlagSet1
	ret                                                             ; $5415


CheckIfGotAllPortraitGalleries:
; Return if misc gallery already bought
	ld   hl, FLAG1_MISC_PORTRAIT_GALLERY                            ; $5416
	M_FarCall CheckIfNextFlagSet1
	cpl                                                             ; $542d
	or   a                                                          ; $542e
	ret  z                                                          ; $542f

; Return if any individual gallery not bought yet
	ld   hl, FLAG1_SAKURA_PORTRAIT_GALLERY                          ; $5430
	M_FarCall CheckIfNextFlagSet1
	or   a                                                          ; $5447
	ret  z                                                          ; $5448

	ld   hl, FLAG1_SUMIRE_PORTRAIT_GALLERY                          ; $5449
	M_FarCall CheckIfNextFlagSet1
	or   a                                                          ; $5460
	ret  z                                                          ; $5461

	ld   hl, FLAG1_MARIA_PORTRAIT_GALLERY                           ; $5462
	M_FarCall CheckIfNextFlagSet1
	or   a                                                          ; $5479
	ret  z                                                          ; $547a

	ld   hl, FLAG1_IRIS_PORTRAIT_GALLERY                            ; $547b
	M_FarCall CheckIfNextFlagSet1
	or   a                                                          ; $5492
	ret  z                                                          ; $5493

	ld   hl, FLAG1_KOHRAN_PORTRAIT_GALLERY                          ; $5494
	M_FarCall CheckIfNextFlagSet1
	or   a                                                          ; $54ab
	ret  z                                                          ; $54ac

; After last check, this returns $ff if all individual galleries bought
	ld   hl, FLAG1_KANNA_PORTRAIT_GALLERY                           ; $54ad
	M_FarCall CheckIfNextFlagSet1
	ret                                                             ; $54c4


Call_004_54c5:
	push bc                                          ; $54c5: $c5
	push de                                          ; $54c6: $d5
	call Call_004_431b                               ; $54c7: $cd $1b $43
	ld   h, a                                        ; $54ca: $67
	ld   l, $0f                                      ; $54cb: $2e $0f
	call AequHtimesL                                       ; $54cd: $cd $ac $0b
	ld   bc, RomandoShopItemMetadata+6                                   ; $54d0: $01 $32 $50
	add  hl, bc                                      ; $54d3: $09
	ld   a, [hl+]                                    ; $54d4: $2a
	ld   c, a                                        ; $54d5: $4f
	ld   a, [hl+]                                    ; $54d6: $2a
	ld   b, a                                        ; $54d7: $47
	ld   a, [hl+]                                    ; $54d8: $2a
	ld   e, a                                        ; $54d9: $5f
	ld   a, [hl+]                                    ; $54da: $2a
	ld   d, a                                        ; $54db: $57
	push hl                                          ; $54dc: $e5
	ld   h, b                                        ; $54dd: $60
	ld   l, c                                        ; $54de: $69

	M_FarCall CheckIfFlagSet1

	or   a                                           ; $54f3: $b7
	jr   nz, jr_004_550f                             ; $54f4: $20 $19

	ld   h, d                                        ; $54f6: $62
	ld   l, e                                        ; $54f7: $6b

	M_FarCall CheckIfFlagSet1

	or   a                                           ; $550c: $b7
	jr   z, jr_004_5511                              ; $550d: $28 $02

jr_004_550f:
	ld   a, $02                                      ; $550f: $3e $02

jr_004_5511:
	pop  hl                                          ; $5511: $e1
	ld   b, $00                                      ; $5512: $06 $00
	ld   c, a                                        ; $5514: $4f
	add  hl, bc                                      ; $5515: $09
	ld   a, [hl+]                                    ; $5516: $2a
	ld   h, [hl]                                     ; $5517: $66
	ld   l, a                                        ; $5518: $6f
	pop  de                                          ; $5519: $d1
	pop  bc                                          ; $551a: $c1
	ret                                              ; $551b: $c9


LCDCFunc0b::
	ld   hl, $c20b                                   ; $551c: $21 $0b $c2
	ldh  a, [rLY]                                    ; $551f: $f0 $44
	cp   [hl]                                        ; $5521: $be
	jp   nz, LCDCInterruptHandler.return                                   ; $5522: $c2 $4a $04

	ld   hl, $ff40                                   ; $5525: $21 $40 $ff

jr_004_5528:
	ldh  a, [rSTAT]                                  ; $5528: $f0 $41
	and  $03                                         ; $552a: $e6 $03
	jr   z, jr_004_5528                              ; $552c: $28 $fa

jr_004_552e:
	ldh  a, [rSTAT]                                  ; $552e: $f0 $41
	and  $03                                         ; $5530: $e6 $03
	jr   nz, jr_004_552e                             ; $5532: $20 $fa

	set  3, [hl]                                     ; $5534: $cb $de
	ld   a, [$cc5a]                                  ; $5536: $fa $5a $cc
	ldh  [rSCY], a                                   ; $5539: $e0 $42
	jp   LCDCInterruptHandler.return                                       ; $553b: $c3 $4a $04


; Returns A = $ff if none buyable, else 0
CheckIfNoItemsBuyable::
	call Call_004_4253                               ; $553e: $cd $53 $42
	ld   a, [$cc56]                                  ; $5541: $fa $56 $cc
	or   a                                           ; $5544: $b7
	jr   z, :+                              ; $5545: $28 $02

	xor  a                                           ; $5547: $af
	ret                                              ; $5548: $c9

:	dec  a                                           ; $5549: $3d
	ret                                              ; $554a: $c9


; Returns A = $ff if all bought, else 0
CheckIfAllShopItemsBought::
; Start from the 1st item in the table
	xor  a                                                          ; $554b
	call HLequAddrOfRomandoItemMetadata                             ; $554c

.nextItem:
; If last entry reached, return $ff
	push hl                                                         ; $554f
	ld   a, [hl+]                                                   ; $5550
	or   [hl]                                                       ; $5551
	jr   z, .returnAequFFh                                          ; $5552

; Check if item already bought
	inc  hl                                                         ; $5554
	ld   a, [hl+]                                                   ; $5555
	ld   h, [hl]                                                    ; $5556
	ld   l, a                                                       ; $5557
	M_FarCall CheckIfNextFlagSet1

; If not, return 0
	or   a                                                          ; $556c
	jr   z, .returnAequ0                                            ; $556d

; Go to next item
	pop  hl                                                         ; $556f
	ld   bc, $000f                                                  ; $5570
	add  hl, bc                                                     ; $5573
	jr   .nextItem                                                  ; $5574

.returnAequ0:
	pop  hl                                                         ; $5576
	xor  a                                                          ; $5577
	ret                                                             ; $5578

.returnAequFFh:
	pop  hl                                                         ; $5579
	ld   a, $ff                                                     ; $557a
	ret                                                             ; $557c


; H - return state
; L - return substate
SetRomandoShopState::
; Set return state
	ld   a, h                                                       ; $557d
	ld   [wShopChestReturnState], a                                 ; $557e
	ld   a, l                                                       ; $5581
	ld   [wShopChestReturnSubstate], a                              ; $5582

; Set new state
	ld   a, GS_ROMANDO_SHOP                                         ; $5585
	ld   [wGameState], a                                            ; $5587
	xor  a                                                          ; $558a
	ld   [wGameSubstate], a                                         ; $558b
	ret                                                             ; $558e


Call_004_558f:
	ld   a, h                                        ; $558f: $7c
	sub  b                                           ; $5590: $90
	ret  nz                                          ; $5591: $c0

	ld   a, l                                        ; $5592: $7d
	sub  c                                           ; $5593: $91
	ret                                              ; $5594: $c9


Call_004_5595:
	ld   a, l                                        ; $5595: $7d
	sub  c                                           ; $5596: $91
	ld   l, a                                        ; $5597: $6f
	ld   a, h                                        ; $5598: $7c
	sbc  b                                           ; $5599: $98
	ld   h, a                                        ; $559a: $67
	ret                                              ; $559b: $c9


GameState45_DormRoom::
; Branch based on substate
	ld   a, [wGameSubstate]                                         ; $559c
	dec  a                                                          ; $559f
	jp   z, DormRoomSubstate1                                       ; $55a0

	dec  a                                                          ; $55a3
	jp   z, DormRoomSubstate2                                       ; $55a4

DormRoomSubstate0:
; Set max audvol
	ld   a, $07                                                     ; $55a7
	call SafeSetAudVolForMultipleChannels                           ; $55a9

; Clear display regs and turn on LCD
	call ClearDisplayRegsAllowVBlankInt                             ; $55ac
	ld   a, LCDCF_ON|LCDCF_OBJ16|LCDCF_OBJON|LCDCF_BGON             ; $55af
	ld   [wLCDC], a                                                 ; $55b1
	call TurnOnLCD                                                  ; $55b4

; Load all white palettes, and update hw pals
	ld   a, BANK(Palettes_AllWhite)                                 ; $55b7
	ld   hl, Palettes_AllWhite                                      ; $55b9
	ld   de, wBGPalettes                                            ; $55bc
	ld   bc, NUM_PALETTE_BYTES * 2                                  ; $55bf
	call FarMemCopy                                                 ; $55c2

	ldbc $00, $3f                                                   ; $55c5
	call SetBGandOBJPaletteRangesToUpdate                           ; $55c8

; Allow all inputs, and clear oam and base animm sprite spec details
	ld   a, $ff                                                     ; $55cb
	ld   [wInGameInputsEnabled], a                                  ; $55cd

	call ClearOam                                                   ; $55d0
	call ClearBaseAnimSpriteSpecDetails                             ; $55d3

;
	call PopulateDormRoomButtonsDisplayed                                       ; $55d6: $cd $67 $56
	ld   hl, $c602                                   ; $55d9: $21 $02 $c6
	ld   de, wDormRoomButtonsDisplayed                                   ; $55dc: $11 $83 $cc
	ld   b, $05                                      ; $55df: $06 $05

.loop_55e1:
	ld   a, [de]                                     ; $55e1: $1a
	bit  7, a                                        ; $55e2: $cb $7f
	ld   a, $ff                                      ; $55e4: $3e $ff
	jr   nz, :+                             ; $55e6: $20 $02
	ld   a, $a0                                      ; $55e8: $3e $a0
:	ld   [hl+], a                                    ; $55ea: $22
	ld   [hl+], a                                    ; $55eb: $22
	inc  de                                          ; $55ec: $13
	dec  b                                           ; $55ed: $05
	jr   nz, .loop_55e1                             ; $55ee: $20 $f1

;
	ld   de, $c642                                   ; $55f0: $11 $42 $c6
	ld   hl, .data                                   ; $55f3: $21 $5f $56
	ld   bc, $0008                                   ; $55f6: $01 $08 $00
	call MemCopy                                       ; $55f9: $cd $a9 $09

;
	ld   a, $02                                      ; $55fc: $3e $02
	ld   hl, $0000                                   ; $55fe: $21 $00 $00
	ld   de, $c642                                   ; $5601: $11 $42 $c6
	call ReserveBaseAnimSpriteSpecAndInstance                                       ; $5604: $cd $4b $2f
	ld   [$cc80], a                                  ; $5607: $ea $80 $cc
	call StartAnimatingAnimatedSpriteSpec                                       ; $560a: $cd $14 $30

;
	ld   a, $20                                      ; $560d: $3e $20
	ld   b, $21                                      ; $560f: $06 $21
	ld   c, $00                                      ; $5611: $0e $00

	M_FarCall Func_01_44ab
	
;
	ld   a, $01                                      ; $5627: $3e $01
	ld   hl, $0000                                   ; $5629: $21 $00 $00
	ld   d, h                                        ; $562c: $54
	ld   e, l                                        ; $562d: $5d
	call ReserveBaseAnimSpriteSpecAndInstance                                       ; $562e: $cd $4b $2f
	ld   [$cc93], a                                  ; $5631: $ea $93 $cc

;
	ld   a, $01                                      ; $5634: $3e $01
	ld   hl, $0000                                   ; $5636: $21 $00 $00
	ld   d, h                                        ; $5639: $54
	ld   e, l                                        ; $563a: $5d
	call ReserveBaseAnimSpriteSpecAndInstance                                       ; $563b: $cd $4b $2f
	ld   [$cc94], a                                  ; $563e: $ea $94 $cc

;
	ld   a, $a0                                      ; $5641: $3e $a0
	ld   [wDormRoomDaySpritesX], a                                  ; $5643: $ea $7f $cc
	xor  a                                           ; $5646: $af
	ld   [$cc92], a                                  ; $5647: $ea $92 $cc
	ld   [$cc81], a                                  ; $564a: $ea $81 $cc
	ld   [$cc82], a                                  ; $564d: $ea $82 $cc
	ld   [$cc89], a                                  ; $5650: $ea $89 $cc
	ld   [wDormRoomAnimationStep], a                                  ; $5653: $ea $79 $cc
	ld   [wDormRoomMiscCounterIdx], a                                  ; $5656: $ea $7a $cc

;
	ld   a, $02                                      ; $5659: $3e $02
	ld   [wGameSubstate], a                                  ; $565b: $ea $a1 $c2
	ret                                              ; $565e: $c9

.data:
	ld   h, l                                        ; $565f: $65
	nop                                              ; $5660: $00
	dec  b                                           ; $5661: $05
	ld   bc, $6200                                   ; $5662: $01 $00 $62
	ld   [hl], a                                     ; $5665: $77
	db $0e 
	

PopulateDormRoomButtonsDisplayed:
; Fill all displayed buttons with the null terminator $ff
	ld   a, $ff                                                     ; $5667
	ld   hl, wDormRoomButtonsDisplayed                              ; $5669
	ld   [hl+], a                                                   ; $566c
	ld   [hl+], a                                                   ; $566d
	ld   [hl+], a                                                   ; $566e
	ld   [hl+], a                                                   ; $566f
	ld   [hl+], a                                                   ; $5670
	ld   [hl+], a                                                   ; $5671

; HL = double opts setup idxed into table
	ld   a, [wDormRoomOptionsSetupIdx]                              ; $5672
	sla  a                                                          ; $5675
	ld   l, a                                                       ; $5677
	sla  a                                                          ; $5678
	add  l                                                          ; $567a
	ld   l, a                                                       ; $567b
	ld   h, $00                                                     ; $567c
	ld   bc, DormRoomOptionsSetup                                   ; $567e
	add  hl, bc                                                     ; $5681

; Load up to 5 buttons
	ld   de, wDormRoomButtonsDisplayed                              ; $5682
	ld   a, $05                                                     ; $5685

.nextButton:
	push af                                                         ; $5687
	bit  7, [hl]                                                    ; $5688
	jr   nz, .toNextButton                                          ; $568a

; Branch if special case, else copy button to btns displayed
	ld   a, [hl]                                                    ; $568c
	cp   DRO_NAP                                                    ; $568d
	jr   z, .napBtn                                                 ; $568f

	cp   DRO_ITEMS                                                  ; $5691
	jr   z, .itemsBtn                                               ; $5693

	cp   DRO_FOCUS                                                  ; $5695
	jr   z, .focusBtn                                               ; $5697

	jr   .setDisplayed                                              ; $5699

.napBtn:
; Don't display nap on Day 2
	ld   a, [sCurrDay]                                              ; $569b
	cp   $02                                                        ; $569e
	jr   nz, .setDisplayed                                          ; $56a0

; Don't display nap if opts setup idx == 1
	ld   a, [wDormRoomOptionsSetupIdx]                              ; $56a2
	cp   DROS_TRAIN_NAP_1                                           ; $56a5
	jr   nz, .setDisplayed                                          ; $56a7

	jr   .toNextButton                                              ; $56a9

.itemsBtn:
	push de                                          ; $56ab: $d5
	push hl                                          ; $56ac: $e5

	M_FarCall Func_0c_71a2
	
	pop  hl                                          ; $56c1: $e1
	pop  de                                          ; $56c2: $d1

	or   a                                           ; $56c3: $b7
	jr   z, .setDisplayed                              ; $56c4: $28 $13

	jr   .toNextButton                                 ; $56c6: $18 $14

.focusBtn:
	push hl                                          ; $56c8: $e5

; todo: display if $b090|$b091|$b092|$b093|$b094|$b095 != 0
	ld   hl, $b090                                   ; $56c9: $21 $90 $b0
	ld   a, [hl+]                                    ; $56cc: $2a
	or   [hl]                                        ; $56cd: $b6
	inc  hl                                          ; $56ce: $23
	or   [hl]                                        ; $56cf: $b6
	inc  hl                                          ; $56d0: $23
	or   [hl]                                        ; $56d1: $b6
	inc  hl                                          ; $56d2: $23
	or   [hl]                                        ; $56d3: $b6
	inc  hl                                          ; $56d4: $23
	or   [hl]                                        ; $56d5: $b6
	pop  hl                                          ; $56d6: $e1
	jr   z, .toNextButton                              ; $56d7: $28 $03

.setDisplayed:
	ld   a, [hl]                                                    ; $56d9
	ld   [de], a                                                    ; $56da
	inc  de                                                         ; $56db

.toNextButton:
	inc  hl                                                         ; $56dc
	pop  af                                                         ; $56dd
	dec  a                                                          ; $56de
	jr   nz, .nextButton                                            ; $56df

	ret                                                             ; $56e1


DormRoomOptionsSetup:
	db DRO_EXPLORE_DAY,   DRO_FOCUS, DRO_ITEMS,   DRO_OPTIONS, $ff, $ff
	db DRO_TRAIN,         DRO_NAP,   DRO_ITEMS,   DRO_OPTIONS, $ff, $ff
	db DRO_EXPLORE_DAY,   DRO_FOCUS, DRO_ITEMS,   DRO_OPTIONS, $ff, $ff
	db DRO_TRAIN,         DRO_NAP,   DRO_ITEMS,   DRO_OPTIONS, $ff, $ff
	db DRO_EXPLORE_NIGHT, DRO_ITEMS, DRO_OPTIONS, $ff,         $ff, $ff
	db DRO_SAVE,          DRO_SLEEP, DRO_ITEMS,   DRO_OPTIONS, $ff, $ff
	db DRO_EXAM,          DRO_ITEMS, DRO_OPTIONS, $ff,         $ff, $ff


Call_004_570c:
	ld   a, [wWramBank]                                  ; $570c: $fa $93 $c2
	push af                                          ; $570f: $f5
	ld   a, $02                                      ; $5710: $3e $02
	ld   [wWramBank], a                                  ; $5712: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5715: $e0 $70
	ld   hl, $d340                                   ; $5717: $21 $40 $d3
	ld   bc, $0280                                   ; $571a: $01 $80 $02
	ld   de, $0000                                   ; $571d: $11 $00 $00
	call CopyEthenDintoHL_BCtimes                                       ; $5720: $cd $9f $09
	call InitWideTextBoxDimensions                                       ; $5723: $cd $ec $0f
	ld   bc, $1401                                   ; $5726: $01 $01 $14
	call SetKanjiTextBoxDimensions                                       ; $5729: $cd $24 $14
	ld   bc, $0100                                   ; $572c: $01 $00 $01
	call SetCurrKanjiColAndRowToDrawOn                                       ; $572f: $cd $34 $14
	ld   a, [$cc80]                                  ; $5732: $fa $80 $cc
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $5735: $cd $76 $30
	push af                                          ; $5738: $f5
	ld   a, $00                                      ; $5739: $3e $00
	ld   [wFarCallAddr], a                                  ; $573b: $ea $98 $c2
	ld   a, $45                                      ; $573e: $3e $45
	ld   [wFarCallAddr+1], a                                  ; $5740: $ea $99 $c2
	ld   a, $01                                      ; $5743: $3e $01
	ld   [wFarCallBank], a                                  ; $5745: $ea $9a $c2
	pop  af                                          ; $5748: $f1
	call FarCall                                       ; $5749: $cd $62 $09
	call Call_004_5aed                               ; $574c: $cd $ed $5a
	ld   h, MIT_DORM_ROOM_OPT_DESCRIPTS                                      ; $574f: $26 $04
	ld   l, a                                        ; $5751: $6f

	M_FarCall GetAddrBankOfMiscInstantText

	ld   d, h                                        ; $5766: $54
	ld   e, l                                        ; $5767: $5d
	ld   hl, $d340                                   ; $5768: $21 $40 $d3
	call LoadInstantText                                       ; $576b: $cd $06 $13
	ld   c, $81                                      ; $576e: $0e $81
	ld   de, $8d80                                   ; $5770: $11 $80 $8d
	ld   a, $02                                      ; $5773: $3e $02
	ld   hl, $d340                                   ; $5775: $21 $40 $d3
	ld   b, $28                                      ; $5778: $06 $28
	call EnqueueHDMATransfer                                       ; $577a: $cd $7c $02
	pop  af                                          ; $577d: $f1
	ld   [wWramBank], a                                  ; $577e: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5781: $e0 $70
	ret                                              ; $5783: $c9


DormRoomSubstate1:
;
	ld   a, [$cc81]                                  ; $5784: $fa $81 $cc
	push af                                          ; $5787: $f5
	call DormRoomSubstate0                               ; $5788: $cd $a7 $55
	ld   a, [$cc80]                                  ; $578b: $fa $80 $cc
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $578e: $cd $76 $30
	pop  af                                          ; $5791: $f1
	ld   [$cc81], a                                  ; $5792: $ea $81 $cc

;
	ld   b, a                                        ; $5795: $47
	ld   c, $00                                      ; $5796: $0e $00

	M_FarCall Func_01_44d7
	ret                                              ; $57ac: $c9


DormRoomSubstate2:
;
	ld   a, [wWramBank]                                  ; $57ad: $fa $93 $c2
	push af                                          ; $57b0: $f5

	ld   a, $07                                      ; $57b1: $3e $07
	ld   [wWramBank], a                                  ; $57b3: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $57b6: $e0 $70

; Start off with clearing oam to be added based on anim step, and push return addr
	call ClearOam                                                   ; $57b8
	ld   bc, .return                                                ; $57bb
	push bc                                                         ; $57be

; HL = addr of curr anim step handler
	ld   a, [wDormRoomAnimationStep]                                ; $57bf
	sla  a                                                          ; $57c2
	ld   h, $00                                                     ; $57c4
	ld   l, a                                                       ; $57c6
	ld   bc, .animationHandlers                                                 ; $57c7
	add  hl, bc                                                     ; $57ca

; Jump to handler
	ld   a, [hl+]                                                   ; $57cb
	ld   h, [hl]                                                    ; $57cc
	ld   l, a                                                       ; $57cd
	jp   hl                                                         ; $57ce

.return:
;
	call todo_LoadsDormRoomSprites                               ; $57cf: $cd $0e $58
	call AnimateAllAnimatedSpriteSpecs                                       ; $57d2: $cd $d3 $2e

; Restore ram bank
	pop  af                                                         ; $57d5
	ld   [wWramBank], a                                             ; $57d6
	ldh  [rSVBK], a                                                 ; $57d9
	ret                                                             ; $57db

.animationHandlers:
	dw DormRoomAnimationHandler00
	dw DormRoomAnimationHandler01
	dw DormRoomAnimationHandler02
	dw DormRoomAnimationHandler03
	dw DormRoomAnimationHandler04
	dw DormRoomAnimationHandler05
	dw DormRoomAnimationHandler06
	dw DormRoomAnimationHandler07
	dw DormRoomAnimationHandler08
	dw DormRoomAnimationHandler09
	dw DormRoomAnimationHandler0a
	dw DormRoomAnimationHandler0b
	dw DormRoomAnimationHandler0c
	dw DormRoomAnimationHandler0d
	dw DormRoomAnimationHandler0e
	dw DormRoomAnimationHandler0f
	dw DormRoomAnimationHandler10
	dw DormRoomAnimationHandler11
	dw DormRoomAnimationHandler12
	dw DormRoomAnimationHandler13
	dw DormRoomAnimationHandler14
	dw DormRoomAnimationHandler15
	dw DormRoomAnimationHandler16
	dw DormRoomAnimationHandler17
	dw DormRoomAnimationHandler18


todo_LoadsDormRoomSprites:
;
	ld   a, SG_C                                      ; $580e: $3e $0c
	ld   [wSpriteGroup], a                                  ; $5810: $ea $1a $c2
	call Call_004_581e                               ; $5813: $cd $1e $58

;
	ld   a, [$cc89]                                  ; $5816: $fa $89 $cc
	or   a                                           ; $5819: $b7
	call z, LoadDormRoomDaySprites                            ; $581a: $cc $58 $58
	ret                                              ; $581d: $c9


Call_004_581e:
	ld   a, [$cc80]                                  ; $581e: $fa $80 $cc
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $5821: $cd $76 $30

	M_FarCall Func_01_4500
	
	push af                                          ; $5838: $f5
	sla  a                                           ; $5839: $cb $27
	ld   l, a                                        ; $583b: $6f
	ld   h, $00                                      ; $583c: $26 $00
	ld   bc, $584e                                   ; $583e: $01 $4e $58
	add  hl, bc                                      ; $5841: $09
	ld   a, [hl+]                                    ; $5842: $2a
	ld   c, [hl]                                     ; $5843: $4e
	ld   b, a                                        ; $5844: $47
	pop  af                                          ; $5845: $f1
	call Call_004_5aed                               ; $5846: $cd $ed $5a
	add  $11                                         ; $5849: $c6 $11
	jp   LoadSpriteFromMainTable                                       ; $584b: $c3 $16 $0e


	db   $10                                         ; $584e: $10
	ld   [hl], b                                     ; $584f: $70
	db $30, $70

	ld   d, b                                        ; $5852: $50
	ld   [hl], b                                     ; $5853: $70
	ld   [hl], b                                     ; $5854: $70
	ld   [hl], b                                     ; $5855: $70
	sub  b                                           ; $5856: $90
	ld   [hl], b                                     ; $5857: $70


LoadDormRoomDaySprites:
; Return if X is past the screen
	ld   a, [wDormRoomDaySpritesX]                                  ; $5858
	cp   $a0                                                        ; $585b
	ret  nc                                                         ; $585d

; Load day kanji sprite
	ld   a, [wDormRoomDaySpritesX]                                  ; $585e
	add  $24                                                        ; $5861
	ld   b, a                                                       ; $5863
	ld   c, $3c                                                     ; $5864
	ld   a, SGC_DORM_ROOM_DAY                                       ; $5866
	call LoadSpriteFromMainTable                                    ; $5868

; H = 10s of curr day, L = 1s of curr day
	ld   a, [sCurrDay]                                              ; $586b
	ld   h, a                                                       ; $586e
	ld   l, 10                                                      ; $586f
	call HLequHdivModL                                              ; $5871

; Load day 10's digit sprite
	push hl                                                         ; $5874
	ld   a, [wDormRoomDaySpritesX]                                  ; $5875
	add  $14                                                        ; $5878
	ld   b, a                                                       ; $587a
	ld   c, $3c                                                     ; $587b
	ld   a, h                                                       ; $587d
	add  SGC_DORM_ROOM_0                                            ; $587e
	call LoadSpriteFromMainTable                                    ; $5880
	pop  hl                                                         ; $5883

; Load day 1's digit sprite
	ld   a, [wDormRoomDaySpritesX]                                  ; $5884
	add  $1c                                                        ; $5887
	ld   b, a                                                       ; $5889
	ld   c, $3c                                                     ; $588a
	ld   a, l                                                       ; $588c
	add  SGC_DORM_ROOM_0                                            ; $588d
	call LoadSpriteFromMainTable                                    ; $588f

; L = curr day, 0-indexed, mod 7 to get day of week
	ld   a, [sCurrDay]                                              ; $5892
	dec  a                                                          ; $5895
	ld   h, a                                                       ; $5896
	ld   l, $07                                                     ; $5897
	call HLequHdivModL                                              ; $5899

; Load day of week sprite
	ld   a, [wDormRoomDaySpritesX]                                  ; $589c
	add  $18                                                        ; $589f
	ld   b, a                                                       ; $58a1
	ld   c, $4c                                                     ; $58a2
	ld   a, l                                                       ; $58a4
	add  SGC_DORM_ROOM_SUNDAY                                       ; $58a5
	call LoadSpriteFromMainTable                                    ; $58a7

; Load the kind of time of day, eg morning
	ld   a, [wDormRoomDaySpritesX]                                  ; $58aa
	add  $28                                                        ; $58ad
	ld   b, a                                                       ; $58af
	ld   c, $4c                                                     ; $58b0

	M_FarCall GetNameIdxOfTimeOfDay

	add  SGC_DORM_ROOM_MORNING                                      ; $58c6
	call LoadSpriteFromMainTable                                    ; $58c8
	ret                                                             ; $58cb


IncDormRoomAnimationStep:
	ld   hl, wDormRoomAnimationStep                                 ; $58cc
	inc  [hl]                                                       ; $58cf
	xor  a                                                          ; $58d0
	ld   [wDormRoomMiscCounterIdx], a                               ; $58d1
	ret                                                             ; $58d4


DormRoomAnimationHandler00:
; Push ram bank of buffer area to load tile data on to
	ld   a, [wWramBank]                                             ; $58d5
	push af                                                         ; $58d8

	ld   a, BANK(wDormRoomTileDataBuffer)                           ; $58d9
	ld   [wWramBank], a                                             ; $58db
	ldh  [rSVBK], a                                                 ; $58de

; Push return address
	ld   bc, .return                                                ; $58e0
	push bc                                                         ; $58e3

; Inc data load step, and use original as a double idx into the table
	ld   hl, wDormRoomMiscCounterIdx                                ; $58e4
	ld   a, [hl]                                                    ; $58e7
	inc  [hl]                                                       ; $58e8
	sla  a                                                          ; $58e9
	ld   h, $00                                                     ; $58eb
	ld   l, a                                                       ; $58ed
	ld   bc, .dataLoadHandlers                                      ; $58ee
	add  hl, bc                                                     ; $58f1

; Jump to data load handler
	ld   a, [hl+]                                                   ; $58f2
	ld   h, [hl]                                                    ; $58f3
	ld   l, a                                                       ; $58f4
	jp   hl                                                         ; $58f5

.return:
	pop  af                                                         ; $58f6
	ld   [wWramBank], a                                             ; $58f7
	ldh  [rSVBK], a                                                 ; $58fa
	ret                                                             ; $58fc

.dataLoadHandlers:
	dw .dataLoad0
	dw .dataLoad1
	dw .dataLoad2
	dw .dataLoad3
	dw .dataLoad4
	dw .dataLoad5
	dw .dataLoad6
	dw .dataLoad7
	dw .dataLoad8
	dw .dataLoad9
	dw .dataLoadA

.dataLoad0:
;
	ld   a, $93                                      ; $5913: $3e $93
	ld   hl, $d000                                   ; $5915: $21 $00 $d0
	ld   de, $4930                                   ; $5918: $11 $30 $49
if def(VWF)
	call DormRoomTileDataBank0_8800h_hook
else
	call RLEXorCopy                                       ; $591b: $cd $d2 $09
endc

	ld   c, $80                                      ; $591e: $0e $80
	ld   de, $8800                                   ; $5920: $11 $00 $88
	ld   a, $07                                      ; $5923: $3e $07
	ld   hl, $d000                                   ; $5925: $21 $00 $d0
	ld   b, $60                                      ; $5928: $06 $60
	call EnqueueHDMATransfer                                       ; $592a: $cd $7c $02
	ret                                              ; $592d: $c9

.dataLoad1:
	ld   c, $80                                      ; $592e: $0e $80
	ld   de, $8e00                                   ; $5930: $11 $00 $8e
	ld   a, $07                                      ; $5933: $3e $07
	ld   hl, $d600                                   ; $5935: $21 $00 $d6
	ld   b, $60                                      ; $5938: $06 $60
	call EnqueueHDMATransfer                                       ; $593a: $cd $7c $02
	ret                                              ; $593d: $c9

.dataLoad2:
	ld   a, $9d                                      ; $593e: $3e $9d
	ld   hl, $d000                                   ; $5940: $21 $00 $d0
	ld   de, $4000                                   ; $5943: $11 $00 $40
if def(VWF)
	call DormRoomTileDataBank1_8000h_hook
else
	call RLEXorCopy                                       ; $5946: $cd $d2 $09
endc
	ld   c, $80                                      ; $5949: $0e $80
	ld   de, $9400                                   ; $594b: $11 $00 $94
	ld   a, $07                                      ; $594e: $3e $07
	ld   hl, $dc00                                   ; $5950: $21 $00 $dc
	ld   b, $40                                      ; $5953: $06 $40
	call EnqueueHDMATransfer                                       ; $5955: $cd $7c $02
	ld   c, $81                                      ; $5958: $0e $81
	ld   de, $8000                                   ; $595a: $11 $00 $80
	ld   a, $07                                      ; $595d: $3e $07
	ld   hl, $d000                                   ; $595f: $21 $00 $d0
	ld   b, $20                                      ; $5962: $06 $20
	call EnqueueHDMATransfer                                       ; $5964: $cd $7c $02
	ret                                              ; $5967: $c9

.dataLoad3:
	ld   c, $81                                      ; $5968: $0e $81
	ld   de, $8200                                   ; $596a: $11 $00 $82
	ld   a, $07                                      ; $596d: $3e $07
	ld   hl, $d200                                   ; $596f: $21 $00 $d2
	ld   b, $60                                      ; $5972: $06 $60
	call EnqueueHDMATransfer                                       ; $5974: $cd $7c $02
	ret                                              ; $5977: $c9

.dataLoad4:
	ld   a, $92                                      ; $5978: $3e $92
	ld   hl, $d000                                   ; $597a: $21 $00 $d0
	ld   de, $752c                                   ; $597d: $11 $2c $75
if def(VWF)
	call DormRoomTileDataBank1_8800h_hook
else
	call RLEXorCopy                                       ; $5980: $cd $d2 $09
endc

;
	ld   c, $81                                      ; $5983: $0e $81
	ld   de, $8800                                   ; $5985: $11 $00 $88
	ld   a, $07                                      ; $5988: $3e $07
	ld   hl, $d000                                   ; $598a: $21 $00 $d0
	ld   b, $60                                      ; $598d: $06 $60
	call EnqueueHDMATransfer                                       ; $598f: $cd $7c $02
	ret                                              ; $5992: $c9

.dataLoad5:
	ld   c, $81                                      ; $5993: $0e $81
	ld   de, $8e00                                   ; $5995: $11 $00 $8e
	ld   a, $07                                      ; $5998: $3e $07
	ld   hl, $d600                                   ; $599a: $21 $00 $d6
	ld   b, $60                                      ; $599d: $06 $60
	call EnqueueHDMATransfer                                       ; $599f: $cd $7c $02
	ret                                              ; $59a2: $c9

.dataLoad6:
	ld   c, $81                                      ; $59a3: $0e $81
	ld   de, $9400                                   ; $59a5: $11 $00 $94
	ld   a, $07                                      ; $59a8: $3e $07
	ld   hl, $dc00                                   ; $59aa: $21 $00 $dc
	ld   b, $40                                      ; $59ad: $06 $40
	call EnqueueHDMATransfer                                       ; $59af: $cd $7c $02
	ret                                              ; $59b2: $c9

.dataLoad7:
	call Call_004_570c                               ; $59b3: $cd $0c $57
	ret                                              ; $59b6: $c9

.dataLoad8:
	M_FarCall ClearCarryIfNightElseSetIt
	jr   nc, .br_59e3                             ; $59cb: $30 $16

	ld   hl, $d800                                   ; $59cd: $21 $00 $d8
	ld   a, $99                                      ; $59d0: $3e $99
	ld   de, $72f0                                   ; $59d2: $11 $f0 $72
	ld   bc, $1420                                   ; $59d5: $01 $20 $14
	call FarCopyLayout                                       ; $59d8: $cd $2c $0b
	ld   hl, $dc00                                   ; $59db: $21 $00 $dc
	call FarCopyLayout                                       ; $59de: $cd $2c $0b
	jr   .cont_59f7                                 ; $59e1: $18 $14

.br_59e3:
	ld   hl, $d800                                   ; $59e3: $21 $00 $d8
	ld   a, $99                                      ; $59e6: $3e $99
	ld   de, $77f0                                   ; $59e8: $11 $f0 $77
	ld   bc, $1420                                   ; $59eb: $01 $20 $14
	call FarCopyLayout                                       ; $59ee: $cd $2c $0b
	ld   hl, $dc00                                   ; $59f1: $21 $00 $dc
	call FarCopyLayout                                       ; $59f4: $cd $2c $0b

.cont_59f7:
if def(VWF)
	call DormRoomLayoutHook
else
	call DisplayDormRoomButtons                               ; $59f7: $cd $7d $5a
endc
	ld   c, $81                                      ; $59fa: $0e $81
	ld   de, $9800                                   ; $59fc: $11 $00 $98
	ld   a, $07                                      ; $59ff: $3e $07
	ld   hl, $d800                                   ; $5a01: $21 $00 $d8
	ld   b, $40                                      ; $5a04: $06 $40
	call EnqueueHDMATransfer                                       ; $5a06: $cd $7c $02
	ret                                              ; $5a09: $c9

.dataLoad9:
	ld   hl, $dfa5                                   ; $5a0a: $21 $a5 $df
	ld   de, $afe1                                   ; $5a0d: $11 $e1 $af
	ld   b, $05                                      ; $5a10: $06 $05

.loop_5a12:
	ld   a, [de]                                     ; $5a12: $1a
	inc  de                                          ; $5a13: $13
	push bc                                          ; $5a14: $c5
	dec  a                                           ; $5a15: $3d
	sla  a                                           ; $5a16: $cb $27
	sla  a                                           ; $5a18: $cb $27
	add  $36                                         ; $5a1a: $c6 $36
	ld   [hl+], a                                    ; $5a1c: $22
	inc  a                                           ; $5a1d: $3c
	ld   [hl+], a                                    ; $5a1e: $22
	inc  a                                           ; $5a1f: $3c
	push hl                                          ; $5a20: $e5
	ld   bc, $001e                                   ; $5a21: $01 $1e $00
	add  hl, bc                                      ; $5a24: $09
	ld   [hl+], a                                    ; $5a25: $22
	inc  a                                           ; $5a26: $3c
	ld   [hl+], a                                    ; $5a27: $22
	pop  hl                                          ; $5a28: $e1
	pop  bc                                          ; $5a29: $c1
	dec  b                                           ; $5a2a: $05
	jr   nz, .loop_5a12                             ; $5a2b: $20 $e5

	ld   c, $80                                      ; $5a2d: $0e $80
	ld   de, $9800                                   ; $5a2f: $11 $00 $98
	ld   a, $07                                      ; $5a32: $3e $07
	ld   hl, $dc00                                   ; $5a34: $21 $00 $dc
	ld   b, $40                                      ; $5a37: $06 $40
	call EnqueueHDMATransfer                                       ; $5a39: $cd $7c $02
	ret                                              ; $5a3c: $c9

.dataLoadA:
	call TurnOffLCD                                       ; $5a3d: $cd $e3 $08
	ld   a, $84                                      ; $5a40: $3e $84
	ld   b, $0c                                      ; $5a42: $06 $0c
	ld   c, $0e                                      ; $5a44: $0e $0e
	ld   de, $0600                                   ; $5a46: $11 $00 $06
	ld   hl, $9800                                   ; $5a49: $21 $00 $98

	M_FarCall Func_0c_5b79
	
	call TurnOnLCD                                       ; $5a60: $cd $09 $09
	ld   hl, $afd0                                   ; $5a63: $21 $d0 $af

	M_FarCall LoadStatBars
	jp   IncDormRoomAnimationStep                               ; $5a7a: $c3 $cc $58


DisplayDormRoomButtons:
; todo: dorm room relevant button tile attr here
	ld   bc, $d9c2                                   ; $5a7d: $01 $c2 $d9
	ld   de, $d9e2                                   ; $5a80: $11 $e2 $d9
	ld   hl, wDormRoomButtonsDisplayed                                   ; $5a83: $21 $83 $cc

jr_004_5a86:
	ld   a, [hl+]                                    ; $5a86: $2a
	bit  7, a                                        ; $5a87: $cb $7f
	jr   nz, jr_004_5a9f                             ; $5a89: $20 $14

	ld   a, $0e                                      ; $5a8b: $3e $0e
	ld   [bc], a                                     ; $5a8d: $02
	inc  bc                                          ; $5a8e: $03
	ld   [de], a                                     ; $5a8f: $12
	inc  de                                          ; $5a90: $13
	ld   [bc], a                                     ; $5a91: $02
	inc  bc                                          ; $5a92: $03
	ld   [de], a                                     ; $5a93: $12
	inc  de                                          ; $5a94: $13
	ld   [bc], a                                     ; $5a95: $02
	inc  bc                                          ; $5a96: $03
	ld   [de], a                                     ; $5a97: $12
	inc  de                                          ; $5a98: $13
	ld   [bc], a                                     ; $5a99: $02
	inc  bc                                          ; $5a9a: $03
	ld   [de], a                                     ; $5a9b: $12
	inc  de                                          ; $5a9c: $13
	jr   jr_004_5a86                                 ; $5a9d: $18 $e7

jr_004_5a9f:
; todo: dorm room relevant button tile maps here
	ld   bc, $ddc2                                   ; $5a9f: $01 $c2 $dd
	ld   de, $dde2                                   ; $5aa2: $11 $e2 $dd
	ld   hl, wDormRoomButtonsDisplayed                                   ; $5aa5: $21 $83 $cc

.copyButton:
	ld   a, [hl+]                                    ; $5aa8: $2a
	bit  7, a                                        ; $5aa9: $cb $7f
	jr   nz, .breakBtnCopy                             ; $5aab: $20 $21

	sla  a                                           ; $5aad: $cb $27
	sla  a                                           ; $5aaf: $cb $27
	sla  a                                           ; $5ab1: $cb $27
	set  7, a                                        ; $5ab3: $cb $ff
	ld   [bc], a                                     ; $5ab5: $02
	inc  bc                                          ; $5ab6: $03
	inc  a                                           ; $5ab7: $3c
	ld   [de], a                                     ; $5ab8: $12
	inc  de                                          ; $5ab9: $13
	inc  a                                           ; $5aba: $3c
	ld   [bc], a                                     ; $5abb: $02
	inc  bc                                          ; $5abc: $03
	inc  a                                           ; $5abd: $3c
	ld   [de], a                                     ; $5abe: $12
	inc  de                                          ; $5abf: $13
	inc  a                                           ; $5ac0: $3c
	ld   [bc], a                                     ; $5ac1: $02
	inc  bc                                          ; $5ac2: $03
	inc  a                                           ; $5ac3: $3c
	ld   [de], a                                     ; $5ac4: $12
	inc  de                                          ; $5ac5: $13
	inc  a                                           ; $5ac6: $3c
	ld   [bc], a                                     ; $5ac7: $02
	inc  bc                                          ; $5ac8: $03
	inc  a                                           ; $5ac9: $3c
	ld   [de], a                                     ; $5aca: $12
	inc  de                                          ; $5acb: $13
	jr   .copyButton                                 ; $5acc: $18 $da

.breakBtnCopy:
	ld   c, $81                                      ; $5ace: $0e $81
	ld   de, $99c0                                   ; $5ad0: $11 $c0 $99
	ld   a, $07                                      ; $5ad3: $3e $07
	ld   hl, $d9c0                                   ; $5ad5: $21 $c0 $d9
	ld   b, $04                                      ; $5ad8: $06 $04
	call EnqueueHDMATransfer                                       ; $5ada: $cd $7c $02
	ld   c, $80                                      ; $5add: $0e $80
	ld   de, $99c0                                   ; $5adf: $11 $c0 $99
	ld   a, $07                                      ; $5ae2: $3e $07
	ld   hl, $ddc0                                   ; $5ae4: $21 $c0 $dd
	ld   b, $04                                      ; $5ae7: $06 $04
	call EnqueueHDMATransfer                                       ; $5ae9: $cd $7c $02
	ret                                              ; $5aec: $c9


Call_004_5aed:
	push bc                                          ; $5aed: $c5
	push hl                                          ; $5aee: $e5
	ld   h, $00                                      ; $5aef: $26 $00
	ld   l, a                                        ; $5af1: $6f
	ld   bc, wDormRoomButtonsDisplayed                                   ; $5af2: $01 $83 $cc
	add  hl, bc                                      ; $5af5: $09
	ld   a, [hl]                                     ; $5af6: $7e
	pop  hl                                          ; $5af7: $e1
	pop  bc                                          ; $5af8: $c1
	ret                                              ; $5af9: $c9


DormRoomAnimationHandler01:
	ld   hl, wDormRoomDaySpritesX                                   ; $5afa: $21 $7f $cc
	dec  [hl]                                        ; $5afd: $35
	ld   a, [wDormRoomMiscCounterIdx]                                  ; $5afe: $fa $7a $cc
	or   a                                           ; $5b01: $b7
	jr   nz, jr_004_5b4e                             ; $5b02: $20 $4a

	ld   a, $a3                                      ; $5b04: $3e $a3
	ld   de, $d000                                   ; $5b06: $11 $00 $d0
	ld   hl, $6d4c                                   ; $5b09: $21 $4c $6d
	ld   bc, $0080                                   ; $5b0c: $01 $80 $00
	call FarMemCopy                                       ; $5b0f: $cd $b2 $09
	push af                                          ; $5b12: $f5
	ld   a, $3e                                      ; $5b13: $3e $3e
	ld   [wFarCallAddr], a                                  ; $5b15: $ea $98 $c2
	ld   a, $45                                      ; $5b18: $3e $45
	ld   [wFarCallAddr+1], a                                  ; $5b1a: $ea $99 $c2
	ld   a, $09                                      ; $5b1d: $3e $09
	ld   [wFarCallBank], a                                  ; $5b1f: $ea $9a $c2
	pop  af                                          ; $5b22: $f1
	call FarCall                                       ; $5b23: $cd $62 $09
	jr   c, jr_004_5b36                              ; $5b26: $38 $0e

	ld   a, $a3                                      ; $5b28: $3e $a3
	ld   de, $d000                                   ; $5b2a: $11 $00 $d0
	ld   hl, $6dcc                                   ; $5b2d: $21 $cc $6d
	ld   bc, $0080                                   ; $5b30: $01 $80 $00
	call FarMemCopy                                       ; $5b33: $cd $b2 $09

jr_004_5b36:
	xor  a                                           ; $5b36: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $5b37: $ea $62 $c3
	ld   a, $40                                      ; $5b3a: $3e $40
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $5b3c: $ea $63 $c3
	ld   a, $03                                      ; $5b3f: $3e $03
	ld   b, $00                                      ; $5b41: $06 $00
	ld   hl, wBGPalettes                                   ; $5b43: $21 $de $c2
	ld   c, $00                                      ; $5b46: $0e $00
	ld   de, $d000                                   ; $5b48: $11 $00 $d0
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $5b4b: $cd $48 $07

jr_004_5b4e:
	ld   hl, wDormRoomMiscCounterIdx                                   ; $5b4e: $21 $7a $cc
	ld   a, [hl]                                     ; $5b51: $7e
	inc  [hl]                                        ; $5b52: $34
	cp   $3f                                         ; $5b53: $fe $3f
	jr   nc, jr_004_5b60                             ; $5b55: $30 $09

	and  $07                                         ; $5b57: $e6 $07
	ret  nz                                          ; $5b59: $c0

	ld   bc, $0040                                   ; $5b5a: $01 $40 $00
	jp   FadePalettesAndSetRangeToUpdate                                       ; $5b5d: $c3 $32 $08


jr_004_5b60:
	ld   a, $00                                      ; $5b60: $3e $00
	ld   hl, $d000                                   ; $5b62: $21 $00 $d0
	ld   de, wBGPalettes                                   ; $5b65: $11 $de $c2
	ld   bc, $0080                                   ; $5b68: $01 $80 $00
	call FarMemCopy                                       ; $5b6b: $cd $b2 $09
	ld   bc, $003f                                   ; $5b6e: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $5b71: $cd $aa $04
	jp   IncDormRoomAnimationStep                               ; $5b74: $c3 $cc $58


DormRoomAnimationHandler02:
	call Call_004_570c                               ; $5b77: $cd $0c $57
	ld   a, [$cc80]                                  ; $5b7a: $fa $80 $cc
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $5b7d: $cd $76 $30
	push af                                          ; $5b80: $f5
	ld   a, $95                                      ; $5b81: $3e $95
	ld   [wFarCallAddr], a                                  ; $5b83: $ea $98 $c2
	ld   a, $44                                      ; $5b86: $3e $44
	ld   [wFarCallAddr+1], a                                  ; $5b88: $ea $99 $c2
	ld   a, $01                                      ; $5b8b: $3e $01
	ld   [wFarCallBank], a                                  ; $5b8d: $ea $9a $c2
	pop  af                                          ; $5b90: $f1
	call FarCall                                       ; $5b91: $cd $62 $09
	push af                                          ; $5b94: $f5
	ld   a, $0a                                      ; $5b95: $3e $0a
	ld   [wFarCallAddr], a                                  ; $5b97: $ea $98 $c2
	ld   a, $45                                      ; $5b9a: $3e $45
	ld   [wFarCallAddr+1], a                                  ; $5b9c: $ea $99 $c2
	ld   a, $01                                      ; $5b9f: $3e $01
	ld   [wFarCallBank], a                                  ; $5ba1: $ea $9a $c2
	pop  af                                          ; $5ba4: $f1
	call FarCall                                       ; $5ba5: $cd $62 $09
	bit  7, a                                        ; $5ba8: $cb $7f
	ret  nz                                          ; $5baa: $c0

	or   a                                           ; $5bab: $b7
	ret  z                                           ; $5bac: $c8

	push af                                          ; $5bad: $f5
	ld   a, $a0                                      ; $5bae: $3e $a0
	ld   [wFarCallAddr], a                                  ; $5bb0: $ea $98 $c2
	ld   a, $44                                      ; $5bb3: $3e $44
	ld   [wFarCallAddr+1], a                                  ; $5bb5: $ea $99 $c2
	ld   a, $01                                      ; $5bb8: $3e $01
	ld   [wFarCallBank], a                                  ; $5bba: $ea $9a $c2
	pop  af                                          ; $5bbd: $f1
	call FarCall                                       ; $5bbe: $cd $62 $09
	dec  a                                           ; $5bc1: $3d
	ld   [$cc81], a                                  ; $5bc2: $ea $81 $cc
	call Call_004_5aed                               ; $5bc5: $cd $ed $5a
	ld   [$cc82], a                                  ; $5bc8: $ea $82 $cc
	sla  a                                           ; $5bcb: $cb $27
	ld   h, $00                                      ; $5bcd: $26 $00
	ld   l, a                                        ; $5bcf: $6f
	ld   bc, $5bd8                                   ; $5bd0: $01 $d8 $5b
	add  hl, bc                                      ; $5bd3: $09
	ld   a, [hl+]                                    ; $5bd4: $2a
	ld   h, [hl]                                     ; $5bd5: $66
	ld   l, a                                        ; $5bd6: $6f
	jp   hl                                          ; $5bd7: $e9


	xor  $5b                                         ; $5bd8: $ee $5b
	ld   hl, sp+$5b                                  ; $5bda: $f8 $5b
	ld   [bc], a                                     ; $5bdc: $02
	ld   e, h                                        ; $5bdd: $5c
	dec  b                                           ; $5bde: $05
	ld   e, h                                        ; $5bdf: $5c
	ld   e, $5c                                      ; $5be0: $1e $5c
	ld   hl, $ee5c                                   ; $5be2: $21 $5c $ee
	ld   e, e                                        ; $5be5: $5b
	ld   c, b                                        ; $5be6: $48
	ld   e, h                                        ; $5be7: $5c
	ld   c, d                                        ; $5be8: $4a
	ld   e, h                                        ; $5be9: $5c
	ld   [hl], c                                     ; $5bea: $71
	ld   e, h                                        ; $5beb: $5c
	sub  e                                           ; $5bec: $93
	ld   e, h                                        ; $5bed: $5c
	ld   a, $04                                      ; $5bee: $3e $04
	ld   [wDormRoomAnimationStep], a                                  ; $5bf0: $ea $79 $cc
	xor  a                                           ; $5bf3: $af
	ld   [wDormRoomMiscCounterIdx], a                                  ; $5bf4: $ea $7a $cc
	ret                                              ; $5bf7: $c9


	ld   a, $05                                      ; $5bf8: $3e $05
	ld   [wDormRoomAnimationStep], a                                  ; $5bfa: $ea $79 $cc
	xor  a                                           ; $5bfd: $af
	ld   [wDormRoomMiscCounterIdx], a                                  ; $5bfe: $ea $7a $cc
	ret                                              ; $5c01: $c9


	jp   IncDormRoomAnimationStep                               ; $5c02: $c3 $cc $58


	push af                                          ; $5c05: $f5
	ld   a, $a2                                      ; $5c06: $3e $a2
	ld   [wFarCallAddr], a                                  ; $5c08: $ea $98 $c2
	ld   a, $71                                      ; $5c0b: $3e $71
	ld   [wFarCallAddr+1], a                                  ; $5c0d: $ea $99 $c2
	ld   a, $0c                                      ; $5c10: $3e $0c
	ld   [wFarCallBank], a                                  ; $5c12: $ea $9a $c2
	pop  af                                          ; $5c15: $f1
	call FarCall                                       ; $5c16: $cd $62 $09
	or   a                                           ; $5c19: $b7
	ret  nz                                          ; $5c1a: $c0

	jp   Jump_004_5c9d                               ; $5c1b: $c3 $9d $5c


	jp   Jump_004_5c9d                               ; $5c1e: $c3 $9d $5c


	ld   a, [wWramBank]                                  ; $5c21: $fa $93 $c2
	push af                                          ; $5c24: $f5
	ld   a, $02                                      ; $5c25: $3e $02
	ld   [wWramBank], a                                  ; $5c27: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5c2a: $e0 $70
	ld   hl, $d340                                   ; $5c2c: $21 $40 $d3
	ld   bc, $0280                                   ; $5c2f: $01 $80 $02
	ld   de, $0000                                   ; $5c32: $11 $00 $00
	call CopyEthenDintoHL_BCtimes                                       ; $5c35: $cd $9f $09
	pop  af                                          ; $5c38: $f1
	ld   [wWramBank], a                                  ; $5c39: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5c3c: $e0 $70
	ld   a, $06                                      ; $5c3e: $3e $06
	ld   [wDormRoomAnimationStep], a                                  ; $5c40: $ea $79 $cc
	xor  a                                           ; $5c43: $af
	ld   [wDormRoomMiscCounterIdx], a                                  ; $5c44: $ea $7a $cc
	ret                                              ; $5c47: $c9


	jr   jr_004_5c9d                                 ; $5c48: $18 $53

	ld   a, [wWramBank]                                  ; $5c4a: $fa $93 $c2
	push af                                          ; $5c4d: $f5
	ld   a, $02                                      ; $5c4e: $3e $02
	ld   [wWramBank], a                                  ; $5c50: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5c53: $e0 $70
	ld   hl, $d340                                   ; $5c55: $21 $40 $d3
	ld   bc, $0280                                   ; $5c58: $01 $80 $02
	ld   de, $0000                                   ; $5c5b: $11 $00 $00
	call CopyEthenDintoHL_BCtimes                                       ; $5c5e: $cd $9f $09
	pop  af                                          ; $5c61: $f1
	ld   [wWramBank], a                                  ; $5c62: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5c65: $e0 $70
	ld   a, $07                                      ; $5c67: $3e $07
	ld   [wDormRoomAnimationStep], a                                  ; $5c69: $ea $79 $cc
	xor  a                                           ; $5c6c: $af
	ld   [wDormRoomMiscCounterIdx], a                                  ; $5c6d: $ea $7a $cc
	ret                                              ; $5c70: $c9


	ld   hl, $00c6                                   ; $5c71: $21 $c6 $00
	xor  a                                           ; $5c74: $af
	push af                                          ; $5c75: $f5
	ld   a, $37                                      ; $5c76: $3e $37
	ld   [wFarCallAddr], a                                  ; $5c78: $ea $98 $c2
	ld   a, $45                                      ; $5c7b: $3e $45
	ld   [wFarCallAddr+1], a                                  ; $5c7d: $ea $99 $c2
	ld   a, $09                                      ; $5c80: $3e $09
	ld   [wFarCallBank], a                                  ; $5c82: $ea $9a $c2
	pop  af                                          ; $5c85: $f1
	call FarCall                                       ; $5c86: $cd $62 $09
	ld   a, $08                                      ; $5c89: $3e $08
	ld   [wDormRoomAnimationStep], a                                  ; $5c8b: $ea $79 $cc
	xor  a                                           ; $5c8e: $af
	ld   [wDormRoomMiscCounterIdx], a                                  ; $5c8f: $ea $7a $cc
	ret                                              ; $5c92: $c9


	ld   a, $09                                      ; $5c93: $3e $09
	ld   [wDormRoomAnimationStep], a                                  ; $5c95: $ea $79 $cc
	xor  a                                           ; $5c98: $af
	ld   [wDormRoomMiscCounterIdx], a                                  ; $5c99: $ea $7a $cc
	ret                                              ; $5c9c: $c9


Jump_004_5c9d:
jr_004_5c9d:
	ld   a, $15                                      ; $5c9d: $3e $15
	ld   [wDormRoomAnimationStep], a                                  ; $5c9f: $ea $79 $cc
	xor  a                                           ; $5ca2: $af
	ld   [wDormRoomMiscCounterIdx], a                                  ; $5ca3: $ea $7a $cc
	ret                                              ; $5ca6: $c9


DormRoomAnimationHandler03:
	ld   hl, $cc89                                   ; $5ca7: $21 $89 $cc
	ld   a, [hl]                                     ; $5caa: $7e
	cp   $01                                         ; $5cab: $fe $01
	jr   z, jr_004_5cd2                              ; $5cad: $28 $23

	ld   a, $01                                      ; $5caf: $3e $01
	ld   [hl], a                                     ; $5cb1: $77
	ld   c, $81                                      ; $5cb2: $0e $81
	ld   de, $98e0                                   ; $5cb4: $11 $e0 $98
	ld   a, $07                                      ; $5cb7: $3e $07
	ld   hl, $db20                                   ; $5cb9: $21 $20 $db
	ld   b, $0e                                      ; $5cbc: $06 $0e
	call EnqueueHDMATransfer                                       ; $5cbe: $cd $7c $02
	ld   c, $80                                      ; $5cc1: $0e $80
	ld   de, $98e0                                   ; $5cc3: $11 $e0 $98
	ld   a, $07                                      ; $5cc6: $3e $07
	ld   hl, $df20                                   ; $5cc8: $21 $20 $df
	ld   b, $0e                                      ; $5ccb: $06 $0e
	call EnqueueHDMATransfer                                       ; $5ccd: $cd $7c $02
	jr   jr_004_5cf3                                 ; $5cd0: $18 $21

jr_004_5cd2:
	ld   a, $00                                      ; $5cd2: $3e $00
	ld   [hl], a                                     ; $5cd4: $77
	ld   c, $81                                      ; $5cd5: $0e $81
	ld   de, $98e0                                   ; $5cd7: $11 $e0 $98
	ld   a, $07                                      ; $5cda: $3e $07
	ld   hl, $d8e0                                   ; $5cdc: $21 $e0 $d8
	ld   b, $0e                                      ; $5cdf: $06 $0e
	call EnqueueHDMATransfer                                       ; $5ce1: $cd $7c $02
	ld   c, $80                                      ; $5ce4: $0e $80
	ld   de, $98e0                                   ; $5ce6: $11 $e0 $98
	ld   a, $07                                      ; $5ce9: $3e $07
	ld   hl, $dce0                                   ; $5ceb: $21 $e0 $dc
	ld   b, $0e                                      ; $5cee: $06 $0e
	call EnqueueHDMATransfer                                       ; $5cf0: $cd $7c $02

jr_004_5cf3:
	ld   a, $02                                      ; $5cf3: $3e $02
	ld   [wDormRoomAnimationStep], a                                  ; $5cf5: $ea $79 $cc
	xor  a                                           ; $5cf8: $af
	ld   [wDormRoomMiscCounterIdx], a                                  ; $5cf9: $ea $7a $cc
	ret                                              ; $5cfc: $c9


DormRoomAnimationHandler04:
	xor  a                                           ; $5cfd: $af
	ld   [$cc91], a                                  ; $5cfe: $ea $91 $cc
	ld   a, $01                                      ; $5d01: $3e $01
	ld   [$cc8a], a                                  ; $5d03: $ea $8a $cc
	ld   a, $07                                      ; $5d06: $3e $07
	ld   [$cc8b], a                                  ; $5d08: $ea $8b $cc
	ld   a, $0a                                      ; $5d0b: $3e $0a
	ld   [wDormRoomAnimationStep], a                                  ; $5d0d: $ea $79 $cc
	xor  a                                           ; $5d10: $af
	ld   [wDormRoomMiscCounterIdx], a                                  ; $5d11: $ea $7a $cc
	ret                                              ; $5d14: $c9


DormRoomAnimationHandler05:
	xor  a                                           ; $5d15: $af
	ld   [$cc91], a                                  ; $5d16: $ea $91 $cc
	ld   a, $01                                      ; $5d19: $3e $01
	ld   [$cc8a], a                                  ; $5d1b: $ea $8a $cc
	xor  a                                           ; $5d1e: $af
	ld   [$cc8b], a                                  ; $5d1f: $ea $8b $cc
	ld   a, $0a                                      ; $5d22: $3e $0a
	ld   [wDormRoomAnimationStep], a                                  ; $5d24: $ea $79 $cc
	xor  a                                           ; $5d27: $af
	ld   [wDormRoomMiscCounterIdx], a                                  ; $5d28: $ea $7a $cc
	ret                                              ; $5d2b: $c9


DormRoomAnimationHandler06:
	xor  a                                           ; $5d2c: $af
	ld   [$cc91], a                                  ; $5d2d: $ea $91 $cc
	ld   a, $01                                      ; $5d30: $3e $01
	ld   [$cc8a], a                                  ; $5d32: $ea $8a $cc
	ld   a, [sCurrDay]                                  ; $5d35: $fa $b0 $af
	dec  a                                           ; $5d38: $3d
	ld   h, a                                        ; $5d39: $67
	ld   l, $07                                      ; $5d3a: $2e $07
	call HLequHdivModL                                       ; $5d3c: $cd $fb $0b
	ld   a, l                                        ; $5d3f: $7d
	ld   [$cc8b], a                                  ; $5d40: $ea $8b $cc
	ld   a, [wDormRoomOptionsSetupIdx]                                  ; $5d43: $fa $7e $cc
	cp   $03                                         ; $5d46: $fe $03
	jp   c, Jump_004_5d60                            ; $5d48: $da $60 $5d

	ld   a, $06                                      ; $5d4b: $3e $06
	ld   [$cc8a], a                                  ; $5d4d: $ea $8a $cc
	ld   a, $01                                      ; $5d50: $3e $01
	ld   hl, $cc8b                                   ; $5d52: $21 $8b $cc
	ld   [hl+], a                                    ; $5d55: $22
	inc  a                                           ; $5d56: $3c
	ld   [hl+], a                                    ; $5d57: $22
	inc  a                                           ; $5d58: $3c
	ld   [hl+], a                                    ; $5d59: $22
	inc  a                                           ; $5d5a: $3c
	ld   [hl+], a                                    ; $5d5b: $22
	inc  a                                           ; $5d5c: $3c
	ld   [hl+], a                                    ; $5d5d: $22
	inc  a                                           ; $5d5e: $3c
	ld   [hl+], a                                    ; $5d5f: $22

Jump_004_5d60:
	ld   a, $0a                                      ; $5d60: $3e $0a
	ld   [wDormRoomAnimationStep], a                                  ; $5d62: $ea $79 $cc
	xor  a                                           ; $5d65: $af
	ld   [wDormRoomMiscCounterIdx], a                                  ; $5d66: $ea $7a $cc
	ret                                              ; $5d69: $c9


DormRoomAnimationHandler07:
	xor  a                                           ; $5d6a: $af
	ld   [$cc91], a                                  ; $5d6b: $ea $91 $cc
	ld   [$cc8a], a                                  ; $5d6e: $ea $8a $cc
	ld   hl, $b090                                   ; $5d71: $21 $90 $b0
	ld   de, $cc8b                                   ; $5d74: $11 $8b $cc
	ld   b, $06                                      ; $5d77: $06 $06
	ld   c, $08                                      ; $5d79: $0e $08

jr_004_5d7b:
	ld   a, [hl+]                                    ; $5d7b: $2a
	or   a                                           ; $5d7c: $b7
	jr   z, jr_004_5d89                              ; $5d7d: $28 $0a

	ld   a, c                                        ; $5d7f: $79
	ld   [de], a                                     ; $5d80: $12
	inc  de                                          ; $5d81: $13
	ld   a, [$cc8a]                                  ; $5d82: $fa $8a $cc
	inc  a                                           ; $5d85: $3c
	ld   [$cc8a], a                                  ; $5d86: $ea $8a $cc

jr_004_5d89:
	inc  c                                           ; $5d89: $0c
	dec  b                                           ; $5d8a: $05
	jr   nz, jr_004_5d7b                             ; $5d8b: $20 $ee

	ld   a, $0a                                      ; $5d8d: $3e $0a
	ld   [wDormRoomAnimationStep], a                                  ; $5d8f: $ea $79 $cc
	xor  a                                           ; $5d92: $af
	ld   [wDormRoomMiscCounterIdx], a                                  ; $5d93: $ea $7a $cc
	ret                                              ; $5d96: $c9


DormRoomAnimationHandler08:
	xor  a                                           ; $5d97: $af
	ld   [$cc91], a                                  ; $5d98: $ea $91 $cc
	ld   a, $01                                      ; $5d9b: $3e $01
	ld   [$cc8a], a                                  ; $5d9d: $ea $8a $cc
	ld   a, $0e                                      ; $5da0: $3e $0e
	ld   [$cc8b], a                                  ; $5da2: $ea $8b $cc
	ld   a, $0a                                      ; $5da5: $3e $0a
	ld   [wDormRoomAnimationStep], a                                  ; $5da7: $ea $79 $cc
	xor  a                                           ; $5daa: $af
	ld   [wDormRoomMiscCounterIdx], a                                  ; $5dab: $ea $7a $cc
	ret                                              ; $5dae: $c9


DormRoomAnimationHandler09:
	xor  a                                           ; $5daf: $af
	ld   [$cc91], a                                  ; $5db0: $ea $91 $cc
	ld   a, $01                                      ; $5db3: $3e $01
	ld   [$cc8a], a                                  ; $5db5: $ea $8a $cc
	ld   a, $0f                                      ; $5db8: $3e $0f
	ld   [$cc8b], a                                  ; $5dba: $ea $8b $cc
	ld   a, $0a                                      ; $5dbd: $3e $0a
	ld   [wDormRoomAnimationStep], a                                  ; $5dbf: $ea $79 $cc
	xor  a                                           ; $5dc2: $af
	ld   [wDormRoomMiscCounterIdx], a                                  ; $5dc3: $ea $7a $cc
	ret                                              ; $5dc6: $c9


DormRoomAnimationHandler0a:
	ld   hl, wDormRoomDaySpritesX                                   ; $5dc7: $21 $7f $cc
	ld   a, [hl]                                     ; $5dca: $7e
	add  $08                                         ; $5dcb: $c6 $08
	ld   [hl], a                                     ; $5dcd: $77
	ld   a, [wDormRoomMiscCounterIdx]                                  ; $5dce: $fa $7a $cc
	or   a                                           ; $5dd1: $b7
	jr   nz, jr_004_5ded                             ; $5dd2: $20 $19

	ld   a, $08                                      ; $5dd4: $3e $08
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $5dd6: $ea $62 $c3
	ld   a, $0c                                      ; $5dd9: $3e $0c
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $5ddb: $ea $63 $c3
	ld   a, $04                                      ; $5dde: $3e $04
	ld   b, $00                                      ; $5de0: $06 $00
	ld   hl, wBGPalettes                                   ; $5de2: $21 $de $c2
	ld   c, BANK(Palettes_AllBlack)                                      ; $5de5: $0e $01
	ld   de, Palettes_AllBlack                                   ; $5de7: $11 $80 $70
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $5dea: $cd $48 $07

jr_004_5ded:
	ld   hl, wDormRoomMiscCounterIdx                                   ; $5ded: $21 $7a $cc
	ld   a, [hl]                                     ; $5df0: $7e
	inc  [hl]                                        ; $5df1: $34
	cp   $07                                         ; $5df2: $fe $07
	jp   nc, IncDormRoomAnimationStep                           ; $5df4: $d2 $cc $58

	and  $01                                         ; $5df7: $e6 $01
	ret  nz                                          ; $5df9: $c0

	ld   bc, $080c                                   ; $5dfa: $01 $0c $08
	jp   FadePalettesAndSetRangeToUpdate                                       ; $5dfd: $c3 $32 $08


DormRoomAnimationHandler0b:
	call Call_004_6113                               ; $5e00: $cd $13 $61
	call Call_004_5fd2                               ; $5e03: $cd $d2 $5f
	ld   h, $00                                      ; $5e06: $26 $00
	ld   l, a                                        ; $5e08: $6f
	add  hl, hl                                      ; $5e09: $29
	ld   b, h                                        ; $5e0a: $44
	ld   c, l                                        ; $5e0b: $4d
	add  hl, hl                                      ; $5e0c: $29
	add  hl, bc                                      ; $5e0d: $09
	ld   bc, $5edd                                   ; $5e0e: $01 $dd $5e
	add  hl, bc                                      ; $5e11: $09
	ld   a, [wDormRoomMiscCounterIdx]                                  ; $5e12: $fa $7a $cc
	or   a                                           ; $5e15: $b7
	jr   nz, jr_004_5e45                             ; $5e16: $20 $2d

	inc  a                                           ; $5e18: $3c
	ld   [wDormRoomMiscCounterIdx], a                                  ; $5e19: $ea $7a $cc
	ld   a, $04                                      ; $5e1c: $3e $04
	call FarGetAddrBank                                       ; $5e1e: $cd $09 $0b
	ld   d, h                                        ; $5e21: $54
	ld   e, l                                        ; $5e22: $5d
	ld   hl, $d000                                   ; $5e23: $21 $00 $d0
	call RLEXorCopy                                       ; $5e26: $cd $d2 $09
	ld   c, $80                                      ; $5e29: $0e $80
	ld   de, $8000                                   ; $5e2b: $11 $00 $80
	ld   a, $07                                      ; $5e2e: $3e $07
	ld   hl, $d000                                   ; $5e30: $21 $00 $d0
	ld   b, $60                                      ; $5e33: $06 $60
	call EnqueueHDMATransfer                                       ; $5e35: $cd $7c $02
	ld   a, [$cc93]                                  ; $5e38: $fa $93 $cc
	call StopAnimatingAnimatedSpriteSpec                                       ; $5e3b: $cd $06 $30
	ld   a, [$cc94]                                  ; $5e3e: $fa $94 $cc
	call StopAnimatingAnimatedSpriteSpec                                       ; $5e41: $cd $06 $30
	ret                                              ; $5e44: $c9


jr_004_5e45:
	push hl                                          ; $5e45: $e5
	ld   c, $80                                      ; $5e46: $0e $80
	ld   de, $8600                                   ; $5e48: $11 $00 $86
	ld   a, $07                                      ; $5e4b: $3e $07
	ld   hl, $d600                                   ; $5e4d: $21 $00 $d6
	ld   b, $20                                      ; $5e50: $06 $20
	call EnqueueHDMATransfer                                       ; $5e52: $cd $7c $02
	pop  hl                                          ; $5e55: $e1
	inc  hl                                          ; $5e56: $23
	inc  hl                                          ; $5e57: $23
	inc  hl                                          ; $5e58: $23
	ld   a, $04                                      ; $5e59: $3e $04
	call FarGetAddrBank                                       ; $5e5b: $cd $09 $0b
	ld   de, wOBJPalettes                                   ; $5e5e: $11 $1e $c3
	ld   bc, $0020                                   ; $5e61: $01 $20 $00
	call FarMemCopy                                       ; $5e64: $cd $b2 $09
	ld   bc, $202f                                   ; $5e67: $01 $2f $20
	call SetBGandOBJPaletteRangesToUpdate                                       ; $5e6a: $cd $aa $04
	call $5f5d                                       ; $5e6d: $cd $5d $5f
	call Call_004_5fd2                               ; $5e70: $cd $d2 $5f
	sla  a                                           ; $5e73: $cb $27
	ld   h, $00                                      ; $5e75: $26 $00
	ld   l, a                                        ; $5e77: $6f
	ld   bc, $5f3d                                   ; $5e78: $01 $3d $5f
	add  hl, bc                                      ; $5e7b: $09
	ld   a, [hl+]                                    ; $5e7c: $2a
	ld   h, [hl]                                     ; $5e7d: $66
	ld   l, a                                        ; $5e7e: $6f
	push hl                                          ; $5e7f: $e5
	ld   a, [$cc93]                                  ; $5e80: $fa $93 $cc
	call StartAnimatingAnimatedSpriteSpec                                       ; $5e83: $cd $14 $30
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $5e86: $cd $76 $30
	ld   de, $7762                                   ; $5e89: $11 $62 $77
	pop  bc                                          ; $5e8c: $c1
	push bc                                          ; $5e8d: $c5
	ld   a, c                                        ; $5e8e: $79
	cp   $24                                         ; $5e8f: $fe $24
	jr   nz, jr_004_5e9f                             ; $5e91: $20 $0c

	ld   a, [$aff7]                                  ; $5e93: $fa $f7 $af
	cp   $03                                         ; $5e96: $fe $03
	jr   c, jr_004_5e9e                              ; $5e98: $38 $04

	ld   a, c                                        ; $5e9a: $79
	inc  a                                           ; $5e9b: $3c
	jr   jr_004_5e9f                                 ; $5e9c: $18 $01

jr_004_5e9e:
	ld   a, c                                        ; $5e9e: $79

jr_004_5e9f:
	ld   bc, $4068                                   ; $5e9f: $01 $68 $40
	push af                                          ; $5ea2: $f5
	ld   a, $03                                      ; $5ea3: $3e $03
	ld   [wFarCallAddr], a                                  ; $5ea5: $ea $98 $c2
	ld   a, $41                                      ; $5ea8: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $5eaa: $ea $99 $c2
	ld   a, $01                                      ; $5ead: $3e $01
	ld   [wFarCallBank], a                                  ; $5eaf: $ea $9a $c2
	pop  af                                          ; $5eb2: $f1
	call FarCall                                       ; $5eb3: $cd $62 $09
	ld   a, [$cc94]                                  ; $5eb6: $fa $94 $cc
	call StartAnimatingAnimatedSpriteSpec                                       ; $5eb9: $cd $14 $30
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $5ebc: $cd $76 $30
	ld   de, $7762                                   ; $5ebf: $11 $62 $77
	ld   bc, $4068                                   ; $5ec2: $01 $68 $40
	pop  af                                          ; $5ec5: $f1
	push af                                          ; $5ec6: $f5
	ld   a, $03                                      ; $5ec7: $3e $03
	ld   [wFarCallAddr], a                                  ; $5ec9: $ea $98 $c2
	ld   a, $41                                      ; $5ecc: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $5ece: $ea $99 $c2
	ld   a, $01                                      ; $5ed1: $3e $01
	ld   [wFarCallBank], a                                  ; $5ed3: $ea $9a $c2
	pop  af                                          ; $5ed6: $f1
	call FarCall                                       ; $5ed7: $cd $62 $09
	jp   IncDormRoomAnimationStep                               ; $5eda: $c3 $cc $58


	sbc  l                                           ; $5edd: $9d
	ld   h, b                                        ; $5ede: $60
	and  d                                           ; $5edf: $a2
	ld   [$a462], sp                                 ; $5ee0: $08 $62 $a4
	rst  $10                                         ; $5ee3: $d7
	ld   a, l                                        ; $5ee4: $7d
	and  b                                           ; $5ee5: $a0
	adc  b                                           ; $5ee6: $88
	ld   h, b                                        ; $5ee7: $60
	and  h                                           ; $5ee8: $a4
	sbc  $53                                         ; $5ee9: $de $53
	and  d                                           ; $5eeb: $a2
	xor  b                                           ; $5eec: $a8
	ld   h, b                                        ; $5eed: $60
	and  h                                           ; $5eee: $a4
	ld   [hl], $69                                   ; $5eef: $36 $69
	and  d                                           ; $5ef1: $a2
	ret  z                                           ; $5ef2: $c8

	ld   h, b                                        ; $5ef3: $60
	and  h                                           ; $5ef4: $a4
	cp   [hl]                                        ; $5ef5: $be
	ld   d, l                                        ; $5ef6: $55
	and  d                                           ; $5ef7: $a2
	add  sp, $60                                     ; $5ef8: $e8 $60
	and  h                                           ; $5efa: $a4
	ld   b, $53                                      ; $5efb: $06 $53
	and  e                                           ; $5efd: $a3
	ld   [$a461], sp                                 ; $5efe: $08 $61 $a4
	adc  l                                           ; $5f01: $8d
	ld   a, h                                        ; $5f02: $7c
	sbc  b                                           ; $5f03: $98
	jr   z, @+$63                                    ; $5f04: $28 $61

	and  h                                           ; $5f06: $a4
	sbc  l                                           ; $5f07: $9d
	ld   h, b                                        ; $5f08: $60
	and  d                                           ; $5f09: $a2
	ld   [$a462], sp                                 ; $5f0a: $08 $62 $a4
	jp   c, $a357                                    ; $5f0d: $da $57 $a3

	ld   c, b                                        ; $5f10: $48
	ld   h, c                                        ; $5f11: $61
	and  h                                           ; $5f12: $a4
	jp   hl                                          ; $5f13: $e9


	ld   l, a                                        ; $5f14: $6f
	and  d                                           ; $5f15: $a2
	ld   l, b                                        ; $5f16: $68
	ld   h, c                                        ; $5f17: $61
	and  h                                           ; $5f18: $a4
	or   d                                           ; $5f19: $b2
	ld   d, [hl]                                     ; $5f1a: $56
	and  e                                           ; $5f1b: $a3
	adc  b                                           ; $5f1c: $88
	ld   h, c                                        ; $5f1d: $61
	and  h                                           ; $5f1e: $a4
	ld   [hl-], a                                    ; $5f1f: $32
	ld   e, e                                        ; $5f20: $5b
	and  d                                           ; $5f21: $a2
	xor  b                                           ; $5f22: $a8
	ld   h, c                                        ; $5f23: $61
	and  h                                           ; $5f24: $a4
	xor  e                                           ; $5f25: $ab
	ld   b, h                                        ; $5f26: $44
	and  e                                           ; $5f27: $a3
	ret  z                                           ; $5f28: $c8

	ld   h, c                                        ; $5f29: $61
	and  h                                           ; $5f2a: $a4
	inc  hl                                          ; $5f2b: $23
	ld   a, e                                        ; $5f2c: $7b
	and  b                                           ; $5f2d: $a0
	add  sp, $61                                     ; $5f2e: $e8 $61
	and  h                                           ; $5f30: $a4
	ld   b, d                                        ; $5f31: $42
	ld   h, e                                        ; $5f32: $63
	sbc  a                                           ; $5f33: $9f
	ld   c, b                                        ; $5f34: $48
	ld   h, d                                        ; $5f35: $62
	and  h                                           ; $5f36: $a4
	add  d                                           ; $5f37: $82
	ld   e, c                                        ; $5f38: $59
	sbc  [hl]                                        ; $5f39: $9e
	jr   z, @+$64                                    ; $5f3a: $28 $62

	and  h                                           ; $5f3c: $a4
	dec  e                                           ; $5f3d: $1d
	ld   l, $1e                                      ; $5f3e: $2e $1e
	ld   l, $1f                                      ; $5f40: $2e $1f
	ld   l, $20                                      ; $5f42: $2e $20
	ld   l, $21                                      ; $5f44: $2e $21
	ld   [hl+], a                                    ; $5f46: $22
	inc  hl                                          ; $5f47: $23
	ld   l, $24                                      ; $5f48: $2e $24
	ld   l, $26                                      ; $5f4a: $2e $26
	ld   l, $27                                      ; $5f4c: $2e $27
	ld   l, $28                                      ; $5f4e: $2e $28
	ld   l, $29                                      ; $5f50: $2e $29
	ld   l, $2a                                      ; $5f52: $2e $2a
	ld   l, $2b                                      ; $5f54: $2e $2b
	ld   l, $2c                                      ; $5f56: $2e $2c
	ld   l, $2d                                      ; $5f58: $2e $2d
	ld   l, $2f                                      ; $5f5a: $2e $2f
	ld   l, $fa                                      ; $5f5c: $2e $fa
	sub  e                                           ; $5f5e: $93
	jp   nz, $3ef5                                   ; $5f5f: $c2 $f5 $3e

	ld   [bc], a                                     ; $5f62: $02
	ld   [wWramBank], a                                  ; $5f63: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5f66: $e0 $70
	ld   hl, $d340                                   ; $5f68: $21 $40 $d3
	ld   bc, $0280                                   ; $5f6b: $01 $80 $02
	ld   de, $0000                                   ; $5f6e: $11 $00 $00
	call CopyEthenDintoHL_BCtimes                                       ; $5f71: $cd $9f $09
	call InitWideTextBoxDimensions                                       ; $5f74: $cd $ec $0f
	ld   bc, $1401                                   ; $5f77: $01 $01 $14
	call SetKanjiTextBoxDimensions                                       ; $5f7a: $cd $24 $14
	ld   bc, $0100                                   ; $5f7d: $01 $00 $01
	call SetCurrKanjiColAndRowToDrawOn                                       ; $5f80: $cd $34 $14
	call Call_004_5fd2                               ; $5f83: $cd $d2 $5f
	cp   $07                                         ; $5f86: $fe $07
	jr   z, jr_004_5fcb                              ; $5f88: $28 $41

	cp   $06                                         ; $5f8a: $fe $06
	jr   nz, jr_004_5f9b                             ; $5f8c: $20 $0d

	ld   a, [$aff7]                                  ; $5f8e: $fa $f7 $af
	cp   $03                                         ; $5f91: $fe $03
	jr   c, jr_004_5f99                              ; $5f93: $38 $04

	ld   a, $10                                      ; $5f95: $3e $10
	jr   jr_004_5f9b                                 ; $5f97: $18 $02

jr_004_5f99:
	ld   a, $06                                      ; $5f99: $3e $06

jr_004_5f9b:
	add  $0b                                         ; $5f9b: $c6 $0b
	ld   h, MIT_DORM_ROOM_OPT_DESCRIPTS                                      ; $5f9d: $26 $04
	ld   l, a                                        ; $5f9f: $6f

	M_FarCall GetAddrBankOfMiscInstantText

	ld   d, h                                        ; $5fb4: $54
	ld   e, l                                        ; $5fb5: $5d
	ld   hl, $d340                                   ; $5fb6: $21 $40 $d3
	call LoadInstantText                                       ; $5fb9: $cd $06 $13
	ld   c, $81                                      ; $5fbc: $0e $81
	ld   de, $8d80                                   ; $5fbe: $11 $80 $8d
	ld   a, $02                                      ; $5fc1: $3e $02
	ld   hl, $d340                                   ; $5fc3: $21 $40 $d3
	ld   b, $28                                      ; $5fc6: $06 $28
	call EnqueueHDMATransfer                                       ; $5fc8: $cd $7c $02

jr_004_5fcb:
	pop  af                                          ; $5fcb: $f1
	ld   [wWramBank], a                                  ; $5fcc: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5fcf: $e0 $70
	ret                                              ; $5fd1: $c9


Call_004_5fd2:
	push bc                                          ; $5fd2: $c5
	push hl                                          ; $5fd3: $e5
	ld   a, [$cc91]                                  ; $5fd4: $fa $91 $cc
	ld   h, $00                                      ; $5fd7: $26 $00
	ld   l, a                                        ; $5fd9: $6f
	ld   bc, $cc8b                                   ; $5fda: $01 $8b $cc
	add  hl, bc                                      ; $5fdd: $09
	ld   a, [hl]                                     ; $5fde: $7e
	pop  hl                                          ; $5fdf: $e1
	pop  bc                                          ; $5fe0: $c1
	ret                                              ; $5fe1: $c9


DormRoomAnimationHandler0c:
	ld   a, [wInGameButtonsPressed]                                  ; $5fe2: $fa $10 $c2
	bit  0, a                                        ; $5fe5: $cb $47
	jr   nz, jr_004_6033                             ; $5fe7: $20 $4a

	bit  1, a                                        ; $5fe9: $cb $4f
	jp   nz, Jump_004_6053                           ; $5feb: $c2 $53 $60

	call Call_004_6113                               ; $5fee: $cd $13 $61
	ld   a, [$cc8a]                                  ; $5ff1: $fa $8a $cc
	dec  a                                           ; $5ff4: $3d
	ret  z                                           ; $5ff5: $c8

	ld   a, [wInGameButtonsPressed]                                  ; $5ff6: $fa $10 $c2
	bit  5, a                                        ; $5ff9: $cb $6f
	jr   nz, jr_004_6002                             ; $5ffb: $20 $05

	bit  4, a                                        ; $5ffd: $cb $67
	jr   nz, jr_004_601e                             ; $5fff: $20 $1d

	ret                                              ; $6001: $c9


jr_004_6002:
	ld   a, $20                                      ; $6002: $3e $20
	call PlaySoundEffect                                       ; $6004: $cd $df $1a
	ld   hl, $cc91                                   ; $6007: $21 $91 $cc
	dec  [hl]                                        ; $600a: $35
	bit  7, [hl]                                     ; $600b: $cb $7e
	jr   z, jr_004_6014                              ; $600d: $28 $05

	ld   a, [$cc8a]                                  ; $600f: $fa $8a $cc
	dec  a                                           ; $6012: $3d
	ld   [hl], a                                     ; $6013: $77

jr_004_6014:
	ld   a, $0b                                      ; $6014: $3e $0b
	ld   [wDormRoomAnimationStep], a                                  ; $6016: $ea $79 $cc
	xor  a                                           ; $6019: $af
	ld   [wDormRoomMiscCounterIdx], a                                  ; $601a: $ea $7a $cc
	ret                                              ; $601d: $c9


jr_004_601e:
	ld   a, $20                                      ; $601e: $3e $20
	call PlaySoundEffect                                       ; $6020: $cd $df $1a
	ld   hl, $cc91                                   ; $6023: $21 $91 $cc
	inc  [hl]                                        ; $6026: $34
	ld   a, [$cc8a]                                  ; $6027: $fa $8a $cc
	ld   b, a                                        ; $602a: $47
	ld   a, [hl]                                     ; $602b: $7e
	cp   b                                           ; $602c: $b8
	jr   c, jr_004_6014                              ; $602d: $38 $e5

	xor  a                                           ; $602f: $af
	ld   [hl], a                                     ; $6030: $77
	jr   jr_004_6014                                 ; $6031: $18 $e1

jr_004_6033:
	ld   a, $21                                      ; $6033: $3e $21
	call PlaySoundEffect                                       ; $6035: $cd $df $1a
	ld   a, $15                                      ; $6038: $3e $15
	ld   [wDormRoomAnimationStep], a                                  ; $603a: $ea $79 $cc
	xor  a                                           ; $603d: $af
	ld   [wDormRoomMiscCounterIdx], a                                  ; $603e: $ea $7a $cc
	call Call_004_5fd2                               ; $6041: $cd $d2 $5f
	push af                                          ; $6044: $f5
	sla  a                                           ; $6045: $cb $27
	ld   h, $00                                      ; $6047: $26 $00
	ld   l, a                                        ; $6049: $6f
	ld   bc, Table_04_6093                                   ; $604a: $01 $93 $60
	add  hl, bc                                      ; $604d: $09
	ld   a, [hl+]                                    ; $604e: $2a
	ld   h, [hl]                                     ; $604f: $66
	ld   l, a                                        ; $6050: $6f
	pop  af                                          ; $6051: $f1
	jp   hl                                          ; $6052: $e9


Jump_004_6053:
	ld   a, $22                                      ; $6053: $3e $22
	call PlaySoundEffect                                       ; $6055: $cd $df $1a
	ld   a, [$cc93]                                  ; $6058: $fa $93 $cc
	call StopAnimatingAnimatedSpriteSpec                                       ; $605b: $cd $06 $30
	ld   a, [$cc94]                                  ; $605e: $fa $94 $cc
	call StopAnimatingAnimatedSpriteSpec                                       ; $6061: $cd $06 $30
	ld   a, [wWramBank]                                  ; $6064: $fa $93 $c2
	push af                                          ; $6067: $f5
	ld   a, $02                                      ; $6068: $3e $02
	ld   [wWramBank], a                                  ; $606a: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $606d: $e0 $70
	ld   hl, $d340                                   ; $606f: $21 $40 $d3
	ld   bc, $0280                                   ; $6072: $01 $80 $02
	ld   de, $0000                                   ; $6075: $11 $00 $00
	call CopyEthenDintoHL_BCtimes                                       ; $6078: $cd $9f $09
	ld   c, $81                                      ; $607b: $0e $81
	ld   de, $8d80                                   ; $607d: $11 $80 $8d
	ld   a, $02                                      ; $6080: $3e $02
	ld   hl, $d340                                   ; $6082: $21 $40 $d3
	ld   b, $28                                      ; $6085: $06 $28
	call EnqueueHDMATransfer                                       ; $6087: $cd $7c $02
	pop  af                                          ; $608a: $f1
	ld   [wWramBank], a                                  ; $608b: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $608e: $e0 $70
	jp   IncDormRoomAnimationStep                               ; $6090: $c3 $cc $58


Table_04_6093:
	dw .func_60b8
	dw .func_60be
	dw .func_60be
	dw .func_60be
	dw .func_60be
	dw .func_60be
	dw .func_60be
	dw .func_60b3
	dw .func_60c7
	dw .func_60c7
	dw .func_60c7
	dw .func_60c7
	dw .func_60c7
	dw .func_60c7
	dw .func_60d2
	dw .func_60d8

.func_60b3:
	xor  a                                           ; $60b3: $af
	ld   [$cc82], a                                  ; $60b4: $ea $82 $cc
	ret                                              ; $60b7: $c9

.func_60b8:
	ld   a, $01                                      ; $60b8: $3e $01
	ld   [$cc82], a                                  ; $60ba: $ea $82 $cc
	ret                                              ; $60bd: $c9

.func_60be:
; todo: sets this from 1 to 6
	ld   [$cb1e], a                                  ; $60be: $ea $1e $cb
	ld   a, $05                                      ; $60c1: $3e $05
	ld   [$cc82], a                                  ; $60c3: $ea $82 $cc
	ret                                              ; $60c6: $c9

.func_60c7:
	sub  $08                                         ; $60c7: $d6 $08
	ld   [$afe0], a                                  ; $60c9: $ea $e0 $af
	ld   a, $08                                      ; $60cc: $3e $08
	ld   [$cc82], a                                  ; $60ce: $ea $82 $cc
	ret                                              ; $60d1: $c9

.func_60d2:
	ld   a, $09                                      ; $60d2: $3e $09
	ld   [$cc82], a                                  ; $60d4: $ea $82 $cc
	ret                                              ; $60d7: $c9

.func_60d8:
	ld   a, [wWramBank]                                  ; $60d8: $fa $93 $c2
	push af                                          ; $60db: $f5
	ld   a, $02                                      ; $60dc: $3e $02
	ld   [wWramBank], a                                  ; $60de: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $60e1: $e0 $70
	ld   hl, $d340                                   ; $60e3: $21 $40 $d3
	ld   bc, $0280                                   ; $60e6: $01 $80 $02
	ld   de, $0000                                   ; $60e9: $11 $00 $00
	call CopyEthenDintoHL_BCtimes                                       ; $60ec: $cd $9f $09
	ld   c, $81                                      ; $60ef: $0e $81
	ld   de, $8d80                                   ; $60f1: $11 $80 $8d
	ld   a, $02                                      ; $60f4: $3e $02
	ld   hl, $d340                                   ; $60f6: $21 $40 $d3
	ld   b, $28                                      ; $60f9: $06 $28
	call EnqueueHDMATransfer                                       ; $60fb: $cd $7c $02
	pop  af                                          ; $60fe: $f1
	ld   [wWramBank], a                                  ; $60ff: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $6102: $e0 $70
	ld   a, $0a                                      ; $6104: $3e $0a
	ld   [$cc82], a                                  ; $6106: $ea $82 $cc
	ld   a, $0e                                      ; $6109: $3e $0e
	ld   [wDormRoomAnimationStep], a                                  ; $610b: $ea $79 $cc
	xor  a                                           ; $610e: $af
	ld   [wDormRoomMiscCounterIdx], a                                  ; $610f: $ea $7a $cc
	ret                                              ; $6112: $c9


Call_004_6113:
	ld   a, [$cc8a]                                  ; $6113: $fa $8a $cc
	dec  a                                           ; $6116: $3d
	ret  z                                           ; $6117: $c8

	ld   a, $0c                                      ; $6118: $3e $0c
	ld   [wSpriteGroup], a                                  ; $611a: $ea $1a $c2
	ld   hl, $cc92                                   ; $611d: $21 $92 $cc
	inc  [hl]                                        ; $6120: $34
	ld   h, [hl]                                     ; $6121: $66
	ld   l, $30                                      ; $6122: $2e $30
	call HLequHdivModL                                       ; $6124: $cd $fb $0b
	ld   a, l                                        ; $6127: $7d
	ld   [$cc92], a                                  ; $6128: $ea $92 $cc
	ld   h, $00                                      ; $612b: $26 $00
	srl  l                                           ; $612d: $cb $3d
	srl  l                                           ; $612f: $cb $3d
	srl  l                                           ; $6131: $cb $3d
	ld   bc, $6150                                   ; $6133: $01 $50 $61
	add  hl, bc                                      ; $6136: $09
	push hl                                          ; $6137: $e5
	ld   a, $28                                      ; $6138: $3e $28
	sub  [hl]                                        ; $613a: $96
	ld   b, a                                        ; $613b: $47
	ld   c, $50                                      ; $613c: $0e $50
	ld   a, $1d                                      ; $613e: $3e $1d
	call LoadSpriteFromMainTable                                       ; $6140: $cd $16 $0e
	pop  hl                                          ; $6143: $e1
	ld   a, $70                                      ; $6144: $3e $70
	add  [hl]                                        ; $6146: $86
	ld   b, a                                        ; $6147: $47
	ld   c, $50                                      ; $6148: $0e $50
	ld   a, $1c                                      ; $614a: $3e $1c
	call LoadSpriteFromMainTable                                       ; $614c: $cd $16 $0e
	ret                                              ; $614f: $c9


	nop                                              ; $6150: $00
	ld   bc, $0302                                   ; $6151: $01 $02 $03
	ld   [bc], a                                     ; $6154: $02
	db $01 
	
	
DormRoomAnimationHandler0d:
	ld   hl, wDormRoomDaySpritesX ; $6156: $21 $7f $cc
	ld   a, [hl]                                    ; $6159: $7e
	sub  $08                                    ; $615a: $d6 $08
	ld   [hl], a                                 ; $615c: $77
	ld   a, [wDormRoomMiscCounterIdx]                                 ; $615d: $fa $7a $cc
	or   a                                    ; $6160: $b7
	jr   nz, jr_004_61ae                                    ; $6161: $20 $4b
	ld   a, $a3                                      ; $6163: $3e $a3
	ld   de, $d000                                   ; $6165: $11 $00 $d0
	ld   hl, $6d4c                                   ; $6168: $21 $4c $6d
	ld   bc, $0080                                   ; $616b: $01 $80 $00
	call FarMemCopy                                       ; $616e: $cd $b2 $09
	push af                                          ; $6171: $f5
	ld   a, $3e                                      ; $6172: $3e $3e
	ld   [wFarCallAddr], a                                  ; $6174: $ea $98 $c2
	ld   a, $45                                      ; $6177: $3e $45
	ld   [wFarCallAddr+1], a                                  ; $6179: $ea $99 $c2
	ld   a, $09                                      ; $617c: $3e $09
	ld   [wFarCallBank], a                                  ; $617e: $ea $9a $c2
	pop  af                                          ; $6181: $f1
	call FarCall                                       ; $6182: $cd $62 $09
	jr   c, jr_004_6195                              ; $6185: $38 $0e

	ld   a, $a3                                      ; $6187: $3e $a3
	ld   de, $d000                                   ; $6189: $11 $00 $d0
	ld   hl, $6dcc                                   ; $618c: $21 $cc $6d
	ld   bc, $0080                                   ; $618f: $01 $80 $00
	call FarMemCopy                                       ; $6192: $cd $b2 $09

jr_004_6195:
	ld   a, $08                                      ; $6195: $3e $08
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $6197: $ea $62 $c3
	ld   a, $0c                                      ; $619a: $3e $0c
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $619c: $ea $63 $c3
	ld   a, $02                                      ; $619f: $3e $02
	ld   b, $00                                      ; $61a1: $06 $00
	ld   hl, wBGPalettes                                   ; $61a3: $21 $de $c2
	ld   c, $00                                      ; $61a6: $0e $00
	ld   de, $d000                                   ; $61a8: $11 $00 $d0
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $61ab: $cd $48 $07

jr_004_61ae:
	ld   hl, wDormRoomMiscCounterIdx                                   ; $61ae: $21 $7a $cc
	ld   a, [hl]                                     ; $61b1: $7e
	inc  [hl]                                        ; $61b2: $34
	cp   $07                                         ; $61b3: $fe $07
	jr   nc, jr_004_61c0                             ; $61b5: $30 $09

	and  $01                                         ; $61b7: $e6 $01
	ret  nz                                          ; $61b9: $c0

	ld   bc, $080c                                   ; $61ba: $01 $0c $08
	jp   FadePalettesAndSetRangeToUpdate                                       ; $61bd: $c3 $32 $08


jr_004_61c0:
	ld   a, $00                                      ; $61c0: $3e $00
	ld   hl, $d000                                   ; $61c2: $21 $00 $d0
	ld   de, wBGPalettes                                   ; $61c5: $11 $de $c2
	ld   bc, $0080                                   ; $61c8: $01 $80 $00
	call FarMemCopy                                       ; $61cb: $cd $b2 $09
	ld   bc, $003f                                   ; $61ce: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $61d1: $cd $aa $04
	ld   a, $02                                      ; $61d4: $3e $02
	ld   [wDormRoomAnimationStep], a                                  ; $61d6: $ea $79 $cc
	xor  a                                           ; $61d9: $af
	ld   [wDormRoomMiscCounterIdx], a                                  ; $61da: $ea $7a $cc
	ret                                              ; $61dd: $c9


DormRoomAnimationHandler0e:
	jp   IncDormRoomAnimationStep                               ; $61de: $c3 $cc $58


DormRoomAnimationHandler0f:
	ld   hl, wDormRoomMiscCounterIdx                                   ; $61e1: $21 $7a $cc
	ld   a, [hl]                                     ; $61e4: $7e
	inc  [hl]                                        ; $61e5: $34
	sla  a                                           ; $61e6: $cb $27
	ld   h, $00                                      ; $61e8: $26 $00
	ld   l, a                                        ; $61ea: $6f
	ld   bc, $61f3                                   ; $61eb: $01 $f3 $61
	add  hl, bc                                      ; $61ee: $09
	ld   a, [hl+]                                    ; $61ef: $2a
	ld   h, [hl]                                     ; $61f0: $66
	ld   l, a                                        ; $61f1: $6f
	jp   hl                                          ; $61f2: $e9


	ld   sp, hl                                      ; $61f3: $f9
	ld   h, c                                        ; $61f4: $61
	inc  d                                           ; $61f5: $14
	ld   h, d                                        ; $61f6: $62
	inc  h                                           ; $61f7: $24
	ld   h, d                                        ; $61f8: $62
	ld   a, $9a                                      ; $61f9: $3e $9a
	ld   hl, $d000                                   ; $61fb: $21 $00 $d0
	ld   de, $44f0                                   ; $61fe: $11 $f0 $44

Call_004_6201:
	call RLEXorCopy                                       ; $6201: $cd $d2 $09
	ld   c, $81                                      ; $6204: $0e $81
	ld   de, $9000                                   ; $6206: $11 $00 $90
	ld   a, $07                                      ; $6209: $3e $07
	ld   hl, $d000                                   ; $620b: $21 $00 $d0
	ld   b, $40                                      ; $620e: $06 $40
	call EnqueueHDMATransfer                                       ; $6210: $cd $7c $02
	ret                                              ; $6213: $c9


	ld   c, $81                                      ; $6214: $0e $81
	ld   de, $9400                                   ; $6216: $11 $00 $94
	ld   a, $07                                      ; $6219: $3e $07
	ld   hl, $d400                                   ; $621b: $21 $00 $d4
	ld   b, $40                                      ; $621e: $06 $40
	call EnqueueHDMATransfer                                       ; $6220: $cd $7c $02
	ret                                              ; $6223: $c9


	ld   hl, $d000                                   ; $6224: $21 $00 $d0
	ld   a, $a3                                      ; $6227: $3e $a3
	ld   de, $5a26                                   ; $6229: $11 $26 $5a
	ld   bc, $1407                                   ; $622c: $01 $07 $14
	call FarCopyLayout                                       ; $622f: $cd $2c $0b
	ld   hl, $d100                                   ; $6232: $21 $00 $d1
	call FarCopyLayout                                       ; $6235: $cd $2c $0b
	ld   hl, $d200                                   ; $6238: $21 $00 $d2
	ld   a, $a3                                      ; $623b: $3e $a3
	ld   de, $5b3e                                   ; $623d: $11 $3e $5b
	ld   bc, $1407                                   ; $6240: $01 $07 $14
	call FarCopyLayout                                       ; $6243: $cd $2c $0b
	ld   hl, $d300                                   ; $6246: $21 $00 $d3
	call FarCopyLayout                                       ; $6249: $cd $2c $0b
	ld   hl, $d800                                   ; $624c: $21 $00 $d8
	ld   a, $99                                      ; $624f: $3e $99
	ld   de, $77f0                                   ; $6251: $11 $f0 $77
	ld   bc, $1420                                   ; $6254: $01 $20 $14
	call FarCopyLayout                                       ; $6257: $cd $2c $0b
	ld   hl, $dc00                                   ; $625a: $21 $00 $dc
	call FarCopyLayout                                       ; $625d: $cd $2c $0b
	jp   IncDormRoomAnimationStep                               ; $6260: $c3 $cc $58


DormRoomAnimationHandler10:
	ld   de, $d400                                   ; $6263: $11 $00 $d4
	ld   hl, $d8e0                                   ; $6266: $21 $e0 $d8
	ld   bc, $00e0                                   ; $6269: $01 $e0 $00
	call MemCopy                                       ; $626c: $cd $a9 $09
	ld   de, $d500                                   ; $626f: $11 $00 $d5
	ld   hl, $dce0                                   ; $6272: $21 $e0 $dc
	ld   bc, $00e0                                   ; $6275: $01 $e0 $00
	call MemCopy                                       ; $6278: $cd $a9 $09
	ld   hl, wDormRoomMiscCounterIdx                                   ; $627b: $21 $7a $cc
	ld   a, [hl]                                     ; $627e: $7e
	inc  [hl]                                        ; $627f: $34
	cp   $14                                         ; $6280: $fe $14
	jr   c, jr_004_62bb                              ; $6282: $38 $37

	ld   a, $a4                                      ; $6284: $3e $a4
	ld   hl, $5bb5                                   ; $6286: $21 $b5 $5b
	ld   de, wBGPalettes+$10                                   ; $6289: $11 $ee $c2
	ld   bc, $0018                                   ; $628c: $01 $18 $00
	call FarMemCopy                                       ; $628f: $cd $b2 $09
	ld   bc, $0813                                   ; $6292: $01 $13 $08
	call SetBGandOBJPaletteRangesToUpdate                                       ; $6295: $cd $aa $04
	ld   a, $a4                                      ; $6298: $3e $a4
	ld   hl, $5bcd                                   ; $629a: $21 $cd $5b
	ld   de, wOBJPalettes                                   ; $629d: $11 $1e $c3
	ld   bc, $0020                                   ; $62a0: $01 $20 $00
	call FarMemCopy                                       ; $62a3: $cd $b2 $09
	ld   bc, $202f                                   ; $62a6: $01 $2f $20
	call SetBGandOBJPaletteRangesToUpdate                                       ; $62a9: $cd $aa $04
	ld   a, [$cc93]                                  ; $62ac: $fa $93 $cc
	call StopAnimatingAnimatedSpriteSpec                                       ; $62af: $cd $06 $30
	ld   a, [$cc94]                                  ; $62b2: $fa $94 $cc
	call StopAnimatingAnimatedSpriteSpec                                       ; $62b5: $cd $06 $30
	jp   IncDormRoomAnimationStep                               ; $62b8: $c3 $cc $58


jr_004_62bb:
	ld   a, $14                                      ; $62bb: $3e $14
	sub  [hl]                                        ; $62bd: $96
	ld   b, $00                                      ; $62be: $06 $00
	ld   c, a                                        ; $62c0: $4f
	ld   hl, $d400                                   ; $62c1: $21 $00 $d4
	add  hl, bc                                      ; $62c4: $09
	ld   de, $0020                                   ; $62c5: $11 $20 $00

jr_004_62c8:
	ld   a, $88                                      ; $62c8: $3e $88
	call Call_004_630b                               ; $62ca: $cd $0b $63
	inc  hl                                          ; $62cd: $23
	inc  c                                           ; $62ce: $0c
	ld   a, c                                        ; $62cf: $79
	cp   $14                                         ; $62d0: $fe $14
	jr   c, jr_004_62c8                              ; $62d2: $38 $f4

	ld   hl, wDormRoomMiscCounterIdx                                   ; $62d4: $21 $7a $cc
	ld   a, $14                                      ; $62d7: $3e $14
	sub  [hl]                                        ; $62d9: $96
	ld   b, $00                                      ; $62da: $06 $00
	ld   c, a                                        ; $62dc: $4f
	ld   hl, $d500                                   ; $62dd: $21 $00 $d5
	add  hl, bc                                      ; $62e0: $09

jr_004_62e1:
	xor  a                                           ; $62e1: $af
	call Call_004_630b                               ; $62e2: $cd $0b $63
	inc  hl                                          ; $62e5: $23
	inc  c                                           ; $62e6: $0c
	ld   a, c                                        ; $62e7: $79
	cp   $14                                         ; $62e8: $fe $14
	jr   c, jr_004_62e1                              ; $62ea: $38 $f5

	ld   c, $81                                      ; $62ec: $0e $81
	ld   de, $98e0                                   ; $62ee: $11 $e0 $98
	ld   a, $07                                      ; $62f1: $3e $07
	ld   hl, $d400                                   ; $62f3: $21 $00 $d4
	ld   b, $0e                                      ; $62f6: $06 $0e
	call EnqueueHDMATransfer                                       ; $62f8: $cd $7c $02
	ld   c, $80                                      ; $62fb: $0e $80
	ld   de, $98e0                                   ; $62fd: $11 $e0 $98
	ld   a, $07                                      ; $6300: $3e $07
	ld   hl, $d500                                   ; $6302: $21 $00 $d5
	ld   b, $0e                                      ; $6305: $06 $0e
	call EnqueueHDMATransfer                                       ; $6307: $cd $7c $02
	ret                                              ; $630a: $c9


Call_004_630b:
	push hl                                          ; $630b: $e5
	ld   b, $07                                      ; $630c: $06 $07

jr_004_630e:
	ld   [hl], a                                     ; $630e: $77
	add  hl, de                                      ; $630f: $19
	dec  b                                           ; $6310: $05
	jr   nz, jr_004_630e                             ; $6311: $20 $fb

	pop  hl                                          ; $6313: $e1
	ret                                              ; $6314: $c9


DormRoomAnimationHandler11:
	ld   hl, wDormRoomMiscCounterIdx                                   ; $6315: $21 $7a $cc
	ld   a, [hl]                                     ; $6318: $7e
	inc  [hl]                                        ; $6319: $34
	sla  a                                           ; $631a: $cb $27
	ld   h, $00                                      ; $631c: $26 $00
	ld   l, a                                        ; $631e: $6f
	ld   bc, $6327                                   ; $631f: $01 $27 $63
	add  hl, bc                                      ; $6322: $09
	ld   a, [hl+]                                    ; $6323: $2a
	ld   h, [hl]                                     ; $6324: $66
	ld   l, a                                        ; $6325: $6f
	jp   hl                                          ; $6326: $e9


	ld   sp, $4c63                                   ; $6327: $31 $63 $4c
	ld   h, e                                        ; $632a: $63
	ld   l, e                                        ; $632b: $6b
	ld   h, e                                        ; $632c: $63
	sub  l                                           ; $632d: $95
	ld   h, e                                        ; $632e: $63
	and  l                                           ; $632f: $a5
	ld   h, e                                        ; $6330: $63
	ld   a, $93                                      ; $6331: $3e $93
	ld   hl, $d000                                   ; $6333: $21 $00 $d0
	ld   de, $5aab                                   ; $6336: $11 $ab $5a
	call RLEXorCopy                                       ; $6339: $cd $d2 $09
	ld   c, $80                                      ; $633c: $0e $80
	ld   de, $8000                                   ; $633e: $11 $00 $80
	ld   a, $07                                      ; $6341: $3e $07
	ld   hl, $d000                                   ; $6343: $21 $00 $d0
	ld   b, $60                                      ; $6346: $06 $60
	call EnqueueHDMATransfer                                       ; $6348: $cd $7c $02
	ret                                              ; $634b: $c9


	ld   c, $80                                      ; $634c: $0e $80
	ld   de, $8600                                   ; $634e: $11 $00 $86
	ld   a, $07                                      ; $6351: $3e $07
	ld   hl, $d600                                   ; $6353: $21 $00 $d6
	ld   b, $20                                      ; $6356: $06 $20
	call EnqueueHDMATransfer                                       ; $6358: $cd $7c $02
	ld   c, $81                                      ; $635b: $0e $81
	ld   de, $8000                                   ; $635d: $11 $00 $80
	ld   a, $07                                      ; $6360: $3e $07
	ld   hl, $d800                                   ; $6362: $21 $00 $d8
	ld   b, $40                                      ; $6365: $06 $40
	call EnqueueHDMATransfer                                       ; $6367: $cd $7c $02
	ret                                              ; $636a: $c9


	ld   c, $81                                      ; $636b: $0e $81
	ld   de, $8400                                   ; $636d: $11 $00 $84
	ld   a, $07                                      ; $6370: $3e $07
	ld   hl, $dc00                                   ; $6372: $21 $00 $dc
	ld   b, $20                                      ; $6375: $06 $20
	call EnqueueHDMATransfer                                       ; $6377: $cd $7c $02
	ld   a, $9b                                      ; $637a: $3e $9b
	ld   hl, $d000                                   ; $637c: $21 $00 $d0
	ld   de, $5f7d                                   ; $637f: $11 $7d $5f
	call RLEXorCopy                                       ; $6382: $cd $d2 $09
	ld   c, $80                                      ; $6385: $0e $80
	ld   de, $9000                                   ; $6387: $11 $00 $90
	ld   a, $07                                      ; $638a: $3e $07
	ld   hl, $d000                                   ; $638c: $21 $00 $d0
	ld   b, $40                                      ; $638f: $06 $40
	call EnqueueHDMATransfer                                       ; $6391: $cd $7c $02
	ret                                              ; $6394: $c9


	ld   c, $80                                      ; $6395: $0e $80
	ld   de, $9400                                   ; $6397: $11 $00 $94
	ld   a, $07                                      ; $639a: $3e $07
	ld   hl, $d400                                   ; $639c: $21 $00 $d4
	ld   b, $40                                      ; $639f: $06 $40
	call EnqueueHDMATransfer                                       ; $63a1: $cd $7c $02
	ret                                              ; $63a4: $c9


	ld   hl, $d000                                   ; $63a5: $21 $00 $d0
	ld   a, $a3                                      ; $63a8: $3e $a3
	ld   de, $5a26                                   ; $63aa: $11 $26 $5a
	ld   bc, $1407                                   ; $63ad: $01 $07 $14
	call FarCopyLayout                                       ; $63b0: $cd $2c $0b
	ld   hl, $d100                                   ; $63b3: $21 $00 $d1
	call FarCopyLayout                                       ; $63b6: $cd $2c $0b
	ld   hl, $d200                                   ; $63b9: $21 $00 $d2
	ld   a, $a3                                      ; $63bc: $3e $a3
	ld   de, $5b3e                                   ; $63be: $11 $3e $5b
	ld   bc, $1407                                   ; $63c1: $01 $07 $14
	call FarCopyLayout                                       ; $63c4: $cd $2c $0b
	ld   hl, $d300                                   ; $63c7: $21 $00 $d3
	call FarCopyLayout                                       ; $63ca: $cd $2c $0b
	jp   IncDormRoomAnimationStep                               ; $63cd: $c3 $cc $58


DormRoomAnimationHandler12:
	ld   a, $0c                                      ; $63d0: $3e $0c
	ld   [wSpriteGroup], a                                  ; $63d2: $ea $1a $c2
	ld   bc, $4c54                                   ; $63d5: $01 $54 $4c
	ld   a, $33                                      ; $63d8: $3e $33
	call LoadSpriteFromMainTable                                       ; $63da: $cd $16 $0e
	ld   de, $d400                                   ; $63dd: $11 $00 $d4
	ld   hl, $d000                                   ; $63e0: $21 $00 $d0
	ld   bc, $00e0                                   ; $63e3: $01 $e0 $00
	call MemCopy                                       ; $63e6: $cd $a9 $09
	ld   de, $d500                                   ; $63e9: $11 $00 $d5
	ld   hl, $d100                                   ; $63ec: $21 $00 $d1
	ld   bc, $00e0                                   ; $63ef: $01 $e0 $00
	call MemCopy                                       ; $63f2: $cd $a9 $09
	ld   hl, wDormRoomMiscCounterIdx                                   ; $63f5: $21 $7a $cc
	ld   a, [hl]                                     ; $63f8: $7e
	inc  [hl]                                        ; $63f9: $34
	cp   $14                                         ; $63fa: $fe $14
	jr   c, jr_004_641f                              ; $63fc: $38 $21

	ld   c, $81                                      ; $63fe: $0e $81
	ld   de, $98e0                                   ; $6400: $11 $e0 $98
	ld   a, $07                                      ; $6403: $3e $07
	ld   hl, $d000                                   ; $6405: $21 $00 $d0
	ld   b, $0e                                      ; $6408: $06 $0e
	call EnqueueHDMATransfer                                       ; $640a: $cd $7c $02
	ld   c, $80                                      ; $640d: $0e $80
	ld   de, $98e0                                   ; $640f: $11 $e0 $98
	ld   a, $07                                      ; $6412: $3e $07
	ld   hl, $d100                                   ; $6414: $21 $00 $d1
	ld   b, $0e                                      ; $6417: $06 $0e
	call EnqueueHDMATransfer                                       ; $6419: $cd $7c $02
	jp   IncDormRoomAnimationStep                               ; $641c: $c3 $cc $58


jr_004_641f:
	ld   b, $00                                      ; $641f: $06 $00
	ld   c, [hl]                                     ; $6421: $4e
	ld   hl, $d400                                   ; $6422: $21 $00 $d4
	add  hl, bc                                      ; $6425: $09
	ld   de, $0020                                   ; $6426: $11 $20 $00

jr_004_6429:
	ld   a, $88                                      ; $6429: $3e $88
	call Call_004_630b                               ; $642b: $cd $0b $63
	inc  hl                                          ; $642e: $23
	inc  c                                           ; $642f: $0c
	ld   a, c                                        ; $6430: $79
	cp   $14                                         ; $6431: $fe $14
	jr   c, jr_004_6429                              ; $6433: $38 $f4

	ld   hl, wDormRoomMiscCounterIdx                                   ; $6435: $21 $7a $cc
	ld   b, $00                                      ; $6438: $06 $00
	ld   c, [hl]                                     ; $643a: $4e
	ld   hl, $d500                                   ; $643b: $21 $00 $d5
	add  hl, bc                                      ; $643e: $09

jr_004_643f:
	xor  a                                           ; $643f: $af
	call Call_004_630b                               ; $6440: $cd $0b $63
	inc  hl                                          ; $6443: $23
	inc  c                                           ; $6444: $0c
	ld   a, c                                        ; $6445: $79
	cp   $14                                         ; $6446: $fe $14
	jr   c, jr_004_643f                              ; $6448: $38 $f5

	ld   c, $81                                      ; $644a: $0e $81
	ld   de, $98e0                                   ; $644c: $11 $e0 $98
	ld   a, $07                                      ; $644f: $3e $07
	ld   hl, $d400                                   ; $6451: $21 $00 $d4
	ld   b, $0e                                      ; $6454: $06 $0e
	call EnqueueHDMATransfer                                       ; $6456: $cd $7c $02
	ld   c, $80                                      ; $6459: $0e $80
	ld   de, $98e0                                   ; $645b: $11 $e0 $98
	ld   a, $07                                      ; $645e: $3e $07
	ld   hl, $d500                                   ; $6460: $21 $00 $d5
	ld   b, $0e                                      ; $6463: $06 $0e
	call EnqueueHDMATransfer                                       ; $6465: $cd $7c $02
	ret                                              ; $6468: $c9


DormRoomAnimationHandler13:
	ld   a, $0c                                      ; $6469: $3e $0c
	ld   [wSpriteGroup], a                                  ; $646b: $ea $1a $c2
	ld   a, [wInGameButtonsHeld]                                  ; $646e: $fa $0f $c2
	bit  1, a                                        ; $6471: $cb $4f
	call nz, Call_004_6493                           ; $6473: $c4 $93 $64
	ld   a, [wDormRoomMiscCounterIdx]                                  ; $6476: $fa $7a $cc
	push af                                          ; $6479: $f5
	call Call_004_6493                               ; $647a: $cd $93 $64
	pop  af                                          ; $647d: $f1
	call Call_004_64e9                               ; $647e: $cd $e9 $64
	ld   a, $33                                      ; $6481: $3e $33
	add  b                                           ; $6483: $80
	ld   bc, $4c54                                   ; $6484: $01 $54 $4c
	call LoadSpriteFromMainTable                                       ; $6487: $cd $16 $0e
	ld   a, [wDormRoomMiscCounterIdx]                                  ; $648a: $fa $7a $cc
	cp   $a1                                         ; $648d: $fe $a1
	ret  c                                           ; $648f: $d8

	jp   IncDormRoomAnimationStep                               ; $6490: $c3 $cc $58


Call_004_6493:
	ld   hl, wDormRoomMiscCounterIdx                                   ; $6493: $21 $7a $cc
	ld   a, [hl]                                     ; $6496: $7e
	inc  [hl]                                        ; $6497: $34
	or   a                                           ; $6498: $b7
	jr   z, jr_004_64a4                              ; $6499: $28 $09

	cp   $44                                         ; $649b: $fe $44
	jr   z, jr_004_64a5                              ; $649d: $28 $06

	cp   $5e                                         ; $649f: $fe $5e
	jr   z, jr_004_64ca                              ; $64a1: $28 $27

	ret                                              ; $64a3: $c9


jr_004_64a4:
	ret                                              ; $64a4: $c9


jr_004_64a5:
	ld   de, $d800                                   ; $64a5: $11 $00 $d8
	ld   hl, wBGPalettes                                   ; $64a8: $21 $de $c2
	ld   bc, $0080                                   ; $64ab: $01 $80 $00
	call MemCopy                                       ; $64ae: $cd $a9 $09
	ld   de, $d810                                   ; $64b1: $11 $10 $d8
	ld   hl, $c2fe                                   ; $64b4: $21 $fe $c2
	ld   bc, $0008                                   ; $64b7: $01 $08 $00
	call MemCopy                                       ; $64ba: $cd $a9 $09
	ld   de, $d818                                   ; $64bd: $11 $18 $d8
	ld   hl, $c2fe                                   ; $64c0: $21 $fe $c2
	ld   bc, $0008                                   ; $64c3: $01 $08 $00
	call MemCopy                                       ; $64c6: $cd $a9 $09
	ret                                              ; $64c9: $c9


jr_004_64ca:
	ld   c, $81                                      ; $64ca: $0e $81
	ld   de, $98e0                                   ; $64cc: $11 $e0 $98
	ld   a, $07                                      ; $64cf: $3e $07
	ld   hl, $d200                                   ; $64d1: $21 $00 $d2
	ld   b, $0e                                      ; $64d4: $06 $0e
	call EnqueueHDMATransfer                                       ; $64d6: $cd $7c $02
	ld   c, $80                                      ; $64d9: $0e $80
	ld   de, $98e0                                   ; $64db: $11 $e0 $98
	ld   a, $07                                      ; $64de: $3e $07
	ld   hl, $d300                                   ; $64e0: $21 $00 $d3
	ld   b, $0e                                      ; $64e3: $06 $0e
	call EnqueueHDMATransfer                                       ; $64e5: $cd $7c $02
	ret                                              ; $64e8: $c9


Call_004_64e9:
	ld   b, $00                                      ; $64e9: $06 $00
	cp   $0a                                         ; $64eb: $fe $0a
	ret  c                                           ; $64ed: $d8

	inc  b                                           ; $64ee: $04
	cp   $11                                         ; $64ef: $fe $11
	ret  c                                           ; $64f1: $d8

	inc  b                                           ; $64f2: $04
	cp   $18                                         ; $64f3: $fe $18
	ret  c                                           ; $64f5: $d8

	inc  b                                           ; $64f6: $04
	cp   $1f                                         ; $64f7: $fe $1f
	ret  c                                           ; $64f9: $d8

	inc  b                                           ; $64fa: $04
	cp   $2f                                         ; $64fb: $fe $2f
	ret  c                                           ; $64fd: $d8

	inc  b                                           ; $64fe: $04
	cp   $44                                         ; $64ff: $fe $44
	ret  c                                           ; $6501: $d8

	inc  b                                           ; $6502: $04
	cp   $5e                                         ; $6503: $fe $5e
	ret  c                                           ; $6505: $d8

	inc  b                                           ; $6506: $04
	cp   $78                                         ; $6507: $fe $78
	ret  c                                           ; $6509: $d8

	inc  b                                           ; $650a: $04
	cp   $92                                         ; $650b: $fe $92
	ret  c                                           ; $650d: $d8

	inc  b                                           ; $650e: $04
	ret                                              ; $650f: $c9


DormRoomAnimationHandler14:
	ld   a, $0c                                      ; $6510: $3e $0c
	ld   [wSpriteGroup], a                                  ; $6512: $ea $1a $c2
	ld   bc, $4c54                                   ; $6515: $01 $54 $4c
	ld   a, $3c                                      ; $6518: $3e $3c
	call LoadSpriteFromMainTable                                       ; $651a: $cd $16 $0e
	ld   a, [wDormRoomMiscCounterIdx]                                  ; $651d: $fa $7a $cc
	or   a                                           ; $6520: $b7
	jr   nz, jr_004_653b                             ; $6521: $20 $18

	xor  a                                           ; $6523: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $6524: $ea $62 $c3
	ld   a, $40                                      ; $6527: $3e $40
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $6529: $ea $63 $c3
	ld   a, $04                                      ; $652c: $3e $04
	ld   b, $00                                      ; $652e: $06 $00
	ld   hl, wBGPalettes                                   ; $6530: $21 $de $c2
	ld   c, BANK(Palettes_AllBlack)                                      ; $6533: $0e $01
	ld   de, Palettes_AllBlack                                   ; $6535: $11 $80 $70
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $6538: $cd $48 $07

jr_004_653b:
	ld   hl, wDormRoomMiscCounterIdx                                   ; $653b: $21 $7a $cc
	ld   a, [hl]                                     ; $653e: $7e
	cpl                                              ; $653f: $2f
	swap a                                           ; $6540: $cb $37
	and  $07                                         ; $6542: $e6 $07
	call SafeSetAudVolForMultipleChannels                                       ; $6544: $cd $e0 $1c
	ld   a, [wInGameButtonsHeld]                                  ; $6547: $fa $0f $c2
	bit  1, a                                        ; $654a: $cb $4f
	jr   z, jr_004_6554                              ; $654c: $28 $06

	ld   a, [hl]                                     ; $654e: $7e
	add  $08                                         ; $654f: $c6 $08
	and  $f8                                         ; $6551: $e6 $f8
	ld   [hl], a                                     ; $6553: $77

jr_004_6554:
	ld   a, [hl]                                     ; $6554: $7e
	inc  [hl]                                        ; $6555: $34
	cp   $7f                                         ; $6556: $fe $7f
	jr   nc, jr_004_6563                             ; $6558: $30 $09

	and  $07                                         ; $655a: $e6 $07
	ret  nz                                          ; $655c: $c0

	ld   bc, $0040                                   ; $655d: $01 $40 $00
	jp   FadePalettesAndSetRangeToUpdate                                       ; $6560: $c3 $32 $08


jr_004_6563:
	ld   a, BANK(Palettes_AllBlack)                                      ; $6563: $3e $01
	ld   hl, Palettes_AllBlack                                   ; $6565: $21 $80 $70
	ld   de, wBGPalettes                                   ; $6568: $11 $de $c2
	ld   bc, $0080                                   ; $656b: $01 $80 $00
	call FarMemCopy                                       ; $656e: $cd $b2 $09
	ld   bc, $003f                                   ; $6571: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $6574: $cd $aa $04
	ld   a, $16                                      ; $6577: $3e $16
	ld   [wDormRoomAnimationStep], a                                  ; $6579: $ea $79 $cc
	xor  a                                           ; $657c: $af
	ld   [wDormRoomMiscCounterIdx], a                                  ; $657d: $ea $7a $cc
	ret                                              ; $6580: $c9


DormRoomAnimationHandler15:
	ld   a, [wDormRoomMiscCounterIdx]                                  ; $6581: $fa $7a $cc
	or   a                                           ; $6584: $b7
	jr   nz, jr_004_659f                             ; $6585: $20 $18

	xor  a                                           ; $6587: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $6588: $ea $62 $c3
	ld   a, $40                                      ; $658b: $3e $40
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $658d: $ea $63 $c3
	ld   a, $03                                      ; $6590: $3e $03
	ld   b, $00                                      ; $6592: $06 $00
	ld   hl, wBGPalettes                                   ; $6594: $21 $de $c2
	ld   c, $01                                      ; $6597: $0e $01
	ld   de, $7000                                   ; $6599: $11 $00 $70
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $659c: $cd $48 $07

jr_004_659f:
	ld   hl, wDormRoomMiscCounterIdx                                   ; $659f: $21 $7a $cc
	ld   a, [hl]                                     ; $65a2: $7e
	inc  [hl]                                        ; $65a3: $34
	cp   $3f                                         ; $65a4: $fe $3f
	jr   nc, jr_004_65b1                             ; $65a6: $30 $09

	and  $07                                         ; $65a8: $e6 $07
	ret  nz                                          ; $65aa: $c0

	ld   bc, $0040                                   ; $65ab: $01 $40 $00
	jp   FadePalettesAndSetRangeToUpdate                                       ; $65ae: $c3 $32 $08


jr_004_65b1:
	ld   a, $01                                      ; $65b1: $3e $01
	ld   hl, $7000                                   ; $65b3: $21 $00 $70
	ld   de, wBGPalettes                                   ; $65b6: $11 $de $c2
	ld   bc, $0080                                   ; $65b9: $01 $80 $00
	call FarMemCopy                                       ; $65bc: $cd $b2 $09
	ld   bc, $003f                                   ; $65bf: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $65c2: $cd $aa $04
	jp   IncDormRoomAnimationStep                               ; $65c5: $c3 $cc $58


DormRoomAnimationHandler16:
	ld   a, [$cc82]                                  ; $65c8: $fa $82 $cc
	sla  a                                           ; $65cb: $cb $27
	ld   h, $00                                      ; $65cd: $26 $00
	ld   l, a                                        ; $65cf: $6f
	ld   bc, $65d8                                   ; $65d0: $01 $d8 $65
	add  hl, bc                                      ; $65d3: $09
	ld   a, [hl+]                                    ; $65d4: $2a
	ld   h, [hl]                                     ; $65d5: $66
	ld   l, a                                        ; $65d6: $6f
	jp   hl                                          ; $65d7: $e9


	xor  $65                                         ; $65d8: $ee $65
	ei                                               ; $65da: $fb
	ld   h, l                                        ; $65db: $65
	ld   [hl], a                                     ; $65dc: $77
	ld   h, [hl]                                     ; $65dd: $66
	ld   e, [hl]                                     ; $65de: $5e
	ld   h, [hl]                                     ; $65df: $66
	ld   a, b                                        ; $65e0: $78
	ld   h, [hl]                                     ; $65e1: $66
	ld   d, $66                                      ; $65e2: $16 $66
	xor  $65                                         ; $65e4: $ee $65
	sub  [hl]                                        ; $65e6: $96
	ld   h, [hl]                                     ; $65e7: $66
	jr   nc, @+$68                                   ; $65e8: $30 $66

	xor  $65                                         ; $65ea: $ee $65
	xor  $65                                         ; $65ec: $ee $65

jr_004_65ee:
	ld   a, [wDormRoomReturnState]                                  ; $65ee: $fa $7c $cc
	ld   [wGameState], a                                  ; $65f1: $ea $a0 $c2
	ld   a, [wDormRoomReturnSubstate]                                  ; $65f4: $fa $7d $cc
	ld   [wGameSubstate], a                                  ; $65f7: $ea $a1 $c2
	ret                                              ; $65fa: $c9


	ld   hl, $00c6                                   ; $65fb: $21 $c6 $00
	ld   a, $ff                                      ; $65fe: $3e $ff
	push af                                          ; $6600: $f5
	ld   a, $37                                      ; $6601: $3e $37
	ld   [wFarCallAddr], a                                  ; $6603: $ea $98 $c2
	ld   a, $45                                      ; $6606: $3e $45
	ld   [wFarCallAddr+1], a                                  ; $6608: $ea $99 $c2
	ld   a, $09                                      ; $660b: $3e $09
	ld   [wFarCallBank], a                                  ; $660d: $ea $9a $c2
	pop  af                                          ; $6610: $f1
	call FarCall                                       ; $6611: $cd $62 $09
	jr   jr_004_65ee                                 ; $6614: $18 $d8

	ld   hl, $00c6                                   ; $6616: $21 $c6 $00
	xor  a                                           ; $6619: $af
	push af                                          ; $661a: $f5
	ld   a, $37                                      ; $661b: $3e $37
	ld   [wFarCallAddr], a                                  ; $661d: $ea $98 $c2
	ld   a, $45                                      ; $6620: $3e $45
	ld   [wFarCallAddr+1], a                                  ; $6622: $ea $99 $c2
	ld   a, $09                                      ; $6625: $3e $09
	ld   [wFarCallBank], a                                  ; $6627: $ea $9a $c2
	pop  af                                          ; $662a: $f1
	call FarCall                                       ; $662b: $cd $62 $09
	jr   jr_004_65ee                                 ; $662e: $18 $be

	ld   hl, sDayPeriodIdx                                   ; $6630: $21 $b1 $af
	inc  [hl]                                        ; $6633: $34
	ld   a, [$afe0]                                  ; $6634: $fa $e0 $af
	add  $09                                         ; $6637: $c6 $09
	ld   b, $00                                      ; $6639: $06 $00
	ld   c, a                                        ; $663b: $4f
	ld   d, $00                                      ; $663c: $16 $00
	ld   a, [wDormRoomReturnState]                                  ; $663e: $fa $7c $cc
	ld   h, a                                        ; $6641: $67
	ld   a, [wDormRoomReturnSubstate]                                  ; $6642: $fa $7d $cc
	ld   l, a                                        ; $6645: $6f
	ld   a, [$c653]                                  ; $6646: $fa $53 $c6

	M_FarCall SetMainConvoState
	ret                                              ; $665d: $c9


	ld   h, $45                                      ; $665e: $26 $45
	ld   l, $01                                      ; $6660: $2e $01
	push af                                          ; $6662: $f5
	ld   a, $af                                      ; $6663: $3e $af
	ld   [wFarCallAddr], a                                  ; $6665: $ea $98 $c2
	ld   a, $71                                      ; $6668: $3e $71
	ld   [wFarCallAddr+1], a                                  ; $666a: $ea $99 $c2
	ld   a, $0c                                      ; $666d: $3e $0c
	ld   [wFarCallBank], a                                  ; $666f: $ea $9a $c2
	pop  af                                          ; $6672: $f1
	call FarCall                                       ; $6673: $cd $62 $09
	ret                                              ; $6676: $c9


	ret                                              ; $6677: $c9


	ld   a, [$c653]                                  ; $6678: $fa $53 $c6
	ld   h, $45                                      ; $667b: $26 $45
	ld   l, $01                                      ; $667d: $2e $01
	ld   b, $00                                      ; $667f: $06 $00
	push af                                          ; $6681: $f5
	ld   a, $38                                      ; $6682: $3e $38
	ld   [wFarCallAddr], a                                  ; $6684: $ea $98 $c2
	ld   a, $4f                                      ; $6687: $3e $4f
	ld   [wFarCallAddr+1], a                                  ; $6689: $ea $99 $c2
	ld   a, $3e                                      ; $668c: $3e $3e
	ld   [wFarCallBank], a                                  ; $668e: $ea $9a $c2
	pop  af                                          ; $6691: $f1
	call FarCall                                       ; $6692: $cd $62 $09
	ret                                              ; $6695: $c9


	ld   h, $45                                      ; $6696: $26 $45
	ld   l, $01                                      ; $6698: $2e $01
	push af                                          ; $669a: $f5
	ld   a, $7b                                      ; $669b: $3e $7b
	ld   [wFarCallAddr], a                                  ; $669d: $ea $98 $c2
	ld   a, $4d                                      ; $66a0: $3e $4d
	ld   [wFarCallAddr+1], a                                  ; $66a2: $ea $99 $c2
	ld   a, $10                                      ; $66a5: $3e $10
	ld   [wFarCallBank], a                                  ; $66a7: $ea $9a $c2
	pop  af                                          ; $66aa: $f1
	call FarCall                                       ; $66ab: $cd $62 $09
	ret                                              ; $66ae: $c9


DormRoomAnimationHandler17:
	ld   hl, wDormRoomDaySpritesX                                   ; $66af: $21 $7f $cc
	ld   a, [hl]                                     ; $66b2: $7e
	sub  $04                                         ; $66b3: $d6 $04
	ld   [hl], a                                     ; $66b5: $77
	ld   hl, wDormRoomMiscCounterIdx                                   ; $66b6: $21 $7a $cc
	ld   a, [hl]                                     ; $66b9: $7e
	inc  [hl]                                        ; $66ba: $34
	cp   $10                                         ; $66bb: $fe $10
	ret  c                                           ; $66bd: $d8

	ld   a, [$cc7b]                                  ; $66be: $fa $7b $cc
	ld   [wDormRoomAnimationStep], a                                  ; $66c1: $ea $79 $cc
	xor  a                                           ; $66c4: $af
	ld   [wDormRoomMiscCounterIdx], a                                  ; $66c5: $ea $7a $cc
	ret                                              ; $66c8: $c9


DormRoomAnimationHandler18:
	ld   hl, wDormRoomDaySpritesX                                   ; $66c9: $21 $7f $cc
	ld   a, [hl]                                     ; $66cc: $7e
	add  $04                                         ; $66cd: $c6 $04
	ld   [hl], a                                     ; $66cf: $77
	ld   hl, wDormRoomMiscCounterIdx                                   ; $66d0: $21 $7a $cc
	ld   a, [hl]                                     ; $66d3: $7e
	inc  [hl]                                        ; $66d4: $34
	cp   $10                                         ; $66d5: $fe $10
	ret  c                                           ; $66d7: $d8

	ld   a, [$cc7b]                                  ; $66d8: $fa $7b $cc
	ld   [wDormRoomAnimationStep], a                                  ; $66db: $ea $79 $cc
	xor  a                                           ; $66de: $af
	ld   [wDormRoomMiscCounterIdx], a                                  ; $66df: $ea $7a $cc
	ret                                              ; $66e2: $c9


; A - dorm room options setup idx
; H - return state
; L - return substate
SetDormRoomState::
; Set dorm room opts setup idx, then save return state/substate
	ld   [wDormRoomOptionsSetupIdx], a                              ; $66e3

	ld   a, h                                                       ; $66e6
	ld   [wDormRoomReturnState], a                                  ; $66e7
	ld   a, l                                                       ; $66ea
	ld   [wDormRoomReturnSubstate], a                               ; $66eb

; Then set state
	ld   a, GS_DORM_ROOM                                            ; $66ee
	ld   [wGameState], a                                            ; $66f0
	xor  a                                                          ; $66f3
	ld   [wGameSubstate], a                                         ; $66f4
	ret                                                             ; $66f7


ProcessCommsRewards:
; Preserve and set ram bank of rewards struct
	ld   a, [wWramBank]                                             ; $66f8
	push af                                                         ; $66fb

	ld   a, BANK(wCommsRewardsStruct)                               ; $66fc
	ld   [wWramBank], a                                             ; $66fe
	ldh  [rSVBK], a                                                 ; $6701

; Loop through this 3-byte table
	ld   hl, wCommsRewardsStruct                                    ; $6703

.nextReward:
; Get byte from struct into C, we're done if we're past the number of rewards
	ld   a, [hl+]                                                   ; $6706
	ld   c, a                                                       ; $6707
	cp   NUM_COMMS_REWARDS                                          ; $6708
	jr   nc, .done                                                  ; $670a

; B = 2nd byte from struct, it must be 0 (high byte of $36) or we're done
	ld   a, [hl+]                                                   ; $670c
	ld   b, a                                                       ; $670d
	or   a                                                          ; $670e
	jr   nz, .done                                                  ; $670f

; A = 3rd byte, used as param for table func (should be non-0 to set flag)
	ld   a, [hl+]                                                   ; $6711
	push hl                                                         ; $6712

; HL = double entry idx into table below
	push af                                                         ; $6713
	ld   h, b                                                       ; $6714
	ld   l, c                                                       ; $6715
	add  hl, hl                                                     ; $6716
	add  hl, hl                                                     ; $6717
	ld   bc, .rewards                                               ; $6718
	add  hl, bc                                                     ; $671b

; From the table, get flag to set in BC, and table func in HL
	ld   a, [hl+]                                                   ; $671c
	ld   c, a                                                       ; $671d
	ld   a, [hl+]                                                   ; $671e
	ld   b, a                                                       ; $671f
	ld   a, [hl+]                                                   ; $6720
	ld   h, [hl]                                                    ; $6721
	ld   l, a                                                       ; $6722
	pop  af                                                         ; $6723

; Push return address that tries another item in the struct
	ld   de, .return                                                ; $6724
	push de                                                         ; $6727

; Push table func, and set HL to the flag to set
	push hl                                                         ; $6728
	ld   h, b                                                       ; $6729
	ld   l, c                                                       ; $672a
	ret                                                             ; $672b

.return:
	pop  hl                                                         ; $672c
	jr   .nextReward                                                ; $672d

.done:
; Keep sram enabled, and restore wram bank
	ld   a, $0a                                                     ; $672f
	ld   [rRAMG], a                                                 ; $6731
	
	pop  af                                                         ; $6734
	ld   [wWramBank], a                                             ; $6735
	ldh  [rSVBK], a                                                 ; $6738
	ret                                                             ; $673a

macro CommsRewardEntry
	dw \1, \2
endm
.rewards:
	CommsRewardEntry FLAG1_ITEM_INDEX, CommsUnlockRomandoShopItem
	CommsRewardEntry FLAG1_PETAL_CURSOR, CommsUnlockRomandoShopItem
	CommsRewardEntry FLAG1_RING_OF_REV, CommsUnlockRomandoShopItem
	CommsRewardEntry FLAG1_MYSTERY_CHARM, CommsUnlockRomandoShopItem
	CommsRewardEntry FLAG1_GUTS_HEADBAND, CommsUnlockRomandoShopItem
	CommsRewardEntry FLAG1_LIGHT_SHOES, CommsUnlockRomandoShopItem
	CommsRewardEntry FLAG1_CLEAR_LENS, CommsUnlockRomandoShopItem
	CommsRewardEntry FLAG1_CANDY_CURSOR, CommsUnlockRomandoShopItem
	CommsRewardEntry FLAG1_SAKURA_PORTRAIT_GALLERY, CommsUnlockRomandoShopItem
	CommsRewardEntry FLAG1_SUMIRE_PORTRAIT_GALLERY, CommsUnlockRomandoShopItem
	CommsRewardEntry FLAG1_MARIA_PORTRAIT_GALLERY, CommsUnlockRomandoShopItem
	CommsRewardEntry FLAG1_IRIS_PORTRAIT_GALLERY, CommsUnlockRomandoShopItem
	CommsRewardEntry FLAG1_KOHRAN_PORTRAIT_GALLERY, CommsUnlockRomandoShopItem
	CommsRewardEntry FLAG1_KANNA_PORTRAIT_GALLERY, CommsUnlockRomandoShopItem
	CommsRewardEntry FLAG1_SAKURA_EX_MODE, CommsUnlockRomandoShopItem
	CommsRewardEntry FLAG1_SUMIRE_EX_MODE, CommsUnlockRomandoShopItem
	CommsRewardEntry FLAG1_MARIA_EX_MODE, CommsUnlockRomandoShopItem
	CommsRewardEntry FLAG1_IRIS_EX_MODE, CommsUnlockRomandoShopItem
	CommsRewardEntry FLAG1_KOHRAN_EX_MODE, CommsUnlockRomandoShopItem
	CommsRewardEntry FLAG1_KANNA_EX_MODE, CommsUnlockRomandoShopItem
	CommsRewardEntry FLAG1_ORIHIME_PHOTO, CommsUnlockRomandoShopItem
	CommsRewardEntry FLAG1_RENI_PHOTO, CommsUnlockRomandoShopItem
	CommsRewardEntry FLAG1_1000PTS_1, CommsAdd1000Pts
	CommsRewardEntry FLAG1_1000PTS_2, CommsAdd1000Pts
	CommsRewardEntry FLAG1_1000PTS_3, CommsAdd1000Pts
	CommsRewardEntry FLAG1_1000PTS_4, CommsAdd1000Pts
	CommsRewardEntry FLAG1_2500PTS_1, CommsAdd2500Pts
	CommsRewardEntry FLAG1_2500PTS_2, CommsAdd2500Pts
	CommsRewardEntry FLAG1_2500PTS_3, CommsAdd2500Pts
	CommsRewardEntry FLAG1_2500PTS_4, CommsAdd2500Pts
	CommsRewardEntry FLAG1_5000PTS_1, CommsAdd5000Pts
	CommsRewardEntry FLAG1_5000PTS_2, CommsAdd5000Pts
	CommsRewardEntry FLAG1_5000PTS_3, CommsAdd5000Pts
	CommsRewardEntry FLAG1_5000PTS_4, CommsAdd5000Pts
	CommsRewardEntry FLAG1_7500PTS_1, CommsAdd7500Pts
	CommsRewardEntry FLAG1_7500PTS_2, CommsAdd7500Pts
	CommsRewardEntry FLAG1_7500PTS_3, CommsAdd7500Pts
	CommsRewardEntry FLAG1_7500PTS_4, CommsAdd7500Pts
	CommsRewardEntry FLAG1_10KPTS_1, CommsAdd10kPts
	CommsRewardEntry FLAG1_10KPTS_2, CommsAdd10kPts
	CommsRewardEntry FLAG1_10KPTS_3, CommsAdd10kPts
	CommsRewardEntry FLAG1_10KPTS_4, CommsAdd10kPts
	CommsRewardEntry FLAG1_25KPTS_1, CommsAdd25kPts
	CommsRewardEntry FLAG1_25KPTS_2, CommsAdd25kPts
	CommsRewardEntry FLAG1_25KPTS_3, CommsAdd25kPts
	CommsRewardEntry FLAG1_25KPTS_4, CommsAdd25kPts
	CommsRewardEntry FLAG1_50KPTS_1, CommsAdd50kPts
	CommsRewardEntry FLAG1_50KPTS_2, CommsAdd50kPts
	CommsRewardEntry FLAG1_50KPTS_3, CommsAdd50kPts
	CommsRewardEntry FLAG1_50KPTS_4, CommsAdd50kPts
	CommsRewardEntry FLAG1_65535PTS_1, CommsAdd65535Pts
	CommsRewardEntry FLAG1_65535PTS_2, CommsAdd65535Pts
	CommsRewardEntry FLAG1_65535PTS_3, CommsAdd65535Pts
	CommsRewardEntry FLAG1_65535PTS_4, CommsAdd65535Pts


; A - non-0 if setting flag
; HL - flag to set
CommsUnlockRomandoShopItem:
	push af                                                         ; $6813
	push hl                                                         ; $6814

; We're done if the flag is already set
	M_FarCall JpCheckIfFlagSet1
	or   a                                                          ; $6829
	jr   nz, .done                                                  ; $682a

	pop  hl                                                         ; $682c
	pop  af                                                         ; $682d

; Set the flag to unlock the item
	M_FarCall JpSetOrUnsetFlag1

; Add 1 to items gotten in this state
	ld   hl, wCinematronItemsTally                                  ; $6842
	inc  [hl]                                                       ; $6845
	ret                                                             ; $6846

.done:
	pop  hl                                                         ; $6847
	pop  af                                                         ; $6848
	ret                                                             ; $6849


; A - non-0 if setting flag
; HL - flag to set
CommsAdd1000Pts:
	push af                                                         ; $684a
	push hl                                                         ; $684b

; If flag for pts not set..
	M_FarCall CheckIfFlagSet1
	or   a                                                          ; $6860
	jr   nz, .done                                                  ; $6861

; Add 1k to curr and tally, then set flag
	ld   hl, 1000                                                   ; $6863
	call AddPtsToCurrAndTally                                       ; $6866
	pop  hl                                                         ; $6869
	pop  af                                                         ; $686a

	M_FarCall SetOrUnsetFlag1
	ret                                                             ; $687f

.done:
	pop  hl                                                         ; $6880
	pop  af                                                         ; $6881
	ret                                                             ; $6882


; A - non-0 if setting flag
; HL - flag to set
CommsAdd2500Pts:
	push af                                                         ; $6883
	push hl                                                         ; $6884

; If flag for pts not set..
	M_FarCall CheckIfFlagSet1
	or   a                                                          ; $6899
	jr   nz, .done                                                  ; $689a

; Add 2.5k to curr and tally, then set flag
	ld   hl, 2500                                                   ; $689c
	call AddPtsToCurrAndTally                                       ; $689f
	pop  hl                                                         ; $68a2
	pop  af                                                         ; $68a3

	M_FarCall SetOrUnsetFlag1
	ret                                                             ; $68b8

.done:
	pop  hl                                                         ; $68b9
	pop  af                                                         ; $68ba
	ret                                                             ; $68bb


; A - non-0 if setting flag
; HL - flag to set
CommsAdd5000Pts:
	push af                                                         ; $68bc
	push hl                                                         ; $68bd

; If flag for pts not set..
	M_FarCall CheckIfFlagSet1
	or   a                                                          ; $68d2
	jr   nz, .done                                                  ; $68d3

; Add 5k to curr and tally, then set flag
	ld   hl, 5000                                                   ; $68d5
	call AddPtsToCurrAndTally                                       ; $68d8
	pop  hl                                                         ; $68db
	pop  af                                                         ; $68dc

	M_FarCall SetOrUnsetFlag1
	ret                                                             ; $68f1

.done:
	pop  hl                                                         ; $68f2
	pop  af                                                         ; $68f3
	ret                                                             ; $68f4


; A - non-0 if setting flag
; HL - flag to set
CommsAdd7500Pts:
	push af                                                         ; $68f5
	push hl                                                         ; $68f6

; If flag for pts not set..
	M_FarCall CheckIfFlagSet1
	or   a                                                          ; $690b
	jr   nz, .done                                                  ; $690c

; Add 7.5k to curr and tally, then set flag
	ld   hl, 7500                                                   ; $690e
	call AddPtsToCurrAndTally                                       ; $6911
	pop  hl                                                         ; $6914
	pop  af                                                         ; $6915

	M_FarCall SetOrUnsetFlag1
	ret                                                             ; $692a

.done:
	pop  hl                                                         ; $692b
	pop  af                                                         ; $692c
	ret                                                             ; $692d


; A - non-0 if setting flag
; HL - flag to set
CommsAdd10kPts:
	push af                                                         ; $692e
	push hl                                                         ; $692f

; If flag for pts not set..
	M_FarCall CheckIfFlagSet1
	or   a                                                          ; $6944
	jr   nz, .done                                                  ; $6945

; Add 10k to curr and tally, then set flag
	ld   hl, 10000                                                  ; $6947
	call AddPtsToCurrAndTally                                       ; $694a
	pop  hl                                                         ; $694d
	pop  af                                                         ; $694e

	M_FarCall SetOrUnsetFlag1
	ret                                                             ; $6963

.done:
	pop  hl                                                         ; $6964
	pop  af                                                         ; $6965
	ret                                                             ; $6966


; A - non-0 if setting flag
; HL - flag to set
CommsAdd25kPts:
	push af                                                         ; $6967
	push hl                                                         ; $6968

; If flag for pts not set..
	M_FarCall CheckIfFlagSet1
	or   a                                                          ; $697d
	jr   nz, .done                                                  ; $697e

; Add 25k to curr and tally, then set flag
	ld   hl, 25000                                                  ; $6980
	call AddPtsToCurrAndTally                                       ; $6983
	pop  hl                                                         ; $6986
	pop  af                                                         ; $6987

	M_FarCall SetOrUnsetFlag1
	ret                                                             ; $699c

.done:
	pop  hl                                                         ; $699d
	pop  af                                                         ; $699e
	ret                                                             ; $699f


; A - non-0 if setting flag
; HL - flag to set
CommsAdd50kPts:
	push af                                                         ; $69a0
	push hl                                                         ; $69a1

; If flag for pts not set..
	M_FarCall CheckIfFlagSet1
	or   a                                                          ; $69b6
	jr   nz, .done                                                  ; $69b7

; Add 50k to curr and tally, then set flag
	ld   hl, 50000                                                  ; $69b9
	call AddPtsToCurrAndTally                                       ; $69bc
	pop  hl                                                         ; $69bf
	pop  af                                                         ; $69c0

	M_FarCall SetOrUnsetFlag1
	ret                                                             ; $69d5

.done:
	pop  hl                                                         ; $69d6
	pop  af                                                         ; $69d7
	ret                                                             ; $69d8


; A - non-0 if setting flag
; HL - flag to set
CommsAdd65535Pts:
	push af                                                         ; $69d9
	push hl                                                         ; $69da

; If flag for pts not set..
	M_FarCall CheckIfFlagSet1
	or   a                                                          ; $69ef
	jr   nz, .done                                                  ; $69f0

; Add max to curr and tally, then set flag
	ld   hl, $ffff                                                  ; $69f2
	call AddPtsToCurrAndTally                                       ; $69f5
	pop  hl                                                         ; $69f8
	pop  af                                                         ; $69f9

	M_FarCall SetOrUnsetFlag1
	ret                                                             ; $6a0e

.done:
	pop  hl                                                         ; $6a0f
	pop  af                                                         ; $6a10
	ret                                                             ; $6a11


; HL - number of points to add
AddPtsToCurrAndTally:
	push hl                                                         ; $6a12
	push hl                                                         ; $6a13

; Add points to current points
	M_FarCall GetCurrPoints

	pop  bc                                                         ; $6a28
	add  hl, bc                                                     ; $6a29
	jr   nc, :+                                                     ; $6a2a
	ld   hl, $ffff                                                  ; $6a2c
:	M_FarCall SetPoints

; Also add it to a generic tally
	pop  hl                                                         ; $6a43
	ld   a, [wCinematronPointsTally]                                ; $6a44
	ld   c, a                                                       ; $6a47
	ld   a, [wCinematronPointsTally+1]                              ; $6a48
	ld   b, a                                                       ; $6a4b
	add  hl, bc                                                     ; $6a4c
	jr   nc, :+                                                     ; $6a4d
	ld   hl, $ffff                                                  ; $6a4f
:	ld   a, l                                                       ; $6a52
	ld   [wCinematronPointsTally], a                                ; $6a53
	ld   a, h                                                       ; $6a56
	ld   [wCinematronPointsTally+1], a                              ; $6a57
	ret                                                             ; $6a5a


; gameboy comms-related
	push hl                                          ; $6a5b: $e5
	ld   bc, $0000                                   ; $6a5c: $01 $00 $00

jr_004_6a5f:
	ld   a, b                                        ; $6a5f: $78
	call Call_004_6abe                               ; $6a60: $cd $be $6a
	bit  7, a                                        ; $6a63: $cb $7f
	jr   nz, jr_004_6a70                             ; $6a65: $20 $09

	or   a                                           ; $6a67: $b7
	call nz, Call_004_6a8e                           ; $6a68: $c4 $8e $6a
	call Call_004_6a84                               ; $6a6b: $cd $84 $6a
	jr   jr_004_6a5f                                 ; $6a6e: $18 $ef

jr_004_6a70:
	call Call_004_6a8e                               ; $6a70: $cd $8e $6a
	call Call_004_6a84                               ; $6a73: $cd $84 $6a
	ld   a, b                                        ; $6a76: $78
	and  $07                                         ; $6a77: $e6 $07
	jr   z, jr_004_6a7d                              ; $6a79: $28 $02

	ld   [hl], c                                     ; $6a7b: $71
	inc  hl                                          ; $6a7c: $23

jr_004_6a7d:
	xor  a                                           ; $6a7d: $af
	ld   [hl+], a                                    ; $6a7e: $22
	ld   [hl+], a                                    ; $6a7f: $22
	ld   a, l                                        ; $6a80: $7d
	pop  hl                                          ; $6a81: $e1
	sub  l                                           ; $6a82: $95
	ret                                              ; $6a83: $c9


Call_004_6a84:
	inc  b                                           ; $6a84: $04
	ld   a, b                                        ; $6a85: $78
	and  $07                                         ; $6a86: $e6 $07
	ret  nz                                          ; $6a88: $c0

	ld   [hl], c                                     ; $6a89: $71
	inc  hl                                          ; $6a8a: $23
	ld   c, $00                                      ; $6a8b: $0e $00
	ret                                              ; $6a8d: $c9


Call_004_6a8e:
	ld   a, b                                        ; $6a8e: $78
	and  $07                                         ; $6a8f: $e6 $07
	dec  a                                           ; $6a91: $3d
	jr   nz, jr_004_6a97                             ; $6a92: $20 $03

	set  6, c                                        ; $6a94: $cb $f1
	ret                                              ; $6a96: $c9


jr_004_6a97:
	dec  a                                           ; $6a97: $3d
	jr   nz, jr_004_6a9d                             ; $6a98: $20 $03

	set  5, c                                        ; $6a9a: $cb $e9
	ret                                              ; $6a9c: $c9


jr_004_6a9d:
	dec  a                                           ; $6a9d: $3d
	jr   nz, jr_004_6aa3                             ; $6a9e: $20 $03

	set  4, c                                        ; $6aa0: $cb $e1
	ret                                              ; $6aa2: $c9


jr_004_6aa3:
	dec  a                                           ; $6aa3: $3d
	jr   nz, jr_004_6aa9                             ; $6aa4: $20 $03

	set  3, c                                        ; $6aa6: $cb $d9
	ret                                              ; $6aa8: $c9


jr_004_6aa9:
	dec  a                                           ; $6aa9: $3d
	jr   nz, jr_004_6aaf                             ; $6aaa: $20 $03

	set  2, c                                        ; $6aac: $cb $d1
	ret                                              ; $6aae: $c9


jr_004_6aaf:
	dec  a                                           ; $6aaf: $3d
	jr   nz, jr_004_6ab5                             ; $6ab0: $20 $03

	set  1, c                                        ; $6ab2: $cb $c9
	ret                                              ; $6ab4: $c9


jr_004_6ab5:
	dec  a                                           ; $6ab5: $3d
	jr   nz, jr_004_6abb                             ; $6ab6: $20 $03

	set  0, c                                        ; $6ab8: $cb $c1
	ret                                              ; $6aba: $c9


jr_004_6abb:
	set  7, c                                        ; $6abb: $cb $f9
	ret                                              ; $6abd: $c9


Call_004_6abe:
	push bc                                          ; $6abe: $c5
	push de                                          ; $6abf: $d5
	push hl                                          ; $6ac0: $e5
	call todo_ReturnsACommsRewardEntryInHL                               ; $6ac1: $cd $eb $6a
	add  hl, hl                                      ; $6ac4: $29
	add  hl, hl                                      ; $6ac5: $29
	ld   bc, $673b                                   ; $6ac6: $01 $3b $67
	add  hl, bc                                      ; $6ac9: $09
	ld   a, [hl+]                                    ; $6aca: $2a
	ld   h, [hl]                                     ; $6acb: $66
	ld   l, a                                        ; $6acc: $6f
	bit  7, h                                        ; $6acd: $cb $7c
	jr   nz, jr_004_6ae7                             ; $6acf: $20 $16

	M_FarCall CheckIfFlagSet1

	and  $01                                         ; $6ae5: $e6 $01

jr_004_6ae7:
	pop  hl                                          ; $6ae7: $e1
	pop  de                                          ; $6ae8: $d1
	pop  bc                                          ; $6ae9: $c1
	ret                                              ; $6aea: $c9


todo_ReturnsACommsRewardEntryInHL:
	push bc                                          ; $6aeb: $c5
	sla  a                                           ; $6aec: $cb $27
	ld   b, $00                                      ; $6aee: $06 $00
	ld   c, a                                        ; $6af0: $4f
	ld   hl, .table                                  ; $6af1: $21 $fa $6a
	add  hl, bc                                      ; $6af4: $09
	ld   a, [hl+]                                    ; $6af5: $2a
	ld   h, [hl]                                     ; $6af6: $66
	ld   l, a                                        ; $6af7: $6f
	pop  bc                                          ; $6af8: $c1
	ret                                              ; $6af9: $c9

.table:
	dw CR_ORIHIME_PHOTO
	dw CR_RENI_PHOTO
	dw CR_SAKURA_EX_MODE
	dw CR_SUMIRE_EX_MODE
	dw CR_MARIA_EX_MODE
	dw CR_IRIS_EX_MODE
	dw CR_KOHRAN_EX_MODE
	dw CR_KANNA_EX_MODE
	dw CR_SAKURA_PORTRAIT_GALLERY
	dw CR_SUMIRE_PORTRAIT_GALLERY
	dw CR_MARIA_PORTRAIT_GALLERY
	dw CR_IRIS_PORTRAIT_GALLERY
	dw CR_KOHRAN_PORTRAIT_GALLERY
	dw CR_KANNA_PORTRAIT_GALLERY
	dw CR_RING_OF_REV
	dw CR_MYSTERY_CHARM
	dw CR_GUTS_HEADBAND
	dw CR_LIGHT_SHOES
	dw CR_CLEAR_LENS
	dw CR_PETAL_CURSOR
	dw CR_CANDY_CURSOR
	dw $ffff


; gameboy comms-related
	xor  a                                           ; $6b26: $af
	ld   [wCinematronItemsTally], a                                  ; $6b27: $ea $95 $cc
	ld   [wCinematronPointsTally], a                                  ; $6b2a: $ea $96 $cc
	ld   [wCinematronPointsTally+1], a                                  ; $6b2d: $ea $97 $cc
	ld   de, wCommsRewardsStruct                                   ; $6b30: $11 $01 $d1
	ld   b, $00                                      ; $6b33: $06 $00
	ld   c, [hl]                                     ; $6b35: $4e
	inc  hl                                          ; $6b36: $23

jr_004_6b37:
	sla  c                                           ; $6b37: $cb $21
	jr   nc, jr_004_6b4f                             ; $6b39: $30 $14

	ld   a, b                                        ; $6b3b: $78
	call Call_004_6abe                               ; $6b3c: $cd $be $6a
	bit  7, a                                        ; $6b3f: $cb $7f
	jr   nz, jr_004_6b5d                             ; $6b41: $20 $1a

	or   a                                           ; $6b43: $b7
	jr   nz, jr_004_6b4f                             ; $6b44: $20 $09

	push hl                                          ; $6b46: $e5
	ld   a, b                                        ; $6b47: $78
	call todo_ReturnsACommsRewardEntryInHL                               ; $6b48: $cd $eb $6a
	call AddToCommsRewardsStruct                               ; $6b4b: $cd $74 $6b
	pop  hl                                          ; $6b4e: $e1

jr_004_6b4f:
	inc  b                                           ; $6b4f: $04
	ld   a, b                                        ; $6b50: $78
	cp   $15                                         ; $6b51: $fe $15
	jr   nc, jr_004_6b5d                             ; $6b53: $30 $08

	and  $07                                         ; $6b55: $e6 $07
	jr   nz, jr_004_6b37                             ; $6b57: $20 $de

	ld   a, [hl+]                                    ; $6b59: $2a
	ld   c, a                                        ; $6b5a: $4f
	jr   jr_004_6b37                                 ; $6b5b: $18 $da

jr_004_6b5d:
	ld   a, [hl+]                                    ; $6b5d: $2a
	ld   h, [hl]                                     ; $6b5e: $66
	ld   l, a                                        ; $6b5f: $6f
	push de                                          ; $6b60: $d5
	call AddPtsToCurrAndTally                               ; $6b61: $cd $12 $6a
	pop  de                                          ; $6b64: $d1
	ld   hl, $0000                                   ; $6b65: $21 $00 $00
	call AddToCommsRewardsStruct                               ; $6b68: $cd $74 $6b
	ld   hl, $ffff                                   ; $6b6b: $21 $ff $ff
	call AddToCommsRewardsStruct                               ; $6b6e: $cd $74 $6b
	jp   ProcessCommsRewards                               ; $6b71: $c3 $f8 $66


; DE - should be wCommsRewardsStruct
; HL - rewards table entry idx (CommsRewardEntry)
AddToCommsRewardsStruct:
; Preserve and set ram bank of rewards struct
	ld   a, [wWramBank]                                             ; $6b74
	push af                                                         ; $6b77

	ld   a, BANK(wCommsRewardsStruct)                               ; $6b78
	ld   [wWramBank], a                                             ; $6b7a
	ldh  [rSVBK], a                                                 ; $6b7d

; Set flag, then $ff terminator into struct
	ld   a, l                                                       ; $6b7f
	ld   [de], a                                                    ; $6b80
	inc  de                                                         ; $6b81
	ld   a, h                                                       ; $6b82
	ld   [de], a                                                    ; $6b83
	inc  de                                                         ; $6b84
	ld   a, $ff                                                     ; $6b85
	ld   [de], a                                                    ; $6b87
	inc  de                                                         ; $6b88

; Restore rom bank
	pop  af                                                         ; $6b89
	ld   [wWramBank], a                                             ; $6b8a
	ldh  [rSVBK], a                                                 ; $6b8d
	ret                                                             ; $6b8f


GivePocketSakuraRewards::
	xor  a                                           ; $6b90: $af
	ld   [wCinematronItemsTally], a                                  ; $6b91: $ea $95 $cc
	ld   [wCinematronPointsTally], a                                  ; $6b94: $ea $96 $cc
	ld   [wCinematronPointsTally+1], a                                  ; $6b97: $ea $97 $cc
	push hl                                          ; $6b9a: $e5
	ld   d, h                                        ; $6b9b: $54
	ld   e, l                                        ; $6b9c: $5d
	ld   a, [de]                                     ; $6b9d: $1a
	inc  de                                          ; $6b9e: $13
	ld   h, a                                        ; $6b9f: $67
	ld   l, $64                                      ; $6ba0: $2e $64
	call AequHtimesL                                       ; $6ba2: $cd $ac $0b
	ld   b, h                                        ; $6ba5: $44
	ld   c, l                                        ; $6ba6: $4d
	ld   a, [de]                                     ; $6ba7: $1a
	and  $f0                                         ; $6ba8: $e6 $f0
	swap a                                           ; $6baa: $cb $37
	ld   h, a                                        ; $6bac: $67
	ld   l, $0a                                      ; $6bad: $2e $0a
	call AequHtimesL                                       ; $6baf: $cd $ac $0b
	add  hl, bc                                      ; $6bb2: $09
	ld   a, [de]                                     ; $6bb3: $1a
	inc  de                                          ; $6bb4: $13
	and  $0f                                         ; $6bb5: $e6 $0f
	ld   b, $00                                      ; $6bb7: $06 $00
	ld   c, a                                        ; $6bb9: $4f
	add  hl, bc                                      ; $6bba: $09
	call AddPtsToCurrAndTally                               ; $6bbb: $cd $12 $6a
	pop  hl                                          ; $6bbe: $e1
	ld   de, wCommsRewardsStruct                                   ; $6bbf: $11 $01 $d1
	push hl                                          ; $6bc2: $e5
	ld   bc, $0037                                   ; $6bc3: $01 $37 $00
	add  hl, bc                                      ; $6bc6: $09
	bit  4, [hl]                                     ; $6bc7: $cb $66
	pop  hl                                          ; $6bc9: $e1
	jr   z, jr_004_6bec                              ; $6bca: $28 $20

	ld   hl, $0002                                   ; $6bcc: $21 $02 $00
	call AddToCommsRewardsStruct                               ; $6bcf: $cd $74 $6b
	ld   hl, $0003                                   ; $6bd2: $21 $03 $00
	call AddToCommsRewardsStruct                               ; $6bd5: $cd $74 $6b
	ld   hl, $0004                                   ; $6bd8: $21 $04 $00
	call AddToCommsRewardsStruct                               ; $6bdb: $cd $74 $6b
	ld   hl, $0005                                   ; $6bde: $21 $05 $00
	call AddToCommsRewardsStruct                               ; $6be1: $cd $74 $6b
	ld   hl, $0006                                   ; $6be4: $21 $06 $00
	call AddToCommsRewardsStruct                               ; $6be7: $cd $74 $6b
	jr   jr_004_6c2b                                 ; $6bea: $18 $3f

jr_004_6bec:
	ld   bc, $0008                                   ; $6bec: $01 $08 $00
	add  hl, bc                                      ; $6bef: $09
	ld   a, [hl+]                                    ; $6bf0: $2a
	ld   l, [hl]                                     ; $6bf1: $6e
	ld   h, a                                        ; $6bf2: $67
	ld   bc, $2000                                   ; $6bf3: $01 $00 $20
	call CP_HL_BC                                       ; $6bf6: $cd $06 $72
	push hl                                          ; $6bf9: $e5
	ld   hl, $0002                                   ; $6bfa: $21 $02 $00
	call nc, AddToCommsRewardsStruct                           ; $6bfd: $d4 $74 $6b
	pop  hl                                          ; $6c00: $e1
	ld   bc, $4000                                   ; $6c01: $01 $00 $40
	call CP_HL_BC                                       ; $6c04: $cd $06 $72
	push hl                                          ; $6c07: $e5
	ld   hl, $0003                                   ; $6c08: $21 $03 $00
	call nc, AddToCommsRewardsStruct                           ; $6c0b: $d4 $74 $6b
	pop  hl                                          ; $6c0e: $e1
	ld   bc, $6000                                   ; $6c0f: $01 $00 $60
	call CP_HL_BC                                       ; $6c12: $cd $06 $72
	push hl                                          ; $6c15: $e5
	ld   hl, $0004                                   ; $6c16: $21 $04 $00
	call nc, AddToCommsRewardsStruct                           ; $6c19: $d4 $74 $6b
	pop  hl                                          ; $6c1c: $e1
	ld   bc, $8000                                   ; $6c1d: $01 $00 $80
	call CP_HL_BC                                       ; $6c20: $cd $06 $72
	push hl                                          ; $6c23: $e5
	ld   hl, $0005                                   ; $6c24: $21 $05 $00
	call nc, AddToCommsRewardsStruct                           ; $6c27: $d4 $74 $6b
	pop  hl                                          ; $6c2a: $e1

jr_004_6c2b:
	ld   hl, $0001                                   ; $6c2b: $21 $01 $00
	call AddToCommsRewardsStruct                               ; $6c2e: $cd $74 $6b
	ld   hl, $ffff                                   ; $6c31: $21 $ff $ff
	call AddToCommsRewardsStruct                               ; $6c34: $cd $74 $6b
	jp   ProcessCommsRewards                               ; $6c37: $c3 $f8 $66


; HL - start address of IR struct reward data
; eg if byte 0 == 0/1, word after is the 1 reward to give
;    if byte 0 == 2/4, byte 1 = table entry
GiveIRBasedRewards::
; Clear tallies first
	xor  a                                                          ; $6c3a
	ld   [wCinematronItemsTally], a                                 ; $6c3b
	ld   [wCinematronPointsTally], a                                ; $6c3e
	ld   [wCinematronPointsTally+1], a                              ; $6c41

; Return if idx is past number of table items
	ld   a, [hl+]                                                   ; $6c44
	cp   $06                                                        ; $6c45
	ret  nc                                                         ; $6c47

; Save incremented HL using DE
	ld   d, h                                                       ; $6c48
	ld   e, l                                                       ; $6c49

; HL = double reward type idxed into below table
	sla  a                                                          ; $6c4a
	ld   h, $00                                                     ; $6c4c
	ld   l, a                                                       ; $6c4e
	ld   bc, .rewardTypes                                           ; $6c4f
	add  hl, bc                                                     ; $6c52

; Jump to handler
	ld   a, [hl+]                                                   ; $6c53
	ld   h, [hl]                                                    ; $6c54
	ld   l, a                                                       ; $6c55
	jp   hl                                                         ; $6c56

.rewardTypes:
	dw IRReward0_Give1Reward
	dw IRReward1_Give1Reward
	dw IRReward2_PortraitGalleryOrCheapExModes
	dw IRReward3_None
	dw IRReward4_CheapPortraitGalleriesCheapExModesAndPhotos
	dw IRReward5_None

	
; DE - 2 bytes in [de] gives the single comms reward
IRReward0_Give1Reward:
IRReward1_Give1Reward:
; HL = word in src
	ld   a, [de]                                                    ; $6c63
	inc  de                                                         ; $6c64
	ld   l, a                                                       ; $6c65
	ld   a, [de]                                                    ; $6c66
	ld   h, a                                                       ; $6c67

; Add the 1 reward
	ld   de, wCommsRewardsStruct                                    ; $6c68
	call AddToCommsRewardsStruct                                    ; $6c6b

; Add a terminator, then process the 1 reward
	ld   hl, $ffff                                                  ; $6c6e
	call AddToCommsRewardsStruct                                    ; $6c71
	jp   ProcessCommsRewards                                        ; $6c74


; DE - 1 byte in [de] gives one, or a set of comms rewards, from the table below
IRReward2_PortraitGalleryOrCheapExModes:
; Return if the reward 2 table idx > num table items
	ld   a, [de]                                                    ; $6c77
	cp   $10                                                        ; $6c78
	ret  nc                                                         ; $6c7a

; Push return address
	ld   bc, .return                                                ; $6c7b
	push bc                                                         ; $6c7e

; DE = rewards struct, HL = double entry idx into table below
	ld   de, wCommsRewardsStruct                                    ; $6c7f
	sla  a                                                          ; $6c82
	ld   h, $00                                                     ; $6c84
	ld   l, a                                                       ; $6c86
	ld   bc, .rewards                                               ; $6c87
	add  hl, bc                                                     ; $6c8a

; Jump to handler
	ld   a, [hl+]                                                   ; $6c8b
	ld   h, [hl]                                                    ; $6c8c
	ld   l, a                                                       ; $6c8d
	jp   hl                                                         ; $6c8e

.return:
; Regardless of reward given, also give candy cursor..
	ld   hl, CR_CANDY_CURSOR                                        ; $6c8f
	call AddToCommsRewardsStruct                                    ; $6c92

; Then add terminator and process rewards
	ld   hl, $ffff                                                  ; $6c95
	call AddToCommsRewardsStruct                                    ; $6c98
	jp   ProcessCommsRewards                                        ; $6c9b

.rewards:
	dw .entry0_SakuraPortraitGallery
	dw .entry1_SumirePortraitGallery
	dw .entry2_IrisPortraitGallery
	dw .entry3_KannaPortraitGallery
	dw .entry4_KohranPortraitGallery
	dw .entry5_SakuraPortraitGallery
	dw .entryStub
	dw .entryStub
	dw .entry8_SakuraCheapExMode
	dw .entry9_SumireCheapExMode
	dw .entryA_IrisCheapExMode
	dw .entryB_KannaCheapExMode
	dw .entryC_KohranCheapExMode
	dw .entryD_MariaCheapExMode
	dw .entryStub
	dw .entryStub

.entryStub:
	ret                                                             ; $6cbe

.entry0_SakuraPortraitGallery:
	ld   hl, CR_SAKURA_PORTRAIT_GALLERY                             ; $6cbf
	call AddToCommsRewardsStruct                                    ; $6cc2
	ret                                                             ; $6cc5

.entry1_SumirePortraitGallery:
	ld   hl, CR_SUMIRE_PORTRAIT_GALLERY                             ; $6cc6
	call AddToCommsRewardsStruct                                    ; $6cc9
	ret                                                             ; $6ccc

.entry5_SakuraPortraitGallery:
	ld   hl, CR_MARIA_PORTRAIT_GALLERY                              ; $6ccd
	call AddToCommsRewardsStruct                                    ; $6cd0
	ret                                                             ; $6cd3

.entry2_IrisPortraitGallery:
	ld   hl, CR_IRIS_PORTRAIT_GALLERY                               ; $6cd4
	call AddToCommsRewardsStruct                                    ; $6cd7
	ret                                                             ; $6cda

.entry4_KohranPortraitGallery:
	ld   hl, CR_KOHRAN_PORTRAIT_GALLERY                             ; $6cdb
	call AddToCommsRewardsStruct                                    ; $6cde
	ret                                                             ; $6ce1

.entry3_KannaPortraitGallery:
	ld   hl, CR_KANNA_PORTRAIT_GALLERY                              ; $6ce2
	call AddToCommsRewardsStruct                                    ; $6ce5
	ret                                                             ; $6ce8

.entry8_SakuraCheapExMode:
	push de                                                         ; $6ce9
	ld   hl, FLAG1_SAKURA_CHEAP_EX_MODE_PRICES                      ; $6cea
	ld   a, $ff                                                     ; $6ced

	M_FarCall SetOrUnsetFlag1

	pop  de                                                         ; $6d03
	ld   hl, CR_SAKURA_EX_MODE                                      ; $6d04
	call AddToCommsRewardsStruct                                    ; $6d07
	ret                                                             ; $6d0a

.entry9_SumireCheapExMode:
	push de                                                         ; $6d0b
	ld   hl, FLAG1_SUMIRE_CHEAP_EX_MODE_PRICES                      ; $6d0c
	ld   a, $ff                                                     ; $6d0f

	M_FarCall SetOrUnsetFlag1

	pop  de                                                         ; $6d25
	ld   hl, CR_SUMIRE_EX_MODE                                      ; $6d26
	call AddToCommsRewardsStruct                                    ; $6d29
	ret                                                             ; $6d2c

.entryD_MariaCheapExMode:
	push de                                                         ; $6d2d
	ld   hl, FLAG1_MARIA_CHEAP_EX_MODE_PRICES                       ; $6d2e
	ld   a, $ff                                                     ; $6d31

	M_FarCall SetOrUnsetFlag1

	pop  de                                                         ; $6d47
	ld   hl, CR_MARIA_EX_MODE                                       ; $6d48
	call AddToCommsRewardsStruct                                    ; $6d4b
	ret                                                             ; $6d4e

.entryA_IrisCheapExMode:
	push de                                                         ; $6d4f
	ld   hl, FLAG1_IRIS_CHEAP_EX_MODE_PRICES                        ; $6d50
	ld   a, $ff                                                     ; $6d53

	M_FarCall SetOrUnsetFlag1

	pop  de                                                         ; $6d69
	ld   hl, CR_IRIS_EX_MODE                                        ; $6d6a
	call AddToCommsRewardsStruct                                    ; $6d6d
	ret                                                             ; $6d70

.entryC_KohranCheapExMode:
	push de                                                         ; $6d71
	ld   hl, FLAG1_KOHRAN_CHEAP_EX_MODE_PRICES                      ; $6d72
	ld   a, $ff                                                     ; $6d75

	M_FarCall SetOrUnsetFlag1

	pop  de                                                         ; $6d8b
	ld   hl, CR_KOHRAN_EX_MODE                                      ; $6d8c
	call AddToCommsRewardsStruct                                    ; $6d8f
	ret                                                             ; $6d92

.entryB_KannaCheapExMode:
	push de                                                         ; $6d93
	ld   hl, FLAG1_KANNA_CHEAP_EX_MODE_PRICES                       ; $6d94
	ld   a, $ff                                                     ; $6d97

	M_FarCall SetOrUnsetFlag1

	pop  de                                                         ; $6dad
	ld   hl, CR_KANNA_EX_MODE                                       ; $6dae
	call AddToCommsRewardsStruct                                    ; $6db1
	ret                                                             ; $6db4


IRReward3_None:
; Simply add terminator and process rewards
	ld   de, wCommsRewardsStruct                                    ; $6db5
	ld   hl, $ffff                                                  ; $6db8
	call AddToCommsRewardsStruct                                    ; $6dbb
	jp   ProcessCommsRewards                                        ; $6dbe


; DE - 1 byte in [de] gives one, or a set of comms rewards, from the table below
IRReward4_CheapPortraitGalleriesCheapExModesAndPhotos:
; Return if the reward 4 table idx > num table items
	ld   a, [de]                                                    ; $6dc1
	cp   $10                                                        ; $6dc2
	ret  nc                                                         ; $6dc4

; Push return address
	ld   bc, .return                                                ; $6dc5
	push bc                                                         ; $6dc8

; DE = rewards struct, HL = double entry idx into table below
	ld   de, wCommsRewardsStruct                                    ; $6dc9
	sla  a                                                          ; $6dcc
	ld   h, $00                                                     ; $6dce
	ld   l, a                                                       ; $6dd0
	ld   bc, .rewards                                               ; $6dd1
	add  hl, bc                                                     ; $6dd4

; Jump to handler
	ld   a, [hl+]                                                   ; $6dd5
	ld   h, [hl]                                                    ; $6dd6
	ld   l, a                                                       ; $6dd7
	jp   hl                                                         ; $6dd8

.return:
; Regardless of reward given, also give candy cursor..
	ld   hl, CR_CANDY_CURSOR                                        ; $6dd9
	call AddToCommsRewardsStruct                                    ; $6ddc

; Then add terminator and process rewards
	ld   hl, $ffff                                                  ; $6ddf
	call AddToCommsRewardsStruct                                    ; $6de2
	jp   ProcessCommsRewards                                        ; $6de5

.rewards:
	dw .entry0_SakuraCheapPortraitGallery
	dw .entry1_SumireCheapPortraitGallery
	dw .entry2_MariaCheapPortraitGallery
	dw .entry3_IrisCheapPortraitGallery
	dw .entry4_KohranCheapPortraitGallery
	dw .entry5_KannaCheapPortraitGallery
	dw .entry6_OrihimePhoto
	dw .entry7_ReniPhoto
	dw .entry8_SakuraCheapExMode
	dw .entry9_SumireCheapExMode
	dw .entryA_MariaCheapExMode
	dw .entryB_IrisCheapExMode
	dw .entryC_KohranCheapExMode
	dw .entryD_KannaCheapExMode
	dw .entryStub
	dw .entryStub

.entryStub:
	ret                                                             ; $6e08

.entry0_SakuraCheapPortraitGallery:
	push de                                                         ; $6e09
	ld   hl, FLAG1_SAKURA_CHEAP_GENERAL_PRICES                      ; $6e0a
	ld   a, $ff                                                     ; $6e0d

	M_FarCall SetOrUnsetFlag1

	pop  de                                                         ; $6e23
	ld   hl, CR_SAKURA_PORTRAIT_GALLERY                             ; $6e24
	call AddToCommsRewardsStruct                                    ; $6e27
	ret                                                             ; $6e2a

.entry1_SumireCheapPortraitGallery:
	push de                                                         ; $6e2b
	ld   hl, FLAG1_SUMIRE_CHEAP_GENERAL_PRICES                      ; $6e2c
	ld   a, $ff                                                     ; $6e2f

	M_FarCall SetOrUnsetFlag1

	pop  de                                                         ; $6e45
	ld   hl, CR_SUMIRE_PORTRAIT_GALLERY                             ; $6e46
	call AddToCommsRewardsStruct                                    ; $6e49
	ret                                                             ; $6e4c

.entry2_MariaCheapPortraitGallery:
	push de                                                         ; $6e4d
	ld   hl, FLAG1_MARIA_CHEAP_GENERAL_PRICES                       ; $6e4e
	ld   a, $ff                                                     ; $6e51

	M_FarCall SetOrUnsetFlag1

	pop  de                                                         ; $6e67
	ld   hl, CR_MARIA_PORTRAIT_GALLERY                              ; $6e68
	call AddToCommsRewardsStruct                                    ; $6e6b
	ret                                                             ; $6e6e

.entry3_IrisCheapPortraitGallery:
	push de                                                         ; $6e6f
	ld   hl, FLAG1_IRIS_CHEAP_GENERAL_PRICES                        ; $6e70
	ld   a, $ff                                                     ; $6e73

	M_FarCall SetOrUnsetFlag1

	pop  de                                                         ; $6e89
	ld   hl, CR_IRIS_PORTRAIT_GALLERY                               ; $6e8a
	call AddToCommsRewardsStruct                                    ; $6e8d
	ret                                                             ; $6e90

.entry4_KohranCheapPortraitGallery:
	push de                                                         ; $6e91
	ld   hl, FLAG1_KOHRAN_CHEAP_GENERAL_PRICES                      ; $6e92
	ld   a, $ff                                                     ; $6e95

	M_FarCall SetOrUnsetFlag1

	pop  de                                                         ; $6eab
	ld   hl, CR_KOHRAN_PORTRAIT_GALLERY                             ; $6eac
	call AddToCommsRewardsStruct                                    ; $6eaf
	ret                                                             ; $6eb2

.entry5_KannaCheapPortraitGallery:
	push de                                                         ; $6eb3
	ld   hl, FLAG1_KANNA_CHEAP_GENERAL_PRICES                       ; $6eb4
	ld   a, $ff                                                     ; $6eb7

	M_FarCall SetOrUnsetFlag1

	pop  de                                                         ; $6ecd
	ld   hl, CR_KANNA_PORTRAIT_GALLERY                              ; $6ece
	call AddToCommsRewardsStruct                                    ; $6ed1
	ret                                                             ; $6ed4

.entry6_OrihimePhoto:
	ld   hl, CR_ORIHIME_PHOTO                                       ; $6ed5
	call AddToCommsRewardsStruct                                    ; $6ed8
	ret                                                             ; $6edb

.entry7_ReniPhoto:
	ld   hl, CR_RENI_PHOTO                                          ; $6edc
	call AddToCommsRewardsStruct                                    ; $6edf
	ret                                                             ; $6ee2

.entry8_SakuraCheapExMode:
	push de                                                         ; $6ee3
	ld   hl, FLAG1_SAKURA_CHEAP_EX_MODE_PRICES                      ; $6ee4
	ld   a, $ff                                                     ; $6ee7

	M_FarCall SetOrUnsetFlag1

	pop  de                                                         ; $6efd
	ld   hl, CR_SAKURA_EX_MODE                                      ; $6efe
	call AddToCommsRewardsStruct                                    ; $6f01
	ret                                                             ; $6f04

.entry9_SumireCheapExMode:
	push de                                                         ; $6f05
	ld   hl, FLAG1_SUMIRE_CHEAP_EX_MODE_PRICES                      ; $6f06
	ld   a, $ff                                                     ; $6f09

	M_FarCall SetOrUnsetFlag1

	pop  de                                                         ; $6f1f
	ld   hl, CR_SUMIRE_EX_MODE                                      ; $6f20
	call AddToCommsRewardsStruct                                    ; $6f23
	ret                                                             ; $6f26

.entryA_MariaCheapExMode:
	push de                                                         ; $6f27
	ld   hl, FLAG1_MARIA_CHEAP_EX_MODE_PRICES                       ; $6f28
	ld   a, $ff                                                     ; $6f2b

	M_FarCall SetOrUnsetFlag1

	pop  de                                                         ; $6f41
	ld   hl, CR_MARIA_EX_MODE                                       ; $6f42
	call AddToCommsRewardsStruct                                    ; $6f45
	ret                                                             ; $6f48

.entryB_IrisCheapExMode:
	push de                                                         ; $6f49
	ld   hl, FLAG1_IRIS_CHEAP_EX_MODE_PRICES                        ; $6f4a
	ld   a, $ff                                                     ; $6f4d

	M_FarCall SetOrUnsetFlag1

	pop  de                                                         ; $6f63
	ld   hl, CR_IRIS_EX_MODE                                        ; $6f64
	call AddToCommsRewardsStruct                                    ; $6f67
	ret                                                             ; $6f6a

.entryC_KohranCheapExMode:
	push de                                                         ; $6f6b
	ld   hl, FLAG1_KOHRAN_CHEAP_EX_MODE_PRICES                      ; $6f6c
	ld   a, $ff                                                     ; $6f6f

	M_FarCall SetOrUnsetFlag1

	pop  de                                                         ; $6f85
	ld   hl, CR_KOHRAN_EX_MODE                                      ; $6f86
	call AddToCommsRewardsStruct                                    ; $6f89
	ret                                                             ; $6f8c

.entryD_KannaCheapExMode:
	push de                                                         ; $6f8d
	ld   hl, FLAG1_KANNA_CHEAP_EX_MODE_PRICES                       ; $6f8e
	ld   a, $ff                                                     ; $6f91

	M_FarCall SetOrUnsetFlag1

	pop  de                                                         ; $6fa7
	ld   hl, CR_KANNA_EX_MODE                                       ; $6fa8
	call AddToCommsRewardsStruct                                    ; $6fab
	ret                                                             ; $6fae


IRReward5_None:
; Simply add terminator and process rewards
	ld   de, wCommsRewardsStruct                                    ; $6faf
	ld   hl, $ffff                                                  ; $6fb2
	call AddToCommsRewardsStruct                                    ; $6fb5
	jp   ProcessCommsRewards                                        ; $6fb8


; A - ending idx (1-6, and 9)
GivePostGameRewards::
	push af                                                         ; $6fbb

; If game beaten for the 1st time..
	ld   hl, FLAG1_GAME_BEATEN                                      ; $6fbc
	M_FarCall CheckIfFlagSet1
	or   a                                                          ; $6fd3
	jr   nz, .afterGameBeatenCheck                                  ; $6fd4

; Give 2k points and set flag
	ld   hl, 2000                                                   ; $6fd6
	call AddPtsToCurrAndTally                                       ; $6fd9

	ld   hl, FLAG1_GAME_BEATEN                                      ; $6fdc
	ld   a, $ff                                                     ; $6fdf
	M_FarCall SetOrUnsetFlag1

.afterGameBeatenCheck:
; Return if invalid ending idx
	pop  af                                                         ; $6ff5
	dec  a                                                          ; $6ff6
	cp   $09                                                        ; $6ff7
	ret  nc                                                         ; $6ff9

; HL points to a relevant table entry based on char ending
	sla  a                                                          ; $6ffa
	ld   h, $00                                                     ; $6ffc
	ld   l, a                                                       ; $6ffe
	ld   bc, CharacterEndingFlags                                   ; $6fff
	add  hl, bc                                                     ; $7002

; HL = flag for character, set it
	ld   a, [hl+]                                                   ; $7003
	ld   h, [hl]                                                    ; $7004
	ld   l, a                                                       ; $7005
	ld   a, $ff                                                     ; $7006

	M_FarCall SetOrUnsetFlag1

; Jump if we've already rewarded all ex modes from this flag
	ld   hl, FLAG1_ALL_ENDINGS                                      ; $701c
	M_FarCall CheckIfFlagSet1
	or   a                                                          ; $7033
	jp   nz, .afterAllEndingsCheck2                                 ; $7034

; Loop through character ending flags
	ld   hl, CharacterEndingFlags                                   ; $7037

.nextEndingFlag:
; BC = the global flag
	ld   a, [hl+]                                                   ; $703a
	ld   c, a                                                       ; $703b
	ld   a, [hl+]                                                   ; $703c
	ld   b, a                                                       ; $703d

; Jump if we've reached the end ($ffff)
	push hl                                                         ; $703e
	bit  7, b                                                       ; $703f
	jr   nz, .unlockAllExModes                                      ; $7041

; Jump if the flag hasn't been set
	ld   h, b                                                       ; $7043
	ld   l, c                                                       ; $7044
	M_FarCall CheckIfFlagSet1
	or   a                                                          ; $7059
	jp   z, .afterAllEndingsCheck1                                  ; $705a

; Else keep going
	pop  hl                                                         ; $705d
	jr   .nextEndingFlag                                            ; $705e

.unlockAllExModes:
	ld   hl, 3000                                                   ; $7060
	call AddPtsToCurrAndTally                                       ; $7063

	ld   hl, FLAG1_SAKURA_EX_MODE                                   ; $7066
	ld   a, $ff                                                     ; $7069
	M_FarCall JpSetOrUnsetFlag1

	ld   hl, FLAG1_SUMIRE_EX_MODE                                   ; $707f
	ld   a, $ff                                                     ; $7082
	M_FarCall JpSetOrUnsetFlag1

	ld   hl, FLAG1_MARIA_EX_MODE                                    ; $7098
	ld   a, $ff                                                     ; $709b
	M_FarCall JpSetOrUnsetFlag1

	ld   hl, FLAG1_IRIS_EX_MODE                                     ; $70b1
	ld   a, $ff                                                     ; $70b4
	M_FarCall JpSetOrUnsetFlag1

	ld   hl, FLAG1_KOHRAN_EX_MODE                                   ; $70ca
	ld   a, $ff                                                     ; $70cd
	M_FarCall JpSetOrUnsetFlag1

	ld   hl, FLAG1_KANNA_EX_MODE                                    ; $70e3
	ld   a, $ff                                                     ; $70e6
	M_FarCall JpSetOrUnsetFlag1

	ld   hl, FLAG1_ALL_ENDINGS                                      ; $70fc
	ld   a, $ff                                                     ; $70ff
	M_FarCall SetOrUnsetFlag1

.afterAllEndingsCheck1:
	pop  hl                                                         ; $7115

.afterAllEndingsCheck2:
; Loop through the 6 table entries
	ld   hl, CharacterPhotoLocalAndGlobalFlags                      ; $7116
	ld   a, $06                                                     ; $7119

.nextPhotoEntry:
	push af                                                         ; $711b

; BC = local flag for photo
	ld   a, [hl+]                                                   ; $711c
	ld   c, a                                                       ; $711d
	ld   a, [hl+]                                                   ; $711e
	ld   b, a                                                       ; $711f

; DE = global flag for the photo
	ld   a, [hl+]                                                   ; $7120
	ld   e, a                                                       ; $7121
	ld   a, [hl+]                                                   ; $7122
	ld   d, a                                                       ; $7123

; Jump if local flag not set
	push hl                                                         ; $7124
	ld   h, b                                                       ; $7125
	ld   l, c                                                       ; $7126
	M_FarCall CheckIfFlagSet2
	or   a                                                          ; $713b
	jr   z, .toNextPhotoEntry                                       ; $713c

; Else set the relevant global flag
	ld   h, d                                                       ; $713e
	ld   l, e                                                       ; $713f
	push hl                                                         ; $7140
	ld   a, $ff                                                     ; $7141
	M_FarCall JpSetOrUnsetFlag1

; And set that it's already been bought
	pop  hl                                                         ; $7157
	ld   a, $ff                                                     ; $7158
	M_FarCall SetOrUnsetNextFlag1

.toNextPhotoEntry:
	pop  hl                                                         ; $716e
	pop  af                                                         ; $716f
	dec  a                                                          ; $7170
	jr   nz, .nextPhotoEntry                                        ; $7171

; If push ups done..
	ld   hl, FLAG2_PUSH_UPS_TRAINING                                ; $7173
	M_FarCall CheckIfFlagSet2
	or   a                                                          ; $718a
	jr   z, .afterPushups                                           ; $718b

; Set its global flag to unlock in shop
	ld   hl, FLAG1_PUSH_UPS                                         ; $718d
	ld   a, $ff                                                     ; $7190
	M_FarCall SetOrUnsetFlag1

.afterPushups:
; If red light green light done..
	ld   hl, FLAG2_RED_LIGHT_GREEN_LIGHT_TRAINING                   ; $71a6
	M_FarCall CheckIfFlagSet2
	or   a                                                          ; $71bd
	jr   z, .done                                                   ; $71be

; Set its global flag to unlock in shop
	ld   hl, FLAG1_RED_LIGHT_GREEN_LIGHT                            ; $71c0
	ld   a, $ff                                                     ; $71c3
	M_FarCall SetOrUnsetFlag1

.done:
	ret                                                             ; $71d9


CharacterEndingFlags:
	dw FLAG1_SAKURA_ENDING
	dw FLAG1_SUMIRE_ENDING
	dw FLAG1_MARIA_ENDING
	dw FLAG1_IRIS_ENDING
	dw FLAG1_KOHRAN_ENDING
	dw FLAG1_KANNA_ENDING
	dw FLAG1_GAME_BEATEN
	dw FLAG1_GAME_BEATEN
	dw FLAG1_OGAMI_ENDING
	dw $ffff


CharacterPhotoLocalAndGlobalFlags:
	dw FLAG2_SAKURA_PHOTO, FLAG1_SAKURA_PHOTO
	dw FLAG2_SUMIRE_PHOTO, FLAG1_SUMIRE_PHOTO
	dw FLAG2_MARIA_PHOTO, FLAG1_MARIA_PHOTO
	dw FLAG2_IRIS_PHOTO, FLAG1_IRIS_PHOTO
	dw FLAG2_KOHRAN_PHOTO, FLAG1_KOHRAN_PHOTO
	dw FLAG2_KANNA_PHOTO, FLAG1_KANNA_PHOTO


CP_HL_BC:
	ld   a, h                                                       ; $7206
	sub  b                                                          ; $7207
	ret  nz                                                         ; $7208

	ld   a, l                                                       ; $7209
	sub  c                                                          ; $720a
	ret                                                             ; $720b


GameState49_DayPassed::
; Jump if main state
	ld   a, [wGameSubstate]                                         ; $720c
	or   a                                                          ; $720f
	jp   nz, DayPassedSubstate1Main                                 ; $7210

; Substate 0 - Init, mute song
	xor  a                                                          ; $7213
	call PlaySong                                                   ; $7214

; Clear display regs and turn on LCD
	call ClearDisplayRegsAllowVBlankInt                             ; $7217
	ld   a, [wLCDC]                                                 ; $721a
	and  LCDCF_ON|LCDCF_WIN9C00|LCDCF_WINON                         ; $721d
	or   LCDCF_ON|LCDCF_OBJ16|LCDCF_OBJON|LCDCF_BGON                ; $721f
	ld   [wLCDC], a                                                 ; $7221
	ldh  [rLCDC], a                                                 ; $7224

; Load all black palettes, and update hw pals
	ld   a, BANK(Palettes_AllBlack)                                 ; $7226
	ld   hl, Palettes_AllBlack                                      ; $7228
	ld   de, wBGPalettes                                            ; $722b
	ld   bc, NUM_PALETTE_BYTES * 2                                  ; $722e
	call FarMemCopy                                                 ; $7231

	ldbc $00, $3f                                                   ; $7234
	call SetBGandOBJPaletteRangesToUpdate                           ; $7237

; Set all inputs enabled, clear oam and base anim sprite spec details
	ld   a, $ff                                                     ; $723a
	ld   [wInGameInputsEnabled], a                                  ; $723c
	call ClearOam                                                   ; $723f
	call ClearBaseAnimSpriteSpecDetails                             ; $7242

; Clear anim step and misc counter idx
	xor  a                                                          ; $7245
	ld   [wDayPassedAnimationStep], a                               ; $7246
	ld   [wDayPassedMiscCounterIdx], a                              ; $7249

; To main substate
	ld   hl, wGameSubstate                                          ; $724c
	inc  [hl]                                                       ; $724f
	ret                                                             ; $7250


Call_004_7251:
	ld   a, $0c                                      ; $7251: $3e $0c
	ld   [wSpriteGroup], a                                  ; $7253: $ea $1a $c2
	ldbc $00, $00                                   ; $7256: $01 $00 $00
	ld   a, $57                                      ; $7259: $3e $57
	call LoadSpriteFromMainTable                                       ; $725b: $cd $16 $0e
	ret                                              ; $725e: $c9


DayPassedSubstate1Main:
;
	call ClearOam                                       ; $725f: $cd $d7 $0d

	xor  a                                           ; $7262: $af
	ld   [$cc1a], a                                  ; $7263: $ea $1a $cc

;
	ld   a, [wInGameButtonsHeld]                                  ; $7266: $fa $0f $c2
	bit  PADB_B, a                                        ; $7269: $cb $4f
	jr   z, :+                              ; $726b: $28 $05

	ld   a, $ff                                      ; $726d: $3e $ff
	ld   [$cc1a], a                                  ; $726f: $ea $1a $cc

;
:	ld   a, [wWramBank]                                  ; $7272: $fa $93 $c2
	push af                                          ; $7275: $f5

	ld   a, $07                                      ; $7276: $3e $07
	ld   [wWramBank], a                                  ; $7278: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $727b: $e0 $70

; Push return addr
	ld   bc, .return                                                ; $727d
	push bc                                                         ; $7280

; HL = double anim step idxed into table
	ld   a, [wDayPassedAnimationStep]                               ; $7281
	ld   b, $00                                                     ; $7284
	ld   c, a                                                       ; $7286
	ld   hl, .animationStepHandlers                                 ; $7287
	add  hl, bc                                                     ; $728a
	add  hl, bc                                                     ; $728b

; Jump to handler
	ld   a, [hl+]                                                   ; $728c
	ld   h, [hl]                                                    ; $728d
	ld   l, a                                                       ; $728e
	jp   hl                                                         ; $728f

.return:
	call Call_004_7251                               ; $7290: $cd $51 $72
	call AnimateAllAnimatedSpriteSpecs                                       ; $7293: $cd $d3 $2e

; Restore ram bank
	pop  af                                                         ; $7296
	ld   [wWramBank], a                                             ; $7297
	ldh  [rSVBK], a                                                 ; $729a
	ret                                                             ; $729c

.animationStepHandlers:
	dw DayPassedAnimationStep0
	dw DayPassedAnimationStep1
	dw DayPassedAnimationStep2
	dw DayPassedAnimationStep3
	dw DayPassedAnimationStep4
	dw DayPassedAnimationStep5


DayPassedAnimationStep0:
; Inc data load idx, and get curr in A
	ld   hl, wDayPassedMiscCounterIdx                                   ; $72a9: $21 $19 $cc
	ld   a, [hl]                                     ; $72ac: $7e
	inc  [hl]                                        ; $72ad: $34

; HL = double un-inc'd data load idx, idxed into table
	sla  a                                           ; $72ae: $cb $27
	ld   h, $00                                      ; $72b0: $26 $00
	ld   l, a                                        ; $72b2: $6f
	ld   bc, .dataLoadHandlers                                   ; $72b3: $01 $bc $72
	add  hl, bc                                      ; $72b6: $09

; Jump to handler
	ld   a, [hl+]                                    ; $72b7: $2a
	ld   h, [hl]                                     ; $72b8: $66
	ld   l, a                                        ; $72b9: $6f
	jp   hl                                          ; $72ba: $e9


;
	ret                                              ; $72bb: $c9

.dataLoadHandlers:
	dw .dataLoad0
	dw .dataLoad1
	dw .dataLoad2
	dw .dataLoad3
	dw .dataLoad4
	dw .dataLoad5
	dw .dataLoad6
	dw .dataLoad7

.dataLoad0:
	ld   hl, $d000                                   ; $72cc: $21 $00 $d0
	ld   a, $a0                                      ; $72cf: $3e $a0
	ld   de, $6a8e                                   ; $72d1: $11 $8e $6a
	ld   bc, $1412                                   ; $72d4: $01 $12 $14
	call FarCopyLayout                                       ; $72d7: $cd $2c $0b
	ld   hl, $d400                                   ; $72da: $21 $00 $d4
	call FarCopyLayout                                       ; $72dd: $cd $2c $0b
	ld   c, $81                                      ; $72e0: $0e $81
	ld   de, $9800                                   ; $72e2: $11 $00 $98
	ld   a, $07                                      ; $72e5: $3e $07
	ld   hl, $d000                                   ; $72e7: $21 $00 $d0
	ld   b, $24                                      ; $72ea: $06 $24
	call EnqueueHDMATransfer                                       ; $72ec: $cd $7c $02
	ld   c, $80                                      ; $72ef: $0e $80
	ld   de, $9800                                   ; $72f1: $11 $00 $98
	ld   a, $07                                      ; $72f4: $3e $07
	ld   hl, $d400                                   ; $72f6: $21 $00 $d4
	ld   b, $24                                      ; $72f9: $06 $24
	call EnqueueHDMATransfer                                       ; $72fb: $cd $7c $02
	ret                                              ; $72fe: $c9

.dataLoad1:
	ld   a, $8d                                      ; $72ff: $3e $8d
	ld   hl, $d000                                   ; $7301: $21 $00 $d0
	ld   de, $6dd0                                   ; $7304: $11 $d0 $6d
	call RLEXorCopy                                       ; $7307: $cd $d2 $09
	ld   c, $80                                      ; $730a: $0e $80
	ld   de, $8800                                   ; $730c: $11 $00 $88
	ld   a, $07                                      ; $730f: $3e $07
	ld   hl, $d000                                   ; $7311: $21 $00 $d0
	ld   b, $60                                      ; $7314: $06 $60
	call EnqueueHDMATransfer                                       ; $7316: $cd $7c $02
	ret                                              ; $7319: $c9

.dataLoad2:
	ld   c, $80                                      ; $731a: $0e $80
	ld   de, $8e00                                   ; $731c: $11 $00 $8e
	ld   a, $07                                      ; $731f: $3e $07
	ld   hl, $d600                                   ; $7321: $21 $00 $d6
	ld   b, $60                                      ; $7324: $06 $60
	call EnqueueHDMATransfer                                       ; $7326: $cd $7c $02
	ret                                              ; $7329: $c9

.dataLoad3:
	ld   c, $80                                      ; $732a: $0e $80
	ld   de, $9400                                   ; $732c: $11 $00 $94
	ld   a, $07                                      ; $732f: $3e $07
	ld   hl, $dc00                                   ; $7331: $21 $00 $dc
	ld   b, $40                                      ; $7334: $06 $40
	call EnqueueHDMATransfer                                       ; $7336: $cd $7c $02
	ld   a, $8f                                      ; $7339: $3e $8f
	ld   hl, $d000                                   ; $733b: $21 $00 $d0
	ld   de, $4800                                   ; $733e: $11 $00 $48
	call RLEXorCopy                                       ; $7341: $cd $d2 $09
	ld   c, $81                                      ; $7344: $0e $81
	ld   de, $9000                                   ; $7346: $11 $00 $90
	ld   a, $07                                      ; $7349: $3e $07
	ld   hl, $d000                                   ; $734b: $21 $00 $d0
	ld   b, $20                                      ; $734e: $06 $20
	call EnqueueHDMATransfer                                       ; $7350: $cd $7c $02
	ret                                              ; $7353: $c9

.dataLoad4:
	ld   c, $81                                      ; $7354: $0e $81
	ld   de, $9200                                   ; $7356: $11 $00 $92
	ld   a, $07                                      ; $7359: $3e $07
	ld   hl, $d200                                   ; $735b: $21 $00 $d2
	ld   b, $60                                      ; $735e: $06 $60
	call EnqueueHDMATransfer                                       ; $7360: $cd $7c $02
	ret                                              ; $7363: $c9

.dataLoad5:
	ld   a, $a0                                      ; $7364: $3e $a0
	ld   hl, $d800                                   ; $7366: $21 $00 $d8
	ld   de, $75ad                                   ; $7369: $11 $ad $75
	call RLEXorCopy                                       ; $736c: $cd $d2 $09
	ld   c, $81                                      ; $736f: $0e $81
	ld   de, $8800                                   ; $7371: $11 $00 $88
	ld   a, $07                                      ; $7374: $3e $07
	ld   hl, $d800                                   ; $7376: $21 $00 $d8
	ld   b, $60                                      ; $7379: $06 $60
	call EnqueueHDMATransfer                                       ; $737b: $cd $7c $02
	ret                                              ; $737e: $c9

.dataLoad6:
	ld   c, $81                                      ; $737f: $0e $81
	ld   de, $8e00                                   ; $7381: $11 $00 $8e
	ld   a, $07                                      ; $7384: $3e $07
	ld   hl, $de00                                   ; $7386: $21 $00 $de
	ld   b, $20                                      ; $7389: $06 $20
	call EnqueueHDMATransfer                                       ; $738b: $cd $7c $02
	ld   a, $97                                      ; $738e: $3e $97
	ld   hl, $d000                                   ; $7390: $21 $00 $d0
	ld   de, $6041                                   ; $7393: $11 $41 $60
	call RLEXorCopy                                       ; $7396: $cd $d2 $09
	ld   c, $80                                      ; $7399: $0e $80
	ld   de, $8000                                   ; $739b: $11 $00 $80
	ld   a, $07                                      ; $739e: $3e $07
	ld   hl, $d000                                   ; $73a0: $21 $00 $d0
	ld   b, $20                                      ; $73a3: $06 $20
	call EnqueueHDMATransfer                                       ; $73a5: $cd $7c $02
	ret                                              ; $73a8: $c9

.dataLoad7:
	ld   c, $80                                      ; $73a9: $0e $80
	ld   de, $8200                                   ; $73ab: $11 $00 $82
	ld   a, $07                                      ; $73ae: $3e $07
	ld   hl, $d200                                   ; $73b0: $21 $00 $d2
	ld   b, $60                                      ; $73b3: $06 $60
	call EnqueueHDMATransfer                                       ; $73b5: $cd $7c $02

IncDayPassedAnimStep:
	ld   hl, wDayPassedAnimationStep                                ; $73b8
	inc  [hl]                                                       ; $73bb

	xor  a                                                          ; $73bc
	ld   [wDayPassedMiscCounterIdx], a                              ; $73bd
	ret                                                             ; $73c0


DayPassedAnimationStep1:
	ld   a, [wDayPassedMiscCounterIdx]                                  ; $73c1: $fa $19 $cc
	or   a                                           ; $73c4: $b7
	jr   nz, .afterInit                             ; $73c5: $20 $18

	xor  a                                           ; $73c7: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $73c8: $ea $62 $c3
	ld   a, $40                                      ; $73cb: $3e $40
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $73cd: $ea $63 $c3
	ld   a, $03                                      ; $73d0: $3e $03
	ld   b, $00                                      ; $73d2: $06 $00
	ld   hl, wBGPalettes                                   ; $73d4: $21 $de $c2
	ld   c, $a3                                      ; $73d7: $0e $a3
	ld   de, $704c                                   ; $73d9: $11 $4c $70
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $73dc: $cd $48 $07

.afterInit:
	ld   hl, wDayPassedMiscCounterIdx                                   ; $73df: $21 $19 $cc
	ld   a, [$cc1a]                                  ; $73e2: $fa $1a $cc
	or   a                                           ; $73e5: $b7
	jr   z, jr_004_73ee                              ; $73e6: $28 $06

	ld   a, [hl]                                     ; $73e8: $7e
	add  $07                                         ; $73e9: $c6 $07
	and  $f8                                         ; $73eb: $e6 $f8
	ld   [hl], a                                     ; $73ed: $77

jr_004_73ee:
	ld   a, [hl]                                     ; $73ee: $7e
	inc  [hl]                                        ; $73ef: $34
	cp   $3f                                         ; $73f0: $fe $3f
	jr   nc, jr_004_73fd                             ; $73f2: $30 $09

	and  $07                                         ; $73f4: $e6 $07
	ret  nz                                          ; $73f6: $c0

	ld   bc, $0040                                   ; $73f7: $01 $40 $00
	jp   FadePalettesAndSetRangeToUpdate                                       ; $73fa: $c3 $32 $08

jr_004_73fd:
	ld   a, $a3                                      ; $73fd: $3e $a3
	ld   hl, $704c                                   ; $73ff: $21 $4c $70
	ld   de, wBGPalettes                                   ; $7402: $11 $de $c2
	ld   bc, $0080                                   ; $7405: $01 $80 $00
	call FarMemCopy                                       ; $7408: $cd $b2 $09
	ld   bc, $003f                                   ; $740b: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $740e: $cd $aa $04
	jp   IncDayPassedAnimStep                               ; $7411: $c3 $b8 $73


DayPassedAnimationStep2:
	ld   hl, wDayPassedMiscCounterIdx                                   ; $7414: $21 $19 $cc
	ld   a, [$cc1a]                                  ; $7417: $fa $1a $cc
	or   a                                           ; $741a: $b7
	jp   nz, IncDayPassedAnimStep                           ; $741b: $c2 $b8 $73

	ld   a, [hl]                                     ; $741e: $7e
	inc  [hl]                                        ; $741f: $34
	cp   $3c                                         ; $7420: $fe $3c
	jp   nc, IncDayPassedAnimStep                           ; $7422: $d2 $b8 $73

	ld   a, [wInGameButtonsPressed]                                  ; $7425: $fa $10 $c2
	and  $03                                         ; $7428: $e6 $03
	ret  z                                           ; $742a: $c8

	jp   IncDayPassedAnimStep                               ; $742b: $c3 $b8 $73


DayPassedAnimationStep3:
	ld   a, [wDayPassedMiscCounterIdx]                                  ; $742e: $fa $19 $cc
	srl  a                                           ; $7431: $cb $3f
	srl  a                                           ; $7433: $cb $3f
	call Call_004_7495                               ; $7435: $cd $95 $74
	ld   a, [wDayPassedMiscCounterIdx]                                  ; $7438: $fa $19 $cc
	or   a                                           ; $743b: $b7
	jr   nz, jr_004_7460                             ; $743c: $20 $22

	xor  a                                           ; $743e: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $743f: $ea $62 $c3
	ld   a, $40                                      ; $7442: $3e $40
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $7444: $ea $63 $c3
	ld   a, $03                                      ; $7447: $3e $03
	ld   b, $00                                      ; $7449: $06 $00
	ld   hl, wBGPalettes                                   ; $744b: $21 $de $c2
	ld   c, $a3                                      ; $744e: $0e $a3
	ld   de, $70cc                                   ; $7450: $11 $cc $70
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $7453: $cd $48 $07
	ld   a, $11                                      ; $7456: $3e $11
	call PlaySong                                       ; $7458: $cd $92 $1a
	ld   a, $07                                      ; $745b: $3e $07
	call SafeSetAudVolForMultipleChannels                                       ; $745d: $cd $e0 $1c

jr_004_7460:
	ld   hl, wDayPassedMiscCounterIdx                                   ; $7460: $21 $19 $cc
	ld   a, [$cc1a]                                  ; $7463: $fa $1a $cc
	or   a                                           ; $7466: $b7
	jr   z, jr_004_746f                              ; $7467: $28 $06

	ld   a, [hl]                                     ; $7469: $7e
	add  $0f                                         ; $746a: $c6 $0f
	and  $f8                                         ; $746c: $e6 $f8
	ld   [hl], a                                     ; $746e: $77

jr_004_746f:
	ld   a, [hl]                                     ; $746f: $7e
	inc  [hl]                                        ; $7470: $34
	cp   $7f                                         ; $7471: $fe $7f
	jr   nc, jr_004_747e                             ; $7473: $30 $09

	and  $0f                                         ; $7475: $e6 $0f
	ret  nz                                          ; $7477: $c0

	ld   bc, $0040                                   ; $7478: $01 $40 $00
	jp   FadePalettesAndSetRangeToUpdate                                       ; $747b: $c3 $32 $08


jr_004_747e:
	ld   a, $a3                                      ; $747e: $3e $a3
	ld   hl, $70cc                                   ; $7480: $21 $cc $70
	ld   de, wBGPalettes                                   ; $7483: $11 $de $c2
	ld   bc, $0080                                   ; $7486: $01 $80 $00
	call FarMemCopy                                       ; $7489: $cd $b2 $09
	ld   bc, $003f                                   ; $748c: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $748f: $cd $aa $04
	jp   IncDayPassedAnimStep                               ; $7492: $c3 $b8 $73


Call_004_7495:
	ld   b, a                                        ; $7495: $47
	ld   a, [sCurrDay]                                  ; $7496: $fa $b0 $af
	cp   $1f                                         ; $7499: $fe $1f
	ld   a, b                                        ; $749b: $78
	jp   z, Jump_004_766e                            ; $749c: $ca $6e $76

	cp   $20                                         ; $749f: $fe $20
	jp   nc, Jump_004_7555                           ; $74a1: $d2 $55 $75

	push af                                          ; $74a4: $f5
	ld   de, $d580                                   ; $74a5: $11 $80 $d5
	ld   hl, $d300                                   ; $74a8: $21 $00 $d3
	ld   bc, $0100                                   ; $74ab: $01 $00 $01
	call MemCopy                                       ; $74ae: $cd $a9 $09
	ld   de, $d6c0                                   ; $74b1: $11 $c0 $d6
	ld   hl, $d4c0                                   ; $74b4: $21 $c0 $d4
	ld   bc, $0080                                   ; $74b7: $01 $80 $00
	call MemCopy                                       ; $74ba: $cd $a9 $09
	ld   de, $d780                                   ; $74bd: $11 $80 $d7
	ld   hl, $d540                                   ; $74c0: $21 $40 $d5
	ld   bc, $0040                                   ; $74c3: $01 $40 $00
	call MemCopy                                       ; $74c6: $cd $a9 $09
	ld   hl, $3800                                   ; $74c9: $21 $00 $38
	ld   bc, $0020                                   ; $74cc: $01 $20 $00
	ld   a, $00                                      ; $74cf: $3e $00
	call MemSet                                       ; $74d1: $cd $96 $09
	ld   a, [sCurrDay]                                  ; $74d4: $fa $b0 $af
	ld   h, a                                        ; $74d7: $67
	ld   l, $0a                                      ; $74d8: $2e $0a
	call HLequHdivModL                                       ; $74da: $cd $fb $0b
	ld   a, h                                        ; $74dd: $7c
	or   a                                           ; $74de: $b7
	push hl                                          ; $74df: $e5
	ld   l, $20                                      ; $74e0: $2e $20
	call AequHtimesL                                       ; $74e2: $cd $ac $0b
	ld   bc, $d000                                   ; $74e5: $01 $00 $d0
	add  hl, bc                                      ; $74e8: $09
	ld   de, $d680                                   ; $74e9: $11 $80 $d6
	ld   bc, $0020                                   ; $74ec: $01 $20 $00
	call MemCopy                                       ; $74ef: $cd $a9 $09
	pop  hl                                          ; $74f2: $e1
	ld   h, l                                        ; $74f3: $65
	ld   l, $20                                      ; $74f4: $2e $20
	call AequHtimesL                                       ; $74f6: $cd $ac $0b
	ld   bc, $d000                                   ; $74f9: $01 $00 $d0
	add  hl, bc                                      ; $74fc: $09
	ld   de, $d6a0                                   ; $74fd: $11 $a0 $d6
	ld   bc, $0020                                   ; $7500: $01 $20 $00
	call MemCopy                                       ; $7503: $cd $a9 $09
	ld   a, [sCurrDay]                                  ; $7506: $fa $b0 $af
	dec  a                                           ; $7509: $3d
	ld   h, a                                        ; $750a: $67
	ld   l, $07                                      ; $750b: $2e $07
	call HLequHdivModL                                       ; $750d: $cd $fb $0b
	ld   h, l                                        ; $7510: $65
	ld   l, $40                                      ; $7511: $2e $40
	call AequHtimesL                                       ; $7513: $cd $ac $0b
	ld   bc, $d140                                   ; $7516: $01 $40 $d1
	add  hl, bc                                      ; $7519: $09
	ld   de, $d740                                   ; $751a: $11 $40 $d7
	ld   bc, $0040                                   ; $751d: $01 $40 $00
	call MemCopy                                       ; $7520: $cd $a9 $09
	pop  af                                          ; $7523: $f1
	ld   h, $00                                      ; $7524: $26 $00
	ld   l, a                                        ; $7526: $6f
	add  hl, hl                                      ; $7527: $29
	add  hl, hl                                      ; $7528: $29
	add  hl, hl                                      ; $7529: $29
	ld   bc, $756e                                   ; $752a: $01 $6e $75
	add  hl, bc                                      ; $752d: $09
	ld   de, $d580                                   ; $752e: $11 $80 $d5
	ld   b, $24                                      ; $7531: $06 $24

jr_004_7533:
	push hl                                          ; $7533: $e5
	ld   c, $08                                      ; $7534: $0e $08

jr_004_7536:
	ld   a, [de]                                     ; $7536: $1a
	and  [hl]                                        ; $7537: $a6
	ld   [de], a                                     ; $7538: $12
	inc  de                                          ; $7539: $13
	ld   a, [de]                                     ; $753a: $1a
	and  [hl]                                        ; $753b: $a6
	ld   [de], a                                     ; $753c: $12
	inc  de                                          ; $753d: $13
	inc  hl                                          ; $753e: $23
	dec  c                                           ; $753f: $0d
	jr   nz, jr_004_7536                             ; $7540: $20 $f4

	pop  hl                                          ; $7542: $e1
	dec  b                                           ; $7543: $05
	jr   nz, jr_004_7533                             ; $7544: $20 $ed

	ld   c, $80                                      ; $7546: $0e $80
	ld   de, $8580                                   ; $7548: $11 $80 $85
	ld   a, $07                                      ; $754b: $3e $07
	ld   hl, $d580                                   ; $754d: $21 $80 $d5
	ld   b, $24                                      ; $7550: $06 $24
	call EnqueueHDMATransfer                                       ; $7552: $cd $7c $02

Jump_004_7555:
	ld   a, $0c                                      ; $7555: $3e $0c
	ld   [wSpriteGroup], a                                  ; $7557: $ea $1a $c2
	ld   a, [sCurrDay]                                  ; $755a: $fa $b0 $af
	dec  a                                           ; $755d: $3d
	ld   h, a                                        ; $755e: $67
	ld   l, $07                                      ; $755f: $2e $07
	call HLequHdivModL                                       ; $7561: $cd $fb $0b
	ld   bc, $2630                                   ; $7564: $01 $30 $26
	ld   a, $58                                      ; $7567: $3e $58
	add  l                                           ; $7569: $85
	call LoadSpriteFromMainTable                                       ; $756a: $cd $16 $0e
	ret                                              ; $756d: $c9


	add  b                                           ; $756e: $80
	nop                                              ; $756f: $00
	nop                                              ; $7570: $00
	nop                                              ; $7571: $00
	nop                                              ; $7572: $00
	nop                                              ; $7573: $00
	nop                                              ; $7574: $00
	ld   bc, $00a0                                   ; $7575: $01 $a0 $00
	nop                                              ; $7578: $00
	nop                                              ; $7579: $00
	nop                                              ; $757a: $00
	nop                                              ; $757b: $00
	nop                                              ; $757c: $00
	dec  b                                           ; $757d: $05
	xor  b                                           ; $757e: $a8
	nop                                              ; $757f: $00
	nop                                              ; $7580: $00
	nop                                              ; $7581: $00
	nop                                              ; $7582: $00
	nop                                              ; $7583: $00
	nop                                              ; $7584: $00
	dec  d                                           ; $7585: $15
	xor  d                                           ; $7586: $aa
	nop                                              ; $7587: $00
	nop                                              ; $7588: $00
	nop                                              ; $7589: $00
	nop                                              ; $758a: $00
	nop                                              ; $758b: $00
	nop                                              ; $758c: $00
	ld   d, l                                        ; $758d: $55
	xor  d                                           ; $758e: $aa
	add  b                                           ; $758f: $80
	nop                                              ; $7590: $00
	nop                                              ; $7591: $00
	nop                                              ; $7592: $00
	nop                                              ; $7593: $00
	ld   bc, $aa55                                   ; $7594: $01 $55 $aa
	and  b                                           ; $7597: $a0
	nop                                              ; $7598: $00
	nop                                              ; $7599: $00
	nop                                              ; $759a: $00
	nop                                              ; $759b: $00
	dec  b                                           ; $759c: $05
	ld   d, l                                        ; $759d: $55
	xor  d                                           ; $759e: $aa
	xor  b                                           ; $759f: $a8
	nop                                              ; $75a0: $00
	nop                                              ; $75a1: $00
	nop                                              ; $75a2: $00
	nop                                              ; $75a3: $00
	dec  d                                           ; $75a4: $15
	ld   d, l                                        ; $75a5: $55
	xor  d                                           ; $75a6: $aa
	xor  d                                           ; $75a7: $aa
	nop                                              ; $75a8: $00
	nop                                              ; $75a9: $00
	nop                                              ; $75aa: $00
	nop                                              ; $75ab: $00
	ld   d, l                                        ; $75ac: $55
	ld   d, l                                        ; $75ad: $55
	xor  d                                           ; $75ae: $aa
	xor  d                                           ; $75af: $aa
	add  b                                           ; $75b0: $80
	nop                                              ; $75b1: $00
	nop                                              ; $75b2: $00
	ld   bc, $5555                                   ; $75b3: $01 $55 $55
	xor  d                                           ; $75b6: $aa
	xor  d                                           ; $75b7: $aa
	and  b                                           ; $75b8: $a0
	nop                                              ; $75b9: $00
	nop                                              ; $75ba: $00
	dec  b                                           ; $75bb: $05
	ld   d, l                                        ; $75bc: $55
	ld   d, l                                        ; $75bd: $55
	xor  d                                           ; $75be: $aa
	xor  d                                           ; $75bf: $aa
	xor  b                                           ; $75c0: $a8
	nop                                              ; $75c1: $00
	nop                                              ; $75c2: $00
	dec  d                                           ; $75c3: $15
	ld   d, l                                        ; $75c4: $55
	ld   d, l                                        ; $75c5: $55
	xor  d                                           ; $75c6: $aa
	xor  d                                           ; $75c7: $aa
	xor  d                                           ; $75c8: $aa
	nop                                              ; $75c9: $00
	nop                                              ; $75ca: $00
	ld   d, l                                        ; $75cb: $55
	ld   d, l                                        ; $75cc: $55
	ld   d, l                                        ; $75cd: $55
	xor  d                                           ; $75ce: $aa
	xor  d                                           ; $75cf: $aa
	xor  d                                           ; $75d0: $aa
	add  b                                           ; $75d1: $80
	ld   bc, $5555                                   ; $75d2: $01 $55 $55
	ld   d, l                                        ; $75d5: $55
	xor  d                                           ; $75d6: $aa
	xor  d                                           ; $75d7: $aa
	xor  d                                           ; $75d8: $aa
	and  b                                           ; $75d9: $a0
	dec  b                                           ; $75da: $05
	ld   d, l                                        ; $75db: $55
	ld   d, l                                        ; $75dc: $55
	ld   d, l                                        ; $75dd: $55
	xor  d                                           ; $75de: $aa
	xor  d                                           ; $75df: $aa
	xor  d                                           ; $75e0: $aa
	xor  b                                           ; $75e1: $a8
	dec  d                                           ; $75e2: $15
	ld   d, l                                        ; $75e3: $55
	ld   d, l                                        ; $75e4: $55
	ld   d, l                                        ; $75e5: $55
	xor  d                                           ; $75e6: $aa
	xor  d                                           ; $75e7: $aa
	xor  d                                           ; $75e8: $aa
	xor  d                                           ; $75e9: $aa
	ld   d, l                                        ; $75ea: $55
	ld   d, l                                        ; $75eb: $55
	ld   d, l                                        ; $75ec: $55
	ld   d, l                                        ; $75ed: $55
	xor  d                                           ; $75ee: $aa
	xor  d                                           ; $75ef: $aa
	xor  d                                           ; $75f0: $aa
	xor  e                                           ; $75f1: $ab
	push de                                          ; $75f2: $d5
	ld   d, l                                        ; $75f3: $55
	ld   d, l                                        ; $75f4: $55
	ld   d, l                                        ; $75f5: $55
	xor  d                                           ; $75f6: $aa
	xor  d                                           ; $75f7: $aa
	xor  d                                           ; $75f8: $aa
	xor  a                                           ; $75f9: $af
	push af                                          ; $75fa: $f5
	ld   d, l                                        ; $75fb: $55
	ld   d, l                                        ; $75fc: $55
	ld   d, l                                        ; $75fd: $55
	xor  d                                           ; $75fe: $aa
	xor  d                                           ; $75ff: $aa
	xor  d                                           ; $7600: $aa
	cp   a                                           ; $7601: $bf
	db   $fd                                         ; $7602: $fd
	ld   d, l                                        ; $7603: $55
	ld   d, l                                        ; $7604: $55
	ld   d, l                                        ; $7605: $55
	xor  d                                           ; $7606: $aa
	xor  d                                           ; $7607: $aa
	xor  d                                           ; $7608: $aa
	rst  $38                                         ; $7609: $ff
	rst  $38                                         ; $760a: $ff
	ld   d, l                                        ; $760b: $55
	ld   d, l                                        ; $760c: $55
	ld   d, l                                        ; $760d: $55
	xor  d                                           ; $760e: $aa
	xor  d                                           ; $760f: $aa
	xor  e                                           ; $7610: $ab
	rst  $38                                         ; $7611: $ff
	rst  $38                                         ; $7612: $ff
	push de                                          ; $7613: $d5
	ld   d, l                                        ; $7614: $55
	ld   d, l                                        ; $7615: $55
	xor  d                                           ; $7616: $aa
	xor  d                                           ; $7617: $aa
	xor  a                                           ; $7618: $af
	rst  $38                                         ; $7619: $ff
	rst  $38                                         ; $761a: $ff
	push af                                          ; $761b: $f5
	ld   d, l                                        ; $761c: $55
	ld   d, l                                        ; $761d: $55
	xor  d                                           ; $761e: $aa
	xor  d                                           ; $761f: $aa
	cp   a                                           ; $7620: $bf
	rst  $38                                         ; $7621: $ff
	rst  $38                                         ; $7622: $ff
	db   $fd                                         ; $7623: $fd
	ld   d, l                                        ; $7624: $55
	ld   d, l                                        ; $7625: $55
	xor  d                                           ; $7626: $aa
	xor  d                                           ; $7627: $aa
	rst  $38                                         ; $7628: $ff
	rst  $38                                         ; $7629: $ff
	rst  $38                                         ; $762a: $ff
	rst  $38                                         ; $762b: $ff
	ld   d, l                                        ; $762c: $55
	ld   d, l                                        ; $762d: $55
	xor  d                                           ; $762e: $aa
	xor  e                                           ; $762f: $ab
	rst  $38                                         ; $7630: $ff
	rst  $38                                         ; $7631: $ff
	rst  $38                                         ; $7632: $ff
	rst  $38                                         ; $7633: $ff
	push de                                          ; $7634: $d5
	ld   d, l                                        ; $7635: $55
	xor  d                                           ; $7636: $aa
	xor  a                                           ; $7637: $af
	rst  $38                                         ; $7638: $ff
	rst  $38                                         ; $7639: $ff
	rst  $38                                         ; $763a: $ff
	rst  $38                                         ; $763b: $ff
	push af                                          ; $763c: $f5
	ld   d, l                                        ; $763d: $55
	xor  d                                           ; $763e: $aa
	cp   a                                           ; $763f: $bf
	rst  $38                                         ; $7640: $ff
	rst  $38                                         ; $7641: $ff
	rst  $38                                         ; $7642: $ff
	rst  $38                                         ; $7643: $ff
	db   $fd                                         ; $7644: $fd
	ld   d, l                                        ; $7645: $55
	xor  d                                           ; $7646: $aa
	rst  $38                                         ; $7647: $ff
	rst  $38                                         ; $7648: $ff
	rst  $38                                         ; $7649: $ff
	rst  $38                                         ; $764a: $ff
	rst  $38                                         ; $764b: $ff
	rst  $38                                         ; $764c: $ff
	ld   d, l                                        ; $764d: $55
	xor  e                                           ; $764e: $ab
	rst  $38                                         ; $764f: $ff
	rst  $38                                         ; $7650: $ff
	rst  $38                                         ; $7651: $ff
	rst  $38                                         ; $7652: $ff
	rst  $38                                         ; $7653: $ff
	rst  $38                                         ; $7654: $ff
	push de                                          ; $7655: $d5
	xor  a                                           ; $7656: $af
	rst  $38                                         ; $7657: $ff
	rst  $38                                         ; $7658: $ff
	rst  $38                                         ; $7659: $ff
	rst  $38                                         ; $765a: $ff
	rst  $38                                         ; $765b: $ff
	rst  $38                                         ; $765c: $ff
	push af                                          ; $765d: $f5
	cp   a                                           ; $765e: $bf
	rst  $38                                         ; $765f: $ff
	rst  $38                                         ; $7660: $ff
	rst  $38                                         ; $7661: $ff
	rst  $38                                         ; $7662: $ff
	rst  $38                                         ; $7663: $ff
	rst  $38                                         ; $7664: $ff
	db   $fd                                         ; $7665: $fd
	rst  $38                                         ; $7666: $ff
	rst  $38                                         ; $7667: $ff
	rst  $38                                         ; $7668: $ff
	rst  $38                                         ; $7669: $ff
	rst  $38                                         ; $766a: $ff
	rst  $38                                         ; $766b: $ff
	rst  $38                                         ; $766c: $ff
	rst  $38                                         ; $766d: $ff

Jump_004_766e:
	cp   $20                                         ; $766e: $fe $20
	jp   nc, Jump_004_76e7                           ; $7670: $d2 $e7 $76

	push af                                          ; $7673: $f5
	ld   de, $d580                                   ; $7674: $11 $80 $d5
	ld   hl, $d300                                   ; $7677: $21 $00 $d3
	ld   bc, $0100                                   ; $767a: $01 $00 $01
	call MemCopy                                       ; $767d: $cd $a9 $09
	ld   de, $d680                                   ; $7680: $11 $80 $d6
	ld   hl, $d440                                   ; $7683: $21 $40 $d4
	ld   bc, $00c0                                   ; $7686: $01 $c0 $00
	call MemCopy                                       ; $7689: $cd $a9 $09
	ld   de, $d780                                   ; $768c: $11 $80 $d7
	ld   hl, $d540                                   ; $768f: $21 $40 $d5
	ld   bc, $0040                                   ; $7692: $01 $40 $00
	call MemCopy                                       ; $7695: $cd $a9 $09
	ld   a, [sCurrDay]                                  ; $7698: $fa $b0 $af
	dec  a                                           ; $769b: $3d
	ld   h, a                                        ; $769c: $67
	ld   l, $07                                      ; $769d: $2e $07
	call HLequHdivModL                                       ; $769f: $cd $fb $0b
	ld   h, l                                        ; $76a2: $65
	ld   l, $40                                      ; $76a3: $2e $40
	call AequHtimesL                                       ; $76a5: $cd $ac $0b
	ld   bc, $d140                                   ; $76a8: $01 $40 $d1
	add  hl, bc                                      ; $76ab: $09
	ld   de, $d740                                   ; $76ac: $11 $40 $d7
	ld   bc, $0040                                   ; $76af: $01 $40 $00
	call MemCopy                                       ; $76b2: $cd $a9 $09
	pop  af                                          ; $76b5: $f1
	ld   h, $00                                      ; $76b6: $26 $00
	ld   l, a                                        ; $76b8: $6f
	add  hl, hl                                      ; $76b9: $29
	add  hl, hl                                      ; $76ba: $29
	add  hl, hl                                      ; $76bb: $29
	ld   bc, $756e                                   ; $76bc: $01 $6e $75
	add  hl, bc                                      ; $76bf: $09
	ld   de, $d580                                   ; $76c0: $11 $80 $d5
	ld   b, $24                                      ; $76c3: $06 $24

jr_004_76c5:
	push hl                                          ; $76c5: $e5
	ld   c, $08                                      ; $76c6: $0e $08

jr_004_76c8:
	ld   a, [de]                                     ; $76c8: $1a
	and  [hl]                                        ; $76c9: $a6
	ld   [de], a                                     ; $76ca: $12
	inc  de                                          ; $76cb: $13
	ld   a, [de]                                     ; $76cc: $1a
	and  [hl]                                        ; $76cd: $a6
	ld   [de], a                                     ; $76ce: $12
	inc  de                                          ; $76cf: $13
	inc  hl                                          ; $76d0: $23
	dec  c                                           ; $76d1: $0d
	jr   nz, jr_004_76c8                             ; $76d2: $20 $f4

	pop  hl                                          ; $76d4: $e1
	dec  b                                           ; $76d5: $05
	jr   nz, jr_004_76c5                             ; $76d6: $20 $ed

	ld   c, $80                                      ; $76d8: $0e $80
	ld   de, $8580                                   ; $76da: $11 $80 $85
	ld   a, $07                                      ; $76dd: $3e $07
	ld   hl, $d580                                   ; $76df: $21 $80 $d5
	ld   b, $24                                      ; $76e2: $06 $24
	call EnqueueHDMATransfer                                       ; $76e4: $cd $7c $02

Jump_004_76e7:
	ld   a, $0c                                      ; $76e7: $3e $0c
	ld   [wSpriteGroup], a                                  ; $76e9: $ea $1a $c2
	ld   bc, $2430                                   ; $76ec: $01 $30 $24
	ld   a, $5f                                      ; $76ef: $3e $5f
	call LoadSpriteFromMainTable                                       ; $76f1: $cd $16 $0e
	ret                                              ; $76f4: $c9


DayPassedAnimationStep4:
	ld   a, $1f                                      ; $76f5: $3e $1f
	call Call_004_7495                               ; $76f7: $cd $95 $74
	ld   a, [$cc1a]                                  ; $76fa: $fa $1a $cc
	or   a                                           ; $76fd: $b7
	jp   nz, IncDayPassedAnimStep                           ; $76fe: $c2 $b8 $73

	ld   a, [wInGameButtonsPressed]                                  ; $7701: $fa $10 $c2
	and  $03                                         ; $7704: $e6 $03
	jp   nz, IncDayPassedAnimStep                           ; $7706: $c2 $b8 $73

	ld   a, [$c653]                                  ; $7709: $fa $53 $c6
	call Func_1d30                                       ; $770c: $cd $30 $1d
	or   a                                           ; $770f: $b7
	ret  nz                                          ; $7710: $c0

	xor  a                                           ; $7711: $af
	call PlaySong                                       ; $7712: $cd $92 $1a
	jp   IncDayPassedAnimStep                               ; $7715: $c3 $b8 $73


DayPassedAnimationStep5:
	ld   a, $ff                                      ; $7718: $3e $ff
	call Call_004_7495                               ; $771a: $cd $95 $74
	ld   a, [wDayPassedMiscCounterIdx]                                  ; $771d: $fa $19 $cc
	or   a                                           ; $7720: $b7
	jr   nz, jr_004_773b                             ; $7721: $20 $18

	xor  a                                           ; $7723: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $7724: $ea $62 $c3
	ld   a, $40                                      ; $7727: $3e $40
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $7729: $ea $63 $c3
	ld   a, $03                                      ; $772c: $3e $03
	ld   b, $00                                      ; $772e: $06 $00
	ld   hl, wBGPalettes                                   ; $7730: $21 $de $c2
	ld   c, $01                                      ; $7733: $0e $01
	ld   de, $7000                                   ; $7735: $11 $00 $70
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $7738: $cd $48 $07

jr_004_773b:
	ld   hl, wDayPassedMiscCounterIdx                                   ; $773b: $21 $19 $cc
	ld   a, [$cc1a]                                  ; $773e: $fa $1a $cc
	or   a                                           ; $7741: $b7
	jr   z, jr_004_774a                              ; $7742: $28 $06

	ld   a, [hl]                                     ; $7744: $7e
	add  $07                                         ; $7745: $c6 $07
	and  $f8                                         ; $7747: $e6 $f8
	ld   [hl], a                                     ; $7749: $77

jr_004_774a:
	ld   a, [hl]                                     ; $774a: $7e
	cpl                                              ; $774b: $2f
	srl  a                                           ; $774c: $cb $3f
	srl  a                                           ; $774e: $cb $3f
	srl  a                                           ; $7750: $cb $3f
	and  $07                                         ; $7752: $e6 $07
	call SafeSetAudVolForMultipleChannels                                       ; $7754: $cd $e0 $1c
	ld   a, [hl]                                     ; $7757: $7e
	inc  [hl]                                        ; $7758: $34
	cp   $3f                                         ; $7759: $fe $3f
	jr   nc, jr_004_7766                             ; $775b: $30 $09

	and  $07                                         ; $775d: $e6 $07
	ret  nz                                          ; $775f: $c0

	ld   bc, $0040                                   ; $7760: $01 $40 $00
	jp   FadePalettesAndSetRangeToUpdate                                       ; $7763: $c3 $32 $08


jr_004_7766:
	ld   a, $01                                      ; $7766: $3e $01
	ld   hl, $7000                                   ; $7768: $21 $00 $70
	ld   de, wBGPalettes                                   ; $776b: $11 $de $c2
	ld   bc, $0080                                   ; $776e: $01 $80 $00
	call FarMemCopy                                       ; $7771: $cd $b2 $09
	ld   bc, $003f                                   ; $7774: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $7777: $cd $aa $04
	xor  a                                           ; $777a: $af
	call PlaySong                                       ; $777b: $cd $92 $1a
	ld   a, GS_DAY_PERIOD_TRANSITION                                      ; $777e: $3e $38
	ld   [wGameState], a                                  ; $7780: $ea $a0 $c2
	xor  a                                           ; $7783: $af
	ld   [wGameSubstate], a                                  ; $7784: $ea $a1 $c2
	ret                                              ; $7787: $c9


if def(VWF)

DormRoomTileDataBank0_8800h_hook:
	call RLEXorCopy

	ld   bc, $140
	ld   de, $d000+$100
	ld   hl, Gfx_EnDormRoomStatsLabels
	call MemCopy

	ld   bc, $20
	ld   de, $d000+$330
	ld   hl, Gfx_EnDormRoomStatsLabels+$140
	call MemCopy

	ret


DormRoomTileDataBank1_8000h_hook:
	call RLEXorCopy

	ld   a, BANK(Gfx_EnDormRoomDayDetails)
	ld   bc, Gfx_EnDormRoomDayDetails.end-Gfx_EnDormRoomDayDetails
	ld   de, $d140
	ld   hl, Gfx_EnDormRoomDayDetails
	call FarMemCopy

	ret


DormRoomTileDataBank1_8800h_hook:
	call RLEXorCopy

	ld   bc, Gfx_EnDormRoomOpts.end-Gfx_EnDormRoomOpts
	ld   de, $d000
	ld   hl, Gfx_EnDormRoomOpts
	call MemCopy

	ret


DormRoomLayoutHook:
	call DisplayDormRoomButtons

	ld   a, BANK(TileMap_DormRoomStatsLabels)
	ldbc 5, 6
	ld   de, TileMap_DormRoomStatsLabels
	ld   hl, $dc01
	call FarCopyLayout

	ret


Gfx_EnDormRoomStatsLabels::
	INCBIN "en_statsLabels.2bpp"
.end::


Gfx_EnDormRoomOpts:
	INCBIN "en_dormRoomOpts.2bpp"
.end:


TileMap_DormRoomStatsLabels:
	db $90, $91, $92, $93, $a4
	db $94, $95, $96, $97, $a4
	db $98, $99, $9a, $9b, $9c
	db $9d, $9e, $a9, $a9, $a4
	db $9f, $a0, $a1, $a9, $a4
	db $a2, $a3, $b3, $b4, $a4


RomandoShopBank0_8000hHook:
	call RLEXorCopy

	M_FarCall EnLoadRomandoShopCurrPtsTileData
	ret
	

RomandoShopTileMapHook:
	call FarCopyLayout

	ld   a, $c0
	ld   [$d400+$c2], a
	inc  a
	ld   [$d400+$ca], a
	inc  a
	ld   [$d400+$e2], a
	inc  a
	ld   [$d400+$ea], a

	ld   a, BANK(.textLayout)
	ldbc 20, 4
	ld   de, .textLayout
	ld   hl, $d400+$100
	call FarCopyLayout
	ret

.textLayout:
	db $00, $02, $04, $06, $08, $0a, $0c, $0e, $10, $12, $14, $16, $18, $1a, $1c, $1e, $20, $22, $24, $26
	db $01, $03, $05, $07, $09, $0b, $0d, $0f, $11, $13, $15, $17, $19, $1b, $1d, $1f, $21, $23, $25, $27
	db $28, $2a, $2c, $2e, $30, $32, $34, $36, $38, $3a, $3c, $3e, $40, $42, $44, $46, $48, $4a, $4c, $4e
	db $29, $2b, $2d, $2f, $31, $33, $35, $37, $39, $3b, $3d, $3f, $41, $43, $45, $47, $49, $4b, $4d, $4f


RomandoShopLoadDescripTextHook:
	push af
	push de
	ld   bc, $500
	call MemClear
	pop  de
	pop  af
	ld   hl, $d340
	jp   LoadInstantText

endc