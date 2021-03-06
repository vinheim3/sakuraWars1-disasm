DEF XCPS_AUTO_INCREMENT = $80
DEF NUM_COLORS = $20
DEF NUM_PALETTE_BYTES = NUM_COLORS * 2
DEF NUM_SPRITES = $28
DEF NUM_ANIM_SPRITE_SPECS = $0c
DEF NUM_SAMPLED_SOUNDS = $6d
DEF NUM_COMMS_REWARDS = $36

; --
; -- Game states
; --

DEF GS_INIT = $00
; DEF GS_STUB = $01
DEF GS_INTRO = $02
DEF GS_MINI_GAMES = $03
DEF GS_IRIS_MINI_GAME_MAIN = $04
DEF GS_CREDITS = $05
DEF GS_SOUND_MODE = $06
DEF GS_SCENERY_IMAGES = $07
DEF GS_EVENT_GALLERY = $08
DEF GS_GIRL_VOICE_SOUNDS = $09
DEF GS_0a = $0a
DEF GS_KANNA_MINI_GAME_MAIN = $0b
DEF GS_SAKURA_MINI_GAME_MAIN = $0c
DEF GS_MARIA_MINI_GAME_MAIN = $0d
DEF GS_SAVE_SCREEN = $0e
DEF GS_GAMEBOY_COMMS = $0f
DEF GS_POCKET_SAKURA_COMMS = $10
DEF GS_TV_COMMS = $11
DEF GS_RESET_DATA = $12
DEF GS_DMG = $13
DEF GS_CINEMATRON = $14
DEF GS_RED_LIGHT_GREEN_LIGHT = $15
DEF GS_ENTER_NAME = $16
DEF GS_SETTINGS = $17
DEF GS_MINI_GAME_RESULTS = $18
DEF GS_PUSH_UPS = $19
DEF GS_MOCK_BATTLE = $1a
DEF GS_KOHRAN_MINI_GAME_TITLE_SCREEN = $1b
DEF GS_IRIS_MINI_GAME_TITLE_SCREEN = $1c
DEF GS_SUMIRE_MINI_GAME_TITLE_SCREEN = $1d
DEF GS_SAKURA_MINI_GAME_TITLE_SCREEN = $1e
DEF GS_KANNA_MINI_GAME_TITLE_SCREEN = $1f
DEF GS_GAME_RESULTS = $20
DEF GS_KANNA_MINI_GAME_HELP_SCREEN = $21
DEF GS_IRIS_MINI_GAME_HELP_SCREEN = $22
DEF GS_23 = $23
DEF GS_MINI_GAME_DEBUG_MENU = $24
DEF GS_KOHRAN_MINI_GAME_MAIN = $25
DEF GS_SUMIRE_MINI_GAME_MAIN = $26
DEF GS_SAKURA_TRAINING = $27
DEF GS_SUMIRE_TRAINING = $28
DEF GS_KOHRAN_TRAINING = $29
DEF GS_IRIS_TRAINING = $2a
DEF GS_KANNA_TRAINING = $2b
DEF GS_MARIA_TRAINING = $2c
DEF GS_NAP = $2d
DEF GS_TRAINING_DEBUG_MENU = $2e
DEF GS_BATTLE = $2f
; DEF GS_SOUND_TEST = $30
DEF GS_SPECIAL_ANIMS_DEBUG_MENU = $31
DEF GS_BATTLE_DEBUG_MENU = $32
DEF GS_PLAYER_SPECIAL_ANIMS = $33
DEF GS_GIRL_SPECIAL_ANIMS = $34
DEF GS_ALT_TITLE_SCREEN = $35
DEF GS_TITLE_SCREEN = $36
DEF GS_TITLE_MENU_SCREEN = $37
DEF GS_DAY_PERIOD_TRANSITION = $38
DEF GS_EXPLORE = $39
DEF GS_ITEMS = $3a
DEF GS_MAIN_CONVO = $3b
DEF GS_FILE_LOAD_DISPLAY = $3c
DEF GS_GIRL_IMAGE = $3d
DEF GS_SCHEDULE = $3e
DEF GS_GAME_OVER = $3f
DEF GS_INVENTORY = $40
DEF GS_TREASURE_CHEST = $41
DEF GS_ROMANDO_SHOP = $42
DEF GS_FLAG_SETTINGS = $43
DEF GS_INTRO_SCRIPT = $44
DEF GS_DORM_ROOM = $45
DEF GS_PRE_TITLE_SCREEN = $46
DEF GS_PROLOGUE = $47
;
DEF GS_DAY_PASSED = $49

; --
; -- Data banks
; --

