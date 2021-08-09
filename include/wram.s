INCLUDE "includes.s"

SECTION "WRAM", WRAM0[$c000]

wOam:: ; $c000
    ds NUM_SPRITES * 4
.end::

wc0a0:
    ds $100-$a0

wAnimatedSpriteSpecInstances:: ; $c100
    ds $20 * ASSI_SIZEOF

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

wtodo_VisitedTitleScreen:: ; $c201
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
    ds $916-$5f0

wResetDataBaseAnimSpriteSpecIdxUsed:: ; $c916
    db

wResetSaveDataReturnState:: ; $c917
    db

wResetSaveDataReturnSubstate:: ; $c918
    db

wc919:
    ds $7a-$19

wSettingsScreenCursorTypeShown:: ; $c97a
    db

wSettingsScreenFaceIconShown:: ; $c97b
    db

wc97c:
    ds $b0e-$97c

wPlayerName:: ; $cb0e
    ds 6

wcb14:
    ds $21-$14

wBattleWon:: ; $cb21
    db

wcb22:
    ds $51-$22

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

wcb94:
    ds 5-4

wNumBytesInScriptCalcStack:: ; $cb95
    db

wScriptCalcStack:: ; $cb96
    db ; unknown size

wcb97:
    ds $c02-$b97

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

wcc18:
    ds $74-$18

wPostIntroScriptEngineGameState:: ; $cc74
    db

wPostIntroScriptEngineGameSubstate:: ; $cc75
    db

wIntroScriptIdx:: ; $cc76
    dw

wcc78:
    ds $98-$78

wPrologueMainSubSubstate:: ; $cc98
    db

wcc99:
    ds $a-9

wPostPrologueScriptEngineGameState:: ; $cc9a
    db

wPostPrologueScriptEngineGameSubstate:: ; $cc9b
    db

wSpecialScriptIdx:: ; $cc9c
    dw

wcc9e:
    ds $dab-$c9e

wCurrAudChannelTimes5:: ; $cdab
    db

wcdac:
    ds $f00-$dac

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

wcf25:
    ds $1000-$f25

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

SECTION "WRAM 7", WRAMX[$d000], BANK[$7]

union

wTitleScreenTileDataBuffer:: ; $d000
    ds $1000

nextu

wTitleScreenTileAttrBuffer:: ; $d000
    ds $800

wTitleScreenTileMapBuffer:: ; $d800
    ds $800

endu
