include "includes.s"

SECTION "Custom Scripts", ROMX[$4000], BANK[$2]

if def(VWF)
	StartScript

Script_004::
	ScriptOpt_JumpIfCalcValIsNon0 .ref_85
		Rpn03 $fa
		RpnPush $00
		RpnEq
		RpnEnd
	ScriptOpt_JumpIfCalcValIsNon0 .ref_ff
		Rpn03 $fa
		RpnPush $01
		RpnEq
		RpnEnd
	ScriptOpt_JumpIfCalcValIsNon0 .ref_18d
		Rpn03 $fa
		RpnPush $02
		RpnEq
		RpnEnd
	ScriptOpt_JumpIfCalcValIsNon0 .ref_236
		Rpn03 $fa
		RpnPush $03
		RpnEq
		RpnEnd
	ScriptOpt_JumpIfCalcValIsNon0 .ref_1d3
		Rpn03 $fa
		RpnPush $04
		RpnEq
		RpnEnd
	ScriptOpt_JumpIfCalcValIsNon0 .ref_145
		Rpn03 $fa
		RpnPush $05
		RpnEq
		RpnEnd
	ScriptOpt_JumpIfCalcValIsNon0 .ref_2ac
		Rpn03 $fa
		RpnPush $08
		RpnEq
		RpnEnd
	ScriptOpt_JumpIfCalcValIsNon0 .ref_311
		Rpn03 $fa
		RpnPush $09
		RpnEq
		RpnEnd
	ScriptOpt_JumpIfCalcValIsNon0 .ref_3b4
		Rpn03 $fa
		RpnPush $0a
		RpnEq
		RpnEnd
	ScriptOpt_JumpIfCalcValIsNon0 .ref_474
		Rpn03 $fa
		RpnPush $0b
		RpnEq
		RpnEnd
	ScriptOpt_JumpIfCalcValIsNon0 .ref_3f9
		Rpn03 $fa
		RpnPush $0c
		RpnEq
		RpnEnd
	ScriptOpt_JumpIfCalcValIsNon0 .ref_36c
		Rpn03 $fa
		RpnPush $0d
		RpnEq
		RpnEnd
	ScriptOpt_LoadScenery $7c
	ScriptOpt_1c $0f, $04, $04
	ScriptOpt_02
	ScriptOpt_DisplayText $2f,$3c,$01,$0a,$43,$3c,$e1,$10,$46,$39,$37,$39,$44,$48,$3d,$43,$42,$01,$01,$47,$0d,$47,$44,$43,$48,$48,$4d,$fa
	ScriptOpt_ContinuePrompt
	ScriptOpt_End
.ref_85:
	ScriptOpt_LoadScenery $7c
	ScriptOpt_1c $01, $01, $01
	ScriptOpt_02
	ScriptOpt_DisplayText $29,$3c,$e1,$10,$3c,$39,$40,$40,$43,$10,$48,$3c,$39,$46,$39,$f2,$10,$2e,$3c,$35,$42,$3f,$10,$4d,$43,$49,$0d,$3a,$43,$46,$10,$37,$40,$39,$35,$46,$3d,$42,$3b,$10,$2d,$35,$3f,$49,$46,$35,$10,$31,$35,$46,$47,$0d,$12,$f2,$10,$2e,$46,$49,$40,$4d,$e1,$10,$48,$3c,$35,$42,$3f,$10,$4d,$43,$49,$10,$47,$43
	ScriptOpt_SetDelay $3c
	ScriptOpt_DisplayText $0d
	ScriptOpt_ContinuePrompt
	ScriptOpt_DisplayText $41,$49,$37,$3c,$f2
	ScriptOpt_ContinuePrompt
	ScriptOpt_DisplayText $23,$01,$01,$4a,$39,$10,$3c,$39,$35,$46,$38,$10,$48,$3c,$39,$46,$39,$01,$01,$47,$10,$48,$3c,$3d,$47,$0d,$3a,$49,$42,$37,$48,$3d,$43,$42,$10,$37,$35,$40,$40,$39,$38,$10,$48,$3c,$39,$0d,$01,$02,$1e,$46,$39,$35,$41,$10,$21,$35,$46,$38,$39,$42,$f2,$01,$02
	ScriptOpt_ContinuePrompt
	ScriptOpt_DisplayText $23,$48,$01,$01,$40,$40,$10,$36,$39,$10,$3a,$49,$42,$10,$48,$43,$10,$47,$39,$39,$10,$4b,$3c,$35,$48,$0d,$3c,$35,$44,$44,$39,$42,$47,$f2,$10,$2d,$43,$10,$40,$43,$42,$3b,$e1,$10,$40,$43,$4a,$39,$f2
	ScriptOpt_ContinuePrompt
	ScriptOpt_End
