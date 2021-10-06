; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $040", ROMX[$4000], BANK[$40]

macro RpnSrc
if _NARG == 1
	dw \1-$4000
	db BANK(\1)-$41
else
	dw \2
	db \1
endc
endm

; byte 0 - % chance of getting the event
;   bit 7 set - don't do script if already encountered
; word 1/2 - script idx
;   high nybble of high byte == event struct idx it can fill
; byte 3 - nybbles are days applicable
; word/byte 4-6 - rpn condition to trigger
; byte 7 - ???
if def(VWF)
First8Days6am::
	db $e4, $00, $11, $22
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $01, $41, $45
	RpnSrc RpnData_42_7f51
	db $00

	db $e4, $02, $21, $45
	RpnSrc RpnData_43_406e
	db $00

	db $e4, $03, $41, $67
	RpnSrc RpnData_43_4180
	db $00

	db $e4, $04, $21, $67
	RpnSrc RpnData_43_4280
	db $00

	db $e4, $05, $01, $11
	RpnSrc RpnData_41_4000
	db $00

	db $00

First8Days7am::
	db $e4, $06, $39, $56
	RpnSrc RpnData_43_5af9
	db $28

	db $64, $07, $21, $27
	RpnSrc RpnData_43_5d70
	db $00

	db $64, $08, $11, $27
	RpnSrc RpnData_43_5e31
	db $00

	db $64, $09, $31, $27
	RpnSrc RpnData_43_5ef3
	db $00

	db $64, $0a, $51, $27
	RpnSrc RpnData_43_5fb3
	db $00

	db $64, $0b, $61, $27
	RpnSrc RpnData_43_6078
	db $00

	db $64, $0c, $41, $27
	RpnSrc RpnData_43_613a
	db $00

	db $64, $0d, $e1, $27
	RpnSrc RpnData_43_61f4
	db $00

	db $64, $0e, $91, $27
	RpnSrc RpnData_41_4000
	db $1e

	db $e4, $0f, $61, $27
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $10, $31, $27
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $11, $41, $27
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $12, $51, $27
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $13, $21, $27
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $14, $11, $27
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $15, $d1, $34
	RpnSrc RpnData_44_46dc
	db $0d

	db $e4, $16, $11, $47
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $17, $d1, $56
	RpnSrc RpnData_44_4d47
	db $0d

	db $e4, $18, $61, $47
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $19, $31, $47
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $1a, $41, $47
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $1b, $51, $47
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $1c, $21, $47
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $1d, $51, $67
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $1e, $61, $67
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $1f, $31, $67
	RpnSrc RpnData_44_6d5a
	db $00

	db $e4, $20, $41, $67
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $21, $21, $67
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $22, $11, $67
	RpnSrc RpnData_41_4000
	db $00

	db $64, $23, $c1, $27
	RpnSrc RpnData_44_7b63
	db $00

	db $64, $24, $d1, $37
	RpnSrc RpnData_44_7f84
	db $00

	db $64, $25, $21, $27
	RpnSrc RpnData_41_4000
	db $00

	db $64, $26, $11, $27
	RpnSrc RpnData_41_4000
	db $00

	db $64, $27, $31, $27
	RpnSrc RpnData_41_4000
	db $00

	db $64, $28, $41, $27
	RpnSrc RpnData_41_4000
	db $00

	db $64, $29, $61, $27
	RpnSrc RpnData_41_4000
	db $00

	db $64, $2a, $51, $27
	RpnSrc RpnData_41_4000
	db $00

	db $64, $2b, $e1, $17
	RpnSrc RpnData_45_4b1e
	db $10

	db $00

First8Days8am::
	db $e4, $2c, $01, $27
	RpnSrc RpnData_45_4d1e
	db $01

	db $64, $2d, $01, $27
	RpnSrc RpnData_41_4000
	db $01

	db $00

First8Days9am::
	db $64, $2e, $61, $27
	RpnSrc RpnData_45_4f2f
	db $00

	db $64, $2f, $51, $27
	RpnSrc RpnData_45_59e5
	db $00

	db $64, $30, $41, $27
	RpnSrc RpnData_45_6371
	db $00

	db $64, $31, $31, $27
	RpnSrc RpnData_45_6d90
	db $00

	db $64, $32, $21, $27
	RpnSrc RpnData_45_775b
	db $00

	db $64, $33, $11, $27
	RpnSrc RpnData_46_438d
	db $00

	db $00

First8Days10am::
	db $00

First8Days11am::
	db $e4, $34, $01, $22
	RpnSrc RpnData_41_4000
	db $01

	db $e4, $35, $31, $56
	RpnSrc RpnData_46_4e77
	db $00

	db $00

First8Days12pm::
	db $e4, $36, $29, $34
	RpnSrc RpnData_46_4f52
	db $00

	db $e4, $37, $69, $56
	RpnSrc RpnData_46_5247
	db $00

	db $64, $38, $21, $27
	RpnSrc RpnData_46_55d8
	db $00

	db $64, $39, $11, $27
	RpnSrc RpnData_46_5699
	db $00

	db $64, $3a, $31, $27
	RpnSrc RpnData_46_575b
	db $00

	db $64, $3b, $51, $27
	RpnSrc RpnData_46_581b
	db $00

	db $64, $3c, $61, $27
	RpnSrc RpnData_46_58e0
	db $00

	db $64, $3d, $41, $27
	RpnSrc RpnData_46_59a2
	db $00

	db $64, $3e, $91, $27
	RpnSrc RpnData_41_4000
	db $1e

	db $e4, $3f, $61, $24
	RpnSrc RpnData_41_4000
	db $20

	db $e4, $40, $31, $24
	RpnSrc RpnData_41_4000
	db $1f

	db $e4, $41, $41, $24
	RpnSrc RpnData_41_4000
	db $0c

	db $64, $42, $e1, $27
	RpnSrc RpnData_46_7162
	db $00

	db $e4, $43, $51, $24
	RpnSrc RpnData_41_4000
	db $14

	db $e4, $44, $21, $24
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $45, $11, $24
	RpnSrc RpnData_41_4000
	db $22

	db $e4, $46, $c1, $34
	RpnSrc RpnData_47_45fb
	db $0d

	db $e4, $47, $d1, $56
	RpnSrc RpnData_47_46e6
	db $0d

	db $e4, $48, $21, $34
	RpnSrc RpnData_41_4000
	db $0f

	db $e4, $49, $61, $45
	RpnSrc RpnData_41_4000
	db $03

	db $e4, $4a, $31, $45
	RpnSrc RpnData_41_4000
	db $2a

	db $e4, $4b, $41, $45
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $4c, $51, $45
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $4d, $11, $45
	RpnSrc RpnData_41_4000
	db $2d

	db $e4, $4e, $d1, $47
	RpnSrc RpnData_41_4000
	db $0d

	db $e4, $4f, $61, $56
	RpnSrc RpnData_41_4000
	db $0f

	db $e4, $50, $31, $56
	RpnSrc RpnData_41_4000
	db $28

	db $e4, $51, $41, $56
	RpnSrc RpnData_47_6c70
	db $00

	db $e4, $52, $51, $56
	RpnSrc RpnData_41_4000
	db $15

	db $e4, $53, $21, $56
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $54, $11, $56
	RpnSrc RpnData_41_4000
	db $1a

	db $64, $55, $d1, $27
	RpnSrc RpnData_47_7444
	db $00

	db $64, $56, $c1, $37
	RpnSrc RpnData_47_786c
	db $00

	db $e4, $57, $31, $46
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $58, $21, $56
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $59, $11, $56
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $5a, $41, $56
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $5b, $61, $56
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $5c, $51, $56
	RpnSrc RpnData_41_4000
	db $00

	db $64, $5d, $21, $27
	RpnSrc RpnData_41_4000
	db $00

	db $64, $5e, $11, $27
	RpnSrc RpnData_41_4000
	db $00

	db $64, $5f, $31, $27
	RpnSrc RpnData_41_4000
	db $00

	db $64, $60, $41, $27
	RpnSrc RpnData_41_4000
	db $00

	db $64, $61, $61, $27
	RpnSrc RpnData_41_4000
	db $00

	db $64, $62, $51, $27
	RpnSrc RpnData_41_4000
	db $00

	db $64, $63, $e1, $17
	RpnSrc RpnData_48_4a51
	db $10

	db $00

First8Days1pm::
	db $00

First8Days2pm::
	db $00

First8Days3pm::
	db $e4, $64, $01, $27
	RpnSrc RpnData_48_4c58
	db $01

	db $e4, $65, $01, $27
	RpnSrc RpnData_48_4cb4
	db $01

	db $e4, $66, $01, $22
	RpnSrc RpnData_41_4000
	db $01

	db $00

First8Days4pm::
	db $e4, $67, $91, $17
	RpnSrc RpnData_48_4d7f
	db $00

	db $64, $68, $01, $27
	RpnSrc RpnData_48_5738
	db $00

	db $64, $69, $61, $27
	RpnSrc RpnData_48_5794
	db $00

	db $64, $6a, $51, $27
	RpnSrc RpnData_48_62ca
	db $00

	db $64, $6b, $41, $27
	RpnSrc RpnData_48_6d49
	db $00

	db $64, $6c, $31, $27
	RpnSrc RpnData_48_7827
	db $00

	db $64, $6d, $21, $27
	RpnSrc RpnData_49_430f
	db $00

	db $64, $6e, $11, $27
	RpnSrc RpnData_49_4fcc
	db $00

	db $00

First8Days5pm::
	db $00

First8Days6pm::
	db $e4, $6f, $01, $22
	RpnSrc RpnData_41_4000
	db $01

	db $e4, $70, $51, $67
	RpnSrc RpnData_49_5a81
	db $00

	db $e4, $71, $51, $24
	RpnSrc RpnData_49_5f8f
	db $00

	db $00

First8Days7pm::
	db $e4, $72, $49, $34
	RpnSrc RpnData_49_65c7
	db $1b

	db $e4, $73, $29, $34
	RpnSrc RpnData_49_66ad
	db $28

	db $e4, $74, $69, $45
	RpnSrc RpnData_49_6826
	db $2a

	db $e4, $75, $39, $45
	RpnSrc RpnData_49_6cf7
	db $2a

	db $e4, $76, $49, $56
	RpnSrc RpnData_49_6dcc
	db $1b

	db $e4, $77, $29, $56
	RpnSrc RpnData_49_70c3
	db $28

	db $e4, $78, $19, $56
	RpnSrc RpnData_49_723c
	db $03

	db $64, $79, $21, $27
	RpnSrc RpnData_49_729f
	db $00

	db $64, $7a, $11, $27
	RpnSrc RpnData_49_7360
	db $00

	db $64, $7b, $31, $27
	RpnSrc RpnData_49_7422
	db $00

	db $64, $7c, $51, $27
	RpnSrc RpnData_49_74e2
	db $00

	db $64, $7d, $61, $27
	RpnSrc RpnData_49_75a7
	db $00

	db $64, $7e, $41, $27
	RpnSrc RpnData_49_7669
	db $00

	db $64, $7f, $91, $27
	RpnSrc RpnData_41_4000
	db $1e

	db $e4, $80, $61, $23
	RpnSrc RpnData_4a_4232
	db $16

	db $e4, $81, $31, $24
	RpnSrc RpnData_4a_4357
	db $17

	db $e4, $82, $41, $24
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $83, $51, $24
	RpnSrc RpnData_41_4000
	db $25

	db $e4, $84, $21, $24
	RpnSrc RpnData_4a_4a09
	db $00

	db $e4, $85, $11, $24
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $86, $61, $35
	RpnSrc RpnData_41_4000
	db $0f

	db $e4, $87, $41, $45
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $88, $51, $45
	RpnSrc RpnData_4a_52cc
	db $15

	db $e4, $89, $21, $45
	RpnSrc RpnData_41_4000
	db $1c

	db $e4, $8a, $11, $45
	RpnSrc RpnData_4a_564f
	db $1a

	db $e4, $8b, $31, $67
	RpnSrc RpnData_41_4000
	db $17

	db $e4, $8c, $51, $67
	RpnSrc RpnData_41_4000
	db $15

	db $e4, $8d, $31, $45
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $8e, $61, $57
	RpnSrc RpnData_41_4000
	db $16

	db $e4, $8f, $41, $67
	RpnSrc RpnData_4a_60da
	db $1b

	db $e4, $90, $21, $67
	RpnSrc RpnData_4a_61f8
	db $1c

	db $e4, $91, $11, $67
	RpnSrc RpnData_4a_63af
	db $00

	db $64, $92, $21, $27
	RpnSrc RpnData_41_4000
	db $00

	db $64, $93, $11, $27
	RpnSrc RpnData_41_4000
	db $00

	db $64, $94, $31, $27
	RpnSrc RpnData_41_4000
	db $00

	db $64, $95, $41, $27
	RpnSrc RpnData_41_4000
	db $00

	db $64, $96, $61, $27
	RpnSrc RpnData_41_4000
	db $00

	db $64, $97, $51, $27
	RpnSrc RpnData_41_4000
	db $00

	db $00

First8Days8pm::
	db $e4, $98, $01, $22
	RpnSrc RpnData_41_4000
	db $01

	db $e4, $99, $31, $45
	RpnSrc RpnData_4a_6f08
	db $00

	db $e4, $9a, $11, $45
	RpnSrc RpnData_4a_6ffd
	db $00

	db $00

First8Days9pm::
	db $00

Data_40_44e8::
	db $e4, $9b, $91, $00
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $9c, $61, $23
	RpnSrc RpnData_4b_45ae
	db $00

	db $e4, $9d, $31, $23
	RpnSrc RpnData_4b_469f
	db $00

	db $e4, $9e, $61, $35
	RpnSrc RpnData_4b_47a2
	db $00

	db $e4, $9f, $41, $56
	RpnSrc RpnData_4b_487e
	db $01

	db $e4, $a0, $51, $56
	RpnSrc RpnData_4b_4954
	db $01

	db $e4, $a1, $21, $67
	RpnSrc RpnData_4b_4a42
	db $00

	db $00

Data_40_4521::
	db $64, $07, $21, $07
	RpnSrc RpnData_43_5d70
	db $00

	db $64, $08, $11, $07
	RpnSrc RpnData_43_5e31
	db $00

	db $64, $09, $31, $07
	RpnSrc RpnData_43_5ef3
	db $00

	db $64, $0a, $51, $07
	RpnSrc RpnData_43_5fb3
	db $00

	db $64, $0b, $61, $07
	RpnSrc RpnData_43_6078
	db $00

	db $64, $0c, $41, $07
	RpnSrc RpnData_43_613a
	db $00

	db $64, $0d, $e1, $07
	RpnSrc RpnData_43_61f4
	db $00

	db $64, $0e, $91, $00
	RpnSrc RpnData_41_4000
	db $1e

	db $64, $a2, $91, $17
	RpnSrc RpnData_41_4000
	db $1e

	db $e4, $a3, $c1, $12
	RpnSrc RpnData_4b_5b75
	db $0d

	db $e4, $a4, $61, $13
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $a5, $31, $13
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $a6, $41, $13
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $a7, $51, $13
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $a8, $21, $13
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $a9, $11, $12
	RpnSrc RpnData_4b_71ea
	db $00

	db $e4, $aa, $c1, $34
	RpnSrc RpnData_4b_7e27
	db $0d

	db $e4, $ab, $51, $77
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $ac, $21, $77
	RpnSrc RpnData_41_4000
	db $20

	db $e4, $ad, $61, $77
	RpnSrc RpnData_41_4000
	db $0f

	db $e4, $ae, $11, $77
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $af, $31, $77
	RpnSrc RpnData_41_4000
	db $03

	db $e4, $b0, $41, $77
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $b1, $61, $35
	RpnSrc RpnData_41_4000
	db $0f

	db $e4, $b2, $31, $34
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $b3, $41, $35
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $b4, $51, $35
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $b5, $21, $35
	RpnSrc RpnData_41_4000
	db $12

	db $e4, $b6, $11, $35
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $b7, $d1, $45
	RpnSrc RpnData_4d_553e
	db $0d

	db $e4, $b8, $41, $46
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $b9, $61, $56
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $ba, $31, $56
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $bb, $51, $56
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $bc, $21, $56
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $bd, $11, $56
	RpnSrc RpnData_4d_7090
	db $00

	db $64, $23, $c1, $07
	RpnSrc RpnData_44_7b63
	db $00

	db $64, $24, $d1, $07
	RpnSrc RpnData_44_7f84
	db $00

	db $64, $25, $21, $00
	RpnSrc RpnData_41_4000
	db $00

	db $64, $26, $11, $00
	RpnSrc RpnData_41_4000
	db $00

	db $64, $27, $31, $00
	RpnSrc RpnData_41_4000
	db $00

	db $64, $28, $41, $00
	RpnSrc RpnData_41_4000
	db $00

	db $64, $29, $61, $00
	RpnSrc RpnData_41_4000
	db $00

	db $64, $2a, $51, $00
	RpnSrc RpnData_41_4000
	db $00

	db $64, $be, $21, $17
	RpnSrc RpnData_41_4000
	db $00

	db $64, $bf, $11, $17
	RpnSrc RpnData_41_4000
	db $00

	db $64, $c0, $31, $17
	RpnSrc RpnData_41_4000
	db $00

	db $64, $c1, $41, $17
	RpnSrc RpnData_41_4000
	db $00

	db $64, $c2, $61, $17
	RpnSrc RpnData_41_4000
	db $00

	db $64, $c3, $51, $17
	RpnSrc RpnData_41_4000
	db $00

	db $64, $2b, $e1, $07
	RpnSrc RpnData_45_4b1e
	db $10

	db $00

Data_40_46ba::
	db $e4, $2c, $01, $07
	RpnSrc RpnData_45_4d1e
	db $01

	db $00

Data_40_46c3::
	db $64, $2e, $61, $07
	RpnSrc RpnData_45_4f2f
	db $00

	db $64, $2f, $51, $07
	RpnSrc RpnData_45_59e5
	db $00

	db $64, $30, $41, $07
	RpnSrc RpnData_45_6371
	db $00

	db $64, $31, $31, $07
	RpnSrc RpnData_45_6d90
	db $00

	db $64, $32, $21, $07
	RpnSrc RpnData_45_775b
	db $00

	db $64, $33, $11, $07
	RpnSrc RpnData_46_438d
	db $00

	db $00

Data_40_46f4::
	db $00

Data_40_46f5::
	db $00

