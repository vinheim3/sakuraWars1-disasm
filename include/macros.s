; --
; -- Misc
; --

; macro dwbe
;     dw (\1>>8)+((\1&$ff)<<8)
; endm

macro ldbc
    ld bc, (\1<<8)|\2
endm

; macro ldde
;     ld de, (\1<<8)|\2
; endm

; macro ldhl
;     ld hl, (\1<<8)|\2
; endm

; macro lda
; ASSERT \1 == 0
; 	xor a
; endm

; macro DEplusEquImm
;     ld   a, e
;     add  \1&$ff
;     ld   e, a
;     ld   a, d
;     adc  \1>>8
;     ld   d, a
; endm

; macro WaitUntilLCDFree
; :	ldh  a, [rSTAT]
; 	and  STATF_LCD
; 	jr   nz, :-
; endm

macro AddrBank
    dw \1
    db BANK(\1)
endm

macro M_FarCall
    DEF MARK = 0
if _NARG != 1
    DEF MARK = \1
    shift
endc
    push af
    ld   a, LOW(\1)
    ld   [wFarCallAddr], a
    ld   a, HIGH(\1)
    ld   [wFarCallAddr+1], a
    ld   a, BANK(\1)
    ld   [wFarCallBank], a
    pop  af
if MARK == 0
    call FarCall
endc
if MARK == "z"
    call z, FarCall
endc
endm

; --
; -- Script opts
; --

macro ScriptOpt_End
    db $00
endm

macro ScriptOpt_DisplayText
    db $01
rept _NARG
if \1 < $100
    db \1
else
    db \1 / $100
    db \1 % $100
endc
shift
endr
    db $00
endm

macro ScriptOpt_02
    db $02
endm

macro ScriptOpt_05
    db $05, \1, \2
endm

macro ScriptOpt_Jump
    db $06
    dw \1
endm

macro ScriptOpt_JumpIfCalcValIsNon0
    db $07
    dw \1-SCRIPT_START
endm

macro ScriptOpt_SetDelay
    db $09, \1
endm

macro ScriptOpt_ContinuePrompt
    db $0a
endm

macro ScriptOpt_0c
    db $0c, \1
endm

macro ScriptOpt_0d
    db $0d, \1, \2
endm

macro ScriptOpt_LoadScenery
    db $0e, \1
endm

macro ScriptOpt_0f
    db $0f, \1, \2
endm

macro ScriptOpt_13
    db $13, \1
endm

macro ScriptOpt_TimedQuestion
    db $19, \1, \2
endm

macro ScriptOpt_1c
    db $1c, \1, \2, \3
endm

macro ScriptOpt_1d
    db $1d, \1, \2
endm

macro ScriptOpt_2c
    db $2c, \1
endm

macro RpnEnd
    db $00
endm

macro RpnPush
    db $01, \1
endm

macro RpnPushSpecialRamByte
    db $02, \1
endm

macro Rpn03
    db $03, \1
endm

macro Rpn04
    db $04, \1, \2
endm

macro Rpn06
    db $06, \1, \2
endm

macro RpnEq
    db $20
endm

macro StartScript
    DEF SCRIPT_START = @
endm