.ref_ff:
	ScriptOpt_LoadScenery $7c
	ScriptOpt_1c $02, $30, $19
	ScriptOpt_02
	ScriptOpt_DisplayText $29,$3c,$43,$3c,$43,$3c,$43,$f2,$10,$23,$10,$47,$39,$39,$10,$4d,$43,$49,$01,$01,$4a,$39,$0d,$37,$40,$39,$35,$46,$39,$38,$10,$2d,$35,$3f,$49,$46,$35,$10,$31,$35,$46,$47,$10,$12,$0d,$4b,$3d,$48,$3c,$10,$41,$39,$f2
	ScriptOpt_ContinuePrompt
	ScriptOpt_1c $02, $01, $01
	ScriptOpt_DisplayText $31,$39,$40,$40,$e1,$10,$3d,$48,$01,$01,$47,$10,$43,$42,$40,$4d,$10,$42,$35,$48,$49,$46,$35,$40,$f2
	ScriptOpt_ContinuePrompt
	ScriptOpt_End
.ref_145:
	ScriptOpt_LoadScenery $7c
	ScriptOpt_1c $03, $03, $03
	ScriptOpt_02
	ScriptOpt_DisplayText $2e,$3c,$35,$42,$3f,$10,$4d,$43,$49,$e1,$10,$37,$35,$38,$39,$48,$f2,$10,$1e,$3d,$38,$10,$4d,$43,$49,$0d,$3c,$35,$4a,$39,$10,$3a,$49,$42,$10,$4b,$3d,$48,$3c,$10,$2d,$35,$3f,$49,$46,$35,$0d,$31,$35,$46,$47,$10,$12,$f9
	ScriptOpt_ContinuePrompt
	ScriptOpt_DisplayText $2a,$39,$46,$3c,$35,$44,$47,$10,$4d,$43,$49,$10,$37,$35,$42,$10,$48,$46,$4d,$0d,$44,$40,$35,$4d,$3d,$42,$3b,$10,$2d,$35,$3f,$49,$46,$35,$10,$31,$35,$46,$47,$10,$13,$0d,$42,$39,$4c,$48,$f2,$10,$23,$10,$3c,$43,$44,$39,$10,$4d,$43,$49,$10,$4b,$3d,$40,$40,$f2,$10,$2d,$39,$39
	ScriptOpt_SetDelay $3c
	ScriptOpt_DisplayText $0d
	ScriptOpt_ContinuePrompt
	ScriptOpt_DisplayText $4d,$43,$49,$10,$40,$35,$48,$39,$46,$f2
	ScriptOpt_ContinuePrompt
	ScriptOpt_End
.ref_18d:
	ScriptOpt_LoadScenery $7c
	ScriptOpt_1c $04, $21, $09
	ScriptOpt_02
	ScriptOpt_DisplayText $2e,$35,$01,$0a,$38,$35,$3c,$fa,$10,$23,$48,$01,$01,$47,$10,$23,$46,$3d,$47,$fa,$0d,$1d,$43,$42,$3b,$46,$35,$48,$47,$10,$43,$42,$10,$3a,$3d,$42,$3d,$47,$3c,$3d,$42,$3b,$0d,$2d,$35,$3f,$49,$46,$35,$10,$31,$35,$46,$47,$10,$12,$fa
	ScriptOpt_ContinuePrompt
	ScriptOpt_DisplayText $22,$39,$4d,$e1,$10,$4b,$3c,$35,$48,$01,$01,$47,$10,$48,$3c,$3d,$47,$10,$1e,$46,$39,$35,$41,$0d,$21,$35,$46,$38,$39,$42,$10,$48,$3c,$3d,$42,$3b,$f9
	ScriptOpt_ContinuePrompt
	ScriptOpt_End
.ref_1d3:
	ScriptOpt_LoadScenery $7c
	ScriptOpt_0c $09
	ScriptOpt_0d $05, $20
	ScriptOpt_0f $05, $01
	ScriptOpt_02
	ScriptOpt_DisplayText $29,$3c,$10,$3b,$39,$39,$4e,$f2,$10,$23,$01,$01,$4a,$39,$10,$38,$43,$42,$39,$10,$3d,$48,$0d,$35,$3b,$35,$3d,$42,$f2
	ScriptOpt_ContinuePrompt
	ScriptOpt_0d $05, $01
	ScriptOpt_DisplayText $29,$3c,$e1,$10,$40,$43,$43,$3f,$47,$10,$40,$3d,$3f,$39,$10,$4d,$43,$49,$01,$01,$4a,$39,$0d,$3a,$3d,$42,$3d,$47,$3c,$39,$38,$10,$2d,$35,$3f,$49,$46,$35,$10,$31,$35,$46,$47,$10,$12,$f2,$0d,$1d,$43,$42,$3b,$46,$35,$48,$47,$f2
	ScriptOpt_ContinuePrompt
	ScriptOpt_DisplayText $2a,$40,$35,$4d,$10,$2d,$35,$3f,$49,$46,$35,$10,$31,$35,$46,$47,$10,$13,$10,$48,$43,$43,$0d,$35,$3a,$48,$39,$46,$10,$48,$3c,$3d,$47,$e1,$10,$43,$3f,$35,$4d,$f9,$10,$2d,$39,$39,$0d,$4d,$35,$fa
	ScriptOpt_ContinuePrompt
	ScriptOpt_End