Data_40_46f6::
	db $e4, $c4, $29, $34
	RpnSrc RpnData_4d_7c4b
	db $12

	db $64, $38, $21, $07
	RpnSrc RpnData_46_55d8
	db $00

	db $64, $39, $11, $07
	RpnSrc RpnData_46_5699
	db $00

	db $64, $3a, $31, $07
	RpnSrc RpnData_46_575b
	db $00

	db $64, $3b, $51, $07
	RpnSrc RpnData_46_581b
	db $00

	db $64, $3c, $61, $07
	RpnSrc RpnData_46_58e0
	db $00

	db $64, $3d, $41, $07
	RpnSrc RpnData_46_59a2
	db $00

	db $64, $3e, $91, $00
	RpnSrc RpnData_41_4000
	db $1e

	db $64, $42, $e1, $07
	RpnSrc RpnData_46_7162
	db $00

	db $64, $c5, $91, $17
	RpnSrc RpnData_41_4000
	db $1e

	db $e4, $c6, $d1, $12
	RpnSrc RpnData_4e_4faa
	db $0d

	db $e4, $c7, $61, $12
	RpnSrc RpnData_4e_502f
	db $00

	db $e4, $c8, $31, $12
	RpnSrc RpnData_41_4000
	db $14

	db $e4, $c9, $41, $12
	RpnSrc RpnData_41_4000
	db $09

	db $e4, $ca, $51, $12
	RpnSrc RpnData_41_4000
	db $15

	db $e4, $cb, $21, $13
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $cc, $d1, $35
	RpnSrc RpnData_4e_6262
	db $0d

	db $e4, $cd, $51, $34
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $ce, $11, $34
	RpnSrc RpnData_4e_6896
	db $22

	db $e4, $cf, $31, $77
	RpnSrc RpnData_4e_6c3e
	db $03

	db $e4, $d0, $11, $77
	RpnSrc RpnData_4e_73f0
	db $00

	db $e4, $d1, $41, $77
	RpnSrc RpnData_4e_7b9f
	db $00

	db $e4, $d2, $61, $77
	RpnSrc RpnData_4f_46db
	db $0f

	db $e4, $d3, $51, $77
	RpnSrc RpnData_4f_4f93
	db $00

	db $e4, $d4, $21, $77
	RpnSrc RpnData_4f_5625
	db $20

	db $e4, $d5, $11, $12
	RpnSrc RpnData_41_4000
	db $22

	db $e4, $d6, $21, $24
	RpnSrc RpnData_41_4000
	db $2a

	db $e4, $d7, $61, $34
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $d8, $31, $34
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $d9, $41, $34
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $da, $c1, $57
	RpnSrc RpnData_4f_7ff7
	db $0d

	db $e4, $db, $c1, $25
	RpnSrc RpnData_41_4000
	db $0d

	db $e4, $dc, $61, $45
	RpnSrc RpnData_41_4000
	db $28

	db $e4, $dd, $31, $45
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $de, $41, $45
	RpnSrc RpnData_50_4a90
	db $1b

	db $e4, $df, $51, $45
	RpnSrc RpnData_50_4cf9
	db $0c

	db $e4, $e0, $21, $45
	RpnSrc RpnData_50_514c
	db $1d

	db $e4, $e1, $11, $45
	RpnSrc RpnData_50_552d
	db $00

	db $64, $55, $d1, $07
	RpnSrc RpnData_47_7444
	db $00

	db $64, $56, $c1, $07
	RpnSrc RpnData_47_786c
	db $00

	db $64, $e2, $21, $16
	RpnSrc RpnData_41_4000
	db $00

	db $64, $e3, $11, $16
	RpnSrc RpnData_41_4000
	db $00

	db $64, $e4, $31, $16
	RpnSrc RpnData_41_4000
	db $00

	db $64, $e5, $41, $16
	RpnSrc RpnData_41_4000
	db $00

	db $64, $e6, $61, $16
	RpnSrc RpnData_41_4000
	db $00

	db $64, $e7, $51, $16
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $e8, $21, $77
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $e9, $11, $77
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $ea, $31, $77
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $eb, $41, $77
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $ec, $61, $77
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $ed, $51, $77
	RpnSrc RpnData_41_4000
	db $00

	db $64, $63, $e1, $07
	RpnSrc RpnData_48_4a51
	db $10

	db $00

Data_40_489f::
	db $00

Data_40_48a0::
	db $00

Data_40_48a1::
	db $e4, $64, $01, $07
	RpnSrc RpnData_48_4c58
	db $01

	db $e4, $65, $01, $07
	RpnSrc RpnData_48_4cb4
	db $01

	db $00

Data_40_48b2::
	db $e4, $67, $91, $00
	RpnSrc RpnData_48_4d7f
	db $00

	db $e4, $ee, $91, $17
	RpnSrc RpnData_50_65bd
	db $00

	db $64, $68, $01, $07
	RpnSrc RpnData_48_5738
	db $00

	db $64, $69, $61, $07
	RpnSrc RpnData_48_5794
	db $00

	db $64, $6a, $51, $07
	RpnSrc RpnData_48_62ca
	db $00

	db $64, $6b, $41, $07
	RpnSrc RpnData_48_6d49
	db $00

	db $64, $6c, $31, $07
	RpnSrc RpnData_48_7827
	db $00

	db $64, $6d, $21, $07
	RpnSrc RpnData_49_430f
	db $00

	db $64, $6e, $11, $07
	RpnSrc RpnData_49_4fcc
	db $00

	db $00

Data_40_48fb::
	db $00

Data_40_48fc::
	db $e4, $ef, $31, $45
	RpnSrc RpnData_50_6ed6
	db $00

	db $00

Data_40_4905::
	db $e4, $f0, $69, $12
	RpnSrc RpnData_50_7154
	db $0e

	db $e4, $f1, $39, $12
	RpnSrc RpnData_50_78f8
	db $17

	db $e4, $f2, $59, $12
	RpnSrc RpnData_50_7a11
	db $00

	db $e4, $f3, $19, $13
	RpnSrc RpnData_50_7be1
	db $2a

	db $e4, $f4, $69, $34
	RpnSrc RpnData_51_403a
	db $28

	db $e4, $f5, $49, $45
	RpnSrc RpnData_51_43de
	db $1b

	db $e4, $f6, $59, $45
	RpnSrc RpnData_51_4eb4
	db $15

	db $e4, $f7, $29, $56
	RpnSrc RpnData_51_542c
	db $2b

	db $64, $79, $21, $07
	RpnSrc RpnData_49_729f
	db $00

	db $64, $7a, $11, $07
	RpnSrc RpnData_49_7360
	db $00

	db $64, $7b, $31, $07
	RpnSrc RpnData_49_7422
	db $00

	db $64, $7c, $51, $07
	RpnSrc RpnData_49_74e2
	db $00

	db $64, $7d, $61, $07
	RpnSrc RpnData_49_75a7
	db $00

	db $64, $7e, $41, $07
	RpnSrc RpnData_49_7669
	db $00

	db $64, $7f, $91, $00
	RpnSrc RpnData_41_4000
	db $1e

	db $64, $f8, $91, $17
	RpnSrc RpnData_41_4000
	db $1e

	db $e4, $f9, $61, $13
	RpnSrc RpnData_41_4000
	db $16

	db $e4, $fa, $31, $13
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $fb, $41, $13
	RpnSrc RpnData_41_4000
	db $1b

	db $e4, $fc, $51, $13
	RpnSrc RpnData_41_4000
	db $24

	db $e4, $fd, $21, $13
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $fe, $11, $13
	RpnSrc RpnData_41_4000
	db $14

	db $e4, $ff, $61, $35
	RpnSrc RpnData_41_4000
	db $03

	db $e4, $00, $32, $35
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $01, $42, $35
	RpnSrc RpnData_41_4000
	db $0a

	db $e4, $02, $52, $35
	RpnSrc RpnData_41_4000
	db $2a

	db $e4, $03, $22, $35
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $04, $12, $35
	RpnSrc RpnData_41_4000
	db $23

	db $e4, $05, $62, $57
	RpnSrc RpnData_41_4000
	db $09

	db $e4, $06, $32, $57
	RpnSrc RpnData_41_4000
	db $14

	db $e4, $07, $42, $57
	RpnSrc RpnData_41_4000
	db $1b

	db $e4, $08, $52, $57
	RpnSrc RpnData_41_4000
	db $0f

	db $e4, $09, $22, $57
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $0a, $12, $57
	RpnSrc RpnData_41_4000
	db $00

	db $64, $0b, $32, $34
	RpnSrc RpnData_41_4000
	db $00

	db $64, $0c, $22, $45
	RpnSrc RpnData_41_4000
	db $00

	db $64, $0d, $12, $45
	RpnSrc RpnData_41_4000
	db $00

	db $64, $0e, $62, $45
	RpnSrc RpnData_41_4000
	db $00

	db $64, $0f, $42, $56
	RpnSrc RpnData_41_4000
	db $00

	db $64, $10, $52, $56
	RpnSrc RpnData_41_4000
	db $00

	db $64, $92, $21, $00
	RpnSrc RpnData_41_4000
	db $00

	db $64, $93, $11, $00
	RpnSrc RpnData_41_4000
	db $00

	db $64, $94, $31, $00
	RpnSrc RpnData_41_4000
	db $00

	db $64, $95, $41, $00
	RpnSrc RpnData_41_4000
	db $00

	db $64, $96, $61, $00
	RpnSrc RpnData_41_4000
	db $00

	db $64, $97, $51, $00
	RpnSrc RpnData_41_4000
	db $00

	db $64, $11, $22, $17
	RpnSrc RpnData_41_4000
	db $00

	db $64, $12, $12, $17
	RpnSrc RpnData_41_4000
	db $00

	db $64, $13, $32, $17
	RpnSrc RpnData_41_4000
	db $00

	db $64, $14, $42, $17
	RpnSrc RpnData_41_4000
	db $00

	db $64, $15, $62, $17
	RpnSrc RpnData_41_4000
	db $00

	db $64, $16, $52, $17
	RpnSrc RpnData_41_4000
	db $00

	db $00

Data_40_4aa6::
	db $e4, $17, $42, $12
	RpnSrc RpnData_52_7a89
	db $01

	db $e4, $18, $12, $56
	RpnSrc RpnData_52_7cc7
	db $00

	db $00

Data_40_4ab7::
	db $00

Data_40_4ab8::
	db $e4, $19, $22, $14
	RpnSrc RpnData_53_406b
	db $00

	db $e4, $1a, $62, $14
	RpnSrc RpnData_53_56a9
	db $00

	db $e4, $1b, $42, $14
	RpnSrc RpnData_53_7216
	db $00

	db $e4, $1c, $32, $14
	RpnSrc RpnData_54_456d
	db $00

	db $e4, $1d, $52, $14
	RpnSrc RpnData_54_5d7d
	db $00

	db $e4, $1e, $12, $14
	RpnSrc RpnData_54_6fd2
	db $00

	db $e4, $1f, $22, $34
	RpnSrc RpnData_55_4419
	db $00

	db $e4, $20, $12, $34
	RpnSrc RpnData_55_462b
	db $00

	db $e4, $21, $22, $45
	RpnSrc RpnData_55_4826
	db $00

	db $e4, $22, $62, $66
	RpnSrc RpnData_55_4939
	db $00

	db $e4, $23, $32, $66
	RpnSrc RpnData_55_55d9
	db $00

	db $e4, $24, $42, $66
	RpnSrc RpnData_55_6179
	db $00

	db $e4, $25, $52, $66
	RpnSrc RpnData_55_6db2
	db $00

	db $e4, $26, $22, $66
	RpnSrc RpnData_55_7ce9
	db $00

	db $e4, $27, $12, $66
	RpnSrc RpnData_56_489d
	db $00

	db $00

Data_40_4b31::
	db $64, $07, $21, $07
	RpnSrc RpnData_43_5d70
	db $00

	db $64, $08, $11, $07
	RpnSrc RpnData_43_5e31
	db $00

	db $64, $09, $31, $07
	RpnSrc RpnData_43_5ef3
	db $00

	db $64, $0a, $51, $07
	RpnSrc RpnData_43_5fb3
	db $00

	db $64, $0b, $61, $07
	RpnSrc RpnData_43_6078
	db $00

	db $64, $0c, $41, $07
	RpnSrc RpnData_43_613a
	db $00

	db $64, $0d, $e1, $07
	RpnSrc RpnData_43_61f4
	db $00

	db $64, $28, $92, $06
	RpnSrc RpnData_41_4000
	db $1e

	db $e4, $29, $62, $02
	RpnSrc RpnData_41_4000
	db $0f

	db $e4, $2a, $32, $01
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $2b, $42, $01
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $2c, $52, $02
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $2d, $22, $02
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $2e, $12, $02
	RpnSrc RpnData_56_7ed1
	db $00

	db $e4, $2f, $d2, $12
	RpnSrc RpnData_57_429d
	db $0d

	db $e4, $30, $c2, $45
	RpnSrc RpnData_57_4390
	db $0d

	db $e4, $31, $32, $66
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $32, $12, $66
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $33, $42, $66
	RpnSrc RpnData_41_4000
	db $1b

	db $e4, $34, $62, $66
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $35, $52, $66
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $36, $22, $66
	RpnSrc RpnData_41_4000
	db $00

	db $64, $37, $92, $77
	RpnSrc RpnData_41_4000
	db $1e

	db $e4, $38, $d2, $77
	RpnSrc RpnData_57_6fca
	db $0d

	db $e4, $39, $62, $77
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $3a, $32, $77
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $3b, $42, $77
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $3c, $52, $77
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $3d, $22, $77
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $3e, $12, $77
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $3f, $c2, $03
	RpnSrc RpnData_58_46a4
	db $0d

	db $e4, $40, $42, $13
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $41, $62, $24
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $42, $32, $24
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $43, $52, $24
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $44, $22, $24
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $45, $12, $24
	RpnSrc RpnData_58_5e0e
	db $00

	db $e4, $46, $42, $35
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $47, $62, $45
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $48, $22, $45
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $49, $32, $45
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $4a, $52, $45
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $4b, $12, $45
	RpnSrc RpnData_58_79d6
	db $00

	db $64, $23, $c1, $07
	RpnSrc RpnData_44_7b63
	db $00

	db $64, $24, $d1, $07
	RpnSrc RpnData_44_7f84
	db $00

	db $64, $4c, $22, $06
	RpnSrc RpnData_41_4000
	db $00

	db $64, $4d, $12, $06
	RpnSrc RpnData_41_4000
	db $00

	db $64, $4e, $32, $06
	RpnSrc RpnData_41_4000
	db $00

	db $64, $4f, $42, $06
	RpnSrc RpnData_41_4000
	db $00

	db $64, $50, $62, $06
	RpnSrc RpnData_41_4000
	db $00

	db $64, $51, $52, $06
	RpnSrc RpnData_41_4000
	db $00

	db $64, $52, $22, $77
	RpnSrc RpnData_41_4000
	db $00

	db $64, $53, $12, $77
	RpnSrc RpnData_41_4000
	db $00

	db $64, $54, $32, $77
	RpnSrc RpnData_41_4000
	db $00

	db $64, $55, $42, $77
	RpnSrc RpnData_41_4000
	db $00

	db $64, $56, $62, $77
	RpnSrc RpnData_41_4000
	db $00

	db $64, $57, $52, $77
	RpnSrc RpnData_41_4000
	db $00

	db $64, $2b, $e1, $07
	RpnSrc RpnData_45_4b1e
	db $10

	db $00

Data_40_4d02::
	db $e4, $2c, $01, $07
	RpnSrc RpnData_45_4d1e
	db $01

	db $00

Data_40_4d0b::
	db $64, $2e, $61, $07
	RpnSrc RpnData_45_4f2f
	db $00

	db $64, $2f, $51, $07
	RpnSrc RpnData_45_59e5
	db $00

	db $64, $30, $41, $07
	RpnSrc RpnData_45_6371
	db $00

	db $64, $31, $31, $07
	RpnSrc RpnData_45_6d90
	db $00

	db $64, $32, $21, $07
	RpnSrc RpnData_45_775b
	db $00

	db $64, $33, $11, $07
	RpnSrc RpnData_46_438d
	db $00

	db $00

Data_40_4d3c::
	db $00

Data_40_4d3d::
	db $00

Data_40_4d3e::
	db $e4, $58, $5a, $02
	RpnSrc RpnData_59_4cce
	db $15

	db $e4, $59, $6a, $14
	RpnSrc RpnData_59_51ac
	db $00

	db $e4, $5a, $3a, $12
	RpnSrc RpnData_59_57eb
	db $29

	db $e4, $5b, $1a, $34
	RpnSrc RpnData_59_5ef1
	db $03

	db $64, $38, $21, $07
	RpnSrc RpnData_46_55d8
	db $00

	db $64, $39, $11, $07
	RpnSrc RpnData_46_5699
	db $00

	db $64, $3a, $31, $07
	RpnSrc RpnData_46_575b
	db $00

	db $64, $3b, $51, $07
	RpnSrc RpnData_46_581b
	db $00

	db $64, $3c, $61, $07
	RpnSrc RpnData_46_58e0
	db $00

	db $64, $3d, $41, $07
	RpnSrc RpnData_46_59a2
	db $00

	db $64, $42, $e1, $07
	RpnSrc RpnData_46_7162
	db $00

	db $64, $5c, $92, $06
	RpnSrc RpnData_41_4000
	db $1e

	db $e4, $5d, $62, $02
	RpnSrc RpnData_41_4000
	db $16

	db $e4, $5e, $32, $02
	RpnSrc RpnData_41_4000
	db $05

	db $e4, $5f, $42, $01
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $60, $52, $02
	RpnSrc RpnData_41_4000
	db $03

	db $e4, $61, $22, $01
	RpnSrc RpnData_41_4000
	db $2a

	db $e4, $62, $12, $02
	RpnSrc RpnData_41_4000
	db $02

	db $e4, $63, $d2, $34
	RpnSrc RpnData_5a_4eeb
	db $0d

	db $e4, $64, $62, $66
	RpnSrc RpnData_5a_4f85
	db $00

	db $e4, $65, $52, $66
	RpnSrc RpnData_5a_5691
	db $00

	db $e4, $66, $22, $66
	RpnSrc RpnData_5a_5b45
	db $00

	db $e4, $67, $32, $66
	RpnSrc RpnData_5a_61b8
	db $00

	db $e4, $68, $42, $66
	RpnSrc RpnData_5a_65a9
	db $1b

	db $e4, $69, $12, $66
	RpnSrc RpnData_5a_668c
	db $00

	db $64, $6a, $92, $77
	RpnSrc RpnData_41_4000
	db $1e

	db $e4, $6b, $62, $77
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $6c, $32, $77
	RpnSrc RpnData_41_4000
	db $17

	db $e4, $6d, $42, $77
	RpnSrc RpnData_41_4000
	db $1b

	db $e4, $6e, $52, $77
	RpnSrc RpnData_41_4000
	db $15

	db $e4, $6f, $22, $77
	RpnSrc RpnData_41_4000
	db $08

	db $e4, $70, $12, $77
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $71, $42, $12
	RpnSrc RpnData_41_4000
	db $08

	db $e4, $72, $d2, $24
	RpnSrc RpnData_5b_4f7a
	db $0d

	db $e4, $73, $62, $23
	RpnSrc RpnData_41_4000
	db $2a

	db $e4, $74, $32, $23
	RpnSrc RpnData_41_4000
	db $0a

	db $e4, $75, $52, $23
	RpnSrc RpnData_41_4000
	db $24

	db $e4, $76, $22, $23
	RpnSrc RpnData_41_4000
	db $20

	db $e4, $77, $12, $23
	RpnSrc RpnData_41_4000
	db $09

	db $e4, $78, $62, $34
	RpnSrc RpnData_41_4000
	db $28

	db $e4, $79, $d2, $03
	RpnSrc RpnData_41_4000
	db $0d

	db $e4, $7a, $42, $24
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $7b, $32, $34
	RpnSrc RpnData_41_4000
	db $14

	db $e4, $7c, $52, $34
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $7d, $22, $34
	RpnSrc RpnData_5c_518b
	db $2b

	db $e4, $7e, $12, $34
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $7f, $c2, $77
	RpnSrc RpnData_5c_5958
	db $0d

	db $64, $55, $d1, $07
	RpnSrc RpnData_47_7444
	db $00

	db $64, $56, $c1, $07
	RpnSrc RpnData_47_786c
	db $00

	db $64, $80, $22, $05
	RpnSrc RpnData_41_4000
	db $00

	db $64, $81, $12, $05
	RpnSrc RpnData_41_4000
	db $00

	db $64, $82, $32, $05
	RpnSrc RpnData_41_4000
	db $00

	db $64, $83, $42, $05
	RpnSrc RpnData_41_4000
	db $00

	db $64, $84, $62, $05
	RpnSrc RpnData_41_4000
	db $00

	db $64, $85, $52, $05
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $86, $22, $66
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $87, $12, $66
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $88, $32, $66
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $89, $42, $66
	RpnSrc RpnData_5c_7394
	db $00

	db $e4, $8a, $62, $66
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $8b, $52, $66
	RpnSrc RpnData_41_4000
	db $00

	db $64, $8c, $22, $77
	RpnSrc RpnData_41_4000
	db $00

	db $64, $8d, $12, $77
	RpnSrc RpnData_41_4000
	db $00

	db $64, $8e, $32, $77
	RpnSrc RpnData_41_4000
	db $00

	db $64, $8f, $42, $77
	RpnSrc RpnData_41_4000
	db $00

	db $64, $90, $62, $77
	RpnSrc RpnData_41_4000
	db $00

	db $64, $91, $52, $77
	RpnSrc RpnData_41_4000
	db $00

	db $64, $63, $e1, $07
	RpnSrc RpnData_48_4a51
	db $10

	db $00

