INCLUDE "includes.s"

SECTION "WRAM", WRAM0[$c000]

wOam:: ; $c000
    ds NUM_SPRITES * 4
.end::

wc0a0:
    ds $100-$a0

wAnimatedSpriteSpecInstances:: ; $c100
    ds $c0

wBaseAnimSpriteSpecDetails:: ; $c1c0
    ds NUM_ANIM_SPRITE_SPECS * BASS_SIZEOF
.end::

wFoundBaseAnimSpriteSpecDetailsIdx:: ; $c1f0
    db

wNumStructBytesForCurrAnimSpriteSpec:: ; $c1f1
    db

wPreservedDEduringAnimSpriteSpecLoad:: ; $c1f2
    dw

wc1f4:
    ds $200-$1f4

wIsGBC:: ; $c200
    db

wVisitedTitleScreen:: ; $c201
    db

wIsDoubleSpeed:: ; $c202
    db

wDisplayRegs:: ; $c203
wLCDC:: ; $c203
    db
wBGP:: ; $c204
    db
wOBP0:: ; $c205
    db
wOBP1:: ; $c206
    db
wSCX:: ; $c207
    db
wSCY:: ; $c208
    db
wWX:: ; $c209
    db
wWY:: ; $c20a
    db
wLYC:: ; $c20b
    db
wSTAT:: ; $c20c
    db

wIE:: ; $c20d
    db

wInGameInputsEnabled:: ; $c20e
    db

wInGameButtonsHeld:: ; $c20f
    db

wInGameButtonsPressed:: ; $c210
    db

wInGameStickyButtonsPressed:: ; $c211
    db

wCurrStickyCounter:: ; $c212
    db

wBaseInitialStickyCounter:: ; $c213
    db

wBaseRepeatedStickyCounter:: ; $c214
    db

wCurrButtonsHeld:: ; $c215
    db

wCurrButtonsPressed:: ; $c216
    db

wStickyButtonsPressed:: ; $c217
    db

wPrevButtonsHeld:: ; $c218
    db

wNextShadowOamIdxToPopulate:: ; $c219
    db

wSpriteGroup:: ; $c21a
    db

wNumTiles10hBytesHDMAEnqueued:: ; $c21b
    db

wNumVBlankTransferStructBytes:: ; $c21c
    db

wVBlankTransferStructs:: ; $c21d
    ds $10 * HDMA_SIZEOF

wLCDCIntFuncIdx:: ; $c28d
    db

wSkipMainVBlankFuncs:: ; $c28e
    db

wFrameCounter:: ; $c28f
    db

wUnusedWord_c290:: ; $c290
    dw

wRomBank:: ; $c292
    db

wWramBank:: ; $c293
    db

wSramBank:: ; $c294
    db

wc295:
    ds 8-5

wFarCallAddr:: ; $c298
    dw

wFarCallBank:: ; $c29a
    db

wFarByteRead:: ; $c29b
    db

wGenericFarBank:: ; $c29c
    db

wc29d:
    ds $e-$d

wSoundUpdateEnabled:: ; $c29e
    db

wSoundIsUpdating:: ; $c29f
    db

wGameState:: ; $c2a0
    db

wGameSubstate:: ; $c2a1
    db

wc2a2:
    ds 3-2

wRLELastCopiedByte:: ; $c2a3
    db

wc2a4:
    ds 5-4

wRandomNumRange:: ; $c2a5
    db

wCurrRandomNumStructIdx:: ; $c2a6
    db

wRandomNumStruct:: ; $c2a7
    ds $37
.end::

wBGandOBJPalettes:: ; $c2de
wBGPalettes:: ; $c2de
    ds NUM_PALETTE_BYTES
wOBJPalettes:: ; $c31e
    ds NUM_PALETTE_BYTES

; bit 7 set when we don't want to update any
wStartingBGColorToUpdate:: ; $c35e
    db

wEndingBGColorToUpdate:: ; $c35f
    db

; bit 7 set when we don't want to update any
wStartingOBJColorToUpdate:: ; $c360
    db

wEndingOBJColorToUpdate:: ; $c361
    db

wStartingColorIdxToLoadCompDataFor:: ; $c362
    db

wNumPaletteColorsToLoadCompDataFor:: ; $c363
    db

wPaletteCompFadeValsBank:: ; $c364
    db

wPaletteCompColorValsBank:: ; $c365
    db

; each color shifted left twice
wBGandOBJColorComponents:: ; $c366
    ds NUM_COLORS * 3 * 2