.ref_236:
	ScriptOpt_LoadScenery $7c
	ScriptOpt_1c $06, $01, $01
	ScriptOpt_02
	ScriptOpt_DisplayText $29,$43,$44,$47,$fa,$10,$29,$3c,$10,$3c,$39,$4d,$e1,$10,$23,$10,$3c,$39,$35,$46,$10,$4d,$43,$49,$0d,$36,$39,$35,$48,$10,$2d,$35,$3f,$49,$46,$35,$10,$31,$35,$46,$47,$10,$12,$f2
	ScriptOpt_ContinuePrompt
	ScriptOpt_DisplayText $23,$01,$01,$41,$10,$42,$43,$48,$10,$47,$43,$10,$3b,$43,$43,$38,$10,$4b,$3d,$48,$3c,$0d,$48,$35,$37,$48,$3d,$37,$47,$e1,$10,$23,$10,$3e,$49,$47,$48,$10,$4b,$35,$42,$48,$10,$48,$43,$0d,$46,$49,$47,$3c,$10,$3d,$42,$10,$35,$42,$38,$10,$47,$41,$35,$47,$3c,$10,$48,$3c,$39,$3d,$46
	ScriptOpt_SetDelay $3c
	ScriptOpt_DisplayText $0d
	ScriptOpt_ContinuePrompt
	ScriptOpt_DisplayText $3c,$39,$35,$38,$47,$10,$3d,$42,$10,$46,$39,$35,$40,$10,$3c,$35,$46,$38,$f2
	ScriptOpt_ContinuePrompt
	ScriptOpt_DisplayText $31,$39,$40,$40,$e1,$10,$3d,$48,$10,$38,$43,$39,$47,$42,$01,$01,$48,$10,$41,$35,$48,$48,$39,$46,$f2,$0d,$1b,$42,$4d,$4b,$35,$4d,$47,$e1,$10,$37,$43,$42,$3b,$46,$35,$48,$49,$40,$35,$48,$3d,$43,$42,$47,$f2
	ScriptOpt_ContinuePrompt
	ScriptOpt_End
.ref_2ac:
	ScriptOpt_LoadScenery $7c
	ScriptOpt_1c $01, $01, $01
	ScriptOpt_02
	ScriptOpt_DisplayText $29,$3c,$e1,$10,$3c,$39,$40,$40,$43,$10,$48,$3c,$39,$46,$39,$f2
	ScriptOpt_1c $01, $04, $04
	ScriptOpt_DisplayText $23,$01,$01,$4a,$39,$10,$36,$39,$39,$42,$10,$44,$46,$35,$37,$48,$3d,$37,$3d,$42,$3b,$10,$41,$4d,$0d,$47,$4b,$43,$46,$38,$10,$47,$3f,$3d,$40,$40,$47,$10,$47,$43,$10,$41,$49,$37,$3c,$0d,$40,$35,$48,$39,$40,$4d,$e1,$10,$41,$4d,$10,$3c,$35,$42,$38,$10,$37,$43,$49,$40,$38,$10,$3e,$49,$47,$48
	ScriptOpt_SetDelay $3c
	ScriptOpt_DisplayText $0d
	ScriptOpt_ContinuePrompt
	ScriptOpt_DisplayText $3a,$35,$40,$40,$10,$43,$3a,$3a,$f2
	ScriptOpt_ContinuePrompt
	ScriptOpt_1c $01, $01, $01
	ScriptOpt_DisplayText $1b,$42,$4d,$4b,$35,$4d,$47,$e1,$10,$23,$01,$01,$4a,$39,$10,$36,$39,$39,$42,$0d,$4b,$43,$46,$3f,$3d,$42,$3b,$10,$43,$42,$10,$4d,$43,$49,$46,$10,$2d,$35,$3f,$49,$46,$35,$0d,$31,$35,$46,$47,$10,$12,$10,$41,$3d,$42,$3d,$01,$0a,$3b,$35,$41,$39,$10,$38,$35,$48,$35,$f2
	ScriptOpt_ContinuePrompt
	ScriptOpt_End
