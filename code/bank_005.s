; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $005", ROMX[$4000], BANK[$5]

AlterPlayerNameIntoWram::
; Load player name from save data
	ld   de, wPlayerName                                            ; $4000
	ld   hl, sPlayerName                                            ; $4003
	ld   bc, $0006                                                  ; $4006
	call MemCopy                                                    ; $4009
	
; Copy name 2nd letter to before player name (for special cases checking previous letter)
	ld   a, [wPlayerName+1]                                         ; $400c
	ld   [wPlayerName-1], a                                         ; $400f

; Set random num range up to player name's length
	ld   hl, wPlayerName                                            ; $4012
	call GetNumCharsInWord                                          ; $4015
	ld   [wRandomNumRange], a                                       ; $4018

; BC = random idx within player name
	call GetRandomNumInPreSpecifiedRange                            ; $401b
	ld   b, $00                                                     ; $401e
	ld   c, a                                                       ; $4020

; Try to character replace 5 times
	ld   hl, wPlayerName                                            ; $4021
	add  hl, bc                                                     ; $4024
	ld   d, $05                                                     ; $4025

.nextChar:
; When null terminator found, loop through name again
	ld   a, [hl]                                                    ; $4027
	or   a                                                          ; $4028
	jr   nz, .afterNullCheck                                        ; $4029

	ld   hl, wPlayerName                                            ; $402b
	jr   .nextChar                                                  ; $402e

.afterNullCheck:
; Check if char is in normal selectable chars, and jump if found
	push hl                                                         ; $4030
	call CheckIfCharInKanasEnAlphabetOrNums                         ; $4031
	pop  hl                                                         ; $4034

	bit  7, a                                                       ; $4035
	jr   z, .normalSelectableCharFound                              ; $4037

; Else try to replace next character
	inc  hl                                                         ; $4039
	dec  d                                                          ; $403a
	jr   nz, .nextChar                                              ; $403b

; If 5 attemps made, and we couldn't replace a char,
; HL points to a replacement list offset with idx 0-7
	ld   a, $08                                                     ; $403d
	ld   [wRandomNumRange], a                                       ; $403f
	call GetRandomNumInPreSpecifiedRange                            ; $4042
	ld   b, $00                                                     ; $4045
	ld   c, a                                                       ; $4047
	ld   hl, PlayerNameReplacements                                 ; $4048
	add  hl, bc                                                     ; $404b
	add  hl, bc                                                     ; $404c

; HL = address of that replacement list
	ld   a, [hl+]                                                   ; $404d
	ld   b, [hl]                                                    ; $404e
	ld   c, a                                                       ; $404f
	ld   hl, PlayerNameReplacements                                 ; $4050
	add  hl, bc                                                     ; $4053

; Copy the characters there to player's name
	ld   de, wPlayerName                                            ; $4054
	ld   bc, $0006                                                  ; $4057
	call MemCopy                                                    ; $405a
	ret                                                             ; $405d

.normalSelectableCharFound:
; Jump to a handler based on which character was found
	ld   a, [hl]                                                    ; $405e
	call GetIndexOfCharInSpecialList                                ; $405f
	bit  7, a                                                       ; $4062
	jp   z, SpecialCharFoundInName                                  ; $4064

	ld   a, [hl]                                                    ; $4067
	call GetIndexOfCharInHiragana                                   ; $4068
	bit  7, a                                                       ; $406b
	jp   z, HiraganaFoundInName                                     ; $406d

	ld   a, [hl]                                                    ; $4070
	call GetIndexOfCharInKatakana                                   ; $4071
	bit  7, a                                                       ; $4074
	jp   z, KatakanaFoundInName                                     ; $4076

	ld   a, [hl]                                                    ; $4079
	call GetIndexOfCharInUpperCaseVowelsOrConsonants                ; $407a
	bit  7, a                                                       ; $407d
	jp   z, UpperCaseFoundInName                                    ; $407f

	ld   a, [hl]                                                    ; $4082
	call GetIndexOfCharInLowerCaseVowelsOrConsonants                ; $4083
	bit  7, a                                                       ; $4086
	jp   z, LowerCaseFoundInName                                    ; $4088

	jp   NumberFoundInName                                          ; $408b


; A - table idx of player name replacement
HLequAddrOfPlayerNameReplacement:
; HL = double idx into table below
	push bc                                                         ; $408e
	ld   b, $00                                                     ; $408f
	ld   c, a                                                       ; $4091
	ld   hl, PlayerNameReplacements                                 ; $4092
	add  hl, bc                                                     ; $4095
	add  hl, bc                                                     ; $4096

; Get value in BC
	ld   a, [hl+]                                                   ; $4097
	ld   b, [hl]                                                    ; $4098
	ld   c, a                                                       ; $4099

; Add offset onto HL
	ld   hl, PlayerNameReplacements                                 ; $409a
	add  hl, bc                                                     ; $409d
	pop  bc                                                         ; $409e
	ret                                                             ; $409f


PlayerNameReplacements:
	dw .entry00-PlayerNameReplacements
	dw .entry01-PlayerNameReplacements
	dw .entry02-PlayerNameReplacements
	dw .entry03-PlayerNameReplacements
	dw .entry04-PlayerNameReplacements
	dw .entry05-PlayerNameReplacements
	dw .entry06-PlayerNameReplacements
	dw .entry07-PlayerNameReplacements
	dw .entry08-PlayerNameReplacements
	dw .entry09-PlayerNameReplacements
	dw .entry0a-PlayerNameReplacements
	dw .entry0b-PlayerNameReplacements
	dw .entry0c-PlayerNameReplacements
	dw .entry0d-PlayerNameReplacements
	dw .entry0e-PlayerNameReplacements
	dw .entry0f-PlayerNameReplacements
	dw .entry10-PlayerNameReplacements
	dw .entry11-PlayerNameReplacements
	dw .entry12-PlayerNameReplacements
	dw .entry13-PlayerNameReplacements
	dw .entry14-PlayerNameReplacements
	dw .entry15-PlayerNameReplacements
	dw .entry16-PlayerNameReplacements
	dw .entry17-PlayerNameReplacements
	dw .entry18-PlayerNameReplacements
	dw .entry19-PlayerNameReplacements
	dw .entry1a-PlayerNameReplacements
	dw .entry1b-PlayerNameReplacements
	dw .entry1c-PlayerNameReplacements
	dw .entry1d-PlayerNameReplacements
	dw .entry1e-PlayerNameReplacements
	dw .entry1f-PlayerNameReplacements
	dw .entry20-PlayerNameReplacements
	dw .entry21-PlayerNameReplacements
	dw .entry22-PlayerNameReplacements
	dw .entry23-PlayerNameReplacements
	dw .entry24-PlayerNameReplacements
	dw .entry25-PlayerNameReplacements
	dw .entry26-PlayerNameReplacements

.entry00:
; シシド
	db $b8, $b8, $ca, $00
.entry01:
; ヤマシロ
	db $e6, $df, $b8, $ef, $00
.entry02:
; チバ
	db $c2, $d1, $00
.entry03:
; カジ
	db $ac, $b9, $00
.entry04:
; ヤマモト
	db $e6, $df, $e4, $c9, $00
.entry05:
; タクゾウ
	db $c0, $b0, $bf, $a7, $00
.entry06:
; アカギ
	db $a3, $ac, $af, $00
.entry07:
; クニエ
	db $b0, $cc, $a9, $00
.entry08:
; たかみね
	db $6d, $59, $8d, $7b, $00
.entry09:
; クラ
	db $b0, $eb, $00
.entry0a:
; お父
	db $58, $04, $2e, $00
.entry0b:
; 電波
	db $03, $e4, $05, $55, $00
.entry0c:
; 一休
	db $02, $20, $03, $a7, $00
.entry0d:
; かんごふ
	db $59, $a1, $62, $83, $00
.entry0e:
; 太陽は
	db $04, $23, $06, $2b, $7d, $00
.entry0f:
; こっくり
	db $61, $71, $5d, $98, $00
.entry10:
; NnHhYyんぁぃぅぇぉっゃゅょゎンァィゥェォッャュョヮ
	db $28, $42, $22, $3c, $33, $4d, $a1, $4f, $51, $53, $55, $57, $71, $91, $93, $95, $9c, $f5, $a2, $a4, $a6, $a8, $aa, $c4, $e5, $e7, $e9, $f0, $00
.entry11:
; NnYyHhむあいうえおつやゆよわムアイウエオツヤユヨワ
	db $28, $42, $33, $4d, $22, $3c, $8e, $50, $52, $54, $56, $58, $72, $92, $94, $96, $9d, $e2, $a3, $a5, $a7, $a9, $ab, $c5, $e6, $e8, $ea, $f1, $00
.entry12:
; あいうえおかきくけこさしすせそたちつてとなにぬねのはひふへほまみむめもやゆよらりるれろわをんがぎぐげござじずぜぞだぢづでどばびぶべぼぱぴぷぺぽぁぃぅぇぉっゃゅょゎ
	db $50, $52, $54, $56, $58, $59, $5b, $5d, $5f, $61, $63, $65, $67, $69, $6b, $6d, $6f, $72, $74, $76, $78, $79, $7a, $7b, $7c, $7d, $80, $83, $86, $89, $8c, $8d, $8e, $8f, $90, $92, $94, $96, $97, $98, $99, $9a, $9b, $9d, $a0, $a1, $5a, $5c, $5e, $60, $62, $64, $66, $68, $6a, $6c, $6e, $70, $73, $75, $77, $7e, $81, $84, $87, $8a, $7f, $82, $85, $88, $8b, $4f, $51, $53, $55, $57, $71, $91, $93, $95, $9c, $00
.entry13:
; アイウエオカキクケコサシスセソタチツテトナニヌネノハヒフヘホマミムメモヤユヨラリルレロワヲンヶヴガギグゲゴザジズゼゾダチヅデドバビブベボパピプペポァィゥェォヵッャュョヮ
	db $a3, $a5, $a7, $a9, $ab, $ac, $ae, $b0, $b2, $b4, $b6, $b8, $ba, $bc, $be, $c0, $c2, $c5, $c7, $c9, $cb, $cc, $cd, $ce, $cf, $d0, $d3, $d6, $d9, $dc, $df, $e0, $e2, $e3, $e4, $e6, $e8, $ea, $eb, $ec, $ed, $ee, $ef, $f1, $f4, $f5, $f8, $f6, $ad, $af, $b1, $b3, $b5, $b7, $b9, $bb, $bd, $bf, $c1, $c2, $c6, $c8, $ca, $d1, $d4, $d7, $da, $dd, $d2, $d5, $d8, $db, $de, $a2, $a4, $a6, $a8, $aa, $f7, $c4, $e5, $e7, $e9, $f0, $00
.entry14:
; ABCDEFGHIJKLMNOPQRSTUVWXYZ
	db $1b, $1c, $1d, $1e, $1f, $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $2a, $2b, $2c, $2d, $2e, $2f, $30, $31, $32, $33, $34, $00
.entry15:
; abcdefghijklmnopqrstuvwxyz
	db $35, $36, $37, $38, $39, $3a, $3b, $3c, $3d, $3e, $3f, $40, $41, $42, $43, $44, $45, $46, $47, $48, $49, $4a, $4b, $4c, $4d, $4e, $00
.entry16:
; あいうえお
	db $50, $52, $54, $56, $58, $00
.entry17:
; かさたなはまやらわがざだばぱ
	db $59, $63, $6d, $78, $7d, $8c, $92, $97, $9d, $5a, $64, $6e, $7e, $7f, $00
.entry18:
; きしちにひみりぎじぢびぴ
	db $5b, $65, $6f, $79, $80, $8d, $98, $5c, $66, $70, $81, $82, $00
.entry19:
; くすつぬふむゆるぐずづぶぷ
	db $5d, $67, $72, $7a, $83, $8e, $94, $99, $5e, $68, $73, $84, $85, $00
.entry1a:
; けせてねへめれげぜでべぺ
	db $5f, $69, $74, $7b, $86, $8f, $9a, $60, $6a, $75, $87, $88, $00
.entry1b:
; こそとのほもよろをごぞどぼぽ
	db $61, $6b, $76, $7c, $89, $90, $96, $9b, $a0, $62, $6c, $77, $8a, $8b, $00
.entry1c:
; アイウエオ
	db $a3, $a5, $a7, $a9, $ab, $00
.entry1d:
; カサタナハマヤラワガザダバパ
	db $ac, $b6, $c0, $cb, $d0, $df, $e6, $eb, $f1, $ad, $b7, $c1, $d1, $d2, $00
.entry1e:
; キシチニヒミリギジヂビピ
	db $ae, $b8, $c2, $cc, $d3, $e0, $ec, $af, $b9, $c3, $d4, $d5, $00
.entry1f:
; クスツヌフムユルヴグズヅブプ
	db $b0, $ba, $c5, $cd, $d6, $e2, $e8, $ed, $f6, $b1, $bb, $c6, $d7, $d8, $00
.entry20:
; ケセテネヘメレゲゼデベペ
	db $b2, $bc, $c7, $ce, $d9, $e3, $ee, $b3, $bd, $c8, $da, $db, $00
.entry21:
; コソトノホモヨロヲゴゾドボポ
	db $b4, $be, $c9, $cf, $dc, $e4, $ea, $ef, $f4, $b5, $bf, $ca, $dd, $de, $00
.entry22:
; AIUEO
	db $1b, $23, $2f, $1f, $29, $00
.entry23:
; BCDFGHJKLMNPQRSTVWXYZ
	db $1c, $1d, $1e, $20, $21, $22, $24, $25, $26, $27, $28, $2a, $2b, $2c, $2d, $2e, $30, $31, $32, $33, $34, $00
.entry24:
; aiueo
	db $35, $3d, $49, $39, $43, $00
.entry25:
; bcdfghjklmnpqrstvwxyz
	db $36, $37, $38, $3a, $3b, $3c, $3e, $3f, $40, $41, $42, $44, $45, $46, $47, $48, $4a, $4b, $4c, $4d, $4e, $00
.entry26:
; 0123456789
	db $11, $12, $13, $14, $15, $16, $17, $18, $19, $1a, $00


; A - idx into replacement list $10 where we found our char
; HL - pointer to current player name char to replace
SpecialCharFoundInName:
; Jump if NnHhYy
	cp   $06                                                        ; $4328
	jr   c, .english                                                ; $432a

; If hiragana, or katakana, HL = hira/kata idx in list $10, idxed into list $11
	push hl                                                         ; $432c
	ld   b, $00                                                     ; $432d
	ld   c, a                                                       ; $432f
	ld   a, PNR_11                                                  ; $4330
	call HLequAddrOfPlayerNameReplacement                           ; $4332
	add  hl, bc                                                     ; $4335
	ld   a, [hl]                                                    ; $4336
	pop  hl                                                         ; $4337
	ld   [hl], a                                                    ; $4338
	ret                                                             ; $4339

.english:
	push af                                                         ; $433a
	push hl                                                         ; $433b

; HL = en idx in list $10, double idxed into below table
	ld   b, $00                                                     ; $433c
	ld   c, a                                                       ; $433e
	ld   hl, .enTable                                               ; $433f
	add  hl, bc                                                     ; $4342
	add  hl, bc                                                     ; $4343

; BC = address in table
	ld   a, [hl+]                                                   ; $4344
	ld   b, [hl]                                                    ; $4345
	ld   c, a                                                       ; $4346

; Restore regs, and push bc to ret to
	pop  hl                                                         ; $4347
	pop  af                                                         ; $4348
	push bc                                                         ; $4349
	ret                                                             ; $434a

.enTable:
	dw .replace_N
	dw .replace_n
	dw .replace_Y
	dw .replace_y
	dw .replace_H
	dw .replace_h

.replace_N:
; A = character after N
	push hl                                                         ; $4357
	inc  hl                                                         ; $4358
	ld   a, [hl]                                                    ; $4359
	pop  hl                                                         ; $435a

; If the character after N is not a consonant, replace N with an upper case letter
	call GetIndexOfCharInUpperThenLowerCaseConsonants               ; $435b
	bit  7, a                                                       ; $435e
	jp   nz, UpperCaseFoundInName                                   ; $4360

; Else if it is <consonant>/N, replace N with an upper case vowel
	ld   de, .dataReplace_N                                         ; $4363
	jp   ReplacePlayerNameCharGivenReplacementLists                 ; $4366

; Unused
	ret                                                             ; $4369

.replace_n:
; A = character after N
	push hl                                                         ; $436a
	inc  hl                                                         ; $436b
	ld   a, [hl]                                                    ; $436c
	pop  hl                                                         ; $436d

; If the character after n is not a consonant, replace n with an lower case letter
	call GetIndexOfCharInUpperThenLowerCaseConsonants               ; $436e
	bit  7, a                                                       ; $4371
	jp   nz, LowerCaseFoundInName                                   ; $4373

; Else if it is <consonant>/n, replace n with an lower case vowel
	ld   de, .dataReplace_n                                         ; $4376
	jp   ReplacePlayerNameCharGivenReplacementLists                 ; $4379

.replace_Y:
.replace_H:
; A = character before Y or H
	push hl                                                         ; $437c
	dec  hl                                                         ; $437d
	ld   a, [hl]                                                    ; $437e
	pop  hl                                                         ; $437f

; If the character before Y/H is not a consonant, replace Y/H with an upper case letter
	call GetIndexOfCharInUpperThenLowerCaseConsonants               ; $4380
	bit  7, a                                                       ; $4383
	jp   nz, UpperCaseFoundInName                                   ; $4385

; A = character after Y or H
	push hl                                                         ; $4388
	inc  hl                                                         ; $4389
	ld   a, [hl]                                                    ; $438a
	pop  hl                                                         ; $438b

; If the character after Y/H is not a vowel, replace Y/H with an upper case letter
	call GetIndexOfCharInUpperThenLowerCaseVowels                   ; $438c
	bit  7, a                                                       ; $438f
	jp   nz, UpperCaseFoundInName                                   ; $4391

; <consonant>/<Y/H>/<vowel>, A = idx of eiter Y/H in the special list
	ld   a, [hl]                                                    ; $4394
	push hl                                                         ; $4395
	ld   h, PNR_10                                                  ; $4396
	ld   l, a                                                       ; $4398
	call GetIndexOfCharInPlayerNameReplacement                      ; $4399

; HL points to the associated replacement in the special case replacement list
	ld   b, $00                                                     ; $439c
	ld   c, a                                                       ; $439e
	ld   a, PNR_11                                                  ; $439f
	call HLequAddrOfPlayerNameReplacement                           ; $43a1
	add  hl, bc                                                     ; $43a4

; Get that replacement, and replace the curr player's char
	ld   a, [hl]                                                    ; $43a5
	pop  hl                                                         ; $43a6
	ld   [hl], a                                                    ; $43a7
	ret                                                             ; $43a8

.replace_y:
.replace_h:
; A = character before y or h
	push hl                                                         ; $43a9
	dec  hl                                                         ; $43aa
	ld   a, [hl]                                                    ; $43ab
	pop  hl                                                         ; $43ac

; If the character before y/h is not a consonant, replace y/h with an lower case letter
	call GetIndexOfCharInUpperThenLowerCaseConsonants               ; $43ad
	bit  7, a                                                       ; $43b0
	jp   nz, LowerCaseFoundInName                                   ; $43b2

; A = character after y or h
	push hl                                                         ; $43b5
	inc  hl                                                         ; $43b6
	ld   a, [hl]                                                    ; $43b7
	pop  hl                                                         ; $43b8

; If the character after y/h is not a vowel, replace y/h with an lower case letter
	call GetIndexOfCharInUpperThenLowerCaseVowels                   ; $43b9
	bit  7, a                                                       ; $43bc
	jp   nz, LowerCaseFoundInName                                   ; $43be

; <consonant>/<y/h>/<vowel>, A = idx of eiter y/h in the special list
	ld   a, [hl]                                                    ; $43c1
	push hl                                                         ; $43c2
	ld   h, PNR_10                                                  ; $43c3
	ld   l, a                                                       ; $43c5
	call GetIndexOfCharInPlayerNameReplacement                      ; $43c6

; HL points to the associated replacement in the special case replacement list
	ld   b, $00                                                     ; $43c9
	ld   c, a                                                       ; $43cb
	ld   a, PNR_11                                                  ; $43cc
	call HLequAddrOfPlayerNameReplacement                           ; $43ce
	add  hl, bc                                                     ; $43d1

; Get that replacement, and replace the curr player's char
	ld   a, [hl]                                                    ; $43d2
	pop  hl                                                         ; $43d3
	ld   [hl], a                                                    ; $43d4
	ret                                                             ; $43d5

.dataReplace_N:
	db $01
	db PNR_UPPER_CASE_VOWELS

.dataReplace_n:
	db $01
	db PNR_LOWER_CASE_VOWELS


; HL - pointer to current player name char to replace
HiraganaFoundInName:
	ld   de, .data                                                  ; $43da
	jr   ReplacePlayerNameCharGivenReplacementLists                 ; $43dd

.data:
	db $06
	db PNR_16
	db PNR_17
	db PNR_18
	db PNR_19
	db PNR_1a
	db PNR_1b


; DE - address of data containing num replacement lists + their idxes
; HL - pointer to current player name char to replace
ReplacePlayerNameCharGivenReplacementLists:
	ld   a, [de]                                                    ; $43e6

.nextReplacementList:
; Push idx into given list of replacement lists
	push af                                                         ; $43e7
	push hl                                                         ; $43e8

; BC = idx in data bytes from num bytes down to 0
	ld   b, $00                                                     ; $43e9
	ld   c, a                                                       ; $43eb

; A = player namme char to replace (put in L later)
	ld   a, [hl]                                                    ; $43ec

; HL = byte pointed to from BC (from last data byte to 1st)
	ld   h, d                                                       ; $43ed
	ld   l, e                                                       ; $43ee
	add  hl, bc                                                     ; $43ef

; H = byte in table, L = player name char to replace, save both in ram
	ld   b, [hl]                                                    ; $43f0
	ld   h, b                                                       ; $43f1
	ld   l, a                                                       ; $43f2
	ld   [wNameReplacementCharToReplace], a                         ; $43f3
	ld   a, b                                                       ; $43f6
	ld   [wNameReplacementCurrReplacementListIdx], a                ; $43f7

; Jupm if player name char not found, else continue
	call GetIndexOfCharInPlayerNameReplacement                      ; $43fa
	bit  7, a                                                       ; $43fd
	jr   nz, .toNextReplacementList                                 ; $43ff

; A = idx of player namme replacement, store the number of chars in that replacement list
	ld   a, [wNameReplacementCurrReplacementListIdx]                ; $4401
	call HLequAddrOfPlayerNameReplacement                           ; $4404
	call GetNumCharsInWord                                          ; $4407
	ld   [wNameReplacementCurrListNumChars], a                      ; $440a

; Set that number as the random range too, and get a random num into BC
	ld   [wRandomNumRange], a                                       ; $440d
	call GetRandomNumInPreSpecifiedRange                            ; $4410
	ld   b, $00                                                     ; $4413
	ld   c, a                                                       ; $4415

; A = idx of player name replacement, HL points to a randomly chosen char in it
	ld   a, [wNameReplacementCurrReplacementListIdx]                ; $4416
	call HLequAddrOfPlayerNameReplacement                           ; $4419
	add  hl, bc                                                     ; $441c

; B = player name char to check for
	ld   a, [wNameReplacementCharToReplace]                         ; $441d
	ld   b, a                                                       ; $4420

.loopCurrReplacementList:
; Jump if char in name replacement list is non-null terminator
	ld   a, [hl+]                                                   ; $4421
	or   a                                                          ; $4422
	jr   nz, .nonNullCharInList                                     ; $4423

; Else set HL to the start of the replacement list, and keep looping
	ld   a, [wNameReplacementCurrReplacementListIdx]                ; $4425
	call HLequAddrOfPlayerNameReplacement                           ; $4428
	jr   .loopCurrReplacementList                                   ; $442b

.nonNullCharInList:
; Jump if we matched the letter we're looking for
	cp   b                                                          ; $442d
	jr   z, .matchedOurChar                                         ; $442e

; Else pop pointer to player char to replace, and set it, then return
	pop  hl                                                         ; $4430
	ld   [hl], a                                                    ; $4431
	pop  af                                                         ; $4432
	ret                                                             ; $4433

.matchedOurChar:
; If our character to replace was the only char on the list, don't jump, choose a new list
	ld   a, [wNameReplacementCurrListNumChars]                      ; $4434
	dec  a                                                          ; $4437
	ld   [wNameReplacementCurrListNumChars], a                      ; $4438
	jr   nz, .loopCurrReplacementList                               ; $443b

.toNextReplacementList:
	pop  hl                                                         ; $443d
	pop  af                                                         ; $443e

; Dec idx of replacement list idx
	dec  a                                                          ; $443f
	jr   nz, .nextReplacementList                                   ; $4440

	ret                                                             ; $4442


; HL - pointer to current player name char to replace
KatakanaFoundInName:
	ld   de, .data                                                  ; $4443
	jr   ReplacePlayerNameCharGivenReplacementLists                 ; $4446

.data:
	db $06
	db PNR_1c
	db PNR_1d
	db PNR_1e
	db PNR_1f
	db PNR_20
	db PNR_21


; HL - pointer to current player name char to replace
UpperCaseFoundInName:
	ld   de, .data                                                  ; $444f
	jr   ReplacePlayerNameCharGivenReplacementLists                 ; $4452

.data:
	db $02
	db PNR_UPPER_CASE_VOWELS
	db PNR_UPPER_CASE_CONSONANTS


; HL - pointer to current player name char to replace
LowerCaseFoundInName:
	ld   de, .data                                                  ; $4457
	jr   ReplacePlayerNameCharGivenReplacementLists                 ; $445a

.data:
	db $02
	db PNR_LOWER_CASE_VOWELS
	db PNR_LOWER_CASE_CONSONANTS


; HL - pointer to current player name char to replace
NumberFoundInName:
	ld   de, .data                                                  ; $445f
	jr   ReplacePlayerNameCharGivenReplacementLists                 ; $4462

.data:
	db $01
	db PNR_NUMBERS
	

; A - char to check for
; Returns idx of char in A, or $ff if not found
CheckIfCharInKanasEnAlphabetOrNums:
; First try with hiragana, returning if $ff not returned
	push af                                                         ; $4466
	call GetIndexOfCharInHiragana                                   ; $4467
	pop  bc                                                         ; $446a

	bit  7, a                                                       ; $446b
	ret  z                                                          ; $446d

; Then try with katakana
	ld   a, b                                                       ; $446e
	push af                                                         ; $446f
	call GetIndexOfCharInKatakana                                   ; $4470
	pop  bc                                                         ; $4473

	bit  7, a                                                       ; $4474
	ret  z                                                          ; $4476

; Then try with upper case chars
	ld   a, b                                                       ; $4477
	push af                                                         ; $4478
	call GetIndexOfCharInUpperCaseVowelsOrConsonants                ; $4479
	pop  bc                                                         ; $447c

	bit  7, a                                                       ; $447d
	ret  z                                                          ; $447f

; Then try with lower case chars
	ld   a, b                                                       ; $4480
	push af                                                         ; $4481
	call GetIndexOfCharInLowerCaseVowelsOrConsonants                ; $4482
	pop  bc                                                         ; $4485

	bit  7, a                                                       ; $4486
	ret  z                                                          ; $4488

; Lastly try with numbers
	ld   a, b                                                       ; $4489
	call GetIndexOfCharInNumbers                                    ; $448a
	ret                                                             ; $448d


; A - char to check for
; Returns idx of char in A, or $ff if not found
GetIndexOfCharInHiragana:
	push hl                                                         ; $448e
	ld   h, PNR_HIRAGANA                                            ; $448f
	ld   l, a                                                       ; $4491
	call GetIndexOfCharInPlayerNameReplacement                      ; $4492
	pop  hl                                                         ; $4495
	ret                                                             ; $4496


; A - char to check for
; Returns idx of char in A, or $ff if not found
GetIndexOfCharInKatakana:
	push hl                                                         ; $4497
	ld   h, PNR_KATAKANA                                            ; $4498
	ld   l, a                                                       ; $449a
	call GetIndexOfCharInPlayerNameReplacement                      ; $449b
	pop  hl                                                         ; $449e
	ret                                                             ; $449f


; A - char to check for
; Returns idx of char in A, or $ff if not found
GetIndexOfCharInUpperCaseVowelsOrConsonants:
; Get index in vowels, returning if $ff not returned
	push af                                                         ; $44a0
	call GetIndexOfCharInUpperCaseVowels                            ; $44a1
	pop  bc                                                         ; $44a4

	bit  7, a                                                       ; $44a5
	ret  z                                                          ; $44a7

; Else try with consonants
	ld   a, b                                                       ; $44a8
	call GetIndexOfCharInUpperCaseConsonants                        ; $44a9
	ret                                                             ; $44ac


; A - char to check for
; Returns idx of char in A, or $ff if not found
GetIndexOfCharInLowerCaseVowelsOrConsonants:
; Get index in vowels, returning if $ff not returned
	push af                                                         ; $44ad
	call GetIndexOfCharInLowerCaseVowels                            ; $44ae
	pop  bc                                                         ; $44b1

	bit  7, a                                                       ; $44b2
	ret  z                                                          ; $44b4

; Else try with consonants
	ld   a, b                                                       ; $44b5
	call GetIndexOfCharInLowerCaseConsonants                        ; $44b6
	ret                                                             ; $44b9


; A - char to check for
; Returns idx of char in A, or $ff if not found
GetIndexOfCharInUpperThenLowerCaseVowels:
; Get index in upper case, returning if $ff not returned
	push af                                                         ; $44ba
	call GetIndexOfCharInUpperCaseVowels                            ; $44bb
	pop  bc                                                         ; $44be

	bit  7, a                                                       ; $44bf
	ret  z                                                          ; $44c1

; Else try with lower case
	ld   a, b                                                       ; $44c2
	call GetIndexOfCharInLowerCaseVowels                            ; $44c3
	ret                                                             ; $44c6


; A - char to check for
; Returns idx of char in A, or $ff if not found
GetIndexOfCharInUpperThenLowerCaseConsonants:
; Get index in upper case, returning if $ff not returned
	push af                                                         ; $44c7
	call GetIndexOfCharInUpperCaseConsonants                        ; $44c8
	pop  bc                                                         ; $44cb

	bit  7, a                                                       ; $44cc
	ret  z                                                          ; $44ce

; Else try with lower case
	ld   a, b                                                       ; $44cf
	call GetIndexOfCharInLowerCaseConsonants                        ; $44d0
	ret                                                             ; $44d3


; A - char to check for
; Returns idx of char in A, or $ff if not found
GetIndexOfCharInSpecialList:
	push hl                                                         ; $44d4
	ld   h, PNR_10                                                  ; $44d5
	ld   l, a                                                       ; $44d7
	call GetIndexOfCharInPlayerNameReplacement                      ; $44d8
	pop  hl                                                         ; $44db
	ret                                                             ; $44dc


;
	push hl                                          ; $44dd: $e5
	ld   h, $16                                      ; $44de: $26 $16
	ld   l, a                                        ; $44e0: $6f
	call GetIndexOfCharInPlayerNameReplacement                               ; $44e1: $cd $1c $45
	pop  hl                                          ; $44e4: $e1
	ret                                              ; $44e5: $c9


;
	push hl                                          ; $44e6: $e5
	ld   h, $1c                                      ; $44e7: $26 $1c
	ld   l, a                                        ; $44e9: $6f
	call GetIndexOfCharInPlayerNameReplacement                               ; $44ea: $cd $1c $45
	pop  hl                                          ; $44ed: $e1
	ret                                              ; $44ee: $c9


; A - char to check for
; Returns idx of char in A, or $ff if not found
GetIndexOfCharInUpperCaseVowels:
	push hl                                                         ; $44ef
	ld   h, PNR_UPPER_CASE_VOWELS                                   ; $44f0
	ld   l, a                                                       ; $44f2
	call GetIndexOfCharInPlayerNameReplacement                      ; $44f3
	pop  hl                                                         ; $44f6
	ret                                                             ; $44f7


; A - char to check for
; Returns idx of char in A, or $ff if not found
GetIndexOfCharInUpperCaseConsonants:
	push hl                                                         ; $44f8
	ld   h, PNR_UPPER_CASE_CONSONANTS                               ; $44f9
	ld   l, a                                                       ; $44fb
	call GetIndexOfCharInPlayerNameReplacement                      ; $44fc
	pop  hl                                                         ; $44ff
	ret                                                             ; $4500


; A - char to check for
; Returns idx of char in A, or $ff if not found
GetIndexOfCharInLowerCaseVowels:
	push hl                                                         ; $4501
	ld   h, PNR_LOWER_CASE_VOWELS                                   ; $4502
	ld   l, a                                                       ; $4504
	call GetIndexOfCharInPlayerNameReplacement                      ; $4505
	pop  hl                                                         ; $4508
	ret                                                             ; $4509


; A - char to check for
; Returns idx of char in A, or $ff if not found
GetIndexOfCharInLowerCaseConsonants:
	push hl                                                         ; $450a
	ld   h, PNR_LOWER_CASE_CONSONANTS                               ; $450b
	ld   l, a                                                       ; $450d
	call GetIndexOfCharInPlayerNameReplacement                      ; $450e
	pop  hl                                                         ; $4511
	ret                                                             ; $4512


; A - char to check for
; Returns idx of char in A, or $ff if not found
GetIndexOfCharInNumbers:
	push hl                                                         ; $4513
	ld   h, PNR_NUMBERS                                             ; $4514
	ld   l, a                                                       ; $4516
	call GetIndexOfCharInPlayerNameReplacement                      ; $4517
	pop  hl                                                         ; $451a
	ret                                                             ; $451b


; H - idx of player name replacement
; L - char to check for
; Returns idx of char in A, or $ff if not found
GetIndexOfCharInPlayerNameReplacement:
; HL = addr of player name replacement
	push hl                                                         ; $451c
	ld   a, h                                                       ; $451d
	call HLequAddrOfPlayerNameReplacement                           ; $451e

; C = orig L
	pop  bc                                                         ; $4521
	ld   b, $00                                                     ; $4522

.loop:
; If we reach a 0, return $ff
	ld   a, [hl+]                                                   ; $4524
	or   a                                                          ; $4525
	jr   z, .retFFh                                                 ; $4526

; If we hit orig L, return curr B
	cp   c                                                          ; $4528
	jr   z, .retB                                                   ; $4529

	inc  b                                                          ; $452b
	jr   .loop                                                      ; $452c

.retB:
	ld   a, b                                                       ; $452e
	ret                                                             ; $452f

.retFFh:
	ld   a, $ff                                                     ; $4530
	ret                                                             ; $4532


; HL - points to player name
; Returns num in A
GetNumCharsInWord:
	push bc                                                         ; $4533

; Counter in B
	ld   b, $00                                                     ; $4534
.loop:
; Jump and inc counter, while character is non-0
	ld   a, [hl+]                                                   ; $4536
	or   a                                                          ; $4537
	jr   nz, .toLoop                                                ; $4538

; Return with total in A
	ld   a, b                                                       ; $453a
	pop  bc                                                         ; $453b
	ret                                                             ; $453c

.toLoop:
	inc  b                                                          ; $453d
	jr   .loop                                                      ; $453e


Func_05_4540::
	push bc                                          ; $4540: $c5
	push de                                          ; $4541: $d5
	push hl                                          ; $4542: $e5

; hl = afc2, de = afc1
	ld   hl, $afc1                                   ; $4543: $21 $c1 $af
	ld   d, h                                        ; $4546: $54
	ld   e, l                                        ; $4547: $5d
	inc  hl                                          ; $4548: $23

;
	ld   b, $02                                      ; $4549: $06 $02
	ld   c, $01                                      ; $454b: $0e $01

.loop:
; anytime the lower address < the higher address..
	ld   a, [de]                                     ; $454d: $1a
	cp   [hl]                                        ; $454e: $be
	jr   nc, .cont_4554                             ; $454f: $30 $03

; set the lower address to the higher one, set C to the curr counter
; eg if afc1 < afc2, C = 2, DE = afc2, ie max()
	ld   d, h                                        ; $4551: $54
	ld   e, l                                        ; $4552: $5d
	ld   c, b                                        ; $4553: $48

.cont_4554:
; inc array pointer and 1-idx through array
	inc  hl                                          ; $4554: $23
	inc  b                                           ; $4555: $04

; stop when B == 7, ie when hl = afc7
	ld   a, b                                        ; $4556: $78
	cp   $07                                         ; $4557: $fe $07
	jr   c, .loop                              ; $4559: $38 $f2

; todo: return the lowest val in A
	ld   a, c                                        ; $455b: $79

	pop  hl                                          ; $455c: $e1
	pop  de                                          ; $455d: $d1
	pop  bc                                          ; $455e: $c1
	ret                                              ; $455f: $c9


Func_05_4560::
	xor  a                                           ; $4560: $af
	ret                                              ; $4561: $c9


Func_05_4562::
	ld   bc, .return                                   ; $4562: $01 $75 $45
	push bc                                          ; $4565: $c5
	ld   a, [$cc24]                                  ; $4566: $fa $24 $cc
	ld   b, $00                                      ; $4569: $06 $00
	ld   c, a                                        ; $456b: $4f
	ld   hl, .table                                   ; $456c: $21 $7c $45
	add  hl, bc                                      ; $456f: $09
	add  hl, bc                                      ; $4570: $09
	ld   a, [hl+]                                    ; $4571: $2a
	ld   h, [hl]                                     ; $4572: $66
	ld   l, a                                        ; $4573: $6f
	jp   hl                                          ; $4574: $e9

.return:
	ld   a, [$cc24]                                  ; $4575: $fa $24 $cc
	sub  $0a                                         ; $4578: $d6 $0a
	dec  a                                           ; $457a: $3d
	ret                                              ; $457b: $c9

.table:
	dw $459d
	dw $45e3
	dw $4629
	dw $4657
	dw $4669
	dw $46a6
	dw $46b8
	dw $4592
	dw $471b
	dw $4757
	dw $4592

	ld   hl, $cc25                                   ; $4592: $21 $25 $cc
	ld   a, [hl]                                     ; $4595: $7e
	inc  [hl]                                        ; $4596: $34
	cp   $1e                                         ; $4597: $fe $1e
	ret  c                                           ; $4599: $d8

	jp   Jump_005_539c                               ; $459a: $c3 $9c $53


	ld   a, [wWramBank]                                  ; $459d: $fa $93 $c2
	push af                                          ; $45a0: $f5
	ld   a, $02                                      ; $45a1: $3e $02
	ld   [wWramBank], a                                  ; $45a3: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $45a6: $e0 $70
	ld   hl, $d000                                   ; $45a8: $21 $00 $d0
	ld   a, $90                                      ; $45ab: $3e $90
	ld   de, $4a00                                   ; $45ad: $11 $00 $4a
	ld   bc, $140a                                   ; $45b0: $01 $0a $14
	call FarCopyLayout                                       ; $45b3: $cd $2c $0b
	ld   hl, $d140                                   ; $45b6: $21 $40 $d1
	call FarCopyLayout                                       ; $45b9: $cd $2c $0b
	ld   c, $81                                      ; $45bc: $0e $81
	ld   de, $9800                                   ; $45be: $11 $00 $98
	ld   a, $02                                      ; $45c1: $3e $02
	ld   hl, $d000                                   ; $45c3: $21 $00 $d0
	ld   b, $14                                      ; $45c6: $06 $14
	call EnqueueHDMATransfer                                       ; $45c8: $cd $7c $02
	ld   c, $80                                      ; $45cb: $0e $80
	ld   de, $9800                                   ; $45cd: $11 $00 $98
	ld   a, $02                                      ; $45d0: $3e $02
	ld   hl, $d140                                   ; $45d2: $21 $40 $d1
	ld   b, $14                                      ; $45d5: $06 $14
	call EnqueueHDMATransfer                                       ; $45d7: $cd $7c $02
	pop  af                                          ; $45da: $f1
	ld   [wWramBank], a                                  ; $45db: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $45de: $e0 $70
	jp   Jump_005_539c                               ; $45e0: $c3 $9c $53


	ld   a, [wWramBank]                                  ; $45e3: $fa $93 $c2
	push af                                          ; $45e6: $f5
	ld   a, $02                                      ; $45e7: $3e $02
	ld   [wWramBank], a                                  ; $45e9: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $45ec: $e0 $70
	ld   hl, $d000                                   ; $45ee: $21 $00 $d0
	ld   a, $90                                      ; $45f1: $3e $90
	ld   de, $4870                                   ; $45f3: $11 $70 $48
	ld   bc, $140a                                   ; $45f6: $01 $0a $14
	call FarCopyLayout                                       ; $45f9: $cd $2c $0b
	ld   hl, $d140                                   ; $45fc: $21 $40 $d1
	call FarCopyLayout                                       ; $45ff: $cd $2c $0b
	ld   c, $81                                      ; $4602: $0e $81
	ld   de, $9ac0                                   ; $4604: $11 $c0 $9a
	ld   a, $02                                      ; $4607: $3e $02
	ld   hl, $d000                                   ; $4609: $21 $00 $d0
	ld   b, $14                                      ; $460c: $06 $14
	call EnqueueHDMATransfer                                       ; $460e: $cd $7c $02
	ld   c, $80                                      ; $4611: $0e $80
	ld   de, $9ac0                                   ; $4613: $11 $c0 $9a
	ld   a, $02                                      ; $4616: $3e $02
	ld   hl, $d140                                   ; $4618: $21 $40 $d1
	ld   b, $14                                      ; $461b: $06 $14
	call EnqueueHDMATransfer                                       ; $461d: $cd $7c $02
	pop  af                                          ; $4620: $f1
	ld   [wWramBank], a                                  ; $4621: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4624: $e0 $70
	jp   Jump_005_539c                               ; $4626: $c3 $9c $53


	ld   a, [wWramBank]                                  ; $4629: $fa $93 $c2
	push af                                          ; $462c: $f5
	ld   a, $07                                      ; $462d: $3e $07
	ld   [wWramBank], a                                  ; $462f: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4632: $e0 $70
	
	ld   a, $8d                                      ; $4634: $3e $8d
	ld   hl, $d000                                   ; $4636: $21 $00 $d0
	ld   de, $6dd0                                   ; $4639: $11 $d0 $6d
	call RLEXorCopy                                       ; $463c: $cd $d2 $09
	
	ld   c, $80                                      ; $463f: $0e $80
	ld   de, $8800                                   ; $4641: $11 $00 $88
	ld   a, $07                                      ; $4644: $3e $07
	ld   hl, $d000                                   ; $4646: $21 $00 $d0
	ld   b, $60                                      ; $4649: $06 $60
	call EnqueueHDMATransfer                                       ; $464b: $cd $7c $02
	pop  af                                          ; $464e: $f1
	ld   [wWramBank], a                                  ; $464f: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4652: $e0 $70
	jp   Jump_005_539c                               ; $4654: $c3 $9c $53


	ld   c, $80                                      ; $4657: $0e $80
	ld   de, $8e00                                   ; $4659: $11 $00 $8e
	ld   a, $07                                      ; $465c: $3e $07
	ld   hl, $d600                                   ; $465e: $21 $00 $d6
	ld   b, $60                                      ; $4661: $06 $60
	call EnqueueHDMATransfer                                       ; $4663: $cd $7c $02
	jp   Jump_005_539c                               ; $4666: $c3 $9c $53


	ld   c, $80                                      ; $4669: $0e $80
	ld   de, $9400                                   ; $466b: $11 $00 $94
	ld   a, $07                                      ; $466e: $3e $07
	ld   hl, $dc00                                   ; $4670: $21 $00 $dc
	ld   b, $40                                      ; $4673: $06 $40
	call EnqueueHDMATransfer                                       ; $4675: $cd $7c $02
	ld   a, [wWramBank]                                  ; $4678: $fa $93 $c2
	push af                                          ; $467b: $f5
	ld   a, $07                                      ; $467c: $3e $07
	ld   [wWramBank], a                                  ; $467e: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4681: $e0 $70
	ld   a, $8f                                      ; $4683: $3e $8f
	ld   hl, $d000                                   ; $4685: $21 $00 $d0
	ld   de, $4800                                   ; $4688: $11 $00 $48
	call RLEXorCopy                                       ; $468b: $cd $d2 $09
	ld   c, $81                                      ; $468e: $0e $81
	ld   de, $9000                                   ; $4690: $11 $00 $90
	ld   a, $07                                      ; $4693: $3e $07
	ld   hl, $d000                                   ; $4695: $21 $00 $d0
	ld   b, $20                                      ; $4698: $06 $20
	call EnqueueHDMATransfer                                       ; $469a: $cd $7c $02
	pop  af                                          ; $469d: $f1
	ld   [wWramBank], a                                  ; $469e: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $46a1: $e0 $70
	jp   Jump_005_539c                               ; $46a3: $c3 $9c $53


	ld   c, $81                                      ; $46a6: $0e $81
	ld   de, $9200                                   ; $46a8: $11 $00 $92
	ld   a, $07                                      ; $46ab: $3e $07
	ld   hl, $d200                                   ; $46ad: $21 $00 $d2
	ld   b, $60                                      ; $46b0: $06 $60
	call EnqueueHDMATransfer                                       ; $46b2: $cd $7c $02
	jp   Jump_005_539c                               ; $46b5: $c3 $9c $53


	ld   a, [$cc25]                                  ; $46b8: $fa $25 $cc
	or   a                                           ; $46bb: $b7
	jr   nz, jr_005_46f0                             ; $46bc: $20 $32

	ld   hl, $c20c                                   ; $46be: $21 $0c $c2
	set  6, [hl]                                     ; $46c1: $cb $f6
	ld   hl, wIE                                   ; $46c3: $21 $0d $c2
	set  1, [hl]                                     ; $46c6: $cb $ce
	ld   a, $0d                                      ; $46c8: $3e $0d
	ld   [wLCDCIntFuncIdx], a                                  ; $46ca: $ea $8d $c2
	ld   a, $4f                                      ; $46cd: $3e $4f
	ld   [$c20b], a                                  ; $46cf: $ea $0b $c2
	ld   a, $00                                      ; $46d2: $3e $00
	ld   [wSCY], a                                  ; $46d4: $ea $08 $c2
	ld   a, $10                                      ; $46d7: $3e $10
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $46d9: $ea $62 $c3
	ld   a, $10                                      ; $46dc: $3e $10
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $46de: $ea $63 $c3
	ld   a, $03                                      ; $46e1: $3e $03
	ld   b, $00                                      ; $46e3: $06 $00
	ld   hl, wBGPalettes                                   ; $46e5: $21 $de $c2
	ld   c, $8e                                      ; $46e8: $0e $8e
	ld   de, $7fc0                                   ; $46ea: $11 $c0 $7f
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $46ed: $cd $48 $07

jr_005_46f0:
	ld   hl, $cc25                                   ; $46f0: $21 $25 $cc
	ld   a, [hl]                                     ; $46f3: $7e
	inc  [hl]                                        ; $46f4: $34
	and  $03                                         ; $46f5: $e6 $03
	ret  nz                                          ; $46f7: $c0

	ld   a, [hl]                                     ; $46f8: $7e
	cp   $1f                                         ; $46f9: $fe $1f
	jr   nc, jr_005_4704                             ; $46fb: $30 $07

	ld   bc, $1010                                   ; $46fd: $01 $10 $10
	call FadePalettesAndSetRangeToUpdate                                       ; $4700: $cd $32 $08
	ret                                              ; $4703: $c9


jr_005_4704:
	ld   a, $8e                                      ; $4704: $3e $8e
	ld   hl, $7fe0                                   ; $4706: $21 $e0 $7f
	ld   de, $c2fe                                   ; $4709: $11 $fe $c2
	ld   bc, $0020                                   ; $470c: $01 $20 $00
	call FarMemCopy                                       ; $470f: $cd $b2 $09
	ld   bc, $101f                                   ; $4712: $01 $1f $10
	call SetBGandOBJPaletteRangesToUpdate                                       ; $4715: $cd $aa $04
	jp   Jump_005_539c                               ; $4718: $c3 $9c $53


	ld   hl, $cc25                                   ; $471b: $21 $25 $cc
	ld   a, [hl]                                     ; $471e: $7e
	inc  [hl]                                        ; $471f: $34
	and  $03                                         ; $4720: $e6 $03
	ret  nz                                          ; $4722: $c0

	ld   a, [wSCY]                                  ; $4723: $fa $08 $c2
	dec  a                                           ; $4726: $3d
	ld   [wSCY], a                                  ; $4727: $ea $08 $c2
	cp   $b0                                         ; $472a: $fe $b0
	ret  nz                                          ; $472c: $c0

	ld   hl, wIE                                   ; $472d: $21 $0d $c2
	res  1, [hl]                                     ; $4730: $cb $8e
	xor  a                                           ; $4732: $af
	ld   [wSCY], a                                  ; $4733: $ea $08 $c2
	ld   c, $81                                      ; $4736: $0e $81
	ld   de, $9800                                   ; $4738: $11 $00 $98
	ld   a, $02                                      ; $473b: $3e $02
	ld   hl, $d000                                   ; $473d: $21 $00 $d0
	ld   b, $14                                      ; $4740: $06 $14
	call EnqueueHDMATransfer                                       ; $4742: $cd $7c $02
	ld   c, $80                                      ; $4745: $0e $80
	ld   de, $9800                                   ; $4747: $11 $00 $98
	ld   a, $02                                      ; $474a: $3e $02
	ld   hl, $d140                                   ; $474c: $21 $40 $d1
	ld   b, $14                                      ; $474f: $06 $14
	call EnqueueHDMATransfer                                       ; $4751: $cd $7c $02
	jp   Jump_005_539c                               ; $4754: $c3 $9c $53


	ld   a, [$cc25]                                  ; $4757: $fa $25 $cc
	or   a                                           ; $475a: $b7
	jr   nz, jr_005_475d                             ; $475b: $20 $00

jr_005_475d:
	ld   a, [wWramBank]                                  ; $475d: $fa $93 $c2
	push af                                          ; $4760: $f5
	ld   a, $07                                      ; $4761: $3e $07
	ld   [wWramBank], a                                  ; $4763: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4766: $e0 $70
	ld   hl, $cc25                                   ; $4768: $21 $25 $cc
	ld   a, [hl]                                     ; $476b: $7e
	inc  [hl]                                        ; $476c: $34
	and  $03                                         ; $476d: $e6 $03
	jr   nz, jr_005_4796                             ; $476f: $20 $25

	ld   a, [hl]                                     ; $4771: $7e
	srl  a                                           ; $4772: $cb $3f
	ld   b, $00                                      ; $4774: $06 $00
	ld   c, a                                        ; $4776: $4f
	ld   hl, $d800                                   ; $4777: $21 $00 $d8
	add  hl, bc                                      ; $477a: $09
	ld   de, $000e                                   ; $477b: $11 $0e $00
	xor  a                                           ; $477e: $af
	ld   b, $14                                      ; $477f: $06 $14

jr_005_4781:
	ld   [hl+], a                                    ; $4781: $22
	ld   [hl+], a                                    ; $4782: $22
	add  hl, de                                      ; $4783: $19
	dec  b                                           ; $4784: $05
	jr   nz, jr_005_4781                             ; $4785: $20 $fa

	ld   c, $80                                      ; $4787: $0e $80
	ld   de, $9000                                   ; $4789: $11 $00 $90
	ld   a, $07                                      ; $478c: $3e $07
	ld   hl, $d800                                   ; $478e: $21 $00 $d8
	ld   b, $14                                      ; $4791: $06 $14
	call EnqueueHDMATransfer                                       ; $4793: $cd $7c $02

jr_005_4796:
	pop  af                                          ; $4796: $f1
	ld   [wWramBank], a                                  ; $4797: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $479a: $e0 $70
	ld   a, [$cc25]                                  ; $479c: $fa $25 $cc
	cp   $10                                         ; $479f: $fe $10
	ret  nz                                          ; $47a1: $c0

	jp   Jump_005_539c                               ; $47a2: $c3 $9c $53


LCDCFunc0d::
	ld   hl, $c20b                                   ; $47a5: $21 $0b $c2
	ldh  a, [rLY]                                    ; $47a8: $f0 $44
	cp   [hl]                                        ; $47aa: $be
	jp   nz, LCDCInterruptHandler.return                                   ; $47ab: $c2 $4a $04

jr_005_47ae:
	ldh  a, [rSTAT]                                  ; $47ae: $f0 $41
	and  $03                                         ; $47b0: $e6 $03
	jr   z, jr_005_47ae                              ; $47b2: $28 $fa

jr_005_47b4:
	ldh  a, [rSTAT]                                  ; $47b4: $f0 $41
	and  $03                                         ; $47b6: $e6 $03
	jr   nz, jr_005_47b4                             ; $47b8: $20 $fa

	xor  a                                           ; $47ba: $af
	ldh  [rSCY], a                                   ; $47bb: $e0 $42
	jp   LCDCInterruptHandler.return                                       ; $47bd: $c3 $4a $04


Func_05_47c0::
	ld   bc, $47d3                                   ; $47c0: $01 $d3 $47
	push bc                                          ; $47c3: $c5
	ld   a, [$cc24]                                  ; $47c4: $fa $24 $cc
	ld   b, $00                                      ; $47c7: $06 $00
	ld   c, a                                        ; $47c9: $4f
	ld   hl, $47d9                                   ; $47ca: $21 $d9 $47
	add  hl, bc                                      ; $47cd: $09
	add  hl, bc                                      ; $47ce: $09
	ld   a, [hl+]                                    ; $47cf: $2a
	ld   h, [hl]                                     ; $47d0: $66
	ld   l, a                                        ; $47d1: $6f
	jp   hl                                          ; $47d2: $e9


	ld   a, [$cc24]                                  ; $47d3: $fa $24 $cc
	sub  $02                                         ; $47d6: $d6 $02
	ret                                              ; $47d8: $c9


	db   $dd                                         ; $47d9: $dd
	ld   b, a                                        ; $47da: $47
	db   $ec                                         ; $47db: $ec
	ld   c, b                                        ; $47dc: $48
	ld   hl, $cc25                                   ; $47dd: $21 $25 $cc
	ld   a, [hl]                                     ; $47e0: $7e
	inc  [hl]                                        ; $47e1: $34
	or   a                                           ; $47e2: $b7
	jr   nz, jr_005_4811                             ; $47e3: $20 $2c

	ld   a, [wWramBank]                                  ; $47e5: $fa $93 $c2
	push af                                          ; $47e8: $f5
	ld   a, $07                                      ; $47e9: $3e $07
	ld   [wWramBank], a                                  ; $47eb: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $47ee: $e0 $70
	ld   a, $8e                                      ; $47f0: $3e $8e
	ld   hl, $d000                                   ; $47f2: $21 $00 $d0
	ld   de, $7bc0                                   ; $47f5: $11 $c0 $7b
	call RLEXorCopy                                       ; $47f8: $cd $d2 $09
	ld   c, $81                                      ; $47fb: $0e $81
	ld   de, $8000                                   ; $47fd: $11 $00 $80
	ld   a, $07                                      ; $4800: $3e $07
	ld   hl, $d000                                   ; $4802: $21 $00 $d0
	ld   b, $50                                      ; $4805: $06 $50
	call EnqueueHDMATransfer                                       ; $4807: $cd $7c $02
	pop  af                                          ; $480a: $f1
	ld   [wWramBank], a                                  ; $480b: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $480e: $e0 $70
	ret                                              ; $4810: $c9


jr_005_4811:
	ld   hl, wLCDC                                   ; $4811: $21 $03 $c2
	res  2, [hl]                                     ; $4814: $cb $96
	ld   a, [wWramBank]                                  ; $4816: $fa $93 $c2
	push af                                          ; $4819: $f5
	ld   a, $02                                      ; $481a: $3e $02
	ld   [wWramBank], a                                  ; $481c: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $481f: $e0 $70
	ld   de, $da00                                   ; $4821: $11 $00 $da
	ld   hl, $c30e                                   ; $4824: $21 $0e $c3
	ld   bc, $0038                                   ; $4827: $01 $38 $00
	call MemCopy                                       ; $482a: $cd $a9 $09
	pop  af                                          ; $482d: $f1
	ld   [wWramBank], a                                  ; $482e: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4831: $e0 $70
	ld   a, $01                                      ; $4833: $3e $01
	ld   hl, $7080                                   ; $4835: $21 $80 $70
	ld   de, $c30e                                   ; $4838: $11 $0e $c3
	ld   bc, $0038                                   ; $483b: $01 $38 $00
	call FarMemCopy                                       ; $483e: $cd $b2 $09
	ld   bc, $1833                                   ; $4841: $01 $33 $18
	call SetBGandOBJPaletteRangesToUpdate                                       ; $4844: $cd $aa $04
	ld   a, [wWramBank]                                  ; $4847: $fa $93 $c2
	push af                                          ; $484a: $f5
	ld   a, $07                                      ; $484b: $3e $07
	ld   [wWramBank], a                                  ; $484d: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4850: $e0 $70
	ld   hl, $d000                                   ; $4852: $21 $00 $d0
	ld   bc, $0140                                   ; $4855: $01 $40 $01
	ld   a, $ff                                      ; $4858: $3e $ff
	call MemSet                                       ; $485a: $cd $96 $09
	ld   hl, $d140                                   ; $485d: $21 $40 $d1
	ld   bc, $0140                                   ; $4860: $01 $40 $01
	ld   a, $00                                      ; $4863: $3e $00
	call MemSet                                       ; $4865: $cd $96 $09
	ld   hl, $d280                                   ; $4868: $21 $80 $d2
	ld   bc, $0010                                   ; $486b: $01 $10 $00
	ld   a, $ff                                      ; $486e: $3e $ff
	call MemSet                                       ; $4870: $cd $96 $09
	ld   c, $80                                      ; $4873: $0e $80
	ld   de, $9800                                   ; $4875: $11 $00 $98
	ld   a, $07                                      ; $4878: $3e $07
	ld   hl, $d000                                   ; $487a: $21 $00 $d0
	ld   b, $14                                      ; $487d: $06 $14
	call EnqueueHDMATransfer                                       ; $487f: $cd $7c $02
	ld   c, $81                                      ; $4882: $0e $81
	ld   de, $9800                                   ; $4884: $11 $00 $98
	ld   a, $07                                      ; $4887: $3e $07
	ld   hl, $d140                                   ; $4889: $21 $40 $d1
	ld   b, $14                                      ; $488c: $06 $14
	call EnqueueHDMATransfer                                       ; $488e: $cd $7c $02
	ld   c, $80                                      ; $4891: $0e $80
	ld   de, $8ff0                                   ; $4893: $11 $f0 $8f
	ld   a, $07                                      ; $4896: $3e $07
	ld   hl, $d280                                   ; $4898: $21 $80 $d2
	ld   b, $01                                      ; $489b: $06 $01
	call EnqueueHDMATransfer                                       ; $489d: $cd $7c $02
	pop  af                                          ; $48a0: $f1
	ld   [wWramBank], a                                  ; $48a1: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $48a4: $e0 $70
	ld   a, $8f                                      ; $48a6: $3e $8f
	ld   hl, $7ff0                                   ; $48a8: $21 $f0 $7f
	ld   de, $c356                                   ; $48ab: $11 $56 $c3
	ld   bc, $0008                                   ; $48ae: $01 $08 $00
	call FarMemCopy                                       ; $48b1: $cd $b2 $09
	ld   bc, $3c3f                                   ; $48b4: $01 $3f $3c
	call SetBGandOBJPaletteRangesToUpdate                                       ; $48b7: $cd $aa $04
	ld   a, $01                                      ; $48ba: $3e $01
	ld   hl, $0000                                   ; $48bc: $21 $00 $00
	ld   d, h                                        ; $48bf: $54
	ld   e, l                                        ; $48c0: $5d
	call ReserveBaseAnimSpriteSpecAndInstance                                       ; $48c1: $cd $4b $2f
	ld   [$cc27], a                                  ; $48c4: $ea $27 $cc
	call StartAnimatingAnimatedSpriteSpec                                       ; $48c7: $cd $14 $30
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $48ca: $cd $76 $30
	ld   a, $0d                                      ; $48cd: $3e $0d
	ld   bc, $1000                                   ; $48cf: $01 $00 $10
	ld   de, $7762                                   ; $48d2: $11 $62 $77
	push af                                          ; $48d5: $f5
	ld   a, $03                                      ; $48d6: $3e $03
	ld   [wFarCallAddr], a                                  ; $48d8: $ea $98 $c2
	ld   a, $41                                      ; $48db: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $48dd: $ea $99 $c2
	ld   a, $01                                      ; $48e0: $3e $01
	ld   [wFarCallBank], a                                  ; $48e2: $ea $9a $c2
	pop  af                                          ; $48e5: $f1
	call FarCall                                       ; $48e6: $cd $62 $09
	jp   Jump_005_539c                               ; $48e9: $c3 $9c $53


	ld   a, [wWramBank]                                  ; $48ec: $fa $93 $c2
	push af                                          ; $48ef: $f5
	ld   a, $07                                      ; $48f0: $3e $07
	ld   [wWramBank], a                                  ; $48f2: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $48f5: $e0 $70
	ld   hl, $cc25                                   ; $48f7: $21 $25 $cc
	ld   a, [hl]                                     ; $48fa: $7e
	inc  [hl]                                        ; $48fb: $34
	cp   $04                                         ; $48fc: $fe $04
	jr   z, jr_005_4925                              ; $48fe: $28 $25

	cp   $05                                         ; $4900: $fe $05
	jr   z, jr_005_492a                              ; $4902: $28 $26

	ld   hl, $d280                                   ; $4904: $21 $80 $d2
	ld   bc, $0010                                   ; $4907: $01 $10 $00
	ld   a, $ff                                      ; $490a: $3e $ff
	call MemSet                                       ; $490c: $cd $96 $09
	ld   a, $01                                      ; $490f: $3e $01
	ld   hl, $7080                                   ; $4911: $21 $80 $70
	ld   de, $c30e                                   ; $4914: $11 $0e $c3
	ld   bc, $0038                                   ; $4917: $01 $38 $00
	call FarMemCopy                                       ; $491a: $cd $b2 $09
	ld   bc, $1833                                   ; $491d: $01 $33 $18
	call SetBGandOBJPaletteRangesToUpdate                                       ; $4920: $cd $aa $04
	jr   jr_005_4949                                 ; $4923: $18 $24

jr_005_4925:
	ld   a, $49                                      ; $4925: $3e $49
	call PlaySoundEffect                                       ; $4927: $cd $df $1a

jr_005_492a:
	ld   hl, $d280                                   ; $492a: $21 $80 $d2
	ld   bc, $0010                                   ; $492d: $01 $10 $00
	ld   a, $00                                      ; $4930: $3e $00
	call MemSet                                       ; $4932: $cd $96 $09
	ld   a, $01                                      ; $4935: $3e $01
	ld   hl, $7000                                   ; $4937: $21 $00 $70
	ld   de, $c30e                                   ; $493a: $11 $0e $c3
	ld   bc, $0038                                   ; $493d: $01 $38 $00
	call FarMemCopy                                       ; $4940: $cd $b2 $09
	ld   bc, $1833                                   ; $4943: $01 $33 $18
	call SetBGandOBJPaletteRangesToUpdate                                       ; $4946: $cd $aa $04

jr_005_4949:
	ld   c, $80                                      ; $4949: $0e $80
	ld   de, $8ff0                                   ; $494b: $11 $f0 $8f
	ld   a, $07                                      ; $494e: $3e $07
	ld   hl, $d280                                   ; $4950: $21 $80 $d2
	ld   b, $01                                      ; $4953: $06 $01
	call EnqueueHDMATransfer                                       ; $4955: $cd $7c $02
	pop  af                                          ; $4958: $f1
	ld   [wWramBank], a                                  ; $4959: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $495c: $e0 $70
	ld   a, [$cc27]                                  ; $495e: $fa $27 $cc
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $4961: $cd $76 $30
	push af                                          ; $4964: $f5
	ld   a, $43                                      ; $4965: $3e $43
	ld   [wFarCallAddr], a                                  ; $4967: $ea $98 $c2
	ld   a, $41                                      ; $496a: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $496c: $ea $99 $c2
	ld   a, $01                                      ; $496f: $3e $01
	ld   [wFarCallBank], a                                  ; $4971: $ea $9a $c2
	pop  af                                          ; $4974: $f1
	call FarCall                                       ; $4975: $cd $62 $09
	bit  7, b                                        ; $4978: $cb $78
	ret  z                                           ; $497a: $c8

	ld   c, $80                                      ; $497b: $0e $80
	ld   de, $9800                                   ; $497d: $11 $00 $98
	ld   a, $02                                      ; $4980: $3e $02
	ld   hl, $d140                                   ; $4982: $21 $40 $d1
	ld   b, $14                                      ; $4985: $06 $14
	call EnqueueHDMATransfer                                       ; $4987: $cd $7c $02
	ld   c, $81                                      ; $498a: $0e $81
	ld   de, $9800                                   ; $498c: $11 $00 $98
	ld   a, $02                                      ; $498f: $3e $02
	ld   hl, $d000                                   ; $4991: $21 $00 $d0
	ld   b, $14                                      ; $4994: $06 $14
	call EnqueueHDMATransfer                                       ; $4996: $cd $7c $02
	ld   a, [wWramBank]                                  ; $4999: $fa $93 $c2
	push af                                          ; $499c: $f5
	ld   a, $02                                      ; $499d: $3e $02
	ld   [wWramBank], a                                  ; $499f: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $49a2: $e0 $70
	ld   a, $00                                      ; $49a4: $3e $00
	ld   hl, $da00                                   ; $49a6: $21 $00 $da
	ld   de, $c30e                                   ; $49a9: $11 $0e $c3
	ld   bc, $0038                                   ; $49ac: $01 $38 $00
	call FarMemCopy                                       ; $49af: $cd $b2 $09
	ld   bc, $1833                                   ; $49b2: $01 $33 $18
	call SetBGandOBJPaletteRangesToUpdate                                       ; $49b5: $cd $aa $04
	pop  af                                          ; $49b8: $f1
	ld   [wWramBank], a                                  ; $49b9: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $49bc: $e0 $70
	ld   a, [$cc27]                                  ; $49be: $fa $27 $cc
	call DeleteAnimatedSpriteSpec                                       ; $49c1: $cd $bb $2f
	ld   hl, wLCDC                                   ; $49c4: $21 $03 $c2
	set  2, [hl]                                     ; $49c7: $cb $d6
	jp   Jump_005_539c                               ; $49c9: $c3 $9c $53


Func_05_49cc::
	ld   bc, $49df                                   ; $49cc: $01 $df $49
	push bc                                          ; $49cf: $c5
	ld   a, [$cc24]                                  ; $49d0: $fa $24 $cc
	ld   b, $00                                      ; $49d3: $06 $00
	ld   c, a                                        ; $49d5: $4f
	ld   hl, $49e5                                   ; $49d6: $21 $e5 $49
	add  hl, bc                                      ; $49d9: $09
	add  hl, bc                                      ; $49da: $09
	ld   a, [hl+]                                    ; $49db: $2a
	ld   h, [hl]                                     ; $49dc: $66
	ld   l, a                                        ; $49dd: $6f
	jp   hl                                          ; $49de: $e9


	ld   a, [$cc24]                                  ; $49df: $fa $24 $cc
	sub  $02                                         ; $49e2: $d6 $02
	ret                                              ; $49e4: $c9


	jp   hl                                          ; $49e5: $e9


	ld   c, c                                        ; $49e6: $49
	add  hl, bc                                      ; $49e7: $09
	ld   c, d                                        ; $49e8: $4a
	ld   a, [wWramBank]                                  ; $49e9: $fa $93 $c2
	push af                                          ; $49ec: $f5
	ld   a, $02                                      ; $49ed: $3e $02
	ld   [wWramBank], a                                  ; $49ef: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $49f2: $e0 $70
	ld   de, $da00                                   ; $49f4: $11 $00 $da
	ld   hl, wBGPalettes+3*8                                   ; $49f7: $21 $f6 $c2
	ld   bc, $0050                                   ; $49fa: $01 $50 $00
	call MemCopy                                       ; $49fd: $cd $a9 $09
	pop  af                                          ; $4a00: $f1
	ld   [wWramBank], a                                  ; $4a01: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4a04: $e0 $70
	jp   Jump_005_539c                               ; $4a06: $c3 $9c $53


	ld   hl, $cc25                                   ; $4a09: $21 $25 $cc
	ld   a, [hl]                                     ; $4a0c: $7e
	inc  [hl]                                        ; $4a0d: $34
	srl  a                                           ; $4a0e: $cb $3f
	srl  a                                           ; $4a10: $cb $3f
	ld   h, $00                                      ; $4a12: $26 $00
	ld   l, a                                        ; $4a14: $6f
	ld   bc, $4a73                                   ; $4a15: $01 $73 $4a
	add  hl, bc                                      ; $4a18: $09
	ld   a, [hl]                                     ; $4a19: $7e
	bit  7, a                                        ; $4a1a: $cb $7f
	jr   nz, jr_005_4a4b                             ; $4a1c: $20 $2d

	or   a                                           ; $4a1e: $b7
	jr   nz, jr_005_4a36                             ; $4a1f: $20 $15

	ld   a, $01                                      ; $4a21: $3e $01
	ld   hl, $7080                                   ; $4a23: $21 $80 $70
	ld   de, wBGPalettes+3*8                                   ; $4a26: $11 $f6 $c2
	ld   bc, $0050                                   ; $4a29: $01 $50 $00
	call FarMemCopy                                       ; $4a2c: $cd $b2 $09
	ld   bc, $0c33                                   ; $4a2f: $01 $33 $0c
	call SetBGandOBJPaletteRangesToUpdate                                       ; $4a32: $cd $aa $04
	ret                                              ; $4a35: $c9


jr_005_4a36:
	ld   a, $01                                      ; $4a36: $3e $01
	ld   hl, $7000                                   ; $4a38: $21 $00 $70
	ld   de, wBGPalettes+3*8                                   ; $4a3b: $11 $f6 $c2
	ld   bc, $0050                                   ; $4a3e: $01 $50 $00
	call FarMemCopy                                       ; $4a41: $cd $b2 $09
	ld   bc, $0c33                                   ; $4a44: $01 $33 $0c
	call SetBGandOBJPaletteRangesToUpdate                                       ; $4a47: $cd $aa $04
	ret                                              ; $4a4a: $c9


jr_005_4a4b:
	ld   a, [wWramBank]                                  ; $4a4b: $fa $93 $c2
	push af                                          ; $4a4e: $f5
	ld   a, $02                                      ; $4a4f: $3e $02
	ld   [wWramBank], a                                  ; $4a51: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4a54: $e0 $70
	ld   a, $00                                      ; $4a56: $3e $00
	ld   hl, $da00                                   ; $4a58: $21 $00 $da
	ld   de, wBGPalettes+3*8                                   ; $4a5b: $11 $f6 $c2
	ld   bc, $0050                                   ; $4a5e: $01 $50 $00
	call FarMemCopy                                       ; $4a61: $cd $b2 $09
	ld   bc, $0c33                                   ; $4a64: $01 $33 $0c
	call SetBGandOBJPaletteRangesToUpdate                                       ; $4a67: $cd $aa $04
	pop  af                                          ; $4a6a: $f1
	ld   [wWramBank], a                                  ; $4a6b: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4a6e: $e0 $70
	jp   Jump_005_539c                               ; $4a70: $c3 $9c $53


	nop                                              ; $4a73: $00
	ld   bc, $0100                                   ; $4a74: $01 $00 $01
	nop                                              ; $4a77: $00
	db $01, $ff 
	
	
Func_05_4a7a::
	db $01
	adc  l                                           ; $4a7b: $8d
	ld   c, d                                        ; $4a7c: $4a
	push bc                                          ; $4a7d: $c5
	ld   a, [$cc24]                                  ; $4a7e: $fa $24 $cc
	ld   b, $00                                      ; $4a81: $06 $00
	ld   c, a                                        ; $4a83: $4f
	ld   hl, $4a93                                   ; $4a84: $21 $93 $4a
	add  hl, bc                                      ; $4a87: $09
	add  hl, bc                                      ; $4a88: $09
	ld   a, [hl+]                                    ; $4a89: $2a
	ld   h, [hl]                                     ; $4a8a: $66
	ld   l, a                                        ; $4a8b: $6f
	jp   hl                                          ; $4a8c: $e9


	ld   a, [$cc24]                                  ; $4a8d: $fa $24 $cc
	sub  $03                                         ; $4a90: $d6 $03
	ret                                              ; $4a92: $c9


	sbc  c                                           ; $4a93: $99
	ld   c, d                                        ; $4a94: $4a
	cp   c                                           ; $4a95: $b9
	ld   c, d                                        ; $4a96: $4a
	jr   z, @+$4d                                    ; $4a97: $28 $4b

	ld   a, [wWramBank]                                  ; $4a99: $fa $93 $c2
	push af                                          ; $4a9c: $f5
	ld   a, $02                                      ; $4a9d: $3e $02
	ld   [wWramBank], a                                  ; $4a9f: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4aa2: $e0 $70
	ld   de, $da00                                   ; $4aa4: $11 $00 $da
	ld   hl, wBGPalettes+3*8                                   ; $4aa7: $21 $f6 $c2
	ld   bc, $0018                                   ; $4aaa: $01 $18 $00
	call MemCopy                                       ; $4aad: $cd $a9 $09
	pop  af                                          ; $4ab0: $f1
	ld   [wWramBank], a                                  ; $4ab1: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4ab4: $e0 $70
	jp   Jump_005_539c                               ; $4ab6: $c3 $9c $53


	ld   hl, $cc25                                   ; $4ab9: $21 $25 $cc
	ld   a, [hl]                                     ; $4abc: $7e
	inc  [hl]                                        ; $4abd: $34
	srl  a                                           ; $4abe: $cb $3f
	srl  a                                           ; $4ac0: $cb $3f
	ld   h, $00                                      ; $4ac2: $26 $00
	ld   l, a                                        ; $4ac4: $6f
	ld   bc, $4b23                                   ; $4ac5: $01 $23 $4b
	add  hl, bc                                      ; $4ac8: $09
	ld   a, [hl]                                     ; $4ac9: $7e
	bit  7, a                                        ; $4aca: $cb $7f
	jr   nz, jr_005_4afb                             ; $4acc: $20 $2d

	or   a                                           ; $4ace: $b7
	jr   nz, jr_005_4ae6                             ; $4acf: $20 $15

	ld   a, $01                                      ; $4ad1: $3e $01
	ld   hl, $7080                                   ; $4ad3: $21 $80 $70
	ld   de, wBGPalettes+3*8                                   ; $4ad6: $11 $f6 $c2
	ld   bc, $0018                                   ; $4ad9: $01 $18 $00
	call FarMemCopy                                       ; $4adc: $cd $b2 $09
	ld   bc, $0c17                                   ; $4adf: $01 $17 $0c
	call SetBGandOBJPaletteRangesToUpdate                                       ; $4ae2: $cd $aa $04
	ret                                              ; $4ae5: $c9


jr_005_4ae6:
	ld   a, $01                                      ; $4ae6: $3e $01
	ld   hl, $7000                                   ; $4ae8: $21 $00 $70
	ld   de, wBGPalettes+3*8                                   ; $4aeb: $11 $f6 $c2
	ld   bc, $0018                                   ; $4aee: $01 $18 $00
	call FarMemCopy                                       ; $4af1: $cd $b2 $09
	ld   bc, $0c17                                   ; $4af4: $01 $17 $0c
	call SetBGandOBJPaletteRangesToUpdate                                       ; $4af7: $cd $aa $04
	ret                                              ; $4afa: $c9


jr_005_4afb:
	ld   a, [wWramBank]                                  ; $4afb: $fa $93 $c2
	push af                                          ; $4afe: $f5
	ld   a, $02                                      ; $4aff: $3e $02
	ld   [wWramBank], a                                  ; $4b01: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4b04: $e0 $70
	ld   a, $00                                      ; $4b06: $3e $00
	ld   hl, $da00                                   ; $4b08: $21 $00 $da
	ld   de, wBGPalettes+3*8                                   ; $4b0b: $11 $f6 $c2
	ld   bc, $0018                                   ; $4b0e: $01 $18 $00
	call FarMemCopy                                       ; $4b11: $cd $b2 $09
	ld   bc, $0c17                                   ; $4b14: $01 $17 $0c
	call SetBGandOBJPaletteRangesToUpdate                                       ; $4b17: $cd $aa $04
	pop  af                                          ; $4b1a: $f1
	ld   [wWramBank], a                                  ; $4b1b: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4b1e: $e0 $70
	jp   Jump_005_539c                               ; $4b20: $c3 $9c $53


	nop                                              ; $4b23: $00
	ld   bc, $0100                                   ; $4b24: $01 $00 $01
	rst  $38                                         ; $4b27: $ff
	ld   hl, $cc25                                   ; $4b28: $21 $25 $cc
	ld   a, [hl]                                     ; $4b2b: $7e
	inc  [hl]                                        ; $4b2c: $34
	cp   $0a                                         ; $4b2d: $fe $0a
	ret  c                                           ; $4b2f: $d8

	ld   a, $0e                                      ; $4b30: $3e $0e
	call PlaySoundEffect                                       ; $4b32: $cd $df $1a
	jp   Jump_005_539c                               ; $4b35: $c3 $9c $53


Func_05_4b38::
	ld   bc, $4b4b                                   ; $4b38: $01 $4b $4b
	push bc                                          ; $4b3b: $c5
	ld   a, [$cc24]                                  ; $4b3c: $fa $24 $cc
	ld   b, $00                                      ; $4b3f: $06 $00
	ld   c, a                                        ; $4b41: $4f
	ld   hl, $4b51                                   ; $4b42: $21 $51 $4b
	add  hl, bc                                      ; $4b45: $09
	add  hl, bc                                      ; $4b46: $09
	ld   a, [hl+]                                    ; $4b47: $2a
	ld   h, [hl]                                     ; $4b48: $66
	ld   l, a                                        ; $4b49: $6f
	jp   hl                                          ; $4b4a: $e9


	ld   a, [$cc24]                                  ; $4b4b: $fa $24 $cc
	sub  $02                                         ; $4b4e: $d6 $02
	ret                                              ; $4b50: $c9


	ld   d, l                                        ; $4b51: $55
	ld   c, e                                        ; $4b52: $4b
	sub  a                                           ; $4b53: $97
	ld   c, e                                        ; $4b54: $4b

Call_005_4b55:
	ld   a, [wWramBank]                                  ; $4b55: $fa $93 $c2
	push af                                          ; $4b58: $f5
	ld   a, $02                                      ; $4b59: $3e $02
	ld   [wWramBank], a                                  ; $4b5b: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4b5e: $e0 $70
	ld   de, $da00                                   ; $4b60: $11 $00 $da
	ld   hl, wBGPalettes+3*8                                   ; $4b63: $21 $f6 $c2
	ld   bc, $0050                                   ; $4b66: $01 $50 $00
	call MemCopy                                       ; $4b69: $cd $a9 $09
	pop  af                                          ; $4b6c: $f1
	ld   [wWramBank], a                                  ; $4b6d: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4b70: $e0 $70
	ld   a, [wWramBank]                                  ; $4b72: $fa $93 $c2
	push af                                          ; $4b75: $f5
	ld   a, $07                                      ; $4b76: $3e $07
	ld   [wWramBank], a                                  ; $4b78: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4b7b: $e0 $70
	ld   hl, $d000                                   ; $4b7d: $21 $00 $d0
	ld   bc, $0040                                   ; $4b80: $01 $40 $00
	ld   de, $02fc                                   ; $4b83: $11 $fc $02
	call CopyEthenDintoHL_BCtimes                                       ; $4b86: $cd $9f $09
	pop  af                                          ; $4b89: $f1
	ld   [wWramBank], a                                  ; $4b8a: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4b8d: $e0 $70
	ld   a, $4a                                      ; $4b8f: $3e $4a
	ld   [$cc26], a                                  ; $4b91: $ea $26 $cc
	jp   Jump_005_539c                               ; $4b94: $c3 $9c $53


Jump_005_4b97:
	ld   hl, $cc25                                   ; $4b97: $21 $25 $cc
	ld   a, [hl]                                     ; $4b9a: $7e
	inc  [hl]                                        ; $4b9b: $34
	or   a                                           ; $4b9c: $b7
	jr   nz, jr_005_4ba7                             ; $4b9d: $20 $08

	push af                                          ; $4b9f: $f5
	ld   a, [$cc26]                                  ; $4ba0: $fa $26 $cc
	call PlaySoundEffect                                       ; $4ba3: $cd $df $1a
	pop  af                                          ; $4ba6: $f1

jr_005_4ba7:
	srl  a                                           ; $4ba7: $cb $3f
	srl  a                                           ; $4ba9: $cb $3f
	ld   h, $00                                      ; $4bab: $26 $00
	ld   l, a                                        ; $4bad: $6f
	ld   bc, $4c1d                                   ; $4bae: $01 $1d $4c
	add  hl, bc                                      ; $4bb1: $09
	ld   a, [hl]                                     ; $4bb2: $7e
	bit  7, a                                        ; $4bb3: $cb $7f
	jr   nz, jr_005_4bf5                             ; $4bb5: $20 $3e

	or   a                                           ; $4bb7: $b7
	jr   nz, jr_005_4be0                             ; $4bb8: $20 $26

	ld   a, [wWramBank]                                  ; $4bba: $fa $93 $c2
	push af                                          ; $4bbd: $f5
	ld   a, $07                                      ; $4bbe: $3e $07
	ld   [wWramBank], a                                  ; $4bc0: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4bc3: $e0 $70
	ld   a, $00                                      ; $4bc5: $3e $00
	ld   hl, $d000                                   ; $4bc7: $21 $00 $d0
	ld   de, wBGPalettes+3*8                                   ; $4bca: $11 $f6 $c2
	ld   bc, $0050                                   ; $4bcd: $01 $50 $00
	call FarMemCopy                                       ; $4bd0: $cd $b2 $09
	ld   bc, $0c33                                   ; $4bd3: $01 $33 $0c
	call SetBGandOBJPaletteRangesToUpdate                                       ; $4bd6: $cd $aa $04
	pop  af                                          ; $4bd9: $f1
	ld   [wWramBank], a                                  ; $4bda: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4bdd: $e0 $70
	ret                                              ; $4bdf: $c9


jr_005_4be0:
	ld   a, $01                                      ; $4be0: $3e $01
	ld   hl, $7000                                   ; $4be2: $21 $00 $70
	ld   de, wBGPalettes+3*8                                   ; $4be5: $11 $f6 $c2
	ld   bc, $0050                                   ; $4be8: $01 $50 $00
	call FarMemCopy                                       ; $4beb: $cd $b2 $09
	ld   bc, $0c33                                   ; $4bee: $01 $33 $0c
	call SetBGandOBJPaletteRangesToUpdate                                       ; $4bf1: $cd $aa $04
	ret                                              ; $4bf4: $c9


jr_005_4bf5:
	ld   a, [wWramBank]                                  ; $4bf5: $fa $93 $c2
	push af                                          ; $4bf8: $f5
	ld   a, $02                                      ; $4bf9: $3e $02
	ld   [wWramBank], a                                  ; $4bfb: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4bfe: $e0 $70
	ld   a, $00                                      ; $4c00: $3e $00
	ld   hl, $da00                                   ; $4c02: $21 $00 $da
	ld   de, wBGPalettes+3*8                                   ; $4c05: $11 $f6 $c2
	ld   bc, $0050                                   ; $4c08: $01 $50 $00
	call FarMemCopy                                       ; $4c0b: $cd $b2 $09
	ld   bc, $0c33                                   ; $4c0e: $01 $33 $0c
	call SetBGandOBJPaletteRangesToUpdate                                       ; $4c11: $cd $aa $04
	pop  af                                          ; $4c14: $f1
	ld   [wWramBank], a                                  ; $4c15: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4c18: $e0 $70
	jp   Jump_005_539c                               ; $4c1a: $c3 $9c $53


	nop                                              ; $4c1d: $00
	ld   bc, $0100                                   ; $4c1e: $01 $00 $01
	nop                                              ; $4c21: $00
	ld   bc, $0100                                   ; $4c22: $01 $00 $01
	nop                                              ; $4c25: $00
	ld   bc, $0100                                   ; $4c26: $01 $00 $01
	nop                                              ; $4c29: $00
	ld   bc, $0100                                   ; $4c2a: $01 $00 $01
	rst  $38                                         ; $4c2d: $ff


Func_05_4c2e::
	ld   bc, $4c41                                   ; $4c2e: $01 $41 $4c
	push bc                                          ; $4c31: $c5
	ld   a, [$cc24]                                  ; $4c32: $fa $24 $cc
	ld   b, $00                                      ; $4c35: $06 $00
	ld   c, a                                        ; $4c37: $4f
	ld   hl, $4c47                                   ; $4c38: $21 $47 $4c
	add  hl, bc                                      ; $4c3b: $09
	add  hl, bc                                      ; $4c3c: $09
	ld   a, [hl+]                                    ; $4c3d: $2a
	ld   h, [hl]                                     ; $4c3e: $66
	ld   l, a                                        ; $4c3f: $6f
	jp   hl                                          ; $4c40: $e9


	ld   a, [$cc24]                                  ; $4c41: $fa $24 $cc
	sub  $04                                         ; $4c44: $d6 $04
	ret                                              ; $4c46: $c9


	ld   c, a                                        ; $4c47: $4f
	ld   c, h                                        ; $4c48: $4c
	ld   e, [hl]                                     ; $4c49: $5e
	ld   c, l                                        ; $4c4a: $4d
	adc  [hl]                                        ; $4c4b: $8e
	ld   c, l                                        ; $4c4c: $4d
	rlca                                             ; $4c4d: $07
	ld   c, [hl]                                     ; $4c4e: $4e
	ld   hl, $cc25                                   ; $4c4f: $21 $25 $cc
	ld   a, [hl]                                     ; $4c52: $7e
	inc  [hl]                                        ; $4c53: $34
	or   a                                           ; $4c54: $b7
	jr   nz, jr_005_4c83                             ; $4c55: $20 $2c

	ld   a, [wWramBank]                                  ; $4c57: $fa $93 $c2
	push af                                          ; $4c5a: $f5
	ld   a, $07                                      ; $4c5b: $3e $07
	ld   [wWramBank], a                                  ; $4c5d: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4c60: $e0 $70
	ld   a, $8e                                      ; $4c62: $3e $8e
	ld   hl, $d000                                   ; $4c64: $21 $00 $d0
	ld   de, $7bc0                                   ; $4c67: $11 $c0 $7b
	call RLEXorCopy                                       ; $4c6a: $cd $d2 $09
	ld   c, $81                                      ; $4c6d: $0e $81
	ld   de, $8000                                   ; $4c6f: $11 $00 $80
	ld   a, $07                                      ; $4c72: $3e $07
	ld   hl, $d000                                   ; $4c74: $21 $00 $d0
	ld   b, $50                                      ; $4c77: $06 $50
	call EnqueueHDMATransfer                                       ; $4c79: $cd $7c $02
	pop  af                                          ; $4c7c: $f1
	ld   [wWramBank], a                                  ; $4c7d: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4c80: $e0 $70
	ret                                              ; $4c82: $c9


jr_005_4c83:
	ld   hl, wLCDC                                   ; $4c83: $21 $03 $c2
	res  2, [hl]                                     ; $4c86: $cb $96
	ld   a, [wWramBank]                                  ; $4c88: $fa $93 $c2
	push af                                          ; $4c8b: $f5
	ld   a, $02                                      ; $4c8c: $3e $02
	ld   [wWramBank], a                                  ; $4c8e: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4c91: $e0 $70
	ld   de, $da00                                   ; $4c93: $11 $00 $da
	ld   hl, wBGPalettes                                   ; $4c96: $21 $de $c2
	ld   bc, $0080                                   ; $4c99: $01 $80 $00
	call MemCopy                                       ; $4c9c: $cd $a9 $09
	pop  af                                          ; $4c9f: $f1
	ld   [wWramBank], a                                  ; $4ca0: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4ca3: $e0 $70
	ld   a, $01                                      ; $4ca5: $3e $01
	ld   hl, $7080                                   ; $4ca7: $21 $80 $70
	ld   de, wBGPalettes+3*8                                   ; $4caa: $11 $f6 $c2
	ld   bc, $0050                                   ; $4cad: $01 $50 $00
	call FarMemCopy                                       ; $4cb0: $cd $b2 $09
	ld   bc, $0c33                                   ; $4cb3: $01 $33 $0c
	call SetBGandOBJPaletteRangesToUpdate                                       ; $4cb6: $cd $aa $04
	ld   a, [wWramBank]                                  ; $4cb9: $fa $93 $c2
	push af                                          ; $4cbc: $f5
	ld   a, $07                                      ; $4cbd: $3e $07
	ld   [wWramBank], a                                  ; $4cbf: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4cc2: $e0 $70
	ld   hl, $d000                                   ; $4cc4: $21 $00 $d0
	ld   bc, $0140                                   ; $4cc7: $01 $40 $01
	ld   a, $ff                                      ; $4cca: $3e $ff
	call MemSet                                       ; $4ccc: $cd $96 $09
	ld   hl, $d140                                   ; $4ccf: $21 $40 $d1
	ld   bc, $0140                                   ; $4cd2: $01 $40 $01
	ld   a, $00                                      ; $4cd5: $3e $00
	call MemSet                                       ; $4cd7: $cd $96 $09
	ld   hl, $d280                                   ; $4cda: $21 $80 $d2
	ld   bc, $0010                                   ; $4cdd: $01 $10 $00
	ld   a, $ff                                      ; $4ce0: $3e $ff
	call MemSet                                       ; $4ce2: $cd $96 $09
	ld   c, $80                                      ; $4ce5: $0e $80
	ld   de, $9800                                   ; $4ce7: $11 $00 $98
	ld   a, $07                                      ; $4cea: $3e $07
	ld   hl, $d000                                   ; $4cec: $21 $00 $d0
	ld   b, $14                                      ; $4cef: $06 $14
	call EnqueueHDMATransfer                                       ; $4cf1: $cd $7c $02
	ld   c, $81                                      ; $4cf4: $0e $81
	ld   de, $9800                                   ; $4cf6: $11 $00 $98
	ld   a, $07                                      ; $4cf9: $3e $07
	ld   hl, $d140                                   ; $4cfb: $21 $40 $d1
	ld   b, $14                                      ; $4cfe: $06 $14
	call EnqueueHDMATransfer                                       ; $4d00: $cd $7c $02
	ld   c, $80                                      ; $4d03: $0e $80
	ld   de, $8ff0                                   ; $4d05: $11 $f0 $8f
	ld   a, $07                                      ; $4d08: $3e $07
	ld   hl, $d280                                   ; $4d0a: $21 $80 $d2
	ld   b, $01                                      ; $4d0d: $06 $01
	call EnqueueHDMATransfer                                       ; $4d0f: $cd $7c $02
	pop  af                                          ; $4d12: $f1
	ld   [wWramBank], a                                  ; $4d13: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4d16: $e0 $70
	ld   a, $8f                                      ; $4d18: $3e $8f
	ld   hl, $7ff0                                   ; $4d1a: $21 $f0 $7f
	ld   de, $c356                                   ; $4d1d: $11 $56 $c3
	ld   bc, $0008                                   ; $4d20: $01 $08 $00
	call FarMemCopy                                       ; $4d23: $cd $b2 $09
	ld   bc, $3c3f                                   ; $4d26: $01 $3f $3c
	call SetBGandOBJPaletteRangesToUpdate                                       ; $4d29: $cd $aa $04
	ld   a, $01                                      ; $4d2c: $3e $01
	ld   hl, $0000                                   ; $4d2e: $21 $00 $00
	ld   d, h                                        ; $4d31: $54
	ld   e, l                                        ; $4d32: $5d
	call ReserveBaseAnimSpriteSpecAndInstance                                       ; $4d33: $cd $4b $2f
	ld   [$cc27], a                                  ; $4d36: $ea $27 $cc
	call StartAnimatingAnimatedSpriteSpec                                       ; $4d39: $cd $14 $30
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $4d3c: $cd $76 $30
	ld   a, $0d                                      ; $4d3f: $3e $0d
	ld   bc, $1000                                   ; $4d41: $01 $00 $10
	ld   de, $7762                                   ; $4d44: $11 $62 $77
	push af                                          ; $4d47: $f5
	ld   a, $03                                      ; $4d48: $3e $03
	ld   [wFarCallAddr], a                                  ; $4d4a: $ea $98 $c2
	ld   a, $41                                      ; $4d4d: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $4d4f: $ea $99 $c2
	ld   a, $01                                      ; $4d52: $3e $01
	ld   [wFarCallBank], a                                  ; $4d54: $ea $9a $c2
	pop  af                                          ; $4d57: $f1
	call FarCall                                       ; $4d58: $cd $62 $09
	jp   Jump_005_539c                               ; $4d5b: $c3 $9c $53


	ld   a, [$cc27]                                  ; $4d5e: $fa $27 $cc
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $4d61: $cd $76 $30
	push af                                          ; $4d64: $f5
	ld   a, $43                                      ; $4d65: $3e $43
	ld   [wFarCallAddr], a                                  ; $4d67: $ea $98 $c2
	ld   a, $41                                      ; $4d6a: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $4d6c: $ea $99 $c2
	ld   a, $01                                      ; $4d6f: $3e $01
	ld   [wFarCallBank], a                                  ; $4d71: $ea $9a $c2
	pop  af                                          ; $4d74: $f1
	call FarCall                                       ; $4d75: $cd $62 $09
	bit  7, b                                        ; $4d78: $cb $78
	ret  z                                           ; $4d7a: $c8

	ld   a, $4b                                      ; $4d7b: $3e $4b
	call PlaySoundEffect                                       ; $4d7d: $cd $df $1a
	ld   a, [$cc27]                                  ; $4d80: $fa $27 $cc
	call DeleteAnimatedSpriteSpec                                       ; $4d83: $cd $bb $2f
	ld   hl, wLCDC                                   ; $4d86: $21 $03 $c2
	set  2, [hl]                                     ; $4d89: $cb $d6
	jp   Jump_005_539c                               ; $4d8b: $c3 $9c $53


	ld   hl, $d140                                   ; $4d8e: $21 $40 $d1
	ld   de, $d260                                   ; $4d91: $11 $60 $d2
	ld   bc, $2005                                   ; $4d94: $01 $05 $20

jr_005_4d97:
	push bc                                          ; $4d97: $c5
	ld   b, [hl]                                     ; $4d98: $46
	ld   a, [de]                                     ; $4d99: $1a
	ld   [hl+], a                                    ; $4d9a: $22
	ld   a, b                                        ; $4d9b: $78
	ld   [de], a                                     ; $4d9c: $12
	inc  de                                          ; $4d9d: $13
	pop  bc                                          ; $4d9e: $c1
	dec  b                                           ; $4d9f: $05
	jr   nz, jr_005_4d97                             ; $4da0: $20 $f5

	ld   b, $20                                      ; $4da2: $06 $20
	push hl                                          ; $4da4: $e5
	ld   hl, $ffc0                                   ; $4da5: $21 $c0 $ff
	add  hl, de                                      ; $4da8: $19
	ld   d, h                                        ; $4da9: $54
	ld   e, l                                        ; $4daa: $5d
	pop  hl                                          ; $4dab: $e1
	dec  c                                           ; $4dac: $0d
	jr   nz, jr_005_4d97                             ; $4dad: $20 $e8

	ld   hl, $d000                                   ; $4daf: $21 $00 $d0
	ld   de, $d120                                   ; $4db2: $11 $20 $d1
	ld   bc, $2005                                   ; $4db5: $01 $05 $20

jr_005_4db8:
	push bc                                          ; $4db8: $c5
	ld   b, [hl]                                     ; $4db9: $46
	ld   a, [de]                                     ; $4dba: $1a
	ld   [hl+], a                                    ; $4dbb: $22
	ld   a, b                                        ; $4dbc: $78
	ld   [de], a                                     ; $4dbd: $12
	inc  de                                          ; $4dbe: $13
	pop  bc                                          ; $4dbf: $c1
	dec  b                                           ; $4dc0: $05
	jr   nz, jr_005_4db8                             ; $4dc1: $20 $f5

	ld   b, $20                                      ; $4dc3: $06 $20
	push hl                                          ; $4dc5: $e5
	ld   hl, $ffc0                                   ; $4dc6: $21 $c0 $ff
	add  hl, de                                      ; $4dc9: $19
	ld   d, h                                        ; $4dca: $54
	ld   e, l                                        ; $4dcb: $5d
	pop  hl                                          ; $4dcc: $e1
	dec  c                                           ; $4dcd: $0d
	jr   nz, jr_005_4db8                             ; $4dce: $20 $e8

	ld   hl, $d000                                   ; $4dd0: $21 $00 $d0
	ld   bc, $0140                                   ; $4dd3: $01 $40 $01

jr_005_4dd6:
	bit  6, [hl]                                     ; $4dd6: $cb $76
	jr   z, jr_005_4dde                              ; $4dd8: $28 $04

	res  6, [hl]                                     ; $4dda: $cb $b6
	jr   jr_005_4de0                                 ; $4ddc: $18 $02

jr_005_4dde:
	set  6, [hl]                                     ; $4dde: $cb $f6

jr_005_4de0:
	inc  hl                                          ; $4de0: $23
	dec  bc                                          ; $4de1: $0b
	ld   a, b                                        ; $4de2: $78
	or   c                                           ; $4de3: $b1
	jr   nz, jr_005_4dd6                             ; $4de4: $20 $f0

	ld   c, $80                                      ; $4de6: $0e $80
	ld   de, $9800                                   ; $4de8: $11 $00 $98
	ld   a, $02                                      ; $4deb: $3e $02
	ld   hl, $d140                                   ; $4ded: $21 $40 $d1
	ld   b, $14                                      ; $4df0: $06 $14
	call EnqueueHDMATransfer                                       ; $4df2: $cd $7c $02
	ld   c, $81                                      ; $4df5: $0e $81
	ld   de, $9800                                   ; $4df7: $11 $00 $98
	ld   a, $02                                      ; $4dfa: $3e $02
	ld   hl, $d000                                   ; $4dfc: $21 $00 $d0
	ld   b, $14                                      ; $4dff: $06 $14
	call EnqueueHDMATransfer                                       ; $4e01: $cd $7c $02
	jp   Jump_005_539c                               ; $4e04: $c3 $9c $53


	ld   a, [$cc25]                                  ; $4e07: $fa $25 $cc
	or   a                                           ; $4e0a: $b7
	jr   nz, jr_005_4e37                             ; $4e0b: $20 $2a

	ld   a, [wWramBank]                                  ; $4e0d: $fa $93 $c2
	push af                                          ; $4e10: $f5
	ld   a, $02                                      ; $4e11: $3e $02
	ld   [wWramBank], a                                  ; $4e13: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4e16: $e0 $70
	ld   a, $0c                                      ; $4e18: $3e $0c
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $4e1a: $ea $62 $c3
	ld   a, $28                                      ; $4e1d: $3e $28
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $4e1f: $ea $63 $c3
	ld   a, $03                                      ; $4e22: $3e $03
	ld   b, $00                                      ; $4e24: $06 $00
	ld   hl, wBGPalettes                                   ; $4e26: $21 $de $c2
	ld   c, $00                                      ; $4e29: $0e $00
	ld   de, $da00                                   ; $4e2b: $11 $00 $da
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $4e2e: $cd $48 $07
	pop  af                                          ; $4e31: $f1
	ld   [wWramBank], a                                  ; $4e32: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4e35: $e0 $70

jr_005_4e37:
	ld   hl, $cc25                                   ; $4e37: $21 $25 $cc
	ld   a, [hl]                                     ; $4e3a: $7e
	inc  [hl]                                        ; $4e3b: $34
	cp   $7f                                         ; $4e3c: $fe $7f
	jr   nc, jr_005_4e4b                             ; $4e3e: $30 $0b

	bit  0, a                                        ; $4e40: $cb $47
	and  $0f                                         ; $4e42: $e6 $0f
	ret  nz                                          ; $4e44: $c0

	ld   bc, $0c28                                   ; $4e45: $01 $28 $0c
	jp   FadePalettesAndSetRangeToUpdate                                       ; $4e48: $c3 $32 $08


jr_005_4e4b:
	ld   a, [wWramBank]                                  ; $4e4b: $fa $93 $c2
	push af                                          ; $4e4e: $f5
	ld   a, $02                                      ; $4e4f: $3e $02
	ld   [wWramBank], a                                  ; $4e51: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4e54: $e0 $70
	xor  a                                           ; $4e56: $af
	ld   hl, $da18                                   ; $4e57: $21 $18 $da
	ld   de, wBGPalettes+3*8                                   ; $4e5a: $11 $f6 $c2
	ld   bc, $0050                                   ; $4e5d: $01 $50 $00
	call FarMemCopy                                       ; $4e60: $cd $b2 $09
	ld   bc, $0c33                                   ; $4e63: $01 $33 $0c
	call SetBGandOBJPaletteRangesToUpdate                                       ; $4e66: $cd $aa $04
	pop  af                                          ; $4e69: $f1
	ld   [wWramBank], a                                  ; $4e6a: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4e6d: $e0 $70
	jp   Jump_005_539c                               ; $4e6f: $c3 $9c $53


Func_05_4e72::
	ld   bc, $4e85                                   ; $4e72: $01 $85 $4e
	push bc                                          ; $4e75: $c5
	ld   a, [$cc24]                                  ; $4e76: $fa $24 $cc
	ld   b, $00                                      ; $4e79: $06 $00
	ld   c, a                                        ; $4e7b: $4f
	ld   hl, $4e8b                                   ; $4e7c: $21 $8b $4e
	add  hl, bc                                      ; $4e7f: $09
	add  hl, bc                                      ; $4e80: $09
	ld   a, [hl+]                                    ; $4e81: $2a
	ld   h, [hl]                                     ; $4e82: $66
	ld   l, a                                        ; $4e83: $6f
	jp   hl                                          ; $4e84: $e9


	ld   a, [$cc24]                                  ; $4e85: $fa $24 $cc
	sub  $02                                         ; $4e88: $d6 $02
	ret                                              ; $4e8a: $c9


	adc  a                                           ; $4e8b: $8f
	ld   c, [hl]                                     ; $4e8c: $4e
	ld   a, [$c34f]                                  ; $4e8d: $fa $4f $c3
	sub  d                                           ; $4e90: $92
	ld   c, [hl]                                     ; $4e91: $4e

Call_005_4e92:
Jump_005_4e92:
	ld   hl, $cc25                                   ; $4e92: $21 $25 $cc
	ld   a, [hl]                                     ; $4e95: $7e
	or   a                                           ; $4e96: $b7
	jp   nz, Jump_005_4f36                           ; $4e97: $c2 $36 $4f

	inc  [hl]                                        ; $4e9a: $34
	ld   hl, $c20c                                   ; $4e9b: $21 $0c $c2
	set  6, [hl]                                     ; $4e9e: $cb $f6
	ld   hl, wIE                                   ; $4ea0: $21 $0d $c2
	set  1, [hl]                                     ; $4ea3: $cb $ce
	ld   a, $0e                                      ; $4ea5: $3e $0e
	ld   [wLCDCIntFuncIdx], a                                  ; $4ea7: $ea $8d $c2
	ld   a, $4f                                      ; $4eaa: $3e $4f
	ld   [$c20b], a                                  ; $4eac: $ea $0b $c2
	ld   a, [wLCDC]                                  ; $4eaf: $fa $03 $c2
	or   $60                                         ; $4eb2: $f6 $60
	ld   [wLCDC], a                                  ; $4eb4: $ea $03 $c2
	ld   a, $07                                      ; $4eb7: $3e $07
	ld   [wWX], a                                  ; $4eb9: $ea $09 $c2
	ld   a, $50                                      ; $4ebc: $3e $50
	ld   [wWY], a                                  ; $4ebe: $ea $0a $c2
	ld   c, $01                                      ; $4ec1: $0e $01
	ld   de, $9c00                                   ; $4ec3: $11 $00 $9c
	ld   a, $0d                                      ; $4ec6: $3e $0d
	ld   hl, $4200                                   ; $4ec8: $21 $00 $42
	ld   b, $10                                      ; $4ecb: $06 $10
	call EnqueueHDMATransfer                                       ; $4ecd: $cd $7c $02
	ld   c, $81                                      ; $4ed0: $0e $81
	ld   de, $9c20                                   ; $4ed2: $11 $20 $9c
	ld   a, $02                                      ; $4ed5: $3e $02
	ld   hl, $d280                                   ; $4ed7: $21 $80 $d2
	ld   b, $0c                                      ; $4eda: $06 $0c
	call EnqueueHDMATransfer                                       ; $4edc: $cd $7c $02
	ld   c, $00                                      ; $4edf: $0e $00
	ld   de, $9c00                                   ; $4ee1: $11 $00 $9c
	ld   a, $0d                                      ; $4ee4: $3e $0d
	ld   hl, $4100                                   ; $4ee6: $21 $00 $41
	ld   b, $10                                      ; $4ee9: $06 $10
	call EnqueueHDMATransfer                                       ; $4eeb: $cd $7c $02
	ld   a, [wWramBank]                                  ; $4eee: $fa $93 $c2
	push af                                          ; $4ef1: $f5
	ld   a, $07                                      ; $4ef2: $3e $07
	ld   [wWramBank], a                                  ; $4ef4: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4ef7: $e0 $70
	ld   hl, $d000                                   ; $4ef9: $21 $00 $d0
	ld   bc, $0080                                   ; $4efc: $01 $80 $00
	ld   de, $0808                                   ; $4eff: $11 $08 $08
	call CopyEthenDintoHL_BCtimes                                       ; $4f02: $cd $9f $09
	ld   hl, $d100                                   ; $4f05: $21 $00 $d1
	ld   bc, $0080                                   ; $4f08: $01 $80 $00
	ld   de, $ffff                                   ; $4f0b: $11 $ff $ff
	call CopyEthenDintoHL_BCtimes                                       ; $4f0e: $cd $9f $09
	ld   c, $81                                      ; $4f11: $0e $81
	ld   de, $9940                                   ; $4f13: $11 $40 $99
	ld   a, $07                                      ; $4f16: $3e $07
	ld   hl, $d000                                   ; $4f18: $21 $00 $d0
	ld   b, $10                                      ; $4f1b: $06 $10
	call EnqueueHDMATransfer                                       ; $4f1d: $cd $7c $02
	ld   c, $80                                      ; $4f20: $0e $80
	ld   de, $9940                                   ; $4f22: $11 $40 $99
	ld   a, $07                                      ; $4f25: $3e $07
	ld   hl, $d100                                   ; $4f27: $21 $00 $d1
	ld   b, $10                                      ; $4f2a: $06 $10
	call EnqueueHDMATransfer                                       ; $4f2c: $cd $7c $02
	pop  af                                          ; $4f2f: $f1
	ld   [wWramBank], a                                  ; $4f30: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4f33: $e0 $70
	ret                                              ; $4f35: $c9


Jump_005_4f36:
	ld   a, [wWramBank]                                  ; $4f36: $fa $93 $c2
	push af                                          ; $4f39: $f5
	ld   a, $02                                      ; $4f3a: $3e $02
	ld   [wWramBank], a                                  ; $4f3c: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4f3f: $e0 $70
	ld   hl, $d014                                   ; $4f41: $21 $14 $d0
	ld   bc, $0020                                   ; $4f44: $01 $20 $00
	ld   a, $08                                      ; $4f47: $3e $08
	ld   [hl], a                                     ; $4f49: $77
	add  hl, bc                                      ; $4f4a: $09
	ld   [hl], a                                     ; $4f4b: $77
	add  hl, bc                                      ; $4f4c: $09
	ld   [hl], a                                     ; $4f4d: $77
	add  hl, bc                                      ; $4f4e: $09
	ld   [hl], a                                     ; $4f4f: $77
	add  hl, bc                                      ; $4f50: $09
	ld   [hl], a                                     ; $4f51: $77
	add  hl, bc                                      ; $4f52: $09
	ld   [hl], a                                     ; $4f53: $77
	add  hl, bc                                      ; $4f54: $09
	ld   [hl], a                                     ; $4f55: $77
	add  hl, bc                                      ; $4f56: $09
	ld   [hl], a                                     ; $4f57: $77
	add  hl, bc                                      ; $4f58: $09
	ld   [hl], a                                     ; $4f59: $77
	add  hl, bc                                      ; $4f5a: $09
	ld   [hl], a                                     ; $4f5b: $77
	add  hl, bc                                      ; $4f5c: $09
	ld   hl, $d154                                   ; $4f5d: $21 $54 $d1
	ld   bc, $0020                                   ; $4f60: $01 $20 $00
	ld   a, $ff                                      ; $4f63: $3e $ff
	ld   [hl], a                                     ; $4f65: $77
	add  hl, bc                                      ; $4f66: $09
	ld   [hl], a                                     ; $4f67: $77
	add  hl, bc                                      ; $4f68: $09
	ld   [hl], a                                     ; $4f69: $77
	add  hl, bc                                      ; $4f6a: $09
	ld   [hl], a                                     ; $4f6b: $77
	add  hl, bc                                      ; $4f6c: $09
	ld   [hl], a                                     ; $4f6d: $77
	add  hl, bc                                      ; $4f6e: $09
	ld   [hl], a                                     ; $4f6f: $77
	add  hl, bc                                      ; $4f70: $09
	ld   [hl], a                                     ; $4f71: $77
	add  hl, bc                                      ; $4f72: $09
	ld   [hl], a                                     ; $4f73: $77
	add  hl, bc                                      ; $4f74: $09
	ld   [hl], a                                     ; $4f75: $77
	add  hl, bc                                      ; $4f76: $09
	ld   [hl], a                                     ; $4f77: $77
	add  hl, bc                                      ; $4f78: $09
	ld   hl, $d01f                                   ; $4f79: $21 $1f $d0
	ld   bc, $0020                                   ; $4f7c: $01 $20 $00
	ld   a, $08                                      ; $4f7f: $3e $08
	ld   [hl], a                                     ; $4f81: $77
	add  hl, bc                                      ; $4f82: $09
	ld   [hl], a                                     ; $4f83: $77
	add  hl, bc                                      ; $4f84: $09
	ld   [hl], a                                     ; $4f85: $77
	add  hl, bc                                      ; $4f86: $09
	ld   [hl], a                                     ; $4f87: $77
	add  hl, bc                                      ; $4f88: $09
	ld   [hl], a                                     ; $4f89: $77
	add  hl, bc                                      ; $4f8a: $09
	ld   [hl], a                                     ; $4f8b: $77
	add  hl, bc                                      ; $4f8c: $09
	ld   [hl], a                                     ; $4f8d: $77
	add  hl, bc                                      ; $4f8e: $09
	ld   [hl], a                                     ; $4f8f: $77
	add  hl, bc                                      ; $4f90: $09
	ld   [hl], a                                     ; $4f91: $77
	add  hl, bc                                      ; $4f92: $09
	ld   [hl], a                                     ; $4f93: $77
	add  hl, bc                                      ; $4f94: $09
	ld   hl, $d15f                                   ; $4f95: $21 $5f $d1
	ld   bc, $0020                                   ; $4f98: $01 $20 $00
	ld   a, $ff                                      ; $4f9b: $3e $ff
	ld   [hl], a                                     ; $4f9d: $77
	add  hl, bc                                      ; $4f9e: $09
	ld   [hl], a                                     ; $4f9f: $77
	add  hl, bc                                      ; $4fa0: $09
	ld   [hl], a                                     ; $4fa1: $77
	add  hl, bc                                      ; $4fa2: $09
	ld   [hl], a                                     ; $4fa3: $77
	add  hl, bc                                      ; $4fa4: $09
	ld   [hl], a                                     ; $4fa5: $77
	add  hl, bc                                      ; $4fa6: $09
	ld   [hl], a                                     ; $4fa7: $77
	add  hl, bc                                      ; $4fa8: $09
	ld   [hl], a                                     ; $4fa9: $77
	add  hl, bc                                      ; $4faa: $09
	ld   [hl], a                                     ; $4fab: $77
	add  hl, bc                                      ; $4fac: $09
	ld   [hl], a                                     ; $4fad: $77
	add  hl, bc                                      ; $4fae: $09
	ld   [hl], a                                     ; $4faf: $77
	add  hl, bc                                      ; $4fb0: $09
	pop  af                                          ; $4fb1: $f1
	ld   [wWramBank], a                                  ; $4fb2: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4fb5: $e0 $70
	ld   c, $81                                      ; $4fb7: $0e $81
	ld   de, $9800                                   ; $4fb9: $11 $00 $98
	ld   a, $02                                      ; $4fbc: $3e $02
	ld   hl, $d000                                   ; $4fbe: $21 $00 $d0
	ld   b, $14                                      ; $4fc1: $06 $14
	call EnqueueHDMATransfer                                       ; $4fc3: $cd $7c $02
	ld   c, $80                                      ; $4fc6: $0e $80
	ld   de, $9800                                   ; $4fc8: $11 $00 $98
	ld   a, $02                                      ; $4fcb: $3e $02
	ld   hl, $d140                                   ; $4fcd: $21 $40 $d1
	ld   b, $14                                      ; $4fd0: $06 $14
	call EnqueueHDMATransfer                                       ; $4fd2: $cd $7c $02
	ld   c, $81                                      ; $4fd5: $0e $81
	ld   de, $9be0                                   ; $4fd7: $11 $e0 $9b
	ld   a, $07                                      ; $4fda: $3e $07
	ld   hl, $d000                                   ; $4fdc: $21 $00 $d0
	ld   b, $02                                      ; $4fdf: $06 $02
	call EnqueueHDMATransfer                                       ; $4fe1: $cd $7c $02
	ld   c, $80                                      ; $4fe4: $0e $80
	ld   de, $9be0                                   ; $4fe6: $11 $e0 $9b
	ld   a, $07                                      ; $4fe9: $3e $07
	ld   hl, $d100                                   ; $4feb: $21 $00 $d1
	ld   b, $02                                      ; $4fee: $06 $02
	call EnqueueHDMATransfer                                       ; $4ff0: $cd $7c $02
	xor  a                                           ; $4ff3: $af
	ld   [$cc26], a                                  ; $4ff4: $ea $26 $cc
	jp   Jump_005_539c                               ; $4ff7: $c3 $9c $53


Jump_005_4ffa:
	ld   hl, $cc25                                   ; $4ffa: $21 $25 $cc
	ld   a, [hl]                                     ; $4ffd: $7e
	inc  [hl]                                        ; $4ffe: $34
	cp   $3c                                         ; $4fff: $fe $3c
	jp   nc, Jump_005_5048                           ; $5001: $d2 $48 $50

	ld   hl, $cc26                                   ; $5004: $21 $26 $cc
	ld   a, [hl]                                     ; $5007: $7e
	dec  [hl]                                        ; $5008: $35
	or   a                                           ; $5009: $b7
	jr   nz, jr_005_5011                             ; $500a: $20 $05

	ld   a, $0e                                      ; $500c: $3e $0e
	call PlaySoundEffect                                       ; $500e: $cd $df $1a

jr_005_5011:
	ld   a, $09                                      ; $5011: $3e $09
	ld   [wRandomNumRange], a                                  ; $5013: $ea $a5 $c2
	call GetRandomNumInPreSpecifiedRange                                       ; $5016: $cd $10 $0d
	sub  $04                                         ; $5019: $d6 $04
	ld   [wSCX], a                                  ; $501b: $ea $07 $c2
	ld   a, $09                                      ; $501e: $3e $09
	ld   [wRandomNumRange], a                                  ; $5020: $ea $a5 $c2
	call GetRandomNumInPreSpecifiedRange                                       ; $5023: $cd $10 $0d
	sub  $04                                         ; $5026: $d6 $04
	ld   [wSCY], a                                  ; $5028: $ea $08 $c2
	ld   a, [wSCX]                                  ; $502b: $fa $07 $c2
	ld   b, a                                        ; $502e: $47
	ld   a, [wSCY]                                  ; $502f: $fa $08 $c2
	ld   c, a                                        ; $5032: $4f
	push af                                          ; $5033: $f5
	ld   a, $7a                                      ; $5034: $3e $7a
	ld   [wFarCallAddr], a                                  ; $5036: $ea $98 $c2
	ld   a, $40                                      ; $5039: $3e $40
	ld   [wFarCallAddr+1], a                                  ; $503b: $ea $99 $c2
	ld   a, $01                                      ; $503e: $3e $01
	ld   [wFarCallBank], a                                  ; $5040: $ea $9a $c2
	pop  af                                          ; $5043: $f1
	call FarCall                                       ; $5044: $cd $62 $09
	ret                                              ; $5047: $c9


Jump_005_5048:
	ld   c, $01                                      ; $5048: $0e $01
	ld   de, $9940                                   ; $504a: $11 $40 $99
	ld   a, $0d                                      ; $504d: $3e $0d
	ld   hl, $4200                                   ; $504f: $21 $00 $42
	ld   b, $10                                      ; $5052: $06 $10
	call EnqueueHDMATransfer                                       ; $5054: $cd $7c $02
	ld   c, $81                                      ; $5057: $0e $81
	ld   de, $9960                                   ; $5059: $11 $60 $99
	ld   a, $02                                      ; $505c: $3e $02
	ld   hl, $d280                                   ; $505e: $21 $80 $d2
	ld   b, $0c                                      ; $5061: $06 $0c
	call EnqueueHDMATransfer                                       ; $5063: $cd $7c $02
	ld   c, $00                                      ; $5066: $0e $00
	ld   de, $9940                                   ; $5068: $11 $40 $99
	ld   a, $0d                                      ; $506b: $3e $0d
	ld   hl, $4100                                   ; $506d: $21 $00 $41
	ld   b, $10                                      ; $5070: $06 $10
	call EnqueueHDMATransfer                                       ; $5072: $cd $7c $02
	ld   hl, wIE                                   ; $5075: $21 $0d $c2
	res  1, [hl]                                     ; $5078: $cb $8e
	ld   a, [wLCDC]                                  ; $507a: $fa $03 $c2
	and  $9f                                         ; $507d: $e6 $9f
	ld   [wLCDC], a                                  ; $507f: $ea $03 $c2
	xor  a                                           ; $5082: $af
	ld   [wSCX], a                                  ; $5083: $ea $07 $c2
	ld   [wSCY], a                                  ; $5086: $ea $08 $c2
	ld   bc, $0000                                   ; $5089: $01 $00 $00
	push af                                          ; $508c: $f5
	ld   a, $7a                                      ; $508d: $3e $7a
	ld   [wFarCallAddr], a                                  ; $508f: $ea $98 $c2
	ld   a, $40                                      ; $5092: $3e $40
	ld   [wFarCallAddr+1], a                                  ; $5094: $ea $99 $c2
	ld   a, $01                                      ; $5097: $3e $01
	ld   [wFarCallBank], a                                  ; $5099: $ea $9a $c2
	pop  af                                          ; $509c: $f1
	call FarCall                                       ; $509d: $cd $62 $09
	jp   Jump_005_539c                               ; $50a0: $c3 $9c $53


LCDCFunc0e::
	ld   hl, $c20b                                   ; $50a3: $21 $0b $c2
	ldh  a, [rLY]                                    ; $50a6: $f0 $44
	cp   [hl]                                        ; $50a8: $be
	jp   nz, LCDCInterruptHandler.return                                   ; $50a9: $c2 $4a $04

jr_005_50ac:
	ldh  a, [rSTAT]                                  ; $50ac: $f0 $41
	and  $03                                         ; $50ae: $e6 $03
	jr   z, jr_005_50ac                              ; $50b0: $28 $fa

jr_005_50b2:
	ldh  a, [rSTAT]                                  ; $50b2: $f0 $41
	and  $03                                         ; $50b4: $e6 $03
	jr   nz, jr_005_50b2                             ; $50b6: $20 $fa

	ld   hl, $ff40                                   ; $50b8: $21 $40 $ff
	res  1, [hl]                                     ; $50bb: $cb $8e
	jp   LCDCInterruptHandler.return                                       ; $50bd: $c3 $4a $04


Func_05_50c0::
	ld   bc, $50d3                                   ; $50c0: $01 $d3 $50
	push bc                                          ; $50c3: $c5
	ld   a, [$cc24]                                  ; $50c4: $fa $24 $cc
	ld   b, $00                                      ; $50c7: $06 $00
	ld   c, a                                        ; $50c9: $4f
	ld   hl, $50d9                                   ; $50ca: $21 $d9 $50
	add  hl, bc                                      ; $50cd: $09
	add  hl, bc                                      ; $50ce: $09
	ld   a, [hl+]                                    ; $50cf: $2a
	ld   h, [hl]                                     ; $50d0: $66
	ld   l, a                                        ; $50d1: $6f
	jp   hl                                          ; $50d2: $e9


	ld   a, [$cc24]                                  ; $50d3: $fa $24 $cc
	sub  $02                                         ; $50d6: $d6 $02
	ret                                              ; $50d8: $c9


	db   $dd                                         ; $50d9: $dd
	ld   d, b                                        ; $50da: $50
	and  $50                                         ; $50db: $e6 $50
	call Call_005_4e92                               ; $50dd: $cd $92 $4e
	ld   a, $0a                                      ; $50e0: $3e $0a
	ld   [$cc26], a                                  ; $50e2: $ea $26 $cc
	ret                                              ; $50e5: $c9


	jp   Jump_005_4ffa                               ; $50e6: $c3 $fa $4f


Func_05_50e9::
	ld   bc, $50fc                                   ; $50e9: $01 $fc $50
	push bc                                          ; $50ec: $c5
	ld   a, [$cc24]                                  ; $50ed: $fa $24 $cc
	ld   b, $00                                      ; $50f0: $06 $00
	ld   c, a                                        ; $50f2: $4f
	ld   hl, $5102                                   ; $50f3: $21 $02 $51
	add  hl, bc                                      ; $50f6: $09
	add  hl, bc                                      ; $50f7: $09
	ld   a, [hl+]                                    ; $50f8: $2a
	ld   h, [hl]                                     ; $50f9: $66
	ld   l, a                                        ; $50fa: $6f
	jp   hl                                          ; $50fb: $e9


	ld   a, [$cc24]                                  ; $50fc: $fa $24 $cc
	sub  $02                                         ; $50ff: $d6 $02
	ret                                              ; $5101: $c9


	ld   b, $51                                      ; $5102: $06 $51
	rrca                                             ; $5104: $0f
	ld   d, c                                        ; $5105: $51
	call Call_005_4b55                               ; $5106: $cd $55 $4b
	ld   a, $11                                      ; $5109: $3e $11
	ld   [$cc26], a                                  ; $510b: $ea $26 $cc
	ret                                              ; $510e: $c9


	jp   Jump_005_4b97                               ; $510f: $c3 $97 $4b


Func_05_5112::
	ld   bc, $5125                                   ; $5112: $01 $25 $51
	push bc                                          ; $5115: $c5
	ld   a, [$cc24]                                  ; $5116: $fa $24 $cc
	ld   b, $00                                      ; $5119: $06 $00
	ld   c, a                                        ; $511b: $4f
	ld   hl, $512b                                   ; $511c: $21 $2b $51
	add  hl, bc                                      ; $511f: $09
	add  hl, bc                                      ; $5120: $09
	ld   a, [hl+]                                    ; $5121: $2a
	ld   h, [hl]                                     ; $5122: $66
	ld   l, a                                        ; $5123: $6f
	jp   hl                                          ; $5124: $e9


	ld   a, [$cc24]                                  ; $5125: $fa $24 $cc
	sub  $03                                         ; $5128: $d6 $03
	ret                                              ; $512a: $c9


	ld   sp, $9851                                   ; $512b: $31 $51 $98
	ld   d, c                                        ; $512e: $51
	and  e                                           ; $512f: $a3
	ld   d, c                                        ; $5130: $51
	ld   a, [$cc25]                                  ; $5131: $fa $25 $cc
	or   a                                           ; $5134: $b7
	jr   nz, jr_005_516d                             ; $5135: $20 $36

	ld   a, [wWramBank]                                  ; $5137: $fa $93 $c2
	push af                                          ; $513a: $f5
	ld   a, $02                                      ; $513b: $3e $02
	ld   [wWramBank], a                                  ; $513d: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5140: $e0 $70
	ld   de, $da00                                   ; $5142: $11 $00 $da
	ld   hl, wBGPalettes                                   ; $5145: $21 $de $c2
	ld   bc, $0080                                   ; $5148: $01 $80 $00
	call MemCopy                                       ; $514b: $cd $a9 $09
	pop  af                                          ; $514e: $f1
	ld   [wWramBank], a                                  ; $514f: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5152: $e0 $70
	ld   a, $0c                                      ; $5154: $3e $0c
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $5156: $ea $62 $c3
	ld   a, $28                                      ; $5159: $3e $28
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $515b: $ea $63 $c3
	ld   a, $03                                      ; $515e: $3e $03
	ld   b, $00                                      ; $5160: $06 $00
	ld   hl, wBGPalettes                                   ; $5162: $21 $de $c2
	ld   c, $01                                      ; $5165: $0e $01
	ld   de, $7000                                   ; $5167: $11 $00 $70
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $516a: $cd $48 $07

jr_005_516d:
	ld   hl, $cc25                                   ; $516d: $21 $25 $cc
	ld   a, [hl]                                     ; $5170: $7e
	inc  [hl]                                        ; $5171: $34
	and  $07                                         ; $5172: $e6 $07
	ret  nz                                          ; $5174: $c0

	ld   a, [hl]                                     ; $5175: $7e
	cp   $3f                                         ; $5176: $fe $3f
	jr   nc, jr_005_5181                             ; $5178: $30 $07

	ld   bc, $0c28                                   ; $517a: $01 $28 $0c
	call FadePalettesAndSetRangeToUpdate                                       ; $517d: $cd $32 $08
	ret                                              ; $5180: $c9


jr_005_5181:
	ld   a, $01                                      ; $5181: $3e $01
	ld   hl, $7000                                   ; $5183: $21 $00 $70
	ld   de, wBGPalettes+3*8                                   ; $5186: $11 $f6 $c2
	ld   bc, $0050                                   ; $5189: $01 $50 $00
	call FarMemCopy                                       ; $518c: $cd $b2 $09
	ld   bc, $0c33                                   ; $518f: $01 $33 $0c
	call SetBGandOBJPaletteRangesToUpdate                                       ; $5192: $cd $aa $04
	jp   Jump_005_539c                               ; $5195: $c3 $9c $53


	ld   hl, $cc25                                   ; $5198: $21 $25 $cc
	ld   a, [hl]                                     ; $519b: $7e
	inc  [hl]                                        ; $519c: $34
	cp   $3c                                         ; $519d: $fe $3c
	jp   nc, Jump_005_539c                           ; $519f: $d2 $9c $53

	ret                                              ; $51a2: $c9


	ld   a, [$cc25]                                  ; $51a3: $fa $25 $cc
	or   a                                           ; $51a6: $b7
	jr   nz, jr_005_51d3                             ; $51a7: $20 $2a

	ld   a, [wWramBank]                                  ; $51a9: $fa $93 $c2
	push af                                          ; $51ac: $f5
	ld   a, $02                                      ; $51ad: $3e $02
	ld   [wWramBank], a                                  ; $51af: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $51b2: $e0 $70
	ld   a, $0c                                      ; $51b4: $3e $0c
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $51b6: $ea $62 $c3
	ld   a, $28                                      ; $51b9: $3e $28
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $51bb: $ea $63 $c3
	ld   a, $03                                      ; $51be: $3e $03
	ld   b, $00                                      ; $51c0: $06 $00
	ld   hl, wBGPalettes                                   ; $51c2: $21 $de $c2
	ld   c, $00                                      ; $51c5: $0e $00
	ld   de, $da00                                   ; $51c7: $11 $00 $da
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $51ca: $cd $48 $07
	pop  af                                          ; $51cd: $f1
	ld   [wWramBank], a                                  ; $51ce: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $51d1: $e0 $70

jr_005_51d3:
	ld   hl, $cc25                                   ; $51d3: $21 $25 $cc
	ld   a, [hl]                                     ; $51d6: $7e
	inc  [hl]                                        ; $51d7: $34
	and  $07                                         ; $51d8: $e6 $07
	ret  nz                                          ; $51da: $c0

	ld   a, [hl]                                     ; $51db: $7e
	cp   $3f                                         ; $51dc: $fe $3f
	jr   nc, jr_005_51e7                             ; $51de: $30 $07

	ld   bc, $0c28                                   ; $51e0: $01 $28 $0c
	call FadePalettesAndSetRangeToUpdate                                       ; $51e3: $cd $32 $08
	ret                                              ; $51e6: $c9


jr_005_51e7:
	ld   a, [wWramBank]                                  ; $51e7: $fa $93 $c2
	push af                                          ; $51ea: $f5
	ld   a, $02                                      ; $51eb: $3e $02
	ld   [wWramBank], a                                  ; $51ed: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $51f0: $e0 $70
	ld   hl, $da18                                   ; $51f2: $21 $18 $da
	ld   de, wBGPalettes+3*8                                   ; $51f5: $11 $f6 $c2
	ld   bc, $0050                                   ; $51f8: $01 $50 $00
	call FarMemCopy                                       ; $51fb: $cd $b2 $09
	ld   bc, $0c33                                   ; $51fe: $01 $33 $0c
	call SetBGandOBJPaletteRangesToUpdate                                       ; $5201: $cd $aa $04
	pop  af                                          ; $5204: $f1
	ld   [wWramBank], a                                  ; $5205: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5208: $e0 $70
	jp   Jump_005_539c                               ; $520a: $c3 $9c $53


Func_05_520d::
	ld   bc, $5220                                   ; $520d: $01 $20 $52
	push bc                                          ; $5210: $c5
	ld   a, [$cc24]                                  ; $5211: $fa $24 $cc
	ld   b, $00                                      ; $5214: $06 $00
	ld   c, a                                        ; $5216: $4f
	ld   hl, $5226                                   ; $5217: $21 $26 $52
	add  hl, bc                                      ; $521a: $09
	add  hl, bc                                      ; $521b: $09
	ld   a, [hl+]                                    ; $521c: $2a
	ld   h, [hl]                                     ; $521d: $66
	ld   l, a                                        ; $521e: $6f
	jp   hl                                          ; $521f: $e9


	ld   a, [$cc24]                                  ; $5220: $fa $24 $cc
	sub  $08                                         ; $5223: $d6 $08
	ret                                              ; $5225: $c9


	ld   [hl], $52                                   ; $5226: $36 $52
	add  hl, sp                                      ; $5228: $39
	ld   d, d                                        ; $5229: $52
	and  d                                           ; $522a: $a2
	ld   d, d                                        ; $522b: $52
	add  hl, sp                                      ; $522c: $39
	ld   d, d                                        ; $522d: $52
	and  d                                           ; $522e: $a2
	ld   d, d                                        ; $522f: $52
	add  hl, sp                                      ; $5230: $39
	ld   d, d                                        ; $5231: $52
	and  d                                           ; $5232: $a2
	ld   d, d                                        ; $5233: $52
	xor  l                                           ; $5234: $ad
	ld   d, d                                        ; $5235: $52
	jp   Jump_005_4e92                               ; $5236: $c3 $92 $4e


	ld   hl, $cc25                                   ; $5239: $21 $25 $cc
	ld   a, [hl]                                     ; $523c: $7e
	inc  [hl]                                        ; $523d: $34
	cp   $1e                                         ; $523e: $fe $1e
	jr   nc, jr_005_5281                             ; $5240: $30 $3f

	or   a                                           ; $5242: $b7
	jr   nz, jr_005_524a                             ; $5243: $20 $05

	ld   a, $4d                                      ; $5245: $3e $4d
	call PlaySoundEffect                                       ; $5247: $cd $df $1a

jr_005_524a:
	ld   a, $05                                      ; $524a: $3e $05
	ld   [wRandomNumRange], a                                  ; $524c: $ea $a5 $c2
	call GetRandomNumInPreSpecifiedRange                                       ; $524f: $cd $10 $0d
	sub  $02                                         ; $5252: $d6 $02
	ld   [wSCX], a                                  ; $5254: $ea $07 $c2
	ld   a, $09                                      ; $5257: $3e $09
	ld   [wRandomNumRange], a                                  ; $5259: $ea $a5 $c2
	call GetRandomNumInPreSpecifiedRange                                       ; $525c: $cd $10 $0d
	sub  $04                                         ; $525f: $d6 $04
	ld   [wSCY], a                                  ; $5261: $ea $08 $c2
	ld   a, [wSCX]                                  ; $5264: $fa $07 $c2
	ld   b, a                                        ; $5267: $47
	ld   a, [wSCY]                                  ; $5268: $fa $08 $c2
	ld   c, a                                        ; $526b: $4f
	push af                                          ; $526c: $f5
	ld   a, $7a                                      ; $526d: $3e $7a
	ld   [wFarCallAddr], a                                  ; $526f: $ea $98 $c2
	ld   a, $40                                      ; $5272: $3e $40
	ld   [wFarCallAddr+1], a                                  ; $5274: $ea $99 $c2
	ld   a, $01                                      ; $5277: $3e $01
	ld   [wFarCallBank], a                                  ; $5279: $ea $9a $c2
	pop  af                                          ; $527c: $f1
	call FarCall                                       ; $527d: $cd $62 $09
	ret                                              ; $5280: $c9


jr_005_5281:
	xor  a                                           ; $5281: $af
	ld   [wSCX], a                                  ; $5282: $ea $07 $c2
	ld   [wSCY], a                                  ; $5285: $ea $08 $c2
	ld   bc, $0000                                   ; $5288: $01 $00 $00
	push af                                          ; $528b: $f5
	ld   a, $7a                                      ; $528c: $3e $7a
	ld   [wFarCallAddr], a                                  ; $528e: $ea $98 $c2
	ld   a, $40                                      ; $5291: $3e $40
	ld   [wFarCallAddr+1], a                                  ; $5293: $ea $99 $c2
	ld   a, $01                                      ; $5296: $3e $01
	ld   [wFarCallBank], a                                  ; $5298: $ea $9a $c2
	pop  af                                          ; $529b: $f1
	call FarCall                                       ; $529c: $cd $62 $09
	jp   nc, Jump_005_539c                           ; $529f: $d2 $9c $53

	ld   hl, $cc25                                   ; $52a2: $21 $25 $cc
	ld   a, [hl]                                     ; $52a5: $7e
	inc  [hl]                                        ; $52a6: $34
	cp   $1e                                         ; $52a7: $fe $1e
	ret  c                                           ; $52a9: $d8

	jp   Jump_005_539c                               ; $52aa: $c3 $9c $53


	ld   c, $01                                      ; $52ad: $0e $01
	ld   de, $9940                                   ; $52af: $11 $40 $99
	ld   a, $0d                                      ; $52b2: $3e $0d
	ld   hl, $4200                                   ; $52b4: $21 $00 $42
	ld   b, $10                                      ; $52b7: $06 $10
	call EnqueueHDMATransfer                                       ; $52b9: $cd $7c $02
	ld   c, $81                                      ; $52bc: $0e $81
	ld   de, $9960                                   ; $52be: $11 $60 $99
	ld   a, $02                                      ; $52c1: $3e $02
	ld   hl, $d280                                   ; $52c3: $21 $80 $d2
	ld   b, $0c                                      ; $52c6: $06 $0c
	call EnqueueHDMATransfer                                       ; $52c8: $cd $7c $02
	ld   c, $00                                      ; $52cb: $0e $00
	ld   de, $9940                                   ; $52cd: $11 $40 $99
	ld   a, $0d                                      ; $52d0: $3e $0d
	ld   hl, $4100                                   ; $52d2: $21 $00 $41
	ld   b, $10                                      ; $52d5: $06 $10
	call EnqueueHDMATransfer                                       ; $52d7: $cd $7c $02
	ld   hl, wIE                                   ; $52da: $21 $0d $c2
	res  1, [hl]                                     ; $52dd: $cb $8e
	ld   a, [wLCDC]                                  ; $52df: $fa $03 $c2
	and  $9f                                         ; $52e2: $e6 $9f
	ld   [wLCDC], a                                  ; $52e4: $ea $03 $c2
	jp   Jump_005_539c                               ; $52e7: $c3 $9c $53


Func_05_52ea::
	ld   bc, $52fd                                   ; $52ea: $01 $fd $52
	push bc                                          ; $52ed: $c5
	ld   a, [$cc24]                                  ; $52ee: $fa $24 $cc
	ld   b, $00                                      ; $52f1: $06 $00
	ld   c, a                                        ; $52f3: $4f
	ld   hl, $5303                                   ; $52f4: $21 $03 $53
	add  hl, bc                                      ; $52f7: $09
	add  hl, bc                                      ; $52f8: $09
	ld   a, [hl+]                                    ; $52f9: $2a
	ld   h, [hl]                                     ; $52fa: $66
	ld   l, a                                        ; $52fb: $6f
	jp   hl                                          ; $52fc: $e9


	ld   a, [$cc24]                                  ; $52fd: $fa $24 $cc
	sub  $02                                         ; $5300: $d6 $02
	ret                                              ; $5302: $c9


	rlca                                             ; $5303: $07
	ld   d, e                                        ; $5304: $53
	inc  l                                           ; $5305: $2c
	ld   d, e                                        ; $5306: $53
	ld   a, [wWramBank]                                  ; $5307: $fa $93 $c2
	push af                                          ; $530a: $f5
	ld   a, $07                                      ; $530b: $3e $07
	ld   [wWramBank], a                                  ; $530d: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5310: $e0 $70
	ld   hl, $d000                                   ; $5312: $21 $00 $d0
	ld   bc, $0040                                   ; $5315: $01 $40 $00
	ld   de, $02fc                                   ; $5318: $11 $fc $02
	call CopyEthenDintoHL_BCtimes                                       ; $531b: $cd $9f $09
	pop  af                                          ; $531e: $f1
	ld   [wWramBank], a                                  ; $531f: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5322: $e0 $70
	ld   a, $4a                                      ; $5324: $3e $4a
	ld   [$cc26], a                                  ; $5326: $ea $26 $cc
	jp   Jump_005_539c                               ; $5329: $c3 $9c $53


	ld   hl, $cc25                                   ; $532c: $21 $25 $cc
	ld   a, [hl]                                     ; $532f: $7e
	inc  [hl]                                        ; $5330: $34
	or   a                                           ; $5331: $b7
	jr   nz, jr_005_533c                             ; $5332: $20 $08

	push af                                          ; $5334: $f5
	ld   a, [$cc26]                                  ; $5335: $fa $26 $cc
	call PlaySoundEffect                                       ; $5338: $cd $df $1a
	pop  af                                          ; $533b: $f1

jr_005_533c:
	srl  a                                           ; $533c: $cb $3f
	srl  a                                           ; $533e: $cb $3f
	ld   h, $00                                      ; $5340: $26 $00
	ld   l, a                                        ; $5342: $6f
	ld   bc, $538b                                   ; $5343: $01 $8b $53
	add  hl, bc                                      ; $5346: $09
	ld   a, [hl]                                     ; $5347: $7e
	bit  7, a                                        ; $5348: $cb $7f
	jp   nz, Jump_005_539c                           ; $534a: $c2 $9c $53

	or   a                                           ; $534d: $b7
	jr   nz, jr_005_5376                             ; $534e: $20 $26

	ld   a, [wWramBank]                                  ; $5350: $fa $93 $c2
	push af                                          ; $5353: $f5
	ld   a, $07                                      ; $5354: $3e $07
	ld   [wWramBank], a                                  ; $5356: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5359: $e0 $70
	ld   a, $00                                      ; $535b: $3e $00
	ld   hl, $d000                                   ; $535d: $21 $00 $d0
	ld   de, wBGPalettes+3*8                                   ; $5360: $11 $f6 $c2
	ld   bc, $0050                                   ; $5363: $01 $50 $00
	call FarMemCopy                                       ; $5366: $cd $b2 $09
	ld   bc, $0c33                                   ; $5369: $01 $33 $0c
	call SetBGandOBJPaletteRangesToUpdate                                       ; $536c: $cd $aa $04
	pop  af                                          ; $536f: $f1
	ld   [wWramBank], a                                  ; $5370: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5373: $e0 $70
	ret                                              ; $5375: $c9


jr_005_5376:
	ld   a, $01                                      ; $5376: $3e $01
	ld   hl, $7000                                   ; $5378: $21 $00 $70
	ld   de, wBGPalettes+3*8                                   ; $537b: $11 $f6 $c2
	ld   bc, $0050                                   ; $537e: $01 $50 $00
	call FarMemCopy                                       ; $5381: $cd $b2 $09
	ld   bc, $0c33                                   ; $5384: $01 $33 $0c
	call SetBGandOBJPaletteRangesToUpdate                                       ; $5387: $cd $aa $04
	ret                                              ; $538a: $c9


	nop                                              ; $538b: $00
	ld   bc, $0100                                   ; $538c: $01 $00 $01
	nop                                              ; $538f: $00
	ld   bc, $0100                                   ; $5390: $01 $00 $01
	nop                                              ; $5393: $00
	ld   bc, $0100                                   ; $5394: $01 $00 $01
	nop                                              ; $5397: $00
	ld   bc, $0100                                   ; $5398: $01 $00 $01
	rst  $38                                         ; $539b: $ff

Jump_005_539c:
	ld   hl, $cc24                                   ; $539c: $21 $24 $cc
	inc  [hl]                                        ; $539f: $34
	xor  a                                           ; $53a0: $af
	ld   [$cc25], a                                  ; $53a1: $ea $25 $cc
	ret                                              ; $53a4: $c9


GameState43::
	ld   a, [wGameSubstate]                                  ; $53a5: $fa $a1 $c2
	or   a                                           ; $53a8: $b7
	jp   nz, Jump_005_72e6                           ; $53a9: $c2 $e6 $72

	ld   a, [wWramBank]                                  ; $53ac: $fa $93 $c2
	push af                                          ; $53af: $f5
	ld   a, $02                                      ; $53b0: $3e $02
	ld   [wWramBank], a                                  ; $53b2: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $53b5: $e0 $70
	call TurnOffLCD                                       ; $53b7: $cd $e3 $08
	call ClearDisplayRegsAllowVBlankInt                                       ; $53ba: $cd $59 $0b
	ld   a, [wLCDC]                                  ; $53bd: $fa $03 $c2
	and  $80                                         ; $53c0: $e6 $80
	or   $27                                         ; $53c2: $f6 $27
	ld   [wLCDC], a                                  ; $53c4: $ea $03 $c2
	ld   a, $00                                      ; $53c7: $3e $00
	call SafeSetAudVolForMultipleChannels                                       ; $53c9: $cd $e0 $1c
	ld   a, $07                                      ; $53cc: $3e $07
	ld   [$c20b], a                                  ; $53ce: $ea $0b $c2
	ld   hl, $c20c                                   ; $53d1: $21 $0c $c2
	set  6, [hl]                                     ; $53d4: $cb $f6
	ld   hl, wIE                                   ; $53d6: $21 $0d $c2
	set  1, [hl]                                     ; $53d9: $cb $ce
	ld   a, $11                                      ; $53db: $3e $11
	ld   [wLCDCIntFuncIdx], a                                  ; $53dd: $ea $8d $c2
	ld   a, $70                                      ; $53e0: $3e $70
	ld   [wSCY], a                                  ; $53e2: $ea $08 $c2
	ld   a, $07                                      ; $53e5: $3e $07
	ld   [wWX], a                                  ; $53e7: $ea $09 $c2
	ld   a, $78                                      ; $53ea: $3e $78
	ld   [wWY], a                                  ; $53ec: $ea $0a $c2
	ld   a, $ff                                      ; $53ef: $3e $ff
	ld   [wInGameInputsEnabled], a                                  ; $53f1: $ea $0e $c2
	call ClearOam                                       ; $53f4: $cd $d7 $0d
	call ClearBaseAnimSpriteSpecDetails                                       ; $53f7: $cd $c9 $2e
	ld   a, $01                                      ; $53fa: $3e $01
	ldh  [rVBK], a                                   ; $53fc: $e0 $4f
	ld   hl, $8800                                   ; $53fe: $21 $00 $88
	ld   bc, $0800                                   ; $5401: $01 $00 $08
	ld   de, $0000                                   ; $5404: $11 $00 $00
	call CopyEthenDintoHL_BCtimes                                       ; $5407: $cd $9f $09
	ld   a, [wWramBank]                                  ; $540a: $fa $93 $c2
	push af                                          ; $540d: $f5
	ld   a, $07                                      ; $540e: $3e $07
	ld   [wWramBank], a                                  ; $5410: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5413: $e0 $70
	ld   a, $94                                      ; $5415: $3e $94
	ld   hl, $d000                                   ; $5417: $21 $00 $d0
	ld   de, $6cf3                                   ; $541a: $11 $f3 $6c
	call RLEXorCopy                                       ; $541d: $cd $d2 $09
	ld   c, $80                                      ; $5420: $0e $80
	ld   de, $8000                                   ; $5422: $11 $00 $80
	ld   a, $07                                      ; $5425: $3e $07
	ld   hl, $d000                                   ; $5427: $21 $00 $d0
	ld   b, $80                                      ; $542a: $06 $80
	call EnqueueHDMATransfer                                       ; $542c: $cd $7c $02
	ld   c, $80                                      ; $542f: $0e $80
	ld   de, $8800                                   ; $5431: $11 $00 $88
	ld   a, $07                                      ; $5434: $3e $07
	ld   hl, $d800                                   ; $5436: $21 $00 $d8
	ld   b, $80                                      ; $5439: $06 $80
	call EnqueueHDMATransfer                                       ; $543b: $cd $7c $02
	ld   hl, $d000                                   ; $543e: $21 $00 $d0
	ld   a, $99                                      ; $5441: $3e $99
	ld   de, $6df0                                   ; $5443: $11 $f0 $6d
	ld   bc, $1420                                   ; $5446: $01 $20 $14
	call FarCopyLayout                                       ; $5449: $cd $2c $0b
	ld   hl, $d400                                   ; $544c: $21 $00 $d4
	call FarCopyLayout                                       ; $544f: $cd $2c $0b
	ld   c, $81                                      ; $5452: $0e $81
	ld   de, $9800                                   ; $5454: $11 $00 $98
	ld   a, $07                                      ; $5457: $3e $07
	ld   hl, $d000                                   ; $5459: $21 $00 $d0
	ld   b, $40                                      ; $545c: $06 $40
	call EnqueueHDMATransfer                                       ; $545e: $cd $7c $02
	ld   c, $80                                      ; $5461: $0e $80
	ld   de, $9800                                   ; $5463: $11 $00 $98
	ld   a, $07                                      ; $5466: $3e $07
	ld   hl, $d400                                   ; $5468: $21 $00 $d4
	ld   b, $40                                      ; $546b: $06 $40
	call EnqueueHDMATransfer                                       ; $546d: $cd $7c $02
	call Call_005_54ec                               ; $5470: $cd $ec $54
	call Call_005_5569                               ; $5473: $cd $69 $55
	ld   c, $81                                      ; $5476: $0e $81
	ld   de, $9c00                                   ; $5478: $11 $00 $9c
	ld   a, $07                                      ; $547b: $3e $07
	ld   hl, $d000                                   ; $547d: $21 $00 $d0
	ld   b, $40                                      ; $5480: $06 $40
	call EnqueueHDMATransfer                                       ; $5482: $cd $7c $02
	ld   c, $80                                      ; $5485: $0e $80
	ld   de, $9c00                                   ; $5487: $11 $00 $9c
	ld   a, $07                                      ; $548a: $3e $07
	ld   hl, $d400                                   ; $548c: $21 $00 $d4
	ld   b, $40                                      ; $548f: $06 $40
	call EnqueueHDMATransfer                                       ; $5491: $cd $7c $02
	pop  af                                          ; $5494: $f1
	ld   [wWramBank], a                                  ; $5495: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5498: $e0 $70
	ld   a, $01                                      ; $549a: $3e $01
	ld   hl, $7000                                   ; $549c: $21 $00 $70
	ld   de, wBGPalettes                                   ; $549f: $11 $de $c2
	ld   bc, $0080                                   ; $54a2: $01 $80 $00
	call FarMemCopy                                       ; $54a5: $cd $b2 $09
	ld   bc, $003f                                   ; $54a8: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $54ab: $cd $aa $04
	xor  a                                           ; $54ae: $af
	ld   [$cc6b], a                                  ; $54af: $ea $6b $cc
	ld   [$cc6c], a                                  ; $54b2: $ea $6c $cc
	ld   [$cc6d], a                                  ; $54b5: $ea $6d $cc
	ld   a, $08                                      ; $54b8: $3e $08
	ld   [$cc6f], a                                  ; $54ba: $ea $6f $cc
	ld   a, $f8                                      ; $54bd: $3e $f8
	ld   [$cc6e], a                                  ; $54bf: $ea $6e $cc
	ld   a, [$cc6c]                                  ; $54c2: $fa $6c $cc
	call Call_005_55c2                               ; $54c5: $cd $c2 $55
	call Call_005_5752                               ; $54c8: $cd $52 $57
	xor  a                                           ; $54cb: $af
	ld   [$cc70], a                                  ; $54cc: $ea $70 $cc
	call Call_005_75ad                               ; $54cf: $cd $ad $75
	ld   a, $08                                      ; $54d2: $3e $08
	call PlaySong                                       ; $54d4: $cd $92 $1a
	call TurnOnLCD                                       ; $54d7: $cd $09 $09
	xor  a                                           ; $54da: $af
	ld   [$cc67], a                                  ; $54db: $ea $67 $cc
	ld   [$cc68], a                                  ; $54de: $ea $68 $cc
	ld   hl, wGameSubstate                                   ; $54e1: $21 $a1 $c2
	inc  [hl]                                        ; $54e4: $34
	pop  af                                          ; $54e5: $f1
	ld   [wWramBank], a                                  ; $54e6: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $54e9: $e0 $70
	ret                                              ; $54eb: $c9


Call_005_54ec:
	ld   a, [wWramBank]                                  ; $54ec: $fa $93 $c2
	push af                                          ; $54ef: $f5
	ld   a, $07                                      ; $54f0: $3e $07
	ld   [wWramBank], a                                  ; $54f2: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $54f5: $e0 $70
	ld   hl, $d000                                   ; $54f7: $21 $00 $d0
	ld   de, $000c                                   ; $54fa: $11 $0c $00
	ld   b, $20                                      ; $54fd: $06 $20

jr_005_54ff:
	call Call_005_550d                               ; $54ff: $cd $0d $55
	add  hl, de                                      ; $5502: $19
	dec  b                                           ; $5503: $05
	jr   nz, jr_005_54ff                             ; $5504: $20 $f9

	pop  af                                          ; $5506: $f1
	ld   [wWramBank], a                                  ; $5507: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $550a: $e0 $70
	ret                                              ; $550c: $c9


Call_005_550d:
	ld   a, $01                                      ; $550d: $3e $01
	ld   [hl+], a                                    ; $550f: $22
	ld   [hl+], a                                    ; $5510: $22
	xor  a                                           ; $5511: $af
	ld   [hl+], a                                    ; $5512: $22
	ld   [hl+], a                                    ; $5513: $22
	ld   [hl+], a                                    ; $5514: $22
	set  3, a                                        ; $5515: $cb $df
	ld   [hl+], a                                    ; $5517: $22
	ld   [hl+], a                                    ; $5518: $22
	ld   [hl+], a                                    ; $5519: $22
	ld   [hl+], a                                    ; $551a: $22
	ld   [hl+], a                                    ; $551b: $22
	ld   [hl+], a                                    ; $551c: $22
	ld   [hl+], a                                    ; $551d: $22
	ld   [hl+], a                                    ; $551e: $22
	ld   [hl+], a                                    ; $551f: $22
	ld   [hl+], a                                    ; $5520: $22
	res  3, a                                        ; $5521: $cb $9f
	ld   [hl+], a                                    ; $5523: $22
	ld   [hl+], a                                    ; $5524: $22
	ld   a, $01                                      ; $5525: $3e $01
	ld   [hl+], a                                    ; $5527: $22
	ld   [hl+], a                                    ; $5528: $22
	ld   [hl+], a                                    ; $5529: $22
	ret                                              ; $552a: $c9


Call_005_552b:
	ld   a, [wWramBank]                                  ; $552b: $fa $93 $c2
	push af                                          ; $552e: $f5
	ld   a, $07                                      ; $552f: $3e $07
	ld   [wWramBank], a                                  ; $5531: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5534: $e0 $70
	ld   hl, $d400                                   ; $5536: $21 $00 $d4
	ld   de, $000c                                   ; $5539: $11 $0c $00
	ld   b, $20                                      ; $553c: $06 $20

jr_005_553e:
	ld   a, $f8                                      ; $553e: $3e $f8
	ld   [hl+], a                                    ; $5540: $22
	ld   a, $fa                                      ; $5541: $3e $fa
	ld   [hl+], a                                    ; $5543: $22
	ld   a, $80                                      ; $5544: $3e $80
	ld   [hl+], a                                    ; $5546: $22
	ld   [hl+], a                                    ; $5547: $22
	ld   [hl+], a                                    ; $5548: $22
	ld   [hl+], a                                    ; $5549: $22
	ld   [hl+], a                                    ; $554a: $22
	ld   [hl+], a                                    ; $554b: $22
	ld   [hl+], a                                    ; $554c: $22
	ld   [hl+], a                                    ; $554d: $22
	ld   [hl+], a                                    ; $554e: $22
	ld   [hl+], a                                    ; $554f: $22
	ld   [hl+], a                                    ; $5550: $22
	ld   [hl+], a                                    ; $5551: $22
	ld   [hl+], a                                    ; $5552: $22
	ld   [hl+], a                                    ; $5553: $22
	ld   [hl+], a                                    ; $5554: $22
	ld   a, $fb                                      ; $5555: $3e $fb
	ld   [hl+], a                                    ; $5557: $22
	ld   a, $dc                                      ; $5558: $3e $dc
	ld   [hl+], a                                    ; $555a: $22
	ld   a, $ea                                      ; $555b: $3e $ea
	ld   [hl+], a                                    ; $555d: $22
	add  hl, de                                      ; $555e: $19
	dec  b                                           ; $555f: $05
	jr   nz, jr_005_553e                             ; $5560: $20 $dc

	pop  af                                          ; $5562: $f1
	ld   [wWramBank], a                                  ; $5563: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5566: $e0 $70
	ret                                              ; $5568: $c9


Call_005_5569:
	ld   a, [wWramBank]                                  ; $5569: $fa $93 $c2
	push af                                          ; $556c: $f5
	ld   a, $07                                      ; $556d: $3e $07
	ld   [wWramBank], a                                  ; $556f: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5572: $e0 $70
	call Call_005_552b                               ; $5574: $cd $2b $55
	ld   hl, $d405                                   ; $5577: $21 $05 $d4
	ld   de, $0016                                   ; $557a: $11 $16 $00
	ld   b, $10                                      ; $557d: $06 $10
	ld   c, $02                                      ; $557f: $0e $02
	ld   a, $e0                                      ; $5581: $3e $e0

jr_005_5583:
	call Call_005_5597                               ; $5583: $cd $97 $55
	cp   $80                                         ; $5586: $fe $80
	jr   nz, jr_005_558c                             ; $5588: $20 $02

	ld   a, $e0                                      ; $558a: $3e $e0

jr_005_558c:
	add  hl, de                                      ; $558c: $19
	dec  b                                           ; $558d: $05
	jr   nz, jr_005_5583                             ; $558e: $20 $f3

	pop  af                                          ; $5590: $f1
	ld   [wWramBank], a                                  ; $5591: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5594: $e0 $70
	ret                                              ; $5596: $c9


Call_005_5597:
	ld   [hl+], a                                    ; $5597: $22
	add  c                                           ; $5598: $81
	ld   [hl+], a                                    ; $5599: $22
	add  c                                           ; $559a: $81
	ld   [hl+], a                                    ; $559b: $22
	add  c                                           ; $559c: $81
	ld   [hl+], a                                    ; $559d: $22
	add  c                                           ; $559e: $81
	ld   [hl+], a                                    ; $559f: $22
	add  c                                           ; $55a0: $81
	ld   [hl+], a                                    ; $55a1: $22
	add  c                                           ; $55a2: $81
	ld   [hl+], a                                    ; $55a3: $22
	add  c                                           ; $55a4: $81
	ld   [hl+], a                                    ; $55a5: $22
	add  c                                           ; $55a6: $81
	ld   [hl+], a                                    ; $55a7: $22
	add  c                                           ; $55a8: $81
	ld   [hl+], a                                    ; $55a9: $22
	add  hl, de                                      ; $55aa: $19
	sub  $11                                         ; $55ab: $d6 $11
	ld   [hl+], a                                    ; $55ad: $22
	add  c                                           ; $55ae: $81
	ld   [hl+], a                                    ; $55af: $22
	add  c                                           ; $55b0: $81
	ld   [hl+], a                                    ; $55b1: $22
	add  c                                           ; $55b2: $81
	ld   [hl+], a                                    ; $55b3: $22
	add  c                                           ; $55b4: $81
	ld   [hl+], a                                    ; $55b5: $22
	add  c                                           ; $55b6: $81
	ld   [hl+], a                                    ; $55b7: $22
	add  c                                           ; $55b8: $81
	ld   [hl+], a                                    ; $55b9: $22
	add  c                                           ; $55ba: $81
	ld   [hl+], a                                    ; $55bb: $22
	add  c                                           ; $55bc: $81
	ld   [hl+], a                                    ; $55bd: $22
	add  c                                           ; $55be: $81
	ld   [hl+], a                                    ; $55bf: $22
	inc  a                                           ; $55c0: $3c
	ret                                              ; $55c1: $c9


Call_005_55c2:
	push af                                          ; $55c2: $f5
	call Call_005_55ed                               ; $55c3: $cd $ed $55
	pop  af                                          ; $55c6: $f1
	inc  a                                           ; $55c7: $3c
	push af                                          ; $55c8: $f5
	call Call_005_55ed                               ; $55c9: $cd $ed $55
	pop  af                                          ; $55cc: $f1
	inc  a                                           ; $55cd: $3c
	push af                                          ; $55ce: $f5
	call Call_005_55ed                               ; $55cf: $cd $ed $55
	pop  af                                          ; $55d2: $f1
	inc  a                                           ; $55d3: $3c
	push af                                          ; $55d4: $f5
	call Call_005_55ed                               ; $55d5: $cd $ed $55
	pop  af                                          ; $55d8: $f1
	inc  a                                           ; $55d9: $3c
	push af                                          ; $55da: $f5
	call Call_005_55ed                               ; $55db: $cd $ed $55
	pop  af                                          ; $55de: $f1
	inc  a                                           ; $55df: $3c
	push af                                          ; $55e0: $f5
	call Call_005_55ed                               ; $55e1: $cd $ed $55
	pop  af                                          ; $55e4: $f1
	inc  a                                           ; $55e5: $3c
	push af                                          ; $55e6: $f5
	call Call_005_55ed                               ; $55e7: $cd $ed $55
	pop  af                                          ; $55ea: $f1
	inc  a                                           ; $55eb: $3c
	ret                                              ; $55ec: $c9


Call_005_55ed:
	push af                                          ; $55ed: $f5
	ld   hl, $d340                                   ; $55ee: $21 $40 $d3
	ld   bc, $00a0                                   ; $55f1: $01 $a0 $00
	ld   de, $0000                                   ; $55f4: $11 $00 $00
	call CopyEthenDintoHL_BCtimes                                       ; $55f7: $cd $9f $09
	call InitWideTextBoxDimensions                                       ; $55fa: $cd $ec $0f
	ld   bc, $0a01                                   ; $55fd: $01 $01 $0a
	call SetKanjiTextBoxDimensions                                       ; $5600: $cd $24 $14
	ld   bc, $0000                                   ; $5603: $01 $00 $00
	call SetCurrKanjiColAndRowToDrawOn                                       ; $5606: $cd $34 $14
	pop  af                                          ; $5609: $f1
	push af                                          ; $560a: $f5
	call Call_005_572e                               ; $560b: $cd $2e $57
	or   a                                           ; $560e: $b7
	jr   nz, jr_005_5616                             ; $560f: $20 $05

	ld   a, $02                                      ; $5611: $3e $02
	call SetDefaultAndCurrKanjiTileTextStyle                                       ; $5613: $cd $3f $15

jr_005_5616:
	pop  af                                          ; $5616: $f1
	ld   b, a                                        ; $5617: $47
	ld   a, [$cc6b]                                  ; $5618: $fa $6b $cc
	or   a                                           ; $561b: $b7
	ld   a, b                                        ; $561c: $78
	jr   z, jr_005_5694                              ; $561d: $28 $75

	push af                                          ; $561f: $f5
	ld   b, a                                        ; $5620: $47
	and  $f0                                         ; $5621: $e6 $f0
	swap a                                           ; $5623: $cb $37
	add  $11                                         ; $5625: $c6 $11
	ld   [$da81], a                                  ; $5627: $ea $81 $da
	ld   a, b                                        ; $562a: $78
	and  $0f                                         ; $562b: $e6 $0f
	add  $11                                         ; $562d: $c6 $11
	ld   [$da82], a                                  ; $562f: $ea $82 $da
	ld   a, $10                                      ; $5632: $3e $10
	ld   [$da83], a                                  ; $5634: $ea $83 $da
	ld   [$da84], a                                  ; $5637: $ea $84 $da
	ld   [$da85], a                                  ; $563a: $ea $85 $da
	ld   [$da86], a                                  ; $563d: $ea $86 $da
	ld   a, [$cc6b]                                  ; $5640: $fa $6b $cc
	dec  a                                           ; $5643: $3d
	and  $0f                                         ; $5644: $e6 $0f
	add  $11                                         ; $5646: $c6 $11
	ld   [$da80], a                                  ; $5648: $ea $80 $da
	pop  af                                          ; $564b: $f1
	push af                                          ; $564c: $f5
	ld   l, a                                        ; $564d: $6f
	ld   a, [$cc6b]                                  ; $564e: $fa $6b $cc
	dec  a                                           ; $5651: $3d
	ld   h, a                                        ; $5652: $67
	push af                                          ; $5653: $f5
	ld   a, $de                                      ; $5654: $3e $de
	ld   [wFarCallAddr], a                                  ; $5656: $ea $98 $c2
	ld   a, $44                                      ; $5659: $3e $44
	ld   [wFarCallAddr+1], a                                  ; $565b: $ea $99 $c2
	ld   a, $09                                      ; $565e: $3e $09
	ld   [wFarCallBank], a                                  ; $5660: $ea $9a $c2
	pop  af                                          ; $5663: $f1
	call FarCall                                       ; $5664: $cd $62 $09
	or   a                                           ; $5667: $b7
	jr   nz, jr_005_567e                             ; $5668: $20 $14

	ld   a, $29                                      ; $566a: $3e $29
	ld   [$da87], a                                  ; $566c: $ea $87 $da
	ld   a, $20                                      ; $566f: $3e $20
	ld   [$da88], a                                  ; $5671: $ea $88 $da
	ld   [$da89], a                                  ; $5674: $ea $89 $da
	xor  a                                           ; $5677: $af
	ld   [$da8a], a                                  ; $5678: $ea $8a $da
	jp   Jump_005_5704                               ; $567b: $c3 $04 $57


jr_005_567e:
	ld   a, $29                                      ; $567e: $3e $29
	ld   [$da87], a                                  ; $5680: $ea $87 $da
	ld   a, $10                                      ; $5683: $3e $10
	ld   [$da88], a                                  ; $5685: $ea $88 $da
	ld   a, $28                                      ; $5688: $3e $28
	ld   [$da89], a                                  ; $568a: $ea $89 $da
	xor  a                                           ; $568d: $af
	ld   [$da8a], a                                  ; $568e: $ea $8a $da
	jp   Jump_005_5704                               ; $5691: $c3 $04 $57


jr_005_5694:
	push af                                          ; $5694: $f5
	ld   b, a                                        ; $5695: $47
	and  $f0                                         ; $5696: $e6 $f0
	swap a                                           ; $5698: $cb $37
	add  $11                                         ; $569a: $c6 $11
	ld   [$da80], a                                  ; $569c: $ea $80 $da
	ld   a, b                                        ; $569f: $78
	and  $0f                                         ; $56a0: $e6 $0f
	add  $11                                         ; $56a2: $c6 $11
	ld   [$da81], a                                  ; $56a4: $ea $81 $da
	ld   a, $10                                      ; $56a7: $3e $10
	ld   [$da82], a                                  ; $56a9: $ea $82 $da
	ld   [$da83], a                                  ; $56ac: $ea $83 $da
	pop  af                                          ; $56af: $f1
	push af                                          ; $56b0: $f5
	ld   h, $00                                      ; $56b1: $26 $00
	ld   l, a                                        ; $56b3: $6f
	push af                                          ; $56b4: $f5
	ld   a, $d7                                      ; $56b5: $3e $d7
	ld   [wFarCallAddr], a                                  ; $56b7: $ea $98 $c2
	ld   a, $44                                      ; $56ba: $3e $44
	ld   [wFarCallAddr+1], a                                  ; $56bc: $ea $99 $c2
	ld   a, $09                                      ; $56bf: $3e $09
	ld   [wFarCallBank], a                                  ; $56c1: $ea $9a $c2
	pop  af                                          ; $56c4: $f1
	call FarCall                                       ; $56c5: $cd $62 $09
	push af                                          ; $56c8: $f5
	ld   b, a                                        ; $56c9: $47
	and  $f0                                         ; $56ca: $e6 $f0
	swap a                                           ; $56cc: $cb $37
	add  $11                                         ; $56ce: $c6 $11
	ld   [$da84], a                                  ; $56d0: $ea $84 $da
	ld   a, b                                        ; $56d3: $78
	and  $0f                                         ; $56d4: $e6 $0f
	add  $11                                         ; $56d6: $c6 $11
	ld   [$da85], a                                  ; $56d8: $ea $85 $da
	ld   a, $10                                      ; $56db: $3e $10
	ld   [$da86], a                                  ; $56dd: $ea $86 $da
	pop  af                                          ; $56e0: $f1
	ld   h, a                                        ; $56e1: $67
	ld   l, $64                                      ; $56e2: $2e $64
	call HLequHdivModL                                       ; $56e4: $cd $fb $0b
	ld   a, h                                        ; $56e7: $7c
	add  $11                                         ; $56e8: $c6 $11
	ld   [$da87], a                                  ; $56ea: $ea $87 $da
	ld   d, h                                        ; $56ed: $54
	ld   h, l                                        ; $56ee: $65
	ld   l, $0a                                      ; $56ef: $2e $0a
	call HLequHdivModL                                       ; $56f1: $cd $fb $0b
	ld   a, h                                        ; $56f4: $7c
	add  $11                                         ; $56f5: $c6 $11
	ld   [$da88], a                                  ; $56f7: $ea $88 $da
	ld   a, l                                        ; $56fa: $7d
	add  $11                                         ; $56fb: $c6 $11
	ld   [$da89], a                                  ; $56fd: $ea $89 $da
	xor  a                                           ; $5700: $af
	ld   [$da8a], a                                  ; $5701: $ea $8a $da

Jump_005_5704:
	xor  a                                           ; $5704: $af
	ld   de, $da80                                   ; $5705: $11 $80 $da
	ld   hl, $d340                                   ; $5708: $21 $40 $d3
	call LoadInstantText                                       ; $570b: $cd $06 $13
	pop  af                                          ; $570e: $f1
	and  $07                                         ; $570f: $e6 $07
	ld   h, $14                                      ; $5711: $26 $14
	ld   l, a                                        ; $5713: $6f
	call AequHtimesL                                       ; $5714: $cd $ac $0b
	add  hl, hl                                      ; $5717: $29
	add  hl, hl                                      ; $5718: $29
	add  hl, hl                                      ; $5719: $29
	add  hl, hl                                      ; $571a: $29
	ld   bc, $8e00                                   ; $571b: $01 $00 $8e
	add  hl, bc                                      ; $571e: $09
	ld   c, $81                                      ; $571f: $0e $81
	ld   d, h                                        ; $5721: $54
	ld   e, l                                        ; $5722: $5d
	ld   a, $02                                      ; $5723: $3e $02
	ld   hl, $d340                                   ; $5725: $21 $40 $d3
	ld   b, $14                                      ; $5728: $06 $14
	call EnqueueHDMATransfer                                       ; $572a: $cd $7c $02
	ret                                              ; $572d: $c9


Call_005_572e:
	push bc                                          ; $572e: $c5
	push de                                          ; $572f: $d5
	push hl                                          ; $5730: $e5
	ld   l, a                                        ; $5731: $6f
	ld   a, [$cc6b]                                  ; $5732: $fa $6b $cc
	ld   h, a                                        ; $5735: $67
	cp   $05                                         ; $5736: $fe $05
	jr   nc, jr_005_574d                             ; $5738: $30 $13

	add  hl, hl                                      ; $573a: $29
	ld   de, $579f                                   ; $573b: $11 $9f $57
	add  hl, de                                      ; $573e: $19
	ld   a, [hl+]                                    ; $573f: $2a
	ld   h, [hl]                                     ; $5740: $66
	ld   l, a                                        ; $5741: $6f
	ld   de, $579f                                   ; $5742: $11 $9f $57
	add  hl, de                                      ; $5745: $19
	ld   a, $05                                      ; $5746: $3e $05
	call FarGetByte                                       ; $5748: $cd $cf $0a
	jr   jr_005_574e                                 ; $574b: $18 $01

jr_005_574d:
	xor  a                                           ; $574d: $af

jr_005_574e:
	pop  hl                                          ; $574e: $e1
	pop  de                                          ; $574f: $d1
	pop  bc                                          ; $5750: $c1
	ret                                              ; $5751: $c9


Call_005_5752:
	ld   hl, $d340                                   ; $5752: $21 $40 $d3
	ld   bc, $0120                                   ; $5755: $01 $20 $01
	ld   de, $0000                                   ; $5758: $11 $00 $00
	call CopyEthenDintoHL_BCtimes                                       ; $575b: $cd $9f $09
	call InitWideTextBoxDimensions                                       ; $575e: $cd $ec $0f
	ld   bc, $1202                                   ; $5761: $01 $02 $12
	call SetKanjiTextBoxDimensions                                       ; $5764: $cd $24 $14
	ld   bc, $0000                                   ; $5767: $01 $00 $00
	call SetCurrKanjiColAndRowToDrawOn                                       ; $576a: $cd $34 $14
	ld   a, [$cc6d]                                  ; $576d: $fa $6d $cc
	ld   l, a                                        ; $5770: $6f
	ld   a, [$cc6b]                                  ; $5771: $fa $6b $cc
	ld   h, a                                        ; $5774: $67
	cp   $05                                         ; $5775: $fe $05
	jr   nc, jr_005_578f                             ; $5777: $30 $16

	add  hl, hl                                      ; $5779: $29
	ld   de, $579f                                   ; $577a: $11 $9f $57
	add  hl, de                                      ; $577d: $19
	ld   a, [hl+]                                    ; $577e: $2a
	ld   h, [hl]                                     ; $577f: $66
	ld   l, a                                        ; $5780: $6f
	ld   de, $579f                                   ; $5781: $11 $9f $57
	add  hl, de                                      ; $5784: $19
	ld   d, h                                        ; $5785: $54
	ld   e, l                                        ; $5786: $5d
	ld   a, $05                                      ; $5787: $3e $05
	ld   hl, $d340                                   ; $5789: $21 $40 $d3
	call LoadInstantText                                       ; $578c: $cd $06 $13

jr_005_578f:
	ld   c, $81                                      ; $578f: $0e $81
	ld   de, $8900                                   ; $5791: $11 $00 $89
	ld   a, $02                                      ; $5794: $3e $02
	ld   hl, $d340                                   ; $5796: $21 $40 $d3
	ld   b, $24                                      ; $5799: $06 $24
	call EnqueueHDMATransfer                                       ; $579b: $cd $7c $02
	ret                                              ; $579e: $c9


	nop                                              ; $579f: $00
	ld   a, [bc]                                     ; $57a0: $0a
	dec  b                                           ; $57a1: $05
	ld   a, [bc]                                     ; $57a2: $0a
	ld   a, [bc]                                     ; $57a3: $0a
	ld   a, [bc]                                     ; $57a4: $0a
	dec  bc                                          ; $57a5: $0b
	ld   a, [bc]                                     ; $57a6: $0a
	inc  c                                           ; $57a7: $0c
	ld   a, [bc]                                     ; $57a8: $0a
	dec  c                                           ; $57a9: $0d
	ld   a, [bc]                                     ; $57aa: $0a
	ld   c, $0a                                      ; $57ab: $0e $0a
	rrca                                             ; $57ad: $0f
	ld   a, [bc]                                     ; $57ae: $0a
	db   $10                                         ; $57af: $10
	ld   a, [bc]                                     ; $57b0: $0a
	ld   de, $120a                                   ; $57b1: $11 $0a $12
	ld   a, [bc]                                     ; $57b4: $0a
	inc  de                                          ; $57b5: $13
	ld   a, [bc]                                     ; $57b6: $0a
	inc  d                                           ; $57b7: $14
	ld   a, [bc]                                     ; $57b8: $0a
	dec  d                                           ; $57b9: $15
	ld   a, [bc]                                     ; $57ba: $0a
	ld   d, $0a                                      ; $57bb: $16 $0a
	rla                                              ; $57bd: $17
	ld   a, [bc]                                     ; $57be: $0a
	jr   jr_005_57cb                                 ; $57bf: $18 $0a

	inc  hl                                          ; $57c1: $23
	ld   a, [bc]                                     ; $57c2: $0a
	ld   l, $0a                                      ; $57c3: $2e $0a
	add  hl, sp                                      ; $57c5: $39
	ld   a, [bc]                                     ; $57c6: $0a
	ld   b, h                                        ; $57c7: $44
	ld   a, [bc]                                     ; $57c8: $0a
	ld   d, b                                        ; $57c9: $50
	ld   a, [bc]                                     ; $57ca: $0a

jr_005_57cb:
	ld   e, h                                        ; $57cb: $5c
	ld   a, [bc]                                     ; $57cc: $0a
	ld   h, a                                        ; $57cd: $67
	ld   a, [bc]                                     ; $57ce: $0a
	ld   [hl], e                                     ; $57cf: $73
	ld   a, [bc]                                     ; $57d0: $0a
	ld   a, l                                        ; $57d1: $7d
	ld   a, [bc]                                     ; $57d2: $0a
	adc  c                                           ; $57d3: $89
	ld   a, [bc]                                     ; $57d4: $0a
	sub  l                                           ; $57d5: $95
	ld   a, [bc]                                     ; $57d6: $0a
	and  b                                           ; $57d7: $a0
	ld   a, [bc]                                     ; $57d8: $0a
	xor  e                                           ; $57d9: $ab
	ld   a, [bc]                                     ; $57da: $0a
	or   a                                           ; $57db: $b7
	ld   a, [bc]                                     ; $57dc: $0a
	pop  bc                                          ; $57dd: $c1
	ld   a, [bc]                                     ; $57de: $0a
	call $d20a                                       ; $57df: $cd $0a $d2
	ld   a, [bc]                                     ; $57e2: $0a
	rst  $10                                         ; $57e3: $d7
	ld   a, [bc]                                     ; $57e4: $0a
	call c, $e20a                                    ; $57e5: $dc $0a $e2
	ld   a, [bc]                                     ; $57e8: $0a
	add  sp, $0a                                     ; $57e9: $e8 $0a
	rst  $28                                         ; $57eb: $ef
	ld   a, [bc]                                     ; $57ec: $0a
	ldh  a, [$0a]                                    ; $57ed: $f0 $0a
	pop  af                                          ; $57ef: $f1
	ld   a, [bc]                                     ; $57f0: $0a
	ldh  a, [c]                                      ; $57f1: $f2
	ld   a, [bc]                                     ; $57f2: $0a
	di                                               ; $57f3: $f3
	ld   a, [bc]                                     ; $57f4: $0a
	db   $f4                                         ; $57f5: $f4
	ld   a, [bc]                                     ; $57f6: $0a
	push af                                          ; $57f7: $f5
	ld   a, [bc]                                     ; $57f8: $0a
	or   $0a                                         ; $57f9: $f6 $0a
	rst  $30                                         ; $57fb: $f7
	ld   a, [bc]                                     ; $57fc: $0a
	ld   hl, sp+$0a                                  ; $57fd: $f8 $0a
	ld   sp, hl                                      ; $57ff: $f9
	ld   a, [bc]                                     ; $5800: $0a
	ld   [bc], a                                     ; $5801: $02
	dec  bc                                          ; $5802: $0b
	inc  c                                           ; $5803: $0c
	dec  bc                                          ; $5804: $0b
	ld   d, $0b                                      ; $5805: $16 $0b
	jr   nz, @+$0d                                   ; $5807: $20 $0b

	ld   a, [hl+]                                    ; $5809: $2a
	dec  bc                                          ; $580a: $0b
	inc  [hl]                                        ; $580b: $34
	dec  bc                                          ; $580c: $0b
	dec  [hl]                                        ; $580d: $35
	dec  bc                                          ; $580e: $0b
	ld   [hl], $0b                                   ; $580f: $36 $0b
	scf                                              ; $5811: $37
	dec  bc                                          ; $5812: $0b
	jr   c, @+$0d                                    ; $5813: $38 $0b

	add  hl, sp                                      ; $5815: $39
	dec  bc                                          ; $5816: $0b
	ld   a, [hl-]                                    ; $5817: $3a
	dec  bc                                          ; $5818: $0b
	dec  sp                                          ; $5819: $3b
	dec  bc                                          ; $581a: $0b
	inc  a                                           ; $581b: $3c
	dec  bc                                          ; $581c: $0b
	dec  a                                           ; $581d: $3d
	dec  bc                                          ; $581e: $0b
	ld   a, $0b                                      ; $581f: $3e $0b
	ld   b, [hl]                                     ; $5821: $46
	dec  bc                                          ; $5822: $0b
	ld   c, [hl]                                     ; $5823: $4e
	dec  bc                                          ; $5824: $0b
	ld   d, a                                        ; $5825: $57
	dec  bc                                          ; $5826: $0b
	ld   h, b                                        ; $5827: $60
	dec  bc                                          ; $5828: $0b
	ld   l, c                                        ; $5829: $69
	dec  bc                                          ; $582a: $0b
	ld   [hl], e                                     ; $582b: $73
	dec  bc                                          ; $582c: $0b
	ld   a, l                                        ; $582d: $7d
	dec  bc                                          ; $582e: $0b
	add  [hl]                                        ; $582f: $86
	dec  bc                                          ; $5830: $0b
	sub  b                                           ; $5831: $90
	dec  bc                                          ; $5832: $0b
	sbc  d                                           ; $5833: $9a
	dec  bc                                          ; $5834: $0b
	and  h                                           ; $5835: $a4
	dec  bc                                          ; $5836: $0b
	xor  a                                           ; $5837: $af
	dec  bc                                          ; $5838: $0b
	cp   d                                           ; $5839: $ba
	dec  bc                                          ; $583a: $0b
	call nz, $ce0b                                   ; $583b: $c4 $0b $ce
	dec  bc                                          ; $583e: $0b
	ret  c                                           ; $583f: $d8

	dec  bc                                          ; $5840: $0b
	ldh  [c], a                                      ; $5841: $e2
	dec  bc                                          ; $5842: $0b
	db   $ed                                         ; $5843: $ed
	dec  bc                                          ; $5844: $0b
	ld   hl, sp+$0b                                  ; $5845: $f8 $0b
	ld   [bc], a                                     ; $5847: $02
	inc  c                                           ; $5848: $0c
	inc  c                                           ; $5849: $0c
	inc  c                                           ; $584a: $0c
	inc  d                                           ; $584b: $14
	inc  c                                           ; $584c: $0c
	dec  e                                           ; $584d: $1d
	inc  c                                           ; $584e: $0c
	ld   h, $0c                                      ; $584f: $26 $0c
	inc  sp                                          ; $5851: $33
	inc  c                                           ; $5852: $0c
	add  hl, sp                                      ; $5853: $39
	inc  c                                           ; $5854: $0c
	ld   b, c                                        ; $5855: $41
	inc  c                                           ; $5856: $0c
	ld   c, b                                        ; $5857: $48
	inc  c                                           ; $5858: $0c
	ld   d, d                                        ; $5859: $52
	inc  c                                           ; $585a: $0c
	ld   e, [hl]                                     ; $585b: $5e
	inc  c                                           ; $585c: $0c
	ld   l, a                                        ; $585d: $6f
	inc  c                                           ; $585e: $0c
	ld   a, d                                        ; $585f: $7a
	inc  c                                           ; $5860: $0c
	add  e                                           ; $5861: $83
	inc  c                                           ; $5862: $0c
	adc  d                                           ; $5863: $8a
	inc  c                                           ; $5864: $0c
	sub  d                                           ; $5865: $92
	inc  c                                           ; $5866: $0c
	sbc  a                                           ; $5867: $9f
	inc  c                                           ; $5868: $0c
	xor  l                                           ; $5869: $ad
	inc  c                                           ; $586a: $0c
	or   a                                           ; $586b: $b7
	inc  c                                           ; $586c: $0c
	rst  ToBoot                                         ; $586d: $c7
	inc  c                                           ; $586e: $0c
	sub  $0c                                         ; $586f: $d6 $0c
	ldh  [c], a                                      ; $5871: $e2
	inc  c                                           ; $5872: $0c
	xor  $0c                                         ; $5873: $ee $0c
	ld   a, [$060c]                                  ; $5875: $fa $0c $06
	dec  c                                           ; $5878: $0d
	ld   de, $1d0d                                   ; $5879: $11 $0d $1d
	dec  c                                           ; $587c: $0d
	ld   l, $0d                                      ; $587d: $2e $0d
	ld   a, [hl-]                                    ; $587f: $3a
	dec  c                                           ; $5880: $0d
	ld   c, e                                        ; $5881: $4b
	dec  c                                           ; $5882: $0d
	ld   d, a                                        ; $5883: $57
	dec  c                                           ; $5884: $0d
	ld   h, b                                        ; $5885: $60
	dec  c                                           ; $5886: $0d
	ld   l, c                                        ; $5887: $69
	dec  c                                           ; $5888: $0d
	ld   a, b                                        ; $5889: $78
	dec  c                                           ; $588a: $0d
	add  h                                           ; $588b: $84
	dec  c                                           ; $588c: $0d
	sub  b                                           ; $588d: $90
	dec  c                                           ; $588e: $0d
	sub  c                                           ; $588f: $91
	dec  c                                           ; $5890: $0d
	sub  d                                           ; $5891: $92
	dec  c                                           ; $5892: $0d
	sub  e                                           ; $5893: $93
	dec  c                                           ; $5894: $0d
	sub  h                                           ; $5895: $94
	dec  c                                           ; $5896: $0d
	sub  l                                           ; $5897: $95
	dec  c                                           ; $5898: $0d
	sub  [hl]                                        ; $5899: $96
	dec  c                                           ; $589a: $0d
	sub  a                                           ; $589b: $97
	dec  c                                           ; $589c: $0d
	sbc  b                                           ; $589d: $98
	dec  c                                           ; $589e: $0d
	sbc  c                                           ; $589f: $99
	dec  c                                           ; $58a0: $0d
	sbc  d                                           ; $58a1: $9a
	dec  c                                           ; $58a2: $0d
	sbc  e                                           ; $58a3: $9b
	dec  c                                           ; $58a4: $0d
	sbc  h                                           ; $58a5: $9c
	dec  c                                           ; $58a6: $0d
	sbc  l                                           ; $58a7: $9d
	dec  c                                           ; $58a8: $0d
	sbc  [hl]                                        ; $58a9: $9e
	dec  c                                           ; $58aa: $0d
	sbc  a                                           ; $58ab: $9f
	dec  c                                           ; $58ac: $0d
	and  b                                           ; $58ad: $a0
	dec  c                                           ; $58ae: $0d
	and  c                                           ; $58af: $a1
	dec  c                                           ; $58b0: $0d
	and  d                                           ; $58b1: $a2
	dec  c                                           ; $58b2: $0d
	and  e                                           ; $58b3: $a3
	dec  c                                           ; $58b4: $0d
	and  h                                           ; $58b5: $a4
	dec  c                                           ; $58b6: $0d
	and  l                                           ; $58b7: $a5
	dec  c                                           ; $58b8: $0d
	and  [hl]                                        ; $58b9: $a6
	dec  c                                           ; $58ba: $0d
	and  a                                           ; $58bb: $a7
	dec  c                                           ; $58bc: $0d
	xor  b                                           ; $58bd: $a8
	dec  c                                           ; $58be: $0d
	xor  c                                           ; $58bf: $a9
	dec  c                                           ; $58c0: $0d
	xor  d                                           ; $58c1: $aa
	dec  c                                           ; $58c2: $0d
	xor  e                                           ; $58c3: $ab
	dec  c                                           ; $58c4: $0d
	xor  h                                           ; $58c5: $ac
	dec  c                                           ; $58c6: $0d
	xor  l                                           ; $58c7: $ad
	dec  c                                           ; $58c8: $0d
	xor  [hl]                                        ; $58c9: $ae
	dec  c                                           ; $58ca: $0d
	xor  a                                           ; $58cb: $af
	dec  c                                           ; $58cc: $0d
	or   b                                           ; $58cd: $b0
	dec  c                                           ; $58ce: $0d
	or   c                                           ; $58cf: $b1
	dec  c                                           ; $58d0: $0d
	or   d                                           ; $58d1: $b2
	dec  c                                           ; $58d2: $0d
	or   e                                           ; $58d3: $b3
	dec  c                                           ; $58d4: $0d
	or   h                                           ; $58d5: $b4
	dec  c                                           ; $58d6: $0d
	or   l                                           ; $58d7: $b5
	dec  c                                           ; $58d8: $0d
	or   [hl]                                        ; $58d9: $b6
	dec  c                                           ; $58da: $0d
	or   a                                           ; $58db: $b7
	dec  c                                           ; $58dc: $0d
	cp   b                                           ; $58dd: $b8
	dec  c                                           ; $58de: $0d
	cp   c                                           ; $58df: $b9
	dec  c                                           ; $58e0: $0d
	cp   d                                           ; $58e1: $ba
	dec  c                                           ; $58e2: $0d
	cp   e                                           ; $58e3: $bb
	dec  c                                           ; $58e4: $0d
	cp   h                                           ; $58e5: $bc
	dec  c                                           ; $58e6: $0d
	cp   l                                           ; $58e7: $bd
	dec  c                                           ; $58e8: $0d
	cp   [hl]                                        ; $58e9: $be
	dec  c                                           ; $58ea: $0d
	cp   a                                           ; $58eb: $bf
	dec  c                                           ; $58ec: $0d
	ret  nz                                          ; $58ed: $c0

	dec  c                                           ; $58ee: $0d
	pop  bc                                          ; $58ef: $c1
	dec  c                                           ; $58f0: $0d
	jp   nz, $c30d                                   ; $58f1: $c2 $0d $c3

	dec  c                                           ; $58f4: $0d
	call nz, $c50d                                   ; $58f5: $c4 $0d $c5
	dec  c                                           ; $58f8: $0d
	add  $0d                                         ; $58f9: $c6 $0d
	rst  ToBoot                                         ; $58fb: $c7
	dec  c                                           ; $58fc: $0d
	ret  z                                           ; $58fd: $c8

	dec  c                                           ; $58fe: $0d
	ret                                              ; $58ff: $c9


	dec  c                                           ; $5900: $0d
	jp   z, $cb0d                                    ; $5901: $ca $0d $cb

	dec  c                                           ; $5904: $0d
	call z, $cd0d                                    ; $5905: $cc $0d $cd
	dec  c                                           ; $5908: $0d
	adc  $0d                                         ; $5909: $ce $0d
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $590b: $cf
	dec  c                                           ; $590c: $0d
	ret  nc                                          ; $590d: $d0

	dec  c                                           ; $590e: $0d
	pop  de                                          ; $590f: $d1
	dec  c                                           ; $5910: $0d
	jp   nc, $d30d                                   ; $5911: $d2 $0d $d3

	dec  c                                           ; $5914: $0d
	call nc, $d50d                                   ; $5915: $d4 $0d $d5
	dec  c                                           ; $5918: $0d
	sub  $0d                                         ; $5919: $d6 $0d
	rst  $10                                         ; $591b: $d7
	dec  c                                           ; $591c: $0d
	ret  c                                           ; $591d: $d8

	dec  c                                           ; $591e: $0d
	reti                                             ; $591f: $d9


	dec  c                                           ; $5920: $0d
	jp   c, $db0d                                    ; $5921: $da $0d $db

	dec  c                                           ; $5924: $0d
	call c, $dd0d                                    ; $5925: $dc $0d $dd
	dec  c                                           ; $5928: $0d
	sbc  $0d                                         ; $5929: $de $0d
	rst  JumpTable                                         ; $592b: $df
	dec  c                                           ; $592c: $0d
	ldh  [$0d], a                                    ; $592d: $e0 $0d
	pop  hl                                          ; $592f: $e1
	dec  c                                           ; $5930: $0d
	ldh  [c], a                                      ; $5931: $e2
	dec  c                                           ; $5932: $0d
	db   $e3                                         ; $5933: $e3
	dec  c                                           ; $5934: $0d
	db   $e4                                         ; $5935: $e4
	dec  c                                           ; $5936: $0d
	push hl                                          ; $5937: $e5
	dec  c                                           ; $5938: $0d
	and  $0d                                         ; $5939: $e6 $0d
	rst  $20                                         ; $593b: $e7
	dec  c                                           ; $593c: $0d
	add  sp, $0d                                     ; $593d: $e8 $0d
	jp   hl                                          ; $593f: $e9


	dec  c                                           ; $5940: $0d
	ld   [$eb0d], a                                  ; $5941: $ea $0d $eb
	dec  c                                           ; $5944: $0d
	db   $ec                                         ; $5945: $ec
	dec  c                                           ; $5946: $0d
	db   $ed                                         ; $5947: $ed
	dec  c                                           ; $5948: $0d
	xor  $0d                                         ; $5949: $ee $0d
	rst  $28                                         ; $594b: $ef
	dec  c                                           ; $594c: $0d
	ldh  a, [$0d]                                    ; $594d: $f0 $0d
	pop  af                                          ; $594f: $f1
	dec  c                                           ; $5950: $0d
	ldh  a, [c]                                      ; $5951: $f2
	dec  c                                           ; $5952: $0d
	di                                               ; $5953: $f3
	dec  c                                           ; $5954: $0d
	db   $f4                                         ; $5955: $f4
	dec  c                                           ; $5956: $0d
	push af                                          ; $5957: $f5
	dec  c                                           ; $5958: $0d
	or   $0d                                         ; $5959: $f6 $0d
	rst  $30                                         ; $595b: $f7
	dec  c                                           ; $595c: $0d
	ld   hl, sp+$0d                                  ; $595d: $f8 $0d
	ld   sp, hl                                      ; $595f: $f9
	dec  c                                           ; $5960: $0d
	ld   [bc], a                                     ; $5961: $02
	ld   c, $0b                                      ; $5962: $0e $0b
	ld   c, $14                                      ; $5964: $0e $14
	ld   c, $1e                                      ; $5966: $0e $1e
	ld   c, $28                                      ; $5968: $0e $28
	ld   c, $31                                      ; $596a: $0e $31
	ld   c, $3e                                      ; $596c: $0e $3e
	ld   c, $4b                                      ; $596e: $0e $4b
	ld   c, $58                                      ; $5970: $0e $58
	ld   c, $66                                      ; $5972: $0e $66
	ld   c, $74                                      ; $5974: $0e $74
	ld   c, $81                                      ; $5976: $0e $81
	ld   c, $82                                      ; $5978: $0e $82
	ld   c, $83                                      ; $597a: $0e $83
	ld   c, $84                                      ; $597c: $0e $84
	ld   c, $85                                      ; $597e: $0e $85
	ld   c, $86                                      ; $5980: $0e $86
	ld   c, $87                                      ; $5982: $0e $87
	ld   c, $88                                      ; $5984: $0e $88
	ld   c, $89                                      ; $5986: $0e $89
	ld   c, $8a                                      ; $5988: $0e $8a
	ld   c, $8b                                      ; $598a: $0e $8b
	ld   c, $8c                                      ; $598c: $0e $8c
	ld   c, $8d                                      ; $598e: $0e $8d
	ld   c, $97                                      ; $5990: $0e $97
	ld   c, $98                                      ; $5992: $0e $98
	ld   c, $9e                                      ; $5994: $0e $9e
	ld   c, $a4                                      ; $5996: $0e $a4
	ld   c, $ac                                      ; $5998: $0e $ac
	ld   c, $ad                                      ; $599a: $0e $ad
	ld   c, $b4                                      ; $599c: $0e $b4
	ld   c, $b9                                      ; $599e: $0e $b9
	ld   c, $c1                                      ; $59a0: $0e $c1
	ld   c, $c9                                      ; $59a2: $0e $c9
	ld   c, $d7                                      ; $59a4: $0e $d7
	ld   c, $e0                                      ; $59a6: $0e $e0
	ld   c, $e9                                      ; $59a8: $0e $e9
	ld   c, $f5                                      ; $59aa: $0e $f5
	ld   c, $f9                                      ; $59ac: $0e $f9
	ld   c, $01                                      ; $59ae: $0e $01
	rrca                                             ; $59b0: $0f
	dec  bc                                          ; $59b1: $0b
	rrca                                             ; $59b2: $0f
	rla                                              ; $59b3: $17
	rrca                                             ; $59b4: $0f
	rra                                              ; $59b5: $1f
	rrca                                             ; $59b6: $0f
	add  hl, hl                                      ; $59b7: $29
	rrca                                             ; $59b8: $0f
	ld   [hl-], a                                    ; $59b9: $32
	rrca                                             ; $59ba: $0f
	inc  a                                           ; $59bb: $3c
	rrca                                             ; $59bc: $0f
	ld   b, [hl]                                     ; $59bd: $46
	rrca                                             ; $59be: $0f
	ld   d, b                                        ; $59bf: $50
	rrca                                             ; $59c0: $0f
	ld   e, c                                        ; $59c1: $59
	rrca                                             ; $59c2: $0f
	ld   h, l                                        ; $59c3: $65
	rrca                                             ; $59c4: $0f
	ld   l, a                                        ; $59c5: $6f
	rrca                                             ; $59c6: $0f
	ld   [hl], a                                     ; $59c7: $77
	rrca                                             ; $59c8: $0f
	add  d                                           ; $59c9: $82
	rrca                                             ; $59ca: $0f
	adc  a                                           ; $59cb: $8f
	rrca                                             ; $59cc: $0f
	sbc  e                                           ; $59cd: $9b
	rrca                                             ; $59ce: $0f
	xor  c                                           ; $59cf: $a9
	rrca                                             ; $59d0: $0f
	or   [hl]                                        ; $59d1: $b6
	rrca                                             ; $59d2: $0f
	cp   a                                           ; $59d3: $bf
	rrca                                             ; $59d4: $0f
	jp   z, $d50f                                    ; $59d5: $ca $0f $d5

	rrca                                             ; $59d8: $0f
	sbc  $0f                                         ; $59d9: $de $0f
	and  $0f                                         ; $59db: $e6 $0f
	ldh  a, [rIF]                                    ; $59dd: $f0 $0f
	ld   sp, hl                                      ; $59df: $f9
	rrca                                             ; $59e0: $0f
	nop                                              ; $59e1: $00
	db   $10                                         ; $59e2: $10
	inc  c                                           ; $59e3: $0c
	db   $10                                         ; $59e4: $10
	ld   d, $10                                      ; $59e5: $16 $10
	inc  hl                                          ; $59e7: $23
	db   $10                                         ; $59e8: $10
	jr   nc, jr_005_59fb                             ; $59e9: $30 $10

	ccf                                              ; $59eb: $3f
	db   $10                                         ; $59ec: $10
	ld   c, h                                        ; $59ed: $4c
	db   $10                                         ; $59ee: $10
	ld   d, [hl]                                     ; $59ef: $56
	db   $10                                         ; $59f0: $10
	ld   h, [hl]                                     ; $59f1: $66
	db   $10                                         ; $59f2: $10
	ld   l, l                                        ; $59f3: $6d
	db   $10                                         ; $59f4: $10
	ld   [hl], a                                     ; $59f5: $77
	db   $10                                         ; $59f6: $10
	add  d                                           ; $59f7: $82
	db   $10                                         ; $59f8: $10
	adc  l                                           ; $59f9: $8d
	db   $10                                         ; $59fa: $10

jr_005_59fb:
	sbc  d                                           ; $59fb: $9a
	db   $10                                         ; $59fc: $10
	and  c                                           ; $59fd: $a1
	db   $10                                         ; $59fe: $10
	xor  e                                           ; $59ff: $ab
	db   $10                                         ; $5a00: $10
	or   l                                           ; $5a01: $b5
	db   $10                                         ; $5a02: $10
	cp   a                                           ; $5a03: $bf
	db   $10                                         ; $5a04: $10
	ret                                              ; $5a05: $c9


	db   $10                                         ; $5a06: $10
	call nc, $df10                                   ; $5a07: $d4 $10 $df
	db   $10                                         ; $5a0a: $10
	jp   hl                                          ; $5a0b: $e9


	db   $10                                         ; $5a0c: $10
	push af                                          ; $5a0d: $f5
	db   $10                                         ; $5a0e: $10
	ld   [bc], a                                     ; $5a0f: $02
	ld   de, $110d                                   ; $5a10: $11 $0d $11
	ld   d, $11                                      ; $5a13: $16 $11
	ld   hl, $2d11                                   ; $5a15: $21 $11 $2d
	ld   de, $113b                                   ; $5a18: $11 $3b $11
	ld   c, c                                        ; $5a1b: $49
	ld   de, $1158                                   ; $5a1c: $11 $58 $11
	ld   h, h                                        ; $5a1f: $64
	ld   de, $1170                                   ; $5a20: $11 $70 $11
	ld   a, [hl]                                     ; $5a23: $7e
	ld   de, $1187                                   ; $5a24: $11 $87 $11
	sub  c                                           ; $5a27: $91
	ld   de, $119b                                   ; $5a28: $11 $9b $11
	and  l                                           ; $5a2b: $a5
	ld   de, $11ad                                   ; $5a2c: $11 $ad $11
	or   a                                           ; $5a2f: $b7
	ld   de, $11c6                                   ; $5a30: $11 $c6 $11
	jp   nc, $df11                                   ; $5a33: $d2 $11 $df

	ld   de, $11ea                                   ; $5a36: $11 $ea $11
	push af                                          ; $5a39: $f5
	ld   de, $11ff                                   ; $5a3a: $11 $ff $11
	ld   a, [bc]                                     ; $5a3d: $0a
	ld   [de], a                                     ; $5a3e: $12
	inc  de                                          ; $5a3f: $13
	ld   [de], a                                     ; $5a40: $12
	inc  e                                           ; $5a41: $1c
	ld   [de], a                                     ; $5a42: $12
	dec  h                                           ; $5a43: $25
	ld   [de], a                                     ; $5a44: $12
	ld   l, $12                                      ; $5a45: $2e $12
	scf                                              ; $5a47: $37
	ld   [de], a                                     ; $5a48: $12
	ld   b, b                                        ; $5a49: $40
	ld   [de], a                                     ; $5a4a: $12
	ld   c, c                                        ; $5a4b: $49
	ld   [de], a                                     ; $5a4c: $12
	ld   d, d                                        ; $5a4d: $52
	ld   [de], a                                     ; $5a4e: $12
	ld   e, e                                        ; $5a4f: $5b
	ld   [de], a                                     ; $5a50: $12
	ld   h, l                                        ; $5a51: $65
	ld   [de], a                                     ; $5a52: $12
	ld   l, a                                        ; $5a53: $6f
	ld   [de], a                                     ; $5a54: $12
	ld   a, c                                        ; $5a55: $79
	ld   [de], a                                     ; $5a56: $12
	add  e                                           ; $5a57: $83
	ld   [de], a                                     ; $5a58: $12
	adc  l                                           ; $5a59: $8d
	ld   [de], a                                     ; $5a5a: $12
	sub  a                                           ; $5a5b: $97
	ld   [de], a                                     ; $5a5c: $12
	and  c                                           ; $5a5d: $a1
	ld   [de], a                                     ; $5a5e: $12
	xor  e                                           ; $5a5f: $ab
	ld   [de], a                                     ; $5a60: $12
	or   l                                           ; $5a61: $b5
	ld   [de], a                                     ; $5a62: $12
	pop  bc                                          ; $5a63: $c1
	ld   [de], a                                     ; $5a64: $12
	call $d412                                       ; $5a65: $cd $12 $d4
	ld   [de], a                                     ; $5a68: $12
	call c, $e612                                    ; $5a69: $dc $12 $e6
	ld   [de], a                                     ; $5a6c: $12
	xor  $12                                         ; $5a6d: $ee $12
	or   $12                                         ; $5a6f: $f6 $12
	ld   bc, $0e13                                   ; $5a71: $01 $13 $0e
	inc  de                                          ; $5a74: $13
	ld   d, $13                                      ; $5a75: $16 $13
	inc  h                                           ; $5a77: $24
	inc  de                                          ; $5a78: $13
	dec  l                                           ; $5a79: $2d
	inc  de                                          ; $5a7a: $13
	jr   c, jr_005_5a90                              ; $5a7b: $38 $13

	ld   b, c                                        ; $5a7d: $41
	inc  de                                          ; $5a7e: $13
	ld   c, d                                        ; $5a7f: $4a
	inc  de                                          ; $5a80: $13
	ld   d, e                                        ; $5a81: $53
	inc  de                                          ; $5a82: $13
	ld   e, [hl]                                     ; $5a83: $5e
	inc  de                                          ; $5a84: $13
	ld   l, e                                        ; $5a85: $6b
	inc  de                                          ; $5a86: $13
	ld   a, c                                        ; $5a87: $79
	inc  de                                          ; $5a88: $13
	add  b                                           ; $5a89: $80
	inc  de                                          ; $5a8a: $13
	adc  d                                           ; $5a8b: $8a
	inc  de                                          ; $5a8c: $13
	sub  h                                           ; $5a8d: $94
	inc  de                                          ; $5a8e: $13
	sbc  l                                           ; $5a8f: $9d

jr_005_5a90:
	inc  de                                          ; $5a90: $13
	and  a                                           ; $5a91: $a7
	inc  de                                          ; $5a92: $13
	or   e                                           ; $5a93: $b3
	inc  de                                          ; $5a94: $13
	cp   e                                           ; $5a95: $bb
	inc  de                                          ; $5a96: $13
	push bc                                          ; $5a97: $c5
	inc  de                                          ; $5a98: $13
	pop  de                                          ; $5a99: $d1
	inc  de                                          ; $5a9a: $13
	reti                                             ; $5a9b: $d9


	inc  de                                          ; $5a9c: $13
	db   $e3                                         ; $5a9d: $e3
	inc  de                                          ; $5a9e: $13
	db   $eb                                         ; $5a9f: $eb
	inc  de                                          ; $5aa0: $13
	push af                                          ; $5aa1: $f5
	inc  de                                          ; $5aa2: $13
	inc  bc                                          ; $5aa3: $03
	inc  d                                           ; $5aa4: $14
	ld   c, $14                                      ; $5aa5: $0e $14
	dec  de                                          ; $5aa7: $1b
	inc  d                                           ; $5aa8: $14
	inc  h                                           ; $5aa9: $24
	inc  d                                           ; $5aaa: $14
	dec  l                                           ; $5aab: $2d
	inc  d                                           ; $5aac: $14
	jr   c, jr_005_5ac3                              ; $5aad: $38 $14

	ld   b, [hl]                                     ; $5aaf: $46
	inc  d                                           ; $5ab0: $14
	ld   d, c                                        ; $5ab1: $51
	inc  d                                           ; $5ab2: $14
	ld   e, e                                        ; $5ab3: $5b
	inc  d                                           ; $5ab4: $14
	ld   h, l                                        ; $5ab5: $65
	inc  d                                           ; $5ab6: $14
	ld   l, [hl]                                     ; $5ab7: $6e
	inc  d                                           ; $5ab8: $14
	ld   a, b                                        ; $5ab9: $78
	inc  d                                           ; $5aba: $14
	ld   a, a                                        ; $5abb: $7f
	inc  d                                           ; $5abc: $14
	add  [hl]                                        ; $5abd: $86
	inc  d                                           ; $5abe: $14
	sub  c                                           ; $5abf: $91
	inc  d                                           ; $5ac0: $14
	sbc  e                                           ; $5ac1: $9b
	inc  d                                           ; $5ac2: $14

jr_005_5ac3:
	and  h                                           ; $5ac3: $a4
	inc  d                                           ; $5ac4: $14
	xor  e                                           ; $5ac5: $ab
	inc  d                                           ; $5ac6: $14
	or   d                                           ; $5ac7: $b2
	inc  d                                           ; $5ac8: $14
	cp   h                                           ; $5ac9: $bc
	inc  d                                           ; $5aca: $14
	add  $14                                         ; $5acb: $c6 $14
	ret  nc                                          ; $5acd: $d0

	inc  d                                           ; $5ace: $14
	db   $db                                         ; $5acf: $db
	inc  d                                           ; $5ad0: $14
	and  $14                                         ; $5ad1: $e6 $14
	ldh  a, [rAUD1HIGH]                              ; $5ad3: $f0 $14
	ld   hl, sp+$14                                  ; $5ad5: $f8 $14
	nop                                              ; $5ad7: $00
	dec  d                                           ; $5ad8: $15
	dec  bc                                          ; $5ad9: $0b
	dec  d                                           ; $5ada: $15
	ld   d, $15                                      ; $5adb: $16 $15
	ld   hl, $2c15                                   ; $5add: $21 $15 $2c
	dec  d                                           ; $5ae0: $15
	scf                                              ; $5ae1: $37
	dec  d                                           ; $5ae2: $15
	ld   b, d                                        ; $5ae3: $42
	dec  d                                           ; $5ae4: $15
	ld   c, l                                        ; $5ae5: $4d
	dec  d                                           ; $5ae6: $15
	ld   e, b                                        ; $5ae7: $58
	dec  d                                           ; $5ae8: $15
	ld   h, b                                        ; $5ae9: $60
	dec  d                                           ; $5aea: $15
	ld   l, [hl]                                     ; $5aeb: $6e
	dec  d                                           ; $5aec: $15
	ld   a, [hl]                                     ; $5aed: $7e
	dec  d                                           ; $5aee: $15
	adc  e                                           ; $5aef: $8b
	dec  d                                           ; $5af0: $15
	sbc  d                                           ; $5af1: $9a
	dec  d                                           ; $5af2: $15
	xor  c                                           ; $5af3: $a9
	dec  d                                           ; $5af4: $15
	or   a                                           ; $5af5: $b7
	dec  d                                           ; $5af6: $15
	push bc                                          ; $5af7: $c5
	dec  d                                           ; $5af8: $15
	db   $d3                                         ; $5af9: $d3
	dec  d                                           ; $5afa: $15
	db   $dd                                         ; $5afb: $dd
	dec  d                                           ; $5afc: $15
	and  $15                                         ; $5afd: $e6 $15
	db   $ec                                         ; $5aff: $ec
	dec  d                                           ; $5b00: $15
	di                                               ; $5b01: $f3
	dec  d                                           ; $5b02: $15
	ld   hl, sp+$15                                  ; $5b03: $f8 $15
	dec  b                                           ; $5b05: $05
	ld   d, $14                                      ; $5b06: $16 $14
	ld   d, $1c                                      ; $5b08: $16 $1c
	ld   d, $24                                      ; $5b0a: $16 $24
	ld   d, $2c                                      ; $5b0c: $16 $2c
	ld   d, $35                                      ; $5b0e: $16 $35
	ld   d, $3e                                      ; $5b10: $16 $3e
	ld   d, $46                                      ; $5b12: $16 $46
	ld   d, $4f                                      ; $5b14: $16 $4f
	ld   d, $57                                      ; $5b16: $16 $57
	ld   d, $5f                                      ; $5b18: $16 $5f
	ld   d, $69                                      ; $5b1a: $16 $69
	ld   d, $72                                      ; $5b1c: $16 $72
	ld   d, $7b                                      ; $5b1e: $16 $7b
	ld   d, $82                                      ; $5b20: $16 $82
	ld   d, $89                                      ; $5b22: $16 $89
	ld   d, $90                                      ; $5b24: $16 $90
	ld   d, $97                                      ; $5b26: $16 $97
	ld   d, $9f                                      ; $5b28: $16 $9f
	ld   d, $a7                                      ; $5b2a: $16 $a7
	ld   d, $af                                      ; $5b2c: $16 $af
	ld   d, $b7                                      ; $5b2e: $16 $b7
	ld   d, $c1                                      ; $5b30: $16 $c1
	ld   d, $cb                                      ; $5b32: $16 $cb
	ld   d, $d5                                      ; $5b34: $16 $d5
	ld   d, $e1                                      ; $5b36: $16 $e1
	ld   d, $ed                                      ; $5b38: $16 $ed
	ld   d, $f9                                      ; $5b3a: $16 $f9
	ld   d, $05                                      ; $5b3c: $16 $05
	rla                                              ; $5b3e: $17
	ld   [de], a                                     ; $5b3f: $12
	rla                                              ; $5b40: $17
	rra                                              ; $5b41: $1f
	rla                                              ; $5b42: $17
	dec  hl                                          ; $5b43: $2b
	rla                                              ; $5b44: $17
	ld   [hl-], a                                    ; $5b45: $32
	rla                                              ; $5b46: $17
	inc  a                                           ; $5b47: $3c
	rla                                              ; $5b48: $17
	ld   c, c                                        ; $5b49: $49
	rla                                              ; $5b4a: $17
	ld   d, [hl]                                     ; $5b4b: $56
	rla                                              ; $5b4c: $17
	ld   e, a                                        ; $5b4d: $5f
	rla                                              ; $5b4e: $17
	ld   l, [hl]                                     ; $5b4f: $6e
	rla                                              ; $5b50: $17
	ld   a, d                                        ; $5b51: $7a
	rla                                              ; $5b52: $17
	add  d                                           ; $5b53: $82
	rla                                              ; $5b54: $17
	add  e                                           ; $5b55: $83
	rla                                              ; $5b56: $17
	add  h                                           ; $5b57: $84
	rla                                              ; $5b58: $17
	add  l                                           ; $5b59: $85
	rla                                              ; $5b5a: $17
	add  [hl]                                        ; $5b5b: $86
	rla                                              ; $5b5c: $17
	add  a                                           ; $5b5d: $87
	rla                                              ; $5b5e: $17
	adc  b                                           ; $5b5f: $88
	rla                                              ; $5b60: $17
	adc  c                                           ; $5b61: $89
	rla                                              ; $5b62: $17
	adc  d                                           ; $5b63: $8a
	rla                                              ; $5b64: $17
	adc  e                                           ; $5b65: $8b
	rla                                              ; $5b66: $17
	adc  h                                           ; $5b67: $8c
	rla                                              ; $5b68: $17
	adc  l                                           ; $5b69: $8d
	rla                                              ; $5b6a: $17
	adc  [hl]                                        ; $5b6b: $8e
	rla                                              ; $5b6c: $17
	adc  a                                           ; $5b6d: $8f
	rla                                              ; $5b6e: $17
	sub  b                                           ; $5b6f: $90
	rla                                              ; $5b70: $17
	sub  c                                           ; $5b71: $91
	rla                                              ; $5b72: $17
	sub  d                                           ; $5b73: $92
	rla                                              ; $5b74: $17
	sub  e                                           ; $5b75: $93
	rla                                              ; $5b76: $17
	sub  h                                           ; $5b77: $94
	rla                                              ; $5b78: $17
	sub  l                                           ; $5b79: $95
	rla                                              ; $5b7a: $17
	sub  [hl]                                        ; $5b7b: $96
	rla                                              ; $5b7c: $17
	sub  a                                           ; $5b7d: $97
	rla                                              ; $5b7e: $17
	sbc  b                                           ; $5b7f: $98
	rla                                              ; $5b80: $17
	and  [hl]                                        ; $5b81: $a6
	rla                                              ; $5b82: $17
	or   e                                           ; $5b83: $b3
	rla                                              ; $5b84: $17
	ret  nz                                          ; $5b85: $c0

	rla                                              ; $5b86: $17
	adc  $17                                         ; $5b87: $ce $17
	call c, $eb17                                    ; $5b89: $dc $17 $eb
	rla                                              ; $5b8c: $17
	ld   hl, sp+$17                                  ; $5b8d: $f8 $17
	dec  b                                           ; $5b8f: $05
	jr   @+$15                                       ; $5b90: $18 $13

jr_005_5b92:
	jr   @+$23                                       ; $5b92: $18 $21

	jr   jr_005_5bc6                                 ; $5b94: $18 $30

	jr   @+$33                                       ; $5b96: $18 $31

jr_005_5b98:
	jr   jr_005_5bcc                                 ; $5b98: $18 $32

	jr   @+$35                                       ; $5b9a: $18 $33

	jr   jr_005_5bdc                                 ; $5b9c: $18 $3e

jr_005_5b9e:
	jr   @+$49                                       ; $5b9e: $18 $47

	jr   jr_005_5bea                                 ; $5ba0: $18 $48

	jr   @+$4b                                       ; $5ba2: $18 $49

jr_005_5ba4:
	jr   jr_005_5bf0                                 ; $5ba4: $18 $4a

	jr   @+$4d                                       ; $5ba6: $18 $4b

	jr   jr_005_5bf6                                 ; $5ba8: $18 $4c

jr_005_5baa:
	jr   @+$4f                                       ; $5baa: $18 $4d

	jr   jr_005_5bfc                                 ; $5bac: $18 $4e

	jr   @+$51                                       ; $5bae: $18 $4f

jr_005_5bb0:
	jr   jr_005_5c02                                 ; $5bb0: $18 $50

	jr   @+$53                                       ; $5bb2: $18 $51

	jr   jr_005_5c08                                 ; $5bb4: $18 $52

jr_005_5bb6:
	jr   @+$55                                       ; $5bb6: $18 $53

	jr   jr_005_5c0e                                 ; $5bb8: $18 $54

	jr   @+$57                                       ; $5bba: $18 $55

jr_005_5bbc:
	jr   jr_005_5c14                                 ; $5bbc: $18 $56

	jr   @+$59                                       ; $5bbe: $18 $57

	jr   jr_005_5c1a                                 ; $5bc0: $18 $58

jr_005_5bc2:
	jr   @+$5b                                       ; $5bc2: $18 $59

	jr   jr_005_5c20                                 ; $5bc4: $18 $5a

jr_005_5bc6:
	jr   @+$5d                                       ; $5bc6: $18 $5b

jr_005_5bc8:
	jr   jr_005_5c26                                 ; $5bc8: $18 $5c

	jr   @+$5f                                       ; $5bca: $18 $5d

jr_005_5bcc:
	jr   jr_005_5c2c                                 ; $5bcc: $18 $5e

jr_005_5bce:
	jr   @+$61                                       ; $5bce: $18 $5f

	jr   jr_005_5c32                                 ; $5bd0: $18 $60

	jr   @+$63                                       ; $5bd2: $18 $61

jr_005_5bd4:
	jr   jr_005_5c38                                 ; $5bd4: $18 $62

	jr   @+$65                                       ; $5bd6: $18 $63

	jr   jr_005_5c3e                                 ; $5bd8: $18 $64

jr_005_5bda:
	jr   @+$67                                       ; $5bda: $18 $65

jr_005_5bdc:
	jr   jr_005_5c44                                 ; $5bdc: $18 $66

	jr   @+$69                                       ; $5bde: $18 $67

jr_005_5be0:
	jr   jr_005_5c4a                                 ; $5be0: $18 $68

	jr   @+$6b                                       ; $5be2: $18 $69

	jr   jr_005_5c50                                 ; $5be4: $18 $6a

jr_005_5be6:
	jr   @+$6d                                       ; $5be6: $18 $6b

	jr   jr_005_5c56                                 ; $5be8: $18 $6c

jr_005_5bea:
	jr   @+$6f                                       ; $5bea: $18 $6d

jr_005_5bec:
	jr   jr_005_5c5c                                 ; $5bec: $18 $6e

	jr   @+$71                                       ; $5bee: $18 $6f

jr_005_5bf0:
	jr   jr_005_5c62                                 ; $5bf0: $18 $70

jr_005_5bf2:
	jr   @+$73                                       ; $5bf2: $18 $71

	jr   jr_005_5c68                                 ; $5bf4: $18 $72

jr_005_5bf6:
	jr   @+$75                                       ; $5bf6: $18 $73

jr_005_5bf8:
	jr   jr_005_5c6e                                 ; $5bf8: $18 $74

	jr   @+$77                                       ; $5bfa: $18 $75

jr_005_5bfc:
	jr   jr_005_5c74                                 ; $5bfc: $18 $76

jr_005_5bfe:
	jr   @+$79                                       ; $5bfe: $18 $77

	jr   jr_005_5c7a                                 ; $5c00: $18 $78

jr_005_5c02:
	jr   @+$7b                                       ; $5c02: $18 $79

jr_005_5c04:
	jr   jr_005_5c80                                 ; $5c04: $18 $7a

	jr   @+$7d                                       ; $5c06: $18 $7b

jr_005_5c08:
	jr   jr_005_5c86                                 ; $5c08: $18 $7c

jr_005_5c0a:
	jr   @+$7f                                       ; $5c0a: $18 $7d

	jr   jr_005_5c8c                                 ; $5c0c: $18 $7e

jr_005_5c0e:
	jr   @+$81                                       ; $5c0e: $18 $7f

jr_005_5c10:
	jr   jr_005_5b92                                 ; $5c10: $18 $80

	jr   @-$7d                                       ; $5c12: $18 $81

jr_005_5c14:
	jr   jr_005_5b98                                 ; $5c14: $18 $82

jr_005_5c16:
	jr   @-$7b                                       ; $5c16: $18 $83

	jr   jr_005_5b9e                                 ; $5c18: $18 $84

jr_005_5c1a:
	jr   @-$79                                       ; $5c1a: $18 $85

jr_005_5c1c:
	jr   jr_005_5ba4                                 ; $5c1c: $18 $86

	jr   @-$77                                       ; $5c1e: $18 $87

jr_005_5c20:
	jr   jr_005_5baa                                 ; $5c20: $18 $88

jr_005_5c22:
	jr   @-$75                                       ; $5c22: $18 $89

	jr   jr_005_5bb0                                 ; $5c24: $18 $8a

jr_005_5c26:
	jr   @-$73                                       ; $5c26: $18 $8b

jr_005_5c28:
	jr   jr_005_5bb6                                 ; $5c28: $18 $8c

	jr   @-$71                                       ; $5c2a: $18 $8d

jr_005_5c2c:
	jr   jr_005_5bbc                                 ; $5c2c: $18 $8e

jr_005_5c2e:
	jr   @-$6f                                       ; $5c2e: $18 $8f

	jr   jr_005_5bc2                                 ; $5c30: $18 $90

jr_005_5c32:
	jr   @-$6d                                       ; $5c32: $18 $91

jr_005_5c34:
	jr   jr_005_5bc8                                 ; $5c34: $18 $92

	jr   @-$6b                                       ; $5c36: $18 $93

jr_005_5c38:
	jr   jr_005_5bce                                 ; $5c38: $18 $94

jr_005_5c3a:
	jr   @-$69                                       ; $5c3a: $18 $95

	jr   jr_005_5bd4                                 ; $5c3c: $18 $96

jr_005_5c3e:
	jr   @-$67                                       ; $5c3e: $18 $97

jr_005_5c40:
	jr   jr_005_5bda                                 ; $5c40: $18 $98

	jr   @-$65                                       ; $5c42: $18 $99

jr_005_5c44:
	jr   jr_005_5be0                                 ; $5c44: $18 $9a

jr_005_5c46:
	jr   @-$63                                       ; $5c46: $18 $9b

	jr   jr_005_5be6                                 ; $5c48: $18 $9c

jr_005_5c4a:
	jr   @-$61                                       ; $5c4a: $18 $9d

jr_005_5c4c:
	jr   jr_005_5bec                                 ; $5c4c: $18 $9e

	jr   @-$5f                                       ; $5c4e: $18 $9f

jr_005_5c50:
	jr   jr_005_5bf2                                 ; $5c50: $18 $a0

jr_005_5c52:
	jr   @-$5d                                       ; $5c52: $18 $a1

	jr   jr_005_5bf8                                 ; $5c54: $18 $a2

jr_005_5c56:
	jr   @-$5b                                       ; $5c56: $18 $a3

jr_005_5c58:
	jr   jr_005_5bfe                                 ; $5c58: $18 $a4

	jr   @-$59                                       ; $5c5a: $18 $a5

jr_005_5c5c:
	jr   jr_005_5c04                                 ; $5c5c: $18 $a6

jr_005_5c5e:
	jr   @-$57                                       ; $5c5e: $18 $a7

	jr   jr_005_5c0a                                 ; $5c60: $18 $a8

jr_005_5c62:
	jr   @-$55                                       ; $5c62: $18 $a9

jr_005_5c64:
	jr   jr_005_5c10                                 ; $5c64: $18 $aa

	jr   @-$53                                       ; $5c66: $18 $ab

jr_005_5c68:
	jr   jr_005_5c16                                 ; $5c68: $18 $ac

jr_005_5c6a:
	jr   @-$51                                       ; $5c6a: $18 $ad

	jr   jr_005_5c1c                                 ; $5c6c: $18 $ae

jr_005_5c6e:
	jr   @-$4f                                       ; $5c6e: $18 $af

jr_005_5c70:
	jr   jr_005_5c22                                 ; $5c70: $18 $b0

	jr   @-$4d                                       ; $5c72: $18 $b1

jr_005_5c74:
	jr   jr_005_5c28                                 ; $5c74: $18 $b2

jr_005_5c76:
	jr   @-$4b                                       ; $5c76: $18 $b3

	jr   jr_005_5c2e                                 ; $5c78: $18 $b4

jr_005_5c7a:
	jr   @-$49                                       ; $5c7a: $18 $b5

jr_005_5c7c:
	jr   jr_005_5c34                                 ; $5c7c: $18 $b6

	jr   @-$47                                       ; $5c7e: $18 $b7

jr_005_5c80:
	jr   jr_005_5c3a                                 ; $5c80: $18 $b8

jr_005_5c82:
	jr   @-$45                                       ; $5c82: $18 $b9

	jr   jr_005_5c40                                 ; $5c84: $18 $ba

jr_005_5c86:
	jr   @-$43                                       ; $5c86: $18 $bb

jr_005_5c88:
	jr   jr_005_5c46                                 ; $5c88: $18 $bc

	jr   @-$41                                       ; $5c8a: $18 $bd

jr_005_5c8c:
	jr   jr_005_5c4c                                 ; $5c8c: $18 $be

jr_005_5c8e:
	jr   @-$3f                                       ; $5c8e: $18 $bf

	jr   jr_005_5c52                                 ; $5c90: $18 $c0

	jr   @-$3d                                       ; $5c92: $18 $c1

jr_005_5c94:
	jr   jr_005_5c58                                 ; $5c94: $18 $c2

	jr   @-$3b                                       ; $5c96: $18 $c3

	jr   jr_005_5c5e                                 ; $5c98: $18 $c4

jr_005_5c9a:
	jr   @-$39                                       ; $5c9a: $18 $c5

	jr   jr_005_5c64                                 ; $5c9c: $18 $c6

	jr   @-$37                                       ; $5c9e: $18 $c7

jr_005_5ca0:
	jr   jr_005_5c6a                                 ; $5ca0: $18 $c8

	jr   @-$35                                       ; $5ca2: $18 $c9

	jr   jr_005_5c70                                 ; $5ca4: $18 $ca

jr_005_5ca6:
	jr   @-$33                                       ; $5ca6: $18 $cb

	jr   jr_005_5c76                                 ; $5ca8: $18 $cc

	jr   @-$31                                       ; $5caa: $18 $cd

jr_005_5cac:
	jr   jr_005_5c7c                                 ; $5cac: $18 $ce

	jr   @-$2f                                       ; $5cae: $18 $cf

	jr   jr_005_5c82                                 ; $5cb0: $18 $d0

jr_005_5cb2:
	jr   @-$2d                                       ; $5cb2: $18 $d1

	jr   jr_005_5c88                                 ; $5cb4: $18 $d2

	jr   @-$2b                                       ; $5cb6: $18 $d3

jr_005_5cb8:
	jr   jr_005_5c8e                                 ; $5cb8: $18 $d4

	jr   @-$29                                       ; $5cba: $18 $d5

	jr   jr_005_5c94                                 ; $5cbc: $18 $d6

jr_005_5cbe:
	jr   @-$27                                       ; $5cbe: $18 $d7

	jr   jr_005_5c9a                                 ; $5cc0: $18 $d8

	jr   @-$25                                       ; $5cc2: $18 $d9

jr_005_5cc4:
	jr   jr_005_5ca0                                 ; $5cc4: $18 $da

	jr   @-$23                                       ; $5cc6: $18 $db

	jr   jr_005_5ca6                                 ; $5cc8: $18 $dc

jr_005_5cca:
	jr   @-$21                                       ; $5cca: $18 $dd

	jr   jr_005_5cac                                 ; $5ccc: $18 $de

	jr   @-$1f                                       ; $5cce: $18 $df

jr_005_5cd0:
	jr   jr_005_5cb2                                 ; $5cd0: $18 $e0

	jr   @-$1d                                       ; $5cd2: $18 $e1

	jr   jr_005_5cb8                                 ; $5cd4: $18 $e2

jr_005_5cd6:
	jr   @-$1b                                       ; $5cd6: $18 $e3

	jr   jr_005_5cbe                                 ; $5cd8: $18 $e4

	jr   @-$19                                       ; $5cda: $18 $e5

jr_005_5cdc:
	jr   jr_005_5cc4                                 ; $5cdc: $18 $e6

	jr   @-$17                                       ; $5cde: $18 $e7

	jr   jr_005_5cca                                 ; $5ce0: $18 $e8

jr_005_5ce2:
	jr   @-$15                                       ; $5ce2: $18 $e9

	jr   jr_005_5cd0                                 ; $5ce4: $18 $ea

	jr   @-$13                                       ; $5ce6: $18 $eb

jr_005_5ce8:
	jr   jr_005_5cd6                                 ; $5ce8: $18 $ec

	jr   @-$11                                       ; $5cea: $18 $ed

	jr   jr_005_5cdc                                 ; $5cec: $18 $ee

jr_005_5cee:
	jr   @-$0f                                       ; $5cee: $18 $ef

	jr   jr_005_5ce2                                 ; $5cf0: $18 $f0

	jr   @-$0d                                       ; $5cf2: $18 $f1

jr_005_5cf4:
	jr   jr_005_5ce8                                 ; $5cf4: $18 $f2

	jr   @-$0b                                       ; $5cf6: $18 $f3

	jr   jr_005_5cee                                 ; $5cf8: $18 $f4

jr_005_5cfa:
	jr   @-$09                                       ; $5cfa: $18 $f5

	jr   jr_005_5cf4                                 ; $5cfc: $18 $f6

	jr   @-$07                                       ; $5cfe: $18 $f7

jr_005_5d00:
	jr   jr_005_5cfa                                 ; $5d00: $18 $f8

	jr   @-$05                                       ; $5d02: $18 $f9

	jr   jr_005_5d00                                 ; $5d04: $18 $fa

jr_005_5d06:
	jr   @-$03                                       ; $5d06: $18 $fb

	jr   jr_005_5d06                                 ; $5d08: $18 $fc

	jr   @-$01                                       ; $5d0a: $18 $fd

jr_005_5d0c:
	jr   jr_005_5d0c                                 ; $5d0c: $18 $fe

	jr   @+$01                                       ; $5d0e: $18 $ff

	jr   jr_005_5d12                                 ; $5d10: $18 $00

jr_005_5d12:
	add  hl, de                                      ; $5d12: $19
	ld   bc, $0219                                   ; $5d13: $01 $19 $02
	add  hl, de                                      ; $5d16: $19
	inc  bc                                          ; $5d17: $03
	add  hl, de                                      ; $5d18: $19
	inc  b                                           ; $5d19: $04
	add  hl, de                                      ; $5d1a: $19
	dec  b                                           ; $5d1b: $05
	add  hl, de                                      ; $5d1c: $19
	ld   b, $19                                      ; $5d1d: $06 $19
	rlca                                             ; $5d1f: $07
	add  hl, de                                      ; $5d20: $19
	ld   [$0919], sp                                 ; $5d21: $08 $19 $09
	add  hl, de                                      ; $5d24: $19
	ld   a, [bc]                                     ; $5d25: $0a
	add  hl, de                                      ; $5d26: $19
	dec  bc                                          ; $5d27: $0b
	add  hl, de                                      ; $5d28: $19
	inc  c                                           ; $5d29: $0c
	add  hl, de                                      ; $5d2a: $19
	dec  c                                           ; $5d2b: $0d
	add  hl, de                                      ; $5d2c: $19
	ld   c, $19                                      ; $5d2d: $0e $19
	rrca                                             ; $5d2f: $0f
	add  hl, de                                      ; $5d30: $19
	db   $10                                         ; $5d31: $10
	add  hl, de                                      ; $5d32: $19
	ld   de, $1219                                   ; $5d33: $11 $19 $12
	add  hl, de                                      ; $5d36: $19
	inc  de                                          ; $5d37: $13
	add  hl, de                                      ; $5d38: $19
	inc  d                                           ; $5d39: $14
	add  hl, de                                      ; $5d3a: $19
	dec  d                                           ; $5d3b: $15
	add  hl, de                                      ; $5d3c: $19
	ld   d, $19                                      ; $5d3d: $16 $19
	rla                                              ; $5d3f: $17
	add  hl, de                                      ; $5d40: $19
	jr   jr_005_5d5c                                 ; $5d41: $18 $19

	add  hl, de                                      ; $5d43: $19
	add  hl, de                                      ; $5d44: $19
	ld   a, [de]                                     ; $5d45: $1a
	add  hl, de                                      ; $5d46: $19
	dec  de                                          ; $5d47: $1b
	add  hl, de                                      ; $5d48: $19
	inc  e                                           ; $5d49: $1c
	add  hl, de                                      ; $5d4a: $19
	dec  e                                           ; $5d4b: $1d
	add  hl, de                                      ; $5d4c: $19
	ld   e, $19                                      ; $5d4d: $1e $19
	rra                                              ; $5d4f: $1f
	add  hl, de                                      ; $5d50: $19
	jr   nz, jr_005_5d6c                             ; $5d51: $20 $19

	ld   hl, $2219                                   ; $5d53: $21 $19 $22
	add  hl, de                                      ; $5d56: $19
	inc  hl                                          ; $5d57: $23
	add  hl, de                                      ; $5d58: $19
	inc  h                                           ; $5d59: $24
	add  hl, de                                      ; $5d5a: $19
	dec  h                                           ; $5d5b: $25

jr_005_5d5c:
	add  hl, de                                      ; $5d5c: $19
	ld   h, $19                                      ; $5d5d: $26 $19
	daa                                              ; $5d5f: $27
	add  hl, de                                      ; $5d60: $19
	jr   z, jr_005_5d7c                              ; $5d61: $28 $19

	add  hl, hl                                      ; $5d63: $29
	add  hl, de                                      ; $5d64: $19
	ld   a, [hl+]                                    ; $5d65: $2a
	add  hl, de                                      ; $5d66: $19
	dec  hl                                          ; $5d67: $2b
	add  hl, de                                      ; $5d68: $19
	inc  l                                           ; $5d69: $2c
	add  hl, de                                      ; $5d6a: $19
	dec  l                                           ; $5d6b: $2d

jr_005_5d6c:
	add  hl, de                                      ; $5d6c: $19
	ld   l, $19                                      ; $5d6d: $2e $19
	cpl                                              ; $5d6f: $2f
	add  hl, de                                      ; $5d70: $19
	jr   nc, jr_005_5d8c                             ; $5d71: $30 $19

	ld   sp, $3219                                   ; $5d73: $31 $19 $32
	add  hl, de                                      ; $5d76: $19
	inc  sp                                          ; $5d77: $33
	add  hl, de                                      ; $5d78: $19
	inc  [hl]                                        ; $5d79: $34
	add  hl, de                                      ; $5d7a: $19
	dec  [hl]                                        ; $5d7b: $35

jr_005_5d7c:
	add  hl, de                                      ; $5d7c: $19
	ld   [hl], $19                                   ; $5d7d: $36 $19
	scf                                              ; $5d7f: $37
	add  hl, de                                      ; $5d80: $19
	jr   c, jr_005_5d9c                              ; $5d81: $38 $19

	add  hl, sp                                      ; $5d83: $39
	add  hl, de                                      ; $5d84: $19
	ld   a, [hl-]                                    ; $5d85: $3a
	add  hl, de                                      ; $5d86: $19
	dec  sp                                          ; $5d87: $3b
	add  hl, de                                      ; $5d88: $19
	inc  a                                           ; $5d89: $3c
	add  hl, de                                      ; $5d8a: $19
	dec  a                                           ; $5d8b: $3d

jr_005_5d8c:
	add  hl, de                                      ; $5d8c: $19
	ld   a, $19                                      ; $5d8d: $3e $19
	ccf                                              ; $5d8f: $3f
	add  hl, de                                      ; $5d90: $19
	ld   b, b                                        ; $5d91: $40
	add  hl, de                                      ; $5d92: $19
	ld   b, c                                        ; $5d93: $41
	add  hl, de                                      ; $5d94: $19
	ld   b, d                                        ; $5d95: $42
	add  hl, de                                      ; $5d96: $19
	ld   b, e                                        ; $5d97: $43
	add  hl, de                                      ; $5d98: $19
	ld   b, h                                        ; $5d99: $44
	add  hl, de                                      ; $5d9a: $19
	ld   b, l                                        ; $5d9b: $45

jr_005_5d9c:
	add  hl, de                                      ; $5d9c: $19
	ld   b, [hl]                                     ; $5d9d: $46
	add  hl, de                                      ; $5d9e: $19
	ld   b, a                                        ; $5d9f: $47
	add  hl, de                                      ; $5da0: $19
	ld   c, b                                        ; $5da1: $48
	add  hl, de                                      ; $5da2: $19
	ld   c, c                                        ; $5da3: $49
	add  hl, de                                      ; $5da4: $19
	ld   c, d                                        ; $5da5: $4a
	add  hl, de                                      ; $5da6: $19
	ld   c, e                                        ; $5da7: $4b
	add  hl, de                                      ; $5da8: $19
	ld   c, h                                        ; $5da9: $4c
	add  hl, de                                      ; $5daa: $19
	ld   c, l                                        ; $5dab: $4d
	add  hl, de                                      ; $5dac: $19
	ld   c, [hl]                                     ; $5dad: $4e
	add  hl, de                                      ; $5dae: $19
	ld   c, a                                        ; $5daf: $4f
	add  hl, de                                      ; $5db0: $19
	ld   d, b                                        ; $5db1: $50
	add  hl, de                                      ; $5db2: $19
	ld   d, c                                        ; $5db3: $51
	add  hl, de                                      ; $5db4: $19
	ld   d, d                                        ; $5db5: $52
	add  hl, de                                      ; $5db6: $19
	ld   d, e                                        ; $5db7: $53
	add  hl, de                                      ; $5db8: $19
	ld   d, h                                        ; $5db9: $54
	add  hl, de                                      ; $5dba: $19
	ld   d, l                                        ; $5dbb: $55
	add  hl, de                                      ; $5dbc: $19
	ld   d, [hl]                                     ; $5dbd: $56
	add  hl, de                                      ; $5dbe: $19
	ld   d, a                                        ; $5dbf: $57
	add  hl, de                                      ; $5dc0: $19
	ld   e, b                                        ; $5dc1: $58
	add  hl, de                                      ; $5dc2: $19
	ld   e, c                                        ; $5dc3: $59
	add  hl, de                                      ; $5dc4: $19
	ld   e, d                                        ; $5dc5: $5a
	add  hl, de                                      ; $5dc6: $19
	ld   e, e                                        ; $5dc7: $5b
	add  hl, de                                      ; $5dc8: $19
	ld   e, h                                        ; $5dc9: $5c
	add  hl, de                                      ; $5dca: $19
	ld   e, l                                        ; $5dcb: $5d
	add  hl, de                                      ; $5dcc: $19
	ld   e, [hl]                                     ; $5dcd: $5e
	add  hl, de                                      ; $5dce: $19
	ld   e, a                                        ; $5dcf: $5f
	add  hl, de                                      ; $5dd0: $19
	ld   h, b                                        ; $5dd1: $60
	add  hl, de                                      ; $5dd2: $19
	ld   h, c                                        ; $5dd3: $61
	add  hl, de                                      ; $5dd4: $19
	ld   h, d                                        ; $5dd5: $62
	add  hl, de                                      ; $5dd6: $19
	ld   h, e                                        ; $5dd7: $63
	add  hl, de                                      ; $5dd8: $19
	ld   h, h                                        ; $5dd9: $64
	add  hl, de                                      ; $5dda: $19
	ld   h, l                                        ; $5ddb: $65
	add  hl, de                                      ; $5ddc: $19
	ld   h, [hl]                                     ; $5ddd: $66
	add  hl, de                                      ; $5dde: $19
	ld   h, a                                        ; $5ddf: $67
	add  hl, de                                      ; $5de0: $19
	ld   l, b                                        ; $5de1: $68
	add  hl, de                                      ; $5de2: $19
	ld   l, c                                        ; $5de3: $69
	add  hl, de                                      ; $5de4: $19
	ld   l, d                                        ; $5de5: $6a
	add  hl, de                                      ; $5de6: $19
	ld   l, e                                        ; $5de7: $6b
	add  hl, de                                      ; $5de8: $19
	ld   l, h                                        ; $5de9: $6c
	add  hl, de                                      ; $5dea: $19
	ld   l, l                                        ; $5deb: $6d
	add  hl, de                                      ; $5dec: $19
	ld   l, [hl]                                     ; $5ded: $6e
	add  hl, de                                      ; $5dee: $19
	ld   l, a                                        ; $5def: $6f
	add  hl, de                                      ; $5df0: $19
	ld   [hl], b                                     ; $5df1: $70
	add  hl, de                                      ; $5df2: $19
	ld   [hl], c                                     ; $5df3: $71
	add  hl, de                                      ; $5df4: $19
	ld   [hl], d                                     ; $5df5: $72
	add  hl, de                                      ; $5df6: $19
	ld   [hl], e                                     ; $5df7: $73
	add  hl, de                                      ; $5df8: $19
	ld   [hl], h                                     ; $5df9: $74
	add  hl, de                                      ; $5dfa: $19
	ld   [hl], l                                     ; $5dfb: $75
	add  hl, de                                      ; $5dfc: $19
	halt                                             ; $5dfd: $76
	add  hl, de                                      ; $5dfe: $19
	ld   [hl], a                                     ; $5dff: $77
	add  hl, de                                      ; $5e00: $19
	ld   a, b                                        ; $5e01: $78
	add  hl, de                                      ; $5e02: $19
	ld   a, c                                        ; $5e03: $79
	add  hl, de                                      ; $5e04: $19
	ld   a, d                                        ; $5e05: $7a
	add  hl, de                                      ; $5e06: $19
	ld   a, e                                        ; $5e07: $7b
	add  hl, de                                      ; $5e08: $19
	ld   a, h                                        ; $5e09: $7c
	add  hl, de                                      ; $5e0a: $19
	ld   a, l                                        ; $5e0b: $7d
	add  hl, de                                      ; $5e0c: $19
	ld   a, [hl]                                     ; $5e0d: $7e
	add  hl, de                                      ; $5e0e: $19
	ld   a, a                                        ; $5e0f: $7f
	add  hl, de                                      ; $5e10: $19
	add  b                                           ; $5e11: $80
	add  hl, de                                      ; $5e12: $19
	add  c                                           ; $5e13: $81
	add  hl, de                                      ; $5e14: $19
	add  d                                           ; $5e15: $82
	add  hl, de                                      ; $5e16: $19
	add  e                                           ; $5e17: $83
	add  hl, de                                      ; $5e18: $19
	add  h                                           ; $5e19: $84
	add  hl, de                                      ; $5e1a: $19
	add  l                                           ; $5e1b: $85
	add  hl, de                                      ; $5e1c: $19
	add  [hl]                                        ; $5e1d: $86
	add  hl, de                                      ; $5e1e: $19
	add  a                                           ; $5e1f: $87
	add  hl, de                                      ; $5e20: $19
	adc  b                                           ; $5e21: $88
	add  hl, de                                      ; $5e22: $19
	adc  c                                           ; $5e23: $89
	add  hl, de                                      ; $5e24: $19
	adc  d                                           ; $5e25: $8a
	add  hl, de                                      ; $5e26: $19
	adc  e                                           ; $5e27: $8b
	add  hl, de                                      ; $5e28: $19
	adc  h                                           ; $5e29: $8c
	add  hl, de                                      ; $5e2a: $19
	adc  l                                           ; $5e2b: $8d
	add  hl, de                                      ; $5e2c: $19
	adc  [hl]                                        ; $5e2d: $8e
	add  hl, de                                      ; $5e2e: $19
	adc  a                                           ; $5e2f: $8f
	add  hl, de                                      ; $5e30: $19
	sub  b                                           ; $5e31: $90
	add  hl, de                                      ; $5e32: $19
	sub  c                                           ; $5e33: $91
	add  hl, de                                      ; $5e34: $19
	sub  d                                           ; $5e35: $92
	add  hl, de                                      ; $5e36: $19
	sub  e                                           ; $5e37: $93
	add  hl, de                                      ; $5e38: $19
	sub  h                                           ; $5e39: $94
	add  hl, de                                      ; $5e3a: $19
	sub  l                                           ; $5e3b: $95
	add  hl, de                                      ; $5e3c: $19
	sub  [hl]                                        ; $5e3d: $96
	add  hl, de                                      ; $5e3e: $19
	sub  a                                           ; $5e3f: $97
	add  hl, de                                      ; $5e40: $19
	sbc  b                                           ; $5e41: $98
	add  hl, de                                      ; $5e42: $19
	sbc  c                                           ; $5e43: $99
	add  hl, de                                      ; $5e44: $19
	sbc  d                                           ; $5e45: $9a
	add  hl, de                                      ; $5e46: $19
	sbc  e                                           ; $5e47: $9b
	add  hl, de                                      ; $5e48: $19
	sbc  h                                           ; $5e49: $9c
	add  hl, de                                      ; $5e4a: $19
	sbc  l                                           ; $5e4b: $9d
	add  hl, de                                      ; $5e4c: $19
	sbc  [hl]                                        ; $5e4d: $9e
	add  hl, de                                      ; $5e4e: $19
	sbc  a                                           ; $5e4f: $9f
	add  hl, de                                      ; $5e50: $19
	and  b                                           ; $5e51: $a0
	add  hl, de                                      ; $5e52: $19
	and  c                                           ; $5e53: $a1
	add  hl, de                                      ; $5e54: $19
	and  d                                           ; $5e55: $a2
	add  hl, de                                      ; $5e56: $19
	and  e                                           ; $5e57: $a3
	add  hl, de                                      ; $5e58: $19
	and  h                                           ; $5e59: $a4
	add  hl, de                                      ; $5e5a: $19
	and  l                                           ; $5e5b: $a5
	add  hl, de                                      ; $5e5c: $19
	and  [hl]                                        ; $5e5d: $a6
	add  hl, de                                      ; $5e5e: $19
	and  a                                           ; $5e5f: $a7
	add  hl, de                                      ; $5e60: $19
	xor  b                                           ; $5e61: $a8
	add  hl, de                                      ; $5e62: $19
	xor  c                                           ; $5e63: $a9
	add  hl, de                                      ; $5e64: $19
	xor  d                                           ; $5e65: $aa
	add  hl, de                                      ; $5e66: $19
	xor  e                                           ; $5e67: $ab
	add  hl, de                                      ; $5e68: $19
	xor  h                                           ; $5e69: $ac
	add  hl, de                                      ; $5e6a: $19
	xor  l                                           ; $5e6b: $ad
	add  hl, de                                      ; $5e6c: $19
	xor  [hl]                                        ; $5e6d: $ae
	add  hl, de                                      ; $5e6e: $19
	xor  a                                           ; $5e6f: $af
	add  hl, de                                      ; $5e70: $19
	or   b                                           ; $5e71: $b0
	add  hl, de                                      ; $5e72: $19
	or   c                                           ; $5e73: $b1
	add  hl, de                                      ; $5e74: $19
	or   d                                           ; $5e75: $b2
	add  hl, de                                      ; $5e76: $19
	or   e                                           ; $5e77: $b3
	add  hl, de                                      ; $5e78: $19
	or   h                                           ; $5e79: $b4
	add  hl, de                                      ; $5e7a: $19
	or   l                                           ; $5e7b: $b5
	add  hl, de                                      ; $5e7c: $19
	or   [hl]                                        ; $5e7d: $b6
	add  hl, de                                      ; $5e7e: $19
	or   a                                           ; $5e7f: $b7
	add  hl, de                                      ; $5e80: $19
	cp   b                                           ; $5e81: $b8
	add  hl, de                                      ; $5e82: $19
	cp   c                                           ; $5e83: $b9
	add  hl, de                                      ; $5e84: $19
	cp   d                                           ; $5e85: $ba
	add  hl, de                                      ; $5e86: $19
	cp   e                                           ; $5e87: $bb
	add  hl, de                                      ; $5e88: $19
	cp   h                                           ; $5e89: $bc
	add  hl, de                                      ; $5e8a: $19
	cp   l                                           ; $5e8b: $bd
	add  hl, de                                      ; $5e8c: $19
	cp   [hl]                                        ; $5e8d: $be
	add  hl, de                                      ; $5e8e: $19
	cp   a                                           ; $5e8f: $bf
	add  hl, de                                      ; $5e90: $19
	ret  nz                                          ; $5e91: $c0

	add  hl, de                                      ; $5e92: $19
	pop  bc                                          ; $5e93: $c1
	add  hl, de                                      ; $5e94: $19
	jp   nz, $c319                                   ; $5e95: $c2 $19 $c3

	add  hl, de                                      ; $5e98: $19
	call nz, $c519                                   ; $5e99: $c4 $19 $c5
	add  hl, de                                      ; $5e9c: $19
	add  $19                                         ; $5e9d: $c6 $19
	rst  ToBoot                                         ; $5e9f: $c7
	add  hl, de                                      ; $5ea0: $19
	ret  z                                           ; $5ea1: $c8

	add  hl, de                                      ; $5ea2: $19
	ret                                              ; $5ea3: $c9


	add  hl, de                                      ; $5ea4: $19
	jp   z, $cb19                                    ; $5ea5: $ca $19 $cb

	add  hl, de                                      ; $5ea8: $19
	call z, $cd19                                    ; $5ea9: $cc $19 $cd
	add  hl, de                                      ; $5eac: $19
	adc  $19                                         ; $5ead: $ce $19
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5eaf: $cf
	add  hl, de                                      ; $5eb0: $19
	ret  nc                                          ; $5eb1: $d0

	add  hl, de                                      ; $5eb2: $19
	pop  de                                          ; $5eb3: $d1
	add  hl, de                                      ; $5eb4: $19
	jp   nc, $d319                                   ; $5eb5: $d2 $19 $d3

	add  hl, de                                      ; $5eb8: $19
	call nc, $d519                                   ; $5eb9: $d4 $19 $d5
	add  hl, de                                      ; $5ebc: $19
	sub  $19                                         ; $5ebd: $d6 $19
	rst  $10                                         ; $5ebf: $d7
	add  hl, de                                      ; $5ec0: $19
	ret  c                                           ; $5ec1: $d8

	add  hl, de                                      ; $5ec2: $19
	reti                                             ; $5ec3: $d9


	add  hl, de                                      ; $5ec4: $19
	jp   c, $db19                                    ; $5ec5: $da $19 $db

	add  hl, de                                      ; $5ec8: $19
	call c, $dd19                                    ; $5ec9: $dc $19 $dd
	add  hl, de                                      ; $5ecc: $19
	sbc  $19                                         ; $5ecd: $de $19
	rst  JumpTable                                         ; $5ecf: $df
	add  hl, de                                      ; $5ed0: $19
	ldh  [rAUD2HIGH], a                              ; $5ed1: $e0 $19
	pop  hl                                          ; $5ed3: $e1
	add  hl, de                                      ; $5ed4: $19
	ldh  [c], a                                      ; $5ed5: $e2
	add  hl, de                                      ; $5ed6: $19
	db   $e3                                         ; $5ed7: $e3
	add  hl, de                                      ; $5ed8: $19
	db   $e4                                         ; $5ed9: $e4
	add  hl, de                                      ; $5eda: $19
	push hl                                          ; $5edb: $e5
	add  hl, de                                      ; $5edc: $19
	and  $19                                         ; $5edd: $e6 $19
	rst  $20                                         ; $5edf: $e7
	add  hl, de                                      ; $5ee0: $19
	add  sp, $19                                     ; $5ee1: $e8 $19
	jp   hl                                          ; $5ee3: $e9


	add  hl, de                                      ; $5ee4: $19
	ld   [$eb19], a                                  ; $5ee5: $ea $19 $eb
	add  hl, de                                      ; $5ee8: $19
	db   $ec                                         ; $5ee9: $ec
	add  hl, de                                      ; $5eea: $19
	db   $ed                                         ; $5eeb: $ed
	add  hl, de                                      ; $5eec: $19
	xor  $19                                         ; $5eed: $ee $19
	rst  $28                                         ; $5eef: $ef
	add  hl, de                                      ; $5ef0: $19
	ldh  a, [rAUD2HIGH]                              ; $5ef1: $f0 $19
	pop  af                                          ; $5ef3: $f1
	add  hl, de                                      ; $5ef4: $19
	ldh  a, [c]                                      ; $5ef5: $f2
	add  hl, de                                      ; $5ef6: $19
	di                                               ; $5ef7: $f3
	add  hl, de                                      ; $5ef8: $19
	db   $f4                                         ; $5ef9: $f4
	add  hl, de                                      ; $5efa: $19
	push af                                          ; $5efb: $f5
	add  hl, de                                      ; $5efc: $19
	or   $19                                         ; $5efd: $f6 $19
	rst  $30                                         ; $5eff: $f7
	add  hl, de                                      ; $5f00: $19
	ld   hl, sp+$19                                  ; $5f01: $f8 $19
	ld   sp, hl                                      ; $5f03: $f9
	add  hl, de                                      ; $5f04: $19
	ld   a, [$fb19]                                  ; $5f05: $fa $19 $fb
	add  hl, de                                      ; $5f08: $19
	db   $fc                                         ; $5f09: $fc
	add  hl, de                                      ; $5f0a: $19
	db   $fd                                         ; $5f0b: $fd
	add  hl, de                                      ; $5f0c: $19
	cp   $19                                         ; $5f0d: $fe $19
	rst  $38                                         ; $5f0f: $ff
	add  hl, de                                      ; $5f10: $19
	nop                                              ; $5f11: $00
	ld   a, [de]                                     ; $5f12: $1a
	ld   bc, $021a                                   ; $5f13: $01 $1a $02
	ld   a, [de]                                     ; $5f16: $1a
	inc  bc                                          ; $5f17: $03
	ld   a, [de]                                     ; $5f18: $1a
	inc  b                                           ; $5f19: $04
	ld   a, [de]                                     ; $5f1a: $1a
	dec  b                                           ; $5f1b: $05
	ld   a, [de]                                     ; $5f1c: $1a
	ld   b, $1a                                      ; $5f1d: $06 $1a
	rlca                                             ; $5f1f: $07
	ld   a, [de]                                     ; $5f20: $1a
	ld   [$091a], sp                                 ; $5f21: $08 $1a $09
	ld   a, [de]                                     ; $5f24: $1a
	ld   a, [bc]                                     ; $5f25: $0a
	ld   a, [de]                                     ; $5f26: $1a
	dec  bc                                          ; $5f27: $0b
	ld   a, [de]                                     ; $5f28: $1a
	inc  c                                           ; $5f29: $0c
	ld   a, [de]                                     ; $5f2a: $1a
	dec  c                                           ; $5f2b: $0d
	ld   a, [de]                                     ; $5f2c: $1a
	ld   c, $1a                                      ; $5f2d: $0e $1a
	rrca                                             ; $5f2f: $0f
	ld   a, [de]                                     ; $5f30: $1a
	db   $10                                         ; $5f31: $10
	ld   a, [de]                                     ; $5f32: $1a
	ld   de, $121a                                   ; $5f33: $11 $1a $12
	ld   a, [de]                                     ; $5f36: $1a
	inc  de                                          ; $5f37: $13
	ld   a, [de]                                     ; $5f38: $1a
	inc  d                                           ; $5f39: $14
	ld   a, [de]                                     ; $5f3a: $1a
	dec  d                                           ; $5f3b: $15
	ld   a, [de]                                     ; $5f3c: $1a
	ld   d, $1a                                      ; $5f3d: $16 $1a
	rla                                              ; $5f3f: $17
	ld   a, [de]                                     ; $5f40: $1a
	jr   jr_005_5f5d                                 ; $5f41: $18 $1a

	add  hl, de                                      ; $5f43: $19
	ld   a, [de]                                     ; $5f44: $1a
	ld   a, [de]                                     ; $5f45: $1a
	ld   a, [de]                                     ; $5f46: $1a
	dec  de                                          ; $5f47: $1b
	ld   a, [de]                                     ; $5f48: $1a
	inc  e                                           ; $5f49: $1c
	ld   a, [de]                                     ; $5f4a: $1a
	dec  e                                           ; $5f4b: $1d
	ld   a, [de]                                     ; $5f4c: $1a
	ld   e, $1a                                      ; $5f4d: $1e $1a
	rra                                              ; $5f4f: $1f
	ld   a, [de]                                     ; $5f50: $1a
	jr   nz, jr_005_5f6d                             ; $5f51: $20 $1a

	ld   hl, $221a                                   ; $5f53: $21 $1a $22
	ld   a, [de]                                     ; $5f56: $1a
	inc  hl                                          ; $5f57: $23
	ld   a, [de]                                     ; $5f58: $1a
	inc  h                                           ; $5f59: $24
	ld   a, [de]                                     ; $5f5a: $1a
	dec  h                                           ; $5f5b: $25
	ld   a, [de]                                     ; $5f5c: $1a

jr_005_5f5d:
	ld   h, $1a                                      ; $5f5d: $26 $1a
	daa                                              ; $5f5f: $27
	ld   a, [de]                                     ; $5f60: $1a
	jr   z, jr_005_5f7d                              ; $5f61: $28 $1a

	add  hl, hl                                      ; $5f63: $29
	ld   a, [de]                                     ; $5f64: $1a
	ld   a, [hl+]                                    ; $5f65: $2a
	ld   a, [de]                                     ; $5f66: $1a
	dec  hl                                          ; $5f67: $2b
	ld   a, [de]                                     ; $5f68: $1a
	inc  l                                           ; $5f69: $2c
	ld   a, [de]                                     ; $5f6a: $1a
	dec  l                                           ; $5f6b: $2d
	ld   a, [de]                                     ; $5f6c: $1a

jr_005_5f6d:
	ld   l, $1a                                      ; $5f6d: $2e $1a
	cpl                                              ; $5f6f: $2f
	ld   a, [de]                                     ; $5f70: $1a
	jr   nc, jr_005_5f8d                             ; $5f71: $30 $1a

	ld   sp, $321a                                   ; $5f73: $31 $1a $32
	ld   a, [de]                                     ; $5f76: $1a
	inc  sp                                          ; $5f77: $33
	ld   a, [de]                                     ; $5f78: $1a
	inc  [hl]                                        ; $5f79: $34
	ld   a, [de]                                     ; $5f7a: $1a
	dec  [hl]                                        ; $5f7b: $35
	ld   a, [de]                                     ; $5f7c: $1a

jr_005_5f7d:
	ld   [hl], $1a                                   ; $5f7d: $36 $1a
	scf                                              ; $5f7f: $37
	ld   a, [de]                                     ; $5f80: $1a
	jr   c, jr_005_5f9d                              ; $5f81: $38 $1a

	add  hl, sp                                      ; $5f83: $39
	ld   a, [de]                                     ; $5f84: $1a
	ld   a, [hl-]                                    ; $5f85: $3a
	ld   a, [de]                                     ; $5f86: $1a
	dec  sp                                          ; $5f87: $3b
	ld   a, [de]                                     ; $5f88: $1a
	inc  a                                           ; $5f89: $3c
	ld   a, [de]                                     ; $5f8a: $1a
	dec  a                                           ; $5f8b: $3d
	ld   a, [de]                                     ; $5f8c: $1a

jr_005_5f8d:
	ld   a, $1a                                      ; $5f8d: $3e $1a
	ccf                                              ; $5f8f: $3f
	ld   a, [de]                                     ; $5f90: $1a
	ld   b, b                                        ; $5f91: $40
	ld   a, [de]                                     ; $5f92: $1a
	ld   b, c                                        ; $5f93: $41
	ld   a, [de]                                     ; $5f94: $1a
	ld   b, d                                        ; $5f95: $42
	ld   a, [de]                                     ; $5f96: $1a
	ld   b, e                                        ; $5f97: $43
	ld   a, [de]                                     ; $5f98: $1a
	ld   b, h                                        ; $5f99: $44
	ld   a, [de]                                     ; $5f9a: $1a
	ld   b, l                                        ; $5f9b: $45
	ld   a, [de]                                     ; $5f9c: $1a

jr_005_5f9d:
	ld   b, [hl]                                     ; $5f9d: $46
	ld   a, [de]                                     ; $5f9e: $1a
	ld   b, a                                        ; $5f9f: $47
	ld   a, [de]                                     ; $5fa0: $1a
	ld   c, b                                        ; $5fa1: $48
	ld   a, [de]                                     ; $5fa2: $1a
	ld   c, c                                        ; $5fa3: $49
	ld   a, [de]                                     ; $5fa4: $1a
	ld   c, d                                        ; $5fa5: $4a
	ld   a, [de]                                     ; $5fa6: $1a
	ld   c, e                                        ; $5fa7: $4b
	ld   a, [de]                                     ; $5fa8: $1a
	ld   c, h                                        ; $5fa9: $4c
	ld   a, [de]                                     ; $5faa: $1a
	ld   c, l                                        ; $5fab: $4d
	ld   a, [de]                                     ; $5fac: $1a
	ld   c, [hl]                                     ; $5fad: $4e
	ld   a, [de]                                     ; $5fae: $1a
	ld   c, a                                        ; $5faf: $4f
	ld   a, [de]                                     ; $5fb0: $1a
	ld   d, b                                        ; $5fb1: $50
	ld   a, [de]                                     ; $5fb2: $1a
	ld   d, c                                        ; $5fb3: $51
	ld   a, [de]                                     ; $5fb4: $1a
	ld   d, d                                        ; $5fb5: $52
	ld   a, [de]                                     ; $5fb6: $1a
	ld   d, e                                        ; $5fb7: $53
	ld   a, [de]                                     ; $5fb8: $1a
	ld   d, h                                        ; $5fb9: $54
	ld   a, [de]                                     ; $5fba: $1a
	ld   d, l                                        ; $5fbb: $55
	ld   a, [de]                                     ; $5fbc: $1a
	ld   d, [hl]                                     ; $5fbd: $56
	ld   a, [de]                                     ; $5fbe: $1a
	ld   d, a                                        ; $5fbf: $57
	ld   a, [de]                                     ; $5fc0: $1a
	ld   e, b                                        ; $5fc1: $58
	ld   a, [de]                                     ; $5fc2: $1a
	ld   e, c                                        ; $5fc3: $59
	ld   a, [de]                                     ; $5fc4: $1a
	ld   e, d                                        ; $5fc5: $5a
	ld   a, [de]                                     ; $5fc6: $1a
	ld   e, e                                        ; $5fc7: $5b
	ld   a, [de]                                     ; $5fc8: $1a
	ld   e, h                                        ; $5fc9: $5c
	ld   a, [de]                                     ; $5fca: $1a
	ld   e, l                                        ; $5fcb: $5d
	ld   a, [de]                                     ; $5fcc: $1a
	ld   e, [hl]                                     ; $5fcd: $5e
	ld   a, [de]                                     ; $5fce: $1a
	ld   e, a                                        ; $5fcf: $5f
	ld   a, [de]                                     ; $5fd0: $1a
	ld   h, b                                        ; $5fd1: $60
	ld   a, [de]                                     ; $5fd2: $1a
	ld   h, c                                        ; $5fd3: $61
	ld   a, [de]                                     ; $5fd4: $1a
	ld   h, d                                        ; $5fd5: $62
	ld   a, [de]                                     ; $5fd6: $1a
	ld   h, e                                        ; $5fd7: $63
	ld   a, [de]                                     ; $5fd8: $1a
	ld   h, h                                        ; $5fd9: $64
	ld   a, [de]                                     ; $5fda: $1a
	ld   h, l                                        ; $5fdb: $65
	ld   a, [de]                                     ; $5fdc: $1a
	ld   h, [hl]                                     ; $5fdd: $66
	ld   a, [de]                                     ; $5fde: $1a
	ld   h, a                                        ; $5fdf: $67
	ld   a, [de]                                     ; $5fe0: $1a
	ld   l, b                                        ; $5fe1: $68
	ld   a, [de]                                     ; $5fe2: $1a
	ld   l, c                                        ; $5fe3: $69
	ld   a, [de]                                     ; $5fe4: $1a
	ld   l, d                                        ; $5fe5: $6a
	ld   a, [de]                                     ; $5fe6: $1a
	ld   l, e                                        ; $5fe7: $6b
	ld   a, [de]                                     ; $5fe8: $1a
	ld   l, h                                        ; $5fe9: $6c
	ld   a, [de]                                     ; $5fea: $1a
	ld   l, l                                        ; $5feb: $6d
	ld   a, [de]                                     ; $5fec: $1a
	ld   l, [hl]                                     ; $5fed: $6e
	ld   a, [de]                                     ; $5fee: $1a
	ld   l, a                                        ; $5fef: $6f
	ld   a, [de]                                     ; $5ff0: $1a
	ld   [hl], b                                     ; $5ff1: $70
	ld   a, [de]                                     ; $5ff2: $1a
	ld   [hl], c                                     ; $5ff3: $71
	ld   a, [de]                                     ; $5ff4: $1a
	ld   [hl], d                                     ; $5ff5: $72
	ld   a, [de]                                     ; $5ff6: $1a
	ld   [hl], e                                     ; $5ff7: $73
	ld   a, [de]                                     ; $5ff8: $1a
	ld   [hl], h                                     ; $5ff9: $74
	ld   a, [de]                                     ; $5ffa: $1a
	ld   [hl], l                                     ; $5ffb: $75
	ld   a, [de]                                     ; $5ffc: $1a
	halt                                             ; $5ffd: $76
	ld   a, [de]                                     ; $5ffe: $1a
	ld   [hl], a                                     ; $5fff: $77
	ld   a, [de]                                     ; $6000: $1a
	ld   a, b                                        ; $6001: $78
	ld   a, [de]                                     ; $6002: $1a
	ld   a, c                                        ; $6003: $79
	ld   a, [de]                                     ; $6004: $1a
	ld   a, d                                        ; $6005: $7a
	ld   a, [de]                                     ; $6006: $1a
	ld   a, e                                        ; $6007: $7b
	ld   a, [de]                                     ; $6008: $1a
	ld   a, h                                        ; $6009: $7c
	ld   a, [de]                                     ; $600a: $1a
	ld   a, l                                        ; $600b: $7d
	ld   a, [de]                                     ; $600c: $1a
	ld   a, [hl]                                     ; $600d: $7e
	ld   a, [de]                                     ; $600e: $1a
	ld   a, a                                        ; $600f: $7f
	ld   a, [de]                                     ; $6010: $1a
	add  b                                           ; $6011: $80
	ld   a, [de]                                     ; $6012: $1a
	add  c                                           ; $6013: $81
	ld   a, [de]                                     ; $6014: $1a
	add  d                                           ; $6015: $82
	ld   a, [de]                                     ; $6016: $1a
	add  e                                           ; $6017: $83
	ld   a, [de]                                     ; $6018: $1a
	add  h                                           ; $6019: $84
	ld   a, [de]                                     ; $601a: $1a
	add  l                                           ; $601b: $85
	ld   a, [de]                                     ; $601c: $1a
	add  [hl]                                        ; $601d: $86
	ld   a, [de]                                     ; $601e: $1a
	add  a                                           ; $601f: $87
	ld   a, [de]                                     ; $6020: $1a
	adc  b                                           ; $6021: $88
	ld   a, [de]                                     ; $6022: $1a
	adc  c                                           ; $6023: $89
	ld   a, [de]                                     ; $6024: $1a
	adc  d                                           ; $6025: $8a
	ld   a, [de]                                     ; $6026: $1a
	adc  e                                           ; $6027: $8b
	ld   a, [de]                                     ; $6028: $1a
	adc  h                                           ; $6029: $8c
	ld   a, [de]                                     ; $602a: $1a
	adc  l                                           ; $602b: $8d
	ld   a, [de]                                     ; $602c: $1a
	adc  [hl]                                        ; $602d: $8e
	ld   a, [de]                                     ; $602e: $1a
	adc  a                                           ; $602f: $8f
	ld   a, [de]                                     ; $6030: $1a
	sub  b                                           ; $6031: $90
	ld   a, [de]                                     ; $6032: $1a
	sub  c                                           ; $6033: $91
	ld   a, [de]                                     ; $6034: $1a
	sub  d                                           ; $6035: $92
	ld   a, [de]                                     ; $6036: $1a
	sub  e                                           ; $6037: $93
	ld   a, [de]                                     ; $6038: $1a
	sub  h                                           ; $6039: $94
	ld   a, [de]                                     ; $603a: $1a
	sub  l                                           ; $603b: $95
	ld   a, [de]                                     ; $603c: $1a
	sub  [hl]                                        ; $603d: $96
	ld   a, [de]                                     ; $603e: $1a
	sub  a                                           ; $603f: $97
	ld   a, [de]                                     ; $6040: $1a
	sbc  b                                           ; $6041: $98
	ld   a, [de]                                     ; $6042: $1a
	sbc  c                                           ; $6043: $99
	ld   a, [de]                                     ; $6044: $1a
	sbc  d                                           ; $6045: $9a
	ld   a, [de]                                     ; $6046: $1a
	sbc  e                                           ; $6047: $9b
	ld   a, [de]                                     ; $6048: $1a
	sbc  h                                           ; $6049: $9c
	ld   a, [de]                                     ; $604a: $1a
	sbc  l                                           ; $604b: $9d
	ld   a, [de]                                     ; $604c: $1a
	sbc  [hl]                                        ; $604d: $9e
	ld   a, [de]                                     ; $604e: $1a
	sbc  a                                           ; $604f: $9f
	ld   a, [de]                                     ; $6050: $1a
	and  b                                           ; $6051: $a0
	ld   a, [de]                                     ; $6052: $1a
	and  c                                           ; $6053: $a1
	ld   a, [de]                                     ; $6054: $1a
	and  d                                           ; $6055: $a2
	ld   a, [de]                                     ; $6056: $1a
	and  e                                           ; $6057: $a3
	ld   a, [de]                                     ; $6058: $1a
	and  h                                           ; $6059: $a4
	ld   a, [de]                                     ; $605a: $1a
	and  l                                           ; $605b: $a5
	ld   a, [de]                                     ; $605c: $1a
	and  [hl]                                        ; $605d: $a6
	ld   a, [de]                                     ; $605e: $1a
	and  a                                           ; $605f: $a7
	ld   a, [de]                                     ; $6060: $1a
	xor  b                                           ; $6061: $a8
	ld   a, [de]                                     ; $6062: $1a
	xor  c                                           ; $6063: $a9
	ld   a, [de]                                     ; $6064: $1a
	xor  d                                           ; $6065: $aa
	ld   a, [de]                                     ; $6066: $1a
	xor  e                                           ; $6067: $ab
	ld   a, [de]                                     ; $6068: $1a
	xor  h                                           ; $6069: $ac
	ld   a, [de]                                     ; $606a: $1a
	xor  l                                           ; $606b: $ad
	ld   a, [de]                                     ; $606c: $1a
	xor  [hl]                                        ; $606d: $ae
	ld   a, [de]                                     ; $606e: $1a
	xor  a                                           ; $606f: $af
	ld   a, [de]                                     ; $6070: $1a
	or   b                                           ; $6071: $b0
	ld   a, [de]                                     ; $6072: $1a
	or   c                                           ; $6073: $b1
	ld   a, [de]                                     ; $6074: $1a
	or   d                                           ; $6075: $b2
	ld   a, [de]                                     ; $6076: $1a
	or   e                                           ; $6077: $b3
	ld   a, [de]                                     ; $6078: $1a
	or   h                                           ; $6079: $b4
	ld   a, [de]                                     ; $607a: $1a
	or   l                                           ; $607b: $b5
	ld   a, [de]                                     ; $607c: $1a
	or   [hl]                                        ; $607d: $b6
	ld   a, [de]                                     ; $607e: $1a
	or   a                                           ; $607f: $b7
	ld   a, [de]                                     ; $6080: $1a
	cp   b                                           ; $6081: $b8
	ld   a, [de]                                     ; $6082: $1a
	cp   c                                           ; $6083: $b9
	ld   a, [de]                                     ; $6084: $1a
	cp   d                                           ; $6085: $ba
	ld   a, [de]                                     ; $6086: $1a
	cp   e                                           ; $6087: $bb
	ld   a, [de]                                     ; $6088: $1a
	cp   h                                           ; $6089: $bc
	ld   a, [de]                                     ; $608a: $1a
	cp   l                                           ; $608b: $bd
	ld   a, [de]                                     ; $608c: $1a
	cp   [hl]                                        ; $608d: $be
	ld   a, [de]                                     ; $608e: $1a
	cp   a                                           ; $608f: $bf
	ld   a, [de]                                     ; $6090: $1a
	ret  nz                                          ; $6091: $c0

	ld   a, [de]                                     ; $6092: $1a
	pop  bc                                          ; $6093: $c1
	ld   a, [de]                                     ; $6094: $1a
	jp   nz, $c31a                                   ; $6095: $c2 $1a $c3

	ld   a, [de]                                     ; $6098: $1a
	call nz, $c51a                                   ; $6099: $c4 $1a $c5
	ld   a, [de]                                     ; $609c: $1a
	add  $1a                                         ; $609d: $c6 $1a
	rst  ToBoot                                         ; $609f: $c7
	ld   a, [de]                                     ; $60a0: $1a
	ret  z                                           ; $60a1: $c8

	ld   a, [de]                                     ; $60a2: $1a
	ret                                              ; $60a3: $c9


	ld   a, [de]                                     ; $60a4: $1a
	jp   z, $cb1a                                    ; $60a5: $ca $1a $cb

	ld   a, [de]                                     ; $60a8: $1a
	call z, $cd1a                                    ; $60a9: $cc $1a $cd
	ld   a, [de]                                     ; $60ac: $1a
	adc  $1a                                         ; $60ad: $ce $1a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $60af: $cf
	ld   a, [de]                                     ; $60b0: $1a
	ret  nc                                          ; $60b1: $d0

	ld   a, [de]                                     ; $60b2: $1a
	pop  de                                          ; $60b3: $d1
	ld   a, [de]                                     ; $60b4: $1a
	jp   nc, $d31a                                   ; $60b5: $d2 $1a $d3

	ld   a, [de]                                     ; $60b8: $1a
	call nc, $d51a                                   ; $60b9: $d4 $1a $d5
	ld   a, [de]                                     ; $60bc: $1a
	sub  $1a                                         ; $60bd: $d6 $1a
	rst  $10                                         ; $60bf: $d7
	ld   a, [de]                                     ; $60c0: $1a
	ret  c                                           ; $60c1: $d8

	ld   a, [de]                                     ; $60c2: $1a
	reti                                             ; $60c3: $d9


	ld   a, [de]                                     ; $60c4: $1a
	jp   c, $db1a                                    ; $60c5: $da $1a $db

	ld   a, [de]                                     ; $60c8: $1a
	call c, $dd1a                                    ; $60c9: $dc $1a $dd
	ld   a, [de]                                     ; $60cc: $1a
	sbc  $1a                                         ; $60cd: $de $1a
	rst  JumpTable                                         ; $60cf: $df
	ld   a, [de]                                     ; $60d0: $1a
	ldh  [rAUD3ENA], a                               ; $60d1: $e0 $1a
	pop  hl                                          ; $60d3: $e1
	ld   a, [de]                                     ; $60d4: $1a
	ldh  [c], a                                      ; $60d5: $e2
	ld   a, [de]                                     ; $60d6: $1a
	db   $e3                                         ; $60d7: $e3
	ld   a, [de]                                     ; $60d8: $1a
	db   $e4                                         ; $60d9: $e4
	ld   a, [de]                                     ; $60da: $1a
	push hl                                          ; $60db: $e5
	ld   a, [de]                                     ; $60dc: $1a
	and  $1a                                         ; $60dd: $e6 $1a
	rst  $20                                         ; $60df: $e7
	ld   a, [de]                                     ; $60e0: $1a
	add  sp, $1a                                     ; $60e1: $e8 $1a
	jp   hl                                          ; $60e3: $e9


	ld   a, [de]                                     ; $60e4: $1a
	ld   [$eb1a], a                                  ; $60e5: $ea $1a $eb
	ld   a, [de]                                     ; $60e8: $1a
	db   $ec                                         ; $60e9: $ec
	ld   a, [de]                                     ; $60ea: $1a
	db   $ed                                         ; $60eb: $ed
	ld   a, [de]                                     ; $60ec: $1a
	xor  $1a                                         ; $60ed: $ee $1a
	rst  $28                                         ; $60ef: $ef
	ld   a, [de]                                     ; $60f0: $1a
	ldh  a, [rAUD3ENA]                               ; $60f1: $f0 $1a
	pop  af                                          ; $60f3: $f1
	ld   a, [de]                                     ; $60f4: $1a
	ldh  a, [c]                                      ; $60f5: $f2
	ld   a, [de]                                     ; $60f6: $1a
	di                                               ; $60f7: $f3
	ld   a, [de]                                     ; $60f8: $1a
	db   $f4                                         ; $60f9: $f4
	ld   a, [de]                                     ; $60fa: $1a
	push af                                          ; $60fb: $f5
	ld   a, [de]                                     ; $60fc: $1a
	or   $1a                                         ; $60fd: $f6 $1a
	rst  $30                                         ; $60ff: $f7
	ld   a, [de]                                     ; $6100: $1a
	ld   hl, sp+$1a                                  ; $6101: $f8 $1a
	ld   sp, hl                                      ; $6103: $f9
	ld   a, [de]                                     ; $6104: $1a
	ld   a, [$fb1a]                                  ; $6105: $fa $1a $fb
	ld   a, [de]                                     ; $6108: $1a
	db   $fc                                         ; $6109: $fc
	ld   a, [de]                                     ; $610a: $1a
	db   $fd                                         ; $610b: $fd
	ld   a, [de]                                     ; $610c: $1a
	cp   $1a                                         ; $610d: $fe $1a
	rst  $38                                         ; $610f: $ff
	ld   a, [de]                                     ; $6110: $1a
	nop                                              ; $6111: $00
	dec  de                                          ; $6112: $1b
	ld   bc, $021b                                   ; $6113: $01 $1b $02
	dec  de                                          ; $6116: $1b
	inc  bc                                          ; $6117: $03
	dec  de                                          ; $6118: $1b
	inc  b                                           ; $6119: $04
	dec  de                                          ; $611a: $1b
	dec  b                                           ; $611b: $05
	dec  de                                          ; $611c: $1b
	ld   b, $1b                                      ; $611d: $06 $1b
	rlca                                             ; $611f: $07
	dec  de                                          ; $6120: $1b
	ld   [$091b], sp                                 ; $6121: $08 $1b $09
	dec  de                                          ; $6124: $1b
	ld   a, [bc]                                     ; $6125: $0a
	dec  de                                          ; $6126: $1b
	dec  bc                                          ; $6127: $0b
	dec  de                                          ; $6128: $1b
	inc  c                                           ; $6129: $0c
	dec  de                                          ; $612a: $1b
	dec  c                                           ; $612b: $0d
	dec  de                                          ; $612c: $1b
	ld   c, $1b                                      ; $612d: $0e $1b
	rrca                                             ; $612f: $0f
	dec  de                                          ; $6130: $1b
	db   $10                                         ; $6131: $10
	dec  de                                          ; $6132: $1b
	ld   de, $121b                                   ; $6133: $11 $1b $12
	dec  de                                          ; $6136: $1b
	inc  de                                          ; $6137: $13
	dec  de                                          ; $6138: $1b
	inc  d                                           ; $6139: $14
	dec  de                                          ; $613a: $1b
	dec  d                                           ; $613b: $15
	dec  de                                          ; $613c: $1b
	ld   d, $1b                                      ; $613d: $16 $1b
	rla                                              ; $613f: $17
	dec  de                                          ; $6140: $1b
	jr   @+$1d                                       ; $6141: $18 $1b

	add  hl, de                                      ; $6143: $19
	dec  de                                          ; $6144: $1b
	ld   a, [de]                                     ; $6145: $1a
	dec  de                                          ; $6146: $1b
	dec  de                                          ; $6147: $1b
	dec  de                                          ; $6148: $1b
	inc  e                                           ; $6149: $1c
	dec  de                                          ; $614a: $1b
	dec  e                                           ; $614b: $1d
	dec  de                                          ; $614c: $1b
	ld   e, $1b                                      ; $614d: $1e $1b
	rra                                              ; $614f: $1f
	dec  de                                          ; $6150: $1b
	jr   nz, @+$1d                                   ; $6151: $20 $1b

	ld   hl, $221b                                   ; $6153: $21 $1b $22
	dec  de                                          ; $6156: $1b
	inc  hl                                          ; $6157: $23
	dec  de                                          ; $6158: $1b
	inc  h                                           ; $6159: $24
	dec  de                                          ; $615a: $1b
	dec  h                                           ; $615b: $25
	dec  de                                          ; $615c: $1b
	ld   h, $1b                                      ; $615d: $26 $1b
	daa                                              ; $615f: $27
	dec  de                                          ; $6160: $1b
	jr   z, @+$1d                                    ; $6161: $28 $1b

	add  hl, hl                                      ; $6163: $29
	dec  de                                          ; $6164: $1b
	ld   a, [hl+]                                    ; $6165: $2a
	dec  de                                          ; $6166: $1b
	dec  hl                                          ; $6167: $2b
	dec  de                                          ; $6168: $1b
	inc  l                                           ; $6169: $2c
	dec  de                                          ; $616a: $1b
	dec  l                                           ; $616b: $2d
	dec  de                                          ; $616c: $1b
	ld   l, $1b                                      ; $616d: $2e $1b
	cpl                                              ; $616f: $2f
	dec  de                                          ; $6170: $1b
	jr   nc, @+$1d                                   ; $6171: $30 $1b

	ld   sp, $321b                                   ; $6173: $31 $1b $32
	dec  de                                          ; $6176: $1b
	inc  sp                                          ; $6177: $33
	dec  de                                          ; $6178: $1b
	inc  [hl]                                        ; $6179: $34
	dec  de                                          ; $617a: $1b
	dec  [hl]                                        ; $617b: $35
	dec  de                                          ; $617c: $1b
	ld   [hl], $1b                                   ; $617d: $36 $1b
	scf                                              ; $617f: $37
	dec  de                                          ; $6180: $1b
	jr   c, jr_005_619e                              ; $6181: $38 $1b

	add  hl, sp                                      ; $6183: $39
	dec  de                                          ; $6184: $1b
	ld   a, [hl-]                                    ; $6185: $3a
	dec  de                                          ; $6186: $1b
	dec  sp                                          ; $6187: $3b
	dec  de                                          ; $6188: $1b
	inc  a                                           ; $6189: $3c
	dec  de                                          ; $618a: $1b
	dec  a                                           ; $618b: $3d
	dec  de                                          ; $618c: $1b
	ld   a, $1b                                      ; $618d: $3e $1b
	ccf                                              ; $618f: $3f
	dec  de                                          ; $6190: $1b
	ld   b, b                                        ; $6191: $40
	dec  de                                          ; $6192: $1b
	ld   b, c                                        ; $6193: $41
	dec  de                                          ; $6194: $1b
	ld   b, d                                        ; $6195: $42
	dec  de                                          ; $6196: $1b
	ld   b, e                                        ; $6197: $43
	dec  de                                          ; $6198: $1b
	ld   b, h                                        ; $6199: $44
	dec  de                                          ; $619a: $1b
	ld   b, l                                        ; $619b: $45
	dec  de                                          ; $619c: $1b
	ld   b, [hl]                                     ; $619d: $46

jr_005_619e:
	dec  de                                          ; $619e: $1b
	inc  b                                           ; $619f: $04
	xor  d                                           ; $61a0: $aa
	inc  b                                           ; $61a1: $04
	ld   [hl], c                                     ; $61a2: $71
	nop                                              ; $61a3: $00
	push de                                          ; $61a4: $d5
	db   $ec                                         ; $61a5: $ec
	xor  e                                           ; $61a6: $ab
	jp   z, $0000                                   ; $61a7: $ca $00 $00

	nop                                              ; $61aa: $00
	nop                                              ; $61ab: $00
	nop                                              ; $61ac: $00
	nop                                              ; $61ad: $00
	nop                                              ; $61ae: $00
	nop                                              ; $61af: $00
	nop                                              ; $61b0: $00
	nop                                              ; $61b1: $00
	nop                                              ; $61b2: $00
	nop                                              ; $61b3: $00
	nop                                              ; $61b4: $00
	nop                                              ; $61b5: $00
	nop                                              ; $61b6: $00
	ld   [bc], a                                     ; $61b7: $02
	sbc  d                                           ; $61b8: $9a
	ld   [bc], a                                     ; $61b9: $02
	scf                                              ; $61ba: $37
	inc  b                                           ; $61bb: $04
	add  hl, hl                                      ; $61bc: $29
	di                                               ; $61bd: $f3
	pop  bc                                          ; $61be: $c1
	ldh  [$fb], a                                    ; $61bf: $e0 $fb
	nop                                              ; $61c1: $00
	ld   [bc], a                                     ; $61c2: $02
	sbc  d                                           ; $61c3: $9a
	ld   [bc], a                                     ; $61c4: $02
	scf                                              ; $61c5: $37
	inc  b                                           ; $61c6: $04
	add  hl, hl                                      ; $61c7: $29
	di                                               ; $61c8: $f3
	ld   h, e                                        ; $61c9: $63
	ld   e, l                                        ; $61ca: $5d
	sub  a                                           ; $61cb: $97
	nop                                              ; $61cc: $00
	ld   [bc], a                                     ; $61cd: $02
	sbc  d                                           ; $61ce: $9a
	ld   [bc], a                                     ; $61cf: $02
	scf                                              ; $61d0: $37
	inc  b                                           ; $61d1: $04
	add  hl, hl                                      ; $61d2: $29
	di                                               ; $61d3: $f3
	ld   h, a                                        ; $61d4: $67
	adc  l                                           ; $61d5: $8d
	sbc  d                                           ; $61d6: $9a
	nop                                              ; $61d7: $00
	ld   [bc], a                                     ; $61d8: $02
	sbc  d                                           ; $61d9: $9a
	ld   [bc], a                                     ; $61da: $02
	scf                                              ; $61db: $37
	inc  b                                           ; $61dc: $04
	add  hl, hl                                      ; $61dd: $29
	di                                               ; $61de: $f3
	rst  JumpTable                                         ; $61df: $df
	db   $ec                                         ; $61e0: $ec
	and  e                                           ; $61e1: $a3
	nop                                              ; $61e2: $00
	ld   [bc], a                                     ; $61e3: $02
	sbc  d                                           ; $61e4: $9a
	ld   [bc], a                                     ; $61e5: $02
	scf                                              ; $61e6: $37
	inc  b                                           ; $61e7: $04
	add  hl, hl                                      ; $61e8: $29
	di                                               ; $61e9: $f3
	and  e                                           ; $61ea: $a3
	and  l                                           ; $61eb: $a5
	db   $ec                                         ; $61ec: $ec
	cp   d                                           ; $61ed: $ba
	nop                                              ; $61ee: $00
	ld   [bc], a                                     ; $61ef: $02
	sbc  d                                           ; $61f0: $9a
	ld   [bc], a                                     ; $61f1: $02
	scf                                              ; $61f2: $37
	inc  b                                           ; $61f3: $04
	add  hl, hl                                      ; $61f4: $29
	di                                               ; $61f5: $f3
	ld   [bc], a                                     ; $61f6: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $61f7: $cf
	dec  b                                           ; $61f8: $05
	ld   a, [de]                                     ; $61f9: $1a
	nop                                              ; $61fa: $00
	ld   [bc], a                                     ; $61fb: $02
	sbc  d                                           ; $61fc: $9a
	ld   [bc], a                                     ; $61fd: $02
	scf                                              ; $61fe: $37
	inc  b                                           ; $61ff: $04
	add  hl, hl                                      ; $6200: $29
	di                                               ; $6201: $f3
	xor  h                                           ; $6202: $ac
	push af                                          ; $6203: $f5
	rlc  b                                           ; $6204: $cb $00
	ld   [bc], a                                     ; $6206: $02
	sbc  d                                           ; $6207: $9a
	ld   [bc], a                                     ; $6208: $02
	scf                                              ; $6209: $37
	inc  b                                           ; $620a: $04
	add  hl, hl                                      ; $620b: $29
	di                                               ; $620c: $f3
	inc  bc                                          ; $620d: $03
	ret                                              ; $620e: $c9


	inc  b                                           ; $620f: $04
	add  l                                           ; $6210: $85
	nop                                              ; $6211: $00
	ld   [bc], a                                     ; $6212: $02
	sbc  d                                           ; $6213: $9a
	ld   [bc], a                                     ; $6214: $02
	scf                                              ; $6215: $37
	inc  b                                           ; $6216: $04
	add  hl, hl                                      ; $6217: $29
	di                                               ; $6218: $f3
	xor  $cc                                         ; $6219: $ee $cc
	nop                                              ; $621b: $00
	ld   [bc], a                                     ; $621c: $02
	sbc  d                                           ; $621d: $9a
	ld   [bc], a                                     ; $621e: $02
	scf                                              ; $621f: $37
	inc  b                                           ; $6220: $04
	add  hl, hl                                      ; $6221: $29
	di                                               ; $6222: $f3
	inc  b                                           ; $6223: $04
	ld   c, $03                                      ; $6224: $0e $03
	sub  b                                           ; $6226: $90
	nop                                              ; $6227: $00
	ld   [bc], a                                     ; $6228: $02
	sbc  d                                           ; $6229: $9a
	ld   [bc], a                                     ; $622a: $02
	scf                                              ; $622b: $37
	inc  b                                           ; $622c: $04
	add  hl, hl                                      ; $622d: $29
	di                                               ; $622e: $f3
	inc  b                                           ; $622f: $04
	rst  $10                                         ; $6230: $d7
	inc  b                                           ; $6231: $04
	ld   hl, $0200                                   ; $6232: $21 $00 $02
	sbc  d                                           ; $6235: $9a
	ld   [bc], a                                     ; $6236: $02
	scf                                              ; $6237: $37
	inc  b                                           ; $6238: $04
	add  hl, hl                                      ; $6239: $29
	di                                               ; $623a: $f3
	ld   d, b                                        ; $623b: $50
	sub  d                                           ; $623c: $92
	adc  a                                           ; $623d: $8f
	nop                                              ; $623e: $00
	ld   [bc], a                                     ; $623f: $02
	sbc  d                                           ; $6240: $9a
	ld   [bc], a                                     ; $6241: $02
	scf                                              ; $6242: $37
	inc  b                                           ; $6243: $04
	add  hl, hl                                      ; $6244: $29
	di                                               ; $6245: $f3
	ld   e, c                                        ; $6246: $59
	ld   h, a                                        ; $6247: $67
	adc  l                                           ; $6248: $8d
	nop                                              ; $6249: $00
	ld   [bc], a                                     ; $624a: $02
	sbc  d                                           ; $624b: $9a
	ld   [bc], a                                     ; $624c: $02
	scf                                              ; $624d: $37
	inc  b                                           ; $624e: $04
	add  hl, hl                                      ; $624f: $29
	di                                               ; $6250: $f3
	inc  b                                           ; $6251: $04
	pop  hl                                          ; $6252: $e1
	inc  b                                           ; $6253: $04
	rst  $38                                         ; $6254: $ff
	nop                                              ; $6255: $00
	ld   [bc], a                                     ; $6256: $02
	sbc  d                                           ; $6257: $9a
	ld   [bc], a                                     ; $6258: $02
	scf                                              ; $6259: $37
	inc  b                                           ; $625a: $04
	add  hl, hl                                      ; $625b: $29
	di                                               ; $625c: $f3
	ld   b, $5b                                      ; $625d: $06 $5b
	nop                                              ; $625f: $00
	ld   [bc], a                                     ; $6260: $02
	sbc  d                                           ; $6261: $9a
	ld   [bc], a                                     ; $6262: $02
	scf                                              ; $6263: $37
	inc  b                                           ; $6264: $04
	add  hl, hl                                      ; $6265: $29
	di                                               ; $6266: $f3
	ld   [bc], a                                     ; $6267: $02
	ld   d, b                                        ; $6268: $50
	inc  bc                                          ; $6269: $03
	ld   e, b                                        ; $626a: $58
	nop                                              ; $626b: $00
	inc  b                                           ; $626c: $04
	dec  c                                           ; $626d: $0d
	dec  b                                           ; $626e: $05
	ld   a, [bc]                                     ; $626f: $0a
	nop                                              ; $6270: $00
	inc  b                                           ; $6271: $04
	dec  hl                                          ; $6272: $2b
	dec  b                                           ; $6273: $05
	ld   a, [bc]                                     ; $6274: $0a
	nop                                              ; $6275: $00
	dec  b                                           ; $6276: $05
	add  hl, bc                                      ; $6277: $09
	dec  b                                           ; $6278: $05
	ld   a, [bc]                                     ; $6279: $0a
	nop                                              ; $627a: $00
	ld   [bc], a                                     ; $627b: $02
	and  c                                           ; $627c: $a1
	ld   [bc], a                                     ; $627d: $02
	ld   a, e                                        ; $627e: $7b
	ld   d, d                                        ; $627f: $52
	nop                                              ; $6280: $00
	inc  bc                                          ; $6281: $03
	and  [hl]                                        ; $6282: $a6
	inc  bc                                          ; $6283: $03
	ld   [hl], b                                     ; $6284: $70
	ld   h, e                                        ; $6285: $63
	nop                                              ; $6286: $00
	ld   b, $25                                      ; $6287: $06 $25
	inc  b                                           ; $6289: $04
	dec  bc                                          ; $628a: $0b
	ld   b, $80                                      ; $628b: $06 $80
	nop                                              ; $628d: $00
	nop                                              ; $628e: $00
	nop                                              ; $628f: $00
	nop                                              ; $6290: $00
	nop                                              ; $6291: $00
	nop                                              ; $6292: $00
	nop                                              ; $6293: $00
	nop                                              ; $6294: $00
	nop                                              ; $6295: $00
	nop                                              ; $6296: $00
	nop                                              ; $6297: $00
	ld   [bc], a                                     ; $6298: $02
	ld   e, $03                                      ; $6299: $1e $03
	ld   [de], a                                     ; $629b: $12
	and  l                                           ; $629c: $a5
	jp   c, $c9f5                                    ; $629d: $da $f5 $c9

	nop                                              ; $62a0: $00
	inc  bc                                          ; $62a1: $03
	ld   l, l                                        ; $62a2: $6d
	dec  b                                           ; $62a3: $05
	add  hl, de                                      ; $62a4: $19
	di                                               ; $62a5: $f3
	ld   [bc], a                                     ; $62a6: $02
	sbc  e                                           ; $62a7: $9b
	inc  b                                           ; $62a8: $04
	db   $f4                                         ; $62a9: $f4
	nop                                              ; $62aa: $00
	inc  bc                                          ; $62ab: $03
	ld   l, l                                        ; $62ac: $6d
	dec  b                                           ; $62ad: $05
	add  hl, de                                      ; $62ae: $19
	di                                               ; $62af: $f3
	dec  b                                           ; $62b0: $05
	add  c                                           ; $62b1: $81
	inc  b                                           ; $62b2: $04
	db   $f4                                         ; $62b3: $f4
	nop                                              ; $62b4: $00
	inc  bc                                          ; $62b5: $03
	ld   l, l                                        ; $62b6: $6d
	dec  b                                           ; $62b7: $05
	add  hl, de                                      ; $62b8: $19
	di                                               ; $62b9: $f3
	inc  bc                                          ; $62ba: $03
	ld   e, c                                        ; $62bb: $59
	inc  b                                           ; $62bc: $04
	db   $f4                                         ; $62bd: $f4
	nop                                              ; $62be: $00
	inc  bc                                          ; $62bf: $03
	ld   l, l                                        ; $62c0: $6d
	dec  b                                           ; $62c1: $05
	add  hl, de                                      ; $62c2: $19
	di                                               ; $62c3: $f3
	inc  b                                           ; $62c4: $04
	push de                                          ; $62c5: $d5
	inc  b                                           ; $62c6: $04
	db   $f4                                         ; $62c7: $f4
	nop                                              ; $62c8: $00
	inc  bc                                          ; $62c9: $03
	ld   l, l                                        ; $62ca: $6d
	dec  b                                           ; $62cb: $05
	add  hl, de                                      ; $62cc: $19
	di                                               ; $62cd: $f3
	ld   [bc], a                                     ; $62ce: $02
	dec  sp                                          ; $62cf: $3b
	inc  b                                           ; $62d0: $04
	db   $f4                                         ; $62d1: $f4
	nop                                              ; $62d2: $00
	nop                                              ; $62d3: $00
	nop                                              ; $62d4: $00
	nop                                              ; $62d5: $00
	nop                                              ; $62d6: $00
	nop                                              ; $62d7: $00
	nop                                              ; $62d8: $00
	nop                                              ; $62d9: $00
	nop                                              ; $62da: $00
	nop                                              ; $62db: $00
	nop                                              ; $62dc: $00
	ld   b, $0d                                      ; $62dd: $06 $0d
	inc  b                                           ; $62df: $04
	ld   e, [hl]                                     ; $62e0: $5e
	inc  b                                           ; $62e1: $04
	xor  d                                           ; $62e2: $aa
	ld   [de], a                                     ; $62e3: $12
	nop                                              ; $62e4: $00
	ld   b, $0d                                      ; $62e5: $06 $0d
	inc  b                                           ; $62e7: $04
	ld   e, [hl]                                     ; $62e8: $5e
	inc  b                                           ; $62e9: $04
	xor  d                                           ; $62ea: $aa
	inc  de                                          ; $62eb: $13
	nop                                              ; $62ec: $00
	inc  bc                                          ; $62ed: $03
	ld   l, l                                        ; $62ee: $6d
	dec  b                                           ; $62ef: $05
	add  hl, de                                      ; $62f0: $19
	di                                               ; $62f1: $f3
	ld   h, e                                        ; $62f2: $63
	ld   e, l                                        ; $62f3: $5d
	sub  a                                           ; $62f4: $97
	nop                                              ; $62f5: $00
	inc  bc                                          ; $62f6: $03
	ld   l, l                                        ; $62f7: $6d
	dec  b                                           ; $62f8: $05
	add  hl, de                                      ; $62f9: $19
	di                                               ; $62fa: $f3
	ld   h, a                                        ; $62fb: $67
	adc  l                                           ; $62fc: $8d
	sbc  d                                           ; $62fd: $9a
	nop                                              ; $62fe: $00
	inc  bc                                          ; $62ff: $03
	ld   l, l                                        ; $6300: $6d
	dec  b                                           ; $6301: $05
	add  hl, de                                      ; $6302: $19
	di                                               ; $6303: $f3
	rst  JumpTable                                         ; $6304: $df
	db   $ec                                         ; $6305: $ec
	and  e                                           ; $6306: $a3
	nop                                              ; $6307: $00
	inc  bc                                          ; $6308: $03
	ld   l, l                                        ; $6309: $6d
	dec  b                                           ; $630a: $05
	add  hl, de                                      ; $630b: $19
	di                                               ; $630c: $f3
	and  e                                           ; $630d: $a3
	and  l                                           ; $630e: $a5
	db   $ec                                         ; $630f: $ec
	cp   d                                           ; $6310: $ba
	nop                                              ; $6311: $00
	inc  bc                                          ; $6312: $03
	ld   l, l                                        ; $6313: $6d
	dec  b                                           ; $6314: $05
	add  hl, de                                      ; $6315: $19
	di                                               ; $6316: $f3
	ld   [bc], a                                     ; $6317: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6318: $cf
	dec  b                                           ; $6319: $05
	ld   a, [de]                                     ; $631a: $1a
	nop                                              ; $631b: $00
	inc  bc                                          ; $631c: $03
	ld   l, l                                        ; $631d: $6d
	dec  b                                           ; $631e: $05
	add  hl, de                                      ; $631f: $19
	di                                               ; $6320: $f3
	xor  h                                           ; $6321: $ac
	push af                                          ; $6322: $f5
	rlc  b                                           ; $6323: $cb $00
	inc  bc                                          ; $6325: $03
	ld   hl, sp-$68                                  ; $6326: $f8 $98
	inc  b                                           ; $6328: $04
	xor  d                                           ; $6329: $aa
	di                                               ; $632a: $f3
	ld   h, e                                        ; $632b: $63
	ld   e, l                                        ; $632c: $5d
	sub  a                                           ; $632d: $97
	nop                                              ; $632e: $00
	inc  bc                                          ; $632f: $03
	ld   hl, sp-$68                                  ; $6330: $f8 $98
	inc  b                                           ; $6332: $04
	xor  d                                           ; $6333: $aa
	di                                               ; $6334: $f3
	ld   h, a                                        ; $6335: $67
	adc  l                                           ; $6336: $8d
	sbc  d                                           ; $6337: $9a
	nop                                              ; $6338: $00
	inc  bc                                          ; $6339: $03
	ld   hl, sp-$68                                  ; $633a: $f8 $98
	inc  b                                           ; $633c: $04
	xor  d                                           ; $633d: $aa
	di                                               ; $633e: $f3
	rst  JumpTable                                         ; $633f: $df
	db   $ec                                         ; $6340: $ec
	and  e                                           ; $6341: $a3
	nop                                              ; $6342: $00
	inc  bc                                          ; $6343: $03
	ld   hl, sp-$68                                  ; $6344: $f8 $98
	inc  b                                           ; $6346: $04
	xor  d                                           ; $6347: $aa
	di                                               ; $6348: $f3
	and  e                                           ; $6349: $a3
	and  l                                           ; $634a: $a5
	db   $ec                                         ; $634b: $ec
	cp   d                                           ; $634c: $ba
	nop                                              ; $634d: $00
	inc  bc                                          ; $634e: $03
	ld   hl, sp-$68                                  ; $634f: $f8 $98
	inc  b                                           ; $6351: $04
	xor  d                                           ; $6352: $aa
	di                                               ; $6353: $f3
	ld   [bc], a                                     ; $6354: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6355: $cf
	dec  b                                           ; $6356: $05
	ld   a, [de]                                     ; $6357: $1a
	nop                                              ; $6358: $00
	inc  bc                                          ; $6359: $03
	ld   hl, sp-$68                                  ; $635a: $f8 $98
	inc  b                                           ; $635c: $04
	xor  d                                           ; $635d: $aa
	di                                               ; $635e: $f3
	xor  h                                           ; $635f: $ac
	push af                                          ; $6360: $f5
	rlc  b                                           ; $6361: $cb $00
	inc  bc                                          ; $6363: $03
	ld   hl, sp-$68                                  ; $6364: $f8 $98
	ld   b, $9c                                      ; $6366: $06 $9c
	di                                               ; $6368: $f3
	ld   h, e                                        ; $6369: $63
	ld   e, l                                        ; $636a: $5d
	sub  a                                           ; $636b: $97
	nop                                              ; $636c: $00
	inc  bc                                          ; $636d: $03
	ld   hl, sp-$68                                  ; $636e: $f8 $98
	ld   b, $9c                                      ; $6370: $06 $9c
	di                                               ; $6372: $f3
	ld   h, a                                        ; $6373: $67
	adc  l                                           ; $6374: $8d
	sbc  d                                           ; $6375: $9a
	nop                                              ; $6376: $00
	inc  bc                                          ; $6377: $03
	ld   hl, sp-$68                                  ; $6378: $f8 $98
	ld   b, $9c                                      ; $637a: $06 $9c
	di                                               ; $637c: $f3
	rst  JumpTable                                         ; $637d: $df
	db   $ec                                         ; $637e: $ec
	and  e                                           ; $637f: $a3
	nop                                              ; $6380: $00
	inc  bc                                          ; $6381: $03
	ld   hl, sp-$68                                  ; $6382: $f8 $98
	ld   b, $9c                                      ; $6384: $06 $9c
	di                                               ; $6386: $f3
	and  e                                           ; $6387: $a3
	and  l                                           ; $6388: $a5
	db   $ec                                         ; $6389: $ec
	cp   d                                           ; $638a: $ba
	nop                                              ; $638b: $00
	inc  bc                                          ; $638c: $03
	ld   hl, sp-$68                                  ; $638d: $f8 $98
	ld   b, $9c                                      ; $638f: $06 $9c
	di                                               ; $6391: $f3
	ld   [bc], a                                     ; $6392: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6393: $cf
	dec  b                                           ; $6394: $05
	ld   a, [de]                                     ; $6395: $1a
	nop                                              ; $6396: $00
	inc  bc                                          ; $6397: $03
	ld   hl, sp-$68                                  ; $6398: $f8 $98
	ld   b, $9c                                      ; $639a: $06 $9c
	di                                               ; $639c: $f3
	xor  h                                           ; $639d: $ac
	push af                                          ; $639e: $f5
	rlc  b                                           ; $639f: $cb $00
	rst  $10                                         ; $63a1: $d7
	rst  $28                                         ; $63a2: $ef
	rst  JumpTable                                         ; $63a3: $df
	and  l                                           ; $63a4: $a5
	jp   z, $aa04                                    ; $63a5: $ca $04 $aa

	inc  b                                           ; $63a8: $04
	ld   [hl], c                                     ; $63a9: $71
	nop                                              ; $63aa: $00
	inc  bc                                          ; $63ab: $03
	ld   c, [hl]                                     ; $63ac: $4e
	ld   [hl], c                                     ; $63ad: $71
	ld   l, l                                        ; $63ae: $6d
	sub  $eb                                         ; $63af: $d6 $eb
	or   c                                           ; $63b1: $b1
	nop                                              ; $63b2: $00
	and  e                                           ; $63b3: $a3
	and  l                                           ; $63b4: $a5
	or   h                                           ; $63b5: $b4
	push af                                          ; $63b6: $f5
	inc  b                                           ; $63b7: $04
	xor  d                                           ; $63b8: $aa
	inc  b                                           ; $63b9: $04
	ld   [hl], c                                     ; $63ba: $71
	nop                                              ; $63bb: $00
	ld   [bc], a                                     ; $63bc: $02
	ld   e, $03                                      ; $63bd: $1e $03
	ld   [de], a                                     ; $63bf: $12
	ld   [bc], a                                     ; $63c0: $02
	sub  e                                           ; $63c1: $93
	inc  bc                                          ; $63c2: $03
	pop  bc                                          ; $63c3: $c1
	nop                                              ; $63c4: $00
	inc  b                                           ; $63c5: $04
	ld   c, $04                                      ; $63c6: $0e $04
	ld   d, $02                                      ; $63c8: $16 $02
	xor  b                                           ; $63ca: $a8
	inc  bc                                          ; $63cb: $03
	ld   a, e                                        ; $63cc: $7b
	dec  b                                           ; $63cd: $05
	ld   de, $aa04                                   ; $63ce: $11 $04 $aa
	nop                                              ; $63d1: $00
	cp   h                                           ; $63d2: $bc
	push af                                          ; $63d3: $f5
	cp   d                                           ; $63d4: $ba
	inc  b                                           ; $63d5: $04
	xor  d                                           ; $63d6: $aa
	nop                                              ; $63d7: $00
	adc  h                                           ; $63d8: $8c
	ld   h, c                                        ; $63d9: $61
	halt                                             ; $63da: $76
	ld   e, l                                        ; $63db: $5d
	and  c                                           ; $63dc: $a1
	inc  b                                           ; $63dd: $04
	xor  d                                           ; $63de: $aa
	nop                                              ; $63df: $00
	db   $dd                                         ; $63e0: $dd
	db   $ed                                         ; $63e1: $ed
	cp   b                                           ; $63e2: $b8
	jp   nz, $aa04                                   ; $63e3: $c2 $04 $aa

	nop                                              ; $63e6: $00
	ld   h, e                                        ; $63e7: $63
	ld   e, l                                        ; $63e8: $5d
	sub  a                                           ; $63e9: $97
	cp   b                                           ; $63ea: $b8
	push hl                                          ; $63eb: $e5
	pop  af                                          ; $63ec: $f1
	ei                                               ; $63ed: $fb
	inc  b                                           ; $63ee: $04
	xor  d                                           ; $63ef: $aa
	nop                                              ; $63f0: $00
	xor  h                                           ; $63f1: $ac
	push af                                          ; $63f2: $f5

Jump_005_63f3:
	rlc  e                                           ; $63f3: $cb $03
	db   $f4                                         ; $63f5: $f4
	inc  b                                           ; $63f6: $04
	ld   e, c                                        ; $63f7: $59
	inc  b                                           ; $63f8: $04
	xor  d                                           ; $63f9: $aa
	inc  b                                           ; $63fa: $04
	ld   [hl], c                                     ; $63fb: $71
	nop                                              ; $63fc: $00
	inc  b                                           ; $63fd: $04
	pop  hl                                          ; $63fe: $e1
	inc  b                                           ; $63ff: $04
	rst  $38                                         ; $6400: $ff
	ld   h, a                                        ; $6401: $67
	adc  l                                           ; $6402: $8d
	sbc  d                                           ; $6403: $9a
	inc  b                                           ; $6404: $04
	adc  l                                           ; $6405: $8d
	ld   d, d                                        ; $6406: $52
	inc  b                                           ; $6407: $04
	sub  d                                           ; $6408: $92
	inc  b                                           ; $6409: $04
	xor  d                                           ; $640a: $aa
	inc  b                                           ; $640b: $04
	ld   [hl], c                                     ; $640c: $71
	nop                                              ; $640d: $00
	and  e                                           ; $640e: $a3
	and  l                                           ; $640f: $a5
	db   $ec                                         ; $6410: $ec
	cp   d                                           ; $6411: $ba
	inc  bc                                          ; $6412: $03
	ld   e, c                                        ; $6413: $59
	ld   [bc], a                                     ; $6414: $02
	ld   [hl-], a                                    ; $6415: $32
	inc  b                                           ; $6416: $04
	xor  d                                           ; $6417: $aa
	nop                                              ; $6418: $00
	inc  bc                                          ; $6419: $03
	inc  h                                           ; $641a: $24
	ld   [bc], a                                     ; $641b: $02
	sub  [hl]                                        ; $641c: $96
	sbc  $a5                                         ; $641d: $de $a5
	push af                                          ; $641f: $f5
	ret                                              ; $6420: $c9


	nop                                              ; $6421: $00
	cp   d                                           ; $6422: $ba
	ret  c                                           ; $6423: $d8

	ei                                               ; $6424: $fb
	push af                                          ; $6425: $f5
	inc  b                                           ; $6426: $04
	xor  d                                           ; $6427: $aa
	nop                                              ; $6428: $00
	inc  b                                           ; $6429: $04
	ld   d, l                                        ; $642a: $55
	ld   [bc], a                                     ; $642b: $02
	sub  e                                           ; $642c: $93
	ld   h, l                                        ; $642d: $65
	inc  b                                           ; $642e: $04
	xor  d                                           ; $642f: $aa
	nop                                              ; $6430: $00
	and  e                                           ; $6431: $a3
	and  l                                           ; $6432: $a5
	db   $ec                                         ; $6433: $ec
	cp   d                                           ; $6434: $ba
	inc  bc                                          ; $6435: $03
	ld   e, l                                        ; $6436: $5d
	inc  b                                           ; $6437: $04
	rla                                              ; $6438: $17
	inc  b                                           ; $6439: $04
	xor  d                                           ; $643a: $aa
	inc  b                                           ; $643b: $04
	ld   [hl], c                                     ; $643c: $71
	nop                                              ; $643d: $00
	and  e                                           ; $643e: $a3
	and  l                                           ; $643f: $a5
	db   $ec                                         ; $6440: $ec
	cp   d                                           ; $6441: $ba
	inc  bc                                          ; $6442: $03
	ld   e, l                                        ; $6443: $5d
	inc  b                                           ; $6444: $04
	rla                                              ; $6445: $17
	inc  de                                          ; $6446: $13
	inc  b                                           ; $6447: $04
	xor  d                                           ; $6448: $aa
	inc  b                                           ; $6449: $04
	ld   [hl], c                                     ; $644a: $71
	nop                                              ; $644b: $00
	inc  b                                           ; $644c: $04
	ld   c, $03                                      ; $644d: $0e $03
	sub  b                                           ; $644f: $90
	ld   [bc], a                                     ; $6450: $02
	inc  l                                           ; $6451: $2c
	ld   e, e                                        ; $6452: $5b
	ld   d, h                                        ; $6453: $54
	ld   e, a                                        ; $6454: $5f
	nop                                              ; $6455: $00
	and  e                                           ; $6456: $a3
	and  l                                           ; $6457: $a5
	db   $ec                                         ; $6458: $ec
	cp   d                                           ; $6459: $ba
	ld   a, h                                        ; $645a: $7c
	sub  $a2                                         ; $645b: $d6 $a2
	push af                                          ; $645d: $f5
	xor  $c0                                         ; $645e: $ee $c0
	ei                                               ; $6460: $fb
	inc  b                                           ; $6461: $04
	xor  d                                           ; $6462: $aa
	inc  b                                           ; $6463: $04
	ld   [hl], c                                     ; $6464: $71
	nop                                              ; $6465: $00
	rst  JumpTable                                         ; $6466: $df
	db   $ec                                         ; $6467: $ec
	and  e                                           ; $6468: $a3
	ld   a, h                                        ; $6469: $7c
	sub  $a2                                         ; $646a: $d6 $a2
	push af                                          ; $646c: $f5
	xor  $c0                                         ; $646d: $ee $c0
	ei                                               ; $646f: $fb
	inc  b                                           ; $6470: $04
	xor  d                                           ; $6471: $aa
	inc  b                                           ; $6472: $04
	ld   [hl], c                                     ; $6473: $71
	nop                                              ; $6474: $00
	xor  h                                           ; $6475: $ac
	push af                                          ; $6476: $f5
	res  7, b                                        ; $6477: $cb $b8
	push hl                                          ; $6479: $e5
	pop  af                                          ; $647a: $f1
	ei                                               ; $647b: $fb
	inc  b                                           ; $647c: $04
	xor  d                                           ; $647d: $aa
	inc  b                                           ; $647e: $04
	ld   [hl], c                                     ; $647f: $71
	nop                                              ; $6480: $00
	ld   e, a                                        ; $6481: $5f
	ld   d, d                                        ; $6482: $52
	ld   h, c                                        ; $6483: $61
	inc  b                                           ; $6484: $04
	ldh  [$03], a                                    ; $6485: $e0 $03
	dec  hl                                          ; $6487: $2b
	inc  b                                           ; $6488: $04
	xor  d                                           ; $6489: $aa
	inc  b                                           ; $648a: $04
	ld   [hl], c                                     ; $648b: $71
	nop                                              ; $648c: $00
	ld   h, a                                        ; $648d: $67
	adc  l                                           ; $648e: $8d
	sbc  d                                           ; $648f: $9a
	inc  bc                                          ; $6490: $03
	ld   e, c                                        ; $6491: $59
	inc  b                                           ; $6492: $04
	rlca                                             ; $6493: $07
	inc  b                                           ; $6494: $04
	xor  d                                           ; $6495: $aa
	inc  b                                           ; $6496: $04
	ld   [hl], c                                     ; $6497: $71
	nop                                              ; $6498: $00
	rst  JumpTable                                         ; $6499: $df
	db   $ec                                         ; $649a: $ec
	and  e                                           ; $649b: $a3
	ld   a, h                                        ; $649c: $7c
	ld   h, l                                        ; $649d: $65
	ld   h, d                                        ; $649e: $62
	ld   e, e                                        ; $649f: $5b
	inc  b                                           ; $64a0: $04
	xor  d                                           ; $64a1: $aa
	inc  b                                           ; $64a2: $04
	ld   [hl], c                                     ; $64a3: $71
	nop                                              ; $64a4: $00
	ld   h, a                                        ; $64a5: $67
	adc  l                                           ; $64a6: $8d
	sbc  d                                           ; $64a7: $9a
	halt                                             ; $64a8: $76
	or   b                                           ; $64a9: $b0
	db   $e4                                         ; $64aa: $e4
	inc  b                                           ; $64ab: $04
	xor  d                                           ; $64ac: $aa
	inc  b                                           ; $64ad: $04
	ld   [hl], c                                     ; $64ae: $71
	nop                                              ; $64af: $00
	rst  JumpTable                                         ; $64b0: $df
	db   $ec                                         ; $64b1: $ec
	and  e                                           ; $64b2: $a3
	ld   [bc], a                                     ; $64b3: $02
	rst  $30                                         ; $64b4: $f7
	ld   [bc], a                                     ; $64b5: $02
	ret  nc                                          ; $64b6: $d0

	inc  b                                           ; $64b7: $04
	xor  d                                           ; $64b8: $aa
	inc  b                                           ; $64b9: $04
	ld   [hl], c                                     ; $64ba: $71
	nop                                              ; $64bb: $00
	ld   [bc], a                                     ; $64bc: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $64bd: $cf
	dec  b                                           ; $64be: $05
	ld   a, [de]                                     ; $64bf: $1a
	inc  b                                           ; $64c0: $04
	ldh  [$03], a                                    ; $64c1: $e0 $03
	dec  hl                                          ; $64c3: $2b
	inc  de                                          ; $64c4: $13
	dec  de                                          ; $64c5: $1b
	jr   nz, jr_005_64dc                             ; $64c6: $20 $14

	inc  b                                           ; $64c8: $04
	xor  d                                           ; $64c9: $aa
	inc  b                                           ; $64ca: $04
	ld   [hl], c                                     ; $64cb: $71
	nop                                              ; $64cc: $00
	ld   h, e                                        ; $64cd: $63
	ld   e, l                                        ; $64ce: $5d
	sub  a                                           ; $64cf: $97
	inc  bc                                          ; $64d0: $03
	add  a                                           ; $64d1: $87
	inc  bc                                          ; $64d2: $03
	adc  b                                           ; $64d3: $88
	inc  b                                           ; $64d4: $04
	xor  d                                           ; $64d5: $aa
	inc  b                                           ; $64d6: $04
	ld   [hl], c                                     ; $64d7: $71
	nop                                              ; $64d8: $00
	ld   [bc], a                                     ; $64d9: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $64da: $cf
	dec  b                                           ; $64db: $05

jr_005_64dc:
	ld   a, [de]                                     ; $64dc: $1a
	inc  b                                           ; $64dd: $04
	ldh  [$03], a                                    ; $64de: $e0 $03
	dec  hl                                          ; $64e0: $2b
	ld   [de], a                                     ; $64e1: $12
	dec  de                                          ; $64e2: $1b
	jr   nz, jr_005_64f7                             ; $64e3: $20 $12

	inc  b                                           ; $64e5: $04
	xor  d                                           ; $64e6: $aa
	inc  b                                           ; $64e7: $04
	ld   [hl], c                                     ; $64e8: $71
	nop                                              ; $64e9: $00
	xor  h                                           ; $64ea: $ac
	push af                                          ; $64eb: $f5
	rlc  d                                           ; $64ec: $cb $02
	or   b                                           ; $64ee: $b0
	ld   [bc], a                                     ; $64ef: $02
	or   c                                           ; $64f0: $b1
	inc  b                                           ; $64f1: $04
	xor  d                                           ; $64f2: $aa
	inc  b                                           ; $64f3: $04
	ld   [hl], c                                     ; $64f4: $71
	nop                                              ; $64f5: $00
	inc  bc                                          ; $64f6: $03

jr_005_64f7:
	ld   l, l                                        ; $64f7: $6d
	dec  b                                           ; $64f8: $05
	add  hl, de                                      ; $64f9: $19
	inc  bc                                          ; $64fa: $03
	and  a                                           ; $64fb: $a7
	inc  bc                                          ; $64fc: $03
	ld   h, $00                                      ; $64fd: $26 $00
	inc  bc                                          ; $64ff: $03
	ld   [de], a                                     ; $6500: $12
	inc  bc                                          ; $6501: $03
	jp   nc, $c0d2                                   ; $6502: $d2 $d2 $c0

	ei                                               ; $6505: $fb
	push af                                          ; $6506: $f5
	nop                                              ; $6507: $00
	ld   [bc], a                                     ; $6508: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6509: $cf
	dec  b                                           ; $650a: $05
	ld   a, [de]                                     ; $650b: $1a
	inc  b                                           ; $650c: $04
	dec  bc                                          ; $650d: $0b
	and  l                                           ; $650e: $a5
	jp   c, $c9f5                                    ; $650f: $da $f5 $c9

	sbc  $a5                                         ; $6512: $de $a5
	push af                                          ; $6514: $f5
	ret                                              ; $6515: $c9


	nop                                              ; $6516: $00
	rst  JumpTable                                         ; $6517: $df
	db   $ec                                         ; $6518: $ec
	and  e                                           ; $6519: $a3
	inc  bc                                          ; $651a: $03
	ld   [hl], a                                     ; $651b: $77
	di                                               ; $651c: $f3
	ld   e, e                                        ; $651d: $5b
	inc  b                                           ; $651e: $04
	xor  d                                           ; $651f: $aa
	inc  b                                           ; $6520: $04
	ld   [hl], c                                     ; $6521: $71
	nop                                              ; $6522: $00
	rst  JumpTable                                         ; $6523: $df
	db   $ec                                         ; $6524: $ec
	and  e                                           ; $6525: $a3
	inc  bc                                          ; $6526: $03
	ld   a, e                                        ; $6527: $7b
	dec  b                                           ; $6528: $05
	ld   de, $aa04                                   ; $6529: $11 $04 $aa
	inc  b                                           ; $652c: $04
	ld   [hl], c                                     ; $652d: $71
	nop                                              ; $652e: $00
	nop                                              ; $652f: $00
	nop                                              ; $6530: $00
	nop                                              ; $6531: $00
	nop                                              ; $6532: $00
	nop                                              ; $6533: $00
	nop                                              ; $6534: $00
	nop                                              ; $6535: $00
	nop                                              ; $6536: $00
	nop                                              ; $6537: $00
	nop                                              ; $6538: $00
	nop                                              ; $6539: $00
	nop                                              ; $653a: $00
	nop                                              ; $653b: $00
	nop                                              ; $653c: $00
	nop                                              ; $653d: $00
	nop                                              ; $653e: $00
	nop                                              ; $653f: $00
	nop                                              ; $6540: $00
	nop                                              ; $6541: $00
	nop                                              ; $6542: $00
	nop                                              ; $6543: $00
	nop                                              ; $6544: $00
	nop                                              ; $6545: $00
	nop                                              ; $6546: $00
	nop                                              ; $6547: $00
	nop                                              ; $6548: $00
	nop                                              ; $6549: $00
	nop                                              ; $654a: $00
	nop                                              ; $654b: $00
	nop                                              ; $654c: $00
	nop                                              ; $654d: $00
	nop                                              ; $654e: $00
	nop                                              ; $654f: $00
	nop                                              ; $6550: $00
	nop                                              ; $6551: $00
	nop                                              ; $6552: $00
	nop                                              ; $6553: $00
	nop                                              ; $6554: $00
	nop                                              ; $6555: $00
	nop                                              ; $6556: $00
	nop                                              ; $6557: $00
	nop                                              ; $6558: $00
	nop                                              ; $6559: $00
	nop                                              ; $655a: $00
	nop                                              ; $655b: $00
	nop                                              ; $655c: $00
	nop                                              ; $655d: $00
	nop                                              ; $655e: $00
	nop                                              ; $655f: $00
	nop                                              ; $6560: $00
	nop                                              ; $6561: $00
	nop                                              ; $6562: $00
	nop                                              ; $6563: $00
	nop                                              ; $6564: $00
	nop                                              ; $6565: $00
	nop                                              ; $6566: $00
	nop                                              ; $6567: $00
	nop                                              ; $6568: $00
	nop                                              ; $6569: $00
	nop                                              ; $656a: $00
	nop                                              ; $656b: $00
	nop                                              ; $656c: $00
	nop                                              ; $656d: $00
	nop                                              ; $656e: $00
	nop                                              ; $656f: $00
	nop                                              ; $6570: $00
	nop                                              ; $6571: $00
	nop                                              ; $6572: $00
	nop                                              ; $6573: $00
	nop                                              ; $6574: $00
	nop                                              ; $6575: $00
	nop                                              ; $6576: $00
	nop                                              ; $6577: $00
	nop                                              ; $6578: $00
	nop                                              ; $6579: $00
	nop                                              ; $657a: $00
	nop                                              ; $657b: $00
	nop                                              ; $657c: $00
	nop                                              ; $657d: $00
	nop                                              ; $657e: $00
	nop                                              ; $657f: $00
	nop                                              ; $6580: $00
	nop                                              ; $6581: $00
	nop                                              ; $6582: $00
	nop                                              ; $6583: $00
	nop                                              ; $6584: $00
	nop                                              ; $6585: $00
	nop                                              ; $6586: $00
	nop                                              ; $6587: $00
	nop                                              ; $6588: $00
	nop                                              ; $6589: $00
	nop                                              ; $658a: $00
	nop                                              ; $658b: $00
	nop                                              ; $658c: $00
	nop                                              ; $658d: $00
	nop                                              ; $658e: $00
	nop                                              ; $658f: $00
	nop                                              ; $6590: $00
	nop                                              ; $6591: $00
	nop                                              ; $6592: $00
	nop                                              ; $6593: $00
	nop                                              ; $6594: $00
	nop                                              ; $6595: $00
	nop                                              ; $6596: $00
	nop                                              ; $6597: $00
	ld   [bc], a                                     ; $6598: $02
	ld   e, $03                                      ; $6599: $1e $03
	ld   [de], a                                     ; $659b: $12
	di                                               ; $659c: $f3
	ld   h, e                                        ; $659d: $63
	ld   e, l                                        ; $659e: $5d
	sub  a                                           ; $659f: $97
	nop                                              ; $65a0: $00
	ld   [bc], a                                     ; $65a1: $02
	ld   e, $03                                      ; $65a2: $1e $03
	ld   [de], a                                     ; $65a4: $12
	di                                               ; $65a5: $f3
	ld   h, a                                        ; $65a6: $67
	adc  l                                           ; $65a7: $8d
	sbc  d                                           ; $65a8: $9a
	nop                                              ; $65a9: $00
	ld   [bc], a                                     ; $65aa: $02
	ld   e, $03                                      ; $65ab: $1e $03
	ld   [de], a                                     ; $65ad: $12
	di                                               ; $65ae: $f3
	rst  JumpTable                                         ; $65af: $df
	db   $ec                                         ; $65b0: $ec
	and  e                                           ; $65b1: $a3
	nop                                              ; $65b2: $00
	ld   [bc], a                                     ; $65b3: $02
	ld   e, $03                                      ; $65b4: $1e $03
	ld   [de], a                                     ; $65b6: $12
	di                                               ; $65b7: $f3
	and  e                                           ; $65b8: $a3
	and  l                                           ; $65b9: $a5
	db   $ec                                         ; $65ba: $ec
	cp   d                                           ; $65bb: $ba
	nop                                              ; $65bc: $00
	ld   [bc], a                                     ; $65bd: $02
	ld   e, $03                                      ; $65be: $1e $03
	ld   [de], a                                     ; $65c0: $12
	di                                               ; $65c1: $f3
	ld   [bc], a                                     ; $65c2: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $65c3: $cf
	dec  b                                           ; $65c4: $05
	ld   a, [de]                                     ; $65c5: $1a
	nop                                              ; $65c6: $00
	ld   [bc], a                                     ; $65c7: $02
	ld   e, $03                                      ; $65c8: $1e $03
	ld   [de], a                                     ; $65ca: $12
	di                                               ; $65cb: $f3
	xor  h                                           ; $65cc: $ac
	push af                                          ; $65cd: $f5
	rlc  b                                           ; $65ce: $cb $00
	ld   [bc], a                                     ; $65d0: $02
	ld   e, $03                                      ; $65d1: $1e $03
	ld   [de], a                                     ; $65d3: $12
	inc  bc                                          ; $65d4: $03
	ret  nc                                          ; $65d5: $d0

	ld   [bc], a                                     ; $65d6: $02
	ld   e, h                                        ; $65d7: $5c
	di                                               ; $65d8: $f3
	ld   h, e                                        ; $65d9: $63
	ld   e, l                                        ; $65da: $5d
	sub  a                                           ; $65db: $97
	nop                                              ; $65dc: $00
	ld   [bc], a                                     ; $65dd: $02
	ld   e, $03                                      ; $65de: $1e $03
	ld   [de], a                                     ; $65e0: $12
	inc  bc                                          ; $65e1: $03
	ret  nc                                          ; $65e2: $d0

	ld   [bc], a                                     ; $65e3: $02
	ld   e, h                                        ; $65e4: $5c
	di                                               ; $65e5: $f3
	ld   h, a                                        ; $65e6: $67
	adc  l                                           ; $65e7: $8d
	sbc  d                                           ; $65e8: $9a
	nop                                              ; $65e9: $00
	ld   [bc], a                                     ; $65ea: $02
	ld   e, $03                                      ; $65eb: $1e $03
	ld   [de], a                                     ; $65ed: $12
	inc  bc                                          ; $65ee: $03
	ret  nc                                          ; $65ef: $d0

	ld   [bc], a                                     ; $65f0: $02
	ld   e, h                                        ; $65f1: $5c
	di                                               ; $65f2: $f3
	rst  JumpTable                                         ; $65f3: $df
	db   $ec                                         ; $65f4: $ec
	and  e                                           ; $65f5: $a3
	nop                                              ; $65f6: $00
	ld   [bc], a                                     ; $65f7: $02
	ld   e, $03                                      ; $65f8: $1e $03
	ld   [de], a                                     ; $65fa: $12
	inc  bc                                          ; $65fb: $03
	ret  nc                                          ; $65fc: $d0

	ld   [bc], a                                     ; $65fd: $02
	ld   e, h                                        ; $65fe: $5c
	di                                               ; $65ff: $f3
	and  e                                           ; $6600: $a3
	and  l                                           ; $6601: $a5
	db   $ec                                         ; $6602: $ec
	cp   d                                           ; $6603: $ba
	nop                                              ; $6604: $00
	ld   [bc], a                                     ; $6605: $02
	ld   e, $03                                      ; $6606: $1e $03
	ld   [de], a                                     ; $6608: $12
	inc  bc                                          ; $6609: $03
	ret  nc                                          ; $660a: $d0

	ld   [bc], a                                     ; $660b: $02
	ld   e, h                                        ; $660c: $5c
	di                                               ; $660d: $f3
	ld   [bc], a                                     ; $660e: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $660f: $cf
	dec  b                                           ; $6610: $05
	ld   a, [de]                                     ; $6611: $1a
	nop                                              ; $6612: $00
	ld   [bc], a                                     ; $6613: $02
	ld   e, $03                                      ; $6614: $1e $03
	ld   [de], a                                     ; $6616: $12
	inc  bc                                          ; $6617: $03
	ret  nc                                          ; $6618: $d0

	ld   [bc], a                                     ; $6619: $02
	ld   e, h                                        ; $661a: $5c
	di                                               ; $661b: $f3
	xor  h                                           ; $661c: $ac
	push af                                          ; $661d: $f5
	rlc  b                                           ; $661e: $cb $00
	nop                                              ; $6620: $00
	nop                                              ; $6621: $00
	nop                                              ; $6622: $00
	nop                                              ; $6623: $00
	nop                                              ; $6624: $00
	nop                                              ; $6625: $00
	nop                                              ; $6626: $00
	nop                                              ; $6627: $00
	nop                                              ; $6628: $00
	nop                                              ; $6629: $00
	nop                                              ; $662a: $00
	nop                                              ; $662b: $00
	ret  c                                           ; $662c: $d8

	xor  $bd                                         ; $662d: $ee $bd
	push af                                          ; $662f: $f5
	ret                                              ; $6630: $c9


	sbc  $a5                                         ; $6631: $de $a5
	push af                                          ; $6633: $f5
	ret                                              ; $6634: $c9


	nop                                              ; $6635: $00
	nop                                              ; $6636: $00
	ld   [bc], a                                     ; $6637: $02
	inc  l                                           ; $6638: $2c
	inc  bc                                          ; $6639: $03
	pop  bc                                          ; $663a: $c1
	ld   [de], a                                     ; $663b: $12
	nop                                              ; $663c: $00
	ld   [bc], a                                     ; $663d: $02
	inc  l                                           ; $663e: $2c
	inc  bc                                          ; $663f: $03
	pop  bc                                          ; $6640: $c1
	inc  de                                          ; $6641: $13
	nop                                              ; $6642: $00
	db   $d3                                         ; $6643: $d3
	push af                                          ; $6644: $f5
	ret                                              ; $6645: $c9


	and  e                                           ; $6646: $a3
	and  l                                           ; $6647: $a5
	or   h                                           ; $6648: $b4
	push af                                          ; $6649: $f5
	nop                                              ; $664a: $00
	nop                                              ; $664b: $00
	or   b                                           ; $664c: $b0
	and  l                                           ; $664d: $a5
	cp   e                                           ; $664e: $bb
	db   $ed                                         ; $664f: $ed
	ei                                               ; $6650: $fb
	ret  c                                           ; $6651: $d8

	nop                                              ; $6652: $00
	sbc  $a5                                         ; $6653: $de $a5
	push af                                          ; $6655: $f5
	ret                                              ; $6656: $c9


	nop                                              ; $6657: $00
	ld   h, e                                        ; $6658: $63
	ld   e, l                                        ; $6659: $5d
	sub  a                                           ; $665a: $97
	inc  bc                                          ; $665b: $03
	add  a                                           ; $665c: $87
	inc  bc                                          ; $665d: $03
	adc  b                                           ; $665e: $88
	nop                                              ; $665f: $00
	ld   h, e                                        ; $6660: $63
	ld   e, l                                        ; $6661: $5d
	sub  a                                           ; $6662: $97
	or   [hl]                                        ; $6663: $b6
	db   $dd                                         ; $6664: $dd
	rst  ToBoot                                         ; $6665: $c7
	push af                                          ; $6666: $f5
	nop                                              ; $6667: $00
	inc  b                                           ; $6668: $04
	pop  hl                                          ; $6669: $e1
	inc  b                                           ; $666a: $04
	rst  $38                                         ; $666b: $ff
	di                                               ; $666c: $f3
	ld   h, e                                        ; $666d: $63
	ld   e, l                                        ; $666e: $5d
	sub  a                                           ; $666f: $97
	ld   a, h                                        ; $6670: $7c
	inc  bc                                          ; $6671: $03
	add  a                                           ; $6672: $87
	inc  bc                                          ; $6673: $03
	adc  b                                           ; $6674: $88
	nop                                              ; $6675: $00
	add  c                                           ; $6676: $81
	ld   [hl], c                                     ; $6677: $71
	ld   e, l                                        ; $6678: $5d
	sbc  b                                           ; $6679: $98
	inc  bc                                          ; $667a: $03
	ld   [hl], e                                     ; $667b: $73
	inc  bc                                          ; $667c: $03
	ld   [hl], h                                     ; $667d: $74
	nop                                              ; $667e: $00
	ld   h, e                                        ; $667f: $63
	ld   e, l                                        ; $6680: $5d
	sub  a                                           ; $6681: $97
	cp   b                                           ; $6682: $b8
	push hl                                          ; $6683: $e5
	pop  af                                          ; $6684: $f1
	ei                                               ; $6685: $fb
	ld   [de], a                                     ; $6686: $12
	nop                                              ; $6687: $00
	ld   h, e                                        ; $6688: $63
	ld   e, l                                        ; $6689: $5d
	sub  a                                           ; $668a: $97
	cp   b                                           ; $668b: $b8
	push hl                                          ; $668c: $e5
	pop  af                                          ; $668d: $f1
	ei                                               ; $668e: $fb
	inc  b                                           ; $668f: $04
	ld   b, h                                        ; $6690: $44
	ld   e, e                                        ; $6691: $5b
	ld   [de], a                                     ; $6692: $12
	nop                                              ; $6693: $00
	ld   a, h                                        ; $6694: $7c
	ld   l, h                                        ; $6695: $6c
	ld   e, e                                        ; $6696: $5b
	nop                                              ; $6697: $00
	rst  JumpTable                                         ; $6698: $df
	db   $ec                                         ; $6699: $ec
	and  e                                           ; $669a: $a3
	inc  bc                                          ; $669b: $03
	ld   [hl], a                                     ; $669c: $77
	add  e                                           ; $669d: $83
	ld   e, e                                        ; $669e: $5b
	nop                                              ; $669f: $00
	ld   h, e                                        ; $66a0: $63
	ld   e, l                                        ; $66a1: $5d
	sub  a                                           ; $66a2: $97
	inc  b                                           ; $66a3: $04
	ld   c, $04                                      ; $66a4: $0e $04
	ld   d, $02                                      ; $66a6: $16 $02
	xor  b                                           ; $66a8: $a8
	nop                                              ; $66a9: $00
	ld   h, e                                        ; $66aa: $63
	ld   e, l                                        ; $66ab: $5d
	sub  a                                           ; $66ac: $97
	inc  b                                           ; $66ad: $04
	ld   c, $04                                      ; $66ae: $0e $04
	ld   d, $02                                      ; $66b0: $16 $02
	xor  b                                           ; $66b2: $a8
	add  hl, hl                                      ; $66b3: $29
	dec  h                                           ; $66b4: $25
	nop                                              ; $66b5: $00
	ld   h, e                                        ; $66b6: $63
	ld   e, l                                        ; $66b7: $5d
	sub  a                                           ; $66b8: $97
	ld   e, b                                        ; $66b9: $58
	inc  bc                                          ; $66ba: $03
	sub  e                                           ; $66bb: $93
	sbc  b                                           ; $66bc: $98
	nop                                              ; $66bd: $00
	ld   [bc], a                                     ; $66be: $02
	dec  a                                           ; $66bf: $3d
	ld   [bc], a                                     ; $66c0: $02
	dec  b                                           ; $66c1: $05
	ld   [bc], a                                     ; $66c2: $02
	ld   d, l                                        ; $66c3: $55
	dec  b                                           ; $66c4: $05
	sub  $52                                         ; $66c5: $d6 $52
	nop                                              ; $66c7: $00
	ld   h, e                                        ; $66c8: $63
	ld   e, l                                        ; $66c9: $5d
	sub  a                                           ; $66ca: $97
	inc  bc                                          ; $66cb: $03
	xor  a                                           ; $66cc: $af
	ret  z                                           ; $66cd: $c8

	ei                                               ; $66ce: $fb
	ret                                              ; $66cf: $c9


	nop                                              ; $66d0: $00
	ld   h, e                                        ; $66d1: $63
	ld   e, l                                        ; $66d2: $5d
	sub  a                                           ; $66d3: $97
	ld   a, h                                        ; $66d4: $7c
	inc  b                                           ; $66d5: $04
	ld   l, $7c                                      ; $66d6: $2e $7c
	dec  b                                           ; $66d8: $05
	jr   nz, jr_005_66db                             ; $66d9: $20 $00

jr_005_66db:
	ld   h, e                                        ; $66db: $63
	ld   e, l                                        ; $66dc: $5d
	sub  a                                           ; $66dd: $97
	inc  b                                           ; $66de: $04
	dec  bc                                          ; $66df: $0b
	and  l                                           ; $66e0: $a5
	jp   c, $c9f5                                    ; $66e1: $da $f5 $c9

	nop                                              ; $66e4: $00
	ld   h, e                                        ; $66e5: $63
	ld   e, l                                        ; $66e6: $5d
	sub  a                                           ; $66e7: $97
	inc  b                                           ; $66e8: $04
	ld   c, $a5                                      ; $66e9: $0e $a5
	jp   c, $c9f5                                    ; $66eb: $da $f5 $c9

	nop                                              ; $66ee: $00
	ld   h, e                                        ; $66ef: $63
	ld   e, l                                        ; $66f0: $5d
	sub  a                                           ; $66f1: $97
	inc  b                                           ; $66f2: $04
	ld   c, $c8                                      ; $66f3: $0e $c8
	ei                                               ; $66f5: $fb
	ret                                              ; $66f6: $c9


	nop                                              ; $66f7: $00
	ld   [bc], a                                     ; $66f8: $02
	ld   d, b                                        ; $66f9: $50
	inc  bc                                          ; $66fa: $03
	ld   e, b                                        ; $66fb: $58
	ld   a, h                                        ; $66fc: $7c
	ld   h, e                                        ; $66fd: $63
	ld   e, l                                        ; $66fe: $5d
	sub  a                                           ; $66ff: $97

Jump_005_6700:
	or   b                                           ; $6700: $b0
	and  l                                           ; $6701: $a5
	cp   e                                           ; $6702: $bb
	nop                                              ; $6703: $00
	ld   h, e                                        ; $6704: $63
	ld   e, l                                        ; $6705: $5d
	sub  a                                           ; $6706: $97
	xor  c                                           ; $6707: $a9
	push af                                          ; $6708: $f5
	ret  z                                           ; $6709: $c8

	and  h                                           ; $670a: $a4
	push af                                          ; $670b: $f5
	or   c                                           ; $670c: $b1
	nop                                              ; $670d: $00
	di                                               ; $670e: $f3
	ld   h, a                                        ; $670f: $67
	adc  l                                           ; $6710: $8d
	sbc  d                                           ; $6711: $9a
	ld   a, h                                        ; $6712: $7c
	inc  b                                           ; $6713: $04
	add  c                                           ; $6714: $81
	nop                                              ; $6715: $00
	ld   h, a                                        ; $6716: $67
	adc  l                                           ; $6717: $8d
	sbc  d                                           ; $6718: $9a
	ld   a, h                                        ; $6719: $7c
	ld   e, b                                        ; $671a: $58
	inc  bc                                          ; $671b: $03
	dec  c                                           ; $671c: $0d
	inc  b                                           ; $671d: $04
	jr   z, jr_005_677b                              ; $671e: $28 $5b

	nop                                              ; $6720: $00
	ld   h, a                                        ; $6721: $67
	adc  l                                           ; $6722: $8d
	sbc  d                                           ; $6723: $9a
	ld   a, h                                        ; $6724: $7c
	ld   e, b                                        ; $6725: $58
	inc  bc                                          ; $6726: $03
	dec  c                                           ; $6727: $0d
	inc  b                                           ; $6728: $04
	jr   z, jr_005_6786                              ; $6729: $28 $5b

	add  hl, hl                                      ; $672b: $29
	dec  h                                           ; $672c: $25
	nop                                              ; $672d: $00
	ld   h, a                                        ; $672e: $67
	adc  l                                           ; $672f: $8d
	sbc  d                                           ; $6730: $9a
	ld   a, h                                        ; $6731: $7c
	ld   e, b                                        ; $6732: $58
	inc  bc                                          ; $6733: $03
	dec  c                                           ; $6734: $0d
	inc  b                                           ; $6735: $04
	jr   z, jr_005_6793                              ; $6736: $28 $5b

	inc  de                                          ; $6738: $13
	nop                                              ; $6739: $00
	ld   h, a                                        ; $673a: $67
	adc  l                                           ; $673b: $8d
	sbc  d                                           ; $673c: $9a
	ld   a, h                                        ; $673d: $7c
	ld   e, b                                        ; $673e: $58
	inc  bc                                          ; $673f: $03
	dec  c                                           ; $6740: $0d
	inc  b                                           ; $6741: $04
	jr   z, jr_005_679f                              ; $6742: $28 $5b

	inc  de                                          ; $6744: $13
	add  hl, hl                                      ; $6745: $29
	dec  h                                           ; $6746: $25
	nop                                              ; $6747: $00
	inc  b                                           ; $6748: $04
	pop  hl                                          ; $6749: $e1
	inc  b                                           ; $674a: $04
	rst  $38                                         ; $674b: $ff
	ld   h, a                                        ; $674c: $67
	adc  l                                           ; $674d: $8d
	sbc  d                                           ; $674e: $9a
	inc  b                                           ; $674f: $04
	adc  l                                           ; $6750: $8d
	ld   d, d                                        ; $6751: $52
	inc  b                                           ; $6752: $04
	sub  d                                           ; $6753: $92
	nop                                              ; $6754: $00
	ld   h, a                                        ; $6755: $67
	adc  l                                           ; $6756: $8d
	sbc  d                                           ; $6757: $9a
	inc  bc                                          ; $6758: $03

Call_005_6759:
	ld   e, c                                        ; $6759: $59
	inc  b                                           ; $675a: $04
	rlca                                             ; $675b: $07
	ld   [de], a                                     ; $675c: $12
	nop                                              ; $675d: $00
	ld   h, a                                        ; $675e: $67
	adc  l                                           ; $675f: $8d
	sbc  d                                           ; $6760: $9a
	inc  bc                                          ; $6761: $03
	ld   e, c                                        ; $6762: $59
	inc  b                                           ; $6763: $04
	rlca                                             ; $6764: $07
	ld   [de], a                                     ; $6765: $12
	add  hl, hl                                      ; $6766: $29
	dec  h                                           ; $6767: $25
	nop                                              ; $6768: $00
	inc  b                                           ; $6769: $04
	and  c                                           ; $676a: $a1
	inc  b                                           ; $676b: $04
	jp   nc, $5265                                   ; $676c: $d2 $65 $52

	ld   [bc], a                                     ; $676f: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6770: $cf
	inc  bc                                          ; $6771: $03
	jp   Jump_005_6700                               ; $6772: $c3 $00 $67


	adc  l                                           ; $6775: $8d
	sbc  d                                           ; $6776: $9a
	cp   b                                           ; $6777: $b8
	push hl                                          ; $6778: $e5
	pop  af                                          ; $6779: $f1
	ei                                               ; $677a: $fb

jr_005_677b:
	ld   [de], a                                     ; $677b: $12
	nop                                              ; $677c: $00
	ld   e, a                                        ; $677d: $5f
	ld   d, d                                        ; $677e: $52
	ld   h, c                                        ; $677f: $61
	inc  b                                           ; $6780: $04
	ldh  [$03], a                                    ; $6781: $e0 $03
	dec  hl                                          ; $6783: $2b
	nop                                              ; $6784: $00
	ld   e, a                                        ; $6785: $5f

jr_005_6786:
	ld   d, d                                        ; $6786: $52
	ld   h, c                                        ; $6787: $61
	inc  b                                           ; $6788: $04
	ldh  [$03], a                                    ; $6789: $e0 $03
	dec  hl                                          ; $678b: $2b
	add  hl, hl                                      ; $678c: $29
	dec  h                                           ; $678d: $25
	nop                                              ; $678e: $00
	ld   h, a                                        ; $678f: $67
	adc  l                                           ; $6790: $8d
	sbc  d                                           ; $6791: $9a
	inc  bc                                          ; $6792: $03

jr_005_6793:
	xor  a                                           ; $6793: $af
	ret  z                                           ; $6794: $c8

	ei                                               ; $6795: $fb
	ret                                              ; $6796: $c9


	nop                                              ; $6797: $00
	ld   h, a                                        ; $6798: $67
	adc  l                                           ; $6799: $8d
	sbc  d                                           ; $679a: $9a
	halt                                             ; $679b: $76
	or   b                                           ; $679c: $b0
	db   $e4                                         ; $679d: $e4
	nop                                              ; $679e: $00

jr_005_679f:
	ld   [bc], a                                     ; $679f: $02
	ld   d, b                                        ; $67a0: $50
	inc  bc                                          ; $67a1: $03
	ld   e, b                                        ; $67a2: $58
	ld   a, h                                        ; $67a3: $7c
	ld   h, a                                        ; $67a4: $67
	adc  l                                           ; $67a5: $8d
	sbc  d                                           ; $67a6: $9a
	or   b                                           ; $67a7: $b0
	and  l                                           ; $67a8: $a5
	cp   e                                           ; $67a9: $bb
	nop                                              ; $67aa: $00
	ld   h, a                                        ; $67ab: $67
	adc  l                                           ; $67ac: $8d
	sbc  d                                           ; $67ad: $9a
	xor  c                                           ; $67ae: $a9
	push af                                          ; $67af: $f5
	ret  z                                           ; $67b0: $c8

	and  h                                           ; $67b1: $a4
	push af                                          ; $67b2: $f5
	or   c                                           ; $67b3: $b1
	nop                                              ; $67b4: $00
	ld   [bc], a                                     ; $67b5: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $67b6: $cf
	dec  b                                           ; $67b7: $05
	ld   a, [de]                                     ; $67b8: $1a
	inc  b                                           ; $67b9: $04
	ldh  [$03], a                                    ; $67ba: $e0 $03
	dec  hl                                          ; $67bc: $2b
	ld   [de], a                                     ; $67bd: $12
	dec  de                                          ; $67be: $1b
	jr   nz, jr_005_67d3                             ; $67bf: $20 $12

	nop                                              ; $67c1: $00
	ld   [bc], a                                     ; $67c2: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $67c3: $cf
	dec  b                                           ; $67c4: $05
	ld   a, [de]                                     ; $67c5: $1a
	inc  b                                           ; $67c6: $04
	ldh  [$03], a                                    ; $67c7: $e0 $03
	dec  hl                                          ; $67c9: $2b
	inc  de                                          ; $67ca: $13
	dec  de                                          ; $67cb: $1b
	jr   nz, jr_005_67e2                             ; $67cc: $20 $14

	nop                                              ; $67ce: $00
	ld   [bc], a                                     ; $67cf: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $67d0: $cf
	dec  b                                           ; $67d1: $05
	ld   a, [de]                                     ; $67d2: $1a

jr_005_67d3:
	inc  b                                           ; $67d3: $04
	ldh  [$03], a                                    ; $67d4: $e0 $03
	dec  hl                                          ; $67d6: $2b
	inc  de                                          ; $67d7: $13
	dec  de                                          ; $67d8: $1b
	jr   nz, jr_005_67ef                             ; $67d9: $20 $14

	add  hl, hl                                      ; $67db: $29
	dec  h                                           ; $67dc: $25
	nop                                              ; $67dd: $00
	inc  b                                           ; $67de: $04
	pop  hl                                          ; $67df: $e1
	inc  b                                           ; $67e0: $04
	rst  $38                                         ; $67e1: $ff

jr_005_67e2:
	and  a                                           ; $67e2: $a7
	pop  af                                          ; $67e3: $f1
	or   [hl]                                        ; $67e4: $b6
	ld   [bc], a                                     ; $67e5: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $67e6: $cf
	dec  b                                           ; $67e7: $05
	ld   a, [de]                                     ; $67e8: $1a
	ld   [de], a                                     ; $67e9: $12
	nop                                              ; $67ea: $00
	adc  h                                           ; $67eb: $8c
	ld   h, c                                        ; $67ec: $61
	halt                                             ; $67ed: $76
	ld   e, l                                        ; $67ee: $5d

jr_005_67ef:
	and  c                                           ; $67ef: $a1
	inc  b                                           ; $67f0: $04
	ldh  [$03], a                                    ; $67f1: $e0 $03

Jump_005_67f3:
	dec  hl                                          ; $67f3: $2b
	nop                                              ; $67f4: $00
	ld   [bc], a                                     ; $67f5: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $67f6: $cf
	dec  b                                           ; $67f7: $05
	ld   a, [de]                                     ; $67f8: $1a
	inc  b                                           ; $67f9: $04
	ldh  [$03], a                                    ; $67fa: $e0 $03
	dec  hl                                          ; $67fc: $2b
	adc  h                                           ; $67fd: $8c
	ld   h, c                                        ; $67fe: $61
	halt                                             ; $67ff: $76
	ld   e, l                                        ; $6800: $5d
	and  c                                           ; $6801: $a1
	add  hl, hl                                      ; $6802: $29
	dec  h                                           ; $6803: $25
	nop                                              ; $6804: $00
	ld   [bc], a                                     ; $6805: $02
	dec  hl                                          ; $6806: $2b
	ld   d, b                                        ; $6807: $50
	ld   d, d                                        ; $6808: $52
	ld   e, l                                        ; $6809: $5d
	and  c                                           ; $680a: $a1
	nop                                              ; $680b: $00
	ld   [bc], a                                     ; $680c: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $680d: $cf
	dec  b                                           ; $680e: $05
	ld   a, [de]                                     ; $680f: $1a
	inc  bc                                          ; $6810: $03
	xor  a                                           ; $6811: $af
	ret  z                                           ; $6812: $c8

	ei                                               ; $6813: $fb
	ret                                              ; $6814: $c9


	nop                                              ; $6815: $00
	ld   [bc], a                                     ; $6816: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6817: $cf
	dec  b                                           ; $6818: $05
	ld   a, [de]                                     ; $6819: $1a
	ld   b, $0d                                      ; $681a: $06 $0d
	inc  b                                           ; $681c: $04
	ld   e, [hl]                                     ; $681d: $5e
	ld   a, h                                        ; $681e: $7c
	ld   [de], a                                     ; $681f: $12
	nop                                              ; $6820: $00
	ld   [bc], a                                     ; $6821: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6822: $cf
	dec  b                                           ; $6823: $05
	ld   a, [de]                                     ; $6824: $1a
	ld   a, h                                        ; $6825: $7c
	inc  b                                           ; $6826: $04
	ld   d, l                                        ; $6827: $55
	ld   [bc], a                                     ; $6828: $02
	sub  e                                           ; $6829: $93
	ld   h, l                                        ; $682a: $65
	nop                                              ; $682b: $00
	ld   [bc], a                                     ; $682c: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $682d: $cf
	dec  b                                           ; $682e: $05
	ld   a, [de]                                     ; $682f: $1a
	ld   a, h                                        ; $6830: $7c
	inc  b                                           ; $6831: $04
	ld   d, l                                        ; $6832: $55
	ld   [bc], a                                     ; $6833: $02
	sub  e                                           ; $6834: $93
	ld   h, l                                        ; $6835: $65
	add  hl, hl                                      ; $6836: $29
	dec  h                                           ; $6837: $25
	nop                                              ; $6838: $00
	ld   [bc], a                                     ; $6839: $02
	cp   [hl]                                        ; $683a: $be
	ld   [bc], a                                     ; $683b: $02
	ld   b, a                                        ; $683c: $47
	inc  b                                           ; $683d: $04
	ld   d, l                                        ; $683e: $55
	nop                                              ; $683f: $00
	ld   [bc], a                                     ; $6840: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6841: $cf
	dec  b                                           ; $6842: $05
	ld   a, [de]                                     ; $6843: $1a
	ld   a, h                                        ; $6844: $7c
	ld   d, d                                        ; $6845: $52
	ld   d, d                                        ; $6846: $52
	dec  b                                           ; $6847: $05
	jr   nz, jr_005_684a                             ; $6848: $20 $00

jr_005_684a:
	ld   [bc], a                                     ; $684a: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $684b: $cf
	dec  b                                           ; $684c: $05
	ld   a, [de]                                     ; $684d: $1a
	ld   b, $0d                                      ; $684e: $06 $0d
	inc  b                                           ; $6850: $04
	ld   e, [hl]                                     ; $6851: $5e
	ld   [de], a                                     ; $6852: $12
	nop                                              ; $6853: $00
	ld   [bc], a                                     ; $6854: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6855: $cf
	dec  b                                           ; $6856: $05
	ld   a, [de]                                     ; $6857: $1a
	ld   b, $0d                                      ; $6858: $06 $0d
	inc  b                                           ; $685a: $04
	ld   e, [hl]                                     ; $685b: $5e
	inc  de                                          ; $685c: $13
	nop                                              ; $685d: $00
	ld   [bc], a                                     ; $685e: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $685f: $cf
	dec  b                                           ; $6860: $05
	ld   a, [de]                                     ; $6861: $1a
	ld   b, $0d                                      ; $6862: $06 $0d
	inc  b                                           ; $6864: $04
	ld   e, [hl]                                     ; $6865: $5e
	inc  d                                           ; $6866: $14
	nop                                              ; $6867: $00
	ld   [bc], a                                     ; $6868: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6869: $cf
	dec  b                                           ; $686a: $05
	ld   a, [de]                                     ; $686b: $1a
	inc  b                                           ; $686c: $04
	dec  bc                                          ; $686d: $0b
	and  l                                           ; $686e: $a5
	jp   c, $c9f5                                    ; $686f: $da $f5 $c9

	nop                                              ; $6872: $00
	ld   [bc], a                                     ; $6873: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6874: $cf
	dec  b                                           ; $6875: $05
	ld   a, [de]                                     ; $6876: $1a
	inc  b                                           ; $6877: $04
	ld   c, $a5                                      ; $6878: $0e $a5
	jp   c, $c9f5                                    ; $687a: $da $f5 $c9

	nop                                              ; $687d: $00
	ld   [bc], a                                     ; $687e: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $687f: $cf
	dec  b                                           ; $6880: $05
	ld   a, [de]                                     ; $6881: $1a
	inc  b                                           ; $6882: $04
	ld   c, $c8                                      ; $6883: $0e $c8
	ei                                               ; $6885: $fb
	ret                                              ; $6886: $c9


	nop                                              ; $6887: $00
	adc  h                                           ; $6888: $8c
	ld   h, c                                        ; $6889: $61
	halt                                             ; $688a: $76
	ld   e, l                                        ; $688b: $5d
	and  c                                           ; $688c: $a1
	inc  b                                           ; $688d: $04
	ldh  [$03], a                                    ; $688e: $e0 $03
	dec  hl                                          ; $6890: $2b
	add  hl, hl                                      ; $6891: $29
	dec  h                                           ; $6892: $25
	nop                                              ; $6893: $00
	ld   [bc], a                                     ; $6894: $02
	ld   d, b                                        ; $6895: $50
	inc  bc                                          ; $6896: $03
	ld   e, b                                        ; $6897: $58
	ld   a, h                                        ; $6898: $7c
	ld   [bc], a                                     ; $6899: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $689a: $cf
	dec  b                                           ; $689b: $05
	ld   a, [de]                                     ; $689c: $1a
	or   b                                           ; $689d: $b0
	and  l                                           ; $689e: $a5
	cp   e                                           ; $689f: $bb
	nop                                              ; $68a0: $00
	ld   [bc], a                                     ; $68a1: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $68a2: $cf
	dec  b                                           ; $68a3: $05
	ld   a, [de]                                     ; $68a4: $1a
	xor  c                                           ; $68a5: $a9
	push af                                          ; $68a6: $f5
	ret  z                                           ; $68a7: $c8

	and  h                                           ; $68a8: $a4
	push af                                          ; $68a9: $f5
	or   c                                           ; $68aa: $b1
	nop                                              ; $68ab: $00
	and  e                                           ; $68ac: $a3
	and  l                                           ; $68ad: $a5
	db   $ec                                         ; $68ae: $ec
	cp   d                                           ; $68af: $ba
	inc  bc                                          ; $68b0: $03
	ld   e, l                                        ; $68b1: $5d
	inc  b                                           ; $68b2: $04
	rla                                              ; $68b3: $17
	nop                                              ; $68b4: $00
	and  e                                           ; $68b5: $a3
	and  l                                           ; $68b6: $a5
	db   $ec                                         ; $68b7: $ec
	cp   d                                           ; $68b8: $ba
	inc  bc                                          ; $68b9: $03
	ld   e, l                                        ; $68ba: $5d
	inc  b                                           ; $68bb: $04
	rla                                              ; $68bc: $17
	add  hl, hl                                      ; $68bd: $29
	dec  h                                           ; $68be: $25
	nop                                              ; $68bf: $00
	and  e                                           ; $68c0: $a3
	and  l                                           ; $68c1: $a5
	db   $ec                                         ; $68c2: $ec
	cp   d                                           ; $68c3: $ba
	ld   a, h                                        ; $68c4: $7c
	sub  $a2                                         ; $68c5: $d6 $a2
	push af                                          ; $68c7: $f5
	xor  $c0                                         ; $68c8: $ee $c0
	ei                                               ; $68ca: $fb
	nop                                              ; $68cb: $00
	and  e                                           ; $68cc: $a3
	and  l                                           ; $68cd: $a5
	db   $ec                                         ; $68ce: $ec
	cp   d                                           ; $68cf: $ba
	ld   a, h                                        ; $68d0: $7c
	sub  $a2                                         ; $68d1: $d6 $a2
	push af                                          ; $68d3: $f5
	xor  $c0                                         ; $68d4: $ee $c0
	ei                                               ; $68d6: $fb
	add  hl, hl                                      ; $68d7: $29
	dec  h                                           ; $68d8: $25
	nop                                              ; $68d9: $00
	and  e                                           ; $68da: $a3
	and  l                                           ; $68db: $a5
	db   $ec                                         ; $68dc: $ec
	cp   d                                           ; $68dd: $ba
	ld   a, h                                        ; $68de: $7c
	inc  b                                           ; $68df: $04
	xor  d                                           ; $68e0: $aa
	ld   [bc], a                                     ; $68e1: $02
	sub  a                                           ; $68e2: $97
	inc  b                                           ; $68e3: $04
	ld   de, $6ea1                                   ; $68e4: $11 $a1 $6e
	nop                                              ; $68e7: $00
	and  e                                           ; $68e8: $a3
	and  l                                           ; $68e9: $a5
	db   $ec                                         ; $68ea: $ec
	cp   d                                           ; $68eb: $ba
	ld   a, h                                        ; $68ec: $7c
	inc  b                                           ; $68ed: $04
	xor  d                                           ; $68ee: $aa
	ld   [bc], a                                     ; $68ef: $02
	sub  a                                           ; $68f0: $97
	inc  b                                           ; $68f1: $04
	ld   de, $788c                                   ; $68f2: $11 $8c $78
	ld   d, d                                        ; $68f5: $52
	nop                                              ; $68f6: $00
	and  e                                           ; $68f7: $a3
	and  l                                           ; $68f8: $a5
	db   $ec                                         ; $68f9: $ec
	cp   d                                           ; $68fa: $ba
	ld   a, h                                        ; $68fb: $7c
	inc  b                                           ; $68fc: $04
	xor  d                                           ; $68fd: $aa
	ld   [bc], a                                     ; $68fe: $02
	sub  a                                           ; $68ff: $97
	or   l                                           ; $6900: $b5
	ldh  [rP1], a                                    ; $6901: $e0 $00
	and  e                                           ; $6903: $a3
	and  l                                           ; $6904: $a5
	db   $ec                                         ; $6905: $ec
	cp   d                                           ; $6906: $ba
	inc  bc                                          ; $6907: $03
	ld   e, l                                        ; $6908: $5d
	inc  b                                           ; $6909: $04
	rla                                              ; $690a: $17
	ld   l, e                                        ; $690b: $6b
	ld   a, h                                        ; $690c: $7c
	inc  de                                          ; $690d: $13
	nop                                              ; $690e: $00
	and  e                                           ; $690f: $a3
	and  l                                           ; $6910: $a5
	db   $ec                                         ; $6911: $ec
	cp   d                                           ; $6912: $ba
	inc  bc                                          ; $6913: $03
	ld   e, l                                        ; $6914: $5d
	inc  b                                           ; $6915: $04
	rla                                              ; $6916: $17
	ld   l, e                                        ; $6917: $6b
	ld   a, h                                        ; $6918: $7c
	inc  de                                          ; $6919: $13
	add  hl, hl                                      ; $691a: $29
	dec  h                                           ; $691b: $25
	nop                                              ; $691c: $00
	and  e                                           ; $691d: $a3
	and  l                                           ; $691e: $a5
	db   $ec                                         ; $691f: $ec
	cp   d                                           ; $6920: $ba
	cp   b                                           ; $6921: $b8
	push hl                                          ; $6922: $e5
	pop  af                                          ; $6923: $f1
	ei                                               ; $6924: $fb
	nop                                              ; $6925: $00
	inc  b                                           ; $6926: $04
	ret  c                                           ; $6927: $d8

	inc  b                                           ; $6928: $04
	inc  b                                           ; $6929: $04
	adc  l                                           ; $692a: $8d
	ld   a, b                                        ; $692b: $78
	ld   e, c                                        ; $692c: $59
	ld   [hl], c                                     ; $692d: $71
	ld   l, l                                        ; $692e: $6d
	nop                                              ; $692f: $00
	and  e                                           ; $6930: $a3
	and  l                                           ; $6931: $a5
	db   $ec                                         ; $6932: $ec
	cp   d                                           ; $6933: $ba
	inc  bc                                          ; $6934: $03
	xor  a                                           ; $6935: $af
	ret  z                                           ; $6936: $c8

	ei                                               ; $6937: $fb
	ret                                              ; $6938: $c9


	nop                                              ; $6939: $00
	and  e                                           ; $693a: $a3
	and  l                                           ; $693b: $a5
	db   $ec                                         ; $693c: $ec
	cp   d                                           ; $693d: $ba
	halt                                             ; $693e: $76
	inc  b                                           ; $693f: $04
	ldh  a, [c]                                      ; $6940: $f2
	add  h                                           ; $6941: $84
	ld   [de], a                                     ; $6942: $12
	nop                                              ; $6943: $00
	and  e                                           ; $6944: $a3
	and  l                                           ; $6945: $a5
	db   $ec                                         ; $6946: $ec
	cp   d                                           ; $6947: $ba
	or   b                                           ; $6948: $b0
	and  l                                           ; $6949: $a5
	cp   e                                           ; $694a: $bb
	nop                                              ; $694b: $00
	and  e                                           ; $694c: $a3
	and  l                                           ; $694d: $a5
	db   $ec                                         ; $694e: $ec
	cp   d                                           ; $694f: $ba
	ld   a, h                                        ; $6950: $7c
	inc  bc                                          ; $6951: $03
	ld   e, c                                        ; $6952: $59
	inc  b                                           ; $6953: $04
	rlca                                             ; $6954: $07
	nop                                              ; $6955: $00
	and  e                                           ; $6956: $a3
	and  l                                           ; $6957: $a5
	db   $ec                                         ; $6958: $ec
	cp   d                                           ; $6959: $ba
	ret  c                                           ; $695a: $d8

	xor  $bd                                         ; $695b: $ee $bd
	push af                                          ; $695d: $f5
	ret                                              ; $695e: $c9


	db   $d3                                         ; $695f: $d3
	push af                                          ; $6960: $f5
	ret                                              ; $6961: $c9


	add  hl, hl                                      ; $6962: $29
	dec  h                                           ; $6963: $25
	nop                                              ; $6964: $00
	and  e                                           ; $6965: $a3
	and  l                                           ; $6966: $a5
	db   $ec                                         ; $6967: $ec
	cp   d                                           ; $6968: $ba
	ld   a, h                                        ; $6969: $7c
	inc  bc                                          ; $696a: $03
	ld   e, c                                        ; $696b: $59
	inc  b                                           ; $696c: $04
	rlca                                             ; $696d: $07
	add  hl, hl                                      ; $696e: $29
	dec  h                                           ; $696f: $25
	nop                                              ; $6970: $00
	ld   [bc], a                                     ; $6971: $02
	ld   d, b                                        ; $6972: $50
	inc  bc                                          ; $6973: $03
	ld   e, b                                        ; $6974: $58
	ld   a, h                                        ; $6975: $7c
	and  e                                           ; $6976: $a3
	and  l                                           ; $6977: $a5
	db   $ec                                         ; $6978: $ec
	cp   d                                           ; $6979: $ba
	or   b                                           ; $697a: $b0
	and  l                                           ; $697b: $a5
	cp   e                                           ; $697c: $bb
	nop                                              ; $697d: $00
	and  e                                           ; $697e: $a3
	and  l                                           ; $697f: $a5
	db   $ec                                         ; $6980: $ec
	cp   d                                           ; $6981: $ba
	inc  b                                           ; $6982: $04
	dec  bc                                          ; $6983: $0b
	and  l                                           ; $6984: $a5
	jp   c, $c9f5                                    ; $6985: $da $f5 $c9

	nop                                              ; $6988: $00
	and  e                                           ; $6989: $a3
	and  l                                           ; $698a: $a5
	db   $ec                                         ; $698b: $ec
	cp   d                                           ; $698c: $ba
	inc  b                                           ; $698d: $04
	ld   c, $a5                                      ; $698e: $0e $a5
	jp   c, $c9f5                                    ; $6990: $da $f5 $c9

	nop                                              ; $6993: $00
	and  e                                           ; $6994: $a3
	and  l                                           ; $6995: $a5
	db   $ec                                         ; $6996: $ec
	cp   d                                           ; $6997: $ba
	inc  b                                           ; $6998: $04
	ld   c, $c8                                      ; $6999: $0e $c8
	ei                                               ; $699b: $fb
	ret                                              ; $699c: $c9


	nop                                              ; $699d: $00
	and  e                                           ; $699e: $a3
	and  l                                           ; $699f: $a5
	db   $ec                                         ; $69a0: $ec
	cp   d                                           ; $69a1: $ba
	xor  c                                           ; $69a2: $a9
	push af                                          ; $69a3: $f5
	ret  z                                           ; $69a4: $c8

	and  h                                           ; $69a5: $a4
	push af                                          ; $69a6: $f5
	or   c                                           ; $69a7: $b1
	nop                                              ; $69a8: $00
	or   b                                           ; $69a9: $b0
	and  l                                           ; $69aa: $a5
	cp   e                                           ; $69ab: $bb
	ld   [de], a                                     ; $69ac: $12
	inc  b                                           ; $69ad: $04
	cp   a                                           ; $69ae: $bf
	inc  b                                           ; $69af: $04
	call nc, $b000                                   ; $69b0: $d4 $00 $b0
	and  l                                           ; $69b3: $a5
	cp   e                                           ; $69b4: $bb
	inc  de                                          ; $69b5: $13
	inc  b                                           ; $69b6: $04
	cp   a                                           ; $69b7: $bf
	inc  b                                           ; $69b8: $04
	call nc, $b000                                   ; $69b9: $d4 $00 $b0
	and  l                                           ; $69bc: $a5
	cp   e                                           ; $69bd: $bb
	inc  d                                           ; $69be: $14
	inc  b                                           ; $69bf: $04
	cp   a                                           ; $69c0: $bf
	inc  b                                           ; $69c1: $04
	call nc, $b000                                   ; $69c2: $d4 $00 $b0
	and  l                                           ; $69c5: $a5
	cp   e                                           ; $69c6: $bb
	dec  d                                           ; $69c7: $15
	inc  b                                           ; $69c8: $04
	cp   a                                           ; $69c9: $bf
	inc  b                                           ; $69ca: $04
	call nc, $b000                                   ; $69cb: $d4 $00 $b0
	and  l                                           ; $69ce: $a5
	cp   e                                           ; $69cf: $bb
	ld   d, $04                                      ; $69d0: $16 $04
	cp   a                                           ; $69d2: $bf
	inc  b                                           ; $69d3: $04
	call nc, $b000                                   ; $69d4: $d4 $00 $b0
	and  l                                           ; $69d7: $a5
	cp   e                                           ; $69d8: $bb
	rla                                              ; $69d9: $17
	inc  b                                           ; $69da: $04
	cp   a                                           ; $69db: $bf
	inc  b                                           ; $69dc: $04
	call nc, $b000                                   ; $69dd: $d4 $00 $b0
	and  l                                           ; $69e0: $a5
	cp   e                                           ; $69e1: $bb
	jr   @+$06                                       ; $69e2: $18 $04

	cp   a                                           ; $69e4: $bf
	inc  b                                           ; $69e5: $04
	call nc, $b000                                   ; $69e6: $d4 $00 $b0
	and  l                                           ; $69e9: $a5
	cp   e                                           ; $69ea: $bb
	add  hl, de                                      ; $69eb: $19
	inc  b                                           ; $69ec: $04
	cp   a                                           ; $69ed: $bf
	inc  b                                           ; $69ee: $04
	call nc, $b000                                   ; $69ef: $d4 $00 $b0
	and  l                                           ; $69f2: $a5
	cp   e                                           ; $69f3: $bb
	ld   a, [de]                                     ; $69f4: $1a
	inc  b                                           ; $69f5: $04
	cp   a                                           ; $69f6: $bf
	inc  b                                           ; $69f7: $04
	call nc, $b000                                   ; $69f8: $d4 $00 $b0
	and  l                                           ; $69fb: $a5
	cp   e                                           ; $69fc: $bb
	ld   [de], a                                     ; $69fd: $12
	inc  b                                           ; $69fe: $04
	cp   a                                           ; $69ff: $bf
	inc  b                                           ; $6a00: $04
	call nc, $0013                                   ; $6a01: $d4 $13 $00
	or   b                                           ; $6a04: $b0
	and  l                                           ; $6a05: $a5
	cp   e                                           ; $6a06: $bb
	inc  de                                          ; $6a07: $13
	inc  b                                           ; $6a08: $04
	cp   a                                           ; $6a09: $bf
	inc  b                                           ; $6a0a: $04
	call nc, $0013                                   ; $6a0b: $d4 $13 $00
	or   b                                           ; $6a0e: $b0
	and  l                                           ; $6a0f: $a5
	cp   e                                           ; $6a10: $bb
	inc  d                                           ; $6a11: $14
	inc  b                                           ; $6a12: $04
	cp   a                                           ; $6a13: $bf
	inc  b                                           ; $6a14: $04
	call nc, $0013                                   ; $6a15: $d4 $13 $00
	or   b                                           ; $6a18: $b0
	and  l                                           ; $6a19: $a5
	cp   e                                           ; $6a1a: $bb
	dec  d                                           ; $6a1b: $15
	inc  b                                           ; $6a1c: $04
	cp   a                                           ; $6a1d: $bf
	inc  b                                           ; $6a1e: $04
	call nc, $0013                                   ; $6a1f: $d4 $13 $00
	or   b                                           ; $6a22: $b0
	and  l                                           ; $6a23: $a5
	cp   e                                           ; $6a24: $bb
	ld   d, $04                                      ; $6a25: $16 $04
	cp   a                                           ; $6a27: $bf
	inc  b                                           ; $6a28: $04
	call nc, $0013                                   ; $6a29: $d4 $13 $00
	or   b                                           ; $6a2c: $b0
	and  l                                           ; $6a2d: $a5
	cp   e                                           ; $6a2e: $bb
	rla                                              ; $6a2f: $17
	inc  b                                           ; $6a30: $04
	cp   a                                           ; $6a31: $bf
	inc  b                                           ; $6a32: $04
	call nc, $0013                                   ; $6a33: $d4 $13 $00
	or   b                                           ; $6a36: $b0
	and  l                                           ; $6a37: $a5
	cp   e                                           ; $6a38: $bb
	jr   @+$06                                       ; $6a39: $18 $04

	cp   a                                           ; $6a3b: $bf
	inc  b                                           ; $6a3c: $04
	call nc, $0013                                   ; $6a3d: $d4 $13 $00
	or   b                                           ; $6a40: $b0
	and  l                                           ; $6a41: $a5
	cp   e                                           ; $6a42: $bb
	add  hl, de                                      ; $6a43: $19
	inc  b                                           ; $6a44: $04
	cp   a                                           ; $6a45: $bf
	inc  b                                           ; $6a46: $04
	call nc, $0013                                   ; $6a47: $d4 $13 $00
	or   b                                           ; $6a4a: $b0
	and  l                                           ; $6a4b: $a5
	cp   e                                           ; $6a4c: $bb
	ld   a, [de]                                     ; $6a4d: $1a
	inc  b                                           ; $6a4e: $04
	cp   a                                           ; $6a4f: $bf
	inc  b                                           ; $6a50: $04
	call nc, $0013                                   ; $6a51: $d4 $13 $00
	rst  JumpTable                                         ; $6a54: $df
	db   $ec                                         ; $6a55: $ec
	and  e                                           ; $6a56: $a3
	inc  bc                                          ; $6a57: $03
	ld   a, e                                        ; $6a58: $7b
	dec  b                                           ; $6a59: $05
	ld   de, $1203                                   ; $6a5a: $11 $03 $12
	ld   [bc], a                                     ; $6a5d: $02
	ld   c, h                                        ; $6a5e: $4c
	nop                                              ; $6a5f: $00
	rst  JumpTable                                         ; $6a60: $df
	db   $ec                                         ; $6a61: $ec
	and  e                                           ; $6a62: $a3
	inc  bc                                          ; $6a63: $03
	ld   a, e                                        ; $6a64: $7b
	dec  b                                           ; $6a65: $05
	ld   de, $8303                                   ; $6a66: $11 $03 $83
	inc  b                                           ; $6a69: $04
	sbc  b                                           ; $6a6a: $98
	nop                                              ; $6a6b: $00
	rst  JumpTable                                         ; $6a6c: $df
	db   $ec                                         ; $6a6d: $ec
	and  e                                           ; $6a6e: $a3
	ld   a, h                                        ; $6a6f: $7c
	inc  b                                           ; $6a70: $04
	adc  a                                           ; $6a71: $8f
	nop                                              ; $6a72: $00
	rst  JumpTable                                         ; $6a73: $df
	db   $ec                                         ; $6a74: $ec
	and  e                                           ; $6a75: $a3
	ld   a, h                                        ; $6a76: $7c
	ld   h, l                                        ; $6a77: $65
	ld   h, d                                        ; $6a78: $62
	ld   e, e                                        ; $6a79: $5b
	nop                                              ; $6a7a: $00
	rst  JumpTable                                         ; $6a7b: $df
	db   $ec                                         ; $6a7c: $ec
	and  e                                           ; $6a7d: $a3
	ld   a, h                                        ; $6a7e: $7c
	ld   h, l                                        ; $6a7f: $65
	ld   h, d                                        ; $6a80: $62
	ld   e, e                                        ; $6a81: $5b
	add  hl, hl                                      ; $6a82: $29
	dec  h                                           ; $6a83: $25
	nop                                              ; $6a84: $00
	rst  JumpTable                                         ; $6a85: $df
	db   $ec                                         ; $6a86: $ec
	and  e                                           ; $6a87: $a3
	inc  bc                                          ; $6a88: $03
	ld   [hl], a                                     ; $6a89: $77
	di                                               ; $6a8a: $f3
	ld   e, e                                        ; $6a8b: $5b
	nop                                              ; $6a8c: $00
	rst  JumpTable                                         ; $6a8d: $df
	db   $ec                                         ; $6a8e: $ec
	and  e                                           ; $6a8f: $a3
	ld   [bc], a                                     ; $6a90: $02
	rst  $30                                         ; $6a91: $f7
	ld   [bc], a                                     ; $6a92: $02
	ret  nc                                          ; $6a93: $d0

	nop                                              ; $6a94: $00
	rst  JumpTable                                         ; $6a95: $df
	db   $ec                                         ; $6a96: $ec
	and  e                                           ; $6a97: $a3
	ld   a, h                                        ; $6a98: $7c
	sub  $a2                                         ; $6a99: $d6 $a2
	push af                                          ; $6a9b: $f5
	xor  $c0                                         ; $6a9c: $ee $c0
	ei                                               ; $6a9e: $fb
	nop                                              ; $6a9f: $00
	rst  JumpTable                                         ; $6aa0: $df
	db   $ec                                         ; $6aa1: $ec
	and  e                                           ; $6aa2: $a3
	ld   a, h                                        ; $6aa3: $7c
	sub  $a2                                         ; $6aa4: $d6 $a2
	push af                                          ; $6aa6: $f5
	xor  $c0                                         ; $6aa7: $ee $c0
	ei                                               ; $6aa9: $fb
	add  hl, hl                                      ; $6aaa: $29
	dec  h                                           ; $6aab: $25
	nop                                              ; $6aac: $00
	rst  JumpTable                                         ; $6aad: $df
	db   $ec                                         ; $6aae: $ec
	and  e                                           ; $6aaf: $a3
	rst  $28                                         ; $6ab0: $ef
	or   d                                           ; $6ab1: $b2
	call nz, $00c9                                   ; $6ab2: $c4 $c9 $00
	xor  h                                           ; $6ab5: $ac
	push af                                          ; $6ab6: $f5
	rlc  h                                           ; $6ab7: $cb $04
	ld   c, $04                                      ; $6ab9: $0e $04
	ld   d, $02                                      ; $6abb: $16 $02
	xor  b                                           ; $6abd: $a8
	inc  b                                           ; $6abe: $04
	sub  [hl]                                        ; $6abf: $96
	ld   [bc], a                                     ; $6ac0: $02
	cp   e                                           ; $6ac1: $bb
	nop                                              ; $6ac2: $00
	rst  JumpTable                                         ; $6ac3: $df
	db   $ec                                         ; $6ac4: $ec
	and  e                                           ; $6ac5: $a3
	ld   a, h                                        ; $6ac6: $7c
	rst  $28                                         ; $6ac7: $ef
	call nz, $fbac                                   ; $6ac8: $c4 $ac $fb
	nop                                              ; $6acb: $00
	rst  JumpTable                                         ; $6acc: $df
	db   $ec                                         ; $6acd: $ec
	and  e                                           ; $6ace: $a3
	ld   a, h                                        ; $6acf: $7c
	rst  $28                                         ; $6ad0: $ef
	call nz, $fbac                                   ; $6ad1: $c4 $ac $fb
	add  hl, hl                                      ; $6ad4: $29
	dec  h                                           ; $6ad5: $25
	nop                                              ; $6ad6: $00
	db   $dd                                         ; $6ad7: $dd
	db   $ed                                         ; $6ad8: $ed
	cp   b                                           ; $6ad9: $b8
	jp   nz, $6a03                                   ; $6ada: $c2 $03 $6a

	add  a                                           ; $6add: $87
	sbc  c                                           ; $6ade: $99
	nop                                              ; $6adf: $00
	rst  JumpTable                                         ; $6ae0: $df
	db   $ec                                         ; $6ae1: $ec
	and  e                                           ; $6ae2: $a3
	inc  bc                                          ; $6ae3: $03
	xor  a                                           ; $6ae4: $af
	ret  z                                           ; $6ae5: $c8

	ei                                               ; $6ae6: $fb
	ret                                              ; $6ae7: $c9


	nop                                              ; $6ae8: $00
	rst  JumpTable                                         ; $6ae9: $df
	db   $ec                                         ; $6aea: $ec
	and  e                                           ; $6aeb: $a3
	ld   a, h                                        ; $6aec: $7c
	inc  b                                           ; $6aed: $04
	rlc  l                                           ; $6aee: $cb $05
	jr   nz, jr_005_6af2                             ; $6af0: $20 $00

jr_005_6af2:
	rst  JumpTable                                         ; $6af2: $df
	db   $ec                                         ; $6af3: $ec
	and  e                                           ; $6af4: $a3
	db   $dd                                         ; $6af5: $dd
	db   $ed                                         ; $6af6: $ed
	cp   b                                           ; $6af7: $b8
	jp   nz, $ac03                                   ; $6af8: $c2 $03 $ac

	sbc  b                                           ; $6afb: $98
	nop                                              ; $6afc: $00
	rst  JumpTable                                         ; $6afd: $df
	db   $ec                                         ; $6afe: $ec
	and  e                                           ; $6aff: $a3
	db   $dd                                         ; $6b00: $dd
	db   $ed                                         ; $6b01: $ed
	cp   b                                           ; $6b02: $b8
	jp   nz, $ac03                                   ; $6b03: $c2 $03 $ac

	sbc  b                                           ; $6b06: $98
	add  hl, hl                                      ; $6b07: $29
	dec  h                                           ; $6b08: $25
	nop                                              ; $6b09: $00
	rst  JumpTable                                         ; $6b0a: $df
	db   $ec                                         ; $6b0b: $ec
	and  e                                           ; $6b0c: $a3
	ret  c                                           ; $6b0d: $d8

	xor  $bd                                         ; $6b0e: $ee $bd
	push af                                          ; $6b10: $f5
	ret                                              ; $6b11: $c9


	db   $d3                                         ; $6b12: $d3
	push af                                          ; $6b13: $f5
	ret                                              ; $6b14: $c9


	add  hl, hl                                      ; $6b15: $29
	dec  h                                           ; $6b16: $25
	nop                                              ; $6b17: $00
	rst  JumpTable                                         ; $6b18: $df
	db   $ec                                         ; $6b19: $ec
	and  e                                           ; $6b1a: $a3
	or   b                                           ; $6b1b: $b0
	and  l                                           ; $6b1c: $a5
	cp   e                                           ; $6b1d: $bb
	nop                                              ; $6b1e: $00
	rst  JumpTable                                         ; $6b1f: $df
	db   $ec                                         ; $6b20: $ec
	and  e                                           ; $6b21: $a3
	inc  b                                           ; $6b22: $04
	dec  bc                                          ; $6b23: $0b
	and  l                                           ; $6b24: $a5
	jp   c, $c9f5                                    ; $6b25: $da $f5 $c9

	nop                                              ; $6b28: $00
	rst  JumpTable                                         ; $6b29: $df
	db   $ec                                         ; $6b2a: $ec
	and  e                                           ; $6b2b: $a3
	inc  b                                           ; $6b2c: $04
	ld   c, $a5                                      ; $6b2d: $0e $a5
	jp   c, $c9f5                                    ; $6b2f: $da $f5 $c9

	nop                                              ; $6b32: $00
	rst  JumpTable                                         ; $6b33: $df
	db   $ec                                         ; $6b34: $ec
	and  e                                           ; $6b35: $a3
	inc  b                                           ; $6b36: $04
	ld   c, $c8                                      ; $6b37: $0e $c8
	ei                                               ; $6b39: $fb
	ret                                              ; $6b3a: $c9


	nop                                              ; $6b3b: $00
	rst  JumpTable                                         ; $6b3c: $df
	db   $ec                                         ; $6b3d: $ec
	and  e                                           ; $6b3e: $a3
	xor  c                                           ; $6b3f: $a9
	push af                                          ; $6b40: $f5
	ret  z                                           ; $6b41: $c8

	and  h                                           ; $6b42: $a4
	push af                                          ; $6b43: $f5
	or   c                                           ; $6b44: $b1
	nop                                              ; $6b45: $00
	ld   [bc], a                                     ; $6b46: $02
	ld   d, b                                        ; $6b47: $50
	inc  bc                                          ; $6b48: $03
	ld   e, b                                        ; $6b49: $58
	ld   a, h                                        ; $6b4a: $7c
	rst  JumpTable                                         ; $6b4b: $df
	db   $ec                                         ; $6b4c: $ec
	and  e                                           ; $6b4d: $a3
	or   b                                           ; $6b4e: $b0
	and  l                                           ; $6b4f: $a5
	cp   e                                           ; $6b50: $bb
	nop                                              ; $6b51: $00
	xor  h                                           ; $6b52: $ac
	push af                                          ; $6b53: $f5
	res  7, b                                        ; $6b54: $cb $b8
	push hl                                          ; $6b56: $e5
	pop  af                                          ; $6b57: $f1
	ei                                               ; $6b58: $fb
	nop                                              ; $6b59: $00
	xor  h                                           ; $6b5a: $ac
	push af                                          ; $6b5b: $f5
	res  7, b                                        ; $6b5c: $cb $b8
	push hl                                          ; $6b5e: $e5
	pop  af                                          ; $6b5f: $f1
	ei                                               ; $6b60: $fb
	add  hl, hl                                      ; $6b61: $29
	dec  h                                           ; $6b62: $25
	nop                                              ; $6b63: $00
	ld   [bc], a                                     ; $6b64: $02
	ld   d, b                                        ; $6b65: $50
	inc  bc                                          ; $6b66: $03
	ld   e, b                                        ; $6b67: $58
	ld   a, h                                        ; $6b68: $7c
	xor  h                                           ; $6b69: $ac
	push af                                          ; $6b6a: $f5
	res  6, b                                        ; $6b6b: $cb $b0
	and  l                                           ; $6b6d: $a5
	cp   e                                           ; $6b6e: $bb
	nop                                              ; $6b6f: $00
	xor  h                                           ; $6b70: $ac
	push af                                          ; $6b71: $f5
	rlc  e                                           ; $6b72: $cb $03
	db   $f4                                         ; $6b74: $f4
	inc  b                                           ; $6b75: $04
	ld   e, c                                        ; $6b76: $59
	nop                                              ; $6b77: $00
	xor  h                                           ; $6b78: $ac
	push af                                          ; $6b79: $f5
	rlc  e                                           ; $6b7a: $cb $03
	db   $f4                                         ; $6b7c: $f4
	inc  b                                           ; $6b7d: $04
	ld   e, c                                        ; $6b7e: $59
	add  hl, hl                                      ; $6b7f: $29
	dec  h                                           ; $6b80: $25
	nop                                              ; $6b81: $00
	xor  h                                           ; $6b82: $ac
	push af                                          ; $6b83: $f5
	rlc  d                                           ; $6b84: $cb $02
	or   b                                           ; $6b86: $b0
	ld   [bc], a                                     ; $6b87: $02
	or   c                                           ; $6b88: $b1
	nop                                              ; $6b89: $00
	xor  h                                           ; $6b8a: $ac
	push af                                          ; $6b8b: $f5
	rlc  d                                           ; $6b8c: $cb $02
	or   b                                           ; $6b8e: $b0
	ld   [bc], a                                     ; $6b8f: $02
	or   c                                           ; $6b90: $b1
	add  hl, hl                                      ; $6b91: $29
	dec  h                                           ; $6b92: $25
	nop                                              ; $6b93: $00
	xor  h                                           ; $6b94: $ac
	push af                                          ; $6b95: $f5
	rlc  h                                           ; $6b96: $cb $04
	ld   c, $04                                      ; $6b98: $0e $04
	ld   d, $02                                      ; $6b9a: $16 $02
	xor  b                                           ; $6b9c: $a8
	inc  b                                           ; $6b9d: $04
	sub  [hl]                                        ; $6b9e: $96
	ld   [bc], a                                     ; $6b9f: $02
	cp   e                                           ; $6ba0: $bb
	nop                                              ; $6ba1: $00
	xor  h                                           ; $6ba2: $ac
	push af                                          ; $6ba3: $f5
	rlc  e                                           ; $6ba4: $cb $03
	add  [hl]                                        ; $6ba6: $86
	ld   [bc], a                                     ; $6ba7: $02
	xor  l                                           ; $6ba8: $ad
	ld   [bc], a                                     ; $6ba9: $02
	sbc  d                                           ; $6baa: $9a
	ld   e, e                                        ; $6bab: $5b
	nop                                              ; $6bac: $00
	xor  h                                           ; $6bad: $ac
	push af                                          ; $6bae: $f5
	rlc  e                                           ; $6baf: $cb $03
	add  [hl]                                        ; $6bb1: $86
	ld   [bc], a                                     ; $6bb2: $02
	xor  l                                           ; $6bb3: $ad
	ld   [bc], a                                     ; $6bb4: $02
	sbc  d                                           ; $6bb5: $9a
	ld   e, e                                        ; $6bb6: $5b
	add  hl, hl                                      ; $6bb7: $29
	dec  h                                           ; $6bb8: $25
	nop                                              ; $6bb9: $00
	xor  h                                           ; $6bba: $ac
	push af                                          ; $6bbb: $f5
	bit  7, h                                        ; $6bbc: $cb $7c
	dec  b                                           ; $6bbe: $05
	ld   [bc], a                                     ; $6bbf: $02
	dec  b                                           ; $6bc0: $05
	ld   de, $ac00                                   ; $6bc1: $11 $00 $ac
	push af                                          ; $6bc4: $f5
	rlc  e                                           ; $6bc5: $cb $03
	xor  a                                           ; $6bc7: $af
	ret  z                                           ; $6bc8: $c8

	ei                                               ; $6bc9: $fb
	ret                                              ; $6bca: $c9


	nop                                              ; $6bcb: $00
	xor  h                                           ; $6bcc: $ac
	push af                                          ; $6bcd: $f5
	bit  7, h                                        ; $6bce: $cb $7c
	inc  bc                                          ; $6bd0: $03
	sub  d                                           ; $6bd1: $92
	inc  b                                           ; $6bd2: $04
	ld   l, $05                                      ; $6bd3: $2e $05
	jr   nz, jr_005_6bd7                             ; $6bd5: $20 $00

jr_005_6bd7:
	xor  h                                           ; $6bd7: $ac
	push af                                          ; $6bd8: $f5
	set  3, b                                        ; $6bd9: $cb $d8
	xor  $bd                                         ; $6bdb: $ee $bd
	push af                                          ; $6bdd: $f5
	ret                                              ; $6bde: $c9


	db   $d3                                         ; $6bdf: $d3
	push af                                          ; $6be0: $f5
	ret                                              ; $6be1: $c9


	add  hl, hl                                      ; $6be2: $29
	dec  h                                           ; $6be3: $25
	nop                                              ; $6be4: $00
	xor  h                                           ; $6be5: $ac
	push af                                          ; $6be6: $f5
	bit  7, h                                        ; $6be7: $cb $7c
	dec  b                                           ; $6be9: $05
	ld   [bc], a                                     ; $6bea: $02
	dec  b                                           ; $6beb: $05
	ld   de, $2529                                   ; $6bec: $11 $29 $25
	nop                                              ; $6bef: $00
	xor  h                                           ; $6bf0: $ac
	push af                                          ; $6bf1: $f5
	rlc  h                                           ; $6bf2: $cb $04
	dec  bc                                          ; $6bf4: $0b
	and  l                                           ; $6bf5: $a5
	jp   c, $c9f5                                    ; $6bf6: $da $f5 $c9

	nop                                              ; $6bf9: $00
	xor  h                                           ; $6bfa: $ac
	push af                                          ; $6bfb: $f5
	rlc  h                                           ; $6bfc: $cb $04
	ld   c, $a5                                      ; $6bfe: $0e $a5
	jp   c, $c9f5                                    ; $6c00: $da $f5 $c9

	nop                                              ; $6c03: $00
	xor  h                                           ; $6c04: $ac
	push af                                          ; $6c05: $f5
	rlc  h                                           ; $6c06: $cb $04
	ld   c, $c8                                      ; $6c08: $0e $c8
	ei                                               ; $6c0a: $fb
	ret                                              ; $6c0b: $c9


	nop                                              ; $6c0c: $00
	xor  h                                           ; $6c0d: $ac
	push af                                          ; $6c0e: $f5
	res  5, c                                        ; $6c0f: $cb $a9
	push af                                          ; $6c11: $f5
	ret  z                                           ; $6c12: $c8

	and  h                                           ; $6c13: $a4
	push af                                          ; $6c14: $f5
	or   c                                           ; $6c15: $b1
	nop                                              ; $6c16: $00
	xor  h                                           ; $6c17: $ac
	push af                                          ; $6c18: $f5
	rlc  h                                           ; $6c19: $cb $04
	xor  d                                           ; $6c1b: $aa
	inc  de                                          ; $6c1c: $13
	nop                                              ; $6c1d: $00
	xor  h                                           ; $6c1e: $ac
	push af                                          ; $6c1f: $f5
	rlc  h                                           ; $6c20: $cb $04
	xor  d                                           ; $6c22: $aa
	inc  d                                           ; $6c23: $14
	nop                                              ; $6c24: $00
	inc  b                                           ; $6c25: $04
	ld   c, $03                                      ; $6c26: $0e $03
	sub  b                                           ; $6c28: $90
	xor  c                                           ; $6c29: $a9
	push af                                          ; $6c2a: $f5
	ret  z                                           ; $6c2b: $c8

	and  h                                           ; $6c2c: $a4
	push af                                          ; $6c2d: $f5
	or   c                                           ; $6c2e: $b1
	nop                                              ; $6c2f: $00
	di                                               ; $6c30: $f3
	ld   h, a                                        ; $6c31: $67
	adc  l                                           ; $6c32: $8d
	sbc  d                                           ; $6c33: $9a
	ld   a, h                                        ; $6c34: $7c
	inc  b                                           ; $6c35: $04
	add  c                                           ; $6c36: $81
	add  hl, hl                                      ; $6c37: $29
	dec  h                                           ; $6c38: $25
	nop                                              ; $6c39: $00
	ld   h, a                                        ; $6c3a: $67
	adc  l                                           ; $6c3b: $8d
	sbc  d                                           ; $6c3c: $9a
	inc  b                                           ; $6c3d: $04
	ld   c, $c8                                      ; $6c3e: $0e $c8
	ei                                               ; $6c40: $fb
	ret                                              ; $6c41: $c9


	nop                                              ; $6c42: $00
	ld   h, a                                        ; $6c43: $67
	adc  l                                           ; $6c44: $8d
	sbc  d                                           ; $6c45: $9a
	inc  b                                           ; $6c46: $04
	xor  d                                           ; $6c47: $aa
	inc  de                                          ; $6c48: $13
	nop                                              ; $6c49: $00
	ld   h, a                                        ; $6c4a: $67
	adc  l                                           ; $6c4b: $8d
	sbc  d                                           ; $6c4c: $9a
	inc  b                                           ; $6c4d: $04
	xor  d                                           ; $6c4e: $aa
	inc  d                                           ; $6c4f: $14
	nop                                              ; $6c50: $00
	rst  $10                                         ; $6c51: $d7
	rst  $28                                         ; $6c52: $ef
	rst  JumpTable                                         ; $6c53: $df
	and  l                                           ; $6c54: $a5
	jp   z, Jump_005_63f3                            ; $6c55: $ca $f3 $63

	ld   e, l                                        ; $6c58: $5d
	sub  a                                           ; $6c59: $97
	nop                                              ; $6c5a: $00
	rst  $10                                         ; $6c5b: $d7
	rst  $28                                         ; $6c5c: $ef
	rst  JumpTable                                         ; $6c5d: $df
	and  l                                           ; $6c5e: $a5
	jp   z, Jump_005_67f3                            ; $6c5f: $ca $f3 $67

	adc  l                                           ; $6c62: $8d
	sbc  d                                           ; $6c63: $9a
	nop                                              ; $6c64: $00
	rst  $10                                         ; $6c65: $d7
	rst  $28                                         ; $6c66: $ef
	rst  JumpTable                                         ; $6c67: $df
	and  l                                           ; $6c68: $a5
	jp   z, $dff3                                    ; $6c69: $ca $f3 $df

	db   $ec                                         ; $6c6c: $ec
	and  e                                           ; $6c6d: $a3
	nop                                              ; $6c6e: $00
	rst  $10                                         ; $6c6f: $d7
	rst  $28                                         ; $6c70: $ef
	rst  JumpTable                                         ; $6c71: $df
	and  l                                           ; $6c72: $a5
	jp   z, $a3f3                                    ; $6c73: $ca $f3 $a3

	and  l                                           ; $6c76: $a5
	db   $ec                                         ; $6c77: $ec
	cp   d                                           ; $6c78: $ba
	nop                                              ; $6c79: $00
	rst  $10                                         ; $6c7a: $d7
	rst  $28                                         ; $6c7b: $ef
	rst  JumpTable                                         ; $6c7c: $df
	and  l                                           ; $6c7d: $a5
	jp   z, $02f3                                    ; $6c7e: $ca $f3 $02

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6c81: $cf
	dec  b                                           ; $6c82: $05
	ld   a, [de]                                     ; $6c83: $1a
	nop                                              ; $6c84: $00
	rst  $10                                         ; $6c85: $d7
	rst  $28                                         ; $6c86: $ef
	rst  JumpTable                                         ; $6c87: $df
	and  l                                           ; $6c88: $a5
	jp   z, $acf3                                    ; $6c89: $ca $f3 $ac

	push af                                          ; $6c8c: $f5
	rlc  b                                           ; $6c8d: $cb $00
	ld   [bc], a                                     ; $6c8f: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6c90: $cf
	dec  b                                           ; $6c91: $05
	ld   a, [de]                                     ; $6c92: $1a
	inc  b                                           ; $6c93: $04
	xor  d                                           ; $6c94: $aa
	inc  de                                          ; $6c95: $13
	nop                                              ; $6c96: $00
	ld   [bc], a                                     ; $6c97: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6c98: $cf
	dec  b                                           ; $6c99: $05
	ld   a, [de]                                     ; $6c9a: $1a
	inc  b                                           ; $6c9b: $04
	xor  d                                           ; $6c9c: $aa
	inc  d                                           ; $6c9d: $14
	nop                                              ; $6c9e: $00
	ld   b, $5b                                      ; $6c9f: $06 $5b
	halt                                             ; $6ca1: $76
	ld   a, h                                        ; $6ca2: $7c
	ld   [bc], a                                     ; $6ca3: $02
	add  [hl]                                        ; $6ca4: $86
	dec  b                                           ; $6ca5: $05
	jr   nz, jr_005_6cb9                             ; $6ca6: $20 $11

	ld   [de], a                                     ; $6ca8: $12
	nop                                              ; $6ca9: $00
	ld   b, $5b                                      ; $6caa: $06 $5b
	halt                                             ; $6cac: $76
	ld   a, h                                        ; $6cad: $7c
	ld   [bc], a                                     ; $6cae: $02
	add  [hl]                                        ; $6caf: $86
	dec  b                                           ; $6cb0: $05
	jr   nz, jr_005_6cc4                             ; $6cb1: $20 $11

	inc  de                                          ; $6cb3: $13
	nop                                              ; $6cb4: $00
	ld   b, $5b                                      ; $6cb5: $06 $5b
	halt                                             ; $6cb7: $76
	ld   a, h                                        ; $6cb8: $7c

jr_005_6cb9:
	ld   [bc], a                                     ; $6cb9: $02
	add  [hl]                                        ; $6cba: $86
	dec  b                                           ; $6cbb: $05
	jr   nz, jr_005_6ccf                             ; $6cbc: $20 $11

	inc  d                                           ; $6cbe: $14
	nop                                              ; $6cbf: $00
	ld   b, $5b                                      ; $6cc0: $06 $5b
	halt                                             ; $6cc2: $76
	ld   a, h                                        ; $6cc3: $7c

jr_005_6cc4:
	ld   [bc], a                                     ; $6cc4: $02
	add  [hl]                                        ; $6cc5: $86
	dec  b                                           ; $6cc6: $05
	jr   nz, jr_005_6cda                             ; $6cc7: $20 $11

	dec  d                                           ; $6cc9: $15
	nop                                              ; $6cca: $00
	ld   b, $5b                                      ; $6ccb: $06 $5b
	halt                                             ; $6ccd: $76
	ld   a, h                                        ; $6cce: $7c

jr_005_6ccf:
	ld   [bc], a                                     ; $6ccf: $02
	add  [hl]                                        ; $6cd0: $86
	dec  b                                           ; $6cd1: $05
	jr   nz, jr_005_6ce5                             ; $6cd2: $20 $11

	ld   d, $00                                      ; $6cd4: $16 $00
	ld   b, $5b                                      ; $6cd6: $06 $5b
	halt                                             ; $6cd8: $76
	ld   a, h                                        ; $6cd9: $7c

jr_005_6cda:
	ld   [bc], a                                     ; $6cda: $02
	add  [hl]                                        ; $6cdb: $86
	dec  b                                           ; $6cdc: $05
	jr   nz, jr_005_6cf0                             ; $6cdd: $20 $11

	rla                                              ; $6cdf: $17
	nop                                              ; $6ce0: $00
	ld   b, $5b                                      ; $6ce1: $06 $5b
	halt                                             ; $6ce3: $76
	ld   a, h                                        ; $6ce4: $7c

jr_005_6ce5:
	ld   [bc], a                                     ; $6ce5: $02
	add  [hl]                                        ; $6ce6: $86
	dec  b                                           ; $6ce7: $05
	jr   nz, jr_005_6cfb                             ; $6ce8: $20 $11

	jr   jr_005_6cec                                 ; $6cea: $18 $00

jr_005_6cec:
	ld   b, $5b                                      ; $6cec: $06 $5b
	halt                                             ; $6cee: $76
	ld   a, h                                        ; $6cef: $7c

jr_005_6cf0:
	ld   [bc], a                                     ; $6cf0: $02
	add  [hl]                                        ; $6cf1: $86
	dec  b                                           ; $6cf2: $05
	jr   nz, jr_005_6d06                             ; $6cf3: $20 $11

	add  hl, de                                      ; $6cf5: $19
	nop                                              ; $6cf6: $00
	inc  b                                           ; $6cf7: $04
	pop  hl                                          ; $6cf8: $e1
	inc  b                                           ; $6cf9: $04
	rst  $38                                         ; $6cfa: $ff

jr_005_6cfb:
	sub  $eb                                         ; $6cfb: $d6 $eb
	or   c                                           ; $6cfd: $b1
	nop                                              ; $6cfe: $00
	ld   [bc], a                                     ; $6cff: $02
	jp   $d304                                       ; $6d00: $c3 $04 $d3


	ld   [de], a                                     ; $6d03: $12
	inc  bc                                          ; $6d04: $03
	ld   a, c                                        ; $6d05: $79

jr_005_6d06:
	inc  b                                           ; $6d06: $04
	call nc, $e104                                   ; $6d07: $d4 $04 $e1
	inc  b                                           ; $6d0a: $04
	rst  $38                                         ; $6d0b: $ff
	nop                                              ; $6d0c: $00
	inc  b                                           ; $6d0d: $04
	pop  hl                                          ; $6d0e: $e1
	inc  b                                           ; $6d0f: $04
	rst  $38                                         ; $6d10: $ff
	di                                               ; $6d11: $f3
	ld   h, e                                        ; $6d12: $63
	ld   e, l                                        ; $6d13: $5d
	sub  a                                           ; $6d14: $97
	ld   a, h                                        ; $6d15: $7c
	inc  bc                                          ; $6d16: $03
	add  a                                           ; $6d17: $87
	inc  bc                                          ; $6d18: $03
	adc  b                                           ; $6d19: $88
	add  hl, hl                                      ; $6d1a: $29
	dec  h                                           ; $6d1b: $25
	nop                                              ; $6d1c: $00
	ld   [bc], a                                     ; $6d1d: $02
	jp   $d304                                       ; $6d1e: $c3 $04 $d3


	inc  de                                          ; $6d21: $13
	inc  bc                                          ; $6d22: $03
	ld   a, c                                        ; $6d23: $79
	inc  b                                           ; $6d24: $04
	call nc, Call_005_6759                           ; $6d25: $d4 $59 $67
	adc  l                                           ; $6d28: $8d
	nop                                              ; $6d29: $00
	inc  b                                           ; $6d2a: $04
	pop  hl                                          ; $6d2b: $e1
	inc  b                                           ; $6d2c: $04
	rst  $38                                         ; $6d2d: $ff
	and  a                                           ; $6d2e: $a7
	pop  af                                          ; $6d2f: $f1
	or   [hl]                                        ; $6d30: $b6
	ld   [bc], a                                     ; $6d31: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6d32: $cf
	dec  b                                           ; $6d33: $05
	ld   a, [de]                                     ; $6d34: $1a
	ld   [de], a                                     ; $6d35: $12
	add  hl, hl                                      ; $6d36: $29
	dec  h                                           ; $6d37: $25
	nop                                              ; $6d38: $00
	inc  b                                           ; $6d39: $04
	pop  hl                                          ; $6d3a: $e1
	inc  b                                           ; $6d3b: $04
	rst  $38                                         ; $6d3c: $ff
	ld   h, a                                        ; $6d3d: $67
	adc  l                                           ; $6d3e: $8d
	sbc  d                                           ; $6d3f: $9a
	inc  b                                           ; $6d40: $04
	adc  l                                           ; $6d41: $8d
	ld   d, d                                        ; $6d42: $52
	inc  b                                           ; $6d43: $04
	sub  d                                           ; $6d44: $92
	add  hl, hl                                      ; $6d45: $29
	dec  h                                           ; $6d46: $25
	nop                                              ; $6d47: $00
	ld   h, e                                        ; $6d48: $63
	ld   e, l                                        ; $6d49: $5d
	sub  a                                           ; $6d4a: $97
	ret  c                                           ; $6d4b: $d8

	xor  $bd                                         ; $6d4c: $ee $bd
	push af                                          ; $6d4e: $f5
	ret                                              ; $6d4f: $c9


	db   $d3                                         ; $6d50: $d3
	push af                                          ; $6d51: $f5
	ret                                              ; $6d52: $c9


	add  hl, hl                                      ; $6d53: $29
	dec  h                                           ; $6d54: $25
	nop                                              ; $6d55: $00
	ld   h, a                                        ; $6d56: $67
	adc  l                                           ; $6d57: $8d
	sbc  d                                           ; $6d58: $9a
	ret  c                                           ; $6d59: $d8

	xor  $bd                                         ; $6d5a: $ee $bd
	push af                                          ; $6d5c: $f5
	ret                                              ; $6d5d: $c9


	db   $d3                                         ; $6d5e: $d3
	push af                                          ; $6d5f: $f5
	ret                                              ; $6d60: $c9


	add  hl, hl                                      ; $6d61: $29
	dec  h                                           ; $6d62: $25
	nop                                              ; $6d63: $00
	ld   [bc], a                                     ; $6d64: $02
	jp   $d304                                       ; $6d65: $c3 $04 $d3


	inc  d                                           ; $6d68: $14
	inc  bc                                          ; $6d69: $03
	ld   a, c                                        ; $6d6a: $79
	inc  b                                           ; $6d6b: $04
	call nc, $e104                                   ; $6d6c: $d4 $04 $e1
	inc  b                                           ; $6d6f: $04
	rst  $38                                         ; $6d70: $ff
	nop                                              ; $6d71: $00
	ld   h, e                                        ; $6d72: $63
	ld   e, l                                        ; $6d73: $5d
	sub  a                                           ; $6d74: $97
	ld   e, b                                        ; $6d75: $58
	inc  bc                                          ; $6d76: $03
	sub  e                                           ; $6d77: $93
	sbc  b                                           ; $6d78: $98
	add  hl, hl                                      ; $6d79: $29
	dec  h                                           ; $6d7a: $25
	nop                                              ; $6d7b: $00
	ld   [bc], a                                     ; $6d7c: $02
	dec  hl                                          ; $6d7d: $2b
	ld   d, b                                        ; $6d7e: $50
	ld   d, d                                        ; $6d7f: $52
	ld   e, l                                        ; $6d80: $5d
	and  c                                           ; $6d81: $a1
	add  hl, hl                                      ; $6d82: $29
	dec  h                                           ; $6d83: $25
	nop                                              ; $6d84: $00
	ld   e, c                                        ; $6d85: $59
	ld   h, a                                        ; $6d86: $67
	adc  l                                           ; $6d87: $8d
	add  hl, hl                                      ; $6d88: $29
	dec  h                                           ; $6d89: $25
	nop                                              ; $6d8a: $00
	inc  b                                           ; $6d8b: $04
	pop  hl                                          ; $6d8c: $e1
	inc  b                                           ; $6d8d: $04
	rst  $38                                         ; $6d8e: $ff
	add  hl, hl                                      ; $6d8f: $29
	dec  h                                           ; $6d90: $25
	nop                                              ; $6d91: $00
	ld   b, $5b                                      ; $6d92: $06 $5b
	add  hl, hl                                      ; $6d94: $29
	dec  h                                           ; $6d95: $25
	nop                                              ; $6d96: $00
	ld   [bc], a                                     ; $6d97: $02
	jp   $d304                                       ; $6d98: $c3 $04 $d3


	dec  d                                           ; $6d9b: $15
	inc  bc                                          ; $6d9c: $03
	ld   a, c                                        ; $6d9d: $79
	inc  b                                           ; $6d9e: $04
	call nc, Call_005_6759                           ; $6d9f: $d4 $59 $67
	adc  l                                           ; $6da2: $8d
	nop                                              ; $6da3: $00
	ld   [bc], a                                     ; $6da4: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6da5: $cf
	dec  b                                           ; $6da6: $05
	ld   a, [de]                                     ; $6da7: $1a
	ret  c                                           ; $6da8: $d8

	xor  $bd                                         ; $6da9: $ee $bd
	push af                                          ; $6dab: $f5
	ret                                              ; $6dac: $c9


	db   $d3                                         ; $6dad: $d3
	push af                                          ; $6dae: $f5
	ret                                              ; $6daf: $c9


	add  hl, hl                                      ; $6db0: $29
	dec  h                                           ; $6db1: $25
	nop                                              ; $6db2: $00
	inc  bc                                          ; $6db3: $03
	inc  c                                           ; $6db4: $0c
	inc  b                                           ; $6db5: $04
	xor  d                                           ; $6db6: $aa
	ld   h, e                                        ; $6db7: $63
	ld   e, l                                        ; $6db8: $5d
	sub  a                                           ; $6db9: $97
	nop                                              ; $6dba: $00
	inc  bc                                          ; $6dbb: $03
	inc  c                                           ; $6dbc: $0c
	inc  b                                           ; $6dbd: $04
	xor  d                                           ; $6dbe: $aa
	ld   h, a                                        ; $6dbf: $67
	adc  l                                           ; $6dc0: $8d
	sbc  d                                           ; $6dc1: $9a
	nop                                              ; $6dc2: $00
	inc  bc                                          ; $6dc3: $03
	inc  c                                           ; $6dc4: $0c
	inc  b                                           ; $6dc5: $04
	xor  d                                           ; $6dc6: $aa
	rst  JumpTable                                         ; $6dc7: $df
	db   $ec                                         ; $6dc8: $ec
	and  e                                           ; $6dc9: $a3
	nop                                              ; $6dca: $00
	inc  bc                                          ; $6dcb: $03
	inc  c                                           ; $6dcc: $0c
	inc  b                                           ; $6dcd: $04
	xor  d                                           ; $6dce: $aa
	and  e                                           ; $6dcf: $a3
	and  l                                           ; $6dd0: $a5
	db   $ec                                         ; $6dd1: $ec
	cp   d                                           ; $6dd2: $ba
	nop                                              ; $6dd3: $00
	inc  bc                                          ; $6dd4: $03
	inc  c                                           ; $6dd5: $0c
	inc  b                                           ; $6dd6: $04
	xor  d                                           ; $6dd7: $aa
	ld   [bc], a                                     ; $6dd8: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6dd9: $cf
	dec  b                                           ; $6dda: $05
	ld   a, [de]                                     ; $6ddb: $1a
	nop                                              ; $6ddc: $00
	inc  bc                                          ; $6ddd: $03
	inc  c                                           ; $6dde: $0c
	inc  b                                           ; $6ddf: $04
	xor  d                                           ; $6de0: $aa
	xor  h                                           ; $6de1: $ac
	push af                                          ; $6de2: $f5
	rlc  b                                           ; $6de3: $cb $00
	inc  bc                                          ; $6de5: $03
	adc  a                                           ; $6de6: $8f
	ld   [bc], a                                     ; $6de7: $02
	sbc  b                                           ; $6de8: $98
	inc  b                                           ; $6de9: $04
	sbc  c                                           ; $6dea: $99
	inc  bc                                          ; $6deb: $03
	sub  b                                           ; $6dec: $90
	nop                                              ; $6ded: $00
	ld   [bc], a                                     ; $6dee: $02
	ret  c                                           ; $6def: $d8

	inc  b                                           ; $6df0: $04
	ld   sp, $047c                                   ; $6df1: $31 $7c $04
	adc  [hl]                                        ; $6df4: $8e
	nop                                              ; $6df5: $00
	cp   d                                           ; $6df6: $ba
	adc  $b1                                         ; $6df7: $ce $b1
	ei                                               ; $6df9: $fb
	db   $eb                                         ; $6dfa: $eb
	jp   nz, $00ac                                   ; $6dfb: $c2 $ac $00

	and  l                                           ; $6dfe: $a5
	db   $ec                                         ; $6dff: $ec
	cp   d                                           ; $6e00: $ba
	rst  JumpTable                                         ; $6e01: $df
	db   $ec                                         ; $6e02: $ec
	ld   [$c4ce], a                                  ; $6e03: $ea $ce $c4
	ret                                              ; $6e06: $c9


	nop                                              ; $6e07: $00
	jp   nz, $efd4                                   ; $6e08: $c2 $d4 $ef

	db   $dd                                         ; $6e0b: $dd
	ld   [bc], a                                     ; $6e0c: $02
	ld   c, b                                        ; $6e0d: $48
	ld   [bc], a                                     ; $6e0e: $02
	sub  c                                           ; $6e0f: $91
	nop                                              ; $6e10: $00
	ld   [bc], a                                     ; $6e11: $02
	jr   nz, jr_005_6e18                             ; $6e12: $20 $04

	add  h                                           ; $6e14: $84
	dec  b                                           ; $6e15: $05
	dec  de                                          ; $6e16: $1b
	inc  b                                           ; $6e17: $04

jr_005_6e18:
	ld   [hl], b                                     ; $6e18: $70
	nop                                              ; $6e19: $00
	ld   h, e                                        ; $6e1a: $63
	ld   e, l                                        ; $6e1b: $5d
	sub  a                                           ; $6e1c: $97
	inc  b                                           ; $6e1d: $04
	xor  d                                           ; $6e1e: $aa
	inc  de                                          ; $6e1f: $13
	nop                                              ; $6e20: $00
	ld   h, e                                        ; $6e21: $63
	ld   e, l                                        ; $6e22: $5d
	sub  a                                           ; $6e23: $97
	inc  b                                           ; $6e24: $04
	xor  d                                           ; $6e25: $aa
	inc  d                                           ; $6e26: $14
	nop                                              ; $6e27: $00
	rst  JumpTable                                         ; $6e28: $df
	db   $ec                                         ; $6e29: $ec
	and  e                                           ; $6e2a: $a3
	inc  b                                           ; $6e2b: $04
	xor  d                                           ; $6e2c: $aa
	inc  de                                          ; $6e2d: $13
	nop                                              ; $6e2e: $00
	rst  JumpTable                                         ; $6e2f: $df
	db   $ec                                         ; $6e30: $ec
	and  e                                           ; $6e31: $a3
	inc  b                                           ; $6e32: $04
	xor  d                                           ; $6e33: $aa
	inc  d                                           ; $6e34: $14
	nop                                              ; $6e35: $00
	and  e                                           ; $6e36: $a3
	and  l                                           ; $6e37: $a5
	db   $ec                                         ; $6e38: $ec
	cp   d                                           ; $6e39: $ba
	inc  b                                           ; $6e3a: $04
	xor  d                                           ; $6e3b: $aa
	inc  de                                          ; $6e3c: $13
	nop                                              ; $6e3d: $00
	and  e                                           ; $6e3e: $a3
	and  l                                           ; $6e3f: $a5
	db   $ec                                         ; $6e40: $ec
	cp   d                                           ; $6e41: $ba
	inc  b                                           ; $6e42: $04
	xor  d                                           ; $6e43: $aa
	inc  d                                           ; $6e44: $14
	nop                                              ; $6e45: $00
	inc  bc                                          ; $6e46: $03
	ld   l, l                                        ; $6e47: $6d
	dec  b                                           ; $6e48: $05
	add  hl, de                                      ; $6e49: $19
	inc  bc                                          ; $6e4a: $03
	and  a                                           ; $6e4b: $a7
	adc  l                                           ; $6e4c: $8d
	nop                                              ; $6e4d: $00
	or   b                                           ; $6e4e: $b0
	and  l                                           ; $6e4f: $a5
	cp   e                                           ; $6e50: $bb
	ld   [bc], a                                     ; $6e51: $02
	sub  e                                           ; $6e52: $93
	inc  bc                                          ; $6e53: $03
	pop  bc                                          ; $6e54: $c1
	nop                                              ; $6e55: $00
	ld   h, a                                        ; $6e56: $67
	adc  l                                           ; $6e57: $8d
	sbc  d                                           ; $6e58: $9a
	inc  b                                           ; $6e59: $04
	dec  bc                                          ; $6e5a: $0b
	and  l                                           ; $6e5b: $a5
	jp   c, $c9f5                                    ; $6e5c: $da $f5 $c9

	nop                                              ; $6e5f: $00
	ld   h, a                                        ; $6e60: $67
	adc  l                                           ; $6e61: $8d
	sbc  d                                           ; $6e62: $9a
	inc  b                                           ; $6e63: $04
	ld   c, $a5                                      ; $6e64: $0e $a5
	jp   c, $c9f5                                    ; $6e66: $da $f5 $c9

	nop                                              ; $6e69: $00
	ld   h, e                                        ; $6e6a: $63
	ld   e, l                                        ; $6e6b: $5d
	sub  a                                           ; $6e6c: $97
	ld   e, b                                        ; $6e6d: $58
	inc  bc                                          ; $6e6e: $03
	sub  e                                           ; $6e6f: $93
	sbc  b                                           ; $6e70: $98
	add  hl, hl                                      ; $6e71: $29
	dec  h                                           ; $6e72: $25
	nop                                              ; $6e73: $00
	ld   h, a                                        ; $6e74: $67
	adc  l                                           ; $6e75: $8d
	sbc  d                                           ; $6e76: $9a
	halt                                             ; $6e77: $76
	ld   h, e                                        ; $6e78: $63
	ld   e, l                                        ; $6e79: $5d
	sub  a                                           ; $6e7a: $97
	ld   a, h                                        ; $6e7b: $7c
	or   d                                           ; $6e7c: $b2
	push af                                          ; $6e7d: $f5
	xor  h                                           ; $6e7e: $ac
	nop                                              ; $6e7f: $00
	dec  b                                           ; $6e80: $05
	ld   l, c                                        ; $6e81: $69
	ld   [bc], a                                     ; $6e82: $02
	ld   a, c                                        ; $6e83: $79
	inc  b                                           ; $6e84: $04
	ld   [de], a                                     ; $6e85: $12
	di                                               ; $6e86: $f3
	di                                               ; $6e87: $f3
	ld   h, e                                        ; $6e88: $63
	ld   e, l                                        ; $6e89: $5d
	sub  a                                           ; $6e8a: $97
	nop                                              ; $6e8b: $00
	dec  b                                           ; $6e8c: $05
	ld   l, c                                        ; $6e8d: $69
	ld   [bc], a                                     ; $6e8e: $02
	ld   a, c                                        ; $6e8f: $79
	inc  b                                           ; $6e90: $04
	ld   [de], a                                     ; $6e91: $12
	di                                               ; $6e92: $f3
	di                                               ; $6e93: $f3
	ld   h, a                                        ; $6e94: $67
	adc  l                                           ; $6e95: $8d
	sbc  d                                           ; $6e96: $9a
	nop                                              ; $6e97: $00
	dec  b                                           ; $6e98: $05
	ld   l, c                                        ; $6e99: $69
	ld   [bc], a                                     ; $6e9a: $02
	ld   a, c                                        ; $6e9b: $79
	inc  b                                           ; $6e9c: $04
	ld   [de], a                                     ; $6e9d: $12
	di                                               ; $6e9e: $f3
	di                                               ; $6e9f: $f3
	rst  JumpTable                                         ; $6ea0: $df
	db   $ec                                         ; $6ea1: $ec
	and  e                                           ; $6ea2: $a3
	nop                                              ; $6ea3: $00
	dec  b                                           ; $6ea4: $05
	ld   l, c                                        ; $6ea5: $69
	ld   [bc], a                                     ; $6ea6: $02
	ld   a, c                                        ; $6ea7: $79
	inc  b                                           ; $6ea8: $04
	ld   [de], a                                     ; $6ea9: $12
	di                                               ; $6eaa: $f3
	di                                               ; $6eab: $f3
	and  e                                           ; $6eac: $a3
	and  l                                           ; $6ead: $a5
	db   $ec                                         ; $6eae: $ec
	cp   d                                           ; $6eaf: $ba
	nop                                              ; $6eb0: $00
	dec  b                                           ; $6eb1: $05
	ld   l, c                                        ; $6eb2: $69
	ld   [bc], a                                     ; $6eb3: $02
	ld   a, c                                        ; $6eb4: $79
	inc  b                                           ; $6eb5: $04
	ld   [de], a                                     ; $6eb6: $12
	di                                               ; $6eb7: $f3
	di                                               ; $6eb8: $f3
	ld   [bc], a                                     ; $6eb9: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6eba: $cf
	dec  b                                           ; $6ebb: $05
	ld   a, [de]                                     ; $6ebc: $1a
	nop                                              ; $6ebd: $00
	dec  b                                           ; $6ebe: $05
	ld   l, c                                        ; $6ebf: $69
	ld   [bc], a                                     ; $6ec0: $02
	ld   a, c                                        ; $6ec1: $79
	inc  b                                           ; $6ec2: $04
	ld   [de], a                                     ; $6ec3: $12
	di                                               ; $6ec4: $f3
	di                                               ; $6ec5: $f3
	xor  h                                           ; $6ec6: $ac
	push af                                          ; $6ec7: $f5
	rlc  b                                           ; $6ec8: $cb $00
	inc  bc                                          ; $6eca: $03
	ld   l, c                                        ; $6ecb: $69
	inc  bc                                          ; $6ecc: $03
	ld   a, [hl]                                     ; $6ecd: $7e
	inc  bc                                          ; $6ece: $03
	xor  b                                           ; $6ecf: $a8
	nop                                              ; $6ed0: $00
	and  e                                           ; $6ed1: $a3
	and  l                                           ; $6ed2: $a5
	rst  ToBoot                                         ; $6ed3: $c7
	ldh  [c], a                                      ; $6ed4: $e2
	di                                               ; $6ed5: $f3
	inc  b                                           ; $6ed6: $04
	rst  ToBoot                                         ; $6ed7: $c7
	ld   [bc], a                                     ; $6ed8: $02
	ld   sp, hl                                      ; $6ed9: $f9
	nop                                              ; $6eda: $00
	ld   h, e                                        ; $6edb: $63
	ld   e, l                                        ; $6edc: $5d
	sub  a                                           ; $6edd: $97
	inc  b                                           ; $6ede: $04
	adc  a                                           ; $6edf: $8f
	inc  b                                           ; $6ee0: $04
	ld   de, $028d                                   ; $6ee1: $11 $8d $02
	or   b                                           ; $6ee4: $b0
	ld   [bc], a                                     ; $6ee5: $02
	or   c                                           ; $6ee6: $b1
	nop                                              ; $6ee7: $00
	rst  JumpTable                                         ; $6ee8: $df
	db   $ec                                         ; $6ee9: $ec
	and  e                                           ; $6eea: $a3
	inc  b                                           ; $6eeb: $04
	adc  a                                           ; $6eec: $8f
	inc  b                                           ; $6eed: $04
	ld   de, $028d                                   ; $6eee: $11 $8d $02
	or   b                                           ; $6ef1: $b0
	ld   [bc], a                                     ; $6ef2: $02
	or   c                                           ; $6ef3: $b1
	nop                                              ; $6ef4: $00
	and  e                                           ; $6ef5: $a3
	and  l                                           ; $6ef6: $a5
	db   $ec                                         ; $6ef7: $ec
	cp   d                                           ; $6ef8: $ba
	inc  b                                           ; $6ef9: $04
	rst  ToBoot                                         ; $6efa: $c7
	inc  bc                                          ; $6efb: $03
	ld   c, a                                        ; $6efc: $4f
	nop                                              ; $6efd: $00
	ldh  [$cc], a                                    ; $6efe: $e0 $cc
	or   e                                           ; $6f00: $b3
	ei                                               ; $6f01: $fb
	ldh  [c], a                                      ; $6f02: $e2
	di                                               ; $6f03: $f3
	dec  b                                           ; $6f04: $05
	ld   e, $05                                      ; $6f05: $1e $05
	ld   d, $74                                      ; $6f07: $16 $74
	inc  b                                           ; $6f09: $04
	ld   l, b                                        ; $6f0a: $68
	ld   l, c                                        ; $6f0b: $69
	nop                                              ; $6f0c: $00
	ldh  [$cc], a                                    ; $6f0d: $e0 $cc
	or   e                                           ; $6f0f: $b3
	ei                                               ; $6f10: $fb
	ldh  [c], a                                      ; $6f11: $e2
	di                                               ; $6f12: $f3
	ld   l, [hl]                                     ; $6f13: $6e
	sbc  c                                           ; $6f14: $99
	adc  h                                           ; $6f15: $8c
	ld   h, e                                        ; $6f16: $63
	and  c                                           ; $6f17: $a1
	nop                                              ; $6f18: $00
	db   $ed                                         ; $6f19: $ed
	ei                                               ; $6f1a: $fb
	cp   e                                           ; $6f1b: $bb
	ld   a, c                                        ; $6f1c: $79
	ld   e, c                                        ; $6f1d: $59
	add  h                                           ; $6f1e: $84
	sbc  c                                           ; $6f1f: $99
	nop                                              ; $6f20: $00
	nop                                              ; $6f21: $00
	nop                                              ; $6f22: $00
	nop                                              ; $6f23: $00
	nop                                              ; $6f24: $00
	nop                                              ; $6f25: $00
	nop                                              ; $6f26: $00
	nop                                              ; $6f27: $00
	nop                                              ; $6f28: $00
	nop                                              ; $6f29: $00
	nop                                              ; $6f2a: $00
	nop                                              ; $6f2b: $00
	nop                                              ; $6f2c: $00
	nop                                              ; $6f2d: $00
	nop                                              ; $6f2e: $00
	nop                                              ; $6f2f: $00
	nop                                              ; $6f30: $00
	nop                                              ; $6f31: $00
	nop                                              ; $6f32: $00
	nop                                              ; $6f33: $00
	nop                                              ; $6f34: $00
	nop                                              ; $6f35: $00
	nop                                              ; $6f36: $00
	and  e                                           ; $6f37: $a3
	and  l                                           ; $6f38: $a5
	rst  ToBoot                                         ; $6f39: $c7
	ldh  [c], a                                      ; $6f3a: $e2
	di                                               ; $6f3b: $f3
	ld   [bc], a                                     ; $6f3c: $02
	sub  e                                           ; $6f3d: $93
	inc  b                                           ; $6f3e: $04
	ld   a, h                                        ; $6f3f: $7c
	jp   z, $f5ec                                    ; $6f40: $ca $ec $f5

	or   b                                           ; $6f43: $b0
	nop                                              ; $6f44: $00
	and  e                                           ; $6f45: $a3
	and  l                                           ; $6f46: $a5
	rst  ToBoot                                         ; $6f47: $c7
	ldh  [c], a                                      ; $6f48: $e2
	di                                               ; $6f49: $f3
	inc  b                                           ; $6f4a: $04
	dec  hl                                          ; $6f4b: $2b
	dec  b                                           ; $6f4c: $05
	ld   a, [bc]                                     ; $6f4d: $0a
	inc  bc                                          ; $6f4e: $03
	ld   h, l                                        ; $6f4f: $65
	di                                               ; $6f50: $f3
	nop                                              ; $6f51: $00
	and  e                                           ; $6f52: $a3
	and  l                                           ; $6f53: $a5
	rst  ToBoot                                         ; $6f54: $c7
	ldh  [c], a                                      ; $6f55: $e2
	di                                               ; $6f56: $f3
	dec  b                                           ; $6f57: $05
	add  hl, bc                                      ; $6f58: $09
	dec  b                                           ; $6f59: $05
	ld   a, [bc]                                     ; $6f5a: $0a
	inc  bc                                          ; $6f5b: $03
	ld   h, l                                        ; $6f5c: $65
	di                                               ; $6f5d: $f3
	nop                                              ; $6f5e: $00
	and  e                                           ; $6f5f: $a3
	and  l                                           ; $6f60: $a5
	rst  ToBoot                                         ; $6f61: $c7
	ldh  [c], a                                      ; $6f62: $e2
	di                                               ; $6f63: $f3
	ld   [bc], a                                     ; $6f64: $02
	and  c                                           ; $6f65: $a1
	ld   [bc], a                                     ; $6f66: $02
	ld   a, e                                        ; $6f67: $7b
	ld   d, d                                        ; $6f68: $52
	inc  bc                                          ; $6f69: $03
	ld   h, l                                        ; $6f6a: $65
	di                                               ; $6f6b: $f3
	nop                                              ; $6f6c: $00
	and  e                                           ; $6f6d: $a3
	and  l                                           ; $6f6e: $a5
	rst  ToBoot                                         ; $6f6f: $c7
	ldh  [c], a                                      ; $6f70: $e2
	di                                               ; $6f71: $f3
	inc  bc                                          ; $6f72: $03
	and  [hl]                                        ; $6f73: $a6
	inc  bc                                          ; $6f74: $03
	ld   [hl], b                                     ; $6f75: $70
	ld   h, e                                        ; $6f76: $63
	inc  bc                                          ; $6f77: $03
	ld   h, l                                        ; $6f78: $65
	di                                               ; $6f79: $f3
	nop                                              ; $6f7a: $00
	and  e                                           ; $6f7b: $a3
	and  l                                           ; $6f7c: $a5
	rst  ToBoot                                         ; $6f7d: $c7
	ldh  [c], a                                      ; $6f7e: $e2
	di                                               ; $6f7f: $f3
	ld   b, $25                                      ; $6f80: $06 $25
	inc  b                                           ; $6f82: $04
	dec  bc                                          ; $6f83: $0b
	ld   b, $80                                      ; $6f84: $06 $80
	inc  bc                                          ; $6f86: $03
	ld   h, l                                        ; $6f87: $65
	di                                               ; $6f88: $f3
	nop                                              ; $6f89: $00
	inc  bc                                          ; $6f8a: $03
	ld   c, h                                        ; $6f8b: $4c
	inc  b                                           ; $6f8c: $04
	ld   d, e                                        ; $6f8d: $53
	di                                               ; $6f8e: $f3
	inc  b                                           ; $6f8f: $04
	dec  hl                                          ; $6f90: $2b
	dec  b                                           ; $6f91: $05
	ld   a, [bc]                                     ; $6f92: $0a
	inc  bc                                          ; $6f93: $03
	ld   h, l                                        ; $6f94: $65
	di                                               ; $6f95: $f3
	nop                                              ; $6f96: $00
	inc  bc                                          ; $6f97: $03
	ld   c, h                                        ; $6f98: $4c
	inc  b                                           ; $6f99: $04
	ld   d, e                                        ; $6f9a: $53
	di                                               ; $6f9b: $f3
	dec  b                                           ; $6f9c: $05
	add  hl, bc                                      ; $6f9d: $09
	dec  b                                           ; $6f9e: $05
	ld   a, [bc]                                     ; $6f9f: $0a
	inc  bc                                          ; $6fa0: $03
	ld   h, l                                        ; $6fa1: $65
	di                                               ; $6fa2: $f3
	nop                                              ; $6fa3: $00
	inc  bc                                          ; $6fa4: $03
	ld   c, h                                        ; $6fa5: $4c
	inc  b                                           ; $6fa6: $04
	ld   d, e                                        ; $6fa7: $53
	di                                               ; $6fa8: $f3
	ld   [bc], a                                     ; $6fa9: $02
	and  c                                           ; $6faa: $a1
	ld   [bc], a                                     ; $6fab: $02
	ld   a, e                                        ; $6fac: $7b
	ld   d, d                                        ; $6fad: $52
	inc  bc                                          ; $6fae: $03
	ld   h, l                                        ; $6faf: $65
	di                                               ; $6fb0: $f3
	nop                                              ; $6fb1: $00
	inc  bc                                          ; $6fb2: $03
	ld   c, h                                        ; $6fb3: $4c
	inc  b                                           ; $6fb4: $04
	ld   d, e                                        ; $6fb5: $53
	di                                               ; $6fb6: $f3
	inc  bc                                          ; $6fb7: $03
	and  [hl]                                        ; $6fb8: $a6
	inc  bc                                          ; $6fb9: $03
	ld   [hl], b                                     ; $6fba: $70
	ld   h, e                                        ; $6fbb: $63
	inc  bc                                          ; $6fbc: $03
	ld   h, l                                        ; $6fbd: $65
	di                                               ; $6fbe: $f3
	nop                                              ; $6fbf: $00
	inc  bc                                          ; $6fc0: $03
	ld   c, h                                        ; $6fc1: $4c
	inc  b                                           ; $6fc2: $04
	ld   d, e                                        ; $6fc3: $53
	di                                               ; $6fc4: $f3
	ld   b, $25                                      ; $6fc5: $06 $25
	inc  b                                           ; $6fc7: $04
	dec  bc                                          ; $6fc8: $0b
	ld   b, $80                                      ; $6fc9: $06 $80
	inc  bc                                          ; $6fcb: $03
	ld   h, l                                        ; $6fcc: $65
	di                                               ; $6fcd: $f3
	nop                                              ; $6fce: $00
	nop                                              ; $6fcf: $00
	nop                                              ; $6fd0: $00
	nop                                              ; $6fd1: $00
	rst  $10                                         ; $6fd2: $d7
	rst  $28                                         ; $6fd3: $ef
	rst  JumpTable                                         ; $6fd4: $df
	and  l                                           ; $6fd5: $a5
	jp   z, $03f3                                    ; $6fd6: $ca $f3 $03

	ret                                              ; $6fd9: $c9


	inc  b                                           ; $6fda: $04
	add  l                                           ; $6fdb: $85
	nop                                              ; $6fdc: $00
	rst  $10                                         ; $6fdd: $d7
	rst  $28                                         ; $6fde: $ef
	rst  JumpTable                                         ; $6fdf: $df
	and  l                                           ; $6fe0: $a5
	jp   z, $eef3                                    ; $6fe1: $ca $f3 $ee

	call z, $0000                                   ; $6fe4: $cc $00 $00
	nop                                              ; $6fe7: $00
	nop                                              ; $6fe8: $00
	nop                                              ; $6fe9: $00
	nop                                              ; $6fea: $00
	nop                                              ; $6feb: $00
	nop                                              ; $6fec: $00
	nop                                              ; $6fed: $00
	nop                                              ; $6fee: $00
	nop                                              ; $6fef: $00
	nop                                              ; $6ff0: $00
	nop                                              ; $6ff1: $00
	nop                                              ; $6ff2: $00
	nop                                              ; $6ff3: $00
	nop                                              ; $6ff4: $00
	nop                                              ; $6ff5: $00
	nop                                              ; $6ff6: $00
	nop                                              ; $6ff7: $00
	nop                                              ; $6ff8: $00
	nop                                              ; $6ff9: $00
	nop                                              ; $6ffa: $00
	nop                                              ; $6ffb: $00
	nop                                              ; $6ffc: $00
	nop                                              ; $6ffd: $00
	nop                                              ; $6ffe: $00
	nop                                              ; $6fff: $00
	nop                                              ; $7000: $00
	nop                                              ; $7001: $00
	nop                                              ; $7002: $00
	nop                                              ; $7003: $00
	nop                                              ; $7004: $00
	nop                                              ; $7005: $00
	nop                                              ; $7006: $00
	nop                                              ; $7007: $00
	nop                                              ; $7008: $00
	nop                                              ; $7009: $00
	nop                                              ; $700a: $00
	nop                                              ; $700b: $00
	nop                                              ; $700c: $00
	nop                                              ; $700d: $00
	nop                                              ; $700e: $00
	nop                                              ; $700f: $00
	nop                                              ; $7010: $00
	nop                                              ; $7011: $00
	nop                                              ; $7012: $00
	nop                                              ; $7013: $00
	nop                                              ; $7014: $00
	nop                                              ; $7015: $00
	nop                                              ; $7016: $00
	nop                                              ; $7017: $00
	nop                                              ; $7018: $00
	nop                                              ; $7019: $00
	nop                                              ; $701a: $00
	nop                                              ; $701b: $00
	nop                                              ; $701c: $00
	nop                                              ; $701d: $00
	nop                                              ; $701e: $00
	nop                                              ; $701f: $00
	nop                                              ; $7020: $00
	nop                                              ; $7021: $00
	nop                                              ; $7022: $00
	nop                                              ; $7023: $00
	nop                                              ; $7024: $00
	nop                                              ; $7025: $00
	nop                                              ; $7026: $00
	nop                                              ; $7027: $00
	nop                                              ; $7028: $00
	nop                                              ; $7029: $00
	nop                                              ; $702a: $00
	nop                                              ; $702b: $00
	nop                                              ; $702c: $00
	nop                                              ; $702d: $00
	nop                                              ; $702e: $00
	nop                                              ; $702f: $00
	nop                                              ; $7030: $00
	nop                                              ; $7031: $00
	nop                                              ; $7032: $00
	nop                                              ; $7033: $00
	nop                                              ; $7034: $00
	nop                                              ; $7035: $00
	nop                                              ; $7036: $00
	nop                                              ; $7037: $00
	nop                                              ; $7038: $00
	nop                                              ; $7039: $00
	nop                                              ; $703a: $00
	nop                                              ; $703b: $00
	nop                                              ; $703c: $00
	nop                                              ; $703d: $00
	nop                                              ; $703e: $00
	nop                                              ; $703f: $00
	nop                                              ; $7040: $00
	nop                                              ; $7041: $00
	nop                                              ; $7042: $00
	nop                                              ; $7043: $00
	nop                                              ; $7044: $00
	nop                                              ; $7045: $00
	nop                                              ; $7046: $00
	nop                                              ; $7047: $00
	nop                                              ; $7048: $00
	nop                                              ; $7049: $00
	nop                                              ; $704a: $00
	nop                                              ; $704b: $00
	nop                                              ; $704c: $00
	nop                                              ; $704d: $00
	nop                                              ; $704e: $00
	nop                                              ; $704f: $00
	nop                                              ; $7050: $00
	nop                                              ; $7051: $00
	nop                                              ; $7052: $00
	nop                                              ; $7053: $00
	nop                                              ; $7054: $00
	nop                                              ; $7055: $00
	nop                                              ; $7056: $00
	nop                                              ; $7057: $00
	nop                                              ; $7058: $00
	nop                                              ; $7059: $00
	nop                                              ; $705a: $00
	nop                                              ; $705b: $00
	nop                                              ; $705c: $00
	nop                                              ; $705d: $00
	nop                                              ; $705e: $00
	nop                                              ; $705f: $00
	nop                                              ; $7060: $00
	nop                                              ; $7061: $00
	nop                                              ; $7062: $00
	nop                                              ; $7063: $00
	nop                                              ; $7064: $00
	nop                                              ; $7065: $00
	nop                                              ; $7066: $00
	nop                                              ; $7067: $00
	nop                                              ; $7068: $00
	nop                                              ; $7069: $00
	nop                                              ; $706a: $00
	nop                                              ; $706b: $00
	nop                                              ; $706c: $00
	nop                                              ; $706d: $00
	nop                                              ; $706e: $00
	nop                                              ; $706f: $00
	nop                                              ; $7070: $00
	nop                                              ; $7071: $00
	nop                                              ; $7072: $00
	nop                                              ; $7073: $00
	nop                                              ; $7074: $00
	nop                                              ; $7075: $00
	nop                                              ; $7076: $00
	nop                                              ; $7077: $00
	nop                                              ; $7078: $00
	nop                                              ; $7079: $00
	nop                                              ; $707a: $00
	nop                                              ; $707b: $00
	nop                                              ; $707c: $00
	nop                                              ; $707d: $00
	nop                                              ; $707e: $00
	nop                                              ; $707f: $00
	nop                                              ; $7080: $00
	nop                                              ; $7081: $00
	nop                                              ; $7082: $00
	nop                                              ; $7083: $00
	nop                                              ; $7084: $00
	nop                                              ; $7085: $00
	nop                                              ; $7086: $00
	nop                                              ; $7087: $00
	nop                                              ; $7088: $00
	nop                                              ; $7089: $00
	nop                                              ; $708a: $00
	nop                                              ; $708b: $00
	nop                                              ; $708c: $00
	nop                                              ; $708d: $00
	nop                                              ; $708e: $00
	nop                                              ; $708f: $00
	nop                                              ; $7090: $00
	nop                                              ; $7091: $00
	nop                                              ; $7092: $00
	nop                                              ; $7093: $00
	nop                                              ; $7094: $00
	nop                                              ; $7095: $00
	nop                                              ; $7096: $00
	nop                                              ; $7097: $00
	nop                                              ; $7098: $00
	nop                                              ; $7099: $00
	nop                                              ; $709a: $00
	nop                                              ; $709b: $00
	nop                                              ; $709c: $00
	nop                                              ; $709d: $00
	nop                                              ; $709e: $00
	nop                                              ; $709f: $00
	nop                                              ; $70a0: $00
	nop                                              ; $70a1: $00
	nop                                              ; $70a2: $00
	nop                                              ; $70a3: $00
	nop                                              ; $70a4: $00
	nop                                              ; $70a5: $00
	nop                                              ; $70a6: $00
	nop                                              ; $70a7: $00
	nop                                              ; $70a8: $00
	nop                                              ; $70a9: $00
	nop                                              ; $70aa: $00
	nop                                              ; $70ab: $00
	nop                                              ; $70ac: $00
	nop                                              ; $70ad: $00
	nop                                              ; $70ae: $00
	nop                                              ; $70af: $00
	nop                                              ; $70b0: $00
	nop                                              ; $70b1: $00
	nop                                              ; $70b2: $00
	nop                                              ; $70b3: $00
	nop                                              ; $70b4: $00
	nop                                              ; $70b5: $00
	nop                                              ; $70b6: $00
	nop                                              ; $70b7: $00
	nop                                              ; $70b8: $00
	nop                                              ; $70b9: $00
	nop                                              ; $70ba: $00
	nop                                              ; $70bb: $00
	nop                                              ; $70bc: $00
	nop                                              ; $70bd: $00
	nop                                              ; $70be: $00
	nop                                              ; $70bf: $00
	nop                                              ; $70c0: $00
	nop                                              ; $70c1: $00
	nop                                              ; $70c2: $00
	nop                                              ; $70c3: $00
	nop                                              ; $70c4: $00
	nop                                              ; $70c5: $00
	nop                                              ; $70c6: $00
	nop                                              ; $70c7: $00
	nop                                              ; $70c8: $00
	nop                                              ; $70c9: $00
	nop                                              ; $70ca: $00
	nop                                              ; $70cb: $00
	nop                                              ; $70cc: $00
	nop                                              ; $70cd: $00
	nop                                              ; $70ce: $00
	nop                                              ; $70cf: $00
	nop                                              ; $70d0: $00
	nop                                              ; $70d1: $00
	nop                                              ; $70d2: $00
	nop                                              ; $70d3: $00
	nop                                              ; $70d4: $00
	nop                                              ; $70d5: $00
	nop                                              ; $70d6: $00
	nop                                              ; $70d7: $00
	nop                                              ; $70d8: $00
	nop                                              ; $70d9: $00
	nop                                              ; $70da: $00
	nop                                              ; $70db: $00
	nop                                              ; $70dc: $00
	nop                                              ; $70dd: $00
	nop                                              ; $70de: $00
	nop                                              ; $70df: $00
	nop                                              ; $70e0: $00
	nop                                              ; $70e1: $00
	nop                                              ; $70e2: $00
	nop                                              ; $70e3: $00
	nop                                              ; $70e4: $00
	nop                                              ; $70e5: $00
	nop                                              ; $70e6: $00
	nop                                              ; $70e7: $00
	nop                                              ; $70e8: $00
	nop                                              ; $70e9: $00
	nop                                              ; $70ea: $00
	nop                                              ; $70eb: $00
	nop                                              ; $70ec: $00
	nop                                              ; $70ed: $00
	nop                                              ; $70ee: $00
	nop                                              ; $70ef: $00
	nop                                              ; $70f0: $00
	nop                                              ; $70f1: $00
	nop                                              ; $70f2: $00
	nop                                              ; $70f3: $00
	nop                                              ; $70f4: $00
	nop                                              ; $70f5: $00
	nop                                              ; $70f6: $00
	nop                                              ; $70f7: $00
	nop                                              ; $70f8: $00
	nop                                              ; $70f9: $00
	nop                                              ; $70fa: $00
	nop                                              ; $70fb: $00
	nop                                              ; $70fc: $00
	nop                                              ; $70fd: $00
	nop                                              ; $70fe: $00
	nop                                              ; $70ff: $00
	nop                                              ; $7100: $00
	nop                                              ; $7101: $00
	nop                                              ; $7102: $00
	nop                                              ; $7103: $00
	nop                                              ; $7104: $00
	nop                                              ; $7105: $00
	nop                                              ; $7106: $00
	nop                                              ; $7107: $00
	nop                                              ; $7108: $00
	nop                                              ; $7109: $00
	nop                                              ; $710a: $00
	nop                                              ; $710b: $00
	nop                                              ; $710c: $00
	nop                                              ; $710d: $00
	nop                                              ; $710e: $00
	nop                                              ; $710f: $00
	nop                                              ; $7110: $00
	nop                                              ; $7111: $00
	nop                                              ; $7112: $00
	nop                                              ; $7113: $00
	nop                                              ; $7114: $00
	nop                                              ; $7115: $00
	nop                                              ; $7116: $00
	nop                                              ; $7117: $00
	nop                                              ; $7118: $00
	nop                                              ; $7119: $00
	nop                                              ; $711a: $00
	nop                                              ; $711b: $00
	nop                                              ; $711c: $00
	nop                                              ; $711d: $00
	nop                                              ; $711e: $00
	nop                                              ; $711f: $00
	nop                                              ; $7120: $00
	nop                                              ; $7121: $00
	nop                                              ; $7122: $00
	nop                                              ; $7123: $00
	nop                                              ; $7124: $00
	nop                                              ; $7125: $00
	nop                                              ; $7126: $00
	nop                                              ; $7127: $00
	nop                                              ; $7128: $00
	nop                                              ; $7129: $00
	nop                                              ; $712a: $00
	nop                                              ; $712b: $00
	nop                                              ; $712c: $00
	nop                                              ; $712d: $00
	nop                                              ; $712e: $00
	nop                                              ; $712f: $00
	nop                                              ; $7130: $00
	nop                                              ; $7131: $00
	nop                                              ; $7132: $00
	nop                                              ; $7133: $00
	nop                                              ; $7134: $00
	nop                                              ; $7135: $00
	nop                                              ; $7136: $00
	nop                                              ; $7137: $00
	nop                                              ; $7138: $00
	nop                                              ; $7139: $00
	nop                                              ; $713a: $00
	nop                                              ; $713b: $00
	nop                                              ; $713c: $00
	nop                                              ; $713d: $00
	nop                                              ; $713e: $00
	nop                                              ; $713f: $00
	nop                                              ; $7140: $00
	nop                                              ; $7141: $00
	nop                                              ; $7142: $00
	nop                                              ; $7143: $00
	nop                                              ; $7144: $00
	nop                                              ; $7145: $00
	nop                                              ; $7146: $00
	nop                                              ; $7147: $00
	nop                                              ; $7148: $00
	nop                                              ; $7149: $00
	nop                                              ; $714a: $00
	nop                                              ; $714b: $00
	nop                                              ; $714c: $00
	nop                                              ; $714d: $00
	nop                                              ; $714e: $00
	nop                                              ; $714f: $00
	nop                                              ; $7150: $00
	nop                                              ; $7151: $00
	nop                                              ; $7152: $00
	nop                                              ; $7153: $00
	nop                                              ; $7154: $00
	nop                                              ; $7155: $00
	nop                                              ; $7156: $00
	nop                                              ; $7157: $00
	nop                                              ; $7158: $00
	nop                                              ; $7159: $00
	nop                                              ; $715a: $00
	nop                                              ; $715b: $00
	nop                                              ; $715c: $00
	nop                                              ; $715d: $00
	nop                                              ; $715e: $00
	nop                                              ; $715f: $00
	nop                                              ; $7160: $00
	nop                                              ; $7161: $00
	nop                                              ; $7162: $00
	nop                                              ; $7163: $00
	nop                                              ; $7164: $00
	nop                                              ; $7165: $00
	nop                                              ; $7166: $00
	nop                                              ; $7167: $00
	nop                                              ; $7168: $00
	nop                                              ; $7169: $00
	nop                                              ; $716a: $00
	nop                                              ; $716b: $00
	nop                                              ; $716c: $00
	nop                                              ; $716d: $00
	nop                                              ; $716e: $00
	nop                                              ; $716f: $00
	nop                                              ; $7170: $00
	nop                                              ; $7171: $00
	nop                                              ; $7172: $00
	nop                                              ; $7173: $00
	nop                                              ; $7174: $00
	nop                                              ; $7175: $00
	nop                                              ; $7176: $00
	nop                                              ; $7177: $00
	nop                                              ; $7178: $00
	nop                                              ; $7179: $00
	nop                                              ; $717a: $00
	nop                                              ; $717b: $00
	nop                                              ; $717c: $00
	nop                                              ; $717d: $00
	nop                                              ; $717e: $00
	nop                                              ; $717f: $00
	nop                                              ; $7180: $00
	nop                                              ; $7181: $00
	nop                                              ; $7182: $00
	nop                                              ; $7183: $00
	nop                                              ; $7184: $00
	nop                                              ; $7185: $00
	nop                                              ; $7186: $00
	nop                                              ; $7187: $00
	nop                                              ; $7188: $00
	nop                                              ; $7189: $00
	nop                                              ; $718a: $00
	nop                                              ; $718b: $00
	nop                                              ; $718c: $00
	nop                                              ; $718d: $00
	nop                                              ; $718e: $00
	nop                                              ; $718f: $00
	nop                                              ; $7190: $00
	nop                                              ; $7191: $00
	nop                                              ; $7192: $00
	nop                                              ; $7193: $00
	nop                                              ; $7194: $00
	nop                                              ; $7195: $00
	nop                                              ; $7196: $00
	nop                                              ; $7197: $00
	nop                                              ; $7198: $00
	nop                                              ; $7199: $00
	nop                                              ; $719a: $00
	nop                                              ; $719b: $00
	nop                                              ; $719c: $00
	nop                                              ; $719d: $00
	nop                                              ; $719e: $00
	nop                                              ; $719f: $00
	nop                                              ; $71a0: $00
	nop                                              ; $71a1: $00
	nop                                              ; $71a2: $00
	nop                                              ; $71a3: $00
	nop                                              ; $71a4: $00
	nop                                              ; $71a5: $00
	nop                                              ; $71a6: $00
	nop                                              ; $71a7: $00
	nop                                              ; $71a8: $00
	nop                                              ; $71a9: $00
	nop                                              ; $71aa: $00
	nop                                              ; $71ab: $00
	nop                                              ; $71ac: $00
	nop                                              ; $71ad: $00
	nop                                              ; $71ae: $00
	nop                                              ; $71af: $00
	nop                                              ; $71b0: $00
	nop                                              ; $71b1: $00
	nop                                              ; $71b2: $00
	nop                                              ; $71b3: $00
	nop                                              ; $71b4: $00
	nop                                              ; $71b5: $00
	nop                                              ; $71b6: $00
	nop                                              ; $71b7: $00
	nop                                              ; $71b8: $00
	nop                                              ; $71b9: $00
	nop                                              ; $71ba: $00
	nop                                              ; $71bb: $00
	nop                                              ; $71bc: $00
	nop                                              ; $71bd: $00
	nop                                              ; $71be: $00
	nop                                              ; $71bf: $00
	nop                                              ; $71c0: $00
	nop                                              ; $71c1: $00
	nop                                              ; $71c2: $00
	nop                                              ; $71c3: $00
	nop                                              ; $71c4: $00
	nop                                              ; $71c5: $00
	nop                                              ; $71c6: $00
	nop                                              ; $71c7: $00
	nop                                              ; $71c8: $00
	nop                                              ; $71c9: $00
	nop                                              ; $71ca: $00
	nop                                              ; $71cb: $00
	nop                                              ; $71cc: $00
	nop                                              ; $71cd: $00
	nop                                              ; $71ce: $00
	nop                                              ; $71cf: $00
	nop                                              ; $71d0: $00
	nop                                              ; $71d1: $00
	nop                                              ; $71d2: $00
	nop                                              ; $71d3: $00
	nop                                              ; $71d4: $00
	nop                                              ; $71d5: $00
	nop                                              ; $71d6: $00
	nop                                              ; $71d7: $00
	nop                                              ; $71d8: $00
	nop                                              ; $71d9: $00
	nop                                              ; $71da: $00
	nop                                              ; $71db: $00
	nop                                              ; $71dc: $00
	nop                                              ; $71dd: $00
	nop                                              ; $71de: $00
	nop                                              ; $71df: $00
	nop                                              ; $71e0: $00
	nop                                              ; $71e1: $00
	nop                                              ; $71e2: $00
	nop                                              ; $71e3: $00
	nop                                              ; $71e4: $00
	nop                                              ; $71e5: $00
	nop                                              ; $71e6: $00
	nop                                              ; $71e7: $00
	nop                                              ; $71e8: $00
	nop                                              ; $71e9: $00
	nop                                              ; $71ea: $00
	nop                                              ; $71eb: $00
	nop                                              ; $71ec: $00
	nop                                              ; $71ed: $00
	nop                                              ; $71ee: $00
	nop                                              ; $71ef: $00
	nop                                              ; $71f0: $00
	nop                                              ; $71f1: $00
	nop                                              ; $71f2: $00
	nop                                              ; $71f3: $00
	nop                                              ; $71f4: $00
	nop                                              ; $71f5: $00
	nop                                              ; $71f6: $00
	nop                                              ; $71f7: $00
	nop                                              ; $71f8: $00
	nop                                              ; $71f9: $00
	nop                                              ; $71fa: $00
	nop                                              ; $71fb: $00
	nop                                              ; $71fc: $00
	nop                                              ; $71fd: $00
	nop                                              ; $71fe: $00
	nop                                              ; $71ff: $00
	nop                                              ; $7200: $00
	nop                                              ; $7201: $00
	nop                                              ; $7202: $00
	nop                                              ; $7203: $00
	nop                                              ; $7204: $00
	nop                                              ; $7205: $00
	nop                                              ; $7206: $00
	nop                                              ; $7207: $00
	nop                                              ; $7208: $00
	nop                                              ; $7209: $00
	nop                                              ; $720a: $00
	nop                                              ; $720b: $00
	nop                                              ; $720c: $00
	nop                                              ; $720d: $00
	nop                                              ; $720e: $00
	nop                                              ; $720f: $00
	nop                                              ; $7210: $00
	nop                                              ; $7211: $00
	nop                                              ; $7212: $00
	nop                                              ; $7213: $00
	nop                                              ; $7214: $00
	nop                                              ; $7215: $00
	nop                                              ; $7216: $00
	nop                                              ; $7217: $00
	nop                                              ; $7218: $00
	nop                                              ; $7219: $00
	nop                                              ; $721a: $00
	nop                                              ; $721b: $00
	nop                                              ; $721c: $00
	nop                                              ; $721d: $00
	nop                                              ; $721e: $00
	nop                                              ; $721f: $00
	nop                                              ; $7220: $00
	nop                                              ; $7221: $00
	nop                                              ; $7222: $00
	nop                                              ; $7223: $00
	nop                                              ; $7224: $00
	nop                                              ; $7225: $00
	nop                                              ; $7226: $00
	nop                                              ; $7227: $00
	nop                                              ; $7228: $00
	nop                                              ; $7229: $00
	nop                                              ; $722a: $00
	nop                                              ; $722b: $00
	nop                                              ; $722c: $00
	nop                                              ; $722d: $00
	nop                                              ; $722e: $00
	nop                                              ; $722f: $00
	nop                                              ; $7230: $00
	nop                                              ; $7231: $00
	nop                                              ; $7232: $00
	nop                                              ; $7233: $00
	nop                                              ; $7234: $00
	nop                                              ; $7235: $00
	nop                                              ; $7236: $00
	nop                                              ; $7237: $00
	nop                                              ; $7238: $00
	nop                                              ; $7239: $00
	nop                                              ; $723a: $00
	nop                                              ; $723b: $00
	nop                                              ; $723c: $00
	nop                                              ; $723d: $00
	nop                                              ; $723e: $00
	nop                                              ; $723f: $00
	nop                                              ; $7240: $00
	nop                                              ; $7241: $00
	nop                                              ; $7242: $00
	nop                                              ; $7243: $00
	nop                                              ; $7244: $00
	nop                                              ; $7245: $00
	nop                                              ; $7246: $00
	nop                                              ; $7247: $00
	nop                                              ; $7248: $00
	nop                                              ; $7249: $00
	nop                                              ; $724a: $00
	nop                                              ; $724b: $00
	nop                                              ; $724c: $00
	nop                                              ; $724d: $00
	nop                                              ; $724e: $00
	nop                                              ; $724f: $00
	nop                                              ; $7250: $00
	nop                                              ; $7251: $00
	nop                                              ; $7252: $00
	nop                                              ; $7253: $00
	nop                                              ; $7254: $00
	nop                                              ; $7255: $00
	nop                                              ; $7256: $00
	nop                                              ; $7257: $00
	nop                                              ; $7258: $00
	nop                                              ; $7259: $00
	nop                                              ; $725a: $00
	nop                                              ; $725b: $00
	nop                                              ; $725c: $00
	nop                                              ; $725d: $00
	nop                                              ; $725e: $00
	nop                                              ; $725f: $00
	nop                                              ; $7260: $00
	nop                                              ; $7261: $00
	nop                                              ; $7262: $00
	nop                                              ; $7263: $00
	nop                                              ; $7264: $00
	nop                                              ; $7265: $00
	nop                                              ; $7266: $00
	nop                                              ; $7267: $00
	nop                                              ; $7268: $00
	nop                                              ; $7269: $00
	nop                                              ; $726a: $00
	nop                                              ; $726b: $00
	nop                                              ; $726c: $00
	nop                                              ; $726d: $00
	nop                                              ; $726e: $00
	nop                                              ; $726f: $00
	nop                                              ; $7270: $00
	nop                                              ; $7271: $00
	nop                                              ; $7272: $00
	nop                                              ; $7273: $00
	nop                                              ; $7274: $00
	nop                                              ; $7275: $00
	nop                                              ; $7276: $00
	nop                                              ; $7277: $00
	nop                                              ; $7278: $00
	nop                                              ; $7279: $00
	nop                                              ; $727a: $00
	nop                                              ; $727b: $00
	nop                                              ; $727c: $00
	nop                                              ; $727d: $00
	nop                                              ; $727e: $00
	nop                                              ; $727f: $00
	nop                                              ; $7280: $00
	nop                                              ; $7281: $00
	nop                                              ; $7282: $00
	nop                                              ; $7283: $00
	nop                                              ; $7284: $00
	nop                                              ; $7285: $00
	nop                                              ; $7286: $00
	nop                                              ; $7287: $00
	nop                                              ; $7288: $00
	nop                                              ; $7289: $00
	nop                                              ; $728a: $00
	nop                                              ; $728b: $00
	nop                                              ; $728c: $00
	nop                                              ; $728d: $00
	nop                                              ; $728e: $00
	nop                                              ; $728f: $00
	nop                                              ; $7290: $00
	nop                                              ; $7291: $00
	nop                                              ; $7292: $00
	nop                                              ; $7293: $00
	nop                                              ; $7294: $00
	nop                                              ; $7295: $00
	nop                                              ; $7296: $00
	nop                                              ; $7297: $00
	nop                                              ; $7298: $00
	nop                                              ; $7299: $00
	nop                                              ; $729a: $00
	nop                                              ; $729b: $00
	nop                                              ; $729c: $00
	nop                                              ; $729d: $00
	nop                                              ; $729e: $00
	nop                                              ; $729f: $00
	nop                                              ; $72a0: $00
	nop                                              ; $72a1: $00
	nop                                              ; $72a2: $00
	nop                                              ; $72a3: $00
	nop                                              ; $72a4: $00
	nop                                              ; $72a5: $00
	nop                                              ; $72a6: $00
	nop                                              ; $72a7: $00
	nop                                              ; $72a8: $00
	nop                                              ; $72a9: $00
	nop                                              ; $72aa: $00
	nop                                              ; $72ab: $00
	nop                                              ; $72ac: $00
	nop                                              ; $72ad: $00
	nop                                              ; $72ae: $00
	nop                                              ; $72af: $00
	nop                                              ; $72b0: $00
	nop                                              ; $72b1: $00
	nop                                              ; $72b2: $00
	nop                                              ; $72b3: $00
	nop                                              ; $72b4: $00
	nop                                              ; $72b5: $00
	nop                                              ; $72b6: $00
	nop                                              ; $72b7: $00
	nop                                              ; $72b8: $00
	nop                                              ; $72b9: $00
	nop                                              ; $72ba: $00
	nop                                              ; $72bb: $00
	nop                                              ; $72bc: $00
	nop                                              ; $72bd: $00
	nop                                              ; $72be: $00
	nop                                              ; $72bf: $00
	nop                                              ; $72c0: $00
	nop                                              ; $72c1: $00
	nop                                              ; $72c2: $00
	nop                                              ; $72c3: $00
	nop                                              ; $72c4: $00
	nop                                              ; $72c5: $00
	nop                                              ; $72c6: $00
	nop                                              ; $72c7: $00
	nop                                              ; $72c8: $00
	nop                                              ; $72c9: $00
	nop                                              ; $72ca: $00
	nop                                              ; $72cb: $00
	nop                                              ; $72cc: $00
	nop                                              ; $72cd: $00
	nop                                              ; $72ce: $00
	nop                                              ; $72cf: $00
	nop                                              ; $72d0: $00
	nop                                              ; $72d1: $00
	nop                                              ; $72d2: $00
	nop                                              ; $72d3: $00
	nop                                              ; $72d4: $00
	nop                                              ; $72d5: $00
	nop                                              ; $72d6: $00
	nop                                              ; $72d7: $00
	nop                                              ; $72d8: $00
	nop                                              ; $72d9: $00
	nop                                              ; $72da: $00
	nop                                              ; $72db: $00
	nop                                              ; $72dc: $00
	nop                                              ; $72dd: $00
	nop                                              ; $72de: $00
	nop                                              ; $72df: $00
	nop                                              ; $72e0: $00
	nop                                              ; $72e1: $00
	nop                                              ; $72e2: $00
	nop                                              ; $72e3: $00
	nop                                              ; $72e4: $00
	nop                                              ; $72e5: $00

Jump_005_72e6:
	ld   a, [wWramBank]                                  ; $72e6: $fa $93 $c2
	push af                                          ; $72e9: $f5
	ld   a, $02                                      ; $72ea: $3e $02
	ld   [wWramBank], a                                  ; $72ec: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $72ef: $e0 $70
	call ClearOam                                       ; $72f1: $cd $d7 $0d
	ld   bc, $7307                                   ; $72f4: $01 $07 $73
	push bc                                          ; $72f7: $c5
	ld   a, [$cc67]                                  ; $72f8: $fa $67 $cc
	ld   b, $00                                      ; $72fb: $06 $00
	ld   c, a                                        ; $72fd: $4f
	ld   hl, $7311                                   ; $72fe: $21 $11 $73
	add  hl, bc                                      ; $7301: $09
	add  hl, bc                                      ; $7302: $09
	ld   a, [hl+]                                    ; $7303: $2a
	ld   h, [hl]                                     ; $7304: $66
	ld   l, a                                        ; $7305: $6f
	jp   hl                                          ; $7306: $e9


	call AnimateAllAnimatedSpriteSpecs                                       ; $7307: $cd $d3 $2e
	pop  af                                          ; $730a: $f1
	ld   [wWramBank], a                                  ; $730b: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $730e: $e0 $70
	ret                                              ; $7310: $c9


	daa                                              ; $7311: $27
	ld   [hl], e                                     ; $7312: $73
	sub  h                                           ; $7313: $94
	ld   [hl], e                                     ; $7314: $73
	ld   b, $76                                      ; $7315: $06 $76
	ld   d, $76                                      ; $7317: $16 $76
	inc  hl                                          ; $7319: $23
	halt                                             ; $731a: $76
	cp   [hl]                                        ; $731b: $be
	halt                                             ; $731c: $76
	ret  nc                                          ; $731d: $d0

	halt                                             ; $731e: $76
	ldh  [c], a                                      ; $731f: $e2
	halt                                             ; $7320: $76
	ld   h, l                                        ; $7321: $65
	ld   [hl], a                                     ; $7322: $77
	add  sp, $77                                     ; $7323: $e8 $77
	ei                                               ; $7325: $fb
	ld   [hl], a                                     ; $7326: $77
	ld   a, [$cc68]                                  ; $7327: $fa $68 $cc
	or   a                                           ; $732a: $b7
	jr   nz, jr_005_735d                             ; $732b: $20 $30

	ld   a, $a3                                      ; $732d: $3e $a3
	ld   de, $da00                                   ; $732f: $11 $00 $da
	ld   hl, $64cc                                   ; $7332: $21 $cc $64
	ld   bc, $0080                                   ; $7335: $01 $80 $00
	call FarMemCopy                                       ; $7338: $cd $b2 $09
	ld   a, $7f                                      ; $733b: $3e $7f
	ld   [$da10], a                                  ; $733d: $ea $10 $da
	ld   a, $4e                                      ; $7340: $3e $4e
	ld   [$da11], a                                  ; $7342: $ea $11 $da
	xor  a                                           ; $7345: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $7346: $ea $62 $c3
	ld   a, $40                                      ; $7349: $3e $40
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $734b: $ea $63 $c3
	ld   a, $03                                      ; $734e: $3e $03
	ld   b, $00                                      ; $7350: $06 $00
	ld   hl, wBGPalettes                                   ; $7352: $21 $de $c2
	ld   c, $00                                      ; $7355: $0e $00
	ld   de, $da00                                   ; $7357: $11 $00 $da
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $735a: $cd $48 $07

jr_005_735d:
	ld   hl, $cc68                                   ; $735d: $21 $68 $cc
	ld   a, [hl]                                     ; $7360: $7e
	srl  a                                           ; $7361: $cb $3f
	srl  a                                           ; $7363: $cb $3f
	call SafeSetAudVolForMultipleChannels                                       ; $7365: $cd $e0 $1c
	ld   a, [hl]                                     ; $7368: $7e
	inc  [hl]                                        ; $7369: $34
	cp   $1f                                         ; $736a: $fe $1f
	jr   nc, jr_005_7377                             ; $736c: $30 $09

	and  $03                                         ; $736e: $e6 $03
	ret  nz                                          ; $7370: $c0

	ld   bc, $0040                                   ; $7371: $01 $40 $00
	jp   FadePalettesAndSetRangeToUpdate                                       ; $7374: $c3 $32 $08


jr_005_7377:
	ld   a, $00                                      ; $7377: $3e $00
	ld   hl, $da00                                   ; $7379: $21 $00 $da
	ld   de, wBGPalettes                                   ; $737c: $11 $de $c2
	ld   bc, $0080                                   ; $737f: $01 $80 $00
	call FarMemCopy                                       ; $7382: $cd $b2 $09
	ld   bc, $003f                                   ; $7385: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $7388: $cd $aa $04
	ld   hl, $cc67                                   ; $738b: $21 $67 $cc
	inc  [hl]                                        ; $738e: $34
	xor  a                                           ; $738f: $af
	ld   [$cc68], a                                  ; $7390: $ea $68 $cc
	ret                                              ; $7393: $c9


	call Call_005_7582                               ; $7394: $cd $82 $75
	ld   a, $08                                      ; $7397: $3e $08
	ld   hl, $cc70                                   ; $7399: $21 $70 $cc
	push af                                          ; $739c: $f5
	ld   a, $8f                                      ; $739d: $3e $8f
	ld   [wFarCallAddr], a                                  ; $739f: $ea $98 $c2
	ld   a, $59                                      ; $73a2: $3e $59
	ld   [wFarCallAddr+1], a                                  ; $73a4: $ea $99 $c2
	ld   a, $0a                                      ; $73a7: $3e $0a
	ld   [wFarCallBank], a                                  ; $73a9: $ea $9a $c2
	pop  af                                          ; $73ac: $f1
	call FarCall                                       ; $73ad: $cd $62 $09
	ld   a, [wInGameButtonsHeld]                                  ; $73b0: $fa $0f $c2
	bit  2, a                                        ; $73b3: $cb $57
	jr   z, jr_005_73d2                              ; $73b5: $28 $1b

	ld   a, $20                                      ; $73b7: $3e $20
	call PlaySoundEffect                                       ; $73b9: $cd $df $1a
	ld   a, [$cc6b]                                  ; $73bc: $fa $6b $cc
	sub  $01                                         ; $73bf: $d6 $01
	ld   [$cc6b], a                                  ; $73c1: $ea $6b $cc
	jp   nc, Jump_005_7520                           ; $73c4: $d2 $20 $75

	ld   a, $08                                      ; $73c7: $3e $08
	ld   [$cc6b], a                                  ; $73c9: $ea $6b $cc
	call Call_005_756d                               ; $73cc: $cd $6d $75
	jp   Jump_005_7520                               ; $73cf: $c3 $20 $75


jr_005_73d2:
	bit  3, a                                        ; $73d2: $cb $5f
	jr   z, jr_005_73f1                              ; $73d4: $28 $1b

	ld   a, $20                                      ; $73d6: $3e $20
	call PlaySoundEffect                                       ; $73d8: $cd $df $1a
	ld   a, [$cc6b]                                  ; $73db: $fa $6b $cc
	inc  a                                           ; $73de: $3c
	ld   [$cc6b], a                                  ; $73df: $ea $6b $cc
	cp   $09                                         ; $73e2: $fe $09
	jp   c, Jump_005_7520                            ; $73e4: $da $20 $75

	xor  a                                           ; $73e7: $af
	ld   [$cc6b], a                                  ; $73e8: $ea $6b $cc
	call Call_005_756d                               ; $73eb: $cd $6d $75
	jp   Jump_005_7520                               ; $73ee: $c3 $20 $75


jr_005_73f1:
	bit  0, a                                        ; $73f1: $cb $47
	jp   z, Jump_005_7477                            ; $73f3: $ca $77 $74

	ld   a, $20                                      ; $73f6: $3e $20
	call PlaySoundEffect                                       ; $73f8: $cd $df $1a
	ld   a, [$cc6b]                                  ; $73fb: $fa $6b $cc
	or   a                                           ; $73fe: $b7
	jr   z, jr_005_7441                              ; $73ff: $28 $40

	dec  a                                           ; $7401: $3d
	ld   h, a                                        ; $7402: $67
	ld   a, [$cc6d]                                  ; $7403: $fa $6d $cc
	ld   l, a                                        ; $7406: $6f
	push hl                                          ; $7407: $e5
	push af                                          ; $7408: $f5
	ld   a, $de                                      ; $7409: $3e $de
	ld   [wFarCallAddr], a                                  ; $740b: $ea $98 $c2
	ld   a, $44                                      ; $740e: $3e $44
	ld   [wFarCallAddr+1], a                                  ; $7410: $ea $99 $c2
	ld   a, $09                                      ; $7413: $3e $09
	ld   [wFarCallBank], a                                  ; $7415: $ea $9a $c2
	pop  af                                          ; $7418: $f1
	call FarCall                                       ; $7419: $cd $62 $09
	pop  hl                                          ; $741c: $e1
	cpl                                              ; $741d: $2f
	push af                                          ; $741e: $f5
	ld   a, $37                                      ; $741f: $3e $37
	ld   [wFarCallAddr], a                                  ; $7421: $ea $98 $c2
	ld   a, $45                                      ; $7424: $3e $45
	ld   [wFarCallAddr+1], a                                  ; $7426: $ea $99 $c2
	ld   a, $09                                      ; $7429: $3e $09
	ld   [wFarCallBank], a                                  ; $742b: $ea $9a $c2
	pop  af                                          ; $742e: $f1
	call FarCall                                       ; $742f: $cd $62 $09
	call Call_005_756d                               ; $7432: $cd $6d $75

jr_005_7435:
	ld   a, $02                                      ; $7435: $3e $02
	ld   [$cc67], a                                  ; $7437: $ea $67 $cc
	xor  a                                           ; $743a: $af
	ld   [$cc68], a                                  ; $743b: $ea $68 $cc
	jp   Jump_005_7569                               ; $743e: $c3 $69 $75


jr_005_7441:
	ld   a, [$cc6d]                                  ; $7441: $fa $6d $cc
	ld   l, a                                        ; $7444: $6f
	ld   h, $00                                      ; $7445: $26 $00
	push hl                                          ; $7447: $e5
	push af                                          ; $7448: $f5
	ld   a, $d7                                      ; $7449: $3e $d7
	ld   [wFarCallAddr], a                                  ; $744b: $ea $98 $c2
	ld   a, $44                                      ; $744e: $3e $44
	ld   [wFarCallAddr+1], a                                  ; $7450: $ea $99 $c2
	ld   a, $09                                      ; $7453: $3e $09
	ld   [wFarCallBank], a                                  ; $7455: $ea $9a $c2
	pop  af                                          ; $7458: $f1
	call FarCall                                       ; $7459: $cd $62 $09
	pop  hl                                          ; $745c: $e1
	inc  a                                           ; $745d: $3c
	push af                                          ; $745e: $f5
	ld   a, $30                                      ; $745f: $3e $30
	ld   [wFarCallAddr], a                                  ; $7461: $ea $98 $c2
	ld   a, $45                                      ; $7464: $3e $45
	ld   [wFarCallAddr+1], a                                  ; $7466: $ea $99 $c2
	ld   a, $09                                      ; $7469: $3e $09
	ld   [wFarCallBank], a                                  ; $746b: $ea $9a $c2
	pop  af                                          ; $746e: $f1
	call FarCall                                       ; $746f: $cd $62 $09
	call Call_005_756d                               ; $7472: $cd $6d $75
	jr   jr_005_7435                                 ; $7475: $18 $be

Jump_005_7477:
	bit  1, a                                        ; $7477: $cb $4f
	jr   z, jr_005_748a                              ; $7479: $28 $0f

	ld   a, $22                                      ; $747b: $3e $22
	call PlaySoundEffect                                       ; $747d: $cd $df $1a
	ld   a, $0a                                      ; $7480: $3e $0a
	ld   [$cc67], a                                  ; $7482: $ea $67 $cc
	xor  a                                           ; $7485: $af
	ld   [$cc68], a                                  ; $7486: $ea $68 $cc
	ret                                              ; $7489: $c9


jr_005_748a:
	ld   a, [wInGameButtonsHeld]                                  ; $748a: $fa $0f $c2
	bit  6, a                                        ; $748d: $cb $77
	jr   z, jr_005_74bd                              ; $748f: $28 $2c

	ld   a, [$cc6d]                                  ; $7491: $fa $6d $cc
	sub  $01                                         ; $7494: $d6 $01
	ld   [$cc6d], a                                  ; $7496: $ea $6d $cc
	inc  a                                           ; $7499: $3c
	ld   hl, $cc6c                                   ; $749a: $21 $6c $cc
	cp   [hl]                                        ; $749d: $be
	jr   z, jr_005_74af                              ; $749e: $28 $0f

	call Call_005_756d                               ; $74a0: $cd $6d $75
	ld   a, $05                                      ; $74a3: $3e $05
	ld   [$cc67], a                                  ; $74a5: $ea $67 $cc
	xor  a                                           ; $74a8: $af
	ld   [$cc68], a                                  ; $74a9: $ea $68 $cc
	jp   Jump_005_7569                               ; $74ac: $c3 $69 $75


jr_005_74af:
	dec  [hl]                                        ; $74af: $35
	call Call_005_756d                               ; $74b0: $cd $6d $75
	ld   a, $07                                      ; $74b3: $3e $07
	ld   [$cc67], a                                  ; $74b5: $ea $67 $cc
	xor  a                                           ; $74b8: $af
	ld   [$cc68], a                                  ; $74b9: $ea $68 $cc
	ret                                              ; $74bc: $c9


jr_005_74bd:
	bit  7, a                                        ; $74bd: $cb $7f
	jr   z, jr_005_74ed                              ; $74bf: $28 $2c

	ld   a, [$cc6d]                                  ; $74c1: $fa $6d $cc
	inc  a                                           ; $74c4: $3c
	ld   [$cc6d], a                                  ; $74c5: $ea $6d $cc
	ld   hl, $cc6c                                   ; $74c8: $21 $6c $cc
	sub  [hl]                                        ; $74cb: $96
	cp   $07                                         ; $74cc: $fe $07
	jr   nc, jr_005_74df                             ; $74ce: $30 $0f

	call Call_005_756d                               ; $74d0: $cd $6d $75
	ld   a, $06                                      ; $74d3: $3e $06
	ld   [$cc67], a                                  ; $74d5: $ea $67 $cc
	xor  a                                           ; $74d8: $af
	ld   [$cc68], a                                  ; $74d9: $ea $68 $cc
	jp   Jump_005_7569                               ; $74dc: $c3 $69 $75


jr_005_74df:
	inc  [hl]                                        ; $74df: $34
	call Call_005_756d                               ; $74e0: $cd $6d $75
	ld   a, $08                                      ; $74e3: $3e $08
	ld   [$cc67], a                                  ; $74e5: $ea $67 $cc
	xor  a                                           ; $74e8: $af
	ld   [$cc68], a                                  ; $74e9: $ea $68 $cc
	ret                                              ; $74ec: $c9


jr_005_74ed:
	ld   a, [wInGameButtonsHeld]                                  ; $74ed: $fa $0f $c2
	cp   $20                                         ; $74f0: $fe $20
	jr   nz, jr_005_7535                             ; $74f2: $20 $41

	ld   a, [$cc6d]                                  ; $74f4: $fa $6d $cc
	ld   b, a                                        ; $74f7: $47
	ld   c, a                                        ; $74f8: $4f

jr_005_74f9:
	dec  b                                           ; $74f9: $05
	ld   a, b                                        ; $74fa: $78
	cp   c                                           ; $74fb: $b9
	jr   z, jr_005_7569                              ; $74fc: $28 $6b

	call Call_005_572e                               ; $74fe: $cd $2e $57
	or   a                                           ; $7501: $b7
	jr   z, jr_005_74f9                              ; $7502: $28 $f5

	ld   a, b                                        ; $7504: $78
	ld   [$cc6d], a                                  ; $7505: $ea $6d $cc
	ld   a, $20                                      ; $7508: $3e $20
	call PlaySoundEffect                                       ; $750a: $cd $df $1a
	call Call_005_756d                               ; $750d: $cd $6d $75
	ld   a, [$cc6d]                                  ; $7510: $fa $6d $cc
	ld   hl, $cc6c                                   ; $7513: $21 $6c $cc
	sub  [hl]                                        ; $7516: $96
	cp   $07                                         ; $7517: $fe $07
	jp   c, Jump_005_752a                            ; $7519: $da $2a $75

	ld   a, [$cc6d]                                  ; $751c: $fa $6d $cc
	ld   [hl], a                                     ; $751f: $77

Jump_005_7520:
jr_005_7520:
	ld   a, $04                                      ; $7520: $3e $04
	ld   [$cc67], a                                  ; $7522: $ea $67 $cc
	xor  a                                           ; $7525: $af
	ld   [$cc68], a                                  ; $7526: $ea $68 $cc
	ret                                              ; $7529: $c9


Jump_005_752a:
jr_005_752a:
	ld   a, $03                                      ; $752a: $3e $03
	ld   [$cc67], a                                  ; $752c: $ea $67 $cc
	xor  a                                           ; $752f: $af
	ld   [$cc68], a                                  ; $7530: $ea $68 $cc
	jr   jr_005_7569                                 ; $7533: $18 $34

jr_005_7535:
	cp   $10                                         ; $7535: $fe $10
	jr   nz, jr_005_7566                             ; $7537: $20 $2d

	ld   a, [$cc6d]                                  ; $7539: $fa $6d $cc
	ld   b, a                                        ; $753c: $47
	ld   c, a                                        ; $753d: $4f

jr_005_753e:
	inc  b                                           ; $753e: $04
	ld   a, b                                        ; $753f: $78
	cp   c                                           ; $7540: $b9
	jr   z, jr_005_7569                              ; $7541: $28 $26

	call Call_005_572e                               ; $7543: $cd $2e $57
	or   a                                           ; $7546: $b7
	jr   z, jr_005_753e                              ; $7547: $28 $f5

	ld   a, b                                        ; $7549: $78
	ld   [$cc6d], a                                  ; $754a: $ea $6d $cc
	ld   a, $20                                      ; $754d: $3e $20
	call PlaySoundEffect                                       ; $754f: $cd $df $1a
	call Call_005_756d                               ; $7552: $cd $6d $75
	ld   a, [$cc6d]                                  ; $7555: $fa $6d $cc
	ld   hl, $cc6c                                   ; $7558: $21 $6c $cc
	sub  [hl]                                        ; $755b: $96
	cp   $07                                         ; $755c: $fe $07
	jr   c, jr_005_752a                              ; $755e: $38 $ca

	ld   a, [$cc6d]                                  ; $7560: $fa $6d $cc
	ld   [hl], a                                     ; $7563: $77
	jr   jr_005_7520                                 ; $7564: $18 $ba

jr_005_7566:
	call Call_005_7577                               ; $7566: $cd $77 $75

Jump_005_7569:
jr_005_7569:
	call Call_005_75ad                               ; $7569: $cd $ad $75
	ret                                              ; $756c: $c9


Call_005_756d:
	ld   a, [$cc6f]                                  ; $756d: $fa $6f $cc
	sub  $01                                         ; $7570: $d6 $01
	ret  c                                           ; $7572: $d8

	ld   [$cc6f], a                                  ; $7573: $ea $6f $cc
	ret                                              ; $7576: $c9


Call_005_7577:
	ld   a, [$cc6f]                                  ; $7577: $fa $6f $cc
	inc  a                                           ; $757a: $3c
	cp   $08                                         ; $757b: $fe $08
	ret  nc                                          ; $757d: $d0

	ld   [$cc6f], a                                  ; $757e: $ea $6f $cc
	ret                                              ; $7581: $c9


Call_005_7582:
	ld   hl, $d000                                   ; $7582: $21 $00 $d0
	call Call_005_550d                               ; $7585: $cd $0d $55
	ld   hl, $d020                                   ; $7588: $21 $20 $d0
	call Call_005_550d                               ; $758b: $cd $0d $55
	ld   a, [$cc6d]                                  ; $758e: $fa $6d $cc
	and  $0f                                         ; $7591: $e6 $0f
	swap a                                           ; $7593: $cb $37
	ld   h, $00                                      ; $7595: $26 $00
	ld   l, a                                        ; $7597: $6f
	add  hl, hl                                      ; $7598: $29
	add  hl, hl                                      ; $7599: $29
	ld   bc, $9c00                                   ; $759a: $01 $00 $9c
	add  hl, bc                                      ; $759d: $09
	ld   c, $81                                      ; $759e: $0e $81
	ld   d, h                                        ; $75a0: $54
	ld   e, l                                        ; $75a1: $5d
	ld   a, $02                                      ; $75a2: $3e $02
	ld   hl, $d000                                   ; $75a4: $21 $00 $d0
	ld   b, $04                                      ; $75a7: $06 $04
	call EnqueueHDMATransfer                                       ; $75a9: $cd $7c $02
	ret                                              ; $75ac: $c9


Call_005_75ad:
	ld   hl, $d040                                   ; $75ad: $21 $40 $d0
	call Call_005_550d                               ; $75b0: $cd $0d $55
	ld   hl, $d060                                   ; $75b3: $21 $60 $d0
	call Call_005_550d                               ; $75b6: $cd $0d $55
	ld   a, $02                                      ; $75b9: $3e $02
	ld   hl, $d042                                   ; $75bb: $21 $42 $d0
	ld   [hl+], a                                    ; $75be: $22
	ld   [hl+], a                                    ; $75bf: $22
	ld   [hl+], a                                    ; $75c0: $22
	set  3, a                                        ; $75c1: $cb $df
	ld   [hl+], a                                    ; $75c3: $22
	ld   [hl+], a                                    ; $75c4: $22
	ld   [hl+], a                                    ; $75c5: $22
	ld   [hl+], a                                    ; $75c6: $22
	ld   [hl+], a                                    ; $75c7: $22
	ld   [hl+], a                                    ; $75c8: $22
	ld   [hl+], a                                    ; $75c9: $22
	ld   [hl+], a                                    ; $75ca: $22
	ld   [hl+], a                                    ; $75cb: $22
	ld   [hl+], a                                    ; $75cc: $22
	res  3, a                                        ; $75cd: $cb $9f
	ld   [hl+], a                                    ; $75cf: $22
	ld   [hl+], a                                    ; $75d0: $22
	ld   hl, $d062                                   ; $75d1: $21 $62 $d0
	ld   [hl+], a                                    ; $75d4: $22
	ld   [hl+], a                                    ; $75d5: $22
	ld   [hl+], a                                    ; $75d6: $22
	set  3, a                                        ; $75d7: $cb $df
	ld   [hl+], a                                    ; $75d9: $22
	ld   [hl+], a                                    ; $75da: $22
	ld   [hl+], a                                    ; $75db: $22
	ld   [hl+], a                                    ; $75dc: $22
	ld   [hl+], a                                    ; $75dd: $22
	ld   [hl+], a                                    ; $75de: $22
	ld   [hl+], a                                    ; $75df: $22
	ld   [hl+], a                                    ; $75e0: $22
	ld   [hl+], a                                    ; $75e1: $22
	ld   [hl+], a                                    ; $75e2: $22
	res  3, a                                        ; $75e3: $cb $9f
	ld   [hl+], a                                    ; $75e5: $22
	ld   [hl+], a                                    ; $75e6: $22
	ld   a, [$cc6d]                                  ; $75e7: $fa $6d $cc
	and  $0f                                         ; $75ea: $e6 $0f
	swap a                                           ; $75ec: $cb $37
	ld   h, $00                                      ; $75ee: $26 $00
	ld   l, a                                        ; $75f0: $6f
	add  hl, hl                                      ; $75f1: $29
	add  hl, hl                                      ; $75f2: $29
	ld   bc, $9c00                                   ; $75f3: $01 $00 $9c
	add  hl, bc                                      ; $75f6: $09
	ld   c, $81                                      ; $75f7: $0e $81
	ld   d, h                                        ; $75f9: $54
	ld   e, l                                        ; $75fa: $5d
	ld   a, $02                                      ; $75fb: $3e $02
	ld   hl, $d040                                   ; $75fd: $21 $40 $d0
	ld   b, $04                                      ; $7600: $06 $04
	call EnqueueHDMATransfer                                       ; $7602: $cd $7c $02
	ret                                              ; $7605: $c9


	ld   a, [$cc6d]                                  ; $7606: $fa $6d $cc
	call Call_005_55ed                               ; $7609: $cd $ed $55
	ld   a, $09                                      ; $760c: $3e $09
	ld   [$cc67], a                                  ; $760e: $ea $67 $cc
	xor  a                                           ; $7611: $af
	ld   [$cc68], a                                  ; $7612: $ea $68 $cc
	ret                                              ; $7615: $c9


	call Call_005_5752                               ; $7616: $cd $52 $57
	ld   a, $09                                      ; $7619: $3e $09
	ld   [$cc67], a                                  ; $761b: $ea $67 $cc
	xor  a                                           ; $761e: $af
	ld   [$cc68], a                                  ; $761f: $ea $68 $cc
	ret                                              ; $7622: $c9


	ld   a, [$cc68]                                  ; $7623: $fa $68 $cc
	sla  a                                           ; $7626: $cb $27
	ld   h, $00                                      ; $7628: $26 $00
	ld   l, a                                        ; $762a: $6f
	ld   bc, $7633                                   ; $762b: $01 $33 $76
	add  hl, bc                                      ; $762e: $09
	ld   a, [hl+]                                    ; $762f: $2a
	ld   h, [hl]                                     ; $7630: $66
	ld   l, a                                        ; $7631: $6f
	jp   hl                                          ; $7632: $e9


	ld   c, c                                        ; $7633: $49
	halt                                             ; $7634: $76
	ld   l, h                                        ; $7635: $6c
	halt                                             ; $7636: $76
	adc  h                                           ; $7637: $8c
	halt                                             ; $7638: $76
	adc  h                                           ; $7639: $8c
	halt                                             ; $763a: $76
	adc  h                                           ; $763b: $8c
	halt                                             ; $763c: $76
	adc  h                                           ; $763d: $8c
	halt                                             ; $763e: $76
	adc  h                                           ; $763f: $8c
	halt                                             ; $7640: $76
	adc  h                                           ; $7641: $8c
	halt                                             ; $7642: $76
	adc  h                                           ; $7643: $8c
	halt                                             ; $7644: $76
	sbc  d                                           ; $7645: $9a
	halt                                             ; $7646: $76
	or   c                                           ; $7647: $b1
	halt                                             ; $7648: $76
	ld   a, [$cc6c]                                  ; $7649: $fa $6c $cc
	and  $0f                                         ; $764c: $e6 $0f
	swap a                                           ; $764e: $cb $37
	sub  $08                                         ; $7650: $d6 $08
	ld   [$cc6e], a                                  ; $7652: $ea $6e $cc
	call Call_005_552b                               ; $7655: $cd $2b $55
	ld   c, $80                                      ; $7658: $0e $80
	ld   de, $9c00                                   ; $765a: $11 $00 $9c
	ld   a, $07                                      ; $765d: $3e $07
	ld   hl, $d400                                   ; $765f: $21 $00 $d4
	ld   b, $40                                      ; $7662: $06 $40
	call EnqueueHDMATransfer                                       ; $7664: $cd $7c $02
	ld   hl, $cc68                                   ; $7667: $21 $68 $cc
	inc  [hl]                                        ; $766a: $34
	ret                                              ; $766b: $c9


	ld   hl, $d340                                   ; $766c: $21 $40 $d3
	ld   bc, $0240                                   ; $766f: $01 $40 $02
	ld   de, $0000                                   ; $7672: $11 $00 $00
	call CopyEthenDintoHL_BCtimes                                       ; $7675: $cd $9f $09
	ld   c, $81                                      ; $7678: $0e $81
	ld   de, $8900                                   ; $767a: $11 $00 $89
	ld   a, $02                                      ; $767d: $3e $02
	ld   hl, $d340                                   ; $767f: $21 $40 $d3
	ld   b, $48                                      ; $7682: $06 $48
	call EnqueueHDMATransfer                                       ; $7684: $cd $7c $02
	ld   hl, $cc68                                   ; $7687: $21 $68 $cc
	inc  [hl]                                        ; $768a: $34
	ret                                              ; $768b: $c9


	ld   a, [$cc6c]                                  ; $768c: $fa $6c $cc
	ld   hl, $cc68                                   ; $768f: $21 $68 $cc
	add  [hl]                                        ; $7692: $86
	dec  a                                           ; $7693: $3d
	dec  a                                           ; $7694: $3d
	inc  [hl]                                        ; $7695: $34
	call Call_005_55ed                               ; $7696: $cd $ed $55
	ret                                              ; $7699: $c9


	call Call_005_5569                               ; $769a: $cd $69 $55
	ld   c, $80                                      ; $769d: $0e $80
	ld   de, $9c00                                   ; $769f: $11 $00 $9c
	ld   a, $07                                      ; $76a2: $3e $07
	ld   hl, $d400                                   ; $76a4: $21 $00 $d4
	ld   b, $40                                      ; $76a7: $06 $40
	call EnqueueHDMATransfer                                       ; $76a9: $cd $7c $02
	ld   hl, $cc68                                   ; $76ac: $21 $68 $cc
	inc  [hl]                                        ; $76af: $34
	ret                                              ; $76b0: $c9


	call Call_005_5752                               ; $76b1: $cd $52 $57
	ld   a, $01                                      ; $76b4: $3e $01
	ld   [$cc67], a                                  ; $76b6: $ea $67 $cc
	xor  a                                           ; $76b9: $af
	ld   [$cc68], a                                  ; $76ba: $ea $68 $cc
	ret                                              ; $76bd: $c9


	ld   a, $20                                      ; $76be: $3e $20
	call PlaySoundEffect                                       ; $76c0: $cd $df $1a
	call Call_005_5752                               ; $76c3: $cd $52 $57
	ld   a, $09                                      ; $76c6: $3e $09
	ld   [$cc67], a                                  ; $76c8: $ea $67 $cc
	xor  a                                           ; $76cb: $af
	ld   [$cc68], a                                  ; $76cc: $ea $68 $cc
	ret                                              ; $76cf: $c9


	ld   a, $20                                      ; $76d0: $3e $20
	call PlaySoundEffect                                       ; $76d2: $cd $df $1a
	call Call_005_5752                               ; $76d5: $cd $52 $57
	ld   a, $09                                      ; $76d8: $3e $09
	ld   [$cc67], a                                  ; $76da: $ea $67 $cc
	xor  a                                           ; $76dd: $af
	ld   [$cc68], a                                  ; $76de: $ea $68 $cc
	ret                                              ; $76e1: $c9


	ld   a, [$cc68]                                  ; $76e2: $fa $68 $cc
	sla  a                                           ; $76e5: $cb $27
	ld   h, $00                                      ; $76e7: $26 $00
	ld   l, a                                        ; $76e9: $6f
	ld   bc, $76f2                                   ; $76ea: $01 $f2 $76
	add  hl, bc                                      ; $76ed: $09
	ld   a, [hl+]                                    ; $76ee: $2a
	ld   h, [hl]                                     ; $76ef: $66
	ld   l, a                                        ; $76f0: $6f
	jp   hl                                          ; $76f1: $e9


	ld   a, [$2576]                                  ; $76f2: $fa $76 $25
	ld   [hl], a                                     ; $76f5: $77
	ld   [hl-], a                                    ; $76f6: $32
	ld   [hl], a                                     ; $76f7: $77
	ccf                                              ; $76f8: $3f
	ld   [hl], a                                     ; $76f9: $77
	ld   a, $20                                      ; $76fa: $3e $20
	call PlaySoundEffect                                       ; $76fc: $cd $df $1a
	ld   a, [$cc6d]                                  ; $76ff: $fa $6d $cc
	call Call_005_55ed                               ; $7702: $cd $ed $55
	ld   hl, $cc68                                   ; $7705: $21 $68 $cc
	ld   a, [$cc6f]                                  ; $7708: $fa $6f $cc
	cp   $04                                         ; $770b: $fe $04
	jr   c, jr_005_7719                              ; $770d: $38 $0a

	ld   a, [$cc6e]                                  ; $770f: $fa $6e $cc
	sub  $04                                         ; $7712: $d6 $04
	ld   [$cc6e], a                                  ; $7714: $ea $6e $cc
	inc  [hl]                                        ; $7717: $34
	ret                                              ; $7718: $c9


jr_005_7719:
	ld   a, [$cc6e]                                  ; $7719: $fa $6e $cc
	sub  $08                                         ; $771c: $d6 $08
	ld   [$cc6e], a                                  ; $771e: $ea $6e $cc
	inc  [hl]                                        ; $7721: $34
	inc  [hl]                                        ; $7722: $34
	inc  [hl]                                        ; $7723: $34
	ret                                              ; $7724: $c9


	ld   a, [$cc6e]                                  ; $7725: $fa $6e $cc
	sub  $04                                         ; $7728: $d6 $04
	ld   [$cc6e], a                                  ; $772a: $ea $6e $cc
	ld   hl, $cc68                                   ; $772d: $21 $68 $cc
	inc  [hl]                                        ; $7730: $34
	ret                                              ; $7731: $c9


	ld   a, [$cc6e]                                  ; $7732: $fa $6e $cc
	sub  $04                                         ; $7735: $d6 $04
	ld   [$cc6e], a                                  ; $7737: $ea $6e $cc
	ld   hl, $cc68                                   ; $773a: $21 $68 $cc
	inc  [hl]                                        ; $773d: $34
	ret                                              ; $773e: $c9


	call Call_005_5752                               ; $773f: $cd $52 $57
	ld   a, [$cc6f]                                  ; $7742: $fa $6f $cc
	cp   $04                                         ; $7745: $fe $04
	jr   c, jr_005_7753                              ; $7747: $38 $0a

	ld   a, [$cc6e]                                  ; $7749: $fa $6e $cc
	sub  $04                                         ; $774c: $d6 $04
	ld   [$cc6e], a                                  ; $774e: $ea $6e $cc
	jr   jr_005_775b                                 ; $7751: $18 $08

jr_005_7753:
	ld   a, [$cc6e]                                  ; $7753: $fa $6e $cc
	sub  $08                                         ; $7756: $d6 $08
	ld   [$cc6e], a                                  ; $7758: $ea $6e $cc

jr_005_775b:
	ld   a, $09                                      ; $775b: $3e $09
	ld   [$cc67], a                                  ; $775d: $ea $67 $cc
	xor  a                                           ; $7760: $af
	ld   [$cc68], a                                  ; $7761: $ea $68 $cc
	ret                                              ; $7764: $c9


	ld   a, [$cc68]                                  ; $7765: $fa $68 $cc
	sla  a                                           ; $7768: $cb $27
	ld   h, $00                                      ; $776a: $26 $00
	ld   l, a                                        ; $776c: $6f
	ld   bc, $7775                                   ; $776d: $01 $75 $77
	add  hl, bc                                      ; $7770: $09
	ld   a, [hl+]                                    ; $7771: $2a
	ld   h, [hl]                                     ; $7772: $66
	ld   l, a                                        ; $7773: $6f
	jp   hl                                          ; $7774: $e9


	ld   a, l                                        ; $7775: $7d
	ld   [hl], a                                     ; $7776: $77
	xor  b                                           ; $7777: $a8
	ld   [hl], a                                     ; $7778: $77
	or   l                                           ; $7779: $b5
	ld   [hl], a                                     ; $777a: $77
	jp   nz, $3e77                                   ; $777b: $c2 $77 $3e

	jr   nz, @-$31                                   ; $777e: $20 $cd

	rst  JumpTable                                         ; $7780: $df
	ld   a, [de]                                     ; $7781: $1a
	ld   a, [$cc6d]                                  ; $7782: $fa $6d $cc
	call Call_005_55ed                               ; $7785: $cd $ed $55
	ld   hl, $cc68                                   ; $7788: $21 $68 $cc
	ld   a, [$cc6f]                                  ; $778b: $fa $6f $cc
	cp   $04                                         ; $778e: $fe $04
	jr   c, jr_005_779c                              ; $7790: $38 $0a

	ld   a, [$cc6e]                                  ; $7792: $fa $6e $cc
	add  $04                                         ; $7795: $c6 $04
	ld   [$cc6e], a                                  ; $7797: $ea $6e $cc
	inc  [hl]                                        ; $779a: $34
	ret                                              ; $779b: $c9


jr_005_779c:
	ld   a, [$cc6e]                                  ; $779c: $fa $6e $cc
	add  $08                                         ; $779f: $c6 $08
	ld   [$cc6e], a                                  ; $77a1: $ea $6e $cc
	inc  [hl]                                        ; $77a4: $34
	inc  [hl]                                        ; $77a5: $34
	inc  [hl]                                        ; $77a6: $34
	ret                                              ; $77a7: $c9


	ld   a, [$cc6e]                                  ; $77a8: $fa $6e $cc
	add  $04                                         ; $77ab: $c6 $04
	ld   [$cc6e], a                                  ; $77ad: $ea $6e $cc
	ld   hl, $cc68                                   ; $77b0: $21 $68 $cc
	inc  [hl]                                        ; $77b3: $34
	ret                                              ; $77b4: $c9


	ld   a, [$cc6e]                                  ; $77b5: $fa $6e $cc
	add  $04                                         ; $77b8: $c6 $04
	ld   [$cc6e], a                                  ; $77ba: $ea $6e $cc
	ld   hl, $cc68                                   ; $77bd: $21 $68 $cc
	inc  [hl]                                        ; $77c0: $34
	ret                                              ; $77c1: $c9


	call Call_005_5752                               ; $77c2: $cd $52 $57
	ld   a, [$cc6f]                                  ; $77c5: $fa $6f $cc
	cp   $04                                         ; $77c8: $fe $04
	jr   c, jr_005_77d6                              ; $77ca: $38 $0a

	ld   a, [$cc6e]                                  ; $77cc: $fa $6e $cc
	add  $04                                         ; $77cf: $c6 $04
	ld   [$cc6e], a                                  ; $77d1: $ea $6e $cc
	jr   jr_005_77de                                 ; $77d4: $18 $08

jr_005_77d6:
	ld   a, [$cc6e]                                  ; $77d6: $fa $6e $cc
	add  $08                                         ; $77d9: $c6 $08
	ld   [$cc6e], a                                  ; $77db: $ea $6e $cc

jr_005_77de:
	ld   a, $09                                      ; $77de: $3e $09
	ld   [$cc67], a                                  ; $77e0: $ea $67 $cc
	xor  a                                           ; $77e3: $af
	ld   [$cc68], a                                  ; $77e4: $ea $68 $cc
	ret                                              ; $77e7: $c9


	ld   hl, $cc68                                   ; $77e8: $21 $68 $cc
	inc  [hl]                                        ; $77eb: $34
	ld   a, [$cc6f]                                  ; $77ec: $fa $6f $cc
	cp   [hl]                                        ; $77ef: $be
	ret  nc                                          ; $77f0: $d0

	ld   a, $01                                      ; $77f1: $3e $01
	ld   [$cc67], a                                  ; $77f3: $ea $67 $cc
	xor  a                                           ; $77f6: $af
	ld   [$cc68], a                                  ; $77f7: $ea $68 $cc
	ret                                              ; $77fa: $c9


	ld   a, [$cc68]                                  ; $77fb: $fa $68 $cc
	or   a                                           ; $77fe: $b7
	jr   nz, jr_005_7819                             ; $77ff: $20 $18

	xor  a                                           ; $7801: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $7802: $ea $62 $c3
	ld   a, $40                                      ; $7805: $3e $40
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $7807: $ea $63 $c3
	ld   a, $03                                      ; $780a: $3e $03
	ld   b, $00                                      ; $780c: $06 $00
	ld   hl, wBGPalettes                                   ; $780e: $21 $de $c2
	ld   c, $01                                      ; $7811: $0e $01
	ld   de, $7000                                   ; $7813: $11 $00 $70
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $7816: $cd $48 $07

jr_005_7819:
	ld   hl, $cc68                                   ; $7819: $21 $68 $cc
	ld   a, [hl]                                     ; $781c: $7e
	cpl                                              ; $781d: $2f
	srl  a                                           ; $781e: $cb $3f
	srl  a                                           ; $7820: $cb $3f
	and  $07                                         ; $7822: $e6 $07
	call SafeSetAudVolForMultipleChannels                                       ; $7824: $cd $e0 $1c
	ld   a, [hl]                                     ; $7827: $7e
	inc  [hl]                                        ; $7828: $34
	cp   $1f                                         ; $7829: $fe $1f
	jr   nc, jr_005_7836                             ; $782b: $30 $09

	and  $03                                         ; $782d: $e6 $03
	ret  nz                                          ; $782f: $c0

	ld   bc, $0040                                   ; $7830: $01 $40 $00
	jp   FadePalettesAndSetRangeToUpdate                                       ; $7833: $c3 $32 $08


jr_005_7836:
	ld   a, $01                                      ; $7836: $3e $01
	ld   hl, $7000                                   ; $7838: $21 $00 $70
	ld   de, wBGPalettes                                   ; $783b: $11 $de $c2
	ld   bc, $0080                                   ; $783e: $01 $80 $00
	call FarMemCopy                                       ; $7841: $cd $b2 $09
	ld   bc, $003f                                   ; $7844: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $7847: $cd $aa $04
	xor  a                                           ; $784a: $af
	call PlaySong                                       ; $784b: $cd $92 $1a
	ld   a, [$cc69]                                  ; $784e: $fa $69 $cc
	ld   [wGameState], a                                  ; $7851: $ea $a0 $c2
	ld   a, [$cc6a]                                  ; $7854: $fa $6a $cc
	ld   [wGameSubstate], a                                  ; $7857: $ea $a1 $c2
	ret                                              ; $785a: $c9


	ld   a, h                                        ; $785b: $7c
	ld   [$cc69], a                                  ; $785c: $ea $69 $cc
	ld   a, l                                        ; $785f: $7d
	ld   [$cc6a], a                                  ; $7860: $ea $6a $cc
	ld   a, GS_43                                      ; $7863: $3e $43
	ld   [wGameState], a                                  ; $7865: $ea $a0 $c2
	xor  a                                           ; $7868: $af
	ld   [wGameSubstate], a                                  ; $7869: $ea $a1 $c2
	ret                                              ; $786c: $c9


LCDCFunc11::
	ld   hl, $c20b                                   ; $786d: $21 $0b $c2
	ldh  a, [rLY]                                    ; $7870: $f0 $44
	cp   [hl]                                        ; $7872: $be
	jp   nz, LCDCInterruptHandler.return                                   ; $7873: $c2 $4a $04

	ld   hl, $ff40                                   ; $7876: $21 $40 $ff

jr_005_7879:
	ldh  a, [rSTAT]                                  ; $7879: $f0 $41
	and  $03                                         ; $787b: $e6 $03
	jr   z, jr_005_7879                              ; $787d: $28 $fa

jr_005_787f:
	ldh  a, [rSTAT]                                  ; $787f: $f0 $41
	and  $03                                         ; $7881: $e6 $03
	jr   nz, jr_005_787f                             ; $7883: $20 $fa

	set  3, [hl]                                     ; $7885: $cb $de
	ld   a, [$cc6e]                                  ; $7887: $fa $6e $cc
	ldh  [rSCY], a                                   ; $788a: $e0 $42
	jp   LCDCInterruptHandler.return                                       ; $788c: $c3 $4a $04


if def(VWF)

Gfx_EnDormRoomDayDetails::
	INCBIN "en_dormRoomDayDetails.2bpp"
.end::

endc