Data_40_4f5f::
	db $00

Data_40_4f60::
	db $00

Data_40_4f61::
	db $e4, $64, $01, $07
	RpnSrc RpnData_48_4c58
	db $01

	db $e4, $65, $01, $07
	RpnSrc RpnData_48_4cb4
	db $01

	db $00

Data_40_4f72::
	db $e4, $ee, $91, $00
	RpnSrc RpnData_50_65bd
	db $00

	db $e4, $92, $92, $06
	RpnSrc RpnData_5c_7ea7
	db $00

	db $64, $68, $01, $07
	RpnSrc RpnData_48_5738
	db $00

	db $64, $69, $61, $07
	RpnSrc RpnData_48_5794
	db $00

	db $64, $6a, $51, $07
	RpnSrc RpnData_48_62ca
	db $00

	db $64, $6b, $41, $07
	RpnSrc RpnData_48_6d49
	db $00

	db $64, $6c, $31, $07
	RpnSrc RpnData_48_7827
	db $00

	db $64, $6d, $21, $07
	RpnSrc RpnData_49_430f
	db $00

	db $64, $6e, $11, $07
	RpnSrc RpnData_49_4fcc
	db $00

	db $00

Data_40_4fbb::
	db $00

Data_40_4fbc::
	db $e4, $93, $52, $02
	RpnSrc RpnData_5d_47c0
	db $01

	db $e4, $94, $12, $34
	RpnSrc RpnData_5d_48b2
	db $00

	db $e4, $95, $42, $66
	RpnSrc RpnData_5d_49a1
	db $1b

	db $00

Data_40_4fd5::
	db $e4, $96, $3a, $01
	RpnSrc RpnData_5d_4a62
	db $0e

	db $e4, $97, $22, $12
	RpnSrc RpnData_5d_4be2
	db $2a

	db $e4, $98, $6a, $34
	RpnSrc RpnData_5d_5041
	db $0f

	db $e4, $99, $2a, $34
	RpnSrc RpnData_5d_54a7
	db $05

	db $e4, $9a, $1a, $34
	RpnSrc RpnData_5d_59cc
	db $1a

	db $e4, $9b, $5a, $45
	RpnSrc RpnData_5d_5f9c
	db $00

	db $e4, $9c, $22, $77
	RpnSrc RpnData_5d_6315
	db $1c

	db $e4, $9d, $1a, $77
	RpnSrc RpnData_5d_657b
	db $00

	db $64, $79, $21, $07
	RpnSrc RpnData_49_729f
	db $00

	db $64, $7a, $11, $07
	RpnSrc RpnData_49_7360
	db $00

	db $64, $7b, $31, $07
	RpnSrc RpnData_49_7422
	db $00

	db $64, $7c, $51, $07
	RpnSrc RpnData_49_74e2
	db $00

	db $64, $7d, $61, $07
	RpnSrc RpnData_49_75a7
	db $00

	db $64, $7e, $41, $07
	RpnSrc RpnData_49_7669
	db $00

	db $64, $9e, $92, $06
	RpnSrc RpnData_41_4000
	db $1e

	db $e4, $9f, $62, $02
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $a0, $32, $01
	RpnSrc RpnData_41_4000
	db $04

	db $e4, $a1, $42, $02
	RpnSrc RpnData_41_4000
	db $1b

	db $e4, $a2, $52, $01
	RpnSrc RpnData_41_4000
	db $2a

	db $e4, $a3, $22, $02
	RpnSrc RpnData_41_4000
	db $1c

	db $e4, $a4, $12, $01
	RpnSrc RpnData_41_4000
	db $05

	db $64, $a5, $92, $77
	RpnSrc RpnData_41_4000
	db $1e

	db $e4, $a6, $62, $77
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $a7, $42, $77
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $a8, $52, $77
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $a9, $22, $77
	RpnSrc RpnData_41_4000
	db $2a

	db $e4, $aa, $12, $77
	RpnSrc RpnData_41_4000
	db $03

	db $e4, $ab, $62, $23
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $ac, $32, $24
	RpnSrc RpnData_41_4000
	db $08

	db $e4, $ad, $42, $23
	RpnSrc RpnData_41_4000
	db $2a

	db $e4, $ae, $52, $23
	RpnSrc RpnData_41_4000
	db $05

	db $e4, $af, $22, $24
	RpnSrc RpnData_41_4000
	db $1c

	db $e4, $b0, $12, $24
	RpnSrc RpnData_5f_4d45
	db $0e

	db $e4, $b1, $32, $77
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $b2, $62, $46
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $b3, $32, $46
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $b4, $42, $46
	RpnSrc RpnData_41_4000
	db $09

	db $e4, $b5, $52, $46
	RpnSrc RpnData_41_4000
	db $15

	db $e4, $b6, $22, $46
	RpnSrc RpnData_41_4000
	db $05

	db $e4, $b7, $12, $56
	RpnSrc RpnData_41_4000
	db $2a

	db $64, $b8, $52, $34
	RpnSrc RpnData_41_4000
	db $00

	db $64, $b9, $22, $45
	RpnSrc RpnData_41_4000
	db $00

	db $64, $ba, $12, $45
	RpnSrc RpnData_41_4000
	db $00

	db $64, $bb, $32, $45
	RpnSrc RpnData_41_4000
	db $00

	db $64, $bc, $42, $45
	RpnSrc RpnData_41_4000
	db $00

	db $64, $bd, $62, $45
	RpnSrc RpnData_41_4000
	db $00

	db $64, $be, $22, $06
	RpnSrc RpnData_41_4000
	db $00

	db $64, $bf, $12, $06
	RpnSrc RpnData_41_4000
	db $00

	db $64, $c0, $32, $06
	RpnSrc RpnData_41_4000
	db $00

	db $64, $c1, $42, $06
	RpnSrc RpnData_41_4000
	db $00

	db $64, $c2, $62, $06
	RpnSrc RpnData_41_4000
	db $00

	db $64, $c3, $52, $06
	RpnSrc RpnData_41_4000
	db $00

	db $64, $c4, $22, $77
	RpnSrc RpnData_41_4000
	db $00

	db $64, $c5, $12, $77
	RpnSrc RpnData_41_4000
	db $00

	db $64, $c6, $32, $77
	RpnSrc RpnData_41_4000
	db $00

	db $64, $c7, $42, $77
	RpnSrc RpnData_41_4000
	db $00

	db $64, $c8, $62, $77
	RpnSrc RpnData_41_4000
	db $00

	db $64, $c9, $52, $77
	RpnSrc RpnData_41_4000
	db $00

	db $00

Data_40_51a6::
	db $e4, $ca, $42, $23
	RpnSrc RpnData_5f_7f53
	db $01

	db $e4, $cb, $62, $55
	RpnSrc RpnData_60_413e
	db $00

	db $e4, $cc, $32, $55
	RpnSrc RpnData_60_42fb
	db $00

	db $e4, $cd, $42, $55
	RpnSrc RpnData_60_44c9
	db $00

	db $e4, $ce, $52, $55
	RpnSrc RpnData_60_4677
	db $00

	db $e4, $cf, $22, $55
	RpnSrc RpnData_60_4827
	db $00

	db $e4, $d0, $12, $55
	RpnSrc RpnData_60_4a09
	db $00

	db $e4, $d1, $62, $77
	RpnSrc RpnData_60_4bdc
	db $01

	db $e4, $d2, $42, $34
	RpnSrc RpnData_60_5360
	db $01

	db $00

Data_40_51ef::
	db $00

Data_40_51f0::
	db $e4, $d3, $22, $03
	RpnSrc RpnData_60_556c
	db $00

	db $e4, $d4, $62, $03
	RpnSrc RpnData_60_6b81
	db $00

	db $e4, $d5, $42, $03
	RpnSrc RpnData_61_494f
	db $00

	db $e4, $d6, $32, $03
	RpnSrc RpnData_61_5bbc
	db $00

	db $e4, $d7, $52, $03
	RpnSrc RpnData_62_4dc4
	db $00

	db $e4, $d8, $12, $03
	RpnSrc RpnData_62_621a
	db $00

	db $e4, $d9, $52, $55
	RpnSrc RpnData_63_40c0
	db $00

	db $e4, $da, $22, $55
	RpnSrc RpnData_63_5abf
	db $00

	db $e4, $db, $12, $55
	RpnSrc RpnData_63_7269
	db $00

	db $e4, $dc, $62, $55
	RpnSrc RpnData_64_4b82
	db $00

	db $e4, $dd, $42, $55
	RpnSrc RpnData_64_6579
	db $00

	db $e4, $de, $32, $55
	RpnSrc RpnData_64_7bc0
	db $00

	db $e4, $df, $02, $66
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $e0, $02, $77
	RpnSrc RpnData_41_4000
	db $01

	db $e4, $e1, $92, $55
	RpnSrc RpnData_41_4000
	db $01

	db $e4, $e2, $32, $12
	RpnSrc RpnData_66_671a
	db $00

	db $e4, $e3, $52, $23
	RpnSrc RpnData_66_691e
	db $00

	db $00

Data_40_5279::
	db $64, $07, $21, $05
	RpnSrc RpnData_43_5d70
	db $00

	db $64, $08, $11, $05
	RpnSrc RpnData_43_5e31
	db $00

	db $64, $09, $31, $05
	RpnSrc RpnData_43_5ef3
	db $00

	db $64, $0a, $51, $05
	RpnSrc RpnData_43_5fb3
	db $00

	db $64, $0b, $61, $05
	RpnSrc RpnData_43_6078
	db $00

	db $64, $0c, $41, $05
	RpnSrc RpnData_43_613a
	db $00

	db $64, $0d, $e1, $04
	RpnSrc RpnData_43_61f4
	db $00

	db $64, $37, $92, $05
	RpnSrc RpnData_41_4000
	db $1e

	db $e4, $38, $d2, $00
	RpnSrc RpnData_57_6fca
	db $0d

	db $e4, $39, $62, $01
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $3a, $32, $01
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $3b, $42, $01
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $3c, $52, $01
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $3d, $22, $01
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $3e, $12, $01
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $e4, $62, $12
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $e5, $32, $12
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $e6, $42, $12
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $e7, $52, $13
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $e8, $22, $13
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $e9, $12, $13
	RpnSrc RpnData_66_7d10
	db $00

	db $e4, $ea, $62, $24
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $eb, $32, $24
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $ec, $42, $23
	RpnSrc RpnData_41_4000
	db $2a

	db $e4, $ed, $52, $34
	RpnSrc RpnData_41_4000
	db $15

	db $e4, $ee, $22, $34
	RpnSrc RpnData_41_4000
	db $14

	db $e4, $ef, $12, $34
	RpnSrc RpnData_41_4000
	db $00

	db $64, $23, $c1, $04
	RpnSrc RpnData_44_7b63
	db $00

	db $64, $24, $d1, $04
	RpnSrc RpnData_44_7f84
	db $00

	db $64, $52, $22, $04
	RpnSrc RpnData_41_4000
	db $00

	db $64, $53, $12, $04
	RpnSrc RpnData_41_4000
	db $00

	db $64, $54, $32, $04
	RpnSrc RpnData_41_4000
	db $00

	db $64, $55, $42, $04
	RpnSrc RpnData_41_4000
	db $00

	db $64, $56, $62, $04
	RpnSrc RpnData_41_4000
	db $00

	db $64, $57, $52, $04
	RpnSrc RpnData_41_4000
	db $00

	db $64, $2b, $e1, $07
	RpnSrc RpnData_45_4b1e
	db $10

	db $00

Data_40_539a::
	db $e4, $2c, $01, $06
	RpnSrc RpnData_45_4d1e
	db $01

	db $00

Data_40_53a3::
	db $64, $2e, $61, $06
	RpnSrc RpnData_45_4f2f
	db $00

	db $64, $2f, $51, $06
	RpnSrc RpnData_45_59e5
	db $00

	db $64, $30, $41, $06
	RpnSrc RpnData_45_6371
	db $00

	db $64, $31, $31, $06
	RpnSrc RpnData_45_6d90
	db $00

	db $64, $32, $21, $06
	RpnSrc RpnData_45_775b
	db $00

	db $64, $33, $11, $06
	RpnSrc RpnData_46_438d
	db $00

	db $00

Data_40_53d4::
	db $00

Data_40_53d5::
	db $00

Data_40_53d6::
	db $e4, $f0, $42, $02
	RpnSrc RpnData_67_59af
	db $00

	db $e4, $f1, $3a, $12
	RpnSrc RpnData_67_775f
	db $0e

	db $64, $38, $21, $05
	RpnSrc RpnData_46_55d8
	db $00

	db $64, $39, $11, $05
	RpnSrc RpnData_46_5699
	db $00

	db $64, $3a, $31, $05
	RpnSrc RpnData_46_575b
	db $00

	db $64, $3b, $51, $05
	RpnSrc RpnData_46_581b
	db $00

	db $64, $3c, $61, $05
	RpnSrc RpnData_46_58e0
	db $00

	db $64, $3d, $41, $05
	RpnSrc RpnData_46_59a2
	db $00

	db $64, $42, $e1, $04
	RpnSrc RpnData_46_7162
	db $00

	db $64, $6a, $92, $05
	RpnSrc RpnData_41_4000
	db $1e

	db $e4, $6b, $62, $00
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $6c, $32, $00
	RpnSrc RpnData_41_4000
	db $17

	db $e4, $6d, $42, $01
	RpnSrc RpnData_41_4000
	db $1b

	db $e4, $6e, $52, $01
	RpnSrc RpnData_41_4000
	db $15

	db $e4, $6f, $22, $01
	RpnSrc RpnData_41_4000
	db $08

	db $e4, $70, $12, $00
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $f2, $d2, $23
	RpnSrc RpnData_67_7baa
	db $0d

	db $e4, $f3, $c2, $02
	RpnSrc RpnData_67_7c2e
	db $0d

	db $e4, $f4, $62, $01
	RpnSrc RpnData_41_4000
	db $0f

	db $e4, $f5, $32, $02
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $f6, $12, $02
	RpnSrc RpnData_68_46a7
	db $00

	db $e4, $f7, $42, $12
	RpnSrc RpnData_41_4000
	db $05

	db $e4, $f8, $52, $12
	RpnSrc RpnData_41_4000
	db $15

	db $e4, $f9, $22, $12
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $7f, $c2, $02
	RpnSrc RpnData_5c_5958
	db $0d

	db $e4, $fa, $62, $13
	RpnSrc RpnData_41_4000
	db $28

	db $e4, $fb, $32, $23
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $fc, $42, $23
	RpnSrc RpnData_41_4000
	db $1b

	db $e4, $fd, $52, $23
	RpnSrc RpnData_41_4000
	db $0c

	db $e4, $fe, $22, $23
	RpnSrc RpnData_68_65c6
	db $00

	db $e4, $ff, $12, $23
	RpnSrc RpnData_41_4000
	db $08

	db $64, $55, $d1, $04
	RpnSrc RpnData_47_7444
	db $00

	db $64, $56, $c1, $04
	RpnSrc RpnData_47_786c
	db $00

	db $64, $8c, $22, $04
	RpnSrc RpnData_41_4000
	db $00

	db $64, $8d, $12, $04
	RpnSrc RpnData_41_4000
	db $00

	db $64, $8e, $32, $04
	RpnSrc RpnData_41_4000
	db $00

	db $64, $8f, $42, $04
	RpnSrc RpnData_41_4000
	db $00

	db $64, $90, $62, $04
	RpnSrc RpnData_41_4000
	db $00

	db $64, $91, $52, $04
	RpnSrc RpnData_41_4000
	db $00

	db $64, $63, $e1, $07
	RpnSrc RpnData_48_4a51
	db $10

	db $00

Data_40_5517::
	db $00

Data_40_5518::
	db $00

Data_40_5519::
	db $e4, $64, $01, $06
	RpnSrc RpnData_48_4c58
	db $01

	db $e4, $65, $01, $06
	RpnSrc RpnData_48_4cb4
	db $01

	db $00

Data_40_552a::
	db $e4, $00, $03, $44
	RpnSrc RpnData_68_6956
	db $00

	db $e4, $01, $93, $44
	RpnSrc RpnData_68_75da
	db $00

	db $64, $68, $01, $06
	RpnSrc RpnData_48_5738
	db $00

	db $64, $69, $61, $06
	RpnSrc RpnData_48_5794
	db $00

	db $64, $6a, $51, $06
	RpnSrc RpnData_48_62ca
	db $00

	db $64, $6b, $41, $06
	RpnSrc RpnData_48_6d49
	db $00

	db $64, $6c, $31, $06
	RpnSrc RpnData_48_7827
	db $00

	db $64, $6d, $21, $06
	RpnSrc RpnData_49_430f
	db $00

	db $64, $6e, $11, $06
	RpnSrc RpnData_49_4fcc
	db $00

	db $00

Data_40_5573::
	db $00

Data_40_5574::
	db $e4, $02, $33, $12
	RpnSrc RpnData_68_7ef7
	db $00

	db $00

Data_40_557d::
	db $e4, $9c, $22, $01
	RpnSrc RpnData_5d_6315
	db $1c

	db $e4, $9d, $1a, $00
	RpnSrc RpnData_5d_657b
	db $00

	db $e4, $03, $3b, $02
	RpnSrc RpnData_68_7fc4
	db $00

	db $e4, $04, $6b, $13
	RpnSrc RpnData_69_4190
	db $28

	db $e4, $05, $5b, $12
	RpnSrc RpnData_69_430b
	db $15

	db $e4, $06, $4b, $23
	RpnSrc RpnData_69_45ee
	db $2b

	db $e4, $07, $5b, $23
	RpnSrc RpnData_69_47ab
	db $22

	db $e4, $08, $2b, $23
	RpnSrc RpnData_69_491e
	db $20

	db $64, $79, $21, $05
	RpnSrc RpnData_49_729f
	db $00

	db $64, $7a, $11, $05
	RpnSrc RpnData_49_7360
	db $00

	db $64, $7b, $31, $05
	RpnSrc RpnData_49_7422
	db $00

	db $64, $7c, $51, $05
	RpnSrc RpnData_49_74e2
	db $00

	db $64, $7d, $61, $05
	RpnSrc RpnData_49_75a7
	db $00

	db $64, $7e, $41, $05
	RpnSrc RpnData_49_7669
	db $00

	db $64, $a5, $92, $05
	RpnSrc RpnData_41_4000
	db $1e

	db $e4, $a6, $62, $01
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $a7, $42, $00
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $a8, $52, $00
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $a9, $22, $00
	RpnSrc RpnData_41_4000
	db $2a

	db $e4, $aa, $12, $00
	RpnSrc RpnData_41_4000
	db $03

	db $e4, $09, $33, $12
	RpnSrc RpnData_41_4000
	db $2a

	db $e4, $b1, $32, $01
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $0a, $53, $02
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $0b, $23, $02
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $0c, $63, $12
	RpnSrc RpnData_41_4000
	db $0a

	db $e4, $0d, $43, $12
	RpnSrc RpnData_41_4000
	db $0c

	db $e4, $0e, $13, $12
	RpnSrc RpnData_69_5e91
	db $14

	db $e4, $0f, $53, $34
	RpnSrc RpnData_41_4000
	db $15

	db $e4, $10, $63, $34
	RpnSrc RpnData_41_4000
	db $16

	db $e4, $11, $33, $34
	RpnSrc RpnData_41_4000
	db $17

	db $e4, $12, $43, $34
	RpnSrc RpnData_41_4000
	db $00

	db $e4, $13, $23, $34
	RpnSrc RpnData_41_4000
	db $1c

	db $e4, $14, $13, $34
	RpnSrc RpnData_41_4000
	db $1a

	db $64, $15, $23, $12
	RpnSrc RpnData_41_4000
	db $00

	db $64, $16, $13, $34
	RpnSrc RpnData_41_4000
	db $00

	db $64, $17, $33, $34
	RpnSrc RpnData_41_4000
	db $00

	db $64, $18, $43, $34
	RpnSrc RpnData_41_4000
	db $00

	db $64, $19, $63, $34
	RpnSrc RpnData_41_4000
	db $00

	db $64, $1a, $53, $34
	RpnSrc RpnData_41_4000
	db $00

	db $64, $c4, $22, $05
	RpnSrc RpnData_41_4000
	db $00

	db $64, $c5, $12, $05
	RpnSrc RpnData_41_4000
	db $00

	db $64, $c6, $32, $05
	RpnSrc RpnData_41_4000
	db $00

	db $64, $c7, $42, $05
	RpnSrc RpnData_41_4000
	db $00

	db $64, $c8, $62, $05
	RpnSrc RpnData_41_4000
	db $00

	db $64, $c9, $52, $05
	RpnSrc RpnData_41_4000
	db $00

	db $00