.ref_311:
	ScriptOpt_LoadScenery $7c
	ScriptOpt_1c $02, $02, $02
	ScriptOpt_02
	ScriptOpt_DisplayText $23,$01,$01,$41,$10,$47,$43,$10,$48,$3d,$46,$39,$38,$10,$43,$3a,$10,$48,$46,$35,$3d,$42,$3d,$42,$3b,$f2,$10,$23,$0d,$37,$35,$42,$01,$01,$48,$10,$36,$39,$40,$3d,$39,$4a,$39,$10,$48,$3c,$39,$4d,$10,$47,$35,$3d,$38,$10,$23,$0d,$40,$35,$37,$3f,$39,$38,$10,$47,$44,$3d,$46,$3d,$48,$f2
	ScriptOpt_ContinuePrompt
	ScriptOpt_1c $02, $01, $01
	ScriptOpt_DisplayText $22,$39,$46,$39,$01,$01,$47,$10,$4d,$43,$49,$46,$10,$2d,$35,$3f,$49,$46,$35,$10,$31,$35,$46,$47,$0d,$12,$10,$41,$3d,$42,$3d,$01,$0a,$3b,$35,$41,$39,$10,$38,$35,$48,$35,$f2
	ScriptOpt_ContinuePrompt
	ScriptOpt_End
.ref_36c:
	ScriptOpt_LoadScenery $7c
	ScriptOpt_1c $03, $02, $02
	ScriptOpt_02
	ScriptOpt_DisplayText $23,$01,$01,$40,$40,$10,$47,$39,$39,$10,$4d,$43,$49,$10,$35,$3a,$48,$39,$46,$10,$23,$10,$3a,$3d,$42,$3d,$47,$3c,$0d,$48,$46,$35,$3d,$42,$3d,$42,$3b,$f2
	ScriptOpt_ContinuePrompt
	ScriptOpt_1c $03, $03, $03
	ScriptOpt_DisplayText $31,$39,$10,$46,$39,$37,$39,$3d,$4a,$39,$38,$10,$4d,$43,$49,$46,$0d,$41,$3d,$42,$3d,$01,$0a,$3b,$35,$41,$39,$10,$38,$35,$48,$35,$10,$3a,$46,$43,$41,$0d,$2d,$35,$3f,$49,$46,$35,$10,$31,$35,$46,$47,$10,$12,$f2
	ScriptOpt_ContinuePrompt
	ScriptOpt_End
.ref_3b4:
	ScriptOpt_LoadScenery $7c
	ScriptOpt_1c $04, $07, $07
	ScriptOpt_02
	ScriptOpt_DisplayText $1c,$43,$43,$fa,$10,$28,$43,$10,$46,$49,$42,$42,$3d,$42,$3b,$10,$35,$4b,$35,$4d,$fa
	ScriptOpt_ContinuePrompt
	ScriptOpt_1c $04, $01, $01
	ScriptOpt_DisplayText $22,$39,$46,$39,$01,$01,$47,$10,$4d,$43,$49,$46,$10,$2d,$35,$3f,$49,$46,$35,$10,$31,$35,$46,$47,$0d,$12,$10,$41,$3d,$42,$3d,$01,$0a,$3b,$35,$41,$39,$10,$38,$35,$48,$35,$f2,$10,$1f,$4c,$37,$49,$47,$39,$0d,$41,$39,$f2
	ScriptOpt_ContinuePrompt
	ScriptOpt_End
.ref_3f9:
	ScriptOpt_LoadScenery $7c
	ScriptOpt_0c $09
	ScriptOpt_0d $05, $20
	ScriptOpt_0f $05, $01
	ScriptOpt_02
	ScriptOpt_DisplayText $1b,$4b,$10,$41,$35,$42,$e1,$10,$42,$43,$48,$10,$35,$3b,$35,$3d,$42,$f2
	ScriptOpt_1c $05, $07, $07
	ScriptOpt_DisplayText $26,$43,$43,$3f,$47,$10,$40,$3d,$3f,$39,$10,$48,$3c,$35,$48,$10,$3e,$43,$36,$10,$3d,$47,$42,$01,$01,$01,$01,$48,$0d,$3b,$43,$3d,$42,$3b,$10,$48,$43,$10,$36,$39,$10,$48,$3c,$35,$48,$10,$39,$35,$47,$4d,$f2
	ScriptOpt_ContinuePrompt
	ScriptOpt_0d $05, $01
	ScriptOpt_DisplayText $31,$39,$40,$40,$e1,$10,$35,$48,$10,$40,$39,$35,$47,$48,$10,$4b,$39,$10,$46,$39,$37,$39,$3d,$4a,$39,$38,$0d,$4d,$43,$49,$46,$10,$41,$3d,$42,$3d,$01,$0a,$3b,$35,$41,$39,$10,$38,$35,$48,$35,$10,$3a,$46,$43,$41,$0d,$2d,$35,$3f,$49,$46,$35,$10,$31,$35,$46,$47,$10,$12,$f2
	ScriptOpt_ContinuePrompt
	ScriptOpt_DisplayText $2e,$3c,$35,$48,$01,$01,$47,$10,$48,$3c,$39,$10,$41,$3d,$3b,$3c,$48,$10,$43,$3a,$0d,$47,$37,$3d,$39,$42,$37,$39,$e1,$10,$39,$3c,$f9,$10,$1c,$4d,$39,$fa
	ScriptOpt_ContinuePrompt
	ScriptOpt_End