DEF KANJI_TILE_DATA_BANK = $06
DEF HOURLY_EVENTS_BANK = $40
DEF SCRIPT_DATA_BANK = $41

; --
; -- LCDC int handlers
; --

DEF LCDINT_01 = $01
DEF LCDINT_02 = $02
DEF LCDINT_03 = $03
DEF LCDINT_04 = $04
DEF LCDINT_05 = $05
DEF LCDINT_06 = $06
DEF LCDINT_07 = $07
DEF LCDINT_08 = $08
DEF LCDINT_09 = $09
DEF LCDINT_0a = $0a
DEF LCDINT_0b = $0b
DEF LCDINT_0c = $0c
DEF LCDINT_0d = $0d
DEF LCDINT_0e = $0e
;
DEF LCDINT_10 = $10
DEF LCDINT_11 = $11

; --
; -- Dorm room options
; --

DEF DRO_EXPLORE_DAY = $00
DEF DRO_NAP = $01
; DEF DRO_SCHEDULE = $02
DEF DRO_ITEMS = $03
DEF DRO_OPTIONS = $04
DEF DRO_TRAIN = $05
DEF DRO_EXPLORE_NIGHT = $06
DEF DRO_SAVE = $07
DEF DRO_FOCUS = $08
DEF DRO_EXAM = $09
DEF DRO_SLEEP = $0a

DEF DROS_EXPLORE_DAY_FOCUS_1 = $00
DEF DROS_TRAIN_NAP_1 = $01
DEF DROS_EXPLORE_DAY_FOCUS_2 = $02
DEF DROS_TRAIN_NAP_2 = $03
DEF DROS_EXPLORE_NIGHT = $04
DEF DROS_SAVE_SLEEP = $05
DEF DROS_EXAM = $06

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
; -- Misc instant text
; --

DEF MIT_GIFT_SHOP = $00
DEF MIT_INVENTORY = $01
DEF MIT_KOUBO_DESCRIPTIONS = $02
DEF MIT_ROMANDO_SHOP_CHEST = $03
DEF MIT_DORM_ROOM_OPT_DESCRIPTS = $04

DEF MITINV_EQUIP_UNEQUIP = $1a

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
DEF SG2_SAVE_SCREEN_SAVE_POPUP = $23
DEF SG2_SAVE_SCREEN_LOAD_POPUP = $24
DEF SG2_SAVE_SCREEN_DELETE_POPUP = $25
DEF SG2_SAVE_SCREEN_COPY_POPUP = $26
DEF SG2_ENTER_NAME_SMALL_CURSOR = $3a
DEF SG2_ENTER_NAME_BIG_CURSOR = $3b
DEF SG2_ENTER_NAME_UNDERLINE = $3c

; Sprite group $a
DEF SG_A = $0a
DEF SGA_IRIS_MINIGAME_TITLE_SCREEN = $43
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
DEF ASS_SAVE_SCREEN_SHOW_SAVE_POPUP = $14
DEF ASS_SAVE_SCREEN_SHOW_LOAD_POPUP = $16
DEF ASS_SAVE_SCREEN_SHOW_DELETE_POPUP = $18
DEF ASS_SAVE_SCREEN_SHOW_COPY_POPUP = $1a
DEF ASS_SAVE_SCREEN_SHOW_SAVE_COMPLETE = $1c
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

DEF SMPL_2d = $2d
DEF SMPL_39 = $39
DEF SMPL_45 = $45
DEF SMPL_51 = $51
DEF SMPL_5d = $5d
DEF SMPL_69 = $69

DEF AUD_SWEEP_OR_WAVENA = $10
DEF AUD_LEN = $11
DEF AUD_ENV_OR_WAVLEVEL = $12
DEF AUD_FREQ_LO_OR_NOISE_POLY = $13
DEF AUD_FREQ_HI_OR_NOISE_GO = $14

; --
; -- RPN
; --

DEF RPN_TIMED_ANSWER = $03

; --
; -- Game result ranks
; --

DEF GRR_FLOWER_DIVISION_CAPTAIN = $00
DEF GRR_NOT_A_FAR_OFF_DREAM = $01
DEF GRR_DREAM_DIVISION = $02
DEF GRR_SNOW_DIVISION = $03
DEF GRR_MOON_DIVISION = $04
DEF GRR_WIND_DIVISION = $05
DEF GRR_IDEAL_SCIENTIST = $06
DEF GRR_PERFECT_FOR_ACCOUNTING = $07
DEF GRR_PERFECT_SALES_CLERK = $08
DEF GRR_IDEAL_USHER = $09
DEF GRR_RESULTS_ARE_LACKING = $0a
DEF GRR_FROM_THE_SHADOWS = $0b
DEF GRR_WELL_LIKED = $0c
DEF GRR_COUNTLESS_WORLDS = $0d
DEF GRR_CLEANING_UP_AFTER = $0e