Data_40_56e6::
	db $e4, $d1, $62, $01
	RpnSrc RpnData_60_4bdc
	db $01

	db $e4, $1b, $13, $23
	RpnSrc RpnData_69_783e
	db $00

	db $e4, $1c, $23, $44
	RpnSrc RpnData_69_7bdc
	db $00

	db $e4, $1d, $63, $44
	RpnSrc RpnData_69_7db8
	db $00

	db $e4, $1e, $43, $44
	RpnSrc RpnData_69_7f88
	db $00

	db $e4, $1f, $33, $44
	RpnSrc RpnData_6a_4123
	db $00

	db $e4, $20, $53, $44
	RpnSrc RpnData_6a_42dc
	db $00

	db $e4, $21, $13, $44
	RpnSrc RpnData_6a_4493
	db $00

	db $00

Data_40_5727::
	db $00

else
First8Days6am::
	db $e4, $00, $11, $22
	dwb $0000, $00
	db $00

	db $e4, $01, $41, $45
	dwb $3f51, $01
	db $00

	db $e4, $02, $21, $45
	dwb $006e, $02
	db $00

	db $e4, $03, $41, $67
	dwb $0180, $02
	db $00

	db $e4, $04, $21, $67
	dwb $0280, $02
	db $00

	db $e4, $05, $01, $11
	dwb $0000, $00
	db $00

	db $00

First8Days7am::
	db $e4, $06, $39, $56
	dwb $1af9, $02
	db $28

	db $64, $07, $21, $27
	dwb $1d70, $02
	db $00

	db $64, $08, $11, $27
	dwb $1e31, $02
	db $00

	db $64, $09, $31, $27
	dwb $1ef3, $02
	db $00

	db $64, $0a, $51, $27
	dwb $1fb3, $02
	db $00

	db $64, $0b, $61, $27
	dwb $2078, $02
	db $00

	db $64, $0c, $41, $27
	dwb $213a, $02
	db $00

	db $64, $0d, $e1, $27
	dwb $21f4, $02
	db $00

	db $64, $0e, $91, $27
	dwb $0000, $00
	db $1e

	db $e4, $0f, $61, $27
	dwb $0000, $00
	db $00

	db $e4, $10, $31, $27
	dwb $0000, $00
	db $00

	db $e4, $11, $41, $27
	dwb $0000, $00
	db $00

	db $e4, $12, $51, $27
	dwb $0000, $00
	db $00

	db $e4, $13, $21, $27
	dwb $0000, $00
	db $00

	db $e4, $14, $11, $27
	dwb $0000, $00
	db $00

	db $e4, $15, $d1, $34
	dwb $06dc, $03
	db $0d

	db $e4, $16, $11, $47
	dwb $0000, $00
	db $00

	db $e4, $17, $d1, $56
	dwb $0d47, $03
	db $0d

	db $e4, $18, $61, $47
	dwb $0000, $00
	db $00

	db $e4, $19, $31, $47
	dwb $0000, $00
	db $00

	db $e4, $1a, $41, $47
	dwb $0000, $00
	db $00

	db $e4, $1b, $51, $47
	dwb $0000, $00
	db $00

	db $e4, $1c, $21, $47
	dwb $0000, $00
	db $00

	db $e4, $1d, $51, $67
	dwb $0000, $00
	db $00

	db $e4, $1e, $61, $67
	dwb $0000, $00
	db $00

	db $e4, $1f, $31, $67
	dwb $2d5a, $03
	db $00

	db $e4, $20, $41, $67
	dwb $0000, $00
	db $00

	db $e4, $21, $21, $67
	dwb $0000, $00
	db $00

	db $e4, $22, $11, $67
	dwb $0000, $00
	db $00

	db $64, $23, $c1, $27
	dwb $3b63, $03
	db $00

	db $64, $24, $d1, $37
	dwb $3f84, $03
	db $00

	db $64, $25, $21, $27
	dwb $0000, $00
	db $00

	db $64, $26, $11, $27
	dwb $0000, $00
	db $00

	db $64, $27, $31, $27
	dwb $0000, $00
	db $00

	db $64, $28, $41, $27
	dwb $0000, $00
	db $00

	db $64, $29, $61, $27
	dwb $0000, $00
	db $00

	db $64, $2a, $51, $27
	dwb $0000, $00
	db $00

	db $64, $2b, $e1, $17
	dwb $0b1e, $04
	db $10

	db $00

First8Days8am::
	db $e4, $2c, $01, $27
	dwb $0d1e, $04
	db $01

	db $64, $2d, $01, $27
	dwb $0000, $00
	db $01

	db $00

First8Days9am::
	db $64, $2e, $61, $27
	dwb $0f2f, $04
	db $00

	db $64, $2f, $51, $27
	dwb $19e5, $04
	db $00

	db $64, $30, $41, $27
	dwb $2371, $04
	db $00

	db $64, $31, $31, $27
	dwb $2d90, $04
	db $00

	db $64, $32, $21, $27
	dwb $375b, $04
	db $00

	db $64, $33, $11, $27
	dwb $038d, $05
	db $00

	db $00

First8Days10am::
	db $00

First8Days11am::
	db $e4, $34, $01, $22
	dwb $0000, $00
	db $01

	db $e4, $35, $31, $56
	dwb $0e77, $05
	db $00

	db $00

First8Days12pm::
	db $e4, $36, $29, $34
	dwb $0f52, $05
	db $00

	db $e4, $37, $69, $56
	dwb $1247, $05
	db $00

	db $64, $38, $21, $27
	dwb $15d8, $05
	db $00

	db $64, $39, $11, $27
	dwb $1699, $05
	db $00

	db $64, $3a, $31, $27
	dwb $175b, $05
	db $00

	db $64, $3b, $51, $27
	dwb $181b, $05
	db $00

	db $64, $3c, $61, $27
	dwb $18e0, $05
	db $00

	db $64, $3d, $41, $27
	dwb $19a2, $05
	db $00

	db $64, $3e, $91, $27
	dwb $0000, $00
	db $1e

	db $e4, $3f, $61, $24
	dwb $0000, $00
	db $20

	db $e4, $40, $31, $24
	dwb $0000, $00
	db $1f

	db $e4, $41, $41, $24
	dwb $0000, $00
	db $0c

	db $64, $42, $e1, $27
	dwb $3162, $05
	db $00

	db $e4, $43, $51, $24
	dwb $0000, $00
	db $14

	db $e4, $44, $21, $24
	dwb $0000, $00
	db $00

	db $e4, $45, $11, $24
	dwb $0000, $00
	db $22

	db $e4, $46, $c1, $34
	dwb $05fb, $06
	db $0d

	db $e4, $47, $d1, $56
	dwb $06e6, $06
	db $0d

	db $e4, $48, $21, $34
	dwb $0000, $00
	db $0f

	db $e4, $49, $61, $45
	dwb $0000, $00
	db $03

	db $e4, $4a, $31, $45
	dwb $0000, $00
	db $2a

	db $e4, $4b, $41, $45
	dwb $0000, $00
	db $00

	db $e4, $4c, $51, $45
	dwb $0000, $00
	db $00

	db $e4, $4d, $11, $45
	dwb $0000, $00
	db $2d

	db $e4, $4e, $d1, $47
	dwb $0000, $00
	db $0d

	db $e4, $4f, $61, $56
	dwb $0000, $00
	db $0f

	db $e4, $50, $31, $56
	dwb $0000, $00
	db $28

	db $e4, $51, $41, $56
	dwb $2c70, $06
	db $00

	db $e4, $52, $51, $56
	dwb $0000, $00
	db $15

	db $e4, $53, $21, $56
	dwb $0000, $00
	db $00

	db $e4, $54, $11, $56
	dwb $0000, $00
	db $1a

	db $64, $55, $d1, $27
	dwb $3444, $06
	db $00

	db $64, $56, $c1, $37
	dwb $386c, $06
	db $00

	db $e4, $57, $31, $46
	dwb $0000, $00
	db $00

	db $e4, $58, $21, $56
	dwb $0000, $00
	db $00

	db $e4, $59, $11, $56
	dwb $0000, $00
	db $00

	db $e4, $5a, $41, $56
	dwb $0000, $00
	db $00

	db $e4, $5b, $61, $56
	dwb $0000, $00
	db $00

	db $e4, $5c, $51, $56
	dwb $0000, $00
	db $00

	db $64, $5d, $21, $27
	dwb $0000, $00
	db $00

	db $64, $5e, $11, $27
	dwb $0000, $00
	db $00

	db $64, $5f, $31, $27
	dwb $0000, $00
	db $00

	db $64, $60, $41, $27
	dwb $0000, $00
	db $00

	db $64, $61, $61, $27
	dwb $0000, $00
	db $00

	db $64, $62, $51, $27
	dwb $0000, $00
	db $00

	db $64, $63, $e1, $17
	dwb $0a51, $07
	db $10

	db $00

First8Days1pm::
	db $00

First8Days2pm::
	db $00

First8Days3pm::
	db $e4, $64, $01, $27
	dwb $0c58, $07
	db $01

	db $e4, $65, $01, $27
	dwb $0cb4, $07
	db $01

	db $e4, $66, $01, $22
	dwb $0000, $00
	db $01

	db $00

First8Days4pm::
	db $e4, $67, $91, $17
	dwb $0d7f, $07
	db $00

	db $64, $68, $01, $27
	dwb $1738, $07
	db $00

	db $64, $69, $61, $27
	dwb $1794, $07
	db $00

	db $64, $6a, $51, $27
	dwb $22ca, $07
	db $00

	db $64, $6b, $41, $27
	dwb $2d49, $07
	db $00

	db $64, $6c, $31, $27
	dwb $3827, $07
	db $00

	db $64, $6d, $21, $27
	dwb $030f, $08
	db $00

	db $64, $6e, $11, $27
	dwb $0fcc, $08
	db $00

	db $00

First8Days5pm::
	db $00

First8Days6pm::
	db $e4, $6f, $01, $22
	dwb $0000, $00
	db $01

	db $e4, $70, $51, $67
	dwb $1a81, $08
	db $00

	db $e4, $71, $51, $24
	dwb $1f8f, $08
	db $00

	db $00

First8Days7pm::
	db $e4, $72, $49, $34
	dwb $25c7, $08
	db $1b

	db $e4, $73, $29, $34
	dwb $26ad, $08
	db $28

	db $e4, $74, $69, $45
	dwb $2826, $08
	db $2a

	db $e4, $75, $39, $45
	dwb $2cf7, $08
	db $2a

	db $e4, $76, $49, $56
	dwb $2dcc, $08
	db $1b

	db $e4, $77, $29, $56
	dwb $30c3, $08
	db $28

	db $e4, $78, $19, $56
	dwb $323c, $08
	db $03

	db $64, $79, $21, $27
	dwb $329f, $08
	db $00

	db $64, $7a, $11, $27
	dwb $3360, $08
	db $00

	db $64, $7b, $31, $27
	dwb $3422, $08
	db $00

	db $64, $7c, $51, $27
	dwb $34e2, $08
	db $00

	db $64, $7d, $61, $27
	dwb $35a7, $08
	db $00

	db $64, $7e, $41, $27
	dwb $3669, $08
	db $00

	db $64, $7f, $91, $27
	dwb $0000, $00
	db $1e

	db $e4, $80, $61, $23
	dwb $0232, $09
	db $16

	db $e4, $81, $31, $24
	dwb $0357, $09
	db $17

	db $e4, $82, $41, $24
	dwb $0000, $00
	db $00

	db $e4, $83, $51, $24
	dwb $0000, $00
	db $25

	db $e4, $84, $21, $24
	dwb $0a09, $09
	db $00

	db $e4, $85, $11, $24
	dwb $0000, $00
	db $00

	db $e4, $86, $61, $35
	dwb $0000, $00
	db $0f

	db $e4, $87, $41, $45
	dwb $0000, $00
	db $00

	db $e4, $88, $51, $45
	dwb $12cc, $09
	db $15

	db $e4, $89, $21, $45
	dwb $0000, $00
	db $1c

	db $e4, $8a, $11, $45
	dwb $164f, $09
	db $1a

	db $e4, $8b, $31, $67
	dwb $0000, $00
	db $17

	db $e4, $8c, $51, $67
	dwb $0000, $00
	db $15

	db $e4, $8d, $31, $45
	dwb $0000, $00
	db $00

	db $e4, $8e, $61, $57
	dwb $0000, $00
	db $16

	db $e4, $8f, $41, $67
	dwb $20da, $09
	db $1b

	db $e4, $90, $21, $67
	dwb $21f8, $09
	db $1c

	db $e4, $91, $11, $67
	dwb $23af, $09
	db $00

	db $64, $92, $21, $27
	dwb $0000, $00
	db $00

	db $64, $93, $11, $27
	dwb $0000, $00
	db $00

	db $64, $94, $31, $27
	dwb $0000, $00
	db $00

	db $64, $95, $41, $27
	dwb $0000, $00
	db $00

	db $64, $96, $61, $27
	dwb $0000, $00
	db $00

	db $64, $97, $51, $27
	dwb $0000, $00
	db $00

	db $00

First8Days8pm::
	db $e4, $98, $01, $22
	dwb $0000, $00
	db $01

	db $e4, $99, $31, $45
	dwb $2f08, $09
	db $00

	db $e4, $9a, $11, $45
	dwb $2ffd, $09
	db $00

	db $00

First8Days9pm::
	db $00

Data_40_44e8::
	db $e4, $9b, $91, $00
	dwb $0000, $00
	db $00

	db $e4, $9c, $61, $23
	dwb $05ae, $0a
	db $00

	db $e4, $9d, $31, $23
	dwb $069f, $0a
	db $00

	db $e4, $9e, $61, $35
	dwb $07a2, $0a
	db $00

	db $e4, $9f, $41, $56
	dwb $087e, $0a
	db $01

	db $e4, $a0, $51, $56
	dwb $0954, $0a
	db $01

	db $e4, $a1, $21, $67
	dwb $0a42, $0a
	db $00

	db $00

Data_40_4521::
	db $64, $07, $21, $07
	dwb $1d70, $02
	db $00

	db $64, $08, $11, $07
	dwb $1e31, $02
	db $00

	db $64, $09, $31, $07
	dwb $1ef3, $02
	db $00

	db $64, $0a, $51, $07
	dwb $1fb3, $02
	db $00

	db $64, $0b, $61, $07
	dwb $2078, $02
	db $00

	db $64, $0c, $41, $07
	dwb $213a, $02
	db $00

	db $64, $0d, $e1, $07
	dwb $21f4, $02
	db $00

	db $64, $0e, $91, $00
	dwb $0000, $00
	db $1e

	db $64, $a2, $91, $17
	dwb $0000, $00
	db $1e

	db $e4, $a3, $c1, $12
	dwb $1b75, $0a
	db $0d

	db $e4, $a4, $61, $13
	dwb $0000, $00
	db $00

	db $e4, $a5, $31, $13
	dwb $0000, $00
	db $00

	db $e4, $a6, $41, $13
	dwb $0000, $00
	db $00

	db $e4, $a7, $51, $13
	dwb $0000, $00
	db $00

	db $e4, $a8, $21, $13
	dwb $0000, $00
	db $00

	db $e4, $a9, $11, $12
	dwb $31ea, $0a
	db $00

	db $e4, $aa, $c1, $34
	dwb $3e27, $0a
	db $0d

	db $e4, $ab, $51, $77
	dwb $0000, $00
	db $00

	db $e4, $ac, $21, $77
	dwb $0000, $00
	db $20

	db $e4, $ad, $61, $77
	dwb $0000, $00
	db $0f

	db $e4, $ae, $11, $77
	dwb $0000, $00
	db $00

	db $e4, $af, $31, $77
	dwb $0000, $00
	db $03

	db $e4, $b0, $41, $77
	dwb $0000, $00
	db $00

	db $e4, $b1, $61, $35
	dwb $0000, $00
	db $0f

	db $e4, $b2, $31, $34
	dwb $0000, $00
	db $00

	db $e4, $b3, $41, $35
	dwb $0000, $00
	db $00

	db $e4, $b4, $51, $35
	dwb $0000, $00
	db $00

	db $e4, $b5, $21, $35
	dwb $0000, $00
	db $12

	db $e4, $b6, $11, $35
	dwb $0000, $00
	db $00

	db $e4, $b7, $d1, $45
	dwb $153e, $0c
	db $0d

	db $e4, $b8, $41, $46
	dwb $0000, $00
	db $00

	db $e4, $b9, $61, $56
	dwb $0000, $00
	db $00

	db $e4, $ba, $31, $56
	dwb $0000, $00
	db $00

	db $e4, $bb, $51, $56
	dwb $0000, $00
	db $00

	db $e4, $bc, $21, $56
	dwb $0000, $00
	db $00

	db $e4, $bd, $11, $56
	dwb $3090, $0c
	db $00

	db $64, $23, $c1, $07
	dwb $3b63, $03
	db $00

	db $64, $24, $d1, $07
	dwb $3f84, $03
	db $00

	db $64, $25, $21, $00
	dwb $0000, $00
	db $00

	db $64, $26, $11, $00
	dwb $0000, $00
	db $00

	db $64, $27, $31, $00
	dwb $0000, $00
	db $00

	db $64, $28, $41, $00
	dwb $0000, $00
	db $00

	db $64, $29, $61, $00
	dwb $0000, $00
	db $00

	db $64, $2a, $51, $00
	dwb $0000, $00
	db $00

	db $64, $be, $21, $17
	dwb $0000, $00
	db $00

	db $64, $bf, $11, $17
	dwb $0000, $00
	db $00

	db $64, $c0, $31, $17
	dwb $0000, $00
	db $00

	db $64, $c1, $41, $17
	dwb $0000, $00
	db $00

	db $64, $c2, $61, $17
	dwb $0000, $00
	db $00

	db $64, $c3, $51, $17
	dwb $0000, $00
	db $00

	db $64, $2b, $e1, $07
	dwb $0b1e, $04
	db $10

	db $00

Data_40_46ba::
	db $e4, $2c, $01, $07
	dwb $0d1e, $04
	db $01

	db $00

Data_40_46c3::
	db $64, $2e, $61, $07
	dwb $0f2f, $04
	db $00

	db $64, $2f, $51, $07
	dwb $19e5, $04
	db $00

	db $64, $30, $41, $07
	dwb $2371, $04
	db $00

	db $64, $31, $31, $07
	dwb $2d90, $04
	db $00

	db $64, $32, $21, $07
	dwb $375b, $04
	db $00

	db $64, $33, $11, $07
	dwb $038d, $05
	db $00

	db $00

Data_40_46f4::
	db $00

Data_40_46f5::
	db $00