.ref_474:
	ScriptOpt_LoadScenery $7c
	ScriptOpt_1c $06, $01, $01
	ScriptOpt_02
	ScriptOpt_DisplayText $1c,$43,$47,$47,$fa,$10,$23,$01,$01,$4a,$39,$10,$3b,$43,$48,$10,$47,$43,$41,$39,$48,$3c,$3d,$42,$3b,$0d,$4d,$43,$49,$10,$41,$3d,$3b,$3c,$48,$10,$40,$3d,$3f,$39,$f2
	ScriptOpt_ContinuePrompt
	ScriptOpt_DisplayText $23,$10,$38,$43,$42,$01,$01,$48,$10,$46,$39,$35,$40,$40,$4d,$10,$49,$42,$38,$39,$46,$47,$48,$35,$42,$38,$0d,$4b,$3c,$35,$48,$10,$3d,$48,$10,$41,$39,$35,$42,$47,$e1,$10,$36,$49,$48,$10,$40,$43,$43,$3f,$47,$0d,$40,$3d,$3f,$39,$10,$4b,$39,$10,$3b,$43,$48,$10,$4d,$43,$49,$46
	ScriptOpt_SetDelay $3c
	ScriptOpt_DisplayText $0d
	ScriptOpt_ContinuePrompt
	ScriptOpt_DisplayText $41,$3d,$42,$3d,$01,$0a,$3b,$35,$41,$39,$10,$38,$35,$48,$35,$10,$3a,$46,$43,$41,$0d,$2d,$35,$3f,$49,$46,$35,$10,$31,$35,$46,$47,$10,$12,$f2
	ScriptOpt_ContinuePrompt
	ScriptOpt_End


	StartScript

