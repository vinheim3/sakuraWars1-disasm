; in-game palettes
; 3-5 - scenery
; 7 - continue text prompt

;季 - 282/664 - 0x2a7/0x105 - 季/李
;家 - 2a6/5a3 - 0x2ef/0x2d8 - 家/豪
;間 - 2a9/4bf - 0x321/0x30e - 間/問
;続 - 2fb/689 - 0x308/0x009 - 続/統
;議 - 335/576 - 0x30a/0x2d6 - 識/議 -2nd correct
;装 - 34c/601 - 0x2ff/0x21c - 袋/装 -2nd correct
;左 - 360/5b8 - 0x2fd/0x300 - 左/在
;失 - 383/62a - 0x31b/0x25a - 失/矢
存 - 3c5/53d - 0x2ef/
;低 - 3cf/5f2 - 0x309/0x1ba - 低/抵
;波 - 47b/555 - 0x31a/0x276 - 疲/波 -2nd correct
襲 - 4ca/648 - /0x2ed
;挑 - 54b/603 - 0x245/0x2e1 - 挑/桃
;曇 - 572/63f - 0x1ce/0x202 - 雲/曇 -2nd correct
;徳 - 682/6c6 - 0x169/

; bank 24 - battle text

; rgbgfx -o en_saveScreen.2bpp en_saveScreen.png
; rgbgfx -o en_titleMenuScreenOpts.2bpp -h en_titleMenuScreenOpts.png
; rgbgfx -o en_settings.2bpp -h en_settings.png
; rgbgfx -o en_titleScreen.2bpp -u -T en_titleScreen.png ; gfx loading - bank_00a, tile map/attr - bank_097, sprites - bank_00e, palettes - bank_0a3
; rgbgfx -o en_statsLabels.2bpp en_statsLabels.png
; rgbgfx -o en_dormRoomOpts.2bpp -h en_dormRoomOpts.png
; rgbgfx -o en_dormRoomDayDetails.2bpp -h en_dormRoomDayDetails.png
; rgbgfx -o en_enterName.2bpp en_enterName.png
; tools/gfx.py 1bpp newLetters.png --from=png --interleave

; empty banks
; 0x02, 0x03, 0x1f, 0x2b, 0x36, 0x37, 0x38, 0x39
; 0x3a, 0x3b, 0x3c, 0x3d, 0x6c, 0x6d, 0x6e, 0x6f
; 0x86, 0x87

; script banks
; 0x41 - 0x6a

; IMPORTANT
; When adding new characters, add map+width in scriptExtract, and width in getCharWidth