Data_40_46f6::
	db $e4, $c4, $29, $34
	dwb $3c4b, $0c
	db $12

	db $64, $38, $21, $07
	dwb $15d8, $05
	db $00

	db $64, $39, $11, $07
	dwb $1699, $05
	db $00

	db $64, $3a, $31, $07
	dwb $175b, $05
	db $00

	db $64, $3b, $51, $07
	dwb $181b, $05
	db $00

	db $64, $3c, $61, $07
	dwb $18e0, $05
	db $00

	db $64, $3d, $41, $07
	dwb $19a2, $05
	db $00

	db $64, $3e, $91, $00
	dwb $0000, $00
	db $1e

	db $64, $42, $e1, $07
	dwb $3162, $05
	db $00

	db $64, $c5, $91, $17
	dwb $0000, $00
	db $1e

	db $e4, $c6, $d1, $12
	dwb $0faa, $0d
	db $0d

	db $e4, $c7, $61, $12
	dwb $102f, $0d
	db $00

	db $e4, $c8, $31, $12
	dwb $0000, $00
	db $14

	db $e4, $c9, $41, $12
	dwb $0000, $00
	db $09

	db $e4, $ca, $51, $12
	dwb $0000, $00
	db $15

	db $e4, $cb, $21, $13
	dwb $0000, $00
	db $00

	db $e4, $cc, $d1, $35
	dwb $2262, $0d
	db $0d

	db $e4, $cd, $51, $34
	dwb $0000, $00
	db $00

	db $e4, $ce, $11, $34
	dwb $2896, $0d
	db $22

	db $e4, $cf, $31, $77
	dwb $2c3e, $0d
	db $03

	db $e4, $d0, $11, $77
	dwb $33f0, $0d
	db $00

	db $e4, $d1, $41, $77
	dwb $3b9f, $0d
	db $00

	db $e4, $d2, $61, $77
	dwb $06db, $0e
	db $0f

	db $e4, $d3, $51, $77
	dwb $0f93, $0e
	db $00

	db $e4, $d4, $21, $77
	dwb $1625, $0e
	db $20

	db $e4, $d5, $11, $12
	dwb $0000, $00
	db $22

	db $e4, $d6, $21, $24
	dwb $0000, $00
	db $2a

	db $e4, $d7, $61, $34
	dwb $0000, $00
	db $00

	db $e4, $d8, $31, $34
	dwb $0000, $00
	db $00

	db $e4, $d9, $41, $34
	dwb $0000, $00
	db $00

	db $e4, $da, $c1, $57
	dwb $3ff7, $0e
	db $0d

	db $e4, $db, $c1, $25
	dwb $0000, $00
	db $0d

	db $e4, $dc, $61, $45
	dwb $0000, $00
	db $28

	db $e4, $dd, $31, $45
	dwb $0000, $00
	db $00

	db $e4, $de, $41, $45
	dwb $0a90, $0f
	db $1b

	db $e4, $df, $51, $45
	dwb $0cf9, $0f
	db $0c

	db $e4, $e0, $21, $45
	dwb $114c, $0f
	db $1d

	db $e4, $e1, $11, $45
	dwb $152d, $0f
	db $00

	db $64, $55, $d1, $07
	dwb $3444, $06
	db $00

	db $64, $56, $c1, $07
	dwb $386c, $06
	db $00

	db $64, $e2, $21, $16
	dwb $0000, $00
	db $00

	db $64, $e3, $11, $16
	dwb $0000, $00
	db $00

	db $64, $e4, $31, $16
	dwb $0000, $00
	db $00

	db $64, $e5, $41, $16
	dwb $0000, $00
	db $00

	db $64, $e6, $61, $16
	dwb $0000, $00
	db $00

	db $64, $e7, $51, $16
	dwb $0000, $00
	db $00

	db $e4, $e8, $21, $77
	dwb $0000, $00
	db $00

	db $e4, $e9, $11, $77
	dwb $0000, $00
	db $00

	db $e4, $ea, $31, $77
	dwb $0000, $00
	db $00

	db $e4, $eb, $41, $77
	dwb $0000, $00
	db $00

	db $e4, $ec, $61, $77
	dwb $0000, $00
	db $00

	db $e4, $ed, $51, $77
	dwb $0000, $00
	db $00

	db $64, $63, $e1, $07
	dwb $0a51, $07
	db $10

	db $00

Data_40_489f::
	db $00

Data_40_48a0::
	db $00

Data_40_48a1::
	db $e4, $64, $01, $07
	dwb $0c58, $07
	db $01

	db $e4, $65, $01, $07
	dwb $0cb4, $07
	db $01

	db $00

Data_40_48b2::
	db $e4, $67, $91, $00
	dwb $0d7f, $07
	db $00

	db $e4, $ee, $91, $17
	dwb $25bd, $0f
	db $00

	db $64, $68, $01, $07
	dwb $1738, $07
	db $00

	db $64, $69, $61, $07
	dwb $1794, $07
	db $00

	db $64, $6a, $51, $07
	dwb $22ca, $07
	db $00

	db $64, $6b, $41, $07
	dwb $2d49, $07
	db $00

	db $64, $6c, $31, $07
	dwb $3827, $07
	db $00

	db $64, $6d, $21, $07
	dwb $030f, $08
	db $00

	db $64, $6e, $11, $07
	dwb $0fcc, $08
	db $00

	db $00

Data_40_48fb::
	db $00

Data_40_48fc::
	db $e4, $ef, $31, $45
	dwb $2ed6, $0f
	db $00

	db $00

Data_40_4905::
	db $e4, $f0, $69, $12
	dwb $3154, $0f
	db $0e

	db $e4, $f1, $39, $12
	dwb $38f8, $0f
	db $17

	db $e4, $f2, $59, $12
	dwb $3a11, $0f
	db $00

	db $e4, $f3, $19, $13
	dwb $3be1, $0f
	db $2a

	db $e4, $f4, $69, $34
	dwb $003a, $10
	db $28

	db $e4, $f5, $49, $45
	dwb $03de, $10
	db $1b

	db $e4, $f6, $59, $45
	dwb $0eb4, $10
	db $15

	db $e4, $f7, $29, $56
	dwb $142c, $10
	db $2b

	db $64, $79, $21, $07
	dwb $329f, $08
	db $00

	db $64, $7a, $11, $07
	dwb $3360, $08
	db $00

	db $64, $7b, $31, $07
	dwb $3422, $08
	db $00

	db $64, $7c, $51, $07
	dwb $34e2, $08
	db $00

	db $64, $7d, $61, $07
	dwb $35a7, $08
	db $00

	db $64, $7e, $41, $07
	dwb $3669, $08
	db $00

	db $64, $7f, $91, $00
	dwb $0000, $00
	db $1e

	db $64, $f8, $91, $17
	dwb $0000, $00
	db $1e

	db $e4, $f9, $61, $13
	dwb $0000, $00
	db $16

	db $e4, $fa, $31, $13
	dwb $0000, $00
	db $00

	db $e4, $fb, $41, $13
	dwb $0000, $00
	db $1b

	db $e4, $fc, $51, $13
	dwb $0000, $00
	db $24

	db $e4, $fd, $21, $13
	dwb $0000, $00
	db $00

	db $e4, $fe, $11, $13
	dwb $0000, $00
	db $14

	db $e4, $ff, $61, $35
	dwb $0000, $00
	db $03

	db $e4, $00, $32, $35
	dwb $0000, $00
	db $00

	db $e4, $01, $42, $35
	dwb $0000, $00
	db $0a

	db $e4, $02, $52, $35
	dwb $0000, $00
	db $2a

	db $e4, $03, $22, $35
	dwb $0000, $00
	db $00

	db $e4, $04, $12, $35
	dwb $0000, $00
	db $23

	db $e4, $05, $62, $57
	dwb $0000, $00
	db $09

	db $e4, $06, $32, $57
	dwb $0000, $00
	db $14

	db $e4, $07, $42, $57
	dwb $0000, $00
	db $1b

	db $e4, $08, $52, $57
	dwb $0000, $00
	db $0f

	db $e4, $09, $22, $57
	dwb $0000, $00
	db $00

	db $e4, $0a, $12, $57
	dwb $0000, $00
	db $00

	db $64, $0b, $32, $34
	dwb $0000, $00
	db $00

	db $64, $0c, $22, $45
	dwb $0000, $00
	db $00

	db $64, $0d, $12, $45
	dwb $0000, $00
	db $00

	db $64, $0e, $62, $45
	dwb $0000, $00
	db $00

	db $64, $0f, $42, $56
	dwb $0000, $00
	db $00

	db $64, $10, $52, $56
	dwb $0000, $00
	db $00

	db $64, $92, $21, $00
	dwb $0000, $00
	db $00

	db $64, $93, $11, $00
	dwb $0000, $00
	db $00

	db $64, $94, $31, $00
	dwb $0000, $00
	db $00

	db $64, $95, $41, $00
	dwb $0000, $00
	db $00

	db $64, $96, $61, $00
	dwb $0000, $00
	db $00

	db $64, $97, $51, $00
	dwb $0000, $00
	db $00

	db $64, $11, $22, $17
	dwb $0000, $00
	db $00

	db $64, $12, $12, $17
	dwb $0000, $00
	db $00

	db $64, $13, $32, $17
	dwb $0000, $00
	db $00

	db $64, $14, $42, $17
	dwb $0000, $00
	db $00

	db $64, $15, $62, $17
	dwb $0000, $00
	db $00

	db $64, $16, $52, $17
	dwb $0000, $00
	db $00

	db $00

Data_40_4aa6::
	db $e4, $17, $42, $12
	dwb $3a89, $11
	db $01

	db $e4, $18, $12, $56
	dwb $3cc7, $11
	db $00

	db $00

Data_40_4ab7::
	db $00

Data_40_4ab8::
	db $e4, $19, $22, $14
	dwb $006b, $12
	db $00

	db $e4, $1a, $62, $14
	dwb $16a9, $12
	db $00

	db $e4, $1b, $42, $14
	dwb $3216, $12
	db $00

	db $e4, $1c, $32, $14
	dwb $056d, $13
	db $00

	db $e4, $1d, $52, $14
	dwb $1d7d, $13
	db $00

	db $e4, $1e, $12, $14
	dwb $2fd2, $13
	db $00

	db $e4, $1f, $22, $34
	dwb $0419, $14
	db $00

	db $e4, $20, $12, $34
	dwb $062b, $14
	db $00

	db $e4, $21, $22, $45
	dwb $0826, $14
	db $00

	db $e4, $22, $62, $66
	dwb $0939, $14
	db $00

	db $e4, $23, $32, $66
	dwb $15d9, $14
	db $00

	db $e4, $24, $42, $66
	dwb $2179, $14
	db $00

	db $e4, $25, $52, $66
	dwb $2db2, $14
	db $00

	db $e4, $26, $22, $66
	dwb $3ce9, $14
	db $00

	db $e4, $27, $12, $66
	dwb $089d, $15
	db $00

	db $00

Data_40_4b31::
	db $64, $07, $21, $07
	dwb $1d70, $02
	db $00

	db $64, $08, $11, $07
	dwb $1e31, $02
	db $00

	db $64, $09, $31, $07
	dwb $1ef3, $02
	db $00

	db $64, $0a, $51, $07
	dwb $1fb3, $02
	db $00

	db $64, $0b, $61, $07
	dwb $2078, $02
	db $00

	db $64, $0c, $41, $07
	dwb $213a, $02
	db $00

	db $64, $0d, $e1, $07
	dwb $21f4, $02
	db $00

	db $64, $28, $92, $06
	dwb $0000, $00
	db $1e

	db $e4, $29, $62, $02
	dwb $0000, $00
	db $0f

	db $e4, $2a, $32, $01
	dwb $0000, $00
	db $00

	db $e4, $2b, $42, $01
	dwb $0000, $00
	db $00

	db $e4, $2c, $52, $02
	dwb $0000, $00
	db $00

	db $e4, $2d, $22, $02
	dwb $0000, $00
	db $00

	db $e4, $2e, $12, $02
	dwb $3ed1, $15
	db $00

	db $e4, $2f, $d2, $12
	dwb $029d, $16
	db $0d

	db $e4, $30, $c2, $45
	dwb $0390, $16
	db $0d

	db $e4, $31, $32, $66
	dwb $0000, $00
	db $00

	db $e4, $32, $12, $66
	dwb $0000, $00
	db $00

	db $e4, $33, $42, $66
	dwb $0000, $00
	db $1b

	db $e4, $34, $62, $66
	dwb $0000, $00
	db $00

	db $e4, $35, $52, $66
	dwb $0000, $00
	db $00

	db $e4, $36, $22, $66
	dwb $0000, $00
	db $00

	db $64, $37, $92, $77
	dwb $0000, $00
	db $1e

	db $e4, $38, $d2, $77
	dwb $2fca, $16
	db $0d

	db $e4, $39, $62, $77
	dwb $0000, $00
	db $00

	db $e4, $3a, $32, $77
	dwb $0000, $00
	db $00

	db $e4, $3b, $42, $77
	dwb $0000, $00
	db $00

	db $e4, $3c, $52, $77
	dwb $0000, $00
	db $00

	db $e4, $3d, $22, $77
	dwb $0000, $00
	db $00

	db $e4, $3e, $12, $77
	dwb $0000, $00
	db $00

	db $e4, $3f, $c2, $03
	dwb $06a4, $17
	db $0d

	db $e4, $40, $42, $13
	dwb $0000, $00
	db $00

	db $e4, $41, $62, $24
	dwb $0000, $00
	db $00

	db $e4, $42, $32, $24
	dwb $0000, $00
	db $00

	db $e4, $43, $52, $24
	dwb $0000, $00
	db $00

	db $e4, $44, $22, $24
	dwb $0000, $00
	db $00

	db $e4, $45, $12, $24
	dwb $1e0e, $17
	db $00

	db $e4, $46, $42, $35
	dwb $0000, $00
	db $00

	db $e4, $47, $62, $45
	dwb $0000, $00
	db $00

	db $e4, $48, $22, $45
	dwb $0000, $00
	db $00

	db $e4, $49, $32, $45
	dwb $0000, $00
	db $00

	db $e4, $4a, $52, $45
	dwb $0000, $00
	db $00

	db $e4, $4b, $12, $45
	dwb $39d6, $17
	db $00

	db $64, $23, $c1, $07
	dwb $3b63, $03
	db $00

	db $64, $24, $d1, $07
	dwb $3f84, $03
	db $00

	db $64, $4c, $22, $06
	dwb $0000, $00
	db $00

	db $64, $4d, $12, $06
	dwb $0000, $00
	db $00

	db $64, $4e, $32, $06
	dwb $0000, $00
	db $00

	db $64, $4f, $42, $06
	dwb $0000, $00
	db $00

	db $64, $50, $62, $06
	dwb $0000, $00
	db $00

	db $64, $51, $52, $06
	dwb $0000, $00
	db $00

	db $64, $52, $22, $77
	dwb $0000, $00
	db $00

	db $64, $53, $12, $77
	dwb $0000, $00
	db $00

	db $64, $54, $32, $77
	dwb $0000, $00
	db $00

	db $64, $55, $42, $77
	dwb $0000, $00
	db $00

	db $64, $56, $62, $77
	dwb $0000, $00
	db $00

	db $64, $57, $52, $77
	dwb $0000, $00
	db $00

	db $64, $2b, $e1, $07
	dwb $0b1e, $04
	db $10

	db $00

Data_40_4d02::
	db $e4, $2c, $01, $07
	dwb $0d1e, $04
	db $01

	db $00

Data_40_4d0b::
	db $64, $2e, $61, $07
	dwb $0f2f, $04
	db $00

	db $64, $2f, $51, $07
	dwb $19e5, $04
	db $00

	db $64, $30, $41, $07
	dwb $2371, $04
	db $00

	db $64, $31, $31, $07
	dwb $2d90, $04
	db $00

	db $64, $32, $21, $07
	dwb $375b, $04
	db $00

	db $64, $33, $11, $07
	dwb $038d, $05
	db $00

	db $00

Data_40_4d3c::
	db $00

Data_40_4d3d::
	db $00

Data_40_4d3e::
	db $e4, $58, $5a, $02
	dwb $0cce, $18
	db $15

	db $e4, $59, $6a, $14
	dwb $11ac, $18
	db $00

	db $e4, $5a, $3a, $12
	dwb $17eb, $18
	db $29

	db $e4, $5b, $1a, $34
	dwb $1ef1, $18
	db $03

	db $64, $38, $21, $07
	dwb $15d8, $05
	db $00

	db $64, $39, $11, $07
	dwb $1699, $05
	db $00

	db $64, $3a, $31, $07
	dwb $175b, $05
	db $00

	db $64, $3b, $51, $07
	dwb $181b, $05
	db $00

	db $64, $3c, $61, $07
	dwb $18e0, $05
	db $00

	db $64, $3d, $41, $07
	dwb $19a2, $05
	db $00

	db $64, $42, $e1, $07
	dwb $3162, $05
	db $00

	db $64, $5c, $92, $06
	dwb $0000, $00
	db $1e

	db $e4, $5d, $62, $02
	dwb $0000, $00
	db $16

	db $e4, $5e, $32, $02
	dwb $0000, $00
	db $05

	db $e4, $5f, $42, $01
	dwb $0000, $00
	db $00

	db $e4, $60, $52, $02
	dwb $0000, $00
	db $03

	db $e4, $61, $22, $01
	dwb $0000, $00
	db $2a

	db $e4, $62, $12, $02
	dwb $0000, $00
	db $02

	db $e4, $63, $d2, $34
	dwb $0eeb, $19
	db $0d

	db $e4, $64, $62, $66
	dwb $0f85, $19
	db $00

	db $e4, $65, $52, $66
	dwb $1691, $19
	db $00

	db $e4, $66, $22, $66
	dwb $1b45, $19
	db $00

	db $e4, $67, $32, $66
	dwb $21b8, $19
	db $00

	db $e4, $68, $42, $66
	dwb $25a9, $19
	db $1b

	db $e4, $69, $12, $66
	dwb $268c, $19
	db $00

	db $64, $6a, $92, $77
	dwb $0000, $00
	db $1e

	db $e4, $6b, $62, $77
	dwb $0000, $00
	db $00

	db $e4, $6c, $32, $77
	dwb $0000, $00
	db $17

	db $e4, $6d, $42, $77
	dwb $0000, $00
	db $1b

	db $e4, $6e, $52, $77
	dwb $0000, $00
	db $15

	db $e4, $6f, $22, $77
	dwb $0000, $00
	db $08

	db $e4, $70, $12, $77
	dwb $0000, $00
	db $00

	db $e4, $71, $42, $12
	dwb $0000, $00
	db $08

	db $e4, $72, $d2, $24
	dwb $0f7a, $1a
	db $0d

	db $e4, $73, $62, $23
	dwb $0000, $00
	db $2a

	db $e4, $74, $32, $23
	dwb $0000, $00
	db $0a

	db $e4, $75, $52, $23
	dwb $0000, $00
	db $24

	db $e4, $76, $22, $23
	dwb $0000, $00
	db $20

	db $e4, $77, $12, $23
	dwb $0000, $00
	db $09

	db $e4, $78, $62, $34
	dwb $0000, $00
	db $28

	db $e4, $79, $d2, $03
	dwb $0000, $00
	db $0d

	db $e4, $7a, $42, $24
	dwb $0000, $00
	db $00

	db $e4, $7b, $32, $34
	dwb $0000, $00
	db $14

	db $e4, $7c, $52, $34
	dwb $0000, $00
	db $00

	db $e4, $7d, $22, $34
	dwb $118b, $1b
	db $2b

	db $e4, $7e, $12, $34
	dwb $0000, $00
	db $00

	db $e4, $7f, $c2, $77
	dwb $1958, $1b
	db $0d

	db $64, $55, $d1, $07
	dwb $3444, $06
	db $00

	db $64, $56, $c1, $07
	dwb $386c, $06
	db $00

	db $64, $80, $22, $05
	dwb $0000, $00
	db $00

	db $64, $81, $12, $05
	dwb $0000, $00
	db $00

	db $64, $82, $32, $05
	dwb $0000, $00
	db $00

	db $64, $83, $42, $05
	dwb $0000, $00
	db $00

	db $64, $84, $62, $05
	dwb $0000, $00
	db $00

	db $64, $85, $52, $05
	dwb $0000, $00
	db $00

	db $e4, $86, $22, $66
	dwb $0000, $00
	db $00

	db $e4, $87, $12, $66
	dwb $0000, $00
	db $00

	db $e4, $88, $32, $66
	dwb $0000, $00
	db $00

	db $e4, $89, $42, $66
	dwb $3394, $1b
	db $00

	db $e4, $8a, $62, $66
	dwb $0000, $00
	db $00

	db $e4, $8b, $52, $66
	dwb $0000, $00
	db $00

	db $64, $8c, $22, $77
	dwb $0000, $00
	db $00

	db $64, $8d, $12, $77
	dwb $0000, $00
	db $00

	db $64, $8e, $32, $77
	dwb $0000, $00
	db $00

	db $64, $8f, $42, $77
	dwb $0000, $00
	db $00

	db $64, $90, $62, $77
	dwb $0000, $00
	db $00

	db $64, $91, $52, $77
	dwb $0000, $00
	db $00

	db $64, $63, $e1, $07
	dwb $0a51, $07
	db $10

	db $00

