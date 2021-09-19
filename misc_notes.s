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
; rgbgfx -o en_sakuraMiniGameTitleScreen.2bpp en_sakuraMiniGameTitleScreen.png
; rgbgfx -o en_sumireMiniGameTitleScreen.2bpp en_sumireMiniGameTitleScreen.png
; rgbgfx -o en_sumireMGTitleScreenPressA.2bpp en_sumireMGTitleScreenPressA.png
; rgbgfx -o en_sumireMGTitleScreenSpr.2bpp -h en_sumireMGTitleScreenSpr.png
; rgbgfx -o en_mariaMiniGameTitleScreen.2bpp en_mariaMiniGameTitleScreen.png
; rgbgfx -o en_irisMiniGameTitleScreen.2bpp en_irisMiniGameTitleScreen.png
; rgbgfx -o en_irisMGTitleScreenSpr.2bpp -h en_irisMGTitleScreenSpr.png
; rgbgfx -o en_kannaMiniGameTitleScreen.2bpp en_kannaMiniGameTitleScreen.png
; rgbgfx -o en_kannaMGTitleScreenSpr.2bpp -h en_kannaMGTitleScreenSpr.png
; rgbgfx -o en_kohranMiniGameTitleScreen.2bpp en_kohranMiniGameTitleScreen.png
; rgbgfx -o en_kohranMGTitleScreenSpr.2bpp -h en_kohranMGTitleScreenSpr.png
; rgbgfx -o en_sakuraMGHelpScreen.2bpp -u -T en_sakuraMGHelpScreen.png
; rgbgfx -o en_sumireMGHelpScreen.2bpp -u -T en_sumireMGHelpScreen.png
; rgbgfx -o en_mariaMGHelpScreen.2bpp -u -T en_mariaMGHelpScreen.png
; rgbgfx -o en_irisMGHelpScreen.2bpp -u -T en_irisMGHelpScreen.png
; rgbgfx -o en_kohranMGHelpScreen.2bpp -u -T en_kohranMGHelpScreen.png
; rgbgfx -o en_kannaMGHelpScreen.2bpp -u -T en_kannaMGHelpScreen.png
; rgbgfx -o en_sumireMiniGameMainSpr.2bpp -h en_sumireMiniGameMainSpr.png
; rgbgfx -o en_mariaMiniGameMain.2bpp en_mariaMiniGameMain.png
; rgbgfx -o en_irisMiniGameMain.2bpp en_irisMiniGameMain.png
; rgbgfx -o en_kohranMiniGameMain.2bpp en_kohranMiniGameMain.png
; rgbgfx -o en_kannaMiniGameMain.2bpp en_kannaMiniGameMain.png
; rgbgfx -o en_minigameResults.2bpp en_minigameResults.png
; rgbgfx -o en_sakuraMiniGameMain.2bpp en_sakuraMiniGameMain.png
; rgbgfx -o en_minigamePopup.2bpp -u -T en_minigamePopup.png
; rgbgfx -o en_mariaMGPopup.2bpp -u -T en_mariaMGPopup.png
; rgbgfx -o en_kohranMGPopup.2bpp -u -T en_kohranMGPopup.png
; rgbgfx -o en_kannaMGPopup.2bpp -u -T en_kannaMGPopup.png
; rgbgfx -o en_minigameSelection.2bpp en_minigameSelection.png
; rgbgfx -o en_saveScreenPopups.2bpp -u -T en_saveScreenPopups.png
; tools/gfx.py 1bpp newLetters.png --from=png --interleave

; empty banks
; 0x02, 0x03, 0x1f, 0x2b, 0x36, 0x37, 0x38, 0x39
; 0x3a, 0x3b, 0x3c, 0x3d, 0x6c, 0x6d, 0x6e, 0x6f
; 0x86, 0x87

; script banks
; 0x41 - 0x6a

; hook banks
; 0xff, 0xfd, 0xfb, 0xa4, 0x8b