Script_006::
	ScriptOpt_13 $04
	ScriptOpt_LoadScenery $93
	ScriptOpt_0f $00, $01
	ScriptOpt_02
	ScriptOpt_DisplayText $a1, $fc, $2a5, $4aa, $90, $52, $52, $413, $2a1, $6e, $78, $fc, $9f
	ScriptOpt_SetDelay $3c
	ScriptOpt_DisplayText $0d
	ScriptOpt_ContinuePrompt
	ScriptOpt_1c $0b, $00, $00
	ScriptOpt_DisplayText $6b, $61, $7c, $50, $78, $6d, $9e, $6f, $95, $71, $76, $0d, $52, $52, $59, $65, $97, $f9
	ScriptOpt_SetDelay $3c
	ScriptOpt_DisplayText $0d
	ScriptOpt_ContinuePrompt
	ScriptOpt_0f $00, $01
	ScriptOpt_DisplayText $56, $ff, $ff, $f9, $0d, $46d, $7c, $61, $76, $75, $67, $59, $f9
	ScriptOpt_SetDelay $3c
	ScriptOpt_DisplayText $0d
	ScriptOpt_ContinuePrompt
	ScriptOpt_1c $0b, $01, $01
	ScriptOpt_DisplayText $6b, $54, $9e, $50, $78, $6d, $9e, $78, $59, $78, $59, $52, $52, $0d, $90, $7c, $a0, $3a0, $71, $74, $52, $99, $9d, $7b, $9f
	ScriptOpt_SetDelay $3c
	ScriptOpt_DisplayText $0d
	ScriptOpt_ContinuePrompt
	ScriptOpt_1c $0b, $00, $00
	ScriptOpt_DisplayText $9d, $6d, $65, $7d, $9e, $408, $28f, $290, $291, $409, $f3, $69e, $31f, $501, $0d, $5f8, $686, $50, $92, $8f, $9f
	ScriptOpt_SetDelay $3c
	ScriptOpt_DisplayText $0d
	ScriptOpt_ContinuePrompt
	ScriptOpt_DisplayText $23,$01,$01,$41,$10,$37,$49,$46,$46,$39,$42,$48,$40,$4d,$10,$48,$46,$35,$4a,$39,$40,$3d,$42,$3b,$0d,$35,$46,$43,$49,$42,$38,$10,$48,$3c,$39,$10,$37,$43,$49,$42,$48,$46,$4d,$0d,$40,$43,$43,$3f,$3d,$42,$3b,$10,$3a,$43,$46,$10,$4d,$43,$49,$42,$3b,$10,$44,$39,$43,$44,$40,$39
	ScriptOpt_SetDelay $3c
	ScriptOpt_DisplayText $0d
	ScriptOpt_ContinuePrompt
	ScriptOpt_DisplayText $4b,$3d,$48,$3c,$10,$2d,$44,$3d,$46,$3d,$48,$10,$2a,$43,$4b,$39,$46,$f2
	ScriptOpt_SetDelay $3c
	ScriptOpt_DisplayText $0d
	ScriptOpt_ContinuePrompt
	ScriptOpt_DisplayText $35,$42,$38,$10,$23,$01,$01,$41,$10,$35,$47,$3f,$3d,$42,$3b,$10,$44,$46,$43,$41,$3d,$47,$3d,$42,$3b,$0d,$4d,$43,$49,$48,$3c,$47,$10,$48,$43,$10,$3e,$43,$3d,$42,$10,$48,$3c,$39,$0d,$23,$41,$44,$39,$46,$3d,$35,$40,$10,$1d,$43,$41,$36,$35,$48,$10,$2c,$39,$4a,$49,$39,$10,$3a,$43,$46
	ScriptOpt_SetDelay $3c
	ScriptOpt_DisplayText $0d
	ScriptOpt_ContinuePrompt
	ScriptOpt_DisplayText $35,$10,$43,$42,$39,$01,$0a,$41,$43,$42,$48,$3c,$10,$48,$46,$3d,$35,$40,$10,$44,$39,$46,$3d,$43,$38,$f2
	ScriptOpt_SetDelay $3c
	ScriptOpt_DisplayText $0d
	ScriptOpt_ContinuePrompt
	ScriptOpt_DisplayText $31,$3c,$35,$48,$10,$38,$43,$10,$4d,$43,$49,$10,$48,$3c,$3d,$42,$3f,$f9,$10,$23,$3a,$0d,$4d,$43,$49,$01,$01,$46,$39,$10,$37,$3c,$43,$47,$39,$42,$e1,$10,$4b,$43,$49,$40,$38,$10,$4d,$43,$49,$0d,$36,$39,$10,$4b,$3d,$40,$40,$3d,$42,$3b,$10,$48,$43,$10,$38,$43,$10,$35,$10,$48,$46,$3d,$35,$40
	ScriptOpt_SetDelay $3c
	ScriptOpt_DisplayText $0d
	ScriptOpt_ContinuePrompt
	ScriptOpt_DisplayText $39,$42,$40,$3d,$47,$48,$41,$39,$42,$48,$f9
	ScriptOpt_SetDelay $3c
	ScriptOpt_DisplayText $0d
	ScriptOpt_ContinuePrompt
	ScriptOpt_1c $0b, $01, $01
	ScriptOpt_DisplayText $1c,$49,$48,$10,$48,$3c,$35,$48,$10,$38,$43,$39,$47,$42,$01,$01,$48,$10,$41,$39,$35,$42,$10,$3d,$48,$01,$01,$47,$0d,$43,$3a,$3a,$3d,$37,$3d,$35,$40,$10,$4d,$39,$48,$f2
	ScriptOpt_SetDelay $3c
	ScriptOpt_DisplayText $0d
	ScriptOpt_ContinuePrompt
	ScriptOpt_DisplayText $23,$01,$01,$40,$40,$10,$48,$46,$35,$4a,$39,$40,$10,$35,$46,$43,$49,$42,$38,$10,$48,$3c,$39,$0d,$37,$43,$49,$42,$48,$46,$4d,$10,$35,$42,$38,$10,$3d,$3a,$10,$4d,$43,$49,$46,$0d,$45,$49,$35,$40,$3d,$48,$3d,$39,$47,$10,$35,$46,$39,$10,$48,$3c,$39,$10,$36,$39,$47,$48
	ScriptOpt_SetDelay $3c
	ScriptOpt_DisplayText $0d
	ScriptOpt_ContinuePrompt
	ScriptOpt_DisplayText $35,$41,$43,$42,$3b,$10,$48,$3c,$39,$41,$e1,$10,$23,$01,$01,$40,$40,$10,$47,$39,$42,$38,$10,$4d,$43,$49,$0d,$35,$10,$40,$39,$48,$48,$39,$46,$f2
	ScriptOpt_SetDelay $3c
	ScriptOpt_DisplayText $0d
	ScriptOpt_ContinuePrompt
	ScriptOpt_DisplayText $23,$01,$01,$40,$40,$10,$40,$39,$48,$10,$4d,$43,$49,$10,$3f,$42,$43,$4b,$10,$4b,$3c,$39,$42,$10,$23,$0d,$38,$43,$f2
	ScriptOpt_SetDelay $3c
	ScriptOpt_DisplayText $0d
	ScriptOpt_ContinuePrompt
	ScriptOpt_0d $00, $00
	ScriptOpt_0f $00, $01
	ScriptOpt_2c $10
	ScriptOpt_LoadScenery $b9
	ScriptOpt_2c $02
	ScriptOpt_DisplayText $2e,$3c,$35,$48,$01,$01,$47,$10,$4b,$3c,$35,$48,$10,$3c,$35,$44,$44,$39,$42,$39,$38,$10,$48,$4b,$43,$0d,$41,$43,$42,$48,$3c,$47,$10,$35,$3b,$43,$f2,$f2,$f2,$f2,$10,$28,$43,$10,$4b,$35,$4d,$e1,$10,$35,$0d,$40,$39,$48,$48,$39,$46,$f2,$f2,$f2
	ScriptOpt_SetDelay $3c
	ScriptOpt_DisplayText $0d
	ScriptOpt_ContinuePrompt
	ScriptOpt_DisplayText $01,$02,$23,$10,$46,$39,$45,$49,$39,$47,$48,$10,$4d,$43,$49,$46,$10,$48,$46,$3d,$35,$40,$0d,$39,$42,$40,$3d,$47,$48,$41,$39,$42,$48,$10,$3d,$42,$10,$48,$3c,$39,$10,$23,$41,$44,$39,$46,$3d,$35,$40,$0d,$1d,$43,$41,$36,$35,$48,$10,$2c,$39,$4a,$49,$39,$f2,$10,$01,$0a,$25,$35,$4e,$49,$41,$43,$48,$43
	ScriptOpt_SetDelay $3c
	ScriptOpt_DisplayText $0d
	ScriptOpt_ContinuePrompt
	ScriptOpt_DisplayText $33,$43,$42,$39,$38,$35,$e1,$10,$23,$41,$44,$39,$46,$3d,$35,$40,$10,$1d,$43,$41,$36,$35,$48,$0d,$2c,$39,$4a,$49,$39,$f2,$01,$02
	ScriptOpt_SetDelay $3c
	ScriptOpt_DisplayText $0d
	ScriptOpt_ContinuePrompt
	ScriptOpt_DisplayText $23,$10,$42,$39,$4a,$39,$46,$10,$48,$3c,$43,$49,$3b,$3c,$48,$10,$48,$3c,$35,$48,$10,$23,$e1,$10,$35,$0d,$37,$3d,$4a,$3d,$40,$3d,$35,$42,$e1,$10,$4b,$43,$49,$40,$38,$10,$36,$39,$10,$37,$3c,$43,$47,$39,$42,$f2,$f2,$f2
	ScriptOpt_SetDelay $3c
	ScriptOpt_DisplayText $0d
	ScriptOpt_ContinuePrompt
	ScriptOpt_DisplayText $23,$48,$01,$01,$47,$10,$40,$3d,$3f,$39,$10,$35,$10,$38,$46,$39,$35,$41,$10,$37,$43,$41,$39,$0d,$48,$46,$49,$39,$10,$48,$43,$10,$36,$39,$10,$35,$36,$40,$39,$10,$48,$43,$10,$3e,$43,$3d,$42,$0d,$48,$3c,$39,$10,$23,$41,$44,$39,$46,$3d,$35,$40,$10,$1d,$43,$41,$36,$35,$48
	ScriptOpt_SetDelay $3c
	ScriptOpt_DisplayText $0d
	ScriptOpt_ContinuePrompt
	ScriptOpt_DisplayText $2c,$39,$4a,$49,$39,$f2,$f2,$f2
	ScriptOpt_SetDelay $3c
	ScriptOpt_DisplayText $0d
	ScriptOpt_ContinuePrompt
	ScriptOpt_DisplayText $23,$10,$38,$43,$42,$01,$01,$48,$10,$3f,$42,$43,$4b,$10,$3c,$43,$4b,$10,$3b,$43,$43,$38,$10,$41,$4d,$0d,$44,$47,$4d,$37,$3c,$3d,$37,$10,$44,$43,$4b,$39,$46,$10,$3d,$47,$e1,$10,$36,$49,$48,$10,$f2,$f2,$f2,$f2,$0d,$23,$01,$01,$40,$40,$10,$38,$43,$10,$41,$4d,$10,$36,$39,$47,$48,$fa
	ScriptOpt_SetDelay $3c
	ScriptOpt_DisplayText $0d
	ScriptOpt_ContinuePrompt
	ScriptOpt_SetDelay $3c
	ScriptOpt_End