Data_40_4f5f::
	db $00

Data_40_4f60::
	db $00

Data_40_4f61::
	db $e4, $64, $01, $07
	dwb $0c58, $07
	db $01

	db $e4, $65, $01, $07
	dwb $0cb4, $07
	db $01

	db $00

Data_40_4f72::
	db $e4, $ee, $91, $00
	dwb $25bd, $0f
	db $00

	db $e4, $92, $92, $06
	dwb $3ea7, $1b
	db $00

	db $64, $68, $01, $07
	dwb $1738, $07
	db $00

	db $64, $69, $61, $07
	dwb $1794, $07
	db $00

	db $64, $6a, $51, $07
	dwb $22ca, $07
	db $00

	db $64, $6b, $41, $07
	dwb $2d49, $07
	db $00

	db $64, $6c, $31, $07
	dwb $3827, $07
	db $00

	db $64, $6d, $21, $07
	dwb $030f, $08
	db $00

	db $64, $6e, $11, $07
	dwb $0fcc, $08
	db $00

	db $00

Data_40_4fbb::
	db $00

Data_40_4fbc::
	db $e4, $93, $52, $02
	dwb $07c0, $1c
	db $01

	db $e4, $94, $12, $34
	dwb $08b2, $1c
	db $00

	db $e4, $95, $42, $66
	dwb $09a1, $1c
	db $1b

	db $00

Data_40_4fd5::
	db $e4, $96, $3a, $01
	dwb $0a62, $1c
	db $0e

	db $e4, $97, $22, $12
	dwb $0be2, $1c
	db $2a

	db $e4, $98, $6a, $34
	dwb $1041, $1c
	db $0f

	db $e4, $99, $2a, $34
	dwb $14a7, $1c
	db $05

	db $e4, $9a, $1a, $34
	dwb $19cc, $1c
	db $1a

	db $e4, $9b, $5a, $45
	dwb $1f9c, $1c
	db $00

	db $e4, $9c, $22, $77
	dwb $2315, $1c
	db $1c

	db $e4, $9d, $1a, $77
	dwb $257b, $1c
	db $00

	db $64, $79, $21, $07
	dwb $329f, $08
	db $00

	db $64, $7a, $11, $07
	dwb $3360, $08
	db $00

	db $64, $7b, $31, $07
	dwb $3422, $08
	db $00

	db $64, $7c, $51, $07
	dwb $34e2, $08
	db $00

	db $64, $7d, $61, $07
	dwb $35a7, $08
	db $00

	db $64, $7e, $41, $07
	dwb $3669, $08
	db $00

	db $64, $9e, $92, $06
	dwb $0000, $00
	db $1e

	db $e4, $9f, $62, $02
	dwb $0000, $00
	db $00

	db $e4, $a0, $32, $01
	dwb $0000, $00
	db $04

	db $e4, $a1, $42, $02
	dwb $0000, $00
	db $1b

	db $e4, $a2, $52, $01
	dwb $0000, $00
	db $2a

	db $e4, $a3, $22, $02
	dwb $0000, $00
	db $1c

	db $e4, $a4, $12, $01
	dwb $0000, $00
	db $05

	db $64, $a5, $92, $77
	dwb $0000, $00
	db $1e

	db $e4, $a6, $62, $77
	dwb $0000, $00
	db $00

	db $e4, $a7, $42, $77
	dwb $0000, $00
	db $00

	db $e4, $a8, $52, $77
	dwb $0000, $00
	db $00

	db $e4, $a9, $22, $77
	dwb $0000, $00
	db $2a

	db $e4, $aa, $12, $77
	dwb $0000, $00
	db $03

	db $e4, $ab, $62, $23
	dwb $0000, $00
	db $00

	db $e4, $ac, $32, $24
	dwb $0000, $00
	db $08

	db $e4, $ad, $42, $23
	dwb $0000, $00
	db $2a

	db $e4, $ae, $52, $23
	dwb $0000, $00
	db $05

	db $e4, $af, $22, $24
	dwb $0000, $00
	db $1c

	db $e4, $b0, $12, $24
	dwb $0d45, $1e
	db $0e

	db $e4, $b1, $32, $77
	dwb $0000, $00
	db $00

	db $e4, $b2, $62, $46
	dwb $0000, $00
	db $00

	db $e4, $b3, $32, $46
	dwb $0000, $00
	db $00

	db $e4, $b4, $42, $46
	dwb $0000, $00
	db $09

	db $e4, $b5, $52, $46
	dwb $0000, $00
	db $15

	db $e4, $b6, $22, $46
	dwb $0000, $00
	db $05

	db $e4, $b7, $12, $56
	dwb $0000, $00
	db $2a

	db $64, $b8, $52, $34
	dwb $0000, $00
	db $00

	db $64, $b9, $22, $45
	dwb $0000, $00
	db $00

	db $64, $ba, $12, $45
	dwb $0000, $00
	db $00

	db $64, $bb, $32, $45
	dwb $0000, $00
	db $00

	db $64, $bc, $42, $45
	dwb $0000, $00
	db $00

	db $64, $bd, $62, $45
	dwb $0000, $00
	db $00

	db $64, $be, $22, $06
	dwb $0000, $00
	db $00

	db $64, $bf, $12, $06
	dwb $0000, $00
	db $00

	db $64, $c0, $32, $06
	dwb $0000, $00
	db $00

	db $64, $c1, $42, $06
	dwb $0000, $00
	db $00

	db $64, $c2, $62, $06
	dwb $0000, $00
	db $00

	db $64, $c3, $52, $06
	dwb $0000, $00
	db $00

	db $64, $c4, $22, $77
	dwb $0000, $00
	db $00

	db $64, $c5, $12, $77
	dwb $0000, $00
	db $00

	db $64, $c6, $32, $77
	dwb $0000, $00
	db $00

	db $64, $c7, $42, $77
	dwb $0000, $00
	db $00

	db $64, $c8, $62, $77
	dwb $0000, $00
	db $00

	db $64, $c9, $52, $77
	dwb $0000, $00
	db $00

	db $00

Data_40_51a6::
	db $e4, $ca, $42, $23
	dwb $3f53, $1e
	db $01

	db $e4, $cb, $62, $55
	dwb $013e, $1f
	db $00

	db $e4, $cc, $32, $55
	dwb $02fb, $1f
	db $00

	db $e4, $cd, $42, $55
	dwb $04c9, $1f
	db $00

	db $e4, $ce, $52, $55
	dwb $0677, $1f
	db $00

	db $e4, $cf, $22, $55
	dwb $0827, $1f
	db $00

	db $e4, $d0, $12, $55
	dwb $0a09, $1f
	db $00

	db $e4, $d1, $62, $77
	dwb $0bdc, $1f
	db $01

	db $e4, $d2, $42, $34
	dwb $1360, $1f
	db $01

	db $00

Data_40_51ef::
	db $00

Data_40_51f0::
	db $e4, $d3, $22, $03
	dwb $156c, $1f
	db $00

	db $e4, $d4, $62, $03
	dwb $2b81, $1f
	db $00

	db $e4, $d5, $42, $03
	dwb $094f, $20
	db $00

	db $e4, $d6, $32, $03
	dwb $1bbc, $20
	db $00

	db $e4, $d7, $52, $03
	dwb $0dc4, $21
	db $00

	db $e4, $d8, $12, $03
	dwb $221a, $21
	db $00

	db $e4, $d9, $52, $55
	dwb $00c0, $22
	db $00

	db $e4, $da, $22, $55
	dwb $1abf, $22
	db $00

	db $e4, $db, $12, $55
	dwb $3269, $22
	db $00

	db $e4, $dc, $62, $55
	dwb $0b82, $23
	db $00

	db $e4, $dd, $42, $55
	dwb $2579, $23
	db $00

	db $e4, $de, $32, $55
	dwb $3bc0, $23
	db $00

	db $e4, $df, $02, $66
	dwb $0000, $00
	db $00

	db $e4, $e0, $02, $77
	dwb $0000, $00
	db $01

	db $e4, $e1, $92, $55
	dwb $0000, $00
	db $01

	db $e4, $e2, $32, $12
	dwb $271a, $25
	db $00

	db $e4, $e3, $52, $23
	dwb $291e, $25
	db $00

	db $00

Data_40_5279::
	db $64, $07, $21, $05
	dwb $1d70, $02
	db $00

	db $64, $08, $11, $05
	dwb $1e31, $02
	db $00

	db $64, $09, $31, $05
	dwb $1ef3, $02
	db $00

	db $64, $0a, $51, $05
	dwb $1fb3, $02
	db $00

	db $64, $0b, $61, $05
	dwb $2078, $02
	db $00

	db $64, $0c, $41, $05
	dwb $213a, $02
	db $00

	db $64, $0d, $e1, $04
	dwb $21f4, $02
	db $00

	db $64, $37, $92, $05
	dwb $0000, $00
	db $1e

	db $e4, $38, $d2, $00
	dwb $2fca, $16
	db $0d

	db $e4, $39, $62, $01
	dwb $0000, $00
	db $00

	db $e4, $3a, $32, $01
	dwb $0000, $00
	db $00

	db $e4, $3b, $42, $01
	dwb $0000, $00
	db $00

	db $e4, $3c, $52, $01
	dwb $0000, $00
	db $00

	db $e4, $3d, $22, $01
	dwb $0000, $00
	db $00

	db $e4, $3e, $12, $01
	dwb $0000, $00
	db $00

	db $e4, $e4, $62, $12
	dwb $0000, $00
	db $00

	db $e4, $e5, $32, $12
	dwb $0000, $00
	db $00

	db $e4, $e6, $42, $12
	dwb $0000, $00
	db $00

	db $e4, $e7, $52, $13
	dwb $0000, $00
	db $00

	db $e4, $e8, $22, $13
	dwb $0000, $00
	db $00

	db $e4, $e9, $12, $13
	dwb $3d10, $25
	db $00

	db $e4, $ea, $62, $24
	dwb $0000, $00
	db $00

	db $e4, $eb, $32, $24
	dwb $0000, $00
	db $00

	db $e4, $ec, $42, $23
	dwb $0000, $00
	db $2a

	db $e4, $ed, $52, $34
	dwb $0000, $00
	db $15

	db $e4, $ee, $22, $34
	dwb $0000, $00
	db $14

	db $e4, $ef, $12, $34
	dwb $0000, $00
	db $00

	db $64, $23, $c1, $04
	dwb $3b63, $03
	db $00

	db $64, $24, $d1, $04
	dwb $3f84, $03
	db $00

	db $64, $52, $22, $04
	dwb $0000, $00
	db $00

	db $64, $53, $12, $04
	dwb $0000, $00
	db $00

	db $64, $54, $32, $04
	dwb $0000, $00
	db $00

	db $64, $55, $42, $04
	dwb $0000, $00
	db $00

	db $64, $56, $62, $04
	dwb $0000, $00
	db $00

	db $64, $57, $52, $04
	dwb $0000, $00
	db $00

	db $64, $2b, $e1, $07
	dwb $0b1e, $04
	db $10

	db $00

Data_40_539a::
	db $e4, $2c, $01, $06
	dwb $0d1e, $04
	db $01

	db $00

Data_40_53a3::
	db $64, $2e, $61, $06
	dwb $0f2f, $04
	db $00

	db $64, $2f, $51, $06
	dwb $19e5, $04
	db $00

	db $64, $30, $41, $06
	dwb $2371, $04
	db $00

	db $64, $31, $31, $06
	dwb $2d90, $04
	db $00

	db $64, $32, $21, $06
	dwb $375b, $04
	db $00

	db $64, $33, $11, $06
	dwb $038d, $05
	db $00

	db $00

Data_40_53d4::
	db $00

Data_40_53d5::
	db $00

Data_40_53d6::
	db $e4, $f0, $42, $02
	dwb $19af, $26
	db $00

	db $e4, $f1, $3a, $12
	dwb $375f, $26
	db $0e

	db $64, $38, $21, $05
	dwb $15d8, $05
	db $00

	db $64, $39, $11, $05
	dwb $1699, $05
	db $00

	db $64, $3a, $31, $05
	dwb $175b, $05
	db $00

	db $64, $3b, $51, $05
	dwb $181b, $05
	db $00

	db $64, $3c, $61, $05
	dwb $18e0, $05
	db $00

	db $64, $3d, $41, $05
	dwb $19a2, $05
	db $00

	db $64, $42, $e1, $04
	dwb $3162, $05
	db $00

	db $64, $6a, $92, $05
	dwb $0000, $00
	db $1e

	db $e4, $6b, $62, $00
	dwb $0000, $00
	db $00

	db $e4, $6c, $32, $00
	dwb $0000, $00
	db $17

	db $e4, $6d, $42, $01
	dwb $0000, $00
	db $1b

	db $e4, $6e, $52, $01
	dwb $0000, $00
	db $15

	db $e4, $6f, $22, $01
	dwb $0000, $00
	db $08

	db $e4, $70, $12, $00
	dwb $0000, $00
	db $00

	db $e4, $f2, $d2, $23
	dwb $3baa, $26
	db $0d

	db $e4, $f3, $c2, $02
	dwb $3c2e, $26
	db $0d

	db $e4, $f4, $62, $01
	dwb $0000, $00
	db $0f

	db $e4, $f5, $32, $02
	dwb $0000, $00
	db $00

	db $e4, $f6, $12, $02
	dwb $06a7, $27
	db $00

	db $e4, $f7, $42, $12
	dwb $0000, $00
	db $05

	db $e4, $f8, $52, $12
	dwb $0000, $00
	db $15

	db $e4, $f9, $22, $12
	dwb $0000, $00
	db $00

	db $e4, $7f, $c2, $02
	dwb $1958, $1b
	db $0d

	db $e4, $fa, $62, $13
	dwb $0000, $00
	db $28

	db $e4, $fb, $32, $23
	dwb $0000, $00
	db $00

	db $e4, $fc, $42, $23
	dwb $0000, $00
	db $1b

	db $e4, $fd, $52, $23
	dwb $0000, $00
	db $0c

	db $e4, $fe, $22, $23
	dwb $25c6, $27
	db $00

	db $e4, $ff, $12, $23
	dwb $0000, $00
	db $08

	db $64, $55, $d1, $04
	dwb $3444, $06
	db $00

	db $64, $56, $c1, $04
	dwb $386c, $06
	db $00

	db $64, $8c, $22, $04
	dwb $0000, $00
	db $00

	db $64, $8d, $12, $04
	dwb $0000, $00
	db $00

	db $64, $8e, $32, $04
	dwb $0000, $00
	db $00

	db $64, $8f, $42, $04
	dwb $0000, $00
	db $00

	db $64, $90, $62, $04
	dwb $0000, $00
	db $00

	db $64, $91, $52, $04
	dwb $0000, $00
	db $00

	db $64, $63, $e1, $07
	dwb $0a51, $07
	db $10

	db $00

Data_40_5517::
	db $00

Data_40_5518::
	db $00

Data_40_5519::
	db $e4, $64, $01, $06
	dwb $0c58, $07
	db $01

	db $e4, $65, $01, $06
	dwb $0cb4, $07
	db $01

	db $00

Data_40_552a::
	db $e4, $00, $03, $44
	dwb $2956, $27
	db $00

	db $e4, $01, $93, $44
	dwb $35da, $27
	db $00

	db $64, $68, $01, $06
	dwb $1738, $07
	db $00

	db $64, $69, $61, $06
	dwb $1794, $07
	db $00

	db $64, $6a, $51, $06
	dwb $22ca, $07
	db $00

	db $64, $6b, $41, $06
	dwb $2d49, $07
	db $00

	db $64, $6c, $31, $06
	dwb $3827, $07
	db $00

	db $64, $6d, $21, $06
	dwb $030f, $08
	db $00

	db $64, $6e, $11, $06
	dwb $0fcc, $08
	db $00

	db $00

Data_40_5573::
	db $00

Data_40_5574::
	db $e4, $02, $33, $12
	dwb $3ef7, $27
	db $00

	db $00

Data_40_557d::
	db $e4, $9c, $22, $01
	dwb $2315, $1c
	db $1c

	db $e4, $9d, $1a, $00
	dwb $257b, $1c
	db $00

	db $e4, $03, $3b, $02
	dwb $3fc4, $27
	db $00

	db $e4, $04, $6b, $13
	dwb $0190, $28
	db $28

	db $e4, $05, $5b, $12
	dwb $030b, $28
	db $15

	db $e4, $06, $4b, $23
	dwb $05ee, $28
	db $2b

	db $e4, $07, $5b, $23
	dwb $07ab, $28
	db $22

	db $e4, $08, $2b, $23
	dwb $091e, $28
	db $20

	db $64, $79, $21, $05
	dwb $329f, $08
	db $00

	db $64, $7a, $11, $05
	dwb $3360, $08
	db $00

	db $64, $7b, $31, $05
	dwb $3422, $08
	db $00

	db $64, $7c, $51, $05
	dwb $34e2, $08
	db $00

	db $64, $7d, $61, $05
	dwb $35a7, $08
	db $00

	db $64, $7e, $41, $05
	dwb $3669, $08
	db $00

	db $64, $a5, $92, $05
	dwb $0000, $00
	db $1e

	db $e4, $a6, $62, $01
	dwb $0000, $00
	db $00

	db $e4, $a7, $42, $00
	dwb $0000, $00
	db $00

	db $e4, $a8, $52, $00
	dwb $0000, $00
	db $00

	db $e4, $a9, $22, $00
	dwb $0000, $00
	db $2a

	db $e4, $aa, $12, $00
	dwb $0000, $00
	db $03

	db $e4, $09, $33, $12
	dwb $0000, $00
	db $2a

	db $e4, $b1, $32, $01
	dwb $0000, $00
	db $00

	db $e4, $0a, $53, $02
	dwb $0000, $00
	db $00

	db $e4, $0b, $23, $02
	dwb $0000, $00
	db $00

	db $e4, $0c, $63, $12
	dwb $0000, $00
	db $0a

	db $e4, $0d, $43, $12
	dwb $0000, $00
	db $0c

	db $e4, $0e, $13, $12
	dwb $1e91, $28
	db $14

	db $e4, $0f, $53, $34
	dwb $0000, $00
	db $15

	db $e4, $10, $63, $34
	dwb $0000, $00
	db $16

	db $e4, $11, $33, $34
	dwb $0000, $00
	db $17

	db $e4, $12, $43, $34
	dwb $0000, $00
	db $00

	db $e4, $13, $23, $34
	dwb $0000, $00
	db $1c

	db $e4, $14, $13, $34
	dwb $0000, $00
	db $1a

	db $64, $15, $23, $12
	dwb $0000, $00
	db $00

	db $64, $16, $13, $34
	dwb $0000, $00
	db $00

	db $64, $17, $33, $34
	dwb $0000, $00
	db $00

	db $64, $18, $43, $34
	dwb $0000, $00
	db $00

	db $64, $19, $63, $34
	dwb $0000, $00
	db $00

	db $64, $1a, $53, $34
	dwb $0000, $00
	db $00

	db $64, $c4, $22, $05
	dwb $0000, $00
	db $00

	db $64, $c5, $12, $05
	dwb $0000, $00
	db $00

	db $64, $c6, $32, $05
	dwb $0000, $00
	db $00

	db $64, $c7, $42, $05
	dwb $0000, $00
	db $00

	db $64, $c8, $62, $05
	dwb $0000, $00
	db $00

	db $64, $c9, $52, $05
	dwb $0000, $00
	db $00

	db $00