; --
; -- Flags
; --

DEF FLAG1_GAME_BEATEN = $02
DEF FLAG1_SCRIPT_AFTER_GAME_BEATEN = $03
DEF FLAG1_ALL_ENDINGS = $04
DEF FLAG1_SCRIPT_AFTER_ALL_ENDINGS = $05
DEF FLAG1_SAKURA_ENDING = $06
DEF FLAG1_SCRIPT_AFTER_SAKURA_ENDING = $07
DEF FLAG1_SUMIRE_ENDING = $08
DEF FLAG1_SCRIPT_AFTER_SUMIRE_ENDING = $09
DEF FLAG1_MARIA_ENDING = $0a
DEF FLAG1_SCRIPT_AFTER_MARIA_ENDING = $0b
DEF FLAG1_IRIS_ENDING = $0c
DEF FLAG1_SCRIPT_AFTER_IRIS_ENDING = $0d
DEF FLAG1_KOHRAN_ENDING = $0e
DEF FLAG1_SCRIPT_AFTER_KOHRAN_ENDING = $0f
DEF FLAG1_KANNA_ENDING = $10
DEF FLAG1_SCRIPT_AFTER_KANNA_ENDING = $11
DEF FLAG1_OGAMI_ENDING = $12
DEF FLAG1_SCRIPT_AFTER_OGAMI_ENDING = $13
DEF FLAG1_SAKURA_CHEAP_GENERAL_PRICES = $20
DEF FLAG1_SUMIRE_CHEAP_GENERAL_PRICES = $21
DEF FLAG1_MARIA_CHEAP_GENERAL_PRICES = $22
DEF FLAG1_IRIS_CHEAP_GENERAL_PRICES = $23
DEF FLAG1_KOHRAN_CHEAP_GENERAL_PRICES = $24
DEF FLAG1_KANNA_CHEAP_GENERAL_PRICES = $25
DEF FLAG1_SAKURA_CHEAP_EX_MODE_PRICES = $26
DEF FLAG1_SUMIRE_CHEAP_EX_MODE_PRICES = $27
DEF FLAG1_MARIA_CHEAP_EX_MODE_PRICES = $28
DEF FLAG1_IRIS_CHEAP_EX_MODE_PRICES = $29
DEF FLAG1_KOHRAN_CHEAP_EX_MODE_PRICES = $2a
DEF FLAG1_KANNA_CHEAP_EX_MODE_PRICES = $2b
DEF FLAG1_SAKURAS_SCHEDULE = $100 ; references the flags below
DEF FLAG1_SUMIRES_SCHEDULE = $104
DEF FLAG1_MARIAS_SCHEDULE = $108
DEF FLAG1_IRIS_SCHEDULE = $10c
DEF FLAG1_KOHRANS_SCHEDULE = $110
DEF FLAG1_KANNAS_SCHEDULE = $114
DEF FLAG1_SAKURA_EX_MODE = $118
DEF FLAG1_SUMIRE_EX_MODE = $11c
DEF FLAG1_MARIA_EX_MODE = $120
DEF FLAG1_IRIS_EX_MODE = $124
DEF FLAG1_KOHRAN_EX_MODE = $128
DEF FLAG1_KANNA_EX_MODE = $12c
DEF FLAG1_SAKURA_EVENT_GALLERY = $130
DEF FLAG1_SUMIRE_EVENT_GALLERY = $134
DEF FLAG1_MARIA_EVENT_GALLERY = $138
DEF FLAG1_IRIS_EVENT_GALLERY = $13c
DEF FLAG1_KOHRAN_EVENT_GALLERY = $140
DEF FLAG1_KANNA_EVENT_GALLERY = $144
DEF FLAG1_SAKURA_PORTRAIT_GALLERY = $148
DEF FLAG1_SUMIRE_PORTRAIT_GALLERY = $14c
DEF FLAG1_MARIA_PORTRAIT_GALLERY = $150
DEF FLAG1_IRIS_PORTRAIT_GALLERY = $154
DEF FLAG1_KOHRAN_PORTRAIT_GALLERY = $158
DEF FLAG1_KANNA_PORTRAIT_GALLERY = $15c
DEF FLAG1_1000PTS_1 = $160
DEF FLAG1_1000PTS_2 = $161
DEF FLAG1_1000PTS_3 = $162
DEF FLAG1_1000PTS_4 = $163
DEF FLAG1_2500PTS_1 = $164
DEF FLAG1_2500PTS_2 = $165
DEF FLAG1_2500PTS_3 = $166
DEF FLAG1_2500PTS_4 = $167
DEF FLAG1_5000PTS_1 = $168
DEF FLAG1_5000PTS_2 = $169
DEF FLAG1_5000PTS_3 = $16a
DEF FLAG1_5000PTS_4 = $16b
DEF FLAG1_7500PTS_1 = $16c
DEF FLAG1_7500PTS_2 = $16d
DEF FLAG1_7500PTS_3 = $16e
DEF FLAG1_7500PTS_4 = $16f
DEF FLAG1_10KPTS_1 = $170
DEF FLAG1_10KPTS_2 = $171
DEF FLAG1_10KPTS_3 = $172
DEF FLAG1_10KPTS_4 = $173
DEF FLAG1_25KPTS_1 = $174
DEF FLAG1_25KPTS_2 = $175
DEF FLAG1_25KPTS_3 = $176
DEF FLAG1_25KPTS_4 = $177
DEF FLAG1_50KPTS_1 = $178
DEF FLAG1_50KPTS_2 = $179
DEF FLAG1_50KPTS_3 = $17a
DEF FLAG1_50KPTS_4 = $17b
DEF FLAG1_65535PTS_1 = $17c
DEF FLAG1_65535PTS_2 = $17d
DEF FLAG1_65535PTS_3 = $17e
DEF FLAG1_65535PTS_4 = $17f
DEF FLAG1_PETAL_CURSOR = $188
DEF FLAG1_CANDY_CURSOR = $18c
DEF FLAG1_NAMEPLATE = $190
DEF FLAG1_SAKURA_PHOTO = $194
DEF FLAG1_SUMIRE_PHOTO = $198
DEF FLAG1_MARIA_PHOTO = $19c
DEF FLAG1_IRIS_PHOTO = $1a0
DEF FLAG1_KOHRAN_PHOTO = $1a4
DEF FLAG1_KANNA_PHOTO = $1a8
DEF FLAG1_ORIHIME_PHOTO = $1ac
DEF FLAG1_RENI_PHOTO = $1b0
DEF FLAG1_MUSIC_COLLECTION = $1bc
DEF FLAG1_SOUND_EFFECT_COLLECTION = $1c0
DEF FLAG1_SAKURA_VOICES = $1c4
DEF FLAG1_SUMIRE_VOICES = $1c8
DEF FLAG1_MARIA_VOICES = $1cc
DEF FLAG1_IRIS_VOICES = $1d0
DEF FLAG1_KOHRAN_VOICES = $1d4
DEF FLAG1_KANNA_VOICES = $1d8
DEF FLAG1_RECOVERY_DRINK = $1dc
DEF FLAG1_MISC_EVENT_GALLERY = $1e0
DEF FLAG1_MISC_PORTRAIT_GALLERY = $1e4
DEF FLAG1_RING_OF_REV = $1e8
DEF FLAG1_MYSTERY_CHARM = $1ec
DEF FLAG1_GUTS_HEADBAND = $1f0
DEF FLAG1_LIGHT_SHOES = $1f4
DEF FLAG1_CLEAR_LENS = $1f8
DEF FLAG1_RED_LIGHT_GREEN_LIGHT = $1fc
DEF FLAG1_PUSH_UPS = $200
DEF FLAG1_ITEM_INDEX = $204
DEF FLAG1_MOCK_BATTLE = $208