wBGandOBJCompFadeValues:: ; $c426
    ds NUM_COLORS * 3 * 2

wCurrConversationsKanjis:: ; $c4e6
    ds $100

wLastKanjiIdxInCurrTextbox:: ; $c5e6
    db

wKanjiIdxInConversation:: ; $c5e7
    db

wCurrKanjiCol:: ; $c5e8
    db

wCurrKanjiRow:: ; $c5e9
    db

wNumKanjiTextBoxCols:: ; $c5ea
    db

wNumKanjiTextBoxRows:: ; $c5eb
    db

wNextKanjiCharOverwrites:: ; $c5ec
    db

; ie 1 - +$1000 bytes in bank 6
;    4 - $4000 in bank 7
wCurrKanjiDataQuarterBankOffset:: ; $c5ed
    db

wCurrKanjiTileTextStyle:: ; $c5ee
    db

wDefaultKanjiTileTextStyle:: ; $c5ef
    db

wc5f0:
    ds $600-$5f0

wType0AnimSpriteXPosRelativeTo:: ; $c600
    db

wType0AnimSpriteYPosRelativeTo:: ; $c601
    db

wc602:
    ds $66-2

wSoundModeGirlSelected:: ; $c666
    db

wc667:
    ds $99-$67

wMiniGamesReturnState:: ; $c699
    db

wMiniGamesReturnSubstate:: ; $c69a
    db

wc69b:
    ds $8af-$69b

wSaveScreenPopUpBottomRowSpriteSpecIdxUsed:: ; $c8af
    db

wc8b0:
    ds 1-0

wSaveScreenPopUpTopRowSpriteSpecIdxUsed:: ; $c8b1
    db

wc8b2:
    ds $d-2

wSaveScreenReturnState:: ; $c8bd
    db

wSaveScreenReturnSubstate:: ; $c8be
    db

wc8bf:
    ds $916-$8bf

wResetDataBaseAnimSpriteSpecIdxUsed:: ; $c916
    db

wResetSaveDataReturnState:: ; $c917
    db

wResetSaveDataReturnSubstate:: ; $c918
    db

wc919:
    ds $d-9

wCinematronChosenOption:: ; $c91d
    db

wc91e:
    ds $22-$1e

wCinematronReturnState:: ; $c922
    db

wCinematronReturnSubstate:: ; $c923
    db

wTVAdapterDisconnected:: ; $c924
    db

wc925:
    ds $3f-$25

wGameBoyOrTVCommsReturnState:: ; $c93f
    db

wGameBoyOrTVCommsReturnSubstate:: ; $c940
    db

wc941:
    ds 6-1

wEnterNameReturnState:: ; $c946
    db

wEnterNameReturnSubstate:: ; $c947
    db

wPointerToPlayerNameToEnter:: ; $c948
    dw

wPlayerNameRamBank:: ; $c94a
    db

wEnterNameMaxChars:: ; $c94b
    db

; bit 0 set - exit state when deleting with no chars
; bit 1 set - allow spaces in name
; bit 2 set - pre-fill inputted chars with player name
wEnterNameControlByte:: ; $c94c
    db

wEnterNameLetterCursorBaseAnimSpriteSpecUsed:: ; $c94d
    db

wEnterNameNameUnderlineBaseAnimSpriteSpecUsed:: ; $c94e
    db

wEnterNameCursorLetterColIdx:: ; $c94f
    db

wEnterNameCursorLetterRowIdx:: ; $c950
    db

wEnterNameNumCharsEntered:: ; $c951
    db

wEnterNameInputtedChars:: ; $c952
    ds $0a

wc95c:
    ds $e-$c

wEnterNameSpaceKanjiIdx:: ; $c95e
    db

; 0 - hiragana, 1 - katakana, 2 - english
wEnterNameAlphabetChosen:: ; $c95f
    db

wEnterNameCursorMoved:: ; $c960
    db

wc961:
    ds $7a-$61

wSettingsScreenCursorTypeShown:: ; $c97a
    db

wSettingsScreenFaceIconShown:: ; $c97b
    db

wc97c:
    ds $a4c-$97c

wNapOrTrainReturnState:: ; $ca4c
    db

wNapOrTrainReturnSubstate:: ; $ca4d
    db

wca4e:
    ds $50-$4e

wBattleReturnState:: ; $ca50
    db

wBattleReturnSubstate:: ; $ca51
    db

wca52:
    ds $6d-$52

wNapOrTrainIdx:: ; $ca6d
    db