; cb1d=0 for practice
; sakura - 0x3e (c9e3/c9e7 !=0 for difficulty)
; sumire - 0x10 (c9f3/c9f7 !=0 for difficulty)
; maria - 0x11 (c89c/c89f !=0 for difficulty)
; iris - 0x3e (c9db/c9df !=0 for difficulty)
; kohran - 0x3e (c9d3/c9d9 !=0 for difficulty)
; kanna - 0x3f (c9eb/c9ef !=0 for difficulty)

; IMPORTANT
; When adding new characters, add map+width in scriptExtract, and width in getCharWidth
; TODO: optimize kanna's title screen tile usage


; tools/instantText.py battle Table_24_71b0
;   battle text in bank $24 (DONE + text fits)
;   _90_5087 (DONE + text fits)
;   _90_4e80 (DONE)
;   _90_5118 (DONE + text fits)
;   _90_5234 (DONE)
;   _90_5ac9 (DONE + text fits)
;   _05_579f (not translated)
;   _0c_5ad5 (DONE)
;   _30_683a (DONE)
;   _30_6e56 (DONE)
;   _30_77d4 (DONE)
;   _31_441e (DONE)
;   _31_595e (DONE + text fits)
;   _0d_618f (DONE + text fits)
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

0x0 0x3e17
0x1 0x3b04
0x2 0x0
0x3 0x0
0x4 0x3787
0x5 0x388e
0x6 0x3ffc
0x7 0x2eac
0x8 0x378b
0x9 0x296c
0xa 0x35c7
0xb 0x31b1
0xc 0x394c
0xd 0x27a2
0xe 0x378d
0xf 0x317b
0x10 0x3a35
0x11 0x3e69
0x12 0x3ffe
0x13 0x3ff1
0x14 0x3ff5
0x15 0x3ff3
0x16 0x3ff9
0x17 0x3ffe
0x18 0x3ff7
0x19 0x3ff1
0x1a 0x3fff
0x1b 0x3fff
0x1c 0x3ffb
0x1d 0x3feb
0x1e 0x3f5b
0x1f 0x0
0x20 0x3ba5
0x21 0x3c5e
0x22 0x10bf
0x23 0x3c03
0x24 0x38bd
0x25 0x3e9d
0x26 0x3607
0x27 0x3edf
0x28 0x3d69
0x29 0x3fff
0x2a 0x22df
0x2b 0x0
0x2c 0x3ff7
0x2d 0x3ffb
0x2e 0x3ffa
0x2f 0x2b90
0x30 0x3e67
0x31 0x1a48
0x32 0x3ffc
0x33 0x3fee
0x34 0x3fc0
0x35 0x937
0x36 0x0
0x37 0x0
0x38 0x0
0x39 0x0
0x3a 0x0
0x3b 0x0
0x3c 0x0
0x3d 0x0
0x3e 0x3f63
0x3f 0x3927
0x40 0x208d
0x41 0x3fff
0x42 0x3fff
0x43 0x3fff
0x44 0x3fff
0x45 0x3fff
0x46 0x3fff
0x47 0x3ffe
0x48 0x3fff
0x49 0x3fff
0x4a 0x3fff
0x4b 0x3fff
0x4c 0x3fff
0x4d 0x3fff
0x4e 0x3fff
0x4f 0x3fff
0x50 0x3fff
0x51 0x3fff
0x52 0x3ffe
0x53 0x3fff
0x54 0x3ffe
0x55 0x3fff
0x56 0x3fff
0x57 0x3fff
0x58 0x3fff
0x59 0x3fff
0x5a 0x3fff
0x5b 0x3fff
0x5c 0x3fff
0x5d 0x3fff
0x5e 0x3fff
0x5f 0x3fff
0x60 0x3fff
0x61 0x3ffe
0x62 0x3fff
0x63 0x3ffe
0x64 0x3fff
0x65 0x3fff
0x66 0x3fff
0x67 0x3fff
0x68 0x3fff
0x69 0x3fff
0x6a 0x659
0x6b 0x5d7
0x6c 0x0
0x6d 0x0
0x6e 0x0
0x6f 0x0
0x70 0x3fe9
0x71 0x3ffa
0x72 0x3ff5
0x73 0x3ff2
0x74 0x3ff6
0x75 0x3ffc
0x76 0x3ffb
0x77 0x3ffb
0x78 0x3ff2
0x79 0x3ff5
0x7a 0x3ffe
0x7b 0x3ff8
0x7c 0x3ffd
0x7d 0x3fed
0x7e 0x3ffe
0x7f 0x3ff7
0x80 0x3ff4
0x81 0x3ffc
0x82 0x3ffa
0x83 0x3ff6
0x84 0x3ff4
0x85 0x38a2
0x86 0x0
0x87 0x0
0x88 0x3ff6
0x89 0x3fe2
0x8a 0x3faa
0x8b 0x58b
0x8c 0x3ffb
0x8d 0x3fed
0x8e 0x3fff
0x8f 0x3ff3
0x90 0x1d1d
0x91 0x3ffe
0x92 0x3fef
0x93 0x3ffd
0x94 0x3ffa
0x95 0x3ffc
0x96 0x3fff
0x97 0x3fff
0x98 0x3ffb
0x99 0x3ffe
0x9a 0x3ffb
0x9b 0x3ffe
0x9c 0x3ffa
0x9d 0x3ffc
0x9e 0x3ff5
0x9f 0x3ff8
0xa0 0x3ffb
0xa1 0x3ff2
0xa2 0x3ffc
0xa3 0x3fff
0xa4 0x22d1
0xa5 0x3fff
0xa6 0x3fff
0xa7 0x3fff
0xa8 0x3fff
0xa9 0x3fff
0xaa 0x3fff
0xab 0x3fff
0xac 0x3fff
0xad 0x3fff
0xae 0x3fff
0xaf 0x3fff
0xb0 0x3fff
0xb1 0x3fff
0xb2 0x3fff
0xb3 0x3fff
0xb4 0x3fff
0xb5 0x3fff
0xb6 0x3fff
0xb7 0x3fff
0xb8 0x3fff
0xb9 0x3fff
0xba 0x3fff
0xbb 0x3fff
0xbc 0x3fff
0xbd 0x3fff
0xbe 0x3fff
0xbf 0x3fff
0xc0 0x3fff
0xc1 0x3fff
0xc2 0x3fff
0xc3 0x3fff
0xc4 0x3fff
0xc5 0x3fff
0xc6 0x3fff
0xc7 0x3fff
0xc8 0x3fff
0xc9 0x3fff
0xca 0x3fff
0xcb 0x3fff
0xcc 0x3fff
0xcd 0x3fff
0xce 0x3fff
0xcf 0x3fff
0xd0 0x3fff
0xd1 0x3fff
0xd2 0x3fff
0xd3 0x3fff
0xd4 0x3fff
0xd5 0x3fff
0xd6 0x3fff
0xd7 0x3fff
0xd8 0x3fff
0xd9 0x3fff
0xda 0x3fff
0xdb 0x3fff
0xdc 0x3fff
0xdd 0x3fff
0xde 0x3fff
0xdf 0x3fff
0xe0 0x3fff
0xe1 0x3fff
0xe2 0x3fff
0xe3 0x3fff
0xe4 0x3fff
0xe5 0x3fff
0xe6 0x3fff
0xe7 0x3fff
0xe8 0x3fff
0xe9 0x3fff
0xea 0x3fff
0xeb 0x3fff
0xec 0x3fff
0xed 0x3fff
0xee 0x3fff
0xef 0x3fff
0xf0 0x3fff
0xf1 0x3fff
0xf2 0x3fff
0xf3 0x3fff
0xf4 0x3fff
0xf5 0x3fff
0xf6 0x3fff
0xf7 0x3fff
0xf8 0x3fff
0xf9 0x3fff
0xfa 0x3fff
0xfb 0x29fb
0xfc 0x3e1b
0xfd 0x3946
0xfe 0x3ff9
0xff 0x4bb