DEF SRAM2_DUMMY_AFFECTION = $10 ; references the affection vals after
DEF SRAM2_SAKURA_AFFECTION = $11
DEF SRAM2_SUMIRE_AFFECTION = $12
DEF SRAM2_MARIA_AFFECTION = $13
DEF SRAM2_IRIS_AFFECTION = $14
DEF SRAM2_KOHRAN_AFFECTION = $15
DEF SRAM2_KANNA_AFFECTION = $16
DEF SRAM2_STAMINA = $20 ; references the other vars below
DEF SRAM2_INTELLECT = $21
DEF SRAM2_SPIRIT_POWER = $22
DEF SRAM2_GUTS = $23
DEF SRAM2_SPEED = $24
DEF SRAM2_ACCURACY = $25
DEF SRAM2_TRAINING_MON = $31 ; references the other vars below
DEF SRAM2_TRAINING_TUE = $32
DEF SRAM2_TRAINING_WED = $33
DEF SRAM2_TRAINING_THU = $34
DEF SRAM2_TRAINING_FRI = $35
DEF SRAM2_VICTORY_FLAG = $55
DEF SRAM2_TEST_POINT = $60
DEF SRAM2_GROWTH_SAKURA = $e0 ; references the other girls growth after
DEF SRAM2_ARGUMENT_1 = $fa
DEF SRAM2_ARGUMENT_2 = $fb
DEF SRAM2_HINT_ICON1 = $fc
DEF SRAM2_HINT_ICON2 = $fd