wca6e:
    ds $b0e-$a6e

wPlayerName:: ; $cb0e
    ds 6

wNameReplacementCharToReplace:: ; $cb14
    db

wNameReplacementCurrReplacementListIdx:: ; $cb15
    db

wNameReplacementCurrListNumChars:: ; $cb16
    db

wcb17:
    ds $20-$17

; 16 possible values, if +6
; 6-10 - morning
; 11-17 - noon
; 18-21 - night
wTimeOfDay:: ; $cb20
    db

wBattleWon:: ; $cb21
    db

wcb22:
    ds 4-2

wMainConvoScriptIdx:: ; $cb24
    dw

wMainConvoScriptSong:: ; $cb26
    db

wcb27:
    ds 9-7

wMainConvoReturnState:: ; $cb29
    db

wMainConvoReturnSubstate:: ; $cb2a
    db

wcb2b:
    ds $f-$b

; 0 - ground, 1 - upper, 2 - basement
wExploreFloor:: ; $cb2f
    db

wcb30:
    ds 7-0

wExploreCursorX:: ; $cb37
    db

wcb38:
    ds 9-8

wExploreCursorY:: ; $cb39
    db

wExploreCurrRegionData:: ; $cb3a
wExploreHoveredAreaIdx:: ; $cb3a
    db
wExploreHoverFloorTransition:: ; $cb3b
    db
wExploreHoveredAreaTileDataIdx:: ; $cb3c
    db
wExploreCurrRegionLeftX:: ; $cb3d
    db
wExploreCurrRegionRightX:: ; $cb3e
    db
wExploreCurrRegionTopY:: ; $cb3f
    db
wExploreCurrRegionBottomY:: ; $cb40
    db

wcb41:
    ds $51-$41

wScriptEngineIsRunning:: ; $cb51
    db

wScriptEngineContsRunningThisMainLoop:: ; $cb52
    db

wIdxInScriptOpcodeStructForCurrOpcode:: ; $cb53
    db

wScriptOpcodeStruct:: ; $cb54
    db ; unknown size

wcb55:
    ds $74-$55

wScriptOpcodeParamPointer:: ; $cb74
    dw

wInterruptScriptBytes:: ; $cb76
    ds $10

wNextIdxIntoInterruptScriptBytes:: ; $cb86
    db

wNumProcessedInterruptScriptBytes:: ; $cb87
    db

wcb88:
    ds $a-8

wBaseScriptAddr:: ; $cb8a
    dw

wBaseScriptBank:: ; $cb8c
    db

wCurrScriptAddr:: ; $cb8d
    dw

wCurrScriptBank:: ; $cb8f
    db

wTextSpeedBaseCounter:: ; $cb90
    db

wcb91:
    ds 2-1

wUntimedQuestionAnswer:: ; $cb92
    db

; Random order, $ff - not answered
wTimedQuestionAnswer:: ; $cb93
    db

wScriptRandomByte:: ; $cb94
    db

wNumBytesInScriptCalcStack:: ; $cb95
    db

wScriptCalcStack:: ; $cb96
    db ; unknown size

wcb97:
    ds $c8-$97

wScriptSongToPlay:: ; $cbc8
    db

wcbc9:
    ds $d4-$c9

wCharacterPortraitBaseAddr:: ; $cbd4
    dw

wCharacterPortraitBaseBank:: ; $cbd6
    db

wcbd7:
    ds 8-7

wUntimedQuestionProcessStep:: ; $cbd8
    db

wUntimedQuestionProcessMiscCounter:: ; $cbd9
    db

wcbda:
    ds $c02-$bda

wTitleScreenAnimationStep:: ; $cc02
    db

wTitleScreenMiscCounterIdx:: ; $cc03
    db

wcc04:
    ds $10-4

wTitleScreenFrameCounter:: ; $cc10
    dw

wTitleScreenGirlHairAnimIdx:: ; $cc12
    db

wTitleScreenFrameCountForUpdatingMiddleBitTileMapAttr:: ; $cc13
    db

wTitleScreenPressStartAnimCounter:: ; $cc14
    db

wTitleScreenGirlEyesAnimIdx:: ; $cc15
    db

wTitleScreenCounterBetweenBlinkAnimIdxes:: ; $cc16
    db

wTitleScreenCounterForResettingData:: ; $cc17
    db

wDayPassedAnimationStep:: ; $cc18
    db

wDayPassedMiscCounterIdx:: ; $cc19
    db

