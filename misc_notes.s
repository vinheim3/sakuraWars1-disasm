; in-game palettes
; 3-5 - scenery
; 7 - continue text prompt

存 - 3c5/53d - 0x2ef/
襲 - 4ca/648 - /0x2ed
;徳 - 682/6c6 - 0x169/

; rgbgfx -o en_saveScreen.2bpp en_saveScreen.png
; rgbgfx -o en_titleMenuScreenOpts.2bpp -h en_titleMenuScreenOpts.png
; rgbgfx -o en_settings.2bpp -h en_settings.png
; rgbgfx -o en_titleScreen.2bpp -u -T en_titleScreen.png ; gfx loading - bank_00a, tile map/attr - bank_097, sprites - bank_00e, palettes - bank_0a3
; rgbgfx -o en_statsLabels.2bpp en_statsLabels.png
; rgbgfx -o en_dormRoomOpts.2bpp -h en_dormRoomOpts.png
; rgbgfx -o en_dormRoomDayDetails.2bpp -h en_dormRoomDayDetails.png
; rgbgfx -o en_enterName.2bpp en_enterName.png
; rgbgfx -o en_battleKanjis.2bpp en_battleKanjis.png
; rgbgfx -o en_cinematron.2bpp en_cinematron.png
; tools/gfx.py 1bpp newLetters.png --from=png --interleave

; empty banks
; 0x02, 0x03, 0x1f, 0x2b, 0x36, 0x37, 0x38, 0x39
; 0x3a, 0x3b, 0x3c, 0x3d, 0x6c, 0x6d, 0x6e, 0x6f
; 0x86, 0x87

; script banks
; 0x41 - 0x6a

; IMPORTANT
; When adding new characters, add map+width in scriptExtract, and width in getCharWidth


; tools/instantText.py battle Table_24_71b0
;   battle text in bank $24 (DONE + text fits)
;   _90_5087 (DONE)
;   _90_4e80 (DONE)
;   _90_5118 (DONE)
;   _90_5234 (DONE)
;   _90_5ac9 (DONE)
;   _05_579f (not translated)
;   _0c_5ad5 (DONE)
;   _30_683a
;   _30_6e56
;   _30_77d4
;   _31_441e (DONE)
;   _31_595e (DONE)
;   _0d_618f
; tools/scriptExtract.py


; ..
; 1) Minigame selection - GameState03_MiniGames - Substate1
; 2) Minigame results - GameState18_MiniGameResults - Substate0
; 3) Sakura title screen
;   GameState1e_SakuraMiniGameTitleScreen - Substate0
;   Char sprites - LoadSakuraInMiniGameTitleScreenSprites
; 4) Sakura help screen
;   GameState0c_SakuraMiniGameMain - Substate0
;   Popup boxes - Call_011_6b56
; 5) Sakura main screen - GameState0c_SakuraMiniGameMain - Substate3
; 6) Sumire title screen
;   GameState1d_SumireMiniGameTitleScreen - Substate0
;   Char sprites - Call_010_73d9
; 7) Sumire help screen 
;   GameState26_SumireMiniGameMain - Substate0
;   Popup boxes - Call_010_74d5
; 8) Sumire main screen ready text
;   GameState26_SumireMiniGameMain - Substate3
;   Sprites - Call_020_43ac (tiles 0:$8d40+)
; 9) Sumire main screen finished text
;   GameState26_SumireMiniGameMain - Substate3
;   Winner prites - Call_020_55ab (tiles 1:$8000+)
;   Loser prites - Call_020_55bf (tiles 1:$8200+)
; 10) Maria title screen - GameState0d_MariaMiniGame - Substate0
; 11) Maria help screen - GameState0d_MariaMiniGame - Substate6
; 12) Maria main screen - GameState0d_MariaMiniGame - Substate9
; 13) Iris title screen - GameState1c_IrisMiniGameTitleScreen - Substate0
; 14) Iris help screen - GameState22_IrisMiniGameHelpScreen - Substate0
; 15) Iris main screen - GameState04_IrisMiniGameMain - Substate0
; 16) Kohran title screen - GameState1b_KohranMiniGameTitleScreen - Substate0
; 17) Kohran help screen - GameState25_KohranMiniGameMain - Substate0
; 18) Kohran main screen
;   GameState25_KohranMiniGameMain - Substate3
;   Top left box - Call_020_6f72
;   Top right box - Call_020_7028
; 19) Kanna title screen - GameState1f_KannaMiniGameTitleScreen - Substate0
; 20) Kanna help screen - GameState21_KannaMiniGameHelpScreen - Substate0
; 21) Kanna main screen - GameState0b_KannaMiniGameMain - Substate1
; ..