Data_40_56e6::
	db $e4, $d1, $62, $01
	dwb $0bdc, $1f
	db $01

	db $e4, $1b, $13, $23
	dwb $383e, $28
	db $00

	db $e4, $1c, $23, $44
	dwb $3bdc, $28
	db $00

	db $e4, $1d, $63, $44
	dwb $3db8, $28
	db $00

	db $e4, $1e, $43, $44
	dwb $3f88, $28
	db $00

	db $e4, $1f, $33, $44
	dwb $0123, $29
	db $00

	db $e4, $20, $53, $44
	dwb $02dc, $29
	db $00

	db $e4, $21, $13, $44
	dwb $0493, $29
	db $00

	db $00

Data_40_5727::
	db $00

endc


macro ScriptSrc
	dw \1-$4000
	db BANK(\1)-SCRIPT_DATA_BANK
endm
ScriptSources::
if def(VWF)
	ScriptSrc RpnData_41_4000
	ScriptSrc Script_001
	ScriptSrc Script_002
	ScriptSrc Script_003
	ScriptSrc Script_004
	ScriptSrc Script_005
	ScriptSrc Script_006
	ScriptSrc Script_007
	ScriptSrc Script_008
	ScriptSrc Script_009
	ScriptSrc Script_00a
	ScriptSrc Script_00b
	ScriptSrc Script_00c
	ScriptSrc Script_00d
	ScriptSrc Script_00e
	ScriptSrc Script_00f
	ScriptSrc Script_010
	ScriptSrc Script_011
	ScriptSrc Script_012

rept $100-$13
	db $00, $00, $00
endr

	ScriptSrc Script_100
	ScriptSrc Script_101
	ScriptSrc Script_102
	ScriptSrc Script_103
	ScriptSrc Script_104
	ScriptSrc Script_105
	ScriptSrc Script_106
	ScriptSrc Script_107
	ScriptSrc Script_108
	ScriptSrc Script_109
	ScriptSrc Script_10a
	ScriptSrc Script_10b
	ScriptSrc Script_10c
	ScriptSrc Script_10d
	ScriptSrc Script_10e
	ScriptSrc Script_10f
	ScriptSrc Script_110
	ScriptSrc Script_111
	ScriptSrc Script_112
	ScriptSrc Script_113
	ScriptSrc Script_114
	ScriptSrc Script_115
	ScriptSrc Script_116
	ScriptSrc Script_117
	ScriptSrc Script_118
	ScriptSrc Script_119
	ScriptSrc Script_11a
	ScriptSrc Script_11b
	ScriptSrc Script_11c
	ScriptSrc Script_11d
	ScriptSrc Script_11e
	ScriptSrc Script_11f
	ScriptSrc Script_120
	ScriptSrc Script_121
	ScriptSrc Script_122
	ScriptSrc Script_123
	ScriptSrc Script_124
	ScriptSrc Script_125
	ScriptSrc Script_126
	ScriptSrc Script_127
	ScriptSrc Script_128
	ScriptSrc Script_129
	ScriptSrc Script_12a
	ScriptSrc Script_12b
	ScriptSrc Script_12c
	ScriptSrc Script_12d
	ScriptSrc Script_12e
	ScriptSrc Script_12f
	ScriptSrc Script_130
	ScriptSrc Script_131
	ScriptSrc Script_132
	ScriptSrc Script_133
	ScriptSrc Script_134
	ScriptSrc Script_135
	ScriptSrc Script_136
	ScriptSrc Script_137
	ScriptSrc Script_138
	ScriptSrc Script_139
	ScriptSrc Script_13a
	ScriptSrc Script_13b
	ScriptSrc Script_13c
	ScriptSrc Script_13d
	ScriptSrc Script_13e
	ScriptSrc Script_13f
	ScriptSrc Script_140
	ScriptSrc Script_141
	ScriptSrc Script_142
	ScriptSrc Script_143
	ScriptSrc Script_144
	ScriptSrc Script_145
	ScriptSrc Script_146
	ScriptSrc Script_147
	ScriptSrc Script_148
	ScriptSrc Script_149
	ScriptSrc Script_14a
	ScriptSrc Script_14b
	ScriptSrc Script_14c
	ScriptSrc Script_14d
	ScriptSrc Script_14e
	ScriptSrc Script_14f
	ScriptSrc Script_150
	ScriptSrc Script_151
	ScriptSrc Script_152
	ScriptSrc Script_153
	ScriptSrc Script_154
	ScriptSrc Script_155
	ScriptSrc Script_156
	ScriptSrc Script_157
	ScriptSrc Script_158
	ScriptSrc Script_159
	ScriptSrc Script_15a
	ScriptSrc Script_15b
	ScriptSrc Script_15c
	ScriptSrc Script_15d
	ScriptSrc Script_15e
	ScriptSrc Script_15f
	ScriptSrc Script_160
	ScriptSrc Script_161
	ScriptSrc Script_162
	ScriptSrc Script_163
	ScriptSrc Script_164
	ScriptSrc Script_165
	ScriptSrc Script_166
	ScriptSrc Script_167
	ScriptSrc Script_168
	ScriptSrc Script_169
	ScriptSrc Script_16a
	ScriptSrc Script_16b
	ScriptSrc Script_16c
	ScriptSrc Script_16d
	ScriptSrc Script_16e
	ScriptSrc Script_16f
	ScriptSrc Script_170
	ScriptSrc Script_171
	ScriptSrc Script_172
	ScriptSrc Script_173
	ScriptSrc Script_174
	ScriptSrc Script_175
	ScriptSrc Script_176
	ScriptSrc Script_177
	ScriptSrc Script_178
	ScriptSrc Script_179
	ScriptSrc Script_17a
	ScriptSrc Script_17b
	ScriptSrc Script_17c
	ScriptSrc Script_17d
	ScriptSrc Script_17e
	ScriptSrc Script_17f
	ScriptSrc Script_180
	ScriptSrc Script_181
	ScriptSrc Script_182
	ScriptSrc Script_183
	ScriptSrc Script_184
	ScriptSrc Script_185
	ScriptSrc Script_186
	ScriptSrc Script_187
	ScriptSrc Script_188
	ScriptSrc Script_189
	ScriptSrc Script_18a
	ScriptSrc Script_18b
	ScriptSrc Script_18c
	ScriptSrc Script_18d
	ScriptSrc Script_18e
	ScriptSrc Script_18f
	ScriptSrc Script_190
	ScriptSrc Script_191
	ScriptSrc Script_192
	ScriptSrc Script_193
	ScriptSrc Script_194
	ScriptSrc Script_195
	ScriptSrc Script_196
	ScriptSrc Script_197
	ScriptSrc Script_198
	ScriptSrc Script_199
	ScriptSrc Script_19a
	ScriptSrc Script_19b
	ScriptSrc Script_19c
	ScriptSrc Script_19d
	ScriptSrc Script_19e
	ScriptSrc Script_19f
	ScriptSrc Script_1a0
	ScriptSrc Script_1a1
	ScriptSrc Script_1a2
	ScriptSrc Script_1a3
	ScriptSrc Script_1a4
	ScriptSrc Script_1a5
	ScriptSrc Script_1a6
	ScriptSrc Script_1a7
	ScriptSrc Script_1a8
	ScriptSrc Script_1a9
	ScriptSrc Script_1aa
	ScriptSrc Script_1ab
	ScriptSrc Script_1ac
	ScriptSrc Script_1ad
	ScriptSrc Script_1ae
	ScriptSrc Script_1af
	ScriptSrc Script_1b0
	ScriptSrc Script_1b1
	ScriptSrc Script_1b2
	ScriptSrc Script_1b3
	ScriptSrc Script_1b4
	ScriptSrc Script_1b5
	ScriptSrc Script_1b6
	ScriptSrc Script_1b7
	ScriptSrc Script_1b8
	ScriptSrc Script_1b9
	ScriptSrc Script_1ba
	ScriptSrc Script_1bb
	ScriptSrc Script_1bc
	ScriptSrc Script_1bd
	ScriptSrc Script_1be
	ScriptSrc Script_1bf
	ScriptSrc Script_1c0
	ScriptSrc Script_1c1
	ScriptSrc Script_1c2
	ScriptSrc Script_1c3
	ScriptSrc Script_1c4
	ScriptSrc Script_1c5
	ScriptSrc Script_1c6
	ScriptSrc Script_1c7
	ScriptSrc Script_1c8
	ScriptSrc Script_1c9
	ScriptSrc Script_1ca
	ScriptSrc Script_1cb
	ScriptSrc Script_1cc
	ScriptSrc Script_1cd
	ScriptSrc Script_1ce
	ScriptSrc Script_1cf
	ScriptSrc Script_1d0
	ScriptSrc Script_1d1
	ScriptSrc Script_1d2
	ScriptSrc Script_1d3
	ScriptSrc Script_1d4
	ScriptSrc Script_1d5
	ScriptSrc Script_1d6
	ScriptSrc Script_1d7
	ScriptSrc Script_1d8
	ScriptSrc Script_1d9
	ScriptSrc Script_1da
	ScriptSrc Script_1db
	ScriptSrc Script_1dc
	ScriptSrc Script_1dd
	ScriptSrc Script_1de
	ScriptSrc Script_1df
	ScriptSrc Script_1e0
	ScriptSrc Script_1e1
	ScriptSrc Script_1e2
	ScriptSrc Script_1e3
	ScriptSrc Script_1e4
	ScriptSrc Script_1e5
	ScriptSrc Script_1e6
	ScriptSrc Script_1e7
	ScriptSrc Script_1e8
	ScriptSrc Script_1e9
	ScriptSrc Script_1ea
	ScriptSrc Script_1eb
	ScriptSrc Script_1ec
	ScriptSrc Script_1ed
	ScriptSrc Script_1ee
	ScriptSrc Script_1ef
	ScriptSrc Script_1f0
	ScriptSrc Script_1f1
	ScriptSrc Script_1f2
	ScriptSrc Script_1f3
	ScriptSrc Script_1f4
	ScriptSrc Script_1f5
	ScriptSrc Script_1f6
	ScriptSrc Script_1f7
	ScriptSrc Script_1f8
	ScriptSrc Script_1f9
	ScriptSrc Script_1fa
	ScriptSrc Script_1fb
	ScriptSrc Script_1fc
	ScriptSrc Script_1fd
	ScriptSrc Script_1fe
	ScriptSrc Script_1ff
	ScriptSrc Script_200
	ScriptSrc Script_201
	ScriptSrc Script_202
	ScriptSrc Script_203
	ScriptSrc Script_204
	ScriptSrc Script_205
	ScriptSrc Script_206
	ScriptSrc Script_207
	ScriptSrc Script_208
	ScriptSrc Script_209
	ScriptSrc Script_20a
	ScriptSrc Script_20b
	ScriptSrc Script_20c
	ScriptSrc Script_20d
	ScriptSrc Script_20e
	ScriptSrc Script_20f
	ScriptSrc Script_210
	ScriptSrc Script_211
	ScriptSrc Script_212
	ScriptSrc Script_213
	ScriptSrc Script_214
	ScriptSrc Script_215
	ScriptSrc Script_216
	ScriptSrc Script_217
	ScriptSrc Script_218
	ScriptSrc Script_219
	ScriptSrc Script_21a
	ScriptSrc Script_21b
	ScriptSrc Script_21c
	ScriptSrc Script_21d
	ScriptSrc Script_21e
	ScriptSrc Script_21f
	ScriptSrc Script_220
	ScriptSrc Script_221
	ScriptSrc Script_222
	ScriptSrc Script_223
	ScriptSrc Script_224
	ScriptSrc Script_225
	ScriptSrc Script_226
	ScriptSrc Script_227
	ScriptSrc Script_228
	ScriptSrc Script_229
	ScriptSrc Script_22a
	ScriptSrc Script_22b
	ScriptSrc Script_22c
	ScriptSrc Script_22d
	ScriptSrc Script_22e
	ScriptSrc Script_22f
	ScriptSrc Script_230
	ScriptSrc Script_231
	ScriptSrc Script_232
	ScriptSrc Script_233
	ScriptSrc Script_234
	ScriptSrc Script_235
	ScriptSrc Script_236
	ScriptSrc Script_237
	ScriptSrc Script_238
	ScriptSrc Script_239
	ScriptSrc Script_23a
	ScriptSrc Script_23b
	ScriptSrc Script_23c
	ScriptSrc Script_23d
	ScriptSrc Script_23e
	ScriptSrc Script_23f
	ScriptSrc Script_240
	ScriptSrc Script_241
	ScriptSrc Script_242
	ScriptSrc Script_243
	ScriptSrc Script_244
	ScriptSrc Script_245
	ScriptSrc Script_246
	ScriptSrc Script_247
	ScriptSrc Script_248
	ScriptSrc Script_249
	ScriptSrc Script_24a
	ScriptSrc Script_24b
	ScriptSrc Script_24c
	ScriptSrc Script_24d
	ScriptSrc Script_24e
	ScriptSrc Script_24f
	ScriptSrc Script_250
	ScriptSrc Script_251
	ScriptSrc Script_252
	ScriptSrc Script_253
	ScriptSrc Script_254
	ScriptSrc Script_255
	ScriptSrc Script_256
	ScriptSrc Script_257
	ScriptSrc Script_258
	ScriptSrc Script_259
	ScriptSrc Script_25a
	ScriptSrc Script_25b
	ScriptSrc Script_25c
	ScriptSrc Script_25d
	ScriptSrc Script_25e
	ScriptSrc Script_25f
	ScriptSrc Script_260
	ScriptSrc Script_261
	ScriptSrc Script_262
	ScriptSrc Script_263
	ScriptSrc Script_264
	ScriptSrc Script_265
	ScriptSrc Script_266
	ScriptSrc Script_267
	ScriptSrc Script_268
	ScriptSrc Script_269
	ScriptSrc Script_26a
	ScriptSrc Script_26b
	ScriptSrc Script_26c
	ScriptSrc Script_26d
	ScriptSrc Script_26e
	ScriptSrc Script_26f
	ScriptSrc Script_270
	ScriptSrc Script_271
	ScriptSrc Script_272
	ScriptSrc Script_273
	ScriptSrc Script_274
	ScriptSrc Script_275
	ScriptSrc Script_276
	ScriptSrc Script_277
	ScriptSrc Script_278
	ScriptSrc Script_279
	ScriptSrc Script_27a
	ScriptSrc Script_27b
	ScriptSrc Script_27c
	ScriptSrc Script_27d
	ScriptSrc Script_27e
	ScriptSrc Script_27f
	ScriptSrc Script_280
	ScriptSrc Script_281
	ScriptSrc Script_282
	ScriptSrc Script_283
	ScriptSrc Script_284
	ScriptSrc Script_285
	ScriptSrc Script_286
	ScriptSrc Script_287
	ScriptSrc Script_288
	ScriptSrc Script_289
	ScriptSrc Script_28a
	ScriptSrc Script_28b
	ScriptSrc Script_28c
	ScriptSrc Script_28d
	ScriptSrc Script_28e
	ScriptSrc Script_28f
	ScriptSrc Script_290
	ScriptSrc Script_291
	ScriptSrc Script_292
	ScriptSrc Script_293
	ScriptSrc Script_294
	ScriptSrc Script_295
	ScriptSrc Script_296
	ScriptSrc Script_297
	ScriptSrc Script_298
	ScriptSrc Script_299
	ScriptSrc Script_29a
	ScriptSrc Script_29b
	ScriptSrc Script_29c
	ScriptSrc Script_29d
	ScriptSrc Script_29e
	ScriptSrc Script_29f
	ScriptSrc Script_2a0
	ScriptSrc Script_2a1
	ScriptSrc Script_2a2
	ScriptSrc Script_2a3
	ScriptSrc Script_2a4
	ScriptSrc Script_2a5
	ScriptSrc Script_2a6
	ScriptSrc Script_2a7
	ScriptSrc Script_2a8
	ScriptSrc Script_2a9
	ScriptSrc Script_2aa
	ScriptSrc Script_2ab
	ScriptSrc Script_2ac
	ScriptSrc Script_2ad
	ScriptSrc Script_2ae
	ScriptSrc Script_2af
	ScriptSrc Script_2b0
	ScriptSrc Script_2b1
	ScriptSrc Script_2b2
	ScriptSrc Script_2b3
	ScriptSrc Script_2b4
	ScriptSrc Script_2b5
	ScriptSrc Script_2b6
	ScriptSrc Script_2b7
	ScriptSrc Script_2b8
	ScriptSrc Script_2b9
	ScriptSrc Script_2ba
	ScriptSrc Script_2bb
	ScriptSrc Script_2bc
	ScriptSrc Script_2bd
	ScriptSrc Script_2be
	ScriptSrc Script_2bf
	ScriptSrc Script_2c0
	ScriptSrc Script_2c1
	ScriptSrc Script_2c2
	ScriptSrc Script_2c3
	ScriptSrc Script_2c4
	ScriptSrc Script_2c5
	ScriptSrc Script_2c6
	ScriptSrc Script_2c7
	ScriptSrc Script_2c8
	ScriptSrc Script_2c9
	ScriptSrc Script_2ca
	ScriptSrc Script_2cb
	ScriptSrc Script_2cc
	ScriptSrc Script_2cd
	ScriptSrc Script_2ce
	ScriptSrc Script_2cf
	ScriptSrc Script_2d0
	ScriptSrc Script_2d1
	ScriptSrc Script_2d2
	ScriptSrc Script_2d3
	ScriptSrc Script_2d4
	ScriptSrc Script_2d5
	ScriptSrc Script_2d6
	ScriptSrc Script_2d7
	ScriptSrc Script_2d8
	ScriptSrc Script_2d9
	ScriptSrc Script_2da
	ScriptSrc Script_2db
	ScriptSrc Script_2dc
	ScriptSrc Script_2dd
	ScriptSrc Script_2de
	ScriptSrc Script_2df
	ScriptSrc Script_2e0
	ScriptSrc Script_2e1
	ScriptSrc Script_2e2
	ScriptSrc Script_2e3
	ScriptSrc Script_2e4
	ScriptSrc Script_2e5
	ScriptSrc Script_2e6
	ScriptSrc Script_2e7
	ScriptSrc Script_2e8
	ScriptSrc Script_2e9
	ScriptSrc Script_2ea
	ScriptSrc Script_2eb
	ScriptSrc Script_2ec
	ScriptSrc Script_2ed
	ScriptSrc Script_2ee
	ScriptSrc Script_2ef
	ScriptSrc Script_2f0
	ScriptSrc Script_2f1
	ScriptSrc Script_2f2
	ScriptSrc Script_2f3
	ScriptSrc Script_2f4
	ScriptSrc Script_2f5
	ScriptSrc Script_2f6
	ScriptSrc Script_2f7
	ScriptSrc Script_2f8
	ScriptSrc Script_2f9
	ScriptSrc Script_2fa
	ScriptSrc Script_2fb
	ScriptSrc Script_2fc
	ScriptSrc Script_2fd
	ScriptSrc Script_2fe
	ScriptSrc Script_2ff
	ScriptSrc Script_300
	ScriptSrc Script_301
	ScriptSrc Script_302
	ScriptSrc Script_303
	ScriptSrc Script_304
	ScriptSrc Script_305
	ScriptSrc Script_306
	ScriptSrc Script_307
	ScriptSrc Script_308
	ScriptSrc Script_309
	ScriptSrc Script_30a
	ScriptSrc Script_30b
	ScriptSrc Script_30c
	ScriptSrc Script_30d
	ScriptSrc Script_30e
	ScriptSrc Script_30f
	ScriptSrc Script_310
	ScriptSrc Script_311
	ScriptSrc Script_312
	ScriptSrc Script_313
	ScriptSrc Script_314
	ScriptSrc Script_315
	ScriptSrc Script_316
	ScriptSrc Script_317
	ScriptSrc Script_318
	ScriptSrc Script_319
	ScriptSrc Script_31a
	ScriptSrc Script_31b
	ScriptSrc Script_31c
	ScriptSrc Script_31d
	ScriptSrc Script_31e
	ScriptSrc Script_31f
	ScriptSrc Script_320
	ScriptSrc Script_321
