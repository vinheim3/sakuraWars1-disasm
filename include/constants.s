DEF XCPS_AUTO_INCREMENT = $80
DEF NUM_COLORS = $20
DEF NUM_PALETTE_BYTES = NUM_COLORS * 2
DEF NUM_SPRITES = $28
DEF NUM_ANIM_SPRITE_SPECS = $0c

; --
; -- Game states
; --

DEF GS_INIT = $00
DEF GS_INTRO = $02
DEF GS_MINI_GAMES = $03
DEF GS_SAVE_SCREEN = $0e
DEF GS_RESET_DATA = $12
DEF GS_DMG = $13
DEF GS_CINEMATRON = $14
DEF GS_ENTER_NAME = $16
DEF GS_SETTINGS = $17
; 27 - minigame when slicing away fruits
; 2d - napping state
DEF GS_BATTLE = $2f
DEF GS_TITLE_SCREEN = $36
DEF GS_TITLE_MENU_SCREEN = $37
; 38 - some kind of day/period transition decider
DEF GS_MAIN_CONVO = $3b
DEF GS_FILE_LOAD_DISPLAY = $3c
DEF GS_TREASURE_CHEST = $41
DEF GS_44 = $44
DEF GS_DORM_ROOM = $45
DEF GS_46 = $46
DEF GS_PROLOGUE = $47
DEF GS_DAY_PASSED = $49

; --
; -- Data banks
; --

DEF KANJI_TILE_DATA_BANK = $06
DEF SCRIPT_DATA_BANK = $41

; --
; -- LCDC int handlers
; --

DEF LCDINT_0a = $0a

; --
; -- Script opts
; --

DEF SO_00 = $00
DEF SO_02 = $02
DEF SO_03 = $03
DEF SO_CLEAR_TEXT_BOX = $08
DEF SO_SET_DELAY = $09
DEF SO_SET_CHAR_ON_SCREEN = $0d
DEF SO_LOAD_SCENERY = $0e
DEF SO_SET_PORTRAIT = $0f
DEF SO_16 = $16
DEF SO_1b = $1b
DEF SO_1d = $1d
DEF SO_33 = $33
DEF SO_PRE_SPECIFIED_DELAY = $34

; --
; -- Kanji text styles
; --

DEF KTS_BLACK_ON_WHITE = $03

; --
; -- Time of day
; --

DEF TOD_MORNING = $00
DEF TOD_NOON = $01
DEF TOD_NIGHT = $02

; --
; -- Player name replacements
; --

;
DEF PNR_10 = $10
DEF PNR_11 = $11
DEF PNR_HIRAGANA = $12
DEF PNR_KATAKANA = $13
;
DEF PNR_16 = $16
DEF PNR_17 = $17
DEF PNR_18 = $18
DEF PNR_19 = $19
DEF PNR_1a = $1a
DEF PNR_1b = $1b
DEF PNR_1c = $1c
DEF PNR_1d = $1d
DEF PNR_1e = $1e
DEF PNR_1f = $1f
DEF PNR_20 = $20
DEF PNR_21 = $21
DEF PNR_UPPER_CASE_VOWELS = $22
DEF PNR_UPPER_CASE_CONSONANTS = $23
DEF PNR_LOWER_CASE_VOWELS = $24
DEF PNR_LOWER_CASE_CONSONANTS = $25
DEF PNR_NUMBERS = $26

; --
; -- Sprite idxes
; --

; Sprite group $1
DEF SG_1 = $01
DEF SG1_FILE_LOAD_DISPLAY_SUNDAY = $82

; Sprite group $2
DEF SG_2 = $02
DEF SG2_ENTER_NAME_SMALL_CURSOR = $3a
DEF SG2_ENTER_NAME_BIG_CURSOR = $3b
DEF SG2_ENTER_NAME_UNDERLINE = $3c

; Sprite group $a
DEF SG_A = $0a
DEF SGA_SAKURA_IN_MINIGAME_TITLE_SCREEN_1 = $47
DEF SGA_SAKURA_IN_MINIGAME_TITLE_SCREEN_2 = $48

; Sprite group $b
DEF SG_B = $0b
DEF SGB_MEDIA = $02
DEF SGB_FACTORY = $03
DEF SGB_JUPITER1 = $6c
DEF SGB_JUPITER2 = $6d
DEF SGB_JUPITER3 = $6e
DEF SGB_JUPITER4 = $6f
DEF SGB_JUPITER5 = $70

; Sprite group $c
DEF SG_C = $0c
DEF SGC_DORM_ROOM_DAY = $1e
DEF SGC_DORM_ROOM_0 = $1f
DEF SGC_DORM_ROOM_SUNDAY = $29
DEF SGC_DORM_ROOM_MORNING = $30
DEF SGC_TITLE_SCREEN_LOGO = $4f
DEF SGC_TITLE_SCREEN_GIRL_HAIR1 = $50
DEF SGC_TITLE_SCREEN_GIRL_HAIR2 = $51
DEF SGC_TITLE_SCREEN_GIRL_HAIR3 = $52
DEF SGC_TITLE_SCREEN_GIRL_HAIR4 = $53
DEF SGC_TITLE_SCREEN_GIRL_EYES1 = $54
DEF SGC_TITLE_SCREEN_GIRL_EYES2 = $55
DEF SGC_TITLE_SCREEN_GIRL_EYES3 = $56

; --
; -- Animated sprite specs
; --

DEF ASS_SAVE_SCREEN_POPUP_YES_SELECTED = $0f
DEF ASS_SAVE_SCREEN_POPUP_NO_SELECTED = $10
DEF ASS_SAVE_SCREEN_POPUP_LOAD = $16
DEF ASS_MENU_CURSOR = $1f
DEF ASS_ENTER_NAME_SMALL_CURSOR = $2d
DEF ASS_ENTER_NAME_BIG_CURSOR = $2e
DEF ASS_ENTER_NAME_UNDERLINE = $2f

DEF ASST_0 = $00
DEF ASST_1 = $01

; --
; -- Sound
; --

DEF SONG_01 = $01
DEF SONG_11 = $11
DEF SONG_14 = $14

DEF SE_20 = $20
DEF SE_21 = $21
DEF SE_22 = $22
DEF SE_23 = $23

; --
; -- Misc
; --

DEF RESET_DATA_YES_X = $2c
DEF RESET_DATA_NO_X = $4c

DEF ENTER_NAME_HIRA_KATA_COL = $00
DEF ENTER_NAME_ENGLISH_COL = $04
DEF ENTER_NAME_DELETE_COL = $08
DEF ENTER_NAME_SUBMIT_COL = $0f

DEF ENTER_NAME_HIRA_ALPHABET = $00
DEF ENTER_NAME_KATA_ALPHABET = $01
DEF ENTER_NAME_EN_ALPHABET = $02

DEF ENTER_NAME_SELECTABLE_LETTERS_COLS = $11