endc


SECTION "Custom misc", ROMX[$4000], BANK[$3]

if def(VWF)

Gfx_EnTitleMenuScreenOpts::
	INCBIN "en_titleMenuScreenOpts.2bpp"


LoadSettingsEnTileData::
	ld   bc, $c0
	ld   de, $d1a0
	ld   hl, Gfx_EnSettings
	call MemCopy

	ld   bc, $240
	ld   de, $d6e0
	ld   hl, Gfx_EnSettings+$c0
	call MemCopy

	ld   bc, $280
	ld   de, $d9a0
	ld   hl, Gfx_EnSettings+$c0+$240
	call MemCopy

	ld   bc, $80
	ld   de, $ddc0
	ld   hl, Gfx_EnSettings+$c0+$240+$280
	call MemCopy

	ld   bc, $140
	ld   de, $dec0
	ld   hl, Gfx_EnSettings+$c0+$240+$280+$80
	call MemCopy

	ld   bc, $60
	ld   de, $d0a0
	ld   hl, Gfx_EnSettings+$c0+$240+$280+$80+$140
	call MemCopy
	ret


Gfx_EnSettings:
	INCBIN "en_settings.2bpp"


ChangeSettingsTileMap::
	ld   a, BANK(TileMap_SettingsMainBit)
	ldbc $0e, $0a
	ld   de, TileMap_SettingsMainBit
	ld   hl, $d8a3
	call FarCopyLayout

	ld   a, BANK(TileMap_SlowNormalFast)
	ldbc $0c, $02
	ld   de, TileMap_SlowNormalFast
	ld   hl, $d814
	call FarCopyLayout

	ld   a, BANK(TileMap_SlowNormalFast)
	ldbc $0c, $02
	ld   de, TileMap_SlowNormalFast
	ld   hl, $d854
	call FarCopyLayout

	ld   a, BANK(TileMap_SlowNormalFast)
	ldbc $0c, $02
	ld   de, TileMap_SlowNormalFast
	ld   hl, $d894
	call FarCopyLayout

	ld   a, BANK(TileMap_CursorType)
	ldbc $08, $02
	ld   de, TileMap_CursorType
	ld   hl, $d954
	call FarCopyLayout

	ld   a, BANK(TileMap_FaceIcon)
	ldbc $07, $02
	ld   de, TileMap_FaceIcon
	ld   hl, $d994
	call FarCopyLayout

	ld   a, BANK(TileMap_SettingsText)
	ldbc $06, $03
	ld   de, TileMap_SettingsText
	ld   hl, $d822
	call FarCopyLayout
	ret