else

	db $00, $00, $00
	ScriptSrc Script_001
	db $73, $12, $00
	db $5f, $15, $00
	db $b0, $1b, $00
	ScriptSrc Script_005
	ScriptSrc Script_006
	db $7f, $23, $00
	db $d2, $23, $00
	db $da, $07, $01
	db $76, $0b, $01
	db $19, $0f, $01
	db $6d, $12, $01
	db $46, $16, $01
	db $ae, $19, $01
	db $4b, $1d, $01
	db $8c, $1f, $01
	db $2f, $2b, $01
	db $87, $2d, $01

rept $100-$13
	db $00, $00, $00
endr

	db $10, $34, $01
	db $5f, $3f, $01
	db $7c, $00, $02
	db $8e, $01, $02
	db $8e, $02, $02
	ScriptSrc Script_105
	db $06, $1b, $02
	db $7c, $1d, $02
	db $3d, $1e, $02
	db $ff, $1e, $02
	db $bf, $1f, $02
	db $84, $20, $02
	db $46, $21, $02
	db $06, $22, $02 ; 010d - 269
	db $0b, $22, $02
	db $1a, $2d, $02
	db $48, $31, $02
	db $ec, $33, $02
	db $cc, $39, $02
	db $8a, $3c, $02
	db $dd, $02, $03
	db $e3, $06, $03
	db $94, $07, $03
	db $4e, $0d, $03
	db $f8, $0d, $03
	db $33, $12, $03
	db $ba, $16, $03
	db $f6, $1a, $03
	db $50, $20, $03
	db $13, $26, $03
	db $36, $29, $03
	db $66, $2d, $03
	db $98, $30, $03
	db $f1, $34, $03
	db $4e, $38, $03
	db $72, $3b, $03
	db $93, $3f, $03
	db $ac, $03, $04
	db $26, $05, $04
	db $63, $06, $04
	db $90, $07, $04
	db $c4, $08, $04
	db $ee, $09, $04
	db $30, $0b, $04
	db $27, $0d, $04
	db $73, $0d, $04
	db $35, $0f, $04
	db $eb, $19, $04
	db $77, $23, $04
	db $96, $2d, $04
	db $61, $37, $04
	db $93, $03, $05
	db $b9, $0d, $05
	db $8b, $0e, $05
	db $59, $0f, $05
	db $4e, $12, $05
	db $e4, $15, $05
	db $a5, $16, $05
	db $67, $17, $05
	db $27, $18, $05
	db $ec, $18, $05
	db $ae, $19, $05
	db $5c, $1a, $05
	db $6b, $25, $05
	db $64, $2a, $05
	db $f0, $2d, $05
	db $7a, $31, $05
	db $7f, $31, $05
	db $e6, $39, $05
	db $6b, $3d, $05
	db $09, $06, $06
	db $ed, $06, $06
	db $91, $07, $06
	db $57, $09, $06
	db $c3, $0b, $06
	db $3a, $0f, $06
	db $18, $14, $06
	db $36, $19, $06
	db $63, $1b, $06
	db $27, $23, $06
	db $54, $2a, $06
	db $77, $2c, $06
	db $ca, $2f, $06
	db $38, $31, $06
	db $ce, $32, $06
	db $53, $34, $06
	db $7b, $38, $06
	db $8b, $3c, $06
	db $7a, $3d, $06
	db $7e, $3e, $06
	db $93, $3f, $06
	db $8f, $00, $07
	db $8c, $01, $07
	db $81, $02, $07
	db $db, $03, $07
	db $23, $05, $07
	db $70, $06, $07
	db $cb, $07, $07
	db $0f, $09, $07
	db $69, $0a, $07
	db $61, $0c, $07
	db $bd, $0c, $07
	db $05, $0d, $07
	db $85, $0d, $07
	db $47, $17, $07
	db $9a, $17, $07
	db $d0, $22, $07
	db $4f, $2d, $07
	db $2d, $38, $07
	db $15, $03, $08
	db $d2, $0f, $08
	db $26, $1a, $08
	db $8d, $1a, $08
	db $9c, $1f, $08
	db $d4, $25, $08
	db $ba, $26, $08
	db $33, $28, $08
	db $04, $2d, $08
	db $d9, $2d, $08
	db $d0, $30, $08
	db $43, $32, $08
	db $ab, $32, $08
	db $6c, $33, $08
	db $2e, $34, $08
	db $ee, $34, $08
	db $b3, $35, $08
	db $75, $36, $08
	db $23, $37, $08
	db $38, $02, $09
	db $5d, $03, $09
	db $92, $04, $09
	db $03, $08, $09
	db $15, $0a, $09
	db $25, $0c, $09
	db $d2, $0d, $09
	db $ca, $0f, $09
	db $d2, $12, $09
	db $2b, $14, $09
	db $55, $16, $09
	db $75, $17, $09
	db $28, $19, $09
	db $06, $1c, $09
	db $dd, $1e, $09
	db $e0, $20, $09
	db $fe, $21, $09
	db $bb, $23, $09
	db $db, $25, $09
	db $87, $27, $09
	db $0c, $29, $09
	db $70, $2a, $09
	db $e0, $2b, $09
	db $44, $2d, $09
	db $a7, $2e, $09
	db $21, $2f, $09
	db $0a, $30, $09
	db $0a, $32, $09
	db $bc, $05, $0a
	db $ad, $06, $0a
	db $b0, $07, $0a
	db $8c, $08, $0a
	db $62, $09, $0a
	db $50, $0a, $0a
	db $54, $0b, $0a
	db $7c, $1b, $0a
	db $60, $1c, $0a
	db $bc, $21, $0a
	db $21, $23, $0a
	db $cf, $28, $0a
	db $47, $2f, $0a
	db $f6, $31, $0a
	db $2e, $3e, $0a
	db $c2, $3e, $0a
	db $53, $05, $0b
	db $7d, $0d, $0b
	db $2b, $16, $0b
	db $d9, $1d, $0b
	db $88, $25, $0b
	db $c6, $30, $0b
	db $5e, $38, $0b
	db $8a, $01, $0c
	db $7e, $04, $0c
	db $9c, $09, $0c
	db $7c, $10, $0c
	db $45, $15, $0c
	db $b4, $15, $0c
	db $4b, $19, $0c
	db $cc, $20, $0c
	db $bd, $24, $0c
	db $95, $2a, $0c
	db $9c, $30, $0c
	db $2a, $35, $0c
	db $64, $36, $0c
	db $a7, $37, $0c
	db $d4, $38, $0c
	db $f1, $39, $0c
	db $1b, $3b, $0c
	db $58, $3c, $0c
	db $8d, $3f, $0c
	db $b1, $0f, $0d
	db $35, $10, $0d
	db $89, $12, $0d
	db $54, $16, $0d
	db $94, $17, $0d
	db $39, $1d, $0d
	db $69, $22, $0d
	db $d9, $22, $0d
	db $a2, $28, $0d
	db $45, $2c, $0d
	db $f7, $33, $0d
	db $a6, $3b, $0d
	db $e2, $06, $0e
	db $9a, $0f, $0e
	db $2c, $16, $0e
	db $43, $1e, $0e
	db $ad, $25, $0e
	db $f7, $2f, $0e
	db $fe, $35, $0e
	db $4c, $3b, $0e
	db $fe, $3f, $0e
	db $67, $00, $0f
	db $c9, $05, $0f
	db $94, $06, $0f
	db $9d, $0a, $0f
	db $ff, $0c, $0f
	db $53, $11, $0f
	db $40, $15, $0f
	db $94, $17, $0f
	db $f2, $18, $0f
	db $3c, $1a, $0f
	db $90, $1b, $0f
	db $db, $1c, $0f
	db $36, $1e, $0f
	db $7e, $1f, $0f
	db $99, $20, $0f
	db $9b, $21, $0f
	db $a0, $22, $0f
	db $a9, $23, $0f
	db $b3, $24, $0f
	db $c3, $25, $0f
	db $e3, $2e, $0f
	db $61, $31, $0f
	db $05, $39, $0f
	db $18, $3a, $0f
	db $ee, $3b, $0f
	db $47, $00, $10
	db $eb, $03, $10
	db $c1, $0e, $10
	db $39, $14, $10
	db $b4, $1b, $10
	db $d5, $2b, $10
	db $f7, $2e, $10
	db $0d, $33, $10
	db $13, $36, $10
	db $00, $3c, $10
	db $3b, $03, $11
	db $e2, $06, $11
	db $a1, $08, $11
	db $3a, $0a, $11
	db $08, $0f, $11
	db $2c, $12, $11
	db $a8, $14, $11
	db $17, $19, $11
	db $77, $1b, $11
	db $eb, $1c, $11
	db $3f, $20, $11
	db $1a, $23, $11
	db $fa, $27, $11
	db $69, $2b, $11
	db $78, $2c, $11
	db $99, $2d, $11
	db $b3, $2e, $11
	db $cd, $2f, $11
	db $e3, $30, $11
	db $00, $32, $11
	db $78, $33, $11
	db $f7, $34, $11
	db $61, $36, $11
	db $c1, $37, $11
	db $25, $39, $11
	db $9e, $3a, $11
	db $d9, $3c, $11
	db $71, $00, $12
	db $af, $16, $12
	db $1c, $32, $12
	db $73, $05, $13
	db $83, $1d, $13
	db $d8, $2f, $13
	db $32, $04, $14
	db $52, $06, $14
	db $3d, $08, $14
	db $40, $09, $14
	db $e0, $15, $14
	db $80, $21, $14
	db $b9, $2d, $14
	db $f0, $3c, $14
	db $a4, $08, $15
	db $69, $13, $15
	db $8a, $23, $15
	db $d3, $29, $15
	db $7d, $2e, $15
	db $95, $30, $15
	db $6d, $38, $15
	db $dd, $3e, $15
	db $a4, $02, $16
	db $97, $03, $16
	db $7c, $04, $16
	db $6b, $08, $16
	db $2f, $0c, $16
	db $05, $0d, $16
	db $7e, $14, $16
	db $37, $19, $16
	db $a9, $1f, $16
	db $d1, $2f, $16
	db $45, $30, $16
	db $c4, $35, $16
	db $93, $3a, $16
	db $fa, $3c, $16
	db $b6, $3f, $16
	db $a6, $02, $17
	db $ab, $06, $17
	db $3a, $07, $17
	db $83, $0b, $17
	db $a7, $11, $17
	db $f7, $15, $17
	db $24, $1a, $17
	db $1a, $1e, $17
	db $6a, $23, $17
	db $09, $27, $17
	db $ed, $2a, $17
	db $d6, $32, $17
	db $94, $34, $17
	db $e2, $39, $17
	db $a2, $3e, $17
	db $d4, $3f, $17
	db $11, $01, $18
	db $3e, $02, $18
	db $5a, $03, $18
	db $89, $04, $18
	db $b8, $05, $18
	db $e9, $06, $18
	db $2d, $08, $18
	db $5a, $09, $18
	db $75, $0a, $18
	db $9f, $0b, $18
	db $db, $0c, $18
	db $be, $11, $18
	db $f2, $17, $18
	db $fe, $1e, $18
	db $5f, $23, $18
	db $80, $33, $18
	db $d2, $36, $18
	db $88, $3b, $18
	db $17, $03, $19
	db $f7, $08, $19
	db $aa, $0b, $19
	db $f2, $0e, $19
	db $8c, $0f, $19
	db $98, $16, $19
	db $4c, $1b, $19
	db $bf, $21, $19
	db $b0, $25, $19
	db $93, $26, $19
	db $2c, $2a, $19
	db $4d, $3a, $19
	db $76, $3f, $19
	db $f3, $00, $1a
	db $31, $05, $1a
	db $bb, $09, $1a
	db $b9, $0c, $1a
	db $07, $0e, $1a
	db $81, $0f, $1a
	db $f6, $0f, $1a
	db $11, $19, $1a
	db $ec, $1d, $1a
	db $d8, $25, $1a
	db $48, $34, $1a
	db $2c, $36, $1a
	db $76, $39, $1a
	db $9e, $07, $1b
	db $bb, $0b, $1b
	db $79, $0f, $1b
	db $97, $11, $1b
	db $1c, $15, $1b
	db $6d, $19, $1b
	db $d5, $27, $1b
	db $4e, $29, $1b
	db $af, $2a, $1b
	db $1f, $2c, $1b
	db $93, $2d, $1b
	db $06, $2f, $1b
	db $67, $30, $1b
	db $84, $31, $1b
	db $8d, $32, $1b
	db $9b, $33, $1b
	db $a4, $34, $1b
	db $b0, $35, $1b
	db $bb, $36, $1b
	db $1d, $38, $1b
	db $68, $39, $1b
	db $be, $3a, $1b
	db $09, $3c, $1b
	db $5e, $3d, $1b
	db $ad, $3e, $1b
	db $d1, $07, $1c
	db $c6, $08, $1c
	db $a8, $09, $1c
	db $69, $0a, $1c
	db $e8, $0b, $1c
	db $48, $10, $1c
	db $b4, $14, $1c
	db $d3, $19, $1c
	db $a3, $1f, $1c
	db $22, $23, $1c
	db $8e, $25, $1c
	db $d8, $27, $1c
	db $f9, $37, $1c
	db $e6, $3a, $1c
	db $2c, $3b, $1c
	db $ed, $00, $1d
	db $17, $05, $1d
	db $8b, $06, $1d
	db $f7, $08, $1d
	db $18, $19, $1d
	db $11, $1c, $1d
	db $29, $2a, $1d
	db $12, $2c, $1d
	db $cc, $34, $1d
	db $7f, $37, $1d
	db $6f, $01, $1e
	db $3a, $04, $1e
	db $01, $06, $1e
	db $bc, $07, $1e
	db $51, $0d, $1e
	db $6b, $10, $1e
	db $82, $14, $1e
	db $f0, $16, $1e
	db $ed, $18, $1e
	db $2f, $1a, $1e
	db $f1, $1b, $1e
	db $de, $1e, $1e
	db $85, $27, $1e
	db $a3, $28, $1e
	db $c6, $29, $1e
	db $d0, $2a, $1e
	db $d9, $2b, $1e
	db $ed, $2c, $1e
	db $08, $2e, $1e
	db $7d, $2f, $1e
	db $fc, $30, $1e
	db $60, $32, $1e
	db $c0, $33, $1e
	db $21, $35, $1e
	db $84, $36, $1e
	db $15, $38, $1e
	db $a3, $39, $1e
	db $17, $3b, $1e
	db $77, $3c, $1e
	db $f0, $3d, $1e
	db $5a, $3f, $1e
	db $44, $01, $1f
	db $01, $03, $1f
	db $cf, $04, $1f
	db $7d, $06, $1f
	db $2d, $08, $1f
	db $0f, $0a, $1f
	db $e2, $0b, $1f
	db $72, $13, $1f
	db $79, $15, $1f
	db $8e, $2b, $1f
	db $5c, $09, $20
	db $c9, $1b, $20
	db $d1, $0d, $21
	db $27, $22, $21
	db $c7, $00, $22
	db $c6, $1a, $22
	db $70, $32, $22
	db $89, $0b, $23
	db $80, $25, $23
	db $c7, $3b, $23
	db $42, $1a, $24
	db $15, $26, $24
	db $03, $3b, $24
	db $59, $27, $25
	db $35, $29, $25
	db $14, $2a, $25
	db $d3, $2d, $25
	db $8b, $2f, $25
	db $ff, $31, $25
	db $4c, $36, $25
	db $1c, $3d, $25
	db $db, $3f, $25
	db $ba, $04, $26
	db $79, $08, $26
	db $e1, $0c, $26
	db $dd, $11, $26
	db $a2, $15, $26
	db $c1, $19, $26
	db $6c, $37, $26
	db $b1, $3b, $26
	db $35, $3c, $26
	db $9d, $3c, $26
	db $07, $01, $27
	db $b3, $06, $27
	db $f0, $0a, $27
	db $c4, $0c, $27
	db $85, $0f, $27
	db $6f, $11, $27
	db $8a, $16, $27
	db $e4, $1d, $27
	db $84, $1f, $27
	db $d2, $25, $27
	db $4b, $27, $27
	db $62, $29, $27
	db $e0, $35, $27
	db $0b, $3f, $27
	db $cb, $3f, $27
	db $97, $01, $28
	db $18, $03, $28
	db $fb, $05, $28
	db $b2, $07, $28
	db $24, $09, $28
	db $f3, $0b, $28
	db $7c, $10, $28
	db $70, $15, $28
	db $b4, $18, $28
	db $bf, $1c, $28
	db $9d, $1e, $28
	db $3f, $22, $28
	db $cc, $24, $28
	db $6a, $27, $28
	db $75, $29, $28
	db $a5, $2b, $28
	db $de, $2e, $28
	db $a8, $31, $28
	db $cf, $32, $28
	db $dd, $33, $28
	db $f2, $34, $28
	db $05, $36, $28
	db $24, $37, $28
	db $50, $38, $28
	db $e9, $3b, $28
	db $c5, $3d, $28
	db $95, $3f, $28
	db $30, $01, $29
	db $e9, $02, $29
	db $a0, $04, $29 ; $321
endc


if def(VWF)

EnLoadNewTVCommsAttrsAndTileData::
	ld   bc, .end-.gfx
	ld   de, $8800
	ld   hl, .gfx
	call MemCopy

	ldbc 20, 14
	ld   hl, $99c0
	call CommsLayoutSwapSource

	ldbc 14, 4
	ld   hl, $9b83
	call CommsLayoutSwapSource

; Replace tile attr ram copy code
	ld   a, [wWramBank]                                             ; $55e4
	push af                                                         ; $55e7

	ld   a, BANK(wTVCommsTileMapBuffer)                             ; $55e8
	ld   [wWramBank], a                                             ; $55ea
	ldh  [rSVBK], a                                                 ; $55ed

	ld   bc, $400
	ld   de, wTVCommsTileAttrBuffer
	ld   hl, $9800
	call MemCopy

	pop  af                                                         ; $5605
	ld   [wWramBank], a                                             ; $5606
	ldh  [rSVBK], a                                                 ; $5609

	ret
.gfx:
	INCBIN "en_tvadapter.2bpp"
.end:


EnLoadNewGBCCommsAttrsAndTileData::
; Original
	ld   hl, $9800                                   ; $4ef4: $21 $00 $98
	ld   de, $7d89                                   ; $4ef7: $11 $89 $7d
	call RLEXorCopy                                       ; $4efa: $cd $d2 $09
	ld   a, $1e                                      ; $4efd: $3e $1e
	ld   hl, $9000                                   ; $4eff: $21 $00 $90
	ld   de, $432e                                   ; $4f02: $11 $2e $43
	call RLEXorCopy                                       ; $4f05: $cd $d2 $09

; New
	ld   bc, .end-.gfx
	ld   de, $8800
	ld   hl, .gfx
	call MemCopy

	ldbc 20, 4
	ld   hl, $99c0
	call CommsLayoutSwapSource

	ldbc 16, 6
	ld   hl, $9a42
	call CommsLayoutSwapSource

	ldbc 14, 4
	ld   hl, $9b03
	call CommsLayoutSwapSource

; Replace tile attr ram copy code
	ld   a, [wWramBank]                                             ; $55e4
	push af                                                         ; $55e7

	ld   a, $03                             ; $55e8
	ld   [wWramBank], a                                             ; $55ea
	ldh  [rSVBK], a                                                 ; $55ed

	ld   bc, $400
	ld   de, $d400
	ld   hl, $9800
	call MemCopy

	pop  af                                                         ; $5605
	ld   [wWramBank], a                                             ; $5606
	ldh  [rSVBK], a                                                 ; $5609

	ret
.gfx:
	INCBIN "en_gameboyComms.2bpp"
.end:

endc
