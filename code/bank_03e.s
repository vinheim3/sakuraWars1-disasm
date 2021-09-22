; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $03e", ROMX[$4000], BANK[$3e]

GameState12_ResetData::
	ld   a, [wGameSubstate]                                         ; $4000
	rst  JumpTable                                                  ; $4003
	dw .state0
	dw .state1
	dw .state2
	
.state0:
; Turn off LCD and mute song
	call TurnOffLCD                                                 ; $400a

	xor  a                                                          ; $400d
	call PlaySong                                                   ; $400e

; Allow inputs and sticky buttons
	ld   a, $ff                                                     ; $4011
	ld   [wInGameInputsEnabled], a                                  ; $4013
	ld   a, $0c                                                     ; $4016
	ld   [wBaseInitialStickyCounter], a                             ; $4018
	ld   a, $04                                                     ; $401b
	ld   [wBaseRepeatedStickyCounter], a                            ; $401d

; Clear oam and display regs
	call ClearOam                                                   ; $4020
	call ClearDisplayRegsAllowVBlankInt                             ; $4023
	ld   a, LCDCF_OBJON|LCDCF_BGON                                  ; $4026
	ld   [wLCDC], a                                                 ; $4028

; Load tile attrs
	ld   a, $01                                                     ; $402b
	ldh  [rVBK], a                                                  ; $402d
	ld   a, BANK(RleXorTileAttr_ResetData)                          ; $402f
	ld   hl, _SCRN0                                                 ; $4031
if def(VWF)
	M_FarCall EnResetDataHook
else
	ld   de, RleXorTileAttr_ResetData                               ; $4034
	call RLEXorCopy                                                 ; $4037

; Load tile map
	xor  a                                                          ; $403a
	ldh  [rVBK], a                                                  ; $403b
	ld   a, BANK(RleXorTileMap_ResetData)                           ; $403d
	ld   hl, _SCRN0                                                 ; $403f
	ld   de, RleXorTileMap_ResetData                                ; $4042
	call RLEXorCopy                                                 ; $4045
endc

; Load tile data
	ld   a, BANK(RleXorTileData_ResetData)                          ; $4048
	ld   hl, _VRAM                                                  ; $404a
	ld   de, RleXorTileData_ResetData                               ; $404d
	call RLEXorCopy                                                 ; $4050

; No window/scroll
	xor  a                                                          ; $4053
	ld   [wWY], a                                                   ; $4054
	ld   [wWX], a                                                   ; $4057
	ld   [wSCX], a                                                  ; $405a
	ld   [wSCY], a                                                  ; $405d

; Clear anim sprite spec details, and get a new one using anim type 1
	call ClearBaseAnimSpriteSpecDetails                             ; $4060
	ld   a, ASST_1                                                  ; $4063
	ld   hl, $0000                                                  ; $4065
	call ReserveBaseAnimSpriteSpecAndInstance                       ; $4068
	ld   [wResetDataBaseAnimSpriteSpecIdxUsed], a                   ; $406b

; Enable animating it, then load its addr and coords
	call StartAnimatingAnimatedSpriteSpec                           ; $406e

	call HLequAddrOfAnimSpriteSpecDetails                           ; $4071
	ld   a, ASS_MENU_CURSOR                                         ; $4074
	ldbc RESET_DATA_NO_X, $40                                       ; $4076
	ld   de, AnimatedSpriteSpecs                                    ; $4079

	M_FarCall LoadType1NewAnimatedSpriteSpecDetails
	
; Set initial palettes to white, and update all
	ld   a, BANK(Palettes_AllWhite)                                 ; $4090
	ld   hl, Palettes_AllWhite                                      ; $4092
	ld   de, wBGPalettes                                            ; $4095
	ld   bc, NUM_PALETTE_BYTES * 2                                  ; $4098
	call FarMemCopy                                                 ; $409b

	ld   bc, $003f                                                  ; $409e
	call SetBGandOBJPaletteRangesToUpdate                           ; $40a1

; Fade BG palettes from white at 1/8th speed
	xor  a                                                          ; $40a4
	ld   [wStartingColorIdxToLoadCompDataFor], a                    ; $40a5
	ld   a, $40                                                     ; $40a8
	ld   [wNumPaletteColorsToLoadCompDataFor], a                    ; $40aa

	ld   a, $03                                                     ; $40ad
	ld   b, BANK(Palettes_AllWhite)                                 ; $40af
	ld   hl, Palettes_AllWhite                                      ; $40b1
	ld   c, BANK(Palettes_ResetData)                                ; $40b4
	ld   de, Palettes_ResetData                                     ; $40b6
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                ; $40b9

; Turn LCD back on and set max vol
	call TurnOnLCD                                                  ; $40bc
	ld   a, $07                                                     ; $40bf
	call SafeSetAudVolForMultipleChannels                           ; $40c1

; Wait here until fade in done
	M_FarCall FadeBGpals8timesHandlingAnimatedSpriteSpecs
	
; Set BG palettes to the ones we've faded to
	ld   a, BANK(Palettes_ResetData)                                ; $40d8
	ld   hl, Palettes_ResetData                                     ; $40da
	ld   de, wBGPalettes                                            ; $40dd
	ld   bc, NUM_PALETTE_BYTES * 2                                  ; $40e0
	call FarMemCopy                                                 ; $40e3

	ld   bc, $003f                                                  ; $40e6
	call SetBGandOBJPaletteRangesToUpdate                           ; $40e9

; To next substate
	ld   hl, wGameSubstate                                          ; $40ec
	inc  [hl]                                                       ; $40ef
	ret                                                             ; $40f0

.state1:
;
	ld   a, $4c                                      ; $40f1: $3e $4c
	call Func_1d3d                                       ; $40f3: $cd $3d $1d
	or   a                                           ; $40f6: $b7
	jr   nz, :+                             ; $40f7: $20 $05

	ld   a, $4c                                      ; $40f9: $3e $4c
	call PlaySoundEffect                                       ; $40fb: $cd $df $1a

; BC = curr coords
:	ld   a, [wResetDataBaseAnimSpriteSpecIdxUsed]                   ; $40fe
	call HLequAddrOfAnimSpriteSpecDetails                           ; $4101

	M_FarCall BCequType1AnimSpriteSpecInstancesCoords
	
; Check buttons pressed
	ld   a, [wInGameButtonsPressed]                                 ; $4118
	bit  PADB_RIGHT, a                                              ; $411b
	jr   z, .rightNotPressed                                        ; $411d

; Right pressed - end if on 2nd opt, else set X to 2nd opt's
	ld   a, b                                                       ; $411f
	cp   RESET_DATA_NO_X                                            ; $4120
	jp   z, .state1end                                              ; $4122

	ld   b, RESET_DATA_NO_X                                         ; $4125
	jr   .dirsCont                                                  ; $4127

.rightNotPressed:
	bit  PADB_LEFT, a                                               ; $4129
	jr   z, .dirsNotPressed                                         ; $412b

; Left pressed, end if on 1st opt, else set X to 1st opt's
	ld   a, b                                                       ; $412d
	cp   RESET_DATA_YES_X                                           ; $412e
	jr   z, .state1end                                              ; $4130

	ld   b, RESET_DATA_YES_X                                        ; $4132

.dirsCont:
;
	ld   a, $20                                      ; $4134: $3e $20
	call PlaySoundEffect                                       ; $4136: $cd $df $1a
	jr   .dirsBCont                                 ; $4139: $18 $0f

.dirsNotPressed:
	bit  PADB_B, a                                        ; $413b: $cb $4f
	jr   z, .dirsAndBNotPressed                              ; $413d: $28 $2e

; B pressed
;
	ld   a, $22                                      ; $413f: $3e $22
	call PlaySoundEffect                                       ; $4141: $cd $df $1a

; Go to next substate, and set X to 2nd opt's (No)
	ld   hl, wGameSubstate                                          ; $4144
	inc  [hl]                                                       ; $4147
	ld   b, RESET_DATA_NO_X                                         ; $4148

.dirsBCont:
; Reload cursor with new X
	ld   a, [wResetDataBaseAnimSpriteSpecIdxUsed]                   ; $414a
	call HLequAddrOfAnimSpriteSpecDetails                           ; $414d

	ld   a, ASS_MENU_CURSOR                                         ; $4150
	ld   c, $40                                                     ; $4152
	ld   de, AnimatedSpriteSpecs                                    ; $4154

	M_FarCall LoadType1NewAnimatedSpriteSpecDetails
	
	jr   .state1end                                                 ; $416b

.dirsAndBNotPressed:
	bit  PADB_A, a                                                  ; $416d
	jr   z, .state1end                                              ; $416f

; A pressed, A = X
	push bc                                          ; $4171: $c5
	pop  af                                          ; $4172: $f1
	push af                                          ; $4173: $f5

;
	cp   RESET_DATA_YES_X                                         ; $4174: $fe $2c
	jr   z, .br_417c                              ; $4176: $28 $04

	ld   a, $21                                      ; $4178: $3e $21
	jr   :+                                 ; $417a: $18 $02

.br_417c:
	ld   a, $09                                      ; $417c: $3e $09

:	call PlaySoundEffect                                       ; $417e: $cd $df $1a

; If yes, selected, reset save data, then go to next substate
	pop  af                                                         ; $4181
	cp   RESET_DATA_YES_X                                           ; $4182

	M_FarCall "z", ResetSaveData

	ld   hl, wGameSubstate                                          ; $4198
	inc  [hl]                                                       ; $419b

.state1end:
; Set oam based on animated sprite specs
	call ClearOam                                                   ; $419c
	call AnimateAllAnimatedSpriteSpecs                              ; $419f
	ret                                                             ; $41a2

.state2:
; Fade bg palettes to white at 1/8th speed
	xor  a                                                          ; $41a3
	ld   [wStartingColorIdxToLoadCompDataFor], a                    ; $41a4
	ld   a, $40                                                     ; $41a7
	ld   [wNumPaletteColorsToLoadCompDataFor], a                    ; $41a9

	ld   a, $03                                                     ; $41ac
	ld   b, BANK(Palettes_ResetData)                                ; $41ae
	ld   hl, Palettes_ResetData                                     ; $41b0
	ld   c, BANK(Palettes_AllWhite)                                 ; $41b3
	ld   de, Palettes_AllWhite                                      ; $41b5
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                ; $41b8

; Wait here, fading out pals and audio
	M_FarCall FadeBGpalsToWhiteAndAudVol8timesHandlingAnimatedSpriteSpecs

; Turn off LCD and go back to state before this
	call TurnOffLCD                                                 ; $41cf
	
	ld   a, [wResetSaveDataReturnState]                             ; $41d2
	ld   [wGameState], a                                            ; $41d5
	ld   a, [wResetSaveDataReturnSubstate]                          ; $41d8
	ld   [wGameSubstate], a                                         ; $41db
	ret                                                             ; $41de


; HL - state/substate to return to
SetResetDataState::
; Set return state/substate
	ld   a, h                                                       ; $41df
	ld   [wResetSaveDataReturnState], a                             ; $41e0
	ld   a, l                                                       ; $41e3
	ld   [wResetSaveDataReturnSubstate], a                          ; $41e4

; Go to reset save data state
	ld   a, GS_RESET_DATA                                           ; $41e7
	ld   [wGameState], a                                            ; $41e9
	ld   a, $00                                                     ; $41ec
	ld   [wGameSubstate], a                                         ; $41ee
	ret                                                             ; $41f1


GameState15_RedLightGreenLight::
	ld   a, [wGameSubstate]                                  ; $41f2: $fa $a1 $c2
	rst  JumpTable                                         ; $41f5: $df
	ld   b, $42                                      ; $41f6: $06 $42
	ld   l, d                                        ; $41f8: $6a
	ld   b, h                                        ; $41f9: $44
	ld   [hl], a                                     ; $41fa: $77
	ld   b, h                                        ; $41fb: $44
	sub  [hl]                                        ; $41fc: $96
	ld   b, h                                        ; $41fd: $44
	push bc                                          ; $41fe: $c5
	ld   b, h                                        ; $41ff: $44
	pop  hl                                          ; $4200: $e1
	ld   b, h                                        ; $4201: $44
	pop  af                                          ; $4202: $f1
	ld   b, h                                        ; $4203: $44
	ld   d, $45                                      ; $4204: $16 $45
	call TurnOnLCD                                       ; $4206: $cd $09 $09
	ld   a, $07                                      ; $4209: $3e $07
	call SafeSetAudVolForMultipleChannels                                       ; $420b: $cd $e0 $1c
	ld   a, $01                                      ; $420e: $3e $01
	ld   hl, $7000                                   ; $4210: $21 $00 $70
	ld   de, wBGPalettes                                   ; $4213: $11 $de $c2
	ld   bc, $0080                                   ; $4216: $01 $80 $00
	call FarMemCopy                                       ; $4219: $cd $b2 $09
	ld   bc, $003f                                   ; $421c: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $421f: $cd $aa $04
	ld   a, $ff                                      ; $4222: $3e $ff
	ld   [wInGameInputsEnabled], a                                  ; $4224: $ea $0e $c2
	ld   a, $0c                                      ; $4227: $3e $0c
	ld   [wBaseInitialStickyCounter], a                                  ; $4229: $ea $13 $c2
	ld   a, $04                                      ; $422c: $3e $04
	ld   [wBaseRepeatedStickyCounter], a                                  ; $422e: $ea $14 $c2
	call ClearOam                                       ; $4231: $cd $d7 $0d
	call ClearDisplayRegsAllowVBlankInt                                       ; $4234: $cd $59 $0b
	ld   a, $83                                      ; $4237: $3e $83
	ld   [wLCDC], a                                  ; $4239: $ea $03 $c2
	xor  a                                           ; $423c: $af

jr_03e_423d:
	push af                                          ; $423d: $f5
	push af                                          ; $423e: $f5
	ld   a, $1a                                      ; $423f: $3e $1a
	ld   [wFarCallAddr], a                                  ; $4241: $ea $98 $c2
	ld   a, $48                                      ; $4244: $3e $48
	ld   [wFarCallAddr+1], a                                  ; $4246: $ea $99 $c2
	ld   a, $0a                                      ; $4249: $3e $0a
	ld   [wFarCallBank], a                                  ; $424b: $ea $9a $c2
	pop  af                                          ; $424e: $f1
	call FarCall                                       ; $424f: $cd $62 $09
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4252: $cf
	pop  af                                          ; $4253: $f1
	inc  a                                           ; $4254: $3c
	cp   $04                                         ; $4255: $fe $04
	jr   nz, jr_03e_423d                             ; $4257: $20 $e4

	push af                                          ; $4259: $f5
	ld   a, $7a                                      ; $425a: $3e $7a
	ld   [wFarCallAddr], a                                  ; $425c: $ea $98 $c2
	ld   a, $5b                                      ; $425f: $3e $5b
	ld   [wFarCallAddr+1], a                                  ; $4261: $ea $99 $c2
	ld   a, $0a                                      ; $4264: $3e $0a
	ld   [wFarCallBank], a                                  ; $4266: $ea $9a $c2
	pop  af                                          ; $4269: $f1
	call FarCall                                       ; $426a: $cd $62 $09
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $426d: $cf
	ld   a, [wWramBank]                                  ; $426e: $fa $93 $c2
	push af                                          ; $4271: $f5
	ld   a, $03                                      ; $4272: $3e $03
	ld   [wWramBank], a                                  ; $4274: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4277: $e0 $70
	ld   a, $1d                                      ; $4279: $3e $1d
	ld   hl, $d000                                   ; $427b: $21 $00 $d0
	ld   de, $6347                                   ; $427e: $11 $47 $63
	call RLEXorCopy                                       ; $4281: $cd $d2 $09
	ld   c, $81                                      ; $4284: $0e $81
	ld   de, $9000                                   ; $4286: $11 $00 $90
	ld   a, $03                                      ; $4289: $3e $03
	ld   hl, $d000                                   ; $428b: $21 $00 $d0
	ld   b, $40                                      ; $428e: $06 $40
	call EnqueueHDMATransfer                                       ; $4290: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4293: $cf
	ld   c, $81                                      ; $4294: $0e $81
	ld   de, $9400                                   ; $4296: $11 $00 $94
	ld   a, $03                                      ; $4299: $3e $03
	ld   hl, $d400                                   ; $429b: $21 $00 $d4
	ld   b, $40                                      ; $429e: $06 $40
	call EnqueueHDMATransfer                                       ; $42a0: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $42a3: $cf
	ld   a, $1e                                      ; $42a4: $3e $1e
	ld   hl, $d000                                   ; $42a6: $21 $00 $d0
	ld   de, $5ad2                                   ; $42a9: $11 $d2 $5a
	call RLEXorCopy                                       ; $42ac: $cd $d2 $09
	ld   c, $81                                      ; $42af: $0e $81
	ld   de, $9800                                   ; $42b1: $11 $00 $98
	ld   a, $03                                      ; $42b4: $3e $03
	ld   hl, $d000                                   ; $42b6: $21 $00 $d0
	ld   b, $14                                      ; $42b9: $06 $14
	call EnqueueHDMATransfer                                       ; $42bb: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $42be: $cf
	ld   a, $1a                                      ; $42bf: $3e $1a
	ld   hl, $d000                                   ; $42c1: $21 $00 $d0
	ld   de, $4000                                   ; $42c4: $11 $00 $40
	call RLEXorCopy                                       ; $42c7: $cd $d2 $09
	ld   c, $80                                      ; $42ca: $0e $80
	ld   de, $8000                                   ; $42cc: $11 $00 $80
	ld   a, $03                                      ; $42cf: $3e $03
	ld   hl, $d000                                   ; $42d1: $21 $00 $d0
	ld   b, $40                                      ; $42d4: $06 $40
	call EnqueueHDMATransfer                                       ; $42d6: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $42d9: $cf
	ld   c, $80                                      ; $42da: $0e $80
	ld   de, $8400                                   ; $42dc: $11 $00 $84
	ld   a, $03                                      ; $42df: $3e $03
	ld   hl, $d400                                   ; $42e1: $21 $00 $d4
	ld   b, $40                                      ; $42e4: $06 $40
	call EnqueueHDMATransfer                                       ; $42e6: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $42e9: $cf
	ld   a, $17                                      ; $42ea: $3e $17
	ld   hl, $d000                                   ; $42ec: $21 $00 $d0
	ld   de, $7458                                   ; $42ef: $11 $58 $74
	call RLEXorCopy                                       ; $42f2: $cd $d2 $09
	ld   c, $80                                      ; $42f5: $0e $80
	ld   de, $9000                                   ; $42f7: $11 $00 $90
	ld   a, $03                                      ; $42fa: $3e $03
	ld   hl, $d000                                   ; $42fc: $21 $00 $d0
	ld   b, $40                                      ; $42ff: $06 $40
	call EnqueueHDMATransfer                                       ; $4301: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4304: $cf
	ld   c, $80                                      ; $4305: $0e $80
	ld   de, $9400                                   ; $4307: $11 $00 $94
	ld   a, $03                                      ; $430a: $3e $03
	ld   hl, $d400                                   ; $430c: $21 $00 $d4
	ld   b, $40                                      ; $430f: $06 $40
	call EnqueueHDMATransfer                                       ; $4311: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4314: $cf
	ld   a, $1e                                      ; $4315: $3e $1e
	ld   hl, $d000                                   ; $4317: $21 $00 $d0
	ld   de, $4f05                                   ; $431a: $11 $05 $4f
	call RLEXorCopy                                       ; $431d: $cd $d2 $09
	ld   c, $80                                      ; $4320: $0e $80
	ld   de, $9800                                   ; $4322: $11 $00 $98
	ld   a, $03                                      ; $4325: $3e $03
	ld   hl, $d000                                   ; $4327: $21 $00 $d0
	ld   b, $14                                      ; $432a: $06 $14
	call EnqueueHDMATransfer                                       ; $432c: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $432f: $cf
	push af                                          ; $4330: $f5
	ld   a, $34                                      ; $4331: $3e $34
	ld   [wFarCallAddr], a                                  ; $4333: $ea $98 $c2
	ld   a, $49                                      ; $4336: $3e $49
	ld   [wFarCallAddr+1], a                                  ; $4338: $ea $99 $c2
	ld   a, $0a                                      ; $433b: $3e $0a
	ld   [wFarCallBank], a                                  ; $433d: $ea $9a $c2
	pop  af                                          ; $4340: $f1
	call FarCall                                       ; $4341: $cd $62 $09
	ld   b, $04                                      ; $4344: $06 $04
	ld   c, $00                                      ; $4346: $0e $00
	push af                                          ; $4348: $f5
	ld   a, $ba                                      ; $4349: $3e $ba
	ld   [wFarCallAddr], a                                  ; $434b: $ea $98 $c2
	ld   a, $54                                      ; $434e: $3e $54
	ld   [wFarCallAddr+1], a                                  ; $4350: $ea $99 $c2
	ld   a, $0a                                      ; $4353: $3e $0a
	ld   [wFarCallBank], a                                  ; $4355: $ea $9a $c2
	pop  af                                          ; $4358: $f1
	call FarCall                                       ; $4359: $cd $62 $09
	ld   a, $1b                                      ; $435c: $3e $1b
	ld   hl, $7fe8                                   ; $435e: $21 $e8 $7f
	ld   de, wBGPalettes+3*8                                   ; $4361: $11 $f6 $c2
	ld   bc, $0018                                   ; $4364: $01 $18 $00
	call FarMemCopy                                       ; $4367: $cd $b2 $09
	ld   bc, $0c17                                   ; $436a: $01 $17 $0c
	call SetBGandOBJPaletteRangesToUpdate                                       ; $436d: $cd $aa $04
	ld   a, $1e                                      ; $4370: $3e $1e
	ld   hl, $7e41                                   ; $4372: $21 $41 $7e
	ld   de, wOBJPalettes                                   ; $4375: $11 $1e $c3
	ld   bc, $0028                                   ; $4378: $01 $28 $00
	call FarMemCopy                                       ; $437b: $cd $b2 $09
	ld   bc, $2033                                   ; $437e: $01 $33 $20
	call SetBGandOBJPaletteRangesToUpdate                                       ; $4381: $cd $aa $04
	ld   de, $d000                                   ; $4384: $11 $00 $d0
	ld   hl, wBGPalettes                                   ; $4387: $21 $de $c2
	ld   bc, $0080                                   ; $438a: $01 $80 $00
	call MemCopy                                       ; $438d: $cd $a9 $09
	ld   a, $01                                      ; $4390: $3e $01
	ld   hl, $7000                                   ; $4392: $21 $00 $70
	ld   de, wBGPalettes                                   ; $4395: $11 $de $c2
	ld   bc, $0080                                   ; $4398: $01 $80 $00
	call FarMemCopy                                       ; $439b: $cd $b2 $09
	ld   bc, $003f                                   ; $439e: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $43a1: $cd $aa $04
	ld   hl, $d080                                   ; $43a4: $21 $80 $d0
	ld   bc, $02a0                                   ; $43a7: $01 $a0 $02
	call MemClear                                       ; $43aa: $cd $95 $09
	pop  af                                          ; $43ad: $f1
	ld   [wWramBank], a                                  ; $43ae: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $43b1: $e0 $70
	ld   a, $80                                      ; $43b3: $3e $80
	ld   [wRandomNumRange], a                                  ; $43b5: $ea $a5 $c2
	call UpdateSramRandomSeed                                       ; $43b8: $cd $70 $0c
	ld   a, $08                                      ; $43bb: $3e $08
	ld   [$c938], a                                  ; $43bd: $ea $38 $c9
	call Call_03e_4685                               ; $43c0: $cd $85 $46
	xor  a                                           ; $43c3: $af
	ld   [wWY], a                                  ; $43c4: $ea $0a $c2
	ld   [wWX], a                                  ; $43c7: $ea $09 $c2
	ld   [wSCX], a                                  ; $43ca: $ea $07 $c2
	ld   [wSCY], a                                  ; $43cd: $ea $08 $c2
	ld   [$c936], a                                  ; $43d0: $ea $36 $c9
	ld   a, $09                                      ; $43d3: $3e $09
	ld   [$c934], a                                  ; $43d5: $ea $34 $c9
	ld   a, $18                                      ; $43d8: $3e $18
	ld   [$c932], a                                  ; $43da: $ea $32 $c9
	ld   a, $01                                      ; $43dd: $3e $01
	ld   [$c930], a                                  ; $43df: $ea $30 $c9
	ld   [$c931], a                                  ; $43e2: $ea $31 $c9
	ld   a, $00                                      ; $43e5: $3e $00
	ld   [$c933], a                                  ; $43e7: $ea $33 $c9
	ld   a, $04                                      ; $43ea: $3e $04
	ld   [$c92f], a                                  ; $43ec: $ea $2f $c9
	ld   hl, $c939                                   ; $43ef: $21 $39 $c9
	ld   a, $08                                      ; $43f2: $3e $08
	ld   [hl+], a                                    ; $43f4: $22
	ld   [hl], $07                                   ; $43f5: $36 $07
	call ClearBaseAnimSpriteSpecDetails                                       ; $43f7: $cd $c9 $2e
	ld   a, [wWramBank]                                  ; $43fa: $fa $93 $c2
	push af                                          ; $43fd: $f5
	ld   a, $03                                      ; $43fe: $3e $03
	ld   [wWramBank], a                                  ; $4400: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4403: $e0 $70
	xor  a                                           ; $4405: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $4406: $ea $62 $c3
	ld   a, $40                                      ; $4409: $3e $40
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $440b: $ea $63 $c3
	ld   a, $03                                      ; $440e: $3e $03
	ld   b, $01                                      ; $4410: $06 $01
	ld   hl, $7000                                   ; $4412: $21 $00 $70
	ld   c, $00                                      ; $4415: $0e $00
	ld   de, $d000                                   ; $4417: $11 $00 $d0
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $441a: $cd $48 $07
	pop  af                                          ; $441d: $f1
	ld   [wWramBank], a                                  ; $441e: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4421: $e0 $70
	call ClearOam                                       ; $4423: $cd $d7 $0d
	call Call_03e_4589                               ; $4426: $cd $89 $45
	call Call_03e_4578                               ; $4429: $cd $78 $45
	push af                                          ; $442c: $f5
	ld   a, $43                                      ; $442d: $3e $43
	ld   [wFarCallAddr], a                                  ; $442f: $ea $98 $c2
	ld   a, $6a                                      ; $4432: $3e $6a
	ld   [wFarCallAddr+1], a                                  ; $4434: $ea $99 $c2
	ld   a, $11                                      ; $4437: $3e $11
	ld   [wFarCallBank], a                                  ; $4439: $ea $9a $c2
	pop  af                                          ; $443c: $f1
	call FarCall                                       ; $443d: $cd $62 $09
	ld   a, [wWramBank]                                  ; $4440: $fa $93 $c2
	push af                                          ; $4443: $f5
	ld   a, $03                                      ; $4444: $3e $03
	ld   [wWramBank], a                                  ; $4446: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4449: $e0 $70
	ld   a, $00                                      ; $444b: $3e $00
	ld   hl, $d000                                   ; $444d: $21 $00 $d0
	ld   de, wBGPalettes                                   ; $4450: $11 $de $c2
	ld   bc, $0080                                   ; $4453: $01 $80 $00
	call FarMemCopy                                       ; $4456: $cd $b2 $09
	ld   bc, $003f                                   ; $4459: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $445c: $cd $aa $04
	pop  af                                          ; $445f: $f1
	ld   [wWramBank], a                                  ; $4460: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4463: $e0 $70
	ld   hl, wGameSubstate                                   ; $4465: $21 $a1 $c2
	inc  [hl]                                        ; $4468: $34
	ret                                              ; $4469: $c9


	call ClearOam                                       ; $446a: $cd $d7 $0d
	call Call_03e_4589                               ; $446d: $cd $89 $45
	call Call_03e_4578                               ; $4470: $cd $78 $45
	call Call_03e_47f2                               ; $4473: $cd $f2 $47
	ret                                              ; $4476: $c9


	ld   a, $08                                      ; $4477: $3e $08
	ld   [$c934], a                                  ; $4479: $ea $34 $c9
	ld   c, $81                                      ; $447c: $0e $81
	ld   de, $8800                                   ; $447e: $11 $00 $88
	ld   a, $03                                      ; $4481: $3e $03
	ld   hl, $d080                                   ; $4483: $21 $80 $d0
	ld   b, $2a                                      ; $4486: $06 $2a
	call EnqueueHDMATransfer                                       ; $4488: $cd $7c $02
	call Call_03e_4858                               ; $448b: $cd $58 $48
	call Call_03e_4685                               ; $448e: $cd $85 $46
	ld   hl, wGameSubstate                                   ; $4491: $21 $a1 $c2
	inc  [hl]                                        ; $4494: $34
	ret                                              ; $4495: $c9


	ld   hl, $c939                                   ; $4496: $21 $39 $c9
	ld   a, [hl+]                                    ; $4499: $2a
	ld   d, [hl]                                     ; $449a: $56
	ld   e, a                                        ; $449b: $5f
	dec  de                                          ; $449c: $1b
	ld   a, d                                        ; $449d: $7a
	ld   [hl-], a                                    ; $449e: $32
	ld   [hl], e                                     ; $449f: $73
	or   e                                           ; $44a0: $b3
	jr   nz, jr_03e_44a9                             ; $44a1: $20 $06

	ld   a, $07                                      ; $44a3: $3e $07
	ld   [wGameSubstate], a                                  ; $44a5: $ea $a1 $c2
	ret                                              ; $44a8: $c9


jr_03e_44a9:
	call $471e                                       ; $44a9: $cd $1e $47
	ld   a, [wInGameButtonsHeld]                                  ; $44ac: $fa $0f $c2
	bit  4, a                                        ; $44af: $cb $67
	jr   z, jr_03e_44b8                              ; $44b1: $28 $05

	call Call_03e_467f                               ; $44b3: $cd $7f $46
	jr   jr_03e_44b8                                 ; $44b6: $18 $00

jr_03e_44b8:
	call ClearOam                                       ; $44b8: $cd $d7 $0d
	call Call_03e_459d                               ; $44bb: $cd $9d $45
	call Call_03e_4589                               ; $44be: $cd $89 $45
	call Call_03e_4578                               ; $44c1: $cd $78 $45
	ret                                              ; $44c4: $c9


	ld   c, $81                                      ; $44c5: $0e $81
	ld   de, $8800                                   ; $44c7: $11 $00 $88
	ld   a, $03                                      ; $44ca: $3e $03
	ld   hl, $d080                                   ; $44cc: $21 $80 $d0
	ld   b, $2a                                      ; $44cf: $06 $2a
	call EnqueueHDMATransfer                                       ; $44d1: $cd $7c $02
	ld   a, $09                                      ; $44d4: $3e $09
	ld   [$c938], a                                  ; $44d6: $ea $38 $c9
	call Call_03e_4685                               ; $44d9: $cd $85 $46
	ld   hl, wGameSubstate                                   ; $44dc: $21 $a1 $c2
	inc  [hl]                                        ; $44df: $34
	ret                                              ; $44e0: $c9


	call ClearOam                                       ; $44e1: $cd $d7 $0d
	call Call_03e_459d                               ; $44e4: $cd $9d $45
	call Call_03e_4589                               ; $44e7: $cd $89 $45
	call Call_03e_4578                               ; $44ea: $cd $78 $45
	call Call_03e_482d                               ; $44ed: $cd $2d $48
	ret                                              ; $44f0: $c9


	call ClearOam                                       ; $44f1: $cd $d7 $0d
	call Call_03e_4589                               ; $44f4: $cd $89 $45
	call Call_03e_4578                               ; $44f7: $cd $78 $45
	push af                                          ; $44fa: $f5
	ld   a, $aa                                      ; $44fb: $3e $aa
	ld   [wFarCallAddr], a                                  ; $44fd: $ea $98 $c2
	ld   a, $5b                                      ; $4500: $3e $5b
	ld   [wFarCallAddr+1], a                                  ; $4502: $ea $99 $c2
	ld   a, $0a                                      ; $4505: $3e $0a
	ld   [wFarCallBank], a                                  ; $4507: $ea $9a $c2
	pop  af                                          ; $450a: $f1
	call FarCall                                       ; $450b: $cd $62 $09
	or   a                                           ; $450e: $b7
	jr   nz, jr_03e_4515                             ; $450f: $20 $04

	ld   hl, wGameSubstate                                   ; $4511: $21 $a1 $c2
	inc  [hl]                                        ; $4514: $34

jr_03e_4515:
	ret                                              ; $4515: $c9


	ld   a, [wWramBank]                                  ; $4516: $fa $93 $c2
	push af                                          ; $4519: $f5
	ld   a, $03                                      ; $451a: $3e $03
	ld   [wWramBank], a                                  ; $451c: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $451f: $e0 $70
	xor  a                                           ; $4521: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $4522: $ea $62 $c3
	ld   a, $40                                      ; $4525: $3e $40
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $4527: $ea $63 $c3
	ld   a, $03                                      ; $452a: $3e $03
	ld   b, $00                                      ; $452c: $06 $00
	ld   hl, $d000                                   ; $452e: $21 $00 $d0
	ld   c, $01                                      ; $4531: $0e $01
	ld   de, $7000                                   ; $4533: $11 $00 $70
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $4536: $cd $48 $07
	pop  af                                          ; $4539: $f1
	ld   [wWramBank], a                                  ; $453a: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $453d: $e0 $70
	push af                                          ; $453f: $f5
	ld   a, $43                                      ; $4540: $3e $43
	ld   [wFarCallAddr], a                                  ; $4542: $ea $98 $c2
	ld   a, $6a                                      ; $4545: $3e $6a
	ld   [wFarCallAddr+1], a                                  ; $4547: $ea $99 $c2
	ld   a, $11                                      ; $454a: $3e $11
	ld   [wFarCallBank], a                                  ; $454c: $ea $9a $c2
	pop  af                                          ; $454f: $f1
	call FarCall                                       ; $4550: $cd $62 $09
	ld   a, [$c93b]                                  ; $4553: $fa $3b $c9
	ld   [wGameState], a                                  ; $4556: $ea $a0 $c2
	ld   a, [$c93c]                                  ; $4559: $fa $3c $c9
	ld   [wGameSubstate], a                                  ; $455c: $ea $a1 $c2
	ld   c, $02                                      ; $455f: $0e $02
	ld   hl, $c939                                   ; $4561: $21 $39 $c9
	ld   a, [hl+]                                    ; $4564: $2a
	or   [hl]                                        ; $4565: $b6
	jr   z, jr_03e_4573                              ; $4566: $28 $0b

	ld   c, $00                                      ; $4568: $0e $00
	ld   a, [$c933]                                  ; $456a: $fa $33 $c9
	cp   $02                                         ; $456d: $fe $02
	jr   nz, jr_03e_4573                             ; $456f: $20 $02

	ld   c, $01                                      ; $4571: $0e $01

jr_03e_4573:
	ld   a, c                                        ; $4573: $79
	ld   [wBattleWon], a                                  ; $4574: $ea $21 $cb
	ret                                              ; $4577: $c9


Call_03e_4578:
	ld   a, $02                                      ; $4578: $3e $02
	ld   [wSpriteGroup], a                                  ; $457a: $ea $1a $c2
	ld   a, [$c934]                                  ; $457d: $fa $34 $c9
	add  $2f                                         ; $4580: $c6 $2f
	ld   bc, $602a                                   ; $4582: $01 $2a $60
	call LoadSpriteFromMainTable                                       ; $4585: $cd $16 $0e
	ret                                              ; $4588: $c9


Call_03e_4589:
	ld   a, $02                                      ; $4589: $3e $02
	ld   [wSpriteGroup], a                                  ; $458b: $ea $1a $c2
	ld   a, [$c932]                                  ; $458e: $fa $32 $c9
	ld   b, a                                        ; $4591: $47
	ld   c, $2a                                      ; $4592: $0e $2a
	ld   a, [$c92f]                                  ; $4594: $fa $2f $c9
	add  $2f                                         ; $4597: $c6 $2f
	call LoadSpriteFromMainTable                                       ; $4599: $cd $16 $0e
	ret                                              ; $459c: $c9


Call_03e_459d:
	ld   a, [$c933]                                  ; $459d: $fa $33 $c9
	rst  JumpTable                                         ; $45a0: $df
	and  a                                           ; $45a1: $a7
	ld   b, l                                        ; $45a2: $45
	add  hl, hl                                      ; $45a3: $29
	ld   b, [hl]                                     ; $45a4: $46
	ld   d, e                                        ; $45a5: $53
	ld   b, [hl]                                     ; $45a6: $46
	ld   hl, $c936                                   ; $45a7: $21 $36 $c9
	ld   a, [hl]                                     ; $45aa: $7e
	or   a                                           ; $45ab: $b7
	ret  z                                           ; $45ac: $c8

	dec  [hl]                                        ; $45ad: $35
	ld   hl, $c931                                   ; $45ae: $21 $31 $c9
	dec  [hl]                                        ; $45b1: $35
	ret  nz                                          ; $45b2: $c0

	ld   a, [$c934]                                  ; $45b3: $fa $34 $c9
	cp   $09                                         ; $45b6: $fe $09
	jr   nz, jr_03e_45d3                             ; $45b8: $20 $19

	xor  a                                           ; $45ba: $af
	ld   [$c930], a                                  ; $45bb: $ea $30 $c9
	ld   a, $01                                      ; $45be: $3e $01
	ld   [$c931], a                                  ; $45c0: $ea $31 $c9
	ld   a, $01                                      ; $45c3: $3e $01
	ld   [$c933], a                                  ; $45c5: $ea $33 $c9
	ld   a, $0a                                      ; $45c8: $3e $0a
	ld   [$c934], a                                  ; $45ca: $ea $34 $c9
	ld   hl, wGameSubstate                                   ; $45cd: $21 $a1 $c2
	inc  [hl]                                        ; $45d0: $34
	jr   jr_03e_4629                                 ; $45d1: $18 $56

jr_03e_45d3:
	ld   hl, $c930                                   ; $45d3: $21 $30 $c9
	ld   a, [hl]                                     ; $45d6: $7e
	inc  [hl]                                        ; $45d7: $34
	add  a                                           ; $45d8: $87
	ld   c, a                                        ; $45d9: $4f
	ld   b, $00                                      ; $45da: $06 $00
	ld   hl, $461c                                   ; $45dc: $21 $1c $46
	add  hl, bc                                      ; $45df: $09
	ld   a, [hl+]                                    ; $45e0: $2a
	cp   $ff                                         ; $45e1: $fe $ff
	jr   nz, jr_03e_45eb                             ; $45e3: $20 $06

	xor  a                                           ; $45e5: $af
	ld   [$c930], a                                  ; $45e6: $ea $30 $c9
	jr   jr_03e_45d3                                 ; $45e9: $18 $e8

jr_03e_45eb:
	ld   [$c931], a                                  ; $45eb: $ea $31 $c9
	ld   a, [hl]                                     ; $45ee: $7e
	ld   [$c92f], a                                  ; $45ef: $ea $2f $c9
	cp   $00                                         ; $45f2: $fe $00
	jr   nz, jr_03e_461b                             ; $45f4: $20 $25

	ld   a, [$c932]                                  ; $45f6: $fa $32 $c9
	add  $09                                         ; $45f9: $c6 $09
	ld   [$c932], a                                  ; $45fb: $ea $32 $c9
	cp   $60                                         ; $45fe: $fe $60
	jr   nz, jr_03e_461b                             ; $4600: $20 $19

	xor  a                                           ; $4602: $af
	ld   [$c930], a                                  ; $4603: $ea $30 $c9
	ld   a, $01                                      ; $4606: $3e $01
	ld   [$c931], a                                  ; $4608: $ea $31 $c9
	ld   a, $02                                      ; $460b: $3e $02
	ld   [$c933], a                                  ; $460d: $ea $33 $c9
	ld   a, $09                                      ; $4610: $3e $09
	ld   [$c934], a                                  ; $4612: $ea $34 $c9
	ld   hl, wGameSubstate                                   ; $4615: $21 $a1 $c2
	inc  [hl]                                        ; $4618: $34
	jr   jr_03e_4653                                 ; $4619: $18 $38

jr_03e_461b:
	ret                                              ; $461b: $c9


	stop                                             ; $461c: $10 $00
	db   $10                                         ; $461e: $10
	ld   bc, $0210                                   ; $461f: $01 $10 $02
	stop                                             ; $4622: $10 $00
	db   $10                                         ; $4624: $10
	inc  bc                                          ; $4625: $03
	db   $10                                         ; $4626: $10
	ld   [bc], a                                     ; $4627: $02
	rst  $38                                         ; $4628: $ff

jr_03e_4629:
	ld   hl, $c931                                   ; $4629: $21 $31 $c9
	dec  [hl]                                        ; $462c: $35
	ret  nz                                          ; $462d: $c0

	ld   hl, $c930                                   ; $462e: $21 $30 $c9
	ld   a, [hl]                                     ; $4631: $7e
	inc  [hl]                                        ; $4632: $34
	add  a                                           ; $4633: $87
	ld   c, a                                        ; $4634: $4f
	ld   b, $00                                      ; $4635: $06 $00
	ld   hl, $464e                                   ; $4637: $21 $4e $46
	add  hl, bc                                      ; $463a: $09
	ld   a, [hl+]                                    ; $463b: $2a
	cp   $ff                                         ; $463c: $fe $ff
	jr   nz, jr_03e_4646                             ; $463e: $20 $06

	ld   hl, wGameSubstate                                   ; $4640: $21 $a1 $c2
	inc  [hl]                                        ; $4643: $34
	jr   jr_03e_464d                                 ; $4644: $18 $07

jr_03e_4646:
	ld   [$c931], a                                  ; $4646: $ea $31 $c9
	ld   a, [hl]                                     ; $4649: $7e
	ld   [$c92f], a                                  ; $464a: $ea $2f $c9

jr_03e_464d:
	ret                                              ; $464d: $c9


	jr   nz, jr_03e_4656                             ; $464e: $20 $06

	ld   e, $07                                      ; $4650: $1e $07
	rst  $38                                         ; $4652: $ff

jr_03e_4653:
	ld   hl, $c931                                   ; $4653: $21 $31 $c9

jr_03e_4656:
	dec  [hl]                                        ; $4656: $35
	ret  nz                                          ; $4657: $c0

	ld   hl, $c930                                   ; $4658: $21 $30 $c9
	ld   a, [hl]                                     ; $465b: $7e
	inc  [hl]                                        ; $465c: $34
	add  a                                           ; $465d: $87
	ld   c, a                                        ; $465e: $4f
	ld   b, $00                                      ; $465f: $06 $00
	ld   hl, $4678                                   ; $4661: $21 $78 $46
	add  hl, bc                                      ; $4664: $09
	ld   a, [hl+]                                    ; $4665: $2a
	cp   $ff                                         ; $4666: $fe $ff
	jr   nz, jr_03e_4670                             ; $4668: $20 $06

	ld   hl, wGameSubstate                                   ; $466a: $21 $a1 $c2
	inc  [hl]                                        ; $466d: $34
	jr   jr_03e_4677                                 ; $466e: $18 $07

jr_03e_4670:
	ld   [$c931], a                                  ; $4670: $ea $31 $c9
	ld   a, [hl]                                     ; $4673: $7e
	ld   [$c92f], a                                  ; $4674: $ea $2f $c9

jr_03e_4677:
	ret                                              ; $4677: $c9


	ld   [$1004], sp                                 ; $4678: $08 $04 $10
	dec  b                                           ; $467b: $05
	ld   e, $04                                      ; $467c: $1e $04
	rst  $38                                         ; $467e: $ff

Call_03e_467f:
	ld   a, $16                                      ; $467f: $3e $16
	ld   [$c936], a                                  ; $4681: $ea $36 $c9
	ret                                              ; $4684: $c9


Call_03e_4685:
	call InitWideTextBoxDimensions                                       ; $4685: $cd $ec $0f
	call ClearTextBoxDimensionsAndSetDefaultTextStyle                                       ; $4688: $cd $09 $14
	ld   bc, $0e03                                   ; $468b: $01 $03 $0e
	call SetKanjiTextBoxDimensions                                       ; $468e: $cd $24 $14
	ld   bc, $0000                                   ; $4691: $01 $00 $00
	call SetCurrKanjiColAndRowToDrawOn                                       ; $4694: $cd $34 $14
	ld   a, [$c938]                                  ; $4697: $fa $38 $c9
	ld   c, a                                        ; $469a: $4f
	ld   b, $00                                      ; $469b: $06 $00
	ld   hl, $46c7                                   ; $469d: $21 $c7 $46
	add  hl, bc                                      ; $46a0: $09
	ld   a, [hl]                                     ; $46a1: $7e
	add  a                                           ; $46a2: $87
	ld   h, $00                                      ; $46a3: $26 $00
	ld   l, a                                        ; $46a5: $6f
	ld   bc, $46d1                                   ; $46a6: $01 $d1 $46
	add  hl, bc                                      ; $46a9: $09
	ld   a, [hl+]                                    ; $46aa: $2a
	ld   h, [hl]                                     ; $46ab: $66
	ld   l, a                                        ; $46ac: $6f
	ld   bc, $46d1                                   ; $46ad: $01 $d1 $46
	add  hl, bc                                      ; $46b0: $09
	call PopulateKanjiConvoStructForCurrTextBox                                       ; $46b1: $cd $27 $10
	xor  a                                           ; $46b4: $af
	ld   [$c937], a                                  ; $46b5: $ea $37 $c9
	ld   a, $0a                                      ; $46b8: $3e $0a
	ld   [$c935], a                                  ; $46ba: $ea $35 $c9
	ld   a, $04                                      ; $46bd: $3e $04
	ld   [$c93d], a                                  ; $46bf: $ea $3d $c9
	xor  a                                           ; $46c2: $af
	ld   [$c93e], a                                  ; $46c3: $ea $3e $c9
	ret                                              ; $46c6: $c9


	nop                                              ; $46c7: $00
	ld   bc, $0302                                   ; $46c8: $01 $02 $03
	nop                                              ; $46cb: $00
	ld   bc, $0302                                   ; $46cc: $01 $02 $03
	inc  b                                           ; $46cf: $04
	dec  b                                           ; $46d0: $05
	inc  c                                           ; $46d1: $0c
	nop                                              ; $46d2: $00
	jr   jr_03e_46d5                                 ; $46d3: $18 $00

jr_03e_46d5:
	inc  hl                                          ; $46d5: $23
	nop                                              ; $46d6: $00
	jr   nc, jr_03e_46d9                             ; $46d7: $30 $00

jr_03e_46d9:
	ccf                                              ; $46d9: $3f
	nop                                              ; $46da: $00
	ld   c, c                                        ; $46db: $49
	nop                                              ; $46dc: $00
	ld   l, [hl]                                     ; $46dd: $6e
	sbc  c                                           ; $46de: $99
	adc  h                                           ; $46df: $8c
	ld   h, e                                        ; $46e0: $63
	and  c                                           ; $46e1: $a1
	ld   e, d                                        ; $46e2: $5a
	ld   h, c                                        ; $46e3: $61
	db   $fc                                         ; $46e4: $fc
	sbc  e                                           ; $46e5: $9b
	and  c                                           ; $46e6: $a1
	ld   l, [hl]                                     ; $46e7: $6e
	nop                                              ; $46e8: $00
	ld   l, [hl]                                     ; $46e9: $6e
	sbc  c                                           ; $46ea: $99
	adc  h                                           ; $46eb: $8c
	ld   h, e                                        ; $46ec: $63
	and  c                                           ; $46ed: $a1
	ld   e, d                                        ; $46ee: $5a
	ld   h, c                                        ; $46ef: $61
	sbc  e                                           ; $46f0: $9b
	and  c                                           ; $46f1: $a1
	ld   l, [hl]                                     ; $46f2: $6e
	nop                                              ; $46f3: $00
	ld   l, [hl]                                     ; $46f4: $6e
	sbc  c                                           ; $46f5: $99
	adc  h                                           ; $46f6: $8c
	ld   h, e                                        ; $46f7: $63
	and  c                                           ; $46f8: $a1
	ld   e, d                                        ; $46f9: $5a
	di                                               ; $46fa: $f3
	di                                               ; $46fb: $f3
	ld   h, c                                        ; $46fc: $61
	sbc  e                                           ; $46fd: $9b
	and  c                                           ; $46fe: $a1
	ld   l, [hl]                                     ; $46ff: $6e
	nop                                              ; $4700: $00
	ld   l, [hl]                                     ; $4701: $6e
	sbc  c                                           ; $4702: $99
	adc  h                                           ; $4703: $8c
	ld   h, e                                        ; $4704: $63
	and  c                                           ; $4705: $a1
	ld   e, d                                        ; $4706: $5a
	di                                               ; $4707: $f3
	di                                               ; $4708: $f3
	di                                               ; $4709: $f3
	di                                               ; $470a: $f3
	ld   h, c                                        ; $470b: $61
	sbc  e                                           ; $470c: $9b
	and  c                                           ; $470d: $a1
	ld   l, [hl]                                     ; $470e: $6e
	nop                                              ; $470f: $00
	ld   l, e                                        ; $4710: $6b
	sbc  d                                           ; $4711: $9a
	ld   h, [hl]                                     ; $4712: $66
	sub  c                                           ; $4713: $91
	ei                                               ; $4714: $fb
	ld   d, d                                        ; $4715: $52
	ld   e, l                                        ; $4716: $5d
	sub  [hl]                                        ; $4717: $96
	sbc  a                                           ; $4718: $9f
	nop                                              ; $4719: $00
	ld   d, b                                        ; $471a: $50
	ld   [hl], c                                     ; $471b: $71
	ld   a, [$fa00]                                  ; $471c: $fa $00 $fa
	inc  sp                                          ; $471f: $33
	ret                                              ; $4720: $c9


	cp   $00                                         ; $4721: $fe $00
	ret  nz                                          ; $4723: $c0

	call CheckIfReachedLastKanjiIdxInCurrTextBox                                       ; $4724: $cd $71 $14
	or   a                                           ; $4727: $b7
	jr   nz, jr_03e_4759                             ; $4728: $20 $2f

	ld   hl, $c93d                                   ; $472a: $21 $3d $c9
	ld   a, [hl]                                     ; $472d: $7e
	or   a                                           ; $472e: $b7
	jr   z, jr_03e_4734                              ; $472f: $28 $03

	dec  [hl]                                        ; $4731: $35
	jr   nz, jr_03e_4765                             ; $4732: $20 $31

jr_03e_4734:
	ld   a, $09                                      ; $4734: $3e $09
	ld   [$c934], a                                  ; $4736: $ea $34 $c9
	ld   hl, $c935                                   ; $4739: $21 $35 $c9
	dec  [hl]                                        ; $473c: $35
	jr   nz, jr_03e_4765                             ; $473d: $20 $26

	ld   a, $08                                      ; $473f: $3e $08
	ld   [$c934], a                                  ; $4741: $ea $34 $c9
	ld   c, $81                                      ; $4744: $0e $81
	ld   de, $8800                                   ; $4746: $11 $00 $88
	ld   a, $03                                      ; $4749: $3e $03
	ld   hl, $d080                                   ; $474b: $21 $80 $d0
	ld   b, $2a                                      ; $474e: $06 $2a
	call EnqueueHDMATransfer                                       ; $4750: $cd $7c $02
	call Call_03e_4858                               ; $4753: $cd $58 $48
	call Call_03e_4685                               ; $4756: $cd $85 $46

jr_03e_4759:
	ld   hl, $c935                                   ; $4759: $21 $35 $c9
	dec  [hl]                                        ; $475c: $35
	jr   nz, jr_03e_4765                             ; $475d: $20 $06

	call Call_03e_4766                               ; $475f: $cd $66 $47
	jp   HDMAEnqueueNextTextBoxKanji                                       ; $4762: $c3 $55 $10


jr_03e_4765:
	ret                                              ; $4765: $c9


Call_03e_4766:
	ld   a, [$c938]                                  ; $4766: $fa $38 $c9
	add  a                                           ; $4769: $87
	ld   c, a                                        ; $476a: $4f
	ld   b, $00                                      ; $476b: $06 $00
	ld   hl, $4784                                   ; $476d: $21 $84 $47
	add  hl, bc                                      ; $4770: $09
	ld   a, [hl+]                                    ; $4771: $2a
	ld   h, [hl]                                     ; $4772: $66
	ld   l, a                                        ; $4773: $6f
	push hl                                          ; $4774: $e5
	ld   hl, $c937                                   ; $4775: $21 $37 $c9
	ld   a, [hl]                                     ; $4778: $7e
	inc  [hl]                                        ; $4779: $34
	ld   c, a                                        ; $477a: $4f
	ld   b, $00                                      ; $477b: $06 $00
	pop  hl                                          ; $477d: $e1
	add  hl, bc                                      ; $477e: $09
	ld   a, [hl]                                     ; $477f: $7e
	ld   [$c935], a                                  ; $4780: $ea $35 $c9
	ret                                              ; $4783: $c9


	sub  h                                           ; $4784: $94
	ld   b, a                                        ; $4785: $47
	sbc  a                                           ; $4786: $9f
	ld   b, a                                        ; $4787: $47
	xor  c                                           ; $4788: $a9
	ld   b, a                                        ; $4789: $47
	or   l                                           ; $478a: $b5
	ld   b, a                                        ; $478b: $47
	jp   $ce47                                       ; $478c: $c3 $47 $ce


	ld   b, a                                        ; $478f: $47
	ret  c                                           ; $4790: $d8

	ld   b, a                                        ; $4791: $47
	db   $e4                                         ; $4792: $e4
	ld   b, a                                        ; $4793: $47
	ld   a, [bc]                                     ; $4794: $0a
	ld   a, [bc]                                     ; $4795: $0a
	ld   a, [bc]                                     ; $4796: $0a
	ld   a, [bc]                                     ; $4797: $0a
	ld   a, [bc]                                     ; $4798: $0a
	ld   a, [bc]                                     ; $4799: $0a
	ld   a, [bc]                                     ; $479a: $0a
	ld   a, [bc]                                     ; $479b: $0a
	ld   a, [bc]                                     ; $479c: $0a
	ld   a, [bc]                                     ; $479d: $0a
	inc  a                                           ; $479e: $3c
	ld   a, [bc]                                     ; $479f: $0a
	ld   a, [bc]                                     ; $47a0: $0a
	ld   a, [bc]                                     ; $47a1: $0a
	ld   a, [bc]                                     ; $47a2: $0a
	ld   a, [bc]                                     ; $47a3: $0a
	ld   a, [bc]                                     ; $47a4: $0a
	ld   a, [bc]                                     ; $47a5: $0a
	ld   a, [bc]                                     ; $47a6: $0a
	ld   a, [bc]                                     ; $47a7: $0a
	inc  a                                           ; $47a8: $3c
	ld   a, [bc]                                     ; $47a9: $0a
	ld   a, [bc]                                     ; $47aa: $0a
	ld   a, [bc]                                     ; $47ab: $0a
	ld   a, [bc]                                     ; $47ac: $0a
	ld   a, [bc]                                     ; $47ad: $0a
	ld   a, [bc]                                     ; $47ae: $0a
	ld   a, [bc]                                     ; $47af: $0a
	ld   a, [bc]                                     ; $47b0: $0a
	ld   a, [bc]                                     ; $47b1: $0a
	ld   a, [bc]                                     ; $47b2: $0a
	ld   a, [bc]                                     ; $47b3: $0a
	inc  a                                           ; $47b4: $3c
	ld   a, [bc]                                     ; $47b5: $0a
	ld   a, [bc]                                     ; $47b6: $0a
	ld   a, [bc]                                     ; $47b7: $0a
	ld   a, [bc]                                     ; $47b8: $0a
	ld   a, [bc]                                     ; $47b9: $0a
	ld   a, [bc]                                     ; $47ba: $0a
	ld   a, [bc]                                     ; $47bb: $0a
	ld   a, [bc]                                     ; $47bc: $0a
	ld   a, [bc]                                     ; $47bd: $0a
	ld   a, [bc]                                     ; $47be: $0a
	ld   a, [bc]                                     ; $47bf: $0a
	ld   a, [bc]                                     ; $47c0: $0a
	ld   a, [bc]                                     ; $47c1: $0a
	inc  a                                           ; $47c2: $3c
	ld   [$0808], sp                                 ; $47c3: $08 $08 $08
	ld   [$0808], sp                                 ; $47c6: $08 $08 $08
	ld   [$0808], sp                                 ; $47c9: $08 $08 $08
	ld   [$083c], sp                                 ; $47cc: $08 $3c $08
	ld   [$0808], sp                                 ; $47cf: $08 $08 $08
	ld   [$0808], sp                                 ; $47d2: $08 $08 $08
	ld   [$3c08], sp                                 ; $47d5: $08 $08 $3c
	ld   [$0808], sp                                 ; $47d8: $08 $08 $08
	ld   [$0808], sp                                 ; $47db: $08 $08 $08
	ld   [$0808], sp                                 ; $47de: $08 $08 $08
	ld   [$3c08], sp                                 ; $47e1: $08 $08 $3c
	ld   a, [bc]                                     ; $47e4: $0a
	ld   a, [bc]                                     ; $47e5: $0a
	ld   a, [bc]                                     ; $47e6: $0a
	ld   a, [bc]                                     ; $47e7: $0a
	ld   a, [bc]                                     ; $47e8: $0a
	ld   a, [bc]                                     ; $47e9: $0a
	ld   a, [bc]                                     ; $47ea: $0a
	ld   [$0204], sp                                 ; $47eb: $08 $04 $02
	ld   [bc], a                                     ; $47ee: $02
	ld   [bc], a                                     ; $47ef: $02
	ld   [bc], a                                     ; $47f0: $02
	inc  a                                           ; $47f1: $3c

Call_03e_47f2:
	call CheckIfReachedLastKanjiIdxInCurrTextBox                                       ; $47f2: $cd $71 $14
	or   a                                           ; $47f5: $b7
	jr   nz, jr_03e_4815                             ; $47f6: $20 $1d

	push af                                          ; $47f8: $f5
	ld   a, $aa                                      ; $47f9: $3e $aa
	ld   [wFarCallAddr], a                                  ; $47fb: $ea $98 $c2
	ld   a, $5b                                      ; $47fe: $3e $5b
	ld   [wFarCallAddr+1], a                                  ; $4800: $ea $99 $c2
	ld   a, $0a                                      ; $4803: $3e $0a
	ld   [wFarCallBank], a                                  ; $4805: $ea $9a $c2
	pop  af                                          ; $4808: $f1
	call FarCall                                       ; $4809: $cd $62 $09
	or   a                                           ; $480c: $b7
	jr   nz, jr_03e_482c                             ; $480d: $20 $1d

	ld   hl, wGameSubstate                                   ; $480f: $21 $a1 $c2
	inc  [hl]                                        ; $4812: $34
	jr   jr_03e_482c                                 ; $4813: $18 $17

jr_03e_4815:
	ld   a, [wInGameButtonsHeld]                                  ; $4815: $fa $0f $c2
	and  $82                                         ; $4818: $e6 $82
	jr   nz, jr_03e_4823                             ; $481a: $20 $07

	ld   hl, $c93e                                   ; $481c: $21 $3e $c9
	dec  [hl]                                        ; $481f: $35
	bit  7, [hl]                                     ; $4820: $cb $7e
	ret  z                                           ; $4822: $c8

jr_03e_4823:
	ld   a, [sTextSpeedBaseCounter]                                  ; $4823: $fa $b3 $b1
	ld   [$c93e], a                                  ; $4826: $ea $3e $c9
	jp   HDMAEnqueueNextTextBoxKanji                                       ; $4829: $c3 $55 $10


jr_03e_482c:
	ret                                              ; $482c: $c9


Call_03e_482d:
	call CheckIfReachedLastKanjiIdxInCurrTextBox                                       ; $482d: $cd $71 $14
	or   a                                           ; $4830: $b7
	jr   nz, jr_03e_483b                             ; $4831: $20 $08

	ld   hl, $c935                                   ; $4833: $21 $35 $c9
	dec  [hl]                                        ; $4836: $35
	jr   nz, jr_03e_4857                             ; $4837: $20 $1e

	jr   jr_03e_4857                                 ; $4839: $18 $1c

jr_03e_483b:
	ld   a, $0a                                      ; $483b: $3e $0a
	ld   [$c935], a                                  ; $483d: $ea $35 $c9
	ld   a, [wInGameButtonsHeld]                                  ; $4840: $fa $0f $c2
	and  $82                                         ; $4843: $e6 $82
	jr   nz, jr_03e_484e                             ; $4845: $20 $07

	ld   hl, $c93e                                   ; $4847: $21 $3e $c9
	dec  [hl]                                        ; $484a: $35
	bit  7, [hl]                                     ; $484b: $cb $7e
	ret  z                                           ; $484d: $c8

jr_03e_484e:
	ld   a, [sTextSpeedBaseCounter]                                  ; $484e: $fa $b3 $b1
	ld   [$c93e], a                                  ; $4851: $ea $3e $c9
	jp   HDMAEnqueueNextTextBoxKanji                                       ; $4854: $c3 $55 $10


jr_03e_4857:
	ret                                              ; $4857: $c9


Call_03e_4858:
	call GetRandomNumInPreSpecifiedRange                                       ; $4858: $cd $10 $0d
	and  $f0                                         ; $485b: $e6 $f0
	swap a                                           ; $485d: $cb $37
	ld   [$c938], a                                  ; $485f: $ea $38 $c9
	ret                                              ; $4862: $c9


SetRedLightGreenLightState::
	ld   a, h                                        ; $4863: $7c
	ld   [$c93b], a                                  ; $4864: $ea $3b $c9
	ld   a, l                                        ; $4867: $7d
	ld   [$c93c], a                                  ; $4868: $ea $3c $c9
	ld   a, GS_RED_LIGHT_GREEN_LIGHT                                      ; $486b: $3e $15
	ld   [wGameState], a                                  ; $486d: $ea $a0 $c2
	ld   a, $00                                      ; $4870: $3e $00
	ld   [wGameSubstate], a                                  ; $4872: $ea $a1 $c2
	ret                                              ; $4875: $c9


GameState17_Settings::
	ld   a, [wGameSubstate]                                  ; $4876: $fa $a1 $c2
	rst  JumpTable                                         ; $4879: $df
	dw .substate0
	dw .substate1
	dw .substate2


.substate0:
	ld   a, $00                                      ; $4880: $3e $00
	ld   [wSettingsScreenCursorTypeShown], a                                  ; $4882: $ea $7a $c9
	ld   [wSettingsScreenFaceIconShown], a                                  ; $4885: $ea $7b $c9

	M_FarCall Func_0c_724b
	
	or   a                                           ; $489c: $b7
	jr   z, :+                              ; $489d: $28 $05

	ld   a, $01                                      ; $489f: $3e $01
	ld   [wSettingsScreenFaceIconShown], a                                  ; $48a1: $ea $7b $c9

:	M_FarCall Func_0c_726e

	or   a                                           ; $48b8: $b7
	jr   z, :+                              ; $48b9: $28 $05

	ld   a, $01                                      ; $48bb: $3e $01
	ld   [wSettingsScreenCursorTypeShown], a                                  ; $48bd: $ea $7a $c9

:	ld   a, [$c97e]                                  ; $48c0: $fa $7e $c9
	or   a                                           ; $48c3: $b7

	M_FarCall "nz", Func_0a_426b

	call Call_03e_4ead                               ; $48d8: $cd $ad $4e
	ld   a, $ff                                      ; $48db: $3e $ff
	ld   [wInGameInputsEnabled], a                                  ; $48dd: $ea $0e $c2
	ld   a, $0c                                      ; $48e0: $3e $0c
	ld   [wBaseInitialStickyCounter], a                                  ; $48e2: $ea $13 $c2
	ld   a, $04                                      ; $48e5: $3e $04
	ld   [wBaseRepeatedStickyCounter], a                                  ; $48e7: $ea $14 $c2
	call ClearOam                                       ; $48ea: $cd $d7 $0d
	call ClearDisplayRegsAllowVBlankInt                                       ; $48ed: $cd $59 $0b
	ld   a, $83                                      ; $48f0: $3e $83
	ld   [wLCDC], a                                  ; $48f2: $ea $03 $c2
	ld   a, [wWramBank]                                  ; $48f5: $fa $93 $c2
	push af                                          ; $48f8: $f5
	ld   a, $03                                      ; $48f9: $3e $03
	ld   [wWramBank], a                                  ; $48fb: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $48fe: $e0 $70
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4900: $cf

;
	ld   a, $16                                      ; $4901: $3e $16
	ld   hl, $d000                                   ; $4903: $21 $00 $d0
	ld   de, $7701                                   ; $4906: $11 $01 $77
	call RLEXorCopy                                       ; $4909: $cd $d2 $09
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $490c: $cf

;
	ld   c, $81                                      ; $490d: $0e $81
	ld   de, $8800                                   ; $490f: $11 $00 $88
	ld   a, $03                                      ; $4912: $3e $03
	ld   hl, $d000                                   ; $4914: $21 $00 $d0
	ld   b, $60                                      ; $4917: $06 $60
	call EnqueueHDMATransfer                                       ; $4919: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $491c: $cf

;
	ld   c, $81                                      ; $491d: $0e $81
	ld   de, $8e00                                   ; $491f: $11 $00 $8e
	ld   a, $03                                      ; $4922: $3e $03
	ld   hl, $d600                                   ; $4924: $21 $00 $d6
	ld   b, $60                                      ; $4927: $06 $60
	call EnqueueHDMATransfer                                       ; $4929: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $492c: $cf

;
	ld   c, $81                                      ; $492d: $0e $81
	ld   de, $9400                                   ; $492f: $11 $00 $94
	ld   a, $03                                      ; $4932: $3e $03
	ld   hl, $dc00                                   ; $4934: $21 $00 $dc
	ld   b, $40                                      ; $4937: $06 $40
	call EnqueueHDMATransfer                                       ; $4939: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $493c: $cf

;
	ld   a, $1e                                      ; $493d: $3e $1e
	ld   hl, $d000                                   ; $493f: $21 $00 $d0
	ld   de, $7d0d                                   ; $4942: $11 $0d $7d
	call RLEXorCopy                                       ; $4945: $cd $d2 $09
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4948: $cf

;
	ld   c, $80                                      ; $4949: $0e $80
	ld   de, $8000                                   ; $494b: $11 $00 $80
	ld   a, $03                                      ; $494e: $3e $03
	ld   hl, $d000                                   ; $4950: $21 $00 $d0
	ld   b, $20                                      ; $4953: $06 $20
	call EnqueueHDMATransfer                                       ; $4955: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4958: $cf

;
	ld   c, $80                                      ; $4959: $0e $80
	ld   de, $8200                                   ; $495b: $11 $00 $82
	ld   a, $03                                      ; $495e: $3e $03
	ld   hl, $d200                                   ; $4960: $21 $00 $d2
	ld   b, $60                                      ; $4963: $06 $60
	call EnqueueHDMATransfer                                       ; $4965: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4968: $cf

;
	ld   a, $16                                      ; $4969: $3e $16
	ld   hl, $d000                                   ; $496b: $21 $00 $d0
	ld   de, $5793                                   ; $496e: $11 $93 $57
if def(VWF)
	call SettingsTileDataHook
else
	call RLEXorCopy                                       ; $4971: $cd $d2 $09
endc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4974: $cf

;
	ld   c, $80                                      ; $4975: $0e $80
	ld   de, $8800                                   ; $4977: $11 $00 $88
	ld   a, $03                                      ; $497a: $3e $03
	ld   hl, $d000                                   ; $497c: $21 $00 $d0
	ld   b, $60                                      ; $497f: $06 $60
	call EnqueueHDMATransfer                                       ; $4981: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4984: $cf

;
	ld   c, $80                                      ; $4985: $0e $80
	ld   de, $8e00                                   ; $4987: $11 $00 $8e
	ld   a, $03                                      ; $498a: $3e $03
	ld   hl, $d600                                   ; $498c: $21 $00 $d6
	ld   b, $60                                      ; $498f: $06 $60
	call EnqueueHDMATransfer                                       ; $4991: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4994: $cf

;
	ld   c, $80                                      ; $4995: $0e $80
	ld   de, $9400                                   ; $4997: $11 $00 $94
	ld   a, $03                                      ; $499a: $3e $03
	ld   hl, $dc00                                   ; $499c: $21 $00 $dc
	ld   b, $40                                      ; $499f: $06 $40
	call EnqueueHDMATransfer                                       ; $49a1: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $49a4: $cf

;
	ld   a, BANK(RleXorTileMap_Settings)                                      ; $49a5: $3e $1d
	ld   hl, $d800                                   ; $49a7: $21 $00 $d8
	ld   de, RleXorTileMap_Settings                                   ; $49aa: $11 $8f $67
if def(VWF)
	call SettingsTileMapHook
else
	call RLEXorCopy                                       ; $49ad: $cd $d2 $09
endc

;
	call Call_03e_4b7f                               ; $49b0: $cd $7f $4b
	call Call_03e_4b90                               ; $49b3: $cd $90 $4b

;
	ld   c, $80                                      ; $49b6: $0e $80
	ld   de, $9800                                   ; $49b8: $11 $00 $98
	ld   a, $03                                      ; $49bb: $3e $03
	ld   hl, $d800                                   ; $49bd: $21 $00 $d8
	ld   b, $40                                      ; $49c0: $06 $40
	call EnqueueHDMATransfer                                       ; $49c2: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $49c5: $cf

;
	ld   a, $1b                                      ; $49c6: $3e $1b
	ld   hl, $d800                                   ; $49c8: $21 $00 $d8
	ld   de, $7eba                                   ; $49cb: $11 $ba $7e
if def(VWF)
	call SettingsTileAttrHook
else
	call RLEXorCopy                                       ; $49ce: $cd $d2 $09
endc

;
	ld   c, $81                                      ; $49d1: $0e $81
	ld   de, $9800                                   ; $49d3: $11 $00 $98
	ld   a, $03                                      ; $49d6: $3e $03
	ld   hl, $d800                                   ; $49d8: $21 $00 $d8
	ld   b, $40                                      ; $49db: $06 $40
	call EnqueueHDMATransfer                                       ; $49dd: $cd $7c $02

;
	ld   de, $d000                                   ; $49e0: $11 $00 $d0
	ld   hl, $d880                                   ; $49e3: $21 $80 $d8
	ld   bc, $0180                                   ; $49e6: $01 $80 $01
	call MemCopy                                       ; $49e9: $cd $a9 $09
	ld   de, $d400                                   ; $49ec: $11 $00 $d4
	ld   hl, $d880                                   ; $49ef: $21 $80 $d8
	ld   bc, $0180                                   ; $49f2: $01 $80 $01
	call MemCopy                                       ; $49f5: $cd $a9 $09
	call Call_03e_4bbe                               ; $49f8: $cd $be $4b
	pop  af                                          ; $49fb: $f1
	ld   [wWramBank], a                                  ; $49fc: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $49ff: $e0 $70
	xor  a                                           ; $4a01: $af
	ld   [wWY], a                                  ; $4a02: $ea $0a $c2
	ld   [wWX], a                                  ; $4a05: $ea $09 $c2
	ld   [wSCY], a                                  ; $4a08: $ea $08 $c2
	ld   [wSCX], a                                  ; $4a0b: $ea $07 $c2
	ld   [$c970], a                                  ; $4a0e: $ea $70 $c9
	call ClearBaseAnimSpriteSpecDetails                                       ; $4a11: $cd $c9 $2e
	ld   a, $01                                      ; $4a14: $3e $01
	ld   hl, $0000                                   ; $4a16: $21 $00 $00
	call ReserveBaseAnimSpriteSpecAndInstance                                       ; $4a19: $cd $4b $2f
	ld   [$c96e], a                                  ; $4a1c: $ea $6e $c9
	call StartAnimatingAnimatedSpriteSpec                                       ; $4a1f: $cd $14 $30
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $4a22: $cd $76 $30
	call GetSettingsLeftArrowX                               ; $4a25: $cd $d1 $4d
	ld   a, $30                                      ; $4a28: $3e $30
	ld   de, $7180                                   ; $4a2a: $11 $80 $71
	push af                                          ; $4a2d: $f5
	ld   a, $03                                      ; $4a2e: $3e $03
	ld   [wFarCallAddr], a                                  ; $4a30: $ea $98 $c2
	ld   a, $41                                      ; $4a33: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $4a35: $ea $99 $c2
	ld   a, $01                                      ; $4a38: $3e $01
	ld   [wFarCallBank], a                                  ; $4a3a: $ea $9a $c2
	pop  af                                          ; $4a3d: $f1
	call FarCall                                       ; $4a3e: $cd $62 $09
	ld   a, $01                                      ; $4a41: $3e $01
	ld   hl, $0000                                   ; $4a43: $21 $00 $00
	call ReserveBaseAnimSpriteSpecAndInstance                                       ; $4a46: $cd $4b $2f
	ld   [$c96f], a                                  ; $4a49: $ea $6f $c9
	call StartAnimatingAnimatedSpriteSpec                                       ; $4a4c: $cd $14 $30
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $4a4f: $cd $76 $30
	call GetSettingsRightArrowXminus8                               ; $4a52: $cd $df $4d
	ld   a, $31                                      ; $4a55: $3e $31
	ld   de, $7180                                   ; $4a57: $11 $80 $71
	push af                                          ; $4a5a: $f5
	ld   a, $03                                      ; $4a5b: $3e $03
	ld   [wFarCallAddr], a                                  ; $4a5d: $ea $98 $c2
	ld   a, $41                                      ; $4a60: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $4a62: $ea $99 $c2
	ld   a, $01                                      ; $4a65: $3e $01
	ld   [wFarCallBank], a                                  ; $4a67: $ea $9a $c2
	pop  af                                          ; $4a6a: $f1
	call FarCall                                       ; $4a6b: $cd $62 $09
	ld   a, $01                                      ; $4a6e: $3e $01
	ld   hl, $7000                                   ; $4a70: $21 $00 $70
	ld   de, wBGPalettes                                   ; $4a73: $11 $de $c2
	ld   bc, $0080                                   ; $4a76: $01 $80 $00
	call FarMemCopy                                       ; $4a79: $cd $b2 $09
	ld   bc, $003f                                   ; $4a7c: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $4a7f: $cd $aa $04
	xor  a                                           ; $4a82: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $4a83: $ea $62 $c3
	ld   a, $40                                      ; $4a86: $3e $40
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $4a88: $ea $63 $c3
	ld   c, $1e                                      ; $4a8b: $0e $1e
	ld   de, $677c                                   ; $4a8d: $11 $7c $67
	ld   a, $03                                      ; $4a90: $3e $03
	ld   b, $01                                      ; $4a92: $06 $01
	ld   hl, $7000                                   ; $4a94: $21 $00 $70
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $4a97: $cd $48 $07
	call TurnOnLCD                                       ; $4a9a: $cd $09 $09
	xor  a                                           ; $4a9d: $af
	ld   [$c97c], a                                  ; $4a9e: $ea $7c $c9
	ld   hl, $c653                                   ; $4aa1: $21 $53 $c6
	ld   a, [$c97d]                                  ; $4aa4: $fa $7d $c9
	cp   [hl]                                        ; $4aa7: $be
	jr   z, .cont_4ab7                              ; $4aa8: $28 $0d

	call PlaySong                                       ; $4aaa: $cd $92 $1a
	ld   a, $07                                      ; $4aad: $3e $07
	call SafeSetAudVolForMultipleChannels                                       ; $4aaf: $cd $e0 $1c
	ld   a, $01                                      ; $4ab2: $3e $01
	ld   [$c97c], a                                  ; $4ab4: $ea $7c $c9

.cont_4ab7:
	call Call_03e_4ced                               ; $4ab7: $cd $ed $4c
	call Call_03e_4be4                               ; $4aba: $cd $e4 $4b
	push af                                          ; $4abd: $f5
	ld   a, $54                                      ; $4abe: $3e $54
	ld   [wFarCallAddr], a                                  ; $4ac0: $ea $98 $c2
	ld   a, $57                                      ; $4ac3: $3e $57
	ld   [wFarCallAddr+1], a                                  ; $4ac5: $ea $99 $c2
	ld   a, $11                                      ; $4ac8: $3e $11
	ld   [wFarCallBank], a                                  ; $4aca: $ea $9a $c2
	pop  af                                          ; $4acd: $f1
	call FarCall                                       ; $4ace: $cd $62 $09
	ld   a, $1e                                      ; $4ad1: $3e $1e
	ld   hl, $677c                                   ; $4ad3: $21 $7c $67
	ld   de, wBGPalettes                                   ; $4ad6: $11 $de $c2
	ld   bc, $0080                                   ; $4ad9: $01 $80 $00
	call FarMemCopy                                       ; $4adc: $cd $b2 $09
	ld   bc, $003f                                   ; $4adf: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $4ae2: $cd $aa $04
	ld   hl, wGameSubstate                                   ; $4ae5: $21 $a1 $c2
	inc  [hl]                                        ; $4ae8: $34
	ret                                              ; $4ae9: $c9

.substate1:
	call ClearOam                                       ; $4aea: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $4aed: $cd $d3 $2e
	call Call_03e_4bd4                               ; $4af0: $cd $d4 $4b
	call Call_03e_4c23                               ; $4af3: $cd $23 $4c
	call Call_03e_4c66                               ; $4af6: $cd $66 $4c
	call Call_03e_4be4                               ; $4af9: $cd $e4 $4b
	call SetSettingsArrowsCoords                               ; $4afc: $cd $ed $4d
	ld   a, [wInGameButtonsPressed]                                  ; $4aff: $fa $10 $c2
	and  $03                                         ; $4b02: $e6 $03
	jr   z, .substate1done                              ; $4b04: $28 $0c

	call Call_03e_4ed7                               ; $4b06: $cd $d7 $4e
	ld   hl, wGameSubstate                                   ; $4b09: $21 $a1 $c2
	inc  [hl]                                        ; $4b0c: $34
	ld   a, $21                                      ; $4b0d: $3e $21
	call PlaySoundEffect                                       ; $4b0f: $cd $df $1a

.substate1done:
	ret                                              ; $4b12: $c9

.substate2:
	xor  a                                           ; $4b13: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $4b14: $ea $62 $c3
	ld   a, $40                                      ; $4b17: $3e $40
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $4b19: $ea $63 $c3
	ld   b, $1e                                      ; $4b1c: $06 $1e
	ld   hl, $677c                                   ; $4b1e: $21 $7c $67
	ld   a, $03                                      ; $4b21: $3e $03
	ld   c, $01                                      ; $4b23: $0e $01
	ld   de, $7000                                   ; $4b25: $11 $00 $70
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $4b28: $cd $48 $07
	ld   a, [$c97c]                                  ; $4b2b: $fa $7c $c9
	or   a                                           ; $4b2e: $b7
	jr   nz, .br_4b5b                             ; $4b2f: $20 $2a

	push af                                          ; $4b31: $f5
	ld   a, $54                                      ; $4b32: $3e $54
	ld   [wFarCallAddr], a                                  ; $4b34: $ea $98 $c2
	ld   a, $57                                      ; $4b37: $3e $57
	ld   [wFarCallAddr+1], a                                  ; $4b39: $ea $99 $c2
	ld   a, $11                                      ; $4b3c: $3e $11
	ld   [wFarCallBank], a                                  ; $4b3e: $ea $9a $c2
	pop  af                                          ; $4b41: $f1
	call FarCall                                       ; $4b42: $cd $62 $09
	ld   a, $01                                      ; $4b45: $3e $01
	ld   hl, $7000                                   ; $4b47: $21 $00 $70
	ld   de, wBGPalettes                                   ; $4b4a: $11 $de $c2
	ld   bc, $0080                                   ; $4b4d: $01 $80 $00
	call FarMemCopy                                       ; $4b50: $cd $b2 $09
	ld   bc, $003f                                   ; $4b53: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $4b56: $cd $aa $04
	jr   .end                                 ; $4b59: $18 $17

.br_4b5b:
	push af                                          ; $4b5b: $f5
	ld   a, $6f                                      ; $4b5c: $3e $6f
	ld   [wFarCallAddr], a                                  ; $4b5e: $ea $98 $c2
	ld   a, $57                                      ; $4b61: $3e $57
	ld   [wFarCallAddr+1], a                                  ; $4b63: $ea $99 $c2
	ld   a, $11                                      ; $4b66: $3e $11
	ld   [wFarCallBank], a                                  ; $4b68: $ea $9a $c2
	pop  af                                          ; $4b6b: $f1
	call FarCall                                       ; $4b6c: $cd $62 $09
	call TurnOffLCD                                       ; $4b6f: $cd $e3 $08

.end:
	ld   a, [$c96c]                                  ; $4b72: $fa $6c $c9
	ld   [wGameState], a                                  ; $4b75: $ea $a0 $c2
	ld   a, [$c96d]                                  ; $4b78: $fa $6d $c9
	ld   [wGameSubstate], a                                  ; $4b7b: $ea $a1 $c2
	ret                                              ; $4b7e: $c9


Call_03e_4b7f:
	ld   a, [wSettingsScreenCursorTypeShown]                                  ; $4b7f: $fa $7a $c9
	cp   $00                                         ; $4b82: $fe $00
	jr   z, jr_03e_4b8f                              ; $4b84: $28 $09

	ld   hl, $d954                                   ; $4b86: $21 $54 $d9
if def(VWF)
	ld   de, $d963
else
	ld   de, $d964                                   ; $4b89: $11 $64 $d9
endc
	call Call_03e_4ba1                               ; $4b8c: $cd $a1 $4b

jr_03e_4b8f:
	ret                                              ; $4b8f: $c9


Call_03e_4b90:
	ld   a, [wSettingsScreenFaceIconShown]                                  ; $4b90: $fa $7b $c9
	cp   $00                                         ; $4b93: $fe $00
	jr   z, jr_03e_4ba0                              ; $4b95: $28 $09

	ld   hl, $d994                                   ; $4b97: $21 $94 $d9
if def(VWF)
	ld   de, $d9a3
else
	ld   de, $d9a4                                   ; $4b9a: $11 $a4 $d9
endc
	call Call_03e_4ba1                               ; $4b9d: $cd $a1 $4b

jr_03e_4ba0:
	ret                                              ; $4ba0: $c9


Call_03e_4ba1:
	ld   c, $08                                      ; $4ba1: $0e $08

jr_03e_4ba3:
	ld   a, [hl+]                                    ; $4ba3: $2a
	ld   [de], a                                     ; $4ba4: $12
	inc  de                                          ; $4ba5: $13
	dec  c                                           ; $4ba6: $0d
	jr   nz, jr_03e_4ba3                             ; $4ba7: $20 $fa

	ld   bc, $0018                                   ; $4ba9: $01 $18 $00
	add  hl, bc                                      ; $4bac: $09
	push hl                                          ; $4bad: $e5
	ld   hl, $0018                                   ; $4bae: $21 $18 $00
	add  hl, de                                      ; $4bb1: $19
	ld   d, h                                        ; $4bb2: $54
	ld   e, l                                        ; $4bb3: $5d
	pop  hl                                          ; $4bb4: $e1
	ld   c, $08                                      ; $4bb5: $0e $08

jr_03e_4bb7:
	ld   a, [hl+]                                    ; $4bb7: $2a
	ld   [de], a                                     ; $4bb8: $12
	inc  de                                          ; $4bb9: $13
	dec  c                                           ; $4bba: $0d
	jr   nz, jr_03e_4bb7                             ; $4bbb: $20 $fa

	ret                                              ; $4bbd: $c9


Call_03e_4bbe:
	ld   hl, $d003                                   ; $4bbe: $21 $03 $d0
	ld   b, $0c                                      ; $4bc1: $06 $0c

jr_03e_4bc3:
	ld   c, $0e                                      ; $4bc3: $0e $0e

jr_03e_4bc5:
	ld   a, [hl]                                     ; $4bc5: $7e
	and  $f8                                         ; $4bc6: $e6 $f8
	ld   [hl+], a                                    ; $4bc8: $22
	dec  c                                           ; $4bc9: $0d
	jr   nz, jr_03e_4bc5                             ; $4bca: $20 $f9

	ld   de, $0012                                   ; $4bcc: $11 $12 $00
	add  hl, de                                      ; $4bcf: $19
	dec  b                                           ; $4bd0: $05
	jr   nz, jr_03e_4bc3                             ; $4bd1: $20 $f0

	ret                                              ; $4bd3: $c9


Call_03e_4bd4:
	call Call_03e_4c12                               ; $4bd4: $cd $12 $4c
	call Call_03e_4bf4                               ; $4bd7: $cd $f4 $4b
	ld   c, $81                                      ; $4bda: $0e $81
	ld   a, $03                                      ; $4bdc: $3e $03
	ld   b, $04                                      ; $4bde: $06 $04
	call EnqueueHDMATransfer                                       ; $4be0: $cd $7c $02
	ret                                              ; $4be3: $c9


Call_03e_4be4:
	call Call_03e_4c12                               ; $4be4: $cd $12 $4c
	call Call_03e_4c03                               ; $4be7: $cd $03 $4c
	ld   c, $81                                      ; $4bea: $0e $81
	ld   a, $03                                      ; $4bec: $3e $03
	ld   b, $04                                      ; $4bee: $06 $04
	call EnqueueHDMATransfer                                       ; $4bf0: $cd $7c $02
	ret                                              ; $4bf3: $c9


Call_03e_4bf4:
	ld   a, [$c970]                                  ; $4bf4: $fa $70 $c9
	swap a                                           ; $4bf7: $cb $37
	ld   l, a                                        ; $4bf9: $6f
	ld   h, $00                                      ; $4bfa: $26 $00
	add  hl, hl                                      ; $4bfc: $29
	add  hl, hl                                      ; $4bfd: $29
	ld   bc, $d420                                   ; $4bfe: $01 $20 $d4
	add  hl, bc                                      ; $4c01: $09
	ret                                              ; $4c02: $c9


Call_03e_4c03:
	ld   a, [$c970]                                  ; $4c03: $fa $70 $c9
	swap a                                           ; $4c06: $cb $37
	ld   l, a                                        ; $4c08: $6f
	ld   h, $00                                      ; $4c09: $26 $00
	add  hl, hl                                      ; $4c0b: $29
	add  hl, hl                                      ; $4c0c: $29
	ld   bc, $d020                                   ; $4c0d: $01 $20 $d0
	add  hl, bc                                      ; $4c10: $09
	ret                                              ; $4c11: $c9


Call_03e_4c12:
	ld   a, [$c970]                                  ; $4c12: $fa $70 $c9
	swap a                                           ; $4c15: $cb $37
	ld   l, a                                        ; $4c17: $6f
	ld   h, $00                                      ; $4c18: $26 $00
	add  hl, hl                                      ; $4c1a: $29
	add  hl, hl                                      ; $4c1b: $29
	ld   bc, $98a0                                   ; $4c1c: $01 $a0 $98
	add  hl, bc                                      ; $4c1f: $09
	ld   d, h                                        ; $4c20: $54
	ld   e, l                                        ; $4c21: $5d
	ret                                              ; $4c22: $c9


Call_03e_4c23:
	ld   hl, $c970                                   ; $4c23: $21 $70 $c9
	ld   b, $ff                                      ; $4c26: $06 $ff
	ld   a, [wInGameButtonsPressed]                                  ; $4c28: $fa $10 $c2
	bit  6, a                                        ; $4c2b: $cb $77
	jr   nz, jr_03e_4c35                             ; $4c2d: $20 $06

	ld   b, $01                                      ; $4c2f: $06 $01
	bit  7, a                                        ; $4c31: $cb $7f
	jr   z, jr_03e_4c65                              ; $4c33: $28 $30

jr_03e_4c35:
	ld   a, [hl]                                     ; $4c35: $7e

jr_03e_4c36:
	add  b                                           ; $4c36: $80
	cp   $03                                         ; $4c37: $fe $03
	jr   z, jr_03e_4c4f                              ; $4c39: $28 $14

	cp   $04                                         ; $4c3b: $fe $04
	jr   z, jr_03e_4c49                              ; $4c3d: $28 $0a

	cp   $05                                         ; $4c3f: $fe $05
	jr   z, jr_03e_4c5a                              ; $4c41: $28 $17

	cp   $ff                                         ; $4c43: $fe $ff
	jr   nz, jr_03e_4c5c                             ; $4c45: $20 $15

	ld   a, $04                                      ; $4c47: $3e $04

jr_03e_4c49:
	ld   c, a                                        ; $4c49: $4f
	ld   a, [wSettingsScreenFaceIconShown]                                  ; $4c4a: $fa $7b $c9
	jr   jr_03e_4c53                                 ; $4c4d: $18 $04

jr_03e_4c4f:
	ld   c, a                                        ; $4c4f: $4f
	ld   a, [wSettingsScreenCursorTypeShown]                                  ; $4c50: $fa $7a $c9

jr_03e_4c53:
	cp   $00                                         ; $4c53: $fe $00
	ld   a, c                                        ; $4c55: $79
	jr   nz, jr_03e_4c5c                             ; $4c56: $20 $04

	jr   jr_03e_4c36                                 ; $4c58: $18 $dc

jr_03e_4c5a:
	ld   a, $00                                      ; $4c5a: $3e $00

jr_03e_4c5c:
	ld   [hl], a                                     ; $4c5c: $77
	call Call_03e_4e28                               ; $4c5d: $cd $28 $4e
	ld   a, $20                                      ; $4c60: $3e $20
	call PlaySoundEffect                                       ; $4c62: $cd $df $1a

jr_03e_4c65:
	ret                                              ; $4c65: $c9


Call_03e_4c66:
	ld   a, [$c970]                                  ; $4c66: $fa $70 $c9
	ld   c, a                                        ; $4c69: $4f
	ld   b, $00                                      ; $4c6a: $06 $00
	ld   hl, $4ca4                                   ; $4c6c: $21 $a4 $4c
	add  hl, bc                                      ; $4c6f: $09
	ld   e, [hl]                                     ; $4c70: $5e
	ld   hl, $c971                                   ; $4c71: $21 $71 $c9
	add  hl, bc                                      ; $4c74: $09
	ld   a, [wInGameButtonsPressed]                                  ; $4c75: $fa $10 $c2
	bit  5, a                                        ; $4c78: $cb $6f
	jr   z, jr_03e_4c8a                              ; $4c7a: $28 $0e

jr_03e_4c7c:
	dec  [hl]                                        ; $4c7c: $35
	ld   a, [hl]                                     ; $4c7d: $7e
	cp   $ff                                         ; $4c7e: $fe $ff
	jr   nz, jr_03e_4c83                             ; $4c80: $20 $01

	ld   [hl], e                                     ; $4c82: $73

jr_03e_4c83:
	call $4ca9                                       ; $4c83: $cd $a9 $4c
	jr   nz, jr_03e_4c7c                             ; $4c86: $20 $f4

	jr   jr_03e_4c9b                                 ; $4c88: $18 $11

jr_03e_4c8a:
	bit  4, a                                        ; $4c8a: $cb $67
	jr   z, jr_03e_4ca3                              ; $4c8c: $28 $15

	inc  e                                           ; $4c8e: $1c

jr_03e_4c8f:
	inc  [hl]                                        ; $4c8f: $34
	ld   a, [hl]                                     ; $4c90: $7e
	cp   e                                           ; $4c91: $bb
	jr   c, jr_03e_4c96                              ; $4c92: $38 $02

	ld   [hl], $00                                   ; $4c94: $36 $00

jr_03e_4c96:
	call $4ca9                                       ; $4c96: $cd $a9 $4c
	jr   nz, jr_03e_4c8f                             ; $4c99: $20 $f4

jr_03e_4c9b:
	call Call_03e_4cdf                               ; $4c9b: $cd $df $4c
	ld   a, $21                                      ; $4c9e: $3e $21
	call PlaySoundEffect                                       ; $4ca0: $cd $df $1a

jr_03e_4ca3:
	ret                                              ; $4ca3: $c9


	ld   [bc], a                                     ; $4ca4: $02
	ld   bc, $0202                                   ; $4ca5: $01 $02 $02
	ld   bc, $d5e5                                   ; $4ca8: $01 $e5 $d5
	ld   a, [$c970]                                  ; $4cab: $fa $70 $c9
	cp   $03                                         ; $4cae: $fe $03
	jr   nz, jr_03e_4cdb                             ; $4cb0: $20 $29

	ld   a, [hl]                                     ; $4cb2: $7e
	or   a                                           ; $4cb3: $b7
	jr   z, jr_03e_4cdb                              ; $4cb4: $28 $25

	ld   hl, $0188                                   ; $4cb6: $21 $88 $01
	cp   $01                                         ; $4cb9: $fe $01
	jr   z, jr_03e_4cc0                              ; $4cbb: $28 $03

	ld   hl, $018c                                   ; $4cbd: $21 $8c $01

jr_03e_4cc0:
	push af                                          ; $4cc0: $f5
	ld   a, $d7                                      ; $4cc1: $3e $d7
	ld   [wFarCallAddr], a                                  ; $4cc3: $ea $98 $c2
	ld   a, $71                                      ; $4cc6: $3e $71
	ld   [wFarCallAddr+1], a                                  ; $4cc8: $ea $99 $c2
	ld   a, $0c                                      ; $4ccb: $3e $0c
	ld   [wFarCallBank], a                                  ; $4ccd: $ea $9a $c2
	pop  af                                          ; $4cd0: $f1
	call FarCall                                       ; $4cd1: $cd $62 $09
	or   a                                           ; $4cd4: $b7
	jr   nz, jr_03e_4cdb                             ; $4cd5: $20 $04

	or   $ff                                         ; $4cd7: $f6 $ff
	jr   jr_03e_4cdc                                 ; $4cd9: $18 $01

jr_03e_4cdb:
	xor  a                                           ; $4cdb: $af

jr_03e_4cdc:
	pop  de                                          ; $4cdc: $d1
	pop  hl                                          ; $4cdd: $e1
	ret                                              ; $4cde: $c9


Call_03e_4cdf:
	ld   a, [$c970]                                  ; $4cdf: $fa $70 $c9
	rst  JumpTable                                         ; $4ce2: $df
	rlca                                             ; $4ce3: $07
	ld   c, l                                        ; $4ce4: $4d
	ld   [hl+], a                                    ; $4ce5: $22
	ld   c, l                                        ; $4ce6: $4d
	ld   d, h                                        ; $4ce7: $54
	ld   c, l                                        ; $4ce8: $4d
	ld   l, a                                        ; $4ce9: $6f
	ld   c, l                                        ; $4cea: $4d
	adc  d                                           ; $4ceb: $8a
	ld   c, l                                        ; $4cec: $4d

Call_03e_4ced:
	call Call_03e_4d07                               ; $4ced: $cd $07 $4d
	call Call_03e_4d22                               ; $4cf0: $cd $22 $4d
	call Call_03e_4d54                               ; $4cf3: $cd $54 $4d
	ld   a, [wSettingsScreenCursorTypeShown]                                  ; $4cf6: $fa $7a $c9
	cp   $01                                         ; $4cf9: $fe $01
	call z, Call_03e_4d6f                            ; $4cfb: $cc $6f $4d
	ld   a, [wSettingsScreenFaceIconShown]                                  ; $4cfe: $fa $7b $c9
	cp   $01                                         ; $4d01: $fe $01
	call z, Call_03e_4d8a                            ; $4d03: $cc $8a $4d
	ret                                              ; $4d06: $c9


Call_03e_4d07:
	ld   a, [$c971]                                  ; $4d07: $fa $71 $c9
	add  a                                           ; $4d0a: $87
	ld   c, a                                        ; $4d0b: $4f
	ld   b, $00                                      ; $4d0c: $06 $00
	ld   hl, .data                                   ; $4d0e: $21 $1c $4d
	add  hl, bc                                      ; $4d11: $09
	ld   a, [hl+]                                    ; $4d12: $2a
	ld   h, [hl]                                     ; $4d13: $66
	ld   l, a                                        ; $4d14: $6f
if def(VWF)
	ld   de, $98ac
else
	ld   de, $98ad                                   ; $4d15: $11 $ad $98
endc
	call Copy4by2bytes                               ; $4d18: $cd $a3 $4d
	ret                                              ; $4d1b: $c9

.data:
	dw $981c
	dw $9818
	dw $9814


Call_03e_4d22:
	ld   a, [$c972]                                  ; $4d22: $fa $72 $c9
	add  a                                           ; $4d25: $87
	ld   c, a                                        ; $4d26: $4f
	ld   b, $00                                      ; $4d27: $06 $00
	ld   hl, $4d37                                   ; $4d29: $21 $37 $4d
	add  hl, bc                                      ; $4d2c: $09
	ld   a, [hl+]                                    ; $4d2d: $2a
	ld   h, [hl]                                     ; $4d2e: $66
	ld   l, a                                        ; $4d2f: $6f
if def(VWF)
	ld   de, $98ec
else
	ld   de, $98ed                                   ; $4d30: $11 $ed $98
endc
	call Copy4by2bytes                               ; $4d33: $cd $a3 $4d
	ret                                              ; $4d36: $c9


	ld   e, b                                        ; $4d37: $58
	sbc  b                                           ; $4d38: $98
	ld   d, h                                        ; $4d39: $54
	sbc  b                                           ; $4d3a: $98

;
	ld   a, [$c976]                                  ; $4d3b: $fa $76 $c9
	add  a                                           ; $4d3e: $87
	ld   c, a                                        ; $4d3f: $4f
	ld   b, $00                                      ; $4d40: $06 $00
	ld   hl, $4d50                                   ; $4d42: $21 $50 $4d
	add  hl, bc                                      ; $4d45: $09
	ld   a, [hl+]                                    ; $4d46: $2a
	ld   h, [hl]                                     ; $4d47: $66
	ld   l, a                                        ; $4d48: $6f
	ld   de, $990d                                   ; $4d49: $11 $0d $99
	call Copy4by2bytes                               ; $4d4c: $cd $a3 $4d
	ret                                              ; $4d4f: $c9


	call nc, $d898                                   ; $4d50: $d4 $98 $d8
	sbc  b                                           ; $4d53: $98

Call_03e_4d54:
	ld   a, [$c973]                                  ; $4d54: $fa $73 $c9
	add  a                                           ; $4d57: $87
	ld   c, a                                        ; $4d58: $4f
	ld   b, $00                                      ; $4d59: $06 $00
	ld   hl, $4d69                                   ; $4d5b: $21 $69 $4d
	add  hl, bc                                      ; $4d5e: $09
	ld   a, [hl+]                                    ; $4d5f: $2a
	ld   h, [hl]                                     ; $4d60: $66
	ld   l, a                                        ; $4d61: $6f
if def(VWF)
	ld   de, $992c
else
	ld   de, $992d                                   ; $4d62: $11 $2d $99
endc
	call Copy4by2bytes                               ; $4d65: $cd $a3 $4d
	ret                                              ; $4d68: $c9


	sbc  h                                           ; $4d69: $9c
	sbc  b                                           ; $4d6a: $98
	sbc  b                                           ; $4d6b: $98
	sbc  b                                           ; $4d6c: $98
	sub  h                                           ; $4d6d: $94
	sbc  b                                           ; $4d6e: $98

Call_03e_4d6f:
	ld   a, [$c974]                                  ; $4d6f: $fa $74 $c9
	add  a                                           ; $4d72: $87
	ld   c, a                                        ; $4d73: $4f
	ld   b, $00                                      ; $4d74: $06 $00
	ld   hl, $4d84                                   ; $4d76: $21 $84 $4d
	add  hl, bc                                      ; $4d79: $09
	ld   a, [hl+]                                    ; $4d7a: $2a
	ld   h, [hl]                                     ; $4d7b: $66
	ld   l, a                                        ; $4d7c: $6f
	ld   de, $996d                                   ; $4d7d: $11 $6d $99
	call Copy4by2bytes                               ; $4d80: $cd $a3 $4d
	ret                                              ; $4d83: $c9


	call c, $1c98                                    ; $4d84: $dc $98 $1c
	sbc  c                                           ; $4d87: $99
	ld   e, h                                        ; $4d88: $5c
	sbc  c                                           ; $4d89: $99

Call_03e_4d8a:
	ld   a, [$c975]                                  ; $4d8a: $fa $75 $c9
	add  a                                           ; $4d8d: $87
	ld   c, a                                        ; $4d8e: $4f
	ld   b, $00                                      ; $4d8f: $06 $00
	ld   hl, $4d9f                                   ; $4d91: $21 $9f $4d
	add  hl, bc                                      ; $4d94: $09
	ld   a, [hl+]                                    ; $4d95: $2a
	ld   h, [hl]                                     ; $4d96: $66
	ld   l, a                                        ; $4d97: $6f
	ld   de, $99ad                                   ; $4d98: $11 $ad $99
	call Copy4by2bytes                               ; $4d9b: $cd $a3 $4d
	ret                                              ; $4d9e: $c9


	inc  d                                           ; $4d9f: $14
	sbc  c                                           ; $4da0: $99
	jr   @-$65                                       ; $4da1: $18 $99


; DE - dest addr
; HL - src addr
Copy4by2bytes:
; Copy 4 bytes from src to dest
	xor  a                                                          ; $4da3
	ldh  [rVBK], a                                                  ; $4da4
	ld   bc, $0004                                                  ; $4da6
	ld   a, $00                                                     ; $4da9
	call HBlankFarMemCopy                                           ; $4dab

; DE to point to the next row
	push hl                                                         ; $4dae
	ld   hl, SCRN_VX_B-4                                            ; $4daf
	add  hl, de                                                     ; $4db2
	ld   e, l                                                       ; $4db3
	ld   d, h                                                       ; $4db4
	pop  hl                                                         ; $4db5

; Same with HL
	ld   bc, SCRN_VX_B-4                                            ; $4db6
	add  hl, bc                                                     ; $4db9

; Copy a 2nd set of 4 bytes
	ld   bc, $0004                                                  ; $4dba
	ld   a, $00                                                     ; $4dbd
	call HBlankFarMemCopy                                           ; $4dbf
	ret                                                             ; $4dc2


Call_03e_4dc3:
	ld   a, [$c970]                                  ; $4dc3: $fa $70 $c9
	ld   e, a                                        ; $4dc6: $5f
	ld   d, $00                                      ; $4dc7: $16 $00
	add  hl, de                                      ; $4dc9: $19
	ld   b, [hl]                                     ; $4dca: $46
	swap a                                           ; $4dcb: $cb $37
	add  $30                                         ; $4dcd: $c6 $30
	ld   c, a                                        ; $4dcf: $4f
	ret                                              ; $4dd0: $c9


GetSettingsLeftArrowX:
	push hl                                          ; $4dd1: $e5
	ld   hl, $4dda                                   ; $4dd2: $21 $da $4d
	call Call_03e_4dc3                               ; $4dd5: $cd $c3 $4d
	pop  hl                                          ; $4dd8: $e1
	ret                                              ; $4dd9: $c9

if def(VWF)
	db $62, $62, $62
else
	ld   l, a                                        ; $4dda: $6f
	ld   l, a                                        ; $4ddb: $6f
	ld   l, a                                        ; $4ddc: $6f
endc
	ld   l, [hl]                                     ; $4ddd: $6e
	ld   l, c                                        ; $4dde: $69


GetSettingsRightArrowXminus8:
	push hl                                          ; $4ddf: $e5
	ld   hl, $4de8                                   ; $4de0: $21 $e8 $4d
	call Call_03e_4dc3                               ; $4de3: $cd $c3 $4d
	pop  hl                                          ; $4de6: $e1
	ret                                              ; $4de7: $c9

if def(VWF)
	db $7e, $7e, $7e
else
	ld   a, c                                        ; $4de8: $79
	ld   a, c                                        ; $4de9: $79
	ld   a, c                                        ; $4dea: $79
endc
	ld   a, e                                        ; $4deb: $7b
	ld   a, a                                        ; $4dec: $7f


SetSettingsArrowsCoords:
	ld   a, [$c96e]                                  ; $4ded: $fa $6e $c9
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $4df0: $cd $76 $30
	call GetSettingsLeftArrowX                               ; $4df3: $cd $d1 $4d

	M_FarCall SetType1AnimSpriteSpecInstanceCoords

	ld   a, [$c96f]                                  ; $4e0a: $fa $6f $c9
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $4e0d: $cd $76 $30
	call GetSettingsRightArrowXminus8                               ; $4e10: $cd $df $4d

	M_FarCall SetType1AnimSpriteSpecInstanceCoords
	ret                                              ; $4e27: $c9


Call_03e_4e28:
	xor  a                                           ; $4e28: $af
	ld   [$c977], a                                  ; $4e29: $ea $77 $c9
	call Call_03e_4e63                               ; $4e2c: $cd $63 $4e
	ld   b, $01                                      ; $4e2f: $06 $01
	ld   c, $01                                      ; $4e31: $0e $01
	call FadePalettesAndSetRangeToUpdate                                       ; $4e33: $cd $32 $08
	ld   a, $10                                      ; $4e36: $3e $10
	ld   [$c979], a                                  ; $4e38: $ea $79 $c9
	ld   a, $0f                                      ; $4e3b: $3e $0f
	ld   [$c978], a                                  ; $4e3d: $ea $78 $c9
	ret                                              ; $4e40: $c9


	ld   hl, $c979                                   ; $4e41: $21 $79 $c9
	dec  [hl]                                        ; $4e44: $35
	jr   nz, jr_03e_4e62                             ; $4e45: $20 $1b

	ld   a, $01                                      ; $4e47: $3e $01
	ld   [hl], a                                     ; $4e49: $77
	ld   b, $01                                      ; $4e4a: $06 $01
	ld   c, $01                                      ; $4e4c: $0e $01
	call FadePalettesAndSetRangeToUpdate                                       ; $4e4e: $cd $32 $08
	ld   hl, $c978                                   ; $4e51: $21 $78 $c9
	dec  [hl]                                        ; $4e54: $35
	jr   nz, jr_03e_4e62                             ; $4e55: $20 $0b

	ld   a, $10                                      ; $4e57: $3e $10
	ld   [hl], a                                     ; $4e59: $77
	ld   a, $08                                      ; $4e5a: $3e $08
	ld   [$c979], a                                  ; $4e5c: $ea $79 $c9
	call Call_03e_4e63                               ; $4e5f: $cd $63 $4e

jr_03e_4e62:
	ret                                              ; $4e62: $c9


Call_03e_4e63:
	ld   hl, $c977                                   ; $4e63: $21 $77 $c9
	ld   a, [hl]                                     ; $4e66: $7e
	xor  $01                                         ; $4e67: $ee $01
	ld   [hl], a                                     ; $4e69: $77
	jr   nz, jr_03e_4e71                             ; $4e6a: $20 $05

	call Call_03e_4e75                               ; $4e6c: $cd $75 $4e
	jr   jr_03e_4e74                                 ; $4e6f: $18 $03

jr_03e_4e71:
	call Call_03e_4e8f                               ; $4e71: $cd $8f $4e

jr_03e_4e74:
	ret                                              ; $4e74: $c9


Call_03e_4e75:
	ld   a, $01                                      ; $4e75: $3e $01
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $4e77: $ea $62 $c3
	ld   a, $01                                      ; $4e7a: $3e $01
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $4e7c: $ea $63 $c3
	ld   c, $1e                                      ; $4e7f: $0e $1e
	ld   de, $677c                                   ; $4e81: $11 $7c $67
	ld   hl, $0028                                   ; $4e84: $21 $28 $00
	add  hl, de                                      ; $4e87: $19
	ld   b, c                                        ; $4e88: $41
	ld   a, $04                                      ; $4e89: $3e $04
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $4e8b: $cd $48 $07
	ret                                              ; $4e8e: $c9


Call_03e_4e8f:
	ld   a, $01                                      ; $4e8f: $3e $01
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $4e91: $ea $62 $c3
	ld   a, $01                                      ; $4e94: $3e $01
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $4e96: $ea $63 $c3
	ld   c, $1e                                      ; $4e99: $0e $1e
	ld   de, $677c                                   ; $4e9b: $11 $7c $67
	push de                                          ; $4e9e: $d5
	ld   hl, $0028                                   ; $4e9f: $21 $28 $00
	add  hl, de                                      ; $4ea2: $19
	ld   d, h                                        ; $4ea3: $54
	ld   e, l                                        ; $4ea4: $5d
	pop  hl                                          ; $4ea5: $e1
	ld   b, c                                        ; $4ea6: $41
	ld   a, $04                                      ; $4ea7: $3e $04
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $4ea9: $cd $48 $07
	ret                                              ; $4eac: $c9


Call_03e_4ead:
	ld   a, [sTextSpeedBaseCounter]                                  ; $4ead: $fa $b3 $b1
	call Call_03e_4f19                               ; $4eb0: $cd $19 $4f
	ld   [$c971], a                                  ; $4eb3: $ea $71 $c9
	ld   a, [$b1b4]                                  ; $4eb6: $fa $b4 $b1
	ld   [$c972], a                                  ; $4eb9: $ea $72 $c9
	ld   a, [$b1b5]                                  ; $4ebc: $fa $b5 $b1
	xor  $01                                         ; $4ebf: $ee $01
	ld   [$c976], a                                  ; $4ec1: $ea $76 $c9
	ld   a, [$b1b6]                                  ; $4ec4: $fa $b6 $b1
	ld   [$c973], a                                  ; $4ec7: $ea $73 $c9
	ld   a, [$b1b7]                                  ; $4eca: $fa $b7 $b1
	ld   [$c974], a                                  ; $4ecd: $ea $74 $c9
	ld   a, [$b1b8]                                  ; $4ed0: $fa $b8 $b1
	ld   [$c975], a                                  ; $4ed3: $ea $75 $c9
	ret                                              ; $4ed6: $c9


Call_03e_4ed7:
	ld   a, [$c971]                                  ; $4ed7: $fa $71 $c9
	call Call_03e_4f28                               ; $4eda: $cd $28 $4f
	ld   [sTextSpeedBaseCounter], a                                  ; $4edd: $ea $b3 $b1
	ld   a, [$c972]                                  ; $4ee0: $fa $72 $c9
	ld   [$b1b4], a                                  ; $4ee3: $ea $b4 $b1
	ld   a, [$c976]                                  ; $4ee6: $fa $76 $c9
	xor  $01                                         ; $4ee9: $ee $01
	ld   [$b1b5], a                                  ; $4eeb: $ea $b5 $b1
	ld   a, [$c973]                                  ; $4eee: $fa $73 $c9
	ld   [$b1b6], a                                  ; $4ef1: $ea $b6 $b1
	ld   a, [$c974]                                  ; $4ef4: $fa $74 $c9
	ld   [$b1b7], a                                  ; $4ef7: $ea $b7 $b1
	ld   a, [$c975]                                  ; $4efa: $fa $75 $c9
	ld   [$b1b8], a                                  ; $4efd: $ea $b8 $b1
	ld   a, [$c97e]                                  ; $4f00: $fa $7e $c9
	or   a                                           ; $4f03: $b7

	M_FarCall "nz", Func_0a_4255
	ret                                              ; $4f18: $c9


Call_03e_4f19:
	ld   c, $02                                      ; $4f19: $0e $02
	or   a                                           ; $4f1b: $b7
	jr   z, jr_03e_4f26                              ; $4f1c: $28 $08

	ld   c, $00                                      ; $4f1e: $0e $00
	cp   $09                                         ; $4f20: $fe $09
	jr   z, jr_03e_4f26                              ; $4f22: $28 $02

	ld   c, $01                                      ; $4f24: $0e $01

jr_03e_4f26:
	ld   a, c                                        ; $4f26: $79
	ret                                              ; $4f27: $c9


Call_03e_4f28:
	ld   c, $00                                      ; $4f28: $0e $00
	cp   $02                                         ; $4f2a: $fe $02
	jr   z, jr_03e_4f36                              ; $4f2c: $28 $08

	ld   c, $09                                      ; $4f2e: $0e $09
	cp   $00                                         ; $4f30: $fe $00
	jr   z, jr_03e_4f36                              ; $4f32: $28 $02

	ld   c, $05                                      ; $4f34: $0e $05

jr_03e_4f36:
	ld   a, c                                        ; $4f36: $79
	ret                                              ; $4f37: $c9


SetSettingsState::
	ld   [$c97d], a                                  ; $4f38: $ea $7d $c9
	ld   a, b                                        ; $4f3b: $78
	ld   [$c97e], a                                  ; $4f3c: $ea $7e $c9
	ld   a, h                                        ; $4f3f: $7c
	ld   [$c96c], a                                  ; $4f40: $ea $6c $c9
	ld   a, l                                        ; $4f43: $7d
	ld   [$c96d], a                                  ; $4f44: $ea $6d $c9
	ld   a, GS_SETTINGS                                      ; $4f47: $3e $17
	ld   [wGameState], a                                  ; $4f49: $ea $a0 $c2
	ld   a, $00                                      ; $4f4c: $3e $00
	ld   [wGameSubstate], a                                  ; $4f4e: $ea $a1 $c2
	ret                                              ; $4f51: $c9


GameState18_MiniGameResults::
	ld   a, [wGameSubstate]                                  ; $4f52: $fa $a1 $c2
	rst  JumpTable                                         ; $4f55: $df
	dw MiniGameResultsSubstate0
	dw $50d9
	dw $513a
	dw $5100
	dw $5154
	dw $5196
	dw $520b


MiniGameResultsSubstate0:
	call Call_03e_5470                               ; $4f64: $cd $70 $54
	push af                                          ; $4f67: $f5
	ld   a, $4e                                      ; $4f68: $3e $4e
	ld   [wFarCallAddr], a                                  ; $4f6a: $ea $98 $c2
	ld   a, $42                                      ; $4f6d: $3e $42
	ld   [wFarCallAddr+1], a                                  ; $4f6f: $ea $99 $c2
	ld   a, $0a                                      ; $4f72: $3e $0a
	ld   [wFarCallBank], a                                  ; $4f74: $ea $9a $c2
	pop  af                                          ; $4f77: $f1
	call FarCall                                       ; $4f78: $cd $62 $09
	ld   a, l                                        ; $4f7b: $7d
	ld   [$c994], a                                  ; $4f7c: $ea $94 $c9
	ld   a, h                                        ; $4f7f: $7c
	ld   [$c995], a                                  ; $4f80: $ea $95 $c9
	call Call_03e_5432                               ; $4f83: $cd $32 $54
	call Call_03e_54a7                               ; $4f86: $cd $a7 $54
	call TurnOffLCD                                       ; $4f89: $cd $e3 $08
	ld   a, $00                                      ; $4f8c: $3e $00
	call SafeSetAudVolForMultipleChannels                                       ; $4f8e: $cd $e0 $1c
	ld   a, $ff                                      ; $4f91: $3e $ff
	ld   [wInGameInputsEnabled], a                                  ; $4f93: $ea $0e $c2
	ld   a, $0c                                      ; $4f96: $3e $0c
	ld   [wBaseInitialStickyCounter], a                                  ; $4f98: $ea $13 $c2
	ld   a, $04                                      ; $4f9b: $3e $04
	ld   [wBaseRepeatedStickyCounter], a                                  ; $4f9d: $ea $14 $c2
	call ClearOam                                       ; $4fa0: $cd $d7 $0d
	call ClearDisplayRegsAllowVBlankInt                                       ; $4fa3: $cd $59 $0b
	ld   a, $03                                      ; $4fa6: $3e $03
	ld   [wLCDC], a                                  ; $4fa8: $ea $03 $c2
	ld   a, [wWramBank]                                  ; $4fab: $fa $93 $c2
	push af                                          ; $4fae: $f5
	ld   a, $03                                      ; $4faf: $3e $03
	ld   [wWramBank], a                                  ; $4fb1: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4fb4: $e0 $70

;
	ld   a, $01                                      ; $4fb6: $3e $01
	ldh  [rVBK], a                                   ; $4fb8: $e0 $4f
	ld   a, $1e                                      ; $4fba: $3e $1e
	ld   hl, $9800                                   ; $4fbc: $21 $00 $98
	ld   de, $4af5                                   ; $4fbf: $11 $f5 $4a
	call RLEXorCopy                                       ; $4fc2: $cd $d2 $09

;
	xor  a                                           ; $4fc5: $af
	ldh  [rVBK], a                                   ; $4fc6: $e0 $4f
	ld   a, $19                                      ; $4fc8: $3e $19
if def(VWF)
	M_FarCall MiniGameResultsHook
else
	ld   hl, $9800                                   ; $4fca: $21 $00 $98
	ld   de, $7dc5                                   ; $4fcd: $11 $c5 $7d
	call RLEXorCopy                                       ; $4fd0: $cd $d2 $09

;
	ld   a, $18                                      ; $4fd3: $3e $18
	ld   hl, $8000                                   ; $4fd5: $21 $00 $80
	ld   de, $46f7                                   ; $4fd8: $11 $f7 $46
	call RLEXorCopy                                       ; $4fdb: $cd $d2 $09
endc

;
	call Func_3e_530f                                       ; $4fde: $cd $0f $53
	call Call_03e_5332                               ; $4fe1: $cd $32 $53
	ld   hl, $9960                                   ; $4fe4: $21 $60 $99
	ld   de, $d000                                   ; $4fe7: $11 $00 $d0
	ld   bc, $00a0                                   ; $4fea: $01 $a0 $00
	call MemCopy                                       ; $4fed: $cd $a9 $09
	pop  af                                          ; $4ff0: $f1
	ld   [wWramBank], a                                  ; $4ff1: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4ff4: $e0 $70
	call Call_03e_53aa                               ; $4ff6: $cd $aa $53
	xor  a                                           ; $4ff9: $af
	ld   [wWY], a                                  ; $4ffa: $ea $0a $c2
	ld   [wWX], a                                  ; $4ffd: $ea $09 $c2
	ld   [wSCY], a                                  ; $5000: $ea $08 $c2
	ld   [wSCX], a                                  ; $5003: $ea $07 $c2
	ld   [$c9a4], a                                  ; $5006: $ea $a4 $c9
	call ClearBaseAnimSpriteSpecDetails                                       ; $5009: $cd $c9 $2e
	ld   a, [$c9a1]                                  ; $500c: $fa $a1 $c9
	or   a                                           ; $500f: $b7
	jr   z, jr_03e_503c                              ; $5010: $28 $2a

	ld   a, $01                                      ; $5012: $3e $01
	ld   hl, $0000                                   ; $5014: $21 $00 $00
	call ReserveBaseAnimSpriteSpecAndInstance                                       ; $5017: $cd $4b $2f
	call StartAnimatingAnimatedSpriteSpec                                       ; $501a: $cd $14 $30
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $501d: $cd $76 $30
	ld   bc, $ff0f                                   ; $5020: $01 $0f $ff
	ld   a, $32                                      ; $5023: $3e $32
	ld   de, $7180                                   ; $5025: $11 $80 $71
	push af                                          ; $5028: $f5
	ld   a, $03                                      ; $5029: $3e $03
	ld   [wFarCallAddr], a                                  ; $502b: $ea $98 $c2
	ld   a, $41                                      ; $502e: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $5030: $ea $99 $c2
	ld   a, $01                                      ; $5033: $3e $01
	ld   [wFarCallBank], a                                  ; $5035: $ea $9a $c2
	pop  af                                          ; $5038: $f1
	call FarCall                                       ; $5039: $cd $62 $09

jr_03e_503c:
	ld   a, $01                                      ; $503c: $3e $01
	ld   hl, $0000                                   ; $503e: $21 $00 $00
	call ReserveBaseAnimSpriteSpecAndInstance                                       ; $5041: $cd $4b $2f
	ld   [$c9a2], a                                  ; $5044: $ea $a2 $c9
	call StartAnimatingAnimatedSpriteSpec                                       ; $5047: $cd $14 $30
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $504a: $cd $76 $30
	ld   bc, $0000                                   ; $504d: $01 $00 $00
	ld   a, $00                                      ; $5050: $3e $00
	ld   de, $7180                                   ; $5052: $11 $80 $71
	push af                                          ; $5055: $f5
	ld   a, $03                                      ; $5056: $3e $03
	ld   [wFarCallAddr], a                                  ; $5058: $ea $98 $c2
	ld   a, $41                                      ; $505b: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $505d: $ea $99 $c2
	ld   a, $01                                      ; $5060: $3e $01
	ld   [wFarCallBank], a                                  ; $5062: $ea $9a $c2
	pop  af                                          ; $5065: $f1
	call FarCall                                       ; $5066: $cd $62 $09
	ld   a, $01                                      ; $5069: $3e $01
	ld   hl, $7000                                   ; $506b: $21 $00 $70
	ld   de, wBGPalettes                                   ; $506e: $11 $de $c2
	ld   bc, $0080                                   ; $5071: $01 $80 $00
	call FarMemCopy                                       ; $5074: $cd $b2 $09
	ld   bc, $003f                                   ; $5077: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $507a: $cd $aa $04
	xor  a                                           ; $507d: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $507e: $ea $62 $c3
	ld   a, $40                                      ; $5081: $3e $40
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $5083: $ea $63 $c3
	ld   a, $03                                      ; $5086: $3e $03
	ld   b, $01                                      ; $5088: $06 $01
	ld   hl, $7000                                   ; $508a: $21 $00 $70
	ld   c, $1e                                      ; $508d: $0e $1e
	ld   de, $67fc                                   ; $508f: $11 $fc $67
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $5092: $cd $48 $07
	call TurnOnLCD                                       ; $5095: $cd $09 $09
	ld   a, $0f                                      ; $5098: $3e $0f
	call PlaySong                                       ; $509a: $cd $92 $1a
	ld   a, $07                                      ; $509d: $3e $07
	call SafeSetAudVolForMultipleChannels                                       ; $509f: $cd $e0 $1c
	push af                                          ; $50a2: $f5
	ld   a, $54                                      ; $50a3: $3e $54
	ld   [wFarCallAddr], a                                  ; $50a5: $ea $98 $c2
	ld   a, $57                                      ; $50a8: $3e $57
	ld   [wFarCallAddr+1], a                                  ; $50aa: $ea $99 $c2
	ld   a, $11                                      ; $50ad: $3e $11
	ld   [wFarCallBank], a                                  ; $50af: $ea $9a $c2
	pop  af                                          ; $50b2: $f1
	call FarCall                                       ; $50b3: $cd $62 $09
	ld   a, $1e                                      ; $50b6: $3e $1e
	ld   hl, $67fc                                   ; $50b8: $21 $fc $67
	ld   de, wBGPalettes                                   ; $50bb: $11 $de $c2
	ld   bc, $0080                                   ; $50be: $01 $80 $00
	call FarMemCopy                                       ; $50c1: $cd $b2 $09
	ld   bc, $003f                                   ; $50c4: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $50c7: $cd $aa $04
	ld   a, $1e                                      ; $50ca: $3e $1e
	ld   [$c99b], a                                  ; $50cc: $ea $9b $c9
	ld   a, $04                                      ; $50cf: $3e $04
	ld   [$c99a], a                                  ; $50d1: $ea $9a $c9
	ld   hl, wGameSubstate                                   ; $50d4: $21 $a1 $c2
	inc  [hl]                                        ; $50d7: $34
	ret                                              ; $50d8: $c9


	call ClearOam                                       ; $50d9: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $50dc: $cd $d3 $2e
	ld   hl, $c99b                                   ; $50df: $21 $9b $c9
	dec  [hl]                                        ; $50e2: $35
	jr   z, jr_03e_50f1                              ; $50e3: $28 $0c

	ld   a, [wInGameButtonsPressed]                                  ; $50e5: $fa $10 $c2
	bit  0, a                                        ; $50e8: $cb $47
	jr   z, jr_03e_50ff                              ; $50ea: $28 $13

	ld   a, $21                                      ; $50ec: $3e $21
	call PlaySoundEffect                                       ; $50ee: $cd $df $1a

jr_03e_50f1:
	ld   hl, wGameSubstate                                   ; $50f1: $21 $a1 $c2
	inc  [hl]                                        ; $50f4: $34
	ld   a, $06                                      ; $50f5: $3e $06
	ld   [$c99b], a                                  ; $50f7: $ea $9b $c9
	ld   a, $04                                      ; $50fa: $3e $04
	ld   [$c99a], a                                  ; $50fc: $ea $9a $c9

jr_03e_50ff:
	ret                                              ; $50ff: $c9


	call ClearOam                                       ; $5100: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $5103: $cd $d3 $2e
	ld   a, [wInGameButtonsPressed]                                  ; $5106: $fa $10 $c2
	bit  0, a                                        ; $5109: $cb $47
	jr   z, jr_03e_511f                              ; $510b: $28 $12

	ld   a, $21                                      ; $510d: $3e $21
	call PlaySoundEffect                                       ; $510f: $cd $df $1a
	ld   hl, wGameSubstate                                   ; $5112: $21 $a1 $c2
	inc  [hl]                                        ; $5115: $34
	ld   a, $02                                      ; $5116: $3e $02
	ld   [$c99b], a                                  ; $5118: $ea $9b $c9
	xor  a                                           ; $511b: $af
	ld   [$c9a3], a                                  ; $511c: $ea $a3 $c9

jr_03e_511f:
	ret                                              ; $511f: $c9


	call ClearOam                                       ; $5120: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $5123: $cd $d3 $2e
	ld   hl, $c996                                   ; $5126: $21 $96 $c9
	ld   a, $92                                      ; $5129: $3e $92
	ld   [hl+], a                                    ; $512b: $22
	ld   [hl], $c9                                   ; $512c: $36 $c9
	ld   hl, $c998                                   ; $512e: $21 $98 $c9
	ld   a, $90                                      ; $5131: $3e $90
	ld   [hl+], a                                    ; $5133: $22
	ld   [hl], $c9                                   ; $5134: $36 $c9
	call Call_03e_5273                               ; $5136: $cd $73 $52
	ret                                              ; $5139: $c9


	call ClearOam                                       ; $513a: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $513d: $cd $d3 $2e
	ld   hl, $c996                                   ; $5140: $21 $96 $c9
	ld   a, $90                                      ; $5143: $3e $90
	ld   [hl+], a                                    ; $5145: $22
	ld   [hl], $c9                                   ; $5146: $36 $c9
	ld   hl, $c998                                   ; $5148: $21 $98 $c9
	ld   a, $94                                      ; $514b: $3e $94
	ld   [hl+], a                                    ; $514d: $22
	ld   [hl], $c9                                   ; $514e: $36 $c9
	call Call_03e_5273                               ; $5150: $cd $73 $52
	ret                                              ; $5153: $c9


	call ClearOam                                       ; $5154: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $5157: $cd $d3 $2e
	ld   hl, $c99b                                   ; $515a: $21 $9b $c9
	dec  [hl]                                        ; $515d: $35
	jr   nz, jr_03e_5195                             ; $515e: $20 $35

	ld   a, $02                                      ; $5160: $3e $02
	ld   [hl], a                                     ; $5162: $77
	call $54e5                                       ; $5163: $cd $e5 $54
	ld   hl, $c9a3                                   ; $5166: $21 $a3 $c9
	ld   a, [hl]                                     ; $5169: $7e
	inc  [hl]                                        ; $516a: $34
	cp   $03                                         ; $516b: $fe $03
	jr   nz, jr_03e_5195                             ; $516d: $20 $26

	ld   a, [$c9a2]                                  ; $516f: $fa $a2 $c9
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $5172: $cd $76 $30
	ld   bc, $3e47                                   ; $5175: $01 $47 $3e
	ld   a, $33                                      ; $5178: $3e $33
	ld   de, $7180                                   ; $517a: $11 $80 $71
	push af                                          ; $517d: $f5
	ld   a, $03                                      ; $517e: $3e $03
	ld   [wFarCallAddr], a                                  ; $5180: $ea $98 $c2
	ld   a, $41                                      ; $5183: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $5185: $ea $99 $c2
	ld   a, $01                                      ; $5188: $3e $01
	ld   [wFarCallBank], a                                  ; $518a: $ea $9a $c2
	pop  af                                          ; $518d: $f1
	call FarCall                                       ; $518e: $cd $62 $09
	ld   hl, wGameSubstate                                   ; $5191: $21 $a1 $c2
	inc  [hl]                                        ; $5194: $34

jr_03e_5195:
	ret                                              ; $5195: $c9


	ld   a, [wInGameButtonsPressed]                                  ; $5196: $fa $10 $c2
	bit  6, a                                        ; $5199: $cb $77
	jr   z, jr_03e_51ae                              ; $519b: $28 $11

	ld   a, [$c9a4]                                  ; $519d: $fa $a4 $c9
	cp   $01                                         ; $51a0: $fe $01
	jp   z, Jump_03e_5204                            ; $51a2: $ca $04 $52

	ld   a, $20                                      ; $51a5: $3e $20
	call PlaySoundEffect                                       ; $51a7: $cd $df $1a
	ld   a, $01                                      ; $51aa: $3e $01
	jr   jr_03e_51df                                 ; $51ac: $18 $31

jr_03e_51ae:
	bit  7, a                                        ; $51ae: $cb $7f
	jr   z, jr_03e_51c0                              ; $51b0: $28 $0e

	ld   a, [$c9a4]                                  ; $51b2: $fa $a4 $c9
	or   a                                           ; $51b5: $b7
	jr   z, jr_03e_5204                              ; $51b6: $28 $4c

	ld   a, $20                                      ; $51b8: $3e $20
	call PlaySoundEffect                                       ; $51ba: $cd $df $1a
	xor  a                                           ; $51bd: $af
	jr   jr_03e_51df                                 ; $51be: $18 $1f

jr_03e_51c0:
	bit  1, a                                        ; $51c0: $cb $4f
	jr   z, jr_03e_51d0                              ; $51c2: $28 $0c

	ld   a, $22                                      ; $51c4: $3e $22
	call PlaySoundEffect                                       ; $51c6: $cd $df $1a
	ld   hl, wGameSubstate                                   ; $51c9: $21 $a1 $c2
	inc  [hl]                                        ; $51cc: $34
	xor  a                                           ; $51cd: $af
	jr   jr_03e_51df                                 ; $51ce: $18 $0f

jr_03e_51d0:
	bit  0, a                                        ; $51d0: $cb $47
	jr   z, jr_03e_5204                              ; $51d2: $28 $30

	ld   a, $21                                      ; $51d4: $3e $21
	call PlaySoundEffect                                       ; $51d6: $cd $df $1a
	ld   hl, wGameSubstate                                   ; $51d9: $21 $a1 $c2
	inc  [hl]                                        ; $51dc: $34
	jr   jr_03e_5204                                 ; $51dd: $18 $25

jr_03e_51df:
	ld   [$c9a4], a                                  ; $51df: $ea $a4 $c9
	ld   bc, $3e47                                   ; $51e2: $01 $47 $3e
	or   a                                           ; $51e5: $b7
	jr   z, jr_03e_51ea                              ; $51e6: $28 $02

	ld   c, $37                                      ; $51e8: $0e $37

jr_03e_51ea:
	ld   a, [$c9a2]                                  ; $51ea: $fa $a2 $c9
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $51ed: $cd $76 $30
	push af                                          ; $51f0: $f5
	ld   a, $2f                                      ; $51f1: $3e $2f
	ld   [wFarCallAddr], a                                  ; $51f3: $ea $98 $c2
	ld   a, $41                                      ; $51f6: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $51f8: $ea $99 $c2
	ld   a, $01                                      ; $51fb: $3e $01
	ld   [wFarCallBank], a                                  ; $51fd: $ea $9a $c2
	pop  af                                          ; $5200: $f1
	call FarCall                                       ; $5201: $cd $62 $09

Jump_03e_5204:
jr_03e_5204:
	call ClearOam                                       ; $5204: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $5207: $cd $d3 $2e
	ret                                              ; $520a: $c9


	xor  a                                           ; $520b: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $520c: $ea $62 $c3
	ld   a, $40                                      ; $520f: $3e $40
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $5211: $ea $63 $c3
	ld   a, $03                                      ; $5214: $3e $03
	ld   b, $1e                                      ; $5216: $06 $1e
	ld   hl, $67fc                                   ; $5218: $21 $fc $67
	ld   c, $01                                      ; $521b: $0e $01
	ld   de, $7000                                   ; $521d: $11 $00 $70
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $5220: $cd $48 $07
	push af                                          ; $5223: $f5
	ld   a, $6f                                      ; $5224: $3e $6f
	ld   [wFarCallAddr], a                                  ; $5226: $ea $98 $c2
	ld   a, $57                                      ; $5229: $3e $57
	ld   [wFarCallAddr+1], a                                  ; $522b: $ea $99 $c2
	ld   a, $11                                      ; $522e: $3e $11
	ld   [wFarCallBank], a                                  ; $5230: $ea $9a $c2
	pop  af                                          ; $5233: $f1
	call FarCall                                       ; $5234: $cd $62 $09
	call TurnOffLCD                                       ; $5237: $cd $e3 $08
	ld   hl, $c994                                   ; $523a: $21 $94 $c9
	ld   a, [hl+]                                    ; $523d: $2a
	ld   h, [hl]                                     ; $523e: $66
	ld   l, a                                        ; $523f: $6f
	push af                                          ; $5240: $f5
	ld   a, $3c                                      ; $5241: $3e $3c
	ld   [wFarCallAddr], a                                  ; $5243: $ea $98 $c2
	ld   a, $42                                      ; $5246: $3e $42
	ld   [wFarCallAddr+1], a                                  ; $5248: $ea $99 $c2
	ld   a, $0a                                      ; $524b: $3e $0a
	ld   [wFarCallBank], a                                  ; $524d: $ea $9a $c2
	pop  af                                          ; $5250: $f1
	call FarCall                                       ; $5251: $cd $62 $09
	ld   a, [$c97f]                                  ; $5254: $fa $7f $c9
	ld   [wGameState], a                                  ; $5257: $ea $a0 $c2
	ld   a, [$c980]                                  ; $525a: $fa $80 $c9
	ld   [wGameSubstate], a                                  ; $525d: $ea $a1 $c2
	ld   a, [$c9a4]                                  ; $5260: $fa $a4 $c9
	or   a                                           ; $5263: $b7
	jr   z, jr_03e_5272                              ; $5264: $28 $0c

	ld   a, [$c981]                                  ; $5266: $fa $81 $c9
	ld   [wGameState], a                                  ; $5269: $ea $a0 $c2
	ld   a, [$c982]                                  ; $526c: $fa $82 $c9
	ld   [wGameSubstate], a                                  ; $526f: $ea $a1 $c2

jr_03e_5272:
	ret                                              ; $5272: $c9


Call_03e_5273:
	ld   a, [wInGameButtonsHeld]                                  ; $5273: $fa $0f $c2
	and  $03                                         ; $5276: $e6 $03
	jr   nz, jr_03e_527f                             ; $5278: $20 $05

	ld   hl, $c99b                                   ; $527a: $21 $9b $c9
	dec  [hl]                                        ; $527d: $35
	ret  nz                                          ; $527e: $c0

jr_03e_527f:
	ld   a, $01                                      ; $527f: $3e $01
	call PlaySoundEffect                                       ; $5281: $cd $df $1a
	ld   a, $06                                      ; $5284: $3e $06
	ld   [$c99b], a                                  ; $5286: $ea $9b $c9
	ld   hl, $c996                                   ; $5289: $21 $96 $c9
	ld   a, [hl+]                                    ; $528c: $2a
	ld   h, [hl]                                     ; $528d: $66
	ld   l, a                                        ; $528e: $6f
	ld   a, [hl+]                                    ; $528f: $2a
	ld   h, [hl]                                     ; $5290: $66
	ld   l, a                                        ; $5291: $6f
	or   h                                           ; $5292: $b4
	jr   nz, jr_03e_529f                             ; $5293: $20 $0a

	ld   a, $78                                      ; $5295: $3e $78
	ld   [$c99b], a                                  ; $5297: $ea $9b $c9
	ld   hl, wGameSubstate                                   ; $529a: $21 $a1 $c2
	inc  [hl]                                        ; $529d: $34
	ret                                              ; $529e: $c9


jr_03e_529f:
	call Call_03e_5417                               ; $529f: $cd $17 $54
	ld   hl, $c9a0                                   ; $52a2: $21 $a0 $c9
	ld   [hl-], a                                    ; $52a5: $32
	pop  af                                          ; $52a6: $f1
	ld   [hl-], a                                    ; $52a7: $32
	pop  af                                          ; $52a8: $f1
	ld   [hl-], a                                    ; $52a9: $32
	pop  af                                          ; $52aa: $f1
	ld   [hl-], a                                    ; $52ab: $32
	pop  af                                          ; $52ac: $f1
	ld   [hl], a                                     ; $52ad: $77
	ld   c, $04                                      ; $52ae: $0e $04
	ld   b, $00                                      ; $52b0: $06 $00
	add  hl, bc                                      ; $52b2: $09

jr_03e_52b3:
	ld   a, [hl-]                                    ; $52b3: $3a
	or   a                                           ; $52b4: $b7
	jr   nz, jr_03e_52ba                             ; $52b5: $20 $03

	dec  c                                           ; $52b7: $0d
	jr   jr_03e_52b3                                 ; $52b8: $18 $f9

jr_03e_52ba:
	ld   a, c                                        ; $52ba: $79
	ld   [$c99a], a                                  ; $52bb: $ea $9a $c9
	add  a                                           ; $52be: $87
	ld   c, a                                        ; $52bf: $4f
	ld   b, $00                                      ; $52c0: $06 $00
	ld   hl, $52fb                                   ; $52c2: $21 $fb $52
	add  hl, bc                                      ; $52c5: $09
	ld   a, [hl+]                                    ; $52c6: $2a
	ld   d, [hl]                                     ; $52c7: $56
	ld   e, a                                        ; $52c8: $5f
	ld   hl, $c996                                   ; $52c9: $21 $96 $c9
	ld   a, [hl+]                                    ; $52cc: $2a
	ld   h, [hl]                                     ; $52cd: $66
	ld   l, a                                        ; $52ce: $6f
	push hl                                          ; $52cf: $e5
	ld   a, [hl+]                                    ; $52d0: $2a
	ld   h, [hl]                                     ; $52d1: $66
	ld   l, a                                        ; $52d2: $6f
	add  hl, de                                      ; $52d3: $19
	pop  de                                          ; $52d4: $d1
	ld   a, l                                        ; $52d5: $7d
	ld   [de], a                                     ; $52d6: $12
	inc  de                                          ; $52d7: $13
	ld   a, h                                        ; $52d8: $7c
	ld   [de], a                                     ; $52d9: $12
	ld   hl, $5305                                   ; $52da: $21 $05 $53
	add  hl, bc                                      ; $52dd: $09
	ld   a, [hl+]                                    ; $52de: $2a
	ld   d, [hl]                                     ; $52df: $56
	ld   e, a                                        ; $52e0: $5f
	ld   hl, $c998                                   ; $52e1: $21 $98 $c9
	ld   a, [hl+]                                    ; $52e4: $2a
	ld   h, [hl]                                     ; $52e5: $66
	ld   l, a                                        ; $52e6: $6f
	push hl                                          ; $52e7: $e5
	ld   a, [hl+]                                    ; $52e8: $2a
	ld   h, [hl]                                     ; $52e9: $66
	ld   l, a                                        ; $52ea: $6f
	add  hl, de                                      ; $52eb: $19
	jr   nc, jr_03e_52f1                             ; $52ec: $30 $03

	ld   hl, $ffff                                   ; $52ee: $21 $ff $ff

jr_03e_52f1:
	pop  de                                          ; $52f1: $d1
	ld   a, l                                        ; $52f2: $7d
	ld   [de], a                                     ; $52f3: $12
	inc  de                                          ; $52f4: $13
	ld   a, h                                        ; $52f5: $7c
	ld   [de], a                                     ; $52f6: $12
	call Call_03e_53aa                               ; $52f7: $cd $aa $53
	ret                                              ; $52fa: $c9


	ld   c, l                                        ; $52fb: $4d
	ld   [$fdd5], a                                  ; $52fc: $ea $d5 $fd
	ret                                              ; $52ff: $c9


	rst  $38                                         ; $5300: $ff
	ei                                               ; $5301: $fb
	rst  $38                                         ; $5302: $ff
	rst  $38                                         ; $5303: $ff
	rst  $38                                         ; $5304: $ff
	or   e                                           ; $5305: $b3
	dec  d                                           ; $5306: $15
	dec  hl                                          ; $5307: $2b
	ld   [bc], a                                     ; $5308: $02
	scf                                              ; $5309: $37
	nop                                              ; $530a: $00
	dec  b                                           ; $530b: $05
	nop                                              ; $530c: $00
	db $01, $00 
	
	
Func_3e_530f:
	ld   a, [$c984] ; $530f: $fa $84 $c9
	ld   c, a                                        ; $5312: $4f
	ld   b, $00                                      ; $5313: $06 $00
	ld   hl, $532c                                   ; $5315: $21 $2c $53
	add  hl, bc                                      ; $5318: $09
	ld   a, [hl]                                     ; $5319: $7e
	cp   $01                                         ; $531a: $fe $01
	jr   nz, :+                             ; $531c: $20 $04

	xor  a                                           ; $531e: $af
	ld   [$c987], a                                  ; $531f: $ea $87 $c9

:	ld   hl, $c986                                   ; $5322: $21 $86 $c9
if def(VWF)
	ld   de, $9851
else
	ld   de, $9852                                   ; $5325: $11 $52 $98
endc
	call Call_03e_533c                               ; $5328: $cd $3c $53
	ret                                              ; $532b: $c9


	ld   [bc], a                                     ; $532c: $02
	inc  bc                                          ; $532d: $03
	ld   [bc], a                                     ; $532e: $02
	ld   bc, $0201                                   ; $532f: $01 $01 $02

Call_03e_5332:
	ld   hl, $c98a                                   ; $5332: $21 $8a $c9
if def(VWF)
	ld   de, $98b1
else
	ld   de, $98b2                                   ; $5335: $11 $b2 $98
endc
	call Call_03e_533c                               ; $5338: $cd $3c $53
	ret                                              ; $533b: $c9


Call_03e_533c:
	ld   a, [$c984]                                  ; $533c: $fa $84 $c9
	cp   $01                                         ; $533f: $fe $01
	jr   nz, jr_03e_535f                             ; $5341: $20 $1c

	ld   a, [hl+]                                    ; $5343: $2a
	ld   c, a                                        ; $5344: $4f
	ld   a, [hl+]                                    ; $5345: $2a
	ld   b, a                                        ; $5346: $47
	ld   l, [hl]                                     ; $5347: $6e
	ld   a, l                                        ; $5348: $7d
	call Call_03e_5375                               ; $5349: $cd $75 $53
	ld   a, $0a                                      ; $534c: $3e $0a
	call DrawMinigameResultsDigit                               ; $534e: $cd $a2 $53
	ld   a, b                                        ; $5351: $78
	call Call_03e_5375                               ; $5352: $cd $75 $53
	ld   a, $0a                                      ; $5355: $3e $0a
	call DrawMinigameResultsDigit                               ; $5357: $cd $a2 $53
	ld   a, c                                        ; $535a: $79
	call Call_03e_5375                               ; $535b: $cd $75 $53
	ret                                              ; $535e: $c9

jr_03e_535f:
	push hl                                          ; $535f: $e5
	push de                                          ; $5360: $d5
	ld   hl, $0020                                   ; $5361: $21 $20 $00
	add  hl, de                                      ; $5364: $19
	pop  de                                          ; $5365: $d1
if def(VWF)
	ds $5370-@, 0
else
	ld   a, $0d                                      ; $5366: $3e $0d
	call DrawMinigameResultsDigit                               ; $5368: $cd $a2 $53
	ld   a, $0c                                      ; $536b: $3e $0c
	call DrawMinigameResultsDigit                               ; $536d: $cd $a2 $53
endc
	pop  hl                                          ; $5370: $e1
	call Call_03e_53e5                               ; $5371: $cd $e5 $53
	ret                                              ; $5374: $c9


Call_03e_5375:
	push bc                                          ; $5375: $c5
	push af                                          ; $5376: $f5
	ld   a, e                                        ; $5377: $7b
	ld   [$c98e], a                                  ; $5378: $ea $8e $c9
	ld   a, d                                        ; $537b: $7a
	ld   [$c98f], a                                  ; $537c: $ea $8f $c9
	pop  af                                          ; $537f: $f1
	call ConvertAintoBCD                                       ; $5380: $cd $7d $0d
	push af                                          ; $5383: $f5
	ld   a, [$c98e]                                  ; $5384: $fa $8e $c9
	ld   l, a                                        ; $5387: $6f
	ld   a, [$c98f]                                  ; $5388: $fa $8f $c9
	ld   h, a                                        ; $538b: $67
	pop  af                                          ; $538c: $f1
	push hl                                          ; $538d: $e5
	ld   de, $0020                                   ; $538e: $11 $20 $00
	add  hl, de                                      ; $5391: $19
	pop  de                                          ; $5392: $d1
	call Call_03e_539d                               ; $5393: $cd $9d $53
	pop  af                                          ; $5396: $f1
	call Call_03e_539d                               ; $5397: $cd $9d $53
	pop  af                                          ; $539a: $f1
	pop  bc                                          ; $539b: $c1
	ret                                              ; $539c: $c9


Call_03e_539d:
	cp   $0a                                         ; $539d: $fe $0a
	jr   nz, DrawMinigameResultsDigit                             ; $539f: $20 $01

	xor  a                                           ; $53a1: $af

; A - digit value
; DE - address of digit's top half
; HL - address of digit's bottom half
DrawMinigameResultsDigit:
	add  $c0                                                        ; $53a2
	ld   [de], a                                                    ; $53a4
	dec  de                                                         ; $53a5
	add  $10                                                        ; $53a6
	ld   [hl-], a                                                   ; $53a8
	ret                                                             ; $53a9


Call_03e_53aa:
	ld   a, [wWramBank]                                  ; $53aa: $fa $93 $c2
	push af                                          ; $53ad: $f5
	ld   a, $03                                      ; $53ae: $3e $03
	ld   [wWramBank], a                                  ; $53b0: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $53b3: $e0 $70
	call Call_03e_53d1                               ; $53b5: $cd $d1 $53
	call Call_03e_53db                               ; $53b8: $cd $db $53
	pop  af                                          ; $53bb: $f1
	ld   [wWramBank], a                                  ; $53bc: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $53bf: $e0 $70
	ld   c, $80                                      ; $53c1: $0e $80
	ld   de, $9960                                   ; $53c3: $11 $60 $99
	ld   a, $03                                      ; $53c6: $3e $03
	ld   hl, $d000                                   ; $53c8: $21 $00 $d0
	ld   b, $0a                                      ; $53cb: $06 $0a
	call EnqueueHDMATransfer                                       ; $53cd: $cd $7c $02
	ret                                              ; $53d0: $c9


Call_03e_53d1:
	ld   hl, $c990                                   ; $53d1: $21 $90 $c9
	ld   de, $d011                                   ; $53d4: $11 $11 $d0
	call Call_03e_53e5                               ; $53d7: $cd $e5 $53
	ret                                              ; $53da: $c9


Call_03e_53db:
	ld   hl, $c994                                   ; $53db: $21 $94 $c9
	ld   de, $d071                                   ; $53de: $11 $71 $d0
	call Call_03e_53e5                               ; $53e1: $cd $e5 $53
	ret                                              ; $53e4: $c9


Call_03e_53e5:
	ld   a, e                                        ; $53e5: $7b
	ld   [$c98e], a                                  ; $53e6: $ea $8e $c9
	ld   a, d                                        ; $53e9: $7a
	ld   [$c98f], a                                  ; $53ea: $ea $8f $c9
	ld   a, [hl+]                                    ; $53ed: $2a
	ld   h, [hl]                                     ; $53ee: $66
	ld   l, a                                        ; $53ef: $6f
	call Call_03e_5417                               ; $53f0: $cd $17 $54
	push af                                          ; $53f3: $f5
	ld   a, [$c98e]                                  ; $53f4: $fa $8e $c9
	ld   l, a                                        ; $53f7: $6f
	ld   a, [$c98f]                                  ; $53f8: $fa $8f $c9
	ld   h, a                                        ; $53fb: $67
	pop  af                                          ; $53fc: $f1
	push hl                                          ; $53fd: $e5
	ld   de, $0020                                   ; $53fe: $11 $20 $00
	add  hl, de                                      ; $5401: $19
	pop  de                                          ; $5402: $d1
	call DrawMinigameResultsDigit                               ; $5403: $cd $a2 $53
	pop  af                                          ; $5406: $f1
	call DrawMinigameResultsDigit                               ; $5407: $cd $a2 $53
	pop  af                                          ; $540a: $f1
	call DrawMinigameResultsDigit                               ; $540b: $cd $a2 $53
	pop  af                                          ; $540e: $f1
	call DrawMinigameResultsDigit                               ; $540f: $cd $a2 $53
	pop  af                                          ; $5412: $f1
	call DrawMinigameResultsDigit                               ; $5413: $cd $a2 $53
	ret                                              ; $5416: $c9


Call_03e_5417:
	ld   d, $00                                      ; $5417: $16 $00
	ld   bc, $d8f0                                   ; $5419: $01 $f0 $d8

jr_03e_541c:
	ld   a, h                                        ; $541c: $7c
	cp   $27                                         ; $541d: $fe $27
	jr   c, jr_03e_542c                              ; $541f: $38 $0b

	jr   nz, jr_03e_5428                             ; $5421: $20 $05

	ld   a, l                                        ; $5423: $7d
	cp   $10                                         ; $5424: $fe $10
	jr   c, jr_03e_542c                              ; $5426: $38 $04

jr_03e_5428:
	add  hl, bc                                      ; $5428: $09
	inc  d                                           ; $5429: $14
	jr   jr_03e_541c                                 ; $542a: $18 $f0

jr_03e_542c:
	pop  bc                                          ; $542c: $c1
	push de                                          ; $542d: $d5
	push bc                                          ; $542e: $c5
	jp   $0da8                                       ; $542f: $c3 $a8 $0d


Call_03e_5432:
	ld   hl, $c98a                                   ; $5432: $21 $8a $c9
	ld   a, [$c985]                                  ; $5435: $fa $85 $c9
	ld   c, a                                        ; $5438: $4f
	ld   a, [$c984]                                  ; $5439: $fa $84 $c9
	push af                                          ; $543c: $f5
	ld   a, $6e                                      ; $543d: $3e $6e
	ld   [wFarCallAddr], a                                  ; $543f: $ea $98 $c2
	ld   a, $71                                      ; $5442: $3e $71
	ld   [wFarCallAddr+1], a                                  ; $5444: $ea $99 $c2
	ld   a, $0b                                      ; $5447: $3e $0b
	ld   [wFarCallBank], a                                  ; $5449: $ea $9a $c2
	pop  af                                          ; $544c: $f1
	call FarCall                                       ; $544d: $cd $62 $09
	ret                                              ; $5450: $c9


Call_03e_5451:
	ld   hl, $c986                                   ; $5451: $21 $86 $c9
	ld   a, [$c985]                                  ; $5454: $fa $85 $c9
	ld   c, a                                        ; $5457: $4f
	ld   a, [$c984]                                  ; $5458: $fa $84 $c9
	push af                                          ; $545b: $f5
	ld   a, $90                                      ; $545c: $3e $90
	ld   [wFarCallAddr], a                                  ; $545e: $ea $98 $c2
	ld   a, $71                                      ; $5461: $3e $71
	ld   [wFarCallAddr+1], a                                  ; $5463: $ea $99 $c2
	ld   a, $0b                                      ; $5466: $3e $0b
	ld   [wFarCallBank], a                                  ; $5468: $ea $9a $c2
	pop  af                                          ; $546b: $f1
	call FarCall                                       ; $546c: $cd $62 $09
	ret                                              ; $546f: $c9


Call_03e_5470:
	ld   a, [$c983]                                  ; $5470: $fa $83 $c9
	add  a                                           ; $5473: $87
	ld   c, a                                        ; $5474: $4f
	ld   b, $00                                      ; $5475: $06 $00
	ld   hl, $5493                                   ; $5477: $21 $93 $54
	ld   a, [$c985]                                  ; $547a: $fa $85 $c9
	or   a                                           ; $547d: $b7
	jr   z, jr_03e_5483                              ; $547e: $28 $03

	ld   hl, $549d                                   ; $5480: $21 $9d $54

jr_03e_5483:
	add  hl, bc                                      ; $5483: $09
	ld   a, [hl+]                                    ; $5484: $2a
	ld   [$c992], a                                  ; $5485: $ea $92 $c9
	ld   [$c990], a                                  ; $5488: $ea $90 $c9
	ld   a, [hl]                                     ; $548b: $7e
	ld   [$c993], a                                  ; $548c: $ea $93 $c9
	ld   [$c991], a                                  ; $548f: $ea $91 $c9
	ret                                              ; $5492: $c9


	ld   a, [bc]                                     ; $5493: $0a
	nop                                              ; $5494: $00
	inc  d                                           ; $5495: $14
	nop                                              ; $5496: $00
	ld   [hl-], a                                    ; $5497: $32
	nop                                              ; $5498: $00
	ld   h, h                                        ; $5499: $64
	nop                                              ; $549a: $00
	ret  z                                           ; $549b: $c8

	nop                                              ; $549c: $00
	ld   a, [bc]                                     ; $549d: $0a
	nop                                              ; $549e: $00
	ld   [hl-], a                                    ; $549f: $32
	nop                                              ; $54a0: $00
	sub  [hl]                                        ; $54a1: $96
	nop                                              ; $54a2: $00
	inc  l                                           ; $54a3: $2c
	ld   bc, $01f4                                   ; $54a4: $01 $f4 $01

Call_03e_54a7:
	ld   a, [$c984]                                  ; $54a7: $fa $84 $c9
	ld   c, a                                        ; $54aa: $4f
	add  a                                           ; $54ab: $87
	add  c                                           ; $54ac: $81
	ld   c, a                                        ; $54ad: $4f
	ld   b, $00                                      ; $54ae: $06 $00
	ld   hl, $54d3                                   ; $54b0: $21 $d3 $54
	add  hl, bc                                      ; $54b3: $09
	ld   a, [hl+]                                    ; $54b4: $2a
	ld   [wFarCallAddr], a                                  ; $54b5: $ea $98 $c2
	ld   a, [hl+]                                    ; $54b8: $2a
	ld   [wFarCallAddr+1], a                                  ; $54b9: $ea $99 $c2
	ld   a, [hl]                                     ; $54bc: $7e
	ld   [wFarCallBank], a                                  ; $54bd: $ea $9a $c2
	ld   hl, $c986                                   ; $54c0: $21 $86 $c9
	ld   de, $c98a                                   ; $54c3: $11 $8a $c9
	call FarCall                                       ; $54c6: $cd $62 $09
	ld   [$c9a1], a                                  ; $54c9: $ea $a1 $c9
	or   a                                           ; $54cc: $b7
	jr   z, jr_03e_54d2                              ; $54cd: $28 $03

	call Call_03e_5451                               ; $54cf: $cd $51 $54

jr_03e_54d2:
	ret                                              ; $54d2: $c9


	ld   [hl], a                                     ; $54d3: $77
	ld   e, b                                        ; $54d4: $58
	ld   de, $418f                                   ; $54d5: $11 $8f $41
	jr   nz, @+$79                                   ; $54d8: $20 $77

	ld   e, b                                        ; $54da: $58
	ld   de, $5877                                   ; $54db: $11 $77 $58
	ld   de, $6408                                   ; $54de: $11 $08 $64
	jr   nz, @+$79                                   ; $54e1: $20 $77

	ld   e, b                                        ; $54e3: $58
	ld   de, $a3fa                                   ; $54e4: $11 $fa $a3
	ret                                              ; $54e7: $c9


	ld   c, a                                        ; $54e8: $4f
	add  a                                           ; $54e9: $87
	add  a                                           ; $54ea: $87
	add  c                                           ; $54eb: $81
	ld   c, a                                        ; $54ec: $4f
	ld   b, $00                                      ; $54ed: $06 $00
	ld   hl, $5510                                   ; $54ef: $21 $10 $55
	add  hl, bc                                      ; $54f2: $09
	ld   a, [hl+]                                    ; $54f3: $2a
	ld   e, a                                        ; $54f4: $5f
	ld   a, [hl+]                                    ; $54f5: $2a
	ld   d, a                                        ; $54f6: $57
	ld   a, [hl+]                                    ; $54f7: $2a
	ld   c, a                                        ; $54f8: $4f
	ld   a, [hl+]                                    ; $54f9: $2a
	ld   h, [hl]                                     ; $54fa: $66
	ld   l, a                                        ; $54fb: $6f
	push hl                                          ; $54fc: $e5
	push bc                                          ; $54fd: $c5
	push de                                          ; $54fe: $d5
	ld   a, $01                                      ; $54ff: $3e $01
	ldh  [rVBK], a                                   ; $5501: $e0 $4f
	call Call_03e_5524                               ; $5503: $cd $24 $55
	pop  de                                          ; $5506: $d1
	pop  bc                                          ; $5507: $c1
	pop  hl                                          ; $5508: $e1
	xor  a                                           ; $5509: $af
	ldh  [rVBK], a                                   ; $550a: $e0 $4f
	call Call_03e_5524                               ; $550c: $cd $24 $55
	ret                                              ; $550f: $c9


	ld   b, $99                                      ; $5510: $06 $99
	ld   [bc], a                                     ; $5512: $02
	ld   b, [hl]                                     ; $5513: $46
	sbc  d                                           ; $5514: $9a
	ld   b, $99                                      ; $5515: $06 $99
	ld   [bc], a                                     ; $5517: $02
	add  [hl]                                        ; $5518: $86
	sbc  d                                           ; $5519: $9a
	and  $98                                         ; $551a: $e6 $98
	inc  b                                           ; $551c: $04
	add  $9a                                         ; $551d: $c6 $9a
	add  $98                                         ; $551f: $c6 $98
	ld   b, $46                                      ; $5521: $06 $46
	sbc  e                                           ; $5523: $9b

Call_03e_5524:
jr_03e_5524:
	push bc                                          ; $5524: $c5
	ld   bc, $0008                                   ; $5525: $01 $08 $00
	call HBlankFarMemCopy                                       ; $5528: $cd $23 $0a
	ld   bc, $0018                                   ; $552b: $01 $18 $00
	add  hl, bc                                      ; $552e: $09
	push hl                                          ; $552f: $e5
	ld   hl, $0018                                   ; $5530: $21 $18 $00
	add  hl, de                                      ; $5533: $19
	ld   e, l                                        ; $5534: $5d
	ld   d, h                                        ; $5535: $54
	pop  hl                                          ; $5536: $e1
	pop  bc                                          ; $5537: $c1
	dec  c                                           ; $5538: $0d
	jr   nz, jr_03e_5524                             ; $5539: $20 $e9

	ret                                              ; $553b: $c9


	ld   [$c983], a                                  ; $553c: $ea $83 $c9
	ld   a, h                                        ; $553f: $7c
	ld   [$c981], a                                  ; $5540: $ea $81 $c9
	ld   a, l                                        ; $5543: $7d
	ld   [$c982], a                                  ; $5544: $ea $82 $c9
	ld   a, d                                        ; $5547: $7a
	ld   [$c97f], a                                  ; $5548: $ea $7f $c9
	ld   a, e                                        ; $554b: $7b
	ld   [$c980], a                                  ; $554c: $ea $80 $c9
	ld   a, b                                        ; $554f: $78
	ld   [$c984], a                                  ; $5550: $ea $84 $c9
	ld   a, c                                        ; $5553: $79
	ld   [$c985], a                                  ; $5554: $ea $85 $c9
	ld   a, GS_MINI_GAME_RESULTS                                      ; $5557: $3e $18
	ld   [wGameState], a                                  ; $5559: $ea $a0 $c2
	ld   a, $00                                      ; $555c: $3e $00
	ld   [wGameSubstate], a                                  ; $555e: $ea $a1 $c2
	ret                                              ; $5561: $c9


GameState19_PushUps::
	ld   a, [wGameSubstate]                                  ; $5562: $fa $a1 $c2
	rst  JumpTable                                         ; $5565: $df
	ld   [hl], b                                     ; $5566: $70
	ld   d, l                                        ; $5567: $55
	xor  a                                           ; $5568: $af
	ld   d, a                                        ; $5569: $57
	dec  b                                           ; $556a: $05
	ld   e, b                                        ; $556b: $58
	rra                                              ; $556c: $1f
	ld   e, b                                        ; $556d: $58
	ld   [hl], l                                     ; $556e: $75
	ld   e, c                                        ; $556f: $59
	ld   a, $01                                      ; $5570: $3e $01
	ld   hl, $7000                                   ; $5572: $21 $00 $70
	ld   de, wBGPalettes                                   ; $5575: $11 $de $c2
	ld   bc, $0080                                   ; $5578: $01 $80 $00
	call FarMemCopy                                       ; $557b: $cd $b2 $09
	ld   bc, $003f                                   ; $557e: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $5581: $cd $aa $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5584: $cf
	ld   a, $07                                      ; $5585: $3e $07
	call SafeSetAudVolForMultipleChannels                                       ; $5587: $cd $e0 $1c
	call TurnOnLCD                                       ; $558a: $cd $09 $09
	ld   a, $ff                                      ; $558d: $3e $ff
	ld   [wInGameInputsEnabled], a                                  ; $558f: $ea $0e $c2
	ld   a, $0c                                      ; $5592: $3e $0c
	ld   [wBaseInitialStickyCounter], a                                  ; $5594: $ea $13 $c2
	ld   a, $04                                      ; $5597: $3e $04
	ld   [wBaseRepeatedStickyCounter], a                                  ; $5599: $ea $14 $c2
	call ClearOam                                       ; $559c: $cd $d7 $0d
	call ClearDisplayRegsAllowVBlankInt                                       ; $559f: $cd $59 $0b
	ld   a, $83                                      ; $55a2: $3e $83
	ld   [wLCDC], a                                  ; $55a4: $ea $03 $c2
	ld   a, [wWramBank]                                  ; $55a7: $fa $93 $c2
	push af                                          ; $55aa: $f5
	ld   a, $03                                      ; $55ab: $3e $03
	ld   [wWramBank], a                                  ; $55ad: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $55b0: $e0 $70
	ld   a, $1c                                      ; $55b2: $3e $1c
	ld   hl, $d000                                   ; $55b4: $21 $00 $d0
	ld   de, $5cfd                                   ; $55b7: $11 $fd $5c
	call RLEXorCopy                                       ; $55ba: $cd $d2 $09
	ld   c, $80                                      ; $55bd: $0e $80
	ld   de, $8000                                   ; $55bf: $11 $00 $80
	ld   a, $03                                      ; $55c2: $3e $03
	ld   hl, $d000                                   ; $55c4: $21 $00 $d0
	ld   b, $40                                      ; $55c7: $06 $40
	call EnqueueHDMATransfer                                       ; $55c9: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $55cc: $cf
	ld   c, $80                                      ; $55cd: $0e $80
	ld   de, $8400                                   ; $55cf: $11 $00 $84
	ld   a, $03                                      ; $55d2: $3e $03
	ld   hl, $d400                                   ; $55d4: $21 $00 $d4
	ld   b, $40                                      ; $55d7: $06 $40
	call EnqueueHDMATransfer                                       ; $55d9: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $55dc: $cf
	xor  a                                           ; $55dd: $af

jr_03e_55de:
	push af                                          ; $55de: $f5
	push af                                          ; $55df: $f5
	ld   a, $1a                                      ; $55e0: $3e $1a
	ld   [wFarCallAddr], a                                  ; $55e2: $ea $98 $c2
	ld   a, $48                                      ; $55e5: $3e $48
	ld   [wFarCallAddr+1], a                                  ; $55e7: $ea $99 $c2
	ld   a, $0a                                      ; $55ea: $3e $0a
	ld   [wFarCallBank], a                                  ; $55ec: $ea $9a $c2
	pop  af                                          ; $55ef: $f1
	call FarCall                                       ; $55f0: $cd $62 $09
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $55f3: $cf
	pop  af                                          ; $55f4: $f1
	inc  a                                           ; $55f5: $3c
	cp   $04                                         ; $55f6: $fe $04
	jr   nz, jr_03e_55de                             ; $55f8: $20 $e4

	ld   de, $d000                                   ; $55fa: $11 $00 $d0
	ld   hl, wBGPalettes                                   ; $55fd: $21 $de $c2
	ld   bc, $0008                                   ; $5600: $01 $08 $00
	call MemCopy                                       ; $5603: $cd $a9 $09
	ld   a, $01                                      ; $5606: $3e $01
	ld   hl, $7000                                   ; $5608: $21 $00 $70
	ld   de, wBGPalettes                                   ; $560b: $11 $de $c2
	ld   bc, $0080                                   ; $560e: $01 $80 $00
	call FarMemCopy                                       ; $5611: $cd $b2 $09
	ld   bc, $003f                                   ; $5614: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $5617: $cd $aa $04
	xor  a                                           ; $561a: $af

jr_03e_561b:
	push af                                          ; $561b: $f5
	ld   hl, $006e                                   ; $561c: $21 $6e $00
	push af                                          ; $561f: $f5
	ld   a, $97                                      ; $5620: $3e $97
	ld   [wFarCallAddr], a                                  ; $5622: $ea $98 $c2
	ld   a, $49                                      ; $5625: $3e $49
	ld   [wFarCallAddr+1], a                                  ; $5627: $ea $99 $c2
	ld   a, $0a                                      ; $562a: $3e $0a
	ld   [wFarCallBank], a                                  ; $562c: $ea $9a $c2
	pop  af                                          ; $562f: $f1
	call FarCall                                       ; $5630: $cd $62 $09
	pop  af                                          ; $5633: $f1
	inc  a                                           ; $5634: $3c
	cp   $05                                         ; $5635: $fe $05
	jr   z, jr_03e_563e                              ; $5637: $28 $05

	push af                                          ; $5639: $f5
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $563a: $cf
	pop  af                                          ; $563b: $f1
	jr   jr_03e_561b                                 ; $563c: $18 $dd

jr_03e_563e:
	ld   de, $d018                                   ; $563e: $11 $18 $d0
	ld   hl, wBGPalettes+3*8                                   ; $5641: $21 $f6 $c2
	ld   bc, $0018                                   ; $5644: $01 $18 $00
	call MemCopy                                       ; $5647: $cd $a9 $09
	ld   a, $01                                      ; $564a: $3e $01
	ld   hl, $7000                                   ; $564c: $21 $00 $70
	ld   de, wBGPalettes                                   ; $564f: $11 $de $c2
	ld   bc, $0080                                   ; $5652: $01 $80 $00
	call FarMemCopy                                       ; $5655: $cd $b2 $09
	ld   bc, $003f                                   ; $5658: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $565b: $cd $aa $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $565e: $cf
	push af                                          ; $565f: $f5
	ld   a, $7a                                      ; $5660: $3e $7a
	ld   [wFarCallAddr], a                                  ; $5662: $ea $98 $c2
	ld   a, $5b                                      ; $5665: $3e $5b
	ld   [wFarCallAddr+1], a                                  ; $5667: $ea $99 $c2
	ld   a, $0a                                      ; $566a: $3e $0a
	ld   [wFarCallBank], a                                  ; $566c: $ea $9a $c2
	pop  af                                          ; $566f: $f1
	call FarCall                                       ; $5670: $cd $62 $09
	push af                                          ; $5673: $f5
	ld   a, $34                                      ; $5674: $3e $34
	ld   [wFarCallAddr], a                                  ; $5676: $ea $98 $c2
	ld   a, $49                                      ; $5679: $3e $49
	ld   [wFarCallAddr+1], a                                  ; $567b: $ea $99 $c2
	ld   a, $0a                                      ; $567e: $3e $0a
	ld   [wFarCallBank], a                                  ; $5680: $ea $9a $c2
	pop  af                                          ; $5683: $f1
	call FarCall                                       ; $5684: $cd $62 $09
	ld   b, $03                                      ; $5687: $06 $03
	ld   c, $00                                      ; $5689: $0e $00
	push af                                          ; $568b: $f5
	ld   a, $ba                                      ; $568c: $3e $ba
	ld   [wFarCallAddr], a                                  ; $568e: $ea $98 $c2
	ld   a, $54                                      ; $5691: $3e $54
	ld   [wFarCallAddr+1], a                                  ; $5693: $ea $99 $c2
	ld   a, $0a                                      ; $5696: $3e $0a
	ld   [wFarCallBank], a                                  ; $5698: $ea $9a $c2
	pop  af                                          ; $569b: $f1
	call FarCall                                       ; $569c: $cd $62 $09
	ld   a, $1e                                      ; $569f: $3e $1e
	ld   hl, $7a8e                                   ; $56a1: $21 $8e $7a
	ld   de, wOBJPalettes                                   ; $56a4: $11 $1e $c3
	ld   bc, $0028                                   ; $56a7: $01 $28 $00
	call FarMemCopy                                       ; $56aa: $cd $b2 $09
	ld   bc, $2033                                   ; $56ad: $01 $33 $20
	call SetBGandOBJPaletteRangesToUpdate                                       ; $56b0: $cd $aa $04
	ld   de, $d008                                   ; $56b3: $11 $08 $d0
	ld   hl, wBGPalettes+1*8                                   ; $56b6: $21 $e6 $c2
	ld   bc, $0010                                   ; $56b9: $01 $10 $00
	call MemCopy                                       ; $56bc: $cd $a9 $09
	ld   de, $d030                                   ; $56bf: $11 $30 $d0
	ld   hl, $c30e                                   ; $56c2: $21 $0e $c3
	ld   bc, $0050                                   ; $56c5: $01 $50 $00
	call MemCopy                                       ; $56c8: $cd $a9 $09
	ld   a, $01                                      ; $56cb: $3e $01
	ld   hl, $7000                                   ; $56cd: $21 $00 $70
	ld   de, wBGPalettes                                   ; $56d0: $11 $de $c2
	ld   bc, $0080                                   ; $56d3: $01 $80 $00
	call FarMemCopy                                       ; $56d6: $cd $b2 $09
	ld   bc, $003f                                   ; $56d9: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $56dc: $cd $aa $04
	ld   hl, $d800                                   ; $56df: $21 $00 $d8
	ld   bc, $0800                                   ; $56e2: $01 $00 $08
	call MemClear                                       ; $56e5: $cd $95 $09
	pop  af                                          ; $56e8: $f1
	ld   [wWramBank], a                                  ; $56e9: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $56ec: $e0 $70
	ld   a, $80                                      ; $56ee: $3e $80
	ld   [wRandomNumRange], a                                  ; $56f0: $ea $a5 $c2
	call UpdateSramRandomSeed                                       ; $56f3: $cd $70 $0c
	xor  a                                           ; $56f6: $af
	ld   [wWY], a                                  ; $56f7: $ea $0a $c2
	ld   [wWX], a                                  ; $56fa: $ea $09 $c2
	ld   [wSCX], a                                  ; $56fd: $ea $07 $c2
	ld   [wSCY], a                                  ; $5700: $ea $08 $c2
	ld   [$c9ac], a                                  ; $5703: $ea $ac $c9
	call ClearBaseAnimSpriteSpecDetails                                       ; $5706: $cd $c9 $2e
	ld   a, $01                                      ; $5709: $3e $01
	ld   hl, $0000                                   ; $570b: $21 $00 $00
	call ReserveBaseAnimSpriteSpecAndInstance                                       ; $570e: $cd $4b $2f
	ld   [$c9a7], a                                  ; $5711: $ea $a7 $c9
	call StartAnimatingAnimatedSpriteSpec                                       ; $5714: $cd $14 $30
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $5717: $cd $76 $30
	ld   a, $35                                      ; $571a: $3e $35
	ld   bc, $4126                                   ; $571c: $01 $26 $41
	ld   de, $7180                                   ; $571f: $11 $80 $71
	push af                                          ; $5722: $f5
	ld   a, $03                                      ; $5723: $3e $03
	ld   [wFarCallAddr], a                                  ; $5725: $ea $98 $c2
	ld   a, $41                                      ; $5728: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $572a: $ea $99 $c2
	ld   a, $01                                      ; $572d: $3e $01
	ld   [wFarCallBank], a                                  ; $572f: $ea $9a $c2
	pop  af                                          ; $5732: $f1
	call FarCall                                       ; $5733: $cd $62 $09
	ld   a, [wWramBank]                                  ; $5736: $fa $93 $c2
	push af                                          ; $5739: $f5
	ld   a, $03                                      ; $573a: $3e $03
	ld   [wWramBank], a                                  ; $573c: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $573f: $e0 $70
	xor  a                                           ; $5741: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $5742: $ea $62 $c3
	ld   a, $40                                      ; $5745: $3e $40
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $5747: $ea $63 $c3
	ld   a, $03                                      ; $574a: $3e $03
	ld   b, $01                                      ; $574c: $06 $01
	ld   hl, $7000                                   ; $574e: $21 $00 $70
	ld   c, $00                                      ; $5751: $0e $00
	ld   de, $d000                                   ; $5753: $11 $00 $d0
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $5756: $cd $48 $07
	pop  af                                          ; $5759: $f1
	ld   [wWramBank], a                                  ; $575a: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $575d: $e0 $70
	call TurnOnLCD                                       ; $575f: $cd $09 $09
	ld   a, $07                                      ; $5762: $3e $07
	call SafeSetAudVolForMultipleChannels                                       ; $5764: $cd $e0 $1c
	push af                                          ; $5767: $f5
	ld   a, $54                                      ; $5768: $3e $54
	ld   [wFarCallAddr], a                                  ; $576a: $ea $98 $c2
	ld   a, $57                                      ; $576d: $3e $57
	ld   [wFarCallAddr+1], a                                  ; $576f: $ea $99 $c2
	ld   a, $11                                      ; $5772: $3e $11
	ld   [wFarCallBank], a                                  ; $5774: $ea $9a $c2
	pop  af                                          ; $5777: $f1
	call FarCall                                       ; $5778: $cd $62 $09
	ld   a, [wWramBank]                                  ; $577b: $fa $93 $c2
	push af                                          ; $577e: $f5
	ld   a, $03                                      ; $577f: $3e $03
	ld   [wWramBank], a                                  ; $5781: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5784: $e0 $70
	ld   a, $00                                      ; $5786: $3e $00
	ld   hl, $d000                                   ; $5788: $21 $00 $d0
	ld   de, wBGPalettes                                   ; $578b: $11 $de $c2
	ld   bc, $0080                                   ; $578e: $01 $80 $00
	call FarMemCopy                                       ; $5791: $cd $b2 $09
	ld   bc, $003f                                   ; $5794: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $5797: $cd $aa $04
	pop  af                                          ; $579a: $f1
	ld   [wWramBank], a                                  ; $579b: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $579e: $e0 $70
	ld   a, $0f                                      ; $57a0: $3e $0f
	call Call_03e_59bf                               ; $57a2: $cd $bf $59
	ld   hl, wGameSubstate                                   ; $57a5: $21 $a1 $c2
	inc  [hl]                                        ; $57a8: $34
	ld   a, $3c                                      ; $57a9: $3e $3c
	ld   [$c9a9], a                                  ; $57ab: $ea $a9 $c9
	ret                                              ; $57ae: $c9


	call ClearOam                                       ; $57af: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $57b2: $cd $d3 $2e
	call CheckIfReachedLastKanjiIdxInCurrTextBox                                       ; $57b5: $cd $71 $14
	or   a                                           ; $57b8: $b7
	jr   z, jr_03e_57d3                              ; $57b9: $28 $18

	ld   a, [wInGameButtonsHeld]                                  ; $57bb: $fa $0f $c2
	and  $82                                         ; $57be: $e6 $82
	jr   nz, jr_03e_57c9                             ; $57c0: $20 $07

	ld   hl, $c9ae                                   ; $57c2: $21 $ae $c9
	dec  [hl]                                        ; $57c5: $35
	bit  7, [hl]                                     ; $57c6: $cb $7e
	ret  z                                           ; $57c8: $c8

jr_03e_57c9:
	ld   a, [sTextSpeedBaseCounter]                                  ; $57c9: $fa $b3 $b1
	ld   [$c9ae], a                                  ; $57cc: $ea $ae $c9
	call HDMAEnqueueNextTextBoxKanji                                       ; $57cf: $cd $55 $10
	ret                                              ; $57d2: $c9


jr_03e_57d3:
	push af                                          ; $57d3: $f5
	ld   a, $aa                                      ; $57d4: $3e $aa
	ld   [wFarCallAddr], a                                  ; $57d6: $ea $98 $c2
	ld   a, $5b                                      ; $57d9: $3e $5b
	ld   [wFarCallAddr+1], a                                  ; $57db: $ea $99 $c2
	ld   a, $0a                                      ; $57de: $3e $0a
	ld   [wFarCallBank], a                                  ; $57e0: $ea $9a $c2
	pop  af                                          ; $57e3: $f1
	call FarCall                                       ; $57e4: $cd $62 $09
	or   a                                           ; $57e7: $b7
	jr   nz, jr_03e_5804                             ; $57e8: $20 $1a

	ld   a, $36                                      ; $57ea: $3e $36
	call Call_03e_5a4d                               ; $57ec: $cd $4d $5a
	ld   a, [$c9ac]                                  ; $57ef: $fa $ac $c9
	add  $02                                         ; $57f2: $c6 $02
	call Call_03e_59bf                               ; $57f4: $cd $bf $59
	xor  a                                           ; $57f7: $af
	ld   [$c9a8], a                                  ; $57f8: $ea $a8 $c9
	ld   a, $1a                                      ; $57fb: $3e $1a
	ld   [$c9a9], a                                  ; $57fd: $ea $a9 $c9
	ld   hl, wGameSubstate                                   ; $5800: $21 $a1 $c2
	inc  [hl]                                        ; $5803: $34

jr_03e_5804:
	ret                                              ; $5804: $c9


	call ClearOam                                       ; $5805: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $5808: $cd $d3 $2e
	ld   c, $81                                      ; $580b: $0e $81
	ld   de, $8800                                   ; $580d: $11 $00 $88
	ld   a, $03                                      ; $5810: $3e $03
	ld   hl, $d800                                   ; $5812: $21 $00 $d8
	ld   b, $2a                                      ; $5815: $06 $2a
	call EnqueueHDMATransfer                                       ; $5817: $cd $7c $02
	ld   hl, wGameSubstate                                   ; $581a: $21 $a1 $c2
	inc  [hl]                                        ; $581d: $34
	ret                                              ; $581e: $c9


	call ClearOam                                       ; $581f: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $5822: $cd $d3 $2e
	call CheckIfReachedLastKanjiIdxInCurrTextBox                                       ; $5825: $cd $71 $14
	or   a                                           ; $5828: $b7
	jr   z, jr_03e_582e                              ; $5829: $28 $03

	call HDMAEnqueueNextTextBoxKanji                                       ; $582b: $cd $55 $10

jr_03e_582e:
	ld   a, [$c9a8]                                  ; $582e: $fa $a8 $c9
	rst  JumpTable                                         ; $5831: $df
	ld   a, $58                                      ; $5832: $3e $58
	ld   l, [hl]                                     ; $5834: $6e
	ld   e, b                                        ; $5835: $58
	add  l                                           ; $5836: $85
	ld   e, b                                        ; $5837: $58
	db   $dd                                         ; $5838: $dd
	ld   e, b                                        ; $5839: $58
	ld   c, e                                        ; $583a: $4b
	ld   e, c                                        ; $583b: $59
	ld   l, d                                        ; $583c: $6a
	ld   e, c                                        ; $583d: $59
	ld   a, [$c9ac]                                  ; $583e: $fa $ac $c9
	cp   $0a                                         ; $5841: $fe $0a
	jr   nz, jr_03e_5855                             ; $5843: $20 $10

	ld   a, $3a                                      ; $5845: $3e $3a
	call Call_03e_5a4d                               ; $5847: $cd $4d $5a
	ld   a, $56                                      ; $584a: $3e $56
	ld   [$c9a9], a                                  ; $584c: $ea $a9 $c9
	ld   a, $04                                      ; $584f: $3e $04
	ld   [$c9a8], a                                  ; $5851: $ea $a8 $c9
	ret                                              ; $5854: $c9


jr_03e_5855:
	ld   hl, $c9a9                                   ; $5855: $21 $a9 $c9
	dec  [hl]                                        ; $5858: $35
	jr   nz, jr_03e_586d                             ; $5859: $20 $12

	ld   a, $36                                      ; $585b: $3e $36
	call Call_03e_5a4d                               ; $585d: $cd $4d $5a
	ld   a, $1a                                      ; $5860: $3e $1a
	ld   [$c9a9], a                                  ; $5862: $ea $a9 $c9
	xor  a                                           ; $5865: $af
	ld   [$c9ad], a                                  ; $5866: $ea $ad $c9
	ld   hl, $c9a8                                   ; $5869: $21 $a8 $c9
	inc  [hl]                                        ; $586c: $34

jr_03e_586d:
	ret                                              ; $586d: $c9


	ld   hl, $c9a9                                   ; $586e: $21 $a9 $c9
	dec  [hl]                                        ; $5871: $35
	jr   nz, jr_03e_5884                             ; $5872: $20 $10

	ld   a, $1a                                      ; $5874: $3e $1a
	ld   [$c9a9], a                                  ; $5876: $ea $a9 $c9
	ld   a, $37                                      ; $5879: $3e $37
	call Call_03e_5a4d                               ; $587b: $cd $4d $5a
	ld   hl, $c9a8                                   ; $587e: $21 $a8 $c9
	inc  [hl]                                        ; $5881: $34
	ld   a, $00                                      ; $5882: $3e $00

jr_03e_5884:
	ret                                              ; $5884: $c9


	ld   hl, $c9a9                                   ; $5885: $21 $a9 $c9
	dec  [hl]                                        ; $5888: $35
	jr   z, jr_03e_5892                              ; $5889: $28 $07

	ld   a, [wInGameButtonsPressed]                                  ; $588b: $fa $10 $c2
	bit  0, a                                        ; $588e: $cb $47
	jr   z, jr_03e_58b4                              ; $5890: $28 $22

jr_03e_5892:
	ld   a, $3c                                      ; $5892: $3e $3c
	ld   [$c9a9], a                                  ; $5894: $ea $a9 $c9
	ld   hl, $c9ac                                   ; $5897: $21 $ac $c9
	ld   a, [hl]                                     ; $589a: $7e
	add  a                                           ; $589b: $87
	add  a                                           ; $589c: $87
	ld   c, a                                        ; $589d: $4f
	ld   b, $00                                      ; $589e: $06 $00
	ld   hl, $58b5                                   ; $58a0: $21 $b5 $58
	add  hl, bc                                      ; $58a3: $09
	ld   a, [hl+]                                    ; $58a4: $2a
	ld   [$c9aa], a                                  ; $58a5: $ea $aa $c9
	ld   a, [hl+]                                    ; $58a8: $2a
	ld   [$c9ab], a                                  ; $58a9: $ea $ab $c9
	ld   a, [hl]                                     ; $58ac: $7e
	ld   [$c9ad], a                                  ; $58ad: $ea $ad $c9
	ld   hl, $c9a8                                   ; $58b0: $21 $a8 $c9
	inc  [hl]                                        ; $58b3: $34

jr_03e_58b4:
	ret                                              ; $58b4: $c9


	inc  a                                           ; $58b5: $3c
	nop                                              ; $58b6: $00
	inc  b                                           ; $58b7: $04
	nop                                              ; $58b8: $00
	ld   a, b                                        ; $58b9: $78
	nop                                              ; $58ba: $00
	ld   [$b400], sp                                 ; $58bb: $08 $00 $b4
	nop                                              ; $58be: $00
	inc  c                                           ; $58bf: $0c
	nop                                              ; $58c0: $00
	ldh  a, [rP1]                                    ; $58c1: $f0 $00
	stop                                             ; $58c3: $10 $00
	inc  l                                           ; $58c5: $2c
	ld   bc, $0014                                   ; $58c6: $01 $14 $00
	ld   l, b                                        ; $58c9: $68
	ld   bc, $001e                                   ; $58ca: $01 $1e $00
	and  h                                           ; $58cd: $a4
	ld   bc, $0023                                   ; $58ce: $01 $23 $00
	ldh  [rSB], a                                    ; $58d1: $e0 $01
	jr   nc, jr_03e_58d5                             ; $58d3: $30 $00

jr_03e_58d5:
	inc  e                                           ; $58d5: $1c
	ld   [bc], a                                     ; $58d6: $02
	ld   [hl], $00                                   ; $58d7: $36 $00
	ld   e, b                                        ; $58d9: $58
	ld   [bc], a                                     ; $58da: $02
	ld   d, b                                        ; $58db: $50
	nop                                              ; $58dc: $00
	ld   hl, $c9aa                                   ; $58dd: $21 $aa $c9
	ld   a, [hl+]                                    ; $58e0: $2a
	ld   d, [hl]                                     ; $58e1: $56
	ld   e, a                                        ; $58e2: $5f
	dec  de                                          ; $58e3: $1b
	ld   a, d                                        ; $58e4: $7a
	ld   [hl-], a                                    ; $58e5: $32
	ld   [hl], e                                     ; $58e6: $73
	or   e                                           ; $58e7: $b3
	jr   z, jr_03e_593b                              ; $58e8: $28 $51

	ld   a, [wInGameButtonsPressed]                                  ; $58ea: $fa $10 $c2
	bit  0, a                                        ; $58ed: $cb $47
	jr   z, jr_03e_593a                              ; $58ef: $28 $49

	ld   a, [$c9a7]                                  ; $58f1: $fa $a7 $c9
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $58f4: $cd $76 $30
	ld   de, $7180                                   ; $58f7: $11 $80 $71
	push af                                          ; $58fa: $f5
	ld   a, $43                                      ; $58fb: $3e $43
	ld   [wFarCallAddr], a                                  ; $58fd: $ea $98 $c2
	ld   a, $41                                      ; $5900: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $5902: $ea $99 $c2
	ld   a, $01                                      ; $5905: $3e $01
	ld   [wFarCallBank], a                                  ; $5907: $ea $9a $c2
	pop  af                                          ; $590a: $f1
	call FarCall                                       ; $590b: $cd $62 $09
	ld   a, $4b                                      ; $590e: $3e $4b
	cp   c                                           ; $5910: $b9
	jr   nz, jr_03e_5918                             ; $5911: $20 $05

	ld   a, $34                                      ; $5913: $3e $34
	call Call_03e_5a4d                               ; $5915: $cd $4d $5a

jr_03e_5918:
	ld   hl, $c9ad                                   ; $5918: $21 $ad $c9
	dec  [hl]                                        ; $591b: $35
	jr   nz, jr_03e_593a                             ; $591c: $20 $1c

	ld   a, $35                                      ; $591e: $3e $35
	call Call_03e_5a4d                               ; $5920: $cd $4d $5a
	ld   a, $1a                                      ; $5923: $3e $1a
	ld   [$c9a9], a                                  ; $5925: $ea $a9 $c9
	xor  a                                           ; $5928: $af
	ld   [$c9a8], a                                  ; $5929: $ea $a8 $c9
	ld   hl, $c9ac                                   ; $592c: $21 $ac $c9
	inc  [hl]                                        ; $592f: $34
	ld   a, [hl]                                     ; $5930: $7e
	add  $02                                         ; $5931: $c6 $02
	cp   $0c                                         ; $5933: $fe $0c
	jr   z, jr_03e_593a                              ; $5935: $28 $03

	call Call_03e_59bf                               ; $5937: $cd $bf $59

jr_03e_593a:
	ret                                              ; $593a: $c9


jr_03e_593b:
	ld   a, $39                                      ; $593b: $3e $39
	call Call_03e_5a4d                               ; $593d: $cd $4d $5a
	ld   a, $3c                                      ; $5940: $3e $3c
	ld   [$c9a9], a                                  ; $5942: $ea $a9 $c9
	ld   a, $04                                      ; $5945: $3e $04
	ld   [$c9a8], a                                  ; $5947: $ea $a8 $c9
	ret                                              ; $594a: $c9


	ld   hl, $c9a8                                   ; $594b: $21 $a8 $c9
	inc  [hl]                                        ; $594e: $34
	ld   c, $0e                                      ; $594f: $0e $0e
	ld   b, $02                                      ; $5951: $06 $02
	ld   a, [$c9ac]                                  ; $5953: $fa $ac $c9
	cp   $0a                                         ; $5956: $fe $0a
	jr   z, jr_03e_5964                              ; $5958: $28 $0a

	ld   c, $0c                                      ; $595a: $0e $0c
	dec  b                                           ; $595c: $05
	cp   $06                                         ; $595d: $fe $06
	jr   nc, jr_03e_5964                             ; $595f: $30 $03

	ld   c, $0d                                      ; $5961: $0e $0d
	dec  b                                           ; $5963: $05

jr_03e_5964:
	ld   a, b                                        ; $5964: $78
	ld   [wBattleWon], a                                  ; $5965: $ea $21 $cb
	ld   a, c                                        ; $5968: $79
	ret                                              ; $5969: $c9


	ld   hl, $c9a9                                   ; $596a: $21 $a9 $c9
	dec  [hl]                                        ; $596d: $35
	jr   nz, jr_03e_5974                             ; $596e: $20 $04

	ld   hl, wGameSubstate                                   ; $5970: $21 $a1 $c2
	inc  [hl]                                        ; $5973: $34

jr_03e_5974:
	ret                                              ; $5974: $c9


	ld   a, [wWramBank]                                  ; $5975: $fa $93 $c2
	push af                                          ; $5978: $f5
	ld   a, $03                                      ; $5979: $3e $03
	ld   [wWramBank], a                                  ; $597b: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $597e: $e0 $70
	xor  a                                           ; $5980: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $5981: $ea $62 $c3
	ld   a, $40                                      ; $5984: $3e $40
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $5986: $ea $63 $c3
	ld   a, $03                                      ; $5989: $3e $03
	ld   b, $00                                      ; $598b: $06 $00
	ld   hl, $d000                                   ; $598d: $21 $00 $d0
	ld   c, $01                                      ; $5990: $0e $01
	ld   de, $7000                                   ; $5992: $11 $00 $70
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $5995: $cd $48 $07
	pop  af                                          ; $5998: $f1
	ld   [wWramBank], a                                  ; $5999: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $599c: $e0 $70
	push af                                          ; $599e: $f5
	ld   a, $54                                      ; $599f: $3e $54
	ld   [wFarCallAddr], a                                  ; $59a1: $ea $98 $c2
	ld   a, $57                                      ; $59a4: $3e $57
	ld   [wFarCallAddr+1], a                                  ; $59a6: $ea $99 $c2
	ld   a, $11                                      ; $59a9: $3e $11
	ld   [wFarCallBank], a                                  ; $59ab: $ea $9a $c2
	pop  af                                          ; $59ae: $f1
	call FarCall                                       ; $59af: $cd $62 $09
	ld   a, [$c9a5]                                  ; $59b2: $fa $a5 $c9
	ld   [wGameState], a                                  ; $59b5: $ea $a0 $c2
	ld   a, [$c9a6]                                  ; $59b8: $fa $a6 $c9
	ld   [wGameSubstate], a                                  ; $59bb: $ea $a1 $c2
	ret                                              ; $59be: $c9


Call_03e_59bf:
	push af                                          ; $59bf: $f5
	call InitWideTextBoxDimensions                                       ; $59c0: $cd $ec $0f
	call ClearTextBoxDimensionsAndSetDefaultTextStyle                                       ; $59c3: $cd $09 $14
	ld   bc, $0e03                                   ; $59c6: $01 $03 $0e
	call SetKanjiTextBoxDimensions                                       ; $59c9: $cd $24 $14
	ld   bc, $0000                                   ; $59cc: $01 $00 $00
	call SetCurrKanjiColAndRowToDrawOn                                       ; $59cf: $cd $34 $14
	pop  af                                          ; $59d2: $f1
	add  a                                           ; $59d3: $87
	ld   h, $00                                      ; $59d4: $26 $00
	ld   l, a                                        ; $59d6: $6f
	ld   bc, $59ea                                   ; $59d7: $01 $ea $59
	add  hl, bc                                      ; $59da: $09
	ld   a, [hl+]                                    ; $59db: $2a
	ld   h, [hl]                                     ; $59dc: $66
	ld   l, a                                        ; $59dd: $6f
	ld   bc, $59ea                                   ; $59de: $01 $ea $59
	add  hl, bc                                      ; $59e1: $09
	call PopulateKanjiConvoStructForCurrTextBox                                       ; $59e2: $cd $27 $10
	xor  a                                           ; $59e5: $af
	ld   [$c9ae], a                                  ; $59e6: $ea $ae $c9
	ret                                              ; $59e9: $c9


	jr   nz, jr_03e_59ec                             ; $59ea: $20 $00

jr_03e_59ec:
	ld   [hl+], a                                    ; $59ec: $22
	nop                                              ; $59ed: $00
	inc  h                                           ; $59ee: $24
	nop                                              ; $59ef: $00
	daa                                              ; $59f0: $27
	nop                                              ; $59f1: $00
	ld   a, [hl+]                                    ; $59f2: $2a
	nop                                              ; $59f3: $00
	dec  l                                           ; $59f4: $2d
	nop                                              ; $59f5: $00
	jr   nc, jr_03e_59f8                             ; $59f6: $30 $00

jr_03e_59f8:
	inc  sp                                          ; $59f8: $33
	nop                                              ; $59f9: $00
	ld   [hl], $00                                   ; $59fa: $36 $00
	add  hl, sp                                      ; $59fc: $39
	nop                                              ; $59fd: $00
	inc  a                                           ; $59fe: $3c
	nop                                              ; $59ff: $00
	ld   b, b                                        ; $5a00: $40
	nop                                              ; $5a01: $00
	ld   b, h                                        ; $5a02: $44
	nop                                              ; $5a03: $00
	ld   c, d                                        ; $5a04: $4a
	nop                                              ; $5a05: $00
	ld   d, c                                        ; $5a06: $51
	nop                                              ; $5a07: $00
	ld   e, b                                        ; $5a08: $58
	nop                                              ; $5a09: $00
	dec  de                                          ; $5a0a: $1b
	nop                                              ; $5a0b: $00
	inc  e                                           ; $5a0c: $1c
	nop                                              ; $5a0d: $00
	ld   d, d                                        ; $5a0e: $52
	ld   l, a                                        ; $5a0f: $6f
	nop                                              ; $5a10: $00
	ld   a, c                                        ; $5a11: $79
	stop                                             ; $5a12: $10 $00
	ld   h, e                                        ; $5a14: $63
	and  c                                           ; $5a15: $a1
	nop                                              ; $5a16: $00
	ld   h, l                                        ; $5a17: $65
	stop                                             ; $5a18: $10 $00
	ld   h, d                                        ; $5a1a: $62
	stop                                             ; $5a1b: $10 $00
	sbc  e                                           ; $5a1d: $9b
	ld   e, l                                        ; $5a1e: $5d
	nop                                              ; $5a1f: $00
	ld   a, b                                        ; $5a20: $78
	ld   a, b                                        ; $5a21: $78
	nop                                              ; $5a22: $00
	ld   a, l                                        ; $5a23: $7d
	ld   l, a                                        ; $5a24: $6f
	nop                                              ; $5a25: $00
	ld   e, e                                        ; $5a26: $5b
	sub  e                                           ; $5a27: $93
	ld   d, h                                        ; $5a28: $54
	nop                                              ; $5a29: $00
	ld   h, [hl]                                     ; $5a2a: $66
	sub  e                                           ; $5a2b: $93
	ld   d, h                                        ; $5a2c: $54
	nop                                              ; $5a2d: $00
	ld   [bc], a                                     ; $5a2e: $02
	ld   a, e                                        ; $5a2f: $7b
	ld   [bc], a                                     ; $5a30: $02
	ld   [hl], l                                     ; $5a31: $75
	stop                                             ; $5a32: $10 $00
	inc  b                                           ; $5a34: $04
	and  b                                           ; $5a35: $a0
	ld   [bc], a                                     ; $5a36: $02
	ld   a, e                                        ; $5a37: $7b
	ld   [bc], a                                     ; $5a38: $02
	ld   [hl], l                                     ; $5a39: $75
	nop                                              ; $5a3a: $00
	inc  b                                           ; $5a3b: $04
	ld   c, $02                                      ; $5a3c: $0e $02
	ld   a, e                                        ; $5a3e: $7b
	ld   [bc], a                                     ; $5a3f: $02
	ld   [hl], l                                     ; $5a40: $75
	nop                                              ; $5a41: $00
	ld   l, e                                        ; $5a42: $6b
	sbc  d                                           ; $5a43: $9a
	ld   h, [hl]                                     ; $5a44: $66
	sub  c                                           ; $5a45: $91
	sbc  [hl]                                        ; $5a46: $9e
	ld   d, d                                        ; $5a47: $52
	ld   e, l                                        ; $5a48: $5d
	sbc  l                                           ; $5a49: $9d
	sub  [hl]                                        ; $5a4a: $96
	sbc  a                                           ; $5a4b: $9f
	nop                                              ; $5a4c: $00

Call_03e_5a4d:
	push af                                          ; $5a4d: $f5
	ld   a, [$c9a7]                                  ; $5a4e: $fa $a7 $c9
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $5a51: $cd $76 $30
	pop  af                                          ; $5a54: $f1
	ld   de, $7180                                   ; $5a55: $11 $80 $71
	push af                                          ; $5a58: $f5
	ld   a, $1c                                      ; $5a59: $3e $1c
	ld   [wFarCallAddr], a                                  ; $5a5b: $ea $98 $c2
	ld   a, $41                                      ; $5a5e: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $5a60: $ea $99 $c2
	ld   a, $01                                      ; $5a63: $3e $01
	ld   [wFarCallBank], a                                  ; $5a65: $ea $9a $c2
	pop  af                                          ; $5a68: $f1
	call FarCall                                       ; $5a69: $cd $62 $09
	ret                                              ; $5a6c: $c9


SetPushUpsState::
	ld   a, h                                        ; $5a6d: $7c
	ld   [$c9a5], a                                  ; $5a6e: $ea $a5 $c9
	ld   a, l                                        ; $5a71: $7d
	ld   [$c9a6], a                                  ; $5a72: $ea $a6 $c9
	ld   a, GS_PUSH_UPS                                      ; $5a75: $3e $19
	ld   [wGameState], a                                  ; $5a77: $ea $a0 $c2
	ld   a, $00                                      ; $5a7a: $3e $00
	ld   [wGameSubstate], a                                  ; $5a7c: $ea $a1 $c2
	ret                                              ; $5a7f: $c9


GameState1a_MockBattle::
	ld   a, [wGameSubstate]                                  ; $5a80: $fa $a1 $c2
	rst  JumpTable                                         ; $5a83: $df
	and  d                                           ; $5a84: $a2
	ld   e, d                                        ; $5a85: $5a
	add  b                                           ; $5a86: $80
	ld   e, e                                        ; $5a87: $5b
	sbc  l                                           ; $5a88: $9d
	ld   e, e                                        ; $5a89: $5b
	cp   [hl]                                        ; $5a8a: $be
	ld   e, e                                        ; $5a8b: $5b
	reti                                             ; $5a8c: $d9


	ld   e, e                                        ; $5a8d: $5b
	ld   a, [bc]                                     ; $5a8e: $0a
	ld   e, h                                        ; $5a8f: $5c
	jr   nc, @+$5e                                   ; $5a90: $30 $5c

	ld   d, c                                        ; $5a92: $51
	ld   e, h                                        ; $5a93: $5c
	ld   l, c                                        ; $5a94: $69
	ld   e, h                                        ; $5a95: $5c
	adc  d                                           ; $5a96: $8a
	ld   e, h                                        ; $5a97: $5c
	and  d                                           ; $5a98: $a2
	ld   e, h                                        ; $5a99: $5c
	call z, $f75c                                    ; $5a9a: $cc $5c $f7
	ld   e, h                                        ; $5a9d: $5c
	dec  e                                           ; $5a9e: $1d
	ld   e, l                                        ; $5a9f: $5d
	ccf                                              ; $5aa0: $3f
	ld   e, l                                        ; $5aa1: $5d
	call TurnOffLCD                                       ; $5aa2: $cd $e3 $08
	ld   a, $ff                                      ; $5aa5: $3e $ff
	ld   [wInGameInputsEnabled], a                                  ; $5aa7: $ea $0e $c2
	ld   a, $0c                                      ; $5aaa: $3e $0c
	ld   [wBaseInitialStickyCounter], a                                  ; $5aac: $ea $13 $c2
	ld   a, $04                                      ; $5aaf: $3e $04
	ld   [wBaseRepeatedStickyCounter], a                                  ; $5ab1: $ea $14 $c2
	call ClearOam                                       ; $5ab4: $cd $d7 $0d
	call ClearDisplayRegsAllowVBlankInt                                       ; $5ab7: $cd $59 $0b
	ld   a, $07                                      ; $5aba: $3e $07
	ld   [wLCDC], a                                  ; $5abc: $ea $03 $c2
	xor  a                                           ; $5abf: $af
	push af                                          ; $5ac0: $f5
	ld   a, $1a                                      ; $5ac1: $3e $1a
	ld   [wFarCallAddr], a                                  ; $5ac3: $ea $98 $c2
	ld   a, $48                                      ; $5ac6: $3e $48
	ld   [wFarCallAddr+1], a                                  ; $5ac8: $ea $99 $c2
	ld   a, $0a                                      ; $5acb: $3e $0a
	ld   [wFarCallBank], a                                  ; $5acd: $ea $9a $c2
	pop  af                                          ; $5ad0: $f1
	call FarCall                                       ; $5ad1: $cd $62 $09
	push af                                          ; $5ad4: $f5
	ld   a, $34                                      ; $5ad5: $3e $34
	ld   [wFarCallAddr], a                                  ; $5ad7: $ea $98 $c2
	ld   a, $49                                      ; $5ada: $3e $49
	ld   [wFarCallAddr+1], a                                  ; $5adc: $ea $99 $c2
	ld   a, $0a                                      ; $5adf: $3e $0a
	ld   [wFarCallBank], a                                  ; $5ae1: $ea $9a $c2
	pop  af                                          ; $5ae4: $f1
	call FarCall                                       ; $5ae5: $cd $62 $09
	ld   b, $04                                      ; $5ae8: $06 $04
	ld   c, $00                                      ; $5aea: $0e $00
	push af                                          ; $5aec: $f5
	ld   a, $ba                                      ; $5aed: $3e $ba
	ld   [wFarCallAddr], a                                  ; $5aef: $ea $98 $c2
	ld   a, $54                                      ; $5af2: $3e $54
	ld   [wFarCallAddr+1], a                                  ; $5af4: $ea $99 $c2
	ld   a, $0a                                      ; $5af7: $3e $0a
	ld   [wFarCallBank], a                                  ; $5af9: $ea $9a $c2
	pop  af                                          ; $5afc: $f1
	call FarCall                                       ; $5afd: $cd $62 $09
	ld   a, $04                                      ; $5b00: $3e $04
	ld   [$ca71], a                                  ; $5b02: $ea $71 $ca
	ld   a, $00                                      ; $5b05: $3e $00
	ld   [$c9cf], a                                  ; $5b07: $ea $cf $c9
	xor  a                                           ; $5b0a: $af
	ld   [$c9d2], a                                  ; $5b0b: $ea $d2 $c9
	ld   a, $ff                                      ; $5b0e: $3e $ff
	ld   [$c9d1], a                                  ; $5b10: $ea $d1 $c9
	ld   b, a                                        ; $5b13: $47
	ld   c, a                                        ; $5b14: $4f
	ld   [$c9d0], a                                  ; $5b15: $ea $d0 $c9
	ld   d, $00                                      ; $5b18: $16 $00
	call LoadBattleScreen                               ; $5b1a: $cd $6a $64
	ld   a, $01                                      ; $5b1d: $3e $01
	ld   hl, $7000                                   ; $5b1f: $21 $00 $70
	ld   de, wBGPalettes                                   ; $5b22: $11 $de $c2
	ld   bc, $0080                                   ; $5b25: $01 $80 $00
	call FarMemCopy                                       ; $5b28: $cd $b2 $09
	ld   bc, $003f                                   ; $5b2b: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $5b2e: $cd $aa $04
	xor  a                                           ; $5b31: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $5b32: $ea $62 $c3
	ld   a, $40                                      ; $5b35: $3e $40
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $5b37: $ea $63 $c3
	ld   c, $1e                                      ; $5b3a: $0e $1e
	ld   de, $687c                                   ; $5b3c: $11 $7c $68
	ld   a, [$c9b1]                                  ; $5b3f: $fa $b1 $c9
	or   a                                           ; $5b42: $b7
	jr   z, jr_03e_5b4a                              ; $5b43: $28 $05

	ld   c, $1e                                      ; $5b45: $0e $1e
	ld   de, $697c                                   ; $5b47: $11 $7c $69

jr_03e_5b4a:
	ld   a, $03                                      ; $5b4a: $3e $03
	ld   b, $01                                      ; $5b4c: $06 $01
	ld   hl, $7000                                   ; $5b4e: $21 $00 $70
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $5b51: $cd $48 $07
	call TurnOnLCD                                       ; $5b54: $cd $09 $09
	ld   a, $0c                                      ; $5b57: $3e $0c
	call PlaySong                                       ; $5b59: $cd $92 $1a
	ld   a, $07                                      ; $5b5c: $3e $07
	call SafeSetAudVolForMultipleChannels                                       ; $5b5e: $cd $e0 $1c
	call ClearOam                                       ; $5b61: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $5b64: $cd $d3 $2e
	push af                                          ; $5b67: $f5
	ld   a, $54                                      ; $5b68: $3e $54
	ld   [wFarCallAddr], a                                  ; $5b6a: $ea $98 $c2
	ld   a, $57                                      ; $5b6d: $3e $57
	ld   [wFarCallAddr+1], a                                  ; $5b6f: $ea $99 $c2
	ld   a, $11                                      ; $5b72: $3e $11
	ld   [wFarCallBank], a                                  ; $5b74: $ea $9a $c2
	pop  af                                          ; $5b77: $f1
	call FarCall                                       ; $5b78: $cd $62 $09
	ld   hl, wGameSubstate                                   ; $5b7b: $21 $a1 $c2
	inc  [hl]                                        ; $5b7e: $34
	ret                                              ; $5b7f: $c9


	call ClearOam                                       ; $5b80: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $5b83: $cd $d3 $2e
	ld   a, [wInGameButtonsPressed]                                  ; $5b86: $fa $10 $c2
	bit  0, a                                        ; $5b89: $cb $47
	jr   z, jr_03e_5b9c                              ; $5b8b: $28 $0f

	call Call_03e_5d8c                               ; $5b8d: $cd $8c $5d
	call Call_03e_65cc                               ; $5b90: $cd $cc $65
	ld   a, $00                                      ; $5b93: $3e $00
	call Call_03e_679f                               ; $5b95: $cd $9f $67
	ld   hl, wGameSubstate                                   ; $5b98: $21 $a1 $c2
	inc  [hl]                                        ; $5b9b: $34

jr_03e_5b9c:
	ret                                              ; $5b9c: $c9


	call ClearOam                                       ; $5b9d: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $5ba0: $cd $d3 $2e
	push af                                          ; $5ba3: $f5
	ld   a, $a5                                      ; $5ba4: $3e $a5
	ld   [wFarCallAddr], a                                  ; $5ba6: $ea $98 $c2
	ld   a, $66                                      ; $5ba9: $3e $66
	ld   [wFarCallAddr+1], a                                  ; $5bab: $ea $99 $c2
	ld   a, $3e                                      ; $5bae: $3e $3e
	ld   [wFarCallBank], a                                  ; $5bb0: $ea $9a $c2
	pop  af                                          ; $5bb3: $f1
	call FarCall                                       ; $5bb4: $cd $62 $09
	jr   nz, jr_03e_5bbd                             ; $5bb7: $20 $04

	ld   hl, wGameSubstate                                   ; $5bb9: $21 $a1 $c2
	inc  [hl]                                        ; $5bbc: $34

jr_03e_5bbd:
	ret                                              ; $5bbd: $c9


	call ClearOam                                       ; $5bbe: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $5bc1: $cd $d3 $2e
	ld   a, [wInGameButtonsPressed]                                  ; $5bc4: $fa $10 $c2
	bit  0, a                                        ; $5bc7: $cb $47
	jr   z, jr_03e_5bd8                              ; $5bc9: $28 $0d

	call Call_03e_5d8c                               ; $5bcb: $cd $8c $5d
	call Call_03e_65de                               ; $5bce: $cd $de $65
	call Call_03e_67c0                               ; $5bd1: $cd $c0 $67
	ld   hl, wGameSubstate                                   ; $5bd4: $21 $a1 $c2
	inc  [hl]                                        ; $5bd7: $34

jr_03e_5bd8:
	ret                                              ; $5bd8: $c9


	push af                                          ; $5bd9: $f5
	ld   a, $ae                                      ; $5bda: $3e $ae
	ld   [wFarCallAddr], a                                  ; $5bdc: $ea $98 $c2
	ld   a, $66                                      ; $5bdf: $3e $66
	ld   [wFarCallAddr+1], a                                  ; $5be1: $ea $99 $c2
	ld   a, $3e                                      ; $5be4: $3e $3e
	ld   [wFarCallBank], a                                  ; $5be6: $ea $9a $c2
	pop  af                                          ; $5be9: $f1
	call FarCall                                       ; $5bea: $cd $62 $09
	jr   nz, jr_03e_5c03                             ; $5bed: $20 $14

	ld   hl, $c9d0                                   ; $5bef: $21 $d0 $c9
	dec  [hl]                                        ; $5bf2: $35
	ld   a, [hl]                                     ; $5bf3: $7e
	call Call_03e_66fd                               ; $5bf4: $cd $fd $66
	call Call_03e_67e4                               ; $5bf7: $cd $e4 $67
	ld   a, $0f                                      ; $5bfa: $3e $0f
	call Call_03e_65de                               ; $5bfc: $cd $de $65
	ld   hl, wGameSubstate                                   ; $5bff: $21 $a1 $c2
	inc  [hl]                                        ; $5c02: $34

jr_03e_5c03:
	call ClearOam                                       ; $5c03: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $5c06: $cd $d3 $2e
	ret                                              ; $5c09: $c9


	push af                                          ; $5c0a: $f5
	ld   a, $9d                                      ; $5c0b: $3e $9d
	ld   [wFarCallAddr], a                                  ; $5c0d: $ea $98 $c2
	ld   a, $6b                                      ; $5c10: $3e $6b
	ld   [wFarCallAddr+1], a                                  ; $5c12: $ea $99 $c2
	ld   a, $3e                                      ; $5c15: $3e $3e
	ld   [wFarCallBank], a                                  ; $5c17: $ea $9a $c2
	pop  af                                          ; $5c1a: $f1
	call FarCall                                       ; $5c1b: $cd $62 $09
	jr   nz, jr_03e_5c29                             ; $5c1e: $20 $09

	ld   a, $00                                      ; $5c20: $3e $00
	call Call_03e_65cc                               ; $5c22: $cd $cc $65
	ld   hl, wGameSubstate                                   ; $5c25: $21 $a1 $c2
	inc  [hl]                                        ; $5c28: $34

jr_03e_5c29:
	call ClearOam                                       ; $5c29: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $5c2c: $cd $d3 $2e
	ret                                              ; $5c2f: $c9


	call ClearOam                                       ; $5c30: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $5c33: $cd $d3 $2e
	push af                                          ; $5c36: $f5
	ld   a, $a5                                      ; $5c37: $3e $a5
	ld   [wFarCallAddr], a                                  ; $5c39: $ea $98 $c2
	ld   a, $66                                      ; $5c3c: $3e $66
	ld   [wFarCallAddr+1], a                                  ; $5c3e: $ea $99 $c2
	ld   a, $3e                                      ; $5c41: $3e $3e
	ld   [wFarCallBank], a                                  ; $5c43: $ea $9a $c2
	pop  af                                          ; $5c46: $f1
	call FarCall                                       ; $5c47: $cd $62 $09
	jr   nz, jr_03e_5c50                             ; $5c4a: $20 $04

	ld   hl, wGameSubstate                                   ; $5c4c: $21 $a1 $c2
	inc  [hl]                                        ; $5c4f: $34

jr_03e_5c50:
	ret                                              ; $5c50: $c9


	call ClearOam                                       ; $5c51: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $5c54: $cd $d3 $2e
	ld   a, [wInGameButtonsPressed]                                  ; $5c57: $fa $10 $c2
	bit  0, a                                        ; $5c5a: $cb $47
	jr   z, jr_03e_5c68                              ; $5c5c: $28 $0a

	call Call_03e_5d8c                               ; $5c5e: $cd $8c $5d
	call Call_03e_65cc                               ; $5c61: $cd $cc $65
	ld   hl, wGameSubstate                                   ; $5c64: $21 $a1 $c2
	inc  [hl]                                        ; $5c67: $34

jr_03e_5c68:
	ret                                              ; $5c68: $c9


	call ClearOam                                       ; $5c69: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $5c6c: $cd $d3 $2e
	push af                                          ; $5c6f: $f5
	ld   a, $a5                                      ; $5c70: $3e $a5
	ld   [wFarCallAddr], a                                  ; $5c72: $ea $98 $c2
	ld   a, $66                                      ; $5c75: $3e $66
	ld   [wFarCallAddr+1], a                                  ; $5c77: $ea $99 $c2
	ld   a, $3e                                      ; $5c7a: $3e $3e
	ld   [wFarCallBank], a                                  ; $5c7c: $ea $9a $c2
	pop  af                                          ; $5c7f: $f1
	call FarCall                                       ; $5c80: $cd $62 $09
	jr   nz, jr_03e_5c89                             ; $5c83: $20 $04

	ld   hl, wGameSubstate                                   ; $5c85: $21 $a1 $c2
	inc  [hl]                                        ; $5c88: $34

jr_03e_5c89:
	ret                                              ; $5c89: $c9


	call ClearOam                                       ; $5c8a: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $5c8d: $cd $d3 $2e
	ld   a, [wInGameButtonsPressed]                                  ; $5c90: $fa $10 $c2
	bit  0, a                                        ; $5c93: $cb $47
	jr   z, jr_03e_5ca1                              ; $5c95: $28 $0a

	call Call_03e_5d8c                               ; $5c97: $cd $8c $5d
	call Call_03e_65de                               ; $5c9a: $cd $de $65
	ld   hl, wGameSubstate                                   ; $5c9d: $21 $a1 $c2
	inc  [hl]                                        ; $5ca0: $34

jr_03e_5ca1:
	ret                                              ; $5ca1: $c9


	push af                                          ; $5ca2: $f5
	ld   a, $ae                                      ; $5ca3: $3e $ae
	ld   [wFarCallAddr], a                                  ; $5ca5: $ea $98 $c2
	ld   a, $66                                      ; $5ca8: $3e $66
	ld   [wFarCallAddr+1], a                                  ; $5caa: $ea $99 $c2
	ld   a, $3e                                      ; $5cad: $3e $3e
	ld   [wFarCallBank], a                                  ; $5caf: $ea $9a $c2
	pop  af                                          ; $5cb2: $f1
	call FarCall                                       ; $5cb3: $cd $62 $09
	jr   nz, jr_03e_5cc5                             ; $5cb6: $20 $0d

	ld   hl, wGameSubstate                                   ; $5cb8: $21 $a1 $c2
	inc  [hl]                                        ; $5cbb: $34
	ld   hl, $c9d1                                   ; $5cbc: $21 $d1 $c9
	dec  [hl]                                        ; $5cbf: $35
	ld   a, $00                                      ; $5cc0: $3e $00
	call Call_03e_66c7                               ; $5cc2: $cd $c7 $66

jr_03e_5cc5:
	call ClearOam                                       ; $5cc5: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $5cc8: $cd $d3 $2e
	ret                                              ; $5ccb: $c9


	call ClearOam                                       ; $5ccc: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $5ccf: $cd $d3 $2e
	push af                                          ; $5cd2: $f5
	ld   a, $18                                      ; $5cd3: $3e $18
	ld   [wFarCallAddr], a                                  ; $5cd5: $ea $98 $c2
	ld   a, $67                                      ; $5cd8: $3e $67
	ld   [wFarCallAddr+1], a                                  ; $5cda: $ea $99 $c2
	ld   a, $3e                                      ; $5cdd: $3e $3e
	ld   [wFarCallBank], a                                  ; $5cdf: $ea $9a $c2
	pop  af                                          ; $5ce2: $f1
	call FarCall                                       ; $5ce3: $cd $62 $09
	jr   nz, jr_03e_5cf6                             ; $5ce6: $20 $0e

	ld   hl, $c9d2                                   ; $5ce8: $21 $d2 $c9
	ld   a, [hl]                                     ; $5ceb: $7e
	xor  $10                                         ; $5cec: $ee $10
	ld   [hl], a                                     ; $5cee: $77
	call Call_03e_66e2                               ; $5cef: $cd $e2 $66
	ld   hl, wGameSubstate                                   ; $5cf2: $21 $a1 $c2
	inc  [hl]                                        ; $5cf5: $34

jr_03e_5cf6:
	ret                                              ; $5cf6: $c9


	call ClearOam                                       ; $5cf7: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $5cfa: $cd $d3 $2e
	push af                                          ; $5cfd: $f5
	ld   a, $33                                      ; $5cfe: $3e $33
	ld   [wFarCallAddr], a                                  ; $5d00: $ea $98 $c2
	ld   a, $67                                      ; $5d03: $3e $67
	ld   [wFarCallAddr+1], a                                  ; $5d05: $ea $99 $c2
	ld   a, $3e                                      ; $5d08: $3e $3e
	ld   [wFarCallBank], a                                  ; $5d0a: $ea $9a $c2
	pop  af                                          ; $5d0d: $f1
	call FarCall                                       ; $5d0e: $cd $62 $09
	jr   nz, jr_03e_5d1c                             ; $5d11: $20 $09

	ld   a, $00                                      ; $5d13: $3e $00
	call Call_03e_65cc                               ; $5d15: $cd $cc $65
	ld   hl, wGameSubstate                                   ; $5d18: $21 $a1 $c2
	inc  [hl]                                        ; $5d1b: $34

jr_03e_5d1c:
	ret                                              ; $5d1c: $c9


	call ClearOam                                       ; $5d1d: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $5d20: $cd $d3 $2e
	push af                                          ; $5d23: $f5
	ld   a, $a5                                      ; $5d24: $3e $a5
	ld   [wFarCallAddr], a                                  ; $5d26: $ea $98 $c2
	ld   a, $66                                      ; $5d29: $3e $66
	ld   [wFarCallAddr+1], a                                  ; $5d2b: $ea $99 $c2
	ld   a, $3e                                      ; $5d2e: $3e $3e
	ld   [wFarCallBank], a                                  ; $5d30: $ea $9a $c2
	pop  af                                          ; $5d33: $f1
	call FarCall                                       ; $5d34: $cd $62 $09
	jr   nz, jr_03e_5d3e                             ; $5d37: $20 $05

	ld   a, $01                                      ; $5d39: $3e $01
	ld   [wGameSubstate], a                                  ; $5d3b: $ea $a1 $c2

jr_03e_5d3e:
	ret                                              ; $5d3e: $c9


	ld   a, [wInGameButtonsPressed]                                  ; $5d3f: $fa $10 $c2
	bit  0, a                                        ; $5d42: $cb $47
	ret  z                                           ; $5d44: $c8

	xor  a                                           ; $5d45: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $5d46: $ea $62 $c3
	ld   a, $40                                      ; $5d49: $3e $40
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $5d4b: $ea $63 $c3
	ld   b, $1e                                      ; $5d4e: $06 $1e
	ld   hl, $687c                                   ; $5d50: $21 $7c $68
	ld   a, [$c9b1]                                  ; $5d53: $fa $b1 $c9
	or   a                                           ; $5d56: $b7
	jr   z, jr_03e_5d5e                              ; $5d57: $28 $05

	ld   b, $1e                                      ; $5d59: $06 $1e
	ld   hl, $697c                                   ; $5d5b: $21 $7c $69

jr_03e_5d5e:
	ld   a, $03                                      ; $5d5e: $3e $03
	ld   c, $01                                      ; $5d60: $0e $01
	ld   de, $7000                                   ; $5d62: $11 $00 $70
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $5d65: $cd $48 $07
	push af                                          ; $5d68: $f5
	ld   a, $54                                      ; $5d69: $3e $54
	ld   [wFarCallAddr], a                                  ; $5d6b: $ea $98 $c2
	ld   a, $57                                      ; $5d6e: $3e $57
	ld   [wFarCallAddr+1], a                                  ; $5d70: $ea $99 $c2
	ld   a, $11                                      ; $5d73: $3e $11
	ld   [wFarCallBank], a                                  ; $5d75: $ea $9a $c2
	pop  af                                          ; $5d78: $f1
	call FarCall                                       ; $5d79: $cd $62 $09
	call TurnOffLCD                                       ; $5d7c: $cd $e3 $08
	ld   a, [$c9af]                                  ; $5d7f: $fa $af $c9
	ld   [wGameState], a                                  ; $5d82: $ea $a0 $c2
	ld   a, [$c9b0]                                  ; $5d85: $fa $b0 $c9
	ld   [wGameSubstate], a                                  ; $5d88: $ea $a1 $c2
	ret                                              ; $5d8b: $c9


Call_03e_5d8c:
jr_03e_5d8c:
	ld   hl, $c9cf                                   ; $5d8c: $21 $cf $c9
	ld   a, [hl]                                     ; $5d8f: $7e
	inc  [hl]                                        ; $5d90: $34
	ld   c, a                                        ; $5d91: $4f
	ld   b, $00                                      ; $5d92: $06 $00
	ld   hl, $5da4                                   ; $5d94: $21 $a4 $5d
	add  hl, bc                                      ; $5d97: $09
	ld   a, [hl]                                     ; $5d98: $7e
	cp   $ff                                         ; $5d99: $fe $ff
	jr   nz, jr_03e_5da3                             ; $5d9b: $20 $06

	xor  a                                           ; $5d9d: $af
	ld   [$c9cf], a                                  ; $5d9e: $ea $cf $c9
	jr   jr_03e_5d8c                                 ; $5da1: $18 $e9

jr_03e_5da3:
	ret                                              ; $5da3: $c9


	ld   bc, $0308                                   ; $5da4: $01 $08 $03
	rlca                                             ; $5da7: $07
	ld   bc, $0308                                   ; $5da8: $01 $08 $03
	rlca                                             ; $5dab: $07
	ld   bc, $0308                                   ; $5dac: $01 $08 $03
	rlca                                             ; $5daf: $07
	nop                                              ; $5db0: $00
	dec  c                                           ; $5db1: $0d
	inc  b                                           ; $5db2: $04
	rrca                                             ; $5db3: $0f
	ld   bc, $040c                                   ; $5db4: $01 $0c $04
	ld   c, $01                                      ; $5db7: $0e $01
	dec  c                                           ; $5db9: $0d
	inc  b                                           ; $5dba: $04
	ld   c, $ff                                      ; $5dbb: $0e $ff
	ld   a, h                                        ; $5dbd: $7c
	ld   [$c9af], a                                  ; $5dbe: $ea $af $c9
	ld   a, l                                        ; $5dc1: $7d
	ld   [$c9b0], a                                  ; $5dc2: $ea $b0 $c9
	ld   a, GS_MOCK_BATTLE                                      ; $5dc5: $3e $1a
	ld   [wGameState], a                                  ; $5dc7: $ea $a0 $c2
	ld   a, $00                                      ; $5dca: $3e $00
	ld   [wGameSubstate], a                                  ; $5dcc: $ea $a1 $c2
	ret                                              ; $5dcf: $c9


Call_03e_5dd0:
	ld   a, [$c9be]                                  ; $5dd0: $fa $be $c9
	rst  JumpTable                                         ; $5dd3: $df
	ld   e, $5e                                      ; $5dd4: $1e $5e
	ld   h, $5e                                      ; $5dd6: $26 $5e
	ldh  [$5d], a                                    ; $5dd8: $e0 $5d
	and  b                                           ; $5dda: $a0
	ld   l, c                                        ; $5ddb: $69
	call nz, $1a69                                   ; $5ddc: $c4 $69 $1a
	ld   e, [hl]                                     ; $5ddf: $5e
	ret                                              ; $5de0: $c9


	ld   a, $1c                                      ; $5de1: $3e $1c
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $5de3: $ea $62 $c3
	ld   a, $18                                      ; $5de6: $3e $18
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $5de8: $ea $63 $c3
	ld   b, $1e                                      ; $5deb: $06 $1e
	ld   hl, $687c                                   ; $5ded: $21 $7c $68
	ld   a, [$c9b1]                                  ; $5df0: $fa $b1 $c9
	or   a                                           ; $5df3: $b7
	jr   z, jr_03e_5dfb                              ; $5df4: $28 $05

	ld   b, $1e                                      ; $5df6: $06 $1e
	ld   hl, $697c                                   ; $5df8: $21 $7c $69

jr_03e_5dfb:
	ld   a, $03                                      ; $5dfb: $3e $03
	ld   c, $01                                      ; $5dfd: $0e $01
	ld   de, $7000                                   ; $5dff: $11 $00 $70
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $5e02: $cd $48 $07
	call Call_03e_6352                               ; $5e05: $cd $52 $63
	ld   hl, $c9be                                   ; $5e08: $21 $be $c9
	inc  [hl]                                        ; $5e0b: $34
	call Call_03e_635d                               ; $5e0c: $cd $5d $63
	jr   nz, jr_03e_5e19                             ; $5e0f: $20 $08

	xor  a                                           ; $5e11: $af
	ld   [$c9bf], a                                  ; $5e12: $ea $bf $c9
	ld   hl, $c9be                                   ; $5e15: $21 $be $c9
	inc  [hl]                                        ; $5e18: $34

jr_03e_5e19:
	ret                                              ; $5e19: $c9


	xor  a                                           ; $5e1a: $af
	ld   [$c9be], a                                  ; $5e1b: $ea $be $c9
	xor  a                                           ; $5e1e: $af
	ld   [$c9bf], a                                  ; $5e1f: $ea $bf $c9
	ld   hl, $c9be                                   ; $5e22: $21 $be $c9
	inc  [hl]                                        ; $5e25: $34
	ld   hl, $c9bf                                   ; $5e26: $21 $bf $c9
	ld   a, [hl]                                     ; $5e29: $7e
	inc  [hl]                                        ; $5e2a: $34
	call Call_03e_60de                               ; $5e2b: $cd $de $60
	ld   a, [$c9bf]                                  ; $5e2e: $fa $bf $c9
	cp   $03                                         ; $5e31: $fe $03
	jr   nz, jr_03e_5e39                             ; $5e33: $20 $04

	ld   hl, $c9be                                   ; $5e35: $21 $be $c9
	inc  [hl]                                        ; $5e38: $34

jr_03e_5e39:
	ret                                              ; $5e39: $c9


	ld   a, $1c                                      ; $5e3a: $3e $1c
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $5e3c: $ea $62 $c3
	ld   a, $18                                      ; $5e3f: $3e $18
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $5e41: $ea $63 $c3
	ld   c, $1e                                      ; $5e44: $0e $1e
	ld   de, $687c                                   ; $5e46: $11 $7c $68
	ld   a, [$c9b1]                                  ; $5e49: $fa $b1 $c9
	or   a                                           ; $5e4c: $b7
	jr   z, jr_03e_5e54                              ; $5e4d: $28 $05

	ld   c, $1e                                      ; $5e4f: $0e $1e
	ld   de, $697c                                   ; $5e51: $11 $7c $69

jr_03e_5e54:
	ld   a, $03                                      ; $5e54: $3e $03
	ld   b, $01                                      ; $5e56: $06 $01
	ld   hl, $7000                                   ; $5e58: $21 $00 $70
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $5e5b: $cd $48 $07
	call Call_03e_6352                               ; $5e5e: $cd $52 $63
	ld   hl, $c9be                                   ; $5e61: $21 $be $c9
	inc  [hl]                                        ; $5e64: $34
	call Call_03e_635d                               ; $5e65: $cd $5d $63
	jr   nz, jr_03e_5e6e                             ; $5e68: $20 $04

	ld   hl, $c9be                                   ; $5e6a: $21 $be $c9
	inc  [hl]                                        ; $5e6d: $34

jr_03e_5e6e:
	ret                                              ; $5e6e: $c9


Call_03e_5e6f:
	ld   a, [$c9be]                                  ; $5e6f: $fa $be $c9
	rst  JumpTable                                         ; $5e72: $df
	ld   [$7b6b], a                                  ; $5e73: $ea $6b $7b
	ld   e, [hl]                                     ; $5e76: $5e
	dec  c                                           ; $5e77: $0d
	ld   l, h                                        ; $5e78: $6c
	ldh  [$5d], a                                    ; $5e79: $e0 $5d
	ld   a, $11                                      ; $5e7b: $3e $11
	call Func_1d3d                                       ; $5e7d: $cd $3d $1d
	or   a                                           ; $5e80: $b7
	jr   nz, jr_03e_5e88                             ; $5e81: $20 $05

	ld   a, $11                                      ; $5e83: $3e $11
	call PlaySoundEffect                                       ; $5e85: $cd $df $1a

jr_03e_5e88:
	ld   c, $04                                      ; $5e88: $0e $04

jr_03e_5e8a:
	ld   hl, $c9ca                                   ; $5e8a: $21 $ca $c9
	ld   a, [hl]                                     ; $5e8d: $7e
	cp   $06                                         ; $5e8e: $fe $06
	jr   nc, jr_03e_5ea4                             ; $5e90: $30 $12

	ld   hl, $c9cb                                   ; $5e92: $21 $cb $c9
	inc  [hl]                                        ; $5e95: $34
	dec  c                                           ; $5e96: $0d
	jr   nz, jr_03e_5e8a                             ; $5e97: $20 $f1

	ld   a, [hl]                                     ; $5e99: $7e
	cp   $f0                                         ; $5e9a: $fe $f0
	jr   c, jr_03e_5ea8                              ; $5e9c: $38 $0a

	ld   hl, $c9be                                   ; $5e9e: $21 $be $c9
	inc  [hl]                                        ; $5ea1: $34
	jr   jr_03e_5eab                                 ; $5ea2: $18 $07

jr_03e_5ea4:
	dec  [hl]                                        ; $5ea4: $35
	dec  c                                           ; $5ea5: $0d
	jr   nz, jr_03e_5e8a                             ; $5ea6: $20 $e2

jr_03e_5ea8:
	call Call_03e_6bb8                               ; $5ea8: $cd $b8 $6b

jr_03e_5eab:
	ret                                              ; $5eab: $c9


Call_03e_5eac:
	ld   a, [$c9be]                                  ; $5eac: $fa $be $c9
	rst  JumpTable                                         ; $5eaf: $df
	cp   h                                           ; $5eb0: $bc
	ld   e, [hl]                                     ; $5eb1: $5e
	ret  nc                                          ; $5eb2: $d0

	ld   e, [hl]                                     ; $5eb3: $5e
	rst  $38                                         ; $5eb4: $ff
	ld   e, [hl]                                     ; $5eb5: $5e
	ld   a, [hl-]                                    ; $5eb6: $3a
	ld   e, a                                        ; $5eb7: $5f
	call nc, $e05f                                   ; $5eb8: $d4 $5f $e0
	ld   e, l                                        ; $5ebb: $5d
	ld   c, $80                                      ; $5ebc: $0e $80
	ld   de, $8000                                   ; $5ebe: $11 $00 $80
	ld   a, $03                                      ; $5ec1: $3e $03
	ld   hl, $d000                                   ; $5ec3: $21 $00 $d0
	ld   b, $40                                      ; $5ec6: $06 $40
	call EnqueueHDMATransfer                                       ; $5ec8: $cd $7c $02
	ld   hl, $c9be                                   ; $5ecb: $21 $be $c9
	inc  [hl]                                        ; $5ece: $34
	ret                                              ; $5ecf: $c9


	ld   c, $80                                      ; $5ed0: $0e $80
	ld   de, $8400                                   ; $5ed2: $11 $00 $84
	ld   a, $03                                      ; $5ed5: $3e $03
	ld   hl, $d400                                   ; $5ed7: $21 $00 $d4
	ld   b, $40                                      ; $5eda: $06 $40
	call EnqueueHDMATransfer                                       ; $5edc: $cd $7c $02
	ld   a, [$c9ba]                                  ; $5edf: $fa $ba $c9
	cp   $50                                         ; $5ee2: $fe $50
	jr   nz, jr_03e_5efa                             ; $5ee4: $20 $14

	ld   a, $12                                      ; $5ee6: $3e $12
	ld   hl, $7ff0                                   ; $5ee8: $21 $f0 $7f
	ld   de, $c346                                   ; $5eeb: $11 $46 $c3
	ld   bc, $0010                                   ; $5eee: $01 $10 $00
	call FarMemCopy                                       ; $5ef1: $cd $b2 $09
	ld   bc, $343b                                   ; $5ef4: $01 $3b $34
	call SetBGandOBJPaletteRangesToUpdate                                       ; $5ef7: $cd $aa $04

jr_03e_5efa:
	ld   hl, $c9be                                   ; $5efa: $21 $be $c9
	inc  [hl]                                        ; $5efd: $34
	ret                                              ; $5efe: $c9


	ld   hl, $c9be                                   ; $5eff: $21 $be $c9
	inc  [hl]                                        ; $5f02: $34
	call Call_03e_6b75                               ; $5f03: $cd $75 $6b
	xor  a                                           ; $5f06: $af
	ld   [$c9bd], a                                  ; $5f07: $ea $bd $c9
	ld   a, [$c9b9]                                  ; $5f0a: $fa $b9 $c9
	cp   $04                                         ; $5f0d: $fe $04
	jr   nz, jr_03e_5f19                             ; $5f0f: $20 $08

	call Call_03e_6439                               ; $5f11: $cd $39 $64
	ld   a, $08                                      ; $5f14: $3e $08
	ld   [$c9bc], a                                  ; $5f16: $ea $bc $c9

jr_03e_5f19:
	ld   a, [$c9b6]                                  ; $5f19: $fa $b6 $c9
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $5f1c: $cd $76 $30
	ld   a, [$c9ba]                                  ; $5f1f: $fa $ba $c9
	ld   de, $7180                                   ; $5f22: $11 $80 $71
	push af                                          ; $5f25: $f5
	ld   a, $1c                                      ; $5f26: $3e $1c
	ld   [wFarCallAddr], a                                  ; $5f28: $ea $98 $c2
	ld   a, $41                                      ; $5f2b: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $5f2d: $ea $99 $c2
	ld   a, $01                                      ; $5f30: $3e $01
	ld   [wFarCallBank], a                                  ; $5f32: $ea $9a $c2
	pop  af                                          ; $5f35: $f1
	call FarCall                                       ; $5f36: $cd $62 $09
	ret                                              ; $5f39: $c9


	call Call_03e_6b2d                               ; $5f3a: $cd $2d $6b
	ld   de, $5fbd                                   ; $5f3d: $11 $bd $5f
	ld   a, [$c9b9]                                  ; $5f40: $fa $b9 $c9
	cp   $04                                         ; $5f43: $fe $04
	call z, Call_03e_5f97                            ; $5f45: $cc $97 $5f
	ld   a, [$c9b6]                                  ; $5f48: $fa $b6 $c9
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $5f4b: $cd $76 $30
	push af                                          ; $5f4e: $f5
	ld   a, $43                                      ; $5f4f: $3e $43
	ld   [wFarCallAddr], a                                  ; $5f51: $ea $98 $c2
	ld   a, $41                                      ; $5f54: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $5f56: $ea $99 $c2
	ld   a, $01                                      ; $5f59: $3e $01
	ld   [wFarCallBank], a                                  ; $5f5b: $ea $9a $c2
	pop  af                                          ; $5f5e: $f1
	call FarCall                                       ; $5f5f: $cd $62 $09
	ld   a, b                                        ; $5f62: $78
	cp   $80                                         ; $5f63: $fe $80
	jr   nc, jr_03e_5f75                             ; $5f65: $30 $0e

	ld   a, [$c9b9]                                  ; $5f67: $fa $b9 $c9
	cp   $04                                         ; $5f6a: $fe $04
	jr   nz, jr_03e_5f96                             ; $5f6c: $20 $28

	ld   a, c                                        ; $5f6e: $79
	cp   $9b                                         ; $5f6f: $fe $9b
	jr   nz, jr_03e_5f93                             ; $5f71: $20 $20

	jr   jr_03e_5f96                                 ; $5f73: $18 $21

jr_03e_5f75:
	ld   hl, $c9be                                   ; $5f75: $21 $be $c9
	inc  [hl]                                        ; $5f78: $34
	ld   a, $09                                      ; $5f79: $3e $09
	ld   [$c9bb], a                                  ; $5f7b: $ea $bb $c9
	ld   a, $01                                      ; $5f7e: $3e $01
	ld   [$c9bc], a                                  ; $5f80: $ea $bc $c9
	xor  a                                           ; $5f83: $af
	ld   [$c9bd], a                                  ; $5f84: $ea $bd $c9
	ld   a, [$c9b9]                                  ; $5f87: $fa $b9 $c9
	cp   $0a                                         ; $5f8a: $fe $0a
	jr   z, jr_03e_5f93                              ; $5f8c: $28 $05

	call Call_03e_6408                               ; $5f8e: $cd $08 $64
	jr   jr_03e_5f96                                 ; $5f91: $18 $03

jr_03e_5f93:
	call Call_03e_6439                               ; $5f93: $cd $39 $64

jr_03e_5f96:
	ret                                              ; $5f96: $c9


Call_03e_5f97:
	ld   hl, $c9bc                                   ; $5f97: $21 $bc $c9
	dec  [hl]                                        ; $5f9a: $35
	jr   nz, jr_03e_5fbc                             ; $5f9b: $20 $1f

jr_03e_5f9d:
	ld   hl, $c9bd                                   ; $5f9d: $21 $bd $c9
	ld   a, [hl]                                     ; $5fa0: $7e
	inc  [hl]                                        ; $5fa1: $34
	add  a                                           ; $5fa2: $87
	ld   l, a                                        ; $5fa3: $6f
	ld   h, $00                                      ; $5fa4: $26 $00
	add  hl, de                                      ; $5fa6: $19
	ld   a, [hl+]                                    ; $5fa7: $2a
	cp   $ff                                         ; $5fa8: $fe $ff
	jr   nz, jr_03e_5fb2                             ; $5faa: $20 $06

	xor  a                                           ; $5fac: $af
	ld   [$c9bd], a                                  ; $5fad: $ea $bd $c9
	jr   jr_03e_5f9d                                 ; $5fb0: $18 $eb

jr_03e_5fb2:
	ld   [$c9bc], a                                  ; $5fb2: $ea $bc $c9
	ld   a, [hl+]                                    ; $5fb5: $2a
	ld   [wSCX], a                                  ; $5fb6: $ea $07 $c2
	call Call_03e_6018                               ; $5fb9: $cd $18 $60

jr_03e_5fbc:
	ret                                              ; $5fbc: $c9


	ld   bc, $0104                              ; $5fbd: $01 $04 $01
	nop                                              ; $5fc0: $00
	ld   bc, $01fc                                   ; $5fc1: $01 $fc $01
	nop                                              ; $5fc4: $00
	rst  $38                                         ; $5fc5: $ff
	inc  b                                           ; $5fc6: $04
	ld   [$0004], sp                                 ; $5fc7: $08 $04 $00
	rst  $38                                         ; $5fca: $ff
	ld   bc, $010c                                   ; $5fcb: $01 $0c $01
	nop                                              ; $5fce: $00
	ld   bc, $01f4                                   ; $5fcf: $01 $f4 $01
	nop                                              ; $5fd2: $00
	rst  $38                                         ; $5fd3: $ff
	ld   a, [$c9b9]                                  ; $5fd4: $fa $b9 $c9
	cp   $0a                                         ; $5fd7: $fe $0a
	jr   nz, jr_03e_5fe9                             ; $5fd9: $20 $0e

	ld   hl, $c9bb                                   ; $5fdb: $21 $bb $c9
	dec  [hl]                                        ; $5fde: $35
	jr   z, jr_03e_5fe9                              ; $5fdf: $28 $08

	ld   de, $5fc6                                   ; $5fe1: $11 $c6 $5f
	call Call_03e_5f97                               ; $5fe4: $cd $97 $5f
	jr   jr_03e_6017                                 ; $5fe7: $18 $2e

jr_03e_5fe9:
	call Call_03e_6408                               ; $5fe9: $cd $08 $64
	xor  a                                           ; $5fec: $af
	ld   [wSCX], a                                  ; $5fed: $ea $07 $c2
	call Call_03e_6018                               ; $5ff0: $cd $18 $60
	ld   hl, $c9be                                   ; $5ff3: $21 $be $c9
	inc  [hl]                                        ; $5ff6: $34
	ld   a, [$c9b5]                                  ; $5ff7: $fa $b5 $c9
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $5ffa: $cd $76 $30
	ld   a, [$c9b7]                                  ; $5ffd: $fa $b7 $c9
	ld   de, $7180                                   ; $6000: $11 $80 $71
	push af                                          ; $6003: $f5
	ld   a, $1c                                      ; $6004: $3e $1c
	ld   [wFarCallAddr], a                                  ; $6006: $ea $98 $c2
	ld   a, $41                                      ; $6009: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $600b: $ea $99 $c2
	ld   a, $01                                      ; $600e: $3e $01
	ld   [wFarCallBank], a                                  ; $6010: $ea $9a $c2
	pop  af                                          ; $6013: $f1
	call FarCall                                       ; $6014: $cd $62 $09

jr_03e_6017:
	ret                                              ; $6017: $c9


Call_03e_6018:
	ld   a, [$c9b6]                                  ; $6018: $fa $b6 $c9
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $601b: $cd $76 $30
	ld   bc, $380f                                   ; $601e: $01 $0f $38
	ld   a, [wSCX]                                  ; $6021: $fa $07 $c2
	cpl                                              ; $6024: $2f
	inc  a                                           ; $6025: $3c
	add  b                                           ; $6026: $80
	ld   b, a                                        ; $6027: $47
	push af                                          ; $6028: $f5
	ld   a, $2f                                      ; $6029: $3e $2f
	ld   [wFarCallAddr], a                                  ; $602b: $ea $98 $c2
	ld   a, $41                                      ; $602e: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $6030: $ea $99 $c2
	ld   a, $01                                      ; $6033: $3e $01
	ld   [wFarCallBank], a                                  ; $6035: $ea $9a $c2
	pop  af                                          ; $6038: $f1
	call FarCall                                       ; $6039: $cd $62 $09
	ld   a, [$c9b4]                                  ; $603c: $fa $b4 $c9
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $603f: $cd $76 $30
	ld   a, $00                                      ; $6042: $3e $00
	ld   de, $7180                                   ; $6044: $11 $80 $71
	push af                                          ; $6047: $f5
	ld   a, $1c                                      ; $6048: $3e $1c
	ld   [wFarCallAddr], a                                  ; $604a: $ea $98 $c2
	ld   a, $41                                      ; $604d: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $604f: $ea $99 $c2
	ld   a, $01                                      ; $6052: $3e $01
	ld   [wFarCallBank], a                                  ; $6054: $ea $9a $c2
	pop  af                                          ; $6057: $f1
	call FarCall                                       ; $6058: $cd $62 $09
	ld   a, [$c9b3]                                  ; $605b: $fa $b3 $c9
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $605e: $cd $76 $30
	ld   bc, $5020                                   ; $6061: $01 $20 $50
	ld   a, [wSCX]                                  ; $6064: $fa $07 $c2
	cpl                                              ; $6067: $2f
	inc  a                                           ; $6068: $3c
	add  b                                           ; $6069: $80
	ld   b, a                                        ; $606a: $47
	push af                                          ; $606b: $f5
	ld   a, $2f                                      ; $606c: $3e $2f
	ld   [wFarCallAddr], a                                  ; $606e: $ea $98 $c2
	ld   a, $41                                      ; $6071: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $6073: $ea $99 $c2
	ld   a, $01                                      ; $6076: $3e $01
	ld   [wFarCallBank], a                                  ; $6078: $ea $9a $c2
	pop  af                                          ; $607b: $f1
	call FarCall                                       ; $607c: $cd $62 $09
	ret                                              ; $607f: $c9


Call_03e_6080:
	ld   a, [$c9b3]                                  ; $6080: $fa $b3 $c9
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $6083: $cd $76 $30
	ld   a, $00                                      ; $6086: $3e $00
	ld   de, $7180                                   ; $6088: $11 $80 $71
	push af                                          ; $608b: $f5
	ld   a, $1c                                      ; $608c: $3e $1c
	ld   [wFarCallAddr], a                                  ; $608e: $ea $98 $c2
	ld   a, $41                                      ; $6091: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $6093: $ea $99 $c2
	ld   a, $01                                      ; $6096: $3e $01
	ld   [wFarCallBank], a                                  ; $6098: $ea $9a $c2
	pop  af                                          ; $609b: $f1
	call FarCall                                       ; $609c: $cd $62 $09
	ld   a, [$c9b4]                                  ; $609f: $fa $b4 $c9
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $60a2: $cd $76 $30
	ld   a, $00                                      ; $60a5: $3e $00
	ld   de, $7180                                   ; $60a7: $11 $80 $71
	push af                                          ; $60aa: $f5
	ld   a, $1c                                      ; $60ab: $3e $1c
	ld   [wFarCallAddr], a                                  ; $60ad: $ea $98 $c2
	ld   a, $41                                      ; $60b0: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $60b2: $ea $99 $c2
	ld   a, $01                                      ; $60b5: $3e $01
	ld   [wFarCallBank], a                                  ; $60b7: $ea $9a $c2
	pop  af                                          ; $60ba: $f1
	call FarCall                                       ; $60bb: $cd $62 $09
	ld   a, [$c9b5]                                  ; $60be: $fa $b5 $c9
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $60c1: $cd $76 $30
	ld   a, $00                                      ; $60c4: $3e $00
	ld   de, $7180                                   ; $60c6: $11 $80 $71
	push af                                          ; $60c9: $f5
	ld   a, $1c                                      ; $60ca: $3e $1c
	ld   [wFarCallAddr], a                                  ; $60cc: $ea $98 $c2
	ld   a, $41                                      ; $60cf: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $60d1: $ea $99 $c2
	ld   a, $01                                      ; $60d4: $3e $01
	ld   [wFarCallBank], a                                  ; $60d6: $ea $9a $c2
	pop  af                                          ; $60d9: $f1
	call FarCall                                       ; $60da: $cd $62 $09
	ret                                              ; $60dd: $c9


Call_03e_60de:
	rst  JumpTable                                         ; $60de: $df
	push hl                                          ; $60df: $e5
	ld   h, b                                        ; $60e0: $60
	or   $60                                         ; $60e1: $f6 $60
	rra                                              ; $60e3: $1f
	ld   h, c                                        ; $60e4: $61
	ld   a, [$c9b2]                                  ; $60e5: $fa $b2 $c9
	cp   $06                                         ; $60e8: $fe $06
	call nz, $625a                                   ; $60ea: $c4 $5a $62
	call Call_03e_6080                               ; $60ed: $cd $80 $60
	ld   a, [wLCDC]                                  ; $60f0: $fa $03 $c2
	bit  7, a                                        ; $60f3: $cb $7f
	ret  nz                                          ; $60f5: $c0

	ld   a, $06                                      ; $60f6: $3e $06
	call Call_03e_613f                               ; $60f8: $cd $3f $61
	ld   a, $06                                      ; $60fb: $3e $06
	call Call_03e_61ec                               ; $60fd: $cd $ec $61
	ld   a, [$c9b2]                                  ; $6100: $fa $b2 $c9
	cp   $06                                         ; $6103: $fe $06
	jr   z, jr_03e_6119                              ; $6105: $28 $12

	ld   c, $80                                      ; $6107: $0e $80
	ld   de, $8800                                   ; $6109: $11 $00 $88
	ld   a, $03                                      ; $610c: $3e $03
	ld   hl, $d000                                   ; $610e: $21 $00 $d0
	ld   b, $40                                      ; $6111: $06 $40
	call EnqueueHDMATransfer                                       ; $6113: $cd $7c $02
	call $62b1                                       ; $6116: $cd $b1 $62

jr_03e_6119:
	ld   a, [wLCDC]                                  ; $6119: $fa $03 $c2
	bit  7, a                                        ; $611c: $cb $7f
	ret  nz                                          ; $611e: $c0

	ld   a, [$c9b2]                                  ; $611f: $fa $b2 $c9
	cp   $06                                         ; $6122: $fe $06
	jr   z, jr_03e_613b                              ; $6124: $28 $15

	ld   c, $80                                      ; $6126: $0e $80
	ld   de, $8c00                                   ; $6128: $11 $00 $8c
	ld   a, $03                                      ; $612b: $3e $03
	ld   hl, $d400                                   ; $612d: $21 $00 $d4
	ld   b, $40                                      ; $6130: $06 $40
	call EnqueueHDMATransfer                                       ; $6132: $cd $7c $02
	call Call_03e_613c                               ; $6135: $cd $3c $61
	call Call_03e_61e9                               ; $6138: $cd $e9 $61

jr_03e_613b:
	ret                                              ; $613b: $c9


Call_03e_613c:
	ld   a, [$c9b2]                                  ; $613c: $fa $b2 $c9

Call_03e_613f:
	push af                                          ; $613f: $f5
	ld   hl, $6183                                   ; $6140: $21 $83 $61
	ld   a, [$c9b1]                                  ; $6143: $fa $b1 $c9
	or   a                                           ; $6146: $b7
	jr   z, jr_03e_614c                              ; $6147: $28 $03

	ld   hl, $6198                                   ; $6149: $21 $98 $61

jr_03e_614c:
	pop  af                                          ; $614c: $f1

Call_03e_614d:
	ld   c, a                                        ; $614d: $4f
	add  a                                           ; $614e: $87
	add  c                                           ; $614f: $81
	ld   c, a                                        ; $6150: $4f
	ld   b, $00                                      ; $6151: $06 $00
	add  hl, bc                                      ; $6153: $09
	ld   a, [wWramBank]                                  ; $6154: $fa $93 $c2
	push af                                          ; $6157: $f5
	ld   a, $03                                      ; $6158: $3e $03
	ld   [wWramBank], a                                  ; $615a: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $615d: $e0 $70
	ld   a, [hl+]                                    ; $615f: $2a
	ld   e, a                                        ; $6160: $5f
	ld   a, [hl+]                                    ; $6161: $2a
	ld   d, a                                        ; $6162: $57
	ld   a, [hl]                                     ; $6163: $7e
	ld   hl, $d820                                   ; $6164: $21 $20 $d8
	call RLEXorCopy                                       ; $6167: $cd $d2 $09
	call Call_03e_61c4                               ; $616a: $cd $c4 $61
	pop  af                                          ; $616d: $f1
	ld   [wWramBank], a                                  ; $616e: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $6171: $e0 $70
	ld   c, $80                                      ; $6173: $0e $80
	ld   de, $9820                                   ; $6175: $11 $20 $98
	ld   a, $03                                      ; $6178: $3e $03
	ld   hl, $d820                                   ; $617a: $21 $20 $d8
	ld   b, $0f                                      ; $617d: $06 $0f
	call EnqueueHDMATransfer                                       ; $617f: $cd $7c $02
	ret                                              ; $6182: $c9


	ld   l, b                                        ; $6183: $68
	ld   a, a                                        ; $6184: $7f
	inc  e                                           ; $6185: $1c
	call c, $1e61                                    ; $6186: $dc $61 $1e
	ld   c, a                                        ; $6189: $4f
	ld   h, c                                        ; $618a: $61
	ld   e, $a2                                      ; $618b: $1e $a2
	ld   e, a                                        ; $618d: $5f
	ld   e, $68                                      ; $618e: $1e $68
	ld   a, a                                        ; $6190: $7f
	inc  e                                           ; $6191: $1c
	ld   l, b                                        ; $6192: $68
	ld   a, a                                        ; $6193: $7f
	inc  e                                           ; $6194: $1c
	jr   jr_03e_620f                                 ; $6195: $18 $78

	ld   e, $92                                      ; $6197: $1e $92
	ld   d, c                                        ; $6199: $51
	ld   e, $4d                                      ; $619a: $1e $4d
	ld   d, d                                        ; $619c: $52
	ld   e, $08                                      ; $619d: $1e $08
	ld   d, e                                        ; $619f: $53
	ld   e, $c3                                      ; $61a0: $1e $c3
	ld   d, e                                        ; $61a2: $53
	ld   e, $92                                      ; $61a3: $1e $92
	ld   d, c                                        ; $61a5: $51
	ld   e, $7e                                      ; $61a6: $1e $7e
	ld   d, h                                        ; $61a8: $54
	ld   e, $39                                      ; $61a9: $1e $39
	ld   d, l                                        ; $61ab: $55
	ld   e, $fa                                      ; $61ac: $1e $fa
	ld   [hl], c                                     ; $61ae: $71
	jp   z, $064f                                    ; $61af: $ca $4f $06

	nop                                              ; $61b2: $00
	ld   hl, $61c1                                   ; $61b3: $21 $c1 $61
	add  hl, bc                                      ; $61b6: $09
	ld   c, [hl]                                     ; $61b7: $4e
	ld   b, $00                                      ; $61b8: $06 $00
	ld   hl, $dc00                                   ; $61ba: $21 $00 $dc
	add  hl, bc                                      ; $61bd: $09
	ld   [hl], $04                                   ; $61be: $36 $04
	ret                                              ; $61c0: $c9


	ldh  [$c0], a                                    ; $61c1: $e0 $c0
	and  b                                           ; $61c3: $a0

Call_03e_61c4:
	ld   hl, $d8d3                                   ; $61c4: $21 $d3 $d8
	ld   a, [$c9c5]                                  ; $61c7: $fa $c5 $c9
	ld   c, $06                                      ; $61ca: $0e $06
	ld   de, $ffe0                                   ; $61cc: $11 $e0 $ff

jr_03e_61cf:
	cp   $08                                         ; $61cf: $fe $08
	jr   c, jr_03e_61dd                              ; $61d1: $38 $0a

	ld   [hl], $0f                                   ; $61d3: $36 $0f
	add  hl, de                                      ; $61d5: $19
	sub  $08                                         ; $61d6: $d6 $08
	dec  c                                           ; $61d8: $0d
	jr   z, jr_03e_61e8                              ; $61d9: $28 $0d

	jr   jr_03e_61cf                                 ; $61db: $18 $f2

jr_03e_61dd:
	add  $07                                         ; $61dd: $c6 $07
	ld   [hl], a                                     ; $61df: $77

jr_03e_61e0:
	dec  c                                           ; $61e0: $0d
	jr   z, jr_03e_61e8                              ; $61e1: $28 $05

	add  hl, de                                      ; $61e3: $19
	ld   [hl], $07                                   ; $61e4: $36 $07
	jr   jr_03e_61e0                                 ; $61e6: $18 $f8

jr_03e_61e8:
	ret                                              ; $61e8: $c9


Call_03e_61e9:
	ld   a, [$c9b2]                                  ; $61e9: $fa $b2 $c9

Call_03e_61ec:
	push af                                          ; $61ec: $f5
	ld   hl, $6230                                   ; $61ed: $21 $30 $62
	ld   a, [$c9b1]                                  ; $61f0: $fa $b1 $c9
	or   a                                           ; $61f3: $b7
	jr   z, jr_03e_61f9                              ; $61f4: $28 $03

	ld   hl, $6245                                   ; $61f6: $21 $45 $62

jr_03e_61f9:
	pop  af                                          ; $61f9: $f1

Call_03e_61fa:
	ld   c, a                                        ; $61fa: $4f
	add  a                                           ; $61fb: $87
	add  c                                           ; $61fc: $81
	ld   c, a                                        ; $61fd: $4f
	ld   b, $00                                      ; $61fe: $06 $00
	add  hl, bc                                      ; $6200: $09
	ld   a, [wWramBank]                                  ; $6201: $fa $93 $c2
	push af                                          ; $6204: $f5
	ld   a, $03                                      ; $6205: $3e $03
	ld   [wWramBank], a                                  ; $6207: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $620a: $e0 $70
	ld   a, [hl+]                                    ; $620c: $2a
	ld   e, a                                        ; $620d: $5f
	ld   a, [hl+]                                    ; $620e: $2a

jr_03e_620f:
	ld   d, a                                        ; $620f: $57
	ld   a, [hl]                                     ; $6210: $7e
	ld   hl, $dc20                                   ; $6211: $21 $20 $dc
	call RLEXorCopy                                       ; $6214: $cd $d2 $09
	call $61ad                                       ; $6217: $cd $ad $61
	pop  af                                          ; $621a: $f1
	ld   [wWramBank], a                                  ; $621b: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $621e: $e0 $70
	ld   c, $81                                      ; $6220: $0e $81
	ld   de, $9820                                   ; $6222: $11 $20 $98
	ld   a, $03                                      ; $6225: $3e $03
	ld   hl, $dc20                                   ; $6227: $21 $20 $dc
	ld   b, $0f                                      ; $622a: $06 $0f
	call EnqueueHDMATransfer                                       ; $622c: $cd $7c $02
	ret                                              ; $622f: $c9


	db   $10                                         ; $6230: $10
	ld   e, a                                        ; $6231: $5f
	ld   e, $34                                      ; $6232: $1e $34
	ld   h, b                                        ; $6234: $60
	ld   e, $c2                                      ; $6235: $1e $c2
	ld   h, b                                        ; $6237: $60
	ld   e, $7c                                      ; $6238: $1e $7c
	ld   e, [hl]                                     ; $623a: $5e
	ld   e, $10                                      ; $623b: $1e $10
	ld   e, a                                        ; $623d: $5f
	ld   e, $10                                      ; $623e: $1e $10
	ld   e, a                                        ; $6240: $5f
	ld   e, $c0                                      ; $6241: $1e $c0
	ld   [hl], a                                     ; $6243: $77
	ld   e, $ad                                      ; $6244: $1e $ad
	ld   e, h                                        ; $6246: $5c
	ld   e, $32                                      ; $6247: $1e $32
	ld   e, d                                        ; $6249: $5a
	ld   e, $48                                      ; $624a: $1e $48
	ld   e, l                                        ; $624c: $5d
	ld   e, $e2                                      ; $624d: $1e $e2
	ld   e, l                                        ; $624f: $5d
	ld   e, $ad                                      ; $6250: $1e $ad
	ld   e, h                                        ; $6252: $5c
	ld   e, $10                                      ; $6253: $1e $10
	ld   e, h                                        ; $6255: $5c
	ld   e, $fc                                      ; $6256: $1e $fc
	ld   l, l                                        ; $6258: $6d
	ld   e, $fa                                      ; $6259: $1e $fa
	or   d                                           ; $625b: $b2
	ret                                              ; $625c: $c9


	ld   c, a                                        ; $625d: $4f
	add  a                                           ; $625e: $87
	add  c                                           ; $625f: $81
	ld   c, a                                        ; $6260: $4f
	ld   b, $00                                      ; $6261: $06 $00
	ld   hl, $628d                                   ; $6263: $21 $8d $62
	ld   a, [$c9b1]                                  ; $6266: $fa $b1 $c9
	or   a                                           ; $6269: $b7
	jr   z, jr_03e_626f                              ; $626a: $28 $03

	ld   hl, $629f                                   ; $626c: $21 $9f $62

jr_03e_626f:
	add  hl, bc                                      ; $626f: $09
	ld   a, [wWramBank]                                  ; $6270: $fa $93 $c2
	push af                                          ; $6273: $f5
	ld   a, $03                                      ; $6274: $3e $03
	ld   [wWramBank], a                                  ; $6276: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $6279: $e0 $70
	ld   a, [hl+]                                    ; $627b: $2a
	ld   e, a                                        ; $627c: $5f
	ld   a, [hl+]                                    ; $627d: $2a
	ld   d, a                                        ; $627e: $57
	ld   a, [hl]                                     ; $627f: $7e
	ld   hl, $d000                                   ; $6280: $21 $00 $d0
	call RLEXorCopy                                       ; $6283: $cd $d2 $09
	pop  af                                          ; $6286: $f1
	ld   [wWramBank], a                                  ; $6287: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $628a: $e0 $70
	ret                                              ; $628c: $c9


	jp   nz, $1b6a                                   ; $628d: $c2 $6a $1b

	rra                                              ; $6290: $1f
	ld   a, h                                        ; $6291: $7c
	jr   @-$25                                       ; $6292: $18 $d9

	ld   b, e                                        ; $6294: $43
	inc  e                                           ; $6295: $1c
	add  [hl]                                        ; $6296: $86
	ld   e, c                                        ; $6297: $59
	inc  e                                           ; $6298: $1c
	add  c                                           ; $6299: $81
	ld   a, e                                        ; $629a: $7b
	inc  d                                           ; $629b: $14
	ld   h, l                                        ; $629c: $65
	ld   h, [hl]                                     ; $629d: $66
	dec  de                                          ; $629e: $1b
	jp   $1a5c                                       ; $629f: $c3 $5c $1a


	ld   e, h                                        ; $62a2: $5c
	ld   l, l                                        ; $62a3: $6d
	ld   a, [de]                                     ; $62a4: $1a
	inc  c                                           ; $62a5: $0c
	ld   a, b                                        ; $62a6: $78
	ld   a, [de]                                     ; $62a7: $1a
	cp   h                                           ; $62a8: $bc
	ld   [hl], d                                     ; $62a9: $72
	ld   a, [de]                                     ; $62aa: $1a
	db   $f4                                         ; $62ab: $f4

jr_03e_62ac:
	ld   h, c                                        ; $62ac: $61
	jr   @+$1b                                       ; $62ad: $18 $19

	ld   l, a                                        ; $62af: $6f
	jr   jr_03e_62ac                                 ; $62b0: $18 $fa

	or   d                                           ; $62b2: $b2
	ret                                              ; $62b3: $c9


	ld   c, a                                        ; $62b4: $4f
	ld   b, $00                                      ; $62b5: $06 $00
	ld   hl, $633a                                   ; $62b7: $21 $3a $63
	ld   a, [$c9b1]                                  ; $62ba: $fa $b1 $c9
	or   a                                           ; $62bd: $b7
	jr   z, jr_03e_62c3                              ; $62be: $28 $03

	ld   hl, $6340                                   ; $62c0: $21 $40 $63

jr_03e_62c3:
	add  hl, bc                                      ; $62c3: $09
	ld   a, [hl]                                     ; $62c4: $7e
	push af                                          ; $62c5: $f5
	ld   a, [$c9b3]                                  ; $62c6: $fa $b3 $c9
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $62c9: $cd $76 $30
	pop  af                                          ; $62cc: $f1
	ld   de, $7180                                   ; $62cd: $11 $80 $71
	push af                                          ; $62d0: $f5
	ld   a, $1c                                      ; $62d1: $3e $1c
	ld   [wFarCallAddr], a                                  ; $62d3: $ea $98 $c2
	ld   a, $41                                      ; $62d6: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $62d8: $ea $99 $c2
	ld   a, $01                                      ; $62db: $3e $01
	ld   [wFarCallBank], a                                  ; $62dd: $ea $9a $c2
	pop  af                                          ; $62e0: $f1
	call FarCall                                       ; $62e1: $cd $62 $09
	ld   a, [$c9b4]                                  ; $62e4: $fa $b4 $c9
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $62e7: $cd $76 $30
	ld   a, $00                                      ; $62ea: $3e $00
	ld   de, $7180                                   ; $62ec: $11 $80 $71
	push af                                          ; $62ef: $f5
	ld   a, $1c                                      ; $62f0: $3e $1c
	ld   [wFarCallAddr], a                                  ; $62f2: $ea $98 $c2
	ld   a, $41                                      ; $62f5: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $62f7: $ea $99 $c2
	ld   a, $01                                      ; $62fa: $3e $01
	ld   [wFarCallBank], a                                  ; $62fc: $ea $9a $c2
	pop  af                                          ; $62ff: $f1
	call FarCall                                       ; $6300: $cd $62 $09
	ld   a, [$c9b2]                                  ; $6303: $fa $b2 $c9
	ld   c, a                                        ; $6306: $4f
	ld   b, $00                                      ; $6307: $06 $00
	ld   hl, $6346                                   ; $6309: $21 $46 $63
	ld   a, [$c9b1]                                  ; $630c: $fa $b1 $c9
	or   a                                           ; $630f: $b7
	jr   z, jr_03e_6315                              ; $6310: $28 $03

	ld   hl, $634c                                   ; $6312: $21 $4c $63

jr_03e_6315:
	add  hl, bc                                      ; $6315: $09
	ld   a, [hl]                                     ; $6316: $7e
	push af                                          ; $6317: $f5
	ld   a, [$c9b5]                                  ; $6318: $fa $b5 $c9
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $631b: $cd $76 $30
	pop  af                                          ; $631e: $f1
	ld   [$c9b7], a                                  ; $631f: $ea $b7 $c9
	ld   de, $7180                                   ; $6322: $11 $80 $71
	push af                                          ; $6325: $f5
	ld   a, $1c                                      ; $6326: $3e $1c
	ld   [wFarCallAddr], a                                  ; $6328: $ea $98 $c2
	ld   a, $41                                      ; $632b: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $632d: $ea $99 $c2
	ld   a, $01                                      ; $6330: $3e $01
	ld   [wFarCallBank], a                                  ; $6332: $ea $9a $c2
	pop  af                                          ; $6335: $f1
	call FarCall                                       ; $6336: $cd $62 $09
	ret                                              ; $6339: $c9


	dec  sp                                          ; $633a: $3b
	inc  a                                           ; $633b: $3c
	dec  a                                           ; $633c: $3d
	ld   a, $3f                                      ; $633d: $3e $3f
	ld   b, c                                        ; $633f: $41
	ld   b, e                                        ; $6340: $43
	ld   b, h                                        ; $6341: $44
	ld   b, l                                        ; $6342: $45
	ld   b, [hl]                                     ; $6343: $46
	ld   b, a                                        ; $6344: $47
	ld   c, c                                        ; $6345: $49
	nop                                              ; $6346: $00
	nop                                              ; $6347: $00
	nop                                              ; $6348: $00
	nop                                              ; $6349: $00
	ld   b, b                                        ; $634a: $40
	ld   b, d                                        ; $634b: $42
	nop                                              ; $634c: $00
	nop                                              ; $634d: $00
	nop                                              ; $634e: $00
	nop                                              ; $634f: $00
	ld   c, b                                        ; $6350: $48
	ld   c, d                                        ; $6351: $4a

Call_03e_6352:
	ld   a, $08                                      ; $6352: $3e $08
	ld   [$c9bf], a                                  ; $6354: $ea $bf $c9
	ld   a, $02                                      ; $6357: $3e $02
	ld   [$c9bb], a                                  ; $6359: $ea $bb $c9
	ret                                              ; $635c: $c9


Call_03e_635d:
	ld   hl, $c9bb                                   ; $635d: $21 $bb $c9
	dec  [hl]                                        ; $6360: $35
	jr   nz, jr_03e_6371                             ; $6361: $20 $0e

	ld   a, $02                                      ; $6363: $3e $02
	ld   [hl], a                                     ; $6365: $77
	ld   b, $1c                                      ; $6366: $06 $1c
	ld   c, $18                                      ; $6368: $0e $18
	call FadePalettesAndSetRangeToUpdate                                       ; $636a: $cd $32 $08
	ld   hl, $c9bf                                   ; $636d: $21 $bf $c9
	dec  [hl]                                        ; $6370: $35

jr_03e_6371:
	ret                                              ; $6371: $c9


Call_03e_6372:
	ld   b, a                                        ; $6372: $47
	ld   a, [wWramBank]                                  ; $6373: $fa $93 $c2
	push af                                          ; $6376: $f5
	ld   a, $03                                      ; $6377: $3e $03
	ld   [wWramBank], a                                  ; $6379: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $637c: $e0 $70
	ld   a, b                                        ; $637e: $78
	ld   hl, $d92d                                   ; $637f: $21 $2d $d9
	ld   c, $0d                                      ; $6382: $0e $0d

jr_03e_6384:
	cp   $08                                         ; $6384: $fe $08
	jr   c, jr_03e_6392                              ; $6386: $38 $0a

	ld   [hl], $1f                                   ; $6388: $36 $1f
	dec  hl                                          ; $638a: $2b
	sub  $08                                         ; $638b: $d6 $08
	dec  c                                           ; $638d: $0d
	jr   z, jr_03e_6395                              ; $638e: $28 $05

	jr   jr_03e_6384                                 ; $6390: $18 $f2

jr_03e_6392:
	add  $17                                         ; $6392: $c6 $17
	ld   [hl], a                                     ; $6394: $77

jr_03e_6395:
	pop  af                                          ; $6395: $f1
	ld   [wWramBank], a                                  ; $6396: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $6399: $e0 $70
	ld   c, $80                                      ; $639b: $0e $80
	ld   de, $9920                                   ; $639d: $11 $20 $99
	ld   a, $03                                      ; $63a0: $3e $03
	ld   hl, $d920                                   ; $63a2: $21 $20 $d9
	ld   b, $02                                      ; $63a5: $06 $02
	call EnqueueHDMATransfer                                       ; $63a7: $cd $7c $02
	ret                                              ; $63aa: $c9


Call_03e_63ab:
	ld   b, a                                        ; $63ab: $47
	ld   a, [wWramBank]                                  ; $63ac: $fa $93 $c2
	push af                                          ; $63af: $f5
	ld   a, $03                                      ; $63b0: $3e $03
	ld   [wWramBank], a                                  ; $63b2: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $63b5: $e0 $70
	ld   a, b                                        ; $63b7: $78
	ld   hl, $d806                                   ; $63b8: $21 $06 $d8
	ld   c, $0d                                      ; $63bb: $0e $0d

jr_03e_63bd:
	cp   $08                                         ; $63bd: $fe $08
	jr   c, jr_03e_63cb                              ; $63bf: $38 $0a

	ld   [hl], $1f                                   ; $63c1: $36 $1f
	inc  hl                                          ; $63c3: $23
	sub  $08                                         ; $63c4: $d6 $08
	dec  c                                           ; $63c6: $0d
	jr   z, jr_03e_63ce                              ; $63c7: $28 $05

	jr   jr_03e_63bd                                 ; $63c9: $18 $f2

jr_03e_63cb:
	add  $17                                         ; $63cb: $c6 $17
	ld   [hl], a                                     ; $63cd: $77

jr_03e_63ce:
	pop  af                                          ; $63ce: $f1
	ld   [wWramBank], a                                  ; $63cf: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $63d2: $e0 $70
	ld   c, $80                                      ; $63d4: $0e $80
	ld   de, $9800                                   ; $63d6: $11 $00 $98
	ld   a, $03                                      ; $63d9: $3e $03
	ld   hl, $d800                                   ; $63db: $21 $00 $d8
	ld   b, $02                                      ; $63de: $06 $02
	call EnqueueHDMATransfer                                       ; $63e0: $cd $7c $02
	ret                                              ; $63e3: $c9


Call_03e_63e4:
	push bc                                          ; $63e4: $c5
	ld   [$c9c0], a                                  ; $63e5: $ea $c0 $c9
	call Call_03e_66c7                               ; $63e8: $cd $c7 $66
	ld   [$c9c2], a                                  ; $63eb: $ea $c2 $c9
	call Call_03e_6372                               ; $63ee: $cd $72 $63
	pop  bc                                          ; $63f1: $c1
	ld   a, b                                        ; $63f2: $78
	ld   [$c9c3], a                                  ; $63f3: $ea $c3 $c9
	xor  a                                           ; $63f6: $af
	ld   [$c9c5], a                                  ; $63f7: $ea $c5 $c9
	ld   a, c                                        ; $63fa: $79
	ld   [$c9c6], a                                  ; $63fb: $ea $c6 $c9
	call Call_03e_66fd                               ; $63fe: $cd $fd $66
	ld   [$c9c8], a                                  ; $6401: $ea $c8 $c9
	call Call_03e_63ab                               ; $6404: $cd $ab $63
	ret                                              ; $6407: $c9


Call_03e_6408:
	ld   a, [$c9b1]                                  ; $6408: $fa $b1 $c9
	or   a                                           ; $640b: $b7
	jr   z, jr_03e_6424                              ; $640c: $28 $16

	ld   a, $1e                                      ; $640e: $3e $1e
	ld   hl, $6994                                   ; $6410: $21 $94 $69
	ld   de, wBGPalettes+3*8                                   ; $6413: $11 $f6 $c2
	ld   bc, $0068                                   ; $6416: $01 $68 $00
	call FarMemCopy                                       ; $6419: $cd $b2 $09
	ld   bc, $0c3f                                   ; $641c: $01 $3f $0c
	call SetBGandOBJPaletteRangesToUpdate                                       ; $641f: $cd $aa $04
	jr   jr_03e_6438                                 ; $6422: $18 $14

jr_03e_6424:
	ld   a, $1e                                      ; $6424: $3e $1e
	ld   hl, $6894                                   ; $6426: $21 $94 $68
	ld   de, wBGPalettes+3*8                                   ; $6429: $11 $f6 $c2
	ld   bc, $0068                                   ; $642c: $01 $68 $00
	call FarMemCopy                                       ; $642f: $cd $b2 $09
	ld   bc, $0c3f                                   ; $6432: $01 $3f $0c
	call SetBGandOBJPaletteRangesToUpdate                                       ; $6435: $cd $aa $04

jr_03e_6438:
	ret                                              ; $6438: $c9


Call_03e_6439:
	ld   a, [$c9b1]                                  ; $6439: $fa $b1 $c9
	or   a                                           ; $643c: $b7
	jr   z, jr_03e_6455                              ; $643d: $28 $16

	ld   a, $1e                                      ; $643f: $3e $1e
	ld   hl, $6a14                                   ; $6441: $21 $14 $6a
	ld   de, wBGPalettes+3*8                                   ; $6444: $11 $f6 $c2
	ld   bc, $0068                                   ; $6447: $01 $68 $00
	call FarMemCopy                                       ; $644a: $cd $b2 $09
	ld   bc, $0c3f                                   ; $644d: $01 $3f $0c
	call SetBGandOBJPaletteRangesToUpdate                                       ; $6450: $cd $aa $04
	jr   jr_03e_6469                                 ; $6453: $18 $14

jr_03e_6455:
	ld   a, $1e                                      ; $6455: $3e $1e
	ld   hl, $6914                                   ; $6457: $21 $14 $69
	ld   de, wBGPalettes+3*8                                   ; $645a: $11 $f6 $c2
	ld   bc, $0068                                   ; $645d: $01 $68 $00
	call FarMemCopy                                       ; $6460: $cd $b2 $09
	ld   bc, $0c3f                                   ; $6463: $01 $3f $0c
	call SetBGandOBJPaletteRangesToUpdate                                       ; $6466: $cd $aa $04

jr_03e_6469:
	ret                                              ; $6469: $c9


; D -
LoadBattleScreen::
	push af                                          ; $646a: $f5
	push bc                                          ; $646b: $c5

;
	ld   a, d                                        ; $646c: $7a
	ld   [$c9b1], a                                  ; $646d: $ea $b1 $c9
	ld   a, $01                                      ; $6470: $3e $01
	ldh  [rVBK], a                                   ; $6472: $e0 $4f
	ld   a, $17                                      ; $6474: $3e $17
	ld   hl, $9800                                   ; $6476: $21 $00 $98
	ld   de, $7ff1                                   ; $6479: $11 $f1 $7f
	call RLEXorCopy                                       ; $647c: $cd $d2 $09
	ld   a, $1e                                      ; $647f: $3e $1e
	ld   hl, $9910                                   ; $6481: $21 $10 $99
	ld   de, $7f46                                   ; $6484: $11 $46 $7f
	call RLEXorCopy                                       ; $6487: $cd $d2 $09
	xor  a                                           ; $648a: $af
	ldh  [rVBK], a                                   ; $648b: $e0 $4f
	ld   a, $1c                                      ; $648d: $3e $1c
	ld   hl, $9000                                   ; $648f: $21 $00 $90
	ld   de, $6a3b                                   ; $6492: $11 $3b $6a
if def(VWF)
	call BattleTileDataHook
else
	call RLEXorCopy                                       ; $6495: $cd $d2 $09
endc
	ld   a, $16                                      ; $6498: $3e $16
	ld   hl, $9800                                   ; $649a: $21 $00 $98
	ld   de, $7fea                                   ; $649d: $11 $ea $7f
	call RLEXorCopy                                       ; $64a0: $cd $d2 $09
	ld   a, $1e                                      ; $64a3: $3e $1e
	ld   hl, $9910                                   ; $64a5: $21 $10 $99
	ld   de, $7f2d                                   ; $64a8: $11 $2d $7f
	call RLEXorCopy                                       ; $64ab: $cd $d2 $09
	ld   a, [wWramBank]                                  ; $64ae: $fa $93 $c2
	push af                                          ; $64b1: $f5
	ld   a, $03                                      ; $64b2: $3e $03
	ld   [wWramBank], a                                  ; $64b4: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $64b7: $e0 $70
	ld   a, $16                                      ; $64b9: $3e $16
	ld   hl, $d800                                   ; $64bb: $21 $00 $d8
	ld   de, $7fea                                   ; $64be: $11 $ea $7f
	call RLEXorCopy                                       ; $64c1: $cd $d2 $09
	ld   a, $1e                                      ; $64c4: $3e $1e
	ld   hl, $d910                                   ; $64c6: $21 $10 $d9
	ld   de, $7f2d                                   ; $64c9: $11 $2d $7f
	call RLEXorCopy                                       ; $64cc: $cd $d2 $09
	ld   a, [$c9b1]                                  ; $64cf: $fa $b1 $c9
	or   a                                           ; $64d2: $b7
	jr   nz, jr_03e_64e5                             ; $64d3: $20 $10

	xor  a                                           ; $64d5: $af
	ldh  [rVBK], a                                   ; $64d6: $e0 $4f
	ld   a, $1b                                      ; $64d8: $3e $1b
	ld   hl, $8000                                   ; $64da: $21 $00 $80
	ld   de, $4a15                                   ; $64dd: $11 $15 $4a
	call RLEXorCopy                                       ; $64e0: $cd $d2 $09
	jr   jr_03e_6502                                 ; $64e3: $18 $1d

jr_03e_64e5:
	ld   a, $01                                      ; $64e5: $3e $01
	ldh  [rVBK], a                                   ; $64e7: $e0 $4f
	ld   a, $17                                      ; $64e9: $3e $17
	ld   hl, $9000                                   ; $64eb: $21 $00 $90
	ld   de, $48bd                                   ; $64ee: $11 $bd $48
	call RLEXorCopy                                       ; $64f1: $cd $d2 $09
	xor  a                                           ; $64f4: $af
	ldh  [rVBK], a                                   ; $64f5: $e0 $4f
	ld   a, $1b                                      ; $64f7: $3e $1b
	ld   hl, $8000                                   ; $64f9: $21 $00 $80
	ld   de, $5404                                   ; $64fc: $11 $04 $54
	call RLEXorCopy                                       ; $64ff: $cd $d2 $09

jr_03e_6502:
	pop  af                                          ; $6502: $f1
	ld   [wWramBank], a                                  ; $6503: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $6506: $e0 $70
	pop  bc                                          ; $6508: $c1
	pop  af                                          ; $6509: $f1
	call Call_03e_63e4                               ; $650a: $cd $e4 $63
	call ClearBaseAnimSpriteSpecDetails                                       ; $650d: $cd $c9 $2e
	ld   a, $01                                      ; $6510: $3e $01
	ld   hl, $0000                                   ; $6512: $21 $00 $00
	call ReserveBaseAnimSpriteSpecAndInstance                                       ; $6515: $cd $4b $2f
	ld   [$c9b3], a                                  ; $6518: $ea $b3 $c9
	call StartAnimatingAnimatedSpriteSpec                                       ; $651b: $cd $14 $30
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $651e: $cd $76 $30
	ld   a, $00                                      ; $6521: $3e $00
	ld   bc, $5020                                   ; $6523: $01 $20 $50
	ld   de, $7180                                   ; $6526: $11 $80 $71
	push af                                          ; $6529: $f5
	ld   a, $03                                      ; $652a: $3e $03
	ld   [wFarCallAddr], a                                  ; $652c: $ea $98 $c2
	ld   a, $41                                      ; $652f: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $6531: $ea $99 $c2
	ld   a, $01                                      ; $6534: $3e $01
	ld   [wFarCallBank], a                                  ; $6536: $ea $9a $c2
	pop  af                                          ; $6539: $f1
	call FarCall                                       ; $653a: $cd $62 $09
	ld   a, $01                                      ; $653d: $3e $01
	ld   hl, $0000                                   ; $653f: $21 $00 $00
	call ReserveBaseAnimSpriteSpecAndInstance                                       ; $6542: $cd $4b $2f
	ld   [$c9b4], a                                  ; $6545: $ea $b4 $c9
	call StartAnimatingAnimatedSpriteSpec                                       ; $6548: $cd $14 $30
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $654b: $cd $76 $30
	ld   a, $00                                      ; $654e: $3e $00
	ld   bc, $5020                                   ; $6550: $01 $20 $50
	ld   de, $7180                                   ; $6553: $11 $80 $71
	push af                                          ; $6556: $f5
	ld   a, $03                                      ; $6557: $3e $03
	ld   [wFarCallAddr], a                                  ; $6559: $ea $98 $c2
	ld   a, $41                                      ; $655c: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $655e: $ea $99 $c2
	ld   a, $01                                      ; $6561: $3e $01
	ld   [wFarCallBank], a                                  ; $6563: $ea $9a $c2
	pop  af                                          ; $6566: $f1
	call FarCall                                       ; $6567: $cd $62 $09
	ld   a, $01                                      ; $656a: $3e $01
	ld   hl, $0000                                   ; $656c: $21 $00 $00
	call ReserveBaseAnimSpriteSpecAndInstance                                       ; $656f: $cd $4b $2f
	ld   [$c9b5], a                                  ; $6572: $ea $b5 $c9
	call StartAnimatingAnimatedSpriteSpec                                       ; $6575: $cd $14 $30
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $6578: $cd $76 $30
	ld   a, $00                                      ; $657b: $3e $00
	ld   bc, $5020                                   ; $657d: $01 $20 $50
	ld   de, $7180                                   ; $6580: $11 $80 $71
	push af                                          ; $6583: $f5
	ld   a, $03                                      ; $6584: $3e $03
	ld   [wFarCallAddr], a                                  ; $6586: $ea $98 $c2
	ld   a, $41                                      ; $6589: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $658b: $ea $99 $c2
	ld   a, $01                                      ; $658e: $3e $01
	ld   [wFarCallBank], a                                  ; $6590: $ea $9a $c2
	pop  af                                          ; $6593: $f1
	call FarCall                                       ; $6594: $cd $62 $09
	ld   a, $01                                      ; $6597: $3e $01
	ld   hl, $0000                                   ; $6599: $21 $00 $00
	call ReserveBaseAnimSpriteSpecAndInstance                                       ; $659c: $cd $4b $2f
	ld   [$c9b6], a                                  ; $659f: $ea $b6 $c9
	call StartAnimatingAnimatedSpriteSpec                                       ; $65a2: $cd $14 $30
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $65a5: $cd $76 $30
	ld   a, $00                                      ; $65a8: $3e $00
	ld   bc, $380f                                   ; $65aa: $01 $0f $38
	ld   de, $7180                                   ; $65ad: $11 $80 $71
	push af                                          ; $65b0: $f5
	ld   a, $03                                      ; $65b1: $3e $03
	ld   [wFarCallAddr], a                                  ; $65b3: $ea $98 $c2
	ld   a, $41                                      ; $65b6: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $65b8: $ea $99 $c2
	ld   a, $01                                      ; $65bb: $3e $01
	ld   [wFarCallBank], a                                  ; $65bd: $ea $9a $c2
	pop  af                                          ; $65c0: $f1
	call FarCall                                       ; $65c1: $cd $62 $09
	xor  a                                           ; $65c4: $af
	ld   [$c9b2], a                                  ; $65c5: $ea $b2 $c9
	call Call_03e_60de                               ; $65c8: $cd $de $60
	ret                                              ; $65cb: $c9


Call_03e_65cc:
	ld   b, $03                                      ; $65cc: $06 $03
	bit  7, a                                        ; $65ce: $cb $7f
	jr   nz, jr_03e_65d4                             ; $65d0: $20 $02

	ld   b, $00                                      ; $65d2: $06 $00

jr_03e_65d4:
	res  7, a                                        ; $65d4: $cb $bf
	ld   [$c9b2], a                                  ; $65d6: $ea $b2 $c9
	ld   a, b                                        ; $65d9: $78
	ld   [$c9be], a                                  ; $65da: $ea $be $c9
	ret                                              ; $65dd: $c9


Call_03e_65de:
	ld   [$c9b9], a                                  ; $65de: $ea $b9 $c9
	ld   c, a                                        ; $65e1: $4f
	ld   b, $00                                      ; $65e2: $06 $00
	ld   hl, $6685                                   ; $65e4: $21 $85 $66
	ld   a, [$c9b1]                                  ; $65e7: $fa $b1 $c9
	or   a                                           ; $65ea: $b7
	jr   z, jr_03e_65f0                              ; $65eb: $28 $03

	ld   hl, $6695                                   ; $65ed: $21 $95 $66

jr_03e_65f0:
	add  hl, bc                                      ; $65f0: $09
	ld   a, [wWramBank]                                  ; $65f1: $fa $93 $c2
	push af                                          ; $65f4: $f5
	ld   a, $03                                      ; $65f5: $3e $03
	ld   [wWramBank], a                                  ; $65f7: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $65fa: $e0 $70
	xor  a                                           ; $65fc: $af
	ld   [$c9be], a                                  ; $65fd: $ea $be $c9
	ld   a, [hl]                                     ; $6600: $7e
	ld   [$c9ba], a                                  ; $6601: $ea $ba $c9
	cp   $60                                         ; $6604: $fe $60
	jr   z, jr_03e_6634                              ; $6606: $28 $2c

	cp   $61                                         ; $6608: $fe $61
	jr   z, jr_03e_6634                              ; $660a: $28 $28

	cp   $51                                         ; $660c: $fe $51
	jr   z, jr_03e_6641                              ; $660e: $28 $31

	cp   $50                                         ; $6610: $fe $50
	jr   z, jr_03e_6641                              ; $6612: $28 $2d

	ld   a, [$c9b1]                                  ; $6614: $fa $b1 $c9
	or   a                                           ; $6617: $b7
	jr   nz, jr_03e_6627                             ; $6618: $20 $0d

	ld   a, $1b                                      ; $661a: $3e $1b
	ld   hl, $d000                                   ; $661c: $21 $00 $d0
	ld   de, $4a15                                   ; $661f: $11 $15 $4a
	call RLEXorCopy                                       ; $6622: $cd $d2 $09
	jr   jr_03e_665f                                 ; $6625: $18 $38

jr_03e_6627:
	ld   a, $1b                                      ; $6627: $3e $1b
	ld   hl, $d000                                   ; $6629: $21 $00 $d0
	ld   de, $5404                                   ; $662c: $11 $04 $54
	call RLEXorCopy                                       ; $662f: $cd $d2 $09
	jr   jr_03e_665f                                 ; $6632: $18 $2b

jr_03e_6634:
	ld   a, $1e                                      ; $6634: $3e $1e
	ld   hl, $d000                                   ; $6636: $21 $00 $d0
	ld   de, $49dd                                   ; $6639: $11 $dd $49
	call RLEXorCopy                                       ; $663c: $cd $d2 $09
	jr   jr_03e_665f                                 ; $663f: $18 $1e

jr_03e_6641:
	ld   a, [$c9b1]                                  ; $6641: $fa $b1 $c9
	or   a                                           ; $6644: $b7
	jr   nz, jr_03e_6654                             ; $6645: $20 $0d

	ld   a, $1b                                      ; $6647: $3e $1b
	ld   hl, $d000                                   ; $6649: $21 $00 $d0
	ld   de, $58bd                                   ; $664c: $11 $bd $58
	call RLEXorCopy                                       ; $664f: $cd $d2 $09
	jr   jr_03e_665f                                 ; $6652: $18 $0b

jr_03e_6654:
	ld   a, $1b                                      ; $6654: $3e $1b
	ld   hl, $d000                                   ; $6656: $21 $00 $d0
	ld   de, $6203                                   ; $6659: $11 $03 $62
	call RLEXorCopy                                       ; $665c: $cd $d2 $09

jr_03e_665f:
	pop  af                                          ; $665f: $f1
	ld   [wWramBank], a                                  ; $6660: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $6663: $e0 $70
	ld   a, [$c9b5]                                  ; $6665: $fa $b5 $c9
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $6668: $cd $76 $30
	ld   a, $00                                      ; $666b: $3e $00
	ld   de, $7180                                   ; $666d: $11 $80 $71
	push af                                          ; $6670: $f5
	ld   a, $1c                                      ; $6671: $3e $1c
	ld   [wFarCallAddr], a                                  ; $6673: $ea $98 $c2
	ld   a, $41                                      ; $6676: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $6678: $ea $99 $c2
	ld   a, $01                                      ; $667b: $3e $01
	ld   [wFarCallBank], a                                  ; $667d: $ea $9a $c2
	pop  af                                          ; $6680: $f1
	call FarCall                                       ; $6681: $cd $62 $09
	ret                                              ; $6684: $c9


	ld   c, e                                        ; $6685: $4b
	ld   c, h                                        ; $6686: $4c
	ld   c, l                                        ; $6687: $4d
	ld   c, [hl]                                     ; $6688: $4e
	ld   d, h                                        ; $6689: $54
	ld   d, d                                        ; $668a: $52
	ld   d, h                                        ; $668b: $54
	ld   d, e                                        ; $668c: $53
	ld   c, a                                        ; $668d: $4f
	nop                                              ; $668e: $00
	nop                                              ; $668f: $00
	ld   d, l                                        ; $6690: $55
	ld   d, c                                        ; $6691: $51
	ld   d, b                                        ; $6692: $50
	ld   h, b                                        ; $6693: $60
	ld   h, c                                        ; $6694: $61
	ld   c, e                                        ; $6695: $4b
	ld   c, h                                        ; $6696: $4c
	ld   c, l                                        ; $6697: $4d
	ld   c, [hl]                                     ; $6698: $4e
	ld   d, a                                        ; $6699: $57
	nop                                              ; $669a: $00
	ld   d, a                                        ; $669b: $57
	ld   d, e                                        ; $669c: $53
	ld   c, a                                        ; $669d: $4f
	nop                                              ; $669e: $00
	nop                                              ; $669f: $00
	ld   e, b                                        ; $66a0: $58
	ld   d, c                                        ; $66a1: $51
	ld   d, b                                        ; $66a2: $50
	ld   h, b                                        ; $66a3: $60
	ld   h, c                                        ; $66a4: $61
	call Call_03e_5dd0                               ; $66a5: $cd $d0 $5d
	ld   a, [$c9be]                                  ; $66a8: $fa $be $c9
	cp   $02                                         ; $66ab: $fe $02
	ret                                              ; $66ad: $c9


	ld   a, [$c9b9]                                  ; $66ae: $fa $b9 $c9
	cp   $09                                         ; $66b1: $fe $09
	jr   z, jr_03e_66be                              ; $66b3: $28 $09

	call Call_03e_5eac                               ; $66b5: $cd $ac $5e
	ld   a, [$c9be]                                  ; $66b8: $fa $be $c9
	cp   $05                                         ; $66bb: $fe $05
	ret                                              ; $66bd: $c9


jr_03e_66be:
	call Call_03e_5e6f                               ; $66be: $cd $6f $5e
	ld   a, [$c9be]                                  ; $66c1: $fa $be $c9
	cp   $03                                         ; $66c4: $fe $03
	ret                                              ; $66c6: $c9


Call_03e_66c7:
	ld   h, a                                        ; $66c7: $67
	ld   l, $68                                      ; $66c8: $2e $68
	call AequHtimesL                                       ; $66ca: $cd $ac $0b
	ld   a, [$c9c0]                                  ; $66cd: $fa $c0 $c9
	call Func_0c50                                       ; $66d0: $cd $50 $0c
	ld   h, a                                        ; $66d3: $67
	ld   a, l                                        ; $66d4: $7d
	or   a                                           ; $66d5: $b7
	jr   nz, jr_03e_66de                             ; $66d6: $20 $06

	ld   a, h                                        ; $66d8: $7c
	or   a                                           ; $66d9: $b7
	jr   z, jr_03e_66de                              ; $66da: $28 $02

	ld   a, $01                                      ; $66dc: $3e $01

jr_03e_66de:
	ld   [$c9c1], a                                  ; $66de: $ea $c1 $c9
	ret                                              ; $66e1: $c9


Call_03e_66e2:
	ld   h, a                                        ; $66e2: $67
	ld   l, $30                                      ; $66e3: $2e $30
	call AequHtimesL                                       ; $66e5: $cd $ac $0b
	ld   a, [$c9c3]                                  ; $66e8: $fa $c3 $c9
	call Func_0c50                                       ; $66eb: $cd $50 $0c
	ld   h, a                                        ; $66ee: $67
	ld   a, l                                        ; $66ef: $7d
	or   a                                           ; $66f0: $b7
	jr   nz, jr_03e_66f9                             ; $66f1: $20 $06

	ld   a, h                                        ; $66f3: $7c
	or   a                                           ; $66f4: $b7
	jr   z, jr_03e_66f9                              ; $66f5: $28 $02

	ld   a, $01                                      ; $66f7: $3e $01

jr_03e_66f9:
	ld   [$c9c4], a                                  ; $66f9: $ea $c4 $c9
	ret                                              ; $66fc: $c9


Call_03e_66fd:
	ld   h, a                                        ; $66fd: $67
	ld   l, $68                                      ; $66fe: $2e $68
	call AequHtimesL                                       ; $6700: $cd $ac $0b
	ld   a, [$c9c6]                                  ; $6703: $fa $c6 $c9
	call Func_0c50                                       ; $6706: $cd $50 $0c
	ld   h, a                                        ; $6709: $67
	ld   a, l                                        ; $670a: $7d
	or   a                                           ; $670b: $b7
	jr   nz, jr_03e_6714                             ; $670c: $20 $06

	ld   a, h                                        ; $670e: $7c
	or   a                                           ; $670f: $b7
	jr   z, jr_03e_6714                              ; $6710: $28 $02

	ld   a, $01                                      ; $6712: $3e $01

jr_03e_6714:
	ld   [$c9c7], a                                  ; $6714: $ea $c7 $c9
	ret                                              ; $6717: $c9


	ld   a, [$c9c1]                                  ; $6718: $fa $c1 $c9
	ld   hl, $c9c2                                   ; $671b: $21 $c2 $c9
	cp   [hl]                                        ; $671e: $be
	jr   z, jr_03e_672b                              ; $671f: $28 $0a

	jr   c, jr_03e_6726                              ; $6721: $38 $03

	inc  [hl]                                        ; $6723: $34
	jr   jr_03e_6727                                 ; $6724: $18 $01

jr_03e_6726:
	dec  [hl]                                        ; $6726: $35

jr_03e_6727:
	ld   a, [hl]                                     ; $6727: $7e
	call Call_03e_6372                               ; $6728: $cd $72 $63

jr_03e_672b:
	ld   a, [$c9c1]                                  ; $672b: $fa $c1 $c9
	ld   hl, $c9c2                                   ; $672e: $21 $c2 $c9
	cp   [hl]                                        ; $6731: $be
	ret                                              ; $6732: $c9


	ld   a, [$c9c4]                                  ; $6733: $fa $c4 $c9
	ld   hl, $c9c5                                   ; $6736: $21 $c5 $c9
	cp   [hl]                                        ; $6739: $be
	jr   z, jr_03e_6745                              ; $673a: $28 $09

	jr   c, jr_03e_6741                              ; $673c: $38 $03

	inc  [hl]                                        ; $673e: $34
	jr   jr_03e_6742                                 ; $673f: $18 $01

jr_03e_6741:
	dec  [hl]                                        ; $6741: $35

jr_03e_6742:
	call Call_03e_613c                               ; $6742: $cd $3c $61

jr_03e_6745:
	ld   a, [$c9c4]                                  ; $6745: $fa $c4 $c9
	ld   hl, $c9c5                                   ; $6748: $21 $c5 $c9
	cp   [hl]                                        ; $674b: $be
	ret                                              ; $674c: $c9


	ld   h, a                                        ; $674d: $67
	ld   l, $68                                      ; $674e: $2e $68
	call AequHtimesL                                       ; $6750: $cd $ac $0b
	ld   a, [$c9c0]                                  ; $6753: $fa $c0 $c9
	call Func_0c50                                       ; $6756: $cd $50 $0c
	ld   a, l                                        ; $6759: $7d
	ld   [$c9c1], a                                  ; $675a: $ea $c1 $c9
	ld   h, a                                        ; $675d: $67
	ld   l, $00                                      ; $675e: $2e $00
	ld   a, $4b                                      ; $6760: $3e $4b
	call Func_0c50                                       ; $6762: $cd $50 $0c
	ld   a, l                                        ; $6765: $7d
	ld   [$c834], a                                  ; $6766: $ea $34 $c8
	ld   a, h                                        ; $6769: $7c
	ld   [$c835], a                                  ; $676a: $ea $35 $c8
	xor  a                                           ; $676d: $af
	ld   [$c836], a                                  ; $676e: $ea $36 $c8
	ret                                              ; $6771: $c9


	ld   a, [$c9c1]                                  ; $6772: $fa $c1 $c9
	ld   hl, $c9c2                                   ; $6775: $21 $c2 $c9
	cp   [hl]                                        ; $6778: $be
	jr   z, jr_03e_6797                              ; $6779: $28 $1c

	ld   b, a                                        ; $677b: $47
	ld   d, [hl]                                     ; $677c: $56
	ld   a, [$c836]                                  ; $677d: $fa $36 $c8
	ld   e, a                                        ; $6780: $5f
	ld   hl, $c834                                   ; $6781: $21 $34 $c8
	ld   a, [hl+]                                    ; $6784: $2a
	ld   h, [hl]                                     ; $6785: $66
	ld   l, a                                        ; $6786: $6f
	add  hl, de                                      ; $6787: $19
	ld   a, l                                        ; $6788: $7d
	ld   [$c836], a                                  ; $6789: $ea $36 $c8
	ld   a, h                                        ; $678c: $7c
	cp   b                                           ; $678d: $b8
	jr   c, jr_03e_6791                              ; $678e: $38 $01

	ld   a, b                                        ; $6790: $78

jr_03e_6791:
	ld   [$c9c2], a                                  ; $6791: $ea $c2 $c9
	call Call_03e_6372                               ; $6794: $cd $72 $63

jr_03e_6797:
	ld   a, [$c9c1]                                  ; $6797: $fa $c1 $c9
	ld   hl, $c9c2                                   ; $679a: $21 $c2 $c9
	cp   [hl]                                        ; $679d: $be
	ret                                              ; $679e: $c9


Call_03e_679f:
	ld   [$c9cc], a                                  ; $679f: $ea $cc $c9
	xor  a                                           ; $67a2: $af
	ld   [$c9be], a                                  ; $67a3: $ea $be $c9
	ret                                              ; $67a6: $c9


	call Call_03e_67b0                               ; $67a7: $cd $b0 $67
	ld   a, [$c9be]                                  ; $67aa: $fa $be $c9
	cp   $05                                         ; $67ad: $fe $05
	ret                                              ; $67af: $c9


Call_03e_67b0:
	ld   a, [$c9be]                                  ; $67b0: $fa $be $c9
	rst  JumpTable                                         ; $67b3: $df
	ld   [bc], a                                     ; $67b4: $02
	ld   l, b                                        ; $67b5: $68
	ld   l, [hl]                                     ; $67b6: $6e
	ld   l, c                                        ; $67b7: $69
	adc  h                                           ; $67b8: $8c
	ld   l, c                                        ; $67b9: $69
	dec  h                                           ; $67ba: $25
	ld   l, b                                        ; $67bb: $68
	sbc  d                                           ; $67bc: $9a
	ld   l, b                                        ; $67bd: $68
	inc  l                                           ; $67be: $2c
	ld   l, e                                        ; $67bf: $6b

Call_03e_67c0:
	xor  a                                           ; $67c0: $af
	ld   [$c9be], a                                  ; $67c1: $ea $be $c9
	ret                                              ; $67c4: $c9


	call Call_03e_67ce                               ; $67c5: $cd $ce $67
	ld   a, [$c9be]                                  ; $67c8: $fa $be $c9
	cp   $08                                         ; $67cb: $fe $08
	ret                                              ; $67cd: $c9


Call_03e_67ce:
	ld   a, [$c9be]                                  ; $67ce: $fa $be $c9
	rst  JumpTable                                         ; $67d1: $df
	ld   b, a                                        ; $67d2: $47
	ld   l, d                                        ; $67d3: $6a
	sub  l                                           ; $67d4: $95
	ld   l, d                                        ; $67d5: $6a
	push hl                                          ; $67d6: $e5
	ld   l, c                                        ; $67d7: $69
	and  b                                           ; $67d8: $a0
	ld   l, c                                        ; $67d9: $69
	rst  ToBoot                                         ; $67da: $c7
	ld   l, c                                        ; $67db: $69
	db   $ed                                         ; $67dc: $ed
	ld   l, c                                        ; $67dd: $69
	inc  b                                           ; $67de: $04
	ld   l, d                                        ; $67df: $6a
	ld   [$ee6a], a                                  ; $67e0: $ea $6a $ee
	ld   l, d                                        ; $67e3: $6a

Call_03e_67e4:
	xor  a                                           ; $67e4: $af
	ld   [$c9b8], a                                  ; $67e5: $ea $b8 $c9
	ret                                              ; $67e8: $c9


	call Call_03e_67f2                               ; $67e9: $cd $f2 $67
	ld   a, [$c9b8]                                  ; $67ec: $fa $b8 $c9
	cp   $02                                         ; $67ef: $fe $02
	ret                                              ; $67f1: $c9


Call_03e_67f2:
	ld   de, $5fcb                                   ; $67f2: $11 $cb $5f
	call Call_03e_5f97                               ; $67f5: $cd $97 $5f
	ld   a, [$c9b8]                                  ; $67f8: $fa $b8 $c9
	rst  JumpTable                                         ; $67fb: $df
	ld   l, l                                        ; $67fc: $6d
	ld   l, d                                        ; $67fd: $6a
	or   b                                           ; $67fe: $b0
	ld   l, d                                        ; $67ff: $6a
	inc  l                                           ; $6800: $2c
	ld   l, e                                        ; $6801: $6b
	ld   a, [$c9cc]                                  ; $6802: $fa $cc $c9
	ld   hl, $6813                                   ; $6805: $21 $13 $68

jr_03e_6808:
	call $694a                                       ; $6808: $cd $4a $69
	call Call_03e_6080                               ; $680b: $cd $80 $60
	ld   hl, $c9be                                   ; $680e: $21 $be $c9
	inc  [hl]                                        ; $6811: $34
	ret                                              ; $6812: $c9


	rst  $10                                         ; $6813: $d7
	ld   [hl], a                                     ; $6814: $77
	add  hl, de                                      ; $6815: $19
	db   $ec                                         ; $6816: $ec
	ld   b, l                                        ; $6817: $45
	ld   a, [de]                                     ; $6818: $1a
	ret                                              ; $6819: $c9


	ld   h, l                                        ; $681a: $65
	add  hl, de                                      ; $681b: $19
	xor  [hl]                                        ; $681c: $ae
	ld   d, h                                        ; $681d: $54
	jr   jr_03e_6808                                 ; $681e: $18 $e8

jr_03e_6820:
	ld   c, l                                        ; $6820: $4d
	jr   @-$70                                       ; $6821: $18 $8e

	ld   l, b                                        ; $6823: $68
	jr   jr_03e_6820                                 ; $6824: $18 $fa

	call z, $21c9                                    ; $6826: $cc $c9 $21
	adc  b                                           ; $6829: $88
	ld   l, b                                        ; $682a: $68
	call $694a                                       ; $682b: $cd $4a $69
	ld   a, [$c9cc]                                  ; $682e: $fa $cc $c9
	ld   c, a                                        ; $6831: $4f
	ld   b, $00                                      ; $6832: $06 $00
	ld   hl, $6882                                   ; $6834: $21 $82 $68
	add  hl, bc                                      ; $6837: $09
	ld   a, [hl]                                     ; $6838: $7e
	push af                                          ; $6839: $f5
	ld   a, [$c9b3]                                  ; $683a: $fa $b3 $c9
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $683d: $cd $76 $30
	pop  af                                          ; $6840: $f1
	push af                                          ; $6841: $f5
	ld   de, $7180                                   ; $6842: $11 $80 $71
	push af                                          ; $6845: $f5
	ld   a, $1c                                      ; $6846: $3e $1c
	ld   [wFarCallAddr], a                                  ; $6848: $ea $98 $c2
	ld   a, $41                                      ; $684b: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $684d: $ea $99 $c2
	ld   a, $01                                      ; $6850: $3e $01
	ld   [wFarCallBank], a                                  ; $6852: $ea $9a $c2
	pop  af                                          ; $6855: $f1
	call FarCall                                       ; $6856: $cd $62 $09
	pop  af                                          ; $6859: $f1
	cp   $5d                                         ; $685a: $fe $5d
	jr   nz, jr_03e_687d                             ; $685c: $20 $1f

	ld   a, [$c9b4]                                  ; $685e: $fa $b4 $c9
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $6861: $cd $76 $30
	ld   a, $5e                                      ; $6864: $3e $5e
	ld   de, $7180                                   ; $6866: $11 $80 $71
	push af                                          ; $6869: $f5
	ld   a, $1c                                      ; $686a: $3e $1c
	ld   [wFarCallAddr], a                                  ; $686c: $ea $98 $c2
	ld   a, $41                                      ; $686f: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $6871: $ea $99 $c2
	ld   a, $01                                      ; $6874: $3e $01
	ld   [wFarCallBank], a                                  ; $6876: $ea $9a $c2
	pop  af                                          ; $6879: $f1
	call FarCall                                       ; $687a: $cd $62 $09

jr_03e_687d:
	ld   hl, $c9be                                   ; $687d: $21 $be $c9
	inc  [hl]                                        ; $6880: $34
	ret                                              ; $6881: $c9


	ld   e, c                                        ; $6882: $59
	ld   e, d                                        ; $6883: $5a
	ld   e, e                                        ; $6884: $5b
	ld   e, h                                        ; $6885: $5c
	ld   e, l                                        ; $6886: $5d
	ld   e, a                                        ; $6887: $5f
	jp   z, $1d76                                    ; $6888: $ca $76 $1d

	or   a                                           ; $688b: $b7
	halt                                             ; $688c: $76
	inc  e                                           ; $688d: $1c
	sbc  l                                           ; $688e: $9d
	ld   b, a                                        ; $688f: $47
	inc  e                                           ; $6890: $1c
	xor  $5b                                         ; $6891: $ee $5b
	dec  e                                           ; $6893: $1d
	adc  $7c                                         ; $6894: $ce $7c
	ld   e, $ab                                      ; $6896: $1e $ab
	ld   l, e                                        ; $6898: $6b
	dec  e                                           ; $6899: $1d
	ld   a, [$c9cc]                                  ; $689a: $fa $cc $c9
	ld   hl, $68dc                                   ; $689d: $21 $dc $68
	call Call_03e_614d                               ; $68a0: $cd $4d $61
	ld   a, [$c9cc]                                  ; $68a3: $fa $cc $c9
	ld   hl, $68ee                                   ; $68a6: $21 $ee $68
	call Call_03e_61fa                               ; $68a9: $cd $fa $61
	ld   c, $81                                      ; $68ac: $0e $81
	ld   de, $9000                                   ; $68ae: $11 $00 $90
	ld   a, $03                                      ; $68b1: $3e $03
	ld   hl, $d000                                   ; $68b3: $21 $00 $d0
	ld   b, $40                                      ; $68b6: $06 $40
	call EnqueueHDMATransfer                                       ; $68b8: $cd $7c $02
	call $6900                                       ; $68bb: $cd $00 $69
	ld   a, b                                        ; $68be: $78
	ld   bc, $0028                                   ; $68bf: $01 $28 $00
	add  hl, bc                                      ; $68c2: $09
	ld   de, $c306                                   ; $68c3: $11 $06 $c3
	ld   bc, $0048                                   ; $68c6: $01 $48 $00
	call FarMemCopy                                       ; $68c9: $cd $b2 $09
	ld   bc, $1437                                   ; $68cc: $01 $37 $14
	call SetBGandOBJPaletteRangesToUpdate                                       ; $68cf: $cd $aa $04
	ld   hl, $c9be                                   ; $68d2: $21 $be $c9
	inc  [hl]                                        ; $68d5: $34
	ld   a, $1e                                      ; $68d6: $3e $1e
	ld   [$c9cd], a                                  ; $68d8: $ea $cd $c9
	ret                                              ; $68db: $c9


	ld   l, $7f                                      ; $68dc: $2e $7f
	dec  e                                           ; $68de: $1d
	ld   l, d                                        ; $68df: $6a
	ld   d, a                                        ; $68e0: $57
	ld   e, $f4                                      ; $68e1: $1e $f4
	ld   d, l                                        ; $68e3: $55
	ld   e, $af                                      ; $68e4: $1e $af
	ld   d, [hl]                                     ; $68e6: $56
	ld   e, $d5                                      ; $68e7: $1e $d5
	ld   d, b                                        ; $68e9: $50
	ld   e, $25                                      ; $68ea: $1e $25
	ld   e, b                                        ; $68ec: $58
	ld   e, $71                                      ; $68ed: $1e $71
	ld   e, e                                        ; $68ef: $5b
	ld   e, $db                                      ; $68f0: $1e $db
	ld   e, b                                        ; $68f2: $58
	ld   e, $68                                      ; $68f3: $1e $68
	ld   h, d                                        ; $68f5: $62
	ld   e, $88                                      ; $68f6: $1e $88
	ld   e, c                                        ; $68f8: $59
	ld   e, $f1                                      ; $68f9: $1e $f1
	ld   h, d                                        ; $68fb: $62
	ld   e, $79                                      ; $68fc: $1e $79
	ld   h, e                                        ; $68fe: $63
	ld   e, $fa                                      ; $68ff: $1e $fa
	call z, $4fc9                                    ; $6901: $cc $c9 $4f
	add  a                                           ; $6904: $87
	add  c                                           ; $6905: $81
	ld   b, $00                                      ; $6906: $06 $00
	ld   c, a                                        ; $6908: $4f
	ld   hl, $6915                                   ; $6909: $21 $15 $69
	add  hl, bc                                      ; $690c: $09
	ld   a, [hl-]                                    ; $690d: $3a
	ld   b, a                                        ; $690e: $47
	ld   a, [hl-]                                    ; $690f: $3a
	ld   l, [hl]                                     ; $6910: $6e
	ld   h, a                                        ; $6911: $67
	ret                                              ; $6912: $c9


	ld   [hl], b                                     ; $6913: $70
	ld   l, [hl]                                     ; $6914: $6e
	ld   e, $60                                      ; $6915: $1e $60
	ld   [hl], d                                     ; $6917: $72
	ld   e, $30                                      ; $6918: $1e $30
	ld   [hl], b                                     ; $691a: $70
	ld   e, $10                                      ; $691b: $1e $10
	ld   [hl], c                                     ; $691d: $71
	ld   e, $80                                      ; $691e: $1e $80
	ld   [hl], c                                     ; $6920: $71
	ld   e, $50                                      ; $6921: $1e $50
	ld   l, a                                        ; $6923: $6f
	ld   e, $fa                                      ; $6924: $1e $fa
	call z, $4fc9                                    ; $6926: $cc $c9 $4f
	add  a                                           ; $6929: $87
	add  c                                           ; $692a: $81
	ld   b, $00                                      ; $692b: $06 $00
	ld   c, a                                        ; $692d: $4f
	ld   hl, $693a                                   ; $692e: $21 $3a $69
	add  hl, bc                                      ; $6931: $09
	ld   a, [hl-]                                    ; $6932: $3a
	ld   b, a                                        ; $6933: $47
	ld   a, [hl-]                                    ; $6934: $3a
	ld   l, [hl]                                     ; $6935: $6e
	ld   h, a                                        ; $6936: $67
	ret                                              ; $6937: $c9


	ldh  [$6e], a                                    ; $6938: $e0 $6e
	ld   e, $d0                                      ; $693a: $1e $d0
	ld   [hl], d                                     ; $693c: $72
	ld   e, $a0                                      ; $693d: $1e $a0
	ld   [hl], b                                     ; $693f: $70
	ld   e, $e0                                      ; $6940: $1e $e0
	ld   l, [hl]                                     ; $6942: $6e
	ld   e, $f0                                      ; $6943: $1e $f0
	ld   [hl], c                                     ; $6945: $71
	ld   e, $c0                                      ; $6946: $1e $c0
	ld   l, a                                        ; $6948: $6f
	ld   e, $4f                                      ; $6949: $1e $4f
	add  a                                           ; $694b: $87
	add  c                                           ; $694c: $81
	ld   c, a                                        ; $694d: $4f
	ld   b, $00                                      ; $694e: $06 $00
	add  hl, bc                                      ; $6950: $09
	ld   a, [wWramBank]                                  ; $6951: $fa $93 $c2
	push af                                          ; $6954: $f5
	ld   a, $03                                      ; $6955: $3e $03
	ld   [wWramBank], a                                  ; $6957: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $695a: $e0 $70
	ld   a, [hl+]                                    ; $695c: $2a
	ld   e, a                                        ; $695d: $5f
	ld   a, [hl+]                                    ; $695e: $2a
	ld   d, a                                        ; $695f: $57
	ld   a, [hl]                                     ; $6960: $7e
	ld   hl, $d000                                   ; $6961: $21 $00 $d0
	call RLEXorCopy                                       ; $6964: $cd $d2 $09
	pop  af                                          ; $6967: $f1
	ld   [wWramBank], a                                  ; $6968: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $696b: $e0 $70
	ret                                              ; $696d: $c9


	ld   a, $06                                      ; $696e: $3e $06
	call Call_03e_613f                               ; $6970: $cd $3f $61
	ld   a, $06                                      ; $6973: $3e $06
	call Call_03e_61ec                               ; $6975: $cd $ec $61
	ld   c, $80                                      ; $6978: $0e $80
	ld   de, $8800                                   ; $697a: $11 $00 $88
	ld   a, $03                                      ; $697d: $3e $03
	ld   hl, $d000                                   ; $697f: $21 $00 $d0
	ld   b, $40                                      ; $6982: $06 $40
	call EnqueueHDMATransfer                                       ; $6984: $cd $7c $02
	ld   hl, $c9be                                   ; $6987: $21 $be $c9
	inc  [hl]                                        ; $698a: $34
	ret                                              ; $698b: $c9


	ld   c, $80                                      ; $698c: $0e $80
	ld   de, $8c00                                   ; $698e: $11 $00 $8c
	ld   a, $03                                      ; $6991: $3e $03
	ld   hl, $d400                                   ; $6993: $21 $00 $d4
	ld   b, $40                                      ; $6996: $06 $40
	call EnqueueHDMATransfer                                       ; $6998: $cd $7c $02
	ld   hl, $c9be                                   ; $699b: $21 $be $c9
	inc  [hl]                                        ; $699e: $34
	ret                                              ; $699f: $c9


	ld   a, [wWramBank]                                  ; $69a0: $fa $93 $c2
	push af                                          ; $69a3: $f5
	ld   a, $06                                      ; $69a4: $3e $06
	ld   [wWramBank], a                                  ; $69a6: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $69a9: $e0 $70
	ld   a, $17                                      ; $69ab: $3e $17
	ld   hl, $d000                                   ; $69ad: $21 $00 $d0
	ld   de, $48bd                                   ; $69b0: $11 $bd $48
	call RLEXorCopy                                       ; $69b3: $cd $d2 $09
	pop  af                                          ; $69b6: $f1
	ld   [wWramBank], a                                  ; $69b7: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $69ba: $e0 $70
	call Call_03e_6080                               ; $69bc: $cd $80 $60
	ld   hl, $c9be                                   ; $69bf: $21 $be $c9
	inc  [hl]                                        ; $69c2: $34
	ret                                              ; $69c3: $c9


	call Call_03e_6408                               ; $69c4: $cd $08 $64
	ld   a, $06                                      ; $69c7: $3e $06
	call Call_03e_613f                               ; $69c9: $cd $3f $61
	ld   a, $06                                      ; $69cc: $3e $06
	call Call_03e_61ec                               ; $69ce: $cd $ec $61
	ld   c, $81                                      ; $69d1: $0e $81
	ld   de, $9000                                   ; $69d3: $11 $00 $90
	ld   a, $06                                      ; $69d6: $3e $06
	ld   hl, $d000                                   ; $69d8: $21 $00 $d0
	ld   b, $40                                      ; $69db: $06 $40
	call EnqueueHDMATransfer                                       ; $69dd: $cd $7c $02
	ld   hl, $c9be                                   ; $69e0: $21 $be $c9
	inc  [hl]                                        ; $69e3: $34
	ret                                              ; $69e4: $c9


	call $625a                                       ; $69e5: $cd $5a $62
	ld   hl, $c9be                                   ; $69e8: $21 $be $c9
	inc  [hl]                                        ; $69eb: $34
	ret                                              ; $69ec: $c9


	ld   c, $80                                      ; $69ed: $0e $80
	ld   de, $8800                                   ; $69ef: $11 $00 $88
	ld   a, $03                                      ; $69f2: $3e $03
	ld   hl, $d000                                   ; $69f4: $21 $00 $d0
	ld   b, $40                                      ; $69f7: $06 $40
	call EnqueueHDMATransfer                                       ; $69f9: $cd $7c $02
	call $62b1                                       ; $69fc: $cd $b1 $62
	ld   hl, $c9be                                   ; $69ff: $21 $be $c9
	inc  [hl]                                        ; $6a02: $34
	ret                                              ; $6a03: $c9


	ld   c, $80                                      ; $6a04: $0e $80
	ld   de, $8c00                                   ; $6a06: $11 $00 $8c
	ld   a, $03                                      ; $6a09: $3e $03
	ld   hl, $d400                                   ; $6a0b: $21 $00 $d4
	ld   b, $40                                      ; $6a0e: $06 $40
	call EnqueueHDMATransfer                                       ; $6a10: $cd $7c $02
	call Call_03e_613c                               ; $6a13: $cd $3c $61
	call Call_03e_61e9                               ; $6a16: $cd $e9 $61
	call $6925                                       ; $6a19: $cd $25 $69
	ld   a, b                                        ; $6a1c: $78
	ld   bc, $0028                                   ; $6a1d: $01 $28 $00
	add  hl, bc                                      ; $6a20: $09
	ld   de, $c306                                   ; $6a21: $11 $06 $c3
	ld   bc, $0048                                   ; $6a24: $01 $48 $00
	call FarMemCopy                                       ; $6a27: $cd $b2 $09
	ld   bc, $1437                                   ; $6a2a: $01 $37 $14
	call SetBGandOBJPaletteRangesToUpdate                                       ; $6a2d: $cd $aa $04
	ld   hl, $c9be                                   ; $6a30: $21 $be $c9
	inc  [hl]                                        ; $6a33: $34
	ld   a, $01                                      ; $6a34: $3e $01
	ld   [$c9bc], a                                  ; $6a36: $ea $bc $c9
	xor  a                                           ; $6a39: $af
	ld   [$c9bd], a                                  ; $6a3a: $ea $bd $c9
	ld   a, $08                                      ; $6a3d: $3e $08
	ld   [$c9cd], a                                  ; $6a3f: $ea $cd $c9
	xor  a                                           ; $6a42: $af
	ld   [$c9ce], a                                  ; $6a43: $ea $ce $c9
	ret                                              ; $6a46: $c9


	call $6900                                       ; $6a47: $cd $00 $69
	ld   a, $14                                      ; $6a4a: $3e $14
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $6a4c: $ea $62 $c3
	ld   a, $24                                      ; $6a4f: $3e $24
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $6a51: $ea $63 $c3
	ld   a, $04                                      ; $6a54: $3e $04
	ld   c, $01                                      ; $6a56: $0e $01
	ld   de, $7000                                   ; $6a58: $11 $00 $70
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $6a5b: $cd $48 $07
	ld   a, $01                                      ; $6a5e: $3e $01
	ld   [$c9bb], a                                  ; $6a60: $ea $bb $c9
	ld   a, $10                                      ; $6a63: $3e $10
	ld   [$c9bf], a                                  ; $6a65: $ea $bf $c9
	ld   hl, $c9be                                   ; $6a68: $21 $be $c9
	inc  [hl]                                        ; $6a6b: $34
	ret                                              ; $6a6c: $c9


	ld   hl, $697c                                   ; $6a6d: $21 $7c $69
	ld   b, $1e                                      ; $6a70: $06 $1e
	ld   a, $00                                      ; $6a72: $3e $00
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $6a74: $ea $62 $c3
	ld   a, $3c                                      ; $6a77: $3e $3c
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $6a79: $ea $63 $c3
	ld   a, $04                                      ; $6a7c: $3e $04
	ld   c, $01                                      ; $6a7e: $0e $01
	ld   de, $7000                                   ; $6a80: $11 $00 $70
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $6a83: $cd $48 $07
	ld   a, $01                                      ; $6a86: $3e $01
	ld   [$c9bb], a                                  ; $6a88: $ea $bb $c9
	ld   a, $10                                      ; $6a8b: $3e $10
	ld   [$c9bf], a                                  ; $6a8d: $ea $bf $c9
	ld   hl, $c9b8                                   ; $6a90: $21 $b8 $c9
	inc  [hl]                                        ; $6a93: $34
	ret                                              ; $6a94: $c9


	ld   hl, $c9bb                                   ; $6a95: $21 $bb $c9
	dec  [hl]                                        ; $6a98: $35
	jr   nz, jr_03e_6aaf                             ; $6a99: $20 $14

	ld   a, $08                                      ; $6a9b: $3e $08
	ld   [hl], a                                     ; $6a9d: $77
	ld   b, $14                                      ; $6a9e: $06 $14
	ld   c, $24                                      ; $6aa0: $0e $24
	call FadePalettesAndSetRangeToUpdate                                       ; $6aa2: $cd $32 $08
	ld   hl, $c9bf                                   ; $6aa5: $21 $bf $c9
	dec  [hl]                                        ; $6aa8: $35
	jr   nz, jr_03e_6aaf                             ; $6aa9: $20 $04

	ld   hl, $c9be                                   ; $6aab: $21 $be $c9
	inc  [hl]                                        ; $6aae: $34

jr_03e_6aaf:
	ret                                              ; $6aaf: $c9


	ld   hl, $c9bb                                   ; $6ab0: $21 $bb $c9
	dec  [hl]                                        ; $6ab3: $35
	jr   nz, jr_03e_6ae9                             ; $6ab4: $20 $33

	ld   [hl], $08                                   ; $6ab6: $36 $08
	ld   b, $00                                      ; $6ab8: $06 $00
	ld   c, $3c                                      ; $6aba: $0e $3c
	call FadePalettesAndSetRangeToUpdate                                       ; $6abc: $cd $32 $08
	ld   a, [$c9bf]                                  ; $6abf: $fa $bf $c9
	cp   $08                                         ; $6ac2: $fe $08
	jr   nc, jr_03e_6acb                             ; $6ac4: $30 $05

	and  $07                                         ; $6ac6: $e6 $07
	call SafeSetAudVolForMultipleChannels                                       ; $6ac8: $cd $e0 $1c

jr_03e_6acb:
	ld   hl, $c9bf                                   ; $6acb: $21 $bf $c9
	dec  [hl]                                        ; $6ace: $35
	jr   nz, jr_03e_6ae9                             ; $6acf: $20 $18

	ld   a, $01                                      ; $6ad1: $3e $01
	ld   hl, $7000                                   ; $6ad3: $21 $00 $70
	ld   de, wBGPalettes                                   ; $6ad6: $11 $de $c2
	ld   bc, $0080                                   ; $6ad9: $01 $80 $00
	call FarMemCopy                                       ; $6adc: $cd $b2 $09
	ld   bc, $003f                                   ; $6adf: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $6ae2: $cd $aa $04
	ld   hl, $c9b8                                   ; $6ae5: $21 $b8 $c9
	inc  [hl]                                        ; $6ae8: $34

jr_03e_6ae9:
	ret                                              ; $6ae9: $c9


	ld   hl, $c9be                                   ; $6aea: $21 $be $c9
	inc  [hl]                                        ; $6aed: $34
	ld   de, $5fcb                                   ; $6aee: $11 $cb $5f
	call Call_03e_5f97                               ; $6af1: $cd $97 $5f
	ld   hl, $c9cd                                   ; $6af4: $21 $cd $c9
	dec  [hl]                                        ; $6af7: $35
	jr   nz, jr_03e_6b23                             ; $6af8: $20 $29

	ld   [hl], $08                                   ; $6afa: $36 $08
	ld   hl, $c9ce                                   ; $6afc: $21 $ce $c9
	ld   a, [hl]                                     ; $6aff: $7e
	or   a                                           ; $6b00: $b7
	jr   nz, jr_03e_6b0a                             ; $6b01: $20 $07

	ld   [hl], $01                                   ; $6b03: $36 $01
	call Call_03e_6408                               ; $6b05: $cd $08 $64
	jr   jr_03e_6b23                                 ; $6b08: $18 $19

jr_03e_6b0a:
	ld   [hl], $00                                   ; $6b0a: $36 $00
	call $6925                                       ; $6b0c: $cd $25 $69
	ld   a, b                                        ; $6b0f: $78
	ld   bc, $0028                                   ; $6b10: $01 $28 $00
	add  hl, bc                                      ; $6b13: $09
	ld   de, $c306                                   ; $6b14: $11 $06 $c3
	ld   bc, $0048                                   ; $6b17: $01 $48 $00
	call FarMemCopy                                       ; $6b1a: $cd $b2 $09
	ld   bc, $1437                                   ; $6b1d: $01 $37 $14
	call SetBGandOBJPaletteRangesToUpdate                                       ; $6b20: $cd $aa $04

jr_03e_6b23:
	ret                                              ; $6b23: $c9


	call Call_03e_6408                               ; $6b24: $cd $08 $64
	ld   hl, $c9be                                   ; $6b27: $21 $be $c9
	inc  [hl]                                        ; $6b2a: $34
	ret                                              ; $6b2b: $c9


	ret                                              ; $6b2c: $c9


Call_03e_6b2d:
	ld   a, [$c9b9]                                  ; $6b2d: $fa $b9 $c9
	cp   $0c                                         ; $6b30: $fe $0c
	jr   z, jr_03e_6b4b                              ; $6b32: $28 $17

	cp   $0e                                         ; $6b34: $fe $0e
	jr   z, jr_03e_6b3c                              ; $6b36: $28 $04

	cp   $0f                                         ; $6b38: $fe $0f
	jr   nz, jr_03e_6b74                             ; $6b3a: $20 $38

jr_03e_6b3c:
	ld   a, $09                                      ; $6b3c: $3e $09
	call Func_1d3d                                       ; $6b3e: $cd $3d $1d
	or   a                                           ; $6b41: $b7
	jr   nz, jr_03e_6b74                             ; $6b42: $20 $30

	ld   a, $09                                      ; $6b44: $3e $09
	call PlaySoundEffect                                       ; $6b46: $cd $df $1a
	jr   jr_03e_6b74                                 ; $6b49: $18 $29

jr_03e_6b4b:
	ld   a, [$c9b6]                                  ; $6b4b: $fa $b6 $c9
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $6b4e: $cd $76 $30
	push af                                          ; $6b51: $f5
	ld   a, $43                                      ; $6b52: $3e $43
	ld   [wFarCallAddr], a                                  ; $6b54: $ea $98 $c2
	ld   a, $41                                      ; $6b57: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $6b59: $ea $99 $c2
	ld   a, $01                                      ; $6b5c: $3e $01
	ld   [wFarCallBank], a                                  ; $6b5e: $ea $9a $c2
	pop  af                                          ; $6b61: $f1
	call FarCall                                       ; $6b62: $cd $62 $09
	ld   a, b                                        ; $6b65: $78
	cp   $80                                         ; $6b66: $fe $80
	jr   nc, jr_03e_6b74                             ; $6b68: $30 $0a

	ld   a, c                                        ; $6b6a: $79
	cp   $b0                                         ; $6b6b: $fe $b0
	jr   nz, jr_03e_6b74                             ; $6b6d: $20 $05

	ld   a, $09                                      ; $6b6f: $3e $09
	call PlaySoundEffect                                       ; $6b71: $cd $df $1a

jr_03e_6b74:
	ret                                              ; $6b74: $c9


Call_03e_6b75:
	xor  a                                           ; $6b75: $af
	call PlaySoundEffect                                       ; $6b76: $cd $df $1a
	ld   a, [$c9b9]                                  ; $6b79: $fa $b9 $c9
	ld   c, a                                        ; $6b7c: $4f
	ld   b, $00                                      ; $6b7d: $06 $00
	ld   hl, $6b8d                                   ; $6b7f: $21 $8d $6b
	add  hl, bc                                      ; $6b82: $09
	ld   a, [hl]                                     ; $6b83: $7e
	cp   $ff                                         ; $6b84: $fe $ff
	jr   z, jr_03e_6b8c                              ; $6b86: $28 $04

	call PlaySoundEffect                                       ; $6b88: $cd $df $1a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6b8b: $cf

jr_03e_6b8c:
	ret                                              ; $6b8c: $c9


	dec  c                                           ; $6b8d: $0d
	inc  de                                          ; $6b8e: $13
	dec  bc                                          ; $6b8f: $0b
	ld   [$070d], sp                                 ; $6b90: $08 $0d $07
	inc  c                                           ; $6b93: $0c
	ld   [$1107], sp                                 ; $6b94: $08 $07 $11
	dec  bc                                          ; $6b97: $0b
	inc  c                                           ; $6b98: $0c
	add  hl, bc                                      ; $6b99: $09
	ld   c, d                                        ; $6b9a: $4a
	add  hl, bc                                      ; $6b9b: $09
	add  hl, bc                                      ; $6b9c: $09
	ld   a, [$c9c7]                                  ; $6b9d: $fa $c7 $c9
	ld   hl, $c9c8                                   ; $6ba0: $21 $c8 $c9
	cp   [hl]                                        ; $6ba3: $be
	jr   z, jr_03e_6bb0                              ; $6ba4: $28 $0a

	jr   c, jr_03e_6bab                              ; $6ba6: $38 $03

	inc  [hl]                                        ; $6ba8: $34
	jr   jr_03e_6bac                                 ; $6ba9: $18 $01

jr_03e_6bab:
	dec  [hl]                                        ; $6bab: $35

jr_03e_6bac:
	ld   a, [hl]                                     ; $6bac: $7e
	call Call_03e_63ab                               ; $6bad: $cd $ab $63

jr_03e_6bb0:
	ld   a, [$c9c7]                                  ; $6bb0: $fa $c7 $c9
	ld   hl, $c9c8                                   ; $6bb3: $21 $c8 $c9
	cp   [hl]                                        ; $6bb6: $be
	ret                                              ; $6bb7: $c9


Call_03e_6bb8:
	ld   a, [$c9cb]                                  ; $6bb8: $fa $cb $c9
	or   a                                           ; $6bbb: $b7
	jr   z, jr_03e_6be9                              ; $6bbc: $28 $2b

	ld   hl, $6cdb                                   ; $6bbe: $21 $db $6c

jr_03e_6bc1:
	sub  [hl]                                        ; $6bc1: $96
	jr   c, jr_03e_6bc8                              ; $6bc2: $38 $04

	inc  hl                                          ; $6bc4: $23
	inc  hl                                          ; $6bc5: $23
	jr   jr_03e_6bc1                                 ; $6bc6: $18 $f9

jr_03e_6bc8:
	inc  hl                                          ; $6bc8: $23
	ld   a, [hl]                                     ; $6bc9: $7e
	ld   c, a                                        ; $6bca: $4f
	add  a                                           ; $6bcb: $87
	add  c                                           ; $6bcc: $81
	ld   c, a                                        ; $6bcd: $4f
	ld   b, $00                                      ; $6bce: $06 $00
	ld   hl, $6cce                                   ; $6bd0: $21 $ce $6c
	add  hl, bc                                      ; $6bd3: $09
	ld   a, [hl-]                                    ; $6bd4: $3a
	ld   b, a                                        ; $6bd5: $47
	ld   a, [hl-]                                    ; $6bd6: $3a
	ld   l, [hl]                                     ; $6bd7: $6e
	ld   h, a                                        ; $6bd8: $67
	ld   a, b                                        ; $6bd9: $78
	ld   de, $c306                                   ; $6bda: $11 $06 $c3
	ld   bc, $0048                                   ; $6bdd: $01 $48 $00
	call FarMemCopy                                       ; $6be0: $cd $b2 $09
	ld   bc, $1437                                   ; $6be3: $01 $37 $14
	call SetBGandOBJPaletteRangesToUpdate                                       ; $6be6: $cd $aa $04

jr_03e_6be9:
	ret                                              ; $6be9: $c9


	ld   a, $47                                      ; $6bea: $3e $47
	ld   [$c20b], a                                  ; $6bec: $ea $0b $c2
	ld   [$c9ca], a                                  ; $6bef: $ea $ca $c9
	xor  a                                           ; $6bf2: $af
	ld   [$c9c9], a                                  ; $6bf3: $ea $c9 $c9
	ld   [$c9cb], a                                  ; $6bf6: $ea $cb $c9
	ld   hl, $c20c                                   ; $6bf9: $21 $0c $c2
	set  6, [hl]                                     ; $6bfc: $cb $f6
	ld   hl, wIE                                   ; $6bfe: $21 $0d $c2
	set  1, [hl]                                     ; $6c01: $cb $ce
	ld   a, $05                                      ; $6c03: $3e $05
	ld   [wLCDCIntFuncIdx], a                                  ; $6c05: $ea $8d $c2
	ld   hl, $c9be                                   ; $6c08: $21 $be $c9
	inc  [hl]                                        ; $6c0b: $34
	ret                                              ; $6c0c: $c9


Call_03e_6c0d:
	ld   hl, $c20c                                   ; $6c0d: $21 $0c $c2
	res  6, [hl]                                     ; $6c10: $cb $b6
	ld   hl, $c9be                                   ; $6c12: $21 $be $c9
	inc  [hl]                                        ; $6c15: $34
	ret                                              ; $6c16: $c9


LCDCFunc05::
	ld   a, $ff                                      ; $6c17: $3e $ff
	ld   [$ca3d], a                                  ; $6c19: $ea $3d $ca
	ld   [$ca3e], a                                  ; $6c1c: $ea $3e $ca
	ld   a, $04                                      ; $6c1f: $3e $04
	ld   [wLCDCIntFuncIdx], a                                  ; $6c21: $ea $8d $c2
	ld   a, [$c9cb]                                  ; $6c24: $fa $cb $c9
	or   a                                           ; $6c27: $b7
	jr   z, jr_03e_6c5b                              ; $6c28: $28 $31

	ld   hl, $6cdb                                   ; $6c2a: $21 $db $6c
	ld   c, $00                                      ; $6c2d: $0e $00

jr_03e_6c2f:
	sub  [hl]                                        ; $6c2f: $96
	jr   c, jr_03e_6c37                              ; $6c30: $38 $05

	inc  hl                                          ; $6c32: $23
	inc  hl                                          ; $6c33: $23
	inc  c                                           ; $6c34: $0c
	jr   jr_03e_6c2f                                 ; $6c35: $18 $f8

jr_03e_6c37:
	cpl                                              ; $6c37: $2f
	inc  a                                           ; $6c38: $3c
	add  $05                                         ; $6c39: $c6 $05
	ldh  [rLYC], a                                   ; $6c3b: $e0 $45
	ld   a, [hl+]                                    ; $6c3d: $2a
	cp   $ff                                         ; $6c3e: $fe $ff
	jr   nz, jr_03e_6c50                             ; $6c40: $20 $0e

	xor  a                                           ; $6c42: $af
	ldh  [rLYC], a                                   ; $6c43: $e0 $45
	ld   hl, $ff41                                   ; $6c45: $21 $41 $ff
	res  6, [hl]                                     ; $6c48: $cb $b6
	call Call_03e_6c0d                               ; $6c4a: $cd $0d $6c
	jp   LCDCInterruptHandler.return                                       ; $6c4d: $c3 $4a $04


jr_03e_6c50:
	ld   a, c                                        ; $6c50: $79
	ld   [$ca3f], a                                  ; $6c51: $ea $3f $ca
	inc  a                                           ; $6c54: $3c
	ld   [$c9c9], a                                  ; $6c55: $ea $c9 $c9
	jp   LCDCInterruptHandler.return                                       ; $6c58: $c3 $4a $04


LCDCFunc04::
jr_03e_6c5b:
	ld   a, [$ca3d]                                  ; $6c5b: $fa $3d $ca
	cp   $ff                                         ; $6c5e: $fe $ff
	jr   nz, jr_03e_6c67                             ; $6c60: $20 $05

	ldh  a, [rLY]                                    ; $6c62: $f0 $44
	ld   [$ca3d], a                                  ; $6c64: $ea $3d $ca

jr_03e_6c67:
	ld   hl, $c9c9                                   ; $6c67: $21 $c9 $c9
	ld   a, [hl]                                     ; $6c6a: $7e
	inc  [hl]                                        ; $6c6b: $34
	add  a                                           ; $6c6c: $87
	ld   c, a                                        ; $6c6d: $4f
	ld   b, $00                                      ; $6c6e: $06 $00
	ld   hl, $6cdb                                   ; $6c70: $21 $db $6c
	add  hl, bc                                      ; $6c73: $09
	ld   a, [hl]                                     ; $6c74: $7e
	cp   $ff                                         ; $6c75: $fe $ff
	jr   z, jr_03e_6c86                              ; $6c77: $28 $0d

	ldh  a, [rLYC]                                   ; $6c79: $f0 $45
	cp   $48                                         ; $6c7b: $fe $48
	jr   nc, jr_03e_6c86                             ; $6c7d: $30 $07

	add  [hl]                                        ; $6c7f: $86
	ldh  [rLYC], a                                   ; $6c80: $e0 $45
	inc  hl                                          ; $6c82: $23
	ld   a, [hl]                                     ; $6c83: $7e
	jr   jr_03e_6c97                                 ; $6c84: $18 $11

jr_03e_6c86:
	ld   a, $05                                      ; $6c86: $3e $05
	ld   [wLCDCIntFuncIdx], a                                  ; $6c88: $ea $8d $c2
	ld   a, [$c9ca]                                  ; $6c8b: $fa $ca $c9
	ld   [$c20b], a                                  ; $6c8e: $ea $0b $c2
	ldh  [rLYC], a                                   ; $6c91: $e0 $45
	xor  a                                           ; $6c93: $af
	ld   [$c9c9], a                                  ; $6c94: $ea $c9 $c9

jr_03e_6c97:
	ld   c, a                                        ; $6c97: $4f
	add  a                                           ; $6c98: $87
	add  c                                           ; $6c99: $81
	ld   c, a                                        ; $6c9a: $4f
	ld   b, $00                                      ; $6c9b: $06 $00
	ld   hl, $6cce                                   ; $6c9d: $21 $ce $6c
	add  hl, bc                                      ; $6ca0: $09
	ld   a, [hl-]                                    ; $6ca1: $3a
	ld   b, a                                        ; $6ca2: $47
	ld   a, [hl-]                                    ; $6ca3: $3a
	ld   l, [hl]                                     ; $6ca4: $6e
	ld   h, a                                        ; $6ca5: $67
	ld   a, b                                        ; $6ca6: $78
	push af                                          ; $6ca7: $f5
	push hl                                          ; $6ca8: $e5
	ld   b, $05                                      ; $6ca9: $06 $05
	ld   c, $03                                      ; $6cab: $0e $03
	call $062c                                       ; $6cad: $cd $2c $06
	pop  hl                                          ; $6cb0: $e1
	pop  af                                          ; $6cb1: $f1
	ld   bc, $0018                                   ; $6cb2: $01 $18 $00
	add  hl, bc                                      ; $6cb5: $09
	ld   b, $00                                      ; $6cb6: $06 $00
	ld   c, $06                                      ; $6cb8: $0e $06
	call $0680                                       ; $6cba: $cd $80 $06
	ld   a, [$ca3e]                                  ; $6cbd: $fa $3e $ca
	cp   $ff                                         ; $6cc0: $fe $ff
	jr   nz, jr_03e_6cc9                             ; $6cc2: $20 $05

	ldh  a, [rLY]                                    ; $6cc4: $f0 $44
	ld   [$ca3e], a                                  ; $6cc6: $ea $3e $ca

jr_03e_6cc9:
	jp   LCDCInterruptHandler.return                                       ; $6cc9: $c3 $4a $04


	jr   c, @+$73                                    ; $6ccc: $38 $71

	ld   e, $6e                                      ; $6cce: $1e $6e
	ld   a, b                                        ; $6cd0: $78
	ld   e, $b6                                      ; $6cd1: $1e $b6
	ld   a, b                                        ; $6cd3: $78
	ld   e, $fe                                      ; $6cd4: $1e $fe
	ld   a, b                                        ; $6cd6: $78
	ld   e, $46                                      ; $6cd7: $1e $46
	ld   a, c                                        ; $6cd9: $79
	ld   e, $0a                                      ; $6cda: $1e $0a
	ld   bc, $0210                                   ; $6cdc: $01 $10 $02
	db   $10                                         ; $6cdf: $10
	inc  bc                                          ; $6ce0: $03
	jr   nz, jr_03e_6ce7                             ; $6ce1: $20 $04

	db   $10                                         ; $6ce3: $10
	inc  bc                                          ; $6ce4: $03
	db   $10                                         ; $6ce5: $10
	ld   [bc], a                                     ; $6ce6: $02

jr_03e_6ce7:
	ld   a, [bc]                                     ; $6ce7: $0a
	ld   bc, $0010                                   ; $6ce8: $01 $10 $00
	ld   a, [bc]                                     ; $6ceb: $0a
	ld   bc, $0210                                   ; $6cec: $01 $10 $02
	db   $10                                         ; $6cef: $10
	inc  bc                                          ; $6cf0: $03
	jr   nz, jr_03e_6cf7                             ; $6cf1: $20 $04

	db   $10                                         ; $6cf3: $10
	inc  bc                                          ; $6cf4: $03
	db   $10                                         ; $6cf5: $10
	ld   [bc], a                                     ; $6cf6: $02

jr_03e_6cf7:
	ld   a, [bc]                                     ; $6cf7: $0a
	ld   bc, $00ff                                   ; $6cf8: $01 $ff $00
	ld   a, [bc]                                     ; $6cfb: $0a
	inc  b                                           ; $6cfc: $04
	stop                                             ; $6cfd: $10 $00
	db   $10                                         ; $6cff: $10
	inc  b                                           ; $6d00: $04
	jr   nz, jr_03e_6d03                             ; $6d01: $20 $00

jr_03e_6d03:
	db   $10                                         ; $6d03: $10
	inc  b                                           ; $6d04: $04
	stop                                             ; $6d05: $10 $00
	ld   a, [bc]                                     ; $6d07: $0a
	inc  b                                           ; $6d08: $04
	rst  $38                                         ; $6d09: $ff
	nop                                              ; $6d0a: $00


GameState1b_KohranMiniGameTitleScreen::
	ld   a, [wGameSubstate]                                  ; $6d0b: $fa $a1 $c2
	rst  JumpTable                                         ; $6d0e: $df
	dw KohranMiniGameTitleScreenSubstate0
	dw $6d22
	dw $6fd8
	dw $7021
	dw $708b
	dw $70d3


KohranMiniGameTitleScreenSubstate0:
	xor  a                                           ; $6d1b: $af
	ld   [$c9d3], a                                  ; $6d1c: $ea $d3 $c9
	ld   [$c9da], a                                  ; $6d1f: $ea $da $c9
	call TurnOnLCD                                       ; $6d22: $cd $09 $09
	ld   a, $07                                      ; $6d25: $3e $07
	call SafeSetAudVolForMultipleChannels                                       ; $6d27: $cd $e0 $1c
	ld   a, $00                                      ; $6d2a: $3e $00
	ld   [$c9d9], a                                  ; $6d2c: $ea $d9 $c9
	ld   a, [$cb1d]                                  ; $6d2f: $fa $1d $cb
	or   a                                           ; $6d32: $b7
	jr   z, jr_03e_6d54                              ; $6d33: $28 $1f

	ld   hl, $0128                                   ; $6d35: $21 $28 $01
	push af                                          ; $6d38: $f5
	ld   a, $d7                                      ; $6d39: $3e $d7
	ld   [wFarCallAddr], a                                  ; $6d3b: $ea $98 $c2
	ld   a, $71                                      ; $6d3e: $3e $71
	ld   [wFarCallAddr+1], a                                  ; $6d40: $ea $99 $c2
	ld   a, $0c                                      ; $6d43: $3e $0c
	ld   [wFarCallBank], a                                  ; $6d45: $ea $9a $c2
	pop  af                                          ; $6d48: $f1
	call FarCall                                       ; $6d49: $cd $62 $09
	or   a                                           ; $6d4c: $b7
	jr   z, jr_03e_6d54                              ; $6d4d: $28 $05

	ld   a, $01                                      ; $6d4f: $3e $01
	ld   [$c9d9], a                                  ; $6d51: $ea $d9 $c9

jr_03e_6d54:
	ld   a, $ff                                      ; $6d54: $3e $ff
	ld   [wInGameInputsEnabled], a                                  ; $6d56: $ea $0e $c2
	ld   a, $0c                                      ; $6d59: $3e $0c
	ld   [wBaseInitialStickyCounter], a                                  ; $6d5b: $ea $13 $c2
	ld   a, $04                                      ; $6d5e: $3e $04
	ld   [wBaseRepeatedStickyCounter], a                                  ; $6d60: $ea $14 $c2
	call ClearOam                                       ; $6d63: $cd $d7 $0d
	call ClearDisplayRegsAllowVBlankInt                                       ; $6d66: $cd $59 $0b
	ld   a, $87                                      ; $6d69: $3e $87
	ld   [wLCDC], a                                  ; $6d6b: $ea $03 $c2
	ld   a, [wWramBank]                                  ; $6d6e: $fa $93 $c2
	push af                                          ; $6d71: $f5
	ld   a, $03                                      ; $6d72: $3e $03
	ld   [wWramBank], a                                  ; $6d74: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $6d77: $e0 $70

if def(VWF)
	M_FarCall LoadKohranMiniGameTitleScreenGfx1
	nop
else
;
	ld   a, $15                                      ; $6d79: $3e $15
	ld   hl, $d000                                   ; $6d7b: $21 $00 $d0
	ld   de, $73c3                                   ; $6d7e: $11 $c3 $73
	call RLEXorCopy                                       ; $6d81: $cd $d2 $09

;
	ld   c, $81                                      ; $6d84: $0e $81
	ld   de, $8800                                   ; $6d86: $11 $00 $88
	ld   a, $03                                      ; $6d89: $3e $03
	ld   hl, $d000                                   ; $6d8b: $21 $00 $d0
endc
	ld   b, $40                                      ; $6d8e: $06 $40
	call EnqueueHDMATransfer                                       ; $6d90: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6d93: $cf

;
	ld   c, $81                                      ; $6d94: $0e $81
	ld   de, $8c00                                   ; $6d96: $11 $00 $8c
	ld   a, $03                                      ; $6d99: $3e $03
	ld   hl, $d400                                   ; $6d9b: $21 $00 $d4
	ld   b, $60                                      ; $6d9e: $06 $60
	call EnqueueHDMATransfer                                       ; $6da0: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6da3: $cf

;
	ld   c, $81                                      ; $6da4: $0e $81
	ld   de, $9200                                   ; $6da6: $11 $00 $92
	ld   a, $03                                      ; $6da9: $3e $03
	ld   hl, $da00                                   ; $6dab: $21 $00 $da
	ld   b, $60                                      ; $6dae: $06 $60
	call EnqueueHDMATransfer                                       ; $6db0: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6db3: $cf

if def(VWF)
	M_FarCall LoadKohranMiniGameTitleScreenGfxSpr
	nop
else
;
	ld   a, $13                                      ; $6db4: $3e $13
	ld   hl, $d000                                   ; $6db6: $21 $00 $d0
	ld   de, $7d86                                   ; $6db9: $11 $86 $7d
	call RLEXorCopy                                       ; $6dbc: $cd $d2 $09

;
	ld   c, $80                                      ; $6dbf: $0e $80
	ld   de, $8000                                   ; $6dc1: $11 $00 $80
	ld   a, $03                                      ; $6dc4: $3e $03
	ld   hl, $d000                                   ; $6dc6: $21 $00 $d0
endc
	ld   b, $40                                      ; $6dc9: $06 $40
	call EnqueueHDMATransfer                                       ; $6dcb: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6dce: $cf

;
	ld   c, $80                                      ; $6dcf: $0e $80
	ld   de, $8400                                   ; $6dd1: $11 $00 $84
	ld   a, $03                                      ; $6dd4: $3e $03
	ld   hl, $d400                                   ; $6dd6: $21 $00 $d4
	ld   b, $40                                      ; $6dd9: $06 $40
	call EnqueueHDMATransfer                                       ; $6ddb: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6dde: $cf

if def(VWF)
	M_FarCall LoadKohranMiniGameTitleScreenGfx0
	nop
else
;
	ld   a, $16                                      ; $6ddf: $3e $16
	ld   hl, $d000                                   ; $6de1: $21 $00 $d0
	ld   de, $4c65                                   ; $6de4: $11 $65 $4c
	call RLEXorCopy                                       ; $6de7: $cd $d2 $09

;
	ld   c, $80                                      ; $6dea: $0e $80
	ld   de, $8800                                   ; $6dec: $11 $00 $88
	ld   a, $03                                      ; $6def: $3e $03
	ld   hl, $d000                                   ; $6df1: $21 $00 $d0
endc
	ld   b, $40                                      ; $6df4: $06 $40
	call EnqueueHDMATransfer                                       ; $6df6: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6df9: $cf

;
	ld   c, $80                                      ; $6dfa: $0e $80
	ld   de, $8c00                                   ; $6dfc: $11 $00 $8c
	ld   a, $03                                      ; $6dff: $3e $03
	ld   hl, $d400                                   ; $6e01: $21 $00 $d4
	ld   b, $60                                      ; $6e04: $06 $60
	call EnqueueHDMATransfer                                       ; $6e06: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6e09: $cf

;
	ld   c, $80                                      ; $6e0a: $0e $80
	ld   de, $9200                                   ; $6e0c: $11 $00 $92
	ld   a, $03                                      ; $6e0f: $3e $03
	ld   hl, $da00                                   ; $6e11: $21 $00 $da
	ld   b, $60                                      ; $6e14: $06 $60
	call EnqueueHDMATransfer                                       ; $6e16: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6e19: $cf

;
	ld   a, BANK(TileAttr_KohranMiniGameTitleScreen)                                      ; $6e1a: $3e $1d
	ld   de, TileAttr_KohranMiniGameTitleScreen                                   ; $6e1c: $11 $d8 $42
	ld   hl, $dc40                                   ; $6e1f: $21 $40 $dc
	ld   bc, $1412                                   ; $6e22: $01 $12 $14
	call FarCopyLayout                                       ; $6e25: $cd $2c $0b

	ld   a, BANK(TileMap_KohranMiniGameTitleScreen)                                      ; $6e28: $3e $1d
	ld   hl, $da00                                   ; $6e2a: $21 $00 $da
	call FarCopyLayout                                       ; $6e2d: $cd $2c $0b

;
	ld   c, $81                                      ; $6e30: $0e $81
	ld   de, $9800                                   ; $6e32: $11 $00 $98
	ld   a, $03                                      ; $6e35: $3e $03
	ld   hl, $dc40                                   ; $6e37: $21 $40 $dc
	ld   b, $24                                      ; $6e3a: $06 $24
	call EnqueueHDMATransfer                                       ; $6e3c: $cd $7c $02
	ld   c, $80                                      ; $6e3f: $0e $80
	ld   de, $9800                                   ; $6e41: $11 $00 $98
	ld   a, $03                                      ; $6e44: $3e $03
	ld   hl, $da00                                   ; $6e46: $21 $00 $da
	ld   b, $24                                      ; $6e49: $06 $24
	call EnqueueHDMATransfer                                       ; $6e4b: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6e4e: $cf
	ld   de, $d500                                   ; $6e4f: $11 $00 $d5
	ld   hl, $dc40                                   ; $6e52: $21 $40 $dc
	ld   bc, $00c0                                   ; $6e55: $01 $c0 $00
	call MemCopy                                       ; $6e58: $cd $a9 $09
	ld   de, $d400                                   ; $6e5b: $11 $00 $d4
	ld   hl, $dc40                                   ; $6e5e: $21 $40 $dc
	ld   bc, $00c0                                   ; $6e61: $01 $c0 $00
	call MemCopy                                       ; $6e64: $cd $a9 $09
	ld   de, $d300                                   ; $6e67: $11 $00 $d3
	ld   hl, $dc40                                   ; $6e6a: $21 $40 $dc
	ld   bc, $00c0                                   ; $6e6d: $01 $c0 $00
	call MemCopy                                       ; $6e70: $cd $a9 $09
	ld   de, $d700                                   ; $6e73: $11 $00 $d7
	ld   hl, $dc60                                   ; $6e76: $21 $60 $dc
	ld   bc, $0080                                   ; $6e79: $01 $80 $00
	call MemCopy                                       ; $6e7c: $cd $a9 $09
	ld   de, $d900                                   ; $6e7f: $11 $00 $d9
	ld   hl, $dc40                                   ; $6e82: $21 $40 $dc
	ld   bc, $00c0                                   ; $6e85: $01 $c0 $00
	call MemCopy                                       ; $6e88: $cd $a9 $09
	ld   de, $d200                                   ; $6e8b: $11 $00 $d2
	ld   hl, $da00                                   ; $6e8e: $21 $00 $da
	ld   bc, $00c0                                   ; $6e91: $01 $c0 $00
	call MemCopy                                       ; $6e94: $cd $a9 $09
	ld   de, $d100                                   ; $6e97: $11 $00 $d1
	ld   hl, $da00                                   ; $6e9a: $21 $00 $da
	ld   bc, $00c0                                   ; $6e9d: $01 $c0 $00
	call MemCopy                                       ; $6ea0: $cd $a9 $09
	ld   de, $d000                                   ; $6ea3: $11 $00 $d0
	ld   hl, $da00                                   ; $6ea6: $21 $00 $da
	ld   bc, $00c0                                   ; $6ea9: $01 $c0 $00
	call MemCopy                                       ; $6eac: $cd $a9 $09
	ld   de, $d600                                   ; $6eaf: $11 $00 $d6
	ld   hl, $da20                                   ; $6eb2: $21 $20 $da
	ld   bc, $0080                                   ; $6eb5: $01 $80 $00
	call MemCopy                                       ; $6eb8: $cd $a9 $09
	ld   de, $d800                                   ; $6ebb: $11 $00 $d8
	ld   hl, $da00                                   ; $6ebe: $21 $00 $da
	ld   bc, $00c0                                   ; $6ec1: $01 $c0 $00
	call MemCopy                                       ; $6ec4: $cd $a9 $09

; Practice popup box
	ld   a, BANK(TileAttr_KohranMiniGameTSPracticeBox)                                     ; $6ec7: $3e $1e
	ld   de, TileAttr_KohranMiniGameTSPracticeBox                                   ; $6ec9: $11 $00 $74
	ld   hl, $d40c                                   ; $6ecc: $21 $0c $d4
	ld   bc, $0806                                   ; $6ecf: $01 $06 $08
	call FarCopyLayout                                       ; $6ed2: $cd $2c $0b

	ld   a, BANK(TileMap_KohranMiniGameTSPracticeBox)                                      ; $6ed5: $3e $1e
	ld   hl, $d10c                                   ; $6ed7: $21 $0c $d1
	call FarCopyLayout                                       ; $6eda: $cd $2c $0b

; 1st popup box
	ld   a, BANK(TileAttr_KohranMiniGameTSPopupBox)                                      ; $6edd: $3e $1e
	ld   de, TileAttr_KohranMiniGameTSPopupBox                                   ; $6edf: $11 $0e $7b
	ld   hl, $d32c                                   ; $6ee2: $21 $2c $d3
	ld   bc, $0804                                   ; $6ee5: $01 $04 $08
	call FarCopyLayout                                       ; $6ee8: $cd $2c $0b

	ld   a, BANK(TileMap_KohranMiniGameTSPopupBox)                                      ; $6eeb: $3e $1e
	ld   hl, $d02c                                   ; $6eed: $21 $2c $d0
	call FarCopyLayout                                       ; $6ef0: $cd $2c $0b

; Hide Press A btn layout
	ld   a, $1e                                      ; $6ef3: $3e $1e
	ld   de, $7db1                                   ; $6ef5: $11 $b1 $7d
	ld   hl, $d70e                                   ; $6ef8: $21 $0e $d7
	ld   bc, $0604                                   ; $6efb: $01 $04 $06
	call FarCopyLayout                                       ; $6efe: $cd $2c $0b

	ld   a, $1e                                      ; $6f01: $3e $1e
	ld   hl, $d60e                                   ; $6f03: $21 $0e $d6
	call FarCopyLayout                                       ; $6f06: $cd $2c $0b

; Difficulty popup box
	ld   a, BANK(TileAttr_KohranMiniGameTSDifficultyBox)                                      ; $6f09: $3e $1e
	ld   de, TileAttr_KohranMiniGameTSDifficultyBox                                   ; $6f0b: $11 $60 $74
	ld   hl, $d90c                                   ; $6f0e: $21 $0c $d9
	ld   bc, $0806                                   ; $6f11: $01 $06 $08
	call FarCopyLayout                                       ; $6f14: $cd $2c $0b

	ld   a, BANK(TileMap_KohranMiniGameTSDifficultyBox)                                      ; $6f17: $3e $1e
	ld   hl, $d80c                                   ; $6f19: $21 $0c $d8
	call FarCopyLayout                                       ; $6f1c: $cd $2c $0b

;
	pop  af                                          ; $6f1f: $f1
	ld   [wWramBank], a                                  ; $6f20: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $6f23: $e0 $70
	xor  a                                           ; $6f25: $af
	ld   [wWX], a                                  ; $6f26: $ea $09 $c2
	ld   [wWY], a                                  ; $6f29: $ea $0a $c2
	ld   [wSCX], a                                  ; $6f2c: $ea $07 $c2
	ld   [wSCY], a                                  ; $6f2f: $ea $08 $c2
	call ClearBaseAnimSpriteSpecDetails                                       ; $6f32: $cd $c9 $2e
	ld   a, $01                                      ; $6f35: $3e $01
	ld   hl, $0000                                   ; $6f37: $21 $00 $00
	call ReserveBaseAnimSpriteSpecAndInstance                                       ; $6f3a: $cd $4b $2f
	ld   [$c9d6], a                                  ; $6f3d: $ea $d6 $c9
	call StartAnimatingAnimatedSpriteSpec                                       ; $6f40: $cd $14 $30
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $6f43: $cd $76 $30
	ld   a, $00                                      ; $6f46: $3e $00
	ld   bc, $0000                                   ; $6f48: $01 $00 $00
	ld   de, $7180                                   ; $6f4b: $11 $80 $71
	push af                                          ; $6f4e: $f5
	ld   a, $03                                      ; $6f4f: $3e $03
	ld   [wFarCallAddr], a                                  ; $6f51: $ea $98 $c2
	ld   a, $41                                      ; $6f54: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $6f56: $ea $99 $c2
	ld   a, $01                                      ; $6f59: $3e $01
	ld   [wFarCallBank], a                                  ; $6f5b: $ea $9a $c2
	pop  af                                          ; $6f5e: $f1
	call FarCall                                       ; $6f5f: $cd $62 $09
	ld   a, $01                                      ; $6f62: $3e $01
	ld   hl, $7000                                   ; $6f64: $21 $00 $70
	ld   de, wBGPalettes                                   ; $6f67: $11 $de $c2
	ld   bc, $0080                                   ; $6f6a: $01 $80 $00
	call FarMemCopy                                       ; $6f6d: $cd $b2 $09
	ld   bc, $003f                                   ; $6f70: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $6f73: $cd $aa $04
	xor  a                                           ; $6f76: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $6f77: $ea $62 $c3
	ld   a, $40                                      ; $6f7a: $3e $40
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $6f7c: $ea $63 $c3
	ld   a, $03                                      ; $6f7f: $3e $03
	ld   b, $01                                      ; $6f81: $06 $01
	ld   hl, $7000                                   ; $6f83: $21 $00 $70
	ld   c, BANK(Palettes_KohranMiniGameTitleScreen)                                      ; $6f86: $0e $1e
	ld   de, Palettes_KohranMiniGameTitleScreen                                   ; $6f88: $11 $fc $6a
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $6f8b: $cd $48 $07
	ld   a, $0b                                      ; $6f8e: $3e $0b
	call PlaySong                                       ; $6f90: $cd $92 $1a
	ld   a, [wGameSubstate]                                  ; $6f93: $fa $a1 $c2
	cp   $01                                         ; $6f96: $fe $01
	jr   z, jr_03e_6fa4                              ; $6f98: $28 $0a

	call Call_03e_726b                               ; $6f9a: $cd $6b $72
	ld   a, $02                                      ; $6f9d: $3e $02
	ld   [wGameSubstate], a                                  ; $6f9f: $ea $a1 $c2
	jr   jr_03e_6fac                                 ; $6fa2: $18 $08

jr_03e_6fa4:
	call DisplayKohran1stPopupBox                               ; $6fa4: $cd $75 $72
	ld   a, $03                                      ; $6fa7: $3e $03
	ld   [wGameSubstate], a                                  ; $6fa9: $ea $a1 $c2

jr_03e_6fac:
	call Call_03e_719b                               ; $6fac: $cd $9b $71
	push af                                          ; $6faf: $f5
	ld   a, $43                                      ; $6fb0: $3e $43
	ld   [wFarCallAddr], a                                  ; $6fb2: $ea $98 $c2
	ld   a, $6a                                      ; $6fb5: $3e $6a
	ld   [wFarCallAddr+1], a                                  ; $6fb7: $ea $99 $c2
	ld   a, $11                                      ; $6fba: $3e $11
	ld   [wFarCallBank], a                                  ; $6fbc: $ea $9a $c2
	pop  af                                          ; $6fbf: $f1
	call FarCall                                       ; $6fc0: $cd $62 $09
	ld   a, BANK(Palettes_KohranMiniGameTitleScreen)                                      ; $6fc3: $3e $1e
	ld   hl, Palettes_KohranMiniGameTitleScreen                                   ; $6fc5: $21 $fc $6a
	ld   de, wBGPalettes                                   ; $6fc8: $11 $de $c2
	ld   bc, $0080                                   ; $6fcb: $01 $80 $00
	call FarMemCopy                                       ; $6fce: $cd $b2 $09
	ld   bc, $003f                                   ; $6fd1: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $6fd4: $cd $aa $04
	ret                                              ; $6fd7: $c9


	call Call_03e_719b                               ; $6fd8: $cd $9b $71
	call Call_03e_721a                               ; $6fdb: $cd $1a $72
	push af                                          ; $6fde: $f5
	ld   a, $47                                      ; $6fdf: $3e $47
	ld   [wFarCallAddr], a                                  ; $6fe1: $ea $98 $c2
	ld   a, $46                                      ; $6fe4: $3e $46
	ld   [wFarCallAddr+1], a                                  ; $6fe6: $ea $99 $c2
	ld   a, $3f                                      ; $6fe9: $3e $3f
	ld   [wFarCallBank], a                                  ; $6feb: $ea $9a $c2
	pop  af                                          ; $6fee: $f1
	call FarCall                                       ; $6fef: $cd $62 $09
	ld   a, [wInGameButtonsPressed]                                  ; $6ff2: $fa $10 $c2
	bit  0, a                                        ; $6ff5: $cb $47
	jr   z, jr_03e_7007                              ; $6ff7: $28 $0e

	call DisplayKohran1stPopupBox                               ; $6ff9: $cd $75 $72
	ld   hl, wGameSubstate                                   ; $6ffc: $21 $a1 $c2
	inc  [hl]                                        ; $6fff: $34
	ld   a, $21                                      ; $7000: $3e $21
	call PlaySoundEffect                                       ; $7002: $cd $df $1a
	jr   jr_03e_7020                                 ; $7005: $18 $19

jr_03e_7007:
	bit  1, a                                        ; $7007: $cb $4f
	jr   z, jr_03e_7020                              ; $7009: $28 $15

	ld   a, [$cb1d]                                  ; $700b: $fa $1d $cb
	or   a                                           ; $700e: $b7
	jr   z, jr_03e_7020                              ; $700f: $28 $0f

	ld   a, $03                                      ; $7011: $3e $03
	ld   [$c9d3], a                                  ; $7013: $ea $d3 $c9
	ld   a, $05                                      ; $7016: $3e $05
	ld   [wGameSubstate], a                                  ; $7018: $ea $a1 $c2
	ld   a, $22                                      ; $701b: $3e $22
	call PlaySoundEffect                                       ; $701d: $cd $df $1a

jr_03e_7020:
	ret                                              ; $7020: $c9


	ld   hl, $c9d3                                   ; $7021: $21 $d3 $c9
	ld   c, $01                                      ; $7024: $0e $01
	ld   a, [$cb1d]                                  ; $7026: $fa $1d $cb
	or   a                                           ; $7029: $b7
	jr   nz, jr_03e_702e                             ; $702a: $20 $02

	ld   c, $02                                      ; $702c: $0e $02

jr_03e_702e:
	ld   a, [wInGameButtonsPressed]                                  ; $702e: $fa $10 $c2
	bit  6, a                                        ; $7031: $cb $77
	jr   z, jr_03e_703c                              ; $7033: $28 $07

	ld   a, [hl]                                     ; $7035: $7e
	or   a                                           ; $7036: $b7
	jr   z, jr_03e_7087                              ; $7037: $28 $4e

	dec  [hl]                                        ; $7039: $35
	jr   jr_03e_7045                                 ; $703a: $18 $09

jr_03e_703c:
	bit  7, a                                        ; $703c: $cb $7f
	jr   z, jr_03e_704f                              ; $703e: $28 $0f

	ld   a, [hl]                                     ; $7040: $7e
	cp   c                                           ; $7041: $b9
	jr   z, jr_03e_7087                              ; $7042: $28 $43

	inc  [hl]                                        ; $7044: $34

jr_03e_7045:
	call $71dd                                       ; $7045: $cd $dd $71
	ld   a, $20                                      ; $7048: $3e $20
	call PlaySoundEffect                                       ; $704a: $cd $df $1a
	jr   jr_03e_7087                                 ; $704d: $18 $38

jr_03e_704f:
	bit  1, a                                        ; $704f: $cb $4f
	jr   z, jr_03e_7064                              ; $7051: $28 $11

	call Call_03e_72df                               ; $7053: $cd $df $72
	call Call_03e_726b                               ; $7056: $cd $6b $72
	ld   hl, wGameSubstate                                   ; $7059: $21 $a1 $c2
	dec  [hl]                                        ; $705c: $35
	ld   a, $22                                      ; $705d: $3e $22
	call PlaySoundEffect                                       ; $705f: $cd $df $1a
	jr   jr_03e_7087                                 ; $7062: $18 $23

jr_03e_7064:
	bit  0, a                                        ; $7064: $cb $47
	jr   z, jr_03e_7087                              ; $7066: $28 $1f

	ld   a, $21                                      ; $7068: $3e $21
	call PlaySoundEffect                                       ; $706a: $cd $df $1a
	ld   a, $05                                      ; $706d: $3e $05
	ld   [wGameSubstate], a                                  ; $706f: $ea $a1 $c2
	ld   a, [$c9d3]                                  ; $7072: $fa $d3 $c9
	or   a                                           ; $7075: $b7
	jr   z, jr_03e_7087                              ; $7076: $28 $0f

	ld   a, [$c9d9]                                  ; $7078: $fa $d9 $c9
	cp   $00                                         ; $707b: $fe $00
	jr   z, jr_03e_7087                              ; $707d: $28 $08

	call DisplayKohranDifficultyPopupBox                               ; $707f: $cd $bd $72
	ld   a, $04                                      ; $7082: $3e $04
	ld   [wGameSubstate], a                                  ; $7084: $ea $a1 $c2

jr_03e_7087:
	call Call_03e_719b                               ; $7087: $cd $9b $71
	ret                                              ; $708a: $c9


	ld   hl, $c9da                                   ; $708b: $21 $da $c9
	ld   a, [wInGameButtonsPressed]                                  ; $708e: $fa $10 $c2
	bit  6, a                                        ; $7091: $cb $77
	jr   z, jr_03e_709c                              ; $7093: $28 $07

	ld   a, [hl]                                     ; $7095: $7e
	or   a                                           ; $7096: $b7
	jr   z, jr_03e_70cf                              ; $7097: $28 $36

	dec  [hl]                                        ; $7099: $35
	jr   jr_03e_70a6                                 ; $709a: $18 $0a

jr_03e_709c:
	bit  7, a                                        ; $709c: $cb $7f
	jr   z, jr_03e_70b0                              ; $709e: $28 $10

	ld   a, [hl]                                     ; $70a0: $7e
	cp   $01                                         ; $70a1: $fe $01
	jr   z, jr_03e_70cf                              ; $70a3: $28 $2a

	inc  [hl]                                        ; $70a5: $34

jr_03e_70a6:
	call Call_03e_71d3                               ; $70a6: $cd $d3 $71
	ld   a, $20                                      ; $70a9: $3e $20
	call PlaySoundEffect                                       ; $70ab: $cd $df $1a
	jr   jr_03e_70cf                                 ; $70ae: $18 $1f

jr_03e_70b0:
	bit  1, a                                        ; $70b0: $cb $4f
	jr   z, jr_03e_70c2                              ; $70b2: $28 $0e

	call DisplayKohran1stPopupBox                               ; $70b4: $cd $75 $72
	ld   hl, wGameSubstate                                   ; $70b7: $21 $a1 $c2
	dec  [hl]                                        ; $70ba: $35
	ld   a, $22                                      ; $70bb: $3e $22
	call PlaySoundEffect                                       ; $70bd: $cd $df $1a
	jr   jr_03e_70cf                                 ; $70c0: $18 $0d

jr_03e_70c2:
	bit  0, a                                        ; $70c2: $cb $47
	jr   z, jr_03e_70cf                              ; $70c4: $28 $09

	ld   a, $21                                      ; $70c6: $3e $21
	call PlaySoundEffect                                       ; $70c8: $cd $df $1a
	ld   hl, wGameSubstate                                   ; $70cb: $21 $a1 $c2
	inc  [hl]                                        ; $70ce: $34

jr_03e_70cf:
	call Call_03e_719b                               ; $70cf: $cd $9b $71
	ret                                              ; $70d2: $c9


	call Call_03e_719b                               ; $70d3: $cd $9b $71
	ld   a, [$c9d3]                                  ; $70d6: $fa $d3 $c9
	or   a                                           ; $70d9: $b7
	jr   z, jr_03e_7104                              ; $70da: $28 $28

	cp   $03                                         ; $70dc: $fe $03
	jr   z, jr_03e_7104                              ; $70de: $28 $24

	ld   a, [$c9d6]                                  ; $70e0: $fa $d6 $c9
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $70e3: $cd $76 $30
	push af                                          ; $70e6: $f5
	ld   a, $43                                      ; $70e7: $3e $43
	ld   [wFarCallAddr], a                                  ; $70e9: $ea $98 $c2
	ld   a, $41                                      ; $70ec: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $70ee: $ea $99 $c2
	ld   a, $01                                      ; $70f1: $3e $01
	ld   [wFarCallBank], a                                  ; $70f3: $ea $9a $c2
	pop  af                                          ; $70f6: $f1
	call FarCall                                       ; $70f7: $cd $62 $09
	ld   a, c                                        ; $70fa: $79
	cp   $40                                         ; $70fb: $fe $40
	ret  nz                                          ; $70fd: $c0

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $70fe: $cf
	ld   a, $5b                                      ; $70ff: $3e $5b
	call PlaySampledSound                                       ; $7101: $cd $64 $1b

jr_03e_7104:
	xor  a                                           ; $7104: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $7105: $ea $62 $c3
	ld   a, $40                                      ; $7108: $3e $40
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $710a: $ea $63 $c3
	ld   a, $03                                      ; $710d: $3e $03
	ld   b, BANK(Palettes_KohranMiniGameTitleScreen)                                      ; $710f: $06 $1e
	ld   hl, Palettes_KohranMiniGameTitleScreen                                   ; $7111: $21 $fc $6a
	ld   c, $01                                      ; $7114: $0e $01
	ld   de, $7000                                   ; $7116: $11 $00 $70
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $7119: $cd $48 $07
	ld   a, [$c9d3]                                  ; $711c: $fa $d3 $c9
	push af                                          ; $711f: $f5
	ld   a, $83                                      ; $7120: $3e $83
	ld   [wFarCallAddr], a                                  ; $7122: $ea $98 $c2
	ld   a, $77                                      ; $7125: $3e $77
	ld   [wFarCallAddr+1], a                                  ; $7127: $ea $99 $c2
	ld   a, $3e                                      ; $712a: $3e $3e
	ld   [wFarCallBank], a                                  ; $712c: $ea $9a $c2
	pop  af                                          ; $712f: $f1
	call FarCall                                       ; $7130: $cd $62 $09
	ld   h, $1b                                      ; $7133: $26 $1b
	ld   l, $01                                      ; $7135: $2e $01
	push af                                          ; $7137: $f5
	ld   a, $48                                      ; $7138: $3e $48
	ld   [wFarCallAddr], a                                  ; $713a: $ea $98 $c2
	ld   a, $62                                      ; $713d: $3e $62
	ld   [wFarCallAddr+1], a                                  ; $713f: $ea $99 $c2
	ld   a, $20                                      ; $7142: $3e $20
	ld   [wFarCallBank], a                                  ; $7144: $ea $9a $c2
	pop  af                                          ; $7147: $f1
	call FarCall                                       ; $7148: $cd $62 $09
	ld   a, [$c9d3]                                  ; $714b: $fa $d3 $c9
	or   a                                           ; $714e: $b7
	jr   z, jr_03e_719a                              ; $714f: $28 $49

	ld   b, $00                                      ; $7151: $06 $00
	ld   a, [$c9d7]                                  ; $7153: $fa $d7 $c9
	ld   h, a                                        ; $7156: $67
	ld   a, [$c9d8]                                  ; $7157: $fa $d8 $c9
	ld   l, a                                        ; $715a: $6f
	ld   a, [$cb1d]                                  ; $715b: $fa $1d $cb
	or   a                                           ; $715e: $b7
	jr   nz, jr_03e_716e                             ; $715f: $20 $0d

	ld   a, [$c9d3]                                  ; $7161: $fa $d3 $c9
	cp   $02                                         ; $7164: $fe $02
	jr   z, jr_03e_716e                              ; $7166: $28 $06

	ld   h, $1b                                      ; $7168: $26 $1b
	ld   l, $01                                      ; $716a: $2e $01
	ld   b, $01                                      ; $716c: $06 $01

jr_03e_716e:
	ld   a, [$c9da]                                  ; $716e: $fa $da $c9
	ld   c, a                                        ; $7171: $4f
	ld   a, b                                        ; $7172: $78
	push af                                          ; $7173: $f5
	ld   a, $2e                                      ; $7174: $3e $2e
	ld   [wFarCallAddr], a                                  ; $7176: $ea $98 $c2
	ld   a, $62                                      ; $7179: $3e $62
	ld   [wFarCallAddr+1], a                                  ; $717b: $ea $99 $c2
	ld   a, $20                                      ; $717e: $3e $20
	ld   [wFarCallBank], a                                  ; $7180: $ea $9a $c2
	pop  af                                          ; $7183: $f1
	call FarCall                                       ; $7184: $cd $62 $09
	ld   a, [$c9d3]                                  ; $7187: $fa $d3 $c9
	cp   $03                                         ; $718a: $fe $03
	jr   nz, jr_03e_719a                             ; $718c: $20 $0c

	ld   a, [$c9d7]                                  ; $718e: $fa $d7 $c9
	ld   [wGameState], a                                  ; $7191: $ea $a0 $c2
	ld   a, [$c9d8]                                  ; $7194: $fa $d8 $c9
	ld   [wGameSubstate], a                                  ; $7197: $ea $a1 $c2

jr_03e_719a:
	ret                                              ; $719a: $c9


Call_03e_719b:
	call ClearOam                                       ; $719b: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $719e: $cd $d3 $2e
	call Call_03e_71a5                               ; $71a1: $cd $a5 $71
	ret                                              ; $71a4: $c9


Call_03e_71a5:
	ld   bc, $5020                                   ; $71a5: $01 $20 $50
	ld   a, $0a                                      ; $71a8: $3e $0a
	ld   [wSpriteGroup], a                                  ; $71aa: $ea $1a $c2
	ld   a, $3f                                      ; $71ad: $3e $3f
	call LoadSpriteFromMainTable                                       ; $71af: $cd $16 $0e
	ret                                              ; $71b2: $c9


Call_03e_71b3:
	ld   a, [$c9d6]                                  ; $71b3: $fa $d6 $c9
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $71b6: $cd $76 $30
	ld   a, $00                                      ; $71b9: $3e $00
	ld   de, $7180                                   ; $71bb: $11 $80 $71
	push af                                          ; $71be: $f5
	ld   a, $1c                                      ; $71bf: $3e $1c
	ld   [wFarCallAddr], a                                  ; $71c1: $ea $98 $c2
	ld   a, $41                                      ; $71c4: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $71c6: $ea $99 $c2
	ld   a, $01                                      ; $71c9: $3e $01
	ld   [wFarCallBank], a                                  ; $71cb: $ea $9a $c2
	pop  af                                          ; $71ce: $f1
	call FarCall                                       ; $71cf: $cd $62 $09
	ret                                              ; $71d2: $c9


Call_03e_71d3:
	ld   hl, $71db                                   ; $71d3: $21 $db $71
	ld   a, [$c9da]                                  ; $71d6: $fa $da $c9
	jr   @+$1a                                       ; $71d9: $18 $18

	db   $10                                         ; $71db: $10
	ld   e, $21                                      ; $71dc: $1e $21
	pop  af                                          ; $71de: $f1
	ld   [hl], c                                     ; $71df: $71
	ld   a, [$cb1d]                                  ; $71e0: $fa $1d $cb
	or   a                                           ; $71e3: $b7
	jr   nz, jr_03e_71e9                             ; $71e4: $20 $03

	ld   hl, $71ee                                   ; $71e6: $21 $ee $71

jr_03e_71e9:
	ld   a, [$c9d3]                                  ; $71e9: $fa $d3 $c9
	jr   @+$07                                       ; $71ec: $18 $05

	ld   [bc], a                                     ; $71ee: $02
	db   $10                                         ; $71ef: $10
	ld   e, $0a                                      ; $71f0: $1e $0a
	ld   d, $4f                                      ; $71f2: $16 $4f
	ld   b, $00                                      ; $71f4: $06 $00
	add  hl, bc                                      ; $71f6: $09
	ld   c, [hl]                                     ; $71f7: $4e
	ld   b, $65                                      ; $71f8: $06 $65
	ld   a, [$c9d6]                                  ; $71fa: $fa $d6 $c9
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $71fd: $cd $76 $30
	ld   a, $6d                                      ; $7200: $3e $6d
	ld   de, $7180                                   ; $7202: $11 $80 $71
	push af                                          ; $7205: $f5
	ld   a, $03                                      ; $7206: $3e $03
	ld   [wFarCallAddr], a                                  ; $7208: $ea $98 $c2
	ld   a, $41                                      ; $720b: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $720d: $ea $99 $c2
	ld   a, $01                                      ; $7210: $3e $01
	ld   [wFarCallBank], a                                  ; $7212: $ea $9a $c2
	pop  af                                          ; $7215: $f1
	call FarCall                                       ; $7216: $cd $62 $09
	ret                                              ; $7219: $c9


Call_03e_721a:
	ld   hl, $c9d4                                   ; $721a: $21 $d4 $c9
	dec  [hl]                                        ; $721d: $35
	jr   nz, jr_03e_726a                             ; $721e: $20 $4a

	ld   [hl], $21                                   ; $7220: $36 $21
	ld   hl, $c9d5                                   ; $7222: $21 $d5 $c9
	ld   a, [hl]                                     ; $7225: $7e
	xor  $01                                         ; $7226: $ee $01
	ld   [hl], a                                     ; $7228: $77
	or   a                                           ; $7229: $b7
	jr   nz, jr_03e_724c                             ; $722a: $20 $20

	ld   c, $80                                      ; $722c: $0e $80
	ld   de, $9820                                   ; $722e: $11 $20 $98
	ld   a, $03                                      ; $7231: $3e $03
	ld   hl, $d220                                   ; $7233: $21 $20 $d2
	ld   b, $08                                      ; $7236: $06 $08
	call EnqueueHDMATransfer                                       ; $7238: $cd $7c $02
	ld   c, $81                                      ; $723b: $0e $81
	ld   de, $9820                                   ; $723d: $11 $20 $98
	ld   a, $03                                      ; $7240: $3e $03
	ld   hl, $d520                                   ; $7242: $21 $20 $d5
	ld   b, $08                                      ; $7245: $06 $08
	call EnqueueHDMATransfer                                       ; $7247: $cd $7c $02
	jr   jr_03e_726a                                 ; $724a: $18 $1e

jr_03e_724c:
	ld   c, $80                                      ; $724c: $0e $80
	ld   de, $9820                                   ; $724e: $11 $20 $98
	ld   a, $03                                      ; $7251: $3e $03
	ld   hl, $d600                                   ; $7253: $21 $00 $d6
	ld   b, $08                                      ; $7256: $06 $08
	call EnqueueHDMATransfer                                       ; $7258: $cd $7c $02
	ld   c, $81                                      ; $725b: $0e $81
	ld   de, $9820                                   ; $725d: $11 $20 $98
	ld   a, $03                                      ; $7260: $3e $03
	ld   hl, $d700                                   ; $7262: $21 $00 $d7
	ld   b, $08                                      ; $7265: $06 $08
	call EnqueueHDMATransfer                                       ; $7267: $cd $7c $02

jr_03e_726a:
	ret                                              ; $726a: $c9


Call_03e_726b:
	ld   a, $21                                      ; $726b: $3e $21
	ld   [$c9d4], a                                  ; $726d: $ea $d4 $c9
	xor  a                                           ; $7270: $af
	ld   [$c9d5], a                                  ; $7271: $ea $d5 $c9
	ret                                              ; $7274: $c9


DisplayKohran1stPopupBox:
	call $71dd                                       ; $7275: $cd $dd $71
	ld   a, [$cb1d]                                  ; $7278: $fa $1d $cb
	or   a                                           ; $727b: $b7
	jr   nz, jr_03e_729e                             ; $727c: $20 $20

	ld   c, $80                                      ; $727e: $0e $80
	ld   de, $9800                                   ; $7280: $11 $00 $98
	ld   a, $03                                      ; $7283: $3e $03
	ld   hl, $d100                                   ; $7285: $21 $00 $d1
	ld   b, $0c                                      ; $7288: $06 $0c
	call EnqueueHDMATransfer                                       ; $728a: $cd $7c $02
	ld   c, $81                                      ; $728d: $0e $81
	ld   de, $9800                                   ; $728f: $11 $00 $98
	ld   a, $03                                      ; $7292: $3e $03
	ld   hl, $d400                                   ; $7294: $21 $00 $d4
	ld   b, $0c                                      ; $7297: $06 $0c
	call EnqueueHDMATransfer                                       ; $7299: $cd $7c $02
	jr   jr_03e_72bc                                 ; $729c: $18 $1e

jr_03e_729e:
	ld   c, $80                                      ; $729e: $0e $80
	ld   de, $9800                                   ; $72a0: $11 $00 $98
	ld   a, $03                                      ; $72a3: $3e $03
	ld   hl, $d000                                   ; $72a5: $21 $00 $d0
	ld   b, $0c                                      ; $72a8: $06 $0c
	call EnqueueHDMATransfer                                       ; $72aa: $cd $7c $02
	ld   c, $81                                      ; $72ad: $0e $81
	ld   de, $9800                                   ; $72af: $11 $00 $98
	ld   a, $03                                      ; $72b2: $3e $03
	ld   hl, $d300                                   ; $72b4: $21 $00 $d3
	ld   b, $0c                                      ; $72b7: $06 $0c
	call EnqueueHDMATransfer                                       ; $72b9: $cd $7c $02

jr_03e_72bc:
	ret                                              ; $72bc: $c9


DisplayKohranDifficultyPopupBox:
	call Call_03e_71d3                               ; $72bd: $cd $d3 $71
	ld   c, $80                                      ; $72c0: $0e $80
	ld   de, $9800                                   ; $72c2: $11 $00 $98
	ld   a, $03                                      ; $72c5: $3e $03
	ld   hl, $d800                                   ; $72c7: $21 $00 $d8
	ld   b, $0c                                      ; $72ca: $06 $0c
	call EnqueueHDMATransfer                                       ; $72cc: $cd $7c $02
	ld   c, $81                                      ; $72cf: $0e $81
	ld   de, $9800                                   ; $72d1: $11 $00 $98
	ld   a, $03                                      ; $72d4: $3e $03
	ld   hl, $d900                                   ; $72d6: $21 $00 $d9
	ld   b, $0c                                      ; $72d9: $06 $0c
	call EnqueueHDMATransfer                                       ; $72db: $cd $7c $02
	ret                                              ; $72de: $c9


Call_03e_72df:
	call Call_03e_71b3                               ; $72df: $cd $b3 $71
	ld   c, $80                                      ; $72e2: $0e $80
	ld   de, $9800                                   ; $72e4: $11 $00 $98
	ld   a, $03                                      ; $72e7: $3e $03
	ld   hl, $d200                                   ; $72e9: $21 $00 $d2
	ld   b, $0c                                      ; $72ec: $06 $0c
	call EnqueueHDMATransfer                                       ; $72ee: $cd $7c $02
	ld   c, $81                                      ; $72f1: $0e $81
	ld   de, $9800                                   ; $72f3: $11 $00 $98
	ld   a, $03                                      ; $72f6: $3e $03
	ld   hl, $d500                                   ; $72f8: $21 $00 $d5
	ld   b, $0c                                      ; $72fb: $06 $0c
	call EnqueueHDMATransfer                                       ; $72fd: $cd $7c $02
	ret                                              ; $7300: $c9


SetKohranMiniGameTitleScreenState::
	ld   a, h                                        ; $7301: $7c
	ld   [$c9d7], a                                  ; $7302: $ea $d7 $c9
	ld   a, l                                        ; $7305: $7d
	ld   [$c9d8], a                                  ; $7306: $ea $d8 $c9
	ld   a, GS_KOHRAN_MINI_GAME_TITLE_SCREEN                                      ; $7309: $3e $1b
	ld   [wGameState], a                                  ; $730b: $ea $a0 $c2
	ld   a, $00                                      ; $730e: $3e $00
	ld   [wGameSubstate], a                                  ; $7310: $ea $a1 $c2
	ret                                              ; $7313: $c9


GameState1c_IrisMiniGameTitleScreen::
	ld   a, [wGameSubstate]                                  ; $7314: $fa $a1 $c2
	rst  JumpTable                                         ; $7317: $df
	dw IrisMiniGameTitleScreenSubstate0
	dw IrisMiniGameTitleScreenSubstate1
	dw $75d1
	dw $761a
	dw $7684
	dw $76cc


IrisMiniGameTitleScreenSubstate0:
	xor  a                                    ; $7324: $af
	ld   [$c9db], a                                  ; $7325: $ea $db $c9
	ld   [$c9e0], a                                  ; $7328: $ea $e0 $c9

IrisMiniGameTitleScreenSubstate1:
	call TurnOnLCD                                       ; $732b: $cd $09 $09
	ld   a, $07                                      ; $732e: $3e $07
	call SafeSetAudVolForMultipleChannels                                       ; $7330: $cd $e0 $1c
	ld   a, $00                                      ; $7333: $3e $00
	ld   [$c9df], a                                  ; $7335: $ea $df $c9
	ld   a, [$cb1d]                                  ; $7338: $fa $1d $cb
	or   a                                           ; $733b: $b7
	jr   z, jr_03e_735d                              ; $733c: $28 $1f

	ld   hl, $0124                                   ; $733e: $21 $24 $01
	push af                                          ; $7341: $f5
	ld   a, $d7                                      ; $7342: $3e $d7
	ld   [wFarCallAddr], a                                  ; $7344: $ea $98 $c2
	ld   a, $71                                      ; $7347: $3e $71
	ld   [wFarCallAddr+1], a                                  ; $7349: $ea $99 $c2
	ld   a, $0c                                      ; $734c: $3e $0c
	ld   [wFarCallBank], a                                  ; $734e: $ea $9a $c2
	pop  af                                          ; $7351: $f1
	call FarCall                                       ; $7352: $cd $62 $09
	or   a                                           ; $7355: $b7
	jr   z, jr_03e_735d                              ; $7356: $28 $05

	ld   a, $01                                      ; $7358: $3e $01
	ld   [$c9df], a                                  ; $735a: $ea $df $c9

jr_03e_735d:
	ld   a, $ff                                      ; $735d: $3e $ff
	ld   [wInGameInputsEnabled], a                                  ; $735f: $ea $0e $c2
	ld   a, $0c                                      ; $7362: $3e $0c
	ld   [wBaseInitialStickyCounter], a                                  ; $7364: $ea $13 $c2
	ld   a, $04                                      ; $7367: $3e $04
	ld   [wBaseRepeatedStickyCounter], a                                  ; $7369: $ea $14 $c2
	call ClearOam                                       ; $736c: $cd $d7 $0d
	call ClearDisplayRegsAllowVBlankInt                                       ; $736f: $cd $59 $0b
	ld   a, $87                                      ; $7372: $3e $87
	ld   [wLCDC], a                                  ; $7374: $ea $03 $c2
	ld   a, [wWramBank]                                  ; $7377: $fa $93 $c2
	push af                                          ; $737a: $f5
	ld   a, $03                                      ; $737b: $3e $03
	ld   [wWramBank], a                                  ; $737d: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $7380: $e0 $70

if def(VWF)
	M_FarCall LoadIrisMiniGameTitleScreenGfx1
	nop
else
	ld   a, $18                                      ; $7382: $3e $18
	ld   hl, $d000                                   ; $7384: $21 $00 $d0
	ld   de, $4000                                   ; $7387: $11 $00 $40
	call RLEXorCopy                                       ; $738a: $cd $d2 $09

;
	ld   c, $81                                      ; $738d: $0e $81
	ld   de, $9000                                   ; $738f: $11 $00 $90
	ld   a, $03                                      ; $7392: $3e $03
	ld   hl, $d000                                   ; $7394: $21 $00 $d0
endc
	ld   b, $40                                      ; $7397: $06 $40
	call EnqueueHDMATransfer                                       ; $7399: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $739c: $cf

;
	ld   c, $81                                      ; $739d: $0e $81
	ld   de, $9400                                   ; $739f: $11 $00 $94
	ld   a, $03                                      ; $73a2: $3e $03
	ld   hl, $d400                                   ; $73a4: $21 $00 $d4
	ld   b, $40                                      ; $73a7: $06 $40
	call EnqueueHDMATransfer                                       ; $73a9: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $73ac: $cf

if def(VWF)
	M_FarCall LoadIrisMiniGameTitleScreenGfxSpr
	nop
else
;
	ld   a, $1c                                      ; $73ad: $3e $1c
	ld   hl, $d000                                   ; $73af: $21 $00 $d0
	ld   de, $5276                                   ; $73b2: $11 $76 $52
	call RLEXorCopy                                       ; $73b5: $cd $d2 $09

;
	ld   c, $80                                      ; $73b8: $0e $80
	ld   de, $8000                                   ; $73ba: $11 $00 $80
	ld   a, $03                                      ; $73bd: $3e $03
	ld   hl, $d000                                   ; $73bf: $21 $00 $d0
endc
	ld   b, $40                                      ; $73c2: $06 $40
	call EnqueueHDMATransfer                                       ; $73c4: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $73c7: $cf

;
	ld   c, $80                                      ; $73c8: $0e $80
	ld   de, $8400                                   ; $73ca: $11 $00 $84
	ld   a, $03                                      ; $73cd: $3e $03
	ld   hl, $d400                                   ; $73cf: $21 $00 $d4
	ld   b, $40                                      ; $73d2: $06 $40
	call EnqueueHDMATransfer                                       ; $73d4: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $73d7: $cf

;
	ld   a, $16                                      ; $73d8: $3e $16
	ld   hl, $d000                                   ; $73da: $21 $00 $d0
	ld   de, $6cd6                                   ; $73dd: $11 $d6 $6c
	call RLEXorCopy                                       ; $73e0: $cd $d2 $09

;
	ld   c, $80                                      ; $73e3: $0e $80
	ld   de, $8800                                   ; $73e5: $11 $00 $88
	ld   a, $03                                      ; $73e8: $3e $03
	ld   hl, $d000                                   ; $73ea: $21 $00 $d0
	ld   b, $40                                      ; $73ed: $06 $40
	call EnqueueHDMATransfer                                       ; $73ef: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $73f2: $cf

;
	ld   c, $80                                      ; $73f3: $0e $80
	ld   de, $8c00                                   ; $73f5: $11 $00 $8c
	ld   a, $03                                      ; $73f8: $3e $03
	ld   hl, $d400                                   ; $73fa: $21 $00 $d4
	ld   b, $60                                      ; $73fd: $06 $60
	call EnqueueHDMATransfer                                       ; $73ff: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7402: $cf

;
	ld   c, $80                                      ; $7403: $0e $80
	ld   de, $9200                                   ; $7405: $11 $00 $92
	ld   a, $03                                      ; $7408: $3e $03
	ld   hl, $da00                                   ; $740a: $21 $00 $da
	ld   b, $60                                      ; $740d: $06 $60
	call EnqueueHDMATransfer                                       ; $740f: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7412: $cf

;
	ld   a, BANK(TileAttr_IrisMiniGameTitleScreen)                                      ; $7413: $3e $1d
	ld   de, TileAttr_IrisMiniGameTitleScreen                                   ; $7415: $11 $a8 $45
	ld   hl, $dc40                                   ; $7418: $21 $40 $dc
	ld   bc, $1412                                   ; $741b: $01 $12 $14
	call FarCopyLayout                                       ; $741e: $cd $2c $0b

;
	ld   a, BANK(TileMap_IrisMiniGameTitleScreen)                                      ; $7421: $3e $1d
	ld   hl, $da00                                   ; $7423: $21 $00 $da
	call FarCopyLayout                                       ; $7426: $cd $2c $0b

;
	ld   c, $81                                      ; $7429: $0e $81
	ld   de, $9800                                   ; $742b: $11 $00 $98
	ld   a, $03                                      ; $742e: $3e $03
	ld   hl, $dc40                                   ; $7430: $21 $40 $dc
	ld   b, $24                                      ; $7433: $06 $24
	call EnqueueHDMATransfer                                       ; $7435: $cd $7c $02
	ld   c, $80                                      ; $7438: $0e $80
	ld   de, $9800                                   ; $743a: $11 $00 $98
	ld   a, $03                                      ; $743d: $3e $03
	ld   hl, $da00                                   ; $743f: $21 $00 $da
	ld   b, $24                                      ; $7442: $06 $24
	call EnqueueHDMATransfer                                       ; $7444: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7447: $cf
	ld   de, $d500                                   ; $7448: $11 $00 $d5
	ld   hl, $dda0                                   ; $744b: $21 $a0 $dd
	ld   bc, $00c0                                   ; $744e: $01 $c0 $00
	call MemCopy                                       ; $7451: $cd $a9 $09
	ld   de, $d400                                   ; $7454: $11 $00 $d4
	ld   hl, $dda0                                   ; $7457: $21 $a0 $dd
	ld   bc, $00c0                                   ; $745a: $01 $c0 $00
	call MemCopy                                       ; $745d: $cd $a9 $09
	ld   de, $d300                                   ; $7460: $11 $00 $d3
	ld   hl, $dda0                                   ; $7463: $21 $a0 $dd
	ld   bc, $00c0                                   ; $7466: $01 $c0 $00
	call MemCopy                                       ; $7469: $cd $a9 $09
	ld   de, $d700                                   ; $746c: $11 $00 $d7
	ld   hl, $ddc0                                   ; $746f: $21 $c0 $dd
	ld   bc, $0080                                   ; $7472: $01 $80 $00
	call MemCopy                                       ; $7475: $cd $a9 $09
	ld   de, $d900                                   ; $7478: $11 $00 $d9
	ld   hl, $dda0                                   ; $747b: $21 $a0 $dd
	ld   bc, $00c0                                   ; $747e: $01 $c0 $00
	call MemCopy                                       ; $7481: $cd $a9 $09
	ld   de, $d200                                   ; $7484: $11 $00 $d2
	ld   hl, $db60                                   ; $7487: $21 $60 $db
	ld   bc, $00c0                                   ; $748a: $01 $c0 $00
	call MemCopy                                       ; $748d: $cd $a9 $09
	ld   de, $d100                                   ; $7490: $11 $00 $d1
	ld   hl, $db60                                   ; $7493: $21 $60 $db
	ld   bc, $00c0                                   ; $7496: $01 $c0 $00
	call MemCopy                                       ; $7499: $cd $a9 $09
	ld   de, $d000                                   ; $749c: $11 $00 $d0
	ld   hl, $db60                                   ; $749f: $21 $60 $db
	ld   bc, $00c0                                   ; $74a2: $01 $c0 $00
	call MemCopy                                       ; $74a5: $cd $a9 $09
	ld   de, $d600                                   ; $74a8: $11 $00 $d6
	ld   hl, $db80                                   ; $74ab: $21 $80 $db
	ld   bc, $0080                                   ; $74ae: $01 $80 $00
	call MemCopy                                       ; $74b1: $cd $a9 $09
	ld   de, $d800                                   ; $74b4: $11 $00 $d8
	ld   hl, $db60                                   ; $74b7: $21 $60 $db
	ld   bc, $00c0                                   ; $74ba: $01 $c0 $00
	call MemCopy                                       ; $74bd: $cd $a9 $09

; Practice popup box
	ld   a, BANK(TileAttr_IrisMiniGameTSPracticeBox)                                      ; $74c0: $3e $1e
	ld   de, TileAttr_IrisMiniGameTSPracticeBox                                   ; $74c2: $11 $c0 $74
	ld   hl, $d402                                   ; $74c5: $21 $02 $d4
	ld   bc, $0806                                   ; $74c8: $01 $06 $08
	call FarCopyLayout                                       ; $74cb: $cd $2c $0b

	ld   a, BANK(TileMap_IrisMiniGameTSPracticeBox)                                      ; $74ce: $3e $1e
	ld   hl, $d102                                   ; $74d0: $21 $02 $d1
	call FarCopyLayout                                       ; $74d3: $cd $2c $0b

; 1st popup box
	ld   a, BANK(TileAttr_IrisMiniGameTSPopupBox)                                      ; $74d6: $3e $1e
	ld   de, TileAttr_IrisMiniGameTSPopupBox                                   ; $74d8: $11 $4e $7b
	ld   hl, $d322                                   ; $74db: $21 $22 $d3
	ld   bc, $0804                                   ; $74de: $01 $04 $08
	call FarCopyLayout                                       ; $74e1: $cd $2c $0b

	ld   a, BANK(TileMap_IrisMiniGameTSPopupBox)                                      ; $74e4: $3e $1e
	ld   hl, $d022                                   ; $74e6: $21 $22 $d0
	call FarCopyLayout                                       ; $74e9: $cd $2c $0b

; Hide press A btn
	ld   a, BANK(TileAttr_IrisMiniGameTSHidingAText)                                      ; $74ec: $3e $1e
	ld   de, TileAttr_IrisMiniGameTSHidingAText                                   ; $74ee: $11 $69 $7e
if def(VWF)
	ld   hl, $d722
else
	ld   hl, $d702                                   ; $74f1: $21 $02 $d7
endc
	ld   bc, $0603                                   ; $74f4: $01 $03 $06
	call FarCopyLayout                                       ; $74f7: $cd $2c $0b

	ld   a, BANK(TileMap_IrisMiniGameTSHidingAText)                                      ; $74fa: $3e $1e
if def(VWF)
	ld   hl, $d622
else
	ld   hl, $d602                                   ; $74fc: $21 $02 $d6
endc
	call FarCopyLayout                                       ; $74ff: $cd $2c $0b

; Difficulty popup box
	ld   a, BANK(TileAttr_IrisMiniGameTSDifficultyBox)                                      ; $7502: $3e $1e
	ld   de, TileAttr_IrisMiniGameTSDifficultyBox                                   ; $7504: $11 $20 $75
	ld   hl, $d902                                   ; $7507: $21 $02 $d9
	ld   bc, $0806                                   ; $750a: $01 $06 $08
	call FarCopyLayout                                       ; $750d: $cd $2c $0b

	ld   a, BANK(TileMap_IrisMiniGameTSDifficultyBox)                                      ; $7510: $3e $1e
	ld   hl, $d802                                   ; $7512: $21 $02 $d8
	call FarCopyLayout                                       ; $7515: $cd $2c $0b

;
	pop  af                                          ; $7518: $f1
	ld   [wWramBank], a                                  ; $7519: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $751c: $e0 $70
	xor  a                                           ; $751e: $af
	ld   [wWX], a                                  ; $751f: $ea $09 $c2
	ld   [wWY], a                                  ; $7522: $ea $0a $c2
	ld   [wSCX], a                                  ; $7525: $ea $07 $c2
	ld   [wSCY], a                                  ; $7528: $ea $08 $c2
	call ClearBaseAnimSpriteSpecDetails                                       ; $752b: $cd $c9 $2e
	ld   a, $01                                      ; $752e: $3e $01
	ld   hl, $0000                                   ; $7530: $21 $00 $00
	call ReserveBaseAnimSpriteSpecAndInstance                                       ; $7533: $cd $4b $2f
	ld   [$c9de], a                                  ; $7536: $ea $de $c9
	call StartAnimatingAnimatedSpriteSpec                                       ; $7539: $cd $14 $30
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $753c: $cd $76 $30
	ld   a, $00                                      ; $753f: $3e $00
	ld   bc, $0000                                   ; $7541: $01 $00 $00
	ld   de, $7180                                   ; $7544: $11 $80 $71
	push af                                          ; $7547: $f5
	ld   a, $03                                      ; $7548: $3e $03
	ld   [wFarCallAddr], a                                  ; $754a: $ea $98 $c2
	ld   a, $41                                      ; $754d: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $754f: $ea $99 $c2
	ld   a, $01                                      ; $7552: $3e $01
	ld   [wFarCallBank], a                                  ; $7554: $ea $9a $c2
	pop  af                                          ; $7557: $f1
	call FarCall                                       ; $7558: $cd $62 $09
	ld   a, $01                                      ; $755b: $3e $01
	ld   hl, $7000                                   ; $755d: $21 $00 $70
	ld   de, wBGPalettes                                   ; $7560: $11 $de $c2
	ld   bc, $0080                                   ; $7563: $01 $80 $00
	call FarMemCopy                                       ; $7566: $cd $b2 $09
	ld   bc, $003f                                   ; $7569: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $756c: $cd $aa $04
	xor  a                                           ; $756f: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $7570: $ea $62 $c3
	ld   a, $40                                      ; $7573: $3e $40
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $7575: $ea $63 $c3
	ld   a, $03                                      ; $7578: $3e $03
	ld   b, $01                                      ; $757a: $06 $01
	ld   hl, $7000                                   ; $757c: $21 $00 $70
	ld   c, BANK(Palettes_IrisMiniGameTitleScreen)                                      ; $757f: $0e $1e
	ld   de, Palettes_IrisMiniGameTitleScreen                                   ; $7581: $11 $7c $6b
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $7584: $cd $48 $07
	ld   a, $0a                                      ; $7587: $3e $0a
	call PlaySong                                       ; $7589: $cd $92 $1a
	ld   a, [wGameSubstate]                                  ; $758c: $fa $a1 $c2
	cp   $01                                         ; $758f: $fe $01
	jr   z, jr_03e_759d                              ; $7591: $28 $0a

	call Call_03e_789c                               ; $7593: $cd $9c $78
	ld   a, $02                                      ; $7596: $3e $02
	ld   [wGameSubstate], a                                  ; $7598: $ea $a1 $c2
	jr   jr_03e_75a5                                 ; $759b: $18 $08

jr_03e_759d:
	call DisplayIris1stPopupBox                               ; $759d: $cd $a6 $78
	ld   a, $03                                      ; $75a0: $3e $03
	ld   [wGameSubstate], a                                  ; $75a2: $ea $a1 $c2

jr_03e_75a5:
	call Call_03e_77cc                               ; $75a5: $cd $cc $77
	push af                                          ; $75a8: $f5
	ld   a, $43                                      ; $75a9: $3e $43
	ld   [wFarCallAddr], a                                  ; $75ab: $ea $98 $c2
	ld   a, $6a                                      ; $75ae: $3e $6a
	ld   [wFarCallAddr+1], a                                  ; $75b0: $ea $99 $c2
	ld   a, $11                                      ; $75b3: $3e $11
	ld   [wFarCallBank], a                                  ; $75b5: $ea $9a $c2
	pop  af                                          ; $75b8: $f1
	call FarCall                                       ; $75b9: $cd $62 $09
	ld   a, BANK(Palettes_IrisMiniGameTitleScreen)                                      ; $75bc: $3e $1e
	ld   hl, Palettes_IrisMiniGameTitleScreen                                   ; $75be: $21 $7c $6b
	ld   de, wBGPalettes                                   ; $75c1: $11 $de $c2
	ld   bc, $0080                                   ; $75c4: $01 $80 $00
	call FarMemCopy                                       ; $75c7: $cd $b2 $09
	ld   bc, $003f                                   ; $75ca: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $75cd: $cd $aa $04
	ret                                              ; $75d0: $c9


	call Call_03e_77cc                               ; $75d1: $cd $cc $77
	call FlashIrisMiniGameTitleScreenPressABtn                               ; $75d4: $cd $4b $78
	push af                                          ; $75d7: $f5
	ld   a, $47                                      ; $75d8: $3e $47
	ld   [wFarCallAddr], a                                  ; $75da: $ea $98 $c2
	ld   a, $46                                      ; $75dd: $3e $46
	ld   [wFarCallAddr+1], a                                  ; $75df: $ea $99 $c2
	ld   a, $3f                                      ; $75e2: $3e $3f
	ld   [wFarCallBank], a                                  ; $75e4: $ea $9a $c2
	pop  af                                          ; $75e7: $f1
	call FarCall                                       ; $75e8: $cd $62 $09
	ld   a, [wInGameButtonsPressed]                                  ; $75eb: $fa $10 $c2
	bit  0, a                                        ; $75ee: $cb $47
	jr   z, jr_03e_7600                              ; $75f0: $28 $0e

	call DisplayIris1stPopupBox                               ; $75f2: $cd $a6 $78
	ld   hl, wGameSubstate                                   ; $75f5: $21 $a1 $c2
	inc  [hl]                                        ; $75f8: $34
	ld   a, $21                                      ; $75f9: $3e $21
	call PlaySoundEffect                                       ; $75fb: $cd $df $1a
	jr   jr_03e_7619                                 ; $75fe: $18 $19

jr_03e_7600:
	bit  1, a                                        ; $7600: $cb $4f
	jr   z, jr_03e_7619                              ; $7602: $28 $15

	ld   a, [$cb1d]                                  ; $7604: $fa $1d $cb
	or   a                                           ; $7607: $b7
	jr   z, jr_03e_7619                              ; $7608: $28 $0f

	ld   a, $03                                      ; $760a: $3e $03
	ld   [$c9db], a                                  ; $760c: $ea $db $c9
	ld   a, $05                                      ; $760f: $3e $05
	ld   [wGameSubstate], a                                  ; $7611: $ea $a1 $c2
	ld   a, $22                                      ; $7614: $3e $22
	call PlaySoundEffect                                       ; $7616: $cd $df $1a

jr_03e_7619:
	ret                                              ; $7619: $c9


	ld   hl, $c9db                                   ; $761a: $21 $db $c9
	ld   c, $01                                      ; $761d: $0e $01
	ld   a, [$cb1d]                                  ; $761f: $fa $1d $cb
	or   a                                           ; $7622: $b7
	jr   nz, jr_03e_7627                             ; $7623: $20 $02

	ld   c, $02                                      ; $7625: $0e $02

jr_03e_7627:
	ld   a, [wInGameButtonsPressed]                                  ; $7627: $fa $10 $c2
	bit  6, a                                        ; $762a: $cb $77
	jr   z, jr_03e_7635                              ; $762c: $28 $07

	ld   a, [hl]                                     ; $762e: $7e
	or   a                                           ; $762f: $b7
	jr   z, jr_03e_7680                              ; $7630: $28 $4e

	dec  [hl]                                        ; $7632: $35
	jr   jr_03e_763e                                 ; $7633: $18 $09

jr_03e_7635:
	bit  7, a                                        ; $7635: $cb $7f
	jr   z, jr_03e_7648                              ; $7637: $28 $0f

	ld   a, [hl]                                     ; $7639: $7e
	cp   c                                           ; $763a: $b9
	jr   z, jr_03e_7680                              ; $763b: $28 $43

	inc  [hl]                                        ; $763d: $34

jr_03e_763e:
	call Call_03e_780e                               ; $763e: $cd $0e $78
	ld   a, $20                                      ; $7641: $3e $20
	call PlaySoundEffect                                       ; $7643: $cd $df $1a
	jr   jr_03e_7680                                 ; $7646: $18 $38

jr_03e_7648:
	bit  1, a                                        ; $7648: $cb $4f
	jr   z, jr_03e_765d                              ; $764a: $28 $11

	call Call_03e_7910                               ; $764c: $cd $10 $79
	call Call_03e_789c                               ; $764f: $cd $9c $78
	ld   hl, wGameSubstate                                   ; $7652: $21 $a1 $c2
	dec  [hl]                                        ; $7655: $35
	ld   a, $22                                      ; $7656: $3e $22
	call PlaySoundEffect                                       ; $7658: $cd $df $1a
	jr   jr_03e_7680                                 ; $765b: $18 $23

jr_03e_765d:
	bit  0, a                                        ; $765d: $cb $47
	jr   z, jr_03e_7680                              ; $765f: $28 $1f

	ld   a, $21                                      ; $7661: $3e $21
	call PlaySoundEffect                                       ; $7663: $cd $df $1a
	ld   a, $05                                      ; $7666: $3e $05
	ld   [wGameSubstate], a                                  ; $7668: $ea $a1 $c2
	ld   a, [$c9db]                                  ; $766b: $fa $db $c9
	or   a                                           ; $766e: $b7
	jr   z, jr_03e_7680                              ; $766f: $28 $0f

	ld   a, [$c9df]                                  ; $7671: $fa $df $c9
	cp   $00                                         ; $7674: $fe $00
	jr   z, jr_03e_7680                              ; $7676: $28 $08

	call DisplayIrisDifficultyPopupBox                               ; $7678: $cd $ee $78
	ld   a, $04                                      ; $767b: $3e $04
	ld   [wGameSubstate], a                                  ; $767d: $ea $a1 $c2

jr_03e_7680:
	call Call_03e_77cc                               ; $7680: $cd $cc $77
	ret                                              ; $7683: $c9


	ld   hl, $c9e0                                   ; $7684: $21 $e0 $c9
	ld   a, [wInGameButtonsPressed]                                  ; $7687: $fa $10 $c2
	bit  6, a                                        ; $768a: $cb $77
	jr   z, jr_03e_7695                              ; $768c: $28 $07

	ld   a, [hl]                                     ; $768e: $7e
	or   a                                           ; $768f: $b7
	jr   z, jr_03e_76c8                              ; $7690: $28 $36

	dec  [hl]                                        ; $7692: $35
	jr   jr_03e_769f                                 ; $7693: $18 $0a

jr_03e_7695:
	bit  7, a                                        ; $7695: $cb $7f
	jr   z, jr_03e_76a9                              ; $7697: $28 $10

	ld   a, [hl]                                     ; $7699: $7e
	cp   $01                                         ; $769a: $fe $01
	jr   z, jr_03e_76c8                              ; $769c: $28 $2a

	inc  [hl]                                        ; $769e: $34

jr_03e_769f:
	call Call_03e_7804                               ; $769f: $cd $04 $78
	ld   a, $20                                      ; $76a2: $3e $20
	call PlaySoundEffect                                       ; $76a4: $cd $df $1a
	jr   jr_03e_76c8                                 ; $76a7: $18 $1f

jr_03e_76a9:
	bit  1, a                                        ; $76a9: $cb $4f
	jr   z, jr_03e_76bb                              ; $76ab: $28 $0e

	call DisplayIris1stPopupBox                               ; $76ad: $cd $a6 $78
	ld   hl, wGameSubstate                                   ; $76b0: $21 $a1 $c2
	dec  [hl]                                        ; $76b3: $35
	ld   a, $22                                      ; $76b4: $3e $22
	call PlaySoundEffect                                       ; $76b6: $cd $df $1a
	jr   jr_03e_76c8                                 ; $76b9: $18 $0d

jr_03e_76bb:
	bit  0, a                                        ; $76bb: $cb $47
	jr   z, jr_03e_76c8                              ; $76bd: $28 $09

	ld   a, $21                                      ; $76bf: $3e $21
	call PlaySoundEffect                                       ; $76c1: $cd $df $1a
	ld   hl, wGameSubstate                                   ; $76c4: $21 $a1 $c2
	inc  [hl]                                        ; $76c7: $34

jr_03e_76c8:
	call Call_03e_77cc                               ; $76c8: $cd $cc $77
	ret                                              ; $76cb: $c9


	call Call_03e_77cc                               ; $76cc: $cd $cc $77
	ld   a, [$c9db]                                  ; $76cf: $fa $db $c9
	or   a                                           ; $76d2: $b7
	jr   z, jr_03e_76fd                              ; $76d3: $28 $28

	cp   $03                                         ; $76d5: $fe $03
	jr   z, jr_03e_76fd                              ; $76d7: $28 $24

	ld   a, [$c9de]                                  ; $76d9: $fa $de $c9
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $76dc: $cd $76 $30
	push af                                          ; $76df: $f5
	ld   a, $43                                      ; $76e0: $3e $43
	ld   [wFarCallAddr], a                                  ; $76e2: $ea $98 $c2
	ld   a, $41                                      ; $76e5: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $76e7: $ea $99 $c2
	ld   a, $01                                      ; $76ea: $3e $01
	ld   [wFarCallBank], a                                  ; $76ec: $ea $9a $c2
	pop  af                                          ; $76ef: $f1
	call FarCall                                       ; $76f0: $cd $62 $09
	ld   a, c                                        ; $76f3: $79
	cp   $44                                         ; $76f4: $fe $44
	ret  nz                                          ; $76f6: $c0

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $76f7: $cf
	ld   a, $4f                                      ; $76f8: $3e $4f
	call PlaySampledSound                                       ; $76fa: $cd $64 $1b

jr_03e_76fd:
	xor  a                                           ; $76fd: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $76fe: $ea $62 $c3
	ld   a, $40                                      ; $7701: $3e $40
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $7703: $ea $63 $c3
	ld   a, $03                                      ; $7706: $3e $03
	ld   b, BANK(Palettes_IrisMiniGameTitleScreen)                                      ; $7708: $06 $1e
	ld   hl, Palettes_IrisMiniGameTitleScreen                                   ; $770a: $21 $7c $6b
	ld   c, $01                                      ; $770d: $0e $01
	ld   de, $7000                                   ; $770f: $11 $00 $70
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $7712: $cd $48 $07
	ld   a, [$c9db]                                  ; $7715: $fa $db $c9
	call Call_03e_7783                               ; $7718: $cd $83 $77
	ld   h, $1c                                      ; $771b: $26 $1c
	ld   l, $01                                      ; $771d: $2e $01
	push af                                          ; $771f: $f5
	ld   a, $e0                                      ; $7720: $3e $e0
	ld   [wFarCallAddr], a                                  ; $7722: $ea $98 $c2
	ld   a, $76                                      ; $7725: $3e $76
	ld   [wFarCallAddr+1], a                                  ; $7727: $ea $99 $c2
	ld   a, $10                                      ; $772a: $3e $10
	ld   [wFarCallBank], a                                  ; $772c: $ea $9a $c2
	pop  af                                          ; $772f: $f1
	call FarCall                                       ; $7730: $cd $62 $09
	ld   a, [$c9db]                                  ; $7733: $fa $db $c9
	or   a                                           ; $7736: $b7
	jr   z, jr_03e_7782                              ; $7737: $28 $49

	ld   b, $00                                      ; $7739: $06 $00
	ld   a, [$c9e1]                                  ; $773b: $fa $e1 $c9
	ld   h, a                                        ; $773e: $67
	ld   a, [$c9e2]                                  ; $773f: $fa $e2 $c9
	ld   l, a                                        ; $7742: $6f
	ld   a, [$cb1d]                                  ; $7743: $fa $1d $cb
	or   a                                           ; $7746: $b7
	jr   nz, jr_03e_7756                             ; $7747: $20 $0d

	ld   a, [$c9db]                                  ; $7749: $fa $db $c9
	cp   $02                                         ; $774c: $fe $02
	jr   z, jr_03e_7756                              ; $774e: $28 $06

	ld   h, $1c                                      ; $7750: $26 $1c
	ld   l, $01                                      ; $7752: $2e $01
	ld   b, $01                                      ; $7754: $06 $01

jr_03e_7756:
	ld   a, [$c9e0]                                  ; $7756: $fa $e0 $c9
	ld   c, a                                        ; $7759: $4f
	ld   a, b                                        ; $775a: $78
	push af                                          ; $775b: $f5
	ld   a, $8b                                      ; $775c: $3e $8b
	ld   [wFarCallAddr], a                                  ; $775e: $ea $98 $c2
	ld   a, $62                                      ; $7761: $3e $62
	ld   [wFarCallAddr+1], a                                  ; $7763: $ea $99 $c2
	ld   a, $30                                      ; $7766: $3e $30
	ld   [wFarCallBank], a                                  ; $7768: $ea $9a $c2
	pop  af                                          ; $776b: $f1
	call FarCall                                       ; $776c: $cd $62 $09
	ld   a, [$c9db]                                  ; $776f: $fa $db $c9
	cp   $03                                         ; $7772: $fe $03
	jr   nz, jr_03e_7782                             ; $7774: $20 $0c

	ld   a, [$c9e1]                                  ; $7776: $fa $e1 $c9
	ld   [wGameState], a                                  ; $7779: $ea $a0 $c2
	ld   a, [$c9e2]                                  ; $777c: $fa $e2 $c9
	ld   [wGameSubstate], a                                  ; $777f: $ea $a1 $c2

jr_03e_7782:
	ret                                              ; $7782: $c9


Call_03e_7783:
	or   a                                           ; $7783: $b7
	jr   z, jr_03e_778a                              ; $7784: $28 $04

	cp   $03                                         ; $7786: $fe $03
	jr   nz, jr_03e_77b4                             ; $7788: $20 $2a

jr_03e_778a:
	push af                                          ; $778a: $f5
	ld   a, $43                                      ; $778b: $3e $43
	ld   [wFarCallAddr], a                                  ; $778d: $ea $98 $c2
	ld   a, $6a                                      ; $7790: $3e $6a
	ld   [wFarCallAddr+1], a                                  ; $7792: $ea $99 $c2
	ld   a, $11                                      ; $7795: $3e $11
	ld   [wFarCallBank], a                                  ; $7797: $ea $9a $c2
	pop  af                                          ; $779a: $f1
	call FarCall                                       ; $779b: $cd $62 $09
	ld   a, $01                                      ; $779e: $3e $01
	ld   hl, $7000                                   ; $77a0: $21 $00 $70
	ld   de, wBGPalettes                                   ; $77a3: $11 $de $c2
	ld   bc, $0080                                   ; $77a6: $01 $80 $00
	call FarMemCopy                                       ; $77a9: $cd $b2 $09
	ld   bc, $003f                                   ; $77ac: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $77af: $cd $aa $04
	jr   jr_03e_77cb                                 ; $77b2: $18 $17

jr_03e_77b4:
	push af                                          ; $77b4: $f5
	ld   a, $58                                      ; $77b5: $3e $58
	ld   [wFarCallAddr], a                                  ; $77b7: $ea $98 $c2
	ld   a, $6a                                      ; $77ba: $3e $6a
	ld   [wFarCallAddr+1], a                                  ; $77bc: $ea $99 $c2
	ld   a, $11                                      ; $77bf: $3e $11
	ld   [wFarCallBank], a                                  ; $77c1: $ea $9a $c2
	pop  af                                          ; $77c4: $f1
	call FarCall                                       ; $77c5: $cd $62 $09
	call TurnOffLCD                                       ; $77c8: $cd $e3 $08

jr_03e_77cb:
	ret                                              ; $77cb: $c9


Call_03e_77cc:
	call ClearOam                                       ; $77cc: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $77cf: $cd $d3 $2e
	call Call_03e_77d6                               ; $77d2: $cd $d6 $77
	ret                                              ; $77d5: $c9


Call_03e_77d6:
	ld   bc, $5020                                   ; $77d6: $01 $20 $50
	ld   a, $0a                                      ; $77d9: $3e $0a
	ld   [wSpriteGroup], a                                  ; $77db: $ea $1a $c2
	ld   a, $43                                      ; $77de: $3e $43
	call LoadSpriteFromMainTable                                       ; $77e0: $cd $16 $0e
	ret                                              ; $77e3: $c9


Call_03e_77e4:
	ld   a, [$c9de]                                  ; $77e4: $fa $de $c9
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $77e7: $cd $76 $30
	ld   a, $00                                      ; $77ea: $3e $00
	ld   de, $7180                                   ; $77ec: $11 $80 $71
	push af                                          ; $77ef: $f5
	ld   a, $1c                                      ; $77f0: $3e $1c
	ld   [wFarCallAddr], a                                  ; $77f2: $ea $98 $c2
	ld   a, $41                                      ; $77f5: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $77f7: $ea $99 $c2
	ld   a, $01                                      ; $77fa: $3e $01
	ld   [wFarCallBank], a                                  ; $77fc: $ea $9a $c2
	pop  af                                          ; $77ff: $f1
	call FarCall                                       ; $7800: $cd $62 $09
	ret                                              ; $7803: $c9


Call_03e_7804:
	ld   hl, $780c                                   ; $7804: $21 $0c $78
	ld   a, [$c9e0]                                  ; $7807: $fa $e0 $c9
	jr   jr_03e_7824                                 ; $780a: $18 $18

	ld   l, b                                        ; $780c: $68
	halt                                             ; $780d: $76

Call_03e_780e:
	ld   hl, $7822                                   ; $780e: $21 $22 $78
	ld   a, [$cb1d]                                  ; $7811: $fa $1d $cb
	or   a                                           ; $7814: $b7
	jr   nz, jr_03e_781a                             ; $7815: $20 $03

	ld   hl, $781f                                   ; $7817: $21 $1f $78

jr_03e_781a:
	ld   a, [$c9db]                                  ; $781a: $fa $db $c9
	jr   jr_03e_7824                                 ; $781d: $18 $05

	ld   e, d                                        ; $781f: $5a
	ld   l, b                                        ; $7820: $68
	halt                                             ; $7821: $76
	ld   h, d                                        ; $7822: $62
	ld   l, [hl]                                     ; $7823: $6e

jr_03e_7824:
	ld   c, a                                        ; $7824: $4f
	ld   b, $00                                      ; $7825: $06 $00
	add  hl, bc                                      ; $7827: $09
	ld   c, [hl]                                     ; $7828: $4e
	ld   b, $15                                      ; $7829: $06 $15
	ld   a, [$c9de]                                  ; $782b: $fa $de $c9
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $782e: $cd $76 $30
	ld   a, $6b                                      ; $7831: $3e $6b
	ld   de, $7180                                   ; $7833: $11 $80 $71
	push af                                          ; $7836: $f5
	ld   a, $03                                      ; $7837: $3e $03
	ld   [wFarCallAddr], a                                  ; $7839: $ea $98 $c2
	ld   a, $41                                      ; $783c: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $783e: $ea $99 $c2
	ld   a, $01                                      ; $7841: $3e $01
	ld   [wFarCallBank], a                                  ; $7843: $ea $9a $c2
	pop  af                                          ; $7846: $f1
	call FarCall                                       ; $7847: $cd $62 $09
	ret                                              ; $784a: $c9


FlashIrisMiniGameTitleScreenPressABtn:
	ld   hl, $c9dc                                   ; $784b: $21 $dc $c9
	dec  [hl]                                        ; $784e: $35
	jr   nz, jr_03e_789b                             ; $784f: $20 $4a

	ld   [hl], $21                                   ; $7851: $36 $21
	ld   hl, $c9dd                                   ; $7853: $21 $dd $c9
	ld   a, [hl]                                     ; $7856: $7e
	xor  $01                                         ; $7857: $ee $01
	ld   [hl], a                                     ; $7859: $77
	or   a                                           ; $785a: $b7
	jr   nz, jr_03e_787d                             ; $785b: $20 $20

	ld   c, $80                                      ; $785d: $0e $80
	ld   de, $9980                                   ; $785f: $11 $80 $99
	ld   a, $03                                      ; $7862: $3e $03
	ld   hl, $d220                                   ; $7864: $21 $20 $d2
if def(VWF)
	ld   b, $08
else
	ld   b, $06                                      ; $7867: $06 $06
endc
	call EnqueueHDMATransfer                                       ; $7869: $cd $7c $02
	ld   c, $81                                      ; $786c: $0e $81
	ld   de, $9980                                   ; $786e: $11 $80 $99
	ld   a, $03                                      ; $7871: $3e $03
	ld   hl, $d520                                   ; $7873: $21 $20 $d5
if def(VWF)
	ld   b, $08
else
	ld   b, $06                                      ; $7876: $06 $06
endc
	call EnqueueHDMATransfer                                       ; $7878: $cd $7c $02
	jr   jr_03e_789b                                 ; $787b: $18 $1e

jr_03e_787d:
	ld   c, $80                                      ; $787d: $0e $80
	ld   de, $9980                                   ; $787f: $11 $80 $99
	ld   a, $03                                      ; $7882: $3e $03
	ld   hl, $d600                                   ; $7884: $21 $00 $d6
if def(VWF)
	ld   b, $08
else
	ld   b, $06                                      ; $7887: $06 $06
endc
	call EnqueueHDMATransfer                                       ; $7889: $cd $7c $02
	ld   c, $81                                      ; $788c: $0e $81
	ld   de, $9980                                   ; $788e: $11 $80 $99
	ld   a, $03                                      ; $7891: $3e $03
	ld   hl, $d700                                   ; $7893: $21 $00 $d7
if def(VWF)
	ld   b, $08
else
	ld   b, $06                                      ; $7896: $06 $06
endc
	call EnqueueHDMATransfer                                       ; $7898: $cd $7c $02

jr_03e_789b:
	ret                                              ; $789b: $c9


Call_03e_789c:
	ld   a, $21                                      ; $789c: $3e $21
	ld   [$c9dc], a                                  ; $789e: $ea $dc $c9
	xor  a                                           ; $78a1: $af
	ld   [$c9dd], a                                  ; $78a2: $ea $dd $c9
	ret                                              ; $78a5: $c9


DisplayIris1stPopupBox:
	call Call_03e_780e                               ; $78a6: $cd $0e $78
	ld   a, [$cb1d]                                  ; $78a9: $fa $1d $cb
	or   a                                           ; $78ac: $b7
	jr   nz, jr_03e_78cf                             ; $78ad: $20 $20

	ld   c, $80                                      ; $78af: $0e $80
	ld   de, $9960                                   ; $78b1: $11 $60 $99
	ld   a, $03                                      ; $78b4: $3e $03
	ld   hl, $d100                                   ; $78b6: $21 $00 $d1
	ld   b, $0c                                      ; $78b9: $06 $0c
	call EnqueueHDMATransfer                                       ; $78bb: $cd $7c $02
	ld   c, $81                                      ; $78be: $0e $81
	ld   de, $9960                                   ; $78c0: $11 $60 $99
	ld   a, $03                                      ; $78c3: $3e $03
	ld   hl, $d400                                   ; $78c5: $21 $00 $d4
	ld   b, $0c                                      ; $78c8: $06 $0c
	call EnqueueHDMATransfer                                       ; $78ca: $cd $7c $02
	jr   jr_03e_78ed                                 ; $78cd: $18 $1e

jr_03e_78cf:
	ld   c, $80                                      ; $78cf: $0e $80
	ld   de, $9960                                   ; $78d1: $11 $60 $99
	ld   a, $03                                      ; $78d4: $3e $03
	ld   hl, $d000                                   ; $78d6: $21 $00 $d0
	ld   b, $0c                                      ; $78d9: $06 $0c
	call EnqueueHDMATransfer                                       ; $78db: $cd $7c $02
	ld   c, $81                                      ; $78de: $0e $81
	ld   de, $9960                                   ; $78e0: $11 $60 $99
	ld   a, $03                                      ; $78e3: $3e $03
	ld   hl, $d300                                   ; $78e5: $21 $00 $d3
	ld   b, $0c                                      ; $78e8: $06 $0c
	call EnqueueHDMATransfer                                       ; $78ea: $cd $7c $02

jr_03e_78ed:
	ret                                              ; $78ed: $c9


DisplayIrisDifficultyPopupBox:
	call Call_03e_7804                               ; $78ee: $cd $04 $78
	ld   c, $80                                      ; $78f1: $0e $80
	ld   de, $9960                                   ; $78f3: $11 $60 $99
	ld   a, $03                                      ; $78f6: $3e $03
	ld   hl, $d800                                   ; $78f8: $21 $00 $d8
	ld   b, $0c                                      ; $78fb: $06 $0c
	call EnqueueHDMATransfer                                       ; $78fd: $cd $7c $02
	ld   c, $81                                      ; $7900: $0e $81
	ld   de, $9960                                   ; $7902: $11 $60 $99
	ld   a, $03                                      ; $7905: $3e $03
	ld   hl, $d900                                   ; $7907: $21 $00 $d9
	ld   b, $0c                                      ; $790a: $06 $0c
	call EnqueueHDMATransfer                                       ; $790c: $cd $7c $02
	ret                                              ; $790f: $c9


Call_03e_7910:
	call Call_03e_77e4                               ; $7910: $cd $e4 $77
	ld   c, $80                                      ; $7913: $0e $80
	ld   de, $9960                                   ; $7915: $11 $60 $99
	ld   a, $03                                      ; $7918: $3e $03
	ld   hl, $d200                                   ; $791a: $21 $00 $d2
	ld   b, $0c                                      ; $791d: $06 $0c
	call EnqueueHDMATransfer                                       ; $791f: $cd $7c $02
	ld   c, $81                                      ; $7922: $0e $81
	ld   de, $9960                                   ; $7924: $11 $60 $99
	ld   a, $03                                      ; $7927: $3e $03
	ld   hl, $d500                                   ; $7929: $21 $00 $d5
	ld   b, $0c                                      ; $792c: $06 $0c
	call EnqueueHDMATransfer                                       ; $792e: $cd $7c $02
	ret                                              ; $7931: $c9


jr_03e_7932:
	ld   c, $08                                      ; $7932: $0e $08

jr_03e_7934:
	ld   a, [hl+]                                    ; $7934: $2a
	ld   [de], a                                     ; $7935: $12
	inc  de                                          ; $7936: $13
	dec  c                                           ; $7937: $0d
	jr   nz, jr_03e_7934                             ; $7938: $20 $fa

	push bc                                          ; $793a: $c5
	ld   bc, $0018                                   ; $793b: $01 $18 $00
	add  hl, bc                                      ; $793e: $09
	push hl                                          ; $793f: $e5
	ld   h, d                                        ; $7940: $62
	ld   l, e                                        ; $7941: $6b
	add  hl, bc                                      ; $7942: $09
	ld   d, h                                        ; $7943: $54
	ld   e, l                                        ; $7944: $5d
	pop  hl                                          ; $7945: $e1
	pop  bc                                          ; $7946: $c1
	dec  b                                           ; $7947: $05
	jr   nz, jr_03e_7932                             ; $7948: $20 $e8

	ret                                              ; $794a: $c9


SetIrisMiniGameTitleScreenState::
	ld   a, h                                        ; $794b: $7c
	ld   [$c9e1], a                                  ; $794c: $ea $e1 $c9
	ld   a, l                                        ; $794f: $7d
	ld   [$c9e2], a                                  ; $7950: $ea $e2 $c9
	ld   a, GS_IRIS_MINI_GAME_TITLE_SCREEN                                      ; $7953: $3e $1c
	ld   [wGameState], a                                  ; $7955: $ea $a0 $c2
	ld   a, $00                                      ; $7958: $3e $00
	ld   [wGameSubstate], a                                  ; $795a: $ea $a1 $c2
	ret                                              ; $795d: $c9


GameState1e_SakuraMiniGameTitleScreen::
	ld   a, [wGameSubstate]                                  ; $795e: $fa $a1 $c2
	rst  JumpTable                                         ; $7961: $df
	dw SakuraMiniGameTitleScreenSubstate0
	dw $7975
	dw $7c1b
	dw $7c64
	dw $7cce
	dw $7d16


SakuraMiniGameTitleScreenSubstate0:
	xor  a                                           ; $796e: $af
	ld   [$c9e3], a                                  ; $796f: $ea $e3 $c9
	ld   [$c9e8], a                                  ; $7972: $ea $e8 $c9
	call TurnOnLCD                                       ; $7975: $cd $09 $09
	ld   a, $07                                      ; $7978: $3e $07
	call SafeSetAudVolForMultipleChannels                                       ; $797a: $cd $e0 $1c
	ld   a, $00                                      ; $797d: $3e $00
	ld   [$c9e7], a                                  ; $797f: $ea $e7 $c9
	ld   a, [$cb1d]                                  ; $7982: $fa $1d $cb
	or   a                                           ; $7985: $b7
	jr   z, jr_03e_79a7                              ; $7986: $28 $1f

	ld   hl, $0118                                   ; $7988: $21 $18 $01
	M_FarCall CheckIfNextFlagSet1
	or   a                                           ; $799f: $b7
	jr   z, jr_03e_79a7                              ; $79a0: $28 $05

	ld   a, $01                                      ; $79a2: $3e $01
	ld   [$c9e7], a                                  ; $79a4: $ea $e7 $c9

jr_03e_79a7:
	ld   a, $ff                                      ; $79a7: $3e $ff
	ld   [wInGameInputsEnabled], a                                  ; $79a9: $ea $0e $c2
	ld   a, $0c                                      ; $79ac: $3e $0c
	ld   [wBaseInitialStickyCounter], a                                  ; $79ae: $ea $13 $c2
	ld   a, $04                                      ; $79b1: $3e $04
	ld   [wBaseRepeatedStickyCounter], a                                  ; $79b3: $ea $14 $c2
	call ClearOam                                       ; $79b6: $cd $d7 $0d
	call ClearDisplayRegsAllowVBlankInt                                       ; $79b9: $cd $59 $0b
	ld   a, $87                                      ; $79bc: $3e $87
	ld   [wLCDC], a                                  ; $79be: $ea $03 $c2
	ld   a, [wWramBank]                                  ; $79c1: $fa $93 $c2
	push af                                          ; $79c4: $f5
	ld   a, $03                                      ; $79c5: $3e $03
	ld   [wWramBank], a                                  ; $79c7: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $79ca: $e0 $70

;
	ld   a, $19                                      ; $79cc: $3e $19
	ld   hl, $d000                                   ; $79ce: $21 $00 $d0
	ld   de, $71e2                                   ; $79d1: $11 $e2 $71
if def(VWF)
	call SakuraMiniGameTitleScreenBank1_8800hHook
else
	call RLEXorCopy                                       ; $79d4: $cd $d2 $09
endc

;
	ld   c, $81                                      ; $79d7: $0e $81
	ld   de, $8800                                   ; $79d9: $11 $00 $88
	ld   a, $03                                      ; $79dc: $3e $03
	ld   hl, $d000                                   ; $79de: $21 $00 $d0
if def(VWF)
	ld   b, $66
else
	ld   b, $40                                      ; $79e1: $06 $40
endc
	call EnqueueHDMATransfer                                       ; $79e3: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $79e6: $cf

;
	ld   c, $81                                      ; $79e7: $0e $81
if def(VWF)
	ld   de, $8e60
	ld   a, $03
	ld   hl, $d660
	ld   b, $66
else
	ld   de, $8c00                                   ; $79e9: $11 $00 $8c
	ld   a, $03                                      ; $79ec: $3e $03
	ld   hl, $d400                                   ; $79ee: $21 $00 $d4
	ld   b, $40                                      ; $79f1: $06 $40
endc
	call EnqueueHDMATransfer                                       ; $79f3: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $79f6: $cf

if def(VWF)
	M_FarCall LoadSakuraMiniGameTitleScreenGfxSpr
	nop
else

	ld   a, $1c                                      ; $79f7: $3e $1c
	ld   hl, $d000                                   ; $79f9: $21 $00 $d0
	ld   de, $5600                                   ; $79fc: $11 $00 $56
	call RLEXorCopy                                       ; $79ff: $cd $d2 $09

;
	ld   c, $80                                      ; $7a02: $0e $80
	ld   de, $8000                                   ; $7a04: $11 $00 $80
	ld   a, $03                                      ; $7a07: $3e $03
	ld   hl, $d000                                   ; $7a09: $21 $00 $d0
endc
	ld   b, $40                                      ; $7a0c: $06 $40
	call EnqueueHDMATransfer                                       ; $7a0e: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7a11: $cf

;
	ld   c, $80                                      ; $7a12: $0e $80
	ld   de, $8400                                   ; $7a14: $11 $00 $84
	ld   a, $03                                      ; $7a17: $3e $03
	ld   hl, $d400                                   ; $7a19: $21 $00 $d4
	ld   b, $40                                      ; $7a1c: $06 $40
	call EnqueueHDMATransfer                                       ; $7a1e: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7a21: $cf

;
	ld   a, $15                                      ; $7a22: $3e $15
	ld   hl, $d000                                   ; $7a24: $21 $00 $d0
	ld   de, $6759                                   ; $7a27: $11 $59 $67
if def(VWF)
	call SakuraMiniGameTitleScreenBank0_8800hHook
else
	call RLEXorCopy                                       ; $7a2a: $cd $d2 $09
endc

;
	ld   c, $80                                      ; $7a2d: $0e $80
	ld   de, $8800                                   ; $7a2f: $11 $00 $88
	ld   a, $03                                      ; $7a32: $3e $03
	ld   hl, $d000                                   ; $7a34: $21 $00 $d0
	ld   b, $40                                      ; $7a37: $06 $40
	call EnqueueHDMATransfer                                       ; $7a39: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7a3c: $cf

;
	ld   c, $80                                      ; $7a3d: $0e $80
	ld   de, $8c00                                   ; $7a3f: $11 $00 $8c
	ld   a, $03                                      ; $7a42: $3e $03
	ld   hl, $d400                                   ; $7a44: $21 $00 $d4
	ld   b, $60                                      ; $7a47: $06 $60
	call EnqueueHDMATransfer                                       ; $7a49: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7a4c: $cf

;
	ld   c, $80                                      ; $7a4d: $0e $80
	ld   de, $9200                                   ; $7a4f: $11 $00 $92
	ld   a, $03                                      ; $7a52: $3e $03
	ld   hl, $da00                                   ; $7a54: $21 $00 $da
	ld   b, $60                                      ; $7a57: $06 $60
	call EnqueueHDMATransfer                                       ; $7a59: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7a5c: $cf

; Main layout
	ld   a, BANK(TileAttr_SakuraMiniGameTitleScreen)                                      ; $7a5d: $3e $1d
	ld   de, TileAttr_SakuraMiniGameTitleScreen                                   ; $7a5f: $11 $78 $48
	ld   hl, $dc40                                   ; $7a62: $21 $40 $dc
	ld   bc, $1412                                   ; $7a65: $01 $12 $14
	call FarCopyLayout                                       ; $7a68: $cd $2c $0b

	ld   a, BANK(TileMap_SakuraMiniGameTitleScreen)                                      ; $7a6b: $3e $1d
	ld   hl, $da00                                   ; $7a6d: $21 $00 $da
	call FarCopyLayout                                       ; $7a70: $cd $2c $0b

;
	ld   de, $d600                                   ; $7a73: $11 $00 $d6
	ld   hl, $db80                                   ; $7a76: $21 $80 $db
	ld   bc, $00c0                                   ; $7a79: $01 $c0 $00
	call MemCopy                                       ; $7a7c: $cd $a9 $09
	ld   de, $d200                                   ; $7a7f: $11 $00 $d2
	ld   hl, $db80                                   ; $7a82: $21 $80 $db
	ld   bc, $00c0                                   ; $7a85: $01 $c0 $00
	call MemCopy                                       ; $7a88: $cd $a9 $09
	ld   de, $d700                                   ; $7a8b: $11 $00 $d7
	ld   hl, $ddc0                                   ; $7a8e: $21 $c0 $dd
	ld   bc, $00c0                                   ; $7a91: $01 $c0 $00
	call MemCopy                                       ; $7a94: $cd $a9 $09
	ld   de, $d500                                   ; $7a97: $11 $00 $d5
	ld   hl, $ddc0                                   ; $7a9a: $21 $c0 $dd
	ld   bc, $00c0                                   ; $7a9d: $01 $c0 $00
	call MemCopy                                       ; $7aa0: $cd $a9 $09
	ld   a, $1e                                      ; $7aa3: $3e $1e
	ld   de, $7d49                                   ; $7aa5: $11 $49 $7d
	ld   hl, $d743                                   ; $7aa8: $21 $43 $d7
	ld   bc, $0e02                                   ; $7aab: $01 $02 $0e
	call FarCopyLayout                                       ; $7aae: $cd $2c $0b
	ld   a, $1e                                      ; $7ab1: $3e $1e
	ld   hl, $d643                                   ; $7ab3: $21 $43 $d6
	call FarCopyLayout                                       ; $7ab6: $cd $2c $0b
	ld   c, $81                                      ; $7ab9: $0e $81
	ld   de, $9800                                   ; $7abb: $11 $00 $98
	ld   a, $03                                      ; $7abe: $3e $03
	ld   hl, $dc40                                   ; $7ac0: $21 $40 $dc
	ld   b, $24                                      ; $7ac3: $06 $24
	call EnqueueHDMATransfer                                       ; $7ac5: $cd $7c $02
	ld   c, $80                                      ; $7ac8: $0e $80
	ld   de, $9800                                   ; $7aca: $11 $00 $98
	ld   a, $03                                      ; $7acd: $3e $03
	ld   hl, $da00                                   ; $7acf: $21 $00 $da
	ld   b, $24                                      ; $7ad2: $06 $24
	call EnqueueHDMATransfer                                       ; $7ad4: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7ad7: $cf
	ld   de, $d400                                   ; $7ad8: $11 $00 $d4
	ld   hl, $d700                                   ; $7adb: $21 $00 $d7
	ld   bc, $00c0                                   ; $7ade: $01 $c0 $00
	call MemCopy                                       ; $7ae1: $cd $a9 $09
	ld   de, $d300                                   ; $7ae4: $11 $00 $d3
	ld   hl, $d700                                   ; $7ae7: $21 $00 $d7
	ld   bc, $00c0                                   ; $7aea: $01 $c0 $00
	call MemCopy                                       ; $7aed: $cd $a9 $09
	ld   de, $d900                                   ; $7af0: $11 $00 $d9
	ld   hl, $d700                                   ; $7af3: $21 $00 $d7
	ld   bc, $00c0                                   ; $7af6: $01 $c0 $00
	call MemCopy                                       ; $7af9: $cd $a9 $09
	ld   de, $d100                                   ; $7afc: $11 $00 $d1
	ld   hl, $d600                                   ; $7aff: $21 $00 $d6
	ld   bc, $00c0                                   ; $7b02: $01 $c0 $00
	call MemCopy                                       ; $7b05: $cd $a9 $09
	ld   de, $d000                                   ; $7b08: $11 $00 $d0
	ld   hl, $d600                                   ; $7b0b: $21 $00 $d6
	ld   bc, $00c0                                   ; $7b0e: $01 $c0 $00
	call MemCopy                                       ; $7b11: $cd $a9 $09
	ld   de, $d800                                   ; $7b14: $11 $00 $d8
	ld   hl, $d600                                   ; $7b17: $21 $00 $d6
	ld   bc, $00c0                                   ; $7b1a: $01 $c0 $00
	call MemCopy                                       ; $7b1d: $cd $a9 $09

; Practice popup box
	ld   a, BANK(TileAttr_SakuraMiniGameTSPracticeBox)                                      ; $7b20: $3e $1e
	ld   de, TileAttr_SakuraMiniGameTSPracticeBox                                   ; $7b22: $11 $80 $75
	ld   hl, $d406                                   ; $7b25: $21 $06 $d4
	ld   bc, $0806                                   ; $7b28: $01 $06 $08
	call FarCopyLayout                                       ; $7b2b: $cd $2c $0b

	ld   a, BANK(TileMap_SakuraMiniGameTSPracticeBox)                                      ; $7b2e: $3e $1e
	ld   hl, $d106                                   ; $7b30: $21 $06 $d1
	call FarCopyLayout                                       ; $7b33: $cd $2c $0b

; 1st popup menu
	ld   a, BANK(TileAttr_SakuraMiniGameTSPopupBox)                                      ; $7b36: $3e $1e
	ld   de, TileAttr_SakuraMiniGameTSPopupBox                                   ; $7b38: $11 $8e $7b
	ld   hl, $d326                                   ; $7b3b: $21 $26 $d3
	ldbc $08, $04                                   ; $7b3e: $01 $04 $08
	call FarCopyLayout                                       ; $7b41: $cd $2c $0b

	ld   a, BANK(TileMap_SakuraMiniGameTSPopupBox)                                      ; $7b44: $3e $1e
	ld   hl, $d026                                   ; $7b46: $21 $26 $d0
	call FarCopyLayout                                       ; $7b49: $cd $2c $0b

; Difficulty popup box
	ld   a, BANK(TileAttr_SakuraMiniGameTSDifficultyBox)                                      ; $7b4c: $3e $1e
	ld   de, TileAttr_SakuraMiniGameTSDifficultyBox                                   ; $7b4e: $11 $e0 $75
	ld   hl, $d906                                   ; $7b51: $21 $06 $d9
	ld   bc, $0806                                   ; $7b54: $01 $06 $08
	call FarCopyLayout                                       ; $7b57: $cd $2c $0b

	ld   a, BANK(TileMap_SakuraMiniGameTSDifficultyBox)                                      ; $7b5a: $3e $1e
	ld   hl, $d806                                   ; $7b5c: $21 $06 $d8
	call FarCopyLayout                                       ; $7b5f: $cd $2c $0b

;
	pop  af                                          ; $7b62: $f1
	ld   [wWramBank], a                                  ; $7b63: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $7b66: $e0 $70
	xor  a                                           ; $7b68: $af
	ld   [wWX], a                                  ; $7b69: $ea $09 $c2
	ld   [wWY], a                                  ; $7b6c: $ea $0a $c2
	ld   [wSCX], a                                  ; $7b6f: $ea $07 $c2
	ld   [wSCY], a                                  ; $7b72: $ea $08 $c2
	call ClearBaseAnimSpriteSpecDetails                                       ; $7b75: $cd $c9 $2e

;
	ld   a, ASST_1                                      ; $7b78: $3e $01
	ld   hl, $0000                                   ; $7b7a: $21 $00 $00
	call ReserveBaseAnimSpriteSpecAndInstance                                       ; $7b7d: $cd $4b $2f
	ld   [$c9e6], a                                  ; $7b80: $ea $e6 $c9
	call StartAnimatingAnimatedSpriteSpec                                       ; $7b83: $cd $14 $30
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $7b86: $cd $76 $30
	ld   a, $00                                      ; $7b89: $3e $00
	ld   bc, $0000                                   ; $7b8b: $01 $00 $00
	ld   de, AnimatedSpriteSpecs                                   ; $7b8e: $11 $80 $71

	M_FarCall LoadType1NewAnimatedSpriteSpecDetails

	ld   a, $01                                      ; $7ba5: $3e $01
	ld   hl, $7000                                   ; $7ba7: $21 $00 $70
	ld   de, wBGPalettes                                   ; $7baa: $11 $de $c2
	ld   bc, $0080                                   ; $7bad: $01 $80 $00
	call FarMemCopy                                       ; $7bb0: $cd $b2 $09
	ld   bc, $003f                                   ; $7bb3: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $7bb6: $cd $aa $04
	xor  a                                           ; $7bb9: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $7bba: $ea $62 $c3
	ld   a, $40                                      ; $7bbd: $3e $40
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $7bbf: $ea $63 $c3
	ld   a, $03                                      ; $7bc2: $3e $03
	ld   b, $01                                      ; $7bc4: $06 $01
	ld   hl, $7000                                   ; $7bc6: $21 $00 $70
	ld   c, $1e                                      ; $7bc9: $0e $1e
	ld   de, $6bfc                                   ; $7bcb: $11 $fc $6b
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $7bce: $cd $48 $07
	ld   a, $06                                      ; $7bd1: $3e $06
	call PlaySong                                       ; $7bd3: $cd $92 $1a
	ld   a, [wGameSubstate]                                  ; $7bd6: $fa $a1 $c2
	cp   $01                                         ; $7bd9: $fe $01
	jr   z, jr_03e_7be7                              ; $7bdb: $28 $0a

	call Call_03e_7ebb                               ; $7bdd: $cd $bb $7e
	ld   a, $02                                      ; $7be0: $3e $02
	ld   [wGameSubstate], a                                  ; $7be2: $ea $a1 $c2
	jr   jr_03e_7bef                                 ; $7be5: $18 $08

jr_03e_7be7:
	call DisplaySakura1stPopupBox                               ; $7be7: $cd $c5 $7e
	ld   a, $03                                      ; $7bea: $3e $03
	ld   [wGameSubstate], a                                  ; $7bec: $ea $a1 $c2

jr_03e_7bef:
	call HandleSakuraMiniGameTitleScreenSprites                               ; $7bef: $cd $de $7d

	M_FarCall Call_011_6a43

	ld   a, $1e                                      ; $7c06: $3e $1e
	ld   hl, $6bfc                                   ; $7c08: $21 $fc $6b
	ld   de, wBGPalettes                                   ; $7c0b: $11 $de $c2
	ld   bc, $0080                                   ; $7c0e: $01 $80 $00
	call FarMemCopy                                       ; $7c11: $cd $b2 $09
	ld   bc, $003f                                   ; $7c14: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $7c17: $cd $aa $04
	ret                                              ; $7c1a: $c9


	call Call_03e_7e6a                               ; $7c1b: $cd $6a $7e
	push af                                          ; $7c1e: $f5
	ld   a, $47                                      ; $7c1f: $3e $47
	ld   [wFarCallAddr], a                                  ; $7c21: $ea $98 $c2
	ld   a, $46                                      ; $7c24: $3e $46
	ld   [wFarCallAddr+1], a                                  ; $7c26: $ea $99 $c2
	ld   a, $3f                                      ; $7c29: $3e $3f
	ld   [wFarCallBank], a                                  ; $7c2b: $ea $9a $c2
	pop  af                                          ; $7c2e: $f1
	call FarCall                                       ; $7c2f: $cd $62 $09
	ld   a, [wInGameButtonsPressed]                                  ; $7c32: $fa $10 $c2
	bit  0, a                                        ; $7c35: $cb $47
	jr   z, jr_03e_7c47                              ; $7c37: $28 $0e

	call DisplaySakura1stPopupBox                               ; $7c39: $cd $c5 $7e
	ld   hl, wGameSubstate                                   ; $7c3c: $21 $a1 $c2
	inc  [hl]                                        ; $7c3f: $34
	ld   a, $21                                      ; $7c40: $3e $21
	call PlaySoundEffect                                       ; $7c42: $cd $df $1a
	jr   jr_03e_7c60                                 ; $7c45: $18 $19

jr_03e_7c47:
	bit  1, a                                        ; $7c47: $cb $4f
	jr   z, jr_03e_7c60                              ; $7c49: $28 $15

	ld   a, [$cb1d]                                  ; $7c4b: $fa $1d $cb
	or   a                                           ; $7c4e: $b7
	jr   z, jr_03e_7c60                              ; $7c4f: $28 $0f

	ld   a, $03                                      ; $7c51: $3e $03
	ld   [$c9e3], a                                  ; $7c53: $ea $e3 $c9
	ld   a, $05                                      ; $7c56: $3e $05
	ld   [wGameSubstate], a                                  ; $7c58: $ea $a1 $c2
	ld   a, $22                                      ; $7c5b: $3e $22
	call PlaySoundEffect                                       ; $7c5d: $cd $df $1a

jr_03e_7c60:
	call HandleSakuraMiniGameTitleScreenSprites                               ; $7c60: $cd $de $7d
	ret                                              ; $7c63: $c9


	ld   hl, $c9e3                                   ; $7c64: $21 $e3 $c9
	ld   c, $01                                      ; $7c67: $0e $01
	ld   a, [$cb1d]                                  ; $7c69: $fa $1d $cb
	or   a                                           ; $7c6c: $b7
	jr   nz, jr_03e_7c71                             ; $7c6d: $20 $02

	ld   c, $02                                      ; $7c6f: $0e $02

jr_03e_7c71:
	ld   a, [wInGameButtonsPressed]                                  ; $7c71: $fa $10 $c2
	bit  6, a                                        ; $7c74: $cb $77
	jr   z, jr_03e_7c7f                              ; $7c76: $28 $07

	ld   a, [hl]                                     ; $7c78: $7e
	or   a                                           ; $7c79: $b7
	jr   z, jr_03e_7cca                              ; $7c7a: $28 $4e

	dec  [hl]                                        ; $7c7c: $35
	jr   jr_03e_7c88                                 ; $7c7d: $18 $09

jr_03e_7c7f:
	bit  7, a                                        ; $7c7f: $cb $7f
	jr   z, jr_03e_7c92                              ; $7c81: $28 $0f

	ld   a, [hl]                                     ; $7c83: $7e
	cp   c                                           ; $7c84: $b9
	jr   z, jr_03e_7cca                              ; $7c85: $28 $43

	inc  [hl]                                        ; $7c87: $34

jr_03e_7c88:
	call Call_03e_7e2d                               ; $7c88: $cd $2d $7e
	ld   a, $20                                      ; $7c8b: $3e $20
	call PlaySoundEffect                                       ; $7c8d: $cd $df $1a
	jr   jr_03e_7cca                                 ; $7c90: $18 $38

jr_03e_7c92:
	bit  1, a                                        ; $7c92: $cb $4f
	jr   z, jr_03e_7ca7                              ; $7c94: $28 $11

	call Call_03e_7f2f                               ; $7c96: $cd $2f $7f
	call Call_03e_7ebb                               ; $7c99: $cd $bb $7e
	ld   hl, wGameSubstate                                   ; $7c9c: $21 $a1 $c2
	dec  [hl]                                        ; $7c9f: $35
	ld   a, $22                                      ; $7ca0: $3e $22
	call PlaySoundEffect                                       ; $7ca2: $cd $df $1a
	jr   jr_03e_7cca                                 ; $7ca5: $18 $23

jr_03e_7ca7:
	bit  0, a                                        ; $7ca7: $cb $47
	jr   z, jr_03e_7cca                              ; $7ca9: $28 $1f

	ld   a, $21                                      ; $7cab: $3e $21
	call PlaySoundEffect                                       ; $7cad: $cd $df $1a
	ld   a, $05                                      ; $7cb0: $3e $05
	ld   [wGameSubstate], a                                  ; $7cb2: $ea $a1 $c2
	ld   a, [$c9e3]                                  ; $7cb5: $fa $e3 $c9
	or   a                                           ; $7cb8: $b7
	jr   z, jr_03e_7cca                              ; $7cb9: $28 $0f

	ld   a, [$c9e7]                                  ; $7cbb: $fa $e7 $c9
	cp   $00                                         ; $7cbe: $fe $00
	jr   z, jr_03e_7cca                              ; $7cc0: $28 $08

	call DisplaySakuraDifficultyPopupBox                               ; $7cc2: $cd $0d $7f
	ld   a, $04                                      ; $7cc5: $3e $04
	ld   [wGameSubstate], a                                  ; $7cc7: $ea $a1 $c2

jr_03e_7cca:
	call HandleSakuraMiniGameTitleScreenSprites                               ; $7cca: $cd $de $7d
	ret                                              ; $7ccd: $c9


	ld   hl, $c9e8                                   ; $7cce: $21 $e8 $c9
	ld   a, [wInGameButtonsPressed]                                  ; $7cd1: $fa $10 $c2
	bit  6, a                                        ; $7cd4: $cb $77
	jr   z, jr_03e_7cdf                              ; $7cd6: $28 $07

	ld   a, [hl]                                     ; $7cd8: $7e
	or   a                                           ; $7cd9: $b7
	jr   z, jr_03e_7d12                              ; $7cda: $28 $36

	dec  [hl]                                        ; $7cdc: $35
	jr   jr_03e_7ce9                                 ; $7cdd: $18 $0a

jr_03e_7cdf:
	bit  7, a                                        ; $7cdf: $cb $7f
	jr   z, jr_03e_7cf3                              ; $7ce1: $28 $10

	ld   a, [hl]                                     ; $7ce3: $7e
	cp   $01                                         ; $7ce4: $fe $01
	jr   z, jr_03e_7d12                              ; $7ce6: $28 $2a

	inc  [hl]                                        ; $7ce8: $34

jr_03e_7ce9:
	call Call_03e_7e23                               ; $7ce9: $cd $23 $7e
	ld   a, $20                                      ; $7cec: $3e $20
	call PlaySoundEffect                                       ; $7cee: $cd $df $1a
	jr   jr_03e_7d12                                 ; $7cf1: $18 $1f

jr_03e_7cf3:
	bit  1, a                                        ; $7cf3: $cb $4f
	jr   z, jr_03e_7d05                              ; $7cf5: $28 $0e

	call DisplaySakura1stPopupBox                               ; $7cf7: $cd $c5 $7e
	ld   hl, wGameSubstate                                   ; $7cfa: $21 $a1 $c2
	dec  [hl]                                        ; $7cfd: $35
	ld   a, $22                                      ; $7cfe: $3e $22
	call PlaySoundEffect                                       ; $7d00: $cd $df $1a
	jr   jr_03e_7d12                                 ; $7d03: $18 $0d

jr_03e_7d05:
	bit  0, a                                        ; $7d05: $cb $47
	jr   z, jr_03e_7d12                              ; $7d07: $28 $09

	ld   a, $21                                      ; $7d09: $3e $21
	call PlaySoundEffect                                       ; $7d0b: $cd $df $1a
	ld   hl, wGameSubstate                                   ; $7d0e: $21 $a1 $c2
	inc  [hl]                                        ; $7d11: $34

jr_03e_7d12:
	call HandleSakuraMiniGameTitleScreenSprites                               ; $7d12: $cd $de $7d
	ret                                              ; $7d15: $c9


	call HandleSakuraMiniGameTitleScreenSprites                               ; $7d16: $cd $de $7d
	ld   a, [$c9e3]                                  ; $7d19: $fa $e3 $c9
	or   a                                           ; $7d1c: $b7
	jr   z, jr_03e_7d47                              ; $7d1d: $28 $28

	cp   $03                                         ; $7d1f: $fe $03
	jr   z, jr_03e_7d47                              ; $7d21: $28 $24

	ld   a, [$c9e6]                                  ; $7d23: $fa $e6 $c9
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $7d26: $cd $76 $30
	push af                                          ; $7d29: $f5
	ld   a, $43                                      ; $7d2a: $3e $43
	ld   [wFarCallAddr], a                                  ; $7d2c: $ea $98 $c2
	ld   a, $41                                      ; $7d2f: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $7d31: $ea $99 $c2
	ld   a, $01                                      ; $7d34: $3e $01
	ld   [wFarCallBank], a                                  ; $7d36: $ea $9a $c2
	pop  af                                          ; $7d39: $f1
	call FarCall                                       ; $7d3a: $cd $62 $09
	ld   a, c                                        ; $7d3d: $79
	cp   $49                                         ; $7d3e: $fe $49
	ret  nz                                          ; $7d40: $c0

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7d41: $cf
	ld   a, $2b                                      ; $7d42: $3e $2b
	call PlaySampledSound                                       ; $7d44: $cd $64 $1b

jr_03e_7d47:
	xor  a                                           ; $7d47: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $7d48: $ea $62 $c3
	ld   a, $40                                      ; $7d4b: $3e $40
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $7d4d: $ea $63 $c3
	ld   a, $03                                      ; $7d50: $3e $03
	ld   b, $1e                                      ; $7d52: $06 $1e
	ld   hl, $6bfc                                   ; $7d54: $21 $fc $6b
	ld   c, $01                                      ; $7d57: $0e $01
	ld   de, $7000                                   ; $7d59: $11 $00 $70
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $7d5c: $cd $48 $07
	ld   a, [$c9e3]                                  ; $7d5f: $fa $e3 $c9
	push af                                          ; $7d62: $f5
	ld   a, $83                                      ; $7d63: $3e $83
	ld   [wFarCallAddr], a                                  ; $7d65: $ea $98 $c2
	ld   a, $77                                      ; $7d68: $3e $77
	ld   [wFarCallAddr+1], a                                  ; $7d6a: $ea $99 $c2
	ld   a, $3e                                      ; $7d6d: $3e $3e
	ld   [wFarCallBank], a                                  ; $7d6f: $ea $9a $c2
	pop  af                                          ; $7d72: $f1
	call FarCall                                       ; $7d73: $cd $62 $09
	ld   h, $1e                                      ; $7d76: $26 $1e
	ld   l, $01                                      ; $7d78: $2e $01
	push af                                          ; $7d7a: $f5
	ld   a, $ae                                      ; $7d7b: $3e $ae
	ld   [wFarCallAddr], a                                  ; $7d7d: $ea $98 $c2
	ld   a, $58                                      ; $7d80: $3e $58
	ld   [wFarCallAddr+1], a                                  ; $7d82: $ea $99 $c2
	ld   a, $11                                      ; $7d85: $3e $11
	ld   [wFarCallBank], a                                  ; $7d87: $ea $9a $c2
	pop  af                                          ; $7d8a: $f1
	call FarCall                                       ; $7d8b: $cd $62 $09
	ld   a, [$c9e3]                                  ; $7d8e: $fa $e3 $c9
	or   a                                           ; $7d91: $b7
	jr   z, jr_03e_7ddd                              ; $7d92: $28 $49

	ld   b, $00                                      ; $7d94: $06 $00
	ld   a, [$c9e9]                                  ; $7d96: $fa $e9 $c9
	ld   h, a                                        ; $7d99: $67
	ld   a, [$c9ea]                                  ; $7d9a: $fa $ea $c9
	ld   l, a                                        ; $7d9d: $6f
	ld   a, [$cb1d]                                  ; $7d9e: $fa $1d $cb
	or   a                                           ; $7da1: $b7
	jr   nz, jr_03e_7db1                             ; $7da2: $20 $0d

	ld   a, [$c9e3]                                  ; $7da4: $fa $e3 $c9
	cp   $02                                         ; $7da7: $fe $02
	jr   z, jr_03e_7db1                              ; $7da9: $28 $06

	ld   h, $1e                                      ; $7dab: $26 $1e
	ld   l, $01                                      ; $7dad: $2e $01
	ld   b, $01                                      ; $7daf: $06 $01

jr_03e_7db1:
	ld   a, [$c9e8]                                  ; $7db1: $fa $e8 $c9
	ld   c, a                                        ; $7db4: $4f
	ld   a, b                                        ; $7db5: $78
	push af                                          ; $7db6: $f5
	ld   a, $8c                                      ; $7db7: $3e $8c
	ld   [wFarCallAddr], a                                  ; $7db9: $ea $98 $c2
	ld   a, $58                                      ; $7dbc: $3e $58
	ld   [wFarCallAddr+1], a                                  ; $7dbe: $ea $99 $c2
	ld   a, $11                                      ; $7dc1: $3e $11
	ld   [wFarCallBank], a                                  ; $7dc3: $ea $9a $c2
	pop  af                                          ; $7dc6: $f1
	call FarCall                                       ; $7dc7: $cd $62 $09
	ld   a, [$c9e3]                                  ; $7dca: $fa $e3 $c9
	cp   $03                                         ; $7dcd: $fe $03
	jr   nz, jr_03e_7ddd                             ; $7dcf: $20 $0c

	ld   a, [$c9e9]                                  ; $7dd1: $fa $e9 $c9
	ld   [wGameState], a                                  ; $7dd4: $ea $a0 $c2
	ld   a, [$c9ea]                                  ; $7dd7: $fa $ea $c9
	ld   [wGameSubstate], a                                  ; $7dda: $ea $a1 $c2

jr_03e_7ddd:
	ret                                              ; $7ddd: $c9


HandleSakuraMiniGameTitleScreenSprites:
	call ClearOam                                                   ; $7dde
	call AnimateAllAnimatedSpriteSpecs                              ; $7de1
	call LoadSakuraInMiniGameTitleScreenSprites                     ; $7de4
	ret                                                             ; $7de7


LoadSakuraInMiniGameTitleScreenSprites:
; _1 has the majority of sprites
	ldbc $50, $20                                                   ; $7de8
	ld   a, SG_A                                                    ; $7deb
	ld   [wSpriteGroup], a                                          ; $7ded
	ld   a, SGA_SAKURA_IN_MINIGAME_TITLE_SCREEN_1                   ; $7df0
	call LoadSpriteFromMainTable                                    ; $7df2

; _2 has the spear head and 1 bit of hair
	ldbc $50, $20                                                   ; $7df5
	ld   a, SG_A                                                    ; $7df8
	ld   [wSpriteGroup], a                                          ; $7dfa
	ld   a, SGA_SAKURA_IN_MINIGAME_TITLE_SCREEN_2                   ; $7dfd
	call LoadSpriteFromMainTable                                    ; $7dff
	ret                                                             ; $7e02


Call_03e_7e03:
	ld   a, [$c9e6]                                  ; $7e03: $fa $e6 $c9
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $7e06: $cd $76 $30
	ld   a, $00                                      ; $7e09: $3e $00
	ld   de, $7180                                   ; $7e0b: $11 $80 $71
	push af                                          ; $7e0e: $f5
	ld   a, $1c                                      ; $7e0f: $3e $1c
	ld   [wFarCallAddr], a                                  ; $7e11: $ea $98 $c2
	ld   a, $41                                      ; $7e14: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $7e16: $ea $99 $c2
	ld   a, $01                                      ; $7e19: $3e $01
	ld   [wFarCallBank], a                                  ; $7e1b: $ea $9a $c2
	pop  af                                          ; $7e1e: $f1
	call FarCall                                       ; $7e1f: $cd $62 $09
	ret                                              ; $7e22: $c9


Call_03e_7e23:
	ld   hl, $7e2b                                   ; $7e23: $21 $2b $7e
	ld   a, [$c9e8]                                  ; $7e26: $fa $e8 $c9
	jr   jr_03e_7e43                                 ; $7e29: $18 $18

	ld   [hl], b                                     ; $7e2b: $70
	ld   a, [hl]                                     ; $7e2c: $7e

Call_03e_7e2d:
	ld   hl, $7e41                                   ; $7e2d: $21 $41 $7e
	ld   a, [$cb1d]                                  ; $7e30: $fa $1d $cb
	or   a                                           ; $7e33: $b7
	jr   nz, jr_03e_7e39                             ; $7e34: $20 $03

	ld   hl, $7e3e                                   ; $7e36: $21 $3e $7e

jr_03e_7e39:
	ld   a, [$c9e3]                                  ; $7e39: $fa $e3 $c9
	jr   jr_03e_7e43                                 ; $7e3c: $18 $05

	ld   h, d                                        ; $7e3e: $62
	ld   [hl], b                                     ; $7e3f: $70
	ld   a, [hl]                                     ; $7e40: $7e
	ld   l, d                                        ; $7e41: $6a
	halt                                             ; $7e42: $76

jr_03e_7e43:
	ld   c, a                                        ; $7e43: $4f
	ld   b, $00                                      ; $7e44: $06 $00
	add  hl, bc                                      ; $7e46: $09
	ld   c, [hl]                                     ; $7e47: $4e
	ld   b, $35                                      ; $7e48: $06 $35
	ld   a, [$c9e6]                                  ; $7e4a: $fa $e6 $c9
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $7e4d: $cd $76 $30
	ld   a, $6a                                      ; $7e50: $3e $6a
	ld   de, $7180                                   ; $7e52: $11 $80 $71
	push af                                          ; $7e55: $f5
	ld   a, $03                                      ; $7e56: $3e $03
	ld   [wFarCallAddr], a                                  ; $7e58: $ea $98 $c2
	ld   a, $41                                      ; $7e5b: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $7e5d: $ea $99 $c2
	ld   a, $01                                      ; $7e60: $3e $01
	ld   [wFarCallBank], a                                  ; $7e62: $ea $9a $c2
	pop  af                                          ; $7e65: $f1
	call FarCall                                       ; $7e66: $cd $62 $09
	ret                                              ; $7e69: $c9


Call_03e_7e6a:
	ld   hl, $c9e4                                   ; $7e6a: $21 $e4 $c9
	dec  [hl]                                        ; $7e6d: $35
	jr   nz, jr_03e_7eba                             ; $7e6e: $20 $4a

	ld   [hl], $21                                   ; $7e70: $36 $21
	ld   hl, $c9e5                                   ; $7e72: $21 $e5 $c9
	ld   a, [hl]                                     ; $7e75: $7e
	xor  $01                                         ; $7e76: $ee $01
	ld   [hl], a                                     ; $7e78: $77
	or   a                                           ; $7e79: $b7
	jr   nz, jr_03e_7e9c                             ; $7e7a: $20 $20

	ld   c, $80                                      ; $7e7c: $0e $80
	ld   de, $99c0                                   ; $7e7e: $11 $c0 $99
	ld   a, $03                                      ; $7e81: $3e $03
	ld   hl, $d240                                   ; $7e83: $21 $40 $d2
	ld   b, $04                                      ; $7e86: $06 $04
	call EnqueueHDMATransfer                                       ; $7e88: $cd $7c $02
	ld   c, $81                                      ; $7e8b: $0e $81
	ld   de, $99c0                                   ; $7e8d: $11 $c0 $99
	ld   a, $03                                      ; $7e90: $3e $03
	ld   hl, $d540                                   ; $7e92: $21 $40 $d5
	ld   b, $04                                      ; $7e95: $06 $04
	call EnqueueHDMATransfer                                       ; $7e97: $cd $7c $02
	jr   jr_03e_7eba                                 ; $7e9a: $18 $1e

jr_03e_7e9c:
	ld   c, $80                                      ; $7e9c: $0e $80
	ld   de, $99c0                                   ; $7e9e: $11 $c0 $99
	ld   a, $03                                      ; $7ea1: $3e $03
	ld   hl, $d640                                   ; $7ea3: $21 $40 $d6
	ld   b, $04                                      ; $7ea6: $06 $04
	call EnqueueHDMATransfer                                       ; $7ea8: $cd $7c $02
	ld   c, $81                                      ; $7eab: $0e $81
	ld   de, $99c0                                   ; $7ead: $11 $c0 $99
	ld   a, $03                                      ; $7eb0: $3e $03
	ld   hl, $d740                                   ; $7eb2: $21 $40 $d7
	ld   b, $04                                      ; $7eb5: $06 $04
	call EnqueueHDMATransfer                                       ; $7eb7: $cd $7c $02

jr_03e_7eba:
	ret                                              ; $7eba: $c9


Call_03e_7ebb:
	ld   a, $21                                      ; $7ebb: $3e $21
	ld   [$c9e4], a                                  ; $7ebd: $ea $e4 $c9
	xor  a                                           ; $7ec0: $af
	ld   [$c9e5], a                                  ; $7ec1: $ea $e5 $c9
	ret                                              ; $7ec4: $c9


DisplaySakura1stPopupBox:
	call Call_03e_7e2d                               ; $7ec5: $cd $2d $7e
	ld   a, [$cb1d]                                  ; $7ec8: $fa $1d $cb
	or   a                                           ; $7ecb: $b7
	jr   nz, .enqueueShowingPopup                             ; $7ecc: $20 $20

	ld   c, $80                                      ; $7ece: $0e $80
	ld   de, $9980                                   ; $7ed0: $11 $80 $99
	ld   a, $03                                      ; $7ed3: $3e $03
	ld   hl, $d100                                   ; $7ed5: $21 $00 $d1
	ld   b, $0c                                      ; $7ed8: $06 $0c
	call EnqueueHDMATransfer                                       ; $7eda: $cd $7c $02
	ld   c, $81                                      ; $7edd: $0e $81
	ld   de, $9980                                   ; $7edf: $11 $80 $99
	ld   a, $03                                      ; $7ee2: $3e $03
	ld   hl, $d400                                   ; $7ee4: $21 $00 $d4
	ld   b, $0c                                      ; $7ee7: $06 $0c
	call EnqueueHDMATransfer                                       ; $7ee9: $cd $7c $02
	jr   .done                                 ; $7eec: $18 $1e

.enqueueShowingPopup:
	ld   c, $80                                      ; $7eee: $0e $80
	ld   de, $9980                                   ; $7ef0: $11 $80 $99
	ld   a, $03                                      ; $7ef3: $3e $03
	ld   hl, $d000                                   ; $7ef5: $21 $00 $d0
	ld   b, $0c                                      ; $7ef8: $06 $0c
	call EnqueueHDMATransfer                                       ; $7efa: $cd $7c $02
	ld   c, $81                                      ; $7efd: $0e $81
	ld   de, $9980                                   ; $7eff: $11 $80 $99
	ld   a, $03                                      ; $7f02: $3e $03
	ld   hl, $d300                                   ; $7f04: $21 $00 $d3
	ld   b, $0c                                      ; $7f07: $06 $0c
	call EnqueueHDMATransfer                                       ; $7f09: $cd $7c $02

.done:
	ret                                              ; $7f0c: $c9


DisplaySakuraDifficultyPopupBox:
	call Call_03e_7e23                               ; $7f0d: $cd $23 $7e
	ld   c, $80                                      ; $7f10: $0e $80
	ld   de, $9980                                   ; $7f12: $11 $80 $99
	ld   a, $03                                      ; $7f15: $3e $03
	ld   hl, $d800                                   ; $7f17: $21 $00 $d8
	ld   b, $0c                                      ; $7f1a: $06 $0c
	call EnqueueHDMATransfer                                       ; $7f1c: $cd $7c $02
	ld   c, $81                                      ; $7f1f: $0e $81
	ld   de, $9980                                   ; $7f21: $11 $80 $99
	ld   a, $03                                      ; $7f24: $3e $03
	ld   hl, $d900                                   ; $7f26: $21 $00 $d9
	ld   b, $0c                                      ; $7f29: $06 $0c
	call EnqueueHDMATransfer                                       ; $7f2b: $cd $7c $02
	ret                                              ; $7f2e: $c9


Call_03e_7f2f:
	call Call_03e_7e03                               ; $7f2f: $cd $03 $7e
	ld   c, $80                                      ; $7f32: $0e $80
	ld   de, $9980                                   ; $7f34: $11 $80 $99
	ld   a, $03                                      ; $7f37: $3e $03
	ld   hl, $d200                                   ; $7f39: $21 $00 $d2
	ld   b, $0c                                      ; $7f3c: $06 $0c
	call EnqueueHDMATransfer                                       ; $7f3e: $cd $7c $02
	ld   c, $81                                      ; $7f41: $0e $81
	ld   de, $9980                                   ; $7f43: $11 $80 $99
	ld   a, $03                                      ; $7f46: $3e $03
	ld   hl, $d500                                   ; $7f48: $21 $00 $d5
	ld   b, $0c                                      ; $7f4b: $06 $0c
	call EnqueueHDMATransfer                                       ; $7f4d: $cd $7c $02
	ret                                              ; $7f50: $c9


SetSakuraMiniGameTitleScreenState::
	ld   a, h                                        ; $7f51: $7c
	ld   [$c9e9], a                                  ; $7f52: $ea $e9 $c9
	ld   a, l                                        ; $7f55: $7d
	ld   [$c9ea], a                                  ; $7f56: $ea $ea $c9
	ld   a, GS_SAKURA_MINI_GAME_TITLE_SCREEN                                      ; $7f59: $3e $1e
	ld   [wGameState], a                                  ; $7f5b: $ea $a0 $c2
	ld   a, $00                                      ; $7f5e: $3e $00
	ld   [wGameSubstate], a                                  ; $7f60: $ea $a1 $c2
	ret                                              ; $7f63: $c9


if def(VWF)

SettingsTileDataHook:
	call RLEXorCopy

	M_FarCall LoadSettingsEnTileData
	ret


SettingsTileMapHook:
	call RLEXorCopy

	M_FarCall ChangeSettingsTileMap
	ret


SettingsTileAttrHook:
	call RLEXorCopy

	M_FarCall ChangeSettingsTileAttr
	ret


BattleTileDataHook:
	call RLEXorCopy

	M_FarCall LoadEnBattleTileData
	ret


SakuraMiniGameTitleScreenBank0_8800hHook:
	call RLEXorCopy

	M_FarCall LoadSakuraMiniGameTitleScreenGfx0
	ret


SakuraMiniGameTitleScreenBank1_8800hHook:
	call RLEXorCopy

	M_FarCall LoadSakuraMiniGameTitleScreenGfx1
	ret

endc