TileMap_SettingsMainBit::
	db $fa, $fc, $fe, $00, $02, $04, $06, $08, $b3, $b3, $b3, $b3, $b3, $b3
	db $fb, $fd, $ff, $01, $03, $05, $07, $09, $c3, $c3, $c3, $c3, $c3, $c3
	db $0a, $0c, $0e, $10, $1a, $1c, $1e, $20, $b3, $b3, $b3, $b3, $b3, $b3
	db $0b, $0d, $0f, $11, $1b, $1d, $1f, $21, $c3, $c3, $c3, $c3, $c3, $c3
	db $22, $24, $26, $28, $2a, $2c, $2e, $30, $b3, $b3, $b3, $b3, $b3, $b3
	db $23, $25, $27, $29, $2b, $2d, $2f, $31, $c3, $c3, $c3, $c3, $c3, $c3
	db $b3, $b3, $b3, $ca, $cb, $cc, $cd, $b3, $b3, $b3, $b3, $b3, $b3, $b3
	db $c3, $c3, $c3, $da, $db, $dc, $dd, $c3, $c3, $c3, $c3, $c3, $c3, $c3
	db $b3, $b3, $b3, $ca, $cb, $cc, $cd, $b3, $b3, $b3, $b3, $b3, $b3, $b3
	db $c3, $c3, $c3, $da, $db, $dc, $dd, $c3, $c3, $c3, $c3, $c3, $c3, $c3


TileMap_SlowNormalFast::
	db $f2, $f4, $f6, $f8, $a2, $a4, $ee, $f0, $9a, $9c, $9e, $a0
	db $f3, $f5, $f7, $f9, $a3, $a5, $ef, $f1, $9b, $9d, $9f, $a1


TileMap_CursorType::
	db $32, $34, $36, $38, $3a, $3c, $3e, $b3
	db $33, $35, $37, $39, $3b, $3d, $3f, $c3


TileMap_FaceIcon::
	db $40, $5c, $5e, $60, $62, $6c, $b3
	db $41, $5d, $5f, $61, $63, $6d, $c3


TileMap_SettingsText::
	db $6e, $70, $72, $74, $76, $78
	db $6f, $71, $73, $75, $77, $79
	db $7a, $7c, $7e, $8a, $8c, $8e


ChangeSettingsTileAttr::
	ld   a, $07
	ld   [$d822], a
	ld   a, $05
	ld   [$d827], a
	ret

endc