wcc1a:
    ds $b-$a

wFileLoadDisplayAnimationStep:: ; $cc1b
    db

wFileLoadDisplayMiscCounterIdx:: ; $cc1c
    db

wcc1d:
    ds $e-$d

wFileLoadDisplayShouldSkip:: ; $cc1e
    db

wcc1f:
    ds $74-$1f

wPostIntroScriptEngineGameState:: ; $cc74
    db

wPostIntroScriptEngineGameSubstate:: ; $cc75
    db

wIntroScriptIdx:: ; $cc76
    dw

wIntroScriptSongIdx:: ; $cc78
    db

wDormRoomAnimationStep:: ; $cc79
    db

wDormRoomMiscCounterIdx:: ; $cc7a
    db

wcc7b:
    ds $c-$b

wDormRoomReturnState:: ; $cc7c
    db

wDormRoomReturnSubstate:: ; $cc7d
    db

wDormRoomOptionsSetupIdx:: ; $cc7e
    db

wDormRoomDaySpritesX:: ; $cc7f
    db

wcc80:
    ds 3-0

wDormRoomButtonsDisplayed:: ; $cc83
    ds 5

wcc88:
    ds $98-$88

wPrologueMainSubSubstate:: ; $cc98
    db

wPrologueMiscCounter:: ; $cc99
    db

wPrologueReturnState:: ; $cc9a
    db

wPrologueReturnSubstate:: ; $cc9b
    db

wPrologueScriptIdx:: ; $cc9c
    dw

wcc9e:
    ds $dab-$c9e

wCurrAudChannelTimes5:: ; $cdab
    db

wcdac:
    ds $f00-$dac

; todo: wrap these in an 'if def(VWF)'
wInstantTextSingleTileDataBuffer:: ; $cf00
    ds $20

wKanjiPixelInTileIdx:: ; $cf20
    db

wSavedKanjiIdx:: ; $cf21
    db

wEnqueue2VwfTiles:: ; $cf22
    db

wPointerToInstantTileDataBuffer:: ; $cf23
    dw

wSavedSceneryIdx:: ; $cf25
    dw

wInstantCrossedTile:: ; $cf27
    db

wInstantCharWidth:: ; $cf28
    db

wcf29:
    ds $1000-$f29

wStackTop:: ; $d000

SECTION "WRAM 1", WRAMX[$d000], BANK[$1]

wKanjiTileDataBuffer:: ; $d000
    ds $100

wIdxUsedForKanjiTileDataBuffer:: ; $d100
    db

if def(VWF)

w1_d101:
    ds $20-1

wSingleTileDataBuffer:: ; $d120
    ds $20
wRemainderTileDataBuffer:: ; $d140
    ds $20

endc

SECTION "WRAM 2", WRAMX[$d000], BANK[$2]

w2_d000:
    ds $880

wTitleScreenPressStartRowTileMap:: ; $d880
    ds SCRN_VX_B

w2_d8a0:
    ds $c9e-$8a0

wNextMainConvoScriptIdx:: ; $dc9e
    dw

SECTION "WRAM 3", WRAMX[$d000], BANK[$3]

union

wSaveScreenTileDataBuffer:: ; $d000
    ds $1000

nextu

wEnterNameTileDataOrLayoutBuffer:: ; $d000
    ds $800

w3_d800:
    ds $500

wEnterNameInputtedNameTileDataBuffer:: ; $dd00
    ds $100 ; unknown size

nextu

wEnterNameSelectableCharsTileDataBuffer:: ; $d000
    ds $cc0

nextu

wTVCommsTileMapBuffer:: ; $d000
    ds $400

wTVCommsTileAttrBuffer:: ; $d400
    ds $400

endu

SECTION "WRAM 7", WRAMX[$d000], BANK[$7]

union

wTitleScreenTileDataBuffer:: ; $d000
    ds $1000

nextu

wTitleScreenTileAttrBuffer:: ; $d000
    ds $800

wTitleScreenTileMapBuffer:: ; $d800
    ds $800

nextu

wDormRoomTileDataBuffer:: ; $d000
    ds $1000

nextu

wFileLoadDisplayTileAttrBuffer:: ; $d000
    ds $400

wFileLoadDisplayTileMapBuffer:: ; $d400
    ds $400

nextu

wCharacterPortraitTileDataBuffer:: ; $d000
    ds $180
.end::

w7_d180:
    ds $200-$180

wCharacterPortraitTileMap:: ; $d200
    ds $18
.end::

endu