DEF FLAG2_PEEPING = $06
DEF FLAG2_SAKURA_PHOTO = $94
DEF FLAG2_SUMIRE_PHOTO = $95
DEF FLAG2_MARIA_PHOTO = $96
DEF FLAG2_IRIS_PHOTO = $97
DEF FLAG2_KOHRAN_PHOTO = $98
DEF FLAG2_KANNA_PHOTO = $99
DEF FLAG2_TSUBAKI_CONVO_6 = $a1
DEF FLAG2_OFFICE_WEEK_1_YURI = $a5
DEF FLAG2_OFFICE_WEEK_2_KASUMI = $a7
DEF FLAG2_OFFICE_WEEK_3_YURI = $ac
DEF FLAG2_OFFICE_WEEK_4_KASUMI = $b2
DEF FLAG2_SPECIAL_MOVE_SAKURA = $cc
DEF FLAG2_SPECIAL_MOVE_SUMIRE = $cd
DEF FLAG2_SPECIAL_MOVE_MARIA = $ce
DEF FLAG2_SPECIAL_MOVE_IRIS = $cf
DEF FLAG2_SPECIAL_MOVE_KOHRAN = $d0
DEF FLAG2_SPECIAL_MOVE_KANNA = $d1
DEF FLAG2_FINAL_BATTLE = $d2
DEF FLAG2_NAMEPLATE = $d3
DEF FLAG2_PUSH_UPS_TRAINING = $d7
DEF FLAG2_RED_LIGHT_GREEN_LIGHT_TRAINING = $d8
DEF FLAG2_RECOVERY_DRINK = $f0
DEF FLAG2_RING_OF_REVELATION = $f1
DEF FLAG2_MYSTERIOUS_CHARM = $f2
DEF FLAG2_GUTS_HEADBAND = $f3
DEF FLAG2_LIGHT_SHOES = $f4
DEF FLAG2_CLEAR_LENS = $f5
DEF FLAG2_ITEM_EQUIPPED_START = $f6 ; references flags after

; --
; -- Comms rewards
; --

DEF CR_PETAL_CURSOR = $01
DEF CR_RING_OF_REV = $02
DEF CR_MYSTERY_CHARM = $03
DEF CR_GUTS_HEADBAND = $04
DEF CR_LIGHT_SHOES = $05
DEF CR_CLEAR_LENS = $06
DEF CR_CANDY_CURSOR = $07
DEF CR_SAKURA_PORTRAIT_GALLERY = $08
DEF CR_SUMIRE_PORTRAIT_GALLERY = $09
DEF CR_MARIA_PORTRAIT_GALLERY = $0a
DEF CR_IRIS_PORTRAIT_GALLERY = $0b
DEF CR_KOHRAN_PORTRAIT_GALLERY = $0c
DEF CR_KANNA_PORTRAIT_GALLERY = $0d
DEF CR_SAKURA_EX_MODE = $0e
DEF CR_SUMIRE_EX_MODE = $0f
DEF CR_MARIA_EX_MODE = $10
DEF CR_IRIS_EX_MODE = $11
DEF CR_KOHRAN_EX_MODE = $12
DEF CR_KANNA_EX_MODE = $13
DEF CR_ORIHIME_PHOTO = $14
DEF CR_RENI_PHOTO = $15

; --
; -- Scripts
; --

DEF SCR_SAVE_DATA_CHECK = $003
DEF SCR_THANKS_FOR_PLAYING_PATCH = $005
DEF SCR_GAME_BEAT = $10

; --
; -- Misc
; --

DEF RESET_DATA_YES_X = $2c
if def(VWF)
DEF RESET_DATA_NO_X = $54
else
DEF RESET_DATA_NO_X = $4c
endc

DEF ENTER_NAME_HIRA_KATA_COL = $00
DEF ENTER_NAME_ENGLISH_COL = $04
DEF ENTER_NAME_DELETE_COL = $08
DEF ENTER_NAME_SUBMIT_COL = $0f

DEF ENTER_NAME_HIRA_ALPHABET = $00
DEF ENTER_NAME_KATA_ALPHABET = $01
DEF ENTER_NAME_EN_ALPHABET = $02

DEF ENTER_NAME_SELECTABLE_LETTERS_COLS = $11